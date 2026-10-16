package fr.testudo.spacecorsair.mod;

import android.widget.Toast;
import fr.testudo.spacecorsair.business.loot.SpaceObject;
import fr.testudo.spacecorsair.business.loot.SpaceObjectType;
import fr.testudo.spacecorsair.business.loot.stuff.GearSpec;
import fr.testudo.spacecorsair.business.loot.stuff.playerShip.PlayerShipSpec;
import fr.testudo.spacecorsair.business.player.Inventory;
import fr.testudo.spacecorsair.business.player.PlayerGear;
import fr.testudo.spacecorsair.business.player.PlayerInfo;
import fr.testudo.spacecorsair.engine.ObjectRegistry;
import java.util.List;

/** Ship-specific gear: only usable on its own ship, swapped automatically when the player changes ship. */
public class ModLock {

    public static PlayerShipSpec.Image requiredShip(SpaceObjectType t) {
        if (t == null) return null;
        String n = t.name();
        if (n.startsWith("alienBeamLaser")) return PlayerShipSpec.Image.ALIEN_UFO;
        if (n.startsWith("arwingBoltLaser")) return PlayerShipSpec.Image.ALIEN_RAT;
        if (n.startsWith("regentBeamLaser") || n.startsWith("regentHiveBay")) return PlayerShipSpec.Image.ALIEN_BLATTE;
        if (n.startsWith("megatronBattery") || n.startsWith("megatronSalvo")) return PlayerShipSpec.Image.TEST;
        if (ModDev.isDev(t) && !ModDev.HULL.equals(n)) return devImage();   // the DEV kit belongs to the X-0 only
        return null;
    }

    /** Carriers (e.g. Nebula Moth) may mount the Regent Hive Bay. */
    private static boolean carrierOk(SpaceObjectType t) {
        try {
            PlayerInfo pi = ObjectRegistry.INSTANCE.game.playerInfo;
            return t != null && t.name().startsWith("regentHiveBay") && ModShips.isCarrier((PlayerShipSpec) pi.playerGear.playerShip.getGearSpec());
        } catch (Exception e) {
            return false;
        }
    }

    private static PlayerShipSpec.Image devImg;

    static PlayerShipSpec.Image devImage() {
        if (devImg == null) {
            try {
                devImg = PlayerShipSpec.Image.valueOf("MOD_DEV_PROTOTYPE");
            } catch (Exception e) {
                return null;
            }
        }
        return devImg;
    }

    public static String shipName(PlayerShipSpec.Image img) {
        if (img != null && img == devImage()) return "DEV Prototype X-0";
        if (img == PlayerShipSpec.Image.ALIEN_UFO) return "Banshee";
        if (img == PlayerShipSpec.Image.ALIEN_RAT) return "Arwing";
        if (img == PlayerShipSpec.Image.ALIEN_BLATTE) return "Regent";
        if (img == PlayerShipSpec.Image.TEST) return "Megatron";
        return "?";
    }

    private static PlayerShipSpec.Image currentShip() {
        PlayerInfo pi = ObjectRegistry.INSTANCE.game.playerInfo;
        return ((PlayerShipSpec) pi.playerGear.playerShip.getGearSpec()).image;
    }

    private static void toast(String msg) {
        try {
            Toast.makeText(ObjectRegistry.INSTANCE.game.context, msg, Toast.LENGTH_LONG).show();
        } catch (Exception e) {
            // not on a UI thread: skip the message, the gear logic still applies
        }
    }

    /** Hook at the start of PlayerInfo.equipObject. */
    public static boolean canEquip(SpaceObjectType t) {
        PlayerShipSpec.Image req = requiredShip(t);
        if (req == null || req == currentShip() || carrierOk(t)) {
            return true;
        }
        toast(t.getLocalizedLabel() + " can only be equipped on the " + shipName(req) + ".");
        return false;
    }

