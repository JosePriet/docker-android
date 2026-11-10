package fr.testudo.spacecorsair.mod;

import android.os.SystemClock;
import android.view.MotionEvent;
import fr.testudo.spacecorsair.display.Texture;
import fr.testudo.spacecorsair.engine.GameRenderer;
import fr.testudo.spacecorsair.engine.GameThread;
import fr.testudo.spacecorsair.engine.ObjectRegistry;
import fr.testudo.spacecorsair.textengine.GLText;
import fr.testudo.spacecorsair.textengine.TextSize;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.FloatBuffer;
import java.util.ArrayList;
import java.util.Random;
import javax.microedition.khronos.opengles.GL10;

/**
 * v45 intro cinematic (owner 2026-11-10, full creative authority): an in-game sequence drawn from the game's own art,
 * played once on a fresh save before the tutorial, skippable with two taps.
 *
 * <p>Story: a level 25 pilot in an Albatros line cruiser takes a 2,000,000 cr bounty on the Bloodforge, the Reaver
 * flagship (level 40). It warps in, the turret duel starts, the shield breaks, the hull burns, then the Furnace Ram
 * splits the cruiser in two. A Genesis salvage crew recovers the escape pod: licence revoked, ship impounded, savings
 * seized; reinstated at the lowest rank in a loaner hull in the Genesis tutorial sector.
 *
 * <p>Mechanics (hooks45_intro): drawn on the GL thread at the end of GameRenderer.drawHud, over the whole frame; the
 * game thread keeps rendering but its time step is 1 ms while the intro runs ({@link #dt}); touches are swallowed
 * ({@link #touch}); character dialogs requested meanwhile (the astrodroid welcome) are held and re-posted at the end
 * ({@link #holdDialog}). Nothing in the save changes. Triggers: Main.onFirstStart ({@link #firstStart}), the hidden
 * test-mode screen (REPLAY INTRO, {@link #replay}) and the emulator switch file corsair_intro.
 */
public final class ModIntro {
    private ModIntro() {}

    // ------------------------------------------------------------------ timeline (ms)
    static final int T_SHIP_IN = 2600, T_BOUNTY = 5000, T_WARP = 9000, T_BATTLE = 12500, T_SHIELD_DOWN = 19500;
    static final int T_ALARM = 24000, T_LANE = 27000, T_CHARGE = 30000, T_IMPACT = 30400, T_FADE = 33500;
    static final int T_CAP = 35000, CAP_MS = 2500, T_END_TITLE = 45000, T_REVEAL = 46200, T_END = 47700;
    static final int SKIP_WINDOW = 2500, SKIP_TO_BLACK = 350, SKIP_REVEAL = 700;
    /** A pending intro holds dialogs for at most this long: if the game never draws a playable frame, nothing is lost. */
    static final int PENDING_HOLD_MS = 25000;
    /** Opening hold while the hull textures upload: the scene clock stops at HOLD_AT for at most WAIT_MS. */
    static final int WAIT_MS = 12000, HOLD_AT = 1500;

    // ------------------------------------------------------------------ scene geometry (design px, 1080 high, origin centre, y up)
    static final float C_CR = 600, C_BF = 1250;                 // sprite canvas sizes of the cruiser and the flagship
    // the duel runs on a diagonal (phones are wide): cruiser bottom left, flagship top right, each facing the other
    static final float CR_X = -560, CR_Y = -230, BF_X = 540, BF_Y = 230, HULL_UNITS = 300; // ModHardpoints pads: 300-unit hull space
    static final float[] CR_PADS = {0.0f, -37.8f, 0.0f, 20.4f, 0.0f, 53.4f};
    static final float[] BF_PADS = {-0.1000f, -0.1387f, 0.1000f, -0.1387f, -0.1010f, 0.0059f, 0.1010f, 0.0059f,
        -0.1020f, 0.0664f, 0.1020f, 0.0664f, -0.1060f, 0.1807f, 0.1060f, 0.1807f};
    static final String[] ART = {"albatros", "cap_reaver", "hw_turret_albatros", "hw_turret_cap_reaver", "proj_cap_reaver",
        "tele_cap_reaver", "fx_glow", "fx_core", "fx_bolt", "fx_fire", "fx_smoke", "fx_spark", "fx_scorch",
        "fx_explosion_big_sheet", "fx_smoke_sheet", "fx_sparks_sheet", "vfx_shield_hit", "vfx_shield_bubble", "debris_sheet", "fx_fire_sheet"};

    // ------------------------------------------------------------------ state
    private static volatile boolean active, pending, flagChecked;
    private static volatile long t;            // scene time; read by the input thread for the double-tap window
    private static long lastFrame, startedAt;
    private static volatile long pendingAt;       // when pending was set: dialogs are only held for PENDING_HOLD_MS before it starts
    private static boolean ready;                 // all textures resident at least once
    private static volatile long lastTapT = -1;
    private static volatile boolean skipHint, skipReq;
    private static int skipFromT = -1;            // skip: the rest is a fast fade from this scene time
    private static final ArrayList<Object[]> held = new ArrayList<Object[]>();
    private static final Random rnd = new Random();
    private static float S = 1, midX, midY, Z;
    private static GL10 cur;

    // ------------------------------------------------------------------ desktop preview seams (work/dtest/V45.java); untouched in the game
    /** Preview harness: fixed screen size, injected clock and text output, no game objects. */
    public static boolean harness;
    public static int harnessW = 2340, harnessH = 1080;
    public static long harnessClock;
    public static TextOut textOut;

    public interface TextOut {
        void draw(String s, float px, float py, TextSize size, float r, float g, float b, float a);
        float width(String s, TextSize size);
    }

    private static long clock() {
        return harness ? harnessClock : SystemClock.uptimeMillis();
    }

    // scene
    private static float crX, crY, bfX, bfY, crSpin = 180, bfSpin, dx, dy, zoom = 1, shake, shakeX, shakeY, flash, black, hull = 1, shield = 1, bossHp = 1;
    private static boolean wrecked, bfGone;
    private static float h1x, h1y, h1r, h2x, h2y, h2r;      // the two halves after the ram
    private static final float[] crAim = new float[3], bfAim = new float[8];
    private static long nextBolt, nextShell, nextSmoke, nextBoom;
    private static int shellSide;
    private static int shieldHits, hullHits;
    private static boolean sWarp, sHorn, sShield, sAlarm, sLane, sCharge, sImpact, sFail;

    // strings (looked up once per run so Spanish applies)
    private static String sWhere, sLicence, sHull, sBounty, sTarget, sTargetRole, sReward, sAccepted, sTapSkip, sTapAgain;
    private static String sShieldDown, sHullCrit, sRam, sHullLost, sBossPlate, sShipPlate, sHullBar, sShieldBar, sTitle1, sTitle2;
    private static String[] sCaps;

    // ------------------------------------------------------------------ triggers
    /** Main.onFirstStart (hooks45): a fresh save plays the intro once the tutorial level is up. */
    public static void firstStart() {
        // v46 (owner 2026-11-10): a fresh save opens on the playable prologue, not the cinematic. The cinematic stays
        // on REPLAY INTRO in test mode.
        ModPrologue.firstStart();
    }

    /** Hidden test-mode screen: play it again at the next frame of the game view. */
    public static void replay() {
        pending = true;
        pendingAt = clock();
        ModDev.ev("intro", "pending (replay)");
    }

    public static boolean isActive() { return active; }

    /** GameThread.run (hooks45): the frame's elapsed time; 1 ms while the intro runs so the world stands still but keeps drawing. */
    public static long dt(long elapsed) {
        if (!harness) ModPrologue.preFrame();   // v46: the top of the frame, outside GameThread.doPhysic
        return active ? 1 : elapsed;
    }

