package fr.testudo.spacecorsair.mod;

import android.content.SharedPreferences;
import fr.testudo.spacecorsair.business.Element;
import fr.testudo.spacecorsair.business.loot.SpaceObject;
import fr.testudo.spacecorsair.business.loot.SpaceObjectType;
import fr.testudo.spacecorsair.business.player.PlayerShip;
import fr.testudo.spacecorsair.business.world.civil.CivilActivity;
import fr.testudo.spacecorsair.business.world.civil.CivilFactory;
import fr.testudo.spacecorsair.business.world.civil.CivilShip;
import fr.testudo.spacecorsair.business.world.civil.GuardianCivilShip;
import fr.testudo.spacecorsair.business.world.station.Station;
import fr.testudo.spacecorsair.display.Drawable;
import fr.testudo.spacecorsair.engine.ObjectRegistry;
import fr.testudo.spacecorsair.engine.Vector2;
import fr.testudo.spacecorsair.game.levels.LevelId;
import fr.testudo.spacecorsair.textengine.TextSize;
import java.util.List;
import java.util.Map;
import java.util.WeakHashMap;

/**
 * v19 faction flagships. Each faction keeps one titan-class capital at its HQ sector. They are neutral: they cruise
 * around their headquarters and only turn on the player after taking 10% of their hull from the player, or when the
 * player attacks civilians nearby. Built on the game's Guardian cruiser AI with their own sprite, size, hull, guns.
 */
public final class ModCapitals {
    private ModCapitals() {}

    static final class Faction {
        final String key, name, ship;
        final String turretTex;       // "hw_turret_cap_<key>", built once (used per mount per frame)
        final LevelId hq;
        final float r, g, b;
        Faction(String key, String name, String ship, LevelId hq, float r, float g, float b) {
            this.key = key; this.name = name; this.ship = ship; this.hq = hq; this.r = r; this.g = g; this.b = b;
            this.turretTex = "hw_turret_cap_" + key;
        }
    }

    static final Faction[] FACTIONS = {
        new Faction("spartan", "Spartan Republic", "SRS Aegis", LevelId.SPARTAN_HQ, 0.5f, 0.8f, 1.0f),
        new Faction("reaver", "Crimson Reavers", "Bloodforge", LevelId.PIRATE_BAY, 1.0f, 0.45f, 0.15f),
        new Faction("kretari", "Kre'tari Brood", "Brood-Mother", LevelId.THE_HIVE, 0.8f, 0.4f, 1.0f),
        new Faction("varn", "Varn Syndicate", "Syndicate Crown", LevelId.OMICRON_PRIME, 1.0f, 0.75f, 0.35f),
        new Faction("ironclad", "Ironclad Militia", "IMS Bastion", LevelId.ORE_BELT, 1.0f, 0.8f, 0.25f),
        new Faction("helion", "Helion Combine", "Sunspire", LevelId.HELIOSTAT, 1.0f, 0.9f, 0.5f),
        new Faction("warden", "Frontier Authority", "FAV Warden", LevelId.HIGHWAY, 0.45f, 0.65f, 1.0f),
    };

    /** v30 flagship profiles (FACTIONS order): hull and speed multipliers. */
    static final float[] HULL_MULT = {0.8f, 1.5f, 1.1f, 0.7f, 1.2f, 0.75f, 1.0f};
    static final float[] SPEED_MULT = {1.0f, 0.9f, 1.0f, 2.0f, 0.6f, 1.8f, 1.0f};
    static final int SIZE = 1500;                 // drawable size in world units (titans are 1000)
    static final long RESPAWN_MS = 3L * 3600 * 1000;

    static final class Cap {
        Faction f;
        int data = -1;
        float[] mounts;
        final Vector2 anchor = new Vector2();
        boolean hostileAnnounced;
        float shot;                  // v33: base battery damage (the old Guardian canon shot)
        float[] tAng;                // v33 per mount: turret rotation (texture convention), reload left, recoil left
        int[] tReload, tKick;
        boolean fireLogged;
    }

