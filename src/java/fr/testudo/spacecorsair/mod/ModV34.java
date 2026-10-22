package fr.testudo.spacecorsair.mod;

import android.content.SharedPreferences;
import fr.testudo.spacecorsair.business.Element;
import fr.testudo.spacecorsair.business.ennemis.Ennemis;
import fr.testudo.spacecorsair.business.player.PlayerInfo;
import fr.testudo.spacecorsair.business.player.PlayerShip;
import fr.testudo.spacecorsair.business.projectiles.Projectile;
import fr.testudo.spacecorsair.business.world.civil.GuardianCivilShip;
import fr.testudo.spacecorsair.business.world.civil.TransportCivilShip;
import fr.testudo.spacecorsair.display.Drawable;
import fr.testudo.spacecorsair.display.Texture;
import fr.testudo.spacecorsair.engine.Vector2;
import fr.testudo.spacecorsair.engine.ObjectRegistry;
import fr.testudo.spacecorsair.game.levels.LevelId;
import java.lang.reflect.Field;
import java.util.WeakHashMap;

/**
 * v34 core rules (TASK.md v34): level cap 40, sectors on the 0-40 scale, the enemy curve past the stock tables
 * (level x tech tier, elite factors), pilot ATK / DEF / REA, the pilot damage formula and REA dodge, faction
 * counters and off-faction weapon penalties, the level shield bonus, the bounty curve and the death fee.
 */
public class ModV34 {
    public static final int CAP = 40;

    // ------------------------------------------------------------------ levels
    /** Stock XP per level L0-16 (XpBuilder.XP_CAP), then +5% per level (owner A2 fix). Index = current level. */
    public static long[] xpCap() {
        long[] stock = {1200, 1300, 1600, 2800, 4500, 5000, 8000, 12000, 15000, 16000, 18000, 20000, 22000, 25000, 29000, 34000, 37000};
        long[] t = new long[CAP + 1];
        for (int i = 0; i <= CAP; i++) t[i] = i < stock.length ? stock[i] : Math.round(37000 * Math.pow(1.05, i - 16));
        return t;
    }

    /** Stock base hull L0-23 (XpBuilder.PLAYER_SHIP_LIFE), then +7% per level like the enemy curve. */
    public static int[] shipLife() {
        int[] stock = {300, 350, 400, 450, 500, 550, 600, 650, 700, 800, 900, 1100, 1300, 1600, 1900, 2500, 3000, 3700, 4500, 5600, 6600, 8000, 9200, 10100};
        int[] t = new int[CAP + 1];
        for (int i = 0; i <= CAP; i++) t[i] = i < stock.length ? stock[i] : (int) Math.round(10100 * Math.pow(1.07, i - 23));
        return t;
    }

    /** Stock sector / mission level (0-16) on the v34 scale (0-40): early sectors keep their levels, the top region is 34-40. */
    public static int lvl(int stock) {
        if (stock <= 4) return Math.max(0, stock);
        return Math.min(CAP, 4 + (stock - 4) * 3);
    }

    private static boolean booted;

    /** Rescales every sector's level band once (LevelId.levelMin / levelMax are final fields; set by reflection). */
    public static void boot() {
        if (booted) return;
        booted = true;
        try {
            Field mn = LevelId.class.getDeclaredField("levelMin"), mx = LevelId.class.getDeclaredField("levelMax");
            mn.setAccessible(true);
            mx.setAccessible(true);
            for (LevelId id : LevelId.values()) {
                if (id == LevelId.GALACTIC_ARENA || id == LevelId.FFA_THE_PLAYER_PAY) continue;
                mn.setInt(id, lvl(id.levelMin));
                mx.setInt(id, lvl(id.levelMax));
            }
        } catch (Throwable t) {
            // sectors keep the stock bands
        }
    }

    static int playerLevel() {
        try { return ObjectRegistry.INSTANCE.game.playerInfo.level; } catch (Throwable t) { return 0; }
    }

