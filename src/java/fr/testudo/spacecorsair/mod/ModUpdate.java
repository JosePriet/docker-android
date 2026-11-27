package fr.testudo.spacecorsair.mod;

import android.app.Activity;
import android.app.AlertDialog;
import android.app.PendingIntent;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.SharedPreferences;
import android.net.Uri;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import android.util.TypedValue;
import android.view.Gravity;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ScrollView;
import android.widget.TextView;
import android.widget.Toast;

import java.io.BufferedInputStream;
import java.io.ByteArrayOutputStream;
import java.io.DataInputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.RandomAccessFile;
import java.net.HttpURLConnection;
import java.net.URL;
import java.security.KeyFactory;
import java.security.MessageDigest;
import java.security.PublicKey;
import java.security.Signature;
import java.security.spec.X509EncodedKeySpec;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
import java.util.zip.InflaterInputStream;

/**
 * v45 in-game updates, part 2: the signed manifest, pack downloads (ModContent installs them, no reinstall), and
 * game-code updates as a small .scp delta that rebuilds the released APK from the installed one (sha-256 checked),
 * then one Install tap in the system installer (same package and key: the save stays). Plan:
 * /mnt/project-files/space-corsair/proposals/content-updates-plan.md. Nothing downloaded is ever run as code.
 *
 * Manifest (manifest.txt, UTF-8 lines, signed with ECDSA P-256 / SHA-256 in manifest.sig, DER):
 *   sc-manifest=1, seq=N (rising; an older one is ignored), apk.version/apk.build/apk.sha256/apk.size/apk.url,
 *   patch=fromSha256|url|sha256|size (repeat), pack=build|api|id|url|sha256|size|notes en|notes es (repeat, chain
 *   order), revoked=id (repeat). Built and signed by tools/updates/ (see tools/updates/README.md).
 */
public final class ModUpdate {
    private ModUpdate() {}

    static final String BASE = "https://github.com/JosePriet/docker-android/releases/download/channel-stable/";
    /** Content-signing public key (X.509 DER, base64). Private half: /mnt/project-files/space-corsair/keys/content-sign.pem. */
    static final String PUB = "MFkwEwYHKoZIzj0CAQYIKoZIzj0DAQcDQgAEwwv/CvQj2cg3ChnIOPTfwkLaxXUDJ1dYJ34bPAsZimbvTYn1i7TMod0MIEWB2ijJJWkso+yh4f9pHGetaTA/1Q==";
    static final long DAY_MS = 20L * 60 * 60 * 1000;
    private static final String PREFS = "corsair_update";
    private static final String ACTION = "fr.testudo.spacecorsair.mod.UPDATE_INSTALL";

    // ------------------------------------------------------------------ manifest
    static final class Pack { int build, api; String id, url, sha, en, es; long size; }
    static final class Patch { String from, url, sha; long size; }
    static final class Manifest {
        int seq = -1, apkBuild = -1; long apkSize; String apkVersion = "", apkSha = "", apkUrl = "";
        final List<Patch> patches = new ArrayList<Patch>();
        final List<Pack> packs = new ArrayList<Pack>();
        final Set<String> revoked = new HashSet<String>();
    }

    /** Signature check (JVM-tested in V60U). */
    static boolean verify(byte[] text, byte[] sig, String pubB64) {
        try {
            PublicKey k = KeyFactory.getInstance("EC").generatePublic(new X509EncodedKeySpec(b64(pubB64)));
            Signature s = Signature.getInstance("SHA256withECDSA");
            s.initVerify(k);
            s.update(text);
            return s.verify(sig);
        } catch (Throwable t) {
            return false;
        }
    }

    static Manifest parse(String text) {
        Manifest m = new Manifest();
        boolean head = false;
        for (String raw : text.split("\n")) {
            String l = raw.trim();
            int i = l.indexOf('=');
            if (i <= 0) continue;
            String k = l.substring(0, i), v = l.substring(i + 1);
            if (k.equals("sc-manifest")) head = "1".equals(v);
            else if (k.equals("seq")) m.seq = ModContent.parseInt(v, -1);
            else if (k.equals("apk.version")) m.apkVersion = v;
            else if (k.equals("apk.build")) m.apkBuild = ModContent.parseInt(v, -1);
            else if (k.equals("apk.sha256")) m.apkSha = v.toLowerCase(java.util.Locale.US);
            else if (k.equals("apk.size")) m.apkSize = parseLong(v);
            else if (k.equals("apk.url")) m.apkUrl = v;
            else if (k.equals("revoked")) m.revoked.add(v);
            else if (k.equals("patch")) {
                String[] p = v.split("\\|", -1);
                if (p.length < 4) continue;
                Patch x = new Patch(); x.from = p[0].toLowerCase(java.util.Locale.US); x.url = p[1]; x.sha = p[2].toLowerCase(java.util.Locale.US); x.size = parseLong(p[3]);
                m.patches.add(x);
            } else if (k.equals("pack")) {
                String[] p = v.split("\\|", -1);
                if (p.length < 6) continue;
                Pack x = new Pack();
                x.build = ModContent.parseInt(p[0], -1); x.api = ModContent.parseInt(p[1], -1); x.id = p[2]; x.url = p[3];
                x.sha = p[4].toLowerCase(java.util.Locale.US); x.size = parseLong(p[5]);
                x.en = p.length > 6 ? p[6] : ""; x.es = p.length > 7 ? p[7] : "";
                if (x.id.matches("[A-Za-z0-9._-]{1,64}")) m.packs.add(x);
            }
        }
        return head ? m : null;
    }

