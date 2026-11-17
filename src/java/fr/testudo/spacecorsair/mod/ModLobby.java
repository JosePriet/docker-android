package fr.testudo.spacecorsair.mod;

import fr.testudo.spacecorsair.engine.ObjectRegistry;

import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.HttpURLConnection;
import java.net.InetAddress;
import java.net.InetSocketAddress;
import java.net.URL;
import java.net.URLEncoder;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;

/**
 * v45 internet games (SPEC-FINAL sections 5 and 6): the game's side of the lobby service (server/rendezvous).
 *
 * <p>Hosting: a UDP socket is opened, its public address is found by STUN, and a lobby is created (public = listed
 * for everyone on the same version, private = reachable by its 4-character code only). The host's heartbeat is also
 * how it learns that someone is joining; both phones then punch a direct path, and fall back to the relay.
 * Nothing here runs unless the player hosts or joins an internet game.
 */
final class ModLobby {
    private ModLobby() {}

    /** The lobby service address. Empty = internet games are not switched on in this build. */
    static final String SERVICE = "https://sc-rendezvous.spacecs-coop.workers.dev";
    static final String[][] STUN = {{"stun.cloudflare.com", "3478"}, {"stun.l.google.com", "19302"}};
    static final int BEAT_MS = 8000, BEAT_FULL_MS = 30000, BEAT_SLOW_MS = 20000, BEAT_FAST_FOR_MS = 2 * 60 * 1000;
    private static volatile long openedAt;

    static boolean DEBUG;

    static boolean available() { return SERVICE.length() > 0; }

    /** Public (listed) games. The service has its own switch (PUBLIC_OPEN) and answers "closed" while it is off. */
    static final boolean PUBLIC_ON = true;

    // ------------------------------------------------------------------ service calls
    static final class Reply {
        String first = "";
        int status;
        final HashMap<String, String> f = new HashMap<String, String>();
        final ArrayList<String[]> rows = new ArrayList<String[]>();

        boolean ok() { return "ok".equals(first); }

        String get(String k) { String v = f.get(k); return v == null ? "" : v; }
    }

    /** Parses an answer: first line, key=value lines, tab-separated rows. Bounded; never throws on bad text. */
    static Reply parse(String text, int status) {
        Reply r = new Reply();
        r.status = status;
        if (text == null) return r;
        String[] lines = text.split("\n", -1);
        r.first = lines.length > 0 ? ModLan.clean(lines[0].trim(), 16) : "";
        for (int i = 1; i < lines.length && i < 80; i++) {
            String l = lines[i];
            if (l.length() == 0 || l.length() > 1200) continue;
            if (l.indexOf('\t') >= 0) { if (r.rows.size() < 60) r.rows.add(l.split("\t", -1)); continue; }
            int eq = l.indexOf('=');
            if (eq > 0 && eq <= 16) r.f.put(l.substring(0, eq), l.substring(eq + 1));
        }
        return r;
    }

    static String form(String... kv) {
        StringBuilder b = new StringBuilder();
        try {
            for (int i = 0; i + 1 < kv.length; i += 2) {
                if (kv[i + 1] == null) continue;
                if (b.length() > 0) b.append('&');
                b.append(kv[i]).append('=').append(URLEncoder.encode(kv[i + 1], "UTF-8"));
            }
        } catch (java.io.UnsupportedEncodingException e) { /* UTF-8 exists */ }
        return b.toString();
    }

    /** One HTTPS call. Never on the UI thread. An unreachable service gives a Reply with status 0. */
    static Reply call(String method, String path, String... kv) {
        HttpURLConnection c = null;
        try {
            String q = form(kv);
            URL u = new URL(SERVICE + path + ("GET".equals(method) && q.length() > 0 ? "?" + q : ""));
            c = (HttpURLConnection) u.openConnection();
            c.setConnectTimeout(6000);
            c.setReadTimeout(6000);
            c.setUseCaches(false);
            c.setRequestMethod(method);
            if ("POST".equals(method)) {
                byte[] body = q.getBytes("UTF-8");
                c.setDoOutput(true);
                c.setRequestProperty("Content-Type", "application/x-www-form-urlencoded");
                c.setFixedLengthStreamingMode(body.length);
                OutputStream o = c.getOutputStream();
                o.write(body);
                o.close();
            }
            int st = c.getResponseCode();
            InputStream in = st >= 400 ? c.getErrorStream() : c.getInputStream();
            ByteArrayOutputStream bo = new ByteArrayOutputStream();
            if (in != null) {
                byte[] buf = new byte[4096];
                int n;
                while ((n = in.read(buf)) > 0 && bo.size() < 65536) bo.write(buf, 0, n);
                in.close();
            }
            return parse(bo.toString("UTF-8"), st);
        } catch (Throwable t) {
            return new Reply();
        } finally {
            if (c != null) c.disconnect();
        }
    }

