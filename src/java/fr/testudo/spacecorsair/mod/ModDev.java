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
