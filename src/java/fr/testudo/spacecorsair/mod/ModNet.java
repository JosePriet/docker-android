package fr.testudo.spacecorsair.mod;

import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.DatagramPacket;
import java.net.DatagramSocket;
import java.net.Inet4Address;
import java.net.Inet6Address;
import java.net.InetAddress;
import java.net.InetSocketAddress;
import java.net.NetworkInterface;
import java.net.Socket;
import java.net.SocketAddress;
import java.net.SocketTimeoutException;
import java.util.ArrayList;
import java.util.Enumeration;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Random;

/**
 * v45 internet transport for co-op (SPEC-FINAL section 6). Plain Java, no Android classes, no extra app or library.
 *
 * <ul>
 * <li>{@link Wire}: one UDP socket shared by everything below (the NAT mapping found by STUN is the one the game uses).</li>
 * <li>STUN (RFC 5389): the socket's public address as two public servers see it.</li>
 * <li>Hole punching: both phones send to each other's candidate addresses at the same time until one answers.</li>
 * <li>{@link Turn} (RFC 5766/8656 over UDP): relay through a TURN server when punching fails or a player hides the address.</li>
 * <li>{@link Link}: looks like a {@link Socket} to ModLan. A reliable ordered byte stream (definitions, shots, chat,
 * kills, goodbye) plus "latest only" messages that are never resent (frames). Every packet carries the session number
 * both phones got from the lobby service; packets without it are ignored.</li>
 * </ul>
 */
final class ModNet {
    private ModNet() {}

    static final int MAGIC = 0xC5;
    static final int K_PUNCH = 1, K_PUNCH_ACK = 2, K_DATA = 3, K_ACK = 4, K_LATEST = 5, K_PING = 6, K_PONG = 7, K_FIN = 8;
    static final int SEG = 1100, FRAG = 1150, HDR = 6;
    static final int MAX_LATEST = 256 * 1024;
    static final int DEAD_MS = 10000, PING_MS = 1000;

    /** True = the packet belongs to this handler's session. */
    interface PeerHandler { boolean onPeer(InetSocketAddress from, byte[] b, int n, boolean viaTurn); }

    // ================================================================== wire
    static final class Wire {
        final DatagramSocket sock;
        volatile PeerHandler handler;
        volatile Turn turn;
        volatile boolean closed;
        /** Tests only: packets lost per hundred, and a delay for every packet sent. */
        volatile int lossPct, delayMs;
        volatile long sentBytes, gotBytes;
        private final Random rnd = new Random(7);
        private java.util.Timer delayT;
        private final HashMap<String, byte[]> waiting = new HashMap<String, byte[]>();
        private static final byte[] NONE = new byte[0];

        Wire(int port) throws IOException {
            DatagramSocket s;
            try {
                s = new DatagramSocket(new InetSocketAddress("::", port));   // dual stack where the phone has IPv6
            } catch (Throwable t) {
                s = new DatagramSocket(port);
            }
            sock = s;
            Thread t = new Thread(new Runnable() { public void run() { loop(); } }, "net-wire");
            t.setDaemon(true);
            t.start();
        }

        int port() { return sock.getLocalPort(); }

        void close() {
            Turn t = turn;
            if (t != null) t.close();
            if (delayMs > 0) try { Thread.sleep(delayMs + 20); } catch (InterruptedException e) { /* closing */ }   // tests: let the delayed packets leave
            closed = true;
            try { sock.close(); } catch (Throwable e) { /* closed */ }
            if (delayT != null) delayT.cancel();
            synchronized (waiting) { waiting.notifyAll(); }
        }

        void send(final SocketAddress to, byte[] b, int n) {
            if (closed || to == null) return;
            if (lossPct > 0 && rnd.nextInt(100) < lossPct) return;
            final byte[] c = new byte[n];
            System.arraycopy(b, 0, c, 0, n);
            if (delayMs > 0) {
                synchronized (this) { if (delayT == null) delayT = new java.util.Timer("net-delay", true); }
                try {
                    delayT.schedule(new java.util.TimerTask() { public void run() { raw(to, c); } }, delayMs);
                } catch (Throwable t) { /* closing */ }
            } else raw(to, c);
        }

        private void raw(SocketAddress to, byte[] c) {
            try {
                sock.send(new DatagramPacket(c, c.length, to));
                sentBytes += c.length;
            } catch (Throwable t) {
                // unreachable candidate or a closing socket: the caller's timers deal with silence
            }
        }

        private void loop() {
            byte[] buf = new byte[2048];
            DatagramPacket p = new DatagramPacket(buf, buf.length);
            while (!closed) {
                try {
                    p.setLength(buf.length);
                    sock.receive(p);
                    int n = p.getLength();
                    if (n < 2) continue;
                    gotBytes += n;
                    InetSocketAddress from = (InetSocketAddress) p.getSocketAddress();
                    int b0 = buf[0] & 255;
                    Turn t = turn;
                    if (b0 == MAGIC) {
                        PeerHandler h = handler;
                        if (h != null) h.onPeer(from, buf, n, false);
                    } else if (b0 < 4 && n >= 20 && (buf[4] & 255) == 0x21 && (buf[5] & 255) == 0x12 && (buf[6] & 255) == 0xA4 && (buf[7] & 255) == 0x42) {
                        int type = ((buf[0] & 255) << 8) | (buf[1] & 255);
                        if (type == 0x0017) { if (t != null && sameHost(from, t.server)) t.onData(buf, n); continue; }
                        String tx = hex(buf, 8, 12);
                        synchronized (waiting) {
                            if (waiting.get(tx) == NONE) {
                                byte[] c = new byte[n];
                                System.arraycopy(buf, 0, c, 0, n);
                                waiting.put(tx, c);
                                waiting.notifyAll();
                            }
                        }
                    } else if (b0 >= 0x40 && b0 < 0x80 && t != null && sameHost(from, t.server)) {
                        t.onChannel(buf, n);
                    }
                } catch (Throwable e) {
                    if (closed) return;
                    try { Thread.sleep(5); } catch (InterruptedException ie) { return; }
                }
            }
        }

        /** One STUN-format request and its answer (matched by transaction id), resent a few times. Null = no answer. */
        byte[] transact(SocketAddress to, byte[] req, int tries, int waitMs) {
            String tx = hex(req, 8, 12);
            synchronized (waiting) { waiting.put(tx, NONE); }
            try {
                for (int i = 0; i < tries && !closed; i++) {
                    send(to, req, req.length);
                    long end = System.currentTimeMillis() + waitMs;
                    synchronized (waiting) {
                        while (waiting.get(tx) == NONE && !closed) {
                            long left = end - System.currentTimeMillis();
                            if (left <= 0) break;
                            try { waiting.wait(left); } catch (InterruptedException e) { return null; }
                        }
                        byte[] r = waiting.get(tx);
                        if (r != NONE) return r;
                    }
                }
                return null;
            } finally {
                synchronized (waiting) { waiting.remove(tx); }
            }
        }
    }