    /** GameThread.processInputEvent (hooks45): true swallows the touch. The first tap shows the hint, a second tap within 2.5 s skips. */
    public static boolean touch(MotionEvent e) {
        if (!active) return false;
        try {
            if (e != null && (e.getAction() & 0xff) == MotionEvent.ACTION_DOWN) {
                long now = t;
                if (lastTapT >= 0 && now - lastTapT < SKIP_WINDOW) skipReq = true;
                else { lastTapT = now; skipHint = true; }
            }
        } catch (Throwable x) {
            // input is cosmetic here
        }
        return true;
    }

    /** GameThread.showDialog (hooks45, after the ModDev.noDialog check): dialogs asked during the intro are posted when it ends. */
    public static boolean holdDialog(GameThread gt, int image, int charName, int text, int delay, boolean force, String post) {
        if (!active) {
            if (!pending) return false;
            if (clock() - pendingAt > PENDING_HOLD_MS) {   // the intro never started: give up holding and let the game speak
                pending = false;
                ModDev.ev("intro", "pending timed out; dialogs released");
                release();
                return false;
            }
        }
        synchronized (held) {
            if (!active && !pending) return false;   // finish() ran between the check above and here: let the dialog through
            held.add(new Object[]{gt, image, charName, text, delay, force, post});
        }
        ModDev.ev("intro", "dialog held " + text);
        return true;
    }

    /** Posts every held dialog. Callers clear active/pending first, so holdDialog cannot add after this drains. */
    private static void release() {
        ArrayList<Object[]> l;
        synchronized (held) {
            l = new ArrayList<Object[]>(held);
            held.clear();
        }
        for (Object[] d : l) {
            try {
                ((GameThread) d[0]).showDialog((Integer) d[1], (Integer) d[2], (Integer) d[3], (Integer) d[4], (Boolean) d[5], (String) d[6]);
            } catch (Throwable x) {
                ModDev.ev("intro", "dialog release failed " + x);
            }
        }
    }

    // ------------------------------------------------------------------ GL hook
    /** GameRenderer.drawHud, last (hooks45). Never throws. */
    public static void draw(GL10 gl) {
        if (!harness) ModPrologue.draw(gl);   // v46: the prologue HUD shares this draw point (last thing in the frame)
        try {
            if (!active) {
                if (!flagChecked) {
                    flagChecked = true;
                    if (ModDev.testFlag("corsair_intro")) { pending = true; ModDev.ev("intro", "pending (switch)"); }
                }
                if (!pending) return;
                if (!harness && (ObjectRegistry.INSTANCE.playerShip == null || ObjectRegistry.INSTANCE.game == null
                    || ObjectRegistry.INSTANCE.game.currentLevel == null || GameRenderer.screenWidthY <= 0)) return;
                begin();
            }
            frame(gl);
        } catch (Throwable x) {
            ModDev.ev("intro", "error " + x);
            finish("error");
        }
    }

    private static void begin() {
        pending = false;
        active = true;
        t = 0;
        lastFrame = 0;
        startedAt = clock();
        ready = false;
        lastTapT = -1;
        skipHint = false;
        skipReq = false;
        skipFromT = -1;
        dx = BF_X - CR_X; dy = BF_Y - CR_Y;
        float dl = (float) Math.sqrt(dx * dx + dy * dy);
        dx /= dl; dy /= dl;                       // unit vector cruiser -> flagship
        crSpin = aim(CR_X, CR_Y, BF_X, BF_Y); bfSpin = aim(BF_X, BF_Y, CR_X, CR_Y);
        crX = CR_X - dx * 900; crY = CR_Y - dy * 900; bfX = BF_X + dx * 1300; bfY = BF_Y + dy * 1300; zoom = 1; shake = 0; flash = 0; black = 1;
        hull = 1; shield = 1; bossHp = 1; wrecked = false; bfGone = false;
        nextBolt = nextShell = nextSmoke = nextBoom = 0;
        shellSide = 0; shieldHits = 0; hullHits = 0;
        sWarp = sHorn = sShield = sAlarm = sLane = sCharge = sImpact = sFail = false;
        live = 0; shots = 0; booms = 0;
        for (int i = 0; i < crAim.length; i++) crAim[i] = crSpin;
        for (int i = 0; i < bfAim.length; i++) bfAim[i] = bfSpin;
        initStars();
        strings();
        ModDev.ev("intro", "start");
    }

    private static void strings() {
        if (harness) { ModLang.class.getName(); }
        sWhere = ModLang.tr("Somewhere in Reaver space.");
        sLicence = ModLang.tr("Pilot licence: LEVEL 25");
        sHull = ModLang.tr("Hull: ALBATROS, line cruiser, three heavy turrets");
        sBounty = ModLang.tr("BOUNTY");
        sTarget = "BLOODFORGE";
        sTargetRole = ModLang.tr("Reaver flagship, level 40");
        sReward = "2,000,000 cr";
        sAccepted = ModLang.tr("Contract accepted.");
        sTapSkip = ModLang.tr("TAP TO SKIP");
        sTapAgain = ModLang.tr("TAP AGAIN TO SKIP");
        sShieldDown = ModLang.tr("SHIELD DOWN");
        sHullCrit = ModLang.tr("HULL CRITICAL");
        sRam = ModLang.tr("FURNACE RAM");
        sHullLost = ModLang.tr("HULL LOST");
        sBossPlate = "BLOODFORGE  LV 40";
        sShipPlate = "ALBATROS  LV 25";
        sHullBar = ModLang.tr("HULL");
        sShieldBar = ModLang.tr("SHIELD");
        sCaps = new String[]{
            ModLang.tr("Hull lost. Bounty void."),
            ModLang.tr("A Genesis salvage crew pulled your escape pod out of the wreck."),
            ModLang.tr("Licence revoked. Ship impounded. Savings seized for the recovery."),
            ModLang.tr("Reinstated at the lowest rank, in a loaner hull."),
        };
        sTitle1 = "GENESIS";
        sTitle2 = ModLang.tr("TUTORIAL SECTOR");
    }

    private static void finish(String why) {
        synchronized (held) {       // holdDialog re-checks these inside the lock, so nothing is added after this point
            active = false;
            pending = false;
        }
        live = 0; shots = 0; booms = 0;
        ModDev.ev("intro", "end " + why + " t=" + t);
        release();
    }