    /** The chain this build should run (manifest order, minus revoked). */
    static List<Pack> chainFor(Manifest m, int build) {
        List<Pack> out = new ArrayList<Pack>();
        for (Pack p : m.packs) if (p.build == build && p.api == ModContent.API && !m.revoked.contains(p.id)) out.add(p);
        return out;
    }

    // ------------------------------------------------------------------ .scp delta (JVM-tested in V60U)
    /**
     * Rebuilds the new APK: "SCP1", from sha-256 (32), to sha-256 (32), to size (8), then a deflated op stream:
     * 1 = copy (long offset, int length) from the old APK, 2 = data (int length, bytes), 0 = end.
     * The output is deleted unless it is exactly toSize bytes with the to sha-256.
     */
    static void applyPatch(File oldApk, InputStream patch, File out) throws Exception {
        DataInputStream d = new DataInputStream(new BufferedInputStream(patch));
        byte[] magic = new byte[4]; d.readFully(magic);
        if (!"SCP1".equals(new String(magic, "US-ASCII"))) throw new IOException("not a patch");
        byte[] from = new byte[32], to = new byte[32]; d.readFully(from); d.readFully(to);
        long toSize = d.readLong();
        if (!ModContent.hex(from).equals(ModContent.sha256(oldApk))) throw new IOException("patch is for another installed version");
        DataInputStream ops = new DataInputStream(new BufferedInputStream(new InflaterInputStream(d), 1 << 16));
        MessageDigest md = MessageDigest.getInstance("SHA-256");
        RandomAccessFile src = new RandomAccessFile(oldApk, "r");
        OutputStream o = new FileOutputStream(out);
        long written = 0;
        boolean ok = false;
        try {
            byte[] buf = new byte[1 << 16];
            while (true) {
                int op = ops.read();
                if (op == 0) break;
                if (op == 1) {
                    long off = ops.readLong(); int len = ops.readInt();
                    if (len < 0 || off < 0 || off + len > src.length() || written + len > toSize) throw new IOException("bad copy");
                    src.seek(off);
                    while (len > 0) { int n = src.read(buf, 0, Math.min(len, buf.length)); if (n <= 0) throw new IOException("short read"); o.write(buf, 0, n); md.update(buf, 0, n); len -= n; written += n; }
                } else if (op == 2) {
                    int len = ops.readInt();
                    if (len < 0 || written + len > toSize) throw new IOException("bad data");
                    while (len > 0) { int n = ops.read(buf, 0, Math.min(len, buf.length)); if (n <= 0) throw new IOException("short patch"); o.write(buf, 0, n); md.update(buf, 0, n); len -= n; written += n; }
                } else throw new IOException("bad op " + op);
            }
            ok = written == toSize && java.util.Arrays.equals(md.digest(), to);
            if (!ok) throw new IOException("rebuilt game does not match the release");
        } finally {
            try { o.close(); } catch (Throwable t) { /* closed */ }
            src.close();
            if (!ok) out.delete();
        }
    }

    // ------------------------------------------------------------------ state
    private static volatile Manifest last;
    private static volatile String status = "";
    private static volatile boolean busy;
    private static volatile boolean restartNeeded;
    private static boolean autoDone, receiver;
    private static TextView menuLabel;
    private static Runnable panelRefresh;
    private static Context app;
    private static Handler ui;   // lazy: JVM tests load this class without a Looper

    static int myBuild(Context c) {
        try { return c.getPackageManager().getPackageInfo(c.getPackageName(), 0).versionCode - 1000; } catch (Throwable t) { return -1; }
    }

    private static String myVersion(Context c) {
        try { return c.getPackageManager().getPackageInfo(c.getPackageName(), 0).versionName; } catch (Throwable t) { return "?"; }
    }

    private static SharedPreferences prefs(Context c) { return c.getSharedPreferences(PREFS, 0); }

