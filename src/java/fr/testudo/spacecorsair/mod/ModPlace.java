package fr.testudo.spacecorsair.mod;

import fr.testudo.spacecorsair.business.Element;
import fr.testudo.spacecorsair.business.ennemis.Ennemis;
import fr.testudo.spacecorsair.business.player.PlayerShip;
import fr.testudo.spacecorsair.business.world.Portal;
import fr.testudo.spacecorsair.business.world.station.DestroyablePirateStation;
import fr.testudo.spacecorsair.business.world.station.Station;
import fr.testudo.spacecorsair.engine.ObjectRegistry;
import fr.testudo.spacecorsair.engine.Vector2;
import fr.testudo.spacecorsair.game.levels.Level;
import fr.testudo.spacecorsair.game.levels.LevelId;
import java.util.ArrayList;
import java.util.List;

/**
 * v37 mission placement (owner 2026-10-30): objectives far from where the player arrives, mission sectors next to a
 * faction HQ, reinforcements that come in from off-screen with a one-time catch-up boost (never popping in on screen).
 */
final class ModPlace {
    private ModPlace() {}

    /** Q3: objectives at least this far from the arrival point. */
    static final float OBJECTIVE_MIN = 8000f;
    /** Q7a: the hold-zone outpost sits 12,000-15,000 from the arrival point (the farthest point that fits in a smaller sector). */
    static final float OUTPOST_MIN = 12000f, OUTPOST_MAX = 15000f;
    /** Q19: ambushes and reinforcements spawn this far from the player. */
    static final float AMBUSH_DIST = 4500f;
    /** Q20: they fly at twice their speed until this close to the player, once. */
    static final float BOOST_UNTIL = 2000f, BOOST = 2.0f;

    // ------------------------------------------------------------------ sectors
    /** The sectors one gate away from {@code id} that missions can use (no arena, player bay or tutorial). */
    static List<LevelId> neighbours(LevelId id) {
        ArrayList<LevelId> out = new ArrayList<LevelId>();
        if (id == null) return out;
        for (LevelId n : new LevelId[]{id.top, id.bottom, id.left, id.right}) {
            if (n == null || n == LevelId.GALACTIC_ARENA || n == LevelId.FFA_THE_PLAYER_PAY || n == LevelId.TUTORIAL || out.contains(n)) continue;
            out.add(n);
        }
        return out;
    }

    /** Q2: a contract's sector, a neighbour of the giver's HQ that rotates daily. */
    static LevelId contractSector(LevelId hq, int idx, long day) {
        List<LevelId> n = neighbours(hq);
        if (n.isEmpty()) return hq;
        return n.get((int) ((day * 7 + idx) % n.size()));
    }

    static Level level() {
        try {
            return ObjectRegistry.INSTANCE.game.currentLevel;
        } catch (Throwable t) {
            return null;
        }
    }

    /** Bounding box of everything the sector holds (gates, stations, rocks, traffic): x0, y0, x1, y1. */
    static float[] bounds() {
        float[] b = {Float.MAX_VALUE, Float.MAX_VALUE, -Float.MAX_VALUE, -Float.MAX_VALUE};
        Level l = level();
        if (l != null) {
            for (int k = 0; k < l.elements.size(); k++) {
                Element e = l.elements.get(k);
                if (e == null || e.removed || e.position == null) continue;
                b[0] = Math.min(b[0], e.position.x);
                b[1] = Math.min(b[1], e.position.y);
                b[2] = Math.max(b[2], e.position.x);
                b[3] = Math.max(b[3], e.position.y);
            }
        }
        if (b[0] > b[2]) { b[0] = -10000; b[1] = -10000; b[2] = 10000; b[3] = 10000; }
        return b;
    }