    // ------------------------------------------------------------------ industrials (F1/F2)
    /** Save load: owned industrial hulls are removed and refunded at 100% of their price. Gear is per pilot, so it stays fitted. */
    public static void refundIndustrials(PlayerInfo pi) {
        try {
            int total = 0;
            java.util.Iterator<fr.testudo.spacecorsair.business.loot.SpaceObjectType> it = pi.availShips.iterator();
            while (it.hasNext()) {
                ModShips.Hull h = ModShips.hull(it.next());
                if (h == null || h.cls != ModShips.INDUSTRIAL) continue;
                it.remove();
                total += h.price;
            }
            if (total <= 0) return;
            ObjectRegistry.INSTANCE.game.playerCurrentShipInventory.addCredit(total);
            ModQol.post(ModLang.tr("Industrial ship retired. Refund: ") + total + " cr. " + ModLang.tr("Fitted gear stays on your pilot."));
        } catch (Throwable t) {
            // keep the save as it is
        }
    }

    private static final WeakHashMap<Object, ModShips.Hull> freighters = new WeakHashMap<Object, ModShips.Hull>();
    private static final java.util.HashMap<String, Drawable> freighterArts = new java.util.HashMap<String, Drawable>();

    /** Smali hook: TransportCivilShip.initLevelConfig. Half the transports fly as a retired industrial hull. */
    public static void freighter(TransportCivilShip c) {
        try {
            freighters.remove(c);
            if (Math.random() < 0.5) return;
            java.util.ArrayList<ModShips.Hull> l = new java.util.ArrayList<ModShips.Hull>();
            for (ModShips.Hull h : ModShips.HULLS) if (h != null && h.cls == ModShips.INDUSTRIAL) l.add(h);
            if (!l.isEmpty()) freighters.put(c, l.get((int) (Math.random() * l.size())));
        } catch (Throwable t) {
            // stock transport
        }
    }

    /** Smali hook: TransportCivilShip.getDrawableObject. */
    public static Drawable freighterArt(TransportCivilShip c, Drawable stock) {
        ModShips.Hull h = freighters.get(c);
        if (h == null) return stock;
        Drawable d = freighterArts.get(h.art);
        if (d == null) {
            Texture tex = ModArt.texture(h.art);
            if (tex == null) return stock;
            d = new ModArt.Art(new Vector2(h.size, h.size), tex, false);
            freighterArts.put(h.art, d);
        }
        return d;
    }

    // ------------------------------------------------------------------ economy
    /** Kill bounty before the elite / boss factor (sim/econ_sim.py fit: 355.5 x (lv+1)^1.2). */
    public static float bounty(int lv) {
        lv = Math.max(0, Math.min(CAP, lv));
        return 355.5f * (float) Math.pow(lv + 1, 1.2);
    }

    /**
     * G3 rare loot: a kill can drop rare salvage worth several bounties. Expected value is half the bounty
     * (normal 4% x 12.5, elite 25% x 2, boss always x 0.5), so loot sits between kills and missions.
     */
    public static void rareSalvage(Ennemis e, int bounty) {
        try {
            boolean boss = ModBoss.isBoss(e) || e.xp >= 500;
            float p = boss ? 1.0f : e.elite ? 0.25f : 0.04f, k = boss ? 0.5f : e.elite ? 2.0f : 12.5f;
            if (Math.random() >= p) return;
            int c = Math.max(1, Math.round(bounty * k));
            ObjectRegistry.INSTANCE.game.playerCurrentShipInventory.addCredit(c);
            Element at = fr.testudo.spacecorsair.engine.GameThread.isElementVisible(e) ? e : ObjectRegistry.INSTANCE.playerShip;
            ObjectRegistry.INSTANCE.game.currentLevel.toAddDrawOnly.add(
                fr.testudo.spacecorsair.business.factory.GamePools.newGoldMessage().init("+" + c + " c " + ModLang.tr("RARE SALVAGE"), at));
        } catch (Throwable t) {
            // never break a kill
        }
    }

    /** Death fee: 2 same-level kills, capped so 3 deaths cost at most 15% of the estimated hourly income (about 80 bounties). */
    public static int deathFee(int lv) {
        float b = bounty(lv);
        return Math.round(Math.min(2f * b, 0.15f * 80f * b / 3f));
    }

