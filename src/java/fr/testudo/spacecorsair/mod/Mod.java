package fr.testudo.spacecorsair.mod;

import fr.testudo.spacecorsair.business.Element;
import fr.testudo.spacecorsair.business.ennemis.AlienRat;
import fr.testudo.spacecorsair.business.ennemis.Ennemis;
import fr.testudo.spacecorsair.business.ennemis.EnnemisFactory;
import fr.testudo.spacecorsair.business.ennemis.EnnemisType;
import fr.testudo.spacecorsair.business.ennemis.RocketTourelle;
import fr.testudo.spacecorsair.business.ennemis.TaupeShip;
import fr.testudo.spacecorsair.business.ennemis.UfoAlienShip;
import fr.testudo.spacecorsair.business.factory.GamePools;
import fr.testudo.spacecorsair.business.loot.SpaceObjectType;
import fr.testudo.spacecorsair.business.loot.stuff.alteration.AlterationSpecs;
import fr.testudo.spacecorsair.business.loot.stuff.alteration.AlterationSpecsBuilder;
import fr.testudo.spacecorsair.business.loot.stuff.laser.LaserSpec;
import fr.testudo.spacecorsair.business.loot.stuff.playerShip.PlayerShipSpec;
import fr.testudo.spacecorsair.business.player.PlayerShip;
import fr.testudo.spacecorsair.business.projectiles.AlienLaser;
import fr.testudo.spacecorsair.business.projectiles.EnergyBullet;
import fr.testudo.spacecorsair.business.projectiles.LaserBeam;
import fr.testudo.spacecorsair.business.projectiles.Missile;
import fr.testudo.spacecorsair.business.projectiles.Projectile;
import fr.testudo.spacecorsair.business.projectiles.VortexProjectile;
import fr.testudo.spacecorsair.business.world.civil.GuardianCivilShip;
import fr.testudo.spacecorsair.display.Drawable;
import fr.testudo.spacecorsair.display.ParticuleFactory;
import fr.testudo.spacecorsair.display.ShockWave;
import fr.testudo.spacecorsair.display.Texture;
import fr.testudo.spacecorsair.engine.ObjectRegistry;
import fr.testudo.spacecorsair.engine.Vector2;
import java.util.List;

/** Runtime logic for the player versions of enemy ships and weapons. Called from small smali hooks. */
public class Mod {
    public static final int DRONE_LIFETIME = 20000;
    public static final float DRONE_ENGAGE_RANGE = 1800.0f;

    private static final Ennemis[] drones = new Ennemis[2]; // [0] = Banshee UFO, [1] = Arwing
    private static final int[] droneTimers = new int[2];
    private static int rootTimer = 0;
    private static int shockTimer = 0;
    private static int antiMissileTimer = 0;
    private static final Vector2 tmp = new Vector2();
    private static final Vector2 calc = new Vector2();
    private static final Vector2 beamEnd = new Vector2();
    private static int beamFlash = 0;

    private static Drawable[] ufoFrames;
    private static Texture ufoSrc;
    private static Drawable[] ratFrames;
    private static Texture ratSrc;
    private static Drawable croisette;
    private static Drawable doubleCanon;
    private static Drawable guardianTurret;
    private static Texture guardianTurretSrc;

    // ---------------------------------------------------------------- sides / drones

    public static boolean isDrone(Element e) {
        return e != null && (e == drones[0] || e == drones[1]);
    }

    /** 0 = no drone involved (original rules), 1 = same side (no hit), 2 = opposite sides (hit). */
    public static int sideCheck(Element sender, Element target) {
        boolean ds = isDrone(sender);
        boolean dt = isDrone(target);
        if (!ds && !dt) {
            return 0;
        }
        boolean sp = sender.isPlayer || ds;
        boolean tp = target.isPlayer || dt;
        boolean se = (sender instanceof Ennemis) && !ds;
        boolean te = (target instanceof Ennemis) && !dt;
        return ((sp && tp) || (se && te)) ? 1 : 2;
    }

    /** Drones never bump into the ship that launched them or into each other. */
    public static boolean ignoreCollision(Element a, Element b) {
        boolean da = isDrone(a), db = isDrone(b);
        if (!da && !db) return false;
        return (da && (b.isPlayer || db)) || (db && a.isPlayer);
    }

    /** Kills made by a drone count as player kills (xp, loot, missions). */
    public static Element creditKiller(Element e) {
        return isDrone(e) ? ObjectRegistry.INSTANCE.playerShip : e;
    }

    // Per-frame cache of targetable enemies and asteroids: one scan of the level per frame instead of one per query.
    private static final java.util.ArrayList<Element> enemyCache = new java.util.ArrayList<Element>();
    private static final java.util.ArrayList<Element> rockCache = new java.util.ArrayList<Element>();
    private static long cacheFrame = -1;
    static long frameCounter = 0;

    private static void refreshCache() {
        if (cacheFrame == frameCounter) {
            return;
        }
        cacheFrame = frameCounter;
        enemyCache.clear();
        rockCache.clear();
        List<Element> list = ObjectRegistry.INSTANCE.game.currentLevel.elements;
        int size = list.size();
        for (int i = 0; i < size; i++) {
            Element e = list.get(i);
            if (e.removed) {
                continue;
            }
            if (e instanceof Ennemis) {
                if (isDrone(e)) continue;
                if ((e instanceof TaupeShip) && ((TaupeShip) e).isHiddenMode) continue;
                if ((e instanceof RocketTourelle) && ((RocketTourelle) e).hidden) continue;
                enemyCache.add(e);
            } else if (e instanceof fr.testudo.spacecorsair.business.world.Asteroid) {
                rockCache.add(e);
            }
        }
    }