    // ------------------------------------------------------------------ frame
    private static void frame(GL10 gl) {
        long now = clock();
        if (!ready) {
            int n = 0;
            for (String a : ART) if (ModArt.ready(a) != null) n++;
            ready = n == ART.length;
            if (ready) ModDev.ev("intro", "art ready after " + (now - startedAt - t) + " ms of waiting");
            // the black opening waits for the hull uploads (slow emulators take ~8 s): hold the clock, at most WAIT_MS
            if (!ready && now - startedAt - t < WAIT_MS) startedAt = now - Math.min(t, HOLD_AT);
        }
        // scene time is wall time, so the cinematic always takes the same ~48 s whatever the frame rate
        long prev = t;
        t = now - startedAt;
        long d = lastFrame == 0 ? 16 : Math.max(1, Math.min(120, t - prev));
        lastFrame = now;
        if (skipReq && skipFromT < 0 && t < T_REVEAL) {
            skipFromT = (int) t;
            ModDev.ev("intro", "skip at " + t);
        }
        cur = gl;
        int scrW = harness ? harnessW : GameRenderer.screenWidthX, scrH = harness ? harnessH : GameRenderer.screenWidthY;
        S = scrH / 1080f;
        midX = harness ? scrW / 2 : GameRenderer.screenMidWidthX;
        midY = harness ? scrH / 2 : GameRenderer.screenMidWidthY;
        Z = harness ? -1 : -ObjectRegistry.INSTANCE.config.Zindex;
        float W = scrW / S, H = 1080;

        update(d);

        gl.glEnable(0x0BE2);
        gl.glBlendFunc(GL10.GL_SRC_ALPHA, GL10.GL_ONE_MINUS_SRC_ALPHA);
        gl.glEnableClientState(GL10.GL_VERTEX_ARRAY);
        boolean world = (skipFromT >= 0 && t - skipFromT >= SKIP_TO_BLACK) || t >= T_REVEAL;
        if (!world) {
            quad(0, 0, W + 4, H + 4, 0, 0.012f, 0.012f, 0.03f, 1);   // backdrop
            drawStars(W, H);
            drawScene();
        }
        drawHudText(W, H);
        // flash, black veil, letterbox
        if (flash > 0.01f) quad(0, 0, W + 4, H + 4, 0, 1, 0.95f, 0.85f, Math.min(1, flash));
        float veil = veil();
        if (veil > 0.005f) quad(0, 0, W + 4, H + 4, 0, 0, 0, 0, veil);
        drawCaptions(W, H);
        drawSkipHint(W, H);
        gl.glDisable(GL10.GL_TEXTURE_2D);
        gl.glDisableClientState(GL10.GL_TEXTURE_COORD_ARRAY);
        gl.glDisableClientState(GL10.GL_VERTEX_ARRAY);
        gl.glColor4f(1, 1, 1, 1);
        gl.glBlendFunc(GL10.GL_SRC_ALPHA, GL10.GL_ONE_MINUS_SRC_ALPHA);
        cur = null;

        if (skipFromT >= 0) {
            if (t - skipFromT >= SKIP_TO_BLACK + SKIP_REVEAL) finish("skipped");
        } else if (t >= T_END) {
            finish("played");
        }
    }

    /** The black veil: opening, the fade after the kill, the reveal of the tutorial, or the short skip fade. */
    private static float veil() {
        if (skipFromT >= 0) {
            long k = t - skipFromT;
            if (k < SKIP_TO_BLACK) return Math.max(k / (float) SKIP_TO_BLACK, t >= T_FADE ? 1 : 0);
            return Math.max(0, 1 - (k - SKIP_TO_BLACK) / (float) SKIP_REVEAL);
        }
        if (t < 1500) return 1 - t / 1500f * 0.0f;                     // black titles over the backdrop (stars start at T_SHIP_IN)
        if (t < T_SHIP_IN) return 1 - (t - 1500) / (float) (T_SHIP_IN - 1500);
        if (t < T_FADE) return 0;
        if (t < T_FADE + 1500) return (t - T_FADE) / 1500f;
        if (t < T_REVEAL) return 1;
        return Math.max(0, 1 - (t - T_REVEAL) / (float) (T_END - T_REVEAL));
    }

