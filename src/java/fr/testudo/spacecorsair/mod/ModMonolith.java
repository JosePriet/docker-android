package fr.testudo.spacecorsair.mod;

import fr.testudo.spacecorsair.business.player.PlayerShip;
import fr.testudo.spacecorsair.display.Drawable;
import fr.testudo.spacecorsair.display.Texture;
import fr.testudo.spacecorsair.engine.GameRenderer;
import fr.testudo.spacecorsair.engine.Vector2;

/**
 * v38: Monolith refit stage 4/5 effects, real time (owner-approved previews in spartan-handoff/monolith-heat, 2026-11-02):
 * - s5 wings (separate hull + wing sprites) spring open with speed: 80 deg max, fully open at 60% speed, damped spring
 *   with overshoot, +-3 deg wingbeat while open, fold only 2.5 s after a full stop.
 * - s5 plasma wings: flowing plasma streaks off each wing's trailing edge once the wing is 85% open, short fading trail.
 * - Heat: the platinum plates heat to gold with speed (baked _hot sprite blended in).
 * - Aura (while the shield is up): a calm breathing flame shell, blue -> gold -> red with speed; it reacts to hits like a
 *   living thing: flare at the impact, the shell dents and springs back, a ripple runs round the outline, heavy hits pulse
 *   the whole aura, rapid hits agitate it (faster flicker, longer tongues, warmer colour, leaning toward the fire).
 * - Every effect follows the highest speed of the last 2.5 s (owner hold rule).
 * - s4: aura and heat at half strength, no wings or plasma (owner: s4 fainter than s5).
 * v41 fix (owner: the phone fell far short of s5_plasma.mp4): the aura and the plasma wings are no longer rebuilt from
 * thin glow strips; src/genmono41.py bakes them with the preview's own formulas (34 streaks per wing as an 18-frame
 * flipbook with its fading trail; the aura's glow, rim and noisy flame shell per speed level and noise phase) and this
 * class draws those masks in the preview's colours. Hit reactions (flare, ripple, heavy pulse, agitation, lean) stay.
 */
public final class ModMonolith {
    private ModMonolith() {}

    static final float MAX_ANG = 80, X_OPEN = 0.6f, HOLD_MS = 2500;

    private static int stage;                 // 0 = not a Monolith s4/s5
    private static long lastT;
    private static float vmax = 1e-3f;        // self-calibrating top speed (world units per tick)
    private static float vbest;
    private static final float[] hist = new float[26];   // speed samples every 100 ms (2.5 s)
    private static int histPos;
    private static long histT;
    private static float held, peak, ang, vel, heat, phase, flapT;
    private static long stoppedSince = -1;
    private static float D;                   // drawn sprite size (world units per 1024 px)

    // hits: time, local angle (rad), damage 0..1
    private static final int HN = 12;
    private static final long[] hT = new long[HN];
    private static final float[] hAng = new float[HN], hDmg = new float[HN];
    private static int hNext;

    private static final Vector2 a = new Vector2(), b = new Vector2(), c = new Vector2();

    /** Stage (4 or 5) when the player flies a Monolith at refit stage 4+, else 0. */
    static int stageOf(PlayerShip ps) {
        try {
            ModShips.Hull h = ModShips.hullFor(ps.shipSpec);
            if (h == null || !"monolith".equals(h.art)) return 0;
            int s = ModV35.stage(ModV35.level(ModV35.currentShip()));
            return s >= 4 ? s : 0;
        } catch (Throwable t) {
            return 0;
        }
    }

    /** Monolith s4/s5 being drawn this frame (set by under()). */
    static boolean active() {
        return stage != 0;
    }

    /** s5 hull without the painted closed wings (ModV35.playerArt), when the parts ship. */
    static boolean useParts(String art, int s) {
        return "monolith".equals(art) && s == 5 && ModV35.art("monolith_stage5_hull") && ModV35.art("monolith_stage5_wingL") && ModV35.art("monolith_stage5_wingR");
    }

