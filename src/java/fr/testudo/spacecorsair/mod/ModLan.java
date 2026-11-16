package fr.testudo.spacecorsair.mod;

import android.app.Activity;
import android.app.AlertDialog;
import android.content.DialogInterface;
import android.widget.EditText;

import fr.testudo.spacecorsair.business.Element;
import fr.testudo.spacecorsair.business.ennemis.Ennemis;
import fr.testudo.spacecorsair.business.ennemis.EnnemisFactory;
import fr.testudo.spacecorsair.business.ennemis.EnnemisType;
import fr.testudo.spacecorsair.business.loot.LootElement;
import fr.testudo.spacecorsair.business.player.PlayerShip;
import fr.testudo.spacecorsair.business.projectiles.EnergyBullet;
import fr.testudo.spacecorsair.business.projectiles.LaserBeam;
import fr.testudo.spacecorsair.business.projectiles.Projectile;
import fr.testudo.spacecorsair.business.world.Asteroid;
import fr.testudo.spacecorsair.business.world.Mine;
import fr.testudo.spacecorsair.business.world.civil.CivilShip;
import fr.testudo.spacecorsair.display.Drawable;
import fr.testudo.spacecorsair.display.RenderElement;
import fr.testudo.spacecorsair.display.RenderElementType;
import fr.testudo.spacecorsair.display.Texture;
import fr.testudo.spacecorsair.engine.GameThread;
import fr.testudo.spacecorsair.engine.ObjectRegistry;
import fr.testudo.spacecorsair.engine.RenderQueue;
import fr.testudo.spacecorsair.engine.Vector2;
import fr.testudo.spacecorsair.game.levels.Level;
import fr.testudo.spacecorsair.game.levels.LevelId;
import fr.testudo.spacecorsair.textengine.TextSize;

import java.io.ByteArrayOutputStream;
import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.IOException;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.lang.reflect.Modifier;
import java.net.DatagramPacket;
import java.net.DatagramSocket;
import java.net.InetAddress;
import java.net.InetSocketAddress;
import java.net.InterfaceAddress;
import java.net.NetworkInterface;
import java.net.ServerSocket;
import java.net.Socket;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Comparator;
import java.util.Enumeration;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.WeakHashMap;

/**
 * v49 LAN co-op (owner 2026-11-15): two phones on the same Wi-Fi (or one phone's hotspot) play the same sector.
 *
 * <p>Host-authoritative. The host phone runs the whole game. The guest phone keeps its own ship, controls, HUD, cargo
 * and save, but its own sector is emptied of ships, rocks, loot and enemy fire every frame: what it shows of the world is
 * the host's render list, streamed each frame.
 *
 * <ul>
 * <li>Host to guest: every world-space sprite, text and point the host queued for drawing (its screen plus the guest's
 * view, see {@link #alsoVisible}), the host's sector, the damage the guest's ship took, and the XP the host earned.</li>
 * <li>Guest to host: the guest ship's position, speed, heading, hull and view size, the sprites of its ship (hull,
 * shield, turrets, glows), and every shot it fires (the projectile's own fields, re-created on the host and fired by the
 * guest's stand-in ship, so the host's game resolves the hits).</li>
 * <li>On the host the guest flies as a stand-in ship ({@link #proxy}): on the player's side (Mod.isDrone), never
 * steered by the AI, never destroyed (hits are forwarded to the guest's own shields and hull), and enemies near it are
 * set on it.</li>
 * <li>The guest follows the host: a sector change on the host pulls the guest's ship into the same sector.</li>
 * <li>XP is shared: every point the host earns is added to the guest. Loot and credits stay with the host.</li>
 * </ul>
 *
 * Transport: TCP on port 37001 (the original game's multiplayer port), Nagle off, one guest. Each side keeps only the
 * newest frame when the link is slower than the game (no lag build-up). Discovery: the host announces itself by UDP
 * broadcast on port 37001 every second; a joining guest listens for 4 s, or takes a typed address.
 */
public final class ModLan {
    private ModLan() {}

    static final int PORT = 37001;
    static final int NONE = 0, HOST = 1, GUEST = 2;
    static volatile int role = NONE;
    static volatile boolean connected;
    static volatile String status = "";

    private static final String HELLO = "SCLAN1";
    private static final int MSG_DEF = 1, MSG_FRAME = 2, MSG_STATE = 3, MSG_SHOT = 4, MSG_BYE = 5;
    private static final int R_SPRITE = 0, R_FX = 1, R_TEXT = 2, R_POINT = 3;
    private static final int MAX_REMOTE = 2200;   // render queue holds 2500 per frame

    // ------------------------------------------------------------------ link
    private static ServerSocket server;
    private static Socket sock;
    private static DatagramSocket beacon;
    private static Thread readerT, writerT, beaconT, acceptT;
    private static final Object outLock = new Object();
    private static final ArrayList<byte[]> reliable = new ArrayList<byte[]>();
    private static byte[] latest;
    private static volatile long linkGen;

    /** Host: starts listening and announcing. UI thread. */
    static void host() {
        stop();
        role = HOST;
        final long gen = ++linkGen;
        status = ModLang.tr("Waiting for a player to join...");
        acceptT = new Thread(new Runnable() {
            public void run() {
                try {
                    ServerSocket ss = new ServerSocket();
                    server = ss;
                    if (gen != linkGen) { ss.close(); return; }
                    ss.setReuseAddress(true);
                    ss.bind(new InetSocketAddress(PORT));
                    while (gen == linkGen) {
                        Socket s = ss.accept();
                        if (gen != linkGen) { s.close(); return; }
                        if (!hello(s)) { s.close(); continue; }   // not a Space Corsair guest: keep waiting
                        try { ss.close(); } catch (Throwable t) { /* one guest */ }
                        begin(s, gen);
                        return;
                    }
                } catch (Throwable t) {
                    if (gen == linkGen) fail(t);
                }
            }
        }, "lan-accept");
        acceptT.start();
        beaconT = new Thread(new Runnable() {
            public void run() {
                try {
                    DatagramSocket ds = new DatagramSocket();
                    ds.setBroadcast(true);
                    beacon = ds;
                    while (gen == linkGen && !connected) {
                        String name = "Corsair";
                        try { name = ObjectRegistry.INSTANCE.game.currentLevel.id.levelName; } catch (Throwable t) { /* unnamed */ }
                        byte[] b = (HELLO + " " + name).getBytes("UTF-8");
                        for (InetAddress a : broadcasts()) {
                            try { ds.send(new DatagramPacket(b, b.length, a, PORT)); } catch (Throwable t) { /* next address */ }
                        }
                        Thread.sleep(1000);
                    }
                } catch (Throwable t) {
                    // discovery is optional: the guest can type the address
                } finally {
                    if (beacon != null) beacon.close();
                }
            }
        }, "lan-beacon");
        beaconT.start();
    }

    /** Guest: connects to a host address. Any thread but the UI one. */
    static void join(String ip) {
        stop();
        role = GUEST;
        final long gen = ++linkGen;
        status = ModLang.tr("Connecting...");
        try {
            Socket s = new Socket();
            s.connect(new InetSocketAddress(ip, PORT), 5000);
            if (gen != linkGen) { s.close(); return; }
            s.getOutputStream().write(HELLO.getBytes("UTF-8"));
            begin(s, gen);
        } catch (Throwable t) {
            fail(t);
        }
    }

    /** Guest: listens for host announcements for ms; returns "address  sector" lines. */
    static List<String> scan(int ms) {
        ArrayList<String> out = new ArrayList<String>();
        DatagramSocket ds = null;
        try {
            ds = new DatagramSocket(null);
            ds.setReuseAddress(true);
            ds.setBroadcast(true);
            ds.bind(new InetSocketAddress(PORT));
            ds.setSoTimeout(300);
            long end = System.currentTimeMillis() + ms;
            byte[] buf = new byte[256];
            while (System.currentTimeMillis() < end) {
                DatagramPacket p = new DatagramPacket(buf, buf.length);
                try { ds.receive(p); } catch (java.net.SocketTimeoutException e) { continue; }
                String s = new String(p.getData(), 0, p.getLength(), "UTF-8");
                if (!s.startsWith(HELLO)) continue;
                String line = p.getAddress().getHostAddress() + "  " + s.substring(HELLO.length()).trim();
                if (!out.contains(line)) out.add(line);
            }
        } catch (Throwable t) {
            // nothing found
        } finally {
            if (ds != null) ds.close();
        }
        return out;
    }

