package fr.testudo.spacecorsair.mod;

import android.app.Activity;
import android.app.AlertDialog;
import android.content.DialogInterface;
import android.text.InputType;
import android.widget.EditText;
import android.widget.Toast;
import fr.testudo.spacecorsair.business.Element;
import fr.testudo.spacecorsair.business.factory.GamePools;
import fr.testudo.spacecorsair.business.loot.LootRarety;
import fr.testudo.spacecorsair.business.loot.SpaceObject;
import fr.testudo.spacecorsair.business.loot.SpaceObjectType;
import fr.testudo.spacecorsair.business.loot.stuff.GearSpec;
import fr.testudo.spacecorsair.business.loot.stuff.alteration.AlterationSpecsBuilder;
import fr.testudo.spacecorsair.business.loot.stuff.laser.LaserSpec;
import fr.testudo.spacecorsair.business.loot.stuff.missile.MissileSpec;
import fr.testudo.spacecorsair.business.loot.stuff.shield.ShieldSpec;
import fr.testudo.spacecorsair.business.player.PlayerInfo;
import fr.testudo.spacecorsair.business.player.PlayerShip;
import fr.testudo.spacecorsair.business.projectiles.LaserBeam;
import fr.testudo.spacecorsair.display.ShockWave;
import fr.testudo.spacecorsair.engine.ObjectRegistry;
import fr.testudo.spacecorsair.engine.Vector2;

/**
 * Developer test kit: the DEV Prototype X-0 hull and three unique items. None of them can drop or be
 * bought; they are granted only by entering the gift code in a station's shop (toolbar "Gift code").
 */
public final class ModDev {
    private ModDev() {}

    /** Gift code (case and spaces ignored). */
    public static final String CODE = "CORSAIRDEV";

    public static final String HULL = "hullDev";
    public static final String[] ITEMS = {"devOverclockLaser", "devPhaseShield", "devSwarmMissile"};

    public static final LaserSpec LASER = new LaserSpec();
    public static final ShieldSpec SHIELD = new ShieldSpec();
    public static final MissileSpec MISSILE = new MissileSpec();

    static {
        LASER.rarety = LootRarety.LEGENDARY;
        LASER.level = 1;
        LASER.damage = 140;
        LASER.reload = 110;
        LASER.precision = 100;
        LASER.bulletSpeed = -14.0f;
        LASER.heatBySec = 0;
        LASER.r = 0.25f;
        LASER.g = 1.0f;
        LASER.b = 0.35f;
        LASER.alterationSpecs = AlterationSpecsBuilder.fermiumLevel15;

        SHIELD.rarety = LootRarety.LEGENDARY;
        SHIELD.level = 1;
        SHIELD.r = 0.25f;
        SHIELD.g = 1.0f;
        SHIELD.b = 0.35f;
        SHIELD.capacity = 20000;
        SHIELD.reloadBySec = 2500;
        SHIELD.deadTime = 150;
        SHIELD.bonuses.lifeRegen.lifePerSecond = 150.0f;
        SHIELD.bonuses.laserDamageReduce.reducePourcent = 50;
        SHIELD.bonuses.missileDamagReduce.reducePourcent = 60;
        SHIELD.bonuses.missileReloadReduced.reduceInPourc = 50;
        SHIELD.bonuses.laserReloadReduce.reduceInPourc = 30;
        SHIELD.bonuses.boosterOptimiser.consumeReductionPourcent = 90;

        MISSILE.rarety = LootRarety.LEGENDARY;
        MISSILE.level = 1;
        MISSILE.damage = 6000.0f;
        MISSILE.radiusDamage = 260.0f;
        MISSILE.life = 60.0f;
        MISSILE.reloadSpeedInMilli = 700L;
        MISSILE.lifeTime = 12;
        MISSILE.maxTurnFactor = 0.98f;
        MISSILE.pousseeForce = 4.5f;
        MISSILE.speedDeperdition = 1.05f;
        MISSILE.agility = 95;
        MISSILE.sendAndForget = true;
        MISSILE.maxCountInventory = 200;
    }

    /** Used by the new enum constants (hooks7). */
    public static GearSpec spec(int i) {
        switch (i) {
            case 0: return LASER;
            case 1: return SHIELD;
            default: return MISSILE;
        }
    }

