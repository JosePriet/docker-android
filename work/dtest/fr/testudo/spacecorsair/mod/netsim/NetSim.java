package netsim;

import java.io.*;
import java.util.*;
import java.util.concurrent.*;

/** Run from the repository root. A seed identifies a complete lobby and play schedule. */
public final class NetSim implements Phone.Transport, AutoCloseable {
    private static final ExecutorService READER = Executors.newSingleThreadExecutor(r -> new Thread(r, "sim-reader"));
    private static final Map<String, Integer> offThread = new TreeMap<>();
    private static long gameTouches;
    public static void touch(String point) {
        if (Thread.currentThread().getName().equals("sim-game")) gameTouches++;
        else offThread.merge(Thread.currentThread().getName() + " " + point, 1, Integer::sum);
    }

    private final Phone[] phones = new Phone[4];
    private final int[] offsets = new int[4];
    private final PriorityQueue<Packet> queue = new PriorityQueue<>();
    private final Process registry;
    private final BufferedReader input;
    private final PrintWriter output;
    private final Map<String, Integer> totals = new TreeMap<>();
    private final Set<String> breaks = new TreeSet<>();
    private Random random;
    private long now, order;
    private int active, partition, loss, duplicates, jitter;
    private boolean impaired;

    private static final class Packet implements Comparable<Packet> {
        final long at, order;
        final int from, to;
        final byte[] data;
        Packet(long at, long order, int from, int to, byte[] data) {
            this.at = at; this.order = order; this.from = from; this.to = to; this.data = data;
        }
        public int compareTo(Packet other) {
            int cmp = Long.compare(at, other.at);
            return cmp == 0 ? Long.compare(order, other.order) : cmp;
        }
    }