    static List<InetAddress> broadcasts() {
        ArrayList<InetAddress> out = new ArrayList<InetAddress>();
        try {
            Enumeration<NetworkInterface> en = NetworkInterface.getNetworkInterfaces();
            while (en != null && en.hasMoreElements()) {
                NetworkInterface ni = en.nextElement();
                if (!ni.isUp() || ni.isLoopback()) continue;
                for (InterfaceAddress ia : ni.getInterfaceAddresses()) {
                    if (ia.getBroadcast() != null && !out.contains(ia.getBroadcast())) out.add(ia.getBroadcast());
                }
            }
        } catch (Throwable t) {
            // fall back to the global broadcast
        }
        try { out.add(InetAddress.getByName("255.255.255.255")); } catch (Throwable t) { /* none */ }
        return out;
    }

    /** This phone's LAN addresses (shown to the host so the guest can type one). */
    static String myAddresses() {
        StringBuilder sb = new StringBuilder();
        try {
            Enumeration<NetworkInterface> en = NetworkInterface.getNetworkInterfaces();
            while (en != null && en.hasMoreElements()) {
                NetworkInterface ni = en.nextElement();
                if (!ni.isUp() || ni.isLoopback()) continue;
                for (InterfaceAddress ia : ni.getInterfaceAddresses()) {
                    InetAddress a = ia.getAddress();
                    if (a instanceof java.net.Inet4Address) {
                        if (sb.length() > 0) sb.append(", ");
                        sb.append(a.getHostAddress());
                    }
                }
            }
        } catch (Throwable t) {
            // unknown
        }
        return sb.length() == 0 ? "?" : sb.toString();
    }

    /** Host: the first 6 bytes from a guest must be the HELLO tag (3 s). */
    private static boolean hello(Socket s) {
        try {
            s.setSoTimeout(3000);
            byte[] b = new byte[HELLO.length()];
            new DataInputStream(s.getInputStream()).readFully(b);
            s.setSoTimeout(0);
            return HELLO.equals(new String(b, "UTF-8"));
        } catch (Throwable t) {
            return false;
        }
    }

    private static void begin(final Socket s, final long gen) throws IOException {
        s.setTcpNoDelay(true);
        s.setSendBufferSize(256 * 1024);
        s.setReceiveBufferSize(256 * 1024);
        sock = s;
        synchronized (outLock) { reliable.clear(); latest = null; }
        resetTables();
        connected = true;
        status = ModLang.tr("Co-op connected");
        ModDev.ev("lan", "connected role=" + role + " peer=" + s.getInetAddress());
        announce = true;
        final DataInputStream in = new DataInputStream(new java.io.BufferedInputStream(s.getInputStream(), 65536));
        final DataOutputStream out = new DataOutputStream(new java.io.BufferedOutputStream(s.getOutputStream(), 65536));
        readerT = new Thread(new Runnable() {
            public void run() {
                try {
                    while (gen == linkGen) {
                        int type = in.readUnsignedByte();
                        int len = in.readInt();
                        if (len < 0 || len > 4 << 20) throw new IOException("bad length " + len);
                        byte[] b = new byte[len];
                        in.readFully(b);
                        if (type == MSG_BYE) throw new IOException("bye");
                        receive(type, b);
                    }
                } catch (Throwable t) {
                    if (gen == linkGen) fail(t);
                }
            }
        }, "lan-read");
        writerT = new Thread(new Runnable() {
            public void run() {
                try {
                    while (gen == linkGen) {
                        byte[][] rel;
                        byte[] frame;
                        synchronized (outLock) {
                            while (reliable.isEmpty() && latest == null && gen == linkGen) outLock.wait(200);
                            rel = reliable.toArray(new byte[reliable.size()][]);
                            reliable.clear();
                            frame = latest;
                            latest = null;
                        }
                        for (byte[] m : rel) out.write(m);   // definitions and shots go out before the frame that uses them
                        if (frame != null) out.write(frame);
                        out.flush();
                    }
                } catch (Throwable t) {
                    if (gen == linkGen) fail(t);
                }
            }
        }, "lan-write");
        readerT.start();
        writerT.start();
    }

    private static void fail(Throwable t) {
        boolean was = connected;
        ModDev.ev("lan", "link failed " + t);
        stop();
        status = ModLang.tr("Co-op link lost") + (t != null && t.getMessage() != null ? ": " + t.getMessage() : "");
        if (was) lost = true;
    }

    /** Ends the session on both sides. */
    static void stop() {
        linkGen++;
        final Socket old = sock;
        final boolean bye = connected;
        connected = false;
        role = NONE;
        status = "";
        if (old != null) {
            new Thread(new Runnable() {   // never on the UI thread (no network there); the writer thread has stopped
                public void run() {
                    try { if (bye) { old.getOutputStream().write(new byte[]{MSG_BYE, 0, 0, 0, 0}); old.getOutputStream().flush(); } } catch (Throwable t) { /* closing anyway */ }
                    try { old.close(); } catch (Throwable t) { /* closed */ }
                }
            }, "lan-bye").start();
        }
        try { if (server != null) server.close(); } catch (Throwable t) { /* closed */ }
        try { if (beacon != null) beacon.close(); } catch (Throwable t) { /* closed */ }
        sock = null;
        server = null;
        synchronized (outLock) { reliable.clear(); latest = null; outLock.notifyAll(); }
        dropProxy = true;
        pvp = false;
        pvpWanted = false;
    }

    private static void sendReliable(int type, ByteArrayOutputStream body) {
        byte[] m = frameBytes(type, body);
        synchronized (outLock) { reliable.add(m); outLock.notifyAll(); }
    }

    private static void sendLatest(int type, ByteArrayOutputStream body) {
        byte[] m = frameBytes(type, body);
        synchronized (outLock) { latest = m; outLock.notifyAll(); }
    }

    private static byte[] frameBytes(int type, ByteArrayOutputStream body) {
        int n = body.size();
        byte[] m = new byte[5 + n];
        m[0] = (byte) type;
        m[1] = (byte) (n >>> 24); m[2] = (byte) (n >>> 16); m[3] = (byte) (n >>> 8); m[4] = (byte) n;
        System.arraycopy(body.toByteArray(), 0, m, 5, n);
        return m;
    }

    // ------------------------------------------------------------------ texture definitions (both directions)
    private static final HashMap<String, Integer> defOut = new HashMap<String, Integer>();
    private static final WeakHashMap<Texture, String> texKeys = new WeakHashMap<Texture, String>();
    private static final HashMap<Integer, String> defIn = new HashMap<Integer, String>();
    private static final HashMap<Integer, Texture> texIn = new HashMap<Integer, Texture>();

    private static void resetTables() {
        synchronized (defOut) { defOut.clear(); }
        synchronized (defIn) { defIn.clear(); texIn.clear(); }
        synchronized (inLock) { inFrame = null; inState = null; inShots.clear(); }
        dmgSent = 0; dmgSeen = 0; xpSent = 0; xpSeen = 0; xpBase = -1; dmgBase = -1;
    }

    /** Stable cross-phone key of a texture: L<asset> (mod lazy art), M<name> (mod eager art), R<resource> (stock); null = skip. */
    private static String texKey(Texture t) {
        if (t == null) return null;
        String k = texKeys.get(t);
        if (k != null) return k.length() == 0 ? null : k;
        if (t instanceof ModArt.Lazy) k = "L" + ((ModArt.Lazy) t).asset;
        else {
            String n = ModArt.nameOf(t);
            if (n != null) k = "M" + n;
            else if (t.resource != 0) k = "R" + t.resource;
            else k = "";
        }
        texKeys.put(t, k);
        return k.length() == 0 ? null : k;
    }

