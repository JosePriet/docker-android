.class final enum Lfr/testudo/spacecorsair/mod/ModEvents$Objective;
.super Ljava/lang/Enum;
.source "ModEvents.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfr/testudo/spacecorsair/mod/ModEvents;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "Objective"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lfr/testudo/spacecorsair/mod/ModEvents$Objective;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lfr/testudo/spacecorsair/mod/ModEvents$Objective;

.field public static final enum AMBUSH:Lfr/testudo/spacecorsair/mod/ModEvents$Objective;

.field public static final enum BLOCKADE:Lfr/testudo/spacecorsair/mod/ModEvents$Objective;

.field public static final enum BOUNTY:Lfr/testudo/spacecorsair/mod/ModEvents$Objective;

.field public static final enum DEFEND:Lfr/testudo/spacecorsair/mod/ModEvents$Objective;

.field public static final enum ESCORT:Lfr/testudo/spacecorsair/mod/ModEvents$Objective;

.field public static final enum FACTION_WAR:Lfr/testudo/spacecorsair/mod/ModEvents$Objective;

.field public static final enum RACE:Lfr/testudo/spacecorsair/mod/ModEvents$Objective;

.field public static final enum RESCUE:Lfr/testudo/spacecorsair/mod/ModEvents$Objective;

.field public static final enum SALVAGE:Lfr/testudo/spacecorsair/mod/ModEvents$Objective;


# instance fields
.field final action:Lfr/testudo/spacecorsair/mod/ModEvents$Action;

.field final actor:Lfr/testudo/spacecorsair/mod/ModEvents$Actor;

.field final brief:Ljava/lang/String;

