package fr.testudo.spacecorsair.mod;

import fr.testudo.spacecorsair.business.projectiles.Missile;
import fr.testudo.spacecorsair.business.projectiles.Projectile;
import fr.testudo.spacecorsair.business.Element;
import fr.testudo.spacecorsair.business.world.civil.GuardianCivilShip;
import fr.testudo.spacecorsair.business.player.PlayerShip;

/**
 * 2026-11-18 balance changes from space-corsair/proposals/balance-report.md (owner OK 2026-11-18 03:14, pending phone test):
 *   - Reaver / Kre'tari / Varn flagships and every police titan hold 50-80% of their battery range (no drift-out, no close-in)
 *   - SRS Aegis (real flagship, not police) fields 2-3 drones instead of 2-5
 *   - FAV Warden battery damage x0.8
 * Police titans are untouched (owner: they keep 3.0x+ and stay a threat).
 * Emulator only: a file /data/local/tmp/corsair_bal_off turns all three off (baseline runs); never present on a phone.
 * Also (emulator only) the player's damage on the corsair_dmgtest target is split into gun / missile and traced per step.
 */
public final class ModBal {
    private ModBal() {}

    private static long poll;
    private static boolean off;

    private static void refresh() {
        long now = System.currentTimeMillis();
        if (now - poll < 2000) return;
        poll = now;
        off = ModDev.testFlag("corsair_bal_off");
    }

    /** Short tag for logs. */
    static String tag() {
        refresh();
        return off ? "off" : "on";
    }

    // ------------------------------------------------------------------ battery damage
    /** Multiplier on a flagship battery shot (the Warden's x0.8). */
    static float shotMult(ModCapitals.Cap c) {
        refresh();
        if (off || c == null || c.police) return 1f;
        return "warden".equals(c.f.key) ? 0.8f : 1f;
    }

    // ------------------------------------------------------------------ Aegis drones
    static int maxDrones(GuardianCivilShip g, int stock) {
        refresh();
        if (off) return stock;
        ModCapitals.Cap c = ModCapitals.cap(g);
        return c != null && !c.police ? Math.min(stock, 3) : stock;
    }

    // ------------------------------------------------------------------ flagship range hold
    private static final float VMAX = 3.0f;   // per 10 ms (300 u/s), well under the ram dash (9)

    /** Per frame from ModTitanAI.tick, before the skills (a skill dash that sets the speed still wins). */
    static void holdRange(GuardianCivilShip g, ModCapitals.Cap c, PlayerShip ps, long j) {
        refresh();
        if (off || c == null) return;
        String k = c.f.key;
        float r = 0;
        if (c.police) {   // 2026-11-18 (owner "police not taking any damage"): police titans stop kiting past the player's guns
            int fi = ModCapitals.indexOf(c.f);
            if (fi >= 0) for (ModCapitals.Gun gun : ModCapitals.GUNS[fi]) r = Math.max(r, gun.range);
        }
        else if ("reaver".equals(k)) r = 2400;
        else if ("kretari".equals(k)) r = 2600;
        else if ("varn".equals(k)) r = 2400;
        if (r <= 0) return;
        if (!ModLive.titanHostile(g, c)) return;
        float dx = ps.position.x - g.position.x, dy = ps.position.y - g.position.y;
        float d = (float) Math.sqrt(dx * dx + dy * dy);
        if (d < 1 || d > 7000) return;
        float lo = r * (c.police ? 0.4f : 0.5f), hi = r * (c.police ? 0.65f : 0.8f), k2 = Math.min(1f, j / 400f);   // police: inside the player's turret reach (~3,000)
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

    static final float[] stSum = new float[11];
    static final int[] stZero = new int[11];
    static int stHits;
    static String stFirst;

    static void resetSplit(Element t) {
        splitTarget = t; gunDealt = missileDealt = 0; gunHits = missileHits = 0;
        java.util.Arrays.fill(stSum, 0); java.util.Arrays.fill(stZero, 0); stHits = 0; stFirst = null;
    }

    /** 2026-11-18 emulator trace: damage of the player's hits on the test target after each step of ModLive.hit. */
    static void st(int k, float v, Projectile p) {
        try {
            if (p == null || p.sender == null || !p.sender.isPlayer) return;
            if (k == 0) {
                stHits++;
                if (stFirst == null) stFirst = p.getClass().getSimpleName() + ":" + Math.round(v);
            }
            stSum[k] += v;
            if (v <= 0) stZero[k]++;
        } catch (Throwable t) { /* trace only */ }
    }

    static String stages() {
        StringBuilder b = new StringBuilder("n=").append(stHits).append(" first=").append(stFirst);
        for (int k = 0; k < stSum.length; k++) b.append(' ').append(k).append(':').append(Math.round(stSum[k])).append('z').append(stZero[k]);
        b.append(" over=").append(ModPoliceTitan.overState());
        return b.toString();
    }

    /** From ModLive.hit with the damage actually applied. */
    static void recordHit(Element target, float out, Projectile p) {
        if (target == null || target != splitTarget || p == null || out <= 0) return;
        Element src = p.sender;
        if (src == null || !src.isPlayer) return;
        if (p instanceof Missile) { missileDealt += out; missileHits++; }
        else { gunDealt += out; gunHits++; }
    }
}
