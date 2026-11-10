import fr.testudo.spacecorsair.display.Texture;
import fr.testudo.spacecorsair.mod.ModArt;
import fr.testudo.spacecorsair.mod.ModIntro;
import fr.testudo.spacecorsair.textengine.TextSize;
import java.awt.Color;
import java.awt.Font;
import java.awt.Graphics2D;
import java.awt.RenderingHints;
import java.awt.image.BufferedImage;
import java.io.File;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationHandler;
import java.lang.reflect.Method;
import java.lang.reflect.Proxy;
import java.nio.FloatBuffer;
import java.util.HashMap;
import java.util.Map;
import javax.imageio.ImageIO;
import javax.microedition.khronos.opengles.GL10;

/**
 * v45 desktop preview of the intro cinematic: runs the shipped ModIntro code against a software GL (textured quads,
 * alpha/additive blending) and writes one PNG per frame. java V45 <artdir with PNGs> <outdir> [fps] [W H] [skipAtMs]
 */
public class V45 {
    static int W = 2340, H = 1080;
    static BufferedImage frame;
    static int[] pix;
    static final Map<Integer, BufferedImage> tex = new HashMap<Integer, BufferedImage>();
    static final Map<Integer, int[]> texPix = new HashMap<Integer, int[]>();
    // GL state
    static float[] m = new float[6];    // affine: x' = a x + c y + e ; y' = b x + d y + f
    static float cr = 1, cg = 1, cb = 1, ca = 1;
    static boolean texOn, additive;
    static int bound;
    static FloatBuffer vb, tb;

    static void ident() { m[0] = 1; m[1] = 0; m[2] = 0; m[3] = 1; m[4] = 0; m[5] = 0; }
    static void mul(float a, float b, float c, float d, float e, float f) {
        float na = m[0] * a + m[2] * b, nb = m[1] * a + m[3] * b, nc = m[0] * c + m[2] * d, nd = m[1] * c + m[3] * d;
        float ne = m[0] * e + m[2] * f + m[4], nf = m[1] * e + m[3] * f + m[5];
        m[0] = na; m[1] = nb; m[2] = nc; m[3] = nd; m[4] = ne; m[5] = nf;
    }