    // ------------------------------------------------------------------ state
    private static void update(PlayerShip ps, long t) {
        float dt = lastT == 0 ? 0.016f : Math.max(0, Math.min(0.1f, (t - lastT) / 1000f));
        lastT = t;
        float spd = (float) Math.sqrt(ps.speed.x * ps.speed.x + ps.speed.y * ps.speed.y);
        // top speed: decays slowly only while cruising (parked time must not shrink it), never below half the session best
        if (!ps.isBoosterEnabled) {
            if (spd > 0.5f * vmax) vmax *= 1 - 0.02f * dt;
            vmax = Math.max(Math.max(vmax, spd), 0.5f * vbest);
            vbest = Math.max(vbest, spd);
        }
        float v = Math.min(1, spd / Math.max(vmax, 1e-3f));
        if (t - histT >= 100) {
            histT = t;
            histPos = (histPos + 1) % hist.length;
            hist[histPos] = 0;
        }
        hist[histPos] = Math.max(hist[histPos], v);
        float h = 0;
        for (float x : hist) h = Math.max(h, x);
        held = h;
        if (v < 0.02f) {
            if (stoppedSince < 0) stoppedSince = t;
        } else {
            stoppedSince = -1;
        }
        peak = stoppedSince >= 0 && t - stoppedSince >= HOLD_MS ? 0 : Math.max(peak, held);
        float kf = dt * 12;
        if (stage == 5) {
            float target = MAX_ANG * (float) Math.pow(Math.min(peak / X_OPEN, 1), 0.7);
            vel += (target - ang) * 0.18f * kf * kf;
            vel *= (float) Math.pow(0.72, kf);
            ang += vel;
            ang = Math.max(-5, Math.min(MAX_ANG + 12, ang));
        } else {
            ang = 0;
            vel = 0;
        }
        heat += (held - heat) * Math.min(1, 0.08f * kf);
        float agit = agitation(t);
        phase += dt * (float) (2 * Math.PI / 6.5) * (1 + 3 * agit);
        flapT += dt;
    }

    /** Left the Monolith s4/s5: start the next flight cold (speed calibration kept). */
    private static void reset() {
        lastT = 0;
        java.util.Arrays.fill(hist, 0);
        java.util.Arrays.fill(hT, 0);
        held = peak = ang = vel = heat = 0;
        stoppedSince = -1;
    }

    private static float agitation(long t) {
        float s = 0;
        for (int i = 0; i < HN; i++) {
            float age = (t - hT[i]) / 1000f;
            if (hT[i] > 0 && age < 3) s += hDmg[i] * (float) Math.exp(-age / 1.5);
        }
        return s;
    }

    /** Hit on the player's shield (ModLive.hit): impact point in world coordinates, damage applied. */
    static void hit(PlayerShip ps, Vector2 at, float dmg) {
        try {
            if (stage == 0 || at == null || ps.shield == null || ps.shield.capacity <= 0) return;
            float dx = at.x - ps.position.x, dy = at.y - ps.position.y;
            double r = -Math.toRadians(ps.spin);
            float lx = (float) (dx * Math.cos(r) - dy * Math.sin(r)), ly = (float) (dx * Math.sin(r) + dy * Math.cos(r));
            int i = hNext;
            hNext = (hNext + 1) % HN;
            hT[i] = System.currentTimeMillis();
            hAng[i] = (float) Math.atan2(ly, lx);
            hDmg[i] = Math.max(0.2f, Math.min(1, dmg / (0.08f * ps.shield.capacity)));
        } catch (Throwable t) {
            // effects never break combat
        }
    }

    // ------------------------------------------------------------------ colours
    private static float[] ramp(float[][] st, float v, float[] out) {
        v = Math.max(0, Math.min(1, v));
        float[] p, q;
        float f;
        if (v <= 0.5f) { p = st[0]; q = st[1]; f = v * 2; } else { p = st[1]; q = st[2]; f = (v - 0.5f) * 2; }
        for (int k = 0; k < 3; k++) out[k] = (p[k] + (q[k] - p[k]) * f) / 255f;
        return out;
    }

    private static final float[][] AURA_CORE = {{205, 235, 255}, {255, 240, 165}, {255, 228, 130}};
    private static final float[][] AURA_EDGE = {{80, 165, 255}, {255, 185, 55}, {255, 85, 25}};
    private static final float[][] PLASMA_CORE = {{150, 215, 255}, {255, 215, 110}, {255, 190, 90}};
    private static final float[][] PLASMA_EDGE = {{40, 120, 255}, {255, 150, 30}, {255, 45, 25}};
    private static final float[] core = new float[3], edge = new float[3];

