import fr.testudo.spacecorsair.business.loot.SpaceObjectType;
import fr.testudo.spacecorsair.mod.ModShips;
public class V16{public static void main(String[] a) throws Exception{
String[] cls={"fr.testudo.spacecorsair.mod.ModQol","fr.testudo.spacecorsair.mod.ModUi","fr.testudo.spacecorsair.mod.Mod","fr.testudo.spacecorsair.mod.ModShips",
"fr.testudo.spacecorsair.business.world.Portal","fr.testudo.spacecorsair.business.Element","fr.testudo.spacecorsair.engine.GameRenderer","fr.testudo.spacecorsair.engine.Camera",
"fr.testudo.spacecorsair.display.hud.Joystick","fr.testudo.spacecorsair.business.world.civil.CivilFactory","fr.testudo.spacecorsair.game.levels.LevelAnimator",
"fr.testudo.spacecorsair.activity.StationActivity$1","fr.testudo.spacecorsair.activity.SettingsActivity","fr.testudo.spacecorsair.business.player.PlayerInfo",
"fr.testudo.spacecorsair.business.player.XpBuilder","fr.testudo.spacecorsair.engine.GameThread","fr.testudo.spacecorsair.business.loot.stuff.playerShip.PlayerShipSpec$Image"};
for(String c:cls){try{Class<?> k=Class.forName(c,true,V16.class.getClassLoader());System.out.println("ok   "+c);}catch(VerifyError e){System.out.println("VERIFY "+c+" "+e);}catch(Throwable t){Throwable r=t;while(r.getCause()!=null)r=r.getCause();System.out.println("init "+c+" -> "+r.getClass().getSimpleName()+(r instanceof VerifyError?" !!! "+r:""));}}
System.out.println("types="+SpaceObjectType.values().length+" ships="+SpaceObjectType.ALL_SHIPS.size());
for(SpaceObjectType t:SpaceObjectType.ALL_SHIPS){ if(ModShips.cls(t)>=5) System.out.println(t+" lv"+t.getGearSpec().level+" "+ModShips.className(t)+" "+ModShips.techName(t)+" img="+((fr.testudo.spacecorsair.business.loot.stuff.playerShip.PlayerShipSpec)t.getGearSpec()).image+" price="+t.getObjectPrice().getBuyPrice());}
}}
