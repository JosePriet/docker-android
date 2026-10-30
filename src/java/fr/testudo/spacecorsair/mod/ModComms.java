package fr.testudo.spacecorsair.mod;

import android.app.Activity;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Color;
import android.graphics.Typeface;
import android.graphics.drawable.GradientDrawable;
import android.os.Handler;
import android.os.Looper;
import android.text.Html;
import android.util.TypedValue;
import android.view.Gravity;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import fr.testudo.spacecorsair.business.player.PlayerShip;
import fr.testudo.spacecorsair.business.world.civil.GuardianCivilShip;
import fr.testudo.spacecorsair.engine.ObjectRegistry;
import fr.testudo.spacecorsair.game.levels.LevelId;
import java.io.InputStream;
import java.util.HashMap;
import java.util.Map;

/**
 * v21 faction comms over the game view: a commander panel (portrait, name, message) for mission briefings and results,
 * and the HAIL button that opens the mission screen while the player is in a faction HQ (the commander rides the flagship).
 */
public final class ModComms {
    private ModComms() {}

    private static Activity act;
    private static LinearLayout panel;
    private static ImageView face;
    private static TextView who, msg;
    private static Button hail;
    private static Handler ui;
    private static final Map<String, Bitmap> portraits = new HashMap<String, Bitmap>();
    private static long hideAt;
    private static volatile int hailFaction = -1;   // faction whose HQ the player is in (game thread writes, UI reads)
    private static volatile long lastTick;
    private static volatile boolean hailOpen;   // the mission screen was opened by HAIL (in flight, not docked)
    private static Button open;                     // v37 Q12: OPEN MISSIONS under the commander's greeting
    private static volatile boolean hailHas = true; // v37 Q16: the faction has something to offer
    private static long hasCheck;
    /** v37 Q15: HAIL shows only this close to the faction's flagship. */
    static final float HAIL_RANGE = 6000f;

    /** Hook: start of MissionUtils.isDockedToMission (the mission screen shows its list only when docked at a command center). */
    public static boolean hailing() {
        return hailOpen;
    }

    private static Bitmap portrait(String key) {
        // shown at 72 dp: decoded at no less than twice that (512 px art -> 256 px on most phones)
        Activity a = act;
        float d = a == null ? 3.0f : a.getResources().getDisplayMetrics().density;
        return asset(a, "portrait_" + key, (int) (144 * d));
    }

    static Bitmap asset(android.content.Context c, String name) {
        return asset(c, name, 0);
    }

    /** Cached UI bitmap; maxPx > 0 subsamples (power of two) while keeping the longer side >= maxPx. */
    static synchronized Bitmap asset(android.content.Context c, String name, int maxPx) {
        Bitmap b = portraits.get(name);
        if (b == null && c != null) {
            b = maxPx > 0 ? ModArt.decode(c, name, maxPx) : null;
            if (b == null) {
                InputStream in = null;
                try {
                    in = ModArt.open(c, name);
                    b = BitmapFactory.decodeStream(in);
                } catch (Throwable e) {
                    b = null;   // missing asset or out of memory: no picture, no crash
                } finally {
                    try { if (in != null) in.close(); } catch (Exception e) { /* ignore */ }
                }
            }
            if (b != null) portraits.put(name, b);
        }
        return b;
    }

    /** Any thread: shows the commander of {@code key} with a message for {@code ms}. */
    public static void show(final String key, final String text, final int ms) {
        show(key, text, ms, false);
    }

    /** v37 Q13: a mission briefing stays up until the player taps it. */
    static void brief(String key, String text) {
        show(key, text, -1, false);
    }

    /** {@code ms} < 0 keeps the panel until it is tapped; {@code withOpen} adds the OPEN MISSIONS button (HAIL, Q12). */
    private static void show(final String key, final String text, final int ms, final boolean withOpen) {
        final Handler h = ui;
        if (h == null) return;
        h.post(new Runnable() {
            public void run() {
                try {
                    if (panel == null) return;
                    int fi = ModFaction.faction(key);
                    int ci = ModFaction.commander(key);
                    ModCapitals.Faction f = ModCapitals.FACTIONS[fi];
                    int col = Color.rgb((int) (f.r * 255), (int) (f.g * 255), (int) (f.b * 255));
                    float d = act.getResources().getDisplayMetrics().density;
                    GradientDrawable g = new GradientDrawable();
                    g.setCornerRadius(10 * d);
                    g.setColor(0xE00A0E1A);
                    g.setStroke((int) (2 * d), col);
                    panel.setBackgroundDrawable(g);
                    Bitmap b = portrait(key);
                    face.setImageBitmap(b);
                    face.setVisibility(b != null ? View.VISIBLE : View.GONE);
                    who.setText(ModFactionData.COMMANDER[ci] + "  ·  " + f.name);
                    who.setTextColor(col);
                    msg.setText(Html.fromHtml(text));
                    if (open != null) open.setVisibility(withOpen ? View.VISIBLE : View.GONE);
                    panel.setVisibility(View.VISIBLE);
                    hideAt = ms < 0 ? Long.MAX_VALUE : System.currentTimeMillis() + ms;
                } catch (Throwable t) {
                    // comms are cosmetic
                }
            }
        });
    }

