package fr.testudo.spacecorsair.mod;

import java.io.IOException;
import java.lang.management.ManagementFactory;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.net.InetAddress;
import java.net.InetSocketAddress;
import java.nio.ByteBuffer;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Random;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.Future;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;

/** Java 8, standalone main. All inputs are synthetic; no live peers or relay calls.
 * Known failures stay failures (exit 1). See codex/out/test-notes.md for reproducers.
 * Run on a HotSpot/OpenJDK JVM exposing per-thread allocated-byte counters.
 */
public final class V52F {
    private static final int SEED = 52003, RANDOM_CASES = 20000;
    private static final int CAP = 1 << 20, MAX_FRAME = ModNet.MAX_LATEST;
    private static final long TIMEOUT_MS = 250;
    private static final int SID = 0x52345678;
    private static int bad, calls;
    private static long maxAllocated;
    private static String active = "initialization";
    private static final Map<String, Integer> failures = new java.util.TreeMap<String, Integer>();
    private static final Map<String, String> examples = new java.util.TreeMap<String, String>();
    private static final ExecutorService worker = Executors.newSingleThreadExecutor(new ThreadFactory() {
        public Thread newThread(Runnable r) { Thread t = new Thread(r, "v52f-parser"); t.setDaemon(true); return t; }
    });
    private static final Object bean = ManagementFactory.getThreadMXBean();
    private static Method allocatedBytes;
    private static ModNet.Wire wire;
    private static ModNet.Link link;
    private static ModNet.Turn turn;
    private static final InetSocketAddress peer = new InetSocketAddress(InetAddress.getLoopbackAddress(), 0);
    private static final byte[] TX = new byte[12];
    private static int channelPackets;
    private static final Map<String, Field> fields = new HashMap<String, Field>();

    private interface Action { Object run() throws Exception; }
    private static final class Result {
        Object value;
        Throwable error;
        long allocated;
    }
    private static Field field(String name) throws Exception {
        Field f = fields.get(name);
        if (f == null) { f = ModNet.Link.class.getDeclaredField(name); f.setAccessible(true); fields.put(name, f); }
        return f;
    }
    private static void set(String name, Object value) throws Exception { field(name).set(link, value); }
    @SuppressWarnings("unchecked")
    private static void clear(String name) throws Exception {
        Object o = field(name).get(link);
        if (o instanceof Map) ((Map<?, ?>) o).clear();
        else ((List<?>) o).clear();
    }
    // Test-only access to receive buffers: no constructors skipped or production hooks changed.
    private static void reset() throws Exception {
        set("started", true); set("closed", false); set("dead", false); set("finSeen", false);
        set("remote", null); set("lastFromRemote", System.currentTimeMillis());
        set("in", new byte[8192]); set("inHead", 0); set("inSize", 0); set("rcvNext", 0); set("consumed", 0L);
        clear("ahead"); clear("latWait");
        set("latId", -1); set("latDone", -1); set("latGot", 0); set("latCnt", 0); set("latFrags", null);
    }
    private static long allocated() throws Exception {
        return ((Long) allocatedBytes.invoke(bean, Thread.currentThread().getId())).longValue();
    }
    private static Result invoke(final Action prepare, final Action action) throws Exception {
        final Future<Result> future = worker.submit(new Callable<Result>() {
            public Result call() throws Exception {
                if (prepare != null) prepare.run();
                Result r = new Result();
                long before = allocated();
                try { r.value = action.run(); } catch (Throwable e) { r.error = e; }
                r.allocated = allocated() - before;
                return r;
            }
        });
        calls++;
        try {
            Result r = future.get(TIMEOUT_MS, TimeUnit.MILLISECONDS);
            maxAllocated = Math.max(maxAllocated, r.allocated);
            return r;
        } catch (TimeoutException e) {
            future.cancel(true);
            // A parser ignoring interruption must not stall the suite or overlap the next case.
            System.out.println("FAIL V52F " + active + " exceeded " + TIMEOUT_MS + " ms; aborting");
            System.out.println("V52F FAILED timeout");
            System.exit(1);
            throw e;
        } catch (ExecutionException e) {
            throw new AssertionError("test fixture/counter failed", e.getCause());
        }
    }
    private static void fail(String key, String input, String detail) {
        bad++;
        failures.put(key, failures.containsKey(key) ? failures.get(key) + 1 : 1);
        if (!examples.containsKey(key)) examples.put(key, input + ": " + detail);
    }
    private static void is(String name, boolean ok) { is(name, ok, "unexpected control"); }
    private static void is(String name, boolean ok, String group) {
        if (!ok) fail(group, name, "false");
        System.out.println((ok ? "ok V52F " : "FAIL V52F ") + (group.startsWith("KNOWN-BUG") ? group + " " : "") + name);
    }