    static boolean sameHost(InetSocketAddress a, InetSocketAddress b) {
        return a != null && b != null && a.getPort() == b.getPort() && plain(a.getAddress()).equals(plain(b.getAddress()));
    }

    /** An IPv4 address that arrived as ::ffff:a.b.c.d on a dual-stack socket, as IPv4. */
    static InetAddress plain(InetAddress a) {
        try {
            byte[] b = a.getAddress();
            if (b.length == 16) {
                boolean mapped = (b[10] & 255) == 0xFF && (b[11] & 255) == 0xFF;
                for (int i = 0; i < 10 && mapped; i++) if (b[i] != 0) mapped = false;
                if (mapped) return InetAddress.getByAddress(new byte[]{b[12], b[13], b[14], b[15]});
            }
        } catch (Throwable t) { /* as it is */ }
        return a;
    }

    static String hex(byte[] b, int off, int n) {
        StringBuilder s = new StringBuilder(n * 2);
        for (int i = 0; i < n; i++) { int v = b[off + i] & 255; s.append(Character.forDigit(v >> 4, 16)).append(Character.forDigit(v & 15, 16)); }
        return s.toString();
    }

    // ================================================================== STUN message format
    private static final Random txRnd = new java.security.SecureRandom();

    static byte[] txid() { byte[] t = new byte[12]; txRnd.nextBytes(t); return t; }

    static byte[] attr(int type, byte[] v) {
        int pad = (4 - v.length % 4) % 4;
        byte[] a = new byte[4 + v.length + pad];
        a[0] = (byte) (type >> 8); a[1] = (byte) type; a[2] = (byte) (v.length >> 8); a[3] = (byte) v.length;
        System.arraycopy(v, 0, a, 4, v.length);
        return a;
    }

    static byte[] stunMsg(int type, byte[] tx, byte[]... attrs) {
        int len = 0;
        for (byte[] a : attrs) len += a.length;
        byte[] m = new byte[20 + len];
        m[0] = (byte) (type >> 8); m[1] = (byte) type; m[2] = (byte) (len >> 8); m[3] = (byte) len;
        m[4] = 0x21; m[5] = 0x12; m[6] = (byte) 0xA4; m[7] = 0x42;
        System.arraycopy(tx, 0, m, 8, 12);
        int at = 20;
        for (byte[] a : attrs) { System.arraycopy(a, 0, m, at, a.length); at += a.length; }
        return m;
    }

    /** First value of each attribute. Bounds are checked; a malformed message gives what was readable. */
    static HashMap<Integer, byte[]> attrs(byte[] m, int n) {
        HashMap<Integer, byte[]> out = new HashMap<Integer, byte[]>();
        if (m == null || n < 20 || m.length < 20) return out;   // GPT check J1: a short message has no attributes
        int end = Math.min(Math.min(n, m.length), 20 + (((m[2] & 255) << 8) | (m[3] & 255)));
        int at = 20;
        while (at + 4 <= end) {
            int type = ((m[at] & 255) << 8) | (m[at + 1] & 255), len = ((m[at + 2] & 255) << 8) | (m[at + 3] & 255);
            if (at + 4 + len > end) break;
            if (!out.containsKey(type)) { byte[] v = new byte[len]; System.arraycopy(m, at + 4, v, 0, len); out.put(type, v); }
            at += 4 + len + (4 - len % 4) % 4;
        }
        return out;
    }

    static byte[] xorAddr(InetSocketAddress a, byte[] tx) {
        byte[] ip = plain(a.getAddress()).getAddress();
        byte[] v = new byte[4 + ip.length];
        v[1] = (byte) (ip.length == 4 ? 1 : 2);
        int port = a.getPort() ^ 0x2112;
        v[2] = (byte) (port >> 8); v[3] = (byte) port;
        byte[] mask = mask(tx);
        for (int i = 0; i < ip.length; i++) v[4 + i] = (byte) (ip[i] ^ mask[i]);
        return v;
    }

    private static byte[] mask(byte[] tx) {
        byte[] k = new byte[16];
        k[0] = 0x21; k[1] = 0x12; k[2] = (byte) 0xA4; k[3] = 0x42;
        System.arraycopy(tx, 0, k, 4, 12);
        return k;
    }

    static InetSocketAddress addrOf(byte[] v, byte[] tx, boolean xor) {
        try {
            if (v == null || v.length < 8) return null;
            int fam = v[1] & 255, n = fam == 1 ? 4 : fam == 2 ? 16 : 0;
            if (n == 0 || v.length < 4 + n) return null;
            int port = ((v[2] & 255) << 8) | (v[3] & 255);
            byte[] ip = new byte[n];
            System.arraycopy(v, 4, ip, 0, n);
            if (xor) {
                port ^= 0x2112;
                byte[] mask = mask(tx);
                for (int i = 0; i < n; i++) ip[i] ^= mask[i];
            }
            return new InetSocketAddress(InetAddress.getByAddress(ip), port);
        } catch (Throwable t) {
            return null;
        }
    }

    private static byte[] txOf(byte[] m) { byte[] t = new byte[12]; System.arraycopy(m, 8, t, 0, 12); return t; }

    /** This socket's public address as a STUN server sees it. Null = no answer. Never on the UI thread. */
    static InetSocketAddress stun(Wire w, String host, int port, int waitMs) {
        try {
            InetSocketAddress to = new InetSocketAddress(InetAddress.getByName(host), port);
            byte[] req = stunMsg(0x0001, txid());
            byte[] r = w.transact(to, req, 2, waitMs);
            if (r == null || (((r[0] & 255) << 8) | (r[1] & 255)) != 0x0101) return null;
            HashMap<Integer, byte[]> a = attrs(r, r.length);
            InetSocketAddress x = addrOf(a.get(0x0020), txOf(r), true);
            if (x == null) x = addrOf(a.get(0x0001), txOf(r), false);
            return x == null ? null : new InetSocketAddress(plain(x.getAddress()), x.getPort());
        } catch (Throwable t) {
            return null;
        }
    }

