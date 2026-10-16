.class final Lfr/testudo/spacecorsair/mod/ModRepData;
.super Ljava/lang/Object;
.source "ModRepData.java"


# static fields
.field static final CONTRACTS:[[Ljava/lang/Object;

.field static final KEYS:[Ljava/lang/String;

.field static final RANKS:[[Ljava/lang/String;

.field static final RANK_DOWN:[[Ljava/lang/String;

.field static final RANK_UP:[[Ljava/lang/String;

.field static final SECRET_SHIP:[[Ljava/lang/String;

.field static final SECRET_WEAPON:[[Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 10

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 7
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "spartan"

    aput-object v1, v0, v5

    const-string v1, "reaver"

    aput-object v1, v0, v6

    const-string v1, "kretari"

    aput-object v1, v0, v7

    const-string v1, "varn"

    aput-object v1, v0, v8

    const-string v1, "ironclad"

    aput-object v1, v0, v9

    const/4 v1, 0x5

    const-string v2, "helion"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "warden"

    aput-object v2, v0, v1

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModRepData;->KEYS:[Ljava/lang/String;

    .line 9
    const/4 v0, 0x7

    new-array v0, v0, [[Ljava/lang/String;

    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "Threat to the Republic"

    aput-object v2, v1, v5

    const-string v2, "Untrusted Contact"

    aput-object v2, v1, v6

    const-string v2, "Visiting Captain"

    aput-object v2, v1, v7

    const-string v2, "Republic Auxiliary"

    aput-object v2, v1, v8

    const-string v2, "Republic Vanguard"

    aput-object v2, v1, v9

    const/4 v2, 0x5

    const-string v3, "Shield of the Republic"

    aput-object v3, v1, v2

    aput-object v1, v0, v5

    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "Marked for Reprisal"

    aput-object v2, v1, v5

    const-string v2, "Owed Blood"

    aput-object v2, v1, v6

    const-string v2, "Loose Associate"

    aput-object v2, v1, v7

    const-string v2, "Crew-Friend"

    aput-object v2, v1, v8

    const-string v2, "Spoils-Honored"

    aput-object v2, v1, v9

    const/4 v2, 0x5

    const-string v3, "Captain of the Freehold"

    aput-object v3, v1, v2

    aput-object v1, v0, v6

    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "Hunted Intruder"

    aput-object v2, v1, v5

    const-string v2, "Unquiet Signal"

    aput-object v2, v1, v6

    const-string v2, "Heard Stranger"

    aput-object v2, v1, v7

    const-string v2, "Nesting Ally"

    aput-object v2, v1, v8

    const-string v2, "Brood-Kin"

    aput-object v2, v1, v9

    const/4 v2, 0x5

    const-string v3, "Memory-Guardian"

    aput-object v3, v1, v2

    aput-object v1, v0, v7

    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "Contract Null"

    aput-object v2, v1, v5

    const-string v2, "High-Risk Account"

    aput-object v2, v1, v6

    const-string v2, "Unrated Counterparty"

    aput-object v2, v1, v7

    const-string v2, "Bonded Partner"

    aput-object v2, v1, v8

    const-string v2, "Preferred Principal"

    aput-object v2, v1, v9

    const/4 v2, 0x5

    const-string v3, "Chartered Benefactor"

    aput-object v3, v1, v2

    aput-object v1, v0, v8

    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "Settlement Threat"

    aput-object v2, v1, v5

    const-string v2, "Aid Debtor"

    aput-object v2, v1, v6

    const-string v2, "Known Hand"

    aput-object v2, v1, v7

    const-string v2, "Trusted Hand"

    aput-object v2, v1, v8

    const-string v2, "Belt Defender"

    aput-object v2, v1, v9

    const/4 v2, 0x5

    const-string v3, "Council Shield"

    aput-object v3, v1, v2

    aput-object v1, v0, v9

    const/4 v1, 0x5

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "Route Hazard"

    aput-object v3, v2, v5

    const-string v3, "Suspended Carrier"

    aput-object v3, v2, v6

    const-string v3, "Open Account"

    aput-object v3, v2, v7

    const-string v3, "Clear-Lane Partner"

    aput-object v3, v2, v8

    const-string v3, "Combine Principal"

    aput-object v3, v2, v9

    const/4 v3, 0x5

    const-string v4, "Route Patron"

    aput-object v4, v2, v3

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "Route Violator"

    aput-object v3, v2, v5

    const-string v3, "Uncleared Contact"

    aput-object v3, v2, v6

    const-string v3, "Registered Traveler"

    aput-object v3, v2, v7

    const-string v3, "Warden Auxiliary"

    aput-object v3, v2, v8

    const-string v3, "Ranger Associate"

    aput-object v3, v2, v9

    const/4 v3, 0x5

    const-string v4, "Frontier Beacon"

    aput-object v4, v2, v3

    aput-object v2, v0, v1

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModRepData;->RANKS:[[Ljava/lang/String;

    .line 19
    const/4 v0, 0x7

    new-array v0, v0, [[Ljava/lang/String;

    new-array v1, v8, [Ljava/lang/String;

    const-string v2, "The council recognizes your escort record. I name you a Republic Auxiliary; keep the lanes open, and our patrols will answer your call."

    aput-object v2, v1, v5

    const-string v2, "You held the line when it mattered. I trust you with Vanguard duty and the Republic\'s heaviest contracts."

    aput-object v2, v1, v6

    const-string v2, "The fleet council records you as the Shield of the Republic. When our people call, my command channel is yours."

    aput-object v2, v1, v7

    aput-object v1, v0, v5

    new-array v1, v8, [Ljava/lang/String;

    const-string v2, "You kept your word when the hull started burning. My crew will share a table with you now; don\'t make me regret it."

    aput-object v2, v1, v5

    const-string v2, "The crew voted you a full share. Take the good contracts, and remember who hauled you out of the fire."

    aput-object v2, v1, v6

    const-string v2, "You\'re captain among captains on this deck. Nobody touches your cut while I still draw breath."

    aput-object v2, v1, v7

    aput-object v1, v0, v6

    new-array v1, v8, [Ljava/lang/String;

    const-string v2, "Your signal has become familiar among the young. I mark you Nesting Ally; carry this trust gently."

    aput-object v2, v1, v5

    const-string v2, "The Brood remembers your care. You are Brood-Kin now, and our nest calls will reach you first."

    aput-object v2, v1, v6

    const-string v2, "We share our oldest memory with you. Guard it as you guard the living, Memory-Guardian."

    aput-object v2, v1, v7

    aput-object v1, v0, v7

    new-array v1, v8, [Ljava/lang/String;

    const-string v2, "Your account now carries a positive risk rating. I welcome you as a Bonded Partner; the service terms are attached."

    aput-object v2, v1, v5

    const-string v2, "Your reliability has earned Preferred Principal status. I have approved access to a private armament line."

    aput-object v2, v1, v6

    const-string v2, "The board has entered your name among our Chartered Benefactors. You may consider the Syndicate\'s routes available to you."

    aput-object v2, v1, v7

    aput-object v1, v0, v8

    new-array v1, v8, [Ljava/lang/String;

    const-string v2, "You\'ve put in honest work for the settlements. I call you a Trusted Hand; the next crew will know your name."

    aput-object v2, v1, v5

    const-string v2, "The councils trust you with the belt\'s hardest shifts. Take the Defender\'s contract and bring everybody home."

    aput-object v2, v1, v6

    const-string v2, "The councils have made you their Shield. That means our people call, and I expect you to answer."

    aput-object v2, v1, v7

    aput-object v1, v0, v9

    const/4 v1, 0x5

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "That\'s a clean run and a safer route for everyone. The Combine welcomes you as a Clear-Lane Partner."

    aput-object v3, v2, v5

    const-string v3, "Your record is consistent under pressure. I have Principal access approved, including a weapon line normally kept in reserve."

    aput-object v3, v2, v6

    const-string v3, "You\'ve kept our routes open when the margins got thin. The board names you Route Patron, and I couldn\'t be happier."

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "You\'ve answered the call without claiming the route. I welcome you as a Warden Auxiliary; keep that beacon lit."

    aput-object v3, v2, v5

    const-string v3, "You bring people home and leave passage open. I name you Ranger Associate, with my full trust on the frontier."

    aput-object v3, v2, v6

    const-string v3, "The Authority names you Frontier Beacon. When a ship is lost beyond the chart, your word will guide us there."

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModRepData;->RANK_UP:[[Ljava/lang/String;

    .line 29
    const/4 v0, 0x7

    new-array v0, v0, [[Ljava/lang/String;

    new-array v1, v7, [Ljava/lang/String;

    const-string v2, "Your recent choices have cost the Republic confidence. Until you make amends, our crews will treat you as an uncertain contact."

    aput-object v2, v1, v5

    const-string v2, "I will not let another Republic convoy suffer for your actions. Our patrols are cleared to stop you on sight."

    aput-object v2, v1, v6

    aput-object v1, v0, v5

    new-array v1, v7, [Ljava/lang/String;

    const-string v2, "Word is you left our people short. You can still square the account, but my crew won\'t spot you another favor."

    aput-object v2, v1, v5

    const-string v2, "You crossed the line and took from the crew. We have your trail; every Reaver you meet knows the price."

    aput-object v2, v1, v6

    aput-object v1, v0, v6

    new-array v1, v7, [Ljava/lang/String;

    const-string v2, "Your signal brings unease to the nest. Restore what you disturbed, and the young may hear you again."

    aput-object v2, v1, v5

    const-string v2, "The Brood has marked your signal as danger. Leave our nesting grounds, or we will answer together."

    aput-object v2, v1, v6

    aput-object v1, v0, v7

    new-array v1, v7, [Ljava/lang/String;

    const-string v2, "Your recent decisions have increased our exposure. I can still offer an amends contract, but no further credit is authorized."

    aput-object v2, v1, v5

    const-string v2, "Your account is closed and your access revoked. Any outstanding risk will be settled by our enforcement office."

    aput-object v2, v1, v6

    aput-object v1, v0, v8

    new-array v1, v7, [Ljava/lang/String;

    const-string v2, "You left a settlement carrying the cost of your choices. Work it off, and we can talk like neighbors again."

    aput-object v2, v1, v5

    const-string v2, "You put our families at risk. I won\'t send another crew to warn you; stay clear of Militia ground."

    aput-object v2, v1, v6

    aput-object v1, v0, v9

    const/4 v1, 0x5

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "Your last decisions delayed too many people. Help us repair the route record, and we can reopen your carrier status."

    aput-object v3, v2, v5

    const-string v3, "You have become a hazard to Combine traffic. Our escorts will turn you away until the board reviews your account."

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "Your conduct has made the route less safe. Help the crews you put at risk, and I\'ll reconsider your clearance."

    aput-object v3, v2, v5

    const-string v3, "You have violated the Authority\'s open-route charter. Our patrols will stop you before you endanger another traveler."

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModRepData;->RANK_DOWN:[[Ljava/lang/String;

    .line 39
    const/16 v0, 0x38

    new-array v0, v0, [[Ljava/lang/Object;

    const/4 v1, 0x7

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "spartan"

    aput-object v2, v1, v5

    const-string v2, "Supply Line"

    aput-object v2, v1, v6

    const-string v2, "ESCORT"

    aput-object v2, v1, v7

    const-string v2, "Escort a ration hauler through a contested Republic lane. Keep it intact until it reaches the settlement dock."

    aput-object v2, v1, v8

    const-string v2, "The convoy arrived with its cargo and crew safe. The council has logged your service."

    aput-object v2, v1, v9

    const/4 v2, 0x5

    .line 40
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, "Republic ration hauler"

    aput-object v3, v1, v2

    aput-object v1, v0, v5

    const/4 v1, 0x7

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "spartan"

    aput-object v2, v1, v5

    const-string v2, "Civilian Shield"

    aput-object v2, v1, v6

    const-string v2, "DEFEND_CIVILIANS"

    aput-object v2, v1, v7

    const-string v2, "Reaver raiders are closing on an evacuation shuttle. Drive off the attackers before the passengers are exposed."

    aput-object v2, v1, v8

    const-string v2, "The civilians are clear. Your restraint under fire will be remembered."

    aput-object v2, v1, v9

    const/4 v2, 0x5

    .line 41
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, ""

    aput-object v3, v1, v2

    aput-object v1, v0, v6

    const/4 v1, 0x7

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "spartan"

    aput-object v2, v1, v5

    const-string v2, "Hold the Relay"

    aput-object v2, v1, v6

    const-string v2, "DEFEND_ZONE"

    aput-object v2, v1, v7

    const-string v2, "A Republic relay is under pressure. Hold the marked zone until the replacement patrol arrives."

    aput-object v2, v1, v8

    const-string v2, "Relay control is secure. Our formation can move again."

    aput-object v2, v1, v9

    const/4 v2, 0x5

    .line 42
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, ""

    aput-object v3, v1, v2

    aput-object v1, v0, v7

    const/4 v1, 0x7

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "spartan"

    aput-object v2, v1, v5

    const-string v2, "Range Scan"

    aput-object v2, v1, v6

    const-string v2, "SCAN_CIVIL"

    aput-object v2, v1, v7

    const-string v2, "Scan civilian traffic near the lane junction and report any distress or route hazards."

    aput-object v2, v1, v8

    const-string v2, "Traffic is logged and the safe passage report is filed."

    aput-object v2, v1, v9

    const/4 v2, 0x5

    .line 43
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, ""

    aput-object v3, v1, v2

    aput-object v1, v0, v8

    const/4 v1, 0x7

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "spartan"

    aput-object v2, v1, v5

    const-string v2, "Raider Bounty"

    aput-object v2, v1, v6

    const-string v2, "BOUNTY"

    aput-object v2, v1, v7

    const-string v2, "A Reaver cutter has been preying on Republic supply craft. Claim the posted bounty by bringing it down."

    aput-object v2, v1, v8

    const-string v2, "The cutter will trouble no more convoys. Bounty confirmed."

    aput-object v2, v1, v9

    const/4 v2, 0x5

    .line 44
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, "Reaver Cutter"

    aput-object v3, v1, v2

    aput-object v1, v0, v9

    const/4 v1, 0x5

    const/4 v2, 0x7

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "spartan"

    aput-object v3, v2, v5

    const-string v3, "Shield Plate Return"

    aput-object v3, v2, v6

    const-string v3, "GATHER_AND_SELL"

    aput-object v3, v2, v7

    const-string v3, "Collect surplus shield plates from the depot circuit and sell the recovered stock to the Republic quartermaster."

    aput-object v3, v2, v8

    const-string v3, "The plates are back in service. Settlement crews send thanks."

    aput-object v3, v2, v9

    const/4 v3, 0x5

    .line 45
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string v4, ""

    aput-object v4, v2, v3

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const/4 v2, 0x7

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "spartan"

    aput-object v3, v2, v5

    const-string v3, "Evacuation Guard"

    aput-object v3, v2, v6

    const-string v3, "ESCORT"

    aput-object v3, v2, v7

    const-string v3, "Amends contract: your last attack forced families from a Republic settlement. Escort their evacuation shuttle to safety."

    aput-object v3, v2, v8

    const-string v3, "The families reached shelter. The council accepts this act of repair."

    aput-object v3, v2, v9

    const/4 v3, 0x5

    .line 46
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string v4, "Republic ration hauler"

    aput-object v4, v2, v3

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const/4 v2, 0x7

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "spartan"

    aput-object v3, v2, v5

    const-string v3, "Search the Wreck"

    aput-object v3, v2, v6

    const-string v3, "RESCUE"

    aput-object v3, v2, v7

    const-string v3, "Amends contract: your fire crippled a Republic relief skiff. Rescue its stranded crew before life support fails."

    aput-object v3, v2, v8

    const-string v3, "The skiff\'s crew is alive and accounted for. You have begun to repay the harm."

    aput-object v3, v2, v9

    const/4 v3, 0x5

    .line 47
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string v4, ""

    aput-object v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const/4 v2, 0x7

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "reaver"

    aput-object v3, v2, v5

    const-string v3, "Easy Pickings"

    aput-object v3, v2, v6

    const-string v3, "BOUNTY"

    aput-object v3, v2, v7

    const-string v3, "A soft target is carrying a posted bounty through Reaver space. Intercept it before another captain claims the purse."

    aput-object v3, v2, v8

    const-string v3, "Purse secured. Your share is waiting at the firebox."

    aput-object v3, v2, v9

    const/4 v3, 0x5

    .line 48
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string v4, "Debt Marshal"

    aput-object v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const/4 v2, 0x7

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "reaver"

    aput-object v3, v2, v5

    const-string v3, "Fence the Salvage"

    aput-object v3, v2, v6

    const-string v3, "GATHER_AND_SELL"

    aput-object v3, v2, v7

    const-string v3, "Gather loose salvage from the marked wreck field and sell the useful haul through the crew\'s fence."

    aput-object v3, v2, v8

    const-string v3, "The salvage sold cleanly. The crew has its cut."

    aput-object v3, v2, v9

    const/4 v3, 0x5

    .line 49
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string v4, ""

    aput-object v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const/4 v2, 0x7

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "reaver"

    aput-object v3, v2, v5

    const-string v3, "Crew in the Drift"

    aput-object v3, v2, v6

    const-string v3, "RESCUE"

    aput-object v3, v2, v7

    const-string v3, "A Reaver skiff was abandoned after a bad jump. Find its crew and bring them back before scavengers arrive."

    aput-object v3, v2, v8

    const-string v3, "They\'re back aboard, loud and alive. That\'s a fair day\'s work."

    aput-object v3, v2, v9

    const/4 v3, 0x5

    .line 50
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string v4, ""

    aput-object v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const/4 v2, 0x7

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "reaver"

    aput-object v3, v2, v5

    const-string v3, "Break the Tail"

    aput-object v3, v2, v6

    const-string v3, "ESCORT"

    aput-object v3, v2, v7

    const-string v3, "A captured hauler has patrols on its wake. Escort it through the marked escape lane."

    aput-object v3, v2, v8

    const-string v3, "The hauler slipped the patrol net. Cargo and crew are ours."

    aput-object v3, v2, v9

    const/4 v3, 0x5

    .line 51
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string v4, "Captured hauler"

    aput-object v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const/4 v2, 0x7

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "reaver"

    aput-object v3, v2, v5

    const-string v3, "Burn the Tollhouse"

    aput-object v3, v2, v6

    const-string v3, "DESTROY_STATION"

    aput-object v3, v2, v7

    const-string v3, "A debt marshal station is locking down a Reaver passage. Destroy the station and clear the lane."

    aput-object v3, v2, v8

    const-string v3, "No more tolls from that station. The route is open."

    aput-object v3, v2, v9

    const/4 v3, 0x5

    .line 52
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string v4, "Debt Marshal Tollhouse"

    aput-object v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const/4 v2, 0x7

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "reaver"

    aput-object v3, v2, v5

    const-string v3, "Find the Ledger"

    aput-object v3, v2, v6

    const-string v3, "FIND_OBJECT"

    aput-object v3, v2, v7

    const-string v3, "Locate a stolen crew ledger in the wreck field. Whoever has it knows which captains still owe a share."

    aput-object v3, v2, v8

    const-string v3, "Ledger found. Names and shares are back where they belong."

    aput-object v3, v2, v9

    const/4 v3, 0x5

    .line 53
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string v4, ""

    aput-object v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const/4 v2, 0x7

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "reaver"

    aput-object v3, v2, v5

    const-string v3, "Miner\'s Safe Passage"

    aput-object v3, v2, v6

    const-string v3, "DEFEND_CIVILIANS"

    aput-object v3, v2, v7

    const-string v3, "Amends contract: your last raid left civilian miners under fire. Defend them until their shuttle clears the field."

    aput-object v3, v2, v8

    const-string v3, "The miners made it out. That\'s one debt we can stop carrying."

    aput-object v3, v2, v9

    const/4 v3, 0x5

    .line 54
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string v4, ""

    aput-object v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const/4 v2, 0x7

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "reaver"

    aput-object v3, v2, v5

    const-string v3, "Return the Med Crate"

    aput-object v3, v2, v6

    const-string v3, "FIND_OBJECT"

    aput-object v3, v2, v7

    const-string v3, "Amends contract: your crew took medicine from a stranded hauler. Find the marked crate and return it to its owners."

    aput-object v3, v2, v8

    const-string v3, "The medicine is back with the hauler\'s crew. Mara says the account is smaller now."

    aput-object v3, v2, v9

    const/4 v3, 0x5

    .line 55
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string v4, ""

    aput-object v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const/4 v2, 0x7

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "kretari"

    aput-object v3, v2, v5

    const-string v3, "Nest Signal"

    aput-object v3, v2, v6

    const-string v3, "FIND_OBJECT"

    aput-object v3, v2, v7

    const-string v3, "Find the missing brood signal among the quiet rocks. The nest cannot answer until its memory beacon is returned."

    aput-object v3, v2, v8

    const-string v3, "The signal is heard again. The nest remembers your path."

    aput-object v3, v2, v9

    const/4 v3, 0x5

    .line 56
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string v4, ""

    aput-object v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const/4 v2, 0x7

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "kretari"

    aput-object v3, v2, v5

    const-string v3, "Escort the Brood"

    aput-object v3, v2, v6

    const-string v3, "ESCORT"

    aput-object v3, v2, v7

    const-string v3, "Guide a brood carrier through the outer passage while its young settle into their travel shells."

    aput-object v3, v2, v8

    const-string v3, "The carrier reached quiet space. The young are safe."

    aput-object v3, v2, v9

    const/4 v3, 0x5

    .line 57
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string v4, "Brood carrier"

    aput-object v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const/4 v2, 0x7

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "kretari"

    aput-object v3, v2, v5

    const-string v3, "Nest Perimeter"

    aput-object v3, v2, v6

    const-string v3, "DEFEND_ZONE"

    aput-object v3, v2, v7

    const-string v3, "Hold the marked nesting zone while memory keepers complete their signal exchange."

    aput-object v3, v2, v8

    const-string v3, "The signal exchange is complete. The nest is calm."

    aput-object v3, v2, v9

    const/4 v3, 0x5

    .line 58
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string v4, ""

    aput-object v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const/4 v2, 0x7

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "kretari"

    aput-object v3, v2, v5

    const-string v3, "Retrieve the Young"

    aput-object v3, v2, v6

    const-string v3, "RESCUE"

    aput-object v3, v2, v7

    const-string v3, "Rescue broodlings stranded in a damaged travel pod before its shell breaks apart."

    aput-object v3, v2, v8

    const-string v3, "The broodlings are returned to the nest. Their signal is bright."

    aput-object v3, v2, v9

    const/4 v3, 0x5

    .line 59
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string v4, ""

    aput-object v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const/4 v2, 0x7

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "kretari"

    aput-object v3, v2, v5

    const-string v3, "Predator Cull"

    aput-object v3, v2, v6

    const-string v3, "KILL_ENEMY_TYPE"

    aput-object v3, v2, v7

    const-string v3, "Remove the hostile predator craft circling the brood route. The young cannot travel while it hunts."

    aput-object v3, v2, v8

    const-string v3, "The predator threat is gone. The route is quiet."

    aput-object v3, v2, v9

    const/4 v3, 0x5

    .line 60
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string v4, ""

    aput-object v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const/4 v2, 0x7

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "kretari"

    aput-object v3, v2, v5

    const-string v3, "Silence the Drill"

    aput-object v3, v2, v6

    const-string v3, "DESTROY_STATION"

    aput-object v3, v2, v7

    const-string v3, "Destroy the unmanned drilling station disturbing a nearby nesting ground."

    aput-object v3, v2, v8

    const-string v3, "The drilling signal has stopped. The nest can rest."

    aput-object v3, v2, v9

    const/4 v3, 0x5

    .line 61
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string v4, "Drilling Station"

    aput-object v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const/4 v2, 0x7

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "kretari"

    aput-object v3, v2, v5

    const-string v3, "Return the Young"

    aput-object v3, v2, v6

    const-string v3, "RESCUE"

    aput-object v3, v2, v7

    const-string v3, "Amends contract: your attack scattered a brood travel pod. Rescue the young before the cold reaches them."

    aput-object v3, v2, v8

    const-string v3, "The young are safe. The Brood holds your new signal beside the old harm."

    aput-object v3, v2, v9

    const/4 v3, 0x5

    .line 62
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string v4, ""

    aput-object v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const/4 v2, 0x7

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "kretari"

    aput-object v3, v2, v5

    const-string v3, "Quiet the Nest"

    aput-object v3, v2, v6

    const-string v3, "DEFEND_ZONE"

    aput-object v3, v2, v7

    const-string v3, "Amends contract: your weapons disturbed a nest transit. Defend the marked zone while brood carriers regroup."

    aput-object v3, v2, v8

    const-string v3, "The carriers regrouped without loss. The nest has heard your repair."

    aput-object v3, v2, v9

    const/4 v3, 0x5

    .line 63
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string v4, ""

    aput-object v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const/4 v2, 0x7

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "varn"

    aput-object v3, v2, v5

    const-string v3, "Vault Transfer"

    aput-object v3, v2, v6

    const-string v3, "ESCORT"

    aput-object v3, v2, v7

    const-string v3, "Escort a sealed Varn vault transport between two insured docks. Keep the cargo intact for the full route."

    aput-object v3, v2, v8

    const-string v3, "Delivery recorded without loss. Your fee has cleared."

    aput-object v3, v2, v9

    const/4 v3, 0x5

    .line 64
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string v4, "Varn vault transport"

    aput-object v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const/4 v2, 0x7

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "varn"

    aput-object v3, v2, v5

    const-string v3, "Recover the Account"

    aput-object v3, v2, v6

    const-string v3, "FIND_OBJECT"

    aput-object v3, v2, v7

    const-string v3, "Find a lost contract ledger in the marked debris field. The Syndicate requires the original record."

    aput-object v3, v2, v8

    const-string v3, "Ledger recovered. The account is reconciled."

    aput-object v3, v2, v9

    const/4 v3, 0x5

    .line 65
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string v4, ""

    aput-object v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const/4 v2, 0x7

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "varn"

    aput-object v3, v2, v5

    const-string v3, "Cargo Margin"

    aput-object v3, v2, v6

    const-string v3, "GATHER_AND_SELL"

    aput-object v3, v2, v7

    const-string v3, "Gather saleable freight from the listed caches and sell it through the approved Varn exchange."

    aput-object v3, v2, v8

    const-string v3, "The exchange confirms the sale. Your margin is settled."

    aput-object v3, v2, v9

    const/4 v3, 0x5

    .line 66
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string v4, ""

    aput-object v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const/4 v2, 0x7

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "varn"

    aput-object v3, v2, v5

    const-string v3, "Contract Enforcer"

    aput-object v3, v2, v6

    const-string v3, "BOUNTY"

    aput-object v3, v2, v7

    const-string v3, "A known contract breaker has a bounty on their ship. Collect the fee and close the file."

    aput-object v3, v2, v8

    const-string v3, "The file is closed. The agreed payment is yours."

    aput-object v3, v2, v9

    const/4 v3, 0x5

    .line 67
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string v4, "Contract Breaker"

    aput-object v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const/4 v2, 0x7

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "varn"

    aput-object v3, v2, v5

    const-string v3, "Route Audit"

    aput-object v3, v2, v6

    const-string v3, "SCAN_CIVIL"

    aput-object v3, v2, v7

    const-string v3, "Scan civilian traffic near the insured corridor and report route disruptions to the claims office."

    aput-object v3, v2, v8

    const-string v3, "The audit is filed. Insured traffic can proceed."

    aput-object v3, v2, v9

    const/4 v3, 0x5

    .line 68
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string v4, ""

    aput-object v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const/4 v2, 0x7

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "varn"

    aput-object v3, v2, v5

    const-string v3, "Secure the Dock"

    aput-object v3, v2, v6

    const-string v3, "DEFEND_ZONE"

    aput-object v3, v2, v7

    const-string v3, "Hold the marked transfer zone until the dock\'s cargo cranes finish their scheduled cycle."

    aput-object v3, v2, v8

    const-string v3, "Transfer zone secured. No claims were opened."

    aput-object v3, v2, v9

    const/4 v3, 0x5

    .line 69
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string v4, ""

    aput-object v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const/4 v2, 0x7

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "varn"

    aput-object v3, v2, v5

    const-string v3, "Repaid Losses"

    aput-object v3, v2, v6

    const-string v3, "GATHER_AND_SELL"

    aput-object v3, v2, v7

    const-string v3, "Amends contract: your seizure voided a Varn cargo policy. Recover the marked goods and sell them through the claim desk."

    aput-object v3, v2, v8

    const-string v3, "The claim desk accepted the recovered value. Your liability has decreased."

    aput-object v3, v2, v9

    const/4 v3, 0x5

    .line 70
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string v4, ""

    aput-object v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const/4 v2, 0x7

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "varn"

    aput-object v3, v2, v5

    const-string v3, "Claim Escort"

    aput-object v3, v2, v6

    const-string v3, "ESCORT"

    aput-object v3, v2, v7

    const-string v3, "Amends contract: your attack stranded a Varn assessor. Escort the claims shuttle as it pays affected carriers."

    aput-object v3, v2, v8

    const-string v3, "The shuttle completed its route. The claimants have been paid."

    aput-object v3, v2, v9

    const/4 v3, 0x5

    .line 71
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string v4, "Varn vault transport"

    aput-object v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x20

    const/4 v2, 0x7

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "ironclad"

    aput-object v3, v2, v5

    const-string v3, "Rig Guard"

    aput-object v3, v2, v6

    const-string v3, "DEFEND_ZONE"

    aput-object v3, v2, v7

    const-string v3, "Hold the marked mining rig zone while the shift crew completes a repair cycle."

    aput-object v3, v2, v8

    const-string v3, "The rig is working and the crew is back on shift."

    aput-object v3, v2, v9

    const/4 v3, 0x5

    .line 72
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string v4, ""

    aput-object v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x21

    const/4 v2, 0x7

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "ironclad"

    aput-object v3, v2, v5

    const-string v3, "Evac Escort"

    aput-object v3, v2, v6

    const-string v3, "ESCORT"

    aput-object v3, v2, v7

    const-string v3, "Escort a settlement evacuation shuttle past the belt\'s unstable debris."

    aput-object v3, v2, v8

    const-string v3, "The shuttle reached shelter with its passengers safe."

    aput-object v3, v2, v9

    const/4 v3, 0x5

    .line 73
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string v4, "Evacuation shuttle"

    aput-object v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x22

    const/4 v2, 0x7

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "ironclad"

    aput-object v3, v2, v5

    const-string v3, "Shift Bounty"

    aput-object v3, v2, v6

    const-string v3, "BOUNTY"

    aput-object v3, v2, v7

    const-string v3, "A Reaver raider has been hitting work crews between shifts. Claim the Militia bounty."

    aput-object v3, v2, v8

    const-string v3, "The raider is gone. Workers can cross the belt again."

    aput-object v3, v2, v9

    const/4 v3, 0x5

    .line 74
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string v4, "Shift Raider"

    aput-object v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x23

    const/4 v2, 0x7

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "ironclad"

    aput-object v3, v2, v5

    const-string v3, "Scrap Returns"

    aput-object v3, v2, v6

    const-string v3, "GATHER_AND_SELL"

    aput-object v3, v2, v7

    const-string v3, "Gather usable hull scrap from the listed wrecks and sell it to the settlement workshop."

    aput-object v3, v2, v8

    const-string v3, "The workshop bought the scrap. Those parts will keep a rig running."

    aput-object v3, v2, v9

    const/4 v3, 0x5

    .line 75
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string v4, ""

    aput-object v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x24

    const/4 v2, 0x7

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "ironclad"

    aput-object v3, v2, v5

    const-string v3, "Missing Tool Crate"

    aput-object v3, v2, v6

    const-string v3, "FIND_OBJECT"

    aput-object v3, v2, v7

    const-string v3, "Find the missing workshop tool crate before the next repair shift starts."

    aput-object v3, v2, v8

    const-string v3, "The tools are back in the hands of the crews."

    aput-object v3, v2, v9

    const/4 v3, 0x5

    .line 76
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string v4, ""

    aput-object v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x25

    const/4 v2, 0x7

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "ironclad"

    aput-object v3, v2, v5

    const-string v3, "Protect the Miners"

    aput-object v3, v2, v6

    const-string v3, "DEFEND_CIVILIANS"

    aput-object v3, v2, v7

    const-string v3, "Hostile ships are approaching a civilian mining crew. Drive them away before anyone is hurt."

    aput-object v3, v2, v8

    const-string v3, "The miners finished their shift and returned home."

    aput-object v3, v2, v9

    const/4 v3, 0x5

    .line 77
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string v4, ""

    aput-object v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x26

    const/4 v2, 0x7

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "ironclad"

    aput-object v3, v2, v5

    const-string v3, "Hold the Shelter"

    aput-object v3, v2, v6

    const-string v3, "DEFEND_ZONE"

    aput-object v3, v2, v7

    const-string v3, "Amends contract: your attack damaged a settlement power shelter. Defend the marked zone while workers restore it."

    aput-object v3, v2, v8

    const-string v3, "The shelter is holding again. The settlement has room to trust you."

    aput-object v3, v2, v9

    const/4 v3, 0x5

    .line 78
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string v4, ""

    aput-object v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x27

    const/4 v2, 0x7

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "ironclad"

    aput-object v3, v2, v5

    const-string v3, "Mine Rescue"

    aput-object v3, v2, v6

    const-string v3, "RESCUE"

    aput-object v3, v2, v7

    const-string v3, "Amends contract: workers were trapped after your strike damaged their rig. Rescue the crew before the air runs out."

    aput-object v3, v2, v8

    const-string v3, "The workers are out. Dax says that counts for something."

    aput-object v3, v2, v9

    const/4 v3, 0x5

    .line 79
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string v4, ""

    aput-object v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x28

    const/4 v2, 0x7

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "helion"

    aput-object v3, v2, v5

    const-string v3, "Courier Window"

    aput-object v3, v2, v6

    const-string v3, "ESCORT"

    aput-object v3, v2, v7

    const-string v3, "Escort a Helion courier through the scheduled transit window. Keep the route clear until delivery."

    aput-object v3, v2, v8

    const-string v3, "On-time delivery. I knew that flight plan had a good pilot."

    aput-object v3, v2, v9

    const/4 v3, 0x5

    .line 80
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string v4, "Helion courier"

    aput-object v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x29

    const/4 v2, 0x7

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "helion"

    aput-object v3, v2, v5

    const-string v3, "Trade Boost"

    aput-object v3, v2, v6

    const-string v3, "GATHER_AND_SELL"

    aput-object v3, v2, v7

    const-string v3, "Gather listed power cells from the route caches and sell them through a Helion station exchange."

    aput-object v3, v2, v8

    const-string v3, "The exchange cleared the cargo. Nice work keeping the supply chain moving."

    aput-object v3, v2, v9

    const/4 v3, 0x5

    .line 81
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string v4, ""

    aput-object v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x2a

    const/4 v2, 0x7

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "helion"

    aput-object v3, v2, v5

    const-string v3, "Lane Survey"

    aput-object v3, v2, v6

    const-string v3, "SCAN_CIVIL"

    aput-object v3, v2, v7

    const-string v3, "Scan civilian ships crossing the trade junction and file their route status with dispatch."

    aput-object v3, v2, v8

    const-string v3, "Traffic is mapped and the lane report is in. Thanks for the clean survey."

    aput-object v3, v2, v9

    const/4 v3, 0x5

    .line 82
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string v4, ""

    aput-object v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x2b

    const/4 v2, 0x7

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "helion"

    aput-object v3, v2, v5

    const-string v3, "Clear the Route"

    aput-object v3, v2, v6

    const-string v3, "KILL_ENEMY_TYPE"

    aput-object v3, v2, v7

    const-string v3, "Remove the hostile raider type disrupting the courier lanes. Dispatch has marked the search area."

    aput-object v3, v2, v8

    const-string v3, "The route is clear. Couriers can keep their promised windows."

    aput-object v3, v2, v9

    const/4 v3, 0x5

    .line 83
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string v4, ""

    aput-object v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x2c

    const/4 v2, 0x7

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "helion"

    aput-object v3, v2, v5

    const-string v3, "Beacon Recovery"

    aput-object v3, v2, v6

    const-string v3, "FIND_OBJECT"

    aput-object v3, v2, v7

    const-string v3, "Find a lost navigation beacon near the outer route split and return its signal to dispatch."

    aput-object v3, v2, v8

    const-string v3, "Beacon found and logged. The route map is useful again."

    aput-object v3, v2, v9

    const/4 v3, 0x5

    .line 84
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string v4, ""

    aput-object v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x2d

    const/4 v2, 0x7

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "helion"

    aput-object v3, v2, v5

    const-string v3, "Passenger Safety"

    aput-object v3, v2, v6

    const-string v3, "DEFEND_CIVILIANS"

    aput-object v3, v2, v7

    const-string v3, "Hostile craft are threatening a civilian passenger line. Defend the ships until they leave the danger zone."

    aput-object v3, v2, v8

    const-string v3, "All passengers are clear. That\'s a good day\'s flying."

    aput-object v3, v2, v9

    const/4 v3, 0x5

    .line 85
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string v4, ""

    aput-object v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x2e

    const/4 v2, 0x7

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "helion"

    aput-object v3, v2, v5

    const-string v3, "Passenger Recovery"

    aput-object v3, v2, v6

    const-string v3, "RESCUE"

    aput-object v3, v2, v7

    const-string v3, "Amends contract: your attack scattered a Helion passenger shuttle. Rescue the survivors from the marked area."

    aput-object v3, v2, v8

    const-string v3, "The passengers are safe. I have marked the route record as repaired."

    aput-object v3, v2, v9

    const/4 v3, 0x5

    .line 86
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string v4, ""

    aput-object v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x2f

    const/4 v2, 0x7

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "helion"

    aput-object v3, v2, v5

    const-string v3, "Restitution Run"

    aput-object v3, v2, v6

    const-string v3, "ESCORT"

    aput-object v3, v2, v7

    const-string v3, "Amends contract: your strike delayed a food convoy. Escort the replacement cargo to the settlement dock."

    aput-object v3, v2, v8

    const-string v3, "The food arrived before stores ran low. That matters more than the paperwork."

    aput-object v3, v2, v9

    const/4 v3, 0x5

    .line 87
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string v4, "Helion courier"

    aput-object v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x30

    const/4 v2, 0x7

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "warden"

    aput-object v3, v2, v5

    const-string v3, "Beacon Cache"

    aput-object v3, v2, v6

    const-string v3, "FIND_OBJECT"

    aput-object v3, v2, v7

    const-string v3, "Find the route beacon lost beyond the marked passage. Its signal is needed by every ship following you."

    aput-object v3, v2, v8

    const-string v3, "The beacon is back online. Passage is clear again."

    aput-object v3, v2, v9

    const/4 v3, 0x5

    .line 88
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string v4, ""

    aput-object v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x31

    const/4 v2, 0x7

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "warden"

    aput-object v3, v2, v5

    const-string v3, "Open-Lane Scan"

    aput-object v3, v2, v6

    const-string v3, "SCAN_CIVIL"

    aput-object v3, v2, v7

    const-string v3, "Scan civilian traffic along the frontier corridor and report any ship requesting assistance."

    aput-object v3, v2, v8

    const-string v3, "Every signal is accounted for. The route remains open."

    aput-object v3, v2, v9

    const/4 v3, 0x5

    .line 89
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string v4, ""

    aput-object v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x32

    const/4 v2, 0x7

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "warden"

    aput-object v3, v2, v5

    const-string v3, "Relief Convoy"

    aput-object v3, v2, v6

    const-string v3, "ESCORT"

    aput-object v3, v2, v7

    const-string v3, "Escort a relief hauler to an isolated settlement. Keep the ship on course until it docks."

    aput-object v3, v2, v8

    const-string v3, "The relief cargo reached the settlement. Good flying."

    aput-object v3, v2, v9

    const/4 v3, 0x5

    .line 90
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string v4, "Relief hauler"

    aput-object v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x33

    const/4 v2, 0x7

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "warden"

    aput-object v3, v2, v5

    const-string v3, "Civilian Screen"

    aput-object v3, v2, v6

    const-string v3, "DEFEND_CIVILIANS"

    aput-object v3, v2, v7

    const-string v3, "A hostile ship is closing on civilian travelers. Defend them until they can leave the area."

    aput-object v3, v2, v8

    const-string v3, "The travelers are safe and the lane is open."

    aput-object v3, v2, v9

    const/4 v3, 0x5

    .line 91
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string v4, ""

    aput-object v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x34

    const/4 v2, 0x7

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "warden"

    aput-object v3, v2, v5

    const-string v3, "Drifter Bounty"

    aput-object v3, v2, v6

    const-string v3, "BOUNTY"

    aput-object v3, v2, v7

    const-string v3, "A raider is stalking distress beacons on the frontier. Claim the Authority\'s posted bounty."

    aput-object v3, v2, v8

    const-string v3, "The raider is gone. Fewer ships will have to call for help."

    aput-object v3, v2, v9

    const/4 v3, 0x5

    .line 92
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string v4, "Beacon Stalker"

    aput-object v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x35

    const/4 v2, 0x7

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "warden"

    aput-object v3, v2, v5

    const-string v3, "Rescue Kit Trade"

    aput-object v3, v2, v6

    const-string v3, "GATHER_AND_SELL"

    aput-object v3, v2, v7

    const-string v3, "Gather rescue kits from the listed caches and sell them to the Authority\'s remote outpost."

    aput-object v3, v2, v8

    const-string v3, "The outpost has stocked its rescue lockers. Thanks for the practical help."

    aput-object v3, v2, v9

    const/4 v3, 0x5

    .line 93
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string v4, ""

    aput-object v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x36

    const/4 v2, 0x7

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "warden"

    aput-object v3, v2, v5

    const-string v3, "Beacon Repair"

    aput-object v3, v2, v6

    const-string v3, "DEFEND_ZONE"

    aput-object v3, v2, v7

    const-string v3, "Amends contract: your attack damaged a public route relay. Defend its zone while Authority crews restore the beacon."

    aput-object v3, v2, v8

    const-string v3, "The route beacon is back. Your amends have helped keep passage public."

    aput-object v3, v2, v9

    const/4 v3, 0x5

    .line 94
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string v4, ""

    aput-object v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x37

    const/4 v2, 0x7

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "warden"

    aput-object v3, v2, v5

    const-string v3, "Stranded Passengers"

    aput-object v3, v2, v6

    const-string v3, "RESCUE"

    aput-object v3, v2, v7

    const-string v3, "Amends contract: your fire left travelers stranded beyond the route marker. Rescue them and bring them to safety."

    aput-object v3, v2, v8

    const-string v3, "The passengers are safe. I\'ll record that you chose to repair the harm."

    aput-object v3, v2, v9

    const/4 v3, 0x5

    .line 95
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string v4, ""

    aput-object v4, v2, v3

    aput-object v2, v0, v1

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModRepData;->CONTRACTS:[[Ljava/lang/Object;

    .line 98
    const/4 v0, 0x7

    new-array v0, v0, [[Ljava/lang/Object;

    new-array v1, v8, [Ljava/lang/Object;

    const-string v2, "Aegis Longwatch"

    aput-object v2, v1, v5

    .line 99
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v6

    const-string v2, "A Republic railgun tuned for patient command crews: its clean white coil flash marks a shot designed to end a threat before it reaches a convoy."

    aput-object v2, v1, v7

    aput-object v1, v0, v5

    new-array v1, v8, [Ljava/lang/Object;

    const-string v2, "Redhand Rotary"

    aput-object v2, v1, v5

    .line 100
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v6

    const-string v2, "A captured rotary gun rebuilt with scavenged feed drums. It spits a brutal amber storm, and Mara insists every round is already paid for."

    aput-object v2, v1, v7

    aput-object v1, v0, v6

    new-array v1, v8, [Ljava/lang/Object;

    const-string v2, "Mnemic Spore"

    aput-object v2, v1, v5

    .line 101
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v6

    const-string v2, "A living focusing array remembers its target through every pulse. The Brood lends it only to a pilot who has protected the young."

    aput-object v2, v1, v7

    aput-object v1, v0, v7

    new-array v1, v8, [Ljava/lang/Object;

    const-string v2, "Quiet Clause"

    aput-object v2, v1, v5

    .line 102
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v6

    const-string v2, "A precision railgun hidden inside a polished Varn mount. Its pale charge gives no warning until a contract breaker is already out of options."

    aput-object v2, v1, v7

    aput-object v1, v0, v8

    new-array v1, v8, [Ljava/lang/Object;

    const-string v2, "Last Shift"

    aput-object v2, v1, v5

    .line 103
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v6

    const-string v2, "An ironclad siege cannon rebuilt from mining hardware. Its heavy orange shot is reserved for threats that put a settlement at risk."

    aput-object v2, v1, v7

    aput-object v1, v0, v9

    const/4 v1, 0x5

    new-array v2, v8, [Ljava/lang/Object;

    const-string v3, "Sunlane Arc"

    aput-object v3, v2, v5

    const/4 v3, 0x5

    .line 104
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    const-string v3, "A fast-cycling arc projector built for route defense. Its blue-white discharge disables a threat before it can close on a courier."

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-array v2, v8, [Ljava/lang/Object;

    const-string v3, "Open Passage"

    aput-object v3, v2, v5

    .line 105
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    const-string v3, "An Authority railgun with a blue-white charge and a narrow shot. Rangers reserve it for threats that block a public route."

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModRepData;->SECRET_WEAPON:[[Ljava/lang/Object;

    .line 108
    const/4 v0, 0x7

    new-array v0, v0, [[Ljava/lang/String;

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "SRS Resolute"

    aput-object v2, v1, v5

    const-string v2, "Battlecruiser"

    aput-object v2, v1, v6

    const-string v2, "Fleet escort"

    aput-object v2, v1, v7

    const-string v2, "Layered shield-emitter lattice around a central command spine"

    aput-object v2, v1, v8

    const-string v2, "The Resolute takes the first strike in a mixed patrol and holds position until every Republic vessel can withdraw."

    aput-object v2, v1, v9

    aput-object v1, v0, v5

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "Pillager\'s Due"

    aput-object v2, v1, v5

    const-string v2, "Battleship"

    aput-object v2, v1, v6

    const-string v2, "Close-range raider"

    aput-object v2, v1, v7

    const-string v2, "A welded ram prow wrapped around a salvaged furnace core"

    aput-object v2, v1, v8

    const-string v2, "Crews earn the Due by surviving a season aboard it; its mismatched armor is a record of every ship that failed to take it."

    aput-object v2, v1, v9

    aput-object v1, v0, v6

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "Cradle of Echoes"

    aput-object v2, v1, v5

    const-string v2, "Cruiser"

    aput-object v2, v1, v6

    const-string v2, "Brood courier"

    aput-object v2, v1, v7

    const-string v2, "Twin nest pods linked by a living signal spine"

    aput-object v2, v1, v8

    const-string v2, "The Cradle carries memory keepers between nests, its paired pods pulsing with the shared history of every broodling aboard."

    aput-object v2, v1, v9

    aput-object v1, v0, v7

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "Indemnity Crown"

    aput-object v2, v1, v5

    const-string v2, "Battlecruiser"

    aput-object v2, v1, v6

    const-string v2, "Convoy interdiction"

    aput-object v2, v1, v7

    const-string v2, "A sealed cargo bastion surrounding a concealed command core"

    aput-object v2, v1, v8

    const-string v2, "The ship appears on the ledger as a secure transfer vessel; its protected core ensures the Syndicate\'s most important cargo arrives intact."

    aput-object v2, v1, v9

    aput-object v1, v0, v8

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "Foundry Sentinel"

    aput-object v2, v1, v5

    const-string v2, "Battleship"

    aput-object v2, v1, v6

    const-string v2, "Settlement defender"

    aput-object v2, v1, v7

    const-string v2, "Replaceable armor bulwarks built around a central repair spine"

    aput-object v2, v1, v8

    const-string v2, "The Sentinel is assembled from workshop-standard plates, so a settlement can mend it even when the nearest shipyard is weeks away."

    aput-object v2, v1, v9

    aput-object v1, v0, v9

    const/4 v1, 0x5

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "Far Meridian"

    aput-object v3, v2, v5

    const-string v3, "Battlecruiser"

    aput-object v3, v2, v6

    const-string v3, "Long-range route runner"

    aput-object v3, v2, v7

    const-string v3, "Paired solar collector fins feeding a bright central drive spine"

    aput-object v3, v2, v8

    const-string v3, "The Far Meridian keeps a convoy moving across distant systems, with collectors shaped to work far from a friendly station."

    aput-object v3, v2, v9

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "Wayfarer Prime"

    aput-object v3, v2, v5

    const-string v3, "Cruiser"

    aput-object v3, v2, v6

    const-string v3, "Deep-range patrol"

    aput-object v3, v2, v7

    const-string v3, "A reinforced ram nose surrounding a long-range beacon array"

    aput-object v3, v2, v8

    const-string v3, "The Wayfarer Prime works beyond reliable comms, leaving a clear route marker wherever it finds a stranded crew."

    aput-object v3, v2, v9

    aput-object v2, v0, v1

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModRepData;->SECRET_SHIP:[[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
