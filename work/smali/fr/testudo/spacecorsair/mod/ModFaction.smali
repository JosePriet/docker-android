.class public Lfr/testudo/spacecorsair/mod/ModFaction;
.super Lfr/testudo/spacecorsair/business/mission/MissionListener;
.source "ModFaction.java"


# static fields
.field private static final FAMILY_LABEL:[Ljava/lang/String;

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

.field private phase:I

.field private planned:Z

.field private progress:I

.field private final ref:Lfr/testudo/spacecorsair/engine/Vector2;

.field private scanMs:[I

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

    .line 997
    new-instance v0, Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-direct {v0}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>()V

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModFaction;->pos:Lfr/testudo/spacecorsair/engine/Vector2;

    .line 1000
    sput v3, Lfr/testudo/spacecorsair/mod/ModFaction;->holdSec:I

    sput v3, Lfr/testudo/spacecorsair/mod/ModFaction;->arrowM:I

    return-void
.end method

.method private constructor <init>(I)V
    .registers 3

    .prologue
    .line 352
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

    .line 348
    new-instance v0, Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-direct {v0}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>()V

    iput-object v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->gate:Lfr/testudo/spacecorsair/engine/Vector2;

    .line 349
    new-instance v0, Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-direct {v0}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>()V

    iput-object v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->lastCourier:Lfr/testudo/spacecorsair/engine/Vector2;

    .line 1223
    const/4 v0, -0x1

    iput v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->instrBranch:I

    .line 353
    iput p1, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->idx:I

    .line 354
    invoke-static {p1}, Lfr/testudo/spacecorsair/mod/ModFaction;->objective(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->obj:Ljava/lang/String;

    .line 355
    const/4 v0, 0x4

    invoke-static {p1, v0}, Lfr/testudo/spacecorsair/mod/ModFaction;->str(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModFaction;->level(Ljava/lang/String;)Lfr/testudo/spacecorsair/game/levels/LevelId;

    move-result-object v0

    iput-object v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->zone:Lfr/testudo/spacecorsair/game/levels/LevelId;

    .line 356
    invoke-static {p1}, Lfr/testudo/spacecorsair/mod/ModFaction;->key(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModFaction;->faction(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->fi:I

    .line 357
    return-void
.end method

.method private static active()Lfr/testudo/spacecorsair/mod/ModFaction;
    .registers 2

    .prologue
    .line 360
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->currentMission:Lfr/testudo/spacecorsair/business/mission/Mission;

    .line 361
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
    .line 584
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v0

    const-wide v2, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v0, v2

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    mul-double/2addr v0, v2

    .line 585
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v2

    double-to-float v2, v2

    sub-float v3, p2, p1

    mul-float/2addr v2, v3

    add-float/2addr v2, p1

    .line 586
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
    .line 590
    const/4 v0, 0x1

    iget v1, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->idx:I

    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModFaction;->minLevel(I)I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 591
    if-eqz p2, :cond_17

    invoke-static {v0}, Lfr/testudo/spacecorsair/business/world/civil/CivilFactory;->newTrasnporteur(I)Lfr/testudo/spacecorsair/business/world/civil/TransportCivilShip;

    move-result-object v0

    .line 592
    :goto_13
    if-nez v0, :cond_1c

    const/4 v0, 0x0

    .line 596
    :goto_16
    return-object v0

    .line 591
    :cond_17
    invoke-static {v0, v0}, Lfr/testudo/spacecorsair/business/world/civil/CivilFactory;->newRandomCivil(II)Lfr/testudo/spacecorsair/business/world/civil/CivilShip;

    move-result-object v0

    goto :goto_13

    .line 593
    :cond_1c
    iget-object v1, v0, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v1, p1}, Lfr/testudo/spacecorsair/engine/Vector2;->setSameAs(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 594
    sget-object v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v1, v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v1, v1, Lfr/testudo/spacecorsair/game/Game;->currentLevel:Lfr/testudo/spacecorsair/game/levels/Level;

    iget-object v1, v1, Lfr/testudo/spacecorsair/game/levels/Level;->toAdd:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 595
    iget-object v1, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->civs:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_16
.end method

.method private cleanup()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 783
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->spawned:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_7
    :goto_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfr/testudo/spacecorsair/business/Element;

    .line 784
    if-eqz v0, :cond_7

    iget-boolean v2, v0, Lfr/testudo/spacecorsair/business/Element;->removed:Z

    if-nez v2, :cond_7

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/business/Element;->remove()V

    goto :goto_7

    .line 786
    :cond_1d
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->civs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_23
    :goto_23
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_39

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;

    .line 787
    if-eqz v0, :cond_23

    iget-boolean v2, v0, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->removed:Z

    if-nez v2, :cond_23

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->remove()V

    goto :goto_23

    .line 789
    :cond_39
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->target:Lfr/testudo/spacecorsair/business/Element;

    if-eqz v0, :cond_47

    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->target:Lfr/testudo/spacecorsair/business/Element;

    instance-of v0, v0, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;

    if-eqz v0, :cond_47

    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->target:Lfr/testudo/spacecorsair/business/Element;

    iput-boolean v3, v0, Lfr/testudo/spacecorsair/business/Element;->isMissionObjective:Z

    .line 790
    :cond_47
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->spawned:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 791
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->civs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 792
    const/4 v0, 0x0

    iput-object v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->target:Lfr/testudo/spacecorsair/business/Element;

    .line 793
    iput-boolean v3, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->setupDone:Z

    .line 794
    iput v3, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->zoneMs:I

    .line 795
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModPlace;->clearBoost()V

    .line 796
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

    .line 369
    iget-boolean v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->completed:Z

    if-eqz v0, :cond_8

    .line 388
    :goto_7
    return-void

    .line 370
    :cond_8
    iput-boolean v5, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->completed:Z

    .line 371
    invoke-static {v5}, Lfr/testudo/spacecorsair/mod/ModAlerts;->missionResult(Z)V

    .line 373
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

    .line 374
    iget v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->idx:I

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModFaction;->contract(I)Z

    move-result v0

    if-nez v0, :cond_40

    iget v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->idx:I

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModFaction;->order(I)I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_40

    iget v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->idx:I

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModFaction;->key(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModV34;->storyDone(Ljava/lang/String;)V

    .line 375
    :cond_40
    iget v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->idx:I

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModFaction;->hunt(I)Z

    move-result v0

    if-eqz v0, :cond_51

    iget v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->idx:I

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModFaction;->key(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModV35;->huntDone(Ljava/lang/String;)V

    .line 376
    :cond_51
    const-string v0, "KILL_FLAGSHIP"

    iget-object v1, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->obj:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_73

    iget v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->idx:I

    invoke-static {v0, v3}, Lfr/testudo/spacecorsair/mod/ModFaction;->str(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_73

    iget v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->idx:I

    invoke-static {v0, v3}, Lfr/testudo/spacecorsair/mod/ModFaction;->str(II)Ljava/lang/String;

    move-result-object v0

    const v1, -0x40b33333    # -0.8f

    invoke-static {v0, v1, v5}, Lfr/testudo/spacecorsair/mod/ModRep;->change(Ljava/lang/String;FZ)V

    .line 377
    :cond_73
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

    .line 378
    if-lez v0, :cond_c8

    .line 379
    sget-object v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v1, v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v1, v1, Lfr/testudo/spacecorsair/game/Game;->playerCurrentShipInventory:Lfr/testudo/spacecorsair/business/player/Inventory;

    invoke-virtual {v1, v0}, Lfr/testudo/spacecorsair/business/player/Inventory;->addCredit(I)V

    .line 380
    sget-object v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v1, v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->playerShip:Lfr/testudo/spacecorsair/business/player/PlayerShip;

    .line 381
    if-eqz v1, :cond_c8

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

    .line 383
    :cond_c8
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModFaction;->prefs()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 384
    if-eqz v0, :cond_fa

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

    .line 385
    :cond_fa
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    const v1, 0x7f0702c1

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->getStringRessource(I)Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->idx:I

    const/4 v2, 0x2

    invoke-static {v1, v2}, Lfr/testudo/spacecorsair/mod/ModFaction;->str(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lfr/testudo/spacecorsair/display/hud/WelcomeMessage;->setText(Ljava/lang/String;Ljava/lang/String;)V

    .line 386
    iget v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->idx:I

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModFaction;->key(I)Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->idx:I

    const/16 v2, 0xd

    invoke-static {v1, v2}, Lfr/testudo/spacecorsair/mod/ModFaction;->str(II)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x2328

    invoke-static {v0, v1, v2}, Lfr/testudo/spacecorsair/mod/ModComms;->show(Ljava/lang/String;Ljava/lang/String;I)V

    .line 387
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

    const-string v0, "Collect the 6 marked cargo pods."

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

    if-eqz v0, :cond_53

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Hold the zone beside the flagship for "

    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " seconds."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_e

    .line 122
    :cond_53
    const-string v0, "BOUNTY"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_62

    const-string v0, "Hunt down the marked target."

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_e

    .line 123
    :cond_62
    const-string v0, "KILL_ENEMY_TYPE"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8c

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
    :cond_8c
    const-string v0, "DESTROY_STATION"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9c

    const-string v0, "Destroy the marked station and its guards."

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_e

    .line 125
    :cond_9c
    const-string v0, "ESCORT"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_ac

    const-string v0, "Escort the ship to its jump point."

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_e

    .line 126
    :cond_ac
    const-string v0, "SCAN_CIVIL"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d7

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
    :cond_d7
    const-string v0, "RESCUE"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_102

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
    :cond_102
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
    .line 1003
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModFaction;->active()Lfr/testudo/spacecorsair/mod/ModFaction;

    move-result-object v18

    .line 1004
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

    .line 1084
    :cond_20
    :goto_20
    return-void

    .line 1005
    :cond_21
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v20

    .line 1006
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

    .line 1007
    sget-object v2, Lfr/testudo/spacecorsair/mod/ModCapitals;->FACTIONS:[Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;

    move-object/from16 v0, v18

    iget v3, v0, Lfr/testudo/spacecorsair/mod/ModFaction;->fi:I

    aget-object v22, v2, v3

    .line 1008
    const v5, 0x7f7fffff    # Float.MAX_VALUE

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 1009
    const/4 v2, 0x0

    .line 1010
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

    .line 1011
    :cond_69
    move-object/from16 v0, p0

    iget-object v6, v0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-static {v6}, Lfr/testudo/spacecorsair/mod/ModPlace;->nearestStation(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/business/world/station/Station;

    move-result-object v6

    .line 1012
    if-eqz v6, :cond_97

    .line 1013
    iget-object v2, v6, Lfr/testudo/spacecorsair/business/world/station/Station;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    move-object/from16 v0, p0

    iget-object v3, v0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v2, v3}, Lfr/testudo/spacecorsair/engine/Vector2;->distance(Lfr/testudo/spacecorsair/engine/Vector2;)F

    move-result v5

    .line 1014
    iget-object v2, v6, Lfr/testudo/spacecorsair/business/world/station/Station;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v4, v2, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    iget-object v2, v6, Lfr/testudo/spacecorsair/business/world/station/Station;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v3, v2, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    .line 1015
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

    .line 1065
    :goto_9a
    if-eqz v11, :cond_20

    const v2, 0x7f7fffff    # Float.MAX_VALUE

    cmpl-float v2, v17, v2

    if-eqz v2, :cond_20

    const v2, 0x44898000    # 1100.0f

    cmpg-float v2, v17, v2

    if-ltz v2, :cond_20

    .line 1066
    sget-object v2, Lfr/testudo/spacecorsair/display/Fleche;->MAIN_TEXTURE:Lfr/testudo/spacecorsair/display/Texture;

    .line 1067
    if-eqz v2, :cond_20

    .line 1068
    sget-object v5, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v5, v5, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->camera:Lfr/testudo/spacecorsair/engine/Camera;

    iget v7, v5, Lfr/testudo/spacecorsair/engine/Camera;->curZDecal:F

    .line 1069
    const/high16 v5, 0x42dc0000    # 110.0f

    const v6, 0x3da3d70a    # 0.08f

    mul-float/2addr v6, v7

    add-float v12, v5, v6

    .line 1070
    invoke-static {v2, v12}, Lfr/testudo/spacecorsair/mod/ModFx;->arrow(Lfr/testudo/spacecorsair/display/Texture;F)Lfr/testudo/spacecorsair/display/Drawable;

    move-result-object v5

    .line 1071
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

    .line 1072
    move-object/from16 v0, p0

    iget-object v2, v0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->shipSpec:Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;

    if-eqz v2, :cond_4b2

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

    .line 1073
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

    .line 1074
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

    .line 1075
    move/from16 v0, v17

    float-to-int v2, v0

    .line 1076
    sget-object v3, Lfr/testudo/spacecorsair/mod/ModFaction;->arrowText:Ljava/lang/String;

    if-eqz v3, :cond_13c

    sget-object v3, Lfr/testudo/spacecorsair/mod/ModFaction;->arrowLabel:Ljava/lang/String;

    if-ne v11, v3, :cond_13c

    sget v3, Lfr/testudo/spacecorsair/mod/ModFaction;->arrowM:I

    if-eq v2, v3, :cond_15f

    .line 1077
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

    .line 1078
    sput-object v11, Lfr/testudo/spacecorsair/mod/ModFaction;->arrowLabel:Ljava/lang/String;

    .line 1079
    sput v2, Lfr/testudo/spacecorsair/mod/ModFaction;->arrowM:I

    .line 1081
    :cond_15f
    sget-object v5, Lfr/testudo/spacecorsair/mod/ModFaction;->arrowText:Ljava/lang/String;

    .line 1082
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

    .line 1083
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

    .line 1015
    :cond_1a8
    const-string v2, "SELL"

    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_97

    .line 1017
    :cond_1b0
    move-object/from16 v0, v18

    iget-object v6, v0, Lfr/testudo/spacecorsair/mod/ModFaction;->markers:[F

    if-eqz v6, :cond_29d

    .line 1018
    const-string v2, "FIND_OBJECT"

    move-object/from16 v0, v18

    iget-object v6, v0, Lfr/testudo/spacecorsair/mod/ModFaction;->obj:Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1ce

    const-string v2, "DELIVERY"

    move-object/from16 v0, v18

    iget-object v6, v0, Lfr/testudo/spacecorsair/mod/ModFaction;->obj:Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1f4

    :cond_1ce
    const/4 v2, 0x1

    move v13, v2

    .line 1019
    :goto_1d0
    const/4 v2, 0x0

    move v14, v2

    move v15, v3

    move/from16 v16, v4

    move/from16 v17, v5

    :goto_1d7
    move-object/from16 v0, v18

    iget-object v2, v0, Lfr/testudo/spacecorsair/mod/ModFaction;->taken:[Z

    array-length v2, v2

    if-ge v14, v2, :cond_27d

    .line 1020
    move-object/from16 v0, v18

    iget-object v2, v0, Lfr/testudo/spacecorsair/mod/ModFaction;->taken:[Z

    aget-boolean v2, v2, v14

    if-eqz v2, :cond_1f7

    move v4, v15

    move/from16 v3, v16

    move/from16 v5, v17

    .line 1019
    :cond_1eb
    :goto_1eb
    add-int/lit8 v2, v14, 0x1

    move v14, v2

    move v15, v4

    move/from16 v16, v3

    move/from16 v17, v5

    goto :goto_1d7

    .line 1018
    :cond_1f4
    const/4 v2, 0x0

    move v13, v2

    goto :goto_1d0

    .line 1021
    :cond_1f7
    move-object/from16 v0, v18

    iget-object v2, v0, Lfr/testudo/spacecorsair/mod/ModFaction;->markers:[F

    mul-int/lit8 v3, v14, 0x2

    aget v3, v2, v3

    move-object/from16 v0, v18

    iget-object v2, v0, Lfr/testudo/spacecorsair/mod/ModFaction;->markers:[F

    mul-int/lit8 v4, v14, 0x2

    add-int/lit8 v4, v4, 0x1

    aget v4, v2, v4

    .line 1022
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

    .line 1023
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

    .line 1024
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

    .line 1025
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

    double-to-float v5, v6

    .line 1026
    cmpg-float v2, v5, v17

    if-ltz v2, :cond_1eb

    move v4, v15

    move/from16 v3, v16

    move/from16 v5, v17

    goto/16 :goto_1eb

    .line 1028
    :cond_27d
    if-eqz v13, :cond_287

    const-string v2, "SIGNAL"

    :goto_281
    move-object v11, v2

    move v3, v15

    move/from16 v4, v16

    .line 1029
    goto/16 :goto_9a

    .line 1028
    :cond_287
    const-string v2, "RESCUE"

    move-object/from16 v0, v18

    iget-object v3, v0, Lfr/testudo/spacecorsair/mod/ModFaction;->obj:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_296

    const-string v2, "PILOT"

    goto :goto_281

    :cond_296
    const-string v2, "CARGO"

    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_281

    .line 1029
    :cond_29d
    const-string v6, "DEFEND_ZONE"

    move-object/from16 v0, v18

    iget-object v7, v0, Lfr/testudo/spacecorsair/mod/ModFaction;->obj:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_32b

    .line 1030
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

    .line 1031
    move-object/from16 v0, v18

    iget-object v2, v0, Lfr/testudo/spacecorsair/mod/ModFaction;->center:Lfr/testudo/spacecorsair/engine/Vector2;

    move-object/from16 v0, p0

    iget-object v3, v0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v2, v3}, Lfr/testudo/spacecorsair/engine/Vector2;->distance(Lfr/testudo/spacecorsair/engine/Vector2;)F

    move-result v5

    .line 1032
    move-object/from16 v0, v18

    iget-object v2, v0, Lfr/testudo/spacecorsair/mod/ModFaction;->center:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v4, v2, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    move-object/from16 v0, v18

    iget-object v2, v0, Lfr/testudo/spacecorsair/mod/ModFaction;->center:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v3, v2, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    .line 1033
    const/4 v2, 0x0

    move-object/from16 v0, v18

    iget v6, v0, Lfr/testudo/spacecorsair/mod/ModFaction;->goal:I

    move-object/from16 v0, v18

    iget v7, v0, Lfr/testudo/spacecorsair/mod/ModFaction;->holdMs:I

    sub-int/2addr v6, v7

    div-int/lit16 v6, v6, 0x3e8

    invoke-static {v2, v6}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 1034
    sget-object v6, Lfr/testudo/spacecorsair/mod/ModFaction;->holdLabel:Ljava/lang/String;

    if-eqz v6, :cond_307

    sget v6, Lfr/testudo/spacecorsair/mod/ModFaction;->holdSec:I

    if-eq v2, v6, :cond_324

    .line 1035
    :cond_307
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

    .line 1036
    sput v2, Lfr/testudo/spacecorsair/mod/ModFaction;->holdSec:I

    .line 1038
    :cond_324
    sget-object v2, Lfr/testudo/spacecorsair/mod/ModFaction;->holdLabel:Ljava/lang/String;

    move-object v11, v2

    move/from16 v17, v5

    .line 1039
    goto/16 :goto_9a

    :cond_32b
    const-string v6, "DEFEND_CIVILIANS"

    move-object/from16 v0, v18

    iget-object v7, v0, Lfr/testudo/spacecorsair/mod/ModFaction;->obj:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_37a

    move-object/from16 v0, v18

    iget-boolean v6, v0, Lfr/testudo/spacecorsair/mod/ModFaction;->wavesOn:Z

    if-nez v6, :cond_37a

    .line 1040
    move-object/from16 v0, v18

    iget-object v2, v0, Lfr/testudo/spacecorsair/mod/ModFaction;->civs:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_345
    :goto_345
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_36f

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;

    .line 1041
    if-eqz v2, :cond_345

    iget-boolean v6, v2, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->removed:Z

    if-nez v6, :cond_345

    .line 1042
    iget-object v6, v2, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    move-object/from16 v0, p0

    iget-object v8, v0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v6, v8}, Lfr/testudo/spacecorsair/engine/Vector2;->distance(Lfr/testudo/spacecorsair/engine/Vector2;)F

    move-result v6

    .line 1043
    cmpg-float v8, v6, v5

    if-gez v8, :cond_345

    iget-object v3, v2, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v4, v3, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    iget-object v2, v2, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v3, v2, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    move v5, v6

    goto :goto_345

    .line 1045
    :cond_36f
    const-string v2, "CONVOY"

    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object v11, v2

    move/from16 v17, v5

    goto/16 :goto_9a

    .line 1046
    :cond_37a
    const-string v6, "ESCORT"

    move-object/from16 v0, v18

    iget-object v7, v0, Lfr/testudo/spacecorsair/mod/ModFaction;->obj:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3e2

    move-object/from16 v0, v18

    iget-object v6, v0, Lfr/testudo/spacecorsair/mod/ModFaction;->target:Lfr/testudo/spacecorsair/business/Element;

    if-eqz v6, :cond_3e2

    move-object/from16 v0, v18

    iget-object v6, v0, Lfr/testudo/spacecorsair/mod/ModFaction;->target:Lfr/testudo/spacecorsair/business/Element;

    iget-boolean v6, v6, Lfr/testudo/spacecorsair/business/Element;->removed:Z

    if-nez v6, :cond_3e2

    .line 1047
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

    .line 1048
    move-object/from16 v0, v18

    iget-object v2, v0, Lfr/testudo/spacecorsair/mod/ModFaction;->target:Lfr/testudo/spacecorsair/business/Element;

    iget-object v2, v2, Lfr/testudo/spacecorsair/business/Element;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    move-object/from16 v0, p0

    iget-object v3, v0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v2, v3}, Lfr/testudo/spacecorsair/engine/Vector2;->distance(Lfr/testudo/spacecorsair/engine/Vector2;)F

    move-result v5

    .line 1049
    move-object/from16 v0, v18

    iget-object v2, v0, Lfr/testudo/spacecorsair/mod/ModFaction;->target:Lfr/testudo/spacecorsair/business/Element;

    iget-object v2, v2, Lfr/testudo/spacecorsair/business/Element;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v4, v2, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    move-object/from16 v0, v18

    iget-object v2, v0, Lfr/testudo/spacecorsair/mod/ModFaction;->target:Lfr/testudo/spacecorsair/business/Element;

    iget-object v2, v2, Lfr/testudo/spacecorsair/business/Element;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v3, v2, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    .line 1050
    move-object/from16 v0, v18

    iget-object v2, v0, Lfr/testudo/spacecorsair/mod/ModFaction;->target:Lfr/testudo/spacecorsair/business/Element;

    iget-object v2, v2, Lfr/testudo/spacecorsair/business/Element;->specificName:Ljava/lang/String;

    move-object v11, v2

    move/from16 v17, v5

    goto/16 :goto_9a

    .line 1051
    :cond_3e2
    move-object/from16 v0, v18

    iget-object v6, v0, Lfr/testudo/spacecorsair/mod/ModFaction;->target:Lfr/testudo/spacecorsair/business/Element;

    if-eqz v6, :cond_419

    move-object/from16 v0, v18

    iget-object v6, v0, Lfr/testudo/spacecorsair/mod/ModFaction;->target:Lfr/testudo/spacecorsair/business/Element;

    iget-boolean v6, v6, Lfr/testudo/spacecorsair/business/Element;->removed:Z

    if-nez v6, :cond_419

    .line 1052
    move-object/from16 v0, v18

    iget-object v2, v0, Lfr/testudo/spacecorsair/mod/ModFaction;->target:Lfr/testudo/spacecorsair/business/Element;

    iget-object v2, v2, Lfr/testudo/spacecorsair/business/Element;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    move-object/from16 v0, p0

    iget-object v3, v0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v2, v3}, Lfr/testudo/spacecorsair/engine/Vector2;->distance(Lfr/testudo/spacecorsair/engine/Vector2;)F

    move-result v5

    .line 1053
    move-object/from16 v0, v18

    iget-object v2, v0, Lfr/testudo/spacecorsair/mod/ModFaction;->target:Lfr/testudo/spacecorsair/business/Element;

    iget-object v2, v2, Lfr/testudo/spacecorsair/business/Element;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v4, v2, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    move-object/from16 v0, v18

    iget-object v2, v0, Lfr/testudo/spacecorsair/mod/ModFaction;->target:Lfr/testudo/spacecorsair/business/Element;

    iget-object v2, v2, Lfr/testudo/spacecorsair/business/Element;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v3, v2, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    .line 1054
    move-object/from16 v0, v18

    iget-object v2, v0, Lfr/testudo/spacecorsair/mod/ModFaction;->target:Lfr/testudo/spacecorsair/business/Element;

    iget-object v2, v2, Lfr/testudo/spacecorsair/business/Element;->specificName:Ljava/lang/String;

    move-object v11, v2

    move/from16 v17, v5

    goto/16 :goto_9a

    .line 1055
    :cond_419
    const-string v6, "SCAN_CIVIL"

    move-object/from16 v0, v18

    iget-object v7, v0, Lfr/testudo/spacecorsair/mod/ModFaction;->obj:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4bc

    .line 1056
    const/4 v2, 0x0

    move v14, v2

    move v15, v3

    move/from16 v16, v4

    move/from16 v17, v5

    :goto_42c
    move-object/from16 v0, v18

    iget-object v2, v0, Lfr/testudo/spacecorsair/mod/ModFaction;->civs:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v14, v2, :cond_4aa

    move-object/from16 v0, v18

    iget-object v2, v0, Lfr/testudo/spacecorsair/mod/ModFaction;->scanMs:[I

    array-length v2, v2

    if-ge v14, v2, :cond_4aa

    .line 1057
    move-object/from16 v0, v18

    iget-object v2, v0, Lfr/testudo/spacecorsair/mod/ModFaction;->civs:Ljava/util/ArrayList;

    invoke-virtual {v2, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v13, v2

    check-cast v13, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;

    .line 1058
    if-eqz v13, :cond_4b6

    iget-boolean v2, v13, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->removed:Z

    if-nez v2, :cond_4b6

    move-object/from16 v0, v18

    iget-object v2, v0, Lfr/testudo/spacecorsair/mod/ModFaction;->scanMs:[I

    aget v2, v2, v14

    if-gez v2, :cond_464

    move v3, v15

    move/from16 v4, v16

    move/from16 v5, v17

    .line 1056
    :goto_45b
    add-int/lit8 v2, v14, 0x1

    move v14, v2

    move v15, v3

    move/from16 v16, v4

    move/from16 v17, v5

    goto :goto_42c

    .line 1059
    :cond_464
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

    .line 1060
    iget-object v2, v13, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    move-object/from16 v0, p0

    iget-object v3, v0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v2, v3}, Lfr/testudo/spacecorsair/engine/Vector2;->distance(Lfr/testudo/spacecorsair/engine/Vector2;)F

    move-result v5

    .line 1061
    cmpg-float v2, v5, v17

    if-gez v2, :cond_4b6

    iget-object v2, v13, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v0, v2, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    move/from16 v16, v0

    iget-object v2, v13, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v15, v2, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    move v3, v15

    move/from16 v4, v16

    goto :goto_45b

    .line 1063
    :cond_4aa
    const-string v2, "SCAN"

    move-object v11, v2

    move v3, v15

    move/from16 v4, v16

    goto/16 :goto_9a

    .line 1072
    :cond_4b2
    const/16 v2, 0xc8

    goto/16 :goto_f0

    :cond_4b6
    move v3, v15

    move/from16 v4, v16

    move/from16 v5, v17

    goto :goto_45b

    :cond_4bc
    move-object v11, v2

    move/from16 v17, v5

    goto/16 :goto_9a
.end method

.method private escortArrived()V
    .registers 7

    .prologue
    const/4 v5, 0x1

    .line 968
    iget v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->phase:I

    if-nez v0, :cond_38

    invoke-direct {p0}, Lfr/testudo/spacecorsair/mod/ModFaction;->secondSector()Lfr/testudo/spacecorsair/game/levels/LevelId;

    move-result-object v0

    if-eqz v0, :cond_38

    .line 969
    iput v5, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->phase:I

    .line 970
    const/4 v0, 0x0

    iput-boolean v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->courierMoving:Z

    .line 971
    const/4 v0, 0x0

    iput-object v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->target:Lfr/testudo/spacecorsair/business/Element;

    .line 972
    invoke-direct {p0}, Lfr/testudo/spacecorsair/mod/ModFaction;->save()V

    .line 973
    invoke-direct {p0}, Lfr/testudo/spacecorsair/mod/ModFaction;->activeSector()Lfr/testudo/spacecorsair/game/levels/LevelId;

    move-result-object v0

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModFaction;->sectorIs(Lfr/testudo/spacecorsair/game/levels/LevelId;)Z

    move-result v0

    iput-boolean v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->inZone:Z

    .line 974
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->playerShip:Lfr/testudo/spacecorsair/business/player/PlayerShip;

    const-string v1, "FOLLOW THE COURIER THROUGH THE GATE"

    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/high16 v2, 0x3f000000    # 0.5f

    const/high16 v3, 0x3f800000    # 1.0f

    const v4, 0x3f19999a    # 0.6f

    invoke-static {v0, v1, v2, v3, v4}, Lfr/testudo/spacecorsair/mod/Mod;->floatText(Lfr/testudo/spacecorsair/business/Element;Ljava/lang/String;FFF)V

    .line 975
    invoke-direct {p0, v5}, Lfr/testudo/spacecorsair/mod/ModFaction;->markGates(Z)V

    .line 979
    :goto_37
    return-void

    .line 978
    :cond_38
    invoke-direct {p0}, Lfr/testudo/spacecorsair/mod/ModFaction;->complete()V

    goto :goto_37
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
    .registers 5

    .prologue
    const/16 v3, 0xe

    const/4 v0, 0x0

    .line 391
    invoke-direct {p0}, Lfr/testudo/spacecorsair/mod/ModFaction;->cleanup()V

    .line 392
    iput-boolean v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->planned:Z

    .line 393
    invoke-direct {p0}, Lfr/testudo/spacecorsair/mod/ModFaction;->save()V

    .line 394
    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModAlerts;->missionResult(Z)V

    .line 395
    iget v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->idx:I

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModFaction;->key(I)Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->idx:I

    invoke-static {v1, v3}, Lfr/testudo/spacecorsair/mod/ModFaction;->str(II)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x2328

    invoke-static {v0, v1, v2}, Lfr/testudo/spacecorsair/mod/ModComms;->show(Ljava/lang/String;Ljava/lang/String;I)V

    .line 396
    iget v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->idx:I

    invoke-static {v0, v3}, Lfr/testudo/spacecorsair/mod/ModFaction;->str(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lfr/testudo/spacecorsair/business/mission/Mission;->setMissionFailure(Ljava/lang/String;)V

    .line 397
    return-void
.end method

.method private static farFrom(Lfr/testudo/spacecorsair/engine/Vector2;FF)Lfr/testudo/spacecorsair/engine/Vector2;
    .registers 4

    .prologue
    .line 779
    invoke-static {p0, p1, p2}, Lfr/testudo/spacecorsair/mod/ModPlace;->farPoint(Lfr/testudo/spacecorsair/engine/Vector2;FF)Lfr/testudo/spacecorsair/engine/Vector2;

    move-result-object v0

    return-object v0
.end method

.method private static farGate(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;
    .registers 9

    .prologue
    const/4 v4, 0x0

    .line 620
    .line 621
    const/high16 v1, -0x40800000    # -1.0f

    .line 623
    :try_start_3
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/Game;->currentLevel:Lfr/testudo/spacecorsair/game/levels/Level;

    iget-object v6, v0, Lfr/testudo/spacecorsair/game/levels/Level;->elements:Ljava/util/List;

    .line 624
    const/4 v0, 0x0

    move v5, v0

    move-object v3, v4

    :goto_e
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v0

    if-ge v5, v0, :cond_39

    .line 625
    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfr/testudo/spacecorsair/business/Element;

    .line 626
    instance-of v2, v0, Lfr/testudo/spacecorsair/business/world/Portal;

    if-eqz v2, :cond_4b

    iget-boolean v2, v0, Lfr/testudo/spacecorsair/business/Element;->removed:Z

    if-eqz v2, :cond_28

    move v0, v1

    .line 624
    :goto_23
    add-int/lit8 v2, v5, 0x1

    move v5, v2

    move v1, v0

    goto :goto_e

    .line 627
    :cond_28
    iget-object v2, v0, Lfr/testudo/spacecorsair/business/Element;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v2, p0}, Lfr/testudo/spacecorsair/engine/Vector2;->distance(Lfr/testudo/spacecorsair/engine/Vector2;)F

    move-result v2

    .line 628
    cmpl-float v7, v2, v1

    if-lez v7, :cond_4b

    iget-object v1, v0, Lfr/testudo/spacecorsair/business/Element;->position:Lfr/testudo/spacecorsair/engine/Vector2;
    :try_end_34
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_34} :catch_37

    move v0, v2

    move-object v3, v1

    goto :goto_23

    .line 630
    :catch_37
    move-exception v0

    move-object v3, v4

    .line 633
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
    .line 493
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

    .line 497
    const/4 v0, 0x0

    .line 498
    if-nez p1, :cond_5b

    .line 499
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 500
    sget-object v4, Lfr/testudo/spacecorsair/mod/ModFleet;->TYPES:[Lfr/testudo/spacecorsair/mod/ModFleet$Type;

    array-length v5, v4

    move v1, v2

    :goto_f
    if-ge v1, v5, :cond_2d

    aget-object v6, v4, v1

    .line 501
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

    .line 500
    :cond_2a
    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    .line 503
    :cond_2d
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_54

    .line 504
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x4

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 505
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

    .line 507
    :cond_54
    if-nez v0, :cond_5a

    invoke-static {p3}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisFactory;->newBasicEnnemisShip(I)Lfr/testudo/spacecorsair/business/ennemis/BasicEnnemyShip;

    move-result-object v0

    .line 515
    :cond_5a
    :goto_5a
    return-object v0

    .line 508
    :cond_5b
    const/4 v0, 0x1

    if-ne p1, v0, :cond_80

    .line 509
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v0

    cmpg-double v0, v0, v4

    if-gez v0, :cond_78

    invoke-static {p3}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisFactory;->newFrelon(I)Lfr/testudo/spacecorsair/business/ennemis/FrelonShip;

    move-result-object v0

    .line 510
    :goto_6a
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v2

    cmpg-double v1, v2, v4

    if-gez v1, :cond_7d

    const-string v1, "Syndicate Harvester"

    :goto_74
    invoke-static {v0, v1}, Lfr/testudo/spacecorsair/mod/ModFaction;->name(Lfr/testudo/spacecorsair/business/Element;Ljava/lang/String;)V

    goto :goto_5a

    .line 509
    :cond_78
    invoke-static {p3}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisFactory;->newDefensor(I)Lfr/testudo/spacecorsair/business/ennemis/DefensorShip;

    move-result-object v0

    goto :goto_6a

    .line 510
    :cond_7d
    const-string v1, "Syndicate Enforcer"

    goto :goto_74

    .line 512
    :cond_80
    invoke-static {p3}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisFactory;->newDefensor(I)Lfr/testudo/spacecorsair/business/ennemis/DefensorShip;

    move-result-object v0

    .line 513
    const-string v1, "Authority Picket"

    invoke-static {v0, v1}, Lfr/testudo/spacecorsair/mod/ModFaction;->name(Lfr/testudo/spacecorsair/business/Element;Ljava/lang/String;)V

    goto :goto_5a
.end method

.method private foeLevel()I
    .registers 7

    .prologue
    .line 468
    iget v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->idx:I

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModFaction;->minLevel(I)I

    move-result v0

    .line 469
    iget v1, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->idx:I

    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModFaction;->contract(I)Z

    move-result v1

    if-eqz v1, :cond_21

    .line 471
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

    .line 473
    :cond_21
    :goto_21
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v2

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    mul-double/2addr v2, v4

    double-to-int v1, v2

    add-int/2addr v0, v1

    return v0

    .line 471
    :catch_2b
    move-exception v0

    const/4 v0, 0x5

    goto :goto_21
.end method

.method private static gateTo(Lfr/testudo/spacecorsair/game/levels/LevelId;)Lfr/testudo/spacecorsair/business/world/Portal;
    .registers 3

    .prologue
    .line 611
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

    .line 615
    :goto_10
    return-object v0

    .line 612
    :catch_11
    move-exception v0

    .line 615
    :cond_12
    const/4 v0, 0x0

    goto :goto_10
.end method

.method private holdLevel()I
    .registers 4

    .prologue
    const/4 v1, 0x1

    .line 478
    .line 479
    :try_start_1
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/Game;->playerInfo:Lfr/testudo/spacecorsair/business/player/PlayerInfo;

    iget v0, v0, Lfr/testudo/spacecorsair/business/player/PlayerInfo;->level:I
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_9} :catch_1e

    .line 480
    :goto_9
    iget-object v2, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->zone:Lfr/testudo/spacecorsair/game/levels/LevelId;

    .line 481
    if-eqz v2, :cond_13

    iget v2, v2, Lfr/testudo/spacecorsair/game/levels/LevelId;->levelMax:I

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 482
    :cond_13
    const/16 v2, 0x28

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0

    .line 479
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

    .line 1181
    sget-object v1, Lfr/testudo/spacecorsair/mod/ModCapitals;->FACTIONS:[Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;

    iget v2, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->fi:I

    aget-object v5, v1, v2

    .line 1182
    iget-object v6, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->target:Lfr/testudo/spacecorsair/business/Element;

    .line 1183
    invoke-direct {p0}, Lfr/testudo/spacecorsair/mod/ModFaction;->activeSector()Lfr/testudo/spacecorsair/game/levels/LevelId;

    move-result-object v7

    .line 1185
    iget-boolean v1, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->completed:Z

    if-eqz v1, :cond_32

    move v1, v0

    move v2, v0

    .line 1197
    :goto_17
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->instrText:Ljava/lang/String;

    .line 1198
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

    .line 1219
    :goto_31
    return-object v0

    .line 1186
    :cond_32
    if-nez v7, :cond_3b

    iget v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->idx:I

    invoke-static {v0, v8}, Lfr/testudo/spacecorsair/mod/ModFaction;->str(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_31

    .line 1187
    :cond_3b
    iget-boolean v1, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->inZone:Z

    if-nez v1, :cond_42

    move v1, v0

    move v2, v3

    goto :goto_17

    .line 1188
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

    .line 1189
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

    .line 1190
    :cond_65
    iget-boolean v1, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->setupDone:Z

    if-nez v1, :cond_70

    iget v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->idx:I

    invoke-static {v0, v8}, Lfr/testudo/spacecorsair/mod/ModFaction;->str(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_31

    .line 1191
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

    .line 1192
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

    .line 1193
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

    .line 1194
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

    .line 1195
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

    .line 1196
    :cond_ea
    iget v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->idx:I

    invoke-static {v0, v8}, Lfr/testudo/spacecorsair/mod/ModFaction;->str(II)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_31

    .line 1200
    :cond_f2
    packed-switch v2, :pswitch_data_29a

    .line 1211
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

    .line 1213
    :goto_11e
    iput v2, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->instrBranch:I

    .line 1214
    iput v1, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->instrVal:I

    .line 1215
    iput-object v6, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->instrTarget:Lfr/testudo/spacecorsair/business/Element;

    .line 1216
    iget v1, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->goal:I

    iput v1, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->instrGoal:I

    .line 1217
    iput-object v7, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->instrWhere:Lfr/testudo/spacecorsair/game/levels/LevelId;

    .line 1218
    iput-object v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->instrText:Ljava/lang/String;

    goto/16 :goto_31

    .line 1201
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

    .line 1202
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

    .line 1203
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

    .line 1202
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

    .line 1203
    :cond_1ab
    const-string v0, "Go to "

    goto :goto_175

    .line 1204
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

    .line 1205
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

    .line 1206
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

    .line 1207
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

    .line 1208
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

    .line 1209
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

    .line 1210
    :pswitch_292
    const-string v0, "Meet the convoy"

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_11e

    .line 1200
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
    .line 991
    const/4 v0, 0x0

    .line 992
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

    .line 993
    :cond_1f
    return v1

    :cond_20
    move v0, v1

    goto :goto_1d
.end method

.method private load()V
    .registers 8

    .prologue
    const/16 v4, 0xc

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 423
    iput-boolean v1, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->planned:Z

    .line 424
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModFaction;->prefs()Landroid/content/SharedPreferences;

    move-result-object v2

    .line 425
    if-eqz v2, :cond_14

    invoke-direct {p0}, Lfr/testudo/spacecorsair/mod/ModFaction;->stateKey()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 426
    :cond_14
    if-nez v0, :cond_17

    .line 459
    :goto_16
    return-void

    .line 428
    :cond_17
    :try_start_17
    const-string v2, ";"

    const/4 v3, -0x1

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    .line 429
    const/4 v2, 0x0

    aget-object v2, v0, v2

    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModFaction;->level(Ljava/lang/String;)Lfr/testudo/spacecorsair/game/levels/LevelId;

    move-result-object v2

    .line 430
    if-eqz v2, :cond_29

    iput-object v2, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->zone:Lfr/testudo/spacecorsair/game/levels/LevelId;

    .line 431
    :cond_29
    const/4 v2, 0x1

    aget-object v2, v0, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->phase:I

    .line 432
    const/4 v2, 0x2

    aget-object v2, v0, v2

    iget-object v3, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->ref:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-static {v2, v3}, Lfr/testudo/spacecorsair/mod/ModFaction;->xy(Ljava/lang/String;Lfr/testudo/spacecorsair/engine/Vector2;)V

    .line 433
    const/4 v2, 0x3

    aget-object v2, v0, v2

    iget-object v3, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->center:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-static {v2, v3}, Lfr/testudo/spacecorsair/mod/ModFaction;->xy(Ljava/lang/String;Lfr/testudo/spacecorsair/engine/Vector2;)V

    .line 434
    const/4 v2, 0x4

    aget-object v2, v0, v2

    iget-object v3, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->endAt:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-static {v2, v3}, Lfr/testudo/spacecorsair/mod/ModFaction;->xy(Ljava/lang/String;Lfr/testudo/spacecorsair/engine/Vector2;)V

    .line 435
    const/4 v2, 0x5

    aget-object v2, v0, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->progress:I

    .line 436
    const/4 v2, 0x6

    aget-object v2, v0, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->goal:I

    .line 437
    const/4 v2, 0x7

    aget-object v2, v0, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->holdMs:I

    .line 438
    const/16 v2, 0x8

    aget-object v2, v0, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->waveNo:I

    .line 439
    const/16 v2, 0x9

    aget-object v2, v0, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->wavesLeft:I

    .line 440
    const-string v2, "1"

    const/16 v3, 0xa

    aget-object v3, v0, v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    iput-boolean v2, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->courierMoving:Z

    .line 441
    const/16 v2, 0xb

    aget-object v2, v0, v2

    iget-object v3, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->lastCourier:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-static {v2, v3}, Lfr/testudo/spacecorsair/mod/ModFaction;->xy(Ljava/lang/String;Lfr/testudo/spacecorsair/engine/Vector2;)V

    .line 442
    const/4 v2, 0x0

    iput-object v2, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->markers:[F

    .line 443
    const/4 v2, 0x0

    iput-object v2, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->taken:[Z

    .line 444
    array-length v2, v0

    if-le v2, v4, :cond_ef

    const/16 v2, 0xc

    aget-object v2, v0, v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_ef

    .line 445
    const/16 v2, 0xc

    aget-object v0, v0, v2

    const-string v2, ":"

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 446
    array-length v0, v2

    mul-int/lit8 v0, v0, 0x2

    new-array v0, v0, [F

    iput-object v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->markers:[F

    .line 447
    array-length v0, v2

    new-array v0, v0, [Z

    iput-object v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->taken:[Z

    move v0, v1

    .line 448
    :goto_b8
    array-length v3, v2

    if-ge v0, v3, :cond_ef

    .line 449
    aget-object v3, v2, v0

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 450
    iget-object v4, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->markers:[F

    mul-int/lit8 v5, v0, 0x2

    const/4 v6, 0x0

    aget-object v6, v3, v6

    invoke-static {v6}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v6

    aput v6, v4, v5

    .line 451
    iget-object v4, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->markers:[F

    mul-int/lit8 v5, v0, 0x2

    add-int/lit8 v5, v5, 0x1

    const/4 v6, 0x1

    aget-object v6, v3, v6

    invoke-static {v6}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v6

    aput v6, v4, v5

    .line 452
    iget-object v4, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->taken:[Z

    const-string v5, "1"

    const/4 v6, 0x2

    aget-object v3, v3, v6

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    aput-boolean v3, v4, v0

    .line 448
    add-int/lit8 v0, v0, 0x1

    goto :goto_b8

    .line 455
    :cond_ef
    const/4 v0, 0x1

    iput-boolean v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->planned:Z
    :try_end_f2
    .catch Ljava/lang/Throwable; {:try_start_17 .. :try_end_f2} :catch_f4

    goto/16 :goto_16

    .line 456
    :catch_f4
    move-exception v0

    .line 457
    iput-boolean v1, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->planned:Z

    goto/16 :goto_16
.end method

.method private markGates(Z)V
    .registers 5

    .prologue
    .line 1089
    :try_start_0
    iget-boolean v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->completed:Z

    if-eqz v0, :cond_f

    sget-object v0, Lfr/testudo/spacecorsair/mod/ModCapitals;->FACTIONS:[Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;

    iget v1, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->fi:I

    aget-object v0, v0, v1

    iget-object v0, v0, Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;->hq:Lfr/testudo/spacecorsair/game/levels/LevelId;

    .line 1090
    :goto_c
    if-nez v0, :cond_14

    .line 1102
    :cond_e
    :goto_e
    return-void

    .line 1089
    :cond_f
    invoke-direct {p0}, Lfr/testudo/spacecorsair/mod/ModFaction;->activeSector()Lfr/testudo/spacecorsair/game/levels/LevelId;

    move-result-object v0

    goto :goto_c

    .line 1091
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

    .line 1092
    :cond_37
    sget-object v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v1, v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v1, v1, Lfr/testudo/spacecorsair/game/Game;->currentLevel:Lfr/testudo/spacecorsair/game/levels/Level;

    iget-object v1, v1, Lfr/testudo/spacecorsair/game/levels/Level;->name:Ljava/lang/String;

    .line 1093
    if-eqz v1, :cond_49

    iget-object v2, v0, Lfr/testudo/spacecorsair/game/levels/LevelId;->levelName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_e

    .line 1094
    :cond_49
    sget-object v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v1, v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v1, v1, Lfr/testudo/spacecorsair/game/Game;->currentLevel:Lfr/testudo/spacecorsair/game/levels/Level;

    invoke-static {v0}, Lfr/testudo/spacecorsair/business/world/PathFinder;->getPortalNameToGoTo(Lfr/testudo/spacecorsair/game/levels/LevelId;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lfr/testudo/spacecorsair/game/levels/Level;->findPortalByName(Ljava/lang/String;)Lfr/testudo/spacecorsair/business/world/Portal;

    move-result-object v0

    .line 1095
    if-eqz v0, :cond_e

    .line 1096
    iput-boolean p1, v0, Lfr/testudo/spacecorsair/business/world/Portal;->isMissionObjective:Z

    .line 1097
    sget-object v1, Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;->ORANGE:Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;

    iput-object v1, v0, Lfr/testudo/spacecorsair/business/world/Portal;->missionObjectiveColor:Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;
    :try_end_5f
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_5f} :catch_60

    goto :goto_e

    .line 1099
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
    .line 519
    iput-object p1, p0, Lfr/testudo/spacecorsair/business/Element;->specificName:Ljava/lang/String;

    .line 520
    const/4 v0, -0x1

    iput v0, p0, Lfr/testudo/spacecorsair/business/Element;->specificNameDecalX:I

    .line 521
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
    .line 541
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
    .line 525
    if-nez p1, :cond_4

    const/4 p1, 0x0

    .line 537
    :goto_3
    return-object p1

    .line 526
    :cond_4
    iget-object v0, p1, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v0, p2}, Lfr/testudo/spacecorsair/engine/Vector2;->setSameAs(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 527
    invoke-virtual {p1}, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->updateSapCoords()V

    .line 528
    const v0, 0x460ca000    # 9000.0f

    iput v0, p1, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->desengagementDistance:F

    .line 529
    if-eqz p4, :cond_1a

    .line 530
    const/4 v0, 0x1

    iput-boolean v0, p1, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->isMissionObjective:Z

    .line 531
    sget-object v0, Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;->RED:Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;

    iput-object v0, p1, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->missionObjectiveColor:Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;

    .line 533
    :cond_1a
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->playerShip:Lfr/testudo/spacecorsair/business/player/PlayerShip;

    .line 534
    if-eqz p5, :cond_29

    if-eqz p3, :cond_32

    iget-boolean v1, p3, Lfr/testudo/spacecorsair/business/Element;->removed:Z

    if-nez v1, :cond_32

    :goto_26
    invoke-virtual {p1, p3}, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->initAttackTarget(Lfr/testudo/spacecorsair/business/Element;)V

    .line 535
    :cond_29
    invoke-virtual {p1}, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->addToCurrentLevel()V

    .line 536
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->spawned:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_32
    move-object p3, v0

    .line 534
    goto :goto_26
.end method

.method private plan(Lfr/testudo/spacecorsair/business/player/PlayerShip;)V
    .registers 10

    .prologue
    const/4 v7, 0x7

    const/4 v6, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 638
    iput-boolean v5, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->planned:Z

    .line 639
    iput v4, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->phase:I

    .line 640
    iput v4, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->progress:I

    .line 641
    iput v4, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->holdMs:I

    .line 642
    iput v4, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->waveNo:I

    .line 643
    iput v4, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->wavesLeft:I

    .line 644
    iput-boolean v4, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->courierMoving:Z

    .line 645
    iput-object v6, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->markers:[F

    .line 646
    iput-object v6, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->taken:[Z

    .line 647
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->ref:Lfr/testudo/spacecorsair/engine/Vector2;

    iget-object v1, p1, Lfr/testudo/spacecorsair/business/player/PlayerShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/engine/Vector2;->setSameAs(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 648
    const-string v0, "DEFEND_ZONE"

    iget-object v1, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->obj:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_67

    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->center:Lfr/testudo/spacecorsair/engine/Vector2;

    iget-object v1, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->ref:Lfr/testudo/spacecorsair/engine/Vector2;

    const v2, 0x463b8000    # 12000.0f

    const v3, 0x466a6000    # 15000.0f

    invoke-static {v1, v2, v3}, Lfr/testudo/spacecorsair/mod/ModPlace;->farPoint(Lfr/testudo/spacecorsair/engine/Vector2;FF)Lfr/testudo/spacecorsair/engine/Vector2;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/engine/Vector2;->setSameAs(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 650
    :goto_38
    const-string v0, "FIND_OBJECT"

    iget-object v1, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->obj:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4c

    const-string v0, "DELIVERY"

    iget-object v1, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->obj:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_78

    .line 651
    :cond_4c
    const/4 v0, 0x2

    new-array v0, v0, [F

    iget-object v1, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->center:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v1, v1, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    aput v1, v0, v4

    iget-object v1, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->center:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v1, v1, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    aput v1, v0, v5

    iput-object v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->markers:[F

    .line 652
    new-array v0, v5, [Z

    iput-object v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->taken:[Z

    .line 653
    iput v5, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->goal:I

    .line 671
    :cond_63
    :goto_63
    invoke-direct {p0}, Lfr/testudo/spacecorsair/mod/ModFaction;->save()V

    .line 672
    return-void

    .line 649
    :cond_67
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->center:Lfr/testudo/spacecorsair/engine/Vector2;

    iget-object v1, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->ref:Lfr/testudo/spacecorsair/engine/Vector2;

    const/high16 v2, 0x45fa0000    # 8000.0f

    const v3, 0x7f7fffff    # Float.MAX_VALUE

    invoke-static {v1, v2, v3}, Lfr/testudo/spacecorsair/mod/ModPlace;->farPoint(Lfr/testudo/spacecorsair/engine/Vector2;FF)Lfr/testudo/spacecorsair/engine/Vector2;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/engine/Vector2;->setSameAs(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    goto :goto_38

    .line 654
    :cond_78
    const-string v0, "GATHER_AND_SELL"

    iget-object v1, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->obj:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8c

    .line 655
    const/4 v0, 0x6

    iget-object v1, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->center:Lfr/testudo/spacecorsair/engine/Vector2;

    const v2, 0x45098000    # 2200.0f

    invoke-direct {p0, v0, v1, v2}, Lfr/testudo/spacecorsair/mod/ModFaction;->scatter(ILfr/testudo/spacecorsair/engine/Vector2;F)V

    goto :goto_63

    .line 656
    :cond_8c
    const-string v0, "RESCUE"

    iget-object v1, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->obj:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a8

    .line 657
    iget v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->idx:I

    invoke-static {v0, v7}, Lfr/testudo/spacecorsair/mod/ModFaction;->num(II)I

    move-result v0

    invoke-static {v5, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iget-object v1, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->center:Lfr/testudo/spacecorsair/engine/Vector2;

    const/high16 v2, 0x45480000    # 3200.0f

    invoke-direct {p0, v0, v1, v2}, Lfr/testudo/spacecorsair/mod/ModFaction;->scatter(ILfr/testudo/spacecorsair/engine/Vector2;F)V

    goto :goto_63

    .line 658
    :cond_a8
    const-string v0, "DEFEND_CIVILIANS"

    iget-object v1, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->obj:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b6

    .line 659
    const/4 v0, 0x4

    iput v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->wavesLeft:I

    goto :goto_63

    .line 660
    :cond_b6
    const-string v0, "DEFEND_ZONE"

    iget-object v1, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->obj:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d2

    .line 661
    iget v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->idx:I

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModFaction;->contract(I)Z

    move-result v0

    if-eqz v0, :cond_cf

    const/16 v0, 0x3c

    :goto_ca
    mul-int/lit16 v0, v0, 0x3e8

    iput v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->goal:I

    goto :goto_63

    :cond_cf
    const/16 v0, 0x5a

    goto :goto_ca

    .line 662
    :cond_d2
    const-string v0, "KILL_ENEMY_TYPE"

    iget-object v1, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->obj:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e6

    const-string v0, "SCAN_CIVIL"

    iget-object v1, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->obj:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f4

    .line 663
    :cond_e6
    iget v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->idx:I

    invoke-static {v0, v7}, Lfr/testudo/spacecorsair/mod/ModFaction;->num(II)I

    move-result v0

    invoke-static {v5, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->goal:I

    goto/16 :goto_63

    .line 664
    :cond_f4
    const-string v0, "ESCORT"

    iget-object v1, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->obj:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_63

    .line 666
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->ref:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-static {v0, v6}, Lfr/testudo/spacecorsair/mod/ModPlace;->farthestStation(Lfr/testudo/spacecorsair/engine/Vector2;Lfr/testudo/spacecorsair/business/world/station/Station;)Lfr/testudo/spacecorsair/business/world/station/Station;

    move-result-object v0

    .line 667
    if-eqz v0, :cond_10d

    iget-object v1, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->center:Lfr/testudo/spacecorsair/engine/Vector2;

    iget-object v2, v0, Lfr/testudo/spacecorsair/business/world/station/Station;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v1, v2}, Lfr/testudo/spacecorsair/engine/Vector2;->setSameAs(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 668
    :cond_10d
    iget-object v1, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->lastCourier:Lfr/testudo/spacecorsair/engine/Vector2;

    iget-object v2, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->center:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v1, v2}, Lfr/testudo/spacecorsair/engine/Vector2;->setSameAs(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 669
    invoke-direct {p0, v0}, Lfr/testudo/spacecorsair/mod/ModFaction;->planEscortEnd(Lfr/testudo/spacecorsair/business/world/station/Station;)V

    goto/16 :goto_63
.end method

.method private planEscortEnd(Lfr/testudo/spacecorsair/business/world/station/Station;)V
    .registers 5

    .prologue
    const/4 v1, 0x0

    .line 676
    iget v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->phase:I

    if-nez v0, :cond_2b

    iget v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->idx:I

    const/16 v2, 0xa

    invoke-static {v0, v2}, Lfr/testudo/spacecorsair/mod/ModFaction;->str(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModFaction;->level(Ljava/lang/String;)Lfr/testudo/spacecorsair/game/levels/LevelId;

    move-result-object v0

    .line 677
    :goto_11
    iget v2, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->phase:I

    if-nez v2, :cond_21

    iget v2, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->idx:I

    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModFaction;->contract(I)Z

    move-result v2

    if-nez v2, :cond_21

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModFaction;->gateTo(Lfr/testudo/spacecorsair/game/levels/LevelId;)Lfr/testudo/spacecorsair/business/world/Portal;

    move-result-object v1

    .line 678
    :cond_21
    if-eqz v1, :cond_2d

    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->endAt:Lfr/testudo/spacecorsair/engine/Vector2;

    iget-object v1, v1, Lfr/testudo/spacecorsair/business/world/Portal;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/engine/Vector2;->setSameAs(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 682
    :goto_2a
    return-void

    :cond_2b
    move-object v0, v1

    .line 676
    goto :goto_11

    .line 679
    :cond_2d
    if-eqz p1, :cond_3f

    iget-object v0, p1, Lfr/testudo/spacecorsair/business/world/station/Station;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    :goto_31
    invoke-static {v0, p1}, Lfr/testudo/spacecorsair/mod/ModPlace;->farthestStation(Lfr/testudo/spacecorsair/engine/Vector2;Lfr/testudo/spacecorsair/business/world/station/Station;)Lfr/testudo/spacecorsair/business/world/station/Station;

    move-result-object v0

    .line 680
    if-eqz v0, :cond_42

    iget-object v1, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->endAt:Lfr/testudo/spacecorsair/engine/Vector2;

    iget-object v0, v0, Lfr/testudo/spacecorsair/business/world/station/Station;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v1, v0}, Lfr/testudo/spacecorsair/engine/Vector2;->setSameAs(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    goto :goto_2a

    .line 679
    :cond_3f
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->center:Lfr/testudo/spacecorsair/engine/Vector2;

    goto :goto_31

    .line 681
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
    .line 546
    const/4 v0, 0x0

    move v6, v0

    :goto_2
    if-ge v6, p1, :cond_42

    .line 547
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v0

    const-wide v2, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v0, v2

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    mul-double/2addr v0, v2

    .line 548
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

    .line 549
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

    .line 546
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_2

    .line 549
    :cond_40
    const/4 v0, 0x0

    goto :goto_31

    .line 551
    :cond_42
    return-void
.end method

.method private static prefs()Landroid/content/SharedPreferences;
    .registers 1

    .prologue
    .line 365
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
    .line 555
    const/4 v4, -0x1

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v5}, Lfr/testudo/spacecorsair/mod/ModFaction;->reinforce(ILfr/testudo/spacecorsair/business/Element;ZIZ)V

    .line 556
    return-void
.end method

.method private reinforce(ILfr/testudo/spacecorsair/business/Element;ZIZ)V
    .registers 14

    .prologue
    .line 559
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->playerShip:Lfr/testudo/spacecorsair/business/player/PlayerShip;

    .line 560
    if-nez v0, :cond_7

    .line 569
    :cond_6
    return-void

    .line 561
    :cond_7
    iget-object v0, v0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModPlace;->ambushPoint(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    move-result-object v7

    .line 562
    const/4 v0, 0x0

    move v6, v0

    :goto_f
    if-ge v6, p1, :cond_6

    .line 563
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

    .line 564
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

    .line 565
    if-nez v0, :cond_6b

    .line 562
    :goto_55
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_f

    .line 564
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

    .line 566
    :cond_6b
    if-eqz p5, :cond_75

    add-int/lit8 v1, p1, -0x1

    if-ne v6, v1, :cond_75

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->setElite(Z)Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    .line 567
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

    const/16 v6, 0x3b

    .line 405
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModFaction;->prefs()Landroid/content/SharedPreferences;

    move-result-object v4

    .line 406
    if-nez v4, :cond_d

    .line 420
    :goto_c
    return-void

    .line 407
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

    .line 408
    :cond_21
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 409
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->zone:Lfr/testudo/spacecorsair/game/levels/LevelId;

    if-eqz v0, :cond_122

    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->zone:Lfr/testudo/spacecorsair/game/levels/LevelId;

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/game/levels/LevelId;->name()Ljava/lang/String;

    move-result-object v0

    :goto_30
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v3, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->phase:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->ref:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v3, v3, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    .line 410
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->ref:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v3, v3, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

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

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->endAt:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v3, v3, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    .line 411
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->endAt:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v3, v3, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v3, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->progress:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v3, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->goal:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v3, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->holdMs:I

    .line 412
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v3, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->waveNo:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v3, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->wavesLeft:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->courierMoving:Z

    if-eqz v0, :cond_126

    move v0, v1

    :goto_c1
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->lastCourier:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v3, v3, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    .line 413
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->lastCourier:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v3, v3, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 414
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->markers:[F

    if-eqz v0, :cond_12d

    move v0, v2

    .line 415
    :goto_e5
    iget-object v3, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->taken:[Z

    array-length v3, v3

    if-ge v0, v3, :cond_12d

    .line 416
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

    if-eqz v3, :cond_128

    move v3, v1

    :goto_10f
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    add-int/lit8 v3, v0, 0x1

    iget-object v7, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->taken:[Z

    array-length v7, v7

    if-ge v3, v7, :cond_12a

    const-string v3, ":"

    :goto_11c
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 415
    add-int/lit8 v0, v0, 0x1

    goto :goto_e5

    .line 409
    :cond_122
    const-string v0, ""

    goto/16 :goto_30

    :cond_126
    move v0, v2

    .line 412
    goto :goto_c1

    :cond_128
    move v3, v2

    .line 416
    goto :goto_10f

    :cond_12a
    const-string v3, ""

    goto :goto_11c

    .line 419
    :cond_12d
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

    .line 600
    invoke-direct {p0, p1, v4}, Lfr/testudo/spacecorsair/mod/ModFaction;->civil(Lfr/testudo/spacecorsair/engine/Vector2;Z)Lfr/testudo/spacecorsair/business/world/civil/CivilShip;

    move-result-object v0

    .line 601
    if-nez v0, :cond_c

    const/4 v0, 0x0

    .line 605
    :goto_b
    return-object v0

    .line 602
    :cond_c
    iput-boolean v5, v0, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->isMissionObjective:Z

    .line 603
    sget-object v1, Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;->ORANGE:Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;

    iput-object v1, v0, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->missionObjectiveColor:Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;

    .line 604
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

    .line 572
    mul-int/lit8 v0, p1, 0x2

    new-array v0, v0, [F

    iput-object v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->markers:[F

    .line 573
    new-array v0, p1, [Z

    iput-object v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->taken:[Z

    move v0, v1

    .line 574
    :goto_c
    if-ge v0, p1, :cond_2b

    .line 575
    const v2, 0x3e4ccccd    # 0.2f

    mul-float/2addr v2, p3

    invoke-static {p2, v2, p3}, Lfr/testudo/spacecorsair/mod/ModFaction;->away(Lfr/testudo/spacecorsair/engine/Vector2;FF)Lfr/testudo/spacecorsair/engine/Vector2;

    move-result-object v2

    .line 576
    iget-object v3, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->markers:[F

    mul-int/lit8 v4, v0, 0x2

    iget v5, v2, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    aput v5, v3, v4

    .line 577
    iget-object v3, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->markers:[F

    mul-int/lit8 v4, v0, 0x2

    add-int/lit8 v4, v4, 0x1

    iget v2, v2, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    aput v2, v3, v4

    .line 574
    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    .line 579
    :cond_2b
    iput p1, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->goal:I

    .line 580
    iput v1, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->progress:I

    .line 581
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

    .line 983
    :try_start_1
    sget-object v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v1, v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v1, v1, Lfr/testudo/spacecorsair/game/Game;->currentLevel:Lfr/testudo/spacecorsair/game/levels/Level;

    iget-object v1, v1, Lfr/testudo/spacecorsair/game/levels/Level;->name:Ljava/lang/String;

    .line 984
    if-eqz p0, :cond_16

    if-eqz v1, :cond_16

    iget-object v2, p0, Lfr/testudo/spacecorsair/game/levels/LevelId;->levelName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_12
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_12} :catch_17

    move-result v1

    if-eqz v1, :cond_16

    const/4 v0, 0x1

    .line 986
    :cond_16
    :goto_16
    return v0

    .line 985
    :catch_17
    move-exception v1

    goto :goto_16
.end method

.method private setup()V
    .registers 14

    .prologue
    const/16 v6, 0x9

    const/high16 v9, 0x42c80000    # 100.0f

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 685
    iput-boolean v4, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->setupDone:Z

    .line 686
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->playerShip:Lfr/testudo/spacecorsair/business/player/PlayerShip;

    .line 687
    if-nez v0, :cond_10

    .line 775
    :cond_f
    :goto_f
    return-void

    .line 688
    :cond_10
    iget-boolean v1, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->planned:Z

    if-nez v1, :cond_17

    invoke-direct {p0, v0}, Lfr/testudo/spacecorsair/mod/ModFaction;->plan(Lfr/testudo/spacecorsair/business/player/PlayerShip;)V

    .line 689
    :cond_17
    iput-boolean v5, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->ambushed2:Z

    iput-boolean v5, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->ambushed:Z

    .line 690
    iput-boolean v5, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->wavesOn:Z

    .line 691
    iput-object v3, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->target:Lfr/testudo/spacecorsair/business/Element;

    .line 692
    const-string v0, "DELIVERY"

    iget-object v1, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->obj:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f

    const-string v0, "GATHER_AND_SELL"

    iget-object v1, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->obj:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f

    .line 694
    const-string v0, "DEFEND_CIVILIANS"

    iget-object v1, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->obj:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a1

    .line 695
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->center:Lfr/testudo/spacecorsair/engine/Vector2;

    const v1, 0x458ca000    # 4500.0f

    const v2, 0x459c4000    # 5000.0f

    invoke-static {v0, v1, v2}, Lfr/testudo/spacecorsair/mod/ModFaction;->farFrom(Lfr/testudo/spacecorsair/engine/Vector2;FF)Lfr/testudo/spacecorsair/engine/Vector2;

    move-result-object v1

    move v0, v5

    .line 696
    :goto_4a
    const/4 v2, 0x4

    if-ge v0, v2, :cond_9b

    .line 697
    iget-object v2, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->center:Lfr/testudo/spacecorsair/engine/Vector2;

    const/high16 v3, 0x43e10000    # 450.0f

    invoke-static {v2, v9, v3}, Lfr/testudo/spacecorsair/mod/ModFaction;->away(Lfr/testudo/spacecorsair/engine/Vector2;FF)Lfr/testudo/spacecorsair/engine/Vector2;

    move-result-object v2

    invoke-direct {p0, v2, v4}, Lfr/testudo/spacecorsair/mod/ModFaction;->civil(Lfr/testudo/spacecorsair/engine/Vector2;Z)Lfr/testudo/spacecorsair/business/world/civil/CivilShip;

    move-result-object v2

    .line 698
    if-nez v2, :cond_5e

    .line 696
    :goto_5b
    add-int/lit8 v0, v0, 0x1

    goto :goto_4a

    .line 699
    :cond_5e
    iget v3, v2, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->maxLife:F

    const/high16 v6, 0x40400000    # 3.0f

    mul-float/2addr v3, v6

    iput v3, v2, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->maxLife:F

    .line 700
    iget v3, v2, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->maxLife:F

    iput v3, v2, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->life:F

    .line 701
    const-string v3, "Evacuee transport"

    invoke-static {v3}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lfr/testudo/spacecorsair/mod/ModFaction;->name(Lfr/testudo/spacecorsair/business/Element;Ljava/lang/String;)V

    .line 702
    iput-boolean v4, v2, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->isMissionObjective:Z

    .line 703
    sget-object v3, Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;->GREEN:Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;

    iput-object v3, v2, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->missionObjectiveColor:Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;

    .line 705
    const/4 v3, 0x2

    new-array v3, v3, [Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;

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

    goto :goto_5b

    .line 707
    :cond_9b
    const/16 v0, 0x1770

    iput v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->timer:I

    goto/16 :goto_f

    .line 708
    :cond_a1
    const-string v0, "DEFEND_ZONE"

    iget-object v1, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->obj:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b1

    .line 709
    const/16 v0, 0xfa0

    iput v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->timer:I

    goto/16 :goto_f

    .line 710
    :cond_b1
    const-string v0, "BOUNTY"

    iget-object v1, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->obj:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_146

    .line 711
    iget v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->idx:I

    invoke-static {v0, v6}, Lfr/testudo/spacecorsair/mod/ModFaction;->str(II)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Scoria"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_cf

    invoke-direct {p0}, Lfr/testudo/spacecorsair/mod/ModFaction;->side()I

    move-result v0

    if-ne v0, v4, :cond_138

    :cond_cf
    move v12, v4

    .line 712
    :goto_d0
    if-eqz v12, :cond_13a

    invoke-direct {p0}, Lfr/testudo/spacecorsair/mod/ModFaction;->foeLevel()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisFactory;->newFrelon(I)Lfr/testudo/spacecorsair/business/ennemis/FrelonShip;

    move-result-object v1

    .line 713
    :goto_dc
    if-eqz v1, :cond_f

    .line 714
    invoke-virtual {v1, v4}, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->setElite(Z)Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    .line 715
    iget v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->idx:I

    invoke-static {v0, v6}, Lfr/testudo/spacecorsair/mod/ModFaction;->str(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lfr/testudo/spacecorsair/mod/ModFaction;->name(Lfr/testudo/spacecorsair/business/Element;Ljava/lang/String;)V

    .line 716
    iget v2, v1, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->maxLife:F

    iget v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->idx:I

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModFaction;->hunt(I)Z

    move-result v0

    if-eqz v0, :cond_13f

    const/high16 v0, 0x41000000    # 8.0f

    :goto_f6
    mul-float/2addr v0, v2

    iput v0, v1, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->maxLife:F

    .line 717
    iget v0, v1, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->maxLife:F

    iput v0, v1, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->life:F

    .line 718
    iput v9, v1, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->lifeInPourc:F

    .line 719
    iget-object v0, v1, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->lifeBar:Lfr/testudo/spacecorsair/display/hud/InfoBarEnnemis;

    if-eqz v0, :cond_108

    iget-object v0, v1, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->lifeBar:Lfr/testudo/spacecorsair/display/hud/InfoBarEnnemis;

    invoke-virtual {v0, v9}, Lfr/testudo/spacecorsair/display/hud/InfoBarEnnemis;->setValue(F)V

    .line 720
    :cond_108
    iget-object v2, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->center:Lfr/testudo/spacecorsair/engine/Vector2;

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lfr/testudo/spacecorsair/mod/ModFaction;->place(Lfr/testudo/spacecorsair/business/ennemis/Ennemis;Lfr/testudo/spacecorsair/engine/Vector2;Lfr/testudo/spacecorsair/business/Element;ZZ)Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    move-result-object v0

    iput-object v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->target:Lfr/testudo/spacecorsair/business/Element;

    move v0, v5

    .line 721
    :goto_112
    iget v1, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->idx:I

    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModFaction;->hunt(I)Z

    move-result v1

    if-eqz v1, :cond_142

    const/4 v1, 0x4

    :goto_11b
    if-ge v0, v1, :cond_f

    if-eqz v12, :cond_144

    move v1, v4

    :goto_120
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

    goto :goto_112

    :cond_138
    move v12, v5

    .line 711
    goto :goto_d0

    .line 712
    :cond_13a
    invoke-direct {p0, v5, v4}, Lfr/testudo/spacecorsair/mod/ModFaction;->foe(IZ)Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    move-result-object v1

    goto :goto_dc

    .line 716
    :cond_13f
    const/high16 v0, 0x40800000    # 4.0f

    goto :goto_f6

    .line 721
    :cond_142
    const/4 v1, 0x2

    goto :goto_11b

    :cond_144
    move v1, v5

    goto :goto_120

    .line 723
    :cond_146
    const-string v0, "KILL_ENEMY_TYPE"

    iget-object v1, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->obj:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_163

    .line 724
    const/4 v0, 0x3

    iget v1, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->goal:I

    iget v2, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->progress:I

    sub-int/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget-object v1, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->center:Lfr/testudo/spacecorsair/engine/Vector2;

    const/high16 v2, 0x43960000    # 300.0f

    invoke-direct {p0, v0, v1, v2, v5}, Lfr/testudo/spacecorsair/mod/ModFaction;->post(ILfr/testudo/spacecorsair/engine/Vector2;FZ)V

    goto/16 :goto_f

    .line 725
    :cond_163
    const-string v0, "DESTROY_STATION"

    iget-object v1, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->obj:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1f4

    .line 726
    invoke-direct {p0}, Lfr/testudo/spacecorsair/mod/ModFaction;->foeLevel()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisFactory;->newRocketTourelle(I)Lfr/testudo/spacecorsair/business/ennemis/RocketTourelle;

    move-result-object v1

    .line 727
    if-eqz v1, :cond_f

    .line 728
    invoke-virtual {v1, v4}, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->setElite(Z)Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    .line 729
    iget v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->idx:I

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModFaction;->contract(I)Z

    move-result v0

    if-nez v0, :cond_190

    iget v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->idx:I

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModFaction;->order(I)I

    move-result v0

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModV35;->finale(I)Z

    move-result v0

    if-eqz v0, :cond_1ef

    :cond_190
    iget v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->idx:I

    invoke-static {v0, v6}, Lfr/testudo/spacecorsair/mod/ModFaction;->str(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1ef

    iget v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->idx:I

    invoke-static {v0, v6}, Lfr/testudo/spacecorsair/mod/ModFaction;->str(II)Ljava/lang/String;

    move-result-object v0

    :goto_1a2
    invoke-static {v1, v0}, Lfr/testudo/spacecorsair/mod/ModFaction;->name(Lfr/testudo/spacecorsair/business/Element;Ljava/lang/String;)V

    .line 730
    iget v0, v1, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->maxLife:F

    const/high16 v2, 0x41000000    # 8.0f

    mul-float/2addr v0, v2

    iput v0, v1, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->maxLife:F

    .line 731
    iget v0, v1, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->maxLife:F

    iput v0, v1, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->life:F

    .line 732
    iput v9, v1, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->lifeInPourc:F

    .line 733
    iget-object v0, v1, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->lifeBar:Lfr/testudo/spacecorsair/display/hud/InfoBarEnnemis;

    if-eqz v0, :cond_1bb

    iget-object v0, v1, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->lifeBar:Lfr/testudo/spacecorsair/display/hud/InfoBarEnnemis;

    invoke-virtual {v0, v9}, Lfr/testudo/spacecorsair/display/hud/InfoBarEnnemis;->setValue(F)V

    .line 734
    :cond_1bb
    iget-object v2, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->center:Lfr/testudo/spacecorsair/engine/Vector2;

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lfr/testudo/spacecorsair/mod/ModFaction;->place(Lfr/testudo/spacecorsair/business/ennemis/Ennemis;Lfr/testudo/spacecorsair/engine/Vector2;Lfr/testudo/spacecorsair/business/Element;ZZ)Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    move-result-object v0

    iput-object v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->target:Lfr/testudo/spacecorsair/business/Element;

    move v6, v5

    .line 735
    :goto_1c5
    const/4 v0, 0x3

    if-ge v6, v0, :cond_f

    iget v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->idx:I

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModFaction;->order(I)I

    move-result v0

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModV35;->finale(I)Z

    move-result v0

    if-eqz v0, :cond_1f2

    invoke-direct {p0}, Lfr/testudo/spacecorsair/mod/ModFaction;->side()I

    move-result v0

    :goto_1d8
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

    goto :goto_1c5

    .line 729
    :cond_1ef
    const-string v0, "Authority Relay Station"

    goto :goto_1a2

    .line 735
    :cond_1f2
    const/4 v0, 0x2

    goto :goto_1d8

    .line 737
    :cond_1f4
    const-string v0, "ESCORT"

    iget-object v1, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->obj:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2ad

    .line 738
    new-instance v1, Lfr/testudo/spacecorsair/engine/Vector2;

    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->lastCourier:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-direct {v1, v0}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>(Lfr/testudo/spacecorsair/engine/Vector2;)V

    .line 739
    iget v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->phase:I

    if-ne v0, v4, :cond_223

    iget-boolean v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->courierMoving:Z

    if-nez v0, :cond_223

    .line 741
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->entry:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v1, v0}, Lfr/testudo/spacecorsair/engine/Vector2;->setSameAs(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 742
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->entry:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-static {v0, v3}, Lfr/testudo/spacecorsair/mod/ModPlace;->farthestStation(Lfr/testudo/spacecorsair/engine/Vector2;Lfr/testudo/spacecorsair/business/world/station/Station;)Lfr/testudo/spacecorsair/business/world/station/Station;

    move-result-object v0

    .line 743
    iget-object v2, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->endAt:Lfr/testudo/spacecorsair/engine/Vector2;

    if-eqz v0, :cond_284

    iget-object v0, v0, Lfr/testudo/spacecorsair/business/world/station/Station;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    :goto_21e
    invoke-virtual {v2, v0}, Lfr/testudo/spacecorsair/engine/Vector2;->setSameAs(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 744
    iput-boolean v4, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->courierMoving:Z

    .line 746
    :cond_223
    invoke-direct {p0, v1, v4}, Lfr/testudo/spacecorsair/mod/ModFaction;->civil(Lfr/testudo/spacecorsair/engine/Vector2;Z)Lfr/testudo/spacecorsair/business/world/civil/CivilShip;

    move-result-object v1

    .line 747
    if-eqz v1, :cond_f

    .line 748
    iget v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->idx:I

    invoke-static {v0, v6}, Lfr/testudo/spacecorsair/mod/ModFaction;->str(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lfr/testudo/spacecorsair/mod/ModFaction;->name(Lfr/testudo/spacecorsair/business/Element;Ljava/lang/String;)V

    .line 749
    iget v0, v1, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->maxLife:F

    const/high16 v2, 0x40c00000    # 6.0f

    mul-float/2addr v0, v2

    iput v0, v1, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->maxLife:F

    .line 750
    iget v0, v1, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->maxLife:F

    iput v0, v1, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->life:F

    .line 751
    iput-boolean v4, v1, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->isMissionObjective:Z

    .line 752
    sget-object v0, Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;->GREEN:Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;

    iput-object v0, v1, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->missionObjectiveColor:Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;

    .line 753
    iput-object v1, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->target:Lfr/testudo/spacecorsair/business/Element;

    .line 754
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->gate:Lfr/testudo/spacecorsair/engine/Vector2;

    iget-object v2, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->endAt:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v0, v2}, Lfr/testudo/spacecorsair/engine/Vector2;->setSameAs(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 755
    iget-boolean v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->courierMoving:Z

    if-eqz v0, :cond_28b

    new-array v0, v4, [Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;

    iget-object v2, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->gate:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v2, v2, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    iget-object v3, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->gate:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v3, v3, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    invoke-static {v2, v3}, Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;->newMoove(FF)Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;

    move-result-object v2

    aput-object v2, v0, v5

    invoke-virtual {v1, v0}, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->setActivity([Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;)V

    .line 757
    :goto_263
    const/high16 v2, 0x3f800000    # 1.0f

    iget v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->phase:I

    if-nez v0, :cond_2aa

    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->center:Lfr/testudo/spacecorsair/engine/Vector2;

    :goto_26b
    iget-object v3, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->gate:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v0, v3}, Lfr/testudo/spacecorsair/engine/Vector2;->distance(Lfr/testudo/spacecorsair/engine/Vector2;)F

    move-result v0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->startDist:F

    .line 758
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->lastCourier:Lfr/testudo/spacecorsair/engine/Vector2;

    iget-object v1, v1, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/engine/Vector2;->setSameAs(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 759
    const/16 v0, 0x2710

    iput v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->courierCheck:I

    goto/16 :goto_f

    .line 743
    :cond_284
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->entry:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModFaction;->farGate(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    move-result-object v0

    goto :goto_21e

    .line 756
    :cond_28b
    const/4 v0, 0x2

    new-array v0, v0, [Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;

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

    goto :goto_263

    .line 757
    :cond_2aa
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->entry:Lfr/testudo/spacecorsair/engine/Vector2;

    goto :goto_26b

    .line 761
    :cond_2ad
    const-string v0, "SCAN_CIVIL"

    iget-object v1, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->obj:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2e3

    .line 762
    iget v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->goal:I

    new-array v0, v0, [I

    iput-object v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->scanMs:[I

    .line 763
    :goto_2bd
    iget v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->goal:I

    if-ge v5, v0, :cond_f

    .line 764
    iget v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->progress:I

    if-ge v5, v0, :cond_2d2

    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->scanMs:[I

    const/4 v1, -0x1

    aput v1, v0, v5

    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->civs:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 763
    :goto_2cf
    add-int/lit8 v5, v5, 0x1

    goto :goto_2bd

    .line 765
    :cond_2d2
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->center:Lfr/testudo/spacecorsair/engine/Vector2;

    const/high16 v1, 0x43960000    # 300.0f

    const v2, 0x45228000    # 2600.0f

    invoke-static {v0, v1, v2}, Lfr/testudo/spacecorsair/mod/ModFaction;->away(Lfr/testudo/spacecorsair/engine/Vector2;FF)Lfr/testudo/spacecorsair/engine/Vector2;

    move-result-object v0

    iget-object v1, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->center:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-direct {p0, v0, v1}, Lfr/testudo/spacecorsair/mod/ModFaction;->scanTarget(Lfr/testudo/spacecorsair/engine/Vector2;Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/business/world/civil/CivilShip;

    goto :goto_2cf

    .line 767
    :cond_2e3
    const-string v0, "KILL_FLAGSHIP"

    iget-object v1, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->obj:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 768
    iget v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->idx:I

    const/16 v1, 0x8

    invoke-static {v0, v1}, Lfr/testudo/spacecorsair/mod/ModFaction;->str(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v4}, Lfr/testudo/spacecorsair/mod/ModCapitals;->ensure(Ljava/lang/String;Z)Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;

    move-result-object v0

    .line 769
    if-eqz v0, :cond_f

    .line 770
    iput-boolean v4, v0, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->isMissionObjective:Z

    .line 771
    sget-object v1, Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;->RED:Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;

    iput-object v1, v0, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->missionObjectiveColor:Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;

    .line 772
    iput-object v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->target:Lfr/testudo/spacecorsair/business/Element;

    goto/16 :goto_f
.end method

.method private side()I
    .registers 5

    .prologue
    const/4 v0, 0x2

    .line 486
    iget v1, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->idx:I

    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModFaction;->key(I)Ljava/lang/String;

    move-result-object v1

    .line 487
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

    .line 489
    :cond_21
    :goto_21
    return v0

    .line 488
    :cond_22
    const-string v2, "varn"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_32

    iget v1, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->idx:I

    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModFaction;->order(I)I

    move-result v1

    if-eq v1, v0, :cond_21

    .line 489
    :cond_32
    const/4 v0, 0x0

    goto :goto_21
.end method

.method private stateKey()Ljava/lang/String;
    .registers 3

    .prologue
    .line 401
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
    .line 462
    const-string v0, ","

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 463
    const/4 v1, 0x0

    aget-object v1, v0, v1

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    const/4 v2, 0x1

    aget-object v0, v0, v2

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    invoke-virtual {p1, v1, v0}, Lfr/testudo/spacecorsair/engine/Vector2;->set(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 464
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
    .line 1170
    :try_start_0
    invoke-direct {p0}, Lfr/testudo/spacecorsair/mod/ModFaction;->instruction()Ljava/lang/String;

    move-result-object v0

    .line 1171
    if-eqz v0, :cond_7

    .line 1174
    :cond_6
    :goto_6
    return-object v0

    .line 1171
    :cond_7
    const-string v0, ""
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_9} :catch_a

    goto :goto_6

    .line 1172
    :catch_a
    move-exception v0

    .line 1173
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->instrText:Ljava/lang/String;

    .line 1174
    if-nez v0, :cond_6

    const-string v0, ""

    goto :goto_6
.end method

.method public giveUp()V
    .registers 1

    .prologue
    .line 1248
    invoke-direct {p0}, Lfr/testudo/spacecorsair/mod/ModFaction;->cleanup()V

    .line 1249
    invoke-virtual {p0}, Lfr/testudo/spacecorsair/mod/ModFaction;->terminate()V

    .line 1250
    return-void
.end method

.method public init()V
    .registers 9

    .prologue
    const/4 v1, 0x0

    .line 1229
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModFaction;->prefs()Landroid/content/SharedPreferences;

    move-result-object v2

    .line 1230
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

    .line 1231
    invoke-direct {p0}, Lfr/testudo/spacecorsair/mod/ModFaction;->cleanup()V

    .line 1232
    iput-boolean v1, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->planned:Z

    .line 1233
    iput v1, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->phase:I

    .line 1234
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

    .line 1235
    invoke-direct {p0}, Lfr/testudo/spacecorsair/mod/ModFaction;->save()V

    .line 1236
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

    .line 1237
    :cond_91
    iget v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->idx:I

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModFaction;->key(I)Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->idx:I

    const/16 v2, 0xb

    invoke-static {v1, v2}, Lfr/testudo/spacecorsair/mod/ModFaction;->str(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lfr/testudo/spacecorsair/mod/ModComms;->brief(Ljava/lang/String;Ljava/lang/String;)V

    .line 1238
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/Game;->currentLevel:Lfr/testudo/spacecorsair/game/levels/Level;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/levels/Level;->name:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lfr/testudo/spacecorsair/mod/ModFaction;->onZoneChanged(Ljava/lang/String;Ljava/lang/String;)V

    .line 1239
    return-void

    :cond_af
    move v0, v1

    .line 1230
    goto/16 :goto_2f

    .line 1234
    :cond_b2
    iget v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->idx:I

    const/4 v1, 0x4

    invoke-static {v0, v1}, Lfr/testudo/spacecorsair/mod/ModFaction;->str(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModFaction;->level(Ljava/lang/String;)Lfr/testudo/spacecorsair/game/levels/LevelId;

    move-result-object v0

    goto :goto_5e

    .line 1236
    :cond_be
    const-string v0, ""

    goto :goto_8a
.end method

.method public isCompleted()Z
    .registers 2

    .prologue
    .line 1243
    iget-boolean v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->completed:Z

    return v0
.end method

.method public onBeforePlayerDock()V
    .registers 3

    .prologue
    .line 1139
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

    .line 1145
    :cond_1d
    :goto_1d
    return-void

    .line 1140
    :cond_1e
    invoke-direct {p0}, Lfr/testudo/spacecorsair/mod/ModFaction;->secondSector()Lfr/testudo/spacecorsair/game/levels/LevelId;

    move-result-object v0

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModFaction;->sectorIs(Lfr/testudo/spacecorsair/game/levels/LevelId;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 1141
    invoke-direct {p0}, Lfr/testudo/spacecorsair/mod/ModFaction;->complete()V
    :try_end_2b
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_2b} :catch_2c

    goto :goto_1d

    .line 1142
    :catch_2c
    move-exception v0

    goto :goto_1d
.end method

.method public onDoPhysic(J)V
    .registers 16

    .prologue
    const/4 v4, 0x2

    const v11, 0x3e99999a    # 0.3f

    const/high16 v10, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    const/4 v3, 0x1

    .line 801
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v2, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->playerShip:Lfr/testudo/spacecorsair/business/player/PlayerShip;

    .line 802
    iget-boolean v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->completed:Z

    if-nez v0, :cond_1a

    iget-boolean v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->inZone:Z

    if-eqz v0, :cond_1a

    if-eqz v2, :cond_1a

    iget-boolean v0, v2, Lfr/testudo/spacecorsair/business/player/PlayerShip;->removed:Z

    if-eqz v0, :cond_1b

    .line 964
    :cond_1a
    :goto_1a
    return-void

    .line 803
    :cond_1b
    iget-boolean v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->setupDone:Z

    if-nez v0, :cond_3f

    .line 805
    iget v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->zoneMs:I

    if-nez v0, :cond_2a

    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->entry:Lfr/testudo/spacecorsair/engine/Vector2;

    iget-object v1, v2, Lfr/testudo/spacecorsair/business/player/PlayerShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/engine/Vector2;->setSameAs(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 806
    :cond_2a
    iget v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->zoneMs:I

    int-to-long v0, v0

    add-long/2addr v0, p1

    long-to-int v0, v0

    iput v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->zoneMs:I

    .line 807
    iget v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->zoneMs:I

    const/16 v1, 0x5dc

    if-le v0, v1, :cond_1a

    iget-boolean v0, v2, Lfr/testudo/spacecorsair/business/player/PlayerShip;->isDocked:Z

    if-nez v0, :cond_1a

    invoke-direct {p0}, Lfr/testudo/spacecorsair/mod/ModFaction;->setup()V

    goto :goto_1a

    .line 810
    :cond_3f
    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModPlace;->tickBoost(Lfr/testudo/spacecorsair/business/player/PlayerShip;)V

    .line 811
    iget v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->phase:I

    if-ne v0, v3, :cond_5a

    const-string v0, "DELIVERY"

    iget-object v1, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->obj:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1a

    const-string v0, "GATHER_AND_SELL"

    iget-object v1, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->obj:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1a

    .line 812
    :cond_5a
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->markers:[F

    if-eqz v0, :cond_1ac

    move v0, v5

    .line 813
    :goto_5f
    iget-object v1, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->taken:[Z

    array-length v1, v1

    if-ge v0, v1, :cond_176

    .line 814
    iget-object v1, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->taken:[Z

    aget-boolean v1, v1, v0

    if-eqz v1, :cond_6d

    .line 813
    :cond_6a
    :goto_6a
    add-int/lit8 v0, v0, 0x1

    goto :goto_5f

    .line 815
    :cond_6d
    iget-object v1, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->markers:[F

    mul-int/lit8 v6, v0, 0x2

    aget v1, v1, v6

    iget-object v6, v2, Lfr/testudo/spacecorsair/business/player/PlayerShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v6, v6, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    sub-float/2addr v1, v6

    iget-object v6, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->markers:[F

    mul-int/lit8 v7, v0, 0x2

    add-int/lit8 v7, v7, 0x1

    aget v6, v6, v7

    iget-object v7, v2, Lfr/testudo/spacecorsair/business/player/PlayerShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v7, v7, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    sub-float/2addr v6, v7

    .line 816
    mul-float/2addr v1, v1

    mul-float/2addr v6, v6

    add-float/2addr v1, v6

    float-to-double v6, v1

    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    double-to-float v6, v6

    .line 817
    iget-boolean v1, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->ambushed:Z

    if-nez v1, :cond_c9

    const v1, 0x44a28000    # 1300.0f

    cmpg-float v1, v6, v1

    if-gez v1, :cond_c9

    const-string v1, "FIND_OBJECT"

    iget-object v7, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->obj:Ljava/lang/String;

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_ad

    const-string v1, "DELIVERY"

    iget-object v7, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->obj:Ljava/lang/String;

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c9

    .line 818
    :cond_ad
    iput-boolean v3, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->ambushed:Z

    .line 819
    const-string v1, "DELIVERY"

    iget-object v7, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->obj:Ljava/lang/String;

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_14a

    const/4 v1, 0x3

    :goto_ba
    invoke-direct {p0, v1, v2, v5}, Lfr/testudo/spacecorsair/mod/ModFaction;->reinforce(ILfr/testudo/spacecorsair/business/Element;Z)V

    .line 820
    const-string v1, "CONTACTS INBOUND"

    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const v7, 0x3ecccccd    # 0.4f

    invoke-static {v2, v1, v10, v7, v11}, Lfr/testudo/spacecorsair/mod/Mod;->floatText(Lfr/testudo/spacecorsair/business/Element;Ljava/lang/String;FFF)V

    .line 822
    :cond_c9
    const/high16 v1, 0x435c0000    # 220.0f

    cmpg-float v1, v6, v1

    if-gez v1, :cond_6a

    .line 823
    iget-object v1, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->taken:[Z

    aput-boolean v3, v1, v0

    .line 824
    iget v1, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->progress:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->progress:I

    .line 825
    sget-object v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v1, v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->soundManager:Lfr/testudo/spacecorsair/engine/SoundManager;

    invoke-virtual {v1}, Lfr/testudo/spacecorsair/engine/SoundManager;->playGateZap()V

    .line 826
    const-string v1, "RESCUE"

    iget-object v6, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->obj:Ljava/lang/String;

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_14d

    const-string v1, "PILOT RECOVERED"

    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 827
    :goto_f0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v1, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->goal:I

    if-le v1, v3, :cond_173

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " "

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v7, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->progress:I

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v7, "/"

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v7, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->goal:I

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_11e
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/high16 v6, 0x3f000000    # 0.5f

    const v7, 0x3f19999a    # 0.6f

    invoke-static {v2, v1, v6, v10, v7}, Lfr/testudo/spacecorsair/mod/Mod;->floatText(Lfr/testudo/spacecorsair/business/Element;Ljava/lang/String;FFF)V

    .line 828
    iget-boolean v1, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->ambushed:Z

    if-nez v1, :cond_145

    iget v1, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->goal:I

    if-le v1, v3, :cond_145

    iget v1, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->progress:I

    iget v6, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->goal:I

    add-int/lit8 v6, v6, 0x1

    div-int/lit8 v6, v6, 0x2

    if-ne v1, v6, :cond_145

    .line 829
    iput-boolean v3, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->ambushed:Z

    .line 830
    invoke-direct {p0, v4, v2, v5}, Lfr/testudo/spacecorsair/mod/ModFaction;->reinforce(ILfr/testudo/spacecorsair/business/Element;Z)V

    .line 832
    :cond_145
    invoke-direct {p0}, Lfr/testudo/spacecorsair/mod/ModFaction;->save()V

    goto/16 :goto_6a

    :cond_14a
    move v1, v4

    .line 819
    goto/16 :goto_ba

    .line 826
    :cond_14d
    const-string v1, "GATHER_AND_SELL"

    iget-object v6, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->obj:Ljava/lang/String;

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_15e

    const-string v1, "CARGO"

    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_f0

    :cond_15e
    const-string v1, "DELIVERY"

    iget-object v6, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->obj:Ljava/lang/String;

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_16f

    const-string v1, "CRATE LOADED"

    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_f0

    :cond_16f
    const-string v1, "SECURED"

    goto/16 :goto_f0

    .line 827
    :cond_173
    const-string v1, ""

    goto :goto_11e

    .line 835
    :cond_176
    iget v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->progress:I

    iget v1, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->goal:I

    if-lt v0, v1, :cond_1a

    .line 836
    const-string v0, "DELIVERY"

    iget-object v1, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->obj:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_190

    const-string v0, "GATHER_AND_SELL"

    iget-object v1, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->obj:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a7

    .line 838
    :cond_190
    iput v3, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->phase:I

    .line 839
    const/4 v0, 0x0

    iput-object v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->markers:[F

    .line 840
    invoke-direct {p0}, Lfr/testudo/spacecorsair/mod/ModFaction;->save()V

    .line 841
    invoke-direct {p0}, Lfr/testudo/spacecorsair/mod/ModFaction;->activeSector()Lfr/testudo/spacecorsair/game/levels/LevelId;

    move-result-object v0

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModFaction;->sectorIs(Lfr/testudo/spacecorsair/game/levels/LevelId;)Z

    move-result v0

    iput-boolean v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->inZone:Z

    .line 842
    invoke-direct {p0, v3}, Lfr/testudo/spacecorsair/mod/ModFaction;->markGates(Z)V

    goto/16 :goto_1a

    .line 844
    :cond_1a7
    invoke-direct {p0}, Lfr/testudo/spacecorsair/mod/ModFaction;->complete()V

    goto/16 :goto_1a

    .line 849
    :cond_1ac
    const-string v0, "DEFEND_CIVILIANS"

    iget-object v1, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->obj:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_280

    .line 851
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->civs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move v1, v5

    :goto_1bd
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1db

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;

    if-eqz v0, :cond_5c1

    iget-boolean v7, v0, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->removed:Z

    if-nez v7, :cond_5c1

    iget v0, v0, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->life:F

    const/4 v7, 0x0

    cmpl-float v0, v0, v7

    if-lez v0, :cond_5c1

    add-int/lit8 v1, v1, 0x1

    move v0, v1

    :goto_1d9
    move v1, v0

    goto :goto_1bd

    .line 852
    :cond_1db
    if-ge v1, v4, :cond_1e2

    invoke-direct {p0}, Lfr/testudo/spacecorsair/mod/ModFaction;->fail()V

    goto/16 :goto_1a

    .line 853
    :cond_1e2
    iget-boolean v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->wavesOn:Z

    if-nez v0, :cond_213

    .line 855
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->civs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1ec
    :goto_1ec
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_20f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;

    if-eqz v0, :cond_1ec

    iget-boolean v6, v0, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->removed:Z

    if-nez v6, :cond_1ec

    iget-object v0, v0, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget-object v6, v2, Lfr/testudo/spacecorsair/business/player/PlayerShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v0, v6}, Lfr/testudo/spacecorsair/engine/Vector2;->distance(Lfr/testudo/spacecorsair/engine/Vector2;)F

    move-result v0

    const/high16 v6, 0x43fa0000    # 500.0f

    cmpg-float v0, v0, v6

    if-gez v0, :cond_1ec

    iput-boolean v3, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->wavesOn:Z

    goto :goto_1ec

    .line 856
    :cond_20f
    iget-boolean v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->wavesOn:Z

    if-eqz v0, :cond_1a

    .line 858
    :cond_213
    iget v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->timer:I

    int-to-long v0, v0

    sub-long/2addr v0, p1

    long-to-int v0, v0

    iput v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->timer:I

    .line 859
    iget v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->wavesLeft:I

    if-lez v0, :cond_271

    iget v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->timer:I

    if-gtz v0, :cond_271

    .line 860
    iget v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->wavesLeft:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->wavesLeft:I

    .line 861
    const/16 v0, 0x4e20

    iput v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->timer:I

    .line 862
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->civs:Ljava/util/ArrayList;

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v6

    iget-object v1, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->civs:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    int-to-double v8, v1

    mul-double/2addr v6, v8

    double-to-int v1, v6

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfr/testudo/spacecorsair/business/Element;

    .line 863
    invoke-direct {p0, v3, v2, v3}, Lfr/testudo/spacecorsair/mod/ModFaction;->reinforce(ILfr/testudo/spacecorsair/business/Element;Z)V

    .line 864
    invoke-direct {p0, v4, v0, v5}, Lfr/testudo/spacecorsair/mod/ModFaction;->reinforce(ILfr/testudo/spacecorsair/business/Element;Z)V

    .line 865
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

    const v1, 0x3ecccccd    # 0.4f

    invoke-static {v2, v0, v10, v1, v11}, Lfr/testudo/spacecorsair/mod/Mod;->floatText(Lfr/testudo/spacecorsair/business/Element;Ljava/lang/String;FFF)V

    .line 866
    invoke-direct {p0}, Lfr/testudo/spacecorsair/mod/ModFaction;->save()V

    .line 868
    :cond_271
    iget v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->wavesLeft:I

    if-nez v0, :cond_1a

    invoke-direct {p0}, Lfr/testudo/spacecorsair/mod/ModFaction;->liveFoes()I

    move-result v0

    if-nez v0, :cond_1a

    invoke-direct {p0}, Lfr/testudo/spacecorsair/mod/ModFaction;->complete()V

    goto/16 :goto_1a

    .line 869
    :cond_280
    const-string v0, "DEFEND_ZONE"

    iget-object v1, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->obj:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_328

    .line 870
    iget-object v0, v2, Lfr/testudo/spacecorsair/business/player/PlayerShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget-object v1, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->center:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/engine/Vector2;->distance(Lfr/testudo/spacecorsair/engine/Vector2;)F

    move-result v0

    const/high16 v1, 0x44e10000    # 1800.0f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_323

    move v0, v3

    .line 871
    :goto_299
    if-eqz v0, :cond_2a4

    iget v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->holdMs:I

    int-to-long v0, v0

    add-long/2addr v0, p1

    long-to-int v0, v0

    iput v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->holdMs:I

    iput-boolean v3, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->wavesOn:Z

    .line 872
    :cond_2a4
    iget-boolean v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->wavesOn:Z

    if-eqz v0, :cond_318

    .line 873
    iget v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->timer:I

    int-to-long v0, v0

    sub-long/2addr v0, p1

    long-to-int v0, v0

    iput v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->timer:I

    .line 874
    iget v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->goal:I

    div-int/lit16 v6, v0, 0x3a98

    .line 875
    iget v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->timer:I

    if-gtz v0, :cond_318

    iget v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->waveNo:I

    if-ge v0, v6, :cond_318

    .line 877
    const/16 v0, 0x3a98

    iput v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->timer:I

    .line 878
    iget v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->waveNo:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->waveNo:I

    .line 879
    const/16 v1, 0x8

    iget v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->idx:I

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModFaction;->contract(I)Z

    move-result v0

    if-eqz v0, :cond_326

    const/4 v0, 0x5

    :goto_2d0
    iget v4, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->waveNo:I

    add-int/2addr v0, v4

    add-int/lit8 v0, v0, -0x1

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 880
    invoke-direct {p0}, Lfr/testudo/spacecorsair/mod/ModFaction;->holdLevel()I

    move-result v4

    iget v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->waveNo:I

    if-ne v0, v6, :cond_2e2

    move v5, v3

    :cond_2e2
    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lfr/testudo/spacecorsair/mod/ModFaction;->reinforce(ILfr/testudo/spacecorsair/business/Element;ZIZ)V

    .line 881
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

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const v1, 0x3ecccccd    # 0.4f

    invoke-static {v2, v0, v10, v1, v11}, Lfr/testudo/spacecorsair/mod/Mod;->floatText(Lfr/testudo/spacecorsair/business/Element;Ljava/lang/String;FFF)V

    .line 882
    invoke-direct {p0}, Lfr/testudo/spacecorsair/mod/ModFaction;->save()V

    .line 885
    :cond_318
    iget v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->holdMs:I

    iget v1, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->goal:I

    if-lt v0, v1, :cond_1a

    invoke-direct {p0}, Lfr/testudo/spacecorsair/mod/ModFaction;->complete()V

    goto/16 :goto_1a

    :cond_323
    move v0, v5

    .line 870
    goto/16 :goto_299

    .line 879
    :cond_326
    const/4 v0, 0x6

    goto :goto_2d0

    .line 886
    :cond_328
    const-string v0, "BOUNTY"

    iget-object v1, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->obj:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_33c

    const-string v0, "DESTROY_STATION"

    iget-object v1, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->obj:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_35d

    .line 887
    :cond_33c
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->target:Lfr/testudo/spacecorsair/business/Element;

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->target:Lfr/testudo/spacecorsair/business/Element;

    iget-boolean v0, v0, Lfr/testudo/spacecorsair/business/Element;->removed:Z

    if-eqz v0, :cond_1a

    .line 888
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->target:Lfr/testudo/spacecorsair/business/Element;

    iget v0, v0, Lfr/testudo/spacecorsair/business/Element;->life:F

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_354

    invoke-direct {p0}, Lfr/testudo/spacecorsair/mod/ModFaction;->complete()V

    goto/16 :goto_1a

    .line 889
    :cond_354
    iput-boolean v5, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->setupDone:Z

    iput v5, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->zoneMs:I

    const/4 v0, 0x0

    iput-object v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->target:Lfr/testudo/spacecorsair/business/Element;

    goto/16 :goto_1a

    .line 891
    :cond_35d
    const-string v0, "KILL_ENEMY_TYPE"

    iget-object v1, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->obj:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_38f

    .line 892
    iget v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->progress:I

    iget v1, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->goal:I

    if-lt v0, v1, :cond_372

    invoke-direct {p0}, Lfr/testudo/spacecorsair/mod/ModFaction;->complete()V

    goto/16 :goto_1a

    .line 894
    :cond_372
    invoke-direct {p0}, Lfr/testudo/spacecorsair/mod/ModFaction;->liveFoes()I

    move-result v0

    .line 895
    if-ge v0, v4, :cond_1a

    iget v1, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->progress:I

    add-int/2addr v1, v0

    iget v3, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->goal:I

    if-ge v1, v3, :cond_1a

    iget v1, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->goal:I

    iget v3, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->progress:I

    sub-int/2addr v1, v3

    sub-int v0, v1, v0

    invoke-static {v4, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-direct {p0, v0, v2, v5}, Lfr/testudo/spacecorsair/mod/ModFaction;->reinforce(ILfr/testudo/spacecorsair/business/Element;Z)V

    goto/16 :goto_1a

    .line 896
    :cond_38f
    const-string v0, "ESCORT"

    iget-object v1, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->obj:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_489

    .line 897
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->target:Lfr/testudo/spacecorsair/business/Element;

    if-eqz v0, :cond_1a

    .line 898
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->target:Lfr/testudo/spacecorsair/business/Element;

    iget-boolean v0, v0, Lfr/testudo/spacecorsair/business/Element;->removed:Z

    if-nez v0, :cond_3ac

    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->target:Lfr/testudo/spacecorsair/business/Element;

    iget v0, v0, Lfr/testudo/spacecorsair/business/Element;->life:F

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_3c6

    .line 899
    :cond_3ac
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->target:Lfr/testudo/spacecorsair/business/Element;

    iget-object v0, v0, Lfr/testudo/spacecorsair/business/Element;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget-object v1, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->gate:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/engine/Vector2;->distance(Lfr/testudo/spacecorsair/engine/Vector2;)F

    move-result v0

    const/high16 v1, 0x442f0000    # 700.0f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_3c1

    invoke-direct {p0}, Lfr/testudo/spacecorsair/mod/ModFaction;->escortArrived()V

    goto/16 :goto_1a

    :cond_3c1
    invoke-direct {p0}, Lfr/testudo/spacecorsair/mod/ModFaction;->fail()V

    goto/16 :goto_1a

    .line 902
    :cond_3c6
    iget-boolean v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->courierMoving:Z

    if-nez v0, :cond_3df

    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->target:Lfr/testudo/spacecorsair/business/Element;

    iget-object v0, v0, Lfr/testudo/spacecorsair/business/Element;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget-object v1, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->lastCourier:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/engine/Vector2;->distance(Lfr/testudo/spacecorsair/engine/Vector2;)F

    move-result v0

    const/high16 v1, 0x42700000    # 60.0f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_3df

    iput-boolean v3, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->courierMoving:Z

    invoke-direct {p0}, Lfr/testudo/spacecorsair/mod/ModFaction;->save()V

    .line 903
    :cond_3df
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->target:Lfr/testudo/spacecorsair/business/Element;

    iget-object v0, v0, Lfr/testudo/spacecorsair/business/Element;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget-object v1, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->gate:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/engine/Vector2;->distance(Lfr/testudo/spacecorsair/engine/Vector2;)F

    move-result v0

    iget v1, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->startDist:F

    div-float/2addr v0, v1

    sub-float v0, v10, v0

    .line 904
    iget-boolean v1, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->ambushed:Z

    if-nez v1, :cond_406

    cmpl-float v1, v0, v11

    if-lez v1, :cond_406

    iput-boolean v3, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->ambushed:Z

    const/4 v1, 0x3

    iget-object v4, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->target:Lfr/testudo/spacecorsair/business/Element;

    invoke-direct {p0, v1, v4, v5}, Lfr/testudo/spacecorsair/mod/ModFaction;->reinforce(ILfr/testudo/spacecorsair/business/Element;Z)V

    const-string v1, "AMBUSH!"

    const v4, 0x3ecccccd    # 0.4f

    invoke-static {v2, v1, v10, v4, v11}, Lfr/testudo/spacecorsair/mod/Mod;->floatText(Lfr/testudo/spacecorsair/business/Element;Ljava/lang/String;FFF)V

    .line 905
    :cond_406
    iget-boolean v1, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->ambushed2:Z

    if-nez v1, :cond_421

    const v1, 0x3f266666    # 0.65f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_421

    iput-boolean v3, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->ambushed2:Z

    const/4 v0, 0x3

    iget-object v1, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->target:Lfr/testudo/spacecorsair/business/Element;

    invoke-direct {p0, v0, v1, v3}, Lfr/testudo/spacecorsair/mod/ModFaction;->reinforce(ILfr/testudo/spacecorsair/business/Element;Z)V

    const-string v0, "AMBUSH!"

    const v1, 0x3ecccccd    # 0.4f

    invoke-static {v2, v0, v10, v1, v11}, Lfr/testudo/spacecorsair/mod/Mod;->floatText(Lfr/testudo/spacecorsair/business/Element;Ljava/lang/String;FFF)V

    .line 906
    :cond_421
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->target:Lfr/testudo/spacecorsair/business/Element;

    iget-object v0, v0, Lfr/testudo/spacecorsair/business/Element;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget-object v1, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->gate:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/engine/Vector2;->distance(Lfr/testudo/spacecorsair/engine/Vector2;)F

    move-result v0

    const/high16 v1, 0x43e10000    # 450.0f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_43b

    .line 907
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->target:Lfr/testudo/spacecorsair/business/Element;

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/business/Element;->remove()V

    .line 908
    invoke-direct {p0}, Lfr/testudo/spacecorsair/mod/ModFaction;->escortArrived()V

    goto/16 :goto_1a

    .line 911
    :cond_43b
    iget v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->courierCheck:I

    int-to-long v0, v0

    sub-long/2addr v0, p1

    long-to-int v0, v0

    iput v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->courierCheck:I

    .line 912
    iget v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->courierCheck:I

    if-gtz v0, :cond_1a

    .line 914
    const/16 v0, 0x2710

    iput v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->courierCheck:I

    .line 915
    iget-boolean v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->courierMoving:Z

    if-eqz v0, :cond_47b

    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->target:Lfr/testudo/spacecorsair/business/Element;

    iget-object v0, v0, Lfr/testudo/spacecorsair/business/Element;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget-object v1, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->lastCourier:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/engine/Vector2;->distance(Lfr/testudo/spacecorsair/engine/Vector2;)F

    move-result v0

    const/high16 v1, 0x42700000    # 60.0f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_47b

    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->target:Lfr/testudo/spacecorsair/business/Element;

    instance-of v0, v0, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;

    if-eqz v0, :cond_47b

    .line 916
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->target:Lfr/testudo/spacecorsair/business/Element;

    check-cast v0, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;

    new-array v1, v3, [Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;

    iget-object v2, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->gate:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v2, v2, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    iget-object v3, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->gate:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v3, v3, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    invoke-static {v2, v3}, Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;->newMoove(FF)Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->setActivity([Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;)V

    .line 918
    :cond_47b
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->lastCourier:Lfr/testudo/spacecorsair/engine/Vector2;

    iget-object v1, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->target:Lfr/testudo/spacecorsair/business/Element;

    iget-object v1, v1, Lfr/testudo/spacecorsair/business/Element;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/engine/Vector2;->setSameAs(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 919
    invoke-direct {p0}, Lfr/testudo/spacecorsair/mod/ModFaction;->save()V

    goto/16 :goto_1a

    .line 921
    :cond_489
    const-string v0, "SCAN_CIVIL"

    iget-object v1, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->obj:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_567

    move v1, v5

    .line 922
    :goto_494
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->civs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_55c

    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->scanMs:[I

    array-length v0, v0

    if-ge v1, v0, :cond_55c

    .line 923
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->civs:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;

    .line 924
    if-eqz v0, :cond_4b1

    iget-object v6, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->scanMs:[I

    aget v6, v6, v1

    if-gez v6, :cond_4b5

    .line 922
    :cond_4b1
    :goto_4b1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_494

    .line 925
    :cond_4b5
    iget-boolean v6, v0, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->removed:Z

    if-nez v6, :cond_4c0

    iget v6, v0, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->life:F

    const/4 v7, 0x0

    cmpg-float v6, v6, v7

    if-gtz v6, :cond_4e5

    .line 927
    :cond_4c0
    iget-object v0, v2, Lfr/testudo/spacecorsair/business/player/PlayerShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModPlace;->ambushPoint(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    move-result-object v0

    iget-object v6, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->center:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-direct {p0, v0, v6}, Lfr/testudo/spacecorsair/mod/ModFaction;->scanTarget(Lfr/testudo/spacecorsair/engine/Vector2;Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/business/world/civil/CivilShip;

    move-result-object v0

    .line 928
    if-eqz v0, :cond_4e0

    .line 929
    iget-object v6, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->civs:Ljava/util/ArrayList;

    iget-object v7, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->civs:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 930
    iget-object v6, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->civs:Ljava/util/ArrayList;

    invoke-virtual {v6, v1, v0}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 932
    :cond_4e0
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->scanMs:[I

    aput v5, v0, v1

    goto :goto_4b1

    .line 935
    :cond_4e5
    iget-object v6, v0, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget-object v7, v2, Lfr/testudo/spacecorsair/business/player/PlayerShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v6, v7}, Lfr/testudo/spacecorsair/engine/Vector2;->distance(Lfr/testudo/spacecorsair/engine/Vector2;)F

    move-result v6

    const/high16 v7, 0x43e10000    # 450.0f

    cmpg-float v6, v6, v7

    if-gez v6, :cond_4b1

    .line 936
    iget-object v6, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->scanMs:[I

    aget v7, v6, v1

    int-to-long v8, v7

    add-long/2addr v8, p1

    long-to-int v7, v8

    aput v7, v6, v1

    .line 937
    iget-object v6, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->scanMs:[I

    aget v6, v6, v1

    const/16 v7, 0x5dc

    if-le v6, v7, :cond_4b1

    .line 938
    iget-object v6, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->scanMs:[I

    const/4 v7, -0x1

    aput v7, v6, v1

    .line 939
    iget v6, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->progress:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->progress:I

    .line 940
    iput-boolean v5, v0, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->isMissionObjective:Z

    .line 941
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "SCANNED "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->progress:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->goal:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/high16 v7, 0x3f000000    # 0.5f

    const v8, 0x3f666666    # 0.9f

    invoke-static {v0, v6, v7, v8, v10}, Lfr/testudo/spacecorsair/mod/Mod;->floatText(Lfr/testudo/spacecorsair/business/Element;Ljava/lang/String;FFF)V

    .line 942
    iget v6, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->progress:I

    iget v7, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->goal:I

    add-int/lit8 v7, v7, -0x1

    if-ne v6, v7, :cond_557

    iget-boolean v6, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->ambushed:Z

    if-nez v6, :cond_557

    .line 943
    iput-boolean v3, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->ambushed:Z

    .line 944
    const-string v6, "FALSE TRANSPONDER: RAIDERS!"

    invoke-static {v6}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const v7, 0x3ecccccd    # 0.4f

    invoke-static {v0, v6, v10, v7, v11}, Lfr/testudo/spacecorsair/mod/Mod;->floatText(Lfr/testudo/spacecorsair/business/Element;Ljava/lang/String;FFF)V

    .line 945
    invoke-direct {p0, v4, v2, v5}, Lfr/testudo/spacecorsair/mod/ModFaction;->reinforce(ILfr/testudo/spacecorsair/business/Element;Z)V

    .line 947
    :cond_557
    invoke-direct {p0}, Lfr/testudo/spacecorsair/mod/ModFaction;->save()V

    goto/16 :goto_4b1

    .line 951
    :cond_55c
    iget v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->progress:I

    iget v1, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->goal:I

    if-lt v0, v1, :cond_1a

    invoke-direct {p0}, Lfr/testudo/spacecorsair/mod/ModFaction;->complete()V

    goto/16 :goto_1a

    .line 952
    :cond_567
    const-string v0, "KILL_FLAGSHIP"

    iget-object v1, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->obj:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 953
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->target:Lfr/testudo/spacecorsair/business/Element;

    if-eqz v0, :cond_1a

    .line 954
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->target:Lfr/testudo/spacecorsair/business/Element;

    iget-boolean v0, v0, Lfr/testudo/spacecorsair/business/Element;->removed:Z

    if-eqz v0, :cond_592

    .line 955
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->target:Lfr/testudo/spacecorsair/business/Element;

    iget v0, v0, Lfr/testudo/spacecorsair/business/Element;->life:F

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_589

    invoke-direct {p0}, Lfr/testudo/spacecorsair/mod/ModFaction;->complete()V

    goto/16 :goto_1a

    .line 956
    :cond_589
    iput-boolean v5, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->setupDone:Z

    iput v5, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->zoneMs:I

    const/4 v0, 0x0

    iput-object v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->target:Lfr/testudo/spacecorsair/business/Element;

    goto/16 :goto_1a

    .line 959
    :cond_592
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->target:Lfr/testudo/spacecorsair/business/Element;

    iget-object v0, v0, Lfr/testudo/spacecorsair/business/Element;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget-object v1, v2, Lfr/testudo/spacecorsair/business/player/PlayerShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/engine/Vector2;->distance(Lfr/testudo/spacecorsair/engine/Vector2;)F

    move-result v0

    const v1, 0x458ca000    # 4500.0f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_1a

    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->target:Lfr/testudo/spacecorsair/business/Element;

    instance-of v0, v0, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->target:Lfr/testudo/spacecorsair/business/Element;

    check-cast v0, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;

    iget-object v0, v0, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->chasseTarget:Lfr/testudo/spacecorsair/business/Element;

    if-nez v0, :cond_1a

    .line 960
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->target:Lfr/testudo/spacecorsair/business/Element;

    check-cast v0, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->attackPlayerIfItNotTheCaseAlready()V

    .line 961
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->soundManager:Lfr/testudo/spacecorsair/engine/SoundManager;

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/engine/SoundManager;->playDanger()V

    goto/16 :goto_1a

    :cond_5c1
    move v0, v1

    goto/16 :goto_1d9
.end method

.method public onElementDestroyed(Lfr/testudo/spacecorsair/business/Element;)V
    .registers 2

    .prologue
    .line 1122
    return-void
.end method

.method public onElementDestroyedByPlayer(Lfr/testudo/spacecorsair/business/Element;)V
    .registers 7

    .prologue
    .line 1127
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

    .line 1128
    iget v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->progress:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->progress:I

    .line 1129
    invoke-direct {p0}, Lfr/testudo/spacecorsair/mod/ModFaction;->save()V

    .line 1130
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->playerShip:Lfr/testudo/spacecorsair/business/player/PlayerShip;

    .line 1131
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

    .line 1133
    :cond_55
    return-void
.end method

.method public onPlayerDeath()V
    .registers 5

    .prologue
    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 1149
    invoke-direct {p0}, Lfr/testudo/spacecorsair/mod/ModFaction;->cleanup()V

    .line 1151
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

    .line 1152
    :cond_29
    const-string v0, "DELIVERY"

    iget-object v2, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->obj:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_50

    .line 1153
    const/4 v0, 0x2

    new-array v0, v0, [F

    iget-object v2, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->center:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v2, v2, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    aput v2, v0, v1

    iget-object v2, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->center:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v2, v2, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    aput v2, v0, v3

    iput-object v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->markers:[F

    .line 1154
    new-array v0, v3, [Z

    iput-object v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->taken:[Z

    .line 1160
    :cond_48
    :goto_48
    iput v1, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->progress:I

    .line 1161
    iput v1, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->phase:I

    .line 1162
    invoke-direct {p0}, Lfr/testudo/spacecorsair/mod/ModFaction;->save()V

    .line 1164
    :cond_4f
    return-void

    .line 1155
    :cond_50
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->markers:[F

    if-eqz v0, :cond_58

    iget v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->phase:I

    if-ne v0, v3, :cond_62

    .line 1156
    :cond_58
    const/4 v0, 0x6

    iget-object v2, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->center:Lfr/testudo/spacecorsair/engine/Vector2;

    const v3, 0x45098000    # 2200.0f

    invoke-direct {p0, v0, v2, v3}, Lfr/testudo/spacecorsair/mod/ModFaction;->scatter(ILfr/testudo/spacecorsair/engine/Vector2;F)V

    goto :goto_48

    :cond_62
    move v0, v1

    .line 1158
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
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 1108
    iget-object v2, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->spawned:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 1109
    iget-object v2, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->civs:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 1110
    const/4 v2, 0x0

    iput-object v2, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->target:Lfr/testudo/spacecorsair/business/Element;

    .line 1111
    iput-boolean v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->setupDone:Z

    .line 1112
    iput v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->zoneMs:I

    .line 1113
    iput-boolean v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->wavesOn:Z

    .line 1114
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModPlace;->clearBoost()V

    .line 1115
    invoke-direct {p0}, Lfr/testudo/spacecorsair/mod/ModFaction;->activeSector()Lfr/testudo/spacecorsair/game/levels/LevelId;

    move-result-object v2

    .line 1116
    sget-boolean v3, Lfr/testudo/spacecorsair/mod/ModFaction;->testZone:Z

    if-nez v3, :cond_2c

    if-eqz v2, :cond_2d

    if-eqz p1, :cond_2d

    iget-object v2, v2, Lfr/testudo/spacecorsair/game/levels/LevelId;->levelName:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2d

    :cond_2c
    move v0, v1

    :cond_2d
    iput-boolean v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->inZone:Z

    .line 1117
    invoke-direct {p0, v1}, Lfr/testudo/spacecorsair/mod/ModFaction;->markGates(Z)V

    .line 1118
    return-void
.end method

.method public restoreState()V
    .registers 6

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 1263
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModFaction;->prefs()Landroid/content/SharedPreferences;

    move-result-object v3

    .line 1264
    if-eqz v3, :cond_69

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

    if-eqz v0, :cond_69

    const/4 v0, 0x1

    :goto_28
    iput-boolean v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->completed:Z

    .line 1265
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->spawned:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1266
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->civs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1267
    iput-object v2, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->target:Lfr/testudo/spacecorsair/business/Element;

    .line 1268
    iput-boolean v1, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->setupDone:Z

    .line 1269
    iput v1, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->zoneMs:I

    .line 1270
    if-eqz v3, :cond_6b

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

    .line 1271
    :goto_57
    if-eqz v0, :cond_65

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModFaction;->level(Ljava/lang/String;)Lfr/testudo/spacecorsair/game/levels/LevelId;

    move-result-object v1

    if-eqz v1, :cond_65

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModFaction;->level(Ljava/lang/String;)Lfr/testudo/spacecorsair/game/levels/LevelId;

    move-result-object v0

    iput-object v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->zone:Lfr/testudo/spacecorsair/game/levels/LevelId;

    .line 1272
    :cond_65
    invoke-direct {p0}, Lfr/testudo/spacecorsair/mod/ModFaction;->load()V

    .line 1273
    return-void

    :cond_69
    move v0, v1

    .line 1264
    goto :goto_28

    :cond_6b
    move-object v0, v2

    .line 1270
    goto :goto_57
.end method

.method public saveState()V
    .registers 1

    .prologue
    .line 1277
    return-void
.end method

.method public terminate()V
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 1254
    invoke-direct {p0, v0}, Lfr/testudo/spacecorsair/mod/ModFaction;->markGates(Z)V

    .line 1255
    iput-boolean v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->completed:Z

    .line 1256
    iput-boolean v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->planned:Z

    .line 1257
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModFaction;->prefs()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1258
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

    .line 1259
    :cond_55
    return-void
.end method
