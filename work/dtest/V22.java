import fr.testudo.spacecorsair.business.loot.SpaceObjectType;
import fr.testudo.spacecorsair.business.loot.stuff.laser.LaserSpec;
public class V22 {
    public static void main(String[] a) throws Exception {
        System.out.println("values " + SpaceObjectType.values().length);
        Class<?> rep = Class.forName("fr.testudo.spacecorsair.mod.ModRep");
        Class<?> w = Class.forName("fr.testudo.spacecorsair.mod.ModWeapons");
        java.lang.reflect.Method fam = w.getDeclaredMethod("family", LaserSpec.class); fam.setAccessible(true);
        java.lang.reflect.Method lab = rep.getDeclaredMethod("label", SpaceObjectType.class); lab.setAccessible(true);
        for (String n : new String[]{"repSecretSpartan", "repSecretReaver", "repSecretKretari", "repSecretVarn", "repSecretIronclad", "repSecretHelion", "repSecretWarden"}) {
            SpaceObjectType t = SpaceObjectType.valueOf(n);
            LaserSpec s = (LaserSpec) t.getGearSpec();
            System.out.println(n + " ord " + t.ordinal() + " " + lab.invoke(null, t) + " fam " + fam.invoke(null, s) + " dmg " + s.damage + " reload " + s.reload);
        }
        Class<?> f = Class.forName("fr.testudo.spacecorsair.mod.ModFaction");
        java.lang.reflect.Method cnt = f.getDeclaredMethod("count"); cnt.setAccessible(true);
        java.lang.reflect.Method id = f.getDeclaredMethod("id", int.class); id.setAccessible(true);
        java.lang.reflect.Method text = f.getDeclaredMethod("text", int.class); text.setAccessible(true);
        int c = (Integer) cnt.invoke(null);
        System.out.println("missions " + c + " first contract " + id.invoke(null, 21) + " last " + id.invoke(null, c - 1));
        int bad = 0;
        for (int i = 0; i < c; i++) {
            if (text.invoke(null, 0x7F7F0000 + 1000 + i) == null || text.invoke(null, 0x7F7F0000 + 2000 + i) == null) bad++;
        }
        System.out.println("bad texts " + bad);
        System.out.println(text.invoke(null, 0x7F7F0000 + 1000 + 27));
    }
}