    // ------------------------------------------------------------------ v33 batteries
    /** One battery type: family (ModWeapons), damage x Cap.shot, reload ms, bullet speed (per 10 ms), range, spread deg,
     *  shots per salvo, turn rate deg/s, colour. */
    static final class Gun {
        final int fam, reload, shots;
        final float dmg, speed, range, spread, turn, r, g, b;
        Gun(int fam, float dmg, int reload, float speed, float range, float spread, int shots, float turn, float r, float g, float b) {
            this.fam = fam; this.dmg = dmg; this.reload = reload; this.speed = speed; this.range = range; this.spread = spread;
            this.shots = shots; this.turn = turn; this.r = r; this.g = g; this.b = b;
        }
    }

    /** FACTIONS order; a faction with two types alternates them over its mounts. Totals stay near the old 3 canons. */
    static final Gun[][] GUNS = {
        {new Gun(ModWeapons.RAIL, 3.0f, 2600, 26, 4200, 1, 1, 60, 0.55f, 0.95f, 1.0f)},                 // spartan rails
        {new Gun(ModWeapons.AUTO, 0.3f, 220, 13, 2400, 7, 1, 120, 1.0f, 0.6f, 0.25f)},                  // reaver autocannon flak
        {new Gun(ModWeapons.AUTO, 0.55f, 750, 12, 2600, 10, 3, 90, 0.7f, 1.0f, 0.45f)},                 // kretari bio-spines
        {new Gun(ModWeapons.DISINT, 0.35f, 300, 10, 2400, 2, 1, 90, 1.0f, 0.3f, 0.35f)},                // varn disintegrators
        {new Gun(ModWeapons.ARTY, 4.0f, 3400, 11, 3800, 3, 1, 40, 1.0f, 0.6f, 0.25f)},                  // ironclad heavy artillery
        {new Gun(ModWeapons.BLAST, 0.8f, 650, 9, 1900, 4, 1, 100, 1.0f, 0.85f, 0.45f)},                 // helion blasters
        {new Gun(ModWeapons.RAIL, 3.0f, 2800, 26, 4200, 1, 1, 60, 0.55f, 0.75f, 1.0f),
         new Gun(ModWeapons.ARC, 1.2f, 900, 14, 2200, 2, 1, 90, 0.6f, 0.8f, 1.0f)},                     // warden rail + arc
    };

    static final Map<GuardianCivilShip, Cap> caps = new WeakHashMap<GuardianCivilShip, Cap>();
    private static ModFx.Sprite[] hullSprites, hostileSprites;
    private static final Vector2 phys = new Vector2(SIZE * 0.55f, SIZE * 0.55f);
    private static final Vector2 a = new Vector2(), b = new Vector2();

    static Cap cap(Object o) {
        return o instanceof GuardianCivilShip ? caps.get(o) : null;
    }

    private static SharedPreferences prefs() {
        return ModQol.prefs();
    }

    /** On every sector change (from ModCaps.tick). */
    public static void onLevel() {
        // Guardian ships are pooled: forget the previous sector's flagships before the pool hands them out again
        for (GuardianCivilShip g : caps.keySet()) { ModTitan.titanClass.remove(g); ModTitanAI.forget(g); }
        caps.clear();
        try {
            LevelId id = ObjectRegistry.INSTANCE.game.currentLevel.id;
            for (int i = 0; i < FACTIONS.length; i++) {
                Faction f = FACTIONS[i];
                if (f.hq != id) continue;
                SharedPreferences p = prefs();
                long dead = p == null ? 0 : p.getLong("cap_dead_" + f.key, 0);
                if (dead > 0 && System.currentTimeMillis() - dead < RESPAWN_MS) continue;
                spawn(i, id);
            }
        } catch (Throwable t) {
            // no flagship this time
        }
    }

    private static String testSpawned;

