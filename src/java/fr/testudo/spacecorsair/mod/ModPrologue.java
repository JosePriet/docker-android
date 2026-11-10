package fr.testudo.spacecorsair.mod;

import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.os.SystemClock;
import fr.testudo.spacecorsair.business.Element;
import fr.testudo.spacecorsair.business.loot.SpaceObjectType;
import fr.testudo.spacecorsair.business.player.PlayerInfo;
import fr.testudo.spacecorsair.business.player.PlayerShip;
import fr.testudo.spacecorsair.business.world.civil.GuardianCivilShip;
import fr.testudo.spacecorsair.display.Background;
import fr.testudo.spacecorsair.engine.GameRenderer;
import fr.testudo.spacecorsair.engine.ObjectRegistry;
import fr.testudo.spacecorsair.engine.Vector2;
import fr.testudo.spacecorsair.game.levels.Level;
import fr.testudo.spacecorsair.game.levels.LevelAnimator;
import fr.testudo.spacecorsair.game.levels.LevelId;
import fr.testudo.spacecorsair.game.levels.builders.ArenaLevelBuilder;
import fr.testudo.spacecorsair.game.levels.builders.LevelBuilder;
import fr.testudo.spacecorsair.textengine.GLText;
import fr.testudo.spacecorsair.textengine.TextSize;
import java.util.ArrayList;
import java.util.List;
import javax.microedition.khronos.opengles.GL10;

/**
 * v46 playable prologue (owner 2026-11-10: "recreate this as a playable encounter vs a boss, rather than a cinematic").
 *
 * A fresh save opens on a bounty hunt the player cannot win: a level 25 Corvette battlecruiser against the Crimson
 * Reaver flagship Bloodforge (level 40) in the derelict player bay, a sector that is not on the galaxy map and cannot
 * be reached from anywhere in the game (LevelId.FFA_THE_PLAYER_PAY, the dead multiplayer bay: isMulti, so entering it
 * never records a last level, and every mod subsystem already excludes FFA_* from the map, economy, police and
 * missions). The fight runs for two minutes. When the clock runs out, or the Corvette's hull gives, the Bloodforge
 * finishes it, Genesis salvage pulls the pod out, and the game restarts in the tutorial on the untouched fresh save.
 *
 * Nothing the prologue does is ever written to disk: the pristine save is written once before it starts, every save
 * is blocked while it runs (hooks46 on StorageManager), and the process is restarted at the end, so the player wakes
 * up in the tutorial with the normal starting ship, level and credits.
 *
 * Triggers: fresh save (Main.onFirstStart -> ModIntro.firstStart -> here) and REPLAY PROLOGUE on the hidden test-mode
 * achievements screen. The v45 cinematic (ModIntro) is kept for REPLAY INTRO but no longer plays on a fresh save.
 */
public final class ModPrologue {
    private ModPrologue() {}

    // [D] owner 2026-11-10: two minutes of fighting, or hull zero, then the tutorial
    static final int FIGHT_MS = 120000;
    static final int PLAYER_LEVEL = 25;          // the pilot before the bounty went wrong
    static final int BOSS_LEVEL = 40;            // owner: a level 40 boss
    static final int BOSS_FI = 1;                // ModCapitals.FACTIONS[1] = Crimson Reavers, flagship Bloodforge
    static final String HULL = "corvette";       // owner 2026-11-10: "the one thats red and dark mostly"
    static final float BOSS_DIST = 2800f;        // where the Bloodforge waits, ahead of the player
    static final float BOSS_FLOOR = 0.12f;       // its hull never drops below this: the fight cannot be won
    static final float DEATH_HULL = 0.10f;       // of max hull: the Corsair is finished, the end beat takes over
    static final float HULL_FLOOR = 0.04f;       // held above zero every frame: only the end beat may finish the ship
    static final int BRIEF_MS = 7000;            // bounty brief on screen from the first frame
    static final int END_MS = 6000;              // destruction beat + salvage caption before the restart
    static final int WARN_MS = 20000;            // the clock turns red
    static final int FLASH_MS = 4500;            // how long an on-screen line stays up
    static final String DONE = "v46_prologue_done";
    static final String TEST_FLAG = "corsair_prologue";   // emulator only: replay it on a save that already played it

