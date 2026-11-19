package fr.testudo.spacecorsair.mod;

import java.io.*;
import java.security.*;
import java.util.*;
import java.util.zip.*;

/**
 * v45 in-game updates JVM checks: manifest signature + parse, pack validation (zip safety, ids, build, api),
 * pack layering (overlay, remove, re-add, merged layers, chain key), and the .scp delta made by
 * tools/updates/scp_make.py applied by ModUpdate.applyPatch (good, tampered, wrong base). Ends with V60U VALUES-OK.
 * Run from work/dtest with the repo root two levels up (the Python tool is called from there).
 */
public class V60U {
    static int bad = 0;
    static void is(String n, boolean ok) { if (!ok) bad++; System.out.println((ok ? "ok V60U " : "FAIL V60U ") + n); }

    static File zip(File f, String[][] entries) throws IOException {
        ZipOutputStream z = new ZipOutputStream(new FileOutputStream(f));
        for (String[] e : entries) { z.putNextEntry(new ZipEntry(e[0])); z.write(e[1].getBytes("UTF-8")); z.closeEntry(); }
        z.close();
        return f;
    }

    static String read(InputStream in) throws IOException {
        ByteArrayOutputStream b = new ByteArrayOutputStream();
        byte[] buf = new byte[4096];
        for (int n; (n = in.read(buf)) > 0; ) b.write(buf, 0, n);
        in.close();
        return new String(b.toByteArray(), "UTF-8");
    }