    public static boolean isDev(SpaceObjectType t) {
        if (t == null) return false;
        String n = t.name();
        if (HULL.equals(n)) return true;
        for (String s : ITEMS) if (s.equals(n)) return true;
        return false;
    }

    /** Dev content is invisible in ship lists until it has been redeemed. */
    public static boolean hidden(SpaceObjectType t) {
        if (t == null) return false;
        ModShips.Hull v34 = ModShips.hull(t);
        if (v34 != null && v34.cls == ModShips.INDUSTRIAL) return true;   // v34: industrials are NPC freighters only
        if (v34 != null && !ModArt.hasArt(v34.art)) return true;           // v34: a hull shows only once its art ships
        if (t.name().startsWith("hullSecret")) {
            // v23 secret ships appear (locked) from Trusted, can be bought at Honored, stay listed once owned
            try {
                ModShips.Hull h = ModShips.hull(t);
                if (ObjectRegistry.INSTANCE.game.playerInfo.availShips.contains(t)) return false;
                return h == null || h.secret == null || ModRep.rank(h.secret) < ModRep.TRUSTED;
            } catch (Exception e) {
                return true;
            }
        }
        if (!HULL.equals(t.name())) return false;
        try {
            return !ObjectRegistry.INSTANCE.game.playerInfo.availShips.contains(t);
        } catch (Exception e) {
            return true;
        }
    }

    public static String label(SpaceObjectType t) {
        String n = t.name();
        if ("devOverclockLaser".equals(n)) return "DEV Overclock Laser";
        if ("devPhaseShield".equals(n)) return "DEV Phase Shield";
        if ("devSwarmMissile".equals(n)) return "DEV Swarm Missile";
        return null;
    }

    public static String desc(SpaceObjectType t) {
        String n = t.name();
        if ("devOverclockLaser".equals(n))
            return ModLang.tr("<b>DEV ONLY</b>. Green test laser: very high damage, near-instant reload, no heat, 5x critical hits.");
        if ("devPhaseShield".equals(n))
            return ModLang.tr("<b>DEV ONLY</b>. 20,000 capacity, regenerates almost instantly, repairs the hull and halves incoming damage.");
        if ("devSwarmMissile".equals(n))
            return ModLang.tr("<b>DEV ONLY</b>. Fire-and-forget heavy missile mod with a huge blast radius and a 0.7 s reload.");
        return null;
    }

    // ------------------------------------------------------------------ gift code

    public static void askCode(final Activity a) {
        final EditText input = new EditText(a);
        input.setInputType(InputType.TYPE_CLASS_TEXT | InputType.TYPE_TEXT_FLAG_CAP_CHARACTERS);
        input.setHint(ModLang.tr("Gift code"));
        new AlertDialog.Builder(a)
            .setTitle(ModLang.tr("Gift code"))
            .setView(input)
            .setPositiveButton(ModLang.tr("Redeem"), new DialogInterface.OnClickListener() {
                public void onClick(DialogInterface d, int w) {
                    String msg = redeem(String.valueOf(input.getText()));
                    Toast.makeText(a, msg, Toast.LENGTH_LONG).show();
                }
            })
            .setNegativeButton(ModLang.tr("Cancel"), null)
            .show();
    }

    /** Hook: start of BuyInapp.getGift (the game's own gift-code box). True = handled here. */
    public static boolean giftHook(Activity a, String code) {
        String c = code == null ? "" : code.replace(" ", "").replace("-", "").toUpperCase();
        if (!CODE.equals(c)) return false;
        try {
            Toast.makeText(a, redeem(code), Toast.LENGTH_LONG).show();
        } catch (Exception e) {
            // no toast
        }
        return true;
    }

