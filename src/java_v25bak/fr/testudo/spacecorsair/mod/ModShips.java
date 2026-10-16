package fr.testudo.spacecorsair.mod;

import fr.testudo.spacecorsair.business.Element;
import fr.testudo.spacecorsair.business.factory.GamePools;
import fr.testudo.spacecorsair.business.loot.LootRarety;
import fr.testudo.spacecorsair.business.loot.SpaceObjectType;
import fr.testudo.spacecorsair.business.loot.stuff.playerShip.PlayerShipSpec;
import fr.testudo.spacecorsair.business.player.PlayerGazDrawable;
import fr.testudo.spacecorsair.business.player.PlayerInfo;
import fr.testudo.spacecorsair.business.player.PlayerShip;
import fr.testudo.spacecorsair.business.projectiles.LaserBeam;
import fr.testudo.spacecorsair.display.ShockWave;
import fr.testudo.spacecorsair.engine.ObjectRegistry;
import fr.testudo.spacecorsair.engine.Vector2;

/**
 * Hull classes and tech levels.
 * Progression: Frigate -> Destroyer -> Cruiser -> Battlecruiser -> Battleship -> Capital -> Titan, plus an Industrial line.
 * Tech I = cheap generalist, Tech II = specialist (better at one job), Tech III = faction / alien hulls.
 * Hull licence: buying a Tech I hull needs any hull of the previous class; a Tech II hull needs a Tech I of the same class.
 */
public class ModShips {
    public static final int FRIGATE = 0, DESTROYER = 1, CRUISER = 2, BATTLECRUISER = 3, BATTLESHIP = 4, CAPITAL = 5, TITAN = 6, INDUSTRIAL = 7;
    public static final String[] CLASS_NAMES = {"Frigate", "Destroyer", "Cruiser", "Battlecruiser", "Battleship", "Capital", "Titan", "Industrial"};
    private static final int[] CLASS_RANK = {0, 1, 2, 4, 5, 6, 7, 3}; // industrials sort between cruisers and battlecruisers
    private static final String[] TECH = {"", "Tech I", "Tech II", "Tech III"};

    /** One hull definition. */
    public static class Hull {
        final String id, name, role, art, skill, lore;
        final int cls, tech, level, price, size;
        final LootRarety rarity;
        float dmg = 1, reload = 1, shieldCap = 1, shieldRegen = 1, shieldDelay = 1, missileReload = 1, cargo = 1, hullRegen = 0;
        boolean doomsday;
        boolean carrier;
        boolean dev;
        String turretArt;
        String faction = "";
        String secret;          // v23: faction key of a secret ship (sold at Honored standing)
        PlayerShipSpec spec;
        final String hwTurret;  // "hw_turret_<art>", built once (turretArt runs every frame)

        Hull(String id, String name, int cls, int tech, String role, String art, int size, int level, int price, LootRarety rarity, String skill, String lore) {
            this.id = id; this.name = name; this.cls = cls; this.tech = tech; this.role = role; this.art = art;
            this.size = size; this.level = level; this.price = price; this.rarity = rarity; this.skill = skill; this.lore = lore;
            this.hwTurret = "hw_turret_" + art;
        }
    }

    public static final Hull[] HULLS = new Hull[47];
    /** class / tech / role for the original ships (by enum name). */
    private static final String[][] ORIGINAL = {
        {"defaultPlayerShip", "0", "1", "Generalist"},
        {"condorPlayerShip", "0", "2", "Gunship"},
        {"alienRat", "0", "3", "Alien interceptor"},
        {"hullBreaker", "1", "2", "Rammer"},
        {"alienUfo", "1", "3", "Alien beam skirmisher"},
        {"policeShip", "2", "3", "Pursuit cruiser"},
        {"corvette", "3", "1", "Line battlecruiser"},
        {"megatronShip", "4", "3", "SPARTAN battleship"},
        {"alienBlatte", "5", "3", "Alien carrier"},
    };

