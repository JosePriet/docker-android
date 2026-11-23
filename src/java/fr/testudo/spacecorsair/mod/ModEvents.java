package fr.testudo.spacecorsair.mod;

import android.content.SharedPreferences;
import fr.testudo.spacecorsair.business.Element;
import fr.testudo.spacecorsair.business.ennemis.Ennemis;
import fr.testudo.spacecorsair.business.mission.MissionObjectiveColor;
import fr.testudo.spacecorsair.business.player.PlayerShip;
import fr.testudo.spacecorsair.business.world.civil.CivilActivity;
import fr.testudo.spacecorsair.business.world.civil.CivilFactory;
import fr.testudo.spacecorsair.business.world.civil.CivilShip;
import fr.testudo.spacecorsair.engine.ObjectRegistry;
import fr.testudo.spacecorsair.engine.Vector2;
import fr.testudo.spacecorsair.game.levels.LevelId;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.Random;

/**
 * Dynamic sector events (owner OK 2026-11-18: random, not fixed; numbers as proposed).
 * One event at a time while flying in an open sector, first 90 s after entry, then every 4-6 min of play:
 *  - DISTRESS: a trader 3.2k away is under pirate attack. It loses hull every second until the player is within 1.5k;
 *    the raiders then turn on the player. Raiders dead + trader alive = credits + standing with the sector owner.
 *  - BOUNTY: a named elite raider ("Wanted") at sector max level +2 roams the sector's points of interest for 3 min.
 *    Kill it for a credit bounty; it warps out when time runs out.
 *  - SALVAGE RACE: rival scavengers arrive at the sector's wreck field; beat them there (within 0.8k first) and the
 *    field's next loot is doubled; if they get there first they strip it (field marked looted).
 * Always on in open sectors. Emulator switch /data/local/tmp/corsair_event=distress|bounty|salvage<N> forces one.
 * All numbers below are Claude's placeholders for the owner to set.
 */
public final class ModEvents {
    private ModEvents() {}

    static final long FIRST_MS = 90000, GAP_MIN_MS = 240000, GAP_MAX_MS = 360000;
    static final float DISTRESS_RANGE = 3200f, RESCUE_RANGE = 1500f, TRADER_DRAIN_PER_S = 0.025f;   // 40 s to die unattended
    static final int DISTRESS_PAY = 6000, BOUNTY_PAY = 12000;   // fed through ModQol.missionPay (level scaling)
    static final float DISTRESS_STANDING = 3f;
    static final long BOUNTY_MS = 180000, SALVAGE_MS = 120000, DISTRESS_MS = 240000;   // distress: hard stop after 4 min (merge check)
    static final float SALVAGE_REACH = 800f;
    static final float SCAV_SPEED = 0.6f;   // fraction of the player's distance the rivals cover per minute (placeholder)

    static final int NONE = 0, DISTRESS = 1, BOUNTY = 2, SALVAGE = 3;
    static int kind = NONE;
    private static long nextAt = -1, endsAt;
    private static long enteredAt;
    private static CivilShip victim;
    private static boolean policeVictim;   // lawless sectors: the distress victim is a police cruiser
    private static final ArrayList<Element> hostiles = new ArrayList<Element>();
    private static Ennemis wanted;
    private static Vector2 target, hold;
    private static boolean engaged;
    private static float rivalLeft;
    static boolean salvageDouble, fieldStripped;   // ModLoot.fromWreck: race won = 2 items per field hull, lost = none (this visit)

    static boolean enabled() {
        return true;
    }

    /** Sector change: any running event is dropped (its ships stay in the old sector's pool). */
    static void onLevel() {
        end(null);
        salvageDouble = false;
        ModChain.links = 0;
        fieldStripped = false;
        enteredAt = ModSector.play();
        nextAt = enteredAt + FIRST_MS;
    }

