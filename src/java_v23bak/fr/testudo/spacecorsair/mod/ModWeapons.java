package fr.testudo.spacecorsair.mod;

import fr.testudo.spacecorsair.business.Element;
import fr.testudo.spacecorsair.business.loot.LootRarety;
import fr.testudo.spacecorsair.business.loot.SpaceObject;
import fr.testudo.spacecorsair.business.loot.SpaceObjectType;
import fr.testudo.spacecorsair.business.loot.stuff.GearSpec;
import fr.testudo.spacecorsair.business.loot.stuff.alteration.AlterationSpecs;
import fr.testudo.spacecorsair.business.loot.stuff.laser.LaserSpec;
import fr.testudo.spacecorsair.business.player.PlayerShip;
import fr.testudo.spacecorsair.business.projectiles.EnergyBullet;
import fr.testudo.spacecorsair.business.world.UniverseName;
import fr.testudo.spacecorsair.business.world.station.Station;
import fr.testudo.spacecorsair.display.Drawable;
import fr.testudo.spacecorsair.engine.ObjectRegistry;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.WeakHashMap;

/**
 * v18 weapon families, EVE-style but simplified to this game's main-gun slot: railgun (long range, heavy slugs),
 * autocannon (rapid, inaccurate), artillery (slow, huge shells with splash), blaster (short-range brawler),
 * disintegrator (damage ramps up on the same target) and arc projector (lightning that chains to nearby enemies).
 * Each family has 4 tiers (levels 0 / 5 / 10 / 15) sold at laser shops; turret ships fire them from every turret.
 * No SpaceObjectType references in static init (enum init order): specs only.
 */
public final class ModWeapons {
    private ModWeapons() {}

    public static final int RAIL = 0, AUTO = 1, ARTY = 2, BLAST = 3, DISINT = 4, ARC = 5, COUNT = 6;
    public static final String[] BASE = {"modRailgun", "modAutocannon", "modArtillery", "modBlaster", "modDisintegrator", "modArcProjector"};
    static final String[] NAME = {"Railgun", "Autocannon", "Artillery", "Blaster", "Disintegrator", "Arc Projector"};
    static final String[] TIER_NAME = {"Light", "Standard", "Heavy", "Siege"};
    // tier-3 stats: damage, reload ms, precision, bullet speed, range factor (bullet lifetime)
    static final float[][] STAT = {
        {230, 1250, 100, -26.0f, 1.8f},
        {19, 100, 84, -12.0f, 1.0f},
        {420, 2400, 97, -11.0f, 1.6f},
        {62, 280, 92, -7.0f, 0.5f},
        {34, 200, 100, -10.0f, 0.9f},
        {95, 520, 100, -14.0f, 1.0f},
    };
    static final float[][] COLOR = {
        {0.55f, 0.95f, 1.0f}, {1.0f, 0.82f, 0.35f}, {1.0f, 0.55f, 0.2f}, {0.35f, 1.0f, 0.65f}, {1.0f, 0.25f, 0.3f}, {0.55f, 0.75f, 1.0f},
    };
    public static final int[] PRICE = {30000, 90000, 250000, 600000};

    static final LaserSpec[][] SPECS = new LaserSpec[COUNT][4];
    /** Bullets carry their family through this per-family alteration object (no special effects). */
    static final AlterationSpecs[] TAG = new AlterationSpecs[COUNT];

    static {
        for (int f = 0; f < COUNT; f++) {
            TAG[f] = new AlterationSpecs();
            for (int t = 0; t < 4; t++) {
                float m = ModSpecs.TIER_MULT[t];
                LaserSpec s = new LaserSpec();
                s.rarety = t == 0 ? LootRarety.RARE : t == 3 ? LootRarety.LEGENDARY : LootRarety.EXCEPTIONAL;
                s.level = ModSpecs.TIER_LEVELS[t];
                s.damage = Math.max(1, Math.round(STAT[f][0] * m));
                s.reload = (int) STAT[f][1];
                s.precision = (int) STAT[f][2];
                s.bulletSpeed = STAT[f][3];
                s.heatBySec = 5;
                s.r = COLOR[f][0];
                s.g = COLOR[f][1];
                s.b = COLOR[f][2];
                s.alterationSpecs = TAG[f];
                SPECS[f][t] = s;
            }
        }
    }

