package fr.testudo.spacecorsair.mod;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.opengl.GLUtils;
import android.view.ViewGroup;
import android.widget.ImageView;
import fr.testudo.spacecorsair.business.loot.SpaceObjectType;
import fr.testudo.spacecorsair.business.loot.stuff.playerShip.PlayerShipSpec;
import fr.testudo.spacecorsair.business.player.PlayerShip;
import fr.testudo.spacecorsair.display.Drawable;
import fr.testudo.spacecorsair.display.RenderElement;
import fr.testudo.spacecorsair.display.Texture;
import fr.testudo.spacecorsair.engine.GameRenderer;
import fr.testudo.spacecorsair.engine.ObjectRegistry;
import fr.testudo.spacecorsair.engine.Vector2;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import javax.microedition.khronos.opengles.GL10;
import javax.microedition.khronos.opengles.GL11;

/**
 * Loads the new ship sprites from assets/modart/ (no compiled resources needed).
 *
 * <p>v24 lazy textures: only the small effect sprites are uploaded when the GL context is created. Hull, flagship,
 * turret and missile art (the 1024x1024 hulls alone are ~200 MB of RGBA) gets its {@link Texture} object up front, so
 * every reference stays stable, but the image is uploaded on the GL thread the first time it is drawn:
 * <ul>
 * <li>sprites the mod draws itself ({@link ModFx.Sprite}, {@link Art} drawables) upload right before their own draw;</li>
 * <li>the player's hull (a stock Drawable) is uploaded by {@link #pump} from an invisible sprite queued before the hull
 *     every frame, which also catches any other stock draw of a lazy texture later in the frame;</li>
 * <li>until then a lazy texture points at a 1x1 transparent texture, never at an empty name (white square).</li>
 * </ul>
 * Prefetch requests (ship change, flagship spawn, fleet spawn) decode the bitmap on a background thread so the upload
 * on first draw is only the glTexImage2D. Filtering and texture parameters are exactly the stock ones.
 */
public class ModArt {
    // read by the game thread (ModFx.tex for every particle) while the GL thread may add entries: thread-safe map
    private static final Map<String, Texture> textures = new ConcurrentHashMap<String, Texture>();
    public static Drawable heavyTurret;

    // ------------------------------------------------------------------ lazy textures
    static final int FB_NONE = 0, FB_SHIP = 1, FB_GUARDIAN = 2;

    /** A texture uploaded on first use. GL fields are only touched on the GL thread. */
    static final class Lazy extends Texture {
        final String asset;
        final int fallback;
        volatile boolean resident;      // real image uploaded in the current GL context
        boolean wasResident;            // resident when the previous context was lost (GL thread)
        int lastUse = Integer.MIN_VALUE / 2;   // GL frame of the last draw (GL thread)
        int failedGen = -1;             // context generation of a failed upload: no retry until the next context
        Bitmap pending;                 // decoded ahead of time (guarded by LOCK)
        boolean queued;                 // waiting for the decoder (guarded by LOCK)

        Lazy(String asset, int fallback) {
            this.asset = asset;
            this.fallback = fallback;
        }
    }

    /** A stock drawable whose texture may be lazy: uploads it right before drawing (GL thread). */
    static final class Art extends Drawable {
        final boolean turret;

        Art(Vector2 dim, Texture t, boolean turret) {
            super(dim, t);
            this.turret = turret;
        }

        @Override
        public void draw(GL10 gl, Vector2 p, float spin, boolean cameraRelative, float a, float r, float g, float b, boolean zoomInsensitive, boolean background) {
            Texture t = myTexture;
            if (t instanceof Lazy) use(gl, (Lazy) t);
            super.draw(gl, p, spin, cameraRelative, a, r, g, b, zoomInsensitive, background);
        }
    }

