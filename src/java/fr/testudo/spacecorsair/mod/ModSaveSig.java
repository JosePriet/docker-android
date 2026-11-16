package fr.testudo.spacecorsair.mod;

import android.content.Context;
import android.content.SharedPreferences;

import java.io.File;
import java.io.FileInputStream;

/**
 * v45 save checksum and install id (SPEC-FINAL section 2).
 *
 * <p>The game's save (the files in the app's files folder: player, inventory, missions...) is signed with an HMAC
 * every time the game writes it. At start the files are checked against the signature: a save edited while the game
 * was closed does not match, and public
 * lobbies are locked for 24 hours (solo, local games and private codes keep working). The key is in the APK, so this
 * stops casual editing only.
 *
 * <p>The install id is 16 random bytes made on first start. It is not derived from the phone or the player.
 */
final class ModSaveSig {
    private ModSaveSig() {}

    static final long LOCK_MS = 24L * 60 * 60 * 1000;
    private static final byte[] KEY = {
        0x53, 0x43, 0x2d, 0x76, 0x34, 0x35, 0x2d, 0x73, 0x61, 0x76, 0x65, 0x2d, 0x6b, 0x65, 0x79, 0x2d,
        0x39, 0x64, 0x31, 0x66, 0x37, 0x61, 0x33, 0x63, 0x35, 0x65, 0x38, 0x62, 0x32, 0x30, 0x34, 0x36};
    private static volatile boolean started;
    private static volatile long lockedUntil;
    private static volatile String install = "";
    private static Context ctx;
    private static android.os.FileObserver keep;   // a strong reference: an observer that is collected stops watching
    private static final Object signLock = new Object();
    private static volatile long signAt;

    private static SharedPreferences prefs() { return ctx.getSharedPreferences("corsair_net", 0); }

    /** Application start, before the game touches its save. Never throws. */
    static void start(Context c) {
        if (started || c == null) return;
        started = true;
        try {
            ctx = c.getApplicationContext() != null ? c.getApplicationContext() : c;
            SharedPreferences p = prefs();
            String id = p.getString("install", "");
            if (id.length() != 32) {
                byte[] b = new byte[16];
                new java.security.SecureRandom().nextBytes(b);
                id = ModNet.hex(b, 0, 16);
                p.edit().putString("install", id).commit();
            }
            install = id;
            lockedUntil = p.getLong("locked", 0);
            String was = p.getString("sig", ""), now = signAll();
            if (was.length() > 0 && now.length() > 0 && !was.equals(now)) {
                lockedUntil = System.currentTimeMillis() + LOCK_MS;
                p.edit().putLong("locked", lockedUntil).commit();
                ModDev.ev("save", "checksum mismatch: public lobbies locked for 24 h");
            }
            if (now.length() > 0) p.edit().putString("sig", now).commit();
            keep = new android.os.FileObserver(ctx.getFilesDir().getPath(),
                android.os.FileObserver.CLOSE_WRITE | android.os.FileObserver.MOVED_TO | android.os.FileObserver.DELETE | android.os.FileObserver.CREATE) {
                @Override public void onEvent(int event, String path) {
                    // signed at once on this thread (the hash is cheap), so an app closed right after a save leaves a current signature
                    try { String s = signAll(); if (s.length() > 0) synchronized (signLock) { prefs().edit().putString("sig", s).commit(); } } catch (Throwable e) { /* the delayed pass below */ }
                    resignSoon();
                }
            };
            keep.startWatching();
        } catch (Throwable t) {
            // no checksum on this phone: nothing is locked
        }
    }

    /** After the immediate signing: once more 0.3 s later and after 3 s, for writes that were still open. */
    private static void resignSoon() {
        final long mark = System.currentTimeMillis();
        if (mark - signAt < 250) return;   // a signing is already on its way
        signAt = mark;
        Thread t = new Thread(new Runnable() {
            public void run() {
                try {
                    for (int wait : new int[]{300, 2700}) {
                        Thread.sleep(wait);
                        String s = signAll();
                        if (s.length() > 0) synchronized (signLock) { prefs().edit().putString("sig", s).commit(); }
                    }
                } catch (Throwable e) {
                    // signed at the next write
                }
            }
        }, "save-sign");
        t.setDaemon(true);
        t.start();
    }

    /** One signature over every file in the files folder (names and contents, in name order). Empty = nothing to sign. */
    private static String signAll() {
        try {
            File[] fs = ctx.getFilesDir().listFiles();
            if (fs == null || fs.length == 0) return "";
            java.util.Arrays.sort(fs);
            javax.crypto.Mac mac = javax.crypto.Mac.getInstance("HmacSHA256");
            mac.init(new javax.crypto.spec.SecretKeySpec(KEY, "HmacSHA256"));
            byte[] buf = new byte[65536];
            int files = 0;
            for (File f : fs) {
                if (!f.isFile() || f.length() > (32L << 20)) continue;
                mac.update(f.getName().getBytes("UTF-8"));
                mac.update((byte) 0);
                FileInputStream in = new FileInputStream(f);
                try {
                    int n;
                    while ((n = in.read(buf)) > 0) mac.update(buf, 0, n);
                } finally {
                    in.close();
                }
                files++;
            }
            if (files == 0) return "";
            byte[] h = mac.doFinal();
            return ModNet.hex(h, 0, h.length);
        } catch (Throwable t) {
            return "";
        }
    }

    static String sign(byte[] b) throws Exception {
        javax.crypto.Mac mac = javax.crypto.Mac.getInstance("HmacSHA256");
        mac.init(new javax.crypto.spec.SecretKeySpec(KEY, "HmacSHA256"));
        byte[] h = mac.doFinal(b);
        return ModNet.hex(h, 0, h.length);
    }

    /** False while public lobbies are locked for an edited save. */
    static boolean publicOk() { return System.currentTimeMillis() >= lockedUntil; }

    static long lockedHours() { return Math.max(0, (lockedUntil - System.currentTimeMillis() + 3599999) / 3600000); }

    static void installForTest(String id) { install = id; }

    /** 32 hex characters, random per install. Empty before {@link #start}. */
    static String installId() { return install; }
}
