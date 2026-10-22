package fr.testudo.spacecorsair.mod;

import android.content.SharedPreferences;
import fr.testudo.spacecorsair.business.Element;
import fr.testudo.spacecorsair.business.ennemis.AlienTourelle;
import fr.testudo.spacecorsair.business.ennemis.Ennemis;
import fr.testudo.spacecorsair.business.ennemis.FixedTourelle;
import fr.testudo.spacecorsair.business.ennemis.RocketTourelle;
import fr.testudo.spacecorsair.business.loot.SpaceObjectType;
import fr.testudo.spacecorsair.business.loot.stuff.GearSpec;
import fr.testudo.spacecorsair.business.loot.stuff.playerShip.PlayerShipSpec;
import fr.testudo.spacecorsair.business.player.PlayerInfo;
import fr.testudo.spacecorsair.business.player.PlayerShip;
import fr.testudo.spacecorsair.business.projectiles.Projectile;
import fr.testudo.spacecorsair.business.world.civil.CivilShip;
import fr.testudo.spacecorsair.business.world.civil.GuardianCivilShip;
import fr.testudo.spacecorsair.display.Drawable;
import fr.testudo.spacecorsair.display.Texture;
import fr.testudo.spacecorsair.engine.ObjectRegistry;
import fr.testudo.spacecorsair.engine.Vector2;
import java.util.HashMap;
import java.util.WeakHashMap;

/**
 * v35 (TASK.md v35): hull refits 1-10 with rare parts and 5 visual stages, refit stages on enemies, the advantage-aware
 * enemy AI and kill-time factor, standing colours on name tags and the optional enemy_<art> hostile art (v34 req 10),
 * rarity-driven prices for stock gear (v34 req 12) and the mission reward / standing retune (v34 req 13).
 * Sector traffic, points of interest, wreck lifetimes and flagship pursuit are in ModSector.
 */
public class ModV35 {
    // ------------------------------------------------------------------ refits (req 1)
    public static final int REFIT_MAX = 10, STAGES = 5;
    public static final float PICK_STEP = 0.03f, TRAIT_STEP = 0.02f, COST_STEP = 0.08f;

    public static final int S_DMG = 0, S_RELOAD = 1, S_SHCAP = 2, S_SHREGEN = 3, S_MISSILE = 4, S_CARGO = 5, S_REPAIR = 6, S_HULL = 7, S_SPEED = 8, S_AGILITY = 9;
    static final String[] STAT_EN = {"Laser damage", "Laser reload", "Shield capacity", "Shield regeneration", "Missile reload", "Cargo hold", "Hull repair", "Hull points", "Speed", "Agility"};

    /** Credits for refit level n (1-10): 8% x n of the hull price [P]. */
    public static int cost(int n, int hullPrice) {
        return Math.round(COST_STEP * n * hullPrice);
    }

    /** Rare parts for refit level n: 1-5 for levels 6-10 [P]. */
    public static int partsFor(int n) {
        return n >= 6 ? n - 5 : 0;
    }

    /** Visual stage of a refit level: one per 2 levels (1-2 = stage 1 ... 9-10 = stage 5), 0 = stock. */
    public static int stage(int level) {
        return level <= 0 ? 0 : Math.min(STAGES, (level + 1) / 2);
    }

    /** Multiplier of a hull strength at refit level n (+3% a level) and of the faction trait (+2% a level). */
    public static float pickMult(int n) {
        return 1.0f + PICK_STEP * Math.max(0, Math.min(REFIT_MAX, n));
    }

    public static float traitMult(int n) {
        return 1.0f + TRAIT_STEP * Math.max(0, Math.min(REFIT_MAX, n));
    }

    /** Faction trait (owner: one faction-specific strength). Neutral hulls: hull points. */
    public static int trait(String factionKey) {
        if ("spartan".equals(factionKey)) return S_SHCAP;
        if ("reaver".equals(factionKey)) return S_DMG;
        if ("kretari".equals(factionKey)) return S_REPAIR;
        if ("warden".equals(factionKey)) return S_RELOAD;
        if ("varn".equals(factionKey)) return S_CARGO;
        if ("ironclad".equals(factionKey)) return S_HULL;
        if ("helion".equals(factionKey)) return S_SPEED;
        return S_HULL;
    }

    /**
     * What a hull is already good at, as multipliers (1.0 = average). Hull bonuses count as they are (time factors
     * inverted); hull points, speed and agility count against the average hull of the same class.
     */
    static float[] scores(ModShips.Hull h, PlayerShipSpec spec, int cls) {
        float[] s = new float[10];
        if (h != null) {
            s[S_DMG] = h.dmg;
            s[S_RELOAD] = h.reload > 0 ? 1.0f / h.reload : 1.0f;
            s[S_SHCAP] = h.shieldCap;
            s[S_SHREGEN] = Math.max(h.shieldRegen, h.shieldDelay > 0 ? 1.0f / h.shieldDelay : 1.0f);
            s[S_MISSILE] = h.missileReload > 0 ? 1.0f / h.missileReload : 1.0f;
            s[S_CARGO] = h.cargo;
            s[S_REPAIR] = 0f;   // owner 2026-10-22: hull regen growth is the Kre'tari trait only, never a picked strength
        }
        if (spec != null) {
            float[] avg = classAverage(cls);
            s[S_HULL] = avg[0] > 0 ? spec.lifeBooster / avg[0] : 1.0f;
            s[S_SPEED] = avg[1] > 0 ? spec.maxSpeedInformational / avg[1] : 1.0f;
            s[S_AGILITY] = avg[2] > 0 ? spec.agilityInformational / avg[2] : 1.0f;
        }
        return s;
    }

