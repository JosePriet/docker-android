package fr.testudo.spacecorsair.mod;

import fr.testudo.spacecorsair.business.loot.stuff.playerShip.PlayerShipSpec;
import fr.testudo.spacecorsair.business.player.PlayerShip;
import fr.testudo.spacecorsair.engine.ObjectRegistry;
import fr.testudo.spacecorsair.engine.Vector2;

/**
 * v17 capital-ship visuals for the player's hull: engine plumes, idle light loops and auras for the top tier of
 * every class, damaged-hull visuals for the big classes, the self-repair indicator, carrier-bay launches and the
 * titan warp-in. Anchor points come from ModFxData (scanned from the sprites).
 */
public final class ModCaps {
    private ModCaps() {}

    /** Resolved per ship spec. */
    static final class Profile {
        PlayerShipSpec spec;
        ModShips.Hull hull;
        int data = -1;
        boolean top, big, titan, alien, flames;
        float er = 0.55f, eg = 0.8f, eb = 1.0f;   // engine colour
        float ar = 0.4f, ag = 0.7f, ab = 1.0f;    // aura colour
        int cls = -1;
    }

    private static Profile prof;

    static Profile profile(PlayerShip ps) {
        PlayerShipSpec spec = ps.shipSpec;
        if (prof != null && prof.spec == spec) return prof;
        Profile p = new Profile();
        p.spec = spec;
        ModShips.Hull h = ModShips.hullFor(spec);
        p.hull = h;
        String key;
        int tech;
        if (h != null) {
            key = h.art;
            p.cls = h.cls;
            tech = h.tech;
            p.top = tech >= ModShips.maxModTech(h.cls);
        } else {
            key = spec.image == null ? "" : spec.image.name();
            p.cls = ModShips.originalClass(spec);
            tech = ModShips.originalTech(spec);
            p.top = tech >= 3;
            p.alien = spec.image == PlayerShipSpec.Image.ALIEN_UFO || spec.image == PlayerShipSpec.Image.ALIEN_RAT || spec.image == PlayerShipSpec.Image.ALIEN_BLATTE;
        }
        p.data = ModFxData.index(key);
        p.titan = p.cls == ModShips.TITAN;
        p.big = p.cls == ModShips.BATTLECRUISER || p.cls == ModShips.BATTLESHIP || p.cls == ModShips.CAPITAL || p.titan;
        // mod hulls get nozzle plumes (and lose the stock afterburner sprite); original ships keep theirs
        p.flames = h != null && p.data >= 0;
        String f = h == null ? "" : h.faction;
        if ("Crimson Reavers".equals(f)) { p.er = 1.0f; p.eg = 0.5f; p.eb = 0.2f; p.ar = 1.0f; p.ag = 0.45f; p.ab = 0.15f; }
        else if ("Developers".equals(f)) { p.er = 0.35f; p.eg = 1.0f; p.eb = 0.5f; p.ar = 0.3f; p.ag = 1.0f; p.ab = 0.45f; }
        else if ("Varn Syndicate".equals(f)) { p.er = 0.75f; p.eg = 0.45f; p.eb = 1.0f; p.ar = 0.7f; p.ag = 0.4f; p.ab = 1.0f; }
        else if ("Ironclad Militia".equals(f)) { p.er = 1.0f; p.eg = 0.75f; p.eb = 0.35f; p.ar = 1.0f; p.ag = 0.8f; p.ab = 0.4f; }
        else if ("Helion Combine".equals(f)) { p.er = 1.0f; p.eg = 0.9f; p.eb = 0.45f; p.ar = 1.0f; p.ag = 0.85f; p.ab = 0.4f; }
        else if (p.alien) { p.ar = 0.7f; p.ag = 0.35f; p.ab = 1.0f; }
        else if (h != null && "leviathan".equals(h.art)) { p.er = 0.6f; p.eg = 0.88f; p.eb = 1.0f; p.ar = 0.55f; p.ag = 0.85f; p.ab = 1.0f; }
        else if ("Spartan Republic".equals(f)) { p.er = 0.8f; p.eg = 0.92f; p.eb = 1.0f; p.ar = 0.5f; p.ag = 0.75f; p.ab = 1.0f; }
        else if ("Frontier Authority".equals(f)) { p.er = 0.47f; p.eg = 0.8f; p.eb = 1.0f; p.ar = 0.45f; p.ag = 0.65f; p.ab = 1.0f; }
        else if ("Kre'tari Brood".equals(f)) { p.er = 0.77f; p.eg = 0.36f; p.eb = 1.0f; p.ar = 0.8f; p.ag = 0.4f; p.ab = 1.0f; }
        // v23: the ChatGPT art notes give each new hull its own engine glow
        int eng = h != null ? ModShipStyle.engine(h.art) : -1;
        if (eng >= 0) { p.er = ((eng >> 16) & 255) / 255f; p.eg = ((eng >> 8) & 255) / 255f; p.eb = (eng & 255) / 255f; }
        prof = p;
        damageStage = 0;
        if (p.big && ModDev.testFlag("corsair_lowhull")) lowHullTest = true;
        return p;
    }