    // ------------------------------------------------------------------ geometry (1024 px sprite -> ship local -> screen)
    private static float lx(float px) { return ((px + 0.5f) / 1024f - 0.5f) * D; }

    /** Wing-local px point -> ship-local world offset (wing rotated by deg about its pivot), into out. */
    private static Vector2 wingPt(boolean left, float px, float py, float deg, Vector2 out) {
        float pvx = left ? ModMonoData.PIVOT_X : 1023 - ModMonoData.PIVOT_X, pvy = ModMonoData.PIVOT_Y;
        if (!left) px = 1023 - px;
        out.set(px - pvx, py - pvy).applyRotatation(Math.toRadians(left ? deg : -deg));
        out.set(lx(out.x + pvx), lx(out.y + pvy));
        return out;
    }

    private static Vector2 toScreen(PlayerShip ps, Vector2 local, Vector2 out) {
        Vector2 sc = GameRenderer.screenCenter;
        out.set(local.x, local.y).applyRotatation(Math.toRadians(ps.spin));
        out.set(out.x + sc.x, out.y + sc.y);
        return out;
    }

    // ------------------------------------------------------------------ drawing
    /** ModCaps.drawUnder (before the hull): aura shell, wings, plasma. */
    public static void under(PlayerShip ps) {
        try {
            stage = stageOf(ps);
            if (stage == 0) {
                if (lastT != 0) reset();
                return;
            }
            long t = System.currentTimeMillis();
            update(ps, t);
            Drawable hd = ps.getDrawableObject();
            if (hd == null || hd.dimensions == null) return;
            D = hd.dimensions.x;
            boolean parts = useParts("monolith", stage);
            float str = stage == 5 ? 1.0f : 0.5f;
            float wdeg = parts ? ang + 3.0f * (float) Math.sin(2 * Math.PI * flapT / 1.8) * Math.min(ang / MAX_ANG, 1) : 0;
            ModFx.relative = true;
            try {
                // v41: the preview's aura (baked masks, glow + rim + flame shell), under everything
                float sh = shieldFrac(ps);
                float agit = agitation(t);
                if (sh > 0) {
                    float vc = held + 0.3f * Math.min(agit, 1.5f);
                    ramp(AURA_CORE, vc, core);
                    ramp(AURA_EDGE, vc, edge);
                    float breathe = 1 + 0.02f * (float) Math.sin(2 * Math.PI * (t % 6500) / 6500.0);
                    float al = str * (1 + heavyPulse(t)) * (0.4f + 0.6f * sh);
                    float sz = D * (1 + 2 * ModMonoFx.A_PAD) * breathe * (1 + 0.06f * Math.min(agit, 1.5f));
                    float lv = Math.min(1, held + 0.25f * Math.min(agit, 1.5f));
                    leanOffset(ps, t, c);
                    Vector2 sc = GameRenderer.screenCenter;
                    if (parts) {
                        aura("mfx_mono_aura_hull", sc.x + c.x, sc.y + c.y, sz, ps.spin, false, lv, al);
                        for (int w = 0; w < 2; w++) {
                            boolean left = w == 0;
                            wingPt(left, 512, 512, wdeg, a);
                            toScreen(ps, a, b);
                            aura("mfx_mono_aura_wing", b.x + c.x, b.y + c.y, sz, ps.spin + (left ? wdeg : -wdeg), !left, lv, al);
                        }
                    } else {
                        aura(stage == 5 ? "mfx_mono_aura_hull" : "mfx_mono_aura_s4", sc.x + c.x, sc.y + c.y, sz, ps.spin, false, lv, al);
                    }
                }
                if (!parts) return;
                // wings under the hull, heated with the plates, lights on
                for (int w = 0; w < 2; w++) {
                    boolean left = w == 0;
                    String n = left ? "monolith_stage5_wingL" : "monolith_stage5_wingR";
                    wingPt(left, 512, 512, wdeg, a);
                    toScreen(ps, a, b);
                    float rot = ps.spin + (left ? wdeg : -wdeg);
                    ModFx.sprR(n, b.x, b.y, D, D, rot, 1, 1, 1, 1, false);
                    if (heat > 0.02f) ModFx.sprR(n + "_hot", b.x, b.y, D, D, rot, 1, 1, 1, heat * str, false);
                    ModFx.sprR(n + "_glow_l", b.x, b.y, D, D, rot, 1, 1, 1, 0.55f + 0.25f * (float) Math.sin(t / 700.0), true);
                }
                plasma(ps, t, wdeg, true);
            } finally {
                ModFx.relative = false;
            }
        } catch (Throwable th) {
            ModFx.relative = false;
        }
    }