    private static String base() {
        String t = ModDev.testValue("corsair_upd_url");   // emulator: a test channel
        return t != null && t.length() > 0 ? (t.endsWith("/") ? t : t + "/") : BASE;
    }

    /** Packs the manifest wants for this build that are not installed in that order yet. */
    static List<Pack> missing(Context c, Manifest m) {
        List<Pack> want = chainFor(m, myBuild(c));
        List<String[]> have = ModContent.installedChain(c);
        List<Pack> out = new ArrayList<Pack>();
        boolean same = want.size() == have.size();
        for (int i = 0; same && i < want.size(); i++) same = want.get(i).id.equals(have.get(i)[0]) && want.get(i).sha.equals(have.get(i)[1]);
        for (Pack p : want) {
            File f = ModContent.packFile(c, p.id);
            if (!f.isFile() || f.length() != p.size) out.add(p);
        }
        if (out.isEmpty() && !same) out.add(null);   // only the order / revoked list changed: rewrite the chain
        return out;
    }

    static boolean gameUpdate(Context c, Manifest m) { return m != null && m.apkBuild > myBuild(c) && m.apkUrl.length() > 0; }

    static boolean anything(Context c, Manifest m) { return m != null && (gameUpdate(c, m) || !missing(c, m).isEmpty()); }

    // ------------------------------------------------------------------ check
    /** Fetches and verifies the manifest (background thread). Returns null and sets status on failure. */
    static Manifest fetch(Context c) {
        try {
            byte[] text = get(base() + "manifest.txt", 1 << 20);
            byte[] sig = get(base() + "manifest.sig", 4096);
            if (!verify(text, sig, PUB)) { status = tr("Update check failed: the update list is not signed by the game's key."); return null; }
            Manifest m = parse(new String(text, "UTF-8"));
            if (m == null || m.seq < 0) { status = tr("Update check failed: the update list could not be read."); return null; }
            int seen = prefs(c).getInt("seq", -1);
            if (m.seq < seen) { status = tr("No new updates."); return last; }   // an older (cached) list: keep what we had
            prefs(c).edit().putInt("seq", m.seq).putLong("checked", System.currentTimeMillis()).commit();
            last = m;
            status = anything(c, m) ? tr("Updates are available.") : tr("Your game is up to date.");
            ModDev.ev("update", "manifest seq " + m.seq + " apk " + m.apkVersion + "/" + m.apkBuild + " packs " + m.packs.size());
            return m;
        } catch (Throwable t) {
            status = tr("Update check failed: no connection.");
            ModDev.ev("update", "check failed " + t);
            return null;
        }
    }

    /**
     * From ModLang.apply (every activity start): once per process (each game start), a hidden check of the signed list
     * (a few KB, any network). Nothing is shown when the game is up to date. When a newer game version or content pack
     * exists, a prompt offers "Download update" (owner 2026-11-27); nothing downloads without that tap.
     */
    public static void onActivity(final Activity a) {
        try {
            if (autoDone || a == null) return;
            autoDone = true;
            app = a.getApplicationContext();
            ModContent.ensure(app);
            if (ModContent.notice != null) toast(tr(ModContent.notice));
            if (!online(app)) return;
            new Thread(new Runnable() {
                public void run() {
                    final Manifest m = fetch(app);
                    if (anything(app, m)) post(new Runnable() { public void run() { refreshLabel(); prompt(m); } });
                }
            }, "update-check").start();
        } catch (Throwable t) { /* never block a screen */ }
    }

    /** The activity in front (ModLang.apply runs on every activity start), for the boot prompt. */
    private static java.lang.ref.WeakReference<Activity> front;

    static void front(Activity a) { if (a != null) front = new java.lang.ref.WeakReference<Activity>(a); }

    /** Boot prompt: "Download update" starts the download (game update first: a new build carries all content). */
    private static void prompt(final Manifest m) {
        final Activity a = front != null ? front.get() : null;
        if (a == null || a.isFinishing() || busy || restartNeeded) { toast(tr("A game update is ready. Open the menu, then Updates.")); return; }
        try {
            final Context c = a.getApplicationContext();
            final boolean game = gameUpdate(c, m);
            long sz = 0;
            StringBuilder s = new StringBuilder();
            boolean es = ModLang.spanish();
            if (game) {
                sz = m.apkSize;
                for (Patch p : m.patches) sz = Math.min(sz, p.size);
                s.append(tr("New game version")).append(": ").append(m.apkVersion);
            } else {
                for (Pack p : missing(c, m)) {
                    if (p == null) continue;
                    sz += p.size;
                    String n = es && p.es.length() > 0 ? p.es : p.en;
                    s.append(s.length() > 0 ? "\n" : "").append("• ").append(n.length() > 0 ? n : p.id);
                }
            }
            s.append("\n\n").append(tr("Size")).append(": ").append(sz > 0 && sz < m.apkSize ? "~" : "").append(mb(sz));
            new AlertDialog.Builder(a).setTitle(tr("Update available")).setMessage(s.toString())
                .setPositiveButton(tr("Download update"), new android.content.DialogInterface.OnClickListener() {
                    public void onClick(android.content.DialogInterface d, int w) {
                        show(a);
                        work(a, new Job() { public void run() throws Exception { if (game) runGame(c, m); else runContent(c, m); } });
                    }
                })
                .setNegativeButton(tr("Later"), null).show();
        } catch (Throwable t) { toast(tr("A game update is ready. Open the menu, then Updates.")); }
    }

