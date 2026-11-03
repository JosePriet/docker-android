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

.field private testTicks:I

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

    .line 1098
    new-instance v0, Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-direct {v0}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>()V

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModFaction;->pos:Lfr/testudo/spacecorsair/engine/Vector2;

    .line 1101
    sput v3, Lfr/testudo/spacecorsair/mod/ModFaction;->holdSec:I

    sput v3, Lfr/testudo/spacecorsair/mod/ModFaction;->arrowM:I

    return-void
.end method

.method private constructor <init>(I)V
    .registers 3

    .prologue
    .line 363
    invoke-direct {p0}, Lfr/testudo/spacecorsair/business/mission/MissionListener;-><init>()V

    .line 338
    new-instance v0, Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-direct {v0}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>()V

    iput-object v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->ref:Lfr/testudo/spacecorsair/engine/Vector2;

    .line 339
    new-instance v0, Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-direct {v0}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>()V

    iput-object v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->entry:Lfr/testudo/spacecorsair/engine/Vector2;

    .line 340
    new-instance v0, Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-direct {v0}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>()V

    iput-object v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->center:Lfr/testudo/spacecorsair/engine/Vector2;

    .line 341
    new-instance v0, Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-direct {v0}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>()V

    iput-object v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->endAt:Lfr/testudo/spacecorsair/engine/Vector2;

    .line 343
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->spawned:Ljava/util/ArrayList;

    .line 344
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->civs:Ljava/util/ArrayList;

    .line 359
    new-instance v0, Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-direct {v0}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>()V

    iput-object v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->gate:Lfr/testudo/spacecorsair/engine/Vector2;

    .line 360
    new-instance v0, Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-direct {v0}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>()V

    iput-object v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->lastCourier:Lfr/testudo/spacecorsair/engine/Vector2;

    .line 1329
    const/4 v0, -0x1

    iput v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->instrBranch:I

    .line 364
    iput p1, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->idx:I

    .line 365
    invoke-static {p1}, Lfr/testudo/spacecorsair/mod/ModFaction;->objective(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->obj:Ljava/lang/String;

    .line 366
    const/4 v0, 0x4

    invoke-static {p1, v0}, Lfr/testudo/spacecorsair/mod/ModFaction;->str(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModFaction;->level(Ljava/lang/String;)Lfr/testudo/spacecorsair/game/levels/LevelId;

    move-result-object v0

    iput-object v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->zone:Lfr/testudo/spacecorsair/game/levels/LevelId;

    .line 367
    invoke-static {p1}, Lfr/testudo/spacecorsair/mod/ModFaction;->key(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModFaction;->faction(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->fi:I

    .line 368
    return-void
.end method

.method private static active()Lfr/testudo/spacecorsair/mod/ModFaction;
    .registers 2

    .prologue
    .line 371
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->currentMission:Lfr/testudo/spacecorsair/business/mission/Mission;

    .line 372
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
    .line 319
    iget v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->phase:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_c

    .line 320
    invoke-direct {p0}, Lfr/testudo/spacecorsair/mod/ModFaction;->secondSector()Lfr/testudo/spacecorsair/game/levels/LevelId;

    move-result-object v0

    .line 321
    if-eqz v0, :cond_c

    .line 323
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
    .line 220
    if-eqz p0, :cond_4

    if-nez p1, :cond_5

    .line 266
    :cond_4
    :goto_4
    return-void

    .line 221
    :cond_5
    :try_start_5
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModFaction;->all()[Lfr/testudo/spacecorsair/business/mission/Mission;

    move-result-object v5

    .line 222
    sget-object v2, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v6, v2, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->currentMission:Lfr/testudo/spacecorsair/business/mission/Mission;

    .line 223
    sget-object v2, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v2, v2, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v2, v2, Lfr/testudo/spacecorsair/game/Game;->playerInfo:Lfr/testudo/spacecorsair/business/player/PlayerInfo;

    iget v7, v2, Lfr/testudo/spacecorsair/business/player/PlayerInfo;->level:I

    .line 224
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/32 v8, 0x5265c00

    div-long v8, v2, v8

    .line 225
    const/4 v2, 0x0

    move v4, v2

    :goto_20
    sget-object v2, Lfr/testudo/spacecorsair/mod/ModCapitals;->FACTIONS:[Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;

    array-length v2, v2

    if-ge v4, v2, :cond_4

    .line 226
    sget-object v2, Lfr/testudo/spacecorsair/mod/ModCapitals;->FACTIONS:[Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;

    aget-object v2, v2, v4

    iget-object v2, v2, Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;->hq:Lfr/testudo/spacecorsair/game/levels/LevelId;

    move-object/from16 v0, p0

    if-eq v2, v0, :cond_39

    sget-boolean v2, Lfr/testudo/spacecorsair/mod/ModFaction;->testHail:Z

    if-eqz v2, :cond_35

    if-eqz v4, :cond_39

    .line 225
    :cond_35
    :goto_35
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    goto :goto_20

    .line 227
    :cond_39
    sget-object v2, Lfr/testudo/spacecorsair/mod/ModCapitals;->FACTIONS:[Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;

    aget-object v2, v2, v4

    iget-object v10, v2, Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;->key:Ljava/lang/String;

    .line 228
    invoke-static {v10}, Lfr/testudo/spacecorsair/mod/ModRep;->rank(Ljava/lang/String;)I

    move-result v11

    .line 229
    if-lez v11, :cond_35

    .line 230
    const/4 v2, 0x2

    if-lt v11, v2, :cond_87

    .line 231
    const/4 v2, 0x0

    :goto_49
    array-length v3, v5

    if-ge v2, v3, :cond_87

    .line 232
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

    .line 231
    :cond_66
    add-int/lit8 v2, v2, 0x1

    goto :goto_49

    .line 233
    :cond_69
    sget-object v3, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v3, v3, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->missionRepository:Lfr/testudo/spacecorsair/business/mission/MissionRepository;

    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModFaction;->id(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v3, v12}, Lfr/testudo/spacecorsair/business/mission/MissionRepository;->hasDoneMission(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_66

    .line 234
    aget-object v3, v5, v2

    if-eq v6, v3, :cond_b1

    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModFaction;->minLevel(I)I

    move-result v3

    add-int/lit8 v3, v3, -0x2

    if-ge v7, v3, :cond_b1

    sget-boolean v3, Lfr/testudo/spacecorsair/mod/ModFaction;->testHail:Z

    if-nez v3, :cond_b1

    .line 239
    :cond_87
    :goto_87
    const/4 v2, 0x2

    if-lt v11, v2, :cond_ea

    sget-object v2, Lfr/testudo/spacecorsair/game/levels/LevelId;->THE_HIVE:Lfr/testudo/spacecorsair/game/levels/LevelId;

    move-object/from16 v0, p0

    if-ne v0, v2, :cond_ea

    .line 241
    const/4 v2, 0x0

    :goto_91
    array-length v3, v5

    if-ge v2, v3, :cond_ea

    .line 242
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

    .line 241
    :cond_ae
    add-int/lit8 v2, v2, 0x1

    goto :goto_91

    .line 235
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

    .line 263
    :catch_c3
    move-exception v2

    goto/16 :goto_4

    .line 243
    :cond_c6
    sget-object v3, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v3, v3, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->missionRepository:Lfr/testudo/spacecorsair/business/mission/MissionRepository;

    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModFaction;->id(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v3, v12}, Lfr/testudo/spacecorsair/business/mission/MissionRepository;->hasDoneMission(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_ae

    .line 244
    aget-object v3, v5, v2

    if-eq v6, v3, :cond_11f

    const/16 v3, 0x22

    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModFaction;->minLevel(I)I

    move-result v12

    add-int/lit8 v12, v12, -0x2

    invoke-static {v3, v12}, Ljava/lang/Math;->max(II)I

    move-result v3

    if-ge v7, v3, :cond_11f

    sget-boolean v3, Lfr/testudo/spacecorsair/mod/ModFaction;->testHail:Z

    if-nez v3, :cond_11f

    .line 250
    :cond_ea
    :goto_ea
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 251
    const/4 v2, 0x0

    move v3, v2

    :goto_f1
    array-length v2, v5

    if-ge v3, v2, :cond_133

    .line 252
    invoke-static {v3}, Lfr/testudo/spacecorsair/mod/ModFaction;->contract(I)Z

    move-result v2

    if-eqz v2, :cond_11b

    invoke-static {v3}, Lfr/testudo/spacecorsair/mod/ModFaction;->hunt(I)Z

    move-result v2

    if-nez v2, :cond_11b

    invoke-static {v3}, Lfr/testudo/spacecorsair/mod/ModFaction;->key(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11b

    invoke-static {v3}, Lfr/testudo/spacecorsair/mod/ModFaction;->amends(I)Z

    move-result v13

    const/4 v2, 0x1

    if-ne v11, v2, :cond_131

    const/4 v2, 0x1

    :goto_112
    if-ne v13, v2, :cond_11b

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v12, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 251
    :cond_11b
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_f1

    .line 245
    :cond_11f
    aget-object v3, v5, v2

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_ea

    aget-object v2, v5, v2

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_ea

    .line 252
    :cond_131
    const/4 v2, 0x0

    goto :goto_112

    .line 254
    :cond_133
    const/4 v2, 0x0

    move v3, v2

    :goto_135
    const/4 v2, 0x2

    if-ge v3, v2, :cond_178

    invoke-virtual {v12}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_178

    .line 255
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

    .line 256
    aget-object v13, v5, v2

    move-object/from16 v0, p1

    invoke-interface {v0, v13}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_174

    aget-object v2, v5, v2

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 254
    :cond_174
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_135

    .line 258
    :cond_178
    const/4 v2, 0x3

    if-lt v11, v2, :cond_1b0

    invoke-static {v10}, Lfr/testudo/spacecorsair/mod/ModV35;->huntLeft(Ljava/lang/String;)J

    move-result-wide v2

    const-wide/16 v12, 0x0

    cmp-long v2, v2, v12

    if-nez v2, :cond_1b0

    .line 259
    const/4 v2, 0x0

    :goto_186
    array-length v3, v5

    if-ge v2, v3, :cond_1b0

    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModFaction;->hunt(I)Z

    move-result v3

    if-eqz v3, :cond_1ad

    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModFaction;->key(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1ad

    aget-object v3, v5, v2

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1ad

    aget-object v3, v5, v2

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModV35;->huntNote()V

    :cond_1ad
    add-int/lit8 v2, v2, 0x1

    goto :goto_186

    .line 261
    :cond_1b0
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
    :try_end_1d5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_1d5} :catch_c3

    goto/16 :goto_35
.end method

.method private static declared-synchronized all()[Lfr/testudo/spacecorsair/business/mission/Mission;
    .registers 14

    .prologue
    const/4 v0, 0x0

    .line 194
    const-class v11, Lfr/testudo/spacecorsair/mod/ModFaction;

    monitor-enter v11

    :try_start_4
    sget-object v1, Lfr/testudo/spacecorsair/mod/ModFaction;->missions:[Lfr/testudo/spacecorsair/business/mission/Mission;

    if-nez v1, :cond_c9

    .line 195
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModFaction;->count()I

    move-result v1

    new-array v12, v1, [Lfr/testudo/spacecorsair/business/mission/Mission;

    move v10, v0

    .line 196
    :goto_f
    array-length v0, v12

    if-ge v10, v0, :cond_c7

    .line 197
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 198
    const/16 v0, 0x10

    invoke-static {v10, v0}, Lfr/testudo/spacecorsair/mod/ModFaction;->str(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I
    :try_end_20
    .catchall {:try_start_4 .. :try_end_20} :catchall_cd

    move-result v0

    if-lez v0, :cond_34

    .line 200
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

    .line 206
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

    .line 207
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

    .line 208
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

    .line 209
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

    .line 210
    aput-object v0, v12, v10

    .line 196
    add-int/lit8 v0, v10, 0x1

    move v10, v0

    goto/16 :goto_f

    .line 207
    :cond_b1
    invoke-static {v10}, Lfr/testudo/spacecorsair/mod/ModFaction;->minLevel(I)I

    move-result v8

    mul-int/lit16 v8, v8, 0x384

    goto :goto_57

    .line 208
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

    .line 209
    :cond_c5
    const/4 v1, 0x0

    goto :goto_a8

    .line 212
    :cond_c7
    sput-object v12, Lfr/testudo/spacecorsair/mod/ModFaction;->missions:[Lfr/testudo/spacecorsair/business/mission/Mission;

    .line 214
    :cond_c9
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModFaction;->missions:[Lfr/testudo/spacecorsair/business/mission/Mission;
    :try_end_cb
    .catchall {:try_start_34 .. :try_end_cb} :catchall_cd

    monitor-exit v11

    return-object v0

    .line 194
    :catchall_cd
    move-exception v0

    monitor-exit v11

    throw v0

    .line 201
    :catch_d0
    move-exception v0

    goto/16 :goto_34
.end method

.method static amends(I)Z
    .registers 3

    .prologue
    .line 145
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
    .line 653
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v0

    const-wide v2, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v0, v2

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    mul-double/2addr v0, v2

    .line 654
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v2

    double-to-float v2, v2

    sub-float v3, p2, p1

    mul-float/2addr v2, v3

    add-float/2addr v2, p1

    .line 655
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
    .line 89
    const-class v6, Lfr/testudo/spacecorsair/mod/ModFaction;

    monitor-enter v6

    :try_start_3
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModFaction;->rows:[[Ljava/lang/Object;

    if-nez v0, :cond_21d

    .line 90
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModFactionData;->MISSIONS:[[Ljava/lang/Object;

    sget-object v1, Lfr/testudo/spacecorsair/mod/ModV35;->FINALE:[[Ljava/lang/Object;

    sget-object v7, Lfr/testudo/spacecorsair/mod/ModRepData;->CONTRACTS:[[Ljava/lang/Object;

    .line 91
    array-length v2, v0

    array-length v3, v1

    add-int/2addr v2, v3

    new-array v8, v2, [[Ljava/lang/Object;

    .line 92
    const/4 v2, 0x0

    const/4 v3, 0x0

    array-length v4, v0

    invoke-static {v0, v2, v8, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 93
    const/4 v2, 0x0

    array-length v0, v0

    array-length v3, v1

    invoke-static {v1, v2, v8, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 94
    sget-object v9, Lfr/testudo/spacecorsair/mod/ModRepData;->KEYS:[Ljava/lang/String;

    .line 95
    array-length v0, v8

    array-length v1, v7

    add-int/2addr v0, v1

    array-length v1, v9

    add-int/2addr v0, v1

    new-array v10, v0, [[Ljava/lang/Object;

    .line 96
    const/4 v0, 0x0

    const/4 v1, 0x0

    array-length v2, v8

    invoke-static {v8, v0, v10, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 97
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModRepData;->KEYS:[Ljava/lang/String;

    array-length v0, v0

    new-array v11, v0, [I

    .line 98
    const/4 v0, 0x0

    move v5, v0

    :goto_34
    array-length v0, v7

    if-ge v5, v0, :cond_166

    .line 99
    aget-object v12, v7, v5

    .line 100
    const/4 v0, 0x0

    aget-object v0, v12, v0

    check-cast v0, Ljava/lang/String;

    const/4 v1, 0x2

    aget-object v1, v12, v1

    check-cast v1, Ljava/lang/String;

    .line 101
    const/4 v2, 0x5

    aget-object v2, v12, v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v13

    .line 102
    const-string v2, "KILL_ENEMY_TYPE"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10d

    const/4 v2, 0x5

    move v4, v2

    .line 103
    :goto_56
    if-eqz v13, :cond_136

    const v2, 0x9c40

    move v3, v2

    .line 104
    :goto_5c
    sget-object v2, Lfr/testudo/spacecorsair/mod/ModCapitals;->FACTIONS:[Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModFaction;->faction(Ljava/lang/String;)I

    move-result v14

    aget-object v2, v2, v14

    iget-object v2, v2, Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;->hq:Lfr/testudo/spacecorsair/game/levels/LevelId;

    invoke-virtual {v2}, Lfr/testudo/spacecorsair/game/levels/LevelId;->name()Ljava/lang/String;

    move-result-object v2

    .line 106
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

    .line 107
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

    .line 98
    add-int/lit8 v0, v5, 0x1

    move v5, v0

    goto/16 :goto_34

    .line 102
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

    .line 103
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

    .line 106
    :cond_162
    const-string v2, ""

    goto/16 :goto_ad

    .line 109
    :cond_166
    const/4 v0, 0x0

    :goto_167
    array-length v1, v9

    if-ge v0, v1, :cond_21b

    .line 111
    aget-object v1, v9, v0

    sget-object v2, Lfr/testudo/spacecorsair/mod/ModCapitals;->FACTIONS:[Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;

    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModFaction;->faction(Ljava/lang/String;)I

    move-result v3

    aget-object v2, v2, v3

    iget-object v2, v2, Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;->hq:Lfr/testudo/spacecorsair/game/levels/LevelId;

    invoke-virtual {v2}, Lfr/testudo/spacecorsair/game/levels/LevelId;->name()Ljava/lang/String;

    move-result-object v2

    .line 112
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

    .line 114
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

    .line 115
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

    .line 109
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_167

    .line 117
    :cond_21b
    sput-object v10, Lfr/testudo/spacecorsair/mod/ModFaction;->rows:[[Ljava/lang/Object;

    .line 119
    :cond_21d
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModFaction;->rows:[[Ljava/lang/Object;
    :try_end_21f
    .catchall {:try_start_3 .. :try_end_21f} :catchall_221

    monitor-exit v6

    return-object v0

    .line 89
    :catchall_221
    move-exception v0

    monitor-exit v6

    throw v0
.end method

.method public static byId(Ljava/lang/String;)Lfr/testudo/spacecorsair/business/mission/Mission;
    .registers 7

    .prologue
    const/4 v1, 0x0

    .line 270
    if-eqz p0, :cond_b

    const-string v0, "FACTION_"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_d

    :cond_b
    move-object v0, v1

    .line 276
    :cond_c
    :goto_c
    return-object v0

    .line 272
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

    .line 273
    :catch_24
    move-exception v0

    :cond_25
    move-object v0, v1

    .line 276
    goto :goto_c
.end method

.method private civil(Lfr/testudo/spacecorsair/engine/Vector2;Z)Lfr/testudo/spacecorsair/business/world/civil/CivilShip;
    .registers 5

    .prologue
    .line 659
    const/4 v0, 0x1

    iget v1, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->idx:I

    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModFaction;->minLevel(I)I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 660
    if-eqz p2, :cond_17

    invoke-static {v0}, Lfr/testudo/spacecorsair/business/world/civil/CivilFactory;->newTrasnporteur(I)Lfr/testudo/spacecorsair/business/world/civil/TransportCivilShip;

    move-result-object v0

    .line 661
    :goto_13
    if-nez v0, :cond_1c

    const/4 v0, 0x0

    .line 665
    :goto_16
    return-object v0

    .line 660
    :cond_17
    invoke-static {v0, v0}, Lfr/testudo/spacecorsair/business/world/civil/CivilFactory;->newRandomCivil(II)Lfr/testudo/spacecorsair/business/world/civil/CivilShip;

    move-result-object v0

    goto :goto_13

    .line 662
    :cond_1c
    iget-object v1, v0, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v1, p1}, Lfr/testudo/spacecorsair/engine/Vector2;->setSameAs(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 663
    sget-object v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v1, v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v1, v1, Lfr/testudo/spacecorsair/game/Game;->currentLevel:Lfr/testudo/spacecorsair/game/levels/Level;

    iget-object v1, v1, Lfr/testudo/spacecorsair/game/levels/Level;->toAdd:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 664
    iget-object v1, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->civs:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_16
.end method

.method private cleanup()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 869
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

    .line 870
    if-eqz v0, :cond_8

    iget-boolean v2, v0, Lfr/testudo/spacecorsair/business/Element;->removed:Z

    if-nez v2, :cond_8

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/business/Element;->remove()V

    goto :goto_8

    .line 872
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

    .line 873
    if-eqz v0, :cond_24

    iget-boolean v2, v0, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->removed:Z

    if-nez v2, :cond_24

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->remove()V

    goto :goto_24

    .line 875
    :cond_3a
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->target:Lfr/testudo/spacecorsair/business/Element;

    if-eqz v0, :cond_48

    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->target:Lfr/testudo/spacecorsair/business/Element;

    instance-of v0, v0, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;

    if-eqz v0, :cond_48

    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->target:Lfr/testudo/spacecorsair/business/Element;

    iput-boolean v3, v0, Lfr/testudo/spacecorsair/business/Element;->isMissionObjective:Z

    .line 876
    :cond_48
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->spawned:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 877
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->civs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 878
    iput-object v4, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->target:Lfr/testudo/spacecorsair/business/Element;

    .line 879
    iput-object v4, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->outpost:Lfr/testudo/spacecorsair/business/world/civil/CivilShip;

    .line 880
    iput-boolean v3, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->setupDone:Z

    .line 881
    iput v3, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->zoneMs:I

    .line 882
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModPlace;->clearBoost()V

    .line 883
    return-void
.end method

.method static commander(Ljava/lang/String;)I
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 158
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

    .line 159
    :goto_11
    return v0

    .line 158
    :cond_12
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_15
    move v0, v1

    .line 159
    goto :goto_11
.end method

.method private complete()V
    .registers 7

    .prologue
    const/16 v3, 0x8

    const/4 v5, 0x1

    .line 380
    iget-boolean v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->completed:Z

    if-eqz v0, :cond_8

    .line 400
    :goto_7
    return-void

    .line 381
    :cond_8
    iput-boolean v5, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->completed:Z

    .line 382
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

    .line 383
    invoke-static {v5}, Lfr/testudo/spacecorsair/mod/ModAlerts;->missionResult(Z)V

    .line 385
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

    .line 386
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

    .line 387
    :cond_5e
    iget v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->idx:I

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModFaction;->hunt(I)Z

    move-result v0

    if-eqz v0, :cond_6f

    iget v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->idx:I

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModFaction;->key(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModV35;->huntDone(Ljava/lang/String;)V

    .line 388
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

    .line 389
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

    .line 390
    if-lez v0, :cond_e6

    .line 391
    sget-object v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v1, v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v1, v1, Lfr/testudo/spacecorsair/game/Game;->playerCurrentShipInventory:Lfr/testudo/spacecorsair/business/player/Inventory;

    invoke-virtual {v1, v0}, Lfr/testudo/spacecorsair/business/player/Inventory;->addCredit(I)V

    .line 392
    sget-object v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v1, v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->playerShip:Lfr/testudo/spacecorsair/business/player/PlayerShip;

    .line 393
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

    .line 395
    :cond_e6
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModFaction;->prefs()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 396
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

    .line 397
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

    .line 398
    iget v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->idx:I

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModFaction;->key(I)Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->idx:I

    const/16 v2, 0xd

    invoke-static {v1, v2}, Lfr/testudo/spacecorsair/mod/ModFaction;->str(II)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x2328

    invoke-static {v0, v1, v2}, Lfr/testudo/spacecorsair/mod/ModComms;->show(Ljava/lang/String;Ljava/lang/String;I)V

    .line 399
    invoke-direct {p0, v5}, Lfr/testudo/spacecorsair/mod/ModFaction;->markGates(Z)V

    goto/16 :goto_7
.end method

.method static contract(I)Z
    .registers 2

    .prologue
    .line 143
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
    .line 123
    const-string v0, "FIND_OBJECT"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    const-string v0, "Follow the signal and recover the marked object."

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 133
    :goto_e
    return-object v0

    .line 124
    :cond_f
    const-string v0, "GATHER_AND_SELL"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    const-string v0, "Collect the 6 marked cargo pods and dock at headquarters to sell them."

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_e

    .line 125
    :cond_1e
    const-string v0, "DEFEND_CIVILIANS"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2d

    const-string v0, "Protect the transports through 4 raider waves."

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_e

    .line 126
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

    .line 127
    :cond_59
    const-string v0, "BOUNTY"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_68

    const-string v0, "Hunt down the marked target."

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_e

    .line 128
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

    .line 129
    :cond_93
    const-string v0, "DESTROY_STATION"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a3

    const-string v0, "Destroy the marked station and its guards."

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_e

    .line 130
    :cond_a3
    const-string v0, "ESCORT"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b3

    const-string v0, "Escort the ship to its jump point."

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_e

    .line 131
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

    .line 132
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

    .line 133
    :cond_109
    const-string v0, ""

    goto/16 :goto_e
.end method

.method static count()I
    .registers 1

    .prologue
    .line 136
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModFaction;->rows()[[Ljava/lang/Object;

    move-result-object v0

    array-length v0, v0

    return v0
.end method

.method static credits(I)Ljava/lang/String;
    .registers 6

    .prologue
    .line 190
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
    .line 1104
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModFaction;->active()Lfr/testudo/spacecorsair/mod/ModFaction;

    move-result-object v18

    .line 1105
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

    .line 1188
    :cond_20
    :goto_20
    return-void

    .line 1106
    :cond_21
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v20

    .line 1107
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

    .line 1108
    sget-object v2, Lfr/testudo/spacecorsair/mod/ModCapitals;->FACTIONS:[Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;

    move-object/from16 v0, v18

    iget v3, v0, Lfr/testudo/spacecorsair/mod/ModFaction;->fi:I

    aget-object v22, v2, v3

    .line 1109
    const v5, 0x7f7fffff    # Float.MAX_VALUE

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 1110
    const/4 v2, 0x0

    .line 1111
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

    .line 1112
    :cond_69
    move-object/from16 v0, p0

    iget-object v6, v0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-static {v6}, Lfr/testudo/spacecorsair/mod/ModPlace;->nearestStation(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/business/world/station/Station;

    move-result-object v6

    .line 1113
    if-eqz v6, :cond_97

    .line 1114
    iget-object v2, v6, Lfr/testudo/spacecorsair/business/world/station/Station;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    move-object/from16 v0, p0

    iget-object v3, v0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v2, v3}, Lfr/testudo/spacecorsair/engine/Vector2;->distance(Lfr/testudo/spacecorsair/engine/Vector2;)F

    move-result v5

    .line 1115
    iget-object v2, v6, Lfr/testudo/spacecorsair/business/world/station/Station;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v4, v2, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    iget-object v2, v6, Lfr/testudo/spacecorsair/business/world/station/Station;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v3, v2, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    .line 1116
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

    .line 1169
    :goto_9a
    if-eqz v11, :cond_20

    const v2, 0x7f7fffff    # Float.MAX_VALUE

    cmpl-float v2, v17, v2

    if-eqz v2, :cond_20

    const v2, 0x44898000    # 1100.0f

    cmpg-float v2, v17, v2

    if-ltz v2, :cond_20

    .line 1170
    sget-object v2, Lfr/testudo/spacecorsair/display/Fleche;->MAIN_TEXTURE:Lfr/testudo/spacecorsair/display/Texture;

    .line 1171
    if-eqz v2, :cond_20

    .line 1172
    sget-object v5, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v5, v5, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->camera:Lfr/testudo/spacecorsair/engine/Camera;

    iget v7, v5, Lfr/testudo/spacecorsair/engine/Camera;->curZDecal:F

    .line 1173
    const/high16 v5, 0x42dc0000    # 110.0f

    const v6, 0x3da3d70a    # 0.08f

    mul-float/2addr v6, v7

    add-float v12, v5, v6

    .line 1174
    invoke-static {v2, v12}, Lfr/testudo/spacecorsair/mod/ModFx;->arrow(Lfr/testudo/spacecorsair/display/Texture;F)Lfr/testudo/spacecorsair/display/Drawable;

    move-result-object v5

    .line 1175
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

    .line 1176
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

    .line 1177
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

    .line 1178
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

    .line 1179
    move/from16 v0, v17

    float-to-int v2, v0

    .line 1180
    sget-object v3, Lfr/testudo/spacecorsair/mod/ModFaction;->arrowText:Ljava/lang/String;

    if-eqz v3, :cond_13c

    sget-object v3, Lfr/testudo/spacecorsair/mod/ModFaction;->arrowLabel:Ljava/lang/String;

    if-ne v11, v3, :cond_13c

    sget v3, Lfr/testudo/spacecorsair/mod/ModFaction;->arrowM:I

    if-eq v2, v3, :cond_15f

    .line 1181
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

    .line 1182
    sput-object v11, Lfr/testudo/spacecorsair/mod/ModFaction;->arrowLabel:Ljava/lang/String;

    .line 1183
    sput v2, Lfr/testudo/spacecorsair/mod/ModFaction;->arrowM:I

    .line 1185
    :cond_15f
    sget-object v5, Lfr/testudo/spacecorsair/mod/ModFaction;->arrowText:Ljava/lang/String;

    .line 1186
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

    .line 1187
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

    .line 1116
    :cond_1a8
    const-string v2, "SELL"

    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_97

    .line 1118
    :cond_1b0
    move-object/from16 v0, v18

    iget-object v6, v0, Lfr/testudo/spacecorsair/mod/ModFaction;->markers:[F

    if-eqz v6, :cond_2b7

    move-object/from16 v0, v18

    iget-object v6, v0, Lfr/testudo/spacecorsair/mod/ModFaction;->taken:[Z

    if-eqz v6, :cond_2b7

    .line 1120
    move-object/from16 v0, v18

    iget-object v0, v0, Lfr/testudo/spacecorsair/mod/ModFaction;->markers:[F

    move-object/from16 v20, v0

    .line 1121
    move-object/from16 v0, v18

    iget-object v0, v0, Lfr/testudo/spacecorsair/mod/ModFaction;->taken:[Z

    move-object/from16 v21, v0

    .line 1122
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

    .line 1123
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

    .line 1124
    aget-boolean v2, v21, v17

    if-eqz v2, :cond_211

    move v4, v14

    move v3, v15

    move/from16 v2, v16

    .line 1123
    :cond_205
    :goto_205
    add-int/lit8 v5, v17, 0x1

    move/from16 v17, v5

    move v14, v4

    move v15, v3

    move/from16 v16, v2

    goto :goto_1e9

    .line 1122
    :cond_20e
    const/4 v2, 0x0

    move v13, v2

    goto :goto_1e2

    .line 1125
    :cond_211
    mul-int/lit8 v2, v17, 0x2

    aget v3, v20, v2

    mul-int/lit8 v2, v17, 0x2

    add-int/lit8 v2, v2, 0x1

    aget v4, v20, v2

    .line 1126
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

    .line 1127
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

    .line 1128
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

    .line 1129
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

    .line 1130
    cmpg-float v5, v2, v16

    if-ltz v5, :cond_205

    move v4, v14

    move v3, v15

    move/from16 v2, v16

    goto/16 :goto_205

    .line 1132
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

    .line 1133
    goto/16 :goto_9a

    .line 1132
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

    .line 1133
    :cond_2b7
    const-string v6, "DEFEND_ZONE"

    move-object/from16 v0, v18

    iget-object v7, v0, Lfr/testudo/spacecorsair/mod/ModFaction;->obj:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_345

    .line 1134
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

    .line 1135
    move-object/from16 v0, v18

    iget-object v2, v0, Lfr/testudo/spacecorsair/mod/ModFaction;->center:Lfr/testudo/spacecorsair/engine/Vector2;

    move-object/from16 v0, p0

    iget-object v3, v0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v2, v3}, Lfr/testudo/spacecorsair/engine/Vector2;->distance(Lfr/testudo/spacecorsair/engine/Vector2;)F

    move-result v5

    .line 1136
    move-object/from16 v0, v18

    iget-object v2, v0, Lfr/testudo/spacecorsair/mod/ModFaction;->center:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v4, v2, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    move-object/from16 v0, v18

    iget-object v2, v0, Lfr/testudo/spacecorsair/mod/ModFaction;->center:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v3, v2, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    .line 1137
    const/4 v2, 0x0

    move-object/from16 v0, v18

    iget v6, v0, Lfr/testudo/spacecorsair/mod/ModFaction;->goal:I

    move-object/from16 v0, v18

    iget v7, v0, Lfr/testudo/spacecorsair/mod/ModFaction;->holdMs:I

    sub-int/2addr v6, v7

    div-int/lit16 v6, v6, 0x3e8

    invoke-static {v2, v6}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 1138
    sget-object v6, Lfr/testudo/spacecorsair/mod/ModFaction;->holdLabel:Ljava/lang/String;

    if-eqz v6, :cond_321

    sget v6, Lfr/testudo/spacecorsair/mod/ModFaction;->holdSec:I

    if-eq v2, v6, :cond_33e

    .line 1139
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

    .line 1140
    sput v2, Lfr/testudo/spacecorsair/mod/ModFaction;->holdSec:I

    .line 1142
    :cond_33e
    sget-object v2, Lfr/testudo/spacecorsair/mod/ModFaction;->holdLabel:Ljava/lang/String;

    move-object v11, v2

    move/from16 v17, v5

    .line 1143
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

    .line 1144
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

    .line 1145
    if-eqz v2, :cond_35f

    iget-boolean v6, v2, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->removed:Z

    if-nez v6, :cond_35f

    .line 1146
    iget-object v6, v2, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    move-object/from16 v0, p0

    iget-object v8, v0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v6, v8}, Lfr/testudo/spacecorsair/engine/Vector2;->distance(Lfr/testudo/spacecorsair/engine/Vector2;)F

    move-result v6

    .line 1147
    cmpg-float v8, v6, v5

    if-gez v8, :cond_35f

    iget-object v3, v2, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v4, v3, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    iget-object v2, v2, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v3, v2, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    move v5, v6

    goto :goto_35f

    .line 1149
    :cond_389
    const-string v2, "CONVOY"

    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object v11, v2

    move/from16 v17, v5

    goto/16 :goto_9a

    .line 1150
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

    .line 1151
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

    .line 1152
    move-object/from16 v0, v18

    iget-object v2, v0, Lfr/testudo/spacecorsair/mod/ModFaction;->target:Lfr/testudo/spacecorsair/business/Element;

    iget-object v2, v2, Lfr/testudo/spacecorsair/business/Element;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    move-object/from16 v0, p0

    iget-object v3, v0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v2, v3}, Lfr/testudo/spacecorsair/engine/Vector2;->distance(Lfr/testudo/spacecorsair/engine/Vector2;)F

    move-result v5

    .line 1153
    move-object/from16 v0, v18

    iget-object v2, v0, Lfr/testudo/spacecorsair/mod/ModFaction;->target:Lfr/testudo/spacecorsair/business/Element;

    iget-object v2, v2, Lfr/testudo/spacecorsair/business/Element;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v4, v2, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    move-object/from16 v0, v18

    iget-object v2, v0, Lfr/testudo/spacecorsair/mod/ModFaction;->target:Lfr/testudo/spacecorsair/business/Element;

    iget-object v2, v2, Lfr/testudo/spacecorsair/business/Element;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v3, v2, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    .line 1154
    move-object/from16 v0, v18

    iget-object v2, v0, Lfr/testudo/spacecorsair/mod/ModFaction;->target:Lfr/testudo/spacecorsair/business/Element;

    iget-object v2, v2, Lfr/testudo/spacecorsair/business/Element;->specificName:Ljava/lang/String;

    move-object v11, v2

    move/from16 v17, v5

    goto/16 :goto_9a

    .line 1155
    :cond_3fc
    move-object/from16 v0, v18

    iget-object v6, v0, Lfr/testudo/spacecorsair/mod/ModFaction;->target:Lfr/testudo/spacecorsair/business/Element;

    if-eqz v6, :cond_433

    move-object/from16 v0, v18

    iget-object v6, v0, Lfr/testudo/spacecorsair/mod/ModFaction;->target:Lfr/testudo/spacecorsair/business/Element;

    iget-boolean v6, v6, Lfr/testudo/spacecorsair/business/Element;->removed:Z

    if-nez v6, :cond_433

    .line 1156
    move-object/from16 v0, v18

    iget-object v2, v0, Lfr/testudo/spacecorsair/mod/ModFaction;->target:Lfr/testudo/spacecorsair/business/Element;

    iget-object v2, v2, Lfr/testudo/spacecorsair/business/Element;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    move-object/from16 v0, p0

    iget-object v3, v0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v2, v3}, Lfr/testudo/spacecorsair/engine/Vector2;->distance(Lfr/testudo/spacecorsair/engine/Vector2;)F

    move-result v5

    .line 1157
    move-object/from16 v0, v18

    iget-object v2, v0, Lfr/testudo/spacecorsair/mod/ModFaction;->target:Lfr/testudo/spacecorsair/business/Element;

    iget-object v2, v2, Lfr/testudo/spacecorsair/business/Element;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v4, v2, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    move-object/from16 v0, v18

    iget-object v2, v0, Lfr/testudo/spacecorsair/mod/ModFaction;->target:Lfr/testudo/spacecorsair/business/Element;

    iget-object v2, v2, Lfr/testudo/spacecorsair/business/Element;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v3, v2, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    .line 1158
    move-object/from16 v0, v18

    iget-object v2, v0, Lfr/testudo/spacecorsair/mod/ModFaction;->target:Lfr/testudo/spacecorsair/business/Element;

    iget-object v2, v2, Lfr/testudo/spacecorsair/business/Element;->specificName:Ljava/lang/String;

    move-object v11, v2

    move/from16 v17, v5

    goto/16 :goto_9a

    .line 1159
    :cond_433
    const-string v6, "SCAN_CIVIL"

    move-object/from16 v0, v18

    iget-object v7, v0, Lfr/testudo/spacecorsair/mod/ModFaction;->obj:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4d6

    .line 1160
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

    .line 1161
    move-object/from16 v0, v18

    iget-object v2, v0, Lfr/testudo/spacecorsair/mod/ModFaction;->civs:Ljava/util/ArrayList;

    invoke-virtual {v2, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v13, v2

    check-cast v13, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;

    .line 1162
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

    .line 1160
    :goto_475
    add-int/lit8 v2, v14, 0x1

    move v14, v2

    move v15, v3

    move/from16 v16, v4

    move/from16 v17, v5

    goto :goto_446

    .line 1163
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

    .line 1164
    iget-object v2, v13, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    move-object/from16 v0, p0

    iget-object v3, v0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v2, v3}, Lfr/testudo/spacecorsair/engine/Vector2;->distance(Lfr/testudo/spacecorsair/engine/Vector2;)F

    move-result v5

    .line 1165
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

    .line 1167
    :cond_4c4
    const-string v2, "SCAN"

    move-object v11, v2

    move v3, v15

    move/from16 v4, v16

    goto/16 :goto_9a

    .line 1176
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

    .line 1067
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

    .line 1068
    iget v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->phase:I

    if-nez v0, :cond_64

    invoke-direct {p0}, Lfr/testudo/spacecorsair/mod/ModFaction;->secondSector()Lfr/testudo/spacecorsair/game/levels/LevelId;

    move-result-object v0

    if-eqz v0, :cond_64

    .line 1069
    iput v5, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->phase:I

    .line 1070
    iput-boolean v3, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->courierMoving:Z

    .line 1071
    iput-boolean v3, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->secondLegPlaced:Z

    .line 1072
    const/4 v0, 0x0

    iput-object v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->target:Lfr/testudo/spacecorsair/business/Element;

    .line 1073
    invoke-direct {p0}, Lfr/testudo/spacecorsair/mod/ModFaction;->save()V

    .line 1074
    invoke-direct {p0}, Lfr/testudo/spacecorsair/mod/ModFaction;->activeSector()Lfr/testudo/spacecorsair/game/levels/LevelId;

    move-result-object v0

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModFaction;->sectorIs(Lfr/testudo/spacecorsair/game/levels/LevelId;)Z

    move-result v0

    iput-boolean v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->inZone:Z

    .line 1075
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->playerShip:Lfr/testudo/spacecorsair/business/player/PlayerShip;

    const-string v1, "FOLLOW THE COURIER THROUGH THE GATE"

    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/high16 v2, 0x3f000000    # 0.5f

    const/high16 v3, 0x3f800000    # 1.0f

    const v4, 0x3f19999a    # 0.6f

    invoke-static {v0, v1, v2, v3, v4}, Lfr/testudo/spacecorsair/mod/Mod;->floatText(Lfr/testudo/spacecorsair/business/Element;Ljava/lang/String;FFF)V

    .line 1076
    invoke-direct {p0, v5}, Lfr/testudo/spacecorsair/mod/ModFaction;->markGates(Z)V

    .line 1080
    :goto_63
    return-void

    .line 1079
    :cond_64
    invoke-direct {p0}, Lfr/testudo/spacecorsair/mod/ModFaction;->complete()V

    goto :goto_63
.end method

.method static faction(Ljava/lang/String;)I
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 153
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

    .line 154
    :goto_13
    return v0

    .line 153
    :cond_14
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_17
    move v0, v1

    .line 154
    goto :goto_13
.end method

.method private fail()V
    .registers 6

    .prologue
    const/16 v4, 0xe

    const/4 v3, 0x0

    .line 403
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

    .line 404
    invoke-direct {p0}, Lfr/testudo/spacecorsair/mod/ModFaction;->cleanup()V

    .line 405
    iput-boolean v3, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->planned:Z

    .line 406
    invoke-direct {p0}, Lfr/testudo/spacecorsair/mod/ModFaction;->save()V

    .line 407
    invoke-static {v3}, Lfr/testudo/spacecorsair/mod/ModAlerts;->missionResult(Z)V

    .line 408
    iget v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->idx:I

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModFaction;->key(I)Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->idx:I

    invoke-static {v1, v4}, Lfr/testudo/spacecorsair/mod/ModFaction;->str(II)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x2328

    invoke-static {v0, v1, v2}, Lfr/testudo/spacecorsair/mod/ModComms;->show(Ljava/lang/String;Ljava/lang/String;I)V

    .line 409
    iget v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->idx:I

    invoke-static {v0, v4}, Lfr/testudo/spacecorsair/mod/ModFaction;->str(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lfr/testudo/spacecorsair/business/mission/Mission;->setMissionFailure(Ljava/lang/String;)V

    .line 410
    return-void
.end method

.method private static farFrom(Lfr/testudo/spacecorsair/engine/Vector2;FF)Lfr/testudo/spacecorsair/engine/Vector2;
    .registers 4

    .prologue
    .line 865
    invoke-static {p0, p1, p2}, Lfr/testudo/spacecorsair/mod/ModPlace;->farPoint(Lfr/testudo/spacecorsair/engine/Vector2;FF)Lfr/testudo/spacecorsair/engine/Vector2;

    move-result-object v0

    return-object v0
.end method

.method private static farGate(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;
    .registers 9

    .prologue
    const/4 v4, 0x0

    .line 689
    .line 690
    const/high16 v1, -0x40800000    # -1.0f

    .line 692
    :try_start_3
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/Game;->currentLevel:Lfr/testudo/spacecorsair/game/levels/Level;

    iget-object v6, v0, Lfr/testudo/spacecorsair/game/levels/Level;->elements:Ljava/util/List;

    .line 693
    const/4 v0, 0x0

    move v5, v0

    move-object v3, v4

    :goto_e
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v0

    if-ge v5, v0, :cond_39

    .line 694
    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfr/testudo/spacecorsair/business/Element;

    .line 695
    instance-of v2, v0, Lfr/testudo/spacecorsair/business/world/Portal;

    if-eqz v2, :cond_4b

    iget-boolean v2, v0, Lfr/testudo/spacecorsair/business/Element;->removed:Z

    if-eqz v2, :cond_28

    move v0, v1

    .line 693
    :goto_23
    add-int/lit8 v2, v5, 0x1

    move v5, v2

    move v1, v0

    goto :goto_e

    .line 696
    :cond_28
    iget-object v2, v0, Lfr/testudo/spacecorsair/business/Element;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v2, p0}, Lfr/testudo/spacecorsair/engine/Vector2;->distance(Lfr/testudo/spacecorsair/engine/Vector2;)F

    move-result v2

    .line 697
    cmpl-float v7, v2, v1

    if-lez v7, :cond_4b

    iget-object v1, v0, Lfr/testudo/spacecorsair/business/Element;->position:Lfr/testudo/spacecorsair/engine/Vector2;
    :try_end_34
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_34} :catch_37

    move v0, v2

    move-object v3, v1

    goto :goto_23

    .line 699
    :catch_37
    move-exception v0

    move-object v3, v4

    .line 702
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
    .line 561
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

    .line 565
    const/4 v0, 0x0

    .line 566
    if-nez p1, :cond_5b

    .line 567
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 568
    sget-object v4, Lfr/testudo/spacecorsair/mod/ModFleet;->TYPES:[Lfr/testudo/spacecorsair/mod/ModFleet$Type;

    array-length v5, v4

    move v1, v2

    :goto_f
    if-ge v1, v5, :cond_2d

    aget-object v6, v4, v1

    .line 569
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

    .line 568
    :cond_2a
    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    .line 571
    :cond_2d
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_54

    .line 572
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x4

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 573
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

    .line 575
    :cond_54
    if-nez v0, :cond_5a

    invoke-static {p3}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisFactory;->newBasicEnnemisShip(I)Lfr/testudo/spacecorsair/business/ennemis/BasicEnnemyShip;

    move-result-object v0

    .line 583
    :cond_5a
    :goto_5a
    return-object v0

    .line 576
    :cond_5b
    const/4 v0, 0x1

    if-ne p1, v0, :cond_80

    .line 577
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v0

    cmpg-double v0, v0, v4

    if-gez v0, :cond_78

    invoke-static {p3}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisFactory;->newFrelon(I)Lfr/testudo/spacecorsair/business/ennemis/FrelonShip;

    move-result-object v0

    .line 578
    :goto_6a
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v2

    cmpg-double v1, v2, v4

    if-gez v1, :cond_7d

    const-string v1, "Syndicate Harvester"

    :goto_74
    invoke-static {v0, v1}, Lfr/testudo/spacecorsair/mod/ModFaction;->name(Lfr/testudo/spacecorsair/business/Element;Ljava/lang/String;)V

    goto :goto_5a

    .line 577
    :cond_78
    invoke-static {p3}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisFactory;->newDefensor(I)Lfr/testudo/spacecorsair/business/ennemis/DefensorShip;

    move-result-object v0

    goto :goto_6a

    .line 578
    :cond_7d
    const-string v1, "Syndicate Enforcer"

    goto :goto_74

    .line 580
    :cond_80
    invoke-static {p3}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisFactory;->newDefensor(I)Lfr/testudo/spacecorsair/business/ennemis/DefensorShip;

    move-result-object v0

    .line 581
    const-string v1, "Authority Picket"

    invoke-static {v0, v1}, Lfr/testudo/spacecorsair/mod/ModFaction;->name(Lfr/testudo/spacecorsair/business/Element;Ljava/lang/String;)V

    goto :goto_5a
.end method

.method private foeLevel()I
    .registers 7

    .prologue
    .line 536
    iget v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->idx:I

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModFaction;->minLevel(I)I

    move-result v0

    .line 537
    iget v1, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->idx:I

    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModFaction;->contract(I)Z

    move-result v1

    if-eqz v1, :cond_21

    .line 539
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

    .line 541
    :cond_21
    :goto_21
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v2

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    mul-double/2addr v2, v4

    double-to-int v1, v2

    add-int/2addr v0, v1

    return v0

    .line 539
    :catch_2b
    move-exception v0

    const/4 v0, 0x5

    goto :goto_21
.end method

.method private static gateTo(Lfr/testudo/spacecorsair/game/levels/LevelId;)Lfr/testudo/spacecorsair/business/world/Portal;
    .registers 3

    .prologue
    .line 680
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

    .line 684
    :goto_10
    return-object v0

    .line 681
    :catch_11
    move-exception v0

    .line 684
    :cond_12
    const/4 v0, 0x0

    goto :goto_10
.end method

.method private holdLevel()I
    .registers 4

    .prologue
    const/4 v1, 0x1

    .line 546
    .line 547
    :try_start_1
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/Game;->playerInfo:Lfr/testudo/spacecorsair/business/player/PlayerInfo;

    iget v0, v0, Lfr/testudo/spacecorsair/business/player/PlayerInfo;->level:I
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_9} :catch_1e

    .line 548
    :goto_9
    iget-object v2, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->zone:Lfr/testudo/spacecorsair/game/levels/LevelId;

    .line 549
    if-eqz v2, :cond_13

    iget v2, v2, Lfr/testudo/spacecorsair/game/levels/LevelId;->levelMax:I

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 550
    :cond_13
    const/16 v2, 0x28

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0

    .line 547
    :catch_1e
    move-exception v0

    move v0, v1

    goto :goto_9
.end method

.method static hunt(I)Z
    .registers 4

    .prologue
    const/16 v2, 0x13

    .line 144
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
    .line 150
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

    .line 1287
    sget-object v1, Lfr/testudo/spacecorsair/mod/ModCapitals;->FACTIONS:[Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;

    iget v2, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->fi:I

    aget-object v5, v1, v2

    .line 1288
    iget-object v6, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->target:Lfr/testudo/spacecorsair/business/Element;

    .line 1289
    invoke-direct {p0}, Lfr/testudo/spacecorsair/mod/ModFaction;->activeSector()Lfr/testudo/spacecorsair/game/levels/LevelId;

    move-result-object v7

    .line 1291
    iget-boolean v1, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->completed:Z

    if-eqz v1, :cond_32

    move v1, v0

    move v2, v0

    .line 1303
    :goto_17
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->instrText:Ljava/lang/String;

    .line 1304
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

    .line 1325
    :goto_31
    return-object v0

    .line 1292
    :cond_32
    if-nez v7, :cond_3b

    iget v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->idx:I

    invoke-static {v0, v8}, Lfr/testudo/spacecorsair/mod/ModFaction;->str(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_31

    .line 1293
    :cond_3b
    iget-boolean v1, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->inZone:Z

    if-nez v1, :cond_42

    move v1, v0

    move v2, v3

    goto :goto_17

    .line 1294
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

    .line 1295
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

    .line 1296
    :cond_65
    iget-boolean v1, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->setupDone:Z

    if-nez v1, :cond_70

    iget v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->idx:I

    invoke-static {v0, v8}, Lfr/testudo/spacecorsair/mod/ModFaction;->str(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_31

    .line 1297
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

    .line 1298
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

    .line 1299
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

    .line 1300
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

    .line 1301
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

    .line 1302
    :cond_ea
    iget v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->idx:I

    invoke-static {v0, v8}, Lfr/testudo/spacecorsair/mod/ModFaction;->str(II)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_31

    .line 1306
    :cond_f2
    packed-switch v2, :pswitch_data_29a

    .line 1317
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

    .line 1319
    :goto_11e
    iput v2, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->instrBranch:I

    .line 1320
    iput v1, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->instrVal:I

    .line 1321
    iput-object v6, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->instrTarget:Lfr/testudo/spacecorsair/business/Element;

    .line 1322
    iget v1, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->goal:I

    iput v1, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->instrGoal:I

    .line 1323
    iput-object v7, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->instrWhere:Lfr/testudo/spacecorsair/game/levels/LevelId;

    .line 1324
    iput-object v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->instrText:Ljava/lang/String;

    goto/16 :goto_31

    .line 1307
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

    goto :goto_11e

    .line 1308
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

    .line 1309
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

    .line 1308
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

    .line 1309
    :cond_1ab
    const-string v0, "Go to "

    goto :goto_175

    .line 1310
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

    .line 1311
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

    .line 1312
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

    .line 1313
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

    .line 1314
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

    .line 1315
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

    .line 1316
    :pswitch_292
    const-string v0, "Meet the convoy"

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_11e

    .line 1306
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
    .line 171
    const-string v0, "L15"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3e

    const-string v0, "Siege "

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 172
    :goto_e
    const-string v1, "L\\d+$"

    const-string v2, ""

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 173
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

    .line 174
    :cond_3d
    return-object p0

    .line 171
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

    .line 173
    :cond_63
    add-int/lit8 v1, v1, 0x2

    goto :goto_17
.end method

.method static key(I)Ljava/lang/String;
    .registers 2

    .prologue
    .line 146
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lfr/testudo/spacecorsair/mod/ModFaction;->str(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static level(Ljava/lang/String;)Lfr/testudo/spacecorsair/game/levels/LevelId;
    .registers 2

    .prologue
    .line 164
    :try_start_0
    invoke-static {p0}, Lfr/testudo/spacecorsair/game/levels/LevelId;->valueOf(Ljava/lang/String;)Lfr/testudo/spacecorsair/game/levels/LevelId;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3} :catch_5

    move-result-object v0

    .line 166
    :goto_4
    return-object v0

    .line 165
    :catch_5
    move-exception v0

    .line 166
    const/4 v0, 0x0

    goto :goto_4
.end method

.method private liveFoes()I
    .registers 4

    .prologue
    .line 1092
    const/4 v0, 0x0

    .line 1093
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

    .line 1094
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

    .line 488
    iput-boolean v1, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->planned:Z

    .line 489
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModFaction;->prefs()Landroid/content/SharedPreferences;

    move-result-object v3

    .line 490
    if-eqz v3, :cond_15

    invoke-direct {p0}, Lfr/testudo/spacecorsair/mod/ModFaction;->stateKey()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 491
    :cond_15
    if-nez v2, :cond_18

    .line 527
    :goto_17
    return-void

    .line 493
    :cond_18
    :try_start_18
    const-string v3, ";"

    const/4 v4, -0x1

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v3

    .line 494
    const/4 v2, 0x0

    aget-object v2, v3, v2

    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModFaction;->level(Ljava/lang/String;)Lfr/testudo/spacecorsair/game/levels/LevelId;

    move-result-object v2

    .line 495
    if-eqz v2, :cond_2a

    iput-object v2, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->zone:Lfr/testudo/spacecorsair/game/levels/LevelId;

    .line 496
    :cond_2a
    const/4 v2, 0x1

    aget-object v2, v3, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->phase:I

    .line 497
    const/4 v2, 0x2

    aget-object v2, v3, v2

    iget-object v4, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->ref:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-static {v2, v4}, Lfr/testudo/spacecorsair/mod/ModFaction;->xy(Ljava/lang/String;Lfr/testudo/spacecorsair/engine/Vector2;)V

    .line 498
    const/4 v2, 0x3

    aget-object v2, v3, v2

    iget-object v4, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->center:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-static {v2, v4}, Lfr/testudo/spacecorsair/mod/ModFaction;->xy(Ljava/lang/String;Lfr/testudo/spacecorsair/engine/Vector2;)V

    .line 499
    const/4 v2, 0x4

    aget-object v2, v3, v2

    iget-object v4, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->endAt:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-static {v2, v4}, Lfr/testudo/spacecorsair/mod/ModFaction;->xy(Ljava/lang/String;Lfr/testudo/spacecorsair/engine/Vector2;)V

    .line 500
    const/4 v2, 0x5

    aget-object v2, v3, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->progress:I

    .line 501
    const/4 v2, 0x6

    aget-object v2, v3, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->goal:I

    .line 502
    const/4 v2, 0x7

    aget-object v2, v3, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->holdMs:I

    .line 503
    const/16 v2, 0x8

    aget-object v2, v3, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->waveNo:I

    .line 504
    const/16 v2, 0x9

    aget-object v2, v3, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->wavesLeft:I

    .line 505
    const/16 v2, 0xa

    aget-object v2, v3, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 506
    and-int/lit8 v2, v4, 0x1

    if-eqz v2, :cond_108

    move v2, v0

    :goto_87
    iput-boolean v2, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->courierMoving:Z

    .line 507
    and-int/lit8 v2, v4, 0x2

    if-eqz v2, :cond_10b

    :goto_8d
    iput-boolean v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->secondLegPlaced:Z

    .line 508
    const/4 v0, 0x0

    const/16 v2, 0x63

    shr-int/lit8 v4, v4, 0x2

    invoke-static {v2, v4}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->outpostLost:I

    .line 509
    const/16 v0, 0xb

    aget-object v0, v3, v0

    iget-object v2, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->lastCourier:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-static {v0, v2}, Lfr/testudo/spacecorsair/mod/ModFaction;->xy(Ljava/lang/String;Lfr/testudo/spacecorsair/engine/Vector2;)V

    .line 510
    const/4 v0, 0x0

    iput-object v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->markers:[F

    .line 511
    const/4 v0, 0x0

    iput-object v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->taken:[Z

    .line 512
    array-length v0, v3

    if-le v0, v5, :cond_10d

    const/16 v0, 0xc

    aget-object v0, v3, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_10d

    .line 513
    const/16 v0, 0xc

    aget-object v0, v3, v0

    const-string v2, ":"

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 514
    array-length v0, v2

    mul-int/lit8 v0, v0, 0x2

    new-array v0, v0, [F

    iput-object v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->markers:[F

    .line 515
    array-length v0, v2

    new-array v0, v0, [Z

    iput-object v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->taken:[Z

    move v0, v1

    .line 516
    :goto_d1
    array-length v3, v2

    if-ge v0, v3, :cond_10d

    .line 517
    aget-object v3, v2, v0

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 518
    iget-object v4, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->markers:[F

    mul-int/lit8 v5, v0, 0x2

    const/4 v6, 0x0

    aget-object v6, v3, v6

    invoke-static {v6}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v6

    aput v6, v4, v5

    .line 519
    iget-object v4, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->markers:[F

    mul-int/lit8 v5, v0, 0x2

    add-int/lit8 v5, v5, 0x1

    const/4 v6, 0x1

    aget-object v6, v3, v6

    invoke-static {v6}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v6

    aput v6, v4, v5

    .line 520
    iget-object v4, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->taken:[Z

    const-string v5, "1"

    const/4 v6, 0x2

    aget-object v3, v3, v6

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    aput-boolean v3, v4, v0

    .line 516
    add-int/lit8 v0, v0, 0x1

    goto :goto_d1

    :cond_108
    move v2, v1

    .line 506
    goto/16 :goto_87

    :cond_10b
    move v0, v1

    .line 507
    goto :goto_8d

    .line 523
    :cond_10d
    const/4 v0, 0x1

    iput-boolean v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->planned:Z
    :try_end_110
    .catch Ljava/lang/Throwable; {:try_start_18 .. :try_end_110} :catch_112

    goto/16 :goto_17

    .line 524
    :catch_112
    move-exception v0

    .line 525
    iput-boolean v1, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->planned:Z

    goto/16 :goto_17
.end method

.method private markGates(Z)V
    .registers 5

    .prologue
    .line 1193
    :try_start_0
    iget-boolean v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->completed:Z

    if-eqz v0, :cond_f

    sget-object v0, Lfr/testudo/spacecorsair/mod/ModCapitals;->FACTIONS:[Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;

    iget v1, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->fi:I

    aget-object v0, v0, v1

    iget-object v0, v0, Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;->hq:Lfr/testudo/spacecorsair/game/levels/LevelId;

    .line 1194
    :goto_c
    if-nez v0, :cond_14

    .line 1206
    :cond_e
    :goto_e
    return-void

    .line 1193
    :cond_f
    invoke-direct {p0}, Lfr/testudo/spacecorsair/mod/ModFaction;->activeSector()Lfr/testudo/spacecorsair/game/levels/LevelId;

    move-result-object v0

    goto :goto_c

    .line 1195
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

    .line 1196
    :cond_37
    sget-object v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v1, v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v1, v1, Lfr/testudo/spacecorsair/game/Game;->currentLevel:Lfr/testudo/spacecorsair/game/levels/Level;

    iget-object v1, v1, Lfr/testudo/spacecorsair/game/levels/Level;->name:Ljava/lang/String;

    .line 1197
    if-eqz v1, :cond_49

    iget-object v2, v0, Lfr/testudo/spacecorsair/game/levels/LevelId;->levelName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_e

    .line 1198
    :cond_49
    sget-object v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v1, v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v1, v1, Lfr/testudo/spacecorsair/game/Game;->currentLevel:Lfr/testudo/spacecorsair/game/levels/Level;

    invoke-static {v0}, Lfr/testudo/spacecorsair/business/world/PathFinder;->getPortalNameToGoTo(Lfr/testudo/spacecorsair/game/levels/LevelId;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lfr/testudo/spacecorsair/game/levels/Level;->findPortalByName(Ljava/lang/String;)Lfr/testudo/spacecorsair/business/world/Portal;

    move-result-object v0

    .line 1199
    if-eqz v0, :cond_e

    .line 1200
    iput-boolean p1, v0, Lfr/testudo/spacecorsair/business/world/Portal;->isMissionObjective:Z

    .line 1201
    sget-object v1, Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;->ORANGE:Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;

    iput-object v1, v0, Lfr/testudo/spacecorsair/business/world/Portal;->missionObjectiveColor:Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;
    :try_end_5f
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_5f} :catch_60

    goto :goto_e

    .line 1203
    :catch_60
    move-exception v0

    goto :goto_e
.end method

.method static minLevel(I)I
    .registers 2

    .prologue
    .line 149
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
    .line 587
    iput-object p1, p0, Lfr/testudo/spacecorsair/business/Element;->specificName:Ljava/lang/String;

    .line 588
    const/4 v0, -0x1

    iput v0, p0, Lfr/testudo/spacecorsair/business/Element;->specificNameDecalX:I

    .line 589
    return-void
.end method

.method static num(II)I
    .registers 3

    .prologue
    .line 142
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
    .line 148
    const/4 v0, 0x3

    invoke-static {p0, v0}, Lfr/testudo/spacecorsair/mod/ModFaction;->str(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static order(I)I
    .registers 2

    .prologue
    .line 147
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lfr/testudo/spacecorsair/mod/ModFaction;->num(II)I

    move-result v0

    return v0
.end method

.method private place(Lfr/testudo/spacecorsair/business/ennemis/Ennemis;Lfr/testudo/spacecorsair/engine/Vector2;Lfr/testudo/spacecorsair/business/Element;Z)Lfr/testudo/spacecorsair/business/ennemis/Ennemis;
    .registers 11

    .prologue
    .line 609
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
    .line 593
    if-nez p1, :cond_4

    const/4 p1, 0x0

    .line 605
    :goto_3
    return-object p1

    .line 594
    :cond_4
    iget-object v0, p1, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v0, p2}, Lfr/testudo/spacecorsair/engine/Vector2;->setSameAs(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 595
    invoke-virtual {p1}, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->updateSapCoords()V

    .line 596
    const v0, 0x460ca000    # 9000.0f

    iput v0, p1, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->desengagementDistance:F

    .line 597
    if-eqz p4, :cond_1a

    .line 598
    const/4 v0, 0x1

    iput-boolean v0, p1, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->isMissionObjective:Z

    .line 599
    sget-object v0, Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;->RED:Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;

    iput-object v0, p1, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->missionObjectiveColor:Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;

    .line 601
    :cond_1a
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->playerShip:Lfr/testudo/spacecorsair/business/player/PlayerShip;

    .line 602
    if-eqz p5, :cond_29

    if-eqz p3, :cond_32

    iget-boolean v1, p3, Lfr/testudo/spacecorsair/business/Element;->removed:Z

    if-nez v1, :cond_32

    :goto_26
    invoke-virtual {p1, p3}, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->initAttackTarget(Lfr/testudo/spacecorsair/business/Element;)V

    .line 603
    :cond_29
    invoke-virtual {p1}, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->addToCurrentLevel()V

    .line 604
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->spawned:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_32
    move-object p3, v0

    .line 602
    goto :goto_26
.end method

.method private plan(Lfr/testudo/spacecorsair/business/player/PlayerShip;)V
    .registers 10

    .prologue
    const/4 v7, 0x7

    const/4 v6, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 707
    iput-boolean v5, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->planned:Z

    .line 708
    iput v4, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->phase:I

    .line 709
    iput v4, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->progress:I

    .line 710
    iput v4, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->holdMs:I

    .line 711
    iput v4, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->outpostLost:I

    .line 712
    iput v4, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->waveNo:I

    .line 713
    iput v4, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->wavesLeft:I

    .line 714
    iput-boolean v4, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->courierMoving:Z

    .line 715
    iput-boolean v4, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->secondLegPlaced:Z

    .line 716
    iput-object v6, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->markers:[F

    .line 717
    iput-object v6, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->taken:[Z

    .line 718
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->ref:Lfr/testudo/spacecorsair/engine/Vector2;

    iget-object v1, p1, Lfr/testudo/spacecorsair/business/player/PlayerShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/engine/Vector2;->setSameAs(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 719
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

    .line 721
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

    .line 722
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

    .line 723
    :cond_a2
    new-array v0, v5, [Z

    iput-object v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->taken:[Z

    .line 724
    const/4 v0, 0x2

    new-array v0, v0, [F

    iget-object v1, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->center:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v1, v1, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    aput v1, v0, v4

    iget-object v1, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->center:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v1, v1, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    aput v1, v0, v5

    iput-object v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->markers:[F

    .line 725
    iput v5, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->goal:I

    .line 743
    :cond_b9
    :goto_b9
    invoke-direct {p0}, Lfr/testudo/spacecorsair/mod/ModFaction;->save()V

    .line 744
    return-void

    .line 720
    :cond_bd
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->center:Lfr/testudo/spacecorsair/engine/Vector2;

    iget-object v1, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->ref:Lfr/testudo/spacecorsair/engine/Vector2;

    const/high16 v2, 0x45fa0000    # 8000.0f

    const v3, 0x7f7fffff    # Float.MAX_VALUE

    invoke-static {v1, v2, v3}, Lfr/testudo/spacecorsair/mod/ModPlace;->farPoint(Lfr/testudo/spacecorsair/engine/Vector2;FF)Lfr/testudo/spacecorsair/engine/Vector2;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/engine/Vector2;->setSameAs(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    goto/16 :goto_3c

    .line 726
    :cond_cf
    const-string v0, "GATHER_AND_SELL"

    iget-object v1, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->obj:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e3

    .line 727
    const/4 v0, 0x6

    iget-object v1, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->center:Lfr/testudo/spacecorsair/engine/Vector2;

    const v2, 0x45098000    # 2200.0f

    invoke-direct {p0, v0, v1, v2}, Lfr/testudo/spacecorsair/mod/ModFaction;->scatter(ILfr/testudo/spacecorsair/engine/Vector2;F)V

    goto :goto_b9

    .line 728
    :cond_e3
    const-string v0, "RESCUE"

    iget-object v1, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->obj:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_ff

    .line 729
    iget v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->idx:I

    invoke-static {v0, v7}, Lfr/testudo/spacecorsair/mod/ModFaction;->num(II)I

    move-result v0

    invoke-static {v5, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iget-object v1, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->center:Lfr/testudo/spacecorsair/engine/Vector2;

    const/high16 v2, 0x45480000    # 3200.0f

    invoke-direct {p0, v0, v1, v2}, Lfr/testudo/spacecorsair/mod/ModFaction;->scatter(ILfr/testudo/spacecorsair/engine/Vector2;F)V

    goto :goto_b9

    .line 730
    :cond_ff
    const-string v0, "DEFEND_CIVILIANS"

    iget-object v1, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->obj:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10d

    .line 731
    const/4 v0, 0x4

    iput v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->wavesLeft:I

    goto :goto_b9

    .line 732
    :cond_10d
    const-string v0, "DEFEND_ZONE"

    iget-object v1, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->obj:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_129

    .line 733
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

    .line 734
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

    .line 735
    :cond_13d
    iget v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->idx:I

    invoke-static {v0, v7}, Lfr/testudo/spacecorsair/mod/ModFaction;->num(II)I

    move-result v0

    invoke-static {v5, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->goal:I

    goto/16 :goto_b9

    .line 736
    :cond_14b
    const-string v0, "ESCORT"

    iget-object v1, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->obj:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b9

    .line 738
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->ref:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-static {v0, v6}, Lfr/testudo/spacecorsair/mod/ModPlace;->farthestStation(Lfr/testudo/spacecorsair/engine/Vector2;Lfr/testudo/spacecorsair/business/world/station/Station;)Lfr/testudo/spacecorsair/business/world/station/Station;

    move-result-object v0

    .line 739
    if-eqz v0, :cond_164

    iget-object v1, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->center:Lfr/testudo/spacecorsair/engine/Vector2;

    iget-object v2, v0, Lfr/testudo/spacecorsair/business/world/station/Station;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v1, v2}, Lfr/testudo/spacecorsair/engine/Vector2;->setSameAs(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 740
    :cond_164
    iget-object v1, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->lastCourier:Lfr/testudo/spacecorsair/engine/Vector2;

    iget-object v2, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->center:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v1, v2}, Lfr/testudo/spacecorsair/engine/Vector2;->setSameAs(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 741
    invoke-direct {p0, v0}, Lfr/testudo/spacecorsair/mod/ModFaction;->planEscortEnd(Lfr/testudo/spacecorsair/business/world/station/Station;)V

    goto/16 :goto_b9
.end method

.method private planEscortEnd(Lfr/testudo/spacecorsair/business/world/station/Station;)V
    .registers 5

    .prologue
    const/4 v1, 0x0

    .line 748
    iget v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->phase:I

    if-nez v0, :cond_2b

    iget v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->idx:I

    const/16 v2, 0xa

    invoke-static {v0, v2}, Lfr/testudo/spacecorsair/mod/ModFaction;->str(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModFaction;->level(Ljava/lang/String;)Lfr/testudo/spacecorsair/game/levels/LevelId;

    move-result-object v0

    .line 749
    :goto_11
    iget v2, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->phase:I

    if-nez v2, :cond_21

    iget v2, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->idx:I

    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModFaction;->contract(I)Z

    move-result v2

    if-nez v2, :cond_21

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModFaction;->gateTo(Lfr/testudo/spacecorsair/game/levels/LevelId;)Lfr/testudo/spacecorsair/business/world/Portal;

    move-result-object v1

    .line 750
    :cond_21
    if-eqz v1, :cond_2d

    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->endAt:Lfr/testudo/spacecorsair/engine/Vector2;

    iget-object v1, v1, Lfr/testudo/spacecorsair/business/world/Portal;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/engine/Vector2;->setSameAs(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 754
    :goto_2a
    return-void

    :cond_2b
    move-object v0, v1

    .line 748
    goto :goto_11

    .line 751
    :cond_2d
    if-eqz p1, :cond_3f

    iget-object v0, p1, Lfr/testudo/spacecorsair/business/world/station/Station;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    :goto_31
    invoke-static {v0, p1}, Lfr/testudo/spacecorsair/mod/ModPlace;->farthestStation(Lfr/testudo/spacecorsair/engine/Vector2;Lfr/testudo/spacecorsair/business/world/station/Station;)Lfr/testudo/spacecorsair/business/world/station/Station;

    move-result-object v0

    .line 752
    if-eqz v0, :cond_42

    iget-object v1, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->endAt:Lfr/testudo/spacecorsair/engine/Vector2;

    iget-object v0, v0, Lfr/testudo/spacecorsair/business/world/station/Station;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v1, v0}, Lfr/testudo/spacecorsair/engine/Vector2;->setSameAs(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    goto :goto_2a

    .line 751
    :cond_3f
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->center:Lfr/testudo/spacecorsair/engine/Vector2;

    goto :goto_31

    .line 753
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
    .line 614
    const/4 v0, 0x0

    move v6, v0

    :goto_2
    if-ge v6, p1, :cond_42

    .line 615
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v0

    const-wide v2, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v0, v2

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    mul-double/2addr v0, v2

    .line 616
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

    .line 617
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

    .line 614
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_2

    .line 617
    :cond_40
    const/4 v0, 0x0

    goto :goto_31

    .line 619
    :cond_42
    return-void
.end method

.method private static prefs()Landroid/content/SharedPreferences;
    .registers 1

    .prologue
    .line 376
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModQol;->prefs()Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method static pretty(Lfr/testudo/spacecorsair/game/levels/LevelId;)Ljava/lang/String;
    .registers 9

    .prologue
    const/4 v1, 0x0

    .line 179
    if-eqz p0, :cond_7

    iget-object v0, p0, Lfr/testudo/spacecorsair/game/levels/LevelId;->levelName:Ljava/lang/String;

    if-nez v0, :cond_a

    :cond_7
    const-string v0, ""

    .line 186
    :goto_9
    return-object v0

    .line 180
    :cond_a
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 181
    iget-object v0, p0, Lfr/testudo/spacecorsair/game/levels/LevelId;->levelName:Ljava/lang/String;

    const-string v3, " "

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    array-length v4, v3

    move v0, v1

    :goto_19
    if-ge v0, v4, :cond_46

    aget-object v5, v3, v0

    .line 182
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_26

    .line 181
    :goto_23
    add-int/lit8 v0, v0, 0x1

    goto :goto_19

    .line 183
    :cond_26
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    if-lez v6, :cond_31

    const/16 v6, 0x20

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 184
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

    .line 186
    :cond_46
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_9
.end method

.method private reinforce(ILfr/testudo/spacecorsair/business/Element;Z)V
    .registers 10

    .prologue
    .line 623
    const/4 v4, -0x1

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v5}, Lfr/testudo/spacecorsair/mod/ModFaction;->reinforce(ILfr/testudo/spacecorsair/business/Element;ZIZ)V

    .line 624
    return-void
.end method

.method private reinforce(ILfr/testudo/spacecorsair/business/Element;ZIZ)V
    .registers 14

    .prologue
    .line 627
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->playerShip:Lfr/testudo/spacecorsair/business/player/PlayerShip;

    .line 628
    if-nez v0, :cond_7

    .line 637
    :cond_6
    return-void

    .line 629
    :cond_7
    iget-object v0, v0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModPlace;->ambushPoint(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    move-result-object v7

    .line 630
    const/4 v0, 0x0

    move v6, v0

    :goto_f
    if-ge v6, p1, :cond_6

    .line 631
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

    .line 632
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

    .line 633
    if-nez v0, :cond_6b

    .line 630
    :goto_55
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_f

    .line 632
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

    .line 634
    :cond_6b
    if-eqz p5, :cond_75

    add-int/lit8 v1, p1, -0x1

    if-ne v6, v1, :cond_75

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->setElite(Z)Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    .line 635
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

    .line 470
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModFaction;->prefs()Landroid/content/SharedPreferences;

    move-result-object v4

    .line 471
    if-nez v4, :cond_d

    .line 485
    :goto_c
    return-void

    .line 472
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

    .line 473
    :cond_21
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 474
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

    .line 475
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

    .line 476
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

    .line 477
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

    .line 478
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->lastCourier:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v3, v3, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 479
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->markers:[F

    if-eqz v0, :cond_13a

    move v0, v2

    .line 480
    :goto_f0
    iget-object v3, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->taken:[Z

    array-length v3, v3

    if-ge v0, v3, :cond_13a

    .line 481
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

    .line 480
    add-int/lit8 v0, v0, 0x1

    goto :goto_f0

    .line 474
    :cond_12d
    const-string v0, ""

    goto/16 :goto_30

    :cond_131
    move v0, v2

    .line 477
    goto :goto_c1

    :cond_133
    move v3, v2

    goto :goto_c6

    :cond_135
    move v3, v2

    .line 481
    goto :goto_11a

    :cond_137
    const-string v3, ""

    goto :goto_127

    .line 484
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

    .line 669
    invoke-direct {p0, p1, v4}, Lfr/testudo/spacecorsair/mod/ModFaction;->civil(Lfr/testudo/spacecorsair/engine/Vector2;Z)Lfr/testudo/spacecorsair/business/world/civil/CivilShip;

    move-result-object v0

    .line 670
    if-nez v0, :cond_c

    const/4 v0, 0x0

    .line 674
    :goto_b
    return-object v0

    .line 671
    :cond_c
    iput-boolean v5, v0, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->isMissionObjective:Z

    .line 672
    sget-object v1, Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;->ORANGE:Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;

    iput-object v1, v0, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->missionObjectiveColor:Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;

    .line 673
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

    .line 640
    mul-int/lit8 v0, p1, 0x2

    new-array v2, v0, [F

    move v0, v1

    .line 641
    :goto_6
    if-ge v0, p1, :cond_21

    .line 642
    const v3, 0x3e4ccccd    # 0.2f

    mul-float/2addr v3, p3

    invoke-static {p2, v3, p3}, Lfr/testudo/spacecorsair/mod/ModFaction;->away(Lfr/testudo/spacecorsair/engine/Vector2;FF)Lfr/testudo/spacecorsair/engine/Vector2;

    move-result-object v3

    .line 643
    mul-int/lit8 v4, v0, 0x2

    iget v5, v3, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    aput v5, v2, v4

    .line 644
    mul-int/lit8 v4, v0, 0x2

    add-int/lit8 v4, v4, 0x1

    iget v3, v3, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    aput v3, v2, v4

    .line 641
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 646
    :cond_21
    new-array v0, p1, [Z

    iput-object v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->taken:[Z

    .line 647
    iput-object v2, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->markers:[F

    .line 648
    iput p1, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->goal:I

    .line 649
    iput v1, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->progress:I

    .line 650
    return-void
.end method

.method private secondSector()Lfr/testudo/spacecorsair/game/levels/LevelId;
    .registers 3

    .prologue
    .line 312
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

    .line 314
    :goto_1f
    return-object v0

    .line 313
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

    .line 314
    :cond_3f
    const/4 v0, 0x0

    goto :goto_1f
.end method

.method private static sectorIs(Lfr/testudo/spacecorsair/game/levels/LevelId;)Z
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 1084
    :try_start_1
    sget-object v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v1, v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v1, v1, Lfr/testudo/spacecorsair/game/Game;->currentLevel:Lfr/testudo/spacecorsair/game/levels/Level;

    iget-object v1, v1, Lfr/testudo/spacecorsair/game/levels/Level;->name:Ljava/lang/String;

    .line 1085
    if-eqz p0, :cond_16

    if-eqz v1, :cond_16

    iget-object v2, p0, Lfr/testudo/spacecorsair/game/levels/LevelId;->levelName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_12
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_12} :catch_17

    move-result v1

    if-eqz v1, :cond_16

    const/4 v0, 0x1

    .line 1087
    :cond_16
    :goto_16
    return v0

    .line 1086
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

    .line 757
    iput-boolean v4, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->setupDone:Z

    .line 758
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->playerShip:Lfr/testudo/spacecorsair/business/player/PlayerShip;

    .line 759
    if-nez v0, :cond_f

    .line 861
    :cond_e
    :goto_e
    return-void

    .line 760
    :cond_f
    iget-boolean v1, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->planned:Z

    if-nez v1, :cond_16

    invoke-direct {p0, v0}, Lfr/testudo/spacecorsair/mod/ModFaction;->plan(Lfr/testudo/spacecorsair/business/player/PlayerShip;)V

    .line 761
    :cond_16
    iput-boolean v5, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->ambushed2:Z

    iput-boolean v5, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->ambushed:Z

    .line 762
    iput-boolean v5, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->wavesOn:Z

    .line 763
    iput-object v3, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->target:Lfr/testudo/spacecorsair/business/Element;

    .line 764
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

    .line 766
    const-string v0, "DEFEND_CIVILIANS"

    iget-object v1, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->obj:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9f

    .line 767
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->center:Lfr/testudo/spacecorsair/engine/Vector2;

    const v1, 0x458ca000    # 4500.0f

    const v2, 0x459c4000    # 5000.0f

    invoke-static {v0, v1, v2}, Lfr/testudo/spacecorsair/mod/ModFaction;->farFrom(Lfr/testudo/spacecorsair/engine/Vector2;FF)Lfr/testudo/spacecorsair/engine/Vector2;

    move-result-object v1

    move v0, v5

    .line 768
    :goto_49
    const/4 v2, 0x4

    if-ge v0, v2, :cond_99

    .line 769
    iget-object v2, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->center:Lfr/testudo/spacecorsair/engine/Vector2;

    const/high16 v3, 0x43e10000    # 450.0f

    invoke-static {v2, v9, v3}, Lfr/testudo/spacecorsair/mod/ModFaction;->away(Lfr/testudo/spacecorsair/engine/Vector2;FF)Lfr/testudo/spacecorsair/engine/Vector2;

    move-result-object v2

    invoke-direct {p0, v2, v4}, Lfr/testudo/spacecorsair/mod/ModFaction;->civil(Lfr/testudo/spacecorsair/engine/Vector2;Z)Lfr/testudo/spacecorsair/business/world/civil/CivilShip;

    move-result-object v2

    .line 770
    if-nez v2, :cond_5d

    .line 768
    :goto_5a
    add-int/lit8 v0, v0, 0x1

    goto :goto_49

    .line 771
    :cond_5d
    iget v3, v2, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->maxLife:F

    const/high16 v6, 0x40400000    # 3.0f

    mul-float/2addr v3, v6

    iput v3, v2, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->maxLife:F

    .line 772
    iget v3, v2, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->maxLife:F

    iput v3, v2, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->life:F

    .line 773
    const-string v3, "Evacuee transport"

    invoke-static {v3}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lfr/testudo/spacecorsair/mod/ModFaction;->name(Lfr/testudo/spacecorsair/business/Element;Ljava/lang/String;)V

    .line 774
    iput-boolean v4, v2, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->isMissionObjective:Z

    .line 775
    sget-object v3, Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;->GREEN:Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;

    iput-object v3, v2, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->missionObjectiveColor:Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;

    .line 777
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

    .line 779
    :cond_99
    const/16 v0, 0x1770

    iput v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->timer:I

    goto/16 :goto_e

    .line 780
    :cond_9f
    const-string v0, "DEFEND_ZONE"

    iget-object v1, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->obj:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_101

    .line 781
    const/16 v0, 0xfa0

    iput v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->timer:I

    .line 783
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->center:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-direct {p0, v0, v4}, Lfr/testudo/spacecorsair/mod/ModFaction;->civil(Lfr/testudo/spacecorsair/engine/Vector2;Z)Lfr/testudo/spacecorsair/business/world/civil/CivilShip;

    move-result-object v0

    iput-object v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->outpost:Lfr/testudo/spacecorsair/business/world/civil/CivilShip;

    .line 784
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->outpost:Lfr/testudo/spacecorsair/business/world/civil/CivilShip;

    if-eqz v0, :cond_e

    .line 785
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->outpost:Lfr/testudo/spacecorsair/business/world/civil/CivilShip;

    iget v1, v0, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->maxLife:F

    const/high16 v2, 0x41400000    # 12.0f

    mul-float/2addr v1, v2

    iput v1, v0, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->maxLife:F

    .line 786
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->outpost:Lfr/testudo/spacecorsair/business/world/civil/CivilShip;

    iget-object v1, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->outpost:Lfr/testudo/spacecorsair/business/world/civil/CivilShip;

    iget v1, v1, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->maxLife:F

    iget v2, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->outpostLost:I

    rsub-int/lit8 v2, v2, 0x64

    int-to-float v2, v2

    mul-float/2addr v1, v2

    div-float/2addr v1, v9

    iput v1, v0, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->life:F

    .line 787
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->outpost:Lfr/testudo/spacecorsair/business/world/civil/CivilShip;

    const-string v1, "Outpost"

    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lfr/testudo/spacecorsair/mod/ModFaction;->name(Lfr/testudo/spacecorsair/business/Element;Ljava/lang/String;)V

    .line 788
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->outpost:Lfr/testudo/spacecorsair/business/world/civil/CivilShip;

    iput-boolean v4, v0, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->isMissionObjective:Z

    .line 789
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->outpost:Lfr/testudo/spacecorsair/business/world/civil/CivilShip;

    sget-object v1, Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;->GREEN:Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;

    iput-object v1, v0, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->missionObjectiveColor:Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;

    .line 790
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

    .line 792
    :cond_101
    const-string v0, "BOUNTY"

    iget-object v1, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->obj:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19a

    .line 793
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

    .line 794
    :goto_122
    if-eqz v13, :cond_18e

    invoke-direct {p0}, Lfr/testudo/spacecorsair/mod/ModFaction;->foeLevel()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisFactory;->newFrelon(I)Lfr/testudo/spacecorsair/business/ennemis/FrelonShip;

    move-result-object v1

    .line 795
    :goto_12e
    if-eqz v1, :cond_e

    .line 796
    invoke-virtual {v1, v4}, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->setElite(Z)Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    .line 797
    iget v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->idx:I

    const/16 v2, 0x9

    invoke-static {v0, v2}, Lfr/testudo/spacecorsair/mod/ModFaction;->str(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lfr/testudo/spacecorsair/mod/ModFaction;->name(Lfr/testudo/spacecorsair/business/Element;Ljava/lang/String;)V

    .line 798
    iget v2, v1, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->maxLife:F

    iget v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->idx:I

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModFaction;->hunt(I)Z

    move-result v0

    if-eqz v0, :cond_193

    const/high16 v0, 0x41000000    # 8.0f

    :goto_14a
    mul-float/2addr v0, v2

    iput v0, v1, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->maxLife:F

    .line 799
    iget v0, v1, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->maxLife:F

    iput v0, v1, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->life:F

    .line 800
    iput v9, v1, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->lifeInPourc:F

    .line 801
    iget-object v0, v1, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->lifeBar:Lfr/testudo/spacecorsair/display/hud/InfoBarEnnemis;

    if-eqz v0, :cond_15c

    iget-object v0, v1, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->lifeBar:Lfr/testudo/spacecorsair/display/hud/InfoBarEnnemis;

    invoke-virtual {v0, v9}, Lfr/testudo/spacecorsair/display/hud/InfoBarEnnemis;->setValue(F)V

    .line 802
    :cond_15c
    iget-object v2, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->center:Lfr/testudo/spacecorsair/engine/Vector2;

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lfr/testudo/spacecorsair/mod/ModFaction;->place(Lfr/testudo/spacecorsair/business/ennemis/Ennemis;Lfr/testudo/spacecorsair/engine/Vector2;Lfr/testudo/spacecorsair/business/Element;ZZ)Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    move-result-object v0

    iput-object v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->target:Lfr/testudo/spacecorsair/business/Element;

    move v0, v5

    .line 803
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

    .line 793
    goto :goto_122

    .line 794
    :cond_18e
    invoke-direct {p0, v5, v4}, Lfr/testudo/spacecorsair/mod/ModFaction;->foe(IZ)Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    move-result-object v1

    goto :goto_12e

    .line 798
    :cond_193
    const/high16 v0, 0x40800000    # 4.0f

    goto :goto_14a

    :cond_196
    move v1, v12

    .line 803
    goto :goto_16f

    :cond_198
    move v1, v5

    goto :goto_174

    .line 805
    :cond_19a
    const-string v0, "KILL_ENEMY_TYPE"

    iget-object v1, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->obj:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b7

    .line 806
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

    .line 807
    :cond_1b7
    const-string v0, "DESTROY_STATION"

    iget-object v1, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->obj:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_24c

    .line 808
    invoke-direct {p0}, Lfr/testudo/spacecorsair/mod/ModFaction;->foeLevel()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisFactory;->newRocketTourelle(I)Lfr/testudo/spacecorsair/business/ennemis/RocketTourelle;

    move-result-object v1

    .line 809
    if-eqz v1, :cond_e

    .line 810
    invoke-virtual {v1, v4}, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->setElite(Z)Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    .line 811
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

    .line 812
    iget v0, v1, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->maxLife:F

    const/high16 v2, 0x41000000    # 8.0f

    mul-float/2addr v0, v2

    iput v0, v1, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->maxLife:F

    .line 813
    iget v0, v1, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->maxLife:F

    iput v0, v1, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->life:F

    .line 814
    iput v9, v1, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->lifeInPourc:F

    .line 815
    iget-object v0, v1, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->lifeBar:Lfr/testudo/spacecorsair/display/hud/InfoBarEnnemis;

    if-eqz v0, :cond_213

    iget-object v0, v1, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->lifeBar:Lfr/testudo/spacecorsair/display/hud/InfoBarEnnemis;

    invoke-virtual {v0, v9}, Lfr/testudo/spacecorsair/display/hud/InfoBarEnnemis;->setValue(F)V

    .line 816
    :cond_213
    iget-object v2, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->center:Lfr/testudo/spacecorsair/engine/Vector2;

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lfr/testudo/spacecorsair/mod/ModFaction;->place(Lfr/testudo/spacecorsair/business/ennemis/Ennemis;Lfr/testudo/spacecorsair/engine/Vector2;Lfr/testudo/spacecorsair/business/Element;ZZ)Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    move-result-object v0

    iput-object v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->target:Lfr/testudo/spacecorsair/business/Element;

    move v6, v5

    .line 817
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

    .line 811
    :cond_247
    const-string v0, "Authority Relay Station"

    goto :goto_1fa

    :cond_24a
    move v0, v12

    .line 817
    goto :goto_230

    .line 819
    :cond_24c
    const-string v0, "ESCORT"

    iget-object v1, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->obj:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_34f

    .line 820
    new-instance v2, Lfr/testudo/spacecorsair/engine/Vector2;

    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->lastCourier:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-direct {v2, v0}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>(Lfr/testudo/spacecorsair/engine/Vector2;)V

    .line 821
    iget-boolean v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->courierMoving:Z

    if-nez v0, :cond_323

    move v0, v4

    .line 822
    :goto_262
    iget v1, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->phase:I

    if-ne v1, v4, :cond_2c2

    iget-boolean v1, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->courierMoving:Z

    if-nez v1, :cond_2c2

    iget-boolean v1, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->secondLegPlaced:Z

    if-nez v1, :cond_2c2

    .line 824
    iget-object v1, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->entry:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-static {v1, v3}, Lfr/testudo/spacecorsair/mod/ModPlace;->farthestStation(Lfr/testudo/spacecorsair/engine/Vector2;Lfr/testudo/spacecorsair/business/world/station/Station;)Lfr/testudo/spacecorsair/business/world/station/Station;

    move-result-object v1

    .line 825
    iget-object v3, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->endAt:Lfr/testudo/spacecorsair/engine/Vector2;

    if-eqz v1, :cond_326

    iget-object v1, v1, Lfr/testudo/spacecorsair/business/world/station/Station;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    :goto_27a
    invoke-virtual {v3, v1}, Lfr/testudo/spacecorsair/engine/Vector2;->setSameAs(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 826
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

    .line 827
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

    .line 828
    iget-object v1, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->lastCourier:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v1, v2}, Lfr/testudo/spacecorsair/engine/Vector2;->setSameAs(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 829
    iput-boolean v4, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->secondLegPlaced:Z

    .line 830
    invoke-direct {p0}, Lfr/testudo/spacecorsair/mod/ModFaction;->save()V

    .line 832
    :cond_2c2
    invoke-direct {p0, v2, v4}, Lfr/testudo/spacecorsair/mod/ModFaction;->civil(Lfr/testudo/spacecorsair/engine/Vector2;Z)Lfr/testudo/spacecorsair/business/world/civil/CivilShip;

    move-result-object v1

    .line 833
    if-eqz v1, :cond_e

    .line 834
    iget v2, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->idx:I

    const/16 v3, 0x9

    invoke-static {v2, v3}, Lfr/testudo/spacecorsair/mod/ModFaction;->str(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lfr/testudo/spacecorsair/mod/ModFaction;->name(Lfr/testudo/spacecorsair/business/Element;Ljava/lang/String;)V

    .line 835
    iget v2, v1, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->maxLife:F

    const/high16 v3, 0x40c00000    # 6.0f

    mul-float/2addr v2, v3

    iput v2, v1, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->maxLife:F

    .line 836
    iget v2, v1, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->maxLife:F

    iput v2, v1, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->life:F

    .line 837
    iput-boolean v4, v1, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->isMissionObjective:Z

    .line 838
    sget-object v2, Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;->GREEN:Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;

    iput-object v2, v1, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->missionObjectiveColor:Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;

    .line 839
    iput-object v1, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->target:Lfr/testudo/spacecorsair/business/Element;

    .line 840
    iget-object v2, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->gate:Lfr/testudo/spacecorsair/engine/Vector2;

    iget-object v3, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->endAt:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v2, v3}, Lfr/testudo/spacecorsair/engine/Vector2;->setSameAs(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 841
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

    .line 843
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

    .line 844
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->lastCourier:Lfr/testudo/spacecorsair/engine/Vector2;

    iget-object v1, v1, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/engine/Vector2;->setSameAs(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 845
    const/16 v0, 0x2710

    iput v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->courierCheck:I

    goto/16 :goto_e

    :cond_323
    move v0, v5

    .line 821
    goto/16 :goto_262

    .line 825
    :cond_326
    iget-object v1, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->entry:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModFaction;->farGate(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    move-result-object v1

    goto/16 :goto_27a

    .line 842
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

    .line 843
    :cond_34c
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->entry:Lfr/testudo/spacecorsair/engine/Vector2;

    goto :goto_30a

    .line 847
    :cond_34f
    const-string v0, "SCAN_CIVIL"

    iget-object v1, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->obj:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_385

    .line 848
    iget v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->goal:I

    new-array v0, v0, [I

    iput-object v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->scanMs:[I

    .line 849
    :goto_35f
    iget v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->goal:I

    if-ge v5, v0, :cond_e

    .line 850
    iget v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->progress:I

    if-ge v5, v0, :cond_374

    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->scanMs:[I

    const/4 v1, -0x1

    aput v1, v0, v5

    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->civs:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 849
    :goto_371
    add-int/lit8 v5, v5, 0x1

    goto :goto_35f

    .line 851
    :cond_374
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->center:Lfr/testudo/spacecorsair/engine/Vector2;

    const/high16 v1, 0x43960000    # 300.0f

    const v2, 0x45228000    # 2600.0f

    invoke-static {v0, v1, v2}, Lfr/testudo/spacecorsair/mod/ModFaction;->away(Lfr/testudo/spacecorsair/engine/Vector2;FF)Lfr/testudo/spacecorsair/engine/Vector2;

    move-result-object v0

    iget-object v1, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->center:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-direct {p0, v0, v1}, Lfr/testudo/spacecorsair/mod/ModFaction;->scanTarget(Lfr/testudo/spacecorsair/engine/Vector2;Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/business/world/civil/CivilShip;

    goto :goto_371

    .line 853
    :cond_385
    const-string v0, "KILL_FLAGSHIP"

    iget-object v1, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->obj:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 854
    iget v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->idx:I

    const/16 v1, 0x8

    invoke-static {v0, v1}, Lfr/testudo/spacecorsair/mod/ModFaction;->str(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v4}, Lfr/testudo/spacecorsair/mod/ModCapitals;->ensure(Ljava/lang/String;Z)Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;

    move-result-object v0

    .line 855
    if-eqz v0, :cond_e

    .line 856
    iput-boolean v4, v0, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->isMissionObjective:Z

    .line 857
    sget-object v1, Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;->RED:Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;

    iput-object v1, v0, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->missionObjectiveColor:Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;

    .line 858
    iput-object v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->target:Lfr/testudo/spacecorsair/business/Element;

    goto/16 :goto_e
.end method

.method private side()I
    .registers 5

    .prologue
    const/4 v0, 0x2

    .line 554
    iget v1, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->idx:I

    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModFaction;->key(I)Ljava/lang/String;

    move-result-object v1

    .line 555
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

    .line 557
    :cond_21
    :goto_21
    return v0

    .line 556
    :cond_22
    const-string v2, "varn"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_32

    iget v1, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->idx:I

    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModFaction;->order(I)I

    move-result v1

    if-eq v1, v0, :cond_21

    .line 557
    :cond_32
    const/4 v0, 0x0

    goto :goto_21
.end method

.method private stateKey()Ljava/lang/String;
    .registers 3

    .prologue
    .line 466
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
    .line 139
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModFaction;->rows()[[Ljava/lang/Object;

    move-result-object v0

    aget-object v0, v0, p0

    aget-object v0, v0, p1

    check-cast v0, Ljava/lang/String;

    .line 140
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

    .line 417
    :try_start_2
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->currentMission:Lfr/testudo/spacecorsair/business/mission/Mission;

    .line 418
    if-eqz v0, :cond_e

    iget-object v3, v0, Lfr/testudo/spacecorsair/business/mission/Mission;->missionEngine:Lfr/testudo/spacecorsair/business/mission/MissionListener;

    instance-of v3, v3, Lfr/testudo/spacecorsair/mod/ModFaction;

    if-nez v3, :cond_10

    :cond_e
    move v0, v1

    .line 448
    :goto_f
    return v0

    .line 419
    :cond_10
    iget-object v0, v0, Lfr/testudo/spacecorsair/business/mission/Mission;->missionEngine:Lfr/testudo/spacecorsair/business/mission/MissionListener;

    check-cast v0, Lfr/testudo/spacecorsair/mod/ModFaction;

    .line 420
    const-string v3, "pickup"

    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_81

    .line 421
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

    .line 422
    :goto_55
    iget-object v4, v0, Lfr/testudo/spacecorsair/mod/ModFaction;->taken:[Z

    array-length v4, v4

    if-ge v3, v4, :cond_7f

    .line 423
    iget-object v4, v0, Lfr/testudo/spacecorsair/mod/ModFaction;->taken:[Z

    aget-boolean v4, v4, v3

    if-eqz v4, :cond_63

    .line 422
    add-int/lit8 v3, v3, 0x1

    goto :goto_55

    .line 424
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

    .line 425
    iget-object v0, p1, Lfr/testudo/spacecorsair/business/player/PlayerShip;->speed:Lfr/testudo/spacecorsair/engine/Vector2;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Lfr/testudo/spacecorsair/engine/Vector2;->set(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    move v0, v2

    .line 426
    goto :goto_f

    :cond_7f
    move v0, v2

    .line 428
    goto :goto_f

    .line 430
    :cond_81
    const-string v3, "outpostkill"

    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d5

    .line 431
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

    .line 432
    iget-object v2, v0, Lfr/testudo/spacecorsair/mod/ModFaction;->outpost:Lfr/testudo/spacecorsair/business/world/civil/CivilShip;

    if-eqz v2, :cond_b0

    iget-object v0, v0, Lfr/testudo/spacecorsair/mod/ModFaction;->outpost:Lfr/testudo/spacecorsair/business/world/civil/CivilShip;

    const/4 v2, 0x0

    iput v2, v0, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->life:F

    :cond_b0
    move v0, v1

    .line 433
    goto/16 :goto_f

    .line 431
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

    .line 435
    :cond_d5
    const-string v3, "escort"

    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_19b

    .line 436
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

    .line 437
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

    .line 436
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

    .line 437
    goto/16 :goto_f

    .line 438
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

    .line 439
    iget-object v3, p1, Lfr/testudo/spacecorsair/business/player/PlayerShip;->speed:Lfr/testudo/spacecorsair/engine/Vector2;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lfr/testudo/spacecorsair/engine/Vector2;->set(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 440
    iget-object v3, v0, Lfr/testudo/spacecorsair/mod/ModFaction;->target:Lfr/testudo/spacecorsair/business/Element;

    iget-object v3, v3, Lfr/testudo/spacecorsair/business/Element;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget-object v4, v0, Lfr/testudo/spacecorsair/mod/ModFaction;->gate:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v3, v4}, Lfr/testudo/spacecorsair/engine/Vector2;->setSameAs(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 441
    iget-object v3, v0, Lfr/testudo/spacecorsair/mod/ModFaction;->target:Lfr/testudo/spacecorsair/business/Element;

    invoke-virtual {v3}, Lfr/testudo/spacecorsair/business/Element;->updateSapCoords()V

    .line 442
    iget v3, v0, Lfr/testudo/spacecorsair/mod/ModFaction;->testTicks:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v0, Lfr/testudo/spacecorsair/mod/ModFaction;->testTicks:I
    :try_end_17b
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_17b} :catch_17e

    move v0, v2

    .line 443
    goto/16 :goto_f

    .line 445
    :catch_17e
    move-exception v0

    .line 446
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

    .line 448
    goto/16 :goto_f
.end method

.method static testObjective()Lfr/testudo/spacecorsair/engine/Vector2;
    .registers 2

    .prologue
    .line 453
    :try_start_0
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->currentMission:Lfr/testudo/spacecorsair/business/mission/Mission;

    .line 454
    if-eqz v0, :cond_27

    iget-object v1, v0, Lfr/testudo/spacecorsair/business/mission/Mission;->missionEngine:Lfr/testudo/spacecorsair/business/mission/MissionListener;

    instance-of v1, v1, Lfr/testudo/spacecorsair/mod/ModFaction;

    if-eqz v1, :cond_27

    .line 455
    iget-object v0, v0, Lfr/testudo/spacecorsair/business/mission/Mission;->missionEngine:Lfr/testudo/spacecorsair/business/mission/MissionListener;

    check-cast v0, Lfr/testudo/spacecorsair/mod/ModFaction;

    .line 456
    iget-boolean v1, v0, Lfr/testudo/spacecorsair/mod/ModFaction;->planned:Z

    if-eqz v1, :cond_27

    iget-object v1, v0, Lfr/testudo/spacecorsair/mod/ModFaction;->target:Lfr/testudo/spacecorsair/business/Element;

    if-eqz v1, :cond_23

    iget-object v1, v0, Lfr/testudo/spacecorsair/mod/ModFaction;->target:Lfr/testudo/spacecorsair/business/Element;

    iget-boolean v1, v1, Lfr/testudo/spacecorsair/business/Element;->removed:Z

    if-nez v1, :cond_23

    iget-object v0, v0, Lfr/testudo/spacecorsair/mod/ModFaction;->target:Lfr/testudo/spacecorsair/business/Element;

    iget-object v0, v0, Lfr/testudo/spacecorsair/business/Element;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    .line 461
    :goto_22
    return-object v0

    .line 456
    :cond_23
    iget-object v0, v0, Lfr/testudo/spacecorsair/mod/ModFaction;->center:Lfr/testudo/spacecorsair/engine/Vector2;
    :try_end_25
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_25} :catch_26

    goto :goto_22

    .line 458
    :catch_26
    move-exception v0

    .line 461
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

    .line 281
    const v0, 0x7f7f03e8

    sub-int v1, p0, v0

    .line 282
    if-ltz v1, :cond_1ad

    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModFaction;->count()I

    move-result v0

    if-ge v1, v0, :cond_1ad

    .line 283
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModCapitals;->FACTIONS:[Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;

    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModFaction;->key(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModFaction;->faction(Ljava/lang/String;)I

    move-result v2

    aget-object v2, v0, v2

    .line 284
    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModFaction;->key(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModFaction;->commander(Ljava/lang/String;)I

    move-result v0

    .line 285
    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModFaction;->zoneOf(I)Lfr/testudo/spacecorsair/game/levels/LevelId;

    move-result-object v3

    .line 286
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

    .line 287
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

    .line 288
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

    .line 289
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

    .line 290
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

    .line 291
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

    .line 295
    :goto_1a1
    return-object v0

    .line 288
    :cond_1a2
    const-string v0, ""

    goto/16 :goto_9f

    .line 289
    :cond_1a6
    const-string v0, ""

    goto/16 :goto_fc

    .line 290
    :cond_1aa
    const-string v0, ""

    goto :goto_15d

    .line 293
    :cond_1ad
    const v0, 0x7f7f07d0

    sub-int v0, p0, v0

    .line 294
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

    .line 295
    :cond_1d8
    const/4 v0, 0x0

    goto :goto_1a1
.end method

.method private static xy(Ljava/lang/String;Lfr/testudo/spacecorsair/engine/Vector2;)V
    .registers 5

    .prologue
    .line 530
    const-string v0, ","

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 531
    const/4 v1, 0x0

    aget-object v1, v0, v1

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    const/4 v2, 0x1

    aget-object v0, v0, v2

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    invoke-virtual {p1, v1, v0}, Lfr/testudo/spacecorsair/engine/Vector2;->set(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 532
    return-void
.end method

.method static zoneOf(I)Lfr/testudo/spacecorsair/game/levels/LevelId;
    .registers 7

    .prologue
    .line 304
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModFaction;->active()Lfr/testudo/spacecorsair/mod/ModFaction;

    move-result-object v0

    .line 305
    if-eqz v0, :cond_11

    iget v1, v0, Lfr/testudo/spacecorsair/mod/ModFaction;->idx:I

    if-ne v1, p0, :cond_11

    iget-object v1, v0, Lfr/testudo/spacecorsair/mod/ModFaction;->zone:Lfr/testudo/spacecorsair/game/levels/LevelId;

    if-eqz v1, :cond_11

    iget-object v0, v0, Lfr/testudo/spacecorsair/mod/ModFaction;->zone:Lfr/testudo/spacecorsair/game/levels/LevelId;

    .line 307
    :goto_10
    return-object v0

    .line 306
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

    .line 307
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
    .line 1276
    :try_start_0
    invoke-direct {p0}, Lfr/testudo/spacecorsair/mod/ModFaction;->instruction()Ljava/lang/String;

    move-result-object v0

    .line 1277
    if-eqz v0, :cond_7

    .line 1280
    :cond_6
    :goto_6
    return-object v0

    .line 1277
    :cond_7
    const-string v0, ""
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_9} :catch_a

    goto :goto_6

    .line 1278
    :catch_a
    move-exception v0

    .line 1279
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->instrText:Ljava/lang/String;

    .line 1280
    if-nez v0, :cond_6

    const-string v0, ""

    goto :goto_6
.end method

.method public giveUp()V
    .registers 1

    .prologue
    .line 1354
    invoke-direct {p0}, Lfr/testudo/spacecorsair/mod/ModFaction;->cleanup()V

    .line 1355
    invoke-virtual {p0}, Lfr/testudo/spacecorsair/mod/ModFaction;->terminate()V

    .line 1356
    return-void
.end method

.method public init()V
    .registers 9

    .prologue
    const/4 v1, 0x0

    .line 1335
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModFaction;->prefs()Landroid/content/SharedPreferences;

    move-result-object v2

    .line 1336
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

    .line 1337
    invoke-direct {p0}, Lfr/testudo/spacecorsair/mod/ModFaction;->cleanup()V

    .line 1338
    iput-boolean v1, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->planned:Z

    .line 1339
    iput v1, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->phase:I

    .line 1340
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

    .line 1341
    invoke-direct {p0}, Lfr/testudo/spacecorsair/mod/ModFaction;->save()V

    .line 1342
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

    .line 1343
    :cond_91
    iget v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->idx:I

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModFaction;->key(I)Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->idx:I

    const/16 v2, 0xb

    invoke-static {v1, v2}, Lfr/testudo/spacecorsair/mod/ModFaction;->str(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lfr/testudo/spacecorsair/mod/ModComms;->brief(Ljava/lang/String;Ljava/lang/String;)V

    .line 1344
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/Game;->currentLevel:Lfr/testudo/spacecorsair/game/levels/Level;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/levels/Level;->name:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lfr/testudo/spacecorsair/mod/ModFaction;->onZoneChanged(Ljava/lang/String;Ljava/lang/String;)V

    .line 1345
    return-void

    :cond_af
    move v0, v1

    .line 1336
    goto/16 :goto_2f

    .line 1340
    :cond_b2
    iget v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->idx:I

    const/4 v1, 0x4

    invoke-static {v0, v1}, Lfr/testudo/spacecorsair/mod/ModFaction;->str(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModFaction;->level(Ljava/lang/String;)Lfr/testudo/spacecorsair/game/levels/LevelId;

    move-result-object v0

    goto :goto_5e

    .line 1342
    :cond_be
    const-string v0, ""

    goto :goto_8a
.end method

.method public isCompleted()Z
    .registers 2

    .prologue
    .line 1349
    iget-boolean v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->completed:Z

    return v0
.end method

.method public onBeforePlayerDock()V
    .registers 3

    .prologue
    .line 1245
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

    .line 1251
    :cond_1d
    :goto_1d
    return-void

    .line 1246
    :cond_1e
    invoke-direct {p0}, Lfr/testudo/spacecorsair/mod/ModFaction;->secondSector()Lfr/testudo/spacecorsair/game/levels/LevelId;

    move-result-object v0

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModFaction;->sectorIs(Lfr/testudo/spacecorsair/game/levels/LevelId;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 1247
    invoke-direct {p0}, Lfr/testudo/spacecorsair/mod/ModFaction;->complete()V
    :try_end_2b
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_2b} :catch_2c

    goto :goto_1d

    .line 1248
    :catch_2c
    move-exception v0

    goto :goto_1d
.end method

.method public onDoPhysic(J)V
    .registers 12

    .prologue
    .line 888
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v6, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->playerShip:Lfr/testudo/spacecorsair/business/player/PlayerShip;

    .line 889
    iget-boolean v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->completed:Z

    if-nez v0, :cond_12

    iget-boolean v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->inZone:Z

    if-eqz v0, :cond_12

    if-eqz v6, :cond_12

    iget-boolean v0, v6, Lfr/testudo/spacecorsair/business/player/PlayerShip;->removed:Z

    if-eqz v0, :cond_13

    .line 1063
    :cond_12
    :goto_12
    return-void

    .line 890
    :cond_13
    iget-boolean v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->setupDone:Z

    if-nez v0, :cond_37

    .line 892
    iget v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->zoneMs:I

    if-nez v0, :cond_22

    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->entry:Lfr/testudo/spacecorsair/engine/Vector2;

    iget-object v1, v6, Lfr/testudo/spacecorsair/business/player/PlayerShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/engine/Vector2;->setSameAs(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 893
    :cond_22
    iget v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->zoneMs:I

    int-to-long v0, v0

    add-long/2addr v0, p1

    long-to-int v0, v0

    iput v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->zoneMs:I

    .line 894
    iget v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->zoneMs:I

    const/16 v1, 0x5dc

    if-le v0, v1, :cond_12

    iget-boolean v0, v6, Lfr/testudo/spacecorsair/business/player/PlayerShip;->isDocked:Z

    if-nez v0, :cond_12

    invoke-direct {p0}, Lfr/testudo/spacecorsair/mod/ModFaction;->setup()V

    goto :goto_12

    .line 897
    :cond_37
    invoke-static {v6}, Lfr/testudo/spacecorsair/mod/ModPlace;->tickBoost(Lfr/testudo/spacecorsair/business/player/PlayerShip;)V

    .line 898
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

    .line 899
    :cond_53
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->markers:[F

    if-eqz v0, :cond_1bb

    .line 900
    const/4 v0, 0x0

    :goto_58
    iget-object v1, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->taken:[Z

    array-length v1, v1

    if-ge v0, v1, :cond_183

    .line 901
    iget-object v1, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->taken:[Z

    aget-boolean v1, v1, v0

    if-eqz v1, :cond_66

    .line 900
    :cond_63
    :goto_63
    add-int/lit8 v0, v0, 0x1

    goto :goto_58

    .line 902
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

    .line 903
    mul-float/2addr v1, v1

    mul-float/2addr v2, v2

    add-float/2addr v1, v2

    float-to-double v2, v1

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    double-to-float v2, v2

    .line 904
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

    .line 905
    :cond_a6
    const/4 v1, 0x1

    iput-boolean v1, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->ambushed:Z

    .line 906
    const-string v1, "DELIVERY"

    iget-object v3, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->obj:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_152

    const/4 v1, 0x3

    :goto_b4
    const/4 v3, 0x0

    invoke-direct {p0, v1, v6, v3}, Lfr/testudo/spacecorsair/mod/ModFaction;->reinforce(ILfr/testudo/spacecorsair/business/Element;Z)V

    .line 907
    const-string v1, "CONTACTS INBOUND"

    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/high16 v3, 0x3f800000    # 1.0f

    const v4, 0x3ecccccd    # 0.4f

    const v5, 0x3e99999a    # 0.3f

    invoke-static {v6, v1, v3, v4, v5}, Lfr/testudo/spacecorsair/mod/Mod;->floatText(Lfr/testudo/spacecorsair/business/Element;Ljava/lang/String;FFF)V

    .line 909
    :cond_c9
    const/high16 v1, 0x435c0000    # 220.0f

    cmpg-float v1, v2, v1

    if-gez v1, :cond_63

    .line 910
    iget-object v1, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->taken:[Z

    const/4 v2, 0x1

    aput-boolean v2, v1, v0

    .line 911
    iget v1, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->progress:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->progress:I

    .line 912
    sget-object v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v1, v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->soundManager:Lfr/testudo/spacecorsair/engine/SoundManager;

    invoke-virtual {v1}, Lfr/testudo/spacecorsair/engine/SoundManager;->playGateZap()V

    .line 913
    const-string v1, "RESCUE"

    iget-object v2, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->obj:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_155

    const-string v1, "PILOT RECOVERED"

    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 914
    :goto_f1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v1, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->goal:I

    const/4 v3, 0x1

    if-le v1, v3, :cond_180

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

    .line 915
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

    .line 916
    const/4 v1, 0x1

    iput-boolean v1, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->ambushed:Z

    .line 917
    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-direct {p0, v1, v6, v2}, Lfr/testudo/spacecorsair/mod/ModFaction;->reinforce(ILfr/testudo/spacecorsair/business/Element;Z)V

    .line 919
    :cond_14d
    invoke-direct {p0}, Lfr/testudo/spacecorsair/mod/ModFaction;->save()V

    goto/16 :goto_63

    .line 906
    :cond_152
    const/4 v1, 0x2

    goto/16 :goto_b4

    .line 913
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

    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_f1

    .line 914
    :cond_180
    const-string v1, ""

    goto :goto_120

    .line 922
    :cond_183
    iget v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->progress:I

    iget v1, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->goal:I

    if-lt v0, v1, :cond_12

    .line 923
    const-string v0, "DELIVERY"

    iget-object v1, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->obj:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_19d

    const-string v0, "GATHER_AND_SELL"

    iget-object v1, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->obj:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b6

    .line 925
    :cond_19d
    const/4 v0, 0x1

    iput v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->phase:I

    .line 926
    const/4 v0, 0x0

    iput-object v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->markers:[F

    .line 927
    invoke-direct {p0}, Lfr/testudo/spacecorsair/mod/ModFaction;->save()V

    .line 928
    invoke-direct {p0}, Lfr/testudo/spacecorsair/mod/ModFaction;->activeSector()Lfr/testudo/spacecorsair/game/levels/LevelId;

    move-result-object v0

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModFaction;->sectorIs(Lfr/testudo/spacecorsair/game/levels/LevelId;)Z

    move-result v0

    iput-boolean v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->inZone:Z

    .line 929
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lfr/testudo/spacecorsair/mod/ModFaction;->markGates(Z)V

    goto/16 :goto_12

    .line 931
    :cond_1b6
    invoke-direct {p0}, Lfr/testudo/spacecorsair/mod/ModFaction;->complete()V

    goto/16 :goto_12

    .line 936
    :cond_1bb
    const-string v0, "DEFEND_CIVILIANS"

    iget-object v1, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->obj:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_29b

    .line 937
    const/4 v0, 0x0

    .line 938
    iget-object v1, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->civs:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :goto_1cd
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1eb

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;

    if-eqz v0, :cond_68d

    iget-boolean v3, v0, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->removed:Z

    if-nez v3, :cond_68d

    iget v0, v0, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->life:F

    const/4 v3, 0x0

    cmpl-float v0, v0, v3

    if-lez v0, :cond_68d

    add-int/lit8 v1, v1, 0x1

    move v0, v1

    :goto_1e9
    move v1, v0

    goto :goto_1cd

    .line 939
    :cond_1eb
    const/4 v0, 0x2

    if-ge v1, v0, :cond_1f3

    invoke-direct {p0}, Lfr/testudo/spacecorsair/mod/ModFaction;->fail()V

    goto/16 :goto_12

    .line 940
    :cond_1f3
    iget-boolean v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->wavesOn:Z

    if-nez v0, :cond_225

    .line 942
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->civs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1fd
    :goto_1fd
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_221

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;

    if-eqz v0, :cond_1fd

    iget-boolean v2, v0, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->removed:Z

    if-nez v2, :cond_1fd

    iget-object v0, v0, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget-object v2, v6, Lfr/testudo/spacecorsair/business/player/PlayerShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v0, v2}, Lfr/testudo/spacecorsair/engine/Vector2;->distance(Lfr/testudo/spacecorsair/engine/Vector2;)F

    move-result v0

    const/high16 v2, 0x43fa0000    # 500.0f

    cmpg-float v0, v0, v2

    if-gez v0, :cond_1fd

    const/4 v0, 0x1

    iput-boolean v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->wavesOn:Z

    goto :goto_1fd

    .line 943
    :cond_221
    iget-boolean v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->wavesOn:Z

    if-eqz v0, :cond_12

    .line 945
    :cond_225
    iget v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->timer:I

    int-to-long v0, v0

    sub-long/2addr v0, p1

    long-to-int v0, v0

    iput v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->timer:I

    .line 946
    iget v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->wavesLeft:I

    if-lez v0, :cond_28c

    iget v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->timer:I

    if-gtz v0, :cond_28c

    .line 947
    iget v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->wavesLeft:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->wavesLeft:I

    .line 948
    const/16 v0, 0x4e20

    iput v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->timer:I

    .line 949
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

    .line 950
    const/4 v1, 0x1

    const/4 v2, 0x1

    invoke-direct {p0, v1, v6, v2}, Lfr/testudo/spacecorsair/mod/ModFaction;->reinforce(ILfr/testudo/spacecorsair/business/Element;Z)V

    .line 951
    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-direct {p0, v1, v0, v2}, Lfr/testudo/spacecorsair/mod/ModFaction;->reinforce(ILfr/testudo/spacecorsair/business/Element;Z)V

    .line 952
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

    .line 953
    invoke-direct {p0}, Lfr/testudo/spacecorsair/mod/ModFaction;->save()V

    .line 955
    :cond_28c
    iget v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->wavesLeft:I

    if-nez v0, :cond_12

    invoke-direct {p0}, Lfr/testudo/spacecorsair/mod/ModFaction;->liveFoes()I

    move-result v0

    if-nez v0, :cond_12

    invoke-direct {p0}, Lfr/testudo/spacecorsair/mod/ModFaction;->complete()V

    goto/16 :goto_12

    .line 956
    :cond_29b
    const-string v0, "DEFEND_ZONE"

    iget-object v1, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->obj:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3c3

    .line 957
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->outpost:Lfr/testudo/spacecorsair/business/world/civil/CivilShip;

    if-eqz v0, :cond_2e3

    .line 958
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->outpost:Lfr/testudo/spacecorsair/business/world/civil/CivilShip;

    iget-boolean v0, v0, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->removed:Z

    if-nez v0, :cond_2b8

    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->outpost:Lfr/testudo/spacecorsair/business/world/civil/CivilShip;

    iget v0, v0, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->life:F

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_2bd

    :cond_2b8
    invoke-direct {p0}, Lfr/testudo/spacecorsair/mod/ModFaction;->fail()V

    goto/16 :goto_12

    .line 959
    :cond_2bd
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

    .line 960
    iget v1, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->outpostLost:I

    if-eq v0, v1, :cond_2e3

    iput v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->outpostLost:I

    invoke-direct {p0}, Lfr/testudo/spacecorsair/mod/ModFaction;->save()V

    .line 962
    :cond_2e3
    iget-object v0, v6, Lfr/testudo/spacecorsair/business/player/PlayerShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget-object v1, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->center:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/engine/Vector2;->distance(Lfr/testudo/spacecorsair/engine/Vector2;)F

    move-result v0

    const/high16 v1, 0x44e10000    # 1800.0f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_3b8

    const/4 v0, 0x1

    .line 963
    :goto_2f2
    if-eqz v0, :cond_311

    .line 964
    iget v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->holdMs:I

    int-to-long v0, v0

    add-long/2addr v0, p1

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    iget v2, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->holdMs:I

    div-int/lit16 v2, v2, 0x3e8

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-eqz v0, :cond_307

    invoke-direct {p0}, Lfr/testudo/spacecorsair/mod/ModFaction;->save()V

    .line 965
    :cond_307
    iget v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->holdMs:I

    int-to-long v0, v0

    add-long/2addr v0, p1

    long-to-int v0, v0

    iput v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->holdMs:I

    .line 966
    const/4 v0, 0x1

    iput-boolean v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->wavesOn:Z

    .line 968
    :cond_311
    iget-boolean v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->wavesOn:Z

    if-eqz v0, :cond_3ad

    .line 969
    iget v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->timer:I

    int-to-long v0, v0

    sub-long/2addr v0, p1

    long-to-int v0, v0

    iput v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->timer:I

    .line 970
    iget v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->goal:I

    div-int/lit16 v7, v0, 0x3a98

    .line 971
    iget v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->timer:I

    if-gtz v0, :cond_3ad

    iget v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->waveNo:I

    if-ge v0, v7, :cond_3ad

    .line 973
    const/16 v0, 0x3a98

    iput v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->timer:I

    .line 974
    iget v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->waveNo:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->waveNo:I

    .line 975
    const/16 v1, 0x8

    iget v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->idx:I

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModFaction;->contract(I)Z

    move-result v0

    if-eqz v0, :cond_3bb

    const/4 v0, 0x5

    :goto_33d
    iget v2, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->waveNo:I

    add-int/2addr v0, v2

    add-int/lit8 v0, v0, -0x1

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v8

    .line 977
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->outpost:Lfr/testudo/spacecorsair/business/world/civil/CivilShip;

    if-eqz v0, :cond_3bd

    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->outpost:Lfr/testudo/spacecorsair/business/world/civil/CivilShip;

    iget-boolean v0, v0, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->removed:Z

    if-nez v0, :cond_3bd

    add-int/lit8 v0, v8, 0x1

    div-int/lit8 v1, v0, 0x2

    .line 978
    :goto_354
    if-lez v1, :cond_362

    iget-object v2, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->outpost:Lfr/testudo/spacecorsair/business/world/civil/CivilShip;

    const/4 v3, 0x1

    invoke-direct {p0}, Lfr/testudo/spacecorsair/mod/ModFaction;->holdLevel()I

    move-result v4

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lfr/testudo/spacecorsair/mod/ModFaction;->reinforce(ILfr/testudo/spacecorsair/business/Element;ZIZ)V

    .line 979
    :cond_362
    sub-int v2, v8, v1

    if-nez v1, :cond_3bf

    const/4 v3, 0x1

    :goto_367
    invoke-direct {p0}, Lfr/testudo/spacecorsair/mod/ModFaction;->holdLevel()I

    move-result v4

    iget v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->waveNo:I

    if-ne v0, v7, :cond_3c1

    const/4 v5, 0x1

    :goto_370
    move-object v0, p0

    move v1, v2

    move-object v2, v6

    invoke-direct/range {v0 .. v5}, Lfr/testudo/spacecorsair/mod/ModFaction;->reinforce(ILfr/testudo/spacecorsair/business/Element;ZIZ)V

    .line 980
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

    .line 981
    invoke-direct {p0}, Lfr/testudo/spacecorsair/mod/ModFaction;->save()V

    .line 984
    :cond_3ad
    iget v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->holdMs:I

    iget v1, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->goal:I

    if-lt v0, v1, :cond_12

    invoke-direct {p0}, Lfr/testudo/spacecorsair/mod/ModFaction;->complete()V

    goto/16 :goto_12

    .line 962
    :cond_3b8
    const/4 v0, 0x0

    goto/16 :goto_2f2

    .line 975
    :cond_3bb
    const/4 v0, 0x6

    goto :goto_33d

    .line 977
    :cond_3bd
    const/4 v1, 0x0

    goto :goto_354

    .line 979
    :cond_3bf
    const/4 v3, 0x0

    goto :goto_367

    :cond_3c1
    const/4 v5, 0x0

    goto :goto_370

    .line 985
    :cond_3c3
    const-string v0, "BOUNTY"

    iget-object v1, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->obj:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3d7

    const-string v0, "DESTROY_STATION"

    iget-object v1, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->obj:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3fa

    .line 986
    :cond_3d7
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->target:Lfr/testudo/spacecorsair/business/Element;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->target:Lfr/testudo/spacecorsair/business/Element;

    iget-boolean v0, v0, Lfr/testudo/spacecorsair/business/Element;->removed:Z

    if-eqz v0, :cond_12

    .line 987
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->target:Lfr/testudo/spacecorsair/business/Element;

    iget v0, v0, Lfr/testudo/spacecorsair/business/Element;->life:F

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_3ef

    invoke-direct {p0}, Lfr/testudo/spacecorsair/mod/ModFaction;->complete()V

    goto/16 :goto_12

    .line 988
    :cond_3ef
    const/4 v0, 0x0

    iput-boolean v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->setupDone:Z

    const/4 v0, 0x0

    iput v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->zoneMs:I

    const/4 v0, 0x0

    iput-object v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->target:Lfr/testudo/spacecorsair/business/Element;

    goto/16 :goto_12

    .line 990
    :cond_3fa
    const-string v0, "KILL_ENEMY_TYPE"

    iget-object v1, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->obj:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_42f

    .line 991
    iget v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->progress:I

    iget v1, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->goal:I

    if-lt v0, v1, :cond_40f

    invoke-direct {p0}, Lfr/testudo/spacecorsair/mod/ModFaction;->complete()V

    goto/16 :goto_12

    .line 993
    :cond_40f
    invoke-direct {p0}, Lfr/testudo/spacecorsair/mod/ModFaction;->liveFoes()I

    move-result v0

    .line 994
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

    .line 995
    :cond_42f
    const-string v0, "ESCORT"

    iget-object v1, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->obj:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_546

    .line 996
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->target:Lfr/testudo/spacecorsair/business/Element;

    if-eqz v0, :cond_12

    .line 997
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->target:Lfr/testudo/spacecorsair/business/Element;

    iget-boolean v0, v0, Lfr/testudo/spacecorsair/business/Element;->removed:Z

    if-nez v0, :cond_44c

    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->target:Lfr/testudo/spacecorsair/business/Element;

    iget v0, v0, Lfr/testudo/spacecorsair/business/Element;->life:F

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_466

    .line 998
    :cond_44c
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->target:Lfr/testudo/spacecorsair/business/Element;

    iget-object v0, v0, Lfr/testudo/spacecorsair/business/Element;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget-object v1, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->gate:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/engine/Vector2;->distance(Lfr/testudo/spacecorsair/engine/Vector2;)F

    move-result v0

    const/high16 v1, 0x442f0000    # 700.0f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_461

    invoke-direct {p0}, Lfr/testudo/spacecorsair/mod/ModFaction;->escortArrived()V

    goto/16 :goto_12

    :cond_461
    invoke-direct {p0}, Lfr/testudo/spacecorsair/mod/ModFaction;->fail()V

    goto/16 :goto_12

    .line 1001
    :cond_466
    iget-boolean v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->courierMoving:Z

    if-nez v0, :cond_480

    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->target:Lfr/testudo/spacecorsair/business/Element;

    iget-object v0, v0, Lfr/testudo/spacecorsair/business/Element;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget-object v1, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->lastCourier:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/engine/Vector2;->distance(Lfr/testudo/spacecorsair/engine/Vector2;)F

    move-result v0

    const/high16 v1, 0x42700000    # 60.0f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_480

    const/4 v0, 0x1

    iput-boolean v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->courierMoving:Z

    invoke-direct {p0}, Lfr/testudo/spacecorsair/mod/ModFaction;->save()V

    .line 1002
    :cond_480
    const/high16 v0, 0x3f800000    # 1.0f

    iget-object v1, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->target:Lfr/testudo/spacecorsair/business/Element;

    iget-object v1, v1, Lfr/testudo/spacecorsair/business/Element;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget-object v2, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->gate:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v1, v2}, Lfr/testudo/spacecorsair/engine/Vector2;->distance(Lfr/testudo/spacecorsair/engine/Vector2;)F

    move-result v1

    iget v2, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->startDist:F

    div-float/2addr v1, v2

    sub-float/2addr v0, v1

    .line 1003
    iget-boolean v1, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->ambushed:Z

    if-nez v1, :cond_4b6

    const v1, 0x3e99999a    # 0.3f

    cmpl-float v1, v0, v1

    if-lez v1, :cond_4b6

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

    .line 1004
    :cond_4b6
    iget-boolean v1, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->ambushed2:Z

    if-nez v1, :cond_4dc

    const v1, 0x3f266666    # 0.65f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_4dc

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

    .line 1005
    :cond_4dc
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->target:Lfr/testudo/spacecorsair/business/Element;

    iget-object v0, v0, Lfr/testudo/spacecorsair/business/Element;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget-object v1, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->gate:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/engine/Vector2;->distance(Lfr/testudo/spacecorsair/engine/Vector2;)F

    move-result v0

    const/high16 v1, 0x43e10000    # 450.0f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_4f6

    .line 1006
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->target:Lfr/testudo/spacecorsair/business/Element;

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/business/Element;->remove()V

    .line 1007
    invoke-direct {p0}, Lfr/testudo/spacecorsair/mod/ModFaction;->escortArrived()V

    goto/16 :goto_12

    .line 1010
    :cond_4f6
    iget v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->courierCheck:I

    int-to-long v0, v0

    sub-long/2addr v0, p1

    long-to-int v0, v0

    iput v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->courierCheck:I

    .line 1011
    iget v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->courierCheck:I

    if-gtz v0, :cond_12

    .line 1013
    const/16 v0, 0x2710

    iput v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->courierCheck:I

    .line 1014
    iget-boolean v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->courierMoving:Z

    if-eqz v0, :cond_538

    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->target:Lfr/testudo/spacecorsair/business/Element;

    iget-object v0, v0, Lfr/testudo/spacecorsair/business/Element;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget-object v1, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->lastCourier:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/engine/Vector2;->distance(Lfr/testudo/spacecorsair/engine/Vector2;)F

    move-result v0

    const/high16 v1, 0x42700000    # 60.0f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_538

    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->target:Lfr/testudo/spacecorsair/business/Element;

    instance-of v0, v0, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;

    if-eqz v0, :cond_538

    .line 1015
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

    .line 1017
    :cond_538
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->lastCourier:Lfr/testudo/spacecorsair/engine/Vector2;

    iget-object v1, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->target:Lfr/testudo/spacecorsair/business/Element;

    iget-object v1, v1, Lfr/testudo/spacecorsair/business/Element;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/engine/Vector2;->setSameAs(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 1018
    invoke-direct {p0}, Lfr/testudo/spacecorsair/mod/ModFaction;->save()V

    goto/16 :goto_12

    .line 1020
    :cond_546
    const-string v0, "SCAN_CIVIL"

    iget-object v1, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->obj:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_631

    .line 1021
    const/4 v0, 0x0

    move v1, v0

    :goto_552
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->civs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_626

    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->scanMs:[I

    array-length v0, v0

    if-ge v1, v0, :cond_626

    .line 1022
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->civs:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;

    .line 1023
    if-eqz v0, :cond_56f

    iget-object v2, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->scanMs:[I

    aget v2, v2, v1

    if-gez v2, :cond_573

    .line 1021
    :cond_56f
    :goto_56f
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_552

    .line 1024
    :cond_573
    iget-boolean v2, v0, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->removed:Z

    if-nez v2, :cond_57e

    iget v2, v0, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->life:F

    const/4 v3, 0x0

    cmpg-float v2, v2, v3

    if-gtz v2, :cond_5a4

    .line 1026
    :cond_57e
    iget-object v0, v6, Lfr/testudo/spacecorsair/business/player/PlayerShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModPlace;->ambushPoint(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    move-result-object v0

    iget-object v2, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->center:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-direct {p0, v0, v2}, Lfr/testudo/spacecorsair/mod/ModFaction;->scanTarget(Lfr/testudo/spacecorsair/engine/Vector2;Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/business/world/civil/CivilShip;

    move-result-object v0

    .line 1027
    if-eqz v0, :cond_59e

    .line 1028
    iget-object v2, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->civs:Ljava/util/ArrayList;

    iget-object v3, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->civs:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1029
    iget-object v2, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->civs:Ljava/util/ArrayList;

    invoke-virtual {v2, v1, v0}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1031
    :cond_59e
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->scanMs:[I

    const/4 v2, 0x0

    aput v2, v0, v1

    goto :goto_56f

    .line 1034
    :cond_5a4
    iget-object v2, v0, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget-object v3, v6, Lfr/testudo/spacecorsair/business/player/PlayerShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v2, v3}, Lfr/testudo/spacecorsair/engine/Vector2;->distance(Lfr/testudo/spacecorsair/engine/Vector2;)F

    move-result v2

    const/high16 v3, 0x43e10000    # 450.0f

    cmpg-float v2, v2, v3

    if-gez v2, :cond_56f

    .line 1035
    iget-object v2, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->scanMs:[I

    aget v3, v2, v1

    int-to-long v4, v3

    add-long/2addr v4, p1

    long-to-int v3, v4

    aput v3, v2, v1

    .line 1036
    iget-object v2, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->scanMs:[I

    aget v2, v2, v1

    const/16 v3, 0x5dc

    if-le v2, v3, :cond_56f

    .line 1037
    iget-object v2, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->scanMs:[I

    const/4 v3, -0x1

    aput v3, v2, v1

    .line 1038
    iget v2, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->progress:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->progress:I

    .line 1039
    const/4 v2, 0x0

    iput-boolean v2, v0, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->isMissionObjective:Z

    .line 1040
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

    .line 1041
    iget v2, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->progress:I

    iget v3, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->goal:I

    add-int/lit8 v3, v3, -0x1

    if-ne v2, v3, :cond_621

    iget-boolean v2, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->ambushed:Z

    if-nez v2, :cond_621

    .line 1042
    const/4 v2, 0x1

    iput-boolean v2, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->ambushed:Z

    .line 1043
    const-string v2, "FALSE TRANSPONDER: RAIDERS!"

    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/high16 v3, 0x3f800000    # 1.0f

    const v4, 0x3ecccccd    # 0.4f

    const v5, 0x3e99999a    # 0.3f

    invoke-static {v0, v2, v3, v4, v5}, Lfr/testudo/spacecorsair/mod/Mod;->floatText(Lfr/testudo/spacecorsair/business/Element;Ljava/lang/String;FFF)V

    .line 1044
    const/4 v0, 0x2

    const/4 v2, 0x0

    invoke-direct {p0, v0, v6, v2}, Lfr/testudo/spacecorsair/mod/ModFaction;->reinforce(ILfr/testudo/spacecorsair/business/Element;Z)V

    .line 1046
    :cond_621
    invoke-direct {p0}, Lfr/testudo/spacecorsair/mod/ModFaction;->save()V

    goto/16 :goto_56f

    .line 1050
    :cond_626
    iget v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->progress:I

    iget v1, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->goal:I

    if-lt v0, v1, :cond_12

    invoke-direct {p0}, Lfr/testudo/spacecorsair/mod/ModFaction;->complete()V

    goto/16 :goto_12

    .line 1051
    :cond_631
    const-string v0, "KILL_FLAGSHIP"

    iget-object v1, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->obj:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 1052
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->target:Lfr/testudo/spacecorsair/business/Element;

    if-eqz v0, :cond_12

    .line 1053
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->target:Lfr/testudo/spacecorsair/business/Element;

    iget-boolean v0, v0, Lfr/testudo/spacecorsair/business/Element;->removed:Z

    if-eqz v0, :cond_65e

    .line 1054
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->target:Lfr/testudo/spacecorsair/business/Element;

    iget v0, v0, Lfr/testudo/spacecorsair/business/Element;->life:F

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_653

    invoke-direct {p0}, Lfr/testudo/spacecorsair/mod/ModFaction;->complete()V

    goto/16 :goto_12

    .line 1055
    :cond_653
    const/4 v0, 0x0

    iput-boolean v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->setupDone:Z

    const/4 v0, 0x0

    iput v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->zoneMs:I

    const/4 v0, 0x0

    iput-object v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->target:Lfr/testudo/spacecorsair/business/Element;

    goto/16 :goto_12

    .line 1058
    :cond_65e
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

    .line 1059
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->target:Lfr/testudo/spacecorsair/business/Element;

    check-cast v0, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->attackPlayerIfItNotTheCaseAlready()V

    .line 1060
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->soundManager:Lfr/testudo/spacecorsair/engine/SoundManager;

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/engine/SoundManager;->playDanger()V

    goto/16 :goto_12

    :cond_68d
    move v0, v1

    goto/16 :goto_1e9
.end method

.method public onElementDestroyed(Lfr/testudo/spacecorsair/business/Element;)V
    .registers 2

    .prologue
    .line 1227
    return-void
.end method

.method public onElementDestroyedByPlayer(Lfr/testudo/spacecorsair/business/Element;)V
    .registers 8

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1232
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

    .line 1233
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

    .line 1234
    iget v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->progress:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->progress:I

    .line 1235
    invoke-direct {p0}, Lfr/testudo/spacecorsair/mod/ModFaction;->save()V

    .line 1236
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->playerShip:Lfr/testudo/spacecorsair/business/player/PlayerShip;

    .line 1237
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

    .line 1239
    :cond_bf
    return-void

    .line 1232
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

    .line 1255
    invoke-direct {p0}, Lfr/testudo/spacecorsair/mod/ModFaction;->cleanup()V

    .line 1257
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

    .line 1258
    :cond_29
    const-string v0, "DELIVERY"

    iget-object v2, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->obj:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_50

    .line 1259
    new-array v0, v3, [Z

    iput-object v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->taken:[Z

    .line 1260
    const/4 v0, 0x2

    new-array v0, v0, [F

    iget-object v2, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->center:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v2, v2, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    aput v2, v0, v1

    iget-object v2, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->center:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v2, v2, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    aput v2, v0, v3

    iput-object v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->markers:[F

    .line 1266
    :cond_48
    :goto_48
    iput v1, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->progress:I

    .line 1267
    iput v1, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->phase:I

    .line 1268
    invoke-direct {p0}, Lfr/testudo/spacecorsair/mod/ModFaction;->save()V

    .line 1270
    :cond_4f
    return-void

    .line 1261
    :cond_50
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->markers:[F

    if-eqz v0, :cond_58

    iget v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->phase:I

    if-ne v0, v3, :cond_62

    .line 1262
    :cond_58
    const/4 v0, 0x6

    iget-object v2, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->center:Lfr/testudo/spacecorsair/engine/Vector2;

    const v3, 0x45098000    # 2200.0f

    invoke-direct {p0, v0, v2, v3}, Lfr/testudo/spacecorsair/mod/ModFaction;->scatter(ILfr/testudo/spacecorsair/engine/Vector2;F)V

    goto :goto_48

    :cond_62
    move v0, v1

    .line 1264
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

    .line 1212
    iget-object v2, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->spawned:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 1213
    iget-object v2, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->civs:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 1214
    iput-object v3, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->outpost:Lfr/testudo/spacecorsair/business/world/civil/CivilShip;

    .line 1215
    iput-object v3, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->target:Lfr/testudo/spacecorsair/business/Element;

    .line 1216
    iput-boolean v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->setupDone:Z

    .line 1217
    iput v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->zoneMs:I

    .line 1218
    iput-boolean v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->wavesOn:Z

    .line 1219
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModPlace;->clearBoost()V

    .line 1220
    invoke-direct {p0}, Lfr/testudo/spacecorsair/mod/ModFaction;->activeSector()Lfr/testudo/spacecorsair/game/levels/LevelId;

    move-result-object v2

    .line 1221
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

    .line 1222
    invoke-direct {p0, v1}, Lfr/testudo/spacecorsair/mod/ModFaction;->markGates(Z)V

    .line 1223
    return-void
.end method

.method public restoreState()V
    .registers 6

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 1369
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModFaction;->prefs()Landroid/content/SharedPreferences;

    move-result-object v3

    .line 1370
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

    .line 1371
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->spawned:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1372
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->civs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1373
    iput-object v2, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->outpost:Lfr/testudo/spacecorsair/business/world/civil/CivilShip;

    .line 1374
    iput-object v2, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->target:Lfr/testudo/spacecorsair/business/Element;

    .line 1375
    iput-boolean v1, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->setupDone:Z

    .line 1376
    iput v1, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->zoneMs:I

    .line 1377
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

    .line 1378
    :goto_59
    if-eqz v0, :cond_67

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModFaction;->level(Ljava/lang/String;)Lfr/testudo/spacecorsair/game/levels/LevelId;

    move-result-object v1

    if-eqz v1, :cond_67

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModFaction;->level(Ljava/lang/String;)Lfr/testudo/spacecorsair/game/levels/LevelId;

    move-result-object v0

    iput-object v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->zone:Lfr/testudo/spacecorsair/game/levels/LevelId;

    .line 1379
    :cond_67
    invoke-direct {p0}, Lfr/testudo/spacecorsair/mod/ModFaction;->load()V

    .line 1380
    return-void

    :cond_6b
    move v0, v1

    .line 1370
    goto :goto_28

    :cond_6d
    move-object v0, v2

    .line 1377
    goto :goto_59
.end method

.method public saveState()V
    .registers 1

    .prologue
    .line 1384
    return-void
.end method

.method public terminate()V
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 1360
    invoke-direct {p0, v0}, Lfr/testudo/spacecorsair/mod/ModFaction;->markGates(Z)V

    .line 1361
    iput-boolean v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->completed:Z

    .line 1362
    iput-boolean v0, p0, Lfr/testudo/spacecorsair/mod/ModFaction;->planned:Z

    .line 1363
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModFaction;->prefs()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1364
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

    .line 1365
    :cond_55
    return-void
.end method
