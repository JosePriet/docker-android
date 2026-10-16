import fr.testudo.spacecorsair.business.loot.SpaceObjectType;
import fr.testudo.spacecorsair.business.loot.stuff.laser.LaserSpec;
public class Las { public static void main(String[] a){ for (SpaceObjectType t: SpaceObjectType.ALL_LASERS){ LaserSpec s=(LaserSpec)t.getGearSpec();
 System.out.printf("%-28s lvl %2d dmg %5d rel %5d prec %3d spd %6.1f dps %6.1f price %d%n", t.name(), s.level, s.damage, s.reload, s.precision, s.bulletSpeed, s.damage*1000.0/s.reload, t.getObjectPrice().getBuyPrice()); } } }
