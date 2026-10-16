.class Lfr/testudo/spacecorsair/business/mission/engine/LootItemsMissionEngine$Backup;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfr/testudo/spacecorsair/business/mission/engine/LootItemsMissionEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Backup"
.end annotation


# instance fields
.field completed:Z

.field curPhase:Lfr/testudo/spacecorsair/business/mission/engine/LootItemsMissionEngine$Phase;

.field currentCount:I

.field final synthetic this$0:Lfr/testudo/spacecorsair/business/mission/engine/LootItemsMissionEngine;


# direct methods
.method public constructor <init>(Lfr/testudo/spacecorsair/business/mission/engine/LootItemsMissionEngine;)V
    .registers 3

    .prologue
    .line 78
    iput-object p1, p0, Lfr/testudo/spacecorsair/business/mission/engine/LootItemsMissionEngine$Backup;->this$0:Lfr/testudo/spacecorsair/business/mission/engine/LootItemsMissionEngine;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    const/4 v0, 0x0

    iput-boolean v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/LootItemsMissionEngine$Backup;->completed:Z

    .line 80
    return-void
.end method


# virtual methods
.method public applyCurrent(Lfr/testudo/spacecorsair/business/mission/engine/LootItemsMissionEngine;)V
    .registers 3

    .prologue
    .line 83
    iget-object v0, p1, Lfr/testudo/spacecorsair/business/mission/engine/LootItemsMissionEngine;->currentPhase:Lfr/testudo/spacecorsair/business/mission/engine/LootItemsMissionEngine$Phase;

    iput-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/LootItemsMissionEngine$Backup;->curPhase:Lfr/testudo/spacecorsair/business/mission/engine/LootItemsMissionEngine$Phase;

    .line 84
    iget v0, p1, Lfr/testudo/spacecorsair/business/mission/engine/LootItemsMissionEngine;->currentLootAmount:I

    iput v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/LootItemsMissionEngine$Backup;->currentCount:I

    .line 85
    iget-boolean v0, p1, Lfr/testudo/spacecorsair/business/mission/engine/LootItemsMissionEngine;->completed:Z

    iput-boolean v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/LootItemsMissionEngine$Backup;->completed:Z

    .line 86
    return-void
.end method

.method public restore(Lfr/testudo/spacecorsair/business/mission/engine/LootItemsMissionEngine;)V
    .registers 4

    .prologue
    .line 89
    # setter for: Lfr/testudo/spacecorsair/business/mission/engine/LootItemsMissionEngine;->backup:Lfr/testudo/spacecorsair/business/mission/engine/LootItemsMissionEngine$Backup;
    invoke-static {p1, p0}, Lfr/testudo/spacecorsair/business/mission/engine/LootItemsMissionEngine;->access$002(Lfr/testudo/spacecorsair/business/mission/engine/LootItemsMissionEngine;Lfr/testudo/spacecorsair/business/mission/engine/LootItemsMissionEngine$Backup;)Lfr/testudo/spacecorsair/business/mission/engine/LootItemsMissionEngine$Backup;

    .line 90
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/LootItemsMissionEngine$Backup;->curPhase:Lfr/testudo/spacecorsair/business/mission/engine/LootItemsMissionEngine$Phase;

    if-nez v0, :cond_22

    sget-object v0, Lfr/testudo/spacecorsair/business/mission/engine/LootItemsMissionEngine$Phase;->LOOTING:Lfr/testudo/spacecorsair/business/mission/engine/LootItemsMissionEngine$Phase;

    :goto_9
    iput-object v0, p1, Lfr/testudo/spacecorsair/business/mission/engine/LootItemsMissionEngine;->currentPhase:Lfr/testudo/spacecorsair/business/mission/engine/LootItemsMissionEngine$Phase;

    .line 91
    iget-boolean v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/LootItemsMissionEngine$Backup;->completed:Z

    iput-boolean v0, p1, Lfr/testudo/spacecorsair/business/mission/engine/LootItemsMissionEngine;->completed:Z

    .line 92
    iget-boolean v0, p1, Lfr/testudo/spacecorsair/business/mission/engine/LootItemsMissionEngine;->acceptExisingItems:Z

    if-eqz v0, :cond_25

    .line 93
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/Game;->playerCurrentShipInventory:Lfr/testudo/spacecorsair/business/player/Inventory;

    iget-object v1, p1, Lfr/testudo/spacecorsair/business/mission/engine/LootItemsMissionEngine;->objectToLoot:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/business/player/Inventory;->getQuantityOf(Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)I

    move-result v0

    iput v0, p1, Lfr/testudo/spacecorsair/business/mission/engine/LootItemsMissionEngine;->currentLootAmount:I

    .line 99
    :goto_21
    return-void

    .line 90
    :cond_22
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/LootItemsMissionEngine$Backup;->curPhase:Lfr/testudo/spacecorsair/business/mission/engine/LootItemsMissionEngine$Phase;

    goto :goto_9

    .line 96
    :cond_25
    iget v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/LootItemsMissionEngine$Backup;->currentCount:I

    iput v0, p1, Lfr/testudo/spacecorsair/business/mission/engine/LootItemsMissionEngine;->currentLootAmount:I

    goto :goto_21
.end method
