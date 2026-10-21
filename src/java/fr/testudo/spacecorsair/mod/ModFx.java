package fr.testudo.spacecorsair.mod;

import fr.testudo.spacecorsair.display.Drawable;
import fr.testudo.spacecorsair.display.Texture;
import fr.testudo.spacecorsair.engine.GameRenderer;
import fr.testudo.spacecorsair.engine.ObjectRegistry;
import fr.testudo.spacecorsair.engine.Vector2;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.FloatBuffer;
import javax.microedition.khronos.opengles.GL10;

/**
 * Small effects engine on top of the game's render queue: sprites with any width/height, rotation, tint and
 * optional additive blending (the stock Drawable only has a fixed square size and alpha blending), plus a
 * pooled particle system. Everything is queued from the game thread like the stock elements.
 */
public final class ModFx {
    private ModFx() {}

    // ------------------------------------------------------------------ scalable sprite
    private static final FloatBuffer QUAD = buf(new float[]{-0.5f, -0.5f, 0, 0.5f, -0.5f, 0, -0.5f, 0.5f, 0, 0.5f, 0.5f, 0});
    private static final FloatBuffer UV = buf(new float[]{0, 0, 1, 0, 0, 1, 1, 1});

    private static FloatBuffer buf(float[] v) {
        ByteBuffer b = ByteBuffer.allocateDirect(v.length * 4);
        b.order(ByteOrder.nativeOrder());
        FloatBuffer f = b.asFloatBuffer();
        f.put(v);
        f.position(0);
        return f;
    }

    /** A render-queue drawable with its own size and blend mode. Instances are recycled through a ring. */
    public static final class Sprite extends Drawable {
        float w = 1, h = 1;
        boolean additive;
        /** v24: texture sub-rectangle (flipbook frames, tiling); default the whole texture. repeatT: GL_REPEAT on T for this draw. */
        float u0 = 0, v0 = 0, u1 = 1, v1 = 1;
        boolean repeatT;
        /** v30: draw the texture's shape in the flat tint colour (rim lights): RGB = vertex colour, alpha = texture alpha. */
        boolean flat;
        /** v33: per-corner alpha, v0 side then v1 side (x the queued alpha); null = uniform. Wreck burn gradients. */
        float[] edgeA;
        private FloatBuffer uv, col;
        private float bu0 = 0, bv0 = 0, bu1 = 1, bv1 = 1;

        void fullUV() {
            u0 = 0; v0 = 0; u1 = 1; v1 = 1;
            repeatT = false;
        }

        private FloatBuffer uvBuf() {
            if (u0 == 0 && v0 == 0 && u1 == 1 && v1 == 1) return UV;
            if (uv == null || bu0 != u0 || bv0 != v0 || bu1 != u1 || bv1 != v1) {
                if (uv == null) uv = buf(new float[8]);
                uv.put(0, u0); uv.put(1, v0); uv.put(2, u1); uv.put(3, v0);
                uv.put(4, u0); uv.put(5, v1); uv.put(6, u1); uv.put(7, v1);
                uv.position(0);
                bu0 = u0; bv0 = v0; bu1 = u1; bv1 = v1;
            }
            return uv;
        }

        Sprite() {
            super(1, null);
        }

