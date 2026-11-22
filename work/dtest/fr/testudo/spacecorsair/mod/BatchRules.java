package fr.testudo.spacecorsair.mod;

public class BatchRules {
    static final String[] FACTIONS = {"spartan", "reaver", "kretari", "varn", "ironclad", "helion", "warden"};

    private static void counters(BatchChecks c) {
        int[][] beats = {{1,2}, {5,6}, {3,6}, {0,4}, {1,2}, {0,4}, {3,5}};
        int[] resist = {3,1,5,4,2,0,1}, weak = {5,0,3,2,4,1,3};
        for (int a = 0; a < FACTIONS.length; a++) {
            for (int d = 0; d < FACTIONS.length; d++) {
                boolean advantage = beats[a][0] == d || beats[a][1] == d;
                boolean disadvantage = beats[d][0] == a || beats[d][1] == a;
                for (int family = 0; family < 6; family++) {
                    double armour = resist[d] == family ? 0.8 : weak[d] == family ? 1.2 : 1;
                    double wheel = advantage ? 1.3 : disadvantage ? 0.8 : 1;
                    c.near(FACTIONS[a] + " into " + FACTIONS[d] + " weapon " + family,
                           ModV34.counter(FACTIONS[a], FACTIONS[d], family), armour * wheel);
                }
            }
        }
    }

    private static void progression(BatchChecks c) {
        long[] xp = ModV34.xpCap();
        c.near("level cap", xp.length - 1, 40);
        long[] stock = {1200,1300,1600,2800,4500,5000,8000,12000,15000,16000,18000,20000,
                        22000,25000,29000,34000,37000};
        double next = 37000;
        for (int level = 0; level <= 40; level++) {
            if (level > 16) next *= 1.05;
            c.near("XP " + level, xp[level], level <= 16 ? stock[level] : Math.round(next));
        }
        // Float rounding at the documented half-credit boundary (see report).
        c.near("level five half-credit rounding", ModV35.cost(5,375),37);
        int[] stages = {0,1,1,2,2,3,3,4,4,5,5};
        for (int n = 0; n <= 10; n++) {
            c.near("refit stage " + n, ModV35.stage(n), stages[n]);
            c.near("refit parts " + n, ModV35.partsFor(n), Math.max(0, n - 5));
            for (int price : new int[]{0, 350, 10000, 81001}) {
                c.near("refit credits " + n + "/" + price, ModV35.cost(n, price), Math.round(price * n / 50.0));
            }
        }
        int[][] tiers = {{-100,0},{-50,0},{-49,1},{-10,1},{-9,2},{19,2},{20,3},
                         {49,3},{50,4},{79,4},{80,5},{100,5}};
        for (int[] row : tiers) c.near("standing " + row[0], ModRep.rankOf(row[0]), row[1]);
        int[] heat = {1,5,10,16,24,34,46};
        for (int i = 0; i < heat.length; i++) {
            c.near("below police tier " + i, ModPolice.unlockedClass(heat[i]-1), i-1);
            c.near("at police tier " + i, ModPolice.unlockedClass(heat[i]), i);
        }
        for (int level : new int[]{15,16,40}) for (int last : new int[]{4,5,6}) {
            for (int h : new int[]{0,1}) for (boolean up : new boolean[]{false,true}) {
                c.check("police titan " + level + "/" + last + "/" + h + "/" + up,
                        ModPolice.titanAllowed(level,h,last,up) == (level >= 16 && last == 5 && h == 1 && !up));
            }
        }
    }

    private static void turrets(BatchChecks c) {
        String[] art = {"mantis","verdant","leviathan","bastion","monolith","hornet"};
        // The Hornet's stern turret is already unlocked at form IV (ModV38.java:49).
        int[][] expected = {{2,2,2,2,3,3},{2,2,2,2,3,3},{4,4,4,4,5,6},
                            {1,1,1,1,2,2},{2,2,2,2,3,3},{2,2,2,2,3,3}};
        for (int i = 0; i < art.length; i++) {
            ModShips.Hull h = null;
            for (ModShips.Hull hull : ModShips.HULLS) if (hull != null && art[i].equals(hull.art)) h = hull;
            c.check("hull present " + art[i], h != null);
            int[] plan = ModV38.turretPlan(h);
            for (int stage = 0; stage <= 5; stage++) {
                ModV38.setStage(h, stage);
                c.near(art[i] + " plan " + stage, plan[stage], expected[i][stage]);
                c.near(art[i] + " equipped mounts " + stage, h.spec.canonCount, expected[i][stage]);
                c.check(art[i] + " idempotent " + stage, !ModV38.setStage(h, stage));
            }
            ModV38.setStage(h, 0);
            c.near(art[i] + " restored stock mounts", h.spec.canonCount, expected[i][0]);
        }
    }

    public static void main(String[] args) {
        BatchChecks checks = new BatchChecks();
        counters(checks);
        progression(checks);
        turrets(checks);
        checks.finish();
    }
}
