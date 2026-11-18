package fr.testudo.spacecorsair.mod;

import fr.testudo.spacecorsair.business.loot.SpaceObjectType;
import fr.testudo.spacecorsair.business.loot.stuff.GearSpec;
import fr.testudo.spacecorsair.business.loot.stuff.laser.LaserSpec;
import fr.testudo.spacecorsair.business.loot.stuff.missile.MissileSpec;
import fr.testudo.spacecorsair.business.loot.stuff.playerShip.PlayerShipSpec;
import fr.testudo.spacecorsair.business.loot.stuff.shield.ShieldSpec;
import fr.testudo.spacecorsair.business.player.PlayerGear;
import fr.testudo.spacecorsair.business.player.PlayerInfo;
import fr.testudo.spacecorsair.business.player.XpBuilder;
import fr.testudo.spacecorsair.engine.ObjectRegistry;

import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.IOException;

/**
 * v45 host-side checks against the game's own tables (SPEC-FINAL section 2).
 *
 * The guest declares what it flies: level, hull, refit level, laser, missile, shield (names of the game's item list).
 * The host looks each one up in ITS OWN copy of the tables and derives ceilings: damage of one shot, damage per second,
 * hull and shield points. Whatever the guest then sends is clamped to those ceilings and counted as a flag. A name the
 * host does not have, or an item above the declared level, falls back to the best stock item of that level.
 *
 * The ceilings are generous (a legitimate build never reaches them): they stop a modified client from sending shots
 * of any size, not a good player.
 */
final class ModLanCheck {
    private ModLanCheck() { }

    /** Hull bonus, weapon fit, refit and faction trait, critical hits and alterations together stay well under this. */
    static final float DMG_SLACK = 12f;
    /** Refit (+30%), faction trait (+20%) and rounding. */
    static final float HULL_SLACK = 1.3f * 1.2f * 1.15f;
    static final float SHIELD_SLACK = 2.5f;
    /** A hull with a doomsday weapon: its beam is 100 000 damage a second by the owner's rule. */
    static final float DOOMSDAY_DPS = 150000f;
    static final int MAX_NAME = 64;

    static final class Decl {
        int level, refit;
        float maxHull, maxShield;   // what the guest's own game shows
        String ship = "", laser = "", missile = "", shield = "";

        boolean same(Decl o) {
            return o != null && level == o.level && refit == o.refit && maxHull == o.maxHull && maxShield == o.maxShield && ship.equals(o.ship) && laser.equals(o.laser) && missile.equals(o.missile) && shield.equals(o.shield);
        }
    }

    static final class Limits {
        float shot, dps, hull, shield;
        float radius = 1200f;   // spec item 4: the declared hull's shield radius (unknown hull: the largest stand-in)
        boolean doom;     // BH04 prototype: the declared hull has a doomsday
        float regen;      // GPT check BH06: shield points a second the declared build can regenerate (with slack)
        float shotPvp, dpsPvp;   // without the doomsday allowance: used while the players can hit each other
        float expShot, expDps;   // audit D4: the highest the declared build can really produce (no slack)
        int shotsPerSec;
        int flags;        // what the declaration itself got wrong (unknown item, item above the level)
        boolean exact;    // false = no usable declaration: the level's best stock items stand in
    }

    // ------------------------------------------------------------------ the declaration
    static Decl mine() {
        Decl d = new Decl();
        try {
            PlayerInfo pi = ObjectRegistry.INSTANCE.game.playerInfo;
            PlayerGear g = pi.playerGear;
            d.level = pi.level;
            d.ship = name(g.playerShip);
            d.laser = name(g.laser);
            d.missile = name(g.missile);
            d.shield = name(g.shield);
            d.refit = ModV35.level(g.playerShip);
            fr.testudo.spacecorsair.business.player.PlayerShip ps = ObjectRegistry.INSTANCE.playerShip;
            if (ps != null) { d.maxHull = ps.maxLife; d.maxShield = ps.shield != null ? ps.shield.capacity : 0; }
        } catch (Throwable t) {
            // an empty declaration: the host uses the level's tables
        }
        return d;
    }

    private static String name(SpaceObjectType t) { return t == null ? "" : t.name(); }

    /** Audit D1: the declaration names the DEV hull or a DEV item. */
    static boolean hasDev(Decl d) {
        if (d == null) return false;
        if (ModDev.HULL.equals(d.ship)) return true;
        for (String s : ModDev.ITEMS) if (s.equals(d.laser) || s.equals(d.missile) || s.equals(d.shield)) return true;
        return false;
    }

