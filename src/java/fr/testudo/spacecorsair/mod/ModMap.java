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
    /** v36: asteroid dots on the minimap radar in gold instead of the stock pure yellow, which reads green under phone colour filters (hooks36); dots 2 -> 3 px, big 3 -> 4.5 px (hooks36b, owner pick 2026-10-30). */
    public static final float ASTEROID_R = 1.0f, ASTEROID_G = 0.82f, ASTEROID_B = 0.0f;

    /** v42 (owner 23:29): in-game GL text sizes (Roboto px): small HUD text x1.25 (14->18, 18->23, 22->28) [D]; titles unchanged. */
    public static final float FONT_SCALE = 1.25f;

    public static int fontPx(int px) {
        return px <= 24 ? Math.round(px * FONT_SCALE) : px;
    }

    /**
     * v42 (owner 23:29): hook in GameThread.drawOnRadarAndCalcNearby (hooks42e). Asteroids (the gold radar colour) are drawn
     * as a small rock icon (dark outline, gold body, light highlight, dark crater) instead of one dot; everything else as before.
     */
    public static void radarPoint(fr.testudo.spacecorsair.engine.RenderQueue q, fr.testudo.spacecorsair.engine.Vector2 at, boolean b,
                                  float r, float g, float bl, float a, float size) {
        if (r != ASTEROID_R || g != ASTEROID_G || bl != ASTEROID_B) {
            q.addToPointWaitingQueue(at, b, r, g, bl, a, size);
            return;
        }
        try {
            float s = size, d = Math.max(1f, s * 0.45f);
            rp.setSameAs(at).add(d * 0.5f, d * 0.5f);
            q.addToPointWaitingQueue(rp, b, 0.30f, 0.22f, 0.0f, a, s * 2.4f);          // shadow / outline
            q.addToPointWaitingQueue(at, b, r, g, bl, a, s * 2.0f);                     // body
            rp.setSameAs(at).add(-d, -d);
            q.addToPointWaitingQueue(rp, b, 1.0f, 0.96f, 0.6f, a, s * 0.8f);            // highlight
            rp.setSameAs(at).add(d, d * 0.4f);
            q.addToPointWaitingQueue(rp, b, 0.55f, 0.38f, 0.0f, a, s * 0.8f);           // crater
        } catch (Throwable t) {
            q.addToPointWaitingQueue(at, b, r, g, bl, a, size);
        }
    }

    private static final fr.testudo.spacecorsair.engine.Vector2 rp = new fr.testudo.spacecorsair.engine.Vector2();

    /**
     * v43a-8 (owner 2026-11-14, hooks47_skull): same as radarPoint, with the element. An enemy at least ModLive.SKULL_GAP
     * levels above the player shows a red skull (icon_skull, upright) instead of its dot; the dot stays until the art is on the GPU.
     */
    public static void radarPoint2(fr.testudo.spacecorsair.engine.RenderQueue q, fr.testudo.spacecorsair.engine.Vector2 at, boolean b,
                                   float r, float g, float bl, float a, float size, fr.testudo.spacecorsair.business.Element e) {
        try {
            if (e != null && ModLive.outlevels(e)) {
                Texture t = ModArt.ready("icon_skull");
                if (t != null) {
                    float h = ModLive.SKULL_RADAR_H, w = h * ModLive.SKULL_ASPECT;
                    ModFx.hudTex(t, at.x, at.y, w, h, ModLive.SKULL_R, ModLive.SKULL_G, ModLive.SKULL_B, Math.max(0.85f, a));
                    return;
                }
            }
        } catch (Throwable ignored) {
            // fall through to the stock dot
        }
        radarPoint(q, at, b, r, g, bl, a, size);
    }

    public static void asteroidRadar(fr.testudo.spacecorsair.business.Element e) {
        e.radarColorR = ASTEROID_R;
        e.radarColorG = ASTEROID_G;
        e.radarColorB = ASTEROID_B;
    }

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

    /** v44: true for a faction's capital sector. */
    static boolean isHome(LevelId id) {
        if (owner == null) build();
        return id != null && home[id.ordinal()];
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