    static {
        int i = 0;
        Hull h;
        // ---- Frigates
        h = HULLS[i++] = new Hull("hullViper", "Viper", FRIGATE, 1, "Assault frigate", "viper", 80, 1, 10000, LootRarety.RARE,
            "<b>Assault frigate</b>: +15% laser damage.", "A knife-fast frigate for captains who share the spoils and settle betrayal up close.");
        h.dmg = 1.15f;
        h.spec = small(h, 0.62f, 1.014f, 3.2f, 1.15f, 230);
        h = HULLS[i++] = new Hull("hullShade", "Shade", FRIGATE, 2, "Interceptor", "shade", 70, 3, 30000, LootRarety.EXCEPTIONAL,
            "<b>Interceptor</b>: fastest hull in its class, very agile, -10% laser reload time. Thin armour.", "Built for one job: get there first.");
        h.reload = 0.9f;
        h.spec = small(h, 0.82f, 1.016f, 4.2f, 0.85f, 200);
        // ---- Destroyers
        h = HULLS[i++] = new Hull("hullBastion", "Bastion", DESTROYER, 1, "Defender", "bastion", 130, 4, 40000, LootRarety.RARE,
            "<b>Defender</b>: +20% shield capacity, one rotating cannon.", "A shield-first destroyer built to hold one safe lane while Republic crews move civilians clear.");
        h.shieldCap = 1.2f;
        h.spec = turret(h, 0.40f, 1.010f, 1.8f, 1.6f, 400, PlayerShipSpec.LaserType.ROTATIVE, new float[]{0, 0}, 1.8f);
        h = HULLS[i++] = new Hull("hullHornet", "Hornet", DESTROYER, 2, "Shield tank", "hornet", 200, 6, 80000, LootRarety.EXCEPTIONAL,
            "<b>Shield tank</b>: +50% shield regeneration and 30% shorter shield recovery delay. Two rotating cannons.", "Frelon-pattern hull refitted by SPARTAN shield engineers.");
        h.shieldRegen = 1.5f;
        h.shieldDelay = 0.7f;
        h.spec = turret(h, 0.38f, 1.008f, 1.5f, 1.7f, 500, PlayerShipSpec.LaserType.ROTATIVE, new float[]{0, -40, 0, 45}, 1.8f);
        // ---- Cruisers
        float[] alb = {0, -85, 0, 5, 0, 90};
        h = HULLS[i++] = new Hull("hullAlbatros", "Albatros", CRUISER, 1, "Line cruiser", "albatros", 300, 8, 150000, LootRarety.RARE,
            "<b>Line cruiser</b>: three rotating heavy turrets and twin missile tubes. Good at everything, best at nothing.", "A patched Reaver cruiser: never the best ship in the fight, but always the last one still charging.");
        h.spec = turret(h, 0.30f, 1.007f, 0.9f, 2.6f, 900, PlayerShipSpec.LaserType.ROTATIVE_TRIPLE, alb, 1.4f);
        twinMissiles(h.spec, 45, -110);
        h = HULLS[i++] = new Hull("hullRaptor", "Raptor", CRUISER, 2, "Assault cruiser", "raptor", 300, 10, 280000, LootRarety.EXCEPTIONAL,
            "<b>Assault cruiser</b>: +30% laser damage and 10% faster laser reload.", "Albatros hull stripped of everything that does not shoot.");
        h.dmg = 1.3f;
        h.reload = 0.9f;
        h.spec = turret(h, 0.31f, 1.007f, 0.95f, 2.4f, 900, PlayerShipSpec.LaserType.ROTATIVE_TRIPLE, alb, 1.5f);
        twinMissiles(h.spec, 45, -110);
        h = HULLS[i++] = new Hull("hullSanctum", "Sanctum", CRUISER, 2, "Logistics cruiser", "sanctum", 300, 10, 260000, LootRarety.EXCEPTIONAL,
            "<b>Logistics cruiser</b>: repairs 1% of its hull every second and +40% shield regeneration.", "Nanite repair bays fill the space where missile racks used to be.");
        h.hullRegen = 0.01f;
        h.shieldRegen = 1.4f;
        h.spec = turret(h, 0.30f, 1.007f, 0.9f, 2.8f, 900, PlayerShipSpec.LaserType.ROTATIVE_TRIPLE, alb, 1.4f);
        // ---- Industrials
        h = HULLS[i++] = new Hull("hullMule", "Mule", INDUSTRIAL, 1, "Hauler", "mule", 140, 4, 35000, LootRarety.FINE,
            "<b>Hauler</b>: cargo hold x2.", "A long-range hauler that carries rescue gear as readily as ore; the Authority never asks what a stranded crew needs twice.");
        h.cargo = 2.0f;
        h.spec = turret(h, 0.35f, 1.010f, 1.6f, 1.4f, 500, PlayerShipSpec.LaserType.ROTATIVE, new float[]{0, 15}, 1.5f);
        h = HULLS[i++] = new Hull("hullTortoise", "Tortoise", INDUSTRIAL, 2, "Armoured hauler", "tortoise", 260, 7, 110000, LootRarety.RARE,
            "<b>Armoured hauler</b>: cargo hold x1.6 and a hull three times thicker than a frigate's.", "Ironclad crews built this armored hauler so vital cargo can reach home through a shooting war.");
        h.cargo = 1.6f;
        h.spec = turret(h, 0.26f, 1.009f, 0.9f, 3.0f, 1200, PlayerShipSpec.LaserType.ROTATIVE, new float[]{0, 20}, 1.4f);
        h = HULLS[i++] = new Hull("hullBulwark", "Bulwark", INDUSTRIAL, 2, "Deep-space freighter", "bulwark", 300, 9, 200000, LootRarety.EXCEPTIONAL,
            "<b>Freighter</b>: cargo hold x3.5, two rotating cannons.", "The biggest hold a pilot can legally own.");
        h.cargo = 3.5f;
        h.spec = turret(h, 0.25f, 1.009f, 0.8f, 2.6f, 1500, PlayerShipSpec.LaserType.ROTATIVE, new float[]{0, -45, 0, 60}, 1.4f);
        // ---- Battlecruisers
        float[] cor = {0, 90, 0, 25, 0, -40};
        h = HULLS[i++] = new Hull("hullWarlord", "Warlord", BATTLECRUISER, 2, "Brawler", "warlord", 400, 12, 500000, LootRarety.EXCEPTIONAL,
            "<b>Brawler</b>: +15% laser damage and +20% shield capacity.", "A Cosmowarrior with the armour plates welded twice.");
        h.dmg = 1.15f;
        h.shieldCap = 1.2f;
        h.spec = turret(h, 0.20f, 1.007f, 0.45f, 4.5f, 1950, PlayerShipSpec.LaserType.ROTATIVE_TRIPLE, cor, 1.3f);
        twinMissiles(h.spec, 100, 110);
        h = HULLS[i++] = new Hull("hullHarbinger", "Harbinger", BATTLECRUISER, 2, "Missile boat", "harbinger", 420, 12, 520000, LootRarety.EXCEPTIONAL,
            "<b>Missile boat</b>: four missile tubes and 40% faster missile reload.", "Two Frelon launcher pods bolted to a battlecruiser spine.");
        h.missileReload = 0.6f;
        h.spec = turret(h, 0.19f, 1.007f, 0.42f, 4.0f, 2000, PlayerShipSpec.LaserType.ROTATIVE_TRIPLE, cor, 1.3f);
        h.spec.missileCount = 4;
        h.spec.missileExitPoint = new Vector2[]{new Vector2(-150, 60), new Vector2(150, 60), new Vector2(-90, 110), new Vector2(90, 110)};
        // ---- Battleships
        float[] gua = {0, 8, 0, -135, 0, 135};
        h = HULLS[i++] = new Hull("hullMonolith", "Monolith", BATTLESHIP, 1, "Line battleship", "monolith", 600, 15, 1100000, LootRarety.RARE,
            "<b>Line battleship</b>: +30% shield capacity and an enormous hull.", "A Republic line battleship whose layered hull gives escort crews time to regroup behind its spine.");
        h.shieldCap = 1.3f;
        h.spec = turret(h, 0.17f, 1.006f, 0.3f, 6.5f, 4000, PlayerShipSpec.LaserType.ROTATIVE_TRIPLE, gua, 1.2f);
        twinMissiles(h.spec, 90, -210);
        h = HULLS[i++] = new Hull("hullTempest", "Tempest", BATTLESHIP, 2, "Artillery battleship", "tempest", 600, 17, 1900000, LootRarety.EXCEPTIONAL,
            "<b>Artillery</b>: +45% laser damage but 10% slower reload.", "Gold-plated, slow and absolutely devastating at range.");
        h.dmg = 1.45f;
        h.reload = 1.1f;
        h.spec = turret(h, 0.16f, 1.006f, 0.28f, 6.0f, 4200, PlayerShipSpec.LaserType.ROTATIVE_TRIPLE, gua, 1.2f);
        twinMissiles(h.spec, 90, -210);
        // ---- Titan
        h = HULLS[i++] = new Hull("hullLeviathan", "Leviathan", TITAN, 3, "Titan", "leviathan", 1000, 17, 7000000, LootRarety.LEGENDARY,
            "<b>Titan</b>: +25% laser damage, +50% shield capacity, six heavy turrets (2.5x damage per shot), four siege-missile tubes (1.9x damage, 55% wider blast, slower reload).<br>"
            + "<b>Doomsday Lance</b> (DOOMSDAY button): 2.5 s charge, then a 4 s lance straight ahead (2800 range, 60% as wide as the hull) that wipes everything in its path; mission bosses lose ~8% of their hull per lance and titan-class capitals ~2.5% (they take dozens). "
            + "The titan cannot move, turn or fire while it charges and fires. 90 s cooldown.",
            "The Leviathan anchors a Republic defense line; its lance waits until every civilian convoy is clear.");
        h.dmg = 1.25f;
        h.shieldCap = 1.5f;
        h.doomsday = true;
        // turret pads modelled on the hull (Blender render): three pairs along the flanks
        h.spec = turret(h, 0.12f, 1.005f, 0.18f, 14.0f, 20000, PlayerShipSpec.LaserType.ROTATIVE_TRIPLE,
            new float[]{-114, 128, 114, 128, -118, -64, 118, -64, -114, -257, 114, -257}, 1.1f);
        h.spec.missileCount = 4;
        h.spec.missileExitPoint = new Vector2[]{new Vector2(-60, 150), new Vector2(60, 150), new Vector2(-110, -200), new Vector2(110, -200)};

        // ================= Helion Combine (sleek, fast, shield-focused)
        h = HULLS[i++] = hel(new Hull("hullComet", "Comet", FRIGATE, 1, "Racer", "comet", 90, 2, 20000, LootRarety.RARE,
            "<b>Racer</b>: the fastest Tech I hull in the game.", "A Helion racer made to turn a clear route into a record; its light frame rewards speed over a fair duel."));
        h.spec = small(h, 0.76f, 1.015f, 3.6f, 0.9f, 220);
        h = HULLS[i++] = hel(new Hull("hullKite", "Kite", FRIGATE, 1, "Escort", "kite", 90, 1, 12000, LootRarety.FINE,
            "<b>Escort</b>: +15% shield capacity.", "A compact patrol frigate sold on one promise: help will find you before the route closes."));
        h.shieldCap = 1.15f;
        h.spec = small(h, 0.6f, 1.015f, 3.1f, 1.05f, 240);
        h = HULLS[i++] = hel(new Hull("hullTalon", "Talon", FRIGATE, 2, "Interceptor", "talon", 85, 5, 50000, LootRarety.EXCEPTIONAL,
            "<b>Interceptor</b>: +10% laser damage, extreme agility.", "Swept-wing interceptor, banned from three racing circuits."));
        h.dmg = 1.1f;
        h.spec = small(h, 0.85f, 1.016f, 4.5f, 0.9f, 200);
        h = HULLS[i++] = hel(new Hull("hullNightjar", "Nightjar", FRIGATE, 2, "Strike craft", "nightjar", 95, 6, 65000, LootRarety.EXCEPTIONAL,
            "<b>Strike craft</b>: +30% laser damage, -25% hull.", "Black hull, red eyes. Helion denies building it."));
        h.dmg = 1.3f;
        h.spec = small(h, 0.72f, 1.015f, 3.8f, 0.75f, 210);
        h = HULLS[i++] = hel(new Hull("hullSeraph", "Seraph", DESTROYER, 1, "Escort destroyer", "seraph", 140, 5, 52000, LootRarety.RARE,
            "<b>Escort destroyer</b>: +15% shield capacity, one rotating cannon.", "The Authority sends Seraphs ahead of its convoys, where a bright beacon can matter as much as a gun."));
        h.shieldCap = 1.15f;
        h.spec = turret(h, 0.45f, 1.011f, 2.2f, 1.5f, 380, PlayerShipSpec.LaserType.ROTATIVE, new float[]{0, 15}, 1.8f);
        h = HULLS[i++] = hel(new Hull("hullAurora", "Aurora", DESTROYER, 2, "Shield destroyer", "aurora", 150, 7, 95000, LootRarety.EXCEPTIONAL,
            "<b>Shield destroyer</b>: +40% shield capacity and +20% shield regeneration.", "Helion's prestige destroyer: more shield emitter than hull."));
        h.shieldCap = 1.4f;
        h.shieldRegen = 1.2f;
        h.spec = turret(h, 0.43f, 1.011f, 2.0f, 1.5f, 400, PlayerShipSpec.LaserType.ROTATIVE, new float[]{0, 15}, 1.8f);
        h = HULLS[i++] = hel(new Hull("hullRaven", "Raven", DESTROYER, 2, "Bomber", "raven", 150, 8, 120000, LootRarety.EXCEPTIONAL,
            "<b>Bomber</b>: twin missile tubes and 35% faster missile reload.", "Stealth-coated bomber with two internal launch bays."));
        h.missileReload = 0.65f;
        h.spec = small(h, 0.48f, 1.012f, 2.4f, 1.4f, 420);
        twinMissiles(h.spec, 35, -40);
        // ================= Ironclad Militia (heavy armour, cannons, industry)
        h = HULLS[i++] = iron(new Hull("hullBulldog", "Bulldog", DESTROYER, 1, "Brawler", "bulldog", 150, 5, 48000, LootRarety.RARE,
            "<b>Brawler</b>: double hull plating and two rotating cannons.", "A Reaver brawler with room for two cannons and no patience for a captain who breaks crew trust."));
        h.spec = turret(h, 0.38f, 1.010f, 1.7f, 2.0f, 520, PlayerShipSpec.LaserType.ROTATIVE, new float[]{0, -30, 0, 32}, 1.6f);
        h = HULLS[i++] = iron(new Hull("hullIronside", "Ironside", CRUISER, 1, "Gun cruiser", "ironside", 320, 9, 180000, LootRarety.RARE,
            "<b>Gun cruiser</b>: three cannon turrets, +10% laser damage, heavy armour.", "Three patrol hulls became one Ironclad cruiser, reinforced wherever the miners said the first one failed."));
        h.dmg = 1.1f;
        h.spec = turret(h, 0.28f, 1.008f, 0.85f, 3.0f, 1100, PlayerShipSpec.LaserType.ROTATIVE_TRIPLE, new float[]{0, -95, 0, 0, 0, 90}, 1.3f);
        h = HULLS[i++] = iron(new Hull("hullFoundry", "Foundry", INDUSTRIAL, 2, "Industrial foundry", "foundry", 300, 10, 240000, LootRarety.EXCEPTIONAL,
            "<b>Foundry</b>: cargo hold x2.5 and on-board repair works (0.5% hull per second).", "Mobile refinery and repair yard in one ugly hull."));
        h.cargo = 2.5f;
        h.hullRegen = 0.005f;
        h.spec = turret(h, 0.25f, 1.009f, 0.8f, 3.2f, 1500, PlayerShipSpec.LaserType.ROTATIVE, new float[]{0, -60, 0, 70}, 1.4f);
        // ================= Varn Syndicate (cruisers to capitals)
        h = HULLS[i++] = varn(new Hull("hullTidewarden", "Tidewarden", DESTROYER, 1, "Picket", "tidewarden", 130, 4, 38000, LootRarety.RARE,
            "<b>Picket</b>: 8% faster laser reload, one rotating cannon.", "A Frontier picket watches the public lane and holds its mark until a rescue signal answers."));
        h.reload = 0.92f;
        h.spec = turret(h, 0.46f, 1.011f, 2.2f, 1.45f, 360, PlayerShipSpec.LaserType.ROTATIVE, new float[]{0, 5}, 1.9f);
        h = HULLS[i++] = varn(new Hull("hullCobalt", "Cobalt", DESTROYER, 2, "Gunboat", "cobalt", 190, 7, 100000, LootRarety.EXCEPTIONAL,
            "<b>Gunboat</b>: +20% laser damage, two wing turrets.", "Wide-hulled gunboat with a turret on each wing."));
        h.dmg = 1.2f;
        h.spec = turret(h, 0.42f, 1.010f, 1.9f, 1.7f, 450, PlayerShipSpec.LaserType.ROTATIVE, new float[]{-50, 5, 50, 5}, 1.8f);
        h = HULLS[i++] = varn(new Hull("hullMantis", "Mantis", CRUISER, 1, "Strike cruiser", "mantis", 300, 8, 160000, LootRarety.RARE,
            "<b>Strike cruiser</b>: +5% damage, 5% faster reload, three laser turrets.", "A Republic strike cruiser that leaves formation only when a fast response can protect the whole patrol."));
        h.dmg = 1.05f;
        h.reload = 0.95f;
        h.spec = turret(h, 0.32f, 1.007f, 1.0f, 2.5f, 850, PlayerShipSpec.LaserType.ROTATIVE_TRIPLE, new float[]{0, -80, 0, 0, 0, 80}, 1.5f);
        h = HULLS[i++] = varn(new Hull("hullHydra", "Hydra", CRUISER, 2, "Support cruiser", "hydra", 300, 10, 270000, LootRarety.EXCEPTIONAL,
            "<b>Support cruiser</b>: repairs 0.8% hull per second and +30% shield regeneration.", "Field-repair cruiser of the Syndicate's long-range fleets."));
        h.hullRegen = 0.008f;
        h.shieldRegen = 1.3f;
        h.spec = turret(h, 0.30f, 1.007f, 0.95f, 2.7f, 900, PlayerShipSpec.LaserType.ROTATIVE_TRIPLE, new float[]{0, -80, 0, 0, 0, 80}, 1.4f);
        h = HULLS[i++] = varn(new Hull("hullCardinal", "Cardinal", CRUISER, 2, "Heavy assault cruiser", "cardinal", 320, 11, 320000, LootRarety.EXCEPTIONAL,
            "<b>Heavy assault</b>: +35% laser damage.", "Crimson-plated assault cruiser, the Syndicate's enforcer."));
        h.dmg = 1.35f;
        h.spec = turret(h, 0.30f, 1.007f, 0.95f, 2.6f, 950, PlayerShipSpec.LaserType.ROTATIVE_TRIPLE, new float[]{0, -85, 0, 0, 0, 85}, 1.5f);
        h = HULLS[i++] = varn(new Hull("hullVerdant", "Verdant", BATTLECRUISER, 1, "Line battlecruiser", "verdant", 420, 11, 420000, LootRarety.RARE,
            "<b>Line battlecruiser</b>: +15% shield, +5% damage, twin missile tubes.", "Built to bridge escort and battleship duties, Verdant carries a Republic line forward without leaving it exposed."));
        h.shieldCap = 1.15f;
        h.dmg = 1.05f;
        h.spec = turret(h, 0.21f, 1.007f, 0.5f, 4.2f, 1800, PlayerShipSpec.LaserType.ROTATIVE_TRIPLE, new float[]{0, -110, -60, 40, 60, 40}, 1.3f);
        twinMissiles(h.spec, 60, -120);
        h = HULLS[i++] = varn(new Hull("hullSovereign", "Sovereign", BATTLECRUISER, 2, "Command battlecruiser", "sovereign", 440, 13, 600000, LootRarety.EXCEPTIONAL,
            "<b>Command ship</b>: +35% shield capacity and +30% shield regeneration.", "Gold-trimmed flagship of Syndicate fleet commanders."));
        h.shieldCap = 1.35f;
        h.shieldRegen = 1.3f;
        h.spec = turret(h, 0.20f, 1.007f, 0.45f, 4.5f, 2000, PlayerShipSpec.LaserType.ROTATIVE_TRIPLE, new float[]{0, -120, -70, 50, 70, 50}, 1.3f);
        twinMissiles(h.spec, 70, -130);
        h = HULLS[i++] = varn(new Hull("hullSunlance", "Sunlance", BATTLECRUISER, 2, "Artillery battlecruiser", "sunlance", 460, 13, 640000, LootRarety.EXCEPTIONAL,
            "<b>Artillery</b>: +40% laser damage, 10% slower reload.", "A spine-mounted gun with a battlecruiser wrapped around it."));
        h.dmg = 1.4f;
        h.reload = 1.1f;
        h.spec = turret(h, 0.20f, 1.007f, 0.42f, 3.9f, 2000, PlayerShipSpec.LaserType.ROTATIVE_TRIPLE, new float[]{0, -40, -120, 20, 120, 20}, 1.2f);
        h = HULLS[i++] = varn(new Hull("hullGraywall", "Graywall", INDUSTRIAL, 2, "Bulk freighter", "graywall", 340, 12, 400000, LootRarety.EXCEPTIONAL,
            "<b>Bulk freighter</b>: cargo hold x5.", "The largest hold in the Syndicate. Mostly empty space and paperwork."));
        h.cargo = 5.0f;
        h.spec = turret(h, 0.22f, 1.009f, 0.7f, 4.0f, 2200, PlayerShipSpec.LaserType.ROTATIVE, new float[]{-60, 0, 60, 0}, 1.4f);
        h = HULLS[i++] = varn(new Hull("hullImperator", "Imperator", BATTLESHIP, 1, "Line battleship", "imperator", 640, 15, 1200000, LootRarety.RARE,
            "<b>Line battleship</b>: +20% shield capacity and an enormous hull. Twin missile tubes.", "An Ironclad battleship made to hold ground long enough for settlement crews to evacuate behind its armor."));
        h.shieldCap = 1.2f;
        h.spec = turret(h, 0.17f, 1.006f, 0.3f, 7.5f, 4200, PlayerShipSpec.LaserType.ROTATIVE_TRIPLE, new float[]{0, -170, -110, 40, 110, 40}, 1.2f);
        twinMissiles(h.spec, 100, -200);
        h = HULLS[i++] = varn(new Hull("hullWraith", "Wraith", BATTLESHIP, 2, "Strike battleship", "wraith", 600, 17, 2000000, LootRarety.EXCEPTIONAL,
            "<b>Strike battleship</b>: +35% laser damage and 10% faster reload.", "Violet-hulled battleship built to end fights quickly."));
        h.dmg = 1.35f;
        h.reload = 0.9f;
        h.spec = turret(h, 0.18f, 1.006f, 0.33f, 6.2f, 4000, PlayerShipSpec.LaserType.ROTATIVE_TRIPLE, new float[]{0, -150, -100, 60, 100, 60}, 1.25f);
        twinMissiles(h.spec, 90, -190);
        h = HULLS[i++] = varn(new Hull("hullBastille", "Bastille", BATTLESHIP, 2, "Siege fortress", "bastille", 660, 16, 1800000, LootRarety.EXCEPTIONAL,
            "<b>Siege fortress</b>: +60% shield capacity, +40% shield regeneration, the thickest battleship hull.", "When the Syndicate wants to stay somewhere, it parks a Bastille there."));
        h.shieldCap = 1.6f;
        h.shieldRegen = 1.4f;
        h.spec = turret(h, 0.15f, 1.006f, 0.26f, 8.0f, 4600, PlayerShipSpec.LaserType.ROTATIVE_TRIPLE, new float[]{0, -160, -120, 50, 120, 50}, 1.15f);
        twinMissiles(h.spec, 110, -200);
        h = HULLS[i++] = varn(new Hull("hullMoth", "Nebula Moth", CAPITAL, 2, "Carrier", "moth", 800, 17, 3500000, LootRarety.LEGENDARY,
            "<b>Carrier</b>: can mount any Regent Hive Bay and its drones deal +30% damage. Huge hull, +25% shield capacity.", "A Syndicate carrier: wings of hangars around a fragile spine."));
        h.carrier = true;
        h.shieldCap = 1.25f;
        h.spec = turret(h, 0.13f, 1.006f, 0.22f, 9.0f, 9000, PlayerShipSpec.LaserType.ROTATIVE_TRIPLE, new float[]{0, -60, -260, 40, 260, 40}, 1.1f);
        twinMissiles(h.spec, 200, 0);
        // ---- Titan II: Crimson Throne (Reaver flagship; index 38 = hooks6 enum slot)
        h = HULLS[i++] = new Hull("hullThrone", "Crimson Throne", TITAN, 3, "Raider titan", "crimson_throne", 1000, 17, 6000000, LootRarety.LEGENDARY,
            "<b>Raider titan</b>: +45% laser damage, 10% faster reload, six heavy plasma cannons (2.5x damage per shot), four siege-missile tubes (1.9x damage, 55% wider blast, slower reload).<br>"
            + "<b>Furnace Nova</b> (DOOMSDAY button): 2 s charge, then a 3.5 s ring of fire that grows to 1400 around the hull and burns everything inside. "
            + "The titan cannot move, turn or fire while it charges and burns. 75 s cooldown.<br>"
            + "<b>Furnace core</b>: the hull slowly repairs itself in combat (0.4% per second).",
            "The Reavers' throne-ship. A furnace with a hull bolted around it, and a crew that likes it that way.");
        h.faction = "Crimson Reavers";
        h.dmg = 1.45f;
        h.reload = 0.9f;
        h.missileReload = 0.8f;
        h.shieldCap = 0.9f;
        h.hullRegen = 0.004f;
        h.turretArt = "turret_cannon";
        h.spec = turret(h, 0.13f, 1.005f, 0.19f, 12.5f, 18000, PlayerShipSpec.LaserType.ROTATIVE_TRIPLE,
            new float[]{-47, 225, 47, 225, -54, -232, 54, -232, -114, -261, 114, -261}, 1.15f);
        h.spec.missileCount = 4;
        h.spec.missileExitPoint = new Vector2[]{new Vector2(-80, 120), new Vector2(80, 120), new Vector2(-120, -150), new Vector2(120, -150)};
        // ---- DEV Prototype X-0 (index 39 = hooks7 enum slot). Gift code only, never sold or dropped.
        h = HULLS[i++] = new Hull("hullDev", "DEV Prototype X-0", TITAN, 3, "Test prototype", "dev_prototype", 1000, 1, 999999999, LootRarety.LEGENDARY,
            "<b>DEV ONLY</b> (gift code): 3x laser damage, half reload time, 4x shield, 2.5x missile reload speed, 10x cargo.<br>"
            + "<b>Doomsday Lance</b> (DOOMSDAY button, 12 s test cooldown) and <b>carrier bays</b>.<br>"
            + "<b>Phase Pulse</b>: every 6 seconds a green shockwave hits enemies within range.<br>"
            + "<b>Self-repair</b>: 2% hull per second.",
            "A test bed bolted together by the mod's developers. It should not exist, and nobody will sell you one.");
        h.faction = "Developers";
        h.dev = true;
        h.doomsday = true;
        h.carrier = true;
        h.dmg = 3.0f;
        h.reload = 0.5f;
        h.shieldCap = 4.0f;
        h.shieldRegen = 4.0f;
        h.missileReload = 0.4f;
        h.cargo = 10.0f;
        h.hullRegen = 0.02f;
        h.turretArt = "turret_dev";
        // the X-0 art lies sideways (wide hull across the image), so its hardpoints sit along the x axis
        h.spec = turret(h, 0.3f, 1.010f, 0.45f, 14.0f, 18000, PlayerShipSpec.LaserType.ROTATIVE_TRIPLE,
            new float[]{-120, 60, 120, 60, -120, -60, 120, -60, -300, 8, 300, 8}, 1.2f);
        h.spec.missileCount = 4;
        h.spec.missileExitPoint = new Vector2[]{new Vector2(-220, 0), new Vector2(220, 0), new Vector2(-400, 18), new Vector2(400, 18)};
        // ---- v23 secret faction ships (ChatGPT art and lore; sold to pilots Honored by the faction, indexes 40..46 = hooks20 enum slots)
        h = HULLS[i++] = new Hull("hullSecretSpartan", "SRS Resolute", BATTLECRUISER, 3, "Fleet escort", "secret_spartan", 460, 14, 1600000, LootRarety.LEGENDARY,
            "<b>Fleet escort</b> (Honored with the Spartan Republic): +60% shield capacity, +40% shield regeneration, +10% laser damage.", "The Resolute takes the first strike in a mixed patrol and holds position until every Republic vessel can withdraw.");
        h.faction = "Spartan Republic";
        h.secret = "spartan";
        h.shieldCap = 1.6f;
        h.shieldRegen = 1.4f;
        h.dmg = 1.1f;
        h.spec = turret(h, 0.22f, 1.007f, 0.5f, 4.8f, 2000, PlayerShipSpec.LaserType.ROTATIVE_TRIPLE, new float[]{-50, -60, 50, -60, -61, 69, 61, 69, 0, 91}, 1.3f);
        twinMissiles(h.spec, 70, -150);
        h = HULLS[i++] = new Hull("hullSecretReaver", "Pillager's Due", BATTLESHIP, 3, "Close-range raider", "secret_reaver", 640, 16, 3200000, LootRarety.LEGENDARY,
            "<b>Close-range raider</b> (Honored with the Crimson Reavers): +50% laser damage, 10% faster reload, slow hull self-repair.", "Crews earn the Due by surviving a season aboard it; its mismatched armor is a record of every ship that failed to take it.");
        h.faction = "Crimson Reavers";
        h.secret = "reaver";
        h.dmg = 1.5f;
        h.reload = 0.9f;
        h.hullRegen = 0.005f;
        h.spec = turret(h, 0.19f, 1.006f, 0.36f, 6.6f, 4000, PlayerShipSpec.LaserType.ROTATIVE_TRIPLE, new float[]{-68, -85, 68, -84, -68, 3, 68, 4, -68, 105, 68, 106}, 1.3f);
        twinMissiles(h.spec, 90, -200);
        h = HULLS[i++] = new Hull("hullSecretKretari", "Cradle of Echoes", CRUISER, 3, "Brood courier", "secret_kretari", 330, 12, 900000, LootRarety.LEGENDARY,
            "<b>Brood courier</b> (Honored with the Kre\'tari Brood): repairs 1.5% of its hull every second, +30% shield regeneration, can mount any Regent Hive Bay (+30% drone damage).", "The Cradle carries memory keepers between nests, its paired pods pulsing with the shared history of every broodling aboard.");
        h.faction = "Kre'tari Brood";
        h.secret = "kretari";
        h.hullRegen = 0.015f;
        h.shieldRegen = 1.3f;
        h.carrier = true;
        h.spec = turret(h, 0.34f, 1.007f, 1.05f, 2.9f, 950, PlayerShipSpec.LaserType.ROTATIVE_TRIPLE, new float[]{-36, -44, 35, -44, -37, 31, 36, 31}, 1.3f);
        twinMissiles(h.spec, 60, -110);
        h = HULLS[i++] = new Hull("hullSecretVarn", "Indemnity Crown", BATTLECRUISER, 3, "Convoy interdiction", "secret_varn", 460, 14, 1600000, LootRarety.LEGENDARY,
            "<b>Convoy interdiction</b> (Honored with the Varn Syndicate): cargo hold x3, +25% laser damage, +30% shield capacity.", "The ship appears on the ledger as a secure transfer vessel; its protected core ensures the Syndicate's most important cargo arrives intact.");
        h.faction = "Varn Syndicate";
        h.secret = "varn";
        h.cargo = 3.0f;
        h.dmg = 1.25f;
        h.shieldCap = 1.3f;
        h.spec = turret(h, 0.21f, 1.007f, 0.5f, 4.8f, 2000, PlayerShipSpec.LaserType.ROTATIVE_TRIPLE, new float[]{0, -119, -43, -52, 43, -52, 43, 71, -43, 71}, 1.3f);
        twinMissiles(h.spec, 70, -150);
        h = HULLS[i++] = new Hull("hullSecretIronclad", "Foundry Sentinel", BATTLESHIP, 3, "Settlement defender", "secret_ironclad", 640, 16, 3000000, LootRarety.LEGENDARY,
            "<b>Settlement defender</b> (Honored with the Ironclad Militia): repairs 1.5% of its hull every second, +40% shield capacity, +10% laser damage.", "The Sentinel is assembled from workshop-standard plates, so a settlement can mend it even when the nearest shipyard is weeks away.");
        h.faction = "Ironclad Militia";
        h.secret = "ironclad";
        h.hullRegen = 0.015f;
        h.shieldCap = 1.4f;
        h.dmg = 1.1f;
        h.spec = turret(h, 0.18f, 1.006f, 0.33f, 7.0f, 4200, PlayerShipSpec.LaserType.ROTATIVE_TRIPLE, new float[]{-132, -58, 131, -58, -132, 42, 131, 42, -132, 140, 131, 140}, 1.3f);
        twinMissiles(h.spec, 100, -200);
        h = HULLS[i++] = new Hull("hullSecretHelion", "Far Meridian", BATTLECRUISER, 3, "Long-range route runner", "secret_helion", 460, 14, 1600000, LootRarety.LEGENDARY,
            "<b>Long-range route runner</b> (Honored with the Helion Combine): the fastest battlecruiser, +20% laser damage, 10% faster reload.", "The Far Meridian keeps a convoy moving across distant systems, with collectors shaped to work far from a friendly station.");
        h.faction = "Helion Combine";
        h.secret = "helion";
        h.dmg = 1.2f;
        h.reload = 0.9f;
        h.spec = turret(h, 0.29f, 1.007f, 0.62f, 4.2f, 1700, PlayerShipSpec.LaserType.ROTATIVE_TRIPLE, new float[]{-57, -62, 57, -62, 0, 80}, 1.3f);
        twinMissiles(h.spec, 70, -150);
        h = HULLS[i++] = new Hull("hullSecretWarden", "Wayfarer Prime", CRUISER, 3, "Deep-range patrol", "secret_warden", 330, 12, 900000, LootRarety.LEGENDARY,
            "<b>Deep-range patrol</b> (Honored with the Frontier Authority): +30% shield capacity, +25% laser damage, very fast for a cruiser.", "The Wayfarer Prime works beyond reliable comms, leaving a clear route marker wherever it finds a stranded crew.");
        h.faction = "Frontier Authority";
        h.secret = "warden";
        h.shieldCap = 1.3f;
        h.dmg = 1.25f;
        h.spec = turret(h, 0.36f, 1.007f, 1.1f, 2.8f, 900, PlayerShipSpec.LaserType.ROTATIVE_TRIPLE, new float[]{-30, -30, 30, -30, -30, 34, 30, 34}, 1.3f);
        twinMissiles(h.spec, 55, -120);
        applyHardpoints();
    }

