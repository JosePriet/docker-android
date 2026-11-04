package fr.testudo.spacecorsair.mod;

import fr.testudo.spacecorsair.display.Texture;
import fr.testudo.spacecorsair.business.Element;
import fr.testudo.spacecorsair.engine.Vector2;

import java.util.WeakHashMap;

/**
 * v43 (owner 2026-11-04 04:03): animated police auras per faction, drawn under the hull (ModPolice.under).
 * Halo = mfx_pa_<art> (the hull silhouette dilated + blurred, PAD around the sprite; src/genpoliceaura43.py) drawn as a
 * flat tinted mask; particles start on the hull outline (ModPoliceEdges) and live in this class.
 *   spartan  thin gold flame (3 flickering layers drifting astern) + blue inner rim + gold/blue embers
 *   reaver   dark blood flame (normal-blend layers + smoke tongues astern) + heartbeat red rim + floating blood droplets
 *   helion   soft light-gold outline, slow shimmer + glints
 *   warden   soft blue aura, breathing + an outward ripple every 2.4 s
 *   kretari  High Council: dark violet haze + faint violet motes
 * Varn and Ironclad: lights only. Titans (pol_cap_<key>) use the same aura at their size.
 */
final class ModPoliceAura {
    private ModPoliceAura() { }

    static final int NONE = -1, SPARTAN = 0, REAVER = 1, KRETARI = 2, HELION = 5, WARDEN = 6;

    static final class A {
        final String art;
        final int fac;
        final float size;
        long nextSpawn;

        A(String art, int fac, float size) { this.art = art; this.fac = fac; this.size = size; }
    }

    private static final WeakHashMap<Element, A> auras = new WeakHashMap<Element, A>();

    /** fi = ModCapitals.FACTIONS index; art without pol_ (titans: cap_<key>). */
    static void put(Element e, String art, int fi, float size) {
        if (e == null || art == null) return;
        if (fi != SPARTAN && fi != REAVER && fi != KRETARI && fi != HELION && fi != WARDEN) return;
        ModArt.lazyTex("mfx_pa_" + art);
        ModArt.lazyTex(DROP);
        auras.put(e, new A(art, fi, size));
    }

    static boolean has(Element e) {
        return auras.containsKey(e);
    }

    // ------------------------------------------------------------------ halo
    private static final float HT = 0.5f / 256f;

    private static void halo(A a, Element e, float k, float ox, float oy, float r, float g, float b, float al, boolean add) {
        if (al <= 0.004f) return;
        Texture t = ModArt.ready("mfx_pa_" + a.art);
        if (t == null) return;
        float q = a.size * (1 + 2 * ModPoliceEdges.PAD) * k;
        ModFx.local(e.position, e.spin, ox * a.size, oy * a.size, pa);
        ModFx.flatNext = true;
        ModFx.sprTex(t, pa.x, pa.y, q, q, e.spin, Math.min(1, r), Math.min(1, g), Math.min(1, b), Math.min(1, al), add, HT, HT, 1 - HT, 1 - HT);
    }

    private static final Vector2 pa = new Vector2(), pb = new Vector2();

    // ------------------------------------------------------------------ particles (world units, ms)
    static final String DROP = "polfx_drop";
    static final int MAX = 420;
    static final int T_CORE = 0, T_GLOW = 1, T_SMOKE = 2, T_DROP = 3, T_SPARK = 4, T_FIRE = 5;
    private static final float[] px = new float[MAX], py = new float[MAX], vx = new float[MAX], vy = new float[MAX];
    private static final float[] life = new float[MAX], max = new float[MAX], s0 = new float[MAX], s1 = new float[MAX];
    private static final float[] cr = new float[MAX], cg = new float[MAX], cb = new float[MAX], ca = new float[MAX];
    private static final float[] rot = new float[MAX], vrot = new float[MAX], drag = new float[MAX], stretch = new float[MAX];
    private static final int[] tex = new int[MAX], tile = new int[MAX];
    private static final boolean[] add = new boolean[MAX];
    private static int live;
    private static long lastMs;

