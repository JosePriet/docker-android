package fr.testudo.spacecorsair.mod;

import android.content.SharedPreferences;
import fr.testudo.spacecorsair.business.Element;
import fr.testudo.spacecorsair.business.ennemis.Albatros;
import fr.testudo.spacecorsair.business.ennemis.Ennemis;
import fr.testudo.spacecorsair.business.ennemis.EnnemisCanon;
import fr.testudo.spacecorsair.business.ennemis.EnnemisSpec;
import fr.testudo.spacecorsair.business.ennemis.EnnemisSpecByLevel;
import fr.testudo.spacecorsair.business.ennemis.FrelonShip;
import fr.testudo.spacecorsair.business.player.PlayerShip;
import fr.testudo.spacecorsair.business.player.Shield;
import fr.testudo.spacecorsair.business.projectiles.Projectile;
import fr.testudo.spacecorsair.business.world.Portal;
import fr.testudo.spacecorsair.business.world.civil.CivilShip;
import fr.testudo.spacecorsair.business.world.civil.CivilState;
import fr.testudo.spacecorsair.business.world.civil.PoliceShip;
import fr.testudo.spacecorsair.display.Drawable;
import fr.testudo.spacecorsair.engine.ObjectRegistry;
import fr.testudo.spacecorsair.engine.Vector2;
import fr.testudo.spacecorsair.game.levels.Level;
import fr.testudo.spacecorsair.game.levels.LevelId;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.WeakHashMap;

/**
 * v42 police escalation (plan "Escalation"): offences raise the sector's heat; heat unlocks police classes; each wave may
 * bring only one class above the previous wave's top class; capital waves can be followed by the owner faction's police
 * titan (ModPoliceTitan). Heat decays when the player behaves, halves when the player leaves, and police stand down at 0.
 * Police ships are the sector owner's hulls (ModPoliceData) in police livery, at the sector's top level, with a bonus and
 * police-only weapons by class. Every entry point swallows its own errors.
 */
public class ModPolice {

    // ================================================================== numbers (v42 plan [D], owner "I don't mind how you do it")
    /** Heat per offence. */
    public static final int HEAT_CIVIL_HIT = 1, HEAT_CIVIL_KILL = 3, HEAT_POLICE_HIT = 1;
    public static final long CIVIL_HIT_MS = 5000;          // a civilian counts once per 5 s per ship
    public static final long POLICE_HIT_MS = 8000;         // damaging police: +1 per 8 s of continued aggression
    /** Heat for a police kill by class FRIGATE..TITAN (titan 0: the fight ends). */
    public static final int[] KILL_HEAT = {1, 2, 3, 4, 6, 8, 0};
    /** Heat that unlocks each class FRIGATE..TITAN. */
    public static final int[] UNLOCK = {1, 5, 10, 16, 24, 34, 46};
    // owner 2026-11-03 23:20: police kills do not touch standing; each kill cuts the countdown to the next wave (floor 8 s),
    // the wave interval scales with the wave's class, and police pay a flat bounty.
    public static final int CREDITS_PER_SHIP = 1000, CREDITS_PER_TITAN = 10000;
    /** Base seconds to the next wave by the last wave's class (frigate..capital) [D]. */
    public static final long[] WAVE_BASE_MS = {30000, 35000, 40000, 45000, 50000, 60000};
    public static final float KILL_CUT = 0.30f;          // each police kill takes 30% of that base off the countdown [D]
    public static final long WAVE_FLOOR_MS = 8000;       // owner: lowest time between waves
    /** Owner 23:10: the Spartan wave before the titan brings 2 Monoliths (battleship hulls), plus one Verdant escort. */
    static final int[] SPARTAN_CAPITAL_WAVE = {ModShips.BATTLESHIP, ModShips.BATTLESHIP, ModShips.BATTLECRUISER};
    static final long LIGHT_CYCLE_MS = 1200;   // police light bar: red double blink, then blue double blink
    public static final long WAVE_MS = 28000;              // v43a-4: 35 s -> 28 s; waves every 28 s while heat > 0 and police engaged or heat rose
    public static final int CAP = 8;                       // active police ships
    public static final float GATE_MIN = 2500f;            // a gate closer than this to the player: arrive from 4,500 off instead
    public static final long DECAY_MS = 20000;             // heat -1 per 20 s with no new offence
    public static final long RETURN_MS = 10L * 60 * 1000;  // leaving halves heat; returning within 10 min keeps it
    public static final int TITAN_MIN_LEVEL = 16;          // police titans only in sectors topping out at L16+
    /** Police bonus over the v34 enemy curve. */
    public static final float HULL_BONUS = 1.25f, DMG_BONUS = 1.25f, SPEED_BONUS = 1.15f, SHIELD_BONUS = 1.25f;
    /** Police-only weapons. */
    public static final float SNARE = 0.65f;               // destroyer snare: player max speed -35%
    public static final int SNARE_MS = 3000;
    public static final float PIN = 0.2f;                  // v44 battleship / capital pin: player max speed -80%
    public static final int PIN_MS = 2500;
    public static final long SNARE_CD_MS = 6000;           // per ship, no stacking
    public static final float DRAIN = 1.5f;                // cruiser / BC hits take 1.5x from the player's shield
    public static final long DRAIN_STOP_MS = 3000;         // and stop its regen 3 s
    public static final long MISSILE_MS = 5000;            // frigate fast missile every 5 s (battleship / capital: every 8 s)
    public static final long MISSILE_MS_BIG = 8000;
    public static final float MISSILE_RANGE = 2400f;
    public static final float MISSILE_DMG = 2.0f;          // x the ship's bullet damage
    public static final int STOCK_POLICE_CLASS = ModShips.CRUISER;   // stock PoliceShip ("Pursuit cruiser")