    // ------------------------------------------------------------------ audit D1/D2/D3: who may play online
    static volatile boolean peerDev;   // host: the service marks the joining guest as the registered DEV install

    /** True once the lobby service confirmed this install as the owner's registered DEV install (D1). */
    static boolean selfDev() { try { return prefs().getBoolean("dev_ok", false); } catch (Throwable t) { return false; } }

    private static void setSelfDev(Reply r) {
        try { if (r != null && r.ok() && r.get("dev").length() > 0) prefs().edit().putBoolean("dev_ok", "1".equals(r.get("dev"))).commit(); } catch (Throwable t) { /* kept */ }
    }

    /** Audit D3, owner 2026-11-17 (fix list 3B): no 24 h lock. A test switch file seen in this run turns internet games off
     *  until the game restarts (local games still work); the test profile cannot play multiplayer at all (ModLan too). */
    private static volatile boolean switchUsed;

    static void switchSeen() { switchUsed = true; }

    static boolean switchLocked() { return switchUsed; }

    /** Fix list 3B: the test profile never plays with others, DEV install or not (LAN and internet). */
    static String testProfileBlock() {
        return ModTestMode.on ? ModLang.tr("Multiplayer is off in the test profile. Log out of test mode to play with others.") : null;
    }

    /** Audit D1: the DEV hull or a DEV item is fitted. */
    static boolean devGear() {
        try {
            fr.testudo.spacecorsair.business.player.PlayerGear g = ObjectRegistry.INSTANCE.game.playerInfo.playerGear;
            return ModDev.isDev(g.playerShip) || ModDev.isDev(g.laser) || ModDev.isDev(g.missile) || ModDev.isDev(g.shield);
        } catch (Throwable t) {
            return false;
        }
    }

    /** Why this phone may not play an internet game now, or null. */
    static String onlineBlock() {
        String tp = testProfileBlock();
        if (tp != null) return tp;
        if (switchLocked()) return ModLang.tr("Test switches are in use. Internet games are off until the game restarts; local games still work.");
        boolean dev = selfDev();
        if (devGear() && !dev) return ModLang.tr("DEV ships and DEV gear cannot be used in internet games.");
        return null;
    }

    /** Owner's one-time DEV registration: the key is checked by the lobby service (nothing secret is in the app). */
    static void registerDev(final String key) {
        new Thread(new Runnable() {
            public void run() {
                Reply r = call("POST", "/dev", "id", ModSaveSig.installId(), "key", key);
                if (r.ok()) setSelfDev(r);
                ModQol.post(r.ok() && selfDev() ? ModLang.tr("This install is registered as DEV. Other players see a DEV tag next to your name.")
                    : ModLang.tr("DEV registration was refused."));
                ModDev.ev("lobby", "dev register " + r.first);
            }
        }, "lobby-dev").start();
    }

    // ------------------------------------------------------------------ settings
    private static android.content.SharedPreferences prefs() {
        return ObjectRegistry.INSTANCE.game.context.getSharedPreferences("corsair_net", 0);
    }

    static boolean hideIp() { try { return prefs().getBoolean("hide", false); } catch (Throwable t) { return false; } }

    static void setHideIp(boolean on) { try { prefs().edit().putBoolean("hide", on).commit(); } catch (Throwable t) { /* not saved */ } }

    static boolean saverPref() { try { return prefs().getBoolean("saver", false); } catch (Throwable t) { return false; } }

    static void setSaver(boolean on) { try { prefs().edit().putBoolean("saver", on).commit(); } catch (Throwable t) { /* not saved */ } applySaver(); }

