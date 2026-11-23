package fr.testudo.spacecorsair.mod;

import android.app.Activity;
import android.app.AlertDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.SharedPreferences;
import android.graphics.Color;
import android.os.SystemClock;
import android.util.TypedValue;
import android.view.Gravity;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.FrameLayout;
import android.widget.Toast;
import fr.testudo.spacecorsair.business.loot.SpaceObjectType;
import fr.testudo.spacecorsair.business.player.Inventory;
import fr.testudo.spacecorsair.business.player.PlayerInfo;
import fr.testudo.spacecorsair.business.player.PlayerShip;
import fr.testudo.spacecorsair.engine.ObjectRegistry;
import fr.testudo.spacecorsair.game.achievements.Achievement;
import fr.testudo.spacecorsair.game.levels.LevelId;
import fr.testudo.spacecorsair.game.levels.LevelsGlobalProperties;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.OutputStream;
import java.util.HashMap;
import java.util.Map;
import java.util.Set;

/**
 * v40 (owner 2026-11-03): hidden test mode. Tapping the "Killed by the dev" achievement 10 times within 10 s shows a
 * small LOGIN button on the achievements screen. Logging in restarts the game on a separate test profile: max level,
 * every ship owned, gates open, whole galaxy map visible, every mission repeatable, free instant hyperdrive jumps,
 * credits / rare parts / cores kept topped up. LOG OUT restarts on the normal save, exactly as it was at login, and
 * discards the test profile (owner 2026-11-14), so the next login seeds a fresh one from the normal save.
 *
 * Profiles: the game's save files (getFilesDir) and the "spacecorsair" + "modqol" preferences are swapped at process
 * start, before StorageManager.restore reads them (hook hooks40). Copies live in app_corsair_profiles/main and /test.
 * Audit F5: the sound settings ("corsair_audio") are kept per profile too. The first login seeds the test profile with a copy of the save.
 */
public final class ModTestMode {
    private ModTestMode() {}

    /** True while the test profile is the loaded one. */
    public static boolean on;
    static volatile boolean profileUncertain;

    static final int LEVEL = ModV34.CAP;
    static final long CREDITS = 1000000000L, CREDITS_LOW = 900000000L;
    static final int PARTS = 999, CORES = 9;
    static final String[] PREFS = {"spacecorsair", "modqol", "corsair_audio"};   // audit F5 (owner 2026-11-17): sound settings per profile
    static final int TAPS = 10;
    static final long TAP_WINDOW_MS = 10000;

    // ------------------------------------------------------------------ profile swap (process start)

    private static File root(Context c) { return c.getDir("corsair_profiles", Context.MODE_PRIVATE); }

    /** hooks40: first line of StorageManager.restore. Applies a pending login / logout, then sets {@link #on}. */
    public static void beforeRestore() {
        if (ModSave.strictInputs) {
            on = false;
            profileUncertain = true;
        }
        try {
            Context c = ObjectRegistry.INSTANCE.mainActivity.getApplicationContext();
            File r = root(c);
            if (ModSave.strictInputs) {
                restoreChecked(c, r);
                profileUncertain = false;
                return;
            }
            String active = read(new File(r, "active"), "main");
            String pending = read(new File(r, "pending"), null);
            if (pending != null && !pending.equals(active) && ("main".equals(pending) || "test".equals(pending))) {
                File from = new File(r, active);
                if ("test".equals(active)) {
                    delete(from);                                // owner 2026-11-14: logging out throws the test profile away, so the
                                                                 // next login starts from zero again (re-seeded from the normal save)
                    ModDev.ev("v40test", "test profile discarded on logout");
                } else {
                    store(c, from);                              // the profile being left, complete before anything else changes
                }
                write(new File(r, "active"), pending);
                File to = new File(r, pending);
                if (new File(to, "complete").exists()) load(c, to);   // else: first login, the test profile starts as a copy
                android.util.Log.i("ModTestMode", "switched " + active + " -> " + pending);
                active = pending;
            }
            new File(r, "pending").delete();
            on = "test".equals(active);
            ModDev.ev("v40test", "profile " + active + (pending != null ? " (pending was " + pending + ")" : ""));
        } catch (Throwable t) {
            android.util.Log.w("ModTestMode", "profile swap " + t);
        }
    }

