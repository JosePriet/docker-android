package fr.testudo.spacecorsair.mod;

import android.content.SharedPreferences;
import fr.testudo.spacecorsair.business.Element;
import fr.testudo.spacecorsair.business.ennemis.Ennemis;
import fr.testudo.spacecorsair.business.player.PlayerShip;
import fr.testudo.spacecorsair.business.world.civil.CivilActivity;
import fr.testudo.spacecorsair.business.world.civil.CivilFactory;
import fr.testudo.spacecorsair.business.world.civil.CivilShip;
import fr.testudo.spacecorsair.engine.ObjectRegistry;
import fr.testudo.spacecorsair.engine.Vector2;
import fr.testudo.spacecorsair.game.levels.LevelId;
import java.util.ArrayList;

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
    private static CivilShip victim;
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
        nextAt = ModSector.play() + FIRST_MS;
    }

    /** Per frame from ModSector.tick, only while flying in an open sector. */
    static void tick(PlayerShip ps, LevelId here, long j) {
        if (ps == null || here == null || !enabled() || ModCalm.active() || ModPrologue.active) return;
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
        CivilShip c = CivilFactory.newTrasnporteur(lv, Math.max(lv, here.levelMax));
        if (c == null) return;
        Vector2 at = around(ps.position, DISTRESS_RANGE);
        c.position.setSameAs(at);
        c.specificName = fr.testudo.spacecorsair.business.world.UniverseName.getRandomTransporteurName();
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
        ModQol.post(ModLang.tr("Distress call: the freighter ") + c.specificName + ModLang.tr(" is under pirate attack, ") + bearing(ps, at) + ".");
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
            ModQol.post(ModLang.tr("The freighter was lost."));
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
            ModQol.post(ModLang.tr("Freighter saved. The crew sends their thanks."));
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
}
