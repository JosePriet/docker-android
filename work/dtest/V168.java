import fr.testudo.spacecorsair.business.loot.SpaceObjectType;
import fr.testudo.spacecorsair.mod.*;
public class V168{public static void main(String[] a) throws Exception{
String[] cls={"fr.testudo.spacecorsair.mod.ModDev","fr.testudo.spacecorsair.mod.ModShips","fr.testudo.spacecorsair.mod.ModUi","fr.testudo.spacecorsair.mod.ModQol","fr.testudo.spacecorsair.mod.Mod","fr.testudo.spacecorsair.business.loot.stuff.playerShip.PlayerShipSpec$Image"};
for(String c:cls){try{Class.forName(c,true,V168.class.getClassLoader());System.out.println("ok   "+c);}catch(VerifyError e){System.out.println("VERIFY "+c+" "+e);}catch(Throwable t){Throwable r=t;while(r.getCause()!=null)r=r.getCause();System.out.println("init "+c+" -> "+r.getClass().getSimpleName()+(r instanceof VerifyError?" !!! "+r:""));}}
System.out.println("types="+SpaceObjectType.values().length+" ships="+SpaceObjectType.ALL_SHIPS.size());
for(String n:new String[]{"devOverclockLaser","devPhaseShield","devSwarmMissile","hullDev"}){SpaceObjectType t=SpaceObjectType.valueOf(n);System.out.println(n+" ord="+t.ordinal()+" gear="+t.getGearSpec().getClass().getSimpleName()+" lvl="+t.getGearSpec().level+" price="+t.getObjectPrice().getBuyPrice()+" isDev="+ModDev.isDev(t));}
System.out.println("hull dev spec image="+((fr.testudo.spacecorsair.business.loot.stuff.playerShip.PlayerShipSpec)SpaceObjectType.hullDev.getGearSpec()).image);
System.out.println("redeem wrong: "+ModDev.redeem("nope"));
}}
