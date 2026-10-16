package fr.testudo.spacecorsair.mod;

import android.app.Activity;
import android.graphics.Color;
import android.graphics.drawable.GradientDrawable;
import android.os.Handler;
import android.os.Looper;
import android.util.TypedValue;
import android.view.Gravity;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.FrameLayout;
import fr.testudo.spacecorsair.business.Element;
import fr.testudo.spacecorsair.business.player.PlayerCanon;
import fr.testudo.spacecorsair.business.player.PlayerShip;
import fr.testudo.spacecorsair.business.projectiles.EnergyBullet;
import fr.testudo.spacecorsair.business.projectiles.LaserBeam;
import fr.testudo.spacecorsair.business.projectiles.Missile;
import fr.testudo.spacecorsair.display.Drawable;
import fr.testudo.spacecorsair.engine.ObjectRegistry;
import fr.testudo.spacecorsair.engine.Vector2;
import java.util.ArrayList;

/**
 * v17 titan weapons: custom turrets (recoil, muzzle flash, charge glow), heavy bolts, siege missiles with a bigger
 * blast, and the EVE-style doomsday: a charge-up, then a sustained lance in a straight line (Leviathan, X-0) or a
 * furnace nova around the hull (Crimson Throne). While it charges and fires the titan cannot move, turn, shoot or
 * launch missiles. Triggered from the DOOMSDAY button over the game view.
 */
public final class ModTitan {
    private ModTitan() {}

    static final int NONE = 0, LEVIATHAN = 1, THRONE = 2, DEV = 3;

    static int kind(ModCaps.Profile p) {
        if (p == null || !p.titan || p.hull == null) return NONE;
        if (p.hull.dev) return DEV;
        if ("crimson_throne".equals(p.hull.art)) return THRONE;
        return LEVIATHAN;
    }

    static int kind(PlayerShip ps) {
        if (ps == null || ps.shipSpec == null) return NONE;
        return kind(ModCaps.profile(ps));
    }

    private static final float[][] COL = {{1, 1, 1}, {0.55f, 0.85f, 1.0f}, {1.0f, 0.55f, 0.2f}, {0.35f, 1.0f, 0.5f}};
    private static final String[] TURRET = {null, "hw_turret_leviathan", "hw_turret_crimson_throne", "hw_turret_dev_prototype"};
    private static final String[] MISSILE = {null, "hw_missile_leviathan", "hw_missile_crimson_throne", "hw_missile_dev_prototype"};

    // ------------------------------------------------------------------ balance
    /** Per-shot damage and reload multipliers of titan turrets (heavier, slower shots; net ~+60% DPS). */
    public static final float SHOT_DAMAGE = 2.5f, SHOT_RELOAD = 1.55f;
    /** Siege missiles (not the dev hull): damage, blast radius and reload multipliers. */
    public static final float MISSILE_DAMAGE = 1.9f, MISSILE_RANGE = 1.55f, MISSILE_RELOAD = 1.6f;
    public static final float BLAST = 350.0f;

    /** From ModShips.apply after the hull multipliers. */
    public static void apply(PlayerShip ps) {
        int k = kind(ps);
        if (k == NONE) return;
        if (ps.playerCannons != null) {
            for (PlayerCanon c : ps.playerCannons) {
                c.shootDamage = (int) (c.shootDamage * SHOT_DAMAGE);
                c.timeBewteenShootInMilli = (int) (c.timeBewteenShootInMilli * SHOT_RELOAD);
                c.maxSpinSpeed = Math.max(c.maxSpinSpeed, 1.7f);
                c.shootSpeed *= 1.3f;
            }
        }
        if (k != DEV) ps.milleSecBetweenMissileShots = (long) (ps.milleSecBetweenMissileShots * MISSILE_RELOAD);
    }

    // ------------------------------------------------------------------ turrets
    private static final float[] recoil = new float[16];
    private static final float[] flash = new float[16];
    private static final Vector2 a = new Vector2(), b = new Vector2(), c2 = new Vector2();

    /** Hook (Mod.tick): titan turrets are drawn by the mod, so the stock sprite is blanked. */
    public static boolean ownsTurrets(PlayerShip ps) {
        return kind(ps) != NONE;
    }

