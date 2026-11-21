package fr.testudo.spacecorsair.mod;

import fr.testudo.spacecorsair.business.ennemis.BasicEnnemyShip;
import java.io.*;
import java.nio.charset.StandardCharsets;
import java.nio.file.*;
import java.util.EnumSet;
import java.util.Locale;
import java.util.zip.GZIPOutputStream;
import static fr.testudo.spacecorsair.mod.Arena.Rule;
import static fr.testudo.spacecorsair.mod.Arena.Scene;

/** Run at repo root. Inputs to a pair differ only in the enabled rule. */
public final class Experiment {
    static Scene scene(Rule r) {
        switch (r) {
            case FLANK: case SCREEN: return Scene.AEGIS;
            case RADIO: return Scene.POLICE;
            case TELEGRAPH: return Scene.BASTION;
            default: return Scene.PATROL;
        }
    }

    // Exercise the actual closed fighter decision, intercepting the fire request before pooled game FX.
    static final class Probe extends BasicEnnemyShip {
        boolean fired;
        public void shoot() { fired = true; }
        void decide(long distance) { fired = false; doAttackIa(Arena.DT, distance); }
    }

    static void baselineTrace(Path dir) throws IOException {
        Probe ship = new Probe(), target = new Probe();
        ship.attackTarget = target;
        ship.position.set(0, 0);
        ship.distanceShoot = 800;
        ship.maxTurnFactor = 1;
        ship.missileCount = 0;
        try (PrintWriter out = writer(dir.resolve("baseline.csv"))) {
            out.println("range,error_deg,jar_thrust,arena_thrust,jar_fire,arena_fire");
            for (int distance : new int[]{250, 251, 350, 799, 800, 801}) {
                target.position.set(distance, 0);
                for (int error : new int[]{0, 4, 5, 79, 80, 180, 269}) {
                    ship.spin = 90 + error;
                    ship.decide(distance);
                    boolean thrust = Arena.stockThrust(distance, error);
                    boolean fire = Arena.stockFire(distance, error, ship.distanceShoot);
                    out.printf("%d,%d,%b,%b,%b,%b%n", distance, error, ship.isPousee, thrust, ship.fired, fire);
                    if (ship.isPousee != thrust || ship.fired != fire) throw new AssertionError(distance + "/" + error);
                }
            }
        }
    }

    /** Same encounter and integrator; this controller calls the shipped fighter's bytecode every tick. */
    static final class ReferencePatrol extends Arena {
        final Probe ship = new Probe(), target = new Probe();
        ReferencePatrol(int seed) {
            super(Scene.PATROL, EnumSet.noneOf(Rule.class), seed, 25);
            ship.attackTarget = target;
            ship.distanceShoot = 800;
            ship.missileCount = 0;
        }
        @Override void stockDecision(Ship s, Ship t, long distance, float want) {
            ship.position.setSameAs(s.pos);
            target.position.setSameAs(t.pos);
            ship.spin = s.spin;
            ship.maxTurnFactor = s.turn;
            ship.decide(distance);
            s.thrustRequested = ship.isPousee;
            s.fireRequested = ship.fired;
        }
    }

    static void patrolTrace(Path dir) throws IOException {
        Arena ref = new ReferencePatrol(17);
        Arena sim = new Arena(Scene.PATROL, EnumSet.noneOf(Rule.class), 17, 25);
        try (PrintWriter out = writer(dir.resolve("baseline-fight.csv"))) {
            out.println("ms,jar_hostiles,arena_hostiles,jar_pilot_hp,arena_pilot_hp,jar_shots_in_flight,arena_shots_in_flight");
            while (ref.running() && sim.running()) {
                ref.step();
                sim.step();
                if (ref.active() != sim.active() || ref.player.hp != sim.player.hp || ref.shots.size() != sim.shots.size())
                    throw new AssertionError("Fighter replay diverged at " + sim.time);
                for (int i = 0; i < ref.hostiles.size(); i++) {
                    Arena.Ship x = ref.hostiles.get(i), y = sim.hostiles.get(i);
                    if (x.hp != y.hp || x.pos.x != y.pos.x || x.pos.y != y.pos.y ||
                            x.thrustRequested != y.thrustRequested || x.fireRequested != y.fireRequested)
                        throw new AssertionError("Divergent ship " + i + " at " + sim.time);
                }
                if (sim.time % 500 == 0 || !sim.running())
                    out.printf("%d,%d,%d,%.1f,%.1f,%d,%d%n", sim.time, ref.active(), sim.active(),
                            ref.player.hp, sim.player.hp, ref.shots.size(), sim.shots.size());
            }
            if (!ref.result.equals(sim.result)) throw new AssertionError("Different fight outcomes");
            System.out.printf("L25 patrol seed 17 matched for %d steps (%s).%n", sim.time / Arena.DT, sim.result);
        }
    }

