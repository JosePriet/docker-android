package fr.testudo.spacecorsair.mod;

import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.lang.reflect.Field;
import java.util.List;

/**
 * Audit E7 (owner 2026-11-17): two-player network check on two GitHub machines against the real lobby service, the STUN
 * servers and the relay. JVM only, no emulator, no secrets. It does not prove the path between two home networks.
 *
 * <pre>java ... fr.testudo.spacecorsair.mod.NetCloud host|guest TAG direct|relay</pre>
 * The host lists a public lobby under the version "cloudcheck-TAG" (no real player runs that version); the guest finds it in
 * the list. "relay" = the guest hides its IP (relay only). Prints "NETCLOUD <role> <mode> OK" or "NETCLOUD ... FAIL why".
 */
public class NetCloud {
    static String hex(int n) {
        StringBuilder b = new StringBuilder();
        java.security.SecureRandom r = new java.security.SecureRandom();
        for (int i = 0; i < n; i++) b.append(Integer.toHexString(r.nextInt(16)));
        return b.toString();
    }

    /** The service's own answer to a relay request, for the log (credentials are not printed). */
    static String why(String code, String id, String tok) {
        try { ModLobby.Reply r = ModLobby.call("POST", "/turn", "code", code, "id", id, "token", tok); return r.first + " " + r.status + (r.ok() ? " host=" + r.get("host") : ""); }
        catch (Throwable t) { return "error " + t; }
    }

    static void set(Class<?> c, String f, Object v) throws Exception { Field x = c.getDeclaredField(f); x.setAccessible(true); x.set(null, v); }

    static void out(String role, String mode, String what) { System.out.println("NETCLOUD " + role + " " + mode + " " + what); }

