import java.lang.reflect.*;
import java.util.*;
public class Dump {
  static String v(Object o){ if(o==null) return "null"; if(o instanceof Number||o instanceof Boolean) { String s=String.valueOf(o); return (s.equals("NaN")||s.contains("Infinity"))?"null":s; }
    if(o.getClass().isArray()){ StringBuilder b=new StringBuilder("["); int n=Array.getLength(o); for(int i=0;i<n;i++){ if(i>0)b.append(','); b.append(v(Array.get(o,i))); } return b.append(']').toString(); }
    return "\""+String.valueOf(o).replace("\\","\\\\").replace("\"","\\\"")+"\""; }
  static String obj(Object o){ StringBuilder b=new StringBuilder("{\"_class\":\""+o.getClass().getSimpleName()+"\""); Class<?> c=o.getClass();
    while(c!=null&&c!=Object.class){ for(Field f:c.getDeclaredFields()){ if(Modifier.isStatic(f.getModifiers())) continue; try{ f.setAccessible(true); Object x=f.get(o);
      if(x==null||x instanceof Number||x instanceof Boolean||x instanceof String||x instanceof Enum||(x.getClass().isArray()&&x.getClass().getComponentType().isPrimitive())) b.append(",\"").append(f.getName()).append("\":").append(v(x)); }catch(Throwable t){} } c=c.getSuperclass(); }
    return b.append('}').toString(); }
  public static void main(String[] a) throws Exception {
    StringBuilder out=new StringBuilder("{\"gear\":{");
    Class<?> T=Class.forName("fr.testudo.spacecorsair.business.loot.SpaceObjectType"); boolean first=true;
    for(Object t:(Object[])T.getMethod("values").invoke(null)){ Object g=null; try{ g=T.getMethod("getGearSpec").invoke(t);}catch(Throwable e){}
      if(g==null) continue; out.append(first?"":",").append("\n\"").append(t).append("\":").append(obj(g)); first=false; }
    out.append("},\n\"XpBuilder\":{"); Class<?> X=null; for(String n:new String[]{"fr.testudo.spacecorsair.business.player.XpBuilder"}) try{X=Class.forName(n);break;}catch(Throwable e){}
    first=true; if(X!=null) for(Field f:X.getDeclaredFields()){ if(!Modifier.isStatic(f.getModifiers())) continue; try{ f.setAccessible(true); Object x=f.get(null); if(x!=null&&(x instanceof Number||(x.getClass().isArray()))){ out.append(first?"":",").append("\n\"").append(f.getName()).append("\":").append(v(x)); first=false;} }catch(Throwable e){} }
    out.append("}}\n"); System.out.print(out); } }
