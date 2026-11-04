package fr.testudo.spacecorsair.mod;

import java.util.HashMap;
import java.util.Map;
import java.util.Random;

/**
 * v43 (owner 2026-11-04 04:33, APK size option 1+2): the police liveries (pol_*) and the flagship wreck halves
 * (wreck_cap_*) are no longer shipped; they are made on the phone from the shipped art the first time they are decoded
 * (ModArt.decodeFull, background decode thread), with the same math as src/genpolice42.py + src/genpolice43.py.
 * Wrecks: wrd_cap_<key>_<s> is a delta over cap_<key> (transparent = same pixel as the hull, opaque magenta = hole,
 * anything else = the wreck pixel; src/genwreckdelta43.py), so they come back exactly.
 * Pure int[] ARGB (unpremultiplied) core: no Android types, so the JVM test (work/dtest/V43.java) runs it on desktop.
 */
public final class ModPoliceGen {
    private ModPoliceGen() { }

    /** Source of shipped art as unpremultiplied ARGB; null when missing. */
    public interface Loader {
        Img load(String name);
    }

    public static final class Img {
        public final int w, h;
        public final int[] px;
        public final boolean opaque;   // RGB art (glow layers) stays opaque

        public Img(int w, int h, int[] px, boolean opaque) { this.w = w; this.h = h; this.px = px; this.opaque = opaque; }
    }

    public static final String[] KEYS = {"spartan", "reaver", "kretari", "varn", "ironclad", "helion", "warden"};
    static final int SPARTAN = 0, REAVER = 1, KRETARI = 2, VARN = 3, IRONCLAD = 4, HELION = 5, WARDEN = 6;
    /** Police fly the top refit stage of these hulls (genpolice42.STAGE5). */
    static final String[] STAGE5 = {"bastion", "mantis", "verdant", "monolith", "leviathan"};
    static final String[] COMPS = {"_glow_l", "_veins", "_anim_01", "_anim_02", "_anim_03", "_anim_04", "_anim_05", "_anim_06",
        "_anim_07", "_anim_08", "_glow_e"};
    public static final int MAGENTA = 0xFFFF00FF;   // wreck delta: hole in the hull

    // ------------------------------------------------------------------ names
    private static Map<String, Integer> faction;

    /** Roster art (or cap_<key>) -> faction index, -1 unknown. */
    static synchronized int factionOf(String art) {
        if (faction == null) {
            Map<String, Integer> m = new HashMap<String, Integer>();
            for (int f = 0; f < ModPoliceData.ROSTER.length; f++)
                for (String[] row : ModPoliceData.ROSTER[f])
                    for (String e : row) m.put(e.substring(0, e.indexOf(':')), f);
            for (int f = 0; f < KEYS.length; f++) m.put("cap_" + KEYS[f], f);
            faction = m;
        }
        Integer f = faction.get(art);
        return f == null ? -1 : f;
    }

    static boolean stage5(String art) {
        for (String s : STAGE5) if (s.equals(art)) return true;
        return false;
    }

    /** "pol_<art>[<comp>]" -> {art, comp} (comp "" for the hull), or null. pol_wreck_cap_* -> {"wreck_cap_*", "#wreck"}. */
    static String[] split(String pol) {
        if (pol == null || !pol.startsWith("pol_")) return null;
        String rest = pol.substring(4);
        if (rest.startsWith("wreck_cap_")) return new String[] {rest, "#wreck"};
        for (String c : COMPS) if (rest.endsWith(c)) return new String[] {rest.substring(0, rest.length() - c.length()), c};
        return new String[] {rest, ""};
    }