    // The writers store four ASCII bytes. A missing active marker is normal before the first switch.
    static String profileMarker(File f, String missing) throws IOException {
        if (!f.exists()) return missing;
        byte[] bytes = new byte[16];
        int count = 0;
        try (FileInputStream input = new FileInputStream(f)) {
            int b;
            while ((b = input.read()) >= 0) {
                if (count == bytes.length) throw new IOException("invalid profile marker");
                bytes[count++] = (byte) b;
            }
        }
        String value = new String(bytes, 0, count, "UTF-8");
        if (!"main".equals(value) && !"test".equals(value)) throw new IOException("invalid profile marker");
        return value;
    }

    private static void replaceMarker(File marker, String value) throws Exception {
        File tmp = new File(marker.getParentFile(), marker.getName() + ".tmp");
        write(tmp, value);
        if (!tmp.renameTo(marker)) throw new IOException("could not commit profile marker");
    }

    static void restoreChecked(Context c, File root) throws Exception {
        File activeFile = new File(root, "active"), pendingFile = new File(root, "pending");
        File prepared = new File(root, "prepared");
        File main = new File(root, "main"), test = new File(root, "test");
        String active = profileMarker(activeFile, main.exists() ? null : "main");
        if (active == null) throw new IOException("unknown active profile");
        String target = profileMarker(pendingFile, null);
        String ready = profileMarker(prepared, null);
        if (ready != null && !ready.equals(active) && !ready.equals(target)) throw new IOException("incomplete switch");
        if (target != null && !target.equals(active)) {
            if (!activeFile.exists()) replaceMarker(activeFile, active);
            if (!target.equals(ready)) {
                if ("main".equals(active)) store(c, main);
                // On retry, the live files may already be partly restored. Preserve the original backup.
                replaceMarker(prepared, target);
            }
            File dest = "main".equals(target) ? main : test;
            if (dest.exists() || "main".equals(target)) {
                if (!new File(dest, "complete").isFile()) throw new IOException("incomplete profile");
                load(c, dest);
            }
            replaceMarker(activeFile, target);
            active = target;
        }
        if ("main".equals(active) && ("main".equals(target) || "main".equals(ready))) {
            delete(test);
            if (test.exists()) throw new IOException("could not discard old test profile");
        }
        if (prepared.exists() && !prepared.delete()) throw new IOException("could not finish switch");
        if (pendingFile.exists() && !pendingFile.delete()) throw new IOException("could not finish switch");
        on = "test".equals(active);
    }

    /** Copies the live save into dir (files + preferences), then marks it complete. */
    static void store(Context c, File dir) throws Exception {
        delete(dir);
        if (ModSave.strictInputs && dir.exists()) throw new IOException("could not replace old snapshot");
        File files = new File(dir, "files");
        boolean created = files.mkdirs();
        if (ModSave.strictInputs && !created && !files.isDirectory()) throw new IOException("could not create snapshot");
        copyTree(c.getFilesDir(), files);
        for (String n : PREFS) {
            HashMap<String, Object> m = new HashMap<String, Object>(c.getSharedPreferences(n, Context.MODE_PRIVATE).getAll());
            ObjectOutputStream o = new ObjectOutputStream(new FileOutputStream(new File(dir, "prefs_" + n + ".ser")));
            try { o.writeObject(m); } finally { o.close(); }
        }
        write(new File(dir, "complete"), "1");
    }

