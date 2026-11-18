package fr.testudo.spacecorsair.mod;

import fr.testudo.spacecorsair.business.ennemis.Albatros;
import fr.testudo.spacecorsair.business.ennemis.AlienBlatte;
import fr.testudo.spacecorsair.business.ennemis.AlienTourelle;
import fr.testudo.spacecorsair.business.ennemis.BasicEnnemyShip;
import fr.testudo.spacecorsair.business.ennemis.DefensorShip;
import fr.testudo.spacecorsair.business.ennemis.Ennemis;
import fr.testudo.spacecorsair.business.ennemis.EnnemisFactory;
import fr.testudo.spacecorsair.business.ennemis.EnnemisType;
import fr.testudo.spacecorsair.business.ennemis.FixedTourelle;
import fr.testudo.spacecorsair.business.ennemis.FrelonShip;
import fr.testudo.spacecorsair.business.ennemis.RocketTourelle;
import fr.testudo.spacecorsair.business.ennemis.TaupeShip;
import fr.testudo.spacecorsair.business.ennemis.UfoAlienShip;
import fr.testudo.spacecorsair.business.mission.Mission;
import fr.testudo.spacecorsair.business.mission.engine.KillPillardBossMissionEngine;
import fr.testudo.spacecorsair.engine.ObjectRegistry;

/**
 * v57 (owner OK 2026-11-18, leveling P3): stock mission engines spawn through here instead of ModStockSpawn
 * (hooks57_leveling). Levels map to the 0-40 scale like ModStockSpawn, then stay at most CAP_ABOVE levels above the
 * current mission's shown level (Spartan "Bounty Alive" Frelon: stock L12 = L28 in a level-19 mission -> L21).
 * No sector band clamp here: a mission can send the player above the sector. Boss missions (KillPillardBoss) keep their levels.
 */
public class ModMissionSpawn {
    static final int CAP_ABOVE = 2;

    static int L(int stock) {
        int lv = ModV34.lvl(stock);
        try {
            Mission m = ObjectRegistry.INSTANCE.currentMission;
            if (m == null || m.missionEngine instanceof KillPillardBossMissionEngine || m.level <= 0) return lv;
            return Math.min(lv, Math.min(ModV34.CAP, m.level + CAP_ABOVE));
        } catch (Throwable t) {
            return lv;
        }
    }

    public static Albatros newAlbatros(int l) { return EnnemisFactory.newAlbatros(L(l)); }
    public static Albatros newAlbatros(int a, int b) { return EnnemisFactory.newAlbatros(L(a), L(b)); }
    public static AlienBlatte newAlienBlatte(int a, int b) { return EnnemisFactory.newAlienBlatte(L(a), L(b)); }
    public static AlienTourelle newAlienTourelle(int l) { return EnnemisFactory.newAlienTourelle(L(l)); }
    public static BasicEnnemyShip newBasicEnnemisShip(int l) { return EnnemisFactory.newBasicEnnemisShip(L(l)); }
    public static BasicEnnemyShip newBasicEnnemisShip(int a, int b) { return EnnemisFactory.newBasicEnnemisShip(L(a), L(b)); }
    public static DefensorShip newDefensor(int l) { return EnnemisFactory.newDefensor(L(l)); }
    public static DefensorShip newDefensor(int a, int b) { return EnnemisFactory.newDefensor(L(a), L(b)); }
    public static Ennemis newEnnemis(EnnemisType t, int a, int b) { return EnnemisFactory.newEnnemis(t, L(a), L(b)); }
    public static FixedTourelle newFixedTourelle(int l) { return EnnemisFactory.newFixedTourelle(L(l)); }
    public static FixedTourelle newFixedTourelle(int a, int b) { return EnnemisFactory.newFixedTourelle(L(a), L(b)); }
    public static FrelonShip newFrelon(int l) { return EnnemisFactory.newFrelon(L(l)); }
    public static FrelonShip newFrelon(int a, int b) { return EnnemisFactory.newFrelon(L(a), L(b)); }
    public static RocketTourelle newRocketTourelle(int a, int b) { return EnnemisFactory.newRocketTourelle(L(a), L(b)); }
    public static TaupeShip newTaupe(int a, int b) { return EnnemisFactory.newTaupe(L(a), L(b)); }
    public static UfoAlienShip newUfo(int a, int b) { return EnnemisFactory.newUfo(L(a), L(b)); }
}
