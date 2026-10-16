package fr.testudo.spacecorsair.mod;

import fr.testudo.spacecorsair.business.Element;
import fr.testudo.spacecorsair.business.ennemis.Albatros;
import fr.testudo.spacecorsair.business.ennemis.AlienBlatte;
import fr.testudo.spacecorsair.business.ennemis.AlienRat;
import fr.testudo.spacecorsair.business.ennemis.BasicEnnemyShip;
import fr.testudo.spacecorsair.business.ennemis.DefensorShip;
import fr.testudo.spacecorsair.business.ennemis.Ennemis;
import fr.testudo.spacecorsair.business.ennemis.EnnemisActivity;
import fr.testudo.spacecorsair.business.ennemis.EnnemisActivitySequence;
import fr.testudo.spacecorsair.business.ennemis.EnnemisSpec;
import fr.testudo.spacecorsair.business.ennemis.EnnemisSpecByLevel;
import fr.testudo.spacecorsair.business.ennemis.FrelonShip;
import fr.testudo.spacecorsair.business.ennemis.UfoAlienShip;
import fr.testudo.spacecorsair.business.player.PlayerShip;
import fr.testudo.spacecorsair.display.Drawable;
import fr.testudo.spacecorsair.display.Texture;
import fr.testudo.spacecorsair.engine.ObjectRegistry;
import fr.testudo.spacecorsair.engine.Vector2;
import fr.testudo.spacecorsair.game.levels.Level;
import fr.testudo.spacecorsair.game.levels.LevelId;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

/**
 * New enemy factions: the Crimson Reavers (pirates) and the Kre'tari (aliens).
 * Each ship reuses an existing enemy AI (fighter, shielded raider, turret ship, cruiser, alien skirmisher,
 * alien beam ship, alien mothership) with its own sprite, size and stats, and patrols the sectors.
 */
public class ModFleet {
    static final int BASIC = 0, FRELON = 1, DEFENSOR = 2, ALBATROS = 3, RAT = 4, UFO = 5, BLATTE = 6;

    static class Type {
        final String art, name;
        final int ai, size, minLevel;
        final float hp, dmg;
        final boolean kretari;

        Type(String art, String name, int ai, int size, int minLevel, float hp, float dmg, boolean kretari) {
            this.art = art; this.name = name; this.ai = ai; this.size = size; this.minLevel = minLevel; this.hp = hp; this.dmg = dmg; this.kretari = kretari;
        }
    }

    static final Type[] TYPES = {
        new Type("rv_raider", "Reaver Raider", BASIC, 90, 2, 1.2f, 1.1f, false),
        new Type("rv_gunship", "Reaver Gunship", BASIC, 100, 3, 1.5f, 1.2f, false),
        new Type("rv_hunter", "Reaver Hunter", FRELON, 120, 5, 1.2f, 1.0f, false),
        new Type("rv_marauder", "Reaver Marauder", DEFENSOR, 150, 6, 1.6f, 1.1f, false),
        new Type("rv_corsair", "Reaver Corsair", FRELON, 160, 7, 1.4f, 1.2f, false),
        new Type("rv_lancer", "Reaver Lancer", DEFENSOR, 190, 8, 1.8f, 1.3f, false),
        new Type("rv_warlord", "Reaver Warlord", ALBATROS, 300, 10, 1.2f, 1.1f, false),
        new Type("rv_dreadnought", "Reaver Dreadnought", ALBATROS, 420, 12, 2.0f, 1.3f, false),
        new Type("kt_scout", "Kre'tari Scout", RAT, 90, 10, 1.0f, 1.0f, true),
        new Type("kt_bomber", "Kre'tari Bomber", RAT, 100, 10, 1.3f, 1.4f, true),
        new Type("kt_frigate", "Kre'tari Frigate", UFO, 150, 10, 1.3f, 1.0f, true),
        new Type("kt_destroyer", "Kre'tari Destroyer", UFO, 180, 11, 1.6f, 1.2f, true),
        new Type("kt_cruiser", "Kre'tari Cruiser", FRELON, 260, 12, 2.5f, 1.3f, true),
        new Type("kt_heavycruiser", "Kre'tari Heavy Cruiser", FRELON, 300, 13, 3.2f, 1.4f, true),
        new Type("kt_battlecruiser", "Kre'tari Battlecruiser", ALBATROS, 380, 13, 1.6f, 1.2f, true),
        new Type("kt_battleship", "Kre'tari Battleship", ALBATROS, 450, 14, 2.2f, 1.3f, true),
        new Type("kt_mothership", "Kre'tari Mothership", BLATTE, 700, 15, 1.5f, 1.2f, true),
    };

    public static final String[] ARTS;

    static {
        ARTS = new String[TYPES.length];
        for (int i = 0; i < TYPES.length; i++) ARTS[i] = TYPES[i].art;
    }

