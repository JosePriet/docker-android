package fr.testudo.spacecorsair.mod;

import fr.testudo.spacecorsair.business.player.PlayerShip;
import fr.testudo.spacecorsair.business.player.Shield;
import fr.testudo.spacecorsair.display.Drawable;
import fr.testudo.spacecorsair.engine.ObjectRegistry;
import java.lang.reflect.Field;

/**
 * v24 player shields:
 * - the bubble is a tighter circle around the hull (visual and hit radius);
 * - while shields are up the hull itself carries a faint shield-coloured sheen (EVE style), gone when they collapse;
 * - a full collapse reboots the shield after 1.3 s, but only once while the hull is above 50% and once more below
 *   50%; past that a collapsed shield waits out its normal delay and then recharges at half speed until a repair item
 *   (pickup, insta-repair) or a full station repair. Natural hull regen and skills do not count as repairs.
 */
public final class ModShield {
    private ModShield() {}

    static final int REBOOT_MS = 1300;
    /** Shield diameter as a multiple of the hull's drawable size (mod hulls used 1.3). */
    static final float BUBBLE = 1.1f;

    private static Field fNoRegen, fRemaining;
    private static boolean reflectFailed;
    private static int used;            // reboots spent since the last repair
    private static boolean slow;        // reboots used up: half-speed recharge until repaired
    static final float SLOW = 0.5f;
    private static long rebootLeft;     // > 0 while a reboot is counting down
    private static float last = -1;
    private static Shield lastShield;
    private static long testMs;
    private static boolean testWas;

    private static boolean fields() {
        if (fNoRegen != null) return true;
        if (reflectFailed) return false;
        try {
            Field a = Shield.class.getDeclaredField("isInNoRegenerationTime");
            Field b = Shield.class.getDeclaredField("remainingNoRegenrationTime");
            a.setAccessible(true);
            b.setAccessible(true);
            fRemaining = b;
            fNoRegen = a;
            return true;
        } catch (Throwable e) {
            reflectFailed = true;
            return false;
        }
    }

    private static void hold(Shield s, float ms) {
        try {
            fNoRegen.setBoolean(s, true);
            fRemaining.setFloat(s, ms);
        } catch (Throwable e) {
            // leave the stock behaviour
        }
    }

    /** Smali hook: PlayerInfo.repairShipInPourc / onUsedInstantRepair / onUsedInstantRepairDeluxe and PlayerShip.setFullLifeAndShieldUp. */
    public static void onRepair() {
        used = 0;
        rebootLeft = 0;
        slow = false;
    }

    private static int allowed(PlayerShip ps) {
        return ps.maxLife > 0 && ps.life / ps.maxLife <= 0.5f ? 2 : 1;
    }