    static PrintWriter writer(Path file) throws IOException {
        return new PrintWriter(Files.newBufferedWriter(file, StandardCharsets.UTF_8));
    }
    static final class Stats {
        int wins, timeout, used, impacts, intercepted;
        double ttk, damage, duration;
        void add(Arena a) {
            if (a.result.equals("win")) { wins++; ttk += a.time / 1000.; }
            if (a.result.equals("timeout")) timeout++;
            if (a.activations > 0) used++;
            impacts += a.impacts;
            intercepted += a.intercepted;
            damage += a.damage();
            duration += a.time / 1000.;
        }
    }

    static void writeTrack(PrintWriter w, Scene scene, EnumSet<Rule> rules, int seed, int level, int arm) {
        Arena a = new Arena(scene, rules, seed, level);
        while (a.running()) {
            if (a.time % 250 == 0) {
                position(w, arm, a.time, "pilot", a.player);
                if (a.ally.alive()) position(w, arm, a.time, "ally", a.ally);
                for (Arena.Ship s : a.hostiles) if (s.alive()) position(w, arm, a.time,
                        s == a.capital ? "capital" : "wing" + s.id, s);
                if (a.impactAt > a.time) w.printf("%d,%d,marker,%.1f,%.1f,380,1%n", arm, a.time, a.marker.x, a.marker.y);
            }
            a.step();
        }
    }

    static void replay(Path dir, Rule rule, int seed) throws IOException {
        try (PrintWriter w = writer(dir.resolve("replay-" + rule.name().toLowerCase(Locale.ROOT) + ".csv"))) {
            w.println("arm,ms,body,x,y,radius,hp");
            writeTrack(w, scene(rule), EnumSet.noneOf(Rule.class), seed, 25, 0);
            writeTrack(w, scene(rule), EnumSet.of(rule), seed, 25, 1);
        }
    }
    static void position(PrintWriter w, int arm, int t, String name, Arena.Ship s) {
        w.printf("%d,%d,%s,%.1f,%.1f,%.1f,%.1f%n", arm, t, name, s.pos.x, s.pos.y, s.radius, s.hp);
    }
    static void measure(Path dir, int n) throws IOException {
        try (PrintWriter summary = writer(dir.resolve("summary.csv"));
             PrintWriter raw = new PrintWriter(new BufferedWriter(new OutputStreamWriter(
                     new GZIPOutputStream(Files.newOutputStream(dir.resolve("fights.csv.gz"))), StandardCharsets.UTF_8)))) {
            summary.println("rule,level,arm,n,wins,timeouts,mean_win_ttk_s,mean_duration_s,mean_hp_lost,triggered_fights,artillery_hits,interceptions");
            raw.println("rule,level,seed,arm,result,ms,hp_lost,activated");
            for (Rule r : Rule.values()) for (int lv : new int[]{10, 25, 40}) {
                Stats[] stats = {new Stats(), new Stats()};
                for (int seed = 0; seed < n; seed++) for (int arm = 0; arm < 2; arm++) {
                    Arena a = new Arena(scene(r), arm == 0 ? EnumSet.noneOf(Rule.class) : EnumSet.of(r), seed, lv);
                    while (a.running()) a.step();
                    raw.printf("%s,%d,%d,%d,%s,%d,%.1f,%b%n", r, lv, seed, arm, a.result, a.time, a.damage(), a.activations > 0);
                    stats[arm].add(a);
                }
                for (int arm = 0; arm < 2; arm++) {
                    Stats s = stats[arm];
                    summary.printf("%s,%d,%d,%d,%d,%d,%.2f,%.2f,%.1f,%d,%d,%d%n", r, lv, arm, n,
                            s.wins, s.timeout, s.wins == 0 ? Double.NaN : s.ttk/s.wins, s.duration/n, s.damage/n,
                            s.used, s.impacts, s.intercepted);
                }
                summary.flush();
            }
            if (raw.checkError() || summary.checkError()) throw new IOException("Could not write fight results");
        }
    }

    public static void main(String[] args) throws IOException {
        Locale.setDefault(Locale.ROOT);
        if (args.length >= 4 && args[0].equals("replay")) {
            Scene scene = Scene.valueOf(args[1]);
            int level = Integer.parseInt(args[2]), seed = Integer.parseInt(args[3]);
            if (level != 10 && level != 25 && level != 40) throw new IllegalArgumentException("level must be 10, 25 or 40");
            EnumSet<Rule> rules = EnumSet.noneOf(Rule.class);
            for (int i = 4; i < args.length; i++) rules.add(Rule.valueOf(args[i]));
            PrintWriter out = new PrintWriter(System.out, true);
            out.println("arm,ms,body,x,y,radius,hp");
            writeTrack(out, scene, rules, seed, level, 1);
            return;
        }
        if (args.length != 2) throw new IllegalArgumentException("OUTDIR N or replay SCENE LEVEL SEED [RULE ...]");
        Path dir = Paths.get(args[0]);
        int n = Integer.parseInt(args[1]);
        if (n < 1) throw new IllegalArgumentException("positive seed count required");
        Files.createDirectories(dir);
        baselineTrace(dir);
        patrolTrace(dir);
        measure(dir, n);
        replay(dir, Rule.SCREEN, 17);
        replay(dir, Rule.TELEGRAPH, 17);
        System.out.printf("42 baseline probes matched; %d paired fights (%d runs).%n", n * 24, n * 48);
    }
}