    /** Game thread, every frame (ModCaps.tick): which HQ the player is in, if its flagship is not hostile. */
    static void tick(PlayerShip ps) {
        lastTick = System.currentTimeMillis();
        int fi = -1;
        try {
            LevelId id = ObjectRegistry.INSTANCE.game.currentLevel.id;
            for (int i = 0; i < ModCapitals.FACTIONS.length; i++) {
                if (ModCapitals.FACTIONS[i].hq == id) { fi = i; break; }
            }
            if (fi >= 0) {
                // v37 Q15: only within range of the faction's flagship (and not while it is hostile)
                boolean near = false;
                for (Map.Entry<GuardianCivilShip, ModCapitals.Cap> e : ModCapitals.caps.entrySet()) {
                    if (e.getValue().f != ModCapitals.FACTIONS[fi]) continue;
                    GuardianCivilShip g = e.getKey();
                    if (g.chasseTarget != null) { near = false; break; }
                    if (!g.removed && ps != null && g.position.distance(ps.position) < HAIL_RANGE) near = true;
                }
                if (!near) fi = -1;
            }
            if (fi >= 0 && ModRep.rank(ModCapitals.FACTIONS[fi].key) <= ModRep.HOSTILE) fi = -1;
            if (fi < 0 && ModFaction.testHail) fi = 0;
            if (ps == null || ps.isDocked || ps.removed || ObjectRegistry.INSTANCE.game.mapMode) fi = -1;
            long now = System.currentTimeMillis();
            if (fi >= 0 && now - hasCheck > 1000) {
                hasCheck = now;
                hailHas = hasMissions(fi);
            }
        } catch (Throwable t) {
            fi = -1;
        }
        hailFaction = fi;
    }

    /** v37 Q16: anything to take or hand in at this faction's HQ (its mission list, or its mission being flown). */
    private static boolean hasMissions(int fi) {
        try {
            LevelId hq = ModCapitals.FACTIONS[fi].hq;
            java.util.List<fr.testudo.spacecorsair.business.mission.Mission> l = ObjectRegistry.INSTANCE.missionRepository.getAvaillableMission(hq);
            return l != null && !l.isEmpty();
        } catch (Throwable t) {
            return true;   // when unsure, do not say "no missions"
        }
    }