    // ------------------------------------------------------------------ simulation
    private static void update(long d) {
        float dt = d / 1000f;
        // cruiser entry along its heading
        float ce = t < T_SHIP_IN ? -900 : t < T_SHIP_IN + 2200 ? -900 + 900 * easeOut((t - T_SHIP_IN) / 2200f) : 6 * (float) Math.sin(t / 900.0);
        if (!wrecked) { crX = CR_X + dx * ce; crY = CR_Y + dy * ce; }
        // flagship warp-in and charge
        if (t >= T_WARP && !sWarp) { sWarp = true; flash = 0.9f; ModSound.play("warp_in", 1.0f, 0.9f, 0); }
        if (t >= T_WARP + 900 && !sHorn) { sHorn = true; ModSound.play("flagship_horn", 1.0f, 1.0f, 0); }
        float be;   // flagship offset along the diagonal (+ = away from the cruiser)
        if (t < T_WARP) be = 1300;
        else if (t < T_WARP + 2200) be = 1300 * (1 - easeOut((t - T_WARP) / 2200f));
        else if (t < T_CHARGE) be = 8 * (float) Math.sin(t / 1300.0);
        else {
            // the ram: nose reaches the cruiser at T_IMPACT, then it carries on past the wreck and off the screen
            float gap = (float) Math.sqrt((BF_X - CR_X) * (BF_X - CR_X) + (BF_Y - CR_Y) * (BF_Y - CR_Y)) - 0.45f * C_BF - 0.05f * C_CR;
            float v = gap / (T_IMPACT - T_CHARGE);
            be = -v * (t - T_CHARGE);
            if (be < -3200) bfGone = true;
        }
        bfX = BF_X + dx * be; bfY = BF_Y + dy * be;
        // zoom out to fit both ships
        if (t < T_WARP) zoom = 1;
        else if (t < T_WARP + 3000) zoom = 1 - 0.15f * easeOut((t - T_WARP) / 3000f);
        else zoom = 0.85f;
        // bars
        if (t < T_FADE) flash = Math.max(0, flash - dt * 1.6f);
        shake = Math.max(0, shake - dt * 40);
        shakeX = shake > 0 ? (rnd.nextFloat() - 0.5f) * shake : 0;
        shakeY = shake > 0 ? (rnd.nextFloat() - 0.5f) * shake : 0;

        if (ModArt.ready("albatros") == null) return;   // visuals only once the art is up
        // engine flames
        if (!wrecked && t >= T_SHIP_IN && t < T_IMPACT) {
            for (int i = 0; i < 2; i++) {
                float[] p = local(crX, crY, crSpin, (i == 0 ? -13 : 13) * C_CR / HULL_UNITS, 112 * C_CR / HULL_UNITS);
                float sp = 220 + rnd.nextFloat() * 120;
                part("fx_fire", p[0], p[1], -dx * sp + (rnd.nextFloat() - 0.5f) * 30, -dy * sp + (rnd.nextFloat() - 0.5f) * 30, 260, 26, 6, 1.0f, 0.65f, 0.3f, 0.9f, true, false);
            }
        }
        if (t >= T_WARP + 400 && !bfGone) {
            float[] ex = {-0.075f, 0.42f, -0.025f, 0.43f, 0.025f, 0.43f, 0.075f, 0.42f};
            for (int i = 0; i < 4; i++) {
                float[] p = local(bfX, bfY, bfSpin, ex[i * 2] * C_BF, ex[i * 2 + 1] * C_BF);
                float boost = t >= T_CHARGE ? 2.2f : 1;
                float sp = 260 * boost + rnd.nextFloat() * 120;
                part("fx_fire", p[0], p[1], dx * sp + (rnd.nextFloat() - 0.5f) * 40, dy * sp + (rnd.nextFloat() - 0.5f) * 40, 300, 46 * boost, 10, 1.0f, 0.5f, 0.2f, 0.95f, true, false);
            }
        }
        // the duel
        if (!wrecked && t >= T_BATTLE && t < T_LANE) {
            if (t >= nextBolt) {
                nextBolt = t + 140;
                int k = (int) ((t / 140) % 3);
                float[] from = local(crX, crY, crSpin, CR_PADS[k * 2] * C_CR / HULL_UNITS, CR_PADS[k * 2 + 1] * C_CR / HULL_UNITS);
                float[] to = local(bfX, bfY, bfSpin, (rnd.nextFloat() - 0.5f) * 0.22f * C_BF, (rnd.nextFloat() - 0.6f) * 0.5f * C_BF);
                float tx = to[0], ty = to[1];
                shot(0, from[0], from[1], tx, ty, 380);
                ModSound.play("gun_medium", 0.5f, 1.1f, 120);
            }
        }
        if (!wrecked && t >= T_BATTLE + 900 && t < T_CHARGE && t >= nextShell) {
            nextShell = t + (t < T_SHIELD_DOWN ? 820 : 560);
            int m = shellSide;
            shellSide = (shellSide + 3) % 8;
            float[] from = local(bfX, bfY, bfSpin, BF_PADS[m * 2] * C_BF, BF_PADS[m * 2 + 1] * C_BF);
            float[] to = local(crX, crY, crSpin, (rnd.nextFloat() - 0.5f) * 0.25f * C_CR, (rnd.nextFloat() - 0.5f) * 0.5f * C_CR);
            float tx = to[0], ty = to[1];
            shot(1, from[0], from[1], tx, ty, 650);
            ModSound.play("gun_heavy", 0.7f, 0.8f, 200);
        }
        if (t >= T_SHIELD_DOWN && !sShield) {
            sShield = true;
            shield = 0;
            ModSound.play("shield_down", 1.0f, 1.0f, 0);
            boom("vfx_shield_bubble", crX, crY, C_CR * 1.25f, 500, 0.45f, 0.8f, 1.0f, false, 1, 1);
        }
        if (t >= T_ALARM && !sAlarm) { sAlarm = true; ModSound.play("hull_alarm", 0.9f, 1.0f, 0); }
        // damage smoke and fire on the cruiser
        if (!wrecked && hull < 0.55f && t >= nextSmoke) {
            nextSmoke = t + 110;
            float ox = (rnd.nextFloat() - 0.5f) * C_CR * 0.25f, oy = (rnd.nextFloat() - 0.5f) * C_CR * 0.6f;
            boom("fx_smoke_sheet", crX + ox, crY + oy, C_CR * 0.3f, 1400, 0.5f, 0.5f, 0.5f, true, 4, 16);
            if (hull < 0.4f && rnd.nextFloat() < 0.6f) boom("fx_fire_sheet", crX + ox * 0.6f, crY + oy * 0.6f, C_CR * 0.2f, 700, 1.0f, 0.6f, 0.25f, true, 4, 16);
        }
        // ram telegraph and charge
        if (t >= T_LANE && !sLane) { sLane = true; ModSound.play("titan_throne", 1.0f, 1.0f, 0); }
        if (t >= T_CHARGE && !sCharge) { sCharge = true; ModSound.play("flagship_horn", 1.0f, 0.8f, 0); shake = 10; }
        if (t >= T_CHARGE && !bfGone) {
            for (int i = 0; i < 2; i++) {
                float[] p = local(bfX, bfY, bfSpin, (rnd.nextFloat() - 0.5f) * 0.3f * C_BF, (0.1f + rnd.nextFloat() * 0.3f) * C_BF);
                float sp = 200 + rnd.nextFloat() * 200;
                part("fx_fire", p[0], p[1], dx * sp + (rnd.nextFloat() - 0.5f) * 60, dy * sp + (rnd.nextFloat() - 0.5f) * 60, 700, 70, 20, 1.0f, 0.45f, 0.15f, 0.7f, true, false);
            }
        }
        if (t >= T_IMPACT && !sImpact) {
            sImpact = true;
            wrecked = true;
            hull = 0;
            flash = 1.0f;
            shake = 45;
            ModSound.play("titan_blast", 1.0f, 1.0f, 0);
            ModSound.play("hull_breach", 1.0f, 1.0f, 0);
            h1x = crX + dx * C_CR * 0.25f; h1y = crY + dy * C_CR * 0.25f; h1r = crSpin;   // nose half, ahead
            h2x = crX - dx * C_CR * 0.25f; h2y = crY - dy * C_CR * 0.25f; h2r = crSpin;   // stern half
            boom("fx_explosion_big_sheet", crX, crY, C_CR * 1.6f, 1100, 1.0f, 0.75f, 0.45f, true, 8, 64);
            for (int i = 0; i < 16; i++) {
                float a = rnd.nextFloat() * 6.2832f, sp = 140 + rnd.nextFloat() * 420;
                part("debris_sheet", crX + (rnd.nextFloat() - 0.5f) * 120, crY + (rnd.nextFloat() - 0.5f) * 300, (float) Math.cos(a) * sp, (float) Math.sin(a) * sp,
                    2600 + rnd.nextInt(1400), 28 + rnd.nextFloat() * 44, 20, 0.55f, 0.5f, 0.48f, 1.0f, false, true, (rnd.nextFloat() - 0.5f) * 500, rnd.nextInt(16));
            }
            for (int i = 0; i < 40; i++) {
                float a = rnd.nextFloat() * 6.2832f, sp = 300 + rnd.nextFloat() * 700;
                part("fx_spark", crX, crY, (float) Math.cos(a) * sp, (float) Math.sin(a) * sp, 500 + rnd.nextInt(500), 22, 4, 1.0f, 0.8f, 0.45f, 1.0f, true, false);
            }
            for (int i = 0; i < 10; i++) {
                float a = rnd.nextFloat() * 6.2832f, sp = 60 + rnd.nextFloat() * 160;
                part("fx_smoke", crX, crY, (float) Math.cos(a) * sp, (float) Math.sin(a) * sp, 2500, 90, 260, 0.35f, 0.33f, 0.32f, 0.7f, false, false);
            }
        }
        if (wrecked) {
            // the halves are shoved sideways off the ram line and keep tumbling
            h1x += (-dy * 110 + dx * 30) * dt; h1y += (dx * 110 + dy * 30) * dt; h1r += 28 * dt;
            h2x += (dy * 90 - dx * 40) * dt; h2y += (-dx * 90 - dy * 40) * dt; h2r -= 22 * dt;
            if (t >= nextBoom && t < T_FADE) {
                nextBoom = t + 420 + rnd.nextInt(300);
                boolean top = rnd.nextBoolean();
                boom("fx_explosion_big_sheet", top ? h1x : h2x, top ? h1y : h2y, C_CR * (0.35f + rnd.nextFloat() * 0.3f), 800, 1.0f, 0.7f, 0.4f, true, 8, 64);
                boom("fx_smoke_sheet", top ? h1x : h2x, top ? h1y : h2y, C_CR * 0.5f, 1800, 0.45f, 0.45f, 0.45f, true, 4, 16);
                shake = Math.max(shake, 8);
            }
        }
        if (t >= T_FADE + 1500 && !sFail) { sFail = true; ModSound.play("mission_fail", 0.9f, 1.0f, 0); }
        // turrets aim
        for (int k = 0; k < 3; k++) {
            float[] p = local(crX, crY, crSpin, CR_PADS[k * 2] * C_CR / HULL_UNITS, CR_PADS[k * 2 + 1] * C_CR / HULL_UNITS);
            float want = t >= T_WARP + 600 && !wrecked ? aim(p[0], p[1], bfX, bfY) : crSpin;
            crAim[k] = turn(crAim[k], want, 160 * dt);
        }
        for (int k = 0; k < 8; k++) {
            float[] p = local(bfX, bfY, bfSpin, BF_PADS[k * 2] * C_BF, BF_PADS[k * 2 + 1] * C_BF);
            float want = t >= T_WARP + 1500 && !wrecked ? aim(p[0], p[1], crX, crY) : bfSpin;
            bfAim[k] = turn(bfAim[k], want, 90 * dt);
        }
        stepShots(dt);
        stepParts(dt);
        stepBooms(d);
        stepStars(dt);
    }

    private static float easeOut(float k) {
        k = Math.max(0, Math.min(1, k));
        return 1 - (1 - k) * (1 - k) * (1 - k);
    }

