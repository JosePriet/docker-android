.class final Lfr/testudo/spacecorsair/mod/ModFactionData;
.super Ljava/lang/Object;
.source "ModFactionData.java"


# static fields
.field static final COMMANDER:[Ljava/lang/String;

.field static final COMMANDER_LINE:[Ljava/lang/String;

.field static final FLAGSHIP_DESC:[Ljava/lang/String;

.field static final KEYS:[Ljava/lang/String;

.field static final MISSIONS:[[Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 10

    .prologue
    const/16 v9, 0xc

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x3

    const/4 v5, 0x0

    .line 7
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "spartan"

    aput-object v1, v0, v5

    const-string v1, "reaver"

    aput-object v1, v0, v7

    const-string v1, "kretari"

    aput-object v1, v0, v8

    const-string v1, "varn"

    aput-object v1, v0, v6

    const/4 v1, 0x4

    const-string v2, "ironclad"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "helion"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "warden"

    aput-object v2, v0, v1

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModFactionData;->KEYS:[Ljava/lang/String;

    .line 8
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "Ilya Venn"

    aput-object v1, v0, v5

    const-string v1, "Captain Mara Vey"

    aput-object v1, v0, v7

    const-string v1, "Nhal-of-the-Third-Egg"

    aput-object v1, v0, v8

    const-string v1, "Director Sera Voss"

    aput-object v1, v0, v6

    const/4 v1, 0x4

    const-string v2, "Marshal Dax Rourke"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "Flight Director Lio Serrin"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "Ranger-Captain Anja Vale"

    aput-object v2, v0, v1

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModFactionData;->COMMANDER:[Ljava/lang/String;

    .line 9
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "A patient strategist who measures every victory by the civilians who make it home."

    aput-object v1, v0, v5

    const-string v1, "A blunt, fiercely loyal captain who trusts a paid promise only after it survives a hard day."

    aput-object v1, v0, v7

    const-string v1, "A deliberate Brood-Voice who treats every living signal as a memory worth protecting."

    aput-object v1, v0, v8

    const-string v1, "A cool negotiator who can make a threat sound like a routine clause in a contract."

    aput-object v1, v0, v6

    const/4 v1, 0x4

    const-string v2, "A steady veteran who speaks plainly and never asks a crew to risk what he will not."

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "An upbeat route planner who weighs danger carefully but hates wasting a clear runway."

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "A calm field leader who would rather bring everyone home than win an argument about jurisdiction."

    aput-object v2, v0, v1

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModFactionData;->COMMANDER_LINE:[Ljava/lang/String;

    .line 10
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "A steel-gray command titan with shielded flanks and a white spine light, built to anchor a Republic defense line."

    aput-object v1, v0, v5

    const-string v1, "A rust-red titan armored in scavenged black plate, its furnace lights burning like a warning across the hull."

    aput-object v1, v0, v7

    const-string v1, "A violet, many-segmented living titan that carries a nest at its core and answers threats with the whole Brood."

    aput-object v1, v0, v8

    const-string v1, "A violet command titan with a bright central reactor, polished gold trim, and the composed silhouette of a moving headquarters."

    aput-object v1, v0, v6

    const/4 v1, 0x4

    const-string v2, "A broad, sand-gray fortress titan reinforced with field-built armor and bright work lights along its shielded hull."

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "A slender white titan with a brilliant central light and swept fins, designed to keep Helion\'s trade routes open."

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "A pale blue-white patrol titan with a narrow forward profile, built to mark and protect the frontier routes."

    aput-object v2, v0, v1

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModFactionData;->FLAGSHIP_DESC:[Ljava/lang/String;

    .line 14
    const/16 v0, 0x15

    new-array v0, v0, [[Ljava/lang/Object;

    const/16 v1, 0x11

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "spartan"

    aput-object v2, v1, v5

    .line 15
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v7

    const-string v2, "The Last Ping"

    aput-object v2, v1, v8

    const-string v2, "FIND_OBJECT"

    aput-object v2, v1, v6

    const/4 v2, 0x4

    const-string v3, "HERMES"

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const-string v3, "HERMES"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x7

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0x8

    const-string v3, ""

    aput-object v3, v1, v2

    const/16 v2, 0x9

    const-string v3, ""

    aput-object v3, v1, v2

    const/16 v2, 0xa

    const-string v3, ""

    aput-object v3, v1, v2

    const/16 v2, 0xb

    const-string v3, "SRS Aegis has held a distress corridor open since the Halcyon convoy vanished. Recover its flight recorder in HERMES. It may show who turned a civilian loss into a border incident."

    aput-object v3, v1, v2

    const-string v2, "Find the Halcyon convoy\'s black box in Hermes by following its weak distress signal."

    aput-object v2, v1, v9

    const/16 v2, 0xd

    const-string v3, "The recorder is secured. Its final ping points toward Reaver space."

    aput-object v3, v1, v2

    const/16 v2, 0xe

    const-string v3, "The signal has gone cold. Aegis will keep searching, but the trail is lost for now."

    aput-object v3, v1, v2

    const/16 v2, 0xf

    const v3, 0x2bf20

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0x10

    const-string v3, "modRailgunL5"

    aput-object v3, v1, v2

    aput-object v1, v0, v5

    const/16 v1, 0x11

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "spartan"

    aput-object v2, v1, v5

    .line 16
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v7

    const-string v2, "Keep the Lane"

    aput-object v2, v1, v8

    const-string v2, "DEFEND_CIVILIANS"

    aput-object v2, v1, v6

    const/4 v2, 0x4

    const-string v3, "THOR_PASSING"

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const-string v3, "THOR_PASSING"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const/16 v3, 0xe

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x7

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0x8

    const-string v3, ""

    aput-object v3, v1, v2

    const/16 v2, 0x9

    const-string v3, ""

    aput-object v3, v1, v2

    const/16 v2, 0xa

    const-string v3, ""

    aput-object v3, v1, v2

    const/16 v2, 0xb

    const-string v3, "The recorder confirms the convoy\'s route. Evacuating ships are crossing Thor Passing while Spartan pickets regroup. Keep the civilian traffic safe and the corridor open."

    aput-object v3, v1, v2

    const-string v2, "Protect civilian traffic moving through Thor Passing."

    aput-object v2, v1, v9

    const/16 v2, 0xd

    const-string v3, "The last transports clear the lane. The Republic can finally answer the attack."

    aput-object v3, v1, v2

    const/16 v2, 0xe

    const-string v3, "Too many transports were lost. The route must be secured before another evacuation."

    aput-object v3, v1, v2

    const/16 v2, 0xf

    const v3, 0x493e0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0x10

    const-string v3, "modAutocannonL10"

    aput-object v3, v1, v2

    aput-object v1, v0, v7

    const/16 v1, 0x11

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "spartan"

    aput-object v2, v1, v5

    .line 17
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v7

    const-string v2, "Aegis Holds"

    aput-object v2, v1, v8

    const-string v2, "DEFEND_ZONE"

    aput-object v2, v1, v6

    const/4 v2, 0x4

    const-string v3, "THE_WAVE"

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const-string v3, "SPARTAN_HQ"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const/16 v3, 0x11

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const/16 v3, 0x5a

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0x8

    const-string v3, "spartan"

    aput-object v3, v1, v2

    const/16 v2, 0x9

    const-string v3, ""

    aput-object v3, v1, v2

    const/16 v2, 0xa

    const-string v3, ""

    aput-object v3, v1, v2

    const/16 v2, 0xb

    const-string v3, "Raider waves are growing stronger at our outpost in The Wave. Hold its zone for 90 seconds and keep the outpost intact; lose it and the mission fails. The Republic\'s line holds where we stand."

    aput-object v3, v1, v2

    const-string v2, "Hold the outpost zone in The Wave for 90 seconds. If the outpost is destroyed, the mission fails."

    aput-object v2, v1, v9

    const/16 v2, 0xd

    const-string v3, "The outpost holds. The Republic will remember who stood the watch."

    aput-object v3, v1, v2

    const/16 v2, 0xe

    const-string v3, "The outpost is lost. The Republic must regroup."

    aput-object v3, v1, v2

    const/16 v2, 0xf

    const v3, 0xc3500

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0x10

    const-string v3, "modArtilleryL15"

    aput-object v3, v1, v2

    aput-object v1, v0, v8

    const/16 v1, 0x11

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "reaver"

    aput-object v2, v1, v5

    .line 18
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v7

    const-string v2, "Scrap Tithe"

    aput-object v2, v1, v8

    const-string v2, "GATHER_AND_SELL"

    aput-object v2, v1, v6

    const/4 v2, 0x4

    const-string v3, "CONSTELLATION"

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const-string v3, "PIRATE_BAY"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x7

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0x8

    const-string v3, ""

    aput-object v3, v1, v2

    const/16 v2, 0x9

    const-string v3, ""

    aput-object v3, v1, v2

    const/16 v2, 0xa

    const-string v3, ""

    aput-object v3, v1, v2

    const/16 v2, 0xb

    const-string v3, "Our fleet runs on other people\'s wreckage. Gather salvage cargo in Constellation, then dock at the Reaver market in Pirate Bay to sell it. Your cut buys a place in the next raid."

    aput-object v3, v1, v2

    const-string v2, "Collect salvage cargo in Constellation, then dock at the Reaver market in Pirate Bay to sell it."

    aput-object v2, v1, v9

    const/16 v2, 0xd

    const-string v3, "The market paid out. Your name is worth remembering now."

    aput-object v3, v1, v2

    const/16 v2, 0xe

    const-string v3, "No sale, no share. The Reavers have little use for empty holds."

    aput-object v3, v1, v2

    const/16 v2, 0xf

    const v3, 0x30d40

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0x10

    const-string v3, "modAutocannonL5"

    aput-object v3, v1, v2

    aput-object v1, v0, v6

    const/4 v1, 0x4

    const/16 v2, 0x11

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "reaver"

    aput-object v3, v2, v5

    .line 19
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v7

    const-string v3, "Paid in Red"

    aput-object v3, v2, v8

    const-string v3, "BOUNTY"

    aput-object v3, v2, v6

    const/4 v3, 0x4

    const-string v4, "GREEN_BORDER"

    aput-object v4, v2, v3

    const/4 v3, 0x5

    const-string v4, "GREEN_BORDER"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const/16 v4, 0xe

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x7

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/16 v3, 0x8

    const-string v4, ""

    aput-object v4, v2, v3

    const/16 v3, 0x9

    const-string v4, "Scoria"

    aput-object v4, v2, v3

    const/16 v3, 0xa

    const-string v4, ""

    aput-object v4, v2, v3

    const/16 v3, 0xb

    const-string v4, "The courier Scoria carried a ledger that priced Reaver crews like cargo. Find the ship in Green Border and collect the bounty. The ledger can wait; the insult cannot."

    aput-object v4, v2, v3

    const-string v3, "Hunt the Varn courier Scoria in Green Border and claim the posted bounty."

    aput-object v3, v2, v9

    const/16 v3, 0xd

    const-string v4, "Scoria is down. The Reavers\' price just went up."

    aput-object v4, v2, v3

    const/16 v3, 0xe

    const-string v4, "Scoria escaped. The courier will not be caught twice the same way."

    aput-object v4, v2, v3

    const/16 v3, 0xf

    const v4, 0x55730

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/16 v3, 0x10

    const-string v4, "modBlasterL10"

    aput-object v4, v2, v3

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const/16 v2, 0x11

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "reaver"

    aput-object v3, v2, v5

    .line 20
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v7

    const-string v3, "Aegis Breaker"

    aput-object v3, v2, v8

    const-string v3, "KILL_FLAGSHIP"

    aput-object v3, v2, v6

    const/4 v3, 0x4

    const-string v4, "SPARTAN_HQ"

    aput-object v4, v2, v3

    const/4 v3, 0x5

    const-string v4, "SPARTAN_HQ"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const/16 v4, 0x12

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x7

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/16 v3, 0x8

    const-string v4, "spartan"

    aput-object v4, v2, v3

    const/16 v3, 0x9

    const-string v4, ""

    aput-object v4, v2, v3

    const/16 v3, 0xa

    const-string v4, ""

    aput-object v4, v2, v3

    const/16 v3, 0xb

    const-string v4, "The SRS Aegis has turned the Republic\'s safe lanes into a wall around our routes. Take the flagship out of the fight at Spartan HQ. The Reavers will settle the rest themselves."

    aput-object v4, v2, v3

    const-string v3, "Destroy Srs Aegis at Spartan Hq."

    aput-object v3, v2, v9

    const/16 v3, 0xd

    const-string v4, "Aegis is broken. The Reavers have room to run again."

    aput-object v4, v2, v3

    const/16 v3, 0xe

    const-string v4, "Aegis survives. No one gets paid for a retreat dressed as a raid."

    aput-object v4, v2, v3

    const/16 v3, 0xf

    const v4, 0xdbba0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/16 v3, 0x10

    const-string v4, "modArtilleryL15"

    aput-object v4, v2, v3

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const/16 v2, 0x11

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "kretari"

    aput-object v3, v2, v5

    .line 21
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v7

    const-string v3, "The Stolen Signal"

    aput-object v3, v2, v8

    const-string v3, "FIND_OBJECT"

    aput-object v3, v2, v6

    const/4 v3, 0x4

    const-string v4, "SOLAR_FIELD"

    aput-object v4, v2, v3

    const/4 v3, 0x5

    const-string v4, "SOLAR_FIELD"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x7

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/16 v3, 0x8

    const-string v4, ""

    aput-object v4, v2, v3

    const/16 v3, 0x9

    const-string v4, ""

    aput-object v4, v2, v3

    const/16 v3, 0xa

    const-string v4, ""

    aput-object v4, v2, v3

    const/16 v3, 0xb

    const-string v4, "The signal of a living beacon has been taken from the nest. Find it in Solar Field. The Brood-Voice offers no payment for this return; it offers the memory of who helped the young survive."

    aput-object v4, v2, v3

    const-string v3, "Find the Brood-Mother\'s stolen brood beacon in Solar Field by following its pulse."

    aput-object v3, v2, v9

    const/16 v3, 0xd

    const-string v4, "The beacon returns to the nest. The Brood remembers your signal."

    aput-object v4, v2, v3

    const/16 v3, 0xe

    const-string v4, "The beacon remains beyond the Brood\'s reach. The nest falls silent."

    aput-object v4, v2, v3

    const/16 v3, 0xf

    const v4, 0x2e630

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/16 v3, 0x10

    const-string v4, "modArcProjector"

    aput-object v4, v2, v3

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const/16 v2, 0x11

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "kretari"

    aput-object v3, v2, v5

    .line 22
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v7

    const-string v3, "Harvesters\' Debt"

    aput-object v3, v2, v8

    const-string v3, "KILL_ENEMY_TYPE"

    aput-object v3, v2, v6

    const/4 v3, 0x4

    const-string v4, "DELTA_NODE"

    aput-object v4, v2, v3

    const/4 v3, 0x5

    const-string v4, "THE_HIVE"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const/16 v4, 0xf

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x7

    const/4 v4, 0x5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/16 v3, 0x8

    const-string v4, ""

    aput-object v4, v2, v3

    const/16 v3, 0x9

    const-string v4, ""

    aput-object v4, v2, v3

    const/16 v3, 0xa

    const-string v4, ""

    aput-object v4, v2, v3

    const/16 v3, 0xb

    const-string v4, "Varn harvesters followed the beacon to Delta Node, on the Hive\'s doorstep. Destroy 5 Syndicate ships there. The Brood will answer every mark they left."

    aput-object v4, v2, v3

    const-string v3, "Destroy 5 Varn Syndicate ships in Delta Node, on the Hive\'s doorstep."

    aput-object v3, v2, v9

    const/16 v3, 0xd

    const-string v4, "Five harvesters are gone. The outer brood can grow in peace."

    aput-object v4, v2, v3

    const/16 v3, 0xe

    const-string v4, "The harvesters remain at our doorstep. The brood must retreat deeper into the Hive."

    aput-object v4, v2, v3

    const/16 v3, 0xf

    const v4, 0x57e40

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/16 v3, 0x10

    const-string v4, "modDisintegratorL10"

    aput-object v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const/16 v2, 0x11

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "kretari"

    aput-object v3, v2, v5

    .line 23
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v7

    const-string v3, "Nest of Silence"

    aput-object v3, v2, v8

    const-string v3, "DEFEND_ZONE"

    aput-object v3, v2, v6

    const/4 v3, 0x4

    const-string v4, "GREEN_BORDER"

    aput-object v4, v2, v3

    const/4 v3, 0x5

    const-string v4, "THE_HIVE"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const/16 v4, 0x12

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x7

    const/16 v4, 0x5a

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/16 v3, 0x8

    const-string v4, "kretari"

    aput-object v4, v2, v3

    const/16 v3, 0x9

    const-string v4, ""

    aput-object v4, v2, v3

    const/16 v3, 0xa

    const-string v4, ""

    aput-object v4, v2, v3

    const/16 v3, 0xb

    const-string v4, "The nest in Green Border is exposed while the young move below the crust. Hold the outpost zone for 90 seconds. If the outpost is destroyed, the mission fails. The Brood cannot lose this nest."

    aput-object v4, v2, v3

    const-string v3, "Hold the outpost zone in Green Border for 90 seconds. If the outpost is destroyed, the mission fails."

    aput-object v3, v2, v9

    const/16 v3, 0xd

    const-string v4, "The nest is secure. The young are safe below the crust."

    aput-object v4, v2, v3

    const/16 v3, 0xe

    const-string v4, "The nest is overrun. The surviving young must seek shelter elsewhere."

    aput-object v4, v2, v3

    const/16 v3, 0xf

    const v4, 0xcf850

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/16 v3, 0x10

    const-string v4, "modArcProjectorL15"

    aput-object v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const/16 v2, 0x11

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "varn"

    aput-object v3, v2, v5

    .line 24
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v7

    const-string v3, "The Sealed Ledger"

    aput-object v3, v2, v8

    const-string v3, "DELIVERY"

    aput-object v3, v2, v6

    const/4 v3, 0x4

    const-string v4, "THE_VAULT"

    aput-object v4, v2, v3

    const/4 v3, 0x5

    const-string v4, "OMICRON_PRIME"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x7

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/16 v3, 0x8

    const-string v4, ""

    aput-object v4, v2, v3

    const/16 v3, 0x9

    const-string v4, ""

    aput-object v4, v2, v3

    const/16 v3, 0xa

    const-string v4, ""

    aput-object v4, v2, v3

    const/16 v3, 0xb

    const-string v4, "Collect the sealed account crate in The Vault, carry it to Omicron Prime and dock at a station to deliver it. It holds the original contract for the Reaver convoy losses. If your ship is destroyed, the crate is lost. An audit needs evidence."

    aput-object v4, v2, v3

    const-string v3, "Collect the crate in The Vault and dock at a station in Omicron Prime to deliver it."

    aput-object v3, v2, v9

    const/16 v3, 0xd

    const-string v4, "The crate is logged and accepted. The numbers now have witnesses."

    aput-object v4, v2, v3

    const/16 v3, 0xe

    const-string v4, "The crate was not delivered. The contract remains easy to deny."

    aput-object v4, v2, v3

    const/16 v3, 0xf

    const v4, 0x35b60

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/16 v3, 0x10

    const-string v4, "modDisintegratorL5"

    aput-object v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const/16 v2, 0x11

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "varn"

    aput-object v3, v2, v5

    .line 25
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v7

    const-string v3, "Erase the Relay"

    aput-object v3, v2, v8

    const-string v3, "DESTROY_STATION"

    aput-object v3, v2, v6

    const/4 v3, 0x4

    const-string v4, "GREEN_BORDER"

    aput-object v4, v2, v3

    const/4 v3, 0x5

    const-string v4, "GREEN_BORDER"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const/16 v4, 0xf

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x7

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/16 v3, 0x8

    const-string v4, ""

    aput-object v4, v2, v3

    const/16 v3, 0x9

    const-string v4, ""

    aput-object v4, v2, v3

    const/16 v3, 0xa

    const-string v4, ""

    aput-object v4, v2, v3

    const/16 v3, 0xb

    const-string v4, "A Frontier Authority relay is broadcasting contract records from Green Border. Destroy the station before the Warden can turn a disputed debt into a public case. The Syndicate prefers clean books and quiet borders."

    aput-object v4, v2, v3

    const-string v3, "Destroy the Warden relay station in Green Border."

    aput-object v3, v2, v9

    const/16 v3, 0xd

    const-string v4, "The relay is gone. The Syndicate\'s version of events survives another day."

    aput-object v4, v2, v3

    const/16 v3, 0xe

    const-string v4, "The relay is still transmitting. The Warden now has the records."

    aput-object v4, v2, v3

    const/16 v3, 0xf

    const v4, 0x61a80

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/16 v3, 0x10

    const-string v4, "modAutocannonL15"

    aput-object v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const/16 v2, 0x11

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "varn"

    aput-object v3, v2, v5

    .line 26
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v7

    const-string v3, "A Price on Warden"

    aput-object v3, v2, v8

    const-string v3, "KILL_FLAGSHIP"

    aput-object v3, v2, v6

    const/4 v3, 0x4

    const-string v4, "HIGHWAY"

    aput-object v4, v2, v3

    const/4 v3, 0x5

    const-string v4, "HIGHWAY"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const/16 v4, 0x12

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x7

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/16 v3, 0x8

    const-string v4, "warden"

    aput-object v4, v2, v3

    const/16 v3, 0x9

    const-string v4, ""

    aput-object v4, v2, v3

    const/16 v3, 0xa

    const-string v4, ""

    aput-object v4, v2, v3

    const/16 v3, 0xb

    const-string v4, "The FAV Warden has seized Syndicate routes and published our contracts as evidence. Remove the flagship at Highway. The Syndicate will call it a correction to the market."

    aput-object v4, v2, v3

    const-string v3, "Destroy Fav Warden at Highway."

    aput-object v3, v2, v9

    const/16 v3, 0xd

    const-string v4, "Warden is down. The routes are open to renegotiation."

    aput-object v4, v2, v3

    const/16 v3, 0xe

    const-string v4, "The Warden remains. The Syndicate\'s price has become a warning."

    aput-object v4, v2, v3

    const/16 v3, 0xf

    const v4, 0xe7ef0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/16 v3, 0x10

    const-string v4, "modRailgunL15"

    aput-object v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x11

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "ironclad"

    aput-object v2, v1, v5

    .line 27
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v7

    const-string v2, "Ore Arbitration"

    aput-object v2, v1, v8

    const-string v2, "GATHER_AND_SELL"

    aput-object v2, v1, v6

    const/4 v2, 0x4

    const-string v3, "HUGO_WISDOM"

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const-string v3, "ORE_BELT"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x7

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0x8

    const-string v3, ""

    aput-object v3, v1, v2

    const/16 v2, 0x9

    const-string v3, ""

    aput-object v3, v1, v2

    const/16 v2, 0xa

    const-string v3, ""

    aput-object v3, v1, v2

    const/16 v2, 0xb

    const-string v3, "The claims are disputed again, and the miners cannot afford another shutdown. Gather ore cargo in Hugo Wisdom, then dock at the Ironclad refinery in Ore Belt to sell it. The proceeds will keep the rigs and crews supplied."

    aput-object v3, v1, v2

    const-string v2, "Collect ore cargo in Hugo Wisdom and dock at the Ironclad refinery in Ore Belt to sell it."

    aput-object v2, v1, v9

    const/16 v2, 0xd

    const-string v3, "The refinery has stock. The miners can keep working another shift."

    aput-object v3, v1, v2

    const/16 v2, 0xe

    const-string v3, "The ore did not arrive. The rigs will have to idle for now."

    aput-object v3, v1, v2

    const/16 v2, 0xf

    const v3, 0x2bf20

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0x10

    const-string v3, "modRailgunL5"

    aput-object v3, v1, v2

    aput-object v1, v0, v9

    const/16 v1, 0xd

    const/16 v2, 0x11

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "ironclad"

    aput-object v3, v2, v5

    .line 28
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v7

    const-string v3, "Miners\' Passage"

    aput-object v3, v2, v8

    const-string v3, "DEFEND_CIVILIANS"

    aput-object v3, v2, v6

    const/4 v3, 0x4

    const-string v4, "VENTOHIGH"

    aput-object v4, v2, v3

    const/4 v3, 0x5

    const-string v4, "ORE_BELT"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const/16 v4, 0xe

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x7

    const/4 v4, 0x4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/16 v3, 0x8

    const-string v4, ""

    aput-object v4, v2, v3

    const/16 v3, 0x9

    const-string v4, "waves"

    aput-object v4, v2, v3

    const/16 v3, 0xa

    const-string v4, ""

    aput-object v4, v2, v3

    const/16 v3, 0xb

    const-string v4, "Ore prices mean nothing if the workers cannot get through. Meet the mining convoy in Ventohigh and protect it through 4 raider waves. Every ship that survives keeps the militia supplied and the settlement alive."

    aput-object v4, v2, v3

    const-string v3, "Meet the mining convoy in Ventohigh and protect it through 4 raider waves."

    aput-object v3, v2, v9

    const/16 v3, 0xd

    const-string v4, "The convoy made it through. The militia has supplies, and the miners can work another shift."

    aput-object v4, v2, v3

    const/16 v3, 0xe

    const-string v4, "The convoy is scattered. The miners cannot risk another passage."

    aput-object v4, v2, v3

    const/16 v3, 0xf

    const v4, 0x4e200

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/16 v3, 0x10

    const-string v4, "modAutocannonL10"

    aput-object v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const/16 v2, 0x11

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "ironclad"

    aput-object v3, v2, v5

    .line 29
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v7

    const-string v3, "Bastion\'s Line"

    aput-object v3, v2, v8

    const-string v3, "DEFEND_ZONE"

    aput-object v3, v2, v6

    const/4 v3, 0x4

    const-string v4, "HERMES"

    aput-object v4, v2, v3

    const/4 v3, 0x5

    const-string v4, "ORE_BELT"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const/16 v4, 0x11

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x7

    const/16 v4, 0x5a

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/16 v3, 0x8

    const-string v4, "ironclad"

    aput-object v4, v2, v3

    const/16 v3, 0x9

    const-string v4, ""

    aput-object v4, v2, v3

    const/16 v3, 0xa

    const-string v4, ""

    aput-object v4, v2, v3

    const/16 v3, 0xb

    const-string v4, "Crimson Reavers are pressing our outpost in Hermes. Hold its zone for 90 seconds and keep the outpost standing; if it is destroyed, the mission fails. Give the miners time to evacuate the exposed works."

    aput-object v4, v2, v3

    const-string v3, "Hold the outpost zone in Hermes for 90 seconds. If the outpost is destroyed, the mission fails."

    aput-object v3, v2, v9

    const/16 v3, 0xd

    const-string v4, "The outpost holds. The miners have time to get clear."

    aput-object v4, v2, v3

    const/16 v3, 0xe

    const-string v4, "The outpost is lost. Pull back and get the remaining miners clear."

    aput-object v4, v2, v3

    const/16 v3, 0xf

    const v4, 0xcf850

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/16 v3, 0x10

    const-string v4, "modBlasterL15"

    aput-object v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const/16 v2, 0x11

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "helion"

    aput-object v3, v2, v5

    .line 30
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v7

    const-string v3, "Courier\'s Wake"

    aput-object v3, v2, v8

    const-string v3, "ESCORT"

    aput-object v3, v2, v6

    const/4 v3, 0x4

    const-string v4, "HELIOSTAT"

    aput-object v4, v2, v3

    const/4 v3, 0x5

    const-string v4, "HELIOSTAT"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x7

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/16 v3, 0x8

    const-string v4, ""

    aput-object v4, v2, v3

    const/16 v3, 0x9

    const-string v4, ""

    aput-object v4, v2, v3

    const/16 v3, 0xa

    const-string v4, ""

    aput-object v4, v2, v3

    const/16 v3, 0xb

    const-string v4, "Lumen carries drive parts for three Helion convoys. Meet the courier at a station in Heliostat, escort it through the gate, then on to a station in Constellation. A late delivery costs money; a lost one costs crews their route home."

    aput-object v4, v2, v3

    const-string v3, "Meet Lumen at a Heliostat station; escort it through the gate to a station in Constellation."

    aput-object v3, v2, v9

    const/16 v3, 0xd

    const-string v4, "Lumen has reached the station in Constellation. The convoys can keep to schedule."

    aput-object v4, v2, v3

    const/16 v3, 0xe

    const-string v4, "Lumen did not arrive. Helion must reroute the parts and absorb the delay."

    aput-object v4, v2, v3

    const/16 v3, 0xf

    const v4, 0x30d40

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/16 v3, 0x10

    const-string v4, "modBlaster"

    aput-object v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const/16 v2, 0x11

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "helion"

    aput-object v3, v2, v5

    .line 31
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v7

    const-string v3, "Passenger Check"

    aput-object v3, v2, v8

    const-string v3, "SCAN_CIVIL"

    aput-object v3, v2, v6

    const/4 v3, 0x4

    const-string v4, "TWIN_STAR"

    aput-object v4, v2, v3

    const/4 v3, 0x5

    const-string v4, "TWIN_STAR"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const/16 v4, 0xf

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x7

    const/4 v4, 0x4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/16 v3, 0x8

    const-string v4, ""

    aput-object v4, v2, v3

    const/16 v3, 0x9

    const-string v4, ""

    aput-object v4, v2, v3

    const/16 v3, 0xa

    const-string v4, ""

    aput-object v4, v2, v3

    const/16 v3, 0xb

    const-string v4, "Helion\'s insurers flagged a cluster of inconsistent transponders in Twin Star. Scan four civilian ships and verify their records. We need to know whether the risk is paperwork or someone hiding behind it."

    aput-object v4, v2, v3

    const-string v3, "Scan 4 civilian ships in Twin Star to verify their transponders."

    aput-object v3, v2, v9

    const/16 v3, 0xd

    const-string v4, "The scans are complete. Helion can price the route honestly again."

    aput-object v4, v2, v3

    const/16 v3, 0xe

    const-string v4, "The survey is incomplete. The route stays under review."

    aput-object v4, v2, v3

    const/16 v3, 0xf

    const v4, 0x5cc60

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/16 v3, 0x10

    const-string v4, "modRailgunL10"

    aput-object v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const/16 v2, 0x11

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "helion"

    aput-object v3, v2, v5

    .line 32
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v7

    const-string v3, "Forge the Suns"

    aput-object v3, v2, v8

    const-string v3, "KILL_FLAGSHIP"

    aput-object v3, v2, v6

    const/4 v3, 0x4

    const-string v4, "PIRATE_BAY"

    aput-object v4, v2, v3

    const/4 v3, 0x5

    const-string v4, "PIRATE_BAY"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const/16 v4, 0x12

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x7

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/16 v3, 0x8

    const-string v4, "reaver"

    aput-object v4, v2, v3

    const/16 v3, 0x9

    const-string v4, ""

    aput-object v4, v2, v3

    const/16 v3, 0xa

    const-string v4, ""

    aput-object v4, v2, v3

    const/16 v3, 0xb

    const-string v4, "Bloodforge has made the trade lanes too dangerous to insure. Take the Reaver flagship out of the fight at Pirate Bay. Helion will reopen the route as soon as the danger is gone."

    aput-object v4, v2, v3

    const-string v3, "Destroy Bloodforge at Pirate Bay."

    aput-object v3, v2, v9

    const/16 v3, 0xd

    const-string v4, "Bloodforge is silent. The lanes can carry more than warships again."

    aput-object v4, v2, v3

    const/16 v3, 0xe

    const-string v4, "Bloodforge still rules Pirate Bay. Helion suspends the route for now."

    aput-object v4, v2, v3

    const/16 v3, 0xf

    const v4, 0xf4240

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/16 v3, 0x10

    const-string v4, "modRailgunL15"

    aput-object v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const/16 v2, 0x11

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "warden"

    aput-object v3, v2, v5

    .line 33
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v7

    const-string v3, "Roadside Claim"

    aput-object v3, v2, v8

    const-string v3, "BOUNTY"

    aput-object v3, v2, v6

    const/4 v3, 0x4

    const-string v4, "LOST_PARADISE"

    aput-object v4, v2, v3

    const/4 v3, 0x5

    const-string v4, "HIGHWAY"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x7

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/16 v3, 0x8

    const-string v4, ""

    aput-object v4, v2, v3

    const/16 v3, 0x9

    const-string v4, "Hex"

    aput-object v4, v2, v3

    const/16 v3, 0xa

    const-string v4, ""

    aput-object v4, v2, v3

    const/16 v3, 0xb

    const-string v4, "Hex has been preying on unarmed traffic along the Highway. The raider now hides in Lost Paradise, next to the Highway. Claim the Authority\'s posted bounty. Frontier law begins with lanes safe enough to use."

    aput-object v4, v2, v3

    const-string v3, "Hunt the Reaver raider Hex in Lost Paradise, next to the Highway, and claim the bounty."

    aput-object v3, v2, v9

    const/16 v3, 0xd

    const-string v4, "Hex is down. The Highway is a little safer to travel."

    aput-object v4, v2, v3

    const/16 v3, 0xe

    const-string v4, "Hex escaped. The bounty remains open to the next ranger."

    aput-object v4, v2, v3

    const/16 v3, 0xf

    const v4, 0x2e630

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/16 v3, 0x10

    const-string v4, "modArtilleryL5"

    aput-object v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const/16 v2, 0x11

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "warden"

    aput-object v3, v2, v5

    .line 34
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v7

    const-string v3, "Stranded Patrol"

    aput-object v3, v2, v8

    const-string v3, "RESCUE"

    aput-object v3, v2, v6

    const/4 v3, 0x4

    const-string v4, "DELTA_NODE"

    aput-object v4, v2, v3

    const/4 v3, 0x5

    const-string v4, "DELTA_NODE"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const/16 v4, 0xf

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x7

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/16 v3, 0x8

    const-string v4, ""

    aput-object v4, v2, v3

    const/16 v3, 0x9

    const-string v4, ""

    aput-object v4, v2, v3

    const/16 v3, 0xa

    const-string v4, ""

    aput-object v4, v2, v3

    const/16 v3, 0xb

    const-string v4, "Three patrol pilots are stranded at Delta Node after a route marker failed. Reach them and bring them back alive. The Authority does not leave its people behind to save fuel or face."

    aput-object v4, v2, v3

    const-string v3, "Rescue 3 Frontier Authority patrol pilots in Delta Node."

    aput-object v3, v2, v9

    const/16 v3, 0xd

    const-string v4, "All three pilots are aboard and accounted for."

    aput-object v4, v2, v3

    const/16 v3, 0xe

    const-string v4, "The rescue fell short. The Authority will keep looking for its missing pilots."

    aput-object v4, v2, v3

    const/16 v3, 0xf

    const v4, 0x53020

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/16 v3, 0x10

    const-string v4, "modArcProjectorL10"

    aput-object v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const/16 v2, 0x11

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "warden"

    aput-object v3, v2, v5

    .line 35
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v7

    const-string v3, "No Safe Passage"

    aput-object v3, v2, v8

    const-string v3, "KILL_FLAGSHIP"

    aput-object v3, v2, v6

    const/4 v3, 0x4

    const-string v4, "OMICRON_PRIME"

    aput-object v4, v2, v3

    const/4 v3, 0x5

    const-string v4, "OMICRON_PRIME"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const/16 v4, 0x12

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x7

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/16 v3, 0x8

    const-string v4, "varn"

    aput-object v4, v2, v3

    const/16 v3, 0x9

    const-string v4, ""

    aput-object v4, v2, v3

    const/16 v3, 0xa

    const-string v4, ""

    aput-object v4, v2, v3

    const/16 v3, 0xb

    const-string v4, "The Syndicate Crown has turned Omicron Prime into a toll gate and buried the terms in private contracts. Destroy the flagship. The Frontier Authority will defend the route as public space again."

    aput-object v4, v2, v3

    const-string v3, "Destroy Syndicate Crown at Omicron Prime."

    aput-object v3, v2, v9

    const/16 v3, 0xd

    const-string v4, "The Crown is down. Omicron Prime is open to civilian traffic."

    aput-object v4, v2, v3

    const/16 v3, 0xe

    const-string v4, "The Crown still controls the route. The Authority will not send another convoy through."

    aput-object v4, v2, v3

    const/16 v3, 0xf

    const v4, 0xe7ef0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/16 v3, 0x10

    const-string v4, "modDisintegratorL15"

    aput-object v4, v2, v3

    aput-object v2, v0, v1

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModFactionData;->MISSIONS:[[Ljava/lang/Object;

    .line 14
    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