    /** Live enemies of the current level (no drones, no hidden ships). */
    public static void enemiesInto(java.util.List<Element> out) {
        refreshCache();
        out.clear();
        out.addAll(enemyCache);
    }

    public static Element findEnemy(Vector2 pos, float range) {
        refreshCache();
        Element best = null;
        float bestDist = range;
        int size = enemyCache.size();
        for (int i = 0; i < size; i++) {
            Element e = enemyCache.get(i);
            if (e.removed) {
                continue;
            }
            float d = e.position.distance(pos);
            if (d < bestDist) {
                bestDist = d;
                best = e;
            }
        }
        return best;
    }

    /** Same scoring as PlayerShip.fetchEnnemisTarget (distance + angle to nose) but never picks a drone. */
    public static Element findEnemyInFront(PlayerShip ps, float range) {
        refreshCache();
        Element best = null;
        float bestScore = 1.0E7f;
        for (int pass = 0; pass < 2; pass++) {
            java.util.ArrayList<Element> src = pass == 0 ? enemyCache : rockCache;
            int size = src.size();
            for (int i = 0; i < size; i++) {
                Element e = src.get(i);
                if (e.removed) {
                    continue;
                }
                float d = e.position.distance(ps.position);
                if (d >= range) {
                    continue;
                }
                float ang = Element.normalizeSpin((((float) Math.toDegrees(ps.position.getAngularWithInRad(e.position))) % 360.0f) + 90.0f);
                float diff = Math.abs(ang - ps.spin);
                if (diff > 180.0f) {
                    diff = 360.0f - diff;
                }
                float score = (d / 40.0f) + diff;
                if (score < bestScore) {
                    bestScore = score;
                    best = e;
                }
            }
            if (best != null) {
                return best; // enemies first, asteroids only when no enemy is in range
            }
        }
        return best;
    }

    // ---------------------------------------------------------------- beams (Banshee / Regent)

    public static boolean beamShoot(PlayerShip ps) {
        LaserSpec ls = ps.laserSpec;
        if (ModTitan.busy()) {
            ps.beamActive = false;
            return true;
        }
        if (!ModSpecs.isBeam(ls)) {
            return false;
        }
        Element t = findEnemyInFront(ps, ModSpecs.beamRange(ls));
        ps.beamTarget = t;
        if (t == null) {
            return true;
        }
        long cycle = (long) (ps.milleSecBetweenShots * ps.alterationReloadValue);
        // like the enemy: the beam is only visible during the last 30% of each reload cycle, then hits
        boolean pulse = ((float) ps.nextShootAlowed) <= ((float) cycle) * 0.3f;
        ps.beamActive = pulse;
        if (pulse && !ps.beamWasActive) {
            ObjectRegistry.INSTANCE.soundManager.playAlienLaser();
        }
        if (ps.nextShootAlowed <= 0) {
            LaserBeam p = ps.beamProjectile;
            if (p == null) {
                p = new LaserBeam();
                ps.beamProjectile = p;
            }
            p.sender = ps;
            p.level = ps.level;
            p.damage = ps.bulletDamage;
            p.destroyedOnImpact = false;
            p.ignoreImactDecalOnTarget = true;
            p.mass = 0.0f;
            p.alterationSpecs = ls.alterationSpecs;
            p.resolveAlteration();
            if (ModSpecs.isRegentBeam(ls)) {
                ParticuleFactory.addYellow(t, 1);
            } else {
                ParticuleFactory.addRed(t, 2);
                ParticuleFactory.addWhite(t, 1);
            }
            beamEnd.setSameAs(t.position);
            beamFlash = 180; // keep the beam visible a moment, even if the hit destroys the target
            t.applyProjectileHit(p);
            ObjectRegistry.INSTANCE.soundManager.playElectricSpark();
            ps.nextShootAlowed = cycle;
        }
        return true;
    }

    public static void drawBeam(PlayerShip ps) {
        if (ObjectRegistry.INSTANCE.game.mapMode) {
            return;
        }
        try {
            drawDroneHud(ps);
            ModBoss.draw(ps);
            ModShips.draw(ps);
            ModCaps.drawUnder(ps);
        } catch (Exception e) {
            // HUD is cosmetic
        }
        Element t = ps.beamTarget;
        Vector2 end;
        if (ps.beamActive && t != null && !t.removed) {
            end = t.position;
        } else if (beamFlash > 0) {
            end = beamEnd;
        } else {
            return;
        }
        for (int i = 0; i < 3; i++) {
            tmp.setSameAs(end).add((float) ((Math.random() * 40.0d) - 20.0d), (float) ((Math.random() * 40.0d) - 20.0d));
            ObjectRegistry.INSTANCE.renderQueue.addToWaitingQueue(tmp, ps.position, false, 1.0f, ps.bulletR, ps.bulletG, ps.bulletB);
        }
    }

    // ---------------------------------------------------------------- Arwing plasma bolt

