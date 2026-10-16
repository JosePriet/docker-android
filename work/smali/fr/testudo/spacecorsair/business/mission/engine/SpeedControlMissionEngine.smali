.class public Lfr/testudo/spacecorsair/business/mission/engine/SpeedControlMissionEngine;
.super Lfr/testudo/spacecorsair/business/mission/MissionListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lfr/testudo/spacecorsair/business/mission/engine/SpeedControlMissionEngine$1;,
        Lfr/testudo/spacecorsair/business/mission/engine/SpeedControlMissionEngine$Phase;,
        Lfr/testudo/spacecorsair/business/mission/engine/SpeedControlMissionEngine$ArrestDialogue;
    }
.end annotation


# static fields
.field private static final FUYARD_CHECK_FREQUENCY_IN_MS:I = 0x7d0

.field public static final FUYARD_MISSION_TAG:Ljava/lang/String; = "FUYARD"

.field private static final LIFE_CAP_FOR_STOP:I = 0x46

.field private static final MIN_DISTANCE_TO_PLAYER_FOR_STOP:I = 0x320


# instance fields
.field completed:Z

.field private controlSpeedMessage:Ljava/lang/String;

.field public currentPhase:Lfr/testudo/spacecorsair/business/mission/engine/SpeedControlMissionEngine$Phase;

.field private fuyardToDelete:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lfr/testudo/spacecorsair/business/world/civil/CivilShip;",
            ">;"
        }
    .end annotation
.end field

.field private fuyards:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lfr/testudo/spacecorsair/business/world/civil/CivilShip;",
            ">;"
        }
    .end annotation
.end field

.field private isPlayerInRecompenceZone:Z

.field private isPlayerInTargetZone:Z

.field nextTimeCivilWithSpeedPop:I

.field private nextTimeFuyardCheck:I

.field numberOfCivilToStop:I

.field recompenceZoneId:Lfr/testudo/spacecorsair/game/levels/LevelId;

.field remainingNumberOfCivilToStop:I

.field private stationGiveBackName:Ljava/lang/String;

.field targetZoneId:Lfr/testudo/spacecorsair/game/levels/LevelId;

.field private textDockToStation:Ljava/lang/String;

.field private textGotoRecompZone:Ljava/lang/String;

.field private textGotoTargetZone:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lfr/testudo/spacecorsair/game/levels/LevelId;Lfr/testudo/spacecorsair/game/levels/LevelId;Ljava/lang/String;)V
    .registers 6

    .prologue
    const/4 v1, 0x0

    .line 87
    invoke-direct {p0}, Lfr/testudo/spacecorsair/business/mission/MissionListener;-><init>()V

    .line 62
    iput-boolean v1, p0, Lfr/testudo/spacecorsair/business/mission/engine/SpeedControlMissionEngine;->completed:Z

    .line 63
    const/4 v0, 0x4

    iput v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/SpeedControlMissionEngine;->numberOfCivilToStop:I

    .line 68
    iput-boolean v1, p0, Lfr/testudo/spacecorsair/business/mission/engine/SpeedControlMissionEngine;->isPlayerInTargetZone:Z

    .line 69
    iput-boolean v1, p0, Lfr/testudo/spacecorsair/business/mission/engine/SpeedControlMissionEngine;->isPlayerInRecompenceZone:Z

    .line 78
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/SpeedControlMissionEngine;->fuyards:Ljava/util/List;

    .line 79
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/SpeedControlMissionEngine;->fuyardToDelete:Ljava/util/List;

    .line 183
    iput v1, p0, Lfr/testudo/spacecorsair/business/mission/engine/SpeedControlMissionEngine;->nextTimeFuyardCheck:I

    .line 88
    iput-object p1, p0, Lfr/testudo/spacecorsair/business/mission/engine/SpeedControlMissionEngine;->targetZoneId:Lfr/testudo/spacecorsair/game/levels/LevelId;

    .line 89
    iput-object p2, p0, Lfr/testudo/spacecorsair/business/mission/engine/SpeedControlMissionEngine;->recompenceZoneId:Lfr/testudo/spacecorsair/game/levels/LevelId;

    .line 90
    iput-object p3, p0, Lfr/testudo/spacecorsair/business/mission/engine/SpeedControlMissionEngine;->stationGiveBackName:Ljava/lang/String;

    .line 91
    sget-object v0, Lfr/testudo/spacecorsair/business/mission/engine/SpeedControlMissionEngine$Phase;->CATCH_SPEED_CIVILIANS:Lfr/testudo/spacecorsair/business/mission/engine/SpeedControlMissionEngine$Phase;

    iput-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/SpeedControlMissionEngine;->currentPhase:Lfr/testudo/spacecorsair/business/mission/engine/SpeedControlMissionEngine$Phase;

    .line 92
    invoke-direct {p0}, Lfr/testudo/spacecorsair/business/mission/engine/SpeedControlMissionEngine;->initStrings()V

    .line 93
    return-void
