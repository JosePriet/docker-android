package fr.testudo.spacecorsair.mod;

import java.util.EnumSet;
import static fr.testudo.spacecorsair.mod.ModEvents.*;

/** JVM regression checks, including rejected inputs and null game registry on the default-off path. */
public final class ProcgenEventsTest {
    private static void check(boolean value, String reason) {
        if (!value) throw new AssertionError(reason);
    }

    private static Context input(Trigger signal, int standing, int heat, int tier, int seconds, int kills) {
        return new Context(22, "warden", "reaver", standing, heat, tier, seconds, kills, signal);
    }

    public static void main(String[] args) {
        check(ModEvents.enabled(), "existing sector events must stay enabled");
        check(!ENABLED && !onTrigger(0, null, null, -1, -1, -1), "disabled hook touched game");
        check(generate(0, input(Trigger.TIME, 0, 0, -1, 59, 0)) == null, "early timer");
        check(generate(0, input(Trigger.KILLS, 0, 0, -1, 0, 2)) == null, "early kill");
        check(generate(0, input(Trigger.POLICE, 0, 25, -1, 0, 0)) == null, "missing police wave");
        check(generate(0, input(Trigger.POLICE, 0, 0, 5, 0, 0)) == null, "cold sector");
        check(generate(0, input(Trigger.STANDING, 19, 0, -1, 0, 0)) == null, "early standing");
        check(generate(0, input(Trigger.STANDING, 20, 0, -1, 0, 0)) != null, "friendly edge");
        check(generate(0, input(Trigger.TIME, 0, 0, -1, 60, 0)) != null, "timer edge");
        check(generate(0, input(Trigger.KILLS, 0, 0, -1, 0, 3)) != null, "kill edge");
        check(generate(0, input(Trigger.POLICE, 0, 1, 0, 0, 0)) != null, "first wave");
        check(!Objective.ESCORT.offered(input(Trigger.ENTRY, -10, 0, -1, 0, 0)), "unfriendly escort");
        check(Objective.ESCORT.offered(input(Trigger.ENTRY, -9, 0, -1, 0, 0)), "neutral escort");
        check(!Objective.FACTION_WAR.offered(new Context(40, "spartan", "warden", 80, 0, -1, 0, 4,
            Trigger.KILLS)), "war between allies");
        try {
            new Context(40, "unknown", "reaver", 0, 0, -1, 0, 0, Trigger.ENTRY);
            throw new AssertionError("unknown faction");
        } catch (IllegalArgumentException expected) { /* rejected */ }

        EnumSet<Objective> objectives = EnumSet.noneOf(Objective.class);
        EnumSet<Twist> twists = EnumSet.noneOf(Twist.class);
        int tested = 0;
        for (int[] band : EventTool.BANDS) {
            for (int i = 0; i < 1000; i++) {
                long seed = tested++;
                Context c = EventTool.fixture(seed, band);
                Event e = generate(seed, c);
                check(EventTool.json(e).equals(EventTool.json(generate(seed, c))), "replay " + seed);
                check(e.objective.triggers.contains(c.trigger), "wrong trigger");
                check(e.encounterLevel == c.level && e.credits >= 0, "level or payout");
                check(e.standing + c.standing <= 100, "rank overflow");
                objectives.add(e.objective);
                twists.add(e.twist);
            }
        }
        check(objectives.size() == 9 && twists.size() == 4, "unreachable grammar rows");
        System.out.println("PROCGEN OK: thresholds, disabled hook, 5000 deterministic replays, 9 objectives, 4 twists");
    }
}