    /** Game thread, every frame before Shield.doPhysic (ModCaps.tick). */
    static void tick(PlayerShip ps, long j) {
        Shield s = ps.shield;
        if (s == null || s.capacity <= 0) return;
        // tighter bubble; the stock code resets these statics whenever the hull changes
        if (ps.shipSpec != null) {
            float d = Math.min(ps.shipSpec.drawableSizeOfShield, ps.shipSpec.drawableSize * BUBBLE);
            if (PlayerShip.shieldDimension.x != d) PlayerShip.shieldDimension.set(d, d);
            if (PlayerShip.shieldDrawable != null && PlayerShip.shieldDrawable.dimensions != PlayerShip.shieldDimension
                && PlayerShip.shieldDrawable.dimensions.x != d) PlayerShip.shieldDrawable.dimensions.set(d, d);
            float ph = Math.max(ps.shipSpec.physicSizeWithoutShield, Math.min(ps.shipSpec.physicSizeWithShield, d * 0.92f));
            if (PlayerShip.physicDimensionWithShield.x != ph) PlayerShip.physicDimensionWithShield.set(ph, ph);
        }
        hideStock();
        if (s != lastShield) {  // new ship / new shield object
            lastShield = s;
            last = s.currentValue;
            rebootLeft = 0;
            return;
        }
        if (ps.isDocked || !fields()) {
            last = s.currentValue;
            return;
        }
        // emulator test: each time /data/local/tmp/corsair_shieldbreak appears, the shield collapses once
        testMs -= j;
        if (testMs <= 0) {
            testMs = 500;
            boolean f = ModDev.testFlag("corsair_shieldbreak");
            if (f && !testWas) {
                s.currentValue = 0;
                s.valueInPourc = 0;
            }
            testWas = f;
        }
        float cur = s.currentValue;
        if (last > 0 && cur <= 0 && rebootLeft <= 0) {
            if (used < allowed(ps)) {
                used++;
                slow = false;
                rebootLeft = REBOOT_MS;
                Mod.floatText(ps, "SHIELDS REBOOTING", 0.5f, 0.85f, 1.0f);
            } else if (!slow) {
                slow = true;
                Mod.floatText(ps, "SHIELD EMITTERS DAMAGED - HALF RECHARGE UNTIL REPAIRED", 1.0f, 0.55f, 0.3f);
            }
        }
        if (slow && used < allowed(ps)) {   // dropped below 50% hull: the second recovery is available
            slow = false;
            used++;
            if (cur <= 0) {
                rebootLeft = REBOOT_MS;
                Mod.floatText(ps, "SHIELDS REBOOTING", 0.5f, 0.85f, 1.0f);
            }
        }
        if (rebootLeft > 0) {
            rebootLeft -= j;
            if (rebootLeft > 0) hold(s, rebootLeft + j);
            else hold(s, 0);
        } else if (slow) {
            // keep half of what Shield.doPhysic recharged since the last frame (big jumps = outright restores, left alone)
            float d = cur - last;
            if (last >= 0 && d > 0 && d < s.capacity * 0.3f) {
                s.currentValue = last + d * SLOW;
                s.valueInPourc = s.currentValue * 100.0f / s.capacity;
            }
        }
        last = s.currentValue;
    }

    // ------------------------------------------------------------------ hull sheen
    private static final ModFx.Sprite SHEEN = new ModFx.Sprite(), RIM = new ModFx.Sprite();
    static {
        SHEEN.additive = true;
        RIM.additive = true;
    }

    // ------------------------------------------------------------------ v24 bubble + hit ripple (vfx_shield_bubble / vfx_shield_hit)
    private static final ModFx.Sprite BUBBLE_SPR = new ModFx.Sprite(), HIT_SPR = new ModFx.Sprite();
    static {
        BUBBLE_SPR.additive = true;
        HIT_SPR.additive = true;
    }
    private static Drawable hidden;     // the stock shield drawable whose texture we took away
    private static fr.testudo.spacecorsair.display.Texture stockTex;
    private static int lastFlash;
    private static long hitAt;
    static final long HIT_MS = 480;

    private static boolean bubbleReady() {
        fr.testudo.spacecorsair.display.Texture t = ModArt.texture("vfx_shield_bubble");
        return t != null && t.loaded;
    }

    /**
     * Game thread: the stock bubble is alpha-blended with the shield colour; the greyscale-on-black art needs additive
     * blending, so we draw it ourselves (draw below) and give the stock drawable no texture (the render queue skips it).
     * Map mode, where drawOver does not run, and a missing texture keep the stock bubble.
     */
    private static void hideStock() {
        ModArt.blank();                     // keeps the stand-in's GL name current after a context loss
        Drawable d = PlayerShip.shieldDrawable;
        boolean want = d != null && bubbleReady() && !ObjectRegistry.INSTANCE.game.mapMode;
        if (hidden != null && (hidden != d || !want)) {   // restore (new drawable after a hull change, map mode, no art)
            if (hidden.myTexture == null || hidden.myTexture == ModArt.blank()) hidden.myTexture = stockTex;
            hidden = null;
        }
        if (want && hidden == null) {
            stockTex = d.myTexture;
            if (stockTex == null) return;
            if (ModArt.blank().name <= 0) return;   // no transparent texture yet: keep the stock bubble
            hidden = d;
            d.myTexture = ModArt.blank();       // never null: the stock Drawable.draw binds myTexture.name unchecked
        }
    }

