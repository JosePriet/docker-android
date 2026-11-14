package fr.testudo.spacecorsair.mod;

import fr.testudo.spacecorsair.business.Element;
import fr.testudo.spacecorsair.engine.ObjectRegistry;
import fr.testudo.spacecorsair.engine.Vector2;
import fr.testudo.spacecorsair.business.ennemis.EnnemisSpecByLevel;
import fr.testudo.spacecorsair.business.ennemis.Ennemis;
import fr.testudo.spacecorsair.business.ennemis.EnnemisSpec;
import fr.testudo.spacecorsair.business.world.civil.GuardianCivilShip;
import fr.testudo.spacecorsair.business.player.PlayerShip;
import fr.testudo.spacecorsair.display.Drawable;
import fr.testudo.spacecorsair.display.Texture;

import java.util.ArrayList;
import java.util.Map;
import java.util.WeakHashMap;

/**
 * v43a-6 (owner 2026-11-14): the SRS Aegis (and the Spartan police titan built from it) launches rail drones while
 * hostile: one every DRONE_EVERY_MS up to MAX_DRONES alive. Drones are small fighters (drone_aegis art, redesigned from
 * the Hornet by src/genaegisdrone.py) that chase the player and fire their own rail shot every RAIL_MS; their stock
 * blaster is silenced. Each rail hit = RAIL_SHARE of one Aegis battery shot. Drones die with their carrier.
 */
public final class ModAegisDrones {
    private ModAegisDrones() {}

    static final int MAX_DRONES = 5;
    static final long DRONE_EVERY_MS = 6000;
    static final long RAIL_MS = 2200;
    static final float RAIL_SHARE = 0.6f;
    static final int SIZE = 170;
    static final float RAIL_SPEED = 26, RAIL_RANGE = 3200;

    static final class Wing {
        final ArrayList<Ennemis> drones = new ArrayList<Ennemis>();
        long next = 3000;
    }

    private static final Map<GuardianCivilShip, Wing> wings = new WeakHashMap<GuardianCivilShip, Wing>();
    private static final Map<Ennemis, long[]> reload = new WeakHashMap<Ennemis, long[]>();
    private static final Map<Ennemis, Float> shotOf = new WeakHashMap<Ennemis, Float>();
    private static Drawable drawable;

    /** From ModCapitals.guns, per frame for a hostile spartan flagship (also the Spartan police titan). */
    static void tick(GuardianCivilShip g, float batteryShot, int lvl, PlayerShip ps, long j) {
        try {
            Wing w = wings.get(g);
            if (w == null) { w = new Wing(); wings.put(g, w); }
            for (int i = w.drones.size() - 1; i >= 0; i--) {
                Ennemis e = w.drones.get(i);
                if (e.removed || e.life <= 0) { w.drones.remove(i); reload.remove(e); shotOf.remove(e); }
            }
            w.next -= j;
            if (w.next <= 0 && w.drones.size() < MAX_DRONES) {
                w.next = DRONE_EVERY_MS;
                Ennemis e = spawn(g, lvl, ps);
                if (e != null) { w.drones.add(e); shotOf.put(e, batteryShot * RAIL_SHARE); }
            }
            for (Ennemis e : w.drones) fly(e, ps, j);
        } catch (Throwable t) {
            // no drones this frame
        }
    }

    /** Carrier gone (killed, sector change, pooled): its drones go too. */
    static void drop(GuardianCivilShip g) {
        Wing w = wings.remove(g);
        if (w == null) return;
        for (Ennemis e : w.drones) { e.removed = true; reload.remove(e); shotOf.remove(e); }
    }

    static void clear() {
        for (GuardianCivilShip g : new ArrayList<GuardianCivilShip>(wings.keySet())) drop(g);
        wings.clear();
    }

    private static Drawable drawable() {
        if (drawable == null) {
            Texture t = ModArt.lazyTex("drone_aegis");
            if (t == null) return null;
            drawable = new ModArt.Art(new Vector2(SIZE, SIZE), t, false);
        }
        return drawable;
    }

    private static Ennemis spawn(GuardianCivilShip g, int lvl, PlayerShip ps) {
        Drawable d = drawable();
        if (d == null) return null;
        EnnemisSpec[] t = EnnemisSpecByLevel.BasciEnnemisSpec;
        int idx = Math.max(0, Math.min(t.length - 1, lvl));
        ModV34.want(lvl);
        ModFleet.Fighter f = new ModFleet.Fighter();
        f.d = d;
        f.phys = new Vector2(SIZE * 0.7f, SIZE * 0.7f);
        f.initLevelConfig(t[idx], idx);
        f.milleSecBetweenShots = Long.MAX_VALUE / 4;   // stock blaster silenced: the rail fires instead
        f.bulletDamage = 0;
        f.pouseeForce *= 1.6f;
        f.specificName = ModLang.tr("Aegis Rail Drone");
        f.specificNameDecalX = -1;
        double an = Math.random() * Math.PI * 2;
        f.position.setSameAs(g.position).add((float) Math.cos(an) * 500, (float) Math.sin(an) * 500);
        f.updateSapCoords();
        f.initAttackTarget(ps);
        f.addToCurrentLevel();
        reload.put(f, new long[] {800 + (long) (Math.random() * 800)});
        ModFx.part("fx_glow", f.position.x, f.position.y, 0, 0, 400, 80, 260, 0.45f, 0.85f, 1.0f, 0.9f, true, true);
        ModSound.play("warp_in", 0.4f, 1.6f, 400);
        return f;
    }

    private static void fly(Ennemis e, PlayerShip ps, long j) {
        if (e.removed || ps == null || ps.removed) return;
        long[] r = reload.get(e);
        if (r == null) return;
        r[0] -= j;
        float dist = e.position.distance(ps.position);
        if (r[0] > 0 || dist > RAIL_RANGE) return;
        r[0] = RAIL_MS;
        Float dmg = shotOf.get(e);
        float ang = (float) Math.toDegrees(e.position.getAngularWithInRad(ps.position)) + 90.0f;
        fr.testudo.spacecorsair.business.projectiles.EnergyBullet p = fr.testudo.spacecorsair.business.factory.GamePools.newEnnergyBullet()
            .init(dmg == null ? 100 : dmg, 4, e, 0.8f, 0.55f, 0.95f, 1.0f, ModWeapons.TAG[ModWeapons.RAIL]);
        p.position.setSameAs(e.position);
        p.speed.set(0.0f, -RAIL_SPEED).applyRotatation(Math.toRadians(ang));
        p.spin = ang;
        p.lifeTimeInMilli = (long) (RAIL_RANGE * 1.15f / (RAIL_SPEED * 0.1f));
        ObjectRegistry.INSTANCE.game.currentLevel.toAdd.add(p);
        ModFx.part("fx_core", e.position.x, e.position.y, 0, 0, 120, 30, 110, 0.55f, 0.95f, 1.0f, 1.0f, true, true);
        float gain = Math.max(0, 1.0f - dist / 5000.0f);
        if (gain > 0.05f) ModSound.play(ModWeapons.SOUND[ModWeapons.RAIL], 0.5f * gain, 1.25f, ModWeapons.GAP[ModWeapons.RAIL]);
    }
}
