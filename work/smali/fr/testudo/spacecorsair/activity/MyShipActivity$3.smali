.class Lfr/testudo/spacecorsair/activity/MyShipActivity$3;
.super Lfr/testudo/spacecorsair/activity/viewgroup/SimpleSpaceObjectListener;
.source "SourceFile"


# instance fields
.field final synthetic this$0:Lfr/testudo/spacecorsair/activity/MyShipActivity;


# direct methods
.method constructor <init>(Lfr/testudo/spacecorsair/activity/MyShipActivity;)V
    .registers 2

    .prologue
    .line 153
    iput-object p1, p0, Lfr/testudo/spacecorsair/activity/MyShipActivity$3;->this$0:Lfr/testudo/spacecorsair/activity/MyShipActivity;

    invoke-direct {p0}, Lfr/testudo/spacecorsair/activity/viewgroup/SimpleSpaceObjectListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onBuy(Lfr/testudo/spacecorsair/business/loot/SpaceObject;)V
    .registers 8

    .prologue
    .line 179
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/Game;->playerCurrentShipInventory:Lfr/testudo/spacecorsair/business/player/Inventory;

    invoke-virtual {p1}, Lfr/testudo/spacecorsair/business/loot/SpaceObject;->getSpaceObjectType()Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    move-result-object v1

    invoke-virtual {p1}, Lfr/testudo/spacecorsair/business/loot/SpaceObject;->getQuantity()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lfr/testudo/spacecorsair/business/player/Inventory;->howManyCanIAfford(Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;I)I

    move-result v2

    .line 180
    if-lez v2, :cond_22

    .line 181
    iget-object v0, p0, Lfr/testudo/spacecorsair/activity/MyShipActivity$3;->this$0:Lfr/testudo/spacecorsair/activity/MyShipActivity;

    const/4 v3, 0x1

    iget-object v1, p0, Lfr/testudo/spacecorsair/activity/MyShipActivity$3;->this$0:Lfr/testudo/spacecorsair/activity/MyShipActivity;

    iget-object v4, v1, Lfr/testudo/spacecorsair/activity/MyShipActivity;->buyInappListener:Lfr/testudo/spacecorsair/activity/viewgroup/ItemQuantityPickListener;

    sget-object v5, Lfr/testudo/spacecorsair/activity/adapters/SpaceObjectAdapter$ItemContext;->BUY:Lfr/testudo/spacecorsair/activity/adapters/SpaceObjectAdapter$ItemContext;

    move-object v1, p1

    # invokes: Lfr/testudo/spacecorsair/activity/MyShipActivity;->showTransactionDialog(Lfr/testudo/spacecorsair/business/loot/SpaceObject;IILfr/testudo/spacecorsair/activity/viewgroup/ItemQuantityPickListener;Lfr/testudo/spacecorsair/activity/adapters/SpaceObjectAdapter$ItemContext;)V
    invoke-static/range {v0 .. v5}, Lfr/testudo/spacecorsair/activity/MyShipActivity;->access$200(Lfr/testudo/spacecorsair/activity/MyShipActivity;Lfr/testudo/spacecorsair/business/loot/SpaceObject;IILfr/testudo/spacecorsair/activity/viewgroup/ItemQuantityPickListener;Lfr/testudo/spacecorsair/activity/adapters/SpaceObjectAdapter$ItemContext;)V

    .line 187
    :cond_21
    :goto_21
    return-void

    .line 183
    :cond_22
    invoke-virtual {p1}, Lfr/testudo/spacecorsair/business/loot/SpaceObject;->getSpaceObjectType()Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    move-result-object v0

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->isInappMoney()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 184
    iget-object v0, p0, Lfr/testudo/spacecorsair/activity/MyShipActivity$3;->this$0:Lfr/testudo/spacecorsair/activity/MyShipActivity;

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/activity/MyShipActivity;->showInAppCredits()V

    goto :goto_21
.end method