    /** The shipped art a generated name is made from (null when the name is not generated). */
    public static String sourceOf(String name, java.util.Set<String> shipped) {
        if (name == null) return null;
        if (name.startsWith("wreck_cap_")) return shipped.contains("wrd_" + name.substring(6)) ? "wrd_" + name.substring(6) : null;
        String[] s = split(name);
        if (s == null) return null;
        if ("#wreck".equals(s[1])) {
            String k = s[0].substring(10, s[0].lastIndexOf('_'));
            return factionOf("cap_" + k) >= 0 && shipped.contains("wrd_" + s[0].substring(6)) ? s[0] : null;
        }
        int f = factionOf(s[0]);
        if (f < 0) return null;
        if ("_glow_e".equals(s[1]) && f == KRETARI) return null;   // the High Council shows no engines
        String src = stage5(s[0]) && shipped.contains(s[0] + "_stage5") ? s[0] + "_stage5" : s[0];
        return shipped.contains(src + s[1]) ? src + s[1] : null;
    }

    /** Every generated name whose sources ship (added to ModArt's asset listing). */
    public static java.util.Set<String> virtualNames(java.util.Set<String> shipped) {
        java.util.Set<String> out = new java.util.HashSet<String>();
        java.util.List<String> arts = new java.util.ArrayList<String>(ModPoliceData.arts());
        for (String k : KEYS) arts.add("cap_" + k);
        for (String a : arts) {
            String n = "pol_" + a;
            if (sourceOf(n, shipped) != null) out.add(n);
            for (String c : COMPS) if (sourceOf(n + c, shipped) != null) out.add(n + c);
        }
        for (String f : shipped) {
            if (!f.startsWith("wrd_cap_")) continue;
            String wr = "wreck_" + f.substring(4);
            out.add(wr);
            if (sourceOf("pol_" + wr, shipped) != null) out.add("pol_" + wr);
        }
        return out;
    }

    // ------------------------------------------------------------------ entry
    /** Makes a generated asset (pol_* or wreck_cap_*); null when it is not one or a source is missing. */
    public static Img make(String name, Loader ld) {
        if (name.startsWith("wreck_cap_")) return wreck(name, ld);
        String[] s = split(name);
        if (s == null) return null;
        if ("#wreck".equals(s[1])) {
            Img w = wreck(s[0], ld);
            if (w == null) return null;
            int f = factionOf("cap_" + s[0].substring(10, s[0].lastIndexOf('_')));
            Img pol = hull(w, f == KRETARI);
            return accent(f == SPARTAN || f == HELION || f == WARDEN ? -1 : f, w, pol, name + "wreck");
        }
        int f = factionOf(s[0]);
        if (f < 0) return null;
        String src = stage5(s[0]) && ld.load(s[0] + "_stage5") != null ? s[0] + "_stage5" : s[0];
        Img im = ld.load(src + s[1]);
        if (im == null) return null;
        boolean council = f == KRETARI;
        String c = s[1];
        if (c.length() == 0) return accent(f, im, hull(im, council), s[0]);
        if ("_glow_l".equals(c)) return glow(im, true, council);
        if ("_glow_e".equals(c)) return council ? null : glow(im, false, false);
        return council ? accent(KRETARI, im, im, s[0]) : hull(im, false);   // _veins, _anim_0N
    }

    // ------------------------------------------------------------------ wreck delta
    static Img wreck(String name, Loader ld) {
        Img d = ld.load("wrd_" + name.substring(6));
        Img cap = ld.load("cap_" + name.substring(10, name.lastIndexOf('_')));
        if (d == null || cap == null || d.w != cap.w || d.h != cap.h) return null;
        int[] o = new int[d.px.length];
        for (int i = 0; i < o.length; i++) {
            int v = d.px[i];
            if ((v >>> 24) == 0) o[i] = cap.px[i];
            else if (v == MAGENTA) o[i] = 0;
            else o[i] = v;
        }
        return new Img(d.w, d.h, o, false);
    }

    // ------------------------------------------------------------------ helpers
    static float smooth(float x, float a, float b) {
        float t = (x - a) / (b - a);
        t = t < 0 ? 0 : t > 1 ? 1 : t;
        return t * t * (3 - 2 * t);
    }

