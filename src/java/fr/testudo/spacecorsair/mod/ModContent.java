package fr.testudo.spacecorsair.mod;

import android.content.Context;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.security.MessageDigest;
import java.util.ArrayList;
import java.util.Enumeration;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.zip.ZipEntry;
import java.util.zip.ZipFile;

/**
 * v45 in-game updates, part 1: content packs. A pack is a zip (modart/, modsfx/, lang/ + pack.txt) kept in
 * app_content/packs/ (getDir("content"): outside getFilesDir, which test mode swaps). The active chain
 * (app_content/active.txt, oldest first) is layered over the APK assets at process start: a later pack's file
 * wins, and pack.txt "remove=modart/name" hides a name from the layers below. Packs are verified (sha-256 from
 * the signed manifest, zip safety) by ModUpdate before they are installed here; nothing here runs code.
 * Crash guard: a chain that has not run 45 s without dying is turned off after 3 such starts (previous.txt
 * comes back). Safe mode (app_content/safe) ignores every pack.
 */
public final class ModContent {
    private ModContent() {}

    /** Pack data schema; a pack for another API number is never installed. */
    static final int API = 1;
    static final String[] FOLDERS = {"modart/", "modsfx/", "lang/"};
    static final String[] EXTS = {".webp", ".png", ".ogg", ".json", ".txt"};
    static final long MAX_UNPACKED = 300L << 20;
    static final int GUARD_CRASHES = 2;
    private static String guardKey;
    private static int guardCrashes;
    private static boolean guardOk;
    private static String guardState = "";
    private static int buildNow = -1;   // -1 = not checked (JVM tests)

    /** Writes boot.txt (state "run"/"paused", null = keep). Cheap; only when something changed. */
    private static synchronized void guard(String state) {
        try {
            if (guardKey == null || dir == null) return;
            if (state != null) { if (state.equals(guardState) && !guardOk) return; guardState = state; }
            writeText(new File(dir, "boot.txt"), guardKey + "\n" + guardCrashes + "\n" + guardState + "\n" + (guardOk ? "ok\n" : ""));
            if (guardOk && state != null) guardKey = null;   // confirmed: no more writes this process
        } catch (Throwable t) { /* guard is best effort */ }
    }
    static final long CONFIRM_MS = 45000;

    private static boolean ready;
    private static File dir;
    /** Oldest first. */
    private static final List<String> chainIds = new ArrayList<String>();
    private static final List<ZipFile> zips = new ArrayList<ZipFile>();
    private static final Map<String, ZipFile> index = new HashMap<String, ZipFile>();
    private static final Set<String> removed = new HashSet<String>();
    private static String chainKey = "";
    static volatile String notice;   // shown once by the updates panel (crash guard turned a chain off)

    // ================================================================== start
    /** Loads the active chain once per process (idempotent; every overlay call runs it first). */
    public static synchronized void ensure(Context c) {
        if (ready || c == null) return;
        ready = true;
        try {
            Context a = c.getApplicationContext();
            dir = (a != null ? a : c).getDir("content", Context.MODE_PRIVATE);
            new File(dir, "packs").mkdirs();
            if (new File(dir, "safe").exists()) { ModDev.ev("content", "safe mode: built-in content only"); return; }
            List<String[]> chain = readChain(new File(dir, "active.txt"));
            if (chain.isEmpty()) return;
            String key = keyOf(chain);
            // crash guard: boot.txt = key / crashes / state. "run" is written while a screen is in front and "paused"
            // when it leaves (activity callbacks), so a normal quit never counts; a start that finds "run" for an
            // unconfirmed chain means the last run died. GUARD_CRASHES such deaths turn the chain off.
            String[] g = readLines(new File(dir, "boot.txt"));
            boolean same = g.length >= 3 && g[0].equals(key);
            int crashes = same ? parseInt(g[1], 0) : 0;
            boolean confirmed = same && g.length >= 4 && "ok".equals(g[3]);
            if (!confirmed && same && "run".equals(g[2])) crashes++;
            if (!confirmed && crashes >= GUARD_CRASHES) {
                ModDev.ev("content", "crash guard: chain " + key + " off after " + crashes + " crashes");
                File prev = new File(dir, "previous.txt");
                List<String[]> p = readChain(prev);
                writeChain(new File(dir, "active.txt"), p);
                writeChain(prev, new ArrayList<String[]>());
                notice = "The last update was turned off after it failed to start.";
                chain = p;
                key = keyOf(chain);
                crashes = 0; confirmed = false;
                if (chain.isEmpty()) { writeText(new File(dir, "boot.txt"), ""); return; }
            }
            guardKey = key; guardCrashes = crashes; guardOk = confirmed;
            guard("run");
            if (!confirmed) {
                Thread t = new Thread(new Runnable() {
                    public void run() {
                        try { Thread.sleep(CONFIRM_MS); synchronized (ModContent.class) { guardOk = true; guardCrashes = 0; } guard(null); } catch (Throwable x) { /* not confirmed */ }
                    }
                }, "content-guard");
                t.setDaemon(true);
                t.start();
            }
            try {
                ((android.app.Application) (a != null ? a : c)).registerActivityLifecycleCallbacks(new android.app.Application.ActivityLifecycleCallbacks() {
                    public void onActivityResumed(android.app.Activity x) { guard("run"); }
                    public void onActivityPaused(android.app.Activity x) { guard("paused"); }
                    public void onActivityCreated(android.app.Activity x, android.os.Bundle b) { }
                    public void onActivityStarted(android.app.Activity x) { }
                    public void onActivityStopped(android.app.Activity x) { }
                    public void onActivitySaveInstanceState(android.app.Activity x, android.os.Bundle b) { }
                    public void onActivityDestroyed(android.app.Activity x) { }
                });
            } catch (Throwable t) { /* no callbacks: every start counts as clean */ guard("paused"); }
            int build = -1;
            try { build = c.getPackageManager().getPackageInfo(c.getPackageName(), 0).versionCode - 1000; } catch (Throwable t) { build = -1; }
            buildNow = build;
            load(chain);
            chainKey = key;
            ModDev.ev("content", "chain " + key + " (" + index.size() + " files)");
        } catch (Throwable t) {
            for (ZipFile z : zips) { try { z.close(); } catch (Throwable x) { /* closed */ } }
            index.clear(); removed.clear(); zips.clear(); chainIds.clear(); chainKey = "";
            ModDev.ev("content", "chain not loaded: " + t);
        }
    }