    private static final HashMap<Integer, float[]> AVG = new HashMap<Integer, float[]>();

    /** Mean hull booster, speed and agility of the player hulls of a class (dev hull left out). */
    static float[] classAverage(int cls) {
        float[] a = AVG.get(cls);
        if (a != null) return a;
        a = new float[3];
        int n = 0;
        for (ModShips.Hull h : ModShips.HULLS) {
            if (h == null || h.dev || h.cls != cls || h.spec == null) continue;
            a[0] += h.spec.lifeBooster;
            a[1] += h.spec.maxSpeedInformational;
            a[2] += h.spec.agilityInformational;
            n++;
        }
        if (n > 0) for (int i = 0; i < 3; i++) a[i] /= n;
        AVG.put(cls, a);
        return a;
    }

    /** The two strongest strengths above 1.0 (owner rule: refits only enhance what the hull is good at). */
    public static int[] picks(float[] s) {
        int a = -1, b = -1;
        for (int i = 0; i < s.length; i++) {
            if (s[i] <= 1.0001f) continue;
            if (a < 0 || s[i] > s[a]) { b = a; a = i; }
            else if (b < 0 || s[i] > s[b]) b = i;
        }
        // fewer than two strengths: the best of hull / speed / agility fills in, so every hull gets two refit lines
        for (int k = 0; k < 2 && (a < 0 || b < 0); k++) {
            int best = -1;
            for (int i = S_HULL; i <= S_AGILITY; i++) if (i != a && i != b && (best < 0 || s[i] > s[best])) best = i;
            if (a < 0) a = best; else b = best;
        }
        return new int[] {a, b};
    }

    static SpaceObjectType currentShip() {
        try {
            return ObjectRegistry.INSTANCE.game.playerInfo.playerGear.playerShip;
        } catch (Throwable t) {
            return null;
        }
    }

    /** Refit level of a hull (0 when never refitted, which is every hull of an older save). */
    public static int level(SpaceObjectType t) {
        SharedPreferences p = ModQol.prefs();
        if (p == null || t == null) return 0;
        return Math.max(0, Math.min(REFIT_MAX, p.getInt("v35_refit_" + t.name(), 0)));
    }

    public static int parts() {
        SharedPreferences p = ModQol.prefs();
        return p == null ? 0 : Math.max(0, p.getInt("v35_parts", 0));
    }

    static void addParts(int n, Element at) {
        SharedPreferences p = ModQol.prefs();
        if (p == null || n <= 0) return;
        p.edit().putInt("v35_parts", parts() + n).apply();
        try {
            Element e = at != null && fr.testudo.spacecorsair.engine.GameThread.isElementVisible(at) ? at : ObjectRegistry.INSTANCE.playerShip;
            Mod.floatText(e, "+" + n + " " + ModLang.tr("RARE PART"), 0.8f, 0.55f, 1.0f);
        } catch (Throwable t) {
            // the part is stored
        }
    }

    // ------------------------------------------------------------------ faction cores (owner 2026-10-22): refit 10 needs one of the hull's faction
    /** Stock boss pools by ModBoss kind (Matriarch, Guardian, Empress); every boss also rolls the neutral core. */
    static final String[][] CORE_POOL = {{"reaver", "helion"}, {"spartan", "warden", "ironclad"}, {"kretari", "varn"}};
    public static final float CORE_CHANCE = 0.4f;
    static final long HUNT_WINDOW_MS = 12L * 3600000L;   // owner 2026-10-22: 5 hunts per faction every 12 hours
    public static final int HUNT_MAX = 5;

    /** The core a hull needs for its last refit: its faction's, "neutral" for hulls without one. */
    static String coreKey(ModShips.Hull h) {
        String k = ModShips.factionKey(h);
        return k.length() == 0 ? "neutral" : k;
    }

    static String coreName(String key) {
        if ("neutral".equals(key)) return ModLang.tr("Neutral core");
        try {
            return ModCapitals.FACTIONS[ModFaction.faction(key)].name + " " + ModLang.tr("core");
        } catch (Throwable t) {
            return key + " " + ModLang.tr("core");
        }
    }

    public static int cores(String key) {
        SharedPreferences p = ModQol.prefs();
        return p == null ? 0 : p.getInt("v35_core_" + key, 0);
    }

    static void addCore(String key, Element at) {
        SharedPreferences p = ModQol.prefs();
        if (p == null || key == null) return;
        p.edit().putInt("v35_core_" + key, cores(key) + 1).apply();
        try {
            Element e = at != null && fr.testudo.spacecorsair.engine.GameThread.isElementVisible(at) ? at : ObjectRegistry.INSTANCE.playerShip;
            Mod.floatText(e, "+1 " + coreName(key).toUpperCase(), 1.0f, 0.75f, 0.3f);
            ModQol.post(ModLang.tr("Faction core recovered: ") + coreName(key) + ".");
        } catch (Throwable t) {
            // the core is stored
        }
    }

    /** Pure: the faction core a stock boss drops for a roll in [0,1) and a pick in [0,1), or null. */
    public static String bossCore(int kind, double roll, double pick) {
        if (kind < 0 || kind >= CORE_POOL.length || roll >= CORE_CHANCE) return null;
        String[] pool = CORE_POOL[kind];
        return pool[Math.min(pool.length - 1, (int) (pick * pool.length))];
    }

