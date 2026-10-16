.class public Lfr/testudo/spacecorsair/business/mission/engine/NavigateToCommandCenterMissionEngine;
.super Lfr/testudo/spacecorsair/business/mission/MissionListener;
.source "SourceFile"


# instance fields
.field isPlayerInRecompenceZone:Z

.field public overrideMessageGoto:I

.field public recompenceZoneId:Lfr/testudo/spacecorsair/game/levels/LevelId;

.field public stationGiveBackName:Ljava/lang/String;

.field public textDockToStation:Ljava/lang/String;

.field public textGotoRecompZone:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lfr/testudo/spacecorsair/game/levels/LevelId;Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 36
    invoke-direct {p0}, Lfr/testudo/spacecorsair/business/mission/MissionListener;-><init>()V

    .line 25
    const/4 v0, 0x0

    iput-boolean v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/NavigateToCommandCenterMissionEngine;->isPlayerInRecompenceZone:Z

    .line 33
    const v0, 0x7fffffff

    iput v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/NavigateToCommandCenterMissionEngine;->overrideMessageGoto:I

    .line 37
    iput-object p1, p0, Lfr/testudo/spacecorsair/business/mission/engine/NavigateToCommandCenterMissionEngine;->recompenceZoneId:Lfr/testudo/spacecorsair/game/levels/LevelId;

    .line 39
    iput-object p2, p0, Lfr/testudo/spacecorsair/business/mission/engine/NavigateToCommandCenterMissionEngine;->stationGiveBackName:Ljava/lang/String;

    .line 41
    invoke-direct {p0}, Lfr/testudo/spacecorsair/business/mission/engine/NavigateToCommandCenterMissionEngine;->initStrings()V

    .line 43
    return-void
.end method

