package fr.testudo.spacecorsair.mod;

import android.app.Activity;
import android.app.AlertDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.SharedPreferences;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Color;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.GradientDrawable;
import android.os.Handler;
import android.os.Looper;
import android.text.Editable;
import android.text.InputFilter;
import android.text.TextWatcher;
import android.util.TypedValue;
import android.view.Gravity;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.ArrayAdapter;
import android.widget.Button;
import android.widget.EditText;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ListView;
import android.widget.ScrollView;
import java.util.List;
import android.widget.TextView;
import fr.testudo.spacecorsair.engine.ObjectRegistry;
import fr.testudo.spacecorsair.textengine.TextSize;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Locale;

/**
 * v45 multiplayer screens: who the player is (nickname, optional country with flag), the lobby screen, the chat panel.
 * The link itself is ModLan. Nothing here is sent anywhere except the nickname, the country code and chat lines.
 */
final class ModLanUi {
    private ModLanUi() {}

    // ------------------------------------------------------------------ identity
    private static final String PREFS = "corsair_lan";
    private static String nickCache, ctryCache;

    private static SharedPreferences prefs() {
        return ObjectRegistry.INSTANCE.game.context.getSharedPreferences(PREFS, 0);
    }

    static String nick() {
        if (nickCache == null) {
            try { nickCache = safeNick(prefs().getString("nick", "")); } catch (Throwable t) { return ""; }
        }
        return nickCache;
    }

    static String country() {
        if (ctryCache == null) {
            try { ctryCache = safeCountry(prefs().getString("country", "")); } catch (Throwable t) { return ""; }
        }
        return ctryCache;
    }

    static boolean hasProfile() {
        try { return prefs().getString("nick", "").length() > 0; } catch (Throwable t) { return true; }
    }

    private static void save(String n, String c) {
        nickCache = safeNick(n);
        ctryCache = safeCountry(c);
        try { prefs().edit().putString("nick", nickCache).putString("country", ctryCache).commit(); } catch (Throwable t) { /* memory only */ }
    }

    // words not shown in a nickname or a chat line (English and Spanish)
    private static final String[] BLOCK = {
        "fuck", "shit", "bitch", "cunt", "nigg", "fagg", "whore", "slut", "rape", "nazi", "hitler", "retard", "dick", "pussy", "asshole",
        "puta", "puto", "mierda", "pendej", "cabron", "verga", "maric", "culero", "coño", "cono", "zorra", "polla", "chinga", "joder", "hijueputa", "malparid"
    };

    static boolean blocked(String v) {
        String s = v.toLowerCase(Locale.ROOT).replace('0', 'o').replace('1', 'i').replace('3', 'e').replace('4', 'a').replace('5', 's').replace('@', 'a').replace('$', 's')
            .replace('á', 'a').replace('é', 'e').replace('í', 'i').replace('ó', 'o').replace('ú', 'u');
        StringBuilder sb = new StringBuilder();
        for (int i = 0; i < s.length(); i++) { char c = s.charAt(i); if (c >= 'a' && c <= 'z' || c == 'ñ') sb.append(c); }
        String t = sb.toString();
        for (String w : BLOCK) if (t.contains(w)) return true;
        return false;
    }

    /** 2-12 letters, digits, spaces, - or _; anything else (or a blocked word) becomes Player plus 4 digits. Also used on a peer's name. */
    static String safeNick(String v) {
        StringBuilder sb = new StringBuilder();
        if (v != null) {
            for (int i = 0; i < v.length() && sb.length() < 12; i++) {
                char c = v.charAt(i);
                if (c < 0x250 && Character.isLetterOrDigit(c) || c == ' ' || c == '-' || c == '_') sb.append(c);
            }
        }
        String n = sb.toString().trim();
        if (n.length() < 2 || blocked(n)) {
            int h = v == null ? 0 : v.hashCode();
            n = "Player" + (1000 + Math.abs(h % 9000));
        }
        return n;
    }

    /** An ISO 3166-1 alpha-3 code of the list, or "" (no country). */
    static String safeCountry(String v) {
        return v != null && flagIndex(v) >= 0 ? v : "";
    }

    static int flagIndex(String code) {
        return code == null || code.length() != 3 ? -1 : Arrays.binarySearch(ModFlagData.CODES, code);
    }