    private static boolean pending, started, armed;
    /** True from the first frame of the prologue until the process restarts: saves are blocked and jumps refused. */
    public static boolean active;
    private static boolean ending, finished;
    private static int left, briefMs, endMs;
    private static long enteredAt;
    private static GuardianCivilShip boss;
    private static float bossMax;
    private static boolean floorSaid, lastStand;
    private static boolean creptSaid;
    private static int preLevel;
    private static long preXp;
    private static String flashText;
    private static int flashMs;
    private static String sBrief1, sBrief2, sTimer, sBossName, sFloor, sOut, sDown, sSalvage1, sSalvage2, sRestart;

    // ------------------------------------------------------------------ triggers

    /** Fresh save (Main.onFirstStart, through ModIntro.firstStart). */
    public static void firstStart() {
        if (done()) return;
        pending = true;
        ModDev.ev("prologue", "pending (first start)");
    }

    /** Hidden test-mode screen: REPLAY PROLOGUE. */
    public static void replay() {
        ending = false;
        finished = false;
        started = false;
        pending = true;
        ModDev.ev("prologue", "pending (replay)");
    }

    /** True while the prologue owns the game: StorageManager saves are dropped (hooks46). */
    public static boolean blockSave() {
        if (!active) return false;
        ModDev.ev("prologue", "save blocked");
        return true;
    }

    /** LevelBuilder.getLevelByName (hooks46): the player bay, built here; null leaves the stock dispatch alone. */
    public static Level level(String name) {
        if (!active || name == null || !LevelId.FFA_THE_PLAYER_PAY.levelName.equals(name)) return null;
        try {
            return build();
        } catch (Throwable t) {
            ModDev.ev("prologue", "build failed " + t);
            return null;
        }
    }

    private static boolean done() {
        SharedPreferences p = ModQol.prefs();
        return p != null && p.getBoolean(DONE, false) && !ModDev.testFlag(TEST_FLAG);
    }

    // ------------------------------------------------------------------ the fight

    /** GameThread.run, at the top of the frame (through ModIntro.dt): the one safe point to swap the level.
     *  GameThread.doPhysic walks the current level's element list by index, so replacing the level from inside it
     *  (which is where ModCaps.tick runs) threw IndexOutOfBounds whenever the old level was the longer of the two. */
    public static void preFrame() {
        if (!armed || started) return;
        armed = false;
        PlayerShip ps = null;
        try { ps = PlayerShip.instance(); } catch (Throwable t) { /* enter() reports it */ }
        enter(ps);
    }

    /** PlayerShip.applyDamage (hooks46b): the damage the hull is allowed to take this hit.
     *  The engine kills synchronously when life reaches 0, so clamping once per frame in {@link #tick} is not enough:
     *  one Bloodforge salvo between two frames would run the stock death screen, credit penalty and achievements.
     *  While the prologue runs the hull can never be driven below the floor, and the end beat is fully immune. */
    public static float damage(PlayerShip ps, float amount) {
        if (!active || ps == null || amount <= 0) return amount;
        if (ending) return 0f;
        try {
            float room = ps.life - ps.maxLife * HULL_FLOOR;
            return room <= 0 ? 0f : Math.min(amount, room);
        } catch (Throwable t) {
            return amount;
        }
    }

