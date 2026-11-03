package fr.testudo.spacecorsair.mod;

import fr.testudo.spacecorsair.business.Element;
import fr.testudo.spacecorsair.business.player.PlayerShip;
import fr.testudo.spacecorsair.business.projectiles.LaserBeam;
import fr.testudo.spacecorsair.business.projectiles.Projectile;
import fr.testudo.spacecorsair.display.Drawable;
import fr.testudo.spacecorsair.display.Texture;
import fr.testudo.spacecorsair.engine.GameRenderer;
import fr.testudo.spacecorsair.engine.GameThread;
import fr.testudo.spacecorsair.engine.ObjectRegistry;
import fr.testudo.spacecorsair.engine.Vector2;

/**
 * v39: Spartan Leviathan VFX #2, ANCHOR STANCE shield wall (preview leviathan-vfx/anchor.py; owner rules 2026-11-03 12:41).
 * - Passive stance: the titan plants itself after 2.5 s fully stopped (stage 4+; s4 = fainter visuals).
 * - Planted: no thrust. Trying to move (stick or booster) for 1.5 s lifts the anchor; the ship moves, the wall holds
 *   2.5 s more, then folds.
 * - The wall is a separate shield ahead of the bow (arc around the hull, +-48 deg): it stops enemy shots that cross it
 *   (covering the titan and anything behind it), takes 35% less damage, holds the equipped shield's capacity +50%.
 * - It recharges only while it is down: empty to full in 25 s. If it breaks the stance ends.
 * Timeline after the plant: 0-0.5 s clamps + stomp shockwave, 0.5-1.8 s wall unfolds centre-out from the two forward
 * pads, then hold (shimmer, hits flash a cell and ripple along the wall); fold 0.8 s edges -> centre.
 */
public final class ModAnchor {
    private ModAnchor() {}

    static final long STILL_MS = 2500, TRY_MS = 1500, HOLD_MS = 2500, FOLD_MS = 800, PLANT_MS = 500, DEPLOY_MS = 1300, REGEN_MS = 25000;
    static final float TAKEN = 0.65f, CAP_MUL = 1.5f;
    /** Lowest charge share that can plant (default: a quarter of the wall). */
    static final float MIN_PLANT = 0.25f;
    /** Speed below this (units per 10 ms; a bullet does 5) counts as fully stopped. */
    static final float STOP_SPEED = 0.05f;

    static final int IDLE = 0, PLANTED = 1, HOLDING = 2, FOLDING = 3;
    static int state = IDLE;
    private static long stillMs, tryMs, t, lastJ = 16;
    static float cap, cur = -1;            // wall capacity and charge (cur < 0 = not initialised: starts full)
    private static int stage;              // flown Leviathan stage (0 = not a Leviathan / stage < 4)
    private static long stageAt;
    private static float D = 1000;         // hull drawable size (sprite units -> world)
    private static int logs;

    // hits on the wall: local x on the wall (-1..1), time (ms since plant), strength
    private static final float[] hitU = new float[8], hitStr = new float[8], hitLX = new float[8], hitLY = new float[8];
    private static final long[] hitT = new long[8];
    private static int hitN;
    private static long brokeAt = -1;
    private static final float[] brokeFrac = {0};

    private static final Vector2 a = new Vector2(), b = new Vector2(), c = new Vector2();

    // ------------------------------------------------------------------ state (Mod tick, after ModTitan.tick)
    public static void tick(PlayerShip ps, long j) {
        lastJ = Math.max(1, Math.min(100, j));
        boolean map = ObjectRegistry.INSTANCE.game.mapMode;
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
        float newCap = ps.shield != null ? ps.shield.capacity * CAP_MUL : 0;
        if (newCap > 0) {
            if (cur < 0 || cap <= 0) cur = newCap;
            else if (newCap != cap) cur = cur / cap * newCap;   // shield swapped: keep the charge share
            cap = newCap;
        }
        if (stage == 0 || map || ps.isDocked || ps.removed || cap <= 0) {
            if (state != IDLE) end(ps, "off");
            stillMs = 0;
            if (cap > 0) cur = Math.min(cap, cur + cap * j / REGEN_MS);
            return;
        }
        boolean trying = trying(ps);
        switch (state) {
            case IDLE:
                cur = Math.min(cap, cur + cap * j / REGEN_MS);   // recharges only while the wall is down
                if (!trying && ps.speed.length() < STOP_SPEED) stillMs += j; else stillMs = 0;
                if (stillMs >= STILL_MS && cur >= cap * MIN_PLANT) plant(ps);
                break;
            case PLANTED:
                t += j;
                ModTitan.holdForce(ps);
                ps.speed.multiply((float) Math.pow(0.9, j / 16.0));
                if (trying) tryMs += j; else tryMs = 0;
                if (tryMs >= TRY_MS) lift(ps);
                break;
            case HOLDING:
                t += j;
                tryMs += j;
                if (tryMs >= HOLD_MS) { state = FOLDING; tryMs = 0; ModDev.ev("v39anchor", "fold"); }
                break;
            case FOLDING:
                t += j;
                if ((tryMs += j) >= FOLD_MS) { state = IDLE; stillMs = 0; tryMs = 0; ModDev.ev("v39anchor", "down charge " + pct()); }
                break;
            default:
                break;
        }
    }

