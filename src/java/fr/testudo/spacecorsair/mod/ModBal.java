package fr.testudo.spacecorsair.mod;

import fr.testudo.spacecorsair.business.world.civil.GuardianCivilShip;
import fr.testudo.spacecorsair.business.player.PlayerShip;

/**
 * 2026-11-18 balance changes from space-corsair/proposals/balance-report.md (owner OK 2026-11-18 03:14, pending phone test):
 *   - Reaver / Kre'tari / Varn flagships hold 50-80% of their battery range, police titans 40-65% (no drift-out, no close-in)
 *   - every flagship and police titan stays on the player's screen (ModView), 2026-11-18 owner 11:40
 *   - SRS Aegis (real flagship, not police) fields 2-3 drones instead of 2-5
 *   - FAV Warden battery damage x0.8
 * Police titan damage is untouched (owner: they keep 3.0x+ and stay a threat); their overshield fix is in ModPoliceTitan.
 * Emulator only: a file /data/local/tmp/corsair_bal_off turns all three off (baseline runs); never present on a phone.
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
        if (off || c == null || c.boss) return;   // not the prologue Bloodforge
        String k = c.f.key;
        float r = 0;
        if (c.police) {   // 2026-11-18 (owner "police not taking any damage"): police titans stop kiting past the player's guns
            int fi = ModCapitals.indexOf(c.f);
            if (fi >= 0) for (ModCapitals.Gun gun : ModCapitals.GUNS[fi]) r = Math.max(r, gun.range);
        }
        else if ("reaver".equals(k)) r = 2400;
        else if ("kretari".equals(k)) r = 2600;
        else if ("varn".equals(k)) r = 2400;
        if (!ModLive.titanHostile(g, c)) return;
        float dx = ps.position.x - g.position.x, dy = ps.position.y - g.position.y;
        float d = (float) Math.sqrt(dx * dx + dy * dy);
        if (d < 1 || d > 7000) return;
        float lo, hi;
        // 2026-11-18 (owner): every flagship and police titan also stays on the player's screen (hull centre within
        // ModView.radius less a third of the hull); factions without a range band only get this limit
        float view = Math.max(600f, ModView.radius() - ModCapitals.SIZE * 0.35f);
        if (r <= 0) { lo = 0; hi = view; } else {
            lo = r * (c.police ? 0.4f : 0.5f);
            hi = Math.min(r * (c.police ? 0.65f : 0.8f), view);
            lo = Math.min(lo, hi * 0.6f);
        }
        float k2 = Math.min(1f, j / 400f);   // police: inside the player's turret reach (~3,000)
        float tx, ty;
        if (d > hi) { tx = dx / d * VMAX; ty = dy / d * VMAX; }          // close back in to gun range
        else if (d < lo) { tx = -dx / d * VMAX; ty = -dy / d * VMAX; }   // back off: no ramming without firing
        else if (r <= 0) return;                                          // no band: own AI while on screen
        else { tx = -dy / d * VMAX * 0.3f; ty = dx / d * VMAX * 0.3f; }  // in the band: slow broadside orbit
        g.speed.x += (tx - g.speed.x) * k2;
        g.speed.y += (ty - g.speed.y) * k2;
    }
}