    static byte[] encode(Decl d) throws IOException {
        ByteArrayOutputStream bo = new ByteArrayOutputStream(96);
        DataOutputStream o = new DataOutputStream(bo);
        o.writeInt(d.level);
        o.writeInt(d.refit);
        o.writeFloat(d.maxHull); o.writeFloat(d.maxShield);
        o.writeUTF(d.ship); o.writeUTF(d.laser); o.writeUTF(d.missile); o.writeUTF(d.shield);
        o.flush();
        return bo.toByteArray();
    }

    static Decl decode(byte[] b) throws IOException {
        if (b == null || b.length > 600) throw new IOException("declaration too large");
        DataInputStream in = new DataInputStream(new ByteArrayInputStream(b));
        Decl d = new Decl();
        d.level = in.readInt();
        d.refit = in.readInt();
        d.maxHull = in.readFloat(); d.maxShield = in.readFloat();
        d.ship = ModLan.clean(in.readUTF(), MAX_NAME);
        d.laser = ModLan.clean(in.readUTF(), MAX_NAME);
        d.missile = ModLan.clean(in.readUTF(), MAX_NAME);
        d.shield = ModLan.clean(in.readUTF(), MAX_NAME);
        return d;
    }

    // ------------------------------------------------------------------ the tables
    private static volatile float[][] best;   // per level: [laser shot, laser dps, missile shot, missile dps, hull booster, shield capacity]

    private static int maxLevel() { return XpBuilder.PLAYER_SHIP_LIFE.length - 1; }

    static int levelOf(int declared) { return Math.max(1, Math.min(maxLevel(), declared)); }

    /** The item of this name in this phone's tables, or null (an enum lookup: never loads or runs anything). */
    /** BH04 prototype: the declared missile is a Hive Bay, and its tier. */
    static boolean hiveDeclared(Decl d) {
        GearSpec s = d == null ? null : spec(d.missile);
        return s instanceof MissileSpec && ModSpecs.isHive((MissileSpec) s);
    }

    static int hiveTier(Decl d) {
        GearSpec s = d == null ? null : spec(d.missile);
        return s instanceof MissileSpec ? Math.max(0, ModSpecs.tierOf((MissileSpec) s)) : 0;
    }

    static GearSpec spec(String n) {
        try {
            if (n == null || n.length() == 0 || n.length() > MAX_NAME) return null;
            return SpaceObjectType.valueOf(n).getGearSpec();
        } catch (Throwable t) {
            return null;
        }
    }

    static float laserDps(LaserSpec l) {
        try { float v = l.getDps(); return v > 0 && !Float.isNaN(v) && !Float.isInfinite(v) ? v : 0; } catch (Throwable t) { return 0; }
    }

    static float missileDps(MissileSpec m) {
        float dmg = Math.max(m.damage, m.radiusDamage);
        return m.reloadSpeedInMilli > 0 ? dmg * 1000f / m.reloadSpeedInMilli : dmg;
    }

    /** The strongest stock values an item of each level (or lower) has. Built once from the item list. */
    static float[][] best() {
        float[][] b = best;
        if (b != null) return b;
        int n = maxLevel() + 1;
        b = new float[n][6];
        for (SpaceObjectType t : SpaceObjectType.values()) {
            GearSpec g;
            try { g = t.getGearSpec(); } catch (Throwable e) { continue; }
            if (g == null) continue;
            String tn = t.name().toLowerCase(java.util.Locale.US);
            if (tn.contains("debug") || tn.contains("godmode") || tn.contains("cheat")) continue;   // developer items are not the level's best stock item
            int l = Math.max(0, Math.min(n - 1, g.level));
            if (g instanceof LaserSpec) {
                b[l][0] = Math.max(b[l][0], ((LaserSpec) g).damage);
                b[l][1] = Math.max(b[l][1], laserDps((LaserSpec) g));
            } else if (g instanceof MissileSpec) {
                b[l][2] = Math.max(b[l][2], Math.max(((MissileSpec) g).damage, ((MissileSpec) g).radiusDamage));
                b[l][3] = Math.max(b[l][3], missileDps((MissileSpec) g));
            } else if (g instanceof PlayerShipSpec) {
                b[l][4] = Math.max(b[l][4], ((PlayerShipSpec) g).lifeBooster);
            } else if (g instanceof ShieldSpec) {
                b[l][5] = Math.max(b[l][5], ((ShieldSpec) g).capacity);
            }
        }
        for (int l = 1; l < n; l++) for (int k = 0; k < 6; k++) b[l][k] = Math.max(b[l][k], b[l - 1][k]);   // "this level or lower"
        best = b;
        return b;
    }

