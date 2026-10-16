package fr.testudo.spacecorsair.mod;

import fr.testudo.spacecorsair.business.Element;
import fr.testudo.spacecorsair.business.ennemis.Ennemis;
import fr.testudo.spacecorsair.business.player.PlayerShip;
import fr.testudo.spacecorsair.engine.ObjectRegistry;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.WeakHashMap;

/**
 * v22 situational sounds: a combat sting when enemies engage, "all clear" once the fight is over, a radio blip when an
 * enemy breaks off, the low-hull alarm, shield collapse, and mission success / failure jingles.
 */
public final class ModAlerts {
    private ModAlerts() {}

    private static int scanMs;
    private static boolean combat;
    private static long combatSince, lastSting, clearAt, lastDisengage, lastAlarm;
    private static float lastShield = -1;
    private static Object level;
    private static final Map<Ennemis, Boolean> engaged = new WeakHashMap<Ennemis, Boolean>();
    private static final ArrayList<Ennemis> drop = new ArrayList<Ennemis>();

    static void tick(PlayerShip ps, long j) {
        if (ps == null || ps.removed) return;
        long now = System.currentTimeMillis();
        Object lvl = ObjectRegistry.INSTANCE.game.currentLevel;
        if (lvl != level) {
            level = lvl;
            engaged.clear();
            combat = false;
            clearAt = 0;
        }
        // shield collapse (any time)
        if (ps.shield != null && ps.shield.capacity > 0) {
            float sh = ps.shield.currentValue;
            if (lastShield > 0 && sh <= 0) ModSound.play("shield_down", 0.8f, 1.0f, 2500);
            lastShield = sh;
        }
        // low-hull alarm while fighting
        if (combat && ps.maxLife > 0 && ps.life / ps.maxLife < 0.25f && now - lastAlarm > 1800) {
            lastAlarm = now;
            ModSound.play("hull_alarm", 0.55f, 1.0f, 1500);
        }
        scanMs -= j;
        if (scanMs > 0) return;
        scanMs = 250;
        if (ps.isDocked || ObjectRegistry.INSTANCE.game.mapMode) return;
        int near = 0;
        List<Element> els = ObjectRegistry.INSTANCE.game.currentLevel.elements;
        for (int i = 0; i < els.size(); i++) {
            Element e = els.get(i);
            if (!(e instanceof Ennemis) || e.removed || e.life <= 0) continue;
            Ennemis en = (Ennemis) e;
            if (en.attackTarget == ps && en.position.distance(ps.position) < 2600) {
                near++;
                engaged.put(en, Boolean.TRUE);
            }
        }
        // enemies that were on the player and now broke off (fleeing / disengaging)
        drop.clear();
        for (Map.Entry<Ennemis, Boolean> en : engaged.entrySet()) {
            Ennemis e = en.getKey();
            if (e == null || e.removed || e.life <= 0) { drop.add(e); continue; }
            if (e.attackTarget != ps) {
                drop.add(e);
                if (now - lastDisengage > 4000 && e.position.distance(ps.position) < 4000) {
                    lastDisengage = now;
                    ModSound.play("disengage", 0.6f, 1.0f, 1500);
                    Mod.floatText(e, ModLang.tr("DISENGAGING"), 0.7f, 0.85f, 1.0f);
                }
            }
        }
        for (Ennemis e : drop) engaged.remove(e);
        if (near > 0) {
            clearAt = 0;
            if (!combat) {
                combat = true;
                combatSince = now;
                if (now - lastSting > 25000) {
                    lastSting = now;
                    ModSound.play("combat_start", 0.7f, 1.0f, 5000);
                }
            }
        } else if (combat) {
            if (clearAt == 0) clearAt = now + 8000;
            else if (now >= clearAt) {
                combat = false;
                clearAt = 0;
                if (now - combatSince > 11000) ModSound.play("all_clear", 0.6f, 1.0f, 5000);
            }
        }
    }

    /** ModFaction: mission complete / failed. */
    static void missionResult(boolean ok) {
        ModSound.play(ok ? "mission_ok" : "mission_fail", 0.8f, 1.0f, 1000);
    }
}