    /** This phone's own addresses another phone could reach: Wi-Fi / hotspot IPv4, global IPv6, VPN (100.x). */
    static List<InetSocketAddress> localCandidates(int port) {
        ArrayList<InetSocketAddress> out = new ArrayList<InetSocketAddress>();
        try {
            Enumeration<NetworkInterface> en = NetworkInterface.getNetworkInterfaces();
            while (en != null && en.hasMoreElements()) {
                NetworkInterface ni = en.nextElement();
                try { if (!ni.isUp() || ni.isLoopback()) continue; } catch (Throwable t) { continue; }
                Enumeration<InetAddress> ads = ni.getInetAddresses();
                while (ads.hasMoreElements()) {
                    InetAddress a = ads.nextElement();
                    if (a.isLoopbackAddress() || a.isLinkLocalAddress() || a.isMulticastAddress() || a.isAnyLocalAddress()) continue;
                    if (a instanceof Inet6Address) {
                        byte[] b = a.getAddress();
                        if ((b[0] & 0xE0) != 0x20) continue;   // global unicast only (2000::/3)
                        out.add(new InetSocketAddress(InetAddress.getByAddress(b), port));   // no scope id
                    } else if (a instanceof Inet4Address) out.add(new InetSocketAddress(a, port));
                    if (out.size() >= 6) return out;
                }
            }
        } catch (Throwable t) {
            // none
        }
        return out;
    }

    /** "1.2.3.4:5" or "[2001:db8::1]:5". */
    static String show(InetSocketAddress a) {
        InetAddress ip = plain(a.getAddress());
        String h = ip.getHostAddress();
        int pc = h.indexOf('%');
        if (pc >= 0) h = h.substring(0, pc);
        return (ip instanceof Inet6Address ? "[" + h + "]" : h) + ":" + a.getPort();
    }

    /** Tests on one machine: loopback addresses are accepted. Never set in the game. */
    static volatile boolean testLoopback;

    /**
     * Parses {@link #show}. Only literal addresses, checked by this code before any library call, so a stranger's string
     * never causes a name lookup. Refused: loopback, "any", broadcast, multicast, link-local, and ports below 1024
     * (so a stranger's list cannot aim this phone's packets at a local service). Null = not a usable address.
     */
    static InetSocketAddress parse(String s) {
        try {
            if (s == null || s.length() > 64) return null;
            int c = s.lastIndexOf(':');
            if (c <= 0 || c == s.length() - 1 || s.length() - c > 6) return null;
            for (int i = c + 1; i < s.length(); i++) if (s.charAt(i) < '0' || s.charAt(i) > '9') return null;
            String h = s.substring(0, c);
            int port = Integer.parseInt(s.substring(c + 1));
            if (port < 1024 || port > 65535) return null;
            byte[] b;
            if (h.startsWith("[") && h.endsWith("]")) b = v6(h.substring(1, h.length() - 1));
            else b = v4(h);
            if (b == null) return null;
            InetAddress a = InetAddress.getByAddress(b);   // from bytes: no lookup
            boolean loop = a.isLoopbackAddress();
            if (loop && !testLoopback) return null;
            if (a.isMulticastAddress() || a.isAnyLocalAddress() || a.isLinkLocalAddress()) return null;
            byte[] r = a.getAddress();   // the address as the library sees it (an IPv4-mapped IPv6 literal is IPv4 here)
            if (r.length == 4 && ((r[0] & 255) == 0 || (r[0] & 255) >= 224 || (r[0] & 255) == 127 && !loop)) return null;
            return new InetSocketAddress(a, port);
        } catch (Throwable t) {
            return null;
        }
    }

    private static byte[] v4(String h) {
        String[] p = h.split("\\.", -1);
        if (p.length != 4) return null;
        byte[] b = new byte[4];
        for (int i = 0; i < 4; i++) {
            if (p[i].length() < 1 || p[i].length() > 3) return null;
            for (int k = 0; k < p[i].length(); k++) if (p[i].charAt(k) < '0' || p[i].charAt(k) > '9') return null;
            int v = Integer.parseInt(p[i]);
            if (v > 255) return null;
            b[i] = (byte) v;
        }
        return b;
    }

    /** Hex groups and at most one "::"; no dots, no zone. */
    private static byte[] v6(String h) {
        if (h.length() < 2 || h.length() > 39) return null;
        int dd = h.indexOf("::");
        if (dd >= 0 && h.indexOf("::", dd + 1) >= 0) return null;
        String[] head = dd < 0 ? h.split(":", -1) : (dd == 0 ? new String[0] : h.substring(0, dd).split(":", -1));
        String[] tail = dd < 0 || dd + 2 >= h.length() ? new String[0] : h.substring(dd + 2).split(":", -1);
        int n = head.length + tail.length;
        if (dd < 0 ? n != 8 : n > 7) return null;
        byte[] b = new byte[16];
        for (int i = 0; i < n; i++) {
            String g = i < head.length ? head[i] : tail[i - head.length];
            if (g.length() < 1 || g.length() > 4) return null;
            int v = 0;
            for (int k = 0; k < g.length(); k++) {
                int d = Character.digit(g.charAt(k), 16);
                if (d < 0 || g.charAt(k) > 'f') return null;
                v = v * 16 + d;
            }
            int at = i < head.length ? i : 8 - n + i;
            b[at * 2] = (byte) (v >> 8);
            b[at * 2 + 1] = (byte) v;
        }
        return b;
    }

    // ================================================================== TURN client
    static final class Turn {
        final Wire w;
        final InetSocketAddress server;
        private final String user, pass;
        private String realm = "", nonce = "";
        private byte[] key;
        volatile InetSocketAddress relayed;
        volatile boolean dead;
        volatile long bytes;   // payload through the relay, both ways (reported to the lobby service for the monthly cap)
        private final HashMap<String, Integer> chanOf = new HashMap<String, Integer>();
        private final HashMap<Integer, InetSocketAddress> peerOf = new HashMap<Integer, InetSocketAddress>();
        private final HashSet<String> perms = new HashSet<String>();
        private final HashSet<String> binding = new HashSet<String>();
        private long refreshAt;
        private int nextChan = 0x4000;

        Turn(Wire w, InetSocketAddress server, String user, String pass) {
            this.w = w; this.server = server; this.user = user; this.pass = pass;
        }