    /** Per frame from ModSector.tick, only while flying in an open sector. */
    static void tick(PlayerShip ps, LevelId here, long j) {
        if (ps == null || here == null || !enabled() || ModCalm.active() || ModPrologue.active || ModCcef.chase()) return;   // no sector events during a CCEF hunt
        long now = ModSector.play();
        if (nextAt < 0) nextAt = now + FIRST_MS;
        testForce(ps, here);
        try {
            switch (kind) {
                case NONE:
                    if (now >= nextAt) start(ps, here);
                    break;
                case DISTRESS: distress(ps, j); break;
                case BOUNTY: bounty(ps, now); break;
                case SALVAGE: salvage(ps, now, j); break;
                default: break;
            }
        } catch (Throwable t) {
            ModDev.ev("event", "error " + t);
            end("error");
        }
    }

    /** ModMap.radarPoint2: 1 = distress freighter (amber), 2 = bounty target (red), 0 = normal dot. */
    static int mark(Element e) {
        if (e == null || kind == NONE) return 0;
        if (e == victim) return 1;
        if (e == wanted) return 2;
        return 0;
    }

    // ------------------------------------------------------------------ emulator switch
    private static long testAt;
    private static String testLast;

    /** Emulator only: /data/local/tmp/corsair_event = distress|bounty|salvage[N] starts that event now (new value = new start). */
    private static void testForce(PlayerShip ps, LevelId here) {
        long t = System.currentTimeMillis();
        if (t - testAt < 2000 || !ModDev.testFlag("corsair_nodialog")) return;
        testAt = t;
        String v = ModDev.testValue("corsair_event");
        if (v == null || v.equals(testLast)) return;
        testLast = v;
        if (kind != NONE) end("test");
        Vector2 field = ModSector.poiAt(ModSector.WRECKS);
        if (v.startsWith("distress")) startDistress(ps, here);
        else if (v.startsWith("bounty")) startBounty(ps, here);
        else if (v.startsWith("salvage") && field != null) startSalvage(ps, field);
        ModDev.ev("event", "test start " + v + " kind=" + kind + " target=" + testTarget());
    }

    /** Emulator: where the running event happens (ModDev corsair_near=event). */
    static Vector2 testTarget() {
        if (kind == DISTRESS && victim != null) return victim.position;
        if (kind == BOUNTY && wanted != null) return wanted.position;
        return target;
    }

    // ------------------------------------------------------------------ start
    private static void start(PlayerShip ps, LevelId here) {
        nextAt = ModSector.play() + GAP_MIN_MS + (long) (Math.random() * (GAP_MAX_MS - GAP_MIN_MS));
        if (ENABLED) {
            int owner = ModMap.owner(here);
            if (owner >= 0) {
                long now = ModSector.play();
                int seconds = (int) Math.min(Integer.MAX_VALUE, Math.max(0L, now - enteredAt) / 1000);
                Trigger edge = ModChain.links >= 3 ? Trigger.KILLS : Trigger.TIME;
                if (onTrigger(now ^ here.name().hashCode(), ModCapitals.FACTIONS[owner].key, edge,
                    seconds, ModChain.links, -1)) return;
            }
        }
        double r = Math.random();
        Vector2 field = ModSector.poiAt(ModSector.WRECKS);
        if (r < 0.4) startDistress(ps, here);
        else if (r < 0.75 || field == null) startBounty(ps, here);
        else if (fieldStripped || salvageDouble) startBounty(ps, here);   // cross-check: one salvage race per visit
        else startSalvage(ps, field);
        ModDev.ev("event", "start kind=" + kind + " sector=" + here.name());
    }

    private static Vector2 around(Vector2 c, float d) {
        double a = Math.random() * Math.PI * 2;
        return new Vector2(c).add((float) Math.cos(a) * d, (float) Math.sin(a) * d);
    }