    /** Data saver is on when the player set it, on mobile data, or while relayed. */
    static void applySaver() {
        ModNet.Link l = link;
        ModLanSync.saver = saverPref() || onMobileData() || (l != null && l.relayed());
    }

    /** No Wi-Fi address but another network is up: mobile data. (No permission needed for this check.) */
    static boolean onMobileData() {
        try {
            boolean wifi = false, other = false;
            java.util.Enumeration<java.net.NetworkInterface> en = java.net.NetworkInterface.getNetworkInterfaces();
            while (en != null && en.hasMoreElements()) {
                java.net.NetworkInterface ni = en.nextElement();
                if (!ni.isUp() || ni.isLoopback()) continue;
                boolean has = false;
                java.util.Enumeration<InetAddress> ad = ni.getInetAddresses();
                while (ad.hasMoreElements()) { InetAddress a = ad.nextElement(); if (!a.isLinkLocalAddress() && !a.isLoopbackAddress()) has = true; }
                if (!has) continue;
                String n = ni.getName();
                if (n.startsWith("wlan") || n.startsWith("eth") || n.startsWith("ap") || n.startsWith("swlan")) wifi = true; else other = true;
            }
            return other && !wifi;
        } catch (Throwable t) {
            return false;
        }
    }

    // ------------------------------------------------------------------ session state
    static volatile String code = "", status = "";
    static volatile boolean hosting, pub, busy;
    private static volatile String token = "";
    private static volatile long gen;
    private static volatile ModNet.Wire wire;
    private static volatile ModNet.Link link;
    private static volatile String peerId = "", joinedCode = "";
    private static volatile long relayReported;

    static ModNet.Link link() { return link; }

    static String peerInstall() { return peerId; }

    /** "Direct" / "Relayed" + ping + data used, for the multiplayer screen. Empty when not on an internet link. */
    static String linkLine() {
        ModNet.Link l = link;
        if (l == null || !ModLan.connected || !ModLan.internet) return "";
        long bytes = l.w.sentBytes + l.w.gotBytes;
        return (l.relayed() ? ModLang.tr("Relayed") : ModLang.tr("Direct")) + ", " + ModLang.tr("ping") + " " + l.rttMs + " ms. "
            + ModLang.tr("Data used:") + " " + mb(bytes) + " MB" + (onMobileData() ? ". " + ModLang.tr("You are on mobile data.") : "")
            + (ModLanSync.saver ? " " + ModLang.tr("Data saver is on.") : "");
    }

    static String mb(long bytes) {
        long tenths = bytes * 10 / (1 << 20);
        return (tenths / 10) + "." + (tenths % 10);
    }

    /** This socket's addresses for the other phone: own network addresses, the public one, and guesses when the router changes ports per destination. */
    static String candidates(ModNet.Wire w) {
        ArrayList<String> out = new ArrayList<String>();
        HashSet<String> seen = new HashSet<String>();
        InetSocketAddress a = ModNet.stun(w, STUN[0][0], Integer.parseInt(STUN[0][1]), 1500);
        InetSocketAddress b = ModNet.stun(w, STUN[1][0], Integer.parseInt(STUN[1][1]), 1500);
        for (InetSocketAddress x : new InetSocketAddress[]{a, b}) if (x != null && seen.add(ModNet.show(x))) out.add(ModNet.show(x));
        if (a != null && b != null && a.getPort() != b.getPort() && a.getAddress().equals(b.getAddress())) {
            int top = Math.max(a.getPort(), b.getPort());   // a new port per destination: the next ones are likely
            for (int i = 1; i <= 12 && top + i < 65536; i++) out.add(ModNet.show(new InetSocketAddress(a.getAddress(), top + i)));
        }
        for (InetSocketAddress x : ModNet.localCandidates(w.port())) if (seen.add(ModNet.show(x)) && out.size() < 22) out.add(ModNet.show(x));
        StringBuilder sb = new StringBuilder();
        for (String s : out) { if (sb.length() > 0) sb.append(','); sb.append(s); }
        return sb.toString();
    }

    static List<InetSocketAddress> addrs(String list) {
        ArrayList<InetSocketAddress> out = new ArrayList<InetSocketAddress>();
        if (list == null) return out;
        for (String s : list.split(",")) {
            InetSocketAddress a = ModNet.parse(s.trim());
            if (a != null && out.size() < 24) out.add(a);
        }
        return out;
    }