    private static Context appCtx;
    private static int gen;                 // GL context generation (one per load)
    private static int frame;               // GL frames drawn (frameEnd)
    private static int blankName = -1;      // 1x1 transparent texture of the current context
    private static final int RECENT = 900;  // frames: a texture drawn this recently is re-uploaded with the context
    private static Set<String> assetNames;  // modart/ listing (names without extension), null = unknown
    private static final Map<String, Boolean> exists = new HashMap<String, Boolean>();
    private static PlayerShipSpec.Image[] hullImages;
    private static final int[] ids = new int[1];
    private static final int[] crop = new int[4];

    /** Hook at the start of Game.loadTextures (GL thread). Runs again after every GL context loss. */
    public static void load(GL10 gl, Context ctx) {
        inLoad = true;
        try {
            loadAll(gl, ctx);
        } catch (Throwable t) {
            // never stop Game.loadTextures: the stock textures load right after this hook
        } finally {
            inLoad = false;
        }
        ModSound.init(ctx);
    }

    private static boolean inLoad;

    private static void loadAll(GL10 gl, Context ctx) {
        gen++;
        if (ctx != null) {
            try {
                Context a = ctx.getApplicationContext();
                appCtx = a != null ? a : ctx;
            } catch (Throwable t) {
                appCtx = ctx;
            }
        }
        listAssets();
        blankName = makeBlank(gl);
        // the previous context's names are gone: every lazy texture shows the blank texture until it is uploaded again
        for (Texture t : textures.values()) {
            if (t instanceof Lazy) {
                Lazy z = (Lazy) t;
                z.wasResident = z.resident;
                z.resident = false;
                z.loaded = false;
                z.name = blankName;
            }
        }
        // hulls (incl. the v23 secret ships) and faction flagships
        ModShips.Hull[] hulls = ModShips.HULLS;
        if (hulls != null) {
            if (hullImages == null || hullImages.length != hulls.length) hullImages = new PlayerShipSpec.Image[hulls.length];
            for (int i = 0; i < hulls.length; i++) {
                ModShips.Hull h = hulls[i];
                if (h == null || h.art == null) continue;
                Lazy t = lazy(h.art, FB_SHIP);
                if (t == null) continue;
                try {
                    if (hullImages[i] == null) hullImages[i] = PlayerShipSpec.Image.valueOf("MOD_" + h.art.toUpperCase());
                    hullImages[i].shipTexture = t;
                } catch (Exception e) {
                    // image slot missing
                }
            }
        }
        for (String k : ModRepData.KEYS) lazy("secret_" + k, FB_SHIP);
        for (ModCapitals.Faction f : ModCapitals.FACTIONS) {
            lazy("cap_" + f.key, FB_GUARDIAN);
            lazy("hw_turret_cap_" + f.key, FB_NONE);
        }
        // turrets: one drawable per sprite, sized like before; the texture itself loads on first draw
        for (String n : new String[]{"turret_heavy", "turret_laser", "turret_cannon", "turret_dev"}) {
            Lazy tt = lazy(n, FB_NONE);
            if (tt != null && !turrets.containsKey(n)) turrets.put(n, new Art(new Vector2(64.0f, 64.0f), tt, true));
        }
        heavyTurret = turrets.get("turret_heavy");
        // v17: per-hull rendered turrets and missiles (src/genhw.py), turret size follows the hull
        if (hulls != null) {
            for (ModShips.Hull h : hulls) {
                if (h == null || h.art == null) continue;
                String n = "hw_turret_" + h.art;
                Lazy tt = lazy(n, FB_NONE);
                if (tt != null && !turrets.containsKey(n)) {
                    float ts = Math.min(100.0f, Math.max(56.0f, h.size * 0.16f));
                    turrets.put(n, new Art(new Vector2(ts, ts), tt, true));
                }
                lazy("hw_missile_" + h.art, FB_NONE);
            }
        }
        // v23 weapon-family turrets, small / medium / large
        for (int f = 0; f < FAMILY_TURRETS.length; f++) {
            for (int s = 0; s < 3; s++) lazy(FAMILY_NAMES[f][s], FB_NONE);
        }
        Texture mt = lazy("missile_dev", FB_NONE);
        if (mt != null && devMissile == null) {
            devMissile = new Art(fr.testudo.spacecorsair.business.projectiles.Missile.drawableDim, mt, false);
        }
        for (String n : ModFleet.ARTS) lazy(n, FB_NONE);

        // effect sprites: used everywhere, every frame, small: uploaded now
        for (String n : ModFx.TEXTURES) upload(gl, n);

        // what is needed right away: the player's hull, whatever was on screen when the context was lost, prefetched art
        try {
            Texture b = PlayerShip.BASIC_TEXTURE;
            if (b instanceof Lazy) use(gl, (Lazy) b);
        } catch (Throwable t) {
            // no ship yet
        }
        try {
            Object spec = ObjectRegistry.INSTANCE.game.playerInfo.playerGear.playerShip.getGearSpec();
            if (spec instanceof PlayerShipSpec) {
                Texture cur = ((PlayerShipSpec) spec).image.shipTexture;
                if (cur instanceof Lazy) use(gl, (Lazy) cur);
            }
        } catch (Throwable t) {
            // no save loaded yet
        }
        for (Texture t : textures.values()) {
            if (!(t instanceof Lazy)) continue;
            Lazy z = (Lazy) t;
            if (z.resident) continue;
            if ((z.wasResident && frame - z.lastUse < RECENT) || hasPending(z)) upload(gl, z);
        }
    }

