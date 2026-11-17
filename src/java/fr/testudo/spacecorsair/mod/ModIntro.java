package fr.testudo.spacecorsair.mod;

import android.view.MotionEvent;
import fr.testudo.spacecorsair.engine.GameThread;
import javax.microedition.khronos.opengles.GL10;

/**
 * hooks45 entry points. Audit A9 (owner 2026-11-17): the v45 intro cinematic and REPLAY INTRO are removed; these hooks
 * only forward to the v46 playable prologue, which stays.
 */
public final class ModIntro {
    private ModIntro() {}

    /** Main.onFirstStart: a fresh save opens on the playable prologue. */
    public static void firstStart() { ModPrologue.firstStart(); }

    public static boolean isActive() { return false; }

    /** GameThread.run: the top of the frame (prologue level swap); time step unchanged. */
    public static long dt(long elapsed) {
        ModPrologue.preFrame();
        return elapsed;
    }

    public static boolean touch(MotionEvent e) { return false; }

    public static boolean holdDialog(GameThread gt, int image, int charName, int text, int delay, boolean force, String post) { return false; }

    /** GameRenderer.drawHud, last: the prologue HUD. */
    public static void draw(GL10 gl) { ModPrologue.draw(gl); }
}