        private byte[] request(int type, byte[]... extra) throws IOException {
            for (int round = 0; round < 3; round++) {
                byte[] tx = txid();
                ArrayList<byte[]> at = new ArrayList<byte[]>();
                for (byte[] e : extra) at.add(e);
                byte[] m;
                if (key != null) {
                    at.add(attr(0x0006, user.getBytes("UTF-8")));
                    at.add(attr(0x0014, realm.getBytes("UTF-8")));
                    at.add(attr(0x0015, nonce.getBytes("UTF-8")));
                    m = withIntegrity(stunMsg(type, tx, at.toArray(new byte[at.size()][])), key);
                } else m = stunMsg(type, tx, at.toArray(new byte[at.size()][]));
                byte[] r = w.transact(server, m, 3, 1200);
                if (r == null) throw new IOException("relay does not answer");
                int rt = ((r[0] & 255) << 8) | (r[1] & 255);
                if ((rt & 0x0110) == 0x0100) return r;
                HashMap<Integer, byte[]> a = attrs(r, r.length);
                byte[] ec = a.get(0x0009);
                int code = ec != null && ec.length >= 4 ? (ec[2] & 7) * 100 + (ec[3] & 255) : 0;
                if ((code == 401 || code == 438) && a.get(0x0014) != null && a.get(0x0015) != null && round < 2) {
                    realm = new String(a.get(0x0014), "UTF-8");
                    nonce = new String(a.get(0x0015), "UTF-8");
                    try {
                        key = java.security.MessageDigest.getInstance("MD5").digest((user + ":" + realm + ":" + pass).getBytes("UTF-8"));
                    } catch (java.security.NoSuchAlgorithmException e) {
                        throw new IOException("no MD5");
                    }
                    continue;
                }
                throw new IOException("relay refused (" + code + ")");
            }
            throw new IOException("relay refused");
        }

        /** Asks the server for a relayed address. Never on the UI or the wire thread. */
        void allocate() throws IOException {
            byte[] r = request(0x0003, attr(0x0019, new byte[]{17, 0, 0, 0}));   // REQUESTED-TRANSPORT UDP
            InetSocketAddress x = addrOf(attrs(r, r.length).get(0x0016), txOf(r), true);
            if (x == null) throw new IOException("relay gave no address");
            relayed = x;
            refreshAt = System.currentTimeMillis();
            w.turn = this;
        }

        /** Lets packets from this peer address through the relay. */
        void permit(InetAddress ip) throws IOException {
            requestTx(0x0008, null, 0x0012, new InetSocketAddress(plain(ip), 1));
            synchronized (this) { perms.add(plain(ip).getHostAddress()); }
        }

        private byte[] requestTx(int type, byte[] txUnused, int addrAttr, InetSocketAddress a, byte[]... more) throws IOException {
            // the address is XORed with the transaction id, which request() picks: encode with a fixed-id trick instead
            // (RFC 5389: only the IPv6 part depends on the id; IPv4 depends on the magic cookie alone)
            byte[] ip = plain(a.getAddress()).getAddress();
            if (ip.length != 4) throw new IOException("relay peers are IPv4");
            byte[][] at = new byte[more.length + 1][];
            at[0] = attr(addrAttr, xorAddr(a, new byte[12]));
            System.arraycopy(more, 0, at, 1, more.length);
            return request(type, at);
        }

        /** A short channel number for this peer (4 bytes of overhead per packet instead of 36). */
        void bind(InetSocketAddress peer) throws IOException {
            int ch;
            synchronized (this) {
                if (chanOf.containsKey(show(peer)) || nextChan > 0x4FFF) return;
                ch = nextChan++;
            }
            requestTx(0x0009, null, 0x0012, peer, attr(0x000C, new byte[]{(byte) (ch >> 8), (byte) ch, 0, 0}));
            synchronized (this) { chanOf.put(show(peer), ch); peerOf.put(ch, peer); perms.add(plain(peer.getAddress()).getHostAddress()); }
        }

        /** Every few seconds from the link timer: keeps the allocation, permissions and channels alive (they expire in 5-10 minutes). */
        void keep() {
            long now = System.currentTimeMillis();
            if (dead || relayed == null || now - refreshAt < 180000) return;
            refreshAt = now;
            new Thread(new Runnable() {
                public void run() {
                    try {
                        request(0x0004, attr(0x000D, new byte[]{0, 0, 2, 88}));   // LIFETIME 600 s
                        String[] ips; InetSocketAddress[] peers; Integer[] chans;
                        synchronized (Turn.this) {
                            ips = perms.toArray(new String[0]);
                            chans = peerOf.keySet().toArray(new Integer[0]);
                            peers = new InetSocketAddress[chans.length];
                            for (int i = 0; i < chans.length; i++) peers[i] = peerOf.get(chans[i]);
                        }
                        for (String ip : ips) requestTx(0x0008, null, 0x0012, new InetSocketAddress(InetAddress.getByName(ip), 1));
                        for (int i = 0; i < chans.length; i++)
                            requestTx(0x0009, null, 0x0012, peers[i], attr(0x000C, new byte[]{(byte) (chans[i] >> 8), (byte) (int) chans[i], 0, 0}));
                    } catch (Throwable t) {
                        dead = true;
                    }
                }
            }, "net-turn-keep").start();
        }

        void send(final InetSocketAddress peer, byte[] b, int n) {
            if (dead || relayed == null) return;
            Integer ch;
            boolean known;
            synchronized (this) { ch = chanOf.get(show(peer)); known = perms.contains(plain(peer.getAddress()).getHostAddress()); }
            bytes += n;
            if (ch != null) {
                byte[] m = new byte[4 + n];
                m[0] = (byte) (ch >> 8); m[1] = (byte) (int) ch; m[2] = (byte) (n >> 8); m[3] = (byte) n;
                System.arraycopy(b, 0, m, 4, n);
                w.send(server, m, m.length);
                return;
            }
            if (!known) return;   // no permission yet: the relay would drop it
            try {
                byte[] d = new byte[n];
                System.arraycopy(b, 0, d, 0, n);
                byte[] m = stunMsg(0x0016, txid(), attr(0x0012, xorAddr(peer, new byte[12])), attr(0x0013, d));
                // the address attribute is IPv4: the XOR uses the magic cookie only, so any transaction id decodes it
                w.send(server, m, m.length);
            } catch (Throwable t) {
                // one lost packet
            }
        }

        void onChannel(byte[] b, int n) {
            if (b == null || n < 4 || b.length < 4) return;   // GPT check J1
            int ch = ((b[0] & 255) << 8) | (b[1] & 255), len = ((b[2] & 255) << 8) | (b[3] & 255);
            if (len > n - 4) return;
            InetSocketAddress peer;
            synchronized (this) { peer = peerOf.get(ch); }
            PeerHandler h = w.handler;
            if (peer == null || h == null || len < 2) return;
            bytes += len;
            byte[] c = new byte[len];
            System.arraycopy(b, 4, c, 0, len);
            if ((c[0] & 255) == MAGIC) h.onPeer(peer, c, len, true);
        }