    /** Replaces the live save with the copy in dir. Preferences go through the API so cached instances follow. */
    @SuppressWarnings("unchecked")
    static void load(Context c, File dir) throws Exception {
        Map<String, Map<String, Object>> checked = new HashMap<String, Map<String, Object>>();
        if (ModSave.strictInputs) {
            if (new File(dir, "files").listFiles() == null) throw new IOException("missing profile files");
            for (String n : PREFS) {
                File f = new File(dir, "prefs_" + n + ".ser");
                if (!f.exists() && n.equals("corsair_audio")) continue; // pre-v45 profile
                Map<String, Object> values = readPrefs(f);
                for (Map.Entry<?, ?> entry : values.entrySet()) {
                    Object v = entry.getValue();
                    if (!(entry.getKey() instanceof String)) throw new IOException("invalid preference name");
                    if (v instanceof Set) {
                        for (Object item : (Set<?>) v) if (!(item instanceof String)) throw new IOException("invalid preference set");
                    } else if (!(v instanceof String || v instanceof Boolean || v instanceof Integer
                            || v instanceof Float || v instanceof Long)) throw new IOException("invalid preference type");
                }
                checked.put(n, values);
            }
        }
        File live = c.getFilesDir();
        File[] old = live.listFiles();
        if (ModSave.strictInputs && old == null) throw new IOException("unreadable live directory");
        if (old != null) for (File f : old) {
            delete(f);
            if (ModSave.strictInputs && f.exists()) throw new IOException("could not replace live file");
        }
        copyTree(new File(dir, "files"), live);
        for (String n : PREFS) {
            File f = new File(dir, "prefs_" + n + ".ser");
            if (!f.exists() && n.equals("corsair_audio")) continue;   // a copy made before v45: keep the live sound settings
            Map<String, Object> m = new HashMap<String, Object>();
            if (ModSave.strictInputs) m = checked.get(n);
            else if (f.exists()) m = readPrefs(f);
            SharedPreferences.Editor e = c.getSharedPreferences(n, Context.MODE_PRIVATE).edit().clear();
            for (Map.Entry<String, Object> en : m.entrySet()) {
                Object v = en.getValue();
                String k = en.getKey();
                if (v instanceof Boolean) e.putBoolean(k, (Boolean) v);
                else if (v instanceof Integer) e.putInt(k, (Integer) v);
                else if (v instanceof Long) e.putLong(k, (Long) v);
                else if (v instanceof Float) e.putFloat(k, (Float) v);
                else if (v instanceof String) e.putString(k, (String) v);
                else if (v instanceof Set) e.putStringSet(k, (Set<String>) v);
            }
            boolean committed = e.commit();
            if (ModSave.strictInputs && !committed) throw new IOException("could not restore preferences");
        }
    }

    @SuppressWarnings("unchecked")
    private static Map<String, Object> readPrefs(File f) throws Exception {
        try (FileInputStream file = new FileInputStream(f);
             ObjectInputStream in = ModSave.strictInputs ? new PreferenceInput(file) : new ObjectInputStream(file)) {
            Object value = in.readObject();
            if (ModSave.strictInputs && !(value instanceof Map)) throw new IOException("invalid preference map");
            return (Map<String, Object>) value;
        }
    }

    /** The backup writer emits one HashMap of Android preference values. */
    private static final class PreferenceInput extends ObjectInputStream {
        PreferenceInput(InputStream file) throws IOException { super(file); }
        @Override protected Class<?> resolveClass(java.io.ObjectStreamClass descriptor) throws IOException, ClassNotFoundException {
            String name = descriptor.getName();
            if (name.equals("java.util.HashMap") || name.equals("java.util.HashSet") || name.equals("java.util.LinkedHashSet")
                    || name.equals("java.lang.Number") || name.equals("java.lang.Boolean") || name.equals("java.lang.Long")
                    || name.equals("java.lang.Integer") || name.equals("java.lang.Float") || name.equals("java.lang.String"))
                return super.resolveClass(descriptor);
            throw new java.io.InvalidClassException("unexpected preference value type");
        }
        @Override protected Class<?> resolveProxyClass(String[] interfaces) throws IOException {
            throw new java.io.InvalidClassException("unexpected preference value type");
        }
    }

    static void copyTree(File src, File dst) throws Exception {
        File[] fs = src.listFiles();
        if (fs == null) {
            if (ModSave.strictInputs) throw new IOException("unreadable profile directory");
            return;
        }
        for (File f : fs) {
            File t = new File(dst, f.getName());
            if (f.isDirectory()) {
                boolean created = t.mkdirs();
                if (ModSave.strictInputs && !created && !t.isDirectory()) throw new IOException("could not copy directory");
                copyTree(f, t);
                continue;
            }
            InputStream in = new FileInputStream(f);
            OutputStream out = new FileOutputStream(t);
            try {
                byte[] b = new byte[16384];
                int n;
                while ((n = in.read(b)) > 0) out.write(b, 0, n);
            } finally {
                in.close();
                out.close();
            }
        }
    }

