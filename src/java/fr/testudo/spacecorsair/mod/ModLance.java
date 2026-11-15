package fr.testudo.spacecorsair.mod;

import android.content.SharedPreferences;
import fr.testudo.spacecorsair.business.Element;
import fr.testudo.spacecorsair.business.loot.LootRarety;
import fr.testudo.spacecorsair.business.loot.SpaceObject;
import fr.testudo.spacecorsair.business.loot.SpaceObjectType;
import fr.testudo.spacecorsair.business.loot.stuff.GearSpec;
import fr.testudo.spacecorsair.business.loot.stuff.alteration.AlterationSpecs;
import fr.testudo.spacecorsair.business.loot.stuff.laser.LaserSpec;
import fr.testudo.spacecorsair.business.loot.stuff.playerShip.PlayerShipSpec;
import fr.testudo.spacecorsair.business.player.PlayerCanon;
import fr.testudo.spacecorsair.business.player.PlayerShip;
import fr.testudo.spacecorsair.business.projectiles.AlienLaser;
import fr.testudo.spacecorsair.business.projectiles.EnergyBullet;
import fr.testudo.spacecorsair.business.projectiles.EnergyLaser;
import fr.testudo.spacecorsair.business.projectiles.Projectile;
import fr.testudo.spacecorsair.business.world.UniverseName;
import fr.testudo.spacecorsair.business.world.station.Station;
import fr.testudo.spacecorsair.display.Drawable;
import fr.testudo.spacecorsair.engine.ObjectRegistry;
import fr.testudo.spacecorsair.engine.Vector2;
import java.util.ArrayList;
import java.util.List;
import java.util.WeakHashMap;

/**
 * v43a-17 Phoenix Lance (plan: project doc "Monolith phoenix beam weapon plan"; owner 2026-11-02 and 2026-11-15 18:08).
 * - Player: Monolith at form V (the phoenix form) only. Unlocked through the Spartan honour mission (task or donation,
 *   ModFaction rows "lance"), which the Spartans offer once a Monolith reaches form V. Reward = Mk I; Mk II/III are then
 *   sold at the Spartan HQ laser factory. Legendary, 3 tiers.
 * - Mounted, the Monolith carries ONE turret (front pad) whatever slots it has (ModV38.setStage); the stats make up for it.
 * - A held molten stream: fast short bolts every 80 ms drawn as a continuous beam; flat damage on shields, ramping on the
 *   hull (+100% after 4 s on one target); the target keeps burning 3 s after the beam leaves; a heat meter forces a 3 s
 *   cooldown after 9 s of fire; the turret turns at half speed.
 * - Enemies: elites and bosses may carry it; of the police, every police Monolith (form V) does and no other police hull (owner 2026-11-15 18:45).
 * Every number here is a default for the owner's playtest.
 */
public final class ModLance {
    private ModLance() {}

    public static final String BASE = "modPhoenixLance";
    static final String[] TYPES = {BASE, BASE + "Mk2", BASE + "Mk3"};
    static final String[] MK = {"Mk I", "Mk II", "Mk III"};
    /** Pilot level of each tier (L22 / L30 / L37). */
    static final int[] LEVEL = {ModSpecs.TIER_REQ[2], 30, ModSpecs.TIER_REQ[3]};
    /** Shop price of Mk II / Mk III at Spartan HQ (Mk I is the mission reward; its listed price is for selling). */
    static final int[] PRICE = {1500000, 3500000, 8000000};
    static final int RELOAD_MS = 80;
    /** Beam damage per second of each tier: 3 turrets x the blaster of that tier (Standard / Heavy / Siege) x 1.25. */
    static final float[] DPS = new float[3];
    static final float HULL_RAMP = 1.0f;          // +100% on the hull
    static final long RAMP_MS = 4000, RAMP_GAP_MS = 600;
    static final long BURN_MS = 3000;
    static final float BURN_FRAC = 0.25f;         // burn per second = 25% of the beam's damage per second
    static final long HEAT_MS = 9000, COOL_MS = 3000;
    static final float SWEEP = 0.5f;              // turret turn speed x0.5
    static final float SPEED = -30.0f, RANGE_F = 0.9f;
    static final float[] LAVA = {1.0f, 0.42f, 0.08f};

