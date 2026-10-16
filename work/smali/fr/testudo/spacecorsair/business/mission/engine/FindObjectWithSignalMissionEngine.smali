.class public Lfr/testudo/spacecorsair/business/mission/engine/FindObjectWithSignalMissionEngine;
.super Lfr/testudo/spacecorsair/business/mission/MissionListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lfr/testudo/spacecorsair/business/mission/engine/FindObjectWithSignalMissionEngine$1;,
        Lfr/testudo/spacecorsair/business/mission/engine/FindObjectWithSignalMissionEngine$Phase;
    }
.end annotation


# instance fields
.field public completed:Z

.field public currentPhase:Lfr/testudo/spacecorsair/business/mission/engine/FindObjectWithSignalMissionEngine$Phase;

.field public detectionDistance:I

.field public findStringID:I

.field public hasAlreadyBeenInTargetArea:Z

.field private isPlayerInRecompenceZone:Z

.field private isPlayerInTargetZone:Z

.field public missionTarget:Lfr/testudo/spacecorsair/business/Element;

.field public nextTimeSonarTick:I

.field public objectFoundListener:Lfr/testudo/spacecorsair/business/mission/engine/FindObjectWithSignalMissionListener;

.field public pickUpStringID:I

.field public recompenceZoneId:Lfr/testudo/spacecorsair/game/levels/LevelId;

.field public stationGiveBackName:Ljava/lang/String;

.field public targetLootElementType:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

.field public targetZoneId:Lfr/testudo/spacecorsair/game/levels/LevelId;

.field public textDockToStation:Ljava/lang/String;

.field public textFindTarget:Ljava/lang/String;

.field public textGotoRecompZone:Ljava/lang/String;

.field public textGotoTargetZone:Ljava/lang/String;

.field public textPickUpTarget:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lfr/testudo/spacecorsair/game/levels/LevelId;Lfr/testudo/spacecorsair/game/levels/LevelId;IILjava/lang/String;ILfr/testudo/spacecorsair/business/mission/engine/FindObjectWithSignalMissionListener;Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)V
    .registers 10

    .prologue
    const/4 v0, 0x0

    .line 58
    invoke-direct {p0}, Lfr/testudo/spacecorsair/business/mission/MissionListener;-><init>()V

    .line 37
    iput-boolean v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/FindObjectWithSignalMissionEngine;->completed:Z

    .line 55
    iput v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/FindObjectWithSignalMissionEngine;->nextTimeSonarTick:I

    .line 59
    iput-object p1, p0, Lfr/testudo/spacecorsair/business/mission/engine/FindObjectWithSignalMissionEngine;->targetZoneId:Lfr/testudo/spacecorsair/game/levels/LevelId;

    .line 60
    iput-object p2, p0, Lfr/testudo/spacecorsair/business/mission/engine/FindObjectWithSignalMissionEngine;->recompenceZoneId:Lfr/testudo/spacecorsair/game/levels/LevelId;

    .line 61
    iput p3, p0, Lfr/testudo/spacecorsair/business/mission/engine/FindObjectWithSignalMissionEngine;->findStringID:I

    .line 62
    iput p4, p0, Lfr/testudo/spacecorsair/business/mission/engine/FindObjectWithSignalMissionEngine;->pickUpStringID:I

    .line 63
    iput-object p5, p0, Lfr/testudo/spacecorsair/business/mission/engine/FindObjectWithSignalMissionEngine;->stationGiveBackName:Ljava/lang/String;

    .line 64
    iput p6, p0, Lfr/testudo/spacecorsair/business/mission/engine/FindObjectWithSignalMissionEngine;->detectionDistance:I

    .line 65
    iput-object p7, p0, Lfr/testudo/spacecorsair/business/mission/engine/FindObjectWithSignalMissionEngine;->objectFoundListener:Lfr/testudo/spacecorsair/business/mission/engine/FindObjectWithSignalMissionListener;

    .line 66
    iput-object p8, p0, Lfr/testudo/spacecorsair/business/mission/engine/FindObjectWithSignalMissionEngine;->targetLootElementType:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    .line 68
    invoke-direct {p0}, Lfr/testudo/spacecorsair/business/mission/engine/FindObjectWithSignalMissionEngine;->initStrings()V

    .line 69
    return-void
.end method