        @Override
        public void draw(GL10 gl, Vector2 p, float spin, boolean cameraRelative, float a, float r, float g, float b, boolean zoomInsensitive, boolean background) {
            if (this == PUMP) {
                ModArt.pump(gl);   // GL thread, before the player's hull: uploads lazy textures drawn this frame
                return;
            }
            Texture t = myTexture;
            if (t == null) return;
            if (t instanceof ModArt.Lazy) ModArt.use(gl, (ModArt.Lazy) t);
            if (additive) gl.glBlendFunc(GL10.GL_SRC_ALPHA, GL10.GL_ONE);
            gl.glEnable(GL10.GL_TEXTURE_2D);
            gl.glBindTexture(GL10.GL_TEXTURE_2D, t.name);
            gl.glLoadIdentity();
            float z = (-ObjectRegistry.INSTANCE.config.Zindex) - (zoomInsensitive ? 0.0f : ObjectRegistry.INSTANCE.camera.curZDecal);
            if (cameraRelative) {
                gl.glTranslatef(p.x - GameRenderer.screenMidWidthX, p.y - GameRenderer.screenMidWidthY, z);
            } else {
                gl.glTranslatef(p.x - ObjectRegistry.INSTANCE.camera.centerPosition.x, p.y - ObjectRegistry.INSTANCE.camera.centerPosition.y, z);
            }
            gl.glEnableClientState(GL10.GL_VERTEX_ARRAY);
            gl.glEnableClientState(GL10.GL_TEXTURE_COORD_ARRAY);
            gl.glColor4f(r, g, b, a);
            gl.glVertexPointer(3, GL10.GL_FLOAT, 0, QUAD);
            gl.glTexCoordPointer(2, GL10.GL_FLOAT, 0, uvBuf());
            boolean rep = repeatT;
            if (rep) gl.glTexParameterf(GL10.GL_TEXTURE_2D, GL10.GL_TEXTURE_WRAP_T, 0x2901);
            gl.glRotatef(spin, 0, 0, 1);
            gl.glScalef(w, h, 1);
            boolean fl = flat;
            if (fl) {
                // GLES 1.1 texture combiner: colour from glColor, alpha = texture alpha x glColor alpha
                gl.glTexEnvf(GL10.GL_TEXTURE_ENV, GL10.GL_TEXTURE_ENV_MODE, 0x8570);        // GL_COMBINE
                gl.glTexEnvf(GL10.GL_TEXTURE_ENV, 0x8571, 0x1E01);                 // COMBINE_RGB
                gl.glTexEnvf(GL10.GL_TEXTURE_ENV, 0x8580, 0x8577);                          // SRC0_RGB = PRIMARY_COLOR
                gl.glTexEnvf(GL10.GL_TEXTURE_ENV, 0x8590, 0x0300);               // OPERAND0_RGB
                gl.glTexEnvf(GL10.GL_TEXTURE_ENV, 0x8572, GL10.GL_MODULATE);                // COMBINE_ALPHA
                gl.glTexEnvf(GL10.GL_TEXTURE_ENV, 0x8588, 0x1702);                 // SRC0_ALPHA
                gl.glTexEnvf(GL10.GL_TEXTURE_ENV, 0x8598, 0x0302);               // OPERAND0_ALPHA
                gl.glTexEnvf(GL10.GL_TEXTURE_ENV, 0x8589, 0x8577);                          // SRC1_ALPHA = PRIMARY_COLOR
                gl.glTexEnvf(GL10.GL_TEXTURE_ENV, 0x8599, 0x0302);               // OPERAND1_ALPHA
            }
            float[] ea = edgeA;
            if (ea != null) {
                if (col == null) col = buf(new float[16]);
                for (int i = 0; i < 4; i++) {
                    col.put(i * 4, r); col.put(i * 4 + 1, g); col.put(i * 4 + 2, b);
                    col.put(i * 4 + 3, a * (i < 2 ? ea[0] : ea[1]));
                }
                gl.glEnableClientState(GL10.GL_COLOR_ARRAY);
                gl.glColorPointer(4, GL10.GL_FLOAT, 0, col);
            }
            gl.glDrawArrays(GL10.GL_TRIANGLE_STRIP, 0, 4);
            if (ea != null) gl.glDisableClientState(GL10.GL_COLOR_ARRAY);
            if (fl) gl.glTexEnvf(GL10.GL_TEXTURE_ENV, GL10.GL_TEXTURE_ENV_MODE, GL10.GL_MODULATE);
            if (rep) gl.glTexParameterf(GL10.GL_TEXTURE_2D, GL10.GL_TEXTURE_WRAP_T, GL10.GL_CLAMP_TO_EDGE);
            gl.glColor4f(1, 1, 1, 1);
            gl.glDisableClientState(GL10.GL_VERTEX_ARRAY);
            gl.glDisableClientState(GL10.GL_TEXTURE_COORD_ARRAY);
            gl.glDisable(GL10.GL_TEXTURE_2D);
            if (additive) gl.glBlendFunc(GL10.GL_SRC_ALPHA, GL10.GL_ONE_MINUS_SRC_ALPHA);
        }
    }