    /** Level bonus above L17: +1% shield regen per level. */
    public static float levelShield() {
        return 1.0f + 0.01f * Math.max(0, Math.min(CAP, playerLevel()) - 17);
    }

    // ------------------------------------------------------------------ pilot stats
    public static final int STAT_CAP = 1000, SOFT_CAP = 800, STAT_LEVEL = 10;

    /** ATK = DEF = REA from level: 0 below L10, linear to 800 at L40. */
    public static int statBase(int lv) {
        if (lv < STAT_LEVEL) return 0;
        return Math.round(SOFT_CAP * Math.min(CAP - STAT_LEVEL, lv - STAT_LEVEL) / (float) (CAP - STAT_LEVEL));
    }

    /** Storyline share of the last 200: integer split over the factions (4 x 29 + 3 x 28 for 7). */
    public static int storyBonus(int done) {
        int n = ModRepData.KEYS.length, total = 0;
        for (int i = 0; i < Math.min(done, n); i++) total += (STAT_CAP - SOFT_CAP) / n + (i < (STAT_CAP - SOFT_CAP) % n ? 1 : 0);
        return total;
    }

    /** Called when a faction's storyline finale completes (ModFaction.complete). */
    public static void storyDone(String key) {
        SharedPreferences p = ModQol.prefs();
        if (p != null) p.edit().putBoolean("v34_story_" + key, true).commit();
    }

    static int storiesDone() {
        SharedPreferences p = ModQol.prefs();
        if (p == null) return 0;
        int n = 0;
        for (String k : ModRepData.KEYS) if (p.getBoolean("v34_story_" + k, false)) n++;
        return n;
    }

    public static int playerStat() {
        return Math.min(STAT_CAP, statBase(playerLevel()) + storyBonus(storiesDone()));
    }

    /** Per enemy: {tech tier 1-4, pilot stat}. Pooled enemies are re-keyed on every scale(). */
    private static final WeakHashMap<Element, int[]> state = new WeakHashMap<Element, int[]>();

    static int stat(Element e) {
        if (e == null) return 0;
        if (e.isPlayer) return playerStat();
        int[] s = state.get(e);
        if (s != null) return s[1];
        return statBase(e.getLevel());
    }

    static int tier(Element e) {
        int[] s = e == null ? null : state.get(e);
        return s == null ? 1 : s[0];
    }

    /** Damage multiplier from pilot stats; DEF cuts base damage only once it leads ATK by 250. */
    public static float pilot(int atk, int def) {
        float bonus = 1.0f + Math.max(0, atk - 0.75f * def) / 1000f;
        float cut = Math.max(0f, Math.min(0.3f, (def - atk - 250) / 1000f * 0.4f));
        return bonus * (1.0f - cut);
    }

    /** REA dodge chance (0..0.25) of the player against an elite, boss or flagship attacker. */
    public static float dodge(int reaTarget, int reaAttacker) {
        return Math.max(0f, Math.min(0.25f, (reaTarget - reaAttacker) / 20f / 100f));
    }

    static boolean difficult(Element e) {
        if (e instanceof GuardianCivilShip) return ModCapitals.cap(e) != null;
        if (!(e instanceof Ennemis)) return false;
        return ((Ennemis) e).elite || ModBoss.isBoss(e);
    }

    // ------------------------------------------------------------------ enemy curve
    static final float[] TIER_F = {1.0f, 1.0f, 1.15f, 1.3f, 1.5f};

    /** Level curve past the stock tables (L15 row x 1.07 per level). */
    public static float curve(int lv) {
        return (float) Math.pow(1.07, Math.max(0, Math.min(CAP, lv) - 15));
    }

    private static int want = -1;

    /** Smali hook at the start of every EnnemisFactory.newX(level): the factory clamps the level to its table, this keeps the real one. */
    public static void want(int lv) {
        want = lv;
    }

