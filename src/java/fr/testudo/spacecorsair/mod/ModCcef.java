package fr.testudo.spacecorsair.mod;

import android.content.SharedPreferences;
import fr.testudo.spacecorsair.business.Element;
import fr.testudo.spacecorsair.business.ennemis.Ennemis;
import fr.testudo.spacecorsair.business.player.PlayerShip;
import fr.testudo.spacecorsair.business.projectiles.Projectile;
import fr.testudo.spacecorsair.business.world.Portal;
import fr.testudo.spacecorsair.business.world.civil.CivilShip;
import fr.testudo.spacecorsair.business.world.civil.CivilState;
import fr.testudo.spacecorsair.business.world.civil.GuardianCivilShip;
import fr.testudo.spacecorsair.business.world.civil.PoliceShip;
import fr.testudo.spacecorsair.display.Drawable;
import fr.testudo.spacecorsair.engine.ObjectRegistry;
import fr.testudo.spacecorsair.engine.RenderQueue;
import fr.testudo.spacecorsair.engine.Vector2;
import fr.testudo.spacecorsair.game.achievements.Achievement;
import fr.testudo.spacecorsair.game.levels.Level;
import fr.testudo.spacecorsair.game.levels.LevelId;
import java.util.ArrayList;
import java.util.List;
import java.util.WeakHashMap;
import javax.microedition.khronos.opengles.GL10;

/**
 * CCEF, Central Criminal Elimination Force (owner design 2026-11-22, space-corsair/proposals/ccef-design.md).
 *
 * <p>The police's last stand. Trigger: a regular police titan spawned, then the player killed it or left its sector
 * (not by dying). Flow:
 * <ol>
 * <li>Titan spawn: a warning that killing or escaping it means being hunted for good (CCEF not named).</li>
 * <li>Trigger: the Human Intergalactic Council's termination notice; a 20 s warp-in countdown starts, and with it the
 * 120 s survival clock (owner 01:05). Regular police stand down and stay away for the whole hunt.</li>
 * <li>Landing: one ship of every police class (frigate..capital) plus a CCEF titan, all at once, in elite colours (scheme
 * 3, gunmetal/cyan); every 2 squad clears add one ship of a random class. Their own short notice names the CCEF and the
 * local lockdown: warp-out (gates and hyperdrive) takes 50% longer while they hunt.</li>
 * <li>The radar shows only the CCEF signature; civilians shot by the player flee instead of joining in.</li>
 * <li>120 s survived (countdown included): secret achievement "Escape from Certain Death". Killing the squad: the same
 * achievement (if not yet earned), 10M credits, 10 neutral cores, 2 cores of every faction, 20 alien credits, a Council
 * warning, and the next squad is 5% stronger.</li>
 * </ol>
 * CCEF ships: immune to crowd control and damage over time, take 50% of every player hit (police armour and doomsday caps
 * still apply), regular police stats otherwise, 35% faster, 30% quicker to turn, and fly the PR #6 range-band kiting (tuned
 * harder) plus shot evasion; once the player has destroyed 2 of them they also hit and run from outside the screen. They
 * may finish off a hostile NPC near their target first (never explained). Co-op: they hunt both players and send two
 * thirds of the squad after the one whose offences raised most of the heat.
 *
 * <p>During the chase the player (hidden): shields recharge at the stock rate (no curve, no half-rate penalty), +15%
 * damage, +10% turn rate. Every entry point swallows its own errors.
 */
public final class ModCcef {
    private ModCcef() {}

    // ================================================================== switches and numbers
    /** The whole CCEF hunt (owner-approved feature). */
    public static final boolean ON = true;
    /** The CCEF AI layer (PR #6 kiting tuned harder, evasion, off-screen hit and run). Off = stock police steering. */
    public static final boolean AI = true;

    public static final long WARP_IN_MS = 20000;          // owner: the squad arrives over 20 s
    public static final long SURVIVE_MS = 120000;         // owner 01:05: from the start of the countdown
    public static final float DMG_TAKEN = 0.5f;           // of every player hit
    public static final float SPEED = 1.35f, TURN = 1.3f; // "faster, more agile" [Claude pick]
    public static final float SCALE_PER_CLEAR = 0.05f;    // owner 01:07: +5% stats each squad kill (added, not compounded)
    public static final int CLEARS_PER_EXTRA = 2;         // owner 01:07: every 2 clears one more ship
    public static final float PLAYER_DMG = 1.15f;        // owner 01:05: hidden +15% damage during the chase
    public static final float PLAYER_AGILITY = 1.1f;     // owner 01:05: "slight agility increase" [Claude pick: +10% turn]
    public static final float WARP_MULT = 1.5f;          // owner: local lockdown, warp-out +50%
    public static final int EVADE_KILLS = 2;              // owner: off-screen evasion once 2 CCEF ships are down
    public static final float PREY_RANGE = 1500f;         // hidden rule: hostile NPC this close to the target
    public static final float PREY_CHANCE = 0.5f;         //   is engaged first with this chance per check
    public static final long PREY_CHECK_MS = 3000;
    public static final int REWARD_CREDITS = 10000000, REWARD_NEUTRAL_CORES = 10, REWARD_FACTION_CORES = 2, REWARD_ALIEN = 20;
    public static final String ACH = "escapeCertainDeath";
    /** Squad classes before the titan (owner: one of each). */
    static final int[] SQUAD = {ModShips.FRIGATE, ModShips.DESTROYER, ModShips.CRUISER, ModShips.BATTLECRUISER, ModShips.BATTLESHIP, ModShips.CAPITAL};
    /** Scheme 3: cyan accents, gunmetal hull tint over the police livery until GPT's ccef_ art ships. */
    static final float R = 0.25f, G = 0.9f, B = 1.0f;
    static final float TINT_R = 0.56f, TINT_G = 0.62f, TINT_B = 0.68f;

