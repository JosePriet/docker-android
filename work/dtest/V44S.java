import fr.testudo.spacecorsair.mod.*;
// v44 station turret rules (owner 2026-11-04 21:26): shoot only enemies of the station's faction / non-allied ships, and the
// player only while hostile to civilians or police. Factions: 0 spartan 1 reaver 2 kretari 3 varn 4 ironclad 5 helion 6 warden, -1 neutral.
public class V44S{static int bad=0;
static void is(String n,boolean got,boolean want){boolean ok=got==want;if(!ok)bad++;System.out.println((ok?"ok V44S ":"FAIL V44S ")+n+" = "+got);}
public static void main(String[] a) throws Exception{
final int P=ModStationGuns.PLAYER,D=ModStationGuns.DRONE,X=ModStationGuns.PROTECTED,E=ModStationGuns.ENEMY_NPC,W=ModStationGuns.FACTION_WING,C=ModStationGuns.CIVIL;
is("player not wanted: never",ModStationGuns.rule(0,P,"",false,false),false);
is("player wanted: shot",ModStationGuns.rule(0,P,"",true,false),true);
is("player wanted but docked: not shot",ModStationGuns.rule(0,P,"",true,true),false);
is("neutral station, wanted player: shot",ModStationGuns.rule(-1,P,"",true,false),true);
is("drone not wanted",ModStationGuns.rule(0,D,"",false,false),false);
is("drone wanted",ModStationGuns.rule(0,D,"",true,false),true);
is("police / flagship never",ModStationGuns.rule(0,X,"spartan",true,false),false);
is("civilian never",ModStationGuns.rule(1,C,"",true,false),false);
is("spartan vs unaligned pirate",ModStationGuns.rule(0,E,"",false,false),true);
is("spartan vs reaver (enemy)",ModStationGuns.rule(0,E,"reaver",false,false),true);
is("spartan vs varn (neutral = non-allied)",ModStationGuns.rule(0,E,"varn",false,false),true);
is("spartan vs ironclad (ally)",ModStationGuns.rule(0,E,"ironclad",false,false),false);
is("spartan vs own",ModStationGuns.rule(0,E,"spartan",false,false),false);
is("reaver vs reaver",ModStationGuns.rule(1,E,"reaver",false,false),false);
is("kretari vs kretari aliens",ModStationGuns.rule(2,E,"kretari",false,false),false);
is("kretari vs pirate",ModStationGuns.rule(2,E,"",false,false),true);
is("neutral vs reaver",ModStationGuns.rule(-1,E,"reaver",false,false),true);
is("wing: spartan vs reaver wing",ModStationGuns.rule(0,W,"reaver",false,false),true);
is("wing: spartan vs varn wing (neutral)",ModStationGuns.rule(0,W,"varn",false,false),false);
is("wing: spartan vs warden wing (ally)",ModStationGuns.rule(0,W,"warden",false,false),false);
is("wing: neutral station never",ModStationGuns.rule(-1,W,"reaver",false,false),false);
float d1=ModStationGuns.destroyerDps(1),d16=ModStationGuns.destroyerDps(16),d40=ModStationGuns.destroyerDps(40);
System.out.println("info V44S destroyer dps L1="+d1+" L16="+d16+" L40="+d40);
is("dps grows with level",d1>0&&d16>d1&&d40>d16,true);
System.out.println(bad==0?"V44S VALUES-OK":"V44S VALUES-FAIL "+bad);}}
