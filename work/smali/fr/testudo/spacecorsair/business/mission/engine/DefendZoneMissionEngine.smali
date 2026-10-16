.class public Lfr/testudo/spacecorsair/business/mission/engine/DefendZoneMissionEngine;
.super Lfr/testudo/spacecorsair/business/mission/MissionListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lfr/testudo/spacecorsair/business/mission/engine/DefendZoneMissionEngine$1;,
        Lfr/testudo/spacecorsair/business/mission/engine/DefendZoneMissionEngine$Phase;
    }
.end annotation


# instance fields
.field public attackDuration:I

.field public attackSpawnPoint:Lfr/testudo/spacecorsair/engine/Vector2;

.field public attackZoneId:Lfr/testudo/spacecorsair/game/levels/LevelId;

.field public completed:Z

.field public curWavePopNumber:I

.field public currentPhase:Lfr/testudo/spacecorsair/business/mission/engine/DefendZoneMissionEngine$Phase;

.field public inWavePopSpeed:I

.field public invisiblePoint:Lfr/testudo/spacecorsair/business/world/InvisiblePoint;

.field private isPlayerInAttackZone:Z

.field private isPlayerInRecompenceZone:Z

.field public missionId:Ljava/lang/String;

.field public popHandler:Lfr/testudo/spacecorsair/business/mission/engine/DefendZoneSpecificConfHandler;

.field public recompenceZoneId:Lfr/testudo/spacecorsair/game/levels/LevelId;

.field public remainingAttacktime:I

.field public remainingNextWave:I

.field public statCurWaveEnnemis:I

.field public statWaveNumber:I

.field public stationRewardName:Ljava/lang/String;

.field public textDefendZone:Ljava/lang/String;

.field public textDefendZoneRessourceId:I

.field public textDockToStation:Ljava/lang/String;

.field public textGotoAttackZone:Ljava/lang/String;

.field public textGotoRecompZone:Ljava/lang/String;

.field public waveEnnemisCount:I

