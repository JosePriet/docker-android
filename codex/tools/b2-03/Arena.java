package fr.testudo.spacecorsair.mod;

import fr.testudo.spacecorsair.business.ennemis.EnnemisSpec;
import fr.testudo.spacecorsair.business.ennemis.EnnemisSpecByLevel;
import fr.testudo.spacecorsair.business.loot.stuff.laser.LaserSpec;
import fr.testudo.spacecorsair.engine.Vector2;
import java.util.ArrayList;
import java.util.EnumSet;
import java.util.List;
import java.util.Random;

/** A fixed-step encounter. Positions are world units, velocities are units per 10 ms, clocks are ms. */
class Arena {
    enum Rule { FOCUS, FLANK, KITE, REPAIR, SCREEN, RADIO, TELEGRAPH, PERSONALITY }
    enum Scene { PATROL, AEGIS, POLICE, BASTION }
    static final int DT = 50, LIMIT = 90000;
    static final int[] LIFE = ModV34.shipLife();
    final List<Ship> hostiles = new ArrayList<>();
    final List<Shot> shots = new ArrayList<>();
    final Ship player = new Ship(), ally = new Ship();
    final Vector2 goal = new Vector2(), marker = new Vector2();
    final EnumSet<Rule> rules;
    final Scene scene;
    final int level, faction;
    final Random layout;
    final ModShips.Hull hull;
    final double phase, orbit, reaction;
    final float startingHp;
    Ship capital;
    int time, tier, waveAt, calledTier = -1, castAt = 4000, impactAt = -1, launchAt = 1500, wingCount;
    int activations, impacts, intercepted, escaped;
    String result = "timeout";

    static class Ship {
        final Vector2 pos = new Vector2(), vel = new Vector2(), old = new Vector2();
        float max, hp, radius, damage, range, speed, spin, turn, mobility = 4;
        int reload, ready, mode, cls, id, fac;
        boolean drone, repairing, repaired, thrustRequested, fireRequested;
        Random aim;
        boolean alive() { return hp > 0; }
        void health(float amount) { hp = max = amount; }
    }
    static class Shot {
        float x, y, vx, vy, damage;
        int ttl;
        boolean friendly;
    }

    Arena(Scene scene, EnumSet<Rule> rules, int seed, int level) {
        this.scene = scene;
        this.rules = rules;
        this.level = level;
        layout = new Random(1000003L * seed + 97L * level + scene.ordinal());
        phase = layout.nextDouble() * 2 * Math.PI;
        orbit = 420 + layout.nextDouble() * 560;
        reaction = 0.25 + layout.nextDouble() * 1.65;
        faction = scene == Scene.AEGIS ? 0 : scene == Scene.BASTION ? 4 : Math.floorMod(seed, ModFactionData.KEYS.length);
        String id = level == 10 ? "hullBastion" : level == 25 ? "hullRaptor" : "hullMonolith";
        hull = hull(id);
        setupPilot(player, 1f, seed);
        player.hp *= 0.15f + 0.85f * layout.nextFloat(); // entry state of a fight already in progress
        startingHp = player.hp;
        setupPilot(ally, 0.28f, seed + 1);
        ally.pos.set(-260, 190);
        if (scene != Scene.PATROL) ally.hp = 0;
        if (scene == Scene.AEGIS || scene == Scene.BASTION) {
            capital = new Ship();
            capital.health((500000f + 30000f * level) * ModCapitals.HULL_MULT[faction]);
            // End-of-fight snapshot: one operational mount, depleted shield, a short remaining hull segment.
            capital.hp = player.damage * (1 + layout.nextInt(32));
            capital.radius = ModCapitals.SIZE * 0.275f;
            capital.pos.set(1400 + layout.nextInt(800), 0);
            ModCapitals.Gun gun = ModCapitals.GUNS[faction][0];
            capital.range = gun.range;
            capital.speed = gun.speed;
            capital.damage = basic().shootDamage * 3 * ModV34.curve(level) * ModCapitals.DMG_MULT * gun.dmg;
            capital.reload = gun.reload;
            capital.ready = 1500;
            add(capital);
        } else if (scene == Scene.POLICE) {
            tier = seed % 3;
            wave(tier);
            waveAt = (int) ModPolice.waveBase(tier);
        } else {
            for (int i = 0, n = 2 + layout.nextInt(3); i < n; i++) fighter(0, false);
        }
    }

