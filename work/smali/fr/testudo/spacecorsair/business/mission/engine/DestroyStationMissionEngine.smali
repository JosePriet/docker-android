.class public Lfr/testudo/spacecorsair/business/mission/engine/DestroyStationMissionEngine;
.super Lfr/testudo/spacecorsair/business/mission/MissionListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lfr/testudo/spacecorsair/business/mission/engine/DestroyStationMissionEngine$1;,
        Lfr/testudo/spacecorsair/business/mission/engine/DestroyStationMissionEngine$Phase;
    }
.end annotation


# instance fields
.field public completed:Z

.field public curWaveLevel:I

.field public curWavePopFrequence:I

.field public curWaveRemainingPop:I

.field public curWaveSpecificName:I

.field public currentPhase:Lfr/testudo/spacecorsair/business/mission/engine/DestroyStationMissionEngine$Phase;

.field public currentRemainingTimePop:I

.field public isEnnemisWaveActive:Z

.field private isPlayerInRecompenceZone:Z

.field private isPlayerInTargetZone:Z

.field public level:I

.field public missionId:Ljava/lang/String;

.field public recompenceZoneId:Lfr/testudo/spacecorsair/game/levels/LevelId;

.field public stationNameRessourceId:I

.field public stationPosition:Lfr/testudo/spacecorsair/engine/Vector2;

