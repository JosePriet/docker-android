.class public Lfr/testudo/spacecorsair/business/mission/engine/AlreadyCompletedEngine;
.super Lfr/testudo/spacecorsair/business/mission/MissionListener;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 14
    invoke-direct {p0}, Lfr/testudo/spacecorsair/business/mission/MissionListener;-><init>()V

    return-void
.end method


# virtual methods
.method public getCurrentInstruction()Ljava/lang/String;
    .registers 2

    .prologue
    .line 43
    const/4 v0, 0x0

    return-object v0
.end method

.method public giveUp()V
    .registers 1

    .prologue
    .line 64
    return-void
.end method

.method public init()V
    .registers 1

    .prologue
    .line 49
    return-void
.end method

.method public isCompleted()Z
    .registers 2

    .prologue
    .line 73
    const/4 v0, 0x1

    return v0
.end method

.method public onDoPhysic(J)V
    .registers 3

    .prologue
    .line 39
    return-void
.end method

.method public onElementDestroyed(Lfr/testudo/spacecorsair/business/Element;)V
    .registers 2

    .prologue
    .line 24
    return-void
.end method

.method public onElementDestroyedByPlayer(Lfr/testudo/spacecorsair/business/Element;)V
    .registers 2

    .prologue
    .line 29
    return-void
.end method

.method public onPlayerDeath()V
    .registers 1

    .prologue
    .line 34
    return-void
.end method

.method public onZoneChanged(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 19
    return-void
.end method

.method public restoreState()V
    .registers 1

    .prologue
    .line 54
    return-void
.end method

.method public saveState()V
    .registers 1

    .prologue
    .line 59
    return-void
.end method

.method public terminate()V
    .registers 1

    .prologue
    .line 69
    return-void
.end method