.field public waveFrequency:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Lfr/testudo/spacecorsair/game/levels/LevelId;Lfr/testudo/spacecorsair/game/levels/LevelId;Ljava/lang/String;ILfr/testudo/spacecorsair/engine/Vector2;IIILfr/testudo/spacecorsair/business/mission/engine/DefendZoneSpecificConfHandler;I)V
    .registers 15

    .prologue
    .line 93
    invoke-direct {p0}, Lfr/testudo/spacecorsair/business/mission/MissionListener;-><init>()V

    .line 48
    const/4 v0, 0x0

    iput-boolean v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/DefendZoneMissionEngine;->completed:Z

    .line 50
    new-instance v0, Lfr/testudo/spacecorsair/engine/Vector2;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>(FF)V

    iput-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/DefendZoneMissionEngine;->attackSpawnPoint:Lfr/testudo/spacecorsair/engine/Vector2;

    .line 52
    const/4 v0, 0x0

    iput v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/DefendZoneMissionEngine;->attackDuration:I

    .line 53
    const/4 v0, 0x0

    iput v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/DefendZoneMissionEngine;->waveFrequency:I

    .line 54
    const/4 v0, 0x4

    iput v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/DefendZoneMissionEngine;->waveEnnemisCount:I

    .line 63
    const/4 v0, 0x0

    iput-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/DefendZoneMissionEngine;->textGotoAttackZone:Ljava/lang/String;

    .line 64
    const/4 v0, 0x0

    iput-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/DefendZoneMissionEngine;->textDefendZone:Ljava/lang/String;

    .line 67
    const/4 v0, 0x0

    iput-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/DefendZoneMissionEngine;->stationRewardName:Ljava/lang/String;

    .line 78
    const/4 v0, 0x0

    iput v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/DefendZoneMissionEngine;->remainingAttacktime:I

    .line 79
    const/4 v0, 0x0

    iput v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/DefendZoneMissionEngine;->remainingNextWave:I

    .line 80
    const/16 v0, 0x7d0

    iput v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/DefendZoneMissionEngine;->inWavePopSpeed:I

    .line 84
    const/4 v0, 0x1

    iput v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/DefendZoneMissionEngine;->statWaveNumber:I

    .line 85
    const/4 v0, 0x1

    iput v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/DefendZoneMissionEngine;->statCurWaveEnnemis:I

    .line 95
    iput-object p1, p0, Lfr/testudo/spacecorsair/business/mission/engine/DefendZoneMissionEngine;->missionId:Ljava/lang/String;

    .line 96
    iput-object p2, p0, Lfr/testudo/spacecorsair/business/mission/engine/DefendZoneMissionEngine;->attackZoneId:Lfr/testudo/spacecorsair/game/levels/LevelId;

    .line 97
    iput-object p3, p0, Lfr/testudo/spacecorsair/business/mission/engine/DefendZoneMissionEngine;->recompenceZoneId:Lfr/testudo/spacecorsair/game/levels/LevelId;

    .line 98
    iput-object p4, p0, Lfr/testudo/spacecorsair/business/mission/engine/DefendZoneMissionEngine;->stationRewardName:Ljava/lang/String;

    .line 99
    iput p5, p0, Lfr/testudo/spacecorsair/business/mission/engine/DefendZoneMissionEngine;->textDefendZoneRessourceId:I

    .line 100
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/DefendZoneMissionEngine;->attackSpawnPoint:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v0, p6}, Lfr/testudo/spacecorsair/engine/Vector2;->setSameAs(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 101
    mul-int/lit16 v0, p7, 0x3e8

    iput v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/DefendZoneMissionEngine;->attackDuration:I

    .line 102
    mul-int/lit16 v0, p8, 0x3e8

    iput v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/DefendZoneMissionEngine;->waveFrequency:I

    .line 103
    iput p9, p0, Lfr/testudo/spacecorsair/business/mission/engine/DefendZoneMissionEngine;->waveEnnemisCount:I

    .line 104
    iput-object p10, p0, Lfr/testudo/spacecorsair/business/mission/engine/DefendZoneMissionEngine;->popHandler:Lfr/testudo/spacecorsair/business/mission/engine/DefendZoneSpecificConfHandler;

    .line 105
    iput p11, p0, Lfr/testudo/spacecorsair/business/mission/engine/DefendZoneMissionEngine;->inWavePopSpeed:I

    .line 107
    invoke-virtual {p0}, Lfr/testudo/spacecorsair/business/mission/engine/DefendZoneMissionEngine;->initStrings()V

    .line 108
    return-void
.end method

.method private addInvisiblePoint()V
    .registers 3

    .prologue
    .line 137
    invoke-static {}, Lfr/testudo/spacecorsair/business/factory/GamePools;->newInvisiblePoint()Lfr/testudo/spacecorsair/business/world/InvisiblePoint;

    move-result-object v0

    iput-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/DefendZoneMissionEngine;->invisiblePoint:Lfr/testudo/spacecorsair/business/world/InvisiblePoint;

    .line 138
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/DefendZoneMissionEngine;->invisiblePoint:Lfr/testudo/spacecorsair/business/world/InvisiblePoint;

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/mission/engine/DefendZoneMissionEngine;->attackSpawnPoint:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/business/world/InvisiblePoint;->init(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/business/world/InvisiblePoint;

    .line 139
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/DefendZoneMissionEngine;->invisiblePoint:Lfr/testudo/spacecorsair/business/world/InvisiblePoint;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lfr/testudo/spacecorsair/business/world/InvisiblePoint;->isMissionObjective:Z

    .line 140
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/DefendZoneMissionEngine;->invisiblePoint:Lfr/testudo/spacecorsair/business/world/InvisiblePoint;

    sget-object v1, Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;->RED:Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;

    iput-object v1, v0, Lfr/testudo/spacecorsair/business/world/InvisiblePoint;->missionObjectiveColor:Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;

    .line 141
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/Game;->currentLevel:Lfr/testudo/spacecorsair/game/levels/Level;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/levels/Level;->toAdd:Ljava/util/List;

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/mission/engine/DefendZoneMissionEngine;->invisiblePoint:Lfr/testudo/spacecorsair/business/world/InvisiblePoint;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 143
    return-void
.end method

.method private onNextWave()V
    .registers 6

    .prologue
    .line 185
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/DefendZoneMissionEngine;->popHandler:Lfr/testudo/spacecorsair/business/mission/engine/DefendZoneSpecificConfHandler;

    iget v1, p0, Lfr/testudo/spacecorsair/business/mission/engine/DefendZoneMissionEngine;->statWaveNumber:I

    iget v2, p0, Lfr/testudo/spacecorsair/business/mission/engine/DefendZoneMissionEngine;->statCurWaveEnnemis:I

    iget v3, p0, Lfr/testudo/spacecorsair/business/mission/engine/DefendZoneMissionEngine;->waveEnnemisCount:I

    iget-object v4, p0, Lfr/testudo/spacecorsair/business/mission/engine/DefendZoneMissionEngine;->attackSpawnPoint:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-interface {v0, v1, v2, v3, v4}, Lfr/testudo/spacecorsair/business/mission/engine/DefendZoneSpecificConfHandler;->onEnnemisOfWave(IIILfr/testudo/spacecorsair/engine/Vector2;)V

    .line 186
    return-void
.end method

.method private onStopAttack()V
    .registers 4

    .prologue
    const/4 v2, 0x1

    .line 170
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->soundManager:Lfr/testudo/spacecorsair/engine/SoundManager;

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/engine/SoundManager;->playMissionComplete()V

    .line 171
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/Game;->currentLevel:Lfr/testudo/spacecorsair/game/levels/Level;

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/game/levels/Level;->enableAllPortals()V

    .line 173
    sget-object v0, Lfr/testudo/spacecorsair/business/mission/engine/DefendZoneMissionEngine$Phase;->REWARD:Lfr/testudo/spacecorsair/business/mission/engine/DefendZoneMissionEngine$Phase;

    iput-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/DefendZoneMissionEngine;->currentPhase:Lfr/testudo/spacecorsair/business/mission/engine/DefendZoneMissionEngine$Phase;

    .line 174
    iput-boolean v2, p0, Lfr/testudo/spacecorsair/business/mission/engine/DefendZoneMissionEngine;->completed:Z

    .line 175
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    const v1, 0x7f0702c1

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->getStringRessource(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-static {v0, v1}, Lfr/testudo/spacecorsair/display/hud/WelcomeMessage;->setText(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    invoke-direct {p0, v2}, Lfr/testudo/spacecorsair/business/mission/engine/DefendZoneMissionEngine;->setPhaseGateAndStationTarget(Z)V

    .line 177
    invoke-direct {p0}, Lfr/testudo/spacecorsair/business/mission/engine/DefendZoneMissionEngine;->removeInvisiblePoint()V

    .line 178
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-boolean v0, v0, Lfr/testudo/spacecorsair/game/Game;->started:Z

    if-eqz v0, :cond_42

    .line 179
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->musicManager:Lfr/testudo/spacecorsair/engine/MusicManager;

    sget-object v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v1, v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v1, v1, Lfr/testudo/spacecorsair/game/Game;->currentLevel:Lfr/testudo/spacecorsair/game/levels/Level;

    iget v1, v1, Lfr/testudo/spacecorsair/game/levels/Level;->musicResourceId:I

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/engine/MusicManager;->playMusicResource(I)V

    .line 182
    :cond_42
    return-void
.end method

.method private removeInvisiblePoint()V
    .registers 2

    .prologue
    .line 147
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/DefendZoneMissionEngine;->invisiblePoint:Lfr/testudo/spacecorsair/business/world/InvisiblePoint;

    if-eqz v0, :cond_23

    iget-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/DefendZoneMissionEngine;->invisiblePoint:Lfr/testudo/spacecorsair/business/world/InvisiblePoint;

    iget-boolean v0, v0, Lfr/testudo/spacecorsair/business/world/InvisiblePoint;->removed:Z

    if-nez v0, :cond_23

    .line 148
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/Game;->currentLevel:Lfr/testudo/spacecorsair/game/levels/Level;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/levels/Level;->toAdd:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 149
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/DefendZoneMissionEngine;->invisiblePoint:Lfr/testudo/spacecorsair/business/world/InvisiblePoint;

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/business/world/InvisiblePoint;->remove()V

    .line 150
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/Game;->currentLevel:Lfr/testudo/spacecorsair/game/levels/Level;

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/game/levels/Level;->commitChanges()V

    .line 152
    :cond_23
    const/4 v0, 0x0

    iput-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/DefendZoneMissionEngine;->invisiblePoint:Lfr/testudo/spacecorsair/business/world/InvisiblePoint;

    .line 153
    return-void
.end method

.method private setPhaseGateAndStationTarget(Z)V
    .registers 4

    .prologue
    .line 364
    sget-object v0, Lfr/testudo/spacecorsair/business/mission/engine/DefendZoneMissionEngine$1;->$SwitchMap$fr$testudo$spacecorsair$business$mission$engine$DefendZoneMissionEngine$Phase:[I

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/mission/engine/DefendZoneMissionEngine;->currentPhase:Lfr/testudo/spacecorsair/business/mission/engine/DefendZoneMissionEngine$Phase;

    invoke-virtual {v1}, Lfr/testudo/spacecorsair/business/mission/engine/DefendZoneMissionEngine$Phase;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_5e

    .line 397
    :cond_d
    :goto_d
    :pswitch_d
    return-void

    .line 366
    :pswitch_e
    iget-boolean v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/DefendZoneMissionEngine;->isPlayerInAttackZone:Z

    if-nez v0, :cond_d

    .line 370
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/Game;->currentLevel:Lfr/testudo/spacecorsair/game/levels/Level;

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/mission/engine/DefendZoneMissionEngine;->attackZoneId:Lfr/testudo/spacecorsair/game/levels/LevelId;

    invoke-static {v1}, Lfr/testudo/spacecorsair/business/world/PathFinder;->getPortalNameToGoTo(Lfr/testudo/spacecorsair/game/levels/LevelId;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/game/levels/Level;->findPortalByName(Ljava/lang/String;)Lfr/testudo/spacecorsair/business/world/Portal;

    move-result-object v0

    .line 371
    if-eqz v0, :cond_d

    .line 372
    iput-boolean p1, v0, Lfr/testudo/spacecorsair/business/world/Portal;->isMissionObjective:Z

    .line 373
    sget-object v1, Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;->ORANGE:Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;

    iput-object v1, v0, Lfr/testudo/spacecorsair/business/world/Portal;->missionObjectiveColor:Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;

    goto :goto_d

    .line 378
    :pswitch_2b
    iget-boolean v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/DefendZoneMissionEngine;->isPlayerInRecompenceZone:Z

    if-eqz v0, :cond_44

    .line 380
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/Game;->currentLevel:Lfr/testudo/spacecorsair/game/levels/Level;

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/mission/engine/DefendZoneMissionEngine;->stationRewardName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/game/levels/Level;->findStationByName(Ljava/lang/String;)Lfr/testudo/spacecorsair/business/world/station/Station;

    move-result-object v0

    .line 381
    if-eqz v0, :cond_d

    .line 382
    iput-boolean p1, v0, Lfr/testudo/spacecorsair/business/world/station/Station;->isMissionObjective:Z

    .line 383
    sget-object v1, Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;->ORANGE:Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;

    iput-object v1, v0, Lfr/testudo/spacecorsair/business/world/station/Station;->missionObjectiveColor:Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;

    goto :goto_d

    .line 390
    :cond_44
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/Game;->currentLevel:Lfr/testudo/spacecorsair/game/levels/Level;

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/mission/engine/DefendZoneMissionEngine;->recompenceZoneId:Lfr/testudo/spacecorsair/game/levels/LevelId;

    invoke-static {v1}, Lfr/testudo/spacecorsair/business/world/PathFinder;->getPortalNameToGoTo(Lfr/testudo/spacecorsair/game/levels/LevelId;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/game/levels/Level;->findPortalByName(Ljava/lang/String;)Lfr/testudo/spacecorsair/business/world/Portal;

    move-result-object v0

    .line 391
    if-eqz v0, :cond_d

    .line 392
    iput-boolean p1, v0, Lfr/testudo/spacecorsair/business/world/Portal;->isMissionObjective:Z

    .line 393
    sget-object v1, Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;->ORANGE:Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;

    iput-object v1, v0, Lfr/testudo/spacecorsair/business/world/Portal;->missionObjectiveColor:Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;

    goto :goto_d

    .line 364
    nop

    :pswitch_data_5e
    .packed-switch 0x1
        :pswitch_e
        :pswitch_d
        :pswitch_2b
    .end packed-switch
.end method

.method private startAttack()V
    .registers 3

    .prologue
    .line 157
    sget-object v0, Lfr/testudo/spacecorsair/business/mission/engine/DefendZoneMissionEngine$Phase;->DEFEND_ZONE:Lfr/testudo/spacecorsair/business/mission/engine/DefendZoneMissionEngine$Phase;

    iput-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/DefendZoneMissionEngine;->currentPhase:Lfr/testudo/spacecorsair/business/mission/engine/DefendZoneMissionEngine$Phase;

    .line 158
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/Game;->currentLevel:Lfr/testudo/spacecorsair/game/levels/Level;

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/game/levels/Level;->disableAllPortals()V

    .line 159
    iget v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/DefendZoneMissionEngine;->attackDuration:I

    iput v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/DefendZoneMissionEngine;->remainingAttacktime:I

    .line 160
    iget v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/DefendZoneMissionEngine;->inWavePopSpeed:I

    iput v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/DefendZoneMissionEngine;->remainingNextWave:I

    .line 161
    iget v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/DefendZoneMissionEngine;->waveEnnemisCount:I

    iput v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/DefendZoneMissionEngine;->curWavePopNumber:I

    .line 162
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->soundManager:Lfr/testudo/spacecorsair/engine/SoundManager;

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/engine/SoundManager;->onMissileLockedOnPlayerStarted()V

    .line 163
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-boolean v0, v0, Lfr/testudo/spacecorsair/game/Game;->started:Z

    if-eqz v0, :cond_32

    .line 164
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->musicManager:Lfr/testudo/spacecorsair/engine/MusicManager;

    const v1, 0x7f06002d

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/engine/MusicManager;->playMusicResource(I)V

    .line 166
    :cond_32
    return-void
.end method


# virtual methods
.method public getCurrentInstruction()Ljava/lang/String;
    .registers 3

    .prologue
    .line 290
    sget-object v0, Lfr/testudo/spacecorsair/business/mission/engine/DefendZoneMissionEngine$1;->$SwitchMap$fr$testudo$spacecorsair$business$mission$engine$DefendZoneMissionEngine$Phase:[I

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/mission/engine/DefendZoneMissionEngine;->currentPhase:Lfr/testudo/spacecorsair/business/mission/engine/DefendZoneMissionEngine$Phase;

    invoke-virtual {v1}, Lfr/testudo/spacecorsair/business/mission/engine/DefendZoneMissionEngine$Phase;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_28

    .line 311
    const-string v0, ""

    :goto_f
    return-object v0

    .line 293
    :pswitch_10
    iget-boolean v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/DefendZoneMissionEngine;->isPlayerInAttackZone:Z

    if-eqz v0, :cond_17

    .line 294
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/DefendZoneMissionEngine;->textDefendZone:Ljava/lang/String;

    goto :goto_f

    .line 296
    :cond_17
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/DefendZoneMissionEngine;->textGotoAttackZone:Ljava/lang/String;

    goto :goto_f

    .line 300
    :pswitch_1a
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/DefendZoneMissionEngine;->textDefendZone:Ljava/lang/String;

    goto :goto_f

    .line 304
    :pswitch_1d
    iget-boolean v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/DefendZoneMissionEngine;->isPlayerInRecompenceZone:Z

    if-eqz v0, :cond_24

    .line 305
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/DefendZoneMissionEngine;->textDockToStation:Ljava/lang/String;

    goto :goto_f

    .line 307
    :cond_24
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/DefendZoneMissionEngine;->textGotoRecompZone:Ljava/lang/String;

    goto :goto_f

    .line 290
    nop

    :pswitch_data_28
    .packed-switch 0x1
        :pswitch_10
        :pswitch_1a
        :pswitch_1d
    .end packed-switch
.end method

.method public giveUp()V
    .registers 1

    .prologue
    .line 340
    invoke-virtual {p0}, Lfr/testudo/spacecorsair/business/mission/engine/DefendZoneMissionEngine;->terminate()V

    .line 341
    return-void
.end method

.method public init()V
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 317
    iput v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/DefendZoneMissionEngine;->statWaveNumber:I

    .line 318
    iput v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/DefendZoneMissionEngine;->statCurWaveEnnemis:I

    .line 319
    const/4 v0, 0x0

    iput-boolean v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/DefendZoneMissionEngine;->completed:Z

    .line 320
    sget-object v0, Lfr/testudo/spacecorsair/business/mission/engine/DefendZoneMissionEngine$Phase;->WAIT_GOTO_ZONE:Lfr/testudo/spacecorsair/business/mission/engine/DefendZoneMissionEngine$Phase;

    iput-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/DefendZoneMissionEngine;->currentPhase:Lfr/testudo/spacecorsair/business/mission/engine/DefendZoneMissionEngine$Phase;

    .line 322
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/Game;->currentLevel:Lfr/testudo/spacecorsair/game/levels/Level;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/levels/Level;->name:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lfr/testudo/spacecorsair/business/mission/engine/DefendZoneMissionEngine;->onZoneChanged(Ljava/lang/String;Ljava/lang/String;)V

    .line 323
    return-void
.end method

.method public initStrings()V
    .registers 4

    .prologue
    .line 112
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/DefendZoneMissionEngine;->attackZoneId:Lfr/testudo/spacecorsair/game/levels/LevelId;

    if-eqz v0, :cond_2a

    .line 113
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

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/mission/engine/DefendZoneMissionEngine;->attackZoneId:Lfr/testudo/spacecorsair/game/levels/LevelId;

    iget-object v1, v1, Lfr/testudo/spacecorsair/game/levels/LevelId;->levelName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/DefendZoneMissionEngine;->textGotoAttackZone:Ljava/lang/String;

    .line 115
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

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/mission/engine/DefendZoneMissionEngine;->recompenceZoneId:Lfr/testudo/spacecorsair/game/levels/LevelId;

    iget-object v1, v1, Lfr/testudo/spacecorsair/game/levels/LevelId;->levelName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/DefendZoneMissionEngine;->textGotoRecompZone:Ljava/lang/String;

    .line 116
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

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/mission/engine/DefendZoneMissionEngine;->stationRewardName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/DefendZoneMissionEngine;->textDockToStation:Ljava/lang/String;

    .line 117
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget v1, p0, Lfr/testudo/spacecorsair/business/mission/engine/DefendZoneMissionEngine;->textDefendZoneRessourceId:I

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->getStringRessource(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/DefendZoneMissionEngine;->textDefendZone:Ljava/lang/String;

    .line 118
    return-void
.end method

.method public isCompleted()Z
    .registers 2

    .prologue
    .line 357
    iget-boolean v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/DefendZoneMissionEngine;->completed:Z

    return v0
.end method

.method public onBeforePlayerDock()V
    .registers 1

    .prologue
    .line 239
    return-void
.end method

.method public onDoPhysic(J)V
    .registers 6

    .prologue
    .line 258
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/DefendZoneMissionEngine;->currentPhase:Lfr/testudo/spacecorsair/business/mission/engine/DefendZoneMissionEngine$Phase;

    sget-object v1, Lfr/testudo/spacecorsair/business/mission/engine/DefendZoneMissionEngine$Phase;->DEFEND_ZONE:Lfr/testudo/spacecorsair/business/mission/engine/DefendZoneMissionEngine$Phase;

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/business/mission/engine/DefendZoneMissionEngine$Phase;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 259
    iget v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/DefendZoneMissionEngine;->remainingAttacktime:I

    int-to-long v0, v0

    sub-long/2addr v0, p1

    long-to-int v0, v0

    iput v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/DefendZoneMissionEngine;->remainingAttacktime:I

    .line 260
    iget v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/DefendZoneMissionEngine;->remainingAttacktime:I

    if-gtz v0, :cond_19

    .line 261
    invoke-direct {p0}, Lfr/testudo/spacecorsair/business/mission/engine/DefendZoneMissionEngine;->onStopAttack()V

    .line 285
    :cond_18
    :goto_18
    return-void

    .line 266
    :cond_19
    iget v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/DefendZoneMissionEngine;->remainingNextWave:I

    int-to-long v0, v0

    sub-long/2addr v0, p1

    long-to-int v0, v0

    iput v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/DefendZoneMissionEngine;->remainingNextWave:I

    .line 268
    iget v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/DefendZoneMissionEngine;->remainingNextWave:I

    if-gtz v0, :cond_18

    .line 269
    invoke-direct {p0}, Lfr/testudo/spacecorsair/business/mission/engine/DefendZoneMissionEngine;->onNextWave()V

    .line 270
    iget v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/DefendZoneMissionEngine;->curWavePopNumber:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/DefendZoneMissionEngine;->curWavePopNumber:I

    .line 271
    iget v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/DefendZoneMissionEngine;->curWavePopNumber:I

    if-gtz v0, :cond_43

    .line 272
    iget v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/DefendZoneMissionEngine;->waveFrequency:I

    iput v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/DefendZoneMissionEngine;->remainingNextWave:I

    .line 273
    iget v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/DefendZoneMissionEngine;->waveEnnemisCount:I

    iput v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/DefendZoneMissionEngine;->curWavePopNumber:I

    .line 274
    iget v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/DefendZoneMissionEngine;->statWaveNumber:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/DefendZoneMissionEngine;->statWaveNumber:I

    .line 275
    const/4 v0, 0x1

    iput v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/DefendZoneMissionEngine;->statCurWaveEnnemis:I

    goto :goto_18

    .line 279
    :cond_43
    iget v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/DefendZoneMissionEngine;->statCurWaveEnnemis:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/DefendZoneMissionEngine;->statCurWaveEnnemis:I

    .line 280
    iget v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/DefendZoneMissionEngine;->inWavePopSpeed:I

    iput v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/DefendZoneMissionEngine;->remainingNextWave:I

    goto :goto_18
.end method

.method public onElementDestroyed(Lfr/testudo/spacecorsair/business/Element;)V
    .registers 2

    .prologue
    .line 222
    return-void
.end method

.method public onElementDestroyedByPlayer(Lfr/testudo/spacecorsair/business/Element;)V
    .registers 2

    .prologue
    .line 227
    return-void
.end method

.method public onEveryMinute()V
    .registers 1

    .prologue
    .line 217
    return-void
.end method

.method public onEveryTenGameSec()V
    .registers 3

    .prologue
    .line 197
    iget-boolean v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/DefendZoneMissionEngine;->isPlayerInAttackZone:Z

    if-eqz v0, :cond_1f

    iget-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/DefendZoneMissionEngine;->currentPhase:Lfr/testudo/spacecorsair/business/mission/engine/DefendZoneMissionEngine$Phase;

    sget-object v1, Lfr/testudo/spacecorsair/business/mission/engine/DefendZoneMissionEngine$Phase;->WAIT_GOTO_ZONE:Lfr/testudo/spacecorsair/business/mission/engine/DefendZoneMissionEngine$Phase;

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/business/mission/engine/DefendZoneMissionEngine$Phase;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1f

    iget-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/DefendZoneMissionEngine;->invisiblePoint:Lfr/testudo/spacecorsair/business/world/InvisiblePoint;

    if-eqz v0, :cond_1f

    .line 199
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/DefendZoneMissionEngine;->invisiblePoint:Lfr/testudo/spacecorsair/business/world/InvisiblePoint;

    iget v0, v0, Lfr/testudo/spacecorsair/business/world/InvisiblePoint;->distanceToPlayer:F

    const/high16 v1, 0x44fa0000    # 2000.0f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_1f

    .line 200
    invoke-direct {p0}, Lfr/testudo/spacecorsair/business/mission/engine/DefendZoneMissionEngine;->startAttack()V

    .line 204
    :cond_1f
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/DefendZoneMissionEngine;->currentPhase:Lfr/testudo/spacecorsair/business/mission/engine/DefendZoneMissionEngine$Phase;

    sget-object v1, Lfr/testudo/spacecorsair/business/mission/engine/DefendZoneMissionEngine$Phase;->DEFEND_ZONE:Lfr/testudo/spacecorsair/business/mission/engine/DefendZoneMissionEngine$Phase;

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/business/mission/engine/DefendZoneMissionEngine$Phase;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_43

    iget-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/DefendZoneMissionEngine;->invisiblePoint:Lfr/testudo/spacecorsair/business/world/InvisiblePoint;

    if-eqz v0, :cond_43

    .line 206
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/DefendZoneMissionEngine;->invisiblePoint:Lfr/testudo/spacecorsair/business/world/InvisiblePoint;

    iget v0, v0, Lfr/testudo/spacecorsair/business/world/InvisiblePoint;->distanceToPlayer:F

    const/high16 v1, 0x45fa0000    # 8000.0f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_43

    .line 207
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    const v1, 0x7f070135

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->getStringRessource(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lfr/testudo/spacecorsair/business/mission/Mission;->setMissionFailure(Ljava/lang/String;)V

    .line 212
    :cond_43
    return-void
.end method

.method public onPlayerBuyItem(Lfr/testudo/spacecorsair/business/loot/SpaceObject;)V
    .registers 2

    .prologue
    .line 249
    return-void
.end method

.method public onPlayerDeath()V
    .registers 3

    .prologue
    .line 231
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/DefendZoneMissionEngine;->currentPhase:Lfr/testudo/spacecorsair/business/mission/engine/DefendZoneMissionEngine$Phase;

    sget-object v1, Lfr/testudo/spacecorsair/business/mission/engine/DefendZoneMissionEngine$Phase;->DEFEND_ZONE:Lfr/testudo/spacecorsair/business/mission/engine/DefendZoneMissionEngine$Phase;

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/business/mission/engine/DefendZoneMissionEngine$Phase;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 232
    invoke-virtual {p0}, Lfr/testudo/spacecorsair/business/mission/engine/DefendZoneMissionEngine;->restoreState()V

    .line 234
    :cond_d
    return-void
.end method

.method public onPlayerLoot(Lfr/testudo/spacecorsair/business/loot/LootElement;)Z
    .registers 3

    .prologue
    .line 191
    const/4 v0, 0x1

    return v0
.end method

.method public onPlayerSellItem(Lfr/testudo/spacecorsair/business/loot/SpaceObject;)V
    .registers 2

    .prologue
    .line 244
    return-void
.end method

.method public onPlayerUndock()V
    .registers 1

    .prologue
    .line 254
    return-void
.end method

.method public onZoneChanged(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .prologue
    .line 124
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/DefendZoneMissionEngine;->attackZoneId:Lfr/testudo/spacecorsair/game/levels/LevelId;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/levels/LevelId;->levelName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/DefendZoneMissionEngine;->isPlayerInAttackZone:Z

    .line 125
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/DefendZoneMissionEngine;->recompenceZoneId:Lfr/testudo/spacecorsair/game/levels/LevelId;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/levels/LevelId;->levelName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/DefendZoneMissionEngine;->isPlayerInRecompenceZone:Z

    .line 126
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lfr/testudo/spacecorsair/business/mission/engine/DefendZoneMissionEngine;->setPhaseGateAndStationTarget(Z)V

    .line 129
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/DefendZoneMissionEngine;->currentPhase:Lfr/testudo/spacecorsair/business/mission/engine/DefendZoneMissionEngine$Phase;

    sget-object v1, Lfr/testudo/spacecorsair/business/mission/engine/DefendZoneMissionEngine$Phase;->WAIT_GOTO_ZONE:Lfr/testudo/spacecorsair/business/mission/engine/DefendZoneMissionEngine$Phase;

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/business/mission/engine/DefendZoneMissionEngine$Phase;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_29

    iget-boolean v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/DefendZoneMissionEngine;->isPlayerInAttackZone:Z

    if-eqz v0, :cond_29

    .line 131
    invoke-direct {p0}, Lfr/testudo/spacecorsair/business/mission/engine/DefendZoneMissionEngine;->addInvisiblePoint()V

    .line 134
    :cond_29
    return-void
.end method

.method public restoreState()V
    .registers 2

    .prologue
    const/4 v0, 0x1

    .line 327
    iput v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/DefendZoneMissionEngine;->statWaveNumber:I

    .line 328
    iput v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/DefendZoneMissionEngine;->statCurWaveEnnemis:I

    .line 329
    const/4 v0, 0x0

    iput-boolean v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/DefendZoneMissionEngine;->completed:Z

    .line 330
    sget-object v0, Lfr/testudo/spacecorsair/business/mission/engine/DefendZoneMissionEngine$Phase;->WAIT_GOTO_ZONE:Lfr/testudo/spacecorsair/business/mission/engine/DefendZoneMissionEngine$Phase;

    iput-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/DefendZoneMissionEngine;->currentPhase:Lfr/testudo/spacecorsair/business/mission/engine/DefendZoneMissionEngine$Phase;

    .line 331
    return-void
.end method

.method public saveState()V
    .registers 1

    .prologue
    .line 336
    return-void
.end method

.method public terminate()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 348
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/Game;->currentLevel:Lfr/testudo/spacecorsair/game/levels/Level;

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/game/levels/Level;->enableAllPortals()V

    .line 349
    iput-boolean v1, p0, Lfr/testudo/spacecorsair/business/mission/engine/DefendZoneMissionEngine;->completed:Z

    .line 350
    invoke-direct {p0}, Lfr/testudo/spacecorsair/business/mission/engine/DefendZoneMissionEngine;->removeInvisiblePoint()V

    .line 351
    invoke-direct {p0, v1}, Lfr/testudo/spacecorsair/business/mission/engine/DefendZoneMissionEngine;->setPhaseGateAndStationTarget(Z)V

    .line 352
    sget-object v0, Lfr/testudo/spacecorsair/business/mission/engine/DefendZoneMissionEngine$Phase;->WAIT_GOTO_ZONE:Lfr/testudo/spacecorsair/business/mission/engine/DefendZoneMissionEngine$Phase;

    iput-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/DefendZoneMissionEngine;->currentPhase:Lfr/testudo/spacecorsair/business/mission/engine/DefendZoneMissionEngine$Phase;

    .line 353
    return-void
.end method