    public static boolean addBullet(List list, Object o) {
        PlayerShip ps = ObjectRegistry.INSTANCE.playerShip;
        try {
            if (ps != null && (o instanceof EnergyBullet) && ((EnergyBullet) o).sender == ps) {
                ModTitan.onBullet(ps, o);
                ModWeapons.onBullet(ps, o);
            }
        } catch (Exception e) {
            // cosmetic
        }
        if ((o instanceof EnergyBullet) && ps != null && ModSpecs.isBolt(ps.laserSpec)) {
            EnergyBullet b = (EnergyBullet) o;
            AlienLaser a = GamePools.newAlienLaser().init(b.damage, ps.bulletLifeTime, ps, ps.laserSpec.alterationSpecs);
            a.position.setSameAs(b.position);
            a.speed.setSameAs(b.speed);
            a.spin = (float) Math.toDegrees(b.speed.getAngularInRad()) + 90.0f;
            return list.add(a);
        }
        return list.add(o);
    }

    public static void playLaserSound() {
        PlayerShip ps = ObjectRegistry.INSTANCE.playerShip;
        if (ps != null && ModTitan.ownsLaserSound(ps)) {
            return; // ModTitan.onBullet plays the titan cannon
        }
        if (ps != null && ModWeapons.playFire(ps)) {
            return; // weapon families have their own sounds
        }
        // bigger hulls, heavier guns: cruisers/battlecruisers and battleships/capitals get their own cannon sounds
        if (ps != null && !ModSpecs.isBolt(ps.laserSpec)) {
            ModShips.Hull h = ModShips.hullFor(ps.shipSpec);
            if (h != null && (h.cls == ModShips.BATTLESHIP || h.cls == ModShips.CAPITAL)) {
                if (ModSound.play("gun_heavy", 0.75f, ModFx.rnd(0.95f, 1.05f), 130) != 0) return;
            } else if (h != null && (h.cls == ModShips.CRUISER || h.cls == ModShips.BATTLECRUISER)) {
                if (ModSound.play("gun_medium", 0.7f, ModFx.rnd(0.95f, 1.05f), 110) != 0) return;
            }
        }
        if (ps != null && ModSpecs.isBolt(ps.laserSpec)) {
            ObjectRegistry.INSTANCE.soundManager.playAlienRatLaser();
        } else {
            ObjectRegistry.INSTANCE.soundManager.playPlayerLaser();
        }
    }

    // ---------------------------------------------------------------- visuals

    public static void fixTextures() {
        for (PlayerShipSpec.Image im : PlayerShipSpec.Image.values()) {
            if (im.name().startsWith("MOD_")) {
                im.shieldTexture = PlayerShipSpec.Image.DEFAULT.shieldTexture;
            }
        }
        if (GuardianCivilShip.drawable != null) {
            PlayerShipSpec.Image.TEST.shipTexture = GuardianCivilShip.drawable.myTexture;
            PlayerShipSpec.Image.TEST.shieldTexture = PlayerShipSpec.Image.DEFAULT.shieldTexture;
        }
        if (GuardianCivilShip.drawableTourelle != null && GuardianCivilShip.drawableTourelle.myTexture != guardianTurretSrc) {
            guardianTurretSrc = GuardianCivilShip.drawableTourelle.myTexture;
            guardianTurret = new Drawable(new Vector2(64.0f, 64.0f), guardianTurretSrc);
        }
    }

    public static Drawable frame(PlayerShip ps) {
        if (ps.shipSpec == null) {
            return null;
        }
        PlayerShipSpec.Image img = ps.shipSpec.image;
        float dim = PlayerShip.drawableDimension.x;
        if (img == PlayerShipSpec.Image.ALIEN_UFO) {
            Drawable[] src = UfoAlienShip.drawable;
            if (src == null || src.length < 15 || src[14] == null) {
                return null;
            }
            if (ufoFrames == null || ufoSrc != src[0].myTexture || ufoFrames[0].dimensions.x != dim) {
                ufoFrames = build(src, 15, dim);
                ufoSrc = src[0].myTexture;
            }
            return ufoFrames[(int) ((System.currentTimeMillis() % 750) / 50)];
        }
        if (img == PlayerShipSpec.Image.ALIEN_RAT) {
            Drawable[] src = AlienRat.drawable;
            if (src == null || src.length < 22 || src[21] == null) {
                return null;
            }
            if (ratFrames == null || ratSrc != src[0].myTexture || ratFrames[0].dimensions.x != dim) {
                ratFrames = build(src, 22, dim);
                ratSrc = src[0].myTexture;
            }
            return ratFrames[(int) ((System.currentTimeMillis() % 880) / 40)];
        }
        return ModV35.playerArt(ps);   // v35 refit stage art, when it ships
    }

    private static Drawable[] build(Drawable[] src, int n, float dim) {
        Drawable[] out = new Drawable[n];
        for (int i = 0; i < n; i++) {
            out[i] = new Drawable(new Vector2(dim, dim), src[i].myTexture);
        }
        return out;
    }

    // ---------------------------------------------------------------- per-frame intrinsics