    private static void drawBubble(PlayerShip ps, Shield s) {
        if (hidden == null || hidden != PlayerShip.shieldDrawable) return;
        float d = PlayerShip.shieldDimension.x;
        long now = System.currentTimeMillis();
        int fl = ps.shieldFlash;
        if (fl > lastFlash && fl >= 300) hitAt = now;   // rising edge: a hit sets shieldFlash to 400
        lastFlash = fl;
        float r = Math.max(0.2f, s.r), g = Math.max(0.2f, s.g), b = Math.max(0.2f, s.b);
        float frac = s.capacity > 0 ? Math.max(0.0f, Math.min(1.0f, s.currentValue / s.capacity)) : 0.0f;
        if (frac > 0) {
            BUBBLE_SPR.myTexture = ModArt.texture("vfx_shield_bubble");
            BUBBLE_SPR.w = d;
            BUBBLE_SPR.h = d;
            float flash = fl > 0 ? fl / 400.0f : 0.0f;
            ObjectRegistry.INSTANCE.renderQueue.addToWaitingQueue(fr.testudo.spacecorsair.engine.GameRenderer.screenCenter, true, BUBBLE_SPR,
                ps.spin, false, Math.min(1.0f, frac + 0.35f * flash), r, g, b);
        }
        long age = now - hitAt;
        fr.testudo.spacecorsair.display.Texture ht = ModArt.texture("vfx_shield_hit");
        if (age >= 0 && age < HIT_MS && ht != null) {
            float k = age / (float) HIT_MS;
            HIT_SPR.myTexture = ht;
            HIT_SPR.w = d * (0.92f + 0.22f * k);
            HIT_SPR.h = HIT_SPR.w;
            ObjectRegistry.INSTANCE.renderQueue.addToWaitingQueue(fr.testudo.spacecorsair.engine.GameRenderer.screenCenter, true, HIT_SPR,
                ps.spin, false, (1 - k) * (1 - k), r, g, b);
        }
    }

    /** After the hull is queued (ModCaps.drawOver): shield bubble (v24) and the shield-coloured sheen hugging the hull. */
    static void draw(PlayerShip ps) {
        Shield s = ps.shield;
        if (s != null && s.capacity > 0) drawBubble(ps, s);
        if (s == null || s.capacity <= 0 || s.currentValue <= 0) return;
        Drawable hull = ps.getDrawableObject();
        if (hull == null || hull.myTexture == null || hull.dimensions == null) return;
        float frac = Math.min(1.0f, s.currentValue / s.capacity);
        long t = System.currentTimeMillis();
        float pulse = 0.5f + 0.5f * (float) Math.sin(t / 650.0d);
        float hit = ps.shieldFlash > 0 ? ps.shieldFlash / 400.0f : 0.0f;
        float a = (0.35f + 0.65f * frac) * (0.10f + 0.06f * pulse) + 0.35f * hit;
        float w = hull.dimensions.x, h = hull.dimensions.y;
        SHEEN.myTexture = hull.myTexture;
        SHEEN.w = w;
        SHEEN.h = h;
        RIM.myTexture = hull.myTexture;
        RIM.w = w * 1.045f;
        RIM.h = h * 1.045f;
        float r = Math.max(0.25f, s.r), g = Math.max(0.25f, s.g), b = Math.max(0.25f, s.b);
        // the player hull is drawn camera-relative at the screen centre, like the stock shield
        ObjectRegistry.INSTANCE.renderQueue.addToWaitingQueue(fr.testudo.spacecorsair.engine.GameRenderer.screenCenter, true, RIM, ps.spin, false, a * 0.55f, r, g, b);
        ObjectRegistry.INSTANCE.renderQueue.addToWaitingQueue(fr.testudo.spacecorsair.engine.GameRenderer.screenCenter, true, SHEEN, ps.spin, false, a, r, g, b);
    }
}