    /** From ModCaps.tick, every frame in flight. */
    public static void tick(PlayerShip ps, long j) {
        if (finished) return;
        if (pending && !started) {
            if (ps == null || ps.removed || ObjectRegistry.INSTANCE.game == null || !ObjectRegistry.INSTANCE.game.started) return;
            armed = true;      // the swap itself runs from preFrame(), outside the physics loop
            return;
        }
        if (!active || ps == null) return;
        try {
            boolean paused = ObjectRegistry.INSTANCE.game.mapMode || ps.isDocked;
            if (briefMs > 0) briefMs -= j;
            if (flashMs > 0) flashMs -= j;
            holdLevel(ps);
            holdBoss();                       // also through the end beat: a kill mid-beat would make a real boss death
            if (ending) {
                endBeat(ps, j);
                return;
            }
            if (!paused) left -= j;
            if (ps.life < ps.maxLife * HULL_FLOOR) {   // a Bloodforge salvo must never reach the engine's own death flow
                ps.life = ps.maxLife * HULL_FLOOR;
                ps.lifeInPourc = 100f * HULL_FLOOR;
            }
            if (ps.life <= ps.maxLife * DEATH_HULL) {
                ModDev.ev("prologue", "hull gone at " + (FIGHT_MS - left) + " ms");
                begetEnd(ps, false);
            } else if (left <= 0) {
                ModDev.ev("prologue", "clock out, hull " + Math.round(100f * ps.life / ps.maxLife) + "%");
                begetEnd(ps, true);
            }
        } catch (Throwable t) {
            ModDev.ev("prologue", "tick " + t);
        }
    }

    /** Writes the pristine save, then takes the game over. */
    private static void enter(PlayerShip ps) {
        started = true;
        pending = false;
        try {
            SharedPreferences p = ModQol.prefs();
            if (p != null) p.edit().putBoolean(DONE, true).commit();   // before anything that can throw: never replay it
            ObjectRegistry.INSTANCE.storageManager.save();       // the fresh save, exactly as the tutorial wants it
            backup();                                            // and a byte copy of it, restored before the restart
            active = true;
            strings();
            outfit();
            // the tutorial mission is already set up for after the restart; it must not narrate over the prologue
            // ("Follow the yellow mark toward the red asteroid" was drawn through the whole fight). The save is put
            // back from the byte copy before the restart, so clearing it here costs nothing.
            try { ObjectRegistry.INSTANCE.currentMission = null; } catch (Throwable t) { /* nothing to clear */ }
            LevelBuilder.jumpToLevel(LevelId.FFA_THE_PLAYER_PAY.levelName, "VECTOR00_GATE");
            left = FIGHT_MS;
            briefMs = BRIEF_MS;
            enteredAt = SystemClock.uptimeMillis();
            floorSaid = false;
            creptSaid = false;
            lastStand = false;
            ModSound.play("flagship_horn", 1.0f, 0.9f, 3000);
            ModDev.ev("prologue", "entered, hull " + (ps == null ? 0 : Math.round(ps.maxLife)) + " boss " + (boss == null ? "none" : Math.round(boss.maxLife)));
        } catch (Throwable t) {
            // The live PlayerInfo may already carry the prologue's level 25 Corvette. Clearing `active` here would
            // unblock saves and write that over the player's real save, so keep it blocked and restart on the
            // pristine save that was written at the top of this method.
            ModDev.ev("prologue", "enter failed " + t + ", restarting on the saved state");
            finished = true;
            restart();
        }
    }

    /** The pilot as they were before the bounty: level 25 Corvette, elite kit, full hull. */
    private static void outfit() {
        PlayerInfo pi = ObjectRegistry.INSTANCE.game.playerInfo;
        preLevel = pi.level;
        preXp = pi.curXp;
        pi.level = PLAYER_LEVEL;
        pi.curXp = 0;
        pi.init();
        SpaceObjectType hull = SpaceObjectType.valueOf(HULL);
        if (!pi.availShips.contains(hull)) pi.availShips.add(hull);
        pi.changeShip(hull, true);
        pi.playerGear.laser = SpaceObjectType.cobaltLaserLevel15;
        pi.playerGear.shield = SpaceObjectType.xenonShieldLevel15;
        pi.playerGear.missile = SpaceObjectType.omegaMissileModLevel15;
        pi.playerGear.booster = SpaceObjectType.goodBooster;
        pi.playerGear.hyperdriveEngine = SpaceObjectType.nopHyperdriveEngine;   // no way out of the bay
        pi.remainingTimeChangeShip = 0;
        ModLock.onShipChanged();
        PlayerShip ps = PlayerShip.instance();
        if (ps != null) {
            ps.removed = false;
            ps.life = ps.maxLife;
            ps.lifeInPourc = 100.0f;
        }
        ModDev.ev("prologue", "outfit L" + pi.level + " " + HULL);
    }

