package fr.testudo.spacecorsair.mod;

import java.lang.reflect.Field;
import java.lang.reflect.Method;

/** Runs against the unmodified base and the refactor. Compare raw bits, including signed zero. */
public class B6Refactors {
    private static int cases;

    private static void same(String label, float actual, float expected) {
        if (Float.floatToIntBits(actual) != Float.floatToIntBits(expected)) {
            throw new AssertionError(label + ": " + actual + " expected " + expected);
        }
        cases++;
    }

    public static void main(String[] args) throws Exception {
        int[] levels = {Integer.MIN_VALUE,-1,0,1,5,9,10,11,Integer.MAX_VALUE};
        int[] clipped = {0,0,0,1,5,9,10,10,10};
        for (int i = 0; i < levels.length; i++) {
            same("strength " + levels[i], ModV35.pickMult(levels[i]), 1f + 0.03f * clipped[i]);
            same("trait " + levels[i], ModV35.traitMult(levels[i]), 1f + 0.02f * clipped[i]);
        }
        // These four entry points use the half-pixel centre of a 1024-wide sprite.
        float[] pixels = {-0.5f,0,255.5f,511.5f,512,1023.5f,1535.5f};
        float[] fractions = {-0.5f,-1023f/2048,-0.25f,0f,1f/2048,0.5f,1f};
        for (Class<?> effect : new Class<?>[]{ModLevFx.class,ModLevDoom.class,ModMonolith.class,ModWings.class}) {
            Field size = effect.getDeclaredField("D");
            size.setAccessible(true);
            Method local = effect.getDeclaredMethod("lx",float.class);
            local.setAccessible(true);
            float previous = size.getFloat(null);
            try {
                for (float d : new float[]{0f,1f,95f,812.5f,1024f}) {
                    size.setFloat(null,d);
                    for (int i=0; i<pixels.length; i++) {
                        same(effect.getSimpleName() + "/" + pixels[i] + "/" + d,
                             (Float)local.invoke(null,pixels[i]), fractions[i] * d);
                    }
                }
            } finally {
                size.setFloat(null,previous);
            }
        }
        System.out.println("B6 REFACTORS OK (" + cases + " cases)");
    }
}