    /** v17: hardpoints that sat off the hull sprite are moved onto it (ModHardpoints, generated from the art). */
    private static void applyHardpoints() {
        // v23: factions ChatGPT assigned to the hulls that had none (src/data/factions_assigned.csv); local because this runs from <clinit>
        String[][] assign = {{"shade", "Frontier Authority"}, {"hornet", "Spartan Republic"}, {"raptor", "Crimson Reavers"},
            {"sanctum", "Ironclad Militia"}, {"bulwark", "Frontier Authority"}, {"warlord", "Crimson Reavers"}, {"harbinger", "Kre'tari Brood"}, {"tempest", "Ironclad Militia"}};
        for (String[] fa : assign) {
            for (Hull h : HULLS) if (h != null && h.art.equals(fa[0]) && h.faction.length() == 0) h.faction = fa[1];
        }
        // v25 faction rebalance for the faction ship tree (7 hulls per faction incl. the secret ship; Varn keeps the capitals).
        // Overrides the builder default (varn()/iron()/hel() keep their turret art); lore is untouched.
        String[][] rebalance = {
            {"hullBastion", "Spartan Republic"}, {"hullMantis", "Spartan Republic"}, {"hullVerdant", "Spartan Republic"},
            {"hullMonolith", "Spartan Republic"}, {"hullLeviathan", "Spartan Republic"},
            {"hullViper", "Crimson Reavers"}, {"hullAlbatros", "Crimson Reavers"}, {"hullBulldog", "Crimson Reavers"},
            {"hullTidewarden", "Frontier Authority"}, {"hullSeraph", "Frontier Authority"}, {"hullKite", "Frontier Authority"}, {"hullMule", "Frontier Authority"},
            {"hullIronside", "Ironclad Militia"}, {"hullTortoise", "Ironclad Militia"}, {"hullImperator", "Ironclad Militia"},
            {"hullComet", "Helion Combine"}};
        for (String[] fa : rebalance) {
            for (Hull h : HULLS) if (h != null && h.id.equals(fa[0])) h.faction = fa[1];
        }
        for (int k = 0; k < ModHardpoints.ARTS.length; k++) {
            for (Hull h : HULLS) {
                if (h == null || !h.art.equals(ModHardpoints.ARTS[k]) || h.spec == null) continue;
                float[] t = ModHardpoints.TURRETS[k];
                for (int i = 0; i + 1 < t.length && i / 2 < h.spec.canonCount; i += 2) h.spec.canonPos[i / 2] = new Vector2(t[i], t[i + 1]);
                float[] m = ModHardpoints.MISSILES[k];
                if (m.length >= 2 && h.spec.missileExitPoint != null) {
                    for (int i = 0; i + 1 < m.length && i / 2 < h.spec.missileExitPoint.length; i += 2) h.spec.missileExitPoint[i / 2] = new Vector2(m[i], m[i + 1]);
                }
            }
        }
    }