    /** Relay credentials from the service and an allocation on this socket. Null = no relay (off, full, or it does not answer). */
    static ModNet.Turn relay(ModNet.Wire w, String lobby, String tok) {   // package: the cloud network check (E7) uses it
        try {
            Reply r = call("POST", "/turn", "code", lobby, "id", ModSaveSig.installId(), "token", tok);
            if ("full".equals(r.first)) { relayFull = true; return null; }
            if (!r.ok()) return null;
            String host = r.get("host");
            for (int i = 0; i < host.length(); i++) { char ch = host.charAt(i); if (!(ch >= 'a' && ch <= 'z' || ch >= '0' && ch <= '9' || ch == '.' || ch == '-')) return null; }
            int port = Integer.parseInt(r.get("port"));
            if (!host.endsWith(".metered.ca") || port < 1 || port > 65535) return null;   // only the relay provider, whatever the answer says
            InetAddress ip = null;
            for (InetAddress x : InetAddress.getAllByName(host)) if (x instanceof java.net.Inet4Address) { ip = x; break; }
            if (ip == null) return null;
            ModNet.Turn t = new ModNet.Turn(w, new InetSocketAddress(ip, port), r.get("user"), r.get("pass"));
            for (int i = 0; i < 3; i++) {
                try { t.allocate(); return t; } catch (IOException e) { Thread.sleep(1500); }   // a new credential can take a moment to work
            }
        } catch (Throwable t) {
            // no relay
        }
        return null;
    }

    static volatile boolean relayFull;

    /** Relayed data one session may use, both ways (the free relay plan is 20 GB a month for all players). */
    static final long RELAY_SESSION_BYTES = 150L << 20;
    private static volatile ModNet.Link budgetLink;
    private static volatile long budgetBase;

    private static String sector() {
        try { return ObjectRegistry.INSTANCE.game.currentLevel.id.levelName; } catch (Throwable t) { return ""; }
    }

    private static String level() {
        try { return "" + ObjectRegistry.INSTANCE.game.playerInfo.level; } catch (Throwable t) { return "1"; }
    }

    // ------------------------------------------------------------------ hosting
    /** Opens a lobby and keeps it alive until the player stops hosting. Starts its own thread. */
    static void host(final boolean isPublic) {
        if (!available()) return;
        String block = onlineBlock();
        if (block != null) { status = block; return; }
        leave();
        final long g = ++gen;
        hosting = true;
        pub = isPublic && PUBLIC_ON;
        busy = true;
        code = "";
        status = ModLang.tr("Opening the game...");
        ModLan.hostNet();
        Thread t = new Thread(new Runnable() { public void run() { hostLoop(g); } }, "lobby-host");
        t.setDaemon(true);
        t.start();
    }

    private static boolean stillHost(long g) {
        if (g != gen) return false;
        if (ModLan.internet && ModLan.role == ModLan.HOST) return true;
        try { Thread.sleep(400); } catch (InterruptedException e) { return false; }   // a link that just dropped re-arms hosting in a moment
        return g == gen && ModLan.internet && ModLan.role == ModLan.HOST;
    }