    /** Used by the new enum constants (hooks13): spec(family * 4 + tier). */
    public static GearSpec spec(int i) {
        return SPECS[i / 4][i % 4];
    }

    static int family(LaserSpec s) {
        if (s == null) return -1;
        for (int f = 0; f < COUNT; f++) for (int t = 0; t < 4; t++) if (SPECS[f][t] == s) return f;
        for (int f = 0; f < COUNT; f++) if (s.alterationSpecs == TAG[f]) return f;   // v22 faction secret weapons share the family tag
        return -1;
    }

    static final String[] FAMILY_NAMES = {"Railgun", "Autocannon", "Artillery", "Blaster", "Disintegrator", "Arc Projector"};
    static final String[] ICONS = {"icon_railgun", "icon_autocannon", "icon_artillery", "icon_blaster", "icon_disintegrator", "icon_arc"};

    static String familyName(int f) {
        return f >= 0 && f < COUNT ? FAMILY_NAMES[f] : "";
    }

    static int familyOf(Object bullet) {
        if (!(bullet instanceof EnergyBullet)) return -1;
        AlterationSpecs a = ((EnergyBullet) bullet).alterationSpecs;
        for (int f = 0; f < COUNT; f++) if (TAG[f] == a) return f;
        return -1;
    }

    static String typeName(int f, int t) {
        return t == 0 ? BASE[f] : BASE[f] + "L" + ModSpecs.TIER_LEVELS[t];
    }

    private static int[] parse(String n) {
        for (int f = 0; f < COUNT; f++) {
            if (!n.startsWith(BASE[f])) continue;
            String rest = n.substring(BASE[f].length());
            if (rest.length() == 0) return new int[]{f, 0};
            for (int t = 1; t < 4; t++) if (rest.equals("L" + ModSpecs.TIER_LEVELS[t])) return new int[]{f, t};
        }
        return null;
    }

    public static String label(SpaceObjectType t) {
        int[] ft = parse(t.name());
        return ft == null ? null : TIER_NAME[ft[1]] + " " + NAME[ft[0]];
    }

    public static String desc(SpaceObjectType t) {
        int[] ft = parse(t.name());
        if (ft == null) return null;
        String d;
        switch (ft[0]) {
            case RAIL: d = "<b>Railgun</b>: magnetic slug thrower. Very long range, near-instant slugs, heavy damage per shot, slow reload."; break;
            case AUTO: d = "<b>Autocannon</b>: rapid-fire projectile gun. Small shells, huge rate of fire, spread at range."; break;
            case ARTY: d = "<b>Artillery</b>: siege gun. Very slow reload, enormous shells that also hit everything within 180 of the impact (50%)."; break;
            case BLAST: d = "<b>Blaster</b>: short-range plasma brawler. The highest damage per second, but the bolts fizzle out quickly."; break;
            case DISINT: d = "<b>Disintegrator</b>: entropic beam pulses. Damage ramps up to +100% while you keep hitting the same target, resets when you switch."; break;
            default: d = "<b>Arc Projector</b>: lightning bolts that jump from the target to 2 more enemies within 450 (60% damage each)."; break;
        }
        return d + "<br><br><font color='#6ad0ff'><b>Sold at:</b> " + soldAt(ft[0], ft[1]) + "</font>";
    }

    // ------------------------------------------------------------------ shops
    private static String soldAt(int f, int t) {
        List<String> s = new ArrayList<String>();
        for (String[] r : SHOP_RULES(f, t)) s.add(r[1]);
        return s.isEmpty() ? "rare drop" : android.text.TextUtils.join(", ", s);
    }