    public static void main(String[] args) throws Exception {
        String art = args[0], out = args[1];
        int fps = args.length > 2 ? Integer.parseInt(args[2]) : 12;
        if (args.length > 4) { W = Integer.parseInt(args[3]); H = Integer.parseInt(args[4]); }
        int skipAt = args.length > 5 ? Integer.parseInt(args[5]) : -1;
        new File(out).mkdirs();
        frame = new BufferedImage(W, H, BufferedImage.TYPE_INT_RGB);
        pix = ((java.awt.image.DataBufferInt) frame.getRaster().getDataBuffer()).getData();
        // textures: every PNG in the art dir, registered in ModArt under its name
        Field tf = ModArt.class.getDeclaredField("textures");
        tf.setAccessible(true);
        @SuppressWarnings("unchecked") Map<String, Texture> map = (Map<String, Texture>) tf.get(null);
        int id = 1;
        for (File f : new File(art).listFiles()) {
            if (!f.getName().endsWith(".png")) continue;
            BufferedImage im = ImageIO.read(f);
            BufferedImage argb = new BufferedImage(im.getWidth(), im.getHeight(), BufferedImage.TYPE_INT_ARGB);
            argb.getGraphics().drawImage(im, 0, 0, null);
            Texture t = new Texture();
            t.name = id;
            t.loaded = true;
            tex.put(id, argb);
            texPix.put(id, ((java.awt.image.DataBufferInt) argb.getRaster().getDataBuffer()).getData());
            map.put(f.getName().substring(0, f.getName().length() - 4), t);
            id++;
        }
        System.out.println("textures " + (id - 1));
        ModIntro.harness = true;
        ModIntro.harnessW = W;
        ModIntro.harnessH = H;
        ModIntro.textOut = new ModIntro.TextOut() {
            public float width(String s, TextSize size) { return g2().getFontMetrics(font(size)).stringWidth(s); }
            public void draw(String s, float px, float py, TextSize size, float r, float g, float b, float a) {
                Graphics2D gg = g2();
                gg.setFont(font(size));
                gg.setColor(new Color(cl(r), cl(g), cl(b), cl(a)));
                gg.drawString(s, px, H - py);
            }
        };
        GL10 gl = (GL10) Proxy.newProxyInstance(GL10.class.getClassLoader(), new Class[]{GL10.class}, new InvocationHandler() {
            public Object invoke(Object proxy, Method mth, Object[] a) {
                String n = mth.getName();
                if (n.equals("glLoadIdentity")) ident();
                else if (n.equals("glTranslatef")) mul(1, 0, 0, 1, (Float) a[0], (Float) a[1]);
                else if (n.equals("glRotatef")) { double r = Math.toRadians((Float) a[0]); float c = (float) Math.cos(r), s = (float) Math.sin(r); mul(c, s, -s, c, 0, 0); }
                else if (n.equals("glScalef")) mul((Float) a[0], 0, 0, (Float) a[1], 0, 0);
                else if (n.equals("glColor4f")) { cr = (Float) a[0]; cg = (Float) a[1]; cb = (Float) a[2]; ca = (Float) a[3]; }
                else if (n.equals("glEnable")) { if ((Integer) a[0] == GL10.GL_TEXTURE_2D) texOn = true; }
                else if (n.equals("glDisable")) { if ((Integer) a[0] == GL10.GL_TEXTURE_2D) texOn = false; }
                else if (n.equals("glBindTexture")) bound = (Integer) a[1];
                else if (n.equals("glBlendFunc")) additive = (Integer) a[1] == GL10.GL_ONE;
                else if (n.equals("glVertexPointer")) vb = (FloatBuffer) a[3];
                else if (n.equals("glTexCoordPointer")) tb = (FloatBuffer) a[3];
                else if (n.equals("glDrawArrays")) quad();
                return mth.getReturnType() == boolean.class ? Boolean.FALSE : mth.getReturnType() == int.class ? Integer.valueOf(0) : null;
            }
        });
        ModIntro.harnessClock = 1000;
        ModIntro.replay();
        int step = 1000 / fps, i = 0;
        long t0 = System.currentTimeMillis();
        boolean skipped = false;
        while (true) {
            java.util.Arrays.fill(pix, 0xff101018);
            ModIntro.draw(gl);
            if (!ModIntro.isActive()) break;
            ImageIO.write(frame, "png", new File(out, String.format("f%04d.png", i++)));
            ModIntro.harnessClock += step;
            if (skipAt >= 0 && !skipped && ModIntro.harnessClock - 1000 >= skipAt) {
                skipped = true;
                Field f = ModIntro.class.getDeclaredField("lastTapT"); f.setAccessible(true); f.setLong(null, 0);
                f = ModIntro.class.getDeclaredField("skipHint"); f.setAccessible(true); f.setBoolean(null, true);
                f = ModIntro.class.getDeclaredField("skipReq"); f.setAccessible(true); f.setBoolean(null, true);
            }
            if (i > 5000) break;
        }
        System.out.println("frames " + i + " in " + (System.currentTimeMillis() - t0) + " ms");
    }

    static Graphics2D g2() {
        Graphics2D g = frame.createGraphics();
        g.setRenderingHint(RenderingHints.KEY_TEXT_ANTIALIASING, RenderingHints.VALUE_TEXT_ANTIALIAS_ON);
        return g;
    }

    static Font font(TextSize s) {
        float k = H / 1080f;
        int px;
        switch (s) {
            case LITTLE: px = 26; break;
            case NORMAL: px = 34; break;
            case NORMALPLUS: px = 42; break;
            case MEDIUM: px = 60; break;
            case LARGE: px = 96; break;
            default: px = 34;
        }
        return new Font(Font.SANS_SERIF, Font.BOLD, Math.round(px * k));
    }

    static int cl(float v) { return Math.max(0, Math.min(255, Math.round(v * 255))); }

