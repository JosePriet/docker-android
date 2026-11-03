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
    public static final long WAVE_MS = 35000;              // waves every 35 s while heat > 0 and police engaged or heat rose
    public static final int CAP = 8;                       // active police ships
    public static final float GATE_MIN = 2500f;            // a gate closer than this to the player: arrive from 4,500 off instead
    public static final long DECAY_MS = 20000;             // heat -1 per 20 s with no new offence
    public static final long RETURN_MS = 10L * 60 * 1000;  // leaving halves heat; returning within 10 min keeps it
    public static final int TITAN_MIN_LEVEL = 16;          // police titans only in sectors topping out at L16+
    /** Police bonus over the v34 enemy curve. */
    public static final float HULL_BONUS = 1.25f, DMG_BONUS = 1.25f, SPEED_BONUS = 1.15f, SHIELD_BONUS = 1.25f;
    public static final float STANDING_PER_KILL = -2f;
    /** Police-only weapons. */
    public static final float SNARE = 0.65f;               // destroyer snare: player max speed -35%
    public static final int SNARE_MS = 3000;
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

    /** Titan wave allowed: sector top level >= 16, heat >= 46, previous wave capital, no police titan up. */
    public static boolean titanAllowed(int sectorTop, int heat, int lastTop, boolean titanUp) {
        return sectorTop >= TITAN_MIN_LEVEL && heat >= UNLOCK[TITAN] && lastTop == CAPITAL && !titanUp;
    }

    /** Next wave's top class: what the heat unlocks, at most one class above the previous wave's top (-1 none). */
    public static int nextTop(int heat, int lastTop, int sectorTop, boolean titanUp) {
        int c = Math.min(unlockedClass(heat), lastTop + 1);
        if (c < 0) return NONE;
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
        return e instanceof PoliceShip && ModCapitals.cap(e) == null;
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
            if (!byPlayer || dmg <= 0) return dmg;
            if (isPolice(target)) policeHit();
            else if (target instanceof CivilShip && ModCapitals.cap(target) == null) civilHit(target, false);
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
                ModRep.change(ModCapitals.FACTIONS[factionIndex(here)].key, STANDING_PER_KILL, false);
                return;
            }
            if (e instanceof CivilShip && ModCapitals.cap(e) == null && !Mod.isDrone(e)) offence(HEAT_CIVIL_KILL, "civilian kill");
        } catch (Throwable t) {
            // no heat
        }
    }

    /** Agent C: the police titan died. Heat back to 0, police stand down; ModPoliceTitan applies its own standing / XP. */
    public static void onTitanKilled() {
        titan = null;
        heat = 0;
        lastTop = NONE;
        log("titan killed: heat reset");
        standDown(ObjectRegistry.INSTANCE.playerShip);
    }

    // ================================================================== police-only weapons
    private static void policeWeapon(PlayerShip ps, Element shooter, float dmg) {
        long[] st = police.get(shooter);
        int cls = (int) st[0];
        boolean snare, drain;
        if (cls == ModShips.DESTROYER) { snare = true; drain = false; }
        else if (cls == ModShips.CRUISER || cls == ModShips.BATTLECRUISER) { snare = false; drain = true; }
        else if (cls == BATTLESHIP || cls == CAPITAL) { snare = (st[2]++ & 1) == 0; drain = !snare; }
        else return;
        long now = System.currentTimeMillis();
        if (snare) {
            Long ready = snareReady.get(shooter);
            if (ready == null || now >= ready) {
                snareReady.put(shooter, now + SNARE_CD_MS);
                ps.alterationSnareValue = ps.alterationSnareDuree > 0 ? Math.min(ps.alterationSnareValue, SNARE) : SNARE;   // no stacking
                ps.alterationSnareDuree = Math.max(ps.alterationSnareDuree, SNARE_MS);
                Mod.floatText(ps, ModLang.tr("SNARED"), 0.4f, 0.7f, 1.0f);
            }
        }
        if (drain) {
            Shield s = ps.shield;
            if (s != null && s.currentValue > 0) s.currentValue = Math.max(0, s.currentValue - dmg * (DRAIN - 1.0f));
            regenStopUntil = now + DRAIN_STOP_MS;
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
            for (int i = active.size() - 1; i >= 0; i--) {
                Ennemis e = active.get(i);
                if (e.removed || e.life <= 0) { active.remove(i); continue; }
                long[] st = police.get(e);
                if (st != null) missiles(ps, e, st, j);
            }
            if (titan != null && (titan.removed || titan.life <= 0)) titan = null;
            if (sinceWave < Long.MAX_VALUE / 4) sinceWave += j;
            if (heat <= 0) return;
            quietMs += j;
            if (quietMs >= DECAY_MS) {
                quietMs -= DECAY_MS;
                heat--;
                log("decay heat=" + heat);
                if (heat <= 0) { standDown(ps); return; }
            }
            joinTimer -= j;
            if (joinTimer <= 0) { joinTimer = 2000; join(); }
            waveTimer -= j;
            if (waveTimer <= 0) {
                waveTimer = WAVE_MS;
                if (heatRose || !active.isEmpty() || (titan != null && !titan.removed)) wave(ps);
            }
        } catch (Throwable t) {
            // police skip this frame
        }
    }

    private static void enter(LevelId id) {
        if (here != null && heat > 0) left.put(here, new long[] {leaveHeat(heat), lastTop, ModSector.play()});
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
                if (!(e instanceof PoliceShip) || e.removed || police.containsKey(e) || !ModSector.sectorPolice(e)) continue;
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
        lastTop = top;
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
        boolean militia = "reaver".equals(f.key) || "kretari".equals(f.key);
        String word = militia ? ModLang.tr("Militia") : ModLang.tr("Police");
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
        e.specificName = name(fi, cls);
        e.specificNameDecalX = -1;
        if (e.lifeBar != null) e.lifeBar.setValue(100.0f);
        police.put(e, new long[] {cls, cls == FRIGATE ? MISSILE_MS / 2 : MISSILE_MS_BIG, 0});
        return e;
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