    private static boolean online(Context c) {
        try {
            android.net.ConnectivityManager cm = (android.net.ConnectivityManager) c.getSystemService(Context.CONNECTIVITY_SERVICE);
            android.net.NetworkInfo n = cm.getActiveNetworkInfo();
            return n != null && n.isConnected();
        } catch (Throwable t) { return true; }   // unknown: try (the fetch has timeouts)
    }


    // ------------------------------------------------------------------ downloads
    static byte[] get(String url, int max) throws IOException {
        HttpURLConnection c = open(url, -1);
        InputStream in = c.getInputStream();
        try {
            ByteArrayOutputStream b = new ByteArrayOutputStream();
            byte[] buf = new byte[8192];
            for (int n; (n = in.read(buf)) > 0; ) { b.write(buf, 0, n); if (b.size() > max) throw new IOException("too large"); }
            return b.toByteArray();
        } finally { in.close(); c.disconnect(); }
    }

    /** Follows redirects by hand so a Range header reaches the final host. from >= 0 asks for bytes from there. */
    private static HttpURLConnection open(String url, long from) throws IOException {
        String u = url;
        for (int hop = 0; hop < 6; hop++) {
            HttpURLConnection c = (HttpURLConnection) new URL(u).openConnection();
            c.setInstanceFollowRedirects(false);
            c.setConnectTimeout(15000);
            c.setReadTimeout(30000);
            c.setRequestProperty("User-Agent", "SpaceCorsairMod");
            c.setUseCaches(false);
            if (from > 0) c.setRequestProperty("Range", "bytes=" + from + "-");
            int code = c.getResponseCode();
            if (code >= 300 && code < 400) {
                String loc = c.getHeaderField("Location");
                c.disconnect();
                if (loc == null || !loc.startsWith("https://")) throw new IOException("bad redirect");
                u = loc;
                continue;
            }
            if (code != 200 && code != 206) { c.disconnect(); throw new IOException("HTTP " + code); }
            return c;
        }
        throw new IOException("too many redirects");
    }

    interface Progress { void at(long done, long total); }

    /** Downloads to dest via dest.part, resuming after a dropped connection (up to 6 tries), then checks size and sha-256. */
    static void download(String url, File dest, long size, String sha, Progress p) throws Exception {
        for (int attempt = 1; ; attempt++) {
            try { download1(url, dest, size, sha, p); return; }
            catch (IOException e) {
                File part = new File(dest.getPath() + ".part");
                boolean resumable = part.isFile() && part.length() > 0 && part.length() < size;
                ModDev.ev("update", "download try " + attempt + " stopped at " + part.length() + ": " + e);
                if (attempt >= 6 || e.getMessage() != null && e.getMessage().startsWith("download damaged")) {
                    throw new IOException(tr("The download stopped. Tap the button again to continue where it stopped."));
                }
                if (!resumable) Thread.sleep(2000L * attempt);
            }
        }
    }

    private static void download1(String url, File dest, long size, String sha, Progress p) throws Exception {
        File part = new File(dest.getPath() + ".part");
        long have = part.isFile() ? part.length() : 0;
        if (have >= size) { part.delete(); have = 0; }
        HttpURLConnection c = open(url, have);
        boolean append = c.getResponseCode() == 206 && have > 0;
        if (!append) have = 0;
        InputStream in = c.getInputStream();
        OutputStream o = new FileOutputStream(part, append);
        try {
            byte[] buf = new byte[1 << 16];
            long n = have, shown = 0;
            for (int r; (r = in.read(buf)) > 0; ) {
                o.write(buf, 0, r); n += r;
                if (n > size) throw new IOException("download larger than expected");
                if (p != null && n - shown > (256 << 10)) { p.at(n, size); shown = n; }
            }
        } finally { o.close(); in.close(); c.disconnect(); }
        if (part.length() != size) throw new IOException("download incomplete");
        if (!ModContent.sha256(part).equals(sha)) { part.delete(); throw new IOException("download damaged (checksum)"); }
        dest.delete();
        if (!part.renameTo(dest)) throw new IOException("could not save the download");
    }

