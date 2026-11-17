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
 * PROTOTYPE (proposal branch, not approved): dynamic sector events.
 * One event at a time while flying in an open sector, first 90 s after entry, then every 4-6 min of play:
 *  - DISTRESS: a trader 3.2k away is under pirate attack. It loses hull every second until the player is within 1.5k;
 *    the raiders then turn on the player. Raiders dead + trader alive = credits + standing with the sector owner.
 *  - BOUNTY: a named elite raider ("Wanted") at sector max level +2 roams the sector's points of interest for 3 min.
 *    Kill it for a credit bounty; it warps out when time runs out.
 *  - SALVAGE RACE: rival scavengers arrive at the sector's wreck field; beat them there (within 0.8k first) and the
 *    field's next loot is doubled; if they get there first they strip it (field marked looted).
 * On while DEFAULT_ON (true only on this proposal branch, for the owner's look), the pref "proto_events" is true, or the
 * emulator switch /data/local/tmp/corsair_events exists.
 * All numbers below are Claude's placeholders for the owner to set.
 */
public final class ModEvents {
    private ModEvents() {}

    static final long FIRST_MS = 90000, GAP_MIN_MS = 240000, GAP_MAX_MS = 360000;
    static final float DISTRESS_RANGE = 3200f, RESCUE_RANGE = 1500f, TRADER_DRAIN_PER_S = 0.025f;   // 40 s to die unattended
    static final int DISTRESS_PAY = 6000, BOUNTY_PAY = 12000;   // fed through ModQol.missionPay (level scaling)
    static final float DISTRESS_STANDING = 3f;
    static final long BOUNTY_MS = 180000, SALVAGE_MS = 120000;
    static final float SALVAGE_REACH = 800f;
    static final float SCAV_SPEED = 0.6f;   // fraction of the player's distance the rivals cover per minute (placeholder)

    static final int NONE = 0, DISTRESS = 1, BOUNTY = 2, SALVAGE = 3;
    static int kind = NONE;
    private static long nextAt = -1, endsAt;
    private static CivilShip victim;
    private static final ArrayList<Element> hostiles = new ArrayList<Element>();
    private static Ennemis wanted;
    private static Vector2 target;
    private static boolean engaged;
    private static float rivalLeft;
    static boolean salvageDouble, fieldStripped;   // ModLoot.fromWreck: race won = 2 items per field hull, lost = none (this visit)

    static final boolean DEFAULT_ON = true;   // PROPOSAL BRANCH ONLY: set false before any merge
    private static long flagAt = -1;
    private static boolean flag;

    static boolean enabled() {
        if (DEFAULT_ON) return true;
        long t = System.currentTimeMillis();
        if (flagAt < 0 || t - flagAt > 5000) { flagAt = t; flag = ModDev.testFlag("corsair_events"); }
        if (flag) return true;
        SharedPreferences p = ModQol.prefs();
        return p != null && p.getBoolean("proto_events", false);
    }

    /** Sector change: any running event is dropped (its ships stay in the old sector's pool). */
    static void onLevel() {
        end(null);
        salvageDouble = false;
        fieldStripped = false;
        nextAt = ModSector.play() + FIRST_MS;
    }

    /** Per frame from ModSector.tick, only while flying in an open sector. */
    static void tick(PlayerShip ps, LevelId here, long j) {
        if (ps == null || here == null || !enabled() || ModCalm.active() || ModPrologue.active) return;
        long now = ModSector.play();
        if (nextAt < 0) nextAt = now + FIRST_MS;
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
            end(null);
        }
    }

    // ------------------------------------------------------------------ start
    private static void start(PlayerShip ps, LevelId here) {
        nextAt = ModSector.play() + GAP_MIN_MS + (long) (Math.random() * (GAP_MAX_MS - GAP_MIN_MS));
        double r = Math.random();
        Vector2 field = ModSector.poiAt(ModSector.WRECKS);
        if (r < 0.4) startDistress(ps, here);
        else if (r < 0.75 || field == null) startBounty(ps, here);
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
        c.setActivity(new CivilActivity[] {CivilActivity.newWaitUntilPlayerClose((int) RESCUE_RANGE), CivilActivity.newMooveNextPortal(),
            CivilActivity.newDiseapear()});
        ObjectRegistry.INSTANCE.game.currentLevel.toAdd.add(c);
        victim = c;
        int plv = Math.max(1, ObjectRegistry.INSTANCE.game.playerInfo.level);
        int n = 2 + (Math.random() < 0.5 ? 1 : 0);
        for (int k = 0; k < n; k++) {
            Element e = ModSector.wingShip("reaver", plv, false);
            if (!(e instanceof Ennemis)) continue;
            e.position.setSameAs(at).add((float) (Math.random() * 700 - 350), (float) (Math.random() * 700 - 350));
            e.updateSapCoords();
            ((Ennemis) e).addToCurrentLevel();   // they hold near the trader until the player closes in
            hostiles.add(e);
        }
        engaged = false;
        kind = DISTRESS;
        ModQol.post(ModLang.tr("Distress call: the freighter ") + c.specificName + ModLang.tr(" is under pirate attack, ") + bearing(ps, at) + ".");
        Mod.floatText(ps, ModLang.tr("DISTRESS CALL"), 1.0f, 0.75f, 0.2f);
        ModSound.play("warp_in", 0.5f, 1.0f, 1500);
    }

    private static void startBounty(PlayerShip ps, LevelId here) {
        int lv = Math.min(40, Math.max(1, here.levelMax) + 2);
        Element e = ModSector.wingShip("reaver", lv, true);
        if (!(e instanceof Ennemis)) return;
        Ennemis w = (Ennemis) e;
        ModV34.elite(w);
        Vector2 at = ModSector.poiAt((int) (Math.random() * 4));
        if (at == null || at.distance(ps.position) < 2500) at = around(ps.position, 4000);
        w.position.setSameAs(at);
        w.updateSapCoords();
        w.specificName = ModLang.tr("WANTED: ") + NAMES[(int) (Math.random() * NAMES.length)];
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
        if (dead(victim)) {
            ModQol.post(ModLang.tr("The freighter was lost."));
            end(null);
            return;
        }
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
        if (hostiles.isEmpty()) {
            int pay = ModQol.missionPay(DISTRESS_PAY);
            ModQol.addCredits(pay, victim);
            int owner = ModSector.baseFaction(ObjectRegistry.INSTANCE.game.currentLevel.id);
            if (owner >= 0) ModRep.change(ModCapitals.FACTIONS[owner].key, DISTRESS_STANDING, false);
            ModQol.post(ModLang.tr("Freighter saved. The crew sends their thanks."));
            end(null);
        }
    }

    private static void bounty(PlayerShip ps, long now) {
        if (dead(wanted)) {
            if (wanted != null && wanted.life <= 0) {
                int pay = ModQol.missionPay(BOUNTY_PAY);
                ModQol.addCredits(pay, wanted);
                ModQol.post(ModLang.tr("Bounty collected."));
            }
            end(null);
            return;
        }
        if (now >= endsAt && wanted.position.distance(ps.position) > 2000) {
            ModQol.post(wanted.specificName + ModLang.tr(" jumped out of the sector."));
            wanted.removed = true;
            end(null);
        }
    }

    private static void salvage(PlayerShip ps, long now, long j) {
        rivalLeft -= rivalLeft * SCAV_SPEED * j / 60000f + 4f * j / 1000f;   // they close in, never stall
        if (ps.position.distance(target) < SALVAGE_REACH) {
            salvageDouble = true;
            ModQol.post(ModLang.tr("You reached the wreck field first. Its salvage is yours, twice over."));
            end(null);
        } else if (rivalLeft <= SALVAGE_REACH || now >= endsAt) {
            ModSector.stripField();
            fieldStripped = true;
            ModQol.post(ModLang.tr("The scavengers stripped the wreck field."));
            end(null);
        }
    }

    private static void end(String why) {
        kind = NONE;
        victim = null;
        wanted = null;
        target = null;
        engaged = false;
        hostiles.clear();
    }
}
