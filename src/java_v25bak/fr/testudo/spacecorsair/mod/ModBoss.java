package fr.testudo.spacecorsair.mod;

import fr.testudo.spacecorsair.business.Element;
import fr.testudo.spacecorsair.business.Util;
import fr.testudo.spacecorsair.business.ennemis.Ennemis;
import fr.testudo.spacecorsair.business.ennemis.EnnemisFactory;
import fr.testudo.spacecorsair.business.factory.GamePools;
import fr.testudo.spacecorsair.business.loot.SpaceObject;
import fr.testudo.spacecorsair.business.loot.SpaceObjectType;
import fr.testudo.spacecorsair.business.loot.stuff.alteration.AlterationSpecsBuilder;
import fr.testudo.spacecorsair.business.mission.Mission;
import fr.testudo.spacecorsair.business.mission.MissionListener;
import fr.testudo.spacecorsair.business.mission.MissionObjectiveColor;
import fr.testudo.spacecorsair.business.mission.MissionReward;
import fr.testudo.spacecorsair.business.player.PlayerShip;
import fr.testudo.spacecorsair.business.projectiles.LaserBeam;
import fr.testudo.spacecorsair.business.projectiles.Projectile;
import fr.testudo.spacecorsair.business.world.PathFinder;
import fr.testudo.spacecorsair.business.world.Portal;
import fr.testudo.spacecorsair.business.world.station.Station;
import fr.testudo.spacecorsair.display.ShockWave;
import fr.testudo.spacecorsair.display.hud.WelcomeMessage;
import fr.testudo.spacecorsair.engine.ObjectRegistry;
import fr.testudo.spacecorsair.engine.Vector2;
import fr.testudo.spacecorsair.game.levels.LevelId;
import java.util.ArrayList;
import java.util.List;

/** Boss encounter missions: one per mission hub, each boss with its own gimmicks. */
public class ModBoss extends MissionListener {
    public static final int MATRIARCH = 0, GUARDIAN = 1, EMPRESS = 2;
    /** Fake string ids for mission descriptions, resolved by text(). */
    public static final int TEXT_BASE = 0x7F7F0000;

    private static final String[] NAMES = {"Banshee Matriarch", "Guardian Prime", "Hive Empress"};
    private static final String[] MISSION_NAMES = {"The Matriarch", "Rogue Cruiser", "Queen of the Hive"};
    private static final String[] DESC = {
        "Long-range scanners picked up an enormous Banshee UFO hunting convoys in the <b>Hermes</b> sector. "
            + "Pilots call her the Matriarch.<br><br><b>Known behaviour</b>: she blinks next to her prey every few seconds, "
            + "and below a third of her hull she calls Arwing escorts, burns twice as hard and blinks more often.<br><br>"
            + "<b>Reward</b>: Banshee Beam Lev. 5 and Arwing Plasma Bolt Lev. 5.",
        "A Guardian-class cruiser has stopped answering SPARTAN command codes and is shelling traffic in the <b>Solar Field</b>. "
            + "SPARTAN wants it gone before the press hears about it.<br><br><b>Known behaviour</b>: repulsion shockwaves that also burn your hull "
            + "if you get within 450, heavy missile salvos, and at two thirds and one third of its hull it raises an "
            + "invulnerable SPARTAN shield for 6 seconds and launches two Defensor escorts.<br><br>"
            + "<b>Reward</b>: Megatron Heavy Battery Lev. 10 and Megatron Salvo Missile Lev. 10.",
        "The alien hive has crowned an Empress. Her command ship sits deep in <b>The Hive</b>, spawning broods without end.<br><br>"
            + "<b>Known behaviour</b>: everything a Regent does, plus volleys of three rooting shots every 8 seconds, a venom aura that burns "
            + "anything within 500, and once she drops under 30% she regenerates 20% of her hull and releases two Banshees.<br><br>"
            + "<b>Reward</b>: Regent Venom Beam Lev. 15 and Regent Hive Bay Lev. 15."
    };
    private static final String DONE = "Target destroyed. The reward has been transferred to your hold.";

    public static String text(int id) {
        int k = id - TEXT_BASE;
        if (k >= 0 && k < 3) return DESC[k];
        if (k >= 10 && k < 13) return "<b>" + NAMES[k - 10] + "</b> destroyed.<br><br>" + DONE;
        return ModFaction.text(id);
    }