    NetSim(boolean fixed) throws Exception {
        for (int i = 0; i < phones.length; i++) {
            PhoneLoader loader = new PhoneLoader();
            phones[i] = (Phone)loader.loadClass("fr.testudo.spacecorsair.mod.SimPhone").getDeclaredConstructor().newInstance();
            phones[i].init(i, fixed, this);
        }
        ProcessBuilder worker = new ProcessBuilder("node", "server/rendezvous/test/netsim.mjs", "pipe");
        phones[0].configureRegistry(worker.environment());
        registry = worker.redirectError(ProcessBuilder.Redirect.INHERIT).start();
        input = new BufferedReader(new InputStreamReader(registry.getInputStream(), "UTF-8"));
        output = new PrintWriter(registry.getOutputStream(), true);
    }
    private String service(String command) throws IOException {
        output.println(command);
        String result = input.readLine();
        if (result == null) throw new EOFException("registry stopped");
        String[] fields = command.split(" ");
        if (fields[0].equals("open")) return result;
        int phone = fields[0].equals("join") ? Integer.parseInt(fields[1]) : 0;
        return phones[phone].lobby(result, fields[0]);
    }
    @Override public void send(int from, int to, byte[] data) {
        if (impaired && (from == partition || random.nextInt(100) < loss)) return;
        int copies = impaired && random.nextInt(100) < duplicates ? 2 : 1;
        for (int i = 0; i < copies; i++) {
            long delay = impaired ? 1 + random.nextInt(jitter) : 1;
            queue.add(new Packet(now + delay, order++, from, to, data));
        }
    }
    private void clocks() {
        for (int i = 0; i < phones.length; i++) {
            phones[i].clock(now + offsets[i]);
        }
    }
    private void advance(int ms) throws Exception {
        long end = now + ms;
        while (now < end) {
            now = Math.min(now + 50, end);
            clocks();
            phones[0].timers(); phones[active].timers();
            if (!queue.isEmpty() && queue.peek().at <= now) {
                READER.submit(() -> {
                    while (!queue.isEmpty() && queue.peek().at <= now) {
                        Packet p = queue.remove();
                        phones[p.to].datagram(p.from, p.data);
                    }
                    return null;
                }).get();
            }
        }
    }
    private void frames() throws Exception {
        phones[0].frame(); phones[active].frame();
        phones[0].flush(); phones[active].flush();
    }
    private void settle() throws Exception {
        impaired = false;
        for (int i = 0; i < 4; i++) { advance(600); frames(); }
        advance(100);
        phones[active].frame();
    }
    private void invariant(String name, boolean ok) { if (!ok) breaks.add(name); }
    private void start(int guest, int sid) throws Exception {
        active = guest;
        phones[0].start(guest, sid, true);
        phones[guest].start(0, sid, false);
    }
    private void session(int seed) throws Exception {
        random = new Random(seed);
        breaks.clear(); offThread.clear(); queue.clear();
        for (int i = 0; i < 4; i++) offsets[i] = random.nextInt(120001) - 60000;
        now = 1000000000000L + 1000000L * seed; order = 0; clocks();
        int guests = 1 + random.nextInt(3);
        int selected = 1 + random.nextInt(guests);
        int[] sids = new int[guests + 1];
        service("open");
        for (int i = 1; i <= guests; i++) {
            sids[i] = random.nextInt();
            invariant("join", service("join " + i + " " + sids[i]).equals(Integer.toString(sids[i])));
        }
        Set<String> waiting = new HashSet<>(Arrays.asList(service("beat 0").split(",")));
        invariant("lobby", waiting.size() == guests && waiting.contains(Integer.toString(sids[selected])));
        start(selected, sids[selected]); service("beat 1");
        invariant("occupied", service("join " + selected + " " + sids[selected]).equals("full"));
        settle();
        int killsBefore = phones[0].state().killsSent;
        loss = random.nextInt(30); duplicates = 10 + random.nextInt(40); jitter = 40 + random.nextInt(450);
        impaired = true; partition = -1;
        int xp = 0, damage = 0, kills = 0;
        int steps = 3 + random.nextInt(7);
        for (int i = 0; i < steps; i++) {
            partition = i == steps / 2 ? (random.nextBoolean() ? 0 : selected) : -1;
            int award = random.nextInt(15), hit = random.nextInt(4), kill = random.nextInt(3) == 0 ? 1 : 0;
            xp += award; damage += hit; kills += kill;
            phones[0].play(award, hit, kill);
            frames(); advance(60 + random.nextInt(240));
        }
        settle();
        Phone.Snapshot end = phones[selected].state();
        invariant("xp", end.xp == xp);
        invariant("hull", end.hull == 100 - damage);
        invariant("loot", phones[0].state().killsSent - killsBefore == kills && end.lootRolls == kills);
        invariant("duplicate-kill", end.lootRolls <= kills);
        // A duel score is host-authoritative. Vary loss and the inter-frame leave.
        boolean floor = random.nextBoolean();
        phones[0].duel(floor);
        invariant("duel", phones[0].state().round == (floor ? 2 : 1) && phones[0].state().guestWins == (floor ? 1 : 0));
        boolean crash = random.nextBoolean();
        // Leave an old packet in flight across restart. The fresh sid must isolate it.
        phones[0].play(0, 0, 0); frames();
        phones[0].stop(crash);
        advance(crash ? 11000 : 200);
        invariant("disconnect", phones[selected].disconnected());
        phones[selected].stop(false);
        invariant("empty-sector", phones[selected].state().enemies > 0);
        service("beat 0");
        int returning = random.nextBoolean() ? selected : 1 + random.nextInt(guests);
        int next = random.nextInt();
        invariant("reconnect", service("join " + returning + " " + next).equals(Integer.toString(next)));
        start(returning, next);
        settle();
        invariant("restarted-hull", phones[returning].state().hull == 100);
        invariant("restarted-loot", phones[returning].state().lootRolls == 0);
        phones[returning].stop(false); phones[0].stop(false);
        if (!offThread.isEmpty()) breaks.add("thread");
        for (String violation : breaks) totals.merge(violation, 1, Integer::sum);
    }
    @Override public void close() throws Exception {
        output.close(); input.close();
        if (registry.waitFor() != 0) throw new IOException("registry failed");
    }
    public static void main(String[] args) throws Exception {
        Thread.currentThread().setName("sim-game");
        boolean fixed = args[1].equals("on");
        int first = Integer.parseInt(args[2]);
        System.out.println("seed=" + first + " fixes=" + args[1]);
        int bad = 0;
        try (NetSim sim = new NetSim(fixed)) {
            if (args[0].equals("findings")) {
                for (int id : new int[]{1,3,4,5,6,7,8,10}) {
                    try { sim.phones[0].finding(id); }
                    catch (AssertionError e) { bad++; System.out.println("FAIL " + e.getMessage()); }
                    sim.phones[0].stop(true);
                }
            } else {
                int n = Integer.parseInt(args[3]);
                System.out.println("sessions=" + n + " inclusive seeds=" + first + ".." + (first + n - 1));
                try (PrintWriter log = new PrintWriter(args[4], "UTF-8")) {
                    log.println("seed\tinvariant breaks\treader field accesses (site=count)");
                    for (int i = 0; i < n; i++) {
                        int seed = first + i;
                        try { sim.session(seed); }
                        catch (Exception | AssertionError e) { throw new IllegalStateException("seed=" + seed, e); }
                        log.println(seed + "\t" + String.join("|", sim.breaks) + "\t" + offThread);
                    }
                }
                System.out.println("sessions per invariant=" + sim.totals);
                System.out.println("game-thread field accesses=" + gameTouches);
                if (!sim.totals.isEmpty()) bad++;
            }
        } finally { READER.shutdownNow(); }
        if (bad > 0) throw new AssertionError(bad + " checks failed");
    }
}
