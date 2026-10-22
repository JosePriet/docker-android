package fr.testudo.spacecorsair.mod;

import fr.testudo.spacecorsair.business.Element;
import fr.testudo.spacecorsair.business.ennemis.Albatros;
import fr.testudo.spacecorsair.business.ennemis.AlienBlatte;
import fr.testudo.spacecorsair.business.ennemis.AlienRat;
import fr.testudo.spacecorsair.business.ennemis.Ennemis;
import fr.testudo.spacecorsair.business.ennemis.UfoAlienShip;
import fr.testudo.spacecorsair.business.factory.GamePools;
import fr.testudo.spacecorsair.business.loot.LootRarety;
import fr.testudo.spacecorsair.business.loot.SpaceObject;
import fr.testudo.spacecorsair.business.loot.SpaceObjectType;
import fr.testudo.spacecorsair.business.loot.stuff.GearSpec;
import fr.testudo.spacecorsair.engine.ObjectRegistry;
import java.util.ArrayList;

/**
 * Mod loot on top of the stock drop tables.
 * v30 rules (approved): the hull's size class and the enemy's level/type drive the drop; small hulls drop modestly even
 * at high level; elites (star before the name) always drop good or high-ranked gear; bosses always drop one item from
 * their own pool plus a chance of rare or secret loot; the sector's owner only changes the odds of high-rarity drops.
 * Wrecks the player destroys roll the same table (derelicts a little better). Drops fall into space as pickups
 * (with a light beam from Rare up, ModLive).
 */
public class ModLoot {
    private static final int[] ALIEN = {ModSpecs.F_BANSHEE, ModSpecs.F_REGENT, ModSpecs.F_ARWING, ModSpecs.F_HIVE};
    private static final int[] SPARTAN = {ModSpecs.F_BATTERY, ModSpecs.F_SALVO};

    /** Highest tier the pilot can already equip. */
    private static int tierForPilot() {
        int lvl = ObjectRegistry.INSTANCE.game.playerInfo.level;
        int t = 0;
        for (int i = 0; i < ModSpecs.TIER_LEVELS.length; i++) {
            if (ModSpecs.TIER_REQ[i] <= lvl) t = i;
        }
        return t;
    }

    private static String typeName(int family, int tier) {
        String base = ModSpecs.FAMILY_NAMES[family];
        return tier == 0 ? base : base + "L" + ModSpecs.TIER_LEVELS[tier];
    }

    private static SpaceObjectType family(int[] families, int tier) {
        int family = families[(int) (Math.random() * families.length)];
        return SpaceObjectType.valueOf(typeName(family, tier));
    }

    private static void toHold(SpaceObjectType t, String label, float r, float g, float b) {
        ObjectRegistry.INSTANCE.game.playerCurrentShipInventory.forceAddObject(SpaceObject.of(t));
        ObjectRegistry.INSTANCE.soundManager.playLoot();
        if (ObjectRegistry.INSTANCE.playerShip != null) {
            Mod.floatText(ObjectRegistry.INSTANCE.playerShip, label + t.getLocalizedLabel(), r, g, b);
        }
    }

    /** A pickup floating out of an element (or into the hold when there is no level). */
    private static void drop(Element at, SpaceObjectType t) {
        if (t == null) return;
        try {
            ObjectRegistry.INSTANCE.game.currentLevel.toAdd.add(GamePools.newLoot().init(at, t));
        } catch (Throwable e) {
            toHold(t, ModLang.tr("LOOT: "), 0.9f, 0.9f, 0.9f);
        }
    }

    // ------------------------------------------------------------------ gear index
    private static ArrayList<SpaceObjectType>[] byRarity;

    @SuppressWarnings("unchecked")
    private static void index() {
        if (byRarity != null) return;
        ArrayList<SpaceObjectType>[] b = new ArrayList[5];
        for (int i = 0; i < 5; i++) b[i] = new ArrayList<SpaceObjectType>();
        for (SpaceObjectType t : SpaceObjectType.values()) {
            try {
                if (!t.isEquipable() || t.isConsommable() || t.isMap()) continue;
                if (SpaceObjectType.ALL_SHIPS.contains(t) || SpaceObjectType.ALL_INAPP.contains(t)) continue;
                GearSpec g = t.getGearSpec();
                if (g == null || t.getRarety() == null) continue;
                if (ModRep.secretIndex(t) >= 0) continue;            // faction secrets stay faction rewards
                b[t.getRarety().getRaretySort()].add(t);
            } catch (Throwable e) {
                // skip odd entries
            }
        }
        byRarity = b;
    }