        void onData(byte[] b, int n) {
            if (b == null || n < 20 || b.length < 20) return;   // GPT check J1: shorter than a STUN header
            HashMap<Integer, byte[]> a = attrs(b, n);
            byte[] d = a.get(0x0013);
            final InetSocketAddress peer = addrOf(a.get(0x0012), txOf(b), true);
            PeerHandler h = w.handler;
            if (d == null || peer == null || h == null || d.length < 2 || (d[0] & 255) != MAGIC) return;
            bytes += d.length;
            if (!h.onPeer(peer, d, d.length, true)) return;   // not this session's packet: no channel, no thread
            boolean start;
            synchronized (this) { start = !chanOf.containsKey(show(peer)) && binding.size() < 8 && binding.add(show(peer)); }
            if (start) new Thread(new Runnable() {   // the first packet from this peer: give it a channel
                public void run() {
                    try { bind(peer); } catch (Throwable t) { /* stays on send indications */ }
                    finally { synchronized (Turn.this) { binding.remove(show(peer)); } }   // the cap is on binds in progress
                }
            }, "net-turn-bind").start();
        }

        void close() {
            if (relayed == null || dead) return;
            dead = true;
            try {
                // best effort: frees the allocation now instead of at its timeout
                byte[] m = stunMsg(0x0004, txid(), attr(0x000D, new byte[]{0, 0, 0, 0}), attr(0x0006, user.getBytes("UTF-8")),
                    attr(0x0014, realm.getBytes("UTF-8")), attr(0x0015, nonce.getBytes("UTF-8")));
                if (key != null) m = withIntegrity(m, key);
                w.send(server, m, m.length);
            } catch (Throwable t) { /* expires by itself */ }
        }
    }

    /** Appends MESSAGE-INTEGRITY (HMAC-SHA1 over the message with the length already counting the attribute). */
    static byte[] withIntegrity(byte[] m, byte[] key) throws IOException {
        try {
            byte[] out = new byte[m.length + 24];
            System.arraycopy(m, 0, out, 0, m.length);
            int len = out.length - 20;
            out[2] = (byte) (len >> 8); out[3] = (byte) len;
            javax.crypto.Mac mac = javax.crypto.Mac.getInstance("HmacSHA1");
            mac.init(new javax.crypto.spec.SecretKeySpec(key, "HmacSHA1"));
            mac.update(out, 0, m.length);
            byte[] h = mac.doFinal();
            out[m.length] = 0; out[m.length + 1] = 8; out[m.length + 2] = 0; out[m.length + 3] = 20;
            System.arraycopy(h, 0, out, m.length + 4, 20);
            return out;
        } catch (java.security.GeneralSecurityException e) {
            throw new IOException("no HMAC");
        }
    }

    // ================================================================== link
    private static final class Seg {
        int off; byte[] data; long sentAt, firstAt; int tries; boolean sacked;
    }

    /**
     * One peer over UDP. To ModLan it is a Socket: the handshake uses the streams; afterwards {@link #next} hands out
     * whole messages (reliable ones in order, and the newest "latest" message as soon as it is complete).
     */
    static final class Link extends Socket implements PeerHandler {
        final Wire w;
        final int sid;
        private volatile InetSocketAddress remote;
        private volatile boolean viaRelay;
        private volatile boolean closed, dead, finSeen, started;
        private volatile int soTimeout;
        private long lastRecv = System.currentTimeMillis(), lastFromRemote = lastRecv, lastPing;
        volatile int rttMs = 200;
        // sending
        private final ByteArrayOutputStream pending = new ByteArrayOutputStream(4096);
        private final ArrayList<Seg> unacked = new ArrayList<Seg>();
        private int sendOff;          // stream offset of the next new segment
        private long written;         // bytes the application has written
        private int latestId;
        // receiving
        private int rcvNext;
        private final HashMap<Integer, byte[]> ahead = new HashMap<Integer, byte[]>();
        private int aheadBytes;   // GPT check J2: out-of-order bytes count toward the 1 MiB receive cap
        private byte[] in = new byte[8192];
        private int inHead, inSize;
        private long consumed;
        private int latId = -1, latGot, latCnt;
        private long latOff;
        private byte[][] latFrags;
        /** Whole latest-only messages waiting for the reliable bytes written before them: {message, offset}, oldest first. */
        private final ArrayList<Object[]> latWait = new ArrayList<Object[]>();
        private int latDone = -1;
        // punching
        private volatile InetSocketAddress acked, peerRelay;
        private volatile boolean ackedRelay;
        private volatile ArrayList<InetSocketAddress> direct;
        private long lastRetry;

        private boolean isDirect(InetSocketAddress a) {
            ArrayList<InetSocketAddress> d = direct;
            if (d == null) return false;
            for (InetSocketAddress c : d) if (plain(c.getAddress()).equals(plain(a.getAddress()))) return true;
            return false;
        }

        boolean finSeen() { return finSeen; }
        private final Thread timer;

        Link(Wire w, int sid) {
            this.w = w;
            this.sid = sid;
            w.handler = this;
            timer = new Thread(new Runnable() { public void run() { tick(); } }, "net-link");
            timer.setDaemon(true);
            timer.start();
        }

        InetSocketAddress remote() { return remote; }

        private byte[] pkt(int kind, int extra) {
            byte[] b = new byte[HDR + extra];
            b[0] = (byte) MAGIC; b[1] = (byte) kind;
            b[2] = (byte) (sid >>> 24); b[3] = (byte) (sid >>> 16); b[4] = (byte) (sid >>> 8); b[5] = (byte) sid;
            return b;
        }

        private static void put4(byte[] b, int at, int v) { b[at] = (byte) (v >>> 24); b[at + 1] = (byte) (v >>> 16); b[at + 2] = (byte) (v >>> 8); b[at + 3] = (byte) v; }

        private static int get4(byte[] b, int at) { return ((b[at] & 255) << 24) | ((b[at + 1] & 255) << 16) | ((b[at + 2] & 255) << 8) | (b[at + 3] & 255); }

        private void out(byte[] b) { toAddr(remote, viaRelay, b); }

        private void toAddr(InetSocketAddress to, boolean relay, byte[] b) {
            if (to == null) return;
            Turn t = w.turn;
            if (relay) { if (t != null) t.send(to, b, b.length); }
            else w.send(to, b, b.length);
        }