    static void drawTurrets(PlayerShip ps, ModCaps.Profile p) {
        int k = kind(p);
        if (k == NONE || ps.playerCannons == null) return;
        float sz = ps.shipSpec.drawableSize;
        float ts = sz * 0.12f;
        float[] col = COL[k];
        int fam = ModWeapons.family(ps.laserSpec);
        String tex = fam >= 0 && k != DEV ? ModArt.familyTurretName(fam, ModShips.TITAN) : TURRET[k];   // v23 family turrets (the X-0 keeps its own)
        for (int i = 0; i < ps.playerCannons.length && i < 16; i++) {
            PlayerCanon cn = ps.playerCannons[i];
            float ang = ps.spin - cn.currentDeltaSpinWithShip;
            ModFx.local(ps.position, ps.spin, cn.shipPosition.x, cn.shipPosition.y, a);
            // recoil pushes the turret back along its barrels
            float back = recoil[i] * ts * 0.14f;
            c2.set(0, back).applyRotatation(Math.toRadians(ang));
            ModFx.spr(tex, a.x + c2.x, a.y + c2.y, ts, ts, ang, 1, 1, 1, 1, false);
            // barrel tip
            c2.set(0, -ts * 0.5f).applyRotatation(Math.toRadians(ang));
            float tx = a.x + c2.x, ty = a.y + c2.y;
            if (flash[i] > 0) {
                ModFx.spr("fx_core", tx, ty, ts * 0.9f * flash[i], ts * 0.9f * flash[i], 0, col[0], col[1], col[2], flash[i], true);
                ModFx.spr("fx_streak", tx, ty, ts * 1.3f * flash[i], ts * 0.35f, ang, 1, 1, 1, flash[i] * 0.8f, true);
            }
            // charge glow: grows as the next shot comes up (X-0 and Leviathan capacitors)
            if (k != THRONE && cn.timeBewteenShootInMilli > 0) {
                float ready = 1 - Math.max(0, Math.min(1, cn.nextShootAllowed / (float) cn.timeBewteenShootInMilli * 2));
                if (ps.isShooting && ready > 0.3f) {
                    ModFx.spr("fx_glow", tx, ty, ts * 0.45f * ready, ts * 0.45f * ready, 0, col[0], col[1], col[2], 0.6f * ready, true);
                }
            } else if (k == THRONE) {
                float vent = 0.5f + 0.5f * (float) Math.sin(System.currentTimeMillis() / 260.0d + i);
                ModFx.spr("fx_glow", a.x, a.y, ts * 0.5f, ts * 0.5f, 0, 1.0f, 0.5f, 0.15f, 0.25f + 0.25f * vent, true);
            }
        }
    }

    /** From Mod.addBullet for player bullets: titan bolt colour, recoil + muzzle flash on the firing turret. */
    public static void onBullet(PlayerShip ps, Object o) {
        int k = kind(ps);
        if (k == NONE || !(o instanceof EnergyBullet) || ps.playerCannons == null) return;
        EnergyBullet eb = (EnergyBullet) o;
        float[] col = COL[k];
        eb.r = col[0];
        eb.g = col[1];
        eb.b = col[2];
        eb.a = 1.0f;
        int best = -1;
        float bd = Float.MAX_VALUE;
        for (int i = 0; i < ps.playerCannons.length && i < 16; i++) {
            ModFx.local(ps.position, ps.spin, ps.playerCannons[i].shipPosition.x, ps.playerCannons[i].shipPosition.y, a);
            float d = a.distance(eb.position);
            if (d < bd) { bd = d; best = i; }
        }
        if (best >= 0) {
            recoil[best] = 1;
            flash[best] = 1;
        }
        if (!ModWeapons.playFire(ps)) {
            ModSound.play(k == DEV ? "titan_dev" : k == THRONE ? "titan_throne" : "titan_leviathan", 0.9f, ModFx.rnd(0.94f, 1.06f), 160);
        }
    }

    /** True when the titan cannon sound replaces the stock laser sound. */
    public static boolean ownsLaserSound(PlayerShip ps) {
        return kind(ps) != NONE;
    }

    private static ModFx.Sprite boltL, boltT, boltD;

    /** Hook: EnergyBullet.getDrawableObject. Heavy bolts for titan shots; null keeps the stock sprite. */
    public static Drawable bullet(EnergyBullet e) {
        try {
            PlayerShip ps = ObjectRegistry.INSTANCE.playerShip;
            if (e.sender == null || e.sender != ps) return null;
            int k = kind(ps);
            Drawable family = ModWeapons.bullet(e, k != NONE);
            if (family != null) return family;
            if (k == NONE) return null;
            if (boltL == null) {
                boltL = ModFx.fixed("fx_bolt", 30, 92, true);
                boltT = ModFx.fixed("fx_fire", 58, 58, true);
                boltD = ModFx.fixed("fx_bolt", 24, 84, true);
            }
            ModFx.Sprite s = k == THRONE ? boltT : k == DEV ? boltD : boltL;
            if (s.myTexture == null) ModFx.rebind(s, k == THRONE ? "fx_fire" : "fx_bolt");
            return s.myTexture == null ? null : s;
        } catch (Throwable t) {
            return null;
        }
    }

    // ------------------------------------------------------------------ missiles
    /** Hook: PlayerShip.shootMissile, before the missile joins the level. */
    public static void onMissile(Missile m) {
        try {
            PlayerShip ps = ObjectRegistry.INSTANCE.playerShip;
            int k = kind(ps);
            if (k == NONE) return;
            if (k != DEV) {
                m.damage *= MISSILE_DAMAGE;
                m.radiusDamage *= MISSILE_DAMAGE;
            }
            float[] col = COL[k];
            ModFx.part("fx_core", m.position.x, m.position.y, 0, 0, 220, 40, 150, col[0], col[1], col[2], 1.0f, true, true);
            ModFx.part("fx_smoke", m.position.x, m.position.y, ModFx.rnd(-30, 30), ModFx.rnd(-30, 30), 1200, 50, 160, 0.5f, 0.5f, 0.5f, 0.5f, false, false);
            ModSound.play("titan_missile", 0.8f, ModFx.rnd(0.95f, 1.05f), 250);
        } catch (Exception e) {
            // cosmetic
        }
    }