    /** Spin (degrees, the game's convention: nose at local -y, spin = atan2 + 90) that points from (x,y) to (tx,ty). */
    private static float aim(float x, float y, float tx, float ty) {
        return (float) Math.toDegrees(Math.atan2(ty - y, tx - x)) + 90;
    }

    private static float turn(float cur, float want, float max) {
        float d = ((want - cur) % 360 + 540) % 360 - 180;
        if (Math.abs(d) <= max) return want;
        return cur + Math.signum(d) * max;
    }

    private static final float[] tmp = new float[2];

    /** Local hull offset (image space: x right, y down toward the stern) rotated by spin, into scene coordinates. */
    private static float[] local(float x, float y, float spin, float lx, float ly) {
        double r = Math.toRadians(spin);
        float c = (float) Math.cos(r), s = (float) Math.sin(r);
        tmp[0] = x + lx * c - ly * s;
        tmp[1] = y + lx * s + ly * c;
        return tmp;
    }

    // ------------------------------------------------------------------ shots (bolts and shells)
    private static final int SHOTS = 64;
    private static final int[] shKind = new int[SHOTS];
    private static final float[] shX0 = new float[SHOTS], shY0 = new float[SHOTS], shX1 = new float[SHOTS], shY1 = new float[SHOTS], shT = new float[SHOTS], shD = new float[SHOTS];
    private static int shots;

    private static void shot(int kind, float x0, float y0, float x1, float y1, float ms) {
        if (shots >= SHOTS) return;
        int i = shots++;
        shKind[i] = kind; shX0[i] = x0; shY0[i] = y0; shX1[i] = x1; shY1[i] = y1; shT[i] = 0; shD[i] = ms / 1000f;
    }

    private static void stepShots(float dt) {
        for (int i = 0; i < shots; i++) {
            shT[i] += dt;
            if (shT[i] < shD[i]) continue;
            hit(shKind[i], shX1[i], shY1[i]);
            shots--;
            shKind[i] = shKind[shots]; shX0[i] = shX0[shots]; shY0[i] = shY0[shots]; shX1[i] = shX1[shots]; shY1[i] = shY1[shots]; shT[i] = shT[shots]; shD[i] = shD[shots];
            i--;
        }
    }

    private static void hit(int kind, float x, float y) {
        if (kind == 0) {
            boom("fx_sparks_sheet", x, y, 110, 320, 1.0f, 0.85f, 0.5f, true, 4, 16);
            boom("fx_core", x, y, 70, 160, 1.0f, 0.7f, 0.4f, true, 1, 1);
            bossHp = Math.max(0.94f, bossHp - 0.004f);
            return;
        }
        if (wrecked) return;
        if (shield > 0.001f) {
            shieldHits++;
            shield = Math.max(0, 1 - shieldHits / 7f);
            boom("vfx_shield_hit", x, y, 300, 320, 0.45f, 0.8f, 1.0f, true, 1, 1);
            shake = Math.max(shake, 5);
            if (shield <= 0.001f && t < T_SHIELD_DOWN) shield = 0.03f;   // the SHIELD DOWN beat has its own time
        } else {
            hullHits++;
            hull = Math.max(0.28f, hull - 0.085f);
            boom("fx_explosion_big_sheet", x, y, 190, 600, 1.0f, 0.75f, 0.45f, true, 8, 64);
            boom("fx_smoke_sheet", x, y, 160, 1200, 0.5f, 0.5f, 0.5f, true, 4, 16);
            for (int i = 0; i < 8; i++) {
                float a = rnd.nextFloat() * 6.2832f, sp = 150 + rnd.nextFloat() * 300;
                part("fx_spark", x, y, (float) Math.cos(a) * sp, (float) Math.sin(a) * sp, 400, 16, 3, 1.0f, 0.8f, 0.45f, 1.0f, true, false);
            }
            shake = Math.max(shake, 14);
        }
    }

    // ------------------------------------------------------------------ particles
    private static final int MAX = 420;
    private static final String[] ptex = new String[MAX];
    private static final float[] px = new float[MAX], py = new float[MAX], pvx = new float[MAX], pvy = new float[MAX], plife = new float[MAX], pmax = new float[MAX];
    private static final float[] ps0 = new float[MAX], ps1 = new float[MAX], pr = new float[MAX], pg = new float[MAX], pb = new float[MAX], pa = new float[MAX], prot = new float[MAX], pspin = new float[MAX];
    private static final boolean[] padd = new boolean[MAX], pcell = new boolean[MAX];
    private static final int[] pc = new int[MAX];
    private static int live;

    private static void part(String tex, float x, float y, float vx, float vy, float lifeMs, float s0, float s1, float r, float g, float b, float a, boolean add, boolean debris) {
        part(tex, x, y, vx, vy, lifeMs, s0, s1, r, g, b, a, add, debris, 0, 0);
    }

    /** spin in deg/s and cell (4x4 sheet) for debris pieces. */
    private static void part(String tex, float x, float y, float vx, float vy, float lifeMs, float s0, float s1, float r, float g, float b, float a, boolean add, boolean debris, float spin, int cell) {
        int i = live < MAX ? live++ : rnd.nextInt(MAX);
        ptex[i] = tex; px[i] = x; py[i] = y; pvx[i] = vx; pvy[i] = vy; plife[i] = 0; pmax[i] = lifeMs / 1000f;
        ps0[i] = s0; ps1[i] = s1; pr[i] = r; pg[i] = g; pb[i] = b; pa[i] = a; padd[i] = add; pcell[i] = debris;
        prot[i] = rnd.nextFloat() * 360; pspin[i] = spin; pc[i] = cell;
    }

    private static void stepParts(float dt) {
        for (int i = 0; i < live; i++) {
            plife[i] += dt;
            if (plife[i] >= pmax[i]) {
                live--;
                ptex[i] = ptex[live]; px[i] = px[live]; py[i] = py[live]; pvx[i] = pvx[live]; pvy[i] = pvy[live]; plife[i] = plife[live]; pmax[i] = pmax[live];
                ps0[i] = ps0[live]; ps1[i] = ps1[live]; pr[i] = pr[live]; pg[i] = pg[live]; pb[i] = pb[live]; pa[i] = pa[live]; padd[i] = padd[live]; pcell[i] = pcell[live];
                prot[i] = prot[live]; pspin[i] = pspin[live]; pc[i] = pc[live];
                i--;
                continue;
            }
            px[i] += pvx[i] * dt;
            py[i] += pvy[i] * dt;
            prot[i] += pspin[i] * dt;
            if (!pcell[i]) { pvx[i] *= 1 - 1.5f * dt; pvy[i] *= 1 - 1.5f * dt; }
        }
    }

    // ------------------------------------------------------------------ flipbook bursts and flashes
    private static final int BMAX = 48;
    private static final String[] btex = new String[BMAX];
    private static final float[] bx = new float[BMAX], by = new float[BMAX], bs = new float[BMAX], brot = new float[BMAX], br = new float[BMAX], bg = new float[BMAX], bb = new float[BMAX];
    private static final long[] bage = new long[BMAX], bdur = new long[BMAX];
    private static final int[] bcols = new int[BMAX], bframes = new int[BMAX];
    private static final boolean[] badd = new boolean[BMAX];
    private static int booms;

    private static void boom(String tex, float x, float y, float size, long ms, float r, float g, float b, boolean add, int cols, int frames) {
        int i = booms < BMAX ? booms++ : rnd.nextInt(BMAX);
        btex[i] = tex; bx[i] = x; by[i] = y; bs[i] = size; brot[i] = frames > 1 ? rnd.nextFloat() * 360 : 0; br[i] = r; bg[i] = g; bb[i] = b;
        bage[i] = 0; bdur[i] = Math.max(100, ms); bcols[i] = cols; bframes[i] = frames; badd[i] = add;
    }

