.class Lfr/testudo/spacecorsair/activity/MyShipActivity$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lfr/testudo/spacecorsair/activity/viewgroup/ItemQuantityPickListener;


# instance fields
.field final synthetic this$0:Lfr/testudo/spacecorsair/activity/MyShipActivity;


# direct methods
.method constructor <init>(Lfr/testudo/spacecorsair/activity/MyShipActivity;)V
    .registers 2

    .prologue
    .line 122
    iput-object p1, p0, Lfr/testudo/spacecorsair/activity/MyShipActivity$2;->this$0:Lfr/testudo/spacecorsair/activity/MyShipActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemPick(ILfr/testudo/spacecorsair/business/loot/SpaceObject;Lfr/testudo/spacecorsair/activity/adapters/SpaceObjectAdapter$ItemContext;)V
    .registers 6

    .prologue
    .line 126
    new-instance v0, Lfr/testudo/spacecorsair/business/loot/SpaceObject;

    invoke-virtual {p2}, Lfr/testudo/spacecorsair/business/loot/SpaceObject;->getSpaceObjectType()Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lfr/testudo/spacecorsair/business/loot/SpaceObject;-><init>(Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;I)V

    .line 127
    invoke-virtual {v0}, Lfr/testudo/spacecorsair/business/loot/SpaceObject;->getQuantity()I

    move-result v1

    if-lez v1, :cond_42

    .line 129
    sget-object v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v1, v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v1, v1, Lfr/testudo/spacecorsair/game/Game;->playerCurrentShipInventory:Lfr/testudo/spacecorsair/business/player/Inventory;

    invoke-virtual {v1, v0}, Lfr/testudo/spacecorsair/business/player/Inventory;->buy(Lfr/testudo/spacecorsair/business/loot/SpaceObject;)V

    .line 130
    invoke-static {v0}, Lfr/testudo/spacecorsair/game/achievements/AchievementEventListener;->onPlayerBuyStuff(Lfr/testudo/spacecorsair/business/loot/SpaceObject;)V

    .line 131
    invoke-static {}, Lfr/testudo/spacecorsair/game/StaticStation;->getInappStation()Lfr/testudo/spacecorsair/business/world/station/Station;

    move-result-object v1

    iget-object v1, v1, Lfr/testudo/spacecorsair/business/world/station/Station;->inventory:Lfr/testudo/spacecorsair/business/player/Inventory;

    invoke-virtual {v1, v0}, Lfr/testudo/spacecorsair/business/player/Inventory;->removeObject(Lfr/testudo/spacecorsair/business/loot/SpaceObject;)V

    .line 133
    invoke-virtual {p2}, Lfr/testudo/spacecorsair/business/loot/SpaceObject;->getSpaceObjectType()Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    move-result-object v0

    sget-object v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v1, v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v1, v1, Lfr/testudo/spacecorsair/game/Game;->playerInfo:Lfr/testudo/spacecorsair/business/player/PlayerInfo;

    iget-object v1, v1, Lfr/testudo/spacecorsair/business/player/PlayerInfo;->playerGear:Lfr/testudo/spacecorsair/business/player/PlayerGear;

    iget-object v1, v1, Lfr/testudo/spacecorsair/business/player/PlayerGear;->missile:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    if-ne v0, v1, :cond_3b

    .line 135
    invoke-static {}, Lfr/testudo/spacecorsair/business/player/PlayerShip;->instance()Lfr/testudo/spacecorsair/business/player/PlayerShip;

    move-result-object v0

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/business/player/PlayerShip;->updateRemainingMissiles()V

    .line 139
    :cond_3b
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->soundManager:Lfr/testudo/spacecorsair/engine/SoundManager;

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/engine/SoundManager;->playCashTransactionSound()V

    .line 142
    :cond_42
    iget-object v0, p0, Lfr/testudo/spacecorsair/activity/MyShipActivity$2;->this$0:Lfr/testudo/spacecorsair/activity/MyShipActivity;

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/activity/MyShipActivity;->updateUI()V

    .line 144
    iget-object v0, p0, Lfr/testudo/spacecorsair/activity/MyShipActivity$2;->this$0:Lfr/testudo/spacecorsair/activity/MyShipActivity;

    # getter for: Lfr/testudo/spacecorsair/activity/MyShipActivity;->pickDialog:Landroid/app/Dialog;
    invoke-static {v0}, Lfr/testudo/spacecorsair/activity/MyShipActivity;->access$000(Lfr/testudo/spacecorsair/activity/MyShipActivity;)Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_58

    .line 145
    iget-object v0, p0, Lfr/testudo/spacecorsair/activity/MyShipActivity$2;->this$0:Lfr/testudo/spacecorsair/activity/MyShipActivity;

    # getter for: Lfr/testudo/spacecorsair/activity/MyShipActivity;->pickDialog:Landroid/app/Dialog;
    invoke-static {v0}, Lfr/testudo/spacecorsair/activity/MyShipActivity;->access$000(Lfr/testudo/spacecorsair/activity/MyShipActivity;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 147
    :cond_58
    iget-object v0, p0, Lfr/testudo/spacecorsair/activity/MyShipActivity$2;->this$0:Lfr/testudo/spacecorsair/activity/MyShipActivity;

    const/4 v1, 0x0

    # setter for: Lfr/testudo/spacecorsair/activity/MyShipActivity;->pickDialog:Landroid/app/Dialog;
    invoke-static {v0, v1}, Lfr/testudo/spacecorsair/activity/MyShipActivity;->access$002(Lfr/testudo/spacecorsair/activity/MyShipActivity;Landroid/app/Dialog;)Landroid/app/Dialog;

    .line 148
    return-void
.end method