    private static String bearing(PlayerShip ps, Vector2 at) {
        float dx = at.x - ps.position.x, dy = at.y - ps.position.y;
        String[] dirs = {ModLang.tr("east"), ModLang.tr("north-east"), ModLang.tr("north"), ModLang.tr("north-west"),
            ModLang.tr("west"), ModLang.tr("south-west"), ModLang.tr("south"), ModLang.tr("south-east")};
        double a = Math.atan2(-dy, dx);   // screen y grows downwards
        int i = (int) Math.round(a / (Math.PI / 4)) & 7;
        return dirs[i] + ", " + String.format(java.util.Locale.US, "%.1f", ps.position.distance(at) / 1000f) + " km";
    }

    private static void startDistress(PlayerShip ps, LevelId here) {
        int lv = Math.max(1, here.levelMin);
        policeVictim = ModSector.lawless(here);   // owner 2026-11-18: in pirate havens the call comes from a police cruiser
        CivilShip c = policeVictim ? CivilFactory.newPolice(Math.max(lv, here.levelMax), Math.max(lv, here.levelMax))
            : CivilFactory.newTrasnporteur(lv, Math.max(lv, here.levelMax));
        if (c == null) return;
        Vector2 at = around(ps.position, DISTRESS_RANGE);
        c.position.setSameAs(at);
        if (!policeVictim) c.specificName = fr.testudo.spacecorsair.business.world.UniverseName.getRandomTransporteurName();
        c.setActivity(new CivilActivity[] {CivilActivity.newWaitUntilPlayerClose((int) RESCUE_RANGE)});
        hold = new Vector2(at);   // cross-check: it stays put (pinned in distress()) until saved, then leaves
        ObjectRegistry.INSTANCE.game.currentLevel.toAdd.add(c);
        victim = c;
        int plv = Math.max(1, Math.max(here.levelMin, Math.min(here.levelMax, ObjectRegistry.INSTANCE.game.playerInfo.level)));   // v57 P4: player level, kept inside the sector band
        int n = 2 + (Math.random() < 0.5 ? 1 : 0);
        for (int k = 0; k < n; k++) {
            Element e = ModSector.wingShip("reaver", plv, false);
            if (!(e instanceof Ennemis)) continue;
            e.position.setSameAs(at).add((float) (Math.random() * 700 - 350), (float) (Math.random() * 700 - 350));
            e.updateSapCoords();
            ((Ennemis) e).addToCurrentLevel();   // they hold near the trader until the player closes in
            hostiles.add(e);
        }
        if (hostiles.isEmpty()) {   // verifier 1: no raiders spawned = no event (never a free payout)
            c.removed = true;
            victim = null;
            return;
        }
        engaged = false;
        endsAt = ModSector.play() + DISTRESS_MS;
        kind = DISTRESS;
        if (policeVictim) ModQol.post(ModLang.tr("Distress call: a police cruiser is under pirate attack, ") + bearing(ps, at) + ".");
        else ModQol.post(ModLang.tr("Distress call: the freighter ") + c.specificName + ModLang.tr(" is under pirate attack, ") + bearing(ps, at) + ".");
        Mod.floatText(ps, ModLang.tr("DISTRESS CALL"), 1.0f, 0.75f, 0.2f);
        ModSound.play("warp_in", 0.5f, 1.0f, 1500);
    }