    /** Emulator tests only: /data/local/tmp/corsair_capital names a faction to spawn near the player. */
    static void testSpawn(PlayerShip ps) {
        String v = ModDev.testValue("corsair_capital");
        if (v == null || v.equals(testSpawned)) return;
        testSpawned = v;
        // v33: one test flagship at a time (the previous one would keep firing its batteries at the player)
        for (GuardianCivilShip old : caps.keySet()) {
            if (old.removed) continue;
            old.removed = true;
            ObjectRegistry.INSTANCE.game.currentLevel.toDelete.add(old);
        }
        for (int i = 0; i < FACTIONS.length; i++) {
            if (!FACTIONS[i].key.equals(v)) continue;
            spawn(i, ObjectRegistry.INSTANCE.game.currentLevel.id);
            for (Map.Entry<GuardianCivilShip, Cap> e : caps.entrySet()) {
                if (e.getValue().f == FACTIONS[i]) {
                    e.getValue().anchor.setSameAs(ps.position).add(0, 1700);
                    e.getKey().position.setSameAs(e.getValue().anchor);
                }
            }
        }
    }

    private static GuardianCivilShip spawn(int fi, LevelId id) {
        Faction f = FACTIONS[fi];
        int lvl = Math.max(0, Math.min(ModV34.CAP, id.levelMax));
        GuardianCivilShip g = CivilFactory.newGuardianCivilShip(lvl);
        ModTitanAI.forget(g);                       // pooled: no skill state from a previous life
        g.a = 1.0f;
        Cap c = new Cap();
        c.f = f;
        c.data = ModFxData.index("cap_" + f.key);
        c.mounts = ModCapitalData.mounts(f.key);
        // anchor: off the faction's main station, or the sector centre
        Vector2 anchorAt = new Vector2(0, 0);
        List<Element> els = ObjectRegistry.INSTANCE.game.currentLevel.elements;
        for (int i = 0; i < els.size(); i++) {
            if (els.get(i) instanceof Station) { anchorAt.setSameAs(els.get(i).position); break; }
        }
        c.anchor.setSameAs(anchorAt).add(2600, -1800);
        g.position.setSameAs(c.anchor);
        g.spin = 90;
        float life = (500000f + 30000f * lvl) * HULL_MULT[fi];   // v30 profiles: Bloodforge huge, Crown/Sunspire brittle
        g.maxLife = life;
        g.life = life;
        g.xp = 30 * Math.max(500, g.xp);
        g.amountOfDamageAllowedInRatioByPlayerBeforeRebelion = (int) ModRep.tolerance(f.key);   // 10% of the hull from the player = war (25% when Friendly)
        g.neverEscapeWhenInjured = true;
        g.pourLifeToEscape = 0;
        g.maxPouseeForce = 0.05f * SPEED_MULT[fi];
        g.pouseeForce = 0.05f * SPEED_MULT[fi];
        g.distanceShoot = 3800f;
        int dmg = (int) Math.max(40, g.bulletDamage * 3);
        int reload = (int) Math.max(600, g.milleSecBetweenShots * 0.7f);
        g.canonCenter.init(reload, dmg, 6, 15.0f, 0.8f, 4, 3);
        g.canonProue.init(reload, dmg, 6, 15.0f, 0.8f, 4, 3);
        g.canonPoupe.init(reload, dmg, 6, 15.0f, 0.8f, 4, 3);
        silenceStock(g);                            // v33: the drawn turrets fire instead (guns)
        c.shot = dmg;
        g.specificName = f.name + " flagship: " + f.ship;
        g.specificNameDecalX = -1;
        g.radarPointSize = 12.0f;
        g.radarColorR = f.r;
        g.radarColorG = f.g;
        g.radarColorB = f.b;
        g.setActivity(new CivilActivity[]{
            CivilActivity.newMoove(c.anchor.x + 1400, c.anchor.y),
            CivilActivity.newMoove(c.anchor.x, c.anchor.y + 1400),
            CivilActivity.newMoove(c.anchor.x - 1400, c.anchor.y),
            CivilActivity.newMoove(c.anchor.x, c.anchor.y - 1400),
        });
        caps.put(g, c);
        ModArt.prefetch("cap_" + f.key);            // 1024 px hull: decoded in the background before it comes into view
        ModArt.prefetch(f.turretTex);
        ModTitan.titanClass.put(g, Boolean.TRUE);
        ObjectRegistry.INSTANCE.game.currentLevel.toAdd.add(g);
        return g;
    }