    static ModShips.Hull hull(String id) {
        for (ModShips.Hull h : ModShips.HULLS) if (h != null && h.id.equals(id)) return h;
        throw new IllegalArgumentException(id);
    }

    void setupPilot(Ship ship, float share, int seed) {
        int gear = 0;
        while (gear < 3 && level >= ModSpecs.TIER_REQ[gear + 1]) gear++;
        LaserSpec gun = ModWeapons.SPECS[ModWeapons.RAIL][gear];
        ship.health(LIFE[level] * hull.spec.lifeBooster * share);
        ship.damage = gun.damage * hull.dmg * Math.max(1, hull.spec.canonCount) * share;
        ship.radius = hull.spec.physicSizeWithoutShield * 0.5f * (float)Math.sqrt(share);
        ship.range = ModCapitals.GUNS[0][0].range;
        ship.speed = Math.abs(gun.bulletSpeed);
        ship.reload = Math.round(gun.reload * hull.reload);
        ship.aim = new Random(1664525L * seed + 19);
    }

    EnnemisSpec basic() {
        EnnemisSpec[] rows = EnnemisSpecByLevel.BasciEnnemisSpec;
        return rows[Math.min(rows.length - 1, level)];
    }

    void add(Ship s) {
        s.id = hostiles.size();
        s.fac = faction;
        s.aim = new Random(layout.nextLong());
        hostiles.add(s);
    }

    void fighter(int cls, boolean drone) {
        Ship s = new Ship();
        s.cls = cls;
        s.drone = drone;
        ModFleet.Type skin = ModFleet.TYPES[layout.nextInt(2)]; // two BASIC skins
        float base = ModV34.baseHull(Math.min(15, level)) * ModV34.curve(level);
        boolean police = scene == Scene.POLICE;
        s.health(base * ModV34.classFactor(cls) * (police ? ModPolice.HULL_BONUS : skin.hp));
        s.damage = basic().shootDamage * ModV34.curve(level) * ModV34.dmgClass(cls)
                * (police ? ModPolice.DMG_BONUS : skin.dmg);
        int rolledTier = Math.max(1, Math.min(4, level / 12 + layout.nextInt(3)));
        if (police) {
            // Active mod elite hook (ModV34.elite); these fixtures use its explicit multipliers.
            s.health(s.max * 2.5f);
            s.damage *= 1.5f;
            rolledTier = Math.min(4, rolledTier + 1);
        }
        s.damage *= ModV34.TIER_F[rolledTier];
        s.reload = Math.round(basic().shootReload / ModV34.TIER_F[rolledTier]);
        s.radius = skin.size * 0.35f;
        s.turn = basic().maxTurnFactor;
        s.range = 800;
        s.speed = Math.abs(ModWeapons.STAT[ModCapitals.GUNS[faction][0].fam][3]);
        float cx = 950, cy = 0, spread = 420;
        if (drone) {
            s.health(Math.max(1000f, capital.max * ModAegisDrones.HULL_SHARE));
            s.damage = capital.damage * ModAegisDrones.RAIL_SHARE;
            s.reload = (int)ModAegisDrones.RAIL_MS;
            s.ready = time + 800 + layout.nextInt(800);
            s.range = ModAegisDrones.RAIL_RANGE;
            s.speed = ModAegisDrones.RAIL_SPEED;
            s.radius = ModAegisDrones.SIZE * 0.35f;
            cx = capital.pos.x;
            cy = capital.pos.y;
            spread = 500;
        }
        double a = layout.nextDouble() * 2 * Math.PI;
        s.pos.set(cx + spread * (float)Math.cos(a), cy + spread * (float)Math.sin(a));
        s.spin = angle(s.pos, player.pos) + layout.nextInt(91) - 45;
        add(s);
    }