    private static void startBounty(PlayerShip ps, LevelId here) {
        int lv = Math.max(1, here.levelMax);   // v57 leveling P4 (owner OK 2026-11-18): inside the sector band (was top + 2)
        Element e = ModSector.wingShip("reaver", lv, true);
        if (!(e instanceof Ennemis)) return;
        Ennemis w = (Ennemis) e;
        ModV34.elite(w);
        Vector2 at = ModSector.poiAt((int) (Math.random() * 4));
        if (at == null || at.distance(ps.position) < 2500) at = around(ps.position, 4000);
        w.position.setSameAs(at);
        w.updateSapCoords();
        w.specificName = ModLang.tr("WANTED: ") + NAMES[(int) (Math.random() * NAMES.length)];
        w.setActivitySequence(new fr.testudo.spacecorsair.business.ennemis.EnnemisActivitySequence()   // merge check: it roams the spot
            .addActivity(new fr.testudo.spacecorsair.business.ennemis.EnnemisActivity().initGotoRandom(at.x, at.y, 1600))
            .addActivity(new fr.testudo.spacecorsair.business.ennemis.EnnemisActivity().initIdleDuring(3000)));
        w.addToCurrentLevel();
        wanted = w;
        target = at;
        endsAt = ModSector.play() + BOUNTY_MS;
        kind = BOUNTY;
        ModQol.post(ModLang.tr("Bounty posted: ") + w.specificName + ModLang.tr(" was seen ") + bearing(ps, at)
            + ModLang.tr(". Three minutes before it jumps out."));
        Mod.floatText(ps, ModLang.tr("BOUNTY TARGET IN SECTOR"), 1.0f, 0.3f, 0.3f);
    }

    static final String[] NAMES = {"Kessler Vane", "Mother Rust", "The Ninth Knife", "Ober Holt", "Saint Cinder", "Graves-7"};

    private static void startSalvage(PlayerShip ps, Vector2 field) {
        target = field;
        rivalLeft = Math.max(1500f, ps.position.distance(field) * 1.1f);   // rivals start a bit farther away than the player
        endsAt = ModSector.play() + SALVAGE_MS;
        kind = SALVAGE;
        ModQol.post(ModLang.tr("Scavengers are heading for the wreck field, ") + bearing(ps, field) + ModLang.tr(". Get there first."));
        Mod.floatText(ps, ModLang.tr("SALVAGE RACE"), 0.4f, 0.9f, 1.0f);
    }

    // ------------------------------------------------------------------ running
    private static boolean dead(Element e) {
        return e == null || e.removed || e.life <= 0;
    }

    private static void distress(PlayerShip ps, long j) {
        for (int i = hostiles.size() - 1; i >= 0; i--) if (dead(hostiles.get(i))) hostiles.remove(i);
        if (dead(victim) && (ps.removed || victim.life > 0)) {   // emulator P52E: player death / respawn or the freighter left = end quietly
            end("gone");
            return;
        }
        if (dead(victim)) {
            ModQol.post(ModLang.tr(policeVictim ? "The police cruiser was lost." : "The freighter was lost."));
            end("lost");
            return;
        }
        if (ModSector.play() >= endsAt) {   // merge check: never open-ended; the freighter slips away, raiders stay hostile
            victim.setActivity(new CivilActivity[] {CivilActivity.newMooveNextPortal(), CivilActivity.newDiseapear()});
            end("timeout");
            return;
        }
        if (hold != null) victim.position.setSameAs(hold);
        if (!engaged) {
            if (ps.position.distance(victim.position) < RESCUE_RANGE) {
                engaged = true;
                for (Element e : hostiles) if (e instanceof Ennemis) ((Ennemis) e).initChasePlayer();
            } else if (!hostiles.isEmpty()) {
                victim.life -= victim.maxLife * TRADER_DRAIN_PER_S * j / 1000f;   // the raiders' fire, simulated off-screen
                if (victim.life <= 0) { victim.life = 0; victim.removed = true; }
                return;
            }
        }
        if (hostiles.isEmpty() && !engaged) {   // cross-check: raiders gone without a fight (despawn) = no payout
            ModQol.post(ModLang.tr("The raiders broke off."));
            victim.setActivity(new CivilActivity[] {CivilActivity.newMooveNextPortal(), CivilActivity.newDiseapear()});
            end("brokeoff");
            return;
        }
        if (hostiles.isEmpty()) {
            victim.setActivity(new CivilActivity[] {CivilActivity.newMooveNextPortal(), CivilActivity.newDiseapear()});
            int pay = ModQol.missionPay(DISTRESS_PAY);
            ModQol.addCredits(pay, victim);
            int owner = ModSector.baseFaction(ObjectRegistry.INSTANCE.game.currentLevel.id);
            if (owner >= 0) ModRep.change(ModCapitals.FACTIONS[owner].key, DISTRESS_STANDING, false);
            ModQol.post(ModLang.tr(policeVictim ? "Police cruiser saved. The crew sends their thanks." : "Freighter saved. The crew sends their thanks."));
            end("saved pay=" + pay);
        }
    }

