package fr.testudo.spacecorsair.mod;

import fr.testudo.spacecorsair.business.player.PlayerShip;
import fr.testudo.spacecorsair.display.Drawable;
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
 */
public final class ModMonolith {
    private ModMonolith() {}

    static final float MAX_ANG = 80, X_OPEN = 0.6f, HOLD_MS = 2500;

    private static int stage;                 // 0 = not a Monolith s4/s5
    private static long lastT;
    private static float vmax = 1e-3f;        // self-calibrating top speed (world units per tick)
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

    /** s5 hull without the painted closed wings (ModV35.playerArt), when the parts ship. */
    static boolean useParts(String art, int s) {
        return "monolith".equals(art) && s == 5 && ModV35.art("monolith_stage5_hull") && ModV35.art("monolith_stage5_wingL") && ModV35.art("monolith_stage5_wingR");
    }

    // ------------------------------------------------------------------ state
    private static void update(PlayerShip ps, long t) {
        float dt = lastT == 0 ? 0.016f : Math.max(0, Math.min(0.1f, (t - lastT) / 1000f));
        lastT = t;
        float spd = (float) Math.sqrt(ps.speed.x * ps.speed.x + ps.speed.y * ps.speed.y);
        if (!ps.isBoosterEnabled) vmax = Math.max(vmax * (1 - 0.02f * dt), spd);
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
                lastT = 0;
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
                // aura shell base (soft glow + rim), under everything
                float sh = shieldFrac(ps);
                float agit = agitation(t);
                if (sh > 0) {
                    float v = held + 0.3f * Math.min(agit, 1.5f);
                    ramp(AURA_EDGE, v, edge);
                    float breathe = 0.92f + 0.08f * (float) Math.sin(2 * Math.PI * (t % 6500) / 6500.0);
                    float al = str * (0.55f + 0.25f * Math.min(agit, 1.5f) + heavyPulse(t)) * breathe * (0.4f + 0.6f * sh);
                    Vector2 sc = GameRenderer.screenCenter;
                    float sz = D * ModMonoData.AURA_PAD * (1 + 0.04f * held);
                    if (parts) {
                        ModFx.sprR("monolith_stage5_hull_aura", sc.x, sc.y, sz, sz, ps.spin, edge[0], edge[1], edge[2], al, true);
                        for (int w = 0; w < 2; w++) {
                            boolean left = w == 0;
                            wingPt(left, 512, 512, wdeg, a);
                            toScreen(ps, a, b);
                            ModFx.sprR(left ? "monolith_stage5_wingL_aura" : "monolith_stage5_wingR_aura", b.x, b.y, sz, sz, ps.spin + (left ? wdeg : -wdeg), edge[0], edge[1], edge[2], al, true);
                        }
                    } else {
                        ModFx.sprR(stage == 5 ? "monolith_stage5_hull_aura" : "monolith_stage4_aura", sc.x, sc.y, sz, sz, ps.spin, edge[0], edge[1], edge[2], al, true);
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
                plasma(ps, t, wdeg);
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

    // plasma streaks: 9 per wing, fixed jitter (preview: 34 streaks drawn into a texture; here fewer, wider strips)
    private static final int NS = 9;
    private static final float[] SU = new float[NS], SJ = new float[NS], SL = new float[NS], SP = new float[NS];
    static {
        java.util.Random r = new java.util.Random(11);
        for (int j = 0; j < NS; j++) {
            SU[j] = Math.max(0, Math.min(1, j / (float) (NS - 1) + (r.nextFloat() - 0.5f) * 0.04f));
            SJ[j] = (r.nextFloat() - 0.5f) * 14;
            SL[j] = 0.6f + r.nextFloat() * 0.45f;
            SP[j] = r.nextFloat() * 6.283f;
        }
    }

    private static float interp(float[] arr, int stride, int off, float u) {
        int n = arr.length / stride;
        float x = u * (n - 1);
        int k = Math.min((int) x, n - 2);
        float f = x - k;
        return arr[k * stride + off] * (1 - f) + arr[(k + 1) * stride + off] * f;
    }

    private static long lastTrail;

    private static void plasma(PlayerShip ps, long t, float wdeg) {
        float g = Math.max(0, Math.min(1, (ang / MAX_ANG - 0.85f) / 0.15f));
        if (g <= 0) return;
        ramp(PLASMA_CORE, held, core);
        ramp(PLASMA_EDGE, held, edge);
        float ts = t / 1000f;
        boolean trail = t - lastTrail > 45;
        if (trail) lastTrail = t;
        float px2w = D / 1024f;
        for (int w = 0; w < 2; w++) {
            boolean left = w == 0;
            // emission line along the trailing edge
            for (int k = 0; k + 3 < ModMonoData.TE_L.length; k += 2) {
                wingPt(left, ModMonoData.TE_L[k], ModMonoData.TE_L[k + 1], wdeg, a);
                toScreen(ps, a, b);
                wingPt(left, ModMonoData.TE_L[k + 2], ModMonoData.TE_L[k + 3], wdeg, a);
                toScreen(ps, a, c);
                ModFx.strip("fx_glow", b.x, b.y, c.x, c.y, 18 * px2w, edge[0], edge[1], edge[2], 0.8f * g, true);
            }
            for (int j = 0; j < NS; j++) {
                float u = SU[j];
                float bx = interp(ModMonoData.TE_L, 2, 0, u), by = interp(ModMonoData.TE_L, 2, 1, u);
                float phi = (float) Math.toRadians(interp(ModMonoData.TE_ANG, 1, 0, u) + SJ[j]);
                float len = interp(ModMonoData.TE_LEN, 1, 0, u) * SL[j] * g;
                float dx = (float) Math.sin(phi), dy = (float) Math.cos(phi), nx = dy, ny = -dx;
                float pulse = 0.78f + 0.22f * (float) Math.sin(2 * Math.PI * (0.3 - ts * 1.1) + SP[j]);
                float qx = bx, qy = by;
                wingPt(left, qx, qy, wdeg, a);
                toScreen(ps, a, b);
                float x0 = b.x, y0 = b.y;
                // whole-streak glow, then 3 wobbling core segments fading out
                wingPt(left, bx + dx * len, by + dy * len, wdeg, a);
                toScreen(ps, a, c);
                ModFx.strip("fx_glow", x0, y0, c.x, c.y, 26 * px2w, edge[0], edge[1], edge[2], 0.35f * g * pulse, true);
                for (int k = 1; k <= 3; k++) {
                    float s = len * k / 3f, f = k / 3f;
                    float wob = 7 * (float) Math.sin(s / 38 - ts * 3.2f + SP[j]) * f;
                    wingPt(left, bx + dx * s + nx * wob, by + dy * s + ny * wob, wdeg, a);
                    toScreen(ps, a, c);
                    float fade = (float) Math.pow(1 - (k - 1) / 3f, 0.8);
                    ModFx.strip("fx_glow", x0, y0, c.x, c.y, 9 * px2w, core[0], core[1], core[2], 0.85f * g * pulse * fade, true);
                    x0 = c.x;
                    y0 = c.y;
                }
                // short fading trail: a spark left behind at the streak tip (world space, drifts back slowly)
                if (trail && (j % 3) == (int) (t / 45 % 3)) {
                    wingPt(left, bx + dx * len, by + dy * len, wdeg, a);
                    ModFx.local(ps.position, ps.spin, a.x, a.y, c);
                    ModFx.part("fx_glow", c.x, c.y, ModFx.rnd(-8, 8), ModFx.rnd(-8, 8), 420, 22 * px2w * 4, 6 * px2w * 4, edge[0], edge[1], edge[2], 0.6f * g, true, false);
                    ModFx.lastDrag(3);
                }
            }
        }
    }

    /** ModCaps.drawOver (after the hull): hull heat, flame tongues, hit flares and ripples. */
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
                float sh = shieldFrac(ps);
                if (sh <= 0) return;
                float agit = agitation(t);
                float v = held + 0.3f * Math.min(agit, 1.5f);
                ramp(AURA_CORE, v, core);
                ramp(AURA_EDGE, v, edge);
                float wdeg = parts ? ang : 0;
                float[] o = parts || stage == 5 ? ModMonoData.HULL : ModMonoData.S4;
                tongues(ps, t, o, false, false, 0, str, sh, agit);
                if (parts) {
                    tongues(ps, t, ModMonoData.WING_L, true, true, wdeg, str, sh, agit);
                    tongues(ps, t, ModMonoData.WING_L, true, false, wdeg, str, sh, agit);
                }
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

    /** Calm flame tongues along the outline; length breathes with a slow travelling noise, reacts to hits. */
    private static void tongues(PlayerShip ps, long t, float[] o, boolean wing, boolean left, float wdeg, float str, float sh, float agit) {
        float px2w = D / 1024f;
        float base = (14 + 8 * held) * px2w * 2.56f * (1 + 0.5f * Math.min(agit, 1.5f));
        int n = o.length / 4;
        for (int k = 0; k < n; k++) {
            float px = o[4 * k], py = o[4 * k + 1], nx = o[4 * k + 2], ny = o[4 * k + 3];
            float th = (float) Math.atan2(py - 512, (wing && !left ? 1023 - px : px) - 512);
            float reach = base * (1 + 0.6f * ((py / 1024f) * (py / 1024f)) * held);
            float lean = 0;
            float dent = 1;
            for (int i = 0; i < HN; i++) {
                float age = (t - hT[i]) / 1000f;
                if (hT[i] == 0 || age >= 3) continue;
                float e = hDmg[i] * (float) Math.exp(-age / 1.5);
                lean += e * (float) Math.cos(th - hAng[i]);
                float dp = angd(th, hAng[i]);
                dent *= 1 - 0.55f * hDmg[i] * (float) Math.exp(-dp * dp / 0.25f) * (float) Math.exp(-age / 0.5f) * (float) Math.cos(age * 10);
            }
            reach *= (1 + 0.35f * Math.max(-1, Math.min(1, lean))) * Math.max(0.15f, dent);
            double nz = Math.sin(phase * 1.0 + k * 1.7) * Math.sin(phase * 0.6 + k * 0.9 + 1.3);
            float len = reach * (0.55f + 0.9f * (float) (0.5 + 0.5 * nz));
            float bx = px, by = py, ex = px + nx * len / px2w, ey = py + ny * len / px2w;
            if (wing) {
                wingPt(left, bx, by, wdeg, a);
                wingPt(left, ex, ey, wdeg, c);
            } else {
                a.set(lx(bx), lx(by));
                c.set(lx(ex), lx(ey));
            }
            toScreen(ps, a, b);
            toScreen(ps, c, a);
            float al = str * (0.30f + 0.25f * (float) (0.5 + 0.5 * nz)) * (0.5f + 0.5f * sh);
            ModFx.strip("fx_glow", b.x, b.y, a.x, a.y, len * 0.9f, edge[0], edge[1], edge[2], al, true);
            ModFx.strip("fx_glow", b.x, b.y, (a.x + b.x * 2) / 3, (a.y + b.y * 2) / 3, len * 0.35f, core[0], core[1], core[2], al * 0.9f, true);
        }
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