    /** From ModScroll.attach (CommonActivity.onResume) for the game activity. */
    public static void attachUi(final Activity a) {
        try {
            if (!a.getClass().getName().endsWith(".Main")) return;
            hailOpen = false;                  // back in the game: the HAIL mission screen has closed
            if (panel != null && act == a) return;
            act = a;
            ui = new Handler(Looper.getMainLooper());
            final float d = a.getResources().getDisplayMetrics().density;

            final LinearLayout p = new LinearLayout(a);
            p.setOrientation(LinearLayout.HORIZONTAL);
            p.setGravity(Gravity.CENTER_VERTICAL);
            p.setPadding((int) (8 * d), (int) (8 * d), (int) (12 * d), (int) (8 * d));
            p.setVisibility(View.GONE);
            ImageView iv = new ImageView(a);
            iv.setScaleType(ImageView.ScaleType.CENTER_CROP);
            p.addView(iv, new LinearLayout.LayoutParams((int) (72 * d), (int) (72 * d)));
            LinearLayout col = new LinearLayout(a);
            col.setOrientation(LinearLayout.VERTICAL);
            col.setPadding((int) (10 * d), 0, 0, 0);
            TextView t1 = new TextView(a);
            t1.setTypeface(Typeface.DEFAULT_BOLD);
            t1.setTextSize(TypedValue.COMPLEX_UNIT_SP, 13.0f);
            TextView t2 = new TextView(a);
            t2.setTextSize(TypedValue.COMPLEX_UNIT_SP, 12.0f);
            t2.setTextColor(0xFFDDE4EE);
            t2.setMaxLines(6);
            col.addView(t1);
            col.addView(t2);
            final Button ob = new Button(a);
            ob.setAllCaps(false);
            ob.setTextSize(TypedValue.COMPLEX_UNIT_SP, 12.0f);
            ob.setTextColor(Color.WHITE);
            ob.setText(ModLang.tr("OPEN MISSIONS"));
            ob.setPadding((int) (12 * d), (int) (4 * d), (int) (12 * d), (int) (4 * d));
            ob.setMinHeight(0);
            ob.setMinimumHeight(0);
            GradientDrawable obg = new GradientDrawable();
            obg.setCornerRadius(6 * d);
            obg.setColor(0xC0203040);
            obg.setStroke((int) (1 * d), 0xFFDDE4EE);
            ob.setBackgroundDrawable(obg);
            ob.setVisibility(View.GONE);
            ob.setOnClickListener(new View.OnClickListener() {
                public void onClick(View v) {
                    try {
                        ModSound.play("comms_click", 0.8f, 1.0f, 200);
                        panel.setVisibility(View.GONE);
                        hailOpen = true;
                        ObjectRegistry.INSTANCE.game.gameThread.showMissionMenu();
                    } catch (Throwable t) {
                        // no mission screen this time
                    }
                }
            });
            LinearLayout.LayoutParams olp = new LinearLayout.LayoutParams(ViewGroup.LayoutParams.WRAP_CONTENT, ViewGroup.LayoutParams.WRAP_CONTENT);
            olp.topMargin = (int) (6 * d);
            col.addView(ob, olp);
            p.addView(col, new LinearLayout.LayoutParams(0, ViewGroup.LayoutParams.WRAP_CONTENT, 1));
            p.setOnClickListener(new View.OnClickListener() {
                public void onClick(View v) { v.setVisibility(View.GONE); }
            });
            int w = (int) Math.min(a.getResources().getDisplayMetrics().widthPixels * 0.62f, 560 * d);
            FrameLayout.LayoutParams lp = new FrameLayout.LayoutParams(w, ViewGroup.LayoutParams.WRAP_CONTENT, Gravity.TOP | Gravity.CENTER_HORIZONTAL);
            lp.topMargin = (int) (58 * d);
            a.addContentView(p, lp);
            panel = p;
            open = ob;
            face = iv;
            who = t1;
            msg = t2;

            final Button b = new Button(a);
            b.setAllCaps(false);
            b.setTextSize(TypedValue.COMPLEX_UNIT_SP, 12.0f);
            b.setTextColor(Color.WHITE);
            b.setPadding((int) (12 * d), (int) (4 * d), (int) (12 * d), (int) (4 * d));
            b.setMinWidth(0);
            b.setMinimumWidth(0);
            b.setMinHeight(0);
            b.setMinimumHeight(0);
            b.setVisibility(View.GONE);
            b.setOnClickListener(new View.OnClickListener() {
                public void onClick(View v) {
                    try {
                        int fi = hailFaction;
                        ModSound.play("comms_click", 0.8f, 1.0f, 200);
                        if (fi >= 0) {
                            // v37 Q12: the commander speaks first; the mission screen opens from OPEN MISSIONS
                            String k = ModCapitals.FACTIONS[fi].key;
                            String greet = ModRep.rank(k) == ModRep.UNFRIENDLY ? ModLang.tr(ModRepData.RANK_DOWN[ModRep.index(k)][0]) : ModLang.tr(ModFactionData.COMMANDER_LINE[ModFaction.commander(k)]);
                            show(k, "<b>" + ModRep.title(k) + "</b> \u00b7 " + greet + (hailHas ? "" : "<br><i>" + ModLang.tr("No missions for you right now.") + "</i>"), -1, true);
                        }
                    } catch (Throwable t) {
                        // no mission screen this time
                    }
                }
            });
            FrameLayout.LayoutParams lb = new FrameLayout.LayoutParams(ViewGroup.LayoutParams.WRAP_CONTENT, ViewGroup.LayoutParams.WRAP_CONTENT,
                Gravity.BOTTOM | Gravity.CENTER_HORIZONTAL);
            lb.bottomMargin = (int) (112 * d);
            a.addContentView(b, lb);
            hail = b;

            ui.post(new Runnable() {
                int shown = -2;
                boolean shownHas = true;
                long last = System.currentTimeMillis();

                public void run() {
                    if (a.isFinishing() || act != a) {
                        if (act == a) {
                            // the game activity is gone: drop the static references to it and its views
                            act = null;
                            panel = null;
                            face = null;
                            who = null;
                            msg = null;
                            hail = null;
                        }
                        return;
                    }
                    try {
                        long now = System.currentTimeMillis();
                        boolean game = now - lastTick < 700 && ModTitan.inGame();
                        // v37 Q13: the panel no longer vanishes while the game is paused or covered (mission screen,
                        // loading); a timed message's clock just stops until play resumes
                        if (!game && hideAt != Long.MAX_VALUE) hideAt += now - last;
                        last = now;
                        if (panel.getVisibility() == View.VISIBLE && game && now > hideAt) panel.setVisibility(View.GONE);
                        int fi = game ? hailFaction : -1;
                        if (fi < 0 && open != null && open.getVisibility() == View.VISIBLE && panel.getVisibility() == View.VISIBLE && game) {
                            panel.setVisibility(View.GONE);   // flew out of hail range: the greeting closes with the button
                        }
                        boolean has = hailHas;
                        if (fi != shown || (fi >= 0 && has != shownHas)) {
                            boolean fresh = fi != shown;
                            shown = fi;
                            shownHas = has;
                            if (fi < 0) {
                                b.setVisibility(View.GONE);
                            } else {
                                ModCapitals.Faction f = ModCapitals.FACTIONS[fi];
                                int c = Color.rgb((int) (f.r * 255), (int) (f.g * 255), (int) (f.b * 255));
                                GradientDrawable g = new GradientDrawable();
                                g.setCornerRadius(8 * d);
                                g.setColor(0xC0101820);
                                g.setStroke((int) (2 * d), c);
                                b.setBackgroundDrawable(g);
                                // v37 Q14/Q16: a subtitle says what the button is for, or that there is nothing on offer
                                b.setText(Html.fromHtml("HAIL " + f.ship.toUpperCase() + "<br><small>" + (has ? ModLang.tr("Missions") : ModLang.tr("no missions")) + "</small>"));
                                Bitmap em = asset(a, "emblem_" + f.key);
                                if (em != null) {
                                    android.graphics.drawable.BitmapDrawable bd = new android.graphics.drawable.BitmapDrawable(a.getResources(), em);
                                    bd.setBounds(0, 0, (int) (22 * d), (int) (22 * d));
                                    b.setCompoundDrawables(bd, null, null, null);
                                    b.setCompoundDrawablePadding((int) (6 * d));
                                }
                                if (fresh) ModSound.play("comms_click", 0.6f, 1.0f, 300);
                                b.setVisibility(View.VISIBLE);
                                if (fresh) hailHelp(a);
                            }
                        }
                    } catch (Throwable t) {
                        // UI is cosmetic
                    }
                    ui.postDelayed(this, 250);
                }
            });
        } catch (Throwable t) {
            // no comms: missions still work through the command centers
        }
    }

