package javax.microedition.khronos.opengles;
public interface GL10 extends GL {
    int GL_TEXTURE_2D = 3553, GL_TEXTURE_MIN_FILTER = 10241, GL_TEXTURE_MAG_FILTER = 10240, GL_NEAREST = 9728, GL_LINEAR = 9729,
        GL_TEXTURE_WRAP_S = 10242, GL_TEXTURE_WRAP_T = 10243, GL_CLAMP_TO_EDGE = 33071, GL_TEXTURE_ENV = 8960, GL_TEXTURE_ENV_MODE = 8704, GL_MODULATE = 8448;
    int GL_ONE = 1, GL_SRC_ALPHA = 770, GL_ONE_MINUS_SRC_ALPHA = 771, GL_VERTEX_ARRAY = 32884, GL_TEXTURE_COORD_ARRAY = 32888, GL_FLOAT = 5126,
        GL_TRIANGLE_STRIP = 5;
    int GL_REPLACE = 7681, GL_TEXTURE = 5890, GL_TEXTURE0 = 33984, GL_TEXTURE1 = 33985;   // v33: second texture unit (wreck char)
    void glGenTextures(int n, int[] t, int o);
    void glBindTexture(int target, int tex);
    void glTexParameterf(int target, int p, float v);
    void glTexEnvf(int target, int p, float v);
    void glBlendFunc(int sfactor, int dfactor);
    void glEnable(int cap);
    void glDisable(int cap);
    void glLoadIdentity();
    void glTranslatef(float x, float y, float z);
    void glRotatef(float angle, float x, float y, float z);
    void glScalef(float x, float y, float z);
    void glEnableClientState(int array);
    void glDisableClientState(int array);
    void glColor4f(float r, float g, float b, float a);
    void glVertexPointer(int size, int type, int stride, java.nio.Buffer pointer);
    void glTexCoordPointer(int size, int type, int stride, java.nio.Buffer pointer);
    void glDrawArrays(int mode, int first, int count);
    void glActiveTexture(int texture);
    void glClientActiveTexture(int texture);
}