    private static void stepBooms(long d) {
        for (int i = 0; i < booms; i++) {
            bage[i] += d;
            if (bage[i] >= bdur[i]) {
                booms--;
                btex[i] = btex[booms]; bx[i] = bx[booms]; by[i] = by[booms]; bs[i] = bs[booms]; brot[i] = brot[booms]; br[i] = br[booms]; bg[i] = bg[booms]; bb[i] = bb[booms];
                bage[i] = bage[booms]; bdur[i] = bdur[booms]; bcols[i] = bcols[booms]; bframes[i] = bframes[booms]; badd[i] = badd[booms];
                i--;
            }
        }
    }

    // ------------------------------------------------------------------ stars
    private static final int STARS = 150;
    private static final float[] sx = new float[STARS], sy = new float[STARS], sz = new float[STARS], sb = new float[STARS];

    private static void initStars() {
        for (int i = 0; i < STARS; i++) {
            sx[i] = (rnd.nextFloat() - 0.5f) * 2600;
            sy[i] = (rnd.nextFloat() - 0.5f) * 1300;
            sz[i] = i < 25 ? 1.0f : i < 70 ? 0.55f : 0.3f;
            sb[i] = 0.35f + rnd.nextFloat() * 0.65f;
        }
    }

    private static void stepStars(float dt) {
        float v = t < T_SHIP_IN ? 0 : t < T_IMPACT ? 1 : Math.max(0, 1 - (t - T_IMPACT) / 2500f);
        for (int i = 0; i < STARS; i++) {
            sy[i] -= 150 * sz[i] * v * dt;
            if (sy[i] < -680) { sy[i] += 1360; sx[i] = (rnd.nextFloat() - 0.5f) * 2600; }
        }
    }

    private static void drawStars(float W, float H) {
        Texture g = ModArt.ready("fx_glow");
        if (g != null) {
            tex(g, -W * 0.25f, 200, 1400, 1400, 0, 0.35f, 0.2f, 0.5f, 0.35f, true, 0, 0, 1, 1);
            tex(g, W * 0.3f, -300, 1100, 1100, 0, 0.5f, 0.15f, 0.2f, 0.3f, true, 0, 0, 1, 1);
        }
        for (int i = 0; i < STARS; i++) {
            float s = 1.5f + 3.5f * sz[i];
            quad(sx[i] * zoom, sy[i] * zoom, s, s, 0, 0.85f + 0.15f * sb[i], 0.9f, 1.0f, sb[i] * (0.4f + 0.6f * sz[i]));
        }
    }

    // ------------------------------------------------------------------ scene drawing
    private static void drawScene() {
        Texture cr = ModArt.ready("albatros"), bf = ModArt.ready("cap_reaver");
        Texture tcr = ModArt.ready("hw_turret_albatros"), tbf = ModArt.ready("hw_turret_cap_reaver");
        Texture glow = ModArt.ready("fx_glow"), lane = ModArt.ready("tele_cap_reaver");
        float z = zoom;
        // ram lane
        if (lane != null && t >= T_LANE && t < T_IMPACT && !wrecked) {
            float x0 = bfX - dx * 0.45f * C_BF, y0 = bfY - dy * 0.45f * C_BF, x1 = crX + dx * 0.2f * C_CR, y1 = crY + dy * 0.2f * C_CR;
            float pulse = 0.4f + 0.3f * (float) Math.abs(Math.sin(t / 160.0));
            float len = (float) Math.sqrt((x0 - x1) * (x0 - x1) + (y0 - y1) * (y0 - y1));
            tex(lane, (x0 + x1) / 2 * z + shakeX, (y0 + y1) / 2 * z + shakeY, 0.28f * C_BF * z, len * z, bfSpin, 1.0f, 0.3f, 0.2f, pulse, true, 0, 0, 1, 1);
        }
        // flagship
        if (bf != null && !bfGone && t >= T_WARP) {
            float a = t < T_WARP + 500 ? (t - T_WARP) / 500f : 1;
            tex(bf, bfX * z + shakeX, bfY * z + shakeY, C_BF * z, C_BF * z, bfSpin, 1, 1, 1, a, false, 0, 0, 1, 1);
            if (tbf != null) {
                for (int k = 0; k < 8; k++) {
                    float[] p = local(bfX, bfY, bfSpin, BF_PADS[k * 2] * C_BF, BF_PADS[k * 2 + 1] * C_BF);
                    tex(tbf, p[0] * z + shakeX, p[1] * z + shakeY, 0.11f * C_BF * z, 0.11f * C_BF * z, bfAim[k], 1, 1, 1, a, false, 0, 0, 1, 1);
                }
            }
            if (glow != null && t >= T_LANE && !wrecked) {
                float k = Math.min(1, (t - T_LANE) / 2000f);
                float s = (200 + 130 * k + 40 * (float) Math.sin(t / 90.0)) * z;
                float[] p = local(bfX, bfY, bfSpin, 0, -0.44f * C_BF);
                tex(glow, p[0] * z + shakeX, p[1] * z + shakeY, s, s, 0, 1.0f, 0.35f, 0.15f, 0.9f * k, true, 0, 0, 1, 1);
            }
        }
        // cruiser or its halves
        if (cr != null && t >= T_SHIP_IN) {
            if (!wrecked) {
                tex(cr, crX * z + shakeX, crY * z + shakeY, C_CR * z, C_CR * z, crSpin, 1, 1, 1, 1, false, 0, 0, 1, 1);
                if (tcr != null) {
                    for (int k = 0; k < 3; k++) {
                        float[] p = local(crX, crY, crSpin, CR_PADS[k * 2] * C_CR / HULL_UNITS, CR_PADS[k * 2 + 1] * C_CR / HULL_UNITS);
                        tex(tcr, p[0] * z + shakeX, p[1] * z + shakeY, 0.16f * C_CR * z, 0.16f * C_CR * z, crAim[k], 1, 1, 1, 1, false, 0, 0, 1, 1);
                    }
                }
                if (shield > 0.001f && t >= T_BATTLE) {
                    Texture bub = ModArt.ready("vfx_shield_bubble");
                    if (bub != null) tex(bub, crX * z + shakeX, crY * z + shakeY, C_CR * 1.15f * z, C_CR * 1.15f * z, t / 30f, 0.45f, 0.8f, 1.0f, 0.10f + 0.08f * shield, true, 0, 0, 1, 1);
                }
            } else {
                float k = Math.min(1, (t - T_IMPACT) / 1500f);
                float tint = 1 - 0.55f * k;
                // nose half (v 0..0.5 of the sprite) and stern half (v 0.5..1), each its own piece
                tex(cr, h1x * z + shakeX, h1y * z + shakeY, C_CR * z, C_CR * 0.5f * z, h1r, tint, tint * 0.85f, tint * 0.8f, 1, false, 0, 0, 1, 0.5f);
                tex(cr, h2x * z + shakeX, h2y * z + shakeY, C_CR * z, C_CR * 0.5f * z, h2r, tint, tint * 0.85f, tint * 0.8f, 1, false, 0, 0.5f, 1, 1);
                Texture sc = ModArt.ready("fx_scorch");
                if (sc != null) {
                    float[] p = local(h1x, h1y, h1r, 0, C_CR * 0.22f);
                    tex(sc, p[0] * z + shakeX, p[1] * z + shakeY, C_CR * 0.3f * z, C_CR * 0.3f * z, h1r, 1, 1, 1, 0.8f, false, 0, 0, 1, 1);
                    p = local(h2x, h2y, h2r, 0, -C_CR * 0.22f);
                    tex(sc, p[0] * z + shakeX, p[1] * z + shakeY, C_CR * 0.3f * z, C_CR * 0.3f * z, h2r + 97, 1, 1, 1, 0.8f, false, 0, 0, 1, 1);
                }
                if (glow != null && k < 1) {
                    tex(glow, crX * z + shakeX, crY * z + shakeY, C_CR * 1.4f * z * (1 - k), C_CR * 1.4f * z * (1 - k), 0, 1.0f, 0.6f, 0.3f, 0.8f * (1 - k), true, 0, 0, 1, 1);
                }
            }
        }
        // shots
        Texture bolt = ModArt.ready("fx_bolt"), shell = ModArt.ready("proj_cap_reaver");
        for (int i = 0; i < shots; i++) {
            float k = shT[i] / shD[i];
            float x = shX0[i] + (shX1[i] - shX0[i]) * k, y = shY0[i] + (shY1[i] - shY0[i]) * k;
            float rot = aim(shX0[i], shY0[i], shX1[i], shY1[i]);
            if (shKind[i] == 0) {
                if (bolt != null) tex(bolt, x * z + shakeX, y * z + shakeY, 34 * z, 130 * z, rot, 1.0f, 0.75f, 0.35f, 1, true, 0, 0, 1, 1);
            } else {
                if (glow != null) tex(glow, x * z + shakeX, y * z + shakeY, 170 * z, 170 * z, 0, 1.0f, 0.4f, 0.15f, 0.85f, true, 0, 0, 1, 1);
                if (shell != null) tex(shell, x * z + shakeX, y * z + shakeY, 56 * z, 112 * z, rot, 1, 1, 1, 1, false, 0, 0, 1, 1);
            }
        }
        // particles (non-additive first: smoke and debris under the glows)
        for (int pass = 0; pass < 2; pass++) {
            for (int i = 0; i < live; i++) {
                if (padd[i] != (pass == 1)) continue;
                Texture tx = ModArt.ready(ptex[i]);
                if (tx == null) continue;
                float k = plife[i] / pmax[i];
                float s = (ps0[i] + (ps1[i] - ps0[i]) * k) * z;
                float a = pa[i] * (k < 0.7f ? 1 : 1 - (k - 0.7f) / 0.3f);
                if (pcell[i]) {
                    int c = pc[i];
                    float cu = 0.25f, cv = 0.25f;
                    int cx = c % 4, cy = c / 4;
                    tex(tx, px[i] * z + shakeX, py[i] * z + shakeY, s, s, prot[i], pr[i], pg[i], pb[i], a, false, cx * cu, cy * cv, (cx + 1) * cu, (cy + 1) * cv);
                } else {
                    float rot = (pvx[i] != 0 || pvy[i] != 0) ? (float) Math.toDegrees(Math.atan2(pvy[i], pvx[i])) + 90 : prot[i];
                    float h = "fx_spark".equals(ptex[i]) ? s * 3 : s;
                    tex(tx, px[i] * z + shakeX, py[i] * z + shakeY, s, h, rot, pr[i], pg[i], pb[i], a, padd[i], 0, 0, 1, 1);
                }
            }
        }
        // flipbooks and flashes
        for (int i = 0; i < booms; i++) {
            Texture tx = ModArt.ready(btex[i]);
            if (tx == null) continue;
            float k = bage[i] / (float) bdur[i];
            if (bframes[i] > 1) {
                int f = Math.min(bframes[i] - 1, (int) (k * bframes[i]));
                int rows = (bframes[i] + bcols[i] - 1) / bcols[i];
                float cu = 1f / bcols[i], cv = 1f / rows;
                int cx = f % bcols[i], cy = f / bcols[i];
                tex(tx, bx[i] * z + shakeX, by[i] * z + shakeY, bs[i] * z, bs[i] * z, brot[i], br[i], bg[i], bb[i], 1, badd[i], cx * cu, cy * cv, (cx + 1) * cu, (cy + 1) * cv);
            } else {
                float a = 1 - k, s = bs[i] * (0.8f + 0.5f * k) * z;
                tex(tx, bx[i] * z + shakeX, by[i] * z + shakeY, s, s, brot[i], br[i], bg[i], bb[i], a, badd[i], 0, 0, 1, 1);
            }
        }
    }