    /** Stick held past the dead zone or the booster pressed (the planted hull has no thrust, so isPousee stays false). */
    private static boolean trying(PlayerShip ps) {
        if (ps.isBoosterEnabled) return true;
        GameThread gt = ObjectRegistry.INSTANCE.game.gameThread;
        return gt != null && gt.gazEventIndex >= 0 && ps.curPouseePourcentage > 5;
    }

    private static void plant(PlayerShip ps) {
        state = PLANTED;
        t = 0;
        tryMs = 0;
        hitN = 0;
        brokeAt = -1;
        ModTitan.holdForce(ps);
        ModQol.addShake(0.35f);
        ModSound.play("titan_blast", 0.45f, 0.6f, 1500);
        Mod.floatText(ps, ModLang.tr("ANCHORED"), 0.6f, 0.88f, 1.0f);
        ModDev.ev("v39anchor", "plant stage " + stage + " charge " + pct() + " cap " + Math.round(cap));
    }

    /** 1.5 s of trying to move: thrust back now, the wall holds 2.5 s more. */
    private static void lift(PlayerShip ps) {
        ModTitan.anchorRelease(ps);
        ps.curPouseeForce = ps.curPouseePourcentage * ps.maxPouseeForce / 100f;   // the held stick applies at once
        ps.isPousee = ps.curPouseeForce > 0 || ps.isBoosterEnabled;
        state = HOLDING;
        tryMs = 0;
        ModDev.ev("v39anchor", "lift t=" + t + " charge " + pct());
    }

    /** Stance over at once (broken wall, ship changed, map, docked). */
    private static void end(PlayerShip ps, String why) {
        if (ModTitan.anchorHold) ModTitan.anchorRelease(ps);
        state = IDLE;
        stillMs = 0;
        tryMs = 0;
        ModDev.ev("v39anchor", "end " + why);
    }

    private static int pct() {
        return cap > 0 ? Math.round(cur * 100 / cap) : 0;
    }

    /** Share of the wall standing, centre-out (0..1): unfolds 0.5-1.8 s after the plant, folds edges -> centre. */
    static float deployed() {
        switch (state) {
            case PLANTED: return Math.max(0, Math.min(1, (t - PLANT_MS) / (float) DEPLOY_MS));
            case HOLDING: return 1;
            case FOLDING: return 1 - Math.min(1, tryMs / (float) FOLD_MS);
            default: return 0;
        }
    }

    // ------------------------------------------------------------------ shots
    /**
     * ModLive.draw, every projectile every frame: an enemy shot that crossed the wall this frame is stopped there
     * (lifetime 0) and its damage goes to the wall.
     */
    public static void projectile(Projectile p) {
        try {
            if (state == IDLE || p.lifeTimeInMilli <= 0 || p instanceof LaserBeam || !enemyShot(p)) return;
            PlayerShip ps = ObjectRegistry.INSTANCE.playerShip;
            if (ps == null) return;
            float dt = lastJ / 10f;
            if (cross(ps, p.position.x - p.speed.x * dt, p.position.y - p.speed.y * dt, p.position.x, p.position.y)) {
                p.lifeTimeInMilli = 0;
                absorb(ps, p);
            }
        } catch (Throwable th) {
            // the wall never breaks the frame
        }
    }

    /**
     * ModLive.hit, before anything else: beams (instant hits, no flight to intercept) on the player or a friendly ship
     * are stopped when the line from the shooter crosses the wall. Returns the damage left for the target.
     */
    public static float beam(Element target, float dmg, Projectile p) {
        try {
            if (state == IDLE || !(p instanceof LaserBeam) || !enemyShot(p) || dmg <= 0) return dmg;
            if (!target.isPlayer && ModV35.standing(target) != 1) return dmg;
            PlayerShip ps = ObjectRegistry.INSTANCE.playerShip;
            if (ps == null) return dmg;
            if (cross(ps, p.sender.position.x, p.sender.position.y, p.position.x, p.position.y)) {
                absorb(ps, p);
                return 0;
            }
        } catch (Throwable th) {
            // fall through
        }
        return dmg;
    }

