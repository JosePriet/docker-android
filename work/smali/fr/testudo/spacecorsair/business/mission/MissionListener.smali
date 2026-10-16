.class public abstract Lfr/testudo/spacecorsair/business/mission/MissionListener;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public canHyperdriveJump()Z
    .registers 2

    .prologue
    .line 59
    const/4 v0, 0x1

    return v0
.end method

.method protected cancellMission()V
    .registers 3

    .prologue
    .line 122
    invoke-virtual {p0}, Lfr/testudo/spacecorsair/business/mission/MissionListener;->giveUp()V

    .line 123
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->missionRepository:Lfr/testudo/spacecorsair/business/mission/MissionRepository;

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/business/mission/MissionRepository;->saveNoCorrentMission()V

    .line 124
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    const/4 v1, 0x0

    iput-object v1, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->currentMission:Lfr/testudo/spacecorsair/business/mission/Mission;

    .line 125
    return-void
.end method

.method public abstract getCurrentInstruction()Ljava/lang/String;
.end method

.method public abstract giveUp()V
.end method

.method public abstract init()V
.end method

.method public abstract isCompleted()Z
.end method

.method public onBeforeJump()V
    .registers 1

    .prologue
    .line 110
    return-void
.end method

.method public onBeforePlayerDock()V
    .registers 1

    .prologue
    .line 55
    return-void
.end method

.method public onCivilAttackedByPlayer(Lfr/testudo/spacecorsair/business/world/civil/CivilShip;)V
    .registers 2

    .prologue
    .line 105
    return-void
.end method

.method public abstract onDoPhysic(J)V
.end method

.method public abstract onElementDestroyed(Lfr/testudo/spacecorsair/business/Element;)V
.end method

.method public abstract onElementDestroyedByPlayer(Lfr/testudo/spacecorsair/business/Element;)V
.end method

.method public onEveryMinute()V
    .registers 1

    .prologue
    .line 41
    return-void
.end method

.method public onEveryTenGameSec()V
    .registers 1

    .prologue
    .line 36
    return-void
.end method

.method public onMineDisabled(Lfr/testudo/spacecorsair/business/world/ReprogramableMine;)V
    .registers 2

    .prologue
    .line 118
    return-void
.end method

.method public onPlayerBuyItem(Lfr/testudo/spacecorsair/business/loot/SpaceObject;)V
    .registers 2

    .prologue
    .line 70
    return-void
.end method

.method public abstract onPlayerDeath()V
.end method

.method public onPlayerDestroyInventory(Lfr/testudo/spacecorsair/business/loot/SpaceObject;)V
    .registers 2

    .prologue
    .line 114
    return-void
.end method

.method public onPlayerLoot(Lfr/testudo/spacecorsair/business/loot/LootElement;)Z
    .registers 3

    .prologue
    .line 30
    const/4 v0, 0x1

    return v0
.end method

.method public onPlayerSellItem(Lfr/testudo/spacecorsair/business/loot/SpaceObject;)V
    .registers 2

    .prologue
    .line 65
    return-void
.end method

.method public onPlayerUndock()V
    .registers 1

    .prologue
    .line 75
    return-void
.end method

.method public abstract onZoneChanged(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract restoreState()V
.end method

.method public abstract saveState()V
.end method

.method public abstract terminate()V
.end method
