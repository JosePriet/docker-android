package fr.testudo.spacecorsair.mod;

import fr.testudo.spacecorsair.business.player.PlayerShip;
import fr.testudo.spacecorsair.display.Drawable;
import fr.testudo.spacecorsair.display.Texture;
import fr.testudo.spacecorsair.engine.GameRenderer;
import fr.testudo.spacecorsair.engine.Vector2;

/**
 * v38: the Spartan Leviathan doomsday, owner-approved v4 sequence (leviathan-vfx/doomsday.py) + synth sound plan C.
 * Timeline (s from the DOOMSDAY press):
 *   0.0-1.0 lock-down (brake to a stop, engines dark, ring cage clamps on segment by segment)
 *   1.0-3.2 power routing (turret rings flare, energy runs along the gold trims to the prow, hull lights shut down,
 *           spine fills amber stern -> nose)
 *   3.2-4.9 charge (core forms between the tusks, particles pulled in, space dims, hull arcs, rising shake; spine refills
 *           as an icy-blue gauge)
 *   4.9-5.4 CHARGED beat (implosion ring, core compresses to a still point, everything holds)
 *   5.4     fire (flash, shockwave, recoil), 5.55-10.0 beam (turns at up to 5 deg/s, ModTitan), taper 9.5-10.0
 *   10.0    end recoil; 10.0-12.2 overcharged (red-orange hull glow, vents dump plasma, arcs over the ring, spine flickers)
 *   10.6-15.6 hull lights reboot, 15.7-16.7 engines relight; the spine and the ring segments return over the cooldown.
 * Ring/spine/trims overlays need the stage-5 art (baked by src/genlev38.py); other stages get the rest of the sequence.
 */
public final class ModLevDoom {
    private ModLevDoom() {}

    static final int CHARGE_MS = 5400, FIRE_MS = 4600, OVER_MS = 2200, DAMAGE_DELAY_MS = 150;
    /** Per-tick hull slices (200 ms ticks, ~22 per lance): titan-class 5% and mission bosses 12% per full lance (owner Q1 default). */
    static final float TITAN_SLICE = 0.05f / 22, BOSS_SLICE = 0.12f / 22;

    private static long seqMs;          // game time since the press (frame deltas from ModTitan.tick, so pauses freeze it)
    private static boolean on;         // sequence visuals running (press .. end of reboot)
    private static boolean s5;
    static float coolFrac = 1;         // ModTitan: 0 at the start of the cooldown .. 1 ready
    static boolean gauge;              // spine/ring gauge shown until the doomsday is ready again
    private static final Vector2 a = new Vector2(), b = new Vector2(), c = new Vector2();
    private static float D;

    static boolean is(ModCaps.Profile p) {
        return p != null && p.hull != null && "leviathan".equals(p.hull.art);
    }

    static void start(PlayerShip ps) {
        seqMs = 0;
        on = true;
        gauge = true;
        coolFrac = 0;
        try {
            s5 = ModV35.stage(ModV35.level(ModV35.currentShip())) == 5 && ModV35.art("leviathan_stage5_spine");
        } catch (Throwable t) {
            s5 = false;
        }
        ModSound.play("lev_doom_charge", 1.0f, 1.0f, 500);
    }

    /** Ship changed or the cycle reset: no overlays. */
    static void stop() {
        on = false;
        gauge = false;
        coolFrac = 1;
    }

    static float sec() {
        return seqMs / 1000f;
    }

    /** ModTitan.tick, every frame: advances the sequence clock. */
    static void advance(long j) {
        if (on) seqMs += j;
    }

    /** Cycle aborted (map, ship removed): lights and engines back, no more sequence overlays; the cooldown gauge stays. */
    static void abort() {
        on = false;
    }

    static float sm(float t, float a0, float a1) {
        float u = Math.max(0, Math.min(1, (t - a0) / (a1 - a0)));
        return u * u * (3 - 2 * u);
    }

    /** ModLive: player hull light multiplier (lights shut down while power is diverted, reboot after the shot). */
    public static float lightMul() {
        if (!on) return 1;
        float t = sec();
        if (t < 10.6f) {
            float v = 1 - sm(t, 1.0f, 2.2f);
            if (t > 10.0f) v += 0.12f * (0.5f + 0.5f * (float) Math.sin(t * 23));   // faint emergency flicker
            return v;
        }
        float v = sm(t, 10.6f, 15.6f);
        if (v < 1 && Math.random() < 0.18) v *= 0.35f;                             // sections flicker as they come back
        return v;
    }