.method private initStrings()V
    .registers 4

    .prologue
    .line 73
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

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/mission/engine/FindObjectWithSignalMissionEngine;->targetZoneId:Lfr/testudo/spacecorsair/game/levels/LevelId;

    iget-object v1, v1, Lfr/testudo/spacecorsair/game/levels/LevelId;->levelName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/FindObjectWithSignalMissionEngine;->textGotoTargetZone:Ljava/lang/String;

    .line 74
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

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/mission/engine/FindObjectWithSignalMissionEngine;->recompenceZoneId:Lfr/testudo/spacecorsair/game/levels/LevelId;

    iget-object v1, v1, Lfr/testudo/spacecorsair/game/levels/LevelId;->levelName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/FindObjectWithSignalMissionEngine;->textGotoRecompZone:Ljava/lang/String;

    .line 75
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget v1, p0, Lfr/testudo/spacecorsair/business/mission/engine/FindObjectWithSignalMissionEngine;->findStringID:I

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->getStringRessource(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/FindObjectWithSignalMissionEngine;->textFindTarget:Ljava/lang/String;

    .line 76
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget v1, p0, Lfr/testudo/spacecorsair/business/mission/engine/FindObjectWithSignalMissionEngine;->pickUpStringID:I

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->getStringRessource(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/FindObjectWithSignalMissionEngine;->textPickUpTarget:Ljava/lang/String;

    .line 77
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

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/mission/engine/FindObjectWithSignalMissionEngine;->stationGiveBackName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/FindObjectWithSignalMissionEngine;->textDockToStation:Ljava/lang/String;

    .line 78
    return-void
.end method

.method private setPhaseGateAndStationTarget(Z)V
    .registers 4

    .prologue
    .line 220
    sget-object v0, Lfr/testudo/spacecorsair/business/mission/engine/FindObjectWithSignalMissionEngine$1;->$SwitchMap$fr$testudo$spacecorsair$business$mission$engine$FindObjectWithSignalMissionEngine$Phase:[I

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/mission/engine/FindObjectWithSignalMissionEngine;->currentPhase:Lfr/testudo/spacecorsair/business/mission/engine/FindObjectWithSignalMissionEngine$Phase;

    invoke-virtual {v1}, Lfr/testudo/spacecorsair/business/mission/engine/FindObjectWithSignalMissionEngine$Phase;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_5e

    .line 253
    :cond_d
    :goto_d
    return-void

    .line 223
    :pswitch_e
    iget-boolean v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/FindObjectWithSignalMissionEngine;->isPlayerInTargetZone:Z

    if-nez v0, :cond_d

    .line 227
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/Game;->currentLevel:Lfr/testudo/spacecorsair/game/levels/Level;

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/mission/engine/FindObjectWithSignalMissionEngine;->targetZoneId:Lfr/testudo/spacecorsair/game/levels/LevelId;

    invoke-static {v1}, Lfr/testudo/spacecorsair/business/world/PathFinder;->getPortalNameToGoTo(Lfr/testudo/spacecorsair/game/levels/LevelId;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/game/levels/Level;->findPortalByName(Ljava/lang/String;)Lfr/testudo/spacecorsair/business/world/Portal;

    move-result-object v0

    .line 228
    if-eqz v0, :cond_d

    .line 229
    iput-boolean p1, v0, Lfr/testudo/spacecorsair/business/world/Portal;->isMissionObjective:Z

    .line 230
    sget-object v1, Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;->ORANGE:Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;

    iput-object v1, v0, Lfr/testudo/spacecorsair/business/world/Portal;->missionObjectiveColor:Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;

    goto :goto_d

    .line 235
    :pswitch_2b
    iget-boolean v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/FindObjectWithSignalMissionEngine;->isPlayerInRecompenceZone:Z

    if-eqz v0, :cond_44

    .line 237
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/Game;->currentLevel:Lfr/testudo/spacecorsair/game/levels/Level;

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/mission/engine/FindObjectWithSignalMissionEngine;->stationGiveBackName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/game/levels/Level;->findStationByName(Ljava/lang/String;)Lfr/testudo/spacecorsair/business/world/station/Station;

    move-result-object v0

    .line 238
    if-eqz v0, :cond_d

    .line 239
    iput-boolean p1, v0, Lfr/testudo/spacecorsair/business/world/station/Station;->isMissionObjective:Z

    .line 240
    sget-object v1, Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;->ORANGE:Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;

    iput-object v1, v0, Lfr/testudo/spacecorsair/business/world/station/Station;->missionObjectiveColor:Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;

    goto :goto_d

    .line 246
    :cond_44
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/Game;->currentLevel:Lfr/testudo/spacecorsair/game/levels/Level;

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/mission/engine/FindObjectWithSignalMissionEngine;->recompenceZoneId:Lfr/testudo/spacecorsair/game/levels/LevelId;

    invoke-static {v1}, Lfr/testudo/spacecorsair/business/world/PathFinder;->getPortalNameToGoTo(Lfr/testudo/spacecorsair/game/levels/LevelId;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/game/levels/Level;->findPortalByName(Ljava/lang/String;)Lfr/testudo/spacecorsair/business/world/Portal;

    move-result-object v0

    .line 247
    if-eqz v0, :cond_d

    .line 248
    iput-boolean p1, v0, Lfr/testudo/spacecorsair/business/world/Portal;->isMissionObjective:Z

    .line 249
    sget-object v1, Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;->ORANGE:Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;

    iput-object v1, v0, Lfr/testudo/spacecorsair/business/world/Portal;->missionObjectiveColor:Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;

    goto :goto_d

    .line 220
    nop

    :pswitch_data_5e
    .packed-switch 0x1
        :pswitch_e
        :pswitch_e
        :pswitch_2b
    .end packed-switch
.end method


# virtual methods
.method public fetchTarget()V
    .registers 3

    .prologue
    .line 183
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/FindObjectWithSignalMissionEngine;->objectFoundListener:Lfr/testudo/spacecorsair/business/mission/engine/FindObjectWithSignalMissionListener;

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/business/mission/engine/FindObjectWithSignalMissionListener;->fetchOrCreateObjectToFindWhenInZone()Lfr/testudo/spacecorsair/business/Element;

    move-result-object v0

    iput-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/FindObjectWithSignalMissionEngine;->missionTarget:Lfr/testudo/spacecorsair/business/Element;

    .line 184
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/FindObjectWithSignalMissionEngine;->currentPhase:Lfr/testudo/spacecorsair/business/mission/engine/FindObjectWithSignalMissionEngine$Phase;

    sget-object v1, Lfr/testudo/spacecorsair/business/mission/engine/FindObjectWithSignalMissionEngine$Phase;->PICK_UP:Lfr/testudo/spacecorsair/business/mission/engine/FindObjectWithSignalMissionEngine$Phase;

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/business/mission/engine/FindObjectWithSignalMissionEngine$Phase;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 185
    invoke-virtual {p0}, Lfr/testudo/spacecorsair/business/mission/engine/FindObjectWithSignalMissionEngine;->onPlayerCloseToTarget()V

    .line 187
    :cond_15
    return-void
.end method

.method public getCurrentInstruction()Ljava/lang/String;
    .registers 3

    .prologue
    .line 147
    sget-object v0, Lfr/testudo/spacecorsair/business/mission/engine/FindObjectWithSignalMissionEngine$1;->$SwitchMap$fr$testudo$spacecorsair$business$mission$engine$FindObjectWithSignalMissionEngine$Phase:[I

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/mission/engine/FindObjectWithSignalMissionEngine;->currentPhase:Lfr/testudo/spacecorsair/business/mission/engine/FindObjectWithSignalMissionEngine$Phase;

    invoke-virtual {v1}, Lfr/testudo/spacecorsair/business/mission/engine/FindObjectWithSignalMissionEngine$Phase;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_2e

    .line 175
    const-string v0, ""

    :goto_f
    return-object v0

    .line 150
    :pswitch_10
    iget-boolean v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/FindObjectWithSignalMissionEngine;->isPlayerInTargetZone:Z

    if-eqz v0, :cond_17

    .line 151
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/FindObjectWithSignalMissionEngine;->textFindTarget:Ljava/lang/String;

    goto :goto_f

    .line 154
    :cond_17
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/FindObjectWithSignalMissionEngine;->textGotoTargetZone:Ljava/lang/String;

    goto :goto_f

    .line 158
    :pswitch_1a
    iget-boolean v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/FindObjectWithSignalMissionEngine;->isPlayerInTargetZone:Z

    if-eqz v0, :cond_21

    .line 159
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/FindObjectWithSignalMissionEngine;->textPickUpTarget:Ljava/lang/String;

    goto :goto_f

    .line 162
    :cond_21
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/FindObjectWithSignalMissionEngine;->textGotoTargetZone:Ljava/lang/String;

    goto :goto_f

    .line 166
    :pswitch_24
    iget-boolean v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/FindObjectWithSignalMissionEngine;->isPlayerInRecompenceZone:Z

    if-eqz v0, :cond_2b

    .line 167
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/FindObjectWithSignalMissionEngine;->textDockToStation:Ljava/lang/String;

    goto :goto_f

    .line 170
    :cond_2b
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/FindObjectWithSignalMissionEngine;->textGotoRecompZone:Ljava/lang/String;

    goto :goto_f

    .line 147
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
    .line 277
    invoke-virtual {p0}, Lfr/testudo/spacecorsair/business/mission/engine/FindObjectWithSignalMissionEngine;->terminate()V

    .line 278
    return-void
.end method

.method public init()V
    .registers 3

    .prologue
    .line 257
    sget-object v0, Lfr/testudo/spacecorsair/business/mission/engine/FindObjectWithSignalMissionEngine$Phase;->SEARCH:Lfr/testudo/spacecorsair/business/mission/engine/FindObjectWithSignalMissionEngine$Phase;

    iput-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/FindObjectWithSignalMissionEngine;->currentPhase:Lfr/testudo/spacecorsair/business/mission/engine/FindObjectWithSignalMissionEngine$Phase;

    .line 258
    const/4 v0, 0x0

    iput-boolean v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/FindObjectWithSignalMissionEngine;->hasAlreadyBeenInTargetArea:Z

    .line 259
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/Game;->playerCurrentShipInventory:Lfr/testudo/spacecorsair/business/player/Inventory;

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/mission/engine/FindObjectWithSignalMissionEngine;->targetLootElementType:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/business/player/Inventory;->removeAllOf(Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)V

    .line 260
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/Game;->currentLevel:Lfr/testudo/spacecorsair/game/levels/Level;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/levels/Level;->name:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lfr/testudo/spacecorsair/business/mission/engine/FindObjectWithSignalMissionEngine;->onZoneChanged(Ljava/lang/String;Ljava/lang/String;)V

    .line 261
    return-void
.end method

.method public isCompleted()Z
    .registers 2

    .prologue
    .line 288
    iget-boolean v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/FindObjectWithSignalMissionEngine;->completed:Z

    return v0
.end method

.method public onDoPhysic(J)V
    .registers 6

    .prologue
    .line 88
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/FindObjectWithSignalMissionEngine;->currentPhase:Lfr/testudo/spacecorsair/business/mission/engine/FindObjectWithSignalMissionEngine$Phase;

    sget-object v1, Lfr/testudo/spacecorsair/business/mission/engine/FindObjectWithSignalMissionEngine$Phase;->SEARCH:Lfr/testudo/spacecorsair/business/mission/engine/FindObjectWithSignalMissionEngine$Phase;

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/business/mission/engine/FindObjectWithSignalMissionEngine$Phase;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_20

    iget-boolean v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/FindObjectWithSignalMissionEngine;->isPlayerInTargetZone:Z

    if-eqz v0, :cond_20

    iget-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/FindObjectWithSignalMissionEngine;->missionTarget:Lfr/testudo/spacecorsair/business/Element;

    if-eqz v0, :cond_20

    .line 89
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/FindObjectWithSignalMissionEngine;->missionTarget:Lfr/testudo/spacecorsair/business/Element;

    iget v0, v0, Lfr/testudo/spacecorsair/business/Element;->distanceToPlayer:F

    iget v1, p0, Lfr/testudo/spacecorsair/business/mission/engine/FindObjectWithSignalMissionEngine;->detectionDistance:I

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_21

    .line 90
    invoke-virtual {p0}, Lfr/testudo/spacecorsair/business/mission/engine/FindObjectWithSignalMissionEngine;->onPlayerCloseToTarget()V

    .line 103
    :cond_20
    :goto_20
    return-void

    .line 94
    :cond_21
    iget v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/FindObjectWithSignalMissionEngine;->nextTimeSonarTick:I

    int-to-long v0, v0

    sub-long/2addr v0, p1

    long-to-int v0, v0

    iput v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/FindObjectWithSignalMissionEngine;->nextTimeSonarTick:I

    .line 95
    iget v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/FindObjectWithSignalMissionEngine;->nextTimeSonarTick:I

    if-gtz v0, :cond_20

    .line 96
    invoke-virtual {p0}, Lfr/testudo/spacecorsair/business/mission/engine/FindObjectWithSignalMissionEngine;->onSonarTick()V

    goto :goto_20
.end method

.method public onElementDestroyed(Lfr/testudo/spacecorsair/business/Element;)V
    .registers 5

    .prologue
    .line 294
    iget-boolean v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/FindObjectWithSignalMissionEngine;->completed:Z

    if-nez v0, :cond_24

    iget-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/FindObjectWithSignalMissionEngine;->missionTarget:Lfr/testudo/spacecorsair/business/Element;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_24

    .line 295
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    const v1, 0x7f07029c

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->getStringRessource(I)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    const v2, 0x7f070381

    invoke-virtual {v1, v2}, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->getStringRessource(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lfr/testudo/spacecorsair/display/hud/WelcomeMessage;->setText(Ljava/lang/String;Ljava/lang/String;)V

    .line 296
    invoke-virtual {p0}, Lfr/testudo/spacecorsair/business/mission/engine/FindObjectWithSignalMissionEngine;->init()V

    .line 299
    :cond_24
    return-void
.end method

.method public onElementDestroyedByPlayer(Lfr/testudo/spacecorsair/business/Element;)V
    .registers 2

    .prologue
    .line 304
    return-void
.end method

.method public onPlayerCloseToTarget()V
    .registers 3

    .prologue
    .line 191
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/FindObjectWithSignalMissionEngine;->missionTarget:Lfr/testudo/spacecorsair/business/Element;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lfr/testudo/spacecorsair/business/Element;->isMissionObjective:Z

    .line 192
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/FindObjectWithSignalMissionEngine;->missionTarget:Lfr/testudo/spacecorsair/business/Element;

    sget-object v1, Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;->GREEN:Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;

    iput-object v1, v0, Lfr/testudo/spacecorsair/business/Element;->missionObjectiveColor:Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;

    .line 193
    sget-object v0, Lfr/testudo/spacecorsair/business/mission/engine/FindObjectWithSignalMissionEngine$Phase;->PICK_UP:Lfr/testudo/spacecorsair/business/mission/engine/FindObjectWithSignalMissionEngine$Phase;

    iput-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/FindObjectWithSignalMissionEngine;->currentPhase:Lfr/testudo/spacecorsair/business/mission/engine/FindObjectWithSignalMissionEngine$Phase;

    .line 194
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/FindObjectWithSignalMissionEngine;->objectFoundListener:Lfr/testudo/spacecorsair/business/mission/engine/FindObjectWithSignalMissionListener;

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/mission/engine/FindObjectWithSignalMissionEngine;->missionTarget:Lfr/testudo/spacecorsair/business/Element;

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/business/mission/engine/FindObjectWithSignalMissionListener;->onObjectFound(Lfr/testudo/spacecorsair/business/Element;)Lfr/testudo/spacecorsair/business/Element;

    move-result-object v0

    iput-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/FindObjectWithSignalMissionEngine;->missionTarget:Lfr/testudo/spacecorsair/business/Element;

    .line 195
    return-void
.end method

.method public onPlayerDeath()V
    .registers 1

    .prologue
    .line 309
    return-void
.end method

.method public onPlayerLoot(Lfr/testudo/spacecorsair/business/loot/LootElement;)Z
    .registers 4

    .prologue
    .line 211
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/FindObjectWithSignalMissionEngine;->currentPhase:Lfr/testudo/spacecorsair/business/mission/engine/FindObjectWithSignalMissionEngine$Phase;

    sget-object v1, Lfr/testudo/spacecorsair/business/mission/engine/FindObjectWithSignalMissionEngine$Phase;->PICK_UP:Lfr/testudo/spacecorsair/business/mission/engine/FindObjectWithSignalMissionEngine$Phase;

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/business/mission/engine/FindObjectWithSignalMissionEngine$Phase;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    iget-object v0, p1, Lfr/testudo/spacecorsair/business/loot/LootElement;->spaceObjectType:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/mission/engine/FindObjectWithSignalMissionEngine;->targetLootElementType:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 212
    invoke-virtual {p0}, Lfr/testudo/spacecorsair/business/mission/engine/FindObjectWithSignalMissionEngine;->onTargetPickedUp()V

    .line 215
    :cond_17
    const/4 v0, 0x1

    return v0
.end method

.method public onSonarTick()V
    .registers 5

    .prologue
    .line 108
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/FindObjectWithSignalMissionEngine;->missionTarget:Lfr/testudo/spacecorsair/business/Element;

    iget v0, v0, Lfr/testudo/spacecorsair/business/Element;->distanceToPlayer:F

    float-to-int v0, v0

    div-int/lit8 v0, v0, 0x4

    iput v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/FindObjectWithSignalMissionEngine;->nextTimeSonarTick:I

    .line 109
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    const-wide/16 v2, 0x28

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->vibrate(Ljava/lang/Long;)V

    .line 110
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->soundManager:Lfr/testudo/spacecorsair/engine/SoundManager;

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/engine/SoundManager;->playSonarbeep()V

    .line 112
    return-void
.end method

.method public onTargetPickedUp()V
    .registers 4

    .prologue
    const/4 v2, 0x1

    .line 199
    iput-boolean v2, p0, Lfr/testudo/spacecorsair/business/mission/engine/FindObjectWithSignalMissionEngine;->completed:Z

    .line 200
    sget-object v0, Lfr/testudo/spacecorsair/business/mission/engine/FindObjectWithSignalMissionEngine$Phase;->GATHER_RECOMP:Lfr/testudo/spacecorsair/business/mission/engine/FindObjectWithSignalMissionEngine$Phase;

    iput-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/FindObjectWithSignalMissionEngine;->currentPhase:Lfr/testudo/spacecorsair/business/mission/engine/FindObjectWithSignalMissionEngine$Phase;

    .line 201
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    const v1, 0x7f0702c1

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->getStringRessource(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-static {v0, v1}, Lfr/testudo/spacecorsair/display/hud/WelcomeMessage;->setText(Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/FindObjectWithSignalMissionEngine;->objectFoundListener:Lfr/testudo/spacecorsair/business/mission/engine/FindObjectWithSignalMissionListener;

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/mission/engine/FindObjectWithSignalMissionEngine;->missionTarget:Lfr/testudo/spacecorsair/business/Element;

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/business/mission/engine/FindObjectWithSignalMissionListener;->onObjectPickedUp(Lfr/testudo/spacecorsair/business/Element;)V

    .line 203
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->soundManager:Lfr/testudo/spacecorsair/engine/SoundManager;

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/engine/SoundManager;->playMissionComplete()V

    .line 204
    invoke-direct {p0, v2}, Lfr/testudo/spacecorsair/business/mission/engine/FindObjectWithSignalMissionEngine;->setPhaseGateAndStationTarget(Z)V

    .line 205
    return-void
.end method

.method public onZoneChanged(Ljava/lang/String;Ljava/lang/String;)V
    .registers 7

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 117
    const/4 v0, 0x0

    iput-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/FindObjectWithSignalMissionEngine;->missionTarget:Lfr/testudo/spacecorsair/business/Element;

    .line 118
    const/16 v0, 0x1388

    iput v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/FindObjectWithSignalMissionEngine;->nextTimeSonarTick:I

    .line 120
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/FindObjectWithSignalMissionEngine;->targetZoneId:Lfr/testudo/spacecorsair/game/levels/LevelId;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/levels/LevelId;->levelName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_47

    .line 121
    iput-boolean v2, p0, Lfr/testudo/spacecorsair/business/mission/engine/FindObjectWithSignalMissionEngine;->isPlayerInTargetZone:Z

    .line 122
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/FindObjectWithSignalMissionEngine;->currentPhase:Lfr/testudo/spacecorsair/business/mission/engine/FindObjectWithSignalMissionEngine$Phase;

    sget-object v1, Lfr/testudo/spacecorsair/business/mission/engine/FindObjectWithSignalMissionEngine$Phase;->SEARCH:Lfr/testudo/spacecorsair/business/mission/engine/FindObjectWithSignalMissionEngine$Phase;

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/business/mission/engine/FindObjectWithSignalMissionEngine$Phase;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_29

    iget-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/FindObjectWithSignalMissionEngine;->currentPhase:Lfr/testudo/spacecorsair/business/mission/engine/FindObjectWithSignalMissionEngine$Phase;

    sget-object v1, Lfr/testudo/spacecorsair/business/mission/engine/FindObjectWithSignalMissionEngine$Phase;->PICK_UP:Lfr/testudo/spacecorsair/business/mission/engine/FindObjectWithSignalMissionEngine$Phase;

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/business/mission/engine/FindObjectWithSignalMissionEngine$Phase;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 123
    :cond_29
    invoke-virtual {p0}, Lfr/testudo/spacecorsair/business/mission/engine/FindObjectWithSignalMissionEngine;->fetchTarget()V

    .line 125
    :cond_2c
    iget-boolean v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/FindObjectWithSignalMissionEngine;->hasAlreadyBeenInTargetArea:Z

    if-nez v0, :cond_37

    .line 126
    iput-boolean v2, p0, Lfr/testudo/spacecorsair/business/mission/engine/FindObjectWithSignalMissionEngine;->hasAlreadyBeenInTargetArea:Z

    .line 127
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/FindObjectWithSignalMissionEngine;->objectFoundListener:Lfr/testudo/spacecorsair/business/mission/engine/FindObjectWithSignalMissionListener;

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/business/mission/engine/FindObjectWithSignalMissionListener;->onFirstTimeEnterInTargetArea()V

    .line 133
    :cond_37
    :goto_37
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/FindObjectWithSignalMissionEngine;->recompenceZoneId:Lfr/testudo/spacecorsair/game/levels/LevelId;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/levels/LevelId;->levelName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4a

    .line 134
    iput-boolean v2, p0, Lfr/testudo/spacecorsair/business/mission/engine/FindObjectWithSignalMissionEngine;->isPlayerInRecompenceZone:Z

    .line 140
    :goto_43
    invoke-direct {p0, v2}, Lfr/testudo/spacecorsair/business/mission/engine/FindObjectWithSignalMissionEngine;->setPhaseGateAndStationTarget(Z)V

    .line 141
    return-void

    .line 130
    :cond_47
    iput-boolean v3, p0, Lfr/testudo/spacecorsair/business/mission/engine/FindObjectWithSignalMissionEngine;->isPlayerInTargetZone:Z

    goto :goto_37

    .line 137
    :cond_4a
    iput-boolean v3, p0, Lfr/testudo/spacecorsair/business/mission/engine/FindObjectWithSignalMissionEngine;->isPlayerInRecompenceZone:Z

    goto :goto_43
.end method

.method public restoreState()V
    .registers 3

    .prologue
    .line 265
    sget-object v0, Lfr/testudo/spacecorsair/business/mission/engine/FindObjectWithSignalMissionEngine$Phase;->SEARCH:Lfr/testudo/spacecorsair/business/mission/engine/FindObjectWithSignalMissionEngine$Phase;

    iput-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/FindObjectWithSignalMissionEngine;->currentPhase:Lfr/testudo/spacecorsair/business/mission/engine/FindObjectWithSignalMissionEngine$Phase;

    .line 266
    const/4 v0, 0x0

    iput-boolean v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/FindObjectWithSignalMissionEngine;->hasAlreadyBeenInTargetArea:Z

    .line 267
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/Game;->playerCurrentShipInventory:Lfr/testudo/spacecorsair/business/player/Inventory;

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/mission/engine/FindObjectWithSignalMissionEngine;->targetLootElementType:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/business/player/Inventory;->removeAllOf(Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)V

    .line 268
    return-void
.end method

.method public saveState()V
    .registers 1

    .prologue
    .line 273
    return-void
.end method

.method public terminate()V
    .registers 3

    .prologue
    .line 282
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lfr/testudo/spacecorsair/business/mission/engine/FindObjectWithSignalMissionEngine;->setPhaseGateAndStationTarget(Z)V

    .line 283
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/Game;->playerCurrentShipInventory:Lfr/testudo/spacecorsair/business/player/Inventory;

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/mission/engine/FindObjectWithSignalMissionEngine;->targetLootElementType:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/business/player/Inventory;->removeAllOf(Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)V

    .line 284
    return-void
.end method

.method public updateTextFindTarget(I)V
    .registers 5

    .prologue
    .line 82
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget v2, p0, Lfr/testudo/spacecorsair/business/mission/engine/FindObjectWithSignalMissionEngine;->pickUpStringID:I

    invoke-virtual {v1, v2}, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->getStringRessource(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ". signal "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/FindObjectWithSignalMissionEngine;->textPickUpTarget:Ljava/lang/String;

    .line 83
    return-void
.end method