    private static boolean enemyShot(Projectile p) {
        Element s = p.sender;
        return s != null && !s.isPlayer && !s.removed && ModV35.standing(s) != 1;
    }

    private static float crossLX, crossLY;   // last crossing point, hull-sprite units (1024 = hull)

    /** Segment (x1,y1) -> (x2,y2) enters the wall arc within the standing (deployed) span. */
    private static boolean cross(PlayerShip ps, float x1, float y1, float x2, float y2) {
        float k = 1024f / D;
        double rad = Math.toRadians(ps.spin), cs = Math.cos(rad), sn = Math.sin(rad);
        // world -> hull-local (inverse of Vector2.applyRotatation), in sprite units, +y = stern
        float ax = (x1 - ps.position.x), ay = (y1 - ps.position.y), bx = (x2 - ps.position.x), by = (y2 - ps.position.y);
        float lax = (float) ((ax * cs + ay * sn) * k), lay = (float) ((-ax * sn + ay * cs) * k);
        float lbx = (float) ((bx * cs + by * sn) * k), lby = (float) ((-bx * sn + by * cs) * k);
        float R = ModAnchorData.R;
        float dx = lbx - lax, dy = lby - lay;
        float qa = dx * dx + dy * dy, qb = 2 * (lax * dx + lay * dy), qc = lax * lax + lay * lay - R * R;
        if (qc <= 0 || qa < 1e-6f) return false;   // starts inside the arc: not coming through the wall
        float disc = qb * qb - 4 * qa * qc;
        if (disc < 0) return false;
        float tt = (float) ((-qb - Math.sqrt(disc)) / (2 * qa));
        if (tt < 0 || tt > 1) return false;
        float ex = lax + dx * tt, ey = lay + dy * tt;
        float ang = (float) Math.toDegrees(Math.atan2(ex, -ey));
        if (Math.abs(ang) > ModAnchorData.SPAN_DEG * deployed()) return false;
        crossLX = ex;
        crossLY = ey;
        return true;
    }

    private static void absorb(PlayerShip ps, Projectile p) {
        float dmg = ModV34.wallDamage(ps, p) * TAKEN;
        cur -= dmg;
        float u = (float) (Math.toDegrees(Math.atan2(crossLX, -crossLY)) / ModAnchorData.SPAN_DEG);
        int i = hitN++ % 8;
        hitU[i] = u; hitT[i] = t; hitStr[i] = Math.min(1, 0.35f + dmg / Math.max(1, cap) * 12); hitLX[i] = crossLX; hitLY[i] = crossLY;
        if (logs < 12) { logs++; ModDev.ev("v39anchor", "absorbed " + Math.round(dmg) + " left " + Math.round(Math.max(0, cur)) + "/" + Math.round(cap) + " u " + Math.round(u * 100)); }
        if (cur <= 0) {
            cur = 0;
            brokeAt = System.currentTimeMillis();
            brokeFrac[0] = deployed();
            ModSound.play("shield_down", 0.8f, 0.8f, 1000);
            Mod.floatText(ps, ModLang.tr("WALL DOWN"), 1.0f, 0.5f, 0.3f);
            end(ps, "broken");
        }
    }

    // ------------------------------------------------------------------ drawing (ModCaps.drawOver, after the doomsday)
    private static final float[] ICE = {0.72f, 0.9f, 1.0f}, LOW = {1.0f, 0.55f, 0.3f};

    public static void drawOver(PlayerShip ps) {
        boolean shatter = brokeAt > 0 && System.currentTimeMillis() - brokeAt < 700;
        if ((state == IDLE && !shatter) || stage == 0) return;
        Drawable hd = ps.getDrawableObject();
        if (hd == null || hd.dimensions == null) return;
        D = hd.dimensions.x;
        float str = stage >= 5 ? 1.0f : 0.5f;    // owner rule: s4 = a fainter s5
        ModFx.relative = true;
        try {
            if (shatter) { shatter(ps, str, (System.currentTimeMillis() - brokeAt) / 700f); return; }
            float ts = t / 1000f;
            if (state == PLANTED && t < PLANT_MS + 300) plantFx(ps, str, ts);
            float dep = deployed();
            if (dep <= 0.001f) return;
            emitters(ps, str, dep, ts);
            wall(ps, str, dep, ts);
            hits(ps, str);
        } catch (Throwable th) {
            // visuals never break the frame
        } finally {
            ModFx.relative = false;
        }
    }

