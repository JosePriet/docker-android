package fr.testudo.spacecorsair.mod;

final class BatchChecks {
    private int cases;

    void check(String label, boolean ok) {
        if (!ok) throw new AssertionError(label);
        cases++;
    }

    void near(String label, double actual, double expected) {
        check(label + " expected " + expected + ", got " + actual, Math.abs(actual - expected) < 0.0001);
    }

    void finish() {
        System.out.println("CASES " + cases);
    }
}
