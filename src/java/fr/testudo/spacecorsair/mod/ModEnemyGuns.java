package fr.testudo.spacecorsair.mod;

import fr.testudo.spacecorsair.business.Element;
import fr.testudo.spacecorsair.business.ennemis.Ennemis;
import fr.testudo.spacecorsair.business.player.PlayerShip;
import fr.testudo.spacecorsair.business.projectiles.AlienLaser;
import fr.testudo.spacecorsair.business.projectiles.EnergyBullet;
import fr.testudo.spacecorsair.business.projectiles.EnergyLaser;
import fr.testudo.spacecorsair.business.projectiles.Projectile;
import fr.testudo.spacecorsair.business.world.station.Station;
import fr.testudo.spacecorsair.display.Drawable;
import fr.testudo.spacecorsair.display.Texture;
import fr.testudo.spacecorsair.engine.ObjectRegistry;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.WeakHashMap;

/**
 * v43a-15 (owner 2026-11-14, thread "Make enemy weapon designs more unique"): every faction ship fires its faction's weapon,
 * with its own shot art (proj_<key>_s/_m/_l, GPT), its own sound pitch and one signature each:
 *   Spartan rail: Marked shot, a 0.6 s aim line before the slug leaves.
 *   Reaver flak: Proximity burst, within 250 of the player into 5 shrapnel bits at 25% damage each.
 *   Kre'tari spines: turn toward the player at 30 deg/s; a hit leaves acid, 10% of the hit per second for 2 s.
 *   Varn disintegrator: existing ramp (+100% after 3 s), bolts thicken and redden with it.
 *   Ironclad artillery: existing splash; a red landing ring 0.8 s before a shell reaches the player (battleship+ only).
 *   Helion blaster: +50% damage to the player's shield, -30% to the hull.
 *   Warden arc: pauses the player's shield regen 2 s and jumps to one player drone within 450.
 * Scope: faction fleets / wings / patrols (ModV34.factionOf), police and station guns. Flagships keep their own shells
 * and batteries (pitch only). Pirates and unaffiliated ships keep stock guns.
 */
public final class ModEnemyGuns {
    private ModEnemyGuns() {}

    // FACTIONS order: spartan, reaver, kretari, varn, ironclad, helion, warden
    static final int SPARTAN = 0, REAVER = 1, KRETARI = 2, VARN = 3, IRONCLAD = 4, HELION = 5, WARDEN = 6;
    /** Per-faction pitch on the family sound (enemy shots, flagships and stations). */
    static final float[] PITCH = {1.0f, 1.12f, 0.72f, 0.95f, 0.88f, 1.06f, 0.85f};
    /** Shot sound gain by size (small, medium, large). */
    static final float[] GAIN = {0.35f, 0.55f, 0.8f};
    /** Drawn shot size by size (w, h world units). */
    static final float[][] WH = {{16, 32}, {24, 48}, {34, 68}};

    static final long MARK_MS = 600;
    static final float BURST_RANGE = 250, BURST_DMG = 0.25f;
    static final int BURST_N = 5;
    static final float BURST_STEP = 15;          // deg between shrapnel bits
    static final long BURST_LIFE = 450;
    static final float HOME_DEG_S = 30, HOME_RANGE = 1500, HOME_CONE = 60;
    static final long ACID_MS = 2000;
    static final float ACID_FRAC = 0.10f;
    static final long RING_MS = 800;
    static final float RING_R = 220;              // ModWeapons ARTY splash on the player
    static final float SHIELD_X = 1.5f, HULL_X = 0.7f;
    static final long ION_MS = 2000;
    static final float ION_JUMP = 450, ION_JUMP_DMG = 0.6f;   // same share as the player's arc chain

    // ------------------------------------------------------------------ shooters
    private static final int[] NONE = {-1, 0, 0};
    /** sender -> {faction index or -1, size 0/1/2, kind 0 ship / 1 police / 2 station}. */
    private static final WeakHashMap<Element, int[]> who = new WeakHashMap<Element, int[]>();