    static final int NONE = -1, FRIGATE = ModShips.FRIGATE, CAPITAL = ModShips.CAPITAL, TITAN = ModShips.TITAN, BATTLESHIP = ModShips.BATTLESHIP;

    // ================================================================== pure rules (work/dtest/V42.java)
    /** Highest class unlocked at this heat (FRIGATE..TITAN), -1 below the first threshold. */
    public static int unlockedClass(int heat) {
        int c = NONE;
        for (int i = 0; i < UNLOCK.length; i++) if (heat >= UNLOCK[i]) c = i;
        return c;
    }

    /** Titan wave allowed: sector top level >= 16, police engaged, previous wave capital, no police titan up. */
    public static boolean titanAllowed(int sectorTop, int heat, int lastTop, boolean titanUp) {
        return sectorTop >= TITAN_MIN_LEVEL && heat > 0 && lastTop == CAPITAL && !titanUp;
    }

    /**
     * Next wave's top class. v44 (owner 2026-11-04 13:36, "each wave is a +1 class increase"): once the police are engaged
     * (heat > 0) every wave climbs one class over the last, frigate first, up to capital, then the titan (sector top 16+).
     * Heat no longer gates the class (kills could never reach the old thresholds, so escalation stalled at cruiser/BC).
     */
    public static int nextTop(int heat, int lastTop, int sectorTop, boolean titanUp) {
        if (heat <= 0) return NONE;
        int c = Math.min(TITAN, Math.max(FRIGATE, lastTop + 1));
        if (c >= TITAN && !titanAllowed(sectorTop, heat, lastTop, titanUp)) c = CAPITAL;
        return c;
    }

    /** Wave classes, top class first: 2 of the top class + 1-2 escorts one class lower; capital = 1 capital + 2 battleships; titan alone. */
    public static int[] waveClasses(int top, int escorts) {
        if (top < 0) return new int[0];
        if (top >= TITAN) return new int[] {TITAN};
        if (top == CAPITAL) return new int[] {CAPITAL, BATTLESHIP, BATTLESHIP};
        if (top == FRIGATE) return new int[] {FRIGATE, FRIGATE};   // nothing lighter to escort them
        int n = Math.max(1, Math.min(2, escorts));
        int[] out = new int[2 + n];
        out[0] = out[1] = top;
        for (int i = 2; i < out.length; i++) out[i] = top - 1;
        return out;
    }

    /** Ships of a wave that fit under the active cap. */
    public static int room(int active, int want) {
        return Math.max(0, Math.min(want, CAP - active));
    }

    /** Police level = the sector's top level, never above it. */
    public static int level(int sectorTop) {
        return Math.max(1, sectorTop);
    }

    public static int killHeat(int cls) {
        return cls < 0 || cls >= KILL_HEAT.length ? 0 : KILL_HEAT[cls];
    }

    /** Heat after leaving the sector. */
    public static int leaveHeat(int heat) {
        return Math.max(0, heat) / 2;
    }

    /** The halved heat waits for the player this long after leaving. */
    public static boolean keptOnReturn(long leftAt, long now) {
        return now - leftAt <= RETURN_MS;
    }

    /** Heat after this much quiet time (-1 per 20 s). */
    public static int decayed(int heat, long quietMs) {
        return Math.max(0, heat - (int) (quietMs / DECAY_MS));
    }

    /** v34 enemy hull for a class and level, then the police bonus. */
    public static float hull(float baseHull, int cls, int lv) {
        return baseHull * ModV34.classFactor(cls) * ModV34.curve(lv) * HULL_BONUS;
    }

    /** No police here: tutorial, Genesis, the arena, FFA and multiplayer sectors (test mode keeps police). */
    public static boolean safe(LevelId id) {
        if (id == null || id.isMulti) return true;
        switch (id) {
            case TUTORIAL:
            case GENESIS:
            case GALACTIC_ARENA:
            case FFA_THE_PLAYER_PAY:
                return true;
            default:
                return false;
        }
    }

