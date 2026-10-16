.class public Lfr/testudo/spacecorsair/business/mission/engine/TutorialMissionEngine;
.super Lfr/testudo/spacecorsair/business/mission/MissionListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lfr/testudo/spacecorsair/business/mission/engine/TutorialMissionEngine$1;,
        Lfr/testudo/spacecorsair/business/mission/engine/TutorialMissionEngine$Phase;
    }
.end annotation


# static fields
.field private static final ASTEROID_POS:Lfr/testudo/spacecorsair/engine/Vector2;


# instance fields
.field private asteroid:Lfr/testudo/spacecorsair/business/world/BigAsteroid;

.field public curPhase:Lfr/testudo/spacecorsair/business/mission/engine/TutorialMissionEngine$Phase;

.field hasShowFirstJump:Z

.field hasShowWelcomeMessage:Z

.field public instructionDestroyAsteroid:Ljava/lang/String;

.field public instructionDockStation:Ljava/lang/String;

.field public instructionGotoAsteroid:Ljava/lang/String;

.field public instructionTakePortal:Ljava/lang/String;

.field isPlayerInRecompenceZone:Z

.field isPlayerInTargetZone:Z

.field public overrideMessageGoto:I

.field private portal:Lfr/testudo/spacecorsair/business/world/Portal;

.field public recompenceZoneId:Lfr/testudo/spacecorsair/game/levels/LevelId;

.field sellStation:Lfr/testudo/spacecorsair/business/world/station/Station;

.field public stationGiveBackName:Ljava/lang/String;

.field public textDockToStation:Ljava/lang/String;

.field public textGotoRecompZone:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 322
    new-instance v0, Lfr/testudo/spacecorsair/engine/Vector2;

    const v1, 0x453b8000    # 3000.0f

    const/high16 v2, 0x43160000    # 150.0f

    invoke-direct {v0, v1, v2}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>(FF)V

    sput-object v0, Lfr/testudo/spacecorsair/business/mission/engine/TutorialMissionEngine;->ASTEROID_POS:Lfr/testudo/spacecorsair/engine/Vector2;

    return-void
.end method

.method public constructor <init>(Lfr/testudo/spacecorsair/game/levels/LevelId;Ljava/lang/String;)V
    .registers 5

    .prologue
    const/4 v1, 0x0

    .line 71
    invoke-direct {p0}, Lfr/testudo/spacecorsair/business/mission/MissionListener;-><init>()V

    .line 46
    sget-object v0, Lfr/testudo/spacecorsair/business/mission/engine/TutorialMissionEngine$Phase;->SHOW_HELP:Lfr/testudo/spacecorsair/business/mission/engine/TutorialMissionEngine$Phase;

    iput-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/TutorialMissionEngine;->curPhase:Lfr/testudo/spacecorsair/business/mission/engine/TutorialMissionEngine$Phase;

    .line 49
    iput-boolean v1, p0, Lfr/testudo/spacecorsair/business/mission/engine/TutorialMissionEngine;->isPlayerInRecompenceZone:Z

    .line 50
    iput-boolean v1, p0, Lfr/testudo/spacecorsair/business/mission/engine/TutorialMissionEngine;->isPlayerInTargetZone:Z

    .line 51
    iput-boolean v1, p0, Lfr/testudo/spacecorsair/business/mission/engine/TutorialMissionEngine;->hasShowWelcomeMessage:Z

    .line 53
    iput-boolean v1, p0, Lfr/testudo/spacecorsair/business/mission/engine/TutorialMissionEngine;->hasShowFirstJump:Z

    .line 62
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    const v1, 0x7f070188

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->getLocalizedString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/TutorialMissionEngine;->instructionGotoAsteroid:Ljava/lang/String;

    .line 63
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    const v1, 0x7f070189

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->getLocalizedString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/TutorialMissionEngine;->instructionDestroyAsteroid:Ljava/lang/String;

    .line 64
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    const v1, 0x7f07018a

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->getLocalizedString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/TutorialMissionEngine;->instructionDockStation:Ljava/lang/String;

    .line 65
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    const v1, 0x7f07018b

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->getLocalizedString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/TutorialMissionEngine;->instructionTakePortal:Ljava/lang/String;

    .line 68
    const v0, 0x7fffffff

    iput v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/TutorialMissionEngine;->overrideMessageGoto:I

    .line 396
    const/4 v0, 0x0

    iput-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/TutorialMissionEngine;->sellStation:Lfr/testudo/spacecorsair/business/world/station/Station;

    .line 72
    iput-object p1, p0, Lfr/testudo/spacecorsair/business/mission/engine/TutorialMissionEngine;->recompenceZoneId:Lfr/testudo/spacecorsair/game/levels/LevelId;

    .line 73
    iput-object p2, p0, Lfr/testudo/spacecorsair/business/mission/engine/TutorialMissionEngine;->stationGiveBackName:Ljava/lang/String;

    .line 75
    invoke-direct {p0}, Lfr/testudo/spacecorsair/business/mission/engine/TutorialMissionEngine;->initStrings()V

    .line 77
    return-void
.end method

