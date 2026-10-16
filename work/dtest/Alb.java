import fr.testudo.spacecorsair.business.ennemis.EnnemisSpecByLevel;
public class Alb { public static void main(String[] a){ for (int i=0;i<EnnemisSpecByLevel.albatrosSpec.length;i+=2){ var s=EnnemisSpecByLevel.albatrosSpec[i]; System.out.println(i+" life="+s.life+" dmg="+s.shootDamage+" reload="+s.shootReload+" xp="+s.xp); } } }
