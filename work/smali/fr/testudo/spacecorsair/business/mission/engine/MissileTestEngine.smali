.class public Lfr/testudo/spacecorsair/business/mission/engine/MissileTestEngine;
.super Lfr/testudo/spacecorsair/business/mission/MissionListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lfr/testudo/spacecorsair/business/mission/engine/MissileTestEngine$1;,
        Lfr/testudo/spacecorsair/business/mission/engine/MissileTestEngine$Phase;
    }
.end annotation


# static fields
.field public static final GUARDIAN_INITIAL_POS:Lfr/testudo/spacecorsair/engine/Vector2;

.field public static final SHOOT_POSITION:Lfr/testudo/spacecorsair/engine/Vector2;

.field private static final activityGotoShootZone:[Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;


# instance fields
.field public comeBackGuardian:Ljava/lang/String;

.field public completed:Z

.field public curMissileInSalve:I

.field public curMissileSalve:I

.field public curSlaveMaxMissile:I

.field currentMissile:Lfr/testudo/spacecorsair/business/projectiles/Missile;

.field public currentPhase:Lfr/testudo/spacecorsair/business/mission/engine/MissileTestEngine$Phase;

.field public failureYouKilledTheShip:Ljava/lang/String;

.field guardian:Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;

.field isInShootArea:Z

.field private isPlayerInRecompenceZone:Z

.field private isPlayerInTargetZone:Z

.field nextTimeMissileLaunch:I

.field public recompenceZoneId:Lfr/testudo/spacecorsair/game/levels/LevelId;

.field public stationBuyTrackerName:Ljava/lang/String;

.field public stationGiveBackName:Ljava/lang/String;

.field public targetZoneId:Lfr/testudo/spacecorsair/game/levels/LevelId;

.field public textBuyTracker:Ljava/lang/String;

.field public textDockToStationGiveBack:Ljava/lang/String;

.field public textDogeMissile:Ljava/lang/String;

.field public textDogeMissileWithCount:Ljava/lang/String;

.field public textFollowGuardian:Ljava/lang/String;

.field public textGotoRecompZone:Ljava/lang/String;

.field public textGotoTargetZone:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const v3, 0x459c4000    # 5000.0f

    .line 69
    new-instance v0, Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-direct {v0}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>()V

    sget-object v1, Lfr/testudo/spacecorsair/game/levels/builders/VentoHighLevelBuilder;->CONSTELLATION_GATE_POS:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/engine/Vector2;->setSameAs(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    move-result-object v0

    const v1, 0x451c4000    # 2500.0f

    const/high16 v2, 0x44480000    # 800.0f

    invoke-virtual {v0, v1, v2}, Lfr/testudo/spacecorsair/engine/Vector2;->add(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    move-result-object v0

    sput-object v0, Lfr/testudo/spacecorsair/business/mission/engine/MissileTestEngine;->GUARDIAN_INITIAL_POS:Lfr/testudo/spacecorsair/engine/Vector2;

    .line 380
    new-instance v0, Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-direct {v0}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>()V

    sget-object v1, Lfr/testudo/spacecorsair/business/mission/engine/MissileTestEngine;->GUARDIAN_INITIAL_POS:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/engine/Vector2;->setSameAs(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    move-result-object v0

    const v1, 0x455ac000    # 3500.0f

    invoke-virtual {v0, v1, v3}, Lfr/testudo/spacecorsair/engine/Vector2;->add(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    move-result-object v0

    sput-object v0, Lfr/testudo/spacecorsair/business/mission/engine/MissileTestEngine;->SHOOT_POSITION:Lfr/testudo/spacecorsair/engine/Vector2;

    .line 381
    const/4 v0, 0x2

    new-array v0, v0, [Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;

    const/4 v1, 0x0

    sget-object v2, Lfr/testudo/spacecorsair/business/mission/engine/MissileTestEngine;->SHOOT_POSITION:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-static {v2}, Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;->newMoove(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    invoke-static {v3}, Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;->newWait(F)Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;

    move-result-object v2

    aput-object v2, v0, v1

    sput-object v0, Lfr/testudo/spacecorsair/business/mission/engine/MissileTestEngine;->activityGotoShootZone:[Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;

    return-void
.end method

.method public constructor <init>(Lfr/testudo/spacecorsair/game/levels/LevelId;Lfr/testudo/spacecorsair/game/levels/LevelId;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    .prologue
    const/4 v0, 0x0

    .line 71
    invoke-direct {p0}, Lfr/testudo/spacecorsair/business/mission/MissionListener;-><init>()V

    .line 47
    iput-boolean v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/MissileTestEngine;->completed:Z

    .line 67
    iput-boolean v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/MissileTestEngine;->isInShootArea:Z

    .line 421
    const/4 v0, 0x3

    iput v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/MissileTestEngine;->curSlaveMaxMissile:I

    .line 461
    const/4 v0, 0x0

    iput-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/MissileTestEngine;->currentMissile:Lfr/testudo/spacecorsair/business/projectiles/Missile;

    .line 462
    const/4 v0, -0x1

    iput v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/MissileTestEngine;->nextTimeMissileLaunch:I

    .line 72
    iput-object p1, p0, Lfr/testudo/spacecorsair/business/mission/engine/MissileTestEngine;->targetZoneId:Lfr/testudo/spacecorsair/game/levels/LevelId;

    .line 73
    iput-object p2, p0, Lfr/testudo/spacecorsair/business/mission/engine/MissileTestEngine;->recompenceZoneId:Lfr/testudo/spacecorsair/game/levels/LevelId;

    .line 74
    iput-object p4, p0, Lfr/testudo/spacecorsair/business/mission/engine/MissileTestEngine;->stationGiveBackName:Ljava/lang/String;

    .line 75
    iput-object p3, p0, Lfr/testudo/spacecorsair/business/mission/engine/MissileTestEngine;->stationBuyTrackerName:Ljava/lang/String;

    .line 77
    invoke-direct {p0}, Lfr/testudo/spacecorsair/business/mission/engine/MissileTestEngine;->initStrings()V

    .line 79
    return-void
.end method

.method private addGuardian()V
    .registers 4

    .prologue
    const/high16 v2, 0x40400000    # 3.0f

    .line 139
    const/16 v0, 0x8

    invoke-static {v0}, Lfr/testudo/spacecorsair/business/world/civil/CivilFactory;->newGuardianCivilShip(I)Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;

    move-result-object v0

    iput-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/MissileTestEngine;->guardian:Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;

    .line 141
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/MissileTestEngine;->guardian:Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;

    sget-object v1, Lfr/testudo/spacecorsair/business/world/UniverseName;->GUARDIAN_SHIP_NAME:Ljava/lang/String;

    iput-object v1, v0, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->specificName:Ljava/lang/String;

    .line 142
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/MissileTestEngine;->guardian:Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->isMissionObjective:Z

    .line 143
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/MissileTestEngine;->guardian:Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;

    iget v1, v0, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->maxLife:F

    mul-float/2addr v1, v2

    iput v1, v0, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->maxLife:F

    .line 144
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/MissileTestEngine;->guardian:Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;

    iget v1, v0, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->life:F

    mul-float/2addr v1, v2

    iput v1, v0, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->life:F

    .line 146
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/MissileTestEngine;->guardian:Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;

    sget-object v1, Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;->GREEN:Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;

    iput-object v1, v0, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->missionObjectiveColor:Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;

    .line 148
    sget-object v0, Lfr/testudo/spacecorsair/business/mission/engine/MissileTestEngine$1;->$SwitchMap$fr$testudo$spacecorsair$business$mission$engine$MissileTestEngine$Phase:[I

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/mission/engine/MissileTestEngine;->currentPhase:Lfr/testudo/spacecorsair/business/mission/engine/MissileTestEngine$Phase;

    invoke-virtual {v1}, Lfr/testudo/spacecorsair/business/mission/engine/MissileTestEngine$Phase;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_66

    .line 160
    :goto_36
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/mission/engine/MissileTestEngine;->guardian:Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->queueElementToBeAddToLevel(Lfr/testudo/spacecorsair/business/Element;)V

    .line 161
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/Game;->currentLevel:Lfr/testudo/spacecorsair/game/levels/Level;

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/game/levels/Level;->requestPlayerGotoLastPosOfElements()V

    .line 163
    return-void

    .line 150
    :pswitch_47
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/MissileTestEngine;->guardian:Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;

    sget-object v1, Lfr/testudo/spacecorsair/business/mission/engine/MissileTestEngine;->GUARDIAN_INITIAL_POS:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->setPosition(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/business/Element;

    goto :goto_36

    .line 153
    :pswitch_4f
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/MissileTestEngine;->guardian:Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;

    sget-object v1, Lfr/testudo/spacecorsair/business/mission/engine/MissileTestEngine;->GUARDIAN_INITIAL_POS:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->setPosition(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/business/Element;

    .line 154
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/MissileTestEngine;->guardian:Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;

    sget-object v1, Lfr/testudo/spacecorsair/business/mission/engine/MissileTestEngine;->activityGotoShootZone:[Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->setActivity([Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;)V

    .line 156
    :pswitch_5d
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/MissileTestEngine;->guardian:Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;

    sget-object v1, Lfr/testudo/spacecorsair/business/mission/engine/MissileTestEngine;->SHOOT_POSITION:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->setPosition(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/business/Element;

    goto :goto_36

    .line 148
    nop

    :pswitch_data_66
    .packed-switch 0x1
        :pswitch_4f
        :pswitch_47
        :pswitch_5d
    .end packed-switch
.end method

.method private initStrings()V
    .registers 4

    .prologue
    .line 82
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

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/mission/engine/MissileTestEngine;->targetZoneId:Lfr/testudo/spacecorsair/game/levels/LevelId;

    iget-object v1, v1, Lfr/testudo/spacecorsair/game/levels/LevelId;->levelName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/MissileTestEngine;->textGotoTargetZone:Ljava/lang/String;

    .line 83
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

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/mission/engine/MissileTestEngine;->recompenceZoneId:Lfr/testudo/spacecorsair/game/levels/LevelId;

    iget-object v1, v1, Lfr/testudo/spacecorsair/game/levels/LevelId;->levelName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/MissileTestEngine;->textGotoRecompZone:Ljava/lang/String;

    .line 84
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

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/mission/engine/MissileTestEngine;->stationGiveBackName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/MissileTestEngine;->textDockToStationGiveBack:Ljava/lang/String;

    .line 85
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    const v1, 0x7f070173

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->getStringRessource(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/MissileTestEngine;->textBuyTracker:Ljava/lang/String;

    .line 86
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    const v1, 0x7f070174

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->getStringRessource(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/MissileTestEngine;->textFollowGuardian:Ljava/lang/String;

    .line 87
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    const v1, 0x7f070175

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->getStringRessource(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/MissileTestEngine;->comeBackGuardian:Ljava/lang/String;

    .line 88
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    const v1, 0x7f070176

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->getStringRessource(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/MissileTestEngine;->textDogeMissile:Ljava/lang/String;

    .line 89
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    const v1, 0x7f07017e

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->getStringRessource(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/MissileTestEngine;->failureYouKilledTheShip:Ljava/lang/String;

    .line 90
    return-void
.end method

.method private setPhaseGateAndStationTarget(Z)V
    .registers 5

    .prologue
    .line 321
    sget-object v0, Lfr/testudo/spacecorsair/business/mission/engine/MissileTestEngine$1;->$SwitchMap$fr$testudo$spacecorsair$business$mission$engine$MissileTestEngine$Phase:[I

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/mission/engine/MissileTestEngine;->currentPhase:Lfr/testudo/spacecorsair/business/mission/engine/MissileTestEngine$Phase;

    invoke-virtual {v1}, Lfr/testudo/spacecorsair/business/mission/engine/MissileTestEngine$Phase;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_9c

    .line 369
    :cond_d
    :goto_d
    return-void

    .line 323
    :pswitch_e
    iget-boolean v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/MissileTestEngine;->isPlayerInTargetZone:Z

    if-eqz v0, :cond_50

    .line 324
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/Game;->currentLevel:Lfr/testudo/spacecorsair/game/levels/Level;

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/mission/engine/MissileTestEngine;->stationBuyTrackerName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/game/levels/Level;->findStationByName(Ljava/lang/String;)Lfr/testudo/spacecorsair/business/world/station/Station;

    move-result-object v0

    .line 325
    if-eqz v0, :cond_d

    .line 326
    iput-boolean p1, v0, Lfr/testudo/spacecorsair/business/world/station/Station;->isMissionObjective:Z

    .line 327
    sget-object v1, Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;->ORANGE:Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;

    iput-object v1, v0, Lfr/testudo/spacecorsair/business/world/station/Station;->missionObjectiveColor:Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;

    .line 328
    if-eqz p1, :cond_3e

    .line 329
    iget-object v1, v0, Lfr/testudo/spacecorsair/business/world/station/Station;->inventory:Lfr/testudo/spacecorsair/business/player/Inventory;

    sget-object v2, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->missionTestMissileRecord:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    invoke-virtual {v1, v2}, Lfr/testudo/spacecorsair/business/player/Inventory;->containObject(Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)Z

    move-result v1

    if-nez v1, :cond_d

    .line 330
    iget-object v0, v0, Lfr/testudo/spacecorsair/business/world/station/Station;->inventory:Lfr/testudo/spacecorsair/business/player/Inventory;

    sget-object v1, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->missionTestMissileRecord:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    invoke-static {v1}, Lfr/testudo/spacecorsair/business/loot/SpaceObject;->of(Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)Lfr/testudo/spacecorsair/business/loot/SpaceObject;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/business/player/Inventory;->addObject(Lfr/testudo/spacecorsair/business/loot/SpaceObject;)Z

    goto :goto_d

    .line 333
    :cond_3e
    iget-object v1, v0, Lfr/testudo/spacecorsair/business/world/station/Station;->inventory:Lfr/testudo/spacecorsair/business/player/Inventory;

    sget-object v2, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->missionTestMissileRecord:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    invoke-virtual {v1, v2}, Lfr/testudo/spacecorsair/business/player/Inventory;->containObject(Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 334
    iget-object v0, v0, Lfr/testudo/spacecorsair/business/world/station/Station;->inventory:Lfr/testudo/spacecorsair/business/player/Inventory;

    sget-object v1, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->missionTestMissileRecord:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/business/player/Inventory;->removeAllOf(Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)V

    goto :goto_d

    .line 342
    :cond_50
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/Game;->currentLevel:Lfr/testudo/spacecorsair/game/levels/Level;

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/mission/engine/MissileTestEngine;->targetZoneId:Lfr/testudo/spacecorsair/game/levels/LevelId;

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

    .line 351
    :pswitch_69
    iget-boolean v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/MissileTestEngine;->isPlayerInRecompenceZone:Z

    if-eqz v0, :cond_82

    .line 353
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/Game;->currentLevel:Lfr/testudo/spacecorsair/game/levels/Level;

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/mission/engine/MissileTestEngine;->stationGiveBackName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/game/levels/Level;->findStationByName(Ljava/lang/String;)Lfr/testudo/spacecorsair/business/world/station/Station;

    move-result-object v0

    .line 354
    if-eqz v0, :cond_d

    .line 355
    iput-boolean p1, v0, Lfr/testudo/spacecorsair/business/world/station/Station;->isMissionObjective:Z

    .line 356
    sget-object v1, Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;->ORANGE:Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;

    iput-object v1, v0, Lfr/testudo/spacecorsair/business/world/station/Station;->missionObjectiveColor:Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;

    goto :goto_d

    .line 362
    :cond_82
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/Game;->currentLevel:Lfr/testudo/spacecorsair/game/levels/Level;

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/mission/engine/MissileTestEngine;->recompenceZoneId:Lfr/testudo/spacecorsair/game/levels/LevelId;

    invoke-static {v1}, Lfr/testudo/spacecorsair/business/world/PathFinder;->getPortalNameToGoTo(Lfr/testudo/spacecorsair/game/levels/LevelId;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/game/levels/Level;->findPortalByName(Ljava/lang/String;)Lfr/testudo/spacecorsair/business/world/Portal;

    move-result-object v0

    .line 363
    if-eqz v0, :cond_d

    .line 364
    iput-boolean p1, v0, Lfr/testudo/spacecorsair/business/world/Portal;->isMissionObjective:Z

    .line 365
    sget-object v1, Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;->ORANGE:Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;

    iput-object v1, v0, Lfr/testudo/spacecorsair/business/world/Portal;->missionObjectiveColor:Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;

    goto/16 :goto_d

    .line 321
    :pswitch_data_9c
    .packed-switch 0x4
        :pswitch_69
        :pswitch_e
    .end packed-switch
.end method


# virtual methods
.method public doMissileLaunch()V
    .registers 5

    .prologue
    .line 466
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/MissileTestEngine;->guardian:Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;

    if-nez v0, :cond_5

    .line 494
    :goto_4
    return-void

    .line 469
    :cond_5
    iget v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/MissileTestEngine;->curMissileSalve:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1c

    .line 471
    invoke-static {}, Lfr/testudo/spacecorsair/business/factory/GamePools;->newMissile()Lfr/testudo/spacecorsair/business/projectiles/Missile;

    move-result-object v0

    sget-object v1, Lfr/testudo/spacecorsair/business/loot/stuff/missile/MissileSpecBuilder;->missionTestWaveOneSpec:Lfr/testudo/spacecorsair/business/loot/stuff/missile/MissileSpec;

    iget-object v2, p0, Lfr/testudo/spacecorsair/business/mission/engine/MissileTestEngine;->guardian:Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;

    sget-object v3, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v3, v3, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->playerShip:Lfr/testudo/spacecorsair/business/player/PlayerShip;

    invoke-virtual {v0, v1, v2, v3}, Lfr/testudo/spacecorsair/business/projectiles/Missile;->initWithSpecs(Lfr/testudo/spacecorsair/business/loot/stuff/missile/MissileSpec;Lfr/testudo/spacecorsair/business/Element;Lfr/testudo/spacecorsair/business/Element;)Lfr/testudo/spacecorsair/business/projectiles/Missile;

    move-result-object v0

    iput-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/MissileTestEngine;->currentMissile:Lfr/testudo/spacecorsair/business/projectiles/Missile;

    .line 473
    :cond_1c
    iget v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/MissileTestEngine;->curMissileSalve:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_33

    .line 475
    invoke-static {}, Lfr/testudo/spacecorsair/business/factory/GamePools;->newMissile()Lfr/testudo/spacecorsair/business/projectiles/Missile;

    move-result-object v0

    sget-object v1, Lfr/testudo/spacecorsair/business/loot/stuff/missile/MissileSpecBuilder;->missionTestWaveTwoSpec:Lfr/testudo/spacecorsair/business/loot/stuff/missile/MissileSpec;

    iget-object v2, p0, Lfr/testudo/spacecorsair/business/mission/engine/MissileTestEngine;->guardian:Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;

    sget-object v3, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v3, v3, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->playerShip:Lfr/testudo/spacecorsair/business/player/PlayerShip;

    invoke-virtual {v0, v1, v2, v3}, Lfr/testudo/spacecorsair/business/projectiles/Missile;->initWithSpecs(Lfr/testudo/spacecorsair/business/loot/stuff/missile/MissileSpec;Lfr/testudo/spacecorsair/business/Element;Lfr/testudo/spacecorsair/business/Element;)Lfr/testudo/spacecorsair/business/projectiles/Missile;

    move-result-object v0

    iput-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/MissileTestEngine;->currentMissile:Lfr/testudo/spacecorsair/business/projectiles/Missile;

    .line 478
    :cond_33
    iget v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/MissileTestEngine;->curMissileSalve:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_4a

    .line 480
    invoke-static {}, Lfr/testudo/spacecorsair/business/factory/GamePools;->newMissile()Lfr/testudo/spacecorsair/business/projectiles/Missile;

    move-result-object v0

    sget-object v1, Lfr/testudo/spacecorsair/business/loot/stuff/missile/MissileSpecBuilder;->missionTestWaveThreeSpec:Lfr/testudo/spacecorsair/business/loot/stuff/missile/MissileSpec;

    iget-object v2, p0, Lfr/testudo/spacecorsair/business/mission/engine/MissileTestEngine;->guardian:Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;

    sget-object v3, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v3, v3, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->playerShip:Lfr/testudo/spacecorsair/business/player/PlayerShip;

    invoke-virtual {v0, v1, v2, v3}, Lfr/testudo/spacecorsair/business/projectiles/Missile;->initWithSpecs(Lfr/testudo/spacecorsair/business/loot/stuff/missile/MissileSpec;Lfr/testudo/spacecorsair/business/Element;Lfr/testudo/spacecorsair/business/Element;)Lfr/testudo/spacecorsair/business/projectiles/Missile;

    move-result-object v0

    iput-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/MissileTestEngine;->currentMissile:Lfr/testudo/spacecorsair/business/projectiles/Missile;

    .line 483
    :cond_4a
    iget v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/MissileTestEngine;->curMissileSalve:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_61

    .line 485
    invoke-static {}, Lfr/testudo/spacecorsair/business/factory/GamePools;->newMissile()Lfr/testudo/spacecorsair/business/projectiles/Missile;

    move-result-object v0

    sget-object v1, Lfr/testudo/spacecorsair/business/loot/stuff/missile/MissileSpecBuilder;->missionTestWaveJokeSpec:Lfr/testudo/spacecorsair/business/loot/stuff/missile/MissileSpec;

    iget-object v2, p0, Lfr/testudo/spacecorsair/business/mission/engine/MissileTestEngine;->guardian:Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;

    sget-object v3, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v3, v3, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->playerShip:Lfr/testudo/spacecorsair/business/player/PlayerShip;

    invoke-virtual {v0, v1, v2, v3}, Lfr/testudo/spacecorsair/business/projectiles/Missile;->initWithSpecs(Lfr/testudo/spacecorsair/business/loot/stuff/missile/MissileSpec;Lfr/testudo/spacecorsair/business/Element;Lfr/testudo/spacecorsair/business/Element;)Lfr/testudo/spacecorsair/business/projectiles/Missile;

    move-result-object v0

    iput-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/MissileTestEngine;->currentMissile:Lfr/testudo/spacecorsair/business/projectiles/Missile;

    .line 488
    :cond_61
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/mission/engine/MissileTestEngine;->currentMissile:Lfr/testudo/spacecorsair/business/projectiles/Missile;

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->queueElementToBeAddToLevel(Lfr/testudo/spacecorsair/business/Element;)V

    .line 489
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/MissileTestEngine;->currentMissile:Lfr/testudo/spacecorsair/business/projectiles/Missile;

    iget-object v0, v0, Lfr/testudo/spacecorsair/business/projectiles/Missile;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/mission/engine/MissileTestEngine;->guardian:Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;

    iget-object v1, v1, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/engine/Vector2;->setSameAs(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 490
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/MissileTestEngine;->currentMissile:Lfr/testudo/spacecorsair/business/projectiles/Missile;

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/mission/engine/MissileTestEngine;->guardian:Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;

    iget v1, v1, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->spin:F

    iput v1, v0, Lfr/testudo/spacecorsair/business/projectiles/Missile;->spin:F

    .line 492
    const v0, 0x2faf080

    iput v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/MissileTestEngine;->nextTimeMissileLaunch:I

    goto :goto_4
.end method

.method public getCurrentInstruction()Ljava/lang/String;
    .registers 3

    .prologue
    .line 232
    sget-object v0, Lfr/testudo/spacecorsair/business/mission/engine/MissileTestEngine$1;->$SwitchMap$fr$testudo$spacecorsair$business$mission$engine$MissileTestEngine$Phase:[I

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/mission/engine/MissileTestEngine;->currentPhase:Lfr/testudo/spacecorsair/business/mission/engine/MissileTestEngine$Phase;

    invoke-virtual {v1}, Lfr/testudo/spacecorsair/business/mission/engine/MissileTestEngine$Phase;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_38

    .line 271
    const-string v0, ""

    :goto_f
    return-object v0

    .line 235
    :pswitch_10
    iget-boolean v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/MissileTestEngine;->isPlayerInTargetZone:Z

    if-eqz v0, :cond_17

    .line 236
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/MissileTestEngine;->textBuyTracker:Ljava/lang/String;

    goto :goto_f

    .line 239
    :cond_17
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/MissileTestEngine;->textGotoTargetZone:Ljava/lang/String;

    goto :goto_f

    .line 244
    :pswitch_1a
    iget-boolean v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/MissileTestEngine;->isPlayerInTargetZone:Z

    if-eqz v0, :cond_21

    .line 245
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/MissileTestEngine;->textFollowGuardian:Ljava/lang/String;

    goto :goto_f

    .line 248
    :cond_21
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/MissileTestEngine;->textGotoTargetZone:Ljava/lang/String;

    goto :goto_f

    .line 253
    :pswitch_24
    iget-boolean v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/MissileTestEngine;->isInShootArea:Z

    if-eqz v0, :cond_2b

    .line 254
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/MissileTestEngine;->textDogeMissileWithCount:Ljava/lang/String;

    goto :goto_f

    .line 257
    :cond_2b
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/MissileTestEngine;->comeBackGuardian:Ljava/lang/String;

    goto :goto_f

    .line 263
    :pswitch_2e
    iget-boolean v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/MissileTestEngine;->isPlayerInRecompenceZone:Z

    if-eqz v0, :cond_35

    .line 264
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/MissileTestEngine;->textDockToStationGiveBack:Ljava/lang/String;

    goto :goto_f

    .line 267
    :cond_35
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/MissileTestEngine;->textGotoRecompZone:Ljava/lang/String;

    goto :goto_f

    .line 232
    :pswitch_data_38
    .packed-switch 0x1
        :pswitch_1a
        :pswitch_1a
        :pswitch_24
        :pswitch_2e
        :pswitch_10
    .end packed-switch
.end method

.method public giveUp()V
    .registers 1

    .prologue
    .line 306
    invoke-virtual {p0}, Lfr/testudo/spacecorsair/business/mission/engine/MissileTestEngine;->terminate()V

    .line 307
    return-void
.end method

.method public init()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 276
    sget-object v0, Lfr/testudo/spacecorsair/business/mission/engine/MissileTestEngine$Phase;->BUY_TRACKER:Lfr/testudo/spacecorsair/business/mission/engine/MissileTestEngine$Phase;

    iput-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/MissileTestEngine;->currentPhase:Lfr/testudo/spacecorsair/business/mission/engine/MissileTestEngine$Phase;

    .line 277
    iput v2, p0, Lfr/testudo/spacecorsair/business/mission/engine/MissileTestEngine;->curMissileSalve:I

    .line 279
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/Game;->playerCurrentShipInventory:Lfr/testudo/spacecorsair/business/player/Inventory;

    sget-object v1, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->missionTestMissileRecord:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/business/player/Inventory;->containObject(Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 280
    sget-object v0, Lfr/testudo/spacecorsair/business/mission/engine/MissileTestEngine$Phase;->GOTO_GUARDIAN:Lfr/testudo/spacecorsair/business/mission/engine/MissileTestEngine$Phase;

    iput-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/MissileTestEngine;->currentPhase:Lfr/testudo/spacecorsair/business/mission/engine/MissileTestEngine$Phase;

    .line 283
    :cond_19
    iput-boolean v2, p0, Lfr/testudo/spacecorsair/business/mission/engine/MissileTestEngine;->completed:Z

    .line 284
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/Game;->currentLevel:Lfr/testudo/spacecorsair/game/levels/Level;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/levels/Level;->name:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lfr/testudo/spacecorsair/business/mission/engine/MissileTestEngine;->onZoneChanged(Ljava/lang/String;Ljava/lang/String;)V

    .line 286
    return-void
.end method

.method public initNewMissileSalve()V
    .registers 8

    .prologue
    const/4 v6, 0x1

    const/16 v5, 0xbb8

    const/4 v2, 0x3

    const v4, 0x7f070178

    const v3, 0x7f020058

    .line 425
    iget v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/MissileTestEngine;->curMissileSalve:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/MissileTestEngine;->curMissileSalve:I

    .line 426
    const/4 v0, 0x0

    iput v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/MissileTestEngine;->curMissileInSalve:I

    .line 428
    iget v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/MissileTestEngine;->curMissileSalve:I

    if-ne v0, v6, :cond_1d

    .line 429
    iput v2, p0, Lfr/testudo/spacecorsair/business/mission/engine/MissileTestEngine;->curSlaveMaxMissile:I

    .line 430
    const/16 v0, 0x1b58

    iput v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/MissileTestEngine;->nextTimeMissileLaunch:I

    .line 433
    :cond_1d
    iget v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/MissileTestEngine;->curMissileSalve:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_34

    .line 434
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/Game;->gameThread:Lfr/testudo/spacecorsair/engine/GameThread;

    const v1, 0x7f07017a

    invoke-virtual {v0, v3, v4, v1, v5}, Lfr/testudo/spacecorsair/engine/GameThread;->showDialog(IIII)V

    .line 435
    const/16 v0, 0x1770

    iput v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/MissileTestEngine;->nextTimeMissileLaunch:I

    .line 436
    iput v2, p0, Lfr/testudo/spacecorsair/business/mission/engine/MissileTestEngine;->curSlaveMaxMissile:I

    .line 439
    :cond_34
    iget v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/MissileTestEngine;->curMissileSalve:I

    if-ne v0, v2, :cond_4b

    .line 440
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/Game;->gameThread:Lfr/testudo/spacecorsair/engine/GameThread;

    const v1, 0x7f07017b

    invoke-virtual {v0, v3, v4, v1, v5}, Lfr/testudo/spacecorsair/engine/GameThread;->showDialog(IIII)V

    .line 441
    const/16 v0, 0x7d0

    iput v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/MissileTestEngine;->nextTimeMissileLaunch:I

    .line 442
    const/4 v0, 0x2

    iput v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/MissileTestEngine;->curSlaveMaxMissile:I

    .line 444
    :cond_4b
    iget v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/MissileTestEngine;->curMissileSalve:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_64

    .line 445
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/Game;->gameThread:Lfr/testudo/spacecorsair/engine/GameThread;

    const v1, 0x7f07017c

    const/16 v2, 0x1388

    invoke-virtual {v0, v3, v4, v1, v2}, Lfr/testudo/spacecorsair/engine/GameThread;->showDialog(IIII)V

    .line 446
    const/16 v0, 0x3e8

    iput v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/MissileTestEngine;->nextTimeMissileLaunch:I

    .line 447
    iput v6, p0, Lfr/testudo/spacecorsair/business/mission/engine/MissileTestEngine;->curSlaveMaxMissile:I

    .line 450
    :cond_64
    iget v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/MissileTestEngine;->curMissileSalve:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_79

    .line 451
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/Game;->gameThread:Lfr/testudo/spacecorsair/engine/GameThread;

    const v1, 0x7f07017d

    invoke-virtual {v0, v3, v4, v1, v5}, Lfr/testudo/spacecorsair/engine/GameThread;->showDialog(IIII)V

    .line 452
    invoke-virtual {p0}, Lfr/testudo/spacecorsair/business/mission/engine/MissileTestEngine;->onAllSalveComplete()V

    .line 458
    :goto_78
    return-void

    .line 456
    :cond_79
    invoke-virtual {p0}, Lfr/testudo/spacecorsair/business/mission/engine/MissileTestEngine;->updateMissileSlaveText()V

    .line 457
    invoke-virtual {p0}, Lfr/testudo/spacecorsair/business/mission/engine/MissileTestEngine;->requestLunchNewMissile()V

    goto :goto_78
.end method

.method public isCompleted()Z
    .registers 2

    .prologue
    .line 316
    iget-boolean v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/MissileTestEngine;->completed:Z

    return v0
.end method

.method public onAllSalveComplete()V
    .registers 4

    .prologue
    const/4 v2, 0x1

    .line 411
    iput-boolean v2, p0, Lfr/testudo/spacecorsair/business/mission/engine/MissileTestEngine;->completed:Z

    .line 412
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    const v1, 0x7f0702c1

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->getStringRessource(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-static {v0, v1}, Lfr/testudo/spacecorsair/display/hud/WelcomeMessage;->setText(Ljava/lang/String;Ljava/lang/String;)V

    .line 413
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/MissileTestEngine;->guardian:Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;

    if-eqz v0, :cond_20

    iget-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/MissileTestEngine;->guardian:Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;

    iget-boolean v0, v0, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->removed:Z

    if-nez v0, :cond_20

    .line 414
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/MissileTestEngine;->guardian:Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->isMissionObjective:Z

    .line 416
    :cond_20
    sget-object v0, Lfr/testudo/spacecorsair/business/mission/engine/MissileTestEngine$Phase;->GATHER_RECOMP:Lfr/testudo/spacecorsair/business/mission/engine/MissileTestEngine$Phase;

    iput-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/MissileTestEngine;->currentPhase:Lfr/testudo/spacecorsair/business/mission/engine/MissileTestEngine$Phase;

    .line 417
    invoke-direct {p0, v2}, Lfr/testudo/spacecorsair/business/mission/engine/MissileTestEngine;->setPhaseGateAndStationTarget(Z)V

    .line 418
    return-void
.end method

.method public onCurrentMissileDestroyed(Z)V
    .registers 4

    .prologue
    .line 509
    if-nez p1, :cond_13

    iget-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/MissileTestEngine;->currentMissile:Lfr/testudo/spacecorsair/business/projectiles/Missile;

    sget-object v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v1, v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->playerShip:Lfr/testudo/spacecorsair/business/player/PlayerShip;

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/business/projectiles/Missile;->testColide(Lfr/testudo/spacecorsair/business/Element;)I

    move-result v0

    if-gtz v0, :cond_13

    iget v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/MissileTestEngine;->curMissileSalve:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_26

    :cond_13
    const/4 v0, 0x1

    .line 510
    :goto_14
    if-eqz v0, :cond_1f

    .line 512
    iget v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/MissileTestEngine;->curMissileInSalve:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/MissileTestEngine;->curMissileInSalve:I

    .line 513
    invoke-virtual {p0}, Lfr/testudo/spacecorsair/business/mission/engine/MissileTestEngine;->updateMissileSlaveText()V

    .line 515
    :cond_1f
    invoke-virtual {p0}, Lfr/testudo/spacecorsair/business/mission/engine/MissileTestEngine;->requestLunchNewMissile()V

    .line 516
    const/4 v0, 0x0

    iput-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/MissileTestEngine;->currentMissile:Lfr/testudo/spacecorsair/business/projectiles/Missile;

    .line 518
    return-void

    .line 509
    :cond_26
    const/4 v0, 0x0

    goto :goto_14
.end method

.method public onDoPhysic(J)V
    .registers 6

    .prologue
    .line 198
    sget-object v0, Lfr/testudo/spacecorsair/business/mission/engine/MissileTestEngine$1;->$SwitchMap$fr$testudo$spacecorsair$business$mission$engine$MissileTestEngine$Phase:[I

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/mission/engine/MissileTestEngine;->currentPhase:Lfr/testudo/spacecorsair/business/mission/engine/MissileTestEngine$Phase;

    invoke-virtual {v1}, Lfr/testudo/spacecorsair/business/mission/engine/MissileTestEngine$Phase;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_62

    .line 226
    :cond_d
    :goto_d
    return-void

    .line 202
    :pswitch_e
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/MissileTestEngine;->guardian:Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/MissileTestEngine;->guardian:Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;

    iget-boolean v0, v0, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->removed:Z

    if-nez v0, :cond_d

    iget-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/MissileTestEngine;->guardian:Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;

    iget v0, v0, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->distanceToPlayer:F

    const/high16 v1, 0x43fa0000    # 500.0f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_d

    .line 203
    invoke-virtual {p0}, Lfr/testudo/spacecorsair/business/mission/engine/MissileTestEngine;->onGuardianReached()V

    goto :goto_d

    .line 207
    :pswitch_26
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/MissileTestEngine;->guardian:Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/MissileTestEngine;->guardian:Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;

    iget-boolean v0, v0, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->removed:Z

    if-nez v0, :cond_d

    iget-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/MissileTestEngine;->guardian:Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;

    iget-object v0, v0, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->currentActivity:Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/MissileTestEngine;->guardian:Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;

    iget-object v0, v0, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->currentActivity:Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;

    iget-object v0, v0, Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;->kind:Lfr/testudo/spacecorsair/business/world/civil/CivilActivity$Kind;

    sget-object v1, Lfr/testudo/spacecorsair/business/world/civil/CivilActivity$Kind;->wait:Lfr/testudo/spacecorsair/business/world/civil/CivilActivity$Kind;

    if-ne v0, v1, :cond_d

    .line 208
    invoke-virtual {p0}, Lfr/testudo/spacecorsair/business/mission/engine/MissileTestEngine;->onShootAreaReached()V

    goto :goto_d

    .line 212
    :pswitch_44
    invoke-virtual {p0}, Lfr/testudo/spacecorsair/business/mission/engine/MissileTestEngine;->updateIsInArea()V

    .line 213
    iget-boolean v1, p0, Lfr/testudo/spacecorsair/business/mission/engine/MissileTestEngine;->isInShootArea:Z

    iget v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/MissileTestEngine;->nextTimeMissileLaunch:I

    if-ltz v0, :cond_60

    const/4 v0, 0x1

    :goto_4e
    and-int/2addr v0, v1

    if-eqz v0, :cond_d

    .line 214
    iget v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/MissileTestEngine;->nextTimeMissileLaunch:I

    int-to-long v0, v0

    sub-long/2addr v0, p1

    long-to-int v0, v0

    iput v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/MissileTestEngine;->nextTimeMissileLaunch:I

    .line 215
    iget v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/MissileTestEngine;->nextTimeMissileLaunch:I

    if-gtz v0, :cond_d

    .line 216
    invoke-virtual {p0}, Lfr/testudo/spacecorsair/business/mission/engine/MissileTestEngine;->doMissileLaunch()V

    goto :goto_d

    .line 213
    :cond_60
    const/4 v0, 0x0

    goto :goto_4e

    .line 198
    :pswitch_data_62
    .packed-switch 0x1
        :pswitch_26
        :pswitch_e
        :pswitch_44
    .end packed-switch
.end method

.method public onElementDestroyed(Lfr/testudo/spacecorsair/business/Element;)V
    .registers 3

    .prologue
    .line 174
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/MissileTestEngine;->currentMissile:Lfr/testudo/spacecorsair/business/projectiles/Missile;

    if-ne p1, v0, :cond_8

    .line 175
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lfr/testudo/spacecorsair/business/mission/engine/MissileTestEngine;->onCurrentMissileDestroyed(Z)V

    .line 177
    :cond_8
    return-void
.end method

.method public onElementDestroyedByPlayer(Lfr/testudo/spacecorsair/business/Element;)V
    .registers 4

    .prologue
    .line 181
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/MissileTestEngine;->guardian:Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;

    if-ne p1, v0, :cond_19

    iget-boolean v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/MissileTestEngine;->completed:Z

    if-nez v0, :cond_19

    .line 182
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    const v1, 0x7f07029c

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->getStringRessource(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/mission/engine/MissileTestEngine;->failureYouKilledTheShip:Ljava/lang/String;

    invoke-static {v0, v1}, Lfr/testudo/spacecorsair/display/hud/WelcomeMessage;->setText(Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    invoke-virtual {p0}, Lfr/testudo/spacecorsair/business/mission/engine/MissileTestEngine;->init()V

    .line 185
    :cond_19
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/MissileTestEngine;->currentMissile:Lfr/testudo/spacecorsair/business/projectiles/Missile;

    if-ne p1, v0, :cond_21

    .line 186
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lfr/testudo/spacecorsair/business/mission/engine/MissileTestEngine;->onCurrentMissileDestroyed(Z)V

    .line 188
    :cond_21
    return-void
.end method

.method public onGuardianReached()V
    .registers 6

    .prologue
    .line 384
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/Game;->gameThread:Lfr/testudo/spacecorsair/engine/GameThread;

    const v1, 0x7f020058

    const v2, 0x7f070178

    const v3, 0x7f070177

    const/4 v4, 0x1

    invoke-virtual {v0, v1, v2, v3, v4}, Lfr/testudo/spacecorsair/engine/GameThread;->showDialog(IIII)V

    .line 385
    sget-object v0, Lfr/testudo/spacecorsair/business/mission/engine/MissileTestEngine$Phase;->FOLLOW_GUARDIAN:Lfr/testudo/spacecorsair/business/mission/engine/MissileTestEngine$Phase;

    iput-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/MissileTestEngine;->currentPhase:Lfr/testudo/spacecorsair/business/mission/engine/MissileTestEngine$Phase;

    .line 386
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/MissileTestEngine;->guardian:Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;

    sget-object v1, Lfr/testudo/spacecorsair/business/mission/engine/MissileTestEngine;->activityGotoShootZone:[Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->setActivity([Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;)V

    .line 388
    return-void
.end method

.method public onPlayerBuyItem(Lfr/testudo/spacecorsair/business/loot/SpaceObject;)V
    .registers 4

    .prologue
    .line 167
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/MissileTestEngine;->currentPhase:Lfr/testudo/spacecorsair/business/mission/engine/MissileTestEngine$Phase;

    sget-object v1, Lfr/testudo/spacecorsair/business/mission/engine/MissileTestEngine$Phase;->BUY_TRACKER:Lfr/testudo/spacecorsair/business/mission/engine/MissileTestEngine$Phase;

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/business/mission/engine/MissileTestEngine$Phase;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    invoke-virtual {p1}, Lfr/testudo/spacecorsair/business/loot/SpaceObject;->getSpaceObjectType()Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    move-result-object v0

    sget-object v1, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->missionTestMissileRecord:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 168
    invoke-virtual {p0}, Lfr/testudo/spacecorsair/business/mission/engine/MissileTestEngine;->onTracketBought()V

    .line 170
    :cond_19
    return-void
.end method

.method public onPlayerDeath()V
    .registers 1

    .prologue
    .line 193
    return-void
.end method

.method public onShootAreaReached()V
    .registers 6

    .prologue
    .line 392
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/Game;->gameThread:Lfr/testudo/spacecorsair/engine/GameThread;

    const v1, 0x7f020058

    const v2, 0x7f070178

    const v3, 0x7f070179

    const/16 v4, 0xfa0

    invoke-virtual {v0, v1, v2, v3, v4}, Lfr/testudo/spacecorsair/engine/GameThread;->showDialog(IIII)V

    .line 393
    sget-object v0, Lfr/testudo/spacecorsair/business/mission/engine/MissileTestEngine$Phase;->MISSILE_TEST:Lfr/testudo/spacecorsair/business/mission/engine/MissileTestEngine$Phase;

    iput-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/MissileTestEngine;->currentPhase:Lfr/testudo/spacecorsair/business/mission/engine/MissileTestEngine$Phase;

    .line 394
    invoke-virtual {p0}, Lfr/testudo/spacecorsair/business/mission/engine/MissileTestEngine;->initNewMissileSalve()V

    .line 395
    invoke-virtual {p0}, Lfr/testudo/spacecorsair/business/mission/engine/MissileTestEngine;->updateMissileSlaveText()V

    .line 397
    return-void
.end method

.method public onTracketBought()V
    .registers 3

    .prologue
    .line 374
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lfr/testudo/spacecorsair/business/mission/engine/MissileTestEngine;->setPhaseGateAndStationTarget(Z)V

    .line 375
    sget-object v0, Lfr/testudo/spacecorsair/business/mission/engine/MissileTestEngine$Phase;->GOTO_GUARDIAN:Lfr/testudo/spacecorsair/business/mission/engine/MissileTestEngine$Phase;

    iput-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/MissileTestEngine;->currentPhase:Lfr/testudo/spacecorsair/business/mission/engine/MissileTestEngine$Phase;

    .line 376
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/Game;->currentLevel:Lfr/testudo/spacecorsair/game/levels/Level;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/levels/Level;->name:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Lfr/testudo/spacecorsair/business/mission/engine/MissileTestEngine;->onZoneChanged(Ljava/lang/String;Ljava/lang/String;)V

    .line 377
    return-void
.end method

.method public onZoneChanged(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 105
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/MissileTestEngine;->targetZoneId:Lfr/testudo/spacecorsair/game/levels/LevelId;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/levels/LevelId;->levelName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 106
    iput-boolean v2, p0, Lfr/testudo/spacecorsair/business/mission/engine/MissileTestEngine;->isPlayerInTargetZone:Z

    .line 111
    :goto_e
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/MissileTestEngine;->recompenceZoneId:Lfr/testudo/spacecorsair/game/levels/LevelId;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/levels/LevelId;->levelName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_32

    .line 112
    iput-boolean v2, p0, Lfr/testudo/spacecorsair/business/mission/engine/MissileTestEngine;->isPlayerInRecompenceZone:Z

    .line 119
    :goto_1a
    iget-boolean v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/MissileTestEngine;->isPlayerInTargetZone:Z

    if-eqz v0, :cond_2b

    .line 122
    sget-object v0, Lfr/testudo/spacecorsair/business/mission/engine/MissileTestEngine$1;->$SwitchMap$fr$testudo$spacecorsair$business$mission$engine$MissileTestEngine$Phase:[I

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/mission/engine/MissileTestEngine;->currentPhase:Lfr/testudo/spacecorsair/business/mission/engine/MissileTestEngine$Phase;

    invoke-virtual {v1}, Lfr/testudo/spacecorsair/business/mission/engine/MissileTestEngine$Phase;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_3a

    .line 131
    :cond_2b
    :goto_2b
    invoke-direct {p0, v2}, Lfr/testudo/spacecorsair/business/mission/engine/MissileTestEngine;->setPhaseGateAndStationTarget(Z)V

    .line 134
    return-void

    .line 108
    :cond_2f
    iput-boolean v1, p0, Lfr/testudo/spacecorsair/business/mission/engine/MissileTestEngine;->isPlayerInTargetZone:Z

    goto :goto_e

    .line 115
    :cond_32
    iput-boolean v1, p0, Lfr/testudo/spacecorsair/business/mission/engine/MissileTestEngine;->isPlayerInRecompenceZone:Z

    goto :goto_1a

    .line 126
    :pswitch_35
    invoke-direct {p0}, Lfr/testudo/spacecorsair/business/mission/engine/MissileTestEngine;->addGuardian()V

    goto :goto_2b

    .line 122
    nop

    :pswitch_data_3a
    .packed-switch 0x1
        :pswitch_35
        :pswitch_35
        :pswitch_35
    .end packed-switch
.end method

.method public requestLunchNewMissile()V
    .registers 3

    .prologue
    .line 499
    iget v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/MissileTestEngine;->curMissileInSalve:I

    iget v1, p0, Lfr/testudo/spacecorsair/business/mission/engine/MissileTestEngine;->curSlaveMaxMissile:I

    if-ne v0, v1, :cond_a

    .line 500
    invoke-virtual {p0}, Lfr/testudo/spacecorsair/business/mission/engine/MissileTestEngine;->initNewMissileSalve()V

    .line 505
    :goto_9
    return-void

    .line 503
    :cond_a
    const/16 v0, 0x1b58

    iput v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/MissileTestEngine;->nextTimeMissileLaunch:I

    goto :goto_9
.end method

.method public restoreState()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 290
    iput v2, p0, Lfr/testudo/spacecorsair/business/mission/engine/MissileTestEngine;->curMissileSalve:I

    .line 291
    sget-object v0, Lfr/testudo/spacecorsair/business/mission/engine/MissileTestEngine$Phase;->BUY_TRACKER:Lfr/testudo/spacecorsair/business/mission/engine/MissileTestEngine$Phase;

    iput-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/MissileTestEngine;->currentPhase:Lfr/testudo/spacecorsair/business/mission/engine/MissileTestEngine$Phase;

    .line 292
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/Game;->playerCurrentShipInventory:Lfr/testudo/spacecorsair/business/player/Inventory;

    sget-object v1, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->missionTestMissileRecord:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/business/player/Inventory;->containObject(Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 293
    sget-object v0, Lfr/testudo/spacecorsair/business/mission/engine/MissileTestEngine$Phase;->GOTO_GUARDIAN:Lfr/testudo/spacecorsair/business/mission/engine/MissileTestEngine$Phase;

    iput-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/MissileTestEngine;->currentPhase:Lfr/testudo/spacecorsair/business/mission/engine/MissileTestEngine$Phase;

    .line 296
    :cond_19
    iput-boolean v2, p0, Lfr/testudo/spacecorsair/business/mission/engine/MissileTestEngine;->completed:Z

    .line 297
    return-void
.end method

.method public saveState()V
    .registers 1

    .prologue
    .line 302
    return-void
.end method

.method public terminate()V
    .registers 3

    .prologue
    .line 311
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/Game;->playerCurrentShipInventory:Lfr/testudo/spacecorsair/business/player/Inventory;

    sget-object v1, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->missionTestMissileRecord:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/business/player/Inventory;->removeAllOf(Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)V

    .line 312
    return-void
.end method

.method public updateIsInArea()V
    .registers 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 400
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/MissileTestEngine;->guardian:Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/MissileTestEngine;->guardian:Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;

    iget-boolean v0, v0, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->removed:Z

    if-eqz v0, :cond_d

    .line 408
    :cond_c
    :goto_c
    return-void

    .line 404
    :cond_d
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/MissileTestEngine;->guardian:Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;

    iget v0, v0, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->distanceToPlayer:F

    const v3, 0x455ac000    # 3500.0f

    cmpg-float v0, v0, v3

    if-gez v0, :cond_24

    move v0, v1

    :goto_19
    iput-boolean v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/MissileTestEngine;->isInShootArea:Z

    .line 406
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/MissileTestEngine;->guardian:Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;

    iget-boolean v3, p0, Lfr/testudo/spacecorsair/business/mission/engine/MissileTestEngine;->isInShootArea:Z

    if-nez v3, :cond_26

    :goto_21
    iput-boolean v1, v0, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->isMissionObjective:Z

    goto :goto_c

    :cond_24
    move v0, v2

    .line 404
    goto :goto_19

    :cond_26
    move v1, v2

    .line 406
    goto :goto_21
.end method

.method public updateMissileSlaveText()V
    .registers 3

    .prologue
    .line 94
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/mission/engine/MissileTestEngine;->textDogeMissile:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "( "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lfr/testudo/spacecorsair/business/mission/engine/MissileTestEngine;->curMissileInSalve:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " / "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lfr/testudo/spacecorsair/business/mission/engine/MissileTestEngine;->curSlaveMaxMissile:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " )"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/MissileTestEngine;->textDogeMissileWithCount:Ljava/lang/String;

    .line 95
    return-void
.end method