    /** Random gear of a rarity near a level (falls back to lower rarities, then any level). */
    static SpaceObjectType pick(LootRarety r, int level) {
        index();
        for (int rs = r.getRaretySort(); rs >= 0; rs--) {
            ArrayList<SpaceObjectType> l = byRarity[rs];
            if (l.isEmpty()) continue;
            for (int tries = 0; tries < 24; tries++) {
                SpaceObjectType t = l.get((int) (Math.random() * l.size()));
                int gl = t.getGearSpec().level;
                if (gl <= level + 2 && gl >= level - 6) return t;
            }
            for (int tries = 0; tries < 24; tries++) {
                SpaceObjectType t = l.get((int) (Math.random() * l.size()));
                if (t.getGearSpec().level <= level + 2) return t;
            }
        }
        return null;
    }

    // ------------------------------------------------------------------ tables
    /** Sector owner -> multiplier on Rare+ odds (pirate and alien space richer, policed space poorer). */
    static float sectorMod() {
        try {
            int f = ModMap.owner(ObjectRegistry.INSTANCE.game.currentLevel.id);
            if (f < 0) return 1.2f;                                // unclaimed frontier
            String k = ModCapitals.FACTIONS[f].key;
            if ("reaver".equals(k)) return 1.3f;
            if ("kretari".equals(k)) return 1.4f;
            if ("varn".equals(k)) return 1.25f;
            if ("helion".equals(k)) return 1.15f;
            if ("ironclad".equals(k)) return 1.1f;
            if ("warden".equals(k)) return 0.9f;
            return 1.0f;                                           // spartan
        } catch (Throwable t) {
            return 1.0f;
        }
    }

    /**
     * v30 faction loot tables: the sector owner's signature weapons (FACTIONS order). Part of every v30 drop comes from the
     * owner's table; unclaimed space draws from everything.
     */
    private static final int[][] FACTION_FAMILIES = {
        {ModWeapons.RAIL, ModWeapons.BLAST},      // spartan (+ Megatron gear)
        {ModWeapons.AUTO, ModWeapons.ARTY},       // reaver
        {},                                        // kretari: alien gear
        {ModWeapons.DISINT, ModWeapons.RAIL},     // varn
        {ModWeapons.ARTY, ModWeapons.AUTO},       // ironclad
        {ModWeapons.BLAST, ModWeapons.DISINT},    // helion
        {ModWeapons.ARC, ModWeapons.RAIL},        // warden
    };

    /** An item from the sector owner's table, or null in unclaimed space. */
    static SpaceObjectType factionItem() {
        try {
            int f = ModMap.owner(ObjectRegistry.INSTANCE.game.currentLevel.id);
            if (f < 0 || f >= FACTION_FAMILIES.length) return null;
            int tier = tierForPilot();
            String k = ModCapitals.FACTIONS[f].key;
            if ("kretari".equals(k)) return family(ALIEN, tier);
            if ("spartan".equals(k) && Math.random() < 0.3) return family(SPARTAN, tier);
            int[] fam = FACTION_FAMILIES[f];
            return SpaceObjectType.valueOf(ModWeapons.typeName(fam[(int) (Math.random() * fam.length)], tier));
        } catch (Throwable t) {
            return null;
        }
    }

    private static final float[] CLASS_Q = {0, 3, 7, 12};
    private static final float[] CLASS_CHANCE = {0.04f, 0.08f, 0.22f, 0.6f};

    /** Rarity roll: size class and level drive it; elites never roll below Rare; the sector scales Rare+ odds. */
    static LootRarety roll(int level, int cls, boolean elite, int bonus) {
        cls = Math.max(0, Math.min(3, cls));
        float q = level + CLASS_Q[cls] + bonus * 4;
        float pR = clamp(0.02f + q * 0.012f, 0, 0.45f);
        float pE = clamp((q - 8) * 0.008f, 0, 0.25f);
        float pL = clamp((q - 18) * 0.004f, 0, 0.08f);
        if (cls == 0 && !elite) { pR *= 0.35f; pE *= 0.15f; pL = 0; }
        if (elite) { pR = Math.max(pR, 0.55f); pE = Math.max(pE, 0.3f); pL = Math.max(pL, 0.06f); }
        float m = sectorMod();
        pR *= m; pE *= m; pL *= m;
        double r = Math.random();
        if (r < pL) return LootRarety.LEGENDARY;
        if (r < pL + pE) return LootRarety.EXCEPTIONAL;
        if (r < pL + pE + pR || elite) return LootRarety.RARE;
        return Math.random() < 0.5 ? LootRarety.FINE : LootRarety.BASIC;
    }

    private static float clamp(float v, float lo, float hi) {
        return v < lo ? lo : v > hi ? hi : v;
    }

