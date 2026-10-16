.class public Lfr/testudo/spacecorsair/business/mission/engine/ScanCivilEngine;
.super Lfr/testudo/spacecorsair/business/mission/MissionListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lfr/testudo/spacecorsair/business/mission/engine/ScanCivilEngine$2;,
        Lfr/testudo/spacecorsair/business/mission/engine/ScanCivilEngine$Phase;
    }
.end annotation


# instance fields
.field public agressiveProbability:D

.field public civilScanListener:Lfr/testudo/spacecorsair/business/world/civil/ScanListener;

.field public civilScanObjective:I

.field public completed:Z

.field public currentCivilScanned:I

.field public currentPhase:Lfr/testudo/spacecorsair/business/mission/engine/ScanCivilEngine$Phase;

.field private isPlayerInRecompenceZone:Z

.field private isPlayerInScanZone:Z

.field public missionId:Ljava/lang/String;

.field public recompenceZoneId:Lfr/testudo/spacecorsair/game/levels/LevelId;

.field public scanConf:Lfr/testudo/spacecorsair/business/world/civil/ScanConfig;

.field public scanLength:I

.field public scanZoneId:Lfr/testudo/spacecorsair/game/levels/LevelId;

.field public scannedKo:Ljava/lang/String;

.field public scannedKoId:I

.field public scannedOk:Ljava/lang/String;

.field public scannedOkId:I

.field public stationRewardName:Ljava/lang/String;

.field public textDockToStation:Ljava/lang/String;

.field public textGotoRecompZone:Ljava/lang/String;

.field public textGotoScanZone:Ljava/lang/String;

.field public textScan:Ljava/lang/String;

.field public textScanId:I