    private static void load(List<String[]> chain) throws IOException {
        for (String[] e : chain) {
            File f = new File(new File(dir, "packs"), e[0] + ".zip");
            if (!f.isFile()) throw new IOException("missing pack " + e[0]);
            ZipFile z = new ZipFile(f);
            zips.add(z);
            String[] info = packInfo(z);
            if (buildNow >= 0) {   // packs made for another game build never load (e.g. right after a game update)
                boolean ok = false;
                for (String l : info) if (l.equals("build=" + buildNow)) ok = true;
                if (!ok) throw new IOException("pack " + e[0] + " is for another game build");
            }
            for (String l : info) {
                if (!l.startsWith("remove=")) continue;
                String r = l.substring(7).trim();
                if (!allowedFolder(r)) continue;
                removed.add(r);
                List<String> drop = new ArrayList<String>();
                for (String p : index.keySet()) if (base(p).equals(r)) drop.add(p);
                for (String p : drop) index.remove(p);
            }
            Enumeration<? extends ZipEntry> en = z.entries();
            while (en.hasMoreElements()) {
                ZipEntry ze = en.nextElement();
                String n = ze.getName();
                if (ze.isDirectory() || !safeName(n) || n.equals("pack.txt")) continue;
                index.put(n, z);
                removed.remove(base(n));
            }
            chainIds.add(e[0]);
        }
    }

    // ================================================================== overlay API (asset readers)
    /** The pack copy of an asset path (e.g. "modart/x.webp"), or null when no active pack has it. Caller closes. */
    public static InputStream open(Context c, String path) throws IOException {
        ensure(c);
        ZipFile z = index.get(path);
        if (z == null) return null;
        ZipEntry e = z.getEntry(path);
        return e == null ? null : z.getInputStream(e);
    }

    /** True when an active pack hid this asset (path without extension, e.g. "modart/x"). */
    public static boolean removed(Context c, String baseNoExt) {
        ensure(c);
        return removed.contains(baseNoExt);
    }

    /** Names (no extension) that the packs add in a folder ("modart/"). */
    static Set<String> names(Context c, String folder) {
        ensure(c);
        Set<String> s = new HashSet<String>();
        for (String p : index.keySet()) if (p.startsWith(folder) && p.indexOf('/', folder.length()) < 0) s.add(base(p).substring(folder.length()));
        return s;
    }

    /** Names (no extension) the packs remove in a folder. */
    static Set<String> removedNames(Context c, String folder) {
        ensure(c);
        Set<String> s = new HashSet<String>();
        for (String r : removed) if (r.startsWith(folder)) s.add(r.substring(folder.length()));
        return s;
    }

    /** Every active layer's copy of a path, oldest first (for merged dictionaries such as lang/es.json). Caller closes. */
    static List<InputStream> layers(Context c, String path) {
        ensure(c);
        List<InputStream> out = new ArrayList<InputStream>();
        for (ZipFile z : zips) {
            try { ZipEntry e = z.getEntry(path); if (e != null) out.add(z.getInputStream(e)); } catch (Throwable t) { /* skip layer */ }
        }
        return out;
    }