    private static ModFx.Sprite[] missileSprites;
    private static int trail;

    /** From ModArt.missile: titan missile sprite + exhaust trail; null = not a titan missile. */
    public static Drawable missile(Missile m) {
        try {
            PlayerShip ps = ObjectRegistry.INSTANCE.playerShip;
            if (m.sender == null || m.sender != ps) return null;
            int k = kind(ps);
            if (k == NONE) return hullMissile(ps);
            if (missileSprites == null) {
                missileSprites = new ModFx.Sprite[4];
                for (int i = 1; i < 4; i++) missileSprites[i] = ModFx.fixed(MISSILE[i], 104, 104, false);
            }
            ModFx.Sprite s = missileSprites[k];
            if (s.myTexture == null) ModFx.rebind(s, MISSILE[k]);
            if (((trail++) & 1) == 0) {
                float[] col = COL[k];
                ModFx.local(m.position, m.spin, 0, 46, a);
                ModFx.part("fx_smoke", a.x, a.y, ModFx.rnd(-12, 12), ModFx.rnd(-12, 12), 1100, 26, 90, 0.55f, 0.55f, 0.58f, 0.45f, false, false);
                ModFx.part("fx_glow", a.x, a.y, 0, 0, 160, 50, 26, col[0], col[1], col[2], 0.9f, true, false);
            }
            return s.myTexture == null ? null : s;
        } catch (Throwable t) {
            return null;
        }
    }

    // keyed by hull (identity): this runs for every player missile every frame, so no name building per call
    private static final java.util.IdentityHashMap<ModShips.Hull, ModFx.Sprite> hullMissiles = new java.util.IdentityHashMap<ModShips.Hull, ModFx.Sprite>();
    private static final java.util.IdentityHashMap<ModShips.Hull, String> hullMissileNames = new java.util.IdentityHashMap<ModShips.Hull, String>();

    /** Every mod hull fires missiles drawn in its own colours (src/genhw.py). */
    private static Drawable hullMissile(PlayerShip ps) {
        ModCaps.Profile p = ModCaps.profile(ps);
        ModShips.Hull h = p.hull;
        if (h == null) return null;
        ModFx.Sprite s = hullMissiles.get(h);
        if (s == null) {
            String n = "hw_missile_" + h.art;
            hullMissileNames.put(h, n);
            s = ModFx.fixed(n, 64, 64, false);
            hullMissiles.put(h, s);
        }
        if (s.myTexture == null) ModFx.rebind(s, hullMissileNames.get(h));
        return s.myTexture == null ? null : s;
    }

    /** Hook: Missile.onDestroyed. Blast range for applyRadiusDamage (titan siege missiles hit a wider area). */
    public static float blastRange(Missile m) {
        try {
            PlayerShip ps = ObjectRegistry.INSTANCE.playerShip;
            if (m.sender == null || m.sender != ps || m.isAntiMissile) return BLAST;
            int k = kind(ps);
            if (k == NONE) return BLAST;
            float range = k == DEV ? BLAST : BLAST * MISSILE_RANGE;
            float[] col = COL[k];
            ModFx.part("fx_core", m.position.x, m.position.y, 0, 0, 380, 80, range * 1.2f, 1.0f, 0.9f, 0.7f, 1.0f, true, true);
            ModFx.part("fx_shock", m.position.x, m.position.y, 0, 0, 650, 60, range * 2.0f, col[0], col[1], col[2], 0.9f, true, true);
            ModFx.boom(m.position.x, m.position.y, range * 1.6f, 900, 1.0f, 0.85f, 0.7f);
            for (int i = 0; i < 7; i++) {
                double ang = Math.random() * Math.PI * 2;
                float sp = ModFx.rnd(60, 200);
                ModFx.part("fx_fire", m.position.x, m.position.y, (float) Math.cos(ang) * sp, (float) Math.sin(ang) * sp, ModFx.rnd(500, 900), 50, 150, 1.0f, ModFx.rnd(0.4f, 0.7f), 0.15f, 0.9f, true, true);
                ModFx.lastDrag(1.5f);
                ModFx.part("fx_smoke", m.position.x, m.position.y, (float) Math.cos(ang) * sp * 0.5f, (float) Math.sin(ang) * sp * 0.5f, 1800, 60, 200, 0.3f, 0.3f, 0.3f, 0.55f, false, false);
                ModFx.lastDrag(1.0f);
            }
            ModSound.play("titan_blast", 0.8f, ModFx.rnd(0.9f, 1.1f), 180);
            ModQol.addShake(0.15f);
            return range;
        } catch (Exception e) {
            return BLAST;
        }
    }