    /** Hook at the end of each hub's mission loader. */
    public static void addMissions(String area, List<Mission> list) {
        if (list == null) return;
        try {
            if ("VENTOHIGH".equals(area)) {
                list.add(make("VENTOHIGH_MOD_BOSS_MATRIARCH", MATRIARCH, 7, LevelId.HERMES, LevelId.VENTOHIGH,
                    fr.testudo.spacecorsair.business.world.UniverseName.STATION_VENTOHIGH_COMMAND,
                    new String[]{"alienBeamLaserL5", "arwingBoltLaserL5"}, 3000, 25000));
            } else if ("SPARTAN".equals(area)) {
                list.add(make("SPARTAN_MOD_BOSS_GUARDIAN", GUARDIAN, 10, LevelId.SOLAR_FIELD, LevelId.SPARTAN_HQ,
                    "spartan headquarters", new String[]{"megatronBatteryL10", "megatronSalvoL10"}, 6000, 60000));
            } else if ("OMICRON".equals(area)) {
                list.add(make("OMICRON_MOD_BOSS_EMPRESS", EMPRESS, 14, LevelId.THE_HIVE, LevelId.OMICRON_PRIME,
                    fr.testudo.spacecorsair.business.world.UniverseName.STATION_OMICRON_PRIME_SPACEPORT,
                    new String[]{"regentBeamLaserL15", "regentHiveBayL15"}, 12000, 150000));
            }
        } catch (Exception e) {
            // never break a mission hub
        }
    }

    private static Mission make(String id, int kind, int level, LevelId zone, LevelId hub, String station, String[] rewards, int xp, int credits) {
        List<SpaceObject> loot = new ArrayList<SpaceObject>();
        for (String r : rewards) {
            loot.add(SpaceObject.of(SpaceObjectType.valueOf(r)));
        }
        ModBoss engine = new ModBoss(kind, level, zone, hub, station);
        Mission m = new Mission(id, fr.testudo.spacecorsair.R.string.missionGenesisTuerChefPillard, TEXT_BASE + kind, TEXT_BASE + 10 + kind,
            false, level, engine, MissionReward.withObject(loot, xp, credits), false);
        m.localizedName = MISSION_NAMES[kind];
        return m;
    }

    public static void tick(PlayerShip ps, long j) {
        // bosses run their gimmicks from their mission engine
    }

    private static final Vector2 pos = new Vector2();
    private static String distText;
    private static int distKind = -1, distM = -1;

    /** Big red tracker arrow around the ship, pointing at the boss whenever the boss is off-screen. */
    public static void draw(PlayerShip ps) {
        if (ObjectRegistry.INSTANCE.currentMission == null) return;
        MissionListener l = ObjectRegistry.INSTANCE.currentMission.missionEngine;
        if (!(l instanceof ModBoss)) return;
        Ennemis b = ((ModBoss) l).boss;
        if (b == null || b.removed || ps.removed) return;
        if (fr.testudo.spacecorsair.engine.GameThread.isElementVisible(b)) return;
        fr.testudo.spacecorsair.display.Texture tex = fr.testudo.spacecorsair.display.Fleche.MAIN_TEXTURE;
        if (tex == null) return;
        float zoom = ObjectRegistry.INSTANCE.camera.curZDecal;
        float size = 130.0f + zoom * 0.08f;
        fr.testudo.spacecorsair.display.Drawable arrow = ModFx.arrow(tex, size);   // cached per size (was a new Drawable every frame)
        float ang = Element.normalizeSpin((((float) Math.toDegrees(ps.position.getAngularWithInRad(b.position))) % 360.0f) + 90.0f);
        float radius = (ps.shipSpec != null ? ps.shipSpec.drawableSizeOfShield : 200) / 2.0f + 90.0f + zoom * 0.12f;
        pos.set(0.0f, -radius).applyRotatation(Math.toRadians(ang)).add(ps.position);
        float pulse = 0.6f + 0.4f * (float) Math.abs(Math.sin(System.currentTimeMillis() / 250.0d));
        ObjectRegistry.INSTANCE.renderQueue.addToWaitingQueue(pos, false, arrow, ang, pulse, 1.0f, 0.15f, 0.15f);
        int kind = ((ModBoss) l).kind, m = (int) b.position.distance(ps.position);
        if (distText == null || kind != distKind || m != distM) {
            distText = NAMES[kind] + " " + m + "m";
            distKind = kind;
            distM = m;
        }
        String txt = distText;
        pos.set(0.0f, -(radius + size * 0.6f)).applyRotatation(Math.toRadians(ang)).add(ps.position).add(-txt.length() * 7.0f, 0.0f);
        ObjectRegistry.INSTANCE.renderQueue.addTextToTextWaitingQueue(pos, false, txt, 1.0f, 0.3f, 0.3f, 1.0f, fr.testudo.spacecorsair.textengine.TextSize.NORMALPLUS);
    }