    void wave(int top) {
        int[] classes = ModPolice.waveClasses(top, 1 + layout.nextInt(2));
        int room = ModPolice.room(active(), classes.length);
        for (int i = 0; i < room; i++) fighter(classes[i], false);
    }

    int active() {
        int n = 0;
        for (Ship s : hostiles) if (s.alive()) n++;
        return n;
    }

    static float distance(Vector2 a, Vector2 b) {
        float dx = b.x - a.x, dy = b.y - a.y;
        return (float)Math.sqrt(dx * dx + dy * dy);
    }

    static float angle(Vector2 a, Vector2 b) {
        return normalize((float)Math.toDegrees(Math.atan2(b.y - a.y, b.x - a.x)) + 90);
    }

    static float normalize(float degrees) {
        return (degrees % 360 + 360) % 360;
    }

    // Decision before reload / missile checks, taken from BasicEnnemyShip.doAttackIa.
    static boolean stockThrust(long distance, int error) {
        return error < 80 && distance > 250;
    }
    static boolean stockFire(long distance, int error, float range) {
        return error < 5 && distance < range;
    }

    void stockDecision(Ship s, Ship target, long distance, float want) {
        int error = Math.abs((int)(want - s.spin));
        s.thrustRequested = stockThrust(distance, error);
        s.fireRequested = stockFire(distance, error, 800);
    }

    Ship objective() {
        if (capital != null) return capital;
        Ship nearest = null;
        float best = Float.MAX_VALUE;
        for (Ship s : hostiles) if (s.alive()) {
            float d = distance(s.pos, player.pos);
            if (d < best) { best = d; nearest = s; }
        }
        return nearest;
    }

    void aim(Ship s, Ship target, boolean friendly, boolean lead, float spread) {
        if (time < s.ready || distance(s.pos, target.pos) > s.range) return;
        float flight = lead ? distance(s.pos, target.pos) / s.speed : 0;
        double a = Math.atan2(target.pos.y + target.vel.y * flight - s.pos.y,
                              target.pos.x + target.vel.x * flight - s.pos.x);
        a += Math.toRadians((s.aim.nextDouble() * 2 - 1) * spread);
        Shot b = new Shot();
        b.x = s.pos.x; b.y = s.pos.y;
        b.vx = (float)Math.cos(a) * s.speed; b.vy = (float)Math.sin(a) * s.speed;
        b.ttl = (int)(s.range * 11.5f / s.speed);
        b.damage = s.damage;
        b.friendly = friendly;
        shots.add(b);
        s.ready = time + s.reload;
    }

    void pilot(Ship s, Ship target, boolean wingman) {
        float dx = s.pos.x - target.pos.x, dy = s.pos.y - target.pos.y;
        float d = Math.max(1f, (float)Math.hypot(dx, dy));
        float radial = ModV35.clamp((float)(orbit - d) / 340f, -1, 1);
        float side = (float)Math.sin(time / 2300.0 + phase + (wingman ? 1 : 0));
        if (impactAt > time && time >= impactAt - 2000 + reaction * 1000 && distance(s.pos, marker) < 530) {
            // The same pilot sees the locked marker in both arms. Move out along its shortest exit.
            dx = s.pos.x - marker.x; dy = s.pos.y - marker.y;
            d = Math.max(1, (float)Math.hypot(dx, dy));
            radial = 1; side = 0;
        }
        float mobility = hull.spec.maxPouseeForce * 0.16f / ((hull.spec.deperditionFactor - 1) * 1.1f);
        s.vel.x += ((radial * dx - side * dy) / d * mobility - s.vel.x) * 0.15f;
        s.vel.y += ((radial * dy + side * dx) / d * mobility - s.vel.y) * 0.15f;
        aim(s, target, true, true, 3.5f);
    }

