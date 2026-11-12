package fr.testudo.spacecorsair.mod;

import fr.testudo.spacecorsair.business.player.PlayerShip;
import fr.testudo.spacecorsair.engine.Vector2;
import fr.testudo.spacecorsair.display.Drawable;
import fr.testudo.spacecorsair.engine.GameRenderer;

/**
 * v43a-2 (owner idea 2026-11-02 18:25): Mantis and Verdant at refit stage 5 open their rear wing blades a little while
 * moving, a much smaller version of the Monolith s5 wings (ModMonolith). The s5 sprite is split by src/genwings47.py into
 * <art>_stage5_hull (drawn as the player hull by ModV35.playerArt, with its own glow masks) and <art>_stage5_wingL/R
 * (drawn here under the hull, rotated about a pivot on the cut line). Same speed model as the Monolith: open with speed
 * (fully open at 60% of the calibrated top speed), damped spring, fold only 2.5 s after a full stop. Player (under) and,
 * since the v43a-2 audit, enemy Mantis/Verdant s5 (enemySkin + underEnemy, per-enemy state). A draw gap over 1 s (sector
 * jump, pause, menu) resets the spring so the wings start closed.
 */
public final class ModWings {
    private ModWings() {}

    static final float MAX_ANG = 12, X_OPEN = 0.6f, HOLD_MS = 2500;
    static final String[] ARTS = {"mantis", "verdant"};
    /** Pivot of the LEFT wing in 1024 px (forward end of the cut line in genwings47.py); the right wing mirrors it. */
    static final float[][] PIVOT = {{236, 600}, {178, 540}};

    private static int cur = -1;              // ARTS index being drawn, -1 = none
    private static long lastT;
    private static float vmax = 1e-3f, vbest;
    private static final float[] hist = new float[26];
    private static int histPos;
    private static long histT;
    private static float held, peak, ang, vel;
    private static long stoppedSince = -1;
    private static float D;
    private static final Vector2 a = new Vector2(), b = new Vector2();

    static int artIndex(String art) {
        for (int i = 0; i < ARTS.length; i++) if (ARTS[i].equals(art)) return i;
        return -1;
    }

    /** The s5 parts ship for this art (ModV35.playerArt then draws the hull part). */
    static boolean useParts(String art, int s) {
        return s == 5 && artIndex(art) >= 0 && ModV35.art(art + "_stage5_hull") && ModV35.art(art + "_stage5_wingL") && ModV35.art(art + "_stage5_wingR");
    }

    private static int indexOf(PlayerShip ps) {
        try {
            ModShips.Hull h = ModShips.hullFor(ps.shipSpec);
            if (h == null) return -1;
            int s = ModV35.stage(ModV35.level(ModV35.currentShip()));
            return useParts(h.art, s) ? artIndex(h.art) : -1;
        } catch (Throwable t) {
            return -1;
        }
    }

    private static void reset() {
        lastT = 0;
        vmax = 1e-3f;
        vbest = 0;
        for (int i = 0; i < hist.length; i++) hist[i] = 0;
        held = peak = ang = vel = 0;
        stoppedSince = -1;
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
        float target = MAX_ANG * (float) Math.pow(Math.min(peak / X_OPEN, 1), 0.7);
        vel += (target - ang) * 0.18f * kf * kf;
        vel *= (float) Math.pow(0.72, kf);
        ang += vel;
        ang = Math.max(-1, Math.min(MAX_ANG + 2, ang));
    }

    private static float lx(float px) { return ((px + 0.5f) / 1024f - 0.5f) * D; }

    /** Wing sprite centre (512,512) rotated by deg about the wing pivot -> ship-local offset. */
    private static Vector2 wingPt(boolean left, float deg, Vector2 out) {
        float pvx = left ? PIVOT[cur][0] : 1023 - PIVOT[cur][0], pvy = PIVOT[cur][1];
        out.set(512 - pvx, 512 - pvy).applyRotatation(Math.toRadians(left ? deg : -deg));
        out.set(lx(out.x + pvx), lx(out.y + pvy));
        return out;
    }