    /** "Ana ESP", or "Ana ?" when no country was picked. */
    static String label(String nick, String ctry) {
        return nick + " " + (ctry == null || ctry.length() == 0 ? "?" : ctry);
    }

    // ------------------------------------------------------------------ in-game label (game thread)
    /** World-space name tag centred above (x, y): flag, nickname, country code. */
    static void drawLabel(float x, float y, String nick, String ctry) {
        try {
            if (nick == null || nick.length() == 0) return;
            String txt = label(nick, ctry);
            float half = txt.length() * 7.0f;
            int fi = flagIndex(ctry);
            float tx = x - half + (fi >= 0 ? 20 : 0);
            ObjectRegistry.INSTANCE.renderQueue.addTextToTextWaitingQueue(tx, y, false, txt, 0.55f, 1.0f, 0.75f, 1.0f, TextSize.NORMALPLUS);
            if (fi >= 0) {
                float cu = ModFlagData.W / 512.0f, cv = ModFlagData.H / 512.0f;
                int c = fi % ModFlagData.COLS, r = fi / ModFlagData.COLS;
                ModFx.sprUV("flags", tx - 24, y + 9, 32, 24, 0, 1, 1, 1, 1, false, c * cu, r * cv, (c + 1) * cu, (r + 1) * cv, false);
            }
        } catch (Throwable t) {
            // no label this frame
        }
    }

    // ------------------------------------------------------------------ flag bitmaps for the screens
    private static Bitmap atlas;

    static Bitmap flag(Context ctx, String code) {
        try {
            int i = flagIndex(code);
            if (i < 0) return null;
            if (atlas == null) {
                InputStream in = ModArt.open(ctx, "flags");
                try { atlas = BitmapFactory.decodeStream(in); } finally { in.close(); }
            }
            return Bitmap.createBitmap(atlas, (i % ModFlagData.COLS) * ModFlagData.W, (i / ModFlagData.COLS) * ModFlagData.H, ModFlagData.W, ModFlagData.H);
        } catch (Throwable t) {
            return null;
        }
    }

    private static BitmapDrawable flagDrawable(Context ctx, String code, float d) {
        Bitmap b = flag(ctx, code);
        if (b == null) return null;
        BitmapDrawable bd = new BitmapDrawable(ctx.getResources(), b);
        bd.setBounds(0, 0, (int) (32 * d), (int) (24 * d));
        return bd;
    }

    private static String countryName(int i) {
        return (ModLang.spanish() ? ModFlagData.ES : ModFlagData.EN)[i];
    }

    // ------------------------------------------------------------------ "Who are you?"
    /** Nickname (required) and country (optional). then runs after Save. */
    static void whoAreYou(final Activity a, final Runnable then) {
        try {
            final float d = a.getResources().getDisplayMetrics().density;
            LinearLayout col = new LinearLayout(a);
            col.setOrientation(LinearLayout.VERTICAL);
            int pad = (int) (16 * d);
            col.setPadding(pad, pad / 2, pad, 0);
            TextView t1 = new TextView(a);
            t1.setText(ModLang.tr("Nickname (2-12 letters or digits)"));
            col.addView(t1);
            final EditText name = new EditText(a);
            name.setSingleLine(true);
            name.setFilters(new InputFilter[]{new InputFilter.LengthFilter(12)});
            name.setText(hasProfile() ? nick() : "");
            col.addView(name);
            TextView t2 = new TextView(a);
            t2.setText(ModLang.tr("Country (optional)"));
            t2.setPadding(0, pad / 2, 0, 0);
            col.addView(t2);
            final String[] picked = {country()};
            final Button cb = new Button(a);
            cb.setAllCaps(false);
            cb.setGravity(Gravity.LEFT | Gravity.CENTER_VERTICAL);
            final Runnable show = new Runnable() {
                public void run() {
                    int i = flagIndex(picked[0]);
                    cb.setText(i < 0 ? "?  " + ModLang.tr("No country") : "  " + picked[0] + "  " + countryName(i));
                    cb.setCompoundDrawables(i < 0 ? null : flagDrawable(a, picked[0], d), null, null, null);
                }
            };
            show.run();
            cb.setOnClickListener(new View.OnClickListener() {
                public void onClick(View v) { pickCountry(a, new Pick() { public void picked(String code) { picked[0] = code; show.run(); } }); }
            });
            col.addView(cb);
            TextView t3 = new TextView(a);
            t3.setText(ModLang.tr("Other players see only this name and country."));
            t3.setTextSize(TypedValue.COMPLEX_UNIT_SP, 12.0f);
            t3.setPadding(0, pad / 2, 0, 0);
            col.addView(t3);
            new AlertDialog.Builder(a).setTitle(ModLang.tr("Who are you?")).setView(col)
                .setPositiveButton(ModLang.tr("Save"), new DialogInterface.OnClickListener() {
                    public void onClick(DialogInterface di, int w) {
                        save(name.getText().toString(), picked[0]);
                        if (then != null) then.run();
                    }
                })
                .setNegativeButton(ModLang.tr("Close"), null).show();
        } catch (Throwable t) {
            if (then != null) then.run();
        }
    }

