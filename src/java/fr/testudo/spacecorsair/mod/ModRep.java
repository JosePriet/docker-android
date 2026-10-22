package fr.testudo.spacecorsair.mod;

import android.content.SharedPreferences;
import fr.testudo.spacecorsair.business.Element;
import fr.testudo.spacecorsair.business.ennemis.Ennemis;
import fr.testudo.spacecorsair.business.loot.SpaceObject;
import fr.testudo.spacecorsair.business.loot.SpaceObjectType;
import fr.testudo.spacecorsair.business.loot.LootRarety;
import fr.testudo.spacecorsair.business.loot.stuff.GearSpec;
import fr.testudo.spacecorsair.business.loot.stuff.laser.LaserSpec;
import fr.testudo.spacecorsair.business.player.PlayerShip;
import fr.testudo.spacecorsair.business.world.civil.CivilShip;
import fr.testudo.spacecorsair.business.world.civil.GuardianCivilShip;
import fr.testudo.spacecorsair.business.world.station.Station;
import fr.testudo.spacecorsair.engine.ObjectRegistry;
import fr.testudo.spacecorsair.engine.Vector2;
import fr.testudo.spacecorsair.game.levels.LevelId;
import java.util.List;
import java.util.Map;
import java.util.WeakHashMap;

/**
 * v22 faction standing (-100..+100 per faction). Missions and contracts raise it quickly; attacking a faction lowers it
 * a little (and its allies by half, its enemies the opposite). Ranks change the payout, how much friendly fire the
 * flagship forgives, whether the commander talks, the flagship's fire support, and unlock the faction's secret weapon
 * (Trusted) and secret ship (Honored, v23 art). Texts by ChatGPT (ModRepData).
 */
public final class ModRep {
    private ModRep() {}

    public static final int HOSTILE = 0, UNFRIENDLY = 1, NEUTRAL = 2, FRIENDLY = 3, TRUSTED = 4, HONORED = 5;
    static final float[] PAYOUT = {0, 0, 0, 0.10f, 0.20f, 0.35f};
    static final String[] RANK_NAMES = {ModLang.tr("Hostile"), ModLang.tr("Unfriendly"), "Neutral", ModLang.tr("Friendly"), ModLang.tr("Trusted"), ModLang.tr("Honored")};

    // relations from the faction bible: 1 ally, -1 enemy, 0 neutral   (spartan, reaver, kretari, varn, ironclad, helion, warden)
    static final int[][] REL = {
        {0, -1, -1, 0, 1, 0, 1},
        {-1, 0, -1, 0, -1, -1, -1},
        {-1, -1, 0, -1, -1, -1, -1},
        {0, 0, -1, 0, 0, 1, -1},
        {1, -1, -1, 0, 0, 0, 1},
        {0, -1, -1, 1, 0, 0, 0},
        {1, -1, -1, -1, 1, 0, 0},
    };

    static int index(String key) {
        for (int i = 0; i < ModRepData.KEYS.length; i++) if (ModRepData.KEYS[i].equals(key)) return i;
        return -1;
    }

    private static SharedPreferences prefs() {
        return ModQol.prefs();
    }

    // standings are read several times per frame in HQ sectors (tick, comms, missions): cached, re-read from the
    // preferences at most once a second per faction, written through by set()
    private static final float[] cacheVal = new float[16];
    private static final long[] cacheAt = new long[16];
    private static final String[] PREF_KEY = new String[16];

    public static float standing(String key) {
        int i = index(key);
        if (i >= 0 && i < cacheAt.length) {
            long now = System.currentTimeMillis();
            long at = cacheAt[i];
            if (at != 0 && now - at < 1000 && now >= at) return cacheVal[i];
            float v = read(key);
            cacheVal[i] = v;
            cacheAt[i] = now;
            return v;
        }
        return read(key);
    }

    private static float read(String key) {
        SharedPreferences p = prefs();
        float def = "kretari".equals(key) ? -20f : 0f;
        return p == null ? def : p.getFloat(prefKey(key), def);
    }

    private static String prefKey(String key) {
        int i = index(key);
        if (i < 0 || i >= PREF_KEY.length) return "rep_" + key;
        String k = PREF_KEY[i];
        if (k == null) PREF_KEY[i] = k = "rep_" + key;
        return k;
    }