    /** Smali hook at the end of every stock initLevelConfig (stats from the spec row are set). */
    public static void scale(Ennemis e) {
        try {
            if (want > e.level) {
                e.level = Math.min(CAP, want);
                e.levelStr = String.valueOf(e.level);
            }
            want = -1;
            int lv = e.getLevel();
            int t = Math.max(1, Math.min(4, 1 + lv / 12 + (int) Math.floor(Math.random() * 3) - 1));
            state.put(e, new int[] {t, statBase(lv)});
            float c = curve(lv);
            e.maxLife *= c;
            e.life = e.maxLife;
            e.xp = Math.round(e.xp * c);   // XP keeps pace with the +5% per level XP table
            e.bulletDamage *= c * TIER_F[t];
            e.milleSecBetweenShots = (long) (e.milleSecBetweenShots / (1.0f + (TIER_F[t] - 1.0f) * 0.5f));
        } catch (Throwable th) {
            // stock stats
        }
    }

    /** Smali hook at the end of Ennemis.setElite: hull x2.5, damage x1.5, +1 tier, +150 pilot stats (once per spawn). */
    public static void elite(Ennemis e) {
        try {
            int[] s = state.get(e);
            if (s == null) { s = new int[] {1, statBase(e.getLevel())}; state.put(e, s); }
            if (s.length > 2) return;
            state.put(e, new int[] {Math.min(4, s[0] + 1), Math.min(STAT_CAP, s[1] + 150), 1});
            e.maxLife *= 2.5f;
            e.life = e.maxLife;
            e.bulletDamage *= 1.5f;
        } catch (Throwable th) {
            // stock elite
        }
    }

    /** Bosses (ModBoss) keep their hand-tuned profile and get +300 pilot stats on top. */
    public static void boss(Ennemis e) {
        int[] s = state.get(e);
        state.put(e, new int[] {4, Math.min(STAT_CAP, (s == null ? statBase(e.getLevel()) : s[1]) + 300), 1});
    }

    // ------------------------------------------------------------------ slot sizes (H2)
    public static final String[] SLOT_NAMES = {"S", "M", "L", "XL"};

    /** Largest weapon size a hull class carries: Frigate S, Destroyer/Cruiser M, Battlecruiser/Battleship L, Capital/Titan XL. */
    public static int slotOf(int cls) {
        switch (cls) {
            case ModShips.FRIGATE: return 0;
            case ModShips.DESTROYER: case ModShips.CRUISER: return 1;
            case ModShips.BATTLECRUISER: case ModShips.BATTLESHIP: return 2;
            case ModShips.CAPITAL: case ModShips.TITAN: return 3;
            default: return 1;
        }
    }

    /** Weapon size from its level band: below L7 S, L7+ M, L22+ L, L37+ XL (ModSpecs.TIER_REQ). Non-weapons: -1. */
    public static int weaponSize(fr.testudo.spacecorsair.business.loot.SpaceObjectType t) {
        fr.testudo.spacecorsair.business.loot.stuff.GearSpec g = t == null ? null : t.getGearSpec();
        if (g == null || g.gearType != fr.testudo.spacecorsair.business.loot.stuff.GearSpec.Type.LASER) return -1;
        int s = 0;
        for (int i = 1; i < ModSpecs.TIER_REQ.length; i++) if (g.level >= ModSpecs.TIER_REQ[i]) s = i;
        return s;
    }

    /** H2: true when the weapon fits the slots of the hull the pilot flies. */
    public static boolean fits(fr.testudo.spacecorsair.business.loot.SpaceObjectType t) {
        try {
            int w = weaponSize(t);
            if (w < 0) return true;
            int c = ModShips.cls(ObjectRegistry.INSTANCE.game.playerInfo.playerGear.playerShip);
            return c < 0 || w <= slotOf(c);
        } catch (Throwable th) {
            return true;
        }
    }

    // ------------------------------------------------------------------ factions and weapons
    static final int RAIL = 0, AUTO = 1, ARTY = 2, BLAST = 3, DISINT = 4, ARC = 5;