    /** ModLoot.bossBonus: a stock boss down rolls a faction core from its pool and the neutral core; reminds of a hunt on cooldown. */
    public static void bossCores(int kind) {
        try {
            String k = bossCore(kind, Math.random(), Math.random());
            if (k != null) addCore(k, null);
            if (Math.random() < CORE_CHANCE) addCore("neutral", null);
            SpaceObjectType t = currentShip();
            String mine = t == null ? null : coreKey(ModShips.hull(t));
            if (mine == null || "neutral".equals(mine) || ModRep.rank(mine) < ModRep.FRIENDLY) return;
            for (String c : CORE_POOL[kind]) {
                long left = huntLeft(mine);
                if (c.equals(mine) && left > 0) {
                    ModQol.post(coreName(mine) + ": " + ModLang.tr("the renegade hunt at the faction's HQ guarantees one, ready again in ") + (left / 3600000L) + "h " + (left / 60000L % 60) + "m.");
                }
            }
        } catch (Throwable t) {
            // never break a boss kill
        }
    }

    /**
     * Pure (owner 2026-10-22): the 12 h window opens with the first hunt; up to 5 hunts inside it; when it closes the
     * next hunt opens a new window. Times are completion times (ms); returns ms until another hunt is allowed, 0 = ready.
     */
    public static long huntWait(long[] done, long now) {
        long start = -1;
        int n = 0;
        java.util.Arrays.sort(done = done.clone());
        for (long t : done) {
            if (t <= 0) continue;
            if (start < 0 || t >= start + HUNT_WINDOW_MS) { start = t; n = 0; }
            n++;
        }
        if (start < 0 || now >= start + HUNT_WINDOW_MS || n < HUNT_MAX) return 0;
        return start + HUNT_WINDOW_MS - now;
    }

    /** Start of the latest 12 h hunt window (-1 when none). */
    static long windowStart(long[] done) {
        long start = -1;
        long[] d = done.clone();
        java.util.Arrays.sort(d);
        for (long t : d) if (t > 0 && (start < 0 || t >= start + HUNT_WINDOW_MS)) start = t;
        return start;
    }

    static long[] huntTimes(String key) {
        SharedPreferences p = ModQol.prefs();
        String s = p == null ? "" : p.getString("v35_hunts_" + key, "");
        if (s.length() == 0) return new long[0];
        String[] a = s.split(",");
        long[] r = new long[a.length];
        for (int i = 0; i < a.length; i++) {
            try { r[i] = Long.parseLong(a[i]); } catch (NumberFormatException e) { r[i] = 0; }
        }
        return r;
    }

    /** ms until a faction's renegade hunt can be taken again (0 = ready). */
    public static long huntLeft(String key) {
        return huntWait(huntTimes(key), System.currentTimeMillis());
    }

    /** ModFaction.complete for a renegade hunt: the core and the hunt's time (only the current window is kept). */
    static void huntDone(String key) {
        addCore(key, null);
        SharedPreferences p = ModQol.prefs();
        if (p == null) return;
        long now = System.currentTimeMillis();
        StringBuilder b = new StringBuilder();
        long[] past = huntTimes(key);
        long start = windowStart(past);
        if (start > 0 && now < start + HUNT_WINDOW_MS) for (long t : past) if (t >= start) b.append(t).append(',');   // same window; else a new one opens
        b.append(now);
        p.edit().putString("v35_hunts_" + key, b.toString()).apply();
    }

    /** ModFaction.addAvailable: the first time a renegade hunt is offered, a one-time note about its daily limit (owner). */
    static void huntNote() {
        SharedPreferences p = ModQol.prefs();
        if (p == null || p.getBoolean("v35_hunt_note", false)) return;
        p.edit().putBoolean("v35_hunt_note", true).apply();
        ModQol.post(ModLang.tr("Renegade hunts: up to 5 per faction every 12 hours. Stock bosses and rival flagships also drop faction cores."));
    }

    /** Pure: the factions whose core a flagship kill can give (those that counter the flagship's faction). */
    public static String[] rivalCores(String flagshipKey) {
        java.util.ArrayList<String> l = new java.util.ArrayList<String>();
        for (String[] w : ModCounterData.WHEEL) if (w[1].equals(flagshipKey)) l.add(w[0]);
        return l.toArray(new String[0]);
    }

    /** ModRep.flagshipDestroyed: a faction core of a rival of the flagship's faction, the player's hull faction when it is one. */
    static void flagshipCore(String flagshipKey) {
        try {
            // owner 2026-10-22: the rival-flagship route is for pilots not on friendly terms with the core's faction (Friendly+ use the renegade hunt)
            java.util.ArrayList<String> r = new java.util.ArrayList<String>();
            for (String c : rivalCores(flagshipKey)) if (ModRep.rank(c) < ModRep.FRIENDLY) r.add(c);
            if (r.isEmpty()) return;
            SpaceObjectType t = currentShip();
            String mine = t == null ? null : coreKey(ModShips.hull(t));
            String k = r.contains(mine) ? mine : r.get((int) (Math.random() * r.size()));
            addCore(k, null);
        } catch (Throwable th) {
            // the standing loss still happens
        }
    }

    /** Rare parts from kills (ModQol.bounty): bosses 2, elites 15% for 1 [P]. Rare salvage adds 1 (ModV34.rareSalvage). */
    public static void partsFromKill(Ennemis e) {
        try {
            if (ModBoss.isBoss(e) || e.xp >= 500) addParts(2, e);
            else if (e.elite && Math.random() < 0.15) addParts(1, e);
        } catch (Throwable t) {
            // never break a kill
        }
    }

