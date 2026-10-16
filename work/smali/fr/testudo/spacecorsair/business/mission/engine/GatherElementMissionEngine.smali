.class public Lfr/testudo/spacecorsair/business/mission/engine/GatherElementMissionEngine;
.super Lfr/testudo/spacecorsair/business/mission/MissionListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lfr/testudo/spacecorsair/business/mission/engine/GatherElementMissionEngine$1;,
        Lfr/testudo/spacecorsair/business/mission/engine/GatherElementMissionEngine$Phase;
    }
.end annotation


# instance fields
.field public acceptExisingItems:Z

.field public completed:Z

.field public currentLootAmount:I

.field public currentPhase:Lfr/testudo/spacecorsair/business/mission/engine/GatherElementMissionEngine$Phase;

.field public displayGotoLootSectorMessage:Z

.field private isPlayerInLootZone:Z

.field private isPlayerInRecompenceZone:Z

.field public lootTextRessourceId:I

.field public lootZoneId:Lfr/testudo/spacecorsair/game/levels/LevelId;

.field public missionId:Ljava/lang/String;

.field public objectToLoot:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

.field public objectiveToLoot:I

.field public recompenceZoneId:Lfr/testudo/spacecorsair/game/levels/LevelId;

.field public stationRewardName:Ljava/lang/String;

.field public textDockToStation:Ljava/lang/String;

.field public textGotoLootZone:Ljava/lang/String;

.field public textGotoRecompZone:Ljava/lang/String;

.field public textLoot:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lfr/testudo/spacecorsair/game/levels/LevelId;Lfr/testudo/spacecorsair/game/levels/LevelId;Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;ZIILjava/lang/String;Z)V
    .registers 12

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 72
    invoke-direct {p0}, Lfr/testudo/spacecorsair/business/mission/MissionListener;-><init>()V

    .line 34
    iput v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/GatherElementMissionEngine;->currentLootAmount:I

    .line 35
    iput v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/GatherElementMissionEngine;->objectiveToLoot:I

    .line 41
    iput-boolean v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/GatherElementMissionEngine;->completed:Z

    .line 42
    const/4 v0, 0x1

    iput-boolean v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/GatherElementMissionEngine;->acceptExisingItems:Z

    .line 50
    iput-object v1, p0, Lfr/testudo/spacecorsair/business/mission/engine/GatherElementMissionEngine;->textGotoLootZone:Ljava/lang/String;

    .line 55
    iput-object v1, p0, Lfr/testudo/spacecorsair/business/mission/engine/GatherElementMissionEngine;->stationRewardName:Ljava/lang/String;

    .line 73
    iput-object p1, p0, Lfr/testudo/spacecorsair/business/mission/engine/GatherElementMissionEngine;->missionId:Ljava/lang/String;

    .line 74
    iput-object p2, p0, Lfr/testudo/spacecorsair/business/mission/engine/GatherElementMissionEngine;->lootZoneId:Lfr/testudo/spacecorsair/game/levels/LevelId;

    .line 75
    iput-object p3, p0, Lfr/testudo/spacecorsair/business/mission/engine/GatherElementMissionEngine;->recompenceZoneId:Lfr/testudo/spacecorsair/game/levels/LevelId;

    .line 76
    iput-object p4, p0, Lfr/testudo/spacecorsair/business/mission/engine/GatherElementMissionEngine;->objectToLoot:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    .line 77
    iput p6, p0, Lfr/testudo/spacecorsair/business/mission/engine/GatherElementMissionEngine;->lootTextRessourceId:I

    .line 78
    iput p7, p0, Lfr/testudo/spacecorsair/business/mission/engine/GatherElementMissionEngine;->objectiveToLoot:I

    .line 79
    iput-boolean p5, p0, Lfr/testudo/spacecorsair/business/mission/engine/GatherElementMissionEngine;->acceptExisingItems:Z

    .line 80
    iput-object p8, p0, Lfr/testudo/spacecorsair/business/mission/engine/GatherElementMissionEngine;->stationRewardName:Ljava/lang/String;

    .line 81
    iput-boolean p9, p0, Lfr/testudo/spacecorsair/business/mission/engine/GatherElementMissionEngine;->displayGotoLootSectorMessage:Z

    .line 84
    invoke-virtual {p0}, Lfr/testudo/spacecorsair/business/mission/engine/GatherElementMissionEngine;->initStrings()V

    .line 85
    return-void
.end method