    private static boolean enoughSpace(File d, long need) {
        try { return d.getUsableSpace() > need + (20L << 20); } catch (Throwable t) { return true; }
    }

    /** Downloads every missing pack, validates each, then writes the new chain (applied at the next start). */
    static void runContent(final Context c, Manifest m) throws Exception {
        List<Pack> want = chainFor(m, myBuild(c));
        long need = 0;
        for (Pack p : missing(c, m)) if (p != null) need += p.size * 2;
        if (!enoughSpace(ModContent.dir(c), need)) throw new IOException(tr("Not enough free space on the phone."));
        List<String[]> chain = new ArrayList<String[]>();
        for (final Pack p : want) {
            File f = ModContent.packFile(c, p.id);
            if (!f.isFile() || f.length() != p.size || !ModContent.sha256(f).equals(p.sha)) {
                download(p.url, f, p.size, p.sha, new Progress() { public void at(long d, long t) { setStatus(tr("Downloading content") + " " + p.id + ": " + mb(d) + " / " + mb(t)); } });
            }
            String bad = ModContent.validate(f, p.id, myBuild(c), ModContent.API);
            if (bad != null) { f.delete(); throw new IOException(tr("Update refused") + " (" + p.id + "): " + bad); }
            chain.add(new String[] {p.id, p.sha});
        }
        ModContent.setChain(c, chain);
        restartNeeded = true;
        status = tr("Content updated. Restart the game to apply it. If it does not open again by itself, open it from the home screen.");
        ModDev.ev("update", "chain set " + ModContent.keyOf(chain));
    }

    /** Game-code update: delta patch when one matches the installed APK, else the full APK; then the installer. */
    static void runGame(final Context c, final Manifest m) throws Exception {
        File d = new File(ModContent.dir(c), "apk");
        d.mkdirs();
        File apk = new File(d, "new.apk");
        ModContent.writeText(new File(d, "build.txt"), m.apkBuild + "\n");   // phase 2: ModContent.prune deletes apk/ once this build runs
        File installed = new File(c.getPackageCodePath());
        setStatus(tr("Checking the installed game..."));
        String mine = ModContent.sha256(installed);
        Patch use = null;
        for (Patch p : m.patches) if (p.from.equals(mine)) use = p;
        if (!enoughSpace(d, m.apkSize + (use != null ? use.size : 0))) throw new IOException(tr("Not enough free space on the phone."));
        if (!(apk.isFile() && apk.length() == m.apkSize && ModContent.sha256(apk).equals(m.apkSha))) {
            if (use != null) {
                File pf = new File(d, "update.scp");
                download(use.url, pf, use.size, use.sha, new Progress() { public void at(long x, long t) { setStatus(tr("Downloading game update") + ": " + mb(x) + " / " + mb(t)); } });
                setStatus(tr("Building the new game version..."));
                InputStream in = new FileInputStream(pf);
                try { applyPatch(installed, in, apk); } finally { in.close(); pf.delete(); }
            } else {
                download(m.apkUrl, apk, m.apkSize, m.apkSha, new Progress() { public void at(long x, long t) { setStatus(tr("Downloading the full game") + ": " + mb(x) + " / " + mb(t)); } });
            }
        }
        if (!ModContent.sha256(apk).equals(m.apkSha)) { apk.delete(); throw new IOException("rebuilt game does not match the release"); }
        setStatus(tr("Opening the installer..."));
        install(c, apk, m);
    }