    static void delete(File f) {
        File[] fs = f.listFiles();
        if (fs != null) for (File k : fs) delete(k);
        f.delete();
    }

    static String read(File f, String def) {
        try {
            if (!f.exists()) return def;
            java.io.BufferedReader r = new java.io.BufferedReader(new java.io.FileReader(f));
            try { String l = r.readLine(); return l == null ? def : l.trim(); } finally { r.close(); }
        } catch (Throwable t) {
            return def;
        }
    }

    static void write(File f, String v) throws Exception {
        FileOutputStream o = new FileOutputStream(f);
        try { o.write(v.getBytes("UTF-8")); o.getFD().sync(); } finally { o.close(); }
    }

    // ------------------------------------------------------------------ test profile grants

    /** hooks40: end of StorageManager.restore (after ModSave.sanitize). Re-applied on every start of the test profile. */
    public static void afterRestore() {
        logState(on ? "test" : "main");
        if (!on) return;
        try {
            PlayerInfo pi = ObjectRegistry.INSTANCE.game.playerInfo;
            if (pi != null) {
                pi.level = LEVEL;
                pi.curXp = 0;
                pi.init();
                int added = 0;
                for (SpaceObjectType t : SpaceObjectType.ALL_SHIPS) {
                    if (t == null || pi.availShips.contains(t)) continue;
                    ModShips.Hull h = ModShips.hull(t);
                    if (h != null && h.cls == ModShips.INDUSTRIAL) continue;   // industrials are NPC-only (sanitize would refund them)
                    pi.availShips.add(t);
                    added++;
                }
                ModDev.ev("v40test", "level " + pi.level + " ships " + pi.availShips.size() + " (+" + added + ")");
            }
            LevelsGlobalProperties lp = ObjectRegistry.INSTANCE.levelProperties;
            if (lp != null) {
                for (LevelId id : LevelId.values()) if (sector(id) && !lp.visitedLevels.contains(id)) lp.visitedLevels.add(id);
                SpaceObjectType[] maps = {SpaceObjectType.pirateBaySmugglerPos, SpaceObjectType.solarFieldSmugglerPos};
                for (SpaceObjectType m : maps) if (!lp.unlockedMapAndTreasures.contains(m)) lp.unlockedMapAndTreasures.add(m);
                ModDev.ev("v40test", "map sectors " + lp.visitedLevels.size() + "/" + LevelId.values().length);
            }
            topUp();
            Context c = ObjectRegistry.INSTANCE.mainActivity;
            if (c != null) Toast.makeText(c, ModLang.tr("TEST MODE: this profile is separate from your normal save."), Toast.LENGTH_LONG).show();
        } catch (Throwable t) {
            android.util.Log.w("ModTestMode", "grants " + t);
        }
    }

    /** Emulator evidence: the loaded profile's progress. */
    static void logState(String profile) {
        try {
            PlayerInfo pi = ObjectRegistry.INSTANCE.game.playerInfo;
            LevelsGlobalProperties lp = ObjectRegistry.INSTANCE.levelProperties;
            ModDev.ev("v40test", "loaded " + profile + " level " + pi.level + " xp " + pi.curXp + " ships " + pi.availShips.size()
                + " credits " + ObjectRegistry.INSTANCE.game.playerCurrentShipInventory.getCredit() + " parts " + ModV35.parts()
                + " sectors " + (lp == null ? -1 : lp.visitedLevels.size()) + " done missions " + ObjectRegistry.INSTANCE.missionRepository.doneMissions.size());
        } catch (Throwable t) {
            ModDev.ev("v40test", "loaded " + profile + " (state " + t + ")");
        }
    }

    /** Galaxy sectors (the multiplayer FFA bay is off the map and never shown or jumped to). */
    static boolean sector(LevelId id) { return id != null && !id.name().startsWith("FFA_"); }