    private static void spawn(int t, float x, float y, float vx0, float vy0, float lifeMs, float sz0, float sz1,
                              float r, float g, float b, float a, boolean ad, float dr, float st) {
        int i = live < MAX ? live++ : (int) (Math.random() * MAX);
        tex[i] = t; px[i] = x; py[i] = y; vx[i] = vx0; vy[i] = vy0; life[i] = lifeMs; max[i] = lifeMs;
        s0[i] = sz0; s1[i] = sz1; cr[i] = r; cg[i] = g; cb[i] = b; ca[i] = a; add[i] = ad; drag[i] = dr; stretch[i] = st;
        rot[i] = (float) (Math.random() * 360); vrot[i] = (float) (Math.random() * 50 - 25); tile[i] = (int) (Math.random() * 4);
    }

    /** Once per frame (first police draw): advance every particle and queue them (under the hulls drawn after). */
    private static void tick(long now) {
        if (now == lastMs) return;
        float dtMs = lastMs == 0 ? 16 : Math.min(60, Math.max(0, now - lastMs));
        lastMs = now;
        float dt = dtMs / 1000f;
        for (int i = 0; i < live; i++) {
            life[i] -= dtMs;
            if (life[i] <= 0) {
                live--;
                copy(live, i);
                i--;
                continue;
            }
            if (drag[i] > 0) {
                float k = Math.max(0, 1 - drag[i] * dt);
                vx[i] *= k; vy[i] *= k;
            }
            px[i] += vx[i] * dt; py[i] += vy[i] * dt; rot[i] += vrot[i] * dt;
        }
        for (int i = 0; i < live; i++) {
            float t = 1 - life[i] / max[i];
            float s = s0[i] + (s1[i] - s0[i]) * t;
            float a = ca[i] * (t < 0.15f ? t / 0.15f : (1 - t) / 0.85f);
            float w = s, h = s, r = rot[i];
            if (stretch[i] > 0) {
                float sp = (float) Math.sqrt(vx[i] * vx[i] + vy[i] * vy[i]);
                h = s + sp * stretch[i];
                r = (float) Math.toDegrees(Math.atan2(vy[i], vx[i])) - 90.0f;
            }
            switch (tex[i]) {
                case T_DROP: {
                    Texture tx = ModArt.ready(DROP);
                    if (tx == null) break;
                    float u0 = (tile[i] % 2) * 0.5f, v0 = (tile[i] / 2) * 0.5f;
                    ModFx.sprTex(tx, px[i], py[i], w, h, r, cr[i], cg[i], cb[i], a, add[i], u0 + 0.004f, v0 + 0.004f, u0 + 0.496f, v0 + 0.496f);
                    break;
                }
                case T_SMOKE: ModFx.spr("fx_smoke", px[i], py[i], w, h, r, cr[i], cg[i], cb[i], a, add[i]); break;
                case T_FIRE: ModFx.spr("fx_fire", px[i], py[i], w, h, r, cr[i], cg[i], cb[i], a, add[i]); break;
                case T_GLOW: ModFx.spr("fx_glow", px[i], py[i], w, h, r, cr[i], cg[i], cb[i], a, add[i]); break;
                case T_SPARK: ModFx.spr("fx_spark", px[i], py[i], w, h, r, cr[i], cg[i], cb[i], a, add[i]); break;
                default: ModFx.spr("fx_core", px[i], py[i], w, h, r, cr[i], cg[i], cb[i], a, add[i]); break;
            }
        }
    }

    private static void copy(int f, int t) {
        tex[t] = tex[f]; px[t] = px[f]; py[t] = py[f]; vx[t] = vx[f]; vy[t] = vy[f]; life[t] = life[f]; max[t] = max[f];
        s0[t] = s0[f]; s1[t] = s1[f]; cr[t] = cr[f]; cg[t] = cg[f]; cb[t] = cb[f]; ca[t] = ca[f]; add[t] = add[f];
        drag[t] = drag[f]; stretch[t] = stretch[f]; rot[t] = rot[f]; vrot[t] = vrot[f]; tile[t] = tile[f];
    }

