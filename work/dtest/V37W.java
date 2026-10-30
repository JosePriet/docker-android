import fr.testudo.spacecorsair.mod.*;
// v37 wreck value checks (owner 2026-10-30): blast push 5%, hit motion capped 10 u/s and gone within 2 s, beam stops at a piece.
public class V37W{static int bad=0;
static void eq(String n,double got,double want,double tol){boolean ok=Math.abs(got-want)<=tol;if(!ok)bad++;System.out.println((ok?"ok V37W ":"FAIL V37W ")+n+" = "+got+(ok?"":" (want "+want+")"));}
static float[] h(float x,float y){return new float[]{x,y};}
public static void main(String[] a) throws Exception{
java.lang.reflect.Field f;
f=ModWreck.class.getDeclaredField("BLAST_PUSH");f.setAccessible(true);eq("blast push 5%",f.getFloat(null),0.05,1e-6);
f=ModWreck.class.getDeclaredField("HIT_MAX");f.setAccessible(true);eq("hit cap 10 u/s (0.1 per 10 ms)",f.getFloat(null),0.1,1e-6);
f=ModWreck.class.getDeclaredField("MAX_DRIFT");f.setAccessible(true);eq("break-apart drift cap unchanged 40 u/s",f.getFloat(null),0.4,1e-6);
java.lang.reflect.Method br=ModWreck.class.getDeclaredMethod("brake",float[].class,long.class,long.class);br.setAccessible(true);
float[] v=h(1.3f,0);br.invoke(null,v,0L,0L);eq("missile-size push capped at 0.1",v[0],0.1,1e-6);
v=h(0.06f,0.08f);br.invoke(null,v,0L,0L);eq("cap keeps direction",v[1]/v[0],0.08/0.06,1e-4);
long age=0;v=h(0.1f,0);for(int i=0;i<60;i++){br.invoke(null,v,16L,age);age+=16;}eq("after ~1 s at 60 fps",v[0],0.1*Math.exp(-960/666.667),2e-4);
age=0;v=h(0.1f,0);for(int i=0;i<126;i++){br.invoke(null,v,16L,age);age+=16;}eq("stopped 2 s after the push at 60 fps",v[0],0,0);
age=0;v=h(0.1f,0);for(int i=0;i<62;i++){br.invoke(null,v,33L,age);age+=33;}eq("stopped 2 s after the push at 30 fps",v[0],0,0);
v=h(0.004f,0);br.invoke(null,v,16L,0L);eq("small bullet push kept (not snapped)",v[0]>0.0039?1:0,1,0);
java.lang.reflect.Method dp=ModWreck.class.getDeclaredMethod("damp",float.class,float.class);dp.setAccessible(true);
eq("blast-only change keeps 5%",(Float)dp.invoke(null,1.0f,1.0f),0.05,1e-6);eq("ram/hit change keeps 30%",(Float)dp.invoke(null,1.0f,0f),0.3,1e-6);eq("mixed: 1 blast + 1 ram",(Float)dp.invoke(null,2.0f,1.0f),0.35,1e-6);
java.lang.reflect.Method sh=ModWreck.class.getDeclaredMethod("segHit",float.class,float.class,float.class,float.class,float.class,float.class,float.class);sh.setAccessible(true);
eq("piece on the beam line",(Float)sh.invoke(null,0f,0f,1000f,0f,500f,0f,100f),0.4,1e-4);
eq("piece beside the line",(Float)sh.invoke(null,0f,0f,1000f,0f,500f,150f,100f),-1,0);
eq("piece behind the target",(Float)sh.invoke(null,0f,0f,1000f,0f,1300f,0f,100f),-1,0);
eq("piece behind the shooter",(Float)sh.invoke(null,0f,0f,1000f,0f,-300f,0f,100f),-1,0);
eq("shooter inside a piece",(Float)sh.invoke(null,0f,0f,1000f,0f,30f,0f,100f),0,0);
System.out.println(bad==0?"V37W VALUES-OK":"V37W FAILED "+bad);}}
