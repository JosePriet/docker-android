package fr.testudo.spacecorsair.mod;

import fr.testudo.spacecorsair.business.Element;
import fr.testudo.spacecorsair.engine.ObjectRegistry;
import fr.testudo.spacecorsair.business.player.PlayerShip;
import fr.testudo.spacecorsair.business.projectiles.LaserBeam;
import fr.testudo.spacecorsair.business.projectiles.Projectile;
import fr.testudo.spacecorsair.display.Drawable;
import fr.testudo.spacecorsair.engine.GameRenderer;
import fr.testudo.spacecorsair.engine.Vector2;

import java.util.ArrayList;
import java.util.List;

/**
 * v43a-16 (owner 2026-11-15): Hornet refit stage 5 ("crystal" form). Art from src/genhornet16.py.
 * - The hull is drawn without wings (ModV35.playerArt -> hornet_stage5_hull). The 4 wings float beside it on damped
 *   springs (inertia: they lag behind turns and speed changes and catch up).
 * - Wing shield: hits are binned by the direction they come from. Up to 2 shields (2 wings each: front pair, rear pair)
 *   fly to the 2 hottest directions. A shield that has arrived cuts damage from its arc by 15%. Each shield heats with
 *   the damage it blocks (the cut shrinks as it heats); full heat = overheat: the wings drop back to plain wings until the
 *   ship has taken no hit for OVERHEAT_QUIET_MS (and at least OVERHEAT_MIN_MS). No durability.
 * - Stinger: fixed passive turret on the bow pad. Shoots the nearest hostile in range; each dart leaves a damage over time.
 *   Its steady DPS is STING_SHARE of the equipped turret's DPS. Does not change with gear swaps (always present at s5).
 * Enemy Hornets at stage 5 use the static composite hornet_stage5 (wings tucked in).
 */
public final class ModHornet {
    private ModHornet() {}

    // ---- tunables (owner defaults, see audits/v43a-16-changes.md)
    static final float CUT = 0.15f;                 // owner: -15% from the shielded direction
    static final float ARC_DEG = 45;                // half width of a shield's arc
    static final float HEAT_CAP_SHARE = 0.35f;      // blocked damage (pre-cut) that overheats a shield, x max hull
    static final long COOL_AFTER_MS = 2500;         // heat drains only after this long without a hit on that shield
    static final float COOL_PER_S = 0.20f;          // share of the cap drained per second
    static final long OVERHEAT_MIN_MS = 6000, OVERHEAT_QUIET_MS = 3000;
    static final long THREAT_TAU_MS = 3000;         // hit memory per direction
    static final long RELEASE_MS = 4000;            // shield returns to wing duty after this long without hits
    static final float STING_SHARE = 0.35f, STING_RANGE = 1500, STING_DOT_S = 3;
    static final long STING_EVERY_MS = 900;
    static final long TRAVEL_MS = 700;              // wing travel time before a re-aimed shield works

    static final String ART = "hornet";
    static final String[] W = {"FL", "FR", "RL", "RR"};
    /** Wing rest centres and sprite size, 1024 hull px (genhornet16.py). */
    static final float[][] REST = {{217.6f, 219.6f}, {806.8f, 219.2f}, {219.6f, 853.6f}, {804.0f, 853.6f}};
    static final float WPX = 400;
    /** Bow pad (Stinger), 1024 hull px. */
    static final float STX = 514.0f, STY = 214.7f;

    // ---- wing physics (world)
    private static final float[] px = new float[4], py = new float[4], vx = new float[4], vy = new float[4], rot = new float[4];
    private static boolean placed;
    private static long lastT;
    private static float D = 200;

    // ---- shields: 0 = front pair (FL, FR), 1 = rear pair (RL, RR)
    private static final int NB = 12;
    private static final float[] threat = new float[NB];
    private static final float[] shDir = {0, 180};          // local degrees, 0 = bow, + = starboard
    private static final boolean[] shOn = new boolean[2];   // assigned to a direction
    private static final float[] shArrive = new float[2];   // 0..1 how far the wings are into formation
    private static final float[] heat = new float[2];
    private static final long[] lastShHit = new long[2], hotSince = {-1, -1}, assignedAt = new long[2];
    private static long lastPlayerHit, lastAssign;
    private static int logs;

    // ---- stinger
    private static long stingMs;
    private static final List<Object[]> dots = new ArrayList<Object[]>();   // {Element, dps float[], until long[]}
    private static float stingFlash;
    private static float aimX, aimY, aimT;