    /** Game thread: the id for a texture, queueing its definition first when new; -1 = not streamable. */
    private static int defId(Texture t) {
        String k = texKey(t);
        if (k == null) return -1;
        synchronized (defOut) {
            Integer id = defOut.get(k);
            if (id != null) return id;
            if (defOut.size() >= 60000) return -1;
            id = defOut.size() + 1;
            defOut.put(k, id);
            try {
                ByteArrayOutputStream bo = new ByteArrayOutputStream();
                DataOutputStream o = new DataOutputStream(bo);
                o.writeShort(id);
                o.writeUTF(k);
                sendReliable(MSG_DEF, bo);
            } catch (IOException e) {
                return -1;
            }
            return id;
        }
    }

    private static Object texLib;
    private static Method texByRes;

    /** Game thread: the local texture for a received id, or null while unknown or not loaded. */
    private static Texture texFor(int id) {
        synchronized (defIn) {
            Texture t = texIn.get(id);
            if (t != null) return t;
            String k = defIn.get(id);
            if (k == null || k.length() < 2) return null;
            char c = k.charAt(0);
            String v = k.substring(1);
            try {
                if (c == 'L') t = ModArt.lazyTex(v);
                else if (c == 'M') t = ModArt.texture(v);
                else if (c == 'R') {
                    if (texByRes == null) {
                        Field f = ObjectRegistry.INSTANCE.game.getClass().getDeclaredField("textureLibrary");
                        f.setAccessible(true);
                        texLib = f.get(ObjectRegistry.INSTANCE.game);
                        texByRes = texLib.getClass().getMethod("getTextureByResource", int.class);
                    }
                    t = (Texture) texByRes.invoke(texLib, Integer.parseInt(v));
                }
            } catch (Throwable e) {
                t = null;
            }
            if (t != null) texIn.put(id, t);
            return t;
        }
    }

    // ------------------------------------------------------------------ render-list capture (sender side)
    private static Field fType, fPos, fSpin, fA, fR, fG, fB, fZoom, fBack, fText, fTSize, fPSize, fQSize, fQIdx;
    private static boolean reflOk;

    private static boolean refl() {
        if (reflOk) return true;
        try {
            Class<?> c = RenderElement.class;
            fType = acc(c, "renderType"); fPos = acc(c, "position"); fSpin = acc(c, "spin");
            fA = acc(c, "a"); fR = acc(c, "r"); fG = acc(c, "g"); fB = acc(c, "b");
            fZoom = acc(c, "zoomInsensitive"); fBack = acc(c, "backgroundMode"); fText = acc(c, "text");
            fTSize = acc(c, "textSize"); fPSize = acc(c, "pointSize");
            fQSize = acc(RenderQueue.class, "queueSize"); fQIdx = acc(RenderQueue.class, "waitingQueueIndex");
            reflOk = true;
        } catch (Throwable t) {
            reflOk = false;
        }
        return reflOk;
    }

    private static Field acc(Class<?> c, String n) throws NoSuchFieldException {
        Field f = c.getDeclaredField(n);
        f.setAccessible(true);
        return f;
    }

    static int queueSize() {
        try {
            RenderQueue q = ObjectRegistry.INSTANCE.renderQueue;
            return refl() ? fQSize.getInt(q) : -1;
        } catch (Throwable t) {
            return -1;
        }
    }

    private static int b255(float v) {
        if (!(v > 0)) return 0;
        return v >= 1 ? 255 : (int) (v * 255.0f + 0.5f);
    }

    /**
     * Writes queue entries [from, to) of the waiting queue, minus [skipFrom, skipTo), as records; positions relative to
     * (ox, oy). Returns the number written.
     */
    private static int capture(RenderQueue q, int from, int to, int skipFrom, int skipTo, float ox, float oy, DataOutputStream o, int max) throws Exception {
        RenderElement[] arr = q.objectQueue[fQIdx.getInt(q)];
        int n = 0;
        for (int i = from; i < to && n < max; i++) {
            if (i >= skipFrom && i < skipTo) continue;
            RenderElement re = arr[i];
            if (re == null || re.cameraRelative || fBack.getBoolean(re)) continue;
            Object type = fType.get(re);
            Vector2 p = (Vector2) fPos.get(re);
            if (p == null) continue;
            float a = fA.getFloat(re), r = fR.getFloat(re), g = fG.getFloat(re), b = fB.getFloat(re);
            boolean zoom = fZoom.getBoolean(re);
            if (type == RenderElementType.SPRITE) {
                Drawable d = re.drawable;
                if (d == null || d == ModFx.EMPTY || d == ModFx.PUMP) continue;
                if (d instanceof ModPoliceData.Tinted) {
                    r *= ModPoliceData.TINT_R; g *= ModPoliceData.TINT_G; b *= ModPoliceData.TINT_B;
                    d = ((ModPoliceData.Tinted) d).base;
                }
                int id = defId(d.myTexture);
                if (id < 0) continue;
                boolean fx = d instanceof ModFx.Sprite;
                o.writeByte(fx ? R_FX : R_SPRITE);
                o.writeShort(id);
                o.writeFloat(p.x - ox); o.writeFloat(p.y - oy); o.writeFloat(fSpin.getFloat(re));
                o.writeByte(b255(a)); o.writeByte(b255(r)); o.writeByte(b255(g)); o.writeByte(b255(b));
                if (fx) {
                    ModFx.Sprite s = (ModFx.Sprite) d;
                    int fl = (zoom ? 1 : 0) | (s.additive ? 2 : 0) | (s.flat ? 4 : 0) | (s.repeatT ? 8 : 0) | (s.edgeA != null ? 16 : 0);
                    o.writeByte(fl);
                    o.writeFloat(s.w); o.writeFloat(s.h);
                    o.writeFloat(s.u0); o.writeFloat(s.v0); o.writeFloat(s.u1); o.writeFloat(s.v1);
                    if (s.edgeA != null) { o.writeFloat(s.edgeA[0]); o.writeFloat(s.edgeA[1]); }
                } else {
                    o.writeByte(zoom ? 1 : 0);
                    o.writeFloat(d.dimensions.x); o.writeFloat(d.dimensions.y);
                }
                n++;
            } else if (type == RenderElementType.TEXT) {
                String txt = (String) fText.get(re);
                TextSize ts = (TextSize) fTSize.get(re);
                if (txt == null || ts == null || txt.length() > 200) continue;
                o.writeByte(R_TEXT);
                o.writeFloat(p.x - ox); o.writeFloat(p.y - oy);
                o.writeByte(b255(a)); o.writeByte(b255(r)); o.writeByte(b255(g)); o.writeByte(b255(b));
                o.writeByte(zoom ? 1 : 0);
                o.writeByte(ts.ordinal());
                o.writeUTF(txt);
                n++;
            } else if (type == RenderElementType.POINT) {
                o.writeByte(R_POINT);
                o.writeFloat(p.x - ox); o.writeFloat(p.y - oy);
                o.writeByte(b255(a)); o.writeByte(b255(r)); o.writeByte(b255(g)); o.writeByte(b255(b));
                o.writeFloat(fPSize.getFloat(re));
                n++;
            }
        }
        return n;
    }

    // ------------------------------------------------------------------ received data
    static final class Rec {
        int kind, id, flags, tsize;
        float x, y, spin, a, r, g, b, w, h, u0, v0, u1, v1, e0, e1, psize;
        String text;
    }

    static final class InFrame {
        String level;
        float hx, hy, dmg;
        long xp;
        boolean pvp;
        int round, hostWins, guestWins;
        Rec[] recs;
        int n;
    }

    static final class InState {
        boolean alive;
        String level;
        float x, y, vx, vy, spin, life, maxLife, halfW, halfH;
        long at;
        int defeats;
        Rec[] recs;
        int n;
    }