    /** Draws nothing: stands in for sprites the mod draws itself (titan turrets). */
    public static final Sprite EMPTY = new Sprite();

    /** Draws nothing either: queued once per frame before the player's hull to run ModArt.pump on the GL thread. */
    static final Sprite PUMP = new Sprite();
    private static final Vector2 pumpAt = new Vector2();
    static {
        PUMP.myTexture = new Texture();   // the render queue skips drawables without a texture
    }

    // two frames of queue (render thread draws the previous one)
    private static final Sprite[] RING = new Sprite[3200];   // v30: up to ~1400 per frame, two frames in flight
    private static int ringPos;
    static {
        for (int i = 0; i < RING.length; i++) RING[i] = new Sprite();
    }

    /** A fixed sprite (same size every time), e.g. the titan bolt. */
    public static Sprite fixed(String tex, float w, float h, boolean additive) {
        Sprite s = new Sprite();
        s.myTexture = tex(tex);
        s.w = w;
        s.h = h;
        s.additive = additive;
        return s;
    }

    /** Re-binds a fixed sprite's texture after a GL context loss. */
    public static void rebind(Sprite s, String tex) {
        if (s != null) s.myTexture = tex(tex);
    }

    private static final Vector2 at = new Vector2();
    public static int budget;
    /** v30: queue in screen coordinates (camera-relative, like the player's hull) instead of world coordinates. */
    static boolean relative;

    /** Queue one sprite in world coordinates. rot in degrees; local +y of the texture = rot direction rotated. */
    public static void spr(String tex, float x, float y, float w, float h, float rot, float r, float g, float b, float a, boolean add) {
        Sprite s = take(tex, a);
        if (s == null) return;
        s.fullUV();
        s.flat = false;
        queue(s, x, y, w, h, rot, r, g, b, a, add);
    }

    /** v24: like spr, drawing only the texture rectangle (u0,v0)-(u1,v1); repeatT tiles a POT texture along T (v may exceed 1). */
    public static void sprUV(String tex, float x, float y, float w, float h, float rot, float r, float g, float b, float a, boolean add,
                             float u0, float v0, float u1, float v1, boolean repeatT) {
        Sprite s = take(tex, a);
        if (s == null) return;
        s.flat = false;
        s.u0 = u0; s.v0 = v0; s.u1 = u1; s.v1 = v1;
        s.repeatT = repeatT;
        queue(s, x, y, w, h, rot, r, g, b, a, add);
    }

    /** v24: one frame of a row-major cols x rows flipbook (frame 0 = top-left). */
    public static void flip(String tex, int cols, int rows, int frame, float x, float y, float size, float rot, float r, float g, float b, float a, boolean add) {
        int n = cols * rows;
        if (frame < 0 || frame >= n) return;
        float cu = 1.0f / cols, cv = 1.0f / rows;
        int c = frame % cols, rw = frame / cols;
        sprUV(tex, x, y, size, size, rot, r, g, b, a, add, c * cu, rw * cv, (c + 1) * cu, (rw + 1) * cv, false);
    }

    /** v30: any texture (game sprite, wreck piece, on-demand art), optionally a sub-rectangle; w/h in world units. */
    public static void sprTex(Texture t, float x, float y, float w, float h, float rot, float r, float g, float b, float a, boolean add,
                              float u0, float v0, float u1, float v1) {
        boolean fl = flatNext;
        flatNext = false;
        if (t == null || a <= 0.01f || budget <= 0) return;
        budget--;
        Sprite s = RING[ringPos];
        ringPos = (ringPos + 1) % RING.length;
        s.myTexture = t;
        s.u0 = u0; s.v0 = v0; s.u1 = u1; s.v1 = v1;
        s.repeatT = false;
        s.flat = fl;
        queue(s, x, y, w, h, rot, r, g, b, a, add);
    }