    /** Lazy texture entry for an asset (created once, kept across contexts); null when the asset does not exist. */
    /** v24: a plain texture that is always the 1x1 transparent one (stand-in for drawables the mod draws itself). */
    private static final Texture BLANK = new Texture();
    static Texture blank() {
        BLANK.name = blankName;
        BLANK.loaded = blankName > 0;
        return BLANK;
    }

    private static Lazy lazy(String name, int fallback) {
        Texture e = textures.get(name);
        if (e instanceof Lazy) return (Lazy) e;
        if (e != null) return null;   // already an eager texture
        if (!assetExists(name)) return null;
        Lazy z = new Lazy(name, fallback);
        z.name = blankName;
        z.loaded = false;
        textures.put(name, z);
        return z;
    }

    private static void listAssets() {
        if (assetNames != null || appCtx == null) return;
        try {
            String[] all = appCtx.getAssets().list("modart");
            if (all == null || all.length == 0) return;
            Set<String> s = new HashSet<String>();
            for (String f : all) {
                int dot = f.lastIndexOf('.');
                s.add(dot > 0 ? f.substring(0, dot) : f);
            }
            assetNames = s;
        } catch (Throwable t) {
            assetNames = null;
        }
    }

    private static boolean assetExists(String name) {
        if (assetNames != null) return assetNames.contains(name);
        Boolean b = exists.get(name);
        if (b != null) return b;
        boolean ok = false;
        InputStream in = null;
        try {
            in = open(appCtx, name);
            ok = true;
        } catch (Throwable t) {
            ok = false;
        } finally {
            try { if (in != null) in.close(); } catch (Exception e) { /* ignore */ }
        }
        exists.put(name, ok);
        return ok;
    }

    private static int makeBlank(GL10 gl) {
        try {
            gl.glGenTextures(1, ids, 0);
            int n = ids[0];
            gl.glBindTexture(GL10.GL_TEXTURE_2D, n);
            params(gl);
            Bitmap b = Bitmap.createBitmap(1, 1, Bitmap.Config.ARGB_8888);   // all zero: fully transparent
            try {
                GLUtils.texImage2D(GL10.GL_TEXTURE_2D, 0, b, 0);
            } finally {
                b.recycle();
            }
            return n;
        } catch (Throwable t) {
            return -1;
        }
    }

