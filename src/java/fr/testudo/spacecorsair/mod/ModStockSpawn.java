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

/**
 * v34: the stock sector builders and mission engines spawn enemies with levels on the stock 0-16 scale.
 * hooks34 points their EnnemisFactory calls here; each one maps the level to the 0-40 scale (ModV34.lvl).
 * Mod code calls EnnemisFactory directly with levels that are already on the new scale.
 */
public class ModStockSpawn {
    public static Albatros newAlbatros(int l) { return EnnemisFactory.newAlbatros(ModV34.lvl(l)); }
    public static Albatros newAlbatros(int a, int b) { return EnnemisFactory.newAlbatros(ModV34.lvl(a), ModV34.lvl(b)); }
    public static AlienBlatte newAlienBlatte(int a, int b) { return EnnemisFactory.newAlienBlatte(ModV34.lvl(a), ModV34.lvl(b)); }
    public static AlienTourelle newAlienTourelle(int l) { return EnnemisFactory.newAlienTourelle(ModV34.lvl(l)); }
    public static BasicEnnemyShip newBasicEnnemisShip(int l) { return EnnemisFactory.newBasicEnnemisShip(ModV34.lvl(l)); }
    public static BasicEnnemyShip newBasicEnnemisShip(int a, int b) { return EnnemisFactory.newBasicEnnemisShip(ModV34.lvl(a), ModV34.lvl(b)); }
    public static DefensorShip newDefensor(int l) { return EnnemisFactory.newDefensor(ModV34.lvl(l)); }
    public static DefensorShip newDefensor(int a, int b) { return EnnemisFactory.newDefensor(ModV34.lvl(a), ModV34.lvl(b)); }
    public static Ennemis newEnnemis(EnnemisType t, int a, int b) { return EnnemisFactory.newEnnemis(t, ModV34.lvl(a), ModV34.lvl(b)); }
    public static FixedTourelle newFixedTourelle(int l) { return EnnemisFactory.newFixedTourelle(ModV34.lvl(l)); }
    public static FixedTourelle newFixedTourelle(int a, int b) { return EnnemisFactory.newFixedTourelle(ModV34.lvl(a), ModV34.lvl(b)); }
    public static FrelonShip newFrelon(int l) { return EnnemisFactory.newFrelon(ModV34.lvl(l)); }
    public static FrelonShip newFrelon(int a, int b) { return EnnemisFactory.newFrelon(ModV34.lvl(a), ModV34.lvl(b)); }
    public static RocketTourelle newRocketTourelle(int a, int b) { return EnnemisFactory.newRocketTourelle(ModV34.lvl(a), ModV34.lvl(b)); }
    public static TaupeShip newTaupe(int a, int b) { return EnnemisFactory.newTaupe(ModV34.lvl(a), ModV34.lvl(b)); }
    public static UfoAlienShip newUfo(int a, int b) { return EnnemisFactory.newUfo(ModV34.lvl(a), ModV34.lvl(b)); }
}