    /** Faction index for a sector's police: its owner, else the Frontier Authority. */
    static int factionIndex(LevelId id) {
        int f = ModMap.owner(id);
        if (f < 0) f = ModFaction.faction("warden");
        return Math.max(0, f);
    }

    // ================================================================== state
    private static int heat;
    private static int lastTop = NONE;
    private static boolean heatRose;
    private static long quietMs, sinceWave = Long.MAX_VALUE / 4, waveTimer, joinTimer, swTimer;
    private static LevelId here;
    private static Object lastLevel;
    private static Element titan;
    static boolean spawning;                    // our own setAtackPlayerMode calls must not count as offences
    private static long regenStopUntil;
    private static final HashMap<LevelId, long[]> left = new HashMap<LevelId, long[]>();   // {heat, lastTop, play ms}
    private static final ArrayList<Ennemis> active = new ArrayList<Ennemis>();
    private static final ArrayList<Ennemis> boosted = new ArrayList<Ennemis>();
    /** Police ships: {class, missile cooldown ms, volley count}; ours and the joined patrols. */
    private static final WeakHashMap<Element, long[]> police = new WeakHashMap<Element, long[]>();
    /** v43a-9: faction index (ModCapitals.FACTIONS) of each built police hull, for its faction guns. */
    private static final WeakHashMap<Element, Integer> factionOf = new WeakHashMap<Element, Integer>();
    private static final WeakHashMap<Element, Long> snareReady = new WeakHashMap<Element, Long>();
    private static final WeakHashMap<Element, Long> civilHit = new WeakHashMap<Element, Long>();
    private static long nextPoliceHit;

    /** Current heat in this sector (agent C's police titan reads it). */
    public static int heat() {
        return heat;
    }

    public static boolean isPolice(Element e) {
        if (e == null) return false;
        if (police.containsKey(e) || ModPoliceTitan.isPoliceTitan(e)) return true;
        return e instanceof PoliceShip && ModCapitals.cap(e) == null && !ModSector.factionShip(e);   // v42 fix: wings/pursuers are not police
    }

    /** Base countdown to the next wave after a wave of class top. */
    public static long waveBase(int top) {
        return WAVE_BASE_MS[Math.max(0, Math.min(WAVE_BASE_MS.length - 1, top))];
    }

    /** A police kill: the countdown drops by KILL_CUT of the base, never below the 8 s floor. */
    public static long cutCountdown(long timer, long base) {
        return Math.max(WAVE_FLOOR_MS, timer - (long) (KILL_CUT * base));
    }

    static int classOf(Element e) {
        long[] s = police.get(e);
        return s != null ? (int) s[0] : STOCK_POLICE_CLASS;
    }

    /** Shield drain: the player's shield does not recharge (ModShield.rate). */
    public static boolean regenStopped() {
        return System.currentTimeMillis() < regenStopUntil;
    }

    // ================================================================== offences
    private static void offence(int add, String why) {
        if (here == null || add <= 0) return;
        boolean first = heat <= 0 || (active.isEmpty() && sinceWave >= WAVE_MS);
        heat += add;
        heatRose = true;
        quietMs = 0;
        log("offence " + why + " +" + add + " heat=" + heat);
        if (first) waveTimer = 0;   // first wave on the first offence (next tick)
    }

    /** ModQol.civilAttacked (LevelAnimator.onCivilAttackedByPlayer): a civilian (or a police ship) turned on the player. */
    public static void civilAttacked(CivilShip c) {
        if (spawning || c == null) return;
        try {
            if (isPolice(c)) { policeHit(); return; }
            if (ModCapitals.cap(c) != null) return;
            civilHit(c, true);
        } catch (Throwable t) {
            // no police response
        }
    }

    private static void civilHit(Element c, boolean first) {
        long now = System.currentTimeMillis();
        Long at = civilHit.get(c);
        if (at == null && !first) return;          // stray shots before the civilian rebels do not count
        if (at != null && now - at < CIVIL_HIT_MS) return;
        civilHit.put(c, now);
        offence(HEAT_CIVIL_HIT, "civilian hit");
    }

    private static void policeHit() {
        long now = System.currentTimeMillis();
        if (now < nextPoliceHit) return;
        nextPoliceHit = now + POLICE_HIT_MS;
        offence(HEAT_POLICE_HIT, "police hit");
    }

    /** ModLive.hit (Element.applyProjectileHit): every projectile hit; returns the damage to apply. */
    public static float hit(Element target, float dmg, Projectile p) {
        try {
            if (p == null || p.sender == null || target == null) return dmg;
            PlayerShip ps = ObjectRegistry.INSTANCE.playerShip;
            if (target == ps || target.isPlayer) {
                if (police.containsKey(p.sender)) policeWeapon(ps, p.sender, dmg);
                return dmg;
            }
            boolean byPlayer = p.sender.isPlayer || p.sender == ps || Mod.isDrone(p.sender);
            if (!byPlayer) return dmg;
            if (isPolice(target)) policeHit();   // v42 fix: shield-absorbed hits on police count as aggression too
            else if (dmg > 0 && target instanceof CivilShip && ModCapitals.cap(target) == null) civilHit(target, false);
        } catch (Throwable t) {
            // stock hit
        }
        return dmg;
    }