    static int hullPrice(SpaceObjectType t) {
        ModShips.Hull h = ModShips.hull(t);
        if (h != null) return h.price;
        try {
            return Math.max(1000, t.getObjectPrice().max);
        } catch (Throwable th) {
            return 10000;
        }
    }

    /** Refit multipliers of the current ship by strength (1.0 = none). */
    static float[] mults(SpaceObjectType t, ModShips.Hull h, PlayerShipSpec spec) {
        float[] m = new float[10];
        java.util.Arrays.fill(m, 1.0f);
        int n = level(t);
        if (n <= 0 || t == null) return m;
        int cls = ModShips.cls(t);
        int[] pk = picks(scores(h, spec, cls));
        for (int k : pk) if (k >= 0) m[k] *= pickMult(n);
        m[trait(ModShips.factionKey(h))] *= traitMult(n);
        return m;
    }

    /** From ModShips.apply after the hull bonuses: the refit multipliers on the fitted ship. */
    public static void apply(PlayerShip ps, ModShips.Hull h, boolean offFaction) {
        try {
            SpaceObjectType t = currentShip();
            float[] m = mults(t, h, ps.shipSpec);
            float dm = m[S_DMG], rl = m[S_RELOAD];   // owner 2026-10-22: refit bonuses apply to every weapon; the off-faction -40% (ModV34) multiplies the total
            if (dm != 1.0f || rl != 1.0f) {
                ps.bulletDamage *= dm;
                ps.milleSecBetweenShots = (long) (ps.milleSecBetweenShots / rl);
                if (ps.playerCannons != null) for (int k = 0; k < ps.playerCannons.length; k++) {
                    ps.playerCannons[k].shootDamage = (int) (ps.playerCannons[k].shootDamage * dm);
                    ps.playerCannons[k].timeBewteenShootInMilli = (int) (ps.playerCannons[k].timeBewteenShootInMilli / rl);
                }
            }
            if (ps.shield != null) {
                ps.shield.capacity *= m[S_SHCAP];
                ps.shield.reloadUnitBySec *= m[S_SHREGEN];
                if (ps.shield.currentValue > ps.shield.capacity) ps.shield.currentValue = ps.shield.capacity;
            }
            ps.milleSecBetweenMissileShots = (long) (ps.milleSecBetweenMissileShots / m[S_MISSILE]);
            if (m[S_HULL] != 1.0f) {
                ps.maxLife *= m[S_HULL];
                if (ps.life > ps.maxLife) ps.life = ps.maxLife;
            }
            ps.maxPouseeForce *= m[S_SPEED];
            ps.maxTurnFactor *= m[S_AGILITY];
        } catch (Throwable th) {
            // stock stats
        }
    }

    /** Owner 2026-10-22: the Varn trait is cargo and loot: +2%/level on the loot drop chance of kills and wrecks. */
    public static float lootMult() {
        try {
            SpaceObjectType t = currentShip();
            ModShips.Hull h = t == null ? null : ModShips.hull(t);
            if (h == null || trait(ModShips.factionKey(h)) != S_CARGO) return 1.0f;
            return traitMult(level(t));
        } catch (Throwable th) {
            return 1.0f;
        }
    }

    /** Cargo multiplier of the refit (ModShips.cargoMult). */
    public static float cargo(ModShips.Hull h) {
        try {
            PlayerShip ps = ObjectRegistry.INSTANCE.playerShip;
            return mults(currentShip(), h, ps == null ? null : ps.shipSpec)[S_CARGO];
        } catch (Throwable t) {
            return 1.0f;
        }
    }

    /** Hull repair per second with the refit (ModShips.tick). */
    public static float repair(ModShips.Hull h) {
        float base = h == null ? 0 : h.hullRegen;
        try {
            PlayerShip ps = ObjectRegistry.INSTANCE.playerShip;
            float m = mults(currentShip(), h, ps == null ? null : ps.shipSpec)[S_REPAIR];
            boolean kre = trait(ModShips.factionKey(h)) == S_REPAIR;
            return kre ? regen(base, true, m, h.cls) : base;   // other hulls keep their stock repair, no refit growth
        } catch (Throwable t) {
            return base;
        }
    }

    /**
     * Owner 2026-10-22: Kre'tari hulls without hull repair get a 0.5%/s base; the refit multiplies the hull's rate,
     * capped at 1%/s for cruisers and bigger and 0.7%/s for the rest (never below the hull's own stock rate).
     */
    public static float regen(float base, boolean kretari, float mult, int cls) {
        if (kretari && base <= 0) base = 0.005f;
        if (base <= 0) return 0;
        float cap = cls >= ModShips.CRUISER && cls <= ModShips.TITAN ? 0.01f : 0.007f;
        return Math.min(base * mult, Math.max(base, cap));
    }