    /** ModLive: player engine glow multiplier (dark from the lock-down, relight late in the reboot). */
    public static float engineMul() {
        if (!on) return 1;
        float t = sec();
        return Math.max(1 - sm(t, 0, 1.0f), sm(t, 15.7f, 16.7f));
    }

    // ------------------------------------------------------------------ tick (game thread, from ModTitan)
    /** During the charge state: particles, arcs and the rising shake of the charge phase only. */
    static void chargeTick(PlayerShip ps, long j, float[] col) {
        float t = sec();
        float sz = ps.shipSpec.drawableSize;
        if (t > 3.2f && t < 4.75f) {
            float ch = sm(t, 3.2f, 4.9f);
            ModQol.addShake(j / 4000.0f * (0.3f + ch));
            core(ps, sz, a);
            if (Math.random() < 0.8) {
                double ang = Math.random() * Math.PI * 2;
                float d = sz * ModFx.rnd(0.35f, 0.9f);
                float x = a.x + (float) Math.cos(ang) * d, y = a.y + (float) Math.sin(ang) * d;
                ModFx.part("fx_spark", x, y, (a.x - x) * 2.4f, (a.y - y) * 2.4f, 420, 16, 6, col[0], col[1], col[2], 1.0f, true, true);
                ModFx.lastStretch(0.05f);
            }
        } else if (t < 1.0f) {
            ModQol.addShake(j / 9000.0f);   // clamps biting
        }
    }

    /** End of the beam: kick back along the beam and shake. */
    static void endRecoil(PlayerShip ps, float spin) {
        b.set(0, 1).applyRotatation(Math.toRadians(spin));
        float k = Math.max(1.5f, ps.shipSpec.drawableSize / 300f);
        ps.speed.x += b.x * k;
        ps.speed.y += b.y * k;
        ModQol.addShake(0.6f);
        ModSound.play("lev_doom_over", 1.0f, 1.0f, 500);
    }

    // ------------------------------------------------------------------ geometry
    private static float lx(float px) {
        return ((px + 0.5f) / 1024f - 0.5f) * D;
    }

    private static Vector2 scr(PlayerShip ps, float px, float py, Vector2 out) {
        Vector2 sc = GameRenderer.screenCenter;
        out.set(lx(px), lx(py)).applyRotatation(Math.toRadians(ps.spin));
        out.set(out.x + sc.x, out.y + sc.y);
        return out;
    }

    /** World position of the charge core (between the tusks on s5, the nose otherwise). */
    static Vector2 core(PlayerShip ps, float sz, Vector2 out) {
        float y = s5 ? ((ModLevData.CORE_Y + 0.5f) / 1024f - 0.5f) * sz : -sz * 0.48f;
        return ModFx.local(ps.position, ps.spin, 0, y, out);
    }

    // ------------------------------------------------------------------ drawing
    /** ModCaps.drawUnder: space dims around the titan during the charge. */
    public static void drawUnder(PlayerShip ps) {
        if (!on || !ModTitan.isLeviathanSeq(ps)) return;
        float t = sec();
        float dim = 0.5f * sm(t, 3.2f, 4.9f) * (1 - sm(t, 5.6f, 7.0f));
        if (dim > 0.01f) {
            float s = ps.shipSpec.drawableSize * 7;
            ModFx.spr("fx_glow", ps.position.x, ps.position.y, s, s, 0, 0, 0, 0, dim, false);
            ModFx.spr("fx_glow", ps.position.x, ps.position.y, s * 0.6f, s * 0.6f, 0, 0, 0, 0, dim, false);
        }
    }

    /** ModCaps.drawOver: overlays riding on the hull. */
    public static void drawOver(PlayerShip ps) {
        if ((!on && !gauge) || !ModTitan.isLeviathanSeq(ps)) return;
        Drawable hd = ps.getDrawableObject();
        if (hd == null || hd.dimensions == null) return;
        D = hd.dimensions.x;
        float t = on ? sec() : 99;
        if (on && t > 17.5f) on = false;
        ModFx.relative = true;
        try {
            if (s5) {
                spine(ps, t);
                ring(ps, t);
                if (t > 1.0f && t < 5.0f) trims(ps, t);
            }
            if (on) sequence(ps, hd, t);
        } catch (Throwable th) {
            // visuals never break the weapon
        } finally {
            ModFx.relative = false;
        }
    }

