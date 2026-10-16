.class public Lfr/testudo/spacecorsair/business/mission/engine/escorte/EscortCivilMissionEngine;
.super Lfr/testudo/spacecorsair/business/mission/MissionListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lfr/testudo/spacecorsair/business/mission/engine/escorte/EscortCivilMissionEngine$4;,
        Lfr/testudo/spacecorsair/business/mission/engine/escorte/EscortCivilMissionEngine$Phase;
    }
.end annotation


# static fields
.field private static temp:Lfr/testudo/spacecorsair/engine/Vector2;


# instance fields
.field private approachTargetLocResourceId:I

.field public completed:Z

.field public curEscortWave:Lfr/testudo/spacecorsair/business/mission/engine/escorte/EscortWaves;

.field private currentEscortSector:Lfr/testudo/spacecorsair/game/levels/LevelId;

.field public currentPhase:Lfr/testudo/spacecorsair/business/mission/engine/escorte/EscortCivilMissionEngine$Phase;

.field deliverZoneId:Lfr/testudo/spacecorsair/game/levels/LevelId;

.field public escortDockedListener:Lfr/testudo/spacecorsair/business/world/civil/CivilActivityCompletedListener;

.field private escortLeftSector:Z

.field private escortPopOnLastPortal:Z

.field public escortTarget:Lfr/testudo/spacecorsair/business/world/civil/CivilShip;

.field private finalEscortPosition:Lfr/testudo/spacecorsair/engine/Vector2;

.field private getCloserFromTargetMessage:Ljava/lang/String;

.field private gotoRecompenseZoneMessage:Ljava/lang/String;

.field private gotoTargetSectorMessage:Ljava/lang/String;

.field public isPlayerInMeetingZone:Z

.field public isPlayerInRecompenceZone:Z

.field private lastEscortPosition:Lfr/testudo/spacecorsair/engine/Vector2;

.field private lastEscortShipLife:F

.field meetingZoneId:Lfr/testudo/spacecorsair/game/levels/LevelId;

.field private missionHandler:Lfr/testudo/spacecorsair/business/mission/engine/escorte/EscortCivilMissionHandler;

.field private nextEscortSector:Lfr/testudo/spacecorsair/game/levels/LevelId;

.field private nextPortalPopName:Ljava/lang/String;

.field private nextSectorPortal:Lfr/testudo/spacecorsair/business/world/Portal;

.field public nextTimeWaveInMilli:I

.field public playerArriveNextToTargetListener:Lfr/testudo/spacecorsair/business/world/civil/CivilActivityCompletedListener;

.field private playerInEscortSector:Z

.field recompenceZoneId:Lfr/testudo/spacecorsair/game/levels/LevelId;

.field private stationGiveBackName:Ljava/lang/String;

.field public targetJumpedListener:Lfr/testudo/spacecorsair/business/world/civil/CivilActivityCompletedListener;

.field private targetName:Ljava/lang/String;

.field private targetNameResourceId:I

.field private textDockToStation:Ljava/lang/String;

.field private textEscortTarget:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 230
    new-instance v0, Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-direct {v0}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>()V

    sput-object v0, Lfr/testudo/spacecorsair/business/mission/engine/escorte/EscortCivilMissionEngine;->temp:Lfr/testudo/spacecorsair/engine/Vector2;

    return-void
.end method

.method public constructor <init>(Lfr/testudo/spacecorsair/game/levels/LevelId;Lfr/testudo/spacecorsair/game/levels/LevelId;Lfr/testudo/spacecorsair/game/levels/LevelId;Ljava/lang/String;ILfr/testudo/spacecorsair/business/mission/engine/escorte/EscortCivilMissionHandler;ILfr/testudo/spacecorsair/engine/Vector2;)V
    .registers 12

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 93
    invoke-direct {p0}, Lfr/testudo/spacecorsair/business/mission/MissionListener;-><init>()V

    .line 39
    sget-object v0, Lfr/testudo/spacecorsair/business/mission/engine/escorte/EscortCivilMissionEngine$Phase;->MEETING_POINT:Lfr/testudo/spacecorsair/business/mission/engine/escorte/EscortCivilMissionEngine$Phase;

    iput-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/escorte/EscortCivilMissionEngine;->currentPhase:Lfr/testudo/spacecorsair/business/mission/engine/escorte/EscortCivilMissionEngine$Phase;

    .line 64
    const/4 v0, 0x0

    iput-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/escorte/EscortCivilMissionEngine;->curEscortWave:Lfr/testudo/spacecorsair/business/mission/engine/escorte/EscortWaves;

    .line 67
    const/4 v0, 0x1

    iput-boolean v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/escorte/EscortCivilMissionEngine;->escortPopOnLastPortal:Z

    .line 72
    iput v1, p0, Lfr/testudo/spacecorsair/business/mission/engine/escorte/EscortCivilMissionEngine;->lastEscortShipLife:F

    .line 73
    iput-boolean v2, p0, Lfr/testudo/spacecorsair/business/mission/engine/escorte/EscortCivilMissionEngine;->escortLeftSector:Z

    .line 74
    new-instance v0, Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-direct {v0, v1, v1}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>(FF)V

    iput-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/escorte/EscortCivilMissionEngine;->lastEscortPosition:Lfr/testudo/spacecorsair/engine/Vector2;

    .line 75
    iput-boolean v2, p0, Lfr/testudo/spacecorsair/business/mission/engine/escorte/EscortCivilMissionEngine;->playerInEscortSector:Z

    .line 76
    new-instance v0, Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-direct {v0, v1, v1}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>(FF)V

    iput-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/escorte/EscortCivilMissionEngine;->finalEscortPosition:Lfr/testudo/spacecorsair/engine/Vector2;

    .line 79
    iput v2, p0, Lfr/testudo/spacecorsair/business/mission/engine/escorte/EscortCivilMissionEngine;->nextTimeWaveInMilli:I

    .line 130
    new-instance v0, Lfr/testudo/spacecorsair/business/mission/engine/escorte/EscortCivilMissionEngine$1;

    invoke-direct {v0, p0}, Lfr/testudo/spacecorsair/business/mission/engine/escorte/EscortCivilMissionEngine$1;-><init>(Lfr/testudo/spacecorsair/business/mission/engine/escorte/EscortCivilMissionEngine;)V

    iput-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/escorte/EscortCivilMissionEngine;->playerArriveNextToTargetListener:Lfr/testudo/spacecorsair/business/world/civil/CivilActivityCompletedListener;

    .line 143
    new-instance v0, Lfr/testudo/spacecorsair/business/mission/engine/escorte/EscortCivilMissionEngine$2;

    invoke-direct {v0, p0}, Lfr/testudo/spacecorsair/business/mission/engine/escorte/EscortCivilMissionEngine$2;-><init>(Lfr/testudo/spacecorsair/business/mission/engine/escorte/EscortCivilMissionEngine;)V

    iput-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/escorte/EscortCivilMissionEngine;->targetJumpedListener:Lfr/testudo/spacecorsair/business/world/civil/CivilActivityCompletedListener;

    .line 525
    new-instance v0, Lfr/testudo/spacecorsair/business/mission/engine/escorte/EscortCivilMissionEngine$3;

    invoke-direct {v0, p0}, Lfr/testudo/spacecorsair/business/mission/engine/escorte/EscortCivilMissionEngine$3;-><init>(Lfr/testudo/spacecorsair/business/mission/engine/escorte/EscortCivilMissionEngine;)V

    iput-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/escorte/EscortCivilMissionEngine;->escortDockedListener:Lfr/testudo/spacecorsair/business/world/civil/CivilActivityCompletedListener;

    .line 94
    iput-object p1, p0, Lfr/testudo/spacecorsair/business/mission/engine/escorte/EscortCivilMissionEngine;->meetingZoneId:Lfr/testudo/spacecorsair/game/levels/LevelId;

    .line 95
    iput-object p2, p0, Lfr/testudo/spacecorsair/business/mission/engine/escorte/EscortCivilMissionEngine;->deliverZoneId:Lfr/testudo/spacecorsair/game/levels/LevelId;

    .line 96
    iput-object p3, p0, Lfr/testudo/spacecorsair/business/mission/engine/escorte/EscortCivilMissionEngine;->recompenceZoneId:Lfr/testudo/spacecorsair/game/levels/LevelId;

    .line 97
    iput-object p4, p0, Lfr/testudo/spacecorsair/business/mission/engine/escorte/EscortCivilMissionEngine;->stationGiveBackName:Ljava/lang/String;

    .line 98
    iput p5, p0, Lfr/testudo/spacecorsair/business/mission/engine/escorte/EscortCivilMissionEngine;->targetNameResourceId:I

    .line 99
    iput-object p6, p0, Lfr/testudo/spacecorsair/business/mission/engine/escorte/EscortCivilMissionEngine;->missionHandler:Lfr/testudo/spacecorsair/business/mission/engine/escorte/EscortCivilMissionHandler;

    .line 100
    iput p5, p0, Lfr/testudo/spacecorsair/business/mission/engine/escorte/EscortCivilMissionEngine;->targetNameResourceId:I

    .line 101
    iput p7, p0, Lfr/testudo/spacecorsair/business/mission/engine/escorte/EscortCivilMissionEngine;->approachTargetLocResourceId:I

    .line 102
    iput-object p8, p0, Lfr/testudo/spacecorsair/business/mission/engine/escorte/EscortCivilMissionEngine;->finalEscortPosition:Lfr/testudo/spacecorsair/engine/Vector2;

    .line 104
    invoke-direct {p0}, Lfr/testudo/spacecorsair/business/mission/engine/escorte/EscortCivilMissionEngine;->initStrings()V

    .line 106
    return-void
.end method

.method static synthetic access$000(Lfr/testudo/spacecorsair/business/mission/engine/escorte/EscortCivilMissionEngine;)V
    .registers 1

    .prologue
    .line 30
    invoke-direct {p0}, Lfr/testudo/spacecorsair/business/mission/engine/escorte/EscortCivilMissionEngine;->onEscortReachedDestinationPoint()V

    return-void
