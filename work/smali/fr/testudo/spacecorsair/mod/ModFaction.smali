.class public Lfr/testudo/spacecorsair/mod/ModFaction;
.super Lfr/testudo/spacecorsair/business/mission/MissionListener;
.source "ModFaction.java"


# static fields
.field private static final FAMILY_LABEL:[Ljava/lang/String;

.field static final FINALE_LEVEL:I = 0x20

.field static final LANCE_ORDER:I = 0x9

.field private static final LANCE_ROWS:[[Ljava/lang/Object;

.field static final OUTPOST_HULL:I = 0xc

.field static final REAVER:I = 0x0

.field static final TEXT_DESC:I = 0x7f7f03e8

.field static final TEXT_DONE:I = 0x7f7f07d0

.field static final TITHE_CREDITS:I = 0x7a120

.field static final TITHE_PARTS:I = 0x5

.field static final VARN:I = 0x1

.field static final WARDEN:I = 0x2

.field private static arrowLabel:Ljava/lang/String;

.field private static arrowM:I

.field private static arrowText:Ljava/lang/String;

.field private static holdLabel:Ljava/lang/String;

.field private static holdSec:I

.field private static missions:[Lfr/testudo/spacecorsair/business/mission/Mission;

.field private static final pos:Lfr/testudo/spacecorsair/engine/Vector2;

.field private static volatile rows:[[Ljava/lang/Object;

.field static testHail:Z

.field private static testStarted:Ljava/lang/String;

.field static testZone:Z


# instance fields
.field private ambushed:Z

.field private ambushed2:Z

.field private final center:Lfr/testudo/spacecorsair/engine/Vector2;

.field private final civs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lfr/testudo/spacecorsair/business/world/civil/CivilShip;",
            ">;"
        }
    .end annotation
.end field

.field private completed:Z

.field private courierCheck:I

.field private courierMoving:Z

.field private donateMs:I

.field private donateTold:Z

.field private final endAt:Lfr/testudo/spacecorsair/engine/Vector2;

.field private final entry:Lfr/testudo/spacecorsair/engine/Vector2;

.field private final fi:I

.field private final gate:Lfr/testudo/spacecorsair/engine/Vector2;

.field private goal:I

.field private holdMs:I

.field private final idx:I

.field private inZone:Z

.field private instrBranch:I

.field private instrGoal:I

.field private instrTarget:Lfr/testudo/spacecorsair/business/Element;

.field private instrText:Ljava/lang/String;

.field private instrVal:I

.field private instrWhere:Lfr/testudo/spacecorsair/game/levels/LevelId;

.field private final lastCourier:Lfr/testudo/spacecorsair/engine/Vector2;

.field private markers:[F

.field private final obj:Ljava/lang/String;

.field private outpost:Lfr/testudo/spacecorsair/business/world/civil/CivilShip;

.field private outpostLost:I

.field private phase:I

.field private planned:Z

.field private progress:I

.field private final ref:Lfr/testudo/spacecorsair/engine/Vector2;

.field private scanMs:[I

.field private secondLegPlaced:Z

.field private setupDone:Z

.field private final spawned:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lfr/testudo/spacecorsair/business/Element;",
            ">;"
        }
    .end annotation
.end field

.field private startDist:F

.field private taken:[Z

.field private target:Lfr/testudo/spacecorsair/business/Element;

.field private testTicks:I

.field private timer:I

.field private waveNo:I

.field private wavesLeft:I

.field private wavesOn:Z

.field private zone:Lfr/testudo/spacecorsair/game/levels/LevelId;

.field private zoneMs:I


# direct methods
.method static constructor <clinit>()V
    .registers 9

    .prologue
    const/4 v8, 0x3

    const/4 v7, 0x2

    const/16 v6, 0x9

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 37
    const/16 v0, 0xc

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "modRailgun"

    aput-object v1, v0, v4

    const-string v1, "Railgun"

    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v5

    const-string v1, "modAutocannon"

    aput-object v1, v0, v7

    const-string v1, "Autocannon"

    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v8

    const/4 v1, 0x4

    const-string v2, "modArtillery"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "Artillery"

    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "modBlaster"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "Blaster"

    .line 38
    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "modDisintegrator"

    aput-object v2, v0, v1

    const-string v1, "Disintegrator"

    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v6

    const/16 v1, 0xa

    const-string v2, "modArcProjector"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "Arc Projector"

    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModFaction;->FAMILY_LABEL:[Ljava/lang/String;

    .line 130
    new-array v0, v7, [[Ljava/lang/Object;

    const/16 v1, 0x15

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "spartan"

    aput-object v2, v1, v4

    .line 131
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v5

    const-string v2, "Trial of the Phoenix"

    aput-object v2, v1, v7

    const-string v2, "BOUNTY"

    aput-object v2, v1, v8

    const/4 v2, 0x4

    const-string v3, "HUGO_WISDOM"

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const-string v3, "HUGO_WISDOM"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x7

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0x8

    const-string v3, ""

    aput-object v3, v1, v2

    const-string v2, "Ashmaw, Reaver Warlord"

    aput-object v2, v1, v6

    const/16 v2, 0xa

    const-string v3, ""

    aput-object v3, v1, v2

    const/16 v2, 0xb

    const-string v3, "Captain, your Monolith has risen in its phoenix form, and the council honours it. One trial remains before the Lance is yours: Ashmaw, the Reaver warlord who burned the Halcyon convoy, is raiding Hugo Wisdom. End him, and the Republic will place the Phoenix Lance in your hands."

    aput-object v3, v1, v2

    const/16 v2, 0xc

    const-string v3, "Hunt down Ashmaw, the Reaver warlord, in Hugo Wisdom."

    aput-object v3, v1, v2

    const/16 v2, 0xd

    const-string v3, "Ashmaw is ash. The council places the Phoenix Lance in your hands, Captain. Its fire is yours."

    aput-object v3, v1, v2

    const/16 v2, 0xe

    const-string v3, "Ashmaw slipped away. The council\'s offer stands when you are ready to try again."

    aput-object v3, v1, v2

    const/16 v2, 0xf

    const v3, 0xdbba0

    .line 136
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0x10

    const-string v3, "modPhoenixLance"

    aput-object v3, v1, v2

    const/16 v2, 0x11

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0x12

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0x13

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0x14

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    aput-object v1, v0, v4

    const/16 v1, 0x15

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "spartan"

    aput-object v2, v1, v4

    .line 137
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v5

    const-string v2, "Tithe of the Phoenix"

    aput-object v2, v1, v7

    const-string v2, "DONATE"

    aput-object v2, v1, v8

    const/4 v2, 0x4

    const-string v3, "SPARTAN_HQ"

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const-string v3, "SPARTAN_HQ"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x7

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0x8

    const-string v3, ""

    aput-object v3, v1, v2

    const-string v2, ""

    aput-object v2, v1, v6

    const/16 v2, 0xa

    const-string v3, ""

    aput-object v3, v1, v2

    const/16 v2, 0xb

    const-string v3, "Captain, the council honours your phoenix. If you would rather serve the Republic\'s forges than its front line, a tithe of {TC} credits and {TP} rare parts will fund the next Lance, and the first one will be yours. The tithe is taken when you are in Spartan HQ with the full amount aboard."

    aput-object v3, v1, v2

    const/16 v2, 0xc

    const-string v3, "Bring {TC} credits and {TP} rare parts to Spartan HQ."

    aput-object v3, v1, v2

    const/16 v2, 0xd

    const-string v3, "The forges are lit with your tithe. The Phoenix Lance is yours, Captain. Wear its fire well."

    aput-object v3, v1, v2

    const/16 v2, 0xe

    const-string v3, "The tithe was not paid. The council\'s offer stands."

    aput-object v3, v1, v2

    const/16 v2, 0xf

    .line 142
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0x10

    const-string v3, "modPhoenixLance"

    aput-object v3, v1, v2

    const/16 v2, 0x11

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0x12

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0x13

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0x14

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    aput-object v1, v0, v5

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModFaction;->LANCE_ROWS:[[Ljava/lang/Object;

    .line 1199
    new-instance v0, Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-direct {v0}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>()V

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModFaction;->pos:Lfr/testudo/spacecorsair/engine/Vector2;

    .line 1202
    const/4 v0, -0x1

    sput v0, Lfr/testudo/spacecorsair/mod/ModFaction;->holdSec:I

    const/4 v0, -0x1

    sput v0, Lfr/testudo/spacecorsair/mod/ModFaction;->arrowM:I

    return-void
.end method

.method private constructor <init>(I)V
    .registers 3

    .prologue
    .line 415
    invoke-direct {p0}, Lfr/testudo/spacecorsair/business/mission/MissionListener;-><init>()V

    .line 390
    new-instance v0, Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-direct {v0}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>()V

    iput-object v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->ref:Lfr/testudo/spacecorsair/engine/Vector2;

    .line 391
    new-instance v0, Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-direct {v0}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>()V

    iput-object v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->entry:Lfr/testudo/spacecorsair/engine/Vector2;

    .line 392
    new-instance v0, Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-direct {v0}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>()V

    iput-object v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->center:Lfr/testudo/spacecorsair/engine/Vector2;

    .line 393
    new-instance v0, Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-direct {v0}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>()V

    iput-object v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->endAt:Lfr/testudo/spacecorsair/engine/Vector2;

    .line 395
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->spawned:Ljava/util/ArrayList;

    .line 396
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->civs:Ljava/util/List;

    .line 411
    new-instance v0, Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-direct {v0}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>()V

    iput-object v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->gate:Lfr/testudo/spacecorsair/engine/Vector2;

    .line 412
    new-instance v0, Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-direct {v0}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>()V

    iput-object v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->lastCourier:Lfr/testudo/spacecorsair/engine/Vector2;

    .line 1431
    const/4 v0, -0x1

    iput v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->instrBranch:I

    .line 416
    iput p1, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->idx:I

    .line 417
    invoke-static {p1}, Lfr/testudo/spacecorsair/mod/ModFaction;->objective(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->obj:Ljava/lang/String;

    .line 418
    const/4 v0, 0x4

    invoke-static {p1, v0}, Lfr/testudo/spacecorsair/mod/ModFaction;->str(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModFaction;->level(Ljava/lang/String;)Lfr/testudo/spacecorsair/game/levels/LevelId;

    move-result-object v0

    iput-object v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->zone:Lfr/testudo/spacecorsair/game/levels/LevelId;

    .line 419
    invoke-static {p1}, Lfr/testudo/spacecorsair/mod/ModFaction;->key(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModFaction;->faction(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->fi:I

    .line 420
    return-void
.end method

.method private static active()Lfr/testudo/spacecorsair/mod/ModFaction;
    .registers 2

    .prologue
    .line 436
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->currentMission:Lfr/testudo/spacecorsair/business/mission/Mission;

    .line 437
    if-eqz v0, :cond_11

    iget-object v1, v0, Lfr/testudo/spacecorsair/business/mission/Mission;->missionEngine:Lfr/testudo/spacecorsair/business/mission/MissionListener;

    instance-of v1, v1, Lfr/testudo/spacecorsair/mod/ModFaction;

    if-eqz v1, :cond_11

    iget-object v0, v0, Lfr/testudo/spacecorsair/business/mission/Mission;->missionEngine:Lfr/testudo/spacecorsair/business/mission/MissionListener;

    check-cast v0, Lfr/testudo/spacecorsair/mod/ModFaction;

    :goto_10
    return-object v0

    :cond_11
    const/4 v0, 0x0

    goto :goto_10
.end method

.method private activeSector()Lfr/testudo/spacecorsair/game/levels/LevelId;
    .registers 3

    .prologue
    .line 371
    iget v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->phase:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_c

    .line 372
    invoke-direct {p0}, Lfr/testudo/spacecorsair/mod/ModFaction;->secondSector()Lfr/testudo/spacecorsair/game/levels/LevelId;

    move-result-object v0

    .line 373
    if-eqz v0, :cond_c

    .line 375
    :goto_b
    return-object v0

    :cond_c
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->zone:Lfr/testudo/spacecorsair/game/levels/LevelId;

    goto :goto_b
.end method

.method public static addAvailable(Lfr/testudo/spacecorsair/game/levels/LevelId;Ljava/util/List;)V
    .registers 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lfr/testudo/spacecorsair/game/levels/LevelId;",
            "Ljava/util/List",
            "<",
            "Lfr/testudo/spacecorsair/business/mission/Mission;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 258
    if-eqz p0, :cond_4

    if-nez p1, :cond_5

    .line 318
    :cond_4
    :goto_4
    return-void

    .line 259
    :cond_5
    :try_start_5
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModFaction;->all()[Lfr/testudo/spacecorsair/business/mission/Mission;

    move-result-object v5

    .line 260
    sget-object v2, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v6, v2, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->currentMission:Lfr/testudo/spacecorsair/business/mission/Mission;

    .line 261
    sget-object v2, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v2, v2, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v2, v2, Lfr/testudo/spacecorsair/game/Game;->playerInfo:Lfr/testudo/spacecorsair/business/player/PlayerInfo;

    iget v7, v2, Lfr/testudo/spacecorsair/business/player/PlayerInfo;->level:I

    .line 262
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/32 v8, 0x5265c00

    div-long v8, v2, v8

    .line 263
    sget-boolean v2, Lfr/testudo/spacecorsair/mod/ModTestMode;->on:Z

    if-eqz v2, :cond_ae

    .line 265
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v4

    .line 266
    const/4 v2, 0x0

    move v3, v2

    :goto_28
    array-length v2, v5

    if-ge v3, v2, :cond_71

    .line 267
    sget-object v2, Lfr/testudo/spacecorsair/mod/ModCapitals;->FACTIONS:[Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;

    invoke-static {v3}, Lfr/testudo/spacecorsair/mod/ModFaction;->key(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lfr/testudo/spacecorsair/mod/ModFaction;->faction(Ljava/lang/String;)I

    move-result v6

    aget-object v2, v2, v6

    .line 268
    invoke-static {v3}, Lfr/testudo/spacecorsair/mod/ModFaction;->contract(I)Z

    move-result v6

    if-nez v6, :cond_67

    invoke-static {v3}, Lfr/testudo/spacecorsair/mod/ModFaction;->order(I)I

    move-result v6

    invoke-static {v6}, Lfr/testudo/spacecorsair/mod/ModV35;->finale(I)Z

    move-result v6

    if-eqz v6, :cond_67

    sget-object v2, Lfr/testudo/spacecorsair/game/levels/LevelId;->THE_HIVE:Lfr/testudo/spacecorsair/game/levels/LevelId;

    move-object/from16 v0, p0

    if-ne v0, v2, :cond_65

    const/4 v2, 0x1

    .line 269
    :goto_4e
    if-eqz v2, :cond_61

    aget-object v2, v5, v3

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_61

    aget-object v2, v5, v3

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 266
    :cond_61
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_28

    .line 268
    :cond_65
    const/4 v2, 0x0

    goto :goto_4e

    :cond_67
    iget-object v2, v2, Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;->hq:Lfr/testudo/spacecorsair/game/levels/LevelId;

    move-object/from16 v0, p0

    if-ne v2, v0, :cond_6f

    const/4 v2, 0x1

    goto :goto_4e

    :cond_6f
    const/4 v2, 0x0

    goto :goto_4e

    .line 271
    :cond_71
    const-string v2, "v40test"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "missions at "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ": faction "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v5

    sub-int v4, v5, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " total "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lfr/testudo/spacecorsair/mod/ModDev;->ev(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    .line 315
    :catch_ab
    move-exception v2

    goto/16 :goto_4

    .line 274
    :cond_ae
    const/4 v2, 0x0

    move v4, v2

    :goto_b0
    sget-object v2, Lfr/testudo/spacecorsair/mod/ModCapitals;->FACTIONS:[Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;

    array-length v2, v2

    if-ge v4, v2, :cond_4

    .line 275
    sget-object v2, Lfr/testudo/spacecorsair/mod/ModCapitals;->FACTIONS:[Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;

    aget-object v2, v2, v4

    iget-object v2, v2, Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;->hq:Lfr/testudo/spacecorsair/game/levels/LevelId;

    move-object/from16 v0, p0

    if-eq v2, v0, :cond_c9

    sget-boolean v2, Lfr/testudo/spacecorsair/mod/ModFaction;->testHail:Z

    if-eqz v2, :cond_c5

    if-eqz v4, :cond_c9

    .line 274
    :cond_c5
    :goto_c5
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    goto :goto_b0

    .line 276
    :cond_c9
    sget-object v2, Lfr/testudo/spacecorsair/mod/ModCapitals;->FACTIONS:[Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;

    aget-object v2, v2, v4

    iget-object v10, v2, Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;->key:Ljava/lang/String;

    .line 277
    invoke-static {v10}, Lfr/testudo/spacecorsair/mod/ModRep;->rank(Ljava/lang/String;)I

    move-result v11

    .line 278
    if-lez v11, :cond_c5

    .line 279
    const/4 v2, 0x2

    if-lt v11, v2, :cond_11d

    .line 280
    const/4 v2, 0x0

    :goto_d9
    array-length v3, v5

    if-ge v2, v3, :cond_11d

    .line 281
    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModFaction;->contract(I)Z

    move-result v3

    if-nez v3, :cond_fc

    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModFaction;->key(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_fc

    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModFaction;->order(I)I

    move-result v3

    invoke-static {v3}, Lfr/testudo/spacecorsair/mod/ModV35;->finale(I)Z

    move-result v3

    if-nez v3, :cond_fc

    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModFaction;->lance(I)Z

    move-result v3

    if-eqz v3, :cond_ff

    .line 280
    :cond_fc
    add-int/lit8 v2, v2, 0x1

    goto :goto_d9

    .line 282
    :cond_ff
    sget-object v3, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v3, v3, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->missionRepository:Lfr/testudo/spacecorsair/business/mission/MissionRepository;

    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModFaction;->id(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v3, v12}, Lfr/testudo/spacecorsair/business/mission/MissionRepository;->hasDoneMission(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_fc

    .line 283
    aget-object v3, v5, v2

    if-eq v6, v3, :cond_147

    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModFaction;->minLevel(I)I

    move-result v3

    add-int/lit8 v3, v3, -0x2

    if-ge v7, v3, :cond_147

    sget-boolean v3, Lfr/testudo/spacecorsair/mod/ModFaction;->testHail:Z

    if-nez v3, :cond_147

    .line 288
    :cond_11d
    :goto_11d
    const/4 v2, 0x2

    if-lt v11, v2, :cond_173

    sget-object v2, Lfr/testudo/spacecorsair/game/levels/LevelId;->THE_HIVE:Lfr/testudo/spacecorsair/game/levels/LevelId;

    move-object/from16 v0, p0

    if-ne v0, v2, :cond_173

    .line 290
    const/4 v2, 0x0

    :goto_127
    array-length v3, v5

    if-ge v2, v3, :cond_173

    .line 291
    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModFaction;->contract(I)Z

    move-result v3

    if-nez v3, :cond_144

    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModFaction;->key(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_144

    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModFaction;->order(I)I

    move-result v3

    invoke-static {v3}, Lfr/testudo/spacecorsair/mod/ModV35;->finale(I)Z

    move-result v3

    if-nez v3, :cond_159

    .line 290
    :cond_144
    add-int/lit8 v2, v2, 0x1

    goto :goto_127

    .line 284
    :cond_147
    aget-object v3, v5, v2

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_11d

    aget-object v2, v5, v2

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_11d

    .line 292
    :cond_159
    sget-object v3, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v3, v3, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->missionRepository:Lfr/testudo/spacecorsair/business/mission/MissionRepository;

    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModFaction;->id(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v3, v12}, Lfr/testudo/spacecorsair/business/mission/MissionRepository;->hasDoneMission(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_144

    .line 293
    aget-object v3, v5, v2

    if-eq v6, v3, :cond_1a8

    const/16 v3, 0x20

    if-ge v7, v3, :cond_1a8

    sget-boolean v3, Lfr/testudo/spacecorsair/mod/ModFaction;->testHail:Z

    if-nez v3, :cond_1a8

    .line 299
    :cond_173
    :goto_173
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 300
    const/4 v2, 0x0

    move v3, v2

    :goto_17a
    array-length v2, v5

    if-ge v3, v2, :cond_1bc

    .line 301
    invoke-static {v3}, Lfr/testudo/spacecorsair/mod/ModFaction;->contract(I)Z

    move-result v2

    if-eqz v2, :cond_1a4

    invoke-static {v3}, Lfr/testudo/spacecorsair/mod/ModFaction;->hunt(I)Z

    move-result v2

    if-nez v2, :cond_1a4

    invoke-static {v3}, Lfr/testudo/spacecorsair/mod/ModFaction;->key(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1a4

    invoke-static {v3}, Lfr/testudo/spacecorsair/mod/ModFaction;->amends(I)Z

    move-result v13

    const/4 v2, 0x1

    if-ne v11, v2, :cond_1ba

    const/4 v2, 0x1

    :goto_19b
    if-ne v13, v2, :cond_1a4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v12, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 300
    :cond_1a4
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_17a

    .line 294
    :cond_1a8
    aget-object v3, v5, v2

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_173

    aget-object v2, v5, v2

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_173

    .line 301
    :cond_1ba
    const/4 v2, 0x0

    goto :goto_19b

    .line 303
    :cond_1bc
    const/4 v2, 0x0

    move v3, v2

    :goto_1be
    const/4 v2, 0x2

    if-ge v3, v2, :cond_201

    invoke-virtual {v12}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_201

    .line 304
    const-wide/16 v14, 0x7

    mul-long/2addr v14, v8

    mul-int/lit8 v2, v4, 0x3

    int-to-long v0, v2

    move-wide/from16 v16, v0

    add-long v14, v14, v16

    mul-int/lit8 v2, v3, 0x5

    int-to-long v0, v2

    move-wide/from16 v16, v0

    add-long v14, v14, v16

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v2

    int-to-long v0, v2

    move-wide/from16 v16, v0

    rem-long v14, v14, v16

    long-to-int v2, v14

    invoke-virtual {v12, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 305
    aget-object v13, v5, v2

    move-object/from16 v0, p1

    invoke-interface {v0, v13}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_1fd

    aget-object v2, v5, v2

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 303
    :cond_1fd
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_1be

    .line 307
    :cond_201
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLance;->offerOpen()Z

    move-result v2

    if-eqz v2, :cond_22d

    const-string v2, "spartan"

    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_22d

    .line 308
    const/4 v2, 0x0

    :goto_210
    array-length v3, v5

    if-ge v2, v3, :cond_22d

    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModFaction;->lance(I)Z

    move-result v3

    if-eqz v3, :cond_22a

    aget-object v3, v5, v2

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_22a

    aget-object v3, v5, v2

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_22a
    add-int/lit8 v2, v2, 0x1

    goto :goto_210

    .line 310
    :cond_22d
    const/4 v2, 0x3

    if-lt v11, v2, :cond_265

    invoke-static {v10}, Lfr/testudo/spacecorsair/mod/ModV35;->huntLeft(Ljava/lang/String;)J

    move-result-wide v2

    const-wide/16 v12, 0x0

    cmp-long v2, v2, v12

    if-nez v2, :cond_265

    .line 311
    const/4 v2, 0x0

    :goto_23b
    array-length v3, v5

    if-ge v2, v3, :cond_265

    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModFaction;->hunt(I)Z

    move-result v3

    if-eqz v3, :cond_262

    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModFaction;->key(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_262

    aget-object v3, v5, v2

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_262

    aget-object v3, v5, v2

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModV35;->huntNote()V

    :cond_262
    add-int/lit8 v2, v2, 0x1

    goto :goto_23b

    .line 313
    :cond_265
    if-eqz v6, :cond_c5

    iget-object v2, v6, Lfr/testudo/spacecorsair/business/mission/Mission;->missionEngine:Lfr/testudo/spacecorsair/business/mission/MissionListener;

    instance-of v2, v2, Lfr/testudo/spacecorsair/mod/ModFaction;

    if-eqz v2, :cond_c5

    iget-object v2, v6, Lfr/testudo/spacecorsair/business/mission/Mission;->missionEngine:Lfr/testudo/spacecorsair/business/mission/MissionListener;

    check-cast v2, Lfr/testudo/spacecorsair/mod/ModFaction;

    iget v2, v2, Lfr/testudo/spacecorsair/mod/ModFaction;->idx:I

    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModFaction;->key(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c5

    move-object/from16 v0, p1

    invoke-interface {v0, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_c5

    move-object/from16 v0, p1

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_28a
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_28a} :catch_ab

    goto/16 :goto_c5
.end method

.method private static declared-synchronized all()[Lfr/testudo/spacecorsair/business/mission/Mission;
    .registers 14

    .prologue
    const/4 v0, 0x0

    .line 232
    const-class v11, Lfr/testudo/spacecorsair/mod/ModFaction;

    monitor-enter v11

    :try_start_4
    sget-object v1, Lfr/testudo/spacecorsair/mod/ModFaction;->missions:[Lfr/testudo/spacecorsair/business/mission/Mission;

    if-nez v1, :cond_cf

    .line 233
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModFaction;->count()I

    move-result v1

    new-array v12, v1, [Lfr/testudo/spacecorsair/business/mission/Mission;

    move v10, v0

    .line 234
    :goto_f
    array-length v0, v12

    if-ge v10, v0, :cond_cd

    .line 235
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 236
    const/16 v0, 0x10

    invoke-static {v10, v0}, Lfr/testudo/spacecorsair/mod/ModFaction;->str(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I
    :try_end_20
    .catchall {:try_start_4 .. :try_end_20} :catchall_d3

    move-result v0

    if-lez v0, :cond_34

    .line 238
    const/16 v0, 0x10

    :try_start_25
    invoke-static {v10, v0}, Lfr/testudo/spacecorsair/mod/ModFaction;->str(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->valueOf(Ljava/lang/String;)Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    move-result-object v0

    invoke-static {v0}, Lfr/testudo/spacecorsair/business/loot/SpaceObject;->of(Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)Lfr/testudo/spacecorsair/business/loot/SpaceObject;

    move-result-object v0

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_34
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_34} :catch_d6
    .catchall {:try_start_25 .. :try_end_34} :catchall_d3

    .line 244
    :cond_34
    :goto_34
    :try_start_34
    new-instance v0, Lfr/testudo/spacecorsair/business/mission/Mission;

    invoke-static {v10}, Lfr/testudo/spacecorsair/mod/ModFaction;->id(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f070136

    const v3, 0x7f7f03e8

    add-int/2addr v3, v10

    const v4, 0x7f7f07d0

    add-int/2addr v4, v10

    const/4 v5, 0x0

    .line 245
    invoke-static {v10}, Lfr/testudo/spacecorsair/mod/ModFaction;->minLevel(I)I

    move-result v6

    new-instance v7, Lfr/testudo/spacecorsair/mod/ModFaction;

    invoke-direct {v7, v10}, Lfr/testudo/spacecorsair/mod/ModFaction;-><init>(I)V

    invoke-static {v10}, Lfr/testudo/spacecorsair/mod/ModFaction;->contract(I)Z

    move-result v8

    if-eqz v8, :cond_b7

    const/16 v8, 0xfa0

    :goto_57
    const/16 v13, 0xf

    invoke-static {v10, v13}, Lfr/testudo/spacecorsair/mod/ModFaction;->num(II)I

    move-result v13

    div-int/lit8 v13, v13, 0x3

    invoke-static {v9, v8, v13}, Lfr/testudo/spacecorsair/business/mission/MissionReward;->withObject(Ljava/util/List;II)Lfr/testudo/spacecorsair/business/mission/MissionReward;

    move-result-object v8

    invoke-static {v10}, Lfr/testudo/spacecorsair/mod/ModFaction;->contract(I)Z

    move-result v9

    invoke-direct/range {v0 .. v9}, Lfr/testudo/spacecorsair/business/mission/Mission;-><init>(Ljava/lang/String;IIIZILfr/testudo/spacecorsair/business/mission/MissionListener;Lfr/testudo/spacecorsair/business/mission/MissionReward;Z)V

    .line 246
    invoke-static {v10}, Lfr/testudo/spacecorsair/mod/ModFaction;->contract(I)Z

    move-result v1

    if-eqz v1, :cond_c5

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v10}, Lfr/testudo/spacecorsair/mod/ModFaction;->amends(I)Z

    move-result v1

    if-eqz v1, :cond_be

    const-string v1, "Amends: "

    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_81
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x2

    invoke-static {v10, v2}, Lfr/testudo/spacecorsair/mod/ModFaction;->str(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_92
    iput-object v1, v0, Lfr/testudo/spacecorsair/business/mission/Mission;->localizedName:Ljava/lang/String;

    .line 247
    invoke-static {v10}, Lfr/testudo/spacecorsair/mod/ModFaction;->order(I)I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_cb

    invoke-static {v10}, Lfr/testudo/spacecorsair/mod/ModFaction;->order(I)I

    move-result v1

    const/4 v2, 0x4

    if-eq v1, v2, :cond_cb

    invoke-static {v10}, Lfr/testudo/spacecorsair/mod/ModFaction;->lance(I)Z

    move-result v1

    if-nez v1, :cond_cb

    add-int/lit8 v1, v10, -0x1

    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModFaction;->id(I)Ljava/lang/String;

    move-result-object v1

    :goto_ae
    iput-object v1, v0, Lfr/testudo/spacecorsair/business/mission/Mission;->restrictedMissionId:Ljava/lang/String;

    .line 248
    aput-object v0, v12, v10

    .line 234
    add-int/lit8 v0, v10, 0x1

    move v10, v0

    goto/16 :goto_f

    .line 245
    :cond_b7
    invoke-static {v10}, Lfr/testudo/spacecorsair/mod/ModFaction;->minLevel(I)I

    move-result v8

    mul-int/lit16 v8, v8, 0x384

    goto :goto_57

    .line 246
    :cond_be
    const-string v1, "Contract: "

    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_81

    :cond_c5
    const/4 v1, 0x2

    invoke-static {v10, v1}, Lfr/testudo/spacecorsair/mod/ModFaction;->str(II)Ljava/lang/String;

    move-result-object v1

    goto :goto_92

    .line 247
    :cond_cb
    const/4 v1, 0x0

    goto :goto_ae

    .line 250
    :cond_cd
    sput-object v12, Lfr/testudo/spacecorsair/mod/ModFaction;->missions:[Lfr/testudo/spacecorsair/business/mission/Mission;

    .line 252
    :cond_cf
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModFaction;->missions:[Lfr/testudo/spacecorsair/business/mission/Mission;
    :try_end_d1
    .catchall {:try_start_34 .. :try_end_d1} :catchall_d3

    monitor-exit v11

    return-object v0

    .line 232
    :catchall_d3
    move-exception v0

    monitor-exit v11

    throw v0

    .line 239
    :catch_d6
    move-exception v0

    goto/16 :goto_34
.end method

.method static amends(I)Z
    .registers 3

    .prologue
    .line 176
    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModFaction;->contract(I)Z

    move-result v0

    if-eqz v0, :cond_1a

    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModFaction;->rows()[[Ljava/lang/Object;

    move-result-object v0

    aget-object v0, v0, p0

    const/16 v1, 0x12

    aget-object v0, v0, v1

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1a

    const/4 v0, 0x1

    :goto_19
    return v0

    :cond_1a
    const/4 v0, 0x0

    goto :goto_19
.end method

.method private static away(Lfr/testudo/spacecorsair/engine/Vector2;FF)Lfr/testudo/spacecorsair/engine/Vector2;
    .registers 11

    .prologue
    .line 719
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v0

    const-wide v2, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v0, v2

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    mul-double/2addr v0, v2

    .line 720
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v2

    double-to-float v2, v2

    sub-float v3, p2, p1

    mul-float/2addr v2, v3

    add-float/2addr v2, p1

    .line 721
    new-instance v3, Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-direct {v3, p0}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>(Lfr/testudo/spacecorsair/engine/Vector2;)V

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    float-to-double v6, v2

    mul-double/2addr v4, v6

    double-to-float v4, v4

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    float-to-double v6, v2

    mul-double/2addr v0, v6

    double-to-float v0, v0

    invoke-virtual {v3, v4, v0}, Lfr/testudo/spacecorsair/engine/Vector2;->add(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    move-result-object v0

    return-object v0
.end method

.method private static declared-synchronized buildRows()[[Ljava/lang/Object;
    .registers 20

    .prologue
    .line 89
    const-class v7, Lfr/testudo/spacecorsair/mod/ModFaction;

    monitor-enter v7

    :try_start_3
    sget-object v1, Lfr/testudo/spacecorsair/mod/ModFaction;->rows:[[Ljava/lang/Object;

    if-nez v1, :cond_232

    .line 90
    sget-object v1, Lfr/testudo/spacecorsair/mod/ModFactionData;->MISSIONS:[[Ljava/lang/Object;

    sget-object v2, Lfr/testudo/spacecorsair/mod/ModV35;->FINALE:[[Ljava/lang/Object;

    sget-object v8, Lfr/testudo/spacecorsair/mod/ModRepData;->CONTRACTS:[[Ljava/lang/Object;

    .line 91
    array-length v3, v1

    array-length v4, v2

    add-int/2addr v3, v4

    new-array v9, v3, [[Ljava/lang/Object;

    .line 92
    const/4 v3, 0x0

    const/4 v4, 0x0

    array-length v5, v1

    invoke-static {v1, v3, v9, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 93
    const/4 v3, 0x0

    array-length v1, v1

    array-length v4, v2

    invoke-static {v2, v3, v9, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 94
    sget-object v10, Lfr/testudo/spacecorsair/mod/ModRepData;->KEYS:[Ljava/lang/String;

    .line 95
    sget-object v11, Lfr/testudo/spacecorsair/mod/ModFaction;->LANCE_ROWS:[[Ljava/lang/Object;

    .line 96
    array-length v1, v9

    array-length v2, v8

    add-int/2addr v1, v2

    array-length v2, v10

    add-int/2addr v1, v2

    array-length v2, v11

    add-int/2addr v1, v2

    new-array v12, v1, [[Ljava/lang/Object;

    .line 97
    const/4 v1, 0x0

    const/4 v2, 0x0

    array-length v3, v9

    invoke-static {v9, v1, v12, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 98
    sget-object v1, Lfr/testudo/spacecorsair/mod/ModRepData;->KEYS:[Ljava/lang/String;

    array-length v1, v1

    new-array v13, v1, [I

    .line 99
    const/4 v1, 0x0

    move v6, v1

    :goto_38
    array-length v1, v8

    if-ge v6, v1, :cond_171

    .line 100
    aget-object v14, v8, v6

    .line 101
    const/4 v1, 0x0

    aget-object v1, v14, v1

    check-cast v1, Ljava/lang/String;

    const/4 v2, 0x2

    aget-object v2, v14, v2

    check-cast v2, Ljava/lang/String;

    .line 102
    const/4 v3, 0x5

    aget-object v3, v14, v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v15

    .line 103
    const-string v3, "KILL_ENEMY_TYPE"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_118

    const/4 v3, 0x5

    move v5, v3

    .line 104
    :goto_5a
    if-eqz v15, :cond_141

    const v3, 0x9c40

    move v4, v3

    .line 105
    :goto_60
    sget-object v3, Lfr/testudo/spacecorsair/mod/ModCapitals;->FACTIONS:[Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;

    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModFaction;->faction(Ljava/lang/String;)I

    move-result v16

    aget-object v3, v3, v16

    iget-object v3, v3, Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;->hq:Lfr/testudo/spacecorsair/game/levels/LevelId;

    invoke-virtual {v3}, Lfr/testudo/spacecorsair/game/levels/LevelId;->name()Ljava/lang/String;

    move-result-object v3

    .line 107
    array-length v0, v9

    move/from16 v16, v0

    add-int v16, v16, v6

    const/16 v17, 0x13

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    aput-object v1, v17, v18

    const/16 v18, 0x1

    const/16 v19, 0x0

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    aput-object v19, v17, v18

    const/16 v18, 0x2

    const/16 v19, 0x1

    aget-object v19, v14, v19

    aput-object v19, v17, v18

    const/16 v18, 0x3

    aput-object v2, v17, v18

    const/16 v18, 0x4

    aput-object v3, v17, v18

    const/16 v18, 0x5

    aput-object v3, v17, v18

    const/4 v3, 0x6

    const/16 v18, 0x1

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    aput-object v18, v17, v3

    const/4 v3, 0x7

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    aput-object v18, v17, v3

    const/16 v18, 0x8

    const-string v3, "DEFEND_ZONE"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_16d

    move-object v3, v1

    :goto_b8
    aput-object v3, v17, v18

    const/16 v3, 0x9

    const/16 v18, 0x6

    aget-object v18, v14, v18

    aput-object v18, v17, v3

    const/16 v3, 0xa

    const-string v18, ""

    aput-object v18, v17, v3

    const/16 v3, 0xb

    const/16 v18, 0x3

    aget-object v18, v14, v18

    aput-object v18, v17, v3

    const/16 v3, 0xc

    .line 108
    invoke-static {v2, v5}, Lfr/testudo/spacecorsair/mod/ModFaction;->contractGoal(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v17, v3

    const/16 v2, 0xd

    const/4 v3, 0x4

    aget-object v3, v14, v3

    aput-object v3, v17, v2

    const/16 v2, 0xe

    const-string v3, "The contract has lapsed. The offer stands if you want to try again."

    invoke-static {v3}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v17, v2

    const/16 v2, 0xf

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v17, v2

    const/16 v2, 0x10

    const-string v3, ""

    aput-object v3, v17, v2

    const/16 v2, 0x11

    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModFaction;->commander(Ljava/lang/String;)I

    move-result v1

    aget v3, v13, v1

    add-int/lit8 v3, v3, 0x1

    aput v3, v13, v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v17, v2

    const/16 v1, 0x12

    invoke-static {v15}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v17, v1

    aput-object v17, v12, v16

    .line 99
    add-int/lit8 v1, v6, 0x1

    move v6, v1

    goto/16 :goto_38

    .line 103
    :cond_118
    const-string v3, "RESCUE"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_124

    const/4 v3, 0x3

    move v5, v3

    goto/16 :goto_5a

    :cond_124
    const-string v3, "SCAN_CIVIL"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_130

    const/4 v3, 0x4

    move v5, v3

    goto/16 :goto_5a

    :cond_130
    const-string v3, "DEFEND_ZONE"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_13d

    const/16 v3, 0x2d

    move v5, v3

    goto/16 :goto_5a

    :cond_13d
    const/4 v3, 0x0

    move v5, v3

    goto/16 :goto_5a

    .line 104
    :cond_141
    const-string v3, "DEFEND_ZONE"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_161

    const-string v3, "DEFEND_CIVILIANS"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_161

    const-string v3, "DESTROY_STATION"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_161

    const-string v3, "ESCORT"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_167

    :cond_161
    const v3, 0x1adb0

    move v4, v3

    goto/16 :goto_60

    :cond_167
    const v3, 0x124f8

    move v4, v3

    goto/16 :goto_60

    .line 107
    :cond_16d
    const-string v3, ""

    goto/16 :goto_b8

    .line 110
    :cond_171
    const/4 v1, 0x0

    :goto_172
    array-length v2, v10

    if-ge v1, v2, :cond_226

    .line 112
    aget-object v2, v10, v1

    sget-object v3, Lfr/testudo/spacecorsair/mod/ModCapitals;->FACTIONS:[Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;

    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModFaction;->faction(Ljava/lang/String;)I

    move-result v4

    aget-object v3, v3, v4

    iget-object v3, v3, Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;->hq:Lfr/testudo/spacecorsair/game/levels/LevelId;

    invoke-virtual {v3}, Lfr/testudo/spacecorsair/game/levels/LevelId;->name()Ljava/lang/String;

    move-result-object v3

    .line 113
    array-length v4, v9

    array-length v5, v8

    add-int/2addr v4, v5

    add-int/2addr v4, v1

    const/16 v5, 0x14

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v2, v5, v6

    const/4 v6, 0x1

    const/4 v14, 0x0

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v5, v6

    const/4 v6, 0x2

    const-string v14, "Renegade Hunt"

    aput-object v14, v5, v6

    const/4 v6, 0x3

    const-string v14, "BOUNTY"

    aput-object v14, v5, v6

    const/4 v6, 0x4

    aput-object v3, v5, v6

    const/4 v6, 0x5

    aput-object v3, v5, v6

    const/4 v3, 0x6

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v3

    const/4 v3, 0x7

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v3

    const/16 v3, 0x8

    const-string v6, ""

    aput-object v6, v5, v3

    const/16 v3, 0x9

    const-string v6, "Renegade Captain"

    aput-object v6, v5, v3

    const/16 v3, 0xa

    const-string v6, ""

    aput-object v6, v5, v3

    const/16 v3, 0xb

    const-string v6, "A renegade captain deserted with one of our faction cores and is hiding near our headquarters. Bring the core back and it is yours to keep."

    aput-object v6, v5, v3

    const/16 v3, 0xc

    const-string v6, "BOUNTY"

    const/4 v14, 0x0

    .line 115
    invoke-static {v6, v14}, Lfr/testudo/spacecorsair/mod/ModFaction;->contractGoal(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v3

    const/16 v3, 0xd

    const-string v6, "The renegade is down and the core is recovered."

    aput-object v6, v5, v3

    const/16 v3, 0xe

    const-string v6, "The contract has lapsed. The offer stands if you want to try again."

    invoke-static {v6}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v3

    const/16 v3, 0xf

    const v6, 0x1adb0

    .line 116
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v3

    const/16 v3, 0x10

    const-string v6, ""

    aput-object v6, v5, v3

    const/16 v3, 0x11

    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModFaction;->commander(Ljava/lang/String;)I

    move-result v2

    aget v6, v13, v2

    add-int/lit8 v6, v6, 0x1

    aput v6, v13, v2

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v5, v3

    const/16 v2, 0x12

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v5, v2

    const/16 v2, 0x13

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v5, v2

    aput-object v5, v12, v4

    .line 110
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_172

    .line 118
    :cond_226
    const/4 v1, 0x0

    array-length v2, v9

    array-length v3, v8

    add-int/2addr v2, v3

    array-length v3, v10

    add-int/2addr v2, v3

    array-length v3, v11

    invoke-static {v11, v1, v12, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 119
    sput-object v12, Lfr/testudo/spacecorsair/mod/ModFaction;->rows:[[Ljava/lang/Object;

    .line 121
    :cond_232
    sget-object v1, Lfr/testudo/spacecorsair/mod/ModFaction;->rows:[[Ljava/lang/Object;
    :try_end_234
    .catchall {:try_start_3 .. :try_end_234} :catchall_236

    monitor-exit v7

    return-object v1

    .line 89
    :catchall_236
    move-exception v1

    monitor-exit v7

    throw v1
.end method

.method public static byId(Ljava/lang/String;)Lfr/testudo/spacecorsair/business/mission/Mission;
    .registers 7

    .prologue
    const/4 v1, 0x0

    .line 322
    if-eqz p0, :cond_b

    const-string v0, "FACTION_"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_d

    :cond_b
    move-object v0, v1

    .line 328
    :cond_c
    :goto_c
    return-object v0

    .line 324
    :cond_d
    :try_start_d
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModFaction;->all()[Lfr/testudo/spacecorsair/business/mission/Mission;

    move-result-object v3

    array-length v4, v3

    const/4 v0, 0x0

    move v2, v0

    :goto_14
    if-ge v2, v4, :cond_25

    aget-object v0, v3, v2

    iget-object v5, v0, Lfr/testudo/spacecorsair/business/mission/Mission;->missionId:Ljava/lang/String;

    invoke-virtual {p0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_1d
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_1d} :catch_24

    move-result v5

    if-nez v5, :cond_c

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_14

    .line 325
    :catch_24
    move-exception v0

    :cond_25
    move-object v0, v1

    .line 328
    goto :goto_c
.end method

.method private civil(Lfr/testudo/spacecorsair/engine/Vector2;Z)Lfr/testudo/spacecorsair/business/world/civil/CivilShip;
    .registers 5

    .prologue
    .line 725
    const/4 v0, 0x1

    iget v1, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->idx:I

    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModFaction;->minLevel(I)I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 726
    if-eqz p2, :cond_17

    invoke-static {v0}, Lfr/testudo/spacecorsair/business/world/civil/CivilFactory;->newTrasnporteur(I)Lfr/testudo/spacecorsair/business/world/civil/TransportCivilShip;

    move-result-object v0

    .line 727
    :goto_13
    if-nez v0, :cond_1c

    const/4 v0, 0x0

    .line 731
    :goto_16
    return-object v0

    .line 726
    :cond_17
    invoke-static {v0, v0}, Lfr/testudo/spacecorsair/business/world/civil/CivilFactory;->newRandomCivil(II)Lfr/testudo/spacecorsair/business/world/civil/CivilShip;

    move-result-object v0

    goto :goto_13

    .line 728
    :cond_1c
    iget-object v1, v0, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v1, p1}, Lfr/testudo/spacecorsair/engine/Vector2;->setSameAs(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 729
    sget-object v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v1, v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v1, v1, Lfr/testudo/spacecorsair/game/Game;->currentLevel:Lfr/testudo/spacecorsair/game/levels/Level;

    iget-object v1, v1, Lfr/testudo/spacecorsair/game/levels/Level;->toAdd:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 730
    iget-object v1, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->civs:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_16
.end method

.method private cleanup()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 937
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->spawned:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_8
    :goto_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfr/testudo/spacecorsair/business/Element;

    .line 938
    if-eqz v0, :cond_8

    iget-boolean v2, v0, Lfr/testudo/spacecorsair/business/Element;->removed:Z

    if-nez v2, :cond_8

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/business/Element;->remove()V

    goto :goto_8

    .line 940
    :cond_1e
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->civs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_24
    :goto_24
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;

    .line 941
    if-eqz v0, :cond_24

    iget-boolean v2, v0, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->removed:Z

    if-nez v2, :cond_24

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->remove()V

    goto :goto_24

    .line 943
    :cond_3a
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->target:Lfr/testudo/spacecorsair/business/Element;

    if-eqz v0, :cond_48

    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->target:Lfr/testudo/spacecorsair/business/Element;

    instance-of v0, v0, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;

    if-eqz v0, :cond_48

    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->target:Lfr/testudo/spacecorsair/business/Element;

    iput-boolean v3, v0, Lfr/testudo/spacecorsair/business/Element;->isMissionObjective:Z

    .line 944
    :cond_48
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->spawned:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 945
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->civs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 946
    iput-object v4, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->target:Lfr/testudo/spacecorsair/business/Element;

    .line 947
    iput-object v4, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->outpost:Lfr/testudo/spacecorsair/business/world/civil/CivilShip;

    .line 948
    iput-boolean v3, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->setupDone:Z

    .line 949
    iput v3, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->zoneMs:I

    .line 950
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModPlace;->clearBoost()V

    .line 951
    return-void
.end method

.method static commander(Ljava/lang/String;)I
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 190
    move v0, v1

    :goto_2
    sget-object v2, Lfr/testudo/spacecorsair/mod/ModFactionData;->KEYS:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_15

    sget-object v2, Lfr/testudo/spacecorsair/mod/ModFactionData;->KEYS:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 191
    :goto_11
    return v0

    .line 190
    :cond_12
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_15
    move v0, v1

    .line 191
    goto :goto_11
.end method

.method private complete()V
    .registers 7

    .prologue
    const/16 v3, 0x8

    const/4 v5, 0x1

    .line 445
    iget-boolean v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->completed:Z

    if-eqz v0, :cond_8

    .line 466
    :goto_7
    return-void

    .line 446
    :cond_8
    iput-boolean v5, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->completed:Z

    .line 447
    const-string v0, "ModFaction"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "completed "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->idx:I

    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModFaction;->id(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 448
    invoke-static {v5}, Lfr/testudo/spacecorsair/mod/ModAlerts;->missionResult(Z)V

    .line 450
    iget v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->idx:I

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModFaction;->key(I)Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->idx:I

    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModFaction;->contract(I)Z

    move-result v1

    iget v2, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->idx:I

    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModFaction;->order(I)I

    move-result v2

    invoke-static {v1, v2}, Lfr/testudo/spacecorsair/mod/ModV35;->missionStanding(ZI)F

    move-result v1

    invoke-static {v0, v1, v5}, Lfr/testudo/spacecorsair/mod/ModRep;->change(Ljava/lang/String;FZ)V

    .line 451
    iget v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->idx:I

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModFaction;->contract(I)Z

    move-result v0

    if-nez v0, :cond_5e

    iget v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->idx:I

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModFaction;->order(I)I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_5e

    iget v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->idx:I

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModFaction;->key(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModV34;->storyDone(Ljava/lang/String;)V

    .line 452
    :cond_5e
    iget v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->idx:I

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModFaction;->hunt(I)Z

    move-result v0

    if-eqz v0, :cond_6f

    iget v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->idx:I

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModFaction;->key(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModV35;->huntDone(Ljava/lang/String;)V

    .line 453
    :cond_6f
    iget v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->idx:I

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModFaction;->lance(I)Z

    move-result v0

    if-eqz v0, :cond_7a

    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLance;->onUnlock()V

    .line 454
    :cond_7a
    const-string v0, "KILL_FLAGSHIP"

    iget-object v1, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->obj:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9c

    iget v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->idx:I

    invoke-static {v0, v3}, Lfr/testudo/spacecorsair/mod/ModFaction;->str(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_9c

    iget v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->idx:I

    invoke-static {v0, v3}, Lfr/testudo/spacecorsair/mod/ModFaction;->str(II)Ljava/lang/String;

    move-result-object v0

    const v1, -0x40b33333    # -0.8f

    invoke-static {v0, v1, v5}, Lfr/testudo/spacecorsair/mod/ModRep;->change(Ljava/lang/String;FZ)V

    .line 455
    :cond_9c
    iget v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->idx:I

    const/16 v1, 0xf

    invoke-static {v0, v1}, Lfr/testudo/spacecorsair/mod/ModFaction;->num(II)I

    move-result v0

    div-int/lit8 v0, v0, 0x3

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModQol;->missionPay(I)I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->idx:I

    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModFaction;->key(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModRep;->payoutBonus(Ljava/lang/String;)F

    move-result v1

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 456
    if-lez v0, :cond_f1

    .line 457
    sget-object v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v1, v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v1, v1, Lfr/testudo/spacecorsair/game/Game;->playerCurrentShipInventory:Lfr/testudo/spacecorsair/business/player/Inventory;

    invoke-virtual {v1, v0}, Lfr/testudo/spacecorsair/business/player/Inventory;->addCredit(I)V

    .line 458
    sget-object v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v1, v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->playerShip:Lfr/testudo/spacecorsair/business/player/PlayerShip;

    .line 459
    if-eqz v1, :cond_f1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "STANDING BONUS +"

    invoke-static {v3}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModFaction;->credits(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/high16 v2, 0x3f800000    # 1.0f

    const v3, 0x3f59999a    # 0.85f

    const v4, 0x3e99999a    # 0.3f

    invoke-static {v1, v0, v2, v3, v4}, Lfr/testudo/spacecorsair/mod/Mod;->floatText(Lfr/testudo/spacecorsair/business/Element;Ljava/lang/String;FFF)V

    .line 461
    :cond_f1
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModFaction;->prefs()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 462
    if-eqz v0, :cond_123

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fm_done_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->idx:I

    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModFaction;->id(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-direct {p0}, Lfr/testudo/spacecorsair/mod/ModFaction;->stateKey()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 463
    :cond_123
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    const v1, 0x7f0702c1

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->getStringRessource(I)Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->idx:I

    const/4 v2, 0x2

    invoke-static {v1, v2}, Lfr/testudo/spacecorsair/mod/ModFaction;->str(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lfr/testudo/spacecorsair/display/hud/WelcomeMessage;->setText(Ljava/lang/String;Ljava/lang/String;)V

    .line 464
    iget v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->idx:I

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModFaction;->key(I)Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->idx:I

    const/16 v2, 0xd

    invoke-static {v1, v2}, Lfr/testudo/spacecorsair/mod/ModFaction;->str(II)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x2328

    invoke-static {v0, v1, v2}, Lfr/testudo/spacecorsair/mod/ModComms;->show(Ljava/lang/String;Ljava/lang/String;I)V

    .line 465
    invoke-direct {p0, v5}, Lfr/testudo/spacecorsair/mod/ModFaction;->markGates(Z)V

    goto/16 :goto_7
.end method

.method static contract(I)Z
    .registers 2

    .prologue
    .line 174
    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModFaction;->order(I)I

    move-result v0

    if-nez v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method private static contractGoal(Ljava/lang/String;I)Ljava/lang/String;
    .registers 6

    .prologue
    const/4 v1, 0x1

    const/4 v3, 0x0

    .line 148
    const-string v0, "FIND_OBJECT"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    const-string v0, "Follow the signal and recover the marked object."

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 158
    :goto_10
    return-object v0

    .line 149
    :cond_11
    const-string v0, "GATHER_AND_SELL"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_20

    const-string v0, "Collect the 6 marked cargo pods and dock at headquarters to sell them."

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_10

    .line 150
    :cond_20
    const-string v0, "DEFEND_CIVILIANS"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2f

    const-string v0, "Protect the transports through 4 raider waves."

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_10

    .line 151
    :cond_2f
    const-string v0, "DEFEND_ZONE"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_48

    const-string v0, "Hold the outpost zone for {0} seconds. If the outpost is destroyed, the mission fails."

    new-array v1, v1, [Ljava/lang/Object;

    const/16 v2, 0x3c

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lfr/testudo/spacecorsair/mod/ModLang;->fmt(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_10

    .line 152
    :cond_48
    const-string v0, "BOUNTY"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_57

    const-string v0, "Hunt down the marked target."

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_10

    .line 153
    :cond_57
    const-string v0, "KILL_ENEMY_TYPE"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6e

    const-string v0, "Destroy {0} hostile ships."

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lfr/testudo/spacecorsair/mod/ModLang;->fmt(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_10

    .line 154
    :cond_6e
    const-string v0, "DESTROY_STATION"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7d

    const-string v0, "Destroy the marked station and its guards."

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_10

    .line 155
    :cond_7d
    const-string v0, "ESCORT"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8c

    const-string v0, "Escort the ship to its jump point."

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_10

    .line 156
    :cond_8c
    const-string v0, "SCAN_CIVIL"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a4

    const-string v0, "Scan {0} civilian ships."

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lfr/testudo/spacecorsair/mod/ModLang;->fmt(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_10

    .line 157
    :cond_a4
    const-string v0, "RESCUE"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_bc

    const-string v0, "Recover the {0} stranded crews."

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lfr/testudo/spacecorsair/mod/ModLang;->fmt(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_10

    .line 158
    :cond_bc
    const-string v0, ""

    goto/16 :goto_10
.end method

.method static count()I
    .registers 1

    .prologue
    .line 161
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModFaction;->rows()[[Ljava/lang/Object;

    move-result-object v0

    array-length v0, v0

    return v0
.end method

.method static credits(I)Ljava/lang/String;
    .registers 6

    .prologue
    .line 228
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v1, "%,d"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private donateTick(Lfr/testudo/spacecorsair/business/player/PlayerShip;J)V
    .registers 16

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 1160
    iget-boolean v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->completed:Z

    if-nez v0, :cond_8

    if-nez p1, :cond_9

    .line 1181
    :cond_8
    :goto_8
    return-void

    .line 1161
    :cond_9
    iget v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->donateMs:I

    int-to-long v0, v0

    sub-long/2addr v0, p2

    long-to-int v0, v0

    iput v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->donateMs:I

    .line 1162
    iget v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->donateMs:I

    if-gtz v0, :cond_8

    .line 1163
    const/16 v0, 0x3e8

    iput v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->donateMs:I

    .line 1164
    sget-object v0, Lfr/testudo/spacecorsair/game/levels/LevelId;->SPARTAN_HQ:Lfr/testudo/spacecorsair/game/levels/LevelId;

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModFaction;->sectorIs(Lfr/testudo/spacecorsair/game/levels/LevelId;)Z

    move-result v0

    if-nez v0, :cond_23

    iput-boolean v10, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->donateTold:Z

    goto :goto_8

    .line 1165
    :cond_23
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/Game;->playerCurrentShipInventory:Lfr/testudo/spacecorsair/business/player/Inventory;

    .line 1166
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModV35;->parts()I

    move-result v1

    .line 1167
    invoke-virtual {v0}, Lfr/testudo/spacecorsair/business/player/Inventory;->getCredit()J

    move-result-wide v2

    const-wide/32 v4, 0x7a120

    cmp-long v2, v2, v4

    if-ltz v2, :cond_61

    const/4 v2, 0x5

    if-lt v1, v2, :cond_61

    .line 1168
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModFaction;->prefs()Landroid/content/SharedPreferences;

    move-result-object v2

    .line 1169
    if-eqz v2, :cond_8

    .line 1170
    const v3, 0x7a120

    invoke-virtual {v0, v3}, Lfr/testudo/spacecorsair/business/player/Inventory;->removeCredit(I)V

    .line 1171
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v2, "v35_parts"

    add-int/lit8 v1, v1, -0x5

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1172
    const-string v0, "lance"

    const-string v1, "tithe paid 500000 cr + 5 parts"

    invoke-static {v0, v1}, Lfr/testudo/spacecorsair/mod/ModDev;->ev(Ljava/lang/String;Ljava/lang/String;)V

    .line 1173
    invoke-direct {p0}, Lfr/testudo/spacecorsair/mod/ModFaction;->complete()V

    goto :goto_8

    .line 1176
    :cond_61
    iget-boolean v2, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->donateTold:Z

    if-nez v2, :cond_8

    .line 1177
    iput-boolean v11, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->donateTold:Z

    .line 1178
    iget v2, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->idx:I

    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModFaction;->key(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "The tithe is {TC} credits and {TP} rare parts."

    invoke-static {v4}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lfr/testudo/spacecorsair/mod/ModFaction;->tithe(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "You carry {0} credits and {1} rare parts."

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const-wide/32 v6, 0x7fffffff

    .line 1179
    invoke-virtual {v0}, Lfr/testudo/spacecorsair/business/player/Inventory;->getCredit()J

    move-result-wide v8

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v6

    long-to-int v0, v6

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModFaction;->credits(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v10

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v5, v11

    invoke-static {v4, v5}, Lfr/testudo/spacecorsair/mod/ModLang;->fmt(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x2328

    .line 1178
    invoke-static {v2, v0, v1}, Lfr/testudo/spacecorsair/mod/ModComms;->show(Ljava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_8
.end method

.method static draw(Lfr/testudo/spacecorsair/business/player/PlayerShip;)V
    .registers 24

    .prologue
    .line 1205
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModFaction;->active()Lfr/testudo/spacecorsair/mod/ModFaction;

    move-result-object v18

    .line 1206
    if-eqz v18, :cond_20

    move-object/from16 v0, v18

    iget-boolean v2, v0, Lfr/testudo/spacecorsair/mod/ModFaction;->completed:Z

    if-nez v2, :cond_20

    move-object/from16 v0, v18

    iget-boolean v2, v0, Lfr/testudo/spacecorsair/mod/ModFaction;->inZone:Z

    if-eqz v2, :cond_20

    move-object/from16 v0, v18

    iget-boolean v2, v0, Lfr/testudo/spacecorsair/mod/ModFaction;->setupDone:Z

    if-eqz v2, :cond_20

    if-eqz p0, :cond_20

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->removed:Z

    if-eqz v2, :cond_21

    .line 1289
    :cond_20
    :goto_20
    return-void

    .line 1207
    :cond_21
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v20

    .line 1208
    const v2, 0x3f19999a    # 0.6f

    const v3, 0x3ecccccd    # 0.4f

    move-wide/from16 v0, v20

    long-to-double v4, v0

    const-wide v6, 0x406b800000000000L    # 220.0

    div-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    double-to-float v4, v4

    mul-float/2addr v3, v4

    add-float v19, v2, v3

    .line 1209
    sget-object v2, Lfr/testudo/spacecorsair/mod/ModCapitals;->FACTIONS:[Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;

    move-object/from16 v0, v18

    iget v3, v0, Lfr/testudo/spacecorsair/mod/ModFaction;->fi:I

    aget-object v22, v2, v3

    .line 1210
    const v5, 0x7f7fffff    # Float.MAX_VALUE

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 1211
    const/4 v2, 0x0

    .line 1212
    move-object/from16 v0, v18

    iget v6, v0, Lfr/testudo/spacecorsair/mod/ModFaction;->phase:I

    const/4 v7, 0x1

    if-ne v6, v7, :cond_1b0

    const-string v6, "DELIVERY"

    move-object/from16 v0, v18

    iget-object v7, v0, Lfr/testudo/spacecorsair/mod/ModFaction;->obj:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_69

    const-string v6, "GATHER_AND_SELL"

    move-object/from16 v0, v18

    iget-object v7, v0, Lfr/testudo/spacecorsair/mod/ModFaction;->obj:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1b0

    .line 1213
    :cond_69
    move-object/from16 v0, p0

    iget-object v6, v0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-static {v6}, Lfr/testudo/spacecorsair/mod/ModPlace;->nearestStation(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/business/world/station/Station;

    move-result-object v6

    .line 1214
    if-eqz v6, :cond_97

    .line 1215
    iget-object v2, v6, Lfr/testudo/spacecorsair/business/world/station/Station;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    move-object/from16 v0, p0

    iget-object v3, v0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v2, v3}, Lfr/testudo/spacecorsair/engine/Vector2;->distance(Lfr/testudo/spacecorsair/engine/Vector2;)F

    move-result v5

    .line 1216
    iget-object v2, v6, Lfr/testudo/spacecorsair/business/world/station/Station;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v4, v2, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    iget-object v2, v6, Lfr/testudo/spacecorsair/business/world/station/Station;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v3, v2, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    .line 1217
    const-string v2, "DELIVERY"

    move-object/from16 v0, v18

    iget-object v6, v0, Lfr/testudo/spacecorsair/mod/ModFaction;->obj:Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1a8

    const-string v2, "DELIVER"

    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :cond_97
    :goto_97
    move-object v11, v2

    move/from16 v17, v5

    .line 1270
    :goto_9a
    if-eqz v11, :cond_20

    const v2, 0x7f7fffff    # Float.MAX_VALUE

    cmpl-float v2, v17, v2

    if-eqz v2, :cond_20

    const v2, 0x44898000    # 1100.0f

    cmpg-float v2, v17, v2

    if-ltz v2, :cond_20

    .line 1271
    sget-object v2, Lfr/testudo/spacecorsair/display/Fleche;->MAIN_TEXTURE:Lfr/testudo/spacecorsair/display/Texture;

    .line 1272
    if-eqz v2, :cond_20

    .line 1273
    sget-object v5, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v5, v5, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->camera:Lfr/testudo/spacecorsair/engine/Camera;

    iget v7, v5, Lfr/testudo/spacecorsair/engine/Camera;->curZDecal:F

    .line 1274
    const/high16 v5, 0x42dc0000    # 110.0f

    const v6, 0x3da3d70a    # 0.08f

    mul-float/2addr v6, v7

    add-float v12, v5, v6

    .line 1275
    invoke-static {v2, v12}, Lfr/testudo/spacecorsair/mod/ModFx;->arrow(Lfr/testudo/spacecorsair/display/Texture;F)Lfr/testudo/spacecorsair/display/Drawable;

    move-result-object v5

    .line 1276
    move-object/from16 v0, p0

    iget-object v2, v0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v2, v2, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    sub-float v2, v3, v2

    float-to-double v2, v2

    move-object/from16 v0, p0

    iget-object v6, v0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v6, v6, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    sub-float/2addr v4, v6

    float-to-double v8, v4

    invoke-static {v2, v3, v8, v9}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v2

    double-to-float v2, v2

    const/high16 v3, 0x42b40000    # 90.0f

    add-float/2addr v2, v3

    const/high16 v3, 0x43b40000    # 360.0f

    rem-float/2addr v2, v3

    invoke-static {v2}, Lfr/testudo/spacecorsair/business/Element;->normalizeSpin(F)F

    move-result v6

    .line 1277
    move-object/from16 v0, p0

    iget-object v2, v0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->shipSpec:Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;

    if-eqz v2, :cond_4da

    move-object/from16 v0, p0

    iget-object v2, v0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->shipSpec:Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;

    iget v2, v2, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;->drawableSizeOfShield:I

    :goto_f0
    int-to-float v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    const/high16 v3, 0x42b40000    # 90.0f

    add-float/2addr v2, v3

    const v3, 0x3df5c28f    # 0.12f

    mul-float/2addr v3, v7

    add-float v13, v2, v3

    .line 1278
    sget-object v2, Lfr/testudo/spacecorsair/mod/ModFaction;->pos:Lfr/testudo/spacecorsair/engine/Vector2;

    const/4 v3, 0x0

    neg-float v4, v13

    invoke-virtual {v2, v3, v4}, Lfr/testudo/spacecorsair/engine/Vector2;->set(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    move-result-object v2

    float-to-double v8, v6

    invoke-static {v8, v9}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v8

    invoke-virtual {v2, v8, v9}, Lfr/testudo/spacecorsair/engine/Vector2;->applyRotatation(D)Lfr/testudo/spacecorsair/engine/Vector2;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v2, v3}, Lfr/testudo/spacecorsair/engine/Vector2;->add(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 1279
    sget-object v2, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v2, v2, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->renderQueue:Lfr/testudo/spacecorsair/engine/RenderQueue;

    sget-object v3, Lfr/testudo/spacecorsair/mod/ModFaction;->pos:Lfr/testudo/spacecorsair/engine/Vector2;

    const/4 v4, 0x0

    move-object/from16 v0, v22

    iget v8, v0, Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;->r:F

    move-object/from16 v0, v22

    iget v9, v0, Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;->g:F

    move-object/from16 v0, v22

    iget v10, v0, Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;->b:F

    move/from16 v7, v19

    invoke-virtual/range {v2 .. v10}, Lfr/testudo/spacecorsair/engine/RenderQueue;->addToWaitingQueue(Lfr/testudo/spacecorsair/engine/Vector2;ZLfr/testudo/spacecorsair/display/Drawable;FFFFF)V

    .line 1280
    move/from16 v0, v17

    float-to-int v2, v0

    .line 1281
    sget-object v3, Lfr/testudo/spacecorsair/mod/ModFaction;->arrowText:Ljava/lang/String;

    if-eqz v3, :cond_13c

    sget-object v3, Lfr/testudo/spacecorsair/mod/ModFaction;->arrowLabel:Ljava/lang/String;

    if-ne v11, v3, :cond_13c

    sget v3, Lfr/testudo/spacecorsair/mod/ModFaction;->arrowM:I

    if-eq v2, v3, :cond_15f

    .line 1282
    :cond_13c
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "m"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lfr/testudo/spacecorsair/mod/ModFaction;->arrowText:Ljava/lang/String;

    .line 1283
    sput-object v11, Lfr/testudo/spacecorsair/mod/ModFaction;->arrowLabel:Ljava/lang/String;

    .line 1284
    sput v2, Lfr/testudo/spacecorsair/mod/ModFaction;->arrowM:I

    .line 1286
    :cond_15f
    sget-object v5, Lfr/testudo/spacecorsair/mod/ModFaction;->arrowText:Ljava/lang/String;

    .line 1287
    sget-object v2, Lfr/testudo/spacecorsair/mod/ModFaction;->pos:Lfr/testudo/spacecorsair/engine/Vector2;

    const/4 v3, 0x0

    const v4, 0x3f19999a    # 0.6f

    mul-float/2addr v4, v12

    add-float/2addr v4, v13

    neg-float v4, v4

    invoke-virtual {v2, v3, v4}, Lfr/testudo/spacecorsair/engine/Vector2;->set(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    move-result-object v2

    float-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v6

    invoke-virtual {v2, v6, v7}, Lfr/testudo/spacecorsair/engine/Vector2;->applyRotatation(D)Lfr/testudo/spacecorsair/engine/Vector2;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v2, v3}, Lfr/testudo/spacecorsair/engine/Vector2;->add(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    move-result-object v2

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v3

    neg-int v3, v3

    int-to-float v3, v3

    const/high16 v4, 0x40e00000    # 7.0f

    mul-float/2addr v3, v4

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lfr/testudo/spacecorsair/engine/Vector2;->add(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 1288
    sget-object v2, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v2, v2, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->renderQueue:Lfr/testudo/spacecorsair/engine/RenderQueue;

    sget-object v3, Lfr/testudo/spacecorsair/mod/ModFaction;->pos:Lfr/testudo/spacecorsair/engine/Vector2;

    const/4 v4, 0x0

    move-object/from16 v0, v22

    iget v6, v0, Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;->r:F

    move-object/from16 v0, v22

    iget v7, v0, Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;->g:F

    move-object/from16 v0, v22

    iget v8, v0, Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;->b:F

    const/high16 v9, 0x3f800000    # 1.0f

    sget-object v10, Lfr/testudo/spacecorsair/textengine/TextSize;->NORMALPLUS:Lfr/testudo/spacecorsair/textengine/TextSize;

    invoke-virtual/range {v2 .. v10}, Lfr/testudo/spacecorsair/engine/RenderQueue;->addTextToTextWaitingQueue(Lfr/testudo/spacecorsair/engine/Vector2;ZLjava/lang/String;FFFFLfr/testudo/spacecorsair/textengine/TextSize;)V

    goto/16 :goto_20

    .line 1217
    :cond_1a8
    const-string v2, "SELL"

    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_97

    .line 1219
    :cond_1b0
    move-object/from16 v0, v18

    iget-object v6, v0, Lfr/testudo/spacecorsair/mod/ModFaction;->markers:[F

    if-eqz v6, :cond_2b7

    move-object/from16 v0, v18

    iget-object v6, v0, Lfr/testudo/spacecorsair/mod/ModFaction;->taken:[Z

    if-eqz v6, :cond_2b7

    .line 1221
    move-object/from16 v0, v18

    iget-object v0, v0, Lfr/testudo/spacecorsair/mod/ModFaction;->markers:[F

    move-object/from16 v20, v0

    .line 1222
    move-object/from16 v0, v18

    iget-object v0, v0, Lfr/testudo/spacecorsair/mod/ModFaction;->taken:[Z

    move-object/from16 v21, v0

    .line 1223
    const-string v2, "FIND_OBJECT"

    move-object/from16 v0, v18

    iget-object v6, v0, Lfr/testudo/spacecorsair/mod/ModFaction;->obj:Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1e0

    const-string v2, "DELIVERY"

    move-object/from16 v0, v18

    iget-object v6, v0, Lfr/testudo/spacecorsair/mod/ModFaction;->obj:Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_20e

    :cond_1e0
    const/4 v2, 0x1

    move v13, v2

    .line 1224
    :goto_1e2
    const/4 v2, 0x0

    move/from16 v17, v2

    move v14, v3

    move v15, v4

    move/from16 v16, v5

    :goto_1e9
    if-eqz v20, :cond_28e

    if-eqz v21, :cond_28e

    move-object/from16 v0, v21

    array-length v2, v0

    move/from16 v0, v17

    if-ge v0, v2, :cond_28e

    mul-int/lit8 v2, v17, 0x2

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, v20

    array-length v3, v0

    if-ge v2, v3, :cond_28e

    .line 1225
    aget-boolean v2, v21, v17

    if-eqz v2, :cond_211

    move v4, v14

    move v3, v15

    move/from16 v2, v16

    .line 1224
    :cond_205
    :goto_205
    add-int/lit8 v5, v17, 0x1

    move/from16 v17, v5

    move v14, v4

    move v15, v3

    move/from16 v16, v2

    goto :goto_1e9

    .line 1223
    :cond_20e
    const/4 v2, 0x0

    move v13, v2

    goto :goto_1e2

    .line 1226
    :cond_211
    mul-int/lit8 v2, v17, 0x2

    aget v3, v20, v2

    mul-int/lit8 v2, v17, 0x2

    add-int/lit8 v2, v2, 0x1

    aget v4, v20, v2

    .line 1227
    const-string v2, "fx_ring"

    const/high16 v5, 0x43820000    # 260.0f

    mul-float v5, v5, v19

    const/high16 v6, 0x43820000    # 260.0f

    mul-float v6, v6, v19

    const/4 v7, 0x0

    move-object/from16 v0, v22

    iget v8, v0, Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;->r:F

    move-object/from16 v0, v22

    iget v9, v0, Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;->g:F

    move-object/from16 v0, v22

    iget v10, v0, Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;->b:F

    const v11, 0x3f4ccccd    # 0.8f

    const/4 v12, 0x1

    invoke-static/range {v2 .. v12}, Lfr/testudo/spacecorsair/mod/ModFx;->spr(Ljava/lang/String;FFFFFFFFFZ)V

    .line 1228
    const-string v2, "fx_glow"

    const/high16 v5, 0x43340000    # 180.0f

    const/high16 v6, 0x43340000    # 180.0f

    const/4 v7, 0x0

    move-object/from16 v0, v22

    iget v8, v0, Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;->r:F

    move-object/from16 v0, v22

    iget v9, v0, Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;->g:F

    move-object/from16 v0, v22

    iget v10, v0, Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;->b:F

    const v11, 0x3f19999a    # 0.6f

    const v12, 0x3e99999a    # 0.3f

    mul-float v12, v12, v19

    add-float/2addr v11, v12

    const/4 v12, 0x1

    invoke-static/range {v2 .. v12}, Lfr/testudo/spacecorsair/mod/ModFx;->spr(Ljava/lang/String;FFFFFFFFFZ)V

    .line 1229
    const-string v2, "fx_core"

    const/high16 v5, 0x42700000    # 60.0f

    const/high16 v6, 0x42700000    # 60.0f

    const/4 v7, 0x0

    const/high16 v8, 0x3f800000    # 1.0f

    const/high16 v9, 0x3f800000    # 1.0f

    const/high16 v10, 0x3f800000    # 1.0f

    const v11, 0x3f666666    # 0.9f

    const/4 v12, 0x1

    invoke-static/range {v2 .. v12}, Lfr/testudo/spacecorsair/mod/ModFx;->spr(Ljava/lang/String;FFFFFFFFFZ)V

    .line 1230
    move-object/from16 v0, p0

    iget-object v2, v0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v2, v2, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    sub-float v2, v3, v2

    float-to-double v6, v2

    move-object/from16 v0, p0

    iget-object v2, v0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v2, v2, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    sub-float v2, v4, v2

    float-to-double v8, v2

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v6

    double-to-float v2, v6

    .line 1231
    cmpg-float v5, v2, v16

    if-ltz v5, :cond_205

    move v4, v14

    move v3, v15

    move/from16 v2, v16

    goto/16 :goto_205

    .line 1233
    :cond_28e
    if-eqz v13, :cond_29d

    const-string v2, "SIGNAL"

    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :goto_296
    move-object v11, v2

    move v3, v14

    move v4, v15

    move/from16 v17, v16

    .line 1234
    goto/16 :goto_9a

    .line 1233
    :cond_29d
    const-string v2, "RESCUE"

    move-object/from16 v0, v18

    iget-object v3, v0, Lfr/testudo/spacecorsair/mod/ModFaction;->obj:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2b0

    const-string v2, "PILOT"

    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_296

    :cond_2b0
    const-string v2, "CARGO"

    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_296

    .line 1234
    :cond_2b7
    const-string v6, "DEFEND_ZONE"

    move-object/from16 v0, v18

    iget-object v7, v0, Lfr/testudo/spacecorsair/mod/ModFaction;->obj:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_34f

    .line 1235
    const-string v2, "fx_ring"

    move-object/from16 v0, v18

    iget-object v3, v0, Lfr/testudo/spacecorsair/mod/ModFaction;->center:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v3, v3, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    move-object/from16 v0, v18

    iget-object v4, v0, Lfr/testudo/spacecorsair/mod/ModFaction;->center:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v4, v4, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    const/high16 v5, 0x45610000    # 3600.0f

    const/high16 v6, 0x45610000    # 3600.0f

    move-wide/from16 v0, v20

    long-to-float v7, v0

    const/high16 v8, 0x42a00000    # 80.0f

    div-float/2addr v7, v8

    const/high16 v8, 0x43b40000    # 360.0f

    rem-float/2addr v7, v8

    move-object/from16 v0, v22

    iget v8, v0, Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;->r:F

    move-object/from16 v0, v22

    iget v9, v0, Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;->g:F

    move-object/from16 v0, v22

    iget v10, v0, Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;->b:F

    const v11, 0x3eb33333    # 0.35f

    const/4 v12, 0x1

    invoke-static/range {v2 .. v12}, Lfr/testudo/spacecorsair/mod/ModFx;->spr(Ljava/lang/String;FFFFFFFFFZ)V

    .line 1236
    move-object/from16 v0, v18

    iget-object v2, v0, Lfr/testudo/spacecorsair/mod/ModFaction;->center:Lfr/testudo/spacecorsair/engine/Vector2;

    move-object/from16 v0, p0

    iget-object v3, v0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v2, v3}, Lfr/testudo/spacecorsair/engine/Vector2;->distance(Lfr/testudo/spacecorsair/engine/Vector2;)F

    move-result v5

    .line 1237
    move-object/from16 v0, v18

    iget-object v2, v0, Lfr/testudo/spacecorsair/mod/ModFaction;->center:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v4, v2, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    move-object/from16 v0, v18

    iget-object v2, v0, Lfr/testudo/spacecorsair/mod/ModFaction;->center:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v3, v2, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    .line 1238
    const/4 v2, 0x0

    move-object/from16 v0, v18

    iget v6, v0, Lfr/testudo/spacecorsair/mod/ModFaction;->goal:I

    move-object/from16 v0, v18

    iget v7, v0, Lfr/testudo/spacecorsair/mod/ModFaction;->holdMs:I

    sub-int/2addr v6, v7

    div-int/lit16 v6, v6, 0x3e8

    invoke-static {v2, v6}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 1239
    sget-object v6, Lfr/testudo/spacecorsair/mod/ModFaction;->holdLabel:Ljava/lang/String;

    if-eqz v6, :cond_321

    sget v6, Lfr/testudo/spacecorsair/mod/ModFaction;->holdSec:I

    if-eq v2, v6, :cond_348

    .line 1240
    :cond_321
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "HOLD"

    invoke-static {v7}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "s"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    sput-object v6, Lfr/testudo/spacecorsair/mod/ModFaction;->holdLabel:Ljava/lang/String;

    .line 1241
    sput v2, Lfr/testudo/spacecorsair/mod/ModFaction;->holdSec:I

    .line 1243
    :cond_348
    sget-object v2, Lfr/testudo/spacecorsair/mod/ModFaction;->holdLabel:Ljava/lang/String;

    move-object v11, v2

    move/from16 v17, v5

    .line 1244
    goto/16 :goto_9a

    :cond_34f
    const-string v6, "DEFEND_CIVILIANS"

    move-object/from16 v0, v18

    iget-object v7, v0, Lfr/testudo/spacecorsair/mod/ModFaction;->obj:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_39e

    move-object/from16 v0, v18

    iget-boolean v6, v0, Lfr/testudo/spacecorsair/mod/ModFaction;->wavesOn:Z

    if-nez v6, :cond_39e

    .line 1245
    move-object/from16 v0, v18

    iget-object v2, v0, Lfr/testudo/spacecorsair/mod/ModFaction;->civs:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_369
    :goto_369
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_393

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;

    .line 1246
    if-eqz v2, :cond_369

    iget-boolean v6, v2, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->removed:Z

    if-nez v6, :cond_369

    .line 1247
    iget-object v6, v2, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    move-object/from16 v0, p0

    iget-object v8, v0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v6, v8}, Lfr/testudo/spacecorsair/engine/Vector2;->distance(Lfr/testudo/spacecorsair/engine/Vector2;)F

    move-result v6

    .line 1248
    cmpg-float v8, v6, v5

    if-gez v8, :cond_369

    iget-object v3, v2, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v4, v3, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    iget-object v2, v2, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v3, v2, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    move v5, v6

    goto :goto_369

    .line 1250
    :cond_393
    const-string v2, "CONVOY"

    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object v11, v2

    move/from16 v17, v5

    goto/16 :goto_9a

    .line 1251
    :cond_39e
    const-string v6, "ESCORT"

    move-object/from16 v0, v18

    iget-object v7, v0, Lfr/testudo/spacecorsair/mod/ModFaction;->obj:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_406

    move-object/from16 v0, v18

    iget-object v6, v0, Lfr/testudo/spacecorsair/mod/ModFaction;->target:Lfr/testudo/spacecorsair/business/Element;

    if-eqz v6, :cond_406

    move-object/from16 v0, v18

    iget-object v6, v0, Lfr/testudo/spacecorsair/mod/ModFaction;->target:Lfr/testudo/spacecorsair/business/Element;

    iget-boolean v6, v6, Lfr/testudo/spacecorsair/business/Element;->removed:Z

    if-nez v6, :cond_406

    .line 1252
    const-string v2, "fx_ring"

    move-object/from16 v0, v18

    iget-object v3, v0, Lfr/testudo/spacecorsair/mod/ModFaction;->gate:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v3, v3, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    move-object/from16 v0, v18

    iget-object v4, v0, Lfr/testudo/spacecorsair/mod/ModFaction;->gate:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v4, v4, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    const/high16 v5, 0x442f0000    # 700.0f

    mul-float v5, v5, v19

    const/high16 v6, 0x442f0000    # 700.0f

    mul-float v6, v6, v19

    const/4 v7, 0x0

    const/high16 v8, 0x3f000000    # 0.5f

    const/high16 v9, 0x3f800000    # 1.0f

    const v10, 0x3f19999a    # 0.6f

    const v11, 0x3f19999a    # 0.6f

    const/4 v12, 0x1

    invoke-static/range {v2 .. v12}, Lfr/testudo/spacecorsair/mod/ModFx;->spr(Ljava/lang/String;FFFFFFFFFZ)V

    .line 1253
    move-object/from16 v0, v18

    iget-object v2, v0, Lfr/testudo/spacecorsair/mod/ModFaction;->target:Lfr/testudo/spacecorsair/business/Element;

    iget-object v2, v2, Lfr/testudo/spacecorsair/business/Element;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    move-object/from16 v0, p0

    iget-object v3, v0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v2, v3}, Lfr/testudo/spacecorsair/engine/Vector2;->distance(Lfr/testudo/spacecorsair/engine/Vector2;)F

    move-result v5

    .line 1254
    move-object/from16 v0, v18

    iget-object v2, v0, Lfr/testudo/spacecorsair/mod/ModFaction;->target:Lfr/testudo/spacecorsair/business/Element;

    iget-object v2, v2, Lfr/testudo/spacecorsair/business/Element;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v4, v2, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    move-object/from16 v0, v18

    iget-object v2, v0, Lfr/testudo/spacecorsair/mod/ModFaction;->target:Lfr/testudo/spacecorsair/business/Element;

    iget-object v2, v2, Lfr/testudo/spacecorsair/business/Element;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v3, v2, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    .line 1255
    move-object/from16 v0, v18

    iget-object v2, v0, Lfr/testudo/spacecorsair/mod/ModFaction;->target:Lfr/testudo/spacecorsair/business/Element;

    iget-object v2, v2, Lfr/testudo/spacecorsair/business/Element;->specificName:Ljava/lang/String;

    move-object v11, v2

    move/from16 v17, v5

    goto/16 :goto_9a

    .line 1256
    :cond_406
    move-object/from16 v0, v18

    iget-object v6, v0, Lfr/testudo/spacecorsair/mod/ModFaction;->target:Lfr/testudo/spacecorsair/business/Element;

    if-eqz v6, :cond_43d

    move-object/from16 v0, v18

    iget-object v6, v0, Lfr/testudo/spacecorsair/mod/ModFaction;->target:Lfr/testudo/spacecorsair/business/Element;

    iget-boolean v6, v6, Lfr/testudo/spacecorsair/business/Element;->removed:Z

    if-nez v6, :cond_43d

    .line 1257
    move-object/from16 v0, v18

    iget-object v2, v0, Lfr/testudo/spacecorsair/mod/ModFaction;->target:Lfr/testudo/spacecorsair/business/Element;

    iget-object v2, v2, Lfr/testudo/spacecorsair/business/Element;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    move-object/from16 v0, p0

    iget-object v3, v0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v2, v3}, Lfr/testudo/spacecorsair/engine/Vector2;->distance(Lfr/testudo/spacecorsair/engine/Vector2;)F

    move-result v5

    .line 1258
    move-object/from16 v0, v18

    iget-object v2, v0, Lfr/testudo/spacecorsair/mod/ModFaction;->target:Lfr/testudo/spacecorsair/business/Element;

    iget-object v2, v2, Lfr/testudo/spacecorsair/business/Element;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v4, v2, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    move-object/from16 v0, v18

    iget-object v2, v0, Lfr/testudo/spacecorsair/mod/ModFaction;->target:Lfr/testudo/spacecorsair/business/Element;

    iget-object v2, v2, Lfr/testudo/spacecorsair/business/Element;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v3, v2, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    .line 1259
    move-object/from16 v0, v18

    iget-object v2, v0, Lfr/testudo/spacecorsair/mod/ModFaction;->target:Lfr/testudo/spacecorsair/business/Element;

    iget-object v2, v2, Lfr/testudo/spacecorsair/business/Element;->specificName:Ljava/lang/String;

    move-object v11, v2

    move/from16 v17, v5

    goto/16 :goto_9a

    .line 1260
    :cond_43d
    const-string v6, "SCAN_CIVIL"

    move-object/from16 v0, v18

    iget-object v7, v0, Lfr/testudo/spacecorsair/mod/ModFaction;->obj:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4e4

    .line 1261
    const/4 v2, 0x0

    move v14, v2

    move v15, v3

    move/from16 v16, v4

    move/from16 v17, v5

    :goto_450
    move-object/from16 v0, v18

    iget-object v2, v0, Lfr/testudo/spacecorsair/mod/ModFaction;->civs:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v14, v2, :cond_4ce

    move-object/from16 v0, v18

    iget-object v2, v0, Lfr/testudo/spacecorsair/mod/ModFaction;->scanMs:[I

    array-length v2, v2

    if-ge v14, v2, :cond_4ce

    .line 1262
    move-object/from16 v0, v18

    iget-object v2, v0, Lfr/testudo/spacecorsair/mod/ModFaction;->civs:Ljava/util/List;

    invoke-interface {v2, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v13, v2

    check-cast v13, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;

    .line 1263
    if-eqz v13, :cond_4de

    iget-boolean v2, v13, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->removed:Z

    if-nez v2, :cond_4de

    move-object/from16 v0, v18

    iget-object v2, v0, Lfr/testudo/spacecorsair/mod/ModFaction;->scanMs:[I

    aget v2, v2, v14

    if-gez v2, :cond_488

    move v3, v15

    move/from16 v4, v16

    move/from16 v5, v17

    .line 1261
    :goto_47f
    add-int/lit8 v2, v14, 0x1

    move v14, v2

    move v15, v3

    move/from16 v16, v4

    move/from16 v17, v5

    goto :goto_450

    .line 1264
    :cond_488
    const-string v2, "fx_ring"

    iget-object v3, v13, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v3, v3, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    iget-object v4, v13, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v4, v4, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    const/high16 v5, 0x44610000    # 900.0f

    const/high16 v6, 0x44610000    # 900.0f

    move-wide/from16 v0, v20

    long-to-float v7, v0

    const/high16 v8, 0x42700000    # 60.0f

    div-float/2addr v7, v8

    const/high16 v8, 0x43b40000    # 360.0f

    rem-float/2addr v7, v8

    const/high16 v8, 0x3f000000    # 0.5f

    const v9, 0x3f666666    # 0.9f

    const/high16 v10, 0x3f800000    # 1.0f

    const/high16 v11, 0x3e800000    # 0.25f

    const v12, 0x3e19999a    # 0.15f

    mul-float v12, v12, v19

    add-float/2addr v11, v12

    const/4 v12, 0x1

    invoke-static/range {v2 .. v12}, Lfr/testudo/spacecorsair/mod/ModFx;->spr(Ljava/lang/String;FFFFFFFFFZ)V

    .line 1265
    iget-object v2, v13, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    move-object/from16 v0, p0

    iget-object v3, v0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v2, v3}, Lfr/testudo/spacecorsair/engine/Vector2;->distance(Lfr/testudo/spacecorsair/engine/Vector2;)F

    move-result v5

    .line 1266
    cmpg-float v2, v5, v17

    if-gez v2, :cond_4de

    iget-object v2, v13, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v0, v2, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    move/from16 v16, v0

    iget-object v2, v13, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v15, v2, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    move v3, v15

    move/from16 v4, v16

    goto :goto_47f

    .line 1268
    :cond_4ce
    const-string v2, "SCAN"

    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object v11, v2

    move v3, v15

    move/from16 v4, v16

    goto/16 :goto_9a

    .line 1277
    :cond_4da
    const/16 v2, 0xc8

    goto/16 :goto_f0

    :cond_4de
    move v3, v15

    move/from16 v4, v16

    move/from16 v5, v17

    goto :goto_47f

    :cond_4e4
    move-object v11, v2

    move/from16 v17, v5

    goto/16 :goto_9a
.end method

.method private escortArrived()V
    .registers 7

    .prologue
    const/4 v5, 0x1

    const/4 v3, 0x0

    .line 1140
    const-string v0, "escort"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "arrived "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->idx:I

    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModFaction;->id(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " phase="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->phase:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lfr/testudo/spacecorsair/mod/ModDev;->ev(Ljava/lang/String;Ljava/lang/String;)V

    .line 1141
    iget v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->phase:I

    if-nez v0, :cond_64

    invoke-direct {p0}, Lfr/testudo/spacecorsair/mod/ModFaction;->secondSector()Lfr/testudo/spacecorsair/game/levels/LevelId;

    move-result-object v0

    if-eqz v0, :cond_64

    .line 1142
    iput v5, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->phase:I

    .line 1143
    iput-boolean v3, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->courierMoving:Z

    .line 1144
    iput-boolean v3, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->secondLegPlaced:Z

    .line 1145
    const/4 v0, 0x0

    iput-object v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->target:Lfr/testudo/spacecorsair/business/Element;

    .line 1146
    invoke-direct {p0}, Lfr/testudo/spacecorsair/mod/ModFaction;->save()V

    .line 1147
    invoke-direct {p0}, Lfr/testudo/spacecorsair/mod/ModFaction;->activeSector()Lfr/testudo/spacecorsair/game/levels/LevelId;

    move-result-object v0

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModFaction;->sectorIs(Lfr/testudo/spacecorsair/game/levels/LevelId;)Z

    move-result v0

    iput-boolean v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->inZone:Z

    .line 1148
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->playerShip:Lfr/testudo/spacecorsair/business/player/PlayerShip;

    const-string v1, "FOLLOW THE COURIER THROUGH THE GATE"

    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/high16 v2, 0x3f000000    # 0.5f

    const/high16 v3, 0x3f800000    # 1.0f

    const v4, 0x3f19999a    # 0.6f

    invoke-static {v0, v1, v2, v3, v4}, Lfr/testudo/spacecorsair/mod/Mod;->floatText(Lfr/testudo/spacecorsair/business/Element;Ljava/lang/String;FFF)V

    .line 1149
    invoke-direct {p0, v5}, Lfr/testudo/spacecorsair/mod/ModFaction;->markGates(Z)V

    .line 1153
    :goto_63
    return-void

    .line 1152
    :cond_64
    invoke-direct {p0}, Lfr/testudo/spacecorsair/mod/ModFaction;->complete()V

    goto :goto_63
.end method

.method static faction(Ljava/lang/String;)I
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 185
    move v0, v1

    :goto_2
    sget-object v2, Lfr/testudo/spacecorsair/mod/ModCapitals;->FACTIONS:[Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;

    array-length v2, v2

    if-ge v0, v2, :cond_17

    sget-object v2, Lfr/testudo/spacecorsair/mod/ModCapitals;->FACTIONS:[Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;

    aget-object v2, v2, v0

    iget-object v2, v2, Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;->key:Ljava/lang/String;

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_14

    .line 186
    :goto_13
    return v0

    .line 185
    :cond_14
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_17
    move v0, v1

    .line 186
    goto :goto_13
.end method

.method private fail()V
    .registers 6

    .prologue
    const/16 v4, 0xe

    const/4 v3, 0x0

    .line 469
    const-string v0, "ModFaction"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "failed "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->idx:I

    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModFaction;->id(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 470
    invoke-direct {p0}, Lfr/testudo/spacecorsair/mod/ModFaction;->cleanup()V

    .line 471
    iput-boolean v3, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->planned:Z

    .line 472
    invoke-direct {p0}, Lfr/testudo/spacecorsair/mod/ModFaction;->save()V

    .line 473
    invoke-static {v3}, Lfr/testudo/spacecorsair/mod/ModAlerts;->missionResult(Z)V

    .line 474
    iget v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->idx:I

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModFaction;->key(I)Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->idx:I

    invoke-static {v1, v4}, Lfr/testudo/spacecorsair/mod/ModFaction;->str(II)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x2328

    invoke-static {v0, v1, v2}, Lfr/testudo/spacecorsair/mod/ModComms;->show(Ljava/lang/String;Ljava/lang/String;I)V

    .line 475
    iget v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->idx:I

    invoke-static {v0, v4}, Lfr/testudo/spacecorsair/mod/ModFaction;->str(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lfr/testudo/spacecorsair/business/mission/Mission;->setMissionFailure(Ljava/lang/String;)V

    .line 476
    return-void
.end method

.method private static farFrom(Lfr/testudo/spacecorsair/engine/Vector2;FF)Lfr/testudo/spacecorsair/engine/Vector2;
    .registers 4

    .prologue
    .line 933
    invoke-static {p0, p1, p2}, Lfr/testudo/spacecorsair/mod/ModPlace;->farPoint(Lfr/testudo/spacecorsair/engine/Vector2;FF)Lfr/testudo/spacecorsair/engine/Vector2;

    move-result-object v0

    return-object v0
.end method

.method private static farGate(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;
    .registers 9

    .prologue
    const/4 v4, 0x0

    .line 755
    .line 756
    const/high16 v1, -0x40800000    # -1.0f

    .line 758
    :try_start_3
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/Game;->currentLevel:Lfr/testudo/spacecorsair/game/levels/Level;

    iget-object v6, v0, Lfr/testudo/spacecorsair/game/levels/Level;->elements:Ljava/util/List;

    .line 759
    const/4 v0, 0x0

    move v5, v0

    move-object v3, v4

    :goto_e
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v0

    if-ge v5, v0, :cond_39

    .line 760
    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfr/testudo/spacecorsair/business/Element;

    .line 761
    instance-of v2, v0, Lfr/testudo/spacecorsair/business/world/Portal;

    if-eqz v2, :cond_4b

    iget-boolean v2, v0, Lfr/testudo/spacecorsair/business/Element;->removed:Z

    if-eqz v2, :cond_28

    move v0, v1

    .line 759
    :goto_23
    add-int/lit8 v2, v5, 0x1

    move v5, v2

    move v1, v0

    goto :goto_e

    .line 762
    :cond_28
    iget-object v2, v0, Lfr/testudo/spacecorsair/business/Element;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v2, p0}, Lfr/testudo/spacecorsair/engine/Vector2;->distance(Lfr/testudo/spacecorsair/engine/Vector2;)F

    move-result v2

    .line 763
    cmpl-float v7, v2, v1

    if-lez v7, :cond_4b

    iget-object v1, v0, Lfr/testudo/spacecorsair/business/Element;->position:Lfr/testudo/spacecorsair/engine/Vector2;
    :try_end_34
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_34} :catch_37

    move v0, v2

    move-object v3, v1

    goto :goto_23

    .line 765
    :catch_37
    move-exception v0

    move-object v3, v4

    .line 768
    :cond_39
    if-eqz v3, :cond_41

    new-instance v0, Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-direct {v0, v3}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>(Lfr/testudo/spacecorsair/engine/Vector2;)V

    :goto_40
    return-object v0

    :cond_41
    const/high16 v0, 0x45fa0000    # 8000.0f

    const v1, 0x7f7fffff    # Float.MAX_VALUE

    invoke-static {p0, v0, v1}, Lfr/testudo/spacecorsair/mod/ModPlace;->farPoint(Lfr/testudo/spacecorsair/engine/Vector2;FF)Lfr/testudo/spacecorsair/engine/Vector2;

    move-result-object v0

    goto :goto_40

    :cond_4b
    move v0, v1

    goto :goto_23
.end method

.method private foe(IZ)Lfr/testudo/spacecorsair/business/ennemis/Ennemis;
    .registers 4

    .prologue
    .line 627
    invoke-direct {p0}, Lfr/testudo/spacecorsair/mod/ModFaction;->foeLevel()I

    move-result v0

    invoke-direct {p0, p1, p2, v0}, Lfr/testudo/spacecorsair/mod/ModFaction;->foe(IZI)Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    move-result-object v0

    return-object v0
.end method

.method private foe(IZI)Lfr/testudo/spacecorsair/business/ennemis/Ennemis;
    .registers 13

    .prologue
    const/4 v2, 0x0

    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    .line 631
    const/4 v0, 0x0

    .line 632
    if-nez p1, :cond_5b

    .line 633
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 634
    sget-object v4, Lfr/testudo/spacecorsair/mod/ModFleet;->TYPES:[Lfr/testudo/spacecorsair/mod/ModFleet$Type;

    array-length v5, v4

    move v1, v2

    :goto_f
    if-ge v1, v5, :cond_2d

    aget-object v6, v4, v1

    .line 635
    iget-boolean v7, v6, Lfr/testudo/spacecorsair/mod/ModFleet$Type;->kretari:Z

    if-nez v7, :cond_2a

    iget v7, v6, Lfr/testudo/spacecorsair/mod/ModFleet$Type;->minLevel:I

    invoke-static {v7}, Lfr/testudo/spacecorsair/mod/ModV34;->lvl(I)I

    move-result v7

    if-gt v7, p3, :cond_2a

    if-nez p2, :cond_27

    iget v7, v6, Lfr/testudo/spacecorsair/mod/ModFleet$Type;->size:I

    const/16 v8, 0xc8

    if-gt v7, v8, :cond_2a

    :cond_27
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 634
    :cond_2a
    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    .line 637
    :cond_2d
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_54

    .line 638
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x4

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 639
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v4

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    sub-int/2addr v1, v0

    int-to-double v6, v1

    mul-double/2addr v4, v6

    double-to-int v1, v4

    add-int/2addr v0, v1

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfr/testudo/spacecorsair/mod/ModFleet$Type;

    invoke-static {v0, p3}, Lfr/testudo/spacecorsair/mod/ModFleet;->build(Lfr/testudo/spacecorsair/mod/ModFleet$Type;I)Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    move-result-object v0

    .line 641
    :cond_54
    if-nez v0, :cond_5a

    invoke-static {p3}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisFactory;->newBasicEnnemisShip(I)Lfr/testudo/spacecorsair/business/ennemis/BasicEnnemyShip;

    move-result-object v0

    .line 649
    :cond_5a
    :goto_5a
    return-object v0

    .line 642
    :cond_5b
    const/4 v0, 0x1

    if-ne p1, v0, :cond_80

    .line 643
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v0

    cmpg-double v0, v0, v4

    if-gez v0, :cond_78

    invoke-static {p3}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisFactory;->newFrelon(I)Lfr/testudo/spacecorsair/business/ennemis/FrelonShip;

    move-result-object v0

    .line 644
    :goto_6a
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v2

    cmpg-double v1, v2, v4

    if-gez v1, :cond_7d

    const-string v1, "Syndicate Harvester"

    :goto_74
    invoke-static {v0, v1}, Lfr/testudo/spacecorsair/mod/ModFaction;->name(Lfr/testudo/spacecorsair/business/Element;Ljava/lang/String;)V

    goto :goto_5a

    .line 643
    :cond_78
    invoke-static {p3}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisFactory;->newDefensor(I)Lfr/testudo/spacecorsair/business/ennemis/DefensorShip;

    move-result-object v0

    goto :goto_6a

    .line 644
    :cond_7d
    const-string v1, "Syndicate Enforcer"

    goto :goto_74

    .line 646
    :cond_80
    invoke-static {p3}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisFactory;->newDefensor(I)Lfr/testudo/spacecorsair/business/ennemis/DefensorShip;

    move-result-object v0

    .line 647
    const-string v1, "Authority Picket"

    invoke-static {v0, v1}, Lfr/testudo/spacecorsair/mod/ModFaction;->name(Lfr/testudo/spacecorsair/business/Element;Ljava/lang/String;)V

    goto :goto_5a
.end method

.method private foeLevel()I
    .registers 7

    .prologue
    .line 602
    iget v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->idx:I

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModFaction;->minLevel(I)I

    move-result v0

    .line 603
    iget v1, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->idx:I

    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModFaction;->contract(I)Z

    move-result v1

    if-nez v1, :cond_16

    iget v1, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->idx:I

    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModFaction;->lance(I)Z

    move-result v1

    if-eqz v1, :cond_29

    .line 605
    :cond_16
    const/4 v0, 0x1

    const/16 v1, 0x28

    :try_start_19
    sget-object v2, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v2, v2, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v2, v2, Lfr/testudo/spacecorsair/game/Game;->playerInfo:Lfr/testudo/spacecorsair/business/player/PlayerInfo;

    iget v2, v2, Lfr/testudo/spacecorsair/business/player/PlayerInfo;->level:I

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I
    :try_end_28
    .catch Ljava/lang/Throwable; {:try_start_19 .. :try_end_28} :catch_33

    move-result v0

    .line 607
    :cond_29
    :goto_29
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v2

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    mul-double/2addr v2, v4

    double-to-int v1, v2

    add-int/2addr v0, v1

    return v0

    .line 605
    :catch_33
    move-exception v0

    const/4 v0, 0x5

    goto :goto_29
.end method

.method private static gateTo(Lfr/testudo/spacecorsair/game/levels/LevelId;)Lfr/testudo/spacecorsair/business/world/Portal;
    .registers 3

    .prologue
    .line 746
    if-eqz p0, :cond_12

    :try_start_2
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/Game;->currentLevel:Lfr/testudo/spacecorsair/game/levels/Level;

    invoke-static {p0}, Lfr/testudo/spacecorsair/business/world/PathFinder;->getPortalNameToGoTo(Lfr/testudo/spacecorsair/game/levels/LevelId;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/game/levels/Level;->findPortalByName(Ljava/lang/String;)Lfr/testudo/spacecorsair/business/world/Portal;
    :try_end_f
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_f} :catch_11

    move-result-object v0

    .line 750
    :goto_10
    return-object v0

    .line 747
    :catch_11
    move-exception v0

    .line 750
    :cond_12
    const/4 v0, 0x0

    goto :goto_10
.end method

.method private holdLevel()I
    .registers 4

    .prologue
    const/4 v1, 0x1

    .line 612
    .line 613
    :try_start_1
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/Game;->playerInfo:Lfr/testudo/spacecorsair/business/player/PlayerInfo;

    iget v0, v0, Lfr/testudo/spacecorsair/business/player/PlayerInfo;->level:I
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_9} :catch_1e

    .line 614
    :goto_9
    iget-object v2, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->zone:Lfr/testudo/spacecorsair/game/levels/LevelId;

    .line 615
    if-eqz v2, :cond_13

    iget v2, v2, Lfr/testudo/spacecorsair/game/levels/LevelId;->levelMax:I

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 616
    :cond_13
    const/16 v2, 0x28

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0

    .line 613
    :catch_1e
    move-exception v0

    move v0, v1

    goto :goto_9
.end method

.method static holdingZone()Z
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 425
    :try_start_1
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModFaction;->active()Lfr/testudo/spacecorsair/mod/ModFaction;

    move-result-object v1

    .line 426
    if-eqz v1, :cond_2c

    iget-boolean v2, v1, Lfr/testudo/spacecorsair/mod/ModFaction;->completed:Z

    if-nez v2, :cond_2c

    const-string v2, "DEFEND_ZONE"

    iget-object v3, v1, Lfr/testudo/spacecorsair/mod/ModFaction;->obj:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2c

    sget-object v2, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v2, v2, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v2, v2, Lfr/testudo/spacecorsair/game/Game;->currentLevel:Lfr/testudo/spacecorsair/game/levels/Level;

    if-eqz v2, :cond_2c

    sget-object v2, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v2, v2, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v2, v2, Lfr/testudo/spacecorsair/game/Game;->currentLevel:Lfr/testudo/spacecorsair/game/levels/Level;

    iget-object v2, v2, Lfr/testudo/spacecorsair/game/levels/Level;->id:Lfr/testudo/spacecorsair/game/levels/LevelId;

    .line 427
    invoke-direct {v1}, Lfr/testudo/spacecorsair/mod/ModFaction;->activeSector()Lfr/testudo/spacecorsair/game/levels/LevelId;
    :try_end_28
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_28} :catch_2d

    move-result-object v1

    if-ne v2, v1, :cond_2c

    const/4 v0, 0x1

    .line 429
    :cond_2c
    :goto_2c
    return v0

    .line 428
    :catch_2d
    move-exception v1

    goto :goto_2c
.end method

.method static hunt(I)Z
    .registers 4

    .prologue
    const/16 v2, 0x13

    .line 175
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModFaction;->rows()[[Ljava/lang/Object;

    move-result-object v0

    aget-object v0, v0, p0

    array-length v1, v0

    if-le v1, v2, :cond_17

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    aget-object v0, v0, v2

    invoke-virtual {v1, v0}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    const/4 v0, 0x1

    :goto_16
    return v0

    :cond_17
    const/4 v0, 0x0

    goto :goto_16
.end method

.method static id(I)Ljava/lang/String;
    .registers 4

    .prologue
    .line 181
    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModFaction;->lance(I)Z

    move-result v0

    if-eqz v0, :cond_2b

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "FACTION_LANCE_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v0, "DONATE"

    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModFaction;->objective(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_28

    const-string v0, "TITHE"

    :goto_1f
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 182
    :goto_27
    return-object v0

    .line 181
    :cond_28
    const-string v0, "TRIAL"

    goto :goto_1f

    .line 182
    :cond_2b
    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModFaction;->contract(I)Z

    move-result v0

    if-eqz v0, :cond_5d

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "FACTION_C_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModFaction;->key(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x11

    invoke-static {p0, v1}, Lfr/testudo/spacecorsair/mod/ModFaction;->num(II)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_27

    :cond_5d
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "FACTION_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModFaction;->key(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModFaction;->order(I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_27
.end method

.method private instruction()Ljava/lang/String;
    .registers 11

    .prologue
    const/4 v4, 0x2

    const/4 v0, 0x0

    const/16 v8, 0xc

    const/4 v3, 0x1

    .line 1388
    sget-object v1, Lfr/testudo/spacecorsair/mod/ModCapitals;->FACTIONS:[Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;

    iget v2, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->fi:I

    aget-object v5, v1, v2

    .line 1389
    iget-object v6, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->target:Lfr/testudo/spacecorsair/business/Element;

    .line 1390
    invoke-direct {p0}, Lfr/testudo/spacecorsair/mod/ModFaction;->activeSector()Lfr/testudo/spacecorsair/game/levels/LevelId;

    move-result-object v7

    .line 1392
    iget-boolean v1, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->completed:Z

    if-eqz v1, :cond_32

    move v1, v0

    move v2, v0

    .line 1405
    :goto_17
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->instrText:Ljava/lang/String;

    .line 1406
    if-eqz v0, :cond_104

    iget v8, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->instrBranch:I

    if-ne v2, v8, :cond_104

    iget v8, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->instrVal:I

    if-ne v1, v8, :cond_104

    iget-object v8, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->instrTarget:Lfr/testudo/spacecorsair/business/Element;

    if-ne v6, v8, :cond_104

    iget v8, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->goal:I

    iget v9, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->instrGoal:I

    if-ne v8, v9, :cond_104

    iget-object v8, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->instrWhere:Lfr/testudo/spacecorsair/game/levels/LevelId;

    if-ne v7, v8, :cond_104

    .line 1427
    :goto_31
    return-object v0

    .line 1393
    :cond_32
    const-string v1, "DONATE"

    iget-object v2, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->obj:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_43

    iget v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->idx:I

    invoke-static {v0, v8}, Lfr/testudo/spacecorsair/mod/ModFaction;->str(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_31

    .line 1394
    :cond_43
    if-nez v7, :cond_4c

    iget v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->idx:I

    invoke-static {v0, v8}, Lfr/testudo/spacecorsair/mod/ModFaction;->str(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_31

    .line 1395
    :cond_4c
    iget-boolean v1, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->inZone:Z

    if-nez v1, :cond_53

    move v1, v0

    move v2, v3

    goto :goto_17

    .line 1396
    :cond_53
    iget v1, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->phase:I

    if-ne v1, v3, :cond_64

    const-string v1, "DELIVERY"

    iget-object v2, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->obj:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_64

    const/4 v2, 0x7

    move v1, v0

    goto :goto_17

    .line 1397
    :cond_64
    iget v1, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->phase:I

    if-ne v1, v3, :cond_76

    const-string v1, "GATHER_AND_SELL"

    iget-object v2, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->obj:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_76

    const/16 v2, 0x8

    move v1, v0

    goto :goto_17

    .line 1398
    :cond_76
    iget-boolean v1, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->setupDone:Z

    if-nez v1, :cond_81

    iget v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->idx:I

    invoke-static {v0, v8}, Lfr/testudo/spacecorsair/mod/ModFaction;->str(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_31

    .line 1399
    :cond_81
    const-string v1, "DEFEND_ZONE"

    iget-object v2, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->obj:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9a

    iget v1, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->goal:I

    iget v2, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->holdMs:I

    sub-int/2addr v1, v2

    div-int/lit16 v1, v1, 0x3e8

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    move v1, v0

    move v2, v4

    goto/16 :goto_17

    .line 1400
    :cond_9a
    const-string v0, "DEFEND_CIVILIANS"

    iget-object v1, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->obj:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b1

    iget-boolean v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->wavesOn:Z

    if-eqz v0, :cond_ae

    const/4 v0, 0x3

    :goto_a9
    iget v1, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->wavesLeft:I

    move v2, v0

    goto/16 :goto_17

    :cond_ae
    const/16 v0, 0x9

    goto :goto_a9

    .line 1401
    :cond_b1
    const-string v0, "ESCORT"

    iget-object v1, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->obj:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_ca

    if-eqz v6, :cond_ca

    const/4 v2, 0x4

    iget-object v0, v6, Lfr/testudo/spacecorsair/business/Element;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget-object v1, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->gate:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/engine/Vector2;->distance(Lfr/testudo/spacecorsair/engine/Vector2;)F

    move-result v0

    float-to-int v0, v0

    move v1, v0

    goto/16 :goto_17

    .line 1402
    :cond_ca
    const-string v0, "KILL_FLAGSHIP"

    iget-object v1, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->obj:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_ec

    if-eqz v6, :cond_ec

    iget-boolean v0, v6, Lfr/testudo/spacecorsair/business/Element;->removed:Z

    if-nez v0, :cond_ec

    const/4 v2, 0x5

    const/high16 v0, 0x42c80000    # 100.0f

    iget v1, v6, Lfr/testudo/spacecorsair/business/Element;->life:F

    mul-float/2addr v0, v1

    iget v1, v6, Lfr/testudo/spacecorsair/business/Element;->maxLife:F

    div-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    move v1, v0

    goto/16 :goto_17

    .line 1403
    :cond_ec
    iget v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->goal:I

    if-le v0, v3, :cond_fc

    const/4 v2, 0x6

    iget v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->progress:I

    iget v1, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->goal:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    move v1, v0

    goto/16 :goto_17

    .line 1404
    :cond_fc
    iget v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->idx:I

    invoke-static {v0, v8}, Lfr/testudo/spacecorsair/mod/ModFaction;->str(II)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_31

    .line 1408
    :cond_104
    packed-switch v2, :pswitch_data_2b0

    .line 1419
    :pswitch_107
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->idx:I

    invoke-static {v3, v4}, Lfr/testudo/spacecorsair/mod/ModFaction;->str(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ": "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "/"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v3, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->goal:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1421
    :goto_130
    iput v2, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->instrBranch:I

    .line 1422
    iput v1, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->instrVal:I

    .line 1423
    iput-object v6, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->instrTarget:Lfr/testudo/spacecorsair/business/Element;

    .line 1424
    iget v1, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->goal:I

    iput v1, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->instrGoal:I

    .line 1425
    iput-object v7, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->instrWhere:Lfr/testudo/spacecorsair/game/levels/LevelId;

    .line 1426
    iput-object v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->instrText:Ljava/lang/String;

    goto/16 :goto_31

    .line 1409
    :pswitch_140
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Return to "

    invoke-static {v3}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, v5, Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;->hq:Lfr/testudo/spacecorsair/game/levels/LevelId;

    invoke-static {v3}, Lfr/testudo/spacecorsair/mod/ModFaction;->pretty(Lfr/testudo/spacecorsair/game/levels/LevelId;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " and talk to the commander of "

    invoke-static {v3}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, v5, Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;->ship:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_130

    .line 1410
    :pswitch_16e
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->phase:I

    if-ne v0, v3, :cond_1a8

    const-string v0, "DELIVERY"

    iget-object v8, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->obj:Ljava/lang/String;

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a8

    const-string v0, "Deliver the crate to "

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1411
    :goto_187
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v7}, Lfr/testudo/spacecorsair/mod/ModFaction;->pretty(Lfr/testudo/spacecorsair/game/levels/LevelId;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ": "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v3, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->idx:I

    invoke-static {v3, v4}, Lfr/testudo/spacecorsair/mod/ModFaction;->str(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_130

    .line 1410
    :cond_1a8
    iget v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->phase:I

    if-ne v0, v3, :cond_1bd

    const-string v0, "GATHER_AND_SELL"

    iget-object v3, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->obj:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1bd

    const-string v0, "Sell the cargo at "

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_187

    .line 1411
    :cond_1bd
    const-string v0, "Go to "

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_187

    .line 1412
    :pswitch_1c4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Hold the outpost zone: "

    invoke-static {v3}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " s left"

    invoke-static {v3}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_130

    .line 1413
    :pswitch_1e7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Protect the transports. Waves left: "

    invoke-static {v3}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_130

    .line 1414
    :pswitch_200
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Escort "

    invoke-static {v3}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, v6, Lfr/testudo/spacecorsair/business/Element;->specificName:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ": "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " m"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_130

    .line 1415
    :pswitch_22b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Destroy the "

    invoke-static {v3}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, v6, Lfr/testudo/spacecorsair/business/Element;->specificName:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ": "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "% hull"

    invoke-static {v3}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_130

    .line 1416
    :pswitch_25a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Dock at a station in "

    invoke-static {v3}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v7}, Lfr/testudo/spacecorsair/mod/ModFaction;->pretty(Lfr/testudo/spacecorsair/game/levels/LevelId;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " to deliver the crate"

    invoke-static {v3}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_130

    .line 1417
    :pswitch_281
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Dock at a station in "

    invoke-static {v3}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v7}, Lfr/testudo/spacecorsair/mod/ModFaction;->pretty(Lfr/testudo/spacecorsair/game/levels/LevelId;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " to sell the cargo"

    invoke-static {v3}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_130

    .line 1418
    :pswitch_2a8
    const-string v0, "Meet the convoy"

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_130

    .line 1408
    :pswitch_data_2b0
    .packed-switch 0x0
        :pswitch_140
        :pswitch_16e
        :pswitch_1c4
        :pswitch_1e7
        :pswitch_200
        :pswitch_22b
        :pswitch_107
        :pswitch_25a
        :pswitch_281
        :pswitch_2a8
    .end packed-switch
.end method

.method static itemLabel(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    .prologue
    .line 203
    const-string v0, "L15"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_42

    const-string v0, "Siege "

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 204
    :goto_e
    const-string v1, "L\\d+$"

    const-string v2, ""

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 205
    const/4 v1, 0x0

    :goto_17
    sget-object v3, Lfr/testudo/spacecorsair/mod/ModFaction;->FAMILY_LABEL:[Ljava/lang/String;

    array-length v3, v3

    if-ge v1, v3, :cond_6a

    sget-object v3, Lfr/testudo/spacecorsair/mod/ModFaction;->FAMILY_LABEL:[Ljava/lang/String;

    aget-object v3, v3, v1

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_67

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Lfr/testudo/spacecorsair/mod/ModFaction;->FAMILY_LABEL:[Ljava/lang/String;

    add-int/lit8 v1, v1, 0x1

    aget-object v1, v2, v1

    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModLang;->re(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 212
    :cond_41
    :goto_41
    return-object p0

    .line 203
    :cond_42
    const-string v0, "L10"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_51

    const-string v0, "Heavy "

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_e

    :cond_51
    const-string v0, "L5"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_60

    const-string v0, "Standard "

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_e

    :cond_60
    const-string v0, "Light "

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_e

    .line 205
    :cond_67
    add-int/lit8 v1, v1, 0x2

    goto :goto_17

    .line 207
    :cond_6a
    :try_start_6a
    invoke-static {p0}, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->valueOf(Ljava/lang/String;)Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    move-result-object v0

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLance;->label(Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)Ljava/lang/String;
    :try_end_71
    .catch Ljava/lang/Throwable; {:try_start_6a .. :try_end_71} :catch_76

    move-result-object v0

    .line 208
    if-eqz v0, :cond_41

    move-object p0, v0

    goto :goto_41

    .line 209
    :catch_76
    move-exception v0

    goto :goto_41
.end method

.method static key(I)Ljava/lang/String;
    .registers 2

    .prologue
    .line 177
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lfr/testudo/spacecorsair/mod/ModFaction;->str(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static lance(I)Z
    .registers 4

    .prologue
    const/16 v2, 0x14

    .line 145
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModFaction;->rows()[[Ljava/lang/Object;

    move-result-object v0

    aget-object v0, v0, p0

    array-length v1, v0

    if-le v1, v2, :cond_17

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    aget-object v0, v0, v2

    invoke-virtual {v1, v0}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    const/4 v0, 0x1

    :goto_16
    return v0

    :cond_17
    const/4 v0, 0x0

    goto :goto_16
.end method

.method static level(Ljava/lang/String;)Lfr/testudo/spacecorsair/game/levels/LevelId;
    .registers 2

    .prologue
    .line 196
    :try_start_0
    invoke-static {p0}, Lfr/testudo/spacecorsair/game/levels/LevelId;->valueOf(Ljava/lang/String;)Lfr/testudo/spacecorsair/game/levels/LevelId;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3} :catch_5

    move-result-object v0

    .line 198
    :goto_4
    return-object v0

    .line 197
    :catch_5
    move-exception v0

    .line 198
    const/4 v0, 0x0

    goto :goto_4
.end method

.method private liveFoes()I
    .registers 4

    .prologue
    .line 1193
    const/4 v0, 0x0

    .line 1194
    iget-object v1, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->spawned:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :goto_8
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfr/testudo/spacecorsair/business/Element;

    if-eqz v0, :cond_20

    iget-boolean v0, v0, Lfr/testudo/spacecorsair/business/Element;->removed:Z

    if-nez v0, :cond_20

    add-int/lit8 v1, v1, 0x1

    move v0, v1

    :goto_1d
    move v1, v0

    goto :goto_8

    .line 1195
    :cond_1f
    return v1

    :cond_20
    move v0, v1

    goto :goto_1d
.end method

.method private load()V
    .registers 8

    .prologue
    const/16 v5, 0xc

    const/4 v2, 0x0

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 554
    iput-boolean v1, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->planned:Z

    .line 555
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModFaction;->prefs()Landroid/content/SharedPreferences;

    move-result-object v3

    .line 556
    if-eqz v3, :cond_15

    invoke-direct {p0}, Lfr/testudo/spacecorsair/mod/ModFaction;->stateKey()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 557
    :cond_15
    if-nez v2, :cond_18

    .line 593
    :goto_17
    return-void

    .line 559
    :cond_18
    :try_start_18
    const-string v3, ";"

    const/4 v4, -0x1

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v3

    .line 560
    const/4 v2, 0x0

    aget-object v2, v3, v2

    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModFaction;->level(Ljava/lang/String;)Lfr/testudo/spacecorsair/game/levels/LevelId;

    move-result-object v2

    .line 561
    if-eqz v2, :cond_2a

    iput-object v2, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->zone:Lfr/testudo/spacecorsair/game/levels/LevelId;

    .line 562
    :cond_2a
    const/4 v2, 0x1

    aget-object v2, v3, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->phase:I

    .line 563
    const/4 v2, 0x2

    aget-object v2, v3, v2

    iget-object v4, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->ref:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-static {v2, v4}, Lfr/testudo/spacecorsair/mod/ModFaction;->xy(Ljava/lang/String;Lfr/testudo/spacecorsair/engine/Vector2;)V

    .line 564
    const/4 v2, 0x3

    aget-object v2, v3, v2

    iget-object v4, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->center:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-static {v2, v4}, Lfr/testudo/spacecorsair/mod/ModFaction;->xy(Ljava/lang/String;Lfr/testudo/spacecorsair/engine/Vector2;)V

    .line 565
    const/4 v2, 0x4

    aget-object v2, v3, v2

    iget-object v4, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->endAt:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-static {v2, v4}, Lfr/testudo/spacecorsair/mod/ModFaction;->xy(Ljava/lang/String;Lfr/testudo/spacecorsair/engine/Vector2;)V

    .line 566
    const/4 v2, 0x5

    aget-object v2, v3, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->progress:I

    .line 567
    const/4 v2, 0x6

    aget-object v2, v3, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->goal:I

    .line 568
    const/4 v2, 0x7

    aget-object v2, v3, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->holdMs:I

    .line 569
    const/16 v2, 0x8

    aget-object v2, v3, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->waveNo:I

    .line 570
    const/16 v2, 0x9

    aget-object v2, v3, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->wavesLeft:I

    .line 571
    const/16 v2, 0xa

    aget-object v2, v3, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 572
    and-int/lit8 v2, v4, 0x1

    if-eqz v2, :cond_108

    move v2, v0

    :goto_87
    iput-boolean v2, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->courierMoving:Z

    .line 573
    and-int/lit8 v2, v4, 0x2

    if-eqz v2, :cond_10b

    :goto_8d
    iput-boolean v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->secondLegPlaced:Z

    .line 574
    const/4 v0, 0x0

    const/16 v2, 0x63

    shr-int/lit8 v4, v4, 0x2

    invoke-static {v2, v4}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->outpostLost:I

    .line 575
    const/16 v0, 0xb

    aget-object v0, v3, v0

    iget-object v2, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->lastCourier:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-static {v0, v2}, Lfr/testudo/spacecorsair/mod/ModFaction;->xy(Ljava/lang/String;Lfr/testudo/spacecorsair/engine/Vector2;)V

    .line 576
    const/4 v0, 0x0

    iput-object v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->markers:[F

    .line 577
    const/4 v0, 0x0

    iput-object v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->taken:[Z

    .line 578
    array-length v0, v3

    if-le v0, v5, :cond_10d

    const/16 v0, 0xc

    aget-object v0, v3, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_10d

    .line 579
    const/16 v0, 0xc

    aget-object v0, v3, v0

    const-string v2, ":"

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 580
    array-length v0, v2

    mul-int/lit8 v0, v0, 0x2

    new-array v0, v0, [F

    iput-object v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->markers:[F

    .line 581
    array-length v0, v2

    new-array v0, v0, [Z

    iput-object v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->taken:[Z

    move v0, v1

    .line 582
    :goto_d1
    array-length v3, v2

    if-ge v0, v3, :cond_10d

    .line 583
    aget-object v3, v2, v0

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 584
    iget-object v4, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->markers:[F

    mul-int/lit8 v5, v0, 0x2

    const/4 v6, 0x0

    aget-object v6, v3, v6

    invoke-static {v6}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v6

    aput v6, v4, v5

    .line 585
    iget-object v4, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->markers:[F

    mul-int/lit8 v5, v0, 0x2

    add-int/lit8 v5, v5, 0x1

    const/4 v6, 0x1

    aget-object v6, v3, v6

    invoke-static {v6}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v6

    aput v6, v4, v5

    .line 586
    iget-object v4, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->taken:[Z

    const-string v5, "1"

    const/4 v6, 0x2

    aget-object v3, v3, v6

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    aput-boolean v3, v4, v0

    .line 582
    add-int/lit8 v0, v0, 0x1

    goto :goto_d1

    :cond_108
    move v2, v1

    .line 572
    goto/16 :goto_87

    :cond_10b
    move v0, v1

    .line 573
    goto :goto_8d

    .line 589
    :cond_10d
    const/4 v0, 0x1

    iput-boolean v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->planned:Z
    :try_end_110
    .catch Ljava/lang/Throwable; {:try_start_18 .. :try_end_110} :catch_112

    goto/16 :goto_17

    .line 590
    :catch_112
    move-exception v0

    .line 591
    iput-boolean v1, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->planned:Z

    goto/16 :goto_17
.end method

.method private markGates(Z)V
    .registers 5

    .prologue
    .line 1294
    :try_start_0
    iget-boolean v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->completed:Z

    if-eqz v0, :cond_f

    sget-object v0, Lfr/testudo/spacecorsair/mod/ModCapitals;->FACTIONS:[Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;

    iget v1, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->fi:I

    aget-object v0, v0, v1

    iget-object v0, v0, Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;->hq:Lfr/testudo/spacecorsair/game/levels/LevelId;

    .line 1295
    :goto_c
    if-nez v0, :cond_14

    .line 1307
    :cond_e
    :goto_e
    return-void

    .line 1294
    :cond_f
    invoke-direct {p0}, Lfr/testudo/spacecorsair/mod/ModFaction;->activeSector()Lfr/testudo/spacecorsair/game/levels/LevelId;

    move-result-object v0

    goto :goto_c

    .line 1296
    :cond_14
    iget-boolean v1, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->completed:Z

    if-nez v1, :cond_37

    iget-boolean v1, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->inZone:Z

    if-eqz v1, :cond_37

    iget v1, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->phase:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_e

    const-string v1, "ESCORT"

    iget-object v2, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->obj:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    iget-object v1, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->target:Lfr/testudo/spacecorsair/business/Element;

    if-nez v1, :cond_e

    iget-object v1, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->zone:Lfr/testudo/spacecorsair/game/levels/LevelId;

    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModFaction;->sectorIs(Lfr/testudo/spacecorsair/game/levels/LevelId;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 1297
    :cond_37
    sget-object v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v1, v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v1, v1, Lfr/testudo/spacecorsair/game/Game;->currentLevel:Lfr/testudo/spacecorsair/game/levels/Level;

    iget-object v1, v1, Lfr/testudo/spacecorsair/game/levels/Level;->name:Ljava/lang/String;

    .line 1298
    if-eqz v1, :cond_49

    iget-object v2, v0, Lfr/testudo/spacecorsair/game/levels/LevelId;->levelName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_e

    .line 1299
    :cond_49
    sget-object v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v1, v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v1, v1, Lfr/testudo/spacecorsair/game/Game;->currentLevel:Lfr/testudo/spacecorsair/game/levels/Level;

    invoke-static {v0}, Lfr/testudo/spacecorsair/business/world/PathFinder;->getPortalNameToGoTo(Lfr/testudo/spacecorsair/game/levels/LevelId;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lfr/testudo/spacecorsair/game/levels/Level;->findPortalByName(Ljava/lang/String;)Lfr/testudo/spacecorsair/business/world/Portal;

    move-result-object v0

    .line 1300
    if-eqz v0, :cond_e

    .line 1301
    iput-boolean p1, v0, Lfr/testudo/spacecorsair/business/world/Portal;->isMissionObjective:Z

    .line 1302
    sget-object v1, Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;->ORANGE:Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;

    iput-object v1, v0, Lfr/testudo/spacecorsair/business/world/Portal;->missionObjectiveColor:Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;
    :try_end_5f
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_5f} :catch_60

    goto :goto_e

    .line 1304
    :catch_60
    move-exception v0

    goto :goto_e
.end method

.method static minLevel(I)I
    .registers 2

    .prologue
    .line 180
    const/4 v0, 0x6

    invoke-static {p0, v0}, Lfr/testudo/spacecorsair/mod/ModFaction;->num(II)I

    move-result v0

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModV34;->lvl(I)I

    move-result v0

    return v0
.end method

.method private static name(Lfr/testudo/spacecorsair/business/Element;Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 653
    invoke-static {p1}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lfr/testudo/spacecorsair/business/Element;->specificName:Ljava/lang/String;

    .line 654
    const/4 v0, -0x1

    iput v0, p0, Lfr/testudo/spacecorsair/business/Element;->specificNameDecalX:I

    .line 655
    return-void
.end method

.method static num(II)I
    .registers 3

    .prologue
    .line 173
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModFaction;->rows()[[Ljava/lang/Object;

    move-result-object v0

    aget-object v0, v0, p0

    aget-object v0, v0, p1

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method static objective(I)Ljava/lang/String;
    .registers 2

    .prologue
    .line 179
    const/4 v0, 0x3

    invoke-static {p0, v0}, Lfr/testudo/spacecorsair/mod/ModFaction;->str(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static order(I)I
    .registers 2

    .prologue
    .line 178
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lfr/testudo/spacecorsair/mod/ModFaction;->num(II)I

    move-result v0

    return v0
.end method

.method private place(Lfr/testudo/spacecorsair/business/ennemis/Ennemis;Lfr/testudo/spacecorsair/engine/Vector2;Lfr/testudo/spacecorsair/business/Element;Z)Lfr/testudo/spacecorsair/business/ennemis/Ennemis;
    .registers 11

    .prologue
    .line 675
    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lfr/testudo/spacecorsair/mod/ModFaction;->place(Lfr/testudo/spacecorsair/business/ennemis/Ennemis;Lfr/testudo/spacecorsair/engine/Vector2;Lfr/testudo/spacecorsair/business/Element;ZZ)Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    move-result-object v0

    return-object v0
.end method

.method private place(Lfr/testudo/spacecorsair/business/ennemis/Ennemis;Lfr/testudo/spacecorsair/engine/Vector2;Lfr/testudo/spacecorsair/business/Element;ZZ)Lfr/testudo/spacecorsair/business/ennemis/Ennemis;
    .registers 8

    .prologue
    .line 659
    if-nez p1, :cond_4

    const/4 p1, 0x0

    .line 671
    :goto_3
    return-object p1

    .line 660
    :cond_4
    iget-object v0, p1, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v0, p2}, Lfr/testudo/spacecorsair/engine/Vector2;->setSameAs(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 661
    invoke-virtual {p1}, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->updateSapCoords()V

    .line 662
    const v0, 0x460ca000    # 9000.0f

    iput v0, p1, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->desengagementDistance:F

    .line 663
    if-eqz p4, :cond_1a

    .line 664
    const/4 v0, 0x1

    iput-boolean v0, p1, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->isMissionObjective:Z

    .line 665
    sget-object v0, Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;->RED:Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;

    iput-object v0, p1, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->missionObjectiveColor:Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;

    .line 667
    :cond_1a
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->playerShip:Lfr/testudo/spacecorsair/business/player/PlayerShip;

    .line 668
    if-eqz p5, :cond_29

    if-eqz p3, :cond_32

    iget-boolean v1, p3, Lfr/testudo/spacecorsair/business/Element;->removed:Z

    if-nez v1, :cond_32

    :goto_26
    invoke-virtual {p1, p3}, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->initAttackTarget(Lfr/testudo/spacecorsair/business/Element;)V

    .line 669
    :cond_29
    invoke-virtual {p1}, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->addToCurrentLevel()V

    .line 670
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->spawned:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_32
    move-object p3, v0

    .line 668
    goto :goto_26
.end method

.method private plan(Lfr/testudo/spacecorsair/business/player/PlayerShip;)V
    .registers 10

    .prologue
    const/4 v7, 0x7

    const/4 v6, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 773
    iput-boolean v5, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->planned:Z

    .line 774
    iput v4, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->phase:I

    .line 775
    iput v4, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->progress:I

    .line 776
    iput v4, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->holdMs:I

    .line 777
    iput v4, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->outpostLost:I

    .line 778
    iput v4, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->waveNo:I

    .line 779
    iput v4, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->wavesLeft:I

    .line 780
    iput-boolean v4, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->courierMoving:Z

    .line 781
    iput-boolean v4, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->secondLegPlaced:Z

    .line 782
    iput-object v6, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->markers:[F

    .line 783
    iput-object v6, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->taken:[Z

    .line 784
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->ref:Lfr/testudo/spacecorsair/engine/Vector2;

    iget-object v1, p1, Lfr/testudo/spacecorsair/business/player/PlayerShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/engine/Vector2;->setSameAs(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 785
    const-string v0, "DEFEND_ZONE"

    iget-object v1, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->obj:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_bd

    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->center:Lfr/testudo/spacecorsair/engine/Vector2;

    iget-object v1, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->ref:Lfr/testudo/spacecorsair/engine/Vector2;

    const v2, 0x463b8000    # 12000.0f

    const v3, 0x466a6000    # 15000.0f

    invoke-static {v1, v2, v3}, Lfr/testudo/spacecorsair/mod/ModPlace;->farPoint(Lfr/testudo/spacecorsair/engine/Vector2;FF)Lfr/testudo/spacecorsair/engine/Vector2;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/engine/Vector2;->setSameAs(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 787
    :goto_3c
    const-string v0, "ModFaction"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "plan "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->idx:I

    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModFaction;->id(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->obj:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " sector="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v2, v2, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v2, v2, Lfr/testudo/spacecorsair/game/Game;->currentLevel:Lfr/testudo/spacecorsair/game/levels/Level;

    iget-object v2, v2, Lfr/testudo/spacecorsair/game/levels/Level;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " objective="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->center:Lfr/testudo/spacecorsair/engine/Vector2;

    iget-object v3, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->ref:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v2, v3}, Lfr/testudo/spacecorsair/engine/Vector2;->distance(Lfr/testudo/spacecorsair/engine/Vector2;)F

    move-result v2

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 788
    const-string v0, "FIND_OBJECT"

    iget-object v1, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->obj:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a2

    const-string v0, "DELIVERY"

    iget-object v1, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->obj:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_cf

    .line 789
    :cond_a2
    new-array v0, v5, [Z

    iput-object v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->taken:[Z

    .line 790
    const/4 v0, 0x2

    new-array v0, v0, [F

    iget-object v1, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->center:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v1, v1, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    aput v1, v0, v4

    iget-object v1, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->center:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v1, v1, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    aput v1, v0, v5

    iput-object v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->markers:[F

    .line 791
    iput v5, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->goal:I

    .line 809
    :cond_b9
    :goto_b9
    invoke-direct {p0}, Lfr/testudo/spacecorsair/mod/ModFaction;->save()V

    .line 810
    return-void

    .line 786
    :cond_bd
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->center:Lfr/testudo/spacecorsair/engine/Vector2;

    iget-object v1, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->ref:Lfr/testudo/spacecorsair/engine/Vector2;

    const/high16 v2, 0x45fa0000    # 8000.0f

    const v3, 0x7f7fffff    # Float.MAX_VALUE

    invoke-static {v1, v2, v3}, Lfr/testudo/spacecorsair/mod/ModPlace;->farPoint(Lfr/testudo/spacecorsair/engine/Vector2;FF)Lfr/testudo/spacecorsair/engine/Vector2;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/engine/Vector2;->setSameAs(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    goto/16 :goto_3c

    .line 792
    :cond_cf
    const-string v0, "GATHER_AND_SELL"

    iget-object v1, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->obj:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e3

    .line 793
    const/4 v0, 0x6

    iget-object v1, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->center:Lfr/testudo/spacecorsair/engine/Vector2;

    const v2, 0x45098000    # 2200.0f

    invoke-direct {p0, v0, v1, v2}, Lfr/testudo/spacecorsair/mod/ModFaction;->scatter(ILfr/testudo/spacecorsair/engine/Vector2;F)V

    goto :goto_b9

    .line 794
    :cond_e3
    const-string v0, "RESCUE"

    iget-object v1, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->obj:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_ff

    .line 795
    iget v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->idx:I

    invoke-static {v0, v7}, Lfr/testudo/spacecorsair/mod/ModFaction;->num(II)I

    move-result v0

    invoke-static {v5, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iget-object v1, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->center:Lfr/testudo/spacecorsair/engine/Vector2;

    const/high16 v2, 0x45480000    # 3200.0f

    invoke-direct {p0, v0, v1, v2}, Lfr/testudo/spacecorsair/mod/ModFaction;->scatter(ILfr/testudo/spacecorsair/engine/Vector2;F)V

    goto :goto_b9

    .line 796
    :cond_ff
    const-string v0, "DEFEND_CIVILIANS"

    iget-object v1, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->obj:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10d

    .line 797
    const/4 v0, 0x4

    iput v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->wavesLeft:I

    goto :goto_b9

    .line 798
    :cond_10d
    const-string v0, "DEFEND_ZONE"

    iget-object v1, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->obj:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_129

    .line 799
    iget v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->idx:I

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModFaction;->contract(I)Z

    move-result v0

    if-eqz v0, :cond_126

    const/16 v0, 0x3c

    :goto_121
    mul-int/lit16 v0, v0, 0x3e8

    iput v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->goal:I

    goto :goto_b9

    :cond_126
    const/16 v0, 0x5a

    goto :goto_121

    .line 800
    :cond_129
    const-string v0, "KILL_ENEMY_TYPE"

    iget-object v1, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->obj:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_13d

    const-string v0, "SCAN_CIVIL"

    iget-object v1, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->obj:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14b

    .line 801
    :cond_13d
    iget v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->idx:I

    invoke-static {v0, v7}, Lfr/testudo/spacecorsair/mod/ModFaction;->num(II)I

    move-result v0

    invoke-static {v5, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->goal:I

    goto/16 :goto_b9

    .line 802
    :cond_14b
    const-string v0, "ESCORT"

    iget-object v1, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->obj:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b9

    .line 804
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->ref:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-static {v0, v6}, Lfr/testudo/spacecorsair/mod/ModPlace;->farthestStation(Lfr/testudo/spacecorsair/engine/Vector2;Lfr/testudo/spacecorsair/business/world/station/Station;)Lfr/testudo/spacecorsair/business/world/station/Station;

    move-result-object v0

    .line 805
    if-eqz v0, :cond_164

    iget-object v1, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->center:Lfr/testudo/spacecorsair/engine/Vector2;

    iget-object v2, v0, Lfr/testudo/spacecorsair/business/world/station/Station;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v1, v2}, Lfr/testudo/spacecorsair/engine/Vector2;->setSameAs(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 806
    :cond_164
    iget-object v1, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->lastCourier:Lfr/testudo/spacecorsair/engine/Vector2;

    iget-object v2, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->center:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v1, v2}, Lfr/testudo/spacecorsair/engine/Vector2;->setSameAs(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 807
    invoke-direct {p0, v0}, Lfr/testudo/spacecorsair/mod/ModFaction;->planEscortEnd(Lfr/testudo/spacecorsair/business/world/station/Station;)V

    goto/16 :goto_b9
.end method

.method private planEscortEnd(Lfr/testudo/spacecorsair/business/world/station/Station;)V
    .registers 5

    .prologue
    const/4 v1, 0x0

    .line 814
    iget v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->phase:I

    if-nez v0, :cond_2b

    iget v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->idx:I

    const/16 v2, 0xa

    invoke-static {v0, v2}, Lfr/testudo/spacecorsair/mod/ModFaction;->str(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModFaction;->level(Ljava/lang/String;)Lfr/testudo/spacecorsair/game/levels/LevelId;

    move-result-object v0

    .line 815
    :goto_11
    iget v2, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->phase:I

    if-nez v2, :cond_21

    iget v2, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->idx:I

    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModFaction;->contract(I)Z

    move-result v2

    if-nez v2, :cond_21

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModFaction;->gateTo(Lfr/testudo/spacecorsair/game/levels/LevelId;)Lfr/testudo/spacecorsair/business/world/Portal;

    move-result-object v1

    .line 816
    :cond_21
    if-eqz v1, :cond_2d

    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->endAt:Lfr/testudo/spacecorsair/engine/Vector2;

    iget-object v1, v1, Lfr/testudo/spacecorsair/business/world/Portal;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/engine/Vector2;->setSameAs(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 820
    :goto_2a
    return-void

    :cond_2b
    move-object v0, v1

    .line 814
    goto :goto_11

    .line 817
    :cond_2d
    if-eqz p1, :cond_3f

    iget-object v0, p1, Lfr/testudo/spacecorsair/business/world/station/Station;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    :goto_31
    invoke-static {v0, p1}, Lfr/testudo/spacecorsair/mod/ModPlace;->farthestStation(Lfr/testudo/spacecorsair/engine/Vector2;Lfr/testudo/spacecorsair/business/world/station/Station;)Lfr/testudo/spacecorsair/business/world/station/Station;

    move-result-object v0

    .line 818
    if-eqz v0, :cond_42

    iget-object v1, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->endAt:Lfr/testudo/spacecorsair/engine/Vector2;

    iget-object v0, v0, Lfr/testudo/spacecorsair/business/world/station/Station;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v1, v0}, Lfr/testudo/spacecorsair/engine/Vector2;->setSameAs(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    goto :goto_2a

    .line 817
    :cond_3f
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->center:Lfr/testudo/spacecorsair/engine/Vector2;

    goto :goto_31

    .line 819
    :cond_42
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->endAt:Lfr/testudo/spacecorsair/engine/Vector2;

    iget-object v1, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->center:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModFaction;->farGate(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/engine/Vector2;->setSameAs(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    goto :goto_2a
.end method

.method private post(ILfr/testudo/spacecorsair/engine/Vector2;FZ)V
    .registers 15

    .prologue
    .line 680
    const/4 v0, 0x0

    move v6, v0

    :goto_2
    if-ge v6, p1, :cond_42

    .line 681
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v0

    const-wide v2, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v0, v2

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    mul-double/2addr v0, v2

    .line 682
    new-instance v2, Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-direct {v2, p2}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>(Lfr/testudo/spacecorsair/engine/Vector2;)V

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    float-to-double v8, p3

    mul-double/2addr v4, v8

    double-to-float v3, v4

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    float-to-double v4, p3

    mul-double/2addr v0, v4

    double-to-float v0, v0

    invoke-virtual {v2, v3, v0}, Lfr/testudo/spacecorsair/engine/Vector2;->add(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    move-result-object v2

    .line 683
    invoke-direct {p0}, Lfr/testudo/spacecorsair/mod/ModFaction;->side()I

    move-result v1

    if-eqz p4, :cond_40

    if-nez v6, :cond_40

    const/4 v0, 0x1

    :goto_31
    invoke-direct {p0, v1, v0}, Lfr/testudo/spacecorsair/mod/ModFaction;->foe(IZ)Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    move-result-object v1

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lfr/testudo/spacecorsair/mod/ModFaction;->place(Lfr/testudo/spacecorsair/business/ennemis/Ennemis;Lfr/testudo/spacecorsair/engine/Vector2;Lfr/testudo/spacecorsair/business/Element;ZZ)Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    .line 680
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_2

    .line 683
    :cond_40
    const/4 v0, 0x0

    goto :goto_31

    .line 685
    :cond_42
    return-void
.end method

.method private static prefs()Landroid/content/SharedPreferences;
    .registers 1

    .prologue
    .line 441
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModQol;->prefs()Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method static pretty(Lfr/testudo/spacecorsair/game/levels/LevelId;)Ljava/lang/String;
    .registers 9

    .prologue
    const/4 v1, 0x0

    .line 217
    if-eqz p0, :cond_7

    iget-object v0, p0, Lfr/testudo/spacecorsair/game/levels/LevelId;->levelName:Ljava/lang/String;

    if-nez v0, :cond_a

    :cond_7
    const-string v0, ""

    .line 224
    :goto_9
    return-object v0

    .line 218
    :cond_a
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 219
    iget-object v0, p0, Lfr/testudo/spacecorsair/game/levels/LevelId;->levelName:Ljava/lang/String;

    const-string v3, " "

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    array-length v4, v3

    move v0, v1

    :goto_19
    if-ge v0, v4, :cond_46

    aget-object v5, v3, v0

    .line 220
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_26

    .line 219
    :goto_23
    add-int/lit8 v0, v0, 0x1

    goto :goto_19

    .line 221
    :cond_26
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    if-lez v6, :cond_31

    const/16 v6, 0x20

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 222
    :cond_31
    invoke-virtual {v5, v1}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-static {v6}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    const/4 v7, 0x1

    invoke-virtual {v5, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_23

    .line 224
    :cond_46
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_9
.end method

.method private reinforce(ILfr/testudo/spacecorsair/business/Element;Z)V
    .registers 10

    .prologue
    .line 689
    const/4 v4, -0x1

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v5}, Lfr/testudo/spacecorsair/mod/ModFaction;->reinforce(ILfr/testudo/spacecorsair/business/Element;ZIZ)V

    .line 690
    return-void
.end method

.method private reinforce(ILfr/testudo/spacecorsair/business/Element;ZIZ)V
    .registers 14

    .prologue
    .line 693
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->playerShip:Lfr/testudo/spacecorsair/business/player/PlayerShip;

    .line 694
    if-nez v0, :cond_7

    .line 703
    :cond_6
    return-void

    .line 695
    :cond_7
    iget-object v0, v0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModPlace;->ambushPoint(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    move-result-object v7

    .line 696
    const/4 v0, 0x0

    move v6, v0

    :goto_f
    if-ge v6, p1, :cond_6

    .line 697
    new-instance v0, Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-direct {v0, v7}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>(Lfr/testudo/spacecorsair/engine/Vector2;)V

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v2

    const-wide v4, 0x407f400000000000L    # 500.0

    mul-double/2addr v2, v4

    const-wide v4, 0x406f400000000000L    # 250.0

    sub-double/2addr v2, v4

    double-to-float v1, v2

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v2

    const-wide v4, 0x407f400000000000L    # 500.0

    mul-double/2addr v2, v4

    const-wide v4, 0x406f400000000000L    # 250.0

    sub-double/2addr v2, v4

    double-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lfr/testudo/spacecorsair/engine/Vector2;->add(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    move-result-object v2

    .line 698
    if-lez p4, :cond_5b

    invoke-direct {p0}, Lfr/testudo/spacecorsair/mod/ModFaction;->side()I

    move-result v1

    if-eqz p3, :cond_59

    if-nez v6, :cond_59

    const/4 v0, 0x1

    :goto_47
    invoke-direct {p0, v1, v0, p4}, Lfr/testudo/spacecorsair/mod/ModFaction;->foe(IZI)Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    move-result-object v1

    :goto_4b
    const/4 v4, 0x1

    const/4 v5, 0x1

    move-object v0, p0

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Lfr/testudo/spacecorsair/mod/ModFaction;->place(Lfr/testudo/spacecorsair/business/ennemis/Ennemis;Lfr/testudo/spacecorsair/engine/Vector2;Lfr/testudo/spacecorsair/business/Element;ZZ)Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    move-result-object v0

    .line 699
    if-nez v0, :cond_6b

    .line 696
    :goto_55
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_f

    .line 698
    :cond_59
    const/4 v0, 0x0

    goto :goto_47

    :cond_5b
    invoke-direct {p0}, Lfr/testudo/spacecorsair/mod/ModFaction;->side()I

    move-result v1

    if-eqz p3, :cond_69

    if-nez v6, :cond_69

    const/4 v0, 0x1

    :goto_64
    invoke-direct {p0, v1, v0}, Lfr/testudo/spacecorsair/mod/ModFaction;->foe(IZ)Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    move-result-object v1

    goto :goto_4b

    :cond_69
    const/4 v0, 0x0

    goto :goto_64

    .line 700
    :cond_6b
    if-eqz p5, :cond_75

    add-int/lit8 v1, p1, -0x1

    if-ne v6, v1, :cond_75

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->setElite(Z)Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    .line 701
    :cond_75
    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModPlace;->boost(Lfr/testudo/spacecorsair/business/ennemis/Ennemis;)V

    goto :goto_55
.end method

.method private static rows()[[Ljava/lang/Object;
    .registers 1

    .prologue
    .line 84
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModFaction;->rows:[[Ljava/lang/Object;

    .line 85
    if-eqz v0, :cond_5

    :goto_4
    return-object v0

    :cond_5
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModFaction;->buildRows()[[Ljava/lang/Object;

    move-result-object v0

    goto :goto_4
.end method

.method private save()V
    .registers 10

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    const/16 v8, 0x2c

    const/16 v7, 0x3b

    .line 536
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModFaction;->prefs()Landroid/content/SharedPreferences;

    move-result-object v4

    .line 537
    if-nez v4, :cond_d

    .line 551
    :goto_c
    return-void

    .line 538
    :cond_d
    iget-boolean v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->planned:Z

    if-nez v0, :cond_21

    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-direct {p0}, Lfr/testudo/spacecorsair/mod/ModFaction;->stateKey()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_c

    .line 539
    :cond_21
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 540
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->zone:Lfr/testudo/spacecorsair/game/levels/LevelId;

    if-eqz v0, :cond_12d

    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->zone:Lfr/testudo/spacecorsair/game/levels/LevelId;

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/game/levels/LevelId;->name()Ljava/lang/String;

    move-result-object v0

    :goto_30
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v3, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->phase:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->ref:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v3, v3, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    .line 541
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->ref:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v3, v3, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->center:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v3, v3, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->center:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v3, v3, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->endAt:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v3, v3, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    .line 542
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->endAt:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v3, v3, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v3, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->progress:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v3, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->goal:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v3, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->holdMs:I

    .line 543
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v3, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->waveNo:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v3, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->wavesLeft:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->courierMoving:Z

    if-eqz v0, :cond_131

    move v0, v1

    :goto_c1
    iget-boolean v3, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->secondLegPlaced:Z

    if-eqz v3, :cond_133

    const/4 v3, 0x2

    :goto_c6
    or-int/2addr v0, v3

    iget v3, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->outpostLost:I

    shl-int/lit8 v3, v3, 0x2

    or-int/2addr v0, v3

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->lastCourier:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v3, v3, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    .line 544
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->lastCourier:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v3, v3, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 545
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->markers:[F

    if-eqz v0, :cond_13a

    move v0, v2

    .line 546
    :goto_f0
    iget-object v3, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->taken:[Z

    array-length v3, v3

    if-ge v0, v3, :cond_13a

    .line 547
    iget-object v3, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->markers:[F

    mul-int/lit8 v6, v0, 0x2

    aget v3, v3, v6

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v6, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->markers:[F

    mul-int/lit8 v7, v0, 0x2

    add-int/lit8 v7, v7, 0x1

    aget v6, v6, v7

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v3, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->taken:[Z

    aget-boolean v3, v3, v0

    if-eqz v3, :cond_135

    move v3, v1

    :goto_11a
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    add-int/lit8 v3, v0, 0x1

    iget-object v7, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->taken:[Z

    array-length v7, v7

    if-ge v3, v7, :cond_137

    const-string v3, ":"

    :goto_127
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 546
    add-int/lit8 v0, v0, 0x1

    goto :goto_f0

    .line 540
    :cond_12d
    const-string v0, ""

    goto/16 :goto_30

    :cond_131
    move v0, v2

    .line 543
    goto :goto_c1

    :cond_133
    move v3, v2

    goto :goto_c6

    :cond_135
    move v3, v2

    .line 547
    goto :goto_11a

    :cond_137
    const-string v3, ""

    goto :goto_127

    .line 550
    :cond_13a
    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-direct {p0}, Lfr/testudo/spacecorsair/mod/ModFaction;->stateKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto/16 :goto_c
.end method

.method private scanTarget(Lfr/testudo/spacecorsair/engine/Vector2;Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/business/world/civil/CivilShip;
    .registers 10

    .prologue
    const/16 v6, 0x384

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 735
    invoke-direct {p0, p1, v4}, Lfr/testudo/spacecorsair/mod/ModFaction;->civil(Lfr/testudo/spacecorsair/engine/Vector2;Z)Lfr/testudo/spacecorsair/business/world/civil/CivilShip;

    move-result-object v0

    .line 736
    if-nez v0, :cond_c

    const/4 v0, 0x0

    .line 740
    :goto_b
    return-object v0

    .line 737
    :cond_c
    iput-boolean v5, v0, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->isMissionObjective:Z

    .line 738
    sget-object v1, Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;->ORANGE:Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;

    iput-object v1, v0, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->missionObjectiveColor:Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;

    .line 739
    const/4 v1, 0x2

    new-array v1, v1, [Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;

    iget v2, p2, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    iget v3, p2, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    invoke-static {v2, v3, v6}, Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;->newMooveRandom(FFI)Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;

    move-result-object v2

    aput-object v2, v1, v4

    iget v2, p2, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    iget v3, p2, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    invoke-static {v2, v3, v6}, Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;->newMooveRandom(FFI)Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->setActivity([Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;)V

    goto :goto_b
.end method

.method private scatter(ILfr/testudo/spacecorsair/engine/Vector2;F)V
    .registers 10

    .prologue
    const/4 v1, 0x0

    .line 706
    mul-int/lit8 v0, p1, 0x2

    new-array v2, v0, [F

    move v0, v1

    .line 707
    :goto_6
    if-ge v0, p1, :cond_21

    .line 708
    const v3, 0x3e4ccccd    # 0.2f

    mul-float/2addr v3, p3

    invoke-static {p2, v3, p3}, Lfr/testudo/spacecorsair/mod/ModFaction;->away(Lfr/testudo/spacecorsair/engine/Vector2;FF)Lfr/testudo/spacecorsair/engine/Vector2;

    move-result-object v3

    .line 709
    mul-int/lit8 v4, v0, 0x2

    iget v5, v3, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    aput v5, v2, v4

    .line 710
    mul-int/lit8 v4, v0, 0x2

    add-int/lit8 v4, v4, 0x1

    iget v3, v3, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    aput v3, v2, v4

    .line 707
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 712
    :cond_21
    new-array v0, p1, [Z

    iput-object v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->taken:[Z

    .line 713
    iput-object v2, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->markers:[F

    .line 714
    iput p1, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->goal:I

    .line 715
    iput v1, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->progress:I

    .line 716
    return-void
.end method

.method private secondSector()Lfr/testudo/spacecorsair/game/levels/LevelId;
    .registers 3

    .prologue
    .line 364
    const-string v0, "DELIVERY"

    iget-object v1, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->obj:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_14

    const-string v0, "GATHER_AND_SELL"

    iget-object v1, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->obj:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_20

    :cond_14
    iget v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->idx:I

    const/4 v1, 0x5

    invoke-static {v0, v1}, Lfr/testudo/spacecorsair/mod/ModFaction;->str(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModFaction;->level(Ljava/lang/String;)Lfr/testudo/spacecorsair/game/levels/LevelId;

    move-result-object v0

    .line 366
    :goto_1f
    return-object v0

    .line 365
    :cond_20
    const-string v0, "ESCORT"

    iget-object v1, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->obj:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3f

    iget v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->idx:I

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModFaction;->contract(I)Z

    move-result v0

    if-nez v0, :cond_3f

    iget v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->idx:I

    const/16 v1, 0xa

    invoke-static {v0, v1}, Lfr/testudo/spacecorsair/mod/ModFaction;->str(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModFaction;->level(Ljava/lang/String;)Lfr/testudo/spacecorsair/game/levels/LevelId;

    move-result-object v0

    goto :goto_1f

    .line 366
    :cond_3f
    const/4 v0, 0x0

    goto :goto_1f
.end method

.method private static sectorIs(Lfr/testudo/spacecorsair/game/levels/LevelId;)Z
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 1185
    :try_start_1
    sget-object v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v1, v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v1, v1, Lfr/testudo/spacecorsair/game/Game;->currentLevel:Lfr/testudo/spacecorsair/game/levels/Level;

    iget-object v1, v1, Lfr/testudo/spacecorsair/game/levels/Level;->name:Ljava/lang/String;

    .line 1186
    if-eqz p0, :cond_16

    if-eqz v1, :cond_16

    iget-object v2, p0, Lfr/testudo/spacecorsair/game/levels/LevelId;->levelName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_12
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_12} :catch_17

    move-result v1

    if-eqz v1, :cond_16

    const/4 v0, 0x1

    .line 1188
    :cond_16
    :goto_16
    return v0

    .line 1187
    :catch_17
    move-exception v1

    goto :goto_16
.end method

.method private setup()V
    .registers 15

    .prologue
    const/4 v12, 0x2

    const/high16 v9, 0x42c80000    # 100.0f

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 823
    iput-boolean v4, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->setupDone:Z

    .line 824
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->playerShip:Lfr/testudo/spacecorsair/business/player/PlayerShip;

    .line 825
    if-nez v0, :cond_f

    .line 929
    :cond_e
    :goto_e
    return-void

    .line 826
    :cond_f
    iget-boolean v1, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->planned:Z

    if-nez v1, :cond_16

    invoke-direct {p0, v0}, Lfr/testudo/spacecorsair/mod/ModFaction;->plan(Lfr/testudo/spacecorsair/business/player/PlayerShip;)V

    .line 827
    :cond_16
    iput-boolean v5, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->ambushed2:Z

    iput-boolean v5, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->ambushed:Z

    .line 828
    iput-boolean v5, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->wavesOn:Z

    .line 829
    iput-object v3, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->target:Lfr/testudo/spacecorsair/business/Element;

    .line 830
    const-string v0, "DELIVERY"

    iget-object v1, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->obj:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e

    const-string v0, "GATHER_AND_SELL"

    iget-object v1, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->obj:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e

    .line 832
    const-string v0, "DEFEND_CIVILIANS"

    iget-object v1, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->obj:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9f

    .line 833
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->center:Lfr/testudo/spacecorsair/engine/Vector2;

    const v1, 0x458ca000    # 4500.0f

    const v2, 0x459c4000    # 5000.0f

    invoke-static {v0, v1, v2}, Lfr/testudo/spacecorsair/mod/ModFaction;->farFrom(Lfr/testudo/spacecorsair/engine/Vector2;FF)Lfr/testudo/spacecorsair/engine/Vector2;

    move-result-object v1

    move v0, v5

    .line 834
    :goto_49
    const/4 v2, 0x4

    if-ge v0, v2, :cond_99

    .line 835
    iget-object v2, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->center:Lfr/testudo/spacecorsair/engine/Vector2;

    const/high16 v3, 0x43e10000    # 450.0f

    invoke-static {v2, v9, v3}, Lfr/testudo/spacecorsair/mod/ModFaction;->away(Lfr/testudo/spacecorsair/engine/Vector2;FF)Lfr/testudo/spacecorsair/engine/Vector2;

    move-result-object v2

    invoke-direct {p0, v2, v4}, Lfr/testudo/spacecorsair/mod/ModFaction;->civil(Lfr/testudo/spacecorsair/engine/Vector2;Z)Lfr/testudo/spacecorsair/business/world/civil/CivilShip;

    move-result-object v2

    .line 836
    if-nez v2, :cond_5d

    .line 834
    :goto_5a
    add-int/lit8 v0, v0, 0x1

    goto :goto_49

    .line 837
    :cond_5d
    iget v3, v2, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->maxLife:F

    const/high16 v6, 0x40400000    # 3.0f

    mul-float/2addr v3, v6

    iput v3, v2, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->maxLife:F

    .line 838
    iget v3, v2, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->maxLife:F

    iput v3, v2, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->life:F

    .line 839
    const-string v3, "Evacuee transport"

    invoke-static {v3}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lfr/testudo/spacecorsair/mod/ModFaction;->name(Lfr/testudo/spacecorsair/business/Element;Ljava/lang/String;)V

    .line 840
    iput-boolean v4, v2, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->isMissionObjective:Z

    .line 841
    sget-object v3, Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;->GREEN:Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;

    iput-object v3, v2, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->missionObjectiveColor:Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;

    .line 843
    new-array v3, v12, [Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;

    const/16 v6, 0x1f4

    const/high16 v7, 0x40800000    # 4.0f

    invoke-static {v6, v7}, Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;->newWaitUntilPlayerClose(IF)Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;

    move-result-object v6

    aput-object v6, v3, v5

    iget v6, v1, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    int-to-float v7, v0

    const/high16 v8, 0x3fc00000    # 1.5f

    sub-float/2addr v7, v8

    const/high16 v8, 0x437a0000    # 250.0f

    mul-float/2addr v7, v8

    add-float/2addr v6, v7

    iget v7, v1, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    invoke-static {v6, v7}, Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;->newMoove(FF)Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;

    move-result-object v6

    aput-object v6, v3, v4

    invoke-virtual {v2, v3}, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->setActivity([Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;)V

    goto :goto_5a

    .line 845
    :cond_99
    const/16 v0, 0x1770

    iput v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->timer:I

    goto/16 :goto_e

    .line 846
    :cond_9f
    const-string v0, "DEFEND_ZONE"

    iget-object v1, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->obj:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_101

    .line 847
    const/16 v0, 0xfa0

    iput v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->timer:I

    .line 849
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->center:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-direct {p0, v0, v4}, Lfr/testudo/spacecorsair/mod/ModFaction;->civil(Lfr/testudo/spacecorsair/engine/Vector2;Z)Lfr/testudo/spacecorsair/business/world/civil/CivilShip;

    move-result-object v0

    iput-object v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->outpost:Lfr/testudo/spacecorsair/business/world/civil/CivilShip;

    .line 850
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->outpost:Lfr/testudo/spacecorsair/business/world/civil/CivilShip;

    if-eqz v0, :cond_e

    .line 851
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->outpost:Lfr/testudo/spacecorsair/business/world/civil/CivilShip;

    iget v1, v0, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->maxLife:F

    const/high16 v2, 0x41400000    # 12.0f

    mul-float/2addr v1, v2

    iput v1, v0, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->maxLife:F

    .line 852
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->outpost:Lfr/testudo/spacecorsair/business/world/civil/CivilShip;

    iget-object v1, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->outpost:Lfr/testudo/spacecorsair/business/world/civil/CivilShip;

    iget v1, v1, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->maxLife:F

    iget v2, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->outpostLost:I

    rsub-int/lit8 v2, v2, 0x64

    int-to-float v2, v2

    mul-float/2addr v1, v2

    div-float/2addr v1, v9

    iput v1, v0, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->life:F

    .line 853
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->outpost:Lfr/testudo/spacecorsair/business/world/civil/CivilShip;

    const-string v1, "Outpost"

    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lfr/testudo/spacecorsair/mod/ModFaction;->name(Lfr/testudo/spacecorsair/business/Element;Ljava/lang/String;)V

    .line 854
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->outpost:Lfr/testudo/spacecorsair/business/world/civil/CivilShip;

    iput-boolean v4, v0, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->isMissionObjective:Z

    .line 855
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->outpost:Lfr/testudo/spacecorsair/business/world/civil/CivilShip;

    sget-object v1, Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;->GREEN:Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;

    iput-object v1, v0, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->missionObjectiveColor:Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;

    .line 856
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->outpost:Lfr/testudo/spacecorsair/business/world/civil/CivilShip;

    new-array v1, v12, [Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;

    const v2, 0x4a5bba00    # 3600000.0f

    invoke-static {v2}, Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;->newWait(F)Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;

    move-result-object v2

    aput-object v2, v1, v5

    const v2, 0x4a5bba00    # 3600000.0f

    invoke-static {v2}, Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;->newWait(F)Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->setActivity([Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;)V

    goto/16 :goto_e

    .line 858
    :cond_101
    const-string v0, "BOUNTY"

    iget-object v1, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->obj:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1ba

    .line 859
    iget v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->idx:I

    const/16 v1, 0x9

    invoke-static {v0, v1}, Lfr/testudo/spacecorsair/mod/ModFaction;->str(II)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Scoria"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_121

    invoke-direct {p0}, Lfr/testudo/spacecorsair/mod/ModFaction;->side()I

    move-result v0

    if-ne v0, v4, :cond_197

    :cond_121
    move v13, v4

    .line 860
    :goto_122
    if-eqz v13, :cond_199

    invoke-direct {p0}, Lfr/testudo/spacecorsair/mod/ModFaction;->foeLevel()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisFactory;->newFrelon(I)Lfr/testudo/spacecorsair/business/ennemis/FrelonShip;

    move-result-object v1

    .line 861
    :goto_12e
    if-eqz v1, :cond_e

    .line 862
    invoke-virtual {v1, v4}, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->setElite(Z)Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    .line 863
    iget v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->idx:I

    const/16 v2, 0x9

    invoke-static {v0, v2}, Lfr/testudo/spacecorsair/mod/ModFaction;->str(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lfr/testudo/spacecorsair/mod/ModFaction;->name(Lfr/testudo/spacecorsair/business/Element;Ljava/lang/String;)V

    .line 864
    iget v2, v1, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->maxLife:F

    iget v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->idx:I

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModFaction;->lance(I)Z

    move-result v0

    if-eqz v0, :cond_19e

    const/high16 v0, 0x41200000    # 10.0f

    :goto_14a
    mul-float/2addr v0, v2

    iput v0, v1, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->maxLife:F

    .line 865
    iget v0, v1, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->maxLife:F

    iput v0, v1, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->life:F

    .line 866
    iput v9, v1, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->lifeInPourc:F

    .line 867
    iget-object v0, v1, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->lifeBar:Lfr/testudo/spacecorsair/display/hud/InfoBarEnnemis;

    if-eqz v0, :cond_15c

    iget-object v0, v1, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->lifeBar:Lfr/testudo/spacecorsair/display/hud/InfoBarEnnemis;

    invoke-virtual {v0, v9}, Lfr/testudo/spacecorsair/display/hud/InfoBarEnnemis;->setValue(F)V

    .line 868
    :cond_15c
    iget-object v2, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->center:Lfr/testudo/spacecorsair/engine/Vector2;

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lfr/testudo/spacecorsair/mod/ModFaction;->place(Lfr/testudo/spacecorsair/business/ennemis/Ennemis;Lfr/testudo/spacecorsair/engine/Vector2;Lfr/testudo/spacecorsair/business/Element;ZZ)Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    move-result-object v0

    iput-object v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->target:Lfr/testudo/spacecorsair/business/Element;

    .line 869
    iget v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->idx:I

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModFaction;->lance(I)Z

    move-result v0

    if-eqz v0, :cond_170

    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModLance;->forceHolder(Lfr/testudo/spacecorsair/business/Element;)V

    :cond_170
    move v0, v5

    .line 870
    :goto_171
    iget v1, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->idx:I

    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModFaction;->lance(I)Z

    move-result v1

    if-eqz v1, :cond_1ac

    const/4 v1, 0x5

    :goto_17a
    if-ge v0, v1, :cond_e

    if-eqz v13, :cond_1b8

    move v1, v4

    :goto_17f
    invoke-direct {p0, v1, v5}, Lfr/testudo/spacecorsair/mod/ModFaction;->foe(IZ)Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    move-result-object v7

    iget-object v1, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->center:Lfr/testudo/spacecorsair/engine/Vector2;

    const/high16 v2, 0x43160000    # 150.0f

    const/high16 v6, 0x43c80000    # 400.0f

    invoke-static {v1, v2, v6}, Lfr/testudo/spacecorsair/mod/ModFaction;->away(Lfr/testudo/spacecorsair/engine/Vector2;FF)Lfr/testudo/spacecorsair/engine/Vector2;

    move-result-object v8

    move-object v6, p0

    move-object v9, v3

    move v10, v5

    move v11, v5

    invoke-direct/range {v6 .. v11}, Lfr/testudo/spacecorsair/mod/ModFaction;->place(Lfr/testudo/spacecorsair/business/ennemis/Ennemis;Lfr/testudo/spacecorsair/engine/Vector2;Lfr/testudo/spacecorsair/business/Element;ZZ)Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    add-int/lit8 v0, v0, 0x1

    goto :goto_171

    :cond_197
    move v13, v5

    .line 859
    goto :goto_122

    .line 860
    :cond_199
    invoke-direct {p0, v5, v4}, Lfr/testudo/spacecorsair/mod/ModFaction;->foe(IZ)Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    move-result-object v1

    goto :goto_12e

    .line 864
    :cond_19e
    iget v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->idx:I

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModFaction;->hunt(I)Z

    move-result v0

    if-eqz v0, :cond_1a9

    const/high16 v0, 0x41000000    # 8.0f

    goto :goto_14a

    :cond_1a9
    const/high16 v0, 0x40800000    # 4.0f

    goto :goto_14a

    .line 870
    :cond_1ac
    iget v1, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->idx:I

    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModFaction;->hunt(I)Z

    move-result v1

    if-eqz v1, :cond_1b6

    const/4 v1, 0x4

    goto :goto_17a

    :cond_1b6
    move v1, v12

    goto :goto_17a

    :cond_1b8
    move v1, v5

    goto :goto_17f

    .line 872
    :cond_1ba
    const-string v0, "KILL_ENEMY_TYPE"

    iget-object v1, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->obj:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d7

    .line 873
    const/4 v0, 0x3

    iget v1, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->goal:I

    iget v2, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->progress:I

    sub-int/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget-object v1, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->center:Lfr/testudo/spacecorsair/engine/Vector2;

    const/high16 v2, 0x43960000    # 300.0f

    invoke-direct {p0, v0, v1, v2, v5}, Lfr/testudo/spacecorsair/mod/ModFaction;->post(ILfr/testudo/spacecorsair/engine/Vector2;FZ)V

    goto/16 :goto_e

    .line 874
    :cond_1d7
    const-string v0, "DESTROY_STATION"

    iget-object v1, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->obj:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_26c

    .line 875
    invoke-direct {p0}, Lfr/testudo/spacecorsair/mod/ModFaction;->foeLevel()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisFactory;->newRocketTourelle(I)Lfr/testudo/spacecorsair/business/ennemis/RocketTourelle;

    move-result-object v1

    .line 876
    if-eqz v1, :cond_e

    .line 877
    invoke-virtual {v1, v4}, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->setElite(Z)Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    .line 878
    iget v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->idx:I

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModFaction;->contract(I)Z

    move-result v0

    if-nez v0, :cond_204

    iget v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->idx:I

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModFaction;->order(I)I

    move-result v0

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModV35;->finale(I)Z

    move-result v0

    if-eqz v0, :cond_267

    :cond_204
    iget v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->idx:I

    const/16 v2, 0x9

    invoke-static {v0, v2}, Lfr/testudo/spacecorsair/mod/ModFaction;->str(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_267

    iget v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->idx:I

    const/16 v2, 0x9

    invoke-static {v0, v2}, Lfr/testudo/spacecorsair/mod/ModFaction;->str(II)Ljava/lang/String;

    move-result-object v0

    :goto_21a
    invoke-static {v1, v0}, Lfr/testudo/spacecorsair/mod/ModFaction;->name(Lfr/testudo/spacecorsair/business/Element;Ljava/lang/String;)V

    .line 879
    iget v0, v1, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->maxLife:F

    const/high16 v2, 0x41000000    # 8.0f

    mul-float/2addr v0, v2

    iput v0, v1, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->maxLife:F

    .line 880
    iget v0, v1, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->maxLife:F

    iput v0, v1, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->life:F

    .line 881
    iput v9, v1, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->lifeInPourc:F

    .line 882
    iget-object v0, v1, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->lifeBar:Lfr/testudo/spacecorsair/display/hud/InfoBarEnnemis;

    if-eqz v0, :cond_233

    iget-object v0, v1, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->lifeBar:Lfr/testudo/spacecorsair/display/hud/InfoBarEnnemis;

    invoke-virtual {v0, v9}, Lfr/testudo/spacecorsair/display/hud/InfoBarEnnemis;->setValue(F)V

    .line 883
    :cond_233
    iget-object v2, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->center:Lfr/testudo/spacecorsair/engine/Vector2;

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lfr/testudo/spacecorsair/mod/ModFaction;->place(Lfr/testudo/spacecorsair/business/ennemis/Ennemis;Lfr/testudo/spacecorsair/engine/Vector2;Lfr/testudo/spacecorsair/business/Element;ZZ)Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    move-result-object v0

    iput-object v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->target:Lfr/testudo/spacecorsair/business/Element;

    move v6, v5

    .line 884
    :goto_23d
    const/4 v0, 0x3

    if-ge v6, v0, :cond_e

    iget v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->idx:I

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModFaction;->order(I)I

    move-result v0

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModV35;->finale(I)Z

    move-result v0

    if-eqz v0, :cond_26a

    invoke-direct {p0}, Lfr/testudo/spacecorsair/mod/ModFaction;->side()I

    move-result v0

    :goto_250
    invoke-direct {p0, v0, v5}, Lfr/testudo/spacecorsair/mod/ModFaction;->foe(IZ)Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    move-result-object v1

    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->center:Lfr/testudo/spacecorsair/engine/Vector2;

    const/high16 v2, 0x43960000    # 300.0f

    const/high16 v4, 0x44160000    # 600.0f

    invoke-static {v0, v2, v4}, Lfr/testudo/spacecorsair/mod/ModFaction;->away(Lfr/testudo/spacecorsair/engine/Vector2;FF)Lfr/testudo/spacecorsair/engine/Vector2;

    move-result-object v2

    move-object v0, p0

    move v4, v5

    invoke-direct/range {v0 .. v5}, Lfr/testudo/spacecorsair/mod/ModFaction;->place(Lfr/testudo/spacecorsair/business/ennemis/Ennemis;Lfr/testudo/spacecorsair/engine/Vector2;Lfr/testudo/spacecorsair/business/Element;ZZ)Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_23d

    .line 878
    :cond_267
    const-string v0, "Authority Relay Station"

    goto :goto_21a

    :cond_26a
    move v0, v12

    .line 884
    goto :goto_250

    .line 886
    :cond_26c
    const-string v0, "ESCORT"

    iget-object v1, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->obj:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_36f

    .line 887
    new-instance v2, Lfr/testudo/spacecorsair/engine/Vector2;

    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->lastCourier:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-direct {v2, v0}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>(Lfr/testudo/spacecorsair/engine/Vector2;)V

    .line 888
    iget-boolean v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->courierMoving:Z

    if-nez v0, :cond_343

    move v0, v4

    .line 889
    :goto_282
    iget v1, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->phase:I

    if-ne v1, v4, :cond_2e2

    iget-boolean v1, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->courierMoving:Z

    if-nez v1, :cond_2e2

    iget-boolean v1, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->secondLegPlaced:Z

    if-nez v1, :cond_2e2

    .line 891
    iget-object v1, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->entry:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-static {v1, v3}, Lfr/testudo/spacecorsair/mod/ModPlace;->farthestStation(Lfr/testudo/spacecorsair/engine/Vector2;Lfr/testudo/spacecorsair/business/world/station/Station;)Lfr/testudo/spacecorsair/business/world/station/Station;

    move-result-object v1

    .line 892
    iget-object v3, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->endAt:Lfr/testudo/spacecorsair/engine/Vector2;

    if-eqz v1, :cond_346

    iget-object v1, v1, Lfr/testudo/spacecorsair/business/world/station/Station;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    :goto_29a
    invoke-virtual {v3, v1}, Lfr/testudo/spacecorsair/engine/Vector2;->setSameAs(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 893
    iget-object v1, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->endAt:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v1, v1, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    iget-object v3, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->entry:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v3, v3, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    sub-float/2addr v1, v3

    float-to-double v6, v1

    iget-object v1, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->endAt:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v1, v1, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    iget-object v3, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->entry:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v3, v3, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    sub-float/2addr v1, v3

    float-to-double v8, v1

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v6

    .line 894
    iget-object v1, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->entry:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v1, v1, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    invoke-static {v6, v7}, Ljava/lang/Math;->cos(D)D

    move-result-wide v8

    const-wide v10, 0x40b1940000000000L    # 4500.0

    mul-double/2addr v8, v10

    double-to-float v3, v8

    add-float/2addr v1, v3

    iget-object v3, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->entry:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v3, v3, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    const-wide v8, 0x40b1940000000000L    # 4500.0

    mul-double/2addr v6, v8

    double-to-float v6, v6

    add-float/2addr v3, v6

    invoke-virtual {v2, v1, v3}, Lfr/testudo/spacecorsair/engine/Vector2;->set(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 895
    iget-object v1, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->lastCourier:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v1, v2}, Lfr/testudo/spacecorsair/engine/Vector2;->setSameAs(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 896
    iput-boolean v4, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->secondLegPlaced:Z

    .line 897
    invoke-direct {p0}, Lfr/testudo/spacecorsair/mod/ModFaction;->save()V

    .line 899
    :cond_2e2
    invoke-direct {p0, v2, v4}, Lfr/testudo/spacecorsair/mod/ModFaction;->civil(Lfr/testudo/spacecorsair/engine/Vector2;Z)Lfr/testudo/spacecorsair/business/world/civil/CivilShip;

    move-result-object v1

    .line 900
    if-eqz v1, :cond_e

    .line 901
    iget v2, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->idx:I

    const/16 v3, 0x9

    invoke-static {v2, v3}, Lfr/testudo/spacecorsair/mod/ModFaction;->str(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lfr/testudo/spacecorsair/mod/ModFaction;->name(Lfr/testudo/spacecorsair/business/Element;Ljava/lang/String;)V

    .line 902
    iget v2, v1, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->maxLife:F

    const/high16 v3, 0x40c00000    # 6.0f

    mul-float/2addr v2, v3

    iput v2, v1, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->maxLife:F

    .line 903
    iget v2, v1, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->maxLife:F

    iput v2, v1, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->life:F

    .line 904
    iput-boolean v4, v1, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->isMissionObjective:Z

    .line 905
    sget-object v2, Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;->GREEN:Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;

    iput-object v2, v1, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->missionObjectiveColor:Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;

    .line 906
    iput-object v1, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->target:Lfr/testudo/spacecorsair/business/Element;

    .line 907
    iget-object v2, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->gate:Lfr/testudo/spacecorsair/engine/Vector2;

    iget-object v3, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->endAt:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v2, v3}, Lfr/testudo/spacecorsair/engine/Vector2;->setSameAs(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 908
    if-nez v0, :cond_34e

    new-array v0, v4, [Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;

    iget-object v2, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->gate:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v2, v2, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    iget-object v3, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->gate:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v3, v3, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    invoke-static {v2, v3}, Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;->newMoove(FF)Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;

    move-result-object v2

    aput-object v2, v0, v5

    invoke-virtual {v1, v0}, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->setActivity([Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;)V

    .line 910
    :goto_322
    const/high16 v2, 0x3f800000    # 1.0f

    iget v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->phase:I

    if-nez v0, :cond_36c

    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->center:Lfr/testudo/spacecorsair/engine/Vector2;

    :goto_32a
    iget-object v3, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->gate:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v0, v3}, Lfr/testudo/spacecorsair/engine/Vector2;->distance(Lfr/testudo/spacecorsair/engine/Vector2;)F

    move-result v0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->startDist:F

    .line 911
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->lastCourier:Lfr/testudo/spacecorsair/engine/Vector2;

    iget-object v1, v1, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/engine/Vector2;->setSameAs(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 912
    const/16 v0, 0x2710

    iput v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->courierCheck:I

    goto/16 :goto_e

    :cond_343
    move v0, v5

    .line 888
    goto/16 :goto_282

    .line 892
    :cond_346
    iget-object v1, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->entry:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModFaction;->farGate(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    move-result-object v1

    goto/16 :goto_29a

    .line 909
    :cond_34e
    new-array v0, v12, [Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;

    const/16 v2, 0x1f4

    const/high16 v3, 0x40800000    # 4.0f

    invoke-static {v2, v3}, Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;->newWaitUntilPlayerClose(IF)Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;

    move-result-object v2

    aput-object v2, v0, v5

    iget-object v2, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->gate:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v2, v2, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    iget-object v3, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->gate:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v3, v3, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    invoke-static {v2, v3}, Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;->newMoove(FF)Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;

    move-result-object v2

    aput-object v2, v0, v4

    invoke-virtual {v1, v0}, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->setActivity([Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;)V

    goto :goto_322

    .line 910
    :cond_36c
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->entry:Lfr/testudo/spacecorsair/engine/Vector2;

    goto :goto_32a

    .line 914
    :cond_36f
    const-string v0, "SCAN_CIVIL"

    iget-object v1, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->obj:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3b2

    .line 915
    iget v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->goal:I

    new-array v0, v0, [I

    iput-object v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->scanMs:[I

    move v0, v5

    .line 916
    :goto_380
    iget v1, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->goal:I

    if-ge v0, v1, :cond_e

    .line 917
    iget v1, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->progress:I

    if-ge v0, v1, :cond_395

    iget-object v1, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->scanMs:[I

    const/4 v2, -0x1

    aput v2, v1, v0

    iget-object v1, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->civs:Ljava/util/List;

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 916
    :cond_392
    :goto_392
    add-int/lit8 v0, v0, 0x1

    goto :goto_380

    .line 919
    :cond_395
    iget-object v1, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->center:Lfr/testudo/spacecorsair/engine/Vector2;

    const/high16 v2, 0x43960000    # 300.0f

    const v4, 0x45228000    # 2600.0f

    invoke-static {v1, v2, v4}, Lfr/testudo/spacecorsair/mod/ModFaction;->away(Lfr/testudo/spacecorsair/engine/Vector2;FF)Lfr/testudo/spacecorsair/engine/Vector2;

    move-result-object v1

    iget-object v2, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->center:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-direct {p0, v1, v2}, Lfr/testudo/spacecorsair/mod/ModFaction;->scanTarget(Lfr/testudo/spacecorsair/engine/Vector2;Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/business/world/civil/CivilShip;

    move-result-object v1

    if-nez v1, :cond_392

    iget-object v1, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->civs:Ljava/util/List;

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->scanMs:[I

    aput v5, v1, v0

    goto :goto_392

    .line 921
    :cond_3b2
    const-string v0, "KILL_FLAGSHIP"

    iget-object v1, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->obj:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 922
    iget v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->idx:I

    const/16 v1, 0x8

    invoke-static {v0, v1}, Lfr/testudo/spacecorsair/mod/ModFaction;->str(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v4}, Lfr/testudo/spacecorsair/mod/ModCapitals;->ensure(Ljava/lang/String;Z)Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;

    move-result-object v0

    .line 923
    if-eqz v0, :cond_e

    .line 924
    iput-boolean v4, v0, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->isMissionObjective:Z

    .line 925
    sget-object v1, Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;->RED:Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;

    iput-object v1, v0, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->missionObjectiveColor:Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;

    .line 926
    iput-object v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->target:Lfr/testudo/spacecorsair/business/Element;

    goto/16 :goto_e
.end method

.method private side()I
    .registers 5

    .prologue
    const/4 v0, 0x2

    .line 620
    iget v1, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->idx:I

    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModFaction;->key(I)Ljava/lang/String;

    move-result-object v1

    .line 621
    const-string v2, "kretari"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_20

    const-string v2, "reaver"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_22

    iget v2, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->idx:I

    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModFaction;->order(I)I

    move-result v2

    const/4 v3, 0x3

    if-ge v2, v3, :cond_22

    :cond_20
    const/4 v0, 0x1

    .line 623
    :cond_21
    :goto_21
    return v0

    .line 622
    :cond_22
    const-string v2, "varn"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_32

    iget v1, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->idx:I

    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModFaction;->order(I)I

    move-result v1

    if-eq v1, v0, :cond_21

    .line 623
    :cond_32
    const/4 v0, 0x0

    goto :goto_21
.end method

.method private stateKey()Ljava/lang/String;
    .registers 3

    .prologue
    .line 532
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "fm_st_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->idx:I

    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModFaction;->id(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static str(II)Ljava/lang/String;
    .registers 4

    .prologue
    .line 164
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModFaction;->rows()[[Ljava/lang/Object;

    move-result-object v0

    aget-object v0, v0, p0

    aget-object v0, v0, p1

    check-cast v0, Ljava/lang/String;

    .line 165
    const/4 v1, 0x2

    if-eq p1, v1, :cond_19

    const/16 v1, 0x9

    if-eq p1, v1, :cond_19

    const/16 v1, 0xb

    if-lt p1, v1, :cond_1d

    const/16 v1, 0xe

    if-gt p1, v1, :cond_1d

    :cond_19
    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 166
    :cond_1d
    if-eqz v0, :cond_2b

    const-string v1, "{T"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-ltz v1, :cond_2b

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModFaction;->tithe(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_2b
    return-object v0
.end method

.method static testDrive(Ljava/lang/String;Lfr/testudo/spacecorsair/business/player/PlayerShip;)Z
    .registers 10

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 483
    :try_start_2
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->currentMission:Lfr/testudo/spacecorsair/business/mission/Mission;

    .line 484
    if-eqz v0, :cond_e

    iget-object v3, v0, Lfr/testudo/spacecorsair/business/mission/Mission;->missionEngine:Lfr/testudo/spacecorsair/business/mission/MissionListener;

    instance-of v3, v3, Lfr/testudo/spacecorsair/mod/ModFaction;

    if-nez v3, :cond_10

    :cond_e
    move v0, v1

    .line 514
    :goto_f
    return v0

    .line 485
    :cond_10
    iget-object v0, v0, Lfr/testudo/spacecorsair/business/mission/Mission;->missionEngine:Lfr/testudo/spacecorsair/business/mission/MissionListener;

    check-cast v0, Lfr/testudo/spacecorsair/mod/ModFaction;

    .line 486
    const-string v3, "pickup"

    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_81

    .line 487
    iget-object v3, v0, Lfr/testudo/spacecorsair/mod/ModFaction;->markers:[F

    if-nez v3, :cond_54

    const-string v2, "mdrive"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "pickup done progress="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v0, Lfr/testudo/spacecorsair/mod/ModFaction;->progress:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v0, Lfr/testudo/spacecorsair/mod/ModFaction;->goal:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " phase="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v0, v0, Lfr/testudo/spacecorsair/mod/ModFaction;->phase:I

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lfr/testudo/spacecorsair/mod/ModDev;->ev(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    goto :goto_f

    :cond_54
    move v3, v1

    .line 488
    :goto_55
    iget-object v4, v0, Lfr/testudo/spacecorsair/mod/ModFaction;->taken:[Z

    array-length v4, v4

    if-ge v3, v4, :cond_7f

    .line 489
    iget-object v4, v0, Lfr/testudo/spacecorsair/mod/ModFaction;->taken:[Z

    aget-boolean v4, v4, v3

    if-eqz v4, :cond_63

    .line 488
    add-int/lit8 v3, v3, 0x1

    goto :goto_55

    .line 490
    :cond_63
    iget-object v4, p1, Lfr/testudo/spacecorsair/business/player/PlayerShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget-object v5, v0, Lfr/testudo/spacecorsair/mod/ModFaction;->markers:[F

    mul-int/lit8 v6, v3, 0x2

    aget v5, v5, v6

    iget-object v0, v0, Lfr/testudo/spacecorsair/mod/ModFaction;->markers:[F

    mul-int/lit8 v3, v3, 0x2

    add-int/lit8 v3, v3, 0x1

    aget v0, v0, v3

    invoke-virtual {v4, v5, v0}, Lfr/testudo/spacecorsair/engine/Vector2;->set(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 491
    iget-object v0, p1, Lfr/testudo/spacecorsair/business/player/PlayerShip;->speed:Lfr/testudo/spacecorsair/engine/Vector2;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Lfr/testudo/spacecorsair/engine/Vector2;->set(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    move v0, v2

    .line 492
    goto :goto_f

    :cond_7f
    move v0, v2

    .line 494
    goto :goto_f

    .line 496
    :cond_81
    const-string v3, "outpostkill"

    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d5

    .line 497
    const-string v3, "mdrive"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "outpost "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v2, v0, Lfr/testudo/spacecorsair/mod/ModFaction;->outpost:Lfr/testudo/spacecorsair/business/world/civil/CivilShip;

    if-nez v2, :cond_b3

    const-string v2, "none"

    :goto_9c
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lfr/testudo/spacecorsair/mod/ModDev;->ev(Ljava/lang/String;Ljava/lang/String;)V

    .line 498
    iget-object v2, v0, Lfr/testudo/spacecorsair/mod/ModFaction;->outpost:Lfr/testudo/spacecorsair/business/world/civil/CivilShip;

    if-eqz v2, :cond_b0

    iget-object v0, v0, Lfr/testudo/spacecorsair/mod/ModFaction;->outpost:Lfr/testudo/spacecorsair/business/world/civil/CivilShip;

    const/4 v2, 0x0

    iput v2, v0, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->life:F

    :cond_b0
    move v0, v1

    .line 499
    goto/16 :goto_f

    .line 497
    :cond_b3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "hull "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v5, v0, Lfr/testudo/spacecorsair/mod/ModFaction;->outpost:Lfr/testudo/spacecorsair/business/world/civil/CivilShip;

    iget v5, v5, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->life:F

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, " -> 0"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_9c

    .line 501
    :cond_d5
    const-string v3, "escort"

    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_19b

    .line 502
    const-string v4, "mdrive"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "escort phase="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v5, v0, Lfr/testudo/spacecorsair/mod/ModFaction;->phase:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " inZone="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v5, v0, Lfr/testudo/spacecorsair/mod/ModFaction;->inZone:Z

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " courier "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v3, v0, Lfr/testudo/spacecorsair/mod/ModFaction;->target:Lfr/testudo/spacecorsair/business/Element;

    if-nez v3, :cond_127

    const-string v3, "none"

    :goto_108
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lfr/testudo/spacecorsair/mod/ModDev;->ev(Ljava/lang/String;Ljava/lang/String;)V

    .line 503
    iget-object v3, v0, Lfr/testudo/spacecorsair/mod/ModFaction;->target:Lfr/testudo/spacecorsair/business/Element;

    if-eqz v3, :cond_11d

    iget-object v3, v0, Lfr/testudo/spacecorsair/mod/ModFaction;->target:Lfr/testudo/spacecorsair/business/Element;

    iget-boolean v3, v3, Lfr/testudo/spacecorsair/business/Element;->removed:Z

    if-eqz v3, :cond_14c

    :cond_11d
    iget v3, v0, Lfr/testudo/spacecorsair/mod/ModFaction;->testTicks:I

    if-lez v3, :cond_149

    const/4 v2, 0x0

    iput v2, v0, Lfr/testudo/spacecorsair/mod/ModFaction;->testTicks:I

    move v0, v1

    goto/16 :goto_f

    .line 502
    :cond_127
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, v0, Lfr/testudo/spacecorsair/mod/ModFaction;->target:Lfr/testudo/spacecorsair/business/Element;

    iget-object v6, v6, Lfr/testudo/spacecorsair/business/Element;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget-object v7, v0, Lfr/testudo/spacecorsair/mod/ModFaction;->gate:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v6, v7}, Lfr/testudo/spacecorsair/engine/Vector2;->distance(Lfr/testudo/spacecorsair/engine/Vector2;)F

    move-result v6

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, " from its gate"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_108

    :cond_149
    move v0, v2

    .line 503
    goto/16 :goto_f

    .line 504
    :cond_14c
    iget-object v3, p1, Lfr/testudo/spacecorsair/business/player/PlayerShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget-object v4, v0, Lfr/testudo/spacecorsair/mod/ModFaction;->target:Lfr/testudo/spacecorsair/business/Element;

    iget-object v4, v4, Lfr/testudo/spacecorsair/business/Element;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v4, v4, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    const/high16 v5, 0x43960000    # 300.0f

    add-float/2addr v4, v5

    iget-object v5, v0, Lfr/testudo/spacecorsair/mod/ModFaction;->target:Lfr/testudo/spacecorsair/business/Element;

    iget-object v5, v5, Lfr/testudo/spacecorsair/business/Element;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v5, v5, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    invoke-virtual {v3, v4, v5}, Lfr/testudo/spacecorsair/engine/Vector2;->set(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 505
    iget-object v3, p1, Lfr/testudo/spacecorsair/business/player/PlayerShip;->speed:Lfr/testudo/spacecorsair/engine/Vector2;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lfr/testudo/spacecorsair/engine/Vector2;->set(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 506
    iget-object v3, v0, Lfr/testudo/spacecorsair/mod/ModFaction;->target:Lfr/testudo/spacecorsair/business/Element;

    iget-object v3, v3, Lfr/testudo/spacecorsair/business/Element;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget-object v4, v0, Lfr/testudo/spacecorsair/mod/ModFaction;->gate:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v3, v4}, Lfr/testudo/spacecorsair/engine/Vector2;->setSameAs(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 507
    iget-object v3, v0, Lfr/testudo/spacecorsair/mod/ModFaction;->target:Lfr/testudo/spacecorsair/business/Element;

    invoke-virtual {v3}, Lfr/testudo/spacecorsair/business/Element;->updateSapCoords()V

    .line 508
    iget v3, v0, Lfr/testudo/spacecorsair/mod/ModFaction;->testTicks:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v0, Lfr/testudo/spacecorsair/mod/ModFaction;->testTicks:I
    :try_end_17b
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_17b} :catch_17e

    move v0, v2

    .line 509
    goto/16 :goto_f

    .line 511
    :catch_17e
    move-exception v0

    .line 512
    const-string v2, "mdrive"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " error "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lfr/testudo/spacecorsair/mod/ModDev;->ev(Ljava/lang/String;Ljava/lang/String;)V

    :cond_19b
    move v0, v1

    .line 514
    goto/16 :goto_f
.end method

.method static testObjective()Lfr/testudo/spacecorsair/engine/Vector2;
    .registers 2

    .prologue
    .line 519
    :try_start_0
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->currentMission:Lfr/testudo/spacecorsair/business/mission/Mission;

    .line 520
    if-eqz v0, :cond_27

    iget-object v1, v0, Lfr/testudo/spacecorsair/business/mission/Mission;->missionEngine:Lfr/testudo/spacecorsair/business/mission/MissionListener;

    instance-of v1, v1, Lfr/testudo/spacecorsair/mod/ModFaction;

    if-eqz v1, :cond_27

    .line 521
    iget-object v0, v0, Lfr/testudo/spacecorsair/business/mission/Mission;->missionEngine:Lfr/testudo/spacecorsair/business/mission/MissionListener;

    check-cast v0, Lfr/testudo/spacecorsair/mod/ModFaction;

    .line 522
    iget-boolean v1, v0, Lfr/testudo/spacecorsair/mod/ModFaction;->planned:Z

    if-eqz v1, :cond_27

    iget-object v1, v0, Lfr/testudo/spacecorsair/mod/ModFaction;->target:Lfr/testudo/spacecorsair/business/Element;

    if-eqz v1, :cond_23

    iget-object v1, v0, Lfr/testudo/spacecorsair/mod/ModFaction;->target:Lfr/testudo/spacecorsair/business/Element;

    iget-boolean v1, v1, Lfr/testudo/spacecorsair/business/Element;->removed:Z

    if-nez v1, :cond_23

    iget-object v0, v0, Lfr/testudo/spacecorsair/mod/ModFaction;->target:Lfr/testudo/spacecorsair/business/Element;

    iget-object v0, v0, Lfr/testudo/spacecorsair/business/Element;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    .line 527
    :goto_22
    return-object v0

    .line 522
    :cond_23
    iget-object v0, v0, Lfr/testudo/spacecorsair/mod/ModFaction;->center:Lfr/testudo/spacecorsair/engine/Vector2;
    :try_end_25
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_25} :catch_26

    goto :goto_22

    .line 524
    :catch_26
    move-exception v0

    .line 527
    :cond_27
    const/4 v0, 0x0

    goto :goto_22
.end method

.method static testTick(Lfr/testudo/spacecorsair/business/player/PlayerShip;)V
    .registers 6

    .prologue
    .line 48
    const-string v0, "corsair_mzone"

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModDev;->testFlag(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lfr/testudo/spacecorsair/mod/ModFaction;->testZone:Z

    .line 49
    const-string v0, "corsair_hail"

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModDev;->testFlag(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lfr/testudo/spacecorsair/mod/ModFaction;->testHail:Z

    .line 50
    const-string v0, "corsair_mission"

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModDev;->testValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 51
    if-eqz v2, :cond_26

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_26

    sget-object v0, Lfr/testudo/spacecorsair/mod/ModFaction;->testStarted:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_27

    .line 76
    :cond_26
    :goto_26
    return-void

    .line 52
    :cond_27
    sput-object v2, Lfr/testudo/spacecorsair/mod/ModFaction;->testStarted:Ljava/lang/String;

    .line 54
    :try_start_29
    const-string v0, "NONE"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4b

    .line 55
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->currentMission:Lfr/testudo/spacecorsair/business/mission/Mission;

    .line 56
    if-eqz v0, :cond_3c

    iget-object v0, v0, Lfr/testudo/spacecorsair/business/mission/Mission;->missionEngine:Lfr/testudo/spacecorsair/business/mission/MissionListener;

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/business/mission/MissionListener;->giveUp()V

    .line 57
    :cond_3c
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    const/4 v1, 0x0

    iput-object v1, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->currentMission:Lfr/testudo/spacecorsair/business/mission/Mission;

    .line 58
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->missionRepository:Lfr/testudo/spacecorsair/business/mission/MissionRepository;

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/business/mission/MissionRepository;->saveNoCorrentMission()V

    goto :goto_26

    .line 73
    :catch_49
    move-exception v0

    goto :goto_26

    .line 61
    :cond_4b
    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModFaction;->byId(Ljava/lang/String;)Lfr/testudo/spacecorsair/business/mission/Mission;

    move-result-object v1

    .line 62
    if-nez v1, :cond_86

    const-string v0, "_MOD_BOSS_"

    invoke-virtual {v2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_86

    .line 63
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 64
    const/4 v3, 0x0

    const-string v4, "_MOD_BOSS_"

    invoke-virtual {v2, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v0}, Lfr/testudo/spacecorsair/mod/ModBoss;->addMissions(Ljava/lang/String;Ljava/util/List;)V

    .line 65
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_70
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_86

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfr/testudo/spacecorsair/business/mission/Mission;

    iget-object v4, v0, Lfr/testudo/spacecorsair/business/mission/Mission;->missionId:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a6

    :goto_84
    move-object v1, v0

    goto :goto_70

    .line 67
    :cond_86
    if-eqz v1, :cond_26

    .line 68
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->currentMission:Lfr/testudo/spacecorsair/business/mission/Mission;

    .line 69
    if-eqz v0, :cond_95

    if-eq v0, v1, :cond_95

    iget-object v0, v0, Lfr/testudo/spacecorsair/business/mission/Mission;->missionEngine:Lfr/testudo/spacecorsair/business/mission/MissionListener;

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/business/mission/MissionListener;->giveUp()V

    .line 70
    :cond_95
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iput-object v1, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->currentMission:Lfr/testudo/spacecorsair/business/mission/Mission;

    .line 71
    iget-object v0, v1, Lfr/testudo/spacecorsair/business/mission/Mission;->missionEngine:Lfr/testudo/spacecorsair/business/mission/MissionListener;

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/business/mission/MissionListener;->init()V

    .line 72
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->missionRepository:Lfr/testudo/spacecorsair/business/mission/MissionRepository;

    invoke-virtual {v0, v2}, Lfr/testudo/spacecorsair/business/mission/MissionRepository;->saveMissionAsCurrentOne(Ljava/lang/String;)V
    :try_end_a5
    .catch Ljava/lang/Throwable; {:try_start_29 .. :try_end_a5} :catch_49

    goto :goto_26

    :cond_a6
    move-object v0, v1

    goto :goto_84
.end method

.method static text(I)Ljava/lang/String;
    .registers 8

    .prologue
    const/16 v6, 0x10

    .line 333
    const v0, 0x7f7f03e8

    sub-int v1, p0, v0

    .line 334
    if-ltz v1, :cond_1ad

    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModFaction;->count()I

    move-result v0

    if-ge v1, v0, :cond_1ad

    .line 335
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModCapitals;->FACTIONS:[Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;

    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModFaction;->key(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModFaction;->faction(Ljava/lang/String;)I

    move-result v2

    aget-object v2, v0, v2

    .line 336
    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModFaction;->key(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModFaction;->commander(Ljava/lang/String;)I

    move-result v0

    .line 337
    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModFaction;->zoneOf(I)Lfr/testudo/spacecorsair/game/levels/LevelId;

    move-result-object v3

    .line 338
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "<b>"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lfr/testudo/spacecorsair/mod/ModFactionData;->COMMANDER:[Ljava/lang/String;

    aget-object v0, v5, v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "</b>, "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v4, v2, Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;->name:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "<br><br>"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v4, 0xb

    invoke-static {v1, v4}, Lfr/testudo/spacecorsair/mod/ModFaction;->str(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "<br><br><b>"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "Objective"

    .line 339
    invoke-static {v4}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "</b>: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v4, 0xc

    invoke-static {v1, v4}, Lfr/testudo/spacecorsair/mod/ModFaction;->str(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 340
    if-eqz v3, :cond_1a2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "<br><b>"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, "Sector"

    invoke-static {v5}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, "</b>: "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v3}, Lfr/testudo/spacecorsair/mod/ModFaction;->pretty(Lfr/testudo/spacecorsair/game/levels/LevelId;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_9f
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "<br><b>"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "Reward"

    .line 341
    invoke-static {v3}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "</b>: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v3, 0xf

    invoke-static {v1, v3}, Lfr/testudo/spacecorsair/mod/ModFaction;->num(II)I

    move-result v3

    div-int/lit8 v3, v3, 0x3

    invoke-static {v3}, Lfr/testudo/spacecorsair/mod/ModQol;->missionPay(I)I

    move-result v3

    invoke-static {v3}, Lfr/testudo/spacecorsair/mod/ModFaction;->credits(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " credits"

    invoke-static {v3}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v1, v6}, Lfr/testudo/spacecorsair/mod/ModFaction;->str(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1a6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " + "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v1, v6}, Lfr/testudo/spacecorsair/mod/ModFaction;->str(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lfr/testudo/spacecorsair/mod/ModFaction;->itemLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_fc
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " (+"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 342
    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModFaction;->contract(I)Z

    move-result v3

    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModFaction;->order(I)I

    move-result v4

    invoke-static {v3, v4}, Lfr/testudo/spacecorsair/mod/ModV35;->missionStanding(ZI)F

    move-result v3

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " standing"

    invoke-static {v3}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModFaction;->key(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModRep;->payoutBonus(Ljava/lang/String;)F

    move-result v0

    const/4 v4, 0x0

    cmpl-float v0, v0, v4

    if-lez v0, :cond_1aa

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ", +"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModFaction;->key(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModRep;->payoutBonus(Ljava/lang/String;)F

    move-result v1

    const/high16 v4, 0x42c80000    # 100.0f

    mul-float/2addr v1, v4

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "% standing bonus"

    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_15d
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")<br><br>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "Missions of this chain are handed out and handed in at "

    .line 343
    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "<b>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, v2, Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;->hq:Lfr/testudo/spacecorsair/game/levels/LevelId;

    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModFaction;->pretty(Lfr/testudo/spacecorsair/game/levels/LevelId;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "</b>: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "talk to the commander of "

    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, v2, Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;->ship:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 347
    :goto_1a1
    return-object v0

    .line 340
    :cond_1a2
    const-string v0, ""

    goto/16 :goto_9f

    .line 341
    :cond_1a6
    const-string v0, ""

    goto/16 :goto_fc

    .line 342
    :cond_1aa
    const-string v0, ""

    goto :goto_15d

    .line 345
    :cond_1ad
    const v0, 0x7f7f07d0

    sub-int v0, p0, v0

    .line 346
    if-ltz v0, :cond_1d8

    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModFaction;->count()I

    move-result v1

    if-ge v0, v1, :cond_1d8

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0xd

    invoke-static {v0, v2}, Lfr/testudo/spacecorsair/mod/ModFaction;->str(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "<br><br>The reward has been transferred to your hold."

    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1a1

    .line 347
    :cond_1d8
    const/4 v0, 0x0

    goto :goto_1a1
.end method

.method static tithe(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .prologue
    .line 171
    const-string v0, "{TC}"

    const v1, 0x7a120

    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModFaction;->credits(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "{TP}"

    const/4 v2, 0x5

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static xy(Ljava/lang/String;Lfr/testudo/spacecorsair/engine/Vector2;)V
    .registers 5

    .prologue
    .line 596
    const-string v0, ","

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 597
    const/4 v1, 0x0

    aget-object v1, v0, v1

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    const/4 v2, 0x1

    aget-object v0, v0, v2

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    invoke-virtual {p1, v1, v0}, Lfr/testudo/spacecorsair/engine/Vector2;->set(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 598
    return-void
.end method

.method static zoneOf(I)Lfr/testudo/spacecorsair/game/levels/LevelId;
    .registers 7

    .prologue
    .line 356
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModFaction;->active()Lfr/testudo/spacecorsair/mod/ModFaction;

    move-result-object v0

    .line 357
    if-eqz v0, :cond_11

    iget v1, v0, Lfr/testudo/spacecorsair/mod/ModFaction;->idx:I

    if-ne v1, p0, :cond_11

    iget-object v1, v0, Lfr/testudo/spacecorsair/mod/ModFaction;->zone:Lfr/testudo/spacecorsair/game/levels/LevelId;

    if-eqz v1, :cond_11

    iget-object v0, v0, Lfr/testudo/spacecorsair/mod/ModFaction;->zone:Lfr/testudo/spacecorsair/game/levels/LevelId;

    .line 359
    :goto_10
    return-object v0

    .line 358
    :cond_11
    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModFaction;->contract(I)Z

    move-result v0

    if-eqz v0, :cond_38

    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModFaction;->hunt(I)Z

    move-result v0

    if-nez v0, :cond_38

    sget-object v0, Lfr/testudo/spacecorsair/mod/ModCapitals;->FACTIONS:[Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;

    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModFaction;->key(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModFaction;->faction(Ljava/lang/String;)I

    move-result v1

    aget-object v0, v0, v1

    iget-object v0, v0, Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;->hq:Lfr/testudo/spacecorsair/game/levels/LevelId;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/32 v4, 0x5265c00

    div-long/2addr v2, v4

    invoke-static {v0, p0, v2, v3}, Lfr/testudo/spacecorsair/mod/ModPlace;->contractSector(Lfr/testudo/spacecorsair/game/levels/LevelId;IJ)Lfr/testudo/spacecorsair/game/levels/LevelId;

    move-result-object v0

    goto :goto_10

    .line 359
    :cond_38
    const/4 v0, 0x4

    invoke-static {p0, v0}, Lfr/testudo/spacecorsair/mod/ModFaction;->str(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModFaction;->level(Ljava/lang/String;)Lfr/testudo/spacecorsair/game/levels/LevelId;

    move-result-object v0

    goto :goto_10
.end method


# virtual methods
.method public getCurrentInstruction()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1377
    :try_start_0
    invoke-direct {p0}, Lfr/testudo/spacecorsair/mod/ModFaction;->instruction()Ljava/lang/String;

    move-result-object v0

    .line 1378
    if-eqz v0, :cond_7

    .line 1381
    :cond_6
    :goto_6
    return-object v0

    .line 1378
    :cond_7
    const-string v0, ""
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_9} :catch_a

    goto :goto_6

    .line 1379
    :catch_a
    move-exception v0

    .line 1380
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->instrText:Ljava/lang/String;

    .line 1381
    if-nez v0, :cond_6

    const-string v0, ""

    goto :goto_6
.end method

.method public giveUp()V
    .registers 1

    .prologue
    .line 1456
    invoke-direct {p0}, Lfr/testudo/spacecorsair/mod/ModFaction;->cleanup()V

    .line 1457
    invoke-virtual {p0}, Lfr/testudo/spacecorsair/mod/ModFaction;->terminate()V

    .line 1458
    return-void
.end method

.method public init()V
    .registers 9

    .prologue
    const/4 v1, 0x0

    .line 1437
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModFaction;->prefs()Landroid/content/SharedPreferences;

    move-result-object v2

    .line 1438
    iget v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->idx:I

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModFaction;->contract(I)Z

    move-result v0

    if-nez v0, :cond_af

    if-eqz v2, :cond_af

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "fm_done_"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v3, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->idx:I

    invoke-static {v3}, Lfr/testudo/spacecorsair/mod/ModFaction;->id(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_af

    const/4 v0, 0x1

    :goto_2f
    iput-boolean v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->completed:Z

    .line 1439
    invoke-direct {p0}, Lfr/testudo/spacecorsair/mod/ModFaction;->cleanup()V

    .line 1440
    iput-boolean v1, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->planned:Z

    .line 1441
    iput v1, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->phase:I

    .line 1442
    iget v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->idx:I

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModFaction;->contract(I)Z

    move-result v0

    if-eqz v0, :cond_b2

    iget v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->idx:I

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModFaction;->hunt(I)Z

    move-result v0

    if-nez v0, :cond_b2

    sget-object v0, Lfr/testudo/spacecorsair/mod/ModCapitals;->FACTIONS:[Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;

    iget v1, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->fi:I

    aget-object v0, v0, v1

    iget-object v0, v0, Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;->hq:Lfr/testudo/spacecorsair/game/levels/LevelId;

    iget v1, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->idx:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-wide/32 v6, 0x5265c00

    div-long/2addr v4, v6

    invoke-static {v0, v1, v4, v5}, Lfr/testudo/spacecorsair/mod/ModPlace;->contractSector(Lfr/testudo/spacecorsair/game/levels/LevelId;IJ)Lfr/testudo/spacecorsair/game/levels/LevelId;

    move-result-object v0

    :goto_5e
    iput-object v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->zone:Lfr/testudo/spacecorsair/game/levels/LevelId;

    .line 1443
    invoke-direct {p0}, Lfr/testudo/spacecorsair/mod/ModFaction;->save()V

    .line 1444
    if-eqz v2, :cond_91

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lfr/testudo/spacecorsair/mod/ModFaction;->stateKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "_z"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->zone:Lfr/testudo/spacecorsair/game/levels/LevelId;

    if-eqz v0, :cond_be

    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->zone:Lfr/testudo/spacecorsair/game/levels/LevelId;

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/game/levels/LevelId;->name()Ljava/lang/String;

    move-result-object v0

    :goto_8a
    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1445
    :cond_91
    iget v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->idx:I

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModFaction;->key(I)Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->idx:I

    const/16 v2, 0xb

    invoke-static {v1, v2}, Lfr/testudo/spacecorsair/mod/ModFaction;->str(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lfr/testudo/spacecorsair/mod/ModComms;->brief(Ljava/lang/String;Ljava/lang/String;)V

    .line 1446
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/Game;->currentLevel:Lfr/testudo/spacecorsair/game/levels/Level;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/levels/Level;->name:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lfr/testudo/spacecorsair/mod/ModFaction;->onZoneChanged(Ljava/lang/String;Ljava/lang/String;)V

    .line 1447
    return-void

    :cond_af
    move v0, v1

    .line 1438
    goto/16 :goto_2f

    .line 1442
    :cond_b2
    iget v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->idx:I

    const/4 v1, 0x4

    invoke-static {v0, v1}, Lfr/testudo/spacecorsair/mod/ModFaction;->str(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModFaction;->level(Ljava/lang/String;)Lfr/testudo/spacecorsair/game/levels/LevelId;

    move-result-object v0

    goto :goto_5e

    .line 1444
    :cond_be
    const-string v0, ""

    goto :goto_8a
.end method

.method public isCompleted()Z
    .registers 2

    .prologue
    .line 1451
    iget-boolean v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->completed:Z

    return v0
.end method

.method public onBeforePlayerDock()V
    .registers 3

    .prologue
    .line 1346
    :try_start_0
    iget-boolean v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->completed:Z

    if-nez v0, :cond_1d

    iget v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->phase:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1d

    const-string v0, "DELIVERY"

    iget-object v1, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->obj:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1e

    const-string v0, "GATHER_AND_SELL"

    iget-object v1, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->obj:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1e

    .line 1352
    :cond_1d
    :goto_1d
    return-void

    .line 1347
    :cond_1e
    invoke-direct {p0}, Lfr/testudo/spacecorsair/mod/ModFaction;->secondSector()Lfr/testudo/spacecorsair/game/levels/LevelId;

    move-result-object v0

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModFaction;->sectorIs(Lfr/testudo/spacecorsair/game/levels/LevelId;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 1348
    invoke-direct {p0}, Lfr/testudo/spacecorsair/mod/ModFaction;->complete()V
    :try_end_2b
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_2b} :catch_2c

    goto :goto_1d

    .line 1349
    :catch_2c
    move-exception v0

    goto :goto_1d
.end method

.method public onDoPhysic(J)V
    .registers 12

    .prologue
    .line 956
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v6, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->playerShip:Lfr/testudo/spacecorsair/business/player/PlayerShip;

    .line 957
    const-string v0, "DONATE"

    iget-object v1, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->obj:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    invoke-direct {p0, v6, p1, p2}, Lfr/testudo/spacecorsair/mod/ModFaction;->donateTick(Lfr/testudo/spacecorsair/business/player/PlayerShip;J)V

    .line 1136
    :cond_11
    :goto_11
    return-void

    .line 958
    :cond_12
    iget-boolean v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->completed:Z

    if-nez v0, :cond_11

    iget-boolean v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->inZone:Z

    if-eqz v0, :cond_11

    if-eqz v6, :cond_11

    iget-boolean v0, v6, Lfr/testudo/spacecorsair/business/player/PlayerShip;->removed:Z

    if-nez v0, :cond_11

    .line 959
    iget-boolean v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->setupDone:Z

    if-nez v0, :cond_44

    .line 961
    iget v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->zoneMs:I

    if-nez v0, :cond_2f

    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->entry:Lfr/testudo/spacecorsair/engine/Vector2;

    iget-object v1, v6, Lfr/testudo/spacecorsair/business/player/PlayerShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/engine/Vector2;->setSameAs(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 962
    :cond_2f
    iget v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->zoneMs:I

    int-to-long v0, v0

    add-long/2addr v0, p1

    long-to-int v0, v0

    iput v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->zoneMs:I

    .line 963
    iget v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->zoneMs:I

    const/16 v1, 0x5dc

    if-le v0, v1, :cond_11

    iget-boolean v0, v6, Lfr/testudo/spacecorsair/business/player/PlayerShip;->isDocked:Z

    if-nez v0, :cond_11

    invoke-direct {p0}, Lfr/testudo/spacecorsair/mod/ModFaction;->setup()V

    goto :goto_11

    .line 966
    :cond_44
    invoke-static {v6}, Lfr/testudo/spacecorsair/mod/ModPlace;->tickBoost(Lfr/testudo/spacecorsair/business/player/PlayerShip;)V

    .line 967
    iget v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->phase:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_60

    const-string v0, "DELIVERY"

    iget-object v1, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->obj:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11

    const-string v0, "GATHER_AND_SELL"

    iget-object v1, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->obj:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11

    .line 968
    :cond_60
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->markers:[F

    if-eqz v0, :cond_1c8

    .line 969
    const/4 v0, 0x0

    :goto_65
    iget-object v1, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->taken:[Z

    array-length v1, v1

    if-ge v0, v1, :cond_190

    .line 970
    iget-object v1, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->taken:[Z

    aget-boolean v1, v1, v0

    if-eqz v1, :cond_73

    .line 969
    :cond_70
    :goto_70
    add-int/lit8 v0, v0, 0x1

    goto :goto_65

    .line 971
    :cond_73
    iget-object v1, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->markers:[F

    mul-int/lit8 v2, v0, 0x2

    aget v1, v1, v2

    iget-object v2, v6, Lfr/testudo/spacecorsair/business/player/PlayerShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v2, v2, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    sub-float/2addr v1, v2

    iget-object v2, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->markers:[F

    mul-int/lit8 v3, v0, 0x2

    add-int/lit8 v3, v3, 0x1

    aget v2, v2, v3

    iget-object v3, v6, Lfr/testudo/spacecorsair/business/player/PlayerShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v3, v3, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    sub-float/2addr v2, v3

    .line 972
    mul-float/2addr v1, v1

    mul-float/2addr v2, v2

    add-float/2addr v1, v2

    float-to-double v2, v1

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    double-to-float v2, v2

    .line 973
    iget-boolean v1, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->ambushed:Z

    if-nez v1, :cond_d6

    const v1, 0x44a28000    # 1300.0f

    cmpg-float v1, v2, v1

    if-gez v1, :cond_d6

    const-string v1, "FIND_OBJECT"

    iget-object v3, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->obj:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b3

    const-string v1, "DELIVERY"

    iget-object v3, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->obj:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d6

    .line 974
    :cond_b3
    const/4 v1, 0x1

    iput-boolean v1, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->ambushed:Z

    .line 975
    const-string v1, "DELIVERY"

    iget-object v3, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->obj:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_15f

    const/4 v1, 0x3

    :goto_c1
    const/4 v3, 0x0

    invoke-direct {p0, v1, v6, v3}, Lfr/testudo/spacecorsair/mod/ModFaction;->reinforce(ILfr/testudo/spacecorsair/business/Element;Z)V

    .line 976
    const-string v1, "CONTACTS INBOUND"

    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/high16 v3, 0x3f800000    # 1.0f

    const v4, 0x3ecccccd    # 0.4f

    const v5, 0x3e99999a    # 0.3f

    invoke-static {v6, v1, v3, v4, v5}, Lfr/testudo/spacecorsair/mod/Mod;->floatText(Lfr/testudo/spacecorsair/business/Element;Ljava/lang/String;FFF)V

    .line 978
    :cond_d6
    const/high16 v1, 0x435c0000    # 220.0f

    cmpg-float v1, v2, v1

    if-gez v1, :cond_70

    .line 979
    iget-object v1, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->taken:[Z

    const/4 v2, 0x1

    aput-boolean v2, v1, v0

    .line 980
    iget v1, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->progress:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->progress:I

    .line 981
    sget-object v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v1, v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->soundManager:Lfr/testudo/spacecorsair/engine/SoundManager;

    invoke-virtual {v1}, Lfr/testudo/spacecorsair/engine/SoundManager;->playGateZap()V

    .line 982
    const-string v1, "RESCUE"

    iget-object v2, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->obj:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_162

    const-string v1, "PILOT RECOVERED"

    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 983
    :goto_fe
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v1, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->goal:I

    const/4 v3, 0x1

    if-le v1, v3, :cond_18d

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->progress:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "/"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->goal:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_12d
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/high16 v2, 0x3f000000    # 0.5f

    const/high16 v3, 0x3f800000    # 1.0f

    const v4, 0x3f19999a    # 0.6f

    invoke-static {v6, v1, v2, v3, v4}, Lfr/testudo/spacecorsair/mod/Mod;->floatText(Lfr/testudo/spacecorsair/business/Element;Ljava/lang/String;FFF)V

    .line 984
    iget-boolean v1, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->ambushed:Z

    if-nez v1, :cond_15a

    iget v1, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->goal:I

    const/4 v2, 0x1

    if-le v1, v2, :cond_15a

    iget v1, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->progress:I

    iget v2, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->goal:I

    add-int/lit8 v2, v2, 0x1

    div-int/lit8 v2, v2, 0x2

    if-ne v1, v2, :cond_15a

    .line 985
    const/4 v1, 0x1

    iput-boolean v1, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->ambushed:Z

    .line 986
    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-direct {p0, v1, v6, v2}, Lfr/testudo/spacecorsair/mod/ModFaction;->reinforce(ILfr/testudo/spacecorsair/business/Element;Z)V

    .line 988
    :cond_15a
    invoke-direct {p0}, Lfr/testudo/spacecorsair/mod/ModFaction;->save()V

    goto/16 :goto_70

    .line 975
    :cond_15f
    const/4 v1, 0x2

    goto/16 :goto_c1

    .line 982
    :cond_162
    const-string v1, "GATHER_AND_SELL"

    iget-object v2, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->obj:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_173

    const-string v1, "CARGO"

    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_fe

    :cond_173
    const-string v1, "DELIVERY"

    iget-object v2, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->obj:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_185

    const-string v1, "CRATE LOADED"

    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_fe

    :cond_185
    const-string v1, "SECURED"

    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_fe

    .line 983
    :cond_18d
    const-string v1, ""

    goto :goto_12d

    .line 991
    :cond_190
    iget v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->progress:I

    iget v1, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->goal:I

    if-lt v0, v1, :cond_11

    .line 992
    const-string v0, "DELIVERY"

    iget-object v1, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->obj:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1aa

    const-string v0, "GATHER_AND_SELL"

    iget-object v1, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->obj:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c3

    .line 994
    :cond_1aa
    const/4 v0, 0x1

    iput v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->phase:I

    .line 995
    const/4 v0, 0x0

    iput-object v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->markers:[F

    .line 996
    invoke-direct {p0}, Lfr/testudo/spacecorsair/mod/ModFaction;->save()V

    .line 997
    invoke-direct {p0}, Lfr/testudo/spacecorsair/mod/ModFaction;->activeSector()Lfr/testudo/spacecorsair/game/levels/LevelId;

    move-result-object v0

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModFaction;->sectorIs(Lfr/testudo/spacecorsair/game/levels/LevelId;)Z

    move-result v0

    iput-boolean v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->inZone:Z

    .line 998
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lfr/testudo/spacecorsair/mod/ModFaction;->markGates(Z)V

    goto/16 :goto_11

    .line 1000
    :cond_1c3
    invoke-direct {p0}, Lfr/testudo/spacecorsair/mod/ModFaction;->complete()V

    goto/16 :goto_11

    .line 1005
    :cond_1c8
    const-string v0, "DEFEND_CIVILIANS"

    iget-object v1, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->obj:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2a8

    .line 1006
    const/4 v0, 0x0

    .line 1007
    iget-object v1, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->civs:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :goto_1da
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1f8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;

    if-eqz v0, :cond_6c5

    iget-boolean v3, v0, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->removed:Z

    if-nez v3, :cond_6c5

    iget v0, v0, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->life:F

    const/4 v3, 0x0

    cmpl-float v0, v0, v3

    if-lez v0, :cond_6c5

    add-int/lit8 v1, v1, 0x1

    move v0, v1

    :goto_1f6
    move v1, v0

    goto :goto_1da

    .line 1008
    :cond_1f8
    const/4 v0, 0x2

    if-ge v1, v0, :cond_200

    invoke-direct {p0}, Lfr/testudo/spacecorsair/mod/ModFaction;->fail()V

    goto/16 :goto_11

    .line 1009
    :cond_200
    iget-boolean v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->wavesOn:Z

    if-nez v0, :cond_232

    .line 1011
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->civs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_20a
    :goto_20a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_22e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;

    if-eqz v0, :cond_20a

    iget-boolean v2, v0, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->removed:Z

    if-nez v2, :cond_20a

    iget-object v0, v0, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget-object v2, v6, Lfr/testudo/spacecorsair/business/player/PlayerShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v0, v2}, Lfr/testudo/spacecorsair/engine/Vector2;->distance(Lfr/testudo/spacecorsair/engine/Vector2;)F

    move-result v0

    const/high16 v2, 0x43fa0000    # 500.0f

    cmpg-float v0, v0, v2

    if-gez v0, :cond_20a

    const/4 v0, 0x1

    iput-boolean v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->wavesOn:Z

    goto :goto_20a

    .line 1012
    :cond_22e
    iget-boolean v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->wavesOn:Z

    if-eqz v0, :cond_11

    .line 1014
    :cond_232
    iget v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->timer:I

    int-to-long v0, v0

    sub-long/2addr v0, p1

    long-to-int v0, v0

    iput v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->timer:I

    .line 1015
    iget v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->wavesLeft:I

    if-lez v0, :cond_299

    iget v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->timer:I

    if-gtz v0, :cond_299

    .line 1016
    iget v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->wavesLeft:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->wavesLeft:I

    .line 1017
    const/16 v0, 0x4e20

    iput v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->timer:I

    .line 1018
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->civs:Ljava/util/List;

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v2

    iget-object v1, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->civs:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    int-to-double v4, v1

    mul-double/2addr v2, v4

    double-to-int v1, v2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfr/testudo/spacecorsair/business/Element;

    .line 1019
    const/4 v1, 0x1

    const/4 v2, 0x1

    invoke-direct {p0, v1, v6, v2}, Lfr/testudo/spacecorsair/mod/ModFaction;->reinforce(ILfr/testudo/spacecorsair/business/Element;Z)V

    .line 1020
    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-direct {p0, v1, v0, v2}, Lfr/testudo/spacecorsair/mod/ModFaction;->reinforce(ILfr/testudo/spacecorsair/business/Element;Z)V

    .line 1021
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RAIDERS INBOUND ("

    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->wavesLeft:I

    rsub-int/lit8 v1, v1, 0x4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/4)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    const v2, 0x3ecccccd    # 0.4f

    const v3, 0x3e99999a    # 0.3f

    invoke-static {v6, v0, v1, v2, v3}, Lfr/testudo/spacecorsair/mod/Mod;->floatText(Lfr/testudo/spacecorsair/business/Element;Ljava/lang/String;FFF)V

    .line 1022
    invoke-direct {p0}, Lfr/testudo/spacecorsair/mod/ModFaction;->save()V

    .line 1024
    :cond_299
    iget v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->wavesLeft:I

    if-nez v0, :cond_11

    invoke-direct {p0}, Lfr/testudo/spacecorsair/mod/ModFaction;->liveFoes()I

    move-result v0

    if-nez v0, :cond_11

    invoke-direct {p0}, Lfr/testudo/spacecorsair/mod/ModFaction;->complete()V

    goto/16 :goto_11

    .line 1025
    :cond_2a8
    const-string v0, "DEFEND_ZONE"

    iget-object v1, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->obj:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3d0

    .line 1026
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->outpost:Lfr/testudo/spacecorsair/business/world/civil/CivilShip;

    if-eqz v0, :cond_2f0

    .line 1027
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->outpost:Lfr/testudo/spacecorsair/business/world/civil/CivilShip;

    iget-boolean v0, v0, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->removed:Z

    if-nez v0, :cond_2c5

    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->outpost:Lfr/testudo/spacecorsair/business/world/civil/CivilShip;

    iget v0, v0, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->life:F

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_2ca

    :cond_2c5
    invoke-direct {p0}, Lfr/testudo/spacecorsair/mod/ModFaction;->fail()V

    goto/16 :goto_11

    .line 1028
    :cond_2ca
    const/4 v0, 0x0

    const/16 v1, 0x63

    const/high16 v2, 0x42c80000    # 100.0f

    iget-object v3, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->outpost:Lfr/testudo/spacecorsair/business/world/civil/CivilShip;

    iget v3, v3, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->life:F

    mul-float/2addr v2, v3

    iget-object v3, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->outpost:Lfr/testudo/spacecorsair/business/world/civil/CivilShip;

    iget v3, v3, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->maxLife:F

    div-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    rsub-int/lit8 v2, v2, 0x64

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 1029
    iget v1, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->outpostLost:I

    if-eq v0, v1, :cond_2f0

    iput v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->outpostLost:I

    invoke-direct {p0}, Lfr/testudo/spacecorsair/mod/ModFaction;->save()V

    .line 1031
    :cond_2f0
    iget-object v0, v6, Lfr/testudo/spacecorsair/business/player/PlayerShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget-object v1, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->center:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/engine/Vector2;->distance(Lfr/testudo/spacecorsair/engine/Vector2;)F

    move-result v0

    const/high16 v1, 0x44e10000    # 1800.0f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_3c5

    const/4 v0, 0x1

    .line 1032
    :goto_2ff
    if-eqz v0, :cond_31e

    .line 1033
    iget v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->holdMs:I

    int-to-long v0, v0

    add-long/2addr v0, p1

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    iget v2, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->holdMs:I

    div-int/lit16 v2, v2, 0x3e8

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-eqz v0, :cond_314

    invoke-direct {p0}, Lfr/testudo/spacecorsair/mod/ModFaction;->save()V

    .line 1034
    :cond_314
    iget v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->holdMs:I

    int-to-long v0, v0

    add-long/2addr v0, p1

    long-to-int v0, v0

    iput v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->holdMs:I

    .line 1035
    const/4 v0, 0x1

    iput-boolean v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->wavesOn:Z

    .line 1037
    :cond_31e
    iget-boolean v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->wavesOn:Z

    if-eqz v0, :cond_3ba

    .line 1038
    iget v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->timer:I

    int-to-long v0, v0

    sub-long/2addr v0, p1

    long-to-int v0, v0

    iput v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->timer:I

    .line 1039
    iget v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->goal:I

    div-int/lit16 v7, v0, 0x3a98

    .line 1040
    iget v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->timer:I

    if-gtz v0, :cond_3ba

    iget v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->waveNo:I

    if-ge v0, v7, :cond_3ba

    .line 1042
    const/16 v0, 0x3a98

    iput v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->timer:I

    .line 1043
    iget v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->waveNo:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->waveNo:I

    .line 1044
    const/16 v1, 0x8

    iget v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->idx:I

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModFaction;->contract(I)Z

    move-result v0

    if-eqz v0, :cond_3c8

    const/4 v0, 0x5

    :goto_34a
    iget v2, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->waveNo:I

    add-int/2addr v0, v2

    add-int/lit8 v0, v0, -0x1

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v8

    .line 1046
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->outpost:Lfr/testudo/spacecorsair/business/world/civil/CivilShip;

    if-eqz v0, :cond_3ca

    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->outpost:Lfr/testudo/spacecorsair/business/world/civil/CivilShip;

    iget-boolean v0, v0, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->removed:Z

    if-nez v0, :cond_3ca

    add-int/lit8 v0, v8, 0x1

    div-int/lit8 v1, v0, 0x2

    .line 1047
    :goto_361
    if-lez v1, :cond_36f

    iget-object v2, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->outpost:Lfr/testudo/spacecorsair/business/world/civil/CivilShip;

    const/4 v3, 0x1

    invoke-direct {p0}, Lfr/testudo/spacecorsair/mod/ModFaction;->holdLevel()I

    move-result v4

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lfr/testudo/spacecorsair/mod/ModFaction;->reinforce(ILfr/testudo/spacecorsair/business/Element;ZIZ)V

    .line 1048
    :cond_36f
    sub-int v2, v8, v1

    if-nez v1, :cond_3cc

    const/4 v3, 0x1

    :goto_374
    invoke-direct {p0}, Lfr/testudo/spacecorsair/mod/ModFaction;->holdLevel()I

    move-result v4

    iget v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->waveNo:I

    if-ne v0, v7, :cond_3ce

    const/4 v5, 0x1

    :goto_37d
    move-object v0, p0

    move v1, v2

    move-object v2, v6

    invoke-direct/range {v0 .. v5}, Lfr/testudo/spacecorsair/mod/ModFaction;->reinforce(ILfr/testudo/spacecorsair/business/Element;ZIZ)V

    .line 1049
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RAIDERS INBOUND ("

    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->waveNo:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    const v2, 0x3ecccccd    # 0.4f

    const v3, 0x3e99999a    # 0.3f

    invoke-static {v6, v0, v1, v2, v3}, Lfr/testudo/spacecorsair/mod/Mod;->floatText(Lfr/testudo/spacecorsair/business/Element;Ljava/lang/String;FFF)V

    .line 1050
    invoke-direct {p0}, Lfr/testudo/spacecorsair/mod/ModFaction;->save()V

    .line 1053
    :cond_3ba
    iget v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->holdMs:I

    iget v1, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->goal:I

    if-lt v0, v1, :cond_11

    invoke-direct {p0}, Lfr/testudo/spacecorsair/mod/ModFaction;->complete()V

    goto/16 :goto_11

    .line 1031
    :cond_3c5
    const/4 v0, 0x0

    goto/16 :goto_2ff

    .line 1044
    :cond_3c8
    const/4 v0, 0x6

    goto :goto_34a

    .line 1046
    :cond_3ca
    const/4 v1, 0x0

    goto :goto_361

    .line 1048
    :cond_3cc
    const/4 v3, 0x0

    goto :goto_374

    :cond_3ce
    const/4 v5, 0x0

    goto :goto_37d

    .line 1054
    :cond_3d0
    const-string v0, "BOUNTY"

    iget-object v1, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->obj:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3e4

    const-string v0, "DESTROY_STATION"

    iget-object v1, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->obj:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_428

    .line 1055
    :cond_3e4
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->target:Lfr/testudo/spacecorsair/business/Element;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->target:Lfr/testudo/spacecorsair/business/Element;

    iget-boolean v0, v0, Lfr/testudo/spacecorsair/business/Element;->removed:Z

    if-eqz v0, :cond_11

    .line 1056
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->target:Lfr/testudo/spacecorsair/business/Element;

    iget v0, v0, Lfr/testudo/spacecorsair/business/Element;->life:F

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_3fc

    invoke-direct {p0}, Lfr/testudo/spacecorsair/mod/ModFaction;->complete()V

    goto/16 :goto_11

    .line 1058
    :cond_3fc
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->spawned:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_402
    :goto_402
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_418

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfr/testudo/spacecorsair/business/Element;

    if-eqz v0, :cond_402

    iget-boolean v2, v0, Lfr/testudo/spacecorsair/business/Element;->removed:Z

    if-nez v2, :cond_402

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/business/Element;->remove()V

    goto :goto_402

    .line 1059
    :cond_418
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->spawned:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1060
    const/4 v0, 0x0

    iput-boolean v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->setupDone:Z

    const/4 v0, 0x0

    iput v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->zoneMs:I

    const/4 v0, 0x0

    iput-object v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->target:Lfr/testudo/spacecorsair/business/Element;

    goto/16 :goto_11

    .line 1063
    :cond_428
    const-string v0, "KILL_ENEMY_TYPE"

    iget-object v1, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->obj:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_45d

    .line 1064
    iget v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->progress:I

    iget v1, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->goal:I

    if-lt v0, v1, :cond_43d

    invoke-direct {p0}, Lfr/testudo/spacecorsair/mod/ModFaction;->complete()V

    goto/16 :goto_11

    .line 1066
    :cond_43d
    invoke-direct {p0}, Lfr/testudo/spacecorsair/mod/ModFaction;->liveFoes()I

    move-result v0

    .line 1067
    const/4 v1, 0x2

    if-ge v0, v1, :cond_11

    iget v1, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->progress:I

    add-int/2addr v1, v0

    iget v2, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->goal:I

    if-ge v1, v2, :cond_11

    const/4 v1, 0x2

    iget v2, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->goal:I

    iget v3, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->progress:I

    sub-int/2addr v2, v3

    sub-int v0, v2, v0

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v6, v1}, Lfr/testudo/spacecorsair/mod/ModFaction;->reinforce(ILfr/testudo/spacecorsair/business/Element;Z)V

    goto/16 :goto_11

    .line 1068
    :cond_45d
    const-string v0, "ESCORT"

    iget-object v1, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->obj:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_574

    .line 1069
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->target:Lfr/testudo/spacecorsair/business/Element;

    if-eqz v0, :cond_11

    .line 1070
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->target:Lfr/testudo/spacecorsair/business/Element;

    iget-boolean v0, v0, Lfr/testudo/spacecorsair/business/Element;->removed:Z

    if-nez v0, :cond_47a

    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->target:Lfr/testudo/spacecorsair/business/Element;

    iget v0, v0, Lfr/testudo/spacecorsair/business/Element;->life:F

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_494

    .line 1071
    :cond_47a
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->target:Lfr/testudo/spacecorsair/business/Element;

    iget-object v0, v0, Lfr/testudo/spacecorsair/business/Element;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget-object v1, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->gate:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/engine/Vector2;->distance(Lfr/testudo/spacecorsair/engine/Vector2;)F

    move-result v0

    const/high16 v1, 0x442f0000    # 700.0f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_48f

    invoke-direct {p0}, Lfr/testudo/spacecorsair/mod/ModFaction;->escortArrived()V

    goto/16 :goto_11

    :cond_48f
    invoke-direct {p0}, Lfr/testudo/spacecorsair/mod/ModFaction;->fail()V

    goto/16 :goto_11

    .line 1074
    :cond_494
    iget-boolean v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->courierMoving:Z

    if-nez v0, :cond_4ae

    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->target:Lfr/testudo/spacecorsair/business/Element;

    iget-object v0, v0, Lfr/testudo/spacecorsair/business/Element;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget-object v1, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->lastCourier:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/engine/Vector2;->distance(Lfr/testudo/spacecorsair/engine/Vector2;)F

    move-result v0

    const/high16 v1, 0x42700000    # 60.0f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_4ae

    const/4 v0, 0x1

    iput-boolean v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->courierMoving:Z

    invoke-direct {p0}, Lfr/testudo/spacecorsair/mod/ModFaction;->save()V

    .line 1075
    :cond_4ae
    const/high16 v0, 0x3f800000    # 1.0f

    iget-object v1, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->target:Lfr/testudo/spacecorsair/business/Element;

    iget-object v1, v1, Lfr/testudo/spacecorsair/business/Element;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget-object v2, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->gate:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v1, v2}, Lfr/testudo/spacecorsair/engine/Vector2;->distance(Lfr/testudo/spacecorsair/engine/Vector2;)F

    move-result v1

    iget v2, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->startDist:F

    div-float/2addr v1, v2

    sub-float/2addr v0, v1

    .line 1076
    iget-boolean v1, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->ambushed:Z

    if-nez v1, :cond_4e4

    const v1, 0x3e99999a    # 0.3f

    cmpl-float v1, v0, v1

    if-lez v1, :cond_4e4

    const/4 v1, 0x1

    iput-boolean v1, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->ambushed:Z

    const/4 v1, 0x3

    iget-object v2, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->target:Lfr/testudo/spacecorsair/business/Element;

    const/4 v3, 0x0

    invoke-direct {p0, v1, v2, v3}, Lfr/testudo/spacecorsair/mod/ModFaction;->reinforce(ILfr/testudo/spacecorsair/business/Element;Z)V

    const-string v1, "AMBUSH!"

    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/high16 v2, 0x3f800000    # 1.0f

    const v3, 0x3ecccccd    # 0.4f

    const v4, 0x3e99999a    # 0.3f

    invoke-static {v6, v1, v2, v3, v4}, Lfr/testudo/spacecorsair/mod/Mod;->floatText(Lfr/testudo/spacecorsair/business/Element;Ljava/lang/String;FFF)V

    .line 1077
    :cond_4e4
    iget-boolean v1, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->ambushed2:Z

    if-nez v1, :cond_50a

    const v1, 0x3f266666    # 0.65f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_50a

    const/4 v0, 0x1

    iput-boolean v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->ambushed2:Z

    const/4 v0, 0x3

    iget-object v1, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->target:Lfr/testudo/spacecorsair/business/Element;

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lfr/testudo/spacecorsair/mod/ModFaction;->reinforce(ILfr/testudo/spacecorsair/business/Element;Z)V

    const-string v0, "AMBUSH!"

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    const v2, 0x3ecccccd    # 0.4f

    const v3, 0x3e99999a    # 0.3f

    invoke-static {v6, v0, v1, v2, v3}, Lfr/testudo/spacecorsair/mod/Mod;->floatText(Lfr/testudo/spacecorsair/business/Element;Ljava/lang/String;FFF)V

    .line 1078
    :cond_50a
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->target:Lfr/testudo/spacecorsair/business/Element;

    iget-object v0, v0, Lfr/testudo/spacecorsair/business/Element;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget-object v1, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->gate:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/engine/Vector2;->distance(Lfr/testudo/spacecorsair/engine/Vector2;)F

    move-result v0

    const/high16 v1, 0x43e10000    # 450.0f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_524

    .line 1079
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->target:Lfr/testudo/spacecorsair/business/Element;

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/business/Element;->remove()V

    .line 1080
    invoke-direct {p0}, Lfr/testudo/spacecorsair/mod/ModFaction;->escortArrived()V

    goto/16 :goto_11

    .line 1083
    :cond_524
    iget v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->courierCheck:I

    int-to-long v0, v0

    sub-long/2addr v0, p1

    long-to-int v0, v0

    iput v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->courierCheck:I

    .line 1084
    iget v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->courierCheck:I

    if-gtz v0, :cond_11

    .line 1086
    const/16 v0, 0x2710

    iput v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->courierCheck:I

    .line 1087
    iget-boolean v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->courierMoving:Z

    if-eqz v0, :cond_566

    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->target:Lfr/testudo/spacecorsair/business/Element;

    iget-object v0, v0, Lfr/testudo/spacecorsair/business/Element;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget-object v1, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->lastCourier:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/engine/Vector2;->distance(Lfr/testudo/spacecorsair/engine/Vector2;)F

    move-result v0

    const/high16 v1, 0x42700000    # 60.0f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_566

    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->target:Lfr/testudo/spacecorsair/business/Element;

    instance-of v0, v0, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;

    if-eqz v0, :cond_566

    .line 1088
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->target:Lfr/testudo/spacecorsair/business/Element;

    check-cast v0, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;

    const/4 v1, 0x1

    new-array v1, v1, [Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;

    const/4 v2, 0x0

    iget-object v3, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->gate:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v3, v3, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    iget-object v4, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->gate:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v4, v4, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    invoke-static {v3, v4}, Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;->newMoove(FF)Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->setActivity([Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;)V

    .line 1090
    :cond_566
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->lastCourier:Lfr/testudo/spacecorsair/engine/Vector2;

    iget-object v1, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->target:Lfr/testudo/spacecorsair/business/Element;

    iget-object v1, v1, Lfr/testudo/spacecorsair/business/Element;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/engine/Vector2;->setSameAs(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 1091
    invoke-direct {p0}, Lfr/testudo/spacecorsair/mod/ModFaction;->save()V

    goto/16 :goto_11

    .line 1093
    :cond_574
    const-string v0, "SCAN_CIVIL"

    iget-object v1, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->obj:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_669

    .line 1094
    const/4 v0, 0x0

    move v1, v0

    :goto_580
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->civs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_65e

    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->scanMs:[I

    array-length v0, v0

    if-ge v1, v0, :cond_65e

    .line 1095
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->civs:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;

    .line 1096
    iget-object v2, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->scanMs:[I

    aget v2, v2, v1

    if-gez v2, :cond_59f

    .line 1094
    :cond_59b
    :goto_59b
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_580

    .line 1097
    :cond_59f
    if-eqz v0, :cond_5ac

    iget-boolean v2, v0, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->removed:Z

    if-nez v2, :cond_5ac

    iget v2, v0, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->life:F

    const/4 v3, 0x0

    cmpg-float v2, v2, v3

    if-gtz v2, :cond_5d2

    .line 1099
    :cond_5ac
    iget-object v0, v6, Lfr/testudo/spacecorsair/business/player/PlayerShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModPlace;->ambushPoint(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    move-result-object v0

    iget-object v2, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->center:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-direct {p0, v0, v2}, Lfr/testudo/spacecorsair/mod/ModFaction;->scanTarget(Lfr/testudo/spacecorsair/engine/Vector2;Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/business/world/civil/CivilShip;

    move-result-object v0

    .line 1100
    if-eqz v0, :cond_5cc

    .line 1101
    iget-object v2, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->civs:Ljava/util/List;

    iget-object v3, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->civs:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-interface {v2, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1102
    iget-object v2, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->civs:Ljava/util/List;

    invoke-interface {v2, v1, v0}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1104
    :cond_5cc
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->scanMs:[I

    const/4 v2, 0x0

    aput v2, v0, v1

    goto :goto_59b

    .line 1107
    :cond_5d2
    iget-object v2, v0, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget-object v3, v6, Lfr/testudo/spacecorsair/business/player/PlayerShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v2, v3}, Lfr/testudo/spacecorsair/engine/Vector2;->distance(Lfr/testudo/spacecorsair/engine/Vector2;)F

    move-result v2

    const/high16 v3, 0x43e10000    # 450.0f

    cmpg-float v2, v2, v3

    if-gez v2, :cond_59b

    .line 1108
    iget-object v2, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->scanMs:[I

    aget v3, v2, v1

    int-to-long v4, v3

    add-long/2addr v4, p1

    long-to-int v3, v4

    aput v3, v2, v1

    .line 1109
    iget-object v2, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->scanMs:[I

    aget v2, v2, v1

    const/16 v3, 0x5dc

    if-le v2, v3, :cond_59b

    .line 1110
    iget-object v2, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->scanMs:[I

    const/4 v3, -0x1

    aput v3, v2, v1

    .line 1111
    iget v2, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->progress:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->progress:I

    .line 1112
    const/4 v2, 0x0

    iput-boolean v2, v0, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->isMissionObjective:Z

    .line 1113
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SCANNED"

    invoke-static {v3}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->progress:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->goal:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/high16 v3, 0x3f000000    # 0.5f

    const v4, 0x3f666666    # 0.9f

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-static {v0, v2, v3, v4, v5}, Lfr/testudo/spacecorsair/mod/Mod;->floatText(Lfr/testudo/spacecorsair/business/Element;Ljava/lang/String;FFF)V

    .line 1114
    iget v2, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->progress:I

    iget v3, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->goal:I

    add-int/lit8 v3, v3, -0x1

    if-ne v2, v3, :cond_659

    iget-boolean v2, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->ambushed:Z

    if-nez v2, :cond_659

    .line 1115
    const/4 v2, 0x1

    iput-boolean v2, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->ambushed:Z

    .line 1116
    const-string v2, "FALSE TRANSPONDER: RAIDERS!"

    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/high16 v3, 0x3f800000    # 1.0f

    const v4, 0x3ecccccd    # 0.4f

    const v5, 0x3e99999a    # 0.3f

    invoke-static {v0, v2, v3, v4, v5}, Lfr/testudo/spacecorsair/mod/Mod;->floatText(Lfr/testudo/spacecorsair/business/Element;Ljava/lang/String;FFF)V

    .line 1117
    const/4 v0, 0x2

    const/4 v2, 0x0

    invoke-direct {p0, v0, v6, v2}, Lfr/testudo/spacecorsair/mod/ModFaction;->reinforce(ILfr/testudo/spacecorsair/business/Element;Z)V

    .line 1119
    :cond_659
    invoke-direct {p0}, Lfr/testudo/spacecorsair/mod/ModFaction;->save()V

    goto/16 :goto_59b

    .line 1123
    :cond_65e
    iget v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->progress:I

    iget v1, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->goal:I

    if-lt v0, v1, :cond_11

    invoke-direct {p0}, Lfr/testudo/spacecorsair/mod/ModFaction;->complete()V

    goto/16 :goto_11

    .line 1124
    :cond_669
    const-string v0, "KILL_FLAGSHIP"

    iget-object v1, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->obj:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 1125
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->target:Lfr/testudo/spacecorsair/business/Element;

    if-eqz v0, :cond_11

    .line 1126
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->target:Lfr/testudo/spacecorsair/business/Element;

    iget-boolean v0, v0, Lfr/testudo/spacecorsair/business/Element;->removed:Z

    if-eqz v0, :cond_696

    .line 1127
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->target:Lfr/testudo/spacecorsair/business/Element;

    iget v0, v0, Lfr/testudo/spacecorsair/business/Element;->life:F

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_68b

    invoke-direct {p0}, Lfr/testudo/spacecorsair/mod/ModFaction;->complete()V

    goto/16 :goto_11

    .line 1128
    :cond_68b
    const/4 v0, 0x0

    iput-boolean v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->setupDone:Z

    const/4 v0, 0x0

    iput v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->zoneMs:I

    const/4 v0, 0x0

    iput-object v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->target:Lfr/testudo/spacecorsair/business/Element;

    goto/16 :goto_11

    .line 1131
    :cond_696
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->target:Lfr/testudo/spacecorsair/business/Element;

    iget-object v0, v0, Lfr/testudo/spacecorsair/business/Element;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget-object v1, v6, Lfr/testudo/spacecorsair/business/player/PlayerShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/engine/Vector2;->distance(Lfr/testudo/spacecorsair/engine/Vector2;)F

    move-result v0

    const v1, 0x458ca000    # 4500.0f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_11

    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->target:Lfr/testudo/spacecorsair/business/Element;

    instance-of v0, v0, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->target:Lfr/testudo/spacecorsair/business/Element;

    check-cast v0, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;

    iget-object v0, v0, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->chasseTarget:Lfr/testudo/spacecorsair/business/Element;

    if-nez v0, :cond_11

    .line 1132
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->target:Lfr/testudo/spacecorsair/business/Element;

    check-cast v0, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->attackPlayerIfItNotTheCaseAlready()V

    .line 1133
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->soundManager:Lfr/testudo/spacecorsair/engine/SoundManager;

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/engine/SoundManager;->playDanger()V

    goto/16 :goto_11

    :cond_6c5
    move v0, v1

    goto/16 :goto_1f6
.end method

.method public onElementDestroyed(Lfr/testudo/spacecorsair/business/Element;)V
    .registers 2

    .prologue
    .line 1328
    return-void
.end method

.method public onElementDestroyedByPlayer(Lfr/testudo/spacecorsair/business/Element;)V
    .registers 8

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1333
    const-string v0, "KILL_ENEMY_TYPE"

    iget-object v3, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->obj:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6a

    const-string v3, "killtype"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v4, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->idx:I

    invoke-static {v4}, Lfr/testudo/spacecorsair/mod/ModFaction;->id(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " kill "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-nez p1, :cond_ca

    const-string v0, "null"

    :goto_27
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " counted="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-eqz p1, :cond_d4

    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->spawned:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d4

    move v0, v1

    :goto_3c
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " progress="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v4, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->progress:I

    if-eqz p1, :cond_d7

    iget-object v5, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->spawned:Ljava/util/ArrayList;

    invoke-virtual {v5, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_d7

    :goto_52
    add-int/2addr v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->goal:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lfr/testudo/spacecorsair/mod/ModDev;->ev(Ljava/lang/String;Ljava/lang/String;)V

    .line 1334
    :cond_6a
    const-string v0, "KILL_ENEMY_TYPE"

    iget-object v1, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->obj:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c9

    if-eqz p1, :cond_c9

    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->spawned:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c9

    .line 1335
    iget v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->progress:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->progress:I

    .line 1336
    invoke-direct {p0}, Lfr/testudo/spacecorsair/mod/ModFaction;->save()V

    .line 1337
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->playerShip:Lfr/testudo/spacecorsair/business/player/PlayerShip;

    .line 1338
    if-eqz v0, :cond_c9

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TARGETS"

    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->progress:I

    iget v3, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->goal:I

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->goal:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/high16 v2, 0x3f800000    # 1.0f

    const v3, 0x3f4ccccd    # 0.8f

    const v4, 0x3ecccccd    # 0.4f

    invoke-static {v0, v1, v2, v3, v4}, Lfr/testudo/spacecorsair/mod/Mod;->floatText(Lfr/testudo/spacecorsair/business/Element;Ljava/lang/String;FFF)V

    .line 1340
    :cond_c9
    return-void

    .line 1333
    :cond_ca
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_27

    :cond_d4
    move v0, v2

    goto/16 :goto_3c

    :cond_d7
    move v1, v2

    goto/16 :goto_52
.end method

.method public onPlayerDeath()V
    .registers 5

    .prologue
    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 1356
    invoke-direct {p0}, Lfr/testudo/spacecorsair/mod/ModFaction;->cleanup()V

    .line 1358
    iget-boolean v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->completed:Z

    if-nez v0, :cond_4f

    const-string v0, "DELIVERY"

    iget-object v2, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->obj:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1d

    const-string v0, "GATHER_AND_SELL"

    iget-object v2, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->obj:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4f

    :cond_1d
    iget-boolean v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->planned:Z

    if-eqz v0, :cond_4f

    iget v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->phase:I

    if-eq v0, v3, :cond_29

    iget v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->progress:I

    if-lez v0, :cond_4f

    .line 1359
    :cond_29
    const-string v0, "DELIVERY"

    iget-object v2, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->obj:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_50

    .line 1360
    new-array v0, v3, [Z

    iput-object v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->taken:[Z

    .line 1361
    const/4 v0, 0x2

    new-array v0, v0, [F

    iget-object v2, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->center:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v2, v2, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    aput v2, v0, v1

    iget-object v2, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->center:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v2, v2, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    aput v2, v0, v3

    iput-object v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->markers:[F

    .line 1367
    :cond_48
    :goto_48
    iput v1, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->progress:I

    .line 1368
    iput v1, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->phase:I

    .line 1369
    invoke-direct {p0}, Lfr/testudo/spacecorsair/mod/ModFaction;->save()V

    .line 1371
    :cond_4f
    return-void

    .line 1362
    :cond_50
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->markers:[F

    if-eqz v0, :cond_58

    iget v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->phase:I

    if-ne v0, v3, :cond_62

    .line 1363
    :cond_58
    const/4 v0, 0x6

    iget-object v2, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->center:Lfr/testudo/spacecorsair/engine/Vector2;

    const v3, 0x45098000    # 2200.0f

    invoke-direct {p0, v0, v2, v3}, Lfr/testudo/spacecorsair/mod/ModFaction;->scatter(ILfr/testudo/spacecorsair/engine/Vector2;F)V

    goto :goto_48

    :cond_62
    move v0, v1

    .line 1365
    :goto_63
    iget-object v2, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->taken:[Z

    array-length v2, v2

    if-ge v0, v2, :cond_48

    iget-object v2, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->taken:[Z

    aput-boolean v1, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_63
.end method

.method public onZoneChanged(Ljava/lang/String;Ljava/lang/String;)V
    .registers 7

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 1313
    iget-object v2, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->spawned:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 1314
    iget-object v2, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->civs:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 1315
    iput-object v3, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->outpost:Lfr/testudo/spacecorsair/business/world/civil/CivilShip;

    .line 1316
    iput-object v3, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->target:Lfr/testudo/spacecorsair/business/Element;

    .line 1317
    iput-boolean v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->setupDone:Z

    .line 1318
    iput v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->zoneMs:I

    .line 1319
    iput-boolean v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->wavesOn:Z

    .line 1320
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModPlace;->clearBoost()V

    .line 1321
    invoke-direct {p0}, Lfr/testudo/spacecorsair/mod/ModFaction;->activeSector()Lfr/testudo/spacecorsair/game/levels/LevelId;

    move-result-object v2

    .line 1322
    sget-boolean v3, Lfr/testudo/spacecorsair/mod/ModFaction;->testZone:Z

    if-nez v3, :cond_2e

    if-eqz v2, :cond_2f

    if-eqz p1, :cond_2f

    iget-object v2, v2, Lfr/testudo/spacecorsair/game/levels/LevelId;->levelName:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2f

    :cond_2e
    move v0, v1

    :cond_2f
    iput-boolean v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->inZone:Z

    .line 1323
    invoke-direct {p0, v1}, Lfr/testudo/spacecorsair/mod/ModFaction;->markGates(Z)V

    .line 1324
    return-void
.end method

.method public restoreState()V
    .registers 6

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 1471
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModFaction;->prefs()Landroid/content/SharedPreferences;

    move-result-object v3

    .line 1472
    if-eqz v3, :cond_6b

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "fm_done_"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v4, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->idx:I

    invoke-static {v4}, Lfr/testudo/spacecorsair/mod/ModFaction;->id(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_6b

    const/4 v0, 0x1

    :goto_28
    iput-boolean v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->completed:Z

    .line 1473
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->spawned:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1474
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->civs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1475
    iput-object v2, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->outpost:Lfr/testudo/spacecorsair/business/world/civil/CivilShip;

    .line 1476
    iput-object v2, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->target:Lfr/testudo/spacecorsair/business/Element;

    .line 1477
    iput-boolean v1, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->setupDone:Z

    .line 1478
    iput v1, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->zoneMs:I

    .line 1479
    if-eqz v3, :cond_6d

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lfr/testudo/spacecorsair/mod/ModFaction;->stateKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_z"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v0, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1480
    :goto_59
    if-eqz v0, :cond_67

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModFaction;->level(Ljava/lang/String;)Lfr/testudo/spacecorsair/game/levels/LevelId;

    move-result-object v1

    if-eqz v1, :cond_67

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModFaction;->level(Ljava/lang/String;)Lfr/testudo/spacecorsair/game/levels/LevelId;

    move-result-object v0

    iput-object v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->zone:Lfr/testudo/spacecorsair/game/levels/LevelId;

    .line 1481
    :cond_67
    invoke-direct {p0}, Lfr/testudo/spacecorsair/mod/ModFaction;->load()V

    .line 1482
    return-void

    :cond_6b
    move v0, v1

    .line 1472
    goto :goto_28

    :cond_6d
    move-object v0, v2

    .line 1479
    goto :goto_59
.end method

.method public saveState()V
    .registers 1

    .prologue
    .line 1486
    return-void
.end method

.method public terminate()V
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 1462
    invoke-direct {p0, v0}, Lfr/testudo/spacecorsair/mod/ModFaction;->markGates(Z)V

    .line 1463
    iput-boolean v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->completed:Z

    .line 1464
    iput-boolean v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->planned:Z

    .line 1465
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModFaction;->prefs()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1466
    if-eqz v0, :cond_55

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fm_done_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->idx:I

    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModFaction;->id(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-direct {p0}, Lfr/testudo/spacecorsair/mod/ModFaction;->stateKey()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lfr/testudo/spacecorsair/mod/ModFaction;->stateKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_z"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1467
    :cond_55
    return-void
.end method
