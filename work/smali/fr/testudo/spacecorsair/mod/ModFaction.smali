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

.field static final TITHE_CREDITS:I = 0x1e8480

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

.field private final civs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
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

    const-string v3, "Captain, the council honours your phoenix. If you would rather serve the Republic\'s forges than its front line, a tithe of 2,000,000 credits and 5 rare parts will fund the next Lance, and the first one will be yours. The tithe is taken when you are in Spartan HQ with the full amount aboard."

    aput-object v3, v1, v2

    const/16 v2, 0xc

    const-string v3, "Bring 2,000,000 credits and 5 rare parts to Spartan HQ."

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

    .line 1188
    new-instance v0, Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-direct {v0}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>()V

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModFaction;->pos:Lfr/testudo/spacecorsair/engine/Vector2;

    .line 1191
    const/4 v0, -0x1

    sput v0, Lfr/testudo/spacecorsair/mod/ModFaction;->holdSec:I

    const/4 v0, -0x1

    sput v0, Lfr/testudo/spacecorsair/mod/ModFaction;->arrowM:I

    return-void
.end method

.method private constructor <init>(I)V
    .registers 3

    .prologue
    .line 409
    invoke-direct {p0}, Lfr/testudo/spacecorsair/business/mission/MissionListener;-><init>()V

    .line 384
    new-instance v0, Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-direct {v0}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>()V

    iput-object v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->ref:Lfr/testudo/spacecorsair/engine/Vector2;

    .line 385
    new-instance v0, Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-direct {v0}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>()V

    iput-object v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->entry:Lfr/testudo/spacecorsair/engine/Vector2;

    .line 386
    new-instance v0, Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-direct {v0}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>()V

    iput-object v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->center:Lfr/testudo/spacecorsair/engine/Vector2;

    .line 387
    new-instance v0, Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-direct {v0}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>()V

    iput-object v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->endAt:Lfr/testudo/spacecorsair/engine/Vector2;

    .line 389
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->spawned:Ljava/util/ArrayList;

    .line 390
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->civs:Ljava/util/ArrayList;

    .line 405
    new-instance v0, Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-direct {v0}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>()V

    iput-object v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->gate:Lfr/testudo/spacecorsair/engine/Vector2;

    .line 406
    new-instance v0, Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-direct {v0}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>()V

    iput-object v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->lastCourier:Lfr/testudo/spacecorsair/engine/Vector2;

    .line 1420
    const/4 v0, -0x1

    iput v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->instrBranch:I

    .line 410
    iput p1, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->idx:I

    .line 411
    invoke-static {p1}, Lfr/testudo/spacecorsair/mod/ModFaction;->objective(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->obj:Ljava/lang/String;

    .line 412
    const/4 v0, 0x4

    invoke-static {p1, v0}, Lfr/testudo/spacecorsair/mod/ModFaction;->str(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModFaction;->level(Ljava/lang/String;)Lfr/testudo/spacecorsair/game/levels/LevelId;

    move-result-object v0

    iput-object v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->zone:Lfr/testudo/spacecorsair/game/levels/LevelId;

    .line 413
    invoke-static {p1}, Lfr/testudo/spacecorsair/mod/ModFaction;->key(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModFaction;->faction(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->fi:I

    .line 414
    return-void
.end method

.method private static active()Lfr/testudo/spacecorsair/mod/ModFaction;
    .registers 2

    .prologue
    .line 430
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->currentMission:Lfr/testudo/spacecorsair/business/mission/Mission;

    .line 431
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
    .line 365
    iget v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->phase:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_c

    .line 366
    invoke-direct {p0}, Lfr/testudo/spacecorsair/mod/ModFaction;->secondSector()Lfr/testudo/spacecorsair/game/levels/LevelId;

    move-result-object v0

    .line 367
    if-eqz v0, :cond_c

    .line 369
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
    .line 252
    if-eqz p0, :cond_4

    if-nez p1, :cond_5

    .line 312
    :cond_4
    :goto_4
    return-void

    .line 253
    :cond_5
    :try_start_5
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModFaction;->all()[Lfr/testudo/spacecorsair/business/mission/Mission;

    move-result-object v5

    .line 254
    sget-object v2, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v6, v2, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->currentMission:Lfr/testudo/spacecorsair/business/mission/Mission;

    .line 255
    sget-object v2, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v2, v2, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v2, v2, Lfr/testudo/spacecorsair/game/Game;->playerInfo:Lfr/testudo/spacecorsair/business/player/PlayerInfo;

    iget v7, v2, Lfr/testudo/spacecorsair/business/player/PlayerInfo;->level:I

    .line 256
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/32 v8, 0x5265c00

    div-long v8, v2, v8

    .line 257
    sget-boolean v2, Lfr/testudo/spacecorsair/mod/ModTestMode;->on:Z

    if-eqz v2, :cond_ae

    .line 259
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v4

    .line 260
    const/4 v2, 0x0

    move v3, v2

    :goto_28
    array-length v2, v5

    if-ge v3, v2, :cond_71

    .line 261
    sget-object v2, Lfr/testudo/spacecorsair/mod/ModCapitals;->FACTIONS:[Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;

    invoke-static {v3}, Lfr/testudo/spacecorsair/mod/ModFaction;->key(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lfr/testudo/spacecorsair/mod/ModFaction;->faction(Ljava/lang/String;)I

    move-result v6

    aget-object v2, v2, v6

    .line 262
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

    .line 263
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

    .line 260
    :cond_61
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_28

    .line 262
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

    .line 265
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

    .line 309
    :catch_ab
    move-exception v2

    goto/16 :goto_4

    .line 268
    :cond_ae
    const/4 v2, 0x0

    move v4, v2

    :goto_b0
    sget-object v2, Lfr/testudo/spacecorsair/mod/ModCapitals;->FACTIONS:[Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;

    array-length v2, v2

    if-ge v4, v2, :cond_4

    .line 269
    sget-object v2, Lfr/testudo/spacecorsair/mod/ModCapitals;->FACTIONS:[Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;

    aget-object v2, v2, v4

    iget-object v2, v2, Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;->hq:Lfr/testudo/spacecorsair/game/levels/LevelId;

    move-object/from16 v0, p0

    if-eq v2, v0, :cond_c9

    sget-boolean v2, Lfr/testudo/spacecorsair/mod/ModFaction;->testHail:Z

    if-eqz v2, :cond_c5

    if-eqz v4, :cond_c9

    .line 268
    :cond_c5
    :goto_c5
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    goto :goto_b0

    .line 270
    :cond_c9
    sget-object v2, Lfr/testudo/spacecorsair/mod/ModCapitals;->FACTIONS:[Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;

    aget-object v2, v2, v4

    iget-object v10, v2, Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;->key:Ljava/lang/String;

    .line 271
    invoke-static {v10}, Lfr/testudo/spacecorsair/mod/ModRep;->rank(Ljava/lang/String;)I

    move-result v11

    .line 272
    if-lez v11, :cond_c5

    .line 273
    const/4 v2, 0x2

    if-lt v11, v2, :cond_11d

    .line 274
    const/4 v2, 0x0

    :goto_d9
    array-length v3, v5

    if-ge v2, v3, :cond_11d

    .line 275
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

    .line 274
    :cond_fc
    add-int/lit8 v2, v2, 0x1

    goto :goto_d9

    .line 276
    :cond_ff
    sget-object v3, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v3, v3, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->missionRepository:Lfr/testudo/spacecorsair/business/mission/MissionRepository;

    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModFaction;->id(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v3, v12}, Lfr/testudo/spacecorsair/business/mission/MissionRepository;->hasDoneMission(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_fc

    .line 277
    aget-object v3, v5, v2

    if-eq v6, v3, :cond_147

    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModFaction;->minLevel(I)I

    move-result v3

    add-int/lit8 v3, v3, -0x2

    if-ge v7, v3, :cond_147

    sget-boolean v3, Lfr/testudo/spacecorsair/mod/ModFaction;->testHail:Z

    if-nez v3, :cond_147

    .line 282
    :cond_11d
    :goto_11d
    const/4 v2, 0x2

    if-lt v11, v2, :cond_173

    sget-object v2, Lfr/testudo/spacecorsair/game/levels/LevelId;->THE_HIVE:Lfr/testudo/spacecorsair/game/levels/LevelId;

    move-object/from16 v0, p0

    if-ne v0, v2, :cond_173

    .line 284
    const/4 v2, 0x0

    :goto_127
    array-length v3, v5

    if-ge v2, v3, :cond_173

    .line 285
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

    .line 284
    :cond_144
    add-int/lit8 v2, v2, 0x1

    goto :goto_127

    .line 278
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

    .line 286
    :cond_159
    sget-object v3, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v3, v3, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->missionRepository:Lfr/testudo/spacecorsair/business/mission/MissionRepository;

    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModFaction;->id(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v3, v12}, Lfr/testudo/spacecorsair/business/mission/MissionRepository;->hasDoneMission(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_144

    .line 287
    aget-object v3, v5, v2

    if-eq v6, v3, :cond_1a8

    const/16 v3, 0x20

    if-ge v7, v3, :cond_1a8

    sget-boolean v3, Lfr/testudo/spacecorsair/mod/ModFaction;->testHail:Z

    if-nez v3, :cond_1a8

    .line 293
    :cond_173
    :goto_173
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 294
    const/4 v2, 0x0

    move v3, v2

    :goto_17a
    array-length v2, v5

    if-ge v3, v2, :cond_1bc

    .line 295
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

    .line 294
    :cond_1a4
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_17a

    .line 288
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

    .line 295
    :cond_1ba
    const/4 v2, 0x0

    goto :goto_19b

    .line 297
    :cond_1bc
    const/4 v2, 0x0

    move v3, v2

    :goto_1be
    const/4 v2, 0x2

    if-ge v3, v2, :cond_201

    invoke-virtual {v12}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_201

    .line 298
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

    .line 299
    aget-object v13, v5, v2

    move-object/from16 v0, p1

    invoke-interface {v0, v13}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_1fd

    aget-object v2, v5, v2

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 297
    :cond_1fd
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_1be

    .line 301
    :cond_201
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLance;->offerOpen()Z

    move-result v2

    if-eqz v2, :cond_22d

    const-string v2, "spartan"

    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_22d

    .line 302
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

    .line 304
    :cond_22d
    const/4 v2, 0x3

    if-lt v11, v2, :cond_265

    invoke-static {v10}, Lfr/testudo/spacecorsair/mod/ModV35;->huntLeft(Ljava/lang/String;)J

    move-result-wide v2

    const-wide/16 v12, 0x0

    cmp-long v2, v2, v12

    if-nez v2, :cond_265

    .line 305
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

    .line 307
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

    .line 226
    const-class v11, Lfr/testudo/spacecorsair/mod/ModFaction;

    monitor-enter v11

    :try_start_4
    sget-object v1, Lfr/testudo/spacecorsair/mod/ModFaction;->missions:[Lfr/testudo/spacecorsair/business/mission/Mission;

    if-nez v1, :cond_cf

    .line 227
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModFaction;->count()I

    move-result v1

    new-array v12, v1, [Lfr/testudo/spacecorsair/business/mission/Mission;

    move v10, v0

    .line 228
    :goto_f
    array-length v0, v12

    if-ge v10, v0, :cond_cd

    .line 229
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 230
    const/16 v0, 0x10

    invoke-static {v10, v0}, Lfr/testudo/spacecorsair/mod/ModFaction;->str(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I
    :try_end_20
    .catchall {:try_start_4 .. :try_end_20} :catchall_d3

    move-result v0

    if-lez v0, :cond_34

    .line 232
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

    .line 238
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

    .line 239
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

    .line 240
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

    .line 241
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

    .line 242
    aput-object v0, v12, v10

    .line 228
    add-int/lit8 v0, v10, 0x1

    move v10, v0

    goto/16 :goto_f

    .line 239
    :cond_b7
    invoke-static {v10}, Lfr/testudo/spacecorsair/mod/ModFaction;->minLevel(I)I

    move-result v8

    mul-int/lit16 v8, v8, 0x384

    goto :goto_57

    .line 240
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

    .line 241
    :cond_cb
    const/4 v1, 0x0

    goto :goto_ae

    .line 244
    :cond_cd
    sput-object v12, Lfr/testudo/spacecorsair/mod/ModFaction;->missions:[Lfr/testudo/spacecorsair/business/mission/Mission;

    .line 246
    :cond_cf
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModFaction;->missions:[Lfr/testudo/spacecorsair/business/mission/Mission;
    :try_end_d1
    .catchall {:try_start_34 .. :try_end_d1} :catchall_d3

    monitor-exit v11

    return-object v0

    .line 226
    :catchall_d3
    move-exception v0

    monitor-exit v11

    throw v0

    .line 233
    :catch_d6
    move-exception v0

    goto/16 :goto_34
.end method

.method static amends(I)Z
    .registers 3

    .prologue
    .line 170
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
    .line 713
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v0

    const-wide v2, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v0, v2

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    mul-double/2addr v0, v2

    .line 714
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v2

    double-to-float v2, v2

    sub-float v3, p2, p1

    mul-float/2addr v2, v3

    add-float/2addr v2, p1

    .line 715
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

    .line 316
    if-eqz p0, :cond_b

    const-string v0, "FACTION_"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_d

    :cond_b
    move-object v0, v1

    .line 322
    :cond_c
    :goto_c
    return-object v0

    .line 318
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

    .line 319
    :catch_24
    move-exception v0

    :cond_25
    move-object v0, v1

    .line 322
    goto :goto_c
.end method

.method private civil(Lfr/testudo/spacecorsair/engine/Vector2;Z)Lfr/testudo/spacecorsair/business/world/civil/CivilShip;
    .registers 5

    .prologue
    .line 719
    const/4 v0, 0x1

    iget v1, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->idx:I

    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModFaction;->minLevel(I)I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 720
    if-eqz p2, :cond_17

    invoke-static {v0}, Lfr/testudo/spacecorsair/business/world/civil/CivilFactory;->newTrasnporteur(I)Lfr/testudo/spacecorsair/business/world/civil/TransportCivilShip;

    move-result-object v0

    .line 721
    :goto_13
    if-nez v0, :cond_1c

    const/4 v0, 0x0

    .line 725
    :goto_16
    return-object v0

    .line 720
    :cond_17
    invoke-static {v0, v0}, Lfr/testudo/spacecorsair/business/world/civil/CivilFactory;->newRandomCivil(II)Lfr/testudo/spacecorsair/business/world/civil/CivilShip;

    move-result-object v0

    goto :goto_13

    .line 722
    :cond_1c
    iget-object v1, v0, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v1, p1}, Lfr/testudo/spacecorsair/engine/Vector2;->setSameAs(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 723
    sget-object v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v1, v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v1, v1, Lfr/testudo/spacecorsair/game/Game;->currentLevel:Lfr/testudo/spacecorsair/game/levels/Level;

    iget-object v1, v1, Lfr/testudo/spacecorsair/game/levels/Level;->toAdd:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 724
    iget-object v1, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->civs:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_16
.end method

.method private cleanup()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 930
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

    .line 931
    if-eqz v0, :cond_8

    iget-boolean v2, v0, Lfr/testudo/spacecorsair/business/Element;->removed:Z

    if-nez v2, :cond_8

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/business/Element;->remove()V

    goto :goto_8

    .line 933
    :cond_1e
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->civs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_24
    :goto_24
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;

    .line 934
    if-eqz v0, :cond_24

    iget-boolean v2, v0, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->removed:Z

    if-nez v2, :cond_24

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->remove()V

    goto :goto_24

    .line 936
    :cond_3a
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->target:Lfr/testudo/spacecorsair/business/Element;

    if-eqz v0, :cond_48

    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->target:Lfr/testudo/spacecorsair/business/Element;

    instance-of v0, v0, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;

    if-eqz v0, :cond_48

    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->target:Lfr/testudo/spacecorsair/business/Element;

    iput-boolean v3, v0, Lfr/testudo/spacecorsair/business/Element;->isMissionObjective:Z

    .line 937
    :cond_48
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->spawned:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 938
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->civs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 939
    iput-object v4, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->target:Lfr/testudo/spacecorsair/business/Element;

    .line 940
    iput-object v4, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->outpost:Lfr/testudo/spacecorsair/business/world/civil/CivilShip;

    .line 941
    iput-boolean v3, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->setupDone:Z

    .line 942
    iput v3, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->zoneMs:I

    .line 943
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModPlace;->clearBoost()V

    .line 944
    return-void
.end method

.method static commander(Ljava/lang/String;)I
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 184
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

    .line 185
    :goto_11
    return v0

    .line 184
    :cond_12
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_15
    move v0, v1

    .line 185
    goto :goto_11
.end method

.method private complete()V
    .registers 7

    .prologue
    const/16 v3, 0x8

    const/4 v5, 0x1

    .line 439
    iget-boolean v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->completed:Z

    if-eqz v0, :cond_8

    .line 460
    :goto_7
    return-void

    .line 440
    :cond_8
    iput-boolean v5, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->completed:Z

    .line 441
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

    .line 442
    invoke-static {v5}, Lfr/testudo/spacecorsair/mod/ModAlerts;->missionResult(Z)V

    .line 444
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

    .line 445
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

    .line 446
    :cond_5e
    iget v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->idx:I

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModFaction;->hunt(I)Z

    move-result v0

    if-eqz v0, :cond_6f

    iget v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->idx:I

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModFaction;->key(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModV35;->huntDone(Ljava/lang/String;)V

    .line 447
    :cond_6f
    iget v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->idx:I

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModFaction;->lance(I)Z

    move-result v0

    if-eqz v0, :cond_7a

    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLance;->onUnlock()V

    .line 448
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

    .line 449
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

    .line 450
    if-lez v0, :cond_f1

    .line 451
    sget-object v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v1, v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v1, v1, Lfr/testudo/spacecorsair/game/Game;->playerCurrentShipInventory:Lfr/testudo/spacecorsair/business/player/Inventory;

    invoke-virtual {v1, v0}, Lfr/testudo/spacecorsair/business/player/Inventory;->addCredit(I)V

    .line 452
    sget-object v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v1, v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->playerShip:Lfr/testudo/spacecorsair/business/player/PlayerShip;

    .line 453
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

    .line 455
    :cond_f1
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModFaction;->prefs()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 456
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

    .line 457
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

    .line 458
    iget v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->idx:I

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModFaction;->key(I)Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->idx:I

    const/16 v2, 0xd

    invoke-static {v1, v2}, Lfr/testudo/spacecorsair/mod/ModFaction;->str(II)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x2328

    invoke-static {v0, v1, v2}, Lfr/testudo/spacecorsair/mod/ModComms;->show(Ljava/lang/String;Ljava/lang/String;I)V

    .line 459
    invoke-direct {p0, v5}, Lfr/testudo/spacecorsair/mod/ModFaction;->markGates(Z)V

    goto/16 :goto_7
.end method

.method static contract(I)Z
    .registers 2

    .prologue
    .line 168
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
    .registers 4

    .prologue
    .line 148
    const-string v0, "FIND_OBJECT"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    const-string v0, "Follow the signal and recover the marked object."

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 158
    :goto_e
    return-object v0

    .line 149
    :cond_f
    const-string v0, "GATHER_AND_SELL"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    const-string v0, "Collect the 6 marked cargo pods and dock at headquarters to sell them."

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_e

    .line 150
    :cond_1e
    const-string v0, "DEFEND_CIVILIANS"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2d

    const-string v0, "Protect the transports through 4 raider waves."

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_e

    .line 151
    :cond_2d
    const-string v0, "DEFEND_ZONE"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_59

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Hold the outpost zone for "

    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x3c

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " seconds. If the outpost is destroyed, the mission fails."

    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_e

    .line 152
    :cond_59
    const-string v0, "BOUNTY"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_68

    const-string v0, "Hunt down the marked target."

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_e

    .line 153
    :cond_68
    const-string v0, "KILL_ENEMY_TYPE"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_93

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Destroy "

    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " hostile ships."

    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_e

    .line 154
    :cond_93
    const-string v0, "DESTROY_STATION"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a3

    const-string v0, "Destroy the marked station and its guards."

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_e

    .line 155
    :cond_a3
    const-string v0, "ESCORT"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b3

    const-string v0, "Escort the ship to its jump point."

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_e

    .line 156
    :cond_b3
    const-string v0, "SCAN_CIVIL"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_de

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Scan "

    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " civilian ships."

    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_e

    .line 157
    :cond_de
    const-string v0, "RESCUE"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_109

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Recover the "

    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " stranded crews."

    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_e

    .line 158
    :cond_109
    const-string v0, ""

    goto/16 :goto_e
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
    .line 222
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
    .registers 12

    .prologue
    .line 1149
    iget-boolean v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->completed:Z

    if-nez v0, :cond_6

    if-nez p1, :cond_7

    .line 1170
    :cond_6
    :goto_6
    return-void

    .line 1150
    :cond_7
    iget v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->donateMs:I

    int-to-long v0, v0

    sub-long/2addr v0, p2

    long-to-int v0, v0

    iput v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->donateMs:I

    .line 1151
    iget v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->donateMs:I

    if-gtz v0, :cond_6

    .line 1152
    const/16 v0, 0x3e8

    iput v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->donateMs:I

    .line 1153
    sget-object v0, Lfr/testudo/spacecorsair/game/levels/LevelId;->SPARTAN_HQ:Lfr/testudo/spacecorsair/game/levels/LevelId;

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModFaction;->sectorIs(Lfr/testudo/spacecorsair/game/levels/LevelId;)Z

    move-result v0

    if-nez v0, :cond_22

    const/4 v0, 0x0

    iput-boolean v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->donateTold:Z

    goto :goto_6

    .line 1154
    :cond_22
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/Game;->playerCurrentShipInventory:Lfr/testudo/spacecorsair/business/player/Inventory;

    .line 1155
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModV35;->parts()I

    move-result v1

    .line 1156
    invoke-virtual {v0}, Lfr/testudo/spacecorsair/business/player/Inventory;->getCredit()J

    move-result-wide v2

    const-wide/32 v4, 0x1e8480

    cmp-long v2, v2, v4

    if-ltz v2, :cond_60

    const/4 v2, 0x5

    if-lt v1, v2, :cond_60

    .line 1157
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModFaction;->prefs()Landroid/content/SharedPreferences;

    move-result-object v2

    .line 1158
    if-eqz v2, :cond_6

    .line 1159
    const v3, 0x1e8480

    invoke-virtual {v0, v3}, Lfr/testudo/spacecorsair/business/player/Inventory;->removeCredit(I)V

    .line 1160
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v2, "v35_parts"

    add-int/lit8 v1, v1, -0x5

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1161
    const-string v0, "lance"

    const-string v1, "tithe paid 2000000 cr + 5 parts"

    invoke-static {v0, v1}, Lfr/testudo/spacecorsair/mod/ModDev;->ev(Ljava/lang/String;Ljava/lang/String;)V

    .line 1162
    invoke-direct {p0}, Lfr/testudo/spacecorsair/mod/ModFaction;->complete()V

    goto :goto_6

    .line 1165
    :cond_60
    iget-boolean v2, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->donateTold:Z

    if-nez v2, :cond_6

    .line 1166
    const/4 v2, 0x1

    iput-boolean v2, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->donateTold:Z

    .line 1167
    iget v2, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->idx:I

    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModFaction;->key(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "The tithe is 2,000,000 credits and 5 rare parts. You carry "

    invoke-static {v4}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-wide/32 v4, 0x7fffffff

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/business/player/Inventory;->getCredit()J

    move-result-wide v6

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    long-to-int v0, v4

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModFaction;->credits(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " credits and "

    .line 1168
    invoke-static {v3}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " rare parts."

    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x2328

    .line 1167
    invoke-static {v2, v0, v1}, Lfr/testudo/spacecorsair/mod/ModComms;->show(Ljava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_6
.end method

.method static draw(Lfr/testudo/spacecorsair/business/player/PlayerShip;)V
    .registers 24

    .prologue
    .line 1194
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModFaction;->active()Lfr/testudo/spacecorsair/mod/ModFaction;

    move-result-object v18

    .line 1195
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

    .line 1278
    :cond_20
    :goto_20
    return-void

    .line 1196
    :cond_21
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v20

    .line 1197
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

    .line 1198
    sget-object v2, Lfr/testudo/spacecorsair/mod/ModCapitals;->FACTIONS:[Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;

    move-object/from16 v0, v18

    iget v3, v0, Lfr/testudo/spacecorsair/mod/ModFaction;->fi:I

    aget-object v22, v2, v3

    .line 1199
    const v5, 0x7f7fffff    # Float.MAX_VALUE

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 1200
    const/4 v2, 0x0

    .line 1201
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

    .line 1202
    :cond_69
    move-object/from16 v0, p0

    iget-object v6, v0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-static {v6}, Lfr/testudo/spacecorsair/mod/ModPlace;->nearestStation(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/business/world/station/Station;

    move-result-object v6

    .line 1203
    if-eqz v6, :cond_97

    .line 1204
    iget-object v2, v6, Lfr/testudo/spacecorsair/business/world/station/Station;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    move-object/from16 v0, p0

    iget-object v3, v0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v2, v3}, Lfr/testudo/spacecorsair/engine/Vector2;->distance(Lfr/testudo/spacecorsair/engine/Vector2;)F

    move-result v5

    .line 1205
    iget-object v2, v6, Lfr/testudo/spacecorsair/business/world/station/Station;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v4, v2, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    iget-object v2, v6, Lfr/testudo/spacecorsair/business/world/station/Station;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v3, v2, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    .line 1206
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

    .line 1259
    :goto_9a
    if-eqz v11, :cond_20

    const v2, 0x7f7fffff    # Float.MAX_VALUE

    cmpl-float v2, v17, v2

    if-eqz v2, :cond_20

    const v2, 0x44898000    # 1100.0f

    cmpg-float v2, v17, v2

    if-ltz v2, :cond_20

    .line 1260
    sget-object v2, Lfr/testudo/spacecorsair/display/Fleche;->MAIN_TEXTURE:Lfr/testudo/spacecorsair/display/Texture;

    .line 1261
    if-eqz v2, :cond_20

    .line 1262
    sget-object v5, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v5, v5, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->camera:Lfr/testudo/spacecorsair/engine/Camera;

    iget v7, v5, Lfr/testudo/spacecorsair/engine/Camera;->curZDecal:F

    .line 1263
    const/high16 v5, 0x42dc0000    # 110.0f

    const v6, 0x3da3d70a    # 0.08f

    mul-float/2addr v6, v7

    add-float v12, v5, v6

    .line 1264
    invoke-static {v2, v12}, Lfr/testudo/spacecorsair/mod/ModFx;->arrow(Lfr/testudo/spacecorsair/display/Texture;F)Lfr/testudo/spacecorsair/display/Drawable;

    move-result-object v5

    .line 1265
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

    .line 1266
    move-object/from16 v0, p0

    iget-object v2, v0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->shipSpec:Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;

    if-eqz v2, :cond_4cc

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

    .line 1267
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

    .line 1268
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

    .line 1269
    move/from16 v0, v17

    float-to-int v2, v0

    .line 1270
    sget-object v3, Lfr/testudo/spacecorsair/mod/ModFaction;->arrowText:Ljava/lang/String;

    if-eqz v3, :cond_13c

    sget-object v3, Lfr/testudo/spacecorsair/mod/ModFaction;->arrowLabel:Ljava/lang/String;

    if-ne v11, v3, :cond_13c

    sget v3, Lfr/testudo/spacecorsair/mod/ModFaction;->arrowM:I

    if-eq v2, v3, :cond_15f

    .line 1271
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

    .line 1272
    sput-object v11, Lfr/testudo/spacecorsair/mod/ModFaction;->arrowLabel:Ljava/lang/String;

    .line 1273
    sput v2, Lfr/testudo/spacecorsair/mod/ModFaction;->arrowM:I

    .line 1275
    :cond_15f
    sget-object v5, Lfr/testudo/spacecorsair/mod/ModFaction;->arrowText:Ljava/lang/String;

    .line 1276
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

    .line 1277
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

    .line 1206
    :cond_1a8
    const-string v2, "SELL"

    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_97

    .line 1208
    :cond_1b0
    move-object/from16 v0, v18

    iget-object v6, v0, Lfr/testudo/spacecorsair/mod/ModFaction;->markers:[F

    if-eqz v6, :cond_2b7

    move-object/from16 v0, v18

    iget-object v6, v0, Lfr/testudo/spacecorsair/mod/ModFaction;->taken:[Z

    if-eqz v6, :cond_2b7

    .line 1210
    move-object/from16 v0, v18

    iget-object v0, v0, Lfr/testudo/spacecorsair/mod/ModFaction;->markers:[F

    move-object/from16 v20, v0

    .line 1211
    move-object/from16 v0, v18

    iget-object v0, v0, Lfr/testudo/spacecorsair/mod/ModFaction;->taken:[Z

    move-object/from16 v21, v0

    .line 1212
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

    .line 1213
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

    .line 1214
    aget-boolean v2, v21, v17

    if-eqz v2, :cond_211

    move v4, v14

    move v3, v15

    move/from16 v2, v16

    .line 1213
    :cond_205
    :goto_205
    add-int/lit8 v5, v17, 0x1

    move/from16 v17, v5

    move v14, v4

    move v15, v3

    move/from16 v16, v2

    goto :goto_1e9

    .line 1212
    :cond_20e
    const/4 v2, 0x0

    move v13, v2

    goto :goto_1e2

    .line 1215
    :cond_211
    mul-int/lit8 v2, v17, 0x2

    aget v3, v20, v2

    mul-int/lit8 v2, v17, 0x2

    add-int/lit8 v2, v2, 0x1

    aget v4, v20, v2

    .line 1216
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

    .line 1217
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

    .line 1218
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

    .line 1219
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

    .line 1220
    cmpg-float v5, v2, v16

    if-ltz v5, :cond_205

    move v4, v14

    move v3, v15

    move/from16 v2, v16

    goto/16 :goto_205

    .line 1222
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

    .line 1223
    goto/16 :goto_9a

    .line 1222
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

    .line 1223
    :cond_2b7
    const-string v6, "DEFEND_ZONE"

    move-object/from16 v0, v18

    iget-object v7, v0, Lfr/testudo/spacecorsair/mod/ModFaction;->obj:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_345

    .line 1224
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

    .line 1225
    move-object/from16 v0, v18

    iget-object v2, v0, Lfr/testudo/spacecorsair/mod/ModFaction;->center:Lfr/testudo/spacecorsair/engine/Vector2;

    move-object/from16 v0, p0

    iget-object v3, v0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v2, v3}, Lfr/testudo/spacecorsair/engine/Vector2;->distance(Lfr/testudo/spacecorsair/engine/Vector2;)F

    move-result v5

    .line 1226
    move-object/from16 v0, v18

    iget-object v2, v0, Lfr/testudo/spacecorsair/mod/ModFaction;->center:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v4, v2, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    move-object/from16 v0, v18

    iget-object v2, v0, Lfr/testudo/spacecorsair/mod/ModFaction;->center:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v3, v2, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    .line 1227
    const/4 v2, 0x0

    move-object/from16 v0, v18

    iget v6, v0, Lfr/testudo/spacecorsair/mod/ModFaction;->goal:I

    move-object/from16 v0, v18

    iget v7, v0, Lfr/testudo/spacecorsair/mod/ModFaction;->holdMs:I

    sub-int/2addr v6, v7

    div-int/lit16 v6, v6, 0x3e8

    invoke-static {v2, v6}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 1228
    sget-object v6, Lfr/testudo/spacecorsair/mod/ModFaction;->holdLabel:Ljava/lang/String;

    if-eqz v6, :cond_321

    sget v6, Lfr/testudo/spacecorsair/mod/ModFaction;->holdSec:I

    if-eq v2, v6, :cond_33e

    .line 1229
    :cond_321
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "HOLD "

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

    .line 1230
    sput v2, Lfr/testudo/spacecorsair/mod/ModFaction;->holdSec:I

    .line 1232
    :cond_33e
    sget-object v2, Lfr/testudo/spacecorsair/mod/ModFaction;->holdLabel:Ljava/lang/String;

    move-object v11, v2

    move/from16 v17, v5

    .line 1233
    goto/16 :goto_9a

    :cond_345
    const-string v6, "DEFEND_CIVILIANS"

    move-object/from16 v0, v18

    iget-object v7, v0, Lfr/testudo/spacecorsair/mod/ModFaction;->obj:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_394

    move-object/from16 v0, v18

    iget-boolean v6, v0, Lfr/testudo/spacecorsair/mod/ModFaction;->wavesOn:Z

    if-nez v6, :cond_394

    .line 1234
    move-object/from16 v0, v18

    iget-object v2, v0, Lfr/testudo/spacecorsair/mod/ModFaction;->civs:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_35f
    :goto_35f
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_389

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;

    .line 1235
    if-eqz v2, :cond_35f

    iget-boolean v6, v2, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->removed:Z

    if-nez v6, :cond_35f

    .line 1236
    iget-object v6, v2, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    move-object/from16 v0, p0

    iget-object v8, v0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v6, v8}, Lfr/testudo/spacecorsair/engine/Vector2;->distance(Lfr/testudo/spacecorsair/engine/Vector2;)F

    move-result v6

    .line 1237
    cmpg-float v8, v6, v5

    if-gez v8, :cond_35f

    iget-object v3, v2, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v4, v3, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    iget-object v2, v2, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v3, v2, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    move v5, v6

    goto :goto_35f

    .line 1239
    :cond_389
    const-string v2, "CONVOY"

    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object v11, v2

    move/from16 v17, v5

    goto/16 :goto_9a

    .line 1240
    :cond_394
    const-string v6, "ESCORT"

    move-object/from16 v0, v18

    iget-object v7, v0, Lfr/testudo/spacecorsair/mod/ModFaction;->obj:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3fc

    move-object/from16 v0, v18

    iget-object v6, v0, Lfr/testudo/spacecorsair/mod/ModFaction;->target:Lfr/testudo/spacecorsair/business/Element;

    if-eqz v6, :cond_3fc

    move-object/from16 v0, v18

    iget-object v6, v0, Lfr/testudo/spacecorsair/mod/ModFaction;->target:Lfr/testudo/spacecorsair/business/Element;

    iget-boolean v6, v6, Lfr/testudo/spacecorsair/business/Element;->removed:Z

    if-nez v6, :cond_3fc

    .line 1241
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

    .line 1242
    move-object/from16 v0, v18

    iget-object v2, v0, Lfr/testudo/spacecorsair/mod/ModFaction;->target:Lfr/testudo/spacecorsair/business/Element;

    iget-object v2, v2, Lfr/testudo/spacecorsair/business/Element;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    move-object/from16 v0, p0

    iget-object v3, v0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v2, v3}, Lfr/testudo/spacecorsair/engine/Vector2;->distance(Lfr/testudo/spacecorsair/engine/Vector2;)F

    move-result v5

    .line 1243
    move-object/from16 v0, v18

    iget-object v2, v0, Lfr/testudo/spacecorsair/mod/ModFaction;->target:Lfr/testudo/spacecorsair/business/Element;

    iget-object v2, v2, Lfr/testudo/spacecorsair/business/Element;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v4, v2, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    move-object/from16 v0, v18

    iget-object v2, v0, Lfr/testudo/spacecorsair/mod/ModFaction;->target:Lfr/testudo/spacecorsair/business/Element;

    iget-object v2, v2, Lfr/testudo/spacecorsair/business/Element;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v3, v2, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    .line 1244
    move-object/from16 v0, v18

    iget-object v2, v0, Lfr/testudo/spacecorsair/mod/ModFaction;->target:Lfr/testudo/spacecorsair/business/Element;

    iget-object v2, v2, Lfr/testudo/spacecorsair/business/Element;->specificName:Ljava/lang/String;

    move-object v11, v2

    move/from16 v17, v5

    goto/16 :goto_9a

    .line 1245
    :cond_3fc
    move-object/from16 v0, v18

    iget-object v6, v0, Lfr/testudo/spacecorsair/mod/ModFaction;->target:Lfr/testudo/spacecorsair/business/Element;

    if-eqz v6, :cond_433

    move-object/from16 v0, v18

    iget-object v6, v0, Lfr/testudo/spacecorsair/mod/ModFaction;->target:Lfr/testudo/spacecorsair/business/Element;

    iget-boolean v6, v6, Lfr/testudo/spacecorsair/business/Element;->removed:Z

    if-nez v6, :cond_433

    .line 1246
    move-object/from16 v0, v18

    iget-object v2, v0, Lfr/testudo/spacecorsair/mod/ModFaction;->target:Lfr/testudo/spacecorsair/business/Element;

    iget-object v2, v2, Lfr/testudo/spacecorsair/business/Element;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    move-object/from16 v0, p0

    iget-object v3, v0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v2, v3}, Lfr/testudo/spacecorsair/engine/Vector2;->distance(Lfr/testudo/spacecorsair/engine/Vector2;)F

    move-result v5

    .line 1247
    move-object/from16 v0, v18

    iget-object v2, v0, Lfr/testudo/spacecorsair/mod/ModFaction;->target:Lfr/testudo/spacecorsair/business/Element;

    iget-object v2, v2, Lfr/testudo/spacecorsair/business/Element;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v4, v2, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    move-object/from16 v0, v18

    iget-object v2, v0, Lfr/testudo/spacecorsair/mod/ModFaction;->target:Lfr/testudo/spacecorsair/business/Element;

    iget-object v2, v2, Lfr/testudo/spacecorsair/business/Element;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v3, v2, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    .line 1248
    move-object/from16 v0, v18

    iget-object v2, v0, Lfr/testudo/spacecorsair/mod/ModFaction;->target:Lfr/testudo/spacecorsair/business/Element;

    iget-object v2, v2, Lfr/testudo/spacecorsair/business/Element;->specificName:Ljava/lang/String;

    move-object v11, v2

    move/from16 v17, v5

    goto/16 :goto_9a

    .line 1249
    :cond_433
    const-string v6, "SCAN_CIVIL"

    move-object/from16 v0, v18

    iget-object v7, v0, Lfr/testudo/spacecorsair/mod/ModFaction;->obj:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4d6

    .line 1250
    const/4 v2, 0x0

    move v14, v2

    move v15, v3

    move/from16 v16, v4

    move/from16 v17, v5

    :goto_446
    move-object/from16 v0, v18

    iget-object v2, v0, Lfr/testudo/spacecorsair/mod/ModFaction;->civs:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v14, v2, :cond_4c4

    move-object/from16 v0, v18

    iget-object v2, v0, Lfr/testudo/spacecorsair/mod/ModFaction;->scanMs:[I

    array-length v2, v2

    if-ge v14, v2, :cond_4c4

    .line 1251
    move-object/from16 v0, v18

    iget-object v2, v0, Lfr/testudo/spacecorsair/mod/ModFaction;->civs:Ljava/util/ArrayList;

    invoke-virtual {v2, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v13, v2

    check-cast v13, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;

    .line 1252
    if-eqz v13, :cond_4d0

    iget-boolean v2, v13, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->removed:Z

    if-nez v2, :cond_4d0

    move-object/from16 v0, v18

    iget-object v2, v0, Lfr/testudo/spacecorsair/mod/ModFaction;->scanMs:[I

    aget v2, v2, v14

    if-gez v2, :cond_47e

    move v3, v15

    move/from16 v4, v16

    move/from16 v5, v17

    .line 1250
    :goto_475
    add-int/lit8 v2, v14, 0x1

    move v14, v2

    move v15, v3

    move/from16 v16, v4

    move/from16 v17, v5

    goto :goto_446

    .line 1253
    :cond_47e
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

    .line 1254
    iget-object v2, v13, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    move-object/from16 v0, p0

    iget-object v3, v0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v2, v3}, Lfr/testudo/spacecorsair/engine/Vector2;->distance(Lfr/testudo/spacecorsair/engine/Vector2;)F

    move-result v5

    .line 1255
    cmpg-float v2, v5, v17

    if-gez v2, :cond_4d0

    iget-object v2, v13, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v0, v2, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    move/from16 v16, v0

    iget-object v2, v13, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v15, v2, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    move v3, v15

    move/from16 v4, v16

    goto :goto_475

    .line 1257
    :cond_4c4
    const-string v2, "SCAN"

    move-object v11, v2

    move v3, v15

    move/from16 v4, v16

    goto/16 :goto_9a

    .line 1266
    :cond_4cc
    const/16 v2, 0xc8

    goto/16 :goto_f0

    :cond_4d0
    move v3, v15

    move/from16 v4, v16

    move/from16 v5, v17

    goto :goto_475

    :cond_4d6
    move-object v11, v2

    move/from16 v17, v5

    goto/16 :goto_9a
.end method

.method private escortArrived()V
    .registers 7

    .prologue
    const/4 v5, 0x1

    const/4 v3, 0x0

    .line 1129
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

    .line 1130
    iget v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->phase:I

    if-nez v0, :cond_64

    invoke-direct {p0}, Lfr/testudo/spacecorsair/mod/ModFaction;->secondSector()Lfr/testudo/spacecorsair/game/levels/LevelId;

    move-result-object v0

    if-eqz v0, :cond_64

    .line 1131
    iput v5, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->phase:I

    .line 1132
    iput-boolean v3, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->courierMoving:Z

    .line 1133
    iput-boolean v3, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->secondLegPlaced:Z

    .line 1134
    const/4 v0, 0x0

    iput-object v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->target:Lfr/testudo/spacecorsair/business/Element;

    .line 1135
    invoke-direct {p0}, Lfr/testudo/spacecorsair/mod/ModFaction;->save()V

    .line 1136
    invoke-direct {p0}, Lfr/testudo/spacecorsair/mod/ModFaction;->activeSector()Lfr/testudo/spacecorsair/game/levels/LevelId;

    move-result-object v0

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModFaction;->sectorIs(Lfr/testudo/spacecorsair/game/levels/LevelId;)Z

    move-result v0

    iput-boolean v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->inZone:Z

    .line 1137
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->playerShip:Lfr/testudo/spacecorsair/business/player/PlayerShip;

    const-string v1, "FOLLOW THE COURIER THROUGH THE GATE"

    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/high16 v2, 0x3f000000    # 0.5f

    const/high16 v3, 0x3f800000    # 1.0f

    const v4, 0x3f19999a    # 0.6f

    invoke-static {v0, v1, v2, v3, v4}, Lfr/testudo/spacecorsair/mod/Mod;->floatText(Lfr/testudo/spacecorsair/business/Element;Ljava/lang/String;FFF)V

    .line 1138
    invoke-direct {p0, v5}, Lfr/testudo/spacecorsair/mod/ModFaction;->markGates(Z)V

    .line 1142
    :goto_63
    return-void

    .line 1141
    :cond_64
    invoke-direct {p0}, Lfr/testudo/spacecorsair/mod/ModFaction;->complete()V

    goto :goto_63
.end method

.method static faction(Ljava/lang/String;)I
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 179
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

    .line 180
    :goto_13
    return v0

    .line 179
    :cond_14
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_17
    move v0, v1

    .line 180
    goto :goto_13
.end method

.method private fail()V
    .registers 6

    .prologue
    const/16 v4, 0xe

    const/4 v3, 0x0

    .line 463
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

    .line 464
    invoke-direct {p0}, Lfr/testudo/spacecorsair/mod/ModFaction;->cleanup()V

    .line 465
    iput-boolean v3, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->planned:Z

    .line 466
    invoke-direct {p0}, Lfr/testudo/spacecorsair/mod/ModFaction;->save()V

    .line 467
    invoke-static {v3}, Lfr/testudo/spacecorsair/mod/ModAlerts;->missionResult(Z)V

    .line 468
    iget v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->idx:I

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModFaction;->key(I)Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->idx:I

    invoke-static {v1, v4}, Lfr/testudo/spacecorsair/mod/ModFaction;->str(II)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x2328

    invoke-static {v0, v1, v2}, Lfr/testudo/spacecorsair/mod/ModComms;->show(Ljava/lang/String;Ljava/lang/String;I)V

    .line 469
    iget v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->idx:I

    invoke-static {v0, v4}, Lfr/testudo/spacecorsair/mod/ModFaction;->str(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lfr/testudo/spacecorsair/business/mission/Mission;->setMissionFailure(Ljava/lang/String;)V

    .line 470
    return-void
.end method

.method private static farFrom(Lfr/testudo/spacecorsair/engine/Vector2;FF)Lfr/testudo/spacecorsair/engine/Vector2;
    .registers 4

    .prologue
    .line 926
    invoke-static {p0, p1, p2}, Lfr/testudo/spacecorsair/mod/ModPlace;->farPoint(Lfr/testudo/spacecorsair/engine/Vector2;FF)Lfr/testudo/spacecorsair/engine/Vector2;

    move-result-object v0

    return-object v0
.end method

.method private static farGate(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;
    .registers 9

    .prologue
    const/4 v4, 0x0

    .line 749
    .line 750
    const/high16 v1, -0x40800000    # -1.0f

    .line 752
    :try_start_3
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/Game;->currentLevel:Lfr/testudo/spacecorsair/game/levels/Level;

    iget-object v6, v0, Lfr/testudo/spacecorsair/game/levels/Level;->elements:Ljava/util/List;

    .line 753
    const/4 v0, 0x0

    move v5, v0

    move-object v3, v4

    :goto_e
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v0

    if-ge v5, v0, :cond_39

    .line 754
    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfr/testudo/spacecorsair/business/Element;

    .line 755
    instance-of v2, v0, Lfr/testudo/spacecorsair/business/world/Portal;

    if-eqz v2, :cond_4b

    iget-boolean v2, v0, Lfr/testudo/spacecorsair/business/Element;->removed:Z

    if-eqz v2, :cond_28

    move v0, v1

    .line 753
    :goto_23
    add-int/lit8 v2, v5, 0x1

    move v5, v2

    move v1, v0

    goto :goto_e

    .line 756
    :cond_28
    iget-object v2, v0, Lfr/testudo/spacecorsair/business/Element;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v2, p0}, Lfr/testudo/spacecorsair/engine/Vector2;->distance(Lfr/testudo/spacecorsair/engine/Vector2;)F

    move-result v2

    .line 757
    cmpl-float v7, v2, v1

    if-lez v7, :cond_4b

    iget-object v1, v0, Lfr/testudo/spacecorsair/business/Element;->position:Lfr/testudo/spacecorsair/engine/Vector2;
    :try_end_34
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_34} :catch_37

    move v0, v2

    move-object v3, v1

    goto :goto_23

    .line 759
    :catch_37
    move-exception v0

    move-object v3, v4

    .line 762
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
    .line 621
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

    .line 625
    const/4 v0, 0x0

    .line 626
    if-nez p1, :cond_5b

    .line 627
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 628
    sget-object v4, Lfr/testudo/spacecorsair/mod/ModFleet;->TYPES:[Lfr/testudo/spacecorsair/mod/ModFleet$Type;

    array-length v5, v4

    move v1, v2

    :goto_f
    if-ge v1, v5, :cond_2d

    aget-object v6, v4, v1

    .line 629
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

    .line 628
    :cond_2a
    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    .line 631
    :cond_2d
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_54

    .line 632
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x4

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 633
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

    .line 635
    :cond_54
    if-nez v0, :cond_5a

    invoke-static {p3}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisFactory;->newBasicEnnemisShip(I)Lfr/testudo/spacecorsair/business/ennemis/BasicEnnemyShip;

    move-result-object v0

    .line 643
    :cond_5a
    :goto_5a
    return-object v0

    .line 636
    :cond_5b
    const/4 v0, 0x1

    if-ne p1, v0, :cond_80

    .line 637
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v0

    cmpg-double v0, v0, v4

    if-gez v0, :cond_78

    invoke-static {p3}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisFactory;->newFrelon(I)Lfr/testudo/spacecorsair/business/ennemis/FrelonShip;

    move-result-object v0

    .line 638
    :goto_6a
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v2

    cmpg-double v1, v2, v4

    if-gez v1, :cond_7d

    const-string v1, "Syndicate Harvester"

    :goto_74
    invoke-static {v0, v1}, Lfr/testudo/spacecorsair/mod/ModFaction;->name(Lfr/testudo/spacecorsair/business/Element;Ljava/lang/String;)V

    goto :goto_5a

    .line 637
    :cond_78
    invoke-static {p3}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisFactory;->newDefensor(I)Lfr/testudo/spacecorsair/business/ennemis/DefensorShip;

    move-result-object v0

    goto :goto_6a

    .line 638
    :cond_7d
    const-string v1, "Syndicate Enforcer"

    goto :goto_74

    .line 640
    :cond_80
    invoke-static {p3}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisFactory;->newDefensor(I)Lfr/testudo/spacecorsair/business/ennemis/DefensorShip;

    move-result-object v0

    .line 641
    const-string v1, "Authority Picket"

    invoke-static {v0, v1}, Lfr/testudo/spacecorsair/mod/ModFaction;->name(Lfr/testudo/spacecorsair/business/Element;Ljava/lang/String;)V

    goto :goto_5a
.end method

.method private foeLevel()I
    .registers 7

    .prologue
    .line 596
    iget v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->idx:I

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModFaction;->minLevel(I)I

    move-result v0

    .line 597
    iget v1, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->idx:I

    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModFaction;->contract(I)Z

    move-result v1

    if-nez v1, :cond_16

    iget v1, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->idx:I

    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModFaction;->lance(I)Z

    move-result v1

    if-eqz v1, :cond_29

    .line 599
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

    .line 601
    :cond_29
    :goto_29
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v2

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    mul-double/2addr v2, v4

    double-to-int v1, v2

    add-int/2addr v0, v1

    return v0

    .line 599
    :catch_33
    move-exception v0

    const/4 v0, 0x5

    goto :goto_29
.end method

.method private static gateTo(Lfr/testudo/spacecorsair/game/levels/LevelId;)Lfr/testudo/spacecorsair/business/world/Portal;
    .registers 3

    .prologue
    .line 740
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

    .line 744
    :goto_10
    return-object v0

    .line 741
    :catch_11
    move-exception v0

    .line 744
    :cond_12
    const/4 v0, 0x0

    goto :goto_10
.end method

.method private holdLevel()I
    .registers 4

    .prologue
    const/4 v1, 0x1

    .line 606
    .line 607
    :try_start_1
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/Game;->playerInfo:Lfr/testudo/spacecorsair/business/player/PlayerInfo;

    iget v0, v0, Lfr/testudo/spacecorsair/business/player/PlayerInfo;->level:I
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_9} :catch_1e

    .line 608
    :goto_9
    iget-object v2, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->zone:Lfr/testudo/spacecorsair/game/levels/LevelId;

    .line 609
    if-eqz v2, :cond_13

    iget v2, v2, Lfr/testudo/spacecorsair/game/levels/LevelId;->levelMax:I

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 610
    :cond_13
    const/16 v2, 0x28

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0

    .line 607
    :catch_1e
    move-exception v0

    move v0, v1

    goto :goto_9
.end method

.method static holdingZone()Z
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 419
    :try_start_1
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModFaction;->active()Lfr/testudo/spacecorsair/mod/ModFaction;

    move-result-object v1

    .line 420
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

    .line 421
    invoke-direct {v1}, Lfr/testudo/spacecorsair/mod/ModFaction;->activeSector()Lfr/testudo/spacecorsair/game/levels/LevelId;
    :try_end_28
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_28} :catch_2d

    move-result-object v1

    if-ne v2, v1, :cond_2c

    const/4 v0, 0x1

    .line 423
    :cond_2c
    :goto_2c
    return v0

    .line 422
    :catch_2d
    move-exception v1

    goto :goto_2c
.end method

.method static hunt(I)Z
    .registers 4

    .prologue
    const/16 v2, 0x13

    .line 169
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
    .line 175
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

    .line 176
    :goto_27
    return-object v0

    .line 175
    :cond_28
    const-string v0, "TRIAL"

    goto :goto_1f

    .line 176
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

    .line 1377
    sget-object v1, Lfr/testudo/spacecorsair/mod/ModCapitals;->FACTIONS:[Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;

    iget v2, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->fi:I

    aget-object v5, v1, v2

    .line 1378
    iget-object v6, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->target:Lfr/testudo/spacecorsair/business/Element;

    .line 1379
    invoke-direct {p0}, Lfr/testudo/spacecorsair/mod/ModFaction;->activeSector()Lfr/testudo/spacecorsair/game/levels/LevelId;

    move-result-object v7

    .line 1381
    iget-boolean v1, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->completed:Z

    if-eqz v1, :cond_32

    move v1, v0

    move v2, v0

    .line 1394
    :goto_17
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->instrText:Ljava/lang/String;

    .line 1395
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

    .line 1416
    :goto_31
    return-object v0

    .line 1382
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

    .line 1383
    :cond_43
    if-nez v7, :cond_4c

    iget v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->idx:I

    invoke-static {v0, v8}, Lfr/testudo/spacecorsair/mod/ModFaction;->str(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_31

    .line 1384
    :cond_4c
    iget-boolean v1, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->inZone:Z

    if-nez v1, :cond_53

    move v1, v0

    move v2, v3

    goto :goto_17

    .line 1385
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

    .line 1386
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

    .line 1387
    :cond_76
    iget-boolean v1, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->setupDone:Z

    if-nez v1, :cond_81

    iget v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->idx:I

    invoke-static {v0, v8}, Lfr/testudo/spacecorsair/mod/ModFaction;->str(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_31

    .line 1388
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

    .line 1389
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

    .line 1390
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

    .line 1391
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

    .line 1392
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

    .line 1393
    :cond_fc
    iget v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->idx:I

    invoke-static {v0, v8}, Lfr/testudo/spacecorsair/mod/ModFaction;->str(II)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_31

    .line 1397
    :cond_104
    packed-switch v2, :pswitch_data_2ac

    .line 1408
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

    .line 1410
    :goto_130
    iput v2, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->instrBranch:I

    .line 1411
    iput v1, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->instrVal:I

    .line 1412
    iput-object v6, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->instrTarget:Lfr/testudo/spacecorsair/business/Element;

    .line 1413
    iget v1, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->goal:I

    iput v1, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->instrGoal:I

    .line 1414
    iput-object v7, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->instrWhere:Lfr/testudo/spacecorsair/game/levels/LevelId;

    .line 1415
    iput-object v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->instrText:Ljava/lang/String;

    goto/16 :goto_31

    .line 1398
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

    .line 1399
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

    .line 1400
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

    .line 1399
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

    .line 1400
    :cond_1bd
    const-string v0, "Go to "

    goto :goto_187

    .line 1401
    :pswitch_1c0
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

    .line 1402
    :pswitch_1e3
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

    .line 1403
    :pswitch_1fc
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

    .line 1404
    :pswitch_227
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

    .line 1405
    :pswitch_256
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

    .line 1406
    :pswitch_27d
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

    .line 1407
    :pswitch_2a4
    const-string v0, "Meet the convoy"

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_130

    .line 1397
    :pswitch_data_2ac
    .packed-switch 0x0
        :pswitch_140
        :pswitch_16e
        :pswitch_1c0
        :pswitch_1e3
        :pswitch_1fc
        :pswitch_227
        :pswitch_107
        :pswitch_256
        :pswitch_27d
        :pswitch_2a4
    .end packed-switch
.end method

.method static itemLabel(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    .prologue
    .line 197
    const-string v0, "L15"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3e

    const-string v0, "Siege "

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 198
    :goto_e
    const-string v1, "L\\d+$"

    const-string v2, ""

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 199
    const/4 v1, 0x0

    :goto_17
    sget-object v3, Lfr/testudo/spacecorsair/mod/ModFaction;->FAMILY_LABEL:[Ljava/lang/String;

    array-length v3, v3

    if-ge v1, v3, :cond_66

    sget-object v3, Lfr/testudo/spacecorsair/mod/ModFaction;->FAMILY_LABEL:[Ljava/lang/String;

    aget-object v3, v3, v1

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_63

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Lfr/testudo/spacecorsair/mod/ModFaction;->FAMILY_LABEL:[Ljava/lang/String;

    add-int/lit8 v1, v1, 0x1

    aget-object v1, v2, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 206
    :cond_3d
    :goto_3d
    return-object p0

    .line 197
    :cond_3e
    const-string v0, "L10"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4d

    const-string v0, "Heavy "

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_e

    :cond_4d
    const-string v0, "L5"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5c

    const-string v0, "Standard "

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_e

    :cond_5c
    const-string v0, "Light "

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_e

    .line 199
    :cond_63
    add-int/lit8 v1, v1, 0x2

    goto :goto_17

    .line 201
    :cond_66
    :try_start_66
    invoke-static {p0}, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->valueOf(Ljava/lang/String;)Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    move-result-object v0

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLance;->label(Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)Ljava/lang/String;
    :try_end_6d
    .catch Ljava/lang/Throwable; {:try_start_66 .. :try_end_6d} :catch_72

    move-result-object v0

    .line 202
    if-eqz v0, :cond_3d

    move-object p0, v0

    goto :goto_3d

    .line 203
    :catch_72
    move-exception v0

    goto :goto_3d
.end method

.method static key(I)Ljava/lang/String;
    .registers 2

    .prologue
    .line 171
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
    .line 190
    :try_start_0
    invoke-static {p0}, Lfr/testudo/spacecorsair/game/levels/LevelId;->valueOf(Ljava/lang/String;)Lfr/testudo/spacecorsair/game/levels/LevelId;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3} :catch_5

    move-result-object v0

    .line 192
    :goto_4
    return-object v0

    .line 191
    :catch_5
    move-exception v0

    .line 192
    const/4 v0, 0x0

    goto :goto_4
.end method

.method private liveFoes()I
    .registers 4

    .prologue
    .line 1182
    const/4 v0, 0x0

    .line 1183
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

    .line 1184
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

    .line 548
    iput-boolean v1, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->planned:Z

    .line 549
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModFaction;->prefs()Landroid/content/SharedPreferences;

    move-result-object v3

    .line 550
    if-eqz v3, :cond_15

    invoke-direct {p0}, Lfr/testudo/spacecorsair/mod/ModFaction;->stateKey()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 551
    :cond_15
    if-nez v2, :cond_18

    .line 587
    :goto_17
    return-void

    .line 553
    :cond_18
    :try_start_18
    const-string v3, ";"

    const/4 v4, -0x1

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v3

    .line 554
    const/4 v2, 0x0

    aget-object v2, v3, v2

    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModFaction;->level(Ljava/lang/String;)Lfr/testudo/spacecorsair/game/levels/LevelId;

    move-result-object v2

    .line 555
    if-eqz v2, :cond_2a

    iput-object v2, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->zone:Lfr/testudo/spacecorsair/game/levels/LevelId;

    .line 556
    :cond_2a
    const/4 v2, 0x1

    aget-object v2, v3, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->phase:I

    .line 557
    const/4 v2, 0x2

    aget-object v2, v3, v2

    iget-object v4, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->ref:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-static {v2, v4}, Lfr/testudo/spacecorsair/mod/ModFaction;->xy(Ljava/lang/String;Lfr/testudo/spacecorsair/engine/Vector2;)V

    .line 558
    const/4 v2, 0x3

    aget-object v2, v3, v2

    iget-object v4, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->center:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-static {v2, v4}, Lfr/testudo/spacecorsair/mod/ModFaction;->xy(Ljava/lang/String;Lfr/testudo/spacecorsair/engine/Vector2;)V

    .line 559
    const/4 v2, 0x4

    aget-object v2, v3, v2

    iget-object v4, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->endAt:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-static {v2, v4}, Lfr/testudo/spacecorsair/mod/ModFaction;->xy(Ljava/lang/String;Lfr/testudo/spacecorsair/engine/Vector2;)V

    .line 560
    const/4 v2, 0x5

    aget-object v2, v3, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->progress:I

    .line 561
    const/4 v2, 0x6

    aget-object v2, v3, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->goal:I

    .line 562
    const/4 v2, 0x7

    aget-object v2, v3, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->holdMs:I

    .line 563
    const/16 v2, 0x8

    aget-object v2, v3, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->waveNo:I

    .line 564
    const/16 v2, 0x9

    aget-object v2, v3, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->wavesLeft:I

    .line 565
    const/16 v2, 0xa

    aget-object v2, v3, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 566
    and-int/lit8 v2, v4, 0x1

    if-eqz v2, :cond_108

    move v2, v0

    :goto_87
    iput-boolean v2, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->courierMoving:Z

    .line 567
    and-int/lit8 v2, v4, 0x2

    if-eqz v2, :cond_10b

    :goto_8d
    iput-boolean v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->secondLegPlaced:Z

    .line 568
    const/4 v0, 0x0

    const/16 v2, 0x63

    shr-int/lit8 v4, v4, 0x2

    invoke-static {v2, v4}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->outpostLost:I

    .line 569
    const/16 v0, 0xb

    aget-object v0, v3, v0

    iget-object v2, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->lastCourier:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-static {v0, v2}, Lfr/testudo/spacecorsair/mod/ModFaction;->xy(Ljava/lang/String;Lfr/testudo/spacecorsair/engine/Vector2;)V

    .line 570
    const/4 v0, 0x0

    iput-object v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->markers:[F

    .line 571
    const/4 v0, 0x0

    iput-object v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->taken:[Z

    .line 572
    array-length v0, v3

    if-le v0, v5, :cond_10d

    const/16 v0, 0xc

    aget-object v0, v3, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_10d

    .line 573
    const/16 v0, 0xc

    aget-object v0, v3, v0

    const-string v2, ":"

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 574
    array-length v0, v2

    mul-int/lit8 v0, v0, 0x2

    new-array v0, v0, [F

    iput-object v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->markers:[F

    .line 575
    array-length v0, v2

    new-array v0, v0, [Z

    iput-object v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->taken:[Z

    move v0, v1

    .line 576
    :goto_d1
    array-length v3, v2

    if-ge v0, v3, :cond_10d

    .line 577
    aget-object v3, v2, v0

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 578
    iget-object v4, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->markers:[F

    mul-int/lit8 v5, v0, 0x2

    const/4 v6, 0x0

    aget-object v6, v3, v6

    invoke-static {v6}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v6

    aput v6, v4, v5

    .line 579
    iget-object v4, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->markers:[F

    mul-int/lit8 v5, v0, 0x2

    add-int/lit8 v5, v5, 0x1

    const/4 v6, 0x1

    aget-object v6, v3, v6

    invoke-static {v6}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v6

    aput v6, v4, v5

    .line 580
    iget-object v4, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->taken:[Z

    const-string v5, "1"

    const/4 v6, 0x2

    aget-object v3, v3, v6

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    aput-boolean v3, v4, v0

    .line 576
    add-int/lit8 v0, v0, 0x1

    goto :goto_d1

    :cond_108
    move v2, v1

    .line 566
    goto/16 :goto_87

    :cond_10b
    move v0, v1

    .line 567
    goto :goto_8d

    .line 583
    :cond_10d
    const/4 v0, 0x1

    iput-boolean v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->planned:Z
    :try_end_110
    .catch Ljava/lang/Throwable; {:try_start_18 .. :try_end_110} :catch_112

    goto/16 :goto_17

    .line 584
    :catch_112
    move-exception v0

    .line 585
    iput-boolean v1, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->planned:Z

    goto/16 :goto_17
.end method

.method private markGates(Z)V
    .registers 5

    .prologue
    .line 1283
    :try_start_0
    iget-boolean v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->completed:Z

    if-eqz v0, :cond_f

    sget-object v0, Lfr/testudo/spacecorsair/mod/ModCapitals;->FACTIONS:[Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;

    iget v1, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->fi:I

    aget-object v0, v0, v1

    iget-object v0, v0, Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;->hq:Lfr/testudo/spacecorsair/game/levels/LevelId;

    .line 1284
    :goto_c
    if-nez v0, :cond_14

    .line 1296
    :cond_e
    :goto_e
    return-void

    .line 1283
    :cond_f
    invoke-direct {p0}, Lfr/testudo/spacecorsair/mod/ModFaction;->activeSector()Lfr/testudo/spacecorsair/game/levels/LevelId;

    move-result-object v0

    goto :goto_c

    .line 1285
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

    .line 1286
    :cond_37
    sget-object v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v1, v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v1, v1, Lfr/testudo/spacecorsair/game/Game;->currentLevel:Lfr/testudo/spacecorsair/game/levels/Level;

    iget-object v1, v1, Lfr/testudo/spacecorsair/game/levels/Level;->name:Ljava/lang/String;

    .line 1287
    if-eqz v1, :cond_49

    iget-object v2, v0, Lfr/testudo/spacecorsair/game/levels/LevelId;->levelName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_e

    .line 1288
    :cond_49
    sget-object v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v1, v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v1, v1, Lfr/testudo/spacecorsair/game/Game;->currentLevel:Lfr/testudo/spacecorsair/game/levels/Level;

    invoke-static {v0}, Lfr/testudo/spacecorsair/business/world/PathFinder;->getPortalNameToGoTo(Lfr/testudo/spacecorsair/game/levels/LevelId;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lfr/testudo/spacecorsair/game/levels/Level;->findPortalByName(Ljava/lang/String;)Lfr/testudo/spacecorsair/business/world/Portal;

    move-result-object v0

    .line 1289
    if-eqz v0, :cond_e

    .line 1290
    iput-boolean p1, v0, Lfr/testudo/spacecorsair/business/world/Portal;->isMissionObjective:Z

    .line 1291
    sget-object v1, Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;->ORANGE:Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;

    iput-object v1, v0, Lfr/testudo/spacecorsair/business/world/Portal;->missionObjectiveColor:Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;
    :try_end_5f
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_5f} :catch_60

    goto :goto_e

    .line 1293
    :catch_60
    move-exception v0

    goto :goto_e
.end method

.method static minLevel(I)I
    .registers 2

    .prologue
    .line 174
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
    .line 647
    iput-object p1, p0, Lfr/testudo/spacecorsair/business/Element;->specificName:Ljava/lang/String;

    .line 648
    const/4 v0, -0x1

    iput v0, p0, Lfr/testudo/spacecorsair/business/Element;->specificNameDecalX:I

    .line 649
    return-void
.end method

.method static num(II)I
    .registers 3

    .prologue
    .line 167
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
    .line 173
    const/4 v0, 0x3

    invoke-static {p0, v0}, Lfr/testudo/spacecorsair/mod/ModFaction;->str(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static order(I)I
    .registers 2

    .prologue
    .line 172
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lfr/testudo/spacecorsair/mod/ModFaction;->num(II)I

    move-result v0

    return v0
.end method

.method private place(Lfr/testudo/spacecorsair/business/ennemis/Ennemis;Lfr/testudo/spacecorsair/engine/Vector2;Lfr/testudo/spacecorsair/business/Element;Z)Lfr/testudo/spacecorsair/business/ennemis/Ennemis;
    .registers 11

    .prologue
    .line 669
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
    .line 653
    if-nez p1, :cond_4

    const/4 p1, 0x0

    .line 665
    :goto_3
    return-object p1

    .line 654
    :cond_4
    iget-object v0, p1, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v0, p2}, Lfr/testudo/spacecorsair/engine/Vector2;->setSameAs(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 655
    invoke-virtual {p1}, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->updateSapCoords()V

    .line 656
    const v0, 0x460ca000    # 9000.0f

    iput v0, p1, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->desengagementDistance:F

    .line 657
    if-eqz p4, :cond_1a

    .line 658
    const/4 v0, 0x1

    iput-boolean v0, p1, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->isMissionObjective:Z

    .line 659
    sget-object v0, Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;->RED:Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;

    iput-object v0, p1, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->missionObjectiveColor:Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;

    .line 661
    :cond_1a
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->playerShip:Lfr/testudo/spacecorsair/business/player/PlayerShip;

    .line 662
    if-eqz p5, :cond_29

    if-eqz p3, :cond_32

    iget-boolean v1, p3, Lfr/testudo/spacecorsair/business/Element;->removed:Z

    if-nez v1, :cond_32

    :goto_26
    invoke-virtual {p1, p3}, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->initAttackTarget(Lfr/testudo/spacecorsair/business/Element;)V

    .line 663
    :cond_29
    invoke-virtual {p1}, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->addToCurrentLevel()V

    .line 664
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->spawned:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_32
    move-object p3, v0

    .line 662
    goto :goto_26
.end method

.method private plan(Lfr/testudo/spacecorsair/business/player/PlayerShip;)V
    .registers 10

    .prologue
    const/4 v7, 0x7

    const/4 v6, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 767
    iput-boolean v5, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->planned:Z

    .line 768
    iput v4, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->phase:I

    .line 769
    iput v4, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->progress:I

    .line 770
    iput v4, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->holdMs:I

    .line 771
    iput v4, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->outpostLost:I

    .line 772
    iput v4, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->waveNo:I

    .line 773
    iput v4, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->wavesLeft:I

    .line 774
    iput-boolean v4, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->courierMoving:Z

    .line 775
    iput-boolean v4, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->secondLegPlaced:Z

    .line 776
    iput-object v6, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->markers:[F

    .line 777
    iput-object v6, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->taken:[Z

    .line 778
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->ref:Lfr/testudo/spacecorsair/engine/Vector2;

    iget-object v1, p1, Lfr/testudo/spacecorsair/business/player/PlayerShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/engine/Vector2;->setSameAs(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 779
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

    .line 781
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

    .line 782
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

    .line 783
    :cond_a2
    new-array v0, v5, [Z

    iput-object v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->taken:[Z

    .line 784
    const/4 v0, 0x2

    new-array v0, v0, [F

    iget-object v1, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->center:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v1, v1, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    aput v1, v0, v4

    iget-object v1, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->center:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v1, v1, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    aput v1, v0, v5

    iput-object v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->markers:[F

    .line 785
    iput v5, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->goal:I

    .line 803
    :cond_b9
    :goto_b9
    invoke-direct {p0}, Lfr/testudo/spacecorsair/mod/ModFaction;->save()V

    .line 804
    return-void

    .line 780
    :cond_bd
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->center:Lfr/testudo/spacecorsair/engine/Vector2;

    iget-object v1, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->ref:Lfr/testudo/spacecorsair/engine/Vector2;

    const/high16 v2, 0x45fa0000    # 8000.0f

    const v3, 0x7f7fffff    # Float.MAX_VALUE

    invoke-static {v1, v2, v3}, Lfr/testudo/spacecorsair/mod/ModPlace;->farPoint(Lfr/testudo/spacecorsair/engine/Vector2;FF)Lfr/testudo/spacecorsair/engine/Vector2;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/engine/Vector2;->setSameAs(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    goto/16 :goto_3c

    .line 786
    :cond_cf
    const-string v0, "GATHER_AND_SELL"

    iget-object v1, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->obj:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e3

    .line 787
    const/4 v0, 0x6

    iget-object v1, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->center:Lfr/testudo/spacecorsair/engine/Vector2;

    const v2, 0x45098000    # 2200.0f

    invoke-direct {p0, v0, v1, v2}, Lfr/testudo/spacecorsair/mod/ModFaction;->scatter(ILfr/testudo/spacecorsair/engine/Vector2;F)V

    goto :goto_b9

    .line 788
    :cond_e3
    const-string v0, "RESCUE"

    iget-object v1, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->obj:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_ff

    .line 789
    iget v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->idx:I

    invoke-static {v0, v7}, Lfr/testudo/spacecorsair/mod/ModFaction;->num(II)I

    move-result v0

    invoke-static {v5, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iget-object v1, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->center:Lfr/testudo/spacecorsair/engine/Vector2;

    const/high16 v2, 0x45480000    # 3200.0f

    invoke-direct {p0, v0, v1, v2}, Lfr/testudo/spacecorsair/mod/ModFaction;->scatter(ILfr/testudo/spacecorsair/engine/Vector2;F)V

    goto :goto_b9

    .line 790
    :cond_ff
    const-string v0, "DEFEND_CIVILIANS"

    iget-object v1, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->obj:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10d

    .line 791
    const/4 v0, 0x4

    iput v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->wavesLeft:I

    goto :goto_b9

    .line 792
    :cond_10d
    const-string v0, "DEFEND_ZONE"

    iget-object v1, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->obj:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_129

    .line 793
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

    .line 794
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

    .line 795
    :cond_13d
    iget v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->idx:I

    invoke-static {v0, v7}, Lfr/testudo/spacecorsair/mod/ModFaction;->num(II)I

    move-result v0

    invoke-static {v5, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->goal:I

    goto/16 :goto_b9

    .line 796
    :cond_14b
    const-string v0, "ESCORT"

    iget-object v1, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->obj:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b9

    .line 798
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->ref:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-static {v0, v6}, Lfr/testudo/spacecorsair/mod/ModPlace;->farthestStation(Lfr/testudo/spacecorsair/engine/Vector2;Lfr/testudo/spacecorsair/business/world/station/Station;)Lfr/testudo/spacecorsair/business/world/station/Station;

    move-result-object v0

    .line 799
    if-eqz v0, :cond_164

    iget-object v1, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->center:Lfr/testudo/spacecorsair/engine/Vector2;

    iget-object v2, v0, Lfr/testudo/spacecorsair/business/world/station/Station;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v1, v2}, Lfr/testudo/spacecorsair/engine/Vector2;->setSameAs(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 800
    :cond_164
    iget-object v1, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->lastCourier:Lfr/testudo/spacecorsair/engine/Vector2;

    iget-object v2, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->center:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v1, v2}, Lfr/testudo/spacecorsair/engine/Vector2;->setSameAs(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 801
    invoke-direct {p0, v0}, Lfr/testudo/spacecorsair/mod/ModFaction;->planEscortEnd(Lfr/testudo/spacecorsair/business/world/station/Station;)V

    goto/16 :goto_b9
.end method

.method private planEscortEnd(Lfr/testudo/spacecorsair/business/world/station/Station;)V
    .registers 5

    .prologue
    const/4 v1, 0x0

    .line 808
    iget v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->phase:I

    if-nez v0, :cond_2b

    iget v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->idx:I

    const/16 v2, 0xa

    invoke-static {v0, v2}, Lfr/testudo/spacecorsair/mod/ModFaction;->str(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModFaction;->level(Ljava/lang/String;)Lfr/testudo/spacecorsair/game/levels/LevelId;

    move-result-object v0

    .line 809
    :goto_11
    iget v2, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->phase:I

    if-nez v2, :cond_21

    iget v2, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->idx:I

    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModFaction;->contract(I)Z

    move-result v2

    if-nez v2, :cond_21

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModFaction;->gateTo(Lfr/testudo/spacecorsair/game/levels/LevelId;)Lfr/testudo/spacecorsair/business/world/Portal;

    move-result-object v1

    .line 810
    :cond_21
    if-eqz v1, :cond_2d

    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->endAt:Lfr/testudo/spacecorsair/engine/Vector2;

    iget-object v1, v1, Lfr/testudo/spacecorsair/business/world/Portal;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/engine/Vector2;->setSameAs(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 814
    :goto_2a
    return-void

    :cond_2b
    move-object v0, v1

    .line 808
    goto :goto_11

    .line 811
    :cond_2d
    if-eqz p1, :cond_3f

    iget-object v0, p1, Lfr/testudo/spacecorsair/business/world/station/Station;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    :goto_31
    invoke-static {v0, p1}, Lfr/testudo/spacecorsair/mod/ModPlace;->farthestStation(Lfr/testudo/spacecorsair/engine/Vector2;Lfr/testudo/spacecorsair/business/world/station/Station;)Lfr/testudo/spacecorsair/business/world/station/Station;

    move-result-object v0

    .line 812
    if-eqz v0, :cond_42

    iget-object v1, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->endAt:Lfr/testudo/spacecorsair/engine/Vector2;

    iget-object v0, v0, Lfr/testudo/spacecorsair/business/world/station/Station;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v1, v0}, Lfr/testudo/spacecorsair/engine/Vector2;->setSameAs(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    goto :goto_2a

    .line 811
    :cond_3f
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->center:Lfr/testudo/spacecorsair/engine/Vector2;

    goto :goto_31

    .line 813
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
    .line 674
    const/4 v0, 0x0

    move v6, v0

    :goto_2
    if-ge v6, p1, :cond_42

    .line 675
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v0

    const-wide v2, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v0, v2

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    mul-double/2addr v0, v2

    .line 676
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

    .line 677
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

    .line 674
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_2

    .line 677
    :cond_40
    const/4 v0, 0x0

    goto :goto_31

    .line 679
    :cond_42
    return-void
.end method

.method private static prefs()Landroid/content/SharedPreferences;
    .registers 1

    .prologue
    .line 435
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModQol;->prefs()Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method static pretty(Lfr/testudo/spacecorsair/game/levels/LevelId;)Ljava/lang/String;
    .registers 9

    .prologue
    const/4 v1, 0x0

    .line 211
    if-eqz p0, :cond_7

    iget-object v0, p0, Lfr/testudo/spacecorsair/game/levels/LevelId;->levelName:Ljava/lang/String;

    if-nez v0, :cond_a

    :cond_7
    const-string v0, ""

    .line 218
    :goto_9
    return-object v0

    .line 212
    :cond_a
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 213
    iget-object v0, p0, Lfr/testudo/spacecorsair/game/levels/LevelId;->levelName:Ljava/lang/String;

    const-string v3, " "

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    array-length v4, v3

    move v0, v1

    :goto_19
    if-ge v0, v4, :cond_46

    aget-object v5, v3, v0

    .line 214
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_26

    .line 213
    :goto_23
    add-int/lit8 v0, v0, 0x1

    goto :goto_19

    .line 215
    :cond_26
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    if-lez v6, :cond_31

    const/16 v6, 0x20

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 216
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

    .line 218
    :cond_46
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_9
.end method

.method private reinforce(ILfr/testudo/spacecorsair/business/Element;Z)V
    .registers 10

    .prologue
    .line 683
    const/4 v4, -0x1

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v5}, Lfr/testudo/spacecorsair/mod/ModFaction;->reinforce(ILfr/testudo/spacecorsair/business/Element;ZIZ)V

    .line 684
    return-void
.end method

.method private reinforce(ILfr/testudo/spacecorsair/business/Element;ZIZ)V
    .registers 14

    .prologue
    .line 687
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->playerShip:Lfr/testudo/spacecorsair/business/player/PlayerShip;

    .line 688
    if-nez v0, :cond_7

    .line 697
    :cond_6
    return-void

    .line 689
    :cond_7
    iget-object v0, v0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModPlace;->ambushPoint(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    move-result-object v7

    .line 690
    const/4 v0, 0x0

    move v6, v0

    :goto_f
    if-ge v6, p1, :cond_6

    .line 691
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

    .line 692
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

    .line 693
    if-nez v0, :cond_6b

    .line 690
    :goto_55
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_f

    .line 692
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

    .line 694
    :cond_6b
    if-eqz p5, :cond_75

    add-int/lit8 v1, p1, -0x1

    if-ne v6, v1, :cond_75

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->setElite(Z)Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    .line 695
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

    .line 530
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModFaction;->prefs()Landroid/content/SharedPreferences;

    move-result-object v4

    .line 531
    if-nez v4, :cond_d

    .line 545
    :goto_c
    return-void

    .line 532
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

    .line 533
    :cond_21
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 534
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

    .line 535
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

    .line 536
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

    .line 537
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

    .line 538
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->lastCourier:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v3, v3, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 539
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->markers:[F

    if-eqz v0, :cond_13a

    move v0, v2

    .line 540
    :goto_f0
    iget-object v3, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->taken:[Z

    array-length v3, v3

    if-ge v0, v3, :cond_13a

    .line 541
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

    .line 540
    add-int/lit8 v0, v0, 0x1

    goto :goto_f0

    .line 534
    :cond_12d
    const-string v0, ""

    goto/16 :goto_30

    :cond_131
    move v0, v2

    .line 537
    goto :goto_c1

    :cond_133
    move v3, v2

    goto :goto_c6

    :cond_135
    move v3, v2

    .line 541
    goto :goto_11a

    :cond_137
    const-string v3, ""

    goto :goto_127

    .line 544
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

    .line 729
    invoke-direct {p0, p1, v4}, Lfr/testudo/spacecorsair/mod/ModFaction;->civil(Lfr/testudo/spacecorsair/engine/Vector2;Z)Lfr/testudo/spacecorsair/business/world/civil/CivilShip;

    move-result-object v0

    .line 730
    if-nez v0, :cond_c

    const/4 v0, 0x0

    .line 734
    :goto_b
    return-object v0

    .line 731
    :cond_c
    iput-boolean v5, v0, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->isMissionObjective:Z

    .line 732
    sget-object v1, Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;->ORANGE:Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;

    iput-object v1, v0, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->missionObjectiveColor:Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;

    .line 733
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

    .line 700
    mul-int/lit8 v0, p1, 0x2

    new-array v2, v0, [F

    move v0, v1

    .line 701
    :goto_6
    if-ge v0, p1, :cond_21

    .line 702
    const v3, 0x3e4ccccd    # 0.2f

    mul-float/2addr v3, p3

    invoke-static {p2, v3, p3}, Lfr/testudo/spacecorsair/mod/ModFaction;->away(Lfr/testudo/spacecorsair/engine/Vector2;FF)Lfr/testudo/spacecorsair/engine/Vector2;

    move-result-object v3

    .line 703
    mul-int/lit8 v4, v0, 0x2

    iget v5, v3, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    aput v5, v2, v4

    .line 704
    mul-int/lit8 v4, v0, 0x2

    add-int/lit8 v4, v4, 0x1

    iget v3, v3, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    aput v3, v2, v4

    .line 701
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 706
    :cond_21
    new-array v0, p1, [Z

    iput-object v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->taken:[Z

    .line 707
    iput-object v2, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->markers:[F

    .line 708
    iput p1, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->goal:I

    .line 709
    iput v1, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->progress:I

    .line 710
    return-void
.end method

.method private secondSector()Lfr/testudo/spacecorsair/game/levels/LevelId;
    .registers 3

    .prologue
    .line 358
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

    .line 360
    :goto_1f
    return-object v0

    .line 359
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

    .line 360
    :cond_3f
    const/4 v0, 0x0

    goto :goto_1f
.end method

.method private static sectorIs(Lfr/testudo/spacecorsair/game/levels/LevelId;)Z
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 1174
    :try_start_1
    sget-object v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v1, v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v1, v1, Lfr/testudo/spacecorsair/game/Game;->currentLevel:Lfr/testudo/spacecorsair/game/levels/Level;

    iget-object v1, v1, Lfr/testudo/spacecorsair/game/levels/Level;->name:Ljava/lang/String;

    .line 1175
    if-eqz p0, :cond_16

    if-eqz v1, :cond_16

    iget-object v2, p0, Lfr/testudo/spacecorsair/game/levels/LevelId;->levelName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_12
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_12} :catch_17

    move-result v1

    if-eqz v1, :cond_16

    const/4 v0, 0x1

    .line 1177
    :cond_16
    :goto_16
    return v0

    .line 1176
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

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 817
    iput-boolean v4, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->setupDone:Z

    .line 818
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->playerShip:Lfr/testudo/spacecorsair/business/player/PlayerShip;

    .line 819
    if-nez v0, :cond_f

    .line 922
    :cond_e
    :goto_e
    return-void

    .line 820
    :cond_f
    iget-boolean v1, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->planned:Z

    if-nez v1, :cond_16

    invoke-direct {p0, v0}, Lfr/testudo/spacecorsair/mod/ModFaction;->plan(Lfr/testudo/spacecorsair/business/player/PlayerShip;)V

    .line 821
    :cond_16
    iput-boolean v5, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->ambushed2:Z

    iput-boolean v5, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->ambushed:Z

    .line 822
    iput-boolean v5, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->wavesOn:Z

    .line 823
    iput-object v3, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->target:Lfr/testudo/spacecorsair/business/Element;

    .line 824
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

    .line 826
    const-string v0, "DEFEND_CIVILIANS"

    iget-object v1, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->obj:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9f

    .line 827
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->center:Lfr/testudo/spacecorsair/engine/Vector2;

    const v1, 0x458ca000    # 4500.0f

    const v2, 0x459c4000    # 5000.0f

    invoke-static {v0, v1, v2}, Lfr/testudo/spacecorsair/mod/ModFaction;->farFrom(Lfr/testudo/spacecorsair/engine/Vector2;FF)Lfr/testudo/spacecorsair/engine/Vector2;

    move-result-object v1

    move v0, v5

    .line 828
    :goto_49
    const/4 v2, 0x4

    if-ge v0, v2, :cond_99

    .line 829
    iget-object v2, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->center:Lfr/testudo/spacecorsair/engine/Vector2;

    const/high16 v3, 0x43e10000    # 450.0f

    invoke-static {v2, v9, v3}, Lfr/testudo/spacecorsair/mod/ModFaction;->away(Lfr/testudo/spacecorsair/engine/Vector2;FF)Lfr/testudo/spacecorsair/engine/Vector2;

    move-result-object v2

    invoke-direct {p0, v2, v4}, Lfr/testudo/spacecorsair/mod/ModFaction;->civil(Lfr/testudo/spacecorsair/engine/Vector2;Z)Lfr/testudo/spacecorsair/business/world/civil/CivilShip;

    move-result-object v2

    .line 830
    if-nez v2, :cond_5d

    .line 828
    :goto_5a
    add-int/lit8 v0, v0, 0x1

    goto :goto_49

    .line 831
    :cond_5d
    iget v3, v2, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->maxLife:F

    const/high16 v6, 0x40400000    # 3.0f

    mul-float/2addr v3, v6

    iput v3, v2, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->maxLife:F

    .line 832
    iget v3, v2, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->maxLife:F

    iput v3, v2, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->life:F

    .line 833
    const-string v3, "Evacuee transport"

    invoke-static {v3}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lfr/testudo/spacecorsair/mod/ModFaction;->name(Lfr/testudo/spacecorsair/business/Element;Ljava/lang/String;)V

    .line 834
    iput-boolean v4, v2, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->isMissionObjective:Z

    .line 835
    sget-object v3, Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;->GREEN:Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;

    iput-object v3, v2, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->missionObjectiveColor:Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;

    .line 837
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

    .line 839
    :cond_99
    const/16 v0, 0x1770

    iput v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->timer:I

    goto/16 :goto_e

    .line 840
    :cond_9f
    const-string v0, "DEFEND_ZONE"

    iget-object v1, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->obj:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_101

    .line 841
    const/16 v0, 0xfa0

    iput v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->timer:I

    .line 843
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->center:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-direct {p0, v0, v4}, Lfr/testudo/spacecorsair/mod/ModFaction;->civil(Lfr/testudo/spacecorsair/engine/Vector2;Z)Lfr/testudo/spacecorsair/business/world/civil/CivilShip;

    move-result-object v0

    iput-object v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->outpost:Lfr/testudo/spacecorsair/business/world/civil/CivilShip;

    .line 844
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->outpost:Lfr/testudo/spacecorsair/business/world/civil/CivilShip;

    if-eqz v0, :cond_e

    .line 845
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->outpost:Lfr/testudo/spacecorsair/business/world/civil/CivilShip;

    iget v1, v0, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->maxLife:F

    const/high16 v2, 0x41400000    # 12.0f

    mul-float/2addr v1, v2

    iput v1, v0, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->maxLife:F

    .line 846
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->outpost:Lfr/testudo/spacecorsair/business/world/civil/CivilShip;

    iget-object v1, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->outpost:Lfr/testudo/spacecorsair/business/world/civil/CivilShip;

    iget v1, v1, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->maxLife:F

    iget v2, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->outpostLost:I

    rsub-int/lit8 v2, v2, 0x64

    int-to-float v2, v2

    mul-float/2addr v1, v2

    div-float/2addr v1, v9

    iput v1, v0, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->life:F

    .line 847
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->outpost:Lfr/testudo/spacecorsair/business/world/civil/CivilShip;

    const-string v1, "Outpost"

    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lfr/testudo/spacecorsair/mod/ModFaction;->name(Lfr/testudo/spacecorsair/business/Element;Ljava/lang/String;)V

    .line 848
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->outpost:Lfr/testudo/spacecorsair/business/world/civil/CivilShip;

    iput-boolean v4, v0, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->isMissionObjective:Z

    .line 849
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->outpost:Lfr/testudo/spacecorsair/business/world/civil/CivilShip;

    sget-object v1, Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;->GREEN:Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;

    iput-object v1, v0, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->missionObjectiveColor:Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;

    .line 850
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

    .line 852
    :cond_101
    const-string v0, "BOUNTY"

    iget-object v1, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->obj:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1ba

    .line 853
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

    .line 854
    :goto_122
    if-eqz v13, :cond_199

    invoke-direct {p0}, Lfr/testudo/spacecorsair/mod/ModFaction;->foeLevel()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisFactory;->newFrelon(I)Lfr/testudo/spacecorsair/business/ennemis/FrelonShip;

    move-result-object v1

    .line 855
    :goto_12e
    if-eqz v1, :cond_e

    .line 856
    invoke-virtual {v1, v4}, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->setElite(Z)Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    .line 857
    iget v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->idx:I

    const/16 v2, 0x9

    invoke-static {v0, v2}, Lfr/testudo/spacecorsair/mod/ModFaction;->str(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lfr/testudo/spacecorsair/mod/ModFaction;->name(Lfr/testudo/spacecorsair/business/Element;Ljava/lang/String;)V

    .line 858
    iget v2, v1, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->maxLife:F

    iget v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->idx:I

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModFaction;->lance(I)Z

    move-result v0

    if-eqz v0, :cond_19e

    const/high16 v0, 0x41200000    # 10.0f

    :goto_14a
    mul-float/2addr v0, v2

    iput v0, v1, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->maxLife:F

    .line 859
    iget v0, v1, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->maxLife:F

    iput v0, v1, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->life:F

    .line 860
    iput v9, v1, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->lifeInPourc:F

    .line 861
    iget-object v0, v1, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->lifeBar:Lfr/testudo/spacecorsair/display/hud/InfoBarEnnemis;

    if-eqz v0, :cond_15c

    iget-object v0, v1, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->lifeBar:Lfr/testudo/spacecorsair/display/hud/InfoBarEnnemis;

    invoke-virtual {v0, v9}, Lfr/testudo/spacecorsair/display/hud/InfoBarEnnemis;->setValue(F)V

    .line 862
    :cond_15c
    iget-object v2, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->center:Lfr/testudo/spacecorsair/engine/Vector2;

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lfr/testudo/spacecorsair/mod/ModFaction;->place(Lfr/testudo/spacecorsair/business/ennemis/Ennemis;Lfr/testudo/spacecorsair/engine/Vector2;Lfr/testudo/spacecorsair/business/Element;ZZ)Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    move-result-object v0

    iput-object v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->target:Lfr/testudo/spacecorsair/business/Element;

    .line 863
    iget v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->idx:I

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModFaction;->lance(I)Z

    move-result v0

    if-eqz v0, :cond_170

    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModLance;->forceHolder(Lfr/testudo/spacecorsair/business/Element;)V

    :cond_170
    move v0, v5

    .line 864
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

    .line 853
    goto :goto_122

    .line 854
    :cond_199
    invoke-direct {p0, v5, v4}, Lfr/testudo/spacecorsair/mod/ModFaction;->foe(IZ)Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    move-result-object v1

    goto :goto_12e

    .line 858
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

    .line 864
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

    .line 866
    :cond_1ba
    const-string v0, "KILL_ENEMY_TYPE"

    iget-object v1, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->obj:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d7

    .line 867
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

    .line 868
    :cond_1d7
    const-string v0, "DESTROY_STATION"

    iget-object v1, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->obj:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_26c

    .line 869
    invoke-direct {p0}, Lfr/testudo/spacecorsair/mod/ModFaction;->foeLevel()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisFactory;->newRocketTourelle(I)Lfr/testudo/spacecorsair/business/ennemis/RocketTourelle;

    move-result-object v1

    .line 870
    if-eqz v1, :cond_e

    .line 871
    invoke-virtual {v1, v4}, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->setElite(Z)Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    .line 872
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

    .line 873
    iget v0, v1, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->maxLife:F

    const/high16 v2, 0x41000000    # 8.0f

    mul-float/2addr v0, v2

    iput v0, v1, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->maxLife:F

    .line 874
    iget v0, v1, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->maxLife:F

    iput v0, v1, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->life:F

    .line 875
    iput v9, v1, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->lifeInPourc:F

    .line 876
    iget-object v0, v1, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->lifeBar:Lfr/testudo/spacecorsair/display/hud/InfoBarEnnemis;

    if-eqz v0, :cond_233

    iget-object v0, v1, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->lifeBar:Lfr/testudo/spacecorsair/display/hud/InfoBarEnnemis;

    invoke-virtual {v0, v9}, Lfr/testudo/spacecorsair/display/hud/InfoBarEnnemis;->setValue(F)V

    .line 877
    :cond_233
    iget-object v2, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->center:Lfr/testudo/spacecorsair/engine/Vector2;

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lfr/testudo/spacecorsair/mod/ModFaction;->place(Lfr/testudo/spacecorsair/business/ennemis/Ennemis;Lfr/testudo/spacecorsair/engine/Vector2;Lfr/testudo/spacecorsair/business/Element;ZZ)Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    move-result-object v0

    iput-object v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->target:Lfr/testudo/spacecorsair/business/Element;

    move v6, v5

    .line 878
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

    .line 872
    :cond_267
    const-string v0, "Authority Relay Station"

    goto :goto_21a

    :cond_26a
    move v0, v12

    .line 878
    goto :goto_250

    .line 880
    :cond_26c
    const-string v0, "ESCORT"

    iget-object v1, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->obj:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_36f

    .line 881
    new-instance v2, Lfr/testudo/spacecorsair/engine/Vector2;

    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->lastCourier:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-direct {v2, v0}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>(Lfr/testudo/spacecorsair/engine/Vector2;)V

    .line 882
    iget-boolean v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->courierMoving:Z

    if-nez v0, :cond_343

    move v0, v4

    .line 883
    :goto_282
    iget v1, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->phase:I

    if-ne v1, v4, :cond_2e2

    iget-boolean v1, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->courierMoving:Z

    if-nez v1, :cond_2e2

    iget-boolean v1, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->secondLegPlaced:Z

    if-nez v1, :cond_2e2

    .line 885
    iget-object v1, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->entry:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-static {v1, v3}, Lfr/testudo/spacecorsair/mod/ModPlace;->farthestStation(Lfr/testudo/spacecorsair/engine/Vector2;Lfr/testudo/spacecorsair/business/world/station/Station;)Lfr/testudo/spacecorsair/business/world/station/Station;

    move-result-object v1

    .line 886
    iget-object v3, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->endAt:Lfr/testudo/spacecorsair/engine/Vector2;

    if-eqz v1, :cond_346

    iget-object v1, v1, Lfr/testudo/spacecorsair/business/world/station/Station;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    :goto_29a
    invoke-virtual {v3, v1}, Lfr/testudo/spacecorsair/engine/Vector2;->setSameAs(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 887
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

    .line 888
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

    .line 889
    iget-object v1, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->lastCourier:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v1, v2}, Lfr/testudo/spacecorsair/engine/Vector2;->setSameAs(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 890
    iput-boolean v4, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->secondLegPlaced:Z

    .line 891
    invoke-direct {p0}, Lfr/testudo/spacecorsair/mod/ModFaction;->save()V

    .line 893
    :cond_2e2
    invoke-direct {p0, v2, v4}, Lfr/testudo/spacecorsair/mod/ModFaction;->civil(Lfr/testudo/spacecorsair/engine/Vector2;Z)Lfr/testudo/spacecorsair/business/world/civil/CivilShip;

    move-result-object v1

    .line 894
    if-eqz v1, :cond_e

    .line 895
    iget v2, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->idx:I

    const/16 v3, 0x9

    invoke-static {v2, v3}, Lfr/testudo/spacecorsair/mod/ModFaction;->str(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lfr/testudo/spacecorsair/mod/ModFaction;->name(Lfr/testudo/spacecorsair/business/Element;Ljava/lang/String;)V

    .line 896
    iget v2, v1, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->maxLife:F

    const/high16 v3, 0x40c00000    # 6.0f

    mul-float/2addr v2, v3

    iput v2, v1, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->maxLife:F

    .line 897
    iget v2, v1, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->maxLife:F

    iput v2, v1, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->life:F

    .line 898
    iput-boolean v4, v1, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->isMissionObjective:Z

    .line 899
    sget-object v2, Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;->GREEN:Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;

    iput-object v2, v1, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->missionObjectiveColor:Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;

    .line 900
    iput-object v1, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->target:Lfr/testudo/spacecorsair/business/Element;

    .line 901
    iget-object v2, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->gate:Lfr/testudo/spacecorsair/engine/Vector2;

    iget-object v3, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->endAt:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v2, v3}, Lfr/testudo/spacecorsair/engine/Vector2;->setSameAs(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 902
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

    .line 904
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

    .line 905
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->lastCourier:Lfr/testudo/spacecorsair/engine/Vector2;

    iget-object v1, v1, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/engine/Vector2;->setSameAs(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 906
    const/16 v0, 0x2710

    iput v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->courierCheck:I

    goto/16 :goto_e

    :cond_343
    move v0, v5

    .line 882
    goto/16 :goto_282

    .line 886
    :cond_346
    iget-object v1, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->entry:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModFaction;->farGate(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    move-result-object v1

    goto/16 :goto_29a

    .line 903
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

    .line 904
    :cond_36c
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->entry:Lfr/testudo/spacecorsair/engine/Vector2;

    goto :goto_32a

    .line 908
    :cond_36f
    const-string v0, "SCAN_CIVIL"

    iget-object v1, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->obj:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3a5

    .line 909
    iget v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->goal:I

    new-array v0, v0, [I

    iput-object v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->scanMs:[I

    .line 910
    :goto_37f
    iget v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->goal:I

    if-ge v5, v0, :cond_e

    .line 911
    iget v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->progress:I

    if-ge v5, v0, :cond_394

    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->scanMs:[I

    const/4 v1, -0x1

    aput v1, v0, v5

    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->civs:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 910
    :goto_391
    add-int/lit8 v5, v5, 0x1

    goto :goto_37f

    .line 912
    :cond_394
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->center:Lfr/testudo/spacecorsair/engine/Vector2;

    const/high16 v1, 0x43960000    # 300.0f

    const v2, 0x45228000    # 2600.0f

    invoke-static {v0, v1, v2}, Lfr/testudo/spacecorsair/mod/ModFaction;->away(Lfr/testudo/spacecorsair/engine/Vector2;FF)Lfr/testudo/spacecorsair/engine/Vector2;

    move-result-object v0

    iget-object v1, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->center:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-direct {p0, v0, v1}, Lfr/testudo/spacecorsair/mod/ModFaction;->scanTarget(Lfr/testudo/spacecorsair/engine/Vector2;Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/business/world/civil/CivilShip;

    goto :goto_391

    .line 914
    :cond_3a5
    const-string v0, "KILL_FLAGSHIP"

    iget-object v1, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->obj:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 915
    iget v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->idx:I

    const/16 v1, 0x8

    invoke-static {v0, v1}, Lfr/testudo/spacecorsair/mod/ModFaction;->str(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v4}, Lfr/testudo/spacecorsair/mod/ModCapitals;->ensure(Ljava/lang/String;Z)Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;

    move-result-object v0

    .line 916
    if-eqz v0, :cond_e

    .line 917
    iput-boolean v4, v0, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->isMissionObjective:Z

    .line 918
    sget-object v1, Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;->RED:Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;

    iput-object v1, v0, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->missionObjectiveColor:Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;

    .line 919
    iput-object v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->target:Lfr/testudo/spacecorsair/business/Element;

    goto/16 :goto_e
.end method

.method private side()I
    .registers 5

    .prologue
    const/4 v0, 0x2

    .line 614
    iget v1, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->idx:I

    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModFaction;->key(I)Ljava/lang/String;

    move-result-object v1

    .line 615
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

    .line 617
    :cond_21
    :goto_21
    return v0

    .line 616
    :cond_22
    const-string v2, "varn"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_32

    iget v1, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->idx:I

    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModFaction;->order(I)I

    move-result v1

    if-eq v1, v0, :cond_21

    .line 617
    :cond_32
    const/4 v0, 0x0

    goto :goto_21
.end method

.method private stateKey()Ljava/lang/String;
    .registers 3

    .prologue
    .line 526
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

    :cond_1d
    return-object v0
.end method

.method static testDrive(Ljava/lang/String;Lfr/testudo/spacecorsair/business/player/PlayerShip;)Z
    .registers 10

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 477
    :try_start_2
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->currentMission:Lfr/testudo/spacecorsair/business/mission/Mission;

    .line 478
    if-eqz v0, :cond_e

    iget-object v3, v0, Lfr/testudo/spacecorsair/business/mission/Mission;->missionEngine:Lfr/testudo/spacecorsair/business/mission/MissionListener;

    instance-of v3, v3, Lfr/testudo/spacecorsair/mod/ModFaction;

    if-nez v3, :cond_10

    :cond_e
    move v0, v1

    .line 508
    :goto_f
    return v0

    .line 479
    :cond_10
    iget-object v0, v0, Lfr/testudo/spacecorsair/business/mission/Mission;->missionEngine:Lfr/testudo/spacecorsair/business/mission/MissionListener;

    check-cast v0, Lfr/testudo/spacecorsair/mod/ModFaction;

    .line 480
    const-string v3, "pickup"

    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_81

    .line 481
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

    .line 482
    :goto_55
    iget-object v4, v0, Lfr/testudo/spacecorsair/mod/ModFaction;->taken:[Z

    array-length v4, v4

    if-ge v3, v4, :cond_7f

    .line 483
    iget-object v4, v0, Lfr/testudo/spacecorsair/mod/ModFaction;->taken:[Z

    aget-boolean v4, v4, v3

    if-eqz v4, :cond_63

    .line 482
    add-int/lit8 v3, v3, 0x1

    goto :goto_55

    .line 484
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

    .line 485
    iget-object v0, p1, Lfr/testudo/spacecorsair/business/player/PlayerShip;->speed:Lfr/testudo/spacecorsair/engine/Vector2;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Lfr/testudo/spacecorsair/engine/Vector2;->set(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    move v0, v2

    .line 486
    goto :goto_f

    :cond_7f
    move v0, v2

    .line 488
    goto :goto_f

    .line 490
    :cond_81
    const-string v3, "outpostkill"

    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d5

    .line 491
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

    .line 492
    iget-object v2, v0, Lfr/testudo/spacecorsair/mod/ModFaction;->outpost:Lfr/testudo/spacecorsair/business/world/civil/CivilShip;

    if-eqz v2, :cond_b0

    iget-object v0, v0, Lfr/testudo/spacecorsair/mod/ModFaction;->outpost:Lfr/testudo/spacecorsair/business/world/civil/CivilShip;

    const/4 v2, 0x0

    iput v2, v0, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->life:F

    :cond_b0
    move v0, v1

    .line 493
    goto/16 :goto_f

    .line 491
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

    .line 495
    :cond_d5
    const-string v3, "escort"

    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_19b

    .line 496
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

    .line 497
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

    .line 496
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

    .line 497
    goto/16 :goto_f

    .line 498
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

    .line 499
    iget-object v3, p1, Lfr/testudo/spacecorsair/business/player/PlayerShip;->speed:Lfr/testudo/spacecorsair/engine/Vector2;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lfr/testudo/spacecorsair/engine/Vector2;->set(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 500
    iget-object v3, v0, Lfr/testudo/spacecorsair/mod/ModFaction;->target:Lfr/testudo/spacecorsair/business/Element;

    iget-object v3, v3, Lfr/testudo/spacecorsair/business/Element;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget-object v4, v0, Lfr/testudo/spacecorsair/mod/ModFaction;->gate:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v3, v4}, Lfr/testudo/spacecorsair/engine/Vector2;->setSameAs(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 501
    iget-object v3, v0, Lfr/testudo/spacecorsair/mod/ModFaction;->target:Lfr/testudo/spacecorsair/business/Element;

    invoke-virtual {v3}, Lfr/testudo/spacecorsair/business/Element;->updateSapCoords()V

    .line 502
    iget v3, v0, Lfr/testudo/spacecorsair/mod/ModFaction;->testTicks:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v0, Lfr/testudo/spacecorsair/mod/ModFaction;->testTicks:I
    :try_end_17b
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_17b} :catch_17e

    move v0, v2

    .line 503
    goto/16 :goto_f

    .line 505
    :catch_17e
    move-exception v0

    .line 506
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

    .line 508
    goto/16 :goto_f
.end method

.method static testObjective()Lfr/testudo/spacecorsair/engine/Vector2;
    .registers 2

    .prologue
    .line 513
    :try_start_0
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->currentMission:Lfr/testudo/spacecorsair/business/mission/Mission;

    .line 514
    if-eqz v0, :cond_27

    iget-object v1, v0, Lfr/testudo/spacecorsair/business/mission/Mission;->missionEngine:Lfr/testudo/spacecorsair/business/mission/MissionListener;

    instance-of v1, v1, Lfr/testudo/spacecorsair/mod/ModFaction;

    if-eqz v1, :cond_27

    .line 515
    iget-object v0, v0, Lfr/testudo/spacecorsair/business/mission/Mission;->missionEngine:Lfr/testudo/spacecorsair/business/mission/MissionListener;

    check-cast v0, Lfr/testudo/spacecorsair/mod/ModFaction;

    .line 516
    iget-boolean v1, v0, Lfr/testudo/spacecorsair/mod/ModFaction;->planned:Z

    if-eqz v1, :cond_27

    iget-object v1, v0, Lfr/testudo/spacecorsair/mod/ModFaction;->target:Lfr/testudo/spacecorsair/business/Element;

    if-eqz v1, :cond_23

    iget-object v1, v0, Lfr/testudo/spacecorsair/mod/ModFaction;->target:Lfr/testudo/spacecorsair/business/Element;

    iget-boolean v1, v1, Lfr/testudo/spacecorsair/business/Element;->removed:Z

    if-nez v1, :cond_23

    iget-object v0, v0, Lfr/testudo/spacecorsair/mod/ModFaction;->target:Lfr/testudo/spacecorsair/business/Element;

    iget-object v0, v0, Lfr/testudo/spacecorsair/business/Element;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    .line 521
    :goto_22
    return-object v0

    .line 516
    :cond_23
    iget-object v0, v0, Lfr/testudo/spacecorsair/mod/ModFaction;->center:Lfr/testudo/spacecorsair/engine/Vector2;
    :try_end_25
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_25} :catch_26

    goto :goto_22

    .line 518
    :catch_26
    move-exception v0

    .line 521
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

    .line 327
    const v0, 0x7f7f03e8

    sub-int v1, p0, v0

    .line 328
    if-ltz v1, :cond_1ad

    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModFaction;->count()I

    move-result v0

    if-ge v1, v0, :cond_1ad

    .line 329
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModCapitals;->FACTIONS:[Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;

    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModFaction;->key(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModFaction;->faction(Ljava/lang/String;)I

    move-result v2

    aget-object v2, v0, v2

    .line 330
    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModFaction;->key(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModFaction;->commander(Ljava/lang/String;)I

    move-result v0

    .line 331
    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModFaction;->zoneOf(I)Lfr/testudo/spacecorsair/game/levels/LevelId;

    move-result-object v3

    .line 332
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

    .line 333
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

    .line 334
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

    .line 335
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

    .line 336
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

    .line 337
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

    .line 341
    :goto_1a1
    return-object v0

    .line 334
    :cond_1a2
    const-string v0, ""

    goto/16 :goto_9f

    .line 335
    :cond_1a6
    const-string v0, ""

    goto/16 :goto_fc

    .line 336
    :cond_1aa
    const-string v0, ""

    goto :goto_15d

    .line 339
    :cond_1ad
    const v0, 0x7f7f07d0

    sub-int v0, p0, v0

    .line 340
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

    .line 341
    :cond_1d8
    const/4 v0, 0x0

    goto :goto_1a1
.end method

.method private static xy(Ljava/lang/String;Lfr/testudo/spacecorsair/engine/Vector2;)V
    .registers 5

    .prologue
    .line 590
    const-string v0, ","

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 591
    const/4 v1, 0x0

    aget-object v1, v0, v1

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    const/4 v2, 0x1

    aget-object v0, v0, v2

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    invoke-virtual {p1, v1, v0}, Lfr/testudo/spacecorsair/engine/Vector2;->set(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 592
    return-void
.end method

.method static zoneOf(I)Lfr/testudo/spacecorsair/game/levels/LevelId;
    .registers 7

    .prologue
    .line 350
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModFaction;->active()Lfr/testudo/spacecorsair/mod/ModFaction;

    move-result-object v0

    .line 351
    if-eqz v0, :cond_11

    iget v1, v0, Lfr/testudo/spacecorsair/mod/ModFaction;->idx:I

    if-ne v1, p0, :cond_11

    iget-object v1, v0, Lfr/testudo/spacecorsair/mod/ModFaction;->zone:Lfr/testudo/spacecorsair/game/levels/LevelId;

    if-eqz v1, :cond_11

    iget-object v0, v0, Lfr/testudo/spacecorsair/mod/ModFaction;->zone:Lfr/testudo/spacecorsair/game/levels/LevelId;

    .line 353
    :goto_10
    return-object v0

    .line 352
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

    .line 353
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
    .line 1366
    :try_start_0
    invoke-direct {p0}, Lfr/testudo/spacecorsair/mod/ModFaction;->instruction()Ljava/lang/String;

    move-result-object v0

    .line 1367
    if-eqz v0, :cond_7

    .line 1370
    :cond_6
    :goto_6
    return-object v0

    .line 1367
    :cond_7
    const-string v0, ""
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_9} :catch_a

    goto :goto_6

    .line 1368
    :catch_a
    move-exception v0

    .line 1369
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->instrText:Ljava/lang/String;

    .line 1370
    if-nez v0, :cond_6

    const-string v0, ""

    goto :goto_6
.end method

.method public giveUp()V
    .registers 1

    .prologue
    .line 1445
    invoke-direct {p0}, Lfr/testudo/spacecorsair/mod/ModFaction;->cleanup()V

    .line 1446
    invoke-virtual {p0}, Lfr/testudo/spacecorsair/mod/ModFaction;->terminate()V

    .line 1447
    return-void
.end method

.method public init()V
    .registers 9

    .prologue
    const/4 v1, 0x0

    .line 1426
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModFaction;->prefs()Landroid/content/SharedPreferences;

    move-result-object v2

    .line 1427
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

    .line 1428
    invoke-direct {p0}, Lfr/testudo/spacecorsair/mod/ModFaction;->cleanup()V

    .line 1429
    iput-boolean v1, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->planned:Z

    .line 1430
    iput v1, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->phase:I

    .line 1431
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

    .line 1432
    invoke-direct {p0}, Lfr/testudo/spacecorsair/mod/ModFaction;->save()V

    .line 1433
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

    .line 1434
    :cond_91
    iget v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->idx:I

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModFaction;->key(I)Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->idx:I

    const/16 v2, 0xb

    invoke-static {v1, v2}, Lfr/testudo/spacecorsair/mod/ModFaction;->str(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lfr/testudo/spacecorsair/mod/ModComms;->brief(Ljava/lang/String;Ljava/lang/String;)V

    .line 1435
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/Game;->currentLevel:Lfr/testudo/spacecorsair/game/levels/Level;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/levels/Level;->name:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lfr/testudo/spacecorsair/mod/ModFaction;->onZoneChanged(Ljava/lang/String;Ljava/lang/String;)V

    .line 1436
    return-void

    :cond_af
    move v0, v1

    .line 1427
    goto/16 :goto_2f

    .line 1431
    :cond_b2
    iget v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->idx:I

    const/4 v1, 0x4

    invoke-static {v0, v1}, Lfr/testudo/spacecorsair/mod/ModFaction;->str(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModFaction;->level(Ljava/lang/String;)Lfr/testudo/spacecorsair/game/levels/LevelId;

    move-result-object v0

    goto :goto_5e

    .line 1433
    :cond_be
    const-string v0, ""

    goto :goto_8a
.end method

.method public isCompleted()Z
    .registers 2

    .prologue
    .line 1440
    iget-boolean v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->completed:Z

    return v0
.end method

.method public onBeforePlayerDock()V
    .registers 3

    .prologue
    .line 1335
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

    .line 1341
    :cond_1d
    :goto_1d
    return-void

    .line 1336
    :cond_1e
    invoke-direct {p0}, Lfr/testudo/spacecorsair/mod/ModFaction;->secondSector()Lfr/testudo/spacecorsair/game/levels/LevelId;

    move-result-object v0

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModFaction;->sectorIs(Lfr/testudo/spacecorsair/game/levels/LevelId;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 1337
    invoke-direct {p0}, Lfr/testudo/spacecorsair/mod/ModFaction;->complete()V
    :try_end_2b
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_2b} :catch_2c

    goto :goto_1d

    .line 1338
    :catch_2c
    move-exception v0

    goto :goto_1d
.end method

.method public onDoPhysic(J)V
    .registers 12

    .prologue
    .line 949
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v6, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->playerShip:Lfr/testudo/spacecorsair/business/player/PlayerShip;

    .line 950
    const-string v0, "DONATE"

    iget-object v1, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->obj:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    invoke-direct {p0, v6, p1, p2}, Lfr/testudo/spacecorsair/mod/ModFaction;->donateTick(Lfr/testudo/spacecorsair/business/player/PlayerShip;J)V

    .line 1125
    :cond_11
    :goto_11
    return-void

    .line 951
    :cond_12
    iget-boolean v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->completed:Z

    if-nez v0, :cond_11

    iget-boolean v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->inZone:Z

    if-eqz v0, :cond_11

    if-eqz v6, :cond_11

    iget-boolean v0, v6, Lfr/testudo/spacecorsair/business/player/PlayerShip;->removed:Z

    if-nez v0, :cond_11

    .line 952
    iget-boolean v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->setupDone:Z

    if-nez v0, :cond_44

    .line 954
    iget v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->zoneMs:I

    if-nez v0, :cond_2f

    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->entry:Lfr/testudo/spacecorsair/engine/Vector2;

    iget-object v1, v6, Lfr/testudo/spacecorsair/business/player/PlayerShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/engine/Vector2;->setSameAs(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 955
    :cond_2f
    iget v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->zoneMs:I

    int-to-long v0, v0

    add-long/2addr v0, p1

    long-to-int v0, v0

    iput v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->zoneMs:I

    .line 956
    iget v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->zoneMs:I

    const/16 v1, 0x5dc

    if-le v0, v1, :cond_11

    iget-boolean v0, v6, Lfr/testudo/spacecorsair/business/player/PlayerShip;->isDocked:Z

    if-nez v0, :cond_11

    invoke-direct {p0}, Lfr/testudo/spacecorsair/mod/ModFaction;->setup()V

    goto :goto_11

    .line 959
    :cond_44
    invoke-static {v6}, Lfr/testudo/spacecorsair/mod/ModPlace;->tickBoost(Lfr/testudo/spacecorsair/business/player/PlayerShip;)V

    .line 960
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

    .line 961
    :cond_60
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->markers:[F

    if-eqz v0, :cond_1c8

    .line 962
    const/4 v0, 0x0

    :goto_65
    iget-object v1, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->taken:[Z

    array-length v1, v1

    if-ge v0, v1, :cond_190

    .line 963
    iget-object v1, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->taken:[Z

    aget-boolean v1, v1, v0

    if-eqz v1, :cond_73

    .line 962
    :cond_70
    :goto_70
    add-int/lit8 v0, v0, 0x1

    goto :goto_65

    .line 964
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

    .line 965
    mul-float/2addr v1, v1

    mul-float/2addr v2, v2

    add-float/2addr v1, v2

    float-to-double v2, v1

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    double-to-float v2, v2

    .line 966
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

    .line 967
    :cond_b3
    const/4 v1, 0x1

    iput-boolean v1, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->ambushed:Z

    .line 968
    const-string v1, "DELIVERY"

    iget-object v3, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->obj:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_15f

    const/4 v1, 0x3

    :goto_c1
    const/4 v3, 0x0

    invoke-direct {p0, v1, v6, v3}, Lfr/testudo/spacecorsair/mod/ModFaction;->reinforce(ILfr/testudo/spacecorsair/business/Element;Z)V

    .line 969
    const-string v1, "CONTACTS INBOUND"

    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/high16 v3, 0x3f800000    # 1.0f

    const v4, 0x3ecccccd    # 0.4f

    const v5, 0x3e99999a    # 0.3f

    invoke-static {v6, v1, v3, v4, v5}, Lfr/testudo/spacecorsair/mod/Mod;->floatText(Lfr/testudo/spacecorsair/business/Element;Ljava/lang/String;FFF)V

    .line 971
    :cond_d6
    const/high16 v1, 0x435c0000    # 220.0f

    cmpg-float v1, v2, v1

    if-gez v1, :cond_70

    .line 972
    iget-object v1, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->taken:[Z

    const/4 v2, 0x1

    aput-boolean v2, v1, v0

    .line 973
    iget v1, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->progress:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->progress:I

    .line 974
    sget-object v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v1, v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->soundManager:Lfr/testudo/spacecorsair/engine/SoundManager;

    invoke-virtual {v1}, Lfr/testudo/spacecorsair/engine/SoundManager;->playGateZap()V

    .line 975
    const-string v1, "RESCUE"

    iget-object v2, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->obj:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_162

    const-string v1, "PILOT RECOVERED"

    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 976
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

    .line 977
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

    .line 978
    const/4 v1, 0x1

    iput-boolean v1, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->ambushed:Z

    .line 979
    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-direct {p0, v1, v6, v2}, Lfr/testudo/spacecorsair/mod/ModFaction;->reinforce(ILfr/testudo/spacecorsair/business/Element;Z)V

    .line 981
    :cond_15a
    invoke-direct {p0}, Lfr/testudo/spacecorsair/mod/ModFaction;->save()V

    goto/16 :goto_70

    .line 968
    :cond_15f
    const/4 v1, 0x2

    goto/16 :goto_c1

    .line 975
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

    .line 976
    :cond_18d
    const-string v1, ""

    goto :goto_12d

    .line 984
    :cond_190
    iget v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->progress:I

    iget v1, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->goal:I

    if-lt v0, v1, :cond_11

    .line 985
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

    .line 987
    :cond_1aa
    const/4 v0, 0x1

    iput v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->phase:I

    .line 988
    const/4 v0, 0x0

    iput-object v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->markers:[F

    .line 989
    invoke-direct {p0}, Lfr/testudo/spacecorsair/mod/ModFaction;->save()V

    .line 990
    invoke-direct {p0}, Lfr/testudo/spacecorsair/mod/ModFaction;->activeSector()Lfr/testudo/spacecorsair/game/levels/LevelId;

    move-result-object v0

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModFaction;->sectorIs(Lfr/testudo/spacecorsair/game/levels/LevelId;)Z

    move-result v0

    iput-boolean v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->inZone:Z

    .line 991
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lfr/testudo/spacecorsair/mod/ModFaction;->markGates(Z)V

    goto/16 :goto_11

    .line 993
    :cond_1c3
    invoke-direct {p0}, Lfr/testudo/spacecorsair/mod/ModFaction;->complete()V

    goto/16 :goto_11

    .line 998
    :cond_1c8
    const-string v0, "DEFEND_CIVILIANS"

    iget-object v1, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->obj:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2a8

    .line 999
    const/4 v0, 0x0

    .line 1000
    iget-object v1, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->civs:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :goto_1da
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1f8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;

    if-eqz v0, :cond_69a

    iget-boolean v3, v0, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->removed:Z

    if-nez v3, :cond_69a

    iget v0, v0, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->life:F

    const/4 v3, 0x0

    cmpl-float v0, v0, v3

    if-lez v0, :cond_69a

    add-int/lit8 v1, v1, 0x1

    move v0, v1

    :goto_1f6
    move v1, v0

    goto :goto_1da

    .line 1001
    :cond_1f8
    const/4 v0, 0x2

    if-ge v1, v0, :cond_200

    invoke-direct {p0}, Lfr/testudo/spacecorsair/mod/ModFaction;->fail()V

    goto/16 :goto_11

    .line 1002
    :cond_200
    iget-boolean v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->wavesOn:Z

    if-nez v0, :cond_232

    .line 1004
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->civs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

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

    .line 1005
    :cond_22e
    iget-boolean v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->wavesOn:Z

    if-eqz v0, :cond_11

    .line 1007
    :cond_232
    iget v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->timer:I

    int-to-long v0, v0

    sub-long/2addr v0, p1

    long-to-int v0, v0

    iput v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->timer:I

    .line 1008
    iget v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->wavesLeft:I

    if-lez v0, :cond_299

    iget v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->timer:I

    if-gtz v0, :cond_299

    .line 1009
    iget v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->wavesLeft:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->wavesLeft:I

    .line 1010
    const/16 v0, 0x4e20

    iput v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->timer:I

    .line 1011
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->civs:Ljava/util/ArrayList;

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v2

    iget-object v1, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->civs:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    int-to-double v4, v1

    mul-double/2addr v2, v4

    double-to-int v1, v2

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfr/testudo/spacecorsair/business/Element;

    .line 1012
    const/4 v1, 0x1

    const/4 v2, 0x1

    invoke-direct {p0, v1, v6, v2}, Lfr/testudo/spacecorsair/mod/ModFaction;->reinforce(ILfr/testudo/spacecorsair/business/Element;Z)V

    .line 1013
    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-direct {p0, v1, v0, v2}, Lfr/testudo/spacecorsair/mod/ModFaction;->reinforce(ILfr/testudo/spacecorsair/business/Element;Z)V

    .line 1014
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

    .line 1015
    invoke-direct {p0}, Lfr/testudo/spacecorsair/mod/ModFaction;->save()V

    .line 1017
    :cond_299
    iget v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->wavesLeft:I

    if-nez v0, :cond_11

    invoke-direct {p0}, Lfr/testudo/spacecorsair/mod/ModFaction;->liveFoes()I

    move-result v0

    if-nez v0, :cond_11

    invoke-direct {p0}, Lfr/testudo/spacecorsair/mod/ModFaction;->complete()V

    goto/16 :goto_11

    .line 1018
    :cond_2a8
    const-string v0, "DEFEND_ZONE"

    iget-object v1, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->obj:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3d0

    .line 1019
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->outpost:Lfr/testudo/spacecorsair/business/world/civil/CivilShip;

    if-eqz v0, :cond_2f0

    .line 1020
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

    .line 1021
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

    .line 1022
    iget v1, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->outpostLost:I

    if-eq v0, v1, :cond_2f0

    iput v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->outpostLost:I

    invoke-direct {p0}, Lfr/testudo/spacecorsair/mod/ModFaction;->save()V

    .line 1024
    :cond_2f0
    iget-object v0, v6, Lfr/testudo/spacecorsair/business/player/PlayerShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget-object v1, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->center:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/engine/Vector2;->distance(Lfr/testudo/spacecorsair/engine/Vector2;)F

    move-result v0

    const/high16 v1, 0x44e10000    # 1800.0f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_3c5

    const/4 v0, 0x1

    .line 1025
    :goto_2ff
    if-eqz v0, :cond_31e

    .line 1026
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

    .line 1027
    :cond_314
    iget v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->holdMs:I

    int-to-long v0, v0

    add-long/2addr v0, p1

    long-to-int v0, v0

    iput v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->holdMs:I

    .line 1028
    const/4 v0, 0x1

    iput-boolean v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->wavesOn:Z

    .line 1030
    :cond_31e
    iget-boolean v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->wavesOn:Z

    if-eqz v0, :cond_3ba

    .line 1031
    iget v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->timer:I

    int-to-long v0, v0

    sub-long/2addr v0, p1

    long-to-int v0, v0

    iput v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->timer:I

    .line 1032
    iget v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->goal:I

    div-int/lit16 v7, v0, 0x3a98

    .line 1033
    iget v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->timer:I

    if-gtz v0, :cond_3ba

    iget v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->waveNo:I

    if-ge v0, v7, :cond_3ba

    .line 1035
    const/16 v0, 0x3a98

    iput v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->timer:I

    .line 1036
    iget v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->waveNo:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->waveNo:I

    .line 1037
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

    .line 1039
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->outpost:Lfr/testudo/spacecorsair/business/world/civil/CivilShip;

    if-eqz v0, :cond_3ca

    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->outpost:Lfr/testudo/spacecorsair/business/world/civil/CivilShip;

    iget-boolean v0, v0, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->removed:Z

    if-nez v0, :cond_3ca

    add-int/lit8 v0, v8, 0x1

    div-int/lit8 v1, v0, 0x2

    .line 1040
    :goto_361
    if-lez v1, :cond_36f

    iget-object v2, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->outpost:Lfr/testudo/spacecorsair/business/world/civil/CivilShip;

    const/4 v3, 0x1

    invoke-direct {p0}, Lfr/testudo/spacecorsair/mod/ModFaction;->holdLevel()I

    move-result v4

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lfr/testudo/spacecorsair/mod/ModFaction;->reinforce(ILfr/testudo/spacecorsair/business/Element;ZIZ)V

    .line 1041
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

    .line 1042
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

    .line 1043
    invoke-direct {p0}, Lfr/testudo/spacecorsair/mod/ModFaction;->save()V

    .line 1046
    :cond_3ba
    iget v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->holdMs:I

    iget v1, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->goal:I

    if-lt v0, v1, :cond_11

    invoke-direct {p0}, Lfr/testudo/spacecorsair/mod/ModFaction;->complete()V

    goto/16 :goto_11

    .line 1024
    :cond_3c5
    const/4 v0, 0x0

    goto/16 :goto_2ff

    .line 1037
    :cond_3c8
    const/4 v0, 0x6

    goto :goto_34a

    .line 1039
    :cond_3ca
    const/4 v1, 0x0

    goto :goto_361

    .line 1041
    :cond_3cc
    const/4 v3, 0x0

    goto :goto_374

    :cond_3ce
    const/4 v5, 0x0

    goto :goto_37d

    .line 1047
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

    if-eqz v0, :cond_407

    .line 1048
    :cond_3e4
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->target:Lfr/testudo/spacecorsair/business/Element;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->target:Lfr/testudo/spacecorsair/business/Element;

    iget-boolean v0, v0, Lfr/testudo/spacecorsair/business/Element;->removed:Z

    if-eqz v0, :cond_11

    .line 1049
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->target:Lfr/testudo/spacecorsair/business/Element;

    iget v0, v0, Lfr/testudo/spacecorsair/business/Element;->life:F

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_3fc

    invoke-direct {p0}, Lfr/testudo/spacecorsair/mod/ModFaction;->complete()V

    goto/16 :goto_11

    .line 1050
    :cond_3fc
    const/4 v0, 0x0

    iput-boolean v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->setupDone:Z

    const/4 v0, 0x0

    iput v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->zoneMs:I

    const/4 v0, 0x0

    iput-object v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->target:Lfr/testudo/spacecorsair/business/Element;

    goto/16 :goto_11

    .line 1052
    :cond_407
    const-string v0, "KILL_ENEMY_TYPE"

    iget-object v1, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->obj:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_43c

    .line 1053
    iget v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->progress:I

    iget v1, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->goal:I

    if-lt v0, v1, :cond_41c

    invoke-direct {p0}, Lfr/testudo/spacecorsair/mod/ModFaction;->complete()V

    goto/16 :goto_11

    .line 1055
    :cond_41c
    invoke-direct {p0}, Lfr/testudo/spacecorsair/mod/ModFaction;->liveFoes()I

    move-result v0

    .line 1056
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

    .line 1057
    :cond_43c
    const-string v0, "ESCORT"

    iget-object v1, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->obj:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_553

    .line 1058
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->target:Lfr/testudo/spacecorsair/business/Element;

    if-eqz v0, :cond_11

    .line 1059
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->target:Lfr/testudo/spacecorsair/business/Element;

    iget-boolean v0, v0, Lfr/testudo/spacecorsair/business/Element;->removed:Z

    if-nez v0, :cond_459

    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->target:Lfr/testudo/spacecorsair/business/Element;

    iget v0, v0, Lfr/testudo/spacecorsair/business/Element;->life:F

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_473

    .line 1060
    :cond_459
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->target:Lfr/testudo/spacecorsair/business/Element;

    iget-object v0, v0, Lfr/testudo/spacecorsair/business/Element;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget-object v1, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->gate:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/engine/Vector2;->distance(Lfr/testudo/spacecorsair/engine/Vector2;)F

    move-result v0

    const/high16 v1, 0x442f0000    # 700.0f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_46e

    invoke-direct {p0}, Lfr/testudo/spacecorsair/mod/ModFaction;->escortArrived()V

    goto/16 :goto_11

    :cond_46e
    invoke-direct {p0}, Lfr/testudo/spacecorsair/mod/ModFaction;->fail()V

    goto/16 :goto_11

    .line 1063
    :cond_473
    iget-boolean v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->courierMoving:Z

    if-nez v0, :cond_48d

    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->target:Lfr/testudo/spacecorsair/business/Element;

    iget-object v0, v0, Lfr/testudo/spacecorsair/business/Element;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget-object v1, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->lastCourier:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/engine/Vector2;->distance(Lfr/testudo/spacecorsair/engine/Vector2;)F

    move-result v0

    const/high16 v1, 0x42700000    # 60.0f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_48d

    const/4 v0, 0x1

    iput-boolean v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->courierMoving:Z

    invoke-direct {p0}, Lfr/testudo/spacecorsair/mod/ModFaction;->save()V

    .line 1064
    :cond_48d
    const/high16 v0, 0x3f800000    # 1.0f

    iget-object v1, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->target:Lfr/testudo/spacecorsair/business/Element;

    iget-object v1, v1, Lfr/testudo/spacecorsair/business/Element;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget-object v2, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->gate:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v1, v2}, Lfr/testudo/spacecorsair/engine/Vector2;->distance(Lfr/testudo/spacecorsair/engine/Vector2;)F

    move-result v1

    iget v2, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->startDist:F

    div-float/2addr v1, v2

    sub-float/2addr v0, v1

    .line 1065
    iget-boolean v1, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->ambushed:Z

    if-nez v1, :cond_4c3

    const v1, 0x3e99999a    # 0.3f

    cmpl-float v1, v0, v1

    if-lez v1, :cond_4c3

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

    .line 1066
    :cond_4c3
    iget-boolean v1, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->ambushed2:Z

    if-nez v1, :cond_4e9

    const v1, 0x3f266666    # 0.65f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_4e9

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

    .line 1067
    :cond_4e9
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->target:Lfr/testudo/spacecorsair/business/Element;

    iget-object v0, v0, Lfr/testudo/spacecorsair/business/Element;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget-object v1, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->gate:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/engine/Vector2;->distance(Lfr/testudo/spacecorsair/engine/Vector2;)F

    move-result v0

    const/high16 v1, 0x43e10000    # 450.0f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_503

    .line 1068
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->target:Lfr/testudo/spacecorsair/business/Element;

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/business/Element;->remove()V

    .line 1069
    invoke-direct {p0}, Lfr/testudo/spacecorsair/mod/ModFaction;->escortArrived()V

    goto/16 :goto_11

    .line 1072
    :cond_503
    iget v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->courierCheck:I

    int-to-long v0, v0

    sub-long/2addr v0, p1

    long-to-int v0, v0

    iput v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->courierCheck:I

    .line 1073
    iget v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->courierCheck:I

    if-gtz v0, :cond_11

    .line 1075
    const/16 v0, 0x2710

    iput v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->courierCheck:I

    .line 1076
    iget-boolean v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->courierMoving:Z

    if-eqz v0, :cond_545

    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->target:Lfr/testudo/spacecorsair/business/Element;

    iget-object v0, v0, Lfr/testudo/spacecorsair/business/Element;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget-object v1, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->lastCourier:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/engine/Vector2;->distance(Lfr/testudo/spacecorsair/engine/Vector2;)F

    move-result v0

    const/high16 v1, 0x42700000    # 60.0f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_545

    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->target:Lfr/testudo/spacecorsair/business/Element;

    instance-of v0, v0, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;

    if-eqz v0, :cond_545

    .line 1077
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

    .line 1079
    :cond_545
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->lastCourier:Lfr/testudo/spacecorsair/engine/Vector2;

    iget-object v1, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->target:Lfr/testudo/spacecorsair/business/Element;

    iget-object v1, v1, Lfr/testudo/spacecorsair/business/Element;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/engine/Vector2;->setSameAs(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 1080
    invoke-direct {p0}, Lfr/testudo/spacecorsair/mod/ModFaction;->save()V

    goto/16 :goto_11

    .line 1082
    :cond_553
    const-string v0, "SCAN_CIVIL"

    iget-object v1, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->obj:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_63e

    .line 1083
    const/4 v0, 0x0

    move v1, v0

    :goto_55f
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->civs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_633

    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->scanMs:[I

    array-length v0, v0

    if-ge v1, v0, :cond_633

    .line 1084
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->civs:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;

    .line 1085
    if-eqz v0, :cond_57c

    iget-object v2, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->scanMs:[I

    aget v2, v2, v1

    if-gez v2, :cond_580

    .line 1083
    :cond_57c
    :goto_57c
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_55f

    .line 1086
    :cond_580
    iget-boolean v2, v0, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->removed:Z

    if-nez v2, :cond_58b

    iget v2, v0, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->life:F

    const/4 v3, 0x0

    cmpg-float v2, v2, v3

    if-gtz v2, :cond_5b1

    .line 1088
    :cond_58b
    iget-object v0, v6, Lfr/testudo/spacecorsair/business/player/PlayerShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModPlace;->ambushPoint(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    move-result-object v0

    iget-object v2, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->center:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-direct {p0, v0, v2}, Lfr/testudo/spacecorsair/mod/ModFaction;->scanTarget(Lfr/testudo/spacecorsair/engine/Vector2;Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/business/world/civil/CivilShip;

    move-result-object v0

    .line 1089
    if-eqz v0, :cond_5ab

    .line 1090
    iget-object v2, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->civs:Ljava/util/ArrayList;

    iget-object v3, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->civs:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1091
    iget-object v2, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->civs:Ljava/util/ArrayList;

    invoke-virtual {v2, v1, v0}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1093
    :cond_5ab
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->scanMs:[I

    const/4 v2, 0x0

    aput v2, v0, v1

    goto :goto_57c

    .line 1096
    :cond_5b1
    iget-object v2, v0, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget-object v3, v6, Lfr/testudo/spacecorsair/business/player/PlayerShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v2, v3}, Lfr/testudo/spacecorsair/engine/Vector2;->distance(Lfr/testudo/spacecorsair/engine/Vector2;)F

    move-result v2

    const/high16 v3, 0x43e10000    # 450.0f

    cmpg-float v2, v2, v3

    if-gez v2, :cond_57c

    .line 1097
    iget-object v2, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->scanMs:[I

    aget v3, v2, v1

    int-to-long v4, v3

    add-long/2addr v4, p1

    long-to-int v3, v4

    aput v3, v2, v1

    .line 1098
    iget-object v2, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->scanMs:[I

    aget v2, v2, v1

    const/16 v3, 0x5dc

    if-le v2, v3, :cond_57c

    .line 1099
    iget-object v2, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->scanMs:[I

    const/4 v3, -0x1

    aput v3, v2, v1

    .line 1100
    iget v2, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->progress:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->progress:I

    .line 1101
    const/4 v2, 0x0

    iput-boolean v2, v0, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->isMissionObjective:Z

    .line 1102
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SCANNED "

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

    .line 1103
    iget v2, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->progress:I

    iget v3, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->goal:I

    add-int/lit8 v3, v3, -0x1

    if-ne v2, v3, :cond_62e

    iget-boolean v2, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->ambushed:Z

    if-nez v2, :cond_62e

    .line 1104
    const/4 v2, 0x1

    iput-boolean v2, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->ambushed:Z

    .line 1105
    const-string v2, "FALSE TRANSPONDER: RAIDERS!"

    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/high16 v3, 0x3f800000    # 1.0f

    const v4, 0x3ecccccd    # 0.4f

    const v5, 0x3e99999a    # 0.3f

    invoke-static {v0, v2, v3, v4, v5}, Lfr/testudo/spacecorsair/mod/Mod;->floatText(Lfr/testudo/spacecorsair/business/Element;Ljava/lang/String;FFF)V

    .line 1106
    const/4 v0, 0x2

    const/4 v2, 0x0

    invoke-direct {p0, v0, v6, v2}, Lfr/testudo/spacecorsair/mod/ModFaction;->reinforce(ILfr/testudo/spacecorsair/business/Element;Z)V

    .line 1108
    :cond_62e
    invoke-direct {p0}, Lfr/testudo/spacecorsair/mod/ModFaction;->save()V

    goto/16 :goto_57c

    .line 1112
    :cond_633
    iget v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->progress:I

    iget v1, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->goal:I

    if-lt v0, v1, :cond_11

    invoke-direct {p0}, Lfr/testudo/spacecorsair/mod/ModFaction;->complete()V

    goto/16 :goto_11

    .line 1113
    :cond_63e
    const-string v0, "KILL_FLAGSHIP"

    iget-object v1, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->obj:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 1114
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->target:Lfr/testudo/spacecorsair/business/Element;

    if-eqz v0, :cond_11

    .line 1115
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->target:Lfr/testudo/spacecorsair/business/Element;

    iget-boolean v0, v0, Lfr/testudo/spacecorsair/business/Element;->removed:Z

    if-eqz v0, :cond_66b

    .line 1116
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->target:Lfr/testudo/spacecorsair/business/Element;

    iget v0, v0, Lfr/testudo/spacecorsair/business/Element;->life:F

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_660

    invoke-direct {p0}, Lfr/testudo/spacecorsair/mod/ModFaction;->complete()V

    goto/16 :goto_11

    .line 1117
    :cond_660
    const/4 v0, 0x0

    iput-boolean v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->setupDone:Z

    const/4 v0, 0x0

    iput v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->zoneMs:I

    const/4 v0, 0x0

    iput-object v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->target:Lfr/testudo/spacecorsair/business/Element;

    goto/16 :goto_11

    .line 1120
    :cond_66b
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

    .line 1121
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->target:Lfr/testudo/spacecorsair/business/Element;

    check-cast v0, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->attackPlayerIfItNotTheCaseAlready()V

    .line 1122
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->soundManager:Lfr/testudo/spacecorsair/engine/SoundManager;

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/engine/SoundManager;->playDanger()V

    goto/16 :goto_11

    :cond_69a
    move v0, v1

    goto/16 :goto_1f6
.end method

.method public onElementDestroyed(Lfr/testudo/spacecorsair/business/Element;)V
    .registers 2

    .prologue
    .line 1317
    return-void
.end method

.method public onElementDestroyedByPlayer(Lfr/testudo/spacecorsair/business/Element;)V
    .registers 8

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1322
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

    if-nez p1, :cond_c0

    const-string v0, "null"

    :goto_27
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " counted="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-eqz p1, :cond_ca

    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->spawned:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_ca

    move v0, v1

    :goto_3c
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " progress="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v4, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->progress:I

    if-eqz p1, :cond_cd

    iget-object v5, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->spawned:Ljava/util/ArrayList;

    invoke-virtual {v5, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_cd

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

    .line 1323
    :cond_6a
    const-string v0, "KILL_ENEMY_TYPE"

    iget-object v1, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->obj:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_bf

    if-eqz p1, :cond_bf

    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->spawned:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_bf

    .line 1324
    iget v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->progress:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->progress:I

    .line 1325
    invoke-direct {p0}, Lfr/testudo/spacecorsair/mod/ModFaction;->save()V

    .line 1326
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->playerShip:Lfr/testudo/spacecorsair/business/player/PlayerShip;

    .line 1327
    if-eqz v0, :cond_bf

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TARGETS "

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

    .line 1329
    :cond_bf
    return-void

    .line 1322
    :cond_c0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_27

    :cond_ca
    move v0, v2

    goto/16 :goto_3c

    :cond_cd
    move v1, v2

    goto :goto_52
.end method

.method public onPlayerDeath()V
    .registers 5

    .prologue
    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 1345
    invoke-direct {p0}, Lfr/testudo/spacecorsair/mod/ModFaction;->cleanup()V

    .line 1347
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

    .line 1348
    :cond_29
    const-string v0, "DELIVERY"

    iget-object v2, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->obj:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_50

    .line 1349
    new-array v0, v3, [Z

    iput-object v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->taken:[Z

    .line 1350
    const/4 v0, 0x2

    new-array v0, v0, [F

    iget-object v2, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->center:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v2, v2, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    aput v2, v0, v1

    iget-object v2, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->center:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v2, v2, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    aput v2, v0, v3

    iput-object v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->markers:[F

    .line 1356
    :cond_48
    :goto_48
    iput v1, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->progress:I

    .line 1357
    iput v1, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->phase:I

    .line 1358
    invoke-direct {p0}, Lfr/testudo/spacecorsair/mod/ModFaction;->save()V

    .line 1360
    :cond_4f
    return-void

    .line 1351
    :cond_50
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->markers:[F

    if-eqz v0, :cond_58

    iget v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->phase:I

    if-ne v0, v3, :cond_62

    .line 1352
    :cond_58
    const/4 v0, 0x6

    iget-object v2, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->center:Lfr/testudo/spacecorsair/engine/Vector2;

    const v3, 0x45098000    # 2200.0f

    invoke-direct {p0, v0, v2, v3}, Lfr/testudo/spacecorsair/mod/ModFaction;->scatter(ILfr/testudo/spacecorsair/engine/Vector2;F)V

    goto :goto_48

    :cond_62
    move v0, v1

    .line 1354
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

    .line 1302
    iget-object v2, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->spawned:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 1303
    iget-object v2, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->civs:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 1304
    iput-object v3, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->outpost:Lfr/testudo/spacecorsair/business/world/civil/CivilShip;

    .line 1305
    iput-object v3, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->target:Lfr/testudo/spacecorsair/business/Element;

    .line 1306
    iput-boolean v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->setupDone:Z

    .line 1307
    iput v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->zoneMs:I

    .line 1308
    iput-boolean v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->wavesOn:Z

    .line 1309
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModPlace;->clearBoost()V

    .line 1310
    invoke-direct {p0}, Lfr/testudo/spacecorsair/mod/ModFaction;->activeSector()Lfr/testudo/spacecorsair/game/levels/LevelId;

    move-result-object v2

    .line 1311
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

    .line 1312
    invoke-direct {p0, v1}, Lfr/testudo/spacecorsair/mod/ModFaction;->markGates(Z)V

    .line 1313
    return-void
.end method

.method public restoreState()V
    .registers 6

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 1460
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModFaction;->prefs()Landroid/content/SharedPreferences;

    move-result-object v3

    .line 1461
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

    .line 1462
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->spawned:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1463
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->civs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1464
    iput-object v2, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->outpost:Lfr/testudo/spacecorsair/business/world/civil/CivilShip;

    .line 1465
    iput-object v2, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->target:Lfr/testudo/spacecorsair/business/Element;

    .line 1466
    iput-boolean v1, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->setupDone:Z

    .line 1467
    iput v1, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->zoneMs:I

    .line 1468
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

    .line 1469
    :goto_59
    if-eqz v0, :cond_67

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModFaction;->level(Ljava/lang/String;)Lfr/testudo/spacecorsair/game/levels/LevelId;

    move-result-object v1

    if-eqz v1, :cond_67

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModFaction;->level(Ljava/lang/String;)Lfr/testudo/spacecorsair/game/levels/LevelId;

    move-result-object v0

    iput-object v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->zone:Lfr/testudo/spacecorsair/game/levels/LevelId;

    .line 1470
    :cond_67
    invoke-direct {p0}, Lfr/testudo/spacecorsair/mod/ModFaction;->load()V

    .line 1471
    return-void

    :cond_6b
    move v0, v1

    .line 1461
    goto :goto_28

    :cond_6d
    move-object v0, v2

    .line 1468
    goto :goto_59
.end method

.method public saveState()V
    .registers 1

    .prologue
    .line 1475
    return-void
.end method

.method public terminate()V
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 1451
    invoke-direct {p0, v0}, Lfr/testudo/spacecorsair/mod/ModFaction;->markGates(Z)V

    .line 1452
    iput-boolean v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->completed:Z

    .line 1453
    iput-boolean v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->planned:Z

    .line 1454
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModFaction;->prefs()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1455
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

    .line 1456
    :cond_55
    return-void
.end method
