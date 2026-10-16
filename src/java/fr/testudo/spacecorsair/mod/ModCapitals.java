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
    }

    static final Map<GuardianCivilShip, Cap> caps = new WeakHashMap<GuardianCivilShip, Cap>();
    private static ModFx.Sprite[] hullSprites;
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
        int lvl = Math.max(0, Math.min(20, id.levelMax));
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
            // turrets on the rendered mounts, tracking the player when hostile
            if (c.mounts != null) {
                PlayerShip ps = ObjectRegistry.INSTANCE.playerShip;
                boolean hostile = g.chasseTarget != null;
                float ts = sz * 0.07f;
                for (int k = 0; k + 1 < c.mounts.length; k += 2) {
                    ModFx.local(g.position, g.spin, c.mounts[k] * sz, c.mounts[k + 1] * sz, a);
                    float ang = g.spin;
                    if (hostile && ps != null) ang = (float) Math.toDegrees(Math.atan2(ps.position.y - a.y, ps.position.x - a.x)) - 90 + 180;
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