    static int clamp(float v) {
        int r = Math.round(v);
        return r < 0 ? 0 : r > 255 ? 255 : r;
    }

    static float lum(int p) {
        return 0.299f * ((p >> 16) & 255) + 0.587f * ((p >> 8) & 255) + 0.114f * (p & 255);
    }

    /** Value at fraction q (0..1) of the luminance of pixels with alpha > 32 (histogram, 0.25 steps). */
    static float percentile(Img im, float[] L, float q, float dflt) {
        int[] hist = new int[1024];
        int n = 0;
        for (int i = 0; i < L.length; i++) {
            if (!im.opaque && (im.px[i] >>> 24) <= 32) continue;
            hist[Math.min(1023, (int) (L[i] * 4))]++;
            n++;
        }
        if (n == 0) return dflt;
        int want = (int) Math.ceil(q * (n - 1)), acc = 0;
        for (int b = 0; b < 1024; b++) {
            acc += hist[b];
            if (acc > want) return b / 4f + 0.125f;
        }
        return dflt;
    }

    /** Separable square min filter (size 2r+1) of a 0..255 mask. */
    static float[] minFilter(float[] m, int w, int h, int r) {
        float[] t = new float[m.length], o = new float[m.length];
        for (int y = 0; y < h; y++) {
            int row = y * w;
            for (int x = 0; x < w; x++) {
                float v = 255;
                for (int k = Math.max(0, x - r), e = Math.min(w - 1, x + r); k <= e; k++) if (m[row + k] < v) v = m[row + k];
                if (x - r < 0 || x + r > w - 1) v = 0;    // PIL pads with 0 outside: the border erodes
                t[row + x] = v;
            }
        }
        for (int x = 0; x < w; x++) {
            for (int y = 0; y < h; y++) {
                float v = 255;
                for (int k = Math.max(0, y - r), e = Math.min(h - 1, y + r); k <= e; k++) if (t[k * w + x] < v) v = t[k * w + x];
                if (y - r < 0 || y + r > h - 1) v = 0;
                o[y * w + x] = v;
            }
        }
        return o;
    }

    /** Separable Gaussian blur, sigma in px. */
    static float[] blur(float[] a, int w, int h, float sigma) {
        if (sigma < 0.3f) return a.clone();
        int r = (int) Math.ceil(sigma * 3);
        float[] k = new float[2 * r + 1];
        float s = 0;
        for (int i = -r; i <= r; i++) { k[i + r] = (float) Math.exp(-i * i / (2 * sigma * sigma)); s += k[i + r]; }
        for (int i = 0; i < k.length; i++) k[i] /= s;
        float[] t = new float[a.length], o = new float[a.length];
        for (int y = 0; y < h; y++) {
            int row = y * w;
            for (int x = 0; x < w; x++) {
                float v = 0;
                for (int i = -r; i <= r; i++) {
                    int xx = x + i;
                    xx = xx < 0 ? 0 : xx >= w ? w - 1 : xx;
                    v += a[row + xx] * k[i + r];
                }
                t[row + x] = v;
            }
        }
        for (int y = 0; y < h; y++) {
            for (int x = 0; x < w; x++) {
                float v = 0;
                for (int i = -r; i <= r; i++) {
                    int yy = y + i;
                    yy = yy < 0 ? 0 : yy >= h ? h - 1 : yy;
                    v += t[yy * w + x] * k[i + r];
                }
                o[y * w + x] = v;
            }
        }
        return o;
    }

    /** genpolice43.band: 1 inside the hull within px of its outline (soft), 0..1. */
    static float[] band(float[] m, int w, int h, float px) {
        int p = Math.max(1, (int) px);
        float[] er = minFilter(m, w, h, p);
        float[] b = new float[m.length];
        for (int i = 0; i < b.length; i++) b[i] = (float) Math.floor(Math.max(0, m[i] - er[i]));
        float[] bl = blur(b, w, h, p * 0.35f);
        for (int i = 0; i < bl.length; i++) bl[i] /= 255f;
        return bl;
    }