    private static void hostLoop(long g) {
        String myCode = "", myTok = "";
        ModNet.Wire w = null;
        ModNet.Turn turn = null;
        String cands = "";
        final HashSet<String> tried = new HashSet<String>();
        final boolean[] connecting = {false};
        boolean wasConnected = false;
        int beats = 0;
        long relayAt = 0, relayWait = 30000;
        try {
            while (stillHost(g)) {
                boolean hide = hideIp();
                if (w == null || w.closed) {   // first time, and after every finished session (the link closes its socket)
                    w = new ModNet.Wire(0);
                    wire = w;
                    turn = null;
                    cands = hide ? "" : candidates(w);
                }
                if (myCode.length() == 0) {
                    Reply r = call("POST", "/lobby", "nick", ModLan.myNick(), "ctry", ModLan.myCountry(), "id", ModSaveSig.installId(), "ver", ModLan.myVersion(),
                        "pub", pub ? "1" : "0", "clean", ModSaveSig.publicOk() ? "1" : "0", "pvp", ModLan.pvpRoom ? "1" : "0", "sector", sector(), "level", level(),
                        "cands", cands, "hide", hide ? "1" : "0");
                    if (!r.ok() || r.get("code").length() != 4) {
                        status = refusal(r);
                        busy = false;
                        if (r.status == 0 || r.status >= 500 || "busy".equals(r.first)) { Thread.sleep(5000); continue; }   // the service is away: keep trying
                        break;
                    }
                    setSelfDev(r);
                    if (onlineBlock() != null) { status = onlineBlock(); call("POST", "/lobby/" + ModLan.clean(r.get("code"), 4) + "/close", "token", ModLan.clean(r.get("token"), 64)); busy = false; break; }
                    myCode = ModLan.clean(r.get("code"), 4);
                    myTok = ModLan.clean(r.get("token"), 64);
                    code = myCode;
                    token = myTok;
                    openedAt = System.currentTimeMillis();
                    busy = false;
                    status = ModLang.tr("Waiting for a player to join...");
                    ModDev.ev("lobby", "hosting " + (pub ? "public" : "private"));
                }
                if (hide && turn == null && System.currentTimeMillis() >= relayAt) {
                    turn = relay(w, myCode, myTok);
                    if (turn == null) { relayAt = System.currentTimeMillis() + relayWait; relayWait = Math.min(relayWait * 2, 600000); }   // refused or away: ask less and less often
                    else relayWait = 30000;
                }
                boolean conn = ModLan.connected;
                if (wasConnected && !conn) { tried.clear(); openedAt = System.currentTimeMillis(); }   // waiting again: 2 fast minutes again
                wasConnected = conn;
                if (!conn && !connecting[0] && ++beats % 2 == 0 && !hide) cands = candidates(w);   // keeps the router's mapping alive and current
                Reply b = call("POST", "/lobby/" + myCode + "/beat", "token", myTok, "full", conn ? "1" : "0", "pvp", ModLan.pvpRoom ? "1" : "0",
                    "sector", sector(), "level", level(), "cands", cands, "hide", hide ? "1" : "0",
                    "relay", turn != null && turn.relayed != null ? ModNet.show(turn.relayed) : "");
                if (b.status == 404 || b.status == 403) { myCode = ""; code = ""; continue; }   // the service forgot the lobby (restart): open it again
                if (b.ok() && !conn && !connecting[0]) {
                    for (final String[] row : b.rows) {
                        if (row.length < 8 || !"join".equals(row[0])) continue;
                        final String key = row[1] + "|" + row[6] + "|" + row[7];
                        if (row[6].length() == 0 && row[7].length() == 0) continue;   // no address yet (a hidden guest still getting its relay)
                        if (!tried.add(key)) continue;
                        connecting[0] = true;
                        final ModNet.Wire fw = w;
                        final boolean fh = hide;
                        final long fg = g;
                        Thread t = new Thread(new Runnable() {
                            public void run() {
                                try { accept(fg, fw, row, fh); } finally { connecting[0] = false; }
                            }
                        }, "lobby-accept");
                        t.setDaemon(true);
                        t.start();
                        break;
                    }
                }
                reportRelay();
                // audit E2 (owner): a waiting host beats every 8 s for its first 2 minutes, then every 20 s
                long wait = conn ? BEAT_FULL_MS : System.currentTimeMillis() - openedAt < BEAT_FAST_FOR_MS ? BEAT_MS : BEAT_SLOW_MS;
                for (long s = 0; s < wait && g == gen; s += 250) {
                    Thread.sleep(250);
                    if (wasConnected != ModLan.connected) break;   // tell the list at once when the seat fills or frees
                }
            }
        } catch (Throwable t) {
            ModDev.ev("lobby", "host loop ended: " + t);   // hosting ends below
            if (DEBUG) t.printStackTrace();
        }
        if (myCode.length() > 0) call("POST", "/lobby/" + myCode + "/close", "token", myTok);
        if (DEBUG) System.out.println("host loop exit g=" + g + " gen=" + gen + " internet=" + ModLan.internet + " role=" + ModLan.role);
        if (g == gen) {
            hosting = false;
            busy = false;
            code = "";
            if (ModLan.internet && ModLan.role == ModLan.HOST && !ModLan.connected) ModLan.stop();
        }
        ModNet.Wire lw = w;
        if (lw != null && !ModLan.connected) lw.close();
    }

