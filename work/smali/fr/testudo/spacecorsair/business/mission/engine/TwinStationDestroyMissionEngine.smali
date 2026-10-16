.class public Lfr/testudo/spacecorsair/business/mission/engine/TwinStationDestroyMissionEngine;
.super Lfr/testudo/spacecorsair/business/mission/MissionListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lfr/testudo/spacecorsair/business/mission/engine/TwinStationDestroyMissionEngine$1;,
        Lfr/testudo/spacecorsair/business/mission/engine/TwinStationDestroyMissionEngine$Phase;
    }
.end annotation


# static fields
.field public static final LOCK_DISTANCE:I = 0x7d0


# instance fields
.field public completed:Z

.field public currentPhase:Lfr/testudo/spacecorsair/business/mission/engine/TwinStationDestroyMissionEngine$Phase;

.field public destroySentyTextId:I

.field private isPlayerInRecompenceZone:Z

.field private isPlayerInTargetZone:Z

.field public isStationLocked:Z

.field missile:Lfr/testudo/spacecorsair/business/projectiles/Missile;

.field public numberOfElementToDestroy:I

.field public recompenceZoneId:Lfr/testudo/spacecorsair/game/levels/LevelId;

.field public remainingElementToDestroy:I

.field public stationGiveBackName:Ljava/lang/String;

.field public targetZoneId:Lfr/testudo/spacecorsair/game/levels/LevelId;

.field public textDestroySentry:Ljava/lang/String;

.field public textDockToStation:Ljava/lang/String;

.field public textGotoRecompZone:Ljava/lang/String;

.field public textGotoTargetZone:Ljava/lang/String;

.field public textKillEnnemyWithCountLocalised:Ljava/lang/String;

.field public textLockStation:Ljava/lang/String;

.field public textLockStationTooFar:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lfr/testudo/spacecorsair/game/levels/LevelId;Lfr/testudo/spacecorsair/game/levels/LevelId;ILjava/lang/String;)V
    .registers 7

    .prologue
    const/4 v1, 0x0

    .line 81
    invoke-direct {p0}, Lfr/testudo/spacecorsair/business/mission/MissionListener;-><init>()V

    .line 44
    iput-boolean v1, p0, Lfr/testudo/spacecorsair/business/mission/engine/TwinStationDestroyMissionEngine;->completed:Z

    .line 60
    const/16 v0, 0x8

    iput v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/TwinStationDestroyMissionEngine;->numberOfElementToDestroy:I

    .line 61
    iget v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/TwinStationDestroyMissionEngine;->numberOfElementToDestroy:I

    iput v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/TwinStationDestroyMissionEngine;->remainingElementToDestroy:I

    .line 65
    iput-boolean v1, p0, Lfr/testudo/spacecorsair/business/mission/engine/TwinStationDestroyMissionEngine;->isStationLocked:Z

    .line 82
    iput-object p1, p0, Lfr/testudo/spacecorsair/business/mission/engine/TwinStationDestroyMissionEngine;->targetZoneId:Lfr/testudo/spacecorsair/game/levels/LevelId;

    .line 83
    iput-object p2, p0, Lfr/testudo/spacecorsair/business/mission/engine/TwinStationDestroyMissionEngine;->recompenceZoneId:Lfr/testudo/spacecorsair/game/levels/LevelId;

    .line 84
    iput-object p4, p0, Lfr/testudo/spacecorsair/business/mission/engine/TwinStationDestroyMissionEngine;->stationGiveBackName:Ljava/lang/String;

    .line 85
    iput p3, p0, Lfr/testudo/spacecorsair/business/mission/engine/TwinStationDestroyMissionEngine;->destroySentyTextId:I

    .line 87
    invoke-direct {p0}, Lfr/testudo/spacecorsair/business/mission/engine/TwinStationDestroyMissionEngine;->initStrings()V

    .line 88
    return-void
.end method