    public static void tick(PlayerShip ps, long j) {
        frameCounter++;
        ModBoss.tick(ps, j);
        try {
            ModFleet.tick(ps, j);
        } catch (Exception e) {
            // ignore
        }
        try {
            ModShips.tick(ps, j);
        } catch (Exception e) {
            // ignore
        }
        try {
            ModFx.update(j);
            ModCaps.tick(ps, j);
            ModTitan.tick(ps, j);
        } catch (Exception e) {
            // v17 visuals never break the frame
        }
        if (ps.shipSpec == null) {
            return;
        }
        PlayerShipSpec.Image img = ps.shipSpec.image;

        // Megatron uses the Guardian turret sprite; everyone else keeps the default triple turret
        // per-hull turret sprites (both rotating laser types); the originals are remembered and restored
        PlayerShipSpec.LaserType lt = PlayerShipSpec.LaserType.ROTATIVE_TRIPLE;
        PlayerShipSpec.LaserType ld = PlayerShipSpec.LaserType.ROTATIVE;
        if (lt.tourelleDrawable != null && lt.tourelleDrawable != guardianTurret && !ModArt.isModTurret(lt.tourelleDrawable)) {
            croisette = lt.tourelleDrawable;
        }
        if (ld.tourelleDrawable != null && !ModArt.isModTurret(ld.tourelleDrawable)) {
            doubleCanon = ld.tourelleDrawable;
        }
        String art = ModShips.turretArt(ps.shipSpec);
        fr.testudo.spacecorsair.display.Drawable custom = art == null ? null : ModArt.turret(art);
        // v23: a weapon-family gun brings its own turret (railgun rails, rotary autocannon, artillery barrel...)
        int fam = ModWeapons.family(ps.laserSpec);
        if (fam >= 0) {
            ModShips.Hull hh = ModShips.hullFor(ps.shipSpec);
            float ts = hh != null ? Math.min(100.0f, Math.max(56.0f, hh.size * 0.16f)) : 64.0f;
            fr.testudo.spacecorsair.display.Drawable ft = ModArt.familyTurret(fam, hh != null ? hh.cls : -1, ts);
            if (ft != null) custom = ft;
        }
        if (img == PlayerShipSpec.Image.TEST && guardianTurret != null) {
            lt.tourelleDrawable = guardianTurret;
        } else if (custom != null) {
            lt.tourelleDrawable = custom;
        } else if (croisette != null) {
            lt.tourelleDrawable = croisette;
        }
        if (custom != null) {
            ld.tourelleDrawable = custom;
        } else if (doubleCanon != null) {
            ld.tourelleDrawable = doubleCanon;
        }
        if (ModTitan.ownsTurrets(ps)) {
            // titan turrets are drawn by ModTitan (bigger sprites, recoil, muzzle flash)
            lt.tourelleDrawable = ModFx.EMPTY;
            ld.tourelleDrawable = ModFx.EMPTY;
        }

        if (beamFlash > 0) {
            beamFlash = (int) (beamFlash - j);
        }
        if (antiMissileTimer > 0) {
            antiMissileTimer = (int) (antiMissileTimer - j);
        }

        if (!ps.removed && !ObjectRegistry.INSTANCE.game.mapMode) {
            if (img == PlayerShipSpec.Image.ALIEN_BLATTE) {
                regentRootShot(ps, j);
            } else if (img == PlayerShipSpec.Image.TEST) {
                megatronShockwave(ps, j);
            }
        }
        upkeepDrones(ps, j);
    }

    /** Regent: every 15 s, fires a lead-aimed electric bullet that roots the nearest enemy for 8 s. */
    private static void regentRootShot(PlayerShip ps, long j) {
        rootTimer = (int) (rootTimer - j);
        if (rootTimer > 0) {
            return;
        }
        Element t = findEnemy(ps.position, 2000.0f);
        if (t == null || t.position.distance(ps.position) < 300.0f) {
            rootTimer = 500;
            return;
        }
        calc.setSameAs(t.position).add((t.speed.x * 1000.0f) / 10.0f, (t.speed.y * 1000.0f) / 10.0f);
        double deg = Math.toDegrees(calc.getAngularWithInRad(ps.position)) - 90.0d;
        Projectile p = GamePools.newElectricBullet().init(150.0f + (ps.level * 20), ps.bulletLifeTime * 2, ps, AlterationSpecsBuilder.root100_8sec);
        p.position.setSameAs(ps.position);
        p.speed.set(0.0f, -11.0f);
        p.speed.applyRotatation(Math.toRadians(deg));
        p.spin = (float) deg;
        ObjectRegistry.INSTANCE.game.currentLevel.toAdd.add(p);
        ObjectRegistry.INSTANCE.soundManager.playAlienRatLaser();
        rootTimer = 15000;
    }

    /** Megatron: same close-range repulsion shockwave the Guardian cruiser uses (every 1.5 s, 350 range). */
    private static void megatronShockwave(PlayerShip ps, long j) {
        shockTimer = (int) (shockTimer - j);
        if (shockTimer > 0) {
            return;
        }
        boolean any = false;
        refreshCache();
        int size = enemyCache.size();
        for (int i = 0; i < size; i++) {
            Element e = enemyCache.get(i);
            if (e.removed) {
                continue;
            }
            if (e.position.distance(ps.position) - (e.getPhysicDimension().x / 2.0f) < 350.0f) {
                float a = Element.normalizeSpin((((float) Math.toDegrees(e.position.getAngularWithInRad(ps.position))) % 360.0f) + 90.0f);
                tmp.set(0.0f, 12.0f);
                tmp.applyRotatation(Math.toRadians(a));
                e.speed.add(tmp);
                any = true;
            }
        }
        if (any) {
            ShockWave w = GamePools.newShockWave().init(ps.position, 300.0f, 1000.0f, 800.0f);
            w.r = 0.42745098f;
            w.g = 0.627451f;
            w.b = 0.7372549f;
            ObjectRegistry.INSTANCE.game.currentLevel.toAddDrawOnly.add(w);
            ObjectRegistry.INSTANCE.soundManager.playShockWave();
            shockTimer = 1500;
        } else {
            shockTimer = 200;
        }
    }

