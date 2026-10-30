package fr.testudo.spacecorsair.mod;

import android.content.SharedPreferences;
import fr.testudo.spacecorsair.business.Element;
import fr.testudo.spacecorsair.business.ennemis.Ennemis;
import fr.testudo.spacecorsair.business.ennemis.EnnemisFactory;
import fr.testudo.spacecorsair.business.loot.SpaceObject;
import fr.testudo.spacecorsair.business.loot.SpaceObjectType;
import fr.testudo.spacecorsair.business.mission.Mission;
import fr.testudo.spacecorsair.business.mission.MissionListener;
import fr.testudo.spacecorsair.business.mission.MissionObjectiveColor;
import fr.testudo.spacecorsair.business.mission.MissionReward;
import fr.testudo.spacecorsair.business.player.PlayerShip;
import fr.testudo.spacecorsair.business.world.PathFinder;
import fr.testudo.spacecorsair.business.world.Portal;
import fr.testudo.spacecorsair.business.world.civil.CivilActivity;
import fr.testudo.spacecorsair.business.world.civil.CivilFactory;
import fr.testudo.spacecorsair.business.world.civil.CivilShip;
import fr.testudo.spacecorsair.business.world.civil.GuardianCivilShip;
import fr.testudo.spacecorsair.business.world.station.Station;
import fr.testudo.spacecorsair.display.hud.WelcomeMessage;
import fr.testudo.spacecorsair.engine.ObjectRegistry;
import fr.testudo.spacecorsair.engine.Vector2;
import fr.testudo.spacecorsair.game.levels.LevelId;
import java.util.ArrayList;
import java.util.List;

/**
 * v21 faction mission chains (story and text written with ChatGPT, see src/data). Three missions per faction, offered by
 * the faction's commander at its HQ (HAIL button, or the command center where the sector has one), one at a time and in
 * order. Every objective runs inside its sector with mod-spawned ships and markers; the reward is claimed on the
 * mission screen like the stock missions.
 */
public class ModFaction extends MissionListener {
    static final int TEXT_DESC = ModBoss.TEXT_BASE + 1000, TEXT_DONE = ModBoss.TEXT_BASE + 2000;
    static final int REAVER = 0, VARN = 1, WARDEN = 2;
    private static final String[] FAMILY_LABEL = {"modRailgun", ModLang.tr("Railgun"), "modAutocannon", ModLang.tr("Autocannon"), "modArtillery", ModLang.tr("Artillery"),
        "modBlaster", ModLang.tr("Blaster"), "modDisintegrator", ModLang.tr("Disintegrator"), "modArcProjector", ModLang.tr("Arc Projector")};

    private static Mission[] missions;

    // emulator test switches (/data/local/tmp): corsair_mission=<id> starts a mission, corsair_mzone runs its objective in the
    // current sector, corsair_hail shows the Spartan HAIL button and chain anywhere
    static boolean testZone, testHail;
    private static String testStarted;

    static void testTick(PlayerShip ps) {
        testZone = ModDev.testFlag("corsair_mzone");
        testHail = ModDev.testFlag("corsair_hail");
        String v = ModDev.testValue("corsair_mission");
        if (v == null || v.length() == 0 || v.equals(testStarted)) return;
        testStarted = v;
        try {
            if ("NONE".equals(v)) {
                Mission cur = ObjectRegistry.INSTANCE.currentMission;
                if (cur != null) cur.missionEngine.giveUp();
                ObjectRegistry.INSTANCE.currentMission = null;
                ObjectRegistry.INSTANCE.missionRepository.saveNoCorrentMission();
                return;
            }
            Mission m = byId(v);
            if (m == null) return;
            Mission cur = ObjectRegistry.INSTANCE.currentMission;
            if (cur != null && cur != m) cur.missionEngine.giveUp();
            ObjectRegistry.INSTANCE.currentMission = m;
            m.missionEngine.init();
            ObjectRegistry.INSTANCE.missionRepository.saveMissionAsCurrentOne(v);
        } catch (Throwable t) {
            // test only
        }
    }

    // ------------------------------------------------------------------ data access
    /** Story chains (ModFactionData) followed by the v22 repeatable contracts (ModRepData), in one table. */
    private static volatile Object[][] rows;

    /** Called many times per frame (str/num): lock-free once built. */
    private static Object[][] rows() {
        Object[][] r = rows;
        return r != null ? r : buildRows();
    }

    private static synchronized Object[][] buildRows() {
        if (rows == null) {
            Object[][] base = ModFactionData.MISSIONS, fin = ModV35.FINALE, con = ModRepData.CONTRACTS;
            Object[][] story = new Object[base.length + fin.length][];   // v35 (v34 req 16): the finale rows follow the story chains
            System.arraycopy(base, 0, story, 0, base.length);
            System.arraycopy(fin, 0, story, base.length, fin.length);
            String[] hk = ModRepData.KEYS;
            Object[][] r = new Object[story.length + con.length + hk.length][];   // v35: one renegade hunt per faction after the contracts
            System.arraycopy(story, 0, r, 0, story.length);
            int[] n = new int[ModRepData.KEYS.length];
            for (int i = 0; i < con.length; i++) {
                Object[] c = con[i];
                String k = (String) c[0], obj = (String) c[2];
                boolean amends = (Boolean) c[5];
                int count = "KILL_ENEMY_TYPE".equals(obj) ? 5 : "RESCUE".equals(obj) ? 3 : "SCAN_CIVIL".equals(obj) ? 4 : "DEFEND_ZONE".equals(obj) ? 45 : 0;
                int credits = amends ? 40000 : ("DEFEND_ZONE".equals(obj) || "DEFEND_CIVILIANS".equals(obj) || "DESTROY_STATION".equals(obj) || "ESCORT".equals(obj)) ? 110000 : 75000;
                String hq = ModCapitals.FACTIONS[faction(k)].hq.name();
                // order 0 = contract; column 1 of the original order slot keeps the per-faction number in column 17
                r[story.length + i] = new Object[]{k, 0, c[1], obj, hq, hq, 1, count, "DEFEND_ZONE".equals(obj) ? k : "", c[6], "",
                    c[3], contractGoal(obj, count), c[4], ModLang.tr("The contract has lapsed. The offer stands if you want to try again."), credits, "", ++n[ModFaction.commander(k)], amends};
            }
            for (int i = 0; i < hk.length; i++) {
                // owner 2026-10-22: at Friendly+, up to 5 per 12 h window, a renegade of the faction carries one of its cores (guaranteed). Text: Claude's draft for GPT.
                String k = hk[i], hq = ModCapitals.FACTIONS[faction(k)].hq.name();
                r[story.length + con.length + i] = new Object[]{k, 0, "Renegade Hunt", "BOUNTY", hq, hq, 1, 0, "", "Renegade Captain", "",
                    "A renegade captain deserted with one of our faction cores and is hiding near our headquarters. Bring the core back and it is yours to keep.",
                    contractGoal("BOUNTY", 0), "The renegade is down and the core is recovered.", ModLang.tr("The contract has lapsed. The offer stands if you want to try again."),
                    110000, "", ++n[ModFaction.commander(k)], false, true};
            }
            rows = r;
        }
        return rows;
    }

    private static String contractGoal(String obj, int count) {
        if ("FIND_OBJECT".equals(obj)) return ModLang.tr("Follow the signal and recover the marked object.");
        if ("GATHER_AND_SELL".equals(obj)) return ModLang.tr("Collect the 6 marked cargo pods.");
        if ("DEFEND_CIVILIANS".equals(obj)) return ModLang.tr("Protect the transports through 4 raider waves.");
        if ("DEFEND_ZONE".equals(obj)) return ModLang.tr("Hold the zone beside the flagship for ") + count + " seconds.";
        if ("BOUNTY".equals(obj)) return ModLang.tr("Hunt down the marked target.");
        if ("KILL_ENEMY_TYPE".equals(obj)) return ModLang.tr("Destroy ") + count + ModLang.tr(" hostile ships.");
        if ("DESTROY_STATION".equals(obj)) return ModLang.tr("Destroy the marked station and its guards.");
        if ("ESCORT".equals(obj)) return ModLang.tr("Escort the ship to its jump point.");
        if ("SCAN_CIVIL".equals(obj)) return ModLang.tr("Scan ") + count + ModLang.tr(" civilian ships.");
        if ("RESCUE".equals(obj)) return ModLang.tr("Recover the ") + count + ModLang.tr(" stranded crews.");
        return "";
    }