    // ------------------------------------------------------------------ engine

    private final int kind;
    private final int level;
    private final LevelId zone;
    private final LevelId hub;
    private final String station;
    private final Vector2 spawn = new Vector2(5500.0f, 1500.0f);
    private final Vector2 tmp = new Vector2();
    private Ennemis boss;
    private boolean completed;
    private boolean inZone;
    private boolean inHub;
    private boolean introDone;
    private boolean enraged;
    private boolean shield66;
    private boolean shield33;
    private int timerA;
    private int timerB;
    private int invulnTimer;

    private ModBoss(int kind, int level, LevelId zone, LevelId hub, String station) {
        this.kind = kind;
        this.level = level;
        this.zone = zone;
        this.hub = hub;
        this.station = station;
    }

    public static boolean isBoss(Element e) {
        if (ObjectRegistry.INSTANCE.currentMission == null) return false;
        MissionListener l = ObjectRegistry.INSTANCE.currentMission.missionEngine;
        return (l instanceof ModBoss) && ((ModBoss) l).boss == e && e != null;
    }

    private void spawnBoss() {
        int lvl = level + 2;
        Ennemis b;
        float lifeMult;
        if (kind == MATRIARCH) {
            b = EnnemisFactory.newUfo(lvl);
            lifeMult = 10.0f;
        } else if (kind == GUARDIAN) {
            b = EnnemisFactory.newAlbatros(lvl);
            lifeMult = 2.5f;
        } else {
            b = EnnemisFactory.newAlienBlatte(lvl);
            lifeMult = 2.0f;
        }
        b.setElite(true);
        b.setSpecificName(NAMES[kind]);
        b.maxLife = b.maxLife * lifeMult;
        b.life = b.maxLife;
        b.lifeInPourc = 100.0f;
        b.bulletDamage *= 1.5f;
        if (b.lifeBar != null) b.lifeBar.setValue(100.0f);
        b.setPosition(spawn);
        b.isMissionObjective = true;
        b.missionObjectiveColor = MissionObjectiveColor.RED;
        b.desengagementDistance = 20000.0f;
        b.radarPointSize += 4.0f;
        ObjectRegistry.INSTANCE.game.currentLevel.toAdd.add(b);
        boss = b;
        enraged = false;
        shield66 = false;
        shield33 = false;
        timerA = 4000;
        timerB = 6000;
        invulnTimer = 0;
    }

    private static void wave(Vector2 at, float r, float g, float b, float size) {
        ShockWave w = GamePools.newShockWave().init(at, 50.0f, size, 600.0f);
        w.r = r;
        w.g = g;
        w.b = b;
        ObjectRegistry.INSTANCE.game.currentLevel.toAddDrawOnly.add(w);
    }

    private void escort(int type, int count) {
        PlayerShip ps = ObjectRegistry.INSTANCE.playerShip;
        for (int i = 0; i < count; i++) {
            Ennemis e;
            if (type == 0) e = EnnemisFactory.newAlienRat(level);
            else if (type == 1) e = EnnemisFactory.newDefensor(level);
            else e = EnnemisFactory.newUfo(level);
            tmp.setSameAs(boss.position).add((float) (Math.random() * 400 - 200), (float) (Math.random() * 400 - 200));
            e.position.setSameAs(tmp);
            e.updateSapCoords();
            e.initAttackTarget(ps);
            e.addToCurrentLevel();
        }
    }