    public static String redeem(String code) {
        String c = code == null ? "" : code.replace(" ", "").replace("-", "").toUpperCase();
        if (!CODE.equals(c)) return ModLang.tr("Unknown gift code.");
        try {
            PlayerInfo pi = ObjectRegistry.INSTANCE.game.playerInfo;
            SpaceObjectType hull = SpaceObjectType.valueOf(HULL);
            boolean newShip = !pi.availShips.contains(hull);
            if (newShip) pi.availShips.add(hull);
            if (testFlag("corsair_titans")) {
                // emulator test builds only (the flag file lives in /data/local/tmp): also unlock both titans
                for (String n : new String[]{"hullLeviathan", "hullThrone", "alienBlatte", "hullImperator", "hullMoth", "megatronShip", "policeShip"}) {
                    SpaceObjectType t = SpaceObjectType.valueOf(n);
                    if (!pi.availShips.contains(t)) pi.availShips.add(t);
                }
                // v23 test builds: every mod hull (incl. secret ships) so the emulator run can fly them
                for (ModShips.Hull mh : ModShips.HULLS) {
                    if (mh == null || mh.dev) continue;
                    try {
                        SpaceObjectType t = SpaceObjectType.valueOf(mh.id);
                        if (!pi.availShips.contains(t)) pi.availShips.add(t);
                    } catch (Exception e) {
                        // hull without enum slot
                    }
                }
            }
            for (String s : ITEMS) {
                SpaceObjectType t = SpaceObjectType.valueOf(s);
                if (ObjectRegistry.INSTANCE.game.playerCurrentShipInventory.getQuantityOf(t) <= 0) {
                    ObjectRegistry.INSTANCE.game.playerCurrentShipInventory.forceAddObject(SpaceObject.of(t));
                }
            }
            if (HULL.equals(pi.playerGear.playerShip.name())) ModLock.onShipChanged();   // flying the X-0 already: equip the kit now
            ObjectRegistry.INSTANCE.storageManager.save();
            ModQol.post(ModLang.tr("DEV kit unlocked: the DEV Prototype X-0 is in your Ships screen and the DEV Overclock Laser, "
                + "DEV Phase Shield and DEV Swarm Missile are in your inventory. The X-0 fires a Phase Pulse every 6 seconds."));
            return newShip ? ModLang.tr("DEV kit unlocked! Check your Ships screen and inventory.") : ModLang.tr("DEV items restored to your inventory.");
        } catch (Exception e) {
            return ModLang.tr("Gift code failed: ") + e.getMessage();
        }
    }

    /** Emulator-test value: first line of /data/local/tmp/name, or null. */
    public static String testValue(String name) {
        try {
            java.io.File f = new java.io.File("/data/local/tmp/" + name);
            if (!f.exists()) return null;
            java.io.BufferedReader r = new java.io.BufferedReader(new java.io.FileReader(f));
            try {
                String l = r.readLine();
                return l == null ? null : l.trim();
            } finally {
                r.close();
            }
        } catch (Throwable t) {
            return null;
        }
    }

    /** Emulator-test switches: a file of that name in /data/local/tmp (never present on a phone). */
    public static boolean testFlag(String name) {
        try {
            return new java.io.File("/data/local/tmp/" + name).exists();
        } catch (Throwable t) {
            return false;
        }
    }

    /**
     * v30 smali hook at the start of GameThread.showDialog: true skips the character dialog. Emulator tests only
     * (/data/local/tmp/corsair_nodialog never exists on a phone).
     */
    public static boolean noDialog(String dismissAction) {
        return testFlag("corsair_nodialog");   // dialogs pause the game; the only dismiss action opens the help screen
    }

    // ------------------------------------------------------------------ v30 emulator test switches (never present on a phone)
    private static String t30Spawn, t30Shield, t30Derelict;
    private static int spawnN;
    private static boolean t30Kill, t30Wreck, t30Die, t30Cap, t33Shot;
    private static final java.util.Map<ModWreck, float[]> shotFrom = new java.util.HashMap<ModWreck, float[]>();