    /** Rasterizes the current unit quad (vb) under the affine matrix, with the texture rectangle in tb. */
    static void quad() {
        float x0 = vb.get(0), y0 = vb.get(1);   // -0.5,-0.5 ... the strip order: (-.5,-.5) (.5,-.5) (-.5,.5) (.5,.5)
        // corners in screen space (y up, origin at the screen centre is already in the matrix via midX/midY? no: ModIntro adds midX/midY only for text; quads are centred)
        float[] cx = new float[4], cy = new float[4];
        for (int i = 0; i < 4; i++) {
            float vx = vb.get(i * 3), vy = vb.get(i * 3 + 1);
            cx[i] = m[0] * vx + m[2] * vy + m[4] + W / 2f;
            cy[i] = H - (m[1] * vx + m[3] * vy + m[5] + H / 2f);
        }
        int minx = (int) Math.floor(Math.min(Math.min(cx[0], cx[1]), Math.min(cx[2], cx[3]))), maxx = (int) Math.ceil(Math.max(Math.max(cx[0], cx[1]), Math.max(cx[2], cx[3])));
        int miny = (int) Math.floor(Math.min(Math.min(cy[0], cy[1]), Math.min(cy[2], cy[3]))), maxy = (int) Math.ceil(Math.max(Math.max(cy[0], cy[1]), Math.max(cy[2], cy[3])));
        minx = Math.max(0, minx); miny = Math.max(0, miny); maxx = Math.min(W - 1, maxx); maxy = Math.min(H - 1, maxy);
        if (minx > maxx || miny > maxy) return;
        // inverse affine (screen -> unit quad)
        float a = m[0], b = -m[1], c = m[2], d = -m[3], e = m[4] + W / 2f, f = H - (m[5] + H / 2f);
        float det = a * d - b * c;
        if (Math.abs(det) < 1e-6f) return;
        float ia = d / det, ib = -b / det, ic = -c / det, id = a / det;
        BufferedImage ti = texOn ? tex.get(bound) : null;
        int[] tp = texOn ? texPix.get(bound) : null;
        int tw = ti != null ? ti.getWidth() : 0, th = ti != null ? ti.getHeight() : 0;
        float u0 = 0, v0 = 0, u1 = 1, v1 = 1;
        if (ti != null && tb != null) { u0 = tb.get(0); v0 = tb.get(1); u1 = tb.get(2); v1 = tb.get(5); }
        for (int y = miny; y <= maxy; y++) {
            for (int x = minx; x <= maxx; x++) {
                float sx = x + 0.5f - e, sy = y + 0.5f - f;
                float qx = ia * sx + ic * sy, qy = ib * sx + id * sy;
                if (qx < -0.5f || qx >= 0.5f || qy < -0.5f || qy >= 0.5f) continue;
                float r = cr, g = cg, bl = cb, al = ca;
                if (ti != null) {
                    float u = u0 + (u1 - u0) * (qx + 0.5f), v = v0 + (v1 - v0) * (qy + 0.5f);
                    int px0 = Math.min(tw - 1, Math.max(0, (int) (u * tw))), py0 = Math.min(th - 1, Math.max(0, (int) (v * th)));
                    int p = tp[py0 * tw + px0];
                    float ta = ((p >>> 24) & 255) / 255f;
                    r *= ((p >> 16) & 255) / 255f; g *= ((p >> 8) & 255) / 255f; bl *= (p & 255) / 255f; al *= ta;
                    if (ti.getColorModel().hasAlpha() == false) al = ca;
                }
                if (al <= 0.002f) continue;
                int q = pix[y * W + x];
                float dr = ((q >> 16) & 255) / 255f, dg = ((q >> 8) & 255) / 255f, db = (q & 255) / 255f;
                float nr, ng, nb;
                if (additive) { nr = dr + r * al; ng = dg + g * al; nb = db + bl * al; }
                else { nr = dr + (r - dr) * al; ng = dg + (g - dg) * al; nb = db + (bl - db) * al; }
                pix[y * W + x] = 0xff000000 | (cl(nr) << 16) | (cl(ng) << 8) | cl(nb);
            }
        }
    }
}