    // ------------------------------------------------------------------ doomsday
    static final int READY = 0, CHARGE = 1, FIRE = 2, COOL = 3;
    /** Emulator tests only (/data/local/tmp/corsair_doomhold): keep the beam firing so screenshots catch it. */
    static boolean holdFire;
    private static int state = COOL;
    private static int timer = 20000;       // first use 20 s after taking a titan out
    private static int tickAcc;
    private static float lockSpin;
    private static float savedForce = -1;
    private static int ownerKind = NONE;
    static volatile boolean request;
    static volatile String label = "";
    static volatile boolean show;
    static volatile int uiKind;
    static volatile long lastTick;
    private static LaserBeam doomShot;
    private static float novaRadius;
    private static int coolSec = -1;
    private static String coolLabel;

    // per kind: charge ms, fire ms, cooldown ms, base damage per tick, per-level damage, tick ms, length/radius, width
    private static final int[] CHARGE_MS = {0, 2500, 2000, 1200};
    private static final int[] FIRE_MS = {0, 4000, 3500, 3000};
    private static final int[] COOL_MS = {0, 90000, 75000, 12000};
    private static final float[] DMG = {0, 1000, 700, 2000};
    private static final float[] DMG_LVL = {0, 90, 60, 200};
    private static final int[] TICK_MS = {0, 200, 250, 200};
    private static final float[] REACH = {0, 2800, 1400, 2600};

    public static boolean busy() {
        return state == CHARGE || state == FIRE;
    }

    /** Hook (Mod.launchDrones prologue and missiles): nothing else fires while the doomsday runs. */
    public static boolean blocksMissiles() {
        return busy();
    }

    /** Per frame from ModShips.tick (replaces the old automatic lance). */
    public static void tick(PlayerShip ps, long j) {
        int k = kind(ps);
        boolean map = ObjectRegistry.INSTANCE.game.mapMode;
        for (int i = 0; i < 16; i++) {
            if (recoil[i] > 0) recoil[i] = Math.max(0, recoil[i] - j / 260.0f);
            if (flash[i] > 0) flash[i] = Math.max(0, flash[i] - j / 110.0f);
        }
        if (k != ownerKind) {
            // ship changed: reset the cycle
            release(ps);
            ownerKind = k;
            state = COOL;
            timer = k == DEV ? 3000 : 20000;
        }
        uiKind = k;
        lastTick = System.currentTimeMillis();
        show = k != NONE && !map && !ps.isDocked && !ps.removed;
        if (k == NONE) {
            request = false;
            return;
        }
        if (map || ps.removed) {
            if (busy()) { release(ps); state = COOL; timer = COOL_MS[k] / 3; }
            label = "";
            request = false;
            return;
        }
        switch (state) {
            case COOL:
                timer -= j;
                if (timer <= 0) { state = READY; ModSound.play("repair", 0.4f, 0.7f, 1000); }
                int sec = Math.max(1, (timer + 999) / 1000);
                if (sec != coolSec || coolLabel == null) {   // per frame: build the text once per second
                    coolSec = sec;
                    coolLabel = "DOOMSDAY " + sec + "s";
                }
                label = coolLabel;
                request = false;
                break;
            case READY:
                label = k == THRONE ? "FURNACE NOVA" : "DOOMSDAY LANCE";
                if (request) {
                    request = false;
                    if (ps.isDocked) break;
                    state = CHARGE;
                    timer = CHARGE_MS[k];
                    lockSpin = ps.spin;
                    ModSound.play("doom_charge", 1.0f, 1.0f, 500);
                    Mod.floatText(ps, k == THRONE ? "FURNACE NOVA CHARGING" : "DOOMSDAY CHARGING", COL[k][0], COL[k][1], COL[k][2]);
                }
                break;
            case CHARGE:
                lock(ps, j);
                timer -= j;
                label = "CHARGING";
                chargeFx(ps, k, 1 - timer / (float) CHARGE_MS[k]);
                ModQol.addShake(j / 4000.0f);
                if (timer <= 0) {
                    state = FIRE;
                    timer = FIRE_MS[k];
                    tickAcc = 0;
                    novaRadius = 200;
                    ModSound.play(k == THRONE ? "doom_nova" : "doom_lance", 1.0f, 1.0f, 500);
                    ModQol.addShake(0.7f);
                }
                break;
            case FIRE:
                lock(ps, j);
                if (!holdFire || timer > FIRE_MS[k] / 2) timer -= j;   // test switch freezes the lance mid-fire
                label = "FIRING";
                tickAcc += j;
                if (k == THRONE) novaRadius = Math.min(REACH[k], novaRadius + j * 1.6f);
                while (tickAcc >= TICK_MS[k]) {
                    tickAcc -= TICK_MS[k];
                    damageTick(ps, k);
                }
                fireFx(ps, k);
                ModQol.addShake(j / 900.0f);
                if (timer <= 0) {
                    release(ps);
                    state = COOL;
                    timer = COOL_MS[k];
                }
                break;
            default:
                break;
        }
    }