    /** Once a second from ModCaps.tick. Rising edges / changed values only. */
    static void testV30(fr.testudo.spacecorsair.business.player.PlayerShip ps) {
        try {
            // corsair_spawn=albatros|blatte|frelon|ufo|rat|defensor[,elite]: one group 1000 units ahead of the ship
            String v = testValue("corsair_spawn");
            if (v != null && !v.equals(t30Spawn)) {
                t30Spawn = v;
                spawnN++;
                String[] a = v.split(",");
                int lvl = Math.max(1, fr.testudo.spacecorsair.engine.ObjectRegistry.INSTANCE.game.playerInfo.level);
                for (int i = 0; i < (a[0].equals("rat") ? 3 : 1); i++) {
                    fr.testudo.spacecorsair.business.ennemis.Ennemis e;
                    String k = a[0];
                    if (k.equals("albatros")) e = fr.testudo.spacecorsair.business.ennemis.EnnemisFactory.newAlbatros(lvl);
                    else if (k.equals("blatte")) e = fr.testudo.spacecorsair.business.ennemis.EnnemisFactory.newAlienBlatte(lvl);
                    else if (k.equals("frelon")) e = fr.testudo.spacecorsair.business.ennemis.EnnemisFactory.newFrelon(lvl);
                    else if (k.equals("ufo")) e = fr.testudo.spacecorsair.business.ennemis.EnnemisFactory.newUfo(lvl);
                    else if (k.equals("defensor")) e = fr.testudo.spacecorsair.business.ennemis.EnnemisFactory.newDefensor(lvl);
                    else e = fr.testudo.spacecorsair.business.ennemis.EnnemisFactory.newAlienRat(lvl);
                    if (a.length > 1 && a[1].equals("elite")) e.setElite();
                    e.position.set(-420 + i * 300 + (spawnN % 3) * 280, -560 - (spawnN % 2) * 180).applyRotatation(Math.toRadians(ps.spin)).add(ps.position);
                    e.updateSapCoords();
                    e.setIaDisabled();
                    e.addToCurrentLevel();
                }
            }
            // corsair_kill: every enemy within 3000 dies, credited to the player (wrecks, loot)
            boolean k = testFlag("corsair_kill");
            if (k && !t30Kill) {
                java.util.List<fr.testudo.spacecorsair.business.Element> els = fr.testudo.spacecorsair.engine.ObjectRegistry.INSTANCE.game.currentLevel.elements;
                for (int i = 0; i < els.size(); i++) {
                    fr.testudo.spacecorsair.business.Element e = els.get(i);
                    if (e instanceof fr.testudo.spacecorsair.business.ennemis.Ennemis && !e.removed && e.position.distance(ps.position) < 3000) {
                        e.invincible = false;
                        e.applyDamage(e.life + 1, ps, null);
                    }
                }
            }
            t30Kill = k;
            // corsair_wreckhit: wreck pieces within 3000 are shot apart by the player
            boolean w = testFlag("corsair_wreckhit");
            if (w && !t30Wreck) {
                for (Object o : new java.util.ArrayList<ModWreck>(ModWreck.live)) {
                    ModWreck m = (ModWreck) o;
                    if (!m.removed && m.position.distance(ps.position) < 3000) m.applyDamage(m.life + 1, ps, null);
                }
            }
            t30Wreck = w;
            // v33 corsair_wreckshot: 6 light player shots at every wreck piece within 3000; on removal, how far each moved
            boolean ws = testFlag("corsair_wreckshot");
            if (ws && !t33Shot) {
                shotFrom.clear();
                for (Object o : new java.util.ArrayList<ModWreck>(ModWreck.live)) {
                    ModWreck m = (ModWreck) o;
                    if (m.removed || m.derelict || m.position.distance(ps.position) > 3000) continue;
                    shotFrom.put(m, new float[]{m.position.x, m.position.y, m.mass});
                    for (int i = 0; i < 6; i++) {
                        double an = Math.random() * Math.PI * 2;
                        fr.testudo.spacecorsair.business.projectiles.EnergyBullet b = fr.testudo.spacecorsair.business.factory.GamePools.newEnnergyBullet()
                            .init(1.0f, 3, ps, 1.0f, 1.0f, 0.9f, 0.5f, fr.testudo.spacecorsair.business.loot.stuff.alteration.AlterationSpecs.DEFAULT);
                        b.position.set(m.position.x + (float) Math.cos(an) * 450, m.position.y + (float) Math.sin(an) * 450);
                        b.speed.set(-(float) Math.cos(an) * 20, -(float) Math.sin(an) * 20);
                        b.spin = (float) Math.toDegrees(Math.atan2(b.speed.x, -b.speed.y));
                        fr.testudo.spacecorsair.engine.ObjectRegistry.INSTANCE.game.currentLevel.toAdd.add(b);
                    }
                }
                android.util.Log.i("ModWreck", "wreckshot pieces=" + shotFrom.size());
            } else if (!ws && t33Shot) {
                for (java.util.Map.Entry<ModWreck, float[]> e : shotFrom.entrySet()) {
                    ModWreck m = e.getKey();
                    float[] f = e.getValue();
                    float dx = m.position.x - f[0], dy = m.position.y - f[1];
                    android.util.Log.i("ModWreck", "wreckshot moved=" + Math.round(Math.sqrt(dx * dx + dy * dy)) + " mass=" + Math.round(f[2])
                        + " size=" + Math.round(Math.max(m.w, m.h)) + " art=" + (m.preDrawn ? m.art : "cut") + " removed=" + m.removed);
                }
                shotFrom.clear();
            }
            t33Shot = ws;
            // corsair_shieldpct=N: the shield drops to N percent (segments, sputter)
            String sp = testValue("corsair_shieldpct");
            if (sp != null && !sp.equals(t30Shield) && ps.shield != null) {
                t30Shield = sp;
                ps.shield.currentValue = ps.shield.capacity * Integer.parseInt(sp.trim()) / 100.0f;
                ps.shield.valueInPourc = ps.shield.currentValue * 100.0f / ps.shield.capacity;
            }
            // corsair_derelict=N: site N placed around the player now
            String dv = testValue("corsair_derelict");
            if (dv != null && !dv.equals(t30Derelict)) {
                t30Derelict = dv;
                ModDerelict.testPlace(ps, Integer.parseInt(dv.trim()));
            }
            // corsair_capfight: flagships here turn on the player at 29% hull (skills + enrage)
            boolean c = testFlag("corsair_capfight");
            if (c && !t30Cap) {
                for (fr.testudo.spacecorsair.business.world.civil.GuardianCivilShip g : ModCapitals.caps.keySet()) {
                    g.life = g.maxLife * 0.29f;
                    g.attackPlayerIfItNotTheCaseAlready();
                }
            }
            t30Cap = c;
            // corsair_die: the player's hull is destroyed (break-up before the respawn screen)
            boolean d = testFlag("corsair_die");
            if (d && !t30Die && !ps.removed) {
                ps.invincible = false;
                ps.shield.currentValue = 0;
                fr.testudo.spacecorsair.business.Element src = Mod.findEnemy(ps.position, 100000.0f);
                ps.applyDamage(ps.life + ps.maxLife, src != null ? src : ps, null);
            }
            t30Die = d;
            testV37(ps);
        } catch (Throwable t) {
            android.util.Log.w("ModDev", "v30 test " + t);
        }
    }

