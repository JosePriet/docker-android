import fr.testudo.spacecorsair.business.loot.SpaceObjectType;
import fr.testudo.spacecorsair.business.loot.stuff.laser.LaserSpec;
import fr.testudo.spacecorsair.mod.ModWeapons;
public class W18 { public static void main(String[] a){
  System.out.println("types="+SpaceObjectType.values().length+" lasers="+SpaceObjectType.ALL_LASERS.size());
  for (String b: ModWeapons.BASE) for (String suf: new String[]{"","L5","L10","L15"}) { SpaceObjectType t=SpaceObjectType.valueOf(b+suf); LaserSpec s=(LaserSpec)t.getGearSpec();
    System.out.println(t.ordinal()+" "+t.name()+" "+ModWeapons.label(t)+" lvl="+s.level+" dmg="+s.damage+" rel="+s.reload+" rar="+t.getRarety()+" price="+t.getObjectPrice().getBuyPrice()+" inLasers="+SpaceObjectType.ALL_LASERS.contains(t)); }
  System.out.println(ModWeapons.desc(SpaceObjectType.valueOf("modArcProjectorL10")));
}}