    /** Faction key of a ship ("" = neutral). */
    static String factionOf(Element e) {
        try {
            if (e == null) return "";
            if (e.isPlayer) return ModShips.factionKey((PlayerShip) e);
            ModCapitals.Cap c = ModCapitals.cap(e);
            if (c != null && c.f != null) return c.f.key;
            if (e instanceof Ennemis) {
                String n = ((Ennemis) e).specificName;
                if (n != null) {
                    if (n.startsWith("Reaver")) return "reaver";
                    if (n.startsWith("Kre'tari")) return "kretari";
                }
            }
        } catch (Throwable t) {
            // neutral
        }
        return "";
    }

    /** Own-faction weapon families (FLAK / LANCE / SPINE reskins map onto their parent family's TAG for now). */
    static boolean ownFamily(String key, int fam) {
        if (fam < 0 || key.length() == 0) return false;
        if ("spartan".equals(key)) return fam == RAIL;
        if ("warden".equals(key)) return fam == RAIL || fam == ARC;
        if ("reaver".equals(key) || "kretari".equals(key)) return fam == AUTO;
        if ("varn".equals(key)) return fam == DISINT;
        if ("ironclad".equals(key)) return fam == ARTY;
        if ("helion".equals(key)) return fam == BLAST;
        return false;
    }

    /** H1: neutral hull -15% with any faction family; faction hull -40% with another faction's family. */
    public static float weaponRule(String hullFaction, int fam) {
        if (fam < 0) return 1.0f;
        if (hullFaction.length() == 0) return 0.85f;
        return ownFamily(hullFaction, fam) ? 1.0f : 0.6f;
    }

    /** H5: Frontier (warden) hulls reload rails 10% faster. From ModShips.apply after gear is applied. */
    public static void railReload(PlayerShip ps) {
        try {
            if (!"warden".equals(ModShips.factionKey(ps)) || ModWeapons.family(ps.laserSpec) != RAIL) return;
            ps.milleSecBetweenShots = (long) (ps.milleSecBetweenShots * 0.9f);
            if (ps.playerCannons != null) for (int k = 0; k < ps.playerCannons.length; k++) ps.playerCannons[k].timeBewteenShootInMilli = (int) (ps.playerCannons[k].timeBewteenShootInMilli * 0.9f);
        } catch (Throwable t) {
            // stock reload
        }
    }

    /** H6: counter wheel x weapon-type resist, clamped to x0.5-x2.0. */
    public static float counter(String atk, String def, int fam) {
        float m = 1.0f;
        if (atk.length() > 0 && def.length() > 0 && !atk.equals(def)) {
            if (ModCounterData.beats(atk, def)) m *= 1.3f * 1.2f;          // counter deals +30%, the countered side takes +20%
            else if (ModCounterData.beats(def, atk)) m *= 0.7f * 0.8f;     // inverse: -30% dealt into a counter that takes -20%
        }
        if (def.length() > 0 && fam >= 0) m *= ModCounterData.weaponTaken(def, fam);
        return Math.max(0.5f, Math.min(2.0f, m));
    }

    /** Hook from ModLive.hit (before boss skills): dodge, pilot formula, counters, off-faction penalty. */
    public static float damage(Element target, float dmg, Projectile p) {
        try {
            if (p == null || target == null || dmg <= 0) return dmg;
            Element src = p.sender;
            if (src == null) return dmg;
            if (target.isPlayer && difficult(src) && Math.random() < dodge(stat(target), stat(src))) {
                PlayerShip ps = (PlayerShip) target;
                Mod.floatText(ps, ModLang.tr("EVADED"), 0.6f, 0.9f, 1.0f);
                return 0f;
            }
            int fam = ModWeapons.familyOf(p);
            String fa = factionOf(src), fd = factionOf(target);
            float out = dmg * pilot(stat(src), stat(target)) * counter(fa, fd, fam);
            if (src.isPlayer) {
                out *= weaponRule(fa, fam);
                if (fam == RAIL && "spartan".equals(fa)) out *= 1.1f;   // H5: Spartan hulls +10% rail damage
            }
            return out;
        } catch (Throwable t) {
            return dmg;
        }
    }
}