    private static final Object inLock = new Object();
    private static InFrame inFrame;
    private static volatile InState inState;
    private static final ArrayList<byte[]> inShots = new ArrayList<byte[]>();

    private static void receive(int type, byte[] b) throws IOException {
        DataInputStream in = new DataInputStream(new java.io.ByteArrayInputStream(b));
        if (type == MSG_DEF) {
            int id = in.readUnsignedShort();
            String k = in.readUTF();
            synchronized (defIn) { defIn.put(id, k); texIn.remove(id); }
        } else if (type == MSG_FRAME && role == GUEST) {
            InFrame f = new InFrame();
            f.level = in.readUTF();
            f.hx = in.readFloat(); f.hy = in.readFloat(); f.dmg = in.readFloat(); f.xp = in.readLong();
            f.n = in.readUnsignedShort();
            f.recs = readRecs(in, f.n);
            if (in.available() >= 9) { f.pvp = in.readBoolean(); f.round = in.readInt(); f.hostWins = in.readShort(); f.guestWins = in.readShort(); }
            synchronized (inLock) { inFrame = f; }
            gotFrames++;
            lastRecs = f.n;
        } else if (type == MSG_STATE && role == HOST) {
            InState s = new InState();
            s.alive = in.readBoolean();
            s.level = in.readUTF();
            s.x = in.readFloat(); s.y = in.readFloat(); s.vx = in.readFloat(); s.vy = in.readFloat(); s.spin = in.readFloat();
            s.life = in.readFloat(); s.maxLife = in.readFloat(); s.halfW = in.readFloat(); s.halfH = in.readFloat();
            s.n = in.readUnsignedShort();
            s.recs = readRecs(in, s.n);
            if (in.available() >= 4) s.defeats = in.readInt();
            s.at = System.currentTimeMillis();
            synchronized (inLock) { inState = s; }
            gotFrames++;
            lastRecs = s.n;
        } else if (type == MSG_SHOT && role == HOST) {
            synchronized (inLock) { if (inShots.size() < 400) inShots.add(b); }
            shotsIn++;
        }
    }

    private static Rec[] readRecs(DataInputStream in, int n) throws IOException {
        Rec[] out = new Rec[n];
        for (int i = 0; i < n; i++) {
            Rec r = new Rec();
            r.kind = in.readUnsignedByte();
            if (r.kind == R_SPRITE || r.kind == R_FX) {
                r.id = in.readUnsignedShort();
                r.x = in.readFloat(); r.y = in.readFloat(); r.spin = in.readFloat();
                r.a = in.readUnsignedByte() / 255.0f; r.r = in.readUnsignedByte() / 255.0f; r.g = in.readUnsignedByte() / 255.0f; r.b = in.readUnsignedByte() / 255.0f;
                r.flags = in.readUnsignedByte();
                r.w = in.readFloat(); r.h = in.readFloat();
                if (r.kind == R_FX) {
                    r.u0 = in.readFloat(); r.v0 = in.readFloat(); r.u1 = in.readFloat(); r.v1 = in.readFloat();
                    if ((r.flags & 16) != 0) { r.e0 = in.readFloat(); r.e1 = in.readFloat(); }
                } else {
                    r.u0 = 0; r.v0 = 0; r.u1 = 1; r.v1 = 1;
                }
            } else if (r.kind == R_TEXT) {
                r.x = in.readFloat(); r.y = in.readFloat();
                r.a = in.readUnsignedByte() / 255.0f; r.r = in.readUnsignedByte() / 255.0f; r.g = in.readUnsignedByte() / 255.0f; r.b = in.readUnsignedByte() / 255.0f;
                r.flags = in.readUnsignedByte();
                r.tsize = in.readUnsignedByte();
                r.text = in.readUTF();
            } else if (r.kind == R_POINT) {
                r.x = in.readFloat(); r.y = in.readFloat();
                r.a = in.readUnsignedByte() / 255.0f; r.r = in.readUnsignedByte() / 255.0f; r.g = in.readUnsignedByte() / 255.0f; r.b = in.readUnsignedByte() / 255.0f;
                r.psize = in.readFloat();
            } else {
                throw new IOException("bad record " + r.kind);
            }
            out[i] = r;
        }
        return out;
    }

    // ------------------------------------------------------------------ replay of received records (receiver side)
    private static final ModFx.Sprite[][] pools = new ModFx.Sprite[3][];
    private static int poolFrame;
    private static final Vector2[][] vpools = new Vector2[3][];
    private static final TextSize[] SIZES = TextSize.values();

    /** Queues the records at (ox, oy) + their offsets into the waiting queue. */
    private static void replay(Rec[] recs, int n, float ox, float oy) {
        try {
            if (recs == null || !refl()) return;
            RenderQueue q = ObjectRegistry.INSTANCE.renderQueue;
            RenderElement[] arr = q.objectQueue[fQIdx.getInt(q)];
            int size = fQSize.getInt(q);
            int slot = poolFrame % 3;
            if (pools[slot] == null) { pools[slot] = new ModFx.Sprite[MAX_REMOTE]; vpools[slot] = new Vector2[MAX_REMOTE]; }
            ModFx.Sprite[] sp = pools[slot];
            Vector2[] vp = vpools[slot];
            int used = 0;
            for (int i = 0; i < n && size < arr.length - 300 && used < MAX_REMOTE; i++) {
                Rec r = recs[i];
                RenderElement re = arr[size];
                if (re == null) break;
                Vector2 at = vp[used];
                if (at == null) at = vp[used] = new Vector2();
                at.set(ox + r.x, oy + r.y);
                boolean zoom = (r.flags & 1) != 0;
                if (r.kind == R_SPRITE || r.kind == R_FX) {
                    Texture t = texFor(r.id);
                    if (t == null) continue;
                    ModFx.Sprite s = sp[used];
                    if (s == null) s = sp[used] = new ModFx.Sprite();
                    s.myTexture = t;
                    s.w = r.w; s.h = r.h;
                    s.u0 = r.u0; s.v0 = r.v0; s.u1 = r.u1; s.v1 = r.v1;
                    s.additive = (r.flags & 2) != 0;
                    s.flat = (r.flags & 4) != 0;
                    s.repeatT = (r.flags & 8) != 0;
                    if ((r.flags & 16) != 0) {
                        if (s.edgeA == null) s.edgeA = new float[2];
                        s.edgeA[0] = r.e0; s.edgeA[1] = r.e1;
                    } else s.edgeA = null;
                    re.set(s, at, false, r.spin, r.a, r.r, r.g, r.b, zoom, false);
                } else if (r.kind == R_TEXT) {
                    if (r.tsize >= SIZES.length) continue;
                    re.setAsText(at, r.text, false, r.r, r.g, r.b, r.a, SIZES[r.tsize]);
                } else if (r.kind == R_POINT) {
                    re.setAsPoint(at, false, r.r, r.g, r.b, r.a, r.psize);
                } else continue;
                size++;
                used++;
            }
            fQSize.setInt(q, size);
        } catch (Throwable t) {
            // a broken remote frame is skipped
        }
    }

    // ------------------------------------------------------------------ game-thread hooks
    private static long lastFrameMs, lastLog, testAt;
    private static String testLast;
    static volatile int sentFrames, gotFrames, lastRecs, shotsIn, shotsOut;

    /** Emulator only: /data/local/tmp/corsair_lan = host | join:ADDRESS | off | duel | duel-off (a new value re-triggers). */
    private static void testSwitch(long now) {
        if (now - testAt < 2000) return;
        testAt = now;
        final String v = ModDev.testValue("corsair_lan");
        if (v == null || v.equals(testLast)) return;
        testLast = v;
        ModDev.ev("lan", "test switch " + v);
        if (v.equals("host")) host();
        else if (v.equals("off")) stop();
        else if (v.equals("duel")) duel(true);
        else if (v.equals("duel-off")) duel(false);
        else if (v.startsWith("join:")) new Thread(new Runnable() { public void run() { join(v.substring(5)); ModDev.ev("lan", "join -> connected=" + connected + " " + status); } }, "lan-join").start();
    }
    private static boolean announce, lost;
    private static volatile boolean dropProxy;
    // guest
    private static float dmgSeen;
    private static long xpSeen;
    private static int shipFrom = -1, shipTo = -1;
    private static boolean pulled;
    private static long pullAt;
    // host
    static volatile Ennemis proxy;
    private static Level proxyLevel;
    private static final float PROXY_LIFE = 1.0e6f;   // never dies on the host; the deficit is the guest's damage
    private static float dmgSent, dmgBase = -1;
    private static long xpSent, xpBase = -1;
    private static int proxyFrom = -1, proxyTo = -1;
    private static long retarget;
    private static Ennemis dummySender;