    /** True when the player flies the Hornet at stage 5 and the part files ship. */
    static boolean useParts(String art, int s) {
        return s == 5 && ART.equals(art) && ModV35.art("hornet_stage5_hull") && ModV35.art("hornet_stage5_wFL")
            && ModV35.art("hornet_stage5_wFR") && ModV35.art("hornet_stage5_wRL") && ModV35.art("hornet_stage5_wRR");
    }

    static boolean active(PlayerShip ps) {
        try {
            if (ps == null || ps.removed || ps.shipSpec == null) return false;
            ModShips.Hull h = ModShips.hullFor(ps.shipSpec);
            return h != null && useParts(h.art, ModV35.stage(ModV35.level(ModV35.currentShip())));
        } catch (Throwable t) {
            return false;
        }
    }

    private static float lx(float p) { return (p / 1024f - 0.5f) * D; }

    /** Ship-local (x right, y stern) -> world offset. */
    private static void toWorld(PlayerShip ps, float x, float y, Vector2 out) {
        out.set(x, y).applyRotatation(Math.toRadians(ps.spin));
    }

    private static float localDeg(PlayerShip ps, float wx, float wy) {
        double rad = Math.toRadians(ps.spin), cs = Math.cos(rad), sn = Math.sin(rad);
        float ax = wx - ps.position.x, ay = wy - ps.position.y;
        float lx = (float) (ax * cs + ay * sn), ly = (float) (-ax * sn + ay * cs);
        return (float) Math.toDegrees(Math.atan2(lx, -ly));
    }

    private static float angDiff(float a, float b) {
        float d = (a - b) % 360;
        if (d > 180) d -= 360;
        if (d < -180) d += 360;
        return Math.abs(d);
    }

    private static void reset() {
        placed = false;
        lastT = 0;
        for (int i = 0; i < NB; i++) threat[i] = 0;
        for (int s = 0; s < 2; s++) { shOn[s] = false; shArrive[s] = 0; heat[s] = 0; hotSince[s] = -1; }
        dots.clear();
    }

    // ------------------------------------------------------------------ tick (Mod frame, after ModAnchor.tick)
    public static void tick(PlayerShip ps, long j) {
        try {
            if (!active(ps) || ObjectRegistry.INSTANCE.game.mapMode) {
                if (placed) reset();
                return;
            }
            long now = System.currentTimeMillis();
            float dt = Math.max(0, Math.min(0.1f, j / 1000f));
            // threat memory fades
            float f = (float) Math.exp(-j / (double) THREAT_TAU_MS);
            for (int i = 0; i < NB; i++) threat[i] *= f;
            if (now - lastAssign >= 250) { lastAssign = now; assign(now); }
            for (int s = 0; s < 2; s++) {
                if (hotSince[s] >= 0) {
                    if (now - hotSince[s] >= OVERHEAT_MIN_MS && now - lastPlayerHit >= OVERHEAT_QUIET_MS) {
                        hotSince[s] = -1;
                        heat[s] = 0;
                        log("shield " + s + " back online");
                    }
                } else if (now - lastShHit[s] >= COOL_AFTER_MS && heat[s] > 0) {
                    heat[s] = Math.max(0, heat[s] - cap(ps) * COOL_PER_S * dt);
                }
            }
            sting(ps, j, now);
        } catch (Throwable t) {
            // never breaks the frame
        }
    }

    private static float cap(PlayerShip ps) {
        return Math.max(1, ps.maxLife * HEAT_CAP_SHARE);
    }

    /** Points the 2 shields at the 2 hottest directions (front pair takes the one nearer the bow). */
    private static void assign(long now) {
        if (now - lastPlayerHit >= RELEASE_MS) for (int i = 0; i < NB; i++) threat[i] = 0;   // quiet: wings go home
        int b1 = -1, b2 = -1;
        for (int i = 0; i < NB; i++) if (threat[i] > 0.01f && (b1 < 0 || threat[i] > threat[b1])) b1 = i;
        for (int i = 0; b1 >= 0 && i < NB; i++) {
            if (threat[i] <= 0.01f || Math.min(Math.abs(b1 - i), NB - Math.abs(b1 - i)) <= 1) continue;   // next to b1: one shield covers it
            if (b2 < 0 || threat[i] > threat[b2]) b2 = i;
        }
        float d1 = b1 < 0 ? 0 : binDeg(b1), d2 = b2 < 0 ? 0 : binDeg(b2);
        float[] want = new float[2];
        boolean[] on = new boolean[2];
        if (b1 >= 0 && b2 >= 0) {
            boolean firstFront = Math.abs(norm(d1)) <= Math.abs(norm(d2));
            want[0] = firstFront ? d1 : d2; want[1] = firstFront ? d2 : d1;
            on[0] = on[1] = true;
        } else if (b1 >= 0) {
            int s = Math.abs(norm(d1)) <= 90 ? 0 : 1;
            want[s] = d1; on[s] = true;
        }
        for (int s = 0; s < 2; s++) {
            if (hotSince[s] >= 0) { shOn[s] = false; continue; }
            if (on[s]) {
                if (!shOn[s] || angDiff(shDir[s], want[s]) > 35) assignedAt[s] = now;   // a neighbouring bin is a slide, not a new flight
                shDir[s] = want[s];
                shOn[s] = true;
            } else if (shOn[s] && now - lastShHit[s] >= RELEASE_MS && now - assignedAt[s] >= RELEASE_MS) {
                shOn[s] = false;
            }
        }
    }