    // ================================================================== pure rules (work/dtest/fr/testudo/spacecorsair/mod/VCCEF.java)
    /** CCEF stat factor after {@code clears} squad kills. */
    public static float scale(int clears) {
        return 1.0f + SCALE_PER_CLEAR * Math.max(0, clears);
    }

    /** Extra ships of a random class after {@code clears} squad kills. */
    public static int extras(int clears) {
        return Math.max(0, clears) / CLEARS_PER_EXTRA;
    }

    /** Squad classes (titan excluded: one titan per sector): one of each, plus the extras picked by {@code picks} in [0,1). */
    public static int[] squad(int clears, double[] picks) {
        int x = extras(clears);
        int[] out = new int[SQUAD.length + x];
        System.arraycopy(SQUAD, 0, out, 0, SQUAD.length);
        for (int i = 0; i < x; i++) {
            double p = picks != null && i < picks.length ? picks[i] : Math.random();
            out[SQUAD.length + i] = SQUAD[Math.min(SQUAD.length - 1, (int) (p * SQUAD.length))];
        }
        return out;
    }

    /** Achievement earned: the clock (from the countdown start) reached 120 s. */
    public static boolean survived(long clockMs) {
        return clockMs >= SURVIVE_MS;
    }

    /** Off-screen hit and run only once the player has a chance of winning. */
    public static boolean evasive(int kills) {
        return kills >= EVADE_KILLS;
    }

    /** Owner 2026-11-22 02:54: the hunt follows the player through up to 5 sectors (warp-out or gate), then loses the trail. */
    public static final int FOLLOW_SECTORS = 5;

    /** Owner 02:55 "within reason": a hiding ship stays at most this many gun ranges from the player. */
    public static final float HIDE_MAX = 2.0f;

    /** Off-screen standoff for a hull of {@code size} and gun range {@code range} against a view half-size; 0 = too far to hide (it stays in view). */
    public static float hideRadius(float view, float size, float range) {
        float out = view * 1.1f + size;
        return out > range * HIDE_MAX ? 0 : out;
    }

    /** Leaving the sector after {@code hops} follows already made: the hunt follows again. */
    public static boolean follows(int hops) {
        return hops < FOLLOW_SECTORS;
    }

    private static int hops;

    /** Warp-out time under the lockdown. */
    public static int warpTime(int ms, boolean lockdown) {
        return lockdown ? Math.round(ms * WARP_MULT) : ms;
    }

    /** Player hit on a CCEF hull, and the player's own +15% while the chase runs. */
    public static float playerHit(float dmg, boolean chase, boolean targetCcef) {
        if (!chase) return dmg;
        float d = dmg * PLAYER_DMG;
        return targetCcef ? d * DMG_TAKEN : d;
    }

    /** Co-op: true when this squad slot goes after the secondary player (one in three). */
    public static boolean secondarySlot(int index) {
        return index % 3 == 2;
    }

    // ================================================================== state
    static final int NONE = 0, PENDING = 1, WARP = 2, HUNT = 3;
    private static int phase = NONE;
    private static long clock, warpLeft, slowTimer, preyScan, shotScan;
    private static boolean achGiven, guestPrime;
    private static int kills, fi = -1, lv;
    private static Object lastLevel;
    private static final ArrayList<Integer> toLand = new ArrayList<Integer>();
    /** Hull fraction each queued ship lands with (a ship that follows the player keeps its damage). */
    private static final ArrayList<Float> toLandLife = new ArrayList<Float>();
    private static float titanLife = 1f;
    private static int landTries;
    static final int LAND_TRIES = 30;   // 15 s of retries, then the missing ships are dropped (art or titan slot unavailable)
    private static boolean titanToLand;
    private static final ArrayList<Ennemis> squad = new ArrayList<Ennemis>();
    private static GuardianCivilShip titan;
    /** Per CCEF ship: {hit-and-run phase 0 out / 1 in, phase ms left, next prey check ms, side sign}. */
    private static final WeakHashMap<Element, float[]> st = new WeakHashMap<Element, float[]>();
    private static final WeakHashMap<Portal, Integer> portals = new WeakHashMap<Portal, Integer>();
    private static final Vector2 at = new Vector2(), goal = new Vector2();
    private static boolean diedSinceTitan;

    /** Chase running (countdown or squad on the field): player boosts, no regular police, no new traffic. */
    public static boolean chase() {
        return phase == WARP || phase == HUNT;
    }

    /** The squad has landed in this sector: lockdown (warp +50%) and the radar signature. */
    static boolean lockdown() {
        return landed && (phase == WARP || phase == HUNT);
    }

    private static boolean landed;

    /** ModCaps.tick: the player's ship was destroyed. A running hunt ends; a titan sector left by dying is no escape. */
    static void playerDied() {
        diedSinceTitan = true;
        if (phase != NONE) end("player destroyed", false);
    }

    /** Snapshot of the squad + titan for any thread (radar and lights run on the render thread). */
    private static volatile Object[] members = new Object[0];

    private static void snapshot() {
        Object[] m = new Object[squad.size() + (titan != null ? 1 : 0)];
        for (int i = 0; i < squad.size(); i++) m[i] = squad.get(i);
        if (titan != null) m[m.length - 1] = titan;
        members = m;
    }

    public static boolean isCcef(Object e) {
        if (e == null) return false;
        Object[] m = members;
        for (int i = 0; i < m.length; i++) if (m[i] == e) return true;
        return false;
    }