    static int rankOf(float v) {
        if (v <= -50) return HOSTILE;
        if (v <= -10) return UNFRIENDLY;
        if (v < 20) return NEUTRAL;
        if (v < 50) return FRIENDLY;
        if (v < 80) return TRUSTED;
        return HONORED;
    }

    public static int rank(String key) {
        return rankOf(standing(key));
    }

    static String title(String key) {
        int i = index(key);
        return i < 0 ? ModLang.tr(RANK_NAMES[rank(key)]) : ModLang.tr(ModRepData.RANKS[i][rank(key)]);
    }

    static float payoutBonus(String key) {
        return PAYOUT[rank(key)];
    }

    /** Flagship friendly-fire tolerance before it turns on the player (% of its hull). */
    static float tolerance(String key) {
        return rank(key) >= FRIENDLY ? 25 : 10;
    }

    /** Changes a faction's standing; allies follow by half, enemies the opposite way. */
    static void change(String key, float delta, boolean spill) {
        int i = index(key);
        if (i < 0 || delta == 0) return;
        set(i, delta);
        if (!spill) return;
        for (int j = 0; j < REL.length; j++) {
            if (j != i && REL[i][j] != 0) set(j, delta * 0.5f * REL[i][j]);
        }
    }

    private static void set(int i, float delta) {
        String key = ModRepData.KEYS[i];
        float before = read(key);
        float after = Math.max(-100, Math.min(100, before + delta));
        SharedPreferences p = prefs();
        // apply(): written to memory now and to disk in the background (flushed by Android when the activity pauses);
        // commit() wrote the whole preferences file on the game thread for every kill in an HQ sector
        if (p != null) p.edit().putFloat(prefKey(key), after).apply();
        if (i < cacheAt.length) {
            cacheVal[i] = p != null ? after : before;
            cacheAt[i] = System.currentTimeMillis();
        }
        int r0 = rankOf(before), r1 = rankOf(after);
        if (r0 == r1) return;
        String msg = null;
        if (r1 > r0 && r1 >= FRIENDLY) msg = ModLang.tr(ModRepData.RANK_UP[i][r1 - FRIENDLY]);
        else if (r1 < r0 && r1 <= UNFRIENDLY) msg = ModLang.tr(ModRepData.RANK_DOWN[i][r1 == UNFRIENDLY ? 0 : 1]);
        ModCapitals.Faction f = ModCapitals.FACTIONS[ModFaction.faction(key)];
        String head = f.name + ModLang.tr(": you are now ") + ModLang.tr(ModRepData.RANKS[i][r1]) + " (" + ModLang.tr(RANK_NAMES[r1]) + ").";
        ModQol.post(head + (msg != null ? " " + ModFactionData.COMMANDER[ModFaction.commander(key)] + ": \"" + msg + "\"" : "")
            + (r1 == TRUSTED && r0 < TRUSTED ? " The " + ModRepData.SECRET_WEAPON[i][0] + ModLang.tr(" is now sold at ") + ModFaction.pretty(f.hq) + "." : "")
            + (r1 == HONORED && r0 < HONORED ? " The " + ModRepData.SECRET_SHIP[i][0] + ModLang.tr(" is now offered to you on the Ships screen.") : ""));
        if (msg != null) ModComms.show(key, msg, 9000);
        if (r1 > r0) ModSound.play("rank_up", 0.8f, 1.0f, 500);
        stocked.clear();     // re-check the HQ shop for the secret weapon
    }

    // ------------------------------------------------------------------ events
    private static final Map<Object, Boolean> seen = new WeakHashMap<Object, Boolean>();

    /** HQ sector of the player's current sector, or -1. */
    static int hqHere() {
        try {
            LevelId id = ObjectRegistry.INSTANCE.game.currentLevel.id;
            for (int i = 0; i < ModCapitals.FACTIONS.length; i++) if (ModCapitals.FACTIONS[i].hq == id) return i;
        } catch (Throwable t) {
            // no sector
        }
        return -1;
    }

    /** ModCapitals: a flagship turned on the player (provoked). */
    static void flagshipProvoked(String key) {
        change(key, -2.5f, true);
    }

    /** ModCapitals: the player destroyed a flagship. */
    static void flagshipDestroyed(String key) {
        change(key, ModSector.PURSUIT_STANDING, true);   // v35 req 5: -25 (was -10), then pursuit waves
        ModSector.flagshipKilled(key);
        ModV35.flagshipCore(key);   // owner 2026-10-22: a rival flagship kill gives a faction core
    }

