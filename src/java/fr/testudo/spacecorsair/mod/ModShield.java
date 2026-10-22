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
 * v30:
 * - EVE-style recharge curve (rate below, a smali hook in Shield.doPhysic): full item rate at or below 25% charge, ~75% at
 *   50%, ~55% at 75%, ~40% near full; the half-rate state halves the whole curve.
 * - Every other shield (enemies, police, flagships) follows the same curve at half rate and never recharges from zero,
 *   except bosses and faction flagships.
 * - The shell (shield_shell / shield_segment, 12 segments) is faintly visible at rest; segments dim as charge drops,
 *   sputter below 25% and fizzle out at zero (no cracking). A pulse runs around the rim while it recharges (one lap per
 *   1.3 s reboot) and a ripple marks each impact point.
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
    private static long testMs, logMs;
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

    /** Fraction of the item's recharge rate at a given charge (0..1): the EVE-like curve approved for v30. */
    static float curve(float frac) {
        if (frac <= 0.25f) return 1.0f;
        if (frac <= 0.5f) return 1.0f - (frac - 0.25f) * 1.0f;          // 1.00 -> 0.75
        if (frac <= 0.75f) return 0.75f - (frac - 0.5f) * 0.8f;         // 0.75 -> 0.55
        return 0.55f - Math.min(0.25f, frac - 0.75f) * 0.6f;            // 0.55 -> 0.40
    }

    /** Recharge allowed from zero for this holder: bosses and faction flagships only. */
    static boolean regenFromZero(fr.testudo.spacecorsair.business.Element h) {
        return h != null && (ModBoss.isBoss(h) || ModTitan.isTitanClass(h));
    }

    /**
     * v30 smali hook in Shield.doPhysic (regen branch): f = units per second about to be added (stock fast-reload bonus
     * included). Never throws: the stock rate is returned on any problem.
     */
    public static float rate(Shield s, float f) {
        try {
            if (s == null || s.capacity <= 0) return f;
            float frac = s.currentValue / s.capacity;
            float k = curve(frac);
            if (s.isPlayerShield) {
                if (slow) k *= SLOW;
                return f * k * ModV34.levelShield();
            }
            if (s.currentValue <= 0 && !regenFromZero(s.holder)) return 0;
            return f * k * 0.5f;
        } catch (Throwable t) {
            return f;
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
            // v29: fit the bubble to the hull as drawn: its visible extent (measured when the texture loads) + 8% margin
            float d = Math.min(ps.shipSpec.drawableSizeOfShield, ps.shipSpec.drawableSize * BUBBLE);
            Drawable hd = ps.getDrawableObject();
            if (hd != null && hd.dimensions != null) {
                float e = ModArt.extent(hd.myTexture);
                float side = Math.max(hd.dimensions.x, hd.dimensions.y);
                d = e > 0 ? Math.max(side * 0.75f, side * e * 1.12f) : Math.max(d, side * 1.15f);
            }
            if ((logMs -= j) <= 0 && ModDev.testFlag("corsair_titans")) {   // emulator diagnostics only (file checked every 3 s, not every frame)
                logMs = 3000;
                android.util.Log.i("ModShield", "spec=" + ps.shipSpec.drawableSize + " dimStatic=" + PlayerShip.drawableDimension.x
                    + " hd=" + (hd == null ? -1 : hd.dimensions.x) + " ext=" + (hd == null ? -9 : ModArt.extent(hd.myTexture))
                    + " d=" + d + " stockShieldDim=" + (PlayerShip.shieldDrawable == null ? -1 : PlayerShip.shieldDrawable.dimensions.x)
                    + " hidden=" + (hidden != null) + " img=" + ps.shipSpec.image + " basicTex=" + ModArt.extent(PlayerShip.BASIC_TEXTURE));
            }
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
        if (last > 0 && cur <= 0) fizzleAt = System.currentTimeMillis();
        regen = cur > last + 1e-4f;
        if (last > 0 && cur <= 0 && rebootLeft <= 0) {
            if (used < allowed(ps)) {
                used++;
                slow = false;
                rebootLeft = REBOOT_MS;
                fizzleAt = System.currentTimeMillis();
                Mod.floatText(ps, ModLang.tr("SHIELDS REBOOTING"), 0.5f, 0.85f, 1.0f);
            } else if (!slow) {
                slow = true;
                Mod.floatText(ps, ModLang.tr("SHIELD EMITTERS DAMAGED - HALF RECHARGE UNTIL REPAIRED"), 1.0f, 0.55f, 0.3f);
            }
        }
        if (slow && used < allowed(ps)) {   // dropped below 50% hull: the second recovery is available
            slow = false;
            used++;
            if (cur <= 0) {
                rebootLeft = REBOOT_MS;
                Mod.floatText(ps, ModLang.tr("SHIELDS REBOOTING"), 0.5f, 0.85f, 1.0f);
            }
        }
        if (rebootLeft > 0) {
            rebootLeft -= j;
            if (rebootLeft > 0) hold(s, rebootLeft + j);
            else hold(s, 0);
        }
        last = s.currentValue;
    }

    // ------------------------------------------------------------------ v30 shell
    private static Drawable hidden;     // the stock shield drawable whose texture we took away
    private static fr.testudo.spacecorsair.display.Texture stockTex;
    private static int lastFlash;
    private static long fizzleAt;       // charge hit zero
    private static boolean regen;       // charge went up last frame
    static final long HIT_MS = 520, FIZZLE_MS = 700;
    /** Ring centre line of shield_shell / shield_segment: 461 px of the 512 px half-size. */
    static final float RING_FRACTION = 461.0f / 512.0f;
    static final int SEGMENTS = 12;
    /** Segments dim from the stern towards the nose: index = order in which they go dark (0 first). */
    private static final int[] DIM_ORDER = {6, 5, 7, 4, 8, 3, 9, 2, 10, 1, 11, 0};
    private static final ModFx.Sprite[] SEG = new ModFx.Sprite[SEGMENTS];
    private static final ModFx.Sprite PULSE = new ModFx.Sprite(), PULSE2 = new ModFx.Sprite();
    private static final ModFx.Sprite[] RIP = new ModFx.Sprite[4], SPUT = new ModFx.Sprite[6];
    private static final float[] ripAng = new float[4];
    private static final long[] ripAt = new long[4];
    private static int ripNext;
    private static final fr.testudo.spacecorsair.engine.Vector2 at = new fr.testudo.spacecorsair.engine.Vector2();
    static {
        for (int i = 0; i < SEGMENTS; i++) { SEG[i] = new ModFx.Sprite(); SEG[i].additive = true; }
        for (int i = 0; i < RIP.length; i++) { RIP[i] = new ModFx.Sprite(); RIP[i].additive = true; }
        for (int i = 0; i < SPUT.length; i++) { SPUT[i] = new ModFx.Sprite(); SPUT[i].additive = true; }
        PULSE.additive = true;
        PULSE2.additive = true;
    }

    private static boolean shellReady() {
        return ModArt.ready("shield_segment") != null;
    }

    /** Impact on the player's shield (ModLive.hit): ripple at the hit point. Angle in world degrees from the ship centre. */
    static void impact(float worldDeg) {
        int i = ripNext;
        ripNext = (ripNext + 1) % RIP.length;
        ripAng[i] = worldDeg;
        ripAt[i] = System.currentTimeMillis();
    }

    /**
     * Game thread: the stock bubble is alpha-blended with the shield colour; the greyscale-on-black art needs additive
     * blending, so we draw it ourselves (draw below) and give the stock drawable no texture (the render queue skips it).
     * Map mode, where drawOver does not run, and a missing texture keep the stock bubble.
     */
    private static void hideStock() {
        ModArt.blank();                     // keeps the stand-in's GL name current after a context loss
        Drawable d = PlayerShip.shieldDrawable;
        boolean want = d != null && shellReady() && !ObjectRegistry.INSTANCE.game.mapMode;
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

    private static final fr.testudo.spacecorsair.engine.Vector2 off = new fr.testudo.spacecorsair.engine.Vector2();

    /** off = the rim point at a heading (degrees, game convention: 0 = local -y, the nose of an unrotated sprite). */
    private static void rim(float deg, float radius) {
        off.set(0.0f, -radius).applyRotatation(Math.toRadians(deg));
    }

    /** Queue a camera-relative sprite at the ship (screen centre) offset by (ox, oy) world units. */
    private static void q(ModFx.Sprite sp, String tex, float w, float rot, float a, float r, float g, float b, float ox, float oy) {
        fr.testudo.spacecorsair.display.Texture t = ModArt.ready(tex);
        if (t == null || a <= 0.01f) return;
        sp.myTexture = t;
        sp.w = w;
        sp.h = w;
        at.setSameAs(fr.testudo.spacecorsair.engine.GameRenderer.screenCenter).add(ox, oy);
        ObjectRegistry.INSTANCE.renderQueue.addToWaitingQueue(at, true, sp, rot, false, Math.min(1.0f, a), r, g, b);
    }

    private static void drawShell(PlayerShip ps, Shield s) {
        if (hidden == null || hidden != PlayerShip.shieldDrawable) return;
        float d = PlayerShip.shieldDimension.x;
        float W = d / RING_FRACTION, rad = d * 0.5f;
        long now = System.currentTimeMillis();
        int fl = ps.shieldFlash;
        lastFlash = fl;
        float r = Math.max(0.25f, s.r), g = Math.max(0.25f, s.g), b = Math.max(0.25f, s.b);
        float frac = s.capacity > 0 ? Math.max(0.0f, Math.min(1.0f, s.currentValue / s.capacity)) : 0.0f;
        float hit = fl > 0 ? Math.min(1.0f, fl / 400.0f) : 0.0f;
        boolean rebooting = rebootLeft > 0;
        boolean charging = regen && frac < 0.999f;
        // overall brightness: faint at rest, brighter while charging, flashes on hits
        float base = 0.32f + (charging ? 0.2f : 0) + 0.4f * hit;
        boolean low = frac > 0 && frac < 0.25f;
        float lit = frac * SEGMENTS;            // segments still powered (fractional boundary)
        for (int k = 0; k < SEGMENTS; k++) {
            int seg = DIM_ORDER[k];
            float p = Math.max(0.0f, Math.min(1.0f, lit - (SEGMENTS - 1 - k)));   // dark-first segments lose power first
            float a = base * (0.06f + 0.94f * p);
            if (low) a *= 0.55f + 0.45f * (float) Math.random();              // sputtering emitters
            if (rebooting) {
                float prog = 1.0f - rebootLeft / (float) REBOOT_MS;            // segments relight behind the pulse
                a = (seg / (float) SEGMENTS) < prog ? 0.45f : 0.03f;
            }
            if (frac <= 0 && !rebooting) {
                long f = now - fizzleAt;
                a = f < FIZZLE_MS ? 0.6f * (1.0f - f / (float) FIZZLE_MS) * (float) Math.random() : 0.0f;
            }
            q(SEG[seg], "shield_segment", W, ps.spin + seg * 30.0f, a, r, g, b, 0, 0);
        }
        // recharge pulse: a comet running round the rim (one lap per reboot, faster laps while charging)
        if (rebooting || charging) {
            float lapMs = rebooting ? REBOOT_MS : 1600.0f;
            float prog = rebooting ? 1.0f - rebootLeft / (float) REBOOT_MS : (now % (long) lapMs) / lapMs;
            float ang = ps.spin + prog * 360.0f;          // game rotation convention, from the nose
            rim(ang, rad);
            float ox = off.x, oy = off.y;
            float pw = Math.max(60.0f, d * 0.42f);
            q(PULSE, "shield_pulse", pw, ang, rebooting ? 0.95f : 0.6f, r, g, b, ox, oy);
            if (rebooting) q(PULSE2, "shield_pulse", pw * 0.6f, ang, 0.9f, 1, 1, 1, ox, oy);
        }
        // impact ripples
        for (int i = 0; i < RIP.length; i++) {
            long age = now - ripAt[i];
            if (age < 0 || age >= HIT_MS || frac <= 0) continue;
            float k = age / (float) HIT_MS;
            rim(ripAng[i], rad * 0.97f);
            float ox = off.x, oy = off.y;
            q(RIP[i], "shield_ripple", d * (0.32f + 0.18f * k), ripAng[i], (1 - k) * (1 - k) * 0.95f, r, g, b, ox, oy);
        }
        // sputter sparks below 25% and while fizzling out
        boolean fizz = frac <= 0 && !rebooting && now - fizzleAt < FIZZLE_MS;
        if (low || fizz) {
            int n = fizz ? SPUT.length : 2;
            for (int i = 0; i < n; i++) {
                if (!fizz && Math.random() < 0.6) continue;
                float deg = (float) (Math.random() * 360.0);
                rim(deg, rad);
                float ox = off.x, oy = off.y;
                int fr = (int) (Math.random() * 16);
                ModFx.Sprite sp = SPUT[i];
                sp.u0 = (fr % 4) * 0.25f; sp.v0 = (fr / 4) * 0.25f; sp.u1 = sp.u0 + 0.25f; sp.v1 = sp.v0 + 0.25f;
                q(sp, "shield_sputter_sheet", d * 0.22f, deg, 0.9f, r, g, b, ox, oy);
            }
        }
    }

    /** After the hull is queued (ModCaps.drawOver): the v30 shield shell. */
    static void draw(PlayerShip ps) {
        Shield s = ps.shield;
        if (s != null && s.capacity > 0) drawShell(ps, s);
    }
}