    static int[] shooter(Element s) {
        if (s == null || s.isPlayer) return NONE;
        int[] w = who.get(s);
        if (w != null) return w;
        w = NONE;
        boolean keep = false;   // a miss is cached only when final (flagship, player drone); others may register later
        try {
            if (ModCapitals.cap(s) != null || Mod.isDrone(s)) { w = NONE; keep = true; }
            else if (s instanceof Station) {
                int f = ModStationGuns.factionOfSender(s);
                w = f < 0 ? NONE : new int[]{f, 1, 2};
            } else if (ModPolice.isPolice(s)) {
                int f = ModPolice.policeFactionOf(s);
                w = f < 0 ? NONE : new int[]{f, size(s), 1};
            } else {
                String k = ModV34.factionOf(s);
                if (k != null && k.length() > 0 && !(s instanceof fr.testudo.spacecorsair.business.world.civil.TransportCivilShip))
                    w = new int[]{ModFaction.faction(k), size(s), 0};
            }
        } catch (Throwable t) {
            w = NONE;
        }
        if (w != NONE || keep) who.put(s, w);
        return w;
    }

    private static int size(Element e) {
        int c = ModWreck.sizeClass(e);
        return c <= 1 ? 0 : c == 2 ? 1 : 2;
    }

    // ------------------------------------------------------------------ fire (Level.commitChanges, via ModPolice.factionGuns)
    private static final WeakHashMap<Object, Boolean> released = new WeakHashMap<Object, Boolean>();
    private static final WeakHashMap<Object, Boolean> shrapnel = new WeakHashMap<Object, Boolean>();
    private static int swapN;

    static final class Held {
        EnergyBullet b;
        Element s;
        float ox, oy;
        long left;
        int size;
    }

    private static final ArrayList<Held> held = new ArrayList<Held>();
    private static final ArrayList<EnergyBullet> reaver = new ArrayList<EnergyBullet>(), kretari = new ArrayList<EnergyBullet>(),
        ironclad = new ArrayList<EnergyBullet>();
    private static final ArrayList<Element> reaverS = new ArrayList<Element>(), kretariS = new ArrayList<Element>(),
        ironcladS = new ArrayList<Element>(), bitsS = new ArrayList<Element>();
    private static final ArrayList<EnergyBullet> bits = new ArrayList<EnergyBullet>();

    @SuppressWarnings("unchecked")
    public static void swap(List<?> toAdd) {
        if (toAdd == null || toAdd.isEmpty()) return;
        try {
            PlayerShip ps = ObjectRegistry.INSTANCE.playerShip;
            for (int i = 0; i < toAdd.size(); i++) {
                Object o = toAdd.get(i);
                if (!(o instanceof Projectile)) continue;
                Projectile p = (Projectile) o;
                int[] w = shooter(p.sender);
                if (w[0] < 0) continue;
                if (o instanceof EnergyLaser || o instanceof AlienLaser) {
                    ModCapitals.Gun[] gs = ModCapitals.GUNS[w[0]];
                    ModCapitals.Gun gun = gs[(swapN++) % gs.length];
                    EnergyBullet b = fr.testudo.spacecorsair.business.factory.GamePools.newEnnergyBullet()
                        .init(p.damage, 6, p.sender, 1.0f, gun.r, gun.g, gun.b, ModWeapons.TAG[gun.fam]);
                    b.position.setSameAs(p.position);
                    b.speed.setSameAs(p.speed);
                    b.spin = p.spin;
                    b.level = p.level;
                    b.lifeTimeInMilli = p.lifeTimeInMilli;   // stock range kept: looks and signatures, not reach
                    ((List<Object>) toAdd).set(i, b);
                    shrapnel.remove(b);   // pooled: drop stale flags
                    released.remove(b);
                    o = b;
                }
                if (!(o instanceof EnergyBullet)) continue;
                EnergyBullet b = (EnergyBullet) o;
                int fam = ModWeapons.familyOf(b);
                if (fam < 0 || shrapnel.containsKey(b)) continue;
                if (released.remove(b) != null) continue;   // a Marked shot leaving: sound already played
                int f = w[0];
                if (f == SPARTAN && fam == ModWeapons.RAIL) {
                    Held h = new Held();
                    h.b = b; h.s = p.sender; h.left = MARK_MS; h.size = w[1];
                    h.ox = b.position.x - p.sender.position.x;
                    h.oy = b.position.y - p.sender.position.y;
                    held.add(h);
                    toAdd.remove(i);
                    i--;
                    continue;
                }
                if (f == REAVER && fam == ModWeapons.AUTO) { reaver.add(b); reaverS.add(p.sender); }
                else if (f == KRETARI && fam == ModWeapons.AUTO) { kretari.add(b); kretariS.add(p.sender); }
                else if (f == IRONCLAD && fam == ModWeapons.ARTY && w[1] == 2 && w[2] != 2) { ironclad.add(b); ironcladS.add(p.sender); }
                if (w[2] != 2) sound(ps, f, fam, w[1], b.position.x, b.position.y);   // stations play their own
            }
        } catch (Throwable t) {
            // stock shots this frame
        }
    }

