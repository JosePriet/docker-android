.class public Lfr/testudo/spacecorsair/game/levels/builders/OreBeltLevelBuilder;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final GATE_TO_HERMES_POS:Lfr/testudo/spacecorsair/engine/Vector2;

.field public static final GATE_TO_HUGO_WISDOM_POS:Lfr/testudo/spacecorsair/engine/Vector2;

.field public static final GATE_TO_VENTOHIGH_POS:Lfr/testudo/spacecorsair/engine/Vector2;

.field public static final LEVEL_MAX:I = 0x5

.field public static final LEVEL_MIN:I = 0x4

.field public static final MINING8CORP_STATION_POS:Lfr/testudo/spacecorsair/engine/Vector2;

.field public static final STATION_NAME:Ljava/lang/String; = "mining Corp"

.field public static final oreBeltAnimator:Lfr/testudo/spacecorsair/game/levels/LevelAnimator;

.field static final transportMiningActivityOne:[Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;

.field static final transportMiningActivityTwo:[Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;


# direct methods
.method static constructor <clinit>()V
    .registers 10

    .prologue
    const/high16 v9, 0x40000000    # 2.0f

    const v8, 0x453b8000    # 3000.0f

    const/high16 v7, 0x44480000    # 800.0f

    const/16 v6, 0xbb8

    const/4 v5, -0x1

    .line 37
    new-instance v0, Lfr/testudo/spacecorsair/engine/Vector2;

    const/4 v1, 0x0

    const v2, -0x3a63c000    # -5000.0f

    invoke-direct {v0, v1, v2}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>(FF)V

    sput-object v0, Lfr/testudo/spacecorsair/game/levels/builders/OreBeltLevelBuilder;->GATE_TO_VENTOHIGH_POS:Lfr/testudo/spacecorsair/engine/Vector2;

    .line 39
    new-instance v0, Lfr/testudo/spacecorsair/engine/Vector2;

    const v1, 0x45bb8000    # 6000.0f

    const v2, 0x468ca000    # 18000.0f

    invoke-direct {v0, v1, v2}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>(FF)V

    sput-object v0, Lfr/testudo/spacecorsair/game/levels/builders/OreBeltLevelBuilder;->GATE_TO_HERMES_POS:Lfr/testudo/spacecorsair/engine/Vector2;

    .line 41
    new-instance v0, Lfr/testudo/spacecorsair/engine/Vector2;

    const v1, -0x39f36000    # -9000.0f

    const v2, 0x451c4000    # 2500.0f

    invoke-direct {v0, v1, v2}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>(FF)V

    sput-object v0, Lfr/testudo/spacecorsair/game/levels/builders/OreBeltLevelBuilder;->GATE_TO_HUGO_WISDOM_POS:Lfr/testudo/spacecorsair/engine/Vector2;

    .line 43
    new-instance v0, Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-direct {v0, v8, v7}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>(FF)V

    sput-object v0, Lfr/testudo/spacecorsair/game/levels/builders/OreBeltLevelBuilder;->MINING8CORP_STATION_POS:Lfr/testudo/spacecorsair/engine/Vector2;

    .line 225
    const/16 v0, 0x17

    new-array v0, v0, [Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;

    const/4 v1, 0x0

    invoke-static {v8, v7, v6}, Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;->newMooveRandom(FFI)Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    invoke-static {v5, v5, v6}, Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;->newLockAsteroidAndGather(III)Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const/high16 v2, 0x40400000    # 3.0f

    invoke-static {v2}, Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;->newWait(F)Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    invoke-static {v5, v5, v6}, Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;->newLockAsteroidAndGather(III)Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x4

    invoke-static {v9}, Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;->newWait(F)Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x5

    invoke-static {v5, v5, v6}, Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;->newLockAsteroidAndGather(III)Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const/high16 v2, 0x40a00000    # 5.0f

    invoke-static {v2}, Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;->newWait(F)Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x7

    invoke-static {v8, v7, v6}, Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;->newMooveRandom(FFI)Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x8

    invoke-static {v5, v5, v6}, Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;->newLockAsteroidAndGather(III)Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x9

    invoke-static {v5, v5, v6}, Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;->newLockAsteroidAndGather(III)Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const/high16 v2, 0x40a00000    # 5.0f

    invoke-static {v2}, Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;->newWait(F)Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xb

    invoke-static {v5, v5, v6}, Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;->newLockAsteroidAndGather(III)Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xc

    invoke-static {v8, v7, v6}, Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;->newMooveRandom(FFI)Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xd

    invoke-static {v5, v5, v6}, Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;->newLockAsteroidAndGather(III)Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xe

    invoke-static {v5, v5, v6}, Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;->newLockAsteroidAndGather(III)Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xf

    invoke-static {v9}, Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;->newWait(F)Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x10

    invoke-static {v5, v5, v6}, Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;->newLockAsteroidAndGather(III)Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x11

    invoke-static {v8, v7, v6}, Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;->newMooveRandom(FFI)Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x12

    invoke-static {v5, v5, v6}, Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;->newLockAsteroidAndGather(III)Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x13

    invoke-static {v9}, Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;->newWait(F)Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x14

    invoke-static {v5, v5, v6}, Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;->newLockAsteroidAndGather(III)Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x15

    sget-object v2, Lfr/testudo/spacecorsair/business/world/station/ThreeDockStation;->LEFTPOINT:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v2, v2, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    sget-object v3, Lfr/testudo/spacecorsair/game/levels/builders/OreBeltLevelBuilder;->MINING8CORP_STATION_POS:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v3, v3, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    add-float/2addr v2, v3

    sget-object v3, Lfr/testudo/spacecorsair/business/world/station/ThreeDockStation;->LEFTPOINT:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v3, v3, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    sget-object v4, Lfr/testudo/spacecorsair/game/levels/builders/OreBeltLevelBuilder;->MINING8CORP_STATION_POS:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v4, v4, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    add-float/2addr v3, v4

    invoke-static {v2, v3}, Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;->newMoove(FF)Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const/high16 v2, 0x41200000    # 10.0f

    invoke-static {v2}, Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;->newWait(F)Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;

    move-result-object v2

    aput-object v2, v0, v1

    sput-object v0, Lfr/testudo/spacecorsair/game/levels/builders/OreBeltLevelBuilder;->transportMiningActivityOne:[Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;

    .line 249
    const/16 v0, 0x17

    new-array v0, v0, [Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;

    const/4 v1, 0x0

    invoke-static {v8, v7, v6}, Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;->newMooveRandom(FFI)Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    invoke-static {v5, v5, v6}, Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;->newLockAsteroidAndGather(III)Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const/high16 v2, 0x40400000    # 3.0f

    invoke-static {v2}, Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;->newWait(F)Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    invoke-static {v5, v5, v6}, Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;->newLockAsteroidAndGather(III)Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x4

    invoke-static {v9}, Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;->newWait(F)Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x5

    invoke-static {v5, v5, v6}, Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;->newLockAsteroidAndGather(III)Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const/high16 v2, 0x40a00000    # 5.0f

    invoke-static {v2}, Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;->newWait(F)Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x7

    invoke-static {v8, v7, v6}, Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;->newMooveRandom(FFI)Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x8

    invoke-static {v5, v5, v6}, Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;->newLockAsteroidAndGather(III)Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x9

    invoke-static {v5, v5, v6}, Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;->newLockAsteroidAndGather(III)Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const/high16 v2, 0x40a00000    # 5.0f

    invoke-static {v2}, Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;->newWait(F)Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xb

    invoke-static {v5, v5, v6}, Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;->newLockAsteroidAndGather(III)Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xc

    invoke-static {v8, v7, v6}, Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;->newMooveRandom(FFI)Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xd

    invoke-static {v5, v5, v6}, Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;->newLockAsteroidAndGather(III)Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xe

    invoke-static {v5, v5, v6}, Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;->newLockAsteroidAndGather(III)Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xf

    invoke-static {v9}, Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;->newWait(F)Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x10

    invoke-static {v5, v5, v6}, Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;->newLockAsteroidAndGather(III)Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x11

    invoke-static {v8, v7, v6}, Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;->newMooveRandom(FFI)Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x12

    invoke-static {v5, v5, v6}, Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;->newLockAsteroidAndGather(III)Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x13

    invoke-static {v9}, Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;->newWait(F)Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x14

    invoke-static {v5, v5, v6}, Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;->newLockAsteroidAndGather(III)Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x15

    sget-object v2, Lfr/testudo/spacecorsair/business/world/station/ThreeDockStation;->RIGHTPOINT:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v2, v2, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    sget-object v3, Lfr/testudo/spacecorsair/game/levels/builders/OreBeltLevelBuilder;->MINING8CORP_STATION_POS:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v3, v3, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    add-float/2addr v2, v3

    sget-object v3, Lfr/testudo/spacecorsair/business/world/station/ThreeDockStation;->RIGHTPOINT:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v3, v3, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    sget-object v4, Lfr/testudo/spacecorsair/game/levels/builders/OreBeltLevelBuilder;->MINING8CORP_STATION_POS:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v4, v4, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    add-float/2addr v3, v4

    invoke-static {v2, v3}, Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;->newMoove(FF)Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const/high16 v2, 0x41200000    # 10.0f

    invoke-static {v2}, Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;->newWait(F)Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;

    move-result-object v2

    aput-object v2, v0, v1

    sput-object v0, Lfr/testudo/spacecorsair/game/levels/builders/OreBeltLevelBuilder;->transportMiningActivityTwo:[Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;

    .line 277
    new-instance v0, Lfr/testudo/spacecorsair/game/levels/builders/OreBeltLevelBuilder$1;

    invoke-direct {v0}, Lfr/testudo/spacecorsair/game/levels/builders/OreBeltLevelBuilder$1;-><init>()V

    sput-object v0, Lfr/testudo/spacecorsair/game/levels/builders/OreBeltLevelBuilder;->oreBeltAnimator:Lfr/testudo/spacecorsair/game/levels/LevelAnimator;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static addAsteroids(Ljava/util/List;)V
    .registers 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lfr/testudo/spacecorsair/business/Element;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 152
    const/16 v3, 0x12c

    .line 153
    const/16 v4, 0x190

    .line 154
    const/16 v5, 0x10cc

    .line 155
    const/16 v6, 0xbb8

    .line 156
    const/16 v7, 0x320

    .line 159
    new-instance v8, Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-direct {v8}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>()V

    .line 161
    const/4 v2, 0x0

    :goto_10
    if-ge v2, v3, :cond_85

    .line 162
    mul-int/lit16 v9, v2, 0x168

    div-int/2addr v9, v3

    int-to-float v9, v9

    .line 164
    const/high16 v10, 0x42a00000    # 80.0f

    cmpl-float v10, v9, v10

    if-lez v10, :cond_25

    const/high16 v10, 0x42c80000    # 100.0f

    cmpg-float v10, v9, v10

    if-gez v10, :cond_25

    .line 161
    :goto_22
    add-int/lit8 v2, v2, 0x1

    goto :goto_10

    .line 168
    :cond_25
    float-to-double v10, v9

    invoke-static {v10, v11}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v10

    .line 169
    neg-int v9, v4

    int-to-double v12, v9

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v14

    const-wide/high16 v16, 0x4000000000000000L    # 2.0

    mul-double v14, v14, v16

    int-to-double v0, v4

    move-wide/from16 v16, v0

    mul-double v14, v14, v16

    add-double/2addr v12, v14

    double-to-float v9, v12

    neg-int v12, v4

    int-to-double v12, v12

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v14

    const-wide/high16 v16, 0x4000000000000000L    # 2.0

    mul-double v14, v14, v16

    int-to-double v0, v4

    move-wide/from16 v16, v0

    mul-double v14, v14, v16

    add-double/2addr v12, v14

    double-to-float v12, v12

    invoke-virtual {v8, v9, v12}, Lfr/testudo/spacecorsair/engine/Vector2;->set(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 170
    iget v9, v8, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    int-to-float v12, v6

    invoke-static {v10, v11}, Ljava/lang/Math;->cos(D)D

    move-result-wide v14

    int-to-double v0, v5

    move-wide/from16 v16, v0

    mul-double v14, v14, v16

    double-to-float v13, v14

    add-float/2addr v12, v13

    add-float/2addr v9, v12

    iput v9, v8, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    .line 171
    iget v9, v8, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    int-to-float v12, v7

    invoke-static {v10, v11}, Ljava/lang/Math;->sin(D)D

    move-result-wide v10

    int-to-double v14, v5

    mul-double/2addr v10, v14

    double-to-float v10, v10

    add-float/2addr v10, v12

    add-float/2addr v9, v10

    iput v9, v8, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    .line 174
    const/4 v9, 0x0

    invoke-static {v9}, Lfr/testudo/spacecorsair/business/factory/GamePools;->newRandomSizeAsteroid(Z)Lfr/testudo/spacecorsair/business/world/Asteroid;

    move-result-object v9

    sget-object v10, Lfr/testudo/spacecorsair/engine/Vector2;->ZERO:Lfr/testudo/spacecorsair/engine/Vector2;

    const/4 v11, 0x0

    invoke-virtual {v9, v8, v10, v11}, Lfr/testudo/spacecorsair/business/world/Asteroid;->init(Lfr/testudo/spacecorsair/engine/Vector2;Lfr/testudo/spacecorsair/engine/Vector2;F)Lfr/testudo/spacecorsair/business/world/Asteroid;

    move-result-object v9

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Lfr/testudo/spacecorsair/business/world/Asteroid;->enableDeperdition(Z)Lfr/testudo/spacecorsair/business/world/Asteroid;

    move-result-object v9

    move-object/from16 v0, p0

    invoke-interface {v0, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_22

    .line 179
    :cond_85
    return-void
.end method

.method private static addEnnemies(Ljava/util/List;)V
    .registers 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lfr/testudo/spacecorsair/business/Element;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 185
    sget-object v2, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    const v3, 0x7f0702d1

    invoke-virtual {v2, v3}, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->getLocalizedString(I)Ljava/lang/String;

    move-result-object v3

    .line 187
    const/16 v4, 0x50

    .line 188
    const/16 v5, 0x190

    .line 189
    const/16 v6, 0x10cc

    .line 190
    const/16 v7, 0xbb8

    .line 191
    const/16 v8, 0x320

    .line 194
    new-instance v9, Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-direct {v9}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>()V

    .line 196
    const/4 v2, 0x0

    :goto_19
    if-ge v2, v4, :cond_89

    .line 197
    mul-int/lit16 v10, v2, 0x168

    div-int/2addr v10, v4

    int-to-float v10, v10

    .line 199
    const/high16 v11, 0x42a00000    # 80.0f

    cmpl-float v11, v10, v11

    if-lez v11, :cond_2e

    const/high16 v11, 0x42c80000    # 100.0f

    cmpg-float v11, v10, v11

    if-gez v11, :cond_2e

    .line 196
    :goto_2b
    add-int/lit8 v2, v2, 0x1

    goto :goto_19

    .line 203
    :cond_2e
    float-to-double v10, v10

    invoke-static {v10, v11}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v10

    .line 204
    neg-int v12, v5

    int-to-double v12, v12

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v14

    const-wide/high16 v16, 0x4000000000000000L    # 2.0

    mul-double v14, v14, v16

    int-to-double v0, v5

    move-wide/from16 v16, v0

    mul-double v14, v14, v16

    add-double/2addr v12, v14

    double-to-float v12, v12

    neg-int v13, v5

    int-to-double v14, v13

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v16

    const-wide/high16 v18, 0x4000000000000000L    # 2.0

    mul-double v16, v16, v18

    int-to-double v0, v5

    move-wide/from16 v18, v0

    mul-double v16, v16, v18

    add-double v14, v14, v16

    double-to-float v13, v14

    invoke-virtual {v9, v12, v13}, Lfr/testudo/spacecorsair/engine/Vector2;->set(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 205
    iget v12, v9, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    int-to-float v13, v7

    invoke-static {v10, v11}, Ljava/lang/Math;->cos(D)D

    move-result-wide v14

    int-to-double v0, v6

    move-wide/from16 v16, v0

    mul-double v14, v14, v16

    double-to-float v14, v14

    add-float/2addr v13, v14

    add-float/2addr v12, v13

    iput v12, v9, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    .line 206
    iget v12, v9, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    int-to-float v13, v8

    invoke-static {v10, v11}, Ljava/lang/Math;->sin(D)D

    move-result-wide v10

    int-to-double v14, v6

    mul-double/2addr v10, v14

    double-to-float v10, v10

    add-float/2addr v10, v13

    add-float/2addr v10, v12

    iput v10, v9, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    .line 208
    const/4 v10, 0x4

    const/4 v11, 0x5

    invoke-static {v10, v11}, Lfr/testudo/spacecorsair/mod/ModStockSpawn;->newTaupe(II)Lfr/testudo/spacecorsair/business/ennemis/TaupeShip;

    move-result-object v10

    .line 209
    invoke-virtual {v10, v9}, Lfr/testudo/spacecorsair/business/ennemis/TaupeShip;->setPosition(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/business/Element;

    .line 210
    iput-object v3, v10, Lfr/testudo/spacecorsair/business/ennemis/TaupeShip;->specificName:Ljava/lang/String;

    .line 211
    move-object/from16 v0, p0

    invoke-interface {v0, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2b

    .line 220
    :cond_89
    return-void
.end method

.method private static addPortals(Ljava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lfr/testudo/spacecorsair/business/Element;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/high16 v4, 0x40e00000    # 7.0f

    const/4 v3, 0x0

    .line 97
    invoke-static {}, Lfr/testudo/spacecorsair/business/factory/GamePools;->newPortal()Lfr/testudo/spacecorsair/business/world/Portal;

    move-result-object v0

    const-string v1, "> ventohigh <"

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/business/world/Portal;->init(Ljava/lang/String;)Lfr/testudo/spacecorsair/business/world/Portal;

    move-result-object v0

    .line 98
    const-string v1, "ventohigh"

    iput-object v1, v0, Lfr/testudo/spacecorsair/business/world/Portal;->jumpLevelName:Ljava/lang/String;

    .line 99
    const-string v1, "> ore belt <"

    iput-object v1, v0, Lfr/testudo/spacecorsair/business/world/Portal;->jumpPortalName:Ljava/lang/String;

    .line 101
    iget-object v1, v0, Lfr/testudo/spacecorsair/business/world/Portal;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    sget-object v2, Lfr/testudo/spacecorsair/game/levels/builders/OreBeltLevelBuilder;->GATE_TO_VENTOHIGH_POS:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v1, v2}, Lfr/testudo/spacecorsair/engine/Vector2;->setSameAs(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 102
    iget-object v1, v0, Lfr/testudo/spacecorsair/business/world/Portal;->initialPlayerSpeed:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v1, v3, v4}, Lfr/testudo/spacecorsair/engine/Vector2;->set(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 103
    iput v3, v0, Lfr/testudo/spacecorsair/business/world/Portal;->initialPlayerSpin:F

    .line 104
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 107
    invoke-static {}, Lfr/testudo/spacecorsair/business/factory/GamePools;->newPortal()Lfr/testudo/spacecorsair/business/world/Portal;

    move-result-object v0

    const-string v1, "> hugo wisdom <"

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/business/world/Portal;->init(Ljava/lang/String;)Lfr/testudo/spacecorsair/business/world/Portal;

    move-result-object v0

    .line 108
    const-string v1, "hugo wisdom"

    iput-object v1, v0, Lfr/testudo/spacecorsair/business/world/Portal;->jumpLevelName:Ljava/lang/String;

    .line 109
    const-string v1, "> ore belt <"

    iput-object v1, v0, Lfr/testudo/spacecorsair/business/world/Portal;->jumpPortalName:Ljava/lang/String;

    .line 111
    iget-object v1, v0, Lfr/testudo/spacecorsair/business/world/Portal;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    sget-object v2, Lfr/testudo/spacecorsair/game/levels/builders/OreBeltLevelBuilder;->GATE_TO_HUGO_WISDOM_POS:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v1, v2}, Lfr/testudo/spacecorsair/engine/Vector2;->setSameAs(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 112
    iget-object v1, v0, Lfr/testudo/spacecorsair/business/world/Portal;->initialPlayerSpeed:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v1, v4, v3}, Lfr/testudo/spacecorsair/engine/Vector2;->set(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 113
    iput v3, v0, Lfr/testudo/spacecorsair/business/world/Portal;->initialPlayerSpin:F

    .line 114
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 117
    invoke-static {}, Lfr/testudo/spacecorsair/business/factory/GamePools;->newPortal()Lfr/testudo/spacecorsair/business/world/Portal;

    move-result-object v0

    const-string v1, "> hermes <"

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/business/world/Portal;->init(Ljava/lang/String;)Lfr/testudo/spacecorsair/business/world/Portal;

    move-result-object v0

    .line 118
    const-string v1, "hermes"

    iput-object v1, v0, Lfr/testudo/spacecorsair/business/world/Portal;->jumpLevelName:Ljava/lang/String;

    .line 119
    const-string v1, "> ore belt <"

    iput-object v1, v0, Lfr/testudo/spacecorsair/business/world/Portal;->jumpPortalName:Ljava/lang/String;

    .line 121
    iget-object v1, v0, Lfr/testudo/spacecorsair/business/world/Portal;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    sget-object v2, Lfr/testudo/spacecorsair/game/levels/builders/OreBeltLevelBuilder;->GATE_TO_HERMES_POS:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v1, v2}, Lfr/testudo/spacecorsair/engine/Vector2;->setSameAs(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 122
    iget-object v1, v0, Lfr/testudo/spacecorsair/business/world/Portal;->initialPlayerSpeed:Lfr/testudo/spacecorsair/engine/Vector2;

    const/high16 v2, -0x3f200000    # -7.0f

    invoke-virtual {v1, v3, v2}, Lfr/testudo/spacecorsair/engine/Vector2;->set(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 123
    iput v3, v0, Lfr/testudo/spacecorsair/business/world/Portal;->initialPlayerSpin:F

    .line 124
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 128
    return-void
.end method

.method private static addStation(Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lfr/testudo/spacecorsair/business/Element;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 134
    invoke-static {}, Lfr/testudo/spacecorsair/business/factory/GamePools;->newThreeDockStation()Lfr/testudo/spacecorsair/business/world/station/ThreeDockStation;

    move-result-object v0

    sget-object v1, Lfr/testudo/spacecorsair/game/levels/builders/OreBeltLevelBuilder;->MINING8CORP_STATION_POS:Lfr/testudo/spacecorsair/engine/Vector2;

    const-string v2, "mining Corp"

    invoke-virtual {v0, v1, v2}, Lfr/testudo/spacecorsair/business/world/station/ThreeDockStation;->init(Lfr/testudo/spacecorsair/engine/Vector2;Ljava/lang/String;)Lfr/testudo/spacecorsair/business/world/station/ThreeDockStation;

    move-result-object v0

    .line 137
    iget-object v1, v0, Lfr/testudo/spacecorsair/business/world/station/ThreeDockStation;->inventory:Lfr/testudo/spacecorsair/business/player/Inventory;

    sget-object v2, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->diamond:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    invoke-static {v2}, Lfr/testudo/spacecorsair/business/loot/SpaceObject;->ofInfinite(Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)Lfr/testudo/spacecorsair/business/loot/SpaceObject;

    move-result-object v2

    invoke-virtual {v1, v2}, Lfr/testudo/spacecorsair/business/player/Inventory;->addObject(Lfr/testudo/spacecorsair/business/loot/SpaceObject;)Z

    .line 138
    iget-object v1, v0, Lfr/testudo/spacecorsair/business/world/station/ThreeDockStation;->inventory:Lfr/testudo/spacecorsair/business/player/Inventory;

    sget-object v2, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->ruby:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    invoke-static {v2}, Lfr/testudo/spacecorsair/business/loot/SpaceObject;->ofInfinite(Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)Lfr/testudo/spacecorsair/business/loot/SpaceObject;

    move-result-object v2

    invoke-virtual {v1, v2}, Lfr/testudo/spacecorsair/business/player/Inventory;->addObject(Lfr/testudo/spacecorsair/business/loot/SpaceObject;)Z

    .line 139
    iget-object v1, v0, Lfr/testudo/spacecorsair/business/world/station/ThreeDockStation;->inventory:Lfr/testudo/spacecorsair/business/player/Inventory;

    sget-object v2, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->malachite:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    invoke-static {v2}, Lfr/testudo/spacecorsair/business/loot/SpaceObject;->ofInfinite(Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)Lfr/testudo/spacecorsair/business/loot/SpaceObject;

    move-result-object v2

    invoke-virtual {v1, v2}, Lfr/testudo/spacecorsair/business/player/Inventory;->addObject(Lfr/testudo/spacecorsair/business/loot/SpaceObject;)Z

    .line 140
    iget-object v1, v0, Lfr/testudo/spacecorsair/business/world/station/ThreeDockStation;->buyList:Ljava/util/List;

    sget-object v2, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->ALL_SELLABLE_BY_PLAYER:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 144
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 146
    return-void
.end method

.method private static addTest(Ljava/util/List;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lfr/testudo/spacecorsair/business/Element;",
            ">;)V"
        }
    .end annotation

    .prologue
    const v5, -0x3a254000    # -7000.0f

    const/high16 v4, -0x3b060000    # -2000.0f

    .line 83
    const/16 v0, 0x8

    invoke-static {v0}, Lfr/testudo/spacecorsair/business/world/civil/CivilFactory;->newGuardianCivilShip(I)Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;

    move-result-object v0

    .line 85
    const-string v1, "guardian"

    iput-object v1, v0, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->specificName:Ljava/lang/String;

    .line 86
    invoke-virtual {v0, v4, v5}, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->setPosition(FF)Lfr/testudo/spacecorsair/business/Element;

    .line 87
    const/4 v1, 0x1

    new-array v1, v1, [Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;

    const/4 v2, 0x0

    const/16 v3, 0xbb8

    invoke-static {v4, v5, v3}, Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;->newMooveRandom(FFI)Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->setActivity([Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;)V

    .line 89
    sget-object v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    invoke-virtual {v1, v0}, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->queueElementToBeAddToLevel(Lfr/testudo/spacecorsair/business/Element;)V

    .line 91
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 93
    return-void
.end method

.method public static getOreBelt()Lfr/testudo/spacecorsair/game/levels/Level;
    .registers 4

    .prologue
    .line 54
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 56
    invoke-static {v0}, Lfr/testudo/spacecorsair/game/levels/builders/OreBeltLevelBuilder;->addPortals(Ljava/util/List;)V

    .line 58
    invoke-static {v0}, Lfr/testudo/spacecorsair/game/levels/builders/OreBeltLevelBuilder;->addStation(Ljava/util/List;)V

    .line 60
    invoke-static {v0}, Lfr/testudo/spacecorsair/game/levels/builders/OreBeltLevelBuilder;->addAsteroids(Ljava/util/List;)V

    .line 64
    invoke-static {v0}, Lfr/testudo/spacecorsair/game/levels/builders/OreBeltLevelBuilder;->addEnnemies(Ljava/util/List;)V

    .line 71
    invoke-static {}, Lfr/testudo/spacecorsair/business/player/PlayerShip;->instance()Lfr/testudo/spacecorsair/business/player/PlayerShip;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 73
    new-instance v1, Lfr/testudo/spacecorsair/game/levels/Level;

    sget-object v2, Lfr/testudo/spacecorsair/game/levels/LevelId;->ORE_BELT:Lfr/testudo/spacecorsair/game/levels/LevelId;

    sget-object v3, Lfr/testudo/spacecorsair/game/levels/builders/OreBeltLevelBuilder;->oreBeltAnimator:Lfr/testudo/spacecorsair/game/levels/LevelAnimator;

    invoke-direct {v1, v2, v0, v3}, Lfr/testudo/spacecorsair/game/levels/Level;-><init>(Lfr/testudo/spacecorsair/game/levels/LevelId;Ljava/util/List;Lfr/testudo/spacecorsair/game/levels/LevelAnimator;)V

    .line 74
    const v0, 0x7f06002b

    iput v0, v1, Lfr/testudo/spacecorsair/game/levels/Level;->musicResourceId:I

    .line 76
    return-object v1
.end method