    static int count() { return rows().length; }
    /** Text columns (title, target name, briefing, details, success, failure) come back in Spanish when it is active. */
    static String str(int i, int f) {
        String v = (String) rows()[i][f];
        return f == 2 || f == 9 || (f >= 11 && f <= 14) ? ModLang.tr(v) : v;
    }
    static int num(int i, int f) { return (Integer) rows()[i][f]; }
    static boolean contract(int i) { return order(i) == 0; }
    static boolean hunt(int i) { Object[] row = rows()[i]; return row.length > 19 && Boolean.TRUE.equals(row[19]); }
        static boolean amends(int i) { return contract(i) && (Boolean) rows()[i][18]; }
    static String key(int i) { return str(i, 0); }
    static int order(int i) { return num(i, 1); }
    static String objective(int i) { return str(i, 3); }
    static int minLevel(int i) { return ModV34.lvl(num(i, 6)); }   // v34: data levels are on the stock 0-16 scale
    static String id(int i) { return contract(i) ? "FACTION_C_" + key(i).toUpperCase() + "_" + num(i, 17) : "FACTION_" + key(i).toUpperCase() + "_" + order(i); }

    static int faction(String key) {
        for (int i = 0; i < ModCapitals.FACTIONS.length; i++) if (ModCapitals.FACTIONS[i].key.equals(key)) return i;
        return 0;
    }

    static int commander(String key) {
        for (int i = 0; i < ModFactionData.KEYS.length; i++) if (ModFactionData.KEYS[i].equals(key)) return i;
        return 0;
    }

    static LevelId level(String name) {
        try {
            return LevelId.valueOf(name);
        } catch (Exception e) {
            return null;
        }
    }

    static String itemLabel(String item) {
        String tier = item.endsWith("L15") ? ModLang.tr("Siege ") : item.endsWith("L10") ? ModLang.tr("Heavy ") : item.endsWith("L5") ? ModLang.tr("Standard ") : ModLang.tr("Light ");
        String base = item.replaceAll("L\\d+$", "");
        for (int k = 0; k < FAMILY_LABEL.length; k += 2) if (FAMILY_LABEL[k].equals(base)) return tier + FAMILY_LABEL[k + 1];
        return item;
    }

    /** "spartan headquarters" -> "Spartan Headquarters". */
    static String pretty(LevelId id) {
        if (id == null || id.levelName == null) return "";
        StringBuilder b = new StringBuilder();
        for (String w : id.levelName.split(" ")) {
            if (w.length() == 0) continue;
            if (b.length() > 0) b.append(' ');
            b.append(Character.toUpperCase(w.charAt(0))).append(w.substring(1));
        }
        return b.toString();
    }

    static String credits(int c) {
        return String.format(java.util.Locale.US, "%,d", c);
    }

    private static synchronized Mission[] all() {
        if (missions == null) {
            Mission[] ms = new Mission[count()];
            for (int i = 0; i < ms.length; i++) {
                List<SpaceObject> loot = new ArrayList<SpaceObject>();
                if (str(i, 16).length() > 0) {
                    try {
                        loot.add(SpaceObject.of(SpaceObjectType.valueOf(str(i, 16))));
                    } catch (Exception e) {
                        // reward item missing: credits and XP only
                    }
                }
                // v35: the stored amount is a third of the data value; ModQol.missionPay turns it into the payout (bounties x mission size)
                Mission m = new Mission(id(i), fr.testudo.spacecorsair.R.string.missionGenesisTuerChefPillard, TEXT_DESC + i, TEXT_DONE + i,
                    false, minLevel(i), new ModFaction(i), MissionReward.withObject(loot, contract(i) ? 4000 : 900 * minLevel(i), num(i, 15) / 3), contract(i));
                m.localizedName = contract(i) ? (amends(i) ? ModLang.tr("Amends: ") : ModLang.tr("Contract: ")) + str(i, 2) : str(i, 2);
                m.restrictedMissionId = order(i) > 1 && order(i) != 4 ? id(i - 1) : null;   // v35: the finale opens at L34 on its own (owner 2026-10-22)
                ms[i] = m;
            }
            missions = ms;
        }
        return missions;
    }

    /** Hook: end of MissionRepository.getAvaillableMission: each faction's next mission at its HQ. */
    public static void addAvailable(LevelId at, List<Mission> list) {
        try {
            if (at == null || list == null) return;
            Mission[] ms = all();
            Mission cur = ObjectRegistry.INSTANCE.currentMission;
            int plv = ObjectRegistry.INSTANCE.game.playerInfo.level;
            long day = System.currentTimeMillis() / 86400000L;
            for (int fi = 0; fi < ModCapitals.FACTIONS.length; fi++) {
                if (ModCapitals.FACTIONS[fi].hq != at && !(testHail && fi == 0)) continue;
                String k = ModCapitals.FACTIONS[fi].key;
                int rank = ModRep.rank(k);
                if (rank <= ModRep.HOSTILE) continue;                       // the commander will not talk
                if (rank >= ModRep.NEUTRAL) {
                    for (int i = 0; i < ms.length; i++) {
                        if (contract(i) || !key(i).equals(k) || ModV35.finale(order(i))) continue;
                        if (ObjectRegistry.INSTANCE.missionRepository.hasDoneMission(id(i))) continue;
                        if (cur != ms[i] && plv < minLevel(i) - 2 && !testHail) break;      // the chain opens up with the pilot's level
                        if (!list.contains(ms[i])) list.add(ms[i]);
                        break;                                                  // one mission of the chain at a time
                    }
                }
                if (rank >= ModRep.NEUTRAL && at == LevelId.THE_HIVE) {
                    // v35 (v34 req 16): the top region's final missions, one at a time, from L34
                    for (int i = 0; i < ms.length; i++) {
                        if (contract(i) || !key(i).equals(k) || !ModV35.finale(order(i))) continue;
                        if (ObjectRegistry.INSTANCE.missionRepository.hasDoneMission(id(i))) continue;
                        if (cur != ms[i] && plv < minLevel(i) - 2 && !testHail) break;
                        if (!list.contains(ms[i])) list.add(ms[i]);
                        break;
                    }
                }
                // contracts: two of the regular ones (rotating daily) from Neutral up, only the amends ones when Unfriendly
                ArrayList<Integer> pool = new ArrayList<Integer>();
                for (int i = 0; i < ms.length; i++) {
                    if (contract(i) && !hunt(i) && key(i).equals(k) && amends(i) == (rank == ModRep.UNFRIENDLY)) pool.add(i);
                }
                for (int n = 0; n < 2 && !pool.isEmpty(); n++) {
                    int pick = pool.remove((int) ((day * 7 + fi * 3 + n * 5) % pool.size()));
                    if (!list.contains(ms[pick])) list.add(ms[pick]);
                }
                if (rank >= ModRep.FRIENDLY && ModV35.huntLeft(k) == 0) {
                    for (int i = 0; i < ms.length; i++) if (hunt(i) && key(i).equals(k) && !list.contains(ms[i])) { list.add(ms[i]); ModV35.huntNote(); }
                }
                if (cur != null && cur.missionEngine instanceof ModFaction && key(((ModFaction) cur.missionEngine).idx).equals(k) && !list.contains(cur)) list.add(cur);
            }
        } catch (Throwable t) {
            // never break the mission screen
        }
    }

    /** Hook: start of MissionRepository.getMissionById (restores the current mission after a restart). */
    public static Mission byId(String id) {
        if (id == null || !id.startsWith("FACTION_")) return null;
        try {
            for (Mission m : all()) if (id.equals(m.missionId)) return m;
        } catch (Throwable t) {
            // fall through
        }
        return null;
    }