    /** v21 missions: the faction's flagship in this sector, spawned now if needed (ignores the respawn timer). Mission
     *  fights use a 40% hull so they last minutes, not an hour. */
    static GuardianCivilShip ensure(String key, boolean missionFight) {
        try {
            GuardianCivilShip g = null;
            for (Map.Entry<GuardianCivilShip, Cap> e : caps.entrySet()) {
                if (e.getValue().f.key.equals(key) && !e.getKey().removed) { g = e.getKey(); break; }
            }
            if (g == null) {
                for (int i = 0; i < FACTIONS.length; i++) {
                    if (FACTIONS[i].key.equals(key)) { g = spawn(i, ObjectRegistry.INSTANCE.game.currentLevel.id); break; }
                }
            }
            if (g != null && missionFight && g.maxLife > 400000f) {
                g.maxLife *= 0.4f;
                g.life = Math.min(g.life, g.maxLife);
            }
            return g;
        } catch (Throwable t) {
            return null;
        }
    }

    // ------------------------------------------------------------------ hooks on GuardianCivilShip
    /** Hook: getDrawableObject. */
    public static Drawable drawable(GuardianCivilShip g) {
        try {
            Cap c = cap(g);
            if (c == null) return null;
            if (hullSprites == null) hullSprites = new ModFx.Sprite[FACTIONS.length];
            int i = indexOf(c.f);
            if (hullSprites[i] == null) hullSprites[i] = ModFx.fixed("cap_" + c.f.key, SIZE, SIZE, false);
            if (hullSprites[i].myTexture == null) ModFx.rebind(hullSprites[i], "cap_" + c.f.key);
            if (ModLive.titanHostile(g, c) && ModV35.hostileCap(c.f.key) != null) {   // v35 (v34 req 10): hostile art when it ships
                if (hostileSprites == null) hostileSprites = new ModFx.Sprite[FACTIONS.length];
                if (hostileSprites[i] == null) hostileSprites[i] = ModFx.fixed("enemy_cap_" + c.f.key, SIZE, SIZE, false);
                if (hostileSprites[i].myTexture == null) ModFx.rebind(hostileSprites[i], "enemy_cap_" + c.f.key);
                if (hostileSprites[i].myTexture != null) return hostileSprites[i];
            }
            return hullSprites[i].myTexture == null ? null : hullSprites[i];
        } catch (Throwable t) {
            return null;
        }
    }

    private static int indexOf(Faction f) {
        for (int i = 0; i < FACTIONS.length; i++) if (FACTIONS[i] == f) return i;
        return 0;
    }

    /** Hook: getPhysicDimension. */
    public static Vector2 physic(GuardianCivilShip g) {
        try {
            return cap(g) == null ? null : phys;
        } catch (Throwable t) {
            return null;
        }
    }

    /** Hook: pruneColide. -1 = stock test, 0 = no hit, 1 = hit. */
    public static int prune(GuardianCivilShip g, Element e) {
        try {
            if (cap(g) == null) return -1;
            // capsule along the hull's long axis
            a.set(0, -SIZE * 0.38f).applyRotatation(Math.toRadians(g.spin)).add(g.position);
            b.set(0, SIZE * 0.38f).applyRotatation(Math.toRadians(g.spin)).add(g.position);
            float dx = b.x - a.x, dy = b.y - a.y;
            float t = ((e.position.x - a.x) * dx + (e.position.y - a.y) * dy) / (dx * dx + dy * dy);
            t = Math.max(0, Math.min(1, t));
            float px = a.x + dx * t - e.position.x, py = a.y + dy * t - e.position.y;
            float r = SIZE * 0.13f + e.getPhysicDimension().x / 2;
            return px * px + py * py <= r * r ? 1 : 0;
        } catch (Throwable t) {
            return -1;
        }
    }

