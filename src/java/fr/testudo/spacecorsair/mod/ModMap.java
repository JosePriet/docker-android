package fr.testudo.spacecorsair.mod;

import fr.testudo.spacecorsair.display.Texture;
import fr.testudo.spacecorsair.engine.ObjectRegistry;
import fr.testudo.spacecorsair.game.levels.LevelId;
import fr.testudo.spacecorsair.textengine.TextSize;
import fr.testudo.spacecorsair.engine.Vector2;

/**
 * v29 galaxy map territories (EVE-style sovereignty): each faction's home sector carries a large glow in its colours with
 * its emblem and name, the sectors it controls a fainter glow; unclaimed sectors stay plain. The green / yellow / red
 * danger colours of the stock map are untouched. Optional ChatGPT art: map_territory_<key> (glow) and map_border (ring);
 * code-drawn with fx_glow / fx_ring otherwise.
 */
public final class ModMap {
    private ModMap() {}

    /** Sector -> faction index into ModCapitals.FACTIONS (-1 = unclaimed); HOME marks the capital sectors. */
    private static int[] owner;
    private static boolean[] home;

    private static void build() {
        int n = LevelId.values().length;
        owner = new int[n];
        home = new boolean[n];
        java.util.Arrays.fill(owner, -1);
        claim("spartan", LevelId.SPARTAN_HQ, LevelId.HUGO_WISDOM, LevelId.HERMES, LevelId.THE_WAVE);
        claim("reaver", LevelId.PIRATE_BAY);
        claim("helion", LevelId.HELIOSTAT, LevelId.CONSTELLATION, LevelId.TWIN_STAR);
        claim("ironclad", LevelId.ORE_BELT);
        claim("varn", LevelId.OMICRON_PRIME, LevelId.ORION, LevelId.THE_VAULT, LevelId.AERIA_PASSING, LevelId.ETERNITY, LevelId.LOST_PARADISE);
        claim("kretari", LevelId.THE_HIVE);
        claim("warden", LevelId.HIGHWAY, LevelId.DELTA_NODE, LevelId.GREEN_BORDER);
    }

    private static void claim(String key, LevelId capital, LevelId... rest) {
        int f = ModFaction.faction(key);
        if (f < 0) return;
        owner[capital.ordinal()] = f;
        home[capital.ordinal()] = true;
        for (LevelId l : rest) owner[l.ordinal()] = f;
    }

    /** Faction index owning a sector, or -1. */
    public static int owner(LevelId id) {
        if (owner == null) build();
        return id == null ? -1 : owner[id.ordinal()];
    }

    private static final ModFx.Sprite GLOW = new ModFx.Sprite(), RING = new ModFx.Sprite(), EMBLEM = new ModFx.Sprite();
    static {
        GLOW.additive = true;
        RING.additive = true;
        EMBLEM.additive = false;
    }
    private static final Vector2 at = new Vector2();
    private static String[] labels;
    private static float[] labelHalf;

    /** Hook (ModQol.galaxyExtra): once per sector per frame while the galaxy map is shown. */
    static void territory(LevelId id) {
        int f = owner(id);
        if (f < 0) return;
        ModCapitals.Faction fc = ModCapitals.FACTIONS[f];
        boolean cap = home[id.ordinal()];
        float pulse = 0.85f + 0.15f * (float) Math.sin(System.currentTimeMillis() / 900.0d + id.ordinal());
        // soft territory glow
        Texture g = ModArt.texture("map_territory_" + fc.key);
        boolean art = g != null;
        if (g == null) g = ModArt.texture("fx_glow");
        if (g != null) {
            float d = cap ? 720 : 520;
            GLOW.myTexture = g;
            GLOW.w = d;
            GLOW.h = d;
            at.setSameAs(id.mapPos);
            ObjectRegistry.INSTANCE.renderQueue.addToWaitingQueue(at, false, GLOW, 0, false,
                (art ? (cap ? 0.55f : 0.35f) : (cap ? 0.30f : 0.18f)) * pulse, fc.r, fc.g, fc.b);
        }
        // sovereignty ring around the capital
        if (cap) {
            Texture r = ModArt.texture("map_border");
            if (r == null) r = ModArt.texture("fx_ring");
            if (r != null) {
                RING.myTexture = r;
                RING.w = 360;
                RING.h = 360;
                at.setSameAs(id.mapPos);
                ObjectRegistry.INSTANCE.renderQueue.addToWaitingQueue(at, false, RING, 0, false, 0.45f * pulse, fc.r, fc.g, fc.b);
            }
        }
        // emblem watermark and faction name
        Texture e = ModArt.texture("emblem_" + fc.key);
        if (e != null) {
            float s = cap ? 120 : 80;
            EMBLEM.myTexture = e;
            EMBLEM.w = s;
            EMBLEM.h = s;
            at.setSameAs(id.mapPos).add(cap ? -175 : -140, 0);
            ObjectRegistry.INSTANCE.renderQueue.addToWaitingQueue(at, false, EMBLEM, 0, false, cap ? 0.9f : 0.6f, 1, 1, 1);
        }
        if (cap) {
            if (labels == null) { labels = new String[ModCapitals.FACTIONS.length]; labelHalf = new float[labels.length]; }
            if (labels[f] == null) {
                labels[f] = fc.name.toUpperCase();
                labelHalf[f] = fr.testudo.spacecorsair.engine.GameRenderer.glTextNormalPlus.getLength(labels[f]) / 2.0f;
            }
            at.setSameAs(id.mapPos).add(-labelHalf[f], -210.0f);
            ObjectRegistry.INSTANCE.renderQueue.addTextToTextWaitingQueue(at, false, labels[f], fc.r, fc.g, fc.b, 0.95f, TextSize.NORMALPLUS);
        }
    }
}
