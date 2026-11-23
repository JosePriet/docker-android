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
import fr.testudo.spacecorsair.display.hud.InfoBar;
import fr.testudo.spacecorsair.display.hud.InfoBarEnnemis;
import fr.testudo.spacecorsair.display.hud.Radar;
import fr.testudo.spacecorsair.business.mission.Mission;
import fr.testudo.spacecorsair.business.mission.engine.AlreadyCompletedEngine;
import fr.testudo.spacecorsair.business.world.RadarDrawType;
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
 * <li>XP is shared: every point the host earns is added to the guest. Loot: each player rolls its own drops for every
 * kill (v45; owner 2026-11-18: co-op only, never in a duel). Credits stay with each player.</li>
 * <li>Local rooms (owner 2026-11-18): public, or private with a 4-character code the guest must type (like internet games).</li>
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
    /** The current or starting link runs over the internet (ModNet), not the local network. */
    static volatile boolean internet;

    /** SPEC 4: a guest of an internet game pays no death fee. */
    static boolean guestFeeFree() { return internet && connected && role == GUEST && !solo; }
    static volatile boolean connected;
    static volatile String status = "";

    private static final String HELLO = "SCLAN2";   // v45: + version, nickname, country, and a host reply byte
    static final int MAX_MSG = 256 * 1024;
    private static final int OK = 0, DECLINED = 1, VERSION = 2, KICKED = 3, BADCODE = 4, FILES = 5;   // FILES (owner 2026-11-18, spec item 6): same version, different game files   // owner 2026-11-18: BADCODE = a private local room, code missing or wrong
    private static final int MSG_DEF = 1, MSG_FRAME = 2, MSG_STATE = 3, MSG_SHOT = 4, MSG_BYE = 5, MSG_Z = 6, MSG_CHAT = 7, MSG_KILL = 8, MSG_PING = 9, MSG_LFRAME = 10, MSG_LSTATE = 11, MSG_STYLE = 12, MSG_DECL = 13,
        MSG_DRONE = 14, MSG_DOOM = 15;   // GPT check BH04 prototype (switch ModLan.extra, off): guest drone launch, guest doomsday ticks   // v45: 6 = a deflated FRAME / STATE (type byte first)
    private static final int R_SPRITE = 0, R_FX = 1, R_TEXT = 2, R_POINT = 3, R_BAR = 4;
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
    private static volatile java.util.concurrent.locks.ReentrantLock writeLock;

    // ------------------------------------------------------------------ owner 2026-11-18: local rooms need the code unless public
    /** The local room: public (anyone on the network may ask to join) or private (the guest types lanCode). */
    static volatile boolean lanPub = true;
    static volatile String lanCode = "";
    private static final java.util.HashMap<String, long[]> badCodes = new java.util.HashMap<String, long[]>();   // address -> {wrong tries, first try ms}
    /** Guest: the address of a private local room that asked for its code (the menu asks for it). */
    static volatile String needCode;
    private static volatile String lastCode = "";

    /** Host UI: opens a local room, public or private (a new random code). */
    static void host(boolean pub) {
        lanPub = pub;
        lanCode = pub ? "" : newCode();
        synchronized (badCodes) { badCodes.clear(); }
        host();
    }

    static String newCode() {
        java.security.SecureRandom r = new java.security.SecureRandom();
        StringBuilder b = new StringBuilder();
        for (int i = 0; i < 4; i++) b.append(ModLanUi.CODE_ALPHABET.charAt(r.nextInt(ModLanUi.CODE_ALPHABET.length())));
        return b.toString();
    }

    /** Host: a private local room checks the guest's code. 5 wrong codes from one address lock it out for 10 minutes. */
    private static int codeCheck(String addr, String code) {
        if (lanPub) return OK;
        long now = System.currentTimeMillis();
        synchronized (badCodes) {
            long[] b = badCodes.get(addr);
            if (b != null && now - b[1] > 600000) { badCodes.remove(addr); b = null; }
            if (b != null && b[0] >= 5) return KICKED;
            if (lanCode.length() == 4 && lanCode.equals(code)) return OK;
            if (code.length() == 0) return BADCODE;   // asked for the code: not a wrong try
            if (b == null) {
                if (badCodes.size() >= 256) {   // cross-check: expired entries go first
                    java.util.Iterator<long[]> it = badCodes.values().iterator();
                    while (it.hasNext()) if (now - it.next()[1] > 600000) it.remove();
                }
                if (badCodes.size() >= 256) return KICKED;   // verify 3: a flood of addresses gets no free tries
                b = new long[]{0, now};
                badCodes.put(addr, b);
            }
            b[0]++;
            return BADCODE;
        }
    }

    /** Guest: the opening of the handshake (tag, version, nickname, country, local room code). */
    private static void writeHello(DataOutputStream ho, String code) throws IOException {
        ho.write(HELLO.getBytes("UTF-8"));
        ho.writeUTF(myVersion()); ho.writeUTF(myNick()); ho.writeUTF(myCountry());
        ho.writeUTF(code == null ? "" : ModLanUi.codeChars(code, 4));
        ho.writeUTF(contentHash());
        ho.flush();
    }

    private static volatile String hashCache;

    /**
     * Spec item 6 (owner 2026-11-18): the first 16 hex digits of the SHA-256 of this install's APK file. Two phones play
     * together only when the files are identical (the version name and build alone do not prove it). "?" = unreadable.
     * About 1 s for the 85 MB APK the first time; warmed when the Multiplayer menu opens.
     */
    static String contentHash() {
        String h = hashCache;
        if (h != null) return h;
        synchronized (ModLan.class) {
            if (hashCache != null) return hashCache;
            String out = "?";
            java.io.InputStream in = null;
            try {
                String path = ObjectRegistry.INSTANCE.game.context.getPackageCodePath();
                java.security.MessageDigest md = java.security.MessageDigest.getInstance("SHA-256");
                in = new java.io.FileInputStream(path);
                byte[] buf = new byte[1 << 16];
                for (int n; (n = in.read(buf)) > 0; ) md.update(buf, 0, n);
                byte[] d = md.digest();
                StringBuilder b = new StringBuilder();
                for (int i = 0; i < 8; i++) b.append(String.format("%02x", d[i] & 0xff));
                out = b.toString();
            } catch (Throwable t) {
                out = "?";
            } finally {
                try { if (in != null) in.close(); } catch (Throwable t) { /* closed */ }
            }
            if (!out.equals("?")) {
                // v45 in-game updates: the active content packs are part of "the same game files"
                String ck = "";
                try { ck = ModContent.chainKey(ObjectRegistry.INSTANCE.game.context); } catch (Throwable t) { ck = ModContent.chainKey(null); }
                if (ck.length() > 0) {
                    try {
                        byte[] d2 = java.security.MessageDigest.getInstance("SHA-256").digest((out + "|" + ModContent.API + "|" + ck).getBytes("UTF-8"));
                        out = ModContent.hex(d2).substring(0, 16);
                    } catch (Throwable t) { out = "?"; }
                }
            }
            if (!out.equals("?")) hashCache = out;   // verify: a failed read is tried again next time
            ModDev.ev("lan", "content hash " + out);
            return out;
        }
    }

    static String filesText() { return ModLang.tr("Same version, but the game files or content updates differ. Both phones need the same APK and the same updates (menu, Updates)."); }

    /** UI: computes the hash off the UI thread so the first handshake does not wait for it. */
    static void warmHash() {
        if (hashCache != null) return;
        new Thread(new Runnable() { public void run() { contentHash(); } }, "lan-hash").start();
    }

    /** Host: starts listening and announcing, in the current room mode (lanPub, lanCode). UI thread. */
    static void host() {
        String tp = ModLobby.testProfileBlock();   // fix list 3B
        if (tp != null) { status = tp; return; }
        ModLobby.leave();
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
                        if (!hello(s, gen)) { try { s.close(); } catch (Throwable t) { /* closed */ } continue; }   // not a guest, wrong version, declined: keep waiting
                        if (gen != linkGen) { s.close(); return; }   // hosting ended while the question was open
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
                DatagramSocket ds = null;
                try {
                    ds = new DatagramSocket();
                    ds.setBroadcast(true);
                    if (gen != linkGen) return;
                    beacon = ds;
                    while (gen == linkGen && !connected) {
                        String name = "Corsair";
                        try { name = ObjectRegistry.INSTANCE.game.currentLevel.id.levelName; } catch (Throwable t) { /* unnamed */ }
                        byte[] b = (HELLO + "|" + myVersion() + "|" + myNick() + "|" + myCountry() + "|" + name + "|" + (pvpRoom ? 1 : 0) + "|" + (lanPub ? 1 : 0)).getBytes("UTF-8");
                        for (InetAddress a : broadcasts()) {
                            try { ds.send(new DatagramPacket(b, b.length, a, PORT)); } catch (Throwable t) { /* next address */ }
                        }
                        Thread.sleep(1000);
                    }
                } catch (Throwable t) {
                    // discovery is optional: the guest can type the address
                } finally {
                    if (ds != null) ds.close();   // its own socket, never a newer session's
                }
            }
        }, "lan-beacon");
        beaconT.start();
    }

    /** Guest: connects to a host address. Any thread but the UI one. */
    /** ModLobby: hosting through the lobby service. No listener here: joining players arrive as ModNet links. */
    static void hostNet() {
        stop();
        internet = true;
        role = HOST;
        ++linkGen;
        status = ModLang.tr("Waiting for a player to join...");
    }

    /** ModLobby (its thread): a guest's link is up. Runs the handshake (version, Accept / Decline). True = playing. */
    static boolean acceptNet(Socket s, String install) {
        try {
            long gen = linkGen;
            if (role != HOST || !internet || connected) return false;
            netJoinId = install == null ? "" : install;
            if (!hello(s, gen) || gen != linkGen) return false;
            netPeerId = netJoinId;
            begin(s, gen);
            return true;
        } catch (Throwable t) {
            return false;
        }
    }

    /** ModLobby (its thread): the path to an internet host is up. Runs the guest's handshake. True = playing. */
    static boolean joinNet(Socket s) {
        stop();
        internet = true;
        role = GUEST;
        final long gen = ++linkGen;
        status = ModLang.tr("Waiting for the host to accept...");
        try {
            DataOutputStream ho = new DataOutputStream(s.getOutputStream());
            writeHello(ho, "");   // internet games: the lobby checked the code
            s.setSoTimeout(35000);
            DataInputStream hi = new DataInputStream(s.getInputStream());
            int r = hi.readUnsignedByte();
            String hv = r == VERSION ? readShortUTF(hi, 64) : "";
            if (gen != linkGen) return false;
            if (r != OK) {
                stop();
                status = r == VERSION ? ModLang.tr("Different game versions. Your friend has") + " " + clean(hv, 40) + ", " + ModLang.tr("you have") + " " + myVersion() + "."
                    : r == KICKED ? ModLang.tr("The host removed you from this game.")
                    : r == FILES ? filesText() : ModLang.tr("The host declined.");
                return false;
            }
            s.setSoTimeout(5000);
            readPeerId(hi);
            s.setSoTimeout(0);
            begin(s, gen);
            return true;
        } catch (Throwable t) {
            if (gen == linkGen) { stop(); status = ModLang.tr("The host did not answer."); }
            return false;
        }
    }

    private static volatile String netJoinId = "", netPeerId = "", rejoinId = "";

    static void join(String ip) { join(ip, ""); }

    /** Guest: joins a local host; code = the private room's code ("" for a public room). */
    static void join(String ip, String code) {
        needCode = null;
        String tp = ModLobby.testProfileBlock();   // fix list 3B
        if (tp != null) { status = tp; return; }
        ModLobby.leave();
        stop();
        role = GUEST;
        final long gen = ++linkGen;
        status = ModLang.tr("Connecting...");
        try {
            Socket s = new Socket();
            s.connect(new InetSocketAddress(ip, PORT), 5000);
            if (gen != linkGen) { s.close(); return; }
            DataOutputStream ho = new DataOutputStream(s.getOutputStream());
            writeHello(ho, code);
            status = ModLang.tr("Waiting for the host to accept...");
            s.setSoTimeout(35000);
            DataInputStream hi = new DataInputStream(s.getInputStream());
            int r = hi.readUnsignedByte();
            String hv = r == VERSION ? hi.readUTF() : "";
            s.setSoTimeout(0);
            if (gen != linkGen) { s.close(); return; }
            if (r != OK) {
                s.close();
                noRejoin();
                stop();
                status = r == VERSION ? ModLang.tr("Different game versions. Your friend has") + " " + clean(hv, 40) + ", " + ModLang.tr("you have") + " " + myVersion() + "."
                    : r == KICKED ? ModLang.tr("The host removed you from this game.")
                    : r == FILES ? filesText()
                    : r == BADCODE ? (code.length() == 0 ? ModLang.tr("This local game is private. Type its 4-character code.") : ModLang.tr("Wrong code."))
                    : ModLang.tr("The host declined.");
                if (r == BADCODE) needCode = ip;
                ModDev.ev("lan", "join refused " + r);
                return;
            }
            s.setSoTimeout(5000);
            readPeerId(hi);
            s.setSoTimeout(0);
            lastAddr = ip;
            lastCode = code;
            begin(s, gen);
        } catch (Throwable t) {
            if (gen == linkGen) fail(t);   // a join the player already left must not end what came after it
        }
    }

    // ------------------------------------------------------------------ v45: identity, version lock, accept / kick, reconnect
    private static String verCache;

    /** The app's version name (same on both phones or the join is refused). */
    static String myVersion() {
        if (verCache != null) return verCache;
        try {
            android.content.Context c = ObjectRegistry.INSTANCE.game.context;
            android.content.pm.PackageInfo pi = c.getPackageManager().getPackageInfo(c.getPackageName(), 0);
            verCache = pi.versionName + " #" + pi.versionCode;   // name and build: two builds under one release name do not mix
        } catch (Throwable t) {
            return "?";
        }
        return verCache;
    }

    static String myNick() { return ModLanUi.nick(); }

    static String myCountry() { return ModLanUi.country(); }

    /** After the OK byte the host names itself; the guest keeps it for the name tag and the chat. */
    private static void readPeerId(DataInputStream in) throws IOException {
        peerNick = ModLanUi.safeNick(clean(readShortUTF(in, 64), 12));
        peerCtry = ModLanUi.safeCountry(clean(readShortUTF(in, 16), 3));
    }

    static String peerLabel() { return ModLanUi.label((peerNick.length() > 0 ? peerNick : ModLang.tr("Player")) + (internet && ModLobby.peerDev ? " [DEV]" : ""), peerCtry); }   // audit D1: DEV tag

    // ------------------------------------------------------------------ v45: chat (reliable, one line a second)
    private static long chatAt;

    /** UI thread: false = not sent (no link, or too soon after the last line). */
    static boolean sendChat(String text) {
        long now = System.currentTimeMillis();
        if (!connected || now - chatAt < 1000) return false;
        chatAt = now;
        try {
            ByteArrayOutputStream bo = new ByteArrayOutputStream();
            new DataOutputStream(bo).writeUTF(clean(text, 120));
            sendReliable(MSG_CHAT, bo);
            return true;
        } catch (IOException e) {
            return false;
        }
    }

    /** Printable text of at most max characters (peer-supplied strings never reach the screen raw). */
    static String clean(String v, int max) {
        if (v == null) return "";
        StringBuilder sb = new StringBuilder();
        for (int i = 0; i < v.length() && sb.length() < max; i++) {
            char ch = v.charAt(i);
            if (ch >= 32 && ch != 127 && !Character.isISOControl(ch)) sb.append(ch);
        }
        return sb.toString();
    }

    private static final java.util.HashSet<String> kicked = new java.util.HashSet<String>();
    private static volatile String peerAddr = "";
    static volatile String peerNick = "", peerCtry = "";
    private static volatile long chatIn;
    private static volatile String rejoinAddr;
    private static volatile long rejoinUntil;
    private static volatile String lastAddr;
    private static volatile boolean byeSeen, autoAccept;
    private static volatile int decision;          // 0 waiting, 1 accept, 2 decline
    private static volatile String pendingWho;
    private static volatile Activity lastAct;

    private static void noRejoin() { lastAddr = null; lastCode = ""; rejoinAddr = null; rejoinId = ""; rejoinUntil = 0; }

    /** Host: asks the player (dialog on the current screen; also offered in the LAN co-op menu). 25 s without an answer declines. */
    private static boolean askAccept(final String who, long gen) {
        final int ask = ++askId;
        decision = 0;
        pendingWho = who;
        try {
            Activity a = ModComms.activity();
            if (a == null || a.isFinishing()) a = lastAct;
            final Activity fa = a;
            if (fa != null && !fa.isFinishing()) fa.runOnUiThread(new Runnable() { public void run() { acceptDialog(fa, who, ask); } });
        } catch (Throwable t) {
            // the menu still offers it
        }
        joinAsk = true;
        long end = System.currentTimeMillis() + 25000;
        try {
            while (decision == 0 && gen == linkGen && System.currentTimeMillis() < end) Thread.sleep(100);
        } catch (InterruptedException e) {
            // declined
        }
        pendingWho = null;
        return decision == 1 && gen == linkGen;
    }

    private static volatile int askId;

    /** ask = the question this dialog belongs to; a dialog left over from an earlier joiner answers nothing. */
    private static void acceptDialog(Activity a, String who, final int ask) {
        try {
            new AlertDialog.Builder(a).setTitle(ModLang.tr("LAN co-op")).setMessage(who + " " + ModLang.tr("wants to join your game."))
                .setPositiveButton(ModLang.tr("Accept"), new DialogInterface.OnClickListener() { public void onClick(DialogInterface d, int w) { if (decision == 0 && ask == askId) decision = 1; } })
                .setNegativeButton(ModLang.tr("Decline"), new DialogInterface.OnClickListener() { public void onClick(DialogInterface d, int w) { if (decision == 0 && ask == askId) decision = 2; } })
                .show();
        } catch (Throwable t) {
            // no dialog on this screen
        }
    }

    /** Host UI: removes the guest; that phone cannot rejoin until the game restarts. */
    static void kick() {
        String a = peerAddr;
        boolean net = internet;
        if (!net && a.length() > 0) synchronized (kicked) { kicked.add(a); }
        ModDev.ev("lan", "kick " + (net ? "internet guest" : a));
        noRejoin();
        if (net) ModLobby.kicked();
        stop();
        if (!net) host();
        else if (ModLobby.hosting) hostNet();
    }

    /** Game thread: a peer broke the rules of the link (bad data, impossible values). The session ends. */
    private static void violation(String why) {
        ModDev.ev("lan", "violation: " + why);
        if (role == HOST) kick();
        else { noRejoin(); stop(); status = ModLang.tr("Co-op ended: the other game sent invalid data."); lost = true; }
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
                if (!s.startsWith(HELLO + "|")) continue;
                String[] f = s.split("\\|", -1);   // tag, version, nickname, country, sector, pvp
                if (f.length < 6) continue;
                String line = p.getAddress().getHostAddress() + "  " + ModLanUi.label(ModLanUi.safeNick(clean(f[2], 12)), ModLanUi.safeCountry(clean(f[3], 3)))
                    + "  \u00b7  " + clean(f[4], 40) + (f[5].equals("1") ? "  \u00b7  PvP" : "")
                    + "  \u00b7  " + (f.length > 6 && f[6].equals("1") ? ModLang.tr("Public") : privTag())
                    + (clean(f[1], 40).equals(myVersion()) ? "" : "  \u00b7  " + ModLang.tr("other version"));
                if (!out.contains(line)) out.add(line);
            }
        } catch (Throwable t) {
            // nothing found
        } finally {
            if (ds != null) ds.close();
        }
        return out;
    }

    /** The scan-row tag of a private local room (a tap on such a row asks for the code first). */
    static String privTag() { return ModLang.tr("Private (code)"); }

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

    /** Host: HELLO tag, version, nickname, country (3 s); then the reply byte. False = not let in. */
    private static boolean hello(Socket s, long gen) {
        try {
            s.setSoTimeout(3000);
            DataInputStream in = new DataInputStream(s.getInputStream());
            DataOutputStream out = new DataOutputStream(s.getOutputStream());
            byte[] b = new byte[HELLO.length()];
            in.readFully(b);
            if (!HELLO.equals(new String(b, "UTF-8"))) return false;   // also the v44 "SCLAN1" guests: they see the link close
            String ver = clean(readShortUTF(in, 64), 40), nick = clean(readShortUTF(in, 64), 12), ctry = clean(readShortUTF(in, 16), 3);
            s.setSoTimeout(0);
            String addr = s.getInetAddress() != null ? s.getInetAddress().getHostAddress() : "";
            boolean out3;
            synchronized (kicked) { out3 = !(s instanceof ModNet.Link) && kicked.contains(addr); }   // internet kicks go by install id at the lobby service
            if (out3) { out.writeByte(KICKED); out.flush(); return false; }
            if (!ver.equals(myVersion())) { out.writeByte(VERSION); out.writeUTF(myVersion()); out.flush(); ModDev.ev("lan", "refused version " + ver); return false; }
            s.setSoTimeout(3000);
            String code = ModLanUi.codeChars(clean(readShortUTF(in, 8), 8), 4);   // owner 2026-11-18: the local room code
            String hash = clean(readShortUTF(in, 32), 16);   // spec item 6: the guest's game files
            s.setSoTimeout(0);
            if (!(s instanceof ModNet.Link)) {   // internet games: the lobby service already checked the code
                int cc = codeCheck(addr, code);
                if (cc != OK) { out.writeByte(cc); out.flush(); ModDev.ev("lan", "room code refused " + addr); return false; }
            }
            String mine = contentHash();   // verify: after the room code (a wrong code counts toward the lockout); unreadable files never match
            if (mine.equals("?") || !hash.equals(mine)) { out.writeByte(FILES); out.flush(); ModDev.ev("lan", "refused files " + hash); return false; }
            boolean back = (s instanceof ModNet.Link ? rejoinId.length() > 0 && rejoinId.equals(netJoinId) : addr.equals(rejoinAddr)) && System.currentTimeMillis() < rejoinUntil;   // the same phone reconnecting
            String who = ModLanUi.label(ModLanUi.safeNick(nick), ModLanUi.safeCountry(ctry));
            if (!back && !autoAccept && !askAccept(who, gen)) { out.writeByte(DECLINED); out.flush(); ModDev.ev("lan", "declined " + addr); return false; }
            out.writeByte(OK);
            out.writeUTF(myNick()); out.writeUTF(myCountry());
            out.flush();
            peerAddr = addr;
            peerNick = ModLanUi.safeNick(nick);
            peerCtry = ModLanUi.safeCountry(ctry);
            return true;
        } catch (Throwable t) {
            return false;
        }
    }

    /** readUTF with a length limit (a stranger's string is never read unbounded). */
    private static String readShortUTF(DataInputStream in, int max) throws IOException {
        int n = in.readUnsignedShort();
        if (n > max * 3) throw new IOException("string too long");
        byte[] b = new byte[n + 2];
        b[0] = (byte) (n >>> 8); b[1] = (byte) n;
        in.readFully(b, 2, n);
        return new DataInputStream(new java.io.ByteArrayInputStream(b)).readUTF();
    }

    private static void begin(final Socket s, final long gen) throws IOException {
        s.setTcpNoDelay(true);
        s.setSendBufferSize(32 * 1024);   // v45: a small kernel queue, so stale frames are dropped here (latest-only) instead of piling up
        s.setReceiveBufferSize(256 * 1024);
        s.setKeepAlive(true);
        s.setSoTimeout(10000);   // the writer pings every 2 s even while the game is paused: 10 s of silence is a dead link
        final java.util.concurrent.locks.ReentrantLock wl = new java.util.concurrent.locks.ReentrantLock();
        writeLock = wl;
        byeSeen = false;
        strikes = 0;
        limits = null; beganAt = System.currentTimeMillis(); firstStateAt = 0; hullFlagged = false; declSent = null; declSentAt = 0; declAt = 0; ModLanCheck.reset();
        ModLanSync.on = internet || ModDev.testValue("corsair_lean") != null;   // the small stream: internet links (and the emulator test switch)
        sock = s;
        synchronized (outLock) { reliable.clear(); latest = null; }
        resetTables();
        connected = true;
        status = ModLang.tr("Co-op connected");
        ModDev.ev("lan", "connected role=" + role + " peer=" + s.getInetAddress());
        announce = true;
        final DataInputStream in = new DataInputStream(new java.io.BufferedInputStream(s.getInputStream(), 65536));
        final DataOutputStream out = new DataOutputStream(new java.io.BufferedOutputStream(s.getOutputStream(), 65536));
        final ModNet.Link nl = s instanceof ModNet.Link ? (ModNet.Link) s : null;   // internet link: whole messages, frames never resent
        readerT = new Thread(new Runnable() {
            public void run() {
                try {
                    while (gen == linkGen) {
                        int type, len;
                        byte[] b;
                        if (nl != null) {
                            byte[] m;
                            try { m = nl.next(MAX_MSG); } catch (IOException e) { if (nl.finSeen()) byeSeen = true; throw e; }
                            type = m[0] & 255;
                            len = m.length - 5;
                            b = java.util.Arrays.copyOfRange(m, 5, m.length);
                        } else {
                            type = in.readUnsignedByte();
                            len = in.readInt();
                            if (len < 0 || len > MAX_MSG) throw new IOException("bad length " + len);
                            b = new byte[len];
                            in.readFully(b);
                        }
                        bytesIn += len + 5;
                        if (type == MSG_BYE) { byeSeen = true; throw new IOException("bye"); }
                        try {
                            receive(type, b);
                        } catch (IOException e) {
                            throw e;
                        } catch (Throwable e) {
                            throw new IOException("bad message " + type + " " + e);   // never a crash: the link ends
                        }
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
                            long idle = System.currentTimeMillis();
                            while (reliable.isEmpty() && latest == null && gen == linkGen) {
                                outLock.wait(200);
                                if (System.currentTimeMillis() - idle >= 2000) { reliable.add(new byte[]{MSG_PING, 0, 0, 0, 0}); break; }
                            }
                            rel = reliable.toArray(new byte[reliable.size()][]);
                            reliable.clear();
                            frame = latest;
                            latest = null;
                        }
                        wl.lock();   // whole messages only: the goodbye of stop() never lands inside a frame
                        try {
                            if (gen != linkGen) break;
                            for (byte[] m : rel) { out.write(m); bytesOut += m.length; }   // definitions and shots go out before the frame that uses them
                            if (frame != null && nl == null) out.write(frame);
                            out.flush();
                            if (frame != null) { if (nl != null) nl.sendLatest(frame); bytesOut += frame.length; }
                        } finally {
                            wl.unlock();
                        }
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
        int wasRole = role;
        ModDev.ev("lan", "link failed " + t);
        final String back = lastAddr;
        String peer = peerAddr;
        boolean auto = autoAccept;
        boolean net = internet;
        String netPeer = netPeerId;
        stop();
        status = ModLang.tr("Co-op link lost") + (t != null && t.getMessage() != null ? ": " + t.getMessage() : "");
        if (was) lost = true;
        if (net) {   // internet game: the lobby stays open for the next player; a dropped guest gets 30 s to come back unasked
            if (wasRole == HOST && ModLobby.hosting) {
                hostNet();
                if (was && !byeSeen) { rejoinId = netPeer; rejoinUntil = System.currentTimeMillis() + 30000; }
            } else if (wasRole == GUEST && was && !byeSeen) {
                status = ModLang.tr("Co-op link lost. Reconnecting...");
                ModLobby.rejoin();
            }
            return;
        }
        if (!was || byeSeen) return;
        // v45: a dropped link (not a goodbye) is retried for 30 s
        if (wasRole == HOST) {
            rejoinAddr = peer;
            rejoinUntil = System.currentTimeMillis() + 30000;
            host();
            autoAccept = auto;
            status = ModLang.tr("Co-op link lost. Waiting 30 s for your friend to reconnect...");
        } else if (wasRole == GUEST && back != null) {
            status = ModLang.tr("Co-op link lost. Reconnecting...");
            final long mark = linkGen;
            new Thread(new Runnable() {
                public void run() {
                    long end = System.currentTimeMillis() + 30000;
                    try {
                        while (System.currentTimeMillis() < end && linkGen == mark) {
                            Thread.sleep(3000);
                            if (linkGen != mark) return;   // the player hosted, joined or disconnected meanwhile
                            if (tryRejoin(back, mark)) return;
                        }
                    } catch (Throwable e) {
                        // gave up
                    }
                    if (linkGen == mark) status = ModLang.tr("Co-op link lost");
                }
            }, "lan-rejoin").start();
        }
    }

    /** Guest: one quiet reconnect attempt; true = linked again. The generation moves only on success. */
    private static boolean tryRejoin(String ip, long mark) {
        Socket s = null;
        try {
            s = new Socket();
            s.connect(new InetSocketAddress(ip, PORT), 2500);
            DataOutputStream ho = new DataOutputStream(s.getOutputStream());
            writeHello(ho, lastCode);
            s.setSoTimeout(5000);
            DataInputStream hi = new DataInputStream(s.getInputStream());
            int r = hi.readUnsignedByte();
            if (r != OK || linkGen != mark) {   // refused, or the player moved on: stop trying
                s.close();
                if (linkGen == mark) status = r == FILES ? filesText() : ModLang.tr("Co-op link lost");
                return true;
            }
            readPeerId(hi);
            s.setSoTimeout(0);
            role = GUEST;
            long gen = ++linkGen;
            lastAddr = ip;
            begin(s, gen);
            ModDev.ev("lan", "reconnected");
            return true;
        } catch (Throwable t) {
            try { if (s != null) s.close(); } catch (Throwable e) { /* closed */ }
            return false;
        }
    }

    /** Ends the session on both sides. */
    static volatile ModLanCheck.Decl lastDecl;

    static void stop() {
        if (internet && role == HOST) {   // audit D4: the session's anonymous sample goes to the lobby service
            final String[] s = ModLobby.withLobby(ModLanCheck.sample(lastDecl, limits, pvp || pvpRoom));
            if (s != null) new Thread(new Runnable() { public void run() { ModLobby.call("POST", "/sample", s); } }, "lobby-sample").start();
        }
        lastDecl = null;
        if (role == GUEST && connected && !solo) { exitReload = true; exitReloadAt = System.currentTimeMillis() + 31000; }   // GPT check BH03: the emptied sector comes back once no reconnect is pending
        linkGen++;
        final Socket old = sock;
        final java.util.concurrent.locks.ReentrantLock wlOld = writeLock;
        final boolean bye = connected;
        connected = false;
        role = NONE;
        internet = false;
        status = "";
        if (old != null) {
            new Thread(new Runnable() {   // never on the UI thread (no network there); the writer thread has stopped
                public void run() {
                    // the goodbye waits at most 1 s for the writer (a dead peer can block it); the close below always runs and frees it
                    boolean got = false;
                    try {
                        got = bye && wlOld != null && wlOld.tryLock(1, java.util.concurrent.TimeUnit.SECONDS);
                        if (got) { old.getOutputStream().write(new byte[]{MSG_BYE, 0, 0, 0, 0}); old.getOutputStream().flush(); }
                    } catch (Throwable t) {
                        // closing anyway
                    } finally {
                        if (got) wlOld.unlock();
                    }
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
        seenRound = 0;
        defeatRound = -1;
        doomShotId = Integer.MIN_VALUE; doomShotAt = 0; doomTicksShot = 0; droneLaunchAt = 0; askAt = 0;   // BH04 prototype: per session
        lostRound = false;   // GPT check BH07: a round lost between frames does not carry into the next duel
        restore = false;
        solo = false;
        marksOut = null;
        autoAccept = false;
        decision = 2;   // a pending join question is void
        peerAddr = "";
        ModLanUi.clearChat();
    }

    private static void sendReliable(int type, ByteArrayOutputStream body) {
        byte[] m = frameBytes(type, body);
        synchronized (outLock) { reliable.add(m); outLock.notifyAll(); }
    }

    private static void sendLatest(int type, ByteArrayOutputStream body) {
        byte[] m = packed(type, body.toByteArray());
        if (m.length - 5 > MAX_MSG || body.size() > MAX_MSG) { flags++; return; }   // larger than the receiver takes (packed or unpacked): skipped
        synchronized (outLock) { latest = m; outLock.notifyAll(); }
    }

    // v45 stream diet: frames go out deflated (the render list repeats itself a lot), at most SEND_HZ times a second
    static final int SEND_HZ = 30;
    private static final java.util.zip.Deflater zOut = new java.util.zip.Deflater(1);
    private static byte[] zBuf = new byte[65536];
    static volatile long rawOut;

    /** Sender thread of frames (one at a time): [MSG_Z][len][type][raw length][deflated body], or the plain message when that is smaller. */
    private static byte[] packed(int type, byte[] raw) {
        rawOut += raw.length + 5;
        if (raw.length >= 256) {
            synchronized (zOut) {
                zOut.reset();
                zOut.setInput(raw);
                zOut.finish();
                if (zBuf.length < raw.length) zBuf = new byte[raw.length + 1024];
                int n = zOut.deflate(zBuf, 0, raw.length - 16);   // only worth it when smaller
                if (zOut.finished()) {
                    byte[] m = new byte[10 + n];
                    int len = 5 + n;
                    m[0] = (byte) MSG_Z;
                    m[1] = (byte) (len >>> 24); m[2] = (byte) (len >>> 16); m[3] = (byte) (len >>> 8); m[4] = (byte) len;
                    m[5] = (byte) type;
                    m[6] = (byte) (raw.length >>> 24); m[7] = (byte) (raw.length >>> 16); m[8] = (byte) (raw.length >>> 8); m[9] = (byte) raw.length;
                    System.arraycopy(zBuf, 0, m, 10, n);
                    return m;
                }
            }
        }
        byte[] m = new byte[5 + raw.length];
        m[0] = (byte) type;
        m[1] = (byte) (raw.length >>> 24); m[2] = (byte) (raw.length >>> 16); m[3] = (byte) (raw.length >>> 8); m[4] = (byte) raw.length;
        System.arraycopy(raw, 0, m, 5, raw.length);
        return m;
    }

    /** Reader thread: the message inside a MSG_Z body. The stated size is bounded before anything is allocated. */
    private static void unpack(byte[] b) throws IOException {
        if (b.length < 5) throw new IOException("short packed message");
        int type = b[0] & 255;
        int n = ((b[1] & 255) << 24) | ((b[2] & 255) << 16) | ((b[3] & 255) << 8) | (b[4] & 255);
        if ((type != MSG_FRAME && type != MSG_STATE && type != MSG_LFRAME && type != MSG_LSTATE) || n < 0 || n > MAX_MSG) throw new IOException("bad packed message");
        byte[] raw = new byte[n];
        java.util.zip.Inflater z = new java.util.zip.Inflater();
        try {
            z.setInput(b, 5, b.length - 5);
            int got = z.inflate(raw);
            if (got != n || !z.finished()) throw new IOException("bad packed size");
        } catch (java.util.zip.DataFormatException e) {
            throw new IOException("bad packed data");
        } finally {
            z.end();
        }
        receive(type, raw);
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
        ModLanSync.reset();
        slowAt = 0; marksAt = 0; slowLast = null; leanLevel = ""; leanDmg = 0; leanXp = 0; leanMission = ""; leanDone = false; leanMarks = null; leanMarksN = 0;
        synchronized (defOut) { defOut.clear(); }
        synchronized (defIn) { defIn.clear(); texIn.clear(); }
        synchronized (inLock) { inFrame = null; inState = null; pendingDecl = null; inShots.clear(); inDrones.clear(); inDooms.clear(); }
        dmgSent = 0; dmgSeen = 0; xpSent = 0; xpSeen = 0; xpBase = -1; dmgBase = -1;
        capAt = 0; moveAt = 0; moveHold = false; roundDmg = 0; jumps = 0; jumpWin = 0; moveSeen = 0; moveGrace = 0; graceAt = 0; obsSpeed = 0;
        synchronized (inLock) { inKills.clear(); }
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
    private static Field fType, fPos, fSpin, fA, fR, fG, fB, fZoom, fBack, fText, fTSize, fPSize, fQSize, fQIdx, fInfo;
    private static boolean reflOk;

    private static boolean refl() {
        if (reflOk) return true;
        try {
            Class<?> c = RenderElement.class;
            fType = acc(c, "renderType"); fPos = acc(c, "position"); fSpin = acc(c, "spin");
            fA = acc(c, "a"); fR = acc(c, "r"); fG = acc(c, "g"); fB = acc(c, "b");
            fZoom = acc(c, "zoomInsensitive"); fBack = acc(c, "backgroundMode"); fText = acc(c, "text");
            fTSize = acc(c, "textSize"); fPSize = acc(c, "pointSize"); fInfo = acc(c, "infoBar");
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
            if (skipN > 0 && role == HOST && skipped(i)) continue;
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
                if (ModLanSync.on) {
                    ModFx.Sprite s = fx ? (ModFx.Sprite) d : null;
                    // data saver: small glow effects far from the other player are left out (ships, shots and big beams stay)
                    if (fx && ModLanSync.saver && role == HOST && s.additive && s.w < FAR_FX_SIZE && s.h < FAR_FX_SIZE) {
                        InState gs = inState;
                        if (gs != null) { float gx = p.x - gs.x, gy = p.y - gs.y; if (gx * gx + gy * gy > FAR_FX * FAR_FX) { fxDropped++; continue; } }
                    }
                    int fl = fx ? (zoom ? 1 : 0) | (s.additive ? 2 : 0) | (s.flat ? 4 : 0) | (s.repeatT ? 8 : 0) | (s.edgeA != null ? 16 : 0) : (zoom ? 1 : 0);
                    if (ModLanSync.sprite(o, fx, id, p.x - ox, p.y - oy, fSpin.getFloat(re), b255(a), b255(r), b255(g), b255(b), fl,
                        fx ? s.w : d.dimensions.x, fx ? s.h : d.dimensions.y, fx ? s.u0 : 0, fx ? s.v0 : 0, fx ? s.u1 : 1, fx ? s.v1 : 1,
                        fx && s.edgeA != null, fx && s.edgeA != null ? s.edgeA[0] : 0, fx && s.edgeA != null ? s.edgeA[1] : 0)) n++;
                    continue;
                }
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
                if (ModLanSync.on) { if (ModLanSync.text(o, p.x - ox, p.y - oy, b255(a), b255(r), b255(g), b255(b), zoom ? 1 : 0, ts.ordinal(), ModLang.forWire(txt))) n++; continue; }
                o.writeByte(R_TEXT);
                o.writeFloat(p.x - ox); o.writeFloat(p.y - oy);
                o.writeByte(b255(a)); o.writeByte(b255(r)); o.writeByte(b255(g)); o.writeByte(b255(b));
                o.writeByte(zoom ? 1 : 0);
                o.writeByte(ts.ordinal());
                o.writeUTF(ModLang.forWire(txt));   // audit C8
                n++;
            } else if (type == RenderElementType.POINT) {
                if (ModLanSync.on) { if (ModLanSync.point(o, p.x - ox, p.y - oy, b255(a), b255(r), b255(g), b255(b), fPSize.getFloat(re))) n++; continue; }
                o.writeByte(R_POINT);
                o.writeFloat(p.x - ox); o.writeFloat(p.y - oy);
                o.writeByte(b255(a)); o.writeByte(b255(r)); o.writeByte(b255(g)); o.writeByte(b255(b));
                o.writeFloat(fPSize.getFloat(re));
                n++;
            } else if (type == RenderElementType.INFOBAR) {   // v44: enemy life / shield bars
                Object ib = fInfo.get(re);
                if (!(ib instanceof InfoBarEnnemis)) continue;   // HUD bars stay local
                InfoBar bar = (InfoBar) ib;
                if (ModLanSync.on) {
                    int[] c = barCol;
                    c[0] = b255(bar.fillA); c[1] = b255(bar.fillR); c[2] = b255(bar.fillG); c[3] = b255(bar.fillB);
                    c[4] = b255(bar.extA); c[5] = b255(bar.extR); c[6] = b255(bar.extG); c[7] = b255(bar.extB);
                    if (ModLanSync.bar(o, p.x - ox, p.y - oy, bar.centerPosition.x, bar.centerPosition.y, bar.witdh, bar.height, bar.pourcentageValue, c)) n++;
                    continue;
                }
                o.writeByte(R_BAR);
                o.writeFloat(p.x - ox); o.writeFloat(p.y - oy);
                o.writeFloat(bar.centerPosition.x); o.writeFloat(bar.centerPosition.y);
                o.writeFloat(bar.witdh); o.writeFloat(bar.height); o.writeFloat(bar.pourcentageValue);
                o.writeByte(b255(bar.fillA)); o.writeByte(b255(bar.fillR)); o.writeByte(b255(bar.fillG)); o.writeByte(b255(bar.fillB));
                o.writeByte(b255(bar.extA)); o.writeByte(b255(bar.extR)); o.writeByte(b255(bar.extG)); o.writeByte(b255(bar.extB));
                n++;
            }
        }
        return n;
    }

    private static final int[] barCol = new int[8];
    // small-format stream state. Sender: when the slow values and the marks last went out. Receiver: the last ones seen.
    private static long slowAt, marksAt;
    private static byte[] slowLast;
    private static String leanLevel = "", leanMission = "";
    private static float leanDmg;
    private static long leanXp;
    private static boolean leanDone, leanPvp;
    private static int leanRound, leanHw, leanGw, leanMarksN;
    private static byte[] leanMarks;

    // ------------------------------------------------------------------ received data
    static final class Rec {
        int kind, id, flags, tsize;
        float x, y, spin, a, r, g, b, w, h, u0, v0, u1, v1, e0, e1, psize, xa, xr, xg, xb;
        String text;
        // small-format stream: true place and heading (x, y, spin are the drawn ones), pairing with the previous frame
        float tx, ty, ts;
        int key, ord;
        Rec from;
    }

    static final class InFrame {
        String level;
        float hx, hy, dmg;
        long xp;
        boolean pvp;
        int round, hostWins, guestWins;
        Rec[] recs;
        int n;
        String mission;
        boolean missionDone;
        byte[] marks;
        int marksN;
        boolean lean;
        long at, span;
        float phx, phy;
        HashMap<Long, Integer> idx;
        ModLanSync.RecordIndex recordIndex;

        void indexRecords() {
            if (ModFx.PERF_FRAME_INDEX) recordIndex = new ModLanSync.RecordIndex(recs, n);
            else idx = ModLanSync.index(recs, n);
        }
    }

    static final class InState {
        boolean alive;
        String level;
        float x, y, vx, vy, spin, life, maxLife, halfW, halfH;
        long at;
        int defeats;
        boolean solo;
        String mission = "";
        Rec[] recs;
        int n;
    }

    private static final Object inLock = new Object();
    private static InFrame inFrame;
    private static volatile InState inState;
    private static final ArrayList<byte[]> inShots = new ArrayList<byte[]>();
    private static final ArrayList<byte[]> inDrones = new ArrayList<byte[]>(), inDooms = new ArrayList<byte[]>();   // BH04 prototype

    // ------------------------------------------------------------------ v45: each player rolls its own loot
    static final class Kill { String cls; int level; boolean elite; float x, y; }
    private static final ArrayList<Kill> inKills = new ArrayList<Kill>();
    private static long killSec;
    private static int killCount;
    static volatile int killsOut, killsIn, lootMine;
    private static final java.util.Map<Element, Boolean> myLoot = new WeakHashMap<Element, Boolean>();
    private static final HashMap<String, Method> enemyMakers = new HashMap<String, Method>();

    /** ModLoot.onEnemyKilled on the host (a kill credited to the players): the guest rolls its own drops for it. */
    static void killed(Ennemis e) {
        try {
            if (role != HOST || !connected || e == null || e == proxy || proxy == null || pvp) return;   // guest not in this sector: no roll
            if (ModBoss.isBoss(e) || ModPolice.isPolice(e)) return;   // same exclusions as the host's own mod roll
            ByteArrayOutputStream bo = new ByteArrayOutputStream();
            DataOutputStream o = new DataOutputStream(bo);
            o.writeUTF(e.getClass().getName()); o.writeInt(e.getLevel()); o.writeBoolean(e.elite);
            o.writeFloat(e.position.x); o.writeFloat(e.position.y);
            sendReliable(MSG_KILL, bo);
            killsOut++;
        } catch (Throwable t) {
            // this kill is not rolled on the guest
        }
    }

    /** The EnnemisFactory method that builds the named stock enemy class; null = not one (no roll). Loaded without running it. */
    private static Method enemyMaker(String cn) {
        if (cn == null || cn.length() > 120 || !cn.startsWith("fr.testudo.spacecorsair.business.ennemis.")) return null;
        if (enemyMakers.containsKey(cn)) return enemyMakers.get(cn);
        Method found = null;
        try {
            Class<?> c = Class.forName(cn, false, ModLan.class.getClassLoader());
            if (Ennemis.class.isAssignableFrom(c)) {
                for (Method m : EnnemisFactory.class.getMethods()) {
                    Class<?>[] ps = m.getParameterTypes();
                    if (Modifier.isStatic(m.getModifiers()) && m.getReturnType() == c && ps.length == 2 && ps[0] == int.class && ps[1] == int.class) { found = m; break; }
                }
            }
        } catch (Throwable t) {
            found = null;
        }
        if (enemyMakers.size() < 256) enemyMakers.put(cn, found);
        return found;
    }

    /** Guest, game thread: the stock loot roll and the mod's roll for one of the pair's kills, at the kill's position. */
    private static void rollLoot(Kill k) {
        try {
            Method m = enemyMaker(k.cls);
            if (m == null) return;
            int lvl = Math.max(1, Math.min(fr.testudo.spacecorsair.business.player.XpBuilder.LEVEL_MAX, k.level));
            Ennemis ph = (Ennemis) m.invoke(null, lvl, lvl);
            if (ph == null) return;
            if (k.elite) ph.setElite(true);
            ph.position.set(k.x, k.y);
            if (fr.testudo.spacecorsair.business.player.XpBuilder.canLootFromEnnemisWithLevel(ph.getLevel()))
                fr.testudo.spacecorsair.business.loot.LootFactory.GenerateLoots(ph.getLootConfig(), ph);
            ModLoot.drops(ph);
            killsIn++;
        } catch (Throwable t) {
            ModDev.ev("lan", "loot roll failed " + t);
        }
    }

    // host: queue ranges left out of the stream this frame (its own loot)
    private static final int[] skips = new int[128];
    private static int skipN;

    static boolean hostHides(Element e) {
        return role == HOST && e instanceof LootElement;
    }

    static void skipRange(int from, int to) {
        if (to > from && skipN + 2 <= skips.length) { skips[skipN++] = from; skips[skipN++] = to; }
    }

    private static boolean skipped(int i) {
        for (int k = 0; k < skipN; k += 2) if (i >= skips[k] && i < skips[k + 1]) return true;
        return false;
    }

    // ------------------------------------------------------------------ v45: the game menu does not pause a linked game
    private static volatile long menuAt;
    static volatile boolean underMenu;

    /** hooks53: GameThread.showGameMenu. */
    public static void menuOpening() { menuAt = System.currentTimeMillis(); }

    /** hooks53: Game.pause. True = do not pause (a linked game whose menu was just opened). */
    public static boolean keepRunning() {
        boolean keep = connected && System.currentTimeMillis() - menuAt < 3000;
        if (keep) { underMenu = true; ModDev.ev("lan", "menu open: game keeps running"); }
        return keep;
    }

    private static void receive(int type, byte[] b) throws IOException {
        DataInputStream in = new DataInputStream(new java.io.ByteArrayInputStream(b));
        if (type == MSG_Z) {
            unpack(b);
        } else if (type == MSG_DEF) {
            int id = in.readUnsignedShort();
            String k = in.readUTF();
            if (!defOk(k)) return;   // v45: only texture keys this game can have
            synchronized (defIn) {
                if (defIn.size() >= MAX_DEFS && !defIn.containsKey(id)) throw new IOException("too many textures");
                defIn.put(id, k); texIn.remove(id);
            }
        } else if (type == MSG_FRAME && role == GUEST) {
            InFrame f = new InFrame();
            f.level = in.readUTF();
            f.level = clean(f.level, 64);
            f.hx = fin(in.readFloat()); f.hy = fin(in.readFloat()); f.dmg = fin(in.readFloat()); f.xp = in.readLong();
            f.n = in.readUnsignedShort();
            if (f.n > MAX_REMOTE) throw new IOException("too many records");
            f.recs = readRecs(in, f.n);
            if (in.available() >= 9) { f.pvp = in.readBoolean(); f.round = in.readInt(); f.hostWins = in.readShort(); f.guestWins = in.readShort(); }
            if (in.available() >= 5) {   // v44 trailing: mission, radar markers
                f.mission = clean(in.readUTF(), 80); f.missionDone = in.readBoolean();
                f.marksN = in.readUnsignedShort();
                int len = in.readInt();
                if (len > 0 && len <= in.available() && f.marksN <= 2000 && len >= f.marksN * 14) { f.marks = new byte[len]; in.readFully(f.marks); } else f.marksN = 0;
            }
            synchronized (inLock) { inFrame = f; }
            gotFrames++;
            lastRecs = f.n;
        } else if (type == MSG_STYLE) {
            ModLanSync.style(b);
        } else if (type == MSG_LFRAME && role == GUEST) {
            InFrame f = new InFrame();
            f.lean = true;
            f.at = System.currentTimeMillis();
            int fl = in.readUnsignedByte();
            f.hx = fin(in.readFloat()); f.hy = fin(in.readFloat());
            if ((fl & 1) != 0) {
                leanLevel = clean(in.readUTF(), 64);
                leanDmg = fin(in.readFloat()); leanXp = in.readLong();
                leanPvp = in.readBoolean(); leanRound = in.readInt(); leanHw = in.readShort(); leanGw = in.readShort();
                leanMission = clean(in.readUTF(), 80); leanDone = in.readBoolean();
            }
            if (leanLevel.length() == 0) return;   // the slow values have not arrived yet (a lost first frame)
            f.level = leanLevel; f.dmg = leanDmg; f.xp = leanXp; f.pvp = leanPvp; f.round = leanRound; f.hostWins = leanHw; f.guestWins = leanGw;
            f.mission = leanMission; f.missionDone = leanDone;
            f.n = in.readUnsignedShort();
            if (f.n > MAX_REMOTE) throw new IOException("too many records");
            f.recs = ModLanSync.read(in, f.n, f.hx, f.hy);
            f.n = ModLanSync.compact(f.recs, f.n);
            if ((fl & 2) != 0) {
                int mn = in.readUnsignedShort();
                int len = in.readInt();
                if (len > 0 && len <= in.available() && mn <= 2000 && len >= mn * 14) { leanMarks = new byte[len]; in.readFully(leanMarks); leanMarksN = mn; }
                else { leanMarks = null; leanMarksN = 0; }
            }
            f.marks = leanMarks; f.marksN = leanMarksN;
            f.indexRecords();
            InFrame prev;
            synchronized (inLock) { prev = inFrame; }
            if (prev != null && prev.lean && prev.level.equals(f.level) && f.at - prev.at < 400) {
                ModLanSync.pair(f.recs, f.n, prev.recs, prev.idx, prev.recordIndex);
                f.span = Math.max(30, Math.min(250, f.at - prev.at));
                f.phx = prev.hx; f.phy = prev.hy;
            }
            if (prev != null) {
                prev.idx = null;
                prev.recordIndex = null;
            }
            synchronized (inLock) { inFrame = f; }
            gotFrames++;
            lastRecs = f.n;
        } else if ((type == MSG_STATE || type == MSG_LSTATE) && role == HOST) {
            InState s = new InState();
            s.alive = in.readBoolean();
            s.level = clean(in.readUTF(), 64);
            s.x = fin(in.readFloat()); s.y = fin(in.readFloat()); s.vx = fin(in.readFloat()); s.vy = fin(in.readFloat()); s.spin = fin(in.readFloat());
            s.life = fin(in.readFloat()); s.maxLife = fin(in.readFloat()); s.halfW = fin(in.readFloat()); s.halfH = fin(in.readFloat());
            // v45 sanity: a view no larger than the widest zoom, a hull the game could have
            s.halfW = Math.max(100, Math.min(MAX_VIEW, s.halfW)); s.halfH = Math.max(100, Math.min(MAX_VIEW, s.halfH));
            if (s.maxLife > MAX_HULL || s.maxLife < 0) { s.maxLife = Math.max(0, Math.min(MAX_HULL, s.maxLife)); flags++; }
            s.life = Math.min(s.life, s.maxLife);   // Codex NS01: the declared-hull clamp runs in hostFrame (game thread)
            s.n = in.readUnsignedShort();
            if (s.n > 200) throw new IOException("too many ship records");
            if (type == MSG_LSTATE) { s.recs = ModLanSync.read(in, s.n, 0, 0); s.n = ModLanSync.compact(s.recs, s.n); }
            else s.recs = readRecs(in, s.n);
            if (in.available() >= 4) s.defeats = in.readInt();
            if (in.available() >= 3) { s.solo = in.readBoolean(); s.mission = clean(in.readUTF(), 80); }
            s.at = System.currentTimeMillis();
            if (firstStateAt == 0) firstStateAt = s.at;
            synchronized (inLock) { inState = s; }
            gotFrames++;
            lastRecs = s.n;
        } else if (type == MSG_KILL && role == GUEST) {
            if (b.length > 256) throw new IOException("kill too large");
            long sec = System.currentTimeMillis() / 1000;
            if (sec != killSec) { killSec = sec; killCount = 0; }
            if (++killCount > 20) { flags++; return; }   // more kills a second than a fight has
            Kill k = new Kill();
            k.cls = in.readUTF(); k.level = in.readInt(); k.elite = in.readBoolean(); k.x = fin(in.readFloat()); k.y = fin(in.readFloat());
            synchronized (inLock) { if (inKills.size() < 100) inKills.add(k); }
        } else if (type == MSG_CHAT) {
            long now = System.currentTimeMillis();
            if (b.length > 512) throw new IOException("chat too large");
            if (now - chatIn < 500) return;   // faster than anyone types: dropped
            chatIn = now;
            ModLanUi.onChat(peerLabel(), in.readUTF());
        } else if (type == MSG_DECL && role == HOST) {
            long now = System.currentTimeMillis();
            ModLanCheck.Decl dc = ModLanCheck.decode(b);
            if (internet && !ModLobby.peerDev && ModLanCheck.hasDev(dc)) {   // audit D1 (owner): DEV gear is refused online
                ModDev.ev("lan", "guest declared DEV gear: session ended");
                String why = ModLang.tr("The other player flies DEV gear, which is not allowed in internet games.");
                noRejoin();
                stop();
                if (ModLobby.hosting) hostNet();   // second check S8: the lobby stays open, as after a kick
                status = why;
                return;
            }
            synchronized (inLock) { pendingDecl = dc; }   // Codex NS01: limits read game tables, so they are derived in hostFrame
        } else if (type == MSG_SHOT && role == HOST) {
            if (b.length > 4096) throw new IOException("shot too large");
            synchronized (inLock) { if (inShots.size() < 400) inShots.add(b); }
            shotsIn++;
        } else if (type == MSG_DRONE && role == HOST && extra) {   // BH04 prototype: ignored while the switch is off
            if (b.length > 8) throw new IOException("drone launch too large");
            synchronized (inLock) { if (inDrones.size() < 4) inDrones.add(b); }
        } else if (type == MSG_DOOM && role == HOST && extra) {
            if (b.length > 64) throw new IOException("doomsday tick too large");
            synchronized (inLock) { if (inDooms.size() < 50) inDooms.add(b); }
        }
    }

    // ------------------------------------------------------------------ v45: validation of everything received
    static final int MAX_DEFS = 4096;            // distinct textures per session
    static final float MAX_VIEW = 6000f;         // half extent of a guest view, world units
    static final float MAX_HULL = 5.0e7f;        // above any hull the game can build
    static volatile int flags;                   // clamped / dropped values seen (test log)
    private static volatile int strikes;         // serious violations; the link ends at STRIKES
    private static final int STRIKES = 20;
    static volatile long bytesIn, bytesOut;

    private static float fin(float v) throws IOException {
        if (Float.isNaN(v) || Float.isInfinite(v)) throw new IOException("not a number");
        return v;
    }

    /** A texture key this game can resolve: R<stock drawable id>, or L/M<mod art name>. */
    static boolean defOk(String k) {
        if (k == null || k.length() < 2 || k.length() > 96) return false;
        char c = k.charAt(0);
        if (c == 'R') {
            try {
                int id = Integer.parseInt(k.substring(1));
                return (id >>> 16) == 0x7f02 || (id >>> 16) == 0x7f03;   // drawable / raw packages of the stock APK
            } catch (NumberFormatException e) {
                return false;
            }
        }
        if (c != 'L' && c != 'M') return false;
        for (int i = 1; i < k.length(); i++) {
            char ch = k.charAt(i);
            if (!(ch >= 'a' && ch <= 'z' || ch >= 'A' && ch <= 'Z' || ch >= '0' && ch <= '9' || ch == '_' || ch == '-' || ch == '.' || ch == '/')) return false;
        }
        return k.indexOf("..") < 0;
    }

    private static Rec[] readRecs(DataInputStream in, int n) throws IOException {
        Rec[] out = new Rec[n];
        for (int i = 0; i < n; i++) {
            Rec r = new Rec();
            r.kind = in.readUnsignedByte();
            if (r.kind == R_SPRITE || r.kind == R_FX) {
                r.id = in.readUnsignedShort();
                r.x = fin(in.readFloat()); r.y = fin(in.readFloat()); r.spin = fin(in.readFloat());
                r.a = in.readUnsignedByte() / 255.0f; r.r = in.readUnsignedByte() / 255.0f; r.g = in.readUnsignedByte() / 255.0f; r.b = in.readUnsignedByte() / 255.0f;
                r.flags = in.readUnsignedByte();
                r.w = Math.max(-20000f, Math.min(20000f, fin(in.readFloat()))); r.h = Math.max(-20000f, Math.min(20000f, fin(in.readFloat())));
                if (r.kind == R_FX) {
                    r.u0 = fin(in.readFloat()); r.v0 = fin(in.readFloat()); r.u1 = fin(in.readFloat()); r.v1 = fin(in.readFloat());
                    if ((r.flags & 16) != 0) { r.e0 = fin(in.readFloat()); r.e1 = fin(in.readFloat()); }
                } else {
                    r.u0 = 0; r.v0 = 0; r.u1 = 1; r.v1 = 1;
                }
            } else if (r.kind == R_TEXT) {
                r.x = fin(in.readFloat()); r.y = fin(in.readFloat());
                r.a = in.readUnsignedByte() / 255.0f; r.r = in.readUnsignedByte() / 255.0f; r.g = in.readUnsignedByte() / 255.0f; r.b = in.readUnsignedByte() / 255.0f;
                r.flags = in.readUnsignedByte();
                r.tsize = in.readUnsignedByte();
                r.text = ModLang.fromWire(clean(in.readUTF(), 200));   // v45: printable, bounded; audit C8: guest translates
            } else if (r.kind == R_POINT) {
                r.x = fin(in.readFloat()); r.y = fin(in.readFloat());
                r.a = in.readUnsignedByte() / 255.0f; r.r = in.readUnsignedByte() / 255.0f; r.g = in.readUnsignedByte() / 255.0f; r.b = in.readUnsignedByte() / 255.0f;
                r.psize = Math.max(0f, Math.min(512f, fin(in.readFloat())));
            } else if (r.kind == R_BAR) {
                r.x = fin(in.readFloat()); r.y = fin(in.readFloat());
                r.u0 = fin(in.readFloat()); r.v0 = fin(in.readFloat());
                r.w = Math.max(1f, Math.min(512f, fin(in.readFloat()))); r.h = Math.max(1f, Math.min(512f, fin(in.readFloat()))); r.psize = fin(in.readFloat());
                r.a = in.readUnsignedByte() / 255.0f; r.r = in.readUnsignedByte() / 255.0f; r.g = in.readUnsignedByte() / 255.0f; r.b = in.readUnsignedByte() / 255.0f;
                r.xa = in.readUnsignedByte() / 255.0f; r.xr = in.readUnsignedByte() / 255.0f; r.xg = in.readUnsignedByte() / 255.0f; r.xb = in.readUnsignedByte() / 255.0f;
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
            int bars = 0;
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
                } else if (r.kind == R_BAR) {
                    InfoBarEnnemis bar = barFor(slot, bars++, r);
                    if (bar == null) continue;
                    re.set(at, bar);
                } else continue;
                size++;
                used++;
            }
            fQSize.setInt(q, size);
        } catch (Throwable t) {
            // a broken remote frame is skipped
        }
    }

    private static final int MAX_BARS = 96;
    private static final InfoBarEnnemis[][] barPool = new InfoBarEnnemis[3][MAX_BARS];

    /** A pooled enemy bar shaped like the host's (rebuilt only when its size or offset changes). */
    private static InfoBarEnnemis barFor(int slot, int k, Rec r) {
        if (k >= MAX_BARS) return null;
        InfoBarEnnemis b = barPool[slot][k];
        if (b == null || b.witdh != (int) r.w || b.height != (int) r.h || b.centerPosition.x != r.u0 || b.centerPosition.y != r.v0) {
            b = barPool[slot][k] = new InfoBarEnnemis(new Vector2(r.u0, r.v0), (int) r.w, (int) r.h);
        }
        b.fillA = r.a; b.fillR = r.r; b.fillG = r.g; b.fillB = r.b;
        b.extA = r.xa; b.extR = r.xr; b.extG = r.xg; b.extB = r.xb;
        if (b.pourcentageValue != r.psize) b.setValue(r.psize);
        return b;
    }

    // ------------------------------------------------------------------ v44: radar markers and shared missions
    private static final int MK_POINT = 1, MK_MISSION = 2, MK_SKULL = 4, MAX_MARKS = 300;
    private static volatile byte[] marksOut;
    static volatile boolean solo;
    private static volatile boolean soloReset;   // guest: flies its own game (own missions) while staying linked

    // Only hostMarks (game thread) touches this buffer. The published copy belongs to its reader.
    private static ByteArrayOutputStream radarScratch;

    /** Host, game thread: what the guest's radar shows (the host's enemies, civilians, rocks, loot, mines, objectives). */
    static void hostMarks(PlayerShip ps, Level lv) {
        try {
            boolean reuse = ModFx.PERF_RADAR_BUFFER;
            ByteArrayOutputStream bo;
            if (reuse) {
                if (radarScratch == null) radarScratch = new ByteArrayOutputStream(4096);
                bo = radarScratch;
                bo.reset();
                bo.write(0);
                bo.write(0);
            } else {
                bo = new ByteArrayOutputStream(4096);
            }
            DataOutputStream o = new DataOutputStream(bo);
            int n = 0;
            o.writeFloat(ps.position.x); o.writeFloat(ps.position.y); o.writeByte(MK_POINT); o.writeByte(0);
            o.writeByte(255); o.writeByte(51); o.writeByte(255); o.writeByte(153); o.writeFloat(Math.max(3, ps.radarPointSize));
            n++;
            for (Element e : lv.elements) {
                if (n >= MAX_MARKS) break;
                if (e == null || e.removed || e == ps || e == proxy || e.radarDrawType == null) continue;
                boolean mission = e.isMissionObjective && e.missionObjectiveColor != null;
                if (!mission && !(e.drawOnRadar && (e instanceof Ennemis || e instanceof CivilShip || e instanceof Asteroid || e instanceof Mine))) continue;   // v45: no loot marks (each player has its own loot)
                if (e.position.distance(ps.position) > 20000) continue;
                int fl = (e.radarDrawType.isPoint ? MK_POINT : 0) | (mission ? MK_MISSION : 0);
                try { if (!mission && e.radarDrawType.isPoint && ModLive.outlevels(e)) fl |= MK_SKULL; } catch (Throwable t) { /* no skull */ }
                o.writeFloat(e.position.x); o.writeFloat(e.position.y); o.writeByte(fl); o.writeByte(e.radarDrawType.ordinal());
                if (mission) { o.writeByte(b255(e.missionObjectiveColor.a)); o.writeByte(b255(e.missionObjectiveColor.r)); o.writeByte(b255(e.missionObjectiveColor.g)); o.writeByte(b255(e.missionObjectiveColor.b)); }
                else { o.writeByte(255); o.writeByte(b255(e.radarColorR)); o.writeByte(b255(e.radarColorG)); o.writeByte(b255(e.radarColorB)); }
                o.writeFloat(e.radarPointSize);
                n++;
            }
            o.flush();
            byte[] all;
            if (reuse) {
                all = bo.toByteArray();
            } else {
                byte[] body = bo.toByteArray();
                all = new byte[body.length + 2];
                System.arraycopy(body, 0, all, 2, body.length);
            }
            all[0] = (byte) (n >> 8); all[1] = (byte) n;
            marksOut = all;   // one volatile write: count and bytes stay paired
        } catch (Throwable t) {
            marksOut = null;
        }
    }

    private static final RadarDrawType[] RDT = RadarDrawType.values();
    private static final Vector2 mkAt = new Vector2();

    /** Guest: the host's markers on this ship's radar, placed exactly as GameThread.drawOnRadarAndCalcNearby does. */
    private static void guestMarks(PlayerShip ps, InFrame f) {
        if (f == null || f.marks == null || f.marksN <= 0) return;
        try {
            RenderQueue q = ObjectRegistry.INSTANCE.renderQueue;
            Vector2 cam = ObjectRegistry.INSTANCE.camera.centerPosition;
            float range = ps.radarPortee;
            if (range <= 0) return;
            float k = (Radar.DEMI_DIM - 20) / range;
            DataInputStream in = new DataInputStream(new java.io.ByteArrayInputStream(f.marks));
            for (int i = 0; i < f.marksN; i++) {
                float x = in.readFloat(), y = in.readFloat();
                int fl = in.readUnsignedByte(), dt = in.readUnsignedByte();
                float a = in.readUnsignedByte() / 255.0f, r = in.readUnsignedByte() / 255.0f, g = in.readUnsignedByte() / 255.0f, b = in.readUnsignedByte() / 255.0f;
                float size = in.readFloat();
                float dx = cam.x - x, dy = cam.y - y;
                if (dx * dx + dy * dy >= range * range) continue;
                mkAt.setSameAs(Radar.drawPosition).add(-dx * k, -dy * k);
                boolean point = (fl & MK_POINT) != 0;
                if ((fl & MK_MISSION) != 0) {
                    Drawable d = point ? Mission.targetRadarDrawable : (dt < RDT.length ? RDT[dt].radar_drawable : null);
                    if (d != null) q.addToWaitingQueue(mkAt, true, d, 0.0f, true, a, r, g, b);
                } else if (point) {
                    Texture t = (fl & MK_SKULL) != 0 ? ModArt.ready("icon_skull") : null;
                    if (t != null) {
                        float h = ModLive.SKULL_RADAR_H, w = h * ModLive.SKULL_ASPECT;
                        ModFx.hudTex(t, mkAt.x, mkAt.y, w, h, ModLive.SKULL_R, ModLive.SKULL_G, ModLive.SKULL_B, 0.85f);
                    } else ModMap.radarPoint(q, mkAt, true, r, g, b, 1.0f, size);
                } else if (dt < RDT.length && RDT[dt].radar_drawable != null) {
                    q.addToWaitingQueue(mkAt, true, RDT[dt].radar_drawable, 0.0f, true, 1.0f, 1.0f, 1.0f, 1.0f);
                }
            }
        } catch (Throwable t) {
            // radar markers skipped this frame
        }
    }

    static String missionId() {
        try {
            Mission m = ObjectRegistry.INSTANCE.currentMission;
            return m != null && m.missionId != null ? m.missionId : "";
        } catch (Throwable t) {
            return "";
        }
    }

    static boolean missionDone() {
        try {
            Mission m = ObjectRegistry.INSTANCE.currentMission;
            return m != null && m.missionEngine != null && m.missionEngine.isCompleted();
        } catch (Throwable t) {
            return false;
        }
    }

    /** Guest: same mission as the host = one shared objective; the host's completion completes it here too. */
    private static void guestMission(PlayerShip ps, InFrame f) {
        try {
            if (f.mission == null || f.mission.length() == 0 || !f.missionDone) return;
            Mission m = ObjectRegistry.INSTANCE.currentMission;
            if (m == null || !f.mission.equals(m.missionId) || m.missionEngine == null || m.missionEngine.isCompleted()) return;
            m.missionEngine = new AlreadyCompletedEngine();
            try { persistId = m.missionId; persistSeen = true; ModQol.prefs().edit().putString("lan_done", m.missionId).commit(); /* audit E8: in the save */ } catch (Throwable t) { /* memory only */ }
            Mod.floatText(ps, ModLang.tr("CO-OP MISSION COMPLETE"), 0.3f, 1.0f, 0.5f);
            ModDev.ev("lan", "shared mission completed " + m.missionId);
        } catch (Throwable t) {
            // mission left as it was
        }
    }

    /** Guest: switch between following the host and flying its own game. */
    static void setSolo(boolean on) {
        if (solo == on) return;
        solo = on;
        if (on && role == GUEST) soloReload = true;   // audit E8 (owner): the guest's own sector is rebuilt at once
        soloReset = true;   // game thread clears the damage / XP baselines (no catch-up of what happened while apart)
        ModDev.ev("lan", "guest solo=" + on);
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
        if (v.equals("host")) { host(true); autoAccept = true; }   // the scripted peer has nobody to tap Accept (public room: it sends no code)
        else if (v.equals("off")) stop();
        else if (v.equals("duel")) { pvpRoom = true; duel(true); }
        else if (v.equals("duel-off")) duel(false);
        else if (v.startsWith("join:")) new Thread(new Runnable() { public void run() { join(v.substring(5)); ModDev.ev("lan", "join -> connected=" + connected + " " + status); } }, "lan-join").start();
    }
    private static boolean announce, lost;
    private static volatile boolean joinAsk;
    private static long persistAt, logOut, logIn, logRaw;

    // v45: a shared mission completed in co-op survives quitting before the claim (kept until that mission is claimed or dropped)
    private static boolean persistSeen;
    private static String persistId;

    private static android.content.SharedPreferences lanPrefs() {
        return ObjectRegistry.INSTANCE.game.context.getSharedPreferences("corsair_lan", 0);
    }

    // ------------------------------------------------------------------ audit E8: back to own missions
    static volatile boolean soloReload;

    /**
     * ModIntro.dt, top of the frame (the prologue's level swap point, outside GameThread.doPhysic): the guest switched to
     * its own missions, so its sector is rebuilt through the stock gate-travel path (LevelBuilder.jumpToLevel), which
     * spawns the sector's own ships again. The player comes out at the sector's closest gate.
     */
    static volatile boolean exitReload;
    private static volatile long exitReloadAt;

    static void preFrame() {
        if (exitReload) exitFrame();
        if (!soloReload) return;
        soloReload = false;
        try {
            if (role != GUEST || !solo) return;
            fr.testudo.spacecorsair.game.levels.Level lv = ObjectRegistry.INSTANCE.game.currentLevel;
            PlayerShip ps = ObjectRegistry.INSTANCE.playerShip;
            if (lv == null || ps == null || ps.removed || ps.isDocked || ObjectRegistry.INSTANCE.game.mapMode || ModPrologue.active) return;
            fr.testudo.spacecorsair.business.world.Portal p = lv.findClosestPortal(ps.position);
            if (p == null || p.portalName == null) { ModDev.ev("lan", "solo reload skipped: no gate"); return; }
            fr.testudo.spacecorsair.game.levels.builders.LevelBuilder.jumpToLevel(lv.name, p.portalName);
            ModDev.ev("lan", "solo: sector reloaded at " + p.portalName);
        } catch (Throwable t) {
            ModDev.ev("lan", "solo reload failed " + t);
        }
    }

    /** GPT check BH03: a guest that stopped following the host gets its own sector rebuilt (stock gate travel), once no
     *  reconnect is pending; kept for later while docked, on the map or in the prologue. */
    private static void exitFrame() {
        try {
            if (role == GUEST) { if (connected && !solo) exitReload = false; return; }   // following again (that wipes it anyway), or still joining
            if (role == HOST || ModTestMode.on || System.currentTimeMillis() > exitReloadAt + 60000) { exitReload = false; return; }   // cross-check: hosting now, another profile, or too late
            if (System.currentTimeMillis() < exitReloadAt && (rejoinUntil > System.currentTimeMillis() || lastAddr != null || ModLobby.joined())) return;
            fr.testudo.spacecorsair.game.levels.Level lv = ObjectRegistry.INSTANCE.game.currentLevel;
            PlayerShip ps = ObjectRegistry.INSTANCE.playerShip;
            if (lv == null || ps == null || ps.removed || ps.isDocked || ObjectRegistry.INSTANCE.game.mapMode || ModPrologue.active) return;   // retried next frame
            exitReload = false;
            if (lv.id == LevelId.FFA_THE_PLAYER_PAY) return;   // the duel bay: leaveBay takes the ship home, which rebuilds it
            fr.testudo.spacecorsair.business.world.Portal p = lv.findClosestPortal(ps.position);
            if (p == null || p.portalName == null) { ModDev.ev("lan", "exit reload skipped: no gate"); return; }
            fr.testudo.spacecorsair.game.levels.builders.LevelBuilder.jumpToLevel(lv.name, p.portalName);
            ModDev.ev("lan", "guest exit: sector reloaded at " + p.portalName);
        } catch (Throwable t) {
            exitReload = false;
            ModDev.ev("lan", "exit reload failed " + t);
        }
    }

    private static void persistedMission(PlayerShip ps) {
        try {
            if (persistId == null) persistId = ModQol.prefs().getString("lan_done", "");
            if (persistId.length() == 0) return;
            Mission m = ObjectRegistry.INSTANCE.currentMission;
            if (m != null && persistId.equals(m.missionId)) {
                persistSeen = true;
                if (m.missionEngine != null && !m.missionEngine.isCompleted()) {
                    m.missionEngine = new AlreadyCompletedEngine();
                    ModDev.ev("lan", "restored completed co-op mission " + persistId);
                }
            } else if (m != null || persistSeen) {   // claimed, abandoned or replaced
                persistId = "";
                persistSeen = false;
                ModQol.prefs().edit().remove("lan_done").commit();
            }
        } catch (Throwable t) {
            // checked again in 2 s
        }
    }
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
        skipN = 0;
        try {
            PlayerShip ps = ObjectRegistry.INSTANCE.playerShip;
            if (dropProxy) { dropProxy = false; removeProxy(); }
            if (ps == null || ObjectRegistry.INSTANCE.game.currentLevel == null) return;
            if (announce) { announce = false; Mod.floatText(ps, ModLang.tr("CO-OP CONNECTED") + (peerNick.length() > 0 ? ": " + peerLabel() : ""), 0.3f, 1.0f, 0.5f); }
            if (lost) { lost = false; Mod.floatText(ps, ModLang.tr("CO-OP LINK LOST"), 1.0f, 0.4f, 0.3f); }
            testSwitch(now);
            extraSwitch(now);
            if (joinAsk) { joinAsk = false; String w = pendingWho; if (w != null) Mod.floatText(ps, w + " " + ModLang.tr("wants to join your game."), 0.3f, 1.0f, 0.5f); }
            if (now - persistAt > 2000) { persistAt = now; persistedMission(ps); }
            guestPos(ps, now);
            if (ModLobby.switchLocked() && (internet || ModLobby.hosting || ModLobby.joined())) {   // GPT check BH05
                ModDev.ev("lan", "test switch seen: internet session ended");
                if (internet) { noRejoin(); stop(); }
                ModLobby.leave();
                status = ModLang.tr("Test switches are in use. Internet games are off until the game restarts; local games still work.");
            }
            if (!connected) {
                leaveBay();
                return;
            }
            if (now - lastLog > 3000) {
                lastLog = now;
                ModDev.ev("lan", (role == HOST ? "host" : "guest") + " level=" + (ObjectRegistry.INSTANCE.game.currentLevel.id) + " sent=" + sentFrames
                    + " got=" + gotFrames + " lastRecs=" + lastRecs + " proxy=" + (proxy != null) + " shotsIn=" + shotsIn + " shotsOut=" + shotsOut
                    + " dmgSent=" + dmgSent + " dmgSeen=" + dmgSeen + " xpSent=" + xpSent + " xpSeen=" + xpSeen + " hull=" + ps.life + "/" + ps.maxLife
                    + " pos=" + (int) ps.position.x + "," + (int) ps.position.y
                    + " killsOut=" + killsOut + " killsIn=" + killsIn + " lootMine=" + lootMine + " rawBs=" + (rawOut - logRaw) / 3 + " outBs=" + (bytesOut - logOut) / 3 + " inBs=" + (bytesIn - logIn) / 3 + " flags=" + flags + " strikes=" + strikes);
                logOut = bytesOut; logIn = bytesIn; logRaw = rawOut;
            }
            if (role == HOST) hostFrame(ps, dt);
            else if (role == GUEST) guestFrame(ps);
        } catch (Throwable t) {
            // the link never breaks the frame
        }
    }

    // ---------------------------------------------------------------- host
    private static long devGearAt;

    private static void hostFrame(PlayerShip ps, long dt) {
        long nowDg = System.currentTimeMillis();
        if (internet && nowDg - devGearAt > 2000) {   // second check S3: the host's own DEV gear, every 2 s (not only at lobby open)
            devGearAt = nowDg;
            if (!ModLobby.selfDev() && ModLobby.devGear()) {
                ModDev.ev("lan", "host fitted DEV gear: session ended");
                noRejoin();
                stop();
                ModLobby.leave();
                status = ModLang.tr("DEV ships and DEV gear cannot be used in internet games.");
                return;
            }
        }
        InState s;
        ArrayList<byte[]> shots, dshots, dooms;
        ModLanCheck.Decl declaration;
        synchronized (inLock) {
            declaration = pendingDecl;
            pendingDecl = null;
            s = inState;
            shots = new ArrayList<byte[]>(inShots);
            inShots.clear();
            dshots = new ArrayList<byte[]>(inDrones);
            inDrones.clear();
            dooms = new ArrayList<byte[]>(inDooms);
            inDooms.clear();
        }
        if (declaration != null) applyDeclaration(declaration, nowDg);
        if (s != null) limitHull(s);
        Level lv = ObjectRegistry.INSTANCE.game.currentLevel;
        hostMarks(ps, lv);
        hostDuel(ps, lv, s);
        boolean here = s != null && s.alive && System.currentTimeMillis() - s.at < 2000 && lv.id != null && lv.id.levelName.equals(s.level)
            && !ObjectRegistry.INSTANCE.game.mapMode;
        if (!here) {
            removeProxy();
            return;
        }
        if (proxy == null || proxy.removed || proxyLevel != lv) { removeProxy(); spawnProxy(ps, s); proxyLevel = lv; moveAt = 0; }
        Ennemis p = proxy;
        if (p == null) return;
        // v45 movement check: a jump no ship could fly (and not the arrival next to the host) is not followed
        if (s != moveState) {
            moveState = s;
            float dx = s.x - moveX, dy = s.y - moveY;
            float secs = Math.max(0.016f, (s.at - moveAt) / 1000.0f);
            if (moveSeen != 0 && s.at - moveSeen > 500 && !moveHold && s.at - graceAt > 30000) { moveGrace = s.at + 3000; graceAt = s.at; }   // verify: a stall then a burst of queued states is not cheating; cross-check: at most once per 30 s, never while held
            moveSeen = s.at;
            float hx = s.x - ps.position.x, hy = s.y - ps.position.y;
            boolean nearHost = hx * hx + hy * hy < 4000f * 4000f;
            float reach = MAX_SPEED * secs + 1500f;
            if (moveAt != 0 && !nearHost && dx * dx + dy * dy > reach * reach) {
                if (!moveHold && s.at > moveGrace) {   // spec item 8 (owner 2026-11-18): each new impossible jump counts once; repeat offenders are kicked
                    flags++;
                    long nowJ = System.currentTimeMillis();
                    if (nowJ - jumpWin > JUMP_WINDOW_MS) { jumpWin = nowJ; jumps = 0; }
                    if (++jumps >= JUMP_KICK) { ModDev.ev("lan", "movement jumps " + jumps); violation("movement"); return; }
                }
                moveHold = true;
            } else {
                moveHold = false;
                if (moveAt != 0) obsSpeed = Math.min(MAX_SPEED, (float) Math.sqrt(dx * dx + dy * dy) / secs);   // cross-check: the speed this host saw, for late states
                moveX = s.x; moveY = s.y; moveAt = s.at;
            }
        }
        float vx = s.vx, vy = s.vy;
        float v2 = vx * vx + vy * vy;
        if (v2 > MAX_STEP * MAX_STEP) { float k = MAX_STEP / (float) Math.sqrt(v2); vx *= k; vy *= k; }
        float age = Math.min(250, System.currentTimeMillis() - s.at) / 16.0f;   // speeds are per ~16 ms frame
        if (moveHold) p.position.set(moveX, moveY);
        else p.position.set(s.x + vx * age, s.y + vy * age);
        p.speed.set(vx, vy);
        p.spin = s.spin;
        p.updateSapCoords();
        // hits on the stand-in are forwarded to the guest's own shields and hull; the stand-in itself never dies
        float lost = PROXY_LIFE - p.life;
        if (lost > 0) { dmgSent += lost; if (pvp) roundDmg += lost; }
        p.maxLife = PROXY_LIFE;
        p.life = PROXY_LIFE;
        p.lifeInPourc = s.maxLife > 0 ? 100.0f * Math.max(0, s.life) / s.maxLife : 100.0f;
        p.removed = false;
        long nowS = System.currentTimeMillis() / 1000;
        if (nowS != shotSec) { shotSec = nowS; shotCount = 0; }
        for (byte[] b : shots) {
            if (++shotCount > MAX_SHOTS_S) { flags++; continue; }   // v45: above any weapon's fire rate
            fireShot(b, p);
        }
        if (extra) {   // BH04 prototype
            for (byte[] b : dshots) guestDrones(b, p);
            for (byte[] b : dooms) guestDoom(b, p);
        }
        upkeepGuestDrones(p, dt);   // also after the switch went off: the drones still expire
        retarget -= dt;
        if (!pvp && retarget <= 0) {
            retarget = 1000;
            for (Element e : lv.elements) {
                if (!(e instanceof Ennemis) || e.removed || e == p || Mod.isDrone(e)) continue;
                Ennemis en = (Ennemis) e;
                if (en.attackTarget != ps && en.attackTarget != p) continue;   // only enemies already after a player
                // audit F11 (owner 2026-11-17): each enemy attacks the closest player
                float dp = e.position.distance(p.position), dh = e.position.distance(ps.position);
                Element want = dp < dh ? p : ps;
                if (en.attackTarget != want) en.initAttackTarget(want);
            }
        }
    }

    // v45 anti-cheat limits (host side). Generous: they stop impossible values, not good players.
    static final float TAG_UP = 150f;            // the name tag sits this far above the other ship
    static final float MAX_SPEED = 6000f;        // world units per second
    static final float MAX_STEP = 100f;          // speed vector per frame
    static final int MAX_SHOTS_S = 300;
    static final float SHOT_REACH = 300f;        // spec item 4 (owner 2026-11-18): a shot starts within 300 of the ship's shield edge
    private static volatile ModLanCheck.Limits limits;
    private static ModLanCheck.Limits noDecl;
    private static volatile long beganAt, firstStateAt;
    private static final HashMap<Class<?>, Field[]> dmgFieldCache = new HashMap<Class<?>, Field[]>();

    /** The float fields of a projectile class that carry damage ("damage", "radiusDamage", and any mod field named like one). */
    private static Field[] damageFields(Class<?> c) {
        Field[] r = dmgFieldCache.get(c);
        if (r != null) return r;
        ArrayList<Field> out = new ArrayList<Field>();
        for (Field f : shotFields(c)) {
            if (f.getType() != float.class) continue;
            String n = f.getName().toLowerCase(java.util.Locale.US);
            if (n.contains("damage") || n.contains("dmg") || n.contains("dps") || n.contains("burn")) out.add(f);
        }
        r = out.toArray(new Field[0]);
        dmgFieldCache.put(c, r);
        return r;
    }
    static final long DECL_WAIT_MS = 10000;

    /** Ceilings while the guest has declared nothing: the top of the stock tables, no special allowances. Never stored as the guest's limits. */
    private static ModLanCheck.Decl pendingDecl;   // Codex NS01: latest declaration from the reader, applied on the game thread

    /** Codex NS01 (game thread): a guest declaration turns into limits here, not on the network reader. */
    private static void applyDeclaration(ModLanCheck.Decl dc, long now) {
        ModLanCheck.Limits lm = ModLanCheck.limits(dc);   // always taken (two gear changes can follow each other closely)
        lastDecl = dc;
        if (now - declAt > 500) flags += lm.flags;                            // only the flag count is rate limited
        declAt = now;
        hullFlagged = false;
        limits = lm;
        ModDev.ev("lan", "guest declared: exact=" + lm.exact + " shot<=" + (int) lm.shot + " dps<=" + (int) lm.dps + " hull<=" + (int) lm.hull + " flags=" + lm.flags);
    }

    /** Codex NS01 (game thread): no more hull than the declared ship can have (v45). */
    private static void limitHull(InState s) {
        ModLanCheck.Limits lm = limits;
        if (lm == null) lm = undeclared();
        if (s.maxLife > lm.hull) { s.maxLife = lm.hull; if (!hullFlagged) { hullFlagged = true; flags++; } }
        s.life = Math.min(s.life, s.maxLife);
    }

    private static ModLanCheck.Limits undeclared() {
        ModLanCheck.Limits m = noDecl;
        if (m == null) noDecl = m = ModLanCheck.limits(null);
        return m;
    }
    private static volatile boolean hullFlagged;
    private static long declAt, clampAt, declSentAt;
    static volatile long clamped;
    private static ModLanCheck.Decl declSent;

    /** Guest: tells the host what it flies, when it changes and every 20 s (the host derives its ceilings from it). */
    private static void declare(long now) {
        try {
            if (now - declAt < 2000) return;   // looked at every 2 s (declAt is the host's receive time; this phone is the guest)
            declAt = now;
            ModLanCheck.Decl d = ModLanCheck.mine();
            if (internet && !ModLobby.selfDev() && ModLanCheck.hasDev(d)) {   // audit D1: this app refuses DEV gear online too
                ModQol.post(ModLang.tr("DEV ships and DEV gear cannot be used in internet games."));
                stop();
                return;
            }
            if (d.same(declSent) && now - declSentAt < 20000) return;
            declSent = d;
            declSentAt = now;
            byte[] b = ModLanCheck.encode(d);
            ByteArrayOutputStream bo = new ByteArrayOutputStream(b.length);
            bo.write(b, 0, b.length);
            sendReliable(MSG_DECL, bo);
        } catch (Throwable t) {
            // declared at the next change
        }
    }

    private static InState moveState;
    private static float moveX, moveY, roundDmg;
    static final int JUMP_KICK = 4;                  // spec item 8: this many impossible jumps ...
    static final long JUMP_WINDOW_MS = 120000;       // ... within 2 minutes end the session (one stall and catch-up is one jump)
    private static int jumps;
    private static long jumpWin, moveSeen, moveGrace, graceAt;
    private static float obsSpeed;
    private static long moveAt, shotSec;
    private static boolean moveHold;
    private static int shotCount;
    private static final HashMap<String, Class<?>> shotClasses = new HashMap<String, Class<?>>();

    /** The projectile class for a received name, loaded without running it; null = not a projectile of this game. */
    private static Class<?> shotClass(String cn) {
        if (cn == null || cn.length() > 120 || !cn.startsWith("fr.testudo.spacecorsair.")) return null;
        if (shotClasses.containsKey(cn)) return shotClasses.get(cn);
        Class<?> c = null;
        try {
            c = Class.forName(cn, false, ModLan.class.getClassLoader());
            if (!Projectile.class.isAssignableFrom(c) || LaserBeam.class.isAssignableFrom(c) || Modifier.isAbstract(c.getModifiers())) c = null;
        } catch (Throwable t) {
            c = null;
        }
        if (shotClasses.size() < 256) shotClasses.put(cn, c);
        return c;
    }

    private static boolean bad(float v) { return Float.isNaN(v) || Float.isInfinite(v); }

    /** A received shot the guest's ship could have fired: real numbers, starts at the ship, bounded damage and life. */
    static boolean shotOk(Projectile p, float fromX, float fromY) { return shotOk(p, fromX, fromY, SHOT_REACH); }

    /** reach = the farthest a shot may start from (fromX, fromY). Damage is not capped here: fireShot checks it against the weapon tables. */
    static boolean shotOk(Projectile p, float fromX, float fromY, float reach) {
        if (p.position == null || p.speed == null) return false;
        if (bad(p.position.x) || bad(p.position.y) || bad(p.speed.x) || bad(p.speed.y) || bad(p.damage) || bad(p.spin) || bad(p.life) || bad(p.maxLife)) return false;
        float dx = p.position.x - fromX, dy = p.position.y - fromY;
        if (!(dx * dx + dy * dy <= reach * reach)) return false;
        if (p.damage < 0) p.damage = 0;
        if (p.lifeTimeInMilli > 60000) { p.lifeTimeInMilli = 60000; flags++; }
        return true;
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
        dropGuestDrone(0); dropGuestDrone(1);   // BH04 prototype
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
        return e != null && (e == proxy || isGuestDrone(e)) && !pvp && !pvpRoom;   // BH04 prototype: the guest's drones too. v45: PvP room on = the players can hit each other in sectors too
    }

    /** ModLive.draw for the stand-in: the guest's own ship sprites at the stand-in's position. True = drawn here. */
    static boolean drawProxy(Element e) {
        if (e != proxy || proxy == null) return false;
        InState s;
        synchronized (inLock) { s = inState; }
        proxyFrom = queueSize();
        if (s != null) replay(s.recs, s.n, e.position.x, e.position.y);
        ModLanUi.drawLabel(e.position.x, e.position.y + TAG_UP, peerNick, peerCtry);   // inside the range the stream leaves out
        proxyTo = queueSize();
        return true;
    }

    /** Host: re-creates a guest shot (same projectile class and fields) fired by the stand-in. */
    private static void fireShot(byte[] b, Ennemis from) {
        try {
            DataInputStream in = new DataInputStream(new java.io.ByteArrayInputStream(b));
            String cn = in.readUTF();
            Class<?> c = shotClass(cn);   // v45: never Class.forName on a peer's string with initialisation
            if (c == null) { flags++; if (++strikes >= STRIKES) violation("shot class"); return; }
            Projectile p = newProjectile(c);
            if (p == null) return;
            for (Field f : shotFields(c)) readField(in, f, p);
            // spec item 4: the shot starts within 300 of the declared hull's shield edge, at the stand-in or at the
            // guest's last reported place (the stand-in is extrapolated), plus the flight of one late state
            ModLanCheck.Limits lr = limits != null ? limits : undeclared();
            InState st = inState;
            float ageS = st != null ? Math.min(0.5f, Math.max(0f, System.currentTimeMillis() - st.at - 250) / 1000f) : 0f;   // past what the stand-in extrapolates
            float reach = SHOT_REACH + lr.radius + obsSpeed * ageS;   // verify: no slack from the guest's own numbers; cross-check: a late state, by the speed seen here
            boolean near = shotOk(p, from.position.x, from.position.y, reach) || (st != null && !moveHold && shotOk(p, st.x, st.y, reach));   // a rejected jump is no origin
            if (!near) { flags++; p.removed = true; return; }
            // v45: damage clamped to what the declared ship and weapons can do by this phone's own tables
            ModLanCheck.Limits lm = limits;
            long nowMs = System.currentTimeMillis();
            if (lm == null) {   // nothing declared: the plain table ceilings for a few seconds after the guest's first state, then no shots at all
                long first = firstStateAt;
                if (first != 0 && nowMs - first > DECL_WAIT_MS) { if (nowMs - clampAt > 1000) { clampAt = nowMs; flags++; } clamped++; p.removed = true; return; }
                lm = undeclared();
            }
            // every damage number the shot carries counts (a missile's blast as well as its hit); all are scaled together
            Field[] dmgF = damageFields(c);
            float ask = 0;
            for (Field f : dmgF) {
                float v = f.getFloat(p);
                if (bad(v) || v < 0) { flags++; p.removed = true; return; }
                ask = Math.max(ask, v);
            }
            if (ask <= 0) { p.removed = true; return; }   // a shot that hurts nothing is not worth simulating
            // audit D4: real numbers recorded; audit I2: the shots-per-second limit is part of the check
            if (!ModLanCheck.record(lm, ask, nowMs)) { if (nowMs - clampAt > 1000) { clampAt = nowMs; flags++; } clamped++; p.removed = true; return; }
            float may = ModLanCheck.allow(lm, ask, nowMs, pvp || pvpRoom);
            if (may < ask) {
                if (nowMs - clampAt > 1000) { clampAt = nowMs; flags++; }   // one flag a second while it lasts
                clamped++;
                if (may <= 0) { p.removed = true; return; }
                float k = may / ask;
                for (Field f : dmgF) f.setFloat(p, f.getFloat(p) * k);
            }
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

    // ---------------------------------------------------------------- GPT check BH04 prototype (switch off)
    /** BH04 prototype switch: guest drone shots and doomsday ticks reach the host. Off; the emulator turns it on with
     *  /data/local/tmp/corsair_bh04 = on (both phones must have it on). Not for release until the owner approves. */
    static volatile boolean extra;
    static final long DRONE_GAP_MS = 15000;          // a guest drone launch at most this often (shortest Hive Bay drone life)
    static final int DOOM_TICKS_S = 6;               // doomsday ticks a second (fastest lance: one every 200 ms = 5, +1 for the second boundary)
    static final int DOOM_TICKS_SHOT = 80;           // ticks one doomsday shot may have (longest fire with slack)
    static final long DOOM_GAP_MS = 15000;           // a new doomsday shot at most this often
    static final float DOOM_ORIGIN = 2000f;          // the beam's nose this close to the guest's ship
    private static long doomSec, doomShotAt, droneLaunchAt, askAt;
    private static int doomInSec, doomShotId = Integer.MIN_VALUE, doomTicksShot;
    private static long extraAt;
    /** Host: the guest's Hive Bay drones, flown by the host's game next to the stand-in (the guest's sector has no enemies). */
    private static final Ennemis[] gDrones = new Ennemis[2];
    private static final int[] gDroneLeft = new int[2];
    private static int gDroneRetarget;

    /** Guest (Mod.launchDrones): asks the host to launch this ship's drones there. True = asked (the missile is used). */
    static boolean askDrones(int tier) {
        if (!extra || !guestActive()) return false;
        long now = System.currentTimeMillis();
        if (askAt != 0 && now - askAt < DRONE_GAP_MS) return false;   // verifier: the host would refuse; the local launch path answers instead
        askAt = now;
        try {
            ByteArrayOutputStream bo = new ByteArrayOutputStream(4);
            new DataOutputStream(bo).writeByte(Math.max(0, Math.min(3, tier)));
            sendReliable(MSG_DRONE, bo);
            return true;
        } catch (Throwable t) {
            return false;
        }
    }

    /** Host: a drone launch of the guest, checked: a declared Hive Bay, at most once per its own reload, no duel room. */
    private static void guestDrones(byte[] b, Ennemis from) {
        try {
            ModLanCheck.Decl d = lastDecl;
            if (d == null || pvp || pvpRoom || !ModLanCheck.hiveDeclared(d)) { flags++; return; }
            int tier = Math.max(0, Math.min(ModSpecs.HIVE_LIFE.length - 1, b.length > 0 ? b[0] & 255 : 0));
            tier = Math.min(tier, ModLanCheck.hiveTier(d));   // never above the declared bay
            long now = System.currentTimeMillis();
            if (droneLaunchAt != 0 && now - droneLaunchAt < DRONE_GAP_MS) { flags++; return; }
            Element t = Mod.findEnemy(from.position, Mod.DRONE_ENGAGE_RANGE);
            if (t == null) return;
            int lvl = Math.max(0, Math.min(999, d.level));
            boolean any = false;
            for (int i = 0; i < 2; i++) {
                if (gDrones[i] != null && !gDrones[i].removed) continue;
                Ennemis e = fr.testudo.spacecorsair.business.ennemis.EnnemisFactory.newEnnemis(
                    i == 0 ? fr.testudo.spacecorsair.business.ennemis.EnnemisType.UFO_ALIEN : fr.testudo.spacecorsair.business.ennemis.EnnemisType.ALIEN_RAT, lvl, lvl);
                e.level = lvl; e.levelStr = lvl + "";
                e.spin = from.spin + 180.0f + (i == 0 ? -20.0f : 20.0f);
                e.position.setSameAs(from.position).add(i == 0 ? -120.0f : 120.0f, 0.0f);
                e.speed.setSameAs(from.speed);
                e.updateSapCoords();
                e.desengagementDistance = 4000.0f;
                e.xp = 0;
                e.radarColorR = 0.2f; e.radarColorG = 1.0f; e.radarColorB = 0.2f;
                e.specificName = ModLang.tr("ATK DRONE");
                e.specificNameDecalX = -1;
                e.initAttackTarget(t);
                e.addToCurrentLevel();
                gDrones[i] = e;
                gDroneLeft[i] = ModSpecs.HIVE_LIFE[tier];
                any = true;
            }
            if (any) { droneLaunchAt = now; ModDev.ev("lan", "guest drones launched tier " + tier); }
        } catch (Throwable t) {
            flags++;
            ModDev.ev("lan", "guest drones failed " + t);
        }
    }

    /** Host: lifetime, leash to the stand-in and targets of the guest's drones. */
    private static void upkeepGuestDrones(Ennemis from, long dt) {
        boolean retarget = (gDroneRetarget -= (int) dt) <= 0;
        if (retarget) gDroneRetarget = 1000;
        for (int i = 0; i < 2; i++) {
            Ennemis e = gDrones[i];
            if (e == null) continue;
            gDroneLeft[i] -= (int) dt;
            if (e.removed || gDroneLeft[i] <= 0 || from == null || from.removed || e.position.distance(from.position) > 4000f) { dropGuestDrone(i); continue; }
            if (retarget) {
                Element t = Mod.findEnemy(from.position, Mod.DRONE_ENGAGE_RANGE);
                if (t != null) e.initAttackTarget(t);
            }
        }
    }

    private static void dropGuestDrone(int i) {
        Ennemis e = gDrones[i];
        gDrones[i] = null;
        if (e != null) { e.specificName = null; if (!e.removed) e.remove(); }
    }

    static boolean isGuestDrone(Element e) {
        return e != null && (e == gDrones[0] || e == gDrones[1]) && !pvp && !pvpRoom;
    }

    /** Host: one doomsday tick of the guest, checked, then applied to the host's own enemies (ModTitan rules and caps). */
    private static void guestDoom(byte[] b, Ennemis from) {
        try {
            ModLanCheck.Limits lm = limits;
            ModLanCheck.Decl d = lastDecl;
            if (lm == null || d == null || !lm.doom || pvp || pvpRoom) { flags++; return; }   // only a declared doomsday hull, never in a duel room
            DataInputStream in = new DataInputStream(new java.io.ByteArrayInputStream(b));
            int k = in.readUnsignedByte();
            float ax = in.readFloat(), ay = in.readFloat(), spin = in.readFloat(), half = in.readFloat(), nova = in.readFloat();
            boolean seq = in.readBoolean();
            int shot = in.readInt();
            if (bad(ax) || bad(ay) || bad(spin) || bad(half) || bad(nova)) { flags++; return; }
            if (Math.hypot(ax - from.position.x, ay - from.position.y) > DOOM_ORIGIN) { flags++; return; }
            long now = System.currentTimeMillis();
            if (now / 1000 != doomSec) { doomSec = now / 1000; doomInSec = 0; }
            if (++doomInSec > DOOM_TICKS_S) { flags++; return; }
            if (shot != doomShotId) {
                if (doomShotAt != 0 && now - doomShotAt < DOOM_GAP_MS) { flags++; return; }
                doomShotId = shot; doomShotAt = now; doomTicksShot = 0;
            }
            if (++doomTicksShot > DOOM_TICKS_SHOT) { flags++; return; }
            // verifier: the kind, the Leviathan sequence rule and the beam width come from the declared hull, not from the guest
            fr.testudo.spacecorsair.business.loot.stuff.GearSpec hs = ModLanCheck.spec(d.ship);
            if (!(hs instanceof fr.testudo.spacecorsair.business.loot.stuff.playerShip.PlayerShipSpec)) { flags++; return; }
            fr.testudo.spacecorsair.business.loot.stuff.playerShip.PlayerShipSpec spec = (fr.testudo.spacecorsair.business.loot.stuff.playerShip.PlayerShipSpec) hs;
            int dk = ModTitan.declaredKind(spec);
            if (dk != k) { flags++; return; }
            seq = seq && ModTitan.declaredSeq(spec);
            half = Math.min(half, spec.drawableSize * 0.5f);
            int n = ModTitan.guestDoomTick(from, Math.max(1, Math.min(999, d.level)), k, ax, ay, spin, half, nova, seq, shot);
            if (n < 0) flags++;
        } catch (Throwable t) {
            flags++;
        }
    }

    /** Guest (ModTitan.damageTick): one doomsday tick goes to the host as well. */
    static void sendDoom(int k, float ax, float ay, float spin, float half, float nova, boolean seq, int shot) {
        if (!extra || !guestActive()) return;
        try {
            ByteArrayOutputStream bo = new ByteArrayOutputStream(40);
            DataOutputStream o = new DataOutputStream(bo);
            o.writeByte(k); o.writeFloat(ax); o.writeFloat(ay); o.writeFloat(spin); o.writeFloat(half); o.writeFloat(nova);
            o.writeBoolean(seq); o.writeInt(shot);
            sendReliable(MSG_DOOM, bo);
        } catch (Throwable t) {
            // one tick not mirrored
        }
    }

    private static boolean isOwnDrone(Object sender) {
        Ennemis[] dr = Mod.playerDrones();
        return sender != null && (sender == dr[0] || sender == dr[1]);
    }

    private static void extraSwitch(long now) {
        if (now - extraAt < 2000) return;
        extraAt = now;
        String v = ModDev.testValue("corsair_bh04");
        if (v != null) { boolean on = v.trim().equals("on"); if (on != extra) { extra = on; ModDev.ev("lan", "bh04 prototype " + on); } }
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
        if (soloReset) { soloReset = false; dmgBase = -1; dmgSeen = 0; xpBase = -1; xpSeen = 0; pulled = false; }
        if (solo) { synchronized (inLock) { inKills.clear(); } return; }   // flying its own game: own sector, own missions
        Level lv = ObjectRegistry.INSTANCE.game.currentLevel;
        // the guest's own sector stays empty: the host's world is what it sees and fights
        for (Element e : lv.elements) {
            if (e == ps || e.removed || Mod.isDrone(e)) continue;   // own drones stay
            if (e instanceof LootElement && myLoot.containsKey(e)) continue;   // v45: loot this player rolled
            if (e instanceof Ennemis || e instanceof CivilShip || e instanceof Asteroid || e instanceof LootElement || e instanceof Mine
                || (e instanceof Projectile && ((Projectile) e).sender != ps)) e.remove();
        }
        ArrayList<Kill> kills = null;
        synchronized (inLock) { if (!inKills.isEmpty()) { kills = new ArrayList<Kill>(inKills); inKills.clear(); } }
        if (kills != null && f != null && lv.id != null && lv.id.levelName.equals(f.level)) for (Kill k : kills) rollLoot(k);   // only in the host's sector
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
                    if (to == LevelId.FFA_THE_PLAYER_PAY) {
                        if (lv.id != LevelId.FFA_THE_PLAYER_PAY && duelFrom == null) duelFrom = lv.id;   // the way home after the duel
                        lv.requestChangeLevel(to.levelName, ARENA_GATE);
                    }
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
        long capNow = System.currentTimeMillis();
        float capS = capAt == 0 ? 0 : Math.min(2.0f, (capNow - capAt) / 1000.0f);
        if (capAt == 0) { dmgRoom = 1.5f * ps.maxLife; xpRoom = 1.0e9f; }   // a new link starts with full room
        capAt = capNow;
        // v45 guest protection: at most one full hull of damage per second, one level of XP per minute, whatever the host sends
        dmgRoom = Math.min(1.5f * ps.maxLife, dmgRoom + ps.maxLife * capS);
        if (d > 0 && !ps.removed && ps.life > 0) {
            dmgSeen += d;
            if (d > dmgRoom) { d = Math.max(0, dmgRoom); flags++; }
            dmgRoom -= d;
            if (d > 0) hurt(ps, d);
        }
        // shared XP
        if (xpBase < 0) xpBase = f.xp;
        long x = f.xp - xpBase - xpSeen;
        try {
            float bar = Math.max(1000f, ObjectRegistry.INSTANCE.game.playerInfo.nextLevelXp);
            xpRoom = Math.min(bar, xpRoom + bar * capS / 60.0f);
        } catch (Throwable t) { /* no room added */ }
        if (x > 0) {
            xpSeen += x;
            if (x > (long) xpRoom) { x = (long) Math.max(0, xpRoom); flags++; }
            xpRoom -= x;
            try { if (x > 0) ObjectRegistry.INSTANCE.game.playerInfo.addXp((int) Math.min(Integer.MAX_VALUE, x)); } catch (Throwable t) { /* no xp */ }
        }
        guestMission(ps, f);
        float lx = f.hx, ly = f.hy;
        if (f.lean) {   // internet stream: drawn one frame behind, gliding to the newest
            float t = f.span <= 0 ? 1f : Math.min(1f, (System.currentTimeMillis() - f.at) / (float) f.span);
            ModLanSync.glide(f.recs, f.n, t);
            if (f.span > 0) { lx = f.phx + (f.hx - f.phx) * t; ly = f.phy + (f.hy - f.phy) * t; }
        }
        replay(f.recs, f.n, 0, 0);
        ModLanUi.drawLabel(lx, ly + TAG_UP, peerNick, peerCtry);
    }

    private static long capAt;
    private static float dmgRoom, xpRoom;

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
        PlayerShip ps = ObjectRegistry.INSTANCE.playerShip;
        shipNow = e == ps;
        if (e instanceof LootElement && myLoot.containsKey(e)) return true;   // v45: own loot is drawn locally
        if (e != ps) return false;
        InFrame f;
        synchronized (inLock) { f = inFrame; }
        guestMarks(ps, f);   // same pass as the stock radar dots
        return true;
    }

    static boolean guestActive() {
        return role == GUEST && connected && !solo;
    }

    private static boolean shipNow;

    static void shipStart() { if (guestActive() && shipNow) shipFrom = queueSize(); }

    static void shipEnd() { if (guestActive() && shipNow) shipTo = queueSize(); }

    /** ModPolice.factionGuns (Level.commitChanges): new elements of this frame. The guest sends its own shots. */
    static void added(List<?> toAdd) {
        if (!guestActive() || toAdd == null) return;
        try {
            PlayerShip ps = ObjectRegistry.INSTANCE.playerShip;
            for (Object o : toAdd) {
                if (o instanceof LootElement) { myLoot.put((Element) o, Boolean.TRUE); lootMine++; continue; }   // v45: only this player's rolls add loot here
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
            long nowMs = System.currentTimeMillis();
            if (nowMs - lastSendMs < 1000 / ModLanSync.hz() - 3) return;   // v45: at most SEND_HZ frames a second (15 or 10 on internet links), whatever the game's frame rate
            lastSendMs = nowMs;
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
                fr.testudo.spacecorsair.business.player.PlayerInfo pinf = ObjectRegistry.INSTANCE.game.playerInfo;
                long xp = pinf.curXp;
                if (xpLastHost >= 0) {
                    if (pinf.level == xpLastLevel && xp > xpLastHost) xpSent += xp - xpLastHost;
                    else if (pinf.level == xpLastLevel + 1 && xpLastNext > 0) xpSent += Math.max(0, xpLastNext - xpLastHost) + Math.max(0, xp);   // GPT check BH08: the award that levelled the host up counts
                    // anything else (several levels at once, a lower level): baseline only
                }
                xpLastHost = xp;
                xpLastLevel = pinf.level;
                xpLastNext = pinf.nextLevelXp;
                if (ModLanSync.on) { leanHost(q, size, ps, lv, nowMs); return; }
                o.writeLong(xpSent);
                ByteArrayOutputStream rb = new ByteArrayOutputStream(32768);
                DataOutputStream ro = new DataOutputStream(rb);
                int n = capture(q, 0, size, proxyFrom < 0 ? 0 : proxyFrom, proxyTo < 0 ? 0 : proxyTo, 0, 0, ro, MAX_REMOTE);
                o.writeShort(n);
                rb.writeTo(o);
                o.writeBoolean(pvp); o.writeInt(round); o.writeShort(hostWins); o.writeShort(guestWins);
                o.writeUTF(missionId()); o.writeBoolean(missionDone());
                byte[] mk = marksOut;
                int mn = mk == null ? 0 : ((mk[0] & 255) << 8) | (mk[1] & 255);
                o.writeShort(mn); o.writeInt(mn == 0 ? 0 : mk.length - 2); if (mn > 0) o.write(mk, 2, mk.length - 2);
                o.flush();
                sendLatest(MSG_FRAME, bo);
                sentFrames++;
            } else if (role == GUEST) {
                ByteArrayOutputStream bo = new ByteArrayOutputStream(4096);
                DataOutputStream o = new DataOutputStream(bo);
                Level lv = ObjectRegistry.INSTANCE.game.currentLevel;
                boolean alive = !ps.removed && ps.life > 0 && !ObjectRegistry.INSTANCE.game.mapMode && !solo;
                boolean lean = ModLanSync.on;
                if (lean && !alive) { if (nowMs - idleAt < 500) return; idleAt = nowMs; }   // docked, on the map or solo: two small messages a second
                if (lean) ModLanSync.frameStart();
                o.writeBoolean(alive);
                o.writeUTF(lv.id != null ? lv.id.levelName : "");
                o.writeFloat(ps.position.x); o.writeFloat(ps.position.y);
                o.writeFloat(ps.speed.x); o.writeFloat(ps.speed.y); o.writeFloat(ps.spin);
                o.writeFloat(ps.life); o.writeFloat(ps.maxLife);
                o.writeFloat(viewHalfW()); o.writeFloat(viewHalfH());
                ByteArrayOutputStream rb = new ByteArrayOutputStream(4096);
                DataOutputStream ro = new DataOutputStream(rb);
                int n = 0;
                if (shipFrom >= 0 && shipTo > shipFrom && (alive || !lean)) n = capture(q, shipFrom, shipTo, 0, 0, ps.position.x, ps.position.y, ro, 200);
                o.writeShort(n);
                rb.writeTo(o);
                o.writeInt(defeats);
                o.writeBoolean(solo); o.writeUTF(missionId());
                o.flush();
                if (lean) flushStyles();
                declare(nowMs);
                sendLatest(lean ? MSG_LSTATE : MSG_STATE, bo);
                sentFrames++;
            }
        } catch (Throwable t) {
            // frame not sent
        }
    }

    private static long xpLastHost = -1, lastSendMs, idleAt, xpLastNext;
    private static int xpLastLevel;
    static final float FAR_FX = 1100f, FAR_FX_SIZE = 400f;
    static volatile long fxDropped;

    // v45: where an internet or local guest was, kept so the ship is still there after leaving and restarting
    private static long posAt;
    private static boolean posArmed = true, posLive;

    private static void guestPos(PlayerShip ps, long now) {
        try {
            Level lv = ObjectRegistry.INSTANCE.game.currentLevel;
            if (lv == null || lv.id == null) return;
            boolean guest = connected && role == GUEST;
            if (guest || posLive) {
                // from the first guest session on, the record follows the ship (also after leaving), so it is never an old place
                posArmed = false;
                if (now - posAt < 10000) return;
                if (ps.isDocked) { if (posLive) { posLive = false; posAt = now; lanPrefs().edit().remove("pos").apply(); } return; }   // docked: the stock game starts at the station
                if ((guest && solo) || pvp || ps.removed || ObjectRegistry.INSTANCE.game.mapMode || lv.id == LevelId.FFA_THE_PLAYER_PAY) return;
                posAt = now;
                posLive = true;
                lanPrefs().edit().putString("pos", posLine(lv.id.levelName, ps.position.x, ps.position.y, now)).apply();
                return;
            }
            if (!posArmed) return;
            posArmed = false;   // once, at the first flying frame after the game starts
            String v = lanPrefs().getString("pos", "");
            if (v.length() == 0) return;
            lanPrefs().edit().remove("pos").apply();
            float[] at = posOf(v, lv.id.levelName, now);
            if (at == null || ps.isDocked) return;
            ps.position.set(at[0], at[1]);
            ps.speed.set(0, 0);
            ps.updateSapCoords();
            ModDev.ev("lan", "guest position restored in " + lv.id.levelName);
        } catch (Throwable t) {
            // not recorded this time
        }
    }

    static String posLine(String level, float x, float y, long now) { return level + "|" + x + "|" + y + "|" + now; }

    /** The recorded position when it is for this sector, finite, and at most a week old; else null. */
    static float[] posOf(String v, String level, long now) {
        try {
            String[] p = v.split("\\|");
            if (p.length != 4 || !p[0].equals(level)) return null;
            float x = Float.parseFloat(p[1]), y = Float.parseFloat(p[2]);
            long at = Long.parseLong(p[3]);
            if (bad(x) || bad(y) || Math.abs(x) > 1.0e6f || Math.abs(y) > 1.0e6f || now - at > 7L * 24 * 3600 * 1000 || at > now + 60000) return null;
            return new float[]{x, y};
        } catch (Throwable t) {
            return null;
        }
    }

    private static void flushStyles() {
        synchronized (ModLanSync.class) {
            for (byte[] b : ModLanSync.newStyles) {
                byte[] m = new byte[5 + b.length];
                m[0] = (byte) MSG_STYLE; m[4] = (byte) b.length;
                System.arraycopy(b, 0, m, 5, b.length);
                synchronized (outLock) { reliable.add(m); }
            }
            ModLanSync.newStyles.clear();
        }
    }

    /** Host frame in the small format (internet links). Slow values go out on change and twice a second, marks twice a second. */
    private static void leanHost(RenderQueue q, int size, PlayerShip ps, Level lv, long now) throws Exception {
        InState gs = inState;
        boolean there = gs != null && gs.alive && now - gs.at < 2000 && lv.id != null && lv.id.levelName.equals(gs.level);
        if (!there) { if (now - idleAt < 500) return; idleAt = now; }   // the guest is docked, on its map or elsewhere: keepalive only
        ByteArrayOutputStream sb = new ByteArrayOutputStream(96);
        DataOutputStream so = new DataOutputStream(sb);
        so.writeUTF(lv.id != null ? lv.id.levelName : "");
        so.writeFloat(dmgSent); so.writeLong(xpSent);
        so.writeBoolean(pvp); so.writeInt(round); so.writeShort(hostWins); so.writeShort(guestWins);
        so.writeUTF(missionId()); so.writeBoolean(missionDone());
        byte[] slow = sb.toByteArray();
        boolean sendSlow = now - slowAt >= 500 || !java.util.Arrays.equals(slow, slowLast);
        byte[] mk = marksOut;
        int mn = mk == null ? 0 : ((mk[0] & 255) << 8) | (mk[1] & 255);
        boolean sendMarks = there && mn > 0 && now - marksAt >= ModLanSync.marksEveryMs();
        ByteArrayOutputStream bo = new ByteArrayOutputStream(8192);
        DataOutputStream o = new DataOutputStream(bo);
        o.writeByte((sendSlow ? 1 : 0) | (sendMarks ? 2 : 0));
        o.writeFloat(ps.position.x); o.writeFloat(ps.position.y);
        if (sendSlow) { o.write(slow); slowAt = now; slowLast = slow; }
        ByteArrayOutputStream rb = new ByteArrayOutputStream(8192);
        DataOutputStream ro = new DataOutputStream(rb);
        ModLanSync.frameStart();
        int n = there ? capture(q, 0, size, proxyFrom < 0 ? 0 : proxyFrom, proxyTo < 0 ? 0 : proxyTo, ps.position.x, ps.position.y, ro, MAX_REMOTE) : 0;
        o.writeShort(n);
        rb.writeTo(o);
        if (sendMarks) { o.writeShort(mn); o.writeInt(mk.length - 2); o.write(mk, 2, mk.length - 2); marksAt = now; }
        o.flush();
        flushStyles();
        sendLatest(MSG_LFRAME, bo);
        sentFrames++;
    }

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
    private static int seenDefeats, seenRound, defeatRound = -1;
    private static long jumpAt;
    private static boolean lostRound, restore;
    private static long roundAt;   // GPT check BH06: start of the current duel round
    /** Owner 2026-11-18: a duel ends on the first death. Host: when the decided duel closes (0 = still fighting). */
    private static long duelEndAt;
    static final long DUEL_END_MS = 3000;   // the result shows and both phones see it before the ships go home

    /** The duel has a winner (round 1 was decided): further hits change nothing until it closes. */
    static boolean duelDecided() { return role == GUEST ? seenRound > 1 : round > 1; }

    /** Host UI: start or end a duel. The host's game takes both ships to the player bay (FFA, off the map). */
    static volatile boolean pvpRoom;   // v45 host room setting, off by default: no duel while off

    static void setPvpRoom(boolean on) {
        pvpRoom = on;
        if (!on) pvpWanted = false;
        ModDev.ev("lan", "pvp room " + on);
    }

    static void duel(boolean on) {
        if (on && !pvpRoom) return;
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
            duelFrom = null;
            round = 1; hostWins = 0; guestWins = 0; roundDmg = 0; roundAt = System.currentTimeMillis();
            lostRound = false; restore = false;   // GPT check BH07
            duelEndAt = 0;
            seenDefeats = s != null ? s.defeats : 0;
            jumpedIn = false;
            removeProxy();   // re-spawned on the duel side
        }
        if (pvp && !pvpWanted) {
            pvp = false;
            duelEndAt = 0;
            removeProxy();
            leaveBay();
            return;
        }
        if (!pvp) return;
        if (duelEndAt > 0 && System.currentTimeMillis() >= duelEndAt) { duelEndAt = 0; pvpWanted = false; ModDev.ev("lan", "duel over " + hostWins + "-" + guestWins); return; }   // cross-check: also when the host left the bay
        if (!inBay()) {
            long now = System.currentTimeMillis();
            if (!jumpedIn || now - jumpAt > 6000) {   // also back in after a detour (the host left the bay)
                jumpedIn = true;
                jumpAt = now;
                if (lv.id != LevelId.FFA_THE_PLAYER_PAY && duelFrom == null) duelFrom = lv.id;
                lv.requestChangeLevel(LevelId.FFA_THE_PLAYER_PAY.levelName, ARENA_GATE);
                ModDev.ev("lan", "host jumps to the duel bay from " + duelFrom);
            }
            return;
        }
        if (duelEndAt > 0) {   // owner 2026-11-18: decided; no more rounds. Both ships stay at full hull, then go home
            if (lostRound) { lostRound = false; restore = true; }
            if (restore) { restore = false; refill(ps); }
            if (System.currentTimeMillis() >= duelEndAt) { duelEndAt = 0; pvpWanted = false; ModDev.ev("lan", "duel over " + hostWins + "-" + guestWins); }
            return;
        }
        // v45: the host decides. A guest that soaked 4 hulls of damage without reporting a lost round has lost it.
        // GPT check BH06: what the declared shield can absorb and regenerate during this round counts too
        ModLanCheck.Limits lmS = limits != null ? limits : undeclared();
        float secs = Math.max(0f, (System.currentTimeMillis() - roundAt) / 1000f);
        boolean soaked = s != null && s.maxLife > 0 && roundDmg > 4.0f * s.maxLife + 2000f + lmS.shield + lmS.regen * secs;
        if (soaked) { flags++; ModDev.ev("lan", "duel round forced, dmg " + roundDmg); }
        if (s != null && (s.defeats > seenDefeats || soaked)) {   // the guest's hull hit its floor: host wins the round
            roundDmg = 0; roundAt = System.currentTimeMillis();
            seenDefeats = s.defeats;
            hostWins++;
            round++;
            restore = true;
            if (proxy != null) explode(proxy.position.x, proxy.position.y);   // audit F11: the loser's ship blows up
            roundText(ps, true);
            duelEndAt = System.currentTimeMillis() + DUEL_END_MS;   // owner 2026-11-18: the first death ends the duel
        }
        else if (lostRound) {   // the host's hull hit its floor: guest wins the round (verify 1: never in the same tick as a host win)
            lostRound = false;
            roundDmg = 0; roundAt = System.currentTimeMillis();
            guestWins++;
            round++;
            restore = true;
            explode(ps.position.x, ps.position.y);
            if (proxy != null) respawnApart(ps, proxy.position.x, proxy.position.y);
            roundText(ps, false);
            if (duelEndAt == 0) duelEndAt = System.currentTimeMillis() + DUEL_END_MS;   // owner 2026-11-18: the first death ends the duel
        }
        if (restore) { restore = false; refill(ps); }
    }

    /** After a duel (ended, or the link lost): the bay has no gates, so the game takes the ship back where it came from. */
    private static void leaveBay() {
        LevelId home = duelFrom;
        if (home == null || pvp) return;
        duelFrom = null;
        try {
            if (inBay()) {
                ObjectRegistry.INSTANCE.game.currentLevel.requestChangeLevel(home.levelName, home.jumpPortalName);
                ModDev.ev("lan", "leaving the duel bay for " + home);
            }
        } catch (Throwable t) {
            // stays in the bay; the galaxy map still jumps
        }
    }

    private static void guestDuel(PlayerShip ps, InFrame f) {
        pvp = f.pvp;
        if (!pvp) { seenRound = 0; defeatRound = -1; lostRound = false; return; }   // owner 2026-11-18: the next duel starts fresh (no stale result text)
        if (lostRound) {   // once per round: further hits at the floor before the host's next round count nothing
            lostRound = false;
            if (defeatRound != seenRound && !duelDecided()) {
                defeatRound = seenRound; defeats++;
                explode(ps.position.x, ps.position.y);   // audit F11: destroyed, back at full hull away from the host
                respawnApart(ps, f.hx, f.hy);
            }
            refill(ps);
        }
        if (f.round != seenRound) {
            boolean won = f.guestWins > guestWins;
            boolean first = seenRound == 0;
            if (!first && !won && defeatRound != seenRound && seenRound <= 1) {   // fix list 11A: a round the host forced also blows this ship up
                defeatRound = seenRound;
                explode(ps.position.x, ps.position.y);
                respawnApart(ps, f.hx, f.hy);
            }
            seenRound = f.round;
            hostWins = f.hostWins; guestWins = f.guestWins;
            refill(ps);
            if (!first && won && seenRound <= 2) explode(f.hx, f.hy);   // the host's ship blew up
            if (!first && seenRound <= 2) roundText(ps, won);   // owner 2026-11-18: one death decides the duel
        }
    }

    private static void roundText(PlayerShip ps, boolean won) {
        int mine = role == HOST ? hostWins : guestWins, theirs = role == HOST ? guestWins : hostWins;
        Mod.floatText(ps, (won ? ModLang.tr("DUEL WON") : ModLang.tr("DUEL LOST")) + "  " + myNick() + " " + mine + " - " + theirs + " " + peerNick,
            won ? 0.3f : 1.0f, won ? 1.0f : 0.4f, won ? 0.5f : 0.3f);
        ModDev.ev("lan", "duel round " + (won ? "won" : "lost") + " " + mine + "-" + theirs);
    }

    /** Audit F11: the destroyed duel ship's explosion (fireball and the game's explosion sound). */
    private static void explode(float x, float y) {
        try {
            ModFx.boom(x, y, 480, 900, 1.0f, 0.8f, 0.6f);
            ObjectRegistry.INSTANCE.soundManager.playRandomExplode();
        } catch (Throwable t) {
            // no effect
        }
    }

    /** Audit F11: the loser comes back at the duel's starting distance (2400) from the winner, standing still. */
    private static void respawnApart(PlayerShip ps, float ox, float oy) {
        float dx = ps.position.x - ox, dy = ps.position.y - oy;
        float d = (float) Math.hypot(dx, dy);
        if (d < 1) { dx = 1; dy = 0; d = 1; }
        ps.position.set(ox + dx / d * 2400, oy + dy / d * 2400);
        ps.speed.set(0, 0);
        ps.updateSapCoords();
    }

    private static void refill(PlayerShip ps) {
        ps.life = ps.maxLife;
        ps.lifeInPourc = 100.0f;
    }

    /**
     * ModPrologue.damage (start of PlayerShip.applyDamage, before shields): in a duel the killing hit is the ship's death.
     * Audit F11 / owner 2026-11-18: the ship explodes and respawns at full hull, away from the winner, with no death fee or
     * loss (the game's own death screen and fee never run), and that first death ends the duel.
     */
    static float duelFloor(PlayerShip ps, float amount) {
        if (!pvp || !connected || ps == null || amount <= 0 || !inBay()) return amount;
        float sh = 0;
        try { if (ps.shield != null) sh = Math.max(0f, ps.shield.currentValue); } catch (Throwable t) { sh = 0; }
        float room = ps.life - 1.0f + sh;   // second check S6: what the shield would absorb does not lose the round
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

    static void hostForTest() { host(); autoAccept = true; }

    /** JVM test: no APK there, so the content hash is set by hand. */
    static void hashForTest(String h) { hashCache = h; }

    static void hostNetForTest() { hostNet(); autoAccept = true; }

    static void autoAcceptForTest() { autoAccept = true; }

    static byte[] packedForTest(int type, byte[] raw) { return packed(type, raw); }

    static Class<?> shotClassForTest(String n) { return shotClass(n); }

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
    /** hooks56 (public: called from fr.testudo.spacecorsair.utils.MenuDisplayer): flight menu Multiplayer entry. */
    public static void menuEntry(android.content.Context ctx, android.view.View menuView) { ModLanUi.menuEntry(ctx, menuView); }

    /** hooks56: flight menu opening, refresh the entry's label. */
    public static void menuShown() { ModLanUi.menuShown(); }

    static String buttonLabel() {
        if (!connected && role == NONE) return ModLang.tr("Multiplayer");
        return ModLang.tr("Multiplayer") + (connected ? " *" : " ...");
    }

    /** Dialog text: same mission = shared objective; different = each flies its own (guest: Fly my own missions). */
    private static String missionLine() {
        String mine = missionId(), theirs = "";
        if (role == HOST) { InState st = inState; theirs = st != null ? st.mission : ""; if (st != null && st.solo) return ModLang.tr("Your friend is flying their own missions."); }
        else { InFrame f; synchronized (inLock) { f = inFrame; } theirs = f != null && f.mission != null ? f.mission : ""; if (solo) return ModLang.tr("You are flying your own missions. Follow the host to fight together again."); }
        if (mine.length() > 0 && mine.equals(theirs)) return ModLang.tr("Same mission: you work on it together. When the host completes it, it completes for both.");
        return ModLang.tr("Missions: pick the same mission to work on it together, or the guest can fly their own missions and come back later.");
    }

    static void showMenu(final Activity a) {
        try {
            lastAct = a;
            warmHash();
            if (role == HOST && pendingWho != null && decision == 0) { acceptDialog(a, pendingWho, askId); return; }
            final Runnable again = new Runnable() { public void run() { showMenu(a); } };
            if (!ModLanUi.hasProfile()) { ModLanUi.whoAreYou(a, again); return; }   // first time: nickname and country
            String title = ModLang.tr("Multiplayer");
            if (connected && role == HOST) {
                String msg = ModLang.tr("You are hosting.") + " " + peerLabel() + " " + ModLang.tr("plays in your sector.")
                    + "\n\n" + ModLang.tr("PvP is") + " " + (pvpRoom ? ModLang.tr("ON") : ModLang.tr("OFF")) + ". "
                    + ModLang.tr("PvP duel: both ships go to the old multiplayer bay and fight until one is destroyed. The destroyed ship respawns at full hull with no death fee, then both ships go back. Undock to start.")
                    + (pvp ? "\n\n" + ModLang.tr("Duel score") + " " + hostWins + " - " + guestWins : "")
                    + "\n\n" + missionLine() + netLines();
                ModLanUi.menu(a, title, null, msg, new String[]{
                    pvpRoom ? ModLang.tr("PvP: ON (tap to turn off)") : ModLang.tr("PvP: OFF (tap to turn on)"),
                    !pvpRoom ? null : pvpWanted ? ModLang.tr("End duel") : ModLang.tr("PvP duel"),
                    ModLang.tr("Kick player"), internet ? ModLang.tr("Report player") : null, ModLang.tr("Disconnect"), ModLang.tr("Close")
                }, new Runnable[]{
                    new Runnable() { public void run() { setPvpRoom(!pvpRoom); showMenu(a); } },
                    new Runnable() { public void run() { duel(!pvpWanted); } },
                    new Runnable() { public void run() { kick(); } },
                    new Runnable() { public void run() { report(a); } },
                    new Runnable() { public void run() { noRejoin(); ModLobby.leave(); stop(); } },
                    null
                });
            } else if (connected) {
                String msg = ModLang.tr("You joined the game of") + " " + peerLabel() + ". " + ModLang.tr("You follow the host between sectors.")
                    + (pvp ? "\n\n" + ModLang.tr("Duel score") + " " + hostWins + " - " + guestWins : "")
                    + "\n\n" + missionLine() + netLines();
                ModLanUi.menu(a, title, null, msg, new String[]{
                    solo ? ModLang.tr("Follow the host") : ModLang.tr("Fly my own missions"), internet ? ModLang.tr("Report player") : null, ModLang.tr("Disconnect"), ModLang.tr("Close")
                }, new Runnable[]{
                    new Runnable() { public void run() { setSolo(!solo); } },
                    new Runnable() { public void run() { report(a); } },
                    new Runnable() { public void run() { noRejoin(); ModLobby.leave(); stop(); } },
                    null
                });
            } else if (role == HOST && internet) {
                final String code = ModLobby.code;
                String msg = (ModLobby.status.length() > 0 ? ModLobby.status : status)
                    + (code.length() == 4 ? "\n\n" + ModLang.tr("Game code:") + "  " + code + "\n\n"
                        + (ModLobby.pub ? ModLang.tr("Public game: listed for everyone, and anyone with the code can join.") : ModLang.tr("Private game: only players with the code can join."))
                        + " " + ModLang.tr("You accept or decline each player.") : "");
                ModLanUi.menu(a, title, null, msg, new String[]{
                    code.length() == 4 ? ModLang.tr("Share code") : null,
                    pvpRoom ? ModLang.tr("PvP: ON (tap to turn off)") : ModLang.tr("PvP: OFF (tap to turn on)"), ModLang.tr("Stop hosting"), ModLang.tr("Close")
                }, new Runnable[]{
                    new Runnable() { public void run() { shareCode(a, code, true); } },
                    new Runnable() { public void run() { setPvpRoom(!pvpRoom); showMenu(a); } },
                    new Runnable() { public void run() { noRejoin(); ModLobby.leave(); stop(); } },
                    null
                });
            } else if (role == HOST) {
                final String lc = lanCode;
                String msg = status + "\n\n" + ModLang.tr("Your address:") + " " + myAddresses() + "\n\n"
                    + (lanPub ? ModLang.tr("Public local game: anyone on this network can ask to join.")
                        : ModLang.tr("Game code:") + "  " + lc + "\n\n" + ModLang.tr("Private local game: only players with the code can join."))
                    + " " + ModLang.tr("You accept or decline each player.");
                ModLanUi.menu(a, title, null, msg, new String[]{
                    !lanPub && lc.length() == 4 ? ModLang.tr("Share code") : null,
                    pvpRoom ? ModLang.tr("PvP: ON (tap to turn off)") : ModLang.tr("PvP: OFF (tap to turn on)"), ModLang.tr("Stop hosting"), ModLang.tr("Close")
                }, new Runnable[]{
                    new Runnable() { public void run() { shareCode(a, lc, false); } },
                    new Runnable() { public void run() { setPvpRoom(!pvpRoom); showMenu(a); } },
                    new Runnable() { public void run() { noRejoin(); stop(); } },
                    null
                });
            } else {
                final String nc = needCode;
                if (nc != null && role == NONE) { needCode = null; askCode(a, nc); return; }
                String msg = status.length() > 0 ? status : ModLobby.status;
                final boolean net = ModLobby.available();
                if (net && !ModSaveSig.publicOk()) msg += (msg.length() > 0 ? "\n\n" : "") + ModLang.tr("Your save was changed outside the game. Public games are locked for 24 hours; private codes and local games still work.");
                ModLanUi.menu(a, title, ModLanUi.profileRow(a, again), msg, new String[]{
                    "#" + ModLang.tr("Local game (same Wi-Fi)") + "|" + ModLang.tr("Play with someone on the same Wi-Fi or phone hotspot. No internet needed. Hosts on your network appear here automatically."),
                    ModLang.tr("Host public local game"), ModLang.tr("Host private local game (code)"), ModLang.tr("Find local games"), ModLang.tr("Join by address"),
                    "#" + ModLang.tr("Public games (internet)") + "|" + ModLang.tr("Play with anyone over the internet. Public games show up here for everyone; tap Join to enter. Private games are hidden and need the 4-character code. Uses mobile data or Wi-Fi."),
                    net ? null : ModLang.tr("Not available yet in this version"),
                    net && !ModLobby.PUBLIC_ON ? ModLang.tr("Public games open in a later version. Private games with a code work now.") : null,
                    net && ModLobby.PUBLIC_ON ? ModLang.tr("Find public games") : null,
                    net && ModLobby.PUBLIC_ON ? ModLang.tr("Host public game") : null,
                    net ? ModLang.tr("Host private game (code only)") : null,
                    net ? ModLang.tr("Join by code") : null,
                    net ? (ModLobby.hideIp() ? ModLang.tr("Hide my IP: ON (relay only)") : ModLang.tr("Hide my IP: OFF")) : null,
                    net ? (ModLobby.saverPref() ? ModLang.tr("Data saver: ON") : ModLang.tr("Data saver: AUTO (on with mobile data or relay)")) : null,
                    net ? ModLang.tr("Privacy") : null,
                    ModLang.tr("Close")
                }, new Runnable[]{
                    null,
                    new Runnable() { public void run() { host(true); showMenu(a); } },
                    new Runnable() { public void run() { host(false); showMenu(a); } },
                    new Runnable() { public void run() { findHosts(a); } },
                    new Runnable() { public void run() { pickHost(a, Collections.<String>emptyList()); } },
                    null, ModLanUi.DISABLED, ModLanUi.DISABLED,
                    new Runnable() { public void run() { publicList(a); } },
                    new Runnable() { public void run() { if (!ModSaveSig.publicOk()) { showMenu(a); return; } ModLobby.host(true); showMenu(a); } },
                    new Runnable() { public void run() { ModLobby.host(false); showMenu(a); } },
                    new Runnable() { public void run() { typeCode(a); } },
                    new Runnable() { public void run() { ModLobby.setHideIp(!ModLobby.hideIp()); showMenu(a); } },
                    new Runnable() { public void run() { ModLobby.setSaver(!ModLobby.saverPref()); showMenu(a); } },
                    new Runnable() { public void run() { privacy(a); } },
                    null
                });
            }
        } catch (Throwable t) {
            // no dialog
        }
    }

    private static void shareCode(Activity a, String code, boolean net) {
        try {
            android.content.Intent i = new android.content.Intent(android.content.Intent.ACTION_SEND);
            i.setType("text/plain");
            i.putExtra(android.content.Intent.EXTRA_TEXT, (net ? ModLang.tr("Join my Space Corsair game. Multiplayer, Join by code:")
                : ModLang.tr("Join my local Space Corsair game (same Wi-Fi). Multiplayer, Find local games, code:")) + " " + code);
            a.startActivity(android.content.Intent.createChooser(i, ModLang.tr("Share code")));
        } catch (Throwable t) {
            // no app to share with
        }
    }

    /** Audit E4 (owner 2026-11-17): what the lobby service keeps, as built. */
    private static void privacy(Activity a) {
        try {
            new AlertDialog.Builder(a).setTitle(ModLang.tr("Privacy")).setMessage(ModLang.tr("For each open internet game the lobby service keeps on disk: its code, nickname, country, install ids, game version and settings. No IP addresses are stored. The record is deleted when the game closes, or 2 hours after its last heartbeat. Connection addresses are kept in memory only, while the game is open. Also kept: ban counters (24 hours), reports (30 days) and anonymous damage samples with no install id or nickname (30 days)."))
                .setPositiveButton(ModLang.tr("OK"), null).show();
        } catch (Throwable t) {
            // no dialog
        }
    }

    private static String netLines() {
        String l = ModLobby.linkLine();
        return l.length() == 0 ? "" : "\n\n" + l;
    }

    /** Report button (internet games): the chat of this session and what the checks flagged go to the lobby service. */
    private static void report(final Activity a) {
        new AlertDialog.Builder(a).setTitle(ModLang.tr("Report player"))
            .setMessage(ModLang.tr("Send a report about this player? It contains the chat of this game and what the anti-cheat checks counted. Nothing else."))
            .setPositiveButton(ModLang.tr("Send"), new DialogInterface.OnClickListener() {
                public void onClick(DialogInterface d, int w) {
                    String chat = ModLanUi.chatText();
                    String[] ls = chat.split("\n");
                    StringBuilder b = new StringBuilder("flags=" + flags + " strikes=" + strikes + " role=" + role + "\n");
                    for (int i = Math.max(0, ls.length - 50); i < ls.length; i++) b.append(ls[i]).append('\n');
                    ModLobby.report(b.toString(), new Runnable() { public void run() { a.runOnUiThread(new Runnable() { public void run() {
                        try { if (!a.isFinishing()) android.widget.Toast.makeText(a, ModLobby.status, android.widget.Toast.LENGTH_LONG).show(); } catch (Throwable t) { /* gone */ }
                    } }); } });
                }
            }).setNegativeButton(ModLang.tr("Close"), null).show();
    }

    /** The public games on this version; one tap on a row joins. */
    private static void publicList(final Activity a) {
        ModLanUi.publicList(a, new ModLanUi.CodeCb() { public void code(String c) { joinCode(a, c); } });
    }

    private static void typeCode(final Activity a) {
        ModLanUi.codeBoxes(a, new ModLanUi.CodeCb() { public void code(String c) { joinCode(a, c); } });
    }

    private static void joinCode(final Activity a, final String code) {
        final AlertDialog wait = new AlertDialog.Builder(a).setTitle(ModLang.tr("Multiplayer"))
            .setMessage(ModLang.tr("Connecting... This can take up to a minute. The host has to accept.")).setCancelable(false)
            .setNegativeButton(ModLang.tr("Cancel"), new DialogInterface.OnClickListener() { public void onClick(DialogInterface d, int w) { ModLobby.leave(); stop(); } }).show();
        new Thread(new Runnable() {
            public void run() {
                final boolean ok = ModLobby.join(code);
                a.runOnUiThread(new Runnable() {
                    public void run() {
                        try { wait.dismiss(); } catch (Throwable t) { /* gone */ }
                        if (!ok && ModLobby.status.length() > 0 && role == NONE) status = ModLobby.status;
                        try { if (!a.isFinishing()) showMenu(a); } catch (Throwable t) { /* the screen went away */ }
                    }
                });
            }
        }, "lobby-join").start();
    }

    private static void findHosts(final Activity a) {
        final AlertDialog wait = new AlertDialog.Builder(a).setTitle(ModLang.tr("LAN co-op")).setMessage(ModLang.tr("Looking for games on this network...")).show();
        new Thread(new Runnable() {
            public void run() {
                final List<String> found = scan(4000);
                a.runOnUiThread(new Runnable() {
                    public void run() {
                        try { wait.dismiss(); } catch (Throwable t) { /* gone */ }
                        if (a.isFinishing()) return;
                        try { pickHost(a, found); } catch (Throwable t) { /* the screen went away */ }
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
                public void onClick(DialogInterface d, int w) {   // one tap joins; a private room asks for its code first
                    String ad = items[w].split(" ")[0];
                    if (items[w].contains(privTag())) askCode(a, ad); else connectTo(a, ad, "");
                }
            });
            b.setNegativeButton(ModLang.tr("Type address"), new DialogInterface.OnClickListener() {
                public void onClick(DialogInterface d, int w) { pickHost(a, Collections.<String>emptyList()); }
            });
        } else {
            b.setMessage(ModLang.tr("No game found. Type the host's address (shown on the host's LAN co-op screen):"));
            b.setView(ip);
            b.setPositiveButton(ModLang.tr("Join"), new DialogInterface.OnClickListener() {
                public void onClick(DialogInterface d, int w) { connectTo(a, ip.getText().toString().trim(), ""); }   // a private room answers BADCODE: the code is asked then
            });
            b.setNegativeButton(ModLang.tr("Close"), null);
        }
        b.show();
    }

    /** The private local room at addr: the 4 code boxes, then the join. */
    private static void askCode(final Activity a, final String addr) {
        ModLanUi.codeBoxes(a, new ModLanUi.CodeCb() { public void code(String c) { connectTo(a, addr, c); } });
    }

    private static void connectTo(final Activity a, final String addr, final String code) {
        if (addr.length() == 0) return;
        new Thread(new Runnable() {
            public void run() {
                join(addr, code);
                a.runOnUiThread(new Runnable() { public void run() { showMenu(a); } });
            }
        }, "lan-join").start();
    }
}