    /** The player bay: the Corvette, the Bloodforge, and cover. No portals, no stations, no way out. */
    private static Level build() {
        List<Element> els = new ArrayList<Element>();
        ArenaLevelBuilder.addAsteroids(els);                      // cover to fight around (the arena field, no portals)
        PlayerShip ps = PlayerShip.instance();
        els.add(ps);
        boss = ModCapitals.spawnBoss(BOSS_FI, BOSS_LEVEL, new Vector2(BOSS_DIST, BOSS_DIST * 0.4f));
        if (boss != null) {
            bossMax = boss.maxLife;
            els.add(boss);
            // spawnBoss queues it into the level we are still standing in (currentLevel is the old one in here)
            try { ObjectRegistry.INSTANCE.game.currentLevel.toAdd.remove(boss); } catch (Throwable t) { /* new level owns it */ }
            boss.specificName = sBossName;
        }
        Level l = new Level(LevelId.FFA_THE_PLAYER_PAY, els, LevelAnimator.NOP);
        l.musicResourceId = 0x7f06002d;                           // the arena combat track
        l.backGroundImage = Background.BackImage.random();
        l.recommandedMinLevel = BOSS_LEVEL;
        l.recommandedMaxLevel = BOSS_LEVEL;
        ModDev.ev("prologue", "level built, elements " + els.size());
        return l;
    }

    /** The prologue pilot never actually progresses: XP from the Bloodforge is wiped every frame, so no level-up can
     *  run and nothing downstream of a level-up can persist. Run 103 and 104 both restarted on a level 34 pilot. */
    private static void holdLevel(PlayerShip ps) {
        try {
            PlayerInfo pi = ObjectRegistry.INSTANCE.game.playerInfo;
            if (pi == null) return;
            if (pi.curXp != 0) pi.curXp = 0;
            if (pi.level != PLAYER_LEVEL) {
                if (!creptSaid) { creptSaid = true; ModDev.ev("prologue", "level crept to " + pi.level + ", held at " + PLAYER_LEVEL + " (logged once)"); }
                pi.level = PLAYER_LEVEL;
                pi.init();
            }
        } catch (Throwable t) {
            // next frame
        }
    }

    /** The Bloodforge cannot be killed inside two minutes: its hull holds at the floor. */
    private static void holdBoss() {
        GuardianCivilShip g = boss;
        if (g == null || g.removed || bossMax <= 0) return;
        float floor = bossMax * BOSS_FLOOR;
        if (g.life > floor) return;
        g.life = floor;
        g.lifeInPourc = 100f * BOSS_FLOOR;
        if (!floorSaid) {
            floorSaid = true;
            flash(sFloor);
            ModDev.ev("prologue", "boss floor reached at " + (FIGHT_MS - left) + " ms");
        }
    }

    /** Hands the fight to the end beat: the Corsair is destroyed either way. */
    private static void begetEnd(PlayerShip ps, boolean clock) {
        ending = true;
        endMs = END_MS;
        lastStand = clock;
        // the hull stays where it fell: damage() returns 0 from here, so nothing can finish the ship but the beat
        flash(clock ? sOut : sDown);
        ModSound.play("warp_in", 0.9f, 0.6f, 500);
    }

    /** Destruction, then the salvage caption, then the restart into the tutorial. */
    private static void endBeat(PlayerShip ps, long j) {
        endMs -= j;
        int el = END_MS - endMs;
        if (el < 2600 && (el / 320) != ((el - (int) j) / 320)) {
            float a = 1f - el / 2600f;
            ModLive.fx("fx_explosion_big_sheet", 4, 16, ps.position.x + (float) (Math.random() * 180 - 90),
                ps.position.y + (float) (Math.random() * 180 - 90), 320 + 520 * (1 - a), 700, 1.0f, 0.6f, 0.25f, true);
            ModSound.play("explosion_big", 0.9f, 0.9f + (float) Math.random() * 0.2f, 120);
        }
        if (endMs > 0) return;
        finished = true;
        ModDev.ev("prologue", "end played after " + (SystemClock.uptimeMillis() - enteredAt) + " ms, restarting");
        restart();
    }