    /** v30: the next sprTex draws a flat-colour silhouette (rim lights). */
    static boolean flatNext;

    /** v30: on-demand art (ModArt.ready): skipped until the texture is on the GPU. */
    public static void sprR(String tex, float x, float y, float w, float h, float rot, float r, float g, float b, float a, boolean add) {
        Texture t = ModArt.ready(tex);
        if (t != null) sprTex(t, x, y, w, h, rot, r, g, b, a, add, 0, 0, 1, 1);
    }

    /** v30: one frame of an on-demand row-major flipbook. */
    public static void flipR(String tex, int cols, int rows, int frame, float x, float y, float size, float rot, float r, float g, float b, float a, boolean add) {
        int n = cols * rows;
        if (frame < 0 || frame >= n) return;
        Texture t = ModArt.ready(tex);
        if (t == null) return;
        float cu = 1.0f / cols, cv = 1.0f / rows;
        int c = frame % cols, rw = frame / cols;
        sprTex(t, x, y, size, size, rot, r, g, b, a, add, c * cu, rw * cv, (c + 1) * cu, (rw + 1) * cv);
    }

    private static Sprite take(String tex, float a) {
        Texture t = tex(tex);
        if (t == null || a <= 0.01f || budget <= 0) return null;
        budget--;
        Sprite s = RING[ringPos];
        ringPos = (ringPos + 1) % RING.length;
        s.myTexture = t;
        return s;
    }

    private static void queue(Sprite s, float x, float y, float w, float h, float rot, float r, float g, float b, float a, boolean add) {
        s.w = w;
        s.h = h;
        s.additive = add;
        at.set(x, y);
        ObjectRegistry.INSTANCE.renderQueue.addToWaitingQueue(at, relative, s, rot, false, Math.min(1.0f, a), r, g, b);
    }

    /** A stretched strip from (x1,y1) to (x2,y2). */
    public static void strip(String tex, float x1, float y1, float x2, float y2, float width, float r, float g, float b, float a, boolean add) {
        float dx = x2 - x1, dy = y2 - y1;
        float len = (float) Math.sqrt(dx * dx + dy * dy);
        if (len < 1) return;
        float rot = (float) Math.toDegrees(Math.atan2(dy, dx)) - 90.0f;
        spr(tex, (x1 + x2) / 2, (y1 + y2) / 2, width, len, rot, r, g, b, a, add);
    }

    private static final Vector2 la = new Vector2(), lb = new Vector2();

    /** Thin line (the game's own line primitive). */
    public static void line(float x1, float y1, float x2, float y2, float r, float g, float b, float a) {
        if (budget <= 0) return;
        budget--;
        la.set(x1, y1);
        lb.set(x2, y2);
        ObjectRegistry.INSTANCE.renderQueue.addToWaitingQueue(la, lb, false, a, r, g, b);
    }

    // ------------------------------------------------------------------ tracker arrows (ModBoss, ModFaction)
    private static Drawable[] arrows;
    private static Texture arrowTex;

    /**
     * A stock square drawable of {@code (int) size} for the tracker arrows, cached per integer size: the arrow size
     * follows the zoom every frame, and a new Drawable allocates two direct buffers. Same pixels as
     * {@code new Drawable(new Vector2(size, size), tex)}. Game thread.
     */
    static Drawable arrow(Texture tex, float size) {
        int s = (int) size;
        if (s < 0 || s >= 2048) return new Drawable(new Vector2(size, size), tex);
        if (arrows == null || arrowTex != tex) {
            arrows = new Drawable[2048];
            arrowTex = tex;
        }
        Drawable d = arrows[s];
        if (d == null) {
            d = new Drawable(new Vector2(size, size), tex);
            arrows[s] = d;
        }
        return d;
    }