    // ------------------------------------------------------------------ genpolice42.hull
    static final float[] COUNCIL = {0.50f / 0.78f, 0.22f / 0.78f, 1.0f};
    static final float[] SILVER = {0.96f, 0.98f, 1.00f};

    static Img hull(Img im, boolean council) {
        int n = im.px.length;
        int[] o = new int[n];
        float[] L = new float[n];
        for (int i = 0; i < n; i++) L[i] = lum(im.px[i]);
        float med = council ? 0 : percentile(im, L, 0.5f, 128f);
        for (int i = 0; i < n; i++) {
            int p = im.px[i];
            int r = (p >> 16) & 255, g = (p >> 8) & 255, b = p & 255;
            float l = L[i], v;
            if (council) {
                v = 0.85f * Math.min(l, 140f) + 6;
                o[i] = (p & 0xFF000000) | (clamp(v * COUNCIL[0]) << 16) | (clamp(v * COUNCIL[1]) << 8) | clamp(v * COUNCIL[2]);
                continue;
            }
            int mx = Math.max(r, Math.max(g, b)), mn = Math.min(r, Math.min(g, b));
            float paint = smooth((mx - mn) / (float) Math.max(mx, 1), 0.12f, 0.30f);
            float white = 255f * (float) Math.sqrt(l / 255f);
            float black = 0.30f * l + 8;
            float tw = smooth(l, med - 18, med + 18) * (1 - 0.5f * paint);
            v = tw * white + (1 - tw) * black;
            o[i] = (p & 0xFF000000) | (clamp(v * SILVER[0]) << 16) | (clamp(v * SILVER[1]) << 8) | clamp(v * SILVER[2]);
        }
        return new Img(im.w, im.h, o, im.opaque);
    }

    // ------------------------------------------------------------------ genpolice42.glow
    static final float[] LIGHT_RED = {1.00f, 0.12f, 0.10f}, LIGHT_BLUE = {0.15f, 0.42f, 1.00f}, ENGINE = {0.55f, 0.78f, 1.00f};
    static final float[] COUNCIL_RAW = {0.50f, 0.22f, 0.78f};

    static Img glow(Img im, boolean lights, boolean council) {
        int w = im.w, n = im.px.length;
        int[] o = new int[n];
        for (int i = 0; i < n; i++) {
            int p = im.px[i];
            float V = Math.max((p >> 16) & 255, Math.max((p >> 8) & 255, p & 255));
            float cr, cg, cb;
            if (council) {
                V *= 0.6f; cr = COUNCIL_RAW[0]; cg = COUNCIL_RAW[1]; cb = COUNCIL_RAW[2];
            } else if (lights) {
                float port = smooth(-((i % w) - w / 2f), -w * 0.01f, w * 0.01f);
                cr = port * LIGHT_RED[0] + (1 - port) * LIGHT_BLUE[0];
                cg = port * LIGHT_RED[1] + (1 - port) * LIGHT_BLUE[1];
                cb = port * LIGHT_RED[2] + (1 - port) * LIGHT_BLUE[2];
            } else {
                cr = ENGINE[0]; cg = ENGINE[1]; cb = ENGINE[2];
            }
            o[i] = (p & 0xFF000000) | (clamp(V * cr) << 16) | (clamp(V * cg) << 8) | clamp(V * cb);
        }
        return new Img(im.w, im.h, o, im.opaque);
    }

    // ------------------------------------------------------------------ genpolice43.accent (sprites only; auras are ModPoliceAura)
    static final float[] GOLD = {222, 178, 70}, BLOOD = {150, 8, 16}, LGOLD = {255, 228, 150}, VIOLET = {70, 30, 110},
        MGREEN = {64, 90, 48}, CAMO = {18, 20, 16}, DARKSPOT = {34, 26, 28};

