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
    public static void firstStart() {
        if (saveIsNew()) ModQol.clearProgress();   // audit A10: a fresh save starts with no mod progress
        ModPrologue.firstStart();
    }

    /** Second check S4: the game also takes the first-start path when only its config file was corrupted (the save
     *  itself is restored). Mod progress is cleared only when the restored save is really a new pilot. */
    static boolean saveIsNew() {
        try {
            fr.testudo.spacecorsair.business.player.PlayerInfo pi = fr.testudo.spacecorsair.engine.ObjectRegistry.INSTANCE.game.playerInfo;
            return pi.level <= 1 && pi.curXp <= 0 && (pi.availShips == null || pi.availShips.size() <= 1);
        } catch (Throwable t) {
            return false;   // cannot tell: keep the progress
        }
    }

    public static boolean isActive() { return false; }

    /** GameThread.run: the top of the frame (prologue level swap); time step unchanged. */
    public static long dt(long elapsed) {
        ModPrologue.preFrame();
        ModLan.preFrame();   // audit E8: guest back to its own missions
        return elapsed;
    }

    public static boolean touch(MotionEvent e) { return false; }

    public static boolean holdDialog(GameThread gt, int image, int charName, int text, int delay, boolean force, String post) { return false; }

    /** GameRenderer.drawHud, last: the prologue HUD. */
    public static void draw(GL10 gl) { ModPrologue.draw(gl); }
}
