import fr.testudo.spacecorsair.business.loot.SpaceObjectType;
import fr.testudo.spacecorsair.business.loot.stuff.GearSpec;
import fr.testudo.spacecorsair.business.loot.stuff.laser.LaserSpec;
import fr.testudo.spacecorsair.business.loot.stuff.missile.MissileSpec;
import fr.testudo.spacecorsair.business.loot.stuff.shield.ShieldSpec;
public class Dump {
  public static void main(String[] a) {
    for (SpaceObjectType t : SpaceObjectType.values()) {
      GearSpec g = t.getGearSpec(); if (g == null) continue;
      String p = (t.getObjectPrice().inapp ? "IA" : "") + t.getObjectPrice().max;
      if (g instanceof LaserSpec) { LaserSpec l=(LaserSpec)g; System.out.printf("L %-34s lv%2d %-11s dmg%4d rel%5d dps%6.1f prec%3d spd%5.1f alt=%s %s%n", t, l.level, t.getRarety(), l.damage, l.reload, l.damage*1000.0/l.reload, l.precision, l.bulletSpeed, l.alterationSpecs!=null, p); }
      else if (g instanceof ShieldSpec) { ShieldSpec s=(ShieldSpec)g; System.out.printf("S %-34s lv%2d %-11s cap%6.0f regen%6.1f dead%5d %s%n", t, s.level, t.getRarety(), (float)s.capacity, (float)s.reloadBySec, (int)s.deadTime, p); }
      else if (g instanceof MissileSpec) { MissileSpec m=(MissileSpec)g; System.out.printf("M %-34s lv%2d %-11s dmg%6.0f rad%5.0f rel%6d maxInv%3d turn%4.1f push%4.1f %s%n", t, m.level, t.getRarety(), m.damage, m.radiusDamage, m.reloadSpeedInMilli, m.maxCountInventory, m.maxTurnFactor, m.pousseeForce, p); }
    }
  }
}