    // ================================================================== triggers (ModPolice / ModPoliceTitan)
    /** ModPolice.wave: a regular police titan just spawned. */
    static void titanWarning() {
        if (!ON) return;
        diedSinceTitan = false;
        try {
            ModQol.post(ModLang.tr("Warning: a police titan has been deployed. Destroy it or slip its pursuit and you WILL be hunted down for good."));
            log("titan warning");
        } catch (Throwable t) {
            // no warning
        }
    }

    /** ModPolice.onTitanKilled: the regular titan is down. The hunt starts here. */
    static void regularTitanKilled() {
        if (!ON || phase != NONE) return;
        try {
            LevelId id = ObjectRegistry.INSTANCE.game.currentLevel.id;
            setOrigin(id);
            phase = PENDING;
            clock = 0;
            kills = 0;
            hops = 0;
            achGiven = false;
            save();
            log("trigger: titan killed in " + id);
        } catch (Throwable t) {
            // no hunt
        }
    }

    /** ModPolice.enter: the player left a sector with a regular police titan up. */
    static void titanEscaped(LevelId from) {
        if (!ON || phase != NONE) return;
        try {
            PlayerShip ps = ObjectRegistry.INSTANCE.playerShip;
            if (diedSinceTitan || ps == null || ps.life <= 0) { log("titan sector left by death: no hunt"); return; }
            setOrigin(from);
            phase = PENDING;
            clock = 0;
            kills = 0;
            hops = 0;
            achGiven = false;
            save();
            log("trigger: titan escaped from " + from);
        } catch (Throwable t) {
            phase = NONE;   // never breaks the police sector change
        }
    }

    private static void setOrigin(LevelId id) {
        fi = ModPolice.factionIndex(id);
        lv = ModPolice.level(id == null ? 1 : id.levelMax);
        guestPrime = ModPolice.guestHeatLeads();
        queueFresh();
    }

    private static void queueFresh() {
        landTries = 0;
        toLand.clear();
        toLandLife.clear();
        for (int c : squad(clears(), null)) { toLand.add(c); toLandLife.add(1f); }
        titanToLand = true;
        titanLife = 1f;
    }

    private static void queue(int cls, float frac) {
        toLand.add(cls);
        toLandLife.add(Math.max(0.05f, Math.min(1f, frac)));
    }

    // ================================================================== per frame (ModCaps.tick, after ModPolice)
    public static void tick(PlayerShip ps, long j) {
        if (!ON) return;
        try {
            if (ps == null) return;
            if (ps.removed || ps.life <= 0) { playerDied(); return; }
            Level lvl = ObjectRegistry.INSTANCE.game.currentLevel;
            if (lvl != lastLevel) { lastLevel = lvl; onLevel(lvl == null ? null : lvl.id); }
            test(ps);
            if (phase == NONE || lvl == null) return;
            if (ps.isDocked || ObjectRegistry.INSTANCE.game.mapMode) return;
            if (phase == PENDING) {
                if (ModPolice.safe(lvl.id) || ModPrologue.active) return;
                start(ps);
                return;
            }
            clock += j;
            boost(ps);
            if (!achGiven && survived(clock)) { achGiven = true; achieve(); log("survived 120 s"); }
            slowTimer -= j;
            if (slowTimer <= 0) { slowTimer = 1000; clearPolice(); if (lockdown()) lockPortals(lvl, true); if ((clock / 1000) % 5 == 0) save(); }
            if (phase == WARP) {
                warpLeft -= j;
                if (warpLeft <= 0) land(ps);
                if (!landed) return;
            }
            scanShots(lvl, ps);
            for (int i = squad.size() - 1; i >= 0; i--) {
                Ennemis e = squad.get(i);
                if (e.life <= 0) { squad.remove(i); snapshot(); kills++; log("ship down, kills=" + kills); continue; }
                if (e.removed) { squad.remove(i); queue(ModPolice.classOf(e), 1f); snapshot(); log("ship lost without a kill: redeploy"); continue; }
                immune(e);
                long[] s = ModPolice.policeState(e);
                if (s != null && !ModView.outside(e)) ModPolice.missiles(ps, e, s, j);   // no missiles from off screen
                aim(e, i, ps, j);
            }
            if (titan != null) {
                if (titan.life <= 0) { titan = null; snapshot(); kills++; log("titan down, kills=" + kills); }
                else if (titan.removed) { titan = null; snapshot(); titanToLand = true; titanLife = 1f; }
                else immune(titan);
            }
            if (!toLand.isEmpty() || titanToLand) { if (phase == HUNT) { phase = WARP; warpLeft = 3000; landTries = 0; } }   // lost ships come back
            else if (squad.isEmpty() && titan == null) win(ps);
        } catch (Throwable t) {
            // the hunt skips a frame
        }
    }

    /** Sector change: a running hunt follows the player into up to 5 sectors, then the hunters lose the trail. */
    private static void onLevel(LevelId id) {
        lockPortals(null, false);
        boolean wasOn = phase == WARP || phase == HUNT;
        if (wasOn) {
            for (Ennemis e : squad) if (e.life > 0) queue(ModPolice.classOf(e), e.maxLife > 0 ? e.life / e.maxLife : 1f);
            if (titan != null && titan.life > 0) { titanToLand = true; titanLife = titan.maxLife > 0 ? titan.life / titan.maxLife : 1f; }
        }
        squad.clear();
        st.clear();
        titan = null;
        snapshot();
        landed = false;
        if (phase == NONE) { restore(); return; }
        if (wasOn && !follows(hops)) { end("trail lost", true); return; }
        if (wasOn) { hops++; phase = PENDING; save(); log("hunt follows into " + id + " (" + hops + "/" + FOLLOW_SECTORS + ")"); }
    }

