package fr.testudo.spacecorsair.mod;

import android.app.Activity;
import android.app.AlertDialog;
import android.content.DialogInterface;
import android.widget.Toast;
import fr.testudo.spacecorsair.business.loot.SpaceObjectType;
import java.text.NumberFormat;
import java.util.Locale;

/**
 * v41 (owner 2026-11-03): refits were unreachable. They need the ship docked, and My Ship (FITTING > REFIT) cannot
 * be opened while docked. A "Refit" button on the docked station screen's mod toolbar (ModUi) opens this panel for
 * the flown hull; it uses the same ModV35.summary / ModV35.buy as the fitting screen.
 */
public final class ModRefitPanel {
    private ModRefitPanel() {}

    public static void show(final Activity a) {
        try {
            String[] rf = ModV35.summary();
            SpaceObjectType t = ModV35.currentShip();
            if (rf == null || t == null) {
                Toast.makeText(a, ModLang.tr("No ship to refit."), Toast.LENGTH_SHORT).show();
                return;
            }
            boolean max = rf[2].length() == 0;
            StringBuilder m = new StringBuilder();
            String name = ModShips.label(t);   // mod hulls; stock hulls use the game's own label
            if (name == null) { try { name = t.getLocalizedLabel(); } catch (Throwable e) { name = null; } }
            if (name != null && name.length() > 0) m.append(name).append("\n\n");
            m.append(ModLang.tr("Refit level")).append(": ").append(rf[0]).append(" / ").append(ModV35.REFIT_MAX)
                .append("   ").append(ModLang.tr("Stage")).append(" ").append(rf[1]).append(" / ").append(ModV35.STAGES).append('\n');
            m.append(ModLang.tr("Rare parts")).append(": ").append(rf[4]).append('\n');
            m.append(rf[6]).append(": ").append(rf[7]).append('\n');
            if (!max) {
                String need = NumberFormat.getNumberInstance(Locale.getDefault()).format(Long.parseLong(rf[2])) + " cr";
                if (!"0".equals(rf[3])) need += " + " + rf[3] + " " + ModLang.tr("parts");
                if (Integer.parseInt(rf[0]) + 1 == ModV35.REFIT_MAX) need += " + 1 " + rf[6];
                m.append(ModLang.tr("Next level")).append(": ").append(need).append('\n');
            } else {
                m.append(ModLang.tr("This hull is fully refitted.")).append('\n');
            }
            m.append('\n').append(ModLang.tr("Each level: ")).append(rf[5]);
            AlertDialog.Builder b = new AlertDialog.Builder(a).setTitle(ModLang.tr("REFIT")).setMessage(m.toString())
                .setNegativeButton(ModLang.tr("Close"), null);
            if (!max) {
                b.setPositiveButton(ModLang.tr("REFIT"), new DialogInterface.OnClickListener() {
                    public void onClick(DialogInterface d, int w) {
                        String msg = ModV35.buy();
                        ModDev.ev("refitpanel", String.valueOf(msg));
                        if (msg != null) Toast.makeText(a, msg, Toast.LENGTH_SHORT).show();
                        try {   // v42 (owner): the station's credit counter shows the new balance at once
                            if (a instanceof fr.testudo.spacecorsair.activity.StationActivity) ((fr.testudo.spacecorsair.activity.StationActivity) a).updateTexts();
                        } catch (Throwable t) { /* counter refreshes on the next screen */ }
                        show(a);   // updated level, cost and parts
                    }
                });
            }
            b.show();
            ModDev.ev("refitpanel", "shown level " + rf[0] + (max ? " max" : " next " + rf[2]));
        } catch (Throwable t) {
            android.util.Log.w("ModRefitPanel", "show " + t);
        }
    }
}