    private static final float[] AMBER = {1.0f, 0.62f, 0.15f}, ICY = {0.6f, 0.88f, 1.0f}, HOT = {1.0f, 0.4f, 0.12f};

    /** Spine = energy gauge: amber fill (routing), icy fill (charge), drain (beam), dark, amber return over the cooldown. */
    private static void spine(PlayerShip ps, float t) {
        Texture tex = ModArt.ready("leviathan_stage5_spine");
        if (tex == null) return;
        float y0 = ModLevData.SPINE_Y0, y1 = ModLevData.SPINE_Y1;
        float lev;
        float[] col;
        float al;
        boolean dark;
        if (t < 3.2f) { lev = sm(t, 1.0f, 3.2f); col = AMBER; al = 0.9f; dark = false; }
        else if (t < 5.4f) { lev = sm(t, 3.2f, 4.9f); col = ICY; al = 1.0f; dark = true; }
        else if (t < 10.0f) { lev = 1 - sm(t, 5.5f, 9.8f); col = ICY; al = 1.0f; dark = true; }
        else {
            lev = coolFrac; col = AMBER; al = 0.55f; dark = true;
            if (t < 12.2f && Math.random() < 0.3) { lev = 1; col = HOT; al = 0.25f; }   // flickers in the overcharge
        }
        if (dark && lev < 1) span(ps, tex, y0, y1 - lev * (y1 - y0), 0.05f, 0.04f, 0.04f, 0.85f, false);
        if (lev > 0.001f) {
            float top = y1 - lev * (y1 - y0);
            span(ps, tex, top, y1, col[0], col[1], col[2], al, true);
            if (lev < 0.999f) {   // bright leading edge
                scr(ps, 512, top, b);
                ModFx.spr("fx_glow", b.x, b.y, D * 0.06f, D * 0.06f, 0, col[0], col[1], col[2], 0.9f, true);
            }
        }
    }

    /** Draws the rows ya..yb (1024 px) of a full-canvas overlay texture. */
    private static void span(PlayerShip ps, Texture tex, float ya, float yb, float r, float g, float bb, float al, boolean add) {
        if (yb - ya < 1) return;
        scr(ps, 511.5f, (ya + yb) / 2 - 0.5f, b);
        ModFx.sprTex(tex, b.x, b.y, D, D * (yb - ya) / 1024f, ps.spin, r, g, bb, al, add, 0, ya / 1024f, 1, yb / 1024f);
    }

    /** Ring cage: clamps on segment by segment, bright through the charge, arcs in the overcharge, re-lights over the cooldown. */
    private static void ring(PlayerShip ps, float t) {
        Texture tex = ModArt.ready("leviathan_stage5_ringseg");
        if (tex == null) return;
        float charge = sm(t, 3.2f, 4.9f) * (1 - sm(t, 5.4f, 6.0f));
        for (int k = 0; k < 16; k++) {
            float x0 = ModLevData.SEG_BOX[4 * k], y0 = ModLevData.SEG_BOX[4 * k + 1], x1 = ModLevData.SEG_BOX[4 * k + 2], y1 = ModLevData.SEG_BOX[4 * k + 3];
            if (x1 <= x0) continue;
            float u0 = (k % 4) * 0.25f, v0 = (k / 4) * 0.25f;
            float u1 = u0 + ModLevData.SEG_UV[2 * k], v1 = v0 + ModLevData.SEG_UV[2 * k + 1];
            scr(ps, (x0 + x1) / 2 - 0.5f, (y0 + y1) / 2 - 0.5f, b);
            float w = D * (x1 - x0) / 1024f, h = D * (y1 - y0) / 1024f;
            float r, g, bl, al;
            boolean add = true;
            if (t < 1.0f) {                               // clamps: each segment flashes on in turn
                float on1 = t * 16 - k;
                if (on1 < 0) continue;
                float f = (float) Math.exp(-on1 * 0.6f);
                r = 0.75f + 0.25f * f; g = 0.85f + 0.15f * f; bl = 1; al = 0.45f + 0.5f * f;
            } else if (t < 10.0f) {
                float run = t < 3.2f ? 0.5f + 0.5f * (float) Math.sin((t - 1) * 6 - k * 0.8f) : 0.6f;
                r = ICY[0]; g = ICY[1]; bl = ICY[2]; al = 0.35f + 0.25f * run + 0.4f * charge;
            } else if (t < 12.2f) {
                r = HOT[0]; g = HOT[1]; bl = HOT[2]; al = Math.random() < 0.25 ? 0.7f : 0.25f;
            } else {                                       // cooldown gauge: lit segments = recharged share
                boolean lit = coolFrac >= (k + 1) / 16f;
                if (lit) { r = 1.0f; g = 0.85f; bl = 0.5f; al = 0.35f; }
                else { r = 0.03f; g = 0.03f; bl = 0.04f; al = 0.6f; add = false; }
            }
            ModFx.sprTex(tex, b.x, b.y, w, h, ps.spin, r, g, bl, al, add, u0, v0, u1, v1);
        }
        if (t > 10.0f && t < 12.2f && Math.random() < 0.5) {   // arcs crawling over the cage
            int k1 = (int) (Math.random() * 16), k2 = (k1 + 1 + (int) (Math.random() * 2)) % 16;
            if (ModLevData.SEG_BOX[4 * k1 + 2] > 0 && ModLevData.SEG_BOX[4 * k2 + 2] > 0) {
                scr(ps, (ModLevData.SEG_BOX[4 * k1] + ModLevData.SEG_BOX[4 * k1 + 2]) / 2, (ModLevData.SEG_BOX[4 * k1 + 1] + ModLevData.SEG_BOX[4 * k1 + 3]) / 2, a);
                scr(ps, (ModLevData.SEG_BOX[4 * k2] + ModLevData.SEG_BOX[4 * k2 + 2]) / 2, (ModLevData.SEG_BOX[4 * k2 + 1] + ModLevData.SEG_BOX[4 * k2 + 3]) / 2, c);
                arc(a.x, a.y, c.x, c.y, HOT, D * 0.012f);
            }
        }
    }