    /** Refit lines for the fitting screen: {level, stage, next credits, next parts, owned parts, boosted stat names, core name, owned cores}. */
    public static String[] summary() {
        SpaceObjectType t = currentShip();
        if (t == null) return null;
        ModShips.Hull h = ModShips.hull(t);
        PlayerShip ps = ObjectRegistry.INSTANCE.playerShip;
        int[] pk = picks(scores(h, ps == null ? null : ps.shipSpec, ModShips.cls(t)));
        int n = level(t);
        StringBuilder b = new StringBuilder();
        for (int k : pk) if (k >= 0) b.append(ModLang.tr(STAT_EN[k])).append(" +").append(Math.round(PICK_STEP * 100)).append("%, ");
        b.append(ModLang.tr(STAT_EN[trait(ModShips.factionKey(h))])).append(" +").append(Math.round(TRAIT_STEP * 100)).append("% ").append(ModLang.tr("(faction)"));
        return new String[] {String.valueOf(n), String.valueOf(stage(n)), n >= REFIT_MAX ? "" : String.valueOf(cost(n + 1, hullPrice(t))),
            String.valueOf(n >= REFIT_MAX ? 0 : partsFor(n + 1)), String.valueOf(parts()), b.toString(), coreName(coreKey(h)), String.valueOf(cores(coreKey(h)))};
    }

    /** Buys the next refit level of the current ship (docked only). Returns the message to show. */
    public static String buy() {
        try {
            PlayerShip ps = ObjectRegistry.INSTANCE.playerShip;
            SpaceObjectType t = currentShip();
            if (t == null || ps == null) return null;
            if (!ps.isDocked) return ModLang.tr("Dock at a station to refit.");
            int n = level(t);
            if (n >= REFIT_MAX) return ModLang.tr("This hull is fully refitted.");
            int c = cost(n + 1, hullPrice(t)), need = partsFor(n + 1);
            fr.testudo.spacecorsair.business.player.Inventory inv = ObjectRegistry.INSTANCE.game.playerCurrentShipInventory;
            if (inv.getCredit() < c) return ModLang.tr("Not enough credits for the refit.");
            if (parts() < need) return ModLang.tr("Not enough rare parts (elites, bosses, rare salvage).");
            String core = n + 1 == REFIT_MAX ? coreKey(ModShips.hull(t)) : null;
            if (core != null && cores(core) < 1) return ModLang.tr("The last refit needs a ") + coreName(core) + ModLang.tr(" (stock bosses, renegade hunts, rival flagships).");
            SharedPreferences p = ModQol.prefs();
            if (p == null) return null;
            inv.removeCredit(c);
            SharedPreferences.Editor ed = p.edit().putInt("v35_refit_" + t.name(), n + 1).putInt("v35_parts", parts() - need);
            if (core != null) ed.putInt("v35_core_" + core, cores(core) - 1);
            ed.commit();
            ps.applyGear();
            return ModLang.tr("Refit complete: level ") + (n + 1) + " / " + REFIT_MAX + ".";
        } catch (Throwable th) {
            return null;
        }
    }

    // ------------------------------------------------------------------ refit stage art (hidden until GPT delivers it)
    private static final HashMap<String, Boolean> ART = new HashMap<String, Boolean>();
    private static final HashMap<String, Drawable> SKINS = new HashMap<String, Drawable>();
    private static final HashMap<String, String[]> RESOLVED = new HashMap<String, String[]>();

    static boolean art(String name) {
        Boolean b = ART.get(name);
        if (b == null) {
            b = ModArt.hasArt(name) && ModArt.lazyTex(name) != null;
            if (ModArt.listed()) ART.put(name, b);   // the asset list is unknown before the first context
        }
        return b;
    }

    static Drawable skin(String name, Vector2 dim) {
        String key = name + "@" + (int) dim.x + "x" + (int) dim.y;
        Drawable d = SKINS.get(key);
        if (d == null) {
            Texture tex = ModArt.lazyTex(name);
            if (tex == null) return null;
            d = new ModArt.Art(new Vector2(dim.x, dim.y), tex, false);
            SKINS.put(key, d);
        }
        return d;
    }

    /** Player hull at refit stage s: <art>_stage<s> when that file ships (Mod.frame). */
    public static Drawable playerArt(PlayerShip ps) {
        try {
            ModShips.Hull h = ModShips.hullFor(ps.shipSpec);
            if (h == null) return null;
            int s = stage(level(currentShip()));
            if (s <= 0) return null;
            String n = h.art + "_stage" + s;
            return art(n) ? skin(n, PlayerShip.drawableDimension) : null;
        } catch (Throwable t) {
            return null;
        }
    }

    private static final WeakHashMap<Element, Integer> enemyStage = new WeakHashMap<Element, Integer>();

    /** Enemy refit stage from its tech tier [P]: T1 1, T2 2, T3 3-4, T4 5. */
    public static int stageOfTier(int tier, boolean high) {
        switch (tier) {
            case 1: return 1;
            case 2: return 2;
            case 3: return high ? 4 : 3;
            default: return 5;
        }
    }

    public static int enemyStage(Element e) {
        Integer s = enemyStage.get(e);
        int t = ModV34.tier(e);
        if (s == null || stageOfTier(t, false) > s || stageOfTier(t, true) < s) {   // re-tiered (elite, boss, pooled respawn)
            s = stageOfTier(t, Math.random() < 0.5);
            enemyStage.put(e, s);
        }
        return s;
    }

    /** Draw state for the name tag hook (Element.registerYourselfToDrawQueue runs before the subclass draws its texts). */
    private static Element drawing;