    /** The save files and preferences as they were before the prologue, kept beside the test-mode profiles. */
    private static java.io.File backupDir(Context c) {
        return new java.io.File(c.getDir("corsair_profiles", Context.MODE_PRIVATE), "prologue_backup");
    }

    /** Copies the pristine save (files + preferences) aside, with the same code the test-mode profile swap uses. */
    private static void backup() {
        try {
            Context c = ObjectRegistry.INSTANCE.mainActivity.getApplicationContext();
            ModTestMode.store(c, backupDir(c));
            ModDev.ev("prologue", "pristine save copied aside");
        } catch (Throwable t) {
            ModDev.ev("prologue", "backup failed " + t);
        }
    }

    /** Puts the pristine save back. Blocking StorageManager is not enough on its own: the pilot level and the visited
     *  sector list still came back changed from the first emulator run, so the prologue restores the files it copied
     *  rather than trusting that nothing wrote. */
    private static void restore() {
        try {
            Context c = ObjectRegistry.INSTANCE.mainActivity.getApplicationContext();
            java.io.File d = backupDir(c);
            if (!new java.io.File(d, "complete").exists()) { ModDev.ev("prologue", "no backup to restore"); return; }
            ModTestMode.load(c, d);
            ModDev.ev("prologue", "pristine save restored");
        } catch (Throwable t) {
            ModDev.ev("prologue", "restore failed " + t);
        }
    }

    /** Puts the pristine save back, then relaunches the process: the game comes back in the tutorial. */
    private static void restart() {
        try {
            PlayerInfo pi = ObjectRegistry.INSTANCE.game.playerInfo;
            ModDev.ev("prologue", "pilot at restart: level " + (pi == null ? -1 : pi.level) + " (was " + preLevel + ")");
            if (pi != null) { pi.level = preLevel; pi.curXp = preXp; pi.init(); }
            ObjectRegistry.INSTANCE.levelProperties.visitedLevels.remove(LevelId.FFA_THE_PLAYER_PAY);
        } catch (Throwable t) {
            ModDev.ev("prologue", "pilot reset " + t);
        }
        restore();
        try {
            android.app.Activity a = ObjectRegistry.INSTANCE.mainActivity;
            Context c = a.getApplicationContext();
            Intent i = c.getPackageManager().getLaunchIntentForPackage(c.getPackageName());
            if (i != null) {
                i.addFlags(Intent.FLAG_ACTIVITY_NEW_TASK | Intent.FLAG_ACTIVITY_CLEAR_TASK);
                a.startActivity(i);
            }
        } catch (Throwable t) {
            android.util.Log.w("ModPrologue", "restart " + t);
        }
        android.os.Process.killProcess(android.os.Process.myPid());
        System.exit(0);
    }

    // ------------------------------------------------------------------ HUD

