package fr.testudo.spacecorsair.mod;

import fr.testudo.spacecorsair.business.player.PlayerShip;
import fr.testudo.spacecorsair.display.Drawable;
import fr.testudo.spacecorsair.display.Texture;
import fr.testudo.spacecorsair.engine.GameRenderer;
import fr.testudo.spacecorsair.engine.Vector2;

/**
 * v43a-3: Leviathan war-elephant effects #3 and #4 (owner list in the doomsday thread), stage 4+ only; s4 = fainter s5.
 *  #3 war-drum spine: the central ridge beats like a drum. Idle ~40 bpm; under fire (hits on the player) the beat climbs to
 *     ~120 bpm. Each beat sends an amber pulse stern -> nose along the spine and the ridge flashes once at the prow.
 *  #4 heavy wake: at speed the titan ploughs space: a train of expanding, fading rings is left behind the stern and two
 *     bow-wave streaks peel off the flanks. Strength follows the speed share of the (self-calibrating) top speed.
 * Everything is drawn in real time with the shipped fx_glow / spine textures; no flipbooks. Silent while the doomsday
 * sequence runs (ModLevDoom draws the spine gauge then).
 */
public final class ModLevFx {
    private ModLevFx() {}

    private static int stage;
    private static long stageAt, lastT;
    private static float D = 1000;
    private static float beat;              // beat phase 0..1
    private static float agit;              // recent hits (decays)
    private static float vmax = 1e-3f, vbest, spd01, heat;
    private static final int WN = 14;       // wake rings
    private static final float[] wx = new float[WN], wy = new float[WN], wrot = new float[WN], wstr = new float[WN];
    private static final long[] wt = new long[WN];
    private static int wNext;
    private static long lastRing;
    private static final Vector2 a = new Vector2(), b = new Vector2();

    static final float BPM_IDLE = 40, BPM_WAR = 120;
    static final long RING_MS = 220, RING_LIFE = 1800;

    /** Flown Leviathan refit stage when 4+, else 0 (cached 1 s). */
    static int stageOf(PlayerShip ps) {
        long now = System.currentTimeMillis();
        if (now - stageAt > 1000 || stageAt == 0) {
            stageAt = now;
            int s = 0;
            try {
                if (ModLevDoom.is(ModCaps.profile(ps))) s = ModV35.stage(ModV35.level(ModV35.currentShip()));
            } catch (Throwable th) {
                s = 0;
            }
            stage = s >= 4 ? s : 0;
        }
        return stage;
    }

    /** ModLive.hit: a shot landed on the player (drum speeds up). */
    static void hit(PlayerShip ps, float dmg) {
        if (stage == 0) return;
        float hull = Math.max(1, ps.maxLife);
        agit = Math.min(1, agit + 0.25f + 2.0f * Math.min(0.3f, dmg / hull));
    }

    private static float str() {
        return stage >= 5 ? 1.0f : 0.5f;
    }

    private static void update(PlayerShip ps, long t) {
        float dt = lastT == 0 ? 0.016f : Math.max(0, Math.min(0.1f, (t - lastT) / 1000f));
        lastT = t;
        float spd = (float) Math.sqrt(ps.speed.x * ps.speed.x + ps.speed.y * ps.speed.y);
        if (!ps.isBoosterEnabled) {
            if (spd > 0.5f * vmax) vmax *= 1 - 0.02f * dt;
            vmax = Math.max(Math.max(vmax, spd), 0.5f * vbest);
            vbest = Math.max(vbest, spd);
        }
        spd01 = Math.min(1, spd / Math.max(vmax, 1e-3f));
        heat += (spd01 - heat) * Math.min(1, 3 * dt);
        agit *= (float) Math.exp(-dt / 2.5);
        float bpm = BPM_IDLE + (BPM_WAR - BPM_IDLE) * Math.min(1, agit * 1.5f);
        beat += dt * bpm / 60f;
        if (beat >= 1) beat -= 1;
        // wake rings spawn at the stern while moving
        if (spd01 > 0.12f && t - lastRing >= RING_MS) {
            lastRing = t;
            ModFx.local(ps.position, ps.spin, 0, D * 0.47f, a);
            wx[wNext] = a.x; wy[wNext] = a.y; wrot[wNext] = ps.spin; wstr[wNext] = spd01; wt[wNext] = t;
            wNext = (wNext + 1) % WN;
        }
    }

