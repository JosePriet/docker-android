package fr.testudo.spacecorsair.mod;

import android.app.AlertDialog;
import android.content.DialogInterface;
import fr.testudo.spacecorsair.activity.Main;
import fr.testudo.spacecorsair.business.loot.SpaceObject;
import fr.testudo.spacecorsair.business.mission.Mission;
import fr.testudo.spacecorsair.business.mission.MissionReward;
import fr.testudo.spacecorsair.engine.ObjectRegistry;

/**
 * Audit A3 (owner 2026-11-17): a boss mission pays and saves at the kill. A mission pop-up with one Accept button
 * follows; the reward is shown only after Accept (it is already credited).
 */
final class ModClaim {
    private ModClaim() {}

    /** Game thread, at the boss kill: pay, mark done, save, then queue the pop-up. */
    static void payNow(Mission m, String missionName, String text) {
        if (m == null) return;
        final StringBuilder rw = new StringBuilder();
        try {
            MissionReward r = m.reward;
            if (r != null) {
                if (r.creditReward > 0) rw.append(ModLang.tr("Credits")).append(": ").append(r.creditReward).append('\n');
                if (r.xpReward > 0) rw.append(ModLang.tr("XP")).append(": ").append(r.xpReward).append('\n');
                if (r.rewardLoot != null) for (SpaceObject o : r.rewardLoot) rw.append("+ ").append(Mod.label(o.getSpaceObjectType())).append('\n');
            }
            m.grantRewardToPlayer();
            ObjectRegistry.INSTANCE.missionRepository.addMissionToDoneList(m.missionId);
            ObjectRegistry.INSTANCE.missionRepository.saveNoCorrentMission();
            if (ObjectRegistry.INSTANCE.currentMission == m) ObjectRegistry.INSTANCE.currentMission = null;
            ObjectRegistry.INSTANCE.storageManager.save();
            ModDev.ev("bossclaim", m.missionId + " paid+saved");
        } catch (Throwable t) {
            ModDev.ev("bossclaim", "fail " + t);
        }
        show(missionName, text, rw.toString().trim());
    }

    private static void show(final String title, final String text, final String reward) {
        try {
            final Main a = ObjectRegistry.INSTANCE.mainActivity;
            a.runOnUiThread(new Runnable() {
                public void run() {
                    try {
                        ObjectRegistry.INSTANCE.game.pause();
                        new AlertDialog.Builder(a).setTitle(title).setMessage(text).setCancelable(false)
                            .setPositiveButton(ModLang.tr("Accept reward"), new DialogInterface.OnClickListener() {
                                public void onClick(DialogInterface d, int w) {
                                    new AlertDialog.Builder(a).setTitle(ModLang.tr("Reward received"))
                                        .setMessage(reward.length() > 0 ? reward : "-").setCancelable(false)
                                        .setPositiveButton("OK", new DialogInterface.OnClickListener() {
                                            public void onClick(DialogInterface d2, int w2) { ObjectRegistry.resume(); }
                                        }).show();
                                }
                            }).show();
                    } catch (Throwable t) {
                        try { ObjectRegistry.resume(); } catch (Throwable t2) { /* ignore */ }
                    }
                }
            });
        } catch (Throwable t) {
            // the reward is paid and saved either way
        }
    }
}