    /** ModLive.frameStart: once per game frame, before any element is drawn. */
    static void frame() {
        long now = System.currentTimeMillis();
        long dt = lastFrameMs == 0 ? 16 : Math.max(1, Math.min(100, now - lastFrameMs));
        lastFrameMs = now;
        poolFrame++;
        shipFrom = shipTo = proxyFrom = proxyTo = -1;
        try {
            PlayerShip ps = ObjectRegistry.INSTANCE.playerShip;
            if (dropProxy) { dropProxy = false; removeProxy(); }
            if (ps == null || ObjectRegistry.INSTANCE.game.currentLevel == null) return;
            if (announce) { announce = false; Mod.floatText(ps, ModLang.tr("CO-OP CONNECTED"), 0.3f, 1.0f, 0.5f); }
            if (lost) { lost = false; Mod.floatText(ps, ModLang.tr("CO-OP LINK LOST"), 1.0f, 0.4f, 0.3f); }
            testSwitch(now);
            if (!connected) return;
            if (now - lastLog > 3000) {
                lastLog = now;
                ModDev.ev("lan", (role == HOST ? "host" : "guest") + " level=" + (ObjectRegistry.INSTANCE.game.currentLevel.id) + " sent=" + sentFrames
                    + " got=" + gotFrames + " lastRecs=" + lastRecs + " proxy=" + (proxy != null) + " shotsIn=" + shotsIn + " shotsOut=" + shotsOut
                    + " dmgSent=" + dmgSent + " dmgSeen=" + dmgSeen + " xpSent=" + xpSent + " xpSeen=" + xpSeen + " hull=" + ps.life + "/" + ps.maxLife
                    + " pos=" + (int) ps.position.x + "," + (int) ps.position.y);
            }
            if (role == HOST) hostFrame(ps, dt);
            else if (role == GUEST) guestFrame(ps);
        } catch (Throwable t) {
            // the link never breaks the frame
        }
    }

    // ---------------------------------------------------------------- host
    private static void hostFrame(PlayerShip ps, long dt) {
        InState s;
        ArrayList<byte[]> shots;
        synchronized (inLock) {
            s = inState;
            shots = new ArrayList<byte[]>(inShots);
            inShots.clear();
        }
        Level lv = ObjectRegistry.INSTANCE.game.currentLevel;
        hostDuel(ps, lv, s);
        boolean here = s != null && s.alive && System.currentTimeMillis() - s.at < 2000 && lv.id != null && lv.id.levelName.equals(s.level)
            && !ObjectRegistry.INSTANCE.game.mapMode;
        if (!here) {
            removeProxy();
            return;
        }
        if (proxy == null || proxy.removed || proxyLevel != lv) { removeProxy(); spawnProxy(ps, s); proxyLevel = lv; }
        Ennemis p = proxy;
        if (p == null) return;
        float age = Math.min(250, System.currentTimeMillis() - s.at) / 16.0f;   // speeds are per ~16 ms frame
        p.position.set(s.x + s.vx * age, s.y + s.vy * age);
        p.speed.set(s.vx, s.vy);
        p.spin = s.spin;
        p.updateSapCoords();
        // hits on the stand-in are forwarded to the guest's own shields and hull; the stand-in itself never dies
        float lost = PROXY_LIFE - p.life;
        if (lost > 0) dmgSent += lost;
        p.maxLife = PROXY_LIFE;
        p.life = PROXY_LIFE;
        p.lifeInPourc = s.maxLife > 0 ? 100.0f * Math.max(0, s.life) / s.maxLife : 100.0f;
        p.removed = false;
        for (byte[] b : shots) fireShot(b, p);
        retarget -= dt;
        if (!pvp && retarget <= 0) {
            retarget = 1000;
            for (Element e : lv.elements) {
                if (!(e instanceof Ennemis) || e.removed || e == p || Mod.isDrone(e)) continue;
                Ennemis en = (Ennemis) e;
                if (en.attackTarget != ps) continue;
                float dp = e.position.distance(p.position), dh = e.position.distance(ps.position);
                if (dp < 2500 && dp < dh && Math.random() < 0.6) en.initAttackTarget(p);
            }
        }
    }

    private static void spawnProxy(PlayerShip ps, InState s) {
        try {
            int lvl = Math.max(1, ObjectRegistry.INSTANCE.game.playerInfo.level);
            Ennemis d = EnnemisFactory.newEnnemis(EnnemisType.BASIC, lvl, lvl);
            d.setIaDisabled();
            d.disableIa = true;
            d.xp = 0;
            d.level = lvl;
            d.levelStr = lvl + "";
            d.maxLife = PROXY_LIFE;
            d.life = PROXY_LIFE;
            d.drawLifeBar = false;
            d.position.set(s.x, s.y);
            d.speed.set(s.vx, s.vy);
            d.spin = s.spin;
            d.radarColorR = 0.2f; d.radarColorG = 1.0f; d.radarColorB = 0.6f;
            d.specificName = ModLang.tr("CO-OP");
            d.specificNameDecalX = -1;
            d.lootConfig = null;
            d.updateSapCoords();
            d.addToCurrentLevel();
            proxy = d;
            ModDev.ev("lan", "proxy spawned at " + (int) s.x + "," + (int) s.y);
        } catch (Throwable t) {
            proxy = null;
        }
    }

    private static void removeProxy() {
        Ennemis p = proxy;
        proxy = null;
        if (p != null && !p.removed) p.remove();
    }

    /** hooks49b: Level's enemy counts skip the stand-in (it never dies, so a zone would never read as cleared). */
    public static boolean countsAsEnemy(Object o) {
        return o instanceof Ennemis && (proxy == null || o != proxy);
    }

    static boolean isProxy(Element e) {
        return e != null && e == proxy;
    }

    /** Mod.isDrone: the stand-in is on the player's side in co-op; in a duel it is an opponent (stock enemy rules). */
    static boolean isAlly(Element e) {
        return e != null && e == proxy && !pvp;
    }

    /** ModLive.draw for the stand-in: the guest's own ship sprites at the stand-in's position. True = drawn here. */
    static boolean drawProxy(Element e) {
        if (e != proxy || proxy == null) return false;
        InState s;
        synchronized (inLock) { s = inState; }
        proxyFrom = queueSize();
        if (s != null) replay(s.recs, s.n, e.position.x, e.position.y);
        proxyTo = queueSize();
        return true;
    }

    /** Host: re-creates a guest shot (same projectile class and fields) fired by the stand-in. */
    private static void fireShot(byte[] b, Ennemis from) {
        try {
            DataInputStream in = new DataInputStream(new java.io.ByteArrayInputStream(b));
            String cn = in.readUTF();
            Class<?> c = Class.forName(cn);
            if (!Projectile.class.isAssignableFrom(c) || LaserBeam.class.isAssignableFrom(c)) return;
            Projectile p = newProjectile(c);
            if (p == null) return;
            for (Field f : shotFields(c)) readField(in, f, p);
            p.sender = from;
            p.alterationSpecs = null;
            p.poisonSource = null;
            p.removed = false;
            p.isPlayer = false;
            p.updateSapCoords();
            ObjectRegistry.INSTANCE.queueElementToBeAddToLevel(p);
        } catch (Throwable t) {
            ModDev.ev("lan", "shot failed " + t);   // one lost shot
        }
    }