    private static void sound(PlayerShip ps, int f, int fam, int size, float x, float y) {
        if (ps == null) return;
        float d = (float) Math.hypot(ps.position.x - x, ps.position.y - y);
        float gain = Math.max(0, 1.0f - d / 5000.0f) * GAIN[size];
        if (gain > 0.05f) ModSound.play(ModWeapons.SOUND[fam], gain, PITCH[f] * ModFx.rnd(0.96f, 1.04f), ModWeapons.GAP[fam]);
    }

    // ------------------------------------------------------------------ per frame (ModCaps.tick)
    private static long acidUntil, acidNext, ionUntil;
    private static float acidDps;
    private static Element acidFrom;

    public static void onLevel() {
        held.clear();
        reaver.clear(); reaverS.clear();
        kretari.clear(); kretariS.clear();
        ironclad.clear(); ironcladS.clear();
        for (int i = 0; i < bits.size(); i++) shrapnel.remove(bits.get(i));
        bits.clear(); bitsS.clear();
        who.clear();
        acidUntil = 0;
        ionUntil = 0;
    }

    private static boolean alive(EnergyBullet b, Element s, int fam) {
        return b != null && !b.removed && b.lifeTimeInMilli > 0 && b.sender == s && ModWeapons.familyOf(b) == fam;
    }