    /** Bullets of the Lance carry this tag (no weapon family: no faction-fit penalty, no family resist). */
    static final AlterationSpecs TAG = new AlterationSpecs();
    static final LaserSpec[] SPECS = new LaserSpec[3];

    static {
        float[] blaster = ModWeapons.STAT[ModWeapons.BLAST];
        for (int t = 0; t < 3; t++) {
            DPS[t] = 3 * blaster[0] * ModSpecs.TIER_MULT[t + 1] * 1000f / blaster[1] * 1.25f;
            LaserSpec s = new LaserSpec();
            s.rarety = LootRarety.LEGENDARY;
            s.level = LEVEL[t];
            s.damage = Math.max(1, Math.round(DPS[t] * RELOAD_MS / 1000f));
            s.reload = RELOAD_MS;
            s.precision = 100;
            s.bulletSpeed = SPEED;
            s.heatBySec = 5;
            s.r = LAVA[0];
            s.g = LAVA[1];
            s.b = LAVA[2];
            s.alterationSpecs = TAG;
            SPECS[t] = s;
        }
    }

    /** Used by the hooks48_lance enum constants: spec(tier). */
    public static GearSpec spec(int i) {
        return SPECS[Math.max(0, Math.min(2, i))];
    }

    static int tierOf(SpaceObjectType t) {
        if (t == null) return -1;
        String n = t.name();
        for (int i = 0; i < 3; i++) if (TYPES[i].equals(n)) return i;
        return -1;
    }

    static boolean isLance(LaserSpec s) {
        if (s == null) return false;
        return s.alterationSpecs == TAG || s == SPECS[0] || s == SPECS[1] || s == SPECS[2];
    }

    static boolean isLance(Object bullet) {
        return bullet instanceof EnergyBullet && ((EnergyBullet) bullet).alterationSpecs == TAG;
    }

    // ------------------------------------------------------------------ texts
    public static String label(SpaceObjectType t) {
        int i = tierOf(t);
        return i < 0 ? null : ModLang.tr("Phoenix Lance") + " " + MK[i];
    }

    public static String desc(SpaceObjectType t) {
        int i = tierOf(t);
        if (i < 0) return null;
        return ModLang.tr("<b>Phoenix Lance</b>: a held stream of molten plasma that only the Monolith's phoenix form (form V) can mount. It replaces every turret with a single front turret.")
            + "<br><br>" + ModLang.tr("Damage per second: ") + Math.round(DPS[i])
            + "<br>" + ModLang.tr("Shields take flat damage; on the hull the damage climbs to +100% after 4 s on one target.")
            + "<br>" + ModLang.tr("The target keeps burning for 3 s after the beam leaves it.")
            + "<br>" + ModLang.tr("9 s of fire overheats it: 3 s to vent.")
            + ModLang.tr("<br><br><font color='#6ad0ff'><b>Sold at:</b> ") + ModLang.tr("Laser shop (Spartan HQ), after the Spartan honour mission") + "</font>";
    }

    // ------------------------------------------------------------------ unlock (pref keys in ModQol.prefs, test profile swaps them)
    static final String P_UNLOCK = "lance_unlocked", P_PROMPT = "lance_prompted";

    private static SharedPreferences prefs() {
        return ModQol.prefs();
    }

    static boolean unlocked() {
        SharedPreferences p = prefs();
        return p != null && p.getBoolean(P_UNLOCK, false);
    }

    /** The Monolith hull type (its refit level is stored per hull). */
    static SpaceObjectType monolith() {
        try {
            return SpaceObjectType.valueOf("hullMonolith");
        } catch (Throwable t) {
            return null;
        }
    }

    /** A Monolith has reached form V (refit level 9+), on this save. */
    static boolean phoenixReached() {
        SpaceObjectType m = monolith();
        return m != null && ModV35.stage(ModV35.level(m)) >= 5;
    }

    /** The honour mission is on offer: form V reached, Lance not yet unlocked. */
    static boolean offerOpen() {
        return ModTestMode.on || (phoenixReached() && !unlocked());
    }

    /** ModFaction.complete of either honour mission. */
    static void onUnlock() {
        SharedPreferences p = prefs();
        if (p != null) p.edit().putBoolean(P_UNLOCK, true).commit();
        stockedAt.clear();
        ModDev.ev("lance", "unlocked");
    }

