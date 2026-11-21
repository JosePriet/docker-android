package fr.testudo.spacecorsair.mod;

import java.util.Random;
import static fr.testudo.spacecorsair.mod.ModEvents.*;

/** CLI emits one JSON event per line. Run from the repo root with the classpath in the report. */
public final class EventTool {
    static final int[][] BANDS = {{0,4}, {5,12}, {13,21}, {22,31}, {32,40}};

    private static String quote(String s) {
        return "\"" + s.replace("\\", "\\\\").replace("\"", "\\\"") + "\"";
    }

    static String json(Event e) {
        if (e == null) return "null";
        Context c = e.context;
        StringBuilder route = new StringBuilder();
        for (Stop s : e.stops) {
            if (route.length() > 0) route.append(',');
            route.append("{\"action\":").append(quote(s.action.name())).append(",\"actor\":").append(quote(s.actor.name()))
                .append(",\"art\":").append(quote(s.art)).append(",\"distance\":").append(s.distance)
                .append(",\"count\":").append(s.count).append(",\"required\":").append(s.required)
                .append(",\"holdSeconds\":").append(s.holdSeconds).append('}');
        }
        return "{\"seed\":" + e.seed + ",\"level\":" + c.level + ",\"faction\":" + quote(c.faction)
            + ",\"owner\":" + quote(c.owner) + ",\"standing\":" + c.standing + ",\"heat\":" + c.heat
            + ",\"policeTier\":" + c.policeTier + ",\"seconds\":" + c.seconds + ",\"kills\":" + c.kills
            + ",\"trigger\":" + quote(c.trigger.name()) + ",\"objective\":" + quote(e.objective.name())
            + ",\"twist\":" + quote(e.twist.name()) + ",\"brief\":" + quote(e.objective.brief)
            + ",\"twistBrief\":" + quote(e.twist.line) + ",\"encounterLevel\":" + e.encounterLevel
            + ",\"stops\":[" + route + "],\"deadlineSeconds\":" + e.deadline + ",\"reward\":{\"credits\":" + e.credits
            + ",\"rareParts\":" + e.parts + ",\"standingFaction\":" + quote(c.faction) + ",\"standingDelta\":" + e.standing
            + ",\"item\":" + quote(e.item) + ",\"lootTier\":" + quote(e.lootTier) + "}}";
    }

    static Context fixture(long seed, int[] band) {
        Random r = new Random(seed * 6364136223846793005L + 1442695040888963407L);
        int level = band[0] + r.nextInt(band[1] - band[0] + 1);
        String[] keys = ModRepData.KEYS;
        String faction = keys[r.nextInt(keys.length)], owner = keys[r.nextInt(keys.length)];
        Trigger trigger = Trigger.values()[r.nextInt(Trigger.values().length)];
        int standing = trigger == Trigger.STANDING ? 20 + r.nextInt(81) : r.nextInt(201) - 100;
        int tier = trigger == Trigger.POLICE ? r.nextInt(7) : r.nextInt(8) - 1;
        int heat = tier < 0 ? 0 : 1 + r.nextInt(50);
        int seconds = r.nextInt(120) + (trigger == Trigger.TIME ? 60 : 0);
        int kills = r.nextInt(12) + (trigger == Trigger.KILLS ? 3 : 0);
        return new Context(level, faction, owner, standing, heat, tier, seconds, kills, trigger);
    }

    public static void main(String[] args) {
        if (args.length == 1 && args[0].equals("sweep")) {
            for (int b = 0; b < BANDS.length; b++) {
                for (int i = 0; i < 1000; i++) {
                    long seed = b * 1000L + i;
                    System.out.println(json(generate(seed, fixture(seed, BANDS[b]))));
                }
            }
        } else if (args.length == 10) {
            Context c = new Context(Integer.parseInt(args[1]), args[2], args[3], Integer.parseInt(args[4]),
                Integer.parseInt(args[5]), Integer.parseInt(args[6]), Integer.parseInt(args[7]),
                Integer.parseInt(args[8]), Trigger.valueOf(args[9]));
            System.out.println(json(generate(Long.parseLong(args[0]), c)));
        } else {
            throw new IllegalArgumentException("sweep | SEED LEVEL FACTION OWNER STANDING HEAT TIER SECONDS KILLS TRIGGER");
        }
    }
}