    private static float shieldFrac(PlayerShip ps) {
        if (ps.shield == null || ps.shield.capacity <= 0 || ps.shield.currentValue <= 0) return 0;
        return Math.max(0, Math.min(1, ps.shield.currentValue / ps.shield.capacity));
    }

    private static float heavyPulse(long t) {
        float s = 0;
        for (int i = 0; i < HN; i++) {
            float age = (t - hT[i]) / 1000f;
            if (hT[i] > 0 && hDmg[i] > 0.8f && age < 0.6f) s += 0.5f * (float) Math.exp(-age / 0.25);
        }
        return s;
    }

    // ------------------------------------------------------------------ v41 baked layers (src/genmono41.py)
    private static final float HT = 0.5f / 2048f;   // half a texel: tiles never sample their neighbours

    /** One flat-colour additive mask tile (texture alpha x a), w may be negative (mirrored). */
    private static void mask(String tex, float x, float y, float w, float h, float rot, float r, float g, float bl, float al,
                             float u0, float v0, float u1, float v1) {
        if (al <= 0.004f) return;
        Texture tx = ModArt.ready(tex);
        if (tx == null) return;
        ModFx.flatNext = true;
        ModFx.sprTex(tx, x, y, w, h, rot, Math.min(1, r), Math.min(1, g), Math.min(1, bl), Math.min(1, al), true, u0 + HT, v0 + HT, u1 - HT, v1 - HT);
    }

    /**
     * The preview's aura for one part: col x A with col = core x I + edge x (1 - I), drawn additively as
     * edge x A + (core - edge) x A*I. Tiles blend between the two nearest speed levels and noise phases.
     */
    private static void aura(String base, float x, float y, float sz, float rot, boolean mirror, float lv, float al) {
        float L = Math.max(0, Math.min(1, lv)) * (ModMonoFx.A_LEVELS - 1);
        int l0 = Math.min((int) L, ModMonoFx.A_LEVELS - 2);
        float fl = L - l0;
        float P = (float) (phase / (2 * Math.PI) * ModMonoFx.A_NA);
        P = P - (float) Math.floor(P / ModMonoFx.A_NA) * ModMonoFx.A_NA;
        int k0 = Math.min((int) P, ModMonoFx.A_NA - 1);
        float fk = P - k0;
        float w = mirror ? -sz : sz;
        for (int q = 0; q < 4; q++) {
            int l = l0 + (q >> 1), k = (k0 + (q & 1)) % ModMonoFx.A_NA;
            float wt = ((q >> 1) == 0 ? 1 - fl : fl) * ((q & 1) == 0 ? 1 - fk : fk);
            if (wt <= 0.01f) continue;
            int i = l * ModMonoFx.A_NA + k;
            float u0 = (i % ModMonoFx.A_COLS) * ModMonoFx.A_TILE, v0 = (i / ModMonoFx.A_COLS) * ModMonoFx.A_TILE;
            float u1 = u0 + ModMonoFx.A_TILE, v1 = v0 + ModMonoFx.A_TILE;
            mask(base + "_a", x, y, w, sz, rot, edge[0], edge[1], edge[2], al * wt, u0, v0, u1, v1);
            mask(base + "_ai", x, y, w, sz, rot, Math.max(0, core[0] - edge[0]), Math.max(0, core[1] - edge[1]), Math.max(0, core[2] - edge[2]), al * wt, u0, v0, u1, v1);
        }
    }

    /** Agitated aura leans toward the side taking fire (preview: reach x (1 + 0.35 lean)); screen offset into out. */
    private static void leanOffset(PlayerShip ps, long t, Vector2 out) {
        float lx = 0, ly = 0;
        for (int i = 0; i < HN; i++) {
            float age = (t - hT[i]) / 1000f;
            if (hT[i] == 0 || age >= 3) continue;
            float e = hDmg[i] * (float) Math.exp(-age / 1.5);
            lx += e * (float) Math.cos(hAng[i]);
            ly += e * (float) Math.sin(hAng[i]);
        }
        float m = (float) Math.sqrt(lx * lx + ly * ly), cap = 0.35f * 30 * D / 1024f;
        float k = m > 1 ? 1 / m : 1;
        out.set(lx * k * cap, ly * k * cap).applyRotatation(Math.toRadians(ps.spin));
    }