    /**
     * Smali hook in Element.registerYourselfToDrawQueue: the drawable an element shows. Enemies use, when the file ships,
     * enemy_<art>_stage<s>, then <art>_stage<s>, then the hostile variant enemy_<art> (v34 req 10); else the stock sprite.
     */
    public static Drawable skin(Element e, Drawable d) {
        drawing = e;
        try {
            if (d == null || d.dimensions == null || !(e instanceof Ennemis) || Mod.isDrone(e)) return d;
            String a = ModArt.artOf(d.myTexture);
            if (a == null || !ModArt.listed()) return d;
            String[] by = RESOLVED.get(a);
            if (by == null) {
                // resolved once per art (no string building per frame): stage s -> enemy_<art>_stage<s>, <art>_stage<s>, enemy_<art>
                by = new String[STAGES + 1];
                for (int s = 1; s <= STAGES; s++) {
                    String n = "enemy_" + a + "_stage" + s;
                    if (!art(n)) n = a + "_stage" + s;
                    if (!art(n)) n = "enemy_" + a;
                    by[s] = art(n) ? n : null;
                }
                RESOLVED.put(a, by);
            }
            String n = by[Math.max(1, Math.min(STAGES, enemyStage(e)))];
            if (n == null) return d;
            Drawable o = skin(n, d.dimensions);
            return o == null ? d : o;
        } catch (Throwable t) {
            return d;
        }
    }

    /** Hostile flagship look (ModCapitals.drawable): enemy_cap_<key> when that file ships. */
    static String hostileCap(String key) {
        String n = "enemy_cap_" + key;
        return art(n) ? n : null;
    }

    public static float tagR = 1, tagG = 1, tagB = 1;

    /**
     * Smali hook at the start of RenderQueue.addTextToTextWaitingQueue(Vector2, ...): true when the text is the name tag
     * of the element being drawn, with its standing colour in tagR/G/B (v34 req 10). Hostile red, friendly/allied blue,
     * neutral white.
     */
    public static boolean tag(String s) {
        Element e = drawing;
        if (s == null || e == null || s != e.specificName) return false;
        try {
            int st = standing(e);
            if (st < 0) { tagR = 1.0f; tagG = 0.32f; tagB = 0.25f; }
            else if (st > 0) { tagR = 0.35f; tagG = 0.65f; tagB = 1.0f; }
            else { tagR = 1.0f; tagG = 1.0f; tagB = 1.0f; }
            return true;
        } catch (Throwable t) {
            return false;
        }
    }

    /** -1 hostile, 0 neutral, 1 friendly / allied (same rules as the v34 outlines in ModLive). */
    static int standing(Element e) {
        if (e instanceof Ennemis) return Mod.isDrone(e) ? 1 : -1;
        if (e instanceof GuardianCivilShip) {
            ModCapitals.Cap c = ModCapitals.cap(e);
            if (c != null) {
                if (ModLive.titanHostile((GuardianCivilShip) e, c)) return -1;
                return ModRep.rank(c.f.key) >= ModRep.FRIENDLY ? 1 : 0;
            }
        }
        if (e instanceof CivilShip) {
            Element ct = ((CivilShip) e).chasseTarget;
            if (ct != null && ct.isPlayer) return -1;
            String f = ModSector.factionOf(e);
            if (f != null && f.length() > 0 && ModRep.rank(f) >= ModRep.FRIENDLY) return 1;
        }
        return 0;
    }

    // ------------------------------------------------------------------ advantage-aware AI (req 2)
    public static final float EDGE = 0.15f;

    /**
     * Advantage of an enemy over the player (positive = the enemy is stronger): level, hull class, tech tier,
     * counter wheel and hull %. Each part is clamped so no single factor decides alone [P weights].
     */
    public static float score(int eLv, int pLv, int eCls, int pCls, int eTier, int pTier, int wheel, float eHull, float pHull) {
        float s = 0.3f * clamp((eLv - pLv) / 5.0f, -1, 1);
        s += 0.15f * clamp(eCls - pCls, -2, 2);
        s += 0.1f * clamp(eTier - pTier, -2, 2);
        s += 0.3f * wheel;
        s += 0.3f * (clamp(eHull, 0, 1) - clamp(pHull, 0, 1));
        return s;
    }

    static float clamp(float v, float lo, float hi) {
        return Math.max(lo, Math.min(hi, v));
    }

    /** +1 when the enemy's faction counters the player's, -1 the other way (counter wheel only). */
    static int wheel(String ef, String pf) {
        if (ef.length() == 0 || pf.length() == 0 || ef.equals(pf)) return 0;
        if (ModCounterData.beats(ef, pf)) return 1;
        if (ModCounterData.beats(pf, ef)) return -1;
        return 0;
    }

    /** Enemy hull class: stock rows are the destroyer baseline (v34); mod NPC hulls by drawn size. */
    static int enemyClass(Ennemis e) {
        try {
            if (e instanceof ModFleet.Fighter || e instanceof ModFleet.Raider || e instanceof ModFleet.Gunship || e instanceof ModFleet.Cruiser
                || e instanceof ModFleet.Skirmisher || e instanceof ModFleet.BeamShip || e instanceof ModFleet.Mothership) {
                float sz = e.getPhysicDimension().x / 0.7f;
                return sz <= 100 ? ModShips.FRIGATE : sz <= 200 ? ModShips.DESTROYER : sz <= 320 ? ModShips.CRUISER : sz <= 420 ? ModShips.BATTLECRUISER : sz <= 600 ? ModShips.BATTLESHIP : ModShips.CAPITAL;
            }
        } catch (Throwable t) {
            // baseline
        }
        return ModV34.STOCK_CLASS;
    }

    /** The player's side of the comparison: {level, class, tier}. */
    static int[] playerSide() {
        PlayerInfo pi = ObjectRegistry.INSTANCE.game.playerInfo;
        SpaceObjectType t = pi.playerGear.playerShip;
        int c = t == null ? -1 : ModShips.cls(t);
        return new int[] {pi.level, c < 0 || c == ModShips.INDUSTRIAL ? ModShips.DESTROYER : c, t == null ? 1 : Math.max(1, ModShips.tech(t))};
    }