    private static float binDeg(int b) { return b * 360f / NB; }

    private static float norm(float d) {
        d = d % 360;
        if (d > 180) d -= 360;
        if (d < -180) d += 360;
        return d;
    }

    // ------------------------------------------------------------------ damage (ModLive.hit)
    public static float damageIn(Element target, float dmg, Projectile p) {
        try {
            if (dmg <= 0 || p == null || target == null || !target.isPlayer) return dmg;
            PlayerShip ps = (PlayerShip) target;
            if (!active(ps)) return dmg;
            float sx, sy;
            if (p instanceof LaserBeam || p.speed == null) {
                if (p.sender == null) return dmg;
                sx = p.sender.position.x; sy = p.sender.position.y;
            } else {
                // where the shot came from: back along its flight
                sx = p.position.x - p.speed.x * 20; sy = p.position.y - p.speed.y * 20;
            }
            float deg = localDeg(ps, sx, sy);
            long now = System.currentTimeMillis();
            lastPlayerHit = now;
            int b = ((Math.round((deg < 0 ? deg + 360 : deg) / (360f / NB))) % NB + NB) % NB;
            threat[b] += dmg;
            float out = dmg;
            for (int s = 0; s < 2; s++) {
                if (!shOn[s] || hotSince[s] >= 0 || shArrive[s] < 0.9f) continue;
                if (angDiff(deg, shDir[s]) > ARC_DEG) continue;
                float c = cap(ps);
                float cut = CUT * (1 - 0.5f * Math.min(1, heat[s] / c));   // chipped away as it heats
                out = out * (1 - cut);
                heat[s] += dmg;
                lastShHit[s] = now;
                if (heat[s] >= c) {
                    hotSince[s] = now;
                    shOn[s] = false;
                    ModSound.play("shield_down", 0.5f, 1.3f, 800);
                    Mod.floatText(ps, ModLang.tr("WING SHIELD OVERHEATED"), 1.0f, 0.55f, 0.25f);
                    log("shield " + s + " overheated");
                } else if (logs < 40) {
                    log("shield " + s + " cut " + Math.round(dmg - out) + " heat " + Math.round(100 * heat[s] / c) + "%");
                }
                break;   // one shield per hit
            }
            return out;
        } catch (Throwable t) {
            return dmg;
        }
    }

    private static void log(String s) {
        if (logs++ < 120) ModDev.ev("hornet", s);
    }