    /** Credits, rare parts and faction cores back up to the test amounts. */
    static void topUp() {
        try {
            Inventory inv = ObjectRegistry.INSTANCE.game.playerCurrentShipInventory;
            if (inv != null && inv.getCredit() < CREDITS_LOW) inv.addCredit((int) (CREDITS - inv.getCredit()));
            SharedPreferences p = ModQol.prefs();
            if (p == null) return;
            SharedPreferences.Editor e = null;
            if (ModV35.parts() < PARTS) e = p.edit().putInt("v35_parts", PARTS);
            for (int i = 0; i <= ModCapitals.FACTIONS.length; i++) {
                String k = i < ModCapitals.FACTIONS.length ? ModCapitals.FACTIONS[i].key : "neutral";
                if (ModV35.cores(k) < CORES) e = (e != null ? e : p.edit()).putInt("v35_core_" + k, CORES);
            }
            if (e != null) e.commit();
        } catch (Throwable t) {
            // next tick
        }
    }

    private static long topMs;

    /** From ModCaps.tick (every frame in flight): top-ups twice a second. */
    public static void tick(PlayerShip ps, long j) {
        if (!on) return;
        fullHull(ps);
        topMs -= j;
        if (topMs > 0) return;
        topMs = 500;
        topUp();
        testJump(ps);
        testMissions();
        try {
            LevelId at = ObjectRegistry.INSTANCE.game.currentLevel.id;
            if (at != tAt) { tAt = at; ModDev.ev("v40test", "sector " + at + " cells " + ObjectRegistry.INSTANCE.game.playerCurrentShipInventory.getQuantityOf(SpaceObjectType.energyCell) + " t=" + SystemClock.uptimeMillis()); }
        } catch (Throwable t) {
            // evidence only
        }
    }

    private static Object hulledShip;
    private static long hullUntil;

    /** v42 (owner 23:26): in test mode a ship starts at full hull: on the first flight frame and after every ship switch. */
    private static void fullHull(PlayerShip ps) {
        try {
            if (ps == null || ps.removed || ps.maxLife <= 0) return;
            Object cur = ObjectRegistry.INSTANCE.game.playerInfo.playerGear.playerShip;
            long now = SystemClock.uptimeMillis();
            if (cur != hulledShip) { hulledShip = cur; hullUntil = now + 3000; }   // 3 s: the mod's hull refresh lands meanwhile
            if (now > hullUntil || ps.life >= ps.maxLife) return;
            ps.life = ps.maxLife;
            ps.lifeInPourc = 100.0f;
            ModDev.ev("v40test", "full hull " + Math.round(ps.maxLife));
        } catch (Throwable t) {
            // next frame
        }
    }

    private static LevelId tAt;
    private static String tMiss;

    /** Emulator only: /data/local/tmp/corsair_tmmiss=LEVELID logs the missions offered there (done ones included). */
    private static void testMissions() {
        String v = ModDev.testValue("corsair_tmmiss");
        if (v == null || v.equals(tMiss)) return;
        tMiss = v;
        try {
            String[] vp = v.split(",");
            fr.testudo.spacecorsair.business.mission.MissionRepository repo = ObjectRegistry.INSTANCE.missionRepository;
            java.util.List<fr.testudo.spacecorsair.business.mission.Mission> l = repo.getAvaillableMission(LevelId.valueOf(vp[0].trim()));
            if (vp.length > 1 && "done".equals(vp[1].trim())) {
                // ",done": every offered mission marked done first (they must still be offered in test mode)
                for (fr.testudo.spacecorsair.business.mission.Mission m : l) repo.addMissionToDoneList(m.missionId);
                l = repo.getAvaillableMission(LevelId.valueOf(vp[0].trim()));
            }
            int done = 0;
            StringBuilder sb = new StringBuilder();
            for (fr.testudo.spacecorsair.business.mission.Mission m : l) {
                if (ObjectRegistry.INSTANCE.missionRepository.hasDoneMission(m.missionId)) done++;
                sb.append(m.missionId).append(',');
            }
            ModDev.ev("v40test", "offered at " + v + ": " + l.size() + " (done " + done + ") " + sb);
        } catch (Throwable t) {
            ModDev.ev("v40test", "bad missions " + v + " " + t);
        }
    }

    // ------------------------------------------------------------------ free instant hyperdrive (hooks40, PathFinder / PlayerShip)

    /** Start of PathFinder.canJumpTo: 1/0 in test mode (any other sector), -1 = stock rule. */
    public static int canJumpTo(LevelId to) {
        if (ModPrologue.active) return 0;   // v46: the player bay has no way out
        if (!on) return -1;
        try {
            return sector(to) && ObjectRegistry.INSTANCE.game.currentLevel.id != to ? 1 : 0;
        } catch (Throwable t) {
            return -1;
        }
    }

