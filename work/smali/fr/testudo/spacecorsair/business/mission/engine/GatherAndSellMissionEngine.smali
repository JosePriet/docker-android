.class public Lfr/testudo/spacecorsair/business/mission/engine/GatherAndSellMissionEngine;
.super Lfr/testudo/spacecorsair/business/mission/MissionListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lfr/testudo/spacecorsair/business/mission/engine/GatherAndSellMissionEngine$1;,
        Lfr/testudo/spacecorsair/business/mission/engine/GatherAndSellMissionEngine$Backup;,
        Lfr/testudo/spacecorsair/business/mission/engine/GatherAndSellMissionEngine$Phase;
    }
.end annotation


# instance fields
.field public acceptExisingItems:Z

.field public completed:Z

.field public configRestrictGatherToOneZone:Z

.field public currentGathered:I

.field public currentPhase:Lfr/testudo/spacecorsair/business/mission/engine/GatherAndSellMissionEngine$Phase;

.field private engineListener:Lfr/testudo/spacecorsair/business/mission/engine/GatherAndSellMissionEngineListener;

.field public gatherTextRessourceId:I

.field public gatherZoneId:Lfr/testudo/spacecorsair/game/levels/LevelId;

.field hasSeenTargetZone:Z

.field private isPlayerInGatherZone:Z

.field private isPlayerInRecompenceZone:Z

.field private isPlayerInSellZone:Z

.field public missionId:Ljava/lang/String;

.field myBackup:Lfr/testudo/spacecorsair/business/mission/engine/GatherAndSellMissionEngine$Backup;

.field public objectToGather:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

.field public objectiveToGathered:I

.field public recompenceZoneId:Lfr/testudo/spacecorsair/game/levels/LevelId;

.field public sellTextRessourceId:I

.field public sellZoneId:Lfr/testudo/spacecorsair/game/levels/LevelId;

.field public stationRewardName:Ljava/lang/String;

.field public stationSellToName:Ljava/lang/String;

.field public textDockToStation:Ljava/lang/String;

.field public textGather:Ljava/lang/String;

.field public textGotoGatherZone:Ljava/lang/String;

.field public textGotoRecompZone:Ljava/lang/String;

.field public textGotoSellZone:Ljava/lang/String;

