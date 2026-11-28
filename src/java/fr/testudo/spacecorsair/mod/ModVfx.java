package fr.testudo.spacecorsair.mod;

import android.app.Activity;
import android.app.AlertDialog;
import android.content.DialogInterface;
import android.content.SharedPreferences;
import android.graphics.Color;
import android.os.SystemClock;
import android.util.TypedValue;
import android.view.View;
import android.widget.CheckBox;
import android.widget.CompoundButton;
import android.widget.LinearLayout;
import android.widget.RadioButton;
import android.widget.RadioGroup;
import android.widget.TextView;
import fr.testudo.spacecorsair.business.Element;
import fr.testudo.spacecorsair.business.player.PlayerShip;
import fr.testudo.spacecorsair.business.projectiles.EnergyBullet;
import fr.testudo.spacecorsair.engine.ObjectRegistry;
import java.util.IdentityHashMap;
import java.util.List;

/**
 * Visual upgrade (owner 2026-11-27, space-corsair/proposals/visual-upgrade.md, items 1-3):
 * - Visual quality option High / Medium / Low (default High) in Settings next to Screen shake. Low = the effects before
 *   this change (every new layer below is skipped).
 * - Slow-frame prompt: when the game runs under SLOW_FPS for more than SLOW_MS, a window offers to lower the quality one
 *   step. Single player: the game (and the background art decoder) pause while it is open. Multiplayer cannot pause the
 *   other players: the prompt shows without pausing only when MP_PROMPT is on (owner decision pending; off = no prompt in
 *   a linked game). At most once per tier per session; never below Low; never a silent drop.
 * - Shot pass: halo + tail on every shot, muzzle flash, impact sparks and impact art (Gemini fx_impact_*).
 *   Fancy layers (outer halo, hot core, ribbon, big muzzle and impact) only for Battleship, Titan and Capital shooters:
 *   full at stage 5, a fainter copy (FAINT) at stage 4, none below. NPC titans and capitals (no refits) count as stage 5.
 * - Explosion pass: flash, shock ring, sparks, fireball on every ship death; big deaths add a shockwave, delayed secondary
 *   blasts, debris and a hero fireball (fx_boom_hero_sheet when the art ships), with the same fancy rule on the dying hull.
 * Everything is cosmetic, local and wrapped: an error skips the effect, never the frame.
 */
public final class ModVfx {
    private ModVfx() {}

    public static final int LOW = 0, MEDIUM = 1, HIGH = 2;
    /** Owner decision pending (2026-11-27): show the slow-frame prompt in multiplayer without pausing. */
    public static boolean MP_PROMPT = false;
    static final float SLOW_FPS = 30.0f;   // the game loop aims at 60 (16 ms frames)
    static final long SLOW_MS = 10000;     // owner: over 10 s of sustained slow frames
    static final float FAINT = 0.55f;      // stage 4 = a fainter stage 5 (owner rule)

    // ================================================================== option
    private static volatile int quality = HIGH;
    private static volatile boolean ask = true;
    private static boolean loaded;

    private static void load() {
        if (loaded) return;
        SharedPreferences p = ModQol.prefs();
        if (p == null) return;
        loaded = true;
        int q = ModQol.saved(p, "visualQuality", HIGH);
        quality = q < LOW || q > HIGH ? HIGH : q;
        ask = ModQol.saved(p, "visualAsk", true);
    }

    public static int quality() { load(); return quality; }

    static void setQuality(int q) {
        load();
        quality = Math.max(LOW, Math.min(HIGH, q));
        SharedPreferences p = ModQol.prefs();
        if (p != null) p.edit().putInt("visualQuality", quality).apply();
        ModDev.ev("vfx", "quality " + quality);
    }

    static void setAsk(boolean v) {
        load();
        ask = v;
        if (v) { shown[0] = shown[1] = shown[2] = false; }   // re-enabled: may offer again this session
        SharedPreferences p = ModQol.prefs();
        if (p != null) p.edit().putBoolean("visualAsk", v).apply();
    }

    static String name(int q) {
        return q == LOW ? ModLang.tr("Low") : q == MEDIUM ? ModLang.tr("Medium") : ModLang.tr("High");
    }