    /** Same parameters as the game's TextureLibrary and the original mod loader. */
    private static void params(GL10 gl) {
        gl.glTexParameterf(GL10.GL_TEXTURE_2D, GL10.GL_TEXTURE_MIN_FILTER, GL10.GL_NEAREST);
        gl.glTexParameterf(GL10.GL_TEXTURE_2D, GL10.GL_TEXTURE_MAG_FILTER, GL10.GL_LINEAR);
        gl.glTexParameterf(GL10.GL_TEXTURE_2D, GL10.GL_TEXTURE_WRAP_S, GL10.GL_CLAMP_TO_EDGE);
        gl.glTexParameterf(GL10.GL_TEXTURE_2D, GL10.GL_TEXTURE_WRAP_T, GL10.GL_CLAMP_TO_EDGE);
        gl.glTexEnvf(GL10.GL_TEXTURE_ENV, GL10.GL_TEXTURE_ENV_MODE, GL10.GL_MODULATE);
    }

    /** GL thread: a lazy texture is about to be drawn. Uploads it now unless it is already there. */
    static void use(GL10 gl, Lazy t) {
        t.lastUse = frame;
        if (t.resident || t.failedGen == gen) return;
        upload(gl, t);
    }

    private static void upload(GL10 gl, Lazy t) {
        Bitmap bmp = takePending(t);
        if (bmp == null) bmp = decodeFull(t.asset);
        if (bmp != null && put(gl, t, bmp)) {
            t.resident = true;
            return;
        }
        // out of memory or unreadable: stock art for hulls and flagships, otherwise nothing (never a white square).
        // During load() the stock textures still carry the lost context's names: stay blank and retry once on first draw.
        if (inLoad) {
            t.name = blankName;
            return;
        }
        t.failedGen = gen;
        t.name = fallbackName(t.fallback);
    }

    private static int fallbackName(int fb) {
        try {
            Texture v = null;
            if (fb == FB_SHIP) v = PlayerShipSpec.Image.DEFAULT.shipTexture;
            else if (fb == FB_GUARDIAN && fr.testudo.spacecorsair.business.world.civil.GuardianCivilShip.drawable != null)
                v = fr.testudo.spacecorsair.business.world.civil.GuardianCivilShip.drawable.myTexture;
            if (v != null && !(v instanceof Lazy) && v.loaded && v.name > 0) return v.name;
        } catch (Throwable e) {
            // blank
        }
        return blankName;
    }

    /** Eager upload (effect sprites). Creates the Texture entry on the first successful decode. */
    private static Texture upload(GL10 gl, String name) {
        Bitmap bmp = decodeFull(name);
        Texture t = textures.get(name);
        if (bmp == null) {
            if (t != null) {
                t.loaded = false;
                t.name = blankName;
            }
            return null;
        }
        if (t == null) {
            t = new Texture();
            textures.put(name, t);
        }
        if (!put(gl, t, bmp)) {
            t.loaded = false;
            t.name = blankName;
            return null;
        }
        return t;
    }

    /** GL thread: uploads a bitmap into a new texture name for t, then recycles the bitmap. */
    private static boolean put(GL10 gl, Texture t, Bitmap bmp) {
        try {
            int name;
            gl.glGenTextures(1, ids, 0);
            name = ids[0];
            gl.glBindTexture(GL10.GL_TEXTURE_2D, name);
            params(gl);
            // v24: full-res art (up to 1024) is drawn far smaller than its size; trilinear mipmaps keep it smooth instead of
            // the shimmer GL_NEAREST gives when minifying. Power-of-two only (ES 1.x has no NPOT mipmaps).
            int bw = bmp.getWidth(), bh = bmp.getHeight();
            if (bw >= 128 && bh >= 128 && (bw & (bw - 1)) == 0 && (bh & (bh - 1)) == 0) {
                gl.glTexParameterf(GL10.GL_TEXTURE_2D, 0x8191, 1.0f);                     // GL_GENERATE_MIPMAP = GL_TRUE
                gl.glTexParameterf(GL10.GL_TEXTURE_2D, GL10.GL_TEXTURE_MIN_FILTER, 0x2703); // GL_LINEAR_MIPMAP_LINEAR
            }
            GLUtils.texImage2D(GL10.GL_TEXTURE_2D, 0, bmp, 0);
            crop[0] = 0;
            crop[1] = bmp.getHeight();
            crop[2] = bmp.getWidth();
            crop[3] = -bmp.getHeight();
            ((GL11) gl).glTexParameteriv(GL10.GL_TEXTURE_2D, 35741, crop, 0);
            t.name = name;
            t.width = bmp.getWidth();
            t.height = bmp.getHeight();
            t.loaded = true;
            return true;
        } catch (Throwable e) {
            return false;
        } finally {
            try { bmp.recycle(); } catch (Throwable e) { /* ignore */ }
        }
    }

