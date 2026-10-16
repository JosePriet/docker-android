import fr.testudo.spacecorsair.mod.ModShips;
import fr.testudo.spacecorsair.business.loot.stuff.playerShip.PlayerShipSpec;
import java.lang.reflect.*;
public class Stats { public static void main(String[] a) throws Exception {
  Field fh = ModShips.class.getField("HULLS"); Object[] hs = (Object[]) fh.get(null);
  Class<?> H = Class.forName("fr.testudo.spacecorsair.mod.ModShips$Hull");
  String[] ff = {"name","cls","tech","size","dmg","reload","shieldCap","missileReload","hullRegen","doomsday","carrier"};
  for (Object h : hs) { if (h==null) continue; StringBuilder sb=new StringBuilder();
    for (String f: ff){ Field x=H.getDeclaredField(f); x.setAccessible(true); sb.append(x.get(h)).append('\t'); }
    Field sf=H.getDeclaredField("spec"); sf.setAccessible(true); PlayerShipSpec s=(PlayerShipSpec)sf.get(h);
    double rate = s.laserType.useJoystick ? s.canonCount*2 : 2; // bullets per reload
    Field dm=H.getDeclaredField("dmg"); dm.setAccessible(true); Field rl=H.getDeclaredField("reload"); rl.setAccessible(true);
    double dps = rate*(Float)dm.get(h)/(Float)rl.get(h);
    sb.append(s.laserType).append('\t').append(s.canonCount).append("\tlife=").append(s.lifeBooster).append("\tmis=").append(s.missileCount).append("\tthrust=").append(s.maxPouseeForce).append("\tturn=").append(s.maxTurnFactor).append(String.format("\tDPS=%.2f\tEHP=%.2f", dps, s.lifeBooster));
    System.out.println(sb);
  } } }