.method private onMissionItemLoot()V
    .registers 3

    .prologue
    .line 258
    invoke-virtual {p0}, Lfr/testudo/spacecorsair/business/mission/engine/GatherElementMissionEngine;->updateLootText()V

    .line 259
    iget v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/GatherElementMissionEngine;->currentLootAmount:I

    iget v1, p0, Lfr/testudo/spacecorsair/business/mission/engine/GatherElementMissionEngine;->objectiveToLoot:I

    if-lt v0, v1, :cond_31

    .line 260
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->soundManager:Lfr/testudo/spacecorsair/engine/SoundManager;

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/engine/SoundManager;->playMissionComplete()V

    .line 261
    sget-object v0, Lfr/testudo/spacecorsair/business/mission/engine/GatherElementMissionEngine$Phase;->REWARD:Lfr/testudo/spacecorsair/business/mission/engine/GatherElementMissionEngine$Phase;

    iput-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/GatherElementMissionEngine;->currentPhase:Lfr/testudo/spacecorsair/business/mission/engine/GatherElementMissionEngine$Phase;

    .line 262
    const/4 v0, 0x1

    iput-boolean v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/GatherElementMissionEngine;->completed:Z

    .line 263
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    const v1, 0x7f0702c1

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->getStringRessource(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-static {v0, v1}, Lfr/testudo/spacecorsair/display/hud/WelcomeMessage;->setText(Ljava/lang/String;Ljava/lang/String;)V

    .line 264
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/Game;->currentLevel:Lfr/testudo/spacecorsair/game/levels/Level;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/levels/Level;->name:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lfr/testudo/spacecorsair/business/mission/engine/GatherElementMissionEngine;->onZoneChanged(Ljava/lang/String;Ljava/lang/String;)V

    .line 266
    :cond_31
    return-void
.end method

.method private setPhaseGateAndStationTarget(Z)V
    .registers 4

    .prologue
    .line 274
    sget-object v0, Lfr/testudo/spacecorsair/business/mission/engine/GatherElementMissionEngine$1;->$SwitchMap$fr$testudo$spacecorsair$business$mission$engine$GatherElementMissionEngine$Phase:[I

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/mission/engine/GatherElementMissionEngine;->currentPhase:Lfr/testudo/spacecorsair/business/mission/engine/GatherElementMissionEngine$Phase;

    invoke-virtual {v1}, Lfr/testudo/spacecorsair/business/mission/engine/GatherElementMissionEngine$Phase;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_5e

    .line 310
    :cond_d
    :goto_d
    return-void

    .line 277
    :pswitch_e
    iget-boolean v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/GatherElementMissionEngine;->isPlayerInLootZone:Z

    if-nez v0, :cond_d

    .line 281
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/Game;->currentLevel:Lfr/testudo/spacecorsair/game/levels/Level;

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/mission/engine/GatherElementMissionEngine;->lootZoneId:Lfr/testudo/spacecorsair/game/levels/LevelId;

    invoke-static {v1}, Lfr/testudo/spacecorsair/business/world/PathFinder;->getPortalNameToGoTo(Lfr/testudo/spacecorsair/game/levels/LevelId;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/game/levels/Level;->findPortalByName(Ljava/lang/String;)Lfr/testudo/spacecorsair/business/world/Portal;

    move-result-object v0

    .line 282
    if-eqz v0, :cond_d

    .line 283
    iput-boolean p1, v0, Lfr/testudo/spacecorsair/business/world/Portal;->isMissionObjective:Z

    .line 284
    sget-object v1, Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;->ORANGE:Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;

    iput-object v1, v0, Lfr/testudo/spacecorsair/business/world/Portal;->missionObjectiveColor:Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;

    goto :goto_d

    .line 291
    :pswitch_2b
    iget-boolean v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/GatherElementMissionEngine;->isPlayerInRecompenceZone:Z

    if-eqz v0, :cond_44

    .line 293
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/Game;->currentLevel:Lfr/testudo/spacecorsair/game/levels/Level;

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/mission/engine/GatherElementMissionEngine;->stationRewardName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/game/levels/Level;->findStationByName(Ljava/lang/String;)Lfr/testudo/spacecorsair/business/world/station/Station;

    move-result-object v0

    .line 294
    if-eqz v0, :cond_d

    .line 295
    iput-boolean p1, v0, Lfr/testudo/spacecorsair/business/world/station/Station;->isMissionObjective:Z

    .line 296
    sget-object v1, Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;->ORANGE:Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;

    iput-object v1, v0, Lfr/testudo/spacecorsair/business/world/station/Station;->missionObjectiveColor:Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;

    goto :goto_d

    .line 303
    :cond_44
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/Game;->currentLevel:Lfr/testudo/spacecorsair/game/levels/Level;

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/mission/engine/GatherElementMissionEngine;->recompenceZoneId:Lfr/testudo/spacecorsair/game/levels/LevelId;

    invoke-static {v1}, Lfr/testudo/spacecorsair/business/world/PathFinder;->getPortalNameToGoTo(Lfr/testudo/spacecorsair/game/levels/LevelId;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/game/levels/Level;->findPortalByName(Ljava/lang/String;)Lfr/testudo/spacecorsair/business/world/Portal;

    move-result-object v0

    .line 304
    if-eqz v0, :cond_d

    .line 305
    iput-boolean p1, v0, Lfr/testudo/spacecorsair/business/world/Portal;->isMissionObjective:Z

    .line 306
    sget-object v1, Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;->ORANGE:Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;

    iput-object v1, v0, Lfr/testudo/spacecorsair/business/world/Portal;->missionObjectiveColor:Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;

    goto :goto_d

    .line 274
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
    .line 168
    sget-object v0, Lfr/testudo/spacecorsair/business/mission/engine/GatherElementMissionEngine$1;->$SwitchMap$fr$testudo$spacecorsair$business$mission$engine$GatherElementMissionEngine$Phase:[I

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/mission/engine/GatherElementMissionEngine;->currentPhase:Lfr/testudo/spacecorsair/business/mission/engine/GatherElementMissionEngine$Phase;

    invoke-virtual {v1}, Lfr/testudo/spacecorsair/business/mission/engine/GatherElementMissionEngine$Phase;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_28

    .line 185
    const-string v0, ""

    :goto_f
    return-object v0

    .line 171
    :pswitch_10
    iget-boolean v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/GatherElementMissionEngine;->isPlayerInLootZone:Z

    if-nez v0, :cond_18

    iget-boolean v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/GatherElementMissionEngine;->displayGotoLootSectorMessage:Z

    if-nez v0, :cond_1b

    .line 172
    :cond_18
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/GatherElementMissionEngine;->textLoot:Ljava/lang/String;

    goto :goto_f

    .line 174
    :cond_1b
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/GatherElementMissionEngine;->textGotoLootZone:Ljava/lang/String;

    goto :goto_f

    .line 178
    :pswitch_1e
    iget-boolean v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/GatherElementMissionEngine;->isPlayerInRecompenceZone:Z

    if-eqz v0, :cond_25

    .line 179
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/GatherElementMissionEngine;->textDockToStation:Ljava/lang/String;

    goto :goto_f

    .line 181
    :cond_25
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/GatherElementMissionEngine;->textGotoRecompZone:Ljava/lang/String;

    goto :goto_f

    .line 168
    :pswitch_data_28
    .packed-switch 0x1
        :pswitch_10
        :pswitch_1e
    .end packed-switch
.end method

.method public giveUp()V
    .registers 1

    .prologue
    .line 230
    return-void
.end method

.method public init()V
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 191
    iput-boolean v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/GatherElementMissionEngine;->completed:Z

    .line 192
    iput v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/GatherElementMissionEngine;->currentLootAmount:I

    .line 193
    sget-object v0, Lfr/testudo/spacecorsair/business/mission/engine/GatherElementMissionEngine$Phase;->LOOTING:Lfr/testudo/spacecorsair/business/mission/engine/GatherElementMissionEngine$Phase;

    iput-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/GatherElementMissionEngine;->currentPhase:Lfr/testudo/spacecorsair/business/mission/engine/GatherElementMissionEngine$Phase;

    .line 195
    iget-boolean v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/GatherElementMissionEngine;->acceptExisingItems:Z

    if-eqz v0, :cond_1b

    .line 196
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/Game;->playerCurrentShipInventory:Lfr/testudo/spacecorsair/business/player/Inventory;

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/mission/engine/GatherElementMissionEngine;->objectToLoot:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/business/player/Inventory;->getQuantityOf(Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)I

    move-result v0

    iput v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/GatherElementMissionEngine;->currentLootAmount:I

    .line 198
    :cond_1b
    invoke-direct {p0}, Lfr/testudo/spacecorsair/business/mission/engine/GatherElementMissionEngine;->onMissionItemLoot()V

    .line 199
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/Game;->currentLevel:Lfr/testudo/spacecorsair/game/levels/Level;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/levels/Level;->name:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lfr/testudo/spacecorsair/business/mission/engine/GatherElementMissionEngine;->onZoneChanged(Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    return-void
.end method

.method public initStrings()V
    .registers 4

    .prologue
    .line 250
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/GatherElementMissionEngine;->lootZoneId:Lfr/testudo/spacecorsair/game/levels/LevelId;

    if-eqz v0, :cond_2a

    .line 251
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

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/mission/engine/GatherElementMissionEngine;->lootZoneId:Lfr/testudo/spacecorsair/game/levels/LevelId;

    iget-object v1, v1, Lfr/testudo/spacecorsair/game/levels/LevelId;->levelName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/GatherElementMissionEngine;->textGotoLootZone:Ljava/lang/String;

    .line 253
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

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/mission/engine/GatherElementMissionEngine;->recompenceZoneId:Lfr/testudo/spacecorsair/game/levels/LevelId;

    iget-object v1, v1, Lfr/testudo/spacecorsair/game/levels/LevelId;->levelName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/GatherElementMissionEngine;->textGotoRecompZone:Ljava/lang/String;

    .line 254
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

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/mission/engine/GatherElementMissionEngine;->stationRewardName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/GatherElementMissionEngine;->textDockToStation:Ljava/lang/String;

    .line 255
    return-void
.end method

.method public isCompleted()Z
    .registers 3

    .prologue
    .line 245
    iget-boolean v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/GatherElementMissionEngine;->completed:Z

    if-eqz v0, :cond_16

    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/Game;->playerCurrentShipInventory:Lfr/testudo/spacecorsair/business/player/Inventory;

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/mission/engine/GatherElementMissionEngine;->objectToLoot:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/business/player/Inventory;->getQuantityOf(Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)I

    move-result v0

    iget v1, p0, Lfr/testudo/spacecorsair/business/mission/engine/GatherElementMissionEngine;->objectiveToLoot:I

    if-lt v0, v1, :cond_16

    const/4 v0, 0x1

    :goto_15
    return v0

    :cond_16
    const/4 v0, 0x0

    goto :goto_15
.end method

.method public onBeforePlayerDock()V
    .registers 1

    .prologue
    .line 144
    return-void
.end method

.method public onDoPhysic(J)V
    .registers 3

    .prologue
    .line 164
    return-void
.end method

.method public onElementDestroyed(Lfr/testudo/spacecorsair/business/Element;)V
    .registers 2

    .prologue
    .line 129
    return-void
.end method

.method public onElementDestroyedByPlayer(Lfr/testudo/spacecorsair/business/Element;)V
    .registers 2

    .prologue
    .line 134
    return-void
.end method

.method public onEveryMinute()V
    .registers 1

    .prologue
    .line 124
    return-void
.end method

.method public onEveryTenGameSec()V
    .registers 1

    .prologue
    .line 119
    return-void
.end method

.method public onPlayerBuyItem(Lfr/testudo/spacecorsair/business/loot/SpaceObject;)V
    .registers 2

    .prologue
    .line 154
    return-void
.end method

.method public onPlayerDeath()V
    .registers 1

    .prologue
    .line 139
    return-void
.end method

.method public onPlayerLoot(Lfr/testudo/spacecorsair/business/loot/LootElement;)Z
    .registers 4

    .prologue
    .line 107
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/GatherElementMissionEngine;->currentPhase:Lfr/testudo/spacecorsair/business/mission/engine/GatherElementMissionEngine$Phase;

    sget-object v1, Lfr/testudo/spacecorsair/business/mission/engine/GatherElementMissionEngine$Phase;->LOOTING:Lfr/testudo/spacecorsair/business/mission/engine/GatherElementMissionEngine$Phase;

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/business/mission/engine/GatherElementMissionEngine$Phase;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 108
    iget-object v0, p1, Lfr/testudo/spacecorsair/business/loot/LootElement;->spaceObjectType:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/mission/engine/GatherElementMissionEngine;->objectToLoot:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 109
    iget v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/GatherElementMissionEngine;->currentLootAmount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/GatherElementMissionEngine;->currentLootAmount:I

    .line 110
    invoke-direct {p0}, Lfr/testudo/spacecorsair/business/mission/engine/GatherElementMissionEngine;->onMissionItemLoot()V

    .line 113
    :cond_1d
    const/4 v0, 0x1

    return v0
.end method

.method public onPlayerSellItem(Lfr/testudo/spacecorsair/business/loot/SpaceObject;)V
    .registers 2

    .prologue
    .line 149
    return-void
.end method

.method public onPlayerUndock()V
    .registers 1

    .prologue
    .line 159
    return-void
.end method

.method public onZoneChanged(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .prologue
    .line 90
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/GatherElementMissionEngine;->lootZoneId:Lfr/testudo/spacecorsair/game/levels/LevelId;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/levels/LevelId;->levelName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/GatherElementMissionEngine;->isPlayerInLootZone:Z

    .line 91
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/GatherElementMissionEngine;->recompenceZoneId:Lfr/testudo/spacecorsair/game/levels/LevelId;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/levels/LevelId;->levelName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/GatherElementMissionEngine;->isPlayerInRecompenceZone:Z

    .line 92
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lfr/testudo/spacecorsair/business/mission/engine/GatherElementMissionEngine;->setPhaseGateAndStationTarget(Z)V

    .line 93
    iget-boolean v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/GatherElementMissionEngine;->isPlayerInLootZone:Z

    if-eqz v0, :cond_26

    iget-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/GatherElementMissionEngine;->currentPhase:Lfr/testudo/spacecorsair/business/mission/engine/GatherElementMissionEngine$Phase;

    sget-object v1, Lfr/testudo/spacecorsair/business/mission/engine/GatherElementMissionEngine$Phase;->LOOTING:Lfr/testudo/spacecorsair/business/mission/engine/GatherElementMissionEngine$Phase;

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/business/mission/engine/GatherElementMissionEngine$Phase;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_26

    .line 99
    :cond_26
    return-void
.end method

.method public restoreState()V
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 211
    iput-boolean v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/GatherElementMissionEngine;->completed:Z

    .line 212
    iput v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/GatherElementMissionEngine;->currentLootAmount:I

    .line 213
    sget-object v0, Lfr/testudo/spacecorsair/business/mission/engine/GatherElementMissionEngine$Phase;->LOOTING:Lfr/testudo/spacecorsair/business/mission/engine/GatherElementMissionEngine$Phase;

    iput-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/GatherElementMissionEngine;->currentPhase:Lfr/testudo/spacecorsair/business/mission/engine/GatherElementMissionEngine$Phase;

    .line 215
    iget-boolean v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/GatherElementMissionEngine;->acceptExisingItems:Z

    if-eqz v0, :cond_1b

    .line 216
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/Game;->playerCurrentShipInventory:Lfr/testudo/spacecorsair/business/player/Inventory;

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/mission/engine/GatherElementMissionEngine;->objectToLoot:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/business/player/Inventory;->getQuantityOf(Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)I

    move-result v0

    iput v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/GatherElementMissionEngine;->currentLootAmount:I

    .line 218
    :cond_1b
    invoke-direct {p0}, Lfr/testudo/spacecorsair/business/mission/engine/GatherElementMissionEngine;->onMissionItemLoot()V

    .line 221
    return-void
.end method

.method public saveState()V
    .registers 1

    .prologue
    .line 206
    return-void
.end method

.method public terminate()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 235
    iget-boolean v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/GatherElementMissionEngine;->completed:Z

    if-eqz v0, :cond_16

    .line 236
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/Game;->playerCurrentShipInventory:Lfr/testudo/spacecorsair/business/player/Inventory;

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/mission/engine/GatherElementMissionEngine;->objectToLoot:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    iget v2, p0, Lfr/testudo/spacecorsair/business/mission/engine/GatherElementMissionEngine;->objectiveToLoot:I

    invoke-static {v1, v2}, Lfr/testudo/spacecorsair/business/loot/SpaceObject;->of(Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;I)Lfr/testudo/spacecorsair/business/loot/SpaceObject;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/business/player/Inventory;->removeObject(Lfr/testudo/spacecorsair/business/loot/SpaceObject;)V

    .line 238
    :cond_16
    iput-boolean v3, p0, Lfr/testudo/spacecorsair/business/mission/engine/GatherElementMissionEngine;->completed:Z

    .line 239
    invoke-direct {p0, v3}, Lfr/testudo/spacecorsair/business/mission/engine/GatherElementMissionEngine;->setPhaseGateAndStationTarget(Z)V

    .line 240
    sget-object v0, Lfr/testudo/spacecorsair/business/mission/engine/GatherElementMissionEngine$Phase;->LOOTING:Lfr/testudo/spacecorsair/business/mission/engine/GatherElementMissionEngine$Phase;

    iput-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/GatherElementMissionEngine;->currentPhase:Lfr/testudo/spacecorsair/business/mission/engine/GatherElementMissionEngine$Phase;

    .line 241
    return-void
.end method

.method public updateLootText()V
    .registers 4

    .prologue
    .line 269
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget v2, p0, Lfr/testudo/spacecorsair/business/mission/engine/GatherElementMissionEngine;->lootTextRessourceId:I

    invoke-virtual {v1, v2}, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->getStringRessource(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lfr/testudo/spacecorsair/business/mission/engine/GatherElementMissionEngine;->currentLootAmount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " / "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lfr/testudo/spacecorsair/business/mission/engine/GatherElementMissionEngine;->objectiveToLoot:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/GatherElementMissionEngine;->textLoot:Ljava/lang/String;

    .line 270
    return-void
.end method