    // ------------------------------------------------------------------ state
    private static boolean lowHullTest;
    private static boolean gearChecked;
    private static int shopTick;
    private static String testWeapon;

    /** Emulator tests only: equip the laser named in /data/local/tmp/corsair_weapon. */
    private static void testWeapon(PlayerShip ps) {
        String v = ModDev.testValue("corsair_weapon");
        if (v == null || v.length() == 0 || v.equals(testWeapon)) return;
        try {
            ObjectRegistry.INSTANCE.game.playerInfo.playerGear.laser = fr.testudo.spacecorsair.business.loot.SpaceObjectType.valueOf(v);
            ObjectRegistry.INSTANCE.game.playerCurrentShipInventory.forceAddObject(fr.testudo.spacecorsair.business.loot.SpaceObject.of(fr.testudo.spacecorsair.business.loot.SpaceObjectType.valueOf(v)));
            ps.applyGear();
            testWeapon = v;
        } catch (Throwable t) {
            testWeapon = v;
        }
    }
    private static long lastDraw;
    private static long now;
    private static boolean wasThrust;
    private static float thrust;          // smoothed 0..1
    private static float lastLife = -1;
    private static int repairGlow;        // ms left of the repair indicator
    private static int repairTick, repairPulse, repairSound;
    private static int damageStage;       // 0 none, 1 light, 2 heavy, 3 critical
    private static int smokeTick, sparkTick, wakeTick, boomTick;
    private static Object level;
    private static int warp;              // ms left of the warp-in flash
    private static final Vector2 a = new Vector2(), b = new Vector2();

    private static java.lang.reflect.Field gazField;
    private static Object gazBlanked;   // the stock array is only ever replaced as a whole (initGazTextures / ship change)

    /** The stock afterburner is one sprite at a fixed point behind the hull; mod hulls draw nozzle plumes instead. */
    private static void blankStockGaz() {
        try {
            if (gazField == null) {
                gazField = PlayerShip.class.getDeclaredField("gazDrawables");
                gazField.setAccessible(true);
            }
            Object o = gazField.get(null);
            if (o != null && o == gazBlanked) return;   // per frame: already blanked
            fr.testudo.spacecorsair.display.Drawable[] g;
            if (o == null) {
                g = new fr.testudo.spacecorsair.display.Drawable[5];
                gazField.set(null, g);
            } else {
                g = (fr.testudo.spacecorsair.display.Drawable[]) o;
            }
            for (int i = 0; i < g.length; i++) if (g[i] != ModFx.EMPTY) g[i] = ModFx.EMPTY;
            gazBlanked = g;
        } catch (Throwable t) {
            // keep the stock sprite
        }
    }

    static float size(PlayerShip ps) {
        return ps.shipSpec.drawableSize;
    }