    /** Smali hook (hooks42b) in Element.applyDamage: the player (or a drone) destroyed e. */
    public static void killedByPlayer(Element e) {
        try {
            if (e == null || here == null || e == titan || ModPoliceTitan.isPoliceTitan(e)) return;   // the titan: ModPoliceTitan
            if (isPolice(e)) {
                int cls = classOf(e);
                offence(killHeat(cls), "police kill class " + cls);
                long base = waveBase(lastTop);
                waveTimer = cutCountdown(waveTimer, base);
                log("police kill: countdown " + waveTimer + " ms");
                return;
            }
            if (e instanceof CivilShip && ModCapitals.cap(e) == null && !Mod.isDrone(e)) offence(HEAT_CIVIL_KILL, "civilian kill");
        } catch (Throwable t) {
            // no heat
        }
    }

    /** Agent C: the police titan died. Heat back to 0, police stand down; ModPoliceTitan applies its own standing / XP. */
    public static void onTitanKilled() {
        ModPoliceAura.remove(titan);   // v43
        ModQol.addCredits(CREDITS_PER_TITAN, titan);
        titan = null;
        heat = 0;
        lastTop = NONE;
        log("titan killed: heat reset");
        standDown(ObjectRegistry.INSTANCE.playerShip);
    }

    // ================================================================== v43a-9: faction guns
    /**
     * Smali hook (hooks47_policeguns) at the start of Level.commitChanges: a stock EnergyLaser fired by a built police
     * hull is swapped for an EnergyBullet of its faction's battery family (ModCapitals.GUNS[fi], alternating when the
     * faction has two), same damage, position, speed and spin; lifetime from the faction gun's range. Joined sector patrols (stock PoliceShip) keep
     * stock lasers. Police are exempt from fit bonuses/penalties (ModV34.damage, weapon fit thread).
     */
    private static int swapN;
    public static void factionGuns(List<?> toAdd) {
        if (factionOf.isEmpty() || toAdd == null) return;
        try {
            for (int i = 0; i < toAdd.size(); i++) {
                Object o = toAdd.get(i);
                if (!(o instanceof fr.testudo.spacecorsair.business.projectiles.EnergyLaser)) continue;
                fr.testudo.spacecorsair.business.projectiles.EnergyLaser l = (fr.testudo.spacecorsair.business.projectiles.EnergyLaser) o;
                Integer fi = l.sender == null ? null : factionOf.get(l.sender);
                if (fi == null) continue;
                ModCapitals.Gun[] gs = ModCapitals.GUNS[fi];
                ModCapitals.Gun gun = gs[(swapN++) % gs.length];
                fr.testudo.spacecorsair.business.projectiles.EnergyBullet b = fr.testudo.spacecorsair.business.factory.GamePools.newEnnergyBullet()
                    .init(l.damage, 6, l.sender, 1.0f, gun.r, gun.g, gun.b, ModWeapons.TAG[gun.fam]);
                b.position.setSameAs(l.position);
                b.speed.setSameAs(l.speed);
                b.spin = l.spin;
                float v = (float) Math.hypot(l.speed.x, l.speed.y);   // v43a-10 audit: the faction gun's range, not the laser's
                b.lifeTimeInMilli = v > 0.01f ? (long) (gun.range * 1.15f / (v * 0.1f)) : l.lifeTimeInMilli;
                ((List<Object>) toAdd).set(i, b);
            }
        } catch (Throwable t) {
            // stock lasers this frame
        }
    }

    // ================================================================== police-only weapons
    /** v44: ModAnchor, a police shot stopped by the Leviathan anchor wall: the police tech still reaches the player. */
    public static final boolean TECH_THROUGH_WALL = false;   // v43a-4 (open owner call, picked): the wall stops the tech too
    public static void wallHit(Element shooter, float dmg) {
        if (!TECH_THROUGH_WALL) return;
        try {
            PlayerShip ps = ObjectRegistry.INSTANCE.playerShip;
            if (ps != null && shooter != null && police.containsKey(shooter)) policeWeapon(ps, shooter, dmg);
        } catch (Throwable t) {
            // no police tech this shot
        }
    }

    private static long drainTextAt;