    /** Score of enemy e against the player; withHull false leaves hull % out (kill-time factor). */
    static float score(Ennemis e, PlayerShip ps, boolean withHull) {
        int[] p = playerSide();
        int w = wheel(ModV34.factionOf(e), ModV34.factionOf(ps));
        float eh = e.maxLife > 0 ? e.life / e.maxLife : 1, ph = ps.maxLife > 0 ? ps.life / ps.maxLife : 1;
        return score(e.getLevel(), p[0], enemyClass(e), p[1], ModV34.tier(e), p[2], w, withHull ? eh : 0.5f, withHull ? ph : 0.5f);
    }

    public static final int AGGRO = 1, HOLD = 0, KITE = -1, FLEE = -2;

    /** Behaviour from the advantage score: push in, stock, keep range, or break off below 30% hull. */
    public static int mode(float score, float hullFrac, boolean boss) {
        if (boss) return AGGRO;                     // bosses are always very aggressive (their gimmicks do the rest)
        if (score >= EDGE) return AGGRO;
        if (score <= -EDGE) return hullFrac < 0.3f ? FLEE : KITE;
        return HOLD;
    }

    /** Owner 2026-10-22: on normal enemies the counter wheel adds a kill-time step on top of v34's +30%/-20%: x2.5 when the player counters, x0.5 when countered (rule of thumb ~3 s / 10 s / 25 s). */
    public static float ttkFactor(int playerWheel) {
        return playerWheel > 0 ? 2.5f : playerWheel < 0 ? 0.5f : 1.0f;
    }

    /** Per enemy: {stock disengage distance, mode, next evaluation (ms)}. */
    private static final WeakHashMap<Ennemis, float[]> ai = new WeakHashMap<Ennemis, float[]>();

    private static boolean still(Ennemis e) {
        return e instanceof FixedTourelle || e instanceof RocketTourelle || e instanceof AlienTourelle || e.maxTurnFactor <= 0;
    }

    /** Smali hook at the end of Ennemis.doPhysic (after the stock doIa): steering by advantage while it fights the player. */
    public static void ai(Ennemis e, long j) {
        try {
            Element tg = e.attackTarget;
            PlayerShip ps = ObjectRegistry.INSTANCE.playerShip;
            if (tg == null || !tg.isPlayer || ps == null || ps.removed || e.removed || still(e) || Mod.isDrone(e)) return;
            float[] st = ai.get(e);
            long now = System.currentTimeMillis();
            if (st == null) {
                st = new float[] {e.desengagementDistance, HOLD, 0};
                ai.put(e, st);
            }
            if (now >= (long) st[2]) {
                boolean boss = ModBoss.isBoss(e) || ModBoss.kindOf(e) >= 0;
                float hf = e.maxLife > 0 ? e.life / e.maxLife : 1;
                st[1] = mode(score(e, ps, true), hf, boss);
                st[2] = now + 500;
                e.desengagementDistance = st[0] * (st[1] == AGGRO ? 1.6f : 1.0f);
            }
            int m = (int) st[1];
            if (m == HOLD) return;
            float dx = ps.position.x - e.position.x, dy = ps.position.y - e.position.y;
            float dist = (float) Math.sqrt(dx * dx + dy * dy);
            if (m == AGGRO) {
                if (dist > 220) e.isPousee = true;    // keeps closing in while it turns: chases instead of drifting
                return;
            }
            float keep = Math.max(300, e.distanceShoot * 0.8f);
            if (m == FLEE || dist < keep) {
                // turn away from the player and burn; the stock code disengages once past the disengage distance
                float away = norm((float) Math.toDegrees(Math.atan2(-dy, -dx)) + 90);
                float diff = norm(away - e.spin);
                e.spinSpeed = Math.abs(diff) < 4 ? 0 : diff > 0 ? e.maxTurnFactor : -e.maxTurnFactor;
                e.isPousee = Math.abs(diff) < 100;
            } else if (dist < e.distanceShoot) {
                e.isPousee = false;                   // in range: hold distance and shoot
            }
        } catch (Throwable t) {
            // stock AI
        }
    }

    /** Angle in -180..180. */
    static float norm(float a) {
        a %= 360;
        if (a > 180) a -= 360;
        if (a < -180) a += 360;
        return a;
    }

    /** From ModLive.hit after ModV34.damage: player shots on normal enemies follow the kill-time targets. */
    public static float damage(Element target, float dmg, Projectile p) {
        try {
            if (p == null || p.sender == null || !p.sender.isPlayer || !(target instanceof Ennemis) || dmg <= 0) return dmg;
            Ennemis e = (Ennemis) target;
            if (e.elite || ModBoss.isBoss(e) || ModBoss.kindOf(e) >= 0 || Mod.isDrone(e) || ModCapitals.cap(e) != null || ModTitan.isTitanClass(e)) return dmg;   // normal enemies only
            PlayerShip ps = (PlayerShip) p.sender;
            String ef = ModV34.factionOf(e), pf = ModV34.factionOf(ps);
            int w = wheel(ef, pf);
            return dmg * ttkFactor(-w);   // stacks on ModV34.counter's +30%/-20%
        } catch (Throwable t) {
            return dmg;
        }
    }