    /** Random outline point of the hull (world) into pa, and its outward unit direction (world) into pb. */
    private static boolean edge(A a, Element e) {
        float[] p = ModPoliceEdges.get(a.art);
        if (p == null || p.length < 2) return false;
        int n = p.length / 2, i = (int) (Math.random() * n);
        float lx = p[2 * i] * a.size, ly = p[2 * i + 1] * a.size;
        ModFx.local(e.position, e.spin, lx, ly, pa);
        float d = (float) Math.sqrt(lx * lx + ly * ly);
        if (d < 1) d = 1;
        ModFx.local(e.position, e.spin, lx / d, ly / d, pb);
        pb.x -= e.position.x; pb.y -= e.position.y;
        return true;
    }

    /** Ship astern unit vector (world) into pb. */
    private static void astern(Element e) {
        ModFx.local(e.position, e.spin, 0, 1, pb);
        pb.x -= e.position.x; pb.y -= e.position.y;
    }

    // ------------------------------------------------------------------ per ship (ModPolice.under, before the hull)
    static void under(Element e) {
        A a = auras.get(e);
        if (a == null || e.removed) return;
        long now = System.currentTimeMillis();
        tick(now);
        float t = (now % 600000L) / 1000f;
        float S = a.size;
        boolean emit = now >= a.nextSpawn;
        switch (a.fac) {
            case SPARTAN: {
                for (int i = 0; i < 3; i++) {
                    float fl = 0.70f + 0.30f * (float) Math.sin(t * 9 + i * 1.7f) * (float) Math.sin(t * 3.1f + i);
                    float k = 1.0f + 0.025f * i + 0.008f * (float) Math.sin(t * 6 + i);
                    float ox = 0.005f * (float) Math.sin(t * 11 + i * 2), oy = 0.018f * i + 0.008f * (float) Math.sin(t * 7 + i);
                    halo(a, e, k, ox, oy, 1f, 0.78f, 0.37f, 0.27f * fl, true);
                }
                halo(a, e, 0.985f, 0, 0, 0.43f, 0.67f, 1f, 0.16f + 0.04f * (float) Math.sin(t * 2.3f), true);
                if (emit && edge(a, e)) {
                    a.nextSpawn = now + 70;
                    float ex = pa.x, ey = pa.y, nx = pb.x, ny = pb.y;
                    astern(e);
                    boolean blue = Math.random() < 0.3;
                    float v = S * 0.22f;
                    spawn(T_CORE, ex, ey, pb.x * v + nx * S * 0.05f, pb.y * v + ny * S * 0.05f, 750, S * 0.040f, S * 0.010f,
                            blue ? 0.45f : 1f, blue ? 0.68f : 0.80f, blue ? 1f : 0.40f, 0.80f, true, 0.6f, 0.25f);
                }
                break;
            }
            case REAVER: {
                // dark blood flame: normal-blend dark red layers flickering astern, heartbeat red rim (additive)
                for (int i = 0; i < 3; i++) {
                    float fl = 0.75f + 0.25f * (float) Math.sin(t * 8 + i * 2.1f);
                    float k = 1.0f + 0.045f * i + 0.015f * (float) Math.sin(t * 5 + i);
                    float oy = 0.03f * i + 0.01f * (float) Math.sin(t * 6.3f + i);
                    halo(a, e, k, 0.006f * (float) Math.sin(t * 9 + i), oy, 0.20f, 0.01f, 0.03f, 0.60f * fl, false);
                    halo(a, e, k, 0, oy, 0.35f, 0.02f, 0.03f, 0.05f * fl, true);
                }
                float beat = (t % 1.1f) / 1.1f;     // lub-dub
                float hb = (float) (Math.exp(-Math.pow((beat - 0.05f) / 0.05f, 2)) + 0.6 * Math.exp(-Math.pow((beat - 0.22f) / 0.05f, 2)));
                halo(a, e, 0.99f, 0, 0, 0.75f, 0.05f, 0.06f, 0.10f + 0.22f * hb, true);
                if (emit && edge(a, e)) {
                    a.nextSpawn = now + 40;
                    float ex = pa.x, ey = pa.y, nx = pb.x, ny = pb.y;
                    astern(e);
                    double rr = Math.random();
                    if (rr < 0.40) {                  // blood flame tongue licking astern (additive red fire)
                        float v = S * (0.20f + (float) Math.random() * 0.10f);
                        spawn(T_FIRE, ex, ey, pb.x * v + nx * S * 0.12f, pb.y * v + ny * S * 0.12f, 700, S * 0.09f, S * 0.15f,
                                0.85f, 0.07f, 0.06f, 0.75f, true, 0.3f, 0.8f);
                    } else if (rr < 0.70) {           // dark smoke of the flame (normal blend, near black red)
                        float v = S * 0.16f;
                        spawn(T_SMOKE, ex, ey, pb.x * v + nx * S * 0.09f, pb.y * v + ny * S * 0.09f, 1100, S * 0.08f, S * 0.15f,
                                0.16f, 0.0f, 0.02f, 0.75f, false, 0.4f, 0.35f);
                    } else {                          // blood droplet floating out, slowing, slowly spinning
                        float v = S * (0.05f + (float) Math.random() * 0.06f);
                        float sz = S * (0.03f + (float) Math.random() * 0.035f);
                        spawn(T_DROP, ex, ey, nx * v + pb.x * S * 0.02f, ny * v + pb.y * S * 0.02f, 1800, sz, sz * 0.8f,
                                0.58f, 0.03f, 0.06f, 1f, false, 0.9f, 0);
                    }
                }
                break;
            }
            case HELION: {
                float sh = 0.80f + 0.20f * (float) Math.sin(t * 2.1f);
                halo(a, e, 0.975f, 0, 0, 1f, 0.89f, 0.59f, 0.30f * sh, true);
                if (emit && edge(a, e)) {
                    a.nextSpawn = now + 260;
                    spawn(T_SPARK, pa.x, pa.y, pb.x * S * 0.01f, pb.y * S * 0.01f, 650, S * 0.05f, S * 0.01f, 1f, 0.92f, 0.65f, 0.75f, true, 0, 0);
                }
                break;
            }
            case WARDEN: {
                float br = 0.85f + 0.15f * (float) Math.sin(2 * Math.PI * t / 2.4);
                halo(a, e, 1.0f + 0.015f * (float) Math.sin(2 * Math.PI * t / 2.4), 0, 0, 0.43f, 0.67f, 1f, 0.50f * br, true);
                float p = (t % 2.4f) / 2.4f;
                halo(a, e, 1.0f + 0.13f * p, 0, 0, 0.50f, 0.75f, 1f, 0.30f * (1 - p) * (1 - p), true);
                break;
            }
            case KRETARI: {
                float br = 0.85f + 0.15f * (float) Math.sin(t * 1.3f);
                halo(a, e, 1.02f + 0.02f * (float) Math.sin(t * 0.9f), 0, 0.01f, 0.10f, 0.03f, 0.16f, 0.50f * br, false);
                halo(a, e, 1.0f, 0, 0, 0.40f, 0.18f, 0.65f, 0.20f * br, true);
                if (emit && edge(a, e)) {
                    a.nextSpawn = now + 180;
                    spawn(T_GLOW, pa.x, pa.y, pb.x * S * 0.03f, pb.y * S * 0.03f, 1600, S * 0.04f, S * 0.07f, 0.45f, 0.2f, 0.7f, 0.45f, true, 0.5f, 0);
                }
                break;
            }
            default:
                break;
        }
    }

    static void remove(Element e) {
        if (e != null) auras.remove(e);
    }

    static void clearAll() {
        auras.clear();
        live = 0;
        lastMs = 0;
    }
}