    /** v37 Q14: the first time HAIL ever appears, a one-time explanation (placeholder text until GPT's EN/ES lands). */
    private static void hailHelp(Activity a) {
        try {
            android.content.SharedPreferences p = ModQol.prefs();
            if (p == null || p.getBoolean("v37_hail_help", false) || ModDev.noDialog(null)) return;
            p.edit().putBoolean("v37_hail_help", true).apply();
            new android.app.AlertDialog.Builder(a).setTitle(ModLang.tr("Faction flagship"))
                .setMessage(ModLang.tr("You are near a faction flagship. Tap HAIL to talk to its commander: story missions, contracts and hand-ins are offered there. The line under the button says whether there is anything for you."))
                .setPositiveButton("OK", null).show();
        } catch (Throwable t) {
            // help is a convenience
        }
    }

    // ------------------------------------------------------------------ standings (toolbar "Standings")
    public static void showStandings(Activity a) {
        try {
            float d = a.getResources().getDisplayMetrics().density;
            LinearLayout list = new LinearLayout(a);
            list.setOrientation(LinearLayout.VERTICAL);
            list.setPadding((int) (12 * d), (int) (8 * d), (int) (12 * d), (int) (8 * d));
            for (int i = 0; i < ModRepData.KEYS.length; i++) {
                String k = ModRepData.KEYS[i];
                ModCapitals.Faction f = ModCapitals.FACTIONS[ModFaction.faction(k)];
                int col = Color.rgb((int) (f.r * 255), (int) (f.g * 255), (int) (f.b * 255));
                float v = ModRep.standing(k);
                int r = ModRep.rankOf(v);
                LinearLayout row = new LinearLayout(a);
                row.setOrientation(LinearLayout.HORIZONTAL);
                row.setPadding(0, (int) (6 * d), 0, (int) (6 * d));
                ImageView em = new ImageView(a);
                em.setImageBitmap(asset(a, "emblem_" + k));
                row.addView(em, new LinearLayout.LayoutParams((int) (44 * d), (int) (44 * d)));
                LinearLayout c = new LinearLayout(a);
                c.setOrientation(LinearLayout.VERTICAL);
                c.setPadding((int) (10 * d), 0, 0, 0);
                TextView name = new TextView(a);
                name.setTypeface(Typeface.DEFAULT_BOLD);
                name.setTextColor(col);
                name.setTextSize(TypedValue.COMPLEX_UNIT_SP, 14);
                name.setText(f.name + "  \u00b7  " + ModLang.tr(ModRepData.RANKS[i][r]) + "  (" + ModLang.tr(ModRep.RANK_NAMES[r]) + ", " + Math.round(v) + ")");
                c.addView(name);
                // bar: -100..+100, centre line at 0
                FrameLayout bar = new FrameLayout(a);
                GradientDrawable bg = new GradientDrawable();
                bg.setColor(0xFF1A2230);
                bg.setCornerRadius(3 * d);
                bar.setBackgroundDrawable(bg);
                View fill = new View(a);
                fill.setBackgroundColor(v >= 0 ? col : 0xFFC0392B);
                int full = (int) (220 * d);
                int w = (int) (Math.abs(v) / 100f * full / 2);
                FrameLayout.LayoutParams fl = new FrameLayout.LayoutParams(Math.max(1, w), (int) (8 * d));
                fl.leftMargin = v >= 0 ? full / 2 : full / 2 - w;
                bar.addView(fill, fl);
                View zero = new View(a);
                zero.setBackgroundColor(0xFFFFFFFF);
                FrameLayout.LayoutParams zl = new FrameLayout.LayoutParams((int) (1 * d), (int) (8 * d));
                zl.leftMargin = full / 2;
                bar.addView(zero, zl);
                c.addView(bar, new LinearLayout.LayoutParams(full, (int) (8 * d)));
                TextView perks = new TextView(a);
                perks.setTextColor(0xFFC8D2DE);
                perks.setTextSize(TypedValue.COMPLEX_UNIT_SP, 11);
                StringBuilder sb = new StringBuilder();
                if (r == ModRep.HOSTILE) sb.append(ModLang.tr("Flagship and patrols attack on sight. The commander will not answer."));
                else if (r == ModRep.UNFRIENDLY) sb.append(ModLang.tr("Only amends contracts are offered."));
                else {
                    sb.append(ModLang.tr("Payout +")).append(Math.round(ModRep.PAYOUT[r] * 100)).append(ModLang.tr("%  \u00b7  flagship forgives ")).append(Math.round(ModRep.tolerance(k))).append(ModLang.tr("% friendly fire"));
                    if (r >= ModRep.TRUSTED) sb.append(ModLang.tr("  \u00b7  flagship fire support"));
                }
                sb.append("\nTrusted: ").append(ModRepData.SECRET_WEAPON[i][0]).append(r >= ModRep.TRUSTED ? " (unlocked)" : "");
                sb.append("   Honored: ").append(ModRepData.SECRET_SHIP[i][0]).append(r >= ModRep.HONORED ? ModLang.tr(" (for sale)") : r >= ModRep.TRUSTED ? ModLang.tr(" (listed, locked)") : "");
                perks.setText(sb.toString());
                c.addView(perks);
                row.addView(c, new LinearLayout.LayoutParams(0, ViewGroup.LayoutParams.WRAP_CONTENT, 1));
                list.addView(row);
            }
            TextView foot = new TextView(a);
            foot.setTextColor(0xFF8A96A6);
            foot.setTextSize(TypedValue.COMPLEX_UNIT_SP, 11);
            foot.setText(ModLang.tr("Gain standing with story missions (+15, finale +20), contracts (+6) and by defending a faction's home sector. "
                + "Allies share half of every change, enemies the opposite. HAIL a faction's flagship in its home sector for missions."));
            list.addView(foot);
            android.widget.ScrollView sv = new android.widget.ScrollView(a);
            sv.addView(list);
            new android.app.AlertDialog.Builder(a).setTitle(ModLang.tr("Faction standings")).setView(sv).setPositiveButton("OK", null).show();
        } catch (Throwable t) {
            // ignore
        }
    }
}