    private static Bitmap decodeFull(String name) {
        Context c = appCtx;
        if (c == null) return null;
        InputStream in = null;
        try {
            in = open(c, name);
            BitmapFactory.Options o = new BitmapFactory.Options();
            o.inPreferredConfig = Bitmap.Config.ARGB_8888;
            o.inScaled = false;
            return BitmapFactory.decodeStream(in, null, o);
        } catch (Throwable e) {
            return null;   // missing asset or out of memory
        } finally {
            try { if (in != null) in.close(); } catch (Exception e) { /* ignore */ }
        }
    }

    // ------------------------------------------------------------------ per-frame pump (GL thread)
    /** Invisible sprite queued before the player's hull (ModFx.drawParticles under pass): runs {@link #pump}. */
    static void pump(GL10 gl) {
        try {
            Texture b = PlayerShip.BASIC_TEXTURE;
            if (b instanceof Lazy) use(gl, (Lazy) b);
            scanQueue(gl);
        } catch (Throwable t) {
            // the stock path still draws (blank until uploaded)
        }
    }

    /** End of every drawn frame (ModQol.drawHud): frame counter, player hull fallback, one prefetched upload. */
    public static void frameEnd(GL10 gl) {
        frame++;
        try {
            Texture b = PlayerShip.BASIC_TEXTURE;
            if (b instanceof Lazy) use(gl, (Lazy) b);
            Lazy r = null;
            synchronized (LOCK) {
                if (!ready.isEmpty()) r = ready.get(0);
            }
            if (r != null) {
                if (r.resident) {
                    Bitmap stale = takePending(r);
                    if (stale != null) stale.recycle();
                } else if (r.failedGen != gen) {
                    upload(gl, r);
                } else {
                    Bitmap stale = takePending(r);
                    if (stale != null) stale.recycle();
                }
            }
        } catch (Throwable t) {
            // cosmetic
        }
    }

    private static java.lang.reflect.Field fQueue, fSize;
    private static boolean scanOff;

    /** Uploads lazy textures of stock drawables queued in this frame (the queue is read where it is drawn: GL thread). */
    private static void scanQueue(GL10 gl) {
        if (scanOff) return;
        try {
            Object r = ObjectRegistry.INSTANCE.gameRenderer;
            if (r == null) return;
            if (fQueue == null) {
                java.lang.reflect.Field q = GameRenderer.class.getDeclaredField("renderQueue");
                java.lang.reflect.Field s = GameRenderer.class.getDeclaredField("renderQueueSize");
                q.setAccessible(true);
                s.setAccessible(true);
                fSize = s;
                fQueue = q;
            }
            RenderElement[] q = (RenderElement[]) fQueue.get(r);
            if (q == null) return;
            int n = Math.min(fSize.getInt(r), q.length);
            for (int i = 0; i < n; i++) {
                RenderElement e = q[i];
                if (e == null) continue;
                Drawable d = e.drawable;
                if (d == null) continue;
                Texture t = d.myTexture;
                if (t instanceof Lazy) use(gl, (Lazy) t);
            }
        } catch (Throwable t) {
            scanOff = true;   // field layout differs: rely on the per-sprite uploads
        }
    }

    // ------------------------------------------------------------------ prefetch (any thread)
    private static final Object LOCK = new Object();
    private static final ArrayList<Lazy> queue = new ArrayList<Lazy>();
    private static final ArrayList<Lazy> ready = new ArrayList<Lazy>();
    private static Thread decoder;
    private static final int MAX_READY = 3;