.method private initStrings()V
    .registers 4

    .prologue
    .line 92
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

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/mission/engine/TwinStationDestroyMissionEngine;->targetZoneId:Lfr/testudo/spacecorsair/game/levels/LevelId;

    iget-object v1, v1, Lfr/testudo/spacecorsair/game/levels/LevelId;->levelName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/TwinStationDestroyMissionEngine;->textGotoTargetZone:Ljava/lang/String;

    .line 93
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

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/mission/engine/TwinStationDestroyMissionEngine;->recompenceZoneId:Lfr/testudo/spacecorsair/game/levels/LevelId;

    iget-object v1, v1, Lfr/testudo/spacecorsair/game/levels/LevelId;->levelName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/TwinStationDestroyMissionEngine;->textGotoRecompZone:Ljava/lang/String;

    .line 94
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget v1, p0, Lfr/testudo/spacecorsair/business/mission/engine/TwinStationDestroyMissionEngine;->destroySentyTextId:I

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->getStringRessource(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/TwinStationDestroyMissionEngine;->textDestroySentry:Ljava/lang/String;

    .line 95
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

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/mission/engine/TwinStationDestroyMissionEngine;->stationGiveBackName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/TwinStationDestroyMissionEngine;->textDockToStation:Ljava/lang/String;

    .line 96
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    const v1, 0x7f07015f

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->getStringRessource(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/TwinStationDestroyMissionEngine;->textLockStation:Ljava/lang/String;

    .line 97
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    const v1, 0x7f070160

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->getStringRessource(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/TwinStationDestroyMissionEngine;->textLockStationTooFar:Ljava/lang/String;

    .line 98
    return-void
.end method

.method private markSentryAsObjective(Z)V
    .registers 8

    .prologue
    const/4 v0, 0x0

    .line 313
    sget-object v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v1, v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v1, v1, Lfr/testudo/spacecorsair/game/Game;->currentLevel:Lfr/testudo/spacecorsair/game/levels/Level;

    iget-object v1, v1, Lfr/testudo/spacecorsair/game/levels/Level;->elements:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    .line 314
    iget v4, p0, Lfr/testudo/spacecorsair/business/mission/engine/TwinStationDestroyMissionEngine;->remainingElementToDestroy:I

    move v2, v0

    move v1, v0

    .line 317
    :goto_11
    if-ge v2, v3, :cond_31

    .line 318
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/Game;->currentLevel:Lfr/testudo/spacecorsair/game/levels/Level;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/levels/Level;->elements:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfr/testudo/spacecorsair/business/Element;

    .line 319
    instance-of v5, v0, Lfr/testudo/spacecorsair/business/ennemis/FixedTourelle;

    if-eqz v5, :cond_32

    .line 320
    add-int/lit8 v1, v1, 0x1

    .line 321
    iput-boolean p1, v0, Lfr/testudo/spacecorsair/business/Element;->isMissionObjective:Z

    .line 322
    sget-object v5, Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;->RED:Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;

    iput-object v5, v0, Lfr/testudo/spacecorsair/business/Element;->missionObjectiveColor:Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;

    .line 323
    if-eqz p1, :cond_32

    if-le v1, v4, :cond_32

    .line 328
    :cond_31
    return-void

    :cond_32
    move v0, v1

    .line 317
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    move v1, v0

    goto :goto_11
.end method

.method private markStationAsObjective(Z)V
    .registers 4

    .prologue
    .line 331
    sget-object v0, Lfr/testudo/spacecorsair/game/levels/builders/TwinStarLevelBuilder;->pirateStation1:Lfr/testudo/spacecorsair/business/world/station/DestroyablePirateStation;

    if-eqz v0, :cond_e

    .line 332
    sget-object v0, Lfr/testudo/spacecorsair/game/levels/builders/TwinStarLevelBuilder;->pirateStation1:Lfr/testudo/spacecorsair/business/world/station/DestroyablePirateStation;

    iput-boolean p1, v0, Lfr/testudo/spacecorsair/business/world/station/DestroyablePirateStation;->isMissionObjective:Z

    .line 333
    sget-object v0, Lfr/testudo/spacecorsair/game/levels/builders/TwinStarLevelBuilder;->pirateStation1:Lfr/testudo/spacecorsair/business/world/station/DestroyablePirateStation;

    sget-object v1, Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;->RED:Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;

    iput-object v1, v0, Lfr/testudo/spacecorsair/business/world/station/DestroyablePirateStation;->missionObjectiveColor:Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;

    .line 335
    :cond_e
    return-void
.end method

.method private setPhaseGateAndStationTarget(Z)V
    .registers 4

    .prologue
    .line 339
    sget-object v0, Lfr/testudo/spacecorsair/business/mission/engine/TwinStationDestroyMissionEngine$1;->$SwitchMap$fr$testudo$spacecorsair$business$mission$engine$TwinStationDestroyMissionEngine$Phase:[I

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/mission/engine/TwinStationDestroyMissionEngine;->currentPhase:Lfr/testudo/spacecorsair/business/mission/engine/TwinStationDestroyMissionEngine$Phase;

    invoke-virtual {v1}, Lfr/testudo/spacecorsair/business/mission/engine/TwinStationDestroyMissionEngine$Phase;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_66

    .line 375
    :cond_d
    :goto_d
    return-void

    .line 341
    :pswitch_e
    iget-boolean v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/TwinStationDestroyMissionEngine;->isPlayerInTargetZone:Z

    if-eqz v0, :cond_16

    .line 342
    invoke-direct {p0, p1}, Lfr/testudo/spacecorsair/business/mission/engine/TwinStationDestroyMissionEngine;->markSentryAsObjective(Z)V

    goto :goto_d

    .line 346
    :cond_16
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/Game;->currentLevel:Lfr/testudo/spacecorsair/game/levels/Level;

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/mission/engine/TwinStationDestroyMissionEngine;->targetZoneId:Lfr/testudo/spacecorsair/game/levels/LevelId;

    invoke-static {v1}, Lfr/testudo/spacecorsair/business/world/PathFinder;->getPortalNameToGoTo(Lfr/testudo/spacecorsair/game/levels/LevelId;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/game/levels/Level;->findPortalByName(Ljava/lang/String;)Lfr/testudo/spacecorsair/business/world/Portal;

    move-result-object v0

    .line 347
    if-eqz v0, :cond_d

    .line 348
    iput-boolean p1, v0, Lfr/testudo/spacecorsair/business/world/Portal;->isMissionObjective:Z

    .line 349
    sget-object v1, Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;->ORANGE:Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;

    iput-object v1, v0, Lfr/testudo/spacecorsair/business/world/Portal;->missionObjectiveColor:Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;

    goto :goto_d

    .line 354
    :pswitch_2f
    iget-boolean v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/TwinStationDestroyMissionEngine;->isPlayerInRecompenceZone:Z

    if-eqz v0, :cond_48

    .line 356
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/Game;->currentLevel:Lfr/testudo/spacecorsair/game/levels/Level;

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/mission/engine/TwinStationDestroyMissionEngine;->stationGiveBackName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/game/levels/Level;->findStationByName(Ljava/lang/String;)Lfr/testudo/spacecorsair/business/world/station/Station;

    move-result-object v0

    .line 357
    if-eqz v0, :cond_d

    .line 358
    iput-boolean p1, v0, Lfr/testudo/spacecorsair/business/world/station/Station;->isMissionObjective:Z

    .line 359
    sget-object v1, Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;->ORANGE:Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;

    iput-object v1, v0, Lfr/testudo/spacecorsair/business/world/station/Station;->missionObjectiveColor:Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;

    goto :goto_d

    .line 365
    :cond_48
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/Game;->currentLevel:Lfr/testudo/spacecorsair/game/levels/Level;

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/mission/engine/TwinStationDestroyMissionEngine;->recompenceZoneId:Lfr/testudo/spacecorsair/game/levels/LevelId;

    invoke-static {v1}, Lfr/testudo/spacecorsair/business/world/PathFinder;->getPortalNameToGoTo(Lfr/testudo/spacecorsair/game/levels/LevelId;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/game/levels/Level;->findPortalByName(Ljava/lang/String;)Lfr/testudo/spacecorsair/business/world/Portal;

    move-result-object v0

    .line 366
    if-eqz v0, :cond_d

    .line 367
    iput-boolean p1, v0, Lfr/testudo/spacecorsair/business/world/Portal;->isMissionObjective:Z

    .line 368
    sget-object v1, Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;->ORANGE:Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;

    iput-object v1, v0, Lfr/testudo/spacecorsair/business/world/Portal;->missionObjectiveColor:Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;

    goto :goto_d

    .line 372
    :pswitch_61
    invoke-direct {p0, p1}, Lfr/testudo/spacecorsair/business/mission/engine/TwinStationDestroyMissionEngine;->markStationAsObjective(Z)V

    goto :goto_d

    .line 339
    nop

    :pswitch_data_66
    .packed-switch 0x1
        :pswitch_61
        :pswitch_e
        :pswitch_2f
    .end packed-switch
.end method

.method private shootMissile()V
    .registers 8

    .prologue
    const/4 v6, 0x1

    .line 137
    invoke-static {}, Lfr/testudo/spacecorsair/business/factory/GamePools;->newMissile()Lfr/testudo/spacecorsair/business/projectiles/Missile;

    move-result-object v0

    sget-object v1, Lfr/testudo/spacecorsair/business/loot/stuff/missile/MissileSpecBuilder;->antiStationSpec:Lfr/testudo/spacecorsair/business/loot/stuff/missile/MissileSpec;

    sget-object v2, Lfr/testudo/spacecorsair/game/levels/builders/TwinStarLevelBuilder;->VentoHighPortal:Lfr/testudo/spacecorsair/business/world/Portal;

    sget-object v3, Lfr/testudo/spacecorsair/game/levels/builders/TwinStarLevelBuilder;->pirateStation1:Lfr/testudo/spacecorsair/business/world/station/DestroyablePirateStation;

    invoke-virtual {v0, v1, v2, v3}, Lfr/testudo/spacecorsair/business/projectiles/Missile;->initWithSpecs(Lfr/testudo/spacecorsair/business/loot/stuff/missile/MissileSpec;Lfr/testudo/spacecorsair/business/Element;Lfr/testudo/spacecorsair/business/Element;)Lfr/testudo/spacecorsair/business/projectiles/Missile;

    move-result-object v0

    iput-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/TwinStationDestroyMissionEngine;->missile:Lfr/testudo/spacecorsair/business/projectiles/Missile;

    .line 139
    sget-object v0, Lfr/testudo/spacecorsair/game/levels/builders/TwinStarLevelBuilder;->VentoHighPortal:Lfr/testudo/spacecorsair/business/world/Portal;

    iget-object v0, v0, Lfr/testudo/spacecorsair/business/world/Portal;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    sget-object v1, Lfr/testudo/spacecorsair/game/levels/builders/TwinStarLevelBuilder;->pirateStation1:Lfr/testudo/spacecorsair/business/world/station/DestroyablePirateStation;

    iget-object v1, v1, Lfr/testudo/spacecorsair/business/world/station/DestroyablePirateStation;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/engine/Vector2;->getAngularWithInRad(Lfr/testudo/spacecorsair/engine/Vector2;)D

    move-result-wide v0

    .line 141
    iget-object v2, p0, Lfr/testudo/spacecorsair/business/mission/engine/TwinStationDestroyMissionEngine;->missile:Lfr/testudo/spacecorsair/business/projectiles/Missile;

    iget-object v2, v2, Lfr/testudo/spacecorsair/business/projectiles/Missile;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    sget-object v3, Lfr/testudo/spacecorsair/game/levels/builders/TwinStarLevelBuilder;->VentoHighPortal:Lfr/testudo/spacecorsair/business/world/Portal;

    iget-object v3, v3, Lfr/testudo/spacecorsair/business/world/Portal;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v2, v3}, Lfr/testudo/spacecorsair/engine/Vector2;->setSameAs(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 142
    iget-object v2, p0, Lfr/testudo/spacecorsair/business/mission/engine/TwinStationDestroyMissionEngine;->missile:Lfr/testudo/spacecorsair/business/projectiles/Missile;

    iget-object v2, v2, Lfr/testudo/spacecorsair/business/projectiles/Missile;->speed:Lfr/testudo/spacecorsair/engine/Vector2;

    const/4 v3, 0x0

    const v4, -0x4019999a    # -1.8f

    invoke-virtual {v2, v3, v4}, Lfr/testudo/spacecorsair/engine/Vector2;->set(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 143
    iget-object v2, p0, Lfr/testudo/spacecorsair/business/mission/engine/TwinStationDestroyMissionEngine;->missile:Lfr/testudo/spacecorsair/business/projectiles/Missile;

    iget-object v2, v2, Lfr/testudo/spacecorsair/business/projectiles/Missile;->speed:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Lfr/testudo/spacecorsair/engine/Vector2;->applyRotatation(D)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 144
    iget-object v2, p0, Lfr/testudo/spacecorsair/business/mission/engine/TwinStationDestroyMissionEngine;->missile:Lfr/testudo/spacecorsair/business/projectiles/Missile;

    double-to-float v0, v0

    iput v0, v2, Lfr/testudo/spacecorsair/business/projectiles/Missile;->spin:F

    .line 145
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/TwinStationDestroyMissionEngine;->missile:Lfr/testudo/spacecorsair/business/projectiles/Missile;

    iput-boolean v6, v0, Lfr/testudo/spacecorsair/business/projectiles/Missile;->drawOnRadar:Z

    .line 147
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/TwinStationDestroyMissionEngine;->missile:Lfr/testudo/spacecorsair/business/projectiles/Missile;

    iput-boolean v6, v0, Lfr/testudo/spacecorsair/business/projectiles/Missile;->drawDistanceOnMiniature:Z

    .line 148
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/TwinStationDestroyMissionEngine;->missile:Lfr/testudo/spacecorsair/business/projectiles/Missile;

    iput-boolean v6, v0, Lfr/testudo/spacecorsair/business/projectiles/Missile;->isMissionObjective:Z

    .line 149
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/TwinStationDestroyMissionEngine;->missile:Lfr/testudo/spacecorsair/business/projectiles/Missile;

    sget-object v1, Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;->GREEN:Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;

    iput-object v1, v0, Lfr/testudo/spacecorsair/business/projectiles/Missile;->missionObjectiveColor:Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;

    .line 153
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/Game;->currentLevel:Lfr/testudo/spacecorsair/game/levels/Level;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/levels/Level;->toAdd:Ljava/util/List;

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/mission/engine/TwinStationDestroyMissionEngine;->missile:Lfr/testudo/spacecorsair/business/projectiles/Missile;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 154
    return-void
.end method


# virtual methods
.method public getCurrentInstruction()Ljava/lang/String;
    .registers 3

    .prologue
    .line 235
    sget-object v0, Lfr/testudo/spacecorsair/business/mission/engine/TwinStationDestroyMissionEngine$1;->$SwitchMap$fr$testudo$spacecorsair$business$mission$engine$TwinStationDestroyMissionEngine$Phase:[I

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/mission/engine/TwinStationDestroyMissionEngine;->currentPhase:Lfr/testudo/spacecorsair/business/mission/engine/TwinStationDestroyMissionEngine$Phase;

    invoke-virtual {v1}, Lfr/testudo/spacecorsair/business/mission/engine/TwinStationDestroyMissionEngine$Phase;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_36

    .line 264
    const-string v0, ""

    :goto_f
    return-object v0

    .line 237
    :pswitch_10
    iget-boolean v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/TwinStationDestroyMissionEngine;->isPlayerInTargetZone:Z

    if-eqz v0, :cond_17

    .line 238
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/TwinStationDestroyMissionEngine;->textKillEnnemyWithCountLocalised:Ljava/lang/String;

    goto :goto_f

    .line 240
    :cond_17
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/TwinStationDestroyMissionEngine;->textGotoTargetZone:Ljava/lang/String;

    goto :goto_f

    .line 243
    :pswitch_1a
    iget-boolean v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/TwinStationDestroyMissionEngine;->isPlayerInTargetZone:Z

    if-eqz v0, :cond_28

    .line 245
    iget-boolean v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/TwinStationDestroyMissionEngine;->isStationLocked:Z

    if-eqz v0, :cond_25

    .line 246
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/TwinStationDestroyMissionEngine;->textLockStation:Ljava/lang/String;

    goto :goto_f

    .line 249
    :cond_25
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/TwinStationDestroyMissionEngine;->textLockStationTooFar:Ljava/lang/String;

    goto :goto_f

    .line 253
    :cond_28
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/TwinStationDestroyMissionEngine;->textGotoTargetZone:Ljava/lang/String;

    goto :goto_f

    .line 257
    :pswitch_2b
    iget-boolean v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/TwinStationDestroyMissionEngine;->isPlayerInRecompenceZone:Z

    if-eqz v0, :cond_32

    .line 258
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/TwinStationDestroyMissionEngine;->textDockToStation:Ljava/lang/String;

    goto :goto_f

    .line 260
    :cond_32
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/TwinStationDestroyMissionEngine;->textGotoRecompZone:Ljava/lang/String;

    goto :goto_f

    .line 235
    nop

    :pswitch_data_36
    .packed-switch 0x1
        :pswitch_1a
        :pswitch_10
        :pswitch_2b
    .end packed-switch
.end method

.method public giveUp()V
    .registers 1

    .prologue
    .line 292
    invoke-virtual {p0}, Lfr/testudo/spacecorsair/business/mission/engine/TwinStationDestroyMissionEngine;->terminate()V

    .line 293
    return-void
.end method

.method public init()V
    .registers 3

    .prologue
    .line 269
    iget v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/TwinStationDestroyMissionEngine;->numberOfElementToDestroy:I

    iput v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/TwinStationDestroyMissionEngine;->remainingElementToDestroy:I

    .line 270
    sget-object v0, Lfr/testudo/spacecorsair/business/mission/engine/TwinStationDestroyMissionEngine$Phase;->DESTROY_TOURELLE:Lfr/testudo/spacecorsair/business/mission/engine/TwinStationDestroyMissionEngine$Phase;

    iput-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/TwinStationDestroyMissionEngine;->currentPhase:Lfr/testudo/spacecorsair/business/mission/engine/TwinStationDestroyMissionEngine$Phase;

    .line 271
    invoke-virtual {p0}, Lfr/testudo/spacecorsair/business/mission/engine/TwinStationDestroyMissionEngine;->updateInstructionElementToDestroy()V

    .line 272
    const/4 v0, 0x0

    iput-boolean v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/TwinStationDestroyMissionEngine;->isStationLocked:Z

    .line 273
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/Game;->currentLevel:Lfr/testudo/spacecorsair/game/levels/Level;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/levels/Level;->name:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lfr/testudo/spacecorsair/business/mission/engine/TwinStationDestroyMissionEngine;->onZoneChanged(Ljava/lang/String;Ljava/lang/String;)V

    .line 275
    return-void
.end method

.method public isCompleted()Z
    .registers 2

    .prologue
    .line 305
    iget-boolean v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/TwinStationDestroyMissionEngine;->completed:Z

    return v0
.end method

.method public onBeforePlayerDock()V
    .registers 1

    .prologue
    .line 207
    return-void
.end method

.method public onDoPhysic(J)V
    .registers 5

    .prologue
    .line 226
    sget-object v0, Lfr/testudo/spacecorsair/business/mission/engine/TwinStationDestroyMissionEngine$1;->$SwitchMap$fr$testudo$spacecorsair$business$mission$engine$TwinStationDestroyMissionEngine$Phase:[I

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/mission/engine/TwinStationDestroyMissionEngine;->currentPhase:Lfr/testudo/spacecorsair/business/mission/engine/TwinStationDestroyMissionEngine$Phase;

    invoke-virtual {v1}, Lfr/testudo/spacecorsair/business/mission/engine/TwinStationDestroyMissionEngine$Phase;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_22

    .line 231
    :goto_d
    return-void

    .line 228
    :pswitch_e
    sget-object v0, Lfr/testudo/spacecorsair/game/levels/builders/TwinStarLevelBuilder;->pirateStation1:Lfr/testudo/spacecorsair/business/world/station/DestroyablePirateStation;

    if-eqz v0, :cond_20

    sget-object v0, Lfr/testudo/spacecorsair/game/levels/builders/TwinStarLevelBuilder;->pirateStation1:Lfr/testudo/spacecorsair/business/world/station/DestroyablePirateStation;

    iget v0, v0, Lfr/testudo/spacecorsair/business/world/station/DestroyablePirateStation;->distanceToPlayer:F

    const/high16 v1, 0x44fa0000    # 2000.0f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_20

    const/4 v0, 0x1

    :goto_1d
    iput-boolean v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/TwinStationDestroyMissionEngine;->isStationLocked:Z

    goto :goto_d

    :cond_20
    const/4 v0, 0x0

    goto :goto_1d

    .line 226
    :pswitch_data_22
    .packed-switch 0x1
        :pswitch_e
    .end packed-switch
.end method

.method public onElementDestroyed(Lfr/testudo/spacecorsair/business/Element;)V
    .registers 5

    .prologue
    const/4 v2, 0x1

    .line 175
    instance-of v0, p1, Lfr/testudo/spacecorsair/business/world/station/DestroyablePirateStation;

    if-eqz v0, :cond_2d

    iget-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/TwinStationDestroyMissionEngine;->currentPhase:Lfr/testudo/spacecorsair/business/mission/engine/TwinStationDestroyMissionEngine$Phase;

    sget-object v1, Lfr/testudo/spacecorsair/business/mission/engine/TwinStationDestroyMissionEngine$Phase;->LOCK_STATION:Lfr/testudo/spacecorsair/business/mission/engine/TwinStationDestroyMissionEngine$Phase;

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/business/mission/engine/TwinStationDestroyMissionEngine$Phase;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 176
    iput-boolean v2, p0, Lfr/testudo/spacecorsair/business/mission/engine/TwinStationDestroyMissionEngine;->completed:Z

    .line 177
    sget-object v0, Lfr/testudo/spacecorsair/business/mission/engine/TwinStationDestroyMissionEngine$Phase;->GATHER_RECOMP:Lfr/testudo/spacecorsair/business/mission/engine/TwinStationDestroyMissionEngine$Phase;

    iput-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/TwinStationDestroyMissionEngine;->currentPhase:Lfr/testudo/spacecorsair/business/mission/engine/TwinStationDestroyMissionEngine$Phase;

    .line 178
    invoke-direct {p0, v2}, Lfr/testudo/spacecorsair/business/mission/engine/TwinStationDestroyMissionEngine;->setPhaseGateAndStationTarget(Z)V

    .line 179
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->soundManager:Lfr/testudo/spacecorsair/engine/SoundManager;

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/engine/SoundManager;->playMissionComplete()V

    .line 180
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    const v1, 0x7f0702c1

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->getStringRessource(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-static {v0, v1}, Lfr/testudo/spacecorsair/display/hud/WelcomeMessage;->setText(Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    :cond_2d
    return-void
.end method

.method public onElementDestroyedByPlayer(Lfr/testudo/spacecorsair/business/Element;)V
    .registers 7

    .prologue
    .line 187
    iget-boolean v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/TwinStationDestroyMissionEngine;->isPlayerInTargetZone:Z

    if-eqz v0, :cond_43

    instance-of v0, p1, Lfr/testudo/spacecorsair/business/ennemis/FixedTourelle;

    if-eqz v0, :cond_43

    iget-boolean v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/TwinStationDestroyMissionEngine;->completed:Z

    if-nez v0, :cond_43

    iget-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/TwinStationDestroyMissionEngine;->currentPhase:Lfr/testudo/spacecorsair/business/mission/engine/TwinStationDestroyMissionEngine$Phase;

    sget-object v1, Lfr/testudo/spacecorsair/business/mission/engine/TwinStationDestroyMissionEngine$Phase;->DESTROY_TOURELLE:Lfr/testudo/spacecorsair/business/mission/engine/TwinStationDestroyMissionEngine$Phase;

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/business/mission/engine/TwinStationDestroyMissionEngine$Phase;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_43

    .line 188
    iget v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/TwinStationDestroyMissionEngine;->remainingElementToDestroy:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/TwinStationDestroyMissionEngine;->remainingElementToDestroy:I

    .line 189
    iget v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/TwinStationDestroyMissionEngine;->remainingElementToDestroy:I

    if-gtz v0, :cond_40

    .line 190
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lfr/testudo/spacecorsair/business/mission/engine/TwinStationDestroyMissionEngine;->setPhaseGateAndStationTarget(Z)V

    .line 191
    sget-object v0, Lfr/testudo/spacecorsair/business/mission/engine/TwinStationDestroyMissionEngine$Phase;->LOCK_STATION:Lfr/testudo/spacecorsair/business/mission/engine/TwinStationDestroyMissionEngine$Phase;

    iput-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/TwinStationDestroyMissionEngine;->currentPhase:Lfr/testudo/spacecorsair/business/mission/engine/TwinStationDestroyMissionEngine$Phase;

    .line 192
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/Game;->gameThread:Lfr/testudo/spacecorsair/engine/GameThread;

    const v1, 0x7f02005b

    const v2, 0x7f0702d8

    const v3, 0x7f07015d

    const/16 v4, 0x7d0

    invoke-virtual {v0, v1, v2, v3, v4}, Lfr/testudo/spacecorsair/engine/GameThread;->showDialog(IIII)V

    .line 193
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lfr/testudo/spacecorsair/business/mission/engine/TwinStationDestroyMissionEngine;->setPhaseGateAndStationTarget(Z)V

    .line 195
    :cond_40
    invoke-virtual {p0}, Lfr/testudo/spacecorsair/business/mission/engine/TwinStationDestroyMissionEngine;->updateInstructionElementToDestroy()V

    .line 197
    :cond_43
    return-void
.end method

.method public onEveryMinute()V
    .registers 1

    .prologue
    .line 170
    return-void
.end method

.method public onEveryTenGameSec()V
    .registers 3

    .prologue
    .line 158
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/TwinStationDestroyMissionEngine;->currentPhase:Lfr/testudo/spacecorsair/business/mission/engine/TwinStationDestroyMissionEngine$Phase;

    sget-object v1, Lfr/testudo/spacecorsair/business/mission/engine/TwinStationDestroyMissionEngine$Phase;->LOCK_STATION:Lfr/testudo/spacecorsair/business/mission/engine/TwinStationDestroyMissionEngine$Phase;

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/business/mission/engine/TwinStationDestroyMissionEngine$Phase;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2b

    iget-boolean v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/TwinStationDestroyMissionEngine;->isStationLocked:Z

    if-eqz v0, :cond_2b

    .line 160
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/TwinStationDestroyMissionEngine;->missile:Lfr/testudo/spacecorsair/business/projectiles/Missile;

    if-eqz v0, :cond_28

    iget-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/TwinStationDestroyMissionEngine;->missile:Lfr/testudo/spacecorsair/business/projectiles/Missile;

    iget-boolean v0, v0, Lfr/testudo/spacecorsair/business/projectiles/Missile;->removed:Z

    if-eqz v0, :cond_2b

    sget-object v0, Lfr/testudo/spacecorsair/game/levels/builders/TwinStarLevelBuilder;->pirateStation1:Lfr/testudo/spacecorsair/business/world/station/DestroyablePirateStation;

    if-eqz v0, :cond_2b

    sget-object v0, Lfr/testudo/spacecorsair/game/levels/builders/TwinStarLevelBuilder;->pirateStation1:Lfr/testudo/spacecorsair/business/world/station/DestroyablePirateStation;

    iget-boolean v0, v0, Lfr/testudo/spacecorsair/business/world/station/DestroyablePirateStation;->isDestroyAnimation:Z

    if-nez v0, :cond_2b

    sget-object v0, Lfr/testudo/spacecorsair/game/levels/builders/TwinStarLevelBuilder;->pirateStation1:Lfr/testudo/spacecorsair/business/world/station/DestroyablePirateStation;

    iget-boolean v0, v0, Lfr/testudo/spacecorsair/business/world/station/DestroyablePirateStation;->removed:Z

    if-nez v0, :cond_2b

    .line 161
    :cond_28
    invoke-direct {p0}, Lfr/testudo/spacecorsair/business/mission/engine/TwinStationDestroyMissionEngine;->shootMissile()V

    .line 165
    :cond_2b
    return-void
.end method

.method public onPlayerBuyItem(Lfr/testudo/spacecorsair/business/loot/SpaceObject;)V
    .registers 2

    .prologue
    .line 217
    return-void
.end method

.method public onPlayerDeath()V
    .registers 1

    .prologue
    .line 202
    return-void
.end method

.method public onPlayerLoot(Lfr/testudo/spacecorsair/business/loot/LootElement;)Z
    .registers 3

    .prologue
    .line 128
    const/4 v0, 0x1

    return v0
.end method

.method public onPlayerSellItem(Lfr/testudo/spacecorsair/business/loot/SpaceObject;)V
    .registers 2

    .prologue
    .line 212
    return-void
.end method

.method public onPlayerUndock()V
    .registers 1

    .prologue
    .line 222
    return-void
.end method

.method public onZoneChanged(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 108
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/TwinStationDestroyMissionEngine;->targetZoneId:Lfr/testudo/spacecorsair/game/levels/LevelId;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/levels/LevelId;->levelName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 109
    iput-boolean v1, p0, Lfr/testudo/spacecorsair/business/mission/engine/TwinStationDestroyMissionEngine;->isPlayerInTargetZone:Z

    .line 115
    :goto_e
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/TwinStationDestroyMissionEngine;->recompenceZoneId:Lfr/testudo/spacecorsair/game/levels/LevelId;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/levels/LevelId;->levelName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_24

    .line 116
    iput-boolean v1, p0, Lfr/testudo/spacecorsair/business/mission/engine/TwinStationDestroyMissionEngine;->isPlayerInRecompenceZone:Z

    .line 122
    :goto_1a
    invoke-direct {p0, v1}, Lfr/testudo/spacecorsair/business/mission/engine/TwinStationDestroyMissionEngine;->setPhaseGateAndStationTarget(Z)V

    .line 123
    invoke-virtual {p0}, Lfr/testudo/spacecorsair/business/mission/engine/TwinStationDestroyMissionEngine;->updateInstructionElementToDestroy()V

    .line 124
    return-void

    .line 112
    :cond_21
    iput-boolean v2, p0, Lfr/testudo/spacecorsair/business/mission/engine/TwinStationDestroyMissionEngine;->isPlayerInTargetZone:Z

    goto :goto_e

    .line 119
    :cond_24
    iput-boolean v2, p0, Lfr/testudo/spacecorsair/business/mission/engine/TwinStationDestroyMissionEngine;->isPlayerInRecompenceZone:Z

    goto :goto_1a
.end method

.method public restoreState()V
    .registers 2

    .prologue
    .line 279
    iget v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/TwinStationDestroyMissionEngine;->numberOfElementToDestroy:I

    iput v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/TwinStationDestroyMissionEngine;->remainingElementToDestroy:I

    .line 280
    sget-object v0, Lfr/testudo/spacecorsair/business/mission/engine/TwinStationDestroyMissionEngine$Phase;->DESTROY_TOURELLE:Lfr/testudo/spacecorsair/business/mission/engine/TwinStationDestroyMissionEngine$Phase;

    iput-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/TwinStationDestroyMissionEngine;->currentPhase:Lfr/testudo/spacecorsair/business/mission/engine/TwinStationDestroyMissionEngine$Phase;

    .line 281
    invoke-virtual {p0}, Lfr/testudo/spacecorsair/business/mission/engine/TwinStationDestroyMissionEngine;->updateInstructionElementToDestroy()V

    .line 282
    const/4 v0, 0x0

    iput-boolean v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/TwinStationDestroyMissionEngine;->isStationLocked:Z

    .line 283
    return-void
.end method

.method public saveState()V
    .registers 1

    .prologue
    .line 288
    return-void
.end method

.method public terminate()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 297
    iput-boolean v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/TwinStationDestroyMissionEngine;->completed:Z

    .line 298
    invoke-direct {p0, v0}, Lfr/testudo/spacecorsair/business/mission/engine/TwinStationDestroyMissionEngine;->setPhaseGateAndStationTarget(Z)V

    .line 299
    sget-object v0, Lfr/testudo/spacecorsair/business/mission/engine/TwinStationDestroyMissionEngine$Phase;->DESTROY_TOURELLE:Lfr/testudo/spacecorsair/business/mission/engine/TwinStationDestroyMissionEngine$Phase;

    iput-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/TwinStationDestroyMissionEngine;->currentPhase:Lfr/testudo/spacecorsair/business/mission/engine/TwinStationDestroyMissionEngine$Phase;

    .line 301
    return-void
.end method

.method public updateInstructionElementToDestroy()V
    .registers 4

    .prologue
    .line 101
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/mission/engine/TwinStationDestroyMissionEngine;->textDestroySentry:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lfr/testudo/spacecorsair/business/mission/engine/TwinStationDestroyMissionEngine;->numberOfElementToDestroy:I

    iget v2, p0, Lfr/testudo/spacecorsair/business/mission/engine/TwinStationDestroyMissionEngine;->remainingElementToDestroy:I

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lfr/testudo/spacecorsair/business/mission/engine/TwinStationDestroyMissionEngine;->numberOfElementToDestroy:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/TwinStationDestroyMissionEngine;->textKillEnnemyWithCountLocalised:Ljava/lang/String;

    .line 102
    return-void
.end method
