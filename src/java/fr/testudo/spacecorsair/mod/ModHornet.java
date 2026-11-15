package fr.testudo.spacecorsair.mod;

import fr.testudo.spacecorsair.business.Element;
import fr.testudo.spacecorsair.business.ennemis.Ennemis;
import fr.testudo.spacecorsair.engine.ObjectRegistry;
import fr.testudo.spacecorsair.business.player.PlayerShip;
import fr.testudo.spacecorsair.business.projectiles.LaserBeam;
import fr.testudo.spacecorsair.business.projectiles.Projectile;
import fr.testudo.spacecorsair.display.Drawable;
import fr.testudo.spacecorsair.engine.GameRenderer;
import fr.testudo.spacecorsair.engine.Vector2;

import java.util.ArrayList;
import java.util.List;
import java.util.WeakHashMap;

/**
 * v43a-16 (owner 2026-11-15): Hornet refit stage 5 ("crystal" form). Art from src/genhornet16.py.
 * - The hull is drawn without wings (player: ModV35.playerArt; enemies: ModV35.skin -> enemySkin). The 4 wings float
 *   beside it on damped springs (inertia: they lag behind turns and speed changes and catch up).
 * - Wing shield: hits are binned by the direction they come from. Up to 2 shields (2 wings each: front pair, rear pair)
 *   fly to the 2 hottest directions. After TRAVEL_MS a shield cuts damage from its arc by 15%, sliding down to 7.5% as
 *   it heats (owner 05:01: gradual, 7.5% floor, 0 while down). Full heat = overheat: the wings drop back to plain wings
 *   until the ship has taken no hit for OVERHEAT_QUIET_MS (and at least OVERHEAT_MIN_MS). No durability.
 * - Stinger: fixed passive turret on the bow pad. Shoots the nearest hostile in range; each dart leaves a damage over time.
 *   Its steady DPS is STING_SHARE of the ship's turret DPS (player: equipped turret; enemy: its own gun).
 * - Owner 05:01: enemy Hornets at stage 5 get the same wings, shields and Stinger (per-enemy state; the Stinger hits the
 *   player). The static composite hornet_stage5 stays as the fallback when the parts are missing.
 */
public final class ModHornet {
    private ModHornet() {}

    // ---- tunables (owner defaults, see audits/v43a-16-changes.md)
    static final float CUT = 0.15f, CUT_FLOOR = 0.075f;
    static final float ARC_DEG = 45;
    static final float HEAT_CAP_SHARE = 0.35f;
    static final long COOL_AFTER_MS = 2500;
    static final float COOL_PER_S = 0.20f;
    static final long OVERHEAT_MIN_MS = 6000, OVERHEAT_QUIET_MS = 3000;
    static final long THREAT_TAU_MS = 3000;
    static final long RELEASE_MS = 4000;
    static final long TRAVEL_MS = 700;
    static final float STING_SHARE = 0.35f, STING_RANGE = 1500, STING_DOT_S = 3;
    static final long STING_EVERY_MS = 900;

    static final String ART = "hornet";
    static final String[] W = {"FL", "FR", "RL", "RR"};
    static final String[] WN = {"hornet_stage5_wFL", "hornet_stage5_wFR", "hornet_stage5_wRL", "hornet_stage5_wRR"};
    static final String[] WG = {"hornet_stage5_wFL_glow_l", "hornet_stage5_wFR_glow_l", "hornet_stage5_wRL_glow_l", "hornet_stage5_wRR_glow_l"};
    /** Wing rest centres and sprite size, 1024 hull px (genhornet16.py). */
    static final float[][] REST = {{217.6f, 219.6f}, {806.8f, 219.2f}, {219.6f, 853.6f}, {804.0f, 853.6f}};
    static final float WPX = 400;
    /** Bow pad (Stinger), 1024 hull px. */
    static final float STX = 514.0f, STY = 214.7f;
    private static final int NB = 12;

    /** One Hornet's wings, shields and Stinger. */
    static final class St {
        final float[] px = new float[4], py = new float[4], vx = new float[4], vy = new float[4], rot = new float[4];
        boolean placed;
        long lastT, lastTick;
        float D = 200;
        final float[] threat = new float[NB];
        final float[] shDir = {0, 180};
        final boolean[] shOn = new boolean[2];
        final float[] shArrive = new float[2], heat = new float[2];
        final long[] lastShHit = new long[2], hotSince = {-1, -1}, assignedAt = new long[2];
        long lastHit, lastAssign, stingMs;
        final List<Object[]> dots = new ArrayList<Object[]>();
        float stingFlash, aimX, aimY, aimT;
        final float[] want = new float[2];
        final boolean[] on = new boolean[2];