    /** Per frame from ModShips.tick (game thread). */
    public static void tick(PlayerShip ps, long j) {
        now += j;
        if (ps.shipSpec == null || ps.removed) return;
        Profile p = profile(ps);
        boolean map = ObjectRegistry.INSTANCE.game.mapMode;
        Object lvl = ObjectRegistry.INSTANCE.game.currentLevel;
        shopTick -= j;
        if (shopTick <= 0) {
            shopTick = 1000;
            ModWeapons.stockShops();
            testWeapon(ps);
            ModCapitals.testSpawn(ps);
            ModTitan.holdFire = ModDev.testFlag("corsair_doomhold");
            ModFaction.testTick(ps);
            ModRep.testTick();
            // emulator tests: /data/local/tmp/corsair_level = n raises the pilot level (never present on a phone)
            String tl = ModDev.testValue("corsair_level");
            if (tl != null) {
                try {
                    int lv = Integer.parseInt(tl.trim());
                    if (ObjectRegistry.INSTANCE.game.playerInfo.level < lv) ObjectRegistry.INSTANCE.game.playerInfo.level = lv;
                } catch (Exception e) { /* test only */ }
            }
        }
        ModComms.tick(ps);
        ModRep.tick(ps, j);
        ModAlerts.tick(ps, j);
        ModShield.tick(ps, j);
        ModCapitals.checkDestroyed();
        if (lvl != level) {
            level = lvl;
            ModFx.clear();
            ModCapitals.onLevel();
            if (!map && (p.titan || (p.top && p.big))) {
                warp = 1100;
                ModSound.play("warp_in", p.titan ? 1.0f : 0.7f, 1.0f, 2000);
            }
        }
        if (p.flames) blankStockGaz();
        if (map || ps.isDocked) {
            ModSound.rumble(0);
            return;
        }
        if (!gearChecked) {
            // older saves may have the DEV kit equipped on another ship: run the ship-gear check once per session
            gearChecked = true;
            ModLock.onShipChanged();
        }
        if (lowHullTest && ps.maxLife > 0) {
            lowHullTest = false;
            ps.life = ps.maxLife * 0.2f;
        }
        float target = ps.isPousee ? (ps.isBoosterEnabled ? 1.0f : 0.35f + ps.curPouseePourcentage / 160.0f) : 0.0f;
        thrust += (target - thrust) * Math.min(1, j / 180.0f);
        float sz = size(ps);

        // spool-up flare
        if (ps.isPousee && !wasThrust && p.flames && p.top) {
            float[] e = ModFxData.ENGINES[p.data];
            for (int k = 0; k + 2 < e.length; k += 3) {
                ModFx.local(ps.position, ps.spin, e[k] * sz, e[k + 1] * sz, a);
                ModFx.part("fx_core", a.x, a.y, 0, 0, 260, sz * 0.06f, sz * 0.16f, p.er, p.eg, p.eb, 1.0f, true, false);
            }
        }
        wasThrust = ps.isPousee;

        // capital engine rumble
        if (p.top && p.big) ModSound.rumble(thrust * (p.titan ? 0.45f : 0.3f));
        else ModSound.rumble(0);

        // wake: faint glowing exhaust left behind while moving
        if (p.flames && p.top && ps.speed.length() > 1.2f) {
            wakeTick -= j;
            if (wakeTick <= 0) {
                wakeTick = p.titan ? 45 : 80;
                float[] e = ModFxData.ENGINES[p.data];
                int k = 3 * (int) (Math.random() * (e.length / 3));
                ModFx.local(ps.position, ps.spin, e[k] * sz, (e[k + 1] + 0.03f) * sz, a);
                ModFx.part("fx_smoke", a.x, a.y, ModFx.rnd(-10, 10), ModFx.rnd(-10, 10), p.titan ? 1600 : 1000, sz * 0.05f, sz * 0.16f,
                    p.er * 0.7f + 0.3f, p.eg * 0.7f + 0.3f, p.eb * 0.7f + 0.3f, 0.22f, true, false);
            }
        }

        // ---- self repair indicator: shows while the hull is actually going up
        if (lastLife >= 0 && ps.life > lastLife + 0.01f && ps.life < ps.maxLife) repairGlow = 600;
        lastLife = ps.life;
        if (repairGlow > 0) {
            repairGlow -= j;
            repairTick -= j;
            repairPulse -= j;
            repairSound -= j;
            boolean furnace = p.hull != null && "crimson_throne".equals(p.hull.art);
            float rr = furnace ? 1.0f : 0.35f, rg = furnace ? 0.6f : 1.0f, rb = furnace ? 0.2f : 0.5f;
            if (repairTick <= 0 && p.data >= 0) {
                repairTick = 110;
                float[] d = ModFxData.DMG[p.data];
                int k = 2 * (int) (Math.random() * (d.length / 2));
                ModFx.local(ps.position, ps.spin, d[k] * sz, d[k + 1] * sz, a);
                ModFx.part(furnace ? "fx_fire" : "fx_plus", a.x, a.y, ModFx.rnd(-15, 15), ModFx.rnd(-15, 15) + 0, 900, sz * 0.025f + 14, sz * 0.04f + 18, rr, rg, rb, 0.95f, true, true);
            }
            if (repairPulse <= 0) {
                repairPulse = 1500;
                ModFx.part("fx_ring", ps.position.x, ps.position.y, 0, 0, 900, sz * 0.5f, sz * 1.15f, rr, rg, rb, 0.55f, true, true);
                ModFx.lastSpin(0, 0);
            }
            if (repairSound <= 0) {
                repairSound = 4500;
                ModSound.play("repair", 0.35f, 1.0f, 3000);
            }
        }

        // ---- damaged hull: stage from hull %, with 5% hysteresis on the way back up
        if (p.big && p.data >= 0) {
            float lp = ps.maxLife <= 0 ? 1 : ps.life / ps.maxLife;
            int s = lp < 0.25f ? 3 : lp < 0.5f ? 2 : lp < 0.75f ? 1 : 0;
            if (s > damageStage) {
                if (damageStage >= 0 && s >= 2) ModSound.play("hull_breach", 0.6f, 1.0f, 1500);
                damageStage = s;
            } else if (s < damageStage) {
                float up = damageStage == 3 ? 0.30f : damageStage == 2 ? 0.55f : 0.80f;
                if (lp >= up) damageStage = s;
            }
            if (damageStage > 0) emitDamage(ps, p, j, sz);
        } else {
            damageStage = 0;
        }

        if (warp > 0) warp -= j;
    }

