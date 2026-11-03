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
    /** Owner 2026-11-03 14:35: while the doomsday charges and fires, the wall takes 50% less instead of 35%. */
    static final float TAKEN_DOOM = 0.5f;
    static final long BREAK_MS = 900;
    /** Speed below this (units per 10 ms; a bullet does 5) counts as fully stopped. */
    static final float STOP_SPEED = 0.05f;

    static final int IDLE = 0, PLANTED = 1, HOLDING = 2, FOLDING = 3;
    static int state = IDLE;
    private static long stillMs, tryMs, t, lastJ = 16;
    static float cap, cur = -1, share = 1;            // wall capacity and charge (cur < 0 = not initialised: starts full)
    private static int stage;              // flown Leviathan stage (0 = not a Leviathan / stage < 4)
    private static long stageAt;
    private static float D = 1000;         // hull drawable size (sprite units -> world)
    private static int logs;
    private static boolean logMove;

    // hits on the wall: local x on the wall (-1..1), time (ms since plant), strength
    private static final float[] hitU = new float[8], hitStr = new float[8], hitLX = new float[8], hitLY = new float[8];
    private static final long[] hitT = new long[8];
    private static final boolean[] hitSparked = new boolean[8];
    private static int hitN;
    private static long brokeAt = -1;
    private static final float[] brokeFrac = {0};

    private static final Vector2 a = new Vector2(), b = new Vector2(), c = new Vector2();
    // per-wedge dent spring (hull-sprite units, + = pushed in) and a hit glow that decays
    private static final int NS = ModAnchorData.NSEG;
    private static final float[] dent = new float[NS], dentV = new float[NS], glowSeg = new float[NS];
    private static float agit;                 // rapid hits: faster shimmer, brighter rim (decays)
    private static long fullAt = -1;           // the down wall finished recharging (ready flash)
    private static long regenMs;               // time spent recharging (pulse clock)

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
            if (cur < 0) cur = newCap;                         // first flight: full
            else if (cap <= 0) cur = share * newCap;            // shield re-equipped: the share it had (no free refill)
            else if (newCap != cap) cur = cur / cap * newCap;   // shield swapped: keep the charge share
            cap = newCap;
        } else {
            if (cap > 0) share = cur / cap;
            cap = 0;   // no shield equipped: no wall
        }
        if (stage == 0 || map || ps.isDocked || ps.removed || cap <= 0) {
            if (state != IDLE) end(ps, "off");
            stillMs = 0;
            if (cap > 0) cur = Math.min(cap, cur + cap * j / REGEN_MS);
            return;
        }
        boolean trying = trying(ps);
        springs(j);
        switch (state) {
            case IDLE:
                if (cur < cap) {
                    regenMs += j;
                    cur = Math.min(cap, cur + cap * j / REGEN_MS);   // recharges only while the wall is down
                    if (cur >= cap) { fullAt = now; ModDev.ev("v39anchor", "recharged"); }
                }
                if (logMove && trying && !ModTitan.busy()) {   // test evidence: thrust is back
                    logMove = false;
                    ModDev.ev("v39anchor", "moving force " + Math.round(ps.maxPouseeForce) + " speed " + ps.speed.length());
                }
                if (!trying && ps.speed.length() < STOP_SPEED) stillMs += j; else stillMs = 0;
                if (stillMs >= STILL_MS && cur > 0) plant(ps);
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
        logMove = true;
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

    /** Dents spring back (slightly underdamped), hit glows and agitation fade. */
    private static void springs(long j) {
        float k = j / 16f;
        for (int i = 0; i < NS; i++) {
            dentV[i] += -dent[i] * 0.22f * k;
            dentV[i] *= (float) Math.pow(0.78, k);
            dent[i] += dentV[i] * k;
            glowSeg[i] *= (float) Math.pow(0.9, k);
        }
        agit *= (float) Math.pow(0.97, k);
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
                absorb(ps, p, p.damage);
                // the game drops an expired shot on its next physics step: until then it carries no damage and no decal
                p.lifeTimeInMilli = 0;
                p.damage = 0;
                p.ignoreImactDecalOnTarget = true;
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
            if (cross(ps, p.sender.position.x, p.sender.position.y, target.position.x, target.position.y)) {
                absorb(ps, p, dmg);   // the beam's own per-hit amount
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

    private static void absorb(PlayerShip ps, Projectile p, float raw) {
        float dmg = ModV34.wallDamage(ps, p, raw) * (ModTitan.busy() ? TAKEN_DOOM : TAKEN);
        cur -= dmg;
        float u = (float) (Math.toDegrees(Math.atan2(crossLX, -crossLY)) / ModAnchorData.SPAN_DEG);
        // the struck wedge dents in and glows; its neighbours feel it less
        float sev = Math.min(1, 0.3f + dmg / Math.max(1, cap) * 10);
        int sg = Math.max(0, Math.min(NS - 1, (int) ((u + 1) / 2 * NS)));
        for (int d = -2; d <= 2; d++) {
            int q = sg + d;
            if (q < 0 || q >= NS) continue;
            float f = d == 0 ? 1 : Math.abs(d) == 1 ? 0.45f : 0.15f;
            dentV[q] += 9 * sev * f;
            glowSeg[q] = Math.min(1.5f, glowSeg[q] + sev * f);
        }
        agit = Math.min(1, agit + 0.12f + sev * 0.2f);
        int i = hitN++ % 8;
        hitU[i] = u; hitT[i] = t; hitSparked[i] = false; hitStr[i] = Math.min(1, 0.35f + dmg / Math.max(1, cap) * 12); hitLX[i] = crossLX; hitLY[i] = crossLY;
        if (logs < 80) { logs++; ModDev.ev("v39anchor", "absorbed " + Math.round(dmg) + " left " + Math.round(Math.max(0, cur)) + "/" + Math.round(cap) + " u " + Math.round(u * 100)); }
        if (cur <= 0) {
            cur = 0;
            brokeAt = System.currentTimeMillis();
            brokeFrac[0] = Math.max(0.05f, deployed());
            ModQol.addShake(0.25f);
            ModSound.play("shield_down", 0.8f, 0.8f, 1000);
            Mod.floatText(ps, ModLang.tr("WALL DOWN"), 1.0f, 0.5f, 0.3f);
            end(ps, "broken");
        }
    }

    // ------------------------------------------------------------------ drawing (ModCaps.drawOver, after the doomsday)
    private static final float[] ICE = {0.72f, 0.9f, 1.0f}, LOW = {1.0f, 0.55f, 0.3f}, HOTW = {1.0f, 0.95f, 0.85f};

    public static void drawOver(PlayerShip ps) {
        long now = System.currentTimeMillis();
        boolean shatter = brokeAt > 0 && now - brokeAt < BREAK_MS;
        boolean regen = state == IDLE && cap > 0 && (cur < cap || (fullAt > 0 && now - fullAt < 700));
        if ((state == IDLE && !shatter && !regen) || stage == 0 || ObjectRegistry.INSTANCE.game.mapMode) return;
        Drawable hd = ps.getDrawableObject();
        if (hd == null || hd.dimensions == null) return;
        D = hd.dimensions.x;
        float str = stage >= 5 ? 1.0f : 0.5f;    // owner rule: s4 = a fainter s5
        ModFx.relative = true;
        try {
            if (shatter) shatter(ps, str, (now - brokeAt) / (float) BREAK_MS);
            if (state == IDLE) {
                if (!shatter) recharge(ps, str, now);
                return;
            }
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

    /** Point on the wall arc at angle deg (0 = prow, + = starboard), radius r (hull-sprite units). */
    private static Vector2 arcAt(PlayerShip ps, float deg, float r, Vector2 out) {
        double t_ = Math.toRadians(deg);
        return scr(ps, (float) (r * Math.sin(t_)), (float) (-r * Math.cos(t_)), out);
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

    /** Emitter pads glow and fan thin projector beams to the standing wedges. */
    private static void emitters(PlayerShip ps, float str, float dep, float ts) {
        float py = padY() - 512, R = ModAnchorData.R;
        for (int i = 0; i < 2; i++) {
            float px = pad(i) - 512;
            scr(ps, px, py, a);
            float pulse = 0.8f + 0.2f * (float) Math.sin(ts * (9 + 8 * agit) + i);
            ModFx.spr("fx_glow", a.x, a.y, D * 0.09f, D * 0.09f, 0, ICE[0], ICE[1], ICE[2], 0.9f * str * pulse, true);
            ModFx.spr("fx_core", a.x, a.y, D * 0.035f, D * 0.035f, 0, 1, 1, 1, 0.9f * str, true);
            for (int n = 0; n < NS / 2; n++) {   // each pad feeds its own half of the arc
                int k = i == 0 ? NS / 2 - 1 - n : NS / 2 + n;
                float deg = segDeg(k);
                if (Math.abs(deg) > ModAnchorData.SPAN_DEG * dep) continue;
                arcAt(ps, deg, R - ModAnchorData.TH / 2 - dent[k], b);
                ModFx.strip("fx_glow", a.x, a.y, b.x, b.y, D * 0.004f, ICE[0], ICE[1], ICE[2], (0.16f + 0.3f * Math.min(1, glowSeg[k])) * str, true);
            }
        }
    }

    private static float segDeg(int k) {
        return -ModAnchorData.SPAN_DEG + ModAnchorData.SEG_DEG * (k + 0.5f);
    }

    /**
     * The 240-degree arc as 16 rotated wedges: centre-out deploy / fold, shimmer that quickens under fire, dents that spring
     * back, hit glow + ripple, warmer and flickering when nearly empty, cell dropouts while it outlasts the anchor.
     */
    private static void wall(PlayerShip ps, float str, float dep, float ts) {
        Texture seg = ModArt.ready("lev_anchor_seg"), end = ModArt.ready("lev_anchor_end");
        if (seg == null || end == null) return;
        float W = ModAnchorData.W, H = ModAnchorData.H, cy = ModAnchorData.Y_TOP + H / 2;
        float frac = cap > 0 ? cur / cap : 0;
        float low = Math.max(0, Math.min(1, (0.3f - frac) / 0.3f));
        float lift = state == HOLDING ? Math.min(1, tryMs / (float) HOLD_MS) : state == FOLDING ? 1 : 0;
        float sp = 3.1f + 6 * agit;
        for (int k = 0; k < NS; k++) {
            float deg = segDeg(k);
            float need = Math.abs(deg) / ModAnchorData.SPAN_DEG;
            if (need > dep + 0.07f) continue;
            float edge = Math.max(0, Math.min(1, (dep + 0.07f - need) / 0.14f));
            float sh = 0.55f + 0.15f * (float) Math.sin(ts * sp + k * 0.9f) + 0.1f * (float) Math.sin(ts * (7.3f + 4 * agit) - k * 1.7f);
            float al = str * edge * sh * (0.6f + 0.4f * frac) * (1 + 0.35f * agit);
            if (low > 0 && Math.random() < 0.25f * low) al *= 0.3f;
            if (lift > 0 && Math.random() < 0.06f + 0.3f * lift) al *= 0.15f;
            float fl = Math.min(1, flash(deg / ModAnchorData.SPAN_DEG, ts) + 0.7f * glowSeg[k]);
            float r = ICE[0] + (LOW[0] - ICE[0]) * low, g = ICE[1] + (LOW[1] - ICE[1]) * low, bb = ICE[2] + (LOW[2] - ICE[2]) * low;
            r += (HOTW[0] - r) * fl; g += (HOTW[1] - g) * fl; bb += (HOTW[2] - bb) * fl;   // struck wedges flash white-hot
            float rr = -cy - dent[k];                     // centre radius of the wedge texture, pushed in by the dent
            arcAt(ps, deg, rr, b);
            boolean isEnd = k == 0 || k == NS - 1;
            float u0 = k == 0 ? 1 : 0, u1 = k == 0 ? 0 : 1;   // the left end is the right end mirrored
            ModFx.sprTex(isEnd ? end : seg, b.x, b.y, W * D / 1024f, H * D / 1024f, ps.spin + deg, r, g, bb, Math.min(1, al + 0.8f * fl * str), true, u0, 0, u1, 1);
        }
    }

    /** Ripples running both ways along the wall from each hit (1.6 half-spans a second, fading in 0.7 s). */
    private static float flash(float uc, float ts) {
        float f = 0;
        int n = Math.min(hitN, 8);
        for (int i = 0; i < n; i++) {
            float age = (t - hitT[i]) / 1000f;
            if (age < 0 || age > 0.7f) continue;
            float d = Math.abs(uc - hitU[i]) - age * 1.6f;
            f += hitStr[i] * (1 - age / 0.7f) * (float) Math.exp(-d * d / 0.01f);
        }
        return Math.min(1, f);
    }

    /** Impact: a bright hex cell, a flare and sparks thrown back off the wall where the shot met it. */
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
            if (!hitSparked[i]) {   // once per hit: sparks back out along the wall's outward normal
                hitSparked[i] = true;
                float L = (float) Math.hypot(hitLX[i], hitLY[i]);
                float nx = hitLX[i] / L, ny = hitLY[i] / L;
                ModFx.local(ps.position, ps.spin, hitLX[i] * D / 1024f, hitLY[i] * D / 1024f, c);
                for (int q = 0; q < 4; q++) {
                    b.set(nx * 260 + ModFx.rnd(-140, 140), ny * 260 + ModFx.rnd(-140, 140)).applyRotatation(Math.toRadians(ps.spin));
                    ModFx.part("fx_glow", c.x, c.y, b.x, b.y, 320, D * 0.012f, D * 0.004f, HOTW[0], HOTW[1], ICE[2], 0.9f * str, true, false);
                }
            }
        }
    }

    /**
     * Wall down: the whole arc flashes white-hot for 0.15 s, cracks (wedges flicker out of step), then the wedges burst
     * outward and fade with hex shards and a shock ring (0.9 s).
     */
    private static void shatter(PlayerShip ps, float str, float f) {
        Texture seg = ModArt.ready("lev_anchor_seg");
        float R = ModAnchorData.R, span = ModAnchorData.SPAN_DEG * brokeFrac[0];
        float W = ModAnchorData.W, H = ModAnchorData.H, cy = ModAnchorData.Y_TOP + H / 2;
        float flashF = Math.max(0, 1 - f / 0.17f);
        float burst = Math.max(0, (f - 0.17f) / 0.83f);
        for (int k = 0; k < NS; k++) {
            float deg = segDeg(k);
            if (Math.abs(deg) > span + 1) continue;
            float out = burst * burst * (90 + 50 * (float) Math.sin(k * 2.3f));
            float al = str * (flashF > 0 ? 0.9f : (1 - burst) * (Math.random() < 0.3f * (1 - burst) ? 0.2f : 0.75f));
            arcAt(ps, deg, -cy + out, b);
            if (seg != null) ModFx.sprTex(seg, b.x, b.y, W * D / 1024f * (1 - 0.4f * burst), H * D / 1024f, ps.spin + deg + burst * 25 * (float) Math.sin(k * 1.7f),
                flashF > 0 ? 1 : LOW[0], flashF > 0 ? 1 : LOW[1], flashF > 0 ? 1 : LOW[2], al, true, 0, 0, 1, 1);
            if (burst > 0 && k % 2 == 0) {
                arcAt(ps, deg + 4, R + out * 1.6f, a);
                ModFx.spr("fx_hex", a.x, a.y, D * 0.04f, D * 0.04f, ps.spin + k * 37 + burst * 140, 1, 0.8f, 0.6f, (1 - burst) * str, true);
            }
        }
        if (burst > 0 && burst < 0.6f) {
            Vector2 sc = GameRenderer.screenCenter;
            float rr = D * (0.65f + 0.9f * burst);
            ModFx.spr("fx_shock", sc.x, sc.y, rr * 2, rr * 2, 0, LOW[0], LOW[1], LOW[2], 0.5f * str * (1 - burst / 0.6f), true);
        }
    }

    /**
     * Wall down and recharging: the forward pads glow with the charge, a faint ghost of the arc fills centre-out with it
     * (pulsing), and when it is full the ghost arc flashes once.
     */
    private static void recharge(PlayerShip ps, float str, long now) {
        Texture seg = ModArt.ready("lev_anchor_seg"), end = ModArt.ready("lev_anchor_end");
        float frac = cap > 0 ? cur / cap : 0;
        boolean ready = fullAt > 0 && now - fullAt < 700 && frac >= 1;
        float rf = ready ? 1 - (now - fullAt) / 700f : 0;
        float pulse = 0.5f + 0.5f * (float) Math.sin(regenMs / 260.0);
        for (int i = 0; i < 2; i++) {
            scr(ps, pad(i) - 512, padY() - 512, a);
            float s = D * (0.04f + 0.05f * frac);
            ModFx.spr("fx_glow", a.x, a.y, s, s, 0, ICE[0], ICE[1], ICE[2], str * (0.25f + 0.35f * frac * pulse + 0.6f * rf), true);
        }
        if (seg == null || end == null) return;
        float W = ModAnchorData.W, H = ModAnchorData.H, cy = ModAnchorData.Y_TOP + H / 2;
        for (int k = 0; k < NS; k++) {
            float deg = segDeg(k);
            float need = Math.abs(deg) / ModAnchorData.SPAN_DEG;
            if (!ready && need > frac) continue;
            float al = str * (ready ? 0.55f * rf : 0.05f + 0.06f * pulse);
            arcAt(ps, deg, -cy, b);
            boolean isEnd = k == 0 || k == NS - 1;
            ModFx.sprTex(isEnd ? end : seg, b.x, b.y, W * D / 1024f, H * D / 1024f, ps.spin + deg, ICE[0], ICE[1], ICE[2], al, true, k == 0 ? 1 : 0, 0, k == 0 ? 0 : 1, 1);
        }
    }

    /** ModDev test switch: wall charge share (0..1) for the emulator log. */
    static float charge() {
        return cap > 0 ? cur / cap : 0;
    }
}