    /** From ModBoss.text: mission descriptions. */
    static String text(int id) {
        int i = id - TEXT_DESC;
        if (i >= 0 && i < count()) {
            ModCapitals.Faction f = ModCapitals.FACTIONS[faction(key(i))];
            int c = commander(key(i));
            LevelId where = zoneOf(i);
            return "<b>" + ModFactionData.COMMANDER[c] + "</b>, " + f.name + "<br><br>" + str(i, 11)
                + "<br><br><b>Objective</b>: " + str(i, 12)
                + (where != null ? "<br><b>Sector</b>: " + pretty(where) : "")
                + "<br><b>Reward</b>: " + credits(ModQol.missionPay(num(i, 15) / 3)) + " credits" + (str(i, 16).length() > 0 ? " + " + itemLabel(str(i, 16)) : "")
                + " (+" + Math.round(ModV35.missionStanding(contract(i), order(i))) + " standing" + (ModRep.payoutBonus(key(i)) > 0 ? ", +" + Math.round(ModRep.payoutBonus(key(i)) * 100) + ModLang.tr("% standing bonus") : "") + ModLang.tr(")"
                + "<br><br>Missions of this chain are handed out and handed in at <b>") + pretty(f.hq) + ModLang.tr("</b>: hail the ") + f.ship + ".";
        }
        i = id - TEXT_DONE;
        if (i >= 0 && i < count()) return str(i, 13) + ModLang.tr("<br><br>The reward has been transferred to your hold.");
        return null;
    }

    // ------------------------------------------------------------------ v37 sectors
    /**
     * v37 (owner 2026-10-30): the sector a mission plays in. Story rows carry it in the data (S1-S9 moved out of the HQ);
     * contracts go to a neighbour of the giver's HQ that rotates daily (Q1/Q2); renegade hunts and the finale stay in the HQ.
     */
    static LevelId zoneOf(int i) {
        ModFaction act = active();
        if (act != null && act.idx == i && act.zone != null) return act.zone;
        if (contract(i) && !hunt(i)) return ModPlace.contractSector(ModCapitals.FACTIONS[faction(key(i))].hq, i, System.currentTimeMillis() / 86400000L);
        return level(str(i, 4));
    }

    /** Where the second step happens: DELIVERY hands in at column 5, GATHER_AND_SELL sells there, the story ESCORT ends there. */
    private LevelId secondSector() {
        if ("DELIVERY".equals(obj) || "GATHER_AND_SELL".equals(obj)) return level(str(idx, 5));
        if ("ESCORT".equals(obj) && !contract(idx)) return level(str(idx, 10));
        return null;
    }

    /** The sector the mission needs the player in right now. */
    private LevelId activeSector() {
        if (phase == 1) {
            LevelId s = secondSector();
            if (s != null) return s;
        }
        return zone;
    }

    // ------------------------------------------------------------------ engine state
    private final int idx;
    private final String obj;
    private LevelId zone;
    private final int fi;
    private boolean completed;
    private boolean inZone;
    private boolean setupDone;
    private int zoneMs;
    // v37 plan: made once per run, kept when the player leaves the sector (Q11) and across restarts (prefs)
    private boolean planned;
    private int phase;                        // 0 objective, 1 hand-in / sell / second escort leg
    private final Vector2 ref = new Vector2(); // where the player arrived when the plan was made
    private final Vector2 entry = new Vector2();
    private final Vector2 center = new Vector2();
    private final Vector2 endAt = new Vector2();
    private boolean courierMoving;
    private final ArrayList<Element> spawned = new ArrayList<Element>();
    private final ArrayList<CivilShip> civs = new ArrayList<CivilShip>();
    private float[] markers;                  // x, y pairs
    private boolean[] taken;
    private int[] scanMs;
    private Element target;                   // bounty, relay, courier or flagship
    private int progress, goal;
    private int timer, wavesLeft, holdMs, waveNo;
    private boolean ambushed, ambushed2, wavesOn;
    private float startDist;
    private final Vector2 gate = new Vector2();
    private final Vector2 lastCourier = new Vector2();
    private int courierCheck;

    private ModFaction(int idx) {
        this.idx = idx;
        this.obj = objective(idx);
        this.zone = level(str(idx, 4));
        this.fi = faction(key(idx));
    }

    private static ModFaction active() {
        Mission m = ObjectRegistry.INSTANCE.currentMission;
        return m != null && m.missionEngine instanceof ModFaction ? (ModFaction) m.missionEngine : null;
    }

    private static SharedPreferences prefs() {
        return ModQol.prefs();
    }

    private void complete() {
        if (completed) return;
        completed = true;
        ModAlerts.missionResult(true);
        // standing: story +15 (chain finale +20), contracts +6; fighting a faction's flagship costs a little with it
        ModRep.change(key(idx), ModV35.missionStanding(contract(idx), order(idx)), true);   // v35 (v34 req 13)
        if (!contract(idx) && order(idx) == 3) ModV34.storyDone(key(idx));
        if (hunt(idx)) ModV35.huntDone(key(idx));
        if ("KILL_FLAGSHIP".equals(obj) && str(idx, 8).length() > 0) ModRep.change(str(idx, 8), -0.8f, true);
        int bonus = Math.round(ModQol.missionPay(num(idx, 15) / 3) * ModRep.payoutBonus(key(idx)));   // v35: bonus on the real payout
        if (bonus > 0) {
            ObjectRegistry.INSTANCE.game.playerCurrentShipInventory.addCredit(bonus);
            PlayerShip ps = ObjectRegistry.INSTANCE.playerShip;
            if (ps != null) Mod.floatText(ps, ModLang.tr("STANDING BONUS +") + credits(bonus), 1.0f, 0.85f, 0.3f);
        }
        SharedPreferences p = prefs();
        if (p != null) p.edit().putBoolean("fm_done_" + id(idx), true).remove(stateKey()).commit();
        WelcomeMessage.setText(ObjectRegistry.INSTANCE.getStringRessource(fr.testudo.spacecorsair.R.string.missionSuccess), str(idx, 2));
        ModComms.show(key(idx), str(idx, 13), 9000);
        markGates(true);
    }

    private void fail() {
        cleanup();
        planned = false;
        save();
        ModAlerts.missionResult(false);
        ModComms.show(key(idx), str(idx, 14), 9000);
        Mission.setMissionFailure(str(idx, 14));
    }

    // ------------------------------------------------------------------ v37 saved plan (Q11)
    private String stateKey() {
        return "fm_st_" + id(idx);
    }

    private void save() {
        SharedPreferences p = prefs();
        if (p == null) return;
        if (!planned) { p.edit().remove(stateKey()).apply(); return; }
        StringBuilder b = new StringBuilder();
        b.append(zone != null ? zone.name() : "").append(';').append(phase).append(';')
            .append(ref.x).append(',').append(ref.y).append(';').append(center.x).append(',').append(center.y).append(';')
            .append(endAt.x).append(',').append(endAt.y).append(';').append(progress).append(';').append(goal).append(';')
            .append(holdMs).append(';').append(waveNo).append(';').append(wavesLeft).append(';').append(courierMoving ? 1 : 0).append(';')
            .append(lastCourier.x).append(',').append(lastCourier.y).append(';');
        if (markers != null) {
            for (int k = 0; k < taken.length; k++) {
                b.append(markers[k * 2]).append(',').append(markers[k * 2 + 1]).append(',').append(taken[k] ? 1 : 0).append(k + 1 < taken.length ? ":" : "");
            }
        }
        p.edit().putString(stateKey(), b.toString()).apply();
    }

