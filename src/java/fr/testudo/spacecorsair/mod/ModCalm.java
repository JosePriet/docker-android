package fr.testudo.spacecorsair.mod;

import fr.testudo.spacecorsair.business.Element;
import fr.testudo.spacecorsair.business.mission.engine.DefendZoneMissionEngine;
import fr.testudo.spacecorsair.business.world.civil.CivilShip;
import fr.testudo.spacecorsair.engine.ObjectRegistry;
import java.util.List;

/**
 * v42 (owner 2026-11-03 22:38): during a defend-the-zone mission (e.g. Genesis "defend the portal") no allied/neutral
 * ships (civilians, traders, police patrols, faction wings, police waves) arrive in the mission sector, so the player
 * cannot anger them by accident. Ships already in the sector stay. Faction flagships and the mission's own ships are kept.
 */
public final class ModCalm {
    private ModCalm() {}

    /** True while a DefendZone mission is in its defend phase and the player is in its attack sector. */
    public static boolean active() {
        try {
            Object m = ObjectRegistry.INSTANCE.currentMission;
            if (m == null) return false;
            Object eng = ObjectRegistry.INSTANCE.currentMission.missionEngine;
            if (!(eng instanceof DefendZoneMissionEngine)) return false;
            DefendZoneMissionEngine d = (DefendZoneMissionEngine) eng;
            if (d.completed || d.currentPhase != DefendZoneMissionEngine.Phase.DEFEND_ZONE) return false;
            return ObjectRegistry.INSTANCE.game.currentLevel != null && ObjectRegistry.INSTANCE.game.currentLevel.id == d.attackZoneId;
        } catch (Throwable t) {
            return false;
        }
    }

    /** Hook: Level element merge (replaces elements.add(e) for each queued element). Drops arriving allied ships while active. */
    public static void add(List elements, Element e) {
        if (e instanceof CivilShip && ModCapitals.cap(e) == null && active()) {
            e.removed = true;   // trackers (ModSector traffic lists) prune it
            ModDev.ev("v42calm", "blocked " + e.getClass().getSimpleName());
            return;
        }
        elements.add(e);
    }
}
