.class public Lfr/testudo/spacecorsair/business/mission/engine/LootItemsMissionEngine;
.super Lfr/testudo/spacecorsair/business/mission/MissionListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lfr/testudo/spacecorsair/business/mission/engine/LootItemsMissionEngine$1;,
        Lfr/testudo/spacecorsair/business/mission/engine/LootItemsMissionEngine$Backup;,
        Lfr/testudo/spacecorsair/business/mission/engine/LootItemsMissionEngine$Phase;
    }
.end annotation


# instance fields
.field public acceptExisingItems:Z

.field private backup:Lfr/testudo/spacecorsair/business/mission/engine/LootItemsMissionEngine$Backup;

.field public completed:Z

.field public currentLootAmount:I

.field public currentPhase:Lfr/testudo/spacecorsair/business/mission/engine/LootItemsMissionEngine$Phase;

.field private isPlayerInLootZone:Z

.field private isPlayerInRecompenceZone:Z

.field public lootTextRessourceId:I

.field public lootZoneId:Lfr/testudo/spacecorsair/game/levels/LevelId;

.field public missionId:Ljava/lang/String;

.field public objectToLoot:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

.field public objectiveToLoot:I

.field public recompenceZoneId:Lfr/testudo/spacecorsair/game/levels/LevelId;

.field specificHandler:Lfr/testudo/spacecorsair/business/mission/engine/MissionSpecificConfHandler;

.field public stationRewardName:Ljava/lang/String;

.field private tempVector:Lfr/testudo/spacecorsair/engine/Vector2;

.field public textDockToStation:Ljava/lang/String;

.field public textGotoLootZone:Ljava/lang/String;

.field public textGotoRecompZone:Ljava/lang/String;

.field public textLoot:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lfr/testudo/spacecorsair/game/levels/LevelId;Lfr/testudo/spacecorsair/game/levels/LevelId;Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;ZIILjava/lang/String;Lfr/testudo/spacecorsair/business/mission/engine/MissionSpecificConfHandler;)V
    .registers 12

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 104
    invoke-direct {p0}, Lfr/testudo/spacecorsair/business/mission/MissionListener;-><init>()V

    .line 37
    iput v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/LootItemsMissionEngine;->currentLootAmount:I

    .line 38
    iput v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/LootItemsMissionEngine;->objectiveToLoot:I

    .line 43
    iput-boolean v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/LootItemsMissionEngine;->completed:Z

    .line 44
    const/4 v0, 0x1

    iput-boolean v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/LootItemsMissionEngine;->acceptExisingItems:Z

    .line 51
    iput-object v1, p0, Lfr/testudo/spacecorsair/business/mission/engine/LootItemsMissionEngine;->textGotoLootZone:Ljava/lang/String;

    .line 56
    iput-object v1, p0, Lfr/testudo/spacecorsair/business/mission/engine/LootItemsMissionEngine;->stationRewardName:Ljava/lang/String;

    .line 66
    new-instance v0, Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-direct {v0}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>()V

    iput-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/LootItemsMissionEngine;->tempVector:Lfr/testudo/spacecorsair/engine/Vector2;

    .line 68
    new-instance v0, Lfr/testudo/spacecorsair/business/mission/engine/LootItemsMissionEngine$Backup;

    invoke-direct {v0, p0}, Lfr/testudo/spacecorsair/business/mission/engine/LootItemsMissionEngine$Backup;-><init>(Lfr/testudo/spacecorsair/business/mission/engine/LootItemsMissionEngine;)V

    iput-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/LootItemsMissionEngine;->backup:Lfr/testudo/spacecorsair/business/mission/engine/LootItemsMissionEngine$Backup;

    .line 105
    iput-object p1, p0, Lfr/testudo/spacecorsair/business/mission/engine/LootItemsMissionEngine;->missionId:Ljava/lang/String;

    .line 106
    iput-object p2, p0, Lfr/testudo/spacecorsair/business/mission/engine/LootItemsMissionEngine;->lootZoneId:Lfr/testudo/spacecorsair/game/levels/LevelId;

    .line 107
    iput-object p3, p0, Lfr/testudo/spacecorsair/business/mission/engine/LootItemsMissionEngine;->recompenceZoneId:Lfr/testudo/spacecorsair/game/levels/LevelId;

    .line 108
    iput-object p4, p0, Lfr/testudo/spacecorsair/business/mission/engine/LootItemsMissionEngine;->objectToLoot:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    .line 109
    iput p6, p0, Lfr/testudo/spacecorsair/business/mission/engine/LootItemsMissionEngine;->lootTextRessourceId:I

    .line 110
    iput p7, p0, Lfr/testudo/spacecorsair/business/mission/engine/LootItemsMissionEngine;->objectiveToLoot:I

    .line 111
    iput-boolean p5, p0, Lfr/testudo/spacecorsair/business/mission/engine/LootItemsMissionEngine;->acceptExisingItems:Z

    .line 112
    iput-object p8, p0, Lfr/testudo/spacecorsair/business/mission/engine/LootItemsMissionEngine;->stationRewardName:Ljava/lang/String;

    .line 113
    iput-object p9, p0, Lfr/testudo/spacecorsair/business/mission/engine/LootItemsMissionEngine;->specificHandler:Lfr/testudo/spacecorsair/business/mission/engine/MissionSpecificConfHandler;

    .line 115
    invoke-virtual {p0}, Lfr/testudo/spacecorsair/business/mission/engine/LootItemsMissionEngine;->initStrings()V

    .line 116
    return-void