    // ------------------------------------------------------------------ #4 heavy wake (under the hull, world space)
    public static void under(PlayerShip ps) {
        if (stageOf(ps) == 0 || ps.isDocked || ps.removed) return;
        try {
            Drawable hd = ps.getDrawableObject();
            if (hd == null || hd.dimensions == null) return;
            D = hd.dimensions.x;
            long t = System.currentTimeMillis();
            update(ps, t);
            float s = str();
            for (int i = 0; i < WN; i++) {
                if (wt[i] == 0) continue;
                float age = (t - wt[i]) / (float) RING_LIFE;
                if (age >= 1) { wt[i] = 0; continue; }
                float grow = 0.35f + 1.1f * age, al = s * wstr[i] * 0.55f * (1 - age) * (1 - age);
                float w = D * grow, h = D * grow * 0.45f;
                // dark displacement trough with a cold rim
                ModFx.spr("fx_glow", wx[i], wy[i], w, h, wrot[i], 0, 0, 0, al * 0.7f, false);
                ModFx.spr("fx_glow", wx[i], wy[i], w * 1.15f, h * 1.15f, wrot[i], 0.45f, 0.7f, 1.0f, al * 0.35f, true);
            }
            if (heat > 0.15f) {   // bow-wave streaks peeling off both flanks
                float al = s * (heat - 0.15f) * 0.5f;
                for (int side = -1; side <= 1; side += 2) {
                    ModFx.local(ps.position, ps.spin, side * D * 0.36f, D * 0.1f, a);
                    ModFx.spr("fx_glow", a.x, a.y, D * 0.18f, D * 0.9f, ps.spin + side * 14, 0.5f, 0.75f, 1.0f, al, true);
                    ModFx.local(ps.position, ps.spin, side * D * 0.46f, D * 0.42f, a);
                    ModFx.spr("fx_glow", a.x, a.y, D * 0.14f, D * 0.7f, ps.spin + side * 22, 0.4f, 0.6f, 1.0f, al * 0.6f, true);
                }
            }
        } catch (Throwable th) {
            // visuals never break the ship
        }
    }

    // ------------------------------------------------------------------ #3 war-drum spine (over the hull, screen space)
    public static void over(PlayerShip ps) {
        if (stage == 0 || ps.isDocked || ps.removed) return;
        if (ModTitan.busy() || ModLevDoom.gauge) return;   // the doomsday sequence owns the spine
        try {
            float s = str();
            float ph = beat;                                  // 0..1 since the beat
            float pulse = (float) Math.exp(-ph * 4.5);        // sharp hit, quick decay
            float y0 = ModLevData.SPINE_Y0, y1 = ModLevData.SPINE_Y1;
            ModFx.relative = true;
            Texture tex = stage >= 5 ? ModArt.ready("leviathan_stage5_spine") : null;
            float r = 1.0f, g = 0.6f + 0.1f * agit, bl = 0.15f;
            if (tex != null) {
                // whole ridge breathes with the beat
                span(ps, tex, y0, y1, r, g, bl, s * (0.12f + 0.45f * pulse) * (0.6f + 0.4f * agit), true);
                // travelling pulse stern -> nose
                float yp = y1 - ph * (y1 - y0);
                span(ps, tex, Math.max(y0, yp - 40), Math.min(y1, yp + 40), 1.0f, 0.8f, 0.4f, s * 0.8f * (1 - ph * 0.5f), true);
            } else {
                float yp = y1 - ph * (y1 - y0);
                scr(ps, 512, yp, b);
                ModFx.spr("fx_glow", b.x, b.y, D * 0.07f, D * 0.07f, 0, r, g, bl, s * 0.6f * (1 - ph * 0.5f), true);
            }
            // prow flash on the hit
            scr(ps, ModLevData.CORE_X, ModLevData.CORE_Y + 40, b);
            ModFx.spr("fx_glow", b.x, b.y, D * 0.16f, D * 0.16f, 0, r, g, bl, s * 0.5f * pulse, true);
        } catch (Throwable th) {
            // visuals never break the ship
        } finally {
            ModFx.relative = false;
        }
    }

    private static float lx(float px) {
        return ((px + 0.5f) / 1024f - 0.5f) * D;
    }

    private static Vector2 scr(PlayerShip ps, float px, float py, Vector2 out) {
        Vector2 sc = GameRenderer.screenCenter;
        out.set(lx(px), lx(py)).applyRotatation(Math.toRadians(ps.spin));
        out.set(out.x + sc.x, out.y + sc.y);
        return out;
    }

    private static void span(PlayerShip ps, Texture tex, float ya, float yb, float r, float g, float bb, float al, boolean add) {
        if (yb - ya < 1 || al < 0.005f) return;
        scr(ps, 511.5f, (ya + yb) / 2 - 0.5f, b);
        ModFx.sprTex(tex, b.x, b.y, D, D * (yb - ya) / 1024f, ps.spin, r, g, bb, al, add, 0, ya / 1024f, 1, yb / 1024f);
    }
}