    /** Monolith hull image (the Lance is tied to it like the alien signature guns). */
    static PlayerShipSpec.Image monolithImage() {
        try {
            ModShips.Hull h = ModShips.hull(monolith());
            return h != null && h.spec != null ? h.spec.image : null;
        } catch (Throwable t) {
            return null;
        }
    }

    /** Hook (ModLock.canEquip): null = allowed, else the reason. Monolith check is done by ModLock.requiredShip. */
    static String equipBlock(SpaceObjectType t) {
        if (tierOf(t) < 0) return null;
        try {
            if (ModShips.hull(ModV35.currentShip()) == null || ModV35.stage(ModV35.level(ModV35.currentShip())) < 5)
                return ModLang.tr("Phoenix Lance: only the Monolith's phoenix form (form V) can mount it.");
        } catch (Throwable th) {
            // let the slot rules decide
        }
        return null;
    }

    /** True when the player's ship mounts the Lance on a Monolith at form V (single front turret, ModV38). */
    static boolean mounted(PlayerShip ps) {
        try {
            if (ps == null || !isLance(ps.laserSpec)) return false;
            ModShips.Hull h = ModShips.hullFor(ps.shipSpec);
            return h != null && "monolith".equals(h.art) && ModV35.stage(ModV35.level(ModV35.currentShip())) >= 5;
        } catch (Throwable t) {
            return false;
        }
    }

    // ------------------------------------------------------------------ prompt + shop (ModCaps.tick, every second)
    private static final WeakHashMap<Station, Boolean> stockedAt = new WeakHashMap<Station, Boolean>();
    private static long promptAfter;

    static void slowTick(PlayerShip ps) {
        try {
            testTick();
            SharedPreferences p = prefs();
            if (p == null || ModPrologue.active) return;
            if (phoenixReached() && !unlocked() && !p.getBoolean(P_PROMPT, false)) {
                long now = System.currentTimeMillis();
                if (promptAfter == 0) promptAfter = now + 4000;   // let the refit screen close first
                if (now >= promptAfter && ps != null && !ps.isDocked) {
                    p.edit().putBoolean(P_PROMPT, true).commit();
                    ModQol.post(ModLang.tr("Commander of SRS Aegis: Captain, the Republic has seen your Monolith rise in its phoenix form. Few crews ever earn that fire. Come to Spartan HQ: the council has a mission to honour you, and the Phoenix Lance waits for the one who completes it."), "spartan");
                    ModDev.ev("lance", "prompt shown");
                }
            }
            if (unlocked()) stock();
        } catch (Throwable t) {
            // next second
        }
    }

    /** Mk II and Mk III on the Spartan HQ laser factory shelf once unlocked (Mk I comes from the mission). */
    private static void stock() {
        List<Element> els = ObjectRegistry.INSTANCE.game.currentLevel.elements;
        for (int i = 0; i < els.size(); i++) {
            Element e = els.get(i);
            if (!(e instanceof Station) || stockedAt.containsKey(e)) continue;
            Station st = (Station) e;
            if (st.name == null || !st.name.toLowerCase().contains(UniverseName.SPARTAN_LASER_FACTORY.toLowerCase())) continue;
            for (int t = 1; t < 3; t++) st.inventory.addObject(SpaceObject.ofInfinite(SpaceObjectType.valueOf(TYPES[t])));
            stockedAt.put(st, Boolean.TRUE);
            ModDev.ev("lance", "stocked at " + st.name);
        }
    }

    /** Emulator switches: corsair_lance = unlock + Mk III in the hold (once); corsair_lancereset = lock again. */
    private static boolean testGiven;

    private static void testTick() {
        if (!testGiven && ModDev.testFlag("corsair_lance")) {
            testGiven = true;
            SharedPreferences p = prefs();
            if (p != null) p.edit().putBoolean(P_UNLOCK, true).putBoolean(P_PROMPT, true).commit();
            ObjectRegistry.INSTANCE.game.playerCurrentShipInventory.addObject(SpaceObject.of(SpaceObjectType.valueOf(TYPES[2])));
            ModDev.ev("lance", "test: unlocked, Mk III given");
        }
        if (ModDev.testFlag("corsair_lancereset")) {
            SharedPreferences p = prefs();
            if (p != null && (p.getBoolean(P_UNLOCK, false) || p.getBoolean(P_PROMPT, false))) {
                p.edit().remove(P_UNLOCK).remove(P_PROMPT).commit();
                promptAfter = 0;
                ModDev.ev("lance", "test: locked again");
            }
        }
    }

