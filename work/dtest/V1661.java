public class V1661{public static void main(String[] a) throws Exception{
for(String c:new String[]{"fr.testudo.spacecorsair.activity.BuyInapp","fr.testudo.spacecorsair.mod.ModDev"}){try{Class.forName(c,false,V1661.class.getClassLoader()).getDeclaredMethods();System.out.println("ok   "+c);}catch(Throwable t){System.out.println("FAIL "+c+" "+t);}}
System.out.println(fr.testudo.spacecorsair.mod.ModDev.redeem("x"));
}}