    private enum Reader { DECL, ATTRS, ADDRESS, CHANNEL, TURN_DATA, PACKET, SESSION_PACKET, FRAME }
    private static Result read(final Reader reader, final byte[] input) throws Exception {
        return invoke(new Action() {
            public Object run() throws Exception {
                if (reader == Reader.PACKET || reader == Reader.SESSION_PACKET || reader == Reader.FRAME) reset();
                if (reader == Reader.FRAME) {
                    set("in", input); set("inSize", input.length);
                    // Finite input: report EOF instead of legitimately waiting for more stream bytes.
                    set("finSeen", true);
                }
                return null;
            }
        }, new Action() {
            public Object run() throws Exception {
                switch (reader) {
                    case DECL: return ModLanCheck.decode(input);
                    case ATTRS: return ModNet.attrs(input, input.length);
                    case ADDRESS: return ModNet.addrOf(input, TX, true);
                    case CHANNEL: turn.onChannel(input, input.length); return null;
                    case TURN_DATA: turn.onData(input, input.length); return null;
                    case PACKET: return link.onPeer(peer, input, input.length, true);
                    case SESSION_PACKET: return link.onPeer(peer, input, input.length, true);
                    case FRAME: return link.next(MAX_FRAME);
                    default: throw new AssertionError(reader);
                }
            }
        });
    }
    private static void check(Reader reader, byte[] input, String name) throws Exception {
        active = reader + " " + name;
        Result r = read(reader, input);
        if (r.error != null && !(r.error instanceof IOException)) {
            // STUN helpers rely on Wire.loop's minimum-length gate. TURN channels
            // are dispatched at two bytes; Wire.loop catches their bounds exception.
            boolean shortHelper = r.error instanceof IndexOutOfBoundsException
                && ((reader == Reader.ATTRS && input.length < 4)
                 || (reader == Reader.CHANNEL && input.length < 4)
                 || (reader == Reader.TURN_DATA && input.length < 20));
            fail((shortHelper ? "KNOWN-BUG J1 " : "unexpected ") + reader, name + " bytes=" + input.length, r.error.getClass().getSimpleName());
        }
        if (r.allocated > CAP) fail("unexpected allocation " + reader, name, r.allocated + " bytes");
    }
    private static void corpus(Reader reader, byte[] valid) throws Exception {
        check(reader, valid, "valid");
        for (int n = 0; n < valid.length; n++) check(reader, Arrays.copyOf(valid, n), "truncate=" + n);
        for (int bit = 0; bit < valid.length * 8; bit++) {
            byte[] b = valid.clone(); b[bit / 8] ^= 1 << (bit % 8);
            check(reader, b, "bit=" + bit);
        }
        System.out.println("info V52F corpus " + reader + " truncations=" + valid.length + " bit-flips=" + valid.length * 8);
    }
    private static byte[] packet(int kind, byte[] body) {
        return ByteBuffer.allocate(ModNet.HDR + body.length).put((byte) ModNet.MAGIC).put((byte) kind).putInt(SID).put(body).array();
    }
    private static byte[] frame(int length) {
        return ByteBuffer.allocate(5).put((byte) 2).putInt(length).array();
    }
    private static byte[] data(int offset, int length) {
        return packet(ModNet.K_DATA, ByteBuffer.allocate(4 + length).putInt(offset).array());
    }
    private static void setup() throws Exception {
        Class<?> type = Class.forName("com.sun.management.ThreadMXBean");
        if (!Boolean.TRUE.equals(type.getMethod("isThreadAllocatedMemorySupported").invoke(bean))) throw new AssertionError("allocation counters unavailable");
        type.getMethod("setThreadAllocatedMemoryEnabled", boolean.class).invoke(bean, true);
        allocatedBytes = type.getMethod("getThreadAllocatedBytes", long.class);
        wire = new ModNet.Wire(0);
        wire.close(); // No live socket: all receives below call the actual readers directly.
        link = new ModNet.Link(wire, SID);
        Thread timer = (Thread) field("timer").get(link);
        timer.interrupt(); timer.join(1000);
        if (timer.isAlive()) throw new AssertionError("link timer did not stop");
        wire.handler = new ModNet.PeerHandler() {
            public boolean onPeer(InetSocketAddress from, byte[] b, int n, boolean viaTurn) { channelPackets++; return false; }
        };
        turn = new ModNet.Turn(wire, peer, "", "");
        Field pf = ModNet.Turn.class.getDeclaredField("peerOf"); pf.setAccessible(true);
        @SuppressWarnings("unchecked") Map<Integer, InetSocketAddress> peers = (Map<Integer, InetSocketAddress>) pf.get(turn);
        peers.put(0x4000, peer);
        reset();
        // Warm class loading/JIT and the measurement path before enforcing per-call allocation.
        for (int i = 0; i < 100; i++) for (Reader reader : Reader.values()) read(reader, new byte[24]);
        is("per-thread allocation counter enabled", allocated() >= 0);
        calls = 0; maxAllocated = 0; // Initialization/warmup is not a measured parser case.
    }

