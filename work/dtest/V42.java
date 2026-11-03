import fr.testudo.spacecorsair.mod.*;
import fr.testudo.spacecorsair.game.levels.LevelId;
// v42 value checks (space-corsair/v42/v42-plan.md): police heat, class unlocks, one-class-per-wave escalation, wave makeup, cap, level cap, bonuses.
public class V42{static int bad=0;
static void eq(String n,double got,double want,double tol){boolean ok=Math.abs(got-want)<=tol;if(!ok)bad++;System.out.println((ok?"ok V42 ":"FAIL V42 ")+n+" = "+got+(ok?"":" (want "+want+")"));}
public static void main(String[] a) throws Exception{
final int F=ModShips.FRIGATE,D=ModShips.DESTROYER,C=ModShips.CRUISER,BC=ModShips.BATTLECRUISER,BS=ModShips.BATTLESHIP,CAP=ModShips.CAPITAL,T=ModShips.TITAN;
// class unlocks by heat: 1 F, 5 D, 10 C, 16 BC, 24 BS, 34 CAP, 46 titan
eq("heat 0 unlocks nothing",ModPolice.unlockedClass(0),-1,0);eq("heat 1 frigate",ModPolice.unlockedClass(1),F,0);eq("heat 4 frigate",ModPolice.unlockedClass(4),F,0);
eq("heat 5 destroyer",ModPolice.unlockedClass(5),D,0);eq("heat 10 cruiser",ModPolice.unlockedClass(10),C,0);eq("heat 16 battlecruiser",ModPolice.unlockedClass(16),BC,0);
eq("heat 24 battleship",ModPolice.unlockedClass(24),BS,0);eq("heat 33 battleship",ModPolice.unlockedClass(33),BS,0);eq("heat 34 capital",ModPolice.unlockedClass(34),CAP,0);eq("heat 46 titan",ModPolice.unlockedClass(46),T,0);eq("heat 999 titan",ModPolice.unlockedClass(999),T,0);
// one class per wave: heat 100 still climbs F, D, C, BC, BS, CAP, titan
int last=-1;int[] want={F,D,C,BC,BS,CAP,T};for(int w=0;w<want.length;w++){int top=ModPolice.nextTop(100,last,40,false);eq("heat 100 wave "+(w+1)+" top",top,want[w],0);last=top;}
eq("no heat no wave",ModPolice.nextTop(0,-1,40,false),-1,0);eq("heat 5 first wave frigate",ModPolice.nextTop(5,-1,40,false),F,0);eq("heat 5 second wave destroyer",ModPolice.nextTop(5,F,40,false),D,0);eq("heat 5 third wave stays destroyer",ModPolice.nextTop(5,D,40,false),D,0);
eq("heat fell: top follows heat",ModPolice.nextTop(6,BS,40,false),D,0);
// titan: sector top >= 16, heat >= 46, previous wave capital, none up
eq("titan after capital L40",ModPolice.nextTop(46,CAP,40,false),T,0);eq("titan at sector top 16",ModPolice.nextTop(46,CAP,16,false),T,0);eq("no titan sector top 15",ModPolice.nextTop(60,CAP,15,false),CAP,0);
eq("no titan heat 45",ModPolice.nextTop(45,CAP,40,false),CAP,0);eq("no titan right after battleship",ModPolice.nextTop(60,BS,40,false),CAP,0);eq("one titan at a time",ModPolice.nextTop(60,CAP,40,true),CAP,0);eq("after a titan wave: capital",ModPolice.nextTop(60,T,40,true),CAP,0);
// wave makeup
eq("frigate wave 2 ships",ModPolice.waveClasses(F,2).length,2,0);int[] w=ModPolice.waveClasses(C,1);eq("cruiser wave 1 escort: 3 ships",w.length,3,0);eq("cruiser wave lead",w[0],C,0);eq("cruiser wave second",w[1],C,0);eq("cruiser wave escort destroyer",w[2],D,0);
eq("2 escorts: 4 ships",ModPolice.waveClasses(BS,2).length,4,0);eq("escorts clamp 1-2",ModPolice.waveClasses(BC,5).length,4,0);w=ModPolice.waveClasses(CAP,2);eq("capital wave 3 ships",w.length,3,0);eq("capital lead",w[0],CAP,0);eq("capital escorts battleships",w[1]==BS&&w[2]==BS?1:0,1,0);
eq("titan wave alone",ModPolice.waveClasses(T,2).length,1,0);
// cap 8 active
eq("cap 8",ModPolice.CAP,8,0);eq("room 6 active, 4 wanted",ModPolice.room(6,4),2,0);eq("room full",ModPolice.room(8,3),0,0);eq("room empty",ModPolice.room(0,4),4,0);
// heat per kill, decay, leave/return
eq("kill heat frigate",ModPolice.killHeat(F),1,0);eq("kill heat BS",ModPolice.killHeat(BS),6,0);eq("kill heat capital",ModPolice.killHeat(CAP),8,0);eq("kill heat titan",ModPolice.killHeat(T),0,0);
eq("decay 19 s",ModPolice.decayed(10,19999),10,0);eq("decay 20 s",ModPolice.decayed(10,20000),9,0);eq("decay floor 0",ModPolice.decayed(2,600000),0,0);
eq("leave halves",ModPolice.leaveHeat(47),23,0);eq("kept 10 min",ModPolice.keptOnReturn(0,600000)?1:0,1,0);eq("gone after 10 min",ModPolice.keptOnReturn(0,600001)?1:0,0,0);
// level = sector top, never above
eq("level = sector top",ModPolice.level(28),28,0);eq("level floor 1",ModPolice.level(0),1,0);
// police bonus over the v34 curve
eq("hull bonus",ModPolice.HULL_BONUS,1.25,1e-6);eq("damage bonus",ModPolice.DMG_BONUS,1.25,1e-6);eq("speed bonus",ModPolice.SPEED_BONUS,1.15,1e-6);eq("shield bonus",ModPolice.SHIELD_BONUS,1.25,1e-6);
eq("police BS hull L20 = base x 3.0 x curve x 1.25",ModPolice.hull(1000,BS,20),1000*3.0*Math.pow(1.07,5)*1.25,0.5);eq("police frigate hull L10 = base x 0.6 x 1.25",ModPolice.hull(1000,F,10),750,0.01);
// safe sectors
eq("tutorial safe",ModPolice.safe(LevelId.TUTORIAL)?1:0,1,0);eq("genesis safe",ModPolice.safe(LevelId.GENESIS)?1:0,1,0);eq("arena safe",ModPolice.safe(LevelId.GALACTIC_ARENA)?1:0,1,0);eq("ffa safe",ModPolice.safe(LevelId.FFA_THE_PLAYER_PAY)?1:0,1,0);eq("pirate bay policed",ModPolice.safe(LevelId.PIRATE_BAY)?1:0,0,0);
// weapons
eq("snare -35%",ModPolice.SNARE,0.65,1e-6);eq("snare 3 s",ModPolice.SNARE_MS,3000,0);eq("snare cd 6 s",ModPolice.SNARE_CD_MS,6000,0);eq("drain x1.5",ModPolice.DRAIN,1.5,1e-6);eq("credits per ship",ModPolice.CREDITS_PER_SHIP,1000,0);eq("credits per titan",ModPolice.CREDITS_PER_TITAN,10000,0);eq("kill cut floor",ModPolice.cutCountdown(9000,60000),8000,0);eq("kill cut 30%",ModPolice.cutCountdown(40000,40000),28000,0);eq("frigate base",ModPolice.waveBase(0),30000,0);
System.out.println(bad==0?"V42 VALUES-OK":"V42 VALUES-FAIL "+bad);}}
