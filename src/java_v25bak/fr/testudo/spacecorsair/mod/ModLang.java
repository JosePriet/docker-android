package fr.testudo.spacecorsair.mod;

import android.app.Activity;
import android.content.Context;
import android.content.SharedPreferences;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.graphics.Color;
import android.os.Build;
import android.util.TypedValue;
import android.view.View;
import android.widget.LinearLayout;
import android.widget.RadioButton;
import android.widget.RadioGroup;
import android.widget.TextView;
import android.widget.Toast;
import java.io.ByteArrayOutputStream;
import java.io.InputStream;
import java.lang.reflect.Method;
import java.text.Normalizer;
import java.util.HashMap;
import java.util.Locale;
import java.util.Map;

/**
 * Language layer. Pref "lang" (auto|en|es) in the "modqol" prefs. apply() forces the chosen locale on the
 * Application and each Activity (smali hooks at the top of onCreate), so Android picks values-es resources.
 * tr()/trf() translate mod-side English text from assets/lang/es.json. glIndex/glPut back the GLText atlas
 * (hooks22_font.py): ASCII + GL_EXTRA.
 */
public class ModLang {

    public static final String PREFS = "modqol", KEY = "lang";
    private static Locale systemLocale;
    private static Context app;
    private static String mode;           // cached pref value
    private static Map<String, String> dict;

    // ================================================================== locale
    static String mode(Context c) {
        if (mode == null) {
            try {
                if (c != null) mode = c.getApplicationContext().getSharedPreferences(PREFS, Context.MODE_PRIVATE).getString(KEY, "auto");
            } catch (Exception e) { }
            if (mode == null) return "auto";
            // emulator tests: /data/local/tmp/corsair_lang = auto | en | es overrides the setting
            try {
                String t = ModDev.testValue("corsair_lang");
                if (t != null && t.trim().length() > 0) mode = t.trim();
            } catch (Throwable e) { }
        }
        return mode;
    }

    private static Locale sysLocale() {
        if (systemLocale == null) {
            try { systemLocale = Resources.getSystem().getConfiguration().locale; } catch (Exception e) { }
            if (systemLocale == null) systemLocale = Locale.getDefault();
        }
        return systemLocale;
    }

    /** The locale the game should run in. */
    public static Locale target(Context c) {
        String m = mode(c);
        if ("es".equals(m)) return new Locale("es");
        if ("en".equals(m)) return Locale.ENGLISH;
        return sysLocale();
    }

    /** True when Spanish is the effective language (explicit, or auto on a Spanish device). */
    public static boolean spanish() {
        return "es".equals(target(app).getLanguage());
    }

    /** Hook: SpaceCorsairApplication.onCreate (after super). */
    public static void applyApp(Context c) {
        try {
            app = c.getApplicationContext() != null ? c.getApplicationContext() : c;
            sysLocale();
            Locale l = target(app);
            Locale.setDefault(l);
            set(app.getResources(), l);
        } catch (Throwable t) { }
    }

    /** Hook: top of every Activity onCreate (before init_/setContentView). Idempotent. */
    public static void apply(Activity a) {
        try {
            if (app == null) applyApp(a.getApplicationContext());
            Locale l = target(a);
            Locale.setDefault(l);
            set(a.getApplicationContext().getResources(), l);
            set(a.getResources(), l);
        } catch (Throwable t) { }
    }

    private static void set(Resources r, Locale l) {
        Configuration cur = r.getConfiguration();
        if (l.equals(cur.locale)) return;
        Configuration c = new Configuration(cur);
        try {
            Method m = Configuration.class.getMethod("setLocale", Locale.class);   // API 17+, also sets LocaleList on 24+
            m.invoke(c, l);
        } catch (Exception e) {
            c.locale = l;
        }
        r.updateConfiguration(c, r.getDisplayMetrics());
    }

