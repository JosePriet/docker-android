package fr.testudo.spacecorsair.mod;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.opengl.GLUtils;
import android.widget.ImageView;
import fr.testudo.spacecorsair.business.loot.SpaceObjectType;
import fr.testudo.spacecorsair.business.loot.stuff.playerShip.PlayerShipSpec;
import fr.testudo.spacecorsair.display.Drawable;
import fr.testudo.spacecorsair.display.Texture;
import fr.testudo.spacecorsair.engine.Vector2;
import java.io.InputStream;
import java.util.HashMap;
import java.util.Map;
import javax.microedition.khronos.opengles.GL10;
import javax.microedition.khronos.opengles.GL11;

/** Loads the new ship sprites from assets/modart/ (no compiled resources needed). */
public class ModArt {
    private static final Map<String, Texture> textures = new HashMap<String, Texture>();
    public static Drawable heavyTurret;

    /** Hook at the start of Game.loadTextures (GL thread). Re-uploads after every GL context loss. */
    public static void load(GL10 gl, Context ctx) {
        for (ModShips.Hull h : ModShips.HULLS) {
            Texture t = upload(gl, ctx, h.art);
            if (t != null) {
                try {
                    PlayerShipSpec.Image.valueOf("MOD_" + h.art.toUpperCase()).shipTexture = t;
                } catch (Exception e) {
                    // image slot missing
                }
            }
        }
        for (String n : new String[]{"turret_heavy", "turret_laser", "turret_cannon", "turret_dev"}) {
            Texture tt = upload(gl, ctx, n);
            if (tt != null && !turrets.containsKey(n)) {
                turrets.put(n, new Drawable(new Vector2(64.0f, 64.0f), tt));
            }
        }
        heavyTurret = turrets.get("turret_heavy");
        for (String n : ModFx.TEXTURES) {
            upload(gl, ctx, n);
        }
        // v17: per-hull rendered turrets and missiles (src/genhw.py), turret size follows the hull
        for (ModShips.Hull h : ModShips.HULLS) {
            if (h == null) continue;
            Texture tt = upload(gl, ctx, "hw_turret_" + h.art);
            if (tt != null && !turrets.containsKey("hw_turret_" + h.art)) {
                float ts = Math.min(100.0f, Math.max(56.0f, h.size * 0.16f));
                turrets.put("hw_turret_" + h.art, new Drawable(new Vector2(ts, ts), tt));
            }
            upload(gl, ctx, "hw_missile_" + h.art);
        }
        // v23 weapon-family turrets (ChatGPT), small / medium / large
        for (String fam : FAMILY_TURRETS) {
            for (String sz : new String[]{"s", "m", "l"}) upload(gl, ctx, "turret_" + fam + "_" + sz);
        }
        familyDrawables.clear();
        // v23 secret faction ships
        for (String k : ModRepData.KEYS) upload(gl, ctx, "secret_" + k);
        // v19 faction flagships and their turrets
        for (ModCapitals.Faction f : ModCapitals.FACTIONS) {
            upload(gl, ctx, "cap_" + f.key);
            upload(gl, ctx, "hw_turret_cap_" + f.key);
        }
        ModSound.init(ctx);
        Texture mt = upload(gl, ctx, "missile_dev");
        if (mt != null && devMissile == null) {
            devMissile = new Drawable(fr.testudo.spacecorsair.business.projectiles.Missile.drawableDim, mt);
        }
        for (String n : ModFleet.ARTS) {
            upload(gl, ctx, n);
        }
    }

