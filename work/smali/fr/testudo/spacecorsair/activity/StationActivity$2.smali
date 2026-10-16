.class Lfr/testudo/spacecorsair/activity/StationActivity$2;
.super Lfr/testudo/spacecorsair/activity/viewgroup/SimpleSpaceObjectListener;
.source "SourceFile"


# instance fields
.field final synthetic this$0:Lfr/testudo/spacecorsair/activity/StationActivity;


# direct methods
.method constructor <init>(Lfr/testudo/spacecorsair/activity/StationActivity;)V
    .registers 2

    .prologue
    .line 127
    iput-object p1, p0, Lfr/testudo/spacecorsair/activity/StationActivity$2;->this$0:Lfr/testudo/spacecorsair/activity/StationActivity;

    invoke-direct {p0}, Lfr/testudo/spacecorsair/activity/viewgroup/SimpleSpaceObjectListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onBuy(Lfr/testudo/spacecorsair/business/loot/SpaceObject;)V
    .registers 8

    .prologue
    .line 142
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/Game;->playerCurrentShipInventory:Lfr/testudo/spacecorsair/business/player/Inventory;

    invoke-virtual {p1}, Lfr/testudo/spacecorsair/business/loot/SpaceObject;->getSpaceObjectType()Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    move-result-object v1

    invoke-virtual {p1}, Lfr/testudo/spacecorsair/business/loot/SpaceObject;->getQuantity()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lfr/testudo/spacecorsair/business/player/Inventory;->howManyCanIAfford(Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;I)I

    move-result v2

    .line 143
    if-lez v2, :cond_22

    .line 144
    iget-object v0, p0, Lfr/testudo/spacecorsair/activity/StationActivity$2;->this$0:Lfr/testudo/spacecorsair/activity/StationActivity;

    const/4 v3, 0x1

    iget-object v1, p0, Lfr/testudo/spacecorsair/activity/StationActivity$2;->this$0:Lfr/testudo/spacecorsair/activity/StationActivity;

    iget-object v4, v1, Lfr/testudo/spacecorsair/activity/StationActivity;->pickListener:Lfr/testudo/spacecorsair/activity/viewgroup/ItemQuantityPickListener;

    sget-object v5, Lfr/testudo/spacecorsair/activity/adapters/SpaceObjectAdapter$ItemContext;->BUY:Lfr/testudo/spacecorsair/activity/adapters/SpaceObjectAdapter$ItemContext;

    move-object v1, p1

    # invokes: Lfr/testudo/spacecorsair/activity/StationActivity;->showTransactionDialog(Lfr/testudo/spacecorsair/business/loot/SpaceObject;IILfr/testudo/spacecorsair/activity/viewgroup/ItemQuantityPickListener;Lfr/testudo/spacecorsair/activity/adapters/SpaceObjectAdapter$ItemContext;)V
    invoke-static/range {v0 .. v5}, Lfr/testudo/spacecorsair/activity/StationActivity;->access$300(Lfr/testudo/spacecorsair/activity/StationActivity;Lfr/testudo/spacecorsair/business/loot/SpaceObject;IILfr/testudo/spacecorsair/activity/viewgroup/ItemQuantityPickListener;Lfr/testudo/spacecorsair/activity/adapters/SpaceObjectAdapter$ItemContext;)V

    .line 150
    :cond_21
    :goto_21
    return-void

    .line 146
    :cond_22
    invoke-virtual {p1}, Lfr/testudo/spacecorsair/business/loot/SpaceObject;->getSpaceObjectType()Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    move-result-object v0

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->isInappMoney()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 147
    iget-object v0, p0, Lfr/testudo/spacecorsair/activity/StationActivity$2;->this$0:Lfr/testudo/spacecorsair/activity/StationActivity;

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/activity/StationActivity;->showInAppCredits()V

    goto :goto_21
.end method

.method public onDetails(Lfr/testudo/spacecorsair/business/loot/SpaceObject;)V
    .registers 4

    .prologue
    .line 130
    iget-object v0, p0, Lfr/testudo/spacecorsair/activity/StationActivity$2;->this$0:Lfr/testudo/spacecorsair/activity/StationActivity;

    # getter for: Lfr/testudo/spacecorsair/activity/StationActivity;->context:Landroid/content/Context;
    invoke-static {v0}, Lfr/testudo/spacecorsair/activity/StationActivity;->access$200(Lfr/testudo/spacecorsair/activity/StationActivity;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1}, Lfr/testudo/spacecorsair/business/loot/SpaceObject;->getSpaceObjectType()Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    move-result-object v1

    invoke-static {v0, v1}, Lfr/testudo/spacecorsair/activity/InventoryDetailActivity;->getInventoryDetailIntent(Landroid/content/Context;Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)Landroid/content/Intent;

    move-result-object v0

    .line 131
    iget-object v1, p0, Lfr/testudo/spacecorsair/activity/StationActivity$2;->this$0:Lfr/testudo/spacecorsair/activity/StationActivity;

    invoke-virtual {v1, v0}, Lfr/testudo/spacecorsair/activity/StationActivity;->startActivity(Landroid/content/Intent;)V

    .line 132
    return-void
.end method

.method public onSell(Lfr/testudo/spacecorsair/business/loot/SpaceObject;)V
    .registers 8

    .prologue
    .line 136
    iget-object v0, p0, Lfr/testudo/spacecorsair/activity/StationActivity$2;->this$0:Lfr/testudo/spacecorsair/activity/StationActivity;

    invoke-virtual {p1}, Lfr/testudo/spacecorsair/business/loot/SpaceObject;->getQuantity()I

    move-result v2

    invoke-virtual {p1}, Lfr/testudo/spacecorsair/business/loot/SpaceObject;->getQuantity()I

    move-result v3

    iget-object v1, p0, Lfr/testudo/spacecorsair/activity/StationActivity$2;->this$0:Lfr/testudo/spacecorsair/activity/StationActivity;

    iget-object v4, v1, Lfr/testudo/spacecorsair/activity/StationActivity;->pickListener:Lfr/testudo/spacecorsair/activity/viewgroup/ItemQuantityPickListener;

    sget-object v5, Lfr/testudo/spacecorsair/activity/adapters/SpaceObjectAdapter$ItemContext;->SELL:Lfr/testudo/spacecorsair/activity/adapters/SpaceObjectAdapter$ItemContext;

    move-object v1, p1

    # invokes: Lfr/testudo/spacecorsair/activity/StationActivity;->showTransactionDialog(Lfr/testudo/spacecorsair/business/loot/SpaceObject;IILfr/testudo/spacecorsair/activity/viewgroup/ItemQuantityPickListener;Lfr/testudo/spacecorsair/activity/adapters/SpaceObjectAdapter$ItemContext;)V
    invoke-static/range {v0 .. v5}, Lfr/testudo/spacecorsair/activity/StationActivity;->access$300(Lfr/testudo/spacecorsair/activity/StationActivity;Lfr/testudo/spacecorsair/business/loot/SpaceObject;IILfr/testudo/spacecorsair/activity/viewgroup/ItemQuantityPickListener;Lfr/testudo/spacecorsair/activity/adapters/SpaceObjectAdapter$ItemContext;)V

    .line 137
    return-void
.end method