    /** PackageInstaller session (API 21+, through reflection: the build compiles against API 16). */
    private static void install(final Context c, File apk, final Manifest m) throws Exception {
        if (Build.VERSION.SDK_INT < 21) { openLink(c, m.apkUrl); return; }
        if (!receiver) c.getApplicationContext().registerReceiver(new BroadcastReceiver() {
            public void onReceive(Context x, Intent i) {
                try {
                    int st = i.getIntExtra("android.content.pm.extra.STATUS", 1);
                    if (st == -1) {   // STATUS_PENDING_USER_ACTION: show the system install screen
                        Intent confirm = (Intent) i.getParcelableExtra(Intent.EXTRA_INTENT);
                        if (confirm != null) { confirm.addFlags(Intent.FLAG_ACTIVITY_NEW_TASK); x.startActivity(confirm); }
                        setStatus(tr("Tap Install to finish. Your save is kept."));
                    } else if (st != 0) {
                        String msg = i.getStringExtra("android.content.pm.extra.STATUS_MESSAGE");
                        ModDev.ev("update", "install failed " + st + " " + msg);
                        setStatus(tr("The installer did not finish. You can download the full game instead.") + (msg != null ? " (" + msg + ")" : ""));
                    }
                } catch (Throwable t) { setStatus(String.valueOf(t)); }
            }
        }, new IntentFilter(ACTION));
        receiver = true;
        Object pm = c.getPackageManager();
        Object pi = pm.getClass().getMethod("getPackageInstaller").invoke(pm);
        Class<?> sp = Class.forName("android.content.pm.PackageInstaller$SessionParams");
        Object params = sp.getConstructor(int.class).newInstance(1);   // MODE_FULL_INSTALL
        int id = (Integer) pi.getClass().getMethod("createSession", sp).invoke(pi, params);
        Object s = pi.getClass().getMethod("openSession", int.class).invoke(pi, id);
        OutputStream o = (OutputStream) s.getClass().getMethod("openWrite", String.class, long.class, long.class).invoke(s, "base.apk", 0L, apk.length());
        InputStream in = new FileInputStream(apk);
        try {
            byte[] b = new byte[1 << 16];
            for (int n; (n = in.read(b)) > 0; ) o.write(b, 0, n);
            s.getClass().getMethod("fsync", OutputStream.class).invoke(s, o);
        } finally { in.close(); o.close(); }
        Intent cb = new Intent(ACTION);
        cb.setPackage(c.getPackageName());
        PendingIntent p = PendingIntent.getBroadcast(c, id, cb, PendingIntent.FLAG_UPDATE_CURRENT);
        s.getClass().getMethod("commit", android.content.IntentSender.class).invoke(s, p.getIntentSender());
    }

    private static void openLink(Context c, String url) {
        try {
            Intent i = new Intent(Intent.ACTION_VIEW, Uri.parse(url));
            i.addFlags(Intent.FLAG_ACTIVITY_NEW_TASK);
            c.startActivity(i);
        } catch (Throwable t) { setStatus(url); }
    }

    // ------------------------------------------------------------------ panel
    /** From ModLanUi.menuEntry: an "Updates" entry after Multiplayer, same look (model = the Multiplayer entry). */
    static void menuEntry(final Context ctx, ViewGroup bar, ViewGroup model) {
        try {
            if (bar == null || model == null || !(ctx instanceof Activity) || bar.findViewWithTag("corsair_upd_entry") != null) return;
            LinearLayout e = new LinearLayout(ctx);
            e.setTag("corsair_upd_entry");
            e.setOrientation(LinearLayout.VERTICAL);
            e.setGravity(Gravity.CENTER);
            ViewGroup.LayoutParams mp = model.getLayoutParams();
            float w = mp instanceof LinearLayout.LayoutParams ? ((LinearLayout.LayoutParams) mp).weight : 1f;
            e.setLayoutParams(new LinearLayout.LayoutParams(mp.width, mp.height, w));
            View mIcon = model.getChildAt(0);
            ImageView icon = new ImageView(ctx);
            icon.setImageBitmap(icon());
            icon.setScaleType(ImageView.ScaleType.FIT_XY);
            icon.setLayoutParams(new LinearLayout.LayoutParams(mIcon.getLayoutParams()));
            e.addView(icon);
            TextView mText = (TextView) model.getChildAt(1);
            TextView t = new TextView(ctx);
            t.setTextSize(TypedValue.COMPLEX_UNIT_PX, mText.getTextSize());
            t.setTextColor(mText.getTextColors());
            t.setTypeface(mText.getTypeface());
            t.setLayoutParams(new LinearLayout.LayoutParams(mText.getLayoutParams()));
            e.addView(t);
            menuLabel = t;
            refreshLabel();
            e.setOnClickListener(new View.OnClickListener() {
                public void onClick(View v) {
                    try { fr.testudo.spacecorsair.utils.MenuDisplayer.hideMenu(); } catch (Throwable x) { /* menu already gone */ }
                    show((Activity) ctx);
                }
            });
            bar.addView(e, bar.indexOfChild(model) + 1);
        } catch (Throwable t) { /* never break the flight menu */ }
    }

    static void refreshLabel() {
        try {
            TextView t = menuLabel;
            if (t == null) return;
            Context c = t.getContext();
            boolean dot = restartNeeded || anything(c, last);
            t.setText(tr("Updates") + (dot ? " •" : ""));
        } catch (Throwable x) { /* ignore */ }
    }

