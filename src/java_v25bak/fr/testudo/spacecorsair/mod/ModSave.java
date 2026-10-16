package fr.testudo.spacecorsair.mod;

import fr.testudo.spacecorsair.business.loot.SpaceObject;
import fr.testudo.spacecorsair.business.loot.SpaceObjectType;
import fr.testudo.spacecorsair.business.player.Inventory;
import fr.testudo.spacecorsair.business.player.PlayerGear;
import fr.testudo.spacecorsair.business.player.PlayerInfo;
import fr.testudo.spacecorsair.engine.ObjectRegistry;
import java.lang.reflect.Field;
import java.util.Iterator;
import java.util.Map;

/**
 * Save safety. Gson turns an item name that no longer exists into null; this removes or replaces those
 * nulls right after the save is loaded so a renamed/removed item can never crash the game.
 */
public class ModSave {
    public static void sanitize() {
        try {
            Inventory inv = ObjectRegistry.INSTANCE.game.playerCurrentShipInventory;
            if (inv != null) {
                Field f = Inventory.class.getDeclaredField("content");
                f.setAccessible(true);
                Map<?, ?> content = (Map<?, ?>) f.get(inv);
                if (content != null) {
                    Iterator<? extends Map.Entry<?, ?>> it = content.entrySet().iterator();
                    while (it.hasNext()) {
                        Map.Entry<?, ?> e = it.next();
                        Object v = e.getValue();
                        if (e.getKey() == null || v == null || ((SpaceObject) v).getSpaceObjectType() == null) {
                            it.remove();
                        }
                    }
                }
            }
        } catch (Exception e) {
            // keep going
        }
        try {
            PlayerInfo pi = ObjectRegistry.INSTANCE.game.playerInfo;
            if (pi == null) return;
            PlayerGear g = pi.playerGear;
            if (g != null) {
                if (g.shield == null) g.shield = SpaceObjectType.basicShieldLevel0;
                if (g.laser == null) g.laser = SpaceObjectType.standardLaserLevel0;
                if (g.missile == null) g.missile = SpaceObjectType.noMissileMod;
                if (g.booster == null) g.booster = SpaceObjectType.nopBooster;
                if (g.hyperdriveEngine == null) g.hyperdriveEngine = SpaceObjectType.nopHyperdriveEngine;
                if (g.playerShip == null) g.playerShip = SpaceObjectType.defaultPlayerShip;
            }
            if (pi.availShips != null) {
                while (pi.availShips.remove(null)) {
                    // drop unknown ships
                }
                if (!pi.availShips.contains(SpaceObjectType.defaultPlayerShip)) {
                    pi.availShips.add(SpaceObjectType.defaultPlayerShip);
                }
                if (g != null && !pi.availShips.contains(g.playerShip)) {
                    g.playerShip = SpaceObjectType.defaultPlayerShip;
                }
            }
        } catch (Exception e) {
            // keep going
        }
    }
}