    // ------------------------------------------------------------------ the ceilings
    /** Ceilings for a declaration; null declaration = the top of the tables (nothing declared yet). */
    static Limits limits(Decl d) {
        Limits m = new Limits();
        float[][] bs = best();
        int L = d == null ? maxLevel() : levelOf(d.level);
        float[] top = bs[L];
        if (d != null && d.level != L) m.flags++;
        float shot = top[0], dps = top[1] * 4, mShot = top[2], mDps = top[3], booster = top[4], shield = top[5];
        float regen = -1;   // unknown shield: a full recharge every 4 s stands in (generous)
        int cannons = 4;
        boolean doomsday = false;   // only a declared doomsday hull gets that allowance
        float hullDmg = 1f, hullShield = 1f, hullRate = 1f, misRate = 1f;   // hullRate: shots a second against the stock gun (hull reload)
        int refit = ModV35.REFIT_MAX;   // second check S5: no declaration = the top refit
        boolean ramp = d == null;       // the disintegrator's +100% ramp; unknown gun = allowed
        m.exact = false;
        if (d != null) {
            GearSpec ship = spec(d.ship), laser = spec(d.laser), missile = spec(d.missile), sh = spec(d.shield);
            // the level is the guest's own word, so an item is not refused for being above it: it must exist in the tables
            boolean okShip = ship instanceof PlayerShipSpec, okLaser = laser instanceof LaserSpec;
            if (!okShip) booster = bs[bs.length - 1][4];   // unknown hull: the sturdiest hull of the list, so a real ship is never shown weaker
            if (d.ship.length() > 0 && !okShip) m.flags++;
            if (d.laser.length() > 0 && !okLaser) m.flags++;
            if (d.refit < 0 || d.refit > ModV35.REFIT_MAX) m.flags++;
            if (okShip) {
                PlayerShipSpec ps = (PlayerShipSpec) ship;
                booster = ps.lifeBooster;
                m.radius = Math.max(100f, Math.max(ps.drawableSizeOfShield, ps.drawableSize) / 2.0f);
                cannons = Math.max(1, Math.max(ps.canonCount, ps.laserCount));
                try {
                    ModShips.Hull h = ModShips.hullFor(ps);
                    if (h != null) { hullDmg = Math.max(1f, h.dmg); hullShield = Math.max(1f, h.shieldCap); doomsday = h.doomsday; hullRate = 1f / Math.max(0.5f, Math.min(1f, h.reload)); misRate = 1f / Math.max(0.25f, Math.min(1f, h.missileReload)); }
                } catch (Throwable t) { /* a stock hull */ }
            }
            refit = Math.max(0, Math.min(ModV35.REFIT_MAX, d.refit));
            ramp = !okLaser || ModWeapons.family((LaserSpec) laser) == ModWeapons.DISINT;
            if (okLaser) {
                shot = ((LaserSpec) laser).damage;
                dps = laserDps((LaserSpec) laser) * cannons;
            } else dps = top[1] * cannons;
            if (missile instanceof MissileSpec) {
                mShot = Math.max(((MissileSpec) missile).damage, ((MissileSpec) missile).radiusDamage);
                mDps = missileDps((MissileSpec) missile);
            } else if (d.missile.length() > 0) m.flags++;
            if (sh instanceof ShieldSpec) { shield = ((ShieldSpec) sh).capacity; regen = Math.max(0, ((ShieldSpec) sh).reloadBySec); }
            else if (d.shield.length() > 0) m.flags++;
            m.exact = okShip && okLaser;
        }
        m.shot = DMG_SLACK * hullDmg * Math.max(1f, Math.max(shot, mShot));
        m.dps = DMG_SLACK * hullDmg * Math.max(1f, dps + mDps);
        m.shotPvp = m.shot; m.dpsPvp = m.dps;
        // second check S5: what an honest build can really do. A refit pick and the faction trait can both land on damage
        // and on reload (upper bound), the hull reload speeds the guns, and the disintegrator ramps to x2 on one target.
        float rf = ModV35.pickMult(refit) * ModV35.traitMult(refit), rp = ramp ? 2f : 1f;
        m.expShot = hullDmg * rf * Math.max(1f, Math.max(shot * rp, mShot));
        m.expDps = hullDmg * rf * Math.max(1f, dps * rp * rf * hullRate + mDps * misRate);   // hull missile reload too (reviewer)
        m.doom = doomsday;
        if (doomsday) { m.shot = Math.max(m.shot, DOOMSDAY_DPS); m.dps += DOOMSDAY_DPS; m.expShot = Math.max(m.expShot, DOOMSDAY_DPS); m.expDps += DOOMSDAY_DPS; }
        m.hull = Math.max(1f, XpBuilder.PLAYER_SHIP_LIFE[L] * Math.max(0.1f, booster) * HULL_SLACK);
        m.shield = Math.max(1f, shield * hullShield * SHIELD_SLACK);
        m.regen = regen >= 0 ? regen * hullShield * SHIELD_SLACK : m.shield / 4f;
        if (!(m.regen >= 0) || Float.isInfinite(m.regen)) m.regen = 0;
        m.shotsPerSec = 300;
        m.shot = sane(m.shot); m.dps = sane(m.dps); m.shotPvp = sane(m.shotPvp); m.dpsPvp = sane(m.dpsPvp); m.hull = sane(m.hull); m.shield = sane(m.shield);
        if (d != null) {   // the numbers the guest's game shows, against the tables
            if (!(d.maxHull >= 0) || d.maxHull > m.hull) m.flags++;
            if (!(d.maxShield >= 0) || d.maxShield > m.shield) m.flags++;
        }
        return m;
    }