    /** {station name, readable place} for a family / tier. */
    private static String[][] SHOP_RULES(int f, int t) {
        List<String[]> out = new ArrayList<String[]>();
        if (t == 0) out.add(new String[]{UniverseName.STATION_REPLEX_INC, "Replex laser inc (Ventohigh)"});
        if (t == 1 && (f == AUTO || f == BLAST || f == RAIL)) out.add(new String[]{UniverseName.STATION_REPLEX_INC, "Replex laser inc (Ventohigh)"});
        if ((t == 1 || t == 2) && (f == AUTO || f == ARTY || f == DISINT)) out.add(new String[]{"smuggler", "Smuggler stations (Pirate Bay, Solar Field)"});
        if ((t == 1 || t == 2) && (f == RAIL || f == BLAST || f == ARTY || f == ARC)) out.add(new String[]{UniverseName.SPARTAN_LASER_FACTORY, "Laser shop (Spartan HQ)"});
        if (t == 3 || (t == 2 && (f == DISINT || f == ARC))) out.add(new String[]{UniverseName.STATION_OMICRON_PRIME_GOODS, "Omicron goods station (Omicron Prime)"});
        return out.toArray(new String[out.size()][]);
    }

    private static final Map<Station, Boolean> stocked = new WeakHashMap<Station, Boolean>();

    /** On every sector load (ModCaps.tick): put the families on the matching stations' shelves. */
    public static void stockShops() {
        try {
            List<Element> els = ObjectRegistry.INSTANCE.game.currentLevel.elements;
            for (int i = 0; i < els.size(); i++) {
                Element e = els.get(i);
                if (!(e instanceof Station) || stocked.containsKey(e)) continue;
                Station st = (Station) e;
                if (st.name == null) continue;
                String n = st.name.toLowerCase();
                boolean any = false;
                for (int f = 0; f < COUNT; f++) {
                    for (int t = 0; t < 4; t++) {
                        for (String[] r : SHOP_RULES(f, t)) {
                            if (r[0] != null && n.contains(r[0].toLowerCase())) {
                                st.inventory.addObject(SpaceObject.ofInfinite(SpaceObjectType.valueOf(typeName(f, t))));
                                any = true;
                            }
                        }
                    }
                }
                stocked.put(st, Boolean.valueOf(any));
            }
        } catch (Throwable t) {
            // shops keep their stock
        }
    }

    // ------------------------------------------------------------------ firing
    /** From Mod.addBullet: per-family bullet colour and range. */
    public static void onBullet(PlayerShip ps, Object o) {
        try {
            int f = familyOf(o);
            if (f < 0) return;
            EnergyBullet b = (EnergyBullet) o;
            b.r = COLOR[f][0];
            b.g = COLOR[f][1];
            b.b = COLOR[f][2];
            b.a = 1.0f;
            b.lifeTimeInMilli = (long) (b.lifeTimeInMilli * STAT[f][4]);
            ModFx.part("fx_core", b.position.x, b.position.y, 0, 0, 120, 30, f == ARTY ? 120 : f == RAIL ? 90 : 50, COLOR[f][0], COLOR[f][1], COLOR[f][2], 0.9f, true, true);
        } catch (Throwable t) {
            return;
        }
    }

    static final String[] SOUND = {"wpn_rail", "wpn_auto", "wpn_arty", "wpn_blast", "wpn_disint", "wpn_arc"};
    static final long[] GAP = {120, 70, 200, 90, 90, 120};

    /** True when the equipped gun is one of the families (its own sound, deeper on bigger hulls). */
    public static boolean playFire(PlayerShip ps) {
        try {
            int f = family(ps.laserSpec);
            if (f < 0) return false;
            ModShips.Hull h = ModShips.hullFor(ps.shipSpec);
            int cls = h == null ? -1 : h.cls;
            float rate = cls == ModShips.TITAN ? 0.72f : (cls == ModShips.BATTLESHIP || cls == ModShips.CAPITAL) ? 0.84f
                : (cls == ModShips.CRUISER || cls == ModShips.BATTLECRUISER) ? 0.93f : 1.0f;
            float gain = cls == ModShips.TITAN ? 1.0f : 0.75f;
            ModSound.play(SOUND[f], gain, rate * ModFx.rnd(0.96f, 1.04f), GAP[f]);
            return true;
        } catch (Throwable t) {
            return false;
        }
    }