.method private addDestroyAsteroid()V
    .registers 7

    .prologue
    const/4 v0, 0x1

    const v5, 0x3f333333    # 0.7f

    const/4 v4, 0x0

    .line 325
    invoke-static {}, Lfr/testudo/spacecorsair/business/factory/GamePools;->newBigAsteroid()Lfr/testudo/spacecorsair/business/world/BigAsteroid;

    move-result-object v1

    sget-object v2, Lfr/testudo/spacecorsair/business/mission/engine/TutorialMissionEngine;->ASTEROID_POS:Lfr/testudo/spacecorsair/engine/Vector2;

    new-instance v3, Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-direct {v3, v4, v4}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>(FF)V

    const v4, 0x3ecccccd    # 0.4f

    invoke-virtual {v1, v2, v3, v4}, Lfr/testudo/spacecorsair/business/world/BigAsteroid;->init(Lfr/testudo/spacecorsair/engine/Vector2;Lfr/testudo/spacecorsair/engine/Vector2;F)Lfr/testudo/spacecorsair/business/world/BigAsteroid;

    move-result-object v1

    iput-object v1, p0, Lfr/testudo/spacecorsair/business/mission/engine/TutorialMissionEngine;->asteroid:Lfr/testudo/spacecorsair/business/world/BigAsteroid;

    .line 326
    iget-object v1, p0, Lfr/testudo/spacecorsair/business/mission/engine/TutorialMissionEngine;->asteroid:Lfr/testudo/spacecorsair/business/world/BigAsteroid;

    iget v2, v1, Lfr/testudo/spacecorsair/business/world/BigAsteroid;->life:F

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    iput v2, v1, Lfr/testudo/spacecorsair/business/world/BigAsteroid;->life:F

    .line 327
    iget-object v1, p0, Lfr/testudo/spacecorsair/business/mission/engine/TutorialMissionEngine;->asteroid:Lfr/testudo/spacecorsair/business/world/BigAsteroid;

    const/high16 v2, 0x3f800000    # 1.0f

    iput v2, v1, Lfr/testudo/spacecorsair/business/world/BigAsteroid;->r:F

    .line 328
    iget-object v1, p0, Lfr/testudo/spacecorsair/business/mission/engine/TutorialMissionEngine;->asteroid:Lfr/testudo/spacecorsair/business/world/BigAsteroid;

    iput v5, v1, Lfr/testudo/spacecorsair/business/world/BigAsteroid;->g:F

    .line 329
    iget-object v1, p0, Lfr/testudo/spacecorsair/business/mission/engine/TutorialMissionEngine;->asteroid:Lfr/testudo/spacecorsair/business/world/BigAsteroid;

    iput v5, v1, Lfr/testudo/spacecorsair/business/world/BigAsteroid;->b:F

    .line 331
    iget-object v1, p0, Lfr/testudo/spacecorsair/business/mission/engine/TutorialMissionEngine;->asteroid:Lfr/testudo/spacecorsair/business/world/BigAsteroid;

    iput-boolean v0, v1, Lfr/testudo/spacecorsair/business/world/BigAsteroid;->isMissionObjective:Z

    .line 332
    iget-object v1, p0, Lfr/testudo/spacecorsair/business/mission/engine/TutorialMissionEngine;->asteroid:Lfr/testudo/spacecorsair/business/world/BigAsteroid;

    sget-object v2, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    const v3, 0x7f070190

    invoke-virtual {v2, v3}, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->getLocalizedString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lfr/testudo/spacecorsair/business/world/BigAsteroid;->specificName:Ljava/lang/String;

    .line 333
    iget-object v1, p0, Lfr/testudo/spacecorsair/business/mission/engine/TutorialMissionEngine;->asteroid:Lfr/testudo/spacecorsair/business/world/BigAsteroid;

    sget-object v2, Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;->ORANGE:Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;

    iput-object v2, v1, Lfr/testudo/spacecorsair/business/world/BigAsteroid;->missionObjectiveColor:Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;

    .line 334
    iget-object v1, p0, Lfr/testudo/spacecorsair/business/mission/engine/TutorialMissionEngine;->asteroid:Lfr/testudo/spacecorsair/business/world/BigAsteroid;

    iget-object v2, p0, Lfr/testudo/spacecorsair/business/mission/engine/TutorialMissionEngine;->curPhase:Lfr/testudo/spacecorsair/business/mission/engine/TutorialMissionEngine$Phase;

    sget-object v3, Lfr/testudo/spacecorsair/business/mission/engine/TutorialMissionEngine$Phase;->DESTROY_ASTEROID:Lfr/testudo/spacecorsair/business/mission/engine/TutorialMissionEngine$Phase;

    invoke-virtual {v2, v3}, Lfr/testudo/spacecorsair/business/mission/engine/TutorialMissionEngine$Phase;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5d

    :goto_53
    iput-boolean v0, v1, Lfr/testudo/spacecorsair/business/world/BigAsteroid;->invincible:Z

    .line 335
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/mission/engine/TutorialMissionEngine;->asteroid:Lfr/testudo/spacecorsair/business/world/BigAsteroid;

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->queueElementToBeAddToLevel(Lfr/testudo/spacecorsair/business/Element;)V

    .line 336
    return-void

    .line 334
    :cond_5d
    const/4 v0, 0x0

    goto :goto_53
.end method