    private void bossPhysic(long j) {
        PlayerShip ps = ObjectRegistry.INSTANCE.playerShip;
        if (boss == null || boss.removed || ps == null || ps.removed) return;
        float dist = boss.position.distance(ps.position);
        float hp = boss.life / boss.maxLife;
        if (!introDone && dist < 2500.0f) {
            introDone = true;
            Mod.floatText(ps, NAMES[kind].toUpperCase() + " ENGAGED", 1.0f, 0.3f, 0.3f);
            ObjectRegistry.INSTANCE.soundManager.playDanger();
            boss.initAttackTarget(ps);
        }
        if (!introDone) return;
        timerA = (int) (timerA - j);
        timerB = (int) (timerB - j);

        if (kind == MATRIARCH) {
            if (!enraged && hp < 0.35f) {
                enraged = true;
                boss.pouseeForce *= 1.6f;
                LaserBeam beam = beamOf(boss);
                if (beam != null) beam.damage *= 2.0f;
                escort(0, 2);
                Mod.floatText(boss, "ENRAGED", 1.0f, 0.2f, 0.2f);
            }
            if (timerA <= 0 && dist < 3000.0f) { // blink next to the prey
                wave(boss.position, 0.7f, 0.2f, 0.9f, 400.0f);
                double a = Math.random() * Math.PI * 2.0d;
                boss.position.setSameAs(ps.position).add((float) (Math.cos(a) * 480.0d), (float) (Math.sin(a) * 480.0d));
                boss.updateSapCoords();
                boss.speed.set(0.0f, 0.0f);
                wave(boss.position, 0.7f, 0.2f, 0.9f, 400.0f);
                ObjectRegistry.INSTANCE.soundManager.playGateZap();
                timerA = enraged ? 4000 : 7000;
            }
        } else if (kind == GUARDIAN) {
            if (invulnTimer > 0) {
                invulnTimer = (int) (invulnTimer - j);
                if (timerB <= 0) {
                    wave(boss.position, 0.3f, 0.6f, 1.0f, 500.0f);
                    timerB = 500;
                }
                if (invulnTimer <= 0) {
                    boss.invincible = false;
                    Mod.floatText(boss, "SHIELD DOWN", 0.4f, 0.8f, 1.0f);
                }
            } else if ((!shield66 && hp < 0.66f) || (!shield33 && hp < 0.33f)) {
                if (hp < 0.33f) shield33 = true;
                shield66 = true;
                boss.invincible = true;
                invulnTimer = 6000;
                timerB = 0;
                escort(1, 2);
                Mod.floatText(boss, "SPARTAN SHIELD UP", 0.4f, 0.8f, 1.0f);
            }
            if (timerA <= 0) {
                if (dist < 450.0f + boss.getPhysicDimension().x / 2.0f) {
                    Util.applyShockWaveOnPlayer(boss, 300, 1000, 800);
                    ps.applyDamage(ps.maxLife * 0.04f, boss, null);
                    ObjectRegistry.INSTANCE.soundManager.playShockWave();
                }
                timerA = 1500;
            }
        } else {
            if (!enraged && hp < 0.30f) {
                enraged = true;
                boss.setNewLife(Math.min(boss.maxLife, boss.life + boss.maxLife * 0.2f));
                if (boss.lifeBar != null) boss.lifeBar.setValue(boss.lifeInPourc);
                escort(2, 2);
                Mod.floatText(boss, "BROOD SURGE", 0.4f, 1.0f, 0.4f);
            }
            if (timerA <= 0 && dist < 2200.0f) { // three rooting shots
                for (int k = -1; k <= 1; k++) {
                    Vector2 calc = new Vector2(ps.position).add((ps.speed.x * 1000.0f) / 10.0f, (ps.speed.y * 1000.0f) / 10.0f);
                    double deg = Math.toDegrees(calc.getAngularWithInRad(boss.position)) - 90.0d + (k * 15);
                    Projectile p = GamePools.newElectricBullet().init(boss.bulletDamage, 8, boss, AlterationSpecsBuilder.root100_4sec);
                    p.position.setSameAs(boss.position);
                    p.speed.set(0.0f, -11.0f);
                    p.speed.applyRotatation(Math.toRadians(deg));
                    p.spin = (float) deg;
                    ObjectRegistry.INSTANCE.game.currentLevel.toAdd.add(p);
                }
                ObjectRegistry.INSTANCE.soundManager.playAlienRatLaser();
                timerA = 8000;
            }
            if (timerB <= 0) { // venom aura
                if (dist < 500.0f + boss.getPhysicDimension().x / 2.0f) {
                    ps.applyDamage(ps.maxLife * 0.03f, boss, null);
                    fr.testudo.spacecorsair.display.ParticuleFactory.addGreen(ps, 3);
                }
                wave(boss.position, 0.3f, 1.0f, 0.3f, 800.0f);
                timerB = 2000;
            }
        }
    }

    private static LaserBeam beamOf(Ennemis d) {
        try {
            java.lang.reflect.Field fp = d.getClass().getDeclaredField("fakeProjectile");
            fp.setAccessible(true);
            return (LaserBeam) fp.get(d);
        } catch (Exception e) {
            return null;
        }
    }