    // ------------------------------------------------------------------ visuals
    private static ModFx.Sprite[] sprites;
    private static int trail;

    /** From ModTitan.bullet: family bullet sprites (bigger on titans) + trails. Null = not a family bullet. */
    public static Drawable bullet(EnergyBullet e, boolean titan) {
        int f = familyOf(e);
        if (f < 0) return null;
        if (sprites == null) {
            sprites = new ModFx.Sprite[COUNT * 2];
            String[] tex = {"fx_bolt", "fx_bolt", "fx_core", "fx_glow", "fx_bolt", "fx_spark"};
            float[][] wh = {{24, 190}, {10, 36}, {64, 64}, {44, 44}, {18, 64}, {44, 44}};
            for (int k = 0; k < COUNT; k++) {
                sprites[k] = ModFx.fixed(tex[k], wh[k][0], wh[k][1], true);
                sprites[COUNT + k] = ModFx.fixed(tex[k], wh[k][0] * 1.8f, wh[k][1] * 1.6f, true);
            }
        }
        ModFx.Sprite s = sprites[(titan ? COUNT : 0) + f];
        if (s.myTexture == null) ModFx.rebind(s, f == ARTY ? "fx_core" : f == BLAST ? "fx_glow" : f == ARC ? "fx_spark" : "fx_bolt");
        if (f == RAIL) {
            ModFx.part("fx_beam", e.position.x, e.position.y, 0, 0, 320, 16, 6, COLOR[f][0], COLOR[f][1], COLOR[f][2], 0.85f, true, false);
            ModFx.part("fx_glow", e.position.x, e.position.y, 0, 0, 180, 70, 20, COLOR[f][0], COLOR[f][1], COLOR[f][2], 0.6f, true, false);
        } else if (f == ARTY) {
            ModFx.part("fx_glow", e.position.x, e.position.y, 0, 0, 160, 110, 50, 1.0f, 0.6f, 0.25f, 0.75f, true, false);
            if (((trail++) & 1) == 0)
                ModFx.part("fx_smoke", e.position.x, e.position.y, 0, 0, 900, 30, 80, 0.5f, 0.45f, 0.4f, 0.6f, false, false);
        } else if (f == ARC && Math.random() < 0.5) {
            ModFx.part("fx_spark", e.position.x + ModFx.rnd(-14, 14), e.position.y + ModFx.rnd(-14, 14), 0, 0, 120, 20, 8, 0.7f, 0.85f, 1.0f, 1.0f, true, false);
        }
        return s.myTexture == null ? null : s;
    }

    // ------------------------------------------------------------------ impacts
    private static Element rampTarget;
    private static long rampSince;
    private static final ArrayList<Element> near = new ArrayList<Element>();
    static final float[] arcs = new float[6 * 8];   // x1,y1,x2,y2,ttl,unused per arc
    static int arcCount;

