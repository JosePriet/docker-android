package fr.testudo.spacecorsair.mod;

import fr.testudo.spacecorsair.business.loot.LootRarety;
import fr.testudo.spacecorsair.business.loot.stuff.GearSpec;
import fr.testudo.spacecorsair.business.loot.stuff.alteration.AlterationSpecsBuilder;
import fr.testudo.spacecorsair.business.loot.stuff.laser.LaserSpec;
import fr.testudo.spacecorsair.business.loot.stuff.laser.LaserSpecBuilder;
import fr.testudo.spacecorsair.business.loot.stuff.missile.MissileSpec;
import fr.testudo.spacecorsair.business.loot.stuff.playerShip.PlayerShipSpec;
import fr.testudo.spacecorsair.business.player.PlayerGazDrawable;
import fr.testudo.spacecorsair.engine.Vector2;

/** Gear specs for the player versions of enemy weapons. No SpaceObjectType references here (enum init order). */
public class ModSpecs {
    /** Gear tiers: level requirement and stat multiplier (tier 3 = endgame values). */
    public static final int[] TIER_LEVELS = {0, 5, 10, 15};
    /** v34: pilot level a tier needs on the 0-40 scale (TIER_LEVELS stays the item-name suffix, so saves keep their items). */
    public static final int[] TIER_REQ = {0, ModV34.lvl(5), ModV34.lvl(10), ModV34.lvl(15)};
    public static final float[] TIER_MULT = {0.4f, 0.6f, 0.8f, 1.0f};
    /** Hive Bay: drone damage multiplier and lifetime per tier. */
    public static final float[] HIVE_DMG = {0.7f, 0.85f, 1.0f, 1.2f};
    public static final int[] HIVE_LIFE = {15000, 18000, 20000, 25000};

    public static final int F_BANSHEE = 0, F_REGENT = 1, F_ARWING = 2, F_BATTERY = 3, F_SALVO = 4, F_HIVE = 5;
    public static final String[] FAMILY_NAMES = {"alienBeamLaser", "regentBeamLaser", "arwingBoltLaser", "megatronBattery", "megatronSalvo", "regentHiveBay"};

    public static final LaserSpec[] BANSHEE = new LaserSpec[4];
    public static final LaserSpec[] REGENT = new LaserSpec[4];
    public static final LaserSpec[] ARWING = new LaserSpec[4];
    public static final LaserSpec[] BATTERY = new LaserSpec[4];
    public static final MissileSpec[] SALVO = new MissileSpec[4];
    public static final MissileSpec[] HIVE = new MissileSpec[4];

    // tier-0 items (referenced by the original enum constants)
    public static LaserSpec regentBeam;
    public static LaserSpec arwingBolt;
    public static LaserSpec megatronBattery;
    public static MissileSpec megatronSalvo;
    public static MissileSpec regentHiveBay;

    static {
        for (int t = 0; t < 4; t++) {
            float m = TIER_MULT[t];
            BANSHEE[t] = t == 0 ? LaserSpecBuilder.alienBeamLaser : new LaserSpec();
            beam(BANSHEE[t], Math.round(140 * m), 500, 1.0f, 0.1f, 0.1f);
            REGENT[t] = new LaserSpec();
            beam(REGENT[t], Math.round(200 * m), 600, 0.6666667f, 0.23529412f, 0.7058824f);
            REGENT[t].alterationSpecs = AlterationSpecsBuilder.poison_10sec_8_proba_400dmg;
            ARWING[t] = laser(Math.round(48 * m), 260, 98, -9.0f, 0.4f, 1.0f, 0.4f);
            BATTERY[t] = laser(Math.round(220 * m), 1100, 96, -13.0f, 1.0f, 0.7f, 0.7f);
            SALVO[t] = salvo(1600.0f * m, 600.0f * (0.6f + 0.4f * m));
            HIVE[t] = hiveBay(t);
            BANSHEE[t].level = REGENT[t].level = ARWING[t].level = BATTERY[t].level = TIER_REQ[t];
            SALVO[t].level = HIVE[t].level = TIER_REQ[t];
        }
        regentBeam = REGENT[0];
        arwingBolt = ARWING[0];
        megatronBattery = BATTERY[0];
        megatronSalvo = SALVO[0];
        regentHiveBay = HIVE[0];
    }

    /** Used by the extra enum constants: gear(family, tier). */
    public static GearSpec gear(int family, int tier) {
        switch (family) {
            case F_BANSHEE: return BANSHEE[tier];
            case F_REGENT: return REGENT[tier];
            case F_ARWING: return ARWING[tier];
            case F_BATTERY: return BATTERY[tier];
            case F_SALVO: return SALVO[tier];
            default: return HIVE[tier];
        }
    }

    private static int indexIn(Object[] arr, Object o) {
        for (int i = 0; i < arr.length; i++) {
            if (arr[i] == o) return i;
        }
        return -1;
    }

    public static int tierOf(GearSpec g) {
        int i;
        if ((i = indexIn(BANSHEE, g)) >= 0) return i;
        if ((i = indexIn(REGENT, g)) >= 0) return i;
        if ((i = indexIn(ARWING, g)) >= 0) return i;
        if ((i = indexIn(BATTERY, g)) >= 0) return i;
        if ((i = indexIn(SALVO, g)) >= 0) return i;
        return indexIn(HIVE, g);
    }

    public static boolean isBeam(LaserSpec s) {
        return s != null && (indexIn(BANSHEE, s) >= 0 || indexIn(REGENT, s) >= 0);
    }