    static void setMode(Activity a, String m) {
        if (m.equals(mode(a))) return;
        mode = m;
        dict = null;
        try { a.getApplicationContext().getSharedPreferences(PREFS, Context.MODE_PRIVATE).edit().putString(KEY, m).commit(); } catch (Exception e) { }
        apply(a);
        try {
            Toast.makeText(a, spanish() ? "Idioma cambiado. Reinicia el juego para aplicarlo en todas las pantallas."
                    : "Language changed. Restart the game to apply it everywhere.", Toast.LENGTH_LONG).show();
        } catch (Exception e) { }
        if (Build.VERSION.SDK_INT >= 11) {
            try { Activity.class.getMethod("recreate").invoke(a); } catch (Exception e) { }
        }
    }

    /** Settings row: "Language: (Auto) (English) (Español)". Added by ModQol.settings. */
    public static View selector(final Activity a) {
        LinearLayout row = new LinearLayout(a);
        row.setOrientation(LinearLayout.VERTICAL);
        TextView t = new TextView(a);
        t.setText(tr("Language") + " / Idioma");
        t.setTextColor(Color.WHITE);
        t.setTextSize(TypedValue.COMPLEX_UNIT_SP, 14);
        row.addView(t);
        RadioGroup g = new RadioGroup(a);
        g.setOrientation(RadioGroup.HORIZONTAL);
        final String[] keys = {"auto", "en", "es"};
        final String[] labels = {tr("Auto"), "English", "Español"};
        String cur = mode(a);
        for (int i = 0; i < keys.length; i++) {
            RadioButton b = new RadioButton(a);
            b.setId(0x4c41000 + i);
            b.setText(labels[i]);
            b.setTextColor(Color.WHITE);
            g.addView(b);
            if (keys[i].equals(cur)) b.setChecked(true);
        }
        g.setOnCheckedChangeListener(new RadioGroup.OnCheckedChangeListener() {
            public void onCheckedChanged(RadioGroup group, int id) {
                int i = id - 0x4c41000;
                if (i >= 0 && i < keys.length) setMode(a, keys[i]);
            }
        });
        row.addView(g);
        return row;
    }

    // ================================================================== mod text API
    private static Map<String, String> dict() {
        if (dict != null) return dict;
        Map<String, String> d = new HashMap<String, String>();
        try {
            Context c = app;
            if (c == null) c = ModQol.prefs() != null ? fr.testudo.spacecorsair.engine.ObjectRegistry.INSTANCE.game.context : null;
            if (c == null) return d;   // not cached: retry once a context exists
            InputStream in = c.getAssets().open("lang/es.json");
            ByteArrayOutputStream bo = new ByteArrayOutputStream();
            byte[] buf = new byte[8192];
            for (int n; (n = in.read(buf)) > 0; ) bo.write(buf, 0, n);
            in.close();
            parseFlat(new String(bo.toByteArray(), "UTF-8"), d);
        } catch (Exception e) { }
        dict = d;
        return d;
    }

    /** Minimal parser for a flat JSON object of string -> string (the es.json format). */
    static void parseFlat(String j, Map<String, String> out) {
        int[] p = {0};
        String key = null;
        while (p[0] < j.length()) {
            char c = j.charAt(p[0]);
            if (c == '"') {
                String v = str(j, p);
                if (key == null) key = v; else { out.put(key, v); key = null; }
            } else {
                if (c == ',' || c == '{') key = null;
                p[0]++;
            }
        }
    }

    private static String str(String j, int[] p) {
        StringBuilder b = new StringBuilder();
        int i = p[0] + 1;
        for (; i < j.length(); i++) {
            char c = j.charAt(i);
            if (c == '"') break;
            if (c == '\\' && i + 1 < j.length()) {
                char n = j.charAt(++i);
                switch (n) {
                    case 'n': b.append('\n'); break;
                    case 't': b.append('\t'); break;
                    case 'r': b.append('\r'); break;
                    case 'b': b.append('\b'); break;
                    case 'f': b.append('\f'); break;
                    case 'u': b.append((char) Integer.parseInt(j.substring(i + 1, i + 5), 16)); i += 4; break;
                    default: b.append(n);
                }
            } else b.append(c);
        }
        p[0] = i + 1;
        return b.toString();
    }

    /** Spanish for a mod-side English string when Spanish is active; otherwise (or when missing) the input. */
    public static String tr(String en) {
        if (en == null || !spanish()) return en;
        String s = dict().get(en);
        return s != null ? s : en;
    }