    public static void main(String[] args) throws Exception {
        try {
            setup();
            ModLanCheck.Decl decl = new ModLanCheck.Decl();
            decl.level = 12; decl.refit = 3; decl.maxHull = 100; decl.maxShield = 50;
            decl.ship = "hullTest"; decl.laser = "laserTest";
            byte[] declaration = ModLanCheck.encode(decl);
            Result d = read(Reader.DECL, declaration);
            is("declaration positive round trip", d.error == null && ((ModLanCheck.Decl) d.value).same(decl));
            byte[] address = ModNet.xorAddr(peer, TX);
            Result a = read(Reader.ADDRESS, address);
            is("address positive round trip", a.error == null && peer.equals(a.value));
            byte[] stun = ModNet.stunMsg(0x0017, TX, ModNet.attr(0x0012, address), ModNet.attr(0x0013, packet(ModNet.K_PING, new byte[8])));
            Result s = read(Reader.ATTRS, stun);
            is("STUN attributes positive control", s.error == null && ((Map<?, ?>) s.value).size() == 2);
            byte[] channel = ByteBuffer.allocate(18).putShort((short) 0x4000).putShort((short) 14).put(packet(ModNet.K_PING, new byte[8])).array();
            int before = channelPackets;
            Result c = read(Reader.CHANNEL, channel);
            Result t = read(Reader.TURN_DATA, stun);
            is("TURN channel and indication dispatch payload", c.error == null && t.error == null && channelPackets == before + 2);
            byte[] validFrame = ByteBuffer.allocate(9).put((byte) 2).putInt(4).putFloat(1f).array();
            Result f = read(Reader.FRAME, validFrame);
            is("reliable frame positive round trip", f.error == null && Arrays.equals(validFrame, (byte[]) f.value));
            final byte[] latest = packet(ModNet.K_LATEST, ByteBuffer.allocate(10 + validFrame.length).putInt(1).putInt(0).put((byte) 0).put((byte) 1).put(validFrame).array());
            Result l = invoke(new Action() { public Object run() throws Exception { reset(); return null; } }, new Action() {
                public Object run() throws Exception { link.onPeer(peer, latest, latest.length, true); return link.next(MAX_FRAME); }
            });
            is("latest frame reassembly positive round trip", l.error == null && Arrays.equals(validFrame, (byte[]) l.value));

            corpus(Reader.DECL, declaration);
            corpus(Reader.ATTRS, stun);
            corpus(Reader.ADDRESS, address);
            corpus(Reader.CHANNEL, channel);
            corpus(Reader.TURN_DATA, stun);
            // All packet kinds are exercised with matching session headers and a started link.
            for (int kind = ModNet.K_PUNCH; kind <= ModNet.K_FIN; kind++) {
                byte[] body = kind == ModNet.K_LATEST ? Arrays.copyOfRange(latest, ModNet.HDR, latest.length)
                    : kind == ModNet.K_DATA ? ByteBuffer.allocate(8).putInt(0).put(validFrame, 0, 4).array() : new byte[16];
                corpus(Reader.PACKET, packet(kind, body));
            }
            corpus(Reader.FRAME, validFrame);

            Random random = new Random(SEED);
            for (int i = 0; i < RANDOM_CASES; i++) {
                byte[] b = new byte[random.nextInt(2049)]; random.nextBytes(b);
                for (Reader reader : Reader.values()) {
                    byte[] input = b;
                    if (reader == Reader.SESSION_PACKET && b.length >= ModNet.HDR) {
                        input = b.clone(); input[0] = (byte) ModNet.MAGIC; input[1] = (byte) (1 + i % 8);
                        ByteBuffer.wrap(input, 2, 4).putInt(SID);
                    }
                    check(reader, input, "random=" + i + " seed=" + SEED);
                }
            }
            System.out.println("info V52F random arrays=" + RANDOM_CASES + " seed=" + SEED + " readers=" + Reader.values().length);

            for (int length : new int[]{0, -1, Integer.MAX_VALUE}) {
                check(Reader.FRAME, frame(length), "frame-length=" + length);
                // These wire formats have unsigned 16-bit lengths, not signed Java ints.
                // -1/MAX_VALUE therefore encode as 65535. Exercise both message and attribute lengths.
                byte[] b = declaration.clone(); ByteBuffer.wrap(b, 16, 2).putShort((short) length);
                check(Reader.DECL, b, "UTF-length=" + length);
                for (int offset : new int[]{2, 22, 34}) {
                    b = stun.clone(); ByteBuffer.wrap(b, offset, 2).putShort((short) length);
                    check(Reader.ATTRS, b, "STUN-length=" + length + " offset=" + offset);
                    check(Reader.TURN_DATA, b, "TURN-length=" + length + " offset=" + offset);
                }
                b = channel.clone(); ByteBuffer.wrap(b, 2, 2).putShort((short) length);
                check(Reader.CHANNEL, b, "channel-length=" + length);
                b = latest.clone(); ByteBuffer.wrap(b, ModNet.HDR + 4, 4).putInt(length);
                check(Reader.PACKET, b, "latest-stream-offset=" + length);
                b = latest.clone(); ByteBuffer.wrap(b, ModNet.HDR + 8, 4).putInt(length);
                check(Reader.PACKET, b, "latest-count-words=" + length);
            }
            check(Reader.DECL, null, "null declaration");
            check(Reader.DECL, new byte[601], "over declaration cap");
            for (float value : new float[]{Float.NaN, Float.POSITIVE_INFINITY, Float.NEGATIVE_INFINITY}) {
                for (int offset : new int[]{8, 12}) {
                    byte[] b = declaration.clone(); ByteBuffer.wrap(b, offset, 4).putFloat(value);
                    check(Reader.DECL, b, "float=" + value + " offset=" + offset);
                }
                byte[] b = validFrame.clone(); ByteBuffer.wrap(b, 5, 4).putFloat(value);
                check(Reader.FRAME, b, "opaque-frame-float=" + value);
            }
            System.out.println("ok V52F boundary lengths and NaN/Infinity (transport payloads are opaque)");

            // Reachable state: unread reliable bytes + 512 ahead segments, then fill the gap.
            // The per-packet 1 MiB admission check must also cover segments drained from ahead.
            final byte[] gap = data(900 * ModNet.SEG, ModNet.SEG);
            active = "reliable backlog gap-fill";
            Result growth = invoke(new Action() {
                public Object run() throws Exception {
                    reset();
                    for (int i = 0; i < 900; i++) {
                        byte[] b = data(i * ModNet.SEG, ModNet.SEG);
                        link.onPeer(peer, b, b.length, true);
                    }
                    for (int i = 1; i <= 512; i++) {
                        byte[] b = data((900 + i) * ModNet.SEG, ModNet.SEG);
                        link.onPeer(peer, b, b.length, true);
                    }
                    return null;
                }
            }, new Action() {
                public Object run() {
                    return link.onPeer(peer, gap, gap.length, true);
                }
            });
            if (growth.error != null) fail("unexpected backlog exception", "gap-fill", growth.error.getClass().getSimpleName());
            if (growth.allocated > CAP) fail("KNOWN-BUG J2 allocation", "900 unread + 512 ahead + gap-fill", growth.allocated + " bytes");
            int buffered = ((Integer) field("inSize").get(link)).intValue();
            is("reliable receive queue stays within 1 MiB (actual=" + buffered + ")", buffered <= CAP, "KNOWN-BUG J2 queue");

            for (String key : failures.keySet()) System.out.println("FAIL V52F " + key + " count=" + failures.get(key) + " first=" + examples.get(key));
            int unexpected = 0;
            for (String key : failures.keySet()) if (!key.startsWith("KNOWN-BUG")) unexpected += failures.get(key);
            System.out.println("V52F known-bug-failures=" + (bad - unexpected) + " unexpected-failures=" + unexpected);
            System.out.println("V52F calls=" + calls + " max-allocated-bytes=" + maxAllocated + " timeout-ms=" + TIMEOUT_MS);
            System.out.println(bad == 0 ? "V52F VALUES-OK" : "V52F FAILED " + bad);
        } finally {
            worker.shutdownNow();
            if (link != null) link.abandon();
            if (wire != null) wire.close();
        }
        if (bad != 0) System.exit(1);
    }
}