    // ------------------------------------------------------------------ textures
    public static final String[] TEXTURES = {"fx_glow", "fx_core", "fx_ring", "fx_shock", "fx_smoke", "fx_fire", "fx_spark", "fx_plus", "fx_hex",
        "fx_flame", "fx_beam", "fx_beamcore", "fx_bolt", "fx_streak", "fx_scorch", "fx_crack", "fx_lance",
        // v24 batch 3 (greyscale on black, additive)
        "vfx_shield_bubble", "vfx_shield_hit", "vfx_explosion_sheet", "vfx_nova_ring", "vfx_doomsday_charge", "vfx_lance_core"};

    static Texture tex(String name) {
        return ModArt.texture(name);
    }

    // ------------------------------------------------------------------ particles
    static final int MAX = 360;
    static final String[] ptex = new String[MAX];
    static final float[] px = new float[MAX], py = new float[MAX], pvx = new float[MAX], pvy = new float[MAX];
    static final float[] plife = new float[MAX], pmax = new float[MAX], ps0 = new float[MAX], ps1 = new float[MAX];
    static final float[] pr = new float[MAX], pg = new float[MAX], pb = new float[MAX], pa = new float[MAX];
    static final float[] prot = new float[MAX], pvrot = new float[MAX], pdrag = new float[MAX], pstretch = new float[MAX];
    static final boolean[] padd = new boolean[MAX], pover = new boolean[MAX];
    static int live;

    /**
     * Spawns a particle. life in ms, sizes in world units, velocity in units per second.
     * stretch > 0 elongates the sprite along its velocity (sparks, streaks).
     */
    public static void part(String tex, float x, float y, float vx, float vy, float life, float size0, float size1,
                            float r, float g, float b, float a, boolean add, boolean over) {
        int i;
        if (live < MAX) {
            i = live++;
        } else {
            // full: replace the oldest-looking (most used) slot
            i = (int) (Math.random() * MAX);
        }
        ptex[i] = tex;
        px[i] = x; py[i] = y; pvx[i] = vx; pvy[i] = vy;
        plife[i] = life; pmax[i] = life; ps0[i] = size0; ps1[i] = size1;
        pr[i] = r; pg[i] = g; pb[i] = b; pa[i] = a;
        prot[i] = (float) (Math.random() * 360); pvrot[i] = (float) (Math.random() * 60 - 30);
        pdrag[i] = 0; pstretch[i] = 0;
        padd[i] = add; pover[i] = over;
        last = i;
    }

    static int last;

    /** Tweak the particle just spawned. */
    public static void lastDrag(float d) { pdrag[last] = d; }
    public static void lastStretch(float s) { pstretch[last] = s; }
    public static void lastSpin(float rot, float vrot) { prot[last] = rot; pvrot[last] = vrot; }

    // ------------------------------------------------------------------ v24 flipbook explosions (vfx_explosion_sheet, 8x8 row-major)
    static final String BOOM_TEX = "vfx_explosion_sheet";
    static final int BOOM_COLS = 8, BOOM_FRAMES = 64, BOOM_MAX = 24;
    static final float[] bx = new float[BOOM_MAX], by = new float[BOOM_MAX], bsize = new float[BOOM_MAX], brot = new float[BOOM_MAX];
    static final float[] bage = new float[BOOM_MAX], bdur = new float[BOOM_MAX], br = new float[BOOM_MAX], bg = new float[BOOM_MAX], bb = new float[BOOM_MAX];
    static int booms;

    /**
     * Animated explosion on top of the particles (they stay: the flipbook adds the fireball). size = full frame width in
     * world units, ms = whole animation, tint multiplies the greyscale art (additive).
     */
    public static void boom(float x, float y, float size, float ms, float r, float g, float b) {
        if (tex(BOOM_TEX) == null) return;
        int i = booms < BOOM_MAX ? booms++ : (int) (Math.random() * BOOM_MAX);
        bx[i] = x; by[i] = y; bsize[i] = size; brot[i] = (float) (Math.random() * 360);
        bage[i] = 0; bdur[i] = Math.max(100, ms); br[i] = r; bg[i] = g; bb[i] = b;
    }