    /** Hook at the end of PlayerInfo.changeShip: fix the laser and missile slots for the new ship. */
    public static void onShipChanged() {
        try {
            PlayerInfo pi = ObjectRegistry.INSTANCE.game.playerInfo;
            PlayerGear gear = pi.playerGear;
            PlayerShipSpec.Image img = currentShip();
            if (img != null) ModArt.prefetch(img.shipTexture);   // new hull art decodes in the background (uploaded on return to flight)
            boolean changed = false;
            boolean stored = false;

            SpaceObjectType laser = pick(gear.laser, GearSpec.Type.LASER, img, SpaceObjectType.standardLaserLevel0);
            if (laser != gear.laser) {
                stored |= requiredShip(gear.laser) != null;
                swap(gear.laser, laser);
                gear.laser = laser;
                changed = true;
            }
            SpaceObjectType shield = pick(gear.shield, GearSpec.Type.SHIELD, img, basicShield());
            if (shield != null && shield != gear.shield) {
                stored |= requiredShip(gear.shield) != null;
                swap(gear.shield, shield);
                gear.shield = shield;
                changed = true;
            }
            SpaceObjectType missile = pick(gear.missile, GearSpec.Type.MISSILE, img, SpaceObjectType.noMissileMod);
            if (missile != gear.missile) {
                stored |= requiredShip(gear.missile) != null;
                swap(gear.missile, missile);
                gear.missile = missile;
                changed = true;
            }
            if (changed && ObjectRegistry.INSTANCE.playerShip != null) {
                ObjectRegistry.INSTANCE.playerShip.applyGear();
                ObjectRegistry.INSTANCE.playerShip.updateRemainingMissiles();
                toast(stored ? "Ship-specific gear moved to your hold and swapped for compatible gear."
                             : shipName(img) + " gear equipped from your hold.");
            }
        } catch (Exception e) {
            // never block a ship change
        }
    }

    /** Keeps the equipped item when valid; prefers the new ship's own gear; else best compatible item in the hold. */
    private static SpaceObjectType pick(SpaceObjectType equipped, GearSpec.Type type, PlayerShipSpec.Image img, SpaceObjectType fallback) {
        Inventory inv = ObjectRegistry.INSTANCE.game.playerCurrentShipInventory;
        int lvl = ObjectRegistry.INSTANCE.game.playerInfo.level;
        PlayerShipSpec.Image req = requiredShip(equipped);
        if ((req != null && req == img) || carrierOk(equipped)) {
            return equipped;
        }
        SpaceObjectType own = null;
        SpaceObjectType best = null;
        List<SpaceObject> list = inv.getContentAsList();
        for (SpaceObject so : list) {
            SpaceObjectType t = so.getSpaceObjectType();
            GearSpec g = t.getGearSpec();
            if (g == null || g.gearType != type || so.getQuantity() <= 0 || g.level > lvl) {
                continue;
            }
            PlayerShipSpec.Image r = requiredShip(t);
            if (r == img) {
                if (own == null || better(t, own)) own = t;
            } else if (r == null) {
                if (best == null || better(t, best)) best = t;
            }
        }
        if (own != null) {
            return own;
        }
        if (req == null) {
            return equipped; // normal gear stays put
        }
        return best != null ? best : fallback;
    }

    private static SpaceObjectType basicShield() {
        try {
            return SpaceObjectType.valueOf("basicShieldLevel1");
        } catch (Exception e) {
            return null;
        }
    }

    private static boolean better(SpaceObjectType a, SpaceObjectType b) {
        int ra = a.getRarety().getRaretySort(), rb = b.getRarety().getRaretySort();
        if (ra != rb) return ra > rb;
        return a.getGearSpec().level > b.getGearSpec().level;
    }

    private static void swap(SpaceObjectType oldOne, SpaceObjectType newOne) {
        Inventory inv = ObjectRegistry.INSTANCE.game.playerCurrentShipInventory;
        if (oldOne != null) {
            inv.forceAddObject(SpaceObject.of(oldOne));
        }
        for (SpaceObject so : inv.getContentAsList()) {
            if (so.getSpaceObjectType() == newOne && so.getQuantity() > 0) {
                inv.removeObject(SpaceObject.of(newOne));
                break;
            }
        }
    }
}