    // ------------------------------------------------------------------ stinger
    private static void sting(PlayerShip ps, long j, long now) {
        // damage over time
        for (int i = dots.size() - 1; i >= 0; i--) {
            Object[] d = dots.get(i);
            Element e = (Element) d[0];
            long until = ((long[]) d[2])[0];
            if (e.removed || e.life <= 0 || now >= until) { dots.remove(i); continue; }
            float dmg = ((float[]) d[1])[0] * j / 1000f;
            if (dmg > 0) ModV34.skillHit(e, ps, dmg, true);
        }
        stingFlash = Math.max(0, stingFlash - j / 250f);
        aimT = Math.max(0, aimT - j / 160f);
        stingMs -= j;
        if (stingMs > 0 || ps.isDocked) return;
        stingMs = STING_EVERY_MS;
        if (ps.laserSpec == null) return;
        List<Element> els = ObjectRegistry.INSTANCE.game.currentLevel.elements;
        Element best = null;
        float bd = STING_RANGE;
        for (int i = 0; i < els.size(); i++) {
            Element e = els.get(i);
            if (e == null || e == ps || e.removed || e.life <= 0) continue;
            if (ModV35.standing(e) != -1) continue;
            float de = e.position.distance(ps.position);
            if (de < bd) { bd = de; best = e; }
        }
        if (best == null) return;
        float dps = Math.max(0, ps.laserSpec.getDps()) * STING_SHARE;
        // one dart per STING_EVERY_MS; each adds dps*every/dot so the steady state is dps
        float add = dps * (STING_EVERY_MS / 1000f) / STING_DOT_S;
        Object[] found = null;
        for (Object[] d : dots) if (d[0] == best) { found = d; break; }
        if (found == null) {
            dots.add(new Object[]{best, new float[]{add}, new long[]{now + (long) (STING_DOT_S * 1000)}});
        } else {
            float[] cur = (float[]) found[1];
            long[] u = (long[]) found[2];
            // stacks up to the steady state, refreshes the timer
            cur[0] = Math.min(dps, cur[0] + add);
            u[0] = now + (long) (STING_DOT_S * 1000);
        }
        // dart
        Drawable hd = ps.getDrawableObject();
        if (hd != null && hd.dimensions != null) D = hd.dimensions.x;
        Vector2 o = new Vector2();
        toWorld(ps, lx(STX), lx(STY), o);
        float x0 = ps.position.x + o.x, y0 = ps.position.y + o.y;
        ModFx.strip("fx_beam", x0, y0, best.position.x, best.position.y, 22, 1.0f, 0.75f, 0.2f, 0.85f, true);
        ModFx.strip("fx_beamcore", x0, y0, best.position.x, best.position.y, 8, 1, 1, 0.9f, 0.9f, true);
        ModFx.part("fx_core", best.position.x, best.position.y, 0, 0, 300, 40, 110, 1.0f, 0.7f, 0.2f, 0.9f, true, true);
        ModSound.play("gun_medium", 0.3f, 1.7f, 300);
        stingFlash = 1;
        aimX = best.position.x; aimY = best.position.y; aimT = 1;
    }

    // ------------------------------------------------------------------ drawing (ModCaps.drawUnder, before the hull)
    private static final Vector2 a = new Vector2(), b = new Vector2();

    public static void under(PlayerShip ps) {
        try {
            if (!active(ps)) return;
            Drawable hd = ps.getDrawableObject();
            if (hd == null || hd.dimensions == null) return;
            D = hd.dimensions.x;
            long t = System.currentTimeMillis();
            if (lastT != 0 && t - lastT > 1000) placed = false;   // jump / pause: snap to rest
            float dt = lastT == 0 ? 0.016f : Math.max(0.001f, Math.min(0.05f, (t - lastT) / 1000f));
            lastT = t;
            float R = 0.66f * D, spread = 0.22f * D;
            for (int i = 0; i < 4; i++) {
                int s = i < 2 ? 0 : 1;
                float restX = lx(REST[i][0]), restY = lx(REST[i][1]);
                float restDeg = (float) Math.toDegrees(Math.atan2(restX, -restY));
                float tx = restX, ty = restY, trot = 0;
                boolean hot = hotSince[s] >= 0;
                if (shOn[s] && !hot) {
                    // shield formation: the pair side by side across the threat direction, wing tips outward
                    double th = Math.toRadians(shDir[s]);
                    float cx = (float) (R * Math.sin(th)), cy = (float) (-R * Math.cos(th));
                    float side = ((i % 2 == 0) ? -1 : 1) * (s == 0 ? 1 : -1);   // front pair: FL left; rear pair faces aft, so RL stays on the port end
                    tx = cx + side * spread * (float) Math.cos(th);
                    ty = cy + side * spread * (float) Math.sin(th);
                    trot = norm(shDir[s] - (s == 0 ? 0 : 180));
                } else {
                    // idle: a slow float
                    tx += (float) Math.sin(t / 900.0 + i) * D * 0.012f;
                    ty += (float) Math.cos(t / 1100.0 + 2 * i) * D * 0.012f;
                }
                toWorld(ps, tx, ty, a);
                float wx = ps.position.x + a.x, wy = ps.position.y + a.y;
                if (!placed) { px[i] = wx; py[i] = wy; vx[i] = vy[i] = 0; rot[i] = trot; }
                // damped spring: inertia, slight overshoot
                float K = 38, C = 7.5f;
                vx[i] += (K * (wx - px[i]) - C * vx[i]) * dt;
                vy[i] += (K * (wy - py[i]) - C * vy[i]) * dt;
                px[i] += vx[i] * dt;
                py[i] += vy[i] * dt;
                rot[i] += norm(trot - rot[i]) * Math.min(1, dt * 5);
                if (i % 2 == 1) {
                    // pair arrival: the wings' travel time after the shield is (re)aimed (the spring settles in ~0.7 s;
                    // a distance test would never pass while the ship moves, because the spring lags behind it)
                    shArrive[s] = shOn[s] && !hot ? Math.min(1, (t - assignedAt[s]) / (float) TRAVEL_MS) : 0;
                }
            }
            placed = true;
            Vector2 sc = GameRenderer.screenCenter;
            float sz = WPX / 1024f * D;
            ModFx.relative = true;
            try {
                // shield sheets between the paired wings
                for (int s = 0; s < 2; s++) {
                    if (shArrive[s] <= 0.05f) continue;
                    int i0 = s * 2, i1 = i0 + 1;
                    float mx = (px[i0] + px[i1]) / 2 - ps.position.x + sc.x, my = (py[i0] + py[i1]) / 2 - ps.position.y + sc.y;
                    float h = Math.min(1, heat[s] / cap(ps));
                    float r = 0.45f + 0.55f * h, g = 0.75f - 0.3f * h, bl = 1.0f - 0.75f * h;
                    float al = shArrive[s] * (0.35f + 0.12f * (float) Math.sin(t / 160.0) + (t - lastShHit[s] < 200 ? 0.35f : 0));
                    ModFx.strip("fx_beam", px[i0] - ps.position.x + sc.x, py[i0] - ps.position.y + sc.y,
                        px[i1] - ps.position.x + sc.x, py[i1] - ps.position.y + sc.y, 0.30f * D, r, g, bl, al, true);
                    ModFx.sprR("fx_glow", mx, my, 0.55f * D, 0.55f * D, 0, r, g, bl, al * 0.6f, true);
                }
                for (int i = 0; i < 4; i++) {
                    int s = i < 2 ? 0 : 1;
                    boolean hot = hotSince[s] >= 0;
                    String n = "hornet_stage5_w" + W[i];
                    float x = px[i] - ps.position.x + sc.x, y = py[i] - ps.position.y + sc.y;
                    float r = ps.spin + rot[i];
                    float dim = hot ? 0.55f + 0.2f * (float) Math.sin(t / 70.0) : 1;
                    ModFx.sprR(n, x, y, sz, sz, r, dim, hot ? dim * 0.8f : 1, hot ? dim * 0.7f : 1, 1, false);
                    if (ModV35.art(n + "_glow_l")) {
                        float gl = hot ? 0.15f : 0.55f + 0.25f * (float) Math.sin(t / 700.0 + i) + 0.3f * shArrive[s];
                        ModFx.sprR(n + "_glow_l", x, y, sz, sz, r, 1, 1, 1, Math.min(1, gl), true);
                    }
                    if (hot) ModFx.sprR("fx_glow", x, y, sz * 0.6f, sz * 0.6f, 0, 1.0f, 0.4f, 0.1f, 0.35f + 0.2f * (float) Math.sin(t / 90.0 + i), true);
                }
            } finally {
                ModFx.relative = false;
            }
        } catch (Throwable th) {
            ModFx.relative = false;
        }
    }