        void reset() {
            placed = false;
            lastT = 0;
            for (int i = 0; i < NB; i++) threat[i] = 0;
            for (int s = 0; s < 2; s++) { shOn[s] = false; shArrive[s] = 0; heat[s] = 0; hotSince[s] = -1; }
            dots.clear();
        }
    }

    private static final St P = new St();
    private static final WeakHashMap<Element, St> ENEMY = new WeakHashMap<Element, St>();
    private static int logs;
    private static final Vector2 a = new Vector2(), v2 = new Vector2();

    static boolean partsShip() {
        return ModV35.art("hornet_stage5_hull") && ModV35.art(WN[0]) && ModV35.art(WN[1]) && ModV35.art(WN[2]) && ModV35.art(WN[3]);
    }

    /** True when the player flies the Hornet at stage 5 and the part files ship. */
    static boolean useParts(String art, int s) {
        return s == 5 && ART.equals(art) && partsShip();
    }

    private static PlayerShip cachedPs;
    private static long cachedAt;
    private static boolean cachedOn;

    /** Player check, cached for 200 ms (three callers per frame). */
    static boolean active(PlayerShip ps) {
        try {
            long now = System.currentTimeMillis();
            if (ps == cachedPs && now - cachedAt < 200) return cachedOn;
            cachedPs = ps;
            cachedAt = now;
            cachedOn = false;
            if (ps == null || ps.removed || ps.shipSpec == null) return false;
            ModShips.Hull h = ModShips.hullFor(ps.shipSpec);
            cachedOn = h != null && useParts(h.art, ModV35.stage(ModV35.level(ModV35.currentShip())));
            return cachedOn;
        } catch (Throwable t) {
            return false;
        }
    }

    private static float lx(St st, float p) { return (p / 1024f - 0.5f) * st.D; }

    private static void toWorld(float spin, float x, float y, Vector2 out) {
        out.set(x, y).applyRotatation(Math.toRadians(spin));
    }

    private static float localDeg(Element self, float wx, float wy) {
        double rad = Math.toRadians(self.spin), cs = Math.cos(rad), sn = Math.sin(rad);
        float ax = wx - self.position.x, ay = wy - self.position.y;
        float lx = (float) (ax * cs + ay * sn), ly = (float) (-ax * sn + ay * cs);
        return (float) Math.toDegrees(Math.atan2(lx, -ly));
    }

    private static float norm(float d) {
        d = d % 360;
        if (d > 180) d -= 360;
        if (d < -180) d += 360;
        return d;
    }

    private static float angDiff(float x, float y) { return Math.abs(norm(x - y)); }

    private static float cap(Element self) {
        return Math.max(1, self.maxLife * HEAT_CAP_SHARE);
    }

    // ------------------------------------------------------------------ shared update
    private static void update(St st, Element self, long j, long now) {
        float dt = Math.max(0, Math.min(0.1f, j / 1000f));
        float f = (float) Math.exp(-j / (double) THREAT_TAU_MS);
        for (int i = 0; i < NB; i++) st.threat[i] *= f;
        if (now - st.lastAssign >= 250) { st.lastAssign = now; assign(st, now); }
        for (int s = 0; s < 2; s++) {
            if (st.hotSince[s] >= 0) {
                if (now - st.hotSince[s] >= OVERHEAT_MIN_MS && now - st.lastHit >= OVERHEAT_QUIET_MS) {
                    st.hotSince[s] = -1;
                    st.heat[s] = 0;
                    if (self.isPlayer) log("shield " + s + " back online");
                }
            } else if (now - st.lastShHit[s] >= COOL_AFTER_MS && st.heat[s] > 0) {
                st.heat[s] = Math.max(0, st.heat[s] - cap(self) * COOL_PER_S * dt);
            }
        }
    }