    public static void main(String[] a) throws Exception {
        final String role = a[0], tag = a[1], mode = a[2];
        final String ver = "cloudcheck-" + tag + "-" + mode;
        final String id = hex(32);
        set(ModSaveSig.class, "install", id);
        set(ModLan.class, "verCache", ver);
        long end = System.currentTimeMillis() + 240000;
        ModNet.Wire w = new ModNet.Wire(0);
        if (role.equals("host")) {
            String cands = ModLobby.candidates(w);
            out(role, mode, "candidates " + cands.split(",").length);
            ModLobby.Reply r = ModLobby.call("POST", "/lobby", "nick", "Cloud", "ctry", "USA", "id", id, "ver", ver, "pub", "1", "clean", "1", "pvp", "0",
                "sector", "check", "level", "1", "cands", cands, "hide", "0");
            if (!r.ok()) { out(role, mode, "FAIL create " + r.first + " " + r.status); System.exit(1); }
            String code = r.get("code"), tok = r.get("token");
            out(role, mode, "lobby open");
            ModNet.Turn turn = mode.equals("relay") ? ModLobby.relay(w, code, tok) : null;
            if (mode.equals("relay")) out(role, mode, turn != null ? "relay allocated" : "relay refused (service: " + why(code, id, tok) + ")");
            while (System.currentTimeMillis() < end) {
                ModLobby.Reply b = ModLobby.call("POST", "/lobby/" + code + "/beat", "token", tok, "full", "0", "cands", cands, "hide", "0",
                    "relay", turn != null && turn.relayed != null ? ModNet.show(turn.relayed) : "");
                for (String[] row : b.rows) {
                    if (row.length < 8 || !"join".equals(row[0]) || (row[6].length() == 0 && row[7].length() == 0)) continue;
                    ModNet.Link l = new ModNet.Link(w, Integer.parseInt(row[2]));
                    boolean ok = l.connect(ModLobby.addrs(row[6]), ModNet.parse(row[7]), false, 6000, 40000);
                    if (!ok) { out(role, mode, "FAIL no path"); ModLobby.call("POST", "/lobby/" + code + "/close", "token", tok); System.exit(1); }
                    l.setSoTimeout(15000);
                    DataOutputStream o = new DataOutputStream(l.getOutputStream());
                    o.writeUTF("hello from host"); o.flush();
                    String back = new DataInputStream(l.getInputStream()).readUTF();
                    out(role, mode, back.equals("hello from guest") ? "OK relayed=" + l.relayed() : "FAIL wrong reply");
                    ModLobby.call("POST", "/lobby/" + code + "/close", "token", tok);
                    l.close();
                    System.exit(back.equals("hello from guest") ? 0 : 1);
                }
                Thread.sleep(2000);
            }
            ModLobby.call("POST", "/lobby/" + code + "/close", "token", tok);
            out(role, mode, "FAIL nobody joined");
            System.exit(1);
        }
        // guest
        boolean hide = mode.equals("relay");
        String code = "";
        while (code.length() == 0 && System.currentTimeMillis() < end) {
            List<String[]> rows = null;
            ModLobby.Reply lr = ModLobby.call("GET", "/lobbies", "ver", ver);
            for (String[] row : lr.rows) if (row.length >= 2 && row[0].length() == 4) code = row[0];
            if (code.length() == 0) Thread.sleep(3000);
        }
        if (code.length() == 0) { out(role, mode, "FAIL no lobby listed"); System.exit(1); }
        String cands = hide ? "" : ModLobby.candidates(w);
        int sid = new java.security.SecureRandom().nextInt();
        String[] base = {"nick", "Cloud2", "ctry", "USA", "id", id, "ver", ver, "clean", "1", "cands", cands, "hide", hide ? "1" : "0", "sid", "" + sid};
        if (hide) {
            ModNet.Turn t = ModLobby.relay(w, code, "");
            if (t == null) {   // the relay is asked for after a join is waiting
                ModLobby.call("POST", "/lobby/" + code + "/join", base);
                t = ModLobby.relay(w, code, "");
            }
            if (t == null || t.relayed == null) { out(role, mode, "FAIL relay refused (service: " + why(code, id, "") + ")"); System.exit(1); }
            base = new String[] {"nick", "Cloud2", "ctry", "USA", "id", id, "ver", ver, "clean", "1", "cands", "", "hide", "1", "sid", "" + sid, "relay", ModNet.show(t.relayed)};
            out(role, mode, "relay allocated");
        }
        ModLobby.Reply r = ModLobby.call("POST", "/lobby/" + code + "/join", base);
        for (int i = 0; i < 10 && r.ok() && r.get("cands").length() == 0 && r.get("relay").length() == 0; i++) { Thread.sleep(3000); r = ModLobby.call("POST", "/lobby/" + code + "/join", base); }
        if (!r.ok()) { out(role, mode, "FAIL join " + r.first + " " + r.status); System.exit(1); }
        ModNet.Link l = new ModNet.Link(w, sid);
        final String[] fb = base; final String fc = code;
        Thread again = new Thread() { public void run() { try { for (int i = 0; i < 12; i++) { Thread.sleep(5000); ModLobby.call("POST", "/lobby/" + fc + "/join", fb); } } catch (Throwable t) { /* stop */ } } };
        again.setDaemon(true);
        again.start();
        boolean ok = l.connect(ModLobby.addrs(r.get("cands")), ModNet.parse(r.get("relay")), hide, 6000, 40000);
        if (!ok) { out(role, mode, "FAIL no path"); System.exit(1); }
        l.setSoTimeout(15000);
        String got = new DataInputStream(l.getInputStream()).readUTF();
        DataOutputStream o = new DataOutputStream(l.getOutputStream());
        o.writeUTF("hello from guest"); o.flush();
        Thread.sleep(1500);
        out(role, mode, got.equals("hello from host") ? "OK relayed=" + l.relayed() : "FAIL wrong greeting");
        l.close();
        System.exit(got.equals("hello from host") ? 0 : 1);
    }
}
