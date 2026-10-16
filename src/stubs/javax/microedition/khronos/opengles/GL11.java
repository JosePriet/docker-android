package javax.microedition.khronos.opengles;
public interface GL11 extends GL10 {
    void glTexParameteriv(int target, int p, int[] params, int offset);
}
