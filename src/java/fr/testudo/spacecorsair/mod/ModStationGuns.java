package fr.testudo.spacecorsair.mod;

import fr.testudo.spacecorsair.business.Element;
import fr.testudo.spacecorsair.business.ennemis.AlienBlatte;
import fr.testudo.spacecorsair.business.ennemis.AlienRat;
import fr.testudo.spacecorsair.business.ennemis.AlienTourelle;
import fr.testudo.spacecorsair.business.ennemis.Ennemis;
import fr.testudo.spacecorsair.business.ennemis.EnnemisSpec;
import fr.testudo.spacecorsair.business.ennemis.EnnemisSpecByLevel;
import fr.testudo.spacecorsair.business.ennemis.UfoAlienShip;
import fr.testudo.spacecorsair.business.player.PlayerShip;
import fr.testudo.spacecorsair.business.projectiles.EnergyBullet;
import fr.testudo.spacecorsair.business.projectiles.Projectile;
import fr.testudo.spacecorsair.business.world.civil.CivilShip;
import fr.testudo.spacecorsair.business.world.station.AlienTradeStation;
import fr.testudo.spacecorsair.business.world.station.BasicTradeStation;
import fr.testudo.spacecorsair.business.world.station.CasinoStation;
import fr.testudo.spacecorsair.business.world.station.MissionStation;
import fr.testudo.spacecorsair.business.world.station.Station;
import fr.testudo.spacecorsair.business.world.station.ThreeDockStation;
import fr.testudo.spacecorsair.display.Drawable;
import fr.testudo.spacecorsair.engine.ObjectRegistry;
import fr.testudo.spacecorsair.engine.Vector2;
import fr.testudo.spacecorsair.game.levels.Level;
import fr.testudo.spacecorsair.game.levels.LevelId;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * v44 station turrets (owner 2026-11-04 21:26: "only attack enemy entities (enemies of the faction or non-allied ships)
 * or the player if he's being hostile by attacking civilians or police").
 *
 * Which stations: the ones drawing GPT poi_* art (ModPoi), on the pads of that art (MOUNTS). A station still on its stock
 * sprite has no turrets. Tutorial, arena and multiplayer sectors never get them (ModSector.excluded).
 *
 * Station faction: Kre'tari trade stations = Kre'tari; the v35 sector base = that base's faction (ModSector.baseFaction);
 * every other station = the sector owner (ModMap.owner), or neutral in unclaimed sectors.
 *
 * Targets (hostile()): the player and the player's drones only while the sector's police heat is above 0 (the player
 * attacked civilians or police, ModPolice); enemy NPCs that are not of the station's faction or an ally (ModRep.REL);
 * faction wing / pursuit ships of an enemy faction. Never civilians, freighters, police, flagships or allied ships.
 * Station shots pass through everything else (Mod.sideCheck / Mod.ignoreCollision) and never shoot down missiles.
 *
 * Guns: the station faction's flagship battery types (ModCapitals.GUNS: family, reload, speed, range, colour); neutral
 * stations fire a light autocannon. Each turret deals TURRET_DPS x the damage per second of a destroyer of the sector's
 * top level (stock rat/ufo rows x ModV34.curve), so stations scale with the sector, not with the player.
 */
public final class ModStationGuns {
    private ModStationGuns() {}

    // ------------------------------------------------------------------ numbers (owner: "you can decide")
    /** Per-turret firepower in same-level destroyers: outposts and mining stations, faction bases. */
    static final float OUTPOST_DPS = 1.5f, BASE_DPS = 2.5f;
    /** Turret sprite side as a fraction of the structure's drawn side (the pads are ~7-9% of it). */
    static final float TURRET = 0.15f;
    /** Turrets wake up when the player is this close to the station (no work in the far corners of a sector). */
    static final float ACTIVE = 9000f;
    static final long SCAN_MS = 1000, AIM_MS = 400;
    static final float AIM_TOLERANCE = 8f;

    /** Neutral (unclaimed sector) stations: light autocannon, white tracer. */
    static final ModCapitals.Gun NEUTRAL = new ModCapitals.Gun(ModWeapons.AUTO, 0.3f, 240, 13, 2400, 6, 1, 120, 0.85f, 0.9f, 1.0f);
    static final String NEUTRAL_TEX = "hw_turret_cap_spartan";   // plain steel turret; no faction look of its own

    /** Turret pads on the poi_* art: fractions of the 1024 canvas from its centre, +y = image down (as ModCapitalData). */
    static final Map<String, float[]> MOUNTS = new HashMap<String, float[]>();
    static {
        MOUNTS.put("poi_base_helion", new float[]{-0.1966f, -0.2363f, 0.1965f, -0.2365f, -0.2036f, 0.1746f, 0.2034f, 0.1747f});
        MOUNTS.put("poi_base_ironclad", new float[]{-0.3158f, -0.2942f, 0.3159f, -0.2943f, -0.3159f, 0.2898f, 0.3161f, 0.2899f});
        MOUNTS.put("poi_base_kretari", new float[]{-0.2693f, -0.1530f, 0.2708f, -0.1531f, -0.2729f, 0.1542f, 0.2720f, 0.1531f});
        MOUNTS.put("poi_base_reaver", new float[]{-0.2882f, -0.3260f, 0.2869f, -0.3260f, -0.2881f, 0.3230f, 0.2870f, 0.3228f});
        MOUNTS.put("poi_base_spartan", new float[]{0.0005f, -0.3272f, -0.3355f, 0.0018f, 0.3355f, 0.0016f, 0.0002f, 0.3199f});
        MOUNTS.put("poi_base_varn", new float[]{-0.1133f, -0.3170f, 0.1101f, -0.3136f, -0.3344f, 0.2071f, 0.3352f, 0.2098f});
        MOUNTS.put("poi_base_warden", new float[]{-0.2894f, -0.1349f, 0.2820f, -0.1365f, -0.2828f, 0.1211f, 0.2860f, 0.1228f});
        MOUNTS.put("poi_mining_1", new float[]{-0.2400f, -0.2100f, 0.1800f, 0.1900f});
        MOUNTS.put("poi_mining_2", new float[]{-0.2700f, -0.2050f, 0.3000f, 0.0000f});
        MOUNTS.put("poi_mining_3", new float[]{-0.2450f, -0.2550f, 0.3400f, 0.0800f});
        MOUNTS.put("poi_outpost_1", new float[]{-0.1047f, -0.1108f, 0.1029f, -0.1115f, -0.1046f, 0.1091f, 0.1028f, 0.1091f});
        MOUNTS.put("poi_outpost_2", new float[]{-0.0948f, -0.0949f, 0.0896f, -0.0952f, -0.0946f, 0.0881f, 0.0890f, 0.0871f});
        MOUNTS.put("poi_outpost_3", new float[]{-0.1033f, -0.1330f, 0.1035f, -0.1331f, -0.0002f, 0.0469f});
    }

    // ------------------------------------------------------------------ state (game thread only)
    static final class Post {
        Station st;
        String art;
        int f = -1;                 // ModCapitals.FACTIONS index, -1 neutral
        float[] mounts;
        float side, ts, shot, range;
        ModCapitals.Gun[] guns;
        String tex;
        float[] ang;
        int[] reload, kick;
        Element target;
        long aimLeft;
        boolean logged;
    }

    private static final ArrayList<Post> posts = new ArrayList<Post>();

    /** v43a-15: ModEnemyGuns, the faction index of a gun station, -1 neutral or not a gun post. */
    static int factionOfSender(Element e) {
        for (int i = 0; i < posts.size(); i++) if (posts.get(i).st == e) return posts.get(i).f;
        return -1;
    }
    private static LevelId level;
    private static long scanLeft;
    private static final Vector2 mz = new Vector2(), aim = new Vector2(), a = new Vector2();
    private static final ArrayList<Element> enemies = new ArrayList<Element>();

    // ------------------------------------------------------------------ rules
    /** The player counts as hostile to stations while the sector's police are after them. */
    static boolean playerWanted() {
        return ModPolice.heat() > 0;
    }

    static int rel(int f, String key) {
        if (f < 0 || key == null || key.length() == 0) return -1;
        int i = ModRep.index(ModCapitals.FACTIONS[f].key), j = ModRep.index(key);
        if (i < 0 || j < 0) return -1;
        if (i == j) return 2;                      // own faction
        return ModRep.REL[i][j];
    }

    /** Faction key of an enemy NPC for the station rules: named Reaver / Kre'tari ships and v35 wings by their faction;
     *  stock aliens are the Brood; stock pirates in Pirate Bay are the Reavers; any other stock enemy is unaligned (""). */
    static String npcFaction(Element e, LevelId id) {
        String k = ModV34.factionOf(e);
        if (k != null && k.length() > 0) return k;
        if (e instanceof AlienRat || e instanceof UfoAlienShip || e instanceof AlienBlatte || e instanceof AlienTourelle) return "kretari";
        int o = ModMap.owner(id);
        if (o >= 0 && "reaver".equals(ModCapitals.FACTIONS[o].key)) return "reaver";
        return "";
    }

    /** Target kinds for rule(). */
    public static final int PLAYER = 0, DRONE = 1, PROTECTED = 2, ENEMY_NPC = 3, FACTION_WING = 4, CIVIL = 5;

    /** true = a station of faction f (-1 neutral) may shoot e. */
    static boolean hostile(int f, Element e, LevelId id) {
        if (e == null || e.removed) return false;
        if (e instanceof PlayerShip) return rule(f, PLAYER, "", playerWanted(), ((PlayerShip) e).isDocked);
        if (e.isPlayer) return false;
        if (Mod.isDrone(e)) return rule(f, DRONE, "", playerWanted(), false);
        if (ModPolice.isPolice(e) || ModCapitals.cap(e) != null) return false;
        if (e instanceof Ennemis) return rule(f, ENEMY_NPC, npcFaction(e, id), false, false);
        if (e instanceof CivilShip && ModSector.factionShip(e)) return rule(f, FACTION_WING, ModV34.factionOf(e), false, false);
        return false;
    }

    /** The owner's rule as a pure function (work/dtest/V44S.java). key = the target's faction ("" unaligned). */
    public static boolean rule(int f, int kind, String key, boolean wanted, boolean docked) {
        switch (kind) {
            case PLAYER: return wanted && !docked;                           // only while hostile to civilians / police
            case DRONE: return wanted;
            case ENEMY_NPC:
                if (key == null || key.length() == 0 || f < 0) return true;  // unaligned raiders: everyone's enemy
                return rel(f, key) < 1;                                      // not own (2), not an ally (1)
            case FACTION_WING: return f >= 0 && rel(f, key) == -1;           // only an enemy faction's wing / pursuer
            default: return false;                                           // police, flagships, civilians, freighters
        }
    }

    // ------------------------------------------------------------------ hooks
    /** Mod.sideCheck: 0 = not a station shot, 1 = passes through, 2 = hits. */
    static int side(Element sender, Element target) {
        if (!(sender instanceof Station)) return 0;
        Post p = post(sender);
        if (p == null) return 1;
        return hostile(p.f, target, level) ? 2 : 1;
    }

    /** Mod.ignoreCollision: station shots never touch other projectiles and only touch what they may hit. */
    static boolean ignore(Element a, Element b) {
        boolean sa = a instanceof Projectile && ((Projectile) a).sender instanceof Station;
        boolean sb = b instanceof Projectile && ((Projectile) b).sender instanceof Station;
        if (!sa && !sb) return false;
        if (a instanceof Projectile && b instanceof Projectile) return true;
        return sa ? side(((Projectile) a).sender, b) == 1 : side(((Projectile) b).sender, a) == 1;
    }

    private static Post post(Element st) {
        for (int i = 0; i < posts.size(); i++) if (posts.get(i).st == st) return posts.get(i);
        return null;
    }

    /** Per frame from ModCaps.tick. */
    static void tick(PlayerShip ps, long j) {
        try {
            Level lvl = ObjectRegistry.INSTANCE.game.currentLevel;
            LevelId id = lvl == null ? null : lvl.id;
            if (id != level) {
                posts.clear();
                level = id;
                scanLeft = 0;
            }
            if (id == null || ObjectRegistry.INSTANCE.game.mapMode || ModSector.excluded(id)) return;
            scanLeft -= j;
            if (scanLeft <= 0) {
                scanLeft = SCAN_MS;
                scan(lvl, id);
            }
            for (int i = 0; i < posts.size(); i++) {
                Post p = posts.get(i);
                if (p.st.removed) continue;
                if (ps.position.distance(p.st.position) > ACTIVE + p.range) { p.target = null; continue; }
                guns(p, ps, id, j);
            }
        } catch (Throwable t) {
            // stations never break the frame
        }
    }

    private static void scan(Level lvl, LevelId id) {
        for (int i = posts.size() - 1; i >= 0; i--) if (posts.get(i).st.removed) posts.remove(i);
        List<Element> els = lvl.elements;
        for (int i = 0; i < els.size(); i++) {
            Element e = els.get(i);
            if (!(e instanceof Station) || e.removed || !poiClass(e) || post(e) != null) continue;
            Station st = (Station) e;
            String art = ModPoi.artFor(st);
            float[] m = art == null ? null : MOUNTS.get(art);
            if (m == null || ModArt.ready(art) == null) continue;   // stock sprite: no pads, no turrets
            Drawable d = st.getDrawableObject();
            if (d == null || d.dimensions == null) continue;
            Post p = new Post();
            p.st = st;
            p.art = art;
            p.mounts = m;
            p.side = Math.max(d.dimensions.x, d.dimensions.y);
            p.ts = p.side * TURRET;
            p.f = factionOf(st, id);
            p.guns = p.f >= 0 ? ModCapitals.GUNS[p.f] : new ModCapitals.Gun[]{NEUTRAL};
            p.tex = p.f >= 0 ? ModCapitals.FACTIONS[p.f].turretTex : NEUTRAL_TEX;
            ModArt.prefetch(p.tex);
            float mult = art.startsWith("poi_base_") ? BASE_DPS : OUTPOST_DPS;
            p.shot = destroyerDps(Math.max(1, id.levelMax)) * mult;
            for (ModCapitals.Gun g : p.guns) p.range = Math.max(p.range, g.range);
            int n = m.length / 2;
            p.ang = new float[n];
            p.reload = new int[n];
            p.kick = new int[n];
            for (int k = 0; k < n; k++) {
                p.ang[k] = outward(p, k);
                p.reload[k] = 250 * k;                                // staggered first salvo
            }
            posts.add(p);
        }
    }

    /** The five station classes ModPoi draws (hooks44_poi). */
    private static boolean poiClass(Element e) {
        return e instanceof ThreeDockStation || e instanceof BasicTradeStation || e instanceof MissionStation
            || e instanceof CasinoStation || e instanceof AlienTradeStation;
    }

    static int factionOf(Station st, LevelId id) {
        if (st instanceof AlienTradeStation) return ModRep.index("kretari");
        Vector2 b = ModSector.basePoint(id);
        if (b != null && b.distance(st.position) < 50) return ModSector.baseFaction(id);
        return ModMap.owner(id);
    }

    /** Damage per second of a destroyer of level lv (stock rat / ufo rows as ModV34.baseHull, x the v34 curve). */
    public static float destroyerDps(int lv) {
        try {
            EnnemisSpec[] r = EnnemisSpecByLevel.alienRatSpec, u = EnnemisSpecByLevel.UfoSpec;
            int i = Math.max(0, Math.min(Math.min(r.length, u.length) - 1, lv));
            float dmg = (r[i].shootDamage + u[i].shootDamage) / 2f;
            float reload = Math.max(100f, (r[i].shootReload + u[i].shootReload) / 2f);
            return dmg * 1000f / reload * ModV34.curve(lv);
        } catch (Throwable t) {
            return 20f * ModV34.curve(lv);
        }
    }

    private static float outward(Post p, int k) {
        float x = p.mounts[2 * k], y = p.mounts[2 * k + 1];
        ModFx.local(p.st.position, p.st.spin, x * p.side, y * p.side, mz);
        return (float) Math.toDegrees(Math.atan2(mz.y - p.st.position.y, mz.x - p.st.position.x)) + 90;
    }

    // ------------------------------------------------------------------ aim and fire
    private static void guns(Post p, PlayerShip ps, LevelId id, long j) {
        p.aimLeft -= j;
        if (p.aimLeft <= 0 || (p.target != null && !hostile(p.f, p.target, id))) {
            p.aimLeft = AIM_MS;
            p.target = pick(p, ps, id);
        }
        Element tg = p.target;
        int n = p.mounts.length / 2;
        for (int k = 0; k < n; k++) {
            ModCapitals.Gun gun = p.guns[k % p.guns.length];
            if (p.reload[k] > 0) p.reload[k] -= j;
            if (p.kick[k] > 0) p.kick[k] -= j;
            ModFx.local(p.st.position, p.st.spin, p.mounts[2 * k] * p.side, p.mounts[2 * k + 1] * p.side, mz);
            float want = outward(p, k);
            float dist = tg == null ? Float.MAX_VALUE : tg.position.distance(mz);
            boolean engage = tg != null && dist < gun.range;
            if (engage) {
                float t = dist / (gun.speed * 100.0f);                    // flight time in s (speed is per 10 ms)
                aim.set(tg.position.x + tg.speed.x * 100.0f * t, tg.position.y + tg.speed.y * 100.0f * t);
                want = (float) Math.toDegrees(Math.atan2(aim.y - mz.y, aim.x - mz.x)) + 90;
            }
            float d = ModLive.normDelta(want - p.ang[k]);
            float step = gun.turn * j / 1000.0f;
            p.ang[k] = Element.normalizeSpin(p.ang[k] + Math.max(-step, Math.min(step, d)));
            if (!engage || p.reload[k] > 0 || Math.abs(d) > AIM_TOLERANCE) continue;
            p.reload[k] = (int) (gun.reload * (0.9f + 0.2f * (float) Math.random()));
            p.kick[k] = 160;
            // per-turret damage per second = p.shot, whatever the battery's reload and salvo size
            float dmg = p.shot * gun.reload / 1000f / Math.max(1, gun.shots);
            fire(p, gun, mz, p.ang[k], dist, dmg, tg, ps);
            if (!p.logged && ModDev.testFlag("corsair_nodialog")) {
                p.logged = true;
                android.util.Log.i("ModStationGuns", p.art + " f=" + p.f + " fire at " + tg.getClass().getSimpleName() + " dmg=" + Math.round(dmg));
            }
        }
    }

    /** Nearest target in range of any battery, measured from the station's centre. */
    private static Element pick(Post p, PlayerShip ps, LevelId id) {
        Element best = null;
        float bd = p.range + p.side * 0.5f;
        if (hostile(p.f, ps, id)) {
            float d = ps.position.distance(p.st.position);
            if (d < bd) { best = ps; bd = d; }
        }
        Mod.enemiesInto(enemies);
        for (int i = 0; i < enemies.size(); i++) {
            Element e = enemies.get(i);
            float d = e.position.distance(p.st.position);
            if (d < bd && hostile(p.f, e, id)) { best = e; bd = d; }
        }
        if (p.f >= 0) {   // enemy faction wings / pursuers and (while wanted) the player's drones
            List<Element> els = ObjectRegistry.INSTANCE.game.currentLevel.elements;
            for (int i = 0; i < els.size(); i++) {
                Element e = els.get(i);
                if (!(e instanceof CivilShip) && !Mod.isDrone(e)) continue;
                float d = e.position.distance(p.st.position);
                if (d < bd && hostile(p.f, e, id)) { best = e; bd = d; }
            }
        }
        enemies.clear();
        return best;
    }

    private static void fire(Post p, ModCapitals.Gun gun, Vector2 at, float ang, float dist, float dmg, Element tg, PlayerShip ps) {
        double rad = Math.toRadians(ang);
        float fx = (float) Math.sin(rad), fy = -(float) Math.cos(rad);       // unit barrel direction
        float mx = at.x + fx * p.ts * 0.4f, my = at.y + fy * p.ts * 0.4f;
        for (int i = 0; i < gun.shots; i++) {
            float deg = ang + (gun.shots > 1 ? (i - (gun.shots - 1) / 2.0f) * gun.spread : (float) (Math.random() - 0.5) * 2 * gun.spread);
            EnergyBullet b = fr.testudo.spacecorsair.business.factory.GamePools.newEnnergyBullet()
                .init(dmg, 6, p.st, 1.0f, gun.r, gun.g, gun.b, ModWeapons.TAG[gun.fam]);
            b.level = tg.getLevel();                                   // no level mitigation: the sector curve is in dmg
            b.position.set(mx, my);
            b.speed.set(0.0f, -gun.speed).applyRotatation(Math.toRadians(deg));
            b.spin = deg;
            b.lifeTimeInMilli = (long) (gun.range * 1.15f / (gun.speed * 0.1f));
            ObjectRegistry.INSTANCE.game.currentLevel.toAdd.add(b);
        }
        float fl = gun.fam == ModWeapons.ARTY ? 160 : gun.fam == ModWeapons.RAIL ? 120 : 80;
        ModFx.part("fx_core", mx, my, 0, 0, 140, fl * 0.3f, fl, gun.r, gun.g, gun.b, 1.0f, true, true);
        ModFx.part("fx_glow", mx, my, fx * 40, fy * 40, 220, fl * 0.5f, fl * 1.6f, gun.r, gun.g * 0.9f, gun.b * 0.8f, 0.7f, true, true);
        float gain = Math.max(0, 1.0f - ps.position.distance(at) / 5000.0f);
        if (gain > 0.05f) ModSound.play(ModWeapons.SOUND[gun.fam], 0.7f * gain, (p.f >= 0 ? ModEnemyGuns.PITCH[p.f] : 1.0f) * ModFx.rnd(0.95f, 1.05f), ModWeapons.GAP[gun.fam]);   // v43a-15 faction pitch
    }

    // ------------------------------------------------------------------ draw
    /** ModLive.draw, after the station is queued: its turrets on top, each at its tracked angle, kicked back on fire. */
    static void draw(Element e) {
        if (!(e instanceof Station) || posts.isEmpty()) return;
        Post p = post(e);
        if (p == null || ModArt.ready(p.art) == null) return;
        int n = p.mounts.length / 2;
        for (int k = 0; k < n; k++) {
            ModFx.local(p.st.position, p.st.spin, p.mounts[2 * k] * p.side, p.mounts[2 * k + 1] * p.side, a);
            float ang = p.ang[k];
            if (p.kick[k] > 0) {
                float kick = p.ts * 0.18f * p.kick[k] / 160.0f;
                double rad = Math.toRadians(ang);
                a.add(-(float) Math.sin(rad) * kick, (float) Math.cos(rad) * kick);
            }
            ModFx.spr(p.tex, a.x, a.y, p.ts, p.ts, ang, 1, 1, 1, 1, false);
        }
    }
}
