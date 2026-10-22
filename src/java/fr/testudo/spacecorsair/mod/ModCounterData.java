package fr.testudo.spacecorsair.mod;

/**
 * v34 faction counters (H6). Built from /mnt/project-files/space-corsair/faction-counters-draft.json;
 * the lore reasons are placeholders for ChatGPT. Each faction counters 2 and is countered by 2.
 */
final class ModCounterData {
    private ModCounterData() {}

    /** {attacker, defender}: the attacker counters the defender. */
    static final String[][] WHEEL = {{"spartan", "reaver"}, {"spartan", "kretari"}, {"ironclad", "reaver"}, {"ironclad", "kretari"}, {"reaver", "helion"}, {"reaver", "warden"}, {"kretari", "varn"}, {"kretari", "warden"}, {"warden", "varn"}, {"warden", "helion"}, {"helion", "spartan"}, {"helion", "ironclad"}, {"varn", "spartan"}, {"varn", "ironclad"}};
    /** {faction, family it resists (x0.8 taken), family it is weak to (x1.2 taken)}. */
    static final String[][] WEAPONS = {{"spartan", "3", "5"}, {"reaver", "1", "0"}, {"kretari", "5", "3"}, {"varn", "4", "2"}, {"ironclad", "2", "4"}, {"helion", "0", "1"}, {"warden", "1", "3"}};

    static boolean beats(String a, String d) {
        for (String[] w : WHEEL) if (w[0].equals(a) && w[1].equals(d)) return true;
        return false;
    }

    static float weaponTaken(String def, int fam) {
        String f = String.valueOf(fam);
        for (String[] w : WEAPONS) {
            if (!w[0].equals(def)) continue;
            if (w[1].equals(f)) return 0.8f;
            if (w[2].equals(f)) return 1.2f;
        }
        return 1.0f;
    }
}
