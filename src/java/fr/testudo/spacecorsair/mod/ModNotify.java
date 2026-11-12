package fr.testudo.spacecorsair.mod;

import android.app.Activity;
import android.app.Dialog;
import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import android.text.TextUtils;
import android.view.View;
import fr.testudo.spacecorsair.activity.Main;
import fr.testudo.spacecorsair.business.player.PlayerShip;
import fr.testudo.spacecorsair.engine.ObjectRegistry;
import fr.testudo.spacecorsair.game.Game;
import fr.testudo.spacecorsair.utils.InGameDialog;
import java.util.ArrayList;

/**
 * v43a-5: inbox notices also pop up in flight as the stock character dialog (portrait, name, text, OK), the same
 * screen the stock missions use. Automatic/system notices speak through the ship's astrodroid (stock character_droid
 * portrait and name); faction notices through that faction's commander portrait. The inbox keeps every notice as before.
 * Shown only in open flight (not docked, not on the map, not paused, no other dialog up, not during the intro or
 * prologue); queued until then. Queued notices from the same speaker are merged into one dialog.
 */
public final class ModNotify {
    private ModNotify() {}

    /** Speaker key for the ship's astrodroid. */
    static final String AI = "ai";
    private static final int DROID_IMAGE = 0x7f020054;   // R.drawable.character_droid
    private static final int DROID_NAME = 0x7f070187;    // R.string.characterDroidHelp ("astrodroid 4.4")
    private static final int MAX_QUEUE = 12, MAX_MERGE = 3;
    /** Gap after a dialog closes before the next one may open. */
    private static final long GAP_MS = 4000;

    private static final ArrayList<String[]> queue = new ArrayList<String[]>();   // {speaker, text}
    private static volatile boolean showing;
    private static volatile long nextAt, showSince;

    /** Any thread: queue a pop-up. {@code speaker} is a faction key (ModCapitals.FACTIONS[].key) or {@link #AI}. */
    static void push(String speaker, String text) {
        if (text == null || text.length() == 0 || ModPrologue.active) return;
        synchronized (queue) {
            if (queue.size() >= MAX_QUEUE) queue.remove(0);
            queue.add(new String[] {speaker == null ? AI : speaker, text});
        }
    }

    // emulator test switch (never present on a phone): /data/local/tmp/corsair_notify queues one astrodroid and one
    // Spartan notice and logs "ModTest notify ..." lines
    private static long testAt;
    private static boolean testOn, testSeen;

    private static void log(String m) {
        if (testSeen) android.util.Log.i("ModTest", "notify " + m);
    }

    /** Game thread, every frame (ModComms.tick). */
    static void tick(PlayerShip ps) {
        long t0 = System.currentTimeMillis();
        if (t0 - testAt > 1000) {
            testAt = t0;
            boolean on = ModDev.testFlag("corsair_notify");
            if (on && !testOn) {
                testSeen = true;
                ModQol.post("TEST: astrodroid notice (system event).");
                ModQol.post("TEST: Spartan commander notice (faction event).", "spartan");
                log("queued 2");
            }
            testOn = on;
        }
        if (showing) {
            // the UI runnable never ran (activity gone): release after 30 s if no dialog is up
            if (System.currentTimeMillis() - showSince < 30000) return;
            try {
                Main m = ObjectRegistry.INSTANCE.mainActivity;
                if (m != null && m.currentDialog != null && m.currentDialog.isShowing()) return;
            } catch (Throwable t) { /* release */ }
            showing = false;
        }
        synchronized (queue) {
            if (queue.isEmpty()) return;
        }
        long now = System.currentTimeMillis();
        if (now < nextAt) return;
        try {
            if (ModPrologue.active) { synchronized (queue) { queue.clear(); } return; }
            if (ModIntro.isActive() || ModDev.noDialog(null)) return;
            Game g = ObjectRegistry.INSTANCE.game;
            Main m = ObjectRegistry.INSTANCE.mainActivity;
            if (g == null || m == null || !g.started || g.mapMode || g.gameThread == null || g.gameThread.paused) return;
            if (ps == null || ps.removed || ps.isDocked || ps.life <= 0) return;
            if (m.currentDialog != null && m.currentDialog.isShowing()) return;
        } catch (Throwable t) {
            return;
        }
        final String speaker;
        final StringBuilder sb = new StringBuilder();
        synchronized (queue) {
            speaker = queue.get(0)[0];
            int n = 0;
            for (int i = 0; i < queue.size() && n < MAX_MERGE; ) {
                String[] q = queue.get(i);
                if (!q[0].equals(speaker)) { i++; continue; }
                if (n > 0) sb.append("\n\n");
                sb.append(q[1]);
                queue.remove(i);
                n++;
            }
        }
        showSince = now;
        showing = true;
        log("open " + speaker + " len=" + sb.length());
        final Main m = ObjectRegistry.INSTANCE.mainActivity;
        m.runOnUiThread(new Runnable() {
            public void run() { open(m, speaker, sb.toString()); }
        });
    }