    /** One joining guest: find a path, then the game's own handshake (version, Accept / Decline). */
    private static void accept(long g, ModNet.Wire w, String[] row, boolean hide) {
        ModNet.Link l = null;
        try {
            int sid = Integer.parseInt(row[2]);
            String id = ModLan.clean(row[3], 32);
            peerDev = row.length > 8 && "1".equals(row[8]);   // audit D1: the service's DEV mark for this guest
            l = new ModNet.Link(w, sid);
            status = ModLang.tr("A player is connecting...");
            boolean ok = l.connect(addrs(row[6]), ModNet.parse(row[7]), hide, 6000, 25000);
            if (!ok || g != gen) { l.abandon(); if (g == gen) status = ModLang.tr("Waiting for a player to join..."); return; }
            peerId = id;
            link = l;
            applySaver();
            if (!ModLan.acceptNet(l, id)) {
                link = null;
                l.close();   // declined, wrong version, or hosting ended: this socket is done, the loop opens a new one
            } else if (!l.relayed() && w.turn != null && !hide) { w.turn.close(); w.turn = null; }
            if (g == gen && !ModLan.connected) status = ModLang.tr("Waiting for a player to join...");
        } catch (Throwable t) {
            if (l != null) l.abandon();
        }
    }

    // ------------------------------------------------------------------ joining
    /** Joins a lobby by its 4-character code (typed, or from the public list). Blocks; never on the UI thread. True = linked. */
    static boolean join(String c) {
        if (!available()) return false;
        String block = onlineBlock();
        if (block != null) { status = block; return false; }
        leave();
        final long g = ++gen;
        busy = true;
        final String jc = c == null ? "" : c.trim().toUpperCase(java.util.Locale.US);
        ModNet.Wire w = null;
        ModNet.Link l = null;
        try {
            if (jc.length() != 4) { status = ModLang.tr("The code has 4 characters."); return false; }
            status = ModLang.tr("Connecting...");
            boolean hide = hideIp();
            w = new ModNet.Wire(0);
            String cands = hide ? "" : candidates(w);
            final int sid = new java.security.SecureRandom().nextInt();   // this session's number: both phones stamp every packet with it
            String[] base = {"nick", ModLan.myNick(), "ctry", ModLan.myCountry(), "id", ModSaveSig.installId(), "ver", ModLan.myVersion(),
                "clean", ModSaveSig.publicOk() ? "1" : "0", "cands", cands, "hide", hide ? "1" : "0", "sid", "" + sid};
            Reply r = call("POST", "/lobby/" + jc + "/join", base);
            if (!r.ok()) { status = refusal(r); return false; }
            setSelfDev(r);
            if (onlineBlock() != null) { status = onlineBlock(); return false; }   // the service's word on DEV (D1/D2)
            peerDev = "1".equals(r.get("hdev"));   // audit D1: the host is the registered DEV install
            if (hide) {   // relay only: nothing else may carry this phone's address
                base = withRelay(w, jc, base);
                if (base == null) {
                    status = relayFull ? ModLang.tr("Relay full this month; try Local or another network.")
                        : ModLang.tr("\"Hide my IP\" needs the relay, and the relay is not available right now.");
                    return false;
                }
                Reply r2 = call("POST", "/lobby/" + jc + "/join", base);
                if (r2.ok()) r = r2;
            }
            for (int i = 0; i < 5 && g == gen && r.get("cands").length() == 0 && r.get("relay").length() == 0; i++) {
                Thread.sleep(3000);   // the service has the lobby but not the host's addresses yet: they come with the host's next heartbeat
                Reply r3 = call("POST", "/lobby/" + jc + "/join", base);
                if (r3.ok()) r = r3; else if (r3.status != 0) { status = refusal(r3); return false; }
            }
            if (g != gen) return false;
            status = ModLang.tr("Reaching the host...");
            l = new ModNet.Link(w, sid);
            repeatJoin(g, jc, base, l);
            // direct first (also straight to a hidden host's relay address); the relay is asked for only when that fails
            boolean ok = l.connect(addrs(r.get("cands")), ModNet.parse(r.get("relay")), hide, 6000, hide ? 40000 : 15000);
            if (g != gen) { l.abandon(); return false; }
            if (!ok && !hide) {
                l.abandon();
                ModDev.ev("lobby", "direct path failed: asking for the relay");
                String[] more = withRelay(w, jc, base);
                if (more != null) {
                    base = more;
                    Reply r2 = call("POST", "/lobby/" + jc + "/join", base);
                    if (r2.ok()) r = r2;
                    l = new ModNet.Link(w, sid);
                    repeatJoin(g, jc, base, l);
                    ok = l.connect(addrs(r.get("cands")), ModNet.parse(r.get("relay")), false, 0, 30000);
                    if (g != gen) { l.abandon(); return false; }
                }
            }
            if (!ok) {
                l.abandon();
                call("POST", "/lobby/" + jc + "/unreach", "id", ModSaveSig.installId());
                status = relayFull ? ModLang.tr("Relay full this month; try Local or another network.")
                    : ModLang.tr("Could not reach the host. Their network or yours blocks direct play and the relay did not help.");
                return false;
            }
            if (!l.relayed() && w.turn != null) { w.turn.close(); w.turn = null; }
            link = l;
            joinedCode = jc;
            peerId = "";
            applySaver();
            ModDev.ev("lobby", "path found relayed=" + l.relayed());
            boolean linked = ModLan.joinNet(l);
            if (!linked) { link = null; l.close(); l = null; w = null; status = ModLan.status; return false; }
            w = null;   // the link owns the socket now
            status = "";
            startGuestWatch(g, jc);
            return true;
        } catch (Throwable t) {
            status = ModLang.tr("The lobby service did not answer. Check your internet connection.");
            return false;
        } finally {
            busy = false;
            if (w != null && (l == null || link != l)) w.close();
        }
    }