    private static void bounty(PlayerShip ps, long now) {
        if (dead(wanted)) {
            if (wanted != null && wanted.life <= 0) {
                int pay = ModQol.missionPay(BOUNTY_PAY);
                ModQol.addCredits(pay, wanted);
                ModQol.post(ModLang.tr("Bounty collected."));
            }
            end("bountydead");
            return;
        }
        if (now >= endsAt + 60000 || (now >= endsAt && wanted.position.distance(ps.position) > 2000)) {   // verifier 2: hard stop 1 min after time-up
            ModQol.post(wanted.specificName + ModLang.tr(" jumped out of the sector."));
            wanted.removed = true;
            end("jumped");
        }
    }

    private static void salvage(PlayerShip ps, long now, long j) {
        rivalLeft -= rivalLeft * SCAV_SPEED * j / 60000f + 4f * j / 1000f;   // they close in, never stall
        if (ps.position.distance(target) < SALVAGE_REACH) {
            salvageDouble = true;
            ModQol.post(ModLang.tr("You reached the wreck field first. Its salvage is yours, twice over."));
            end("salvagewon");
        } else if (rivalLeft <= SALVAGE_REACH || now >= endsAt) {
            ModSector.stripField();
            fieldStripped = true;
            ModQol.post(ModLang.tr("The scavengers stripped the wreck field."));
            end("salvagelost");
        }
    }

    private static void end(String why) {
        if (kind != NONE) ModDev.ev("event", "end kind=" + kind + " why=" + why);
        if (kind != NONE) nextAt = ModSector.play() + GAP_MIN_MS + (long) (Math.random() * (GAP_MAX_MS - GAP_MIN_MS));   // gap runs from the end
        kind = NONE;
        victim = null;
        hold = null;
        wanted = null;
        target = null;
        engaged = false;
        hostiles.clear();
    }
    // ------------------------------------------------------------------ batch-2 seeded prototype
    public static boolean ENABLED = false;

    public enum Trigger { ENTRY, TIME, STANDING, KILLS, POLICE }
    enum Actor { HAULER, STATION, RAIDER, WRECK, POLICE, WING }
    enum Action { ESCORT, HOLD, CLEAR, SALVAGE, EVADE, EXTRACT, PASS, MEET, CHALLENGE }
    enum Twist {
        QUIET(""),
        BETRAYAL("Our guide just turned its guns on us."), // B2_04_EN twist.betrayal
        REINFORCEMENTS("A second flight is inbound."), // B2_04_EN twist.reinforcements
        RIVAL("Another corsair wants the prize. Beat them there."); // B2_04_EN twist.rival
        final String line;
        Twist(String line) { this.line = line; }
    }