.field public textScanRemaining:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lfr/testudo/spacecorsair/game/levels/LevelId;Lfr/testudo/spacecorsair/game/levels/LevelId;Ljava/lang/String;IIIIID)V
    .registers 14

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 81
    invoke-direct {p0}, Lfr/testudo/spacecorsair/business/mission/MissionListener;-><init>()V

    .line 44
    iput-boolean v1, p0, Lfr/testudo/spacecorsair/business/mission/engine/ScanCivilEngine;->completed:Z

    .line 46
    iput v1, p0, Lfr/testudo/spacecorsair/business/mission/engine/ScanCivilEngine;->currentCivilScanned:I

    .line 47
    iput v1, p0, Lfr/testudo/spacecorsair/business/mission/engine/ScanCivilEngine;->civilScanObjective:I

    .line 48
    iput v1, p0, Lfr/testudo/spacecorsair/business/mission/engine/ScanCivilEngine;->scanLength:I

    .line 50
    iput-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/ScanCivilEngine;->scanConf:Lfr/testudo/spacecorsair/business/world/civil/ScanConfig;

    .line 59
    iput-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/ScanCivilEngine;->textGotoScanZone:Ljava/lang/String;

    .line 62
    iput-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/ScanCivilEngine;->stationRewardName:Ljava/lang/String;

    .line 63
    iput-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/ScanCivilEngine;->textScan:Ljava/lang/String;

    .line 64
    iput-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/ScanCivilEngine;->textScanRemaining:Ljava/lang/String;

    .line 118
    new-instance v0, Lfr/testudo/spacecorsair/business/mission/engine/ScanCivilEngine$1;

    invoke-direct {v0, p0}, Lfr/testudo/spacecorsair/business/mission/engine/ScanCivilEngine$1;-><init>(Lfr/testudo/spacecorsair/business/mission/engine/ScanCivilEngine;)V

    iput-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/ScanCivilEngine;->civilScanListener:Lfr/testudo/spacecorsair/business/world/civil/ScanListener;

    .line 83
    iput-object p1, p0, Lfr/testudo/spacecorsair/business/mission/engine/ScanCivilEngine;->missionId:Ljava/lang/String;

    .line 84
    iput-object p2, p0, Lfr/testudo/spacecorsair/business/mission/engine/ScanCivilEngine;->scanZoneId:Lfr/testudo/spacecorsair/game/levels/LevelId;

    .line 85
    iput-object p3, p0, Lfr/testudo/spacecorsair/business/mission/engine/ScanCivilEngine;->recompenceZoneId:Lfr/testudo/spacecorsair/game/levels/LevelId;

    .line 86
    iput-object p4, p0, Lfr/testudo/spacecorsair/business/mission/engine/ScanCivilEngine;->stationRewardName:Ljava/lang/String;

    .line 87
    iput p5, p0, Lfr/testudo/spacecorsair/business/mission/engine/ScanCivilEngine;->textScanId:I

    .line 88
    iput v1, p0, Lfr/testudo/spacecorsair/business/mission/engine/ScanCivilEngine;->currentCivilScanned:I

    .line 89
    iput p8, p0, Lfr/testudo/spacecorsair/business/mission/engine/ScanCivilEngine;->civilScanObjective:I

    .line 90
    iput p9, p0, Lfr/testudo/spacecorsair/business/mission/engine/ScanCivilEngine;->scanLength:I

    .line 91
    iput-wide p10, p0, Lfr/testudo/spacecorsair/business/mission/engine/ScanCivilEngine;->agressiveProbability:D

    .line 92
    iput p6, p0, Lfr/testudo/spacecorsair/business/mission/engine/ScanCivilEngine;->scannedOkId:I

    .line 93
    iput p7, p0, Lfr/testudo/spacecorsair/business/mission/engine/ScanCivilEngine;->scannedKoId:I

    .line 94
    new-instance v0, Lfr/testudo/spacecorsair/business/world/civil/ScanConfig;

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/mission/engine/ScanCivilEngine;->civilScanListener:Lfr/testudo/spacecorsair/business/world/civil/ScanListener;

    invoke-direct {v0, p9, v1}, Lfr/testudo/spacecorsair/business/world/civil/ScanConfig;-><init>(ILfr/testudo/spacecorsair/business/world/civil/ScanListener;)V

    iput-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/ScanCivilEngine;->scanConf:Lfr/testudo/spacecorsair/business/world/civil/ScanConfig;

    .line 96
    invoke-virtual {p0}, Lfr/testudo/spacecorsair/business/mission/engine/ScanCivilEngine;->initStrings()V

    .line 97
    return-void
.end method