    private void markGates(boolean on) {
        try {
            if (!completed) {
                if (!inZone) {
                    Portal p = ObjectRegistry.INSTANCE.game.currentLevel.findPortalByName(PathFinder.getPortalNameToGoTo(zone));
                    if (p != null) {
                        p.isMissionObjective = on;
                        p.missionObjectiveColor = MissionObjectiveColor.ORANGE;
                    }
                }
            } else {
                if (inHub) {
                    Station s = ObjectRegistry.INSTANCE.game.currentLevel.findStationByName(station);
                    if (s != null) {
                        s.isMissionObjective = on;
                        s.missionObjectiveColor = MissionObjectiveColor.ORANGE;
                    }
                }
                Portal p = ObjectRegistry.INSTANCE.game.currentLevel.findPortalByName(PathFinder.getPortalNameToGoTo(hub));
                if (p != null) {
                    p.isMissionObjective = on;
                    p.missionObjectiveColor = MissionObjectiveColor.ORANGE;
                }
            }
        } catch (Exception e) {
            // markers are a convenience
        }
    }

    private void onBossDead() {
        if (completed) return;
        completed = true;
        boss = null;
        WelcomeMessage.setText(ObjectRegistry.INSTANCE.getStringRessource(fr.testudo.spacecorsair.R.string.missionSuccess), NAMES[kind] + " destroyed");
        ModLoot.bossBonus(kind);
        markGates(true);
    }

    @Override
    public void onZoneChanged(String str, String str2) {
        boss = null;
        introDone = false;
        inZone = str != null && str.equals(zone.levelName);
        inHub = str != null && str.equals(hub.levelName);
        if (inZone && !completed) {
            spawnBoss();
        }
        markGates(true);
    }

    @Override
    public void onElementDestroyed(Element element) {
        if (boss != null && element == boss) onBossDead();
    }

    @Override
    public void onElementDestroyedByPlayer(Element element) {
        if (boss != null && element == boss) onBossDead();
    }

    @Override
    public void onDoPhysic(long j) {
        bossPhysic(j);
    }

    @Override
    public void onPlayerDeath() {
    }

    @Override
    public String getCurrentInstruction() {
        // GameRenderer.drawHud calls this every frame on the GL thread with no try/catch, while the game thread may
        // clear the boss: read it once, and never throw from here
        try {
            String r = instruction();
            return r != null ? r : "";
        } catch (Throwable t) {
            String c = instr;
            return c != null ? c : "";
        }
    }

    private String instruction() {
        if (completed) {
            return inHub ? "Dock at " + station + " to claim your reward" : "Return to " + hub.levelName;
        }
        if (!inZone) {
            return "Go to " + zone.levelName + " and hunt the " + NAMES[kind];
        }
        Ennemis boss = this.boss;
        if (boss == null || boss.removed) {
            return "Destroy the " + NAMES[kind];
        }
        PlayerShip ps = ObjectRegistry.INSTANCE.playerShip;
        int pct = (int) Math.ceil(100.0f * boss.life / boss.maxLife);
        int dist = ps != null ? (int) boss.position.distance(ps.position) : Integer.MIN_VALUE;
        boolean inv = boss.invincible;
        // drawn every frame (GL thread): rebuilt only when a shown value changes
        String cached = instr;
        if (cached != null && pct == instrPct && dist == instrDist && inv == instrInv) return cached;
        StringBuilder sb = new StringBuilder();
        sb.append(NAMES[kind].toUpperCase()).append("  HP ").append(pct).append("%  ");
        int filled = Math.max(0, Math.min(10, pct / 10));
        for (int i = 0; i < 10; i++) sb.append(i < filled ? '|' : '.');
        if (ps != null) {
            sb.append("  ").append(dist).append(" m");
        }
        if (inv) sb.append("  [SHIELDED]");
        String out = sb.toString();
        instrPct = pct;
        instrDist = dist;
        instrInv = inv;
        instr = out;
        return out;
    }

    private String instr;
    private int instrPct, instrDist;
    private boolean instrInv;

    @Override
    public void init() {
        completed = false;
        boss = null;
        introDone = false;
        onZoneChanged(ObjectRegistry.INSTANCE.game.currentLevel.name, null);
    }

    @Override
    public boolean isCompleted() {
        return completed;
    }

    @Override
    public void giveUp() {
        if (boss != null && !boss.removed) {
            boss.remove();
        }
        terminate();
    }

    @Override
    public void terminate() {
        markGates(false);
        completed = false;
        boss = null;
    }

    @Override
    public void restoreState() {
        completed = false;
        boss = null;
        introDone = false;
    }

    @Override
    public void saveState() {
    }
}