    // trail ghosts (preview: the plasma image smeared back, x0.78 per 1/12 s): age (s), weight
    private static final float[] GHOST_AGE = {0.093f, 0.32f, 0.73f}, GHOST_W = {0.239f, 0.221f, 0.142f};

    /**
     * Plasma wings: the preview's 34 streaks per wing as an 18-frame flipbook (core, white-hot core, glow + trailing-edge
     * line), additive, colour blue -> gold -> red with speed. The preview shows it at 40% over the ship: 60% is drawn
     * under the wings and hull (under = true, with the fading trail) and 40% over them (from over()).
     */
    private static void plasma(PlayerShip ps, long t, float wdeg, boolean under) {
        float g = Math.max(0, Math.min(1, (ang / MAX_ANG - 0.85f) / 0.15f));
        if (g <= 0) return;
        ramp(PLASMA_CORE, held, core);
        ramp(PLASMA_EDGE, held, edge);
        float gi = Math.min(1, g * 1.4f), sc = 0.25f + 0.75f * g;
        float F = (t % ModMonoFx.P_LOOP_MS) / (float) ModMonoFx.P_LOOP_MS * ModMonoFx.P_NF;
        int f0 = Math.min((int) F, ModMonoFx.P_NF - 1);
        float ff = F - f0;
        float px2w = D / 1024f;
        float cxp = (ModMonoFx.P_X0 + ModMonoFx.P_X1) / 2, cyp = (ModMonoFx.P_Y0 + ModMonoFx.P_Y1) / 2;
        float tw = (ModMonoFx.P_X1 - ModMonoFx.P_X0) * px2w * sc, th = (ModMonoFx.P_Y1 - ModMonoFx.P_Y0) * px2w * sc;
        // growth: lengths scale from the trailing edge's middle (wing px 365, 600)
        float gx = 365 + (cxp - 365) * sc, gy = 600 + (cyp - 600) * sc;
        float wt = under ? 0.6f : 0.4f;
        float shift = (2.4f + 4.8f * held) * 30;   // trail drift, sprite px per second (preview at 30 fps)
        for (int w = 0; w < 2; w++) {
            boolean left = w == 0;
            wingPt(left, gx, gy, wdeg, a);
            toScreen(ps, a, b);
            float rot = ps.spin + (left ? wdeg : -wdeg), tww = left ? tw : -tw;
            for (int q = 0; q < 2; q++) {
                int fr = (f0 + q) % ModMonoFx.P_NF;
                float fw = (q == 0 ? 1 - ff : ff) * wt * gi;
                plasmaTile(fr, b.x, b.y, tww, th, rot, fw, true);
            }
            if (!under) continue;
            for (int k = 0; k < GHOST_AGE.length; k++) {
                float back = GHOST_AGE[k] * shift * px2w;
                c.set(0, back).applyRotatation(Math.toRadians(ps.spin));
                int fr = (int) (((t - (long) (GHOST_AGE[k] * 1000)) % ModMonoFx.P_LOOP_MS + ModMonoFx.P_LOOP_MS) % ModMonoFx.P_LOOP_MS
                        / (float) ModMonoFx.P_LOOP_MS * ModMonoFx.P_NF) % ModMonoFx.P_NF;
                plasmaTile(fr, b.x + c.x, b.y + c.y, tww, th, rot, GHOST_W[k] * gi, false);
            }
        }
    }

    private static void plasmaTile(int fr, float x, float y, float w, float h, float rot, float al, boolean white) {
        if (al <= 0.004f) return;
        float u0 = (fr % ModMonoFx.P_COLS) * ModMonoFx.P_TU, v0 = (fr / ModMonoFx.P_COLS) * ModMonoFx.P_TV;
        float u1 = u0 + ModMonoFx.P_TU, v1 = v0 + ModMonoFx.P_TV;
        mask("mfx_mono_plasma_glow", x, y, w, h, rot, edge[0] * 1.2f, edge[1] * 1.2f, edge[2] * 1.2f, al, u0, v0, u1, v1);
        mask("mfx_mono_plasma_core", x, y, w, h, rot, core[0], core[1], core[2], al, u0, v0, u1, v1);
        if (white) mask("mfx_mono_plasma_white", x, y, w, h, rot, 1, 1, 1, al, u0, v0, u1, v1);
    }