    private static void policeWeapon(PlayerShip ps, Element shooter, float dmg) {
        long[] st = police.get(shooter);
        int cls = (int) st[0];
        boolean snare, drain, pin = false;
        if (cls == ModShips.DESTROYER) { snare = true; drain = false; }
        else if (cls == ModShips.CRUISER || cls == ModShips.BATTLECRUISER) { snare = false; drain = true; }
        else if (cls == BATTLESHIP || cls == CAPITAL) { snare = pin = (st[2]++ & 1) == 0; drain = !snare; }   // v44: big hulls pin
        else return;
        long now = System.currentTimeMillis();
        if (snare) {
            Long ready = snareReady.get(shooter);
            if (ready == null || now >= ready) {
                float v = pin ? PIN : SNARE;
                snareReady.put(shooter, now + SNARE_CD_MS);
                ps.alterationSnareValue = ps.alterationSnareDuree > 0 ? Math.min(ps.alterationSnareValue, v) : v;   // no stacking
                ps.alterationSnareDuree = Math.max(ps.alterationSnareDuree, pin ? PIN_MS : SNARE_MS);
                Mod.floatText(ps, ModLang.tr(pin ? "PINNED" : "SNARED"), 0.4f, 0.7f, 1.0f);
            }
        }
        if (drain) {
            Shield s = ps.shield;
            if (s != null && s.currentValue > 0) s.currentValue = Math.max(0, s.currentValue - dmg * (DRAIN - 1.0f));
            regenStopUntil = now + DRAIN_STOP_MS;
            if (now - drainTextAt >= DRAIN_STOP_MS) {   // v44: the drain shows (once per 3 s)
                drainTextAt = now;
                Mod.floatText(ps, ModLang.tr("Shield drained!"), 0.3f, 0.85f, 1.0f);
            }
        }
    }

    private static void missiles(PlayerShip ps, Ennemis e, long[] st, long j) {
        int cls = (int) st[0];
        if (cls != FRIGATE && cls != BATTLESHIP && cls != CAPITAL) return;
        st[1] -= j;
        if (st[1] > 0) return;
        if (e.position.distance(ps.position) > MISSILE_RANGE) { st[1] = 500; return; }
        st[1] = cls == FRIGATE ? MISSILE_MS : MISSILE_MS_BIG;
        ModMissile.policeMissile(e, e.bulletDamage * MISSILE_DMG);
    }

    // ================================================================== per frame (ModCaps.tick)
    public static void tick(PlayerShip ps, long j) {
        try {
            Level lvl = ObjectRegistry.INSTANCE.game.currentLevel;
            if (lvl != lastLevel) {
                lastLevel = lvl;
                enter(lvl == null ? null : lvl.id);
            }
            swTimer -= j;
            if (swTimer <= 0) { swTimer = 1000; switches(ps); }
            if (here == null || ps == null || ps.removed || ps.isDocked || ObjectRegistry.INSTANCE.game.mapMode) return;
            boosts(ps);
            boolean activeAtStart = !active.isEmpty();
            for (int i = active.size() - 1; i >= 0; i--) {
                Ennemis e = active.get(i);
                if (e.removed || e.life <= 0) { active.remove(i); unvisual(e); continue; }   // v43: pooled hulls lose police visuals
                long[] st = police.get(e);
                if (st != null) missiles(ps, e, st, j);
            }
            if (titan != null && (titan.removed || titan.life <= 0)) { ModPoliceAura.remove(titan); titan = null; }
            if (sinceWave < Long.MAX_VALUE / 4) sinceWave += j;
            if (activeAtStart && active.isEmpty() && (titan == null || titan.removed) && heat > 0 && waveTimer > WAVE_FLOOR_MS) {
                waveTimer = WAVE_FLOOR_MS;   // v44: wave wiped out -> the next one in 8 s
                log("wave cleared: next in " + WAVE_FLOOR_MS + " ms");
            }
            if (heat <= 0) return;
            if (!active.isEmpty() || (titan != null && !titan.removed)) quietMs = 0;   // v44: no decay while police are on the field
            quietMs += j;
            if (quietMs >= DECAY_MS) {
                quietMs -= DECAY_MS;
                heat--;
                log("decay heat=" + heat);
                if (heat <= 0) { standDown(ps); return; }
            }
            joinTimer -= j;
            if (joinTimer <= 0) { joinTimer = 2000; if (!ModCalm.active()) join(); }   // v42 fix: no joining during a defend-zone mission
            waveTimer -= j;
            if (waveTimer <= 0) {
                waveTimer = waveBase(lastTop);
                wave(ps);   // v44: waves keep coming while heat > 0 (they stopped once heat stopped rising)
            }
        } catch (Throwable t) {
            // police skip this frame
        }
    }

    private static void enter(LevelId id) {
        if (here != null && heat > 0) left.put(here, new long[] {leaveHeat(heat), lastTop, ModSector.play()});
        visualsClear();        // v43
        police.clear();        // v42 fix: pooled PoliceShips reused elsewhere must not keep police weapons / timers
        snareReady.clear();
        civilHit.clear();
        active.clear();
        boosted.clear();
        titan = null;
        heat = 0;
        lastTop = NONE;
        heatRose = false;
        quietMs = 0;
        sinceWave = Long.MAX_VALUE / 4;
        waveTimer = WAVE_MS;
        here = safe(id) ? null : id;
        if (here == null) return;
        long[] rec = left.remove(here);
        if (rec != null && keptOnReturn(rec[2], ModSector.play())) {
            heat = (int) rec[0];
            lastTop = Math.min((int) rec[1], unlockedClass(heat));
        }
        String tv = sw("corsair_heat");
        if (tv != null) {
            try { heat = Integer.parseInt(tv.trim()); } catch (NumberFormatException e) { /* test only */ }
            if (heat > 0) waveTimer = 0;
        }
        if (heat > 0) log("enter " + here.name() + " heat=" + heat + " lastTop=" + lastTop);
    }