    private static final HashMap<Class<?>, Method> poolMakers = new HashMap<Class<?>, Method>();

    private static Projectile newProjectile(Class<?> c) throws Exception {
        Method m;
        if (poolMakers.containsKey(c)) m = poolMakers.get(c);
        else {
            m = null;
            for (Method x : fr.testudo.spacecorsair.business.factory.GamePools.class.getMethods()) {
                if (Modifier.isStatic(x.getModifiers()) && x.getParameterTypes().length == 0 && x.getReturnType() == c) { m = x; break; }
            }
            poolMakers.put(c, m);
        }
        Object o = m != null ? m.invoke(null) : c.newInstance();
        return (Projectile) o;
    }

    // ---------------------------------------------------------------- guest
    private static void guestFrame(PlayerShip ps) {
        InFrame f;
        synchronized (inLock) { f = inFrame; }
        Level lv = ObjectRegistry.INSTANCE.game.currentLevel;
        // the guest's own sector stays empty: the host's world is what it sees and fights
        for (Element e : lv.elements) {
            if (e == ps || e.removed || Mod.isDrone(e)) continue;   // own drones stay
            if (e instanceof Ennemis || e instanceof CivilShip || e instanceof Asteroid || e instanceof LootElement || e instanceof Mine
                || (e instanceof Projectile && ((Projectile) e).sender != ps)) e.remove();
        }
        if (f == null) return;
        guestDuel(ps, f);
        // follow the host between sectors
        if (lv.id != null && !lv.id.levelName.equals(f.level) && !ObjectRegistry.INSTANCE.game.mapMode) {
            long now = System.currentTimeMillis();
            if (!pulled || now - pullAt > 3000) {
                pulled = true;
                pullAt = now;
                try {
                    LevelId to = null;
                    for (LevelId l : LevelId.values()) if (l.levelName.equals(f.level)) { to = l; break; }
                    if (to == LevelId.FFA_THE_PLAYER_PAY) lv.requestChangeLevel(to.levelName, ARENA_GATE);
                    else if (to != null) lv.requestChangeLevel(to.levelName, to.jumpPortalName);
                    ModDev.ev("lan", "guest pulled to " + f.level + " found=" + (to != null));
                } catch (Throwable t) {
                    // retried on the next host frame
                }
            }
            return;
        }
        if (pulled) {
            pulled = false;
            if (pvp) ps.position.set(f.hx + 2400, f.hy);   // a duel starts apart
            else ps.position.set(f.hx + 250, f.hy + 250);   // arrive next to the host
            ps.speed.set(0, 0);
            ps.updateSapCoords();
        }
        // damage the host's game dealt to this ship, through this ship's own shields and hull
        if (dmgBase < 0) dmgBase = f.dmg;
        float d = f.dmg - dmgBase - dmgSeen;
        if (d > 0 && !ps.removed && ps.life > 0) {
            dmgSeen += d;
            hurt(ps, d);
        }
        // shared XP
        if (xpBase < 0) xpBase = f.xp;
        long x = f.xp - xpBase - xpSeen;
        if (x > 0) {
            xpSeen += x;
            try { ObjectRegistry.INSTANCE.game.playerInfo.addXp((int) Math.min(Integer.MAX_VALUE, x)); } catch (Throwable t) { /* no xp */ }
        }
        replay(f.recs, f.n, 0, 0);
    }

    private static void hurt(PlayerShip ps, float dmg) {
        try {
            if (dummySender == null) {
                dummySender = EnnemisFactory.newEnnemis(EnnemisType.BASIC, 1, 1);
                dummySender.specificName = ModLang.tr("CO-OP");
            }
            EnergyBullet b = new EnergyBullet();
            b.sender = dummySender;
            b.damage = dmg;
            b.level = ps.level;
            ps.applyDamage(dmg, dummySender, b);
        } catch (Throwable t) {
            ps.life -= dmg;
        }
    }

    /** ModLive.draw on the guest: false = do not draw (the host's stream shows it). Records the player's own ship range. */
    static boolean guestDraw(Element e) {
        return e == ObjectRegistry.INSTANCE.playerShip;
    }

    static boolean guestActive() {
        return role == GUEST && connected;
    }

    static void shipStart() { if (guestActive()) shipFrom = queueSize(); }

    static void shipEnd() { if (guestActive()) shipTo = queueSize(); }

    /** ModPolice.factionGuns (Level.commitChanges): new elements of this frame. The guest sends its own shots. */
    static void added(List<?> toAdd) {
        if (!guestActive() || toAdd == null) return;
        try {
            PlayerShip ps = ObjectRegistry.INSTANCE.playerShip;
            for (Object o : toAdd) {
                if (!(o instanceof Projectile) || o instanceof LaserBeam) continue;
                Projectile p = (Projectile) o;
                if (p.sender != ps) continue;
                ByteArrayOutputStream bo = new ByteArrayOutputStream();
                DataOutputStream out = new DataOutputStream(bo);
                out.writeUTF(p.getClass().getName());
                for (Field f : shotFields(p.getClass())) writeField(out, f, p);
                sendReliable(MSG_SHOT, bo);
                shotsOut++;
            }
        } catch (Throwable t) {
            // a shot not mirrored
        }
    }

    // ---------------------------------------------------------------- shot field mirror
    private static final HashMap<Class<?>, Field[]> shotFieldCache = new HashMap<Class<?>, Field[]>();
    private static final java.util.HashSet<String> SKIP = new java.util.HashSet<String>(Arrays.asList(
        "removed", "isPlayer", "objectId", "collisionGraceEnd", "lastServerUpdate", "lastServerUpdateAtClientTime", "distanceToPlayer", "distanceToTarget"));

    /** Primitive and Vector2 instance fields from Element down to c, by declaring class then name (same on both phones). */
    static Field[] shotFields(Class<?> c) {
        Field[] fs = shotFieldCache.get(c);
        if (fs != null) return fs;
        ArrayList<Class<?>> chain = new ArrayList<Class<?>>();
        for (Class<?> k = c; k != null && Element.class.isAssignableFrom(k); k = k.getSuperclass()) chain.add(0, k);
        ArrayList<Field> out = new ArrayList<Field>();
        for (Class<?> k : chain) {
            Field[] ds = k.getDeclaredFields();
            Arrays.sort(ds, new Comparator<Field>() { public int compare(Field a, Field b) { return a.getName().compareTo(b.getName()); } });
            for (Field f : ds) {
                int m = f.getModifiers();
                if (Modifier.isStatic(m) || Modifier.isFinal(m) && !f.getType().equals(Vector2.class)) continue;
                if (SKIP.contains(f.getName())) continue;
                Class<?> t = f.getType();
                if (!(t.isPrimitive() || t == Vector2.class)) continue;
                f.setAccessible(true);
                out.add(f);
            }
        }
        fs = out.toArray(new Field[out.size()]);
        shotFieldCache.put(c, fs);
        return fs;
    }

    private static void writeField(DataOutputStream o, Field f, Object p) throws Exception {
        Class<?> t = f.getType();
        if (t == float.class) o.writeFloat(f.getFloat(p));
        else if (t == int.class) o.writeInt(f.getInt(p));
        else if (t == long.class) o.writeLong(f.getLong(p));
        else if (t == boolean.class) o.writeBoolean(f.getBoolean(p));
        else if (t == double.class) o.writeDouble(f.getDouble(p));
        else if (t == short.class) o.writeShort(f.getShort(p));
        else if (t == byte.class) o.writeByte(f.getByte(p));
        else if (t == char.class) o.writeChar(f.getChar(p));
        else if (t == Vector2.class) {
            Vector2 v = (Vector2) f.get(p);
            o.writeBoolean(v != null);
            if (v != null) { o.writeFloat(v.x); o.writeFloat(v.y); }
        }
    }