        /**
         * Finds a path to the peer. Both phones run this at the same moment.
         *
         * <p>Direct first (hole punching): PUNCH to every direct candidate until one acknowledges. After directMs
         * without an answer (or at once when this player hides the address, or the peer gave no direct address) the
         * relay is tried too: through this phone's own TURN allocation to the peer's addresses, and straight to the
         * peer's relayed address. A PUNCH is answered the way it came, so each side ends on a path that works for it.
         *
         * @param direct the peer's own and public addresses (empty when the peer hides them)
         * @param peerRelay the peer's relayed address, or null
         * @param hide never send from this phone's own address to the peer (relay only)
         * @return true = connected (remote() and relayed() say how)
         */
        private final java.util.concurrent.CopyOnWriteArrayList<InetSocketAddress> extra = new java.util.concurrent.CopyOnWriteArrayList<InetSocketAddress>();
        private volatile InetSocketAddress extraRelay;

        /** While connecting: the peer's addresses changed (a newer answer from the lobby service, or its own packet arrived). */
        void addTargets(List<InetSocketAddress> more, InetSocketAddress relay) {
            if (started || closed) return;
            Turn t = w.turn;
            if (more != null) for (InetSocketAddress a : more) {
                if (a == null || extra.size() >= 24) break;
                boolean have = false;
                for (InetSocketAddress x : extra) if (x.equals(a)) { have = true; break; }
                if (have) continue;
                extra.add(a);
                if (t != null && t.relayed != null) try { t.permit(a.getAddress()); } catch (Throwable e) { /* not through the relay */ }
            }
            if (relay != null && !relay.equals(extraRelay)) {
                if (t != null && t.relayed != null) try { t.permit(relay.getAddress()); } catch (Throwable e) { /* not through the relay */ }
                extraRelay = relay;
            }
        }

        boolean connect(List<InetSocketAddress> direct0, InetSocketAddress peerRelay0, boolean hide, long directMs, long totalMs) {
            ArrayList<InetSocketAddress> direct = new ArrayList<InetSocketAddress>(direct0);
            InetSocketAddress peerRelay = peerRelay0;
            long t0 = System.currentTimeMillis();
            byte[] p = pkt(K_PUNCH, 0);
            Turn t = w.turn;
            if (t != null && t.relayed != null) {
                HashSet<String> seen = new HashSet<String>();
                ArrayList<InetSocketAddress> all = new ArrayList<InetSocketAddress>(direct);
                if (peerRelay != null) all.add(peerRelay);
                for (InetSocketAddress a : all) {
                    if (!seen.add(plain(a.getAddress()).getHostAddress())) continue;
                    try { t.permit(a.getAddress()); } catch (Throwable e) { /* not reachable through the relay (IPv6, or refused) */ }
                }
            }
            boolean relayNow = hide || direct.isEmpty();
            while (!closed && acked == null) {
                long el = System.currentTimeMillis() - t0;
                if (el > totalMs) break;
                if (el > directMs) relayNow = true;
                for (InetSocketAddress x : extra) if (!direct.contains(x) && !x.equals(peerRelay)) direct.add(x);
                InetSocketAddress er = extraRelay;
                if (er != null) peerRelay = er;
                if (!hide) {
                    for (InetSocketAddress c : direct) w.send(c, p, p.length);
                    if (relayNow && peerRelay != null) w.send(peerRelay, p, p.length);
                }
                if (relayNow && t != null && t.relayed != null) {
                    for (InetSocketAddress c : direct) t.send(c, p, p.length);
                    if (peerRelay != null) t.send(peerRelay, p, p.length);
                }
                try { Thread.sleep(150); } catch (InterruptedException e) { return false; }
            }
            if (acked == null) return false;
            synchronized (this) {
                remote = acked;
                viaRelay = ackedRelay;
                this.direct = hide ? null : new ArrayList<InetSocketAddress>(direct);
                this.peerRelay = peerRelay;
                lastRecv = lastFromRemote = System.currentTimeMillis();
                started = true;
            }
            return true;
        }

        /** True when the traffic passes a relay (ours or the peer's). */
        boolean relayed() {
            InetSocketAddress r = remote, pr = peerRelay;
            return viaRelay || (r != null && pr != null && sameHost(r, pr));
        }

        /** Tests: the peer's address is known. */
        void connectTo(InetSocketAddress to) {
            remote = to;
            lastRecv = lastFromRemote = System.currentTimeMillis();
            started = true;
        }

        public boolean onPeer(InetSocketAddress from, byte[] b, int n, boolean viaTurn) {
            if (n < HDR || closed) return false;
            if (get4(b, 2) != sid) return false;   // not this session: ignored without an answer
            onPeer0(from, b, n, viaTurn);
            return true;
        }

        private void onPeer0(InetSocketAddress from, byte[] b, int n, boolean viaTurn) {
            int kind = b[1] & 255;
            long now = System.currentTimeMillis();
            if (kind == K_PUNCH) {
                toAddr(from, viaTurn, pkt(K_PUNCH_ACK, 0));   // answered the way it came
                if (!started) { if (!viaTurn && extra.size() < 24 && !extra.contains(from)) extra.add(from); return; }   // the peer's real address right now
            } else if (kind == K_PUNCH_ACK) {
                if (acked == null) { ackedRelay = viaTurn; acked = from; }
                else if (started && relayed() && !viaTurn && isDirect(from)) {   // a direct path opened while relayed: move to it
                    synchronized (this) { remote = from; viaRelay = false; lastFromRemote = now; }
                }
                if (!started) return;
            }
            if (!started) return;
            synchronized (this) {
                lastRecv = now;
                InetSocketAddress r = remote;
                if (r != null && sameHost(r, from) && viaTurn == viaRelay) lastFromRemote = now;
                else if (now - lastFromRemote > 2000) { remote = from; viaRelay = viaTurn; lastFromRemote = now; }   // the peer's address moved (new NAT mapping)
                if (kind == K_DATA && n >= HDR + 4) onData(b, n);
                else if (kind == K_ACK && n >= HDR + 5) onAck(b, n, now);
                else if (kind == K_LATEST && n >= HDR + 10) onLatest(b, n);
                else if (kind == K_PONG && n >= HDR + 8) {
                    long t = ((long) get4(b, HDR) << 32) | (get4(b, HDR + 4) & 0xFFFFFFFFL);
                    int s = (int) Math.max(1, Math.min(5000, now - t));
                    rttMs = (rttMs * 7 + s) / 8;
                } else if (kind == K_FIN) { finSeen = true; notifyAll(); }
            }
            if (kind == K_PING && n >= HDR + 8) {
                byte[] a = pkt(K_PONG, 8);
                System.arraycopy(b, HDR, a, HDR, 8);
                out(a);
            }
        }