    /** Surviving police warp out; the patrols that joined leave too (ModSector refills calm ones). */
    private static void standDown(PlayerShip ps) {
        try {
            Level lvl = ObjectRegistry.INSTANCE.game.currentLevel;
            int n = 0;
            for (Element e : new ArrayList<Element>(police.keySet())) {
                if (e == null || e.removed) continue;
                e.removed = true;
                if (lvl != null) lvl.toDelete.add(e);
                n++;
            }
            visualsClear();   // v43
            police.clear();
            active.clear();
            ModPoliceTitan.standDown();
            titan = null;
            boosted.clear();
            lastTop = NONE;
            heatRose = false;
            log("stand down (" + n + " ships)");
            if (n > 0 && ps != null) {
                Mod.floatText(ps, ModLang.tr("POLICE STAND DOWN"), 0.4f, 0.75f, 1.0f);
                ModSound.play("warp_in", 0.5f, 1.2f, 1000);
            }
        } catch (Throwable t) {
            // leave them
        }
    }

    /** ModSector patrol police and faction wings join the police side while heat > 0. */
    private static void join() {
        try {
            List<Element> els = ObjectRegistry.INSTANCE.game.currentLevel.elements;
            for (int k = 0; k < els.size(); k++) {
                Element e = els.get(k);
                if (!(e instanceof PoliceShip) || e.removed || police.containsKey(e) || !ModSector.sectorPolice(e) || ModSector.factionShip(e)) continue;   // v42 fix: patrols only, never wings/pursuers
                PoliceShip p = (PoliceShip) e;
                police.put(p, new long[] {STOCK_POLICE_CLASS, MISSILE_MS, 0});
                if (p.curState == CivilState.ATTACK_TARGET) continue;
                spawning = true;
                try { p.setAtackPlayerMode(); } finally { spawning = false; }
            }
        } catch (Throwable t) {
            // they stay neutral
        }
    }

    // ================================================================== waves
    private static void wave(PlayerShip ps) {
        if (ModCalm.active()) return;   // v42: no police arrive during a defend-zone mission
        LevelId id = here;
        int top = nextTop(heat, lastTop, id.levelMax, ModPoliceTitan.active() || titan != null);
        if (top < 0) return;
        int fi = factionIndex(id);
        int lv = level(id.levelMax);
        Vector2 at = arrival(ps);
        heatRose = false;
        sinceWave = 0;
        if (top == TITAN) {
            Element t = ModPoliceTitan.spawn(ModCapitals.FACTIONS[fi].key, lv, at);
            if (t != null) {
                titan = t;
                lastTop = TITAN;
                log("wave titan " + ModCapitals.FACTIONS[fi].key + " L" + lv);
                return;
            }
            top = CAPITAL;
        }
        int[] cls = waveClasses(top, 1 + (int) (Math.random() * 2));
        if (top == CAPITAL && "spartan".equals(ModCapitals.FACTIONS[fi].key)) cls = SPARTAN_CAPITAL_WAVE;   // owner 23:10: 2 Monoliths before the titan
        int n = room(active.size(), cls.length);
        int made = 0;
        for (int k = 0; k < n; k++) {
            Ennemis e = build(fi, cls[k], lv);
            if (e == null) continue;
            e.position.setSameAs(at).add((float) (Math.random() * 500 - 250), (float) (Math.random() * 500 - 250));
            e.updateSapCoords();
            e.addToCurrentLevel();
            e.initChasePlayer();
            active.add(e);
            boosted.add(e);
            made++;
        }
        if (made > 0) lastTop = top;   // v42 fix: an empty wave (cap full / art loading) does not climb a class
        log("wave " + ModCapitals.FACTIONS[fi].key + " top=" + top + " L" + lv + " ships=" + made + "/" + cls.length + " active=" + active.size() + " heat=" + heat);
        if (made > 0) {
            Mod.floatText(ps, ModLang.tr("POLICE WAVE: ") + className(top), 0.35f, 0.6f, 1.0f);
            ModSound.play("warp_in", 0.7f, 1.0f, 1500);
        }
    }

    /** Nearest gate, unless it is right by the player: then 4,500 off on the gate's side (ModPlace). */
    private static Vector2 arrival(PlayerShip ps) {
        try {
            Portal g = ObjectRegistry.INSTANCE.game.currentLevel.findClosestPortal(ps.position);
            if (g != null && g.position.distance(ps.position) >= GATE_MIN) return new Vector2(g.position);
        } catch (Throwable t) {
            // ambush point below
        }
        return ModPlace.ambushPoint(ps.position);
    }