    /** Immobile, no turning, no weapons while the doomsday charges and fires. */
    private static void lock(PlayerShip ps, long j) {
        if (savedForce < 0) savedForce = ps.maxPouseeForce;
        ps.maxPouseeForce = 0;
        ps.curPouseeForce = 0;
        ps.isPousee = false;
        ps.isBoosterEnabled = false;
        ps.targetAngle = lockSpin;
        ps.spin = lockSpin;
        ps.spinSpeed = 0;
        float damp = (float) Math.pow(0.93, j / 16.0);
        ps.speed.multiply(damp);
        ps.nextShootAlowed = Math.max(ps.nextShootAlowed, 300);
        ps.nextShootMissileAlowed = Math.max(ps.nextShootMissileAlowed, 300);
        if (ps.playerCannons != null) for (PlayerCanon c : ps.playerCannons) c.nextShootAllowed = Math.max(c.nextShootAllowed, 300);
    }

    private static void release(PlayerShip ps) {
        if (savedForce >= 0 && ps != null) {
            ps.maxPouseeForce = savedForce;
        }
        savedForce = -1;
    }

    private static final ArrayList<Element> targets = new ArrayList<Element>();

    private static void damageTick(PlayerShip ps, int k) {
        if (doomShot == null) doomShot = new LaserBeam();
        doomShot.sender = ps;
        doomShot.level = ps.level;
        doomShot.damage = DMG[k] + ps.level * DMG_LVL[k];
        doomShot.destroyedOnImpact = false;
        doomShot.ignoreImactDecalOnTarget = true;
        doomShot.mass = 0.0f;
        doomShot.alterationSpecs = fr.testudo.spacecorsair.business.loot.stuff.alteration.AlterationSpecs.DEFAULT;
        doomShot.resolveAlteration();
        Mod.enemiesInto(targets);
        float sz = ps.shipSpec.drawableSize;
        if (k == THRONE) {
            for (int i = 0; i < targets.size(); i++) {
                Element e = targets.get(i);
                if (e.removed) continue;
                if (e.position.distance(ps.position) <= novaRadius + radiusOf(e)) {
                    doomHit(e, DMG[k] + ps.level * DMG_LVL[k]);
                    ModFx.part("fx_fire", e.position.x, e.position.y, 0, 0, 400, 40, 120, 1.0f, 0.5f, 0.15f, 0.9f, true, true);
                    if (e.removed || e.life <= 0) ModFx.boom(e.position.x, e.position.y, Math.max(160, radiusOf(e) * 4), 850, 1.0f, 0.8f, 0.6f);
                }
            }
        } else {
            ModFx.local(ps.position, lockSpin, 0, -sz * 0.48f, a);   // nose
            b.set(0, -1).applyRotatation(Math.toRadians(lockSpin));  // forward
            float half = beamWidth(ps) / 2;   // matches the visible beam
            for (int i = 0; i < targets.size(); i++) {
                Element e = targets.get(i);
                if (e.removed) continue;
                float dx = e.position.x - a.x, dy = e.position.y - a.y;
                float along = dx * b.x + dy * b.y;
                if (along < -radiusOf(e) || along > REACH[k]) continue;
                float perp = Math.abs(dx * b.y - dy * b.x);
                if (perp <= half + radiusOf(e)) {
                    doomHit(e, DMG[k] + ps.level * DMG_LVL[k]);
                    float[] col = COL[k];
                    ModFx.part("fx_core", e.position.x, e.position.y, 0, 0, 260, 60, 180, col[0], col[1], col[2], 1.0f, true, true);
                    if (e.removed || e.life <= 0) ModFx.boom(e.position.x, e.position.y, Math.max(160, radiusOf(e) * 4), 850, 1.0f, 0.85f, 0.7f);
                }
            }
        }
    }

    /** Full beam width = 60% of the firing titan's width (wingtip to wingtip, from the sprite). */
    static float beamWidth(PlayerShip ps) {
        float sz = ps.shipSpec.drawableSize;
        ModCaps.Profile p = ModCaps.profile(ps);
        float w = p.data >= 0 ? (ModFxData.NAV[p.data][2] - ModFxData.NAV[p.data][0]) * sz : sz * 0.4f;
        return Math.max(sz * 0.2f, w * 0.6f);
    }

    /** Titan-class targets (mission bosses, faction capitals) tank doomsdays: each tick takes a small slice of their hull. */
    static final java.util.Map<Element, Boolean> titanClass = new java.util.WeakHashMap<Element, Boolean>();

    static boolean isTitanClass(Element e) {
        return titanClass.containsKey(e) || ModBoss.isBoss(e);
    }

    private static void doomHit(Element e, float base) {
        if (titanClass.containsKey(e)) {
            // EVE scale: a titan takes 30-60 doomsdays. A full lance (~20 ticks) removes ~2.5% of a titan-class hull.
            doomShot.damage = Math.min(base, e.maxLife * 0.00125f);
        } else if (ModBoss.isBoss(e)) {
            // mission bosses: ~8% per full lance, so missions stay winnable but the doomsday never one-shots them
            doomShot.damage = Math.min(base, e.maxLife * 0.004f);
        } else {
            // everything else in the beam is wiped within a few ticks
            doomShot.damage = Math.max(base, e.maxLife * 0.4f);
        }
        e.applyProjectileHit(doomShot);
    }