    static Img accent(int fac, Img orig, Img pol, String name) {
        int w = orig.w, h = orig.h, n = orig.px.length;
        float S = Math.max(w, h) / 1024f;
        float[] or = new float[n], og = new float[n], ob = new float[n], L = new float[n], m = new float[n];
        float[] R = new float[n], G = new float[n], B = new float[n];
        for (int i = 0; i < n; i++) {
            int p = orig.px[i], q = pol.px[i];
            or[i] = (p >> 16) & 255; og[i] = (p >> 8) & 255; ob[i] = p & 255;
            L[i] = 0.299f * or[i] + 0.587f * og[i] + 0.114f * ob[i];
            m[i] = (orig.opaque || (p >>> 24) > 32) ? 255 : 0;
            R[i] = (q >> 16) & 255; G[i] = (q >> 8) & 255; B[i] = q & 255;
        }
        switch (fac) {
            case SPARTAN:
                for (int i = 0; i < n; i++) {
                    float r = or[i], g = og[i], b = ob[i];
                    float mx = Math.max(r, Math.max(g, b)), mn = Math.min(r, Math.min(g, b));
                    float sat = (mx - mn) / Math.max(mx, 1);
                    boolean gold = r > g && g > b && (g - b) / Math.max(r - b, 1) > 0.45f && mx > 90;
                    float k = gold && m[i] > 0 ? smooth(sat, 0.35f, 0.55f) * 0.95f : 0;
                    if (k > 0) mix(R, G, B, i, GOLD, k, 0.45f + 0.75f * L[i] / 255f);
                }
                break;
            case REAVER: {
                float[] rim = band(m, w, h, 10 * S);
                for (int i = 0; i < n; i++) {
                    float r = or[i], g = og[i], b = ob[i];
                    float mx = Math.max(r, Math.max(g, b)), mn = Math.min(r, Math.min(g, b));
                    float sat = (mx - mn) / Math.max(mx, 1);
                    float red = smooth(sat, 0.18f, 0.32f) * smooth(r / Math.max(Math.max(g, b), 1), 1.15f, 1.35f);
                    float t = Math.max(0, Math.min(1, L[i] / 255f));
                    float bs = 0.12f + 1.35f * (float) Math.pow(t, 1.2), ds = 0.35f + 1.4f * t;
                    R[i] = BLOOD[0] * bs * (1 - red) + DARKSPOT[0] * ds * red;
                    G[i] = BLOOD[1] * bs * (1 - red) + DARKSPOT[1] * ds * red;
                    B[i] = BLOOD[2] * bs * (1 - red) + DARKSPOT[2] * ds * red;
                    float k = m[i] > 0 ? rim[i] * 0.9f : 0;
                    if (k > 0) {
                        float sh = 0.6f + 0.6f * t;
                        R[i] = R[i] * (1 - k) + BLOOD[0] * 1.15f * sh * k;
                        G[i] = G[i] * (1 - k) + BLOOD[1] * 1.15f * sh * k;
                        B[i] = B[i] * (1 - k) + BLOOD[2] * 1.15f * sh * k;
                    }
                }
                break;
            }
            case KRETARI:
                for (int i = 0; i < n; i++) {
                    float mx = Math.max(or[i], Math.max(og[i], ob[i]));
                    float s = Math.min(1f, 150f / Math.max(mx, 1));
                    float v = 0.30f * (L[i] / 255f + 0.15f);
                    R[i] = or[i] * s * 0.5f + VIOLET[0] * v;
                    G[i] = og[i] * s * 0.5f + VIOLET[1] * v;
                    B[i] = ob[i] * s * 0.5f + VIOLET[2] * v;
                }
                break;
            case VARN: {
                float thr = percentile(orig, L, 0.70f, 128f);
                for (int i = 0; i < n; i++) {
                    float mx = Math.max(or[i], Math.max(og[i], ob[i])), mn = Math.min(or[i], Math.min(og[i], ob[i]));
                    float paint = smooth((mx - mn) / Math.max(mx, 1), 0.12f, 0.30f);
                    float white = 255f * (float) Math.sqrt(L[i] / 255f), black = 0.30f * L[i] + 8;
                    float tw = smooth(L[i], thr - 18, thr + 18) * (1 - 0.5f * paint);
                    R[i] = G[i] = B[i] = tw * white + (1 - tw) * black;
                }
                break;
            }
            case IRONCLAD: {
                float lo = percentile(orig, L, 0.03f, 0f), hi = percentile(orig, L, 0.97f, 255f);
                float[] spot = camo(w, h, name);
                for (int i = 0; i < n; i++) {
                    float x = Math.max(0, Math.min(1, (L[i] - lo) / Math.max(hi - lo, 1)));
                    float v = 0.10f + 1.30f * (float) Math.pow(x, 1.15);
                    R[i] = Math.min(255, MGREEN[0] * v); G[i] = Math.min(255, MGREEN[1] * v); B[i] = Math.min(255, MGREEN[2] * v);
                    float k = m[i] > 0 ? spot[i] * 0.80f : 0;
                    if (k > 0) mix(R, G, B, i, CAMO, k, 0.5f + 1.0f * L[i] / 255f);
                }
                break;
            }
            case HELION: {
                float[] bd = band(m, w, h, 7 * S);
                for (int i = 0; i < n; i++) {
                    float k = m[i] > 0 ? bd[i] * 0.65f : 0;
                    if (k > 0) mix(R, G, B, i, LGOLD, k, 0.85f + 0.15f * L[i] / 255f);
                }
                break;
            }
            default:
                break;
        }
        int[] o = new int[n];
        for (int i = 0; i < n; i++) o[i] = (orig.px[i] & 0xFF000000) | (clamp(R[i]) << 16) | (clamp(G[i]) << 8) | clamp(B[i]);
        return new Img(w, h, o, orig.opaque);
    }

