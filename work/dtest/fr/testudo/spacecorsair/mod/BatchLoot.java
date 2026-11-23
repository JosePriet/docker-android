package fr.testudo.spacecorsair.mod;

import fr.testudo.spacecorsair.business.loot.LootRarety;
import java.lang.reflect.Field;
import java.util.Random;

public class BatchLoot {
    // The isolated JVM opens java.lang only for this suite. No production RNG change.
    private static void rolls(BatchChecks c, Random game, int level, int size, boolean elite,
                              int bonus, double legendary, double exceptional, double rare) {
        long seed = 1707L + level + size;
        game.setSeed(seed);
        Random oracle = new Random(seed);
        for (int n = 0; n < 128; n++) {
            double r = oracle.nextDouble();
            LootRarety expected;
            if (r < legendary) expected = LootRarety.LEGENDARY;
            else if (r < exceptional) expected = LootRarety.EXCEPTIONAL;
            else if (r < rare) expected = LootRarety.RARE;
            else expected = oracle.nextDouble() < 0.5 ? LootRarety.FINE : LootRarety.BASIC;
            c.check("loot seed " + seed + " draw " + n + " expected " + expected,
                    ModLoot.roll(level,size,elite,bonus) == expected);
        }
    }

    public static void main(String[] args) throws Exception {
        BatchChecks c = new BatchChecks();
        c.near("neutral sector fixture", ModLoot.sectorMod(), 1);
        Field f = Class.forName("java.lang.Math$RandomNumberGeneratorHolder").getDeclaredField("randomNumberGenerator");
        f.setAccessible(true);
        Random game = (Random) f.get(null);
        rolls(c,game,0,-1,false,0, 0,0,0.007);
        rolls(c,game,0,0,true,0, 0.06,0.36,1);
        rolls(c,game,10,2,false,1, 0.012,0.116,0.388);
        rolls(c,game,40,8,false,0, 0.08,0.33,0.78);
        c.finish();
    }
}
