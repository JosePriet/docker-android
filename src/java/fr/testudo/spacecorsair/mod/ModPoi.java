package fr.testudo.spacecorsair.mod;

import fr.testudo.spacecorsair.business.world.station.AlienTradeStation;
import fr.testudo.spacecorsair.business.world.station.Station;
import fr.testudo.spacecorsair.business.world.station.ThreeDockStation;
import fr.testudo.spacecorsair.display.Drawable;
import fr.testudo.spacecorsair.display.Texture;
import fr.testudo.spacecorsair.engine.ObjectRegistry;
import fr.testudo.spacecorsair.engine.Vector2;
import fr.testudo.spacecorsair.game.levels.LevelId;

import java.util.HashMap;
import java.util.Map;

/**
 * v44: GPT point-of-interest structures (gpt-catchup item 10) replace the stock station sprites.
 * Hook: getDrawableObject() of BasicTradeStation, MissionStation, CasinoStation, ThreeDockStation, AlienTradeStation
 * returns ModPoi.drawable(this, stock). Art is optional: until modart/poi_* exists and is on the GPU the stock sprite
 * stays, so nothing changes before the art ships. Physics, docks and the map icon are untouched.
 *
 * Which art a station gets:
 *  - AlienTradeStation: poi_base_kretari
 *  - ThreeDockStation (stock mining station): poi_mining_1..3
 *  - any other station in a faction capital sector: poi_base_<owner>
 *  - every other station: poi_outpost_1..3
 * The 1..3 variant is fixed per station name, so a station keeps its look between visits.
 */
public final class ModPoi {
    private ModPoi() {}

    /** GPT art fills ~85% of its 1024 canvas; stock sprites fill ~100%: scale up so the structure keeps its size. */
    static final float FILL = 1f / 0.85f;
    /** Faction bases read a little larger than outposts. */
    static final float BASE = 1.15f;

    // game thread only (draw queue build): no locking
    private static final Map<String, Drawable> cache = new HashMap<String, Drawable>();
    private static LevelId memoLevel;
    private static String memoBase;

    /** Hook: station getDrawableObject(). Returns stock when no POI art is ready. */
    public static Drawable drawable(Station st, Drawable stock) {
        try {
            if (st == null || stock == null || stock.dimensions == null) return stock;
            String key = artFor(st);
            if (key == null) return stock;
            Texture t = ModArt.ready(key);
            if (t == null) return stock;
            float scale = FILL * (key.startsWith("poi_base_") ? BASE : 1f);
            float side = Math.max(stock.dimensions.x, stock.dimensions.y) * scale;
            String ck = key + '@' + (int) side;
            Drawable d = cache.get(ck);
            if (d == null || d.myTexture != t) {
                d = new Drawable(new Vector2(side, side), t);
                cache.put(ck, d);
            }
            return d;
        } catch (Throwable e) {
            return stock;
        }
    }

    static String artFor(Station st) {
        if (st instanceof AlienTradeStation) return have("poi_base_kretari");
        if (st instanceof ThreeDockStation) return variant("poi_mining_", st);
        String base = baseHere();
        if (base != null) return base;
        return variant("poi_outpost_", st);
    }

    /** poi_base_<owner> in a faction capital sector when that art ships, else null. */
    private static String baseHere() {
        LevelId id = null;
        try { id = ObjectRegistry.INSTANCE.game.currentLevel.id; } catch (Throwable e) { /* no level yet */ }
        if (id == null) return null;
        if (id != memoLevel || !ModArt.listed()) {
            memoLevel = id;
            memoBase = null;
            if (ModMap.isHome(id)) {
                int f = ModMap.owner(id);
                if (f >= 0) memoBase = have("poi_base_" + ModCapitals.FACTIONS[f].key);
            }
        }
        return memoBase;
    }

    /** prefix + 1..3 picked by station name; falls back to any shipped variant. */
    private static String variant(String prefix, Station st) {
        int h = st.name == null ? 0 : st.name.hashCode();
        int v = ((h % 3) + 3) % 3;
        for (int i = 0; i < 3; i++) {
            String k = have(prefix + (1 + (v + i) % 3));
            if (k != null) return k;
        }
        return null;
    }

    /** key when modart/<key> ships; null while the asset listing is not known yet (never caches a false miss). */
    private static String have(String key) {
        if (!ModArt.hasArt(key) || !ModArt.listed()) return null;
        return key;
    }
}
