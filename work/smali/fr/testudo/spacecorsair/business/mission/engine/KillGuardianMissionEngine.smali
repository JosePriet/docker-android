.class public Lfr/testudo/spacecorsair/business/mission/engine/KillGuardianMissionEngine;
.super Lfr/testudo/spacecorsair/business/mission/MissionListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lfr/testudo/spacecorsair/business/mission/engine/KillGuardianMissionEngine$1;,
        Lfr/testudo/spacecorsair/business/mission/engine/KillGuardianMissionEngine$Phase;
    }
.end annotation


# static fields
.field static final cruserActivity:[Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;


# instance fields
.field private completed:Z

.field public currentPhase:Lfr/testudo/spacecorsair/business/mission/engine/KillGuardianMissionEngine$Phase;

.field private destroyGuardianMessage:Ljava/lang/String;

.field private gotoRecompenseZoneMessage:Ljava/lang/String;

.field private gotoTargetMessage:Ljava/lang/String;

.field private hasShownALertMessage:Z

.field private isPlayerInRecompenceZone:Z

.field private isPlayerInTargetZone:Z

.field recompenceZoneId:Lfr/testudo/spacecorsair/game/levels/LevelId;

.field private stationGiveBackName:Ljava/lang/String;

.field target:Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;

.field targetZoneId:Lfr/testudo/spacecorsair/game/levels/LevelId;

.field private textDockToStation:Ljava/lang/String;

.field private textFailedEvidence:Ljava/lang/String;

.field private textGatherLoot:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    .line 86
    const/4 v0, 0x4

    new-array v0, v0, [Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;

    const/4 v1, 0x0

    const v2, -0x3a254000    # -7000.0f

    const v3, -0x3a448000    # -6000.0f

    invoke-static {v2, v3}, Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;->newMoove(FF)Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const v2, -0x39c48000    # -12000.0f

    const/high16 v3, -0x3a060000    # -8000.0f

    invoke-static {v2, v3}, Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;->newMoove(FF)Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const v2, 0x459c4000    # 5000.0f

    const v3, -0x39736000    # -18000.0f

    invoke-static {v2, v3}, Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;->newMoove(FF)Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const/4 v2, 0x0

    const v3, -0x39f36000    # -9000.0f

    invoke-static {v2, v3}, Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;->newMoove(FF)Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;

    move-result-object v2

    aput-object v2, v0, v1

    sput-object v0, Lfr/testudo/spacecorsair/business/mission/engine/KillGuardianMissionEngine;->cruserActivity:[Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;

    return-void
.end method

.method public constructor <init>(Lfr/testudo/spacecorsair/game/levels/LevelId;Lfr/testudo/spacecorsair/game/levels/LevelId;Ljava/lang/String;)V
    .registers 5

    .prologue
    const/4 v0, 0x0

    .line 64
    invoke-direct {p0}, Lfr/testudo/spacecorsair/business/mission/MissionListener;-><init>()V

    .line 44
    iput-boolean v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/KillGuardianMissionEngine;->isPlayerInTargetZone:Z

    .line 45
    iput-boolean v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/KillGuardianMissionEngine;->isPlayerInRecompenceZone:Z

    .line 46
    iput-boolean v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/KillGuardianMissionEngine;->completed:Z

    .line 47
    iput-boolean v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/KillGuardianMissionEngine;->hasShownALertMessage:Z

    .line 83
    const/4 v0, 0x0

    iput-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/KillGuardianMissionEngine;->target:Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;

    .line 65
    iput-object p1, p0, Lfr/testudo/spacecorsair/business/mission/engine/KillGuardianMissionEngine;->targetZoneId:Lfr/testudo/spacecorsair/game/levels/LevelId;

    .line 66
    iput-object p2, p0, Lfr/testudo/spacecorsair/business/mission/engine/KillGuardianMissionEngine;->recompenceZoneId:Lfr/testudo/spacecorsair/game/levels/LevelId;

    .line 67
    iput-object p3, p0, Lfr/testudo/spacecorsair/business/mission/engine/KillGuardianMissionEngine;->stationGiveBackName:Ljava/lang/String;

    .line 68
    sget-object v0, Lfr/testudo/spacecorsair/business/mission/engine/KillGuardianMissionEngine$Phase;->DESTROY_GUARDIAN:Lfr/testudo/spacecorsair/business/mission/engine/KillGuardianMissionEngine$Phase;

    iput-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/KillGuardianMissionEngine;->currentPhase:Lfr/testudo/spacecorsair/business/mission/engine/KillGuardianMissionEngine$Phase;

    .line 69
    invoke-direct {p0}, Lfr/testudo/spacecorsair/business/mission/engine/KillGuardianMissionEngine;->initStrings()V

    .line 70
    return-void
.end method

.method private addTargetToLevel()V
    .registers 8

    .prologue
    const/16 v0, 0x8

    const/4 v6, 0x1

    .line 89
    sget-object v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v1, v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v1, v1, Lfr/testudo/spacecorsair/game/Game;->playerInfo:Lfr/testudo/spacecorsair/business/player/PlayerInfo;

    iget v1, v1, Lfr/testudo/spacecorsair/business/player/PlayerInfo;->level:I

    .line 90
    if-gt v1, v0, :cond_6c

    .line 94
    :goto_d
    invoke-static {v0}, Lfr/testudo/spacecorsair/business/world/civil/CivilFactory;->newGuardianCivilShip(I)Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;

    move-result-object v0

    iput-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/KillGuardianMissionEngine;->target:Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;

    .line 96
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/KillGuardianMissionEngine;->target:Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;

    iput-boolean v6, v0, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->neverEscapeWhenInjured:Z

    .line 101
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/KillGuardianMissionEngine;->target:Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;

    const/16 v1, 0x28

    iput v1, v0, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->amountOfDamageAllowedInRatioByPlayerBeforeRebelion:I

    .line 102
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/KillGuardianMissionEngine;->target:Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;

    sget-object v1, Lfr/testudo/spacecorsair/business/mission/engine/KillGuardianMissionEngine;->cruserActivity:[Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->setActivity([Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;)V

    .line 103
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/KillGuardianMissionEngine;->target:Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;

    sget-object v1, Lfr/testudo/spacecorsair/business/world/UniverseName;->GUARDIAN_SHIP_NAME:Ljava/lang/String;

    iput-object v1, v0, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->specificName:Ljava/lang/String;

    .line 106
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/KillGuardianMissionEngine;->target:Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;

    new-instance v1, Lfr/testudo/spacecorsair/business/loot/LootConfig;

    sget-object v2, Lfr/testudo/spacecorsair/business/loot/LootProbability;->MISSION:[Lfr/testudo/spacecorsair/business/loot/LootProbability;

    new-instance v3, Lfr/testudo/spacecorsair/business/loot/LootRangeBuilder;

    invoke-direct {v3}, Lfr/testudo/spacecorsair/business/loot/LootRangeBuilder;-><init>()V

    sget-object v4, Lfr/testudo/spacecorsair/business/loot/LootRarety;->BASIC:Lfr/testudo/spacecorsair/business/loot/LootRarety;

    sget-object v5, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->electonicChip:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    invoke-virtual {v3, v4, v5}, Lfr/testudo/spacecorsair/business/loot/LootRangeBuilder;->add(Lfr/testudo/spacecorsair/business/loot/LootRarety;Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)Lfr/testudo/spacecorsair/business/loot/LootRangeBuilder;

    move-result-object v3

    invoke-virtual {v3}, Lfr/testudo/spacecorsair/business/loot/LootRangeBuilder;->build()Ljava/util/Map;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lfr/testudo/spacecorsair/business/loot/LootConfig;-><init>([Lfr/testudo/spacecorsair/business/loot/LootProbability;Ljava/util/Map;)V

    iput-object v1, v0, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->lootConfig:Lfr/testudo/spacecorsair/business/loot/LootConfig;

    .line 107
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/KillGuardianMissionEngine;->target:Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;

    const v1, -0x3a254000    # -7000.0f

    const v2, -0x3a448000    # -6000.0f

    invoke-virtual {v0, v1, v2}, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->setPosition(FF)Lfr/testudo/spacecorsair/business/Element;

    .line 108
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/KillGuardianMissionEngine;->target:Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;

    iput-boolean v6, v0, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->isMissionObjective:Z

    .line 109
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/KillGuardianMissionEngine;->target:Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;

    sget-object v1, Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;->RED:Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;

    iput-object v1, v0, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->missionObjectiveColor:Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;

    .line 111
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/mission/engine/KillGuardianMissionEngine;->target:Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->queueElementToBeAddToLevel(Lfr/testudo/spacecorsair/business/Element;)V

    .line 112
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/Game;->currentLevel:Lfr/testudo/spacecorsair/game/levels/Level;

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/game/levels/Level;->requestPlayerGotoLastPosOfElements()V

    .line 114
    return-void

    :cond_6c
    move v0, v1

    goto :goto_d
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

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/mission/engine/KillGuardianMissionEngine;->targetZoneId:Lfr/testudo/spacecorsair/game/levels/LevelId;

    iget-object v1, v1, Lfr/testudo/spacecorsair/game/levels/LevelId;->levelName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/KillGuardianMissionEngine;->gotoTargetMessage:Ljava/lang/String;

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

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/mission/engine/KillGuardianMissionEngine;->recompenceZoneId:Lfr/testudo/spacecorsair/game/levels/LevelId;

    iget-object v1, v1, Lfr/testudo/spacecorsair/game/levels/LevelId;->levelName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/KillGuardianMissionEngine;->gotoRecompenseZoneMessage:Ljava/lang/String;

    .line 75
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    const v1, 0x7f0701a1

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->getStringRessource(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/KillGuardianMissionEngine;->destroyGuardianMessage:Ljava/lang/String;

    .line 76
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

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/mission/engine/KillGuardianMissionEngine;->stationGiveBackName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/KillGuardianMissionEngine;->textDockToStation:Ljava/lang/String;

    .line 77
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    const v1, 0x7f0701a2

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->getStringRessource(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/KillGuardianMissionEngine;->textGatherLoot:Ljava/lang/String;

    .line 78
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    const v1, 0x7f0701a3

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->getStringRessource(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/KillGuardianMissionEngine;->textFailedEvidence:Ljava/lang/String;

    .line 79
    return-void
.end method

.method private onEvidenceLooted()V
    .registers 6

    .prologue
    .line 367
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/Game;->gameThread:Lfr/testudo/spacecorsair/engine/GameThread;

    const v1, 0x7f02005a

    const v2, 0x7f0702f5

    const v3, 0x7f0701a5

    const/16 v4, 0xbb8

    invoke-virtual {v0, v1, v2, v3, v4}, Lfr/testudo/spacecorsair/engine/GameThread;->showDialog(IIII)V

    .line 368
    sget-object v0, Lfr/testudo/spacecorsair/business/mission/engine/KillGuardianMissionEngine$Phase;->ESCAPE:Lfr/testudo/spacecorsair/business/mission/engine/KillGuardianMissionEngine$Phase;

    iput-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/KillGuardianMissionEngine;->currentPhase:Lfr/testudo/spacecorsair/business/mission/engine/KillGuardianMissionEngine$Phase;

    .line 370
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lfr/testudo/spacecorsair/business/mission/engine/KillGuardianMissionEngine;->setPhaseGateTarget(Z)V

    .line 371
    return-void
.end method

.method private onTargetDestroyed()V
    .registers 2

    .prologue
    .line 255
    sget-object v0, Lfr/testudo/spacecorsair/business/mission/engine/KillGuardianMissionEngine$Phase;->RECUP_LOOT:Lfr/testudo/spacecorsair/business/mission/engine/KillGuardianMissionEngine$Phase;

    iput-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/KillGuardianMissionEngine;->currentPhase:Lfr/testudo/spacecorsair/business/mission/engine/KillGuardianMissionEngine$Phase;

    .line 256
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lfr/testudo/spacecorsair/business/mission/engine/KillGuardianMissionEngine;->setPhaseGateTarget(Z)V

    .line 258
    return-void
.end method

.method private setMissionFailed(Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 374
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    const v1, 0x7f07029c

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->getStringRessource(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lfr/testudo/spacecorsair/display/hud/WelcomeMessage;->setText(Ljava/lang/String;Ljava/lang/String;)V

    .line 375
    invoke-virtual {p0}, Lfr/testudo/spacecorsair/business/mission/engine/KillGuardianMissionEngine;->init()V

    .line 376
    return-void
.end method

.method private setPhaseGateTarget(Z)V
    .registers 4

    .prologue
    .line 158
    sget-object v0, Lfr/testudo/spacecorsair/business/mission/engine/KillGuardianMissionEngine$1;->$SwitchMap$fr$testudo$spacecorsair$business$mission$engine$KillGuardianMissionEngine$Phase:[I

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/mission/engine/KillGuardianMissionEngine;->currentPhase:Lfr/testudo/spacecorsair/business/mission/engine/KillGuardianMissionEngine$Phase;

    invoke-virtual {v1}, Lfr/testudo/spacecorsair/business/mission/engine/KillGuardianMissionEngine$Phase;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_48

    .line 183
    :cond_d
    :goto_d
    return-void

    .line 160
    :pswitch_e
    iget-boolean v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/KillGuardianMissionEngine;->isPlayerInTargetZone:Z

    if-nez v0, :cond_d

    .line 164
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/Game;->currentLevel:Lfr/testudo/spacecorsair/game/levels/Level;

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/mission/engine/KillGuardianMissionEngine;->targetZoneId:Lfr/testudo/spacecorsair/game/levels/LevelId;

    invoke-static {v1}, Lfr/testudo/spacecorsair/business/world/PathFinder;->getPortalNameToGoTo(Lfr/testudo/spacecorsair/game/levels/LevelId;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/game/levels/Level;->findPortalByName(Ljava/lang/String;)Lfr/testudo/spacecorsair/business/world/Portal;

    move-result-object v0

    .line 165
    if-eqz v0, :cond_d

    .line 166
    iput-boolean p1, v0, Lfr/testudo/spacecorsair/business/world/Portal;->isMissionObjective:Z

    .line 167
    sget-object v1, Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;->ORANGE:Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;

    iput-object v1, v0, Lfr/testudo/spacecorsair/business/world/Portal;->missionObjectiveColor:Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;

    goto :goto_d

    .line 172
    :pswitch_2b
    iget-boolean v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/KillGuardianMissionEngine;->isPlayerInRecompenceZone:Z

    if-nez v0, :cond_d

    .line 176
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/Game;->currentLevel:Lfr/testudo/spacecorsair/game/levels/Level;

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/mission/engine/KillGuardianMissionEngine;->recompenceZoneId:Lfr/testudo/spacecorsair/game/levels/LevelId;

    invoke-static {v1}, Lfr/testudo/spacecorsair/business/world/PathFinder;->getPortalNameToGoTo(Lfr/testudo/spacecorsair/game/levels/LevelId;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/game/levels/Level;->findPortalByName(Ljava/lang/String;)Lfr/testudo/spacecorsair/business/world/Portal;

    move-result-object v0

    .line 177
    if-eqz v0, :cond_d

    .line 178
    iput-boolean p1, v0, Lfr/testudo/spacecorsair/business/world/Portal;->isMissionObjective:Z

    .line 179
    sget-object v1, Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;->ORANGE:Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;

    iput-object v1, v0, Lfr/testudo/spacecorsair/business/world/Portal;->missionObjectiveColor:Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;

    goto :goto_d

    .line 158
    :pswitch_data_48
    .packed-switch 0x1
        :pswitch_e
        :pswitch_2b
        :pswitch_2b
    .end packed-switch
.end method


# virtual methods
.method public getCurrentInstruction()Ljava/lang/String;
    .registers 3

    .prologue
    .line 265
    sget-object v0, Lfr/testudo/spacecorsair/business/mission/engine/KillGuardianMissionEngine$1;->$SwitchMap$fr$testudo$spacecorsair$business$mission$engine$KillGuardianMissionEngine$Phase:[I

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/mission/engine/KillGuardianMissionEngine;->currentPhase:Lfr/testudo/spacecorsair/business/mission/engine/KillGuardianMissionEngine$Phase;

    invoke-virtual {v1}, Lfr/testudo/spacecorsair/business/mission/engine/KillGuardianMissionEngine$Phase;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_2c

    .line 295
    :cond_d
    const-string v0, ""

    :goto_f
    return-object v0

    .line 269
    :pswitch_10
    iget-boolean v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/KillGuardianMissionEngine;->isPlayerInTargetZone:Z

    if-nez v0, :cond_17

    .line 270
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/KillGuardianMissionEngine;->gotoTargetMessage:Ljava/lang/String;

    goto :goto_f

    .line 272
    :cond_17
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/KillGuardianMissionEngine;->target:Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;

    if-eqz v0, :cond_d

    .line 273
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/KillGuardianMissionEngine;->destroyGuardianMessage:Ljava/lang/String;

    goto :goto_f

    .line 280
    :pswitch_1e
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/KillGuardianMissionEngine;->textGatherLoot:Ljava/lang/String;

    goto :goto_f

    .line 286
    :pswitch_21
    iget-boolean v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/KillGuardianMissionEngine;->isPlayerInRecompenceZone:Z

    if-nez v0, :cond_28

    .line 287
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/KillGuardianMissionEngine;->gotoRecompenseZoneMessage:Ljava/lang/String;

    goto :goto_f

    .line 290
    :cond_28
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/KillGuardianMissionEngine;->textDockToStation:Ljava/lang/String;

    goto :goto_f

    .line 265
    nop

    :pswitch_data_2c
    .packed-switch 0x1
        :pswitch_10
        :pswitch_21
        :pswitch_21
        :pswitch_1e
    .end packed-switch
.end method

.method public giveUp()V
    .registers 2

    .prologue
    .line 319
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/KillGuardianMissionEngine;->target:Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;

    if-eqz v0, :cond_23

    iget-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/KillGuardianMissionEngine;->target:Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;

    iget-boolean v0, v0, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->removed:Z

    if-nez v0, :cond_23

    .line 320
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/Game;->currentLevel:Lfr/testudo/spacecorsair/game/levels/Level;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/levels/Level;->toAdd:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 321
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/KillGuardianMissionEngine;->target:Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->remove()V

    .line 322
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/Game;->currentLevel:Lfr/testudo/spacecorsair/game/levels/Level;

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/game/levels/Level;->commitChanges()V

    .line 325
    :cond_23
    invoke-virtual {p0}, Lfr/testudo/spacecorsair/business/mission/engine/KillGuardianMissionEngine;->terminate()V

    .line 327
    return-void
.end method

.method public init()V
    .registers 4

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 301
    sget-object v0, Lfr/testudo/spacecorsair/business/mission/engine/KillGuardianMissionEngine$Phase;->DESTROY_GUARDIAN:Lfr/testudo/spacecorsair/business/mission/engine/KillGuardianMissionEngine$Phase;

    iput-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/KillGuardianMissionEngine;->currentPhase:Lfr/testudo/spacecorsair/business/mission/engine/KillGuardianMissionEngine$Phase;

    .line 302
    iput-boolean v2, p0, Lfr/testudo/spacecorsair/business/mission/engine/KillGuardianMissionEngine;->completed:Z

    .line 303
    iput-object v1, p0, Lfr/testudo/spacecorsair/business/mission/engine/KillGuardianMissionEngine;->target:Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;

    .line 304
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/Game;->currentLevel:Lfr/testudo/spacecorsair/game/levels/Level;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/levels/Level;->name:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lfr/testudo/spacecorsair/business/mission/engine/KillGuardianMissionEngine;->onZoneChanged(Ljava/lang/String;Ljava/lang/String;)V

    .line 305
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/Game;->playerCurrentShipInventory:Lfr/testudo/spacecorsair/business/player/Inventory;

    sget-object v1, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->electonicChip:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/business/player/Inventory;->removeAllOf(Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)V

    .line 306
    iput-boolean v2, p0, Lfr/testudo/spacecorsair/business/mission/engine/KillGuardianMissionEngine;->hasShownALertMessage:Z

    .line 307
    return-void
.end method

.method public isCompleted()Z
    .registers 2

    .prologue
    .line 311
    iget-boolean v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/KillGuardianMissionEngine;->completed:Z

    return v0
.end method

.method public onBeforePlayerDock()V
    .registers 1

    .prologue
    .line 229
    return-void
.end method

.method public onCivilAttackedByPlayer(Lfr/testudo/spacecorsair/business/world/civil/CivilShip;)V
    .registers 7

    .prologue
    .line 356
    if-nez p1, :cond_3

    .line 363
    :cond_2
    :goto_2
    return-void

    .line 359
    :cond_3
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/KillGuardianMissionEngine;->target:Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/KillGuardianMissionEngine;->hasShownALertMessage:Z

    if-nez v0, :cond_2

    .line 360
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/Game;->gameThread:Lfr/testudo/spacecorsair/engine/GameThread;

    const v1, 0x7f020058

    const v2, 0x7f0702f7

    const v3, 0x7f0701a4

    const/16 v4, 0x12c

    invoke-virtual {v0, v1, v2, v3, v4}, Lfr/testudo/spacecorsair/engine/GameThread;->showDialog(IIII)V

    .line 361
    const/4 v0, 0x1

    iput-boolean v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/KillGuardianMissionEngine;->hasShownALertMessage:Z

    goto :goto_2
.end method

.method public onDoPhysic(J)V
    .registers 3

    .prologue
    .line 249
    return-void
.end method

.method public onElementDestroyed(Lfr/testudo/spacecorsair/business/Element;)V
    .registers 3

    .prologue
    .line 211
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/KillGuardianMissionEngine;->target:Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 212
    invoke-direct {p0}, Lfr/testudo/spacecorsair/business/mission/engine/KillGuardianMissionEngine;->onTargetDestroyed()V

    .line 214
    :cond_b
    return-void
.end method

.method public onElementDestroyedByPlayer(Lfr/testudo/spacecorsair/business/Element;)V
    .registers 2

    .prologue
    .line 219
    return-void
.end method

.method public onEveryMinute()V
    .registers 1

    .prologue
    .line 207
    return-void
.end method

.method public onEveryTenGameSec()V
    .registers 1

    .prologue
    .line 202
    return-void
.end method

.method public onPlayerBuyItem(Lfr/testudo/spacecorsair/business/loot/SpaceObject;)V
    .registers 2

    .prologue
    .line 239
    return-void
.end method

.method public onPlayerDeath()V
    .registers 1

    .prologue
    .line 224
    return-void
.end method

.method public onPlayerLoot(Lfr/testudo/spacecorsair/business/loot/LootElement;)Z
    .registers 4

    .prologue
    .line 189
    iget-object v0, p1, Lfr/testudo/spacecorsair/business/loot/LootElement;->spaceObjectType:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    sget-object v1, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->electonicChip:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 190
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/KillGuardianMissionEngine;->currentPhase:Lfr/testudo/spacecorsair/business/mission/engine/KillGuardianMissionEngine$Phase;

    sget-object v1, Lfr/testudo/spacecorsair/business/mission/engine/KillGuardianMissionEngine$Phase;->RECUP_LOOT:Lfr/testudo/spacecorsair/business/mission/engine/KillGuardianMissionEngine$Phase;

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/business/mission/engine/KillGuardianMissionEngine$Phase;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 191
    invoke-direct {p0}, Lfr/testudo/spacecorsair/business/mission/engine/KillGuardianMissionEngine;->onEvidenceLooted()V

    .line 195
    :cond_17
    const/4 v0, 0x1

    return v0
.end method

.method public onPlayerSellItem(Lfr/testudo/spacecorsair/business/loot/SpaceObject;)V
    .registers 2

    .prologue
    .line 234
    return-void
.end method

.method public onPlayerUndock()V
    .registers 1

    .prologue
    .line 244
    return-void
.end method

.method public onZoneChanged(Ljava/lang/String;Ljava/lang/String;)V
    .registers 7

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 118
    const/4 v0, 0x0

    iput-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/KillGuardianMissionEngine;->target:Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;

    .line 119
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/KillGuardianMissionEngine;->targetZoneId:Lfr/testudo/spacecorsair/game/levels/LevelId;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/levels/LevelId;->levelName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7d

    .line 120
    iput-boolean v2, p0, Lfr/testudo/spacecorsair/business/mission/engine/KillGuardianMissionEngine;->isPlayerInTargetZone:Z

    .line 121
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/KillGuardianMissionEngine;->currentPhase:Lfr/testudo/spacecorsair/business/mission/engine/KillGuardianMissionEngine$Phase;

    sget-object v1, Lfr/testudo/spacecorsair/business/mission/engine/KillGuardianMissionEngine$Phase;->DESTROY_GUARDIAN:Lfr/testudo/spacecorsair/business/mission/engine/KillGuardianMissionEngine$Phase;

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/business/mission/engine/KillGuardianMissionEngine$Phase;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 122
    invoke-direct {p0}, Lfr/testudo/spacecorsair/business/mission/engine/KillGuardianMissionEngine;->addTargetToLevel()V

    .line 128
    :cond_1e
    :goto_1e
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/KillGuardianMissionEngine;->recompenceZoneId:Lfr/testudo/spacecorsair/game/levels/LevelId;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/levels/LevelId;->levelName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_80

    .line 129
    iput-boolean v2, p0, Lfr/testudo/spacecorsair/business/mission/engine/KillGuardianMissionEngine;->isPlayerInRecompenceZone:Z

    .line 130
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/KillGuardianMissionEngine;->currentPhase:Lfr/testudo/spacecorsair/business/mission/engine/KillGuardianMissionEngine$Phase;

    sget-object v1, Lfr/testudo/spacecorsair/business/mission/engine/KillGuardianMissionEngine$Phase;->ESCAPE:Lfr/testudo/spacecorsair/business/mission/engine/KillGuardianMissionEngine$Phase;

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/business/mission/engine/KillGuardianMissionEngine$Phase;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4b

    .line 131
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/KillGuardianMissionEngine;->currentPhase:Lfr/testudo/spacecorsair/business/mission/engine/KillGuardianMissionEngine$Phase;

    sget-object v1, Lfr/testudo/spacecorsair/business/mission/engine/KillGuardianMissionEngine$Phase;->GATHER_RECOMP:Lfr/testudo/spacecorsair/business/mission/engine/KillGuardianMissionEngine$Phase;

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/business/mission/engine/KillGuardianMissionEngine$Phase;->equals(Ljava/lang/Object;)Z

    .line 132
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    const v1, 0x7f0702c1

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->getStringRessource(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-static {v0, v1}, Lfr/testudo/spacecorsair/display/hud/WelcomeMessage;->setText(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    iput-boolean v2, p0, Lfr/testudo/spacecorsair/business/mission/engine/KillGuardianMissionEngine;->completed:Z

    .line 135
    :cond_4b
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/KillGuardianMissionEngine;->currentPhase:Lfr/testudo/spacecorsair/business/mission/engine/KillGuardianMissionEngine$Phase;

    sget-object v1, Lfr/testudo/spacecorsair/business/mission/engine/KillGuardianMissionEngine$Phase;->GATHER_RECOMP:Lfr/testudo/spacecorsair/business/mission/engine/KillGuardianMissionEngine$Phase;

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/business/mission/engine/KillGuardianMissionEngine$Phase;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_69

    .line 136
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/Game;->currentLevel:Lfr/testudo/spacecorsair/game/levels/Level;

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/mission/engine/KillGuardianMissionEngine;->stationGiveBackName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/game/levels/Level;->findStationByName(Ljava/lang/String;)Lfr/testudo/spacecorsair/business/world/station/Station;

    move-result-object v0

    .line 137
    if-eqz v0, :cond_69

    .line 138
    iput-boolean v2, v0, Lfr/testudo/spacecorsair/business/world/station/Station;->isMissionObjective:Z

    .line 139
    sget-object v1, Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;->ORANGE:Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;

    iput-object v1, v0, Lfr/testudo/spacecorsair/business/world/station/Station;->missionObjectiveColor:Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;

    .line 148
    :cond_69
    :goto_69
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/KillGuardianMissionEngine;->currentPhase:Lfr/testudo/spacecorsair/business/mission/engine/KillGuardianMissionEngine$Phase;

    sget-object v1, Lfr/testudo/spacecorsair/business/mission/engine/KillGuardianMissionEngine$Phase;->RECUP_LOOT:Lfr/testudo/spacecorsair/business/mission/engine/KillGuardianMissionEngine$Phase;

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/business/mission/engine/KillGuardianMissionEngine$Phase;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_83

    iget-boolean v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/KillGuardianMissionEngine;->isPlayerInTargetZone:Z

    if-nez v0, :cond_83

    .line 149
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/KillGuardianMissionEngine;->textFailedEvidence:Ljava/lang/String;

    invoke-direct {p0, v0}, Lfr/testudo/spacecorsair/business/mission/engine/KillGuardianMissionEngine;->setMissionFailed(Ljava/lang/String;)V

    .line 154
    :goto_7c
    return-void

    .line 125
    :cond_7d
    iput-boolean v3, p0, Lfr/testudo/spacecorsair/business/mission/engine/KillGuardianMissionEngine;->isPlayerInTargetZone:Z

    goto :goto_1e

    .line 144
    :cond_80
    iput-boolean v3, p0, Lfr/testudo/spacecorsair/business/mission/engine/KillGuardianMissionEngine;->isPlayerInRecompenceZone:Z

    goto :goto_69

    .line 153
    :cond_83
    invoke-direct {p0, v2}, Lfr/testudo/spacecorsair/business/mission/engine/KillGuardianMissionEngine;->setPhaseGateTarget(Z)V

    goto :goto_7c
.end method

.method public restoreState()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 341
    sget-object v0, Lfr/testudo/spacecorsair/business/mission/engine/KillGuardianMissionEngine$Phase;->DESTROY_GUARDIAN:Lfr/testudo/spacecorsair/business/mission/engine/KillGuardianMissionEngine$Phase;

    iput-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/KillGuardianMissionEngine;->currentPhase:Lfr/testudo/spacecorsair/business/mission/engine/KillGuardianMissionEngine$Phase;

    .line 342
    iput-boolean v2, p0, Lfr/testudo/spacecorsair/business/mission/engine/KillGuardianMissionEngine;->completed:Z

    .line 343
    const/4 v0, 0x0

    iput-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/KillGuardianMissionEngine;->target:Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;

    .line 344
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/Game;->playerCurrentShipInventory:Lfr/testudo/spacecorsair/business/player/Inventory;

    sget-object v1, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->electonicChip:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/business/player/Inventory;->removeAllOf(Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)V

    .line 345
    iput-boolean v2, p0, Lfr/testudo/spacecorsair/business/mission/engine/KillGuardianMissionEngine;->hasShownALertMessage:Z

    .line 347
    return-void
.end method

.method public saveState()V
    .registers 1

    .prologue
    .line 352
    return-void
.end method

.method public terminate()V
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 331
    invoke-direct {p0, v0}, Lfr/testudo/spacecorsair/business/mission/engine/KillGuardianMissionEngine;->setPhaseGateTarget(Z)V

    .line 332
    iput-boolean v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/KillGuardianMissionEngine;->completed:Z

    .line 333
    const/4 v0, 0x0

    iput-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/KillGuardianMissionEngine;->target:Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;

    .line 334
    sget-object v0, Lfr/testudo/spacecorsair/business/mission/engine/KillGuardianMissionEngine$Phase;->DESTROY_GUARDIAN:Lfr/testudo/spacecorsair/business/mission/engine/KillGuardianMissionEngine$Phase;

    iput-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/KillGuardianMissionEngine;->currentPhase:Lfr/testudo/spacecorsair/business/mission/engine/KillGuardianMissionEngine$Phase;

    .line 335
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/Game;->playerCurrentShipInventory:Lfr/testudo/spacecorsair/business/player/Inventory;

    sget-object v1, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->electonicChip:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/business/player/Inventory;->removeAllOf(Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)V

    .line 336
    return-void
.end method