    enum Objective {
        ESCORT(Actor.HAULER, Action.ESCORT, "Stay with the hauler until it reaches the dock.", Trigger.ENTRY, Trigger.STANDING), // B2_04_EN objective.escort
        DEFEND(Actor.STATION, Action.HOLD, "Keep the outpost intact until its guns come back.", Trigger.TIME, Trigger.STANDING), // B2_04_EN objective.defend
        AMBUSH(Actor.RAIDER, Action.CLEAR, "Raiders off your bow. Break the ambush.", Trigger.ENTRY, Trigger.KILLS), // B2_04_EN objective.ambush
        SALVAGE(Actor.WRECK, Action.SALVAGE, "Cut the marked wrecks open. See what survived.", Trigger.ENTRY, Trigger.TIME), // B2_04_EN objective.salvage
        BOUNTY(Actor.RAIDER, Action.CLEAR, "Take down the marked cutter. The bounty is yours.", Trigger.KILLS, Trigger.STANDING), // B2_04_EN objective.bounty
        BLOCKADE(Actor.POLICE, Action.EVADE, "Slip past the patrol and reach the far beacon.", Trigger.POLICE), // B2_04_EN objective.blockade
        FACTION_WAR(Actor.WING, Action.CLEAR, "Break the enemy wing before it reaches our outpost.", Trigger.KILLS, Trigger.STANDING), // B2_04_EN objective.faction_war
        RESCUE(Actor.WRECK, Action.EXTRACT, "Close on the wrecks. Bring their crews home.", Trigger.ENTRY, Trigger.TIME, Trigger.POLICE), // B2_04_EN objective.rescue
        RACE(Actor.STATION, Action.PASS, "Cross the station beacons in order before the window closes.", Trigger.TIME, Trigger.ENTRY); // B2_04_EN objective.race

        final Actor actor;
        final Action action;
        final String brief;
        final List<Trigger> triggers;

        Objective(Actor actor, Action action, String brief, Trigger... triggers) {
            this.actor = actor;
            this.action = action;
            this.brief = brief;
            this.triggers = Arrays.asList(triggers);
        }

        boolean offered(Context c) {
            if (!triggers.contains(c.trigger)) return false;
            if (this == FACTION_WAR) return c.level >= 22 && c.standing >= 20
                && ModRep.REL[ModRep.index(c.faction)][ModRep.index(c.owner)] < 0;
            if (this == ESCORT || this == DEFEND) return c.standing > -10;
            return true;
        }
    }

    static final class Context {
        final int level, standing, heat, policeTier, seconds, kills;
        final String faction, owner;
        final Trigger trigger;

        Context(int level, String faction, String owner, int standing, int heat, int policeTier,
                int seconds, int kills, Trigger trigger) {
            if (level < 0 || level > ModV34.CAP || ModRep.index(faction) < 0 || ModRep.index(owner) < 0
                || standing < -100 || standing > 100 || heat < 0 || policeTier < -1 || policeTier > 6
                || seconds < 0 || kills < 0 || trigger == null) throw new IllegalArgumentException("sector context");
            this.level = level;
            this.faction = faction;
            this.owner = owner;
            this.standing = standing;
            this.heat = heat;
            this.policeTier = policeTier;
            this.seconds = seconds;
            this.kills = kills;
            this.trigger = trigger;
        }

        boolean ready() {
            switch (trigger) {
                case TIME: return seconds >= 60;
                case STANDING: return standing >= 20;
                case KILLS: return kills >= 3;
                case POLICE: return heat > 0 && policeTier >= 0;
                default: return true;
            }
        }
    }

    /** Ordered stops measured along a local route from the pilot. Count is the manifest at that stop. */
    static final class Stop {
        final Action action;
        final Actor actor;
        final String art;
        final int distance, count, required, holdSeconds;

        Stop(Action action, Actor actor, String art, int distance, int count, int required, int holdSeconds) {
            this.action = action;
            this.actor = actor;
            this.art = art;
            this.distance = distance;
            this.count = count;
            this.required = required;
            this.holdSeconds = holdSeconds;
        }
    }

    static final class Event {
        final long seed;
        final Context context;
        final Objective objective;
        final Twist twist;
        final List<Stop> stops = new ArrayList<Stop>();
        final int encounterLevel;
        int deadline, credits, parts, standing;
        String item = "", lootTier = "";

        Event(long seed, Context context, Objective objective, Twist twist) {
            this.seed = seed;
            this.context = context;
            this.objective = objective;
            this.twist = twist;
            encounterLevel = context.level;
        }
    }

    // SplitMix64 finalizer: adjacent CLI seeds should not share java.util.Random's first small-bound choice.
    private static long mix(long seed) {
        long z = seed + 0x9e3779b97f4a7c15L;
        z = (z ^ (z >>> 30)) * 0xbf58476d1ce4e5b9L;
        z = (z ^ (z >>> 27)) * 0x94d049bb133111ebL;
        return z ^ (z >>> 31);
    }