    /** Points the 2 shields at the 2 hottest directions (front pair takes the one nearer the bow). */
    private static void assign(St st, long now) {
        if (now - st.lastHit >= RELEASE_MS) for (int i = 0; i < NB; i++) st.threat[i] = 0;   // quiet: wings go home
        float[] th = st.threat;
        int b1 = -1, b2 = -1;
        for (int i = 0; i < NB; i++) if (th[i] > 0.01f && (b1 < 0 || th[i] > th[b1])) b1 = i;
        for (int i = 0; b1 >= 0 && i < NB; i++) {
            if (th[i] <= 0.01f || Math.min(Math.abs(b1 - i), NB - Math.abs(b1 - i)) <= 1) continue;   // next to b1: one shield covers it
            if (b2 < 0 || th[i] > th[b2]) b2 = i;
        }
        float d1 = b1 < 0 ? 0 : b1 * 360f / NB, d2 = b2 < 0 ? 0 : b2 * 360f / NB;
        st.on[0] = st.on[1] = false;
        if (b1 >= 0 && b2 >= 0) {
            boolean firstFront = Math.abs(norm(d1)) <= Math.abs(norm(d2));
            st.want[0] = firstFront ? d1 : d2; st.want[1] = firstFront ? d2 : d1;
            st.on[0] = st.on[1] = true;
        } else if (b1 >= 0) {
            int s = Math.abs(norm(d1)) <= 90 ? 0 : 1;
            st.want[s] = d1; st.on[s] = true;
        }
        for (int s = 0; s < 2; s++) {
            if (st.hotSince[s] >= 0) { st.shOn[s] = false; continue; }
            if (st.on[s]) {
                if (!st.shOn[s] || angDiff(st.shDir[s], st.want[s]) > 35) st.assignedAt[s] = now;   // a neighbouring bin is a slide, not a new flight
                st.shDir[s] = st.want[s];
                st.shOn[s] = true;
            } else if (st.shOn[s] && now - st.lastShHit[s] >= RELEASE_MS && now - st.assignedAt[s] >= RELEASE_MS) {
                st.shOn[s] = false;
            }
        }
    }

    // ------------------------------------------------------------------ player tick (Mod frame, after ModAnchor.tick)
    public static void tick(PlayerShip ps, long j) {
        try {
            if (!active(ps) || ObjectRegistry.INSTANCE.game.mapMode) {
                if (P.placed) P.reset();
                return;
            }
            long now = System.currentTimeMillis();
            update(P, ps, j, now);
            if (!ps.isDocked && ps.laserSpec != null) sting(P, ps, j, now, Math.max(0, ps.laserSpec.getDps()));
            else tickDots(P, ps, j, now);
        } catch (Throwable t) {
            // never breaks the frame
        }
    }

