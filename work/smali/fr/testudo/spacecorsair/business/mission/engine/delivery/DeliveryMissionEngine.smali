.class public Lfr/testudo/spacecorsair/business/mission/engine/delivery/DeliveryMissionEngine;
.super Lfr/testudo/spacecorsair/business/mission/MissionListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lfr/testudo/spacecorsair/business/mission/engine/delivery/DeliveryMissionEngine$1;
    }
.end annotation


# static fields
.field public static final DYNA_POP_DISTANCE:I = 0xbb8

.field public static final DYNA_POP_RANGE:I = 0x320

.field private static final LOOT_RANGE:I = 0x3e8

.field public static final STATIC_WAVE_DISPERTION:I = 0x44c

.field static temp:Lfr/testudo/spacecorsair/engine/Vector2;


# instance fields
.field public completed:Z

.field curDeliveryWave:Lfr/testudo/spacecorsair/business/mission/engine/delivery/DeliveryEnemiesWave;

.field public curEnnemiesWaves:Lfr/testudo/spacecorsair/business/mission/engine/delivery/DeliveryEnemiesWaves;

.field public currentDeliveryPhaseIndex:I

.field public currentPhase:Lfr/testudo/spacecorsair/business/mission/engine/delivery/DeliveryMissionPhase;

.field public isPlayerInCurPhaseZone:Z

.field public isPlayerInRecompenceZone:Z

.field public missionDescriptor:Lfr/testudo/spacecorsair/business/mission/engine/delivery/DeliveryMissionDescriptor;

.field nextWaveIndex:I

.field public recompenceZoneId:Lfr/testudo/spacecorsair/game/levels/LevelId;

.field public remainingGoodCounter:I

.field remainingTimeNextWaveInMilli:I

.field public stationGiveBackName:Ljava/lang/String;

.field public textAchieveNextPhaseObjective:Ljava/lang/String;

.field public textDockToRecompStation:Ljava/lang/String;

.field public textFailureGoodsDestroyed:Ljava/lang/String;

.field public textGotoNextPhaseZone:Ljava/lang/String;

.field public textGotoRecompZone:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 126
    new-instance v0, Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-direct {v0}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>()V

    sput-object v0, Lfr/testudo/spacecorsair/business/mission/engine/delivery/DeliveryMissionEngine;->temp:Lfr/testudo/spacecorsair/engine/Vector2;

    return-void
.end method

.method public constructor <init>(Lfr/testudo/spacecorsair/business/mission/engine/delivery/DeliveryMissionDescriptor;Lfr/testudo/spacecorsair/game/levels/LevelId;Ljava/lang/String;)V
    .registers 5

    .prologue
    const/4 v0, 0x0

    .line 47
    invoke-direct {p0}, Lfr/testudo/spacecorsair/business/mission/MissionListener;-><init>()V

    .line 38
    iput v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/delivery/DeliveryMissionEngine;->currentDeliveryPhaseIndex:I

    .line 39
    iput-boolean v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/delivery/DeliveryMissionEngine;->completed:Z

    .line 40
    iput-boolean v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/delivery/DeliveryMissionEngine;->isPlayerInRecompenceZone:Z

    .line 41
    iput-boolean v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/delivery/DeliveryMissionEngine;->isPlayerInCurPhaseZone:Z

    .line 43
    iput v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/delivery/DeliveryMissionEngine;->remainingGoodCounter:I

    .line 48
    iput-object p1, p0, Lfr/testudo/spacecorsair/business/mission/engine/delivery/DeliveryMissionEngine;->missionDescriptor:Lfr/testudo/spacecorsair/business/mission/engine/delivery/DeliveryMissionDescriptor;

    .line 49
    iput-object p2, p0, Lfr/testudo/spacecorsair/business/mission/engine/delivery/DeliveryMissionEngine;->recompenceZoneId:Lfr/testudo/spacecorsair/game/levels/LevelId;

    .line 50
    iput-object p3, p0, Lfr/testudo/spacecorsair/business/mission/engine/delivery/DeliveryMissionEngine;->stationGiveBackName:Ljava/lang/String;

    .line 51
    invoke-virtual {p0}, Lfr/testudo/spacecorsair/business/mission/engine/delivery/DeliveryMissionEngine;->initString()V

    .line 52
    return-void
.end method

