package fr.testudo.spacecorsair.mod;

import fr.testudo.spacecorsair.engine.Vector2;

/** Pure game-thread decision boundaries. Run with the freshly compiled mod first on the classpath. */
public final class B2ArenaAI {
    static int checks;
    static void check(boolean ok, String message) {
        if (!ok) throw new AssertionError(message);
        checks++;
    }

    static void point(Vector2 p, float x, float y, String message) {
        check(Math.abs(p.x - x) < 0.001f && Math.abs(p.y - y) < 0.001f, message);
    }

    public static void main(String[] args) throws Exception {
        for (String flag : new String[]{"AI2_KITE", "AI2_SCREEN", "AI2_RADIO", "AI2_PREDICT_ARTILLERY"})
            check(!ModTitanAI.class.getField(flag).getBoolean(null), flag + " must ship disabled");

        Vector2 origin = new Vector2(), p = new Vector2(), target = new Vector2(0, 2000);
        check(ModTitanAI.screenPoint(p, origin, target, 0, 3), "screen in range");
        point(p, ModAegisDrones.SIZE, 680, "left screen rotated toward target");
        ModTitanAI.screenPoint(p, origin, target, 2, 3);
        point(p, -ModAegisDrones.SIZE, 680, "right screen");
        target.set(200, 0);
        ModTitanAI.screenPoint(p, origin, target, 0, 1);
        point(p, 100, 0, "one remaining drone screens midway");
        check(!ModTitanAI.screenPoint(p, origin, origin, 0, 1), "coincident ships");
        target.set(ModAegisDrones.RAIL_RANGE, 0);
        check(!ModTitanAI.screenPoint(p, origin, target, 0, 2), "out of range releases screen");

        for (int d : new int[]{0, 199, 200, 375, 400, 401}) {
            ModTitanAI.rangePoint(p, new Vector2(d, 0), origin, 200, 400);
            point(p, Math.min(400, Math.max(200, d)), 0, "range band at " + d);
        }
        Vector2 v = new Vector2(1, -1);
        ModTitanAI.steer(origin, v, target, 0);
        point(v, 1, -1, "paused");
        ModTitanAI.steer(origin, v, target, 9000);
        point(v, 6, 0, "frame gap bounded");
        ModTitanAI.steer(p, v, p, 300);
        point(v, 0, 0, "arrive without overshooting");

        ModTitanAI.artilleryPoint(p, target, new Vector2(2, 3), false);
        point(p, target.x, target.y, "stock lock");
        ModTitanAI.artilleryPoint(p, target, new Vector2(2, 3), true);
        point(p, target.x + 200, target.y + 300, "one second lead");
        ModTitanAI.artilleryPoint(p, target, new Vector2(0, -30), true);
        target.set(10, 20);
        point(p, ModAegisDrones.RAIL_RANGE, -760, "boost lead capped and lock frozen");
        ModTitanAI.artilleryPoint(p, target, origin, true);
        point(p, 10, 20, "stationary target");

        check(ModPolice.radioTimer(30000, 0, -1, 59, 100) == 14000, "first tier distress");
        check(ModPolice.radioTimer(30000, 2, 1, 59, 100) == 10000, "escalated distress");
        check(ModPolice.radioTimer(30000, 4, 3, 59, 100) == ModPolice.WAVE_FLOOR_MS, "countdown floor");
        check(ModPolice.radioTimer(4000, 4, 3, 59, 100) == 4000, "already closer");
        check(ModPolice.radioTimer(30000, 2, 2, 5, 100) == 30000, "one call per tier");
        check(ModPolice.radioTimer(30000, 0, -1, 60, 100) == 30000, "strict threshold");
        check(ModPolice.radioTimer(30000, 0, -1, 0, 100) == 30000, "no posthumous distress");
        check(ModPolice.radioTimer(30000, ModShips.TITAN, 1, 10, 100) == 30000, "titan exclusion");
        System.out.println("B2 AI OK (" + checks + " checks)");
    }
}
