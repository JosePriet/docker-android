import fr.testudo.spacecorsair.mod.*;
public class V30{public static void main(String[] a) throws Exception{
String[] cls={"fr.testudo.spacecorsair.mod.ModLive","fr.testudo.spacecorsair.mod.ModWreck","fr.testudo.spacecorsair.mod.ModTitanAI","fr.testudo.spacecorsair.mod.ModDerelict","fr.testudo.spacecorsair.mod.ModV30Data","fr.testudo.spacecorsair.mod.ModShield","fr.testudo.spacecorsair.mod.ModLoot","fr.testudo.spacecorsair.mod.ModBoss","fr.testudo.spacecorsair.mod.ModCapitals","fr.testudo.spacecorsair.mod.ModCaps","fr.testudo.spacecorsair.mod.ModArt","fr.testudo.spacecorsair.mod.ModFx","fr.testudo.spacecorsair.mod.ModDev",
"fr.testudo.spacecorsair.business.player.Shield","fr.testudo.spacecorsair.engine.GameThread","fr.testudo.spacecorsair.business.Element","fr.testudo.spacecorsair.business.ennemis.Ennemis","fr.testudo.spacecorsair.business.player.PlayerShip"};
int bad=0;
for(String c:cls){try{Class.forName(c,true,V30.class.getClassLoader());System.out.println("ok   "+c);}catch(VerifyError e){bad++;System.out.println("VERIFY "+c+" "+e);}catch(Throwable t){Throwable r=t;while(r.getCause()!=null)r=r.getCause();if(r instanceof VerifyError)bad++;System.out.println("init "+c+" -> "+r.getClass().getSimpleName()+(r instanceof VerifyError?" !!! "+r:""));}}
// shield curve sanity
java.lang.reflect.Method m=Class.forName("fr.testudo.spacecorsair.mod.ModShield").getDeclaredMethod("curve",float.class);m.setAccessible(true);
for(float f:new float[]{0f,0.25f,0.5f,0.75f,0.99f,1f})System.out.println("curve "+f+" = "+m.invoke(null,f));
System.out.println(bad==0?"V30 VERIFY-OK":"V30 VERIFY-FAIL "+bad);
}}