    private void load() {
        planned = false;
        SharedPreferences p = prefs();
        String v = p != null ? p.getString(stateKey(), null) : null;
        if (v == null) return;
        try {
            String[] f = v.split(";", -1);
            LevelId z = level(f[0]);
            if (z != null) zone = z;
            phase = Integer.parseInt(f[1]);
            xy(f[2], ref);
            xy(f[3], center);
            xy(f[4], endAt);
            progress = Integer.parseInt(f[5]);
            goal = Integer.parseInt(f[6]);
            holdMs = Integer.parseInt(f[7]);
            waveNo = Integer.parseInt(f[8]);
            wavesLeft = Integer.parseInt(f[9]);
            courierMoving = "1".equals(f[10]);
            xy(f[11], lastCourier);
            markers = null;
            taken = null;
            if (f.length > 12 && f[12].length() > 0) {
                String[] m = f[12].split(":");
                markers = new float[m.length * 2];
                taken = new boolean[m.length];
                for (int k = 0; k < m.length; k++) {
                    String[] c = m[k].split(",");
                    markers[k * 2] = Float.parseFloat(c[0]);
                    markers[k * 2 + 1] = Float.parseFloat(c[1]);
                    taken[k] = "1".equals(c[2]);
                }
            }
            planned = true;
        } catch (Throwable t) {
            planned = false;   // a broken save starts the objective over
        }
    }

    private static void xy(String s, Vector2 into) {
        String[] c = s.split(",");
        into.set(Float.parseFloat(c[0]), Float.parseFloat(c[1]));
    }

    // ------------------------------------------------------------------ spawning
    private int foeLevel() {
        int base = minLevel(idx);
        if (contract(idx)) {
            // contracts scale with the pilot
            try { base = Math.max(1, Math.min(ModV34.CAP, ObjectRegistry.INSTANCE.game.playerInfo.level)); } catch (Throwable t) { base = 5; }
        }
        return base + (int) (Math.random() * 2);
    }

    /** Q7d: hold-zone raiders are at the pilot's level or the sector's top level, whichever is higher. */
    private int holdLevel() {
        int lv = 1;
        try { lv = ObjectRegistry.INSTANCE.game.playerInfo.level; } catch (Throwable t) { /* default */ }
        LevelId z = zone;
        if (z != null) lv = Math.max(lv, z.levelMax);
        return Math.max(1, Math.min(ModV34.CAP, lv));
    }

    private int side() {
        String k = key(idx);
        if (k.equals("kretari") || (k.equals("reaver") && order(idx) < 3)) return VARN;
        if (k.equals("varn") && order(idx) == 2) return WARDEN;
        return REAVER;
    }

    private Ennemis foe(int side, boolean big) {
        return foe(side, big, foeLevel());
    }

    private Ennemis foe(int side, boolean big, int lvl) {
        Ennemis e = null;
        if (side == REAVER) {
            ArrayList<ModFleet.Type> ok = new ArrayList<ModFleet.Type>();
            for (ModFleet.Type t : ModFleet.TYPES) {
                if (!t.kretari && ModV34.lvl(t.minLevel) <= lvl && (big || t.size <= 200)) ok.add(t);
            }
            if (!ok.isEmpty()) {
                int from = Math.max(0, ok.size() - 4);
                e = ModFleet.build(ok.get(from + (int) (Math.random() * (ok.size() - from))), lvl);
            }
            if (e == null) e = EnnemisFactory.newBasicEnnemisShip(lvl);
        } else if (side == VARN) {
            e = Math.random() < 0.5 ? EnnemisFactory.newFrelon(lvl) : EnnemisFactory.newDefensor(lvl);
            name(e, Math.random() < 0.5 ? "Syndicate Harvester" : "Syndicate Enforcer");
        } else {
            e = EnnemisFactory.newDefensor(lvl);
            name(e, "Authority Picket");
        }
        return e;
    }

    private static void name(Element e, String n) {
        e.specificName = n;
        e.specificNameDecalX = -1;
    }

    /** {@code attack} null with {@code aggro} false: the ship waits at its post and engages through the game's own detection. */
    private Ennemis place(Ennemis e, Vector2 at, Element attack, boolean objective, boolean aggro) {
        if (e == null) return null;
        e.position.setSameAs(at);
        e.updateSapCoords();
        e.desengagementDistance = 9000.0f;
        if (objective) {
            e.isMissionObjective = true;
            e.missionObjectiveColor = MissionObjectiveColor.RED;
        }
        PlayerShip ps = ObjectRegistry.INSTANCE.playerShip;
        if (aggro) e.initAttackTarget(attack != null && !attack.removed ? attack : ps);
        e.addToCurrentLevel();
        spawned.add(e);
        return e;
    }

    private Ennemis place(Ennemis e, Vector2 at, Element attack, boolean objective) {
        return place(e, at, attack, objective, true);
    }

    /** A group waiting at the objective (spawned while the player is far away: no pop-in, R4). */
    private void post(int n, Vector2 around, float dist, boolean big) {
        for (int k = 0; k < n; k++) {
            double a = Math.random() * Math.PI * 2.0d;
            Vector2 p = new Vector2(around).add((float) (Math.cos(a) * dist), (float) (Math.sin(a) * dist));
            place(foe(side(), big && k == 0), p, null, true, false);
        }
    }

    /** R4 / Q19-Q20: reinforcements come in from 4,500 away (the side of a gate or hostile station) with a one-time boost. */
    private void reinforce(int n, Element attack, boolean big) {
        reinforce(n, attack, big, -1, false);
    }

    private void reinforce(int n, Element attack, boolean big, int lvl, boolean eliteLast) {
        PlayerShip ps = ObjectRegistry.INSTANCE.playerShip;
        if (ps == null) return;
        Vector2 at = ModPlace.ambushPoint(ps.position);
        for (int k = 0; k < n; k++) {
            Vector2 p = new Vector2(at).add((float) (Math.random() * 500 - 250), (float) (Math.random() * 500 - 250));
            Ennemis e = place(lvl > 0 ? foe(side(), big && k == 0, lvl) : foe(side(), big && k == 0), p, attack, true, true);
            if (e == null) continue;
            if (eliteLast && k == n - 1) e.setElite(true);
            ModPlace.boost(e);
        }
    }

    private void scatter(int n, Vector2 around, float radius) {
        markers = new float[n * 2];
        taken = new boolean[n];
        for (int k = 0; k < n; k++) {
            Vector2 p = away(around, radius * 0.2f, radius);
            markers[k * 2] = p.x;
            markers[k * 2 + 1] = p.y;
        }
        goal = n;
        progress = 0;
    }

    private static Vector2 away(Vector2 from, float min, float max) {
        double a = Math.random() * Math.PI * 2.0d;
        float d = min + (float) Math.random() * (max - min);
        return new Vector2(from).add((float) (Math.cos(a) * d), (float) (Math.sin(a) * d));
    }

    private CivilShip civil(Vector2 at, boolean transport) {
        int lvl = Math.max(1, minLevel(idx) - 2);
        CivilShip c = transport ? CivilFactory.newTrasnporteur(lvl) : CivilFactory.newRandomCivil(lvl, lvl);
        if (c == null) return null;
        c.position.setSameAs(at);
        ObjectRegistry.INSTANCE.game.currentLevel.toAdd.add(c);
        civs.add(c);
        return c;
    }

    private CivilShip scanTarget(Vector2 at, Vector2 roam) {
        CivilShip c = civil(at, false);
        if (c == null) return null;
        c.isMissionObjective = true;
        c.missionObjectiveColor = MissionObjectiveColor.ORANGE;
        c.setActivity(new CivilActivity[]{CivilActivity.newMooveRandom(roam.x, roam.y, 900), CivilActivity.newMooveRandom(roam.x, roam.y, 900)});
        return c;
    }

    /** The gate of this sector that leads toward {@code dest}, or null. */
    private static Portal gateTo(LevelId dest) {
        try {
            if (dest != null) return ObjectRegistry.INSTANCE.game.currentLevel.findPortalByName(PathFinder.getPortalNameToGoTo(dest));
        } catch (Throwable t) {
            // no route
        }
        return null;
    }