    interface Pick { void picked(String code); }

    /** Searchable country list with flags; the first row is "no country". */
    private static void pickCountry(final Activity a, final Pick cb) {
        final float d = a.getResources().getDisplayMetrics().density;
        ArrayList<String> rows = new ArrayList<String>();
        rows.add("?  " + ModLang.tr("No country"));
        for (int i = 0; i < ModFlagData.CODES.length; i++) rows.add(ModFlagData.CODES[i] + "  " + countryName(i));
        final ArrayAdapter<String> ad = new ArrayAdapter<String>(a, android.R.layout.simple_list_item_1, rows) {
            public View getView(int pos, View cv, ViewGroup parent) {
                TextView tv = (TextView) super.getView(pos, cv, parent);
                String row = getItem(pos);
                tv.setCompoundDrawables(row.startsWith("?") ? null : flagDrawable(a, row.substring(0, 3), d), null, null, null);
                tv.setCompoundDrawablePadding((int) (10 * d));
                return tv;
            }
        };
        LinearLayout col = new LinearLayout(a);
        col.setOrientation(LinearLayout.VERTICAL);
        EditText find = new EditText(a);
        find.setSingleLine(true);
        find.setHint(ModLang.tr("Search"));
        col.addView(find);
        ListView lv = new ListView(a);
        lv.setAdapter(ad);
        col.addView(lv, new LinearLayout.LayoutParams(ViewGroup.LayoutParams.MATCH_PARENT, 0, 1));
        TextView lic = new TextView(a);   // MIT attribution for the flag images
        lic.setTextSize(10);
        lic.setPadding((int) (10 * d), (int) (4 * d), (int) (10 * d), 0);
        lic.setText(ModLang.tr("Flag images: flag-icons, (c) 2013 Panayiotis Lipiridis, MIT License."));
        col.addView(lic);
        final AlertDialog dlg = new AlertDialog.Builder(a).setTitle(ModLang.tr("Country (optional)")).setView(col).setNegativeButton(ModLang.tr("Close"), null).create();
        find.addTextChangedListener(new TextWatcher() {
            public void beforeTextChanged(CharSequence s, int st, int c, int af) { }
            public void onTextChanged(CharSequence s, int st, int b, int c) { ad.getFilter().filter(s); }
            public void afterTextChanged(Editable e) { }
        });
        lv.setOnItemClickListener(new AdapterView.OnItemClickListener() {
            public void onItemClick(AdapterView<?> p, View v, int pos, long id) {
                String row = ad.getItem(pos);
                cb.picked(row.startsWith("?") ? "" : row.substring(0, 3));
                try { dlg.dismiss(); } catch (Throwable t) { /* gone */ }
            }
        });
        dlg.show();
    }