    private static void readField(DataInputStream in, Field f, Object p) throws Exception {
        Class<?> t = f.getType();
        if (t == float.class) f.setFloat(p, in.readFloat());
        else if (t == int.class) f.setInt(p, in.readInt());
        else if (t == long.class) f.setLong(p, in.readLong());
        else if (t == boolean.class) f.setBoolean(p, in.readBoolean());
        else if (t == double.class) f.setDouble(p, in.readDouble());
        else if (t == short.class) f.setShort(p, in.readShort());
        else if (t == byte.class) f.setByte(p, in.readByte());
        else if (t == char.class) f.setChar(p, in.readChar());
        else if (t == Vector2.class) {
            if (in.readBoolean()) {
                float x = in.readFloat(), y = in.readFloat();
                Vector2 v = (Vector2) f.get(p);
                if (v == null) { v = new Vector2(); f.set(p, v); }
                v.set(x, y);
            }
        }
    }

    // ---------------------------------------------------------------- outgoing frames (RenderQueue.swapQueues)
    private static float viewHalfW() { return extent("xDelta"); }

    private static float viewHalfH() { return extent("yDelta"); }

    private static Field fx, fy;

    private static float extent(String n) {
        try {
            if (fx == null) { fx = acc(GameThread.class, "xDelta"); fy = acc(GameThread.class, "yDelta"); }
            return (n.equals("xDelta") ? fx : fy).getFloat(null) / 2.0f;
        } catch (Throwable t) {
            return 1500;
        }
    }

    /** hooks49: start of RenderQueue.swapQueues, the frame's queue is complete. */
    public static void beforeSwap(RenderQueue q) {
        if (!connected) return;
        try {
            if (!refl()) return;
            int size = fQSize.getInt(q);
            if (ObjectRegistry.INSTANCE.game == null || ObjectRegistry.INSTANCE.game.currentLevel == null) return;
            PlayerShip ps = ObjectRegistry.INSTANCE.playerShip;
            if (ps == null) return;
            if (role == HOST) {
                if (ObjectRegistry.INSTANCE.game.mapMode) return;
                ByteArrayOutputStream bo = new ByteArrayOutputStream(32768);
                DataOutputStream o = new DataOutputStream(bo);
                Level lv = ObjectRegistry.INSTANCE.game.currentLevel;
                o.writeUTF(lv.id != null ? lv.id.levelName : "");
                o.writeFloat(ps.position.x); o.writeFloat(ps.position.y);
                o.writeFloat(dmgSent);
                long xp = ObjectRegistry.INSTANCE.game.playerInfo.curXp;
                if (xpLastHost >= 0 && xp > xpLastHost) xpSent += xp - xpLastHost;   // a level-up lowers curXp: only gains count
                xpLastHost = xp;
                o.writeLong(xpSent);
                ByteArrayOutputStream rb = new ByteArrayOutputStream(32768);
                DataOutputStream ro = new DataOutputStream(rb);
                int n = capture(q, 0, size, proxyFrom < 0 ? 0 : proxyFrom, proxyTo < 0 ? 0 : proxyTo, 0, 0, ro, MAX_REMOTE);
                o.writeShort(n);
                rb.writeTo(o);
                o.writeBoolean(pvp); o.writeInt(round); o.writeShort(hostWins); o.writeShort(guestWins);
                o.flush();
                sendLatest(MSG_FRAME, bo);
                sentFrames++;
            } else if (role == GUEST) {
                ByteArrayOutputStream bo = new ByteArrayOutputStream(4096);
                DataOutputStream o = new DataOutputStream(bo);
                Level lv = ObjectRegistry.INSTANCE.game.currentLevel;
                boolean alive = !ps.removed && ps.life > 0 && !ObjectRegistry.INSTANCE.game.mapMode;
                o.writeBoolean(alive);
                o.writeUTF(lv.id != null ? lv.id.levelName : "");
                o.writeFloat(ps.position.x); o.writeFloat(ps.position.y);
                o.writeFloat(ps.speed.x); o.writeFloat(ps.speed.y); o.writeFloat(ps.spin);
                o.writeFloat(ps.life); o.writeFloat(ps.maxLife);
                o.writeFloat(viewHalfW()); o.writeFloat(viewHalfH());
                ByteArrayOutputStream rb = new ByteArrayOutputStream(4096);
                DataOutputStream ro = new DataOutputStream(rb);
                int n = 0;
                if (shipFrom >= 0 && shipTo > shipFrom) n = capture(q, shipFrom, shipTo, 0, 0, ps.position.x, ps.position.y, ro, 200);
                o.writeShort(n);
                rb.writeTo(o);
                o.writeInt(defeats);
                o.flush();
                sendLatest(MSG_STATE, bo);
                sentFrames++;
            }
        } catch (Throwable t) {
            // frame not sent
        }
    }

    private static long xpLastHost = -1;

    /** hooks49: GameThread.isElementVisible fallback. Host: also inside the guest's view (+ margin). */
    public static boolean alsoVisible(Element e) {
        if (role != HOST || !connected || e == null) return false;
        Ennemis p = proxy;
        if (p == null) return false;
        InState s = inState;
        if (s == null) return false;
        float hw = s.halfW + 300, hh = s.halfH + 300;
        Vector2 dim = e.getDimToTestIfVisibleOnScreen();
        float ex = dim != null ? dim.x / 2 : 0, ey = dim != null ? dim.y / 2 : 0;
        return Math.abs(e.position.x - p.position.x) < hw + ex && Math.abs(e.position.y - p.position.y) < hh + ey;
    }

    // ------------------------------------------------------------------ PvP duel (the old multiplayer bay)
    static volatile boolean pvp;
    private static volatile boolean pvpWanted;
    private static boolean jumpedIn;
    private static LevelId duelFrom;
    private static final String ARENA_GATE = "VECTOR00_GATE";
    static int round, hostWins, guestWins, defeats;
    private static int seenDefeats, seenRound;
    private static boolean lostRound, restore;

    /** Host UI: start or end a duel. The host's game takes both ships to the player bay (FFA, off the map). */
    static void duel(boolean on) {
        pvpWanted = on;
        ModDev.ev("lan", "duel " + on);
    }

    private static boolean inBay() {
        try {
            Level lv = ObjectRegistry.INSTANCE.game.currentLevel;
            return lv != null && lv.id == LevelId.FFA_THE_PLAYER_PAY;
        } catch (Throwable t) {
            return false;
        }
    }

    private static void hostDuel(PlayerShip ps, Level lv, InState s) {
        if (pvpWanted && !pvp) {
            pvp = true;
            round = 1; hostWins = 0; guestWins = 0;
            seenDefeats = s != null ? s.defeats : 0;
            jumpedIn = false;
            removeProxy();   // re-spawned on the duel side
        }
        if (pvp && !pvpWanted) {
            pvp = false;
            removeProxy();
            if (inBay() && duelFrom != null) lv.requestChangeLevel(duelFrom.levelName, duelFrom.jumpPortalName);
            return;
        }
        if (!pvp) return;
        if (!inBay()) {
            if (!jumpedIn) {
                jumpedIn = true;
                duelFrom = lv.id;
                lv.requestChangeLevel(LevelId.FFA_THE_PLAYER_PAY.levelName, ARENA_GATE);
                ModDev.ev("lan", "host jumps to the duel bay from " + duelFrom);
            }
            return;
        }
        if (s != null && s.defeats > seenDefeats) {   // the guest's hull hit its floor: host wins the round
            seenDefeats = s.defeats;
            hostWins++;
            round++;
            restore = true;
            roundText(ps, true);
        }
        if (lostRound) {   // the host's hull hit its floor: guest wins the round
            lostRound = false;
            guestWins++;
            round++;
            restore = true;
            roundText(ps, false);
        }
        if (restore) { restore = false; refill(ps); }
    }

    private static void guestDuel(PlayerShip ps, InFrame f) {
        pvp = f.pvp;
        if (!pvp) { seenRound = f.round; return; }
        if (lostRound) { lostRound = false; defeats++; }
        if (f.round != seenRound) {
            boolean won = f.guestWins > guestWins;
            boolean first = seenRound == 0;
            seenRound = f.round;
            hostWins = f.hostWins; guestWins = f.guestWins;
            refill(ps);
            if (!first) roundText(ps, won);
        }
    }

