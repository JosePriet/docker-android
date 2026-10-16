package fr.testudo.spacecorsair.mod;

import fr.testudo.spacecorsair.business.ennemis.Albatros;
import fr.testudo.spacecorsair.business.ennemis.AlienBlatte;
import fr.testudo.spacecorsair.business.ennemis.AlienRat;
import fr.testudo.spacecorsair.business.ennemis.Ennemis;
import fr.testudo.spacecorsair.business.ennemis.UfoAlienShip;
import fr.testudo.spacecorsair.business.loot.SpaceObject;
import fr.testudo.spacecorsair.business.loot.SpaceObjectType;
import fr.testudo.spacecorsair.engine.ObjectRegistry;

/** Rare drops of the alien / Megatron gear tiers. */
public class ModLoot {
    private static final int[] ALIEN = {ModSpecs.F_BANSHEE, ModSpecs.F_REGENT, ModSpecs.F_ARWING, ModSpecs.F_HIVE};
    private static final int[] SPARTAN = {ModSpecs.F_BATTERY, ModSpecs.F_SALVO};

    /** Highest tier the pilot can already equip. */
    private static int tierForPilot() {
        int lvl = ObjectRegistry.INSTANCE.game.playerInfo.level;
        int t = 0;
        for (int i = 0; i < ModSpecs.TIER_LEVELS.length; i++) {
            if (ModSpecs.TIER_LEVELS[i] <= lvl) t = i;
        }
        return t;
    }

    private static String typeName(int family, int tier) {
        String base = ModSpecs.FAMILY_NAMES[family];
        return tier == 0 ? base : base + "L" + ModSpecs.TIER_LEVELS[tier];
    }

    private static void give(int[] families, int tier, String source) {
        int family = families[(int) (Math.random() * families.length)];
        SpaceObjectType t = SpaceObjectType.valueOf(typeName(family, tier));
        ObjectRegistry.INSTANCE.game.playerCurrentShipInventory.forceAddObject(SpaceObject.of(t));
        ObjectRegistry.INSTANCE.soundManager.playLoot();
        if (ObjectRegistry.INSTANCE.playerShip != null) {
            Mod.floatText(ObjectRegistry.INSTANCE.playerShip, ModLang.tr("RARE DROP: ") + t.getLocalizedLabel(), 0.82f, 0.1f, 1.0f);
        }
    }

    /** Hook: an enemy was destroyed by the player (or a drone). */
    public static void onEnemyKilled(Ennemis e) {
        ModRep.enemyKilled(e);
        try {
            if (e == null || ModBoss.isBoss(e)) return;
            double chance = 0.0d;
            int[] fam = ALIEN;
            if (e instanceof AlienBlatte) {
                chance = e.elite ? 0.25d : 0.08d;
            } else if (e instanceof UfoAlienShip || e instanceof AlienRat) {
                chance = e.elite ? 0.04d : 0.0d;
            } else if (e instanceof Albatros) {
                chance = e.elite ? 0.20d : 0.06d;
                fam = SPARTAN;
            }
            if (chance > 0.0d && Math.random() < chance) {
                give(fam, tierForPilot(), "");
            } else if (Math.random() < (e.elite ? 0.05d : 0.012d)) {
                // v18 weapon families also drop, at the pilot's tier
                int f = (int) (Math.random() * ModWeapons.COUNT);
                SpaceObjectType t = SpaceObjectType.valueOf(ModWeapons.typeName(f, tierForPilot()));
                ObjectRegistry.INSTANCE.game.playerCurrentShipInventory.forceAddObject(SpaceObject.of(t));
                ObjectRegistry.INSTANCE.soundManager.playLoot();
                if (ObjectRegistry.INSTANCE.playerShip != null) {
                    Mod.floatText(ObjectRegistry.INSTANCE.playerShip, ModLang.tr("WEAPON DROP: ") + t.getLocalizedLabel(), 0.4f, 0.9f, 1.0f);
                }
            }
        } catch (Exception ex) {
            // never break a kill
        }
    }

    /** Extra 35% bonus item when a boss dies (on top of the mission reward). */
    public static void bossBonus(int kind) {
        try {
            if (Math.random() < 0.35d) {
                give(kind == ModBoss.GUARDIAN ? SPARTAN : ALIEN, tierForPilot(), "");
            }
        } catch (Exception ex) {
            // ignore
        }
    }
}