    // ------------------------------------------------------------------ a list of buttons as a dialog
    /** Title, optional header view, message, then one full-width button per label (null action = close only). */
    static AlertDialog menu(Activity a, String title, View header, String msg, String[] labels, final Runnable[] actions) {
        float d = a.getResources().getDisplayMetrics().density;
        LinearLayout col = new LinearLayout(a);
        col.setOrientation(LinearLayout.VERTICAL);
        int pad = (int) (14 * d);
        col.setPadding(pad, pad / 2, pad, pad / 2);
        if (header != null) col.addView(header);
        if (msg != null && msg.length() > 0) {
            TextView tv = new TextView(a);
            tv.setText(msg);
            tv.setPadding(0, 0, 0, pad / 2);
            col.addView(tv);
        }
        ScrollView sc = new ScrollView(a);
        sc.addView(col);
        final AlertDialog dlg = new AlertDialog.Builder(a).setTitle(title).setView(sc).create();
        for (int i = 0; i < labels.length; i++) {
            if (labels[i] == null) continue;
            final Runnable r = actions[i];
            if (labels[i].startsWith("#")) {   // a section heading with its (?) help: "#Heading|help text"
                col.addView(section(a, labels[i].substring(1), d));
                continue;
            }
            Button b = new Button(a);
            b.setAllCaps(false);
            b.setText(labels[i]);
            b.setEnabled(r != DISABLED);
            b.setOnClickListener(new View.OnClickListener() {
                public void onClick(View v) {
                    try { dlg.dismiss(); } catch (Throwable t) { /* gone */ }
                    if (r != null) r.run();
                }
            });
            col.addView(b);
        }
        dlg.show();
        return dlg;
    }

    static final Runnable DISABLED = new Runnable() { public void run() { } };

    private static View section(final Activity a, String spec, float d) {
        int bar = spec.indexOf('|');
        final String head = bar < 0 ? spec : spec.substring(0, bar), help = bar < 0 ? "" : spec.substring(bar + 1);
        LinearLayout row = new LinearLayout(a);
        row.setOrientation(LinearLayout.HORIZONTAL);
        row.setGravity(Gravity.CENTER_VERTICAL);
        row.setPadding(0, (int) (10 * d), 0, 0);
        TextView tv = new TextView(a);
        tv.setText(head);
        tv.setTextSize(TypedValue.COMPLEX_UNIT_SP, 16.0f);
        tv.setTextColor(0xFF8FE8B0);
        row.addView(tv, new LinearLayout.LayoutParams(0, ViewGroup.LayoutParams.WRAP_CONTENT, 1));
        if (help.length() > 0) {
            Button q = new Button(a);
            q.setText("?");
            q.setMinWidth(0);
            q.setMinimumWidth(0);
            q.setOnClickListener(new View.OnClickListener() {
                public void onClick(View v) {
                    try { new AlertDialog.Builder(a).setTitle(head).setMessage(help).setPositiveButton(ModLang.tr("OK"), null).show(); } catch (Throwable t) { /* no help */ }
                }
            });
            row.addView(q, new LinearLayout.LayoutParams((int) (48 * d), ViewGroup.LayoutParams.WRAP_CONTENT));
        }
        return row;
    }

    /** The "nickname + flag + code" line with an Edit button, on top of the lobby. */
    static View profileRow(final Activity a, final Runnable after) {
        float d = a.getResources().getDisplayMetrics().density;
        LinearLayout row = new LinearLayout(a);
        row.setOrientation(LinearLayout.HORIZONTAL);
        row.setGravity(Gravity.CENTER_VERTICAL);
        Bitmap f = flag(a, country());
        if (f != null) {
            ImageView iv = new ImageView(a);
            iv.setImageBitmap(f);
            LinearLayout.LayoutParams lp = new LinearLayout.LayoutParams((int) (32 * d), (int) (24 * d));
            lp.rightMargin = (int) (8 * d);
            row.addView(iv, lp);
        }
        TextView tv = new TextView(a);
        tv.setText(label(nick(), country()));
        tv.setTextSize(TypedValue.COMPLEX_UNIT_SP, 17.0f);
        tv.setTextColor(Color.WHITE);
        row.addView(tv, new LinearLayout.LayoutParams(0, ViewGroup.LayoutParams.WRAP_CONTENT, 1));
        Button e = new Button(a);
        e.setAllCaps(false);
        e.setText(ModLang.tr("Edit"));
        e.setOnClickListener(new View.OnClickListener() { public void onClick(View v) { whoAreYou(a, after); } });
        row.addView(e);
        return row;
    }

    // ------------------------------------------------------------------ chat (flight screen)
    private static final ArrayList<String> lines = new ArrayList<String>();
    private static volatile int unread;
    static volatile boolean muted;
    private static Activity chatAct;
    private static Button icon;
    private static LinearLayout chatPanel;
    private static TextView chatText;