    private static Hull hel(Hull h) {
        h.faction = "Helion Combine";
        return h;
    }

    private static Hull iron(Hull h) {
        h.faction = "Ironclad Militia";
        h.turretArt = "turret_cannon";
        return h;
    }

    private static Hull varn(Hull h) {
        h.faction = "Varn Syndicate";
        h.turretArt = "turret_laser";
        return h;
    }

    public static boolean isCarrier(PlayerShipSpec spec) {
        Hull h = hullFor(spec);
        return h != null && h.carrier;
    }

    /** Turret sprite name for the current hull, or null for the default. */
    public static String turretArt(PlayerShipSpec spec) {
        Hull h = hullFor(spec);
        if (h == null) return null;
        if (ModArt.turret(h.hwTurret) != null) return h.hwTurret;   // v17 per-hull rendered turret
        if (h.turretArt != null) return h.turretArt;
        return (h.cls == CRUISER || h.cls == BATTLESHIP || h.cls == TITAN) ? "turret_heavy" : null;
    }

    // ------------------------------------------------------------------ spec builders

    private static PlayerShipSpec base(Hull h, float force, float drag, float turn, float life, int mass) {
        PlayerShipSpec s = new PlayerShipSpec();
        s.level = h.level;
        s.image = image(h);
        s.rarety = h.rarity;
        s.drawableSize = h.size;
        s.drawableSizeOfShield = (int) (h.size * 1.3f);
        s.physicSizeWithoutShield = (int) (h.size * 0.62f);
        s.physicSizeWithShield = (int) (h.size * 1.15f);
        s.mass = mass;
        s.maxPouseeForce = force;
        s.deperditionFactor = drag;
        s.maxTurnFactor = turn;
        s.lifeBooster = life;
        s.gazDrawable = PlayerGazDrawable.simpleGaz;
        s.gazBehindImage = true;
        s.gazDecal = (int) (h.size * 0.46f);
        s.drawableSizeOfGaz = (int) (h.size * 0.55f);
        s.lootDistance = Math.max(50, h.size / 2);
        s.tirGroupe = true;
        s.sizeInformational = h.size < 100 ? PlayerShipSpec.Size.SMALL : h.size < 250 ? PlayerShipSpec.Size.MIDDLE : h.size < 500 ? PlayerShipSpec.Size.LARGE : PlayerShipSpec.Size.VERY_LARGE;
        float top = force * 0.16f / ((drag - 1.0f) * 1.1f);
        s.maxSpeedInformational = Math.min(100, (int) (top * 7));
        s.agilityInformational = Math.min(100, (int) (turn * 25));
        s.armorInformational = Math.min(100, (int) (life * 12));
        s.playerNameDecalY = (int) (h.size * 0.6f + 30);
        s.playerLifeBarDecalY = -65;
        s.playerLifeBarWidth = Math.min(300, Math.max(90, h.size / 2));
        s.playerLifeBarHeight = 7;
        return s;
    }