.end method

.method private clearFuyardsWhenMissionOver()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 213
    move v1, v2

    :goto_2
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/SpeedControlMissionEngine;->fuyards:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1b

    .line 214
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/SpeedControlMissionEngine;->fuyards:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;

    .line 215
    invoke-virtual {v0}, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->restoreDefaultPouseeForce()V

    .line 216
    iput-boolean v2, v0, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->isMissionObjective:Z

    .line 213
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    .line 219
    :cond_1b
    return-void
.end method

.method private handleFuyards()V
    .registers 6

    .prologue
    const/4 v2, 0x0

    .line 226
    move v1, v2

    :goto_2
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/SpeedControlMissionEngine;->fuyards:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_4d

    .line 228
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/SpeedControlMissionEngine;->fuyards:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;

    .line 229
    iget-boolean v3, v0, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->removed:Z

    if-nez v3, :cond_20

    const-string v3, "FUYARD"

    iget-object v4, v0, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->tag:Ljava/lang/Object;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_25

    .line 231
    :cond_20
    iget-object v3, p0, Lfr/testudo/spacecorsair/business/mission/engine/SpeedControlMissionEngine;->fuyardToDelete:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 234
    :cond_25
    iget v3, v0, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->distanceToPlayer:F

    const/high16 v4, 0x44480000    # 800.0f

    cmpg-float v3, v3, v4

    if-gez v3, :cond_49

    .line 235
    const/4 v3, 0x1

    iput-boolean v3, v0, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->isMissionObjective:Z

    .line 236
    sget-object v3, Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;->GREEN:Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;

    iput-object v3, v0, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->missionObjectiveColor:Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;

    .line 237
    iget v3, v0, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->lifeInPourc:F

    const/high16 v4, 0x428c0000    # 70.0f

    cmpg-float v3, v3, v4

    if-gez v3, :cond_49

    .line 238
    iget-object v3, p0, Lfr/testudo/spacecorsair/business/mission/engine/SpeedControlMissionEngine;->fuyardToDelete:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 239
    invoke-virtual {v0}, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->restoreDefaultPouseeForce()V

    .line 240
    iput-boolean v2, v0, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->isMissionObjective:Z

    .line 241
    invoke-direct {p0}, Lfr/testudo/spacecorsair/business/mission/engine/SpeedControlMissionEngine;->onCivilArrested()V

    .line 226
    :cond_49
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    .line 249
    :cond_4d
    :goto_4d
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/SpeedControlMissionEngine;->fuyardToDelete:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_63

    .line 251
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/SpeedControlMissionEngine;->fuyards:Ljava/util/List;

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/mission/engine/SpeedControlMissionEngine;->fuyardToDelete:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 249
    add-int/lit8 v2, v2, 0x1

    goto :goto_4d

    .line 254
    :cond_63
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/SpeedControlMissionEngine;->fuyardToDelete:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 259
    return-void
.end method

.method private initStrings()V
    .registers 4

    .prologue
    .line 96
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

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/mission/engine/SpeedControlMissionEngine;->targetZoneId:Lfr/testudo/spacecorsair/game/levels/LevelId;

    iget-object v1, v1, Lfr/testudo/spacecorsair/game/levels/LevelId;->levelName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/SpeedControlMissionEngine;->textGotoTargetZone:Ljava/lang/String;

    .line 97
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

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/mission/engine/SpeedControlMissionEngine;->recompenceZoneId:Lfr/testudo/spacecorsair/game/levels/LevelId;

    iget-object v1, v1, Lfr/testudo/spacecorsair/game/levels/LevelId;->levelName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/SpeedControlMissionEngine;->textGotoRecompZone:Ljava/lang/String;

    .line 98
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

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/mission/engine/SpeedControlMissionEngine;->stationGiveBackName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/SpeedControlMissionEngine;->textDockToStation:Ljava/lang/String;

    .line 100
    return-void
