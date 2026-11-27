package fr.testudo.spacecorsair.mod;

import java.io.ByteArrayOutputStream;
import java.io.InputStream;
import java.lang.reflect.Array;
import java.lang.reflect.Field;
import java.lang.reflect.Modifier;
import java.util.LinkedHashMap;
import java.util.Map;

/**
 * Content updates phase 2: mission, lore, faction and reputation text (and the numbers in those tables) from a
 * content pack. A pack carries data/text.json, a flat JSON object "Class.FIELD.i[.j]" -> value, e.g.
 * {"ModFactionData.COMMANDER_LINE.2": "...", "ModV30Data.BOSS_EN.1.0": "..."}. Each entry replaces one element of
 * an existing static array of an allowed generated data class, in place: arrays never change size, an index out of
 * range, a field that is not allowed, or a value of another type is skipped and logged. Applied once by
 * ModContent.ensure right after the chain is loaded (later packs win). Identifier arrays (keys, sector and hull
 * names) are never changed, because code looks things up by them.
 */
final class ModTables {
    private ModTables() {}

    static final String[] CLASSES = {"ModFactionData", "ModV30Data", "ModRepData"};
    static final String[] LOCKED = {"KEYS", "SITE_SECTOR", "SITE_HULLS", "SECRET_SHIP"};

    static void apply() {
        Map<String, String> all = new LinkedHashMap<String, String>();
        for (InputStream in : ModContent.layers(null, "data/text.json")) {
            try {
                ByteArrayOutputStream b = new ByteArrayOutputStream();
                byte[] buf = new byte[8192];
                for (int n; (n = in.read(buf)) > 0; ) b.write(buf, 0, n);
                ModLang.parseFlat(new String(b.toByteArray(), "UTF-8"), all);
            } catch (Throwable t) { ModDev.ev("content", "text.json: " + t); }
            finally { try { in.close(); } catch (Throwable t) { /* closed */ } }
        }
        if (all.isEmpty()) return;
        int ok = 0;
        for (Map.Entry<String, String> e : all.entrySet()) {
            String bad = set(e.getKey(), e.getValue());
            if (bad == null) ok++; else ModDev.ev("content", "text.json " + e.getKey() + ": " + bad);
        }
        ModDev.ev("content", "tables: " + ok + "/" + all.size() + " entries applied");
    }

    /** Sets one element; null when done, else why not. Pure Java (V60U). */
    static String set(String key, String value) {
        try {
            String[] p = key.split("\\.");
            if (p.length < 3 || p.length > 4) return "key must be Class.FIELD.i or Class.FIELD.i.j";
            boolean cls = false;
            for (String c : CLASSES) if (c.equals(p[0])) cls = true;
            if (!cls) return "class not allowed";
            for (String l : LOCKED) if (l.equals(p[1])) return "field is locked";
            Field f = Class.forName("fr.testudo.spacecorsair.mod." + p[0]).getDeclaredField(p[1]);
            if (!Modifier.isStatic(f.getModifiers()) || !f.getType().isArray()) return "not a static array";
            f.setAccessible(true);
            Object arr = f.get(null);
            for (int k = 2; k < p.length - 1; k++) {
                int i = Integer.parseInt(p[k]);
                if (arr == null || !arr.getClass().isArray() || i < 0 || i >= Array.getLength(arr)) return "index out of range";
                arr = Array.get(arr, i);
            }
            int i = Integer.parseInt(p[p.length - 1]);
            if (arr == null || !arr.getClass().isArray() || i < 0 || i >= Array.getLength(arr)) return "index out of range";
            Class<?> ct = arr.getClass().getComponentType();
            if (ct.isArray()) return "not an element";
            Object old = Array.get(arr, i);
            Object nv;
            if (ct == String.class || (ct == Object.class && old instanceof String)) nv = value;
            else if (ct == int.class || (ct == Object.class && old instanceof Integer)) nv = Integer.valueOf(Integer.parseInt(value.trim()));
            else if (ct == long.class || (ct == Object.class && old instanceof Long)) nv = Long.valueOf(Long.parseLong(value.trim()));
            else if (ct == float.class || (ct == Object.class && old instanceof Float)) nv = Float.valueOf(Float.parseFloat(value.trim()));
            else if (ct == double.class || (ct == Object.class && old instanceof Double)) nv = Double.valueOf(Double.parseDouble(value.trim()));
            else return "element type not supported";
            if (nv instanceof Float && (((Float) nv).isNaN() || ((Float) nv).isInfinite())) return "not a number";
            if (nv instanceof Double && (((Double) nv).isNaN() || ((Double) nv).isInfinite())) return "not a number";
            Array.set(arr, i, nv);
            return null;
        } catch (NumberFormatException n) {
            return "not a number";
        } catch (Throwable t) {
            return String.valueOf(t);
        }
    }
}