    private static void mix(float[] R, float[] G, float[] B, int i, float[] col, float k, float shade) {
        R[i] = R[i] * (1 - k) + col[0] * shade * k;
        G[i] = G[i] * (1 - k) + col[1] * shade * k;
        B[i] = B[i] * (1 - k) + col[2] * shade * k;
    }

    /** Ironclad camo blotches 0..1: an 18x18 random grid, smoothed on a 128 px field, sampled bilinearly. */
    static float[] camo(int w, int h, String name) {
        Random rnd = new Random(name.hashCode());
        float[] g = new float[18 * 18];
        for (int i = 0; i < g.length; i++) g[i] = rnd.nextFloat();
        int F = 128;
        float[] f = new float[F * F];
        for (int y = 0; y < F; y++)
            for (int x = 0; x < F; x++) f[y * F + x] = bilinear(g, 18, 18, (x + 0.5f) * 18f / F - 0.5f, (y + 0.5f) * 18f / F - 0.5f);
        f = blur(f, F, F, F / 18f * 0.35f);
        float[] o = new float[w * h];
        for (int y = 0; y < h; y++)
            for (int x = 0; x < w; x++)
                o[y * w + x] = smooth(bilinear(f, F, F, (x + 0.5f) * F / w - 0.5f, (y + 0.5f) * F / h - 0.5f), 0.60f, 0.64f);
        return o;
    }

    static float bilinear(float[] a, int w, int h, float x, float y) {
        x = Math.max(0, Math.min(w - 1, x)); y = Math.max(0, Math.min(h - 1, y));
        int x0 = (int) x, y0 = (int) y, x1 = Math.min(w - 1, x0 + 1), y1 = Math.min(h - 1, y0 + 1);
        float fx = x - x0, fy = y - y0;
        float top = a[y0 * w + x0] * (1 - fx) + a[y0 * w + x1] * fx, bot = a[y1 * w + x0] * (1 - fx) + a[y1 * w + x1] * fx;
        return top * (1 - fy) + bot * fy;
    }
}
