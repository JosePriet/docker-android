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
import fr.testudo.spacecorsair.game.levels.LevelId;

/**
 * v34: the stock sector builders and mission engines spawn enemies with levels on the stock 0-16 scale.
 * hooks34 points their EnnemisFactory calls here; each one maps the level to the 0-40 scale (ModV34.lvl).
 * Mod code calls EnnemisFactory directly with levels that are already on the new scale.
 * v57 (owner OK 2026-11-18, leveling P4): sector spawns (builders and their wave animators) are kept inside the band of
 * the sector being built / flown (The Wave spawned L37 in a 16-19 sector). Mission engines go through ModMissionSpawn
 * instead (hooks57_leveling), which caps them at the mission level + 2 and skips the band.
 */
public class ModStockSpawn {
    /** v57: the sector whose band applies; set when LevelBuilder.getLevelByName builds a sector (ModPrologue.level). */
    static volatile LevelId band;

    static void building(String levelName) {
        LevelId id = ModQol.levelByName(levelName);
        band = id == null || id == LevelId.GALACTIC_ARENA || id == LevelId.FFA_THE_PLAYER_PAY || id == LevelId.TUTORIAL ? null : id;
    }

    /** Stock level -> v34 level, kept inside the current sector band. */
    static int L(int stock) {
        int lv = ModV34.lvl(stock);
        LevelId id = band;
        if (id == null || id.levelMax < id.levelMin || ModPrologue.active) return lv;
        return Math.max(id.levelMin, Math.min(id.levelMax, lv));
    }

    /** v57 (leveling P2) hooks57: stock missions carry stock levels; shown on the 0-40 scale like their sectors and targets. */
    public static void mission(Mission m) {
        try { if (m != null) m.level = ModV34.lvl(m.level); } catch (Throwable t) { /* stock number */ }
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