    // ------------------------------------------------------------------ HUD plates, callouts, captions
    private static void drawHudText(float W, float H) {
        if ((skipFromT >= 0 && t - skipFromT >= SKIP_TO_BLACK) || t < T_SHIP_IN || t >= T_FADE + 1500) return;
        float a = Math.min(1, (t - T_SHIP_IN) / 800f);
        if (t >= T_FADE) a = Math.max(0, 1 - (t - T_FADE) / 1500f);
        float x = -W / 2 + 60, y = H / 2 - 90;
        // player plate (top left)
        text(sShipPlate, x, y, TextSize.NORMAL, 0.85f, 0.95f, 1.0f, a, 0);
        bar(x, y - 44, 420, 22, hull, 1.0f, 0.45f, 0.4f, a);
        text(sHullBar, x + 430, y - 48, TextSize.LITTLE, 1.0f, 0.6f, 0.55f, a, 0);
        bar(x, y - 80, 420, 22, shield, 0.45f, 0.8f, 1.0f, a);
        text(sShieldBar, x + 430, y - 84, TextSize.LITTLE, 0.6f, 0.85f, 1.0f, a, 0);
        // boss plate (top right)
        if (t >= T_WARP + 1200) {
            float ab = Math.min(1, (t - T_WARP - 1200) / 600f) * a;
            float bx0 = W / 2 - 60;
            text(sBossPlate, bx0, y, TextSize.NORMAL, 1.0f, 0.5f, 0.45f, ab, 2);
            bar(bx0 - 520, y - 44, 520, 22, bossHp, 1.0f, 0.3f, 0.25f, ab);
        }
        // bounty plate (centre), then "contract accepted"
        if (t >= T_BOUNTY && t < T_BOUNTY + 3800) {
            float k = (t - T_BOUNTY) / 3800f;
            float ap = k < 0.1f ? k / 0.1f : k > 0.85f ? (1 - k) / 0.15f : 1;
            float blink = 0.7f + 0.3f * (float) Math.abs(Math.sin(t / 220.0));
            float cy = 300;
            text(sBounty, 0, cy + 70, TextSize.NORMALPLUS, 1.0f, 0.35f, 0.3f, ap * blink, 1);
            text(sTarget, 0, cy + 10, TextSize.MEDIUM, 1.0f, 0.85f, 0.7f, ap, 1);
            text(sTargetRole, 0, cy - 40, TextSize.NORMAL, 1.0f, 0.6f, 0.5f, ap, 1);
            text(sReward, 0, cy - 95, TextSize.NORMALPLUS, 1.0f, 0.85f, 0.35f, ap, 1);
        }
        if (t >= T_BOUNTY + 3800 && t < T_WARP) {
            float k = (t - T_BOUNTY - 3800) / (float) (T_WARP - T_BOUNTY - 3800);
            float ap = k < 0.2f ? k / 0.2f : k > 0.8f ? (1 - k) / 0.2f : 1;
            text(sAccepted, 0, 300, TextSize.NORMALPLUS, 0.6f, 1.0f, 0.65f, ap, 1);
        }
        // callouts
        float blink = (t / 260) % 2 == 0 ? 1 : 0.35f;
        if (t >= T_SHIELD_DOWN && t < T_SHIELD_DOWN + 2200) text(sShieldDown, 0, -440, TextSize.NORMALPLUS, 0.5f, 0.85f, 1.0f, a * blink, 1);
        if (t >= T_ALARM && t < T_IMPACT) text(sHullCrit, 0, -440, TextSize.NORMALPLUS, 1.0f, 0.3f, 0.25f, a * blink, 1);
        if (t >= T_LANE && t < T_IMPACT) text(sRam, -640, 300, TextSize.MEDIUM, 1.0f, 0.55f, 0.2f, a * (0.6f + 0.4f * blink), 1);
        if (t >= T_IMPACT + 900 && t < T_FADE + 1500) text(sHullLost, 0, 0, TextSize.MEDIUM, 1.0f, 0.35f, 0.3f, a * blink, 1);
    }