    private static PlayerShipSpec small(Hull h, float force, float drag, float turn, float life, int mass) {
        PlayerShipSpec s = base(h, force, drag, turn, life, mass);
        s.laserType = PlayerShipSpec.LaserType.FIXED;
        s.laserCount = 2;
        return s;
    }

    private static PlayerShipSpec turret(Hull h, float force, float drag, float turn, float life, int mass, PlayerShipSpec.LaserType type, float[] pos, float spin) {
        PlayerShipSpec s = base(h, force, drag, turn, life, mass);
        s.laserType = type;
        s.canonCount = pos.length / 2;
        s.laserCount = s.canonCount;
        for (int k = 0; k < s.canonCount; k++) {
            s.canonPos[k] = new Vector2(pos[k * 2], pos[k * 2 + 1]);
        }
        s.canonSpeed = spin;
        return s;
    }

    private static void twinMissiles(PlayerShipSpec s, float x, float y) {
        s.missileCount = 2;
        s.missileExitPoint = new Vector2[]{new Vector2(-x, y), new Vector2(x, y)};
    }

    private static PlayerShipSpec.Image image(Hull h) {
        try {
            return PlayerShipSpec.Image.valueOf("MOD_" + h.art.toUpperCase());
        } catch (Exception e) {
            return PlayerShipSpec.Image.DEFAULT;
        }
    }