    private static void start(PlayerShip ps) {
        phase = WARP;
        landTries = 0;
        warpLeft = WARP_IN_MS;
        ModPolice.ccefStandDown(ps);
        clearPolice();
        at.setSameAs(arrival(ps));
        if (clock == 0) {   // first deployment (a follow keeps the notice and the clock)
            ModQol.post(ModLang.tr("Incoming transmission from the Human Intergalactic Council: for the crimes you have committed, you are sentenced to termination. The sentence will be carried out without delay."));
        }
        ObjectRegistry.INSTANCE.soundManager.playDanger();
        log("countdown " + WARP_IN_MS + " ms, clock " + clock);
    }

    private static Vector2 arrival(PlayerShip ps) {
        Vector2 v = new Vector2(0, -3200).applyRotatation(Math.random() * Math.PI * 2);
        return v.add(ps.position);
    }

    private static void land(PlayerShip ps) {
        phase = HUNT;
        boolean first = !landed;
        float sc = scale(clears());
        int made = 0;
        for (int k = toLand.size() - 1; k >= 0; k--) {
            Ennemis e = ModPolice.build(fi, toLand.get(k), lv, true);
            if (e == null) continue;   // art not loaded: next landing check
            dress(e, toLand.get(k), sc);
            float lf = k < toLandLife.size() ? toLandLife.get(k) : 1f;
            if (lf < 1f) { e.life = e.maxLife * lf; e.lifeInPourc = 100f * lf; if (e.lifeBar != null) e.lifeBar.setValue(e.lifeInPourc); }
            e.position.setSameAs(at).add((float) (Math.random() * 900 - 450), (float) (Math.random() * 900 - 450));
            e.updateSapCoords();
            e.addToCurrentLevel();
            e.initChasePlayer();
            st.put(e, new float[] {0, 0, 0, Math.random() < 0.5 ? -1 : 1});
            squad.add(e);
            toLand.remove(k);
            if (k < toLandLife.size()) toLandLife.remove(k);
            made++;
        }
        if (titanToLand) {
            Element t = ModPoliceTitan.spawnCcef(ModCapitals.FACTIONS[Math.max(0, fi)].key, lv, new Vector2(at.x, at.y), sc);
            if (t instanceof GuardianCivilShip) {
                titan = (GuardianCivilShip) t;
                titanToLand = false;
                titan.specificName = ModLang.tr("CCEF Titan");
                ModPoliceTitan.rename(titan.specificName);
                if (titanLife < 1f) { titan.life = titan.maxLife * titanLife; titan.lifeInPourc = 100f * titanLife; }
                made++;
            }
        }
        snapshot();
        if (!toLand.isEmpty() || titanToLand) {
            if (++landTries >= LAND_TRIES) {   // never soft-lock the hunt on a ship that cannot spawn
                log("landing gave up on " + toLand.size() + (titanToLand ? " + titan" : ""));
                toLand.clear();
                toLandLife.clear();
                titanToLand = false;
                landTries = 0;
                if (squad.isEmpty() && titan == null) { end("landing failed", false); return; }   // nothing on the field: no hunt, no reward
            } else { phase = WARP; warpLeft = 500; }   // retry the rest shortly
        } else landTries = 0;
        if (made > 0) landed = true;
        if (made > 0 && first) {
            ModLive.fx("fx_shock", 1, 1, at.x, at.y, 2400, 1200, R, G, B, true);
            ModSound.play("warp_in", 1.0f, 0.7f, 1500);
            ModSound.play("flagship_horn", 1.0f, 0.7f, 3000);
            ModTitanAI.callout("CCEF", ModLang.tr("Local lockdown. Criminal marked for elimination"), R, G, B, 4000);
            ModQol.post(ModLang.tr("CCEF, Central Criminal Elimination Force: we have landed. This sector is under local lockdown until the criminal is eliminated. Warping out will take longer."));
            lockPortals(ObjectRegistry.INSTANCE.game.currentLevel, true);
        }
        log("landed " + made + " (left " + toLand.size() + (titanToLand ? " + titan" : "") + ") scale " + sc);
    }

    /** CCEF name, speed and the repeat-hunt scaling on a built police hull. */
    private static void dress(Ennemis e, int cls, float sc) {
        e.maxLife *= sc;
        e.life = e.maxLife;
        e.bulletDamage *= sc;
        e.pouseeForce *= SPEED;
        e.maxTurnFactor *= TURN;
        ModV34.Sh s = ModV34.bigShield.get(e);
        if (s != null) { s.cap *= sc; s.cur = s.cap; s.rate *= sc; }
        if (e instanceof fr.testudo.spacecorsair.business.ennemis.FrelonShip) {
            fr.testudo.spacecorsair.business.player.Shield fs = ((fr.testudo.spacecorsair.business.ennemis.FrelonShip) e).shield;
            if (fs != null) { fs.capacity *= sc; fs.currentValue = fs.capacity; }
        }
        String c = ModPolice.className(cls);
        e.specificName = ModLang.spanish() ? c + " CCEF" : "CCEF " + c;
        e.specificNameDecalX = -1;
    }

    private static void win(PlayerShip ps) {
        log("squad destroyed");
        if (!achGiven) { achGiven = true; achieve(); }
        try {
            ModQol.addCredits(REWARD_CREDITS, ps);
            SharedPreferences p = ModQol.prefs();
            if (p != null) {
                SharedPreferences.Editor ed = p.edit().putInt("v35_core_neutral", ModV35.cores("neutral") + REWARD_NEUTRAL_CORES);
                for (ModCapitals.Faction f : ModCapitals.FACTIONS) ed.putInt("v35_core_" + f.key, ModV35.cores(f.key) + REWARD_FACTION_CORES);
                ed.putInt("ccef_clears", clears() + 1).commit();
            }
            ObjectRegistry.INSTANCE.game.playerCurrentShipInventory.addCreditInApp(REWARD_ALIEN);
            ModQol.post(ModLang.tr("Human Intergalactic Council: we did not know you were such a skilled hunter. Take this as the price of our mistake: 10,000,000 credits, 10 core parts, 2 cores of every faction and 20 alien credits. Know this: you will not escape next time."));
        } catch (Throwable t) {
            // part of the reward may be missing
        }
        end("squad destroyed", false);
    }