    private static android.graphics.Bitmap icon() {
        int n = 128;
        android.graphics.Bitmap b = android.graphics.Bitmap.createBitmap(n, n, android.graphics.Bitmap.Config.ARGB_8888);
        android.graphics.Canvas c = new android.graphics.Canvas(b);
        android.graphics.Paint p = new android.graphics.Paint(android.graphics.Paint.ANTI_ALIAS_FLAG);
        p.setStyle(android.graphics.Paint.Style.STROKE);
        p.setStrokeWidth(n * 0.05f);
        p.setColor(0xFF2EC4F0);
        android.graphics.RectF r = new android.graphics.RectF(n * 0.195f, n * 0.195f, n * 0.805f, n * 0.805f);
        for (int i = 0; i < 4; i++) c.drawArc(r, i * 90 + 12, 66, false, p);
        p.setStyle(android.graphics.Paint.Style.FILL);
        p.setColor(0xFFFFFFFF);
        android.graphics.Path a = new android.graphics.Path();   // down arrow
        a.moveTo(n * 0.44f, n * 0.33f); a.lineTo(n * 0.56f, n * 0.33f); a.lineTo(n * 0.56f, n * 0.52f); a.lineTo(n * 0.65f, n * 0.52f);
        a.lineTo(n * 0.5f, n * 0.68f); a.lineTo(n * 0.35f, n * 0.52f); a.lineTo(n * 0.44f, n * 0.52f); a.close();
        c.drawPath(a, p);
        return b;
    }

    static void show(final Activity a) {
        app = a.getApplicationContext();
        ModContent.ensure(app);
        final LinearLayout box = new LinearLayout(a);
        box.setOrientation(LinearLayout.VERTICAL);
        int pad = (int) (16 * a.getResources().getDisplayMetrics().density);
        box.setPadding(pad, pad, pad, pad);
        ScrollView sv = new ScrollView(a);
        sv.addView(box);
        final AlertDialog dlg = new AlertDialog.Builder(a).setTitle(tr("Game updates")).setView(sv).setNegativeButton(tr("Close"), null).create();
        panelRefresh = new Runnable() { public void run() { fill(a, box, dlg); } };
        dlg.setOnDismissListener(new android.content.DialogInterface.OnDismissListener() { public void onDismiss(android.content.DialogInterface d) { panelRefresh = null; } });
        fill(a, box, dlg);
        dlg.show();
        if (last == null && !busy) work(a, new Job() { public void run() { fetch(app); } });
    }

    interface Job { void run() throws Exception; }

    private static void work(final Activity a, final Job j) {
        if (busy) return;
        busy = true;
        refreshPanel();
        new Thread(new Runnable() {
            public void run() {
                try { j.run(); } catch (Throwable t) { status = t.getMessage() != null ? t.getMessage() : String.valueOf(t); ModDev.ev("update", "job failed " + t); }
                busy = false;
                post(new Runnable() { public void run() { refreshPanel(); refreshLabel(); } });
            }
        }, "update-job").start();
    }

    private static void fill(final Activity a, LinearLayout box, AlertDialog dlg) {
        box.removeAllViews();
        final Context c = a.getApplicationContext();
        final Manifest m = last;
        StringBuilder s = new StringBuilder();
        s.append(tr("Game version")).append(": ").append(myVersion(c)).append('\n');
        s.append(tr("Content")).append(": ").append(ModContent.label(c)).append('\n');
        long when = prefs(c).getLong("checked", 0);
        if (when > 0) s.append(tr("Last check")).append(": ").append(android.text.format.DateFormat.getDateFormat(c).format(new java.util.Date(when)))
            .append(' ').append(android.text.format.DateFormat.getTimeFormat(c).format(new java.util.Date(when))).append('\n');
        if (status.length() > 0) s.append('\n').append(status).append('\n');
        if (m != null) {
            boolean es = ModLang.spanish();
            for (Pack p : chainFor(m, myBuild(c))) {
                String n = es && p.es.length() > 0 ? p.es : p.en;
                if (n.length() > 0) s.append("\n• ").append(p.id).append(": ").append(n);
            }
            if (gameUpdate(c, m)) s.append("\n• ").append(tr("New game version")).append(": ").append(m.apkVersion);
        }
        box.addView(text(a, s.toString()));
        if (busy) { box.addView(text(a, tr("Working..."))); return; }
        if (restartNeeded) box.addView(button(a, tr("Restart the game now"), new View.OnClickListener() { public void onClick(View v) { restart(a); } }));
        if (m != null && !restartNeeded && !missing(c, m).isEmpty()) {
            long sz = 0;
            for (Pack p : missing(c, m)) if (p != null) sz += p.size;
            box.addView(button(a, tr("Download content") + (sz > 0 ? " (" + mb(sz) + ")" : ""), new View.OnClickListener() {
                public void onClick(View v) { work(a, new Job() { public void run() throws Exception { runContent(c, m); } }); }
            }));
        }
        if (m != null && gameUpdate(c, m)) {
            long sz = m.apkSize;
            for (Patch p : m.patches) sz = Math.min(sz, p.size);   // the patch fits only if it matches; the size shown is the best case
            box.addView(button(a, tr("Update the game") + " (" + (sz < m.apkSize ? "~" : "") + mb(sz) + ")", new View.OnClickListener() {
                public void onClick(View v) { work(a, new Job() { public void run() throws Exception { runGame(c, m); } }); }
            }));
            box.addView(button(a, tr("Download the full game in the browser"), new View.OnClickListener() { public void onClick(View v) { openLink(c, m.apkUrl); } }));
        }
        box.addView(button(a, tr("Check now"), new View.OnClickListener() {
            public void onClick(View v) { work(a, new Job() { public void run() { fetch(c); } }); }
        }));
        box.addView(button(a, tr("Undo last update"), new View.OnClickListener() {
            public void onClick(View v) {
                try { boolean u = ModContent.undo(c); status = u ? tr("Previous content restored. Restart the game to apply it.") : tr("Nothing to undo."); if (u) restartNeeded = true; } catch (Throwable t) { status = String.valueOf(t); }
                refreshPanel();
            }
        }));
        final boolean safe = ModContent.safeMode(c);
        box.addView(button(a, safe ? tr("Use downloaded content again") : tr("Use built-in content only"), new View.OnClickListener() {
            public void onClick(View v) {
                try { ModContent.setSafeMode(c, !safe); restartNeeded = true; status = tr("Restart the game to apply it."); } catch (Throwable t) { status = String.valueOf(t); }
                refreshPanel();
            }
        }));
    }