    /** ModQol.settings: the Visual quality row (High / Medium / Low) and the slow-frame prompt switch. */
    static View settingsRow(final Activity a) {
        load();
        LinearLayout box = new LinearLayout(a);
        box.setOrientation(LinearLayout.VERTICAL);
        TextView t = new TextView(a);
        t.setTextColor(Color.WHITE);
        t.setText(ModLang.tr("Visual quality (effects)"));
        box.addView(t);
        RadioGroup g = new RadioGroup(a);
        g.setOrientation(RadioGroup.HORIZONTAL);
        final int[] order = {HIGH, MEDIUM, LOW};
        for (int i = 0; i < order.length; i++) {
            RadioButton b = new RadioButton(a);
            b.setId(0x5c100 + order[i]);
            b.setText(name(order[i]));
            b.setTextColor(Color.WHITE);
            b.setTextSize(TypedValue.COMPLEX_UNIT_SP, 14);
            g.addView(b);
        }
        g.check(0x5c100 + quality);
        g.setOnCheckedChangeListener(new RadioGroup.OnCheckedChangeListener() {
            public void onCheckedChanged(RadioGroup group, int id) {
                int q = id - 0x5c100;
                if (q >= LOW && q <= HIGH) setQuality(q);
            }
        });
        box.addView(g);
        CheckBox c = new CheckBox(a);
        c.setText(ModLang.tr("Offer lower quality when the game runs slowly"));
        c.setTextColor(Color.WHITE);
        c.setChecked(ask);
        c.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener() {
            public void onCheckedChanged(CompoundButton b, boolean v) { setAsk(v); }
        });
        box.addView(c);
        return box;
    }

    // ================================================================== slow-frame prompt
    private static long lastFrame, winMs, slowMs;
    private static int testLog;
    private static int winN;
    private static final boolean[] shown = new boolean[3];   // UI thread writes, game thread reads: a late read only delays one offer
    private static volatile boolean prompting;
    private static int testMode = -1;   // -1 unknown, 0 phone (no switch files), 1 emulator test run (corsair_nodialog)
    private static boolean testForce;   // emulator: corsair_vfx_prompt = prompt after 3 s whatever the frame rate
    private static String testQ;        // emulator: corsair_vfx_q = 0/1/2 sets the quality
    private static String testBoom;     // emulator: corsair_vfx_boom = flagship<N>|ship<N> previews the nearest one's death effect

    private static void testBoom(boolean flagship) {
        PlayerShip ps = ObjectRegistry.INSTANCE.playerShip;
        if (ps == null) return;
        Element best = null;
        java.util.List<Element> els = ObjectRegistry.INSTANCE.game.currentLevel.elements;
        for (int i = 0; i < els.size(); i++) {
            Element e = els.get(i);
            if (e == null || e.removed || e.isPlayer || Mod.isDrone(e)) continue;
            boolean cap = ModCapitals.cap(e) != null;
            if (flagship != cap || !(cap || e instanceof fr.testudo.spacecorsair.business.ennemis.Ennemis)) continue;
            if (best == null || e.position.distance(ps.position) < best.position.distance(ps.position)) best = e;
        }
        if (best == null) { ModDev.ev("vfx", "boom preview: none"); return; }
        fr.testudo.spacecorsair.display.Drawable d = best.getDrawableObject();
        budgetDeath = Math.max(budgetDeath, 1);
        death(best, d == null ? 300 : ModLive.sizeOf(d));
        ModDev.ev("vfx", "boom preview " + (flagship ? "flagship" : "ship") + " fancy=" + fancy(best));
    }
    private static long testAt;
    private static int budgetCheap, budgetFancy, budgetRibbon, budgetMuzzle, budgetImpact, budgetDeath;

    /** ModLive.frameStart (game thread, once per game frame): frame-time watch and per-frame effect budgets. */
    static void frame() {
        budgetCheap = 160;
        budgetFancy = 48;
        budgetRibbon = 40;
        budgetMuzzle = 24;
        budgetImpact = 24;
        budgetDeath = 3;   // a mass kill would otherwise evict the shared 360-particle pool
        try {
            watch();
        } catch (Throwable t) {
            // the watch never breaks the frame
        }
    }

    private static void watch() {
        long t = SystemClock.uptimeMillis();
        long dt = lastFrame == 0 ? 0 : t - lastFrame;
        lastFrame = t;
        if (testMode < 0) testMode = ModDev.testFlag("corsair_nodialog") ? 1 : 0;
        if (testMode == 1 && t - testAt > 1000) {   // emulator switches, once a second (never on a phone)
            testAt = t;
            testForce = ModDev.testFlag("corsair_vfx_prompt");
            String bv = ModDev.testValue("corsair_vfx_boom");   // effect preview only: plays the death effect, kills nothing
            if (bv != null && !bv.equals(testBoom)) {
                testBoom = bv;
                testBoom(bv.trim().startsWith("flagship"));
            }
            String q = ModDev.testValue("corsair_vfx_q");
            if (q != null && !q.equals(testQ)) {
                testQ = q;
                try { setQuality(Integer.parseInt(q.trim())); } catch (Throwable x) { /* bad value */ }
            }
        }
        boolean mapMode = ObjectRegistry.INSTANCE.game.mapMode;
        if (dt <= 0 || dt > 1000 || mapMode || prompting) {   // first frame, a pause or loading gap, the map, the window itself
            winMs = 0; winN = 0;
            if (dt > 1000 || mapMode) slowMs = 0;
            return;
        }
        winMs += dt;
        winN++;
        if (winMs < 1000) return;
        float fps = winN * 1000.0f / winMs;
        if (testMode == 1 && ++testLog % 5 == 0) ModDev.ev("vfx", "fps " + Math.round(fps) + " slow " + slowMs + " q " + quality);
        if (fps < SLOW_FPS || testForce) slowMs += winMs;
        else slowMs = 0;
        winMs = 0;
        winN = 0;
        long need = testForce ? 3000 : SLOW_MS;
        if (slowMs > need) {
            slowMs = 0;
            maybePrompt(fps);
        }
    }

    private static void maybePrompt(float fps) {
        load();
        int q = quality;
        if (q <= LOW || shown[q] || !ask || (testMode == 1 && !testForce)) return;   // emulator runs are slow: no window unless forced
        boolean linked = ModLan.connected;
        if (linked && !MP_PROMPT) return;
        ModDev.ev("vfx", "slow frames " + Math.round(fps) + " fps: prompt at quality " + q + (linked ? " (linked, no pause)" : ""));
        prompt(q, !linked);
    }

    private static void prompt(final int from, final boolean pause) {
        final fr.testudo.spacecorsair.activity.Main a = ObjectRegistry.INSTANCE.mainActivity;
        if (a == null) return;
        prompting = true;   // game thread: no second prompt is queued while this one is pending
        try {
            a.runOnUiThread(new Runnable() {
            public void run() {
                boolean paused = false;
                try {
                    fr.testudo.spacecorsair.game.Game g = ObjectRegistry.INSTANCE.game;
                    // another window (story dialog, reward, menu) already paused or covers the game: try again later,
                    // so our resume never unpauses under someone else's window
                    if (a.isFinishing() || g.gameThread.paused || (a.currentDialog != null && a.currentDialog.isShowing())) {
                        done(false);
                        return;
                    }
                    shown[from] = true;
                    if (pause) {
                        ModArt.hold = true;   // the background art decoder waits too
                        g.gameThread.waitCommitPhysicEnded();
                        g.pause();
                        paused = g.gameThread.paused;   // Game.pause may decline (linked game menu)
                    }
                    final boolean resume = paused;
                    final java.util.concurrent.atomic.AtomicBoolean once = new java.util.concurrent.atomic.AtomicBoolean();
                    final int to = from - 1;
                    String msg = ModLang.tr("The game has been running slowly for more than 10 seconds.") + "\n\n"
                        + ModLang.tr("Lower the visual quality to ") + name(to) + "?\n\n"
                        + ModLang.tr("You can change it any time in Settings > Visual quality.");
                    if (!pause) msg += "\n\n" + ModLang.tr("Multiplayer: the game keeps running while this window is open.");
                    AlertDialog d = new AlertDialog.Builder(a).setTitle(ModLang.tr("Slow frames"))
                        .setMessage(msg).setCancelable(false)
                        .setPositiveButton(ModLang.tr("Lower to ") + name(to), new DialogInterface.OnClickListener() {
                            public void onClick(DialogInterface di, int w) { setQuality(to); }
                        })
                        .setNegativeButton(ModLang.tr("Keep ") + name(from), new DialogInterface.OnClickListener() {
                            public void onClick(DialogInterface di, int w) { }
                        })
                        .setNeutralButton(ModLang.tr("Don't ask again"), new DialogInterface.OnClickListener() {
                            public void onClick(DialogInterface di, int w) { setAsk(false); }
                        }).create();
                    // every way the window closes (buttons, activity torn down) resumes exactly once
                    d.setOnDismissListener(new DialogInterface.OnDismissListener() {
                        public void onDismiss(DialogInterface di) { if (once.compareAndSet(false, true)) done(resume); }
                    });
                    d.show();
                } catch (Throwable t) {
                    done(paused);
                }
            }
            });
        } catch (Throwable t) {
            done(false);
        }
    }

    private static void done(boolean resume) {
        ModArt.hold = false;
        lastFrame = 0;
        slowMs = 0;
        prompting = false;
        if (resume) {
            try { ObjectRegistry.resume(); } catch (Throwable t) { /* ignore */ }
        }
    }

    // ================================================================== fancy tier
    private static final IdentityHashMap<Element, Float> fancyOf = new IdentityHashMap<Element, Float>();
    private static long fancyAt;
    private static Element lastE;
    private static float lastK;

    /** 0 = cheap tier only; FAINT = stage 4 Battleship/Titan/Capital; 1 = stage 5 (NPC titans and capitals: 1). */
    static float fancy(Element e) {
        if (e == null) return 0;
        if (e == lastE && SystemClock.uptimeMillis() - fancyAt <= 1000) return lastK;
        long now = SystemClock.uptimeMillis();
        if (now - fancyAt > 1000) { fancyOf.clear(); fancyAt = now; lastE = null; }
        Float k = fancyOf.get(e);
        if (k == null) {
            float v = 0;
            try { v = fancyNow(e); } catch (Throwable t) { v = 0; }
            k = v;
            fancyOf.put(e, k);
        }
        lastE = e;
        lastK = k;
        return k;
    }

    private static float fancyNow(Element e) {
        if (e instanceof PlayerShip) {
            PlayerShip ps = (PlayerShip) e;
            if (ps.shipSpec == null) return 0;
            ModShips.Hull h = ModShips.hullFor(ps.shipSpec);
            int c = h != null ? h.cls : ModShips.originalClass(ps.shipSpec);
            if (c != ModShips.BATTLESHIP && c != ModShips.TITAN && c != ModShips.CAPITAL) return 0;
            if (e != ObjectRegistry.INSTANCE.playerShip) return 0;   // a linked player's stand-in: its stage is not known here
            return byStage(ModV35.stage(ModV35.level(ModV35.currentShip())));
        }
        if (Mod.isDrone(e)) return 0;
        if (ModCapitals.cap(e) != null || ModTitan.isTitanClass(e)) return 1;
        if (!(e instanceof fr.testudo.spacecorsair.business.ennemis.Ennemis)) return 0;
        if (ModWreck.sizeClass(e) < 3) return 0;   // battleship-size and bigger only
        return byStage(ModV35.enemyStage(e));
    }

    private static float byStage(int s) {
        return s >= 5 ? 1.0f : s == 4 ? FAINT : 0;
    }

    /** Fancy strength after the quality option: High full, Medium half, Low none. */
    private static float fancyQ(Element e) {
        float k = fancy(e);
        if (k <= 0) return 0;
        return quality == HIGH ? k : quality == MEDIUM ? k * 0.5f : 0;
    }

    // ================================================================== shots
    /** Gemini art (fx_<key>_shot / fx_<key>_impact, additive on black): faction shooters use their faction's, the player and
     *  stock shooters the one matching their weapon family. */
    private static final String[] FAMILY_KEY = {"spartan", "helion", "ironclad", "kretari", "varn", "warden_arc"};
    private static final java.util.HashMap<String, Boolean> hasArt = new java.util.HashMap<String, Boolean>();

    /** The art name once it is on the GPU, else null (a background decode is requested). */
    private static String art(String key, String kind) {
        if (key == null) return null;
        String n = "fx_" + key + kind;
        Boolean h = hasArt.get(n);
        if (h == null) { h = ModArt.lazyTex(n) != null; hasArt.put(n, h); }
        return h && ModArt.ready(n) != null ? n : null;
    }

    /** Art key of a shot: the shooter's faction (flagships included), else its weapon family. */
    private static String keyOf(Element sender, int fam) {
        int f = -1;
        if (sender != null && !sender.isPlayer) {
            ModCapitals.Cap cap = ModCapitals.cap(sender);
            if (cap != null && cap.f != null) f = indexOf(cap.f.key);
            else {
                int[] w = ModEnemyGuns.shooter(sender);
                f = w != null && w.length > 0 ? w[0] : -1;
            }
        }
        if (f >= 0 && f < ModCapitals.FACTIONS.length) {
            String key = ModCapitals.FACTIONS[f].key;
            return "warden".equals(key) && fam == ModWeapons.ARC ? "warden_arc" : key;
        }
        return fam >= 0 && fam < FAMILY_KEY.length ? FAMILY_KEY[fam] : null;
    }

    private static boolean near(float x, float y, float pad) {
        PlayerShip ps = ObjectRegistry.INSTANCE.playerShip;
        if (ps == null) return true;
        float r = ModView.radius() / ModView.INSIDE + pad;
        return Math.abs(ps.position.x - x) < r * 1.8f && Math.abs(ps.position.y - y) < r * 1.8f;
    }

    private static float col(float c) {
        return c <= 0.05f ? 0.05f : Math.min(1, c);
    }

    /** ModTitan.bullet, before the shot's own sprite is chosen: extra layers queued under it. */
    static void shot(EnergyBullet e) {
        if (quality() == LOW || e == null || e.removed || ObjectRegistry.INSTANCE.game.mapMode) return;
        try {
            if (budgetCheap <= 0) return;
            budgetCheap--;
            float k = fancyQ(e.sender);
            float s = fancy(e.sender) > 0 ? 70 : 40;   // the shot's own sprite is picked after this (faction art, family bolt, stock)
            float r = col(e.r), g = col(e.g), b = col(e.b);
            float x = e.position.x, y = e.position.y;
            boolean high = quality == HIGH;
            ModFx.spr("fx_glow", x, y, s * 2.4f, s * 2.4f, 0, r, g, b, high ? 0.30f : 0.20f, true);
            float vx = e.speed.x, vy = e.speed.y;
            float v = (float) Math.sqrt(vx * vx + vy * vy);
            if (high && v > 0.01f) {
                float len = s * 2.6f;
                ModFx.strip("fx_streak", x, y, x - vx / v * len, y - vy / v * len, s * 0.6f, r, g, b, 0.40f, true);
            }
            if (k <= 0 || budgetFancy <= 0) return;
            budgetFancy--;
            ModFx.spr("fx_glow", x, y, s * 4.4f, s * 4.4f, 0, r, g, b, 0.32f * k, true);
            ModFx.spr("fx_core", x, y, s * 1.1f, s * 1.1f, 0, 1, 1, 1, 0.65f * k, true);
            String sa = art(keyOf(e.sender, ModWeapons.familyOf(e)), "_shot");
            if (sa != null) ModFx.spr(sa, x, y, s * 2.2f, s * 2.2f, e.spin, 1, 1, 1, 0.9f * k, true);
            if (high && budgetRibbon > 0) {
                budgetRibbon--;
                ModFx.part("fx_glow", x, y, 0, 0, 260, s * 1.3f, s * 0.3f, r, g, b, 0.5f * k, true, false);
            }
        } catch (Throwable t) {
            // stock shot only
        }
    }

    /** ModPolice.factionGuns (Level.commitChanges): muzzle flash for every new shot near the screen. */
    static void spawned(List<?> toAdd) {
        if (toAdd == null || toAdd.isEmpty() || quality() == LOW) return;
        try {
            if (ObjectRegistry.INSTANCE.game.mapMode) return;
            boolean high = quality == HIGH;
            for (int i = 0; i < toAdd.size() && budgetMuzzle > 0; i++) {
                Object o = toAdd.get(i);
                if (!(o instanceof EnergyBullet)) continue;
                EnergyBullet e = (EnergyBullet) o;
                float k = fancyQ(e.sender);
                if (!high && k <= 0) continue;   // Medium: big shooters only
                float x = e.position.x, y = e.position.y;
                if (!near(x, y, 200)) continue;
                budgetMuzzle--;
                float r = col(e.r), g = col(e.g), b = col(e.b);
                ModFx.part("fx_glow", x, y, 0, 0, 110, 40, 90, r, g, b, 0.7f, true, true);
                if (k > 0) {
                    ModFx.part("fx_core", x, y, 0, 0, 150, 50, 140, 1, 1, 1, 0.8f * k, true, true);
                    ModFx.part("fx_ring", x, y, 0, 0, 220, 30, 200, r, g, b, 0.55f * k, true, true);
                }
            }
        } catch (Throwable t) {
            // no flash
        }
    }

    /** ModWeapons.onImpact: sparks and flash for every family shot, impact art (bigger for fancy shooters). */
    static void impact(EnergyBullet b, Element target, int fam) {
        if (quality() == LOW || b == null || budgetImpact <= 0) return;
        try {
            if (ObjectRegistry.INSTANCE.game.mapMode) return;
            float x = b.position.x, y = b.position.y;
            if (!near(x, y, 200)) return;
            budgetImpact--;
            boolean high = quality == HIGH;
            float r = col(b.r), g = col(b.g), bl = col(b.b);
            int n = high ? 3 : 2;
            for (int i = 0; i < n; i++) {
                float a = (float) (Math.random() * Math.PI * 2);
                float sp = ModFx.rnd(250, 650);
                ModFx.part("fx_spark", x, y, (float) Math.cos(a) * sp, (float) Math.sin(a) * sp, 240, 14, 4, r, g, bl, 0.9f, true, true);
                ModFx.lastStretch(0.05f);
                ModFx.lastDrag(3);
            }
            ModFx.part("fx_glow", x, y, 0, 0, 120, 30, 90, r, g, bl, 0.7f, true, true);
            float k = fancyQ(b.sender);
            String art = high || k > 0 ? art(keyOf(b.sender, fam), "_impact") : null;
            if (art != null) {
                float sz = k > 0 ? 150 + 90 * k : 70;
                ModFx.part(art, x, y, 0, 0, k > 0 ? 300 : 200, sz * 0.4f, sz, 1, 1, 1, k > 0 ? 0.9f : 0.7f, true, true);
                ModFx.lastSpin((float) (Math.random() * 360), 0);
            } else if (k > 0) {
                ModFx.part("fx_ring", x, y, 0, 0, 260, 20, 170 * k, r, g, bl, 0.6f * k, true, true);
                ModFx.part("fx_core", x, y, 0, 0, 160, 30, 110, 1, 1, 1, 0.8f * k, true, true);
            }
        } catch (Throwable t) {
            // stock impact only
        }
    }

    private static int indexOf(String key) {
        for (int i = 0; i < ModCapitals.FACTIONS.length; i++) if (ModCapitals.FACTIONS[i].key.equals(key)) return i;
        return -1;
    }

    // ================================================================== explosions
    private static final int DN = 32;
    private static final long[] dAt = new long[DN];
    private static final float[] dX = new float[DN], dY = new float[DN], dS = new float[DN];
    private static final boolean[] dOn = new boolean[DN];
    private static int dNext;

    /** ModWreck.onDestroyed: every ship death (aliens keep their spore dissolve; drones none). size = hull sprite size. */
    static void death(Element e, float size) {
        if (quality() == LOW || e == null || size <= 0 || budgetDeath <= 0) return;
        try {
            float x = e.position.x, y = e.position.y;
            if (!near(x, y, size)) return;
            budgetDeath--;
            boolean high = quality == HIGH;
            size = Math.min(size, 2400);
            ModFx.part("fx_glow", x, y, 0, 0, 220, size * 0.8f, size * 2.2f, 1.0f, 0.85f, 0.6f, 0.9f, true, true);
            ModFx.part("fx_ring", x, y, 0, 0, 460, size * 0.3f, size * 2.2f, 1.0f, 0.8f, 0.5f, 0.55f, true, true);
            int n = high ? 8 : 4;
            for (int i = 0; i < n; i++) {
                float a = (float) (Math.random() * Math.PI * 2);
                float sp = ModFx.rnd(400, 900) * Math.max(1, size / 200);
                ModFx.part("fx_spark", x, y, (float) Math.cos(a) * sp, (float) Math.sin(a) * sp, 420, 22, 6, 1.0f, 0.8f, 0.45f, 1.0f, true, true);
                ModFx.lastStretch(0.04f);
                ModFx.lastDrag(2.5f);
            }
            if (high) ModFx.boom(x, y, size * 1.5f, 750, 1.0f, 0.8f, 0.6f);
            float k = fancyQ(e);
            if (k <= 0) return;
            ModFx.part("fx_shock", x, y, 0, 0, 700, size * 0.5f, size * (2.5f + 1.5f * k), 1.0f, 0.85f, 0.65f, 0.6f * k, true, true);
            int sec = high ? Math.round(3 + 3 * k) : 2;
            for (int i = 0; i < sec; i++) {
                float a = (float) (Math.random() * Math.PI * 2), d = ModFx.rnd(0.1f, 0.45f) * size;
                later(x + (float) Math.cos(a) * d, y + (float) Math.sin(a) * d, size * ModFx.rnd(0.45f, 0.85f), 120 + i * (1000 / Math.max(1, sec)));
            }
            int debris = Math.round((high ? 14 : 6) * k);
            for (int i = 0; i < debris; i++) {
                float a = (float) (Math.random() * Math.PI * 2);
                float sp = ModFx.rnd(300, 1100);
                ModFx.part("fx_fire", x, y, (float) Math.cos(a) * sp, (float) Math.sin(a) * sp, 900, size * 0.08f, size * 0.02f, 1.0f, 0.6f, 0.25f, 0.9f, true, true);
                ModFx.lastDrag(1.5f);
            }
            boolean hero = ModCapitals.cap(e) != null || ModTitan.isTitanClass(e) || (e instanceof PlayerShip && fancy(e) > 0 && size > 500);
            if (hero) {
                if (ModArt.lazyTex("fx_boom_hero_sheet") != null && ModArt.ready("fx_boom_hero_sheet") != null)
                    ModLive.fx("fx_boom_hero_sheet", 8, 64, x, y, size * 2.6f, 1600, 1.0f, 0.9f, 0.8f, true);
                else ModFx.boom(x, y, size * 2.2f, 1300, 1.0f, 0.8f, 0.55f);
            }
            PlayerShip ps = ObjectRegistry.INSTANCE.playerShip;
            if (ps != null && ps.position.distance(e.position) < 2500) ModQol.addShake(0.25f + 0.35f * k);
        } catch (Throwable t) {
            // stock death only
        }
    }

    private static void later(float x, float y, float size, long delay) {
        int i = dNext;
        dNext = (dNext + 1) % DN;
        dAt[i] = ModLive.nowMs + delay;
        dX[i] = x; dY[i] = y; dS[i] = size;
        dOn[i] = true;
    }

    /** ModLive.frame: delayed secondary blasts. */
    static void tick(long now) {
        for (int i = 0; i < DN; i++) {
            if (!dOn[i] || now < dAt[i]) continue;
            dOn[i] = false;
            if (now - dAt[i] > 2000) continue;   // stale (paused, map)
            ModLive.fx("fx_explosion_big_sheet", 8, 64, dX[i], dY[i], dS[i], 900, 1.0f, 0.75f, 0.45f, true);
            ModFx.part("fx_glow", dX[i], dY[i], 0, 0, 180, dS[i] * 0.4f, dS[i] * 1.2f, 1.0f, 0.8f, 0.5f, 0.7f, true, true);
        }
    }

    /** Sector change / fresh start: drop pending blasts. */
    static void clear() {
        for (int i = 0; i < DN; i++) dOn[i] = false;
    }
}