    // ------------------------------------------------------------------ drawing (ModCaps.drawOver): crystal + stinger
    public static void over(PlayerShip ps) {
        try {
            if (!active(ps)) return;
            Drawable hd = ps.getDrawableObject();
            if (hd == null || hd.dimensions == null) return;
            D = hd.dimensions.x;
            long t = System.currentTimeMillis();
            Vector2 sc = GameRenderer.screenCenter;
            ModFx.relative = true;
            try {
                float busy = Math.max(shArrive[0], shArrive[1]);
                float al = 0.35f + 0.2f * (float) Math.sin(t / 500.0) + 0.3f * busy + 0.3f * stingFlash;
                if (ModV35.art("hornet_stage5_core")) ModFx.sprR("hornet_stage5_core", sc.x, sc.y, D, D, ps.spin, 1, 1, 1, Math.min(1, al), true);
                toWorld(ps, lx(STX), lx(STY), a);
                float gx = sc.x + a.x, gy = sc.y + a.y;
                ModFx.sprR("fx_glow", gx, gy, 0.16f * D, 0.16f * D, 0, 1.0f, 0.7f, 0.2f, 0.45f + 0.5f * stingFlash, true);
                if (aimT > 0) {
                    float ax = aimX - ps.position.x + sc.x, ay = aimY - ps.position.y + sc.y;
                    float rotd = (float) Math.toDegrees(Math.atan2(ax - gx, -(ay - gy)));
                    ModFx.sprR("fx_glow", gx + (ax - gx) * 0.02f, gy + (ay - gy) * 0.02f, 0.06f * D, 0.22f * D, rotd, 1, 0.85f, 0.4f, 0.8f * aimT, true);
                }
            } finally {
                ModFx.relative = false;
            }
        } catch (Throwable th) {
            ModFx.relative = false;
        }
    }
}