    /** Reader thread: a chat line from the other player. */
    static void onChat(String from, String text) {
        if (muted) return;
        String t = ModLan.clean(text, 120);
        if (t.length() == 0) return;
        if (blocked(t)) t = "***";
        add(from + ": " + t);
        unread++;
    }

    private static void add(String line) {
        synchronized (lines) {
            lines.add(line);
            while (lines.size() > 20) lines.remove(0);
        }
    }

    /** The chat lines of this session (report button). */
    static String chatText() { return allLines(); }

    private static String allLines() {
        StringBuilder sb = new StringBuilder();
        synchronized (lines) { for (String l : lines) { if (sb.length() > 0) sb.append('\n'); sb.append(l); } }
        return sb.toString();
    }

    static void clearChat() {
        synchronized (lines) { lines.clear(); }
        unread = 0;
    }

    private static boolean watching;
    private static int started;

    /** A linked game keeps running under its menu; when the whole app leaves the screen it pauses like the stock game. */
    private static void watchApp(Activity a) {
        if (watching) return;
        watching = true;
        started = 1;   // registered from the flight screen's onResume: it is started
        a.getApplication().registerActivityLifecycleCallbacks(new android.app.Application.ActivityLifecycleCallbacks() {
            public void onActivityCreated(Activity x, android.os.Bundle b) { }
            public void onActivityStarted(Activity x) { started++; }
            public void onActivityResumed(Activity x) { }
            public void onActivityPaused(Activity x) { }
            public void onActivityStopped(Activity x) {
                started--;
                if (started <= 0 && ModLan.underMenu) {
                    ModLan.underMenu = false;
                    try { ObjectRegistry.INSTANCE.game.gameThread.pauseGame(); } catch (Throwable t) { /* already stopped */ }
                }
            }
            public void onActivitySaveInstanceState(Activity x, android.os.Bundle b) { }
            public void onActivityDestroyed(Activity x) { }
        });
    }