    /** ModQol.civilAttacked: the player hit a civilian in a faction's home sector (counted once per ship). */
    static void civilAttacked(CivilShip c) {
        if (c == null || seen.containsKey(c) || ModCapitals.cap(c) != null) return;
        int fi = hqHere();
        if (fi < 0) return;
        seen.put(c, Boolean.TRUE);
        change(ModCapitals.FACTIONS[fi].key, -0.75f, true);
    }

    /** Ennemis destroyed by the player: defending a faction's home sector earns a little standing. */
    public static void enemyKilled(Element e) {
        if (!(e instanceof Ennemis)) return;
        int fi = hqHere();
        if (fi < 0) return;
        String k = ModCapitals.FACTIONS[fi].key;
        if (rank(k) <= HOSTILE) return;
        change(k, 1.5f, false);   // owner 2026-10-22 (was +1)
    }

    private static String testRep;

    /** Emulator tests only: /data/local/tmp/corsair_rep sets a standing, e.g. "spartan:85". */
    static void testTick() {
        String v = ModDev.testValue("corsair_rep");
        if (v == null || v.equals(testRep) || v.indexOf(':') < 0) return;
        testRep = v;
        try {
            String k = v.substring(0, v.indexOf(':'));
            float target = Float.parseFloat(v.substring(v.indexOf(':') + 1));
            change(k, target - standing(k), false);
        } catch (Throwable t) {
            // test only
        }
    }

    // ------------------------------------------------------------------ per frame (ModCaps.tick)
    private static int supportMs, hostileMs;
    private static final Vector2 a = new Vector2();

    private static int stockMs;

    static void tick(PlayerShip ps, long j) {
        if (ps == null || ps.removed || ps.isDocked) return;
        int fi = hqHere();
        if (fi < 0) return;
        GuardianCivilShip g = null;
        if (!ModCapitals.caps.isEmpty()) {
            for (Map.Entry<GuardianCivilShip, ModCapitals.Cap> e : ModCapitals.caps.entrySet()) {
                if (e.getValue().f == ModCapitals.FACTIONS[fi] && !e.getKey().removed) { g = e.getKey(); break; }
            }
        }
        String k = ModCapitals.FACTIONS[fi].key;
        int r = rank(k);
        // shelves are checked twice a second instead of scanning the sector every frame (only new stations matter)
        stockMs -= j;
        if (stockMs <= 0) {
            stockMs = 500;
            stockSecret(fi, r);
        }
        if (g == null) return;
        g.amountOfDamageAllowedInRatioByPlayerBeforeRebelion = (int) tolerance(k);
        float d = g.position.distance(ps.position);
        if (r == HOSTILE) {
            // attacked on sight in its own space
            hostileMs -= j;
            if (hostileMs <= 0 && d < 4500 && g.chasseTarget == null) {
                hostileMs = 3000;
                g.attackPlayerIfItNotTheCaseAlready();
            }
        } else if (r >= TRUSTED && g.chasseTarget == null && d < 5000) {
            // fire support: the flagship's batteries hit enemies near the player
            supportMs -= j;
            if (supportMs > 0) return;
            supportMs = 1500;
            List<Element> els = ObjectRegistry.INSTANCE.game.currentLevel.elements;
            Ennemis best = null;
            float bd = 2600;
            for (int i = 0; i < els.size(); i++) {
                Element e = els.get(i);
                if (!(e instanceof Ennemis) || e.removed || e.life <= 0) continue;
                float de = e.position.distance(ps.position);
                if (de < bd) { bd = de; best = (Ennemis) e; }
            }
            if (best != null) {
                float dmg = Math.max(30, best.maxLife * (r == HONORED ? 0.12f : 0.08f));
                best.applyDamage(dmg, g, null);
                ModCapitals.Faction f = ModCapitals.FACTIONS[fi];
                ModFx.strip("fx_beam", g.position.x, g.position.y, best.position.x, best.position.y, 60, f.r, f.g, f.b, 0.9f, true);
                ModFx.strip("fx_beamcore", g.position.x, g.position.y, best.position.x, best.position.y, 22, 1, 1, 1, 0.9f, true);
                ModFx.part("fx_core", best.position.x, best.position.y, 0, 0, 260, 60, 160, f.r, f.g, f.b, 0.9f, true, true);
                ModSound.play("gun_heavy", 0.5f, 0.8f, 600);
            }
        }
    }