    /** A ceiling is always a finite number of at least 1, whatever a table holds. */
    private static float sane(float v) { return v >= 1f && !Float.isInfinite(v) ? v : 1f; }

    // ------------------------------------------------------------------ damage per second (host, game thread)
    private static float room;
    private static long roomAt;

    static void reset() { room = 0; roomAt = 0; peakShot = 0; peakDps = 0; secSum = 0; secAt = 0; shotsSec = 0; }

    // ------------------------------------------------------------------ audit D4: real numbers of the session (host)
    static volatile float peakShot, peakDps;
    private static float secSum;
    private static long secAt;
    private static int shotsSec;

    /** Records one guest shot's requested damage; returns false when the shots-per-second limit is passed (audit I2). */
    static boolean record(Limits m, float ask, long now) {
        if (now - secAt >= 1000) { secAt = now; secSum = 0; shotsSec = 0; }
        secSum += ask;
        shotsSec++;
        if (ask > peakShot) peakShot = ask;
        if (secSum > peakDps) peakDps = secSum;
        return m == null || shotsSec <= m.shotsPerSec;
    }

    /** One anonymous sample for the lobby service: build, peaks and expected values. No install id, no nickname. */
    static String[] sample(Decl d, Limits m, boolean pvp) {
        if (d == null || m == null || peakShot <= 0) return null;
        return new String[] {"ver", ModLan.myVersion(), "level", "" + d.level, "ship", d.ship, "refit", "" + d.refit, "laser", d.laser, "missile", d.missile,
            "peakShot", "" + peakShot, "expShot", "" + m.expShot, "peakDps", "" + peakDps, "expDps", "" + m.expDps, "pvp", pvp ? "1" : "0"};
    }

    /**
     * The damage this shot may carry: at most the shot ceiling, and at most what is left of three seconds' worth of the
     * damage-per-second ceiling (refilled over time). 0 = nothing left; the caller counts a flag when it gets less than it asked.
     */
    static float allow(Limits m, float damage, long now) { return allow(m, damage, now, false); }

    static float allow(Limits m, float damage, long now, boolean pvp) {
        if (!(damage > 0)) return 0;   // also NaN
        if (m == null) return damage;
        float dps = pvp ? m.dpsPvp : m.dps, shot = pvp ? m.shotPvp : m.shot;
        float burst = 3f * dps;
        if (!(burst > 0) || Float.isInfinite(burst)) return 0;
        if (Float.isNaN(room) || room < 0) room = 0;
        if (roomAt == 0) room = burst;
        else room = Math.min(burst, room + dps * Math.max(0, now - roomAt) / 1000f);
        roomAt = now;
        float d = Math.min(damage, shot);
        if (d > room) d = Math.max(0, room);
        room -= d;
        return d;
    }
}