    private static float radiusOf(Element e) {
        try {
            Vector2 d = e.getPhysicDimension();
            return d == null ? 40 : Math.max(d.x, d.y) / 2;
        } catch (Exception x) {
            return 40;
        }
    }

    private static void chargeFx(PlayerShip ps, int k, float t) {
        float sz = ps.shipSpec.drawableSize;
        float[] col = COL[k];
        if (k == THRONE) {
            // the furnace core swells and vents
            float r = sz * (0.1f + 0.35f * t);
            ModFx.part("fx_core", ps.position.x, ps.position.y, 0, 0, 120, r, r * 1.1f, 1.0f, 0.55f, 0.15f, 0.5f + 0.5f * t, true, true);
            if (Math.random() < 0.5) {
                double ang = Math.random() * Math.PI * 2;
                float d = sz * 0.9f;
                float x = ps.position.x + (float) Math.cos(ang) * d, y = ps.position.y + (float) Math.sin(ang) * d;
                ModFx.part("fx_fire", x, y, (ps.position.x - x) * 1.8f, (ps.position.y - y) * 1.8f, 520, 50, 20, 1.0f, 0.5f, 0.15f, 0.9f, true, true);
            }
        } else {
            ModFx.local(ps.position, lockSpin, 0, -sz * 0.48f, a);
            float r = sz * (0.05f + 0.3f * t);
            ModFx.part("fx_core", a.x, a.y, 0, 0, 100, r, r, col[0], col[1], col[2], 0.6f + 0.4f * t, true, true);
            // energy drawn into the nose
            if (Math.random() < 0.7) {
                double ang = Math.random() * Math.PI * 2;
                float d = sz * ModFx.rnd(0.4f, 0.8f);
                float x = a.x + (float) Math.cos(ang) * d, y = a.y + (float) Math.sin(ang) * d;
                ModFx.part("fx_spark", x, y, (a.x - x) * 2.2f, (a.y - y) * 2.2f, 450, 18, 8, col[0], col[1], col[2], 1.0f, true, true);
                ModFx.lastStretch(0.05f);
            }
            // arcs between hull lights and the nose
            ModCaps.Profile p = ModCaps.profile(ps);
            if (p.data >= 0 && Math.random() < 0.5) {
                float[] l = ModFxData.LIGHTS[p.data];
                int o = 5 * (int) (Math.random() * (l.length / 5));
                if (o + 1 < l.length) {
                    ModFx.local(ps.position, lockSpin, l[o] * sz, l[o + 1] * sz, b);
                    zigzag(b.x, b.y, a.x, a.y, col);
                }
            }
        }
    }

    private static void zigzag(float x1, float y1, float x2, float y2, float[] col) {
        float px = x1, py = y1;
        for (int s = 1; s <= 6; s++) {
            float t = s / 6.0f;
            float nx = x1 + (x2 - x1) * t + (s < 6 ? ModFx.rnd(-25, 25) : 0);
            float ny = y1 + (y2 - y1) * t + (s < 6 ? ModFx.rnd(-25, 25) : 0);
            ModFx.line(px, py, nx, ny, col[0] * 0.6f + 0.4f, col[1] * 0.6f + 0.4f, col[2] * 0.6f + 0.4f, 0.9f);
            px = nx;
            py = ny;
        }
    }

    private static void fireFx(PlayerShip ps, int k) {
        float sz = ps.shipSpec.drawableSize;
        float[] col = COL[k];
        if (k == THRONE) {
            // expanding ring of fire around the hull
            for (int n = 0; n < 9; n++) {
                double ang = Math.random() * Math.PI * 2;
                float rr = novaRadius * ModFx.rnd(0.85f, 1.05f);
                float x = ps.position.x + (float) Math.cos(ang) * rr, y = ps.position.y + (float) Math.sin(ang) * rr;
                float tx = (float) -Math.sin(ang) * 320, ty = (float) Math.cos(ang) * 320;
                ModFx.part("fx_fire", x, y, tx, ty, 650, 140, 300, 1.0f, ModFx.rnd(0.35f, 0.65f), 0.12f, 1.0f, true, true);
            }
            for (int n = 0; n < 3; n++) {
                double ang = Math.random() * Math.PI * 2;
                float rr = novaRadius * ModFx.rnd(0.2f, 0.8f);
                ModFx.part("fx_fire", ps.position.x + (float) Math.cos(ang) * rr, ps.position.y + (float) Math.sin(ang) * rr, 0, 0, 500, 120, 260, 1.0f, 0.45f, 0.1f, 0.7f, true, true);
            }
            ModFx.part("fx_shock", ps.position.x, ps.position.y, 0, 0, 400, novaRadius * 1.8f, novaRadius * 2.15f, 1.0f, 0.55f, 0.15f, 0.9f, true, true);
            ModFx.part("fx_glow", ps.position.x, ps.position.y, 0, 0, 120, novaRadius * 2.3f, novaRadius * 2.3f, 1.0f, 0.45f, 0.1f, 0.45f, true, false);
        }
    }