    private static void open(Activity a, String speaker, String text) {
        Dialog d = null;
        try {
            Game g = ObjectRegistry.INSTANCE.game;
            Main m = (Main) a;
            PlayerShip ps0 = ObjectRegistry.INSTANCE.playerShip;
            if (g.gameThread.paused || g.mapMode || ps0 == null || ps0.isDocked
                || (m.currentDialog != null && m.currentDialog.isShowing())) {
                synchronized (queue) { queue.add(0, new String[] {speaker, text}); }   // try again later
                done(false);
                return;
            }
            String name;
            Bitmap face = null;
            if (AI.equals(speaker)) {
                name = a.getString(DROID_NAME);
            } else {
                int fi = ModFaction.faction(speaker);
                name = ModFactionData.COMMANDER[ModFaction.commander(speaker)] + "  ·  " + ModCapitals.FACTIONS[fi].name;
                face = ModComms.asset(a, "portrait_" + speaker, 256);
            }
            String html = TextUtils.htmlEncode(text).replace("\n", "<br>");
            g.gameThread.waitCommitPhysicEnded();
            g.pause();
            d = InGameDialog.show(a, name, DROID_IMAGE, html, new Runnable() {
                public void run() {
                    try {
                        ObjectRegistry.INSTANCE.game.gameThread.shootEventIndex = -1;
                        ObjectRegistry.INSTANCE.game.gameThread.gazEventIndex = -1;
                        ObjectRegistry.INSTANCE.game.gameThread.boosterEventIndex = -1;
                        PlayerShip ps = ObjectRegistry.INSTANCE.playerShip;
                        if (ps != null) { ps.isPousee = false; ps.isShooting = false; ps.isBoosterEnabled = false; }
                    } catch (Throwable t) {
                        // input reset is best effort
                    }
                    ObjectRegistry.resume();
                    log("dismissed");
                    done(true);
                }
            });
            m.currentDialog = d;
            if (face != null) {
                try {
                    View iv = d.findViewById(0x7f0a0030);   // the dialog's portrait ImageView
                    if (iv != null) iv.setBackgroundDrawable(new BitmapDrawable(a.getResources(), face));
                } catch (Throwable t) {
                    // the astrodroid face stays
                }
            }
            log("shown " + speaker + " portrait=" + (face != null));
        } catch (Throwable t) {
            if (d != null && d.isShowing()) return;   // the dialog is up: its OK/back resumes the game
            // not shown: dropped (it stays in the inbox); a re-queue could loop on a persistent failure
            try { ObjectRegistry.resume(); } catch (Throwable t2) { /* ignore */ }
            done(true);
        }
    }

    private static void done(boolean shown) {
        nextAt = System.currentTimeMillis() + (shown ? GAP_MS : 1000);
        showing = false;
    }
}