    private static void end(String why, boolean notice) {
        log("end: " + why);
        phase = NONE;
        toLand.clear();
        toLandLife.clear();
        titanToLand = false;
        try {   // survivors warp out (never left behind as plain police hulls)
            Level lvl = ObjectRegistry.INSTANCE.game.currentLevel;
            for (Ennemis e : squad) if (!e.removed) { e.removed = true; if (lvl != null) lvl.toDelete.add(e); }
        } catch (Throwable t) {
            // the sector change takes them
        }
        if (titan != null && !titan.removed) ModPoliceTitan.standDown();
        squad.clear();
        st.clear();
        titan = null;
        snapshot();
        landed = false;
        lockPortals(null, false);
        save();
        if (notice) {
            try { ModQol.post(ModLang.tr("The hunters have lost your trail.")); } catch (Throwable t) { /* text only */ }
        }
    }

    // ================================================================== effects
    /** Immune to crowd control and damage over time: every stock alteration is wiped each frame. */
    static void immune(Element e) {
        e.alterationSnareDuree = 0;
        e.alterationSnareValue = 1.0f;
        e.alterationAgilityDuree = 0;
        e.alterationAgilityValue = 1.0f;
        e.alterationPoisonDuree = 0;
        e.alterationReloadDuree = 0;
        e.alterationReloadValue = 1.0f;
    }

    /** ModLance and other mod DoTs: no burn on a CCEF hull. */
    public static boolean immuneTo(Element e) {
        return chase() && isCcef(e);
    }

    private static void boost(PlayerShip ps) {
        if (ps.alterationAgilityDuree <= 0 || ps.alterationAgilityValue == PLAYER_AGILITY) {
            ps.alterationAgilityValue = PLAYER_AGILITY;
            ps.alterationAgilityDuree = 250;
        }
    }

    /** ModLive.hit, after the police armour: +15% player damage during the chase, CCEF hulls take half. */
    public static float damageIn(Element target, float dmg, Projectile p) {
        try {
            if (!chase() || p == null || p.sender == null || target == null || dmg <= 0) return dmg;
            boolean byPlayer = p.sender.isPlayer || Mod.isDrone(p.sender);
            if (!byPlayer || target.isPlayer || Mod.isDrone(target)) return dmg;
            return playerHit(dmg, true, isCcef(target));
        } catch (Throwable t) {
            return dmg;
        }
    }

    /** ModPolice.factionGuns (Level.commitChanges): shots a CCEF ship fires from outside the player's screen are dropped. */
    static void dropHidden(List<?> toAdd) {
        if (!chase() || members.length == 0 || toAdd == null) return;
        try {
            for (int i = toAdd.size() - 1; i >= 0; i--) {
                Object o = toAdd.get(i);
                if (!(o instanceof Projectile)) continue;
                Element snd = ((Projectile) o).sender;
                if (snd != null && snd != titan && isCcef(snd) && ModView.outside(snd)) toAdd.remove(i);
            }
        } catch (Throwable t) {
            // shots kept this frame
        }
    }

    /** ModTitan doomsday %: CCEF hulls take half of the capped share. */
    public static float doomScale(Element e) {
        return chase() && isCcef(e) ? DMG_TAKEN : 1.0f;
    }

    /** ModShield.rate: the player's shield recharges at the stock rate during the chase. Negative = not in a chase. */
    public static float shieldRate(float f) {
        return chase() ? f * ModV34.levelShield() : -1f;
    }

    /** ModTestMode.jumpTime: hyperdrive charge under the lockdown. */
    public static int jumpTime(int ms) {
        return warpTime(ms, ON && lockdown());
    }

    private static void lockPortals(Level lvl, boolean on) {
        try {
            if (!on) {
                for (java.util.Map.Entry<Portal, Integer> en : portals.entrySet()) if (en.getKey() != null) en.getKey().jump_countdown_time = en.getValue();
                portals.clear();
                return;
            }
            if (lvl == null) return;
            List<Element> els = lvl.elements;
            for (int i = 0; i < els.size(); i++) {
                Element e = els.get(i);
                if (!(e instanceof Portal)) continue;
                Portal g = (Portal) e;
                if (portals.containsKey(g)) continue;
                portals.put(g, g.jump_countdown_time);
                g.jump_countdown_time = warpTime(g.jump_countdown_time, true);
            }
        } catch (Throwable t) {
            // stock gate timing
        }
    }

    /** No regular police during the hunt: sector patrols and stray police hulls leave. */
    private static void clearPolice() {
        try {
            Level lvl = ObjectRegistry.INSTANCE.game.currentLevel;
            List<Element> els = lvl.elements;
            for (int i = 0; i < els.size(); i++) {
                Element e = els.get(i);
                if (e == null || e.removed || isCcef(e) || !ModPolice.isPolice(e)) continue;
                e.removed = true;
                lvl.toDelete.add(e);
            }
        } catch (Throwable t) {
            // next second
        }
    }