    private static void emitDamage(PlayerShip ps, Profile p, long j, float sz) {
        float[] d = ModFxData.DMG[p.data];
        int points = Math.min(d.length / 2, damageStage == 1 ? 2 : damageStage == 2 ? 4 : 7);
        smokeTick -= j;
        if (smokeTick <= 0) {
            smokeTick = damageStage == 3 ? 55 : damageStage == 2 ? 90 : 150;
            int k = 2 * (int) (Math.random() * points);
            ModFx.local(ps.position, ps.spin, d[k] * sz, d[k + 1] * sz, a);
            float grey = ModFx.rnd(0.18f, 0.32f);
            ModFx.part("fx_smoke", a.x, a.y, ps.speed.x * 6 + ModFx.rnd(-25, 25), ps.speed.y * 6 + ModFx.rnd(-25, 25), damageStage == 3 ? 2200 : 1600,
                sz * 0.08f + 20, sz * 0.24f + 50, grey, grey, grey, damageStage == 1 ? 0.55f : 0.8f, false, true);
            ModFx.lastDrag(1.2f);
            if (damageStage >= 2) {
                int f = 2 * (int) (Math.random() * Math.min(points, damageStage == 2 ? 2 : 4));
                ModFx.local(ps.position, ps.spin, d[f] * sz, d[f + 1] * sz, b);
                ModFx.part("fx_fire", b.x, b.y, ModFx.rnd(-20, 20), ModFx.rnd(-20, 20), 520, sz * 0.05f + 16, sz * 0.10f + 30, 1.0f, ModFx.rnd(0.45f, 0.7f), 0.2f, 0.95f, true, true);
            }
        }
        if (damageStage >= 2) {
            sparkTick -= j;
            if (sparkTick <= 0) {
                sparkTick = damageStage == 3 ? 160 : 380;
                int k = 2 * (int) (Math.random() * points);
                ModFx.local(ps.position, ps.spin, d[k] * sz, d[k + 1] * sz, a);
                for (int n = 0; n < 4; n++) {
                    double ang = Math.random() * Math.PI * 2;
                    float sp = ModFx.rnd(120, 320);
                    ModFx.part("fx_spark", a.x, a.y, (float) Math.cos(ang) * sp, (float) Math.sin(ang) * sp, 350, 10, 6, 1.0f, 0.85f, 0.5f, 1.0f, true, true);
                    ModFx.lastStretch(0.06f);
                    ModFx.lastDrag(2.5f);
                }
            }
        }
        if (damageStage == 3) {
            boomTick -= j;
            if (boomTick <= 0) {
                boomTick = (int) ModFx.rnd(1400, 2600);
                int k = 2 * (int) (Math.random() * points);
                ModFx.local(ps.position, ps.spin, d[k] * sz, d[k + 1] * sz, a);
                ModFx.part("fx_core", a.x, a.y, 0, 0, 300, sz * 0.03f, sz * 0.12f, 1.0f, 0.75f, 0.35f, 1.0f, true, true);
                ModFx.part("fx_fire", a.x, a.y, 0, 0, 600, sz * 0.04f, sz * 0.1f, 1.0f, 0.5f, 0.15f, 0.9f, true, true);
            }
        }
    }

