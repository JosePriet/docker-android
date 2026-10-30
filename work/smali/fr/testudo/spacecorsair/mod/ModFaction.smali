.class public Lfr/testudo/spacecorsair/mod/ModFaction;
.super Lfr/testudo/spacecorsair/business/mission/MissionListener;
.source "ModFaction.java"


# static fields
.field private static final FAMILY_LABEL:[Ljava/lang/String;

.field static final OUTPOST_HULL:I = 0xc

.field static final REAVER:I = 0x0

.field static final TEXT_DESC:I = 0x7f7f03e8

.field static final TEXT_DONE:I = 0x7f7f07d0

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

.field private timer:I

.field private waveNo:I

.field private wavesLeft:I

.field private wavesOn:Z

.field private zone:Lfr/testudo/spacecorsair/game/levels/LevelId;

.field private zoneMs:I


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const/4 v3, -0x1

    .line 37
    const/16 v0, 0xc

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "modRailgun"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "Railgun"

    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "modAutocannon"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "Autocannon"

    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

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

    const/16 v1, 0x9

    const-string v2, "Disintegrator"

    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "modArcProjector"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "Arc Projector"

    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModFaction;->FAMILY_LABEL:[Ljava/lang/String;

    .line 1052
    new-instance v0, Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-direct {v0}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>()V

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModFaction;->pos:Lfr/testudo/spacecorsair/engine/Vector2;

    .line 1055
    sput v3, Lfr/testudo/spacecorsair/mod/ModFaction;->holdSec:I

    sput v3, Lfr/testudo/spacecorsair/mod/ModFaction;->arrowM:I

    return-void
.end method

.method private constructor <init>(I)V
    .registers 3

    .prologue
    .line 357
    invoke-direct {p0}, Lfr/testudo/spacecorsair/business/mission/MissionListener;-><init>()V

    .line 333
    new-instance v0, Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-direct {v0}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>()V

    iput-object v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->ref:Lfr/testudo/spacecorsair/engine/Vector2;

    .line 334
    new-instance v0, Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-direct {v0}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>()V

    iput-object v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->entry:Lfr/testudo/spacecorsair/engine/Vector2;

    .line 335
    new-instance v0, Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-direct {v0}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>()V

    iput-object v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->center:Lfr/testudo/spacecorsair/engine/Vector2;

    .line 336
    new-instance v0, Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-direct {v0}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>()V

    iput-object v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->endAt:Lfr/testudo/spacecorsair/engine/Vector2;

    .line 338
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->spawned:Ljava/util/ArrayList;

    .line 339
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->civs:Ljava/util/ArrayList;

    .line 353
    new-instance v0, Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-direct {v0}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>()V

    iput-object v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->gate:Lfr/testudo/spacecorsair/engine/Vector2;

    .line 354
    new-instance v0, Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-direct {v0}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>()V

    iput-object v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->lastCourier:Lfr/testudo/spacecorsair/engine/Vector2;

    .line 1282
    const/4 v0, -0x1

    iput v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->instrBranch:I

    .line 358
    iput p1, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->idx:I

    .line 359
    invoke-static {p1}, Lfr/testudo/spacecorsair/mod/ModFaction;->objective(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->obj:Ljava/lang/String;

    .line 360
    const/4 v0, 0x4

    invoke-static {p1, v0}, Lfr/testudo/spacecorsair/mod/ModFaction;->str(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModFaction;->level(Ljava/lang/String;)Lfr/testudo/spacecorsair/game/levels/LevelId;

    move-result-object v0

    iput-object v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->zone:Lfr/testudo/spacecorsair/game/levels/LevelId;

    .line 361
    invoke-static {p1}, Lfr/testudo/spacecorsair/mod/ModFaction;->key(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModFaction;->faction(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->fi:I

    .line 362
    return-void
.end method

.method private static active()Lfr/testudo/spacecorsair/mod/ModFaction;
    .registers 2

    .prologue
    .line 365
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->currentMission:Lfr/testudo/spacecorsair/business/mission/Mission;

    .line 366
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
    .line 314
    iget v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->phase:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_c

    .line 315
    invoke-direct {p0}, Lfr/testudo/spacecorsair/mod/ModFaction;->secondSector()Lfr/testudo/spacecorsair/game/levels/LevelId;

    move-result-object v0

    .line 316
    if-eqz v0, :cond_c

    .line 318
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
    .line 215
    if-eqz p0, :cond_4

    if-nez p1, :cond_5

    .line 261
    :cond_4
    :goto_4
    return-void

    .line 216
    :cond_5
    :try_start_5
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModFaction;->all()[Lfr/testudo/spacecorsair/business/mission/Mission;

    move-result-object v5

    .line 217
    sget-object v2, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v6, v2, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->currentMission:Lfr/testudo/spacecorsair/business/mission/Mission;

    .line 218
    sget-object v2, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v2, v2, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v2, v2, Lfr/testudo/spacecorsair/game/Game;->playerInfo:Lfr/testudo/spacecorsair/business/player/PlayerInfo;

    iget v7, v2, Lfr/testudo/spacecorsair/business/player/PlayerInfo;->level:I

    .line 219
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/32 v8, 0x5265c00

    div-long v8, v2, v8

    .line 220
    const/4 v2, 0x0

    move v4, v2

    :goto_20
    sget-object v2, Lfr/testudo/spacecorsair/mod/ModCapitals;->FACTIONS:[Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;

    array-length v2, v2

    if-ge v4, v2, :cond_4

    .line 221
    sget-object v2, Lfr/testudo/spacecorsair/mod/ModCapitals;->FACTIONS:[Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;

    aget-object v2, v2, v4

    iget-object v2, v2, Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;->hq:Lfr/testudo/spacecorsair/game/levels/LevelId;

    move-object/from16 v0, p0

    if-eq v2, v0, :cond_39

    sget-boolean v2, Lfr/testudo/spacecorsair/mod/ModFaction;->testHail:Z

    if-eqz v2, :cond_35

    if-eqz v4, :cond_39

    .line 220
    :cond_35
    :goto_35
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    goto :goto_20

    .line 222
    :cond_39
    sget-object v2, Lfr/testudo/spacecorsair/mod/ModCapitals;->FACTIONS:[Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;

    aget-object v2, v2, v4

    iget-object v10, v2, Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;->key:Ljava/lang/String;

    .line 223
    invoke-static {v10}, Lfr/testudo/spacecorsair/mod/ModRep;->rank(Ljava/lang/String;)I

    move-result v11

    .line 224
    if-lez v11, :cond_35

    .line 225
    const/4 v2, 0x2

    if-lt v11, v2, :cond_87

    .line 226
    const/4 v2, 0x0

    :goto_49
    array-length v3, v5

    if-ge v2, v3, :cond_87

    .line 227
    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModFaction;->contract(I)Z

    move-result v3

    if-nez v3, :cond_66

    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModFaction;->key(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_66

    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModFaction;->order(I)I

    move-result v3

    invoke-static {v3}, Lfr/testudo/spacecorsair/mod/ModV35;->finale(I)Z

    move-result v3

    if-eqz v3, :cond_69

    .line 226
    :cond_66
    add-int/lit8 v2, v2, 0x1

    goto :goto_49

    .line 228
    :cond_69
    sget-object v3, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v3, v3, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->missionRepository:Lfr/testudo/spacecorsair/business/mission/MissionRepository;

    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModFaction;->id(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v3, v12}, Lfr/testudo/spacecorsair/business/mission/MissionRepository;->hasDoneMission(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_66

    .line 229
    aget-object v3, v5, v2

    if-eq v6, v3, :cond_b1

    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModFaction;->minLevel(I)I

    move-result v3

    add-int/lit8 v3, v3, -0x2

    if-ge v7, v3, :cond_b1

    sget-boolean v3, Lfr/testudo/spacecorsair/mod/ModFaction;->testHail:Z

    if-nez v3, :cond_b1

    .line 234
    :cond_87
    :goto_87
    const/4 v2, 0x2

    if-lt v11, v2, :cond_e4

    sget-object v2, Lfr/testudo/spacecorsair/game/levels/LevelId;->THE_HIVE:Lfr/testudo/spacecorsair/game/levels/LevelId;

    move-object/from16 v0, p0

    if-ne v0, v2, :cond_e4

    .line 236
    const/4 v2, 0x0

    :goto_91
    array-length v3, v5

    if-ge v2, v3, :cond_e4

    .line 237
    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModFaction;->contract(I)Z

    move-result v3

    if-nez v3, :cond_ae

    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModFaction;->key(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_ae

    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModFaction;->order(I)I

    move-result v3

    invoke-static {v3}, Lfr/testudo/spacecorsair/mod/ModV35;->finale(I)Z

    move-result v3

    if-nez v3, :cond_c6

    .line 236
    :cond_ae
    add-int/lit8 v2, v2, 0x1

    goto :goto_91

    .line 230
    :cond_b1
    aget-object v3, v5, v2

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_87

    aget-object v2, v5, v2

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_87

    .line 258
    :catch_c3
    move-exception v2

    goto/16 :goto_4

    .line 238
    :cond_c6
    sget-object v3, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v3, v3, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->missionRepository:Lfr/testudo/spacecorsair/business/mission/MissionRepository;

    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModFaction;->id(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v3, v12}, Lfr/testudo/spacecorsair/business/mission/MissionRepository;->hasDoneMission(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_ae

    .line 239
    aget-object v3, v5, v2

    if-eq v6, v3, :cond_119

    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModFaction;->minLevel(I)I

    move-result v3

    add-int/lit8 v3, v3, -0x2

    if-ge v7, v3, :cond_119

    sget-boolean v3, Lfr/testudo/spacecorsair/mod/ModFaction;->testHail:Z

    if-nez v3, :cond_119

    .line 245
    :cond_e4
    :goto_e4
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 246
    const/4 v2, 0x0

    move v3, v2

    :goto_eb
    array-length v2, v5

    if-ge v3, v2, :cond_12d

    .line 247
    invoke-static {v3}, Lfr/testudo/spacecorsair/mod/ModFaction;->contract(I)Z

    move-result v2

    if-eqz v2, :cond_115

    invoke-static {v3}, Lfr/testudo/spacecorsair/mod/ModFaction;->hunt(I)Z

    move-result v2

    if-nez v2, :cond_115

    invoke-static {v3}, Lfr/testudo/spacecorsair/mod/ModFaction;->key(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_115

    invoke-static {v3}, Lfr/testudo/spacecorsair/mod/ModFaction;->amends(I)Z

    move-result v13

    const/4 v2, 0x1

    if-ne v11, v2, :cond_12b

    const/4 v2, 0x1

    :goto_10c
    if-ne v13, v2, :cond_115

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v12, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 246
    :cond_115
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_eb

    .line 240
    :cond_119
    aget-object v3, v5, v2

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_e4

    aget-object v2, v5, v2

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_e4

    .line 247
    :cond_12b
    const/4 v2, 0x0

    goto :goto_10c

    .line 249
    :cond_12d
    const/4 v2, 0x0

    move v3, v2

    :goto_12f
    const/4 v2, 0x2

    if-ge v3, v2, :cond_172

    invoke-virtual {v12}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_172

    .line 250
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

    .line 251
    aget-object v13, v5, v2

    move-object/from16 v0, p1

    invoke-interface {v0, v13}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_16e

    aget-object v2, v5, v2

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 249
    :cond_16e
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_12f

    .line 253
    :cond_172
    const/4 v2, 0x3

    if-lt v11, v2, :cond_1aa

    invoke-static {v10}, Lfr/testudo/spacecorsair/mod/ModV35;->huntLeft(Ljava/lang/String;)J

    move-result-wide v2

    const-wide/16 v12, 0x0

    cmp-long v2, v2, v12

    if-nez v2, :cond_1aa

    .line 254
    const/4 v2, 0x0

    :goto_180
    array-length v3, v5

    if-ge v2, v3, :cond_1aa

    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModFaction;->hunt(I)Z

    move-result v3

    if-eqz v3, :cond_1a7

    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModFaction;->key(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1a7

    aget-object v3, v5, v2

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1a7

    aget-object v3, v5, v2

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModV35;->huntNote()V

    :cond_1a7
    add-int/lit8 v2, v2, 0x1

    goto :goto_180

    .line 256
    :cond_1aa
    if-eqz v6, :cond_35

    iget-object v2, v6, Lfr/testudo/spacecorsair/business/mission/Mission;->missionEngine:Lfr/testudo/spacecorsair/business/mission/MissionListener;

    instance-of v2, v2, Lfr/testudo/spacecorsair/mod/ModFaction;

    if-eqz v2, :cond_35

    iget-object v2, v6, Lfr/testudo/spacecorsair/business/mission/Mission;->missionEngine:Lfr/testudo/spacecorsair/business/mission/MissionListener;

    check-cast v2, Lfr/testudo/spacecorsair/mod/ModFaction;

    iget v2, v2, Lfr/testudo/spacecorsair/mod/ModFaction;->idx:I

    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModFaction;->key(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_35

    move-object/from16 v0, p1

    invoke-interface {v0, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_35

    move-object/from16 v0, p1

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1cf
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_1cf} :catch_c3

    goto/16 :goto_35
.end method

.method private static declared-synchronized all()[Lfr/testudo/spacecorsair/business/mission/Mission;
    .registers 14

    .prologue
    const/4 v0, 0x0

    .line 189
    const-class v11, Lfr/testudo/spacecorsair/mod/ModFaction;

    monitor-enter v11

    :try_start_4
    sget-object v1, Lfr/testudo/spacecorsair/mod/ModFaction;->missions:[Lfr/testudo/spacecorsair/business/mission/Mission;

    if-nez v1, :cond_c9

    .line 190
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModFaction;->count()I

    move-result v1

    new-array v12, v1, [Lfr/testudo/spacecorsair/business/mission/Mission;

    move v10, v0

    .line 191
    :goto_f
    array-length v0, v12

    if-ge v10, v0, :cond_c7

    .line 192
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 193
    const/16 v0, 0x10

    invoke-static {v10, v0}, Lfr/testudo/spacecorsair/mod/ModFaction;->str(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I
    :try_end_20
    .catchall {:try_start_4 .. :try_end_20} :catchall_cd

    move-result v0

    if-lez v0, :cond_34

    .line 195
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
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_34} :catch_d0
    .catchall {:try_start_25 .. :try_end_34} :catchall_cd

    .line 201
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

    .line 202
    invoke-static {v10}, Lfr/testudo/spacecorsair/mod/ModFaction;->minLevel(I)I

    move-result v6

    new-instance v7, Lfr/testudo/spacecorsair/mod/ModFaction;

    invoke-direct {v7, v10}, Lfr/testudo/spacecorsair/mod/ModFaction;-><init>(I)V

    invoke-static {v10}, Lfr/testudo/spacecorsair/mod/ModFaction;->contract(I)Z

    move-result v8

    if-eqz v8, :cond_b1

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

    .line 203
    invoke-static {v10}, Lfr/testudo/spacecorsair/mod/ModFaction;->contract(I)Z

    move-result v1

    if-eqz v1, :cond_bf

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v10}, Lfr/testudo/spacecorsair/mod/ModFaction;->amends(I)Z

    move-result v1

    if-eqz v1, :cond_b8

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

    .line 204
    invoke-static {v10}, Lfr/testudo/spacecorsair/mod/ModFaction;->order(I)I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_c5

    invoke-static {v10}, Lfr/testudo/spacecorsair/mod/ModFaction;->order(I)I

    move-result v1

    const/4 v2, 0x4

    if-eq v1, v2, :cond_c5

    add-int/lit8 v1, v10, -0x1

    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModFaction;->id(I)Ljava/lang/String;

    move-result-object v1

    :goto_a8
    iput-object v1, v0, Lfr/testudo/spacecorsair/business/mission/Mission;->restrictedMissionId:Ljava/lang/String;

    .line 205
    aput-object v0, v12, v10

    .line 191
    add-int/lit8 v0, v10, 0x1

    move v10, v0

    goto/16 :goto_f

    .line 202
    :cond_b1
    invoke-static {v10}, Lfr/testudo/spacecorsair/mod/ModFaction;->minLevel(I)I

    move-result v8

    mul-int/lit16 v8, v8, 0x384

    goto :goto_57

    .line 203
    :cond_b8
    const-string v1, "Contract: "

    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_81

    :cond_bf
    const/4 v1, 0x2

    invoke-static {v10, v1}, Lfr/testudo/spacecorsair/mod/ModFaction;->str(II)Ljava/lang/String;

    move-result-object v1

    goto :goto_92

    .line 204
    :cond_c5
    const/4 v1, 0x0

    goto :goto_a8

    .line 207
    :cond_c7
    sput-object v12, Lfr/testudo/spacecorsair/mod/ModFaction;->missions:[Lfr/testudo/spacecorsair/business/mission/Mission;

    .line 209
    :cond_c9
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModFaction;->missions:[Lfr/testudo/spacecorsair/business/mission/Mission;
    :try_end_cb
    .catchall {:try_start_34 .. :try_end_cb} :catchall_cd

    monitor-exit v11

    return-object v0

    .line 189
    :catchall_cd
    move-exception v0

    monitor-exit v11

    throw v0

    .line 196
    :catch_d0
    move-exception v0

    goto/16 :goto_34
.end method

.method static amends(I)Z
    .registers 3

    .prologue
    .line 140
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
    .line 609
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v0

    const-wide v2, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v0, v2

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    mul-double/2addr v0, v2

    .line 610
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v2

    double-to-float v2, v2

    sub-float v3, p2, p1

    mul-float/2addr v2, v3

    add-float/2addr v2, p1

    .line 611
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
    .registers 18

    .prologue
    .line 84
    const-class v6, Lfr/testudo/spacecorsair/mod/ModFaction;

    monitor-enter v6

    :try_start_3
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModFaction;->rows:[[Ljava/lang/Object;

    if-nez v0, :cond_21d

    .line 85
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModFactionData;->MISSIONS:[[Ljava/lang/Object;

    sget-object v1, Lfr/testudo/spacecorsair/mod/ModV35;->FINALE:[[Ljava/lang/Object;

    sget-object v7, Lfr/testudo/spacecorsair/mod/ModRepData;->CONTRACTS:[[Ljava/lang/Object;

    .line 86
    array-length v2, v0

    array-length v3, v1

    add-int/2addr v2, v3

    new-array v8, v2, [[Ljava/lang/Object;

    .line 87
    const/4 v2, 0x0

    const/4 v3, 0x0

    array-length v4, v0

    invoke-static {v0, v2, v8, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 88
    const/4 v2, 0x0

    array-length v0, v0

    array-length v3, v1

    invoke-static {v1, v2, v8, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 89
    sget-object v9, Lfr/testudo/spacecorsair/mod/ModRepData;->KEYS:[Ljava/lang/String;

    .line 90
    array-length v0, v8

    array-length v1, v7

    add-int/2addr v0, v1

    array-length v1, v9

    add-int/2addr v0, v1

    new-array v10, v0, [[Ljava/lang/Object;

    .line 91
    const/4 v0, 0x0

    const/4 v1, 0x0

    array-length v2, v8

    invoke-static {v8, v0, v10, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 92
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModRepData;->KEYS:[Ljava/lang/String;

    array-length v0, v0

    new-array v11, v0, [I

    .line 93
    const/4 v0, 0x0

    move v5, v0

    :goto_34
    array-length v0, v7

    if-ge v5, v0, :cond_166

    .line 94
    aget-object v12, v7, v5

    .line 95
    const/4 v0, 0x0

    aget-object v0, v12, v0

    check-cast v0, Ljava/lang/String;

    const/4 v1, 0x2

    aget-object v1, v12, v1

    check-cast v1, Ljava/lang/String;

    .line 96
    const/4 v2, 0x5

    aget-object v2, v12, v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v13

    .line 97
    const-string v2, "KILL_ENEMY_TYPE"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10d

    const/4 v2, 0x5

    move v4, v2

    .line 98
    :goto_56
    if-eqz v13, :cond_136

    const v2, 0x9c40

    move v3, v2

    .line 99
    :goto_5c
    sget-object v2, Lfr/testudo/spacecorsair/mod/ModCapitals;->FACTIONS:[Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModFaction;->faction(Ljava/lang/String;)I

    move-result v14

    aget-object v2, v2, v14

    iget-object v2, v2, Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;->hq:Lfr/testudo/spacecorsair/game/levels/LevelId;

    invoke-virtual {v2}, Lfr/testudo/spacecorsair/game/levels/LevelId;->name()Ljava/lang/String;

    move-result-object v2

    .line 101
    array-length v14, v8

    add-int/2addr v14, v5

    const/16 v15, 0x13

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    aput-object v0, v15, v16

    const/16 v16, 0x1

    const/16 v17, 0x0

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v15, v16

    const/16 v16, 0x2

    const/16 v17, 0x1

    aget-object v17, v12, v17

    aput-object v17, v15, v16

    const/16 v16, 0x3

    aput-object v1, v15, v16

    const/16 v16, 0x4

    aput-object v2, v15, v16

    const/16 v16, 0x5

    aput-object v2, v15, v16

    const/4 v2, 0x6

    const/16 v16, 0x1

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v15, v2

    const/4 v2, 0x7

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v15, v2

    const/16 v16, 0x8

    const-string v2, "DEFEND_ZONE"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_162

    move-object v2, v0

    :goto_ad
    aput-object v2, v15, v16

    const/16 v2, 0x9

    const/16 v16, 0x6

    aget-object v16, v12, v16

    aput-object v16, v15, v2

    const/16 v2, 0xa

    const-string v16, ""

    aput-object v16, v15, v2

    const/16 v2, 0xb

    const/16 v16, 0x3

    aget-object v16, v12, v16

    aput-object v16, v15, v2

    const/16 v2, 0xc

    .line 102
    invoke-static {v1, v4}, Lfr/testudo/spacecorsair/mod/ModFaction;->contractGoal(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v15, v2

    const/16 v1, 0xd

    const/4 v2, 0x4

    aget-object v2, v12, v2

    aput-object v2, v15, v1

    const/16 v1, 0xe

    const-string v2, "The contract has lapsed. The offer stands if you want to try again."

    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v15, v1

    const/16 v1, 0xf

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v15, v1

    const/16 v1, 0x10

    const-string v2, ""

    aput-object v2, v15, v1

    const/16 v1, 0x11

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModFaction;->commander(Ljava/lang/String;)I

    move-result v0

    aget v2, v11, v0

    add-int/lit8 v2, v2, 0x1

    aput v2, v11, v0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v15, v1

    const/16 v0, 0x12

    invoke-static {v13}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    aput-object v1, v15, v0

    aput-object v15, v10, v14

    .line 93
    add-int/lit8 v0, v5, 0x1

    move v5, v0

    goto/16 :goto_34

    .line 97
    :cond_10d
    const-string v2, "RESCUE"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_119

    const/4 v2, 0x3

    move v4, v2

    goto/16 :goto_56

    :cond_119
    const-string v2, "SCAN_CIVIL"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_125

    const/4 v2, 0x4

    move v4, v2

    goto/16 :goto_56

    :cond_125
    const-string v2, "DEFEND_ZONE"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_132

    const/16 v2, 0x2d

    move v4, v2

    goto/16 :goto_56

    :cond_132
    const/4 v2, 0x0

    move v4, v2

    goto/16 :goto_56

    .line 98
    :cond_136
    const-string v2, "DEFEND_ZONE"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_156

    const-string v2, "DEFEND_CIVILIANS"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_156

    const-string v2, "DESTROY_STATION"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_156

    const-string v2, "ESCORT"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_15c

    :cond_156
    const v2, 0x1adb0

    move v3, v2

    goto/16 :goto_5c

    :cond_15c
    const v2, 0x124f8

    move v3, v2

    goto/16 :goto_5c

    .line 101
    :cond_162
    const-string v2, ""

    goto/16 :goto_ad

    .line 104
    :cond_166
    const/4 v0, 0x0

    :goto_167
    array-length v1, v9

    if-ge v0, v1, :cond_21b

    .line 106
    aget-object v1, v9, v0

    sget-object v2, Lfr/testudo/spacecorsair/mod/ModCapitals;->FACTIONS:[Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;

    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModFaction;->faction(Ljava/lang/String;)I

    move-result v3

    aget-object v2, v2, v3

    iget-object v2, v2, Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;->hq:Lfr/testudo/spacecorsair/game/levels/LevelId;

    invoke-virtual {v2}, Lfr/testudo/spacecorsair/game/levels/LevelId;->name()Ljava/lang/String;

    move-result-object v2

    .line 107
    array-length v3, v8

    array-length v4, v7

    add-int/2addr v3, v4

    add-int/2addr v3, v0

    const/16 v4, 0x14

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    const/4 v5, 0x1

    const/4 v12, 0x0

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v4, v5

    const/4 v5, 0x2

    const-string v12, "Renegade Hunt"

    aput-object v12, v4, v5

    const/4 v5, 0x3

    const-string v12, "BOUNTY"

    aput-object v12, v4, v5

    const/4 v5, 0x4

    aput-object v2, v4, v5

    const/4 v5, 0x5

    aput-object v2, v4, v5

    const/4 v2, 0x6

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v2

    const/4 v2, 0x7

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v2

    const/16 v2, 0x8

    const-string v5, ""

    aput-object v5, v4, v2

    const/16 v2, 0x9

    const-string v5, "Renegade Captain"

    aput-object v5, v4, v2

    const/16 v2, 0xa

    const-string v5, ""

    aput-object v5, v4, v2

    const/16 v2, 0xb

    const-string v5, "A renegade captain deserted with one of our faction cores and is hiding near our headquarters. Bring the core back and it is yours to keep."

    aput-object v5, v4, v2

    const/16 v2, 0xc

    const-string v5, "BOUNTY"

    const/4 v12, 0x0

    .line 109
    invoke-static {v5, v12}, Lfr/testudo/spacecorsair/mod/ModFaction;->contractGoal(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v2

    const/16 v2, 0xd

    const-string v5, "The renegade is down and the core is recovered."

    aput-object v5, v4, v2

    const/16 v2, 0xe

    const-string v5, "The contract has lapsed. The offer stands if you want to try again."

    invoke-static {v5}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v2

    const/16 v2, 0xf

    const v5, 0x1adb0

    .line 110
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v2

    const/16 v2, 0x10

    const-string v5, ""

    aput-object v5, v4, v2

    const/16 v2, 0x11

    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModFaction;->commander(Ljava/lang/String;)I

    move-result v1

    aget v5, v11, v1

    add-int/lit8 v5, v5, 0x1

    aput v5, v11, v1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v4, v2

    const/16 v1, 0x12

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v4, v1

    const/16 v1, 0x13

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v4, v1

    aput-object v4, v10, v3

    .line 104
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_167

    .line 112
    :cond_21b
    sput-object v10, Lfr/testudo/spacecorsair/mod/ModFaction;->rows:[[Ljava/lang/Object;

    .line 114
    :cond_21d
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModFaction;->rows:[[Ljava/lang/Object;
    :try_end_21f
    .catchall {:try_start_3 .. :try_end_21f} :catchall_221

    monitor-exit v6

    return-object v0

    .line 84
    :catchall_221
    move-exception v0

    monitor-exit v6

    throw v0
.end method

.method public static byId(Ljava/lang/String;)Lfr/testudo/spacecorsair/business/mission/Mission;
    .registers 7

    .prologue
    const/4 v1, 0x0

    .line 265
    if-eqz p0, :cond_b

    const-string v0, "FACTION_"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_d

    :cond_b
    move-object v0, v1

    .line 271
    :cond_c
    :goto_c
    return-object v0

    .line 267
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

    .line 268
    :catch_24
    move-exception v0

    :cond_25
    move-object v0, v1

    .line 271
    goto :goto_c
.end method

.method private civil(Lfr/testudo/spacecorsair/engine/Vector2;Z)Lfr/testudo/spacecorsair/business/world/civil/CivilShip;
    .registers 5

    .prologue
    .line 615
    const/4 v0, 0x1

    iget v1, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->idx:I

    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModFaction;->minLevel(I)I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 616
    if-eqz p2, :cond_17

    invoke-static {v0}, Lfr/testudo/spacecorsair/business/world/civil/CivilFactory;->newTrasnporteur(I)Lfr/testudo/spacecorsair/business/world/civil/TransportCivilShip;

    move-result-object v0

    .line 617
    :goto_13
    if-nez v0, :cond_1c

    const/4 v0, 0x0

    .line 621
    :goto_16
    return-object v0

    .line 616
    :cond_17
    invoke-static {v0, v0}, Lfr/testudo/spacecorsair/business/world/civil/CivilFactory;->newRandomCivil(II)Lfr/testudo/spacecorsair/business/world/civil/CivilShip;

    move-result-object v0

    goto :goto_13

    .line 618
    :cond_1c
    iget-object v1, v0, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v1, p1}, Lfr/testudo/spacecorsair/engine/Vector2;->setSameAs(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 619
    sget-object v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v1, v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v1, v1, Lfr/testudo/spacecorsair/game/Game;->currentLevel:Lfr/testudo/spacecorsair/game/levels/Level;

    iget-object v1, v1, Lfr/testudo/spacecorsair/game/levels/Level;->toAdd:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 620
    iget-object v1, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->civs:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_16
.end method

.method private cleanup()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 825
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

    .line 826
    if-eqz v0, :cond_8

    iget-boolean v2, v0, Lfr/testudo/spacecorsair/business/Element;->removed:Z

    if-nez v2, :cond_8

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/business/Element;->remove()V

    goto :goto_8

    .line 828
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

    .line 829
    if-eqz v0, :cond_24

    iget-boolean v2, v0, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->removed:Z

    if-nez v2, :cond_24

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->remove()V

    goto :goto_24

    .line 831
    :cond_3a
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->target:Lfr/testudo/spacecorsair/business/Element;

    if-eqz v0, :cond_48

    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->target:Lfr/testudo/spacecorsair/business/Element;

    instance-of v0, v0, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;

    if-eqz v0, :cond_48

    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->target:Lfr/testudo/spacecorsair/business/Element;

    iput-boolean v3, v0, Lfr/testudo/spacecorsair/business/Element;->isMissionObjective:Z

    .line 832
    :cond_48
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->spawned:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 833
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->civs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 834
    iput-object v4, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->target:Lfr/testudo/spacecorsair/business/Element;

    .line 835
    iput-object v4, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->outpost:Lfr/testudo/spacecorsair/business/world/civil/CivilShip;

    .line 836
    iput-boolean v3, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->setupDone:Z

    .line 837
    iput v3, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->zoneMs:I

    .line 838
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModPlace;->clearBoost()V

    .line 839
    return-void
.end method

.method static commander(Ljava/lang/String;)I
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 153
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

    .line 154
    :goto_11
    return v0

    .line 153
    :cond_12
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_15
    move v0, v1

    .line 154
    goto :goto_11
.end method

.method private complete()V
    .registers 7

    .prologue
    const/16 v3, 0x8

    const/4 v5, 0x1

    .line 374
    iget-boolean v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->completed:Z

    if-eqz v0, :cond_8

    .line 394
    :goto_7
    return-void

    .line 375
    :cond_8
    iput-boolean v5, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->completed:Z

    .line 376
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

    .line 377
    invoke-static {v5}, Lfr/testudo/spacecorsair/mod/ModAlerts;->missionResult(Z)V

    .line 379
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

    .line 380
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

    .line 381
    :cond_5e
    iget v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->idx:I

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModFaction;->hunt(I)Z

    move-result v0

    if-eqz v0, :cond_6f

    iget v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->idx:I

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModFaction;->key(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModV35;->huntDone(Ljava/lang/String;)V

    .line 382
    :cond_6f
    const-string v0, "KILL_FLAGSHIP"

    iget-object v1, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->obj:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_91

    iget v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->idx:I

    invoke-static {v0, v3}, Lfr/testudo/spacecorsair/mod/ModFaction;->str(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_91

    iget v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->idx:I

    invoke-static {v0, v3}, Lfr/testudo/spacecorsair/mod/ModFaction;->str(II)Ljava/lang/String;

    move-result-object v0

    const v1, -0x40b33333    # -0.8f

    invoke-static {v0, v1, v5}, Lfr/testudo/spacecorsair/mod/ModRep;->change(Ljava/lang/String;FZ)V

    .line 383
    :cond_91
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

    .line 384
    if-lez v0, :cond_e6

    .line 385
    sget-object v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v1, v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v1, v1, Lfr/testudo/spacecorsair/game/Game;->playerCurrentShipInventory:Lfr/testudo/spacecorsair/business/player/Inventory;

    invoke-virtual {v1, v0}, Lfr/testudo/spacecorsair/business/player/Inventory;->addCredit(I)V

    .line 386
    sget-object v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v1, v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->playerShip:Lfr/testudo/spacecorsair/business/player/PlayerShip;

    .line 387
    if-eqz v1, :cond_e6

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

    .line 389
    :cond_e6
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModFaction;->prefs()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 390
    if-eqz v0, :cond_118

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

    .line 391
    :cond_118
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    const v1, 0x7f0702c1

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->getStringRessource(I)Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->idx:I

    const/4 v2, 0x2

    invoke-static {v1, v2}, Lfr/testudo/spacecorsair/mod/ModFaction;->str(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lfr/testudo/spacecorsair/display/hud/WelcomeMessage;->setText(Ljava/lang/String;Ljava/lang/String;)V

    .line 392
    iget v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->idx:I

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModFaction;->key(I)Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->idx:I

    const/16 v2, 0xd

    invoke-static {v1, v2}, Lfr/testudo/spacecorsair/mod/ModFaction;->str(II)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x2328

    invoke-static {v0, v1, v2}, Lfr/testudo/spacecorsair/mod/ModComms;->show(Ljava/lang/String;Ljava/lang/String;I)V

    .line 393
    invoke-direct {p0, v5}, Lfr/testudo/spacecorsair/mod/ModFaction;->markGates(Z)V

    goto/16 :goto_7
.end method

.method static contract(I)Z
    .registers 2

    .prologue
    .line 138
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
    .line 118
    const-string v0, "FIND_OBJECT"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    const-string v0, "Follow the signal and recover the marked object."

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 128
    :goto_e
    return-object v0

    .line 119
    :cond_f
    const-string v0, "GATHER_AND_SELL"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    const-string v0, "Collect the 6 marked cargo pods and sell them at headquarters."

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_e

    .line 120
    :cond_1e
    const-string v0, "DEFEND_CIVILIANS"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2d

    const-string v0, "Protect the transports through 4 raider waves."

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_e

    .line 121
    :cond_2d
    const-string v0, "DEFEND_ZONE"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_55

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

    const-string v1, " seconds."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_e

    .line 122
    :cond_55
    const-string v0, "BOUNTY"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_64

    const-string v0, "Hunt down the marked target."

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_e

    .line 123
    :cond_64
    const-string v0, "KILL_ENEMY_TYPE"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8e

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

    goto :goto_e

    .line 124
    :cond_8e
    const-string v0, "DESTROY_STATION"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9e

    const-string v0, "Destroy the marked station and its guards."

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_e

    .line 125
    :cond_9e
    const-string v0, "ESCORT"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_ae

    const-string v0, "Escort the ship to its jump point."

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_e

    .line 126
    :cond_ae
    const-string v0, "SCAN_CIVIL"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d9

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

    .line 127
    :cond_d9
    const-string v0, "RESCUE"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_104

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

    .line 128
    :cond_104
    const-string v0, ""

    goto/16 :goto_e
.end method

.method static count()I
    .registers 1

    .prologue
    .line 131
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModFaction;->rows()[[Ljava/lang/Object;

    move-result-object v0

    array-length v0, v0

    return v0
.end method

.method static credits(I)Ljava/lang/String;
    .registers 6

    .prologue
    .line 185
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

.method static draw(Lfr/testudo/spacecorsair/business/player/PlayerShip;)V
    .registers 24

    .prologue
    .line 1058
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModFaction;->active()Lfr/testudo/spacecorsair/mod/ModFaction;

    move-result-object v18

    .line 1059
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

    .line 1142
    :cond_20
    :goto_20
    return-void

    .line 1060
    :cond_21
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v20

    .line 1061
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

    .line 1062
    sget-object v2, Lfr/testudo/spacecorsair/mod/ModCapitals;->FACTIONS:[Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;

    move-object/from16 v0, v18

    iget v3, v0, Lfr/testudo/spacecorsair/mod/ModFaction;->fi:I

    aget-object v22, v2, v3

    .line 1063
    const v5, 0x7f7fffff    # Float.MAX_VALUE

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 1064
    const/4 v2, 0x0

    .line 1065
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

    .line 1066
    :cond_69
    move-object/from16 v0, p0

    iget-object v6, v0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-static {v6}, Lfr/testudo/spacecorsair/mod/ModPlace;->nearestStation(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/business/world/station/Station;

    move-result-object v6

    .line 1067
    if-eqz v6, :cond_97

    .line 1068
    iget-object v2, v6, Lfr/testudo/spacecorsair/business/world/station/Station;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    move-object/from16 v0, p0

    iget-object v3, v0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v2, v3}, Lfr/testudo/spacecorsair/engine/Vector2;->distance(Lfr/testudo/spacecorsair/engine/Vector2;)F

    move-result v5

    .line 1069
    iget-object v2, v6, Lfr/testudo/spacecorsair/business/world/station/Station;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v4, v2, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    iget-object v2, v6, Lfr/testudo/spacecorsair/business/world/station/Station;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v3, v2, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    .line 1070
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

    .line 1123
    :goto_9a
    if-eqz v11, :cond_20

    const v2, 0x7f7fffff    # Float.MAX_VALUE

    cmpl-float v2, v17, v2

    if-eqz v2, :cond_20

    const v2, 0x44898000    # 1100.0f

    cmpg-float v2, v17, v2

    if-ltz v2, :cond_20

    .line 1124
    sget-object v2, Lfr/testudo/spacecorsair/display/Fleche;->MAIN_TEXTURE:Lfr/testudo/spacecorsair/display/Texture;

    .line 1125
    if-eqz v2, :cond_20

    .line 1126
    sget-object v5, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v5, v5, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->camera:Lfr/testudo/spacecorsair/engine/Camera;

    iget v7, v5, Lfr/testudo/spacecorsair/engine/Camera;->curZDecal:F

    .line 1127
    const/high16 v5, 0x42dc0000    # 110.0f

    const v6, 0x3da3d70a    # 0.08f

    mul-float/2addr v6, v7

    add-float v12, v5, v6

    .line 1128
    invoke-static {v2, v12}, Lfr/testudo/spacecorsair/mod/ModFx;->arrow(Lfr/testudo/spacecorsair/display/Texture;F)Lfr/testudo/spacecorsair/display/Drawable;

    move-result-object v5

    .line 1129
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

    .line 1130
    move-object/from16 v0, p0

    iget-object v2, v0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->shipSpec:Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;

    if-eqz v2, :cond_4c4

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

    .line 1131
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

    .line 1132
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

    .line 1133
    move/from16 v0, v17

    float-to-int v2, v0

    .line 1134
    sget-object v3, Lfr/testudo/spacecorsair/mod/ModFaction;->arrowText:Ljava/lang/String;

    if-eqz v3, :cond_13c

    sget-object v3, Lfr/testudo/spacecorsair/mod/ModFaction;->arrowLabel:Ljava/lang/String;

    if-ne v11, v3, :cond_13c

    sget v3, Lfr/testudo/spacecorsair/mod/ModFaction;->arrowM:I

    if-eq v2, v3, :cond_15f

    .line 1135
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

    .line 1136
    sput-object v11, Lfr/testudo/spacecorsair/mod/ModFaction;->arrowLabel:Ljava/lang/String;

    .line 1137
    sput v2, Lfr/testudo/spacecorsair/mod/ModFaction;->arrowM:I

    .line 1139
    :cond_15f
    sget-object v5, Lfr/testudo/spacecorsair/mod/ModFaction;->arrowText:Ljava/lang/String;

    .line 1140
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

    .line 1141
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

    .line 1070
    :cond_1a8
    const-string v2, "SELL"

    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_97

    .line 1072
    :cond_1b0
    move-object/from16 v0, v18

    iget-object v6, v0, Lfr/testudo/spacecorsair/mod/ModFaction;->markers:[F

    if-eqz v6, :cond_2af

    move-object/from16 v0, v18

    iget-object v6, v0, Lfr/testudo/spacecorsair/mod/ModFaction;->taken:[Z

    if-eqz v6, :cond_2af

    .line 1074
    move-object/from16 v0, v18

    iget-object v0, v0, Lfr/testudo/spacecorsair/mod/ModFaction;->markers:[F

    move-object/from16 v20, v0

    .line 1075
    move-object/from16 v0, v18

    iget-object v0, v0, Lfr/testudo/spacecorsair/mod/ModFaction;->taken:[Z

    move-object/from16 v21, v0

    .line 1076
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

    .line 1077
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

    .line 1078
    aget-boolean v2, v21, v17

    if-eqz v2, :cond_211

    move v4, v14

    move v3, v15

    move/from16 v2, v16

    .line 1077
    :cond_205
    :goto_205
    add-int/lit8 v5, v17, 0x1

    move/from16 v17, v5

    move v14, v4

    move v15, v3

    move/from16 v16, v2

    goto :goto_1e9

    .line 1076
    :cond_20e
    const/4 v2, 0x0

    move v13, v2

    goto :goto_1e2

    .line 1079
    :cond_211
    mul-int/lit8 v2, v17, 0x2

    aget v3, v20, v2

    mul-int/lit8 v2, v17, 0x2

    add-int/lit8 v2, v2, 0x1

    aget v4, v20, v2

    .line 1080
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

    .line 1081
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

    .line 1082
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

    .line 1083
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

    .line 1084
    cmpg-float v5, v2, v16

    if-ltz v5, :cond_205

    move v4, v14

    move v3, v15

    move/from16 v2, v16

    goto/16 :goto_205

    .line 1086
    :cond_28e
    if-eqz v13, :cond_299

    const-string v2, "SIGNAL"

    :goto_292
    move-object v11, v2

    move v3, v14

    move v4, v15

    move/from16 v17, v16

    .line 1087
    goto/16 :goto_9a

    .line 1086
    :cond_299
    const-string v2, "RESCUE"

    move-object/from16 v0, v18

    iget-object v3, v0, Lfr/testudo/spacecorsair/mod/ModFaction;->obj:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2a8

    const-string v2, "PILOT"

    goto :goto_292

    :cond_2a8
    const-string v2, "CARGO"

    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_292

    .line 1087
    :cond_2af
    const-string v6, "DEFEND_ZONE"

    move-object/from16 v0, v18

    iget-object v7, v0, Lfr/testudo/spacecorsair/mod/ModFaction;->obj:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_33d

    .line 1088
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

    .line 1089
    move-object/from16 v0, v18

    iget-object v2, v0, Lfr/testudo/spacecorsair/mod/ModFaction;->center:Lfr/testudo/spacecorsair/engine/Vector2;

    move-object/from16 v0, p0

    iget-object v3, v0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v2, v3}, Lfr/testudo/spacecorsair/engine/Vector2;->distance(Lfr/testudo/spacecorsair/engine/Vector2;)F

    move-result v5

    .line 1090
    move-object/from16 v0, v18

    iget-object v2, v0, Lfr/testudo/spacecorsair/mod/ModFaction;->center:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v4, v2, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    move-object/from16 v0, v18

    iget-object v2, v0, Lfr/testudo/spacecorsair/mod/ModFaction;->center:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v3, v2, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    .line 1091
    const/4 v2, 0x0

    move-object/from16 v0, v18

    iget v6, v0, Lfr/testudo/spacecorsair/mod/ModFaction;->goal:I

    move-object/from16 v0, v18

    iget v7, v0, Lfr/testudo/spacecorsair/mod/ModFaction;->holdMs:I

    sub-int/2addr v6, v7

    div-int/lit16 v6, v6, 0x3e8

    invoke-static {v2, v6}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 1092
    sget-object v6, Lfr/testudo/spacecorsair/mod/ModFaction;->holdLabel:Ljava/lang/String;

    if-eqz v6, :cond_319

    sget v6, Lfr/testudo/spacecorsair/mod/ModFaction;->holdSec:I

    if-eq v2, v6, :cond_336

    .line 1093
    :cond_319
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

    .line 1094
    sput v2, Lfr/testudo/spacecorsair/mod/ModFaction;->holdSec:I

    .line 1096
    :cond_336
    sget-object v2, Lfr/testudo/spacecorsair/mod/ModFaction;->holdLabel:Ljava/lang/String;

    move-object v11, v2

    move/from16 v17, v5

    .line 1097
    goto/16 :goto_9a

    :cond_33d
    const-string v6, "DEFEND_CIVILIANS"

    move-object/from16 v0, v18

    iget-object v7, v0, Lfr/testudo/spacecorsair/mod/ModFaction;->obj:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_38c

    move-object/from16 v0, v18

    iget-boolean v6, v0, Lfr/testudo/spacecorsair/mod/ModFaction;->wavesOn:Z

    if-nez v6, :cond_38c

    .line 1098
    move-object/from16 v0, v18

    iget-object v2, v0, Lfr/testudo/spacecorsair/mod/ModFaction;->civs:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_357
    :goto_357
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_381

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;

    .line 1099
    if-eqz v2, :cond_357

    iget-boolean v6, v2, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->removed:Z

    if-nez v6, :cond_357

    .line 1100
    iget-object v6, v2, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    move-object/from16 v0, p0

    iget-object v8, v0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v6, v8}, Lfr/testudo/spacecorsair/engine/Vector2;->distance(Lfr/testudo/spacecorsair/engine/Vector2;)F

    move-result v6

    .line 1101
    cmpg-float v8, v6, v5

    if-gez v8, :cond_357

    iget-object v3, v2, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v4, v3, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    iget-object v2, v2, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v3, v2, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    move v5, v6

    goto :goto_357

    .line 1103
    :cond_381
    const-string v2, "CONVOY"

    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object v11, v2

    move/from16 v17, v5

    goto/16 :goto_9a

    .line 1104
    :cond_38c
    const-string v6, "ESCORT"

    move-object/from16 v0, v18

    iget-object v7, v0, Lfr/testudo/spacecorsair/mod/ModFaction;->obj:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3f4

    move-object/from16 v0, v18

    iget-object v6, v0, Lfr/testudo/spacecorsair/mod/ModFaction;->target:Lfr/testudo/spacecorsair/business/Element;

    if-eqz v6, :cond_3f4

    move-object/from16 v0, v18

    iget-object v6, v0, Lfr/testudo/spacecorsair/mod/ModFaction;->target:Lfr/testudo/spacecorsair/business/Element;

    iget-boolean v6, v6, Lfr/testudo/spacecorsair/business/Element;->removed:Z

    if-nez v6, :cond_3f4

    .line 1105
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

    .line 1106
    move-object/from16 v0, v18

    iget-object v2, v0, Lfr/testudo/spacecorsair/mod/ModFaction;->target:Lfr/testudo/spacecorsair/business/Element;

    iget-object v2, v2, Lfr/testudo/spacecorsair/business/Element;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    move-object/from16 v0, p0

    iget-object v3, v0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v2, v3}, Lfr/testudo/spacecorsair/engine/Vector2;->distance(Lfr/testudo/spacecorsair/engine/Vector2;)F

    move-result v5

    .line 1107
    move-object/from16 v0, v18

    iget-object v2, v0, Lfr/testudo/spacecorsair/mod/ModFaction;->target:Lfr/testudo/spacecorsair/business/Element;

    iget-object v2, v2, Lfr/testudo/spacecorsair/business/Element;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v4, v2, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    move-object/from16 v0, v18

    iget-object v2, v0, Lfr/testudo/spacecorsair/mod/ModFaction;->target:Lfr/testudo/spacecorsair/business/Element;

    iget-object v2, v2, Lfr/testudo/spacecorsair/business/Element;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v3, v2, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    .line 1108
    move-object/from16 v0, v18

    iget-object v2, v0, Lfr/testudo/spacecorsair/mod/ModFaction;->target:Lfr/testudo/spacecorsair/business/Element;

    iget-object v2, v2, Lfr/testudo/spacecorsair/business/Element;->specificName:Ljava/lang/String;

    move-object v11, v2

    move/from16 v17, v5

    goto/16 :goto_9a

    .line 1109
    :cond_3f4
    move-object/from16 v0, v18

    iget-object v6, v0, Lfr/testudo/spacecorsair/mod/ModFaction;->target:Lfr/testudo/spacecorsair/business/Element;

    if-eqz v6, :cond_42b

    move-object/from16 v0, v18

    iget-object v6, v0, Lfr/testudo/spacecorsair/mod/ModFaction;->target:Lfr/testudo/spacecorsair/business/Element;

    iget-boolean v6, v6, Lfr/testudo/spacecorsair/business/Element;->removed:Z

    if-nez v6, :cond_42b

    .line 1110
    move-object/from16 v0, v18

    iget-object v2, v0, Lfr/testudo/spacecorsair/mod/ModFaction;->target:Lfr/testudo/spacecorsair/business/Element;

    iget-object v2, v2, Lfr/testudo/spacecorsair/business/Element;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    move-object/from16 v0, p0

    iget-object v3, v0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v2, v3}, Lfr/testudo/spacecorsair/engine/Vector2;->distance(Lfr/testudo/spacecorsair/engine/Vector2;)F

    move-result v5

    .line 1111
    move-object/from16 v0, v18

    iget-object v2, v0, Lfr/testudo/spacecorsair/mod/ModFaction;->target:Lfr/testudo/spacecorsair/business/Element;

    iget-object v2, v2, Lfr/testudo/spacecorsair/business/Element;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v4, v2, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    move-object/from16 v0, v18

    iget-object v2, v0, Lfr/testudo/spacecorsair/mod/ModFaction;->target:Lfr/testudo/spacecorsair/business/Element;

    iget-object v2, v2, Lfr/testudo/spacecorsair/business/Element;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v3, v2, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    .line 1112
    move-object/from16 v0, v18

    iget-object v2, v0, Lfr/testudo/spacecorsair/mod/ModFaction;->target:Lfr/testudo/spacecorsair/business/Element;

    iget-object v2, v2, Lfr/testudo/spacecorsair/business/Element;->specificName:Ljava/lang/String;

    move-object v11, v2

    move/from16 v17, v5

    goto/16 :goto_9a

    .line 1113
    :cond_42b
    const-string v6, "SCAN_CIVIL"

    move-object/from16 v0, v18

    iget-object v7, v0, Lfr/testudo/spacecorsair/mod/ModFaction;->obj:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4ce

    .line 1114
    const/4 v2, 0x0

    move v14, v2

    move v15, v3

    move/from16 v16, v4

    move/from16 v17, v5

    :goto_43e
    move-object/from16 v0, v18

    iget-object v2, v0, Lfr/testudo/spacecorsair/mod/ModFaction;->civs:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v14, v2, :cond_4bc

    move-object/from16 v0, v18

    iget-object v2, v0, Lfr/testudo/spacecorsair/mod/ModFaction;->scanMs:[I

    array-length v2, v2

    if-ge v14, v2, :cond_4bc

    .line 1115
    move-object/from16 v0, v18

    iget-object v2, v0, Lfr/testudo/spacecorsair/mod/ModFaction;->civs:Ljava/util/ArrayList;

    invoke-virtual {v2, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v13, v2

    check-cast v13, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;

    .line 1116
    if-eqz v13, :cond_4c8

    iget-boolean v2, v13, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->removed:Z

    if-nez v2, :cond_4c8

    move-object/from16 v0, v18

    iget-object v2, v0, Lfr/testudo/spacecorsair/mod/ModFaction;->scanMs:[I

    aget v2, v2, v14

    if-gez v2, :cond_476

    move v3, v15

    move/from16 v4, v16

    move/from16 v5, v17

    .line 1114
    :goto_46d
    add-int/lit8 v2, v14, 0x1

    move v14, v2

    move v15, v3

    move/from16 v16, v4

    move/from16 v17, v5

    goto :goto_43e

    .line 1117
    :cond_476
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

    .line 1118
    iget-object v2, v13, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    move-object/from16 v0, p0

    iget-object v3, v0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v2, v3}, Lfr/testudo/spacecorsair/engine/Vector2;->distance(Lfr/testudo/spacecorsair/engine/Vector2;)F

    move-result v5

    .line 1119
    cmpg-float v2, v5, v17

    if-gez v2, :cond_4c8

    iget-object v2, v13, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v0, v2, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    move/from16 v16, v0

    iget-object v2, v13, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v15, v2, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    move v3, v15

    move/from16 v4, v16

    goto :goto_46d

    .line 1121
    :cond_4bc
    const-string v2, "SCAN"

    move-object v11, v2

    move v3, v15

    move/from16 v4, v16

    goto/16 :goto_9a

    .line 1130
    :cond_4c4
    const/16 v2, 0xc8

    goto/16 :goto_f0

    :cond_4c8
    move v3, v15

    move/from16 v4, v16

    move/from16 v5, v17

    goto :goto_46d

    :cond_4ce
    move-object v11, v2

    move/from16 v17, v5

    goto/16 :goto_9a
.end method

.method private escortArrived()V
    .registers 7

    .prologue
    const/4 v5, 0x1

    const/4 v1, 0x0

    .line 1022
    iget v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->phase:I

    if-nez v0, :cond_3a

    invoke-direct {p0}, Lfr/testudo/spacecorsair/mod/ModFaction;->secondSector()Lfr/testudo/spacecorsair/game/levels/LevelId;

    move-result-object v0

    if-eqz v0, :cond_3a

    .line 1023
    iput v5, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->phase:I

    .line 1024
    iput-boolean v1, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->courierMoving:Z

    .line 1025
    iput-boolean v1, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->secondLegPlaced:Z

    .line 1026
    const/4 v0, 0x0

    iput-object v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->target:Lfr/testudo/spacecorsair/business/Element;

    .line 1027
    invoke-direct {p0}, Lfr/testudo/spacecorsair/mod/ModFaction;->save()V

    .line 1028
    invoke-direct {p0}, Lfr/testudo/spacecorsair/mod/ModFaction;->activeSector()Lfr/testudo/spacecorsair/game/levels/LevelId;

    move-result-object v0

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModFaction;->sectorIs(Lfr/testudo/spacecorsair/game/levels/LevelId;)Z

    move-result v0

    iput-boolean v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->inZone:Z

    .line 1029
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->playerShip:Lfr/testudo/spacecorsair/business/player/PlayerShip;

    const-string v1, "FOLLOW THE COURIER THROUGH THE GATE"

    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/high16 v2, 0x3f000000    # 0.5f

    const/high16 v3, 0x3f800000    # 1.0f

    const v4, 0x3f19999a    # 0.6f

    invoke-static {v0, v1, v2, v3, v4}, Lfr/testudo/spacecorsair/mod/Mod;->floatText(Lfr/testudo/spacecorsair/business/Element;Ljava/lang/String;FFF)V

    .line 1030
    invoke-direct {p0, v5}, Lfr/testudo/spacecorsair/mod/ModFaction;->markGates(Z)V

    .line 1034
    :goto_39
    return-void

    .line 1033
    :cond_3a
    invoke-direct {p0}, Lfr/testudo/spacecorsair/mod/ModFaction;->complete()V

    goto :goto_39
.end method

.method static faction(Ljava/lang/String;)I
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 148
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

    .line 149
    :goto_13
    return v0

    .line 148
    :cond_14
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_17
    move v0, v1

    .line 149
    goto :goto_13
.end method

.method private fail()V
    .registers 6

    .prologue
    const/16 v4, 0xe

    const/4 v3, 0x0

    .line 397
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

    .line 398
    invoke-direct {p0}, Lfr/testudo/spacecorsair/mod/ModFaction;->cleanup()V

    .line 399
    iput-boolean v3, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->planned:Z

    .line 400
    invoke-direct {p0}, Lfr/testudo/spacecorsair/mod/ModFaction;->save()V

    .line 401
    invoke-static {v3}, Lfr/testudo/spacecorsair/mod/ModAlerts;->missionResult(Z)V

    .line 402
    iget v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->idx:I

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModFaction;->key(I)Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->idx:I

    invoke-static {v1, v4}, Lfr/testudo/spacecorsair/mod/ModFaction;->str(II)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x2328

    invoke-static {v0, v1, v2}, Lfr/testudo/spacecorsair/mod/ModComms;->show(Ljava/lang/String;Ljava/lang/String;I)V

    .line 403
    iget v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->idx:I

    invoke-static {v0, v4}, Lfr/testudo/spacecorsair/mod/ModFaction;->str(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lfr/testudo/spacecorsair/business/mission/Mission;->setMissionFailure(Ljava/lang/String;)V

    .line 404
    return-void
.end method

.method private static farFrom(Lfr/testudo/spacecorsair/engine/Vector2;FF)Lfr/testudo/spacecorsair/engine/Vector2;
    .registers 4

    .prologue
    .line 821
    invoke-static {p0, p1, p2}, Lfr/testudo/spacecorsair/mod/ModPlace;->farPoint(Lfr/testudo/spacecorsair/engine/Vector2;FF)Lfr/testudo/spacecorsair/engine/Vector2;

    move-result-object v0

    return-object v0
.end method

.method private static farGate(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;
    .registers 9

    .prologue
    const/4 v4, 0x0

    .line 645
    .line 646
    const/high16 v1, -0x40800000    # -1.0f

    .line 648
    :try_start_3
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/Game;->currentLevel:Lfr/testudo/spacecorsair/game/levels/Level;

    iget-object v6, v0, Lfr/testudo/spacecorsair/game/levels/Level;->elements:Ljava/util/List;

    .line 649
    const/4 v0, 0x0

    move v5, v0

    move-object v3, v4

    :goto_e
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v0

    if-ge v5, v0, :cond_39

    .line 650
    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfr/testudo/spacecorsair/business/Element;

    .line 651
    instance-of v2, v0, Lfr/testudo/spacecorsair/business/world/Portal;

    if-eqz v2, :cond_4b

    iget-boolean v2, v0, Lfr/testudo/spacecorsair/business/Element;->removed:Z

    if-eqz v2, :cond_28

    move v0, v1

    .line 649
    :goto_23
    add-int/lit8 v2, v5, 0x1

    move v5, v2

    move v1, v0

    goto :goto_e

    .line 652
    :cond_28
    iget-object v2, v0, Lfr/testudo/spacecorsair/business/Element;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v2, p0}, Lfr/testudo/spacecorsair/engine/Vector2;->distance(Lfr/testudo/spacecorsair/engine/Vector2;)F

    move-result v2

    .line 653
    cmpl-float v7, v2, v1

    if-lez v7, :cond_4b

    iget-object v1, v0, Lfr/testudo/spacecorsair/business/Element;->position:Lfr/testudo/spacecorsair/engine/Vector2;
    :try_end_34
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_34} :catch_37

    move v0, v2

    move-object v3, v1

    goto :goto_23

    .line 655
    :catch_37
    move-exception v0

    move-object v3, v4

    .line 658
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
    .line 517
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

    .line 521
    const/4 v0, 0x0

    .line 522
    if-nez p1, :cond_5b

    .line 523
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 524
    sget-object v4, Lfr/testudo/spacecorsair/mod/ModFleet;->TYPES:[Lfr/testudo/spacecorsair/mod/ModFleet$Type;

    array-length v5, v4

    move v1, v2

    :goto_f
    if-ge v1, v5, :cond_2d

    aget-object v6, v4, v1

    .line 525
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

    .line 524
    :cond_2a
    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    .line 527
    :cond_2d
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_54

    .line 528
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x4

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 529
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

    .line 531
    :cond_54
    if-nez v0, :cond_5a

    invoke-static {p3}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisFactory;->newBasicEnnemisShip(I)Lfr/testudo/spacecorsair/business/ennemis/BasicEnnemyShip;

    move-result-object v0

    .line 539
    :cond_5a
    :goto_5a
    return-object v0

    .line 532
    :cond_5b
    const/4 v0, 0x1

    if-ne p1, v0, :cond_80

    .line 533
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v0

    cmpg-double v0, v0, v4

    if-gez v0, :cond_78

    invoke-static {p3}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisFactory;->newFrelon(I)Lfr/testudo/spacecorsair/business/ennemis/FrelonShip;

    move-result-object v0

    .line 534
    :goto_6a
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v2

    cmpg-double v1, v2, v4

    if-gez v1, :cond_7d

    const-string v1, "Syndicate Harvester"

    :goto_74
    invoke-static {v0, v1}, Lfr/testudo/spacecorsair/mod/ModFaction;->name(Lfr/testudo/spacecorsair/business/Element;Ljava/lang/String;)V

    goto :goto_5a

    .line 533
    :cond_78
    invoke-static {p3}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisFactory;->newDefensor(I)Lfr/testudo/spacecorsair/business/ennemis/DefensorShip;

    move-result-object v0

    goto :goto_6a

    .line 534
    :cond_7d
    const-string v1, "Syndicate Enforcer"

    goto :goto_74

    .line 536
    :cond_80
    invoke-static {p3}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisFactory;->newDefensor(I)Lfr/testudo/spacecorsair/business/ennemis/DefensorShip;

    move-result-object v0

    .line 537
    const-string v1, "Authority Picket"

    invoke-static {v0, v1}, Lfr/testudo/spacecorsair/mod/ModFaction;->name(Lfr/testudo/spacecorsair/business/Element;Ljava/lang/String;)V

    goto :goto_5a
.end method

.method private foeLevel()I
    .registers 7

    .prologue
    .line 492
    iget v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->idx:I

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModFaction;->minLevel(I)I

    move-result v0

    .line 493
    iget v1, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->idx:I

    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModFaction;->contract(I)Z

    move-result v1

    if-eqz v1, :cond_21

    .line 495
    const/4 v0, 0x1

    const/16 v1, 0x28

    :try_start_11
    sget-object v2, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v2, v2, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v2, v2, Lfr/testudo/spacecorsair/game/Game;->playerInfo:Lfr/testudo/spacecorsair/business/player/PlayerInfo;

    iget v2, v2, Lfr/testudo/spacecorsair/business/player/PlayerInfo;->level:I

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I
    :try_end_20
    .catch Ljava/lang/Throwable; {:try_start_11 .. :try_end_20} :catch_2b

    move-result v0

    .line 497
    :cond_21
    :goto_21
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v2

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    mul-double/2addr v2, v4

    double-to-int v1, v2

    add-int/2addr v0, v1

    return v0

    .line 495
    :catch_2b
    move-exception v0

    const/4 v0, 0x5

    goto :goto_21
.end method

.method private static gateTo(Lfr/testudo/spacecorsair/game/levels/LevelId;)Lfr/testudo/spacecorsair/business/world/Portal;
    .registers 3

    .prologue
    .line 636
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

    .line 640
    :goto_10
    return-object v0

    .line 637
    :catch_11
    move-exception v0

    .line 640
    :cond_12
    const/4 v0, 0x0

    goto :goto_10
.end method

.method private holdLevel()I
    .registers 4

    .prologue
    const/4 v1, 0x1

    .line 502
    .line 503
    :try_start_1
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/Game;->playerInfo:Lfr/testudo/spacecorsair/business/player/PlayerInfo;

    iget v0, v0, Lfr/testudo/spacecorsair/business/player/PlayerInfo;->level:I
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_9} :catch_1e

    .line 504
    :goto_9
    iget-object v2, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->zone:Lfr/testudo/spacecorsair/game/levels/LevelId;

    .line 505
    if-eqz v2, :cond_13

    iget v2, v2, Lfr/testudo/spacecorsair/game/levels/LevelId;->levelMax:I

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 506
    :cond_13
    const/16 v2, 0x28

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0

    .line 503
    :catch_1e
    move-exception v0

    move v0, v1

    goto :goto_9
.end method

.method static hunt(I)Z
    .registers 4

    .prologue
    const/16 v2, 0x13

    .line 139
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
    .registers 3

    .prologue
    .line 145
    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModFaction;->contract(I)Z

    move-result v0

    if-eqz v0, :cond_32

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

    :goto_31
    return-object v0

    :cond_32
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

    goto :goto_31
.end method

.method private instruction()Ljava/lang/String;
    .registers 11

    .prologue
    const/16 v8, 0xc

    const/4 v4, 0x2

    const/4 v0, 0x0

    const/4 v3, 0x1

    .line 1240
    sget-object v1, Lfr/testudo/spacecorsair/mod/ModCapitals;->FACTIONS:[Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;

    iget v2, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->fi:I

    aget-object v5, v1, v2

    .line 1241
    iget-object v6, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->target:Lfr/testudo/spacecorsair/business/Element;

    .line 1242
    invoke-direct {p0}, Lfr/testudo/spacecorsair/mod/ModFaction;->activeSector()Lfr/testudo/spacecorsair/game/levels/LevelId;

    move-result-object v7

    .line 1244
    iget-boolean v1, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->completed:Z

    if-eqz v1, :cond_32

    move v1, v0

    move v2, v0

    .line 1256
    :goto_17
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->instrText:Ljava/lang/String;

    .line 1257
    if-eqz v0, :cond_f2

    iget v8, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->instrBranch:I

    if-ne v2, v8, :cond_f2

    iget v8, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->instrVal:I

    if-ne v1, v8, :cond_f2

    iget-object v8, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->instrTarget:Lfr/testudo/spacecorsair/business/Element;

    if-ne v6, v8, :cond_f2

    iget v8, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->goal:I

    iget v9, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->instrGoal:I

    if-ne v8, v9, :cond_f2

    iget-object v8, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->instrWhere:Lfr/testudo/spacecorsair/game/levels/LevelId;

    if-ne v7, v8, :cond_f2

    .line 1278
    :goto_31
    return-object v0

    .line 1245
    :cond_32
    if-nez v7, :cond_3b

    iget v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->idx:I

    invoke-static {v0, v8}, Lfr/testudo/spacecorsair/mod/ModFaction;->str(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_31

    .line 1246
    :cond_3b
    iget-boolean v1, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->inZone:Z

    if-nez v1, :cond_42

    move v1, v0

    move v2, v3

    goto :goto_17

    .line 1247
    :cond_42
    iget v1, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->phase:I

    if-ne v1, v3, :cond_53

    const-string v1, "DELIVERY"

    iget-object v2, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->obj:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_53

    const/4 v2, 0x7

    move v1, v0

    goto :goto_17

    .line 1248
    :cond_53
    iget v1, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->phase:I

    if-ne v1, v3, :cond_65

    const-string v1, "GATHER_AND_SELL"

    iget-object v2, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->obj:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_65

    const/16 v2, 0x8

    move v1, v0

    goto :goto_17

    .line 1249
    :cond_65
    iget-boolean v1, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->setupDone:Z

    if-nez v1, :cond_70

    iget v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->idx:I

    invoke-static {v0, v8}, Lfr/testudo/spacecorsair/mod/ModFaction;->str(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_31

    .line 1250
    :cond_70
    const-string v1, "DEFEND_ZONE"

    iget-object v2, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->obj:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_88

    iget v1, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->goal:I

    iget v2, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->holdMs:I

    sub-int/2addr v1, v2

    div-int/lit16 v1, v1, 0x3e8

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    move v1, v0

    move v2, v4

    goto :goto_17

    .line 1251
    :cond_88
    const-string v0, "DEFEND_CIVILIANS"

    iget-object v1, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->obj:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9f

    iget-boolean v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->wavesOn:Z

    if-eqz v0, :cond_9c

    const/4 v0, 0x3

    :goto_97
    iget v1, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->wavesLeft:I

    move v2, v0

    goto/16 :goto_17

    :cond_9c
    const/16 v0, 0x9

    goto :goto_97

    .line 1252
    :cond_9f
    const-string v0, "ESCORT"

    iget-object v1, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->obj:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b8

    if-eqz v6, :cond_b8

    const/4 v2, 0x4

    iget-object v0, v6, Lfr/testudo/spacecorsair/business/Element;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget-object v1, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->gate:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/engine/Vector2;->distance(Lfr/testudo/spacecorsair/engine/Vector2;)F

    move-result v0

    float-to-int v0, v0

    move v1, v0

    goto/16 :goto_17

    .line 1253
    :cond_b8
    const-string v0, "KILL_FLAGSHIP"

    iget-object v1, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->obj:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_da

    if-eqz v6, :cond_da

    iget-boolean v0, v6, Lfr/testudo/spacecorsair/business/Element;->removed:Z

    if-nez v0, :cond_da

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

    .line 1254
    :cond_da
    iget v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->goal:I

    if-le v0, v3, :cond_ea

    const/4 v2, 0x6

    iget v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->progress:I

    iget v1, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->goal:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    move v1, v0

    goto/16 :goto_17

    .line 1255
    :cond_ea
    iget v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->idx:I

    invoke-static {v0, v8}, Lfr/testudo/spacecorsair/mod/ModFaction;->str(II)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_31

    .line 1259
    :cond_f2
    packed-switch v2, :pswitch_data_29a

    .line 1270
    :pswitch_f5
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

    .line 1272
    :goto_11e
    iput v2, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->instrBranch:I

    .line 1273
    iput v1, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->instrVal:I

    .line 1274
    iput-object v6, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->instrTarget:Lfr/testudo/spacecorsair/business/Element;

    .line 1275
    iget v1, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->goal:I

    iput v1, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->instrGoal:I

    .line 1276
    iput-object v7, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->instrWhere:Lfr/testudo/spacecorsair/game/levels/LevelId;

    .line 1277
    iput-object v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->instrText:Ljava/lang/String;

    goto/16 :goto_31

    .line 1260
    :pswitch_12e
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

    const-string v3, " and hail the "

    invoke-static {v3}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, v5, Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;->ship:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_11e

    .line 1261
    :pswitch_15c
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->phase:I

    if-ne v0, v3, :cond_196

    const-string v0, "DELIVERY"

    iget-object v8, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->obj:Ljava/lang/String;

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_196

    const-string v0, "Deliver the crate to "

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1262
    :goto_175
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

    goto :goto_11e

    .line 1261
    :cond_196
    iget v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->phase:I

    if-ne v0, v3, :cond_1ab

    const-string v0, "GATHER_AND_SELL"

    iget-object v3, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->obj:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1ab

    const-string v0, "Sell the cargo at "

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_175

    .line 1262
    :cond_1ab
    const-string v0, "Go to "

    goto :goto_175

    .line 1263
    :pswitch_1ae
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

    goto/16 :goto_11e

    .line 1264
    :pswitch_1d1
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

    goto/16 :goto_11e

    .line 1265
    :pswitch_1ea
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

    goto/16 :goto_11e

    .line 1266
    :pswitch_215
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

    goto/16 :goto_11e

    .line 1267
    :pswitch_244
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

    goto/16 :goto_11e

    .line 1268
    :pswitch_26b
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

    goto/16 :goto_11e

    .line 1269
    :pswitch_292
    const-string v0, "Meet the convoy"

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_11e

    .line 1259
    :pswitch_data_29a
    .packed-switch 0x0
        :pswitch_12e
        :pswitch_15c
        :pswitch_1ae
        :pswitch_1d1
        :pswitch_1ea
        :pswitch_215
        :pswitch_f5
        :pswitch_244
        :pswitch_26b
        :pswitch_292
    .end packed-switch
.end method

.method static itemLabel(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    .prologue
    .line 166
    const-string v0, "L15"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3e

    const-string v0, "Siege "

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 167
    :goto_e
    const-string v1, "L\\d+$"

    const-string v2, ""

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 168
    const/4 v1, 0x0

    :goto_17
    sget-object v3, Lfr/testudo/spacecorsair/mod/ModFaction;->FAMILY_LABEL:[Ljava/lang/String;

    array-length v3, v3

    if-ge v1, v3, :cond_3d

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

    .line 169
    :cond_3d
    return-object p0

    .line 166
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

    .line 168
    :cond_63
    add-int/lit8 v1, v1, 0x2

    goto :goto_17
.end method

.method static key(I)Ljava/lang/String;
    .registers 2

    .prologue
    .line 141
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lfr/testudo/spacecorsair/mod/ModFaction;->str(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static level(Ljava/lang/String;)Lfr/testudo/spacecorsair/game/levels/LevelId;
    .registers 2

    .prologue
    .line 159
    :try_start_0
    invoke-static {p0}, Lfr/testudo/spacecorsair/game/levels/LevelId;->valueOf(Ljava/lang/String;)Lfr/testudo/spacecorsair/game/levels/LevelId;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3} :catch_5

    move-result-object v0

    .line 161
    :goto_4
    return-object v0

    .line 160
    :catch_5
    move-exception v0

    .line 161
    const/4 v0, 0x0

    goto :goto_4
.end method

.method private liveFoes()I
    .registers 4

    .prologue
    .line 1046
    const/4 v0, 0x0

    .line 1047
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

    .line 1048
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

    .line 444
    iput-boolean v1, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->planned:Z

    .line 445
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModFaction;->prefs()Landroid/content/SharedPreferences;

    move-result-object v3

    .line 446
    if-eqz v3, :cond_15

    invoke-direct {p0}, Lfr/testudo/spacecorsair/mod/ModFaction;->stateKey()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 447
    :cond_15
    if-nez v2, :cond_18

    .line 483
    :goto_17
    return-void

    .line 449
    :cond_18
    :try_start_18
    const-string v3, ";"

    const/4 v4, -0x1

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v3

    .line 450
    const/4 v2, 0x0

    aget-object v2, v3, v2

    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModFaction;->level(Ljava/lang/String;)Lfr/testudo/spacecorsair/game/levels/LevelId;

    move-result-object v2

    .line 451
    if-eqz v2, :cond_2a

    iput-object v2, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->zone:Lfr/testudo/spacecorsair/game/levels/LevelId;

    .line 452
    :cond_2a
    const/4 v2, 0x1

    aget-object v2, v3, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->phase:I

    .line 453
    const/4 v2, 0x2

    aget-object v2, v3, v2

    iget-object v4, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->ref:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-static {v2, v4}, Lfr/testudo/spacecorsair/mod/ModFaction;->xy(Ljava/lang/String;Lfr/testudo/spacecorsair/engine/Vector2;)V

    .line 454
    const/4 v2, 0x3

    aget-object v2, v3, v2

    iget-object v4, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->center:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-static {v2, v4}, Lfr/testudo/spacecorsair/mod/ModFaction;->xy(Ljava/lang/String;Lfr/testudo/spacecorsair/engine/Vector2;)V

    .line 455
    const/4 v2, 0x4

    aget-object v2, v3, v2

    iget-object v4, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->endAt:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-static {v2, v4}, Lfr/testudo/spacecorsair/mod/ModFaction;->xy(Ljava/lang/String;Lfr/testudo/spacecorsair/engine/Vector2;)V

    .line 456
    const/4 v2, 0x5

    aget-object v2, v3, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->progress:I

    .line 457
    const/4 v2, 0x6

    aget-object v2, v3, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->goal:I

    .line 458
    const/4 v2, 0x7

    aget-object v2, v3, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->holdMs:I

    .line 459
    const/16 v2, 0x8

    aget-object v2, v3, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->waveNo:I

    .line 460
    const/16 v2, 0x9

    aget-object v2, v3, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->wavesLeft:I

    .line 461
    const/16 v2, 0xa

    aget-object v2, v3, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 462
    and-int/lit8 v2, v4, 0x1

    if-eqz v2, :cond_108

    move v2, v0

    :goto_87
    iput-boolean v2, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->courierMoving:Z

    .line 463
    and-int/lit8 v2, v4, 0x2

    if-eqz v2, :cond_10b

    :goto_8d
    iput-boolean v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->secondLegPlaced:Z

    .line 464
    const/4 v0, 0x0

    const/16 v2, 0x63

    shr-int/lit8 v4, v4, 0x2

    invoke-static {v2, v4}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->outpostLost:I

    .line 465
    const/16 v0, 0xb

    aget-object v0, v3, v0

    iget-object v2, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->lastCourier:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-static {v0, v2}, Lfr/testudo/spacecorsair/mod/ModFaction;->xy(Ljava/lang/String;Lfr/testudo/spacecorsair/engine/Vector2;)V

    .line 466
    const/4 v0, 0x0

    iput-object v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->markers:[F

    .line 467
    const/4 v0, 0x0

    iput-object v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->taken:[Z

    .line 468
    array-length v0, v3

    if-le v0, v5, :cond_10d

    const/16 v0, 0xc

    aget-object v0, v3, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_10d

    .line 469
    const/16 v0, 0xc

    aget-object v0, v3, v0

    const-string v2, ":"

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 470
    array-length v0, v2

    mul-int/lit8 v0, v0, 0x2

    new-array v0, v0, [F

    iput-object v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->markers:[F

    .line 471
    array-length v0, v2

    new-array v0, v0, [Z

    iput-object v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->taken:[Z

    move v0, v1

    .line 472
    :goto_d1
    array-length v3, v2

    if-ge v0, v3, :cond_10d

    .line 473
    aget-object v3, v2, v0

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 474
    iget-object v4, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->markers:[F

    mul-int/lit8 v5, v0, 0x2

    const/4 v6, 0x0

    aget-object v6, v3, v6

    invoke-static {v6}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v6

    aput v6, v4, v5

    .line 475
    iget-object v4, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->markers:[F

    mul-int/lit8 v5, v0, 0x2

    add-int/lit8 v5, v5, 0x1

    const/4 v6, 0x1

    aget-object v6, v3, v6

    invoke-static {v6}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v6

    aput v6, v4, v5

    .line 476
    iget-object v4, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->taken:[Z

    const-string v5, "1"

    const/4 v6, 0x2

    aget-object v3, v3, v6

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    aput-boolean v3, v4, v0

    .line 472
    add-int/lit8 v0, v0, 0x1

    goto :goto_d1

    :cond_108
    move v2, v1

    .line 462
    goto/16 :goto_87

    :cond_10b
    move v0, v1

    .line 463
    goto :goto_8d

    .line 479
    :cond_10d
    const/4 v0, 0x1

    iput-boolean v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->planned:Z
    :try_end_110
    .catch Ljava/lang/Throwable; {:try_start_18 .. :try_end_110} :catch_112

    goto/16 :goto_17

    .line 480
    :catch_112
    move-exception v0

    .line 481
    iput-boolean v1, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->planned:Z

    goto/16 :goto_17
.end method

.method private markGates(Z)V
    .registers 5

    .prologue
    .line 1147
    :try_start_0
    iget-boolean v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->completed:Z

    if-eqz v0, :cond_f

    sget-object v0, Lfr/testudo/spacecorsair/mod/ModCapitals;->FACTIONS:[Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;

    iget v1, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->fi:I

    aget-object v0, v0, v1

    iget-object v0, v0, Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;->hq:Lfr/testudo/spacecorsair/game/levels/LevelId;

    .line 1148
    :goto_c
    if-nez v0, :cond_14

    .line 1160
    :cond_e
    :goto_e
    return-void

    .line 1147
    :cond_f
    invoke-direct {p0}, Lfr/testudo/spacecorsair/mod/ModFaction;->activeSector()Lfr/testudo/spacecorsair/game/levels/LevelId;

    move-result-object v0

    goto :goto_c

    .line 1149
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

    .line 1150
    :cond_37
    sget-object v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v1, v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v1, v1, Lfr/testudo/spacecorsair/game/Game;->currentLevel:Lfr/testudo/spacecorsair/game/levels/Level;

    iget-object v1, v1, Lfr/testudo/spacecorsair/game/levels/Level;->name:Ljava/lang/String;

    .line 1151
    if-eqz v1, :cond_49

    iget-object v2, v0, Lfr/testudo/spacecorsair/game/levels/LevelId;->levelName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_e

    .line 1152
    :cond_49
    sget-object v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v1, v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v1, v1, Lfr/testudo/spacecorsair/game/Game;->currentLevel:Lfr/testudo/spacecorsair/game/levels/Level;

    invoke-static {v0}, Lfr/testudo/spacecorsair/business/world/PathFinder;->getPortalNameToGoTo(Lfr/testudo/spacecorsair/game/levels/LevelId;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lfr/testudo/spacecorsair/game/levels/Level;->findPortalByName(Ljava/lang/String;)Lfr/testudo/spacecorsair/business/world/Portal;

    move-result-object v0

    .line 1153
    if-eqz v0, :cond_e

    .line 1154
    iput-boolean p1, v0, Lfr/testudo/spacecorsair/business/world/Portal;->isMissionObjective:Z

    .line 1155
    sget-object v1, Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;->ORANGE:Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;

    iput-object v1, v0, Lfr/testudo/spacecorsair/business/world/Portal;->missionObjectiveColor:Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;
    :try_end_5f
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_5f} :catch_60

    goto :goto_e

    .line 1157
    :catch_60
    move-exception v0

    goto :goto_e
.end method

.method static minLevel(I)I
    .registers 2

    .prologue
    .line 144
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
    .line 543
    iput-object p1, p0, Lfr/testudo/spacecorsair/business/Element;->specificName:Ljava/lang/String;

    .line 544
    const/4 v0, -0x1

    iput v0, p0, Lfr/testudo/spacecorsair/business/Element;->specificNameDecalX:I

    .line 545
    return-void
.end method

.method static num(II)I
    .registers 3

    .prologue
    .line 137
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
    .line 143
    const/4 v0, 0x3

    invoke-static {p0, v0}, Lfr/testudo/spacecorsair/mod/ModFaction;->str(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static order(I)I
    .registers 2

    .prologue
    .line 142
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lfr/testudo/spacecorsair/mod/ModFaction;->num(II)I

    move-result v0

    return v0
.end method

.method private place(Lfr/testudo/spacecorsair/business/ennemis/Ennemis;Lfr/testudo/spacecorsair/engine/Vector2;Lfr/testudo/spacecorsair/business/Element;Z)Lfr/testudo/spacecorsair/business/ennemis/Ennemis;
    .registers 11

    .prologue
    .line 565
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
    .line 549
    if-nez p1, :cond_4

    const/4 p1, 0x0

    .line 561
    :goto_3
    return-object p1

    .line 550
    :cond_4
    iget-object v0, p1, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v0, p2}, Lfr/testudo/spacecorsair/engine/Vector2;->setSameAs(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 551
    invoke-virtual {p1}, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->updateSapCoords()V

    .line 552
    const v0, 0x460ca000    # 9000.0f

    iput v0, p1, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->desengagementDistance:F

    .line 553
    if-eqz p4, :cond_1a

    .line 554
    const/4 v0, 0x1

    iput-boolean v0, p1, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->isMissionObjective:Z

    .line 555
    sget-object v0, Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;->RED:Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;

    iput-object v0, p1, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->missionObjectiveColor:Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;

    .line 557
    :cond_1a
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->playerShip:Lfr/testudo/spacecorsair/business/player/PlayerShip;

    .line 558
    if-eqz p5, :cond_29

    if-eqz p3, :cond_32

    iget-boolean v1, p3, Lfr/testudo/spacecorsair/business/Element;->removed:Z

    if-nez v1, :cond_32

    :goto_26
    invoke-virtual {p1, p3}, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->initAttackTarget(Lfr/testudo/spacecorsair/business/Element;)V

    .line 559
    :cond_29
    invoke-virtual {p1}, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->addToCurrentLevel()V

    .line 560
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->spawned:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_32
    move-object p3, v0

    .line 558
    goto :goto_26
.end method

.method private plan(Lfr/testudo/spacecorsair/business/player/PlayerShip;)V
    .registers 10

    .prologue
    const/4 v7, 0x7

    const/4 v6, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 663
    iput-boolean v5, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->planned:Z

    .line 664
    iput v4, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->phase:I

    .line 665
    iput v4, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->progress:I

    .line 666
    iput v4, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->holdMs:I

    .line 667
    iput v4, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->outpostLost:I

    .line 668
    iput v4, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->waveNo:I

    .line 669
    iput v4, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->wavesLeft:I

    .line 670
    iput-boolean v4, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->courierMoving:Z

    .line 671
    iput-boolean v4, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->secondLegPlaced:Z

    .line 672
    iput-object v6, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->markers:[F

    .line 673
    iput-object v6, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->taken:[Z

    .line 674
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->ref:Lfr/testudo/spacecorsair/engine/Vector2;

    iget-object v1, p1, Lfr/testudo/spacecorsair/business/player/PlayerShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/engine/Vector2;->setSameAs(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 675
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

    .line 677
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

    .line 678
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

    .line 679
    :cond_a2
    new-array v0, v5, [Z

    iput-object v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->taken:[Z

    .line 680
    const/4 v0, 0x2

    new-array v0, v0, [F

    iget-object v1, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->center:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v1, v1, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    aput v1, v0, v4

    iget-object v1, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->center:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v1, v1, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    aput v1, v0, v5

    iput-object v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->markers:[F

    .line 681
    iput v5, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->goal:I

    .line 699
    :cond_b9
    :goto_b9
    invoke-direct {p0}, Lfr/testudo/spacecorsair/mod/ModFaction;->save()V

    .line 700
    return-void

    .line 676
    :cond_bd
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->center:Lfr/testudo/spacecorsair/engine/Vector2;

    iget-object v1, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->ref:Lfr/testudo/spacecorsair/engine/Vector2;

    const/high16 v2, 0x45fa0000    # 8000.0f

    const v3, 0x7f7fffff    # Float.MAX_VALUE

    invoke-static {v1, v2, v3}, Lfr/testudo/spacecorsair/mod/ModPlace;->farPoint(Lfr/testudo/spacecorsair/engine/Vector2;FF)Lfr/testudo/spacecorsair/engine/Vector2;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/engine/Vector2;->setSameAs(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    goto/16 :goto_3c

    .line 682
    :cond_cf
    const-string v0, "GATHER_AND_SELL"

    iget-object v1, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->obj:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e3

    .line 683
    const/4 v0, 0x6

    iget-object v1, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->center:Lfr/testudo/spacecorsair/engine/Vector2;

    const v2, 0x45098000    # 2200.0f

    invoke-direct {p0, v0, v1, v2}, Lfr/testudo/spacecorsair/mod/ModFaction;->scatter(ILfr/testudo/spacecorsair/engine/Vector2;F)V

    goto :goto_b9

    .line 684
    :cond_e3
    const-string v0, "RESCUE"

    iget-object v1, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->obj:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_ff

    .line 685
    iget v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->idx:I

    invoke-static {v0, v7}, Lfr/testudo/spacecorsair/mod/ModFaction;->num(II)I

    move-result v0

    invoke-static {v5, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iget-object v1, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->center:Lfr/testudo/spacecorsair/engine/Vector2;

    const/high16 v2, 0x45480000    # 3200.0f

    invoke-direct {p0, v0, v1, v2}, Lfr/testudo/spacecorsair/mod/ModFaction;->scatter(ILfr/testudo/spacecorsair/engine/Vector2;F)V

    goto :goto_b9

    .line 686
    :cond_ff
    const-string v0, "DEFEND_CIVILIANS"

    iget-object v1, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->obj:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10d

    .line 687
    const/4 v0, 0x4

    iput v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->wavesLeft:I

    goto :goto_b9

    .line 688
    :cond_10d
    const-string v0, "DEFEND_ZONE"

    iget-object v1, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->obj:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_129

    .line 689
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

    .line 690
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

    .line 691
    :cond_13d
    iget v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->idx:I

    invoke-static {v0, v7}, Lfr/testudo/spacecorsair/mod/ModFaction;->num(II)I

    move-result v0

    invoke-static {v5, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->goal:I

    goto/16 :goto_b9

    .line 692
    :cond_14b
    const-string v0, "ESCORT"

    iget-object v1, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->obj:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b9

    .line 694
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->ref:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-static {v0, v6}, Lfr/testudo/spacecorsair/mod/ModPlace;->farthestStation(Lfr/testudo/spacecorsair/engine/Vector2;Lfr/testudo/spacecorsair/business/world/station/Station;)Lfr/testudo/spacecorsair/business/world/station/Station;

    move-result-object v0

    .line 695
    if-eqz v0, :cond_164

    iget-object v1, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->center:Lfr/testudo/spacecorsair/engine/Vector2;

    iget-object v2, v0, Lfr/testudo/spacecorsair/business/world/station/Station;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v1, v2}, Lfr/testudo/spacecorsair/engine/Vector2;->setSameAs(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 696
    :cond_164
    iget-object v1, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->lastCourier:Lfr/testudo/spacecorsair/engine/Vector2;

    iget-object v2, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->center:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v1, v2}, Lfr/testudo/spacecorsair/engine/Vector2;->setSameAs(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 697
    invoke-direct {p0, v0}, Lfr/testudo/spacecorsair/mod/ModFaction;->planEscortEnd(Lfr/testudo/spacecorsair/business/world/station/Station;)V

    goto/16 :goto_b9
.end method

.method private planEscortEnd(Lfr/testudo/spacecorsair/business/world/station/Station;)V
    .registers 5

    .prologue
    const/4 v1, 0x0

    .line 704
    iget v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->phase:I

    if-nez v0, :cond_2b

    iget v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->idx:I

    const/16 v2, 0xa

    invoke-static {v0, v2}, Lfr/testudo/spacecorsair/mod/ModFaction;->str(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModFaction;->level(Ljava/lang/String;)Lfr/testudo/spacecorsair/game/levels/LevelId;

    move-result-object v0

    .line 705
    :goto_11
    iget v2, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->phase:I

    if-nez v2, :cond_21

    iget v2, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->idx:I

    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModFaction;->contract(I)Z

    move-result v2

    if-nez v2, :cond_21

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModFaction;->gateTo(Lfr/testudo/spacecorsair/game/levels/LevelId;)Lfr/testudo/spacecorsair/business/world/Portal;

    move-result-object v1

    .line 706
    :cond_21
    if-eqz v1, :cond_2d

    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->endAt:Lfr/testudo/spacecorsair/engine/Vector2;

    iget-object v1, v1, Lfr/testudo/spacecorsair/business/world/Portal;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/engine/Vector2;->setSameAs(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 710
    :goto_2a
    return-void

    :cond_2b
    move-object v0, v1

    .line 704
    goto :goto_11

    .line 707
    :cond_2d
    if-eqz p1, :cond_3f

    iget-object v0, p1, Lfr/testudo/spacecorsair/business/world/station/Station;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    :goto_31
    invoke-static {v0, p1}, Lfr/testudo/spacecorsair/mod/ModPlace;->farthestStation(Lfr/testudo/spacecorsair/engine/Vector2;Lfr/testudo/spacecorsair/business/world/station/Station;)Lfr/testudo/spacecorsair/business/world/station/Station;

    move-result-object v0

    .line 708
    if-eqz v0, :cond_42

    iget-object v1, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->endAt:Lfr/testudo/spacecorsair/engine/Vector2;

    iget-object v0, v0, Lfr/testudo/spacecorsair/business/world/station/Station;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v1, v0}, Lfr/testudo/spacecorsair/engine/Vector2;->setSameAs(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    goto :goto_2a

    .line 707
    :cond_3f
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->center:Lfr/testudo/spacecorsair/engine/Vector2;

    goto :goto_31

    .line 709
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
    .line 570
    const/4 v0, 0x0

    move v6, v0

    :goto_2
    if-ge v6, p1, :cond_42

    .line 571
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v0

    const-wide v2, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v0, v2

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    mul-double/2addr v0, v2

    .line 572
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

    .line 573
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

    .line 570
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_2

    .line 573
    :cond_40
    const/4 v0, 0x0

    goto :goto_31

    .line 575
    :cond_42
    return-void
.end method

.method private static prefs()Landroid/content/SharedPreferences;
    .registers 1

    .prologue
    .line 370
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModQol;->prefs()Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method static pretty(Lfr/testudo/spacecorsair/game/levels/LevelId;)Ljava/lang/String;
    .registers 9

    .prologue
    const/4 v1, 0x0

    .line 174
    if-eqz p0, :cond_7

    iget-object v0, p0, Lfr/testudo/spacecorsair/game/levels/LevelId;->levelName:Ljava/lang/String;

    if-nez v0, :cond_a

    :cond_7
    const-string v0, ""

    .line 181
    :goto_9
    return-object v0

    .line 175
    :cond_a
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 176
    iget-object v0, p0, Lfr/testudo/spacecorsair/game/levels/LevelId;->levelName:Ljava/lang/String;

    const-string v3, " "

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    array-length v4, v3

    move v0, v1

    :goto_19
    if-ge v0, v4, :cond_46

    aget-object v5, v3, v0

    .line 177
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_26

    .line 176
    :goto_23
    add-int/lit8 v0, v0, 0x1

    goto :goto_19

    .line 178
    :cond_26
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    if-lez v6, :cond_31

    const/16 v6, 0x20

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 179
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

    .line 181
    :cond_46
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_9
.end method

.method private reinforce(ILfr/testudo/spacecorsair/business/Element;Z)V
    .registers 10

    .prologue
    .line 579
    const/4 v4, -0x1

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v5}, Lfr/testudo/spacecorsair/mod/ModFaction;->reinforce(ILfr/testudo/spacecorsair/business/Element;ZIZ)V

    .line 580
    return-void
.end method

.method private reinforce(ILfr/testudo/spacecorsair/business/Element;ZIZ)V
    .registers 14

    .prologue
    .line 583
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->playerShip:Lfr/testudo/spacecorsair/business/player/PlayerShip;

    .line 584
    if-nez v0, :cond_7

    .line 593
    :cond_6
    return-void

    .line 585
    :cond_7
    iget-object v0, v0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModPlace;->ambushPoint(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    move-result-object v7

    .line 586
    const/4 v0, 0x0

    move v6, v0

    :goto_f
    if-ge v6, p1, :cond_6

    .line 587
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

    .line 588
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

    .line 589
    if-nez v0, :cond_6b

    .line 586
    :goto_55
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_f

    .line 588
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

    .line 590
    :cond_6b
    if-eqz p5, :cond_75

    add-int/lit8 v1, p1, -0x1

    if-ne v6, v1, :cond_75

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->setElite(Z)Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    .line 591
    :cond_75
    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModPlace;->boost(Lfr/testudo/spacecorsair/business/ennemis/Ennemis;)V

    goto :goto_55
.end method

.method private static rows()[[Ljava/lang/Object;
    .registers 1

    .prologue
    .line 79
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModFaction;->rows:[[Ljava/lang/Object;

    .line 80
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

    .line 426
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModFaction;->prefs()Landroid/content/SharedPreferences;

    move-result-object v4

    .line 427
    if-nez v4, :cond_d

    .line 441
    :goto_c
    return-void

    .line 428
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

    .line 429
    :cond_21
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 430
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

    .line 431
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

    .line 432
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

    .line 433
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

    .line 434
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->lastCourier:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v3, v3, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 435
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->markers:[F

    if-eqz v0, :cond_13a

    move v0, v2

    .line 436
    :goto_f0
    iget-object v3, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->taken:[Z

    array-length v3, v3

    if-ge v0, v3, :cond_13a

    .line 437
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

    .line 436
    add-int/lit8 v0, v0, 0x1

    goto :goto_f0

    .line 430
    :cond_12d
    const-string v0, ""

    goto/16 :goto_30

    :cond_131
    move v0, v2

    .line 433
    goto :goto_c1

    :cond_133
    move v3, v2

    goto :goto_c6

    :cond_135
    move v3, v2

    .line 437
    goto :goto_11a

    :cond_137
    const-string v3, ""

    goto :goto_127

    .line 440
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

    .line 625
    invoke-direct {p0, p1, v4}, Lfr/testudo/spacecorsair/mod/ModFaction;->civil(Lfr/testudo/spacecorsair/engine/Vector2;Z)Lfr/testudo/spacecorsair/business/world/civil/CivilShip;

    move-result-object v0

    .line 626
    if-nez v0, :cond_c

    const/4 v0, 0x0

    .line 630
    :goto_b
    return-object v0

    .line 627
    :cond_c
    iput-boolean v5, v0, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->isMissionObjective:Z

    .line 628
    sget-object v1, Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;->ORANGE:Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;

    iput-object v1, v0, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->missionObjectiveColor:Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;

    .line 629
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

    .line 596
    mul-int/lit8 v0, p1, 0x2

    new-array v2, v0, [F

    move v0, v1

    .line 597
    :goto_6
    if-ge v0, p1, :cond_21

    .line 598
    const v3, 0x3e4ccccd    # 0.2f

    mul-float/2addr v3, p3

    invoke-static {p2, v3, p3}, Lfr/testudo/spacecorsair/mod/ModFaction;->away(Lfr/testudo/spacecorsair/engine/Vector2;FF)Lfr/testudo/spacecorsair/engine/Vector2;

    move-result-object v3

    .line 599
    mul-int/lit8 v4, v0, 0x2

    iget v5, v3, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    aput v5, v2, v4

    .line 600
    mul-int/lit8 v4, v0, 0x2

    add-int/lit8 v4, v4, 0x1

    iget v3, v3, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    aput v3, v2, v4

    .line 597
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 602
    :cond_21
    new-array v0, p1, [Z

    iput-object v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->taken:[Z

    .line 603
    iput-object v2, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->markers:[F

    .line 604
    iput p1, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->goal:I

    .line 605
    iput v1, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->progress:I

    .line 606
    return-void
.end method

.method private secondSector()Lfr/testudo/spacecorsair/game/levels/LevelId;
    .registers 3

    .prologue
    .line 307
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

    .line 309
    :goto_1f
    return-object v0

    .line 308
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

    .line 309
    :cond_3f
    const/4 v0, 0x0

    goto :goto_1f
.end method

.method private static sectorIs(Lfr/testudo/spacecorsair/game/levels/LevelId;)Z
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 1038
    :try_start_1
    sget-object v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v1, v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v1, v1, Lfr/testudo/spacecorsair/game/Game;->currentLevel:Lfr/testudo/spacecorsair/game/levels/Level;

    iget-object v1, v1, Lfr/testudo/spacecorsair/game/levels/Level;->name:Ljava/lang/String;

    .line 1039
    if-eqz p0, :cond_16

    if-eqz v1, :cond_16

    iget-object v2, p0, Lfr/testudo/spacecorsair/game/levels/LevelId;->levelName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_12
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_12} :catch_17

    move-result v1

    if-eqz v1, :cond_16

    const/4 v0, 0x1

    .line 1041
    :cond_16
    :goto_16
    return v0

    .line 1040
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

    .line 713
    iput-boolean v4, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->setupDone:Z

    .line 714
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->playerShip:Lfr/testudo/spacecorsair/business/player/PlayerShip;

    .line 715
    if-nez v0, :cond_f

    .line 817
    :cond_e
    :goto_e
    return-void

    .line 716
    :cond_f
    iget-boolean v1, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->planned:Z

    if-nez v1, :cond_16

    invoke-direct {p0, v0}, Lfr/testudo/spacecorsair/mod/ModFaction;->plan(Lfr/testudo/spacecorsair/business/player/PlayerShip;)V

    .line 717
    :cond_16
    iput-boolean v5, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->ambushed2:Z

    iput-boolean v5, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->ambushed:Z

    .line 718
    iput-boolean v5, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->wavesOn:Z

    .line 719
    iput-object v3, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->target:Lfr/testudo/spacecorsair/business/Element;

    .line 720
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

    .line 722
    const-string v0, "DEFEND_CIVILIANS"

    iget-object v1, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->obj:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9f

    .line 723
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->center:Lfr/testudo/spacecorsair/engine/Vector2;

    const v1, 0x458ca000    # 4500.0f

    const v2, 0x459c4000    # 5000.0f

    invoke-static {v0, v1, v2}, Lfr/testudo/spacecorsair/mod/ModFaction;->farFrom(Lfr/testudo/spacecorsair/engine/Vector2;FF)Lfr/testudo/spacecorsair/engine/Vector2;

    move-result-object v1

    move v0, v5

    .line 724
    :goto_49
    const/4 v2, 0x4

    if-ge v0, v2, :cond_99

    .line 725
    iget-object v2, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->center:Lfr/testudo/spacecorsair/engine/Vector2;

    const/high16 v3, 0x43e10000    # 450.0f

    invoke-static {v2, v9, v3}, Lfr/testudo/spacecorsair/mod/ModFaction;->away(Lfr/testudo/spacecorsair/engine/Vector2;FF)Lfr/testudo/spacecorsair/engine/Vector2;

    move-result-object v2

    invoke-direct {p0, v2, v4}, Lfr/testudo/spacecorsair/mod/ModFaction;->civil(Lfr/testudo/spacecorsair/engine/Vector2;Z)Lfr/testudo/spacecorsair/business/world/civil/CivilShip;

    move-result-object v2

    .line 726
    if-nez v2, :cond_5d

    .line 724
    :goto_5a
    add-int/lit8 v0, v0, 0x1

    goto :goto_49

    .line 727
    :cond_5d
    iget v3, v2, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->maxLife:F

    const/high16 v6, 0x40400000    # 3.0f

    mul-float/2addr v3, v6

    iput v3, v2, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->maxLife:F

    .line 728
    iget v3, v2, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->maxLife:F

    iput v3, v2, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->life:F

    .line 729
    const-string v3, "Evacuee transport"

    invoke-static {v3}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lfr/testudo/spacecorsair/mod/ModFaction;->name(Lfr/testudo/spacecorsair/business/Element;Ljava/lang/String;)V

    .line 730
    iput-boolean v4, v2, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->isMissionObjective:Z

    .line 731
    sget-object v3, Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;->GREEN:Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;

    iput-object v3, v2, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->missionObjectiveColor:Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;

    .line 733
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

    .line 735
    :cond_99
    const/16 v0, 0x1770

    iput v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->timer:I

    goto/16 :goto_e

    .line 736
    :cond_9f
    const-string v0, "DEFEND_ZONE"

    iget-object v1, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->obj:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_101

    .line 737
    const/16 v0, 0xfa0

    iput v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->timer:I

    .line 739
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->center:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-direct {p0, v0, v4}, Lfr/testudo/spacecorsair/mod/ModFaction;->civil(Lfr/testudo/spacecorsair/engine/Vector2;Z)Lfr/testudo/spacecorsair/business/world/civil/CivilShip;

    move-result-object v0

    iput-object v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->outpost:Lfr/testudo/spacecorsair/business/world/civil/CivilShip;

    .line 740
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->outpost:Lfr/testudo/spacecorsair/business/world/civil/CivilShip;

    if-eqz v0, :cond_e

    .line 741
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->outpost:Lfr/testudo/spacecorsair/business/world/civil/CivilShip;

    iget v1, v0, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->maxLife:F

    const/high16 v2, 0x41400000    # 12.0f

    mul-float/2addr v1, v2

    iput v1, v0, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->maxLife:F

    .line 742
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->outpost:Lfr/testudo/spacecorsair/business/world/civil/CivilShip;

    iget-object v1, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->outpost:Lfr/testudo/spacecorsair/business/world/civil/CivilShip;

    iget v1, v1, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->maxLife:F

    iget v2, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->outpostLost:I

    rsub-int/lit8 v2, v2, 0x64

    int-to-float v2, v2

    mul-float/2addr v1, v2

    div-float/2addr v1, v9

    iput v1, v0, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->life:F

    .line 743
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->outpost:Lfr/testudo/spacecorsair/business/world/civil/CivilShip;

    const-string v1, "Outpost"

    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lfr/testudo/spacecorsair/mod/ModFaction;->name(Lfr/testudo/spacecorsair/business/Element;Ljava/lang/String;)V

    .line 744
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->outpost:Lfr/testudo/spacecorsair/business/world/civil/CivilShip;

    iput-boolean v4, v0, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->isMissionObjective:Z

    .line 745
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->outpost:Lfr/testudo/spacecorsair/business/world/civil/CivilShip;

    sget-object v1, Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;->GREEN:Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;

    iput-object v1, v0, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->missionObjectiveColor:Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;

    .line 746
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

    .line 748
    :cond_101
    const-string v0, "BOUNTY"

    iget-object v1, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->obj:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19a

    .line 749
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

    if-ne v0, v4, :cond_18c

    :cond_121
    move v13, v4

    .line 750
    :goto_122
    if-eqz v13, :cond_18e

    invoke-direct {p0}, Lfr/testudo/spacecorsair/mod/ModFaction;->foeLevel()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisFactory;->newFrelon(I)Lfr/testudo/spacecorsair/business/ennemis/FrelonShip;

    move-result-object v1

    .line 751
    :goto_12e
    if-eqz v1, :cond_e

    .line 752
    invoke-virtual {v1, v4}, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->setElite(Z)Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    .line 753
    iget v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->idx:I

    const/16 v2, 0x9

    invoke-static {v0, v2}, Lfr/testudo/spacecorsair/mod/ModFaction;->str(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lfr/testudo/spacecorsair/mod/ModFaction;->name(Lfr/testudo/spacecorsair/business/Element;Ljava/lang/String;)V

    .line 754
    iget v2, v1, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->maxLife:F

    iget v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->idx:I

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModFaction;->hunt(I)Z

    move-result v0

    if-eqz v0, :cond_193

    const/high16 v0, 0x41000000    # 8.0f

    :goto_14a
    mul-float/2addr v0, v2

    iput v0, v1, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->maxLife:F

    .line 755
    iget v0, v1, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->maxLife:F

    iput v0, v1, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->life:F

    .line 756
    iput v9, v1, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->lifeInPourc:F

    .line 757
    iget-object v0, v1, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->lifeBar:Lfr/testudo/spacecorsair/display/hud/InfoBarEnnemis;

    if-eqz v0, :cond_15c

    iget-object v0, v1, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->lifeBar:Lfr/testudo/spacecorsair/display/hud/InfoBarEnnemis;

    invoke-virtual {v0, v9}, Lfr/testudo/spacecorsair/display/hud/InfoBarEnnemis;->setValue(F)V

    .line 758
    :cond_15c
    iget-object v2, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->center:Lfr/testudo/spacecorsair/engine/Vector2;

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lfr/testudo/spacecorsair/mod/ModFaction;->place(Lfr/testudo/spacecorsair/business/ennemis/Ennemis;Lfr/testudo/spacecorsair/engine/Vector2;Lfr/testudo/spacecorsair/business/Element;ZZ)Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    move-result-object v0

    iput-object v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->target:Lfr/testudo/spacecorsair/business/Element;

    move v0, v5

    .line 759
    :goto_166
    iget v1, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->idx:I

    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModFaction;->hunt(I)Z

    move-result v1

    if-eqz v1, :cond_196

    const/4 v1, 0x4

    :goto_16f
    if-ge v0, v1, :cond_e

    if-eqz v13, :cond_198

    move v1, v4

    :goto_174
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

    goto :goto_166

    :cond_18c
    move v13, v5

    .line 749
    goto :goto_122

    .line 750
    :cond_18e
    invoke-direct {p0, v5, v4}, Lfr/testudo/spacecorsair/mod/ModFaction;->foe(IZ)Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    move-result-object v1

    goto :goto_12e

    .line 754
    :cond_193
    const/high16 v0, 0x40800000    # 4.0f

    goto :goto_14a

    :cond_196
    move v1, v12

    .line 759
    goto :goto_16f

    :cond_198
    move v1, v5

    goto :goto_174

    .line 761
    :cond_19a
    const-string v0, "KILL_ENEMY_TYPE"

    iget-object v1, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->obj:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b7

    .line 762
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

    .line 763
    :cond_1b7
    const-string v0, "DESTROY_STATION"

    iget-object v1, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->obj:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_24c

    .line 764
    invoke-direct {p0}, Lfr/testudo/spacecorsair/mod/ModFaction;->foeLevel()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisFactory;->newRocketTourelle(I)Lfr/testudo/spacecorsair/business/ennemis/RocketTourelle;

    move-result-object v1

    .line 765
    if-eqz v1, :cond_e

    .line 766
    invoke-virtual {v1, v4}, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->setElite(Z)Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    .line 767
    iget v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->idx:I

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModFaction;->contract(I)Z

    move-result v0

    if-nez v0, :cond_1e4

    iget v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->idx:I

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModFaction;->order(I)I

    move-result v0

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModV35;->finale(I)Z

    move-result v0

    if-eqz v0, :cond_247

    :cond_1e4
    iget v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->idx:I

    const/16 v2, 0x9

    invoke-static {v0, v2}, Lfr/testudo/spacecorsair/mod/ModFaction;->str(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_247

    iget v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->idx:I

    const/16 v2, 0x9

    invoke-static {v0, v2}, Lfr/testudo/spacecorsair/mod/ModFaction;->str(II)Ljava/lang/String;

    move-result-object v0

    :goto_1fa
    invoke-static {v1, v0}, Lfr/testudo/spacecorsair/mod/ModFaction;->name(Lfr/testudo/spacecorsair/business/Element;Ljava/lang/String;)V

    .line 768
    iget v0, v1, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->maxLife:F

    const/high16 v2, 0x41000000    # 8.0f

    mul-float/2addr v0, v2

    iput v0, v1, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->maxLife:F

    .line 769
    iget v0, v1, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->maxLife:F

    iput v0, v1, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->life:F

    .line 770
    iput v9, v1, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->lifeInPourc:F

    .line 771
    iget-object v0, v1, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->lifeBar:Lfr/testudo/spacecorsair/display/hud/InfoBarEnnemis;

    if-eqz v0, :cond_213

    iget-object v0, v1, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->lifeBar:Lfr/testudo/spacecorsair/display/hud/InfoBarEnnemis;

    invoke-virtual {v0, v9}, Lfr/testudo/spacecorsair/display/hud/InfoBarEnnemis;->setValue(F)V

    .line 772
    :cond_213
    iget-object v2, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->center:Lfr/testudo/spacecorsair/engine/Vector2;

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lfr/testudo/spacecorsair/mod/ModFaction;->place(Lfr/testudo/spacecorsair/business/ennemis/Ennemis;Lfr/testudo/spacecorsair/engine/Vector2;Lfr/testudo/spacecorsair/business/Element;ZZ)Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    move-result-object v0

    iput-object v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->target:Lfr/testudo/spacecorsair/business/Element;

    move v6, v5

    .line 773
    :goto_21d
    const/4 v0, 0x3

    if-ge v6, v0, :cond_e

    iget v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->idx:I

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModFaction;->order(I)I

    move-result v0

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModV35;->finale(I)Z

    move-result v0

    if-eqz v0, :cond_24a

    invoke-direct {p0}, Lfr/testudo/spacecorsair/mod/ModFaction;->side()I

    move-result v0

    :goto_230
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

    goto :goto_21d

    .line 767
    :cond_247
    const-string v0, "Authority Relay Station"

    goto :goto_1fa

    :cond_24a
    move v0, v12

    .line 773
    goto :goto_230

    .line 775
    :cond_24c
    const-string v0, "ESCORT"

    iget-object v1, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->obj:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_34f

    .line 776
    new-instance v2, Lfr/testudo/spacecorsair/engine/Vector2;

    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->lastCourier:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-direct {v2, v0}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>(Lfr/testudo/spacecorsair/engine/Vector2;)V

    .line 777
    iget-boolean v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->courierMoving:Z

    if-nez v0, :cond_323

    move v0, v4

    .line 778
    :goto_262
    iget v1, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->phase:I

    if-ne v1, v4, :cond_2c2

    iget-boolean v1, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->courierMoving:Z

    if-nez v1, :cond_2c2

    iget-boolean v1, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->secondLegPlaced:Z

    if-nez v1, :cond_2c2

    .line 780
    iget-object v1, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->entry:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-static {v1, v3}, Lfr/testudo/spacecorsair/mod/ModPlace;->farthestStation(Lfr/testudo/spacecorsair/engine/Vector2;Lfr/testudo/spacecorsair/business/world/station/Station;)Lfr/testudo/spacecorsair/business/world/station/Station;

    move-result-object v1

    .line 781
    iget-object v3, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->endAt:Lfr/testudo/spacecorsair/engine/Vector2;

    if-eqz v1, :cond_326

    iget-object v1, v1, Lfr/testudo/spacecorsair/business/world/station/Station;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    :goto_27a
    invoke-virtual {v3, v1}, Lfr/testudo/spacecorsair/engine/Vector2;->setSameAs(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 782
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

    .line 783
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

    .line 784
    iget-object v1, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->lastCourier:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v1, v2}, Lfr/testudo/spacecorsair/engine/Vector2;->setSameAs(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 785
    iput-boolean v4, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->secondLegPlaced:Z

    .line 786
    invoke-direct {p0}, Lfr/testudo/spacecorsair/mod/ModFaction;->save()V

    .line 788
    :cond_2c2
    invoke-direct {p0, v2, v4}, Lfr/testudo/spacecorsair/mod/ModFaction;->civil(Lfr/testudo/spacecorsair/engine/Vector2;Z)Lfr/testudo/spacecorsair/business/world/civil/CivilShip;

    move-result-object v1

    .line 789
    if-eqz v1, :cond_e

    .line 790
    iget v2, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->idx:I

    const/16 v3, 0x9

    invoke-static {v2, v3}, Lfr/testudo/spacecorsair/mod/ModFaction;->str(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lfr/testudo/spacecorsair/mod/ModFaction;->name(Lfr/testudo/spacecorsair/business/Element;Ljava/lang/String;)V

    .line 791
    iget v2, v1, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->maxLife:F

    const/high16 v3, 0x40c00000    # 6.0f

    mul-float/2addr v2, v3

    iput v2, v1, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->maxLife:F

    .line 792
    iget v2, v1, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->maxLife:F

    iput v2, v1, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->life:F

    .line 793
    iput-boolean v4, v1, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->isMissionObjective:Z

    .line 794
    sget-object v2, Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;->GREEN:Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;

    iput-object v2, v1, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->missionObjectiveColor:Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;

    .line 795
    iput-object v1, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->target:Lfr/testudo/spacecorsair/business/Element;

    .line 796
    iget-object v2, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->gate:Lfr/testudo/spacecorsair/engine/Vector2;

    iget-object v3, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->endAt:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v2, v3}, Lfr/testudo/spacecorsair/engine/Vector2;->setSameAs(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 797
    if-nez v0, :cond_32e

    new-array v0, v4, [Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;

    iget-object v2, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->gate:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v2, v2, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    iget-object v3, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->gate:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v3, v3, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    invoke-static {v2, v3}, Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;->newMoove(FF)Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;

    move-result-object v2

    aput-object v2, v0, v5

    invoke-virtual {v1, v0}, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->setActivity([Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;)V

    .line 799
    :goto_302
    const/high16 v2, 0x3f800000    # 1.0f

    iget v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->phase:I

    if-nez v0, :cond_34c

    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->center:Lfr/testudo/spacecorsair/engine/Vector2;

    :goto_30a
    iget-object v3, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->gate:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v0, v3}, Lfr/testudo/spacecorsair/engine/Vector2;->distance(Lfr/testudo/spacecorsair/engine/Vector2;)F

    move-result v0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->startDist:F

    .line 800
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->lastCourier:Lfr/testudo/spacecorsair/engine/Vector2;

    iget-object v1, v1, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/engine/Vector2;->setSameAs(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 801
    const/16 v0, 0x2710

    iput v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->courierCheck:I

    goto/16 :goto_e

    :cond_323
    move v0, v5

    .line 777
    goto/16 :goto_262

    .line 781
    :cond_326
    iget-object v1, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->entry:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModFaction;->farGate(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    move-result-object v1

    goto/16 :goto_27a

    .line 798
    :cond_32e
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

    goto :goto_302

    .line 799
    :cond_34c
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->entry:Lfr/testudo/spacecorsair/engine/Vector2;

    goto :goto_30a

    .line 803
    :cond_34f
    const-string v0, "SCAN_CIVIL"

    iget-object v1, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->obj:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_385

    .line 804
    iget v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->goal:I

    new-array v0, v0, [I

    iput-object v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->scanMs:[I

    .line 805
    :goto_35f
    iget v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->goal:I

    if-ge v5, v0, :cond_e

    .line 806
    iget v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->progress:I

    if-ge v5, v0, :cond_374

    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->scanMs:[I

    const/4 v1, -0x1

    aput v1, v0, v5

    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->civs:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 805
    :goto_371
    add-int/lit8 v5, v5, 0x1

    goto :goto_35f

    .line 807
    :cond_374
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->center:Lfr/testudo/spacecorsair/engine/Vector2;

    const/high16 v1, 0x43960000    # 300.0f

    const v2, 0x45228000    # 2600.0f

    invoke-static {v0, v1, v2}, Lfr/testudo/spacecorsair/mod/ModFaction;->away(Lfr/testudo/spacecorsair/engine/Vector2;FF)Lfr/testudo/spacecorsair/engine/Vector2;

    move-result-object v0

    iget-object v1, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->center:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-direct {p0, v0, v1}, Lfr/testudo/spacecorsair/mod/ModFaction;->scanTarget(Lfr/testudo/spacecorsair/engine/Vector2;Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/business/world/civil/CivilShip;

    goto :goto_371

    .line 809
    :cond_385
    const-string v0, "KILL_FLAGSHIP"

    iget-object v1, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->obj:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 810
    iget v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->idx:I

    const/16 v1, 0x8

    invoke-static {v0, v1}, Lfr/testudo/spacecorsair/mod/ModFaction;->str(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v4}, Lfr/testudo/spacecorsair/mod/ModCapitals;->ensure(Ljava/lang/String;Z)Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;

    move-result-object v0

    .line 811
    if-eqz v0, :cond_e

    .line 812
    iput-boolean v4, v0, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->isMissionObjective:Z

    .line 813
    sget-object v1, Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;->RED:Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;

    iput-object v1, v0, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->missionObjectiveColor:Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;

    .line 814
    iput-object v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->target:Lfr/testudo/spacecorsair/business/Element;

    goto/16 :goto_e
.end method

.method private side()I
    .registers 5

    .prologue
    const/4 v0, 0x2

    .line 510
    iget v1, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->idx:I

    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModFaction;->key(I)Ljava/lang/String;

    move-result-object v1

    .line 511
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

    .line 513
    :cond_21
    :goto_21
    return v0

    .line 512
    :cond_22
    const-string v2, "varn"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_32

    iget v1, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->idx:I

    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModFaction;->order(I)I

    move-result v1

    if-eq v1, v0, :cond_21

    .line 513
    :cond_32
    const/4 v0, 0x0

    goto :goto_21
.end method

.method private stateKey()Ljava/lang/String;
    .registers 3

    .prologue
    .line 422
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
    .line 134
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModFaction;->rows()[[Ljava/lang/Object;

    move-result-object v0

    aget-object v0, v0, p0

    aget-object v0, v0, p1

    check-cast v0, Ljava/lang/String;

    .line 135
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

.method static testObjective()Lfr/testudo/spacecorsair/engine/Vector2;
    .registers 2

    .prologue
    .line 409
    :try_start_0
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->currentMission:Lfr/testudo/spacecorsair/business/mission/Mission;

    .line 410
    if-eqz v0, :cond_27

    iget-object v1, v0, Lfr/testudo/spacecorsair/business/mission/Mission;->missionEngine:Lfr/testudo/spacecorsair/business/mission/MissionListener;

    instance-of v1, v1, Lfr/testudo/spacecorsair/mod/ModFaction;

    if-eqz v1, :cond_27

    .line 411
    iget-object v0, v0, Lfr/testudo/spacecorsair/business/mission/Mission;->missionEngine:Lfr/testudo/spacecorsair/business/mission/MissionListener;

    check-cast v0, Lfr/testudo/spacecorsair/mod/ModFaction;

    .line 412
    iget-boolean v1, v0, Lfr/testudo/spacecorsair/mod/ModFaction;->planned:Z

    if-eqz v1, :cond_27

    iget-object v1, v0, Lfr/testudo/spacecorsair/mod/ModFaction;->target:Lfr/testudo/spacecorsair/business/Element;

    if-eqz v1, :cond_23

    iget-object v1, v0, Lfr/testudo/spacecorsair/mod/ModFaction;->target:Lfr/testudo/spacecorsair/business/Element;

    iget-boolean v1, v1, Lfr/testudo/spacecorsair/business/Element;->removed:Z

    if-nez v1, :cond_23

    iget-object v0, v0, Lfr/testudo/spacecorsair/mod/ModFaction;->target:Lfr/testudo/spacecorsair/business/Element;

    iget-object v0, v0, Lfr/testudo/spacecorsair/business/Element;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    .line 417
    :goto_22
    return-object v0

    .line 412
    :cond_23
    iget-object v0, v0, Lfr/testudo/spacecorsair/mod/ModFaction;->center:Lfr/testudo/spacecorsair/engine/Vector2;
    :try_end_25
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_25} :catch_26

    goto :goto_22

    .line 414
    :catch_26
    move-exception v0

    .line 417
    :cond_27
    const/4 v0, 0x0

    goto :goto_22
.end method

.method static testTick(Lfr/testudo/spacecorsair/business/player/PlayerShip;)V
    .registers 4

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

    move-result-object v0

    .line 51
    if-eqz v0, :cond_26

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_26

    sget-object v1, Lfr/testudo/spacecorsair/mod/ModFaction;->testStarted:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_27

    .line 71
    :cond_26
    :goto_26
    return-void

    .line 52
    :cond_27
    sput-object v0, Lfr/testudo/spacecorsair/mod/ModFaction;->testStarted:Ljava/lang/String;

    .line 54
    :try_start_29
    const-string v1, "NONE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4b

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

    .line 68
    :catch_49
    move-exception v0

    goto :goto_26

    .line 61
    :cond_4b
    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModFaction;->byId(Ljava/lang/String;)Lfr/testudo/spacecorsair/business/mission/Mission;

    move-result-object v1

    .line 62
    if-eqz v1, :cond_26

    .line 63
    sget-object v2, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v2, v2, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->currentMission:Lfr/testudo/spacecorsair/business/mission/Mission;

    .line 64
    if-eqz v2, :cond_5e

    if-eq v2, v1, :cond_5e

    iget-object v2, v2, Lfr/testudo/spacecorsair/business/mission/Mission;->missionEngine:Lfr/testudo/spacecorsair/business/mission/MissionListener;

    invoke-virtual {v2}, Lfr/testudo/spacecorsair/business/mission/MissionListener;->giveUp()V

    .line 65
    :cond_5e
    sget-object v2, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iput-object v1, v2, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->currentMission:Lfr/testudo/spacecorsair/business/mission/Mission;

    .line 66
    iget-object v1, v1, Lfr/testudo/spacecorsair/business/mission/Mission;->missionEngine:Lfr/testudo/spacecorsair/business/mission/MissionListener;

    invoke-virtual {v1}, Lfr/testudo/spacecorsair/business/mission/MissionListener;->init()V

    .line 67
    sget-object v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v1, v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->missionRepository:Lfr/testudo/spacecorsair/business/mission/MissionRepository;

    invoke-virtual {v1, v0}, Lfr/testudo/spacecorsair/business/mission/MissionRepository;->saveMissionAsCurrentOne(Ljava/lang/String;)V
    :try_end_6e
    .catch Ljava/lang/Throwable; {:try_start_29 .. :try_end_6e} :catch_49

    goto :goto_26
.end method

.method static text(I)Ljava/lang/String;
    .registers 8

    .prologue
    const/16 v6, 0x10

    .line 276
    const v0, 0x7f7f03e8

    sub-int v1, p0, v0

    .line 277
    if-ltz v1, :cond_163

    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModFaction;->count()I

    move-result v0

    if-ge v1, v0, :cond_163

    .line 278
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModCapitals;->FACTIONS:[Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;

    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModFaction;->key(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModFaction;->faction(Ljava/lang/String;)I

    move-result v2

    aget-object v2, v0, v2

    .line 279
    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModFaction;->key(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModFaction;->commander(Ljava/lang/String;)I

    move-result v0

    .line 280
    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModFaction;->zoneOf(I)Lfr/testudo/spacecorsair/game/levels/LevelId;

    move-result-object v3

    .line 281
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

    const-string v4, "<br><br><b>Objective</b>: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v4, 0xc

    .line 282
    invoke-static {v1, v4}, Lfr/testudo/spacecorsair/mod/ModFaction;->str(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 283
    if-eqz v3, :cond_158

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "<br><b>Sector</b>: "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v3}, Lfr/testudo/spacecorsair/mod/ModFaction;->pretty(Lfr/testudo/spacecorsair/game/levels/LevelId;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_7f
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "<br><b>Reward</b>: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v3, 0xf

    .line 284
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

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v1, v6}, Lfr/testudo/spacecorsair/mod/ModFaction;->str(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_15c

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

    :goto_c8
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " (+"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 285
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

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModFaction;->key(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModRep;->payoutBonus(Ljava/lang/String;)F

    move-result v0

    const/4 v4, 0x0

    cmpl-float v0, v0, v4

    if-lez v0, :cond_160

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

    :goto_125
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")<br><br>Missions of this chain are handed out and handed in at <b>"

    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, v2, Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;->hq:Lfr/testudo/spacecorsair/game/levels/LevelId;

    .line 286
    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModFaction;->pretty(Lfr/testudo/spacecorsair/game/levels/LevelId;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "</b>: hail the "

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

    .line 290
    :goto_157
    return-object v0

    .line 283
    :cond_158
    const-string v0, ""

    goto/16 :goto_7f

    .line 284
    :cond_15c
    const-string v0, ""

    goto/16 :goto_c8

    .line 285
    :cond_160
    const-string v0, ""

    goto :goto_125

    .line 288
    :cond_163
    const v0, 0x7f7f07d0

    sub-int v0, p0, v0

    .line 289
    if-ltz v0, :cond_18e

    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModFaction;->count()I

    move-result v1

    if-ge v0, v1, :cond_18e

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

    goto :goto_157

    .line 290
    :cond_18e
    const/4 v0, 0x0

    goto :goto_157
.end method

.method private static xy(Ljava/lang/String;Lfr/testudo/spacecorsair/engine/Vector2;)V
    .registers 5

    .prologue
    .line 486
    const-string v0, ","

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 487
    const/4 v1, 0x0

    aget-object v1, v0, v1

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    const/4 v2, 0x1

    aget-object v0, v0, v2

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    invoke-virtual {p1, v1, v0}, Lfr/testudo/spacecorsair/engine/Vector2;->set(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 488
    return-void
.end method

.method static zoneOf(I)Lfr/testudo/spacecorsair/game/levels/LevelId;
    .registers 7

    .prologue
    .line 299
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModFaction;->active()Lfr/testudo/spacecorsair/mod/ModFaction;

    move-result-object v0

    .line 300
    if-eqz v0, :cond_11

    iget v1, v0, Lfr/testudo/spacecorsair/mod/ModFaction;->idx:I

    if-ne v1, p0, :cond_11

    iget-object v1, v0, Lfr/testudo/spacecorsair/mod/ModFaction;->zone:Lfr/testudo/spacecorsair/game/levels/LevelId;

    if-eqz v1, :cond_11

    iget-object v0, v0, Lfr/testudo/spacecorsair/mod/ModFaction;->zone:Lfr/testudo/spacecorsair/game/levels/LevelId;

    .line 302
    :goto_10
    return-object v0

    .line 301
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

    .line 302
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
    .line 1229
    :try_start_0
    invoke-direct {p0}, Lfr/testudo/spacecorsair/mod/ModFaction;->instruction()Ljava/lang/String;

    move-result-object v0

    .line 1230
    if-eqz v0, :cond_7

    .line 1233
    :cond_6
    :goto_6
    return-object v0

    .line 1230
    :cond_7
    const-string v0, ""
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_9} :catch_a

    goto :goto_6

    .line 1231
    :catch_a
    move-exception v0

    .line 1232
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->instrText:Ljava/lang/String;

    .line 1233
    if-nez v0, :cond_6

    const-string v0, ""

    goto :goto_6
.end method

.method public giveUp()V
    .registers 1

    .prologue
    .line 1307
    invoke-direct {p0}, Lfr/testudo/spacecorsair/mod/ModFaction;->cleanup()V

    .line 1308
    invoke-virtual {p0}, Lfr/testudo/spacecorsair/mod/ModFaction;->terminate()V

    .line 1309
    return-void
.end method

.method public init()V
    .registers 9

    .prologue
    const/4 v1, 0x0

    .line 1288
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModFaction;->prefs()Landroid/content/SharedPreferences;

    move-result-object v2

    .line 1289
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

    .line 1290
    invoke-direct {p0}, Lfr/testudo/spacecorsair/mod/ModFaction;->cleanup()V

    .line 1291
    iput-boolean v1, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->planned:Z

    .line 1292
    iput v1, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->phase:I

    .line 1293
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

    .line 1294
    invoke-direct {p0}, Lfr/testudo/spacecorsair/mod/ModFaction;->save()V

    .line 1295
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

    .line 1296
    :cond_91
    iget v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->idx:I

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModFaction;->key(I)Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->idx:I

    const/16 v2, 0xb

    invoke-static {v1, v2}, Lfr/testudo/spacecorsair/mod/ModFaction;->str(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lfr/testudo/spacecorsair/mod/ModComms;->brief(Ljava/lang/String;Ljava/lang/String;)V

    .line 1297
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/Game;->currentLevel:Lfr/testudo/spacecorsair/game/levels/Level;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/levels/Level;->name:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lfr/testudo/spacecorsair/mod/ModFaction;->onZoneChanged(Ljava/lang/String;Ljava/lang/String;)V

    .line 1298
    return-void

    :cond_af
    move v0, v1

    .line 1289
    goto/16 :goto_2f

    .line 1293
    :cond_b2
    iget v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->idx:I

    const/4 v1, 0x4

    invoke-static {v0, v1}, Lfr/testudo/spacecorsair/mod/ModFaction;->str(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModFaction;->level(Ljava/lang/String;)Lfr/testudo/spacecorsair/game/levels/LevelId;

    move-result-object v0

    goto :goto_5e

    .line 1295
    :cond_be
    const-string v0, ""

    goto :goto_8a
.end method

.method public isCompleted()Z
    .registers 2

    .prologue
    .line 1302
    iget-boolean v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->completed:Z

    return v0
.end method

.method public onBeforePlayerDock()V
    .registers 3

    .prologue
    .line 1198
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

    .line 1204
    :cond_1d
    :goto_1d
    return-void

    .line 1199
    :cond_1e
    invoke-direct {p0}, Lfr/testudo/spacecorsair/mod/ModFaction;->secondSector()Lfr/testudo/spacecorsair/game/levels/LevelId;

    move-result-object v0

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModFaction;->sectorIs(Lfr/testudo/spacecorsair/game/levels/LevelId;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 1200
    invoke-direct {p0}, Lfr/testudo/spacecorsair/mod/ModFaction;->complete()V
    :try_end_2b
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_2b} :catch_2c

    goto :goto_1d

    .line 1201
    :catch_2c
    move-exception v0

    goto :goto_1d
.end method

.method public onDoPhysic(J)V
    .registers 12

    .prologue
    .line 844
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v6, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->playerShip:Lfr/testudo/spacecorsair/business/player/PlayerShip;

    .line 845
    iget-boolean v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->completed:Z

    if-nez v0, :cond_12

    iget-boolean v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->inZone:Z

    if-eqz v0, :cond_12

    if-eqz v6, :cond_12

    iget-boolean v0, v6, Lfr/testudo/spacecorsair/business/player/PlayerShip;->removed:Z

    if-eqz v0, :cond_13

    .line 1018
    :cond_12
    :goto_12
    return-void

    .line 846
    :cond_13
    iget-boolean v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->setupDone:Z

    if-nez v0, :cond_37

    .line 848
    iget v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->zoneMs:I

    if-nez v0, :cond_22

    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->entry:Lfr/testudo/spacecorsair/engine/Vector2;

    iget-object v1, v6, Lfr/testudo/spacecorsair/business/player/PlayerShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/engine/Vector2;->setSameAs(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 849
    :cond_22
    iget v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->zoneMs:I

    int-to-long v0, v0

    add-long/2addr v0, p1

    long-to-int v0, v0

    iput v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->zoneMs:I

    .line 850
    iget v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->zoneMs:I

    const/16 v1, 0x5dc

    if-le v0, v1, :cond_12

    iget-boolean v0, v6, Lfr/testudo/spacecorsair/business/player/PlayerShip;->isDocked:Z

    if-nez v0, :cond_12

    invoke-direct {p0}, Lfr/testudo/spacecorsair/mod/ModFaction;->setup()V

    goto :goto_12

    .line 853
    :cond_37
    invoke-static {v6}, Lfr/testudo/spacecorsair/mod/ModPlace;->tickBoost(Lfr/testudo/spacecorsair/business/player/PlayerShip;)V

    .line 854
    iget v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->phase:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_53

    const-string v0, "DELIVERY"

    iget-object v1, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->obj:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_12

    const-string v0, "GATHER_AND_SELL"

    iget-object v1, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->obj:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_12

    .line 855
    :cond_53
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->markers:[F

    if-eqz v0, :cond_1b7

    .line 856
    const/4 v0, 0x0

    :goto_58
    iget-object v1, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->taken:[Z

    array-length v1, v1

    if-ge v0, v1, :cond_17f

    .line 857
    iget-object v1, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->taken:[Z

    aget-boolean v1, v1, v0

    if-eqz v1, :cond_66

    .line 856
    :cond_63
    :goto_63
    add-int/lit8 v0, v0, 0x1

    goto :goto_58

    .line 858
    :cond_66
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

    .line 859
    mul-float/2addr v1, v1

    mul-float/2addr v2, v2

    add-float/2addr v1, v2

    float-to-double v2, v1

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    double-to-float v2, v2

    .line 860
    iget-boolean v1, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->ambushed:Z

    if-nez v1, :cond_c9

    const v1, 0x44a28000    # 1300.0f

    cmpg-float v1, v2, v1

    if-gez v1, :cond_c9

    const-string v1, "FIND_OBJECT"

    iget-object v3, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->obj:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a6

    const-string v1, "DELIVERY"

    iget-object v3, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->obj:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c9

    .line 861
    :cond_a6
    const/4 v1, 0x1

    iput-boolean v1, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->ambushed:Z

    .line 862
    const-string v1, "DELIVERY"

    iget-object v3, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->obj:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_152

    const/4 v1, 0x3

    :goto_b4
    const/4 v3, 0x0

    invoke-direct {p0, v1, v6, v3}, Lfr/testudo/spacecorsair/mod/ModFaction;->reinforce(ILfr/testudo/spacecorsair/business/Element;Z)V

    .line 863
    const-string v1, "CONTACTS INBOUND"

    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/high16 v3, 0x3f800000    # 1.0f

    const v4, 0x3ecccccd    # 0.4f

    const v5, 0x3e99999a    # 0.3f

    invoke-static {v6, v1, v3, v4, v5}, Lfr/testudo/spacecorsair/mod/Mod;->floatText(Lfr/testudo/spacecorsair/business/Element;Ljava/lang/String;FFF)V

    .line 865
    :cond_c9
    const/high16 v1, 0x435c0000    # 220.0f

    cmpg-float v1, v2, v1

    if-gez v1, :cond_63

    .line 866
    iget-object v1, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->taken:[Z

    const/4 v2, 0x1

    aput-boolean v2, v1, v0

    .line 867
    iget v1, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->progress:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->progress:I

    .line 868
    sget-object v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v1, v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->soundManager:Lfr/testudo/spacecorsair/engine/SoundManager;

    invoke-virtual {v1}, Lfr/testudo/spacecorsair/engine/SoundManager;->playGateZap()V

    .line 869
    const-string v1, "RESCUE"

    iget-object v2, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->obj:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_155

    const-string v1, "PILOT RECOVERED"

    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 870
    :goto_f1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v1, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->goal:I

    const/4 v3, 0x1

    if-le v1, v3, :cond_17c

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

    :goto_120
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/high16 v2, 0x3f000000    # 0.5f

    const/high16 v3, 0x3f800000    # 1.0f

    const v4, 0x3f19999a    # 0.6f

    invoke-static {v6, v1, v2, v3, v4}, Lfr/testudo/spacecorsair/mod/Mod;->floatText(Lfr/testudo/spacecorsair/business/Element;Ljava/lang/String;FFF)V

    .line 871
    iget-boolean v1, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->ambushed:Z

    if-nez v1, :cond_14d

    iget v1, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->goal:I

    const/4 v2, 0x1

    if-le v1, v2, :cond_14d

    iget v1, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->progress:I

    iget v2, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->goal:I

    add-int/lit8 v2, v2, 0x1

    div-int/lit8 v2, v2, 0x2

    if-ne v1, v2, :cond_14d

    .line 872
    const/4 v1, 0x1

    iput-boolean v1, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->ambushed:Z

    .line 873
    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-direct {p0, v1, v6, v2}, Lfr/testudo/spacecorsair/mod/ModFaction;->reinforce(ILfr/testudo/spacecorsair/business/Element;Z)V

    .line 875
    :cond_14d
    invoke-direct {p0}, Lfr/testudo/spacecorsair/mod/ModFaction;->save()V

    goto/16 :goto_63

    .line 862
    :cond_152
    const/4 v1, 0x2

    goto/16 :goto_b4

    .line 869
    :cond_155
    const-string v1, "GATHER_AND_SELL"

    iget-object v2, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->obj:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_166

    const-string v1, "CARGO"

    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_f1

    :cond_166
    const-string v1, "DELIVERY"

    iget-object v2, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->obj:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_178

    const-string v1, "CRATE LOADED"

    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_f1

    :cond_178
    const-string v1, "SECURED"

    goto/16 :goto_f1

    .line 870
    :cond_17c
    const-string v1, ""

    goto :goto_120

    .line 878
    :cond_17f
    iget v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->progress:I

    iget v1, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->goal:I

    if-lt v0, v1, :cond_12

    .line 879
    const-string v0, "DELIVERY"

    iget-object v1, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->obj:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_199

    const-string v0, "GATHER_AND_SELL"

    iget-object v1, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->obj:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b2

    .line 881
    :cond_199
    const/4 v0, 0x1

    iput v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->phase:I

    .line 882
    const/4 v0, 0x0

    iput-object v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->markers:[F

    .line 883
    invoke-direct {p0}, Lfr/testudo/spacecorsair/mod/ModFaction;->save()V

    .line 884
    invoke-direct {p0}, Lfr/testudo/spacecorsair/mod/ModFaction;->activeSector()Lfr/testudo/spacecorsair/game/levels/LevelId;

    move-result-object v0

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModFaction;->sectorIs(Lfr/testudo/spacecorsair/game/levels/LevelId;)Z

    move-result v0

    iput-boolean v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->inZone:Z

    .line 885
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lfr/testudo/spacecorsair/mod/ModFaction;->markGates(Z)V

    goto/16 :goto_12

    .line 887
    :cond_1b2
    invoke-direct {p0}, Lfr/testudo/spacecorsair/mod/ModFaction;->complete()V

    goto/16 :goto_12

    .line 892
    :cond_1b7
    const-string v0, "DEFEND_CIVILIANS"

    iget-object v1, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->obj:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_297

    .line 893
    const/4 v0, 0x0

    .line 894
    iget-object v1, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->civs:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :goto_1c9
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1e7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;

    if-eqz v0, :cond_67a

    iget-boolean v3, v0, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->removed:Z

    if-nez v3, :cond_67a

    iget v0, v0, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->life:F

    const/4 v3, 0x0

    cmpl-float v0, v0, v3

    if-lez v0, :cond_67a

    add-int/lit8 v1, v1, 0x1

    move v0, v1

    :goto_1e5
    move v1, v0

    goto :goto_1c9

    .line 895
    :cond_1e7
    const/4 v0, 0x2

    if-ge v1, v0, :cond_1ef

    invoke-direct {p0}, Lfr/testudo/spacecorsair/mod/ModFaction;->fail()V

    goto/16 :goto_12

    .line 896
    :cond_1ef
    iget-boolean v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->wavesOn:Z

    if-nez v0, :cond_221

    .line 898
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->civs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1f9
    :goto_1f9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_21d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;

    if-eqz v0, :cond_1f9

    iget-boolean v2, v0, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->removed:Z

    if-nez v2, :cond_1f9

    iget-object v0, v0, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget-object v2, v6, Lfr/testudo/spacecorsair/business/player/PlayerShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v0, v2}, Lfr/testudo/spacecorsair/engine/Vector2;->distance(Lfr/testudo/spacecorsair/engine/Vector2;)F

    move-result v0

    const/high16 v2, 0x43fa0000    # 500.0f

    cmpg-float v0, v0, v2

    if-gez v0, :cond_1f9

    const/4 v0, 0x1

    iput-boolean v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->wavesOn:Z

    goto :goto_1f9

    .line 899
    :cond_21d
    iget-boolean v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->wavesOn:Z

    if-eqz v0, :cond_12

    .line 901
    :cond_221
    iget v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->timer:I

    int-to-long v0, v0

    sub-long/2addr v0, p1

    long-to-int v0, v0

    iput v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->timer:I

    .line 902
    iget v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->wavesLeft:I

    if-lez v0, :cond_288

    iget v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->timer:I

    if-gtz v0, :cond_288

    .line 903
    iget v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->wavesLeft:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->wavesLeft:I

    .line 904
    const/16 v0, 0x4e20

    iput v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->timer:I

    .line 905
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

    .line 906
    const/4 v1, 0x1

    const/4 v2, 0x1

    invoke-direct {p0, v1, v6, v2}, Lfr/testudo/spacecorsair/mod/ModFaction;->reinforce(ILfr/testudo/spacecorsair/business/Element;Z)V

    .line 907
    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-direct {p0, v1, v0, v2}, Lfr/testudo/spacecorsair/mod/ModFaction;->reinforce(ILfr/testudo/spacecorsair/business/Element;Z)V

    .line 908
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

    .line 909
    invoke-direct {p0}, Lfr/testudo/spacecorsair/mod/ModFaction;->save()V

    .line 911
    :cond_288
    iget v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->wavesLeft:I

    if-nez v0, :cond_12

    invoke-direct {p0}, Lfr/testudo/spacecorsair/mod/ModFaction;->liveFoes()I

    move-result v0

    if-nez v0, :cond_12

    invoke-direct {p0}, Lfr/testudo/spacecorsair/mod/ModFaction;->complete()V

    goto/16 :goto_12

    .line 912
    :cond_297
    const-string v0, "DEFEND_ZONE"

    iget-object v1, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->obj:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3b8

    .line 913
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->outpost:Lfr/testudo/spacecorsair/business/world/civil/CivilShip;

    if-eqz v0, :cond_2d8

    .line 914
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->outpost:Lfr/testudo/spacecorsair/business/world/civil/CivilShip;

    iget-boolean v0, v0, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->removed:Z

    if-nez v0, :cond_2b4

    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->outpost:Lfr/testudo/spacecorsair/business/world/civil/CivilShip;

    iget v0, v0, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->life:F

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_2b9

    :cond_2b4
    invoke-direct {p0}, Lfr/testudo/spacecorsair/mod/ModFaction;->fail()V

    goto/16 :goto_12

    .line 915
    :cond_2b9
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

    iput v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->outpostLost:I

    .line 917
    :cond_2d8
    iget-object v0, v6, Lfr/testudo/spacecorsair/business/player/PlayerShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget-object v1, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->center:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/engine/Vector2;->distance(Lfr/testudo/spacecorsair/engine/Vector2;)F

    move-result v0

    const/high16 v1, 0x44e10000    # 1800.0f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_3ad

    const/4 v0, 0x1

    .line 918
    :goto_2e7
    if-eqz v0, :cond_306

    .line 919
    iget v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->holdMs:I

    int-to-long v0, v0

    add-long/2addr v0, p1

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    iget v2, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->holdMs:I

    div-int/lit16 v2, v2, 0x3e8

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-eqz v0, :cond_2fc

    invoke-direct {p0}, Lfr/testudo/spacecorsair/mod/ModFaction;->save()V

    .line 920
    :cond_2fc
    iget v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->holdMs:I

    int-to-long v0, v0

    add-long/2addr v0, p1

    long-to-int v0, v0

    iput v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->holdMs:I

    .line 921
    const/4 v0, 0x1

    iput-boolean v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->wavesOn:Z

    .line 923
    :cond_306
    iget-boolean v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->wavesOn:Z

    if-eqz v0, :cond_3a2

    .line 924
    iget v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->timer:I

    int-to-long v0, v0

    sub-long/2addr v0, p1

    long-to-int v0, v0

    iput v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->timer:I

    .line 925
    iget v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->goal:I

    div-int/lit16 v7, v0, 0x3a98

    .line 926
    iget v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->timer:I

    if-gtz v0, :cond_3a2

    iget v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->waveNo:I

    if-ge v0, v7, :cond_3a2

    .line 928
    const/16 v0, 0x3a98

    iput v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->timer:I

    .line 929
    iget v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->waveNo:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->waveNo:I

    .line 930
    const/16 v1, 0x8

    iget v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->idx:I

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModFaction;->contract(I)Z

    move-result v0

    if-eqz v0, :cond_3b0

    const/4 v0, 0x5

    :goto_332
    iget v2, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->waveNo:I

    add-int/2addr v0, v2

    add-int/lit8 v0, v0, -0x1

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v8

    .line 932
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->outpost:Lfr/testudo/spacecorsair/business/world/civil/CivilShip;

    if-eqz v0, :cond_3b2

    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->outpost:Lfr/testudo/spacecorsair/business/world/civil/CivilShip;

    iget-boolean v0, v0, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->removed:Z

    if-nez v0, :cond_3b2

    add-int/lit8 v0, v8, 0x1

    div-int/lit8 v1, v0, 0x2

    .line 933
    :goto_349
    if-lez v1, :cond_357

    iget-object v2, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->outpost:Lfr/testudo/spacecorsair/business/world/civil/CivilShip;

    const/4 v3, 0x1

    invoke-direct {p0}, Lfr/testudo/spacecorsair/mod/ModFaction;->holdLevel()I

    move-result v4

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lfr/testudo/spacecorsair/mod/ModFaction;->reinforce(ILfr/testudo/spacecorsair/business/Element;ZIZ)V

    .line 934
    :cond_357
    sub-int v2, v8, v1

    if-nez v1, :cond_3b4

    const/4 v3, 0x1

    :goto_35c
    invoke-direct {p0}, Lfr/testudo/spacecorsair/mod/ModFaction;->holdLevel()I

    move-result v4

    iget v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->waveNo:I

    if-ne v0, v7, :cond_3b6

    const/4 v5, 0x1

    :goto_365
    move-object v0, p0

    move v1, v2

    move-object v2, v6

    invoke-direct/range {v0 .. v5}, Lfr/testudo/spacecorsair/mod/ModFaction;->reinforce(ILfr/testudo/spacecorsair/business/Element;ZIZ)V

    .line 935
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

    .line 936
    invoke-direct {p0}, Lfr/testudo/spacecorsair/mod/ModFaction;->save()V

    .line 939
    :cond_3a2
    iget v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->holdMs:I

    iget v1, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->goal:I

    if-lt v0, v1, :cond_12

    invoke-direct {p0}, Lfr/testudo/spacecorsair/mod/ModFaction;->complete()V

    goto/16 :goto_12

    .line 917
    :cond_3ad
    const/4 v0, 0x0

    goto/16 :goto_2e7

    .line 930
    :cond_3b0
    const/4 v0, 0x6

    goto :goto_332

    .line 932
    :cond_3b2
    const/4 v1, 0x0

    goto :goto_349

    .line 934
    :cond_3b4
    const/4 v3, 0x0

    goto :goto_35c

    :cond_3b6
    const/4 v5, 0x0

    goto :goto_365

    .line 940
    :cond_3b8
    const-string v0, "BOUNTY"

    iget-object v1, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->obj:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3cc

    const-string v0, "DESTROY_STATION"

    iget-object v1, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->obj:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3ef

    .line 941
    :cond_3cc
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->target:Lfr/testudo/spacecorsair/business/Element;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->target:Lfr/testudo/spacecorsair/business/Element;

    iget-boolean v0, v0, Lfr/testudo/spacecorsair/business/Element;->removed:Z

    if-eqz v0, :cond_12

    .line 942
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->target:Lfr/testudo/spacecorsair/business/Element;

    iget v0, v0, Lfr/testudo/spacecorsair/business/Element;->life:F

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_3e4

    invoke-direct {p0}, Lfr/testudo/spacecorsair/mod/ModFaction;->complete()V

    goto/16 :goto_12

    .line 943
    :cond_3e4
    const/4 v0, 0x0

    iput-boolean v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->setupDone:Z

    const/4 v0, 0x0

    iput v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->zoneMs:I

    const/4 v0, 0x0

    iput-object v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->target:Lfr/testudo/spacecorsair/business/Element;

    goto/16 :goto_12

    .line 945
    :cond_3ef
    const-string v0, "KILL_ENEMY_TYPE"

    iget-object v1, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->obj:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_424

    .line 946
    iget v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->progress:I

    iget v1, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->goal:I

    if-lt v0, v1, :cond_404

    invoke-direct {p0}, Lfr/testudo/spacecorsair/mod/ModFaction;->complete()V

    goto/16 :goto_12

    .line 948
    :cond_404
    invoke-direct {p0}, Lfr/testudo/spacecorsair/mod/ModFaction;->liveFoes()I

    move-result v0

    .line 949
    const/4 v1, 0x2

    if-ge v0, v1, :cond_12

    iget v1, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->progress:I

    add-int/2addr v1, v0

    iget v2, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->goal:I

    if-ge v1, v2, :cond_12

    const/4 v1, 0x2

    iget v2, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->goal:I

    iget v3, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->progress:I

    sub-int/2addr v2, v3

    sub-int v0, v2, v0

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v6, v1}, Lfr/testudo/spacecorsair/mod/ModFaction;->reinforce(ILfr/testudo/spacecorsair/business/Element;Z)V

    goto/16 :goto_12

    .line 950
    :cond_424
    const-string v0, "ESCORT"

    iget-object v1, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->obj:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_533

    .line 951
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->target:Lfr/testudo/spacecorsair/business/Element;

    if-eqz v0, :cond_12

    .line 952
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->target:Lfr/testudo/spacecorsair/business/Element;

    iget-boolean v0, v0, Lfr/testudo/spacecorsair/business/Element;->removed:Z

    if-nez v0, :cond_441

    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->target:Lfr/testudo/spacecorsair/business/Element;

    iget v0, v0, Lfr/testudo/spacecorsair/business/Element;->life:F

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_45b

    .line 953
    :cond_441
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->target:Lfr/testudo/spacecorsair/business/Element;

    iget-object v0, v0, Lfr/testudo/spacecorsair/business/Element;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget-object v1, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->gate:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/engine/Vector2;->distance(Lfr/testudo/spacecorsair/engine/Vector2;)F

    move-result v0

    const/high16 v1, 0x442f0000    # 700.0f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_456

    invoke-direct {p0}, Lfr/testudo/spacecorsair/mod/ModFaction;->escortArrived()V

    goto/16 :goto_12

    :cond_456
    invoke-direct {p0}, Lfr/testudo/spacecorsair/mod/ModFaction;->fail()V

    goto/16 :goto_12

    .line 956
    :cond_45b
    iget-boolean v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->courierMoving:Z

    if-nez v0, :cond_475

    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->target:Lfr/testudo/spacecorsair/business/Element;

    iget-object v0, v0, Lfr/testudo/spacecorsair/business/Element;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget-object v1, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->lastCourier:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/engine/Vector2;->distance(Lfr/testudo/spacecorsair/engine/Vector2;)F

    move-result v0

    const/high16 v1, 0x42700000    # 60.0f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_475

    const/4 v0, 0x1

    iput-boolean v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->courierMoving:Z

    invoke-direct {p0}, Lfr/testudo/spacecorsair/mod/ModFaction;->save()V

    .line 957
    :cond_475
    const/high16 v0, 0x3f800000    # 1.0f

    iget-object v1, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->target:Lfr/testudo/spacecorsair/business/Element;

    iget-object v1, v1, Lfr/testudo/spacecorsair/business/Element;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget-object v2, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->gate:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v1, v2}, Lfr/testudo/spacecorsair/engine/Vector2;->distance(Lfr/testudo/spacecorsair/engine/Vector2;)F

    move-result v1

    iget v2, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->startDist:F

    div-float/2addr v1, v2

    sub-float/2addr v0, v1

    .line 958
    iget-boolean v1, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->ambushed:Z

    if-nez v1, :cond_4a7

    const v1, 0x3e99999a    # 0.3f

    cmpl-float v1, v0, v1

    if-lez v1, :cond_4a7

    const/4 v1, 0x1

    iput-boolean v1, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->ambushed:Z

    const/4 v1, 0x3

    iget-object v2, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->target:Lfr/testudo/spacecorsair/business/Element;

    const/4 v3, 0x0

    invoke-direct {p0, v1, v2, v3}, Lfr/testudo/spacecorsair/mod/ModFaction;->reinforce(ILfr/testudo/spacecorsair/business/Element;Z)V

    const-string v1, "AMBUSH!"

    const/high16 v2, 0x3f800000    # 1.0f

    const v3, 0x3ecccccd    # 0.4f

    const v4, 0x3e99999a    # 0.3f

    invoke-static {v6, v1, v2, v3, v4}, Lfr/testudo/spacecorsair/mod/Mod;->floatText(Lfr/testudo/spacecorsair/business/Element;Ljava/lang/String;FFF)V

    .line 959
    :cond_4a7
    iget-boolean v1, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->ambushed2:Z

    if-nez v1, :cond_4c9

    const v1, 0x3f266666    # 0.65f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_4c9

    const/4 v0, 0x1

    iput-boolean v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->ambushed2:Z

    const/4 v0, 0x3

    iget-object v1, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->target:Lfr/testudo/spacecorsair/business/Element;

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lfr/testudo/spacecorsair/mod/ModFaction;->reinforce(ILfr/testudo/spacecorsair/business/Element;Z)V

    const-string v0, "AMBUSH!"

    const/high16 v1, 0x3f800000    # 1.0f

    const v2, 0x3ecccccd    # 0.4f

    const v3, 0x3e99999a    # 0.3f

    invoke-static {v6, v0, v1, v2, v3}, Lfr/testudo/spacecorsair/mod/Mod;->floatText(Lfr/testudo/spacecorsair/business/Element;Ljava/lang/String;FFF)V

    .line 960
    :cond_4c9
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->target:Lfr/testudo/spacecorsair/business/Element;

    iget-object v0, v0, Lfr/testudo/spacecorsair/business/Element;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget-object v1, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->gate:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/engine/Vector2;->distance(Lfr/testudo/spacecorsair/engine/Vector2;)F

    move-result v0

    const/high16 v1, 0x43e10000    # 450.0f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_4e3

    .line 961
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->target:Lfr/testudo/spacecorsair/business/Element;

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/business/Element;->remove()V

    .line 962
    invoke-direct {p0}, Lfr/testudo/spacecorsair/mod/ModFaction;->escortArrived()V

    goto/16 :goto_12

    .line 965
    :cond_4e3
    iget v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->courierCheck:I

    int-to-long v0, v0

    sub-long/2addr v0, p1

    long-to-int v0, v0

    iput v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->courierCheck:I

    .line 966
    iget v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->courierCheck:I

    if-gtz v0, :cond_12

    .line 968
    const/16 v0, 0x2710

    iput v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->courierCheck:I

    .line 969
    iget-boolean v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->courierMoving:Z

    if-eqz v0, :cond_525

    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->target:Lfr/testudo/spacecorsair/business/Element;

    iget-object v0, v0, Lfr/testudo/spacecorsair/business/Element;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget-object v1, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->lastCourier:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/engine/Vector2;->distance(Lfr/testudo/spacecorsair/engine/Vector2;)F

    move-result v0

    const/high16 v1, 0x42700000    # 60.0f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_525

    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->target:Lfr/testudo/spacecorsair/business/Element;

    instance-of v0, v0, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;

    if-eqz v0, :cond_525

    .line 970
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

    .line 972
    :cond_525
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->lastCourier:Lfr/testudo/spacecorsair/engine/Vector2;

    iget-object v1, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->target:Lfr/testudo/spacecorsair/business/Element;

    iget-object v1, v1, Lfr/testudo/spacecorsair/business/Element;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/engine/Vector2;->setSameAs(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 973
    invoke-direct {p0}, Lfr/testudo/spacecorsair/mod/ModFaction;->save()V

    goto/16 :goto_12

    .line 975
    :cond_533
    const-string v0, "SCAN_CIVIL"

    iget-object v1, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->obj:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_61e

    .line 976
    const/4 v0, 0x0

    move v1, v0

    :goto_53f
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->civs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_613

    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->scanMs:[I

    array-length v0, v0

    if-ge v1, v0, :cond_613

    .line 977
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->civs:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;

    .line 978
    if-eqz v0, :cond_55c

    iget-object v2, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->scanMs:[I

    aget v2, v2, v1

    if-gez v2, :cond_560

    .line 976
    :cond_55c
    :goto_55c
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_53f

    .line 979
    :cond_560
    iget-boolean v2, v0, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->removed:Z

    if-nez v2, :cond_56b

    iget v2, v0, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->life:F

    const/4 v3, 0x0

    cmpg-float v2, v2, v3

    if-gtz v2, :cond_591

    .line 981
    :cond_56b
    iget-object v0, v6, Lfr/testudo/spacecorsair/business/player/PlayerShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModPlace;->ambushPoint(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    move-result-object v0

    iget-object v2, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->center:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-direct {p0, v0, v2}, Lfr/testudo/spacecorsair/mod/ModFaction;->scanTarget(Lfr/testudo/spacecorsair/engine/Vector2;Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/business/world/civil/CivilShip;

    move-result-object v0

    .line 982
    if-eqz v0, :cond_58b

    .line 983
    iget-object v2, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->civs:Ljava/util/ArrayList;

    iget-object v3, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->civs:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 984
    iget-object v2, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->civs:Ljava/util/ArrayList;

    invoke-virtual {v2, v1, v0}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 986
    :cond_58b
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->scanMs:[I

    const/4 v2, 0x0

    aput v2, v0, v1

    goto :goto_55c

    .line 989
    :cond_591
    iget-object v2, v0, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget-object v3, v6, Lfr/testudo/spacecorsair/business/player/PlayerShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v2, v3}, Lfr/testudo/spacecorsair/engine/Vector2;->distance(Lfr/testudo/spacecorsair/engine/Vector2;)F

    move-result v2

    const/high16 v3, 0x43e10000    # 450.0f

    cmpg-float v2, v2, v3

    if-gez v2, :cond_55c

    .line 990
    iget-object v2, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->scanMs:[I

    aget v3, v2, v1

    int-to-long v4, v3

    add-long/2addr v4, p1

    long-to-int v3, v4

    aput v3, v2, v1

    .line 991
    iget-object v2, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->scanMs:[I

    aget v2, v2, v1

    const/16 v3, 0x5dc

    if-le v2, v3, :cond_55c

    .line 992
    iget-object v2, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->scanMs:[I

    const/4 v3, -0x1

    aput v3, v2, v1

    .line 993
    iget v2, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->progress:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->progress:I

    .line 994
    const/4 v2, 0x0

    iput-boolean v2, v0, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->isMissionObjective:Z

    .line 995
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

    .line 996
    iget v2, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->progress:I

    iget v3, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->goal:I

    add-int/lit8 v3, v3, -0x1

    if-ne v2, v3, :cond_60e

    iget-boolean v2, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->ambushed:Z

    if-nez v2, :cond_60e

    .line 997
    const/4 v2, 0x1

    iput-boolean v2, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->ambushed:Z

    .line 998
    const-string v2, "FALSE TRANSPONDER: RAIDERS!"

    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/high16 v3, 0x3f800000    # 1.0f

    const v4, 0x3ecccccd    # 0.4f

    const v5, 0x3e99999a    # 0.3f

    invoke-static {v0, v2, v3, v4, v5}, Lfr/testudo/spacecorsair/mod/Mod;->floatText(Lfr/testudo/spacecorsair/business/Element;Ljava/lang/String;FFF)V

    .line 999
    const/4 v0, 0x2

    const/4 v2, 0x0

    invoke-direct {p0, v0, v6, v2}, Lfr/testudo/spacecorsair/mod/ModFaction;->reinforce(ILfr/testudo/spacecorsair/business/Element;Z)V

    .line 1001
    :cond_60e
    invoke-direct {p0}, Lfr/testudo/spacecorsair/mod/ModFaction;->save()V

    goto/16 :goto_55c

    .line 1005
    :cond_613
    iget v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->progress:I

    iget v1, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->goal:I

    if-lt v0, v1, :cond_12

    invoke-direct {p0}, Lfr/testudo/spacecorsair/mod/ModFaction;->complete()V

    goto/16 :goto_12

    .line 1006
    :cond_61e
    const-string v0, "KILL_FLAGSHIP"

    iget-object v1, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->obj:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 1007
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->target:Lfr/testudo/spacecorsair/business/Element;

    if-eqz v0, :cond_12

    .line 1008
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->target:Lfr/testudo/spacecorsair/business/Element;

    iget-boolean v0, v0, Lfr/testudo/spacecorsair/business/Element;->removed:Z

    if-eqz v0, :cond_64b

    .line 1009
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->target:Lfr/testudo/spacecorsair/business/Element;

    iget v0, v0, Lfr/testudo/spacecorsair/business/Element;->life:F

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_640

    invoke-direct {p0}, Lfr/testudo/spacecorsair/mod/ModFaction;->complete()V

    goto/16 :goto_12

    .line 1010
    :cond_640
    const/4 v0, 0x0

    iput-boolean v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->setupDone:Z

    const/4 v0, 0x0

    iput v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->zoneMs:I

    const/4 v0, 0x0

    iput-object v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->target:Lfr/testudo/spacecorsair/business/Element;

    goto/16 :goto_12

    .line 1013
    :cond_64b
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->target:Lfr/testudo/spacecorsair/business/Element;

    iget-object v0, v0, Lfr/testudo/spacecorsair/business/Element;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget-object v1, v6, Lfr/testudo/spacecorsair/business/player/PlayerShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/engine/Vector2;->distance(Lfr/testudo/spacecorsair/engine/Vector2;)F

    move-result v0

    const v1, 0x458ca000    # 4500.0f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_12

    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->target:Lfr/testudo/spacecorsair/business/Element;

    instance-of v0, v0, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->target:Lfr/testudo/spacecorsair/business/Element;

    check-cast v0, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;

    iget-object v0, v0, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->chasseTarget:Lfr/testudo/spacecorsair/business/Element;

    if-nez v0, :cond_12

    .line 1014
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->target:Lfr/testudo/spacecorsair/business/Element;

    check-cast v0, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->attackPlayerIfItNotTheCaseAlready()V

    .line 1015
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->soundManager:Lfr/testudo/spacecorsair/engine/SoundManager;

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/engine/SoundManager;->playDanger()V

    goto/16 :goto_12

    :cond_67a
    move v0, v1

    goto/16 :goto_1e5
.end method

.method public onElementDestroyed(Lfr/testudo/spacecorsair/business/Element;)V
    .registers 2

    .prologue
    .line 1181
    return-void
.end method

.method public onElementDestroyedByPlayer(Lfr/testudo/spacecorsair/business/Element;)V
    .registers 7

    .prologue
    .line 1186
    const-string v0, "KILL_ENEMY_TYPE"

    iget-object v1, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->obj:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_55

    if-eqz p1, :cond_55

    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->spawned:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_55

    .line 1187
    iget v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->progress:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->progress:I

    .line 1188
    invoke-direct {p0}, Lfr/testudo/spacecorsair/mod/ModFaction;->save()V

    .line 1189
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->playerShip:Lfr/testudo/spacecorsair/business/player/PlayerShip;

    .line 1190
    if-eqz v0, :cond_55

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

    .line 1192
    :cond_55
    return-void
.end method

.method public onPlayerDeath()V
    .registers 5

    .prologue
    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 1208
    invoke-direct {p0}, Lfr/testudo/spacecorsair/mod/ModFaction;->cleanup()V

    .line 1210
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

    .line 1211
    :cond_29
    const-string v0, "DELIVERY"

    iget-object v2, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->obj:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_50

    .line 1212
    new-array v0, v3, [Z

    iput-object v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->taken:[Z

    .line 1213
    const/4 v0, 0x2

    new-array v0, v0, [F

    iget-object v2, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->center:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v2, v2, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    aput v2, v0, v1

    iget-object v2, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->center:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v2, v2, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    aput v2, v0, v3

    iput-object v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->markers:[F

    .line 1219
    :cond_48
    :goto_48
    iput v1, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->progress:I

    .line 1220
    iput v1, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->phase:I

    .line 1221
    invoke-direct {p0}, Lfr/testudo/spacecorsair/mod/ModFaction;->save()V

    .line 1223
    :cond_4f
    return-void

    .line 1214
    :cond_50
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->markers:[F

    if-eqz v0, :cond_58

    iget v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->phase:I

    if-ne v0, v3, :cond_62

    .line 1215
    :cond_58
    const/4 v0, 0x6

    iget-object v2, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->center:Lfr/testudo/spacecorsair/engine/Vector2;

    const v3, 0x45098000    # 2200.0f

    invoke-direct {p0, v0, v2, v3}, Lfr/testudo/spacecorsair/mod/ModFaction;->scatter(ILfr/testudo/spacecorsair/engine/Vector2;F)V

    goto :goto_48

    :cond_62
    move v0, v1

    .line 1217
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

    .line 1166
    iget-object v2, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->spawned:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 1167
    iget-object v2, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->civs:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 1168
    iput-object v3, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->outpost:Lfr/testudo/spacecorsair/business/world/civil/CivilShip;

    .line 1169
    iput-object v3, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->target:Lfr/testudo/spacecorsair/business/Element;

    .line 1170
    iput-boolean v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->setupDone:Z

    .line 1171
    iput v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->zoneMs:I

    .line 1172
    iput-boolean v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->wavesOn:Z

    .line 1173
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModPlace;->clearBoost()V

    .line 1174
    invoke-direct {p0}, Lfr/testudo/spacecorsair/mod/ModFaction;->activeSector()Lfr/testudo/spacecorsair/game/levels/LevelId;

    move-result-object v2

    .line 1175
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

    .line 1176
    invoke-direct {p0, v1}, Lfr/testudo/spacecorsair/mod/ModFaction;->markGates(Z)V

    .line 1177
    return-void
.end method

.method public restoreState()V
    .registers 6

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 1322
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModFaction;->prefs()Landroid/content/SharedPreferences;

    move-result-object v3

    .line 1323
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

    .line 1324
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->spawned:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1325
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->civs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1326
    iput-object v2, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->outpost:Lfr/testudo/spacecorsair/business/world/civil/CivilShip;

    .line 1327
    iput-object v2, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->target:Lfr/testudo/spacecorsair/business/Element;

    .line 1328
    iput-boolean v1, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->setupDone:Z

    .line 1329
    iput v1, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->zoneMs:I

    .line 1330
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

    .line 1331
    :goto_59
    if-eqz v0, :cond_67

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModFaction;->level(Ljava/lang/String;)Lfr/testudo/spacecorsair/game/levels/LevelId;

    move-result-object v1

    if-eqz v1, :cond_67

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModFaction;->level(Ljava/lang/String;)Lfr/testudo/spacecorsair/game/levels/LevelId;

    move-result-object v0

    iput-object v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->zone:Lfr/testudo/spacecorsair/game/levels/LevelId;

    .line 1332
    :cond_67
    invoke-direct {p0}, Lfr/testudo/spacecorsair/mod/ModFaction;->load()V

    .line 1333
    return-void

    :cond_6b
    move v0, v1

    .line 1323
    goto :goto_28

    :cond_6d
    move-object v0, v2

    .line 1330
    goto :goto_59
.end method

.method public saveState()V
    .registers 1

    .prologue
    .line 1337
    return-void
.end method

.method public terminate()V
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 1313
    invoke-direct {p0, v0}, Lfr/testudo/spacecorsair/mod/ModFaction;->markGates(Z)V

    .line 1314
    iput-boolean v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->completed:Z

    .line 1315
    iput-boolean v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->planned:Z

    .line 1316
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModFaction;->prefs()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1317
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

    .line 1318
    :cond_55
    return-void
.end method