    /** Start of PathFinder.couldJump: 1 in test mode (no hyperdrive engine needed), -1 = stock rule. */
    public static int couldJump(LevelId to) { return ModPrologue.active ? 0 : on ? 1 : -1; }

    /** Start of PathFinder.jumpCost: 0 energy cells in test mode, -1 = stock cost. */
    public static int jumpCost(LevelId to) { return on ? 0 : -1; }

    /** hooks54_testjump: PlayerShip.initHyperdriveJumpRequest, the mission's canHyperdriveJump answer. Audit F5 (owner
     *  2026-11-17): the test-mode teleport ignores missions that forbid jumping. The prologue keeps its own block. */
    public static boolean missionAllowsJump(boolean stock) { return stock || (on && !ModPrologue.active); }

    /** PlayerShip.initHyperdriveJumpRequest: hyperdrive charge time in ms (stock 5000, test mode 0 = next frame). */
    public static int jumpTime() { return on ? 0 : ModCcef.jumpTime(5000); }   // CCEF local lockdown: +50%

    private static String tJump;

    /** Emulator only: /data/local/tmp/corsair_tmjump=LEVELID requests the hyperdrive jump the galaxy map button makes. */
    private static void testJump(PlayerShip ps) {
        String v = ModDev.testValue("corsair_tmjump");
        if (v == null || v.equals(tJump)) return;
        tJump = v;
        try {
            LevelId to = LevelId.valueOf(v.trim());
            int cells = ObjectRegistry.INSTANCE.game.playerCurrentShipInventory.getQuantityOf(SpaceObjectType.energyCell);
            ModDev.ev("v40test", "jump request " + ObjectRegistry.INSTANCE.game.currentLevel.id + " -> " + to + " canJump="
                + fr.testudo.spacecorsair.business.world.PathFinder.canJumpTo(to) + " cost=" + fr.testudo.spacecorsair.business.world.PathFinder.jumpCost(to)
                + " cells=" + cells + " t=" + SystemClock.uptimeMillis());
            ps.initHyperdriveJumpRequest(to);
        } catch (Throwable t) {
            ModDev.ev("v40test", "bad jump " + v + " " + t);
        }
    }

    // ------------------------------------------------------------------ hidden login (achievements screen)

    private static final long[] taps = new long[TAPS];
    private static int tapCount;

    /** hooks40: start of AchievementActivity$1.onAchevementClicked. True = handled (the dev achievement). */
    public static boolean achievementTap(Object activity, Achievement a) {
        if (a != Achievement.killByTheDev) return false;
        try {
            long now = SystemClock.uptimeMillis();
            System.arraycopy(taps, 1, taps, 0, TAPS - 1);
            taps[TAPS - 1] = now;
            tapCount++;
            ModDev.ev("v40test", "dev achievement tap " + tapCount);
            if (tapCount >= TAPS && now - taps[0] <= TAP_WINDOW_MS) showButton((Activity) activity);
        } catch (Throwable t) {
            // stock behaviour: nothing
        }
        return true;
    }

    /** hooks40: end of AchievementActivity.bindUI. A new screen needs the 10 taps again; in test mode LOG OUT shows at once. */
    public static void achievementsScreen(Object activity) {
        tapCount = 0;
        if (on) showButton((Activity) activity);
    }

    private static final String TAG = "corsair_testmode_btn";

