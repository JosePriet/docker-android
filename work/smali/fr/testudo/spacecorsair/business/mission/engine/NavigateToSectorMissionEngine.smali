.class public Lfr/testudo/spacecorsair/business/mission/engine/NavigateToSectorMissionEngine;
.super Lfr/testudo/spacecorsair/business/mission/MissionListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lfr/testudo/spacecorsair/business/mission/engine/NavigateToSectorMissionEngine$1;,
        Lfr/testudo/spacecorsair/business/mission/engine/NavigateToSectorMissionEngine$Phase;
    }
.end annotation


# instance fields
.field completed:Z

.field public curPhase:Lfr/testudo/spacecorsair/business/mission/engine/NavigateToSectorMissionEngine$Phase;

.field public gotoZoneLocalizedMessageId:I

.field isPlayerInRecompenceZone:Z

.field public recompenceZoneId:Lfr/testudo/spacecorsair/game/levels/LevelId;

.field public stationGiveBackName:Ljava/lang/String;

.field targetZoneId:Lfr/testudo/spacecorsair/game/levels/LevelId;

.field public textDockToStation:Ljava/lang/String;

.field public textGotoRecompZone:Ljava/lang/String;

.field public textGotoTargetZone:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lfr/testudo/spacecorsair/game/levels/LevelId;Lfr/testudo/spacecorsair/game/levels/LevelId;Ljava/lang/String;I)V
    .registers 6

    .prologue
    .line 44
    invoke-direct {p0}, Lfr/testudo/spacecorsair/business/mission/MissionListener;-><init>()V

    .line 23
    const/4 v0, 0x0

    iput-boolean v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/NavigateToSectorMissionEngine;->completed:Z

    .line 45
    iput-object p2, p0, Lfr/testudo/spacecorsair/business/mission/engine/NavigateToSectorMissionEngine;->recompenceZoneId:Lfr/testudo/spacecorsair/game/levels/LevelId;

    .line 46
    iput-object p3, p0, Lfr/testudo/spacecorsair/business/mission/engine/NavigateToSectorMissionEngine;->stationGiveBackName:Ljava/lang/String;

    .line 47
    iput-object p1, p0, Lfr/testudo/spacecorsair/business/mission/engine/NavigateToSectorMissionEngine;->targetZoneId:Lfr/testudo/spacecorsair/game/levels/LevelId;

    .line 48
    iput p4, p0, Lfr/testudo/spacecorsair/business/mission/engine/NavigateToSectorMissionEngine;->gotoZoneLocalizedMessageId:I

    .line 50
    invoke-direct {p0}, Lfr/testudo/spacecorsair/business/mission/engine/NavigateToSectorMissionEngine;->initStrings()V

    .line 52
    return-void
.end method

