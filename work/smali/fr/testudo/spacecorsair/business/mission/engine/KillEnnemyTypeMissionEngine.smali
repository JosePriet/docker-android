.class public Lfr/testudo/spacecorsair/business/mission/engine/KillEnnemyTypeMissionEngine;
.super Lfr/testudo/spacecorsair/business/mission/MissionListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lfr/testudo/spacecorsair/business/mission/engine/KillEnnemyTypeMissionEngine$2;,
        Lfr/testudo/spacecorsair/business/mission/engine/KillEnnemyTypeMissionEngine$TargetZoneEnterListener;,
        Lfr/testudo/spacecorsair/business/mission/engine/KillEnnemyTypeMissionEngine$Phase;
    }
.end annotation


# static fields
.field public static DEFAULT:Lfr/testudo/spacecorsair/business/mission/engine/KillEnnemyTypeMissionEngine$TargetZoneEnterListener;


# instance fields
.field public completed:Z

.field public currentPhase:Lfr/testudo/spacecorsair/business/mission/engine/KillEnnemyTypeMissionEngine$Phase;

.field public doNotCountClassicDeath:Z

.field public drawPositionHint:Z

.field public elementToDestroy:Ljava/lang/Class;

.field public invisiblePoint:Lfr/testudo/spacecorsair/business/world/InvisiblePoint;

.field public invisiblePointPosition:Lfr/testudo/spacecorsair/engine/Vector2;

.field private isPlayerInRecompenceZone:Z

.field private isPlayerInTargetZone:Z

.field public missionId:Ljava/lang/String;

.field public numberOfElementToDestroy:I

.field public recompenceZoneId:Lfr/testudo/spacecorsair/game/levels/LevelId;

.field public remainingElementToDestroy:I

.field public stationRewardName:Ljava/lang/String;

.field public stationZoneId:Lfr/testudo/spacecorsair/game/levels/LevelId;

.field public targetZoneEnterListener:Lfr/testudo/spacecorsair/business/mission/engine/KillEnnemyTypeMissionEngine$TargetZoneEnterListener;

.field public textDockToStation:Ljava/lang/String;

.field public textGotoRecompZone:Ljava/lang/String;

.field public textGotoStationZone:Ljava/lang/String;

.field public textKillEnnemyId:I