    /** Used by the new enum constants. */
    public static PlayerShipSpec spec(int i) {
        return HULLS[i].spec;
    }

    public static Hull hull(SpaceObjectType t) {
        if (t == null) return null;
        String n = t.name();
        for (Hull h : HULLS) {
            if (h != null && h.id.equals(n)) return h;   // a slot left empty must not NPE every caller
        }
        return null;
    }

    private static volatile Hull lastHull;   // hullFor runs several times per frame with the same spec

    public static Hull hullFor(PlayerShipSpec spec) {
        Hull m = lastHull;
        if (spec != null && m != null && m.spec == spec) return m;
        for (Hull h : HULLS) {
            if (h != null && h.spec == spec) {
                if (spec != null) lastHull = h;
                return h;
            }
        }
        return null;
    }

    /** Highest tech level among the mod hulls of a class. */
    public static int maxModTech(int cls) {
        int m = 0;
        for (Hull h : HULLS) if (h != null && h.cls == cls && !h.dev) m = Math.max(m, h.tech);
        return m;
    }

    private static SpaceObjectType typeOf(PlayerShipSpec spec) {
        for (SpaceObjectType t : SpaceObjectType.ALL_SHIPS) {
            if (t.getGearSpec() == spec) return t;
        }
        return null;
    }