    /** x2 speed until within 2,000 of the player (the v37 reinforcement boost, ModPlace numbers). */
    private static void boosts(PlayerShip ps) {
        for (int k = boosted.size() - 1; k >= 0; k--) {
            Ennemis e = boosted.get(k);
            if (e.removed || e.life <= 0 || e.position.distance(ps.position) < ModPlace.BOOST_UNTIL) {
                if (e.alterationSnareValue == ModPlace.BOOST) { e.alterationSnareValue = 1.0f; e.alterationSnareDuree = 0; }
                boosted.remove(k);
                continue;
            }
            if (e.alterationSnareValue >= 1.0f) {
                e.alterationSnareValue = ModPlace.BOOST;
                e.alterationSnareDuree = 200;
            }
        }
    }

    static String className(int cls) {
        if (cls == CAPITAL) return ModLang.tr("Capital");
        if (cls == TITAN) return ModLang.tr("Titan");
        return ModShips.CLASS_NAMES[Math.max(0, Math.min(ModShips.CLASS_NAMES.length - 1, cls))];
    }

    /** "<Faction> Police <class>"; the Reavers and the Kre'tari fly militia. */
    static String name(int fi, int cls) {
        ModCapitals.Faction f = ModCapitals.FACTIONS[fi];
        // owner 23:10: aliens have no police; the Kre'tari send their High Council
        String word = "kretari".equals(f.key) ? ModLang.tr("High Council") : "reaver".equals(f.key) ? ModLang.tr("Militia") : ModLang.tr("Police");
        return ModLang.spanish() ? className(cls) + " " + word + " " + f.name : f.name + " " + word + " " + className(cls);
    }

    private static EnnemisSpec row(EnnemisSpec[] arr, int lvl) {
        return arr[Math.max(0, Math.min(arr.length - 1, lvl))];
    }

    private static int idx(EnnemisSpec[] arr, int lvl) {
        return Math.max(0, Math.min(arr.length - 1, lvl));
    }

    /** One police ship (null if its art is not loaded yet). */
    static Ennemis build(int fi, int cls, int lv) {
        ModPoliceData.Hull h = ModPoliceData.randomHull(fi, cls);
        if (h == null) return null;
        Drawable d = ModPoliceData.drawable(h);
        if (d == null) return null;
        ModArt.prefetch(d.myTexture);
        Vector2 phys = new Vector2(h.size * 0.7f, h.size * 0.7f);
        Ennemis e;
        EnnemisSpec[] t;
        ModV34.want(lv);
        switch (h.ai) {
            case ModFleet.BASIC: { t = EnnemisSpecByLevel.BasciEnnemisSpec; ModFleet.Fighter f = new ModFleet.Fighter(); f.d = d; f.phys = phys; f.initLevelConfig(row(t, lv), idx(t, lv)); e = f; break; }
            case ModFleet.DEFENSOR: { t = EnnemisSpecByLevel.defensorSpec; ModFleet.Gunship f = new ModFleet.Gunship(); f.d = d; f.phys = phys; f.initLevelConfig(row(t, lv), idx(t, lv)); e = f; break; }
            case ModFleet.FRELON: { t = EnnemisSpecByLevel.FrelonSpec; ModFleet.Raider f = new ModFleet.Raider(); f.d = d; f.phys = phys; f.initLevelConfig(row(t, lv), idx(t, lv)); e = f; break; }
            default: { t = EnnemisSpecByLevel.albatrosSpec; ModFleet.Cruiser f = new ModFleet.Cruiser(); f.d = d; f.phys = phys; f.initLevelConfig(row(t, lv), idx(t, lv)); e = f; break; }
        }
        float base = ModV34.baseHull(idx(t, lv));
        if (base > 0) e.maxLife = hull(base, cls, e.getLevel());
        else e.maxLife *= HULL_BONUS;
        e.life = e.maxLife;
        e.lifeInPourc = 100.0f;
        e.bulletDamage *= DMG_BONUS;
        e.pouseeForce *= SPEED_BONUS;
        e.xp = Math.round(e.xp * ModV34.classFactor(cls));
        if (e instanceof Albatros) {
            Albatros a = (Albatros) e;
            for (EnnemisCanon c : new EnnemisCanon[] {a.canonCenter, a.canonProue, a.canonPoupe}) {
                if (c != null) c.shootDamage = Math.round(c.shootDamage * DMG_BONUS);
            }
        }
        if (cls >= ModShips.BATTLECRUISER) {
            if (e instanceof FrelonShip) {
                Shield s = ((FrelonShip) e).shield;
                if (s != null) { s.capacity *= SHIELD_BONUS; s.currentValue = s.capacity; }
            } else {
                ModV34.Sh s = ModV34.bigShield.get(e);
                if (s != null) { s.cap *= SHIELD_BONUS; s.cur = s.cap; s.rate *= SHIELD_BONUS; }
            }
        }
        try { e.setElite(); } catch (Throwable th) { /* stock stats */ }   // owner 23:10: police / council ships are always elite
        e.specificName = name(fi, cls);
        e.specificNameDecalX = -1;
        if (e.lifeBar != null) e.lifeBar.setValue(100.0f);
        police.put(e, new long[] {cls, cls == FRIGATE ? MISSILE_MS / 2 : MISSILE_MS_BIG, 0});
        factionOf.put(e, fi);   // v43a-9
        if (!ModPoliceTitan.council(ModCapitals.FACTIONS[fi].key)) lightBar.put(e, (float) h.size);
        ModPoliceAura.put(e, h.art, fi, h.size);   // v43: animated faction aura
        if ("monolith".equals(h.art)) monoAura.put(e, (float) h.size);   // owner 23:13: keep the s5 effect, adapted   // High Council: no police lights
        return e;
    }

