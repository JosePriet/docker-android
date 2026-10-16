.class public abstract Lfr/testudo/spacecorsair/business/mission/engine/escorte/EscortCivilMissionHandler;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract getEscortWaves(Lfr/testudo/spacecorsair/game/levels/LevelId;I)Lfr/testudo/spacecorsair/business/mission/engine/escorte/EscortWaves;
.end method

.method public abstract gimmeTargetToAddToLevel()Lfr/testudo/spacecorsair/business/world/civil/CivilShip;
.end method

.method public abstract onEscortArrivedToFinalPosition(Lfr/testudo/spacecorsair/business/world/civil/CivilShip;)V
.end method

.method public onEscortReachFinalSector()V
    .registers 1

    .prologue
    .line 27
    return-void
.end method

.method public abstract onPlayerAbandonTarget(Lfr/testudo/spacecorsair/business/world/civil/CivilShip;)V
.end method

.method public abstract onTargetReached()V
.end method