.end method

.method static synthetic access$002(Lfr/testudo/spacecorsair/business/mission/engine/LootItemsMissionEngine;Lfr/testudo/spacecorsair/business/mission/engine/LootItemsMissionEngine$Backup;)Lfr/testudo/spacecorsair/business/mission/engine/LootItemsMissionEngine$Backup;
    .registers 2

    .prologue
    .line 26
    iput-object p1, p0, Lfr/testudo/spacecorsair/business/mission/engine/LootItemsMissionEngine;->backup:Lfr/testudo/spacecorsair/business/mission/engine/LootItemsMissionEngine$Backup;

    return-object p1
.end method

.method private addLootElementsToZone()V
    .registers 4

    .prologue
    .line 135
    iget v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/LootItemsMissionEngine;->objectiveToLoot:I

    iget v1, p0, Lfr/testudo/spacecorsair/business/mission/engine/LootItemsMissionEngine;->currentLootAmount:I

    sub-int v1, v0, v1

    .line 136
    const/4 v0, 0x0

    :goto_7
    if-ge v0, v1, :cond_11

    .line 137
    iget-object v2, p0, Lfr/testudo/spacecorsair/business/mission/engine/LootItemsMissionEngine;->specificHandler:Lfr/testudo/spacecorsair/business/mission/engine/MissionSpecificConfHandler;

    invoke-interface {v2}, Lfr/testudo/spacecorsair/business/mission/engine/MissionSpecificConfHandler;->onAddObjectsRequested()V

    .line 136
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 140
    :cond_11
    return-void
.end method