    // ------------------------------------------------------------ skinned AI classes

    private static final Map<String, Drawable> drawables = new HashMap<String, Drawable>();

    static Drawable drawable(Type t) {
        Texture tex = ModArt.texture(t.art);
        if (tex == null) return null;
        String key = t.art + ":" + t.size;
        Drawable d = drawables.get(key);
        if (d == null || d.myTexture != tex) {
            d = new ModArt.Art(new Vector2(t.size, t.size), tex, false);   // uploads its (lazy) texture on first draw
            drawables.put(key, d);
        }
        return d;
    }

    public static class Fighter extends BasicEnnemyShip {
        Drawable d; Vector2 phys;
        public Drawable getDrawableObject() { return d != null ? d : super.getDrawableObject(); }
        public Vector2 getPhysicDimension() { return phys; }
    }

    public static class Raider extends FrelonShip {
        Drawable d; Vector2 phys;
        public Drawable getDrawableObject() { return d != null ? d : super.getDrawableObject(); }
        public Vector2 getPhysicDimension() { return phys; }
    }

    public static class Gunship extends DefensorShip {
        Drawable d; Vector2 phys;
        public Drawable getDrawableObject() { return d != null ? d : super.getDrawableObject(); }
        public Vector2 getPhysicDimension() { return phys; }
    }

    public static class Cruiser extends Albatros {
        Drawable d; Vector2 phys;
        public Drawable getDrawableObject() { return d != null ? d : super.getDrawableObject(); }
        public Vector2 getPhysicDimension() { return phys; }
        public boolean pruneColide(Element e) { return true; } // round hull instead of the Albatros hit points
    }

    public static class Skirmisher extends AlienRat {
        Drawable d; Vector2 phys;
        public Drawable getDrawableObject() { return d != null ? d : super.getDrawableObject(); }
        public Vector2 getPhysicDimension() { return phys; }
    }

    public static class BeamShip extends UfoAlienShip {
        Drawable d; Vector2 phys;
        public Drawable getDrawableObject() { return d != null ? d : super.getDrawableObject(); }
        public Vector2 getPhysicDimension() { return phys; }
    }

    public static class Mothership extends AlienBlatte {
        Drawable d; Vector2 phys;
        public Drawable getDrawableObject() { return d != null ? d : super.getDrawableObject(); }
        public Vector2 getPhysicDimension() { return phys; }
        public boolean pruneColide(Element e) { return true; }
    }

    private static EnnemisSpec spec(EnnemisSpec[] arr, int lvl) {
        return arr[Math.max(0, Math.min(arr.length - 1, lvl))];
    }

    private static int clampLvl(EnnemisSpec[] arr, int lvl) {
        return Math.max(0, Math.min(arr.length - 1, lvl));
    }

    /** Builds one ship of the given type at the given level (null if its art is not loaded yet). */
    public static Ennemis build(Type t, int lvl) {
        Drawable d = drawable(t);
        if (d == null) return null;
        ModArt.prefetch(d.myTexture);   // decoded in the background while the ship flies in from off-screen
        Vector2 phys = new Vector2(t.size * 0.7f, t.size * 0.7f);
        Ennemis e;
        switch (t.ai) {
            case BASIC: { Fighter f = new Fighter(); f.d = d; f.phys = phys; f.initLevelConfig(spec(EnnemisSpecByLevel.BasciEnnemisSpec, lvl), clampLvl(EnnemisSpecByLevel.BasciEnnemisSpec, lvl)); e = f; break; }
            case FRELON: { Raider f = new Raider(); f.d = d; f.phys = phys; f.initLevelConfig(spec(EnnemisSpecByLevel.FrelonSpec, lvl), clampLvl(EnnemisSpecByLevel.FrelonSpec, lvl)); e = f; break; }
            case DEFENSOR: { Gunship f = new Gunship(); f.d = d; f.phys = phys; f.initLevelConfig(spec(EnnemisSpecByLevel.defensorSpec, lvl), clampLvl(EnnemisSpecByLevel.defensorSpec, lvl)); e = f; break; }
            case ALBATROS: { Cruiser f = new Cruiser(); f.d = d; f.phys = phys; f.initLevelConfig(spec(EnnemisSpecByLevel.albatrosSpec, lvl), clampLvl(EnnemisSpecByLevel.albatrosSpec, lvl)); e = f; break; }
            case RAT: { Skirmisher f = new Skirmisher(); f.d = d; f.phys = phys; f.initLevelConfig(spec(EnnemisSpecByLevel.alienRatSpec, lvl), clampLvl(EnnemisSpecByLevel.alienRatSpec, lvl)); e = f; break; }
            case UFO: { BeamShip f = new BeamShip(); f.d = d; f.phys = phys; f.initLevelConfig(spec(EnnemisSpecByLevel.UfoSpec, lvl), clampLvl(EnnemisSpecByLevel.UfoSpec, lvl)); e = f; break; }
            default: { Mothership f = new Mothership(); f.d = d; f.phys = phys; f.initLevelConfig(spec(EnnemisSpecByLevel.alienBlatteSpec, lvl), clampLvl(EnnemisSpecByLevel.alienBlatteSpec, lvl)); e = f; break; }
        }
        e.maxLife = e.maxLife * t.hp;
        e.life = e.maxLife;
        e.lifeInPourc = 100.0f;
        e.bulletDamage *= t.dmg;
        e.xp = (int) (e.xp * t.hp);
        e.specificName = t.name;
        e.specificNameDecalX = -1;
        if (e.lifeBar != null) e.lifeBar.setValue(100.0f);
        return e;
    }

