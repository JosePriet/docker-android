package fr.testudo.spacecorsair.mod;

import fr.testudo.spacecorsair.business.projectiles.Missile;
import fr.testudo.spacecorsair.business.projectiles.Projectile;
import fr.testudo.spacecorsair.business.Element;
import fr.testudo.spacecorsair.business.world.civil.GuardianCivilShip;
import fr.testudo.spacecorsair.business.player.PlayerShip;

/**
 * 2026-11-17 balance-report prototypes (space-corsair/proposals/balance-report.md). PROPOSAL ONLY: every switch starts
 * OFF and is a test file in /data/local/tmp (never present on a phone), so a normal install plays exactly as before.
 *   corsair_bal_range   Reaver / Kre'tari / Varn flagships hold 50-80% of their battery range (no drift-out, no close-in)
 *   corsair_bal_aegis   SRS Aegis (real flagship, not police) fields 2-3 drones instead of 2-5
 *   corsair_bal_warden  FAV Warden battery damage x0.8
 *   corsair_bal_polA    police titan battery + drone damage 3.6x -> 1.6x
 *   corsair_bal_polB    polA plus police titan overshield 40% -> 15% and armour 30% -> 15%
 * Also (emulator only) the player's damage on the corsair_dmgtest target is split into gun / missile / other.
 */
public final class ModBal {
    private ModBal() {}

    private static long poll;
    private static boolean range, aegis, warden, polA, polB;

    private static void refresh() {
        long now = System.currentTimeMillis();
        if (now - poll < 2000) return;
        poll = now;
        range = ModDev.testFlag("corsair_bal_range");
        aegis = ModDev.testFlag("corsair_bal_aegis");
        warden = ModDev.testFlag("corsair_bal_warden");
        polB = ModDev.testFlag("corsair_bal_polB");
        polA = polB || ModDev.testFlag("corsair_bal_polA");
    }

    /** Short tag for logs: which switches were on. */
    static String tag() {
        refresh();
        return (range ? "R" : "-") + (aegis ? "A" : "-") + (warden ? "W" : "-") + (polB ? "B" : polA ? "P" : "-");
    }

    // ------------------------------------------------------------------ battery damage
    static final float POLICE_A = 1.6f / 3.6f;

    /** Multiplier on a flagship / police titan battery (and drone) shot. 1 when every switch is off. */
    static float shotMult(ModCapitals.Cap c) {
        refresh();
        if (c == null) return 1f;
        if (c.police) return polA ? POLICE_A : 1f;
        if (warden && "warden".equals(c.f.key)) return 0.8f;
        return 1f;
    }

    // ------------------------------------------------------------------ Aegis drones
    static int maxDrones(GuardianCivilShip g, int stock) {
        refresh();
        if (!aegis) return stock;
        ModCapitals.Cap c = ModCapitals.cap(g);
        return c != null && !c.police ? Math.min(stock, 3) : stock;
    }

    // ------------------------------------------------------------------ police titan defence (option B)
    static float overFrac(float stock) { refresh(); return polB ? 0.15f : stock; }
    static float titanArmor(float stock) { refresh(); return polB ? 0.15f : stock; }

    // ------------------------------------------------------------------ flagship range hold
    private static final float VMAX = 3.0f;   // per 10 ms (300 u/s), well under the ram dash (9)

    /** Per frame from ModTitanAI.tick, before the skills (a skill dash that sets the speed still wins). */
    static void holdRange(GuardianCivilShip g, ModCapitals.Cap c, PlayerShip ps, long j) {
        refresh();
        if (!range || c == null || c.police) return;
        String k = c.f.key;
        float r;
        if ("reaver".equals(k)) r = 2400;
        else if ("kretari".equals(k)) r = 2600;
        else if ("varn".equals(k)) r = 2400;
        else return;
        if (!ModLive.titanHostile(g, c)) return;
        float dx = ps.position.x - g.position.x, dy = ps.position.y - g.position.y;
        float d = (float) Math.sqrt(dx * dx + dy * dy);
        if (d < 1 || d > 7000) return;
        float lo = r * 0.5f, hi = r * 0.8f, k2 = Math.min(1f, j / 400f);
        float tx, ty;
        if (d > hi) { tx = dx / d * VMAX; ty = dy / d * VMAX; }          // close back in to gun range
        else if (d < lo) { tx = -dx / d * VMAX; ty = -dy / d * VMAX; }   // back off: no ramming without firing
        else { tx = -dy / d * VMAX * 0.3f; ty = dx / d * VMAX * 0.3f; }  // in the band: slow broadside orbit
        g.speed.x += (tx - g.speed.x) * k2;
        g.speed.y += (ty - g.speed.y) * k2;
    }

    // ------------------------------------------------------------------ emulator: damage split on the test target
    static Element splitTarget;
    static float gunDealt, missileDealt;
    static int gunHits, missileHits;

    static void resetSplit(Element t) { splitTarget = t; gunDealt = missileDealt = 0; gunHits = missileHits = 0; }

    /** From ModLive.hit with the damage actually applied. */
    static void recordHit(Element target, float out, Projectile p) {
        if (target == null || target != splitTarget || p == null || out <= 0) return;
        Element src = p.sender;
        if (src == null || !src.isPlayer) return;
        if (p instanceof Missile) { missileDealt += out; missileHits++; }
        else { gunDealt += out; gunHits++; }
    }
}