.end method

.method private onCivilArrested()V
    .registers 6

    .prologue
    const/4 v4, 0x1

    .line 188
    const/16 v0, 0x352

    .line 190
    invoke-static {}, Lfr/testudo/spacecorsair/business/factory/GamePools;->newGoldMessage()Lfr/testudo/spacecorsair/display/GoldTextMessage;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "+"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " c"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v3, v3, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->playerShip:Lfr/testudo/spacecorsair/business/player/PlayerShip;

    invoke-virtual {v1, v2, v3}, Lfr/testudo/spacecorsair/display/GoldTextMessage;->init(Ljava/lang/String;Lfr/testudo/spacecorsair/business/Element;)Lfr/testudo/spacecorsair/display/GoldTextMessage;

    move-result-object v1

    .line 191
    sget-object v2, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v2, v2, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v2, v2, Lfr/testudo/spacecorsair/game/Game;->currentLevel:Lfr/testudo/spacecorsair/game/levels/Level;

    iget-object v2, v2, Lfr/testudo/spacecorsair/game/levels/Level;->toAddDrawOnly:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 192
    sget-object v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v1, v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v1, v1, Lfr/testudo/spacecorsair/game/Game;->playerCurrentShipInventory:Lfr/testudo/spacecorsair/business/player/Inventory;

    invoke-virtual {v1, v0}, Lfr/testudo/spacecorsair/business/player/Inventory;->addCredit(I)V

    .line 194
    iget v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/SpeedControlMissionEngine;->remainingNumberOfCivilToStop:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/SpeedControlMissionEngine;->remainingNumberOfCivilToStop:I

    .line 195
    invoke-direct {p0}, Lfr/testudo/spacecorsair/business/mission/engine/SpeedControlMissionEngine;->setRemainingText()V

    .line 196
    iget v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/SpeedControlMissionEngine;->remainingNumberOfCivilToStop:I

    if-gtz v0, :cond_64

    .line 197
    iput-boolean v4, p0, Lfr/testudo/spacecorsair/business/mission/engine/SpeedControlMissionEngine;->completed:Z

    .line 198
    invoke-direct {p0}, Lfr/testudo/spacecorsair/business/mission/engine/SpeedControlMissionEngine;->clearFuyardsWhenMissionOver()V

    .line 199
    sget-object v0, Lfr/testudo/spacecorsair/business/mission/engine/SpeedControlMissionEngine$Phase;->GATHER_RECOMP:Lfr/testudo/spacecorsair/business/mission/engine/SpeedControlMissionEngine$Phase;

    iput-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/SpeedControlMissionEngine;->currentPhase:Lfr/testudo/spacecorsair/business/mission/engine/SpeedControlMissionEngine$Phase;

    .line 200
    invoke-direct {p0, v4}, Lfr/testudo/spacecorsair/business/mission/engine/SpeedControlMissionEngine;->setPhaseGateAndStationTarget(Z)V

    .line 201
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    const v1, 0x7f0702c1

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->getStringRessource(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-static {v0, v1}, Lfr/testudo/spacecorsair/display/hud/WelcomeMessage;->setText(Ljava/lang/String;Ljava/lang/String;)V

    .line 210
    :goto_63
    return-void

    .line 205
    :cond_64
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/Game;->gameThread:Lfr/testudo/spacecorsair/engine/GameThread;

    invoke-static {}, Lfr/testudo/spacecorsair/business/mission/engine/SpeedControlMissionEngine$ArrestDialogue;->random()Lfr/testudo/spacecorsair/business/mission/engine/SpeedControlMissionEngine$ArrestDialogue;

    move-result-object v1

    iget v1, v1, Lfr/testudo/spacecorsair/business/mission/engine/SpeedControlMissionEngine$ArrestDialogue;->resId:I

    const/16 v2, 0x5dc

    invoke-static {v1, v2}, Lfr/testudo/spacecorsair/game/CharacterDialog;->ofRandomCivilian(II)Lfr/testudo/spacecorsair/game/CharacterDialog;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/engine/GameThread;->showDialog(Lfr/testudo/spacecorsair/game/CharacterDialog;)V

    goto :goto_63
.end method

.method private pickOneCivilAndSetHimFast()V
    .registers 9

    .prologue
    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    .line 265
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/Game;->currentLevel:Lfr/testudo/spacecorsair/game/levels/Level;

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/game/levels/Level;->pickOneRandomCivilNotTransport()Lfr/testudo/spacecorsair/business/world/civil/CivilShip;

    move-result-object v0

    .line 266
    if-eqz v0, :cond_16

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/mission/engine/SpeedControlMissionEngine;->fuyards:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17

    .line 279
    :cond_16
    :goto_16
    return-void

    .line 270
    :cond_17
    iget v1, v0, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->maxPouseeForce:F

    float-to-double v2, v1

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v4

    mul-double/2addr v4, v6

    add-double/2addr v4, v6

    mul-double/2addr v2, v4

    double-to-float v1, v2

    iput v1, v0, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->maxPouseeForce:F

    .line 271
    iget v1, v0, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->maxPouseeForce:F

    iput v1, v0, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->pouseeForce:F

    .line 272
    const/4 v1, 0x1

    iput-boolean v1, v0, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->disableIa:Z

    .line 274
    const-string v1, "FUYARD"

    iput-object v1, v0, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->tag:Ljava/lang/Object;

    .line 276
    iget-object v1, p0, Lfr/testudo/spacecorsair/business/mission/engine/SpeedControlMissionEngine;->fuyards:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_16
.end method

.method private setPhaseGateAndStationTarget(Z)V
    .registers 4

    .prologue
    .line 348
    sget-object v0, Lfr/testudo/spacecorsair/business/mission/engine/SpeedControlMissionEngine$1;->$SwitchMap$fr$testudo$spacecorsair$business$mission$engine$SpeedControlMissionEngine$Phase:[I

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/mission/engine/SpeedControlMissionEngine;->currentPhase:Lfr/testudo/spacecorsair/business/mission/engine/SpeedControlMissionEngine$Phase;

    invoke-virtual {v1}, Lfr/testudo/spacecorsair/business/mission/engine/SpeedControlMissionEngine$Phase;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_5e

    .line 380
    :cond_d
    :goto_d
    return-void

    .line 350
    :pswitch_e
    iget-boolean v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/SpeedControlMissionEngine;->isPlayerInTargetZone:Z

    if-nez v0, :cond_d

    .line 354
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/Game;->currentLevel:Lfr/testudo/spacecorsair/game/levels/Level;

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/mission/engine/SpeedControlMissionEngine;->targetZoneId:Lfr/testudo/spacecorsair/game/levels/LevelId;

    invoke-static {v1}, Lfr/testudo/spacecorsair/business/world/PathFinder;->getPortalNameToGoTo(Lfr/testudo/spacecorsair/game/levels/LevelId;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/game/levels/Level;->findPortalByName(Ljava/lang/String;)Lfr/testudo/spacecorsair/business/world/Portal;

    move-result-object v0

    .line 355
    if-eqz v0, :cond_d

    .line 356
    iput-boolean p1, v0, Lfr/testudo/spacecorsair/business/world/Portal;->isMissionObjective:Z

    .line 357
    sget-object v1, Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;->ORANGE:Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;

    iput-object v1, v0, Lfr/testudo/spacecorsair/business/world/Portal;->missionObjectiveColor:Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;

    goto :goto_d

    .line 362
    :pswitch_2b
    iget-boolean v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/SpeedControlMissionEngine;->isPlayerInRecompenceZone:Z

    if-eqz v0, :cond_44

    .line 364
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/Game;->currentLevel:Lfr/testudo/spacecorsair/game/levels/Level;

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/mission/engine/SpeedControlMissionEngine;->stationGiveBackName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/game/levels/Level;->findStationByName(Ljava/lang/String;)Lfr/testudo/spacecorsair/business/world/station/Station;

    move-result-object v0

    .line 365
    if-eqz v0, :cond_d

    .line 366
    iput-boolean p1, v0, Lfr/testudo/spacecorsair/business/world/station/Station;->isMissionObjective:Z

    .line 367
    sget-object v1, Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;->ORANGE:Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;

    iput-object v1, v0, Lfr/testudo/spacecorsair/business/world/station/Station;->missionObjectiveColor:Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;

    goto :goto_d

    .line 373
    :cond_44
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/Game;->currentLevel:Lfr/testudo/spacecorsair/game/levels/Level;

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/mission/engine/SpeedControlMissionEngine;->recompenceZoneId:Lfr/testudo/spacecorsair/game/levels/LevelId;

    invoke-static {v1}, Lfr/testudo/spacecorsair/business/world/PathFinder;->getPortalNameToGoTo(Lfr/testudo/spacecorsair/game/levels/LevelId;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/game/levels/Level;->findPortalByName(Ljava/lang/String;)Lfr/testudo/spacecorsair/business/world/Portal;

    move-result-object v0

    .line 374
    if-eqz v0, :cond_d

    .line 375
    iput-boolean p1, v0, Lfr/testudo/spacecorsair/business/world/Portal;->isMissionObjective:Z

    .line 376
    sget-object v1, Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;->ORANGE:Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;

    iput-object v1, v0, Lfr/testudo/spacecorsair/business/world/Portal;->missionObjectiveColor:Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;

    goto :goto_d

    .line 348
    nop

    :pswitch_data_5e
    .packed-switch 0x1
        :pswitch_e
        :pswitch_2b
    .end packed-switch
.end method

.method private setRemainingText()V
    .registers 4

    .prologue
    .line 104
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    const v2, 0x7f0701f3

    invoke-virtual {v1, v2}, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->getStringRessource(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lfr/testudo/spacecorsair/business/mission/engine/SpeedControlMissionEngine;->numberOfCivilToStop:I

    iget v2, p0, Lfr/testudo/spacecorsair/business/mission/engine/SpeedControlMissionEngine;->remainingNumberOfCivilToStop:I

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lfr/testudo/spacecorsair/business/mission/engine/SpeedControlMissionEngine;->numberOfCivilToStop:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/SpeedControlMissionEngine;->controlSpeedMessage:Ljava/lang/String;

    .line 105
    return-void
.end method


# virtual methods
.method public getCurrentInstruction()Ljava/lang/String;
    .registers 3

    .prologue
    .line 284
    sget-object v0, Lfr/testudo/spacecorsair/business/mission/engine/SpeedControlMissionEngine$1;->$SwitchMap$fr$testudo$spacecorsair$business$mission$engine$SpeedControlMissionEngine$Phase:[I

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/mission/engine/SpeedControlMissionEngine;->currentPhase:Lfr/testudo/spacecorsair/business/mission/engine/SpeedControlMissionEngine$Phase;

    invoke-virtual {v1}, Lfr/testudo/spacecorsair/business/mission/engine/SpeedControlMissionEngine$Phase;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_24

    .line 305
    const-string v0, ""

    :goto_f
    return-object v0

    .line 287
    :pswitch_10
    iget-boolean v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/SpeedControlMissionEngine;->isPlayerInTargetZone:Z

    if-eqz v0, :cond_17

    .line 288
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/SpeedControlMissionEngine;->controlSpeedMessage:Ljava/lang/String;

    goto :goto_f

    .line 291
    :cond_17
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/SpeedControlMissionEngine;->textGotoTargetZone:Ljava/lang/String;

    goto :goto_f

    .line 296
    :pswitch_1a
    iget-boolean v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/SpeedControlMissionEngine;->isPlayerInRecompenceZone:Z

    if-eqz v0, :cond_21

    .line 297
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/SpeedControlMissionEngine;->textDockToStation:Ljava/lang/String;

    goto :goto_f

    .line 300
    :cond_21
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/SpeedControlMissionEngine;->textGotoRecompZone:Ljava/lang/String;

    goto :goto_f

    .line 284
    :pswitch_data_24
    .packed-switch 0x1
        :pswitch_10
        :pswitch_1a
    .end packed-switch
.end method

.method public giveUp()V
    .registers 1

    .prologue
    .line 332
    invoke-virtual {p0}, Lfr/testudo/spacecorsair/business/mission/engine/SpeedControlMissionEngine;->terminate()V

    .line 333
    return-void
.end method

.method public init()V
    .registers 3

    .prologue
    .line 310
    const/4 v0, 0x0

    iput-boolean v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/SpeedControlMissionEngine;->completed:Z

    .line 311
    iget v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/SpeedControlMissionEngine;->numberOfCivilToStop:I

    iput v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/SpeedControlMissionEngine;->remainingNumberOfCivilToStop:I

    .line 312
    sget-object v0, Lfr/testudo/spacecorsair/business/mission/engine/SpeedControlMissionEngine$Phase;->CATCH_SPEED_CIVILIANS:Lfr/testudo/spacecorsair/business/mission/engine/SpeedControlMissionEngine$Phase;

    iput-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/SpeedControlMissionEngine;->currentPhase:Lfr/testudo/spacecorsair/business/mission/engine/SpeedControlMissionEngine$Phase;

    .line 313
    invoke-direct {p0}, Lfr/testudo/spacecorsair/business/mission/engine/SpeedControlMissionEngine;->setRemainingText()V

    .line 314
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/Game;->currentLevel:Lfr/testudo/spacecorsair/game/levels/Level;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/levels/Level;->name:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lfr/testudo/spacecorsair/business/mission/engine/SpeedControlMissionEngine;->onZoneChanged(Ljava/lang/String;Ljava/lang/String;)V

    .line 315
    return-void
.end method

.method public initNextTimeCivilianWithSpeedPop(I)V
    .registers 8

    .prologue
    .line 112
    int-to-double v0, p1

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v2

    const-wide v4, 0x40d3880000000000L    # 20000.0

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    double-to-int v0, v0

    iput v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/SpeedControlMissionEngine;->nextTimeCivilWithSpeedPop:I

    .line 113
    return-void
.end method

.method public isCompleted()Z
    .registers 2

    .prologue
    .line 342
    iget-boolean v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/SpeedControlMissionEngine;->completed:Z

    return v0
.end method

.method public onDoPhysic(J)V
    .registers 6

    .prologue
    const/16 v2, 0x7d0

    .line 158
    iget-boolean v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/SpeedControlMissionEngine;->completed:Z

    if-nez v0, :cond_2b

    iget-boolean v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/SpeedControlMissionEngine;->isPlayerInTargetZone:Z

    if-eqz v0, :cond_2b

    .line 160
    iget v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/SpeedControlMissionEngine;->nextTimeCivilWithSpeedPop:I

    int-to-long v0, v0

    sub-long/2addr v0, p1

    long-to-int v0, v0

    iput v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/SpeedControlMissionEngine;->nextTimeCivilWithSpeedPop:I

    .line 162
    iget v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/SpeedControlMissionEngine;->nextTimeCivilWithSpeedPop:I

    if-gtz v0, :cond_1b

    .line 163
    invoke-direct {p0}, Lfr/testudo/spacecorsair/business/mission/engine/SpeedControlMissionEngine;->pickOneCivilAndSetHimFast()V

    .line 164
    invoke-virtual {p0, v2}, Lfr/testudo/spacecorsair/business/mission/engine/SpeedControlMissionEngine;->initNextTimeCivilianWithSpeedPop(I)V

    .line 167
    :cond_1b
    iget v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/SpeedControlMissionEngine;->nextTimeFuyardCheck:I

    int-to-long v0, v0

    sub-long/2addr v0, p1

    long-to-int v0, v0

    iput v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/SpeedControlMissionEngine;->nextTimeFuyardCheck:I

    .line 168
    iget v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/SpeedControlMissionEngine;->nextTimeFuyardCheck:I

    if-gtz v0, :cond_2b

    .line 169
    invoke-direct {p0}, Lfr/testudo/spacecorsair/business/mission/engine/SpeedControlMissionEngine;->handleFuyards()V

    .line 170
    iput v2, p0, Lfr/testudo/spacecorsair/business/mission/engine/SpeedControlMissionEngine;->nextTimeFuyardCheck:I

    .line 176
    :cond_2b
    return-void
.end method

.method public onElementDestroyed(Lfr/testudo/spacecorsair/business/Element;)V
    .registers 2

    .prologue
    .line 140
    return-void
.end method

.method public onElementDestroyedByPlayer(Lfr/testudo/spacecorsair/business/Element;)V
    .registers 5

    .prologue
    .line 144
    instance-of v0, p1, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;

    if-eqz v0, :cond_20

    iget-boolean v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/SpeedControlMissionEngine;->completed:Z

    if-nez v0, :cond_20

    .line 145
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    const v1, 0x7f07029c

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->getStringRessource(I)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    const v2, 0x7f0701fa

    invoke-virtual {v1, v2}, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->getStringRessource(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lfr/testudo/spacecorsair/display/hud/WelcomeMessage;->setText(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    invoke-virtual {p0}, Lfr/testudo/spacecorsair/business/mission/engine/SpeedControlMissionEngine;->cancellMission()V

    .line 149
    :cond_20
    return-void
.end method

.method public onPlayerDeath()V
    .registers 1

    .prologue
    .line 154
    return-void
.end method

.method public onZoneChanged(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 117
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/SpeedControlMissionEngine;->targetZoneId:Lfr/testudo/spacecorsair/game/levels/LevelId;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/levels/LevelId;->levelName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_23

    .line 118
    iput-boolean v1, p0, Lfr/testudo/spacecorsair/business/mission/engine/SpeedControlMissionEngine;->isPlayerInTargetZone:Z

    .line 119
    const/16 v0, 0x1388

    invoke-virtual {p0, v0}, Lfr/testudo/spacecorsair/business/mission/engine/SpeedControlMissionEngine;->initNextTimeCivilianWithSpeedPop(I)V

    .line 125
    :goto_13
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/SpeedControlMissionEngine;->recompenceZoneId:Lfr/testudo/spacecorsair/game/levels/LevelId;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/levels/LevelId;->levelName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_26

    .line 126
    iput-boolean v1, p0, Lfr/testudo/spacecorsair/business/mission/engine/SpeedControlMissionEngine;->isPlayerInRecompenceZone:Z

    .line 132
    :goto_1f
    invoke-direct {p0, v1}, Lfr/testudo/spacecorsair/business/mission/engine/SpeedControlMissionEngine;->setPhaseGateAndStationTarget(Z)V

    .line 134
    return-void

    .line 122
    :cond_23
    iput-boolean v2, p0, Lfr/testudo/spacecorsair/business/mission/engine/SpeedControlMissionEngine;->isPlayerInTargetZone:Z

    goto :goto_13

    .line 129
    :cond_26
    iput-boolean v2, p0, Lfr/testudo/spacecorsair/business/mission/engine/SpeedControlMissionEngine;->isPlayerInRecompenceZone:Z

    goto :goto_1f
.end method

.method public restoreState()V
    .registers 2

    .prologue
    .line 319
    const/4 v0, 0x0

    iput-boolean v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/SpeedControlMissionEngine;->completed:Z

    .line 320
    sget-object v0, Lfr/testudo/spacecorsair/business/mission/engine/SpeedControlMissionEngine$Phase;->CATCH_SPEED_CIVILIANS:Lfr/testudo/spacecorsair/business/mission/engine/SpeedControlMissionEngine$Phase;

    iput-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/SpeedControlMissionEngine;->currentPhase:Lfr/testudo/spacecorsair/business/mission/engine/SpeedControlMissionEngine$Phase;

    .line 321
    iget v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/SpeedControlMissionEngine;->numberOfCivilToStop:I

    iput v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/SpeedControlMissionEngine;->remainingNumberOfCivilToStop:I

    .line 322
    invoke-direct {p0}, Lfr/testudo/spacecorsair/business/mission/engine/SpeedControlMissionEngine;->setRemainingText()V

    .line 323
    return-void
.end method

.method public saveState()V
    .registers 1

    .prologue
    .line 328
    return-void
.end method

.method public terminate()V
    .registers 2

    .prologue
    .line 337
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lfr/testudo/spacecorsair/business/mission/engine/SpeedControlMissionEngine;->setPhaseGateAndStationTarget(Z)V

    .line 338
    return-void
.end method