    public static boolean isRegentBeam(LaserSpec s) {
        return s != null && indexIn(REGENT, s) >= 0;
    }

    public static boolean isBolt(LaserSpec s) {
        return s != null && indexIn(ARWING, s) >= 0;
    }

    public static boolean isHive(MissileSpec s) {
        return s != null && indexIn(HIVE, s) >= 0;
    }

    public static float beamRange(LaserSpec s) {
        return isRegentBeam(s) ? 1200.0f : 600.0f;
    }

    private static void beam(LaserSpec s, int dmg, int reload, float r, float g, float bl) {
        s.isBeam = true;
        s.rarety = LootRarety.LEGENDARY;
        s.damage = dmg;
        s.reload = reload;
        s.precision = 100;
        s.heatBySec = 5;
        s.bulletSpeed = -8.0f;
        s.r = r;
        s.g = g;
        s.b = bl;
    }

    private static LaserSpec laser(int dmg, int reload, int prec, float speed, float r, float g, float b) {
        LaserSpec s = new LaserSpec();
        s.rarety = LootRarety.LEGENDARY;
        s.damage = dmg;
        s.reload = reload;
        s.precision = prec;
        s.heatBySec = 5;
        s.bulletSpeed = speed;
        s.r = r;
        s.g = g;
        s.b = b;
        return s;
    }

    private static MissileSpec salvo(float dmg, float radius) {
        // player copy of the Guardian cruiser missile, scaled per tier
        MissileSpec m = new MissileSpec();
        m.rarety = LootRarety.LEGENDARY;
        m.damage = dmg;
        m.radiusDamage = radius;
        m.life = 25.0f;
        m.reloadSpeedInMilli = 6000L;
        m.lifeTime = 12;
        m.maxTurnFactor = 1.5f;
        m.pousseeForce = 3.0f;
        m.speedDeperdition = 1.03f;
        m.agility = 60;
        m.timeAllume = 1200;
        m.sendAndForget = false;
        m.maxCountInventory = 30;
        m.image = MissileSpec.Image.normal;
        return m;
    }

    private static MissileSpec hiveBay(int tier) {
        MissileSpec m = new MissileSpec();
        m.rarety = LootRarety.LEGENDARY;
        m.damage = 0.0f;
        m.radiusDamage = 0.0f;
        m.life = 0.0f;
        m.reloadSpeedInMilli = 12000L - (tier * 1000L);
        m.lifeTime = HIVE_LIFE[tier] / 1000;
        m.maxTurnFactor = 0.0f;
        m.pousseeForce = 0.0f;
        m.agility = 0;
        m.sendAndForget = true;
        m.maxCountInventory = 20;
        m.image = MissileSpec.Image.normal;
        return m;
    }

    public static PlayerShipSpec megatronShip() {
        PlayerShipSpec s = new PlayerShipSpec();
        s.level = 0;
        s.image = PlayerShipSpec.Image.TEST; // texture replaced by the Guardian cruiser at load time
        s.rarety = LootRarety.LEGENDARY;
        s.laserCount = 3;
        s.laserType = PlayerShipSpec.LaserType.ROTATIVE_TRIPLE;
        s.deperditionFactor = 1.006f;
        s.drawableSize = 512;
        s.drawableSizeOfShield = 640;
        s.mass = 3000;
        s.lifeBooster = 5.0f;
        s.maxPouseeForce = 0.2f;
        s.physicSizeWithoutShield = 330;
        s.physicSizeWithShield = 560;
        s.maxTurnFactor = 0.35f;
        s.gazDecal = 230;
        s.drawableSizeOfGaz = 150;
        s.gazBehindImage = true;
        s.gazDrawable = PlayerGazDrawable.simpleGaz;
        s.canonCount = 3;
        s.canonPos[0] = new Vector2(0.0f, 6.0f);
        s.canonPos[1] = new Vector2(0.0f, -115.0f);
        s.canonPos[2] = new Vector2(0.0f, 115.0f);
        s.canonSpeed = 1.3f;
        s.tirGroupe = true;
        s.missileCount = 2;
        s.missileExitPoint = new Vector2[]{new Vector2(-80.0f, -180.0f), new Vector2(80.0f, -180.0f)};
        s.lootDistance = 300;
        s.sizeInformational = PlayerShipSpec.Size.VERY_LARGE;
        s.agilityInformational = 15;
        s.maxSpeedInformational = 20;
        s.armorInformational = 100;
        s.attractionFactor = 4.0f;
        s.playerNameDecalY = 300;
        s.playerLifeBarDecalY = -65;
        s.playerLifeBarWidth = 300;
        s.playerLifeBarHeight = 7;
        return s;
    }

    /** Regent as drawn by the enemy: no turret overlays, hull scaled up so it matches the enemy silhouette. */
    public static PlayerShipSpec regentShip() {
        PlayerShipSpec s = fr.testudo.spacecorsair.business.loot.stuff.playerShip.PlayerShipSpecBuilder.getAlienBlatte();
        s.laserType = PlayerShipSpec.LaserType.FIXED;
        s.laserCount = 2;
        s.canonCount = 1;
        s.canonPos[0] = new Vector2(0.0f, -25.0f);
        s.drawableSize = 900;
        s.drawableSizeOfShield = 760;
        s.physicSizeWithoutShield = 380;
        s.physicSizeWithShield = 640;
        s.missileExitPoint = new Vector2[]{new Vector2(0.0f, -200.0f), new Vector2(0.0f, -200.0f)};
        s.playerNameDecalY = 330;
        s.playerLifeBarWidth = 300;
        return s;
    }
}
