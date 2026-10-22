import fr.testudo.spacecorsair.mod.*;
// v35 value checks (TASK.md v35 acceptance): refit maths, AI advantage score and kill-time factor, wreck timers, pursuit, v34 gaps 12/13.
public class V35{static int bad=0;
static void eq(String n,double got,double want,double tol){boolean ok=Math.abs(got-want)<=tol;if(!ok)bad++;System.out.println((ok?"ok V35 ":"FAIL V35 ")+n+" = "+got+(ok?"":" (want "+want+")"));}
public static void main(String[] a) throws Exception{
// refits
eq("refit L1 cost 8% of hull",ModV35.cost(1,100000),8000,0);eq("refit L10 cost 80% of hull",ModV35.cost(10,100000),80000,0);
long tot=0;for(int n=1;n<=10;n++)tot+=ModV35.cost(n,100000);eq("refit L1-10 total 4.4x hull",tot,440000,0);
eq("parts L5",ModV35.partsFor(5),0,0);eq("parts L6",ModV35.partsFor(6),1,0);eq("parts L10",ModV35.partsFor(10),5,0);
int pt=0;for(int n=1;n<=10;n++)pt+=ModV35.partsFor(n);eq("parts total",pt,15,0);
eq("stage L0",ModV35.stage(0),0,0);eq("stage L1",ModV35.stage(1),1,0);eq("stage L2",ModV35.stage(2),1,0);eq("stage L3",ModV35.stage(3),2,0);eq("stage L9",ModV35.stage(9),5,0);eq("stage L10",ModV35.stage(10),5,0);
eq("pick L10 +30%",ModV35.pickMult(10),1.3,1e-4);eq("trait L10 +20%",ModV35.traitMult(10),1.2,1e-4);eq("pick clamp L12",ModV35.pickMult(12),1.3,1e-4);
int[] pk=ModV35.picks(new float[]{1.3f,1.1f,1.2f,1,1,1,0,1,1,1});eq("picks top strength",pk[0],ModV35.S_DMG,0);eq("picks second strength",pk[1],ModV35.S_SHCAP,0);
pk=ModV35.picks(new float[]{1,1,1,1,1,1,0,0.9f,1.05f,0.8f});eq("one strength: speed first",pk[0],ModV35.S_SPEED,0);eq("filler from hull/speed/agility",pk[1],ModV35.S_HULL,0);
eq("trait spartan shield",ModV35.trait("spartan"),ModV35.S_SHCAP,0);eq("trait helion speed",ModV35.trait("helion"),ModV35.S_SPEED,0);eq("trait neutral hull",ModV35.trait(""),ModV35.S_HULL,0);
// a full refit ~ one class up: the three +30/+30/+20% lines against the hull class steps (v34 class factors)
double full=ModV35.pickMult(10)*ModV35.pickMult(10)*ModV35.traitMult(10);
for(int c=0;c<6;c++){double step=ModV34.classFactor(c+1)/ModV34.classFactor(c);eq("full refit vs class step "+c+"->"+(c+1)+" ("+String.format("%.2f",step)+")",full/step>=0.75&&full/step<=1.5?1:0,1,0);}
// advantage AI
float s0=ModV35.score(20,20,1,1,2,2,0,0.5f,0.5f);eq("matched score",s0,0,1e-4);eq("matched mode",ModV35.mode(s0,1,false),ModV35.HOLD,0);
float up=ModV35.score(25,20,1,1,2,2,0,1,1);eq("enemy +5 levels -> aggressive",ModV35.mode(up,1,false),ModV35.AGGRO,0);
float cw=ModV35.score(20,20,1,1,2,2,-1,0.5f,0.5f);eq("countered enemy keeps range",ModV35.mode(cw,1,false),ModV35.KITE,0);eq("countered enemy breaks off at low hull",ModV35.mode(cw,0.2f,false),ModV35.FLEE,0);
eq("boss always aggressive",ModV35.mode(-1,0.1f,true),ModV35.AGGRO,0);
eq("bigger class adds",ModV35.score(20,20,4,1,2,2,0,0.5f,0.5f)>=ModV35.EDGE?1:0,1,0);eq("low hull lowers",ModV35.score(20,20,1,1,2,2,0,0.1f,1)<=-ModV35.EDGE?1:0,1,0);
eq("kill time countering ~3 s (x2.5 on +30%)",10/(ModV35.ttkFactor(1)*1.3),3.08,0.01);eq("kill time neutral 10 s",10/ModV35.ttkFactor(0),10,1e-4);eq("kill time countered ~25 s (x0.5 on -20%)",10/(ModV35.ttkFactor(-1)*0.8),25,1e-3);
// wreck timers and persistence
eq("husk 2 min",ModWreck.lifeMs(0),120000,0);eq("medium husk 2 min",ModWreck.lifeMs(1),120000,0);eq("cruiser wreck 5 min",ModWreck.lifeMs(2),300000,0);eq("battleship+ whole visit",ModWreck.lifeMs(3),0,0);
eq("frigate (90) husk",ModWreck.sizeClassOf(90*0.62f),0,0);eq("destroyer (200) husk",ModWreck.sizeClassOf(200*0.7f),1,0);eq("cruiser (300) 5 min",ModWreck.lifeMs(ModWreck.sizeClassOf(300*0.62f)),300000,0);eq("battlecruiser (460) 5 min",ModWreck.lifeMs(ModWreck.sizeClassOf(460*0.7f)),300000,0);eq("battleship (600) whole visit",ModWreck.lifeMs(ModWreck.sizeClassOf(600*0.62f)),0,0);
eq("wreck field full when never looted",ModSector.fieldFull(-1,5)?1:0,1,0);eq("wreck field empty 59 min after loot",ModSector.fieldFull(0,59*60000L)?1:0,0,0);eq("wreck field refills at 1 h",ModSector.fieldFull(0,3600000L)?1:0,1,0);
eq("flagship wreck kept visit 3",ModSector.kept(0,29*60000L,3)?1:0,1,0);eq("flagship wreck gone visit 4",ModSector.kept(0,60000L,4)?1:0,0,0);eq("flagship wreck gone 30 min",ModSector.kept(0,30*60000L,1)?1:0,0,0);
// pursuit
eq("pursuit standing",ModSector.PURSUIT_STANDING,-25,0);eq("wave 1 at 10 s",ModSector.waveDue(10000,0),0,0);eq("no wave before",ModSector.waveDue(9999,0),-1,0);eq("wave 2 at 45 s",ModSector.waveDue(45000,1),1,0);
eq("wave 3 at 90 s",ModSector.waveDue(90000,2),2,0);eq("no wave 4",ModSector.waveDue(999999,3),-1,0);
// gear prices (owner 2026-10-22): farming minutes x hourly income at the item's level
eq("income L10 = sim 505,992/h",ModV35.income(10),505992,600);
eq("fine = 8 min of income",ModV35.gearPrice(1,10)/ModV35.income(10)*60,8,0.05);eq("rare = 20 min",ModV35.gearPrice(2,19)/ModV35.income(19)*60,20,0.05);
eq("exceptional = 1 h",ModV35.gearPrice(3,28)/ModV35.income(28)*60,60,0.05);eq("legendary = 2.5 h",ModV35.gearPrice(4,37)/ModV35.income(37),2.5,0.01);
// Kre'tari regen (owner): 0.5%/s base on hulls without repair, cap 1%/s cruiser+ and 0.7%/s smaller
eq("kretari base no refit",ModV35.regen(0,true,1,ModShips.FRIGATE),0.005,1e-6);eq("kretari frigate L10",ModV35.regen(0,true,1.2f,ModShips.FRIGATE),0.006,1e-6);
eq("small cap 0.7%",ModV35.regen(0.008f,false,1.3f,ModShips.DESTROYER),0.008,1e-6);eq("small hull capped 0.7%",ModV35.regen(0.006f,true,1.5f,ModShips.DESTROYER),0.007,1e-6);
eq("sanctum (1%) capped at 1%",ModV35.regen(0.01f,true,1.2f,ModShips.CRUISER),0.01,1e-6);eq("no regen, not kretari",ModV35.regen(0,false,1.3f,ModShips.CRUISER),0,0);
// faction cores (owner): 40% from the stock boss pools, rival flagships give a counter faction's core
eq("boss core below 40%",ModV35.bossCore(1,0.39,0)!=null?1:0,1,0);eq("no boss core at 40%",ModV35.bossCore(1,0.41,0)==null?1:0,1,0);
eq("guardian pool spartan",ModV35.bossCore(1,0,0).equals("spartan")?1:0,1,0);eq("empress pool varn",ModV35.bossCore(2,0,0.99).equals("varn")?1:0,1,0);
int cv=0;for(int k=0;k<3;k++)for(int q=0;q<3;q++){String c=ModV35.bossCore(k,0,q/3.0+0.01);if(c!=null)cv|=1<<java.util.Arrays.asList("spartan","reaver","kretari","varn","ironclad","helion","warden").indexOf(c);}eq("boss pools cover all 7 factions",cv,127,0);
eq("reaver flagship -> 2 rival cores",ModV35.rivalCores("reaver").length,2,0);eq("reaver rivals include spartan",java.util.Arrays.asList(ModV35.rivalCores("reaver")).contains("spartan")?1:0,1,0);
// v34 req 13: missions pay 3 same-level bounties x size (kills > loot > missions)
eq("mission 10k at L10 = 3 bounties",ModV35.missionCredits(10000,10),Math.round(3*ModV34.bounty(10)),1);eq("mission size cap x3",ModV35.missionCredits(80000,10),Math.round(9*ModV34.bounty(10)),1);
eq("mission no credits stays 0",ModV35.missionCredits(0,10),0,0);eq("contract standing +8",ModV35.missionStanding(true,0),8,0);eq("story finale +20",ModV35.missionStanding(false,3),20,0);eq("last final mission +20",ModV35.missionStanding(false,6),20,0);eq("final mission 1 +15",ModV35.missionStanding(false,4),15,0);
System.out.println(bad==0?"V35 VALUES-OK":"V35 VALUES-FAIL "+bad);}}