.field final triggers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lfr/testudo/spacecorsair/mod/ModEvents$Trigger;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private static synthetic $values()[Lfr/testudo/spacecorsair/mod/ModEvents$Objective;
    .registers 3

    .prologue
    .line 340
    const/16 v0, 0x9

    new-array v0, v0, [Lfr/testudo/spacecorsair/mod/ModEvents$Objective;

    const/4 v1, 0x0

    sget-object v2, Lfr/testudo/spacecorsair/mod/ModEvents$Objective;->ESCORT:Lfr/testudo/spacecorsair/mod/ModEvents$Objective;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lfr/testudo/spacecorsair/mod/ModEvents$Objective;->DEFEND:Lfr/testudo/spacecorsair/mod/ModEvents$Objective;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lfr/testudo/spacecorsair/mod/ModEvents$Objective;->AMBUSH:Lfr/testudo/spacecorsair/mod/ModEvents$Objective;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lfr/testudo/spacecorsair/mod/ModEvents$Objective;->SALVAGE:Lfr/testudo/spacecorsair/mod/ModEvents$Objective;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Lfr/testudo/spacecorsair/mod/ModEvents$Objective;->BOUNTY:Lfr/testudo/spacecorsair/mod/ModEvents$Objective;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Lfr/testudo/spacecorsair/mod/ModEvents$Objective;->BLOCKADE:Lfr/testudo/spacecorsair/mod/ModEvents$Objective;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lfr/testudo/spacecorsair/mod/ModEvents$Objective;->FACTION_WAR:Lfr/testudo/spacecorsair/mod/ModEvents$Objective;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lfr/testudo/spacecorsair/mod/ModEvents$Objective;->RESCUE:Lfr/testudo/spacecorsair/mod/ModEvents$Objective;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lfr/testudo/spacecorsair/mod/ModEvents$Objective;->RACE:Lfr/testudo/spacecorsair/mod/ModEvents$Objective;

    aput-object v2, v0, v1

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 13

    .prologue
    const/4 v12, 0x3

    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v2, 0x0

    .line 341
    new-instance v0, Lfr/testudo/spacecorsair/mod/ModEvents$Objective;

    const-string v1, "ESCORT"

    sget-object v3, Lfr/testudo/spacecorsair/mod/ModEvents$Actor;->HAULER:Lfr/testudo/spacecorsair/mod/ModEvents$Actor;

    sget-object v4, Lfr/testudo/spacecorsair/mod/ModEvents$Action;->ESCORT:Lfr/testudo/spacecorsair/mod/ModEvents$Action;

    const-string v5, "Stay with the hauler until it reaches the dock."

    new-array v6, v11, [Lfr/testudo/spacecorsair/mod/ModEvents$Trigger;

    sget-object v7, Lfr/testudo/spacecorsair/mod/ModEvents$Trigger;->ENTRY:Lfr/testudo/spacecorsair/mod/ModEvents$Trigger;

    aput-object v7, v6, v2

    sget-object v7, Lfr/testudo/spacecorsair/mod/ModEvents$Trigger;->STANDING:Lfr/testudo/spacecorsair/mod/ModEvents$Trigger;

    aput-object v7, v6, v10

    invoke-direct/range {v0 .. v6}, Lfr/testudo/spacecorsair/mod/ModEvents$Objective;-><init>(Ljava/lang/String;ILfr/testudo/spacecorsair/mod/ModEvents$Actor;Lfr/testudo/spacecorsair/mod/ModEvents$Action;Ljava/lang/String;[Lfr/testudo/spacecorsair/mod/ModEvents$Trigger;)V

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModEvents$Objective;->ESCORT:Lfr/testudo/spacecorsair/mod/ModEvents$Objective;

    .line 342
    new-instance v3, Lfr/testudo/spacecorsair/mod/ModEvents$Objective;

    const-string v4, "DEFEND"

    sget-object v6, Lfr/testudo/spacecorsair/mod/ModEvents$Actor;->STATION:Lfr/testudo/spacecorsair/mod/ModEvents$Actor;

    sget-object v7, Lfr/testudo/spacecorsair/mod/ModEvents$Action;->HOLD:Lfr/testudo/spacecorsair/mod/ModEvents$Action;

    const-string v8, "Keep the outpost intact until its guns come back."

    new-array v9, v11, [Lfr/testudo/spacecorsair/mod/ModEvents$Trigger;

    sget-object v0, Lfr/testudo/spacecorsair/mod/ModEvents$Trigger;->TIME:Lfr/testudo/spacecorsair/mod/ModEvents$Trigger;

    aput-object v0, v9, v2

    sget-object v0, Lfr/testudo/spacecorsair/mod/ModEvents$Trigger;->STANDING:Lfr/testudo/spacecorsair/mod/ModEvents$Trigger;

    aput-object v0, v9, v10

    move v5, v10

    invoke-direct/range {v3 .. v9}, Lfr/testudo/spacecorsair/mod/ModEvents$Objective;-><init>(Ljava/lang/String;ILfr/testudo/spacecorsair/mod/ModEvents$Actor;Lfr/testudo/spacecorsair/mod/ModEvents$Action;Ljava/lang/String;[Lfr/testudo/spacecorsair/mod/ModEvents$Trigger;)V

    sput-object v3, Lfr/testudo/spacecorsair/mod/ModEvents$Objective;->DEFEND:Lfr/testudo/spacecorsair/mod/ModEvents$Objective;

    .line 343
    new-instance v3, Lfr/testudo/spacecorsair/mod/ModEvents$Objective;

    const-string v4, "AMBUSH"

    sget-object v6, Lfr/testudo/spacecorsair/mod/ModEvents$Actor;->RAIDER:Lfr/testudo/spacecorsair/mod/ModEvents$Actor;

    sget-object v7, Lfr/testudo/spacecorsair/mod/ModEvents$Action;->CLEAR:Lfr/testudo/spacecorsair/mod/ModEvents$Action;

    const-string v8, "Raiders off your bow. Break the ambush."

    new-array v9, v11, [Lfr/testudo/spacecorsair/mod/ModEvents$Trigger;

    sget-object v0, Lfr/testudo/spacecorsair/mod/ModEvents$Trigger;->ENTRY:Lfr/testudo/spacecorsair/mod/ModEvents$Trigger;

    aput-object v0, v9, v2

    sget-object v0, Lfr/testudo/spacecorsair/mod/ModEvents$Trigger;->KILLS:Lfr/testudo/spacecorsair/mod/ModEvents$Trigger;

    aput-object v0, v9, v10

    move v5, v11

    invoke-direct/range {v3 .. v9}, Lfr/testudo/spacecorsair/mod/ModEvents$Objective;-><init>(Ljava/lang/String;ILfr/testudo/spacecorsair/mod/ModEvents$Actor;Lfr/testudo/spacecorsair/mod/ModEvents$Action;Ljava/lang/String;[Lfr/testudo/spacecorsair/mod/ModEvents$Trigger;)V

    sput-object v3, Lfr/testudo/spacecorsair/mod/ModEvents$Objective;->AMBUSH:Lfr/testudo/spacecorsair/mod/ModEvents$Objective;

    .line 344
    new-instance v3, Lfr/testudo/spacecorsair/mod/ModEvents$Objective;

    const-string v4, "SALVAGE"

    sget-object v6, Lfr/testudo/spacecorsair/mod/ModEvents$Actor;->WRECK:Lfr/testudo/spacecorsair/mod/ModEvents$Actor;

    sget-object v7, Lfr/testudo/spacecorsair/mod/ModEvents$Action;->SALVAGE:Lfr/testudo/spacecorsair/mod/ModEvents$Action;

    const-string v8, "Cut the marked wrecks open. See what survived."

    new-array v9, v11, [Lfr/testudo/spacecorsair/mod/ModEvents$Trigger;

    sget-object v0, Lfr/testudo/spacecorsair/mod/ModEvents$Trigger;->ENTRY:Lfr/testudo/spacecorsair/mod/ModEvents$Trigger;

    aput-object v0, v9, v2

    sget-object v0, Lfr/testudo/spacecorsair/mod/ModEvents$Trigger;->TIME:Lfr/testudo/spacecorsair/mod/ModEvents$Trigger;

    aput-object v0, v9, v10

    move v5, v12

    invoke-direct/range {v3 .. v9}, Lfr/testudo/spacecorsair/mod/ModEvents$Objective;-><init>(Ljava/lang/String;ILfr/testudo/spacecorsair/mod/ModEvents$Actor;Lfr/testudo/spacecorsair/mod/ModEvents$Action;Ljava/lang/String;[Lfr/testudo/spacecorsair/mod/ModEvents$Trigger;)V

    sput-object v3, Lfr/testudo/spacecorsair/mod/ModEvents$Objective;->SALVAGE:Lfr/testudo/spacecorsair/mod/ModEvents$Objective;

    .line 345
    new-instance v3, Lfr/testudo/spacecorsair/mod/ModEvents$Objective;

    const-string v4, "BOUNTY"

    const/4 v5, 0x4

    sget-object v6, Lfr/testudo/spacecorsair/mod/ModEvents$Actor;->RAIDER:Lfr/testudo/spacecorsair/mod/ModEvents$Actor;

    sget-object v7, Lfr/testudo/spacecorsair/mod/ModEvents$Action;->CLEAR:Lfr/testudo/spacecorsair/mod/ModEvents$Action;

    const-string v8, "Take down the marked cutter. The bounty is yours."

    new-array v9, v11, [Lfr/testudo/spacecorsair/mod/ModEvents$Trigger;

    sget-object v0, Lfr/testudo/spacecorsair/mod/ModEvents$Trigger;->KILLS:Lfr/testudo/spacecorsair/mod/ModEvents$Trigger;

    aput-object v0, v9, v2

    sget-object v0, Lfr/testudo/spacecorsair/mod/ModEvents$Trigger;->STANDING:Lfr/testudo/spacecorsair/mod/ModEvents$Trigger;

    aput-object v0, v9, v10

    invoke-direct/range {v3 .. v9}, Lfr/testudo/spacecorsair/mod/ModEvents$Objective;-><init>(Ljava/lang/String;ILfr/testudo/spacecorsair/mod/ModEvents$Actor;Lfr/testudo/spacecorsair/mod/ModEvents$Action;Ljava/lang/String;[Lfr/testudo/spacecorsair/mod/ModEvents$Trigger;)V

    sput-object v3, Lfr/testudo/spacecorsair/mod/ModEvents$Objective;->BOUNTY:Lfr/testudo/spacecorsair/mod/ModEvents$Objective;

    .line 346
    new-instance v3, Lfr/testudo/spacecorsair/mod/ModEvents$Objective;

    const-string v4, "BLOCKADE"

    const/4 v5, 0x5

    sget-object v6, Lfr/testudo/spacecorsair/mod/ModEvents$Actor;->POLICE:Lfr/testudo/spacecorsair/mod/ModEvents$Actor;

    sget-object v7, Lfr/testudo/spacecorsair/mod/ModEvents$Action;->EVADE:Lfr/testudo/spacecorsair/mod/ModEvents$Action;

    const-string v8, "Slip past the patrol and reach the far beacon."

    new-array v9, v10, [Lfr/testudo/spacecorsair/mod/ModEvents$Trigger;

    sget-object v0, Lfr/testudo/spacecorsair/mod/ModEvents$Trigger;->POLICE:Lfr/testudo/spacecorsair/mod/ModEvents$Trigger;

    aput-object v0, v9, v2

    invoke-direct/range {v3 .. v9}, Lfr/testudo/spacecorsair/mod/ModEvents$Objective;-><init>(Ljava/lang/String;ILfr/testudo/spacecorsair/mod/ModEvents$Actor;Lfr/testudo/spacecorsair/mod/ModEvents$Action;Ljava/lang/String;[Lfr/testudo/spacecorsair/mod/ModEvents$Trigger;)V

    sput-object v3, Lfr/testudo/spacecorsair/mod/ModEvents$Objective;->BLOCKADE:Lfr/testudo/spacecorsair/mod/ModEvents$Objective;

    .line 347
    new-instance v3, Lfr/testudo/spacecorsair/mod/ModEvents$Objective;

    const-string v4, "FACTION_WAR"

    const/4 v5, 0x6

    sget-object v6, Lfr/testudo/spacecorsair/mod/ModEvents$Actor;->WING:Lfr/testudo/spacecorsair/mod/ModEvents$Actor;

    sget-object v7, Lfr/testudo/spacecorsair/mod/ModEvents$Action;->CLEAR:Lfr/testudo/spacecorsair/mod/ModEvents$Action;

    const-string v8, "Break the enemy wing before it reaches our outpost."

    new-array v9, v11, [Lfr/testudo/spacecorsair/mod/ModEvents$Trigger;

    sget-object v0, Lfr/testudo/spacecorsair/mod/ModEvents$Trigger;->KILLS:Lfr/testudo/spacecorsair/mod/ModEvents$Trigger;

    aput-object v0, v9, v2

    sget-object v0, Lfr/testudo/spacecorsair/mod/ModEvents$Trigger;->STANDING:Lfr/testudo/spacecorsair/mod/ModEvents$Trigger;

    aput-object v0, v9, v10

    invoke-direct/range {v3 .. v9}, Lfr/testudo/spacecorsair/mod/ModEvents$Objective;-><init>(Ljava/lang/String;ILfr/testudo/spacecorsair/mod/ModEvents$Actor;Lfr/testudo/spacecorsair/mod/ModEvents$Action;Ljava/lang/String;[Lfr/testudo/spacecorsair/mod/ModEvents$Trigger;)V

    sput-object v3, Lfr/testudo/spacecorsair/mod/ModEvents$Objective;->FACTION_WAR:Lfr/testudo/spacecorsair/mod/ModEvents$Objective;

    .line 348
    new-instance v3, Lfr/testudo/spacecorsair/mod/ModEvents$Objective;

    const-string v4, "RESCUE"

    const/4 v5, 0x7

    sget-object v6, Lfr/testudo/spacecorsair/mod/ModEvents$Actor;->WRECK:Lfr/testudo/spacecorsair/mod/ModEvents$Actor;

    sget-object v7, Lfr/testudo/spacecorsair/mod/ModEvents$Action;->EXTRACT:Lfr/testudo/spacecorsair/mod/ModEvents$Action;

    const-string v8, "Close on the wrecks. Bring their crews home."

    new-array v9, v12, [Lfr/testudo/spacecorsair/mod/ModEvents$Trigger;

    sget-object v0, Lfr/testudo/spacecorsair/mod/ModEvents$Trigger;->ENTRY:Lfr/testudo/spacecorsair/mod/ModEvents$Trigger;

    aput-object v0, v9, v2

    sget-object v0, Lfr/testudo/spacecorsair/mod/ModEvents$Trigger;->TIME:Lfr/testudo/spacecorsair/mod/ModEvents$Trigger;

    aput-object v0, v9, v10

    sget-object v0, Lfr/testudo/spacecorsair/mod/ModEvents$Trigger;->POLICE:Lfr/testudo/spacecorsair/mod/ModEvents$Trigger;

    aput-object v0, v9, v11

    invoke-direct/range {v3 .. v9}, Lfr/testudo/spacecorsair/mod/ModEvents$Objective;-><init>(Ljava/lang/String;ILfr/testudo/spacecorsair/mod/ModEvents$Actor;Lfr/testudo/spacecorsair/mod/ModEvents$Action;Ljava/lang/String;[Lfr/testudo/spacecorsair/mod/ModEvents$Trigger;)V

    sput-object v3, Lfr/testudo/spacecorsair/mod/ModEvents$Objective;->RESCUE:Lfr/testudo/spacecorsair/mod/ModEvents$Objective;

    .line 349
    new-instance v0, Lfr/testudo/spacecorsair/mod/ModEvents$Objective;

    const-string v1, "RACE"

    const/16 v7, 0x8

    sget-object v3, Lfr/testudo/spacecorsair/mod/ModEvents$Actor;->STATION:Lfr/testudo/spacecorsair/mod/ModEvents$Actor;

    sget-object v4, Lfr/testudo/spacecorsair/mod/ModEvents$Action;->PASS:Lfr/testudo/spacecorsair/mod/ModEvents$Action;

    const-string v5, "Cross the station beacons in order before the window closes."

    new-array v6, v11, [Lfr/testudo/spacecorsair/mod/ModEvents$Trigger;

    sget-object v8, Lfr/testudo/spacecorsair/mod/ModEvents$Trigger;->TIME:Lfr/testudo/spacecorsair/mod/ModEvents$Trigger;

    aput-object v8, v6, v2

    sget-object v2, Lfr/testudo/spacecorsair/mod/ModEvents$Trigger;->ENTRY:Lfr/testudo/spacecorsair/mod/ModEvents$Trigger;

    aput-object v2, v6, v10

    move v2, v7

    invoke-direct/range {v0 .. v6}, Lfr/testudo/spacecorsair/mod/ModEvents$Objective;-><init>(Ljava/lang/String;ILfr/testudo/spacecorsair/mod/ModEvents$Actor;Lfr/testudo/spacecorsair/mod/ModEvents$Action;Ljava/lang/String;[Lfr/testudo/spacecorsair/mod/ModEvents$Trigger;)V

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModEvents$Objective;->RACE:Lfr/testudo/spacecorsair/mod/ModEvents$Objective;

    .line 340
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModEvents$Objective;->$values()[Lfr/testudo/spacecorsair/mod/ModEvents$Objective;

    move-result-object v0

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModEvents$Objective;->$VALUES:[Lfr/testudo/spacecorsair/mod/ModEvents$Objective;

    return-void
.end method

.method private varargs constructor <init>(Ljava/lang/String;ILfr/testudo/spacecorsair/mod/ModEvents$Actor;Lfr/testudo/spacecorsair/mod/ModEvents$Action;Ljava/lang/String;[Lfr/testudo/spacecorsair/mod/ModEvents$Trigger;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lfr/testudo/spacecorsair/mod/ModEvents$Actor;",
            "Lfr/testudo/spacecorsair/mod/ModEvents$Action;",
            "Ljava/lang/String;",
            "[",
            "Lfr/testudo/spacecorsair/mod/ModEvents$Trigger;",
            ")V"
        }
    .end annotation

    .prologue
    .line 356
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 357
    iput-object p3, p0, Lfr/testudo/spacecorsair/mod/ModEvents$Objective;->actor:Lfr/testudo/spacecorsair/mod/ModEvents$Actor;

    .line 358
    iput-object p4, p0, Lfr/testudo/spacecorsair/mod/ModEvents$Objective;->action:Lfr/testudo/spacecorsair/mod/ModEvents$Action;

    .line 359
    iput-object p5, p0, Lfr/testudo/spacecorsair/mod/ModEvents$Objective;->brief:Ljava/lang/String;

    .line 360
    invoke-static {p6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lfr/testudo/spacecorsair/mod/ModEvents$Objective;->triggers:Ljava/util/List;

    .line 361
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lfr/testudo/spacecorsair/mod/ModEvents$Objective;
    .registers 2

    .prologue
    .line 340
    const-class v0, Lfr/testudo/spacecorsair/mod/ModEvents$Objective;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lfr/testudo/spacecorsair/mod/ModEvents$Objective;

    return-object v0
.end method

.method public static values()[Lfr/testudo/spacecorsair/mod/ModEvents$Objective;
    .registers 1

    .prologue
    .line 340
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModEvents$Objective;->$VALUES:[Lfr/testudo/spacecorsair/mod/ModEvents$Objective;

    invoke-virtual {v0}, [Lfr/testudo/spacecorsair/mod/ModEvents$Objective;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lfr/testudo/spacecorsair/mod/ModEvents$Objective;

    return-object v0
.end method


# virtual methods
.method offered(Lfr/testudo/spacecorsair/mod/ModEvents$Context;)Z
    .registers 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 364
    iget-object v2, p0, Lfr/testudo/spacecorsair/mod/ModEvents$Objective;->triggers:Ljava/util/List;

    iget-object v3, p1, Lfr/testudo/spacecorsair/mod/ModEvents$Context;->trigger:Lfr/testudo/spacecorsair/mod/ModEvents$Trigger;

    invoke-interface {v2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_e

    move v0, v1

    .line 368
    :cond_d
    :goto_d
    return v0

    .line 365
    :cond_e
    sget-object v2, Lfr/testudo/spacecorsair/mod/ModEvents$Objective;->FACTION_WAR:Lfr/testudo/spacecorsair/mod/ModEvents$Objective;

    if-ne p0, v2, :cond_34

    iget v2, p1, Lfr/testudo/spacecorsair/mod/ModEvents$Context;->level:I

    const/16 v3, 0x16

    if-lt v2, v3, :cond_32

    iget v2, p1, Lfr/testudo/spacecorsair/mod/ModEvents$Context;->standing:I

    const/16 v3, 0x14

    if-lt v2, v3, :cond_32

    sget-object v2, Lfr/testudo/spacecorsair/mod/ModRep;->REL:[[I

    iget-object v3, p1, Lfr/testudo/spacecorsair/mod/ModEvents$Context;->faction:Ljava/lang/String;

    .line 366
    invoke-static {v3}, Lfr/testudo/spacecorsair/mod/ModRep;->index(Ljava/lang/String;)I

    move-result v3

    aget-object v2, v2, v3

    iget-object v3, p1, Lfr/testudo/spacecorsair/mod/ModEvents$Context;->owner:Ljava/lang/String;

    invoke-static {v3}, Lfr/testudo/spacecorsair/mod/ModRep;->index(Ljava/lang/String;)I

    move-result v3

    aget v2, v2, v3

    if-ltz v2, :cond_d

    :cond_32
    move v0, v1

    goto :goto_d

    .line 367
    :cond_34
    sget-object v2, Lfr/testudo/spacecorsair/mod/ModEvents$Objective;->ESCORT:Lfr/testudo/spacecorsair/mod/ModEvents$Objective;

    if-eq p0, v2, :cond_3c

    sget-object v2, Lfr/testudo/spacecorsair/mod/ModEvents$Objective;->DEFEND:Lfr/testudo/spacecorsair/mod/ModEvents$Objective;

    if-ne p0, v2, :cond_d

    :cond_3c
    iget v2, p1, Lfr/testudo/spacecorsair/mod/ModEvents$Context;->standing:I

    const/16 v3, -0xa

    if-gt v2, v3, :cond_d

    move v0, v1

    goto :goto_d
.end method