    /** The join fields plus this phone's relay address; null = no relay (off, full, or it does not answer). */
    private static String[] withRelay(ModNet.Wire w, String jc, String[] base) {
        ModNet.Turn turn = relay(w, jc, "");
        if (turn == null || turn.relayed == null) return null;
        String[] more = new String[base.length + 2];
        System.arraycopy(base, 0, more, 0, base.length);
        more[base.length] = "relay"; more[base.length + 1] = ModNet.show(turn.relayed);
        return more;
    }

    /** The join is repeated while reaching the host, in case the service lost it before the host saw it. */
    private static void repeatJoin(final long g, final String jc, final String[] again, final ModNet.Link fl) {
        Thread rep = new Thread(new Runnable() {
            public void run() {
                try {
                    for (int i = 0; i < 4; i++) {
                        Thread.sleep(8000);
                        if (g != gen || fl.isConnected() || fl.isClosed()) return;
                        Reply ra = call("POST", "/lobby/" + jc + "/join", again);
                        if (ra.ok()) fl.addTargets(addrs(ra.get("cands")), ModNet.parse(ra.get("relay")));   // the host's addresses may have changed
                    }
                } catch (Throwable e) { /* done */ }
            }
        }, "lobby-rejoin");
        rep.setDaemon(true);
        rep.start();
    }

    /** While a guest: the relayed-bytes report and the data saver follow the link. */
    private static void startGuestWatch(final long g, final String jc) {
        Thread t = new Thread(new Runnable() {
            public void run() {
                try {
                    while (g == gen && ModLan.connected && ModLan.internet) {
                        Thread.sleep(5000);
                        applySaver();
                        reportRelay();
                    }
                } catch (Throwable e) { /* ends */ }
            }
        }, "lobby-guest");
        t.setDaemon(true);
        t.start();
    }

    /** Guest side of a dropped internet link: one more join of the same lobby. */
    static void rejoin() {
        final String jc = joinedCode;
        if (jc.length() != 4) return;
        Thread t = new Thread(new Runnable() {
            public void run() {
                try { Thread.sleep(3000); } catch (InterruptedException e) { return; }
                if (ModLan.role != ModLan.NONE || busy) return;   // the player hosted or joined something else meanwhile
                if (!join(jc)) ModLan.status = ModLang.tr("Co-op link lost");
            }
        }, "lobby-rejoin");
        t.setDaemon(true);
        t.start();
    }