    /** From ModComms.attachUi: the flight screen. A message icon on the right edge while a game is linked; it opens the chat panel. */
    static void attach(final Activity a) {
        try {
            ModLan.underMenu = false;   // back on the flight screen
            watchApp(a);
            if (chatAct == a && icon != null) return;
            chatAct = a;
            final float d = a.getResources().getDisplayMetrics().density;
            final Button ic = new Button(a);
            ic.setText("✉");
            ic.setTextSize(TypedValue.COMPLEX_UNIT_SP, 18.0f);
            ic.setTextColor(Color.WHITE);
            ic.setPadding(0, 0, 0, 0);
            ic.setMinWidth(0); ic.setMinimumWidth(0); ic.setMinHeight(0); ic.setMinimumHeight(0);
            GradientDrawable bg = new GradientDrawable();
            bg.setCornerRadius(6 * d);
            bg.setColor(0xA0203040);
            bg.setStroke((int) (1 * d), 0xFFDDE4EE);
            ic.setBackgroundDrawable(bg);
            ic.setVisibility(View.GONE);
            FrameLayout.LayoutParams li = new FrameLayout.LayoutParams((int) (40 * d), (int) (36 * d), Gravity.RIGHT | Gravity.CENTER_VERTICAL);
            li.rightMargin = (int) (4 * d);
            a.addContentView(ic, li);

            final LinearLayout p = new LinearLayout(a);
            p.setOrientation(LinearLayout.VERTICAL);
            GradientDrawable pbg = new GradientDrawable();
            pbg.setCornerRadius(6 * d);
            pbg.setColor(0xD0101820);
            pbg.setStroke((int) (1 * d), 0xFF8FA0B0);
            p.setBackgroundDrawable(pbg);
            int pad = (int) (6 * d);
            p.setPadding(pad, pad, pad, pad);
            p.setVisibility(View.GONE);
            final TextView tv = new TextView(a);
            tv.setTextSize(TypedValue.COMPLEX_UNIT_SP, 12.0f);
            tv.setTextColor(0xFFE8EEF4);
            tv.setGravity(Gravity.BOTTOM);
            final ScrollView sc = new ScrollView(a);
            sc.addView(tv);
            p.addView(sc, new LinearLayout.LayoutParams(ViewGroup.LayoutParams.MATCH_PARENT, 0, 1));
            LinearLayout row = new LinearLayout(a);
            row.setOrientation(LinearLayout.HORIZONTAL);
            final EditText in = new EditText(a);
            in.setSingleLine(true);
            in.setTextSize(TypedValue.COMPLEX_UNIT_SP, 12.0f);
            in.setFilters(new InputFilter[]{new InputFilter.LengthFilter(120)});
            in.setHint(ModLang.tr("Message"));
            row.addView(in, new LinearLayout.LayoutParams(0, ViewGroup.LayoutParams.WRAP_CONTENT, 1));
            Button send = new Button(a);
            send.setAllCaps(false);
            send.setTextSize(TypedValue.COMPLEX_UNIT_SP, 12.0f);
            send.setText(ModLang.tr("Send"));
            row.addView(send);
            p.addView(row);
            final Button mute = new Button(a);
            mute.setAllCaps(false);
            mute.setTextSize(TypedValue.COMPLEX_UNIT_SP, 11.0f);
            mute.setText(muted ? ModLang.tr("Unmute") : ModLang.tr("Mute"));
            mute.setOnClickListener(new View.OnClickListener() {
                public void onClick(View v) { muted = !muted; mute.setText(muted ? ModLang.tr("Unmute") : ModLang.tr("Mute")); }
            });
            p.addView(mute);
            int w = (int) Math.min(a.getResources().getDisplayMetrics().widthPixels * 0.36f, 300 * d);
            int h = (int) Math.min(a.getResources().getDisplayMetrics().heightPixels * 0.6f, 260 * d);
            FrameLayout.LayoutParams lp = new FrameLayout.LayoutParams(w, h, Gravity.RIGHT | Gravity.CENTER_VERTICAL);
            lp.rightMargin = (int) (48 * d);
            a.addContentView(p, lp);
            send.setOnClickListener(new View.OnClickListener() {
                public void onClick(View v) {
                    String t = ModLan.clean(in.getText().toString().trim(), 120);
                    if (t.length() == 0) return;
                    if (ModLan.sendChat(t)) {
                        add(nick() + ": " + (blocked(t) ? "***" : t));
                        in.setText("");
                        tv.setText(allLines());
                    }
                }
            });
            ic.setOnClickListener(new View.OnClickListener() {
                public void onClick(View v) {
                    boolean open = p.getVisibility() != View.VISIBLE;
                    p.setVisibility(open ? View.VISIBLE : View.GONE);
                    if (open) { unread = 0; tv.setText(allLines()); }
                }
            });
            icon = ic;
            chatPanel = p;
            chatText = tv;
            final Handler ui = new Handler(Looper.getMainLooper());
            ui.post(new Runnable() {
                int shown = -1;

                public void run() {
                    if (a.isFinishing() || chatAct != a) {
                        if (chatAct == a) { chatAct = null; icon = null; chatPanel = null; chatText = null; }
                        return;
                    }
                    try {
                        boolean on = ModLan.connected;
                        ic.setVisibility(on ? View.VISIBLE : View.GONE);
                        if (!on && p.getVisibility() == View.VISIBLE) p.setVisibility(View.GONE);
                        int u = unread;
                        if (p.getVisibility() == View.VISIBLE) {
                            if (u > 0) { unread = 0; tv.setText(allLines()); sc.fullScroll(View.FOCUS_DOWN); }
                            u = 0;
                        }
                        if (u != shown) {
                            shown = u;
                            ic.setText(u > 0 ? "✉•" : "✉");
                            ic.setTextColor(u > 0 ? 0xFF41FF16 : Color.WHITE);
                        }
                    } catch (Throwable t) {
                        // next tick
                    }
                    ui.postDelayed(this, 400);
                }
            });
        } catch (Throwable t) {
            // no chat on this screen
        }
    }

    // ------------------------------------------------------------------ v45: public list with flags, refreshed by itself
    interface CodeCb { void code(String c); }

