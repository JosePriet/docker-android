package fr.testudo.spacecorsair.mod;

import fr.testudo.spacecorsair.business.ennemis.Ennemis;
import fr.testudo.spacecorsair.engine.ObjectRegistry;

/**
 * PROTOTYPE (proposal branch, not approved): kill chain. Each kill within CHAIN_MS of flight time after the previous one
 * adds a link; the kill bounty is multiplied by 1 + STEP per link beyond the first, capped at MAX. "CHAIN xN" shows at the
 * player from the second link. Police and drones never reach here with a chain (ModQol.bounty returns before).
 * Numbers are Claude placeholders. Off when ModEvents.DEFAULT_ON is false and the pref "proto_chain" is not set.
 */
public final class ModChain {
    private ModChain() {}

    static final long CHAIN_MS = 6000;
    static final float STEP = 0.10f, MAX = 1.5f;
    private static long lastAt = -1;
    static int links;

    static boolean enabled() {
        if (ModEvents.DEFAULT_ON) return true;
        android.content.SharedPreferences p = ModQol.prefs();
        return p != null && p.getBoolean("proto_chain", false);
    }

    /** Pure rule (tests): bounty factor for a chain of n links. */
    public static float factor(int n) {
        return Math.min(MAX, 1f + STEP * Math.max(0, n - 1));
    }

    /** Called from ModQol.bounty for a paying kill; returns the bounty factor. */
    static float onKill(Ennemis e) {
        if (!enabled()) return 1f;
        try {
            long now = ModSector.play();
            links = lastAt >= 0 && now - lastAt <= CHAIN_MS ? links + 1 : 1;
            lastAt = now;
            ModDev.ev("chain", "links=" + links + " factor=" + factor(links));
            if (links >= 2) {
                float f = factor(links);
                Mod.floatText(ObjectRegistry.INSTANCE.playerShip, ModLang.tr("CHAIN x") + links + "  +" + Math.round((f - 1f) * 100) + "%", 1.0f, 0.85f, 0.3f);
            }
            return factor(links);
        } catch (Throwable t) {
            return 1f;
        }
    }
}