    /** Decodes a lazy texture's bitmap in the background so its first draw only uploads it. No-op for other textures. */
    public static void prefetch(Texture tex) {
        if (!(tex instanceof Lazy) || appCtx == null) return;
        Lazy t = (Lazy) tex;
        if (t.resident) return;
        try {
            synchronized (LOCK) {
                if (t.queued || t.pending != null || queue.size() >= 6) return;
                if (decoder == null) {
                    Thread th = new Thread(new Runnable() {
                        public void run() { decodeLoop(); }
                    }, "ModArt-decode");
                    th.setDaemon(true);
                    th.setPriority(Thread.MIN_PRIORITY + 1);
                    th.start();
                    decoder = th;
                }
                t.queued = true;
                queue.add(t);
                LOCK.notifyAll();
            }
        } catch (Throwable e) {
            // no background decode: the first draw decodes it
        }
    }

    /** Prefetch by asset name (hull art, flagship...). */
    static void prefetch(String name) {
        if (name != null) prefetch(textures.get(name));
    }

    private static void decodeLoop() {
        try {
            while (true) {
                Lazy t;
                synchronized (LOCK) {
                    while (queue.isEmpty()) LOCK.wait();
                    t = queue.remove(0);
                }
                Bitmap b = null;
                try {
                    boolean room;
                    synchronized (LOCK) { room = ready.size() < MAX_READY; }
                    if (!t.resident && room) b = decodeFull(t.asset);
                } catch (Throwable e) {
                    b = null;
                }
                synchronized (LOCK) {
                    t.queued = false;
                    if (b != null) {
                        if (t.resident || t.pending != null || ready.size() >= MAX_READY) {
                            b.recycle();
                        } else {
                            t.pending = b;
                            ready.add(t);
                        }
                    }
                }
            }
        } catch (Throwable e) {
            synchronized (LOCK) {
                for (Lazy t : queue) t.queued = false;
                queue.clear();
                decoder = null;
            }
        }
    }

    private static Bitmap takePending(Lazy t) {
        synchronized (LOCK) {
            Bitmap b = t.pending;
            t.pending = null;
            if (b != null) ready.remove(t);
            return b;
        }
    }

    private static boolean hasPending(Lazy t) {
        synchronized (LOCK) {
            return t.pending != null;
        }
    }

    // ------------------------------------------------------------------ drawables
    private static final Map<String, Drawable> turrets = new ConcurrentHashMap<String, Drawable>();

    /** True while the player flies a dev hull (set every frame by ModShips.tick). */
    public static boolean devActive;
    private static Drawable devMissile;

    /** Hook: Missile.getDrawableObject. Green missiles for the X-0; null keeps the stock sprite. */
    public static Drawable missile(fr.testudo.spacecorsair.business.projectiles.Missile m) {
        Drawable titan = ModTitan.missile(m);
        if (titan != null) return titan;
        if (!devActive || devMissile == null || m.sender == null || !m.sender.isPlayer) return null;
        return devMissile;
    }

    public static Drawable turret(String name) {
        return name == null ? null : turrets.get(name);
    }

    static final String[] FAMILY_TURRETS = {"railgun", "autocannon", "artillery", "blaster", "disintegrator", "arc"};
    private static final String[][] FAMILY_NAMES = new String[FAMILY_TURRETS.length][3];
    static {
        String[] sz = {"s", "m", "l"};
        for (int f = 0; f < FAMILY_TURRETS.length; f++) {
            for (int s = 0; s < 3; s++) FAMILY_NAMES[f][s] = "turret_" + FAMILY_TURRETS[f] + "_" + sz[s];
        }
    }
    // game thread only (Mod.tick): no locking
    private static final Map<Integer, Drawable> familyDrawables = new HashMap<Integer, Drawable>();
    private static int memoKey = -1;
    private static Drawable memoTurret;

    private static int sizeIndex(int cls) {
        return (cls == ModShips.FRIGATE || cls == ModShips.DESTROYER || cls == ModShips.INDUSTRIAL || cls < 0) ? 0
            : (cls == ModShips.CRUISER || cls == ModShips.BATTLECRUISER) ? 1 : 2;
    }

