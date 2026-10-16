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
    private static final String[] MISSION_NAMES = {"The Matriarch", ModLang.tr("Rogue Cruiser"), "Queen of the Hive"};
    private static final String[] DESC = {
        ModLang.tr("Long-range scanners picked up an enormous Banshee UFO hunting convoys in the <b>Hermes</b> sector. "
            + "Pilots call her the Matriarch.<br><br><b>Known behaviour</b>: she blinks next to her prey every few seconds, "
            + "and below a third of her hull she calls Arwing escorts, burns twice as hard and blinks more often.<br><br>"
            + "<b>Reward</b>: Banshee Beam Lev. 5 and Arwing Plasma Bolt Lev. 5."),
        ModLang.tr("A Guardian-class cruiser has stopped answering SPARTAN command codes and is shelling traffic in the <b>Solar Field</b>. "
            + "SPARTAN wants it gone before the press hears about it.<br><br><b>Known behaviour</b>: repulsion shockwaves that also burn your hull "
            + "if you get within 450, heavy missile salvos, and at two thirds and one third of its hull it raises an "
            + "invulnerable SPARTAN shield for 6 seconds and launches two Defensor escorts.<br><br>"
            + "<b>Reward</b>: Megatron Heavy Battery Lev. 10 and Megatron Salvo Missile Lev. 10."),
        ModLang.tr("The alien hive has crowned an Empress. Her command ship sits deep in <b>The Hive</b>, spawning broods without end.<br><br>"
            + "<b>Known behaviour</b>: everything a Regent does, plus volleys of three rooting shots every 8 seconds, a venom aura that burns "
            + "anything within 500, and once she drops under 30% she regenerates 20% of her hull and releases two Banshees.<br><br>"
            + "<b>Reward</b>: Regent Venom Beam Lev. 15 and Regent Hive Bay Lev. 15.")
    };
    private static final String DONE = ModLang.tr("Target destroyed. The reward has been transferred to your hold.");

    /** v30 mission briefings: intro + the boss's skills and enrage from bosses_v30.json (EN / ES). */
    private static final String[][] INTRO = {
        {"Long-range scanners picked up an enormous Banshee UFO hunting convoys in the <b>Hermes</b> sector. Pilots call her the Matriarch.",
         "Los escáneres de largo alcance detectaron un enorme OVNI Banshee cazando convoyes en el sector <b>Hermes</b>. Los pilotos la llaman la Matriarca."},
        {"A Guardian-class cruiser has stopped answering SPARTAN command codes and is shelling traffic in the <b>Solar Field</b>. Between volleys it still raises its invulnerable SPARTAN shield and calls Defensor escorts.",
         "Un crucero clase Guardian dejó de responder a los códigos de mando SPARTAN y bombardea el tráfico en <b>Solar Field</b>. Entre andanadas aún levanta su escudo SPARTAN invulnerable y llama escoltas Defensor."},
        {"The alien hive has crowned an Empress. Her command ship sits deep in <b>The Hive</b>, spawning broods without end. Her venom aura burns anything that gets close.",
         "La colmena alienígena coronó a una Emperatriz. Su nave de mando está en lo profundo de <b>The Hive</b>, generando crías sin fin. Su aura de veneno quema todo lo que se acerca."}};
    private static final String[][] REWARD = {
        {"Banshee Beam Lev. 5 and Arwing Plasma Bolt Lev. 5", "Rayo Banshee Niv. 5 y Proyectil de plasma Arwing Niv. 5"},
        {"Megatron Heavy Battery Lev. 10 and Megatron Salvo Missile Lev. 10", "Batería pesada Megatron Niv. 10 y Misil salva Megatron Niv. 10"},
        {"Regent Venom Beam Lev. 15 and Regent Hive Bay Lev. 15", "Rayo de veneno Regent Niv. 15 y Bahía colmena Regent Niv. 15"}};

    static String[] data(int kind) {
        return ModLang.spanish() ? ModV30Data.BOSS_ES[kind] : ModV30Data.BOSS_EN[kind];
    }

    private static String briefing(int k) {
        boolean es = ModLang.spanish();
        String[] d = data(k);
        StringBuilder b = new StringBuilder(INTRO[k][es ? 1 : 0]);
        b.append(es ? "<br><br><b>Habilidades</b>:" : "<br><br><b>Skills</b>:");
        for (int i = 4; i + 1 < d.length; i += 2) b.append("<br>- <b>").append(d[i]).append("</b>: ").append(d[i + 1]);
        b.append(es ? "<br>- <b>Furia (una vez)</b>: " : "<br>- <b>Enrage (once)</b>: ").append(d[1]).append(". ").append(d[2]).append(' ').append(d[3]);
        b.append(es ? "<br><br><b>Recompensa</b>: " : "<br><br><b>Reward</b>: ").append(REWARD[k][es ? 1 : 0]).append('.');
        return b.toString();
    }

    public static String text(int id) {
        int k = id - TEXT_BASE;
        if (k >= 0 && k < 3) return briefing(k);
        if (k >= 10 && k < 13) return "<b>" + NAMES[k - 10] + ModLang.tr("</b> destroyed.<br><br>") + DONE;
        String f = ModFaction.text(id);
        if (f != null) return f;
        // v29: game classes that read their texts in static initializers (ShieldBonuses, AlterationSpecs, ...) can be
        // loaded before Game has a context; the stock lookup then returns "missingString" for the whole session.
        try {
            fr.testudo.spacecorsair.game.Game g = fr.testudo.spacecorsair.engine.ObjectRegistry.INSTANCE.game;
            if (g == null || g.context == null) {
                String v = ModLang.appString(id);
                if (ModDev.testFlag("corsair_titans")) android.util.Log.i("ModText", "early lookup " + Integer.toHexString(id) + " -> " + v);
                return v;
            }
        } catch (Throwable e) {
            return ModLang.appString(id);
        }
        return null;
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
        try { ((ModBoss) l).drawSkills(); } catch (Throwable t) { /* visuals only */ }
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
    private int timerC;
    private int invulnTimer;
    // v30 skills
    private int skillMs;            // telegraph (guardian broadside) / gravity well (matriarch) time left
    private int overdriveMs;        // guardian enrage
    private int cloudMs;            // empress enrage spore cloud
    private long baseReload;
    private fr.testudo.spacecorsair.business.ennemis.EnnemisCanon[] canons;
    private int[] canonReload;

    /** Overdrive: turret reload x k (1 = the boss profile's own reload). */
    private void canonRate(float k) {
        if (canons == null) return;
        for (int i = 0; i < canons.length; i++) canons[i].timeBewteenShootInMilli = Math.max(80, (int) (canonReload[i] * k));
    }

    /** Boss profile, every frame: slower and less agile through the game's own snare/agility (its AI rewrites the thrust). */
    private void heavy() {
        if (boss.alterationSnareValue >= 0.75f) {
            boss.alterationSnareValue = 0.75f;
            if (boss.alterationSnareDuree < 500) boss.alterationSnareDuree = 1000;
        }
        if (boss.alterationAgilityValue >= 0.7f) {
            boss.alterationAgilityValue = 0.7f;
            if (boss.alterationAgilityDuree < 500) boss.alterationAgilityDuree = 1000;
        }
    }
    private final Vector2 well = new Vector2(), cloud = new Vector2();
    private final java.util.ArrayList<Ennemis> brood = new java.util.ArrayList<Ennemis>();

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

    static final String[] ID = {"matriarch", "guardian", "empress"};
    /** Matriarch illusions: shown exactly like her (plate, sigil). */
    static final java.util.ArrayList<Ennemis> illusions = new java.util.ArrayList<Ennemis>();

    private static ModBoss engine() {
        if (ObjectRegistry.INSTANCE.currentMission == null) return null;
        MissionListener l = ObjectRegistry.INSTANCE.currentMission.missionEngine;
        return l instanceof ModBoss ? (ModBoss) l : null;
    }

    /** Boss kind for the boss (or one of its illusions), else -1. */
    static int kindOf(Element e) {
        if (e == null) return -1;
        ModBoss m = engine();
        if (m == null) return -1;
        if (m.boss == e) return m.kind;
        for (int i = 0; i < illusions.size(); i++) if (illusions.get(i) == e) return m.kind;
        return -1;
    }

    static boolean enragedOf(Element e) {
        ModBoss m = engine();
        return m != null && m.enraged && kindOf(e) >= 0;
    }

    static String displayName(int kind) {
        return data(kind)[0];
    }

    /** ModLive.hit: illusions take hits but never die from them before the real one (they pop on a hit instead). */
    static float damageIn(Element target, float dmg, Projectile p) {
        return dmg;
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
        b.elite = false;                  // v30: the skull-and-star plate (ModLive) replaces the elite star and stock name
        b.specificName = null;
        b.levelStr = "";
        b.maxLife = b.maxLife * lifeMult;
        b.life = b.maxLife;
        b.lifeInPourc = 100.0f;
        // v30 boss profile: tankier and harder-hitting than any ship of its class, but slower, less agile, slower to reload
        b.bulletDamage *= 2.2f;
        b.milleSecBetweenShots = (long) (b.milleSecBetweenShots * 1.6f);
        b.pouseeForce *= 0.75f;
        b.maxTurnFactor *= 0.7f;
        // the Guardian's three turrets and the alien beams copied damage/reload when the ship was built: scale them too
        canons = b instanceof fr.testudo.spacecorsair.business.ennemis.Albatros ? new fr.testudo.spacecorsair.business.ennemis.EnnemisCanon[]{
            ((fr.testudo.spacecorsair.business.ennemis.Albatros) b).canonCenter, ((fr.testudo.spacecorsair.business.ennemis.Albatros) b).canonProue,
            ((fr.testudo.spacecorsair.business.ennemis.Albatros) b).canonPoupe} : null;
        if (canons != null) {
            canonReload = new int[canons.length];
            for (int i = 0; i < canons.length; i++) {
                canons[i].shootDamage = Math.round(canons[i].shootDamage * 2.2f);
                canons[i].timeBewteenShootInMilli = (int) (canons[i].timeBewteenShootInMilli * 1.6f);
                canonReload[i] = canons[i].timeBewteenShootInMilli;
            }
        }
        LaserBeam beam = beamOf(b);
        if (beam != null) beam.damage *= 2.2f;
        illusions.clear();
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
        timerC = 9000;
        invulnTimer = 0;
        skillMs = 0;
        overdriveMs = 0;
        cloudMs = 0;
        baseReload = b.milleSecBetweenShots;
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

    /** One-time enrage callout: the two lines from bosses_v30.json. */
    private void callout() {
        String[] d = data(kind);
        PlayerShip ps = ObjectRegistry.INSTANCE.playerShip;
        Mod.floatText(boss, d[1].toUpperCase(), 1.0f, 0.35f, 0.9f);
        if (ps != null) {
            Mod.floatText(ps, d[2], 0.85f, 0.55f, 1.0f);
            Mod.floatText(ps, d[3], 0.85f, 0.55f, 1.0f);
        }
        ObjectRegistry.INSTANCE.soundManager.playDanger();
    }

    /** Fan of heavy bolts at the player's predicted position. */
    private void volley(PlayerShip ps, int n, float spread, float dmg) {
        Vector2 calc = new Vector2(ps.position).add((ps.speed.x * 1000.0f) / 10.0f, (ps.speed.y * 1000.0f) / 10.0f);
        double aim = Math.toDegrees(calc.getAngularWithInRad(boss.position)) - 90.0d;
        for (int k = 0; k < n; k++) {
            double deg = aim + (k - (n - 1) / 2.0d) * spread;
            Projectile p = GamePools.newElectricBullet().init(dmg, 9, boss, fr.testudo.spacecorsair.business.loot.stuff.alteration.AlterationSpecs.DEFAULT);
            p.position.setSameAs(boss.position);
            p.speed.set(0.0f, -10.0f);
            p.speed.applyRotatation(Math.toRadians(deg));
            p.spin = (float) deg;
            ObjectRegistry.INSTANCE.game.currentLevel.toAdd.add(p);
        }
        ObjectRegistry.INSTANCE.soundManager.playShockWave();
    }

    private void bossPhysic(long j) {
        PlayerShip ps = ObjectRegistry.INSTANCE.playerShip;
        if (boss == null || boss.removed || ps == null || ps.removed) return;
        heavy();
        float dist = boss.position.distance(ps.position);
        float hp = boss.life / boss.maxLife;
        if (!introDone && dist < 2500.0f) {
            introDone = true;
            Mod.floatText(ps, displayName(kind).toUpperCase() + (ModLang.spanish() ? " EN COMBATE" : " ENGAGED"), 0.85f, 0.45f, 1.0f);
            ObjectRegistry.INSTANCE.soundManager.playDanger();
            boss.initAttackTarget(ps);
        }
        if (!introDone) return;
        timerA = (int) (timerA - j);
        timerB = (int) (timerB - j);
        timerC = (int) (timerC - j);

        if (kind == MATRIARCH) {
            // enrage once: three forms, only one is real
            if (!enraged && hp < 0.35f) {
                enraged = true;
                callout();
                for (int i = 0; i < 2; i++) {
                    Ennemis f = EnnemisFactory.newUfo(boss.level);
                    double a = Math.random() * Math.PI * 2;
                    f.position.setSameAs(boss.position).add((float) (Math.cos(a) * 520.0d), (float) (Math.sin(a) * 520.0d));
                    f.updateSapCoords();
                    f.maxLife = 1;
                    f.life = 1;
                    f.bulletDamage = 0;
                    f.xp = 0;
                    f.lootConfig = null;
                    f.levelStr = "";
                    f.initAttackTarget(ps);
                    f.addToCurrentLevel();
                    illusions.add(f);
                    wave(f.position, 0.7f, 0.2f, 0.9f, 400.0f);
                }
            }
            // phase blink next to the prey
            if (timerA <= 0 && dist < 3000.0f) {
                wave(boss.position, 0.7f, 0.2f, 0.9f, 400.0f);
                double a = Math.random() * Math.PI * 2.0d;
                boss.position.setSameAs(ps.position).add((float) (Math.cos(a) * 520.0d), (float) (Math.sin(a) * 520.0d));
                boss.updateSapCoords();
                boss.speed.set(0.0f, 0.0f);
                wave(boss.position, 0.7f, 0.2f, 0.9f, 400.0f);
                ObjectRegistry.INSTANCE.soundManager.playGateZap();
                timerA = enraged ? 5000 : 7500;
            }
            // gravity well: drags the player towards a point for 4 s
            if (timerC <= 0 && dist < 2600.0f && skillMs <= 0) {
                well.setSameAs(ps.position).add(boss.position).divide(2.0f);
                skillMs = 4000;
                timerC = 11000;
                Mod.floatText(ps, data(kind)[6].toUpperCase(), 0.75f, 0.4f, 1.0f);
            }
            if (skillMs > 0) {
                skillMs = (int) (skillMs - j);
                float dx = well.x - ps.position.x, dy = well.y - ps.position.y;
                float d = Math.max(60.0f, (float) Math.sqrt(dx * dx + dy * dy));
                float pull = 0.0045f * j * Math.min(1.0f, 700.0f / d + 0.35f);
                ps.speed.add(dx / d * pull, dy / d * pull);
            }
            for (int i = illusions.size() - 1; i >= 0; i--) if (illusions.get(i).removed) illusions.remove(i);
        } else if (kind == GUARDIAN) {
            // classic tutorial boss: shield phases and repulsion shockwave stay
            if (invulnTimer > 0) {
                invulnTimer = (int) (invulnTimer - j);
                if (timerB <= 0) {
                    wave(boss.position, 0.3f, 0.6f, 1.0f, 500.0f);
                    timerB = 500;
                }
                if (invulnTimer <= 0) {
                    boss.invincible = false;
                    Mod.floatText(boss, ModLang.tr("SHIELD DOWN"), 0.4f, 0.8f, 1.0f);
                }
            } else if ((!shield66 && hp < 0.66f) || (!shield33 && hp < 0.33f)) {
                if (hp < 0.33f) shield33 = true;
                shield66 = true;
                boss.invincible = true;
                invulnTimer = 6000;
                timerB = 0;
                escort(1, 2);
                Mod.floatText(boss, ModLang.tr("SPARTAN SHIELD UP"), 0.4f, 0.8f, 1.0f);
            }
            if (timerA <= 0) {
                if (dist < 450.0f + boss.getPhysicDimension().x / 2.0f) {
                    Util.applyShockWaveOnPlayer(boss, 300, 1000, 800);
                    ps.applyDamage(ps.maxLife * 0.04f, boss, null);
                    ObjectRegistry.INSTANCE.soundManager.playShockWave();
                }
                timerA = 1500;
            }
            // telegraphed broadside: turrets glow 1.5 s, then a heavy volley
            if (timerC <= 0 && skillMs <= 0 && dist < 2200.0f) {
                skillMs = 1500;
                timerC = overdriveMs > 0 ? 5000 : 9000;
            }
            if (skillMs > 0) {
                skillMs = (int) (skillMs - j);
                if (skillMs <= 0) volley(ps, 7, 7.0f, boss.bulletDamage * 1.6f);
            }
            // enrage once: overdrive, 10 s of fast reload
            if (!enraged && hp < 0.3f) {
                enraged = true;
                callout();
                overdriveMs = 10000;
                boss.milleSecBetweenShots = Math.max(60, (long) (baseReload * 0.35f));
                canonRate(0.35f);
            }
            if (overdriveMs > 0) {
                overdriveMs = (int) (overdriveMs - j);
                if (overdriveMs <= 0) { boss.milleSecBetweenShots = baseReload; canonRate(1.0f); }
            }
        } else {
            // brood waves; the Empress heals while her brood lives
            if (timerC <= 0) {
                escortBrood(3);
                timerC = 14000;
                Mod.floatText(boss, data(kind)[4].toUpperCase(), 0.5f, 1.0f, 0.5f);
            }
            int alive = 0;
            for (int i = brood.size() - 1; i >= 0; i--) {
                if (brood.get(i).removed) brood.remove(i);
                else alive++;
            }
            if (alive > 0 && boss.life < boss.maxLife) {
                boss.setNewLife(Math.min(boss.maxLife, boss.life + boss.maxLife * 0.0015f * alive * j / 1000.0f));
                if (boss.lifeBar != null) boss.lifeBar.setValue(boss.lifeInPourc);
            }
            if (timerA <= 0 && dist < 2200.0f) { // three rooting shots
                for (int k = -1; k <= 1; k++) {
                    Vector2 calc = new Vector2(ps.position).add((ps.speed.x * 1000.0f) / 10.0f, (ps.speed.y * 1000.0f) / 10.0f);
                    double deg = Math.toDegrees(calc.getAngularWithInRad(boss.position)) - 90.0d + (k * 15);
                    Projectile p = GamePools.newElectricBullet().init(boss.bulletDamage * 0.5f, 8, boss, AlterationSpecsBuilder.root100_4sec);
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
            // enrage once: a spore cloud that slowly drains shields inside it
            if (!enraged && hp < 0.30f) {
                enraged = true;
                callout();
                cloud.setSameAs(boss.position);
                cloudMs = 14000;
            }
            if (cloudMs > 0) {
                cloudMs = (int) (cloudMs - j);
                cloud.add((boss.position.x - cloud.x) * 0.002f * j / 16.0f, (boss.position.y - cloud.y) * 0.002f * j / 16.0f);
                if (ps.position.distance(cloud) < CLOUD_R && ps.shield != null && ps.shield.currentValue > 0) {
                    ps.shield.currentValue = Math.max(0, ps.shield.currentValue - ps.shield.capacity * 0.07f * j / 1000.0f);
                    ps.shield.valueInPourc = ps.shield.currentValue * 100.0f / Math.max(1.0f, ps.shield.capacity);
                }
            }
        }
    }

    static final float CLOUD_R = 950.0f;

    private void escortBrood(int count) {
        PlayerShip ps = ObjectRegistry.INSTANCE.playerShip;
        for (int i = 0; i < count; i++) {
            Ennemis e = EnnemisFactory.newAlienRat(level);
            tmp.setSameAs(boss.position).add((float) (Math.random() * 500 - 250), (float) (Math.random() * 500 - 250));
            e.position.setSameAs(tmp);
            e.updateSapCoords();
            e.initAttackTarget(ps);
            e.addToCurrentLevel();
            brood.add(e);
        }
    }

    /** v30 skill visuals (from draw, every frame while the boss mission runs). */
    private void drawSkills() {
        if (boss == null || boss.removed) return;
        long t = System.currentTimeMillis();
        float side = Math.max(200.0f, boss.getPhysicDimension().x);
        if (kind == GUARDIAN && skillMs > 0) {
            // turrets heat up: glow growing over 1.5 s
            float k = 1.0f - skillMs / 1500.0f;
            ModFx.spr("fx_glow", boss.position.x, boss.position.y, side * (1.2f + k), side * (1.2f + k), 0, 1.0f, 0.55f, 0.2f, 0.25f + 0.6f * k, true);
            for (int i = 0; i < 3; i++) {
                tmp.set(0, (i - 1) * side * 0.3f).applyRotatation(Math.toRadians(boss.spin)).add(boss.position);
                ModFx.spr("fx_core", tmp.x, tmp.y, 90 + 120 * k, 90 + 120 * k, 0, 1.0f, 0.7f, 0.3f, 0.5f + 0.5f * k, true);
            }
        } else if (kind == MATRIARCH && skillMs > 0) {
            float a = Math.min(1.0f, skillMs / 600.0f);
            ModFx.spr("vfx_doomsday_charge", well.x, well.y, 900, 900, (t / 8.0f) % 360, 0.7f, 0.35f, 1.0f, 0.75f * a, true);
            ModFx.spr("fx_shock", well.x, well.y, 1300, 1300, -(t / 12.0f) % 360, 0.6f, 0.3f, 1.0f, 0.35f * a, true);
        } else if (kind == EMPRESS && cloudMs > 0) {
            float a = Math.min(1.0f, cloudMs / 1500.0f);
            ModFx.spr("fx_glow", cloud.x, cloud.y, CLOUD_R * 2.2f, CLOUD_R * 2.2f, 0, 0.35f, 0.9f, 0.35f, 0.3f * a, true);
            if ((t / 260) % 2 == 0 && Math.random() < 0.5) {
                double r = Math.random() * CLOUD_R, an = Math.random() * Math.PI * 2;
                ModLive.fx("fx_spore_sheet", 4, 16, cloud.x + (float) (Math.cos(an) * r), cloud.y + (float) (Math.sin(an) * r), 300, 1400, 0.5f, 1.0f, 0.45f, true);
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
        for (Ennemis f : illusions) if (!f.removed) { wave(f.position, 0.7f, 0.2f, 0.9f, 300.0f); f.remove(); }
        illusions.clear();
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
            return inHub ? ModLang.tr("Dock at ") + station + ModLang.tr(" to claim your reward") : ModLang.tr("Return to ") + hub.levelName;
        }
        if (!inZone) {
            return "Go to " + zone.levelName + ModLang.tr(" and hunt the ") + NAMES[kind];
        }
        Ennemis boss = this.boss;
        if (boss == null || boss.removed) {
            return ModLang.tr("Destroy the ") + NAMES[kind];
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