    /** Hull-local sprite units -> screen-relative position. */
    private static Vector2 scr(PlayerShip ps, float lx, float ly, Vector2 out) {
        Vector2 sc = GameRenderer.screenCenter;
        out.set(lx * D / 1024f, ly * D / 1024f).applyRotatation(Math.toRadians(ps.spin));
        out.set(out.x + sc.x, out.y + sc.y);
        return out;
    }

    private static float pad(int i) {   // forward pads, 1024 px sprite: s5 (375|647, 448), s4 (401|620, 335)
        return stage >= 5 ? (i == 0 ? 375 : 647) : (i == 0 ? 401 : 620);
    }

    private static float padY() {
        return stage >= 5 ? 448 : 335;
    }

    /** Plant: clamps lock on the ring cage (s5 art), heavy stomp shockwave + pressure ring. */
    private static void plantFx(PlayerShip ps, float str, float ts) {
        Vector2 sc = GameRenderer.screenCenter;
        float f = Math.min(1, ts / 0.8f);
        float rr = D * (0.3f + 1.1f * f);
        ModFx.spr("fx_shock", sc.x, sc.y, rr * 2, rr * 2, 0, ICE[0], ICE[1], ICE[2], 0.8f * str * (1 - f), true);
        float r2 = D * (0.25f + 0.6f * f);
        ModFx.spr("fx_shock", sc.x, sc.y, r2 * 2, r2 * 2, 0, 1.0f, 0.85f, 0.55f, 0.5f * str * (1 - f), true);
        Texture tex = stage >= 5 ? ModArt.ready("leviathan_stage5_ringseg") : null;
        if (tex == null) return;
        for (int k = 0; k < 16; k++) {
            float x0 = ModLevData.SEG_BOX[4 * k], y0 = ModLevData.SEG_BOX[4 * k + 1], x1 = ModLevData.SEG_BOX[4 * k + 2], y1 = ModLevData.SEG_BOX[4 * k + 3];
            if (x1 <= x0) continue;
            float on = ts * 32 - k;   // all 16 clamps lock within 0.5 s
            if (on < 0) continue;
            float fl = (float) Math.exp(-on * 0.5f);
            float u0 = (k % 4) * 0.25f, v0 = (k / 4) * 0.25f;
            scr(ps, (x0 + x1) / 2 - 512, (y0 + y1) / 2 - 512, b);
            ModFx.sprTex(tex, b.x, b.y, D * (x1 - x0) / 1024f, D * (y1 - y0) / 1024f, ps.spin, 0.8f + 0.2f * fl, 0.9f + 0.1f * fl, 1, (0.3f + 0.6f * fl) * str * (1 - Math.max(0, ts - 0.5f) / 0.3f), true,
                u0, v0, u0 + ModLevData.SEG_UV[2 * k], v0 + ModLevData.SEG_UV[2 * k + 1]);
        }
    }

    /** Emitter pads glow and fan thin projector beams up to the wall. */
    private static void emitters(PlayerShip ps, float str, float dep, float ts) {
        float py = padY() - 512, R = ModAnchorData.R;
        for (int i = 0; i < 2; i++) {
            float px = pad(i) - 512;
            scr(ps, px, py, a);
            float pulse = 0.8f + 0.2f * (float) Math.sin(ts * 9 + i);
            ModFx.spr("fx_glow", a.x, a.y, D * 0.09f, D * 0.09f, 0, ICE[0], ICE[1], ICE[2], 0.9f * str * pulse, true);
            ModFx.spr("fx_core", a.x, a.y, D * 0.035f, D * 0.035f, 0, 1, 1, 1, 0.9f * str, true);
            for (int n = 0; n < 7; n++) {   // each pad feeds its own half of the arc
                float u = (i == 0 ? -1 : 1) * (n + 0.5f) / 7f * dep;
                double th = Math.toRadians(u * ModAnchorData.SPAN_DEG);
                scr(ps, (float) (R * Math.sin(th)), (float) (-R * Math.cos(th)) + ModAnchorData.TH / 2, b);
                ModFx.strip("fx_glow", a.x, a.y, b.x, b.y, D * 0.004f, ICE[0], ICE[1], ICE[2], 0.22f * str, true);
            }
        }
    }

    private static final int SLICES = 14;