    /** v23: the turret of a weapon family (EVE-style look per gun type), sized like the hull's own turret. */
    static String familyTurretName(int fam, int cls) {
        if (fam < 0 || fam >= FAMILY_TURRETS.length) return null;
        return FAMILY_NAMES[fam][sizeIndex(cls)];
    }

    public static Drawable familyTurret(int fam, int cls, float ts) {
        if (fam < 0 || fam >= FAMILY_TURRETS.length) return null;
        int sz = sizeIndex(cls);
        Texture t = textures.get(FAMILY_NAMES[fam][sz]);
        if (t == null) return null;
        int key = ((fam * 3 + sz) << 20) | ((int) ts & 0xFFFFF);
        Drawable d = memoTurret;
        if (key == memoKey && d != null && d.myTexture == t) return d;
        d = familyDrawables.get(key);
        if (d == null || d.myTexture != t) {
            d = new Art(new Vector2(ts, ts), t, true);
            familyDrawables.put(key, d);
        }
        memoKey = key;
        memoTurret = d;
        return d;
    }

    public static boolean isModTurret(Drawable d) {
        return d != null && (d == ModFx.EMPTY || (d instanceof Art && ((Art) d).turret));
    }

    public static Texture texture(String name) {
        return name == null ? null : textures.get(name);
    }

    // ------------------------------------------------------------------ UI bitmaps
    /** v24: opens assets/modart/<name>.webp (lossless), falling back to .png. Caller closes the stream. */
    public static InputStream open(Context ctx, String name) throws java.io.IOException {
        try {
            return ctx.getAssets().open("modart/" + name + ".webp");
        } catch (java.io.IOException e) {
            return ctx.getAssets().open("modart/" + name + ".png");
        }
    }

    /** v24: decodes a mod image for UI use, subsampled (power of two) so its longer side is at least maxPx; null if missing. */
    public static Bitmap decode(Context ctx, String name, int maxPx) {
        InputStream in = null;
        try {
            BitmapFactory.Options o = new BitmapFactory.Options();
            if (maxPx > 0) {
                in = open(ctx, name);
                o.inJustDecodeBounds = true;
                BitmapFactory.decodeStream(in, null, o);
                in.close();
                in = null;
                int big = Math.max(o.outWidth, o.outHeight), s = 1;
                while (big / (s * 2) >= maxPx) s *= 2;
                o = new BitmapFactory.Options();
                o.inSampleSize = s;
            }
            o.inPreferredConfig = Bitmap.Config.ARGB_8888;
            o.inScaled = false;
            in = open(ctx, name);
            return BitmapFactory.decodeStream(in, null, o);
        } catch (Throwable e) {
            return null;
        } finally {
            try { if (in != null) in.close(); } catch (Exception e) { /* ignore */ }
        }
    }

    /** Hook in SpaceShipItem: show the new hull art on the ships screen. */
    public static void shipIcon(ImageView iv, SpaceObjectType t) {
        shipIcon(iv, t, 0);
    }

    /**
     * Ship art for an ImageView, decoded at no less than twice the view's size (or 180dp x2 when the size is not known
     * yet) instead of the full 1024 px: a list of 47 hulls no longer holds ~200 MB of bitmaps. maxPx > 0 overrides.
     */
    public static void shipIcon(ImageView iv, SpaceObjectType t, int maxPx) {
        ModShips.Hull h = ModShips.hull(t);
        if (h == null || iv == null) return;
        try {
            int px = maxPx;
            if (px <= 0) {
                ViewGroup.LayoutParams lp = iv.getLayoutParams();
                int side = lp == null ? 0 : Math.max(lp.width, lp.height);
                if (side <= 0) side = (int) (180 * iv.getResources().getDisplayMetrics().density);
                px = side * 2;
            }
            Bitmap b = decode(iv.getContext(), h.art, px);
            if (b != null) iv.setImageBitmap(b);
        } catch (Throwable e) {
            // keep the fallback icon
        }
    }
}