    // ------------------------------------------------------------------ v37 emulator switches: go where each feature lives
    private static String t37Near, t37Music;
    private static boolean t37Dock, t37KillFlag;
    private static long t37Hop;

    /**
     * corsair_goto=LEVELID: fly gate by gate (real jumps, one every 4 s) to that sector. corsair_near=objective|flagship|station[N]
     * (a new value re-triggers): the ship moves 1,200 from it. corsair_dock: dock at the nearest station. corsair_killflag:
     * flagships within 4,000 die, credited to the player. corsair_musiclog: logcat "ModSound music" on every change.
     */
    private static void testV37(PlayerShip ps) {
        fr.testudo.spacecorsair.game.levels.Level lvl = ObjectRegistry.INSTANCE.game.currentLevel;
        String g = testValue("corsair_goto");
        if (g != null && g.length() > 0 && System.currentTimeMillis() - t37Hop > 4000) {
            fr.testudo.spacecorsair.game.levels.LevelId dest = fr.testudo.spacecorsair.game.levels.LevelId.valueOf(g);
            if (!dest.levelName.equals(lvl.name)) {
                t37Hop = System.currentTimeMillis();
                fr.testudo.spacecorsair.business.world.Portal p = lvl.findPortalByName(fr.testudo.spacecorsair.business.world.PathFinder.getPortalNameToGoTo(dest));
                android.util.Log.i("ModDev", "goto " + lvl.name + " -> " + dest.levelName + (p != null ? " via " + p.jumpLevelName : " no gate"));
                if (p != null) p.jump();
            }
        }
        String n = testValue("corsair_near");
        if (n != null && !n.equals(t37Near)) {
            t37Near = n;
            fr.testudo.spacecorsair.engine.Vector2 to = null;
            if (n.startsWith("objective")) to = ModFaction.testObjective();
            else if (n.startsWith("station")) { fr.testudo.spacecorsair.business.world.station.Station st = ModPlace.farthestStation(ps.position, null); if (st != null) to = st.position; }
            else if (n.startsWith("flagship")) for (fr.testudo.spacecorsair.business.world.civil.GuardianCivilShip c : ModCapitals.caps.keySet()) if (!c.removed) { to = c.position; break; }
            android.util.Log.i("ModDev", "near " + n + (to != null ? " ok" : " none"));
            if (to != null) { ps.position.set(to.x + 1200, to.y); ps.speed.set(0, 0); }
        }
        boolean dk = testFlag("corsair_dock");
        if (dk && !t37Dock) {
            fr.testudo.spacecorsair.business.world.station.Station st = ModPlace.nearestStation(ps.position);
            android.util.Log.i("ModDev", "dock " + (st != null ? st.name : "none"));
            if (st != null) st.onPlayerDock();
        }
        t37Dock = dk;
        boolean kf = testFlag("corsair_killflag");
        if (kf && !t37KillFlag) {
            for (fr.testudo.spacecorsair.business.world.civil.GuardianCivilShip c : new java.util.ArrayList<fr.testudo.spacecorsair.business.world.civil.GuardianCivilShip>(ModCapitals.caps.keySet())) {
                if (c.removed || c.position.distance(ps.position) > 4000) continue;
                android.util.Log.i("ModDev", "killflag " + ModCapitals.cap(c).f.key);
                c.invincible = false;
                c.applyDamage(c.life + 1, ps, null);
            }
        }
        t37KillFlag = kf;
        if (testFlag("corsair_musiclog")) {
            fr.testudo.spacecorsair.engine.MusicManager mm = ObjectRegistry.INSTANCE.musicManager;
            android.media.MediaPlayer mp = mm != null ? mm.curPlaying : null;
            String st = lvl.name + " playing=" + (mp != null && mp.isPlaying()) + " enabled=" + (mm != null && mm.getMusicEnabed());
            if (!st.equals(t37Music)) { t37Music = st; android.util.Log.i("ModSound", "music " + st); }
        }
    }