    // ------------------------------------------------------------------ secret weapons (Trusted)
    public static final String[] SECRET_TYPES = {"repSecretSpartan", "repSecretReaver", "repSecretKretari", "repSecretVarn",
        "repSecretIronclad", "repSecretHelion", "repSecretWarden"};
    private static final LaserSpec[] SECRET = new LaserSpec[7];
    // per faction: damage and reload multipliers over the Siege tier (three factions picked railguns: each its own flavour)
    static final float[] SECRET_DMG = {1.25f, 1.25f, 1.25f, 1.45f, 1.25f, 1.25f, 1.12f};
    static final float[] SECRET_RELOAD = {0.9f, 0.9f, 0.9f, 1.0f, 0.9f, 0.9f, 0.78f};

    /** Used by the new enum constants (hooks18): a Siege-tier family gun, +25% damage, 10% faster reload. */
    public static GearSpec spec(int i) {
        if (SECRET[i] == null) {
            int f = (Integer) ModRepData.SECRET_WEAPON[i][1];
            LaserSpec base = (LaserSpec) ModWeapons.spec(f * 4 + 3);
            LaserSpec s = new LaserSpec();
            s.rarety = LootRarety.LEGENDARY;
            s.level = 15;
            s.damage = Math.round(base.damage * SECRET_DMG[i]);
            s.reload = Math.round(base.reload * SECRET_RELOAD[i]);
            s.precision = base.precision;
            s.bulletSpeed = base.bulletSpeed;
            s.heatBySec = base.heatBySec;
            s.r = base.r;
            s.g = base.g;
            s.b = base.b;
            s.alterationSpecs = base.alterationSpecs;   // same family tag: same bullets, sounds and impacts
            SECRET[i] = s;
        }
        return SECRET[i];
    }

    static int secretIndex(SpaceObjectType t) {
        if (t == null) return -1;
        String n = t.name();
        for (int i = 0; i < SECRET_TYPES.length; i++) if (SECRET_TYPES[i].equals(n)) return i;
        return -1;
    }

    static String label(SpaceObjectType t) {
        int i = secretIndex(t);
        return i < 0 ? null : (String) ModRepData.SECRET_WEAPON[i][0];
    }

    static String desc(SpaceObjectType t) {
        int i = secretIndex(t);
        if (i < 0) return null;
        int f = (Integer) ModRepData.SECRET_WEAPON[i][1];
        ModCapitals.Faction fc = ModCapitals.FACTIONS[ModFaction.faction(ModRepData.KEYS[i])];
        int dm = Math.round((SECRET_DMG[i] - 1) * 100), rl = Math.round((1 - SECRET_RELOAD[i]) * 100);
        return "<b>" + ModRepData.SECRET_WEAPON[i][0] + "</b>: " + fc.name + " " + ModWeapons.familyName(f) + ", " + dm + ModLang.tr("% more damage")
            + (rl > 0 ? " and " + rl + ModLang.tr("% faster reload") : "") + ModLang.tr(" than the Siege tier.<br><br>")
            + ModLang.tr((String) ModRepData.SECRET_WEAPON[i][2]) + ModLang.tr("<br><br><i>Sold at ") + ModFaction.pretty(fc.hq) + ModLang.tr(" to pilots the ") + fc.name + ModLang.tr(" trusts (Trusted standing).</i>");
    }

    private static final Map<Station, Boolean> stocked = new WeakHashMap<Station, Boolean>();

    private static void stockSecret(int fi, int r) {
        if (r < TRUSTED) return;
        try {
            int i = index(ModCapitals.FACTIONS[fi].key);
            List<Element> els = ObjectRegistry.INSTANCE.game.currentLevel.elements;
            for (int k = 0; k < els.size(); k++) {
                Element e = els.get(k);
                if (!(e instanceof Station) || stocked.containsKey(e)) continue;
                ((Station) e).inventory.addObject(SpaceObject.ofInfinite(SpaceObjectType.valueOf(SECRET_TYPES[i])));
                stocked.put((Station) e, Boolean.TRUE);
            }
        } catch (Throwable t) {
            // shop keeps its stock
        }
    }
}