    /** The gate farthest from {@code from}: an escort's end point when the sector has no second station (Q8). */
    private static Vector2 farGate(Vector2 from) {
        Vector2 best = null;
        float bd = -1;
        try {
            List<Element> els = ObjectRegistry.INSTANCE.game.currentLevel.elements;
            for (int k = 0; k < els.size(); k++) {
                Element e = els.get(k);
                if (!(e instanceof Portal) || e.removed) continue;
                float d = e.position.distance(from);
                if (d > bd) { bd = d; best = e.position; }
            }
        } catch (Throwable t) {
            best = null;
        }
        return best != null ? new Vector2(best) : ModPlace.farPoint(from, ModPlace.OBJECTIVE_MIN, Float.MAX_VALUE);
    }

    /** v37: the objective's layout, made once per run from where the player arrived (Q3, Q7a, Q4, Q8). */
    private void plan(PlayerShip ps) {
        planned = true;
        phase = 0;
        progress = 0;
        holdMs = 0;
        waveNo = 0;
        wavesLeft = 0;
        courierMoving = false;
        markers = null;
        taken = null;
        ref.setSameAs(ps.position);
        if ("DEFEND_ZONE".equals(obj)) center.setSameAs(ModPlace.farPoint(ref, ModPlace.OUTPOST_MIN, ModPlace.OUTPOST_MAX));
        else center.setSameAs(ModPlace.farPoint(ref, ModPlace.OBJECTIVE_MIN, Float.MAX_VALUE));
        if ("FIND_OBJECT".equals(obj) || "DELIVERY".equals(obj)) {
            markers = new float[]{center.x, center.y};
            taken = new boolean[1];
            goal = 1;
        } else if ("GATHER_AND_SELL".equals(obj)) {
            scatter(6, center, 2200);
        } else if ("RESCUE".equals(obj)) {
            scatter(Math.max(1, num(idx, 7)), center, 3200);
        } else if ("DEFEND_CIVILIANS".equals(obj)) {
            wavesLeft = 4;
        } else if ("DEFEND_ZONE".equals(obj)) {
            goal = (contract(idx) ? 60 : 90) * 1000;   // Q7b
        } else if ("KILL_ENEMY_TYPE".equals(obj) || "SCAN_CIVIL".equals(obj)) {
            goal = Math.max(1, num(idx, 7));
        } else if ("ESCORT".equals(obj)) {
            // Q4 / S8: the courier waits at the station farthest from where the player came in
            Station st = ModPlace.farthestStation(ref, null);
            if (st != null) center.setSameAs(st.position);
            lastCourier.setSameAs(center);
            planEscortEnd(st);
        }
        save();
    }

    /** Q8: contracts end at another station of the sector, else its farthest gate; the story escort heads for its gate. */
    private void planEscortEnd(Station start) {
        LevelId dest = phase == 0 ? level(str(idx, 10)) : null;
        Portal p = phase == 0 && !contract(idx) ? gateTo(dest) : null;
        if (p != null) { endAt.setSameAs(p.position); return; }
        Station end = ModPlace.farthestStation(start != null ? start.position : center, start);
        if (end != null) endAt.setSameAs(end.position);
        else endAt.setSameAs(farGate(center));
    }

    private void setup() {
        setupDone = true;
        PlayerShip ps = ObjectRegistry.INSTANCE.playerShip;
        if (ps == null) return;
        if (!planned) plan(ps);
        ambushed = ambushed2 = false;
        wavesOn = false;
        target = null;
        if ("DELIVERY".equals(obj) || "GATHER_AND_SELL".equals(obj)) {
            // phase 1 has nothing to spawn: the player docks at a station of the second sector
        } else if ("DEFEND_CIVILIANS".equals(obj)) {
            Vector2 dest = farFrom(center, 4500, 5000);
            for (int k = 0; k < 4; k++) {
                CivilShip c = civil(away(center, 100, 450), true);
                if (c == null) continue;
                c.maxLife *= 3;
                c.life = c.maxLife;
                name(c, ModLang.tr("Evacuee transport"));
                c.isMissionObjective = true;
                c.missionObjectiveColor = MissionObjectiveColor.GREEN;
                // the convoy waits for its escort (stock escort distance), then sets off
                c.setActivity(new CivilActivity[]{CivilActivity.newWaitUntilPlayerClose(500, 4.0f), CivilActivity.newMoove(dest.x + (k - 1.5f) * 250, dest.y)});
            }
            timer = 6000;
        } else if ("DEFEND_ZONE".equals(obj)) {
            timer = 4000;
        } else if ("BOUNTY".equals(obj)) {
            boolean varn = str(idx, 9).equals("Scoria") || side() == VARN;
            Ennemis b = varn ? EnnemisFactory.newFrelon(foeLevel() + 1) : foe(REAVER, true);
            if (b != null) {
                b.setElite(true);
                name(b, str(idx, 9));
                b.maxLife *= hunt(idx) ? 8 : 4;   // owner 2026-10-22: the renegade captain is tougher
                b.life = b.maxLife;
                b.lifeInPourc = 100;
                if (b.lifeBar != null) b.lifeBar.setValue(100);
                target = place(b, center, null, true, false);
                for (int k = 0; k < (hunt(idx) ? 4 : 2); k++) place(foe(varn ? VARN : REAVER, false), away(center, 150, 400), null, false, false);
            }
        } else if ("KILL_ENEMY_TYPE".equals(obj)) {
            post(Math.min(3, goal - progress), center, 300, false);
        } else if ("DESTROY_STATION".equals(obj)) {
            Ennemis r = EnnemisFactory.newRocketTourelle(foeLevel() + 1);
            if (r != null) {
                r.setElite(true);
                name(r, (contract(idx) || ModV35.finale(order(idx))) && str(idx, 9).length() > 0 ? str(idx, 9) : "Authority Relay Station");
                r.maxLife *= 8;
                r.life = r.maxLife;
                r.lifeInPourc = 100;
                if (r.lifeBar != null) r.lifeBar.setValue(100);
                target = place(r, center, null, true, false);
                for (int k = 0; k < 3; k++) place(foe(ModV35.finale(order(idx)) ? side() : WARDEN, false), away(center, 300, 600), null, false, false);
            }
        } else if ("ESCORT".equals(obj)) {
            Vector2 at = new Vector2(lastCourier);
            if (phase == 1 && !courierMoving) {
                // second leg (S8): the courier comes through the gate with the player, then heads for a station here
                at.setSameAs(entry);
                Station end = ModPlace.farthestStation(entry, null);
                endAt.setSameAs(end != null ? end.position : farGate(entry));
                courierMoving = true;
            }
            CivilShip c = civil(at, true);
            if (c != null) {
                name(c, str(idx, 9));
                c.maxLife *= 6;
                c.life = c.maxLife;
                c.isMissionObjective = true;
                c.missionObjectiveColor = MissionObjectiveColor.GREEN;
                target = c;
                gate.setSameAs(endAt);
                if (courierMoving) c.setActivity(new CivilActivity[]{CivilActivity.newMoove(gate.x, gate.y)});
                else c.setActivity(new CivilActivity[]{CivilActivity.newWaitUntilPlayerClose(500, 4.0f), CivilActivity.newMoove(gate.x, gate.y)});
                startDist = Math.max(1, (phase == 0 ? center : entry).distance(gate));
                lastCourier.setSameAs(c.position);
                courierCheck = 10000;
            }
        } else if ("SCAN_CIVIL".equals(obj)) {
            scanMs = new int[goal];
            for (int k = 0; k < goal; k++) {
                if (k < progress) { scanMs[k] = -1; civs.add(null); continue; }   // already scanned (Q11)
                scanTarget(away(center, 300, 2600), center);
            }
        } else if ("KILL_FLAGSHIP".equals(obj)) {
            GuardianCivilShip g = ModCapitals.ensure(str(idx, 8), true);
            if (g != null) {
                g.isMissionObjective = true;
                g.missionObjectiveColor = MissionObjectiveColor.RED;
                target = g;
            }
        }
    }

    /** A point {@code min}-{@code max} from {@code from}, inside the sector when possible. */
    private static Vector2 farFrom(Vector2 from, float min, float max) {
        return ModPlace.farPoint(from, min, max);
    }