    // ------------------------------------------------------------------ drawing
    /** Before the hull is queued (engines, aura, wake particles). */
    public static void drawUnder(PlayerShip ps) {
        ModFx.budget = 420;
        if (ps.shipSpec == null || ps.removed || ObjectRegistry.INSTANCE.game.mapMode) return;
        Profile p = profile(ps);
        float sz = size(ps);
        long t = now;
        ModFx.drawParticles(false);
        // engine plumes
        if (p.flames) {
            float[] e = ModFxData.ENGINES[p.data];
            float base = p.titan ? 0.24f : p.big ? 0.18f : 0.13f;
            for (int k = 0; k + 2 < e.length; k += 3) {
                float w = Math.max(e[k + 2] * sz * 1.3f, sz * (p.titan ? 0.07f : 0.05f));
                ModFx.local(ps.position, ps.spin, e[k] * sz, e[k + 1] * sz, a);
                // nothing at rest: the nozzles only light up under thrust
                if (thrust > 0.04f) {
                    ModFx.spr("fx_glow", a.x, a.y, w * 3.0f, w * 3.0f, 0, p.er, p.eg, p.eb, 0.8f * thrust, true);
                    float flick = 0.88f + (float) Math.random() * 0.24f;
                    float len = sz * (base + 0.5f * thrust) * flick * (ps.isBoosterEnabled ? 1.35f : 1.0f);
                    ModFx.local(ps.position, ps.spin, e[k] * sz, e[k + 1] * sz + len * 0.45f, b);
                    ModFx.spr("fx_flame", b.x, b.y, w * 2.0f, len, ps.spin, p.er, p.eg, p.eb, 1.0f, true);
                    ModFx.spr("fx_glow", b.x, b.y, w * 3.2f, len * 0.9f, ps.spin, p.er, p.eg, p.eb, 0.35f * thrust, true);
                    ModFx.local(ps.position, ps.spin, e[k] * sz, e[k + 1] * sz + len * 0.25f, b);
                    ModFx.spr("fx_flame", b.x, b.y, w * 0.7f, len * 0.55f, ps.spin, 1.0f, 1.0f, 1.0f, 0.8f, true);
                }
            }
        }
        if (!p.top && !p.titan) return;
        float pulse = 0.5f + 0.5f * (float) Math.sin(t / 700.0d);
        float rad = p.data >= 0 ? ModFxData.RADIUS[p.data] * sz : sz * 0.45f;

        // ambient aura beneath the hull
        ModFx.spr("fx_glow", ps.position.x, ps.position.y, rad * 2.6f, rad * 2.6f, 0, p.ar, p.ag, p.ab, (p.titan ? 0.22f : 0.14f) + 0.06f * pulse, true);
        if (p.titan || p.alien) {
            float rot = (t / 40.0f) % 360;
            ModFx.spr("fx_shock", ps.position.x, ps.position.y, rad * 2.35f, rad * 2.35f, rot, p.ar, p.ag, p.ab, 0.16f + 0.08f * pulse, true);
            ModFx.spr("fx_shock", ps.position.x, ps.position.y, rad * 2.05f, rad * 2.05f, -rot * 1.4f, p.ar, p.ag, p.ab, 0.12f, true);
        }

    }