    /** Hook: an enemy was destroyed by the player (or a drone). */
    public static void onEnemyKilled(Ennemis e) {
        ModRep.enemyKilled(e);
        try {
            if (e == null || ModBoss.isBoss(e)) return;
            // the old alien / Megatron family drops stay (their own rare table)
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
                drop(e, family(fam, tierForPilot()));
            }
            // v30 table
            int cls = ModWreck.sizeClass(e);
            float p = e.elite ? 1.0f : Math.min(0.9f, (CLASS_CHANCE[cls] + e.level * 0.002f * (cls + 1)) * ModV35.lootMult());   // v35: Varn refit trait
            if (Math.random() < p) {
                LootRarety r = roll(e.level, cls, e.elite, 0);
                SpaceObjectType t = null;
                if (r.getRaretySort() >= LootRarety.RARE.getRaretySort() && Math.random() < 0.3) t = factionItem();   // the owner's table
                if (t == null) t = pick(r, Math.max(e.level, 1));
                if (t == null) t = pick(r, 999);
                if (t == null && e.elite) t = family(ALIEN, tierForPilot());
                drop(e, t);
            }
            if (Math.random() < (e.elite ? 0.05d : 0.012d)) {
                // v18 weapon families also drop, at the pilot's tier
                int f = (int) (Math.random() * ModWeapons.COUNT);
                drop(e, SpaceObjectType.valueOf(ModWeapons.typeName(f, tierForPilot())));
            }
        } catch (Exception ex) {
            // never break a kill
        }
    }

    /** A wreck piece the player destroyed. */
    static void fromWreck(ModWreck w) {
        try {
            if (w.group != null) {                      // one roll per destroyed hull, not per piece
                if (w.group[0]) return;
                w.group[0] = true;
            }
            if (w.lootKey != null) ModSector.looted(w.lootKey);   // v35: kept wrecks and wreck fields remember it
            int lvl = Math.max(1, w.srcLevel > 0 ? w.srcLevel : ObjectRegistry.INSTANCE.game.playerInfo.level);
            boolean field = w.lootKey != null && w.lootKey.startsWith("field:");   // owner 2026-10-22: wreck-field hulls always hold loot
            float p = w.srcBoss || field ? 1.0f : Math.min(1.0f, (w.husk ? 0.15f : w.derelict ? 0.6f : w.srcElite ? 0.7f : 0.35f) * ModV35.lootMult());   // v35: Varn refit trait; husks a small roll (owner)
            if (Math.random() >= p) return;
            int bonus = (w.derelict ? 1 : 0) + (w.srcBoss ? 2 : 0);
            LootRarety wr = roll(lvl, w.husk ? 1 : Math.max(2, w.srcClass), w.srcElite, bonus);   // husks roll as a destroyer kill
            SpaceObjectType wt = wr.getRaretySort() >= LootRarety.RARE.getRaretySort() && Math.random() < (w.derelict ? 0.5 : 0.3) ? factionItem() : null;
            drop(w, wt != null ? wt : pick(wr, lvl));
            if (!w.husk && Math.random() < 0.12) drop(w, SpaceObjectType.valueOf(ModWeapons.typeName((int) (Math.random() * ModWeapons.COUNT), tierForPilot())));
        } catch (Throwable t) {
            // ignore
        }
    }

    /** A faction secret item (not a hull), for boss secret loot; null if none. */
    static SpaceObjectType secretItem() {
        ArrayList<SpaceObjectType> l = new ArrayList<SpaceObjectType>();
        for (SpaceObjectType t : SpaceObjectType.values()) {
            try {
                if (ModRep.secretIndex(t) >= 0 && !SpaceObjectType.ALL_SHIPS.contains(t) && t.getGearSpec() != null) l.add(t);
            } catch (Throwable e) { /* skip */ }
        }
        return l.isEmpty() ? null : l.get((int) (Math.random() * l.size()));
    }

    /** Boss down (on top of the mission reward): one item of its own pool for sure, then a chance of rare or secret loot. */
    public static void bossBonus(int kind) {
        ModV35.bossCores(kind);   // v35: faction cores (owner 2026-10-22)
        try {
            int tier = tierForPilot();
            toHold(family(kind == ModBoss.GUARDIAN ? SPARTAN : ALIEN, tier), ModLang.tr("BOSS DROP: "), 0.82f, 0.45f, 1.0f);
            int lvl = Math.max(1, ObjectRegistry.INSTANCE.game.playerInfo.level);
            double r = Math.random() / sectorMod();   // richer sectors: better odds
            if (r < 0.06) {
                SpaceObjectType t = secretItem();
                if (t == null) t = pick(LootRarety.LEGENDARY, lvl + 2);
                if (t != null) toHold(t, ModLang.tr("SECRET LOOT: "), 1.0f, 0.8f, 0.25f);
            } else if (r < 0.35) {
                SpaceObjectType t = pick(LootRarety.EXCEPTIONAL, lvl + 1);
                if (t != null) toHold(t, ModLang.tr("RARE DROP: "), 0.82f, 0.1f, 1.0f);
            }
        } catch (Exception ex) {
            // ignore
        }
    }
}