    private static void arc(float x1, float y1, float x2, float y2, float[] col, float w) {
        float px = x1, py = y1, j = Math.max(6, (float) Math.hypot(x2 - x1, y2 - y1) * 0.12f);
        for (int s = 1; s <= 5; s++) {
            float f = s / 5.0f;
            float nx = x1 + (x2 - x1) * f + (s < 5 ? ModFx.rnd(-j, j) : 0), ny = y1 + (y2 - y1) * f + (s < 5 ? ModFx.rnd(-j, j) : 0);
            ModFx.strip("fx_glow", px, py, nx, ny, w, col[0] * 0.6f + 0.4f, col[1] * 0.6f + 0.4f, col[2] * 0.6f + 0.4f, 0.9f, true);
            px = nx;
            py = ny;
        }
    }

    /** Power routing: trims glow, pads flare, pulses run pad -> prow along the trims; all drawn into the core by 4.95 s. */
    private static void trims(PlayerShip ps, float t) {
        float route = sm(t, 1.0f, 1.6f) * (1 - sm(t, 4.7f, 4.95f));
        if (route <= 0) return;
        Texture tex = ModArt.ready("leviathan_stage5_trims");
        Vector2 sc = GameRenderer.screenCenter;
        float charge = sm(t, 3.2f, 4.9f);
        if (tex != null) ModFx.sprTex(tex, sc.x, sc.y, D, D, ps.spin, AMBER[0], AMBER[1], AMBER[2], 0.35f * route * (1 + 0.6f * charge), true, 0, 0, 1, 1);
        float drain = sm(t, 1.0f, 1.5f) * (1 - sm(t, 2.6f, 3.6f));
        if (drain > 0 && ps.playerCannons != null) {
            for (int i = 0; i < ps.playerCannons.length; i++) {
                Vector2 p = ps.playerCannons[i].shipPosition;
                a.set(p.x, p.y).applyRotatation(Math.toRadians(ps.spin));
                ModFx.spr("fx_glow", sc.x + a.x, sc.y + a.y, D * 0.11f, D * 0.11f, 0, 1.0f, 0.8f, 0.4f, 0.8f * drain, true);
            }
        }
        float ts = t - 1.0f;
        for (int pth = 0; pth < ModLevData.PATHS.length; pth++) {
            float[] P = ModLevData.PATHS[pth];
            int n = P.length / 2;
            if (n < 2) continue;
            for (int q = 0; q < 3; q++) {
                float f = (ts * 0.75f + q / 3f + pth * 0.11f) % 1.0f;
                float x = f * (n - 1);
                int k = Math.min((int) x, n - 2);
                float u = x - k;
                scr(ps, P[2 * k] * (1 - u) + P[2 * k + 2] * u, P[2 * k + 1] * (1 - u) + P[2 * k + 3] * u, b);
                ModFx.spr("fx_glow", b.x, b.y, D * 0.035f, D * 0.035f, 0, 1.0f, 0.9f, 0.6f, 0.9f * route, true);
            }
        }
    }