    /** After the hull is queued (lights, damage decals, turrets, shield, warp flash). */
    public static void drawOver(PlayerShip ps) {
        try {
            if (ps.shipSpec == null || ps.removed || ObjectRegistry.INSTANCE.game.mapMode) return;
            Profile p = profile(ps);
            float sz = size(ps);
            long t = now;

            // damage decals ride on the hull
            if (damageStage > 0 && p.data >= 0) {
                float[] d = ModFxData.DMG[p.data];
                int n = Math.min(d.length / 2, damageStage == 1 ? 2 : damageStage == 2 ? 4 : 7);
                for (int k = 0; k < n; k++) {
                    ModFx.local(ps.position, ps.spin, d[2 * k] * sz, d[2 * k + 1] * sz, a);
                    float ds = Math.max(46, sz * (0.12f + 0.03f * (k % 3)));
                    ModFx.spr("fx_scorch", a.x, a.y, ds, ds, ps.spin + k * 67, 1, 1, 1, 0.85f, false);
                    if (damageStage >= 2 && k % 2 == 0) {
                        float glow = 0.55f + 0.45f * (float) Math.sin(t / 130.0d + k);
                        ModFx.spr("fx_crack", a.x, a.y, ds * 1.3f, ds * 1.3f, ps.spin + k * 41, 1, 1, 1, 0.6f + 0.4f * glow, false);
                        ModFx.spr("fx_glow", a.x, a.y, ds * 0.9f, ds * 0.9f, 0, 1.0f, 0.45f, 0.1f, 0.25f * glow, true);
                    }
                }
            }

            ModShield.draw(ps);
            ModTitan.drawTurrets(ps, p);

            if (p.top || p.titan) {
                // pulsing hull lights
                if (p.data >= 0) {
                    float[] l = ModFxData.LIGHTS[p.data];
                    int n = Math.min(l.length / 5, p.titan ? 8 : 5);
                    for (int k = 0; k < n; k++) {
                        int o = k * 5;
                        float ph = 0.5f + 0.5f * (float) Math.sin(t / (520.0d + k * 90) + k * 1.7);
                        ModFx.local(ps.position, ps.spin, l[o] * sz, l[o + 1] * sz, a);
                        float ls = sz * 0.035f + 8;
                        ModFx.spr("fx_core", a.x, a.y, ls, ls, 0, Math.max(0.4f, l[o + 2]), Math.max(0.4f, l[o + 3]), Math.max(0.4f, l[o + 4]), 0.25f + 0.55f * ph, true);
                    }
                    // navigation lights: port red, starboard green, short blink; titans add a white stern strobe
                    float[] nv = ModFxData.NAV[p.data];
                    long cyc = t % 1400;
                    float on = cyc < 160 ? 1.0f : 0.15f;
                    float ns = sz * 0.03f + 12;
                    ModFx.local(ps.position, ps.spin, nv[0] * sz, nv[1] * sz, a);
                    ModFx.spr("fx_core", a.x, a.y, ns * (1 + on), ns * (1 + on), 0, 1.0f, 0.15f, 0.1f, on, true);
                    long cyc2 = (t + 700) % 1400;
                    float on2 = cyc2 < 160 ? 1.0f : 0.15f;
                    ModFx.local(ps.position, ps.spin, nv[2] * sz, nv[3] * sz, a);
                    ModFx.spr("fx_core", a.x, a.y, ns * (1 + on2), ns * (1 + on2), 0, 0.15f, 1.0f, 0.3f, on2, true);
                    if (p.titan && (t % 2100) < 90) {
                        ModFx.local(ps.position, ps.spin, 0, 0.47f * sz, a);
                        ModFx.spr("fx_streak", a.x, a.y, sz * 0.5f, sz * 0.5f, ps.spin + 90, 1, 1, 1, 0.9f, true);
                    }
                }
                // titan shield lattice shimmer over the hull
                if (p.titan && ps.shield != null && ps.shield.capacity > 0) {
                    float sh = ps.shield.currentValue / ps.shield.capacity;
                    float rad = (p.data >= 0 ? ModFxData.RADIUS[p.data] : 0.45f) * sz;
                    float pulse = 0.5f + 0.5f * (float) Math.sin(t / 900.0d);
                    ModFx.spr("fx_hex", ps.position.x, ps.position.y, rad * 2.3f, rad * 2.3f, (t / 120.0f) % 360, p.ar, p.ag, p.ab, sh * (0.07f + 0.06f * pulse), true);
                }
            }
            // the lance first, so a busy particle frame can never use up the sprite budget before it
            ModTitan.drawOver(ps, p);
            ModFaction.draw(ps);
            ModFx.drawParticles(true);
            long nowMs = System.currentTimeMillis();
            ModWeapons.drawArcs(lastDraw == 0 ? 16 : Math.min(100, nowMs - lastDraw));
            lastDraw = nowMs;

            if (warp > 0) {
                float k = warp / 1100.0f;          // 1 -> 0
                float grow = 1 - k;
                ModFx.spr("fx_core", ps.position.x, ps.position.y, sz * (0.6f + 1.6f * grow), sz * (0.6f + 1.6f * grow), 0, p.ar * 0.5f + 0.5f, p.ag * 0.5f + 0.5f, p.ab * 0.5f + 0.5f, k, true);
                ModFx.spr("fx_shock", ps.position.x, ps.position.y, sz * (0.5f + 2.6f * grow), sz * (0.5f + 2.6f * grow), grow * 90, p.ar, p.ag, p.ab, k * 0.9f, true);
                ModFx.spr("fx_streak", ps.position.x, ps.position.y, sz * 3.5f * (0.4f + k), sz * 0.6f, 0, 1, 1, 1, k, true);
            }
        } catch (Exception e) {
            // visuals never break the frame
        }
    }