    static void showButton(final Activity a) {
        try {
            ViewGroup content = (ViewGroup) a.findViewById(android.R.id.content);
            if (content == null || content.findViewWithTag(TAG) != null) return;
            Button b = new Button(a);
            b.setTag(TAG);
            b.setText(on ? ModLang.tr("LOG OUT") : ModLang.tr("LOGIN"));
            b.setTextSize(TypedValue.COMPLEX_UNIT_SP, 11);
            b.setTextColor(Color.WHITE);
            b.setBackgroundColor(on ? 0xCC8A2A2A : 0xCC2A4A6A);
            float dp = a.getResources().getDisplayMetrics().density;
            b.setPadding((int) (10 * dp), (int) (4 * dp), (int) (10 * dp), (int) (4 * dp));
            b.setMinHeight(0);
            b.setMinimumHeight(0);
            b.setMinWidth(0);
            b.setMinimumWidth(0);
            FrameLayout.LayoutParams lp = new FrameLayout.LayoutParams(ViewGroup.LayoutParams.WRAP_CONTENT, ViewGroup.LayoutParams.WRAP_CONTENT, Gravity.TOP | Gravity.RIGHT);
            lp.setMargins(0, (int) (6 * dp), (int) (6 * dp), 0);
            b.setOnClickListener(new View.OnClickListener() {
                public void onClick(View v) { confirm(a); }
            });
            content.addView(b, lp);
            // v46: replay the playable prologue (fresh-save boss fight) from the same hidden screen
            Button q = new Button(a);
            q.setTag(TAG + "prologue");
            q.setText(ModLang.tr("REPLAY PROLOGUE"));
            q.setTextSize(TypedValue.COMPLEX_UNIT_SP, 11);
            q.setTextColor(Color.WHITE);
            q.setBackgroundColor(0xCC6A3A3A);
            q.setPadding((int) (10 * dp), (int) (4 * dp), (int) (10 * dp), (int) (4 * dp));
            q.setMinHeight(0);
            q.setMinimumHeight(0);
            q.setMinWidth(0);
            q.setMinimumWidth(0);
            FrameLayout.LayoutParams ql = new FrameLayout.LayoutParams(ViewGroup.LayoutParams.WRAP_CONTENT, ViewGroup.LayoutParams.WRAP_CONTENT, Gravity.TOP | Gravity.RIGHT);
            ql.setMargins(0, (int) (40 * dp), (int) (6 * dp), 0);
            q.setOnClickListener(new View.OnClickListener() {
                public void onClick(View v) { ModPrologue.replay(); a.finish(); }
            });
            content.addView(q, ql);
            ModDev.ev("v40test", "button shown " + (on ? "logout" : "login"));
        } catch (Throwable t) {
            android.util.Log.w("ModTestMode", "button " + t);
        }
    }

    static void confirm(final Activity a) {
        String msg = on
            ? ModLang.tr("Log out of test mode? The game restarts on your normal save, as it was when you logged in.")
            : ModLang.tr("Log in to test mode? The game saves and restarts on a separate test profile: max level, everything unlocked, whole map visible, every mission repeatable, free instant jumps. Your normal save is kept apart and comes back when you log out.");
        new AlertDialog.Builder(a)
            .setMessage(msg)
            .setPositiveButton(on ? ModLang.tr("LOG OUT") : ModLang.tr("LOG IN"), new DialogInterface.OnClickListener() {
                public void onClick(DialogInterface d, int w) { switchTo(a, on ? "main" : "test"); }
            })
            .setNegativeButton(ModLang.tr("Cancel"), null)
            .show();
    }

    /** Saves the running profile, marks the switch and restarts the process; the swap itself runs at the next start. */
    static void switchTo(Activity a, String target) {
        try {
            if (ModSave.strictInputs && profileUncertain) throw new IOException("unknown active profile");
            ModDev.ev("v40test", "switch to " + target);
            ObjectRegistry.INSTANCE.storageManager.save();
            Context c = a.getApplicationContext();
            for (String n : PREFS) c.getSharedPreferences(n, Context.MODE_PRIVATE).edit().putLong("v40_flush", System.currentTimeMillis()).commit();
            File pending = new File(root(c), "pending");
            if (ModSave.strictInputs) replaceMarker(pending, target); else write(pending, target);
            Intent i = c.getPackageManager().getLaunchIntentForPackage(c.getPackageName());
            if (i != null) {
                i.addFlags(Intent.FLAG_ACTIVITY_NEW_TASK | Intent.FLAG_ACTIVITY_CLEAR_TASK);
                a.startActivity(i);
            }
        } catch (Throwable t) {
            android.util.Log.w("ModTestMode", "switch " + t);
            Toast.makeText(a, ModLang.tr("Could not switch profiles."), Toast.LENGTH_LONG).show();
            return;
        }
        android.os.Process.killProcess(android.os.Process.myPid());
        System.exit(0);
    }
}