    // ------------------------------------------------------------ spawner

    private static final ArrayList<Ennemis> fleet = new ArrayList<Ennemis>();
    private static Level lastLevel;
    private static int spawnTimer = 30000;

    private static boolean excluded(LevelId id) {
        if (id == null) return true;
        switch (id) {
            case TUTORIAL:
            case GALACTIC_ARENA:
            case FFA_THE_PLAYER_PAY:
            case GENESIS:
            case VENTOHIGH:
            case SPARTAN_HQ:
            case OMICRON_PRIME:
                return true;
            default:
                return false;
        }
    }

    public static void tick(PlayerShip ps, long j) {
        Level lvl = ObjectRegistry.INSTANCE.game.currentLevel;
        if (lvl != lastLevel) {
            lastLevel = lvl;
            fleet.clear();
            spawnTimer = 30000;
        }
        for (int i = fleet.size() - 1; i >= 0; i--) {
            if (fleet.get(i).removed) fleet.remove(i);
        }
        if (ps.removed || ps.isDocked || ObjectRegistry.INSTANCE.game.mapMode || lvl == null || excluded(lvl.id)) return;
        spawnTimer = (int) (spawnTimer - j);
        if (spawnTimer > 0) return;
        spawnTimer = 60000 + (int) (Math.random() * 40000);
        if (fleet.size() > 6) return;
        spawnGroup(ps, lvl.id);
    }

    private static Type pick(boolean kretari, int level, boolean lead) {
        ArrayList<Type> ok = new ArrayList<Type>();
        for (Type t : TYPES) {
            if (t.kretari != kretari || t.minLevel > level || t.ai == BLATTE) continue;
            if (!lead && t.size > 200) continue;
            ok.add(t);
        }
        if (ok.isEmpty()) return null;
        if (lead) {
            // leaders: prefer the bigger ships the sector level allows
            int from = Math.max(0, ok.size() - 3);
            return ok.get(from + (int) (Math.random() * (ok.size() - from)));
        }
        return ok.get((int) (Math.random() * Math.min(ok.size(), 4)));
    }

    private static void spawnGroup(PlayerShip ps, LevelId id) {
        int level = id.levelMin + (int) (Math.random() * (Math.max(0, id.levelMax - id.levelMin) + 1));
        if (level < 2) return;
        boolean kretari = id.levelMin >= 10 && Math.random() < 0.6d;
        double a = Math.random() * Math.PI * 2.0d;
        Vector2 center = new Vector2(ps.position).add((float) (Math.cos(a) * 3200.0d), (float) (Math.sin(a) * 3200.0d));
        EnnemisActivitySequence patrol = new EnnemisActivitySequence()
            .addActivity(new EnnemisActivity().initGotoRandom(center.x, center.y, 2500))
            .addActivity(new EnnemisActivity().initIdleDuring(3000))
            .addActivity(new EnnemisActivity().initGotoRandom(center.x, center.y, 3500))
            .addActivity(new EnnemisActivity().initIdleDuring(2000));
        if (kretari && level >= 14 && Math.random() < 0.08d) {
            Ennemis m = build(TYPES[TYPES.length - 1], level);
            if (m != null) {
                place(m, center, patrol);
                Mod.floatText(ps, ModLang.tr("KRE'TARI MOTHERSHIP DETECTED"), 1.0f, 0.4f, 0.2f);
            }
            return;
        }
        int count = 2 + (level >= 8 ? 1 : 0) + (level >= 12 ? 1 : 0);
        for (int k = 0; k < count; k++) {
            Type t = pick(kretari, level, k == 0);
            if (t == null) continue;
            Ennemis e = build(t, level);
            if (e == null) continue;
            Vector2 p = new Vector2(center).add((float) (Math.random() * 500 - 250), (float) (Math.random() * 500 - 250));
            place(e, p, patrol);
        }
    }

    private static void place(Ennemis e, Vector2 p, EnnemisActivitySequence patrol) {
        e.position.setSameAs(p);
        e.updateSapCoords();
        e.setActivitySequence(patrol);
        e.addToCurrentLevel();
        fleet.add(e);
    }
}