.method private onMissionItemLoot()V
    .registers 3

    .prologue
    .line 291
    invoke-virtual {p0}, Lfr/testudo/spacecorsair/business/mission/engine/LootItemsMissionEngine;->updateLootText()V

    .line 292
    iget v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/LootItemsMissionEngine;->currentLootAmount:I

    iget v1, p0, Lfr/testudo/spacecorsair/business/mission/engine/LootItemsMissionEngine;->objectiveToLoot:I

    if-lt v0, v1, :cond_31

    .line 293
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->soundManager:Lfr/testudo/spacecorsair/engine/SoundManager;

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/engine/SoundManager;->playMissionComplete()V

    .line 294
    sget-object v0, Lfr/testudo/spacecorsair/business/mission/engine/LootItemsMissionEngine$Phase;->REWARD:Lfr/testudo/spacecorsair/business/mission/engine/LootItemsMissionEngine$Phase;

    iput-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/LootItemsMissionEngine;->currentPhase:Lfr/testudo/spacecorsair/business/mission/engine/LootItemsMissionEngine$Phase;

    .line 295
    const/4 v0, 0x1

    iput-boolean v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/LootItemsMissionEngine;->completed:Z

    .line 296
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    const v1, 0x7f0702c1

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->getStringRessource(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-static {v0, v1}, Lfr/testudo/spacecorsair/display/hud/WelcomeMessage;->setText(Ljava/lang/String;Ljava/lang/String;)V

    .line 297
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/Game;->currentLevel:Lfr/testudo/spacecorsair/game/levels/Level;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/levels/Level;->name:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lfr/testudo/spacecorsair/business/mission/engine/LootItemsMissionEngine;->onZoneChanged(Ljava/lang/String;Ljava/lang/String;)V

    .line 299
    :cond_31
    return-void
.end method

.method private setPhaseGateAndStationTarget(Z)V
    .registers 4

    .prologue
    .line 307
    sget-object v0, Lfr/testudo/spacecorsair/business/mission/engine/LootItemsMissionEngine$1;->$SwitchMap$fr$testudo$spacecorsair$business$mission$engine$LootItemsMissionEngine$Phase:[I

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/mission/engine/LootItemsMissionEngine;->currentPhase:Lfr/testudo/spacecorsair/business/mission/engine/LootItemsMissionEngine$Phase;

    invoke-virtual {v1}, Lfr/testudo/spacecorsair/business/mission/engine/LootItemsMissionEngine$Phase;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_5e

    .line 340
    :cond_d
    :goto_d
    return-void

    .line 309
    :pswitch_e
    iget-boolean v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/LootItemsMissionEngine;->isPlayerInLootZone:Z

    if-nez v0, :cond_d

    .line 313
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/Game;->currentLevel:Lfr/testudo/spacecorsair/game/levels/Level;

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/mission/engine/LootItemsMissionEngine;->lootZoneId:Lfr/testudo/spacecorsair/game/levels/LevelId;

    invoke-static {v1}, Lfr/testudo/spacecorsair/business/world/PathFinder;->getPortalNameToGoTo(Lfr/testudo/spacecorsair/game/levels/LevelId;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/game/levels/Level;->findPortalByName(Ljava/lang/String;)Lfr/testudo/spacecorsair/business/world/Portal;

    move-result-object v0

    .line 314
    if-eqz v0, :cond_d

    .line 315
    iput-boolean p1, v0, Lfr/testudo/spacecorsair/business/world/Portal;->isMissionObjective:Z

    .line 316
    sget-object v1, Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;->ORANGE:Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;

    iput-object v1, v0, Lfr/testudo/spacecorsair/business/world/Portal;->missionObjectiveColor:Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;

    goto :goto_d

    .line 321
    :pswitch_2b
    iget-boolean v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/LootItemsMissionEngine;->isPlayerInRecompenceZone:Z

    if-eqz v0, :cond_44

    .line 323
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/Game;->currentLevel:Lfr/testudo/spacecorsair/game/levels/Level;

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/mission/engine/LootItemsMissionEngine;->stationRewardName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/game/levels/Level;->findStationByName(Ljava/lang/String;)Lfr/testudo/spacecorsair/business/world/station/Station;

    move-result-object v0

    .line 324
    if-eqz v0, :cond_d

    .line 325
    iput-boolean p1, v0, Lfr/testudo/spacecorsair/business/world/station/Station;->isMissionObjective:Z

    .line 326
    sget-object v1, Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;->ORANGE:Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;

    iput-object v1, v0, Lfr/testudo/spacecorsair/business/world/station/Station;->missionObjectiveColor:Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;

    goto :goto_d

    .line 333
    :cond_44
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/Game;->currentLevel:Lfr/testudo/spacecorsair/game/levels/Level;

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/mission/engine/LootItemsMissionEngine;->recompenceZoneId:Lfr/testudo/spacecorsair/game/levels/LevelId;

    invoke-static {v1}, Lfr/testudo/spacecorsair/business/world/PathFinder;->getPortalNameToGoTo(Lfr/testudo/spacecorsair/game/levels/LevelId;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/game/levels/Level;->findPortalByName(Ljava/lang/String;)Lfr/testudo/spacecorsair/business/world/Portal;

    move-result-object v0

    .line 334
    if-eqz v0, :cond_d

    .line 335
    iput-boolean p1, v0, Lfr/testudo/spacecorsair/business/world/Portal;->isMissionObjective:Z

    .line 336
    sget-object v1, Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;->ORANGE:Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;

    iput-object v1, v0, Lfr/testudo/spacecorsair/business/world/Portal;->missionObjectiveColor:Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;

    goto :goto_d

    .line 307
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
    .line 206
    sget-object v0, Lfr/testudo/spacecorsair/business/mission/engine/LootItemsMissionEngine$1;->$SwitchMap$fr$testudo$spacecorsair$business$mission$engine$LootItemsMissionEngine$Phase:[I

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/mission/engine/LootItemsMissionEngine;->currentPhase:Lfr/testudo/spacecorsair/business/mission/engine/LootItemsMissionEngine$Phase;

    invoke-virtual {v1}, Lfr/testudo/spacecorsair/business/mission/engine/LootItemsMissionEngine$Phase;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_24

    .line 223
    const-string v0, ""

    :goto_f
    return-object v0

    .line 209
    :pswitch_10
    iget-boolean v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/LootItemsMissionEngine;->isPlayerInLootZone:Z

    if-eqz v0, :cond_17

    .line 210
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/LootItemsMissionEngine;->textLoot:Ljava/lang/String;

    goto :goto_f

    .line 212
    :cond_17
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/LootItemsMissionEngine;->textGotoLootZone:Ljava/lang/String;

    goto :goto_f

    .line 216
    :pswitch_1a
    iget-boolean v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/LootItemsMissionEngine;->isPlayerInRecompenceZone:Z

    if-eqz v0, :cond_21

    .line 217
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/LootItemsMissionEngine;->textDockToStation:Ljava/lang/String;

    goto :goto_f

    .line 219
    :cond_21
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/LootItemsMissionEngine;->textGotoRecompZone:Ljava/lang/String;

    goto :goto_f

    .line 206
    :pswitch_data_24
    .packed-switch 0x1
        :pswitch_10
        :pswitch_1a
    .end packed-switch
.end method

.method public giveUp()V
    .registers 1

    .prologue
    .line 266
    return-void
.end method

.method public init()V
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 229
    iput-boolean v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/LootItemsMissionEngine;->completed:Z

    .line 230
    iput v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/LootItemsMissionEngine;->currentLootAmount:I

    .line 231
    sget-object v0, Lfr/testudo/spacecorsair/business/mission/engine/LootItemsMissionEngine$Phase;->LOOTING:Lfr/testudo/spacecorsair/business/mission/engine/LootItemsMissionEngine$Phase;

    iput-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/LootItemsMissionEngine;->currentPhase:Lfr/testudo/spacecorsair/business/mission/engine/LootItemsMissionEngine$Phase;

    .line 233
    iget-boolean v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/LootItemsMissionEngine;->acceptExisingItems:Z

    if-eqz v0, :cond_1b

    .line 234
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/Game;->playerCurrentShipInventory:Lfr/testudo/spacecorsair/business/player/Inventory;

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/mission/engine/LootItemsMissionEngine;->objectToLoot:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/business/player/Inventory;->getQuantityOf(Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)I

    move-result v0

    iput v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/LootItemsMissionEngine;->currentLootAmount:I

    .line 236
    :cond_1b
    invoke-direct {p0}, Lfr/testudo/spacecorsair/business/mission/engine/LootItemsMissionEngine;->onMissionItemLoot()V

    .line 237
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/Game;->currentLevel:Lfr/testudo/spacecorsair/game/levels/Level;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/levels/Level;->name:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lfr/testudo/spacecorsair/business/mission/engine/LootItemsMissionEngine;->onZoneChanged(Ljava/lang/String;Ljava/lang/String;)V

    .line 238
    return-void
.end method

.method public initStrings()V
    .registers 4

    .prologue
    .line 283
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/LootItemsMissionEngine;->lootZoneId:Lfr/testudo/spacecorsair/game/levels/LevelId;

    if-eqz v0, :cond_2a

    .line 284
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

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/mission/engine/LootItemsMissionEngine;->lootZoneId:Lfr/testudo/spacecorsair/game/levels/LevelId;

    iget-object v1, v1, Lfr/testudo/spacecorsair/game/levels/LevelId;->levelName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/LootItemsMissionEngine;->textGotoLootZone:Ljava/lang/String;

    .line 286
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

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/mission/engine/LootItemsMissionEngine;->recompenceZoneId:Lfr/testudo/spacecorsair/game/levels/LevelId;

    iget-object v1, v1, Lfr/testudo/spacecorsair/game/levels/LevelId;->levelName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/LootItemsMissionEngine;->textGotoRecompZone:Ljava/lang/String;

    .line 287
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

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/mission/engine/LootItemsMissionEngine;->stationRewardName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/LootItemsMissionEngine;->textDockToStation:Ljava/lang/String;

    .line 288
    return-void
.end method

.method public isCompleted()Z
    .registers 2

    .prologue
    .line 278
    iget-boolean v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/LootItemsMissionEngine;->completed:Z

    return v0
.end method

.method public onBeforePlayerDock()V
    .registers 1

    .prologue
    .line 182
    return-void
.end method

.method public onDoPhysic(J)V
    .registers 3

    .prologue
    .line 202
    return-void
.end method

.method public onElementDestroyed(Lfr/testudo/spacecorsair/business/Element;)V
    .registers 2

    .prologue
    .line 167
    return-void
.end method

.method public onElementDestroyedByPlayer(Lfr/testudo/spacecorsair/business/Element;)V
    .registers 2

    .prologue
    .line 172
    return-void
.end method

.method public onEveryMinute()V
    .registers 1

    .prologue
    .line 162
    return-void
.end method

.method public onEveryTenGameSec()V
    .registers 1

    .prologue
    .line 157
    return-void
.end method

.method public onPlayerBuyItem(Lfr/testudo/spacecorsair/business/loot/SpaceObject;)V
    .registers 2

    .prologue
    .line 192
    return-void
.end method

.method public onPlayerDeath()V
    .registers 1

    .prologue
    .line 177
    return-void
.end method

.method public onPlayerLoot(Lfr/testudo/spacecorsair/business/loot/LootElement;)Z
    .registers 4

    .prologue
    .line 145
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/LootItemsMissionEngine;->currentPhase:Lfr/testudo/spacecorsair/business/mission/engine/LootItemsMissionEngine$Phase;

    sget-object v1, Lfr/testudo/spacecorsair/business/mission/engine/LootItemsMissionEngine$Phase;->LOOTING:Lfr/testudo/spacecorsair/business/mission/engine/LootItemsMissionEngine$Phase;

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/business/mission/engine/LootItemsMissionEngine$Phase;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 146
    iget-object v0, p1, Lfr/testudo/spacecorsair/business/loot/LootElement;->spaceObjectType:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/mission/engine/LootItemsMissionEngine;->objectToLoot:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 147
    iget v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/LootItemsMissionEngine;->currentLootAmount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/LootItemsMissionEngine;->currentLootAmount:I

    .line 148
    invoke-direct {p0}, Lfr/testudo/spacecorsair/business/mission/engine/LootItemsMissionEngine;->onMissionItemLoot()V

    .line 151
    :cond_1d
    const/4 v0, 0x1

    return v0
.end method

.method public onPlayerSellItem(Lfr/testudo/spacecorsair/business/loot/SpaceObject;)V
    .registers 2

    .prologue
    .line 187
    return-void
.end method

.method public onPlayerUndock()V
    .registers 1

    .prologue
    .line 197
    return-void
.end method

.method public onZoneChanged(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .prologue
    .line 121
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/LootItemsMissionEngine;->lootZoneId:Lfr/testudo/spacecorsair/game/levels/LevelId;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/levels/LevelId;->levelName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/LootItemsMissionEngine;->isPlayerInLootZone:Z

    .line 122
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/LootItemsMissionEngine;->recompenceZoneId:Lfr/testudo/spacecorsair/game/levels/LevelId;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/levels/LevelId;->levelName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/LootItemsMissionEngine;->isPlayerInRecompenceZone:Z

    .line 123
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lfr/testudo/spacecorsair/business/mission/engine/LootItemsMissionEngine;->setPhaseGateAndStationTarget(Z)V

    .line 124
    iget-boolean v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/LootItemsMissionEngine;->isPlayerInLootZone:Z

    if-eqz v0, :cond_29

    iget-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/LootItemsMissionEngine;->currentPhase:Lfr/testudo/spacecorsair/business/mission/engine/LootItemsMissionEngine$Phase;

    sget-object v1, Lfr/testudo/spacecorsair/business/mission/engine/LootItemsMissionEngine$Phase;->LOOTING:Lfr/testudo/spacecorsair/business/mission/engine/LootItemsMissionEngine$Phase;

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/business/mission/engine/LootItemsMissionEngine$Phase;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_29

    .line 125
    invoke-direct {p0}, Lfr/testudo/spacecorsair/business/mission/engine/LootItemsMissionEngine;->addLootElementsToZone()V

    .line 130
    :cond_29
    return-void
.end method

.method public restoreState()V
    .registers 4

    .prologue
    .line 243
    invoke-static {}, Lfr/testudo/spacecorsair/storage/MissionStorage;->getInstance()Lfr/testudo/spacecorsair/storage/MissionStorage;

    move-result-object v0

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/mission/engine/LootItemsMissionEngine;->missionId:Ljava/lang/String;

    const-class v2, Lfr/testudo/spacecorsair/business/mission/engine/LootItemsMissionEngine$Backup;

    invoke-virtual {v0, v1, v2}, Lfr/testudo/spacecorsair/storage/MissionStorage;->loadFromFile(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfr/testudo/spacecorsair/business/mission/engine/LootItemsMissionEngine$Backup;

    .line 244
    if-eqz v0, :cond_1b

    .line 245
    iput-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/LootItemsMissionEngine;->backup:Lfr/testudo/spacecorsair/business/mission/engine/LootItemsMissionEngine$Backup;

    .line 246
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/LootItemsMissionEngine;->backup:Lfr/testudo/spacecorsair/business/mission/engine/LootItemsMissionEngine$Backup;

    invoke-virtual {v0, p0}, Lfr/testudo/spacecorsair/business/mission/engine/LootItemsMissionEngine$Backup;->restore(Lfr/testudo/spacecorsair/business/mission/engine/LootItemsMissionEngine;)V

    .line 247
    invoke-direct {p0}, Lfr/testudo/spacecorsair/business/mission/engine/LootItemsMissionEngine;->onMissionItemLoot()V

    .line 254
    :goto_1a
    return-void

    .line 250
    :cond_1b
    invoke-virtual {p0}, Lfr/testudo/spacecorsair/business/mission/engine/LootItemsMissionEngine;->init()V

    goto :goto_1a
.end method

.method public saveState()V
    .registers 4

    .prologue
    .line 258
    invoke-static {}, Lfr/testudo/spacecorsair/storage/MissionStorage;->getInstance()Lfr/testudo/spacecorsair/storage/MissionStorage;

    move-result-object v0

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/mission/engine/LootItemsMissionEngine;->missionId:Ljava/lang/String;

    iget-object v2, p0, Lfr/testudo/spacecorsair/business/mission/engine/LootItemsMissionEngine;->backup:Lfr/testudo/spacecorsair/business/mission/engine/LootItemsMissionEngine$Backup;

    invoke-virtual {v0, v1, v2}, Lfr/testudo/spacecorsair/storage/MissionStorage;->saveInFile(Ljava/lang/String;Ljava/lang/Object;)V

    .line 259
    return-void
.end method

.method public terminate()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 270
    iput-boolean v2, p0, Lfr/testudo/spacecorsair/business/mission/engine/LootItemsMissionEngine;->completed:Z

    .line 271
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/Game;->playerCurrentShipInventory:Lfr/testudo/spacecorsair/business/player/Inventory;

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/mission/engine/LootItemsMissionEngine;->objectToLoot:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/business/player/Inventory;->removeAllOf(Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)V

    .line 272
    invoke-direct {p0, v2}, Lfr/testudo/spacecorsair/business/mission/engine/LootItemsMissionEngine;->setPhaseGateAndStationTarget(Z)V

    .line 273
    sget-object v0, Lfr/testudo/spacecorsair/business/mission/engine/LootItemsMissionEngine$Phase;->LOOTING:Lfr/testudo/spacecorsair/business/mission/engine/LootItemsMissionEngine$Phase;

    iput-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/LootItemsMissionEngine;->currentPhase:Lfr/testudo/spacecorsair/business/mission/engine/LootItemsMissionEngine$Phase;

    .line 274
    return-void
.end method

.method public updateLootText()V
    .registers 4

    .prologue
    .line 302
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget v2, p0, Lfr/testudo/spacecorsair/business/mission/engine/LootItemsMissionEngine;->lootTextRessourceId:I

    invoke-virtual {v1, v2}, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->getStringRessource(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lfr/testudo/spacecorsair/business/mission/engine/LootItemsMissionEngine;->currentLootAmount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " / "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lfr/testudo/spacecorsair/business/mission/engine/LootItemsMissionEngine;->objectiveToLoot:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/LootItemsMissionEngine;->textLoot:Ljava/lang/String;

    .line 303
    return-void
.end method