    /** The public games on this version: flag, nickname, sector, level, PvP, seats. One tap joins. Refreshed every 20 s while open. */
    static void publicList(final Activity a, final CodeCb join) {
        try {
            final float d = a.getResources().getDisplayMetrics().density;
            final ArrayList<String[]> rows = new ArrayList<String[]>();
            final TextView note = new TextView(a);
            note.setPadding((int) (20 * d), (int) (10 * d), (int) (20 * d), (int) (6 * d));
            note.setText(ModLang.tr("Loading the list..."));
            final ArrayAdapter<String[]> ad = new ArrayAdapter<String[]>(a, android.R.layout.simple_list_item_1, rows) {
                @Override public View getView(int pos, View old, ViewGroup parent) {
                    TextView t = old instanceof TextView ? (TextView) old : new TextView(a);
                    String[] r = getItem(pos);
                    t.setPadding((int) (20 * d), (int) (12 * d), (int) (20 * d), (int) (12 * d));
                    t.setTextSize(TypedValue.COMPLEX_UNIT_SP, 16);
                    t.setText(label(r[1], r[2]) + "  ·  " + r[0] + "  ·  " + r[4] + "  ·  " + ModLang.tr("Lv") + " " + r[5]
                        + "  ·  " + ("1".equals(r[3]) ? ModLang.tr("PvP on") : ModLang.tr("PvP off")) + "  ·  " + r[6] + "/2");
                    t.setCompoundDrawables(flagDrawable(a, r[2], d), null, null, null);
                    t.setCompoundDrawablePadding((int) (10 * d));
                    t.setAlpha("2".equals(r[6]) ? 0.5f : 1.0f);
                    return t;
                }
            };
            ListView lv = new ListView(a);
            lv.setAdapter(ad);
            LinearLayout box = new LinearLayout(a);
            box.setOrientation(LinearLayout.VERTICAL);
            box.addView(note);
            box.addView(lv);
            final AlertDialog dlg = new AlertDialog.Builder(a).setTitle(ModLang.tr("Public games (internet)")).setView(box)
                .setPositiveButton(ModLang.tr("Refresh"), null).setNegativeButton(ModLang.tr("Close"), null).create();
            final Handler h = new Handler(Looper.getMainLooper());
            final boolean[] loading = {false};
            final Runnable[] load = new Runnable[1];
            load[0] = new Runnable() {
                public void run() {
                    h.removeCallbacks(this);
                    if (!dlg.isShowing() || a.isFinishing()) return;
                    h.postDelayed(this, 20000);   // again in 20 s while the list is open
                    if (loading[0]) return;
                    loading[0] = true;
                    new Thread(new Runnable() {
                        public void run() {
                            List<String[]> g0;
                            try { ModLobby.status = ""; g0 = ModLobby.list(); } catch (Throwable e) { g0 = new ArrayList<String[]>(); }   // the result is always posted, so the next refresh runs
                            final List<String[]> got = g0;
                            final String st = ModLobby.status;
                            h.post(new Runnable() {
                                public void run() {
                                    loading[0] = false;
                                    if (!dlg.isShowing()) return;
                                    rows.clear();
                                    rows.addAll(got);
                                    ad.notifyDataSetChanged();
                                    note.setText(got.isEmpty() ? (st.length() > 0 ? st : ModLang.tr("No public games right now. Host one, or look again in a moment."))
                                        : ModLang.tr("Tap a game to join. The list refreshes by itself."));
                                }
                            });
                        }
                    }, "lobby-list").start();
                }
            };
            lv.setOnItemClickListener(new AdapterView.OnItemClickListener() {
                public void onItemClick(AdapterView<?> p, View v, int pos, long id) {
                    if (pos < 0 || pos >= rows.size() || "2".equals(rows.get(pos)[6])) return;   // full
                    String c = rows.get(pos)[0];
                    dlg.dismiss();
                    join.code(c);
                }
            });
            dlg.setOnDismissListener(new DialogInterface.OnDismissListener() { public void onDismiss(DialogInterface x) { h.removeCallbacks(load[0]); } });
            dlg.show();
            dlg.getButton(AlertDialog.BUTTON_POSITIVE).setOnClickListener(new View.OnClickListener() { public void onClick(View v) { load[0].run(); } });   // stays open
            load[0].run();
        } catch (Throwable t) {
            // no dialog
        }
    }

    static final String CODE_ALPHABET = "ABCDEFGHJKLMNPQRSTUVWXYZ23456789";   // no 0 O 1 I

    /** The characters of a typed or pasted code that the alphabet has, upper case, at most max. */
    static String codeChars(CharSequence in, int max) {
        StringBuilder b = new StringBuilder();
        for (int i = 0; in != null && i < in.length() && b.length() < max; i++) {
            char c = Character.toUpperCase(in.charAt(i));
            if (CODE_ALPHABET.indexOf(c) >= 0) b.append(c);
        }
        return b.toString();
    }