    /** Core, implosion, muzzle flash and shockwave, overheat glow, vents. */
    private static void sequence(PlayerShip ps, Drawable hd, float t) {
        float cx = s5 ? ModLevData.CORE_X : 512, cy = s5 ? ModLevData.CORE_Y : 1024 * 0.02f;
        scr(ps, cx, cy, a);
        float charge = sm(t, 3.2f, 4.9f);
        float ready = t >= 4.9f && t < 5.4f ? sm(t, 4.9f, 5.0f) : 0;
        float beamOn = sm(t, 5.4f, 5.5f) * (1 - sm(t, 9.5f, 10.0f));
        float coreA = charge * (1 - sm(t, 5.5f, 6.0f));
        if (coreA > 0.01f) {
            float R = (4 + 16 * charge + 6 * (float) Math.sin(t * 20) * charge * (1 - ready)) * (1 - 0.55f * ready) * 2 / 1024f * D * 2.2f;
            ModFx.spr("fx_core", a.x, a.y, R * 2, R * 2, 0, ICY[0], ICY[1], ICY[2], Math.min(1, coreA), true);
            ModFx.spr("fx_core", a.x, a.y, R, R, 0, 1, 1, 1, Math.min(1, coreA), true);
            ModFx.spr("fx_streak", a.x, a.y, R * 9, R * 1.2f, ps.spin, ICY[0], ICY[1], ICY[2], 0.6f * coreA, true);
        }
        if (t >= 4.9f && t < 5.15f) {   // implosion ring snapping into the core
            float f = (t - 4.9f) / 0.25f;
            float rr = D * 0.55f * (1 - f);
            ModFx.spr("fx_shock", a.x, a.y, rr * 2, rr * 2, 0, ICY[0], ICY[1], ICY[2], 0.8f * (1 - f * 0.5f), true);
        }
        if (t >= 5.4f && t < 5.9f) {    // flash + shockwave
            float f = (t - 5.4f) / 0.5f;
            float fl = Math.max(0, 1 - (t - 5.4f) / 0.18f);
            ModFx.spr("fx_glow", a.x, a.y, D * 3.5f, D * 3.5f, 0, 1, 1, 1, fl, true);
            float rr = D * (0.2f + 2.4f * f);
            ModFx.spr("fx_shock", a.x, a.y, rr * 2, rr * 2, 0, 0.85f, 0.95f, 1.0f, 0.9f * (1 - f), true);
        }
        if (beamOn > 0.01f) ModFx.spr("fx_glow", a.x, a.y, D * 0.35f, D * 0.35f, 0, 1, 1, 1, 0.8f * beamOn, true);
        // overcharged: hull edges glow red-orange, then cool
        float over = sm(t, 9.8f, 10.4f) * (1 - sm(t, 12.2f, 15.7f));
        Vector2 sc = GameRenderer.screenCenter;
        Texture ht = hd.myTexture;
        if (over > 0.01f && ht != null && ht.name > 0) {
            ModFx.flatNext = true;
            ModFx.sprTex(ht, sc.x, sc.y, hd.dimensions.x * 1.02f, hd.dimensions.y * 1.02f, ps.spin, HOT[0], HOT[1], HOT[2], 0.35f * over, true, 0, 0, 1, 1);
        }
        // vents: orange plasma in the overcharge, grey vapour in the cooldown (s5 vent spots; nose-to-stern centre otherwise)
        if ((over > 0.02f || (t > 12.2f && t < 16.2f)) && Math.random() < 0.6) {
            int v = (int) (Math.random() * 3);
            float vx = s5 ? ModLevData.VENTS[2 * v] : 512 + (v - 1) * 50, vy = s5 ? ModLevData.VENTS[2 * v + 1] : 960;
            ModFx.local(ps.position, ps.spin, lx(vx), lx(vy), b);
            c.set(ModFx.rnd(-30, 30), 160).applyRotatation(Math.toRadians(ps.spin));
            boolean plasma = over > 0.3f;
            ModFx.part("fx_glow", b.x, b.y, c.x, c.y, 700, D * 0.02f, D * 0.07f, plasma ? 1.0f : 0.6f, plasma ? 0.45f : 0.6f, plasma ? 0.15f : 0.66f,
                plasma ? 0.8f * over : 0.35f * (1 - sm(t, 14.2f, 16.2f)), plasma, false);
        }
    }
}
