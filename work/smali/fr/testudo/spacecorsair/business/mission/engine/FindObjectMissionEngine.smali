.class public Lfr/testudo/spacecorsair/business/mission/engine/FindObjectMissionEngine;
.super Lfr/testudo/spacecorsair/business/mission/MissionListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lfr/testudo/spacecorsair/business/mission/engine/FindObjectMissionEngine$1;,
        Lfr/testudo/spacecorsair/business/mission/engine/FindObjectMissionEngine$Phase;
    }
.end annotation


# instance fields
.field public completed:Z

.field public currentPhase:Lfr/testudo/spacecorsair/business/mission/engine/FindObjectMissionEngine$Phase;

.field public detectionDistance:I

.field public findStringID:I

.field private isPlayerInRecompenceZone:Z

.field private isPlayerInTargetZone:Z

.field public missionTarget:Lfr/testudo/spacecorsair/business/Element;

.field objectFoundListener:Lfr/testudo/spacecorsair/business/mission/engine/FindObjectMissionListener;

.field public recompenceZoneId:Lfr/testudo/spacecorsair/game/levels/LevelId;

.field public stationGiveBackName:Ljava/lang/String;

.field public targetZoneId:Lfr/testudo/spacecorsair/game/levels/LevelId;

.field public textDockToStation:Ljava/lang/String;

.field public textFindTarget:Ljava/lang/String;

.field public textGotoRecompZone:Ljava/lang/String;

.field public textGotoTargetZone:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lfr/testudo/spacecorsair/game/levels/LevelId;Lfr/testudo/spacecorsair/game/levels/LevelId;ILjava/lang/String;ILfr/testudo/spacecorsair/business/mission/engine/FindObjectMissionListener;)V
    .registers 8

    .prologue
    .line 64
    invoke-direct {p0}, Lfr/testudo/spacecorsair/business/mission/MissionListener;-><init>()V

    .line 37
    const/4 v0, 0x0

    iput-boolean v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/FindObjectMissionEngine;->completed:Z

    .line 65
    iput-object p1, p0, Lfr/testudo/spacecorsair/business/mission/engine/FindObjectMissionEngine;->targetZoneId:Lfr/testudo/spacecorsair/game/levels/LevelId;

    .line 66
    iput-object p2, p0, Lfr/testudo/spacecorsair/business/mission/engine/FindObjectMissionEngine;->recompenceZoneId:Lfr/testudo/spacecorsair/game/levels/LevelId;

    .line 67
    iput-object p4, p0, Lfr/testudo/spacecorsair/business/mission/engine/FindObjectMissionEngine;->stationGiveBackName:Ljava/lang/String;

    .line 68
    iput p3, p0, Lfr/testudo/spacecorsair/business/mission/engine/FindObjectMissionEngine;->findStringID:I

    .line 69
    iput p5, p0, Lfr/testudo/spacecorsair/business/mission/engine/FindObjectMissionEngine;->detectionDistance:I

    .line 70
    iput-object p6, p0, Lfr/testudo/spacecorsair/business/mission/engine/FindObjectMissionEngine;->objectFoundListener:Lfr/testudo/spacecorsair/business/mission/engine/FindObjectMissionListener;

    .line 72
    invoke-direct {p0}, Lfr/testudo/spacecorsair/business/mission/engine/FindObjectMissionEngine;->initStrings()V

    .line 74
    sget-object v0, Lfr/testudo/spacecorsair/business/mission/engine/FindObjectMissionEngine$Phase;->SEARCH:Lfr/testudo/spacecorsair/business/mission/engine/FindObjectMissionEngine$Phase;

    iput-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/FindObjectMissionEngine;->currentPhase:Lfr/testudo/spacecorsair/business/mission/engine/FindObjectMissionEngine$Phase;

    .line 75
    return-void
.end method