    /** Hook: registerYourselfToDrawQueue prologue. True = drawn here (skip the stock Guardian overlays). */
    public static boolean draw(GuardianCivilShip g) {
        Cap c = cap(g);
        if (c == null) return false;
        try {
            Drawable d = drawable(g);
            if (d != null) ObjectRegistry.INSTANCE.renderQueue.addToWaitingQueue(g.position, g.cameraRelative, d, g.spin, g.a, 1, 1, 1);
            float sz = SIZE;
            long t = System.currentTimeMillis();
            // engines
            if (c.data >= 0 && g.isPousee) {
                float[] e = ModFxData.ENGINES[c.data];
                for (int k = 0; k + 2 < e.length; k += 3) {
                    float w = Math.max(e[k + 2] * sz * 1.3f, sz * 0.05f);
                    float len = sz * (0.16f + 0.05f * (float) Math.random());
                    ModFx.local(g.position, g.spin, e[k] * sz, e[k + 1] * sz + len * 0.45f, a);
                    ModFx.spr("fx_flame", a.x, a.y, w * 2.0f, len, g.spin, c.f.r, c.f.g, c.f.b, 0.9f, true);
                }
            }
            // turrets on the rendered mounts, each at its own tracked angle (guns), kicked back when it fires
            if (c.mounts != null) {
                float ts = sz * 0.07f;
                for (int k = 0; k + 1 < c.mounts.length; k += 2) {
                    int m = k / 2;
                    ModFx.local(g.position, g.spin, c.mounts[k] * sz, c.mounts[k + 1] * sz, a);
                    float ang = c.tAng != null && m < c.tAng.length ? c.tAng[m] : g.spin;
                    if (c.tKick != null && m < c.tKick.length && c.tKick[m] > 0) {
                        float kick = ts * 0.18f * c.tKick[m] / 160.0f;
                        double rad = Math.toRadians(ang);
                        a.add(-(float) Math.sin(rad) * kick, (float) Math.cos(rad) * kick);   // back along the barrel
                    }
                    ModFx.spr(c.f.turretTex, a.x, a.y, ts, ts, ang, 1, 1, 1, 1, false);
                }
            }
            // running lights and faction aura
            if (c.data >= 0) {
                float[] nv = ModFxData.NAV[c.data];
                float on = (t % 1600) < 180 ? 1 : 0.2f;
                ModFx.local(g.position, g.spin, nv[0] * sz, nv[1] * sz, a);
                ModFx.spr("fx_core", a.x, a.y, 60 * (1 + on), 60 * (1 + on), 0, 1, 0.15f, 0.1f, on, true);
                ModFx.local(g.position, g.spin, nv[2] * sz, nv[3] * sz, a);
                ModFx.spr("fx_core", a.x, a.y, 60 * (1 + on), 60 * (1 + on), 0, 0.15f, 1, 0.3f, on, true);
                // battle damage as the hull drops
                float lp = g.maxLife <= 0 ? 1 : g.life / g.maxLife;
                int stage = lp < 0.25f ? 3 : lp < 0.5f ? 2 : lp < 0.75f ? 1 : 0;
                if (stage > 0) {
                    float[] dm = ModFxData.DMG[c.data];
                    int n = Math.min(dm.length / 2, stage * 3);
                    for (int k = 0; k < n; k++) {
                        ModFx.local(g.position, g.spin, dm[2 * k] * sz, dm[2 * k + 1] * sz, a);
                        ModFx.spr("fx_scorch", a.x, a.y, sz * 0.12f, sz * 0.12f, g.spin + k * 67, 1, 1, 1, 0.85f, false);
                        if (stage >= 2 && Math.random() < 0.08) {
                            ModFx.part("fx_smoke", a.x, a.y, ModFx.rnd(-20, 20), ModFx.rnd(-20, 20), 1800, 60, 220, 0.25f, 0.25f, 0.25f, 0.7f, false, true);
                        }
                        if (stage == 3 && Math.random() < 0.05) {
                            ModFx.part("fx_fire", a.x, a.y, 0, 0, 500, 60, 160, 1.0f, 0.55f, 0.15f, 0.9f, true, true);
                        }
                    }
                }
            }
            ModTitanAI.draw(g, c);
            // name, level and hull bar above the ship
            if (g.specificName != null) {
                if (g.specificNameDecalX == -1) g.specificNameDecalX = (int) (fr.testudo.spacecorsair.engine.GameRenderer.glTextMedium.getLength(g.specificName) / 2.0f);
                a.setSameAs(g.position).add(-g.specificNameDecalX, sz * 0.48f + 42);
                float hr = g.chasseTarget != null ? 1.0f : c.f.r, hg = g.chasseTarget != null ? 0.3f : c.f.g, hb = g.chasseTarget != null ? 0.25f : c.f.b;
                ObjectRegistry.INSTANCE.renderQueue.addTextToTextWaitingQueue(a, false, g.specificName, hr, hg, hb, 1.0f, TextSize.MEDIUM);
            }
            a.setSameAs(g.position).add(15, sz * 0.48f + 10);
            ObjectRegistry.INSTANCE.renderQueue.addToWaitingQueue(a, g.lifeBar);
            if (g.chasseTarget != null && !c.hostileAnnounced) {
                c.hostileAnnounced = true;
                ModRep.flagshipProvoked(c.f.key);
                ModSound.play("flagship_horn", 1.0f, 1.0f, 3000);
                ModQol.post(c.f.name + " flagship " + c.f.ship + ModLang.tr(" is now hostile."));
                ModSound.play("warp_in", 0.6f, 0.7f, 1000);
            }
        } catch (Throwable t) {
            // drawing never breaks the frame
        }
        return true;
    }