    // ------------------------------------------------------------------ player beam
    private static long lastShot, lastHit, fireMs, coolUntil;
    private static float heat;                     // 0..1
    private static final ArrayList<EnergyBullet> live = new ArrayList<EnergyBullet>();
    private static final Vector2 hit = new Vector2();
    private static Element rampTarget;
    private static long rampSince, rampLast;
    private static Element burnTarget;
    private static long burnUntil, burnNext;
    private static float burnDps;
    private static final WeakHashMap<PlayerCanon, Boolean> slowed = new WeakHashMap<PlayerCanon, Boolean>();

    static int tier(PlayerShip ps) {
        for (int t = 0; t < 3; t++) if (ps.laserSpec == SPECS[t]) return t;
        return 0;
    }

    /** Mod.addBullet: false drops the bolt (venting, or not on the phoenix form). */
    static boolean allowShot(PlayerShip ps, Object o) {
        if (!isLance(o) || ((EnergyBullet) o).sender != ps) return true;
        if (!mounted(ps)) return false;
        long now = System.currentTimeMillis();
        if (now < coolUntil) return false;
        EnergyBullet b = (EnergyBullet) o;
        b.r = LAVA[0]; b.g = LAVA[1]; b.b = LAVA[2]; b.a = 1.0f;
        b.lifeTimeInMilli = (long) (b.lifeTimeInMilli * RANGE_F);
        if (now - lastShot > 400) fireMs = 0;     // ignite: the beam pours out from the muzzle again
        lastShot = now;
        live.add(b);
        if (live.size() > 40) live.remove(0);
        ModSound.play("wpn_disint", 0.55f, 0.62f * ModFx.rnd(0.97f, 1.03f), 110);
        return true;
    }

    /** Per frame (ModCaps.tick): heat, burn, half-speed sweep. */
    static void tick(PlayerShip ps, long j) {
        try {
            if (ps == null || j <= 0) return;
            long now = System.currentTimeMillis();
            boolean on = mounted(ps);
            if (on && ps.playerCannons != null) {
                for (PlayerCanon c : ps.playerCannons) {
                    if (c == null || slowed.containsKey(c)) continue;
                    c.maxSpinSpeed *= SWEEP;
                    slowed.put(c, Boolean.TRUE);
                }
            }
            boolean firing = on && now - lastShot < 200;
            if (now >= coolUntil && firing) {
                fireMs += j;
                heat = Math.min(1, heat + j / (float) HEAT_MS);
                if (heat >= 1) {
                    coolUntil = now + COOL_MS;
                    Mod.floatText(ps, ModLang.tr("LANCE VENTING"), 1.0f, 0.5f, 0.2f);
                    ModSound.play("wpn_arty", 0.4f, 0.6f, 500);
                }
            } else if (now >= coolUntil) {
                heat = Math.max(0, heat - j / (float) COOL_MS);
            } else {
                heat = Math.max(0, heat - j / (float) COOL_MS);
                if (on && Math.random() < 0.5) {   // the wings vent: hot sparks off the hull
                    float sz = ps.shipSpec.drawableSize * 0.4f;
                    ModFx.part("fx_fire", ps.position.x + ModFx.rnd(-sz, sz), ps.position.y + ModFx.rnd(-sz, sz), ModFx.rnd(-60, 60), ModFx.rnd(-60, 60), 500, 40, 90, 1.0f, 0.5f, 0.15f, 0.7f, true, true);
                }
            }
            for (int i = live.size() - 1; i >= 0; i--) {
                EnergyBullet b = live.get(i);
                if (b.removed || b.lifeTimeInMilli <= 0 || b.sender != ps) live.remove(i);
            }
            if (burnTarget != null) {
                if (now >= burnUntil || burnTarget.removed || burnTarget.life <= 0) burnTarget = null;
                else if (now >= burnNext && now - lastHit > 150) {   // only once the beam has left it
                    burnNext = now + 250;
                    burnTarget.applyDamage(burnDps * 0.25f, ps, null);
                    ModFx.part("fx_fire", burnTarget.position.x + ModFx.rnd(-30, 30), burnTarget.position.y + ModFx.rnd(-30, 30), 0, 0, 400, 30, 80, 1.0f, 0.45f, 0.1f, 0.8f, true, true);
                }
            }
            enemyTick(ps, now);
        } catch (Throwable t) {
            // next frame
        }
    }