    private static void drawCaptions(float W, float H) {
        if (skipFromT >= 0 && t - skipFromT >= SKIP_TO_BLACK) return;
        // opening titles over black
        if (t < T_SHIP_IN) {
            float a = fade(t, 300, 2300, 400);
            text(sWhere, 0, 60, TextSize.NORMALPLUS, 0.9f, 0.9f, 0.95f, a, 1);
            text(sLicence, 0, -10, TextSize.NORMAL, 0.75f, 0.85f, 1.0f, a, 1);
            text(sHull, 0, -60, TextSize.NORMAL, 0.75f, 0.85f, 1.0f, a, 1);
        }
        // closing captions over black
        for (int i = 0; i < 4; i++) {
            long t0 = T_CAP + (long) i * CAP_MS;
            if (t >= t0 && t < t0 + CAP_MS) {
                float a = fade(t - t0, 0, CAP_MS, 350);
                text(sCaps[i], 0, 0, TextSize.NORMALPLUS, 0.9f, 0.9f, 0.95f, a, 1);
            }
        }
        if (t >= T_END_TITLE && t < T_END) {
            float a = fade(t - T_END_TITLE, 0, T_END - T_END_TITLE, 500);
            text(sTitle1, 0, 40, TextSize.LARGE, 0.75f, 0.9f, 1.0f, a, 1);
            text(sTitle2, 0, -40, TextSize.NORMALPLUS, 0.75f, 0.85f, 1.0f, a, 1);
        }
    }

    private static void drawSkipHint(float W, float H) {
        if (skipFromT >= 0 || t < 1000 || t >= T_REVEAL) return;
        boolean again = skipHint && lastTapT >= 0 && t - lastTapT < SKIP_WINDOW;
        float a = again ? 1.0f : 0.45f;
        text(again ? sTapAgain : sTapSkip, W / 2 - 50, -H / 2 + 40, TextSize.LITTLE, 1, 1, 1, a, 2);
    }

    private static float fade(long t, long from, long to, long edge) {
        if (t < from || t >= to) return 0;
        float a = Math.min(1, (t - from) / (float) edge);
        float b = Math.min(1, (to - t) / (float) edge);
        return Math.min(a, b);
    }

    // ------------------------------------------------------------------ GL primitives (HUD space: pixels, centre origin, y up)
    private static final FloatBuffer QUAD = buf(new float[]{-0.5f, -0.5f, 0, 0.5f, -0.5f, 0, -0.5f, 0.5f, 0, 0.5f, 0.5f, 0});
    private static final FloatBuffer UV = buf(new float[8]);

    private static FloatBuffer buf(float[] v) {
        ByteBuffer b = ByteBuffer.allocateDirect(v.length * 4);
        b.order(ByteOrder.nativeOrder());
        FloatBuffer f = b.asFloatBuffer();
        f.put(v);
        f.position(0);
        return f;
    }

    /** An untextured quad; x, y, w, h in design px. */
    private static void quad(float x, float y, float w, float h, float rot, float r, float g, float b, float a) {
        GL10 gl = cur;
        if (gl == null || a <= 0.002f) return;
        gl.glDisable(GL10.GL_TEXTURE_2D);
        gl.glDisableClientState(GL10.GL_TEXTURE_COORD_ARRAY);
        gl.glLoadIdentity();
        gl.glTranslatef(x * S, y * S, Z);
        if (rot != 0) gl.glRotatef(rot, 0, 0, 1);
        gl.glScalef(w * S, h * S, 1);
        gl.glColor4f(r, g, b, a);
        gl.glVertexPointer(3, GL10.GL_FLOAT, 0, QUAD);
        gl.glDrawArrays(GL10.GL_TRIANGLE_STRIP, 0, 4);
    }

    /** A textured quad (sub-rectangle u0,v0-u1,v1); rot in degrees, the game's convention (texture top = local -y). */
    private static void tex(Texture tx, float x, float y, float w, float h, float rot, float r, float g, float b, float a, boolean add,
                            float u0, float v0, float u1, float v1) {
        GL10 gl = cur;
        if (gl == null || tx == null || a <= 0.002f) return;
        if (tx instanceof ModArt.Lazy) {
            ModArt.Lazy z = (ModArt.Lazy) tx;
            if (!z.resident) return;
            ModArt.use(gl, z);
        }
        gl.glEnable(GL10.GL_TEXTURE_2D);
        gl.glBindTexture(GL10.GL_TEXTURE_2D, tx.name);
        gl.glEnableClientState(GL10.GL_TEXTURE_COORD_ARRAY);
        UV.put(0, u0); UV.put(1, v0); UV.put(2, u1); UV.put(3, v0); UV.put(4, u0); UV.put(5, v1); UV.put(6, u1); UV.put(7, v1);
        UV.position(0);
        if (add) gl.glBlendFunc(GL10.GL_SRC_ALPHA, GL10.GL_ONE);
        gl.glLoadIdentity();
        gl.glTranslatef(x * S, y * S, Z);
        gl.glRotatef(rot, 0, 0, 1);
        gl.glScalef(w * S, h * S, 1);
        gl.glColor4f(r, g, b, a);
        gl.glVertexPointer(3, GL10.GL_FLOAT, 0, QUAD);
        gl.glTexCoordPointer(2, GL10.GL_FLOAT, 0, UV);
        gl.glDrawArrays(GL10.GL_TRIANGLE_STRIP, 0, 4);
        if (add) gl.glBlendFunc(GL10.GL_SRC_ALPHA, GL10.GL_ONE_MINUS_SRC_ALPHA);
    }

    private static void bar(float x, float y, float w, float h, float k, float r, float g, float b, float a) {
        quad(x + w / 2, y, w + 6, h + 6, 0, 0, 0, 0, 0.6f * a);
        float f = Math.max(0, Math.min(1, k)) * w;
        if (f > 0) quad(x + f / 2, y, f, h, 0, r, g, b, a);
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

    /** Text at design-px (x, y); align 0 left, 1 centre, 2 right. Drawn with the game's HUD text path. */
    private static void text(String s, float x, float y, TextSize size, float r, float g, float b, float a, int align) {
        GL10 gl = cur;
        if (gl == null || s == null || a <= 0.01f) return;
        float w;
        GLText f = null;
        if (textOut != null) w = textOut.width(s, size);
        else {
            f = font(size);
            if (f == null) return;
            w = f.getLength(s);
        }
        float px = midX + x * S, py = midY + y * S;
        if (align == 1) px -= w / 2;
        else if (align == 2) px -= w;
        if (textOut != null) { textOut.draw(s, px, py, size, r, g, b, Math.min(1, a)); return; }
        GameRenderer.drawText(gl, s, (int) px, (int) py, Math.min(1, a), r, g, b, true, size);
        gl.glEnableClientState(GL10.GL_VERTEX_ARRAY);
        gl.glEnable(0x0BE2);
        gl.glBlendFunc(GL10.GL_SRC_ALPHA, GL10.GL_ONE_MINUS_SRC_ALPHA);
    }
}