    static Event generate(long seed, Context c) {
        if (!c.ready()) return null;
        Random random = new Random(mix(seed));
        List<Objective> candidates = new ArrayList<Objective>();
        for (Objective o : Objective.values()) if (o.offered(c)) candidates.add(o);
        Objective o = candidates.get(random.nextInt(candidates.size()));
        Twist twist = Twist.QUIET;
        if (o != Objective.BOUNTY && o != Objective.AMBUSH && o != Objective.SALVAGE && c.level >= 3) {
            twist = Twist.values()[random.nextInt(Twist.values().length)];
        }
        Event e = new Event(seed, c, o, twist);
        int distance = 800 + 30 * c.level + random.nextInt(401);
        int units = 1 + c.level / 15;
        String art = art(o.actor, c, random);
        if (twist == Twist.BETRAYAL || twist == Twist.RIVAL) {
            Action intro = twist == Twist.BETRAYAL ? Action.MEET : Action.CHALLENGE;
            e.stops.add(new Stop(intro, Actor.RAIDER, "rv_raider", distance / 2, 1, 1, 0));
        }
        if (o == Objective.ESCORT || o == Objective.DEFEND) {
            e.stops.add(new Stop(Action.MEET, o.actor, art, distance, 1, 1, 0));
            e.stops.add(new Stop(Action.CLEAR, Actor.RAIDER, art(Actor.RAIDER, c, random), distance, units, units, 0));
        }
        int count = (o == Objective.RACE || o == Objective.BOUNTY || o == Objective.ESCORT || o == Objective.DEFEND) ? 1 : units;
        int hold = o == Objective.DEFEND ? 10 + c.level : 0;
        if (o == Objective.BLOCKADE) count = 1 + c.policeTier / 2;
        int legs = o == Objective.RACE ? 3 : 1;
        for (int leg = 1; leg <= legs; leg++) {
            e.stops.add(new Stop(o.action, o.actor, art, distance * leg, count, count, hold));
        }
        int end = distance * legs;
        if (twist == Twist.BETRAYAL || twist == Twist.REINFORCEMENTS) {
            int extra = twist == Twist.BETRAYAL ? 1 : units + 1;
            String hull = twist == Twist.BETRAYAL ? "rv_raider" : art(Actor.RAIDER, c, random);
            end += 300;
            e.stops.add(new Stop(Action.CLEAR, Actor.RAIDER, hull, end, extra, extra, 0));
        }
        if (o == Objective.ESCORT || o == Objective.RESCUE || o == Objective.BLOCKADE) {
            end = e.stops.get(e.stops.size() - 1).distance + distance;
            e.stops.add(new Stop(Action.PASS, Actor.STATION, "poi_outpost_1", end, 1, 1, 0));
        }
        if (o == Objective.RACE || o == Objective.FACTION_WAR || twist == Twist.RIVAL) {
            // The rival reaches the last stop at the deadline. Allow travel, contact time and a turn at each stop.
            e.deadline = 25 + end / 40;
            for (Stop s : e.stops) e.deadline += 12 * s.count + s.holdSeconds;
        }
        int bounty = (int) ModV34.bounty(c.level);
        e.credits = 2 * bounty + random.nextInt(bounty + 1);
        e.standing = c.standing >= 100 ? 0 : 1;
        if (o == Objective.SALVAGE || o == Objective.RESCUE) {
            if (c.level >= 10 && random.nextBoolean()) {
                e.item = "diamond";
                e.lootTier = "RARE";
                e.credits -= 1500;
            } else {
                e.item = "malachite";
                e.lootTier = "FINE";
                e.credits -= 200;
            }
        } else if (c.level >= 6 && random.nextInt(4) == 0) {
            e.parts = 1;
            e.credits -= bounty;
        }
        return e;
    }

