import fr.testudo.spacecorsair.business.loot.SpaceObjectType;
import fr.testudo.spacecorsair.game.levels.LevelId;
public class V21 {
    public static void main(String[] a) throws Exception {
        Class<?> d = Class.forName("fr.testudo.spacecorsair.mod.ModFactionData");
        java.lang.reflect.Field f = d.getDeclaredField("MISSIONS"); f.setAccessible(true);
        Object[][] ms = (Object[][]) f.get(null);
        java.lang.reflect.Method text = Class.forName("fr.testudo.spacecorsair.mod.ModFaction").getDeclaredMethod("text", int.class); text.setAccessible(true);
        int base = 0x7F7F0000;
        int bad = 0;
        for (int i = 0; i < ms.length; i++) {
            try { SpaceObjectType.valueOf((String) ms[i][16]); } catch (Exception e) { System.out.println("BAD item " + ms[i][16]); bad++; }
            for (int c : new int[]{4, 5}) { try { LevelId.valueOf((String) ms[i][c]); } catch (Exception e) { System.out.println("BAD level " + ms[i][c]); bad++; } }
            if (((String) ms[i][10]).length() > 0) LevelId.valueOf((String) ms[i][10]);
            String t1 = (String) text.invoke(null, base + 1000 + i), t2 = (String) text.invoke(null, base + 2000 + i);
            if (t1 == null || t2 == null) { System.out.println("BAD text " + i); bad++; }
            if (i == 0 || i == 15) System.out.println(t1);
        }
        System.out.println("missions " + ms.length + " bad " + bad);
    }
}