    /** v43: a dead / removed police hull (pooled, reused later) drops its lights and aura. */
    private static void unvisual(Element e) {
        factionOf.remove(e);   // v43a-9
        lightBar.remove(e);
        monoAura.remove(e);
        ModPoliceAura.remove(e);
    }

    private static void visualsClear() {
        lightBar.clear();
        monoAura.clear();
        ModPoliceAura.clearAll();
    }

    /** Police ship -> drawn size, for the flashing red/blue light bar (owner 23:10: lights that flash like police cars). */
    private static final WeakHashMap<Element, Float> lightBar = new WeakHashMap<Element, Float>();
    private static final Vector2 lb = new Vector2();
    private static final WeakHashMap<Element, Float> monoAura = new WeakHashMap<Element, Float>();

    /** Hook (ModLive.draw, before the hull): the police Monolith's s5 aura in police white/blue. */
    static void under(Element e) {
        ModPoliceAura.under(e);   // v43: animated faction auras (police ships and titans)
        Float sz = monoAura.get(e);
        if (sz != null && !e.removed) ModMonolith.policeAura(e, sz);
    }

    /** Hook (ModLive.draw, after the hull): the red/blue light bar of a police ship, flashing in a double-blink pattern. */
    static void lights(Element e) {
        Float sz = lightBar.get(e);
        if (sz == null || e.removed) return;
        long t = System.currentTimeMillis() % LIGHT_CYCLE_MS;
        boolean redHalf = t < LIGHT_CYCLE_MS / 2;
        boolean on = (t % (LIGHT_CYCLE_MS / 4)) < LIGHT_CYCLE_MS / 6;   // two blinks per colour
        float s = sz, w = Math.max(40f, s * 0.22f);
        ModFx.local(e.position, e.spin, -s * 0.12f, -s * 0.05f, lb);
        ModFx.spr("fx_core", lb.x, lb.y, w, w, 0, 1f, 0.1f, 0.08f, redHalf && on ? 1f : 0.12f, true);
        ModFx.local(e.position, e.spin, s * 0.12f, -s * 0.05f, lb);
        ModFx.spr("fx_core", lb.x, lb.y, w, w, 0, 0.12f, 0.35f, 1f, !redHalf && on ? 1f : 0.12f, true);
    }

    // ================================================================== test switches / log
    /** Emulator file (/data/local/tmp/<name>) or a ModQol pref of that name. */
    private static String sw(String name) {
        String v = ModDev.testValue(name);
        if (v != null) return v;
        try {
            SharedPreferences p = ModQol.prefs();
            Object o = p == null ? null : p.getAll().get(name);
            return o == null ? null : String.valueOf(o);
        } catch (Throwable t) {
            return null;
        }
    }

    private static boolean waveFlag;

    private static void switches(PlayerShip ps) {
        boolean f = ModDev.testFlag("corsair_policewave");
        boolean pref = false;
        try {
            SharedPreferences p = ModQol.prefs();
            if (p != null && p.contains("corsair_policewave")) { pref = true; p.edit().remove("corsair_policewave").apply(); }
        } catch (Throwable t) {
            pref = false;
        }
        if (((f && !waveFlag) || pref) && here != null && ps != null) {
            if (heat <= 0) heat = UNLOCK[0];
            log("forced wave");
            wave(ps);
            waveTimer = WAVE_MS;
        }
        waveFlag = f;
    }

    private static Boolean logOn;
    private static long logCheck;

    static void log(String msg) {
        try {
            long now = System.currentTimeMillis();
            if (logOn == null || now - logCheck > 5000) { logCheck = now; logOn = sw("corsair_policelog") != null || ModDev.testFlag("corsair_policelog"); }
            if (logOn) android.util.Log.i("CorsairMod", "police " + msg);
        } catch (Throwable t) {
            // test only
        }
    }
}