    // ------------------------------------------------------------------ v34 req 16: final missions in the top region
    /**
     * The top region (The Hive, L34-40) holds the final missions: a 3-mission finale offered by the Brood-Voice at the Hive
     * from L34 (stock-scale levels 14-16), after the Kre'tari chain's own Varn harvesters story. Same row layout as
     * ModFactionData.MISSIONS (order 4-6). Text is Claude's draft for GPT to rewrite.
     */
    static final Object[][] FINALE = {
        {"kretari", 4, "The Last Harvest", "KILL_ENEMY_TYPE", "THE_HIVE", "THE_HIVE", 14, 12, "", "", "",
            "The Varn Syndicate has brought its whole harvest fleet to the Hive. Every Brood-Voice is calling for help. Break the outer harvest lines before they reach the nest.",
            "Destroy 12 Syndicate ships in The Hive.", "The outer harvest lines are broken. The Syndicate pulls back to its relay.", "The harvest lines hold. The Brood retreats deeper below the crust.", 900000, "modDisintegratorL15"},
        {"kretari", 5, "Silence the Relay", "DESTROY_STATION", "THE_HIVE", "THE_HIVE", 15, 0, "", "Syndicate Harvest Relay", "",
            "The harvesters answer to one relay station anchored above the Hive. Destroy it and the Syndicate fleet goes deaf.",
            "Destroy the Syndicate Harvest Relay and its guards.", "The relay is gone. The harvest fleet scatters without orders.", "The relay still stands. The harvest fleet regroups around it.", 1200000, "modArcProjectorL15"},
        {"kretari", 6, "Harvester Prime", "BOUNTY", "THE_HIVE", "THE_HIVE", 16, 0, "", "Harvester Prime", "",
            "The Syndicate's flagship harvester has come for the nest itself. This is the last fight for the Hive. End it.",
            "Hunt down Harvester Prime.", "Harvester Prime is destroyed. The Hive will remember the pilot who ended the last harvest.", "Harvester Prime escaped. The Brood will need another champion.", 2000000, "modRailgunL15"},
    };

    /** The finale missions are the order 4-6 rows. */
    public static boolean finale(int order) {
        return order >= 4;
    }

    // ------------------------------------------------------------------ v34 req 12: stock gear prices by rarity
    /** Owner 2026-10-22: minutes of farming at the item's level that one piece of gear costs (basic, fine, rare, exceptional, legendary). */
    public static final float[] GEAR_MIN = {8f, 8f, 20f, 60f, 150f};   // basic gear keeps its stock price (prices())

    /** Credits per hour at a level, from the v34 economy model (tools/sim): kills 40 + elites 4x2 + bosses 0.3x8, loot half of kills, 1.5 missions of 3 bounties. */
    public static float income(int level40) {
        return ModV34.bounty(level40) * ((40 + 4 * 2 + 0.3f * 8) * 1.5f + 1.5f * 3);
    }

    /** Price of a piece of gear: its rarity's farming minutes x the hourly income at its level (v34 level scale), rounded to hundreds. */
    public static int gearPrice(int rarity, int level40) {
        float min = GEAR_MIN[Math.max(0, Math.min(GEAR_MIN.length - 1, rarity))];
        int lv = Math.max(0, Math.min(ModV34.CAP, level40));
        return Math.max(100, Math.round(min / 60f * income(lv) / 100f) * 100);
    }

    private static boolean priced;

    /** Once per session (ModCaps.tick boot): stock gear (lasers, launchers, shields, boosters, drives) gets its rarity price. */
    public static void prices() {
        if (priced) return;
        priced = true;
        try {
            java.lang.reflect.Field mn = fr.testudo.spacecorsair.business.economy.Price.class.getDeclaredField("min");
            java.lang.reflect.Field mx = fr.testudo.spacecorsair.business.economy.Price.class.getDeclaredField("max");
            mn.setAccessible(true);
            mx.setAccessible(true);
            for (SpaceObjectType t : SpaceObjectType.values()) {
                GearSpec g = t.getGearSpec();
                fr.testudo.spacecorsair.business.economy.Price pr = t.getObjectPrice();
                if (g == null || pr == null || pr.inapp || !pr.fixed || g instanceof PlayerShipSpec) continue;
                if (ModWeapons.label(t) != null || ModRep.secretIndex(t) >= 0 || ModDev.isDev(t)) continue;   // mod gear keeps its own prices
                if (t.getRarety().ordinal() == 0 || pr.min <= 10) continue;   // basic placeholders and free starter gear stay stock
                int v = gearPrice(t.getRarety().ordinal(), ModV34.lvl(g.level));
                mn.setInt(pr, v);
                mx.setInt(pr, v);
                pr.current = v;
            }
        } catch (Throwable th) {
            // stock prices
        }
    }

    // ------------------------------------------------------------------ v34 req 13: mission rewards and standing
    /**
     * Mission credits (MissionReward hook): 3 same-level bounties per mission (sim/econ_report: missions are the safe,
     * smaller income), scaled by the mission's own size against a 10k stock reward (x0.5 - x3) [P].
     */
    public static int missionCredits(int stock, int playerLevel) {
        if (stock <= 0) return stock;
        float size = clamp(stock / 10000f, 0.5f, 3.0f);
        return Math.round(3f * ModV34.bounty(playerLevel) * size);
    }

    /** Standing per faction mission [P]: story +15 (finale +20) unchanged, contracts +8 (was +6) so Honored follows the story and 4 contracts. */
    public static float missionStanding(boolean contract, int order) {
        if (contract) return 8f;
        return order == 3 || order == 6 ? 20f : 15f;   // chain end and the last final mission +20
    }
}