    /** Class / tech of an original (non-mod) ship spec; -1 / 1 when unknown. */
    public static int originalClass(PlayerShipSpec spec) {
        SpaceObjectType t = typeOf(spec);
        return t == null ? -1 : cls(t);
    }

    public static int originalTech(PlayerShipSpec spec) {
        SpaceObjectType t = typeOf(spec);
        return t == null ? 1 : tech(t);
    }

    /** Class index for any ship (original or new), -1 if not a ship. */
    public static int cls(SpaceObjectType t) {
        Hull h = hull(t);
        if (h != null) return h.cls;
        for (String[] o : ORIGINAL) {
            if (o[0].equals(t.name())) return Integer.parseInt(o[1]);
        }
        return -1;
    }

    public static int tech(SpaceObjectType t) {
        Hull h = hull(t);
        if (h != null) return h.tech;
        for (String[] o : ORIGINAL) {
            if (o[0].equals(t.name())) return Integer.parseInt(o[2]);
        }
        return 1;
    }

    static String role(SpaceObjectType t) {
        Hull h = hull(t);
        if (h != null) return h.role;
        for (String[] o : ORIGINAL) {
            if (o[0].equals(t.name())) return o[3];
        }
        return "";
    }

    /** Sort key for the ships screen: class, then tech, then price. */
    public static int rank(SpaceObjectType t) {
        int c = cls(t);
        int r = c < 0 ? 99 : CLASS_RANK[c];
        return r * 10 + tech(t);
    }

    public static String classLine(SpaceObjectType t) {
        int c = cls(t);
        if (c < 0) return null;
        String lic = licenceText(t);
        Hull hh = hull(t);
        String fac = hh != null && hh.faction.length() > 0 ? "<br><font color='#c8c8c8'>" + hh.faction + "</font>" : "";
        return "<font color='#6ad0ff'><b>" + CLASS_NAMES[c] + " - " + TECH[tech(t)] + " - " + role(t) + "</b></font>" + fac
            + (lic != null ? "<br><font color='#ffd93f'>Hull licence: " + lic + "</font>" : "") + "<br><br>";
    }