    /** The arc in 14 vertical slices (centre-out deploy / fold, per-slice shimmer, flash ripples, dropouts while lifting). */
    private static void wall(PlayerShip ps, float str, float dep, float ts) {
        Texture tex = ModArt.ready("lev_anchor_wall");
        if (tex == null) return;
        float W = ModAnchorData.W, H = ModAnchorData.H;
        float cy = ModAnchorData.Y_TOP + H / 2;
        float frac = cap > 0 ? cur / cap : 0;
        float low = Math.max(0, Math.min(1, (0.3f - frac) / 0.3f));   // nearly empty: warmer and flickering
        float lift = state == HOLDING ? Math.min(1, tryMs / (float) HOLD_MS) : state == FOLDING ? 1 : 0;
        for (int k = 0; k < SLICES; k++) {
            float u0 = k / (float) SLICES, u1 = (k + 1) / (float) SLICES;
            float uc = (u0 + u1) - 1;                 // -1..1 across the texture
            float need = Math.abs(uc);
            if (need > dep + 0.07f) continue;
            float edge = Math.max(0, Math.min(1, (dep + 0.07f - need) / 0.14f));
            float sh = 0.55f + 0.15f * (float) Math.sin(ts * 3.1f + k * 0.9f) + 0.1f * (float) Math.sin(ts * 7.3f - k * 1.7f);
            float al = str * edge * sh * (0.6f + 0.4f * frac);
            if (low > 0 && Math.random() < 0.25f * low) al *= 0.3f;
            if (lift > 0 && Math.random() < 0.06f + 0.3f * lift) al *= 0.15f;   // cell dropouts build while the wall outlasts the anchor
            float fl = flash(uc, ts);
            float r = ICE[0] + (LOW[0] - ICE[0]) * low, g = ICE[1] + (LOW[1] - ICE[1]) * low, bb = ICE[2] + (LOW[2] - ICE[2]) * low;
            scr(ps, (u0 + u1) / 2 * W - W / 2, cy, b);
            float w = W / SLICES * D / 1024f * 1.002f;
            ModFx.sprTex(tex, b.x, b.y, w, H * D / 1024f, ps.spin, r, g, bb, Math.min(1, al + 0.8f * fl * str), true, u0, 0, u1, 1);
        }
    }

    /** Ripples running both ways along the wall from each hit (1.6 wall-widths a second, fading in 0.7 s). */
    private static float flash(float uc, float ts) {
        float f = 0;
        int n = Math.min(hitN, 8);
        for (int i = 0; i < n; i++) {
            float age = (t - hitT[i]) / 1000f;
            if (age < 0 || age > 0.7f) continue;
            float d = Math.abs(uc - hitU[i]) - age * 1.6f;
            f += hitStr[i] * (1 - age / 0.7f) * (float) Math.exp(-d * d / 0.02f);
        }
        return Math.min(1, f);
    }

    /** Impact: a bright hex cell and a small flare where the shot met the wall. */
    private static void hits(PlayerShip ps, float str) {
        int n = Math.min(hitN, 8);
        for (int i = 0; i < n; i++) {
            float age = (t - hitT[i]) / 1000f;
            if (age < 0 || age > 0.35f) continue;
            float f = 1 - age / 0.35f;
            scr(ps, hitLX[i], hitLY[i], a);
            float s = D * (0.05f + 0.04f * hitStr[i]);
            ModFx.spr("fx_hex", a.x, a.y, s, s, ps.spin, 1, 1, 1, f * str, true);
            ModFx.spr("fx_glow", a.x, a.y, s * 2.2f, s * 2.2f, 0, ICE[0], ICE[1], ICE[2], 0.7f * f * str, true);
        }
    }

    /** Wall broken: the arc bursts into fading shards. */
    private static void shatter(PlayerShip ps, float str, float f) {
        float R = ModAnchorData.R;
        for (int n = 0; n < 12; n++) {
            float u = (n / 11f * 2 - 1) * brokeFrac[0];
            double th = Math.toRadians(u * ModAnchorData.SPAN_DEG);
            float rr = R + f * 120 * (0.6f + 0.4f * (float) Math.sin(n * 2.3f));
            scr(ps, (float) (rr * Math.sin(th)), (float) (-rr * Math.cos(th)), a);
            ModFx.spr("fx_hex", a.x, a.y, D * 0.05f, D * 0.05f, ps.spin + n * 37 + f * 90, LOW[0], LOW[1], LOW[2], (1 - f) * str, true);
            ModFx.spr("fx_glow", a.x, a.y, D * 0.08f, D * 0.08f, 0, ICE[0], ICE[1], ICE[2], 0.5f * (1 - f) * str, true);
        }
    }

    /** ModDev test switch: wall charge share (0..1) for the emulator log. */
    static float charge() {
        return cap > 0 ? cur / cap : 0;
    }
}