    /** ModWeapons.onImpact: shield flat, hull ramp, burn mark. True when the bullet was a Lance bolt. */
    static boolean onImpact(EnergyBullet b, Element target) {
        if (!isLance(b) || target == null) return false;
        try {
            PlayerShip ps = ObjectRegistry.INSTANCE.playerShip;
            long now = System.currentTimeMillis();
            if (b.sender == ps) {
                boolean shield = ModV34.shieldUp(target);
                if (target != rampTarget || now - rampLast > RAMP_GAP_MS) { rampTarget = target; rampSince = now; }
                rampLast = now;
                if (shield) rampSince = now;            // the ramp starts once the beam is on the hull
                float ramp = Math.min(1.0f, (now - rampSince) / (float) RAMP_MS);
                b.damage *= 1 + HULL_RAMP * ramp;
                lastHit = now;
                hit.setSameAs(target.position);
                burnTarget = target;
                burnUntil = now + BURN_MS;
                burnDps = DPS[tier(ps)] * BURN_FRAC;
                ModFx.part("fx_fire", target.position.x + ModFx.rnd(-20, 20), target.position.y + ModFx.rnd(-20, 20), ModFx.rnd(-80, 80), ModFx.rnd(-80, 80), 300, 30, 70 + 50 * ramp, 1.0f, 0.55f, 0.15f, 0.9f, true, true);
            } else if (target == ps) {
                enemyHit(b, ps, now);
            }
        } catch (Throwable t) {
            // the hit lands as it is
        }
        return true;
    }

    /** ModTitan.bullet: Lance bolts are small molten blobs; the beam itself is drawn by draw(). */
    private static ModFx.Sprite blob;

    static Drawable bullet(EnergyBullet e) {
        if (!isLance(e)) return null;
        if (blob == null) blob = ModFx.fixed("fx_glow", 34, 34, true);
        if (blob.myTexture == null) ModFx.rebind(blob, "fx_glow");
        return blob.myTexture == null ? null : blob;
    }

    private static final Vector2 m = new Vector2(), d = new Vector2();

    /** ModCaps.drawOver: the molten stream (halo, body, white core, crust flecks, muzzle bloom, impact splash). */
    static void draw(PlayerShip ps) {
        try {
            long now = System.currentTimeMillis();
            enemyDraw(now);
            if (ps == null || !mounted(ps) || now - lastShot > 160 || ps.playerCannons == null || ps.playerCannons.length == 0) return;
            PlayerCanon cn = ps.playerCannons[0];
            ModFx.local(ps.position, ps.spin, cn.shipPosition.x, cn.shipPosition.y, m);
            float ang = ps.spin - cn.currentDeltaSpinWithShip;
            d.set(0, -1).applyRotatation(Math.toRadians(ang));
            float len = 0;
            for (int i = 0; i < live.size(); i++) len = Math.max(len, live.get(i).position.distance(m));
            float ex = m.x + d.x * len, ey = m.y + d.y * len;
            if (now - lastHit < 200 && hit.distance(m) < len + 200) { ex = hit.x; ey = hit.y; len = hit.distance(m); }
            if (len < 20) return;
            float sz = ps.shipSpec.drawableSize;
            float w = Math.max(26, sz * 0.07f) * (0.9f + 0.2f * (float) Math.random());
            beam(m.x, m.y, ex, ey, w, 1.0f, sz, now);
            ModFx.spr("fx_core", m.x, m.y, w * 2.6f, w * 2.6f, 0, 1.0f, 0.55f, 0.15f, 0.9f, true);   // phoenix-fire bloom at the pad
            if (now - lastHit < 200) {
                ModFx.spr("fx_glow", ex, ey, w * 3.2f, w * 3.2f, 0, 1.0f, 0.45f, 0.1f, 0.85f, true);
                if (Math.random() < 0.6) ModFx.part("fx_spark", ex, ey, ModFx.rnd(-200, 200), ModFx.rnd(-200, 200), 250, 14, 6, 1.0f, 0.7f, 0.3f, 1.0f, true, true);
            }
        } catch (Throwable t) {
            // no beam this frame
        }
    }