    public static String label(SpaceObjectType t) {
        Hull h = hull(t);
        return h == null ? null : h.name;
    }

    public static String desc(SpaceObjectType t) {
        Hull h = hull(t);
        if (h == null) return null;
        return h.lore + "<br><br><font color='#d21aff'><b>SPECIAL SKILL</b></font><br>" + h.skill;
    }

    // ------------------------------------------------------------------ hull licences

    private static boolean ownsClass(int cls, int minTech, int exactTech) {
        PlayerInfo pi = ObjectRegistry.INSTANCE.game.playerInfo;
        for (SpaceObjectType t : pi.availShips) {
            if (t == null) continue;
            if (cls(t) != cls) continue;
            int te = tech(t);
            if (exactTech > 0 ? te == exactTech : te >= minTech) return true;
        }
        return false;
    }

    private static String licenceText(SpaceObjectType t) {
        Hull h = hull(t);
        if (h == null) return null;
        if (h.dev) return "gift code only";
        if (h.secret != null) return "Honored with the " + ModCapitals.FACTIONS[ModFaction.faction(h.secret)].name;
        if (h.cls == TITAN || h.cls == CAPITAL) return "own any Battleship";
        if (h.cls == INDUSTRIAL) return h.tech == 1 ? "own any Destroyer" : "own a Tech I Industrial";
        if (h.tech == 2) return "own a Tech I " + CLASS_NAMES[h.cls];
        if (h.cls == FRIGATE) return null;
        return "own any " + CLASS_NAMES[prevClass(h.cls)];
    }

    private static int prevClass(int c) {
        switch (c) {
            case DESTROYER: return FRIGATE;
            case CRUISER: return DESTROYER;
            case BATTLECRUISER: return CRUISER;
            case BATTLESHIP: return BATTLECRUISER;
            case CAPITAL: return BATTLESHIP;
            default: return FRIGATE;
        }
    }

    /** Licence check without side effects (used by the ship tree). */
    public static boolean licenceOk(SpaceObjectType t) {
        try {
            Hull h = hull(t);
            if (h == null) return true;
            if (h.secret != null) return ModRep.rank(h.secret) >= ModRep.HONORED;
            if (h.cls == TITAN || h.cls == CAPITAL) return ownsClass(BATTLESHIP, 1, 0);
            if (h.cls == INDUSTRIAL) return h.tech == 1 ? ownsClass(DESTROYER, 1, 0) : ownsClass(INDUSTRIAL, 0, 1);
            if (h.tech == 2) return ownsClass(h.cls, 0, 1) || h.cls == FRIGATE && ownsClass(FRIGATE, 1, 0);
            if (h.cls == FRIGATE) return true;
            return ownsClass(prevClass(h.cls), 1, 0);
        } catch (Exception e) {
            return true;
        }
    }

    public static String licenceTextOf(SpaceObjectType t) { return licenceText(t); }
    public static String className(SpaceObjectType t) { int c = cls(t); return c < 0 ? "Other" : CLASS_NAMES[c]; }
    public static String techName(SpaceObjectType t) { return TECH[Math.max(0, Math.min(3, tech(t)))]; }

    /** Hook at the start of PlayerInfo.buyShipAndEquip. */
    public static boolean canBuy(SpaceObjectType t) {
        try {
            Hull h = hull(t);
            if (h == null) return true;
            if (h.dev) {
                try {
                    android.widget.Toast.makeText(ObjectRegistry.INSTANCE.game.context, "DEV ONLY: this hull comes from a gift code.", android.widget.Toast.LENGTH_LONG).show();
                } catch (Exception e) {
                    // no UI thread
                }
                return false;
            }
            boolean ok = licenceOk(t);
            if (!ok) {
                try {
                    android.widget.Toast.makeText(ObjectRegistry.INSTANCE.game.context, "Hull licence needed: " + licenceText(t) + ".", android.widget.Toast.LENGTH_LONG).show();
                } catch (Exception e) {
                    // no UI thread
                }
            }
            return ok;
        } catch (Exception e) {
            return true;
        }
    }

    // ------------------------------------------------------------------ skills

    public static float cargoMult() {
        try {
            PlayerShip ps = ObjectRegistry.INSTANCE.playerShip;
            Hull h = ps == null ? null : hullFor(ps.shipSpec);
            return h == null ? 1.0f : h.cargo;
        } catch (Exception e) {
            return 1.0f;
        }
    }

    /** After gear is applied (from Mod.applyShipBonuses). */
    public static void apply(PlayerShip ps) {
        Hull h = hullFor(ps.shipSpec);
        if (h == null) return;
        if (h.dmg != 1.0f || h.reload != 1.0f) {
            ps.bulletDamage *= h.dmg;
            ps.milleSecBetweenShots = (long) (ps.milleSecBetweenShots * h.reload);
            if (ps.playerCannons != null) {
                for (int k = 0; k < ps.playerCannons.length; k++) {
                    ps.playerCannons[k].shootDamage = (int) (ps.playerCannons[k].shootDamage * h.dmg);
                    ps.playerCannons[k].timeBewteenShootInMilli = (int) (ps.playerCannons[k].timeBewteenShootInMilli * h.reload);
                }
            }
        }
        if (ps.shield != null) {
            ps.shield.capacity *= h.shieldCap;
            ps.shield.reloadUnitBySec *= h.shieldRegen;
            ps.shield.reloadTime *= h.shieldDelay;
            if (ps.shield.currentValue > ps.shield.capacity) ps.shield.currentValue = ps.shield.capacity;
        }
        ps.milleSecBetweenMissileShots = (long) (ps.milleSecBetweenMissileShots * h.missileReload);
        ModTitan.apply(ps);
    }

    private static int doomsdayTimer = 30000;
    private static final Vector2 lanceEnd = new Vector2();
    private static int lanceFlash = 0;
    private static LaserBeam lance;

    /** Every frame (from Mod.tick). */
    public static void tick(PlayerShip ps, long j) {
        Hull h = hullFor(ps.shipSpec);
        ModArt.devActive = h != null && h.dev;
        if (lanceFlash > 0) lanceFlash = (int) (lanceFlash - j);
        if (h == null || ps.removed || ObjectRegistry.INSTANCE.game.mapMode) return;
        if (h.hullRegen > 0 && ps.life < ps.maxLife) {
            ps.addLife(ps.maxLife * h.hullRegen * j / 1000.0f);
        }
        if (h.dev) ModDev.tick(ps, j);
        // v17: the doomsday is manual and EVE-style (ModTitan.tick)
    }

    private static final Vector2 tmp = new Vector2();

    public static void draw(PlayerShip ps) {
        if (lanceFlash <= 0) return;
        for (int k = 0; k < 6; k++) {
            tmp.setSameAs(lanceEnd).add((float) (Math.random() * 60 - 30), (float) (Math.random() * 60 - 30));
            ObjectRegistry.INSTANCE.renderQueue.addToWaitingQueue(tmp, ps.position, false, 1.0f, 1.0f, 0.85f, 0.3f);
        }
    }

    /** Heavy turret sprite for the Albatros/Guardian/Titan lines. */
    public static boolean heavyTurret(PlayerShipSpec spec) {
        return "turret_heavy".equals(turretArt(spec));
    }
}