    /** ModCaps.drawOver (after the hull): hull heat, the plasma's over-ship share, hit flares and ripples. */
    public static void over(PlayerShip ps) {
        try {
            if (stage == 0) return;
            Drawable hd = ps.getDrawableObject();
            if (hd == null || hd.dimensions == null) return;
            D = hd.dimensions.x;
            long t = System.currentTimeMillis();
            boolean parts = useParts("monolith", stage);
            float str = stage == 5 ? 1.0f : 0.5f;
            Vector2 sc = GameRenderer.screenCenter;
            ModFx.relative = true;
            try {
                String hot = parts ? "monolith_stage5_hull_hot" : stage == 4 ? "monolith_stage4_hot" : null;
                if (hot != null && heat > 0.02f) ModFx.sprR(hot, sc.x, sc.y, D, D, ps.spin, 1, 1, 1, heat * str, false);
                if (parts) {
                    float wdeg = ang + 3.0f * (float) Math.sin(2 * Math.PI * flapT / 1.8) * Math.min(ang / MAX_ANG, 1);
                    plasma(ps, t, wdeg, false);
                }
                if (shieldFrac(ps) <= 0) return;
                float agit = agitation(t);
                float v = held + 0.3f * Math.min(agit, 1.5f);
                ramp(AURA_CORE, v, core);
                ramp(AURA_EDGE, v, edge);
                float[] o = parts || stage == 5 ? ModMonoData.HULL : ModMonoData.S4;
                hits(ps, t, o, str);
            } finally {
                ModFx.relative = false;
            }
        } catch (Throwable th) {
            ModFx.relative = false;
        }
    }

    private static float angd(float a1, float a2) {
        double d = a1 - a2;
        return (float) Math.abs(Math.atan2(Math.sin(d), Math.cos(d)));
    }

    /** Impact flare (white, local), ripple round the outline both ways, heavy-hit shock ring. */
    private static void hits(PlayerShip ps, long t, float[] o, float str) {
        float px2w = D / 1024f;
        int n = o.length / 4;
        for (int i = 0; i < HN; i++) {
            float age = (t - hT[i]) / 1000f;
            if (hT[i] == 0 || age >= 1.2f) continue;
            float d = hDmg[i];
            // nearest outline point to the impact direction
            int best = 0;
            float bd = 9;
            for (int k = 0; k < n; k++) {
                float th = (float) Math.atan2(o[4 * k + 1] - 512, o[4 * k] - 512);
                float dd = angd(th, hAng[i]);
                if (dd < bd) { bd = dd; best = k; }
            }
            a.set(lx(o[4 * best]), lx(o[4 * best + 1]));
            toScreen(ps, a, b);
            float fl = (0.5f + d) * (float) Math.exp(-age / 0.3f);
            float fs = (14 + 14 * d) * 2.56f * px2w * 2.5f;
            ModFx.spr("fx_glow", b.x, b.y, fs, fs, 0, 1, 1, 1, Math.min(1, fl) * str, true);
            // ripple: two bright spots travelling round the outline (2.8 rad/s), fading in ~0.7 s
            float steps = age * 2.8f / (float) (2 * Math.PI) * n;
            float ra = d * (float) Math.exp(-age / 0.7f) * str;
            for (int sgn = -1; sgn <= 1; sgn += 2) {
                int k = ((best + sgn * Math.round(steps)) % n + n) % n;
                a.set(lx(o[4 * k]), lx(o[4 * k + 1]));
                toScreen(ps, a, c);
                ModFx.spr("fx_glow", c.x, c.y, fs * 0.8f, fs * 0.8f, 0, core[0], core[1], core[2], ra, true);
            }
            if (d > 0.8f && age < 0.6f) {
                Vector2 sc = GameRenderer.screenCenter;
                float rr = D * (0.5f + age * 90 * 2.56f / 1024f * 2);
                ModFx.spr("fx_shock", sc.x, sc.y, rr * 2, rr * 2, 0, core[0], core[1], core[2], 0.5f * (float) Math.exp(-age / 0.5f) * str, true);
            }
        }
    }
}