    /** The stock Guardian lasers stay silent. Re-armed every frame for a few seconds only: a pooled Guardian handed out
     *  again as an ordinary one gets its guns back. */
    private static void silenceStock(GuardianCivilShip g) {
        g.canonCenter.nextShootAllowed = 3000;
        g.canonProue.nextShootAllowed = 3000;
        g.canonPoupe.nextShootAllowed = 3000;
    }

    private static final Vector2 aim = new Vector2(), mz = new Vector2();   // own scratch: draw() uses a
    private static final float[] TURRET_ART = new float[FACTIONS.length];   // 1 = proj_cap_<key> exists, -1 = not, 0 = unknown

    /** v33, per frame from ModTitanAI.tick: every drawn turret tracks the player and fires its faction battery. */
    static void guns(GuardianCivilShip g, Cap c, PlayerShip ps, long j) {
        silenceStock(g);
        if (c.mounts == null) return;
        int n = c.mounts.length / 2;
        if (c.tAng == null) {
            c.tAng = new float[n];
            c.tReload = new int[n];
            c.tKick = new int[n];
            for (int k = 0; k < n; k++) { c.tAng[k] = g.spin; c.tReload[k] = 300 * k; }   // staggered first salvo
        }
        boolean hostile = !ps.removed && ModLive.titanHostile(g, c);
        Gun[] gs = GUNS[indexOf(c.f)];
        for (int k = 0; k < n; k++) {
            Gun gun = gs[k % gs.length];
            if (c.tReload[k] > 0) c.tReload[k] -= j;
            if (c.tKick[k] > 0) c.tKick[k] -= j;
            ModFx.local(g.position, g.spin, c.mounts[2 * k] * SIZE, c.mounts[2 * k + 1] * SIZE, mz);
            float dist = ps.position.distance(mz);
            float want = g.spin;                                           // idle: along the hull
            boolean engage = hostile && dist < gun.range;
            if (engage) {
                float t = dist / (gun.speed * 100.0f);                        // flight time in s (speed is per 10 ms)
                aim.set(ps.position.x + ps.speed.x * 100.0f * t, ps.position.y + ps.speed.y * 100.0f * t);
                want = (float) Math.toDegrees(Math.atan2(aim.y - mz.y, aim.x - mz.x)) + 90;
            }
            float d = ModLive.normDelta(want - c.tAng[k]);
            float step = gun.turn * j / 1000.0f;
            c.tAng[k] = Element.normalizeSpin(c.tAng[k] + Math.max(-step, Math.min(step, d)));
            if (!engage || c.tReload[k] > 0 || Math.abs(d) > 8) continue;
            c.tReload[k] = (int) (gun.reload * (0.9f + 0.2f * (float) Math.random()));
            c.tKick[k] = 160;
            fire(g, c, gun, mz, c.tAng[k], dist);
            if (!c.fireLogged && ModDev.testFlag("corsair_nodialog")) {
                c.fireLogged = true;
                android.util.Log.i("ModCapitals", c.f.key + " battery fire mount=" + k + " fam=" + ModWeapons.BASE[gun.fam] + " dmg=" + Math.round(c.shot * gun.dmg));
            }
        }
    }

