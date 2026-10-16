import fr.testudo.spacecorsair.business.loot.SpaceObjectType;
import fr.testudo.spacecorsair.business.economy.Price;
import fr.testudo.spacecorsair.business.mission.MissionReward;
import fr.testudo.spacecorsair.mod.ModShips;
public class V165{public static void main(String[] a) throws Exception{
String[] cls={"fr.testudo.spacecorsair.mod.ModQol","fr.testudo.spacecorsair.business.mission.MissionReward","fr.testudo.spacecorsair.business.economy.Price","fr.testudo.spacecorsair.business.ennemis.Ennemis","fr.testudo.spacecorsair.mod.ModShips","fr.testudo.spacecorsair.mod.ModUi","fr.testudo.spacecorsair.mod.Mod"};
for(String c:cls){try{Class.forName(c,true,V165.class.getClassLoader());System.out.println("ok   "+c);}catch(VerifyError e){System.out.println("VERIFY "+c+" "+e);}catch(Throwable t){Throwable r=t;while(r.getCause()!=null)r=r.getCause();System.out.println("init "+c+" -> "+r.getClass().getSimpleName()+(r instanceof VerifyError?" !!! "+r:""));}}
System.out.println("mission 10000 -> "+MissionReward.withoutObject(100,10000).creditReward);
System.out.println("static 100000 sell -> "+Price.newStatic(100000).getSellPrice());
for(SpaceObjectType t:SpaceObjectType.ALL_SHIPS){ if(ModShips.hull(t)!=null && ModShips.cls(t)>=5) System.out.println(t+" lv"+t.getGearSpec().level+" price="+t.getObjectPrice().getBuyPrice());}
}}