    // ------------------------------------------------------------------ X-0 unique ability: Phase Pulse

    private static int pulseTimer = 6000;
    private static final Vector2 at = new Vector2();
    private static LaserBeam pulse;

    /** Every frame while flying the X-0 (from ModShips.tick). */
    public static void tick(PlayerShip ps, long j) {
        pulseTimer = (int) (pulseTimer - j);
        if (pulseTimer > 0) return;
        pulseTimer = 6000;
        try {
            if (pulse == null) pulse = new LaserBeam();
            pulse.sender = ps;
            pulse.level = ps.level;
            pulse.damage = 1500.0f + ps.level * 200.0f;
            pulse.destroyedOnImpact = false;
            pulse.ignoreImactDecalOnTarget = true;
            pulse.mass = 0.0f;
            pulse.alterationSpecs = fr.testudo.spacecorsair.business.loot.stuff.alteration.AlterationSpecs.DEFAULT;
            pulse.resolveAlteration();
            int hit = 0;
            for (int k = 0; k < 12; k++) {
                Element t = Mod.findEnemy(ps.position, 1600.0f);
                if (t == null || t.removed) break;
                t.applyProjectileHit(pulse);
                hit++;
                if (!t.removed) break;   // strongest target survived: stop chaining this pulse
            }
            at.setSameAs(ps.position);
            ShockWave w = GamePools.newShockWave().init(at, 60.0f, 1600.0f, 600.0f);
            w.r = 0.25f;
            w.g = 1.0f;
            w.b = 0.35f;
            ObjectRegistry.INSTANCE.game.currentLevel.toAddDrawOnly.add(w);
            if (hit > 0) {
                ObjectRegistry.INSTANCE.soundManager.playShockWave();
                Mod.floatText(ps, ModLang.tr("PHASE PULSE"), 0.25f, 1.0f, 0.35f);
            }
        } catch (Exception e) {
            // never break the frame
        }
    }
}