    /** ModQol.civilAttacked: during the chase a civilian the player hit flees instead of joining the fight. */
    public static boolean calm(CivilShip c) {
        if (!chase() || c == null || isCcef(c) || ModPolice.isPolice(c) || ModCapitals.cap(c) != null) return false;   // faction flagships keep their own rules
        try {
            PlayerShip ps = ObjectRegistry.INSTANCE.playerShip;
            c.chasseTarget = null;
            c.curState = CivilState.ESCAPE;
            if (ps != null) {
                goal.setSameAs(c.position).subtract(ps.position);
                float d = Math.max(1f, goal.length());
                goal.set(c.position.x + goal.x / d * 8000f, c.position.y + goal.y / d * 8000f);
                c.setEscapePoint(goal);
            }
            c.onChaseStop();
        } catch (Throwable t) {
            // it may still fight
        }
        return true;
    }

    /** Mod.sideCheck: CCEF shots hit hostile NPC ships (stock: enemy shots never hit enemies). 0 = no opinion, 2 = hit. */
    public static int side(Element sender, Element target) {
        if (!chase() || sender == null || target == null || !(target instanceof Ennemis) || !isCcef(sender)) return 0;
        return isCcef(target) || Mod.isDrone(target) || ModAegisDrones.isDrone(target) ? 0 : 2;   // rail drones: the CCEF titan's own wing
    }

    // ================================================================== AI
    private static final ArrayList<Projectile> shots = new ArrayList<Projectile>();

    /** Player shots near the squad, refreshed every 100 ms for the evasion. */
    private static void scanShots(Level lvl, PlayerShip ps) {
        long now = System.currentTimeMillis();
        if (now - shotScan < 100) return;
        shotScan = now;
        shots.clear();
        if (!AI) return;
        List<Element> els = lvl.elements;
        for (int i = 0; i < els.size() && shots.size() < 48; i++) {
            Element e = els.get(i);
            if (!(e instanceof Projectile) || e.removed) continue;
            Projectile p = (Projectile) e;
            if (p.sender == null || !(p.sender.isPlayer || Mod.isDrone(p.sender))) continue;
            shots.add(p);
        }
    }

    /** Target upkeep (co-op priority, hidden prey rule). */
    private static void aim(Ennemis e, int index, PlayerShip ps, long j) {
        float[] s = st.get(e);
        if (s == null) return;
        Element prime = ps, other = guest();
        if (guestPrime && other != null) { Element t = prime; prime = other; other = t; }
        Element want = other != null && secondarySlot(index) ? other : prime;
        Element cur = e.attackTarget;
        boolean prey = cur != null && cur != ps && cur != other && cur instanceof Ennemis && !Mod.isDrone(cur) && !ModAegisDrones.isDrone(cur) && !cur.removed && cur.life > 0;
        s[2] -= j;
        if (s[2] <= 0) {
            s[2] = PREY_CHECK_MS;
            if (!prey && Math.random() < PREY_CHANCE) {
                Ennemis n = prey(want);
                if (n != null) { e.initAttackTarget(n); prey = true; log("prey " + n.specificName); }
            }
        }
        if (!prey && cur != want) {
            if (want == ps) e.initChasePlayer();
            else e.initAttackTarget(want);
        }
    }

    private static Element guest() {
        Ennemis g = ModLan.proxy;
        return g != null && !g.removed && g.life > 0 ? g : null;
    }

    /** A hostile NPC ship (not police, not CCEF, not a drone) near {@code t}. */
    private static Ennemis prey(Element t) {
        if (t == null) return null;
        try {
            List<Element> els = ObjectRegistry.INSTANCE.game.currentLevel.elements;
            Ennemis best = null;
            float bd = PREY_RANGE;
            for (int i = 0; i < els.size(); i++) {
                Element e = els.get(i);
                if (!(e instanceof Ennemis) || e.removed || e.life <= 0 || isCcef(e) || Mod.isDrone(e) || ModAegisDrones.isDrone(e) || ModPolice.isPolice(e)) continue;
                if (e instanceof fr.testudo.spacecorsair.business.ennemis.FixedTourelle) continue;
                float d = e.position.distance(t.position);
                if (d < bd) { bd = d; best = (Ennemis) e; }
            }
            return best;
        } catch (Throwable t2) {
            return null;
        }
    }

    /**
     * Smali-hooked path (ModV35.ai, end of Ennemis.doPhysic): CCEF steering. True = handled (the stock police / on-screen
     * layers are skipped). PR #6 range-band kiting tuned harder (band 55-80% of gun range, always on), sidesteps incoming
     * player shots, and once the player has destroyed 2 CCEF ships, hit and run from just outside the visible screen
     * (sniping from there when its guns reach).
     */
    public static boolean ai(Ennemis e, long j) {
        if (!ON || !AI || squad.isEmpty() || !st.containsKey(e)) return false;
        try {
            float[] s = st.get(e);
            Element tg = e.attackTarget;
            if (tg == null || tg.removed) return true;
            float near = e.distanceShoot * 0.55f, far = e.distanceShoot * 0.8f;
            boolean onPlayer = tg.isPlayer || tg == ModLan.proxy;
            if (onPlayer && evasive(kills)) {
                // owner 02:54-02:55: outside the player's DEFAULT view for its hull (class zoom bonus counted, extended zoom
                // setting and pinch not), within reason: a ship never hides farther than HIDE_MAX x its gun range (a titan's
                // wide view simply sees it), and it never fires while off screen (dropHidden), so nothing unseen hits the player
                float out = hideRadius(ModView.defaultRadius(), e.getPhysicDimension().x, e.distanceShoot);
                s[1] -= j;
                if (s[1] <= 0) { s[0] = s[0] == 0 ? 1 : 0; s[1] = s[0] == 1 ? 2500 : 3000 + (float) (Math.random() * 2000); }
                if (out > 0 && s[0] == 0) { near = out; far = out * 1.2f; }   // out of sight, then a fast run in to fire
            }
            ModTitanAI.rangePoint(goal, e.position, tg.position, near, far);
            // orbit: slide the band point sideways so it never sits still in the player's line of fire
            float ox = goal.x - tg.position.x, oy = goal.y - tg.position.y;
            float od = Math.max(1f, (float) Math.sqrt(ox * ox + oy * oy));
            goal.add(-oy / od * 260f * s[3], ox / od * 260f * s[3]);
            steer(e, goal, j, 6f * SPEED);   // PR #6 cap (600 u/s) x the CCEF speed
            dodge(e, s, j);
            return true;
        } catch (Throwable t) {
            return false;
        }
    }