    /** Hook: EnergyBullet.onImpactWithElement (before the hit's damage is applied). */
    public static void onImpact(EnergyBullet b, Element target) {
        try {
            int f = familyOf(b);
            if (f < 0 || target == null) return;
            PlayerShip ps = ObjectRegistry.INSTANCE.playerShip;
            float[] c = COLOR[f];
            switch (f) {
                case DISINT: {
                    long now = System.currentTimeMillis();
                    if (target != rampTarget) { rampTarget = target; rampSince = now; }
                    float ramp = Math.min(1.0f, (now - rampSince) / 3000.0f);   // +100% after 3 s on the same target
                    b.damage *= 1 + ramp;
                    ModFx.part("fx_core", target.position.x, target.position.y, 0, 0, 160, 30, 60 + 80 * ramp, 1.0f, 0.25f + 0.2f * ramp, 0.3f, 0.9f, true, true);
                    break;
                }
                case ARTY: {
                    Mod.enemiesInto(near);
                    for (int i = 0; i < near.size(); i++) {
                        Element e = near.get(i);
                        if (e == target || e.removed) continue;
                        if (e.position.distance(target.position) < 180) e.applyDamage(b.damage * 0.5f, b.sender, b);
                    }
                    ModFx.part("fx_core", target.position.x, target.position.y, 0, 0, 260, 40, 260, 1.0f, 0.75f, 0.4f, 1.0f, true, true);
                    ModFx.part("fx_shock", target.position.x, target.position.y, 0, 0, 380, 40, 380, 1.0f, 0.55f, 0.2f, 0.8f, true, true);
                    for (int i = 0; i < 4; i++) {
                        ModFx.part("fx_smoke", target.position.x, target.position.y, ModFx.rnd(-60, 60), ModFx.rnd(-60, 60), 1200, 40, 120, 0.35f, 0.33f, 0.3f, 0.6f, false, true);
                        ModFx.lastDrag(1.2f);
                    }
                    ModSound.play("titan_blast", 0.45f, 1.25f, 150);
                    break;
                }
                case ARC: {
                    Mod.enemiesInto(near);
                    Element from = target;
                    int jumps = 0;
                    for (int n = 0; n < 2; n++) {
                        Element best = null;
                        float bd = 450;
                        for (int i = 0; i < near.size(); i++) {
                            Element e = near.get(i);
                            if (e == target || e == from || e.removed) continue;
                            float d = e.position.distance(from.position);
                            if (d < bd) { bd = d; best = e; }
                        }
                        if (best == null) break;
                        best.applyDamage(b.damage * 0.6f, b.sender, b);
                        addArc(from.position.x, from.position.y, best.position.x, best.position.y);
                        near.remove(best);
                        from = best;
                        jumps++;
                    }
                    ModFx.part("fx_spark", target.position.x, target.position.y, 0, 0, 200, 60, 20, c[0], c[1], c[2], 1.0f, true, true);
                    break;
                }
                case RAIL:
                    ModFx.part("fx_streak", target.position.x, target.position.y, 0, 0, 200, 120, 60, c[0], c[1], c[2], 1.0f, true, true);
                    break;
                default:
                    ModFx.part("fx_core", target.position.x, target.position.y, 0, 0, 140, 24, 60, c[0], c[1], c[2], 0.9f, true, true);
                    break;
            }
        } catch (Throwable t) {
            // the hit still lands
        }
    }

    private static void addArc(float x1, float y1, float x2, float y2) {
        int i = (arcCount % 8) * 6;
        arcs[i] = x1; arcs[i + 1] = y1; arcs[i + 2] = x2; arcs[i + 3] = y2; arcs[i + 4] = 160;
        arcCount++;
    }

    /** Per frame from ModCaps.drawOver: lightning arcs. */
    static void drawArcs(long j) {
        for (int k = 0; k < 8; k++) {
            int i = k * 6;
            if (arcs[i + 4] <= 0) continue;
            arcs[i + 4] -= j;
            float x1 = arcs[i], y1 = arcs[i + 1], x2 = arcs[i + 2], y2 = arcs[i + 3];
            float px = x1, py = y1;
            for (int s = 1; s <= 7; s++) {
                float t = s / 7.0f;
                float nx = x1 + (x2 - x1) * t + (s < 7 ? ModFx.rnd(-22, 22) : 0);
                float ny = y1 + (y2 - y1) * t + (s < 7 ? ModFx.rnd(-22, 22) : 0);
                ModFx.line(px, py, nx, ny, 0.75f, 0.85f, 1.0f, 1.0f);
                px = nx;
                py = ny;
            }
            ModFx.spr("fx_glow", x2, y2, 70, 70, 0, 0.55f, 0.75f, 1.0f, 0.8f, true);
        }
    }
}