    public static void tick(PlayerShip ps, long j) {
        try {
            if (ps == null || j <= 0) return;
            Object lvl = ObjectRegistry.INSTANCE.game.currentLevel;
            // Marked shots: release after the aim line
            for (int i = held.size() - 1; i >= 0; i--) {
                Held h = held.get(i);
                h.left -= j;
                if (h.s == null || h.s.removed) { held.remove(i); continue; }
                if (h.left > 0) continue;
                held.remove(i);
                h.b.position.set(h.s.position.x + h.ox, h.s.position.y + h.oy);
                released.put(h.b, Boolean.TRUE);
                ObjectRegistry.INSTANCE.game.currentLevel.toAdd.add(h.b);
                sound(ps, SPARTAN, ModWeapons.RAIL, h.size, h.b.position.x, h.b.position.y);
                if (h.size > 0)
                    ModFx.part("fx_glow", h.b.position.x, h.b.position.y, 0, 0, 160, 20, h.size == 2 ? 90 : 50, 0.55f, 0.95f, 1.0f, 0.8f, true, true);
            }
            // Reaver proximity burst
            for (int i = reaver.size() - 1; i >= 0; i--) {
                EnergyBullet b = reaver.get(i);
                Element s = reaverS.get(i);
                if (!alive(b, s, ModWeapons.AUTO)) { reaver.remove(i); reaverS.remove(i); continue; }
                if (b.position.distance(ps.position) > BURST_RANGE) continue;
                reaver.remove(i); reaverS.remove(i);
                burst(b, s);
            }
            // expired Ironclad shells and shrapnel bits (pooled bullets: unflag before reuse)
            for (int i = ironclad.size() - 1; i >= 0; i--)
                if (!alive(ironclad.get(i), ironcladS.get(i), ModWeapons.ARTY)) { ironclad.remove(i); ironcladS.remove(i); }
            for (int i = bits.size() - 1; i >= 0; i--)
                if (!alive(bits.get(i), bitsS.get(i), ModWeapons.AUTO)) { shrapnel.remove(bits.get(i)); bits.remove(i); bitsS.remove(i); }
            // Kre'tari spines turn toward the player
            float step = HOME_DEG_S * j / 1000.0f;
            for (int i = kretari.size() - 1; i >= 0; i--) {
                EnergyBullet b = kretari.get(i);
                if (!alive(b, kretariS.get(i), ModWeapons.AUTO)) { kretari.remove(i); kretariS.remove(i); continue; }
                float dx = ps.position.x - b.position.x, dy = ps.position.y - b.position.y;
                if (dx * dx + dy * dy > HOME_RANGE * HOME_RANGE) continue;
                float v = (float) Math.hypot(b.speed.x, b.speed.y);
                if (v < 0.01f) continue;
                float cur = (float) Math.toDegrees(Math.atan2(b.speed.x, -b.speed.y));
                float want = (float) Math.toDegrees(Math.atan2(dx, -dy));
                float diff = want - cur;
                while (diff > 180) diff -= 360;
                while (diff < -180) diff += 360;
                if (Math.abs(diff) > HOME_CONE) continue;   // only spines already heading at the player
                float nd = cur + Math.max(-step, Math.min(step, diff));
                double r = Math.toRadians(nd);
                b.speed.set((float) Math.sin(r) * v, -(float) Math.cos(r) * v);
                b.spin = nd;
            }
            // acid
            long now = System.currentTimeMillis();
            if (now < acidUntil && now >= acidNext && !ps.removed) {
                acidNext = now + 250;
                ps.applyDamage(acidDps * 0.25f, acidFrom != null ? acidFrom : ps, null);
                Texture t = ModArt.ready("fx_acid_kretari");
                if (t != null) ModFx.sprTex(t, ps.position.x + ModFx.rnd(-30, 30), ps.position.y + ModFx.rnd(-30, 30), 70, 70, ModFx.rnd(0, 360), 0.55f, 1.0f, 0.3f, 0.7f, true, 0, 0, 1, 1);
                else ModFx.part("fx_glow", ps.position.x + ModFx.rnd(-30, 30), ps.position.y + ModFx.rnd(-30, 30), 0, 0, 300, 30, 60, 0.55f, 1.0f, 0.3f, 0.7f, true, true);
            }
            if (lvl == null) held.clear();
        } catch (Throwable t) {
            // signatures pause this frame
        }
    }

    private static void burst(EnergyBullet b, Element s) {
        float v = (float) Math.hypot(b.speed.x, b.speed.y);
        float base = (float) Math.toDegrees(Math.atan2(b.speed.x, -b.speed.y));
        float x = b.position.x, y = b.position.y, dmg = b.damage * BURST_DMG;
        b.lifeTimeInMilli = 0;
        for (int k = 0; k < BURST_N; k++) {
            float deg = base + (k - (BURST_N - 1) / 2.0f) * BURST_STEP;
            EnergyBullet n = fr.testudo.spacecorsair.business.factory.GamePools.newEnnergyBullet()
                .init(dmg, 6, s, 1.0f, b.r, b.g, b.b, ModWeapons.TAG[ModWeapons.AUTO]);
            n.position.set(x, y);
            n.speed.set(0.0f, -v).applyRotatation(Math.toRadians(deg));
            n.spin = deg;
            n.level = b.level;
            n.lifeTimeInMilli = BURST_LIFE;
            released.remove(n);
            shrapnel.put(n, Boolean.TRUE);
            bits.add(n); bitsS.add(s);
            ObjectRegistry.INSTANCE.game.currentLevel.toAdd.add(n);
        }
        int sz = shooter(s)[1];
        ModFx.part("fx_spark", x, y, 0, 0, 180, 20, sz == 2 ? 120 : sz == 1 ? 80 : 50, 1.0f, 0.55f, 0.25f, 1.0f, true, true);
    }