    /** PR #6 ModTitanAI.steer with a higher speed cap (world velocity is per 10 ms). */
    static void steer(Ennemis e, Vector2 to, long ms, float cap) {
        float dx = to.x - e.position.x, dy = to.y - e.position.y;
        float d = Math.max(1f, (float) Math.sqrt(dx * dx + dy * dy));
        float k = Math.min(cap / d, 0.012f);
        float blend = Math.min(1f, Math.max(0L, ms) / 220f);
        e.speed.add((dx * k - e.speed.x) * blend, (dy * k - e.speed.y) * blend);
    }

    /** Sidestep a player shot that will pass within 1.5 hull radii in the next 0.8 s. */
    private static void dodge(Ennemis e, float[] s, long ms) {
        float r = e.getPhysicDimension().x * 0.75f + 60f;
        for (int i = 0; i < shots.size(); i++) {
            Projectile p = shots.get(i);
            if (p.removed) continue;
            float rx = e.position.x - p.position.x, ry = e.position.y - p.position.y;
            float vx = p.speed.x - e.speed.x, vy = p.speed.y - e.speed.y;   // per 10 ms
            float vv = vx * vx + vy * vy;
            if (vv < 0.01f) continue;
            float t = (rx * vx + ry * vy) / vv;   // in 10 ms steps
            if (t < 0 || t > 80) continue;
            float cx = rx - vx * t, cy = ry - vy * t;
            if (cx * cx + cy * cy > r * r * 2.25f) continue;
            float vl = (float) Math.sqrt(vv);
            float side = (cx * -vy + cy * vx) >= 0 ? 1 : -1;
            float push = Math.min(1f, ms / 120f) * 3.5f * SPEED;
            e.speed.add(-vy / vl * push * side, vx / vl * push * side);
            if (Math.random() < 0.02) s[3] = -s[3];
            return;
        }
    }

    // ================================================================== visuals
    /** ModPolice.build for a CCEF hull: GPT's ccef_<art> when it ships, else the police livery tinted gunmetal. */
    static Drawable livery(String art, float size, Drawable police) {
        try {
            fr.testudo.spacecorsair.display.Texture t = ModArt.lazyTex("ccef_" + art);
            if (t != null) return new ModArt.Art(new Vector2(size, size), t, false);
        } catch (Throwable x) {
            // tint below
        }
        return police == null ? null : new Tint(police);
    }

    private static final WeakHashMap<Drawable, Tint> tints = new WeakHashMap<Drawable, Tint>();

    /** ModCapitals.drawable: the CCEF titan in gunmetal. */
    static Drawable titanLivery(Element g, Drawable police) {
        if (police == null || g == null || g != titan) return police;
        Tint t = tints.get(police);
        if (t == null || t.myTexture != police.myTexture) { t = new Tint(police); tints.put(police, t); }
        return t;
    }

    static final class Tint extends Drawable {
        final Drawable base;

        Tint(Drawable base) {
            super(new Vector2(base.dimensions == null ? 100 : base.dimensions.x, base.dimensions == null ? 100 : base.dimensions.y), base.myTexture);
            this.base = base;
        }

        @Override
        public void draw(GL10 gl, Vector2 p, float spin, boolean cameraRelative, float a, float r, float g, float b, boolean zoomInsensitive, boolean background) {
            base.draw(gl, p, spin, cameraRelative, a, r * TINT_R, g * TINT_G, b * TINT_B, zoomInsensitive, background);
        }
    }

    private static final Vector2 lb = new Vector2();

    /** ModPolice.lights: a steady cyan double pulse instead of the red/blue bar. */
    static void lights(Element e, float sz) {
        long t = System.currentTimeMillis() % 1400;
        float on = (t % 700) < 140 ? 1f : 0.2f;
        float w = Math.max(40f, sz * 0.22f);
        ModFx.local(e.position, e.spin, -sz * 0.12f, -sz * 0.05f, lb);
        ModFx.spr("fx_core", lb.x, lb.y, w, w, 0, R, G, B, on, true);
        ModFx.local(e.position, e.spin, sz * 0.12f, -sz * 0.05f, lb);
        ModFx.spr("fx_core", lb.x, lb.y, w, w, 0, R, G, B, on, true);
        ModFx.spr("fx_glow", e.position.x, e.position.y, sz * 1.2f, sz * 1.2f, 0, R, G, B, 0.12f + 0.06f * on, true);
    }

    /** Hull size of a CCEF ship for its lights (0 = not one). */
    static float lightSize(Element e) {
        return isCcef(e) && e instanceof Ennemis ? e.getPhysicDimension().x / 0.7f : 0;
    }