        // ---- reliable stream, receiving (lock held)
        private void onData(byte[] b, int n) {
            int off = get4(b, HDR), len = n - HDR - 4;
            if (len <= 0 || len > SEG) return;
            if (off == rcvNext) {
                if (inSize + aheadBytes + len > (1 << 20)) return;   // the application is not reading: not acknowledged, sent again later
                append(b, HDR + 4, len);
                rcvNext += len;
                byte[] nx;
                while ((nx = ahead.remove(rcvNext)) != null) { aheadBytes -= nx.length; append(nx, 0, nx.length); rcvNext += nx.length; }
                notifyAll();
            } else if (off - rcvNext > 0 && off - rcvNext < (1 << 20) && ahead.size() < 512 && !ahead.containsKey(off)
                && inSize + aheadBytes + len <= (1 << 20)) {
                byte[] c = new byte[len];
                System.arraycopy(b, HDR + 4, c, 0, len);
                ahead.put(off, c);
                aheadBytes += len;
            }
            int k = Math.min(8, ahead.size());
            byte[] a = pkt(K_ACK, 5 + 4 * k);
            put4(a, HDR, rcvNext);
            a[HDR + 4] = (byte) k;
            int i = 0;
            for (Integer o : ahead.keySet()) { if (i >= k) break; put4(a, HDR + 5 + 4 * i, o); i++; }
            out(a);
        }

        private void append(byte[] b, int off, int len) {
            if (inSize + len > in.length) {
                byte[] g = new byte[Math.max(in.length * 2, inSize + len)];
                for (int i = 0; i < inSize; i++) g[i] = in[(inHead + i) % in.length];
                in = g;
                inHead = 0;
            }
            for (int i = 0; i < len; i++) in[(inHead + inSize + i) % in.length] = b[off + i];
            inSize += len;
        }

        private int take(byte[] dst, int off, int len) {
            int n = Math.min(len, inSize);
            for (int i = 0; i < n; i++) dst[off + i] = in[(inHead + i) % in.length];
            inHead = (inHead + n) % in.length;
            inSize -= n;
            consumed += n;
            return n;
        }

        // ---- reliable stream, sending (lock held)
        private void onAck(byte[] b, int n, long now) {
            int cum = get4(b, HDR), k = b[HDR + 4] & 255;
            if (n < HDR + 5 + 4 * k) return;
            int top = -1;
            for (int i = 0; i < k; i++) {
                int o = get4(b, HDR + 5 + 4 * i);
                for (Seg s : unacked) if (s.off == o) { s.sacked = true; break; }
                if (o - cum > top) top = o - cum;
            }
            boolean freed = false;
            while (!unacked.isEmpty() && unacked.get(0).off + unacked.get(0).data.length - cum <= 0) { unacked.remove(0); freed = true; }
            if (top >= 0) {   // something later arrived: what is missing before it goes again now
                for (Seg s : unacked) {
                    if (s.sacked || s.off - cum > top) continue;
                    if (now - s.sentAt > Math.max(30, rttMs)) sendSeg(s, now);
                }
            }
            if (freed) { pump(now); notifyAll(); }
        }

        private void sendSeg(Seg s, long now) {
            byte[] p = pkt(K_DATA, 4 + s.data.length);
            put4(p, HDR, s.off);
            System.arraycopy(s.data, 0, p, HDR + 4, s.data.length);
            s.sentAt = now;
            s.tries++;
            out(p);
        }

        /** Moves written bytes into segments while the window (64 unacknowledged segments) has room. */
        private void pump(long now) {
            if (pending.size() == 0 || !started) return;
            byte[] all = pending.toByteArray();
            int at = 0;
            while (at < all.length && unacked.size() < 64) {
                int len = Math.min(SEG, all.length - at);
                Seg s = new Seg();
                s.off = sendOff;
                s.data = new byte[len];
                System.arraycopy(all, at, s.data, 0, len);
                s.firstAt = now;
                sendOff += len;
                at += len;
                unacked.add(s);
                sendSeg(s, now);
            }
            pending.reset();
            if (at < all.length) pending.write(all, at, all.length - at);
        }

        // ---- latest-only messages
        /** Sends one whole message that is never resent; a newer one replaces it at the receiver. */
        void sendLatest(byte[] m) {
            if (m.length > MAX_LATEST || closed || !started) return;
            int id, cnt = (m.length + FRAG - 1) / FRAG;
            long off;
            synchronized (this) { id = ++latestId; off = 0; }   // not held back behind the reliable stream: the receiver copes with a frame that passes its definitions
            for (int i = 0; i < cnt; i++) {
                int len = Math.min(FRAG, m.length - i * FRAG);
                byte[] p = pkt(K_LATEST, 10 + len);
                put4(p, HDR, id);
                put4(p, HDR + 4, (int) off);
                p[HDR + 8] = (byte) i; p[HDR + 9] = (byte) cnt;
                System.arraycopy(m, i * FRAG, p, HDR + 10, len);
                out(p);
            }
        }

        private void onLatest(byte[] b, int n) {
            int id = get4(b, HDR), idx = b[HDR + 8] & 255, cnt = b[HDR + 9] & 255, len = n - HDR - 10;
            long off = get4(b, HDR + 4) & 0xFFFFFFFFL;
            if (cnt == 0 || idx >= cnt || cnt > 240 || len <= 0 || len > FRAG) return;
            if (id - latDone <= 0 && latDone != -1) return;   // older than one already handed out
            if (id != latId) {
                if (latId != -1 && id - latId < 0) return;   // an older message's fragment
                latId = id; latCnt = cnt; latGot = 0; latOff = off; latFrags = new byte[cnt][];
            }
            if (cnt != latCnt || latFrags[idx] != null) return;
            byte[] c = new byte[len];
            System.arraycopy(b, HDR + 10, c, 0, len);
            latFrags[idx] = c;
            if (++latGot < latCnt) return;
            int total = 0;
            for (byte[] f : latFrags) total += f.length;
            byte[] m = new byte[total];
            int at = 0;
            for (byte[] f : latFrags) { System.arraycopy(f, 0, m, at, f.length); at += f.length; }
            if (latWait.size() >= 8) latWait.remove(0);
            latWait.add(new Object[]{m, Long.valueOf(latOff)});
            latDone = id;
            latFrags = null;
            notifyAll();
        }