.field public textKillEnnemyWithCountLocalised:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 342
    new-instance v0, Lfr/testudo/spacecorsair/business/mission/engine/KillEnnemyTypeMissionEngine$1;

    invoke-direct {v0}, Lfr/testudo/spacecorsair/business/mission/engine/KillEnnemyTypeMissionEngine$1;-><init>()V

    sput-object v0, Lfr/testudo/spacecorsair/business/mission/engine/KillEnnemyTypeMissionEngine;->DEFAULT:Lfr/testudo/spacecorsair/business/mission/engine/KillEnnemyTypeMissionEngine$TargetZoneEnterListener;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lfr/testudo/spacecorsair/game/levels/LevelId;Lfr/testudo/spacecorsair/game/levels/LevelId;Ljava/lang/String;ILjava/lang/Class;ILfr/testudo/spacecorsair/engine/Vector2;)V
    .registers 11

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 78
    invoke-direct {p0}, Lfr/testudo/spacecorsair/business/mission/MissionListener;-><init>()V

    .line 43
    iput-boolean v1, p0, Lfr/testudo/spacecorsair/business/mission/engine/KillEnnemyTypeMissionEngine;->completed:Z

    .line 51
    iput-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/KillEnnemyTypeMissionEngine;->textGotoStationZone:Ljava/lang/String;

    .line 52
    iput-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/KillEnnemyTypeMissionEngine;->textGotoRecompZone:Ljava/lang/String;

    .line 53
    iput-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/KillEnnemyTypeMissionEngine;->textKillEnnemyWithCountLocalised:Ljava/lang/String;

    .line 54
    iput-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/KillEnnemyTypeMissionEngine;->textDockToStation:Ljava/lang/String;

    .line 55
    iput-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/KillEnnemyTypeMissionEngine;->stationRewardName:Ljava/lang/String;

    .line 68
    iput-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/KillEnnemyTypeMissionEngine;->elementToDestroy:Ljava/lang/Class;

    .line 72
    new-instance v0, Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-direct {v0}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>()V

    iput-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/KillEnnemyTypeMissionEngine;->invisiblePointPosition:Lfr/testudo/spacecorsair/engine/Vector2;

    .line 73
    iput-boolean v1, p0, Lfr/testudo/spacecorsair/business/mission/engine/KillEnnemyTypeMissionEngine;->drawPositionHint:Z

    .line 75
    iput-boolean v1, p0, Lfr/testudo/spacecorsair/business/mission/engine/KillEnnemyTypeMissionEngine;->doNotCountClassicDeath:Z

    .line 80
    iput-object p1, p0, Lfr/testudo/spacecorsair/business/mission/engine/KillEnnemyTypeMissionEngine;->missionId:Ljava/lang/String;

    .line 81
    iput-object p2, p0, Lfr/testudo/spacecorsair/business/mission/engine/KillEnnemyTypeMissionEngine;->stationZoneId:Lfr/testudo/spacecorsair/game/levels/LevelId;

    .line 82
    iput-object p3, p0, Lfr/testudo/spacecorsair/business/mission/engine/KillEnnemyTypeMissionEngine;->recompenceZoneId:Lfr/testudo/spacecorsair/game/levels/LevelId;

    .line 83
    iput-object p4, p0, Lfr/testudo/spacecorsair/business/mission/engine/KillEnnemyTypeMissionEngine;->stationRewardName:Ljava/lang/String;

    .line 84
    iput p5, p0, Lfr/testudo/spacecorsair/business/mission/engine/KillEnnemyTypeMissionEngine;->textKillEnnemyId:I

    .line 85
    iput-object p6, p0, Lfr/testudo/spacecorsair/business/mission/engine/KillEnnemyTypeMissionEngine;->elementToDestroy:Ljava/lang/Class;

    .line 86
    iput p7, p0, Lfr/testudo/spacecorsair/business/mission/engine/KillEnnemyTypeMissionEngine;->numberOfElementToDestroy:I

    .line 87
    if-eqz p8, :cond_3e

    .line 88
    const/4 v0, 0x1

    iput-boolean v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/KillEnnemyTypeMissionEngine;->drawPositionHint:Z

    .line 89
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/KillEnnemyTypeMissionEngine;->invisiblePointPosition:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v0, p8}, Lfr/testudo/spacecorsair/engine/Vector2;->setSameAs(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 93
    :goto_36
    sget-object v0, Lfr/testudo/spacecorsair/business/mission/engine/KillEnnemyTypeMissionEngine;->DEFAULT:Lfr/testudo/spacecorsair/business/mission/engine/KillEnnemyTypeMissionEngine$TargetZoneEnterListener;

    iput-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/KillEnnemyTypeMissionEngine;->targetZoneEnterListener:Lfr/testudo/spacecorsair/business/mission/engine/KillEnnemyTypeMissionEngine$TargetZoneEnterListener;

    .line 96
    invoke-virtual {p0}, Lfr/testudo/spacecorsair/business/mission/engine/KillEnnemyTypeMissionEngine;->initStrings()V

    .line 97
    return-void

    .line 91
    :cond_3e
    iput-boolean v1, p0, Lfr/testudo/spacecorsair/business/mission/engine/KillEnnemyTypeMissionEngine;->drawPositionHint:Z

    goto :goto_36
.end method

.method private addPositionHintPoint()V
    .registers 6

    .prologue
    const/4 v4, 0x1

    .line 322
    invoke-static {}, Lfr/testudo/spacecorsair/business/factory/GamePools;->newInvisiblePoint()Lfr/testudo/spacecorsair/business/world/InvisiblePoint;

    move-result-object v0

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/mission/engine/KillEnnemyTypeMissionEngine;->invisiblePointPosition:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/business/world/InvisiblePoint;->init(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/business/world/InvisiblePoint;

    move-result-object v0

    iput-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/KillEnnemyTypeMissionEngine;->invisiblePoint:Lfr/testudo/spacecorsair/business/world/InvisiblePoint;

    .line 323
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/KillEnnemyTypeMissionEngine;->invisiblePoint:Lfr/testudo/spacecorsair/business/world/InvisiblePoint;

    iput-boolean v4, v0, Lfr/testudo/spacecorsair/business/world/InvisiblePoint;->isMissionObjective:Z

    .line 324
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/KillEnnemyTypeMissionEngine;->invisiblePoint:Lfr/testudo/spacecorsair/business/world/InvisiblePoint;

    const-wide/16 v2, 0xbb8

    iput-wide v2, v0, Lfr/testudo/spacecorsair/business/world/InvisiblePoint;->minDistanceForRadarActivation:J

    .line 325
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/KillEnnemyTypeMissionEngine;->invisiblePoint:Lfr/testudo/spacecorsair/business/world/InvisiblePoint;

    iput-boolean v4, v0, Lfr/testudo/spacecorsair/business/world/InvisiblePoint;->overrideRadarAndMissionMode:Z

    .line 326
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/KillEnnemyTypeMissionEngine;->invisiblePoint:Lfr/testudo/spacecorsair/business/world/InvisiblePoint;

    sget-object v1, Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;->RED:Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;

    iput-object v1, v0, Lfr/testudo/spacecorsair/business/world/InvisiblePoint;->missionObjectiveColor:Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;

    .line 327
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/Game;->currentLevel:Lfr/testudo/spacecorsair/game/levels/Level;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/levels/Level;->toAdd:Ljava/util/List;

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/mission/engine/KillEnnemyTypeMissionEngine;->invisiblePoint:Lfr/testudo/spacecorsair/business/world/InvisiblePoint;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 329
    return-void
.end method

.method private removePositionHintPoint()V
    .registers 2

    .prologue
    .line 316
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/KillEnnemyTypeMissionEngine;->invisiblePoint:Lfr/testudo/spacecorsair/business/world/InvisiblePoint;

    if-eqz v0, :cond_9

    .line 317
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/KillEnnemyTypeMissionEngine;->invisiblePoint:Lfr/testudo/spacecorsair/business/world/InvisiblePoint;

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/business/world/InvisiblePoint;->remove()V

    .line 319
    :cond_9
    return-void
.end method

.method private setPhaseGateAndStationTarget(Z)V
    .registers 4

    .prologue
    .line 250
    sget-object v0, Lfr/testudo/spacecorsair/business/mission/engine/KillEnnemyTypeMissionEngine$2;->$SwitchMap$fr$testudo$spacecorsair$business$mission$engine$KillEnnemyTypeMissionEngine$Phase:[I

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/mission/engine/KillEnnemyTypeMissionEngine;->currentPhase:Lfr/testudo/spacecorsair/business/mission/engine/KillEnnemyTypeMissionEngine$Phase;

    invoke-virtual {v1}, Lfr/testudo/spacecorsair/business/mission/engine/KillEnnemyTypeMissionEngine$Phase;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_5e

    .line 282
    :cond_d
    :goto_d
    return-void

    .line 252
    :pswitch_e
    iget-boolean v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/KillEnnemyTypeMissionEngine;->isPlayerInTargetZone:Z

    if-nez v0, :cond_d

    .line 256
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/Game;->currentLevel:Lfr/testudo/spacecorsair/game/levels/Level;

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/mission/engine/KillEnnemyTypeMissionEngine;->stationZoneId:Lfr/testudo/spacecorsair/game/levels/LevelId;

    invoke-static {v1}, Lfr/testudo/spacecorsair/business/world/PathFinder;->getPortalNameToGoTo(Lfr/testudo/spacecorsair/game/levels/LevelId;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/game/levels/Level;->findPortalByName(Ljava/lang/String;)Lfr/testudo/spacecorsair/business/world/Portal;

    move-result-object v0

    .line 257
    if-eqz v0, :cond_d

    .line 258
    iput-boolean p1, v0, Lfr/testudo/spacecorsair/business/world/Portal;->isMissionObjective:Z

    .line 259
    sget-object v1, Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;->ORANGE:Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;

    iput-object v1, v0, Lfr/testudo/spacecorsair/business/world/Portal;->missionObjectiveColor:Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;

    goto :goto_d

    .line 264
    :pswitch_2b
    iget-boolean v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/KillEnnemyTypeMissionEngine;->isPlayerInRecompenceZone:Z

    if-eqz v0, :cond_44

    .line 266
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/Game;->currentLevel:Lfr/testudo/spacecorsair/game/levels/Level;

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/mission/engine/KillEnnemyTypeMissionEngine;->stationRewardName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/game/levels/Level;->findStationByName(Ljava/lang/String;)Lfr/testudo/spacecorsair/business/world/station/Station;

    move-result-object v0

    .line 267
    if-eqz v0, :cond_d

    .line 268
    iput-boolean p1, v0, Lfr/testudo/spacecorsair/business/world/station/Station;->isMissionObjective:Z

    .line 269
    sget-object v1, Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;->ORANGE:Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;

    iput-object v1, v0, Lfr/testudo/spacecorsair/business/world/station/Station;->missionObjectiveColor:Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;

    goto :goto_d

    .line 275
    :cond_44
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/Game;->currentLevel:Lfr/testudo/spacecorsair/game/levels/Level;

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/mission/engine/KillEnnemyTypeMissionEngine;->recompenceZoneId:Lfr/testudo/spacecorsair/game/levels/LevelId;

    invoke-static {v1}, Lfr/testudo/spacecorsair/business/world/PathFinder;->getPortalNameToGoTo(Lfr/testudo/spacecorsair/game/levels/LevelId;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/game/levels/Level;->findPortalByName(Ljava/lang/String;)Lfr/testudo/spacecorsair/business/world/Portal;

    move-result-object v0

    .line 276
    if-eqz v0, :cond_d

    .line 277
    iput-boolean p1, v0, Lfr/testudo/spacecorsair/business/world/Portal;->isMissionObjective:Z

    .line 278
    sget-object v1, Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;->ORANGE:Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;

    iput-object v1, v0, Lfr/testudo/spacecorsair/business/world/Portal;->missionObjectiveColor:Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;

    goto :goto_d

    .line 250
    nop

    :pswitch_data_5e
    .packed-switch 0x1
        :pswitch_e
        :pswitch_2b
    .end packed-switch
.end method


# virtual methods
.method public getCurrentInstruction()Ljava/lang/String;
    .registers 3

    .prologue
    .line 189
    sget-object v0, Lfr/testudo/spacecorsair/business/mission/engine/KillEnnemyTypeMissionEngine$2;->$SwitchMap$fr$testudo$spacecorsair$business$mission$engine$KillEnnemyTypeMissionEngine$Phase:[I

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/mission/engine/KillEnnemyTypeMissionEngine;->currentPhase:Lfr/testudo/spacecorsair/business/mission/engine/KillEnnemyTypeMissionEngine$Phase;

    invoke-virtual {v1}, Lfr/testudo/spacecorsair/business/mission/engine/KillEnnemyTypeMissionEngine$Phase;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_24

    .line 205
    const-string v0, ""

    :goto_f
    return-object v0

    .line 191
    :pswitch_10
    iget-boolean v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/KillEnnemyTypeMissionEngine;->isPlayerInTargetZone:Z

    if-eqz v0, :cond_17

    .line 192
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/KillEnnemyTypeMissionEngine;->textKillEnnemyWithCountLocalised:Ljava/lang/String;

    goto :goto_f

    .line 194
    :cond_17
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/KillEnnemyTypeMissionEngine;->textGotoStationZone:Ljava/lang/String;

    goto :goto_f

    .line 198
    :pswitch_1a
    iget-boolean v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/KillEnnemyTypeMissionEngine;->isPlayerInRecompenceZone:Z

    if-eqz v0, :cond_21

    .line 199
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/KillEnnemyTypeMissionEngine;->textDockToStation:Ljava/lang/String;

    goto :goto_f

    .line 201
    :cond_21
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/KillEnnemyTypeMissionEngine;->textGotoRecompZone:Ljava/lang/String;

    goto :goto_f

    .line 189
    :pswitch_data_24
    .packed-switch 0x1
        :pswitch_10
        :pswitch_1a
    .end packed-switch
.end method

.method public giveUp()V
    .registers 1

    .prologue
    .line 232
    invoke-direct {p0}, Lfr/testudo/spacecorsair/business/mission/engine/KillEnnemyTypeMissionEngine;->removePositionHintPoint()V

    .line 233
    invoke-virtual {p0}, Lfr/testudo/spacecorsair/business/mission/engine/KillEnnemyTypeMissionEngine;->terminate()V

    .line 234
    return-void
.end method

.method public init()V
    .registers 3

    .prologue
    .line 210
    iget v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/KillEnnemyTypeMissionEngine;->numberOfElementToDestroy:I

    iput v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/KillEnnemyTypeMissionEngine;->remainingElementToDestroy:I

    .line 211
    sget-object v0, Lfr/testudo/spacecorsair/business/mission/engine/KillEnnemyTypeMissionEngine$Phase;->DESTROY_TARGET:Lfr/testudo/spacecorsair/business/mission/engine/KillEnnemyTypeMissionEngine$Phase;

    iput-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/KillEnnemyTypeMissionEngine;->currentPhase:Lfr/testudo/spacecorsair/business/mission/engine/KillEnnemyTypeMissionEngine$Phase;

    .line 212
    invoke-virtual {p0}, Lfr/testudo/spacecorsair/business/mission/engine/KillEnnemyTypeMissionEngine;->updateInstructionElementToDestroy()V

    .line 213
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/Game;->currentLevel:Lfr/testudo/spacecorsair/game/levels/Level;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/levels/Level;->name:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lfr/testudo/spacecorsair/business/mission/engine/KillEnnemyTypeMissionEngine;->onZoneChanged(Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    return-void
.end method

.method public initStrings()V
    .registers 4

    .prologue
    .line 286
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/KillEnnemyTypeMissionEngine;->stationZoneId:Lfr/testudo/spacecorsair/game/levels/LevelId;

    if-eqz v0, :cond_2a

    .line 287
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

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/mission/engine/KillEnnemyTypeMissionEngine;->stationZoneId:Lfr/testudo/spacecorsair/game/levels/LevelId;

    iget-object v1, v1, Lfr/testudo/spacecorsair/game/levels/LevelId;->levelName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/KillEnnemyTypeMissionEngine;->textGotoStationZone:Ljava/lang/String;

    .line 289
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

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/mission/engine/KillEnnemyTypeMissionEngine;->recompenceZoneId:Lfr/testudo/spacecorsair/game/levels/LevelId;

    iget-object v1, v1, Lfr/testudo/spacecorsair/game/levels/LevelId;->levelName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/KillEnnemyTypeMissionEngine;->textGotoRecompZone:Ljava/lang/String;

    .line 290
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

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/mission/engine/KillEnnemyTypeMissionEngine;->stationRewardName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/KillEnnemyTypeMissionEngine;->textDockToStation:Ljava/lang/String;

    .line 292
    return-void
.end method

.method public isCompleted()Z
    .registers 2

    .prologue
    .line 245
    iget-boolean v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/KillEnnemyTypeMissionEngine;->completed:Z

    return v0
.end method

.method public onBeforePlayerDock()V
    .registers 1

    .prologue
    .line 165
    return-void
.end method

.method public onDoPhysic(J)V
    .registers 3

    .prologue
    .line 185
    return-void
.end method

.method public onElementDestroyed(Lfr/testudo/spacecorsair/business/Element;)V
    .registers 2

    .prologue
    .line 146
    return-void
.end method

.method public onElementDestroyedByPlayer(Lfr/testudo/spacecorsair/business/Element;)V
    .registers 3

    .prologue
    .line 151
    iget-boolean v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/KillEnnemyTypeMissionEngine;->doNotCountClassicDeath:Z

    if-nez v0, :cond_17

    iget-boolean v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/KillEnnemyTypeMissionEngine;->isPlayerInTargetZone:Z

    if-eqz v0, :cond_17

    iget-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/KillEnnemyTypeMissionEngine;->elementToDestroy:Ljava/lang/Class;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    iget-boolean v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/KillEnnemyTypeMissionEngine;->completed:Z

    if-nez v0, :cond_17

    .line 152
    invoke-virtual {p0}, Lfr/testudo/spacecorsair/business/mission/engine/KillEnnemyTypeMissionEngine;->onTargetKindDestroyedByPLayer()V

    .line 155
    :cond_17
    return-void
.end method

.method public onEveryMinute()V
    .registers 1

    .prologue
    .line 141
    return-void
.end method

.method public onEveryTenGameSec()V
    .registers 1

    .prologue
    .line 136
    return-void
.end method

.method public onMineDisabled(Lfr/testudo/spacecorsair/business/world/ReprogramableMine;)V
    .registers 3

    .prologue
    .line 352
    invoke-super {p0, p1}, Lfr/testudo/spacecorsair/business/mission/MissionListener;->onMineDisabled(Lfr/testudo/spacecorsair/business/world/ReprogramableMine;)V

    .line 353
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/KillEnnemyTypeMissionEngine;->elementToDestroy:Ljava/lang/Class;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    iget-boolean v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/KillEnnemyTypeMissionEngine;->completed:Z

    if-nez v0, :cond_12

    .line 354
    invoke-virtual {p0}, Lfr/testudo/spacecorsair/business/mission/engine/KillEnnemyTypeMissionEngine;->onTargetKindDestroyedByPLayer()V

    .line 356
    :cond_12
    return-void
.end method

.method public onPlayerBuyItem(Lfr/testudo/spacecorsair/business/loot/SpaceObject;)V
    .registers 2

    .prologue
    .line 175
    return-void
.end method

.method public onPlayerDeath()V
    .registers 1

    .prologue
    .line 160
    return-void
.end method

.method public onPlayerLoot(Lfr/testudo/spacecorsair/business/loot/LootElement;)Z
    .registers 3

    .prologue
    .line 130
    const/4 v0, 0x1

    return v0
.end method

.method public onPlayerSellItem(Lfr/testudo/spacecorsair/business/loot/SpaceObject;)V
    .registers 2

    .prologue
    .line 170
    return-void
.end method

.method public onPlayerUndock()V
    .registers 1

    .prologue
    .line 180
    return-void
.end method

.method public onTargetKindDestroyedByPLayer()V
    .registers 4

    .prologue
    const/4 v2, 0x1

    .line 301
    iget v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/KillEnnemyTypeMissionEngine;->remainingElementToDestroy:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/KillEnnemyTypeMissionEngine;->remainingElementToDestroy:I

    .line 302
    iget v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/KillEnnemyTypeMissionEngine;->remainingElementToDestroy:I

    if-gtz v0, :cond_30

    .line 303
    iput-boolean v2, p0, Lfr/testudo/spacecorsair/business/mission/engine/KillEnnemyTypeMissionEngine;->completed:Z

    .line 304
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    const v1, 0x7f0702c1

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->getStringRessource(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-static {v0, v1}, Lfr/testudo/spacecorsair/display/hud/WelcomeMessage;->setText(Ljava/lang/String;Ljava/lang/String;)V

    .line 305
    invoke-direct {p0}, Lfr/testudo/spacecorsair/business/mission/engine/KillEnnemyTypeMissionEngine;->removePositionHintPoint()V

    .line 306
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->soundManager:Lfr/testudo/spacecorsair/engine/SoundManager;

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/engine/SoundManager;->playMissionComplete()V

    .line 307
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lfr/testudo/spacecorsair/business/mission/engine/KillEnnemyTypeMissionEngine;->setPhaseGateAndStationTarget(Z)V

    .line 308
    sget-object v0, Lfr/testudo/spacecorsair/business/mission/engine/KillEnnemyTypeMissionEngine$Phase;->GATHER_RECOMP:Lfr/testudo/spacecorsair/business/mission/engine/KillEnnemyTypeMissionEngine$Phase;

    iput-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/KillEnnemyTypeMissionEngine;->currentPhase:Lfr/testudo/spacecorsair/business/mission/engine/KillEnnemyTypeMissionEngine$Phase;

    .line 309
    invoke-direct {p0, v2}, Lfr/testudo/spacecorsair/business/mission/engine/KillEnnemyTypeMissionEngine;->setPhaseGateAndStationTarget(Z)V

    .line 311
    :cond_30
    invoke-virtual {p0}, Lfr/testudo/spacecorsair/business/mission/engine/KillEnnemyTypeMissionEngine;->updateInstructionElementToDestroy()V

    .line 312
    return-void
.end method

.method public onZoneChanged(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 104
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/KillEnnemyTypeMissionEngine;->stationZoneId:Lfr/testudo/spacecorsair/game/levels/LevelId;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/levels/LevelId;->levelName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_31

    .line 105
    iput-boolean v1, p0, Lfr/testudo/spacecorsair/business/mission/engine/KillEnnemyTypeMissionEngine;->isPlayerInTargetZone:Z

    .line 107
    iget-boolean v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/KillEnnemyTypeMissionEngine;->drawPositionHint:Z

    if-eqz v0, :cond_19

    iget v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/KillEnnemyTypeMissionEngine;->remainingElementToDestroy:I

    if-lez v0, :cond_19

    .line 108
    invoke-direct {p0}, Lfr/testudo/spacecorsair/business/mission/engine/KillEnnemyTypeMissionEngine;->addPositionHintPoint()V

    .line 110
    :cond_19
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/KillEnnemyTypeMissionEngine;->targetZoneEnterListener:Lfr/testudo/spacecorsair/business/mission/engine/KillEnnemyTypeMissionEngine$TargetZoneEnterListener;

    invoke-interface {v0}, Lfr/testudo/spacecorsair/business/mission/engine/KillEnnemyTypeMissionEngine$TargetZoneEnterListener;->onPlayerEnteredInTargetZone()V

    .line 117
    :goto_1e
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/KillEnnemyTypeMissionEngine;->recompenceZoneId:Lfr/testudo/spacecorsair/game/levels/LevelId;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/levels/LevelId;->levelName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_34

    .line 118
    iput-boolean v1, p0, Lfr/testudo/spacecorsair/business/mission/engine/KillEnnemyTypeMissionEngine;->isPlayerInRecompenceZone:Z

    .line 124
    :goto_2a
    invoke-direct {p0, v1}, Lfr/testudo/spacecorsair/business/mission/engine/KillEnnemyTypeMissionEngine;->setPhaseGateAndStationTarget(Z)V

    .line 125
    invoke-virtual {p0}, Lfr/testudo/spacecorsair/business/mission/engine/KillEnnemyTypeMissionEngine;->updateInstructionElementToDestroy()V

    .line 126
    return-void

    .line 114
    :cond_31
    iput-boolean v2, p0, Lfr/testudo/spacecorsair/business/mission/engine/KillEnnemyTypeMissionEngine;->isPlayerInTargetZone:Z

    goto :goto_1e

    .line 121
    :cond_34
    iput-boolean v2, p0, Lfr/testudo/spacecorsair/business/mission/engine/KillEnnemyTypeMissionEngine;->isPlayerInRecompenceZone:Z

    goto :goto_2a
.end method

.method public restoreState()V
    .registers 2

    .prologue
    .line 219
    iget v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/KillEnnemyTypeMissionEngine;->numberOfElementToDestroy:I

    iput v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/KillEnnemyTypeMissionEngine;->remainingElementToDestroy:I

    .line 220
    sget-object v0, Lfr/testudo/spacecorsair/business/mission/engine/KillEnnemyTypeMissionEngine$Phase;->DESTROY_TARGET:Lfr/testudo/spacecorsair/business/mission/engine/KillEnnemyTypeMissionEngine$Phase;

    iput-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/KillEnnemyTypeMissionEngine;->currentPhase:Lfr/testudo/spacecorsair/business/mission/engine/KillEnnemyTypeMissionEngine$Phase;

    .line 221
    invoke-virtual {p0}, Lfr/testudo/spacecorsair/business/mission/engine/KillEnnemyTypeMissionEngine;->updateInstructionElementToDestroy()V

    .line 222
    return-void
.end method

.method public saveState()V
    .registers 1

    .prologue
    .line 227
    return-void
.end method

.method public terminate()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 238
    iput-boolean v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/KillEnnemyTypeMissionEngine;->completed:Z

    .line 239
    invoke-direct {p0, v0}, Lfr/testudo/spacecorsair/business/mission/engine/KillEnnemyTypeMissionEngine;->setPhaseGateAndStationTarget(Z)V

    .line 240
    sget-object v0, Lfr/testudo/spacecorsair/business/mission/engine/KillEnnemyTypeMissionEngine$Phase;->DESTROY_TARGET:Lfr/testudo/spacecorsair/business/mission/engine/KillEnnemyTypeMissionEngine$Phase;

    iput-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/KillEnnemyTypeMissionEngine;->currentPhase:Lfr/testudo/spacecorsair/business/mission/engine/KillEnnemyTypeMissionEngine$Phase;

    .line 241
    return-void
.end method

.method public updateInstructionElementToDestroy()V
    .registers 4

    .prologue
    .line 296
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget v2, p0, Lfr/testudo/spacecorsair/business/mission/engine/KillEnnemyTypeMissionEngine;->textKillEnnemyId:I

    invoke-virtual {v1, v2}, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->getLocalizedString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lfr/testudo/spacecorsair/business/mission/engine/KillEnnemyTypeMissionEngine;->numberOfElementToDestroy:I

    iget v2, p0, Lfr/testudo/spacecorsair/business/mission/engine/KillEnnemyTypeMissionEngine;->remainingElementToDestroy:I

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lfr/testudo/spacecorsair/business/mission/engine/KillEnnemyTypeMissionEngine;->numberOfElementToDestroy:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/KillEnnemyTypeMissionEngine;->textKillEnnemyWithCountLocalised:Ljava/lang/String;

    .line 297
    return-void
.end method

.method public withTargetZoneEnterListener(Lfr/testudo/spacecorsair/business/mission/engine/KillEnnemyTypeMissionEngine$TargetZoneEnterListener;)Lfr/testudo/spacecorsair/business/mission/engine/KillEnnemyTypeMissionEngine;
    .registers 2

    .prologue
    .line 332
    iput-object p1, p0, Lfr/testudo/spacecorsair/business/mission/engine/KillEnnemyTypeMissionEngine;->targetZoneEnterListener:Lfr/testudo/spacecorsair/business/mission/engine/KillEnnemyTypeMissionEngine$TargetZoneEnterListener;

    .line 333
    return-object p0
.end method