    private static String art(Actor actor, Context c, Random random) {
        switch (actor) {
            case HAULER: return "tortoise";
            case STATION: return "poi_outpost_1";
            case POLICE: return "orig_police";
            case WRECK: return random.nextBoolean() ? "tortoise" : "hornet";
            case WING:
                if ("reaver".equals(c.owner)) return "rv_raider";
                return "kretari".equals(c.owner) ? "kt_scout" : "orig_police";
            default: return c.level >= 3 && random.nextBoolean() ? "rv_gunship" : "rv_raider";
        }
    }

    /** Called once per qualifying edge. Tier is the observed wave class, independent of accumulated heat. */
    public static boolean onTrigger(long seed, String faction, Trigger trigger, int seconds, int kills, int policeTier) {
        if (!ENABLED) return false;
        PlayerShip pilot = ObjectRegistry.INSTANCE.playerShip;
        if (pilot == null || ModPlace.level() == null || ModRep.index(faction) < 0) return false;
        int owner = ModMap.owner(ModPlace.level().id);
        if (owner < 0) return false;
        Context context = new Context(ModV34.playerLevel(), faction, ModCapitals.FACTIONS[owner].key,
            (int) ModRep.standing(faction), ModPolice.heat(), policeTier, seconds, kills, trigger);
        Event e = generate(seed, context);
        if (!spawn(e, pilot)) return false;
        ModComms.show(faction, e.objective.brief, 9000);
        return true;
    }

    /** Spawn phase only. false means disabled, unsupported, unavailable art, or an ineligible flight. */
    static boolean spawn(Event e, PlayerShip pilot) {
        if (!ENABLED || e == null || pilot == null || pilot.removed || pilot.isDocked) return false;
        if (e.objective != Objective.BOUNTY && e.objective != Objective.AMBUSH && e.objective != Objective.SALVAGE) return false;
        if (kind != NONE || ModPrologue.active || ModLan.connected || ObjectRegistry.INSTANCE.game.mapMode || ObjectRegistry.INSTANCE.currentMission != null
            || ModSector.excluded(ObjectRegistry.INSTANCE.game.currentLevel.id)) return false;
        Stop s = e.stops.get(0);
        Random random = new Random(e.seed);
        Vector2 at = ModPlace.farPoint(pilot.position, s.distance, s.distance + 200);
        if (!ModArt.hasArt(s.art)) return false;
        if (e.objective == Objective.SALVAGE) {
            for (int i = 0; i < s.count; i++) {
                ModWreck[] pieces = ModSector.still(s.art, ModSector.artSize(s.art), at.x, at.y + i * 500,
                    random.nextFloat() * 360, 0.5f, false, random);
                for (ModWreck w : pieces) {
                    w.isMissionObjective = true;
                    w.missionObjectiveColor = MissionObjectiveColor.ORANGE;
                    w.group[0] = false; // one existing salvage roll shared by both pieces
                    w.srcLevel = e.encounterLevel;
                    w.srcClass = 2;
                }
            }
            return true;
        }
        for (ModFleet.Type type : ModFleet.TYPES) {
            if (!s.art.equals(type.art)) continue;
            List<Ennemis> flight = new ArrayList<Ennemis>();
            for (int i = 0; i < s.count; i++) {
                Ennemis enemy = ModFleet.build(type, e.encounterLevel);
                if (enemy == null) return false;
                flight.add(enemy);
            }
            for (int i = 0; i < flight.size(); i++) {
                Ennemis enemy = flight.get(i);
                enemy.position.set(at.x, at.y + i * 220);
                enemy.updateSapCoords();
                if (e.objective == Objective.AMBUSH) enemy.initAttackTarget(pilot);
                enemy.isMissionObjective = true;
                enemy.missionObjectiveColor = MissionObjectiveColor.RED;
                enemy.addToCurrentLevel();
            }
            return true;
        }
        return false;
    }
}