    private static void fire(GuardianCivilShip g, Cap c, Gun gun, Vector2 at, float ang, float dist) {
        double rad = Math.toRadians(ang);
        float fx = (float) Math.sin(rad), fy = -(float) Math.cos(rad);       // unit barrel direction
        float mx = at.x + fx * SIZE * 0.04f, my = at.y + fy * SIZE * 0.04f;
        for (int i = 0; i < gun.shots; i++) {
            float deg = ang + (gun.shots > 1 ? (i - (gun.shots - 1) / 2.0f) * gun.spread : (float) (Math.random() - 0.5) * 2 * gun.spread);
            fr.testudo.spacecorsair.business.projectiles.EnergyBullet p = fr.testudo.spacecorsair.business.factory.GamePools.newEnnergyBullet()
                .init(c.shot * gun.dmg, 6, g, 1.0f, gun.r, gun.g, gun.b, ModWeapons.TAG[gun.fam]);
            p.position.set(mx, my);
            p.speed.set(0.0f, -gun.speed).applyRotatation(Math.toRadians(deg));
            p.speed.add(g.speed);
            p.spin = deg;
            p.lifeTimeInMilli = (long) (gun.range * 1.15f / (gun.speed * 0.1f));
            ObjectRegistry.INSTANCE.game.currentLevel.toAdd.add(p);
        }
        // muzzle flash and a heavier report (fades with distance)
        float fl = gun.fam == ModWeapons.ARTY ? 260 : gun.fam == ModWeapons.RAIL ? 200 : 120;
        ModFx.part("fx_core", mx, my, 0, 0, 140, fl * 0.3f, fl, gun.r, gun.g, gun.b, 1.0f, true, true);
        ModFx.part("fx_glow", mx, my, fx * 40, fy * 40, 220, fl * 0.5f, fl * 1.6f, gun.r, gun.g * 0.9f, gun.b * 0.8f, 0.7f, true, true);
        if (gun.fam == ModWeapons.ARTY) {
            for (int i = 0; i < 2; i++) ModFx.part("fx_smoke", mx, my, fx * 60 + ModFx.rnd(-25, 25), fy * 60 + ModFx.rnd(-25, 25), 1200, 60, 200, 0.45f, 0.42f, 0.4f, 0.55f, false, true);
        }
        float gain = Math.max(0, 1.0f - dist / 5000.0f);
        if (gain > 0.05f) ModSound.play(ModWeapons.SOUND[gun.fam], 0.9f * gain, 0.78f * ModFx.rnd(0.95f, 1.05f), ModWeapons.GAP[gun.fam]);
    }