    /** The relay counts on its own side; this keeps the saver in step and logs the session's relayed data for the test log. */
    private static void reportRelay() {
        ModNet.Link l = link;
        if (l == null) return;
        ModNet.Turn t = l.w.turn;
        long now = System.currentTimeMillis();
        if (t != null && now - relayReported > 60000) { relayReported = now; ModDev.ev("lobby", "relayed bytes " + t.bytes); }
        if (t != null && l != budgetLink) { budgetLink = l; budgetBase = t.bytes; }   // a new session on a relay that already carried others
        if (t != null && l.relayed() && t.bytes - budgetBase > RELAY_SESSION_BYTES && ModLan.connected && ModLan.internet) {
            // the free relay is small and shared by everyone: one session gets a fixed share, then ends with a clear message
            ModDev.ev("lobby", "relay session budget used: " + t.bytes);
            String msg = ModLang.tr("This session used up its share of the free relay. Direct connections and local games still work.");
            ModLan.stop();
            ModLan.status = msg;
            status = msg;
        }
    }

    static String refusal(Reply r) {
        String f = r.first;
        if (r.status == 0) return ModLang.tr("The lobby service did not answer. Check your internet connection.");
        if ("gone".equals(f)) return ModLang.tr("No game with that code.");
        if ("full".equals(f)) return ModLang.tr("That game is full.");
        if ("version".equals(f)) return ModLang.tr("Different game versions. Your friend has") + " " + ModLan.clean(r.get("ver"), 40) + ", " + ModLang.tr("you have") + " " + ModLan.myVersion() + ".";
        if ("banned".equals(f)) return ModLang.tr("You were removed by several hosts. Public games are locked for 24 hours.");
        if ("kicked".equals(f)) return ModLang.tr("The host removed you from this game.");
        if ("save".equals(f)) return ModLang.tr("Your save was changed outside the game. Public games are locked for 24 hours; private codes and local games still work.");
        if ("closed".equals(f)) return ModLang.tr("Public games open in a later version. Private games with a code work now.");
        if ("slow".equals(f)) return ModLang.tr("Too many tries. Wait a few minutes.");
        // audit E3 (owner): the free daily allowance is used up (our limit or the platform's): say so plainly
        if ("busy".equals(f) || (r.status == 429 && !"slow".equals(f)) || r.status >= 500) return ModLang.tr("Internet lobbies are down for today. Local games still work.");
        return ModLang.tr("The lobby service refused the request.");
    }

    /** Public games on this version: rows of code, nickname, country, pvp, sector, level, players. Blocks. */
    static List<String[]> list() {
        ArrayList<String[]> out = new ArrayList<String[]>();
        Reply r = call("GET", "/lobbies", "ver", ModLan.myVersion());
        if (!r.ok()) { status = refusal(r); return out; }
        for (String[] row : r.rows) {
            if (row.length < 7 || row[0].length() != 4) continue;
            out.add(new String[]{ModLan.clean(row[0], 4), ModLanUi.safeNick(row[1]), "?".equals(row[2]) ? "" : ModLanUi.safeCountry(row[2]),
                "1".equals(row[3]) ? "1" : "0", ModLan.clean(row[4], 40), ModLan.clean(row[5], 3), "2".equals(row[6]) ? "2" : "1"});
        }
        return out;
    }

    /** Host: the guest was kicked (counts toward the 24 h public ban after 3 different hosts). */
    static void kicked() {
        final String c = code, tok = token, id = peerId;
        if (c.length() != 4 || id.length() == 0) return;
        new Thread(new Runnable() { public void run() { call("POST", "/lobby/" + c + "/kick", "token", tok, "id", id); } }, "lobby-kick").start();
    }

    /** Report button: the last chat lines and what this phone's checks flagged, about the other player. */
    static void report(final String text, final Runnable done) {
        final String c = hosting ? code : joinedCode;
        new Thread(new Runnable() {
            public void run() {
                Reply r = call("POST", "/report", "code", c, "id", ModSaveSig.installId(), "text", text, "about", hosting && peerId != null ? peerId : "");   // audit E5: the host names the guest it reports
                status = r.ok() ? ModLang.tr("Report sent.") : ModLang.tr("The report could not be sent.");
                if (done != null) done.run();
            }
        }, "lobby-report").start();
    }

    /** Stops hosting / forgets the joined lobby. The lobby closes on the service from the host thread. */
    static void leave() {
        gen++;
        hosting = false;
        busy = false;
        code = "";
        joinedCode = "";
        link = null;
    }
}