    public static void main(String[] a) throws Exception {
        File tmp = new File(System.getProperty("java.io.tmpdir"), "v60u-" + System.nanoTime());
        tmp.mkdirs();

        // ---- signature
        KeyPairGenerator g = KeyPairGenerator.getInstance("EC");
        g.initialize(new java.security.spec.ECGenParameterSpec("secp256r1"));
        KeyPair kp = g.generateKeyPair();
        String pub = Base64.getEncoder().encodeToString(kp.getPublic().getEncoded());
        String text = "sc-manifest=1\nseq=7\napk.version=v46\napk.build=53\napk.sha256=AB\napk.size=10\napk.url=https://x/y.apk\n"
            + "patch=CD|https://x/p.scp|EF|5\npack=52|1|content-52-1|https://x/1.zip|aa|3|Art|Arte\npack=52|1|content-52-2|https://x/2.zip|bb|4|Fix|Arreglo\n"
            + "pack=53|1|content-53-1|https://x/3.zip|cc|4||\npack=52|2|content-52-x|https://x/4.zip|dd|4||\npack=52|1|bad id!|u|ee|1||\nrevoked=content-52-2\n";
        Signature s = Signature.getInstance("SHA256withECDSA");
        s.initSign(kp.getPrivate()); s.update(text.getBytes("UTF-8"));
        byte[] sig = s.sign();
        is("signed manifest verifies", ModUpdate.verify(text.getBytes("UTF-8"), sig, pub));
        byte[] t2 = text.replace("seq=7", "seq=8").getBytes("UTF-8");
        is("changed manifest is refused", !ModUpdate.verify(t2, sig, pub));
        KeyPair other = g.generateKeyPair();
        is("other key is refused", !ModUpdate.verify(text.getBytes("UTF-8"), sig, Base64.getEncoder().encodeToString(other.getPublic().getEncoded())));
        is("garbage signature is refused", !ModUpdate.verify(text.getBytes("UTF-8"), new byte[] {1, 2, 3}, pub));
        is("game key constant parses", ModUpdate.b64(ModUpdate.PUB).length == 91);

        // ---- parse
        ModUpdate.Manifest m = ModUpdate.parse(text);
        is("manifest parsed", m != null && m.seq == 7 && m.apkBuild == 53 && "ab".equals(m.apkSha) && m.patches.size() == 1 && "cd".equals(m.patches.get(0).from));
        is("bad pack id dropped", m.packs.size() == 4);
        List<ModUpdate.Pack> ch = ModUpdate.chainFor(m, 52);
        is("chain for build 52 = content-52-1 only (52-2 revoked, api 2 and build 53 skipped)", ch.size() == 1 && ch.get(0).id.equals("content-52-1") && ch.get(0).es.equals("Arte"));
        is("no header = not a manifest", ModUpdate.parse("seq=1\n") == null);

        // ---- validate
        File good = zip(new File(tmp, "g.zip"), new String[][] {{"pack.txt", "id=content-52-1\nbuild=52\napi=1\n"}, {"modart/a.webp", "A1"}, {"lang/es.json", "{\"Hi\":\"Hola\"}"}});
        is("good pack accepted", ModContent.validate(good, "content-52-1", 52, 1) == null);
        is("wrong id refused", ModContent.validate(good, "content-52-9", 52, 1) != null);
        is("wrong build refused", ModContent.validate(good, "content-52-1", 53, 1) != null);
        is("wrong api refused", ModContent.validate(good, "content-52-1", 52, 2) != null);
        String[][] info = {{"pack.txt", "id=p\nbuild=52\napi=1\n"}};
        String[] evil = {"../x.webp", "/abs/modart/a.webp", "modart/../../a.webp", "classes.dex", "modart/x.dex", "lib/a.so", "modart/a.jar", "res/raw/a.ogg", "modart\\a.webp"};
        for (String e : evil) {
            File f = zip(new File(tmp, "e.zip"), new String[][] {info[0], {e, "x"}});
            is("refused entry " + e, ModContent.validate(f, "p", 52, 1) != null);
        }
        is("no pack.txt refused", ModContent.validate(zip(new File(tmp, "n.zip"), new String[][] {{"modart/a.webp", "x"}}), "p", 52, 1) != null);
        File junk = new File(tmp, "j.zip"); FileOutputStream jo = new FileOutputStream(junk); jo.write("not a zip".getBytes()); jo.close();
        is("not a zip refused", ModContent.validate(junk, "p", 52, 1) != null);

        // ---- layering
        File d = new File(tmp, "content"); new File(d, "packs").mkdirs();
        zip(new File(d, "packs/content-52-1.zip"), new String[][] {{"pack.txt", "id=content-52-1\nbuild=52\napi=1\n"},
            {"modart/a.webp", "A1"}, {"modart/b.png", "B1"}, {"modsfx/s.ogg", "S1"}, {"lang/es.json", "{\"Hi\":\"Hola\",\"Bye\":\"Adios\"}"}});
        zip(new File(d, "packs/content-52-2.zip"), new String[][] {{"pack.txt", "id=content-52-2\nbuild=52\napi=1\nremove=modart/b\nremove=modart/apkonly\nremove=../evil\n"},
            {"modart/a.webp", "A2"}, {"modart/c.webp", "C2"}, {"lang/es.json", "{\"Bye\":\"Chao\"}"}});
        List<String[]> chain = new ArrayList<String[]>();
        chain.add(new String[] {"content-52-1", "1111111111111111aaaa"}); chain.add(new String[] {"content-52-2", "2222222222222222bbbb"});
        ModContent.writeChain(new File(d, "active.txt"), chain);
        ModContent.testReset(d);
        ModContent.testLoad();
        is("later pack wins", "A2".equals(read(ModContent.open(null, "modart/a.webp"))));
        is("removed name hidden", ModContent.open(null, "modart/b.png") == null && ModContent.removed(null, "modart/b") && ModContent.removed(null, "modart/apkonly"));
        is("unsafe remove ignored", !ModContent.removed(null, "../evil"));
        is("new name added", ModContent.names(null, "modart/").containsAll(Arrays.asList("a", "c")) && !ModContent.names(null, "modart/").contains("b"));
        is("removedNames lists b and apkonly", ModContent.removedNames(null, "modart/").equals(new HashSet<String>(Arrays.asList("b", "apkonly"))));
        is("older-only file kept", "S1".equals(read(ModContent.open(null, "modsfx/s.ogg"))));
        List<InputStream> ls = ModContent.layers(null, "lang/es.json");
        Map<String, String> dict = new HashMap<String, String>();
        for (InputStream in : ls) ModLang.parseFlat(read(in), dict);
        is("lang layers merge oldest first", ls.size() == 2 && "Hola".equals(dict.get("Hi")) && "Chao".equals(dict.get("Bye")));
        is("chain key", "content-52-1:1111111111111111,content-52-2:2222222222222222".equals(ModContent.chainKey(null)));
        is("label = newest pack", "content-52-2".equals(ModContent.label(null)));
        // re-add after remove in a third pack
        zip(new File(d, "packs/content-52-3.zip"), new String[][] {{"pack.txt", "id=content-52-3\nbuild=52\napi=1\n"}, {"modart/b.webp", "B3"}});
        chain.add(new String[] {"content-52-3", "3333333333333333cccc"});
        ModContent.writeChain(new File(d, "active.txt"), chain);
        ModContent.testReset(d); ModContent.testLoad();
        is("re-added name comes back", "B3".equals(read(ModContent.open(null, "modart/b.webp"))) && !ModContent.removed(null, "modart/b"));
        // setChain keeps previous, deletes unused packs; undo swaps
        new FileOutputStream(new File(d, "packs/stale.zip")).close();
        List<String[]> one = new ArrayList<String[]>(); one.add(chain.get(0));
        ModContent.testReset(d);
        ModContent.setChain(null, one);
        is("setChain: previous kept, stale deleted", ModContent.readChain(new File(d, "previous.txt")).size() == 3 && !new File(d, "packs/stale.zip").exists() && new File(d, "packs/content-52-3.zip").exists());
        is("undo restores previous", ModContent.undo(null) && ModContent.readChain(new File(d, "active.txt")).size() == 3);
        ModContent.testReset(null);

        // ---- .scp delta (Python maker -> Java applier)
        File oldA = zip(new File(tmp, "old.apk"), new String[][] {{"classes.dex", "DEX-OLD-" + big('a')}, {"assets/modart/x.webp", big('x')}, {"assets/modart/gone.webp", "G"}, {"res/raw/m.ogg", big('m')}});
        File newA = zip(new File(tmp, "new.apk"), new String[][] {{"classes.dex", "DEX-NEW-" + big('b')}, {"assets/modart/x.webp", big('x')}, {"assets/modart/new.webp", "N"}, {"res/raw/m.ogg", big('m')}});
        File patch = new File(tmp, "p.scp");
        Process p = new ProcessBuilder("python3", "-I", "../../tools/updates/scp_make.py", oldA.getPath(), newA.getPath(), patch.getPath()).redirectErrorStream(true).start();
        String po = read(p.getInputStream());
        is("scp_make ran (" + po.trim() + ")", p.waitFor() == 0 && patch.isFile());
        File out = new File(tmp, "rebuilt.apk");
        boolean okApply;
        try { ModUpdate.applyPatch(oldA, new FileInputStream(patch), out); okApply = ModContent.sha256(out).equals(ModContent.sha256(newA)); } catch (Exception e) { okApply = false; System.out.println(e); }
        is("patch rebuilds the new file byte for byte", okApply);
        is("patch is smaller than the new file", patch.length() < newA.length());
        boolean refused;
        out.delete();
        try { ModUpdate.applyPatch(newA, new FileInputStream(patch), out); refused = false; } catch (Exception e) { refused = !out.exists(); }
        is("patch on the wrong base is refused, no output", refused);
        byte[] pb = readAll(patch);
        pb[pb.length - 20] ^= 0x55;
        File bad2 = new File(tmp, "bad.scp"); FileOutputStream bo2 = new FileOutputStream(bad2); bo2.write(pb); bo2.close();
        try { ModUpdate.applyPatch(oldA, new FileInputStream(bad2), out); refused = false; } catch (Exception e) { refused = !out.exists(); }
        is("tampered patch is refused, no output", refused);
        byte[] tr = Arrays.copyOf(readAll(patch), 80);
        File bad3 = new File(tmp, "trunc.scp"); FileOutputStream bo3 = new FileOutputStream(bad3); bo3.write(tr); bo3.close();
        try { ModUpdate.applyPatch(oldA, new FileInputStream(bad3), out); refused = false; } catch (Exception e) { refused = !out.exists(); }
        is("truncated patch is refused, no output", refused);

        System.out.println(bad == 0 ? "V60U VALUES-OK" : "V60U FAILED " + bad);
    }

    static String big(char c) { char[] x = new char[200000]; Random r = new Random(c); for (int i = 0; i < x.length; i++) x[i] = (char) ('a' + r.nextInt(26)); return new String(x); }

    static byte[] readAll(File f) throws IOException { RandomAccessFile r = new RandomAccessFile(f, "r"); byte[] b = new byte[(int) r.length()]; r.readFully(b); r.close(); return b; }
}
