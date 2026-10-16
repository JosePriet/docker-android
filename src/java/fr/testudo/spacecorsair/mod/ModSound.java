package fr.testudo.spacecorsair.mod;

import android.content.Context;
import android.media.AudioManager;
import android.media.SoundPool;
import fr.testudo.spacecorsair.engine.ObjectRegistry;
import java.io.File;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.HashMap;
import java.util.Map;

/**
 * Capital-ship sounds from assets/modsfx (Kenney CC0 sounds layered with synthesized low end, see src/gensfx.py).
 * Same rules as the game's SoundManager: muted when sound effects are off, scaled by the media volume.
 */
public final class ModSound {
    private ModSound() {}

    public static final String[] NAMES = {"wpn_rail", "wpn_auto", "wpn_arty", "wpn_blast", "wpn_disint", "wpn_arc", "gun_medium", "gun_heavy", "titan_leviathan", "titan_throne", "titan_dev", "doom_charge", "doom_lance", "doom_nova", "warp_in", "titan_missile",
        "titan_blast", "bay_launch", "repair", "hull_breach", "engine_rumble",
        "combat_start", "all_clear", "disengage", "hull_alarm", "shield_down", "flagship_horn", "mission_ok", "mission_fail", "rank_up", "comms_click"};

    private static volatile SoundPool pool;   // published only after ids are filled (init runs on the GL thread)
    private static boolean initDone;
    private static Context ctx;
    private static final Map<String, Integer> ids = new HashMap<String, Integer>();
    // last play time per sound, one slot each (no Long boxing per shot)
    private static final Map<String, long[]> last = new HashMap<String, long[]>();
    private static AudioManager audio;
    private static float volCache;
    private static long volAt;

    /** From ModArt.load (game start / GL context creation). Loads once. */
    public static synchronized void init(Context c) {
        if (pool != null || initDone || c == null) return;
        SoundPool sp = null;
        try {
            Context app = c.getApplicationContext();
            ctx = app != null ? app : c;
            sp = new SoundPool(8, AudioManager.STREAM_MUSIC, 0);
            File dir = new File(ctx.getCacheDir(), "modsfx");
            dir.mkdirs();
            for (String n : NAMES) {
                File f = new File(dir, n + ".ogg");
                copy(ctx, "modsfx/" + n + ".ogg", f);
                ids.put(n, sp.load(f.getAbsolutePath(), 1));
                last.put(n, new long[1]);
            }
            initDone = true;
            pool = sp;
        } catch (Throwable t) {
            // no mod sounds; a partly loaded pool is released (it would otherwise be re-created on every GL context)
            ids.clear();
            last.clear();
            try { if (sp != null) sp.release(); } catch (Throwable e) { /* ignore */ }
            pool = null;
        }
    }

    private static void copy(Context c, String asset, File to) throws Exception {
        InputStream in = c.getAssets().open(asset);
        try {
            long size = in.available();
            if (to.exists() && to.length() == size && size > 0) return;
            OutputStream out = new FileOutputStream(to);
            try {
                byte[] b = new byte[16384];
                int n;
                while ((n = in.read(b)) > 0) out.write(b, 0, n);
            } finally {
                out.close();
            }
        } finally {
            in.close();
        }
    }

    private static float volume() {
        try {
            if (!ObjectRegistry.INSTANCE.config.soundFxEnabled) return 0;
            // two binder calls per shot before: the media volume is re-read at most every 300 ms
            long now = System.currentTimeMillis();
            if (volAt != 0 && now - volAt < 300 && now >= volAt) return volCache;
            AudioManager am = audio;
            if (am == null) audio = am = (AudioManager) ctx.getSystemService(Context.AUDIO_SERVICE);
            float v = am.getStreamVolume(AudioManager.STREAM_MUSIC) / (float) am.getStreamMaxVolume(AudioManager.STREAM_MUSIC);
            volCache = v;
            volAt = now;
            return v;
        } catch (Throwable t) {
            return 0;
        }
    }

    /** Plays a sound; minGapMs throttles repeats of the same sound. Returns the stream id, -1 if throttled, 0 if unavailable. */
    public static int play(String name, float gain, float rate, long minGapMs) {
        try {
            if (pool == null) return 0;
            Integer id = ids.get(name);
            if (id == null) return 0;
            long now = System.currentTimeMillis();
            long[] l = last.get(name);
            if (l != null) {
                if (l[0] != 0 && now - l[0] < minGapMs) return -1;   // throttled: the sound is still ringing
                l[0] = now;
            }
            float v = volume() * gain;
            if (v <= 0) return 0;
            return pool.play(id, v, v, 1, 0, rate);
        } catch (Throwable t) {
            return 0;
        }
    }

    private static int loopStream;
    private static float loopGain = -1;

    /** Engine rumble loop: gain 0 stops it. */
    public static void rumble(float gain) {
        try {
            if (pool == null) return;
            if (gain <= 0.01f) {
                if (loopStream != 0) pool.stop(loopStream);
                loopStream = 0;
                loopGain = -1;
                return;
            }
            float v = volume() * gain;
            if (loopStream == 0) {
                Integer id = ids.get("engine_rumble");
                if (id == null || v <= 0) return;
                loopStream = pool.play(id, v, v, 0, -1, 1.0f);
                loopGain = gain;
            } else if (Math.abs(gain - loopGain) > 0.03f) {
                pool.setVolume(loopStream, v, v);
                loopGain = gain;
            }
        } catch (Throwable t) {
            // sound is cosmetic
        }
    }

    public static void stopAll() {
        rumble(0);
    }
}
