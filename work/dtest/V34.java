import fr.testudo.spacecorsair.mod.*;
// v34 value checks (TASK.md v34 acceptance): XP table, pilot formula, dodge, death fee, counters, weapon rules, levels, slots.
public class V34{static int bad=0;
static Object mk(Class<?> c)throws Exception{java.lang.reflect.Field f=sun.misc.Unsafe.class.getDeclaredField("theUnsafe");f.setAccessible(true);return ((sun.misc.Unsafe)f.get(null)).allocateInstance(c);}
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
float b=ModV34.bounty(15);eq("death fee = 2 bounties",ModV34.deathFee(15),Math.round(2*b),1);eq("death fee at sim income = 2 bounties",ModV34.deathFee(15,ModV35.income(15)),Math.round(2*b),1);eq("death fee capped at 5% of a 20-bounty hour",ModV34.deathFee(15,20*b),Math.round(0.05*20*b),1);eq("death fee 0 with no income",ModV34.deathFee(15,0),0,0);
eq("off-faction -40%",ModV34.weaponRule("spartan",3),0.6,1e-4);eq("own family",ModV34.weaponRule("spartan",0),1.0,1e-4);eq("neutral -15%",ModV34.weaponRule("",4),0.85,1e-4);
eq("counter spartan>reaver rail-weak",ModV34.counter("spartan","reaver",0),1.3*1.2,1e-3);
eq("counter reaver into spartan, resisted",ModV34.counter("reaver","spartan",3),0.8*0.8,1e-3);
eq("counter no rivalry",ModV34.counter("spartan","warden",4),1.0,1e-3);
eq("counter clamp ceiling",ModV34.counter("spartan","reaver",0)<=2.0?1:0,1,0);
for(int lv=0;lv<=40;lv++){if(3*ModV34.deathFee(lv)>0.15*80*ModV34.bounty(lv)+1){eq("death fee cap L"+lv,0,1,0);}}
eq("class frigate",ModV34.classFactor(0),0.6,1e-4);eq("class battleship",ModV34.classFactor(4),3.0,1e-4);eq("class titan",ModV34.classFactor(6),8.0,1e-4);

eq("slot frigate",ModV34.slotOf(0),0,0);eq("slot titan",ModV34.slotOf(6),3,0);
eq("level shield L40 +23%",ModV34.levelShield(40),1.23,1e-4);eq("level shield L17",ModV34.levelShield(17),1.0,1e-4);
for(int r=0;r<20;r++){fr.testudo.spacecorsair.business.ennemis.Ennemis e=new fr.testudo.spacecorsair.business.ennemis.BasicEnnemyShip();
 e.level=25;e.maxLife=1000;e.bulletDamage=10;e.milleSecBetweenShots=1200;e.xp=10;ModV34.scale(e);int t=ModV34.tier(e);float c=ModV34.curve(25);
 eq("enemy L25 hull = base x frigate 0.6 x curve",e.maxLife,ModV34.baseHull(25)*0.6*c,0.5);eq("enemy L25 damage = curve x tier",e.bulletDamage,10*c*ModV34.TIER_F[t],1e-2);eq("enemy L25 reload / tier",e.milleSecBetweenShots,(long)(1200/ModV34.TIER_F[t]),1);
 eq("enemy tier 1-4",(t>=1&&t<=4)?1:0,1,0);eq("normal enemy not REA-eligible",ModV34.difficult(e)?1:0,0,0);
 float l0=e.maxLife,d0=e.bulletDamage;e.elite=true;ModV34.elite(e);int t2=ModV34.tier(e);
 eq("elite hull x2.5 x class step frigate->destroyer",e.maxLife,l0*2.5*ModV34.classFactor(1)/ModV34.classFactor(0),0.5);eq("elite tier +1",t2,Math.min(4,t+1),0);eq("elite damage x1.5 x tier step",e.bulletDamage,d0*1.5*ModV34.TIER_F[t2]/ModV34.TIER_F[t],1e-2);eq("elite stat +150",ModV34.stat(e),ModV34.statBase(25)+150,0);
 eq("elite is REA-eligible",ModV34.difficult(e)?1:0,1,0);
 ModV34.boss(e);eq("boss hull x15 (on the elite class)",e.maxLife,l0*15*ModV34.classFactor(1)/ModV34.classFactor(0),1);eq("boss damage x2 at T4",e.bulletDamage,d0*2*ModV34.TIER_F[4]/ModV34.TIER_F[t],1e-2);eq("boss tier 4",ModV34.tier(e),4,0);eq("boss stat +300",ModV34.stat(e),ModV34.statBase(25)+300,0);}
{fr.testudo.spacecorsair.business.ennemis.Ennemis bb=new fr.testudo.spacecorsair.business.ennemis.BasicEnnemyShip();bb.level=40;bb.maxLife=100;bb.bulletDamage=1;bb.milleSecBetweenShots=1000;bb.xp=1;ModV34.scale(bb);bb.elite=true;ModV34.elite(bb);ModV34.boss(bb);eq("boss stats clamp 1000 at L40",ModV34.stat(bb),1000,0);}

// v37: class factor for stock enemies, REA vs flagships, skills through dodge + pilot, model kill times
{String P="fr.testudo.spacecorsair.business.ennemis.";String[] n={"TaupeShip","BasicEnnemyShip","DefensorShip","AlienRat","UfoAlienShip","FrelonShip","Albatros","AlienBlatte","FixedTourelle","RocketTourelle","AlienTourelle"};
 int[] w={0,0,1,1,2,3,4,5,-1,-1,-1};for(int i=0;i<n.length;i++)eq("class "+n[i],ModV34.stockClass((fr.testudo.spacecorsair.business.Element)mk(Class.forName(P+n[i]))),w[i],0);
 eq("mod fleet hull keeps its own rule",ModV34.stockClass((fr.testudo.spacecorsair.business.Element)mk(ModFleet.Fighter.class)),-1,0);
 eq("base hull L12 = mean of Rat and Ufo rows",ModV34.baseHull(12),(410+1010)/2.0,0.5);
 for(int i=0;i<8;i++){fr.testudo.spacecorsair.business.ennemis.Ennemis e=(fr.testudo.spacecorsair.business.ennemis.Ennemis)mk(Class.forName(P+n[i]));e.level=12;e.maxLife=999;e.bulletDamage=10;e.milleSecBetweenShots=1000;e.xp=1;ModV34.scale(e);
  eq(n[i]+" L12 hull = base x class",e.maxLife,ModV34.baseHull(12)*ModV34.classFactor(w[i]),0.5);eq(n[i]+" L12 damage keeps stock x tier",e.bulletDamage,10*ModV34.TIER_F[ModV34.tier(e)],1e-3);}
 fr.testudo.spacecorsair.business.ennemis.Ennemis t=(fr.testudo.spacecorsair.business.ennemis.Ennemis)mk(Class.forName(P+"FixedTourelle"));t.level=12;t.maxLife=999;t.bulletDamage=1;t.milleSecBetweenShots=1000;t.xp=1;ModV34.scale(t);eq("turret keeps stock hull",t.maxLife,999,0.5);}
{Object g=mk(fr.testudo.spacecorsair.business.world.civil.GuardianCivilShip.class);eq("unclassed guardian not REA-eligible",ModV34.difficult((fr.testudo.spacecorsair.business.Element)g)?1:0,0,0);
 java.lang.reflect.Field f=ModCapitals.class.getDeclaredField("caps");f.setAccessible(true);((java.util.Map)f.get(null)).put(g,mk(Class.forName("fr.testudo.spacecorsair.mod.ModCapitals$Cap")));
 eq("flagship is REA-eligible",ModV34.difficult((fr.testudo.spacecorsair.business.Element)g)?1:0,1,0);}
eq("skill evaded on a low roll",ModV34.skillDamage(100,0,500,true,false,0.0),0,0);eq("skill hits on a high roll, DEF cut",ModV34.skillDamage(100,0,500,true,false,0.99),100*ModV34.pilot(0,500),1e-3);
eq("per-frame skill: dodge as mean cut",ModV34.skillDamage(100,0,500,true,true,0.0),100*(1-ModV34.dodge(500,0))*ModV34.pilot(0,500),1e-3);
eq("skill vs non-dodgeable: pilot only",ModV34.skillDamage(100,700,400,false,false,0.0),100*ModV34.pilot(700,400),1e-3);
{fr.testudo.spacecorsair.business.loot.stuff.laser.LaserSpec[] d=fr.testudo.spacecorsair.business.loot.stuff.laser.LaserSpecBuilder.decentLaserSpecByLevel;
 for(int s=3;s<d.length;s++){float dps=2*d[s].getDps();double fr=ModV34.baseHull(s)*0.6/dps,de=ModV34.baseHull(s)/dps;
  eq("model kill time stock L"+s+" frigate "+String.format("%.1f",fr)+" s, destroyer "+String.format("%.1f",de)+" s (C1 baseline 3-4 s, band 1-5 s)",fr>=1&&de<=5?1:0,1,0);}}
eq("shield regen steady",ModV34.regen(10,2,99999),20,1e-4);eq("shield regen -15% under player fire",ModV34.regen(10,2,1000),17,1e-4);
{float[] s1=ModV34.shieldStats(10,20,3),s2=ModV34.shieldStats(10,20,5);eq("shield capital = 5/2.2 x battlecruiser",s2[0]/s1[0],5/2.2,1e-3);}
System.out.println(bad==0?"V34 VALUES-OK":"V34 VALUES-FAIL "+bad);}}