    /** From ModTitan.bullet: a flagship shell (proj_cap_<key> art when it exists, else the family's titan-size bolt). */
    static Drawable bullet(fr.testudo.spacecorsair.business.projectiles.EnergyBullet e) {
        try {
            Cap c = cap(e.sender);
            if (c == null) return null;
            Drawable fam = ModWeapons.bullet(e, true);                     // trails and the fallback sprite
            int i = indexOf(c.f);
            if (TURRET_ART[i] == 0) TURRET_ART[i] = ModArt.lazyTex("proj_cap_" + c.f.key) != null ? 1 : -1;
            if (TURRET_ART[i] > 0) {
                fr.testudo.spacecorsair.display.Texture t = ModArt.ready("proj_cap_" + c.f.key);
                if (t != null) {
                    float s = ModWeapons.familyOf(e) == ModWeapons.ARTY ? 120 : 90;
                    ModFx.sprTex(t, e.position.x, e.position.y, s * 0.5f, s, e.spin, 1, 1, 1, 1, true, 0, 0, 1, 1);
                    return ModFx.EMPTY;
                }
            }
            return fam;
        } catch (Throwable t) {
            return null;
        }
    }

    /** From ModQol.civilAttacked: a flagship defends civilians attacked near it. */
    public static void civilAttacked(CivilShip victim) {
        try {
            PlayerShip ps = ObjectRegistry.INSTANCE.playerShip;
            for (Map.Entry<GuardianCivilShip, Cap> e : caps.entrySet()) {
                GuardianCivilShip g = e.getKey();
                if (g == null || g.removed || g == victim) continue;
                if (g.position.distance(victim.position) < 4000 || (ps != null && g.position.distance(ps.position) < 4000)) {
                    g.attackPlayerIfItNotTheCaseAlready();
                }
            }
        } catch (Throwable t) {
            // ignore
        }
    }

    /** From Ennemis/civil kill handling (ModCaps.tick): rewards and the respawn timer when a flagship goes down. */
    static void checkDestroyed() {
        if (caps.isEmpty()) return;   // per frame: no iterator in sectors without a flagship
        try {
            java.util.Iterator<Map.Entry<GuardianCivilShip, Cap>> it = caps.entrySet().iterator();
            while (it.hasNext()) {
                Map.Entry<GuardianCivilShip, Cap> e = it.next();
                GuardianCivilShip g = e.getKey();
                Cap c = e.getValue();
                if (g == null || c == null) { it.remove(); continue; }
                if (!g.removed) continue;
                it.remove();                      // pooled: never treat the recycled ship as a flagship
                ModTitan.titanClass.remove(g);
                ModTitanAI.forget(g);
                if (g.life > 0) continue;          // left the sector, not destroyed
                SharedPreferences p = prefs();
                if (p != null) p.edit().putLong("cap_dead_" + c.f.key, System.currentTimeMillis()).commit();
                if (g.damageRecievedByPlayer > g.maxLife * 0.1f) ModRep.flagshipDestroyed(c.f.key);
                if (g.damageRecievedByPlayer > g.maxLife * 0.3f) {
                    ObjectRegistry.INSTANCE.game.playerCurrentShipInventory.addCredit(2000000);
                    for (int k = 0; k < 2; k++) {
                        int f = (int) (Math.random() * ModWeapons.COUNT);
                        SpaceObjectType t = SpaceObjectType.valueOf(ModWeapons.typeName(f, 3));
                        ObjectRegistry.INSTANCE.game.playerCurrentShipInventory.forceAddObject(SpaceObject.of(t));
                    }
                    ModQol.post(c.f.name + " flagship " + c.f.ship + ModLang.tr(" destroyed. Bounty: 2,000,000 credits and two Siege-tier weapons. "
                        + "The faction will field a new flagship in about 3 hours."));
                }
            }
        } catch (Throwable t) {
            // ignore
        }
    }
}
