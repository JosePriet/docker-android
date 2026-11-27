package fr.testudo.spacecorsair.mod;

import java.io.InputStream;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;

/**
 * Content updates phase 2: balance numbers a content pack can change without a game update. A pack carries
 * data/tune.txt ("key=value" lines, '#' comments); later packs in the chain win. Code reads a number through
 * f(key, default, min, max): no pack (or no such key) = the built-in default, out-of-range values are clamped,
 * anything unparsable is ignored. Values are read once per process, after the pack chain is loaded, so they never
 * change during a run. MP is safe: the join hash already covers the active pack chain. Keys in use: KEYS below.
 */
public final class ModTune {
    private ModTune() {}

    /** Every key the code reads (documentation for pack authors; tools/updates/README.md lists the ranges). */
    static final String[] KEYS = {
        "capital.dmg_mult", "police.dmg_bonus", "police.hull_bonus", "police_titan.stat_mult", "police_titan.over_pass",
        "aegis.drones_min", "aegis.drones_max", "aegis.respawn_s",
        "hold.police_lo", "hold.police_hi", "hold.flag_lo", "hold.flag_hi",
        "events.first_s", "events.gap_min_s", "events.gap_max_s", "events.distress_pay", "events.bounty_pay",
        "chain.window_s", "chain.step", "chain.cap",
        "ccef.speed", "ccef.dmg_taken", "ccef.player_dmg", "ccef.warp_in_s", "ccef.survive_s", "ccef.warp_mult", "ccef.reward_credits",
    };

    private static volatile Map<String, Float> vals;
    private static final Set<String> warned = new HashSet<String>();

    public static float f(String key, float def, float min, float max) {
        Map<String, Float> m = vals;
        if (m == null) m = load();
        Float v = m.get(key);
        if (v == null) return def;
        float x = v.floatValue();
        if (x < min || x > max) {
            warn(key, x);
            return x < min ? min : max;
        }
        return x;
    }

    public static int i(String key, int def, int min, int max) {
        return Math.round(f(key, def, min, max));
    }

    private static void warn(String key, float x) {
        synchronized (warned) { if (!warned.add(key)) return; }
        ModDev.ev("content", "tune " + key + "=" + x + " out of range, clamped");
    }

    /** Reads the pack layers once the chain is known; before that, defaults (not cached, so a later call reads the packs). */
    private static synchronized Map<String, Float> load() {
        if (vals != null) return vals;
        Map<String, Float> m = new HashMap<String, Float>();
        if (!ModContent.isReady()) return m;
        for (InputStream in : ModContent.layers(null, "data/tune.txt")) {
            try { parse(ModContent.readLines(in), m); } catch (Throwable t) { ModDev.ev("content", "tune.txt: " + t); }
            finally { try { in.close(); } catch (Throwable t) { /* closed */ } }
        }
        if (!m.isEmpty()) ModDev.ev("content", "tune: " + m.size() + " values from packs");
        vals = m;
        return m;
    }

    /** "key=value" lines into out (later lines win). Pure Java (V60U). */
    static void parse(String[] lines, Map<String, Float> out) {
        for (String l : lines) {
            if (l.startsWith("#")) continue;
            int e = l.indexOf('=');
            if (e <= 0) continue;
            String k = l.substring(0, e).trim();
            try {
                float x = Float.parseFloat(l.substring(e + 1).trim());
                if (!Float.isNaN(x) && !Float.isInfinite(x) && k.length() > 0 && k.length() <= 64) out.put(k, x);
            } catch (NumberFormatException n) { /* ignored */ }
        }
    }

    /** Test hook (V60U). */
    static synchronized void testSet(Map<String, Float> m) { vals = m; synchronized (warned) { warned.clear(); } }
}
