.class public Lfr/testudo/spacecorsair/business/mission/engine/BountyHunterAliveMissionEngine;
.super Lfr/testudo/spacecorsair/business/mission/MissionListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lfr/testudo/spacecorsair/business/mission/engine/BountyHunterAliveMissionEngine$1;,
        Lfr/testudo/spacecorsair/business/mission/engine/BountyHunterAliveMissionEngine$Phase;
    }
.end annotation


# instance fields
.field private allowPlayerDeathOnReturn:Z

.field public completed:Z

.field public currentPhase:Lfr/testudo/spacecorsair/business/mission/engine/BountyHunterAliveMissionEngine$Phase;

.field private failureYouKilledTheTarget:Ljava/lang/String;

.field private gotoRecompenseZoneMessage:Ljava/lang/String;

.field private gotoTargetMessage:Ljava/lang/String;

.field public isPlayerInRecompenceZone:Z

.field public isPlayerInTargetZone:Z

.field private missionEngineListener:Lfr/testudo/spacecorsair/business/mission/engine/BountyHunterAliveTargetCreator;

.field public missionTargetAsACosmonote:Lfr/testudo/spacecorsair/business/LootableSpaceMan;

.field public missionTargetAsAShip:Lfr/testudo/spacecorsair/business/Element;

.field private pourcentageOfLifeForEjection:I

.field recompenceZoneId:Lfr/testudo/spacecorsair/game/levels/LevelId;

.field private stationGiveBackName:Ljava/lang/String;

.field private targetInventoryObject:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

.field private targetName:Ljava/lang/String;

.field private targetNameResourceId:I

.field targetZoneId:Lfr/testudo/spacecorsair/game/levels/LevelId;

.field private textCaptureTargetAlive:Ljava/lang/String;

.field private textDockToStation:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lfr/testudo/spacecorsair/game/levels/LevelId;Lfr/testudo/spacecorsair/game/levels/LevelId;Ljava/lang/String;ILfr/testudo/spacecorsair/business/mission/engine/BountyHunterAliveTargetCreator;ILfr/testudo/spacecorsair/business/loot/SpaceObjectType;Z)V
    .registers 10

    .prologue
    .line 68
    invoke-direct {p0}, Lfr/testudo/spacecorsair/business/mission/MissionListener;-><init>()V

    .line 30
    sget-object v0, Lfr/testudo/spacecorsair/business/mission/engine/BountyHunterAliveMissionEngine$Phase;->FORCE_EJECT:Lfr/testudo/spacecorsair/business/mission/engine/BountyHunterAliveMissionEngine$Phase;

    iput-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/BountyHunterAliveMissionEngine;->currentPhase:Lfr/testudo/spacecorsair/business/mission/engine/BountyHunterAliveMissionEngine$Phase;

    .line 69
    iput-object p1, p0, Lfr/testudo/spacecorsair/business/mission/engine/BountyHunterAliveMissionEngine;->targetZoneId:Lfr/testudo/spacecorsair/game/levels/LevelId;

    .line 70
    iput-object p2, p0, Lfr/testudo/spacecorsair/business/mission/engine/BountyHunterAliveMissionEngine;->recompenceZoneId:Lfr/testudo/spacecorsair/game/levels/LevelId;

    .line 71
    iput-object p3, p0, Lfr/testudo/spacecorsair/business/mission/engine/BountyHunterAliveMissionEngine;->stationGiveBackName:Ljava/lang/String;

    .line 72
    iput p4, p0, Lfr/testudo/spacecorsair/business/mission/engine/BountyHunterAliveMissionEngine;->targetNameResourceId:I

    .line 73
    iput-object p5, p0, Lfr/testudo/spacecorsair/business/mission/engine/BountyHunterAliveMissionEngine;->missionEngineListener:Lfr/testudo/spacecorsair/business/mission/engine/BountyHunterAliveTargetCreator;

    .line 74
    iput p6, p0, Lfr/testudo/spacecorsair/business/mission/engine/BountyHunterAliveMissionEngine;->pourcentageOfLifeForEjection:I

    .line 75
    iput-object p7, p0, Lfr/testudo/spacecorsair/business/mission/engine/BountyHunterAliveMissionEngine;->targetInventoryObject:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    .line 76
    iput-boolean p8, p0, Lfr/testudo/spacecorsair/business/mission/engine/BountyHunterAliveMissionEngine;->allowPlayerDeathOnReturn:Z

    .line 77
    invoke-direct {p0}, Lfr/testudo/spacecorsair/business/mission/engine/BountyHunterAliveMissionEngine;->initStrings()V

    .line 79
    return-void