    private void cleanup() {
        for (Element e : spawned) {
            if (e != null && !e.removed) e.remove();
        }
        for (CivilShip c : civs) {
            if (c != null && !c.removed) c.remove();
        }
        if (target != null && target instanceof GuardianCivilShip) target.isMissionObjective = false;
        spawned.clear();
        civs.clear();
        target = null;
        setupDone = false;
        zoneMs = 0;
        ModPlace.clearBoost();
    }

    // ------------------------------------------------------------------ per frame
    @Override
    public void onDoPhysic(long j) {
        PlayerShip ps = ObjectRegistry.INSTANCE.playerShip;
        if (completed || !inZone || ps == null || ps.removed) return;
        if (!setupDone) {
            // wait for the sector (and its flagship) to be built before placing anything
            if (zoneMs == 0) entry.setSameAs(ps.position);
            zoneMs += j;
            if (zoneMs > 1500 && !ps.isDocked) setup();
            return;
        }
        ModPlace.tickBoost(ps);
        if (phase == 1 && ("DELIVERY".equals(obj) || "GATHER_AND_SELL".equals(obj))) return;   // waiting for the dock (onBeforePlayerDock)
        if (markers != null) {
            for (int k = 0; k < taken.length; k++) {
                if (taken[k]) continue;
                float dx = markers[k * 2] - ps.position.x, dy = markers[k * 2 + 1] - ps.position.y;
                float d = (float) Math.sqrt(dx * dx + dy * dy);
                if (!ambushed && d < 1300 && ("FIND_OBJECT".equals(obj) || "DELIVERY".equals(obj))) {
                    ambushed = true;
                    reinforce("DELIVERY".equals(obj) ? 3 : 2, ps, false);
                    Mod.floatText(ps, ModLang.tr("CONTACTS INBOUND"), 1.0f, 0.4f, 0.3f);
                }
                if (d < 220) {
                    taken[k] = true;
                    progress++;
                    ObjectRegistry.INSTANCE.soundManager.playGateZap();
                    String what = "RESCUE".equals(obj) ? ModLang.tr("PILOT RECOVERED") : "GATHER_AND_SELL".equals(obj) ? ModLang.tr("CARGO") : "DELIVERY".equals(obj) ? ModLang.tr("CRATE LOADED") : "SECURED";
                    Mod.floatText(ps, what + (goal > 1 ? " " + progress + "/" + goal : ""), 0.5f, 1.0f, 0.6f);
                    if (!ambushed && goal > 1 && progress == (goal + 1) / 2) {
                        ambushed = true;
                        reinforce(2, ps, false);
                    }
                    save();
                }
            }
            if (progress >= goal) {
                if ("DELIVERY".equals(obj) || "GATHER_AND_SELL".equals(obj)) {
                    // Q5 / Q6: carry it to a station of the second sector
                    phase = 1;
                    markers = null;
                    save();
                    inZone = sectorIs(activeSector());
                    markGates(true);
                } else {
                    complete();
                }
            }
            return;
        }
        if ("DEFEND_CIVILIANS".equals(obj)) {
            int alive = 0;
            for (CivilShip c : civs) if (c != null && !c.removed && c.life > 0) alive++;
            if (alive < 2) { fail(); return; }
            if (!wavesOn) {
                // the raids start when the player reaches the convoy (the convoy sets off then)
                for (CivilShip c : civs) if (c != null && !c.removed && c.position.distance(ps.position) < 500) wavesOn = true;
                if (!wavesOn) return;
            }
            timer -= j;
            if (wavesLeft > 0 && timer <= 0) {
                wavesLeft--;
                timer = 20000;
                Element victim = civs.get((int) (Math.random() * civs.size()));
                reinforce(1, ps, true);
                reinforce(2, victim, false);
                Mod.floatText(ps, ModLang.tr("RAIDERS INBOUND (") + (4 - wavesLeft) + "/4)", 1.0f, 0.4f, 0.3f);
                save();
            }
            if (wavesLeft == 0 && liveFoes() == 0) complete();
        } else if ("DEFEND_ZONE".equals(obj)) {
            boolean in = ps.position.distance(center) < 1800;
            if (in) { holdMs += j; wavesOn = true; }
            if (wavesOn) {
                timer -= j;
                int waves = goal / 15000;
                if (timer <= 0 && waveNo < waves) {
                    // Q7c/Q7d: 5 raiders, +1 per wave up to 8 (story starts at 6), at the pilot's or the sector's level; the last wave has an elite
                    timer = 15000;
                    waveNo++;
                    int n = Math.min(8, (contract(idx) ? 5 : 6) + waveNo - 1);
                    reinforce(n, ps, true, holdLevel(), waveNo == waves);
                    Mod.floatText(ps, ModLang.tr("RAIDERS INBOUND (") + waveNo + "/" + waves + ")", 1.0f, 0.4f, 0.3f);
                    save();
                }
            }
            if (holdMs >= goal) complete();
        } else if ("BOUNTY".equals(obj) || "DESTROY_STATION".equals(obj)) {
            if (target != null && target.removed) {
                if (target.life <= 0) complete();
                else { setupDone = false; zoneMs = 0; target = null; }
            }
        } else if ("KILL_ENEMY_TYPE".equals(obj)) {
            if (progress >= goal) { complete(); return; }
            // top up from what is still missing, so ships that wander off never leave the count short
            int alive = liveFoes();
            if (alive < 2 && progress + alive < goal) reinforce(Math.min(2, goal - progress - alive), ps, false);
        } else if ("ESCORT".equals(obj)) {
            if (target == null) return;
            if (target.removed || target.life <= 0) {
                if (target.position.distance(gate) < 700) escortArrived(); else fail();
                return;
            }
            if (!courierMoving && target.position.distance(lastCourier) > 60) { courierMoving = true; save(); }
            float prog = 1 - target.position.distance(gate) / startDist;
            if (!ambushed && prog > 0.3f) { ambushed = true; reinforce(3, target, false); Mod.floatText(ps, "AMBUSH!", 1.0f, 0.4f, 0.3f); }
            if (!ambushed2 && prog > 0.65f) { ambushed2 = true; reinforce(3, target, true); Mod.floatText(ps, "AMBUSH!", 1.0f, 0.4f, 0.3f); }
            if (target.position.distance(gate) < 450) {
                target.remove();
                escortArrived();
                return;
            }
            courierCheck -= j;
            if (courierCheck <= 0) {
                // keep the courier on its way if a fight knocked it off its route
                courierCheck = 10000;
                if (courierMoving && target.position.distance(lastCourier) < 60 && target instanceof CivilShip) {
                    ((CivilShip) target).setActivity(new CivilActivity[]{CivilActivity.newMoove(gate.x, gate.y)});
                }
                lastCourier.setSameAs(target.position);
                save();
            }
        } else if ("SCAN_CIVIL".equals(obj)) {
            for (int k = 0; k < civs.size() && k < scanMs.length; k++) {
                CivilShip c = civs.get(k);
                if (c == null || scanMs[k] < 0) continue;
                if (c.removed || c.life <= 0) {
                    // Q9: a lost target is replaced; the new one comes in from off-screen (R4)
                    CivilShip n = scanTarget(ModPlace.ambushPoint(ps.position), center);
                    if (n != null) {
                        civs.remove(civs.size() - 1);   // scanTarget appended it; it takes the lost one's slot
                        civs.set(k, n);
                    }
                    scanMs[k] = 0;
                    continue;
                }
                if (c.position.distance(ps.position) < 450) {
                    scanMs[k] += j;
                    if (scanMs[k] > 1500) {
                        scanMs[k] = -1;
                        progress++;
                        c.isMissionObjective = false;
                        Mod.floatText(c, "SCANNED " + progress + "/" + goal, 0.5f, 0.9f, 1.0f);
                        if (progress == goal - 1 && !ambushed) {
                            ambushed = true;
                            Mod.floatText(c, ModLang.tr("FALSE TRANSPONDER: RAIDERS!"), 1.0f, 0.4f, 0.3f);
                            reinforce(2, ps, false);
                        }
                        save();
                    }
                }
            }
            if (progress >= goal) complete();
        } else if ("KILL_FLAGSHIP".equals(obj)) {
            if (target == null) return;
            if (target.removed) {
                if (target.life <= 0) complete();
                else { setupDone = false; zoneMs = 0; target = null; }
                return;
            }
            if (target.position.distance(ps.position) < 4500 && target instanceof GuardianCivilShip && ((GuardianCivilShip) target).chasseTarget == null) {
                ((GuardianCivilShip) target).attackPlayerIfItNotTheCaseAlready();
                ObjectRegistry.INSTANCE.soundManager.playDanger();
            }
        }
    }