    /** "id:sha16,id:sha16" of the active chain ("" = built-in content only). Part of the MP join hash. */
    static String chainKey(Context c) { ensure(c); return chainKey; }

    static List<String> chainIds(Context c) { ensure(c); return new ArrayList<String>(chainIds); }

    /** Readable content version for the panel and the MP mismatch text. */
    static String label(Context c) {
        ensure(c);
        if (dir != null && new File(dir, "safe").exists()) return "built-in (safe mode)";
        return chainIds.isEmpty() ? "built-in" : chainIds.get(chainIds.size() - 1);
    }

    // ================================================================== install side (ModUpdate)
    static File dir(Context c) { ensure(c); return dir; }

    static File packFile(Context c, String id) { return new File(new File(dir(c), "packs"), id + ".zip"); }

    /** The installed chain as written in active.txt (what the next start loads). */
    static List<String[]> installedChain(Context c) {
        try { return readChain(new File(dir(c), "active.txt")); } catch (Throwable t) { return new ArrayList<String[]>(); }
    }

    /** Writes the chain the next start loads (oldest first, {id, sha256}); keeps the old one as previous.txt and deletes packs neither uses. */
    static synchronized void setChain(Context c, List<String[]> chain) throws IOException {
        File d = dir(c);
        List<String[]> old = readChain(new File(d, "active.txt"));
        if (!keyOf(old).equals(keyOf(chain))) writeChain(new File(d, "previous.txt"), old);
        writeChain(new File(d, "active.txt"), chain);
        Set<String> keep = new HashSet<String>();
        for (String[] e : chain) keep.add(e[0] + ".zip");
        for (String[] e : readChain(new File(d, "previous.txt"))) keep.add(e[0] + ".zip");
        for (String id : chainIds) keep.add(id + ".zip");   // open in this process
        File[] fs = new File(d, "packs").listFiles();
        if (fs != null) for (File f : fs) if (!keep.contains(f.getName()) && !f.getName().endsWith(".part")) f.delete();
    }

    /** "Undo last update": previous.txt becomes the chain again. */
    static synchronized boolean undo(Context c) throws IOException {
        File d = dir(c);
        List<String[]> p = readChain(new File(d, "previous.txt"));
        List<String[]> a = readChain(new File(d, "active.txt"));
        if (keyOf(p).equals(keyOf(a))) return false;
        writeChain(new File(d, "active.txt"), p);
        writeChain(new File(d, "previous.txt"), a);
        return true;
    }

    static boolean safeMode(Context c) { return new File(dir(c), "safe").exists(); }

    static void setSafeMode(Context c, boolean on) throws IOException {
        File f = new File(dir(c), "safe");
        if (on) writeText(f, "1"); else f.delete();
    }

    /**
     * Zip safety and pack.txt check for a downloaded pack (sha already checked by the caller). Returns null when the
     * pack may be installed, else the reason. Pure Java (JVM-tested in V60U).
     */
    static String validate(File zip, String id, int build, int api) {
        ZipFile z = null;
        try {
            z = new ZipFile(zip);
            long total = 0;
            boolean info = false;
            Enumeration<? extends ZipEntry> en = z.entries();
            while (en.hasMoreElements()) {
                ZipEntry e = en.nextElement();
                String n = e.getName();
                if (n.equals("pack.txt")) { info = true; continue; }
                if (e.isDirectory()) { if (!safeDir(n)) return "bad folder " + n; continue; }
                if (!safeName(n)) return "file not allowed: " + n;
                long sz = e.getSize();
                if (sz < 0) return "unknown size: " + n;
                total += sz;
                if (total > MAX_UNPACKED) return "pack too large";
            }
            if (!info) return "no pack.txt";
            Map<String, String> m = new HashMap<String, String>();
            for (String l : packInfo(z)) { int i = l.indexOf('='); if (i > 0 && !l.startsWith("remove=")) m.put(l.substring(0, i), l.substring(i + 1).trim()); }
            if (!id.equals(m.get("id"))) return "pack id differs";
            if (parseInt(m.get("build"), -1) != build) return "pack is for another game build";
            if (parseInt(m.get("api"), -1) != api) return "pack is for another content version";
            // the declared sizes must hold while reading (a zip bomb lies in the central directory)
            en = z.entries();
            byte[] buf = new byte[1 << 15];
            while (en.hasMoreElements()) {
                ZipEntry e = en.nextElement();
                if (e.isDirectory()) continue;
                InputStream in = z.getInputStream(e);
                long n = 0;
                try { for (int r; (r = in.read(buf)) > 0; ) { n += r; if (n > e.getSize()) return "size mismatch: " + e.getName(); } } finally { in.close(); }
                if (n != e.getSize()) return "size mismatch: " + e.getName();
            }
            return null;
        } catch (Throwable t) {
            return "not a valid pack: " + t.getMessage();
        } finally {
            try { if (z != null) z.close(); } catch (Throwable t) { /* closed */ }
        }
    }