    /** ModCaps.drawUnder (before the hull): the two rear wings, rotated open with speed. */
    public static void under(PlayerShip ps) {
        try {
            int i = indexOf(ps);
            if (i < 0) {
                if (cur >= 0) reset();
                cur = -1;
                return;
            }
            if (i != cur) reset();
            cur = i;
            long t = System.currentTimeMillis();
            if (lastT != 0 && t - lastT > 1000) reset();   // sector jump / pause: start closed
            update(ps, t);
            Drawable hd = ps.getDrawableObject();
            if (hd == null || hd.dimensions == null) return;
            D = hd.dimensions.x;
            float wdeg = ang + 0.6f * (float) Math.sin(t / 450.0) * Math.min(ang / MAX_ANG, 1);
            Vector2 sc = GameRenderer.screenCenter;
            ModFx.relative = true;
            try {
                for (int w = 0; w < 2; w++) {
                    boolean left = w == 0;
                    String n = ARTS[cur] + (left ? "_stage5_wingL" : "_stage5_wingR");
                    wingPt(left, wdeg, a);
                    b.set(a.x, a.y).applyRotatation(Math.toRadians(ps.spin));
                    float x = b.x + sc.x, y = b.y + sc.y;
                    float rot = ps.spin + (left ? wdeg : -wdeg);
                    ModFx.sprR(n, x, y, D, D, rot, 1, 1, 1, 1, false);
                    if (ModV35.art(n + "_glow_l")) ModFx.sprR(n + "_glow_l", x, y, D, D, rot, 1, 1, 1, 0.55f + 0.25f * (float) Math.sin(t / 700.0), true);
                }
            } finally {
                ModFx.relative = false;
            }
        } catch (Throwable th) {
            ModFx.relative = false;
        }
    }
    // ------------------------------------------------------------------ v43a-2 audit: enemies too (every Mantis/Verdant s5)
    /** Enemy -> ARTS index, set by enemySkin when the hull part replaces the s5 sprite. */
    private static final java.util.WeakHashMap<fr.testudo.spacecorsair.business.Element, Integer> ENEMY = new java.util.WeakHashMap<fr.testudo.spacecorsair.business.Element, Integer>();
    /** Per enemy: 0 vmax, 1 ang, 2 vel, 3 peak, 4 last ms, 5 stopped-since ms (-1 moving). */
    private static final java.util.WeakHashMap<fr.testudo.spacecorsair.business.Element, double[]> EST = new java.util.WeakHashMap<fr.testudo.spacecorsair.business.Element, double[]>();

    /** ModV35.skin: <art>_stage5 -> <art>_stage5_hull when the wing parts ship, and remembers the enemy for underEnemy. */
    static String enemySkin(fr.testudo.spacecorsair.business.Element e, String n) {
        for (int i = 0; i < ARTS.length; i++) {
            if (n.equals(ARTS[i] + "_stage5") && useParts(ARTS[i], 5)) {
                ENEMY.put(e, i);
                return ARTS[i] + "_stage5_hull";
            }
        }
        ENEMY.remove(e);
        return n;
    }

    /** ModLive.draw (before the enemy hull is queued): the two rear wings, opened by the enemy's own speed. */
    public static void underEnemy(fr.testudo.spacecorsair.business.Element e) {
        try {
            Integer idx = ENEMY.get(e);
            if (idx == null || e.removed || e.speed == null) return;
            Drawable hd = e.getDrawableObject();
            if (hd == null || hd.dimensions == null) return;
            double[] st = EST.get(e);
            if (st != null && st[4] != 0 && System.currentTimeMillis() - st[4] > 1000) st = null;   // off screen / jump: start closed
            if (st == null) { st = new double[]{1e-3, 0, 0, 0, 0, -1}; EST.put(e, st); }
            long t = System.currentTimeMillis();
            double dt = st[4] == 0 ? 0.016 : Math.max(0, Math.min(0.1, (t - st[4]) / 1000.0));
            st[4] = t;
            double spd = Math.sqrt(e.speed.x * e.speed.x + e.speed.y * e.speed.y);
            if (spd > 0.5 * st[0]) st[0] *= 1 - 0.02 * dt;
            st[0] = Math.max(st[0], spd);
            double v = Math.min(1, spd / Math.max(st[0], 1e-3));
            if (v < 0.02) { if (st[5] < 0) st[5] = t; } else st[5] = -1;
            st[3] = st[5] >= 0 && t - st[5] >= HOLD_MS ? 0 : Math.max(st[3] * Math.pow(0.5, dt / 2.5), v);
            double kf = dt * 12;
            double target = MAX_ANG * Math.pow(Math.min(st[3] / X_OPEN, 1), 0.7);
            st[2] += (target - st[1]) * 0.18 * kf * kf;
            st[2] *= Math.pow(0.72, kf);
            st[1] = Math.max(-1, Math.min(MAX_ANG + 2, st[1] + st[2]));
            int keep = cur;
            float keepD = D;
            cur = idx;
            D = hd.dimensions.x;
            float wdeg = (float) st[1];
            try {
                for (int w = 0; w < 2; w++) {
                    boolean left = w == 0;
                    String n = ARTS[cur] + (left ? "_stage5_wingL" : "_stage5_wingR");
                    wingPt(left, wdeg, a);
                    b.set(a.x, a.y).applyRotatation(Math.toRadians(e.spin));
                    float x = b.x + e.position.x, y = b.y + e.position.y;
                    float rot = e.spin + (left ? wdeg : -wdeg);
                    ModFx.sprR(n, x, y, D, D, rot, 1, 1, 1, 1, false);
                    if (ModV35.art(n + "_glow_l")) ModFx.sprR(n + "_glow_l", x, y, D, D, rot, 1, 1, 1, 0.6f, true);
                }
            } finally {
                cur = keep;
                D = keepD;
            }
        } catch (Throwable th) {
            // visuals never break the frame
        }
    }
}