    private static final Map<String, Drawable> turrets = new HashMap<String, Drawable>();

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
        return turrets.get(name);
    }

    static final String[] FAMILY_TURRETS = {"railgun", "autocannon", "artillery", "blaster", "disintegrator", "arc"};
    private static final Map<String, Drawable> familyDrawables = new HashMap<String, Drawable>();

    /** v23: the turret of a weapon family (EVE-style look per gun type), sized like the hull's own turret. */
    static String familyTurretName(int fam, int cls) {
        String sz = (cls == ModShips.FRIGATE || cls == ModShips.DESTROYER || cls == ModShips.INDUSTRIAL || cls < 0) ? "s"
            : (cls == ModShips.CRUISER || cls == ModShips.BATTLECRUISER) ? "m" : "l";
        return "turret_" + FAMILY_TURRETS[fam] + "_" + sz;
    }

    public static Drawable familyTurret(int fam, int cls, float ts) {
        if (fam < 0 || fam >= FAMILY_TURRETS.length) return null;
        String n = familyTurretName(fam, cls);
        Texture t = textures.get(n);
        if (t == null) return null;
        String key = n + ":" + (int) ts;
        Drawable d = familyDrawables.get(key);
        if (d == null || d.myTexture != t) {
            d = new Drawable(new Vector2(ts, ts), t);
            familyDrawables.put(key, d);
            turrets.put("fam:" + key, d);           // so isModTurret() recognises it
        }
        return d;
    }

    public static boolean isModTurret(Drawable d) {
        return d != null && (d == ModFx.EMPTY || turrets.containsValue(d));
    }

    public static Texture texture(String name) {
        return textures.get(name);
    }

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
                int big = Math.max(o.outWidth, o.outHeight), s = 1;
                while (big / (s * 2) >= maxPx) s *= 2;
                o = new BitmapFactory.Options();
                o.inSampleSize = s;
            }
            in = open(ctx, name);
            return BitmapFactory.decodeStream(in, null, o);
        } catch (Throwable e) {
            return null;
        } finally {
            try { if (in != null) in.close(); } catch (Exception e) { /* ignore */ }
        }
    }

    private static Texture upload(GL10 gl, Context ctx, String name) {
        InputStream in = null;
        try {
            in = open(ctx, name);
            Bitmap bmp = BitmapFactory.decodeStream(in);
            Texture t = textures.get(name);
            if (t == null) {
                t = new Texture();
                textures.put(name, t);
            }
            int[] ids = new int[1];
            gl.glGenTextures(1, ids, 0);
            gl.glBindTexture(GL10.GL_TEXTURE_2D, ids[0]);
            gl.glTexParameterf(GL10.GL_TEXTURE_2D, GL10.GL_TEXTURE_MIN_FILTER, GL10.GL_NEAREST);
            gl.glTexParameterf(GL10.GL_TEXTURE_2D, GL10.GL_TEXTURE_MAG_FILTER, GL10.GL_LINEAR);
            gl.glTexParameterf(GL10.GL_TEXTURE_2D, GL10.GL_TEXTURE_WRAP_S, GL10.GL_CLAMP_TO_EDGE);
            gl.glTexParameterf(GL10.GL_TEXTURE_2D, GL10.GL_TEXTURE_WRAP_T, GL10.GL_CLAMP_TO_EDGE);
            gl.glTexEnvf(GL10.GL_TEXTURE_ENV, GL10.GL_TEXTURE_ENV_MODE, GL10.GL_MODULATE);
            GLUtils.texImage2D(GL10.GL_TEXTURE_2D, 0, bmp, 0);
            int[] crop = {0, bmp.getHeight(), bmp.getWidth(), -bmp.getHeight()};
            ((GL11) gl).glTexParameteriv(GL10.GL_TEXTURE_2D, 35741, crop, 0);
            t.name = ids[0];
            t.width = bmp.getWidth();
            t.height = bmp.getHeight();
            t.loaded = true;
            bmp.recycle();
            return t;
        } catch (Exception e) {
            return null;
        } finally {
            try {
                if (in != null) in.close();
            } catch (Exception e) {
                // ignore
            }
        }
    }

    /** Hook in SpaceShipItem: show the new hull art on the ships screen. */
    public static void shipIcon(ImageView iv, SpaceObjectType t) {
        ModShips.Hull h = ModShips.hull(t);
        if (h == null || iv == null) return;
        InputStream in = null;
        try {
            in = open(iv.getContext(), h.art);
            iv.setImageBitmap(BitmapFactory.decodeStream(in));
        } catch (Exception e) {
            // keep the fallback icon
        } finally {
            try {
                if (in != null) in.close();
            } catch (Exception e) {
                // ignore
            }
        }
    }
}