.field public textSellToStation:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lfr/testudo/spacecorsair/game/levels/LevelId;Lfr/testudo/spacecorsair/game/levels/LevelId;Lfr/testudo/spacecorsair/game/levels/LevelId;Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;IIIZLjava/lang/String;Ljava/lang/String;Lfr/testudo/spacecorsair/business/mission/engine/GatherAndSellMissionEngineListener;)V
    .registers 16

    .prologue
    const/4 v2, 0x0

    const/4 v0, 0x0

    .line 102
    invoke-direct {p0}, Lfr/testudo/spacecorsair/business/mission/MissionListener;-><init>()V

    .line 58
    new-instance v1, Lfr/testudo/spacecorsair/business/mission/engine/GatherAndSellMissionEngine$Backup;

    invoke-direct {v1, p0}, Lfr/testudo/spacecorsair/business/mission/engine/GatherAndSellMissionEngine$Backup;-><init>(Lfr/testudo/spacecorsair/business/mission/engine/GatherAndSellMissionEngine;)V

    iput-object v1, p0, Lfr/testudo/spacecorsair/business/mission/engine/GatherAndSellMissionEngine;->myBackup:Lfr/testudo/spacecorsair/business/mission/engine/GatherAndSellMissionEngine$Backup;

    .line 61
    iput v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/GatherAndSellMissionEngine;->currentGathered:I

    .line 62
    iput v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/GatherAndSellMissionEngine;->objectiveToGathered:I

    .line 70
    iput-boolean v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/GatherAndSellMissionEngine;->completed:Z

    .line 73
    iput-boolean v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/GatherAndSellMissionEngine;->configRestrictGatherToOneZone:Z

    .line 74
    iput-boolean v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/GatherAndSellMissionEngine;->acceptExisingItems:Z

    .line 77
    iput-object v2, p0, Lfr/testudo/spacecorsair/business/mission/engine/GatherAndSellMissionEngine;->textGotoGatherZone:Ljava/lang/String;

    .line 89
    iput-object v2, p0, Lfr/testudo/spacecorsair/business/mission/engine/GatherAndSellMissionEngine;->stationRewardName:Ljava/lang/String;

    .line 90
    iput-object v2, p0, Lfr/testudo/spacecorsair/business/mission/engine/GatherAndSellMissionEngine;->stationSellToName:Ljava/lang/String;

    .line 99
    iput-boolean v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/GatherAndSellMissionEngine;->hasSeenTargetZone:Z

    .line 103
    iput-object p1, p0, Lfr/testudo/spacecorsair/business/mission/engine/GatherAndSellMissionEngine;->missionId:Ljava/lang/String;

    .line 104
    iput-object p2, p0, Lfr/testudo/spacecorsair/business/mission/engine/GatherAndSellMissionEngine;->gatherZoneId:Lfr/testudo/spacecorsair/game/levels/LevelId;

    .line 105
    iput-object p3, p0, Lfr/testudo/spacecorsair/business/mission/engine/GatherAndSellMissionEngine;->sellZoneId:Lfr/testudo/spacecorsair/game/levels/LevelId;

    .line 106
    iput-object p4, p0, Lfr/testudo/spacecorsair/business/mission/engine/GatherAndSellMissionEngine;->recompenceZoneId:Lfr/testudo/spacecorsair/game/levels/LevelId;

    .line 107
    iput-object p5, p0, Lfr/testudo/spacecorsair/business/mission/engine/GatherAndSellMissionEngine;->objectToGather:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    .line 108
    iput p6, p0, Lfr/testudo/spacecorsair/business/mission/engine/GatherAndSellMissionEngine;->gatherTextRessourceId:I

    .line 109
    iput p8, p0, Lfr/testudo/spacecorsair/business/mission/engine/GatherAndSellMissionEngine;->objectiveToGathered:I

    .line 110
    iput-boolean p9, p0, Lfr/testudo/spacecorsair/business/mission/engine/GatherAndSellMissionEngine;->acceptExisingItems:Z

    .line 111
    iput p7, p0, Lfr/testudo/spacecorsair/business/mission/engine/GatherAndSellMissionEngine;->sellTextRessourceId:I

    .line 113
    iput-object p11, p0, Lfr/testudo/spacecorsair/business/mission/engine/GatherAndSellMissionEngine;->stationRewardName:Ljava/lang/String;

    .line 114
    iput-object p10, p0, Lfr/testudo/spacecorsair/business/mission/engine/GatherAndSellMissionEngine;->stationSellToName:Ljava/lang/String;

    .line 115
    if-eqz p2, :cond_37

    const/4 v0, 0x1

    :cond_37
    iput-boolean v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/GatherAndSellMissionEngine;->configRestrictGatherToOneZone:Z

    .line 116
    iput-object p12, p0, Lfr/testudo/spacecorsair/business/mission/engine/GatherAndSellMissionEngine;->engineListener:Lfr/testudo/spacecorsair/business/mission/engine/GatherAndSellMissionEngineListener;

    .line 118
    invoke-direct {p0}, Lfr/testudo/spacecorsair/business/mission/engine/GatherAndSellMissionEngine;->initStrings()V

    .line 119
    return-void
.end method