    // ------------------------------------------------------------------ hits
    /** From ModWeapons.onImpact (before the damage is applied). */
    static void onImpact(EnergyBullet b, Element target, int fam) {
        try {
            PlayerShip ps = ObjectRegistry.INSTANCE.playerShip;
            if (ps == null || target != ps) return;
            int f = shooter(b.sender)[0];
            long now = System.currentTimeMillis();
            if (f == KRETARI && fam == ModWeapons.AUTO && !shrapnel.containsKey(b)) {
                acidDps = Math.max(now < acidUntil ? acidDps : 0, b.damage * ACID_FRAC);
                acidUntil = now + ACID_MS;
                acidFrom = b.sender;
            } else if (f == WARDEN && fam == ModWeapons.ARC) {
                ionUntil = now + ION_MS;
                Ennemis[] ds = Mod.playerDrones();
                Ennemis best = null;
                float bd = ION_JUMP;
                for (int i = 0; ds != null && i < ds.length; i++) {
                    Ennemis d = ds[i];
                    if (d == null || d.removed) continue;
                    float dist = d.position.distance(ps.position);
                    if (dist < bd) { bd = dist; best = d; }
                }
                if (best != null) {
                    best.applyDamage(b.damage * ION_JUMP_DMG, b.sender, b);
                    ModWeapons.addArc(ps.position.x, ps.position.y, best.position.x, best.position.y);
                }
            }
        } catch (Throwable t) {
            // plain hit
        }
    }

    /** ModShield.rate: Warden ion arcs pause the player's shield regen. */
    static boolean ionStopped() {
        return System.currentTimeMillis() < ionUntil;
    }

    /** ModLive.hit (after ModV34.damage): Helion shield breaker on the player. */
    static float damageIn(Element target, float dmg, Projectile p) {
        try {
            if (dmg <= 0 || p == null || target == null || !target.isPlayer) return dmg;
            if (shooter(p.sender)[0] != HELION || ModWeapons.familyOf(p) != ModWeapons.BLAST) return dmg;
            PlayerShip ps = (PlayerShip) target;
            return dmg * (ps.shield != null && ps.shield.currentValue > 0 ? SHIELD_X : HULL_X);
        } catch (Throwable t) {
            return dmg;
        }
    }

    // ------------------------------------------------------------------ draw
    private static final HashMap<String, Boolean> has = new HashMap<String, Boolean>();
    static final String[] SZ = {"_s", "_m", "_l"};

    private static Texture art(String name) {
        Boolean h = has.get(name);
        if (h == null) { h = ModArt.lazyTex(name) != null; has.put(name, h); }
        return h ? ModArt.ready(name) : null;
    }