    static final String LANCE_CORE = "vfx_lance_core";

    /** Beam drawn every frame while firing (from ModCaps.drawOver). */
    static void drawOver(PlayerShip ps, ModCaps.Profile p) {
        if (state != FIRE && state != CHARGE) return;
        int k = kind(p);
        if (k == NONE) return;
        float sz = ps.shipSpec.drawableSize;
        float[] col = COL[k];
        long now = System.currentTimeMillis();
        if (state == CHARGE) {
            // v24 charge glyph (vfx_doomsday_charge): swells and spins up at the nose (lance) or around the furnace core (nova)
            float t = Math.max(0, Math.min(1, 1 - timer / (float) CHARGE_MS[k]));
            float spin = (now % 100000L) * (0.03f + 0.25f * t);
            float pulse = 0.9f + 0.1f * (float) Math.sin(now / 70.0d);
            if (k == THRONE) {
                float d = sz * (0.6f + 0.9f * t) * pulse;
                ModFx.spr("vfx_doomsday_charge", ps.position.x, ps.position.y, d, d, spin, 1.0f, 0.55f, 0.18f, 0.35f + 0.65f * t, true);
            } else {
                ModFx.local(ps.position, lockSpin, 0, -sz * 0.48f, a);
                float d = sz * (0.25f + 0.65f * t) * pulse;
                ModFx.spr("vfx_doomsday_charge", a.x, a.y, d, d, spin, col[0] * 0.7f + 0.3f, col[1] * 0.7f + 0.3f, col[2] * 0.7f + 0.3f, 0.35f + 0.65f * t, true);
            }
            return;
        }
        if (k == THRONE) {
            // v24 furnace nova ring (vfx_nova_ring) riding the damage radius; the fire particles stay on top
            float fadeN = Math.min(1, timer / 500.0f);
            float d = novaRadius * 2.0f;
            ModFx.spr("vfx_nova_ring", ps.position.x, ps.position.y, d, d, (now / 30.0f) % 360, 1.0f, 0.6f, 0.2f, 0.95f * fadeN, true);
            ModFx.spr("vfx_nova_ring", ps.position.x, ps.position.y, d * 0.94f, d * 0.94f, -(now / 45.0f) % 360, 1.0f, 0.85f, 0.55f, 0.45f * fadeN, true);
            return;
        }
        ModFx.local(ps.position, lockSpin, 0, -sz * 0.48f, a);
        b.set(0, -1).applyRotatation(Math.toRadians(lockSpin));
        float fade = Math.min(1, timer / 400.0f) * Math.min(1, (FIRE_MS[k] - timer) / 150.0f);
        float len = REACH[k];
        float ex = a.x + b.x * len, ey = a.y + b.y * len;
        float wob = 0.9f + (float) Math.random() * 0.2f;
        float bw = beamWidth(ps);
        // soft halo, then a flat-topped band as wide as the damage band, then a white-hot core
        ModFx.strip("fx_beam", a.x, a.y, ex, ey, bw * 1.9f * wob, col[0], col[1], col[2], 0.6f * fade, true);
        ModFx.strip("fx_lance", a.x, a.y, ex, ey, bw * wob, col[0] * 0.6f + 0.4f, col[1] * 0.6f + 0.4f, col[2] * 0.6f + 0.4f, 0.8f * fade, true);
        if (ModFx.tex(LANCE_CORE) != null) {
            // v24 core layer (vfx_lance_core, 256x1024, tiles along T): repeated at its own 1:4 aspect, scrolling outward
            float cw = bw * 0.55f;
            float rep = len / (cw * 4.0f);
            float off = -((now % 100000L) / 1000.0f) * 2.2f;
            float rot = (float) Math.toDegrees(Math.atan2(ey - a.y, ex - a.x)) - 90.0f;
            ModFx.sprUV(LANCE_CORE, (a.x + ex) / 2, (a.y + ey) / 2, cw, len, rot, 1, 1, 1, 0.95f * fade, true, 0, off, 1, off + rep, true);
        } else {
            ModFx.strip("fx_lance", a.x, a.y, ex, ey, bw * 0.45f, 1, 1, 1, 0.9f * fade, true);
        }
        ModFx.spr("fx_core", a.x, a.y, bw * 1.6f * wob, bw * 1.6f * wob, 0, col[0], col[1], col[2], fade, true);
        ModFx.spr("fx_streak", a.x, a.y, sz * 1.2f, sz * 0.3f, lockSpin, 1, 1, 1, 0.7f * fade, true);
        // rolling energy along the beam
        if (Math.random() < 0.8) {
            float t = (float) Math.random();
            ModFx.part("fx_glow", a.x + b.x * len * t, a.y + b.y * len * t, b.x * 900, b.y * 900, 300, sz * 0.12f, sz * 0.05f, col[0], col[1], col[2], 0.8f, true, true);
        }
    }