    private static void beam(float x1, float y1, float x2, float y2, float w, float a, float sz, long now) {
        float wob = 0.92f + 0.08f * (float) Math.sin(now / 90.0d);
        ModFx.strip("fx_beam", x1, y1, x2, y2, w * 2.4f, 1.0f, 0.25f, 0.05f, 0.45f * a, true);          // heat halo
        ModFx.strip("fx_lance", x1, y1, x2, y2, w * wob, 1.0f, 0.42f, 0.08f, 0.85f * a, true);           // molten body
        ModFx.strip("fx_lance", x1, y1, x2, y2, w * 0.35f * wob, 1.0f, 0.95f, 0.7f, 0.95f * a, true);    // white-yellow core
        if (Math.random() < 0.7) {   // dark crust flecks and embers drifting toward the target
            float t = (float) Math.random();
            float dx = x2 - x1, dy = y2 - y1, l = (float) Math.sqrt(dx * dx + dy * dy);
            if (l > 1) {
                float ux = dx / l, uy = dy / l;
                float px = x1 + dx * t, py = y1 + dy * t;
                ModFx.part("fx_smoke", px + ModFx.rnd(-w * 0.3f, w * 0.3f), py + ModFx.rnd(-w * 0.3f, w * 0.3f), ux * 300, uy * 300, 350, w * 0.3f, w * 0.2f, 0.25f, 0.08f, 0.02f, 0.8f, false, true);
                if (Math.random() < 0.4) ModFx.part("fx_glow", px - uy * w * 0.6f, py + ux * w * 0.6f, -uy * 60, ux * 60, 500, w * 0.25f, 4, 1.0f, 0.5f, 0.1f, 0.8f, true, true);
            }
        }
    }

    // ------------------------------------------------------------------ enemy Lance (elites, bosses, police)
    static final float ELITE_CHANCE = 0.25f, BOSS_CHANCE = 1.0f;
    static final float ENEMY_RAMP = 1.0f;          // +100% on the player's hull after RAMP_MS
    static final float ENEMY_BURN = 0.3f;          // the burn deals 30% of the last hit over BURN_MS
    private static final WeakHashMap<Element, Boolean> holder = new WeakHashMap<Element, Boolean>();
    private static final ArrayList<EnergyBullet> eBolts = new ArrayList<EnergyBullet>();
    private static final ArrayList<Element> eSenders = new ArrayList<Element>();
    private static Element eRampFrom;
    private static long eRampSince, eRampLast, eBurnUntil, eBurnNext;
    private static float eBurnDps;
    private static Element eBurnFrom;

    /** True when this enemy carries the Lance (rolled once per ship). Flagships keep their batteries. */
    static boolean holder(Element s) {
        if (s == null || s.isPlayer) return false;
        Boolean v = holder.get(s);
        if (v != null) return v;
        boolean yes = false;
        boolean finalAnswer = true;
        try {
            if (ModCapitals.cap(s) != null || Mod.isDrone(s) || s instanceof Station) yes = false;
            else if (ModBoss.isBoss(s) || ModV34.rank(s) == 2) yes = Math.random() < BOSS_CHANCE;   // mission bosses and stock bosses
            else if (ModPolice.isPolice(s)) yes = ModPolice.isPoliceMonolith(s);   // owner 18:45: the Lance comes with the form V Monolith; other police keep faction guns
            else if (ModV34.rank(s) == 1) yes = Math.random() < ELITE_CHANCE;
            else finalAnswer = false;   // may still turn elite/boss after spawning
        } catch (Throwable t) {
            yes = false;
        }
        if (finalAnswer) {
            holder.put(s, yes);
            if (yes) ModDev.ev("lance", "enemy holder " + s.getClass().getSimpleName() + " police=" + ModPolice.isPolice(s) + " boss=" + ModBoss.isBoss(s));
        }
        return yes;
    }

