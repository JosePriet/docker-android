package fr.testudo.spacecorsair.mod;

import fr.testudo.spacecorsair.business.loot.stuff.playerShip.PlayerShipSpec;
import fr.testudo.spacecorsair.business.player.PlayerShip;
import fr.testudo.spacecorsair.engine.Vector2;

/**
 * v38 (owner 2026-11-03): Spartan refit stages in game.
 * Per-stage turret hardpoints and turret counts (owner-approved pads, 1024 px sprite coordinates):
 * - Mantis: new base pads for every stage. Verdant: s3 front pad higher, s4/s5 own pads. Leviathan: s3, s4, s5 own pads.
 * - Bastion: 1 turret to stage 3, 2 turrets from stage 4. Monolith: 2 side turrets to stage 3, the front turret from stage 4.
 * A stage change (refit, ship switch, load) re-runs applyGear so the turret count and positions follow the stage.
 */
public final class ModV38 {
    private ModV38() {}

    static final String[] ARTS = {"mantis", "verdant", "leviathan", "bastion", "monolith"};
    /** [art][stage 0..5] = pads x,y in 1024 px; null = the ModHardpoints default of the hull. */
    static final int[][][] PADS = {
        {   // mantis (new base 2026-10-24, pads fixed across stages)
            {511, 359, 373, 546, 650, 546}, {511, 359, 373, 546, 650, 546}, {511, 359, 373, 546, 650, 546},
            {511, 359, 373, 546, 650, 546}, {511, 359, 373, 546, 650, 546}, {511, 359, 373, 546, 650, 546}},
        {   // verdant
            {511, 280, 318, 529, 704, 529}, {511, 280, 318, 529, 704, 529}, {511, 280, 318, 529, 704, 529},
            {511, 260, 318, 529, 704, 529}, {512, 305, 362, 496, 661, 496}, {512, 305, 362, 496, 661, 496}},
        {   // leviathan
            null, null, null,
            {409, 386, 613, 386, 396, 530, 626, 530, 405, 670, 617, 670},
            {401, 335, 620, 335, 402, 505, 621, 505, 402, 644, 621, 644},
            {375, 448, 647, 448, 375, 576, 647, 576, 375, 702, 647, 702}},
        {   // bastion: 1 turret to stage 3, 2 from stage 4
            null, {560, 263}, {560, 263}, {560, 263},
            {433, 422, 584, 423},
            {433, 422, 590, 422}},
        {   // monolith: side pads only to stage 3, front pad turret from stage 4
            {373, 574, 650, 574}, {373, 574, 650, 574}, {373, 574, 650, 574}, {373, 574, 650, 574},
            {512, 294, 324, 299, 700, 299}, {512, 294, 324, 299, 700, 299}},
    };

    private static int artIndex(String art) {
        for (int i = 0; i < ARTS.length; i++) if (ARTS[i].equals(art)) return i;
        return -1;
    }

    /** World turret positions of a hull at a refit stage, or null to keep the hull's default. */
    static Vector2[] pads(ModShips.Hull h, int stage) {
        int a = h == null ? -1 : artIndex(h.art);
        if (a < 0) return null;
        int[] p = PADS[a][Math.max(0, Math.min(5, stage))];
        if (p == null) return null;
        Vector2[] v = new Vector2[p.length / 2];
        for (int i = 0; i < v.length; i++) {
            v[i] = new Vector2(((p[2 * i] + 0.5f) / 1024f - 0.5f) * h.size, ((p[2 * i + 1] + 0.5f) / 1024f - 0.5f) * h.size);
        }
        return v;
    }

    private static final java.util.HashMap<PlayerShipSpec, Vector2[]> DEFAULTS = new java.util.HashMap<PlayerShipSpec, Vector2[]>();

    /** Puts the turrets of stage s on the hull's spec. Returns true when the count or a position changed. */
    static boolean setStage(ModShips.Hull h, int s) {
        PlayerShipSpec spec = h == null ? null : h.spec;
        if (spec == null || artIndex(h.art) < 0 || spec.canonPos == null) return false;
        if (!DEFAULTS.containsKey(spec)) {
            Vector2[] d = new Vector2[Math.min(spec.canonCount, spec.canonPos.length)];
            for (int i = 0; i < d.length; i++) d[i] = new Vector2(spec.canonPos[i].x, spec.canonPos[i].y);
            DEFAULTS.put(spec, d);
        }
        Vector2[] want = pads(h, s);
        if (want == null) want = DEFAULTS.get(spec);
        boolean same = spec.canonCount == want.length && spec.canonPos.length >= want.length;
        for (int i = 0; same && i < want.length; i++) {
            same = Math.abs(spec.canonPos[i].x - want[i].x) < 0.05f && Math.abs(spec.canonPos[i].y - want[i].y) < 0.05f;
        }
        if (same) return false;
        Vector2[] np = new Vector2[want.length];
        for (int i = 0; i < want.length; i++) np[i] = new Vector2(want[i].x, want[i].y);
        spec.canonPos = np;
        spec.canonCount = np.length;
        spec.laserCount = np.length;
        return true;
    }

    /** Init (after ModHardpoints): stock stage-0 turrets on the shop specs (Monolith shows 2 turrets). */
    static void initSpecs(ModShips.Hull[] hulls) {
        for (ModShips.Hull h : hulls) {
            try {
                if (h != null) setStage(h, 0);
            } catch (Throwable t) {
                // keep the stock spec
            }
        }
    }

    private static boolean inSync;

    /**
     * Hook (Mod.applyShipBonuses, first): when the flown hull's refit stage needs other turrets, set them on the spec and
     * re-run applyGear (which builds the turrets from the spec). Returns true when it did; the caller then stops.
     */
    public static boolean syncTurrets(PlayerShip ps) {
        if (inSync || ps == null) return false;
        try {
            ModShips.Hull h = ModShips.hullFor(ps.shipSpec);
            if (h == null || artIndex(h.art) < 0) return false;
            fr.testudo.spacecorsair.business.loot.SpaceObjectType cur = ModV35.currentShip();
            if (ModShips.hull(cur) != h) return false;   // mid ship switch: the next applyGear syncs
            int s = ModV35.stage(ModV35.level(cur));
            if (!setStage(h, s)) return false;
            inSync = true;
            try {
                ps.applyGear();
            } finally {
                inSync = false;
            }
            ModDev.ev("v38", h.art + " stage " + s + " turrets " + ps.shipSpec.canonCount);
            return true;
        } catch (Throwable t) {
            inSync = false;
            return false;
        }
    }
}