    // ------------------------------------------------------------------ DOOMSDAY button over the game view
    // weak: a destroyed game activity (and its view tree) must not stay reachable from a static field
    private static java.lang.ref.WeakReference<Button> btn;
    private static java.lang.ref.WeakReference<Activity> uiAct;

    /** From ModScroll.attach (CommonActivity.onResume) for the game activity. */
    public static void attachUi(final Activity act) {
        try {
            if (!act.getClass().getName().endsWith(".Main")) return;
            if (btn != null && btn.get() != null && uiAct != null && uiAct.get() == act) return;
            final float d = act.getResources().getDisplayMetrics().density;
            final Button bt = new Button(act);
            bt.setAllCaps(false);
            bt.setTextSize(TypedValue.COMPLEX_UNIT_SP, 13.0f);
            bt.setTextColor(Color.WHITE);
            bt.setPadding((int) (14 * d), (int) (6 * d), (int) (14 * d), (int) (6 * d));
            bt.setMinWidth(0);
            bt.setMinimumWidth(0);
            bt.setMinHeight(0);
            bt.setMinimumHeight(0);
            bt.setVisibility(View.GONE);
            bt.setOnClickListener(new View.OnClickListener() {
                public void onClick(View v) { request = true; }
            });
            FrameLayout.LayoutParams lp = new FrameLayout.LayoutParams(ViewGroup.LayoutParams.WRAP_CONTENT, ViewGroup.LayoutParams.WRAP_CONTENT,
                Gravity.BOTTOM | Gravity.CENTER_HORIZONTAL);
            lp.bottomMargin = (int) (64 * d);
            act.addContentView(bt, lp);
            btn = new java.lang.ref.WeakReference<Button>(bt);
            uiAct = new java.lang.ref.WeakReference<Activity>(act);
            final Handler h = new Handler(Looper.getMainLooper());
            h.post(new Runnable() {
                String lastText = null;
                int lastKind = -1;
                boolean lastReady;

                public void run() {
                    if (act.isFinishing() || btn == null || btn.get() != bt) return;
                    try {
                        // hidden whenever the game loop is not running (title screen, menus, pause)
                        boolean vis = show && System.currentTimeMillis() - lastTick < 700 && inGame();
                        if ((bt.getVisibility() == View.VISIBLE) != vis) bt.setVisibility(vis ? View.VISIBLE : View.GONE);
                        String s = label;
                        if (vis && s != null && !s.equals(lastText)) {
                            bt.setText(s);
                            lastText = s;
                        }
                        boolean ready = state == READY;
                        int k = uiKind;
                        if (vis && (k != lastKind || ready != lastReady)) {
                            float[] col = COL[Math.max(0, Math.min(3, k))];
                            int c = Color.rgb((int) (col[0] * 255), (int) (col[1] * 255), (int) (col[2] * 255));
                            GradientDrawable g = new GradientDrawable();
                            g.setCornerRadius(8 * d);
                            g.setColor(ready ? Color.argb(210, (int) (col[0] * 120), (int) (col[1] * 120), (int) (col[2] * 120)) : 0xA0101820);
                            g.setStroke((int) (2 * d), ready ? c : 0xFF4A5560);
                            bt.setBackgroundDrawable(g);
                            bt.setTextColor(ready ? Color.WHITE : 0xFFAAB4BE);
                            lastKind = k;
                            lastReady = ready;
                        }
                    } catch (Throwable t) {
                        // UI is cosmetic
                    }
                    h.postDelayed(this, 200);
                }
            });
        } catch (Throwable t) {
            // no button: the doomsday just stays unavailable
        }
    }

    /** False while the splash/loading screen, the pause menu or the in-game menu is up. */
    static boolean inGame() {
        try {
            if (fr.testudo.spacecorsair.utils.SplashscreenDisplayer.isDisplaying()) return false;
            if (fr.testudo.spacecorsair.utils.MenuDisplayer.isMenuDisplaying) return false;
            fr.testudo.spacecorsair.game.Game g = ObjectRegistry.INSTANCE.game;
            return g != null && g.started && !g.gameThread.paused;
        } catch (Throwable t) {
            return true;
        }
    }

    // ------------------------------------------------------------------ descriptions
    public static String skillText(int k) {
        switch (k) {
            case LEVIATHAN:
                return "<b>Doomsday Lance</b> (DOOMSDAY button): 2.5 s charge, then a 4 s lance straight ahead (2800 range, 60% as wide as the hull) that wipes everything in its path; mission bosses lose ~8% of their hull per lance and titan-class capitals ~2.5% (they take dozens). "
                    + "The titan cannot move, turn or fire while it charges and fires. 90 s cooldown.";
            case THRONE:
                return "<b>Furnace Nova</b> (DOOMSDAY button): 2 s charge, then a 3.5 s ring of fire that grows to 1400 around the hull and burns everything inside. "
                    + "The titan cannot move, turn or fire while it charges and burns. 75 s cooldown.";
            case DEV:
                return "<b>Doomsday Lance</b> (DOOMSDAY button): test lance, 12 s cooldown.";
            default:
                return "";
        }
    }
}