    /** ModFaction trial target (Ashmaw): always carries the Lance. */
    static void forceHolder(Element e) {
        if (e != null) holder.put(e, Boolean.TRUE);
    }

    /** ModEnemyGuns.swap: a holder's laser shots become Lance bolts. Returns the replacement or null. */
    static EnergyBullet enemyShot(Projectile p) {
        if (p == null || isLance(p) || !(p instanceof EnergyBullet || p instanceof EnergyLaser || p instanceof AlienLaser)) return null;
        if (!holder(p.sender)) return null;
        EnergyBullet b = fr.testudo.spacecorsair.business.factory.GamePools.newEnnergyBullet()
            .init(p.damage, 6, p.sender, 1.0f, LAVA[0], LAVA[1], LAVA[2], TAG);
        b.position.setSameAs(p.position);
        b.speed.setSameAs(p.speed);
        b.spin = p.spin;
        b.level = p.level;
        b.lifeTimeInMilli = p.lifeTimeInMilli;
        eBolts.add(b);
        eSenders.add(p.sender);
        if (eBolts.size() > 24) { eBolts.remove(0); eSenders.remove(0); }
        ModSound.play("wpn_disint", 0.4f, 0.55f, 140);
        return b;
    }

    private static void enemyHit(EnergyBullet b, PlayerShip ps, long now) {
        boolean shield = ps.shield != null && ps.shield.currentValue > 0;
        if (b.sender != eRampFrom || now - eRampLast > 1500) { eRampFrom = b.sender; eRampSince = now; }
        eRampLast = now;
        if (shield) eRampSince = now;
        float ramp = Math.min(1.0f, (now - eRampSince) / (float) RAMP_MS);
        b.damage *= 1 + ENEMY_RAMP * ramp;
        eBurnDps = Math.max(now < eBurnUntil ? eBurnDps : 0, b.damage * ENEMY_BURN * 1000f / BURN_MS);   // strongest live burn, before the timer restarts
        eBurnFrom = b.sender;
        eBurnUntil = now + BURN_MS;
        ModFx.part("fx_fire", ps.position.x + ModFx.rnd(-30, 30), ps.position.y + ModFx.rnd(-30, 30), 0, 0, 350, 30, 90, 1.0f, 0.5f, 0.12f, 0.85f, true, true);
    }

    private static void enemyTick(PlayerShip ps, long now) {
        for (int i = eBolts.size() - 1; i >= 0; i--) {
            EnergyBullet b = eBolts.get(i);
            if (b.removed || b.lifeTimeInMilli <= 0 || b.sender != eSenders.get(i) || b.alterationSpecs != TAG) { eBolts.remove(i); eSenders.remove(i); }
        }
        if (now < eBurnUntil && now >= eBurnNext && !ps.removed) {
            eBurnNext = now + 250;
            ps.applyDamage(eBurnDps * 0.25f, eBurnFrom != null ? eBurnFrom : ps, null);
            ModFx.part("fx_fire", ps.position.x + ModFx.rnd(-30, 30), ps.position.y + ModFx.rnd(-30, 30), 0, 0, 400, 30, 70, 1.0f, 0.45f, 0.1f, 0.7f, true, true);
        }
    }

    /** Enemy streams: from the shooter to its newest live bolt (at most 6 per frame). */
    private static void enemyDraw(long now) {
        int n = 0;
        for (int i = eBolts.size() - 1; i >= 0 && n < 6; i--) {
            EnergyBullet b = eBolts.get(i);
            Element s = eSenders.get(i);
            if (s == null || s.removed || b.removed) continue;
            boolean newest = true;
            for (int k = i + 1; k < eBolts.size(); k++) if (eSenders.get(k) == s) { newest = false; break; }
            if (!newest) continue;
            float sz = ModWreck.sizeClass(s) >= 3 ? 34 : 24;
            beam(s.position.x, s.position.y, b.position.x, b.position.y, sz, 0.8f, sz * 10, now);
            n++;
        }
    }

    static void onLevel() {
        live.clear();
        eBolts.clear();
        eSenders.clear();
        burnTarget = null;
        eBurnUntil = 0;
        heat = 0;
        coolUntil = 0;
    }
}
