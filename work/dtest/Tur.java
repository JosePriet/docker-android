import fr.testudo.spacecorsair.mod.ModShips;
import fr.testudo.spacecorsair.business.loot.stuff.playerShip.PlayerShipSpec;
import java.lang.reflect.*;
public class Tur { public static void main(String[] a) throws Exception {
  Object[] hs = (Object[]) ModShips.class.getField("HULLS").get(null);
  Class<?> H = Class.forName("fr.testudo.spacecorsair.mod.ModShips$Hull");
  Field art=H.getDeclaredField("art"), sp=H.getDeclaredField("spec"), ta=H.getDeclaredField("turretArt"), fa=H.getDeclaredField("faction"), cl=H.getDeclaredField("cls");
  for (Field f: new Field[]{art,sp,ta,fa,cl}) f.setAccessible(true);
  StringBuilder sb=new StringBuilder("[");
  for (Object h: hs){ if(h==null) continue; PlayerShipSpec s=(PlayerShipSpec)sp.get(h);
    sb.append("{\"art\":\"").append(art.get(h)).append("\",\"cls\":").append(cl.get(h)).append(",\"size\":").append(s.drawableSize).append(",\"type\":\"").append(s.laserType).append("\",\"turret\":\"").append(ta.get(h)).append("\",\"faction\":\"").append(fa.get(h)).append("\",\"pos\":[");
    if (s.laserType.useJoystick) for(int i=0;i<s.canonCount;i++){ if(i>0) sb.append(','); sb.append('[').append(s.canonPos[i].x).append(',').append(s.canonPos[i].y).append(']'); }
    sb.append("],\"mis\":[");
    if (s.missileExitPoint!=null) for(int i=0;i<s.missileExitPoint.length;i++){ if(i>0) sb.append(','); sb.append('[').append(s.missileExitPoint[i].x).append(',').append(s.missileExitPoint[i].y).append(']'); }
    sb.append("]},\n"); }
  sb.setLength(sb.length()-2); sb.append("]"); System.out.println(sb);
}}