    /**
     * A random point inside the sector between {@code min} and {@code max} from {@code ref}. When the sector is too small, the
     * farthest point found (owner Q7a: "the farthest point that fits").
     */
    static Vector2 farPoint(Vector2 ref, float min, float max) {
        float[] b = bounds();
        Vector2 best = null;
        float bestD = -1;
        for (int k = 0; k < 200; k++) {
            float x = b[0] + (float) Math.random() * (b[2] - b[0]), y = b[1] + (float) Math.random() * (b[3] - b[1]);
            float d = (float) Math.hypot(x - ref.x, y - ref.y);
            if (d >= min && d <= max) return new Vector2(x, y);
            if (d <= max && d > bestD) { bestD = d; best = new Vector2(x, y); }
        }
        if (best != null) return best;
        // nothing inside the box within max: straight out from ref, toward the box centre
        double a = Math.atan2((b[1] + b[3]) / 2 - ref.y, (b[0] + b[2]) / 2 - ref.x);
        return new Vector2(ref).add((float) (Math.cos(a) * min), (float) (Math.sin(a) * min));
    }

    static List<Station> stations() {
        ArrayList<Station> out = new ArrayList<Station>();
        Level l = level();
        if (l == null) return out;
        for (int k = 0; k < l.elements.size(); k++) {
            Element e = l.elements.get(k);
            if (e instanceof Station && !e.removed && ((Station) e).enableDocking && !(e instanceof DestroyablePirateStation)) out.add((Station) e);
        }
        return out;
    }

    static Station farthestStation(Vector2 from, Station not) {
        Station best = null;
        float bd = -1;
        for (Station s : stations()) {
            if (s == not) continue;
            float d = s.position.distance(from);
            if (d > bd) { bd = d; best = s; }
        }
        return best;
    }

    static Station nearestStation(Vector2 from) {
        Station best = null;
        float bd = Float.MAX_VALUE;
        for (Station s : stations()) {
            float d = s.position.distance(from);
            if (d < bd) { bd = d; best = s; }
        }
        return best;
    }

    /** Gates and hostile (pirate) stations: where reinforcements come from. */
    private static List<Element> sources() {
        ArrayList<Element> out = new ArrayList<Element>();
        Level l = level();
        if (l == null) return out;
        for (int k = 0; k < l.elements.size(); k++) {
            Element e = l.elements.get(k);
            if ((e instanceof Portal || e instanceof DestroyablePirateStation) && !e.removed) out.add(e);
        }
        return out;
    }

    /**
     * Q19: where a reinforcement appears: 4,500 from the player, on the side of the nearest gate or hostile station
     * (so it arrives from there), else in a random direction.
     */
    static Vector2 ambushPoint(Vector2 player) {
        Element src = null;
        float bd = Float.MAX_VALUE;
        for (Element e : sources()) {
            float d = e.position.distance(player);
            if (d < bd) { bd = d; src = e; }
        }
        double a = src != null && bd > 1 ? Math.atan2(src.position.y - player.y, src.position.x - player.x) : Math.random() * Math.PI * 2.0d;
        a += (Math.random() - 0.5d) * 0.6d;   // a loose group, not a single file
        return new Vector2(player).add((float) (Math.cos(a) * AMBUSH_DIST), (float) (Math.sin(a) * AMBUSH_DIST));
    }

    // ------------------------------------------------------------------ catch-up boost
    private static final ArrayList<Ennemis> boosted = new ArrayList<Ennemis>();

    /** Q20: x2 speed until within 2,000 of the player, then normal speed and AI; never again. */
    static void boost(Ennemis e) {
        if (e != null && !boosted.contains(e)) boosted.add(e);
    }

    /** Game thread, every frame (ModFaction.onDoPhysic). The game's snare multiplier scales thrust, so 2.0 doubles it. */
    static void tickBoost(PlayerShip ps) {
        for (int k = boosted.size() - 1; k >= 0; k--) {
            Ennemis e = boosted.get(k);
            boolean done = e == null || e.removed || e.life <= 0 || ps == null || e.position.distance(ps.position) < BOOST_UNTIL;
            if (done) {
                if (e != null && e.alterationSnareValue == BOOST) { e.alterationSnareValue = 1.0f; e.alterationSnareDuree = 0; }
                boosted.remove(k);
                continue;
            }
            if (e.alterationSnareValue >= 1.0f) {   // a real snare (value < 1) wins
                e.alterationSnareValue = BOOST;
                e.alterationSnareDuree = 200;
            }
        }
    }

    static void clearBoost() {
        boosted.clear();
    }
}