.method private initStrings()V
    .registers 4

    .prologue
    .line 79
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

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/mission/engine/FindObjectMissionEngine;->targetZoneId:Lfr/testudo/spacecorsair/game/levels/LevelId;

    iget-object v1, v1, Lfr/testudo/spacecorsair/game/levels/LevelId;->levelName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/FindObjectMissionEngine;->textGotoTargetZone:Ljava/lang/String;

    .line 80
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

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/mission/engine/FindObjectMissionEngine;->recompenceZoneId:Lfr/testudo/spacecorsair/game/levels/LevelId;

    iget-object v1, v1, Lfr/testudo/spacecorsair/game/levels/LevelId;->levelName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/FindObjectMissionEngine;->textGotoRecompZone:Ljava/lang/String;

    .line 81
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget v1, p0, Lfr/testudo/spacecorsair/business/mission/engine/FindObjectMissionEngine;->findStringID:I

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->getStringRessource(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/FindObjectMissionEngine;->textFindTarget:Ljava/lang/String;

    .line 82
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

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/mission/engine/FindObjectMissionEngine;->stationGiveBackName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/FindObjectMissionEngine;->textDockToStation:Ljava/lang/String;

    .line 83
    return-void
.end method

.method private setPhaseGateAndStationTarget(Z)V
    .registers 4

    .prologue
    .line 258
    sget-object v0, Lfr/testudo/spacecorsair/business/mission/engine/FindObjectMissionEngine$1;->$SwitchMap$fr$testudo$spacecorsair$business$mission$engine$FindObjectMissionEngine$Phase:[I

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/mission/engine/FindObjectMissionEngine;->currentPhase:Lfr/testudo/spacecorsair/business/mission/engine/FindObjectMissionEngine$Phase;

    invoke-virtual {v1}, Lfr/testudo/spacecorsair/business/mission/engine/FindObjectMissionEngine$Phase;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_5e

    .line 290
    :cond_d
    :goto_d
    return-void

    .line 260
    :pswitch_e
    iget-boolean v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/FindObjectMissionEngine;->isPlayerInTargetZone:Z

    if-nez v0, :cond_d

    .line 264
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/Game;->currentLevel:Lfr/testudo/spacecorsair/game/levels/Level;

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/mission/engine/FindObjectMissionEngine;->targetZoneId:Lfr/testudo/spacecorsair/game/levels/LevelId;

    invoke-static {v1}, Lfr/testudo/spacecorsair/business/world/PathFinder;->getPortalNameToGoTo(Lfr/testudo/spacecorsair/game/levels/LevelId;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/game/levels/Level;->findPortalByName(Ljava/lang/String;)Lfr/testudo/spacecorsair/business/world/Portal;

    move-result-object v0

    .line 265
    if-eqz v0, :cond_d

    .line 266
    iput-boolean p1, v0, Lfr/testudo/spacecorsair/business/world/Portal;->isMissionObjective:Z

    .line 267
    sget-object v1, Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;->ORANGE:Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;

    iput-object v1, v0, Lfr/testudo/spacecorsair/business/world/Portal;->missionObjectiveColor:Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;

    goto :goto_d

    .line 272
    :pswitch_2b
    iget-boolean v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/FindObjectMissionEngine;->isPlayerInRecompenceZone:Z

    if-eqz v0, :cond_44

    .line 274
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/Game;->currentLevel:Lfr/testudo/spacecorsair/game/levels/Level;

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/mission/engine/FindObjectMissionEngine;->stationGiveBackName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/game/levels/Level;->findStationByName(Ljava/lang/String;)Lfr/testudo/spacecorsair/business/world/station/Station;

    move-result-object v0

    .line 275
    if-eqz v0, :cond_d

    .line 276
    iput-boolean p1, v0, Lfr/testudo/spacecorsair/business/world/station/Station;->isMissionObjective:Z

    .line 277
    sget-object v1, Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;->ORANGE:Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;

    iput-object v1, v0, Lfr/testudo/spacecorsair/business/world/station/Station;->missionObjectiveColor:Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;

    goto :goto_d

    .line 283
    :cond_44
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/Game;->currentLevel:Lfr/testudo/spacecorsair/game/levels/Level;

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/mission/engine/FindObjectMissionEngine;->recompenceZoneId:Lfr/testudo/spacecorsair/game/levels/LevelId;

    invoke-static {v1}, Lfr/testudo/spacecorsair/business/world/PathFinder;->getPortalNameToGoTo(Lfr/testudo/spacecorsair/game/levels/LevelId;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/game/levels/Level;->findPortalByName(Ljava/lang/String;)Lfr/testudo/spacecorsair/business/world/Portal;

    move-result-object v0

    .line 284
    if-eqz v0, :cond_d

    .line 285
    iput-boolean p1, v0, Lfr/testudo/spacecorsair/business/world/Portal;->isMissionObjective:Z

    .line 286
    sget-object v1, Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;->ORANGE:Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;

    iput-object v1, v0, Lfr/testudo/spacecorsair/business/world/Portal;->missionObjectiveColor:Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;

    goto :goto_d

    .line 258
    nop

    :pswitch_data_5e
    .packed-switch 0x1
        :pswitch_e
        :pswitch_2b
    .end packed-switch
.end method


# virtual methods
.method public fetchTarget()V
    .registers 2

    .prologue
    .line 111
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/FindObjectMissionEngine;->objectFoundListener:Lfr/testudo/spacecorsair/business/mission/engine/FindObjectMissionListener;

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/business/mission/engine/FindObjectMissionListener;->fetchOrCreateObjectToFindWhenInZone()Lfr/testudo/spacecorsair/business/Element;

    move-result-object v0

    iput-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/FindObjectMissionEngine;->missionTarget:Lfr/testudo/spacecorsair/business/Element;

    .line 112
    return-void
.end method

.method public getCurrentInstruction()Ljava/lang/String;
    .registers 3

    .prologue
    .line 197
    sget-object v0, Lfr/testudo/spacecorsair/business/mission/engine/FindObjectMissionEngine$1;->$SwitchMap$fr$testudo$spacecorsair$business$mission$engine$FindObjectMissionEngine$Phase:[I

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/mission/engine/FindObjectMissionEngine;->currentPhase:Lfr/testudo/spacecorsair/business/mission/engine/FindObjectMissionEngine$Phase;

    invoke-virtual {v1}, Lfr/testudo/spacecorsair/business/mission/engine/FindObjectMissionEngine$Phase;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_24

    .line 218
    const-string v0, ""

    :goto_f
    return-object v0

    .line 200
    :pswitch_10
    iget-boolean v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/FindObjectMissionEngine;->isPlayerInTargetZone:Z

    if-eqz v0, :cond_17

    .line 201
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/FindObjectMissionEngine;->textFindTarget:Ljava/lang/String;

    goto :goto_f

    .line 204
    :cond_17
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/FindObjectMissionEngine;->textGotoTargetZone:Ljava/lang/String;

    goto :goto_f

    .line 208
    :pswitch_1a
    iget-boolean v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/FindObjectMissionEngine;->isPlayerInRecompenceZone:Z

    if-eqz v0, :cond_21

    .line 209
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/FindObjectMissionEngine;->textDockToStation:Ljava/lang/String;

    goto :goto_f

    .line 212
    :cond_21
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/FindObjectMissionEngine;->textGotoRecompZone:Ljava/lang/String;

    goto :goto_f

    .line 197
    :pswitch_data_24
    .packed-switch 0x1
        :pswitch_10
        :pswitch_1a
    .end packed-switch
.end method

.method public giveUp()V
    .registers 1

    .prologue
    .line 242
    invoke-virtual {p0}, Lfr/testudo/spacecorsair/business/mission/engine/FindObjectMissionEngine;->terminate()V

    .line 243
    return-void
.end method

.method public init()V
    .registers 3

    .prologue
    .line 224
    const/4 v0, 0x0

    iput-boolean v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/FindObjectMissionEngine;->completed:Z

    .line 225
    sget-object v0, Lfr/testudo/spacecorsair/business/mission/engine/FindObjectMissionEngine$Phase;->SEARCH:Lfr/testudo/spacecorsair/business/mission/engine/FindObjectMissionEngine$Phase;

    iput-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/FindObjectMissionEngine;->currentPhase:Lfr/testudo/spacecorsair/business/mission/engine/FindObjectMissionEngine$Phase;

    .line 226
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/Game;->currentLevel:Lfr/testudo/spacecorsair/game/levels/Level;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/levels/Level;->name:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lfr/testudo/spacecorsair/business/mission/engine/FindObjectMissionEngine;->onZoneChanged(Ljava/lang/String;Ljava/lang/String;)V

    .line 227
    return-void
.end method

.method public isCompleted()Z
    .registers 2

    .prologue
    .line 252
    iget-boolean v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/FindObjectMissionEngine;->completed:Z

    return v0
.end method

.method public onBeforePlayerDock()V
    .registers 1

    .prologue
    .line 172
    return-void
.end method

.method public onDoPhysic(J)V
    .registers 3

    .prologue
    .line 192
    return-void
.end method

.method public onElementDestroyed(Lfr/testudo/spacecorsair/business/Element;)V
    .registers 2

    .prologue
    .line 157
    return-void
.end method

.method public onElementDestroyedByPlayer(Lfr/testudo/spacecorsair/business/Element;)V
    .registers 2

    .prologue
    .line 162
    return-void
.end method

.method public onEveryMinute()V
    .registers 3

    .prologue
    .line 148
    iget-boolean v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/FindObjectMissionEngine;->isPlayerInTargetZone:Z

    if-eqz v0, :cond_13

    iget-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/FindObjectMissionEngine;->currentPhase:Lfr/testudo/spacecorsair/business/mission/engine/FindObjectMissionEngine$Phase;

    sget-object v1, Lfr/testudo/spacecorsair/business/mission/engine/FindObjectMissionEngine$Phase;->SEARCH:Lfr/testudo/spacecorsair/business/mission/engine/FindObjectMissionEngine$Phase;

    if-ne v0, v1, :cond_13

    .line 149
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/FindObjectMissionEngine;->objectFoundListener:Lfr/testudo/spacecorsair/business/mission/engine/FindObjectMissionListener;

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/mission/engine/FindObjectMissionEngine;->missionTarget:Lfr/testudo/spacecorsair/business/Element;

    iget-object v1, v1, Lfr/testudo/spacecorsair/business/Element;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v0, p0, v1}, Lfr/testudo/spacecorsair/business/mission/engine/FindObjectMissionListener;->onEveryMinuteInZone(Lfr/testudo/spacecorsair/business/mission/engine/FindObjectMissionEngine;Lfr/testudo/spacecorsair/engine/Vector2;)V

    .line 152
    :cond_13
    return-void
.end method

.method public onEveryTenGameSec()V
    .registers 4

    .prologue
    const/4 v2, 0x1

    .line 121
    sget-object v0, Lfr/testudo/spacecorsair/business/mission/engine/FindObjectMissionEngine$1;->$SwitchMap$fr$testudo$spacecorsair$business$mission$engine$FindObjectMissionEngine$Phase:[I

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/mission/engine/FindObjectMissionEngine;->currentPhase:Lfr/testudo/spacecorsair/business/mission/engine/FindObjectMissionEngine$Phase;

    invoke-virtual {v1}, Lfr/testudo/spacecorsair/business/mission/engine/FindObjectMissionEngine$Phase;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_52

    .line 144
    :cond_e
    :goto_e
    return-void

    .line 124
    :pswitch_f
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/FindObjectMissionEngine;->missionTarget:Lfr/testudo/spacecorsair/business/Element;

    if-eqz v0, :cond_e

    .line 125
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/FindObjectMissionEngine;->missionTarget:Lfr/testudo/spacecorsair/business/Element;

    iget-boolean v0, v0, Lfr/testudo/spacecorsair/business/Element;->removed:Z

    if-eqz v0, :cond_1d

    .line 126
    const/4 v0, 0x0

    iput-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/FindObjectMissionEngine;->missionTarget:Lfr/testudo/spacecorsair/business/Element;

    goto :goto_e

    .line 130
    :cond_1d
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/FindObjectMissionEngine;->missionTarget:Lfr/testudo/spacecorsair/business/Element;

    iget v0, v0, Lfr/testudo/spacecorsair/business/Element;->distanceToPlayer:F

    iget v1, p0, Lfr/testudo/spacecorsair/business/mission/engine/FindObjectMissionEngine;->detectionDistance:I

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_e

    .line 131
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lfr/testudo/spacecorsair/business/mission/engine/FindObjectMissionEngine;->setPhaseGateAndStationTarget(Z)V

    .line 132
    sget-object v0, Lfr/testudo/spacecorsair/business/mission/engine/FindObjectMissionEngine$Phase;->GATHER_RECOMP:Lfr/testudo/spacecorsair/business/mission/engine/FindObjectMissionEngine$Phase;

    iput-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/FindObjectMissionEngine;->currentPhase:Lfr/testudo/spacecorsair/business/mission/engine/FindObjectMissionEngine$Phase;

    .line 133
    iput-boolean v2, p0, Lfr/testudo/spacecorsair/business/mission/engine/FindObjectMissionEngine;->completed:Z

    .line 134
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    const v1, 0x7f0702c1

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->getStringRessource(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-static {v0, v1}, Lfr/testudo/spacecorsair/display/hud/WelcomeMessage;->setText(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    invoke-direct {p0, v2}, Lfr/testudo/spacecorsair/business/mission/engine/FindObjectMissionEngine;->setPhaseGateAndStationTarget(Z)V

    .line 136
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/FindObjectMissionEngine;->objectFoundListener:Lfr/testudo/spacecorsair/business/mission/engine/FindObjectMissionListener;

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/mission/engine/FindObjectMissionEngine;->missionTarget:Lfr/testudo/spacecorsair/business/Element;

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/business/mission/engine/FindObjectMissionListener;->onObjectFound(Lfr/testudo/spacecorsair/business/Element;)V

    .line 137
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->soundManager:Lfr/testudo/spacecorsair/engine/SoundManager;

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/engine/SoundManager;->playMissionComplete()V

    goto :goto_e

    .line 121
    :pswitch_data_52
    .packed-switch 0x1
        :pswitch_f
    .end packed-switch
.end method

.method public onPlayerBuyItem(Lfr/testudo/spacecorsair/business/loot/SpaceObject;)V
    .registers 2

    .prologue
    .line 182
    return-void
.end method

.method public onPlayerDeath()V
    .registers 1

    .prologue
    .line 167
    return-void
.end method

.method public onPlayerLoot(Lfr/testudo/spacecorsair/business/loot/LootElement;)Z
    .registers 3

    .prologue
    .line 116
    const/4 v0, 0x1

    return v0
.end method

.method public onPlayerSellItem(Lfr/testudo/spacecorsair/business/loot/SpaceObject;)V
    .registers 2

    .prologue
    .line 177
    return-void
.end method

.method public onPlayerUndock()V
    .registers 1

    .prologue
    .line 187
    return-void
.end method

.method public onZoneChanged(Ljava/lang/String;Ljava/lang/String;)V
    .registers 7

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 91
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/FindObjectMissionEngine;->targetZoneId:Lfr/testudo/spacecorsair/game/levels/LevelId;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/levels/LevelId;->levelName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 92
    iput-boolean v2, p0, Lfr/testudo/spacecorsair/business/mission/engine/FindObjectMissionEngine;->isPlayerInTargetZone:Z

    .line 93
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/FindObjectMissionEngine;->currentPhase:Lfr/testudo/spacecorsair/business/mission/engine/FindObjectMissionEngine$Phase;

    sget-object v1, Lfr/testudo/spacecorsair/business/mission/engine/FindObjectMissionEngine$Phase;->SEARCH:Lfr/testudo/spacecorsair/business/mission/engine/FindObjectMissionEngine$Phase;

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/business/mission/engine/FindObjectMissionEngine$Phase;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 94
    invoke-virtual {p0}, Lfr/testudo/spacecorsair/business/mission/engine/FindObjectMissionEngine;->fetchTarget()V

    .line 100
    :cond_1b
    :goto_1b
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/FindObjectMissionEngine;->recompenceZoneId:Lfr/testudo/spacecorsair/game/levels/LevelId;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/levels/LevelId;->levelName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 101
    iput-boolean v2, p0, Lfr/testudo/spacecorsair/business/mission/engine/FindObjectMissionEngine;->isPlayerInRecompenceZone:Z

    .line 107
    :goto_27
    invoke-direct {p0, v2}, Lfr/testudo/spacecorsair/business/mission/engine/FindObjectMissionEngine;->setPhaseGateAndStationTarget(Z)V

    .line 108
    return-void

    .line 97
    :cond_2b
    iput-boolean v3, p0, Lfr/testudo/spacecorsair/business/mission/engine/FindObjectMissionEngine;->isPlayerInTargetZone:Z

    goto :goto_1b

    .line 104
    :cond_2e
    iput-boolean v3, p0, Lfr/testudo/spacecorsair/business/mission/engine/FindObjectMissionEngine;->isPlayerInRecompenceZone:Z

    goto :goto_27
.end method

.method public restoreState()V
    .registers 2

    .prologue
    .line 231
    const/4 v0, 0x0

    iput-boolean v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/FindObjectMissionEngine;->completed:Z

    .line 232
    sget-object v0, Lfr/testudo/spacecorsair/business/mission/engine/FindObjectMissionEngine$Phase;->SEARCH:Lfr/testudo/spacecorsair/business/mission/engine/FindObjectMissionEngine$Phase;

    iput-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/FindObjectMissionEngine;->currentPhase:Lfr/testudo/spacecorsair/business/mission/engine/FindObjectMissionEngine$Phase;

    .line 233
    return-void
.end method

.method public saveState()V
    .registers 1

    .prologue
    .line 238
    return-void
.end method

.method public terminate()V
    .registers 2

    .prologue
    .line 247
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lfr/testudo/spacecorsair/business/mission/engine/FindObjectMissionEngine;->setPhaseGateAndStationTarget(Z)V

    .line 248
    return-void
.end method