    /** From ModTitan.bullet: a faction ship's shot. Null = not one (stock sprite or other paths). */
    static Drawable bullet(EnergyBullet e) {
        int[] w = shooter(e.sender);
        if (w[0] < 0) return null;
        int fam = ModWeapons.familyOf(e);
        if (fam < 0) return null;
        try {
            int f = w[0], size = w[1];
            float scale = 1, r = 1, g = 1, bl = 1;
            if (f == VARN && fam == ModWeapons.DISINT) {
                float ramp = ModWeapons.enemyRamp();
                scale = 1 + ramp;
                g = bl = 1 - 0.7f * ramp;
            }
            boolean isBit = shrapnel.containsKey(e);
            Texture t = isBit ? art("fx_shrapnel_reaver")
                : art("proj_" + ModCapitals.FACTIONS[f].key + (f == WARDEN && fam == ModWeapons.ARC ? "_arc" : "") + SZ[size]);
            if (t != null) {
                float sw = WH[size][0] * scale, sh = WH[size][1] * scale;
                if (isBit) { sw = sh = 18; }
                else if (f == IRONCLAD) { sw *= 1.3f; sh *= 1.3f; }
                if (isBit) ModFx.sprTex(t, e.position.x, e.position.y, sw, sh, e.spin, e.r, e.g, e.b, 1, true, 0, 0, 1, 1);
                else ModFx.sprTex(t, e.position.x, e.position.y, sw, sh, e.spin, r, g, bl, 1, true, 0, 0, 1, 1);
                if (size > 0) ModWeapons.trail(e, fam);
                return ModFx.EMPTY;
            }
            if (scale > 1) {   // Varn ramp without art: a growing red core over the stock family bolt
                ModFx.spr("fx_core", e.position.x, e.position.y, 30 * scale, 30 * scale, 0, 1.0f, g * 0.35f, bl * 0.3f, 0.8f, true);
            }
            return ModWeapons.bullet(e, size == 2, size > 0);
        } catch (Throwable t) {
            return null;
        }
    }

    /** From ModCaps.drawOver: Marked-shot aim lines and Ironclad landing rings. */
    static void draw(PlayerShip ps) {
        try {
            for (int i = 0; i < held.size(); i++) {
                Held h = held.get(i);
                if (h.s == null || h.s.removed) continue;
                float x = h.s.position.x + h.ox, y = h.s.position.y + h.oy;
                float v = (float) Math.hypot(h.b.speed.x, h.b.speed.y);
                if (v < 0.01f) continue;
                float len = Math.min(3000, v * 0.1f * h.b.lifeTimeInMilli);
                float k = 1 - h.left / (float) MARK_MS;
                float a = (h.size == 0 ? 0.35f : h.size == 1 ? 0.6f : 0.9f) * (0.3f + 0.7f * k);
                ModFx.line(x, y, x + h.b.speed.x / v * len, y + h.b.speed.y / v * len, 0.55f, 0.95f, 1.0f, a);
                if (h.size > 0 && ((h.left / 100) & 1) == 0) ModFx.spr("fx_glow", x, y, 40, 40, 0, 0.55f, 0.95f, 1.0f, a, true);
            }
            if (ps == null) return;
            Texture ring = null;
            for (int i = 0; i < ironclad.size(); i++) {
                EnergyBullet b = ironclad.get(i);
                if (!alive(b, ironcladS.get(i), ModWeapons.ARTY)) continue;
                float v = (float) Math.hypot(b.speed.x, b.speed.y);
                if (v < 0.01f) continue;
                float ux = b.speed.x / v, uy = b.speed.y / v;
                float dx = ps.position.x - b.position.x, dy = ps.position.y - b.position.y;
                float along = dx * ux + dy * uy;
                if (along <= 0) continue;
                float px = b.position.x + ux * along, py = b.position.y + uy * along;
                if (Math.hypot(ps.position.x - px, ps.position.y - py) > RING_R) continue;
                float ms = along / (v * 0.1f);
                if (ms > RING_MS || ms > b.lifeTimeInMilli) continue;
                float a = 0.35f + 0.6f * (1 - ms / RING_MS);
                if (ring == null) ring = ModArt.ready("tele_cap_ironclad");
                if (ring != null) ModFx.sprTex(ring, px, py, RING_R * 2, RING_R * 2, 0, 1.0f, 0.3f, 0.15f, a, true, 0, 0, 1, 1);
                else ModFx.spr("fx_ring", px, py, RING_R * 2, RING_R * 2, 0, 1.0f, 0.3f, 0.15f, a, true);
            }
        } catch (Throwable t) {
            // no markers this frame
        }
    }
}