    /** The courier reached its end point: done, or (story escort, S8) on to the second sector with the player. */
    private void escortArrived() {
        if (phase == 0 && secondSector() != null) {
            phase = 1;
            courierMoving = false;
            target = null;
            save();
            inZone = sectorIs(activeSector());
            Mod.floatText(ObjectRegistry.INSTANCE.playerShip, ModLang.tr("FOLLOW THE COURIER THROUGH THE GATE"), 0.5f, 1.0f, 0.6f);
            markGates(true);
            return;
        }
        complete();
    }

    private static boolean sectorIs(LevelId id) {
        try {
            String cur = ObjectRegistry.INSTANCE.game.currentLevel.name;
            return id != null && cur != null && cur.equals(id.levelName);
        } catch (Throwable t) {
            return false;
        }
    }

    private int liveFoes() {
        int n = 0;
        for (Element e : spawned) if (e != null && !e.removed) n++;
        return n;
    }

    // ------------------------------------------------------------------ drawing (from ModCaps.drawOver)
    private static final Vector2 pos = new Vector2();
    // per-frame text caches (game thread)
    private static String holdLabel, arrowText, arrowLabel;
    private static int holdSec = -1, arrowM = -1;

    static void draw(PlayerShip ps) {
        ModFaction f = active();
        if (f == null || f.completed || !f.inZone || !f.setupDone || ps == null || ps.removed) return;
        long t = System.currentTimeMillis();
        float pulse = 0.6f + 0.4f * (float) Math.sin(t / 220.0d);
        ModCapitals.Faction fc = ModCapitals.FACTIONS[f.fi];
        float bestD = Float.MAX_VALUE, bx = 0, by = 0;
        String label = null;
        if (f.phase == 1 && ("DELIVERY".equals(f.obj) || "GATHER_AND_SELL".equals(f.obj))) {
            Station st = ModPlace.nearestStation(ps.position);
            if (st != null) {
                bestD = st.position.distance(ps.position);
                bx = st.position.x; by = st.position.y;
                label = "DELIVERY".equals(f.obj) ? ModLang.tr("DELIVER") : ModLang.tr("SELL");
            }
        } else if (f.markers != null) {
            boolean signal = "FIND_OBJECT".equals(f.obj) || "DELIVERY".equals(f.obj);
            for (int k = 0; k < f.taken.length; k++) {
                if (f.taken[k]) continue;
                float x = f.markers[k * 2], y = f.markers[k * 2 + 1];
                ModFx.spr("fx_ring", x, y, 260 * pulse, 260 * pulse, 0, fc.r, fc.g, fc.b, 0.8f, true);
                ModFx.spr("fx_glow", x, y, 180, 180, 0, fc.r, fc.g, fc.b, 0.6f + 0.3f * pulse, true);
                ModFx.spr("fx_core", x, y, 60, 60, 0, 1, 1, 1, 0.9f, true);
                float d = (float) Math.hypot(x - ps.position.x, y - ps.position.y);
                if (d < bestD) { bestD = d; bx = x; by = y; }
            }
            label = signal ? "SIGNAL" : "RESCUE".equals(f.obj) ? "PILOT" : ModLang.tr("CARGO");
        } else if ("DEFEND_ZONE".equals(f.obj)) {
            ModFx.spr("fx_ring", f.center.x, f.center.y, 3600, 3600, (t / 80.0f) % 360, fc.r, fc.g, fc.b, 0.35f, true);
            bestD = f.center.distance(ps.position);
            bx = f.center.x; by = f.center.y;
            int sec = Math.max(0, (f.goal - f.holdMs) / 1000);
            if (holdLabel == null || sec != holdSec) {
                holdLabel = "HOLD " + sec + "s";
                holdSec = sec;
            }
            label = holdLabel;
        } else if ("DEFEND_CIVILIANS".equals(f.obj) && !f.wavesOn) {
            for (CivilShip c : f.civs) {
                if (c == null || c.removed) continue;
                float d = c.position.distance(ps.position);
                if (d < bestD) { bestD = d; bx = c.position.x; by = c.position.y; }
            }
            label = ModLang.tr("CONVOY");
        } else if ("ESCORT".equals(f.obj) && f.target != null && !f.target.removed) {
            ModFx.spr("fx_ring", f.gate.x, f.gate.y, 700 * pulse, 700 * pulse, 0, 0.5f, 1.0f, 0.6f, 0.6f, true);
            bestD = f.target.position.distance(ps.position);
            bx = f.target.position.x; by = f.target.position.y;
            label = f.target.specificName;
        } else if (f.target != null && !f.target.removed) {
            bestD = f.target.position.distance(ps.position);
            bx = f.target.position.x; by = f.target.position.y;
            label = f.target.specificName;
        } else if ("SCAN_CIVIL".equals(f.obj)) {
            for (int k = 0; k < f.civs.size() && k < f.scanMs.length; k++) {
                CivilShip c = f.civs.get(k);
                if (c == null || c.removed || f.scanMs[k] < 0) continue;
                ModFx.spr("fx_ring", c.position.x, c.position.y, 900, 900, (t / 60.0f) % 360, 0.5f, 0.9f, 1.0f, 0.25f + 0.15f * pulse, true);
                float d = c.position.distance(ps.position);
                if (d < bestD) { bestD = d; bx = c.position.x; by = c.position.y; }
            }
            label = "SCAN";
        }
        if (label == null || bestD == Float.MAX_VALUE || bestD < 1100) return;
        fr.testudo.spacecorsair.display.Texture tex = fr.testudo.spacecorsair.display.Fleche.MAIN_TEXTURE;
        if (tex == null) return;
        float zoom = ObjectRegistry.INSTANCE.camera.curZDecal;
        float size = 110.0f + zoom * 0.08f;
        fr.testudo.spacecorsair.display.Drawable arrow = ModFx.arrow(tex, size);   // cached per size (was a new Drawable every frame)
        float ang = Element.normalizeSpin((((float) Math.toDegrees(Math.atan2(by - ps.position.y, bx - ps.position.x))) + 90.0f) % 360.0f);
        float radius = (ps.shipSpec != null ? ps.shipSpec.drawableSizeOfShield : 200) / 2.0f + 90.0f + zoom * 0.12f;
        pos.set(0.0f, -radius).applyRotatation(Math.toRadians(ang)).add(ps.position);
        ObjectRegistry.INSTANCE.renderQueue.addToWaitingQueue(pos, false, arrow, ang, pulse, fc.r, fc.g, fc.b);
        int m = (int) bestD;
        if (arrowText == null || label != arrowLabel || m != arrowM) {
            arrowText = label + " " + m + "m";
            arrowLabel = label;
            arrowM = m;
        }
        String txt = arrowText;
        pos.set(0.0f, -(radius + size * 0.6f)).applyRotatation(Math.toRadians(ang)).add(ps.position).add(-txt.length() * 7.0f, 0.0f);
        ObjectRegistry.INSTANCE.renderQueue.addTextToTextWaitingQueue(pos, false, txt, fc.r, fc.g, fc.b, 1.0f, fr.testudo.spacecorsair.textengine.TextSize.NORMALPLUS);
    }

