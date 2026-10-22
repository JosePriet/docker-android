import fr.testudo.spacecorsair.mod.*;
// v34 value checks (TASK.md v34 acceptance): XP table, pilot formula, dodge, death fee, counters, weapon rules, levels, slots.
public class V34{static int bad=0;
static void eq(String n,double got,double want,double tol){boolean ok=Math.abs(got-want)<=tol;if(!ok)bad++;System.out.println((ok?"ok V34 ":"FAIL V34 ")+n+" = "+got+(ok?"":" (want "+want+")"));}
public static void main(String[] a) throws Exception{
long[] xp=ModV34.xpCap();eq("xp entries",xp.length,41,0);eq("xp L16 stock",xp[16],37000,0);eq("xp L17 +5%",xp[17],38850,0);
long tot=0;for(int i=0;i<40;i++)tot+=xp[i];eq("xp total to L40 (~1.9M)",tot/1e6,1.9,0.15);
int[] hl=ModV34.shipLife();eq("hull entries",hl.length,41,0);eq("hull L17 stock",hl[17],3700,0);eq("hull L24 +7%",hl[24],10807,1);
eq("pilot ATK1000 DEF0",ModV34.pilot(1000,0),2.0,1e-4);eq("pilot ATK0 DEF1000",ModV34.pilot(0,1000),0.7,1e-4);eq("pilot ATK800 DEF800",ModV34.pilot(800,800),1.2,1e-4);
eq("pilot DEF leads by 200: no base cut",ModV34.pilot(0,200),1.0,1e-4);
eq("dodge cap",ModV34.dodge(1000,0),0.25,1e-4);eq("dodge none when slower",ModV34.dodge(100,500),0,1e-4);
eq("stat L9",ModV34.statBase(9),0,0);eq("stat L10",ModV34.statBase(10),0,0);eq("stat L40",ModV34.statBase(40),800,0);eq("story 7 of 7",ModV34.storyBonus(7),200,0);eq("story 1",ModV34.storyBonus(1),29,0);
eq("level map 4",ModV34.lvl(4),4,0);eq("level map 16",ModV34.lvl(16),40,0);eq("level map 8",ModV34.lvl(8),16,0);
eq("curve L15",ModV34.curve(15),1.0,1e-4);eq("curve L25",ModV34.curve(25),Math.pow(1.07,10),1e-3);
float b=ModV34.bounty(15);eq("death fee = 2 bounties",ModV34.deathFee(15),Math.round(2*b),1);
eq("off-faction -40%",ModV34.weaponRule("spartan",3),0.6,1e-4);eq("own family",ModV34.weaponRule("spartan",0),1.0,1e-4);eq("neutral -15%",ModV34.weaponRule("",4),0.85,1e-4);
eq("counter spartan>reaver rail-weak",ModV34.counter("spartan","reaver",0),1.3*1.2,1e-3);
eq("counter reaver into spartan, resisted",ModV34.counter("reaver","spartan",3),0.8*0.8,1e-3);
eq("counter no rivalry",ModV34.counter("spartan","warden",4),1.0,1e-3);
eq("counter clamp ceiling",ModV34.counter("spartan","reaver",0)<=2.0?1:0,1,0);
for(int lv=0;lv<=40;lv++){if(3*ModV34.deathFee(lv)>0.15*80*ModV34.bounty(lv)+1){eq("death fee cap L"+lv,0,1,0);}}
eq("class frigate",ModV34.classFactor(0),0.6,1e-4);eq("class battleship",ModV34.classFactor(4),3.0,1e-4);eq("class titan",ModV34.classFactor(6),8.0,1e-4);

eq("slot frigate",ModV34.slotOf(0),0,0);eq("slot titan",ModV34.slotOf(6),3,0);
System.out.println(bad==0?"V34 VALUES-OK":"V34 VALUES-FAIL "+bad);}}