    private static TextView text(Context c, String s) {
        TextView t = new TextView(c);
        t.setText(s);
        t.setTextColor(0xFFE0E0E0);
        t.setTextSize(TypedValue.COMPLEX_UNIT_SP, 14);
        return t;
    }

    private static Button button(Context c, String s, View.OnClickListener l) {
        Button b = new Button(c);
        b.setText(s);
        b.setOnClickListener(l);
        b.setLayoutParams(new LinearLayout.LayoutParams(ViewGroup.LayoutParams.MATCH_PARENT, ViewGroup.LayoutParams.WRAP_CONTENT));
        return b;
    }

    private static void restart(Activity a) {
        try {
            Intent i = a.getPackageManager().getLaunchIntentForPackage(a.getPackageName());
            if (i != null) {
                i.addFlags(Intent.FLAG_ACTIVITY_NEW_TASK | Intent.FLAG_ACTIVITY_CLEAR_TASK);
                PendingIntent p = PendingIntent.getActivity(a, 4711, i, PendingIntent.FLAG_CANCEL_CURRENT);
                android.app.AlarmManager am = (android.app.AlarmManager) a.getSystemService(Context.ALARM_SERVICE);
                am.set(android.app.AlarmManager.RTC, System.currentTimeMillis() + 4500, p);   // after the kill below: a launch into the dying process would vanish
            }
        } catch (Throwable t) { /* the player reopens the game */ }
        // the game saves when its screens pause: send it to the background first, then end the process
        try { a.moveTaskToBack(true); } catch (Throwable t) { /* ignore */ }
        post2(new Runnable() { public void run() { android.os.Process.killProcess(android.os.Process.myPid()); } }, 2000);
    }

    private static synchronized void post2(Runnable r, long ms) { if (ui == null) ui = new Handler(Looper.getMainLooper()); ui.postDelayed(r, ms); }

    private static void refreshPanel() { Runnable r = panelRefresh; if (r != null) post(r); }

    private static void setStatus(String s) { status = s; refreshPanel(); }

    private static synchronized void post(Runnable r) { if (ui == null) ui = new Handler(Looper.getMainLooper()); ui.post(r); }

    private static void toast(final String s) {
        post(new Runnable() { public void run() { try { if (app != null) Toast.makeText(app, s, Toast.LENGTH_LONG).show(); } catch (Throwable t) { /* ignore */ } } });
    }

    // ------------------------------------------------------------------ small helpers
    static String tr(String s) { try { return ModLang.tr(s); } catch (Throwable t) { return s; } }

    static String mb(long b) { return String.format(java.util.Locale.US, "%.1f MB", b / 1048576.0); }

    static long parseLong(String s) { try { return Long.parseLong(s.trim()); } catch (Throwable t) { return -1; } }

    static byte[] b64(String s) {
        String a = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/";
        ByteArrayOutputStream o = new ByteArrayOutputStream();
        int buf = 0, bits = 0;
        for (char ch : s.toCharArray()) {
            int v = a.indexOf(ch);
            if (v < 0) continue;
            buf = (buf << 6) | v; bits += 6;
            if (bits >= 8) { bits -= 8; o.write((buf >> bits) & 0xff); }
        }
        return o.toByteArray();
    }
}