    /** Join by code: four boxes, one character each; typing moves on, delete moves back, a pasted code fills them all. */
    static void codeBoxes(final Activity a, final CodeCb join) {
        try {
            final float d = a.getResources().getDisplayMetrics().density;
            final EditText[] bx = new EditText[4];
            LinearLayout row = new LinearLayout(a);
            row.setOrientation(LinearLayout.HORIZONTAL);
            row.setGravity(Gravity.CENTER);
            row.setPadding(0, (int) (8 * d), 0, (int) (8 * d));
            final boolean[] busy = {false};
            final AlertDialog[] dlg = new AlertDialog[1];
            final Runnable check = new Runnable() {
                public void run() {
                    boolean full = true;
                    for (EditText e : bx) if (e.getText().length() != 1) full = false;
                    Button ok = dlg[0] == null ? null : dlg[0].getButton(AlertDialog.BUTTON_POSITIVE);
                    if (ok != null) ok.setEnabled(full);
                }
            };
            for (int i = 0; i < 4; i++) {
                final int at = i;
                final EditText e = new EditText(a);
                e.setSingleLine(true);
                e.setGravity(Gravity.CENTER);
                e.setTextSize(TypedValue.COMPLEX_UNIT_SP, 28);
                e.setInputType(android.text.InputType.TYPE_CLASS_TEXT | android.text.InputType.TYPE_TEXT_FLAG_CAP_CHARACTERS | android.text.InputType.TYPE_TEXT_FLAG_NO_SUGGESTIONS);
                e.setSelectAllOnFocus(true);
                LinearLayout.LayoutParams lp = new LinearLayout.LayoutParams((int) (56 * d), ViewGroup.LayoutParams.WRAP_CONTENT);
                lp.setMargins((int) (6 * d), 0, (int) (6 * d), 0);
                row.addView(e, lp);
                bx[i] = e;
                e.addTextChangedListener(new TextWatcher() {
                    public void beforeTextChanged(CharSequence q, int st, int c, int n) { }
                    public void onTextChanged(CharSequence q, int st, int b, int c) { }
                    public void afterTextChanged(Editable ed) {
                        if (busy[0]) return;
                        busy[0] = true;
                        try {
                            String ok = codeChars(ed, 4);
                            // one character stays here; the rest of a paste goes on into the next boxes
                            for (int k = 0; k < ok.length() && at + k < 4; k++) bx[at + k].setText(ok.substring(k, k + 1));
                            if (ok.length() == 0) e.setText("");
                            int next = Math.min(3, at + Math.max(ok.length(), 0));
                            if (ok.length() > 0 && at + ok.length() <= 3) bx[next].requestFocus();
                            else if (ok.length() > 0) bx[3].setSelection(bx[3].getText().length());
                        } finally {
                            busy[0] = false;
                        }
                        check.run();
                    }
                });
                e.setOnKeyListener(new View.OnKeyListener() {
                    public boolean onKey(View v, int code, android.view.KeyEvent ev) {
                        if (code == android.view.KeyEvent.KEYCODE_DEL && ev.getAction() == android.view.KeyEvent.ACTION_DOWN && e.getText().length() == 0 && at > 0) {
                            bx[at - 1].setText("");
                            bx[at - 1].requestFocus();
                            return true;
                        }
                        return false;
                    }
                });
            }
            dlg[0] = new AlertDialog.Builder(a).setTitle(ModLang.tr("Join by code")).setMessage(ModLang.tr("Type the 4-character code your friend sees on the host screen."))
                .setView(row)
                .setPositiveButton(ModLang.tr("Join"), new DialogInterface.OnClickListener() {
                    public void onClick(DialogInterface x, int w) {
                        StringBuilder b = new StringBuilder();
                        for (EditText e : bx) b.append(e.getText());
                        String c = codeChars(b, 4);
                        if (c.length() == 4) join.code(c);
                    }
                }).setNegativeButton(ModLang.tr("Close"), null).create();
            dlg[0].getWindow().setSoftInputMode(android.view.WindowManager.LayoutParams.SOFT_INPUT_STATE_VISIBLE);
            dlg[0].show();
            check.run();
            bx[0].requestFocus();
        } catch (Throwable t) {
            // no dialog
        }
    }
}
