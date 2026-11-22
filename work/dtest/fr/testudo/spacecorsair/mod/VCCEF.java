package fr.testudo.spacecorsair.mod;

/** CCEF hunt rules (owner 2026-11-22). Must end with VCCEF VALUES-OK. */
public final class VCCEF {
    static int n;
    static void ok(boolean c, String m) {
        if (!c) { System.out.println("FAIL " + m); System.exit(1); }
        n++;
        System.out.println("ok " + m);
    }
    static boolean near(float a, float b) { return Math.abs(a - b) < 1e-4f; }

    public static void main(String[] a) {
        ok(ModCcef.ON && ModCcef.AI, "CCEF on, own AI flag on");
        ok(ModCcef.WARP_IN_MS == 20000 && ModCcef.SURVIVE_MS == 120000, "20 s warp-in, 120 s from the countdown start");
        ok(!ModCcef.survived(119999) && ModCcef.survived(120000), "achievement at 120 s");
        ok(ModCcef.follows(0) && ModCcef.follows(4) && !ModCcef.follows(5), "hunt follows through up to 5 sectors");
        ok(!ModCcef.evasive(1) && ModCcef.evasive(2), "off-screen evasion after 2 kills");
        ok(near(ModCcef.scale(0), 1f) && near(ModCcef.scale(1), 1.05f) && near(ModCcef.scale(2), 1.10f) && near(ModCcef.scale(10), 1.5f), "+5% per clear (added)");
        ok(ModCcef.extras(0) == 0 && ModCcef.extras(1) == 0 && ModCcef.extras(2) == 1 && ModCcef.extras(5) == 2, "one extra ship every 2 clears");
        int[] s0 = ModCcef.squad(0, null);
        ok(s0.length == 6 && s0[0] == ModShips.FRIGATE && s0[5] == ModShips.CAPITAL, "one of each class frigate..capital");
        int[] s4 = ModCcef.squad(4, new double[] {0.0, 0.999});
        ok(s4.length == 8 && s4[6] == ModShips.FRIGATE && s4[7] == ModShips.CAPITAL, "extras pick a class");
        ok(ModCcef.warpTime(5000, true) == 7500 && ModCcef.warpTime(4000, false) == 4000, "lockdown warp +50%");
        ok(near(ModCcef.playerHit(100, true, true), 57.5f), "player +15% then CCEF 50%");
        ok(near(ModCcef.playerHit(100, true, false), 115f) && near(ModCcef.playerHit(100, false, true), 100f), "boost only in the chase");
        ok(!ModCcef.secondarySlot(0) && !ModCcef.secondarySlot(1) && ModCcef.secondarySlot(2), "co-op: 2 of 3 on the heat earner");
        ok(ModCcef.REWARD_CREDITS == 10000000 && ModCcef.REWARD_NEUTRAL_CORES == 10 && ModCcef.REWARD_FACTION_CORES == 2 && ModCcef.REWARD_ALIEN == 20, "kill rewards");
        ok(near(ModCcef.hideRadius(1000, 100, 1200), 1200f), "hides just past the default view");
        ok(ModCcef.hideRadius(4000, 100, 1200) == 0, "a titan's wide view: small ship stays in sight");
        ok(!ModCcef.chase(), "no chase at rest");
        System.out.println("VCCEF VALUES-OK (" + n + ")");
    }
}
