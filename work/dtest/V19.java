public class V19 { public static void main(String[] a) throws Exception {
 for (String n : new String[]{"fr.testudo.spacecorsair.mod.ModCapitals","fr.testudo.spacecorsair.mod.ModCapitalData","fr.testudo.spacecorsair.mod.ModWeapons","fr.testudo.spacecorsair.mod.ModLock","fr.testudo.spacecorsair.business.world.civil.GuardianCivilShip","fr.testudo.spacecorsair.business.projectiles.EnergyBullet"}) {
  try { Class.forName(n, true, V19.class.getClassLoader()); System.out.println("ok "+n);} catch (VerifyError e) { System.out.println("VERIFY "+n+" "+e);} catch (Throwable t) { System.out.println("init-other "+n+" "+t.getClass().getSimpleName()); } }
}}