    // ------------------------------------------------------------------ damage (ModLive.hit)
    public static float damageIn(Element target, float dmg, Projectile p) {
        try {
            if (dmg <= 0 || p == null || target == null) return dmg;
            St st;
            if (target.isPlayer) {
                if (!active((PlayerShip) target)) return dmg;
                st = P;
            } else {
                st = ENEMY.get(target);
                if (st == null) return dmg;
            }
            float sx, sy;
            if (p instanceof LaserBeam || p.speed == null) {
                if (p.sender == null) return dmg;
                sx = p.sender.position.x; sy = p.sender.position.y;
            } else {
                sx = p.position.x - p.speed.x * 20; sy = p.position.y - p.speed.y * 20;   // back along its flight
            }
            float deg = localDeg(target, sx, sy);
            long now = System.currentTimeMillis();
            st.lastHit = now;
            int b = ((Math.round((deg < 0 ? deg + 360 : deg) / (360f / NB))) % NB + NB) % NB;
            st.threat[b] += dmg;
            float out = dmg;
            for (int s = 0; s < 2; s++) {
                if (!st.shOn[s] || st.hotSince[s] >= 0 || st.shArrive[s] < 0.9f) continue;
                if (angDiff(deg, st.shDir[s]) > ARC_DEG) continue;
                float c = cap(target);
                float cut = CUT - (CUT - CUT_FLOOR) * Math.min(1, st.heat[s] / c);   // 15% cool -> 7.5% at full heat
                out = out * (1 - cut);
                st.heat[s] += dmg;
                st.lastShHit[s] = now;
                if (st.heat[s] >= c) {
                    st.hotSince[s] = now;
                    st.shOn[s] = false;   // down: no cut until it comes back
                    if (target.isPlayer) {
                        ModSound.play("shield_down", 0.5f, 1.3f, 800);
                        Mod.floatText((PlayerShip) target, ModLang.tr("WING SHIELD OVERHEATED"), 1.0f, 0.55f, 0.25f);
                        log("shield " + s + " overheated");
                    }
                } else if (target.isPlayer && logs < 40) {
                    log("shield " + s + " cut " + Math.round(dmg - out) + " heat " + Math.round(100 * st.heat[s] / c) + "%");
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
    private static void tickDots(St st, Element self, long j, long now) {
        for (int i = st.dots.size() - 1; i >= 0; i--) {
            Object[] d = st.dots.get(i);
            Element e = (Element) d[0];
            long until = ((long[]) d[2])[0];
            if (e.removed || e.life <= 0 || now >= until) { st.dots.remove(i); continue; }
            float dmg = ((float[]) d[1])[0] * j / 1000f;
            if (dmg > 0) ModV34.skillHit(e, self, dmg, true);
        }
        st.stingFlash = Math.max(0, st.stingFlash - j / 250f);
        st.aimT = Math.max(0, st.aimT - j / 160f);
    }

    private static void sting(St st, Element self, long j, long now, float turretDps) {
        tickDots(st, self, j, now);
        st.stingMs -= j;
        if (st.stingMs > 0) return;
        st.stingMs = STING_EVERY_MS;
        Element best = null;
        if (self.isPlayer) {
            List<Element> els = ObjectRegistry.INSTANCE.game.currentLevel.elements;
            float bd = STING_RANGE;
            for (int i = 0; i < els.size(); i++) {
                Element e = els.get(i);
                if (e == null || e == self || e.removed || e.life <= 0) continue;
                if (ModV35.standing(e) != -1) continue;
                float de = e.position.distance(self.position);
                if (de < bd) { bd = de; best = e; }
            }
        } else {
            // an enemy Hornet stings the player when it is hostile and in range
            PlayerShip ps = ObjectRegistry.INSTANCE.playerShip;
            if (ps != null && !ps.removed && ps.life > 0 && !ps.isDocked && ModV35.standing(self) == -1
                && ps.position.distance(self.position) < STING_RANGE) best = ps;
        }
        if (best == null) return;
        float dps = turretDps * STING_SHARE;
        float add = dps * (STING_EVERY_MS / 1000f) / STING_DOT_S;   // steady state = dps
        Object[] found = null;
        for (Object[] d : st.dots) if (d[0] == best) { found = d; break; }
        if (found == null) {
            st.dots.add(new Object[]{best, new float[]{add}, new long[]{now + (long) (STING_DOT_S * 1000)}});
        } else {
            float[] cur = (float[]) found[1];
            long[] u = (long[]) found[2];
            cur[0] = Math.min(dps, cur[0] + add);
            u[0] = now + (long) (STING_DOT_S * 1000);
        }
        toWorld(self.spin, lx(st, STX), lx(st, STY), v2);
        float x0 = self.position.x + v2.x, y0 = self.position.y + v2.y;
        ModFx.strip("fx_beam", x0, y0, best.position.x, best.position.y, 22, 1.0f, 0.75f, 0.2f, 0.85f, true);
        ModFx.strip("fx_beamcore", x0, y0, best.position.x, best.position.y, 8, 1, 1, 0.9f, 0.9f, true);
        ModFx.part("fx_core", best.position.x, best.position.y, 0, 0, 300, 40, 110, 1.0f, 0.7f, 0.2f, 0.9f, true, true);
        ModSound.play("gun_medium", self.isPlayer ? 0.3f : 0.2f, 1.7f, 300);
        st.stingFlash = 1;
        st.aimX = best.position.x; st.aimY = best.position.y; st.aimT = 1;
    }

    // ------------------------------------------------------------------ wing physics + drawing
    /** ox, oy: world -> draw offset (player: screen-relative; enemies: 0). */
    private static void wings(St st, Element self, long t, float ox, float oy) {
        if (st.lastT != 0 && t - st.lastT > 1000) st.placed = false;   // jump / pause / off screen: snap to rest
        float dt = st.lastT == 0 ? 0.016f : Math.max(0.001f, Math.min(0.05f, (t - st.lastT) / 1000f));
        st.lastT = t;
        float D = st.D, R = 0.66f * D, spread = 0.22f * D;
        for (int i = 0; i < 4; i++) {
            int s = i < 2 ? 0 : 1;
            float tx = lx(st, REST[i][0]), ty = lx(st, REST[i][1]), trot = 0;
            boolean hot = st.hotSince[s] >= 0;
            if (st.shOn[s] && !hot) {
                double th = Math.toRadians(st.shDir[s]);
                float cx = (float) (R * Math.sin(th)), cy = (float) (-R * Math.cos(th));
                float side = ((i % 2 == 0) ? -1 : 1) * (s == 0 ? 1 : -1);   // rear pair faces aft: RL stays on the port end
                tx = cx + side * spread * (float) Math.cos(th);
                ty = cy + side * spread * (float) Math.sin(th);
                trot = norm(st.shDir[s] - (s == 0 ? 0 : 180));
            } else {
                tx += (float) Math.sin(t / 900.0 + i) * D * 0.012f;
                ty += (float) Math.cos(t / 1100.0 + 2 * i) * D * 0.012f;
            }
            toWorld(self.spin, tx, ty, a);
            float wx = self.position.x + a.x, wy = self.position.y + a.y;
            if (!st.placed) { st.px[i] = wx; st.py[i] = wy; st.vx[i] = st.vy[i] = 0; st.rot[i] = trot; }
            float K = 38, C = 7.5f;   // damped spring: inertia, slight overshoot
            st.vx[i] += (K * (wx - st.px[i]) - C * st.vx[i]) * dt;
            st.vy[i] += (K * (wy - st.py[i]) - C * st.vy[i]) * dt;
            st.px[i] += st.vx[i] * dt;
            st.py[i] += st.vy[i] * dt;
            st.rot[i] += norm(trot - st.rot[i]) * Math.min(1, dt * 5);
        }
        for (int s = 0; s < 2; s++) {
            // wing travel time after the shield is (re)aimed; a distance test fails while the ship moves (spring lag)
            st.shArrive[s] = st.shOn[s] && st.hotSince[s] < 0 ? Math.min(1, (t - st.assignedAt[s]) / (float) TRAVEL_MS) : 0;
        }
        st.placed = true;
        float sz = WPX / 1024f * D;
        float cp = cap(self);
        for (int s = 0; s < 2; s++) {
            if (st.shArrive[s] <= 0.05f) continue;
            int i0 = s * 2, i1 = i0 + 1;
            float mx = (st.px[i0] + st.px[i1]) / 2 + ox, my = (st.py[i0] + st.py[i1]) / 2 + oy;
            float h = Math.min(1, st.heat[s] / cp);
            float r = 0.45f + 0.55f * h, g = 0.75f - 0.3f * h, bl = 1.0f - 0.75f * h;
            float al = st.shArrive[s] * (0.35f + 0.12f * (float) Math.sin(t / 160.0) + (t - st.lastShHit[s] < 200 ? 0.35f : 0));
            ModFx.strip("fx_beam", st.px[i0] + ox, st.py[i0] + oy, st.px[i1] + ox, st.py[i1] + oy, 0.30f * D, r, g, bl, al, true);
            ModFx.sprR("fx_glow", mx, my, 0.55f * D, 0.55f * D, 0, r, g, bl, al * 0.6f, true);
        }
        for (int i = 0; i < 4; i++) {
            int s = i < 2 ? 0 : 1;
            boolean hot = st.hotSince[s] >= 0;
            float x = st.px[i] + ox, y = st.py[i] + oy;
            float r = self.spin + st.rot[i];
            float dim = hot ? 0.55f + 0.2f * (float) Math.sin(t / 70.0) : 1;
            ModFx.sprR(WN[i], x, y, sz, sz, r, dim, hot ? dim * 0.8f : 1, hot ? dim * 0.7f : 1, 1, false);
            if (ModV35.art(WG[i])) {
                float gl = hot ? 0.15f : 0.55f + 0.25f * (float) Math.sin(t / 700.0 + i) + 0.3f * st.shArrive[s];
                ModFx.sprR(WG[i], x, y, sz, sz, r, 1, 1, 1, Math.min(1, gl), true);
            }
            if (hot) ModFx.sprR("fx_glow", x, y, sz * 0.6f, sz * 0.6f, 0, 1.0f, 0.4f, 0.1f, 0.35f + 0.2f * (float) Math.sin(t / 90.0 + i), true);
        }
    }

    private static void crystal(St st, Element self, long t, float cx, float cy) {
        float D = st.D;
        float busy = Math.max(st.shArrive[0], st.shArrive[1]);
        float al = 0.35f + 0.2f * (float) Math.sin(t / 500.0) + 0.3f * busy + 0.3f * st.stingFlash;
        if (ModV35.art("hornet_stage5_core")) ModFx.sprR("hornet_stage5_core", cx, cy, D, D, self.spin, 1, 1, 1, Math.min(1, al), true);
        toWorld(self.spin, lx(st, STX), lx(st, STY), a);
        float gx = cx + a.x, gy = cy + a.y;
        ModFx.sprR("fx_glow", gx, gy, 0.16f * D, 0.16f * D, 0, 1.0f, 0.7f, 0.2f, 0.45f + 0.5f * st.stingFlash, true);
        if (st.aimT > 0) {
            float ax = st.aimX - self.position.x + cx, ay = st.aimY - self.position.y + cy;
            float rotd = (float) Math.toDegrees(Math.atan2(ax - gx, -(ay - gy)));
            ModFx.sprR("fx_glow", gx + (ax - gx) * 0.02f, gy + (ay - gy) * 0.02f, 0.06f * D, 0.22f * D, rotd, 1, 0.85f, 0.4f, 0.8f * st.aimT, true);
        }
    }

    /** ModCaps.drawUnder (before the hull): player wings / wing shields. */
    public static void under(PlayerShip ps) {
        try {
            if (!active(ps)) return;
            Drawable hd = ps.getDrawableObject();
            if (hd == null || hd.dimensions == null) return;
            P.D = hd.dimensions.x;
            Vector2 sc = GameRenderer.screenCenter;
            ModFx.relative = true;
            try {
                wings(P, ps, System.currentTimeMillis(), sc.x - ps.position.x, sc.y - ps.position.y);
            } finally {
                ModFx.relative = false;
            }
        } catch (Throwable th) {
            ModFx.relative = false;
        }
    }

    /** ModCaps.drawOver: player crystal + Stinger glow. */
    public static void over(PlayerShip ps) {
        try {
            if (!active(ps)) return;
            Drawable hd = ps.getDrawableObject();
            if (hd == null || hd.dimensions == null) return;
            P.D = hd.dimensions.x;
            Vector2 sc = GameRenderer.screenCenter;
            ModFx.relative = true;
            try {
                crystal(P, ps, System.currentTimeMillis(), sc.x, sc.y);
            } finally {
                ModFx.relative = false;
            }
        } catch (Throwable th) {
            ModFx.relative = false;
        }
    }

    // ------------------------------------------------------------------ enemies (owner 05:01)
    /** ModV35.skin: hornet_stage5 -> hornet_stage5_hull when the parts ship; remembers the enemy for underEnemy. */
    static String enemySkin(Element e, String n) {
        if ("hornet_stage5".equals(n) && partsShip()) {
            if (!ENEMY.containsKey(e)) ENEMY.put(e, new St());
            return "hornet_stage5_hull";
        }
        ENEMY.remove(e);
        return n;
    }

    /**
     * ModLive.draw (before the enemy hull is queued): runs the enemy Hornet's shields + Stinger (frame time from the draw
     * clock; enemies off screen pause, as their wings snap back on the next draw) and draws wings, shields and crystal.
     */
    public static void underEnemy(Element e) {
        try {
            St st = ENEMY.get(e);
            if (st == null) return;
            if (e.removed || e.life <= 0) { ENEMY.remove(e); return; }
            Drawable hd = e.getDrawableObject();
            if (hd == null || hd.dimensions == null) return;
            st.D = hd.dimensions.x;
            long now = System.currentTimeMillis();
            long j = st.lastTick == 0 ? 16 : Math.max(0, Math.min(100, now - st.lastTick));
            st.lastTick = now;
            update(st, e, j, now);
            float dps = 0;
            if (e instanceof Ennemis) {
                Ennemis en = (Ennemis) e;
                if (en.milleSecBetweenShots > 0) dps = en.bulletDamage * 1000f / en.milleSecBetweenShots;
            }
            sting(st, e, j, now, dps);
            wings(st, e, now, 0, 0);
            crystal(st, e, now, e.position.x, e.position.y);
        } catch (Throwable th) {
            // visuals never break the frame
        }
    }
}