.method private addGoodstoLoot()V
    .registers 15

    .prologue
    const-wide v12, 0x408f400000000000L    # 1000.0

    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    const-wide v8, -0x3f70c00000000000L    # -1000.0

    const/4 v1, 0x1

    .line 444
    move v0, v1

    :goto_e
    iget-object v2, p0, Lfr/testudo/spacecorsair/business/mission/engine/delivery/DeliveryMissionEngine;->currentPhase:Lfr/testudo/spacecorsair/business/mission/engine/delivery/DeliveryMissionPhase;

    iget-object v2, v2, Lfr/testudo/spacecorsair/business/mission/engine/delivery/DeliveryMissionPhase;->good:Lfr/testudo/spacecorsair/business/loot/SpaceObject;

    invoke-virtual {v2}, Lfr/testudo/spacecorsair/business/loot/SpaceObject;->getQuantity()I

    move-result v2

    if-gt v0, v2, :cond_61

    .line 445
    iget-object v2, p0, Lfr/testudo/spacecorsair/business/mission/engine/delivery/DeliveryMissionEngine;->currentPhase:Lfr/testudo/spacecorsair/business/mission/engine/delivery/DeliveryMissionPhase;

    iget-object v2, v2, Lfr/testudo/spacecorsair/business/mission/engine/delivery/DeliveryMissionPhase;->lootPositions:[Lfr/testudo/spacecorsair/engine/Vector2;

    iget-object v3, p0, Lfr/testudo/spacecorsair/business/mission/engine/delivery/DeliveryMissionEngine;->currentPhase:Lfr/testudo/spacecorsair/business/mission/engine/delivery/DeliveryMissionPhase;

    iget-object v3, v3, Lfr/testudo/spacecorsair/business/mission/engine/delivery/DeliveryMissionPhase;->lootPositions:[Lfr/testudo/spacecorsair/engine/Vector2;

    array-length v3, v3

    rem-int v3, v0, v3

    aget-object v2, v2, v3

    .line 446
    iget v3, v2, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    float-to-double v4, v3

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v6

    mul-double/2addr v6, v12

    mul-double/2addr v6, v10

    add-double/2addr v6, v8

    add-double/2addr v4, v6

    double-to-float v3, v4

    iput v3, v2, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    .line 447
    iget v3, v2, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    float-to-double v4, v3

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v6

    mul-double/2addr v6, v12

    mul-double/2addr v6, v10

    add-double/2addr v6, v8

    add-double/2addr v4, v6

    double-to-float v3, v4

    iput v3, v2, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    .line 448
    invoke-static {}, Lfr/testudo/spacecorsair/business/factory/GamePools;->newLoot()Lfr/testudo/spacecorsair/business/loot/LootElement;

    move-result-object v3

    iget-object v4, p0, Lfr/testudo/spacecorsair/business/mission/engine/delivery/DeliveryMissionEngine;->currentPhase:Lfr/testudo/spacecorsair/business/mission/engine/delivery/DeliveryMissionPhase;

    iget-object v4, v4, Lfr/testudo/spacecorsair/business/mission/engine/delivery/DeliveryMissionPhase;->good:Lfr/testudo/spacecorsair/business/loot/SpaceObject;

    invoke-virtual {v4}, Lfr/testudo/spacecorsair/business/loot/SpaceObject;->getSpaceObjectType()Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Lfr/testudo/spacecorsair/business/loot/LootElement;->missionInit(Lfr/testudo/spacecorsair/engine/Vector2;Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)Lfr/testudo/spacecorsair/business/loot/LootElement;

    move-result-object v2

    .line 449
    iput-boolean v1, v2, Lfr/testudo/spacecorsair/business/loot/LootElement;->isMissionObjective:Z

    .line 450
    sget-object v3, Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;->GREEN:Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;

    iput-object v3, v2, Lfr/testudo/spacecorsair/business/loot/LootElement;->missionObjectiveColor:Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;

    .line 451
    iput-boolean v1, v2, Lfr/testudo/spacecorsair/business/loot/LootElement;->stayForEver:Z

    .line 454
    sget-object v3, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    invoke-virtual {v3, v2}, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->queueElementToBeAddToLevel(Lfr/testudo/spacecorsair/business/Element;)V

    .line 444
    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    .line 457
    :cond_61
    return-void
.end method

.method private extractNextDynaWavePopPoint(Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;)Lfr/testudo/spacecorsair/engine/Vector2;
    .registers 11

    .prologue
    const/high16 v4, 0x42340000    # 45.0f

    const/high16 v3, 0x42b40000    # 90.0f

    const v8, 0x453b8000    # 3000.0f

    const-wide v6, 0x40a7700000000000L    # 3000.0

    .line 588
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->playerShip:Lfr/testudo/spacecorsair/business/player/PlayerShip;

    .line 590
    sget-object v1, Lfr/testudo/spacecorsair/business/mission/engine/delivery/DeliveryMissionEngine$1;->$SwitchMap$fr$testudo$spacecorsair$game$levels$arena$ArenaWave$PopConfig:[I

    iget-object v2, p1, Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;->popConfig:Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave$PopConfig;

    invoke-virtual {v2}, Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave$PopConfig;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_f0

    .line 635
    :goto_1d
    sget-object v0, Lfr/testudo/spacecorsair/business/mission/engine/delivery/DeliveryMissionEngine;->temp:Lfr/testudo/spacecorsair/engine/Vector2;

    return-object v0

    .line 593
    :pswitch_20
    sget-object v1, Lfr/testudo/spacecorsair/business/mission/engine/delivery/DeliveryMissionEngine;->temp:Lfr/testudo/spacecorsair/engine/Vector2;

    iget-object v2, v0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v1, v2}, Lfr/testudo/spacecorsair/engine/Vector2;->setSameAs(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 594
    iget v0, v0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->spin:F

    sub-float/2addr v0, v3

    sub-float/2addr v0, v4

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v0

    .line 596
    sget-object v2, Lfr/testudo/spacecorsair/business/mission/engine/delivery/DeliveryMissionEngine;->temp:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    mul-double/2addr v4, v6

    double-to-float v3, v4

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    mul-double/2addr v0, v6

    double-to-float v0, v0

    invoke-virtual {v2, v3, v0}, Lfr/testudo/spacecorsair/engine/Vector2;->add(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    goto :goto_1d

    .line 599
    :pswitch_42
    sget-object v1, Lfr/testudo/spacecorsair/business/mission/engine/delivery/DeliveryMissionEngine;->temp:Lfr/testudo/spacecorsair/engine/Vector2;

    iget-object v2, v0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v1, v2}, Lfr/testudo/spacecorsair/engine/Vector2;->setSameAs(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 600
    iget v0, v0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->spin:F

    sub-float/2addr v0, v3

    add-float/2addr v0, v4

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v0

    .line 601
    sget-object v2, Lfr/testudo/spacecorsair/business/mission/engine/delivery/DeliveryMissionEngine;->temp:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    mul-double/2addr v4, v6

    double-to-float v3, v4

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    mul-double/2addr v0, v6

    double-to-float v0, v0

    invoke-virtual {v2, v3, v0}, Lfr/testudo/spacecorsair/engine/Vector2;->add(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    goto :goto_1d

    .line 604
    :pswitch_64
    sget-object v1, Lfr/testudo/spacecorsair/business/mission/engine/delivery/DeliveryMissionEngine;->temp:Lfr/testudo/spacecorsair/engine/Vector2;

    iget-object v2, v0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v1, v2}, Lfr/testudo/spacecorsair/engine/Vector2;->setSameAs(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 605
    iget v0, v0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->spin:F

    add-float/2addr v0, v3

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v0

    .line 606
    sget-object v2, Lfr/testudo/spacecorsair/business/mission/engine/delivery/DeliveryMissionEngine;->temp:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    mul-double/2addr v4, v6

    double-to-float v3, v4

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    mul-double/2addr v0, v6

    double-to-float v0, v0

    invoke-virtual {v2, v3, v0}, Lfr/testudo/spacecorsair/engine/Vector2;->add(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    goto :goto_1d

    .line 609
    :pswitch_85
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v2

    .line 610
    const-wide v4, 0x3fd51eb851eb851fL    # 0.33

    cmpg-double v1, v2, v4

    if-gez v1, :cond_a3

    .line 611
    sget-object v1, Lfr/testudo/spacecorsair/business/mission/engine/delivery/DeliveryMissionEngine;->temp:Lfr/testudo/spacecorsair/engine/Vector2;

    iget-object v2, v0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v2, v2, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    sub-float/2addr v2, v8

    iget-object v0, v0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v0, v0, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    sub-float/2addr v0, v8

    invoke-virtual {v1, v2, v0}, Lfr/testudo/spacecorsair/engine/Vector2;->set(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    goto/16 :goto_1d

    .line 614
    :cond_a3
    const-wide v4, 0x3fe51eb851eb851fL    # 0.66

    cmpg-double v1, v2, v4

    if-gez v1, :cond_bd

    .line 615
    sget-object v1, Lfr/testudo/spacecorsair/business/mission/engine/delivery/DeliveryMissionEngine;->temp:Lfr/testudo/spacecorsair/engine/Vector2;

    iget-object v2, v0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v2, v2, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    add-float/2addr v2, v8

    iget-object v0, v0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v0, v0, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    add-float/2addr v0, v8

    invoke-virtual {v1, v2, v0}, Lfr/testudo/spacecorsair/engine/Vector2;->set(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    goto/16 :goto_1d

    .line 618
    :cond_bd
    sget-object v1, Lfr/testudo/spacecorsair/business/mission/engine/delivery/DeliveryMissionEngine;->temp:Lfr/testudo/spacecorsair/engine/Vector2;

    iget-object v2, v0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v2, v2, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    add-float/2addr v2, v8

    iget-object v0, v0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v0, v0, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    sub-float/2addr v0, v8

    invoke-virtual {v1, v2, v0}, Lfr/testudo/spacecorsair/engine/Vector2;->set(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    goto/16 :goto_1d

    .line 625
    :pswitch_ce
    sget-object v1, Lfr/testudo/spacecorsair/business/mission/engine/delivery/DeliveryMissionEngine;->temp:Lfr/testudo/spacecorsair/engine/Vector2;

    iget-object v2, v0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v1, v2}, Lfr/testudo/spacecorsair/engine/Vector2;->setSameAs(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 626
    iget v0, v0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->spin:F

    sub-float/2addr v0, v3

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v0

    .line 629
    sget-object v2, Lfr/testudo/spacecorsair/business/mission/engine/delivery/DeliveryMissionEngine;->temp:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    mul-double/2addr v4, v6

    double-to-float v3, v4

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    mul-double/2addr v0, v6

    double-to-float v0, v0

    invoke-virtual {v2, v3, v0}, Lfr/testudo/spacecorsair/engine/Vector2;->add(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    goto/16 :goto_1d

    .line 590
    :pswitch_data_f0
    .packed-switch 0x1
        :pswitch_20
        :pswitch_42
        :pswitch_64
        :pswitch_85
        :pswitch_ce
        :pswitch_ce
    .end packed-switch
.end method

.method private getNextStaticPopPoint()Lfr/testudo/spacecorsair/engine/Vector2;
    .registers 3

    .prologue
    .line 461
    iget-boolean v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/delivery/DeliveryMissionEngine;->isPlayerInCurPhaseZone:Z

    if-eqz v0, :cond_1e

    .line 463
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/Game;->currentLevel:Lfr/testudo/spacecorsair/game/levels/Level;

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/mission/engine/delivery/DeliveryMissionEngine;->currentPhase:Lfr/testudo/spacecorsair/business/mission/engine/delivery/DeliveryMissionPhase;

    iget-object v1, v1, Lfr/testudo/spacecorsair/business/mission/engine/delivery/DeliveryMissionPhase;->stationName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/game/levels/Level;->findStationByName(Ljava/lang/String;)Lfr/testudo/spacecorsair/business/world/station/Station;

    move-result-object v0

    .line 464
    if-eqz v0, :cond_3c

    .line 465
    sget-object v1, Lfr/testudo/spacecorsair/business/mission/engine/delivery/DeliveryMissionEngine;->temp:Lfr/testudo/spacecorsair/engine/Vector2;

    iget-object v0, v0, Lfr/testudo/spacecorsair/business/world/station/Station;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v1, v0}, Lfr/testudo/spacecorsair/engine/Vector2;->setSameAs(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 466
    sget-object v0, Lfr/testudo/spacecorsair/business/mission/engine/delivery/DeliveryMissionEngine;->temp:Lfr/testudo/spacecorsair/engine/Vector2;

    .line 477
    :goto_1d
    return-object v0

    .line 470
    :cond_1e
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/Game;->currentLevel:Lfr/testudo/spacecorsair/game/levels/Level;

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/mission/engine/delivery/DeliveryMissionEngine;->currentPhase:Lfr/testudo/spacecorsair/business/mission/engine/delivery/DeliveryMissionPhase;

    iget-object v1, v1, Lfr/testudo/spacecorsair/business/mission/engine/delivery/DeliveryMissionPhase;->sector:Lfr/testudo/spacecorsair/game/levels/LevelId;

    invoke-static {v1}, Lfr/testudo/spacecorsair/business/world/PathFinder;->getPortalNameToGoTo(Lfr/testudo/spacecorsair/game/levels/LevelId;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/game/levels/Level;->findPortalByName(Ljava/lang/String;)Lfr/testudo/spacecorsair/business/world/Portal;

    move-result-object v0

    .line 471
    if-eqz v0, :cond_3c

    .line 472
    sget-object v1, Lfr/testudo/spacecorsair/business/mission/engine/delivery/DeliveryMissionEngine;->temp:Lfr/testudo/spacecorsair/engine/Vector2;

    iget-object v0, v0, Lfr/testudo/spacecorsair/business/world/Portal;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v1, v0}, Lfr/testudo/spacecorsair/engine/Vector2;->setSameAs(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 473
    sget-object v0, Lfr/testudo/spacecorsair/business/mission/engine/delivery/DeliveryMissionEngine;->temp:Lfr/testudo/spacecorsair/engine/Vector2;

    goto :goto_1d

    .line 477
    :cond_3c
    const/4 v0, 0x0

    goto :goto_1d
.end method

.method private popEnemy(Lfr/testudo/spacecorsair/engine/Vector2;Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;Z)V
    .registers 16

    .prologue
    const/4 v0, 0x0

    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    .line 515
    iget v2, p2, Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;->ennemisLevelMin:I

    .line 516
    iget v1, p2, Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;->ennemisLevelMax:I

    .line 518
    iget-boolean v3, p2, Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;->isEnnemyLevelRelativeToPlayer:Z

    if-eqz v3, :cond_a0

    .line 519
    sget-object v3, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v3, v3, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v3, v3, Lfr/testudo/spacecorsair/game/Game;->playerInfo:Lfr/testudo/spacecorsair/business/player/PlayerInfo;

    iget v3, v3, Lfr/testudo/spacecorsair/business/player/PlayerInfo;->level:I

    add-int/2addr v2, v3

    .line 520
    sget-object v3, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v3, v3, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v3, v3, Lfr/testudo/spacecorsair/game/Game;->playerInfo:Lfr/testudo/spacecorsair/business/player/PlayerInfo;

    iget v3, v3, Lfr/testudo/spacecorsair/business/player/PlayerInfo;->level:I

    add-int/2addr v1, v3

    .line 521
    if-gez v2, :cond_20

    move v2, v0

    .line 524
    :cond_20
    if-gez v1, :cond_a0

    move v1, v2

    .line 528
    :goto_23
    iget-object v2, p2, Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;->enemisType:Lfr/testudo/spacecorsair/business/ennemis/EnnemisType;

    invoke-static {v2, v1, v0}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisFactory;->newEnnemis(Lfr/testudo/spacecorsair/business/ennemis/EnnemisType;II)Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    move-result-object v1

    .line 529
    const v0, 0x461c4000    # 10000.0f

    iput v0, v1, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->desengagementDistance:F

    .line 531
    iget-boolean v0, p2, Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;->isElite:Z

    if-eqz v0, :cond_35

    .line 532
    invoke-virtual {v1}, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->setElite()Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    .line 535
    :cond_35
    iget-object v0, p2, Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;->extraConfig:Lfr/testudo/spacecorsair/game/levels/arena/ArenaExtraEnemisConfig;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/levels/arena/ArenaExtraEnemisConfig;->name:Ljava/lang/String;

    if-eqz v0, :cond_8f

    .line 536
    iget-object v0, p2, Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;->extraConfig:Lfr/testudo/spacecorsair/game/levels/arena/ArenaExtraEnemisConfig;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/levels/arena/ArenaExtraEnemisConfig;->name:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->setSpecificName(Ljava/lang/String;)Lfr/testudo/spacecorsair/business/Element;

    .line 543
    :cond_42
    :goto_42
    iget-object v0, p2, Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;->alterationLaserSpecs:Lfr/testudo/spacecorsair/business/loot/stuff/alteration/AlterationSpecs;

    invoke-virtual {v1, v0}, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->withLaserAlterations(Lfr/testudo/spacecorsair/business/loot/stuff/alteration/AlterationSpecs;)Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    .line 544
    iget-object v0, p2, Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;->alterationMissileSpecs:Lfr/testudo/spacecorsair/business/loot/stuff/alteration/AlterationSpecs;

    invoke-virtual {v1, v0}, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->withMissileAlterations(Lfr/testudo/spacecorsair/business/loot/stuff/alteration/AlterationSpecs;)Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    .line 546
    if-eqz p3, :cond_9d

    const/16 v0, 0x44c

    .line 548
    :goto_50
    iget-object v2, v1, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v3, p1, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    int-to-float v4, v0

    sub-float/2addr v3, v4

    float-to-double v4, v3

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v6

    mul-double/2addr v6, v10

    int-to-double v8, v0

    mul-double/2addr v6, v8

    add-double/2addr v4, v6

    double-to-float v3, v4

    iget v4, p1, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    int-to-float v5, v0

    sub-float/2addr v4, v5

    float-to-double v4, v4

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v6

    mul-double/2addr v6, v10

    int-to-double v8, v0

    mul-double/2addr v6, v8

    add-double/2addr v4, v6

    double-to-float v0, v4

    invoke-virtual {v2, v3, v0}, Lfr/testudo/spacecorsair/engine/Vector2;->set(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 550
    if-nez p3, :cond_76

    .line 551
    invoke-virtual {v1}, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->initChasePlayer()Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    .line 553
    :cond_76
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->queueElementToBeAddToLevel(Lfr/testudo/spacecorsair/business/Element;)V

    .line 554
    iget-object v0, p2, Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;->enemisType:Lfr/testudo/spacecorsair/business/ennemis/EnnemisType;

    sget-object v1, Lfr/testudo/spacecorsair/business/ennemis/EnnemisType;->ALBATROS:Lfr/testudo/spacecorsair/business/ennemis/EnnemisType;

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8e

    .line 555
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/Game;->currentLevel:Lfr/testudo/spacecorsair/game/levels/Level;

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/game/levels/Level;->requestPlayerGotoLastPosOfElements()V

    .line 557
    :cond_8e
    return-void

    .line 538
    :cond_8f
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/delivery/DeliveryMissionEngine;->missionDescriptor:Lfr/testudo/spacecorsair/business/mission/engine/delivery/DeliveryMissionDescriptor;

    iget-object v0, v0, Lfr/testudo/spacecorsair/business/mission/engine/delivery/DeliveryMissionDescriptor;->enemiesName:Ljava/lang/String;

    if-eqz v0, :cond_42

    .line 539
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/delivery/DeliveryMissionEngine;->missionDescriptor:Lfr/testudo/spacecorsair/business/mission/engine/delivery/DeliveryMissionDescriptor;

    iget-object v0, v0, Lfr/testudo/spacecorsair/business/mission/engine/delivery/DeliveryMissionDescriptor;->enemiesName:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->setSpecificName(Ljava/lang/String;)Lfr/testudo/spacecorsair/business/Element;

    goto :goto_42

    .line 546
    :cond_9d
    const/16 v0, 0x320

    goto :goto_50

    :cond_a0
    move v0, v1

    move v1, v2

    goto :goto_23
.end method

.method private updateNextObjectiveText()V
    .registers 4

    .prologue
    const v2, 0x7f0701b1

    .line 88
    const/4 v0, 0x0

    iput-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/delivery/DeliveryMissionEngine;->textAchieveNextPhaseObjective:Ljava/lang/String;

    .line 90
    sget-object v0, Lfr/testudo/spacecorsair/business/mission/engine/delivery/DeliveryMissionEngine$1;->$SwitchMap$fr$testudo$spacecorsair$business$mission$engine$delivery$DeliveryMissionPhase$Type:[I

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/mission/engine/delivery/DeliveryMissionEngine;->currentPhase:Lfr/testudo/spacecorsair/business/mission/engine/delivery/DeliveryMissionPhase;

    iget-object v1, v1, Lfr/testudo/spacecorsair/business/mission/engine/delivery/DeliveryMissionPhase;->type:Lfr/testudo/spacecorsair/business/mission/engine/delivery/DeliveryMissionPhase$Type;

    invoke-virtual {v1}, Lfr/testudo/spacecorsair/business/mission/engine/delivery/DeliveryMissionPhase$Type;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_9c

    .line 102
    :goto_15
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/mission/engine/delivery/DeliveryMissionEngine;->textAchieveNextPhaseObjective:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lfr/testudo/spacecorsair/business/mission/engine/delivery/DeliveryMissionEngine;->remainingGoodCounter:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/mission/engine/delivery/DeliveryMissionEngine;->currentPhase:Lfr/testudo/spacecorsair/business/mission/engine/delivery/DeliveryMissionPhase;

    iget-object v1, v1, Lfr/testudo/spacecorsair/business/mission/engine/delivery/DeliveryMissionPhase;->good:Lfr/testudo/spacecorsair/business/loot/SpaceObject;

    invoke-virtual {v1}, Lfr/testudo/spacecorsair/business/loot/SpaceObject;->getSpaceObjectType()Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    move-result-object v1

    invoke-virtual {v1}, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->getLocalizedLabel()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/delivery/DeliveryMissionEngine;->textAchieveNextPhaseObjective:Ljava/lang/String;

    .line 103
    return-void

    .line 93
    :pswitch_43
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    invoke-virtual {v1, v2}, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->getStringRessource(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/delivery/DeliveryMissionEngine;->textAchieveNextPhaseObjective:Ljava/lang/String;

    goto :goto_15

    .line 96
    :pswitch_5f
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    invoke-virtual {v1, v2}, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->getStringRessource(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/delivery/DeliveryMissionEngine;->textAchieveNextPhaseObjective:Ljava/lang/String;

    goto :goto_15

    .line 99
    :pswitch_7b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    const v2, 0x7f0701b2

    invoke-virtual {v1, v2}, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->getStringRessource(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/delivery/DeliveryMissionEngine;->textAchieveNextPhaseObjective:Ljava/lang/String;

    goto/16 :goto_15

    .line 90
    nop

    :pswitch_data_9c
    .packed-switch 0x1
        :pswitch_43
        :pswitch_5f
        :pswitch_7b
    .end packed-switch
.end method


# virtual methods
.method public addCurrentDeliveryConditions()V
    .registers 4

    .prologue
    .line 392
    sget-object v0, Lfr/testudo/spacecorsair/business/mission/engine/delivery/DeliveryMissionEngine$1;->$SwitchMap$fr$testudo$spacecorsair$business$mission$engine$delivery$DeliveryMissionPhase$Type:[I

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/mission/engine/delivery/DeliveryMissionEngine;->currentPhase:Lfr/testudo/spacecorsair/business/mission/engine/delivery/DeliveryMissionPhase;

    iget-object v1, v1, Lfr/testudo/spacecorsair/business/mission/engine/delivery/DeliveryMissionPhase;->type:Lfr/testudo/spacecorsair/business/mission/engine/delivery/DeliveryMissionPhase$Type;

    invoke-virtual {v1}, Lfr/testudo/spacecorsair/business/mission/engine/delivery/DeliveryMissionPhase$Type;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_5a

    .line 410
    :goto_f
    return-void

    .line 395
    :pswitch_10
    invoke-direct {p0}, Lfr/testudo/spacecorsair/business/mission/engine/delivery/DeliveryMissionEngine;->addGoodstoLoot()V

    goto :goto_f

    .line 399
    :pswitch_14
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/Game;->currentLevel:Lfr/testudo/spacecorsair/game/levels/Level;

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/mission/engine/delivery/DeliveryMissionEngine;->currentPhase:Lfr/testudo/spacecorsair/business/mission/engine/delivery/DeliveryMissionPhase;

    iget-object v1, v1, Lfr/testudo/spacecorsair/business/mission/engine/delivery/DeliveryMissionPhase;->stationName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/game/levels/Level;->findStationByName(Ljava/lang/String;)Lfr/testudo/spacecorsair/business/world/station/Station;

    move-result-object v0

    .line 400
    iget-object v1, v0, Lfr/testudo/spacecorsair/business/world/station/Station;->inventory:Lfr/testudo/spacecorsair/business/player/Inventory;

    iget-object v2, p0, Lfr/testudo/spacecorsair/business/mission/engine/delivery/DeliveryMissionEngine;->currentPhase:Lfr/testudo/spacecorsair/business/mission/engine/delivery/DeliveryMissionPhase;

    iget-object v2, v2, Lfr/testudo/spacecorsair/business/mission/engine/delivery/DeliveryMissionPhase;->good:Lfr/testudo/spacecorsair/business/loot/SpaceObject;

    invoke-virtual {v2}, Lfr/testudo/spacecorsair/business/loot/SpaceObject;->clone()Lfr/testudo/spacecorsair/business/loot/SpaceObject;

    move-result-object v2

    invoke-virtual {v1, v2}, Lfr/testudo/spacecorsair/business/player/Inventory;->addObject(Lfr/testudo/spacecorsair/business/loot/SpaceObject;)Z

    .line 401
    iget-object v0, v0, Lfr/testudo/spacecorsair/business/world/station/Station;->buyList:Ljava/util/List;

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/mission/engine/delivery/DeliveryMissionEngine;->currentPhase:Lfr/testudo/spacecorsair/business/mission/engine/delivery/DeliveryMissionPhase;

    iget-object v1, v1, Lfr/testudo/spacecorsair/business/mission/engine/delivery/DeliveryMissionPhase;->good:Lfr/testudo/spacecorsair/business/loot/SpaceObject;

    invoke-virtual {v1}, Lfr/testudo/spacecorsair/business/loot/SpaceObject;->getSpaceObjectType()Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_f

    .line 405
    :pswitch_3d
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/Game;->currentLevel:Lfr/testudo/spacecorsair/game/levels/Level;

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/mission/engine/delivery/DeliveryMissionEngine;->currentPhase:Lfr/testudo/spacecorsair/business/mission/engine/delivery/DeliveryMissionPhase;

    iget-object v1, v1, Lfr/testudo/spacecorsair/business/mission/engine/delivery/DeliveryMissionPhase;->stationName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/game/levels/Level;->findStationByName(Ljava/lang/String;)Lfr/testudo/spacecorsair/business/world/station/Station;

    move-result-object v0

    .line 406
    iget-object v0, v0, Lfr/testudo/spacecorsair/business/world/station/Station;->buyList:Ljava/util/List;

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/mission/engine/delivery/DeliveryMissionEngine;->currentPhase:Lfr/testudo/spacecorsair/business/mission/engine/delivery/DeliveryMissionPhase;

    iget-object v1, v1, Lfr/testudo/spacecorsair/business/mission/engine/delivery/DeliveryMissionPhase;->good:Lfr/testudo/spacecorsair/business/loot/SpaceObject;

    invoke-virtual {v1}, Lfr/testudo/spacecorsair/business/loot/SpaceObject;->getSpaceObjectType()Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_f

    .line 392
    nop

    :pswitch_data_5a
    .packed-switch 0x1
        :pswitch_10
        :pswitch_14
        :pswitch_3d
    .end packed-switch
.end method

.method public canHyperdriveJump()Z
    .registers 7

    .prologue
    .line 329
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/Game;->playerCurrentShipInventory:Lfr/testudo/spacecorsair/business/player/Inventory;

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/business/player/Inventory;->containsDeliveryItem()Z

    move-result v0

    .line 331
    if-eqz v0, :cond_20

    .line 332
    sget-object v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v1, v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v1, v1, Lfr/testudo/spacecorsair/game/Game;->gameThread:Lfr/testudo/spacecorsair/engine/GameThread;

    const v2, 0x7f020054

    const v3, 0x7f070187

    const v4, 0x7f0701b3

    const/16 v5, 0x7d0

    invoke-virtual {v1, v2, v3, v4, v5}, Lfr/testudo/spacecorsair/engine/GameThread;->showDialog(IIII)V

    .line 335
    :cond_20
    if-nez v0, :cond_24

    const/4 v0, 0x1

    :goto_23
    return v0

    :cond_24
    const/4 v0, 0x0

    goto :goto_23
.end method

.method public enableStaticWave()V
    .registers 5

    .prologue
    .line 484
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/delivery/DeliveryMissionEngine;->currentPhase:Lfr/testudo/spacecorsair/business/mission/engine/delivery/DeliveryMissionPhase;

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/delivery/DeliveryMissionEngine;->currentPhase:Lfr/testudo/spacecorsair/business/mission/engine/delivery/DeliveryMissionPhase;

    iget-object v0, v0, Lfr/testudo/spacecorsair/business/mission/engine/delivery/DeliveryMissionPhase;->staticWaves:Lfr/testudo/spacecorsair/business/mission/engine/delivery/DeliveryEnemiesWaves;

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/delivery/DeliveryMissionEngine;->currentPhase:Lfr/testudo/spacecorsair/business/mission/engine/delivery/DeliveryMissionPhase;

    iget-object v0, v0, Lfr/testudo/spacecorsair/business/mission/engine/delivery/DeliveryMissionPhase;->excludedLevels:Ljava/util/List;

    sget-object v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v1, v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v1, v1, Lfr/testudo/spacecorsair/game/Game;->currentLevel:Lfr/testudo/spacecorsair/game/levels/Level;

    iget-object v1, v1, Lfr/testudo/spacecorsair/game/levels/Level;->id:Lfr/testudo/spacecorsair/game/levels/LevelId;

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 511
    :cond_1c
    return-void

    .line 488
    :cond_1d
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v0

    iget-object v2, p0, Lfr/testudo/spacecorsair/business/mission/engine/delivery/DeliveryMissionEngine;->currentPhase:Lfr/testudo/spacecorsair/business/mission/engine/delivery/DeliveryMissionPhase;

    iget-object v2, v2, Lfr/testudo/spacecorsair/business/mission/engine/delivery/DeliveryMissionPhase;->staticWaves:Lfr/testudo/spacecorsair/business/mission/engine/delivery/DeliveryEnemiesWaves;

    iget-object v2, v2, Lfr/testudo/spacecorsair/business/mission/engine/delivery/DeliveryEnemiesWaves;->waves:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    int-to-double v2, v2

    mul-double/2addr v0, v2

    double-to-int v0, v0

    .line 489
    iget-object v1, p0, Lfr/testudo/spacecorsair/business/mission/engine/delivery/DeliveryMissionEngine;->currentPhase:Lfr/testudo/spacecorsair/business/mission/engine/delivery/DeliveryMissionPhase;

    iget-object v1, v1, Lfr/testudo/spacecorsair/business/mission/engine/delivery/DeliveryMissionPhase;->staticWaves:Lfr/testudo/spacecorsair/business/mission/engine/delivery/DeliveryEnemiesWaves;

    iget-object v1, v1, Lfr/testudo/spacecorsair/business/mission/engine/delivery/DeliveryEnemiesWaves;->waves:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ne v0, v1, :cond_3c

    .line 490
    add-int/lit8 v0, v0, -0x1

    .line 494
    :cond_3c
    iget-object v1, p0, Lfr/testudo/spacecorsair/business/mission/engine/delivery/DeliveryMissionEngine;->currentPhase:Lfr/testudo/spacecorsair/business/mission/engine/delivery/DeliveryMissionPhase;

    iget-object v1, v1, Lfr/testudo/spacecorsair/business/mission/engine/delivery/DeliveryMissionPhase;->staticWaves:Lfr/testudo/spacecorsair/business/mission/engine/delivery/DeliveryEnemiesWaves;

    iget-object v1, v1, Lfr/testudo/spacecorsair/business/mission/engine/delivery/DeliveryEnemiesWaves;->waves:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfr/testudo/spacecorsair/business/mission/engine/delivery/DeliveryEnemiesWave;

    .line 495
    invoke-virtual {v0}, Lfr/testudo/spacecorsair/business/mission/engine/delivery/DeliveryEnemiesWave;->rollDice()Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 498
    invoke-direct {p0}, Lfr/testudo/spacecorsair/business/mission/engine/delivery/DeliveryMissionEngine;->getNextStaticPopPoint()Lfr/testudo/spacecorsair/engine/Vector2;

    move-result-object v1

    .line 500
    if-eqz v1, :cond_1c

    .line 504
    iget-object v2, v0, Lfr/testudo/spacecorsair/business/mission/engine/delivery/DeliveryEnemiesWave;->wave:Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;

    .line 505
    const/4 v0, 0x0

    :goto_57
    iget v3, v2, Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;->waveSize:I

    if-ge v0, v3, :cond_1c

    .line 506
    const/4 v3, 0x1

    invoke-direct {p0, v1, v2, v3}, Lfr/testudo/spacecorsair/business/mission/engine/delivery/DeliveryMissionEngine;->popEnemy(Lfr/testudo/spacecorsair/engine/Vector2;Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;Z)V

    .line 505
    add-int/lit8 v0, v0, 0x1

    goto :goto_57
.end method

.method public fetchNextDeliveryAction()V
    .registers 4

    .prologue
    .line 71
    iget v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/delivery/DeliveryMissionEngine;->currentDeliveryPhaseIndex:I

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/mission/engine/delivery/DeliveryMissionEngine;->missionDescriptor:Lfr/testudo/spacecorsair/business/mission/engine/delivery/DeliveryMissionDescriptor;

    iget-object v1, v1, Lfr/testudo/spacecorsair/business/mission/engine/delivery/DeliveryMissionDescriptor;->phases:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt v0, v1, :cond_13

    .line 72
    const/4 v0, 0x0

    iput-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/delivery/DeliveryMissionEngine;->currentPhase:Lfr/testudo/spacecorsair/business/mission/engine/delivery/DeliveryMissionPhase;

    .line 73
    invoke-virtual {p0}, Lfr/testudo/spacecorsair/business/mission/engine/delivery/DeliveryMissionEngine;->onCompleted()V

    .line 83
    :cond_12
    :goto_12
    return-void

    .line 76
    :cond_13
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/delivery/DeliveryMissionEngine;->missionDescriptor:Lfr/testudo/spacecorsair/business/mission/engine/delivery/DeliveryMissionDescriptor;

    iget-object v0, v0, Lfr/testudo/spacecorsair/business/mission/engine/delivery/DeliveryMissionDescriptor;->phases:Ljava/util/List;

    iget v1, p0, Lfr/testudo/spacecorsair/business/mission/engine/delivery/DeliveryMissionEngine;->currentDeliveryPhaseIndex:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfr/testudo/spacecorsair/business/mission/engine/delivery/DeliveryMissionPhase;

    iput-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/delivery/DeliveryMissionEngine;->currentPhase:Lfr/testudo/spacecorsair/business/mission/engine/delivery/DeliveryMissionPhase;

    .line 77
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/delivery/DeliveryMissionEngine;->currentPhase:Lfr/testudo/spacecorsair/business/mission/engine/delivery/DeliveryMissionPhase;

    iget-object v0, v0, Lfr/testudo/spacecorsair/business/mission/engine/delivery/DeliveryMissionPhase;->good:Lfr/testudo/spacecorsair/business/loot/SpaceObject;

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/business/loot/SpaceObject;->getQuantity()I

    move-result v0

    iput v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/delivery/DeliveryMissionEngine;->remainingGoodCounter:I

    .line 78
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    const v2, 0x7f070120

    invoke-virtual {v1, v2}, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->getStringRessource(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/mission/engine/delivery/DeliveryMissionEngine;->currentPhase:Lfr/testudo/spacecorsair/business/mission/engine/delivery/DeliveryMissionPhase;

    iget-object v1, v1, Lfr/testudo/spacecorsair/business/mission/engine/delivery/DeliveryMissionPhase;->sector:Lfr/testudo/spacecorsair/game/levels/LevelId;

    iget-object v1, v1, Lfr/testudo/spacecorsair/game/levels/LevelId;->levelName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/delivery/DeliveryMissionEngine;->textGotoNextPhaseZone:Ljava/lang/String;

    .line 79
    invoke-direct {p0}, Lfr/testudo/spacecorsair/business/mission/engine/delivery/DeliveryMissionEngine;->updateNextObjectiveText()V

    .line 80
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/delivery/DeliveryMissionEngine;->currentPhase:Lfr/testudo/spacecorsair/business/mission/engine/delivery/DeliveryMissionPhase;

    iget-object v0, v0, Lfr/testudo/spacecorsair/business/mission/engine/delivery/DeliveryMissionPhase;->phaseStartDialog:Lfr/testudo/spacecorsair/game/CharacterDialog;

    if-eqz v0, :cond_12

    .line 81
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/Game;->gameThread:Lfr/testudo/spacecorsair/engine/GameThread;

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/mission/engine/delivery/DeliveryMissionEngine;->currentPhase:Lfr/testudo/spacecorsair/business/mission/engine/delivery/DeliveryMissionPhase;

    iget-object v1, v1, Lfr/testudo/spacecorsair/business/mission/engine/delivery/DeliveryMissionPhase;->phaseStartDialog:Lfr/testudo/spacecorsair/game/CharacterDialog;

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/engine/GameThread;->showDialog(Lfr/testudo/spacecorsair/game/CharacterDialog;)V

    goto :goto_12
.end method

.method public fetchNextEnnemyWaves()V
    .registers 3

    .prologue
    .line 130
    const/4 v0, 0x0

    iput-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/delivery/DeliveryMissionEngine;->curDeliveryWave:Lfr/testudo/spacecorsair/business/mission/engine/delivery/DeliveryEnemiesWave;

    .line 131
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/delivery/DeliveryMissionEngine;->currentPhase:Lfr/testudo/spacecorsair/business/mission/engine/delivery/DeliveryMissionPhase;

    if-eqz v0, :cond_2b

    iget-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/delivery/DeliveryMissionEngine;->currentPhase:Lfr/testudo/spacecorsair/business/mission/engine/delivery/DeliveryMissionPhase;

    iget-object v0, v0, Lfr/testudo/spacecorsair/business/mission/engine/delivery/DeliveryMissionPhase;->excludedLevels:Ljava/util/List;

    sget-object v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v1, v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v1, v1, Lfr/testudo/spacecorsair/game/Game;->currentLevel:Lfr/testudo/spacecorsair/game/levels/Level;

    iget-object v1, v1, Lfr/testudo/spacecorsair/game/levels/Level;->id:Lfr/testudo/spacecorsair/game/levels/LevelId;

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2b

    .line 132
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/delivery/DeliveryMissionEngine;->currentPhase:Lfr/testudo/spacecorsair/business/mission/engine/delivery/DeliveryMissionPhase;

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/business/mission/engine/delivery/DeliveryMissionPhase;->pickWavesConfig()Lfr/testudo/spacecorsair/business/mission/engine/delivery/DeliveryEnemiesWaves;

    move-result-object v0

    iput-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/delivery/DeliveryMissionEngine;->curEnnemiesWaves:Lfr/testudo/spacecorsair/business/mission/engine/delivery/DeliveryEnemiesWaves;

    .line 133
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/delivery/DeliveryMissionEngine;->curEnnemiesWaves:Lfr/testudo/spacecorsair/business/mission/engine/delivery/DeliveryEnemiesWaves;

    if-eqz v0, :cond_2b

    .line 134
    const/4 v0, 0x0

    iput v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/delivery/DeliveryMissionEngine;->nextWaveIndex:I

    .line 135
    invoke-virtual {p0}, Lfr/testudo/spacecorsair/business/mission/engine/delivery/DeliveryMissionEngine;->initNextWave()V

    .line 138
    :cond_2b
    return-void
.end method

.method public getCurrentInstruction()Ljava/lang/String;
    .registers 2

    .prologue
    .line 203
    iget-boolean v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/delivery/DeliveryMissionEngine;->completed:Z

    if-eqz v0, :cond_e

    .line 204
    iget-boolean v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/delivery/DeliveryMissionEngine;->isPlayerInRecompenceZone:Z

    if-eqz v0, :cond_b

    .line 205
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/delivery/DeliveryMissionEngine;->textDockToRecompStation:Ljava/lang/String;

    .line 216
    :goto_a
    return-object v0

    .line 208
    :cond_b
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/delivery/DeliveryMissionEngine;->textGotoRecompZone:Ljava/lang/String;

    goto :goto_a

    .line 212
    :cond_e
    iget-boolean v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/delivery/DeliveryMissionEngine;->isPlayerInCurPhaseZone:Z

    if-eqz v0, :cond_15

    .line 213
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/delivery/DeliveryMissionEngine;->textAchieveNextPhaseObjective:Ljava/lang/String;

    goto :goto_a

    .line 216
    :cond_15
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/delivery/DeliveryMissionEngine;->textGotoNextPhaseZone:Ljava/lang/String;

    goto :goto_a
.end method

.method public giveUp()V
    .registers 1

    .prologue
    .line 247
    invoke-virtual {p0}, Lfr/testudo/spacecorsair/business/mission/engine/delivery/DeliveryMissionEngine;->terminate()V

    .line 248
    return-void
.end method

.method public init()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 224
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/Game;->playerCurrentShipInventory:Lfr/testudo/spacecorsair/business/player/Inventory;

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/business/player/Inventory;->removeAllDeliveryItems()V

    .line 225
    iput v1, p0, Lfr/testudo/spacecorsair/business/mission/engine/delivery/DeliveryMissionEngine;->currentDeliveryPhaseIndex:I

    .line 226
    iput-boolean v1, p0, Lfr/testudo/spacecorsair/business/mission/engine/delivery/DeliveryMissionEngine;->completed:Z

    .line 227
    invoke-virtual {p0}, Lfr/testudo/spacecorsair/business/mission/engine/delivery/DeliveryMissionEngine;->fetchNextDeliveryAction()V

    .line 228
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/Game;->currentLevel:Lfr/testudo/spacecorsair/game/levels/Level;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/levels/Level;->name:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lfr/testudo/spacecorsair/business/mission/engine/delivery/DeliveryMissionEngine;->onZoneChanged(Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    return-void
.end method

.method public initNextWave()V
    .registers 3

    .prologue
    .line 146
    iget v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/delivery/DeliveryMissionEngine;->nextWaveIndex:I

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/mission/engine/delivery/DeliveryMissionEngine;->curEnnemiesWaves:Lfr/testudo/spacecorsair/business/mission/engine/delivery/DeliveryEnemiesWaves;

    iget-object v1, v1, Lfr/testudo/spacecorsair/business/mission/engine/delivery/DeliveryEnemiesWaves;->waves:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt v0, v1, :cond_10

    .line 147
    invoke-virtual {p0}, Lfr/testudo/spacecorsair/business/mission/engine/delivery/DeliveryMissionEngine;->fetchNextEnnemyWaves()V

    .line 154
    :goto_f
    return-void

    .line 150
    :cond_10
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/delivery/DeliveryMissionEngine;->curEnnemiesWaves:Lfr/testudo/spacecorsair/business/mission/engine/delivery/DeliveryEnemiesWaves;

    iget-object v0, v0, Lfr/testudo/spacecorsair/business/mission/engine/delivery/DeliveryEnemiesWaves;->waves:Ljava/util/List;

    iget v1, p0, Lfr/testudo/spacecorsair/business/mission/engine/delivery/DeliveryMissionEngine;->nextWaveIndex:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfr/testudo/spacecorsair/business/mission/engine/delivery/DeliveryEnemiesWave;

    iput-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/delivery/DeliveryMissionEngine;->curDeliveryWave:Lfr/testudo/spacecorsair/business/mission/engine/delivery/DeliveryEnemiesWave;

    .line 151
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/delivery/DeliveryMissionEngine;->curDeliveryWave:Lfr/testudo/spacecorsair/business/mission/engine/delivery/DeliveryEnemiesWave;

    iget-object v0, v0, Lfr/testudo/spacecorsair/business/mission/engine/delivery/DeliveryEnemiesWave;->wave:Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;->nextWaveCondition:Lfr/testudo/spacecorsair/game/levels/arena/NextWaveCondition;

    iget v0, v0, Lfr/testudo/spacecorsair/game/levels/arena/NextWaveCondition;->timingInSeconds:I

    mul-int/lit16 v0, v0, 0x3e8

    iput v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/delivery/DeliveryMissionEngine;->remainingTimeNextWaveInMilli:I

    .line 153
    iget v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/delivery/DeliveryMissionEngine;->nextWaveIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/delivery/DeliveryMissionEngine;->nextWaveIndex:I

    goto :goto_f
.end method

.method public initString()V
    .registers 4

    .prologue
    .line 56
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    const v2, 0x7f070121

    invoke-virtual {v1, v2}, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->getStringRessource(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/mission/engine/delivery/DeliveryMissionEngine;->recompenceZoneId:Lfr/testudo/spacecorsair/game/levels/LevelId;

    iget-object v1, v1, Lfr/testudo/spacecorsair/game/levels/LevelId;->levelName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/delivery/DeliveryMissionEngine;->textGotoRecompZone:Ljava/lang/String;

    .line 57
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    const v2, 0x7f070123

    invoke-virtual {v1, v2}, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->getStringRessource(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/mission/engine/delivery/DeliveryMissionEngine;->stationGiveBackName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/delivery/DeliveryMissionEngine;->textDockToRecompStation:Ljava/lang/String;

    .line 58
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    const v1, 0x7f0701b0

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->getStringRessource(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/delivery/DeliveryMissionEngine;->textFailureGoodsDestroyed:Ljava/lang/String;

    .line 59
    return-void
.end method

.method public isCompleted()Z
    .registers 2

    .prologue
    .line 257
    iget-boolean v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/delivery/DeliveryMissionEngine;->completed:Z

    return v0
.end method

.method public onCompleted()V
    .registers 3

    .prologue
    .line 62
    const/4 v0, 0x1

    iput-boolean v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/delivery/DeliveryMissionEngine;->completed:Z

    .line 64
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    const v1, 0x7f0702c1

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->getStringRessource(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-static {v0, v1}, Lfr/testudo/spacecorsair/display/hud/WelcomeMessage;->setText(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->soundManager:Lfr/testudo/spacecorsair/engine/SoundManager;

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/engine/SoundManager;->playMissionComplete()V

    .line 67
    return-void
.end method

.method public onCurrentPhaseCompleted()V
    .registers 3

    .prologue
    .line 431
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lfr/testudo/spacecorsair/business/mission/engine/delivery/DeliveryMissionEngine;->setPhaseGateAndStationTarget(Z)V

    .line 432
    iget v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/delivery/DeliveryMissionEngine;->currentDeliveryPhaseIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/delivery/DeliveryMissionEngine;->currentDeliveryPhaseIndex:I

    .line 433
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/delivery/DeliveryMissionEngine;->currentPhase:Lfr/testudo/spacecorsair/business/mission/engine/delivery/DeliveryMissionPhase;

    iget-object v0, v0, Lfr/testudo/spacecorsair/business/mission/engine/delivery/DeliveryMissionPhase;->phaseEndDialog:Lfr/testudo/spacecorsair/game/CharacterDialog;

    if-eqz v0, :cond_1d

    .line 434
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/Game;->gameThread:Lfr/testudo/spacecorsair/engine/GameThread;

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/mission/engine/delivery/DeliveryMissionEngine;->currentPhase:Lfr/testudo/spacecorsair/business/mission/engine/delivery/DeliveryMissionPhase;

    iget-object v1, v1, Lfr/testudo/spacecorsair/business/mission/engine/delivery/DeliveryMissionPhase;->phaseEndDialog:Lfr/testudo/spacecorsair/game/CharacterDialog;

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/engine/GameThread;->showDialog(Lfr/testudo/spacecorsair/game/CharacterDialog;)V

    .line 436
    :cond_1d
    invoke-virtual {p0}, Lfr/testudo/spacecorsair/business/mission/engine/delivery/DeliveryMissionEngine;->fetchNextDeliveryAction()V

    .line 437
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/Game;->currentLevel:Lfr/testudo/spacecorsair/game/levels/Level;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/levels/Level;->name:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lfr/testudo/spacecorsair/business/mission/engine/delivery/DeliveryMissionEngine;->onZoneChanged(Ljava/lang/String;Ljava/lang/String;)V

    .line 438
    return-void
.end method

.method public onDoPhysic(J)V
    .registers 6

    .prologue
    .line 190
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/delivery/DeliveryMissionEngine;->curDeliveryWave:Lfr/testudo/spacecorsair/business/mission/engine/delivery/DeliveryEnemiesWave;

    if-eqz v0, :cond_12

    .line 191
    iget v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/delivery/DeliveryMissionEngine;->remainingTimeNextWaveInMilli:I

    int-to-long v0, v0

    sub-long/2addr v0, p1

    long-to-int v0, v0

    iput v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/delivery/DeliveryMissionEngine;->remainingTimeNextWaveInMilli:I

    .line 192
    iget v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/delivery/DeliveryMissionEngine;->remainingTimeNextWaveInMilli:I

    if-gtz v0, :cond_12

    .line 193
    invoke-virtual {p0}, Lfr/testudo/spacecorsair/business/mission/engine/delivery/DeliveryMissionEngine;->onNextWave()V

    .line 197
    :cond_12
    return-void
.end method

.method public onElementDestroyed(Lfr/testudo/spacecorsair/business/Element;)V
    .registers 2

    .prologue
    .line 161
    return-void
.end method

.method public onElementDestroyedByPlayer(Lfr/testudo/spacecorsair/business/Element;)V
    .registers 2

    .prologue
    .line 166
    return-void
.end method

.method public onNextWave()V
    .registers 6

    .prologue
    const/4 v1, 0x0

    .line 567
    const-string v0, "new vave !"

    invoke-static {v0}, Lfr/testudo/spacecorsair/utils/Logs;->d(Ljava/lang/String;)V

    .line 568
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/Game;->currentLevel:Lfr/testudo/spacecorsair/game/levels/Level;

    iget-object v2, p0, Lfr/testudo/spacecorsair/business/mission/engine/delivery/DeliveryMissionEngine;->missionDescriptor:Lfr/testudo/spacecorsair/business/mission/engine/delivery/DeliveryMissionDescriptor;

    iget v2, v2, Lfr/testudo/spacecorsair/business/mission/engine/delivery/DeliveryMissionDescriptor;->maxAttackingPlayerEnemis:I

    invoke-virtual {v0, v2}, Lfr/testudo/spacecorsair/game/levels/Level;->isThereMoreAttackingPlayerEnemiesThan(I)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 570
    invoke-virtual {p0}, Lfr/testudo/spacecorsair/business/mission/engine/delivery/DeliveryMissionEngine;->initNextWave()V

    .line 571
    const-string v0, "trop d\'ennemis vague ignor\u00e9e"

    invoke-static {v0}, Lfr/testudo/spacecorsair/utils/Logs;->d(Ljava/lang/String;)V

    .line 585
    :goto_1e
    return-void

    .line 575
    :cond_1f
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/delivery/DeliveryMissionEngine;->curDeliveryWave:Lfr/testudo/spacecorsair/business/mission/engine/delivery/DeliveryEnemiesWave;

    iget-object v2, v0, Lfr/testudo/spacecorsair/business/mission/engine/delivery/DeliveryEnemiesWave;->wave:Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;

    .line 577
    invoke-direct {p0, v2}, Lfr/testudo/spacecorsair/business/mission/engine/delivery/DeliveryMissionEngine;->extractNextDynaWavePopPoint(Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;)Lfr/testudo/spacecorsair/engine/Vector2;

    move-result-object v3

    move v0, v1

    .line 579
    :goto_28
    iget v4, v2, Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;->waveSize:I

    if-ge v0, v4, :cond_32

    .line 580
    invoke-direct {p0, v3, v2, v1}, Lfr/testudo/spacecorsair/business/mission/engine/delivery/DeliveryMissionEngine;->popEnemy(Lfr/testudo/spacecorsair/engine/Vector2;Lfr/testudo/spacecorsair/game/levels/arena/ArenaWave;Z)V

    .line 579
    add-int/lit8 v0, v0, 0x1

    goto :goto_28

    .line 583
    :cond_32
    invoke-virtual {p0}, Lfr/testudo/spacecorsair/business/mission/engine/delivery/DeliveryMissionEngine;->initNextWave()V

    goto :goto_1e
.end method

.method public onPlayerBuyItem(Lfr/testudo/spacecorsair/business/loot/SpaceObject;)V
    .registers 4

    .prologue
    .line 293
    invoke-super {p0, p1}, Lfr/testudo/spacecorsair/business/mission/MissionListener;->onPlayerBuyItem(Lfr/testudo/spacecorsair/business/loot/SpaceObject;)V

    .line 295
    iget-boolean v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/delivery/DeliveryMissionEngine;->isPlayerInCurPhaseZone:Z

    if-eqz v0, :cond_2b

    invoke-virtual {p1}, Lfr/testudo/spacecorsair/business/loot/SpaceObject;->getSpaceObjectType()Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    move-result-object v0

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/mission/engine/delivery/DeliveryMissionEngine;->currentPhase:Lfr/testudo/spacecorsair/business/mission/engine/delivery/DeliveryMissionPhase;

    iget-object v1, v1, Lfr/testudo/spacecorsair/business/mission/engine/delivery/DeliveryMissionPhase;->good:Lfr/testudo/spacecorsair/business/loot/SpaceObject;

    invoke-virtual {v1}, Lfr/testudo/spacecorsair/business/loot/SpaceObject;->getSpaceObjectType()Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 297
    sget-object v0, Lfr/testudo/spacecorsair/business/mission/engine/delivery/DeliveryMissionEngine$1;->$SwitchMap$fr$testudo$spacecorsair$business$mission$engine$delivery$DeliveryMissionPhase$Type:[I

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/mission/engine/delivery/DeliveryMissionEngine;->currentPhase:Lfr/testudo/spacecorsair/business/mission/engine/delivery/DeliveryMissionPhase;

    iget-object v1, v1, Lfr/testudo/spacecorsair/business/mission/engine/delivery/DeliveryMissionPhase;->type:Lfr/testudo/spacecorsair/business/mission/engine/delivery/DeliveryMissionPhase$Type;

    invoke-virtual {v1}, Lfr/testudo/spacecorsair/business/mission/engine/delivery/DeliveryMissionPhase$Type;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_5e

    .line 320
    :cond_28
    :goto_28
    :pswitch_28
    invoke-direct {p0}, Lfr/testudo/spacecorsair/business/mission/engine/delivery/DeliveryMissionEngine;->updateNextObjectiveText()V

    .line 324
    :cond_2b
    :goto_2b
    return-void

    .line 302
    :pswitch_2c
    iget v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/delivery/DeliveryMissionEngine;->remainingGoodCounter:I

    invoke-virtual {p1}, Lfr/testudo/spacecorsair/business/loot/SpaceObject;->getQuantity()I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/delivery/DeliveryMissionEngine;->remainingGoodCounter:I

    .line 303
    iget v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/delivery/DeliveryMissionEngine;->remainingGoodCounter:I

    if-gtz v0, :cond_28

    .line 305
    invoke-virtual {p0}, Lfr/testudo/spacecorsair/business/mission/engine/delivery/DeliveryMissionEngine;->onCurrentPhaseCompleted()V

    goto :goto_2b

    .line 312
    :pswitch_3d
    iget v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/delivery/DeliveryMissionEngine;->remainingGoodCounter:I

    invoke-virtual {p1}, Lfr/testudo/spacecorsair/business/loot/SpaceObject;->getQuantity()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/delivery/DeliveryMissionEngine;->remainingGoodCounter:I

    .line 313
    iget v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/delivery/DeliveryMissionEngine;->remainingGoodCounter:I

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/mission/engine/delivery/DeliveryMissionEngine;->currentPhase:Lfr/testudo/spacecorsair/business/mission/engine/delivery/DeliveryMissionPhase;

    iget-object v1, v1, Lfr/testudo/spacecorsair/business/mission/engine/delivery/DeliveryMissionPhase;->good:Lfr/testudo/spacecorsair/business/loot/SpaceObject;

    invoke-virtual {v1}, Lfr/testudo/spacecorsair/business/loot/SpaceObject;->getQuantity()I

    move-result v1

    if-le v0, v1, :cond_28

    .line 315
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/delivery/DeliveryMissionEngine;->currentPhase:Lfr/testudo/spacecorsair/business/mission/engine/delivery/DeliveryMissionPhase;

    iget-object v0, v0, Lfr/testudo/spacecorsair/business/mission/engine/delivery/DeliveryMissionPhase;->good:Lfr/testudo/spacecorsair/business/loot/SpaceObject;

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/business/loot/SpaceObject;->getQuantity()I

    move-result v0

    iput v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/delivery/DeliveryMissionEngine;->remainingGoodCounter:I

    goto :goto_28

    .line 297
    nop

    :pswitch_data_5e
    .packed-switch 0x1
        :pswitch_28
        :pswitch_2c
        :pswitch_3d
    .end packed-switch
.end method

.method public onPlayerDeath()V
    .registers 3

    .prologue
    .line 172
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/Game;->playerCurrentShipInventory:Lfr/testudo/spacecorsair/business/player/Inventory;

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/business/player/Inventory;->containsDeliveryItem()Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 173
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    const v1, 0x7f07029c

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->getStringRessource(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/mission/engine/delivery/DeliveryMissionEngine;->textFailureGoodsDestroyed:Ljava/lang/String;

    invoke-static {v0, v1}, Lfr/testudo/spacecorsair/display/hud/WelcomeMessage;->setText(Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    invoke-virtual {p0}, Lfr/testudo/spacecorsair/business/mission/engine/delivery/DeliveryMissionEngine;->init()V

    .line 177
    :cond_1d
    return-void
.end method

.method public onPlayerDestroyInventory(Lfr/testudo/spacecorsair/business/loot/SpaceObject;)V
    .registers 4

    .prologue
    .line 181
    invoke-virtual {p1}, Lfr/testudo/spacecorsair/business/loot/SpaceObject;->getSpaceObjectType()Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    move-result-object v0

    iget-boolean v0, v0, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->isDeliveryItem:Z

    if-eqz v0, :cond_19

    .line 183
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    const v1, 0x7f07029c

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->getStringRessource(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/mission/engine/delivery/DeliveryMissionEngine;->textFailureGoodsDestroyed:Ljava/lang/String;

    invoke-static {v0, v1}, Lfr/testudo/spacecorsair/display/hud/WelcomeMessage;->setText(Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    invoke-virtual {p0}, Lfr/testudo/spacecorsair/business/mission/engine/delivery/DeliveryMissionEngine;->init()V

    .line 186
    :cond_19
    return-void
.end method

.method public onPlayerLoot(Lfr/testudo/spacecorsair/business/loot/LootElement;)Z
    .registers 4

    .prologue
    .line 415
    iget-boolean v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/delivery/DeliveryMissionEngine;->isPlayerInCurPhaseZone:Z

    if-eqz v0, :cond_30

    iget-object v0, p1, Lfr/testudo/spacecorsair/business/loot/LootElement;->spaceObjectType:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/mission/engine/delivery/DeliveryMissionEngine;->currentPhase:Lfr/testudo/spacecorsair/business/mission/engine/delivery/DeliveryMissionPhase;

    iget-object v1, v1, Lfr/testudo/spacecorsair/business/mission/engine/delivery/DeliveryMissionPhase;->good:Lfr/testudo/spacecorsair/business/loot/SpaceObject;

    invoke-virtual {v1}, Lfr/testudo/spacecorsair/business/loot/SpaceObject;->getSpaceObjectType()Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_30

    iget-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/delivery/DeliveryMissionEngine;->currentPhase:Lfr/testudo/spacecorsair/business/mission/engine/delivery/DeliveryMissionPhase;

    iget-object v0, v0, Lfr/testudo/spacecorsair/business/mission/engine/delivery/DeliveryMissionPhase;->type:Lfr/testudo/spacecorsair/business/mission/engine/delivery/DeliveryMissionPhase$Type;

    sget-object v1, Lfr/testudo/spacecorsair/business/mission/engine/delivery/DeliveryMissionPhase$Type;->LOOT:Lfr/testudo/spacecorsair/business/mission/engine/delivery/DeliveryMissionPhase$Type;

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/business/mission/engine/delivery/DeliveryMissionPhase$Type;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_30

    .line 417
    iget v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/delivery/DeliveryMissionEngine;->remainingGoodCounter:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/delivery/DeliveryMissionEngine;->remainingGoodCounter:I

    .line 418
    iget v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/delivery/DeliveryMissionEngine;->remainingGoodCounter:I

    if-gtz v0, :cond_2d

    .line 419
    invoke-virtual {p0}, Lfr/testudo/spacecorsair/business/mission/engine/delivery/DeliveryMissionEngine;->onCurrentPhaseCompleted()V

    .line 423
    :cond_2d
    invoke-direct {p0}, Lfr/testudo/spacecorsair/business/mission/engine/delivery/DeliveryMissionEngine;->updateNextObjectiveText()V

    .line 427
    :cond_30
    const/4 v0, 0x1

    return v0
.end method

.method public onPlayerSellItem(Lfr/testudo/spacecorsair/business/loot/SpaceObject;)V
    .registers 4

    .prologue
    .line 262
    invoke-super {p0, p1}, Lfr/testudo/spacecorsair/business/mission/MissionListener;->onPlayerSellItem(Lfr/testudo/spacecorsair/business/loot/SpaceObject;)V

    .line 263
    iget-boolean v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/delivery/DeliveryMissionEngine;->isPlayerInCurPhaseZone:Z

    if-eqz v0, :cond_2b

    invoke-virtual {p1}, Lfr/testudo/spacecorsair/business/loot/SpaceObject;->getSpaceObjectType()Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    move-result-object v0

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/mission/engine/delivery/DeliveryMissionEngine;->currentPhase:Lfr/testudo/spacecorsair/business/mission/engine/delivery/DeliveryMissionPhase;

    iget-object v1, v1, Lfr/testudo/spacecorsair/business/mission/engine/delivery/DeliveryMissionPhase;->good:Lfr/testudo/spacecorsair/business/loot/SpaceObject;

    invoke-virtual {v1}, Lfr/testudo/spacecorsair/business/loot/SpaceObject;->getSpaceObjectType()Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 265
    sget-object v0, Lfr/testudo/spacecorsair/business/mission/engine/delivery/DeliveryMissionEngine$1;->$SwitchMap$fr$testudo$spacecorsair$business$mission$engine$delivery$DeliveryMissionPhase$Type:[I

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/mission/engine/delivery/DeliveryMissionEngine;->currentPhase:Lfr/testudo/spacecorsair/business/mission/engine/delivery/DeliveryMissionPhase;

    iget-object v1, v1, Lfr/testudo/spacecorsair/business/mission/engine/delivery/DeliveryMissionPhase;->type:Lfr/testudo/spacecorsair/business/mission/engine/delivery/DeliveryMissionPhase$Type;

    invoke-virtual {v1}, Lfr/testudo/spacecorsair/business/mission/engine/delivery/DeliveryMissionPhase$Type;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_62

    .line 285
    :cond_28
    :goto_28
    :pswitch_28
    invoke-direct {p0}, Lfr/testudo/spacecorsair/business/mission/engine/delivery/DeliveryMissionEngine;->updateNextObjectiveText()V

    .line 289
    :cond_2b
    :goto_2b
    return-void

    .line 271
    :pswitch_2c
    iget v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/delivery/DeliveryMissionEngine;->remainingGoodCounter:I

    invoke-virtual {p1}, Lfr/testudo/spacecorsair/business/loot/SpaceObject;->getQuantity()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/delivery/DeliveryMissionEngine;->remainingGoodCounter:I

    .line 272
    iget v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/delivery/DeliveryMissionEngine;->remainingGoodCounter:I

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/mission/engine/delivery/DeliveryMissionEngine;->currentPhase:Lfr/testudo/spacecorsair/business/mission/engine/delivery/DeliveryMissionPhase;

    iget-object v1, v1, Lfr/testudo/spacecorsair/business/mission/engine/delivery/DeliveryMissionPhase;->good:Lfr/testudo/spacecorsair/business/loot/SpaceObject;

    invoke-virtual {v1}, Lfr/testudo/spacecorsair/business/loot/SpaceObject;->getQuantity()I

    move-result v1

    if-le v0, v1, :cond_28

    .line 273
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/delivery/DeliveryMissionEngine;->currentPhase:Lfr/testudo/spacecorsair/business/mission/engine/delivery/DeliveryMissionPhase;

    iget-object v0, v0, Lfr/testudo/spacecorsair/business/mission/engine/delivery/DeliveryMissionPhase;->good:Lfr/testudo/spacecorsair/business/loot/SpaceObject;

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/business/loot/SpaceObject;->getQuantity()I

    move-result v0

    iput v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/delivery/DeliveryMissionEngine;->remainingGoodCounter:I

    goto :goto_28

    .line 277
    :pswitch_4c
    iget v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/delivery/DeliveryMissionEngine;->remainingGoodCounter:I

    invoke-virtual {p1}, Lfr/testudo/spacecorsair/business/loot/SpaceObject;->getQuantity()I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/delivery/DeliveryMissionEngine;->remainingGoodCounter:I

    .line 278
    iget v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/delivery/DeliveryMissionEngine;->remainingGoodCounter:I

    if-gtz v0, :cond_28

    .line 279
    iget v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/delivery/DeliveryMissionEngine;->remainingGoodCounter:I

    invoke-virtual {p1, v0}, Lfr/testudo/spacecorsair/business/loot/SpaceObject;->addQuantity(I)V

    .line 280
    invoke-virtual {p0}, Lfr/testudo/spacecorsair/business/mission/engine/delivery/DeliveryMissionEngine;->onCurrentPhaseCompleted()V

    goto :goto_2b

    .line 265
    :pswitch_data_62
    .packed-switch 0x1
        :pswitch_28
        :pswitch_2c
        :pswitch_4c
    .end packed-switch
.end method

.method public onZoneChanged(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .prologue
    const/4 v1, 0x1

    .line 108
    const/4 v0, 0x0

    iput-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/delivery/DeliveryMissionEngine;->curEnnemiesWaves:Lfr/testudo/spacecorsair/business/mission/engine/delivery/DeliveryEnemiesWaves;

    .line 109
    const/4 v0, 0x0

    iput-boolean v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/delivery/DeliveryMissionEngine;->isPlayerInCurPhaseZone:Z

    .line 110
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/delivery/DeliveryMissionEngine;->recompenceZoneId:Lfr/testudo/spacecorsair/game/levels/LevelId;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/levels/LevelId;->levelName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/delivery/DeliveryMissionEngine;->isPlayerInRecompenceZone:Z

    .line 111
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/delivery/DeliveryMissionEngine;->currentPhase:Lfr/testudo/spacecorsair/business/mission/engine/delivery/DeliveryMissionPhase;

    if-eqz v0, :cond_26

    .line 112
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/delivery/DeliveryMissionEngine;->currentPhase:Lfr/testudo/spacecorsair/business/mission/engine/delivery/DeliveryMissionPhase;

    iget-object v0, v0, Lfr/testudo/spacecorsair/business/mission/engine/delivery/DeliveryMissionPhase;->sector:Lfr/testudo/spacecorsair/game/levels/LevelId;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/levels/LevelId;->levelName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_26

    .line 113
    iput-boolean v1, p0, Lfr/testudo/spacecorsair/business/mission/engine/delivery/DeliveryMissionEngine;->isPlayerInCurPhaseZone:Z

    .line 114
    invoke-virtual {p0}, Lfr/testudo/spacecorsair/business/mission/engine/delivery/DeliveryMissionEngine;->addCurrentDeliveryConditions()V

    .line 119
    :cond_26
    invoke-virtual {p0, v1}, Lfr/testudo/spacecorsair/business/mission/engine/delivery/DeliveryMissionEngine;->setPhaseGateAndStationTarget(Z)V

    .line 120
    invoke-virtual {p0}, Lfr/testudo/spacecorsair/business/mission/engine/delivery/DeliveryMissionEngine;->enableStaticWave()V

    .line 121
    invoke-virtual {p0}, Lfr/testudo/spacecorsair/business/mission/engine/delivery/DeliveryMissionEngine;->fetchNextEnnemyWaves()V

    .line 123
    return-void
.end method

.method public restoreState()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 233
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/Game;->playerCurrentShipInventory:Lfr/testudo/spacecorsair/business/player/Inventory;

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/business/player/Inventory;->removeAllDeliveryItems()V

    .line 235
    iput v1, p0, Lfr/testudo/spacecorsair/business/mission/engine/delivery/DeliveryMissionEngine;->currentDeliveryPhaseIndex:I

    .line 236
    iput-boolean v1, p0, Lfr/testudo/spacecorsair/business/mission/engine/delivery/DeliveryMissionEngine;->completed:Z

    .line 237
    invoke-virtual {p0}, Lfr/testudo/spacecorsair/business/mission/engine/delivery/DeliveryMissionEngine;->fetchNextDeliveryAction()V

    .line 238
    return-void
.end method

.method public saveState()V
    .registers 1

    .prologue
    .line 243
    return-void
.end method

.method public setPhaseGateAndStationTarget(Z)V
    .registers 4

    .prologue
    .line 340
    iget-boolean v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/delivery/DeliveryMissionEngine;->completed:Z

    if-eqz v0, :cond_36

    .line 342
    iget-boolean v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/delivery/DeliveryMissionEngine;->isPlayerInRecompenceZone:Z

    if-eqz v0, :cond_1d

    .line 343
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/Game;->currentLevel:Lfr/testudo/spacecorsair/game/levels/Level;

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/mission/engine/delivery/DeliveryMissionEngine;->stationGiveBackName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/game/levels/Level;->findStationByName(Ljava/lang/String;)Lfr/testudo/spacecorsair/business/world/station/Station;

    move-result-object v0

    .line 344
    if-eqz v0, :cond_1c

    .line 345
    iput-boolean p1, v0, Lfr/testudo/spacecorsair/business/world/station/Station;->isMissionObjective:Z

    .line 346
    sget-object v1, Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;->ORANGE:Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;

    iput-object v1, v0, Lfr/testudo/spacecorsair/business/world/station/Station;->missionObjectiveColor:Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;

    .line 386
    :cond_1c
    :goto_1c
    :pswitch_1c
    return-void

    .line 350
    :cond_1d
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/Game;->currentLevel:Lfr/testudo/spacecorsair/game/levels/Level;

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/mission/engine/delivery/DeliveryMissionEngine;->recompenceZoneId:Lfr/testudo/spacecorsair/game/levels/LevelId;

    invoke-static {v1}, Lfr/testudo/spacecorsair/business/world/PathFinder;->getPortalNameToGoTo(Lfr/testudo/spacecorsair/game/levels/LevelId;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/game/levels/Level;->findPortalByName(Ljava/lang/String;)Lfr/testudo/spacecorsair/business/world/Portal;

    move-result-object v0

    .line 351
    if-eqz v0, :cond_1c

    .line 352
    iput-boolean p1, v0, Lfr/testudo/spacecorsair/business/world/Portal;->isMissionObjective:Z

    .line 353
    sget-object v1, Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;->ORANGE:Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;

    iput-object v1, v0, Lfr/testudo/spacecorsair/business/world/Portal;->missionObjectiveColor:Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;

    goto :goto_1c

    .line 361
    :cond_36
    iget-boolean v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/delivery/DeliveryMissionEngine;->isPlayerInCurPhaseZone:Z

    if-eqz v0, :cond_61

    .line 362
    sget-object v0, Lfr/testudo/spacecorsair/business/mission/engine/delivery/DeliveryMissionEngine$1;->$SwitchMap$fr$testudo$spacecorsair$business$mission$engine$delivery$DeliveryMissionPhase$Type:[I

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/mission/engine/delivery/DeliveryMissionEngine;->currentPhase:Lfr/testudo/spacecorsair/business/mission/engine/delivery/DeliveryMissionPhase;

    iget-object v1, v1, Lfr/testudo/spacecorsair/business/mission/engine/delivery/DeliveryMissionPhase;->type:Lfr/testudo/spacecorsair/business/mission/engine/delivery/DeliveryMissionPhase$Type;

    invoke-virtual {v1}, Lfr/testudo/spacecorsair/business/mission/engine/delivery/DeliveryMissionPhase$Type;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_7c

    goto :goto_1c

    .line 368
    :pswitch_4a
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/Game;->currentLevel:Lfr/testudo/spacecorsair/game/levels/Level;

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/mission/engine/delivery/DeliveryMissionEngine;->currentPhase:Lfr/testudo/spacecorsair/business/mission/engine/delivery/DeliveryMissionPhase;

    iget-object v1, v1, Lfr/testudo/spacecorsair/business/mission/engine/delivery/DeliveryMissionPhase;->stationName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/game/levels/Level;->findStationByName(Ljava/lang/String;)Lfr/testudo/spacecorsair/business/world/station/Station;

    move-result-object v0

    .line 369
    if-eqz v0, :cond_1c

    .line 370
    iput-boolean p1, v0, Lfr/testudo/spacecorsair/business/world/station/Station;->isMissionObjective:Z

    .line 371
    sget-object v1, Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;->ORANGE:Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;

    iput-object v1, v0, Lfr/testudo/spacecorsair/business/world/station/Station;->missionObjectiveColor:Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;

    goto :goto_1c

    .line 378
    :cond_61
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/Game;->currentLevel:Lfr/testudo/spacecorsair/game/levels/Level;

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/mission/engine/delivery/DeliveryMissionEngine;->currentPhase:Lfr/testudo/spacecorsair/business/mission/engine/delivery/DeliveryMissionPhase;

    iget-object v1, v1, Lfr/testudo/spacecorsair/business/mission/engine/delivery/DeliveryMissionPhase;->sector:Lfr/testudo/spacecorsair/game/levels/LevelId;

    invoke-static {v1}, Lfr/testudo/spacecorsair/business/world/PathFinder;->getPortalNameToGoTo(Lfr/testudo/spacecorsair/game/levels/LevelId;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/game/levels/Level;->findPortalByName(Ljava/lang/String;)Lfr/testudo/spacecorsair/business/world/Portal;

    move-result-object v0

    .line 379
    if-eqz v0, :cond_1c

    .line 380
    iput-boolean p1, v0, Lfr/testudo/spacecorsair/business/world/Portal;->isMissionObjective:Z

    .line 381
    sget-object v1, Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;->ORANGE:Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;

    iput-object v1, v0, Lfr/testudo/spacecorsair/business/world/Portal;->missionObjectiveColor:Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;

    goto :goto_1c

    .line 362
    :pswitch_data_7c
    .packed-switch 0x1
        :pswitch_1c
        :pswitch_4a
        :pswitch_4a
    .end packed-switch
.end method

.method public terminate()V
    .registers 2

    .prologue
    .line 252
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/Game;->playerCurrentShipInventory:Lfr/testudo/spacecorsair/business/player/Inventory;

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/business/player/Inventory;->removeAllDeliveryItems()V

    .line 253
    return-void
.end method
