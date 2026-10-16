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

        Sprite() {
            super(1, null);
        }

        @Override
        public void draw(GL10 gl, Vector2 p, float spin, boolean cameraRelative, float a, float r, float g, float b, boolean zoomInsensitive, boolean background) {
            Texture t = myTexture;
            if (t == null) return;
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
            gl.glTexCoordPointer(2, GL10.GL_FLOAT, 0, UV);
            gl.glRotatef(spin, 0, 0, 1);
            gl.glScalef(w, h, 1);
            gl.glDrawArrays(GL10.GL_TRIANGLE_STRIP, 0, 4);
            gl.glColor4f(1, 1, 1, 1);
            gl.glDisableClientState(GL10.GL_VERTEX_ARRAY);
            gl.glDisableClientState(GL10.GL_TEXTURE_COORD_ARRAY);
            gl.glDisable(GL10.GL_TEXTURE_2D);
            if (additive) gl.glBlendFunc(GL10.GL_SRC_ALPHA, GL10.GL_ONE_MINUS_SRC_ALPHA);
        }
    }

    /** Draws nothing: stands in for sprites the mod draws itself (titan turrets). */
    public static final Sprite EMPTY = new Sprite();

    // two frames of queue (render thread draws the previous one) never exceed 2 x 1000 elements
    private static final Sprite[] RING = new Sprite[2400];
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

    /** Queue one sprite in world coordinates. rot in degrees; local +y of the texture = rot direction rotated. */
    public static void spr(String tex, float x, float y, float w, float h, float rot, float r, float g, float b, float a, boolean add) {
        Texture t = tex(tex);
        if (t == null || a <= 0.01f || budget <= 0) return;
        budget--;
        Sprite s = RING[ringPos];
        ringPos = (ringPos + 1) % RING.length;
        s.myTexture = t;
        s.w = w;
        s.h = h;
        s.additive = add;
        at.set(x, y);
        ObjectRegistry.INSTANCE.renderQueue.addToWaitingQueue(at, false, s, rot, false, Math.min(1.0f, a), r, g, b);
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

    // ------------------------------------------------------------------ textures
    public static final String[] TEXTURES = {"fx_glow", "fx_core", "fx_ring", "fx_shock", "fx_smoke", "fx_fire", "fx_spark", "fx_plus", "fx_hex",
        "fx_flame", "fx_beam", "fx_beamcore", "fx_bolt", "fx_streak", "fx_scorch", "fx_crack", "fx_lance"};

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

    /** Advance all particles (game thread, once per frame). */
    public static void update(long j) {
        float dt = j / 1000.0f;
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