    void capitalTick() {
        aim(capital, player, false, true, ModCapitals.GUNS[faction][0].spread);
        if (scene == Scene.AEGIS) {
            if (active() - 1 >= wingCount && wingCount > 0) launchAt = time + (int)ModAegisDrones.RESPAWN_MS;
            else if (time >= launchAt) {
                wingCount = ModAegisDrones.MIN_DRONES + layout.nextInt(ModAegisDrones.MAX_DRONES - ModAegisDrones.MIN_DRONES + 1);
                while (active() - 1 < wingCount) fighter(0, true);
                launchAt = time + (int)ModAegisDrones.RESPAWN_MS;
            }
        } else if (time >= castAt && distance(capital.pos, player.pos) < 3800) {
            boolean predict = rules.contains(Rule.TELEGRAPH);
            ModTitanAI.artilleryPoint(marker, player.pos, player.vel, predict);
            if (predict) activations++;
            castAt = time + 6000;
            impactAt = time + 2000;
        } else if (impactAt >= 0 && time >= impactAt) {
            if (distance(marker, player.pos) < 380) { player.hp -= 0.12f * player.max; impacts++; }
            impactAt = -1;
        }
    }

    void policeTick() {
        if (rules.contains(Rule.RADIO)) {
            for (Ship s : hostiles) {
                long delay = ModPolice.radioTimer(waveAt - time, tier, calledTier, s.hp, s.max);
                if (time + delay < waveAt) {
                    waveAt = time + (int)delay;
                    calledTier = tier;
                    activations++;
                    break;
                }
            }
        }
        if (time >= waveAt) {
            waveAt = time + (int)ModPolice.waveBase(tier);
            int next = ModPolice.nextTop(1, tier, level, false);
            if (ModPolice.room(active(), 1) > 0) { tier = next; wave(tier); }
        }
    }

    boolean flank(Vector2 target, int slot, int count) {
        if (count < 2) return false;
        double angle = 2 * Math.PI * slot / count;
        goal.set(target.x + (float)Math.cos(angle) * 850, target.y + (float)Math.sin(angle) * 850);
        return true;
    }

    void enemy(Ship s, int slot, int count) {
        Ship t = player;
        if (rules.contains(Rule.FOCUS) && ally.alive() && ally.hp < player.hp && distance(s.pos, ally.pos) <= 3200) {
            t = ally; activations++;
        }
        float d = distance(s.pos, t.pos);
        float want = angle(s.pos, t.pos);
        stockDecision(s, t, (long)d, want);
        boolean thrust = s.thrustRequested;
        if (time % 500 == 0) {
            float score = ModV35.score(level, level, s.cls, hull.cls, 1, hull.tech, 0, s.hp / s.max, player.hp / player.max);
            s.mode = ModV35.mode(score, s.hp / s.max, false);
        }
        if (scene == Scene.PATROL && d > (s.mode == ModV35.AGGRO ? 8000 : 5000)) {
            s.hp = 0;
            escaped++;
            return;
        }
        if (s.mode == ModV35.AGGRO && d > 220) thrust = true;
        if (s.mode < 0 && (s.mode == ModV35.FLEE || d < 640)) {
            want = normalize(want + 180);
            thrust = Math.abs(ModV35.norm(want - s.spin)) < 100;
        } else if (s.mode == ModV35.KITE && d < 800) thrust = false;
        float turn = ModV35.norm(want - s.spin);
        if (Math.abs(turn) >= 4) s.spin = normalize(s.spin + Math.signum(turn) * Math.min(Math.abs(turn), s.turn * DT / 10f));
        double a = Math.toRadians(s.spin - 90);
        float drive = thrust ? s.mobility : 0;
        s.vel.x += (drive * Math.cos(a) - s.vel.x) * 0.09;
        s.vel.y += (drive * Math.sin(a) - s.vel.y) * 0.09;

        if (rules.contains(Rule.REPAIR) && !s.repaired && s.hp < 0.25f * s.max) s.repairing = true;
        if (s.repairing) {
            goal.set(s.pos.x + s.pos.x - t.pos.x, s.pos.y + s.pos.y - t.pos.y);
            ModTitanAI.steer(s.pos, s.vel, goal, DT);
            if (d > 800) s.hp = Math.min(s.max, s.hp + s.max * DT / 20000f);
            if (s.hp >= s.max * 0.45f) { s.repairing = false; s.repaired = true; }
            activations++;
            return;
        }
        if (s.drone && ((rules.contains(Rule.SCREEN) && ModTitanAI.screenPoint(goal, capital.pos, t.pos, slot, count))
                || (rules.contains(Rule.FLANK) && flank(t.pos, slot, count)))) {
            ModTitanAI.steer(s.pos, s.vel, goal, DT);
            activations++;
        }
        if (rules.contains(Rule.KITE)) band(s, t, s.range * 0.58f, s.range * 0.84f);
        if (rules.contains(Rule.PERSONALITY)) personality(s, t, slot, count);
        if (s.drone || s.fireRequested) aim(s, t, false, s.drone, s.drone ? 0 : 2);
    }