    private static void roundText(PlayerShip ps, boolean won) {
        int mine = role == HOST ? hostWins : guestWins, theirs = role == HOST ? guestWins : hostWins;
        Mod.floatText(ps, (won ? ModLang.tr("ROUND WON") : ModLang.tr("ROUND LOST")) + "  " + mine + " - " + theirs,
            won ? 0.3f : 1.0f, won ? 1.0f : 0.4f, won ? 0.5f : 0.3f);
        ModDev.ev("lan", "duel round " + (won ? "won" : "lost") + " " + mine + "-" + theirs);
    }

    private static void refill(PlayerShip ps) {
        ps.life = ps.maxLife;
        ps.lifeInPourc = 100.0f;
    }

    /**
     * ModPrologue.damage (start of PlayerShip.applyDamage, before shields): in a duel the hull stops at 1; reaching it
     * loses the round instead of the ship (no death, no death fee, no respawn).
     */
    static float duelFloor(PlayerShip ps, float amount) {
        if (!pvp || !connected || ps == null || amount <= 0 || !inBay()) return amount;
        float room = ps.life - 1.0f;
        if (amount >= room) {
            lostRound = true;
            return Math.max(0f, room);
        }
        return amount;
    }

    /** ModPrologue.level (LevelBuilder.getLevelByName): the duel bay, asteroid cover only. Null = not a duel. */
    static Level arenaLevel(String name) {
        if (name == null || !pvp || role == NONE || !LevelId.FFA_THE_PLAYER_PAY.levelName.equals(name)) return null;
        try {
            List<Element> els = new ArrayList<Element>();
            fr.testudo.spacecorsair.game.levels.builders.ArenaLevelBuilder.addAsteroids(els);
            els.add(PlayerShip.instance());
            Level l = new Level(LevelId.FFA_THE_PLAYER_PAY, els, fr.testudo.spacecorsair.game.levels.LevelAnimator.NOP);
            l.musicResourceId = 0x7f06002d;   // the arena combat track
            l.backGroundImage = fr.testudo.spacecorsair.display.Background.BackImage.random();
            ModDev.ev("lan", "duel bay built, elements " + els.size());
            return l;
        } catch (Throwable t) {
            ModDev.ev("lan", "duel bay failed " + t);
            return null;
        }
    }

    // ------------------------------------------------------------------ JVM test access (work/dtest V49)
    static int queueSizeOf(RenderQueue q) throws Exception { refl(); return fQSize.getInt(q); }

    static int captureForTest(RenderQueue q, int from, int to, int sf, int st, float ox, float oy, DataOutputStream o) throws Exception {
        refl();
        return capture(q, from, to, sf, st, ox, oy, o, MAX_REMOTE);
    }

    static Rec[] readRecsForTest(byte[] b, int n) throws IOException { return readRecs(new DataInputStream(new java.io.ByteArrayInputStream(b)), n); }

    static void defineForTest(int id, Texture t) { synchronized (defIn) { defIn.put(id, "R" + t.resource); texIn.put(id, t); } }

    static void replayForTest(Rec[] r, int n, float ox, float oy) { replay(r, n, ox, oy); }

    static void writeFieldForTest(DataOutputStream o, Field f, Object p) throws Exception { writeField(o, f, p); }

    static void readFieldForTest(DataInputStream in, Field f, Object p) throws Exception { readField(in, f, p); }

    // ------------------------------------------------------------------ UI (station toolbar button)
    static String buttonLabel() {
        if (!connected && role == NONE) return ModLang.tr("LAN co-op");
        return ModLang.tr("LAN co-op") + (connected ? " *" : " ...");
    }

    static void showMenu(final Activity a) {
        try {
            String msg;
            if (connected) msg = (role == HOST ? ModLang.tr("You are hosting. Your friend plays in your sector.") : ModLang.tr("You joined a friend's game. You follow the host between sectors."))
                + "\n\n" + ModLang.tr("PvP duel: both ships go to the old multiplayer bay and fight rounds. A ship stops at 1 hull and loses the round; nobody dies or pays a death fee. Undock to start.")
                + (pvp ? "\n\n" + ModLang.tr("Duel score") + " " + hostWins + " - " + guestWins : "");
            else if (role == HOST) msg = status + "\n\n" + ModLang.tr("Your address:") + " " + myAddresses();
            else msg = ModLang.tr("Play together on the same Wi-Fi, or with one phone's hotspot. One phone hosts, the other joins. The host's game runs the sector; the guest keeps its own ship, cargo and save, and shares the host's XP.")
                + (status.length() > 0 ? "\n\n" + status : "");
            AlertDialog.Builder b = new AlertDialog.Builder(a).setTitle(ModLang.tr("LAN co-op")).setMessage(msg);
            if (connected || role != NONE) {
                b.setPositiveButton(ModLang.tr("Disconnect"), new DialogInterface.OnClickListener() {
                    public void onClick(DialogInterface d, int w) { stop(); }
                });
                if (connected && role == HOST) {
                    b.setNeutralButton(pvpWanted ? ModLang.tr("End duel") : ModLang.tr("PvP duel"), new DialogInterface.OnClickListener() {
                        public void onClick(DialogInterface d, int w) { duel(!pvpWanted); }
                    });
                }
                b.setNegativeButton(ModLang.tr("Close"), null);
            } else {
                b.setPositiveButton(ModLang.tr("Host"), new DialogInterface.OnClickListener() {
                    public void onClick(DialogInterface d, int w) { host(); showMenu(a); }
                });
                b.setNeutralButton(ModLang.tr("Join"), new DialogInterface.OnClickListener() {
                    public void onClick(DialogInterface d, int w) { findHosts(a); }
                });
                b.setNegativeButton(ModLang.tr("Close"), null);
            }
            b.show();
        } catch (Throwable t) {
            // no dialog
        }
    }

    private static void findHosts(final Activity a) {
        final AlertDialog wait = new AlertDialog.Builder(a).setTitle(ModLang.tr("LAN co-op")).setMessage(ModLang.tr("Looking for games on this network...")).show();
        new Thread(new Runnable() {
            public void run() {
                final List<String> found = scan(4000);
                a.runOnUiThread(new Runnable() {
                    public void run() {
                        try { wait.dismiss(); } catch (Throwable t) { /* gone */ }
                        pickHost(a, found);
                    }
                });
            }
        }, "lan-scan").start();
    }

    private static void pickHost(final Activity a, final List<String> found) {
        final EditText ip = new EditText(a);
        ip.setHint("192.168.1.10");
        ip.setSingleLine(true);
        AlertDialog.Builder b = new AlertDialog.Builder(a).setTitle(ModLang.tr("Join a game"));
        if (!found.isEmpty()) {
            final String[] items = found.toArray(new String[found.size()]);
            b.setItems(items, new DialogInterface.OnClickListener() {
                public void onClick(DialogInterface d, int w) { connectTo(a, items[w].split(" ")[0]); }
            });
            b.setNegativeButton(ModLang.tr("Type address"), new DialogInterface.OnClickListener() {
                public void onClick(DialogInterface d, int w) { pickHost(a, Collections.<String>emptyList()); }
            });
        } else {
            b.setMessage(ModLang.tr("No game found. Type the host's address (shown on the host's LAN co-op screen):"));
            b.setView(ip);
            b.setPositiveButton(ModLang.tr("Join"), new DialogInterface.OnClickListener() {
                public void onClick(DialogInterface d, int w) { connectTo(a, ip.getText().toString().trim()); }
            });
            b.setNegativeButton(ModLang.tr("Close"), null);
        }
        b.show();
    }

    private static void connectTo(final Activity a, final String addr) {
        if (addr.length() == 0) return;
        new Thread(new Runnable() {
            public void run() {
                join(addr);
                a.runOnUiThread(new Runnable() { public void run() { showMenu(a); } });
            }
        }, "lan-join").start();
    }
}
