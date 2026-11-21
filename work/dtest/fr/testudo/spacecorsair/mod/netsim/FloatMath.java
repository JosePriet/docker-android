package android.util;

/** The Android SDK jar declares these as native. The JVM fixture uses the same operations. */
public final class FloatMath {
    private FloatMath() {}
    public static float sqrt(float v) { return (float)Math.sqrt(v); }
    public static float sin(float v) { return (float)Math.sin(v); }
    public static float cos(float v) { return (float)Math.cos(v); }
    public static float floor(float v) { return (float)Math.floor(v); }
    public static float ceil(float v) { return (float)Math.ceil(v); }
}
