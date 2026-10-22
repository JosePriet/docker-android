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
                // owner 2026-10-22: at Friendly+, once a day, a renegade of the faction carries one of its cores (guaranteed). Text: Claude's draft for GPT.
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
                    for (int i = 0; i < ms.length; i++) if (hunt(i) && key(i).equals(k) && !list.contains(ms[i])) list.add(ms[i]);
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
            LevelId where = level(str(i, 4));
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

    // ------------------------------------------------------------------ engine state
    private final int idx;
    private final String obj;
    private final LevelId zone;
    private final int fi;
    private boolean completed;
    private boolean inZone;
    private boolean setupDone;
    private int zoneMs;
    private final Vector2 center = new Vector2();
    private final ArrayList<Element> spawned = new ArrayList<Element>();
    private final ArrayList<CivilShip> civs = new ArrayList<CivilShip>();
    private float[] markers;                  // x, y pairs
    private boolean[] taken;
    private int[] scanMs;
    private Element target;                   // bounty, relay, courier or flagship
    private GuardianCivilShip ally;
    private int progress, goal;
    private int timer, wavesLeft, holdMs;
    private boolean ambushed, ambushed2;
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
        if (p != null) p.edit().putBoolean("fm_done_" + id(idx), true).commit();
        WelcomeMessage.setText(ObjectRegistry.INSTANCE.getStringRessource(fr.testudo.spacecorsair.R.string.missionSuccess), str(idx, 2));
        ModComms.show(key(idx), str(idx, 13), 9000);
        markGates(true);
    }

    private void fail() {
        cleanup();
        ModAlerts.missionResult(false);
        ModComms.show(key(idx), str(idx, 14), 9000);
        Mission.setMissionFailure(str(idx, 14));
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

    private int side() {
        String k = key(idx);
        if (k.equals("kretari") || (k.equals("reaver") && order(idx) < 3)) return VARN;
        if (k.equals("varn") && order(idx) == 2) return WARDEN;
        return REAVER;
    }

    private Ennemis foe(int side, boolean big) {
        int lvl = foeLevel();
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

    private Ennemis place(Ennemis e, Vector2 at, Element attack, boolean objective) {
        if (e == null) return null;
        e.position.setSameAs(at);
        e.updateSapCoords();
        e.desengagementDistance = 9000.0f;
        if (objective) {
            e.isMissionObjective = true;
            e.missionObjectiveColor = MissionObjectiveColor.RED;
        }
        PlayerShip ps = ObjectRegistry.INSTANCE.playerShip;
        e.initAttackTarget(attack != null && !attack.removed ? attack : ps);
        e.addToCurrentLevel();
        spawned.add(e);
        return e;
    }

    private void wave(int n, Vector2 around, float dist, Element attack, boolean big) {
        for (int k = 0; k < n; k++) {
            double a = Math.random() * Math.PI * 2.0d;
            Vector2 p = new Vector2(around).add((float) (Math.cos(a) * dist), (float) (Math.sin(a) * dist));
            place(foe(side(), big && k == 0), p, attack, true);
        }
    }

    private static Vector2 away(Vector2 from, float min, float max) {
        double a = Math.random() * Math.PI * 2.0d;
        float d = min + (float) Math.random() * (max - min);
        return new Vector2(from).add((float) (Math.cos(a) * d), (float) (Math.sin(a) * d));
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

    private CivilShip civil(Vector2 at, boolean transport) {
        int lvl = Math.max(1, minLevel(idx) - 2);
        CivilShip c = transport ? CivilFactory.newTrasnporteur(lvl) : CivilFactory.newRandomCivil(lvl, lvl);
        if (c == null) return null;
        c.position.setSameAs(at);
        ObjectRegistry.INSTANCE.game.currentLevel.toAdd.add(c);
        civs.add(c);
        return c;
    }

    private void setup() {
        setupDone = true;
        PlayerShip ps = ObjectRegistry.INSTANCE.playerShip;
        if (ps == null) return;
        center.setSameAs(away(ps.position, 2600, 3400));
        ambushed = ambushed2 = false;
        progress = 0;
        if ("FIND_OBJECT".equals(obj) || "DELIVERY".equals(obj)) {
            Vector2 p = away(ps.position, 4500, 6000);
            markers = new float[]{p.x, p.y};
            taken = new boolean[1];
            goal = 1;
        } else if ("GATHER_AND_SELL".equals(obj)) {
            scatter(6, center, 2200);
        } else if ("RESCUE".equals(obj)) {
            scatter(Math.max(1, num(idx, 7)), center, 3200);
        } else if ("DEFEND_CIVILIANS".equals(obj)) {
            Vector2 dest = away(center, 4500, 5000);
            for (int k = 0; k < 4; k++) {
                CivilShip c = civil(away(center, 100, 450), true);
                if (c == null) continue;
                c.maxLife *= 3;
                c.life = c.maxLife;
                name(c, ModLang.tr("Evacuee transport"));
                c.isMissionObjective = true;
                c.missionObjectiveColor = MissionObjectiveColor.GREEN;
                c.setActivity(new CivilActivity[]{CivilActivity.newMoove(dest.x + (k - 1.5f) * 250, dest.y)});
            }
            wavesLeft = 4;
            timer = 6000;
        } else if ("DEFEND_ZONE".equals(obj)) {
            ally = ModCapitals.ensure(str(idx, 8), false);
            if (ally != null) center.setSameAs(ally.position);
            goal = Math.max(30, num(idx, 7)) * 1000;
            holdMs = 0;
            timer = 4000;
        } else if ("BOUNTY".equals(obj)) {
            boolean varn = str(idx, 9).equals("Scoria") || side() == VARN;
            Ennemis b = varn ? EnnemisFactory.newFrelon(foeLevel() + 1) : foe(REAVER, true);
            if (b != null) {
                b.setElite(true);
                name(b, str(idx, 9));
                b.maxLife *= 4;
                b.life = b.maxLife;
                b.lifeInPourc = 100;
                if (b.lifeBar != null) b.lifeBar.setValue(100);
                target = place(b, center, ps, true);
                for (int k = 0; k < 2; k++) place(foe(varn ? VARN : REAVER, false), away(center, 150, 400), ps, false);
            }
        } else if ("KILL_ENEMY_TYPE".equals(obj)) {
            goal = Math.max(1, num(idx, 7));
            wave(Math.min(3, goal), center, 300, ps, false);
        } else if ("DESTROY_STATION".equals(obj)) {
            Ennemis r = EnnemisFactory.newRocketTourelle(foeLevel() + 1);
            if (r != null) {
                r.setElite(true);
                name(r, (contract(idx) || ModV35.finale(order(idx))) && str(idx, 9).length() > 0 ? str(idx, 9) : "Authority Relay Station");
                r.maxLife *= 8;
                r.life = r.maxLife;
                r.lifeInPourc = 100;
                if (r.lifeBar != null) r.lifeBar.setValue(100);
                target = place(r, center, ps, true);
                for (int k = 0; k < 3; k++) place(foe(ModV35.finale(order(idx)) ? side() : WARDEN, false), away(center, 300, 600), ps, false);
            }
        } else if ("ESCORT".equals(obj)) {
            CivilShip c = civil(away(ps.position, 250, 350), true);
            if (c != null) {
                name(c, str(idx, 9));
                c.maxLife *= 6;
                c.life = c.maxLife;
                c.isMissionObjective = true;
                c.missionObjectiveColor = MissionObjectiveColor.GREEN;
                target = c;
                LevelId dest = level(str(idx, 10));
                Portal p = null;
                try {
                    if (dest != null) p = ObjectRegistry.INSTANCE.game.currentLevel.findPortalByName(PathFinder.getPortalNameToGoTo(dest));
                } catch (Throwable t) {
                    p = null;
                }
                gate.setSameAs(p != null ? p.position : away(ps.position, 6000, 6500));
                c.setActivity(new CivilActivity[]{CivilActivity.newMoove(gate.x, gate.y)});
                startDist = Math.max(1, c.position.distance(gate));
                lastCourier.setSameAs(c.position);
                courierCheck = 10000;
            }
        } else if ("SCAN_CIVIL".equals(obj)) {
            goal = Math.max(1, num(idx, 7));
            scanMs = new int[goal];
            for (int k = 0; k < goal; k++) {
                Vector2 at = away(center, 300, 2600);
                CivilShip c = civil(at, false);
                if (c == null) continue;
                c.isMissionObjective = true;
                c.missionObjectiveColor = MissionObjectiveColor.ORANGE;
                c.setActivity(new CivilActivity[]{CivilActivity.newMooveRandom(at.x, at.y, 900), CivilActivity.newMooveRandom(at.x, at.y, 900)});
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
        ally = null;
        markers = null;
        setupDone = false;
        zoneMs = 0;
    }

    // ------------------------------------------------------------------ per frame
    @Override
    public void onDoPhysic(long j) {
        PlayerShip ps = ObjectRegistry.INSTANCE.playerShip;
        if (completed || !inZone || ps == null || ps.removed) return;
        if (!setupDone) {
            // wait for the sector (and its flagship) to be built before placing anything
            zoneMs += j;
            if (zoneMs > 1500 && !ps.isDocked) setup();
            return;
        }
        if (markers != null) {
            for (int k = 0; k < taken.length; k++) {
                if (taken[k]) continue;
                float dx = markers[k * 2] - ps.position.x, dy = markers[k * 2 + 1] - ps.position.y;
                float d = (float) Math.sqrt(dx * dx + dy * dy);
                if (!ambushed && d < 1300 && ("FIND_OBJECT".equals(obj) || "DELIVERY".equals(obj))) {
                    ambushed = true;
                    wave("DELIVERY".equals(obj) ? 3 : 2, ps.position, 1500, ps, false);
                    Mod.floatText(ps, ModLang.tr("CONTACTS INBOUND"), 1.0f, 0.4f, 0.3f);
                }
                if (d < 220) {
                    taken[k] = true;
                    progress++;
                    ObjectRegistry.INSTANCE.soundManager.playGateZap();
                    String what = "RESCUE".equals(obj) ? ModLang.tr("PILOT RECOVERED") : "GATHER_AND_SELL".equals(obj) ? "SALVAGE" : "SECURED";
                    Mod.floatText(ps, what + (goal > 1 ? " " + progress + "/" + goal : ""), 0.5f, 1.0f, 0.6f);
                    if (!ambushed && goal > 1 && progress == (goal + 1) / 2) {
                        ambushed = true;
                        wave(2, ps.position, 1500, ps, false);
                    }
                }
            }
            if (progress >= goal) complete();
            return;
        }
        if ("DEFEND_CIVILIANS".equals(obj)) {
            int alive = 0;
            for (CivilShip c : civs) if (c != null && !c.removed && c.life > 0) alive++;
            if (alive < 2) { fail(); return; }
            timer -= j;
            if (wavesLeft > 0 && timer <= 0) {
                wavesLeft--;
                timer = 20000;
                Vector2 at = civs.isEmpty() ? center : civs.get(0).position;
                for (int k = 0; k < 3; k++) {
                    Element victim = civs.get((int) (Math.random() * civs.size()));
                    double a = Math.random() * Math.PI * 2.0d;
                    place(foe(REAVER, k == 0), new Vector2(at).add((float) (Math.cos(a) * 1600), (float) (Math.sin(a) * 1600)), k == 0 ? ps : victim, true);
                }
                Mod.floatText(ps, ModLang.tr("RAIDERS INBOUND (") + (4 - wavesLeft) + "/4)", 1.0f, 0.4f, 0.3f);
            }
            if (wavesLeft == 0 && liveFoes() == 0) complete();
        } else if ("DEFEND_ZONE".equals(obj)) {
            if (ally != null && ally.removed && ally.life <= 0) { fail(); return; }
            if (ally != null && !ally.removed) center.setSameAs(ally.position);
            if (ps.position.distance(center) < 1800) holdMs += j;
            timer -= j;
            if (timer <= 0) {
                timer = 15000;
                wave(3, center, 2600, null, true);
                for (int k = spawned.size() - 1, n = 0; k >= 0 && n < 2; k--) {
                    Element e = spawned.get(k);
                    if (e instanceof Ennemis && ally != null && !ally.removed) { ((Ennemis) e).initAttackTarget(ally); n++; }
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
            if (alive < 2 && progress + alive < goal) wave(Math.min(2, goal - progress - alive), away(ps.position, 1800, 2400), 200, ps, false);
        } else if ("ESCORT".equals(obj)) {
            if (target == null) return;
            if (target.removed || target.life <= 0) {
                if (target.position.distance(gate) < 700) complete(); else fail();
                return;
            }
            float prog = 1 - target.position.distance(gate) / startDist;
            if (!ambushed && prog > 0.3f) { ambushed = true; wave(3, target.position, 1500, target, false); Mod.floatText(ps, "AMBUSH!", 1.0f, 0.4f, 0.3f); }
            if (!ambushed2 && prog > 0.65f) { ambushed2 = true; wave(3, target.position, 1500, target, true); Mod.floatText(ps, "AMBUSH!", 1.0f, 0.4f, 0.3f); }
            if (target.position.distance(gate) < 450) {
                target.remove();
                complete();
                return;
            }
            courierCheck -= j;
            if (courierCheck <= 0) {
                // keep the courier on its way if a fight knocked it off its route
                courierCheck = 10000;
                if (target.position.distance(lastCourier) < 60 && target instanceof CivilShip) {
                    ((CivilShip) target).setActivity(new CivilActivity[]{CivilActivity.newMoove(gate.x, gate.y)});
                }
                lastCourier.setSameAs(target.position);
            }
        } else if ("SCAN_CIVIL".equals(obj)) {
            for (int k = 0; k < civs.size() && k < scanMs.length; k++) {
                CivilShip c = civs.get(k);
                if (c == null || scanMs[k] < 0) continue;
                if (c.removed) { scanMs[k] = -1; progress++; continue; }
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
                            wave(2, c.position, 600, ps, false);
                        }
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
        if (f.markers != null) {
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
            label = signal ? "SIGNAL" : "RESCUE".equals(f.obj) ? "PILOT" : "SALVAGE";
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
            LevelId to = completed ? ModCapitals.FACTIONS[fi].hq : zone;
            if (to == null) return;
            if (!completed && inZone) return;
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
        spawned.clear();
        civs.clear();
        target = null;
        ally = null;
        markers = null;
        setupDone = false;
        zoneMs = 0;
        inZone = testZone || (zone != null && str != null && str.equals(zone.levelName));
        markGates(true);
    }

    @Override
    public void onElementDestroyed(Element e) {
        if ("KILL_ENEMY_TYPE".equals(obj) && e != null && spawned.contains(e)) {
            progress++;
            PlayerShip ps = ObjectRegistry.INSTANCE.playerShip;
            if (ps != null) Mod.floatText(ps, "TARGETS " + Math.min(progress, goal) + "/" + goal, 1.0f, 0.8f, 0.4f);
        }
    }

    @Override
    public void onElementDestroyedByPlayer(Element e) {
    }

    @Override
    public void onPlayerDeath() {
        cleanup();
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
        int branch, val = 0;
        if (completed) branch = 0;
        else if (zone == null) return str(idx, 12);
        else if (!inZone) branch = 1;
        else if (!setupDone) return str(idx, 12);
        else if ("DEFEND_ZONE".equals(obj)) { branch = 2; val = Math.max(0, (goal - holdMs) / 1000); }
        else if ("DEFEND_CIVILIANS".equals(obj)) { branch = 3; val = wavesLeft; }
        else if ("ESCORT".equals(obj) && tg != null) { branch = 4; val = (int) tg.position.distance(gate); }
        else if ("KILL_FLAGSHIP".equals(obj) && tg != null && !tg.removed) { branch = 5; val = (int) Math.ceil(100.0f * tg.life / tg.maxLife); }
        else if (goal > 1) { branch = 6; val = Math.min(progress, goal); }
        else return str(idx, 12);
        String c = instrText;
        if (c != null && branch == instrBranch && val == instrVal && tg == instrTarget && goal == instrGoal) return c;
        String out;
        switch (branch) {
            case 0: out = ModLang.tr("Return to ") + pretty(f.hq) + ModLang.tr(" and hail the ") + f.ship; break;
            case 1: out = "Go to " + pretty(zone) + ": " + str(idx, 2); break;
            case 2: out = ModLang.tr("Hold the zone beside the ") + f.ship + ": " + val + ModLang.tr(" s left"); break;
            case 3: out = ModLang.tr("Protect the transports. Waves left: ") + val; break;
            case 4: out = ModLang.tr("Escort ") + tg.specificName + ModLang.tr(" to the gate: ") + val + " m"; break;
            case 5: out = ModLang.tr("Destroy the ") + tg.specificName + ": " + val + ModLang.tr("% hull"); break;
            default: out = str(idx, 2) + ": " + val + "/" + goal; break;
        }
        instrBranch = branch;
        instrVal = val;
        instrTarget = tg;
        instrGoal = goal;
        instrText = out;
        return out;
    }

    private String instrText;
    private int instrBranch = -1, instrVal, instrGoal;
    private Element instrTarget;

    @Override
    public void init() {
        SharedPreferences p = prefs();
        completed = !contract(idx) && p != null && p.getBoolean("fm_done_" + id(idx), false);   // contracts start fresh every time
        cleanup();
        ModComms.show(key(idx), str(idx, 11), 12000);
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
        SharedPreferences p = prefs();
        if (p != null) p.edit().remove("fm_done_" + id(idx)).commit();
    }

    @Override
    public void restoreState() {
        SharedPreferences p = prefs();
        completed = p != null && p.getBoolean("fm_done_" + id(idx), false);
        spawned.clear();
        civs.clear();
        target = null;
        markers = null;
        setupDone = false;
        zoneMs = 0;
    }

    @Override
    public void saveState() {
    }
}