    /** v25: Spanish for the mod's own on-screen views: each layout pass, TextViews whose text is a dictionary key
     *  (whole, or per " · " segment) are switched to Spanish. Installed once per activity (ModScroll.hook, on resume). */
    public static void watch(android.app.Activity a) {
        try {
            if (!spanish() || a == null || a.getWindow() == null) return;
            final View root = a.getWindow().getDecorView();
            if (root.getTag(0x4c41100) != null) return;
            root.setTag(0x4c41100, Boolean.TRUE);
            root.getViewTreeObserver().addOnGlobalLayoutListener(new android.view.ViewTreeObserver.OnGlobalLayoutListener() {
                public void onGlobalLayout() { translateTree(root); }
            });
            translateTree(root);
        } catch (Throwable e) { }
    }

    static void translateTree(View v) {
        if (v instanceof android.view.ViewGroup) {
            android.view.ViewGroup g = (android.view.ViewGroup) v;
            for (int i = 0; i < g.getChildCount(); i++) translateTree(g.getChildAt(i));
        } else if (v instanceof android.widget.TextView) {
            android.widget.TextView t = (android.widget.TextView) v;
            CharSequence cs = t.getText();
            if (cs == null || cs.length() < 2 || cs instanceof android.text.Spanned) return;
            String s = cs.toString(), es = trSegments(s);
            if (es != null && !es.equals(s)) t.setText(es);
        }
    }

    private static String trSegments(String s) {
        Map<String, String> d = dict();
        String w = d.get(s);
        if (w != null) return w;
        String k = s.trim();
        if (k.length() != s.length() && (w = d.get(k)) != null) return s.replace(k, w);
        if (s.indexOf(" · ") < 0) return null;
        String[] parts = s.split(" · ", -1);
        boolean hit = false;
        for (int i = 0; i < parts.length; i++) {
            String p = parts[i].trim(), x = d.get(p);
            if (x != null) { parts[i] = parts[i].replace(p, x); hit = true; }
        }
        if (!hit) return null;
        StringBuilder b = new StringBuilder(parts[0]);
        for (int i = 1; i < parts.length; i++) b.append(" · ").append(parts[i]);
        return b.toString();
    }

    /** tr(pattern) then String.format (pattern keys keep their %s/%d placeholders in es.json). */
    public static String trf(String pattern, Object... args) {
        try {
            return String.format(Locale.US, tr(pattern), args);
        } catch (Exception e) {
            return String.format(Locale.US, pattern, args);
        }
    }

    // ================================================================== GL text atlas (hooks22_font.py)
    /** Glyphs added to GLText after ASCII 32..126 (cells 95..114); cell 115 = unknown (blank). */
    public static final String GL_EXTRA = "áéíóúüñÁÉÍÓÚÜÑ¡¿ºª«»";
    public static final int GL_UNKNOWN = 95 + 20;

    public static int glIndex(int c) {
        if (c >= 32 && c <= 126) return c - 32;
        int i = GL_EXTRA.indexOf(c);
        return i >= 0 ? 95 + i : GL_UNKNOWN;
    }

    /** cArr[0] = glyph for cell k (k in 0..114). */
    public static void glPut(char[] a, int k) {
        a[0] = k < 95 ? (char) (32 + k) : GL_EXTRA.charAt(k - 95);
    }

    /** Fallback for GL text when the font patch is absent: strips accents not in the atlas (á->a, ç->c, ...). */
    public static String gl(String s) {
        if (s == null) return null;
        StringBuilder b = null;
        for (int i = 0; i < s.length(); i++) {
            char c = s.charAt(i);
            if (glIndex(c) != GL_UNKNOWN) { if (b != null) b.append(c); continue; }
            if (b == null) b = new StringBuilder(s.substring(0, i));
            String d = Normalizer.normalize(String.valueOf(c), Normalizer.Form.NFD);
            char base = d.length() > 0 ? d.charAt(0) : c;
            b.append(glIndex(base) != GL_UNKNOWN ? base : c);
        }
        return b == null ? s : b.toString();
    }
}