.end method

.method private addEscortToLevel()V
    .registers 12

    .prologue
    const/4 v10, 0x2

    const/high16 v9, 0x40400000    # 3.0f

    const/4 v8, 0x0

    const/high16 v7, 0x43fa0000    # 500.0f

    const/4 v6, 0x1

    .line 234
    iput-boolean v8, p0, Lfr/testudo/spacecorsair/business/mission/engine/escorte/EscortCivilMissionEngine;->escortLeftSector:Z

    .line 236
    sget-object v0, Lfr/testudo/spacecorsair/business/mission/engine/escorte/EscortCivilMissionEngine$4;->$SwitchMap$fr$testudo$spacecorsair$business$mission$engine$escorte$EscortCivilMissionEngine$Phase:[I

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/mission/engine/escorte/EscortCivilMissionEngine;->currentPhase:Lfr/testudo/spacecorsair/business/mission/engine/escorte/EscortCivilMissionEngine$Phase;

    invoke-virtual {v1}, Lfr/testudo/spacecorsair/business/mission/engine/escorte/EscortCivilMissionEngine$Phase;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_2e4

    .line 367
    :goto_16
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/escorte/EscortCivilMissionEngine;->missionHandler:Lfr/testudo/spacecorsair/business/mission/engine/escorte/EscortCivilMissionHandler;

    sget-object v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v1, v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v1, v1, Lfr/testudo/spacecorsair/game/Game;->currentLevel:Lfr/testudo/spacecorsair/game/levels/Level;

    iget-object v1, v1, Lfr/testudo/spacecorsair/game/levels/Level;->id:Lfr/testudo/spacecorsair/game/levels/LevelId;

    iget v2, p0, Lfr/testudo/spacecorsair/business/mission/engine/escorte/EscortCivilMissionEngine;->lastEscortShipLife:F

    float-to-int v2, v2

    invoke-virtual {v0, v1, v2}, Lfr/testudo/spacecorsair/business/mission/engine/escorte/EscortCivilMissionHandler;->getEscortWaves(Lfr/testudo/spacecorsair/game/levels/LevelId;I)Lfr/testudo/spacecorsair/business/mission/engine/escorte/EscortWaves;

    move-result-object v0

    invoke-virtual {p0, v0}, Lfr/testudo/spacecorsair/business/mission/engine/escorte/EscortCivilMissionEngine;->initWaveConfig(Lfr/testudo/spacecorsair/business/mission/engine/escorte/EscortWaves;)V

    .line 370
    :cond_2a
    return-void

    .line 239
    :pswitch_2b
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/escorte/EscortCivilMissionEngine;->missionHandler:Lfr/testudo/spacecorsair/business/mission/engine/escorte/EscortCivilMissionHandler;

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/business/mission/engine/escorte/EscortCivilMissionHandler;->gimmeTargetToAddToLevel()Lfr/testudo/spacecorsair/business/world/civil/CivilShip;

    move-result-object v0

    iput-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/escorte/EscortCivilMissionEngine;->escortTarget:Lfr/testudo/spacecorsair/business/world/civil/CivilShip;

    .line 240
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/escorte/EscortCivilMissionEngine;->escortTarget:Lfr/testudo/spacecorsair/business/world/civil/CivilShip;

    iput-boolean v6, v0, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->neverEscapeWhenInjured:Z

    .line 241
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/escorte/EscortCivilMissionEngine;->escortTarget:Lfr/testudo/spacecorsair/business/world/civil/CivilShip;

    iput-boolean v6, v0, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->allowPlayerDamage:Z

    .line 242
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/mission/engine/escorte/EscortCivilMissionEngine;->escortTarget:Lfr/testudo/spacecorsair/business/world/civil/CivilShip;

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->queueElementToBeAddToLevel(Lfr/testudo/spacecorsair/business/Element;)V

    .line 244
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/Game;->currentLevel:Lfr/testudo/spacecorsair/game/levels/Level;

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/mission/engine/escorte/EscortCivilMissionEngine;->deliverZoneId:Lfr/testudo/spacecorsair/game/levels/LevelId;

    invoke-static {v1}, Lfr/testudo/spacecorsair/business/world/PathFinder;->getPortalNameToGoTo(Lfr/testudo/spacecorsair/game/levels/LevelId;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/game/levels/Level;->findPortalByName(Ljava/lang/String;)Lfr/testudo/spacecorsair/business/world/Portal;

    move-result-object v0

    .line 245
    if-eqz v0, :cond_2a

    .line 249
    iput-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/escorte/EscortCivilMissionEngine;->nextSectorPortal:Lfr/testudo/spacecorsair/business/world/Portal;

    .line 250
    iget-object v1, v0, Lfr/testudo/spacecorsair/business/world/Portal;->jumpLevelName:Ljava/lang/String;

    invoke-static {v1}, Lfr/testudo/spacecorsair/game/levels/LevelId;->getByLevelName(Ljava/lang/String;)Lfr/testudo/spacecorsair/game/levels/LevelId;

    move-result-object v1

    iput-object v1, p0, Lfr/testudo/spacecorsair/business/mission/engine/escorte/EscortCivilMissionEngine;->nextEscortSector:Lfr/testudo/spacecorsair/game/levels/LevelId;

    .line 251
    iget-object v1, v0, Lfr/testudo/spacecorsair/business/world/Portal;->jumpPortalName:Ljava/lang/String;

    iput-object v1, p0, Lfr/testudo/spacecorsair/business/mission/engine/escorte/EscortCivilMissionEngine;->nextPortalPopName:Ljava/lang/String;

    .line 252
    iget-object v1, p0, Lfr/testudo/spacecorsair/business/mission/engine/escorte/EscortCivilMissionEngine;->escortTarget:Lfr/testudo/spacecorsair/business/world/civil/CivilShip;

    const/4 v2, 0x5

    new-array v2, v2, [Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;

    const/16 v3, 0x1f4

    const/high16 v4, 0x40800000    # 4.0f

    invoke-static {v3, v4}, Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;->newWaitUntilPlayerClose(IF)Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;

    move-result-object v3

    iget-object v4, p0, Lfr/testudo/spacecorsair/business/mission/engine/escorte/EscortCivilMissionEngine;->playerArriveNextToTargetListener:Lfr/testudo/spacecorsair/business/world/civil/CivilActivityCompletedListener;

    invoke-virtual {v3, v4}, Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;->withCompleteListener(Lfr/testudo/spacecorsair/business/world/civil/CivilActivityCompletedListener;)Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;

    move-result-object v3

    aput-object v3, v2, v8

    const/high16 v3, 0x40000000    # 2.0f

    invoke-static {v3}, Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;->newWait(F)Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;

    move-result-object v3

    invoke-virtual {v3}, Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;->enableSelfDefense()Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;

    move-result-object v3

    aput-object v3, v2, v6

    iget-object v0, v0, Lfr/testudo/spacecorsair/business/world/Portal;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-static {v0}, Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;->newMoove(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;

    move-result-object v0

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;->enableSelfDefense()Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;

    move-result-object v0

    aput-object v0, v2, v10

    const/4 v0, 0x3

    const/high16 v3, 0x3f000000    # 0.5f

    invoke-static {v3}, Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;->newWait(F)Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;

    move-result-object v3

    invoke-virtual {v3}, Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;->enableSelfDefense()Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;

    move-result-object v3

    aput-object v3, v2, v0

    const/4 v0, 0x4

    invoke-static {}, Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;->newDiseapear()Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;

    move-result-object v3

    iget-object v4, p0, Lfr/testudo/spacecorsair/business/mission/engine/escorte/EscortCivilMissionEngine;->targetJumpedListener:Lfr/testudo/spacecorsair/business/world/civil/CivilActivityCompletedListener;

    invoke-virtual {v3, v4}, Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;->withCompleteListener(Lfr/testudo/spacecorsair/business/world/civil/CivilActivityCompletedListener;)Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;

    move-result-object v3

    aput-object v3, v2, v0

    invoke-virtual {v1, v2}, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->setActivity([Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;)V

    goto/16 :goto_16

    .line 265
    :pswitch_ae
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/escorte/EscortCivilMissionEngine;->missionHandler:Lfr/testudo/spacecorsair/business/mission/engine/escorte/EscortCivilMissionHandler;

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/business/mission/engine/escorte/EscortCivilMissionHandler;->gimmeTargetToAddToLevel()Lfr/testudo/spacecorsair/business/world/civil/CivilShip;

    move-result-object v0

    iput-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/escorte/EscortCivilMissionEngine;->escortTarget:Lfr/testudo/spacecorsair/business/world/civil/CivilShip;

    .line 266
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/escorte/EscortCivilMissionEngine;->escortTarget:Lfr/testudo/spacecorsair/business/world/civil/CivilShip;

    iput-boolean v6, v0, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->neverEscapeWhenInjured:Z

    .line 267
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/escorte/EscortCivilMissionEngine;->escortTarget:Lfr/testudo/spacecorsair/business/world/civil/CivilShip;

    iput-boolean v6, v0, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->allowPlayerDamage:Z

    .line 268
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/escorte/EscortCivilMissionEngine;->escortTarget:Lfr/testudo/spacecorsair/business/world/civil/CivilShip;

    iget v1, p0, Lfr/testudo/spacecorsair/business/mission/engine/escorte/EscortCivilMissionEngine;->lastEscortShipLife:F

    iput v1, v0, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->life:F

    .line 269
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/escorte/EscortCivilMissionEngine;->escortTarget:Lfr/testudo/spacecorsair/business/world/civil/CivilShip;

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/mission/engine/escorte/EscortCivilMissionEngine;->escortTarget:Lfr/testudo/spacecorsair/business/world/civil/CivilShip;

    iget v1, v1, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->life:F

    const/high16 v2, 0x42c80000    # 100.0f

    mul-float/2addr v1, v2

    iget-object v2, p0, Lfr/testudo/spacecorsair/business/mission/engine/escorte/EscortCivilMissionEngine;->escortTarget:Lfr/testudo/spacecorsair/business/world/civil/CivilShip;

    iget v2, v2, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->maxLife:F

    div-float/2addr v1, v2

    iput v1, v0, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->lifeInPourc:F

    .line 270
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/escorte/EscortCivilMissionEngine;->escortTarget:Lfr/testudo/spacecorsair/business/world/civil/CivilShip;

    iget-object v0, v0, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->lifeBar:Lfr/testudo/spacecorsair/display/hud/InfoBarEnnemis;

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/mission/engine/escorte/EscortCivilMissionEngine;->escortTarget:Lfr/testudo/spacecorsair/business/world/civil/CivilShip;

    iget v1, v1, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->lifeInPourc:F

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/display/hud/InfoBarEnnemis;->setValue(F)V

    .line 271
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/mission/engine/escorte/EscortCivilMissionEngine;->escortTarget:Lfr/testudo/spacecorsair/business/world/civil/CivilShip;

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->queueElementToBeAddToLevel(Lfr/testudo/spacecorsair/business/Element;)V

    .line 272
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/Game;->currentLevel:Lfr/testudo/spacecorsair/game/levels/Level;

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/mission/engine/escorte/EscortCivilMissionEngine;->nextPortalPopName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/game/levels/Level;->findPortalByName(Ljava/lang/String;)Lfr/testudo/spacecorsair/business/world/Portal;

    move-result-object v1

    .line 273
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/Game;->currentLevel:Lfr/testudo/spacecorsair/game/levels/Level;

    iget-object v2, p0, Lfr/testudo/spacecorsair/business/mission/engine/escorte/EscortCivilMissionEngine;->deliverZoneId:Lfr/testudo/spacecorsair/game/levels/LevelId;

    invoke-static {v2}, Lfr/testudo/spacecorsair/business/world/PathFinder;->getPortalNameToGoTo(Lfr/testudo/spacecorsair/game/levels/LevelId;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lfr/testudo/spacecorsair/game/levels/Level;->findPortalByName(Ljava/lang/String;)Lfr/testudo/spacecorsair/business/world/Portal;

    move-result-object v0

    .line 275
    if-nez v0, :cond_188

    iget-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/escorte/EscortCivilMissionEngine;->finalEscortPosition:Lfr/testudo/spacecorsair/engine/Vector2;

    .line 276
    :goto_106
    iget-boolean v2, p0, Lfr/testudo/spacecorsair/business/mission/engine/escorte/EscortCivilMissionEngine;->escortPopOnLastPortal:Z

    if-eqz v2, :cond_1d8

    .line 277
    if-nez v1, :cond_18c

    .line 279
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/escorte/EscortCivilMissionEngine;->escortTarget:Lfr/testudo/spacecorsair/business/world/civil/CivilShip;

    sget-object v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v1, v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->playerShip:Lfr/testudo/spacecorsair/business/player/PlayerShip;

    iget-object v1, v1, Lfr/testudo/spacecorsair/business/player/PlayerShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v1, v1, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    add-float/2addr v1, v7

    sget-object v2, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v2, v2, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->playerShip:Lfr/testudo/spacecorsair/business/player/PlayerShip;

    iget-object v2, v2, Lfr/testudo/spacecorsair/business/player/PlayerShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v2, v2, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    invoke-virtual {v0, v1, v2}, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->setPosition(FF)Lfr/testudo/spacecorsair/business/Element;

    .line 280
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/escorte/EscortCivilMissionEngine;->escortTarget:Lfr/testudo/spacecorsair/business/world/civil/CivilShip;

    iget-object v0, v0, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v1, v0, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    add-float/2addr v1, v7

    iput v1, v0, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    .line 298
    :goto_12b
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/Game;->currentLevel:Lfr/testudo/spacecorsair/game/levels/Level;

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/mission/engine/escorte/EscortCivilMissionEngine;->deliverZoneId:Lfr/testudo/spacecorsair/game/levels/LevelId;

    invoke-static {v1}, Lfr/testudo/spacecorsair/business/world/PathFinder;->getPortalNameToGoTo(Lfr/testudo/spacecorsair/game/levels/LevelId;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/game/levels/Level;->findPortalByName(Ljava/lang/String;)Lfr/testudo/spacecorsair/business/world/Portal;

    move-result-object v0

    .line 299
    if-eqz v0, :cond_2a

    .line 303
    iput-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/escorte/EscortCivilMissionEngine;->nextSectorPortal:Lfr/testudo/spacecorsair/business/world/Portal;

    .line 304
    iget-object v1, v0, Lfr/testudo/spacecorsair/business/world/Portal;->jumpLevelName:Ljava/lang/String;

    invoke-static {v1}, Lfr/testudo/spacecorsair/game/levels/LevelId;->getByLevelName(Ljava/lang/String;)Lfr/testudo/spacecorsair/game/levels/LevelId;

    move-result-object v1

    iput-object v1, p0, Lfr/testudo/spacecorsair/business/mission/engine/escorte/EscortCivilMissionEngine;->nextEscortSector:Lfr/testudo/spacecorsair/game/levels/LevelId;

    .line 305
    iget-object v1, v0, Lfr/testudo/spacecorsair/business/world/Portal;->jumpPortalName:Ljava/lang/String;

    iput-object v1, p0, Lfr/testudo/spacecorsair/business/mission/engine/escorte/EscortCivilMissionEngine;->nextPortalPopName:Ljava/lang/String;

    .line 306
    iget-object v1, p0, Lfr/testudo/spacecorsair/business/mission/engine/escorte/EscortCivilMissionEngine;->escortTarget:Lfr/testudo/spacecorsair/business/world/civil/CivilShip;

    const/4 v2, 0x4

    new-array v2, v2, [Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;

    invoke-static {v9}, Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;->newWait(F)Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;

    move-result-object v3

    invoke-virtual {v3}, Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;->enableSelfDefense()Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;

    move-result-object v3

    aput-object v3, v2, v8

    iget-object v0, v0, Lfr/testudo/spacecorsair/business/world/Portal;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-static {v0}, Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;->newMoove(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;

    move-result-object v0

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;->enableSelfDefense()Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;

    move-result-object v0

    aput-object v0, v2, v6

    const/high16 v0, 0x3f000000    # 0.5f

    invoke-static {v0}, Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;->newWait(F)Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;

    move-result-object v0

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;->enableSelfDefense()Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;

    move-result-object v0

    aput-object v0, v2, v10

    const/4 v0, 0x3

    invoke-static {}, Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;->newDiseapear()Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;

    move-result-object v3

    iget-object v4, p0, Lfr/testudo/spacecorsair/business/mission/engine/escorte/EscortCivilMissionEngine;->targetJumpedListener:Lfr/testudo/spacecorsair/business/world/civil/CivilActivityCompletedListener;

    invoke-virtual {v3, v4}, Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;->withCompleteListener(Lfr/testudo/spacecorsair/business/world/civil/CivilActivityCompletedListener;)Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;

    move-result-object v3

    invoke-virtual {v3}, Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;->enableSelfDefense()Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;

    move-result-object v3

    aput-object v3, v2, v0

    invoke-virtual {v1, v2}, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->setActivity([Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;)V

    goto/16 :goto_16

    .line 275
    :cond_188
    iget-object v0, v0, Lfr/testudo/spacecorsair/business/world/Portal;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    goto/16 :goto_106

    .line 282
    :cond_18c
    iget-object v2, p0, Lfr/testudo/spacecorsair/business/mission/engine/escorte/EscortCivilMissionEngine;->escortTarget:Lfr/testudo/spacecorsair/business/world/civil/CivilShip;

    iget-object v3, v1, Lfr/testudo/spacecorsair/business/world/Portal;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v3, v3, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    add-float/2addr v3, v7

    iget-object v4, v1, Lfr/testudo/spacecorsair/business/world/Portal;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v4, v4, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    invoke-virtual {v2, v3, v4}, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->setPosition(FF)Lfr/testudo/spacecorsair/business/Element;

    .line 285
    iget-object v2, v1, Lfr/testudo/spacecorsair/business/world/Portal;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v2, v0}, Lfr/testudo/spacecorsair/engine/Vector2;->getAngularWithInRad(Lfr/testudo/spacecorsair/engine/Vector2;)D

    move-result-wide v2

    .line 286
    sget-object v0, Lfr/testudo/spacecorsair/business/mission/engine/escorte/EscortCivilMissionEngine;->temp:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    double-to-float v4, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    double-to-float v2, v2

    invoke-virtual {v0, v4, v2}, Lfr/testudo/spacecorsair/engine/Vector2;->set(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 287
    sget-object v0, Lfr/testudo/spacecorsair/business/mission/engine/escorte/EscortCivilMissionEngine;->temp:Lfr/testudo/spacecorsair/engine/Vector2;

    const/high16 v2, 0x44160000    # 600.0f

    invoke-virtual {v0, v2}, Lfr/testudo/spacecorsair/engine/Vector2;->multiply(F)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 288
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/escorte/EscortCivilMissionEngine;->escortTarget:Lfr/testudo/spacecorsair/business/world/civil/CivilShip;

    iget-object v2, v1, Lfr/testudo/spacecorsair/business/world/Portal;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v2, v2, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    sget-object v3, Lfr/testudo/spacecorsair/business/mission/engine/escorte/EscortCivilMissionEngine;->temp:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v3, v3, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    add-float/2addr v2, v3

    iget-object v1, v1, Lfr/testudo/spacecorsair/business/world/Portal;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v1, v1, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    sget-object v3, Lfr/testudo/spacecorsair/business/mission/engine/escorte/EscortCivilMissionEngine;->temp:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v3, v3, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    add-float/2addr v1, v3

    invoke-virtual {v0, v2, v1}, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->setPosition(FF)Lfr/testudo/spacecorsair/business/Element;

    .line 290
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/escorte/EscortCivilMissionEngine;->escortTarget:Lfr/testudo/spacecorsair/business/world/civil/CivilShip;

    iget-object v0, v0, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v1, v0, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    add-float/2addr v1, v7

    iput v1, v0, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    goto/16 :goto_12b

    .line 293
    :cond_1d8
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/escorte/EscortCivilMissionEngine;->escortTarget:Lfr/testudo/spacecorsair/business/world/civil/CivilShip;

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/mission/engine/escorte/EscortCivilMissionEngine;->lastEscortPosition:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->setPosition(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/business/Element;

    goto/16 :goto_12b

    .line 318
    :pswitch_1e1
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/escorte/EscortCivilMissionEngine;->missionHandler:Lfr/testudo/spacecorsair/business/mission/engine/escorte/EscortCivilMissionHandler;

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/business/mission/engine/escorte/EscortCivilMissionHandler;->gimmeTargetToAddToLevel()Lfr/testudo/spacecorsair/business/world/civil/CivilShip;

    move-result-object v0

    iput-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/escorte/EscortCivilMissionEngine;->escortTarget:Lfr/testudo/spacecorsair/business/world/civil/CivilShip;

    .line 319
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/escorte/EscortCivilMissionEngine;->escortTarget:Lfr/testudo/spacecorsair/business/world/civil/CivilShip;

    iput-boolean v6, v0, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->neverEscapeWhenInjured:Z

    .line 320
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/escorte/EscortCivilMissionEngine;->escortTarget:Lfr/testudo/spacecorsair/business/world/civil/CivilShip;

    iput-boolean v6, v0, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->allowPlayerDamage:Z

    .line 321
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/escorte/EscortCivilMissionEngine;->escortTarget:Lfr/testudo/spacecorsair/business/world/civil/CivilShip;

    iget v1, p0, Lfr/testudo/spacecorsair/business/mission/engine/escorte/EscortCivilMissionEngine;->lastEscortShipLife:F

    iput v1, v0, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->life:F

    .line 322
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/escorte/EscortCivilMissionEngine;->escortTarget:Lfr/testudo/spacecorsair/business/world/civil/CivilShip;

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/mission/engine/escorte/EscortCivilMissionEngine;->escortTarget:Lfr/testudo/spacecorsair/business/world/civil/CivilShip;

    iget v1, v1, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->life:F

    const/high16 v2, 0x42c80000    # 100.0f

    mul-float/2addr v1, v2

    iget-object v2, p0, Lfr/testudo/spacecorsair/business/mission/engine/escorte/EscortCivilMissionEngine;->escortTarget:Lfr/testudo/spacecorsair/business/world/civil/CivilShip;

    iget v2, v2, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->maxLife:F

    div-float/2addr v1, v2

    iput v1, v0, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->lifeInPourc:F

    .line 323
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/escorte/EscortCivilMissionEngine;->escortTarget:Lfr/testudo/spacecorsair/business/world/civil/CivilShip;

    iget-object v0, v0, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->lifeBar:Lfr/testudo/spacecorsair/display/hud/InfoBarEnnemis;

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/mission/engine/escorte/EscortCivilMissionEngine;->escortTarget:Lfr/testudo/spacecorsair/business/world/civil/CivilShip;

    iget v1, v1, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->lifeInPourc:F

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/display/hud/InfoBarEnnemis;->setValue(F)V

    .line 324
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/mission/engine/escorte/EscortCivilMissionEngine;->escortTarget:Lfr/testudo/spacecorsair/business/world/civil/CivilShip;

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->queueElementToBeAddToLevel(Lfr/testudo/spacecorsair/business/Element;)V

    .line 325
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/Game;->currentLevel:Lfr/testudo/spacecorsair/game/levels/Level;

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/mission/engine/escorte/EscortCivilMissionEngine;->nextPortalPopName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/game/levels/Level;->findPortalByName(Ljava/lang/String;)Lfr/testudo/spacecorsair/business/world/Portal;

    move-result-object v0

    .line 328
    iget-object v1, p0, Lfr/testudo/spacecorsair/business/mission/engine/escorte/EscortCivilMissionEngine;->finalEscortPosition:Lfr/testudo/spacecorsair/engine/Vector2;

    .line 329
    iget-boolean v2, p0, Lfr/testudo/spacecorsair/business/mission/engine/escorte/EscortCivilMissionEngine;->escortPopOnLastPortal:Z

    if-eqz v2, :cond_2db

    .line 330
    if-nez v0, :cond_28f

    .line 332
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/escorte/EscortCivilMissionEngine;->escortTarget:Lfr/testudo/spacecorsair/business/world/civil/CivilShip;

    sget-object v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v1, v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->playerShip:Lfr/testudo/spacecorsair/business/player/PlayerShip;

    iget-object v1, v1, Lfr/testudo/spacecorsair/business/player/PlayerShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v1, v1, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    add-float/2addr v1, v7

    sget-object v2, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v2, v2, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->playerShip:Lfr/testudo/spacecorsair/business/player/PlayerShip;

    iget-object v2, v2, Lfr/testudo/spacecorsair/business/player/PlayerShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v2, v2, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    invoke-virtual {v0, v1, v2}, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->setPosition(FF)Lfr/testudo/spacecorsair/business/Element;

    .line 333
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/escorte/EscortCivilMissionEngine;->escortTarget:Lfr/testudo/spacecorsair/business/world/civil/CivilShip;

    iget-object v0, v0, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v1, v0, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    add-float/2addr v1, v7

    iput v1, v0, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    .line 351
    :goto_24c
    const/4 v0, 0x0

    iput-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/escorte/EscortCivilMissionEngine;->nextSectorPortal:Lfr/testudo/spacecorsair/business/world/Portal;

    .line 352
    const/4 v0, 0x0

    iput-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/escorte/EscortCivilMissionEngine;->nextEscortSector:Lfr/testudo/spacecorsair/game/levels/LevelId;

    .line 353
    const/4 v0, 0x0

    iput-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/escorte/EscortCivilMissionEngine;->nextPortalPopName:Ljava/lang/String;

    .line 354
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/escorte/EscortCivilMissionEngine;->escortTarget:Lfr/testudo/spacecorsair/business/world/civil/CivilShip;

    const/4 v1, 0x4

    new-array v1, v1, [Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;

    invoke-static {v9}, Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;->newWait(F)Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;

    move-result-object v2

    invoke-virtual {v2}, Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;->enableSelfDefense()Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;

    move-result-object v2

    aput-object v2, v1, v8

    iget-object v2, p0, Lfr/testudo/spacecorsair/business/mission/engine/escorte/EscortCivilMissionEngine;->finalEscortPosition:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-static {v2}, Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;->newMoove(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;

    move-result-object v2

    invoke-virtual {v2}, Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;->enableSelfDefense()Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;

    move-result-object v2

    aput-object v2, v1, v6

    invoke-static {v9}, Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;->newWait(F)Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;

    move-result-object v2

    iget-object v3, p0, Lfr/testudo/spacecorsair/business/mission/engine/escorte/EscortCivilMissionEngine;->escortDockedListener:Lfr/testudo/spacecorsair/business/world/civil/CivilActivityCompletedListener;

    invoke-virtual {v2, v3}, Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;->withCompleteListener(Lfr/testudo/spacecorsair/business/world/civil/CivilActivityCompletedListener;)Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;

    move-result-object v2

    invoke-virtual {v2}, Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;->enableSelfDefense()Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;

    move-result-object v2

    aput-object v2, v1, v10

    const/4 v2, 0x3

    const v3, 0x4d8f0d18    # 3.0E8f

    invoke-static {v3}, Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;->newWait(F)Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->setActivity([Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;)V

    goto/16 :goto_16

    .line 335
    :cond_28f
    iget-object v2, p0, Lfr/testudo/spacecorsair/business/mission/engine/escorte/EscortCivilMissionEngine;->escortTarget:Lfr/testudo/spacecorsair/business/world/civil/CivilShip;

    iget-object v3, v0, Lfr/testudo/spacecorsair/business/world/Portal;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v3, v3, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    add-float/2addr v3, v7

    iget-object v4, v0, Lfr/testudo/spacecorsair/business/world/Portal;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v4, v4, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    invoke-virtual {v2, v3, v4}, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->setPosition(FF)Lfr/testudo/spacecorsair/business/Element;

    .line 338
    iget-object v2, v0, Lfr/testudo/spacecorsair/business/world/Portal;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v2, v1}, Lfr/testudo/spacecorsair/engine/Vector2;->getAngularWithInRad(Lfr/testudo/spacecorsair/engine/Vector2;)D

    move-result-wide v2

    .line 339
    sget-object v1, Lfr/testudo/spacecorsair/business/mission/engine/escorte/EscortCivilMissionEngine;->temp:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    double-to-float v4, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    double-to-float v2, v2

    invoke-virtual {v1, v4, v2}, Lfr/testudo/spacecorsair/engine/Vector2;->set(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 340
    sget-object v1, Lfr/testudo/spacecorsair/business/mission/engine/escorte/EscortCivilMissionEngine;->temp:Lfr/testudo/spacecorsair/engine/Vector2;

    const/high16 v2, 0x44160000    # 600.0f

    invoke-virtual {v1, v2}, Lfr/testudo/spacecorsair/engine/Vector2;->multiply(F)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 341
    iget-object v1, p0, Lfr/testudo/spacecorsair/business/mission/engine/escorte/EscortCivilMissionEngine;->escortTarget:Lfr/testudo/spacecorsair/business/world/civil/CivilShip;

    iget-object v2, v0, Lfr/testudo/spacecorsair/business/world/Portal;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v2, v2, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    sget-object v3, Lfr/testudo/spacecorsair/business/mission/engine/escorte/EscortCivilMissionEngine;->temp:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v3, v3, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    add-float/2addr v2, v3

    iget-object v0, v0, Lfr/testudo/spacecorsair/business/world/Portal;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v0, v0, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    sget-object v3, Lfr/testudo/spacecorsair/business/mission/engine/escorte/EscortCivilMissionEngine;->temp:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v3, v3, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    add-float/2addr v0, v3

    invoke-virtual {v1, v2, v0}, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->setPosition(FF)Lfr/testudo/spacecorsair/business/Element;

    .line 343
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/escorte/EscortCivilMissionEngine;->escortTarget:Lfr/testudo/spacecorsair/business/world/civil/CivilShip;

    iget-object v0, v0, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v1, v0, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    add-float/2addr v1, v7

    iput v1, v0, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    goto/16 :goto_24c

    .line 346
    :cond_2db
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/escorte/EscortCivilMissionEngine;->escortTarget:Lfr/testudo/spacecorsair/business/world/civil/CivilShip;

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/mission/engine/escorte/EscortCivilMissionEngine;->lastEscortPosition:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->setPosition(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/business/Element;

    goto/16 :goto_24c

    .line 236
    :pswitch_data_2e4
    .packed-switch 0x1
        :pswitch_2b
        :pswitch_ae
        :pswitch_1e1
    .end packed-switch
.end method

.method private addWaveEnnemies()V
    .registers 13

    .prologue
    .line 480
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/escorte/EscortCivilMissionEngine;->curEscortWave:Lfr/testudo/spacecorsair/business/mission/engine/escorte/EscortWaves;

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/business/mission/engine/escorte/EscortWaves;->pickRandomPack()Lfr/testudo/spacecorsair/business/mission/engine/escorte/EnemyPack;

    move-result-object v2

    .line 481
    if-nez v2, :cond_9

    .line 513
    :cond_8
    return-void

    .line 485
    :cond_9
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v0

    const-wide v4, 0x4076800000000000L    # 360.0

    mul-double/2addr v0, v4

    double-to-int v0, v0

    .line 487
    iget-object v1, v2, Lfr/testudo/spacecorsair/business/mission/engine/escorte/EnemyPack;->enemyType:Lfr/testudo/spacecorsair/business/ennemis/EnnemisType;

    sget-object v3, Lfr/testudo/spacecorsair/business/ennemis/EnnemisType;->ROCKET_TOURELLE:Lfr/testudo/spacecorsair/business/ennemis/EnnemisType;

    invoke-virtual {v1, v3}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisType;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_32

    iget-object v1, v2, Lfr/testudo/spacecorsair/business/mission/engine/escorte/EnemyPack;->enemyType:Lfr/testudo/spacecorsair/business/ennemis/EnnemisType;

    sget-object v3, Lfr/testudo/spacecorsair/business/ennemis/EnnemisType;->TOURELLE:Lfr/testudo/spacecorsair/business/ennemis/EnnemisType;

    invoke-virtual {v1, v3}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisType;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_32

    iget-object v1, v2, Lfr/testudo/spacecorsair/business/mission/engine/escorte/EnemyPack;->enemyType:Lfr/testudo/spacecorsair/business/ennemis/EnnemisType;

    sget-object v3, Lfr/testudo/spacecorsair/business/ennemis/EnnemisType;->ALIEN_TOURELLE:Lfr/testudo/spacecorsair/business/ennemis/EnnemisType;

    invoke-virtual {v1, v3}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisType;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_39

    .line 488
    :cond_32
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/escorte/EscortCivilMissionEngine;->escortTarget:Lfr/testudo/spacecorsair/business/world/civil/CivilShip;

    iget v0, v0, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->spin:F

    float-to-int v0, v0

    add-int/lit8 v0, v0, -0x5a

    .line 492
    :cond_39
    const/4 v1, 0x0

    :goto_3a
    iget v3, v2, Lfr/testudo/spacecorsair/business/mission/engine/escorte/EnemyPack;->number:I

    if-ge v1, v3, :cond_8

    .line 493
    iget-object v3, v2, Lfr/testudo/spacecorsair/business/mission/engine/escorte/EnemyPack;->enemyType:Lfr/testudo/spacecorsair/business/ennemis/EnnemisType;

    iget v4, v2, Lfr/testudo/spacecorsair/business/mission/engine/escorte/EnemyPack;->levelMin:I

    iget v5, v2, Lfr/testudo/spacecorsair/business/mission/engine/escorte/EnemyPack;->levelMax:I

    invoke-static {v3, v4, v5}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisFactory;->newEnnemis(Lfr/testudo/spacecorsair/business/ennemis/EnnemisType;II)Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    move-result-object v3

    .line 494
    add-int/lit8 v4, v0, -0x32

    int-to-double v4, v4

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v6

    const-wide/high16 v8, 0x4059000000000000L    # 100.0

    mul-double/2addr v6, v8

    add-double/2addr v4, v6

    double-to-float v4, v4

    invoke-static {v4}, Lfr/testudo/spacecorsair/business/Element;->normalizeSpin(F)F

    move-result v4

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v4

    .line 496
    sget-object v6, Lfr/testudo/spacecorsair/business/mission/engine/escorte/EscortCivilMissionEngine;->temp:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v8

    double-to-float v7, v8

    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    double-to-float v4, v4

    invoke-virtual {v6, v7, v4}, Lfr/testudo/spacecorsair/engine/Vector2;->set(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 497
    sget-object v4, Lfr/testudo/spacecorsair/business/mission/engine/escorte/EscortCivilMissionEngine;->temp:Lfr/testudo/spacecorsair/engine/Vector2;

    const-wide v6, 0x40a3880000000000L    # 2500.0

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v8

    const-wide v10, 0x4082c00000000000L    # 600.0

    mul-double/2addr v8, v10

    add-double/2addr v6, v8

    double-to-float v5, v6

    invoke-virtual {v4, v5}, Lfr/testudo/spacecorsair/engine/Vector2;->multiply(F)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 498
    sget-object v4, Lfr/testudo/spacecorsair/business/mission/engine/escorte/EscortCivilMissionEngine;->temp:Lfr/testudo/spacecorsair/engine/Vector2;

    iget-object v5, p0, Lfr/testudo/spacecorsair/business/mission/engine/escorte/EscortCivilMissionEngine;->escortTarget:Lfr/testudo/spacecorsair/business/world/civil/CivilShip;

    iget-object v5, v5, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v4, v5}, Lfr/testudo/spacecorsair/engine/Vector2;->add(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 499
    sget-object v4, Lfr/testudo/spacecorsair/business/mission/engine/escorte/EscortCivilMissionEngine;->temp:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v3, v4}, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->setPosition(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/business/Element;

    .line 500
    const v4, 0x45dac000    # 7000.0f

    iput v4, v3, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->desengagementDistance:F

    .line 501
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v4

    const-wide v6, 0x3fe6666666666666L    # 0.7

    cmpg-double v4, v4, v6

    if-gez v4, :cond_b6

    .line 502
    iget-object v4, p0, Lfr/testudo/spacecorsair/business/mission/engine/escorte/EscortCivilMissionEngine;->escortTarget:Lfr/testudo/spacecorsair/business/world/civil/CivilShip;

    invoke-virtual {v3, v4}, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->initChase(Lfr/testudo/spacecorsair/business/Element;)Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    .line 506
    :goto_a7
    iget-boolean v4, v2, Lfr/testudo/spacecorsair/business/mission/engine/escorte/EnemyPack;->elite:Z

    if-eqz v4, :cond_ae

    .line 507
    invoke-virtual {v3}, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->setElite()Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    .line 509
    :cond_ae
    sget-object v4, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    invoke-virtual {v4, v3}, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->queueElementToBeAddToLevel(Lfr/testudo/spacecorsair/business/Element;)V

    .line 492
    add-int/lit8 v1, v1, 0x1

    goto :goto_3a

    .line 504
    :cond_b6
    invoke-virtual {v3}, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->initChasePlayer()Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    goto :goto_a7
.end method

.method private displayMissionObjectives(Z)V
    .registers 4

    .prologue
    .line 423
    sget-object v0, Lfr/testudo/spacecorsair/business/mission/engine/escorte/EscortCivilMissionEngine$4;->$SwitchMap$fr$testudo$spacecorsair$business$mission$engine$escorte$EscortCivilMissionEngine$Phase:[I

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/mission/engine/escorte/EscortCivilMissionEngine;->currentPhase:Lfr/testudo/spacecorsair/business/mission/engine/escorte/EscortCivilMissionEngine$Phase;

    invoke-virtual {v1}, Lfr/testudo/spacecorsair/business/mission/engine/escorte/EscortCivilMissionEngine$Phase;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_5c

    .line 453
    :cond_d
    :goto_d
    :pswitch_d
    return-void

    .line 426
    :pswitch_e
    iget-boolean v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/escorte/EscortCivilMissionEngine;->isPlayerInMeetingZone:Z

    if-nez v0, :cond_d

    .line 427
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/Game;->currentLevel:Lfr/testudo/spacecorsair/game/levels/Level;

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/mission/engine/escorte/EscortCivilMissionEngine;->meetingZoneId:Lfr/testudo/spacecorsair/game/levels/LevelId;

    invoke-static {v1}, Lfr/testudo/spacecorsair/business/world/PathFinder;->getPortalNameToGoTo(Lfr/testudo/spacecorsair/game/levels/LevelId;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/game/levels/Level;->findPortalByName(Ljava/lang/String;)Lfr/testudo/spacecorsair/business/world/Portal;

    move-result-object v0

    .line 428
    if-eqz v0, :cond_d

    .line 429
    iput-boolean p1, v0, Lfr/testudo/spacecorsair/business/world/Portal;->isMissionObjective:Z

    .line 430
    sget-object v1, Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;->GREEN:Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;

    iput-object v1, v0, Lfr/testudo/spacecorsair/business/world/Portal;->missionObjectiveColor:Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;

    goto :goto_d

    .line 436
    :pswitch_2b
    iget-boolean v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/escorte/EscortCivilMissionEngine;->isPlayerInRecompenceZone:Z

    if-eqz v0, :cond_43

    .line 438
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/Game;->currentLevel:Lfr/testudo/spacecorsair/game/levels/Level;

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/mission/engine/escorte/EscortCivilMissionEngine;->stationGiveBackName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/game/levels/Level;->findStationByName(Ljava/lang/String;)Lfr/testudo/spacecorsair/business/world/station/Station;

    move-result-object v0

    .line 439
    if-eqz v0, :cond_43

    .line 440
    iput-boolean p1, v0, Lfr/testudo/spacecorsair/business/world/station/Station;->isMissionObjective:Z

    .line 441
    sget-object v1, Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;->ORANGE:Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;

    iput-object v1, v0, Lfr/testudo/spacecorsair/business/world/station/Station;->missionObjectiveColor:Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;

    .line 446
    :cond_43
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/Game;->currentLevel:Lfr/testudo/spacecorsair/game/levels/Level;

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/mission/engine/escorte/EscortCivilMissionEngine;->recompenceZoneId:Lfr/testudo/spacecorsair/game/levels/LevelId;

    invoke-static {v1}, Lfr/testudo/spacecorsair/business/world/PathFinder;->getPortalNameToGoTo(Lfr/testudo/spacecorsair/game/levels/LevelId;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/game/levels/Level;->findPortalByName(Ljava/lang/String;)Lfr/testudo/spacecorsair/business/world/Portal;

    move-result-object v0

    .line 447
    if-eqz v0, :cond_d

    .line 448
    iput-boolean p1, v0, Lfr/testudo/spacecorsair/business/world/Portal;->isMissionObjective:Z

    .line 449
    sget-object v1, Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;->ORANGE:Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;

    iput-object v1, v0, Lfr/testudo/spacecorsair/business/world/Portal;->missionObjectiveColor:Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;

    goto :goto_d

    .line 423
    :pswitch_data_5c
    .packed-switch 0x1
        :pswitch_e
        :pswitch_d
        :pswitch_d
        :pswitch_2b
    .end packed-switch
.end method

.method private initStrings()V
    .registers 4

    .prologue
    .line 83
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget v1, p0, Lfr/testudo/spacecorsair/business/mission/engine/escorte/EscortCivilMissionEngine;->approachTargetLocResourceId:I

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->getStringRessource(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/escorte/EscortCivilMissionEngine;->getCloserFromTargetMessage:Ljava/lang/String;

    .line 84
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

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/mission/engine/escorte/EscortCivilMissionEngine;->meetingZoneId:Lfr/testudo/spacecorsair/game/levels/LevelId;

    iget-object v1, v1, Lfr/testudo/spacecorsair/game/levels/LevelId;->levelName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/escorte/EscortCivilMissionEngine;->gotoTargetSectorMessage:Ljava/lang/String;

    .line 85
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

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/mission/engine/escorte/EscortCivilMissionEngine;->recompenceZoneId:Lfr/testudo/spacecorsair/game/levels/LevelId;

    iget-object v1, v1, Lfr/testudo/spacecorsair/game/levels/LevelId;->levelName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/escorte/EscortCivilMissionEngine;->gotoRecompenseZoneMessage:Ljava/lang/String;

    .line 86
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

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/mission/engine/escorte/EscortCivilMissionEngine;->stationGiveBackName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/escorte/EscortCivilMissionEngine;->textDockToStation:Ljava/lang/String;

    .line 87
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget v1, p0, Lfr/testudo/spacecorsair/business/mission/engine/escorte/EscortCivilMissionEngine;->targetNameResourceId:I

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->getStringRessource(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/escorte/EscortCivilMissionEngine;->targetName:Ljava/lang/String;

    .line 88
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    const v2, 0x7f07037c

    invoke-virtual {v1, v2}, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->getStringRessource(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/mission/engine/escorte/EscortCivilMissionEngine;->targetName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/escorte/EscortCivilMissionEngine;->textEscortTarget:Ljava/lang/String;

    .line 90
    return-void
.end method

.method private onDeliverZoneEnteredWithEscort()V
    .registers 2

    .prologue
    .line 417
    sget-object v0, Lfr/testudo/spacecorsair/business/mission/engine/escorte/EscortCivilMissionEngine$Phase;->DOCK_DESTINATION:Lfr/testudo/spacecorsair/business/mission/engine/escorte/EscortCivilMissionEngine$Phase;

    iput-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/escorte/EscortCivilMissionEngine;->currentPhase:Lfr/testudo/spacecorsair/business/mission/engine/escorte/EscortCivilMissionEngine$Phase;

    .line 418
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/escorte/EscortCivilMissionEngine;->missionHandler:Lfr/testudo/spacecorsair/business/mission/engine/escorte/EscortCivilMissionHandler;

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/business/mission/engine/escorte/EscortCivilMissionHandler;->onEscortReachFinalSector()V

    .line 419
    return-void
.end method

.method private onEscortReachedDestinationPoint()V
    .registers 3

    .prologue
    const/4 v1, 0x1

    .line 516
    iput-boolean v1, p0, Lfr/testudo/spacecorsair/business/mission/engine/escorte/EscortCivilMissionEngine;->completed:Z

    .line 517
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lfr/testudo/spacecorsair/business/mission/engine/escorte/EscortCivilMissionEngine;->displayMissionObjectives(Z)V

    .line 518
    sget-object v0, Lfr/testudo/spacecorsair/business/mission/engine/escorte/EscortCivilMissionEngine$Phase;->GATHER_RECOMP:Lfr/testudo/spacecorsair/business/mission/engine/escorte/EscortCivilMissionEngine$Phase;

    iput-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/escorte/EscortCivilMissionEngine;->currentPhase:Lfr/testudo/spacecorsair/business/mission/engine/escorte/EscortCivilMissionEngine$Phase;

    .line 519
    invoke-direct {p0, v1}, Lfr/testudo/spacecorsair/business/mission/engine/escorte/EscortCivilMissionEngine;->displayMissionObjectives(Z)V

    .line 520
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/escorte/EscortCivilMissionEngine;->missionHandler:Lfr/testudo/spacecorsair/business/mission/engine/escorte/EscortCivilMissionHandler;

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/mission/engine/escorte/EscortCivilMissionEngine;->escortTarget:Lfr/testudo/spacecorsair/business/world/civil/CivilShip;

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/business/mission/engine/escorte/EscortCivilMissionHandler;->onEscortArrivedToFinalPosition(Lfr/testudo/spacecorsair/business/world/civil/CivilShip;)V

    .line 521
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    const v1, 0x7f0702c1

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->getStringRessource(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-static {v0, v1}, Lfr/testudo/spacecorsair/display/hud/WelcomeMessage;->setText(Ljava/lang/String;Ljava/lang/String;)V

    .line 523
    return-void
.end method

.method private onWavePop()V
    .registers 4

    .prologue
    .line 467
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/Game;->currentLevel:Lfr/testudo/spacecorsair/game/levels/Level;

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/mission/engine/escorte/EscortCivilMissionEngine;->curEscortWave:Lfr/testudo/spacecorsair/business/mission/engine/escorte/EscortWaves;

    iget v1, v1, Lfr/testudo/spacecorsair/business/mission/engine/escorte/EscortWaves;->maxNumberOfEnemiesBeforeSendingWave:I

    iget-object v2, p0, Lfr/testudo/spacecorsair/business/mission/engine/escorte/EscortCivilMissionEngine;->escortTarget:Lfr/testudo/spacecorsair/business/world/civil/CivilShip;

    invoke-virtual {v0, v1, v2}, Lfr/testudo/spacecorsair/game/levels/Level;->hasMoreThanEnnemiesAttackingTargetThan(ILfr/testudo/spacecorsair/business/Element;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 469
    iget v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/escorte/EscortCivilMissionEngine;->nextTimeWaveInMilli:I

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/mission/engine/escorte/EscortCivilMissionEngine;->curEscortWave:Lfr/testudo/spacecorsair/business/mission/engine/escorte/EscortWaves;

    iget v1, v1, Lfr/testudo/spacecorsair/business/mission/engine/escorte/EscortWaves;->millisecBetweenWaves:I

    add-int/2addr v0, v1

    iput v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/escorte/EscortCivilMissionEngine;->nextTimeWaveInMilli:I

    .line 476
    :goto_1b
    return-void

    .line 472
    :cond_1c
    invoke-direct {p0}, Lfr/testudo/spacecorsair/business/mission/engine/escorte/EscortCivilMissionEngine;->addWaveEnnemies()V

    .line 473
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/escorte/EscortCivilMissionEngine;->curEscortWave:Lfr/testudo/spacecorsair/business/mission/engine/escorte/EscortWaves;

    iget v0, v0, Lfr/testudo/spacecorsair/business/mission/engine/escorte/EscortWaves;->millisecBetweenWaves:I

    iput v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/escorte/EscortCivilMissionEngine;->nextTimeWaveInMilli:I

    goto :goto_1b
.end method


# virtual methods
.method public getCurrentInstruction()Ljava/lang/String;
    .registers 3

    .prologue
    .line 198
    sget-object v0, Lfr/testudo/spacecorsair/business/mission/engine/escorte/EscortCivilMissionEngine$4;->$SwitchMap$fr$testudo$spacecorsair$business$mission$engine$escorte$EscortCivilMissionEngine$Phase:[I

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/mission/engine/escorte/EscortCivilMissionEngine;->currentPhase:Lfr/testudo/spacecorsair/business/mission/engine/escorte/EscortCivilMissionEngine$Phase;

    invoke-virtual {v1}, Lfr/testudo/spacecorsair/business/mission/engine/escorte/EscortCivilMissionEngine$Phase;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_28

    .line 222
    const-string v0, ""

    :goto_f
    return-object v0

    .line 201
    :pswitch_10
    iget-boolean v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/escorte/EscortCivilMissionEngine;->isPlayerInMeetingZone:Z

    if-eqz v0, :cond_17

    .line 202
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/escorte/EscortCivilMissionEngine;->getCloserFromTargetMessage:Ljava/lang/String;

    goto :goto_f

    .line 205
    :cond_17
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/escorte/EscortCivilMissionEngine;->gotoTargetSectorMessage:Ljava/lang/String;

    goto :goto_f

    .line 210
    :pswitch_1a
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/escorte/EscortCivilMissionEngine;->textEscortTarget:Ljava/lang/String;

    goto :goto_f

    .line 214
    :pswitch_1d
    iget-boolean v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/escorte/EscortCivilMissionEngine;->isPlayerInRecompenceZone:Z

    if-nez v0, :cond_24

    .line 215
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/escorte/EscortCivilMissionEngine;->gotoRecompenseZoneMessage:Ljava/lang/String;

    goto :goto_f

    .line 218
    :cond_24
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/escorte/EscortCivilMissionEngine;->textDockToStation:Ljava/lang/String;

    goto :goto_f

    .line 198
    nop

    :pswitch_data_28
    .packed-switch 0x1
        :pswitch_10
        :pswitch_1a
        :pswitch_1a
        :pswitch_1d
    .end packed-switch
.end method

.method public giveUp()V
    .registers 2

    .prologue
    .line 169
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/escorte/EscortCivilMissionEngine;->escortTarget:Lfr/testudo/spacecorsair/business/world/civil/CivilShip;

    if-eqz v0, :cond_9

    .line 170
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/escorte/EscortCivilMissionEngine;->escortTarget:Lfr/testudo/spacecorsair/business/world/civil/CivilShip;

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->remove()V

    .line 173
    :cond_9
    invoke-virtual {p0}, Lfr/testudo/spacecorsair/business/mission/engine/escorte/EscortCivilMissionEngine;->terminate()V

    .line 174
    return-void
.end method

.method public init()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 155
    sget-object v0, Lfr/testudo/spacecorsair/business/mission/engine/escorte/EscortCivilMissionEngine$Phase;->MEETING_POINT:Lfr/testudo/spacecorsair/business/mission/engine/escorte/EscortCivilMissionEngine$Phase;

    iput-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/escorte/EscortCivilMissionEngine;->currentPhase:Lfr/testudo/spacecorsair/business/mission/engine/escorte/EscortCivilMissionEngine$Phase;

    .line 156
    const/4 v0, 0x0

    iput-boolean v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/escorte/EscortCivilMissionEngine;->completed:Z

    .line 157
    iput-object v1, p0, Lfr/testudo/spacecorsair/business/mission/engine/escorte/EscortCivilMissionEngine;->escortTarget:Lfr/testudo/spacecorsair/business/world/civil/CivilShip;

    .line 158
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/escorte/EscortCivilMissionEngine;->meetingZoneId:Lfr/testudo/spacecorsair/game/levels/LevelId;

    iput-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/escorte/EscortCivilMissionEngine;->currentEscortSector:Lfr/testudo/spacecorsair/game/levels/LevelId;

    .line 159
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/Game;->currentLevel:Lfr/testudo/spacecorsair/game/levels/Level;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/levels/Level;->name:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lfr/testudo/spacecorsair/business/mission/engine/escorte/EscortCivilMissionEngine;->onZoneChanged(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    return-void
.end method

.method public initWaveConfig(Lfr/testudo/spacecorsair/business/mission/engine/escorte/EscortWaves;)V
    .registers 3

    .prologue
    .line 373
    iput-object p1, p0, Lfr/testudo/spacecorsair/business/mission/engine/escorte/EscortCivilMissionEngine;->curEscortWave:Lfr/testudo/spacecorsair/business/mission/engine/escorte/EscortWaves;

    .line 374
    if-eqz p1, :cond_9

    .line 375
    iget v0, p1, Lfr/testudo/spacecorsair/business/mission/engine/escorte/EscortWaves;->millisecBeforeStart:I

    iput v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/escorte/EscortCivilMissionEngine;->nextTimeWaveInMilli:I

    .line 380
    :goto_8
    return-void

    .line 377
    :cond_9
    const v0, 0x7fffffff

    iput v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/escorte/EscortCivilMissionEngine;->nextTimeWaveInMilli:I

    goto :goto_8
.end method

.method public isCompleted()Z
    .registers 2

    .prologue
    .line 227
    iget-boolean v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/escorte/EscortCivilMissionEngine;->completed:Z

    return v0
.end method

.method public onBeforeJump()V
    .registers 3

    .prologue
    .line 555
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/escorte/EscortCivilMissionEngine;->currentPhase:Lfr/testudo/spacecorsair/business/mission/engine/escorte/EscortCivilMissionEngine$Phase;

    sget-object v1, Lfr/testudo/spacecorsair/business/mission/engine/escorte/EscortCivilMissionEngine$Phase;->ESCORT:Lfr/testudo/spacecorsair/business/mission/engine/escorte/EscortCivilMissionEngine$Phase;

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/business/mission/engine/escorte/EscortCivilMissionEngine$Phase;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_18

    iget-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/escorte/EscortCivilMissionEngine;->currentPhase:Lfr/testudo/spacecorsair/business/mission/engine/escorte/EscortCivilMissionEngine$Phase;

    sget-object v1, Lfr/testudo/spacecorsair/business/mission/engine/escorte/EscortCivilMissionEngine$Phase;->DOCK_DESTINATION:Lfr/testudo/spacecorsair/business/mission/engine/escorte/EscortCivilMissionEngine$Phase;

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/business/mission/engine/escorte/EscortCivilMissionEngine$Phase;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_35

    iget-boolean v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/escorte/EscortCivilMissionEngine;->playerInEscortSector:Z

    if-eqz v0, :cond_35

    .line 556
    :cond_18
    iget-boolean v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/escorte/EscortCivilMissionEngine;->escortLeftSector:Z

    if-nez v0, :cond_35

    .line 557
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/escorte/EscortCivilMissionEngine;->nextSectorPortal:Lfr/testudo/spacecorsair/business/world/Portal;

    if-eqz v0, :cond_36

    iget-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/escorte/EscortCivilMissionEngine;->escortTarget:Lfr/testudo/spacecorsair/business/world/civil/CivilShip;

    iget-object v0, v0, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/mission/engine/escorte/EscortCivilMissionEngine;->nextSectorPortal:Lfr/testudo/spacecorsair/business/world/Portal;

    iget-object v1, v1, Lfr/testudo/spacecorsair/business/world/Portal;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/engine/Vector2;->distance(Lfr/testudo/spacecorsair/engine/Vector2;)F

    move-result v0

    const/high16 v1, 0x44960000    # 1200.0f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_36

    .line 559
    invoke-virtual {p0}, Lfr/testudo/spacecorsair/business/mission/engine/escorte/EscortCivilMissionEngine;->onEscortJumped()V

    .line 568
    :cond_35
    :goto_35
    return-void

    .line 563
    :cond_36
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/escorte/EscortCivilMissionEngine;->lastEscortPosition:Lfr/testudo/spacecorsair/engine/Vector2;

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/mission/engine/escorte/EscortCivilMissionEngine;->escortTarget:Lfr/testudo/spacecorsair/business/world/civil/CivilShip;

    iget-object v1, v1, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/engine/Vector2;->setSameAs(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 564
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/escorte/EscortCivilMissionEngine;->escortTarget:Lfr/testudo/spacecorsair/business/world/civil/CivilShip;

    iget v0, v0, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->life:F

    iput v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/escorte/EscortCivilMissionEngine;->lastEscortShipLife:F

    goto :goto_35
.end method

.method public onDoPhysic(J)V
    .registers 6

    .prologue
    .line 457
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/escorte/EscortCivilMissionEngine;->curEscortWave:Lfr/testudo/spacecorsair/business/mission/engine/escorte/EscortWaves;

    if-eqz v0, :cond_2a

    iget-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/escorte/EscortCivilMissionEngine;->currentPhase:Lfr/testudo/spacecorsair/business/mission/engine/escorte/EscortCivilMissionEngine$Phase;

    sget-object v1, Lfr/testudo/spacecorsair/business/mission/engine/escorte/EscortCivilMissionEngine$Phase;->ESCORT:Lfr/testudo/spacecorsair/business/mission/engine/escorte/EscortCivilMissionEngine$Phase;

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/business/mission/engine/escorte/EscortCivilMissionEngine$Phase;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_18

    iget-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/escorte/EscortCivilMissionEngine;->currentPhase:Lfr/testudo/spacecorsair/business/mission/engine/escorte/EscortCivilMissionEngine$Phase;

    sget-object v1, Lfr/testudo/spacecorsair/business/mission/engine/escorte/EscortCivilMissionEngine$Phase;->DOCK_DESTINATION:Lfr/testudo/spacecorsair/business/mission/engine/escorte/EscortCivilMissionEngine$Phase;

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/business/mission/engine/escorte/EscortCivilMissionEngine$Phase;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2a

    :cond_18
    iget-boolean v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/escorte/EscortCivilMissionEngine;->escortLeftSector:Z

    if-nez v0, :cond_2a

    .line 458
    iget v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/escorte/EscortCivilMissionEngine;->nextTimeWaveInMilli:I

    int-to-long v0, v0

    sub-long/2addr v0, p1

    long-to-int v0, v0

    iput v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/escorte/EscortCivilMissionEngine;->nextTimeWaveInMilli:I

    .line 459
    iget v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/escorte/EscortCivilMissionEngine;->nextTimeWaveInMilli:I

    if-gtz v0, :cond_2a

    .line 460
    invoke-direct {p0}, Lfr/testudo/spacecorsair/business/mission/engine/escorte/EscortCivilMissionEngine;->onWavePop()V

    .line 464
    :cond_2a
    return-void
.end method

.method public onElementDestroyed(Lfr/testudo/spacecorsair/business/Element;)V
    .registers 5

    .prologue
    .line 536
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/escorte/EscortCivilMissionEngine;->escortTarget:Lfr/testudo/spacecorsair/business/world/civil/CivilShip;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_24

    iget-boolean v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/escorte/EscortCivilMissionEngine;->completed:Z

    if-nez v0, :cond_24

    .line 537
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    const v1, 0x7f07029c

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->getStringRessource(I)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    const v2, 0x7f0701c5

    invoke-virtual {v1, v2}, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->getStringRessource(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lfr/testudo/spacecorsair/display/hud/WelcomeMessage;->setText(Ljava/lang/String;Ljava/lang/String;)V

    .line 538
    invoke-virtual {p0}, Lfr/testudo/spacecorsair/business/mission/engine/escorte/EscortCivilMissionEngine;->init()V

    .line 541
    :cond_24
    return-void
.end method

.method public onElementDestroyedByPlayer(Lfr/testudo/spacecorsair/business/Element;)V
    .registers 2

    .prologue
    .line 546
    return-void
.end method

.method public onEscortJumped()V
    .registers 4

    .prologue
    const/4 v2, 0x1

    .line 109
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/escorte/EscortCivilMissionEngine;->nextEscortSector:Lfr/testudo/spacecorsair/game/levels/LevelId;

    iput-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/escorte/EscortCivilMissionEngine;->currentEscortSector:Lfr/testudo/spacecorsair/game/levels/LevelId;

    .line 110
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/escorte/EscortCivilMissionEngine;->escortTarget:Lfr/testudo/spacecorsair/business/world/civil/CivilShip;

    iget v0, v0, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->life:F

    iput v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/escorte/EscortCivilMissionEngine;->lastEscortShipLife:F

    .line 111
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/escorte/EscortCivilMissionEngine;->nextSectorPortal:Lfr/testudo/spacecorsair/business/world/Portal;

    iput-boolean v2, v0, Lfr/testudo/spacecorsair/business/world/Portal;->isMissionObjective:Z

    .line 112
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/escorte/EscortCivilMissionEngine;->nextSectorPortal:Lfr/testudo/spacecorsair/business/world/Portal;

    sget-object v1, Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;->GREEN:Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;

    iput-object v1, v0, Lfr/testudo/spacecorsair/business/world/Portal;->missionObjectiveColor:Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;

    .line 113
    iput-boolean v2, p0, Lfr/testudo/spacecorsair/business/mission/engine/escorte/EscortCivilMissionEngine;->escortPopOnLastPortal:Z

    .line 114
    iput-boolean v2, p0, Lfr/testudo/spacecorsair/business/mission/engine/escorte/EscortCivilMissionEngine;->escortLeftSector:Z

    .line 115
    return-void
.end method

.method public onEscortMeeting()V
    .registers 2

    .prologue
    .line 120
    sget-object v0, Lfr/testudo/spacecorsair/business/mission/engine/escorte/EscortCivilMissionEngine$Phase;->ESCORT:Lfr/testudo/spacecorsair/business/mission/engine/escorte/EscortCivilMissionEngine$Phase;

    iput-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/escorte/EscortCivilMissionEngine;->currentPhase:Lfr/testudo/spacecorsair/business/mission/engine/escorte/EscortCivilMissionEngine$Phase;

    .line 121
    const/4 v0, 0x0

    iput-boolean v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/escorte/EscortCivilMissionEngine;->escortPopOnLastPortal:Z

    .line 122
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/escorte/EscortCivilMissionEngine;->missionHandler:Lfr/testudo/spacecorsair/business/mission/engine/escorte/EscortCivilMissionHandler;

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/business/mission/engine/escorte/EscortCivilMissionHandler;->onTargetReached()V

    .line 126
    return-void
.end method

.method public onEveryTenGameSec()V
    .registers 3

    .prologue
    .line 572
    invoke-super {p0}, Lfr/testudo/spacecorsair/business/mission/MissionListener;->onEveryTenGameSec()V

    .line 575
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/escorte/EscortCivilMissionEngine;->currentPhase:Lfr/testudo/spacecorsair/business/mission/engine/escorte/EscortCivilMissionEngine$Phase;

    sget-object v1, Lfr/testudo/spacecorsair/business/mission/engine/escorte/EscortCivilMissionEngine$Phase;->ESCORT:Lfr/testudo/spacecorsair/business/mission/engine/escorte/EscortCivilMissionEngine$Phase;

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/business/mission/engine/escorte/EscortCivilMissionEngine$Phase;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_17

    iget-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/escorte/EscortCivilMissionEngine;->currentPhase:Lfr/testudo/spacecorsair/business/mission/engine/escorte/EscortCivilMissionEngine$Phase;

    sget-object v1, Lfr/testudo/spacecorsair/business/mission/engine/escorte/EscortCivilMissionEngine$Phase;->DOCK_DESTINATION:Lfr/testudo/spacecorsair/business/mission/engine/escorte/EscortCivilMissionEngine$Phase;

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/business/mission/engine/escorte/EscortCivilMissionEngine$Phase;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2c

    :cond_17
    iget-boolean v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/escorte/EscortCivilMissionEngine;->playerInEscortSector:Z

    if-eqz v0, :cond_2c

    iget-boolean v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/escorte/EscortCivilMissionEngine;->escortLeftSector:Z

    if-nez v0, :cond_2c

    iget-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/escorte/EscortCivilMissionEngine;->escortTarget:Lfr/testudo/spacecorsair/business/world/civil/CivilShip;

    iget-boolean v0, v0, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->removed:Z

    if-nez v0, :cond_2c

    .line 576
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/escorte/EscortCivilMissionEngine;->missionHandler:Lfr/testudo/spacecorsair/business/mission/engine/escorte/EscortCivilMissionHandler;

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/mission/engine/escorte/EscortCivilMissionEngine;->escortTarget:Lfr/testudo/spacecorsair/business/world/civil/CivilShip;

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/business/mission/engine/escorte/EscortCivilMissionHandler;->onPlayerAbandonTarget(Lfr/testudo/spacecorsair/business/world/civil/CivilShip;)V

    .line 578
    :cond_2c
    return-void
.end method

.method public onPlayerDeath()V
    .registers 1

    .prologue
    .line 551
    return-void
.end method

.method public onZoneChanged(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 387
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/escorte/EscortCivilMissionEngine;->meetingZoneId:Lfr/testudo/spacecorsair/game/levels/LevelId;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/levels/LevelId;->levelName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3a

    .line 388
    iput-boolean v1, p0, Lfr/testudo/spacecorsair/business/mission/engine/escorte/EscortCivilMissionEngine;->isPlayerInMeetingZone:Z

    .line 395
    :goto_e
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/escorte/EscortCivilMissionEngine;->recompenceZoneId:Lfr/testudo/spacecorsair/game/levels/LevelId;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/levels/LevelId;->levelName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3d

    .line 396
    iput-boolean v1, p0, Lfr/testudo/spacecorsair/business/mission/engine/escorte/EscortCivilMissionEngine;->isPlayerInRecompenceZone:Z

    .line 402
    :goto_1a
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/escorte/EscortCivilMissionEngine;->currentEscortSector:Lfr/testudo/spacecorsair/game/levels/LevelId;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/levels/LevelId;->levelName:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_40

    .line 403
    iput-boolean v1, p0, Lfr/testudo/spacecorsair/business/mission/engine/escorte/EscortCivilMissionEngine;->playerInEscortSector:Z

    .line 404
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/escorte/EscortCivilMissionEngine;->deliverZoneId:Lfr/testudo/spacecorsair/game/levels/LevelId;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/levels/LevelId;->levelName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_33

    .line 405
    invoke-direct {p0}, Lfr/testudo/spacecorsair/business/mission/engine/escorte/EscortCivilMissionEngine;->onDeliverZoneEnteredWithEscort()V

    .line 407
    :cond_33
    invoke-direct {p0}, Lfr/testudo/spacecorsair/business/mission/engine/escorte/EscortCivilMissionEngine;->addEscortToLevel()V

    .line 412
    :goto_36
    invoke-direct {p0, v1}, Lfr/testudo/spacecorsair/business/mission/engine/escorte/EscortCivilMissionEngine;->displayMissionObjectives(Z)V

    .line 413
    return-void

    .line 391
    :cond_3a
    iput-boolean v2, p0, Lfr/testudo/spacecorsair/business/mission/engine/escorte/EscortCivilMissionEngine;->isPlayerInMeetingZone:Z

    goto :goto_e

    .line 399
    :cond_3d
    iput-boolean v2, p0, Lfr/testudo/spacecorsair/business/mission/engine/escorte/EscortCivilMissionEngine;->isPlayerInRecompenceZone:Z

    goto :goto_1a

    .line 409
    :cond_40
    iput-boolean v2, p0, Lfr/testudo/spacecorsair/business/mission/engine/escorte/EscortCivilMissionEngine;->playerInEscortSector:Z

    goto :goto_36
.end method

.method public restoreState()V
    .registers 2

    .prologue
    .line 188
    sget-object v0, Lfr/testudo/spacecorsair/business/mission/engine/escorte/EscortCivilMissionEngine$Phase;->MEETING_POINT:Lfr/testudo/spacecorsair/business/mission/engine/escorte/EscortCivilMissionEngine$Phase;

    iput-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/escorte/EscortCivilMissionEngine;->currentPhase:Lfr/testudo/spacecorsair/business/mission/engine/escorte/EscortCivilMissionEngine$Phase;

    .line 189
    const/4 v0, 0x0

    iput-boolean v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/escorte/EscortCivilMissionEngine;->completed:Z

    .line 190
    const/4 v0, 0x0

    iput-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/escorte/EscortCivilMissionEngine;->escortTarget:Lfr/testudo/spacecorsair/business/world/civil/CivilShip;

    .line 191
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/escorte/EscortCivilMissionEngine;->meetingZoneId:Lfr/testudo/spacecorsair/game/levels/LevelId;

    iput-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/escorte/EscortCivilMissionEngine;->currentEscortSector:Lfr/testudo/spacecorsair/game/levels/LevelId;

    .line 193
    return-void
.end method

.method public saveState()V
    .registers 1

    .prologue
    .line 165
    return-void
.end method

.method public terminate()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 178
    invoke-direct {p0, v0}, Lfr/testudo/spacecorsair/business/mission/engine/escorte/EscortCivilMissionEngine;->displayMissionObjectives(Z)V

    .line 179
    iput-boolean v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/escorte/EscortCivilMissionEngine;->completed:Z

    .line 180
    const/4 v0, 0x0

    iput-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/escorte/EscortCivilMissionEngine;->escortTarget:Lfr/testudo/spacecorsair/business/world/civil/CivilShip;

    .line 181
    sget-object v0, Lfr/testudo/spacecorsair/business/mission/engine/escorte/EscortCivilMissionEngine$Phase;->MEETING_POINT:Lfr/testudo/spacecorsair/business/mission/engine/escorte/EscortCivilMissionEngine$Phase;

    iput-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/escorte/EscortCivilMissionEngine;->currentPhase:Lfr/testudo/spacecorsair/business/mission/engine/escorte/EscortCivilMissionEngine$Phase;

    .line 182
    return-void
.end method