    // ---------------------------------------------------------------- missile lock reactions

    public static void onMissileLock(PlayerShip ps, Missile m) {
        if (ps.shipSpec == null || ps.removed || m == null) {
            return;
        }
        PlayerShipSpec.Image img = ps.shipSpec.image;
        if (img == PlayerShipSpec.Image.ALIEN_RAT) {
            if (Math.random() < 0.33d) {
                vortex(ps, m);
            }
        } else if (img == PlayerShipSpec.Image.ALIEN_BLATTE) {
            if (Math.random() < 0.8d) {
                vortex(ps, m);
            }
        } else if (img == PlayerShipSpec.Image.TEST) {
            if (antiMissileTimer <= 0) {
                ps.shootAntiMissile(m);
                antiMissileTimer = 2500;
            }
        }
    }

    private static void vortex(PlayerShip ps, Missile m) {
        double rad = Math.toRadians((ps.spin - ((Math.random() > 0.5d ? 1 : -1) * 15)) + 180.0f);
        VortexProjectile v = GamePools.newVortexProjectile().init(ps.bulletDamage * 5.0f, ps.bulletLifeTime, ps, AlterationSpecs.DEFAULT);
        v.r = 1.0f;
        v.g = 1.0f;
        v.b = 1.0f;
        v.position.setSameAs(ps.position);
        v.speed.set(0.0f, -6.0f);
        v.lifeTimeInMilli = 8000L;
        v.speed.applyRotatation(rad);
        v.speed.add(ps.speed);
        ObjectRegistry.INSTANCE.game.currentLevel.toAdd.add(v);
        ObjectRegistry.INSTANCE.soundManager.playAlienRatLaser();
        m.target = v;
    }

    // ---------------------------------------------------------------- Regent Hive Bay (drone launcher)

    /** true = Defense (stay close, +25% damage), false = Attack (roam wide, -15% damage). */
    public static boolean droneDefense = true;
    private static final float[] baseBullet = new float[2];
    private static final float[] baseBeam = new float[2];
    private static int hiveTier = 0;

    private static float droneMult() {
        PlayerShip ps = ObjectRegistry.INSTANCE.playerShip;
        float carrier = ps != null && ModShips.isCarrier(ps.shipSpec) ? 1.3f : 1.0f;
        return ModSpecs.HIVE_DMG[hiveTier] * (droneDefense ? 1.25f : 0.85f) * carrier;
    }

    private static float engageRange() {
        return droneDefense ? 900.0f : 2500.0f;
    }

    /** Returns true when the equipped missile mod is a Hive Bay (normal missiles must not fire). */
    public static boolean launchDrones(PlayerShip ps) {
        if (ModTitan.blocksMissiles()) {
            return true;
        }
        if (!ModSpecs.isHive(ps.missileSpec)) {
            return false;
        }
        if (ps.removed) {
            return true;
        }
        boolean free = false;
        for (int i = 0; i < 2; i++) {
            if (drones[i] == null || drones[i].removed) free = true;
        }
        boolean anyOut = false;
        for (int i = 0; i < 2; i++) {
            if (drones[i] != null && !drones[i].removed) anyOut = true;
        }
        // Drones out and nothing to launch (bay full or reloading): the button toggles the stance.
        if (anyOut && (!free || ps.nextShootMissileAlowed > 0 || ps.missileCount <= 0)) {
            droneDefense = !droneDefense;
            applyDroneDamage();
            for (int i = 0; i < 2; i++) {
                if (drones[i] != null && !drones[i].removed) {
                    drones[i].specificName = droneDefense ? ModLang.tr("DEF DRONE") : ModLang.tr("ATK DRONE");
                    drones[i].specificNameDecalX = -1;
                }
            }
            ObjectRegistry.INSTANCE.soundManager.playSonarbeep();
            floatText(ps, droneDefense ? ModLang.tr("DRONES: DEFENSE") : ModLang.tr("DRONES: ATTACK"), droneDefense ? 0.4f : 1.0f, droneDefense ? 0.8f : 0.4f, droneDefense ? 1.0f : 0.3f);
            return true;
        }
        if (ps.nextShootMissileAlowed > 0 || ps.missileCount <= 0) {
            return true;
        }
        Element t = findEnemy(ps.position, Math.max(DRONE_ENGAGE_RANGE, engageRange()));
        if (t == null) {
            floatText(ps, ModLang.tr("NO TARGET IN RANGE"), 1.0f, 0.6f, 0.3f);
            return true;
        }
        hiveTier = Math.max(0, ModSpecs.tierOf(ps.missileSpec));
        int lvl = ObjectRegistry.INSTANCE.game.playerInfo.level;
        if (lvl < 0) {
            lvl = 0;
        }
        boolean any = false;
        for (int i = 0; i < 2; i++) {
            if (drones[i] != null && !drones[i].removed) {
                continue;
            }
            EnnemisType type = i == 0 ? EnnemisType.UFO_ALIEN : EnnemisType.ALIEN_RAT;
            Ennemis d = EnnemisFactory.newEnnemis(type, lvl, lvl);
            drones[i] = d;
            droneTimers[i] = ModSpecs.HIVE_LIFE[hiveTier];
            d.spin = ps.spin + 180.0f + (i == 0 ? -20.0f : 20.0f);
            double rad = Math.toRadians(d.spin - 90.0f);
            d.speed.set(((float) Math.cos(rad)) * 14.0f, ((float) Math.sin(rad)) * 14.0f);
            d.speed.add(ps.speed);
            d.position.setSameAs(ps.position);
            d.updateSapCoords();
            attachToPilotLevel(d, lvl, i);
            d.desengagementDistance = 4000.0f;
            d.xp = 0;
            d.radarColorR = 0.2f;
            d.radarColorG = 1.0f;
            d.radarColorB = 0.2f;
            d.specificName = droneDefense ? ModLang.tr("DEF DRONE") : ModLang.tr("ATK DRONE");
            d.specificNameDecalX = -1;
            d.initAttackTarget(t);
            d.addToCurrentLevel();
            ParticuleFactory.addGreen(d, 6);
            ParticuleFactory.addLightBlue(d, 4);
            any = true;
        }
        if (any) {
            applyDroneDamage();
            ObjectRegistry.INSTANCE.game.playerCurrentShipInventory.removeOne(SpaceObjectType.missile);
            ps.updateRemainingMissiles();
            ps.nextShootMissileAlowed = (long) (ps.milleSecBetweenMissileShots * ps.alterationReloadValue);
            ObjectRegistry.INSTANCE.soundManager.playMissileStart();
            ObjectRegistry.INSTANCE.soundManager.playGateZap();
            ShockWave w = GamePools.newShockWave().init(ps.position, 60.0f, 700.0f, 500.0f);
            w.r = 0.3f;
            w.g = 1.0f;
            w.b = 0.5f;
            ObjectRegistry.INSTANCE.game.currentLevel.toAddDrawOnly.add(w);
            floatText(ps, ModLang.tr("DRONES LAUNCHED"), 0.3f, 1.0f, 0.5f);
            ModCaps.onBayLaunch(ps);
        }
        return true;
    }