        /**
         * The next whole message, as [type][length 4][body]: a reliable one, or the newest latest-only one. Blocks.
         * Throws when the link is dead (10 s of silence), closed, or the peer said goodbye and nothing is left.
         */
        byte[] next(int maxLen) throws IOException {
            synchronized (this) {
                for (;;) {
                    byte[] newest = null;
                    while (!latWait.isEmpty() && ((Long) latWait.get(0)[1]).longValue() <= consumed) newest = (byte[]) latWait.remove(0)[0];
                    if (newest != null) return newest;   // older ones that became due at the same time are skipped
                    if (inSize >= 5) {
                        int len = ((in[(inHead + 1) % in.length] & 255) << 24) | ((in[(inHead + 2) % in.length] & 255) << 16)
                            | ((in[(inHead + 3) % in.length] & 255) << 8) | (in[(inHead + 4) % in.length] & 255);
                        if (len < 0 || len > maxLen) throw new IOException("bad length " + len);
                        if (inSize >= 5 + len) {
                            byte[] m = new byte[5 + len];
                            take(m, 0, 5 + len);
                            return m;
                        }
                    }
                    if (closed) throw new IOException("closed");
                    if (dead) throw new IOException("no answer for 10 s");
                    if (finSeen) throw new IOException("bye");
                    try { wait(250); } catch (InterruptedException e) { throw new IOException("interrupted"); }
                }
            }
        }

        // ---- timers
        private void tick() {
            while (!closed) {
                try { Thread.sleep(20); } catch (InterruptedException e) { return; }
                long now = System.currentTimeMillis();
                boolean ping = false;
                synchronized (this) {
                    if (!started) { lastRecv = now; continue; }
                    if (now - lastRecv > DEAD_MS && !dead) { dead = true; notifyAll(); }
                    int rto = Math.max(80, Math.min(2000, rttMs * 3 / 2));
                    for (Seg s : unacked) {
                        if (s.sacked) continue;
                        long wait = Math.min(2000L, (long) rto << Math.min(4, Math.max(0, s.tries - 1)));
                        if (now - s.sentAt >= wait) sendSeg(s, now);
                    }
                    pump(now);
                    if (now - lastPing >= PING_MS) { lastPing = now; ping = true; }
                }
                if (ping) {
                    byte[] p = pkt(K_PING, 8);
                    put4(p, HDR, (int) (now >>> 32)); put4(p, HDR + 4, (int) now);
                    out(p);
                    Turn t = w.turn;
                    if (t != null) t.keep();
                    ArrayList<InetSocketAddress> d = direct;
                    if (d != null && now - lastRetry > 20000 && relayed()) {   // relayed: keep trying the direct way (a few bytes)
                        lastRetry = now;
                        byte[] q = pkt(K_PUNCH, 0);
                        for (InetSocketAddress c : d) w.send(c, q, q.length);
                    }
                }
            }
        }

        // ---- Socket face
        private final InputStream is = new InputStream() {
            @Override public int read() throws IOException {
                byte[] one = new byte[1];
                int n = read(one, 0, 1);
                return n < 0 ? -1 : one[0] & 255;
            }

            @Override public int read(byte[] dst, int off, int len) throws IOException {
                if (len == 0) return 0;
                long end = soTimeout > 0 ? System.currentTimeMillis() + soTimeout : Long.MAX_VALUE;
                synchronized (Link.this) {
                    for (;;) {
                        if (inSize > 0) return take(dst, off, len);
                        if (closed) throw new IOException("closed");
                        if (finSeen) return -1;
                        if (dead) throw new IOException("no answer for 10 s");
                        long left = end - System.currentTimeMillis();
                        if (left <= 0) throw new SocketTimeoutException("read timed out");
                        try { Link.this.wait(Math.min(250, left)); } catch (InterruptedException e) { throw new IOException("interrupted"); }
                    }
                }
            }

            @Override public int available() { synchronized (Link.this) { return inSize; } }
        };

        private final OutputStream os = new OutputStream() {
            @Override public void write(int b) throws IOException { write(new byte[]{(byte) b}, 0, 1); }

            @Override public void write(byte[] b, int off, int len) throws IOException {
                long end = System.currentTimeMillis() + DEAD_MS;
                synchronized (Link.this) {
                    while (pending.size() > (256 << 10)) {   // the peer is not taking it: wait, then fail like a dead socket
                        if (closed || dead) throw new IOException("closed");
                        if (System.currentTimeMillis() > end) throw new IOException("write timed out");
                        try { Link.this.wait(100); } catch (InterruptedException e) { throw new IOException("interrupted"); }
                    }
                    if (closed || dead) throw new IOException("closed");
                    pending.write(b, off, len);
                    written += len;
                }
            }

            @Override public void flush() { synchronized (Link.this) { pump(System.currentTimeMillis()); } }
        };

        @Override public InputStream getInputStream() { return is; }

        @Override public OutputStream getOutputStream() { return os; }

        @Override public synchronized void setSoTimeout(int ms) { soTimeout = ms; }

        @Override public synchronized int getSoTimeout() { return soTimeout; }

        @Override public void setTcpNoDelay(boolean on) { }

        @Override public synchronized void setSendBufferSize(int n) { }

        @Override public synchronized void setReceiveBufferSize(int n) { }

        @Override public void setKeepAlive(boolean on) { }

        @Override public InetAddress getInetAddress() { InetSocketAddress r = remote; return r == null ? null : plain(r.getAddress()); }

        @Override public int getPort() { InetSocketAddress r = remote; return r == null ? 0 : r.getPort(); }

        @Override public SocketAddress getRemoteSocketAddress() { return remote; }

        @Override public boolean isConnected() { return started && !closed; }

        @Override public boolean isClosed() { return closed; }

        /** Path finding failed: this link is dropped, the shared socket stays open for the next try. */
        void abandon() {
            closed = true;
            synchronized (this) { notifyAll(); }
            timer.interrupt();
            if (w.handler == this) w.handler = null;
        }

        /** Sends what is still waiting once more, says goodbye three times, and frees the socket (and the relay). */
        @Override public void close() {
            if (closed) return;
            synchronized (this) {
                long now = System.currentTimeMillis();
                pump(now);
                for (Seg s : unacked) if (!s.sacked && now - s.sentAt > 20) sendSeg(s, now);
            }
            byte[] f = pkt(K_FIN, 0);
            for (int i = 0; i < 3; i++) out(f);
            closed = true;
            synchronized (this) { notifyAll(); }
            timer.interrupt();
            PeerHandler h = w.handler;
            if (h == this || h == null) w.close();   // a newer session on this socket keeps it
        }
    }
}
