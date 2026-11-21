package fr.testudo.spacecorsair.mod;

import fr.testudo.spacecorsair.business.ennemis.EnnemisSpecByLevel;
import fr.testudo.spacecorsair.business.player.XpBuilder;

/** Check the stock/mod boundary used in the L40 harness calculations. */
public class B2Calibration {
    private static void close(float actual, float expected) {
        if (!(Math.abs(actual - expected) <= 0.01f)) {
            throw new AssertionError(actual + " vs " + expected);
        }
    }

    public static void main(String[] args) {
        int body = Math.min(40, EnnemisSpecByLevel.albatrosSpec.length - 1);
        close(body, 20);
        close(XpBuilder.getMitigedDamage(40, body, 100f), 420f);
        close(XpBuilder.getMitigedDamage(body, 40, 100f), 4f);
        float shot = (int) (EnnemisSpecByLevel.albatrosSpec[body].shootDamage * 3)
            * ModV34.curve(40) * ModCapitals.DMG_MULT;
        close(Math.round(shot), 2931);
        close(Math.round(shot * ModPoliceTitan.POLICE_TITAN_MULT), 3517);
        float[] shield = ModV34.shieldStats(40, 40, ModShips.TITAN);
        close(Math.round(shield[0] * ModCapitals.SHIELD_MULT[0]), 44939);
        close(ModV34.counter("spartan", "reaver", ModWeapons.RAIL), 1.56f);
        close(ModV34.pilot(ModV34.statBase(40), ModV34.statBase(body)), 1.59975f);
        for (int refit = 0; refit <= 10; refit++) {
            close(ModV35.stage(refit), (refit + 1) / 2);
        }
        System.out.println("B2 CALIBRATION OK");
    }
}