    private static final Vector2 hud = new Vector2();

    private static void drawDroneHud(PlayerShip ps) {
        boolean any = false;
        int left = 0;
        float r = droneDefense ? 0.4f : 1.0f, g = droneDefense ? 0.8f : 0.55f, b = droneDefense ? 1.0f : 0.2f;
        for (int i = 0; i < 2; i++) {
            Ennemis d = drones[i];
            if (d == null || d.removed) continue;
            any = true;
            left = Math.max(left, droneTimers[i]);
            // faint tether from each drone to the ship, in the stance colour
            ObjectRegistry.INSTANCE.renderQueue.addToWaitingQueue(d.position, ps.position, false, 0.35f, r, g, b);
        }
        if (!any) return;
        String txt = (droneDefense ? ModLang.tr("DRONES: DEFENSE ") : ModLang.tr("DRONES: ATTACK ")) + ((left + 999) / 1000) + "s";
        float below = (ps.shipSpec != null ? ps.shipSpec.drawableSizeOfShield : 200) / 2.0f + 40.0f;
        hud.setSameAs(ps.position).add(-txt.length() * 7.0f, -below);
        ObjectRegistry.INSTANCE.renderQueue.addTextToTextWaitingQueue(hud, false, txt, r, g, b, 1.0f, fr.testudo.spacecorsair.textengine.TextSize.NORMALPLUS);
    }

    public static void floatText(Element at, String text, float r, float g, float b) {
        try {
            fr.testudo.spacecorsair.display.text.XpTextMessage m = GamePools.newXpMessage().init(ModLang.tr(text), at);
            m.r = r;
            m.g = g;
            m.b = b;
            ObjectRegistry.INSTANCE.game.currentLevel.toAddDrawOnly.add(m);
        } catch (Exception e) {
            // cosmetic only
        }
    }

    private static LaserBeam beamOf(Ennemis d) {
        try {
            java.lang.reflect.Field fp = d.getClass().getDeclaredField("fakeProjectile");
            fp.setAccessible(true);
            return (LaserBeam) fp.get(d);
        } catch (Exception e) {
            return null; // Arwing drones have no beam
        }
    }

    /** Drones always fight at the pilot's level; enemy specs stop at 20, so scale beyond that. */
    private static void attachToPilotLevel(Ennemis d, int lvl, int slot) {
        float f = lvl > 20 ? 1.0f + ((lvl - 20) * 0.15f) : 1.0f;
        d.level = lvl;
        d.levelStr = lvl + "";
        d.maxLife *= f;
        d.life = d.maxLife;
        d.lifeInPourc = 100.0f;
        baseBullet[slot] = d.bulletDamage * f;
        LaserBeam beam = beamOf(d);
        if (beam != null) {
            beam.level = lvl;
            baseBeam[slot] = beam.damage * f;
        }
    }

    private static void applyDroneDamage() {
        float m = droneMult();
        for (int i = 0; i < 2; i++) {
            Ennemis d = drones[i];
            if (d == null || d.removed) continue;
            d.bulletDamage = baseBullet[i] * m;
            LaserBeam beam = beamOf(d);
            if (beam != null) {
                beam.damage = baseBeam[i] * m;
            }
        }
    }

    private static void dropDrone(int i, boolean fx) {
        Ennemis d = drones[i];
        drones[i] = null;
        if (d == null) {
            return;
        }
        d.specificName = null;
        if (!d.removed) {
            if (fx) {
                ParticuleFactory.addLightBlue(d, 4);
            }
            d.remove();
        }
    }