.method private setPhaseGateAndStationTarget(Z)V
    .registers 4

    .prologue
    .line 317
    sget-object v0, Lfr/testudo/spacecorsair/business/mission/engine/ScanCivilEngine$2;->$SwitchMap$fr$testudo$spacecorsair$business$mission$engine$ScanCivilEngine$Phase:[I

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/mission/engine/ScanCivilEngine;->currentPhase:Lfr/testudo/spacecorsair/business/mission/engine/ScanCivilEngine$Phase;

    invoke-virtual {v1}, Lfr/testudo/spacecorsair/business/mission/engine/ScanCivilEngine$Phase;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_5e

    .line 350
    :cond_d
    :goto_d
    return-void

    .line 319
    :pswitch_e
    iget-boolean v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/ScanCivilEngine;->isPlayerInScanZone:Z

    if-nez v0, :cond_d

    .line 323
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/Game;->currentLevel:Lfr/testudo/spacecorsair/game/levels/Level;

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/mission/engine/ScanCivilEngine;->scanZoneId:Lfr/testudo/spacecorsair/game/levels/LevelId;

    invoke-static {v1}, Lfr/testudo/spacecorsair/business/world/PathFinder;->getPortalNameToGoTo(Lfr/testudo/spacecorsair/game/levels/LevelId;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/game/levels/Level;->findPortalByName(Ljava/lang/String;)Lfr/testudo/spacecorsair/business/world/Portal;

    move-result-object v0

    .line 324
    if-eqz v0, :cond_d

    .line 325
    iput-boolean p1, v0, Lfr/testudo/spacecorsair/business/world/Portal;->isMissionObjective:Z

    .line 326
    sget-object v1, Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;->ORANGE:Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;

    iput-object v1, v0, Lfr/testudo/spacecorsair/business/world/Portal;->missionObjectiveColor:Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;

    goto :goto_d

    .line 331
    :pswitch_2b
    iget-boolean v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/ScanCivilEngine;->isPlayerInRecompenceZone:Z

    if-eqz v0, :cond_44

    .line 333
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/Game;->currentLevel:Lfr/testudo/spacecorsair/game/levels/Level;

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/mission/engine/ScanCivilEngine;->stationRewardName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/game/levels/Level;->findStationByName(Ljava/lang/String;)Lfr/testudo/spacecorsair/business/world/station/Station;

    move-result-object v0

    .line 334
    if-eqz v0, :cond_d

    .line 335
    iput-boolean p1, v0, Lfr/testudo/spacecorsair/business/world/station/Station;->isMissionObjective:Z

    .line 336
    sget-object v1, Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;->ORANGE:Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;

    iput-object v1, v0, Lfr/testudo/spacecorsair/business/world/station/Station;->missionObjectiveColor:Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;

    goto :goto_d

    .line 343
    :cond_44
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/Game;->currentLevel:Lfr/testudo/spacecorsair/game/levels/Level;

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/mission/engine/ScanCivilEngine;->recompenceZoneId:Lfr/testudo/spacecorsair/game/levels/LevelId;

    invoke-static {v1}, Lfr/testudo/spacecorsair/business/world/PathFinder;->getPortalNameToGoTo(Lfr/testudo/spacecorsair/game/levels/LevelId;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/game/levels/Level;->findPortalByName(Ljava/lang/String;)Lfr/testudo/spacecorsair/business/world/Portal;

    move-result-object v0

    .line 344
    if-eqz v0, :cond_d

    .line 345
    iput-boolean p1, v0, Lfr/testudo/spacecorsair/business/world/Portal;->isMissionObjective:Z

    .line 346
    sget-object v1, Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;->ORANGE:Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;

    iput-object v1, v0, Lfr/testudo/spacecorsair/business/world/Portal;->missionObjectiveColor:Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;

    goto :goto_d

    .line 317
    nop

    :pswitch_data_5e
    .packed-switch 0x1
        :pswitch_e
        :pswitch_2b
    .end packed-switch
.end method


# virtual methods
.method public applyScanConfigToCivilZone(Z)V
    .registers 6

    .prologue
    .line 153
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/Game;->currentLevel:Lfr/testudo/spacecorsair/game/levels/Level;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/levels/Level;->elements:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    .line 155
    const/4 v0, 0x0

    move v1, v0

    :goto_e
    if-ge v1, v2, :cond_35

    .line 157
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/Game;->currentLevel:Lfr/testudo/spacecorsair/game/levels/Level;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/levels/Level;->elements:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfr/testudo/spacecorsair/business/Element;

    .line 158
    instance-of v3, v0, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;

    if-eqz v3, :cond_2b

    .line 159
    if-eqz p1, :cond_2f

    .line 160
    check-cast v0, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;

    iget-object v3, p0, Lfr/testudo/spacecorsair/business/mission/engine/ScanCivilEngine;->scanConf:Lfr/testudo/spacecorsair/business/world/civil/ScanConfig;

    invoke-virtual {v0, v3}, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->setScanable(Lfr/testudo/spacecorsair/business/world/civil/ScanConfig;)V

    .line 155
    :cond_2b
    :goto_2b
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_e

    .line 164
    :cond_2f
    check-cast v0, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->setNotScannable()V

    goto :goto_2b

    .line 169
    :cond_35
    return-void
.end method

.method public getCurrentInstruction()Ljava/lang/String;
    .registers 3

    .prologue
    .line 250
    sget-object v0, Lfr/testudo/spacecorsair/business/mission/engine/ScanCivilEngine$2;->$SwitchMap$fr$testudo$spacecorsair$business$mission$engine$ScanCivilEngine$Phase:[I

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/mission/engine/ScanCivilEngine;->currentPhase:Lfr/testudo/spacecorsair/business/mission/engine/ScanCivilEngine$Phase;

    invoke-virtual {v1}, Lfr/testudo/spacecorsair/business/mission/engine/ScanCivilEngine$Phase;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_24

    .line 267
    const-string v0, ""

    :goto_f
    return-object v0

    .line 253
    :pswitch_10
    iget-boolean v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/ScanCivilEngine;->isPlayerInScanZone:Z

    if-eqz v0, :cond_17

    .line 254
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/ScanCivilEngine;->textScanRemaining:Ljava/lang/String;

    goto :goto_f

    .line 256
    :cond_17
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/ScanCivilEngine;->textGotoScanZone:Ljava/lang/String;

    goto :goto_f

    .line 260
    :pswitch_1a
    iget-boolean v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/ScanCivilEngine;->isPlayerInRecompenceZone:Z

    if-eqz v0, :cond_21

    .line 261
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/ScanCivilEngine;->textDockToStation:Ljava/lang/String;

    goto :goto_f

    .line 263
    :cond_21
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/ScanCivilEngine;->textGotoRecompZone:Ljava/lang/String;

    goto :goto_f

    .line 250
    :pswitch_data_24
    .packed-switch 0x1
        :pswitch_10
        :pswitch_1a
    .end packed-switch
.end method

.method public giveUp()V
    .registers 1

    .prologue
    .line 297
    invoke-virtual {p0}, Lfr/testudo/spacecorsair/business/mission/engine/ScanCivilEngine;->terminate()V

    .line 298
    return-void
.end method

.method public init()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 273
    iput-boolean v2, p0, Lfr/testudo/spacecorsair/business/mission/engine/ScanCivilEngine;->completed:Z

    .line 274
    sget-object v0, Lfr/testudo/spacecorsair/business/mission/engine/ScanCivilEngine$Phase;->SCAN:Lfr/testudo/spacecorsair/business/mission/engine/ScanCivilEngine$Phase;

    iput-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/ScanCivilEngine;->currentPhase:Lfr/testudo/spacecorsair/business/mission/engine/ScanCivilEngine$Phase;

    .line 275
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/Game;->currentLevel:Lfr/testudo/spacecorsair/game/levels/Level;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/levels/Level;->name:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lfr/testudo/spacecorsair/business/mission/engine/ScanCivilEngine;->onZoneChanged(Ljava/lang/String;Ljava/lang/String;)V

    .line 276
    iput v2, p0, Lfr/testudo/spacecorsair/business/mission/engine/ScanCivilEngine;->currentCivilScanned:I

    .line 277
    invoke-virtual {p0}, Lfr/testudo/spacecorsair/business/mission/engine/ScanCivilEngine;->updateScanText()V

    .line 278
    return-void
.end method

.method public initStrings()V
    .registers 4

    .prologue
    .line 101
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/ScanCivilEngine;->scanZoneId:Lfr/testudo/spacecorsair/game/levels/LevelId;

    if-eqz v0, :cond_2a

    .line 102
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

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/mission/engine/ScanCivilEngine;->scanZoneId:Lfr/testudo/spacecorsair/game/levels/LevelId;

    iget-object v1, v1, Lfr/testudo/spacecorsair/game/levels/LevelId;->levelName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/ScanCivilEngine;->textGotoScanZone:Ljava/lang/String;

    .line 104
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

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/mission/engine/ScanCivilEngine;->recompenceZoneId:Lfr/testudo/spacecorsair/game/levels/LevelId;

    iget-object v1, v1, Lfr/testudo/spacecorsair/game/levels/LevelId;->levelName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/ScanCivilEngine;->textGotoRecompZone:Ljava/lang/String;

    .line 105
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

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/mission/engine/ScanCivilEngine;->stationRewardName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/ScanCivilEngine;->textDockToStation:Ljava/lang/String;

    .line 106
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget v1, p0, Lfr/testudo/spacecorsair/business/mission/engine/ScanCivilEngine;->textScanId:I

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->getStringRessource(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/ScanCivilEngine;->textScan:Ljava/lang/String;

    .line 107
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget v1, p0, Lfr/testudo/spacecorsair/business/mission/engine/ScanCivilEngine;->scannedOkId:I

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->getStringRessource(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/ScanCivilEngine;->scannedOk:Ljava/lang/String;

    .line 108
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget v1, p0, Lfr/testudo/spacecorsair/business/mission/engine/ScanCivilEngine;->scannedKoId:I

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->getStringRessource(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/ScanCivilEngine;->scannedKo:Ljava/lang/String;

    .line 109
    return-void
.end method

.method public isCompleted()Z
    .registers 2

    .prologue
    .line 312
    iget-boolean v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/ScanCivilEngine;->completed:Z

    return v0
.end method

.method public onBeforePlayerDock()V
    .registers 1

    .prologue
    .line 226
    return-void
.end method

.method public onDoPhysic(J)V
    .registers 3

    .prologue
    .line 246
    return-void
.end method

.method public onElementDestroyed(Lfr/testudo/spacecorsair/business/Element;)V
    .registers 2

    .prologue
    .line 211
    return-void
.end method

.method public onElementDestroyedByPlayer(Lfr/testudo/spacecorsair/business/Element;)V
    .registers 2

    .prologue
    .line 216
    return-void
.end method

.method public onEveryMinute()V
    .registers 1

    .prologue
    .line 206
    return-void
.end method

.method public onEveryTenGameSec()V
    .registers 1

    .prologue
    .line 201
    return-void
.end method

.method public onObjectiveReach()V
    .registers 4

    .prologue
    const/4 v2, 0x1

    .line 172
    iput-boolean v2, p0, Lfr/testudo/spacecorsair/business/mission/engine/ScanCivilEngine;->completed:Z

    .line 173
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    const v1, 0x7f0702c1

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->getStringRessource(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-static {v0, v1}, Lfr/testudo/spacecorsair/display/hud/WelcomeMessage;->setText(Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    sget-object v0, Lfr/testudo/spacecorsair/business/mission/engine/ScanCivilEngine$Phase;->REWARD:Lfr/testudo/spacecorsair/business/mission/engine/ScanCivilEngine$Phase;

    iput-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/ScanCivilEngine;->currentPhase:Lfr/testudo/spacecorsair/business/mission/engine/ScanCivilEngine$Phase;

    .line 175
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->soundManager:Lfr/testudo/spacecorsair/engine/SoundManager;

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/engine/SoundManager;->playMissionComplete()V

    .line 176
    invoke-direct {p0, v2}, Lfr/testudo/spacecorsair/business/mission/engine/ScanCivilEngine;->setPhaseGateAndStationTarget(Z)V

    .line 177
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lfr/testudo/spacecorsair/business/mission/engine/ScanCivilEngine;->applyScanConfigToCivilZone(Z)V

    .line 178
    return-void
.end method

.method public onPlayerBuyItem(Lfr/testudo/spacecorsair/business/loot/SpaceObject;)V
    .registers 2

    .prologue
    .line 236
    return-void
.end method

.method public onPlayerDeath()V
    .registers 1

    .prologue
    .line 221
    return-void
.end method

.method public onPlayerLoot(Lfr/testudo/spacecorsair/business/loot/LootElement;)Z
    .registers 3

    .prologue
    .line 195
    const/4 v0, 0x1

    return v0
.end method

.method public onPlayerSellItem(Lfr/testudo/spacecorsair/business/loot/SpaceObject;)V
    .registers 2

    .prologue
    .line 231
    return-void
.end method

.method public onPlayerUndock()V
    .registers 1

    .prologue
    .line 241
    return-void
.end method

.method public onZoneChanged(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    .prologue
    const/4 v2, 0x1

    .line 183
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/ScanCivilEngine;->scanZoneId:Lfr/testudo/spacecorsair/game/levels/LevelId;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/levels/LevelId;->levelName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/ScanCivilEngine;->isPlayerInScanZone:Z

    .line 184
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/ScanCivilEngine;->recompenceZoneId:Lfr/testudo/spacecorsair/game/levels/LevelId;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/levels/LevelId;->levelName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/ScanCivilEngine;->isPlayerInRecompenceZone:Z

    .line 185
    invoke-direct {p0, v2}, Lfr/testudo/spacecorsair/business/mission/engine/ScanCivilEngine;->setPhaseGateAndStationTarget(Z)V

    .line 188
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/ScanCivilEngine;->currentPhase:Lfr/testudo/spacecorsair/business/mission/engine/ScanCivilEngine$Phase;

    sget-object v1, Lfr/testudo/spacecorsair/business/mission/engine/ScanCivilEngine$Phase;->SCAN:Lfr/testudo/spacecorsair/business/mission/engine/ScanCivilEngine$Phase;

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/business/mission/engine/ScanCivilEngine$Phase;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_29

    iget-boolean v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/ScanCivilEngine;->isPlayerInScanZone:Z

    if-eqz v0, :cond_29

    .line 189
    invoke-virtual {p0, v2}, Lfr/testudo/spacecorsair/business/mission/engine/ScanCivilEngine;->applyScanConfigToCivilZone(Z)V

    .line 191
    :cond_29
    return-void
.end method

.method public restoreState()V
    .registers 2

    .prologue
    .line 282
    invoke-virtual {p0}, Lfr/testudo/spacecorsair/business/mission/engine/ScanCivilEngine;->updateScanText()V

    .line 283
    const/4 v0, 0x0

    iput-boolean v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/ScanCivilEngine;->completed:Z

    .line 284
    sget-object v0, Lfr/testudo/spacecorsair/business/mission/engine/ScanCivilEngine$Phase;->SCAN:Lfr/testudo/spacecorsair/business/mission/engine/ScanCivilEngine$Phase;

    iput-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/ScanCivilEngine;->currentPhase:Lfr/testudo/spacecorsair/business/mission/engine/ScanCivilEngine$Phase;

    .line 287
    return-void
.end method

.method public saveState()V
    .registers 1

    .prologue
    .line 292
    return-void
.end method

.method public terminate()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 302
    iput-boolean v1, p0, Lfr/testudo/spacecorsair/business/mission/engine/ScanCivilEngine;->completed:Z

    .line 303
    invoke-direct {p0, v1}, Lfr/testudo/spacecorsair/business/mission/engine/ScanCivilEngine;->setPhaseGateAndStationTarget(Z)V

    .line 304
    sget-object v0, Lfr/testudo/spacecorsair/business/mission/engine/ScanCivilEngine$Phase;->SCAN:Lfr/testudo/spacecorsair/business/mission/engine/ScanCivilEngine$Phase;

    iput-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/ScanCivilEngine;->currentPhase:Lfr/testudo/spacecorsair/business/mission/engine/ScanCivilEngine$Phase;

    .line 305
    iget-boolean v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/ScanCivilEngine;->isPlayerInScanZone:Z

    if-eqz v0, :cond_11

    .line 306
    invoke-virtual {p0, v1}, Lfr/testudo/spacecorsair/business/mission/engine/ScanCivilEngine;->applyScanConfigToCivilZone(Z)V

    .line 308
    :cond_11
    return-void
.end method

.method public updateScanText()V
    .registers 3

    .prologue
    .line 113
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/mission/engine/ScanCivilEngine;->textScan:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lfr/testudo/spacecorsair/business/mission/engine/ScanCivilEngine;->currentCivilScanned:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " / "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lfr/testudo/spacecorsair/business/mission/engine/ScanCivilEngine;->civilScanObjective:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/ScanCivilEngine;->textScanRemaining:Ljava/lang/String;

    .line 114
    return-void
.end method
