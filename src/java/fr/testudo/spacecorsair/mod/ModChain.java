package fr.testudo.spacecorsair.mod;

import fr.testudo.spacecorsair.business.ennemis.Ennemis;
import fr.testudo.spacecorsair.engine.ObjectRegistry;

/**
 * Kill chain (owner OK 2026-11-18, numbers as proposed). Each kill within CHAIN_MS of flight time after the previous one
 * adds a link; the kill bounty is multiplied by 1 + STEP per link beyond the first, capped at MAX. "CHAIN xN" shows at the
 * player from the second link. Police and drones never reach here with a chain (ModQol.bounty returns before).
 */
public final class ModChain {
    private ModChain() {}

    static final long CHAIN_MS = 6000;
    static final float STEP = 0.10f, MAX = 1.5f;
    private static long lastAt = -1;
    static int links;

    static boolean enabled() {
        return true;
    }

    /** Pure rule (tests): bounty factor for a chain of n links. */
    public static float factor(int n) {
        return Math.min(ModTune.f("chain.cap", MAX, 1f, 3f), 1f + ModTune.f("chain.step", STEP, 0f, 1f) * Math.max(0, n - 1));
    }

    /** Called from ModQol.bounty for a paying kill; returns the bounty factor. */
    static float onKill(Ennemis e) {
        if (!enabled()) return 1f;
        try {
            long now = ModSector.play();
            links = lastAt >= 0 && now - lastAt <= (long) (ModTune.f("chain.window_s", CHAIN_MS / 1000f, 1f, 30f) * 1000) ? links + 1 : 1;
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