    void band(Ship s, Ship t, float near, float far) {
        ModTitanAI.rangePoint(goal, s.pos, t.pos, near, far);
        ModTitanAI.steer(s.pos, s.vel, goal, DT);
        activations++;
    }

    void personality(Ship s, Ship t, int slot, int count) {
        switch (ModFactionData.KEYS[s.fac]) {
            case "reaver": band(s, t, 120, 320); break;
            case "kretari":
                flank(t.pos, slot, Math.max(2, count));
                ModTitanAI.steer(s.pos, s.vel, goal, DT);
                activations++;
                break;
            case "warden": band(s, t, 610, 765); break;
            case "ironclad": band(s, t, 400, 575); break;
            case "helion": band(s, t, 250, 500); break;
            case "varn": band(s, t, 520, 720); break;
            case "spartan": band(s, t, 360, 630); break;
            default: throw new IllegalStateException("Missing personality");
        }
    }

    static void move(Ship s) {
        s.old.setSameAs(s.pos);
        s.pos.add(s.vel.x * DT / 10f, s.vel.y * DT / 10f);
    }

    // Relative swept segment vs circle. Earliest contact lets a screen physically intercept a rail.
    static double contact(Shot b, Ship s) {
        if (!s.alive()) return 2;
        double x = b.x - s.old.x, y = b.y - s.old.y;
        double dx = b.vx * DT / 10 - (s.pos.x - s.old.x), dy = b.vy * DT / 10 - (s.pos.y - s.old.y);
        double c = x*x + y*y - s.radius*s.radius;
        if (c <= 0) return 0;
        double a = dx*dx + dy*dy, dot = x*dx + y*dy, disc = dot*dot - a*c;
        if (a == 0 || dot >= 0 || disc < 0) return 2;
        return (-dot - Math.sqrt(disc)) / a;
    }

    void resolve() {
        for (int i = shots.size() - 1; i >= 0; i--) {
            Shot b = shots.get(i);
            Ship hit = null;
            double first = 2;
            if (b.friendly) {
                for (Ship s : hostiles) {
                    double t = contact(b, s);
                    if (t < first) { hit = s; first = t; }
                }
            } else {
                first = contact(b, player); hit = player;
                double t = contact(b, ally);
                if (t < first) { hit = ally; first = t; }
            }
            if (first <= 1) {
                hit.hp -= b.damage;
                if (hit.drone && capital != null) intercepted++;
                if (!hit.alive() && scene == Scene.POLICE && b.friendly)
                    waveAt = time + (int)ModPolice.cutCountdown(waveAt - time, ModPolice.waveBase(tier));
                shots.remove(i);
            } else if ((b.ttl -= DT) <= 0) shots.remove(i);
            else { b.x += b.vx * DT / 10; b.y += b.vy * DT / 10; }
        }
    }

    void step() {
        Ship target = objective();
        pilot(player, target, false);
        if (ally.alive()) pilot(ally, target, true);
        if (capital != null) capitalTick();
        if (scene == Scene.POLICE) policeTick();
        int slot = 0, count = active() - (capital == null ? 0 : 1);
        for (Ship s : hostiles) if (s.alive() && s != capital) enemy(s, slot++, count);
        move(player); move(ally);
        for (Ship s : hostiles) move(s);
        resolve();
        time += DT;
        if (!player.alive()) result = "loss";
        else if (capital != null ? !capital.alive() : active() == 0) result = escaped == 0 ? "win" : "escape";
    }

    boolean running() { return time < LIMIT && result.equals("timeout"); }
    float damage() { return startingHp - Math.max(0, player.hp); }
}
