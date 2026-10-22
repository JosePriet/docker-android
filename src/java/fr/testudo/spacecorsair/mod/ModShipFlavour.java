package fr.testudo.spacecorsair.mod;

/** v34 (J1): one-line hull flavour from GPT section 9 (incoming/gpt-v34-s9-full), replacing the old lore lines. ES in i18n/gpt/v34_es.json. */
final class ModShipFlavour {
    private ModShipFlavour() {}

    private static final String[][] TEXT = {
        {"hullViper", "A stolen berth and a hungry crew are all a Reaver captain needs to begin."},
        {"hullShade", "Frontier distress calls rarely wait long for this shadow on the scanners."},
        {"hullBastion", "Republic convoys shelter behind its stubborn shield line."},
        {"hullHornet", "Republic engineers built a small hull around a very large refusal to yield."},
        {"hullAlbatros", "Captured cargo paid for the guns that will capture the next convoy."},
        {"hullRaptor", "Reaver captains favour a cruiser that closes the argument at gun range."},
        {"hullSanctum", "Belt settlements call it home when their own docks fall silent."},
        {"hullMule", "Frontier outposts measure its worth in supplies delivered through empty space."},
        {"hullTortoise", "Its scarred cargo doors have brought another shift home from the belt."},
        {"hullBulwark", "Beyond the last beacon, a full hold can keep an entire outpost alive."},
        {"hullWarlord", "Every plate was taken from someone who thought the Reavers would turn away."},
        {"hullHarbinger", "The living hull carries the Brood's warning ahead of its nesting tide."},
        {"hullMonolith", "The Republic places its line here and asks the enemy to move it."},
        {"hullTempest", "Mining crews built its batteries to end sieges before the shelters run dry."},
        {"hullLeviathan", "Whole Republic defense lines take their bearing from this moving fortress."},
        {"hullComet", "Helion couriers count routes by the rivals left behind."},
        {"hullKite", "A small escort keeps the frontier's longest promises."},
        {"hullTalon", "A clean approach and a sudden turn are signatures of Helion pursuit crews."},
        {"hullNightjar", "Quiet Helion departures have a habit of becoming urgent enemy reports."},
        {"hullSeraph", "Its patrol crews learn every convoy's slowest ship by name."},
        {"hullAurora", "Helion shield crews keep trade moving when the route turns hostile."},
        {"hullRaven", "Helion pilots call its return journey the quiet half of the contract."},
        {"hullBulldog", "Reaver crews trust a bow that can take the first hit and keep closing."},
        {"hullIronside", "Its gun decks were paid for by settlements that could wait no longer."},
        {"hullFoundry", "The Militia sends a workshop wherever the next settlement needs to stand."},
        {"hullTidewarden", "Its watch begins where the charted lanes stop feeling safe."},
        {"hullCobalt", "The Syndicate prefers an escort whose invoices need little explanation."},
        {"hullMantis", "Republic strike crews wait for the opening their formation was built to make."},
        {"hullHydra", "Syndicate convoys survive because someone has already priced the next failure."},
        {"hullCardinal", "The Syndicate sends this hull when negotiation requires a heavier escort."},
        {"hullVerdant", "Republic patrols rally around a hull built to hold the middle of the line."},
        {"hullSovereign", "Its command rooms turn scattered contracts into a single Syndicate advance."},
        {"hullSunlance", "Syndicate artillery settles disputes from a carefully calculated distance."},
        {"hullGraywall", "Syndicate clerks see a moving balance sheet where others see a freighter."},
        {"hullImperator", "Settlement crews made every armour rib a promise to the people behind it."},
        {"hullWraith", "The Syndicate's quietest threats sometimes arrive in battleship form."},
        {"hullBastille", "Syndicate claims become harder to contest when this fortress takes station."},
        {"hullMoth", "Behind its sealed command core, the Syndicate carries the next fleet to market."},
        {"hullThrone", "Reaver captains gather beneath a throne no creditor can repossess."},
        {"hullDev", "An unfinished answer to questions the shipyards have not yet learned to ask."},
        {"hullSecretSpartan", "The Republic entrusts its hardest convoy watches to a name earned in service."},
        {"hullSecretReaver", "No captured ledger records the full price of this Reaver prize."},
        {"hullSecretKretari", "Ancestral signals stir within a living cradle that remembers every safe passage."},
        {"hullSecretVarn", "The Syndicate's finest guarantees arrive with their own interdiction escort."},
        {"hullSecretIronclad", "The belt's workers built a sentinel worthy of the homes it must defend."},
        {"hullSecretHelion", "Helion reserves its farthest routes for crews who bring the horizon home."},
        {"hullSecretWarden", "When every relay falls silent, the frontier still knows this ship will search."},
    };

    /** Flavour for a hull id, or null when GPT has not written one. */
    static String of(String id) {
        for (String[] r : TEXT) if (r[0].equals(id)) return ModLang.tr(r[1]);
        return null;
    }
}