    private static void upkeepDrones(PlayerShip ps, long j) {
        float range = engageRange();
        for (int i = 0; i < 2; i++) {
            Ennemis d = drones[i];
            if (d == null) {
                continue;
            }
            if (d.removed) {
                d.specificName = null;
                drones[i] = null;
                continue;
            }
            droneTimers[i] = (int) (droneTimers[i] - j);
            float toShip = d.position.distance(ps.position);
            if (droneTimers[i] <= 0 || ps.removed || toShip > 5000.0f) {
                dropDrone(i, true);
                continue;
            }
            Element at = d.attackTarget;
            boolean bad = at == null || at.removed || at.isPlayer || isDrone(at) || !(at instanceof Ennemis);
            // Defense: never chase anything that is far from the mothership
            if (!bad && droneDefense && at.position.distance(ps.position) > range + 200.0f) {
                bad = true;
            }
            if (bad) {
                Element t = findEnemy(ps.position, range);
                if (t != null) {
                    d.initAttackTarget(t);
                } else {
                    d.attackTarget = null;
                    // nothing to fight: fly back and hover around the ship
                    if (toShip > 350.0f) {
                        float a = Element.normalizeSpin((((float) Math.toDegrees(d.position.getAngularWithInRad(ps.position))) % 360.0f) + 90.0f);
                        d.spin = a;
                        tmp.set(0.0f, -0.08f * j);
                        tmp.applyRotatation(Math.toRadians(a));
                        d.speed.add(tmp);
                    }
                }
            }
        }
    }

    // ---------------------------------------------------------------- camera

    /** Extra camera zoom-out for very large ships. */
    public static float zoomBonus() {
        PlayerShip ps = ObjectRegistry.INSTANCE.playerShip;
        if (ps == null || ps.shipSpec == null) {
            return 0.0f;
        }
        int size = ps.shipSpec.drawableSize;
        return size > 280 ? (size - 280) * 0.9f : 0.0f;
    }

    // ---------------------------------------------------------------- ship passive bonuses (after gear is applied)

    /** Dock attraction radius grows with the player's hull so big ships can reach every dock point. */
    public static int dockRange(fr.testudo.spacecorsair.business.world.station.DockPoint d) {
        int r = d.applyForceMiniDistance;
        PlayerShip ps = ObjectRegistry.INSTANCE.playerShip;
        if (ps != null) {
            int half = (int) (ps.getPhysicDimension().x / 2.0f);
            if (half > 60) {
                r += half - 60;
            }
        }
        return r;
    }

    public static void applyShipBonuses(PlayerShip ps) {
        try {
            ModShips.apply(ps);
        } catch (Exception e) {
            // never block gear changes
        }
        if (ps.shipSpec != null && ps.shipSpec.physicSizeWithShield > 300) {
            int need = (ps.shipSpec.physicSizeWithShield / 2) + 150;
            if (ps.dockDistance < need) {
                ps.dockDistance = need;
            }
        }
        if (ps.shipSpec != null && ps.shipSpec.image == PlayerShipSpec.Image.TEST && ps.shield != null) {
            ps.shield.capacity *= 1.5f;
            ps.shield.reloadUnitBySec *= 2.0f;
            ps.shield.reloadTime *= 0.5f;
            if (ps.shield.currentValue > ps.shield.capacity) {
                ps.shield.currentValue = ps.shield.capacity;
            }
        }
    }

    // ---------------------------------------------------------------- texts for the new items

    public static String label(SpaceObjectType t) {
        String wpn = ModWeapons.label(t);
        if (wpn != null) return wpn;
        String secret = ModRep.label(t);
        if (secret != null) return secret;
        String devName = ModDev.label(t);
        if (devName != null) return devName;
        String hullName = ModShips.label(t);
        if (hullName != null) {
            return hullName;
        }
        String base = baseLabel(t);
        if (base == null || "megatronShip".equals(t.name())) {
            return base;
        }
        return base + " " + ObjectRegistry.INSTANCE.getLocalizedString(fr.testudo.spacecorsair.R.string.shortLevel) + " " + t.getGearSpec().level;
    }

    private static String family(String n) {
        for (String f : ModSpecs.FAMILY_NAMES) {
            if (n.equals(f) || (n.startsWith(f) && n.length() > f.length() && n.charAt(f.length()) == 'L')) {
                return f;
            }
        }
        return n;
    }

    private static String baseLabel(SpaceObjectType t) {
        String n = family(t.name());
        if ("alienBeamLaser".equals(n)) return "Banshee Beam";
        if ("regentBeamLaser".equals(n)) return "Regent Venom Beam";
        if ("arwingBoltLaser".equals(n)) return "Arwing Plasma Bolt";
        if ("megatronBattery".equals(n)) return "Megatron Heavy Battery";
        if ("megatronSalvo".equals(n)) return "Megatron Salvo Missile";
        if ("regentHiveBay".equals(n)) return "Regent Hive Bay";
        if ("megatronShip".equals(n)) return "Megatron";
        return null;
    }

    private static final String SKILL = ModLang.tr("<br><br><font color='#d21aff'><b>SPECIAL SKILL</b></font><br>");

    private static String original(SpaceObjectType t) {
        try {
            java.lang.reflect.Field f = SpaceObjectType.class.getDeclaredField("descId");
            f.setAccessible(true);
            int id = f.getInt(t);
            return ObjectRegistry.INSTANCE.game.context.getString(id);
        } catch (Exception e) {
            return "";
        }
    }