.method private initStrings()V
    .registers 4

    .prologue
    .line 56
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

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/mission/engine/NavigateToSectorMissionEngine;->recompenceZoneId:Lfr/testudo/spacecorsair/game/levels/LevelId;

    iget-object v1, v1, Lfr/testudo/spacecorsair/game/levels/LevelId;->levelName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/NavigateToSectorMissionEngine;->textGotoRecompZone:Ljava/lang/String;

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

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/mission/engine/NavigateToSectorMissionEngine;->stationGiveBackName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/NavigateToSectorMissionEngine;->textDockToStation:Ljava/lang/String;

    .line 58
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget v1, p0, Lfr/testudo/spacecorsair/business/mission/engine/NavigateToSectorMissionEngine;->gotoZoneLocalizedMessageId:I

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->getStringRessource(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/NavigateToSectorMissionEngine;->textGotoTargetZone:Ljava/lang/String;

    .line 60
    return-void
.end method

.method private setPhaseGateTarget(Z)V
    .registers 4

    .prologue
    .line 167
    sget-object v0, Lfr/testudo/spacecorsair/business/mission/engine/NavigateToSectorMissionEngine$1;->$SwitchMap$fr$testudo$spacecorsair$business$mission$engine$NavigateToSectorMissionEngine$Phase:[I

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/mission/engine/NavigateToSectorMissionEngine;->curPhase:Lfr/testudo/spacecorsair/business/mission/engine/NavigateToSectorMissionEngine$Phase;

    invoke-virtual {v1}, Lfr/testudo/spacecorsair/business/mission/engine/NavigateToSectorMissionEngine$Phase;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_5a

    .line 199
    :cond_d
    :goto_d
    return-void

    .line 171
    :pswitch_e
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/Game;->currentLevel:Lfr/testudo/spacecorsair/game/levels/Level;

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/mission/engine/NavigateToSectorMissionEngine;->targetZoneId:Lfr/testudo/spacecorsair/game/levels/LevelId;

    invoke-static {v1}, Lfr/testudo/spacecorsair/business/world/PathFinder;->getPortalNameToGoTo(Lfr/testudo/spacecorsair/game/levels/LevelId;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/game/levels/Level;->findPortalByName(Ljava/lang/String;)Lfr/testudo/spacecorsair/business/world/Portal;

    move-result-object v0

    .line 172
    if-eqz v0, :cond_d

    .line 173
    iput-boolean p1, v0, Lfr/testudo/spacecorsair/business/world/Portal;->isMissionObjective:Z

    .line 174
    sget-object v1, Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;->ORANGE:Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;

    iput-object v1, v0, Lfr/testudo/spacecorsair/business/world/Portal;->missionObjectiveColor:Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;

    goto :goto_d

    .line 179
    :pswitch_27
    iget-boolean v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/NavigateToSectorMissionEngine;->isPlayerInRecompenceZone:Z

    if-eqz v0, :cond_40

    .line 181
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/Game;->currentLevel:Lfr/testudo/spacecorsair/game/levels/Level;

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/mission/engine/NavigateToSectorMissionEngine;->stationGiveBackName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/game/levels/Level;->findStationByName(Ljava/lang/String;)Lfr/testudo/spacecorsair/business/world/station/Station;

    move-result-object v0

    .line 182
    if-eqz v0, :cond_d

    .line 183
    iput-boolean p1, v0, Lfr/testudo/spacecorsair/business/world/station/Station;->isMissionObjective:Z

    .line 184
    sget-object v1, Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;->ORANGE:Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;

    iput-object v1, v0, Lfr/testudo/spacecorsair/business/world/station/Station;->missionObjectiveColor:Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;

    goto :goto_d

    .line 188
    :cond_40
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/Game;->currentLevel:Lfr/testudo/spacecorsair/game/levels/Level;

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/mission/engine/NavigateToSectorMissionEngine;->recompenceZoneId:Lfr/testudo/spacecorsair/game/levels/LevelId;

    invoke-static {v1}, Lfr/testudo/spacecorsair/business/world/PathFinder;->getPortalNameToGoTo(Lfr/testudo/spacecorsair/game/levels/LevelId;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/game/levels/Level;->findPortalByName(Ljava/lang/String;)Lfr/testudo/spacecorsair/business/world/Portal;

    move-result-object v0

    .line 189
    if-eqz v0, :cond_d

    .line 190
    iput-boolean p1, v0, Lfr/testudo/spacecorsair/business/world/Portal;->isMissionObjective:Z

    .line 191
    sget-object v1, Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;->ORANGE:Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;

    iput-object v1, v0, Lfr/testudo/spacecorsair/business/world/Portal;->missionObjectiveColor:Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;

    goto :goto_d

    .line 167
    nop

    :pswitch_data_5a
    .packed-switch 0x1
        :pswitch_e
        :pswitch_27
    .end packed-switch
.end method


# virtual methods
.method public getCurrentInstruction()Ljava/lang/String;
    .registers 3

    .prologue
    .line 112
    sget-object v0, Lfr/testudo/spacecorsair/business/mission/engine/NavigateToSectorMissionEngine$1;->$SwitchMap$fr$testudo$spacecorsair$business$mission$engine$NavigateToSectorMissionEngine$Phase:[I

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/mission/engine/NavigateToSectorMissionEngine;->curPhase:Lfr/testudo/spacecorsair/business/mission/engine/NavigateToSectorMissionEngine$Phase;

    invoke-virtual {v1}, Lfr/testudo/spacecorsair/business/mission/engine/NavigateToSectorMissionEngine$Phase;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_1e

    .line 127
    const-string v0, ""

    :goto_f
    return-object v0

    .line 116
    :pswitch_10
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/NavigateToSectorMissionEngine;->textGotoTargetZone:Ljava/lang/String;

    goto :goto_f

    .line 120
    :pswitch_13
    iget-boolean v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/NavigateToSectorMissionEngine;->isPlayerInRecompenceZone:Z

    if-eqz v0, :cond_1a

    .line 121
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/NavigateToSectorMissionEngine;->textDockToStation:Ljava/lang/String;

    goto :goto_f

    .line 123
    :cond_1a
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/NavigateToSectorMissionEngine;->textGotoRecompZone:Ljava/lang/String;

    goto :goto_f

    .line 112
    nop

    :pswitch_data_1e
    .packed-switch 0x1
        :pswitch_10
        :pswitch_13
    .end packed-switch
.end method

.method public giveUp()V
    .registers 1

    .prologue
    .line 151
    invoke-virtual {p0}, Lfr/testudo/spacecorsair/business/mission/engine/NavigateToSectorMissionEngine;->terminate()V

    .line 152
    return-void
.end method

.method public init()V
    .registers 3

    .prologue
    .line 132
    sget-object v0, Lfr/testudo/spacecorsair/business/mission/engine/NavigateToSectorMissionEngine$Phase;->GOTO_ZONE:Lfr/testudo/spacecorsair/business/mission/engine/NavigateToSectorMissionEngine$Phase;

    iput-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/NavigateToSectorMissionEngine;->curPhase:Lfr/testudo/spacecorsair/business/mission/engine/NavigateToSectorMissionEngine$Phase;

    .line 133
    const/4 v0, 0x0

    iput-boolean v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/NavigateToSectorMissionEngine;->completed:Z

    .line 134
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/Game;->currentLevel:Lfr/testudo/spacecorsair/game/levels/Level;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/levels/Level;->name:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lfr/testudo/spacecorsair/business/mission/engine/NavigateToSectorMissionEngine;->onZoneChanged(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    return-void
.end method

.method public isCompleted()Z
    .registers 2

    .prologue
    .line 161
    iget-boolean v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/NavigateToSectorMissionEngine;->completed:Z

    return v0
.end method

.method public onDoPhysic(J)V
    .registers 3

    .prologue
    .line 107
    return-void
.end method

.method public onElementDestroyed(Lfr/testudo/spacecorsair/business/Element;)V
    .registers 2

    .prologue
    .line 92
    return-void
.end method

.method public onElementDestroyedByPlayer(Lfr/testudo/spacecorsair/business/Element;)V
    .registers 2

    .prologue
    .line 97
    return-void
.end method

.method public onPlayerDeath()V
    .registers 1

    .prologue
    .line 102
    return-void
.end method

.method public onZoneChanged(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .prologue
    const/4 v1, 0x1

    .line 74
    iget-boolean v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/NavigateToSectorMissionEngine;->completed:Z

    if-nez v0, :cond_12

    iget-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/NavigateToSectorMissionEngine;->targetZoneId:Lfr/testudo/spacecorsair/game/levels/LevelId;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/levels/LevelId;->levelName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 75
    invoke-virtual {p0}, Lfr/testudo/spacecorsair/business/mission/engine/NavigateToSectorMissionEngine;->onZoneReached()V

    .line 79
    :cond_12
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/NavigateToSectorMissionEngine;->recompenceZoneId:Lfr/testudo/spacecorsair/game/levels/LevelId;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/levels/LevelId;->levelName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 80
    iput-boolean v1, p0, Lfr/testudo/spacecorsair/business/mission/engine/NavigateToSectorMissionEngine;->isPlayerInRecompenceZone:Z

    .line 86
    :goto_1e
    invoke-direct {p0, v1}, Lfr/testudo/spacecorsair/business/mission/engine/NavigateToSectorMissionEngine;->setPhaseGateTarget(Z)V

    .line 87
    return-void

    .line 83
    :cond_22
    const/4 v0, 0x0

    iput-boolean v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/NavigateToSectorMissionEngine;->isPlayerInRecompenceZone:Z

    goto :goto_1e
.end method

.method public onZoneReached()V
    .registers 2

    .prologue
    .line 63
    const/4 v0, 0x1

    iput-boolean v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/NavigateToSectorMissionEngine;->completed:Z

    .line 64
    sget-object v0, Lfr/testudo/spacecorsair/business/mission/engine/NavigateToSectorMissionEngine$Phase;->GATHER_RECOMP:Lfr/testudo/spacecorsair/business/mission/engine/NavigateToSectorMissionEngine$Phase;

    iput-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/NavigateToSectorMissionEngine;->curPhase:Lfr/testudo/spacecorsair/business/mission/engine/NavigateToSectorMissionEngine$Phase;

    .line 67
    return-void
.end method

.method public restoreState()V
    .registers 2

    .prologue
    .line 140
    sget-object v0, Lfr/testudo/spacecorsair/business/mission/engine/NavigateToSectorMissionEngine$Phase;->GOTO_ZONE:Lfr/testudo/spacecorsair/business/mission/engine/NavigateToSectorMissionEngine$Phase;

    iput-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/NavigateToSectorMissionEngine;->curPhase:Lfr/testudo/spacecorsair/business/mission/engine/NavigateToSectorMissionEngine$Phase;

    .line 141
    const/4 v0, 0x0

    iput-boolean v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/NavigateToSectorMissionEngine;->completed:Z

    .line 142
    return-void
.end method

.method public saveState()V
    .registers 1

    .prologue
    .line 147
    return-void
.end method

.method public terminate()V
    .registers 2

    .prologue
    .line 156
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lfr/testudo/spacecorsair/business/mission/engine/NavigateToSectorMissionEngine;->setPhaseGateTarget(Z)V

    .line 157
    return-void
.end method