    /** Called at the end of the frame from ModIntro.draw (hooks45 draw point: the last thing drawn). */
    public static void draw(GL10 gl) {
        if (!active || finished) return;
        try {
            int mx = GameRenderer.screenMidWidthX, my = GameRenderer.screenMidWidthY;
            if (ending) {
                int el = END_MS - endMs;
                float a = Math.min(1f, Math.max(0f, (el - 2000) / 1200f));
                if (a > 0) {
                    center(gl, lastStand ? sSalvage1 : sDown, mx, my + 60, TextSize.MEDIUM, 1.0f, 0.4f, 0.35f, a);
                    center(gl, sSalvage2, mx, my - 10, TextSize.NORMALPLUS, 0.8f, 0.88f, 1.0f, a);
                    center(gl, sRestart, mx, my - 90, TextSize.NORMAL, 0.7f, 0.8f, 0.95f, a * 0.9f);
                }
                return;
            }
            int s = Math.max(0, left) / 1000;
            boolean warn = left <= WARN_MS;
            float blink = warn ? 0.6f + 0.4f * (float) Math.abs(Math.sin(SystemClock.uptimeMillis() / 220.0)) : 1f;
            String clock = sTimer + "  " + (s / 60) + ":" + (s % 60 < 10 ? "0" : "") + (s % 60);
            center(gl, clock, mx, my * 2 - 70, warn ? TextSize.MEDIUM : TextSize.NORMALPLUS,
                warn ? 1.0f : 0.85f, warn ? 0.35f : 0.95f, warn ? 0.3f : 1.0f, blink);
            GuardianCivilShip g = boss;
            if (g != null && !g.removed && bossMax > 0) {
                int pc = Math.max(0, Math.round(100f * g.life / bossMax));
                center(gl, sBossName + "   " + pc + "%", mx, my * 2 - 130, TextSize.NORMAL, 1.0f, 0.5f, 0.4f, 0.95f);
            }
            if (briefMs > 0) {
                float a = Math.min(1f, briefMs / 900f);
                center(gl, sBrief1, mx, my + 40, TextSize.NORMALPLUS, 1.0f, 0.85f, 0.4f, a);
                center(gl, sBrief2, mx, my - 20, TextSize.NORMAL, 0.85f, 0.92f, 1.0f, a);
            }
            if (flashMs > 0) center(gl, flashText, mx, 150, TextSize.NORMALPLUS, 1.0f, 0.75f, 0.45f, Math.min(1f, flashMs / 700f));
        } catch (Throwable t) {
            // the HUD is cosmetic: never take the frame down with it
        }
    }

    private static void center(GL10 gl, String s, int mx, int y, TextSize size, float r, float g, float b, float a) {
        if (s == null || a <= 0.01f) return;
        GLText f = font(size);
        if (f == null) return;
        GameRenderer.drawText(gl, s, mx - Math.round(f.getLength(s) / 2), y, Math.min(1f, a), r, g, b, true, size);
        gl.glEnableClientState(GL10.GL_VERTEX_ARRAY);   // the HUD text path leaves its own state behind
        gl.glEnable(0x0BE2);
        gl.glBlendFunc(GL10.GL_SRC_ALPHA, GL10.GL_ONE_MINUS_SRC_ALPHA);
    }

    private static GLText font(TextSize s) {
        switch (s) {
            case LITTLE: return GameRenderer.glTextLittle;
            case NORMAL: return GameRenderer.glTextNormal;
            case NORMALPLUS: return GameRenderer.glTextNormalPlus;
            case MEDIUM: return GameRenderer.glTextMedium;
            case LARGE: return GameRenderer.glTextLarge;
            default: return GameRenderer.glTextScore;
        }
    }

    /** An on-screen line for a few seconds. ModQol.post would write it to the player's saved inbox, which must stay
     *  as clean as the rest of the save. */
    private static void flash(String s) {
        flashText = s;
        flashMs = FLASH_MS;
    }

    private static void strings() {
        sBrief1 = ModLang.tr("BOUNTY: BLOODFORGE - 2,000,000 cr");
        sBrief2 = ModLang.tr("Crimson Reaver flagship, level 40. Kill it and you are set for life.");
        sTimer = ModLang.tr("REAVER REINFORCEMENTS IN");
        sBossName = ModLang.tr("Crimson Reavers flagship: Bloodforge");
        sFloor = ModLang.tr("Its armour is holding. Nothing you carry can cut through that hull.");
        sOut = ModLang.tr("Reaver wing on approach. The Bloodforge turns its ram on you.");
        sDown = ModLang.tr("HULL BREACH - THE CORSAIR IS LOST");
        sSalvage1 = ModLang.tr("THE CORSAIR IS LOST");
        sSalvage2 = ModLang.tr("Genesis salvage recovered your pod. Licence revoked, savings seized, one loaner hull.");
        sRestart = ModLang.tr("Reporting to the Genesis tutorial sector...");
    }
}