    /** Advance all particles (game thread, once per frame). */
    public static void update(long j) {
        float dt = j / 1000.0f;
        for (int i = 0; i < booms; i++) {
            bage[i] += j;
            if (bage[i] >= bdur[i]) {
                booms--;
                bx[i] = bx[booms]; by[i] = by[booms]; bsize[i] = bsize[booms]; brot[i] = brot[booms]; bage[i] = bage[booms];
                bdur[i] = bdur[booms]; br[i] = br[booms]; bg[i] = bg[booms]; bb[i] = bb[booms];
                i--;
            }
        }
        for (int i = 0; i < live; i++) {
            plife[i] -= j;
            if (plife[i] <= 0) {
                live--;
                copy(live, i);
                i--;
                continue;
            }
            if (pdrag[i] > 0) {
                float k = Math.max(0, 1 - pdrag[i] * dt);
                pvx[i] *= k;
                pvy[i] *= k;
            }
            px[i] += pvx[i] * dt;
            py[i] += pvy[i] * dt;
            prot[i] += pvrot[i] * dt;
        }
    }

    private static void copy(int from, int to) {
        ptex[to] = ptex[from]; px[to] = px[from]; py[to] = py[from]; pvx[to] = pvx[from]; pvy[to] = pvy[from];
        plife[to] = plife[from]; pmax[to] = pmax[from]; ps0[to] = ps0[from]; ps1[to] = ps1[from];
        pr[to] = pr[from]; pg[to] = pg[from]; pb[to] = pb[from]; pa[to] = pa[from];
        prot[to] = prot[from]; pvrot[to] = pvrot[from]; pdrag[to] = pdrag[from]; pstretch[to] = pstretch[from];
        padd[to] = padd[from]; pover[to] = pover[from];
    }

    /** Queue the particles of one layer (over = drawn after the player ship). */
    public static void drawParticles(boolean over) {
        if (!over) ObjectRegistry.INSTANCE.renderQueue.addToWaitingQueue(pumpAt, false, PUMP, 0.0f);
        if (over) {
            for (int i = 0; i < booms; i++) {
                float t = bage[i] / bdur[i];
                int f = Math.min(BOOM_FRAMES - 1, (int) (t * BOOM_FRAMES));
                flip(BOOM_TEX, BOOM_COLS, BOOM_FRAMES / BOOM_COLS, f, bx[i], by[i], bsize[i], brot[i], br[i], bg[i], bb[i], 1.0f, true);
            }
        }
        for (int i = 0; i < live; i++) {
            if (pover[i] != over) continue;
            float t = 1 - plife[i] / pmax[i];
            float s = ps0[i] + (ps1[i] - ps0[i]) * t;
            float a = pa[i] * (t < 0.15f ? t / 0.15f : (1 - t) / 0.85f);
            if (pstretch[i] > 0) {
                float sp = (float) Math.sqrt(pvx[i] * pvx[i] + pvy[i] * pvy[i]);
                float rot = (float) Math.toDegrees(Math.atan2(pvy[i], pvx[i])) - 90.0f;
                spr(ptex[i], px[i], py[i], s, s + sp * pstretch[i], rot, pr[i], pg[i], pb[i], a, padd[i]);
            } else {
                spr(ptex[i], px[i], py[i], s, s, prot[i], pr[i], pg[i], pb[i], a, padd[i]);
            }
        }
    }

    public static void clear() {
        live = 0;
        booms = 0;
    }

    // ------------------------------------------------------------------ helpers for ship-local positions
    static final Vector2 v = new Vector2();

    /** Ship-local (x, y) (+y = stern) to world, written into out. */
    public static Vector2 local(Vector2 pos, float spin, float lx, float ly, Vector2 out) {
        out.set(lx, ly).applyRotatation(Math.toRadians(spin)).add(pos);
        return out;
    }

    static float rnd(float a, float b) {
        return a + (float) Math.random() * (b - a);
    }
}