    // ------------------------------------------------------------------ gates
    private void markGates(boolean on) {
        try {
            LevelId to = completed ? ModCapitals.FACTIONS[fi].hq : activeSector();
            if (to == null) return;
            if (!completed && inZone && !(phase == 1 && "ESCORT".equals(obj) && target == null && sectorIs(zone))) return;
            String cur = ObjectRegistry.INSTANCE.game.currentLevel.name;
            if (cur != null && cur.equals(to.levelName)) return;
            Portal p = ObjectRegistry.INSTANCE.game.currentLevel.findPortalByName(PathFinder.getPortalNameToGoTo(to));
            if (p != null) {
                p.isMissionObjective = on;
                p.missionObjectiveColor = MissionObjectiveColor.ORANGE;
            }
        } catch (Throwable t) {
            // markers are a convenience
        }
    }

    // ------------------------------------------------------------------ MissionListener
    @Override
    public void onZoneChanged(String str, String str2) {
        // the old sector's ships are gone with it; the plan and progress stay (Q11)
        spawned.clear();
        civs.clear();
        target = null;
        setupDone = false;
        zoneMs = 0;
        wavesOn = false;
        ModPlace.clearBoost();
        LevelId want = activeSector();
        inZone = testZone || (want != null && str != null && str.equals(want.levelName));
        markGates(true);
    }

    @Override
    public void onElementDestroyed(Element e) {
    }

    /** Q10: only the player's kills (drone kills are credited to the player by Mod.creditKiller) count. */
    @Override
    public void onElementDestroyedByPlayer(Element e) {
        if ("KILL_ENEMY_TYPE".equals(obj) && e != null && spawned.contains(e)) {
            progress++;
            save();
            PlayerShip ps = ObjectRegistry.INSTANCE.playerShip;
            if (ps != null) Mod.floatText(ps, "TARGETS " + Math.min(progress, goal) + "/" + goal, 1.0f, 0.8f, 0.4f);
        }
    }

    /** Q5 / Q6: docking at any station of the second sector hands the crate in / sells the cargo. */
    @Override
    public void onBeforePlayerDock() {
        try {
            if (completed || phase != 1 || !("DELIVERY".equals(obj) || "GATHER_AND_SELL".equals(obj))) return;
            if (!sectorIs(secondSector())) return;
            complete();
        } catch (Throwable t) {
            // never break docking
        }
    }

    @Override
    public void onPlayerDeath() {
        cleanup();
        // Q5: the crate is lost with the ship; Q22: so is gathered cargo. The points come back where they were.
        if (!completed && ("DELIVERY".equals(obj) || "GATHER_AND_SELL".equals(obj)) && planned && (phase == 1 || progress > 0)) {
            if ("DELIVERY".equals(obj)) {
                markers = new float[]{center.x, center.y};
                taken = new boolean[1];
            } else if (markers == null || phase == 1) {
                scatter(6, center, 2200);   // the cargo was all aboard: new pods around the same spot
            } else {
                for (int k = 0; k < taken.length; k++) taken[k] = false;
            }
            progress = 0;
            phase = 0;
            save();
        }
    }

    @Override
    public String getCurrentInstruction() {
        // GameRenderer.drawHud calls this every frame on the GL thread with no try/catch: never throw from here
        try {
            String r = instruction();
            return r != null ? r : "";
        } catch (Throwable t) {
            String c = instrText;
            return c != null ? c : "";
        }
    }

    private String instruction() {
        // drawn every frame (GL thread, while the game thread updates the engine): same texts as before, rebuilt only
        // when a shown value changes; the target is read once so it cannot turn null half-way
        ModCapitals.Faction f = ModCapitals.FACTIONS[fi];
        Element tg = target;
        LevelId where = activeSector();
        int branch, val = 0;
        if (completed) branch = 0;
        else if (where == null) return str(idx, 12);
        else if (!inZone) branch = 1;
        else if (phase == 1 && "DELIVERY".equals(obj)) branch = 7;
        else if (phase == 1 && "GATHER_AND_SELL".equals(obj)) branch = 8;
        else if (!setupDone) return str(idx, 12);
        else if ("DEFEND_ZONE".equals(obj)) { branch = 2; val = Math.max(0, (goal - holdMs) / 1000); }
        else if ("DEFEND_CIVILIANS".equals(obj)) { branch = wavesOn ? 3 : 9; val = wavesLeft; }
        else if ("ESCORT".equals(obj) && tg != null) { branch = 4; val = (int) tg.position.distance(gate); }
        else if ("KILL_FLAGSHIP".equals(obj) && tg != null && !tg.removed) { branch = 5; val = (int) Math.ceil(100.0f * tg.life / tg.maxLife); }
        else if (goal > 1) { branch = 6; val = Math.min(progress, goal); }
        else return str(idx, 12);
        String c = instrText;
        if (c != null && branch == instrBranch && val == instrVal && tg == instrTarget && goal == instrGoal && where == instrWhere) return c;
        String out;
        switch (branch) {
            case 0: out = ModLang.tr("Return to ") + pretty(f.hq) + ModLang.tr(" and hail the ") + f.ship; break;
            case 1: out = (phase == 1 && "DELIVERY".equals(obj) ? ModLang.tr("Deliver the crate to ") : phase == 1 && "GATHER_AND_SELL".equals(obj) ? ModLang.tr("Sell the cargo at ")
                : "Go to ") + pretty(where) + ": " + str(idx, 2); break;
            case 2: out = ModLang.tr("Hold the outpost zone: ") + val + ModLang.tr(" s left"); break;
            case 3: out = ModLang.tr("Protect the transports. Waves left: ") + val; break;
            case 4: out = ModLang.tr("Escort ") + tg.specificName + ": " + val + " m"; break;
            case 5: out = ModLang.tr("Destroy the ") + tg.specificName + ": " + val + ModLang.tr("% hull"); break;
            case 7: out = ModLang.tr("Dock at a station in ") + pretty(where) + ModLang.tr(" to deliver the crate"); break;
            case 8: out = ModLang.tr("Dock at a station in ") + pretty(where) + ModLang.tr(" to sell the cargo"); break;
            case 9: out = ModLang.tr("Meet the convoy"); break;
            default: out = str(idx, 2) + ": " + val + "/" + goal; break;
        }
        instrBranch = branch;
        instrVal = val;
        instrTarget = tg;
        instrGoal = goal;
        instrWhere = where;
        instrText = out;
        return out;
    }

    private String instrText;
    private int instrBranch = -1, instrVal, instrGoal;
    private Element instrTarget;
    private LevelId instrWhere;

    @Override
    public void init() {
        SharedPreferences p = prefs();
        completed = !contract(idx) && p != null && p.getBoolean("fm_done_" + id(idx), false);   // contracts start fresh every time
        cleanup();
        planned = false;
        phase = 0;
        zone = contract(idx) && !hunt(idx) ? ModPlace.contractSector(ModCapitals.FACTIONS[fi].hq, idx, System.currentTimeMillis() / 86400000L) : level(str(idx, 4));
        save();
        if (p != null) p.edit().putString(stateKey() + "_z", zone != null ? zone.name() : "").apply();
        ModComms.brief(key(idx), str(idx, 11));   // v37 Q13: stays until tapped
        onZoneChanged(ObjectRegistry.INSTANCE.game.currentLevel.name, null);
    }

    @Override
    public boolean isCompleted() {
        return completed;
    }

    @Override
    public void giveUp() {
        cleanup();
        terminate();
    }

    @Override
    public void terminate() {
        markGates(false);
        completed = false;
        planned = false;
        SharedPreferences p = prefs();
        if (p != null) p.edit().remove("fm_done_" + id(idx)).remove(stateKey()).remove(stateKey() + "_z").commit();
    }

    @Override
    public void restoreState() {
        SharedPreferences p = prefs();
        completed = p != null && p.getBoolean("fm_done_" + id(idx), false);
        spawned.clear();
        civs.clear();
        target = null;
        setupDone = false;
        zoneMs = 0;
        String z = p != null ? p.getString(stateKey() + "_z", null) : null;
        if (z != null && level(z) != null) zone = level(z);
        load();
    }

    @Override
    public void saveState() {
    }
}