.method private initStrings()V
    .registers 5

    .prologue
    const v3, 0x7f070120

    .line 127
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/GatherAndSellMissionEngine;->gatherZoneId:Lfr/testudo/spacecorsair/game/levels/LevelId;

    if-eqz v0, :cond_2a

    .line 128
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    invoke-virtual {v1, v3}, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->getStringRessource(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/mission/engine/GatherAndSellMissionEngine;->gatherZoneId:Lfr/testudo/spacecorsair/game/levels/LevelId;

    iget-object v1, v1, Lfr/testudo/spacecorsair/game/levels/LevelId;->levelName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/GatherAndSellMissionEngine;->textGotoGatherZone:Ljava/lang/String;

    .line 130
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

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/mission/engine/GatherAndSellMissionEngine;->recompenceZoneId:Lfr/testudo/spacecorsair/game/levels/LevelId;

    iget-object v1, v1, Lfr/testudo/spacecorsair/game/levels/LevelId;->levelName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/GatherAndSellMissionEngine;->textGotoRecompZone:Ljava/lang/String;

    .line 131
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    invoke-virtual {v1, v3}, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->getStringRessource(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/mission/engine/GatherAndSellMissionEngine;->sellZoneId:Lfr/testudo/spacecorsair/game/levels/LevelId;

    iget-object v1, v1, Lfr/testudo/spacecorsair/game/levels/LevelId;->levelName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/GatherAndSellMissionEngine;->textGotoSellZone:Ljava/lang/String;

    .line 132
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

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/mission/engine/GatherAndSellMissionEngine;->stationRewardName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/GatherAndSellMissionEngine;->textDockToStation:Ljava/lang/String;

    .line 133
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget v1, p0, Lfr/testudo/spacecorsair/business/mission/engine/GatherAndSellMissionEngine;->sellTextRessourceId:I

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->getStringRessource(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/GatherAndSellMissionEngine;->textSellToStation:Ljava/lang/String;

    .line 134
    return-void
.end method

.method private onGathered()V
    .registers 3

    .prologue
    .line 325
    invoke-virtual {p0}, Lfr/testudo/spacecorsair/business/mission/engine/GatherAndSellMissionEngine;->updateGatherText()V

    .line 326
    iget v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/GatherAndSellMissionEngine;->currentGathered:I

    iget v1, p0, Lfr/testudo/spacecorsair/business/mission/engine/GatherAndSellMissionEngine;->objectiveToGathered:I

    if-lt v0, v1, :cond_2e

    .line 327
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->soundManager:Lfr/testudo/spacecorsair/engine/SoundManager;

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/engine/SoundManager;->playMissionComplete()V

    .line 328
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    const v1, 0x7f0702c1

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->getStringRessource(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-static {v0, v1}, Lfr/testudo/spacecorsair/display/hud/WelcomeMessage;->setText(Ljava/lang/String;Ljava/lang/String;)V

    .line 329
    sget-object v0, Lfr/testudo/spacecorsair/business/mission/engine/GatherAndSellMissionEngine$Phase;->SELL:Lfr/testudo/spacecorsair/business/mission/engine/GatherAndSellMissionEngine$Phase;

    iput-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/GatherAndSellMissionEngine;->currentPhase:Lfr/testudo/spacecorsair/business/mission/engine/GatherAndSellMissionEngine$Phase;

    .line 330
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/Game;->currentLevel:Lfr/testudo/spacecorsair/game/levels/Level;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/levels/Level;->name:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lfr/testudo/spacecorsair/business/mission/engine/GatherAndSellMissionEngine;->onZoneChanged(Ljava/lang/String;Ljava/lang/String;)V

    .line 332
    :cond_2e
    return-void
.end method

.method private setPhaseGateAndStationTarget(Z)V
    .registers 4

    .prologue
    .line 336
    sget-object v0, Lfr/testudo/spacecorsair/business/mission/engine/GatherAndSellMissionEngine$1;->$SwitchMap$fr$testudo$spacecorsair$business$mission$engine$GatherAndSellMissionEngine$Phase:[I

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/mission/engine/GatherAndSellMissionEngine;->currentPhase:Lfr/testudo/spacecorsair/business/mission/engine/GatherAndSellMissionEngine$Phase;

    invoke-virtual {v1}, Lfr/testudo/spacecorsair/business/mission/engine/GatherAndSellMissionEngine$Phase;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_90

    .line 388
    :cond_d
    :goto_d
    return-void

    .line 338
    :pswitch_e
    iget-boolean v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/GatherAndSellMissionEngine;->isPlayerInGatherZone:Z

    if-nez v0, :cond_d

    .line 342
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/Game;->currentLevel:Lfr/testudo/spacecorsair/game/levels/Level;

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/mission/engine/GatherAndSellMissionEngine;->gatherZoneId:Lfr/testudo/spacecorsair/game/levels/LevelId;

    invoke-static {v1}, Lfr/testudo/spacecorsair/business/world/PathFinder;->getPortalNameToGoTo(Lfr/testudo/spacecorsair/game/levels/LevelId;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/game/levels/Level;->findPortalByName(Ljava/lang/String;)Lfr/testudo/spacecorsair/business/world/Portal;

    move-result-object v0

    .line 343
    if-eqz v0, :cond_d

    .line 344
    iput-boolean p1, v0, Lfr/testudo/spacecorsair/business/world/Portal;->isMissionObjective:Z

    .line 345
    sget-object v1, Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;->ORANGE:Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;

    iput-object v1, v0, Lfr/testudo/spacecorsair/business/world/Portal;->missionObjectiveColor:Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;

    goto :goto_d

    .line 349
    :pswitch_2b
    iget-boolean v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/GatherAndSellMissionEngine;->isPlayerInSellZone:Z

    if-eqz v0, :cond_44

    .line 351
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/Game;->currentLevel:Lfr/testudo/spacecorsair/game/levels/Level;

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/mission/engine/GatherAndSellMissionEngine;->stationSellToName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/game/levels/Level;->findStationByName(Ljava/lang/String;)Lfr/testudo/spacecorsair/business/world/station/Station;

    move-result-object v0

    .line 352
    if-eqz v0, :cond_d

    .line 353
    iput-boolean p1, v0, Lfr/testudo/spacecorsair/business/world/station/Station;->isMissionObjective:Z

    .line 354
    sget-object v1, Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;->ORANGE:Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;

    iput-object v1, v0, Lfr/testudo/spacecorsair/business/world/station/Station;->missionObjectiveColor:Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;

    goto :goto_d

    .line 360
    :cond_44
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/Game;->currentLevel:Lfr/testudo/spacecorsair/game/levels/Level;

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/mission/engine/GatherAndSellMissionEngine;->sellZoneId:Lfr/testudo/spacecorsair/game/levels/LevelId;

    invoke-static {v1}, Lfr/testudo/spacecorsair/business/world/PathFinder;->getPortalNameToGoTo(Lfr/testudo/spacecorsair/game/levels/LevelId;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/game/levels/Level;->findPortalByName(Ljava/lang/String;)Lfr/testudo/spacecorsair/business/world/Portal;

    move-result-object v0

    .line 361
    if-eqz v0, :cond_d

    .line 362
    iput-boolean p1, v0, Lfr/testudo/spacecorsair/business/world/Portal;->isMissionObjective:Z

    .line 363
    sget-object v1, Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;->ORANGE:Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;

    iput-object v1, v0, Lfr/testudo/spacecorsair/business/world/Portal;->missionObjectiveColor:Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;

    goto :goto_d

    .line 369
    :pswitch_5d
    iget-boolean v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/GatherAndSellMissionEngine;->isPlayerInRecompenceZone:Z

    if-eqz v0, :cond_76

    .line 371
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/Game;->currentLevel:Lfr/testudo/spacecorsair/game/levels/Level;

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/mission/engine/GatherAndSellMissionEngine;->stationRewardName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/game/levels/Level;->findStationByName(Ljava/lang/String;)Lfr/testudo/spacecorsair/business/world/station/Station;

    move-result-object v0

    .line 372
    if-eqz v0, :cond_d

    .line 373
    iput-boolean p1, v0, Lfr/testudo/spacecorsair/business/world/station/Station;->isMissionObjective:Z

    .line 374
    sget-object v1, Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;->ORANGE:Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;

    iput-object v1, v0, Lfr/testudo/spacecorsair/business/world/station/Station;->missionObjectiveColor:Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;

    goto :goto_d

    .line 381
    :cond_76
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/Game;->currentLevel:Lfr/testudo/spacecorsair/game/levels/Level;

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/mission/engine/GatherAndSellMissionEngine;->recompenceZoneId:Lfr/testudo/spacecorsair/game/levels/LevelId;

    invoke-static {v1}, Lfr/testudo/spacecorsair/business/world/PathFinder;->getPortalNameToGoTo(Lfr/testudo/spacecorsair/game/levels/LevelId;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/game/levels/Level;->findPortalByName(Ljava/lang/String;)Lfr/testudo/spacecorsair/business/world/Portal;

    move-result-object v0

    .line 382
    if-eqz v0, :cond_d

    .line 383
    iput-boolean p1, v0, Lfr/testudo/spacecorsair/business/world/Portal;->isMissionObjective:Z

    .line 384
    sget-object v1, Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;->ORANGE:Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;

    iput-object v1, v0, Lfr/testudo/spacecorsair/business/world/Portal;->missionObjectiveColor:Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;

    goto/16 :goto_d

    .line 336
    :pswitch_data_90
    .packed-switch 0x1
        :pswitch_e
        :pswitch_2b
        :pswitch_5d
    .end packed-switch
.end method


# virtual methods
.method public getCurrentInstruction()Ljava/lang/String;
    .registers 3

    .prologue
    .line 238
    sget-object v0, Lfr/testudo/spacecorsair/business/mission/engine/GatherAndSellMissionEngine$1;->$SwitchMap$fr$testudo$spacecorsair$business$mission$engine$GatherAndSellMissionEngine$Phase:[I

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/mission/engine/GatherAndSellMissionEngine;->currentPhase:Lfr/testudo/spacecorsair/business/mission/engine/GatherAndSellMissionEngine$Phase;

    invoke-virtual {v1}, Lfr/testudo/spacecorsair/business/mission/engine/GatherAndSellMissionEngine$Phase;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_2e

    .line 261
    const-string v0, ""

    :goto_f
    return-object v0

    .line 241
    :pswitch_10
    iget-boolean v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/GatherAndSellMissionEngine;->isPlayerInGatherZone:Z

    if-eqz v0, :cond_17

    .line 242
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/GatherAndSellMissionEngine;->textGather:Ljava/lang/String;

    goto :goto_f

    .line 244
    :cond_17
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/GatherAndSellMissionEngine;->textGotoGatherZone:Ljava/lang/String;

    goto :goto_f

    .line 247
    :pswitch_1a
    iget-boolean v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/GatherAndSellMissionEngine;->isPlayerInSellZone:Z

    if-eqz v0, :cond_21

    .line 248
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/GatherAndSellMissionEngine;->textSellToStation:Ljava/lang/String;

    goto :goto_f

    .line 250
    :cond_21
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/GatherAndSellMissionEngine;->textGotoSellZone:Ljava/lang/String;

    goto :goto_f

    .line 254
    :pswitch_24
    iget-boolean v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/GatherAndSellMissionEngine;->isPlayerInRecompenceZone:Z

    if-eqz v0, :cond_2b

    .line 255
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/GatherAndSellMissionEngine;->textDockToStation:Ljava/lang/String;

    goto :goto_f

    .line 257
    :cond_2b
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/GatherAndSellMissionEngine;->textGotoRecompZone:Ljava/lang/String;

    goto :goto_f

    .line 238
    :pswitch_data_2e
    .packed-switch 0x1
        :pswitch_10
        :pswitch_1a
        :pswitch_24
    .end packed-switch
.end method

.method public giveUp()V
    .registers 1

    .prologue
    .line 307
    invoke-virtual {p0}, Lfr/testudo/spacecorsair/business/mission/engine/GatherAndSellMissionEngine;->terminate()V

    .line 308
    return-void
.end method

.method public init()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 266
    iput-boolean v2, p0, Lfr/testudo/spacecorsair/business/mission/engine/GatherAndSellMissionEngine;->completed:Z

    .line 267
    iput v2, p0, Lfr/testudo/spacecorsair/business/mission/engine/GatherAndSellMissionEngine;->currentGathered:I

    .line 268
    sget-object v0, Lfr/testudo/spacecorsair/business/mission/engine/GatherAndSellMissionEngine$Phase;->GATHERING:Lfr/testudo/spacecorsair/business/mission/engine/GatherAndSellMissionEngine$Phase;

    iput-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/GatherAndSellMissionEngine;->currentPhase:Lfr/testudo/spacecorsair/business/mission/engine/GatherAndSellMissionEngine$Phase;

    .line 270
    iget-boolean v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/GatherAndSellMissionEngine;->acceptExisingItems:Z

    if-eqz v0, :cond_1b

    .line 271
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/Game;->playerCurrentShipInventory:Lfr/testudo/spacecorsair/business/player/Inventory;

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/mission/engine/GatherAndSellMissionEngine;->objectToGather:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/business/player/Inventory;->getQuantityOf(Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)I

    move-result v0

    iput v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/GatherAndSellMissionEngine;->currentGathered:I

    .line 274
    :cond_1b
    invoke-direct {p0}, Lfr/testudo/spacecorsair/business/mission/engine/GatherAndSellMissionEngine;->onGathered()V

    .line 276
    iput-boolean v2, p0, Lfr/testudo/spacecorsair/business/mission/engine/GatherAndSellMissionEngine;->hasSeenTargetZone:Z

    .line 277
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/Game;->currentLevel:Lfr/testudo/spacecorsair/game/levels/Level;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/levels/Level;->name:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lfr/testudo/spacecorsair/business/mission/engine/GatherAndSellMissionEngine;->onZoneChanged(Ljava/lang/String;Ljava/lang/String;)V

    .line 278
    return-void
.end method

.method public isCompleted()Z
    .registers 2

    .prologue
    .line 320
    iget-boolean v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/GatherAndSellMissionEngine;->completed:Z

    return v0
.end method

.method public onBeforePlayerDock()V
    .registers 1

    .prologue
    .line 192
    return-void
.end method

.method public onDoPhysic(J)V
    .registers 3

    .prologue
    .line 231
    return-void
.end method

.method public onElementDestroyed(Lfr/testudo/spacecorsair/business/Element;)V
    .registers 2

    .prologue
    .line 176
    return-void
.end method

.method public onElementDestroyedByPlayer(Lfr/testudo/spacecorsair/business/Element;)V
    .registers 2

    .prologue
    .line 181
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
    .line 220
    return-void
.end method

.method public onPlayerDeath()V
    .registers 1

    .prologue
    .line 186
    return-void
.end method

.method public onPlayerLoot(Lfr/testudo/spacecorsair/business/loot/LootElement;)Z
    .registers 4

    .prologue
    .line 154
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/GatherAndSellMissionEngine;->currentPhase:Lfr/testudo/spacecorsair/business/mission/engine/GatherAndSellMissionEngine$Phase;

    sget-object v1, Lfr/testudo/spacecorsair/business/mission/engine/GatherAndSellMissionEngine$Phase;->GATHERING:Lfr/testudo/spacecorsair/business/mission/engine/GatherAndSellMissionEngine$Phase;

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/business/mission/engine/GatherAndSellMissionEngine$Phase;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21

    iget-boolean v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/GatherAndSellMissionEngine;->isPlayerInGatherZone:Z

    if-eqz v0, :cond_21

    .line 155
    iget-object v0, p1, Lfr/testudo/spacecorsair/business/loot/LootElement;->spaceObjectType:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/mission/engine/GatherAndSellMissionEngine;->objectToGather:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 156
    iget v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/GatherAndSellMissionEngine;->currentGathered:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/GatherAndSellMissionEngine;->currentGathered:I

    .line 157
    invoke-direct {p0}, Lfr/testudo/spacecorsair/business/mission/engine/GatherAndSellMissionEngine;->onGathered()V

    .line 160
    :cond_21
    const/4 v0, 0x1

    return v0
.end method

.method public onPlayerSellItem(Lfr/testudo/spacecorsair/business/loot/SpaceObject;)V
    .registers 4

    .prologue
    .line 196
    invoke-virtual {p1}, Lfr/testudo/spacecorsair/business/loot/SpaceObject;->getSpaceObjectType()Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    move-result-object v0

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/mission/engine/GatherAndSellMissionEngine;->objectToGather:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_43

    .line 198
    invoke-virtual {p1}, Lfr/testudo/spacecorsair/business/loot/SpaceObject;->getQuantity()I

    move-result v0

    .line 199
    iget v1, p0, Lfr/testudo/spacecorsair/business/mission/engine/GatherAndSellMissionEngine;->objectiveToGathered:I

    if-lt v0, v1, :cond_44

    .line 201
    sget-object v0, Lfr/testudo/spacecorsair/business/mission/engine/GatherAndSellMissionEngine$Phase;->REWARD:Lfr/testudo/spacecorsair/business/mission/engine/GatherAndSellMissionEngine$Phase;

    iput-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/GatherAndSellMissionEngine;->currentPhase:Lfr/testudo/spacecorsair/business/mission/engine/GatherAndSellMissionEngine$Phase;

    .line 202
    const/4 v0, 0x1

    iput-boolean v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/GatherAndSellMissionEngine;->completed:Z

    .line 203
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->soundManager:Lfr/testudo/spacecorsair/engine/SoundManager;

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/engine/SoundManager;->playMissionComplete()V

    .line 204
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/Game;->currentLevel:Lfr/testudo/spacecorsair/game/levels/Level;

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/mission/engine/GatherAndSellMissionEngine;->stationSellToName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/game/levels/Level;->findStationByName(Ljava/lang/String;)Lfr/testudo/spacecorsair/business/world/station/Station;

    move-result-object v0

    .line 205
    if-eqz v0, :cond_37

    .line 206
    const/4 v1, 0x0

    iput-boolean v1, v0, Lfr/testudo/spacecorsair/business/world/station/Station;->isMissionObjective:Z

    .line 207
    sget-object v1, Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;->ORANGE:Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;

    iput-object v1, v0, Lfr/testudo/spacecorsair/business/world/station/Station;->missionObjectiveColor:Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;

    .line 209
    :cond_37
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/Game;->currentLevel:Lfr/testudo/spacecorsair/game/levels/Level;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/levels/Level;->name:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lfr/testudo/spacecorsair/business/mission/engine/GatherAndSellMissionEngine;->onZoneChanged(Ljava/lang/String;Ljava/lang/String;)V

    .line 215
    :cond_43
    :goto_43
    return-void

    .line 211
    :cond_44
    iget v1, p0, Lfr/testudo/spacecorsair/business/mission/engine/GatherAndSellMissionEngine;->objectiveToGathered:I

    sub-int v0, v1, v0

    iput v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/GatherAndSellMissionEngine;->objectiveToGathered:I

    goto :goto_43
.end method

.method public onPlayerUndock()V
    .registers 1

    .prologue
    .line 226
    return-void
.end method

.method public onZoneChanged(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    .prologue
    const/4 v1, 0x1

    .line 139
    iget-boolean v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/GatherAndSellMissionEngine;->configRestrictGatherToOneZone:Z

    if-eqz v0, :cond_f

    iget-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/GatherAndSellMissionEngine;->gatherZoneId:Lfr/testudo/spacecorsair/game/levels/LevelId;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/levels/LevelId;->levelName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_43

    :cond_f
    move v0, v1

    :goto_10
    iput-boolean v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/GatherAndSellMissionEngine;->isPlayerInGatherZone:Z

    .line 140
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/GatherAndSellMissionEngine;->recompenceZoneId:Lfr/testudo/spacecorsair/game/levels/LevelId;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/levels/LevelId;->levelName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/GatherAndSellMissionEngine;->isPlayerInRecompenceZone:Z

    .line 141
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/GatherAndSellMissionEngine;->sellZoneId:Lfr/testudo/spacecorsair/game/levels/LevelId;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/levels/LevelId;->levelName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/GatherAndSellMissionEngine;->isPlayerInSellZone:Z

    .line 143
    invoke-direct {p0, v1}, Lfr/testudo/spacecorsair/business/mission/engine/GatherAndSellMissionEngine;->setPhaseGateAndStationTarget(Z)V

    .line 145
    iget-boolean v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/GatherAndSellMissionEngine;->isPlayerInGatherZone:Z

    if-eqz v0, :cond_42

    iget-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/GatherAndSellMissionEngine;->currentPhase:Lfr/testudo/spacecorsair/business/mission/engine/GatherAndSellMissionEngine$Phase;

    sget-object v2, Lfr/testudo/spacecorsair/business/mission/engine/GatherAndSellMissionEngine$Phase;->GATHERING:Lfr/testudo/spacecorsair/business/mission/engine/GatherAndSellMissionEngine$Phase;

    invoke-virtual {v0, v2}, Lfr/testudo/spacecorsair/business/mission/engine/GatherAndSellMissionEngine$Phase;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_42

    iget-boolean v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/GatherAndSellMissionEngine;->hasSeenTargetZone:Z

    if-nez v0, :cond_42

    .line 146
    iput-boolean v1, p0, Lfr/testudo/spacecorsair/business/mission/engine/GatherAndSellMissionEngine;->hasSeenTargetZone:Z

    .line 147
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/GatherAndSellMissionEngine;->engineListener:Lfr/testudo/spacecorsair/business/mission/engine/GatherAndSellMissionEngineListener;

    invoke-interface {v0}, Lfr/testudo/spacecorsair/business/mission/engine/GatherAndSellMissionEngineListener;->onEnterInGatherZoneFirstTime()V

    .line 149
    :cond_42
    return-void

    .line 139
    :cond_43
    const/4 v0, 0x0

    goto :goto_10
.end method

.method public restoreState()V
    .registers 4

    .prologue
    .line 282
    invoke-static {}, Lfr/testudo/spacecorsair/storage/MissionStorage;->getInstance()Lfr/testudo/spacecorsair/storage/MissionStorage;

    move-result-object v0

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/mission/engine/GatherAndSellMissionEngine;->missionId:Ljava/lang/String;

    const-class v2, Lfr/testudo/spacecorsair/business/mission/engine/GatherAndSellMissionEngine$Backup;

    invoke-virtual {v0, v1, v2}, Lfr/testudo/spacecorsair/storage/MissionStorage;->loadFromFile(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfr/testudo/spacecorsair/business/mission/engine/GatherAndSellMissionEngine$Backup;

    .line 283
    if-eqz v0, :cond_34

    .line 284
    iput-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/GatherAndSellMissionEngine;->myBackup:Lfr/testudo/spacecorsair/business/mission/engine/GatherAndSellMissionEngine$Backup;

    .line 285
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/GatherAndSellMissionEngine;->myBackup:Lfr/testudo/spacecorsair/business/mission/engine/GatherAndSellMissionEngine$Backup;

    iget v0, v0, Lfr/testudo/spacecorsair/business/mission/engine/GatherAndSellMissionEngine$Backup;->currentValue:I

    iput v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/GatherAndSellMissionEngine;->currentGathered:I

    .line 286
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/GatherAndSellMissionEngine;->myBackup:Lfr/testudo/spacecorsair/business/mission/engine/GatherAndSellMissionEngine$Backup;

    iget v0, v0, Lfr/testudo/spacecorsair/business/mission/engine/GatherAndSellMissionEngine$Backup;->objectiveValue:I

    iput v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/GatherAndSellMissionEngine;->objectiveToGathered:I

    .line 287
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/GatherAndSellMissionEngine;->myBackup:Lfr/testudo/spacecorsair/business/mission/engine/GatherAndSellMissionEngine$Backup;

    iget-object v0, v0, Lfr/testudo/spacecorsair/business/mission/engine/GatherAndSellMissionEngine$Backup;->curPhase:Lfr/testudo/spacecorsair/business/mission/engine/GatherAndSellMissionEngine$Phase;

    iput-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/GatherAndSellMissionEngine;->currentPhase:Lfr/testudo/spacecorsair/business/mission/engine/GatherAndSellMissionEngine$Phase;

    .line 288
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/GatherAndSellMissionEngine;->myBackup:Lfr/testudo/spacecorsair/business/mission/engine/GatherAndSellMissionEngine$Backup;

    iget-boolean v0, v0, Lfr/testudo/spacecorsair/business/mission/engine/GatherAndSellMissionEngine$Backup;->completed:Z

    iput-boolean v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/GatherAndSellMissionEngine;->completed:Z

    .line 289
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/GatherAndSellMissionEngine;->myBackup:Lfr/testudo/spacecorsair/business/mission/engine/GatherAndSellMissionEngine$Backup;

    iget-boolean v0, v0, Lfr/testudo/spacecorsair/business/mission/engine/GatherAndSellMissionEngine$Backup;->hasSeenTargetZone:Z

    iput-boolean v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/GatherAndSellMissionEngine;->hasSeenTargetZone:Z

    .line 290
    invoke-direct {p0}, Lfr/testudo/spacecorsair/business/mission/engine/GatherAndSellMissionEngine;->onGathered()V

    .line 297
    :goto_33
    return-void

    .line 293
    :cond_34
    invoke-virtual {p0}, Lfr/testudo/spacecorsair/business/mission/engine/GatherAndSellMissionEngine;->init()V

    goto :goto_33
.end method

.method public saveState()V
    .registers 4

    .prologue
    .line 301
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/GatherAndSellMissionEngine;->myBackup:Lfr/testudo/spacecorsair/business/mission/engine/GatherAndSellMissionEngine$Backup;

    invoke-virtual {v0, p0}, Lfr/testudo/spacecorsair/business/mission/engine/GatherAndSellMissionEngine$Backup;->applyCurrent(Lfr/testudo/spacecorsair/business/mission/engine/GatherAndSellMissionEngine;)V

    .line 302
    invoke-static {}, Lfr/testudo/spacecorsair/storage/MissionStorage;->getInstance()Lfr/testudo/spacecorsair/storage/MissionStorage;

    move-result-object v0

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/mission/engine/GatherAndSellMissionEngine;->missionId:Ljava/lang/String;

    iget-object v2, p0, Lfr/testudo/spacecorsair/business/mission/engine/GatherAndSellMissionEngine;->myBackup:Lfr/testudo/spacecorsair/business/mission/engine/GatherAndSellMissionEngine$Backup;

    invoke-virtual {v0, v1, v2}, Lfr/testudo/spacecorsair/storage/MissionStorage;->saveInFile(Ljava/lang/String;Ljava/lang/Object;)V

    .line 303
    return-void
.end method

.method public terminate()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 312
    invoke-direct {p0, v1}, Lfr/testudo/spacecorsair/business/mission/engine/GatherAndSellMissionEngine;->setPhaseGateAndStationTarget(Z)V

    .line 313
    sget-object v0, Lfr/testudo/spacecorsair/business/mission/engine/GatherAndSellMissionEngine$Phase;->GATHERING:Lfr/testudo/spacecorsair/business/mission/engine/GatherAndSellMissionEngine$Phase;

    iput-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/GatherAndSellMissionEngine;->currentPhase:Lfr/testudo/spacecorsair/business/mission/engine/GatherAndSellMissionEngine$Phase;

    .line 314
    iput-boolean v1, p0, Lfr/testudo/spacecorsair/business/mission/engine/GatherAndSellMissionEngine;->completed:Z

    .line 315
    iput-boolean v1, p0, Lfr/testudo/spacecorsair/business/mission/engine/GatherAndSellMissionEngine;->hasSeenTargetZone:Z

    .line 316
    return-void
.end method

.method public updateGatherText()V
    .registers 4

    .prologue
    .line 123
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget v2, p0, Lfr/testudo/spacecorsair/business/mission/engine/GatherAndSellMissionEngine;->gatherTextRessourceId:I

    invoke-virtual {v1, v2}, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->getStringRessource(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lfr/testudo/spacecorsair/business/mission/engine/GatherAndSellMissionEngine;->currentGathered:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " / "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lfr/testudo/spacecorsair/business/mission/engine/GatherAndSellMissionEngine;->objectiveToGathered:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/GatherAndSellMissionEngine;->textGather:Ljava/lang/String;

    .line 124
    return-void
.end method