.method private initStrings()V
    .registers 4

    .prologue
    .line 87
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

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/mission/engine/TutorialMissionEngine;->recompenceZoneId:Lfr/testudo/spacecorsair/game/levels/LevelId;

    iget-object v1, v1, Lfr/testudo/spacecorsair/game/levels/LevelId;->levelName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/TutorialMissionEngine;->textGotoRecompZone:Ljava/lang/String;

    .line 88
    iget v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/TutorialMissionEngine;->overrideMessageGoto:I

    const v1, 0x7fffffff

    if-ne v0, v1, :cond_52

    .line 89
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

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/mission/engine/TutorialMissionEngine;->stationGiveBackName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/TutorialMissionEngine;->textDockToStation:Ljava/lang/String;

    .line 95
    :goto_51
    return-void

    .line 92
    :cond_52
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget v1, p0, Lfr/testudo/spacecorsair/business/mission/engine/TutorialMissionEngine;->overrideMessageGoto:I

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->getStringRessource(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/TutorialMissionEngine;->textDockToStation:Ljava/lang/String;

    goto :goto_51
.end method

.method private onAsteroidDestroyed()V
    .registers 6

    .prologue
    const v4, 0x7f070187

    const v3, 0x7f020054

    const/16 v2, 0xfa0

    .line 401
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-boolean v0, v0, Lfr/testudo/spacecorsair/game/Game;->mogaConnected:Z

    if-eqz v0, :cond_33

    .line 402
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/Game;->gameThread:Lfr/testudo/spacecorsair/engine/GameThread;

    const v1, 0x7f070192

    invoke-virtual {v0, v3, v4, v1, v2}, Lfr/testudo/spacecorsair/engine/GameThread;->showDialog(IIII)V

    .line 407
    :goto_1c
    sget-object v0, Lfr/testudo/spacecorsair/business/mission/engine/TutorialMissionEngine$Phase;->GOTO_STATION:Lfr/testudo/spacecorsair/business/mission/engine/TutorialMissionEngine$Phase;

    iput-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/TutorialMissionEngine;->curPhase:Lfr/testudo/spacecorsair/business/mission/engine/TutorialMissionEngine$Phase;

    .line 408
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lfr/testudo/spacecorsair/business/mission/engine/TutorialMissionEngine;->setPhaseGateTarget(Z)V

    .line 409
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/Game;->currentLevel:Lfr/testudo/spacecorsair/game/levels/Level;

    sget-object v1, Lfr/testudo/spacecorsair/game/levels/builders/TutorialLevelBuilder;->LOCALISED_STATION_NAME:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/game/levels/Level;->findStationByName(Ljava/lang/String;)Lfr/testudo/spacecorsair/business/world/station/Station;

    move-result-object v0

    iput-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/TutorialMissionEngine;->sellStation:Lfr/testudo/spacecorsair/business/world/station/Station;

    .line 410
    return-void

    .line 404
    :cond_33
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/Game;->gameThread:Lfr/testudo/spacecorsair/engine/GameThread;

    const v1, 0x7f070191

    invoke-virtual {v0, v3, v4, v1, v2}, Lfr/testudo/spacecorsair/engine/GameThread;->showDialog(IIII)V

    goto :goto_1c
.end method

.method private onCloseToAsteroid()V
    .registers 6

    .prologue
    const v4, 0x7f070187

    const v3, 0x7f020054

    const/4 v2, 0x1

    .line 414
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-boolean v0, v0, Lfr/testudo/spacecorsair/game/Game;->mogaConnected:Z

    if-eqz v0, :cond_20

    .line 415
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/Game;->gameThread:Lfr/testudo/spacecorsair/engine/GameThread;

    const v1, 0x7f07018f

    invoke-virtual {v0, v3, v4, v1, v2}, Lfr/testudo/spacecorsair/engine/GameThread;->showDialog(IIII)V

    .line 421
    :goto_1b
    sget-object v0, Lfr/testudo/spacecorsair/business/mission/engine/TutorialMissionEngine$Phase;->DESTROY_ASTEROID:Lfr/testudo/spacecorsair/business/mission/engine/TutorialMissionEngine$Phase;

    iput-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/TutorialMissionEngine;->curPhase:Lfr/testudo/spacecorsair/business/mission/engine/TutorialMissionEngine$Phase;

    .line 424
    return-void

    .line 417
    :cond_20
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/Game;->gameThread:Lfr/testudo/spacecorsair/engine/GameThread;

    const v1, 0x7f07018e

    invoke-virtual {v0, v3, v4, v1, v2}, Lfr/testudo/spacecorsair/engine/GameThread;->showDialog(IIII)V

    goto :goto_1b
.end method

.method private setPhaseGateTarget(Z)V
    .registers 4

    .prologue
    .line 341
    sget-object v0, Lfr/testudo/spacecorsair/business/mission/engine/TutorialMissionEngine$1;->$SwitchMap$fr$testudo$spacecorsair$business$mission$engine$TutorialMissionEngine$Phase:[I

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/mission/engine/TutorialMissionEngine;->curPhase:Lfr/testudo/spacecorsair/business/mission/engine/TutorialMissionEngine$Phase;

    invoke-virtual {v1}, Lfr/testudo/spacecorsair/business/mission/engine/TutorialMissionEngine$Phase;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_56

    .line 378
    :cond_d
    :goto_d
    :pswitch_d
    return-void

    .line 352
    :pswitch_e
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/Game;->currentLevel:Lfr/testudo/spacecorsair/game/levels/Level;

    sget-object v1, Lfr/testudo/spacecorsair/game/levels/builders/TutorialLevelBuilder;->LOCALISED_STATION_NAME:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/game/levels/Level;->findStationByName(Ljava/lang/String;)Lfr/testudo/spacecorsair/business/world/station/Station;

    move-result-object v0

    .line 353
    if-eqz v0, :cond_d

    .line 354
    iput-boolean p1, v0, Lfr/testudo/spacecorsair/business/world/station/Station;->isMissionObjective:Z

    .line 355
    sget-object v1, Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;->ORANGE:Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;

    iput-object v1, v0, Lfr/testudo/spacecorsair/business/world/station/Station;->missionObjectiveColor:Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;

    goto :goto_d

    .line 360
    :pswitch_23
    iget-boolean v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/TutorialMissionEngine;->isPlayerInRecompenceZone:Z

    if-eqz v0, :cond_3c

    .line 361
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/Game;->currentLevel:Lfr/testudo/spacecorsair/game/levels/Level;

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/mission/engine/TutorialMissionEngine;->stationGiveBackName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/game/levels/Level;->findStationByName(Ljava/lang/String;)Lfr/testudo/spacecorsair/business/world/station/Station;

    move-result-object v0

    .line 362
    if-eqz v0, :cond_d

    .line 363
    iput-boolean p1, v0, Lfr/testudo/spacecorsair/business/world/station/Station;->isMissionObjective:Z

    .line 364
    sget-object v1, Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;->ORANGE:Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;

    iput-object v1, v0, Lfr/testudo/spacecorsair/business/world/station/Station;->missionObjectiveColor:Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;

    goto :goto_d

    .line 368
    :cond_3c
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/Game;->currentLevel:Lfr/testudo/spacecorsair/game/levels/Level;

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/mission/engine/TutorialMissionEngine;->recompenceZoneId:Lfr/testudo/spacecorsair/game/levels/LevelId;

    invoke-static {v1}, Lfr/testudo/spacecorsair/business/world/PathFinder;->getPortalNameToGoTo(Lfr/testudo/spacecorsair/game/levels/LevelId;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/game/levels/Level;->findPortalByName(Ljava/lang/String;)Lfr/testudo/spacecorsair/business/world/Portal;

    move-result-object v0

    .line 369
    if-eqz v0, :cond_d

    .line 370
    iput-boolean p1, v0, Lfr/testudo/spacecorsair/business/world/Portal;->isMissionObjective:Z

    .line 371
    sget-object v1, Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;->ORANGE:Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;

    iput-object v1, v0, Lfr/testudo/spacecorsair/business/world/Portal;->missionObjectiveColor:Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;

    goto :goto_d

    .line 341
    nop

    :pswitch_data_56
    .packed-switch 0x1
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_e
        :pswitch_23
        :pswitch_23
        :pswitch_e
    .end packed-switch
.end method

.method private showWelcomeMessage()V
    .registers 6

    .prologue
    const v4, 0x7f070187

    const v3, 0x7f020054

    const/16 v2, 0x4e20

    .line 381
    iget-boolean v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/TutorialMissionEngine;->hasShowWelcomeMessage:Z

    if-eqz v0, :cond_d

    .line 394
    :goto_c
    return-void

    .line 385
    :cond_d
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-boolean v0, v0, Lfr/testudo/spacecorsair/game/Game;->mogaConnected:Z

    if-eqz v0, :cond_29

    .line 386
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/Game;->gameThread:Lfr/testudo/spacecorsair/engine/GameThread;

    const v1, 0x7f07018d

    invoke-virtual {v0, v3, v4, v1, v2}, Lfr/testudo/spacecorsair/engine/GameThread;->showDialog(IIII)V

    .line 391
    :goto_21
    const/4 v0, 0x1

    iput-boolean v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/TutorialMissionEngine;->hasShowWelcomeMessage:Z

    .line 392
    sget-object v0, Lfr/testudo/spacecorsair/business/mission/engine/TutorialMissionEngine$Phase;->GOTO_POSITION:Lfr/testudo/spacecorsair/business/mission/engine/TutorialMissionEngine$Phase;

    iput-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/TutorialMissionEngine;->curPhase:Lfr/testudo/spacecorsair/business/mission/engine/TutorialMissionEngine$Phase;

    goto :goto_c

    .line 389
    :cond_29
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/Game;->gameThread:Lfr/testudo/spacecorsair/engine/GameThread;

    const v1, 0x7f07018c

    invoke-virtual {v0, v3, v4, v1, v2}, Lfr/testudo/spacecorsair/engine/GameThread;->showDialog(IIII)V

    goto :goto_21
.end method


# virtual methods
.method public getCurrentInstruction()Ljava/lang/String;
    .registers 3

    .prologue
    .line 255
    sget-object v0, Lfr/testudo/spacecorsair/business/mission/engine/TutorialMissionEngine$1;->$SwitchMap$fr$testudo$spacecorsair$business$mission$engine$TutorialMissionEngine$Phase:[I

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/mission/engine/TutorialMissionEngine;->curPhase:Lfr/testudo/spacecorsair/business/mission/engine/TutorialMissionEngine$Phase;

    invoke-virtual {v1}, Lfr/testudo/spacecorsair/business/mission/engine/TutorialMissionEngine$Phase;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_2a

    .line 283
    const-string v0, ""

    :goto_f
    return-object v0

    .line 258
    :pswitch_10
    const-string v0, ""

    goto :goto_f

    .line 261
    :pswitch_13
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/TutorialMissionEngine;->instructionGotoAsteroid:Ljava/lang/String;

    goto :goto_f

    .line 264
    :pswitch_16
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/TutorialMissionEngine;->instructionDestroyAsteroid:Ljava/lang/String;

    goto :goto_f

    .line 267
    :pswitch_19
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/TutorialMissionEngine;->instructionDockStation:Ljava/lang/String;

    goto :goto_f

    .line 270
    :pswitch_1c
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/TutorialMissionEngine;->instructionDockStation:Ljava/lang/String;

    goto :goto_f

    .line 274
    :pswitch_1f
    iget-boolean v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/TutorialMissionEngine;->isPlayerInRecompenceZone:Z

    if-eqz v0, :cond_26

    .line 275
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/TutorialMissionEngine;->textDockToStation:Ljava/lang/String;

    goto :goto_f

    .line 278
    :cond_26
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/TutorialMissionEngine;->instructionTakePortal:Ljava/lang/String;

    goto :goto_f

    .line 255
    nop

    :pswitch_data_2a
    .packed-switch 0x1
        :pswitch_10
        :pswitch_13
        :pswitch_16
        :pswitch_19
        :pswitch_1f
        :pswitch_1f
        :pswitch_1c
    .end packed-switch
.end method

.method public giveUp()V
    .registers 1

    .prologue
    .line 307
    invoke-virtual {p0}, Lfr/testudo/spacecorsair/business/mission/engine/TutorialMissionEngine;->terminate()V

    .line 308
    return-void
.end method

.method public init()V
    .registers 3

    .prologue
    .line 289
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/Game;->currentLevel:Lfr/testudo/spacecorsair/game/levels/Level;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/levels/Level;->name:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lfr/testudo/spacecorsair/business/mission/engine/TutorialMissionEngine;->onZoneChanged(Ljava/lang/String;Ljava/lang/String;)V

    .line 290
    sget-object v0, Lfr/testudo/spacecorsair/business/mission/engine/TutorialMissionEngine$Phase;->SHOW_HELP:Lfr/testudo/spacecorsair/business/mission/engine/TutorialMissionEngine$Phase;

    iput-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/TutorialMissionEngine;->curPhase:Lfr/testudo/spacecorsair/business/mission/engine/TutorialMissionEngine$Phase;

    .line 291
    const/4 v0, 0x0

    iput-boolean v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/TutorialMissionEngine;->hasShowFirstJump:Z

    .line 292
    return-void
.end method

.method public isCompleted()Z
    .registers 2

    .prologue
    .line 317
    iget-boolean v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/TutorialMissionEngine;->isPlayerInRecompenceZone:Z

    return v0
.end method

.method public onBeforePlayerDock()V
    .registers 1

    .prologue
    .line 197
    return-void
.end method

.method public onCloseToGate()V
    .registers 6

    .prologue
    .line 443
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/Game;->gameThread:Lfr/testudo/spacecorsair/engine/GameThread;

    const v1, 0x7f020054

    const v2, 0x7f070187

    const v3, 0x7f070195

    const/16 v4, 0x3e8

    invoke-virtual {v0, v1, v2, v3, v4}, Lfr/testudo/spacecorsair/engine/GameThread;->showDialog(IIII)V

    .line 444
    sget-object v0, Lfr/testudo/spacecorsair/business/mission/engine/TutorialMissionEngine$Phase;->GATHER_RECOMP:Lfr/testudo/spacecorsair/business/mission/engine/TutorialMissionEngine$Phase;

    iput-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/TutorialMissionEngine;->curPhase:Lfr/testudo/spacecorsair/business/mission/engine/TutorialMissionEngine$Phase;

    .line 445
    return-void
.end method

.method public onCloseTostation()V
    .registers 6

    .prologue
    .line 437
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/Game;->gameThread:Lfr/testudo/spacecorsair/engine/GameThread;

    const v1, 0x7f020054

    const v2, 0x7f070187

    const v3, 0x7f070194

    const/16 v4, 0x1f4

    invoke-virtual {v0, v1, v2, v3, v4}, Lfr/testudo/spacecorsair/engine/GameThread;->showDialog(IIII)V

    .line 438
    sget-object v0, Lfr/testudo/spacecorsair/business/mission/engine/TutorialMissionEngine$Phase;->SELL_STUFF:Lfr/testudo/spacecorsair/business/mission/engine/TutorialMissionEngine$Phase;

    iput-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/TutorialMissionEngine;->curPhase:Lfr/testudo/spacecorsair/business/mission/engine/TutorialMissionEngine$Phase;

    .line 439
    return-void
.end method

.method public onDoPhysic(J)V
    .registers 6

    .prologue
    const/high16 v2, 0x44160000    # 600.0f

    .line 218
    sget-object v0, Lfr/testudo/spacecorsair/business/mission/engine/TutorialMissionEngine$1;->$SwitchMap$fr$testudo$spacecorsair$business$mission$engine$TutorialMissionEngine$Phase:[I

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/mission/engine/TutorialMissionEngine;->curPhase:Lfr/testudo/spacecorsair/business/mission/engine/TutorialMissionEngine$Phase;

    invoke-virtual {v1}, Lfr/testudo/spacecorsair/business/mission/engine/TutorialMissionEngine$Phase;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_46

    .line 247
    :cond_f
    :goto_f
    :pswitch_f
    return-void

    .line 223
    :pswitch_10
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/TutorialMissionEngine;->asteroid:Lfr/testudo/spacecorsair/business/world/BigAsteroid;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/TutorialMissionEngine;->asteroid:Lfr/testudo/spacecorsair/business/world/BigAsteroid;

    iget v0, v0, Lfr/testudo/spacecorsair/business/world/BigAsteroid;->distanceToPlayer:F

    cmpg-float v0, v0, v2

    if-gez v0, :cond_f

    .line 224
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/TutorialMissionEngine;->asteroid:Lfr/testudo/spacecorsair/business/world/BigAsteroid;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lfr/testudo/spacecorsair/business/world/BigAsteroid;->invincible:Z

    .line 225
    invoke-direct {p0}, Lfr/testudo/spacecorsair/business/mission/engine/TutorialMissionEngine;->onCloseToAsteroid()V

    goto :goto_f

    .line 236
    :pswitch_25
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/TutorialMissionEngine;->portal:Lfr/testudo/spacecorsair/business/world/Portal;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/TutorialMissionEngine;->portal:Lfr/testudo/spacecorsair/business/world/Portal;

    iget v0, v0, Lfr/testudo/spacecorsair/business/world/Portal;->distanceToPlayer:F

    cmpg-float v0, v0, v2

    if-gez v0, :cond_f

    .line 237
    invoke-virtual {p0}, Lfr/testudo/spacecorsair/business/mission/engine/TutorialMissionEngine;->onCloseToGate()V

    goto :goto_f

    .line 241
    :pswitch_35
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/TutorialMissionEngine;->sellStation:Lfr/testudo/spacecorsair/business/world/station/Station;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/TutorialMissionEngine;->sellStation:Lfr/testudo/spacecorsair/business/world/station/Station;

    iget v0, v0, Lfr/testudo/spacecorsair/business/world/station/Station;->distanceToPlayer:F

    cmpg-float v0, v0, v2

    if-gez v0, :cond_f

    .line 242
    invoke-virtual {p0}, Lfr/testudo/spacecorsair/business/mission/engine/TutorialMissionEngine;->onCloseTostation()V

    goto :goto_f

    .line 218
    nop

    :pswitch_data_46
    .packed-switch 0x1
        :pswitch_f
        :pswitch_10
        :pswitch_f
        :pswitch_f
        :pswitch_25
        :pswitch_f
        :pswitch_35
    .end packed-switch
.end method

.method public onElementDestroyed(Lfr/testudo/spacecorsair/business/Element;)V
    .registers 2

    .prologue
    .line 180
    return-void
.end method

.method public onElementDestroyedByPlayer(Lfr/testudo/spacecorsair/business/Element;)V
    .registers 3

    .prologue
    .line 184
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/TutorialMissionEngine;->asteroid:Lfr/testudo/spacecorsair/business/world/BigAsteroid;

    if-ne p1, v0, :cond_7

    .line 185
    invoke-direct {p0}, Lfr/testudo/spacecorsair/business/mission/engine/TutorialMissionEngine;->onAsteroidDestroyed()V

    .line 187
    :cond_7
    return-void
.end method

.method public onEveryMinute()V
    .registers 1

    .prologue
    .line 175
    return-void
.end method

.method public onEveryTenGameSec()V
    .registers 1

    .prologue
    .line 170
    return-void
.end method

.method public onPlayerBuyItem(Lfr/testudo/spacecorsair/business/loot/SpaceObject;)V
    .registers 2

    .prologue
    .line 207
    return-void
.end method

.method public onPlayerDeath()V
    .registers 1

    .prologue
    .line 192
    return-void
.end method

.method public onPlayerLoot(Lfr/testudo/spacecorsair/business/loot/LootElement;)Z
    .registers 3

    .prologue
    .line 164
    const/4 v0, 0x1

    return v0
.end method

.method public onPlayerSellItem(Lfr/testudo/spacecorsair/business/loot/SpaceObject;)V
    .registers 2

    .prologue
    .line 202
    return-void
.end method

.method public onPlayerUndock()V
    .registers 3

    .prologue
    .line 211
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/TutorialMissionEngine;->curPhase:Lfr/testudo/spacecorsair/business/mission/engine/TutorialMissionEngine$Phase;

    sget-object v1, Lfr/testudo/spacecorsair/business/mission/engine/TutorialMissionEngine$Phase;->SELL_STUFF:Lfr/testudo/spacecorsair/business/mission/engine/TutorialMissionEngine$Phase;

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/business/mission/engine/TutorialMissionEngine$Phase;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 212
    invoke-virtual {p0}, Lfr/testudo/spacecorsair/business/mission/engine/TutorialMissionEngine;->onStuffSold()V

    .line 214
    :cond_d
    return-void
.end method

.method public onStuffSold()V
    .registers 6

    .prologue
    .line 428
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lfr/testudo/spacecorsair/business/mission/engine/TutorialMissionEngine;->setPhaseGateTarget(Z)V

    .line 429
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/Game;->gameThread:Lfr/testudo/spacecorsair/engine/GameThread;

    const v1, 0x7f020054

    const v2, 0x7f070187

    const v3, 0x7f070193

    const/16 v4, 0x1388

    invoke-virtual {v0, v1, v2, v3, v4}, Lfr/testudo/spacecorsair/engine/GameThread;->showDialog(IIII)V

    .line 430
    sget-object v0, Lfr/testudo/spacecorsair/business/mission/engine/TutorialMissionEngine$Phase;->GOTO_GATE:Lfr/testudo/spacecorsair/business/mission/engine/TutorialMissionEngine$Phase;

    iput-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/TutorialMissionEngine;->curPhase:Lfr/testudo/spacecorsair/business/mission/engine/TutorialMissionEngine$Phase;

    .line 431
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/Game;->currentLevel:Lfr/testudo/spacecorsair/game/levels/Level;

    const-string v1, "> genesis <"

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/game/levels/Level;->findPortalByName(Ljava/lang/String;)Lfr/testudo/spacecorsair/business/world/Portal;

    move-result-object v0

    iput-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/TutorialMissionEngine;->portal:Lfr/testudo/spacecorsair/business/world/Portal;

    .line 432
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lfr/testudo/spacecorsair/business/mission/engine/TutorialMissionEngine;->setPhaseGateTarget(Z)V

    .line 433
    return-void
.end method

.method public onZoneChanged(Ljava/lang/String;Ljava/lang/String;)V
    .registers 10

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v6, 0x1

    .line 102
    iput-boolean v1, p0, Lfr/testudo/spacecorsair/business/mission/engine/TutorialMissionEngine;->isPlayerInTargetZone:Z

    .line 103
    iput-boolean v1, p0, Lfr/testudo/spacecorsair/business/mission/engine/TutorialMissionEngine;->isPlayerInRecompenceZone:Z

    .line 104
    iput-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/TutorialMissionEngine;->asteroid:Lfr/testudo/spacecorsair/business/world/BigAsteroid;

    .line 105
    iput-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/TutorialMissionEngine;->portal:Lfr/testudo/spacecorsair/business/world/Portal;

    .line 107
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/TutorialMissionEngine;->recompenceZoneId:Lfr/testudo/spacecorsair/game/levels/LevelId;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/levels/LevelId;->levelName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4e

    .line 108
    iput-boolean v6, p0, Lfr/testudo/spacecorsair/business/mission/engine/TutorialMissionEngine;->isPlayerInRecompenceZone:Z

    .line 109
    sget-object v0, Lfr/testudo/spacecorsair/business/mission/engine/TutorialMissionEngine$Phase;->GATHER_RECOMP:Lfr/testudo/spacecorsair/business/mission/engine/TutorialMissionEngine$Phase;

    iput-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/TutorialMissionEngine;->curPhase:Lfr/testudo/spacecorsair/business/mission/engine/TutorialMissionEngine$Phase;

    .line 111
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/Game;->currentLevel:Lfr/testudo/spacecorsair/game/levels/Level;

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/mission/engine/TutorialMissionEngine;->stationGiveBackName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/game/levels/Level;->findStationByName(Ljava/lang/String;)Lfr/testudo/spacecorsair/business/world/station/Station;

    move-result-object v0

    .line 112
    if-eqz v0, :cond_2f

    .line 113
    iput-boolean v6, v0, Lfr/testudo/spacecorsair/business/world/station/Station;->isMissionObjective:Z

    .line 114
    sget-object v1, Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;->ORANGE:Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;

    iput-object v1, v0, Lfr/testudo/spacecorsair/business/world/station/Station;->missionObjectiveColor:Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;

    .line 126
    :cond_2f
    :goto_2f
    sget-object v0, Lfr/testudo/spacecorsair/business/mission/engine/TutorialMissionEngine$1;->$SwitchMap$fr$testudo$spacecorsair$business$mission$engine$TutorialMissionEngine$Phase:[I

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/mission/engine/TutorialMissionEngine;->curPhase:Lfr/testudo/spacecorsair/business/mission/engine/TutorialMissionEngine$Phase;

    invoke-virtual {v1}, Lfr/testudo/spacecorsair/business/mission/engine/TutorialMissionEngine$Phase;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_a6

    .line 151
    :cond_3c
    :goto_3c
    :pswitch_3c
    iget-boolean v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/TutorialMissionEngine;->isPlayerInRecompenceZone:Z

    if-eqz v0, :cond_4a

    iget-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/TutorialMissionEngine;->curPhase:Lfr/testudo/spacecorsair/business/mission/engine/TutorialMissionEngine$Phase;

    sget-object v1, Lfr/testudo/spacecorsair/business/mission/engine/TutorialMissionEngine$Phase;->GATHER_RECOMP:Lfr/testudo/spacecorsair/business/mission/engine/TutorialMissionEngine$Phase;

    if-eq v0, v1, :cond_4a

    .line 152
    sget-object v0, Lfr/testudo/spacecorsair/business/mission/engine/TutorialMissionEngine$Phase;->GATHER_RECOMP:Lfr/testudo/spacecorsair/business/mission/engine/TutorialMissionEngine$Phase;

    iput-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/TutorialMissionEngine;->curPhase:Lfr/testudo/spacecorsair/business/mission/engine/TutorialMissionEngine$Phase;

    .line 155
    :cond_4a
    invoke-direct {p0, v6}, Lfr/testudo/spacecorsair/business/mission/engine/TutorialMissionEngine;->setPhaseGateTarget(Z)V

    .line 157
    return-void

    .line 118
    :cond_4e
    iput-boolean v1, p0, Lfr/testudo/spacecorsair/business/mission/engine/TutorialMissionEngine;->isPlayerInRecompenceZone:Z

    .line 119
    const-string v0, "tutorial"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 120
    iput-boolean v6, p0, Lfr/testudo/spacecorsair/business/mission/engine/TutorialMissionEngine;->isPlayerInTargetZone:Z

    goto :goto_2f

    .line 129
    :pswitch_5b
    invoke-direct {p0}, Lfr/testudo/spacecorsair/business/mission/engine/TutorialMissionEngine;->showWelcomeMessage()V

    .line 130
    invoke-direct {p0}, Lfr/testudo/spacecorsair/business/mission/engine/TutorialMissionEngine;->addDestroyAsteroid()V

    goto :goto_3c

    .line 133
    :pswitch_62
    invoke-direct {p0}, Lfr/testudo/spacecorsair/business/mission/engine/TutorialMissionEngine;->addDestroyAsteroid()V

    goto :goto_3c

    .line 136
    :pswitch_66
    invoke-direct {p0}, Lfr/testudo/spacecorsair/business/mission/engine/TutorialMissionEngine;->addDestroyAsteroid()V

    goto :goto_3c

    .line 141
    :pswitch_6a
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/Game;->currentLevel:Lfr/testudo/spacecorsair/game/levels/Level;

    const-string v1, "> genesis <"

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/game/levels/Level;->findPortalByName(Ljava/lang/String;)Lfr/testudo/spacecorsair/business/world/Portal;

    move-result-object v0

    iput-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/TutorialMissionEngine;->portal:Lfr/testudo/spacecorsair/business/world/Portal;

    goto :goto_3c

    .line 144
    :pswitch_79
    iget-boolean v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/TutorialMissionEngine;->hasShowFirstJump:Z

    if-nez v0, :cond_3c

    iget-boolean v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/TutorialMissionEngine;->isPlayerInRecompenceZone:Z

    if-eqz v0, :cond_3c

    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->levelProperties:Lfr/testudo/spacecorsair/game/levels/LevelsGlobalProperties;

    iget-boolean v0, v0, Lfr/testudo/spacecorsair/game/levels/LevelsGlobalProperties;->hasAlreadyJump:Z

    if-nez v0, :cond_3c

    .line 145
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/Game;->gameThread:Lfr/testudo/spacecorsair/engine/GameThread;

    const v1, 0x7f020054

    const v2, 0x7f070187

    const v3, 0x7f070196

    const/16 v4, 0x1770

    const-string v5, "SHOW_HELP"

    invoke-virtual/range {v0 .. v5}, Lfr/testudo/spacecorsair/engine/GameThread;->showDialog(IIIILjava/lang/String;)V

    .line 146
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->levelProperties:Lfr/testudo/spacecorsair/game/levels/LevelsGlobalProperties;

    iput-boolean v6, v0, Lfr/testudo/spacecorsair/game/levels/LevelsGlobalProperties;->hasAlreadyJump:Z

    goto :goto_3c

    .line 126
    :pswitch_data_a6
    .packed-switch 0x1
        :pswitch_5b
        :pswitch_62
        :pswitch_66
        :pswitch_3c
        :pswitch_6a
        :pswitch_79
    .end packed-switch
.end method

.method public restoreState()V
    .registers 2

    .prologue
    .line 296
    sget-object v0, Lfr/testudo/spacecorsair/business/mission/engine/TutorialMissionEngine$Phase;->SHOW_HELP:Lfr/testudo/spacecorsair/business/mission/engine/TutorialMissionEngine$Phase;

    iput-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/TutorialMissionEngine;->curPhase:Lfr/testudo/spacecorsair/business/mission/engine/TutorialMissionEngine$Phase;

    .line 297
    const/4 v0, 0x0

    iput-boolean v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/TutorialMissionEngine;->hasShowFirstJump:Z

    .line 298
    return-void
.end method

.method public saveState()V
    .registers 1

    .prologue
    .line 303
    return-void
.end method

.method public setOverrideDockToMessage(I)V
    .registers 2

    .prologue
    .line 81
    iput p1, p0, Lfr/testudo/spacecorsair/business/mission/engine/TutorialMissionEngine;->overrideMessageGoto:I

    .line 83
    return-void
.end method

.method public terminate()V
    .registers 2

    .prologue
    .line 312
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lfr/testudo/spacecorsair/business/mission/engine/TutorialMissionEngine;->setPhaseGateTarget(Z)V

    .line 313
    return-void
.end method
