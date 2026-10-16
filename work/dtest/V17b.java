public class V17b { public static void main(String[] a) throws Exception {
 String[] ns = {"fr.testudo.spacecorsair.mod.ModFx","fr.testudo.spacecorsair.mod.ModFxData","fr.testudo.spacecorsair.mod.ModCaps","fr.testudo.spacecorsair.mod.ModTitan","fr.testudo.spacecorsair.mod.ModSound","fr.testudo.spacecorsair.mod.ModArt","fr.testudo.spacecorsair.mod.Mod","fr.testudo.spacecorsair.mod.ModShips","fr.testudo.spacecorsair.mod.ModScroll",
  "fr.testudo.spacecorsair.business.projectiles.EnergyBullet","fr.testudo.spacecorsair.business.projectiles.Missile","fr.testudo.spacecorsair.business.player.PlayerShip"};
 for (String n : ns) { try { Class.forName(n, true, V17b.class.getClassLoader()); System.out.println("ok "+n);} catch (VerifyError e) { System.out.println("VERIFY "+n+" "+e); } catch (Throwable t) { System.out.println("init-other "+n+" "+t.getClass().getSimpleName()+": "+t.getMessage()); } }
 System.out.println("titan apply leviathan max tech titan=" + fr.testudo.spacecorsair.mod.ModShips.maxModTech(6) + " frig=" + fr.testudo.spacecorsair.mod.ModShips.maxModTech(0));
 } }
