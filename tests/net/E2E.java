package fr.testudo.spacecorsair.mod;

/**
 * Manual end-to-end check of internet play against the live lobby service (not part of the build):
 *   java ... fr.testudo.spacecorsair.mod.E2E host CODEFILE     (terminal 1)
 *   java ... fr.testudo.spacecorsair.mod.E2E join CODEFILE     (terminal 2)
 * Both on one machine: the path is found through the machine's own address.
 */
public class E2E {
    static void say(String s) { System.out.println(System.currentTimeMillis() % 100000 + " " + s); }

    public static void main(String[] a) throws Exception {
        java.io.File f = new java.io.File(a[1]);
        ModLobby.DEBUG = true;
        if (a[0].equals("host")) {
            ModSaveSig.installForTest("aaaaaaaaaaaaaaaaaaaaaaaaaaaa0001");
            ModLobby.host(false);
            long end = System.currentTimeMillis() + 150000;
            int sessions = 0; boolean was = false;
            while (System.currentTimeMillis() < end && sessions < 2) {
                ModLan.autoAcceptForTest();
                if (ModLobby.code.length() == 4 && !f.exists()) { java.io.FileWriter w = new java.io.FileWriter(f); w.write(ModLobby.code); w.close(); say("HOST lobby open"); }
                if (ModLan.connected && !was) { say("HOST linked with " + ModLan.peerLabel() + " " + ModLobby.linkLine()); }
                if (!ModLan.connected && was) { sessions++; say("HOST session " + sessions + " ended; status=" + ModLan.status); }
                was = ModLan.connected;
                Thread.sleep(100);
            }
            say("HOST sessions=" + sessions + (sessions == 2 ? " E2E-HOST-OK" : " E2E-HOST-FAIL"));
            ModLobby.leave(); ModLan.stop();
            Thread.sleep(1500);
        } else {
            ModSaveSig.installForTest("bbbbbbbbbbbbbbbbbbbbbbbbbbbb0002");
            long end = System.currentTimeMillis() + 60000;
            while (!f.exists() && System.currentTimeMillis() < end) Thread.sleep(200);
            String code = new java.util.Scanner(f).next();
            int ok = 0;
            for (int i = 0; i < 2; i++) {
                boolean j = ModLobby.join(code);
                say("GUEST join " + i + " -> " + j + " " + ModLobby.status + " " + ModLan.status + " " + ModLobby.linkLine());
                if (j) { Thread.sleep(4000); if (ModLan.connected) ok++; }
                ModLobby.leave(); ModLan.stop();
                Thread.sleep(3000);
            }
            boolean wrong = ModLobby.join("ZZZ9");
            say("GUEST wrong code -> " + wrong + " " + ModLobby.status);
            say(ok == 2 && !wrong ? "E2E-GUEST-OK" : "E2E-GUEST-FAIL");
        }
        System.exit(0);
    }
}