    public static String desc(SpaceObjectType t) {
        String wpn = ModWeapons.desc(t);
        if (wpn != null) return wpn;
        String secret = ModRep.desc(t);
        if (secret != null) return secret;
        String dev = ModDev.desc(t);
        if (dev != null) return dev;
        String line = null;
        try {
            line = ModShips.classLine(t);
        } catch (Exception e) {
            line = null;
        }
        String body = descBody(t);
        if (line == null) {
            String src = ModQol.source(t);
            if (src.length() == 0) {
                return body;
            }
            return (body != null ? body : original(t)) + src;
        }
        if (body == null) {
            String h = ModShips.desc(t);
            body = h != null ? h : original(t);
        }
        return line + body + ModQol.compare(t);
    }

    private static String descBody(SpaceObjectType t) {
        String n = family(t.name());
        if ("alienRat".equals(n)) {
            return original(t) + SKILL + ModLang.tr("<b>Vortex decoy</b>: when a missile locks on, 33% chance to release a vortex that pulls the missile away.");
        }
        if ("alienUfo".equals(n)) {
            return original(t) + SKILL + ModLang.tr("<b>Phase hull</b>: animated alien hull with enemy-grade handling (instant thrust, hard braking). Pair it with the Banshee Beam.");
        }
        if ("alienBlatte".equals(n)) {
            return original(t) + SKILL + ModLang.tr("<b>Vortex decoy</b>: 80% chance to release a vortex when a missile locks on.<br>"
                + "<b>Root shot</b>: every 15 s, automatically fires an electric shot that pins the nearest enemy (within 2000) in place for 8 s.<br>"
                + "Equip the <b>Regent Hive Bay</b> to launch Banshee and Arwing drones.");
        }
        if ("policeShip".equals(n)) {
            return original(t) + SKILL + ModLang.tr("<b>Twin swivel mounts</b>: two independent rotating cannons, bow and stern.");
        }
        if ("hullBreaker".equals(n)) {
            return original(t) + SKILL + ModLang.tr("<b>Kinetic ram</b>: deals damage to anything it hits while its shield is up.");
        }
        if ("corvette".equals(n)) {
            return original(t) + SKILL + ModLang.tr("<b>Twin missile tubes</b>: fires two missiles per launch.");
        }
        if ("alienBeamLaser".equals(n)) {
            return ModLang.tr("Alien beam emitter salvaged from a Banshee UFO, the same weapon its pilots use against you.<br><br>"
                + "It locks onto the closest enemy in front of your ship and fires short red beam pulses. "
                + "Each pulse lands once per reload, never misses, but only reaches targets within short range (600).<br><br>"
                + "Works on fixed-cannon and turret ships alike.");
        }
        if ("regentBeamLaser".equals(n)) {
            return ModLang.tr("The purple venom beam of the Regent command ship.<br><br>"
                + "Pulsed, auto-targeted and reaches twice as far as the Banshee Beam (1200). "
                + "Each pulse can inject a long-lasting alien poison into the target.<br><br>"
                + "Works on fixed-cannon and turret ships alike.");
        }
        if ("arwingBoltLaser".equals(n)) {
            return ModLang.tr("The green plasma cannon of the Arwing interceptor.<br><br>"
                + "Fires fast alien plasma bolts at a high rate. Lower damage per bolt than human lasers, but very quick reload.");
        }
        if ("megatronBattery".equals(n)) {
            return ModLang.tr("Heavy turret battery taken from a SPARTAN Guardian-class cruiser.<br><br>"
                + "Slow, hard-hitting and very fast shells. Best mounted on the three turrets of the Megatron.");
        }
        if ("megatronSalvo".equals(n)) {
            return ModLang.tr("<b>A missile modification defines the characteristics of the missile you fire.</b><br><br>"
                + "Heavy homing missile carried by Guardian-class cruisers. Huge payload and blast radius, slow to manoeuvre. "
                + "Ships with two launch tubes fire a salvo of two.");
        }
        if ("regentHiveBay".equals(n)) {
            return ModLang.tr("<b>Replaces your missiles with alien drones.</b><br><br>"
                + "Each launch uses one missile from your hold and releases 1 Banshee UFO and 1 Arwing (at most one of each out at a time). "
                + "Drones are always built at your current pilot level and kills made by drones count as yours.<br><br>"
                + "<b>Stance</b>: while drones are out and the bay is reloading (or full), tap the missile button to switch:<br>"
                + "<b>Defense</b> (default): drones stay within 900 of your ship and deal +25% damage.<br>"
                + "<b>Attack</b>: drones hunt anything within 2500 but deal 15% less damage.<br><br>"
                + "Higher tiers make stronger, longer-lived drones and reload faster.");
        }
        if ("megatronShip".equals(n)) {
            return ModLang.tr("SPARTAN Guardian-class cruiser, the Megatron class of the Spartan HQ patrols. Three heavy rotating turrets and twin missile tubes. "
                + "Acceleration is glacial. Armor is not a concern.")
                + SKILL + ModLang.tr("<b>Spartan Aegis</b>: SPARTAN shield technology. Any equipped shield gets +50% capacity, twice the regeneration rate and half the recovery delay.<br>"
                + "<b>Point defence</b>: automatically shoots down a missile locked on you (every 2.5 s).<br>"
                + "<b>Repulsion wave</b>: every 1.5 s, pushes away any enemy within 350 of the hull.");
        }
        return null;
    }
}