.method private initStrings()V
    .registers 4

    .prologue
    .line 54
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

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/mission/engine/NavigateToCommandCenterMissionEngine;->recompenceZoneId:Lfr/testudo/spacecorsair/game/levels/LevelId;

    iget-object v1, v1, Lfr/testudo/spacecorsair/game/levels/LevelId;->levelName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/NavigateToCommandCenterMissionEngine;->textGotoRecompZone:Ljava/lang/String;

    .line 55
    iget v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/NavigateToCommandCenterMissionEngine;->overrideMessageGoto:I

    const v1, 0x7fffffff

    if-ne v0, v1, :cond_52

    .line 56
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

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/mission/engine/NavigateToCommandCenterMissionEngine;->stationGiveBackName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/NavigateToCommandCenterMissionEngine;->textDockToStation:Ljava/lang/String;

    .line 64
    :goto_51
    return-void

    .line 61
    :cond_52
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget v1, p0, Lfr/testudo/spacecorsair/business/mission/engine/NavigateToCommandCenterMissionEngine;->overrideMessageGoto:I

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->getStringRessource(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/NavigateToCommandCenterMissionEngine;->textDockToStation:Ljava/lang/String;

    goto :goto_51
.end method

.method private setPhaseGateTarget(Z)V
    .registers 4

    .prologue
    .line 184
    iget-boolean v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/NavigateToCommandCenterMissionEngine;->isPlayerInRecompenceZone:Z

    if-eqz v0, :cond_19

    .line 185
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/Game;->currentLevel:Lfr/testudo/spacecorsair/game/levels/Level;

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/mission/engine/NavigateToCommandCenterMissionEngine;->stationGiveBackName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/game/levels/Level;->findStationByName(Ljava/lang/String;)Lfr/testudo/spacecorsair/business/world/station/Station;

    move-result-object v0

    .line 186
    if-eqz v0, :cond_18

    .line 187
    iput-boolean p1, v0, Lfr/testudo/spacecorsair/business/world/station/Station;->isMissionObjective:Z

    .line 188
    sget-object v1, Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;->ORANGE:Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;

    iput-object v1, v0, Lfr/testudo/spacecorsair/business/world/station/Station;->missionObjectiveColor:Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;

    .line 202
    :cond_18
    :goto_18
    return-void

    .line 194
    :cond_19
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/Game;->currentLevel:Lfr/testudo/spacecorsair/game/levels/Level;

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/mission/engine/NavigateToCommandCenterMissionEngine;->recompenceZoneId:Lfr/testudo/spacecorsair/game/levels/LevelId;

    invoke-static {v1}, Lfr/testudo/spacecorsair/business/world/PathFinder;->getPortalNameToGoTo(Lfr/testudo/spacecorsair/game/levels/LevelId;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/game/levels/Level;->findPortalByName(Ljava/lang/String;)Lfr/testudo/spacecorsair/business/world/Portal;

    move-result-object v0

    .line 195
    if-eqz v0, :cond_18

    .line 196
    iput-boolean p1, v0, Lfr/testudo/spacecorsair/business/world/Portal;->isMissionObjective:Z

    .line 197
    sget-object v1, Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;->ORANGE:Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;

    iput-object v1, v0, Lfr/testudo/spacecorsair/business/world/Portal;->missionObjectiveColor:Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;

    goto :goto_18
.end method


# virtual methods
.method public getCurrentInstruction()Ljava/lang/String;
    .registers 2

    .prologue
    .line 139
    iget-boolean v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/NavigateToCommandCenterMissionEngine;->isPlayerInRecompenceZone:Z

    if-eqz v0, :cond_7

    .line 140
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/NavigateToCommandCenterMissionEngine;->textDockToStation:Ljava/lang/String;

    .line 143
    :goto_6
    return-object v0

    :cond_7
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/NavigateToCommandCenterMissionEngine;->textGotoRecompZone:Ljava/lang/String;

    goto :goto_6
.end method

.method public giveUp()V
    .registers 1

    .prologue
    .line 165
    invoke-virtual {p0}, Lfr/testudo/spacecorsair/business/mission/engine/NavigateToCommandCenterMissionEngine;->terminate()V

    .line 166
    return-void
.end method

.method public init()V
    .registers 3

    .prologue
    .line 150
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/Game;->currentLevel:Lfr/testudo/spacecorsair/game/levels/Level;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/levels/Level;->name:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lfr/testudo/spacecorsair/business/mission/engine/NavigateToCommandCenterMissionEngine;->onZoneChanged(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    return-void
.end method

.method public isCompleted()Z
    .registers 2

    .prologue
    .line 175
    iget-boolean v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/NavigateToCommandCenterMissionEngine;->isPlayerInRecompenceZone:Z

    return v0
.end method

.method public onBeforePlayerDock()V
    .registers 1

    .prologue
    .line 114
    return-void
.end method

.method public onDoPhysic(J)V
    .registers 3

    .prologue
    .line 134
    return-void
.end method

.method public onElementDestroyed(Lfr/testudo/spacecorsair/business/Element;)V
    .registers 2

    .prologue
    .line 99
    return-void
.end method

.method public onElementDestroyedByPlayer(Lfr/testudo/spacecorsair/business/Element;)V
    .registers 2

    .prologue
    .line 104
    return-void
.end method

.method public onEveryMinute()V
    .registers 1

    .prologue
    .line 94
    return-void
.end method

.method public onEveryTenGameSec()V
    .registers 1

    .prologue
    .line 89
    return-void
.end method

.method public onPlayerBuyItem(Lfr/testudo/spacecorsair/business/loot/SpaceObject;)V
    .registers 2

    .prologue
    .line 124
    return-void
.end method

.method public onPlayerDeath()V
    .registers 1

    .prologue
    .line 109
    return-void
.end method

.method public onPlayerLoot(Lfr/testudo/spacecorsair/business/loot/LootElement;)Z
    .registers 3

    .prologue
    .line 83
    const/4 v0, 0x1

    return v0
.end method

.method public onPlayerSellItem(Lfr/testudo/spacecorsair/business/loot/SpaceObject;)V
    .registers 2

    .prologue
    .line 119
    return-void
.end method

.method public onPlayerUndock()V
    .registers 1

    .prologue
    .line 129
    return-void
.end method

.method public onZoneChanged(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .prologue
    const/4 v1, 0x1

    .line 71
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/NavigateToCommandCenterMissionEngine;->recompenceZoneId:Lfr/testudo/spacecorsair/game/levels/LevelId;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/levels/LevelId;->levelName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 72
    iput-boolean v1, p0, Lfr/testudo/spacecorsair/business/mission/engine/NavigateToCommandCenterMissionEngine;->isPlayerInRecompenceZone:Z

    .line 78
    :goto_d
    invoke-direct {p0, v1}, Lfr/testudo/spacecorsair/business/mission/engine/NavigateToCommandCenterMissionEngine;->setPhaseGateTarget(Z)V

    .line 79
    return-void

    .line 75
    :cond_11
    const/4 v0, 0x0

    iput-boolean v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/NavigateToCommandCenterMissionEngine;->isPlayerInRecompenceZone:Z

    goto :goto_d
.end method

.method public restoreState()V
    .registers 1

    .prologue
    .line 156
    return-void
.end method

.method public saveState()V
    .registers 1

    .prologue
    .line 161
    return-void
.end method

.method public setOverrideDockToMessage(I)V
    .registers 2

    .prologue
    .line 47
    iput p1, p0, Lfr/testudo/spacecorsair/business/mission/engine/NavigateToCommandCenterMissionEngine;->overrideMessageGoto:I

    .line 49
    return-void
.end method

.method public terminate()V
    .registers 2

    .prologue
    .line 170
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lfr/testudo/spacecorsair/business/mission/engine/NavigateToCommandCenterMissionEngine;->setPhaseGateTarget(Z)V

    .line 171
    return-void
.end method