.method public onDelete(Lfr/testudo/spacecorsair/business/loot/SpaceObject;)V
    .registers 8

    .prologue
    .line 162
    iget-object v0, p0, Lfr/testudo/spacecorsair/activity/MyShipActivity$3;->this$0:Lfr/testudo/spacecorsair/activity/MyShipActivity;

    invoke-virtual {p1}, Lfr/testudo/spacecorsair/business/loot/SpaceObject;->getQuantity()I

    move-result v2

    const/4 v3, 0x0

    iget-object v1, p0, Lfr/testudo/spacecorsair/activity/MyShipActivity$3;->this$0:Lfr/testudo/spacecorsair/activity/MyShipActivity;

    iget-object v4, v1, Lfr/testudo/spacecorsair/activity/MyShipActivity;->pickListener:Lfr/testudo/spacecorsair/activity/viewgroup/ItemQuantityPickListener;

    sget-object v5, Lfr/testudo/spacecorsair/activity/adapters/SpaceObjectAdapter$ItemContext;->INVENTORY:Lfr/testudo/spacecorsair/activity/adapters/SpaceObjectAdapter$ItemContext;

    move-object v1, p1

    # invokes: Lfr/testudo/spacecorsair/activity/MyShipActivity;->showDeleteDialog(Lfr/testudo/spacecorsair/business/loot/SpaceObject;IILfr/testudo/spacecorsair/activity/viewgroup/ItemQuantityPickListener;Lfr/testudo/spacecorsair/activity/adapters/SpaceObjectAdapter$ItemContext;)V
    invoke-static/range {v0 .. v5}, Lfr/testudo/spacecorsair/activity/MyShipActivity;->access$100(Lfr/testudo/spacecorsair/activity/MyShipActivity;Lfr/testudo/spacecorsair/business/loot/SpaceObject;IILfr/testudo/spacecorsair/activity/viewgroup/ItemQuantityPickListener;Lfr/testudo/spacecorsair/activity/adapters/SpaceObjectAdapter$ItemContext;)V

    .line 163
    return-void
.end method

.method public onDetails(Lfr/testudo/spacecorsair/business/loot/SpaceObject;)V
    .registers 4

    .prologue
    .line 156
    iget-object v0, p0, Lfr/testudo/spacecorsair/activity/MyShipActivity$3;->this$0:Lfr/testudo/spacecorsair/activity/MyShipActivity;

    iget-object v0, v0, Lfr/testudo/spacecorsair/activity/MyShipActivity;->context:Landroid/app/Activity;

    invoke-virtual {p1}, Lfr/testudo/spacecorsair/business/loot/SpaceObject;->getSpaceObjectType()Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    move-result-object v1

    invoke-static {v0, v1}, Lfr/testudo/spacecorsair/activity/InventoryDetailActivity;->getInventoryDetailIntent(Landroid/content/Context;Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)Landroid/content/Intent;

    move-result-object v0

    .line 157
    iget-object v1, p0, Lfr/testudo/spacecorsair/activity/MyShipActivity$3;->this$0:Lfr/testudo/spacecorsair/activity/MyShipActivity;

    invoke-virtual {v1, v0}, Lfr/testudo/spacecorsair/activity/MyShipActivity;->startActivity(Landroid/content/Intent;)V

    .line 158
    return-void
.end method

.method public onEquip(Lfr/testudo/spacecorsair/business/loot/SpaceObject;)V
    .registers 4

    .prologue
    .line 173
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/Game;->playerInfo:Lfr/testudo/spacecorsair/business/player/PlayerInfo;

    invoke-virtual {p1}, Lfr/testudo/spacecorsair/business/loot/SpaceObject;->getSpaceObjectType()Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/business/player/PlayerInfo;->equipObject(Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)V

    .line 174
    iget-object v0, p0, Lfr/testudo/spacecorsair/activity/MyShipActivity$3;->this$0:Lfr/testudo/spacecorsair/activity/MyShipActivity;

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/activity/MyShipActivity;->updateUI()V

    .line 175
    return-void
.end method

.method public onUse(Lfr/testudo/spacecorsair/business/loot/SpaceObject;)V
    .registers 5

    .prologue
    .line 167
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/Game;->playerInfo:Lfr/testudo/spacecorsair/business/player/PlayerInfo;

    iget-object v1, p0, Lfr/testudo/spacecorsair/activity/MyShipActivity$3;->this$0:Lfr/testudo/spacecorsair/activity/MyShipActivity;

    iget-object v1, v1, Lfr/testudo/spacecorsair/activity/MyShipActivity;->context:Landroid/app/Activity;

    invoke-virtual {p1}, Lfr/testudo/spacecorsair/business/loot/SpaceObject;->getSpaceObjectType()Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lfr/testudo/spacecorsair/business/player/PlayerInfo;->useObject(Landroid/content/Context;Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)V

    .line 168
    iget-object v0, p0, Lfr/testudo/spacecorsair/activity/MyShipActivity$3;->this$0:Lfr/testudo/spacecorsair/activity/MyShipActivity;

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/activity/MyShipActivity;->updateUI()V

    .line 169
    return-void
.end method