.end method

.method private displayMissionObjectives(Z)V
    .registers 4

    .prologue
    .line 105
    sget-object v0, Lfr/testudo/spacecorsair/business/mission/engine/BountyHunterAliveMissionEngine$1;->$SwitchMap$fr$testudo$spacecorsair$business$mission$engine$BountyHunterAliveMissionEngine$Phase:[I

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/mission/engine/BountyHunterAliveMissionEngine;->currentPhase:Lfr/testudo/spacecorsair/business/mission/engine/BountyHunterAliveMissionEngine$Phase;

    invoke-virtual {v1}, Lfr/testudo/spacecorsair/business/mission/engine/BountyHunterAliveMissionEngine$Phase;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_5c

    .line 136
    :cond_d
    :goto_d
    return-void

    .line 108
    :pswitch_e
    iget-boolean v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/BountyHunterAliveMissionEngine;->isPlayerInTargetZone:Z

    if-nez v0, :cond_d

    .line 111
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/Game;->currentLevel:Lfr/testudo/spacecorsair/game/levels/Level;

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/mission/engine/BountyHunterAliveMissionEngine;->targetZoneId:Lfr/testudo/spacecorsair/game/levels/LevelId;

    invoke-static {v1}, Lfr/testudo/spacecorsair/business/world/PathFinder;->getPortalNameToGoTo(Lfr/testudo/spacecorsair/game/levels/LevelId;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/game/levels/Level;->findPortalByName(Ljava/lang/String;)Lfr/testudo/spacecorsair/business/world/Portal;

    move-result-object v0

    .line 112
    if-eqz v0, :cond_d

    .line 114
    iput-boolean p1, v0, Lfr/testudo/spacecorsair/business/world/Portal;->isMissionObjective:Z

    .line 115
    sget-object v1, Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;->ORANGE:Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;

    iput-object v1, v0, Lfr/testudo/spacecorsair/business/world/Portal;->missionObjectiveColor:Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;

    goto :goto_d

    .line 119
    :pswitch_2b
    iget-boolean v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/BountyHunterAliveMissionEngine;->isPlayerInRecompenceZone:Z

    if-eqz v0, :cond_43

    .line 121
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/Game;->currentLevel:Lfr/testudo/spacecorsair/game/levels/Level;

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/mission/engine/BountyHunterAliveMissionEngine;->stationGiveBackName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/game/levels/Level;->findStationByName(Ljava/lang/String;)Lfr/testudo/spacecorsair/business/world/station/Station;

    move-result-object v0

    .line 122
    if-eqz v0, :cond_43

    .line 123
    iput-boolean p1, v0, Lfr/testudo/spacecorsair/business/world/station/Station;->isMissionObjective:Z

    .line 124
    sget-object v1, Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;->ORANGE:Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;

    iput-object v1, v0, Lfr/testudo/spacecorsair/business/world/station/Station;->missionObjectiveColor:Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;

    .line 129
    :cond_43
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/Game;->currentLevel:Lfr/testudo/spacecorsair/game/levels/Level;

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/mission/engine/BountyHunterAliveMissionEngine;->recompenceZoneId:Lfr/testudo/spacecorsair/game/levels/LevelId;

    invoke-static {v1}, Lfr/testudo/spacecorsair/business/world/PathFinder;->getPortalNameToGoTo(Lfr/testudo/spacecorsair/game/levels/LevelId;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/game/levels/Level;->findPortalByName(Ljava/lang/String;)Lfr/testudo/spacecorsair/business/world/Portal;

    move-result-object v0

    .line 130
    if-eqz v0, :cond_d

    .line 131
    iput-boolean p1, v0, Lfr/testudo/spacecorsair/business/world/Portal;->isMissionObjective:Z

    .line 132
    sget-object v1, Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;->ORANGE:Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;

    iput-object v1, v0, Lfr/testudo/spacecorsair/business/world/Portal;->missionObjectiveColor:Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;

    goto :goto_d

    .line 105
    :pswitch_data_5c
    .packed-switch 0x1
        :pswitch_e
        :pswitch_e
        :pswitch_2b
    .end packed-switch
.end method

.method private ejectTargetAndChangePhase()V
    .registers 11

    .prologue
    .line 298
    sget-object v0, Lfr/testudo/spacecorsair/business/mission/engine/BountyHunterAliveMissionEngine$Phase;->FETCH_TARGET:Lfr/testudo/spacecorsair/business/mission/engine/BountyHunterAliveMissionEngine$Phase;

    iput-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/BountyHunterAliveMissionEngine;->currentPhase:Lfr/testudo/spacecorsair/business/mission/engine/BountyHunterAliveMissionEngine$Phase;

    .line 301
    invoke-static {}, Lfr/testudo/spacecorsair/business/factory/GamePools;->newLootableSpaceMan()Lfr/testudo/spacecorsair/business/LootableSpaceMan;

    move-result-object v0

    iput-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/BountyHunterAliveMissionEngine;->missionTargetAsACosmonote:Lfr/testudo/spacecorsair/business/LootableSpaceMan;

    .line 302
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/BountyHunterAliveMissionEngine;->missionTargetAsACosmonote:Lfr/testudo/spacecorsair/business/LootableSpaceMan;

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/mission/engine/BountyHunterAliveMissionEngine;->missionTargetAsAShip:Lfr/testudo/spacecorsair/business/Element;

    iget-object v1, v1, Lfr/testudo/spacecorsair/business/Element;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget-object v2, p0, Lfr/testudo/spacecorsair/business/mission/engine/BountyHunterAliveMissionEngine;->missionTargetAsAShip:Lfr/testudo/spacecorsair/business/Element;

    iget-object v2, v2, Lfr/testudo/spacecorsair/business/Element;->speed:Lfr/testudo/spacecorsair/engine/Vector2;

    const-wide/high16 v4, -0x4010000000000000L    # -1.0

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v6

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    mul-double/2addr v6, v8

    add-double/2addr v4, v6

    double-to-float v3, v4

    iget-object v4, p0, Lfr/testudo/spacecorsair/business/mission/engine/BountyHunterAliveMissionEngine;->targetInventoryObject:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    invoke-virtual {v0, v1, v2, v3, v4}, Lfr/testudo/spacecorsair/business/LootableSpaceMan;->init(Lfr/testudo/spacecorsair/engine/Vector2;Lfr/testudo/spacecorsair/engine/Vector2;FLfr/testudo/spacecorsair/business/loot/SpaceObjectType;)Lfr/testudo/spacecorsair/business/LootableSpaceMan;

    .line 303
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/BountyHunterAliveMissionEngine;->missionTargetAsACosmonote:Lfr/testudo/spacecorsair/business/LootableSpaceMan;

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/mission/engine/BountyHunterAliveMissionEngine;->targetName:Ljava/lang/String;

    iput-object v1, v0, Lfr/testudo/spacecorsair/business/LootableSpaceMan;->specificName:Ljava/lang/String;

    .line 304
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/BountyHunterAliveMissionEngine;->missionTargetAsACosmonote:Lfr/testudo/spacecorsair/business/LootableSpaceMan;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lfr/testudo/spacecorsair/business/LootableSpaceMan;->isMissionObjective:Z

    .line 305
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/BountyHunterAliveMissionEngine;->missionTargetAsACosmonote:Lfr/testudo/spacecorsair/business/LootableSpaceMan;

    sget-object v1, Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;->GREEN:Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;

    iput-object v1, v0, Lfr/testudo/spacecorsair/business/LootableSpaceMan;->missionObjectiveColor:Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;

    .line 306
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/mission/engine/BountyHunterAliveMissionEngine;->missionTargetAsACosmonote:Lfr/testudo/spacecorsair/business/LootableSpaceMan;

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->queueElementToBeAddToLevel(Lfr/testudo/spacecorsair/business/Element;)V

    .line 310
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/BountyHunterAliveMissionEngine;->missionTargetAsAShip:Lfr/testudo/spacecorsair/business/Element;

    sget-object v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    const v2, 0x7f070324

    invoke-virtual {v1, v2}, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->getLocalizedString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lfr/testudo/spacecorsair/business/Element;->specificName:Ljava/lang/String;

    .line 311
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/BountyHunterAliveMissionEngine;->missionTargetAsAShip:Lfr/testudo/spacecorsair/business/Element;

    const/4 v1, -0x1

    iput v1, v0, Lfr/testudo/spacecorsair/business/Element;->specificNameDecalX:I

    .line 313
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/BountyHunterAliveMissionEngine;->missionTargetAsAShip:Lfr/testudo/spacecorsair/business/Element;

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/business/Element;->setIaDisabled()V

    .line 314
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/BountyHunterAliveMissionEngine;->missionTargetAsAShip:Lfr/testudo/spacecorsair/business/Element;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lfr/testudo/spacecorsair/business/Element;->isMissionObjective:Z

    .line 316
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/BountyHunterAliveMissionEngine;->missionEngineListener:Lfr/testudo/spacecorsair/business/mission/engine/BountyHunterAliveTargetCreator;

    invoke-interface {v0}, Lfr/testudo/spacecorsair/business/mission/engine/BountyHunterAliveTargetCreator;->onTargetEject()V

    .line 318
    return-void
.end method

.method private initStrings()V
    .registers 4

    .prologue
    .line 59
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

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/mission/engine/BountyHunterAliveMissionEngine;->targetZoneId:Lfr/testudo/spacecorsair/game/levels/LevelId;

    iget-object v1, v1, Lfr/testudo/spacecorsair/game/levels/LevelId;->levelName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/BountyHunterAliveMissionEngine;->gotoTargetMessage:Ljava/lang/String;

    .line 60
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

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/mission/engine/BountyHunterAliveMissionEngine;->recompenceZoneId:Lfr/testudo/spacecorsair/game/levels/LevelId;

    iget-object v1, v1, Lfr/testudo/spacecorsair/game/levels/LevelId;->levelName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/BountyHunterAliveMissionEngine;->gotoRecompenseZoneMessage:Ljava/lang/String;

    .line 61
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

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/mission/engine/BountyHunterAliveMissionEngine;->stationGiveBackName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/BountyHunterAliveMissionEngine;->textDockToStation:Ljava/lang/String;

    .line 62
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget v1, p0, Lfr/testudo/spacecorsair/business/mission/engine/BountyHunterAliveMissionEngine;->targetNameResourceId:I

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->getStringRessource(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/BountyHunterAliveMissionEngine;->targetName:Ljava/lang/String;

    .line 63
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    const v1, 0x7f070322

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->getStringRessource(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/BountyHunterAliveMissionEngine;->textCaptureTargetAlive:Ljava/lang/String;

    .line 64
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    const v1, 0x7f070323

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->getStringRessource(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/BountyHunterAliveMissionEngine;->failureYouKilledTheTarget:Ljava/lang/String;

    .line 65
    return-void
.end method

.method private onTargetOnBoard()V
    .registers 4

    .prologue
    const/4 v2, 0x1

    .line 323
    sget-object v0, Lfr/testudo/spacecorsair/business/mission/engine/BountyHunterAliveMissionEngine$Phase;->GATHER_RECOMP:Lfr/testudo/spacecorsair/business/mission/engine/BountyHunterAliveMissionEngine$Phase;

    iput-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/BountyHunterAliveMissionEngine;->currentPhase:Lfr/testudo/spacecorsair/business/mission/engine/BountyHunterAliveMissionEngine$Phase;

    .line 324
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    const v1, 0x7f0702c1

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->getStringRessource(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-static {v0, v1}, Lfr/testudo/spacecorsair/display/hud/WelcomeMessage;->setText(Ljava/lang/String;Ljava/lang/String;)V

    .line 325
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->soundManager:Lfr/testudo/spacecorsair/engine/SoundManager;

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/engine/SoundManager;->playMissionComplete()V

    .line 326
    iput-boolean v2, p0, Lfr/testudo/spacecorsair/business/mission/engine/BountyHunterAliveMissionEngine;->completed:Z

    .line 328
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/BountyHunterAliveMissionEngine;->missionEngineListener:Lfr/testudo/spacecorsair/business/mission/engine/BountyHunterAliveTargetCreator;

    invoke-interface {v0}, Lfr/testudo/spacecorsair/business/mission/engine/BountyHunterAliveTargetCreator;->onTargetCaptured()V

    .line 330
    invoke-direct {p0, v2}, Lfr/testudo/spacecorsair/business/mission/engine/BountyHunterAliveMissionEngine;->displayMissionObjectives(Z)V

    .line 331
    return-void
.end method


# virtual methods
.method public getCurrentInstruction()Ljava/lang/String;
    .registers 3

    .prologue
    .line 196
    sget-object v0, Lfr/testudo/spacecorsair/business/mission/engine/BountyHunterAliveMissionEngine$1;->$SwitchMap$fr$testudo$spacecorsair$business$mission$engine$BountyHunterAliveMissionEngine$Phase:[I

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/mission/engine/BountyHunterAliveMissionEngine;->currentPhase:Lfr/testudo/spacecorsair/business/mission/engine/BountyHunterAliveMissionEngine$Phase;

    invoke-virtual {v1}, Lfr/testudo/spacecorsair/business/mission/engine/BountyHunterAliveMissionEngine$Phase;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_24

    .line 215
    const-string v0, ""

    :goto_f
    return-object v0

    .line 200
    :pswitch_10
    iget-boolean v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/BountyHunterAliveMissionEngine;->isPlayerInTargetZone:Z

    if-eqz v0, :cond_17

    .line 201
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/BountyHunterAliveMissionEngine;->textCaptureTargetAlive:Ljava/lang/String;

    goto :goto_f

    .line 203
    :cond_17
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/BountyHunterAliveMissionEngine;->gotoTargetMessage:Ljava/lang/String;

    goto :goto_f

    .line 207
    :pswitch_1a
    iget-boolean v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/BountyHunterAliveMissionEngine;->isPlayerInRecompenceZone:Z

    if-nez v0, :cond_21

    .line 208
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/BountyHunterAliveMissionEngine;->gotoRecompenseZoneMessage:Ljava/lang/String;

    goto :goto_f

    .line 211
    :cond_21
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/BountyHunterAliveMissionEngine;->textDockToStation:Ljava/lang/String;

    goto :goto_f

    .line 196
    :pswitch_data_24
    .packed-switch 0x1
        :pswitch_10
        :pswitch_10
        :pswitch_1a
    .end packed-switch
.end method

.method public giveUp()V
    .registers 2

    .prologue
    .line 235
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/BountyHunterAliveMissionEngine;->missionTargetAsAShip:Lfr/testudo/spacecorsair/business/Element;

    if-eqz v0, :cond_9

    .line 236
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/BountyHunterAliveMissionEngine;->missionTargetAsAShip:Lfr/testudo/spacecorsair/business/Element;

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/business/Element;->remove()V

    .line 238
    :cond_9
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/BountyHunterAliveMissionEngine;->missionTargetAsACosmonote:Lfr/testudo/spacecorsair/business/LootableSpaceMan;

    if-eqz v0, :cond_12

    .line 239
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/BountyHunterAliveMissionEngine;->missionTargetAsACosmonote:Lfr/testudo/spacecorsair/business/LootableSpaceMan;

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/business/LootableSpaceMan;->remove()V

    .line 242
    :cond_12
    invoke-virtual {p0}, Lfr/testudo/spacecorsair/business/mission/engine/BountyHunterAliveMissionEngine;->terminate()V

    .line 243
    return-void
.end method

.method public init()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 140
    sget-object v0, Lfr/testudo/spacecorsair/business/mission/engine/BountyHunterAliveMissionEngine$Phase;->FORCE_EJECT:Lfr/testudo/spacecorsair/business/mission/engine/BountyHunterAliveMissionEngine$Phase;

    iput-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/BountyHunterAliveMissionEngine;->currentPhase:Lfr/testudo/spacecorsair/business/mission/engine/BountyHunterAliveMissionEngine$Phase;

    .line 141
    const/4 v0, 0x0

    iput-boolean v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/BountyHunterAliveMissionEngine;->completed:Z

    .line 142
    iput-object v1, p0, Lfr/testudo/spacecorsair/business/mission/engine/BountyHunterAliveMissionEngine;->missionTargetAsAShip:Lfr/testudo/spacecorsair/business/Element;

    .line 143
    iput-object v1, p0, Lfr/testudo/spacecorsair/business/mission/engine/BountyHunterAliveMissionEngine;->missionTargetAsACosmonote:Lfr/testudo/spacecorsair/business/LootableSpaceMan;

    .line 144
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/Game;->currentLevel:Lfr/testudo/spacecorsair/game/levels/Level;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/levels/Level;->name:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lfr/testudo/spacecorsair/business/mission/engine/BountyHunterAliveMissionEngine;->onZoneChanged(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/Game;->playerCurrentShipInventory:Lfr/testudo/spacecorsair/business/player/Inventory;

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/mission/engine/BountyHunterAliveMissionEngine;->targetInventoryObject:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/business/player/Inventory;->removeAllOf(Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)V

    .line 146
    return-void
.end method

.method public isCompleted()Z
    .registers 2

    .prologue
    .line 280
    iget-boolean v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/BountyHunterAliveMissionEngine;->completed:Z

    return v0
.end method

.method public onDoPhysic(J)V
    .registers 3

    .prologue
    .line 191
    return-void
.end method

.method public onElementDestroyed(Lfr/testudo/spacecorsair/business/Element;)V
    .registers 7

    .prologue
    const/4 v4, 0x0

    const v3, 0x7f07029c

    const/16 v2, 0x1770

    .line 151
    sget-object v0, Lfr/testudo/spacecorsair/business/mission/engine/BountyHunterAliveMissionEngine$1;->$SwitchMap$fr$testudo$spacecorsair$business$mission$engine$BountyHunterAliveMissionEngine$Phase:[I

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/mission/engine/BountyHunterAliveMissionEngine;->currentPhase:Lfr/testudo/spacecorsair/business/mission/engine/BountyHunterAliveMissionEngine$Phase;

    invoke-virtual {v1}, Lfr/testudo/spacecorsair/business/mission/engine/BountyHunterAliveMissionEngine$Phase;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_52

    .line 172
    :cond_13
    :goto_13
    return-void

    .line 154
    :pswitch_14
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/BountyHunterAliveMissionEngine;->missionTargetAsAShip:Lfr/testudo/spacecorsair/business/Element;

    if-ne p1, v0, :cond_13

    .line 155
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    invoke-virtual {v0, v3}, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->getStringRessource(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/mission/engine/BountyHunterAliveMissionEngine;->failureYouKilledTheTarget:Ljava/lang/String;

    invoke-static {v0, v1}, Lfr/testudo/spacecorsair/display/hud/WelcomeMessage;->setText(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/Game;->gameThread:Lfr/testudo/spacecorsair/engine/GameThread;

    invoke-virtual {v0, v2}, Lfr/testudo/spacecorsair/engine/GameThread;->requestReloadLevelIn(I)V

    .line 157
    sget-object v0, Lfr/testudo/spacecorsair/business/mission/engine/BountyHunterAliveMissionEngine$Phase;->FORCE_EJECT:Lfr/testudo/spacecorsair/business/mission/engine/BountyHunterAliveMissionEngine$Phase;

    iput-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/BountyHunterAliveMissionEngine;->currentPhase:Lfr/testudo/spacecorsair/business/mission/engine/BountyHunterAliveMissionEngine$Phase;

    .line 158
    iput-object v4, p0, Lfr/testudo/spacecorsair/business/mission/engine/BountyHunterAliveMissionEngine;->missionTargetAsAShip:Lfr/testudo/spacecorsair/business/Element;

    goto :goto_13

    .line 162
    :pswitch_33
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/BountyHunterAliveMissionEngine;->missionTargetAsACosmonote:Lfr/testudo/spacecorsair/business/LootableSpaceMan;

    if-ne p1, v0, :cond_13

    .line 163
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    invoke-virtual {v0, v3}, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->getStringRessource(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/mission/engine/BountyHunterAliveMissionEngine;->failureYouKilledTheTarget:Ljava/lang/String;

    invoke-static {v0, v1}, Lfr/testudo/spacecorsair/display/hud/WelcomeMessage;->setText(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/Game;->gameThread:Lfr/testudo/spacecorsair/engine/GameThread;

    invoke-virtual {v0, v2}, Lfr/testudo/spacecorsair/engine/GameThread;->requestReloadLevelIn(I)V

    .line 165
    sget-object v0, Lfr/testudo/spacecorsair/business/mission/engine/BountyHunterAliveMissionEngine$Phase;->FORCE_EJECT:Lfr/testudo/spacecorsair/business/mission/engine/BountyHunterAliveMissionEngine$Phase;

    iput-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/BountyHunterAliveMissionEngine;->currentPhase:Lfr/testudo/spacecorsair/business/mission/engine/BountyHunterAliveMissionEngine$Phase;

    .line 166
    iput-object v4, p0, Lfr/testudo/spacecorsair/business/mission/engine/BountyHunterAliveMissionEngine;->missionTargetAsAShip:Lfr/testudo/spacecorsair/business/Element;

    goto :goto_13

    .line 151
    :pswitch_data_52
    .packed-switch 0x1
        :pswitch_14
        :pswitch_33
    .end packed-switch
.end method

.method public onElementDestroyedByPlayer(Lfr/testudo/spacecorsair/business/Element;)V
    .registers 2

    .prologue
    .line 177
    return-void
.end method

.method public onEveryTenGameSec()V
    .registers 3

    .prologue
    .line 258
    sget-object v0, Lfr/testudo/spacecorsair/business/mission/engine/BountyHunterAliveMissionEngine$1;->$SwitchMap$fr$testudo$spacecorsair$business$mission$engine$BountyHunterAliveMissionEngine$Phase:[I

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/mission/engine/BountyHunterAliveMissionEngine;->currentPhase:Lfr/testudo/spacecorsair/business/mission/engine/BountyHunterAliveMissionEngine$Phase;

    invoke-virtual {v1}, Lfr/testudo/spacecorsair/business/mission/engine/BountyHunterAliveMissionEngine$Phase;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_28

    .line 274
    :cond_d
    :goto_d
    :pswitch_d
    return-void

    .line 262
    :pswitch_e
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/BountyHunterAliveMissionEngine;->missionTargetAsAShip:Lfr/testudo/spacecorsair/business/Element;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/BountyHunterAliveMissionEngine;->missionTargetAsAShip:Lfr/testudo/spacecorsair/business/Element;

    iget-boolean v0, v0, Lfr/testudo/spacecorsair/business/Element;->removed:Z

    if-nez v0, :cond_d

    iget-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/BountyHunterAliveMissionEngine;->missionTargetAsAShip:Lfr/testudo/spacecorsair/business/Element;

    iget v0, v0, Lfr/testudo/spacecorsair/business/Element;->lifeInPourc:F

    iget v1, p0, Lfr/testudo/spacecorsair/business/mission/engine/BountyHunterAliveMissionEngine;->pourcentageOfLifeForEjection:I

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_d

    .line 263
    invoke-direct {p0}, Lfr/testudo/spacecorsair/business/mission/engine/BountyHunterAliveMissionEngine;->ejectTargetAndChangePhase()V

    goto :goto_d

    .line 258
    nop

    :pswitch_data_28
    .packed-switch 0x1
        :pswitch_e
        :pswitch_d
    .end packed-switch
.end method

.method public onPlayerDeath()V
    .registers 3

    .prologue
    .line 181
    iget-boolean v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/BountyHunterAliveMissionEngine;->allowPlayerDeathOnReturn:Z

    if-nez v0, :cond_1f

    iget-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/BountyHunterAliveMissionEngine;->currentPhase:Lfr/testudo/spacecorsair/business/mission/engine/BountyHunterAliveMissionEngine$Phase;

    sget-object v1, Lfr/testudo/spacecorsair/business/mission/engine/BountyHunterAliveMissionEngine$Phase;->GATHER_RECOMP:Lfr/testudo/spacecorsair/business/mission/engine/BountyHunterAliveMissionEngine$Phase;

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/business/mission/engine/BountyHunterAliveMissionEngine$Phase;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 182
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    const v1, 0x7f07029c

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->getStringRessource(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/mission/engine/BountyHunterAliveMissionEngine;->failureYouKilledTheTarget:Ljava/lang/String;

    invoke-static {v0, v1}, Lfr/testudo/spacecorsair/display/hud/WelcomeMessage;->setText(Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    invoke-virtual {p0}, Lfr/testudo/spacecorsair/business/mission/engine/BountyHunterAliveMissionEngine;->init()V

    .line 186
    :cond_1f
    return-void
.end method

.method public onPlayerLoot(Lfr/testudo/spacecorsair/business/loot/LootElement;)Z
    .registers 4

    .prologue
    .line 286
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/BountyHunterAliveMissionEngine;->currentPhase:Lfr/testudo/spacecorsair/business/mission/engine/BountyHunterAliveMissionEngine$Phase;

    sget-object v1, Lfr/testudo/spacecorsair/business/mission/engine/BountyHunterAliveMissionEngine$Phase;->FETCH_TARGET:Lfr/testudo/spacecorsair/business/mission/engine/BountyHunterAliveMissionEngine$Phase;

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/business/mission/engine/BountyHunterAliveMissionEngine$Phase;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    iget-object v0, p1, Lfr/testudo/spacecorsair/business/loot/LootElement;->spaceObjectType:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/mission/engine/BountyHunterAliveMissionEngine;->targetInventoryObject:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 288
    invoke-direct {p0}, Lfr/testudo/spacecorsair/business/mission/engine/BountyHunterAliveMissionEngine;->onTargetOnBoard()V

    .line 291
    :cond_17
    const/4 v0, 0x1

    return v0
.end method

.method public onZoneChanged(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    .prologue
    const/4 v0, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 84
    iput-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/BountyHunterAliveMissionEngine;->missionTargetAsAShip:Lfr/testudo/spacecorsair/business/Element;

    .line 85
    iput-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/BountyHunterAliveMissionEngine;->missionTargetAsACosmonote:Lfr/testudo/spacecorsair/business/LootableSpaceMan;

    .line 87
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/BountyHunterAliveMissionEngine;->targetZoneId:Lfr/testudo/spacecorsair/game/levels/LevelId;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/levels/LevelId;->levelName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 88
    iput-boolean v1, p0, Lfr/testudo/spacecorsair/business/mission/engine/BountyHunterAliveMissionEngine;->isPlayerInTargetZone:Z

    .line 89
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/BountyHunterAliveMissionEngine;->missionEngineListener:Lfr/testudo/spacecorsair/business/mission/engine/BountyHunterAliveTargetCreator;

    invoke-interface {v0}, Lfr/testudo/spacecorsair/business/mission/engine/BountyHunterAliveTargetCreator;->addElementToTheLevel()Lfr/testudo/spacecorsair/business/Element;

    move-result-object v0

    iput-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/BountyHunterAliveMissionEngine;->missionTargetAsAShip:Lfr/testudo/spacecorsair/business/Element;

    .line 94
    :goto_1b
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/BountyHunterAliveMissionEngine;->recompenceZoneId:Lfr/testudo/spacecorsair/game/levels/LevelId;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/levels/LevelId;->levelName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 95
    iput-boolean v1, p0, Lfr/testudo/spacecorsair/business/mission/engine/BountyHunterAliveMissionEngine;->isPlayerInRecompenceZone:Z

    .line 101
    :goto_27
    invoke-direct {p0, v1}, Lfr/testudo/spacecorsair/business/mission/engine/BountyHunterAliveMissionEngine;->displayMissionObjectives(Z)V

    .line 102
    return-void

    .line 91
    :cond_2b
    iput-boolean v2, p0, Lfr/testudo/spacecorsair/business/mission/engine/BountyHunterAliveMissionEngine;->isPlayerInTargetZone:Z

    goto :goto_1b

    .line 98
    :cond_2e
    iput-boolean v2, p0, Lfr/testudo/spacecorsair/business/mission/engine/BountyHunterAliveMissionEngine;->isPlayerInRecompenceZone:Z

    goto :goto_27
.end method

.method public restoreState()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 221
    sget-object v0, Lfr/testudo/spacecorsair/business/mission/engine/BountyHunterAliveMissionEngine$Phase;->FORCE_EJECT:Lfr/testudo/spacecorsair/business/mission/engine/BountyHunterAliveMissionEngine$Phase;

    iput-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/BountyHunterAliveMissionEngine;->currentPhase:Lfr/testudo/spacecorsair/business/mission/engine/BountyHunterAliveMissionEngine$Phase;

    .line 222
    const/4 v0, 0x0

    iput-boolean v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/BountyHunterAliveMissionEngine;->completed:Z

    .line 223
    iput-object v1, p0, Lfr/testudo/spacecorsair/business/mission/engine/BountyHunterAliveMissionEngine;->missionTargetAsAShip:Lfr/testudo/spacecorsair/business/Element;

    .line 224
    iput-object v1, p0, Lfr/testudo/spacecorsair/business/mission/engine/BountyHunterAliveMissionEngine;->missionTargetAsACosmonote:Lfr/testudo/spacecorsair/business/LootableSpaceMan;

    .line 226
    return-void
.end method

.method public saveState()V
    .registers 1

    .prologue
    .line 231
    return-void
.end method

.method public terminate()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 247
    invoke-direct {p0, v0}, Lfr/testudo/spacecorsair/business/mission/engine/BountyHunterAliveMissionEngine;->displayMissionObjectives(Z)V

    .line 248
    iput-boolean v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/BountyHunterAliveMissionEngine;->completed:Z

    .line 249
    iput-object v1, p0, Lfr/testudo/spacecorsair/business/mission/engine/BountyHunterAliveMissionEngine;->missionTargetAsAShip:Lfr/testudo/spacecorsair/business/Element;

    .line 250
    iput-object v1, p0, Lfr/testudo/spacecorsair/business/mission/engine/BountyHunterAliveMissionEngine;->missionTargetAsACosmonote:Lfr/testudo/spacecorsair/business/LootableSpaceMan;

    .line 251
    sget-object v0, Lfr/testudo/spacecorsair/business/mission/engine/BountyHunterAliveMissionEngine$Phase;->FORCE_EJECT:Lfr/testudo/spacecorsair/business/mission/engine/BountyHunterAliveMissionEngine$Phase;

    iput-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/BountyHunterAliveMissionEngine;->currentPhase:Lfr/testudo/spacecorsair/business/mission/engine/BountyHunterAliveMissionEngine$Phase;

    .line 252
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/Game;->playerCurrentShipInventory:Lfr/testudo/spacecorsair/business/player/Inventory;

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/mission/engine/BountyHunterAliveMissionEngine;->targetInventoryObject:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/business/player/Inventory;->removeAllOf(Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)V

    .line 253
    return-void
.end method