.field public stationRelativePopPoints:[Lfr/testudo/spacecorsair/engine/PopPoint;

.field public stationRewardName:Ljava/lang/String;

.field public stationToDestroy:Lfr/testudo/spacecorsair/business/world/station/DestroyablePirateStation;

.field public stationZoneId:Lfr/testudo/spacecorsair/game/levels/LevelId;

.field public textDestroyStationLocalised:Ljava/lang/String;

.field public textDestroyStationRessourceId:I

.field public textDockToStation:Ljava/lang/String;

.field public textGotoRecompZone:Ljava/lang/String;

.field public textGotoStationZone:Ljava/lang/String;

.field public waveEnnemyType:Lfr/testudo/spacecorsair/business/ennemis/EnnemisType;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lfr/testudo/spacecorsair/game/levels/LevelId;Lfr/testudo/spacecorsair/game/levels/LevelId;Ljava/lang/String;ILfr/testudo/spacecorsair/engine/Vector2;I[Lfr/testudo/spacecorsair/engine/PopPoint;I)V
    .registers 15

    .prologue
    const/4 v4, 0x0

    const/16 v3, 0x3e8

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 90
    invoke-direct {p0}, Lfr/testudo/spacecorsair/business/mission/MissionListener;-><init>()V

    .line 57
    iput-boolean v1, p0, Lfr/testudo/spacecorsair/business/mission/engine/DestroyStationMissionEngine;->completed:Z

    .line 59
    new-instance v0, Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-direct {v0, v2, v2}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>(FF)V

    iput-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/DestroyStationMissionEngine;->stationPosition:Lfr/testudo/spacecorsair/engine/Vector2;

    .line 73
    iput-object v4, p0, Lfr/testudo/spacecorsair/business/mission/engine/DestroyStationMissionEngine;->textGotoStationZone:Ljava/lang/String;

    .line 77
    iput-object v4, p0, Lfr/testudo/spacecorsair/business/mission/engine/DestroyStationMissionEngine;->stationRewardName:Ljava/lang/String;

    .line 487
    iput-boolean v1, p0, Lfr/testudo/spacecorsair/business/mission/engine/DestroyStationMissionEngine;->isEnnemisWaveActive:Z

    .line 488
    iput v1, p0, Lfr/testudo/spacecorsair/business/mission/engine/DestroyStationMissionEngine;->curWaveRemainingPop:I

    .line 489
    iput v3, p0, Lfr/testudo/spacecorsair/business/mission/engine/DestroyStationMissionEngine;->curWavePopFrequence:I

    .line 490
    iput v3, p0, Lfr/testudo/spacecorsair/business/mission/engine/DestroyStationMissionEngine;->currentRemainingTimePop:I

    .line 493
    const/4 v0, -0x1

    iput v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/DestroyStationMissionEngine;->curWaveSpecificName:I

    .line 92
    iput-object p1, p0, Lfr/testudo/spacecorsair/business/mission/engine/DestroyStationMissionEngine;->missionId:Ljava/lang/String;

    .line 93
    iput-object p2, p0, Lfr/testudo/spacecorsair/business/mission/engine/DestroyStationMissionEngine;->stationZoneId:Lfr/testudo/spacecorsair/game/levels/LevelId;

    .line 94
    iput-object p3, p0, Lfr/testudo/spacecorsair/business/mission/engine/DestroyStationMissionEngine;->recompenceZoneId:Lfr/testudo/spacecorsair/game/levels/LevelId;

    .line 95
    iput-object p4, p0, Lfr/testudo/spacecorsair/business/mission/engine/DestroyStationMissionEngine;->stationRewardName:Ljava/lang/String;

    .line 96
    iput p5, p0, Lfr/testudo/spacecorsair/business/mission/engine/DestroyStationMissionEngine;->textDestroyStationRessourceId:I

    .line 97
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/DestroyStationMissionEngine;->stationPosition:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v0, p6}, Lfr/testudo/spacecorsair/engine/Vector2;->setSameAs(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 98
    iput p7, p0, Lfr/testudo/spacecorsair/business/mission/engine/DestroyStationMissionEngine;->stationNameRessourceId:I

    .line 99
    iput-object p8, p0, Lfr/testudo/spacecorsair/business/mission/engine/DestroyStationMissionEngine;->stationRelativePopPoints:[Lfr/testudo/spacecorsair/engine/PopPoint;

    .line 100
    iput p9, p0, Lfr/testudo/spacecorsair/business/mission/engine/DestroyStationMissionEngine;->level:I

    .line 102
    invoke-virtual {p0}, Lfr/testudo/spacecorsair/business/mission/engine/DestroyStationMissionEngine;->initStrings()V

    .line 103
    return-void
.end method

.method private setPhaseGateAndStationTarget(Z)V
    .registers 4

    .prologue
    .line 453
    sget-object v0, Lfr/testudo/spacecorsair/business/mission/engine/DestroyStationMissionEngine$1;->$SwitchMap$fr$testudo$spacecorsair$business$mission$engine$DestroyStationMissionEngine$Phase:[I

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/mission/engine/DestroyStationMissionEngine;->currentPhase:Lfr/testudo/spacecorsair/business/mission/engine/DestroyStationMissionEngine$Phase;

    invoke-virtual {v1}, Lfr/testudo/spacecorsair/business/mission/engine/DestroyStationMissionEngine$Phase;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_5e

    .line 485
    :cond_d
    :goto_d
    return-void

    .line 455
    :pswitch_e
    iget-boolean v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/DestroyStationMissionEngine;->isPlayerInTargetZone:Z

    if-nez v0, :cond_d

    .line 459
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/Game;->currentLevel:Lfr/testudo/spacecorsair/game/levels/Level;

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/mission/engine/DestroyStationMissionEngine;->stationZoneId:Lfr/testudo/spacecorsair/game/levels/LevelId;

    invoke-static {v1}, Lfr/testudo/spacecorsair/business/world/PathFinder;->getPortalNameToGoTo(Lfr/testudo/spacecorsair/game/levels/LevelId;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/game/levels/Level;->findPortalByName(Ljava/lang/String;)Lfr/testudo/spacecorsair/business/world/Portal;

    move-result-object v0

    .line 460
    if-eqz v0, :cond_d

    .line 461
    iput-boolean p1, v0, Lfr/testudo/spacecorsair/business/world/Portal;->isMissionObjective:Z

    .line 462
    sget-object v1, Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;->ORANGE:Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;

    iput-object v1, v0, Lfr/testudo/spacecorsair/business/world/Portal;->missionObjectiveColor:Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;

    goto :goto_d

    .line 467
    :pswitch_2b
    iget-boolean v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/DestroyStationMissionEngine;->isPlayerInRecompenceZone:Z

    if-eqz v0, :cond_44

    .line 469
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/Game;->currentLevel:Lfr/testudo/spacecorsair/game/levels/Level;

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/mission/engine/DestroyStationMissionEngine;->stationRewardName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/game/levels/Level;->findStationByName(Ljava/lang/String;)Lfr/testudo/spacecorsair/business/world/station/Station;

    move-result-object v0

    .line 470
    if-eqz v0, :cond_d

    .line 471
    iput-boolean p1, v0, Lfr/testudo/spacecorsair/business/world/station/Station;->isMissionObjective:Z

    .line 472
    sget-object v1, Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;->ORANGE:Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;

    iput-object v1, v0, Lfr/testudo/spacecorsair/business/world/station/Station;->missionObjectiveColor:Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;

    goto :goto_d

    .line 478
    :cond_44
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/Game;->currentLevel:Lfr/testudo/spacecorsair/game/levels/Level;

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/mission/engine/DestroyStationMissionEngine;->recompenceZoneId:Lfr/testudo/spacecorsair/game/levels/LevelId;

    invoke-static {v1}, Lfr/testudo/spacecorsair/business/world/PathFinder;->getPortalNameToGoTo(Lfr/testudo/spacecorsair/game/levels/LevelId;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/game/levels/Level;->findPortalByName(Ljava/lang/String;)Lfr/testudo/spacecorsair/business/world/Portal;

    move-result-object v0

    .line 479
    if-eqz v0, :cond_d

    .line 480
    iput-boolean p1, v0, Lfr/testudo/spacecorsair/business/world/Portal;->isMissionObjective:Z

    .line 481
    sget-object v1, Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;->ORANGE:Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;

    iput-object v1, v0, Lfr/testudo/spacecorsair/business/world/Portal;->missionObjectiveColor:Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;

    goto :goto_d

    .line 453
    nop

    :pswitch_data_5e
    .packed-switch 0x5
        :pswitch_e
        :pswitch_2b
    .end packed-switch
.end method

.method private shootMissile()V
    .registers 5

    .prologue
    .line 536
    invoke-static {}, Lfr/testudo/spacecorsair/business/factory/GamePools;->newMissile()Lfr/testudo/spacecorsair/business/projectiles/Missile;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v1}, Lfr/testudo/spacecorsair/business/loot/stuff/missile/MissileSpecBuilder;->getMosquitoSpec(I)Lfr/testudo/spacecorsair/business/loot/stuff/missile/MissileSpec;

    move-result-object v1

    iget-object v2, p0, Lfr/testudo/spacecorsair/business/mission/engine/DestroyStationMissionEngine;->stationToDestroy:Lfr/testudo/spacecorsair/business/world/station/DestroyablePirateStation;

    invoke-static {}, Lfr/testudo/spacecorsair/business/player/PlayerShip;->instance()Lfr/testudo/spacecorsair/business/player/PlayerShip;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lfr/testudo/spacecorsair/business/projectiles/Missile;->initWithSpecs(Lfr/testudo/spacecorsair/business/loot/stuff/missile/MissileSpec;Lfr/testudo/spacecorsair/business/Element;Lfr/testudo/spacecorsair/business/Element;)Lfr/testudo/spacecorsair/business/projectiles/Missile;

    move-result-object v0

    .line 537
    iget-object v1, v0, Lfr/testudo/spacecorsair/business/projectiles/Missile;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget-object v2, p0, Lfr/testudo/spacecorsair/business/mission/engine/DestroyStationMissionEngine;->stationPosition:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v1, v2}, Lfr/testudo/spacecorsair/engine/Vector2;->setSameAs(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 538
    const/4 v1, 0x0

    iput v1, v0, Lfr/testudo/spacecorsair/business/projectiles/Missile;->spin:F

    .line 539
    sget-object v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v1, v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v1, v1, Lfr/testudo/spacecorsair/game/Game;->currentLevel:Lfr/testudo/spacecorsair/game/levels/Level;

    iget-object v1, v1, Lfr/testudo/spacecorsair/game/levels/Level;->toAdd:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 540
    return-void
.end method

.method private unSetStationAsObjective()V
    .registers 3

    .prologue
    .line 445
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/DestroyStationMissionEngine;->stationToDestroy:Lfr/testudo/spacecorsair/business/world/station/DestroyablePirateStation;

    if-eqz v0, :cond_e

    .line 446
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/DestroyStationMissionEngine;->stationToDestroy:Lfr/testudo/spacecorsair/business/world/station/DestroyablePirateStation;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lfr/testudo/spacecorsair/business/world/station/DestroyablePirateStation;->isMissionObjective:Z

    .line 447
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/DestroyStationMissionEngine;->stationToDestroy:Lfr/testudo/spacecorsair/business/world/station/DestroyablePirateStation;

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/business/world/station/DestroyablePirateStation;->remove()V

    .line 449
    :cond_e
    return-void
.end method


# virtual methods
.method public addStationToLevel()V
    .registers 7

    .prologue
    const/4 v5, 0x1

    const v4, 0x3f4ccccd    # 0.8f

    .line 420
    invoke-static {}, Lfr/testudo/spacecorsair/business/factory/GamePools;->newDestroyablePirateStation()Lfr/testudo/spacecorsair/business/world/station/DestroyablePirateStation;

    move-result-object v0

    iput-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/DestroyStationMissionEngine;->stationToDestroy:Lfr/testudo/spacecorsair/business/world/station/DestroyablePirateStation;

    .line 421
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/DestroyStationMissionEngine;->stationToDestroy:Lfr/testudo/spacecorsair/business/world/station/DestroyablePirateStation;

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/mission/engine/DestroyStationMissionEngine;->stationPosition:Lfr/testudo/spacecorsair/engine/Vector2;

    sget-object v2, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget v3, p0, Lfr/testudo/spacecorsair/business/mission/engine/DestroyStationMissionEngine;->stationNameRessourceId:I

    invoke-virtual {v2, v3}, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->getStringRessource(I)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Lfr/testudo/spacecorsair/business/world/station/DestroyablePirateStation;->initDestroyStation(Lfr/testudo/spacecorsair/engine/Vector2;Ljava/lang/String;I)Lfr/testudo/spacecorsair/business/world/station/DestroyablePirateStation;

    .line 423
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/DestroyStationMissionEngine;->stationToDestroy:Lfr/testudo/spacecorsair/business/world/station/DestroyablePirateStation;

    iput-boolean v5, v0, Lfr/testudo/spacecorsair/business/world/station/DestroyablePirateStation;->isMissionObjective:Z

    .line 424
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/DestroyStationMissionEngine;->stationToDestroy:Lfr/testudo/spacecorsair/business/world/station/DestroyablePirateStation;

    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, v0, Lfr/testudo/spacecorsair/business/world/station/DestroyablePirateStation;->r:F

    .line 425
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/DestroyStationMissionEngine;->stationToDestroy:Lfr/testudo/spacecorsair/business/world/station/DestroyablePirateStation;

    iput v4, v0, Lfr/testudo/spacecorsair/business/world/station/DestroyablePirateStation;->g:F

    .line 426
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/DestroyStationMissionEngine;->stationToDestroy:Lfr/testudo/spacecorsair/business/world/station/DestroyablePirateStation;

    iput v4, v0, Lfr/testudo/spacecorsair/business/world/station/DestroyablePirateStation;->b:F

    .line 428
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/DestroyStationMissionEngine;->stationToDestroy:Lfr/testudo/spacecorsair/business/world/station/DestroyablePirateStation;

    sget-object v1, Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;->RED:Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;

    iput-object v1, v0, Lfr/testudo/spacecorsair/business/world/station/DestroyablePirateStation;->missionObjectiveColor:Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;

    .line 430
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/Game;->currentLevel:Lfr/testudo/spacecorsair/game/levels/Level;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/levels/Level;->elements:Ljava/util/List;

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/mission/engine/DestroyStationMissionEngine;->stationToDestroy:Lfr/testudo/spacecorsair/business/world/station/DestroyablePirateStation;

    invoke-interface {v0, v5, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 435
    new-instance v0, Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-direct {v0}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>()V

    .line 441
    return-void
.end method

.method public getCurrentInstruction()Ljava/lang/String;
    .registers 3

    .prologue
    .line 314
    sget-object v0, Lfr/testudo/spacecorsair/business/mission/engine/DestroyStationMissionEngine$1;->$SwitchMap$fr$testudo$spacecorsair$business$mission$engine$DestroyStationMissionEngine$Phase:[I

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/mission/engine/DestroyStationMissionEngine;->currentPhase:Lfr/testudo/spacecorsair/business/mission/engine/DestroyStationMissionEngine$Phase;

    invoke-virtual {v1}, Lfr/testudo/spacecorsair/business/mission/engine/DestroyStationMissionEngine$Phase;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_24

    .line 334
    const-string v0, ""

    :goto_f
    return-object v0

    .line 320
    :pswitch_10
    iget-boolean v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/DestroyStationMissionEngine;->isPlayerInTargetZone:Z

    if-eqz v0, :cond_17

    .line 321
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/DestroyStationMissionEngine;->textDestroyStationLocalised:Ljava/lang/String;

    goto :goto_f

    .line 323
    :cond_17
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/DestroyStationMissionEngine;->textGotoStationZone:Ljava/lang/String;

    goto :goto_f

    .line 327
    :pswitch_1a
    iget-boolean v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/DestroyStationMissionEngine;->isPlayerInRecompenceZone:Z

    if-eqz v0, :cond_21

    .line 328
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/DestroyStationMissionEngine;->textDockToStation:Ljava/lang/String;

    goto :goto_f

    .line 330
    :cond_21
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/DestroyStationMissionEngine;->textGotoRecompZone:Ljava/lang/String;

    goto :goto_f

    .line 314
    :pswitch_data_24
    .packed-switch 0x1
        :pswitch_10
        :pswitch_10
        :pswitch_10
        :pswitch_10
        :pswitch_10
        :pswitch_1a
    .end packed-switch
.end method

.method public giveUp()V
    .registers 1

    .prologue
    .line 357
    invoke-direct {p0}, Lfr/testudo/spacecorsair/business/mission/engine/DestroyStationMissionEngine;->unSetStationAsObjective()V

    .line 358
    invoke-virtual {p0}, Lfr/testudo/spacecorsair/business/mission/engine/DestroyStationMissionEngine;->terminate()V

    .line 359
    return-void
.end method

.method public init()V
    .registers 3

    .prologue
    .line 339
    const/4 v0, 0x0

    iput-boolean v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/DestroyStationMissionEngine;->completed:Z

    .line 340
    sget-object v0, Lfr/testudo/spacecorsair/business/mission/engine/DestroyStationMissionEngine$Phase;->DESTROY_TARGET:Lfr/testudo/spacecorsair/business/mission/engine/DestroyStationMissionEngine$Phase;

    iput-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/DestroyStationMissionEngine;->currentPhase:Lfr/testudo/spacecorsair/business/mission/engine/DestroyStationMissionEngine$Phase;

    .line 341
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/Game;->currentLevel:Lfr/testudo/spacecorsair/game/levels/Level;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/levels/Level;->name:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lfr/testudo/spacecorsair/business/mission/engine/DestroyStationMissionEngine;->onZoneChanged(Ljava/lang/String;Ljava/lang/String;)V

    .line 342
    return-void
.end method

.method public initStrings()V
    .registers 4

    .prologue
    .line 107
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/DestroyStationMissionEngine;->stationZoneId:Lfr/testudo/spacecorsair/game/levels/LevelId;

    if-eqz v0, :cond_2a

    .line 108
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

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/mission/engine/DestroyStationMissionEngine;->stationZoneId:Lfr/testudo/spacecorsair/game/levels/LevelId;

    iget-object v1, v1, Lfr/testudo/spacecorsair/game/levels/LevelId;->levelName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/DestroyStationMissionEngine;->textGotoStationZone:Ljava/lang/String;

    .line 110
    :cond_2a
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

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/mission/engine/DestroyStationMissionEngine;->recompenceZoneId:Lfr/testudo/spacecorsair/game/levels/LevelId;

    iget-object v1, v1, Lfr/testudo/spacecorsair/game/levels/LevelId;->levelName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/DestroyStationMissionEngine;->textGotoRecompZone:Ljava/lang/String;

    .line 111
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

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/mission/engine/DestroyStationMissionEngine;->stationRewardName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/DestroyStationMissionEngine;->textDockToStation:Ljava/lang/String;

    .line 112
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget v1, p0, Lfr/testudo/spacecorsair/business/mission/engine/DestroyStationMissionEngine;->textDestroyStationRessourceId:I

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->getStringRessource(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/DestroyStationMissionEngine;->textDestroyStationLocalised:Ljava/lang/String;

    .line 113
    return-void
.end method

.method public isCompleted()Z
    .registers 2

    .prologue
    .line 372
    iget-boolean v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/DestroyStationMissionEngine;->completed:Z

    return v0
.end method

.method public onBeforePlayerDock()V
    .registers 1

    .prologue
    .line 195
    return-void
.end method

.method public onDoPhysic(J)V
    .registers 6

    .prologue
    .line 259
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/DestroyStationMissionEngine;->stationToDestroy:Lfr/testudo/spacecorsair/business/world/station/DestroyablePirateStation;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/DestroyStationMissionEngine;->stationToDestroy:Lfr/testudo/spacecorsair/business/world/station/DestroyablePirateStation;

    iget-boolean v0, v0, Lfr/testudo/spacecorsair/business/world/station/DestroyablePirateStation;->removed:Z

    if-eqz v0, :cond_b

    .line 305
    :cond_a
    :goto_a
    return-void

    .line 263
    :cond_b
    sget-object v0, Lfr/testudo/spacecorsair/business/mission/engine/DestroyStationMissionEngine$1;->$SwitchMap$fr$testudo$spacecorsair$business$mission$engine$DestroyStationMissionEngine$Phase:[I

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/mission/engine/DestroyStationMissionEngine;->currentPhase:Lfr/testudo/spacecorsair/business/mission/engine/DestroyStationMissionEngine$Phase;

    invoke-virtual {v1}, Lfr/testudo/spacecorsair/business/mission/engine/DestroyStationMissionEngine$Phase;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_54

    .line 290
    :goto_18
    :pswitch_18
    iget-boolean v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/DestroyStationMissionEngine;->isEnnemisWaveActive:Z

    if-eqz v0, :cond_a

    .line 292
    iget v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/DestroyStationMissionEngine;->currentRemainingTimePop:I

    int-to-long v0, v0

    sub-long/2addr v0, p1

    long-to-int v0, v0

    iput v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/DestroyStationMissionEngine;->currentRemainingTimePop:I

    .line 294
    iget v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/DestroyStationMissionEngine;->currentRemainingTimePop:I

    if-gtz v0, :cond_a

    .line 295
    iget v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/DestroyStationMissionEngine;->curWavePopFrequence:I

    iput v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/DestroyStationMissionEngine;->currentRemainingTimePop:I

    .line 296
    iget v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/DestroyStationMissionEngine;->curWaveRemainingPop:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/DestroyStationMissionEngine;->curWaveRemainingPop:I

    .line 297
    iget v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/DestroyStationMissionEngine;->curWaveRemainingPop:I

    if-gtz v0, :cond_38

    .line 298
    const/4 v0, 0x0

    iput-boolean v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/DestroyStationMissionEngine;->isEnnemisWaveActive:Z

    .line 300
    :cond_38
    invoke-virtual {p0}, Lfr/testudo/spacecorsair/business/mission/engine/DestroyStationMissionEngine;->onWavePop()V

    goto :goto_a

    .line 266
    :pswitch_3c
    const/16 v0, 0x64

    invoke-virtual {p0, v0}, Lfr/testudo/spacecorsair/business/mission/engine/DestroyStationMissionEngine;->updateStationStatus(I)V

    goto :goto_18

    .line 270
    :pswitch_42
    const/16 v0, 0x5f

    invoke-virtual {p0, v0}, Lfr/testudo/spacecorsair/business/mission/engine/DestroyStationMissionEngine;->updateStationStatus(I)V

    goto :goto_18

    .line 274
    :pswitch_48
    const/16 v0, 0x4b

    invoke-virtual {p0, v0}, Lfr/testudo/spacecorsair/business/mission/engine/DestroyStationMissionEngine;->updateStationStatus(I)V

    goto :goto_18

    .line 278
    :pswitch_4e
    const/16 v0, 0x32

    invoke-virtual {p0, v0}, Lfr/testudo/spacecorsair/business/mission/engine/DestroyStationMissionEngine;->updateStationStatus(I)V

    goto :goto_18

    .line 263
    :pswitch_data_54
    .packed-switch 0x1
        :pswitch_42
        :pswitch_48
        :pswitch_4e
        :pswitch_18
        :pswitch_3c
    .end packed-switch
.end method

.method public onElementDestroyed(Lfr/testudo/spacecorsair/business/Element;)V
    .registers 3

    .prologue
    .line 175
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/DestroyStationMissionEngine;->stationToDestroy:Lfr/testudo/spacecorsair/business/world/station/DestroyablePirateStation;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/DestroyStationMissionEngine;->stationToDestroy:Lfr/testudo/spacecorsair/business/world/station/DestroyablePirateStation;

    if-ne v0, p1, :cond_b

    .line 176
    invoke-virtual {p0}, Lfr/testudo/spacecorsair/business/mission/engine/DestroyStationMissionEngine;->onStationDestroyed()V

    .line 178
    :cond_b
    return-void
.end method

.method public onElementDestroyedByPlayer(Lfr/testudo/spacecorsair/business/Element;)V
    .registers 2

    .prologue
    .line 183
    return-void
.end method

.method public onEveryMinute()V
    .registers 1

    .prologue
    .line 171
    return-void
.end method

.method public onEveryTenGameSec()V
    .registers 1

    .prologue
    .line 166
    return-void
.end method

.method public onPlayerBuyItem(Lfr/testudo/spacecorsair/business/loot/SpaceObject;)V
    .registers 2

    .prologue
    .line 205
    return-void
.end method

.method public onPlayerDeath()V
    .registers 3

    .prologue
    .line 188
    const-string v0, "JDE"

    const-string v1, "dead"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    return-void
.end method

.method public onPlayerLoot(Lfr/testudo/spacecorsair/business/loot/LootElement;)Z
    .registers 3

    .prologue
    .line 160
    const/4 v0, 0x1

    return v0
.end method

.method public onPlayerSellItem(Lfr/testudo/spacecorsair/business/loot/SpaceObject;)V
    .registers 2

    .prologue
    .line 200
    return-void
.end method

.method public onPlayerUndock()V
    .registers 1

    .prologue
    .line 210
    return-void
.end method

.method public onStation25()V
    .registers 7

    .prologue
    .line 401
    sget-object v0, Lfr/testudo/spacecorsair/business/mission/engine/DestroyStationMissionEngine$Phase;->STATION_25:Lfr/testudo/spacecorsair/business/mission/engine/DestroyStationMissionEngine$Phase;

    iput-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/DestroyStationMissionEngine;->currentPhase:Lfr/testudo/spacecorsair/business/mission/engine/DestroyStationMissionEngine$Phase;

    .line 402
    const/4 v1, 0x1

    const/16 v2, 0x190

    sget-object v3, Lfr/testudo/spacecorsair/business/ennemis/EnnemisType;->DEFENSOR:Lfr/testudo/spacecorsair/business/ennemis/EnnemisType;

    const/4 v4, 0x5

    const v5, 0x7f070140

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lfr/testudo/spacecorsair/business/mission/engine/DestroyStationMissionEngine;->startNewWave(IILfr/testudo/spacecorsair/business/ennemis/EnnemisType;II)V

    .line 403
    invoke-direct {p0}, Lfr/testudo/spacecorsair/business/mission/engine/DestroyStationMissionEngine;->shootMissile()V

    .line 404
    return-void
.end method

.method public onStation50()V
    .registers 7

    .prologue
    .line 391
    sget-object v0, Lfr/testudo/spacecorsair/business/mission/engine/DestroyStationMissionEngine$Phase;->STATION_50:Lfr/testudo/spacecorsair/business/mission/engine/DestroyStationMissionEngine$Phase;

    iput-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/DestroyStationMissionEngine;->currentPhase:Lfr/testudo/spacecorsair/business/mission/engine/DestroyStationMissionEngine$Phase;

    .line 392
    const/4 v1, 0x6

    const/16 v2, 0x258

    sget-object v3, Lfr/testudo/spacecorsair/business/ennemis/EnnemisType;->BASIC:Lfr/testudo/spacecorsair/business/ennemis/EnnemisType;

    const/4 v4, 0x3

    const/4 v5, -0x1

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lfr/testudo/spacecorsair/business/mission/engine/DestroyStationMissionEngine;->startNewWave(IILfr/testudo/spacecorsair/business/ennemis/EnnemisType;II)V

    .line 393
    invoke-direct {p0}, Lfr/testudo/spacecorsair/business/mission/engine/DestroyStationMissionEngine;->shootMissile()V

    .line 396
    return-void
.end method

.method public onStation75()V
    .registers 7

    .prologue
    .line 385
    sget-object v0, Lfr/testudo/spacecorsair/business/mission/engine/DestroyStationMissionEngine$Phase;->STATION_75:Lfr/testudo/spacecorsair/business/mission/engine/DestroyStationMissionEngine$Phase;

    iput-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/DestroyStationMissionEngine;->currentPhase:Lfr/testudo/spacecorsair/business/mission/engine/DestroyStationMissionEngine$Phase;

    .line 386
    const/4 v1, 0x4

    const/16 v2, 0x320

    sget-object v3, Lfr/testudo/spacecorsair/business/ennemis/EnnemisType;->DEFENSOR:Lfr/testudo/spacecorsair/business/ennemis/EnnemisType;

    const/4 v4, 0x2

    const/4 v5, -0x1

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lfr/testudo/spacecorsair/business/mission/engine/DestroyStationMissionEngine;->startNewWave(IILfr/testudo/spacecorsair/business/ennemis/EnnemisType;II)V

    .line 387
    return-void
.end method

.method public onStation95()V
    .registers 7

    .prologue
    .line 379
    sget-object v0, Lfr/testudo/spacecorsair/business/mission/engine/DestroyStationMissionEngine$Phase;->STATION_95:Lfr/testudo/spacecorsair/business/mission/engine/DestroyStationMissionEngine$Phase;

    iput-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/DestroyStationMissionEngine;->currentPhase:Lfr/testudo/spacecorsair/business/mission/engine/DestroyStationMissionEngine$Phase;

    .line 380
    const/4 v1, 0x6

    const/16 v2, 0x320

    sget-object v3, Lfr/testudo/spacecorsair/business/ennemis/EnnemisType;->BASIC:Lfr/testudo/spacecorsair/business/ennemis/EnnemisType;

    const/4 v4, 0x2

    const/4 v5, -0x1

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lfr/testudo/spacecorsair/business/mission/engine/DestroyStationMissionEngine;->startNewWave(IILfr/testudo/spacecorsair/business/ennemis/EnnemisType;II)V

    .line 381
    return-void
.end method

.method public onStationDestroyed()V
    .registers 4

    .prologue
    const/4 v2, 0x1

    .line 408
    sget-object v0, Lfr/testudo/spacecorsair/business/mission/engine/DestroyStationMissionEngine$Phase;->GATHER_RECOMP:Lfr/testudo/spacecorsair/business/mission/engine/DestroyStationMissionEngine$Phase;

    iput-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/DestroyStationMissionEngine;->currentPhase:Lfr/testudo/spacecorsair/business/mission/engine/DestroyStationMissionEngine$Phase;

    .line 409
    iput-boolean v2, p0, Lfr/testudo/spacecorsair/business/mission/engine/DestroyStationMissionEngine;->completed:Z

    .line 410
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    const v1, 0x7f0702c1

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->getStringRessource(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-static {v0, v1}, Lfr/testudo/spacecorsair/display/hud/WelcomeMessage;->setText(Ljava/lang/String;Ljava/lang/String;)V

    .line 411
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->soundManager:Lfr/testudo/spacecorsair/engine/SoundManager;

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/engine/SoundManager;->playMissionComplete()V

    .line 412
    const/4 v0, 0x0

    iput-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/DestroyStationMissionEngine;->stationToDestroy:Lfr/testudo/spacecorsair/business/world/station/DestroyablePirateStation;

    .line 413
    invoke-direct {p0, v2}, Lfr/testudo/spacecorsair/business/mission/engine/DestroyStationMissionEngine;->setPhaseGateAndStationTarget(Z)V

    .line 415
    return-void
.end method

.method public onWavePop()V
    .registers 5

    .prologue
    .line 508
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/DestroyStationMissionEngine;->stationRelativePopPoints:[Lfr/testudo/spacecorsair/engine/PopPoint;

    iget v1, p0, Lfr/testudo/spacecorsair/business/mission/engine/DestroyStationMissionEngine;->curWaveRemainingPop:I

    iget-object v2, p0, Lfr/testudo/spacecorsair/business/mission/engine/DestroyStationMissionEngine;->stationRelativePopPoints:[Lfr/testudo/spacecorsair/engine/PopPoint;

    array-length v2, v2

    rem-int/2addr v1, v2

    aget-object v1, v0, v1

    .line 510
    const/4 v0, 0x0

    .line 511
    sget-object v2, Lfr/testudo/spacecorsair/business/mission/engine/DestroyStationMissionEngine$1;->$SwitchMap$fr$testudo$spacecorsair$business$ennemis$EnnemisType:[I

    iget-object v3, p0, Lfr/testudo/spacecorsair/business/mission/engine/DestroyStationMissionEngine;->waveEnnemyType:Lfr/testudo/spacecorsair/business/ennemis/EnnemisType;

    invoke-virtual {v3}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisType;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_62

    .line 521
    :goto_18
    iget v2, p0, Lfr/testudo/spacecorsair/business/mission/engine/DestroyStationMissionEngine;->curWaveSpecificName:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_56

    .line 522
    const-string v2, "pirate"

    iput-object v2, v0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->specificName:Ljava/lang/String;

    .line 528
    :goto_21
    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->applyPopPoint(Lfr/testudo/spacecorsair/engine/PopPoint;)Lfr/testudo/spacecorsair/business/Element;

    .line 529
    iget-object v1, v0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget-object v2, p0, Lfr/testudo/spacecorsair/business/mission/engine/DestroyStationMissionEngine;->stationPosition:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v1, v2}, Lfr/testudo/spacecorsair/engine/Vector2;->add(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 530
    sget-object v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    invoke-virtual {v1, v0}, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->queueElementToBeAddToLevel(Lfr/testudo/spacecorsair/business/Element;)V

    .line 531
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->soundManager:Lfr/testudo/spacecorsair/engine/SoundManager;

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/engine/SoundManager;->playMissileStart()V

    .line 532
    return-void

    .line 513
    :pswitch_38
    iget v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/DestroyStationMissionEngine;->curWaveLevel:I

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModStockSpawn;->newDefensor(I)Lfr/testudo/spacecorsair/business/ennemis/DefensorShip;

    move-result-object v0

    invoke-static {}, Lfr/testudo/spacecorsair/business/player/PlayerShip;->instance()Lfr/testudo/spacecorsair/business/player/PlayerShip;

    move-result-object v2

    invoke-virtual {v0, v2}, Lfr/testudo/spacecorsair/business/ennemis/DefensorShip;->initChase(Lfr/testudo/spacecorsair/business/Element;)Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    move-result-object v0

    goto :goto_18

    .line 516
    :pswitch_47
    iget v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/DestroyStationMissionEngine;->curWaveLevel:I

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModStockSpawn;->newBasicEnnemisShip(I)Lfr/testudo/spacecorsair/business/ennemis/BasicEnnemyShip;

    move-result-object v0

    invoke-static {}, Lfr/testudo/spacecorsair/business/player/PlayerShip;->instance()Lfr/testudo/spacecorsair/business/player/PlayerShip;

    move-result-object v2

    invoke-virtual {v0, v2}, Lfr/testudo/spacecorsair/business/ennemis/BasicEnnemyShip;->initChase(Lfr/testudo/spacecorsair/business/Element;)Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    move-result-object v0

    goto :goto_18

    .line 525
    :cond_56
    sget-object v2, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget v3, p0, Lfr/testudo/spacecorsair/business/mission/engine/DestroyStationMissionEngine;->curWaveSpecificName:I

    invoke-virtual {v2, v3}, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->getLocalizedString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->specificName:Ljava/lang/String;

    goto :goto_21

    .line 511
    nop

    :pswitch_data_62
    .packed-switch 0x1
        :pswitch_38
        :pswitch_47
    .end packed-switch
.end method

.method public onZoneChanged(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 119
    const/4 v0, 0x0

    iput-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/DestroyStationMissionEngine;->stationToDestroy:Lfr/testudo/spacecorsair/business/world/station/DestroyablePirateStation;

    .line 120
    invoke-virtual {p0}, Lfr/testudo/spacecorsair/business/mission/engine/DestroyStationMissionEngine;->resetPhaseDamage()V

    .line 121
    iput-boolean v1, p0, Lfr/testudo/spacecorsair/business/mission/engine/DestroyStationMissionEngine;->isEnnemisWaveActive:Z

    .line 122
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/DestroyStationMissionEngine;->stationZoneId:Lfr/testudo/spacecorsair/game/levels/LevelId;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/levels/LevelId;->levelName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_29

    .line 123
    iput-boolean v2, p0, Lfr/testudo/spacecorsair/business/mission/engine/DestroyStationMissionEngine;->isPlayerInTargetZone:Z

    .line 124
    invoke-virtual {p0}, Lfr/testudo/spacecorsair/business/mission/engine/DestroyStationMissionEngine;->addStationToLevel()V

    .line 129
    :goto_19
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/DestroyStationMissionEngine;->recompenceZoneId:Lfr/testudo/spacecorsair/game/levels/LevelId;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/levels/LevelId;->levelName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 130
    iput-boolean v2, p0, Lfr/testudo/spacecorsair/business/mission/engine/DestroyStationMissionEngine;->isPlayerInRecompenceZone:Z

    .line 136
    :goto_25
    invoke-direct {p0, v2}, Lfr/testudo/spacecorsair/business/mission/engine/DestroyStationMissionEngine;->setPhaseGateAndStationTarget(Z)V

    .line 137
    return-void

    .line 126
    :cond_29
    iput-boolean v1, p0, Lfr/testudo/spacecorsair/business/mission/engine/DestroyStationMissionEngine;->isPlayerInTargetZone:Z

    goto :goto_19

    .line 133
    :cond_2c
    iput-boolean v1, p0, Lfr/testudo/spacecorsair/business/mission/engine/DestroyStationMissionEngine;->isPlayerInRecompenceZone:Z

    goto :goto_25
.end method

.method public resetPhaseDamage()V
    .registers 3

    .prologue
    .line 141
    sget-object v0, Lfr/testudo/spacecorsair/business/mission/engine/DestroyStationMissionEngine$1;->$SwitchMap$fr$testudo$spacecorsair$business$mission$engine$DestroyStationMissionEngine$Phase:[I

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/mission/engine/DestroyStationMissionEngine;->currentPhase:Lfr/testudo/spacecorsair/business/mission/engine/DestroyStationMissionEngine$Phase;

    invoke-virtual {v1}, Lfr/testudo/spacecorsair/business/mission/engine/DestroyStationMissionEngine$Phase;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_22

    .line 156
    :goto_d
    return-void

    .line 144
    :pswitch_e
    sget-object v0, Lfr/testudo/spacecorsair/business/mission/engine/DestroyStationMissionEngine$Phase;->DESTROY_TARGET:Lfr/testudo/spacecorsair/business/mission/engine/DestroyStationMissionEngine$Phase;

    iput-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/DestroyStationMissionEngine;->currentPhase:Lfr/testudo/spacecorsair/business/mission/engine/DestroyStationMissionEngine$Phase;

    goto :goto_d

    .line 147
    :pswitch_13
    sget-object v0, Lfr/testudo/spacecorsair/business/mission/engine/DestroyStationMissionEngine$Phase;->DESTROY_TARGET:Lfr/testudo/spacecorsair/business/mission/engine/DestroyStationMissionEngine$Phase;

    iput-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/DestroyStationMissionEngine;->currentPhase:Lfr/testudo/spacecorsair/business/mission/engine/DestroyStationMissionEngine$Phase;

    goto :goto_d

    .line 150
    :pswitch_18
    sget-object v0, Lfr/testudo/spacecorsair/business/mission/engine/DestroyStationMissionEngine$Phase;->DESTROY_TARGET:Lfr/testudo/spacecorsair/business/mission/engine/DestroyStationMissionEngine$Phase;

    iput-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/DestroyStationMissionEngine;->currentPhase:Lfr/testudo/spacecorsair/business/mission/engine/DestroyStationMissionEngine$Phase;

    goto :goto_d

    .line 153
    :pswitch_1d
    sget-object v0, Lfr/testudo/spacecorsair/business/mission/engine/DestroyStationMissionEngine$Phase;->DESTROY_TARGET:Lfr/testudo/spacecorsair/business/mission/engine/DestroyStationMissionEngine$Phase;

    iput-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/DestroyStationMissionEngine;->currentPhase:Lfr/testudo/spacecorsair/business/mission/engine/DestroyStationMissionEngine$Phase;

    goto :goto_d

    .line 141
    :pswitch_data_22
    .packed-switch 0x1
        :pswitch_e
        :pswitch_13
        :pswitch_18
        :pswitch_1d
    .end packed-switch
.end method

.method public restoreState()V
    .registers 2

    .prologue
    .line 346
    const/4 v0, 0x0

    iput-boolean v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/DestroyStationMissionEngine;->completed:Z

    .line 347
    sget-object v0, Lfr/testudo/spacecorsair/business/mission/engine/DestroyStationMissionEngine$Phase;->DESTROY_TARGET:Lfr/testudo/spacecorsair/business/mission/engine/DestroyStationMissionEngine$Phase;

    iput-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/DestroyStationMissionEngine;->currentPhase:Lfr/testudo/spacecorsair/business/mission/engine/DestroyStationMissionEngine$Phase;

    .line 348
    return-void
.end method

.method public saveState()V
    .registers 1

    .prologue
    .line 353
    return-void
.end method

.method public startNewWave(IILfr/testudo/spacecorsair/business/ennemis/EnnemisType;II)V
    .registers 7

    .prologue
    .line 496
    const/4 v0, 0x1

    iput-boolean v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/DestroyStationMissionEngine;->isEnnemisWaveActive:Z

    .line 497
    iput p1, p0, Lfr/testudo/spacecorsair/business/mission/engine/DestroyStationMissionEngine;->curWaveRemainingPop:I

    .line 498
    iput p2, p0, Lfr/testudo/spacecorsair/business/mission/engine/DestroyStationMissionEngine;->curWavePopFrequence:I

    .line 499
    iput p2, p0, Lfr/testudo/spacecorsair/business/mission/engine/DestroyStationMissionEngine;->currentRemainingTimePop:I

    .line 500
    iput-object p3, p0, Lfr/testudo/spacecorsair/business/mission/engine/DestroyStationMissionEngine;->waveEnnemyType:Lfr/testudo/spacecorsair/business/ennemis/EnnemisType;

    .line 501
    iput p4, p0, Lfr/testudo/spacecorsair/business/mission/engine/DestroyStationMissionEngine;->curWaveLevel:I

    .line 502
    iput p5, p0, Lfr/testudo/spacecorsair/business/mission/engine/DestroyStationMissionEngine;->curWaveSpecificName:I

    .line 503
    return-void
.end method

.method public terminate()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 363
    iput-boolean v1, p0, Lfr/testudo/spacecorsair/business/mission/engine/DestroyStationMissionEngine;->completed:Z

    .line 364
    const/4 v0, 0x0

    iput-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/DestroyStationMissionEngine;->stationToDestroy:Lfr/testudo/spacecorsair/business/world/station/DestroyablePirateStation;

    .line 365
    invoke-direct {p0, v1}, Lfr/testudo/spacecorsair/business/mission/engine/DestroyStationMissionEngine;->setPhaseGateAndStationTarget(Z)V

    .line 366
    sget-object v0, Lfr/testudo/spacecorsair/business/mission/engine/DestroyStationMissionEngine$Phase;->DESTROY_TARGET:Lfr/testudo/spacecorsair/business/mission/engine/DestroyStationMissionEngine$Phase;

    iput-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/DestroyStationMissionEngine;->currentPhase:Lfr/testudo/spacecorsair/business/mission/engine/DestroyStationMissionEngine$Phase;

    .line 368
    return-void
.end method

.method public updateStationStatus(I)V
    .registers 4

    .prologue
    .line 214
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/DestroyStationMissionEngine;->stationToDestroy:Lfr/testudo/spacecorsair/business/world/station/DestroyablePirateStation;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/DestroyStationMissionEngine;->stationToDestroy:Lfr/testudo/spacecorsair/business/world/station/DestroyablePirateStation;

    iget-boolean v0, v0, Lfr/testudo/spacecorsair/business/world/station/DestroyablePirateStation;->removed:Z

    if-eqz v0, :cond_b

    .line 254
    :cond_a
    :goto_a
    return-void

    .line 217
    :cond_b
    const/16 v0, 0x19

    if-le p1, v0, :cond_a

    .line 221
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/DestroyStationMissionEngine;->stationToDestroy:Lfr/testudo/spacecorsair/business/world/station/DestroyablePirateStation;

    iget v0, v0, Lfr/testudo/spacecorsair/business/world/station/DestroyablePirateStation;->lifeInPourc:F

    const/high16 v1, 0x41c80000    # 25.0f

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_1d

    .line 222
    invoke-virtual {p0}, Lfr/testudo/spacecorsair/business/mission/engine/DestroyStationMissionEngine;->onStation25()V

    goto :goto_a

    .line 226
    :cond_1d
    const/16 v0, 0x32

    if-le p1, v0, :cond_a

    .line 230
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/DestroyStationMissionEngine;->stationToDestroy:Lfr/testudo/spacecorsair/business/world/station/DestroyablePirateStation;

    iget v0, v0, Lfr/testudo/spacecorsair/business/world/station/DestroyablePirateStation;->lifeInPourc:F

    const/high16 v1, 0x42480000    # 50.0f

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_2f

    .line 231
    invoke-virtual {p0}, Lfr/testudo/spacecorsair/business/mission/engine/DestroyStationMissionEngine;->onStation50()V

    goto :goto_a

    .line 235
    :cond_2f
    const/16 v0, 0x4b

    if-le p1, v0, :cond_a

    .line 239
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/DestroyStationMissionEngine;->stationToDestroy:Lfr/testudo/spacecorsair/business/world/station/DestroyablePirateStation;

    iget v0, v0, Lfr/testudo/spacecorsair/business/world/station/DestroyablePirateStation;->lifeInPourc:F

    const/high16 v1, 0x42960000    # 75.0f

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_41

    .line 240
    invoke-virtual {p0}, Lfr/testudo/spacecorsair/business/mission/engine/DestroyStationMissionEngine;->onStation75()V

    goto :goto_a

    .line 244
    :cond_41
    const/16 v0, 0x5f

    if-le p1, v0, :cond_a

    .line 248
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/DestroyStationMissionEngine;->stationToDestroy:Lfr/testudo/spacecorsair/business/world/station/DestroyablePirateStation;

    iget v0, v0, Lfr/testudo/spacecorsair/business/world/station/DestroyablePirateStation;->lifeInPourc:F

    const/high16 v1, 0x42be0000    # 95.0f

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_a

    .line 249
    invoke-virtual {p0}, Lfr/testudo/spacecorsair/business/mission/engine/DestroyStationMissionEngine;->onStation95()V

    goto :goto_a
.end method