    /** ModMap.radarPoint2: during the hunt only the CCEF signature shows (a cyan pulsing ring); everything else is hidden. */
    public static boolean radar(RenderQueue q, Vector2 p, boolean b, float a, float size, Element e) {
        if (!ON || !lockdown()) return false;
        try {
            if (isCcef(e)) {
                float k = 2.4f + 0.8f * (float) Math.sin(System.currentTimeMillis() / 140.0);
                q.addToPointWaitingQueue(p, b, R, G, B, 0.5f, size * k);
                q.addToPointWaitingQueue(p, b, 0.05f, 0.1f, 0.12f, 1f, size * 1.4f);
                q.addToPointWaitingQueue(p, b, R, G, B, 1f, size * 0.8f);
            }
        } catch (Throwable t) {
            // nothing drawn
        }
        return true;
    }

    private static final Vector2 txt = new Vector2();

    /** ModCaps.drawOver: the warp-in countdown under the player's ship (CCEF not named before it lands). */
    static void drawOver(PlayerShip ps, float sz) {
        if (phase != WARP || landed) return;
        try {
            long left = Math.max(0, (warpLeft + 999) / 1000);
            String t = ModLang.tr("HOSTILE WARP SIGNATURES: ") + left;
            float half = fr.testudo.spacecorsair.engine.GameRenderer.glTextLarge.getLength(t) / 2.0f;
            txt.setSameAs(ps.position).add(-half, sz * 0.6f + 40);
            float pu = 0.6f + 0.4f * (float) Math.sin(System.currentTimeMillis() / 120.0);
            ObjectRegistry.INSTANCE.renderQueue.addTextToTextWaitingQueue(txt, false, t, R, G, B, pu, fr.testudo.spacecorsair.textengine.TextSize.LARGE);
            float k = 1f - warpLeft / (float) WARP_IN_MS;
            ModFx.sprR("marker_hostile", at.x, at.y, 600 + 1600 * k, 600 + 1600 * k, System.currentTimeMillis() / 5.0f % 360, R, G, B, 0.35f + 0.5f * k, true);
            if (Math.random() < 0.08) ModFx.spr("fx_shock", at.x + ModFx.rnd(-500, 500), at.y + ModFx.rnd(-500, 500), 500, 500, 0, R, G, B, 0.6f, true);
        } catch (Throwable t) {
            // no countdown text this frame
        }
    }

    // ================================================================== achievement (hooks_ccef: Achievement.escapeCertainDeath)
    private static void achieve() {
        try {
            Achievement a = Achievement.valueOf(ACH);
            if (!a.done) a.setCompleted();
            log("achievement done=" + a.done);
        } catch (Throwable t) {
            log("achievement missing: " + t);
        }
    }

    /** hooks_ccef: start of Achievement.getLocalizedLabel / getLocalizedDesc. Null = stock text. */
    public static String achText(Achievement a, boolean desc) {
        try {
            if (a == null || !ACH.equals(a.name())) return null;
            return desc ? ModLang.tr("Survive a CCEF hunt for 120 seconds, or destroy the squad.") : ModLang.tr("Escape from Certain Death");
        } catch (Throwable t) {
            return null;
        }
    }

    // ================================================================== persistence and tests
    static int clears() {
        SharedPreferences p = ModQol.prefs();
        return p == null ? 0 : p.getInt("ccef_clears", 0);
    }

    /** A pending or running hunt survives an app restart (quitting is no way out). */
    private static void save() {
        try {
            SharedPreferences p = ModQol.prefs();
            if (p == null) return;
            if (phase == NONE) p.edit().remove("ccef_pending").apply();
            else p.edit().putString("ccef_pending", fi + "," + lv + "," + clock + "," + (achGiven ? 1 : 0) + "," + kills + "," + hops).apply();
        } catch (Throwable t) {
            // not kept
        }
    }

    private static boolean restored;

    private static void restore() {
        if (restored) return;
        restored = true;
        try {
            SharedPreferences p = ModQol.prefs();
            String v = p == null ? null : p.getString("ccef_pending", null);
            if (v == null) return;
            String[] a = v.split(",");
            fi = Integer.parseInt(a[0]);
            lv = Integer.parseInt(a[1]);
            clock = Long.parseLong(a[2]);
            achGiven = "1".equals(a[3]);
            kills = Integer.parseInt(a[4]);
            hops = a.length > 5 ? Integer.parseInt(a[5]) : 0;
            queueFresh();
            guestPrime = false;
            phase = PENDING;
            log("restored pending hunt");
        } catch (Throwable t) {
            phase = NONE;
        }
    }

    private static boolean testOn;
    private static long testAt;

    /** Emulator only: /data/local/tmp/corsair_ccef starts a hunt in the current sector (checked once a second). */
    private static void test(PlayerShip ps) {
        long now = System.currentTimeMillis();
        if (now - testAt < 1000) return;
        testAt = now;
        boolean f = ModDev.testFlag("corsair_ccef");
        if (f && !testOn && phase == NONE) {
            try {
                setOrigin(ObjectRegistry.INSTANCE.game.currentLevel.id);
                phase = PENDING;
                clock = 0;
                kills = 0;
            hops = 0;
                achGiven = false;
                log("test trigger");
            } catch (Throwable t) {
                // test only
            }
        }
        testOn = f;
        // corsair_ccef_god: player cannot die during the test run; corsair_ccef_kill: player destroys every landed CCEF ship
        try {
            if (ModDev.testFlag("corsair_ccef_god")) { ps.invincible = true; if (ps.life < 1) ps.life = 1; }
            if (landed && ModDev.testFlag("corsair_ccef_kill")) {
                Object[] m = members;
                for (int i = 0; i < m.length; i++) {
                    Element e = (Element) m[i];
                    if (e == null || e.removed || e.life <= 0) continue;
                    e.invincible = false;
                    e.applyDamage(e.life * 4 + 1000000f, ps, null);
                }
            }
        } catch (Throwable t) {
            // test only
        }
    }

    static void log(String m) {
        ModPolice.log("ccef " + m);
    }
}