    /** Carrier bay / hive launch flash at the launching hull. */
    public static void onBayLaunch(PlayerShip ps) {
        try {
            Profile p = profile(ps);
            float sz = size(ps);
            for (int side = -1; side <= 1; side += 2) {
                float[] nv = p.data >= 0 ? ModFxData.NAV[p.data] : null;
                float lx = nv == null ? side * sz * 0.3f : (side < 0 ? nv[0] : nv[2]) * sz * 0.7f;
                float ly = nv == null ? 0 : (side < 0 ? nv[1] : nv[3]) * sz;
                ModFx.local(ps.position, ps.spin, lx, ly, a);
                ModFx.part("fx_core", a.x, a.y, 0, 0, 350, sz * 0.05f, sz * 0.18f, 0.5f, 1.0f, 0.6f, 1.0f, true, true);
                ModFx.part("fx_ring", a.x, a.y, 0, 0, 500, sz * 0.05f, sz * 0.3f, 0.5f, 1.0f, 0.6f, 0.8f, true, true);
                for (int n = 0; n < 5; n++) {
                    double ang = Math.toRadians(ps.spin + 90 + side * 90 + ModFx.rnd(-25, 25));
                    float sp = ModFx.rnd(200, 420);
                    ModFx.part("fx_spark", a.x, a.y, (float) Math.cos(ang) * sp, (float) Math.sin(ang) * sp, 420, 12, 6, 0.6f, 1.0f, 0.7f, 1.0f, true, true);
                    ModFx.lastStretch(0.07f);
                    ModFx.lastDrag(2.0f);
                }
            }
            ModSound.play("bay_launch", 0.8f, 1.0f, 400);
        } catch (Exception e) {
            // cosmetic
        }
    }
}