    static boolean safeName(String n) {
        if (n == null || n.length() > 200 || n.startsWith("/") || n.indexOf('\\') >= 0 || n.contains("..") || n.indexOf(':') >= 0) return false;
        if (n.equals("pack.txt")) return true;
        if (!allowedFolder(n)) return false;
        String l = n.toLowerCase(java.util.Locale.US);
        for (String x : EXTS) if (l.endsWith(x)) return true;
        return false;
    }

    private static boolean safeDir(String n) {
        if (n.contains("..") || n.startsWith("/") || n.indexOf('\\') >= 0) return false;
        for (String f : FOLDERS) if (n.equals(f) || f.startsWith(n)) return true;
        return allowedFolder(n);
    }

    private static boolean allowedFolder(String n) {
        if (n == null || n.contains("..")) return false;
        for (String f : FOLDERS) if (n.startsWith(f) && n.length() > f.length()) return true;
        return false;
    }

    // ================================================================== helpers
    static String base(String p) {
        int s = p.lastIndexOf('/'), d = p.lastIndexOf('.');
        return d > s ? p.substring(0, d) : p;
    }

    private static String[] packInfo(ZipFile z) throws IOException {
        ZipEntry e = z.getEntry("pack.txt");
        if (e == null || e.getSize() > 65536) return new String[0];
        InputStream in = z.getInputStream(e);
        try { return readLines(in); } finally { in.close(); }
    }

    static String keyOf(List<String[]> chain) {
        StringBuilder b = new StringBuilder();
        for (String[] e : chain) {
            if (b.length() > 0) b.append(',');
            b.append(e[0]).append(':').append(e.length > 1 && e[1].length() >= 16 ? e[1].substring(0, 16) : (e.length > 1 ? e[1] : ""));
        }
        return b.toString();
    }

    static List<String[]> readChain(File f) throws IOException {
        List<String[]> out = new ArrayList<String[]>();
        for (String l : readLines(f)) {
            String[] p = l.trim().split(" ");
            if (p.length >= 2 && p[0].length() > 0) out.add(new String[] {p[0], p[1]});
        }
        return out;
    }

    static void writeChain(File f, List<String[]> chain) throws IOException {
        StringBuilder b = new StringBuilder();
        for (String[] e : chain) b.append(e[0]).append(' ').append(e[1]).append('\n');
        writeText(f, b.toString());
    }

    static String[] readLines(File f) throws IOException {
        if (!f.isFile()) return new String[0];
        InputStream in = new FileInputStream(f);
        try { return readLines(in); } finally { in.close(); }
    }

    static String[] readLines(InputStream in) throws IOException {
        BufferedReader r = new BufferedReader(new InputStreamReader(in, "UTF-8"));
        List<String> out = new ArrayList<String>();
        for (String l; (l = r.readLine()) != null; ) if (l.trim().length() > 0) out.add(l.trim());
        return out.toArray(new String[0]);
    }

    /** Write to a temp file then rename (a crash mid-write never leaves half a chain file). */
    static void writeText(File f, String s) throws IOException {
        File t = new File(f.getPath() + ".tmp");
        FileOutputStream o = new FileOutputStream(t);
        try { o.write(s.getBytes("UTF-8")); o.getFD().sync(); } finally { o.close(); }
        if (!t.renameTo(f)) { f.delete(); if (!t.renameTo(f)) throw new IOException("rename " + f); }
    }

    static int parseInt(String s, int d) {
        try { return Integer.parseInt(s.trim()); } catch (Throwable t) { return d; }
    }

    static String sha256(File f) throws Exception {
        MessageDigest md = MessageDigest.getInstance("SHA-256");
        InputStream in = new FileInputStream(f);
        try { byte[] b = new byte[1 << 16]; for (int n; (n = in.read(b)) > 0; ) md.update(b, 0, n); } finally { in.close(); }
        return hex(md.digest());
    }

    static String hex(byte[] d) {
        StringBuilder b = new StringBuilder();
        for (byte x : d) b.append(String.format("%02x", x & 0xff));
        return b.toString();
    }

    /** Test hook (V60U): reset so a JVM test can load a chain from a plain directory. */
    static synchronized void testReset(File d) {
        for (ZipFile z : zips) { try { z.close(); } catch (Throwable t) { /* closed */ } }
        zips.clear(); index.clear(); removed.clear(); chainIds.clear(); chainKey = ""; notice = null;
        dir = d; ready = d != null;
    }

    /** Test hook (V60U): load the chain from dir (no crash guard). */
    static synchronized void testLoad() throws IOException {
        List<String[]> chain = readChain(new File(dir, "active.txt"));
        load(chain);
        chainKey = keyOf(chain);
    }
}
