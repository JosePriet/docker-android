import fr.testudo.spacecorsair.business.loot.SpaceObjectType;
import fr.testudo.spacecorsair.mod.ModShips;
public class D7{public static void main(String[] a){
for(SpaceObjectType t:SpaceObjectType.ALL_SHIPS){ if(ModShips.hull(t)!=null) continue;
System.out.println(t.name()+" lv"+t.getGearSpec().level+" price "+t.getObjectPrice().getBuyPrice()+" inapp "+t.getObjectPrice().inapp+" "+t.getRarety());}}}
