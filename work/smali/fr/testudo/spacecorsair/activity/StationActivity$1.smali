.class Lfr/testudo/spacecorsair/activity/StationActivity$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lfr/testudo/spacecorsair/activity/viewgroup/ItemQuantityPickListener;


# instance fields
.field final synthetic this$0:Lfr/testudo/spacecorsair/activity/StationActivity;


# direct methods
.method constructor <init>(Lfr/testudo/spacecorsair/activity/StationActivity;)V
    .registers 2

    .prologue
    .line 86
    iput-object p1, p0, Lfr/testudo/spacecorsair/activity/StationActivity$1;->this$0:Lfr/testudo/spacecorsair/activity/StationActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemPick(ILfr/testudo/spacecorsair/business/loot/SpaceObject;Lfr/testudo/spacecorsair/activity/adapters/SpaceObjectAdapter$ItemContext;)V
    .registers 7

    .prologue
    invoke-static {p0, p1, p2, p3}, Lfr/testudo/spacecorsair/mod/ModQol;->confirmSell(Ljava/lang/Object;ILfr/testudo/spacecorsair/business/loot/SpaceObject;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :mod_sell_go

    return-void

    :mod_sell_go

    .line 90
    new-instance v0, Lfr/testudo/spacecorsair/business/loot/SpaceObject;

    invoke-virtual {p2}, Lfr/testudo/spacecorsair/business/loot/SpaceObject;->getSpaceObjectType()Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lfr/testudo/spacecorsair/business/loot/SpaceObject;-><init>(Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;I)V

    .line 91
    invoke-virtual {v0}, Lfr/testudo/spacecorsair/business/loot/SpaceObject;->getQuantity()I

    move-result v1

    if-lez v1, :cond_38

    .line 93
    sget-object v1, Lfr/testudo/spacecorsair/activity/StationActivity$7;->$SwitchMap$fr$testudo$spacecorsair$activity$adapters$SpaceObjectAdapter$ItemContext:[I

    invoke-virtual {p3}, Lfr/testudo/spacecorsair/activity/adapters/SpaceObjectAdapter$ItemContext;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_86

    .line 107
    :goto_1a
    invoke-virtual {p2}, Lfr/testudo/spacecorsair/business/loot/SpaceObject;->getSpaceObjectType()Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    move-result-object v0

    sget-object v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v1, v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v1, v1, Lfr/testudo/spacecorsair/game/Game;->playerInfo:Lfr/testudo/spacecorsair/business/player/PlayerInfo;

    iget-object v1, v1, Lfr/testudo/spacecorsair/business/player/PlayerInfo;->playerGear:Lfr/testudo/spacecorsair/business/player/PlayerGear;

    iget-object v1, v1, Lfr/testudo/spacecorsair/business/player/PlayerGear;->missile:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    if-ne v0, v1, :cond_31

    .line 109
    invoke-static {}, Lfr/testudo/spacecorsair/business/player/PlayerShip;->instance()Lfr/testudo/spacecorsair/business/player/PlayerShip;

    move-result-object v0

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/business/player/PlayerShip;->updateRemainingMissiles()V

    .line 113
    :cond_31
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->soundManager:Lfr/testudo/spacecorsair/engine/SoundManager;

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/engine/SoundManager;->playCashTransactionSound()V

    .line 116
    :cond_38
    iget-object v0, p0, Lfr/testudo/spacecorsair/activity/StationActivity$1;->this$0:Lfr/testudo/spacecorsair/activity/StationActivity;

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/activity/StationActivity;->updateTexts()V

    .line 117
    iget-object v0, p0, Lfr/testudo/spacecorsair/activity/StationActivity$1;->this$0:Lfr/testudo/spacecorsair/activity/StationActivity;

    # invokes: Lfr/testudo/spacecorsair/activity/StationActivity;->updateListviews()V
    invoke-static {v0}, Lfr/testudo/spacecorsair/activity/StationActivity;->access$000(Lfr/testudo/spacecorsair/activity/StationActivity;)V

    .line 118
    iget-object v0, p0, Lfr/testudo/spacecorsair/activity/StationActivity$1;->this$0:Lfr/testudo/spacecorsair/activity/StationActivity;

    # getter for: Lfr/testudo/spacecorsair/activity/StationActivity;->pickDialog:Landroid/app/Dialog;
    invoke-static {v0}, Lfr/testudo/spacecorsair/activity/StationActivity;->access$100(Lfr/testudo/spacecorsair/activity/StationActivity;)Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_53

    .line 119
    iget-object v0, p0, Lfr/testudo/spacecorsair/activity/StationActivity$1;->this$0:Lfr/testudo/spacecorsair/activity/StationActivity;

    # getter for: Lfr/testudo/spacecorsair/activity/StationActivity;->pickDialog:Landroid/app/Dialog;
    invoke-static {v0}, Lfr/testudo/spacecorsair/activity/StationActivity;->access$100(Lfr/testudo/spacecorsair/activity/StationActivity;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 121
    :cond_53
    iget-object v0, p0, Lfr/testudo/spacecorsair/activity/StationActivity$1;->this$0:Lfr/testudo/spacecorsair/activity/StationActivity;

    const/4 v1, 0x0

    # setter for: Lfr/testudo/spacecorsair/activity/StationActivity;->pickDialog:Landroid/app/Dialog;
    invoke-static {v0, v1}, Lfr/testudo/spacecorsair/activity/StationActivity;->access$102(Lfr/testudo/spacecorsair/activity/StationActivity;Landroid/app/Dialog;)Landroid/app/Dialog;

    .line 122
    return-void

    .line 95
    :pswitch_5a
    sget-object v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v1, v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v1, v1, Lfr/testudo/spacecorsair/game/Game;->playerCurrentShipInventory:Lfr/testudo/spacecorsair/business/player/Inventory;

    invoke-virtual {v1, v0}, Lfr/testudo/spacecorsair/business/player/Inventory;->sell(Lfr/testudo/spacecorsair/business/loot/SpaceObject;)V

    .line 96
    invoke-static {v0}, Lfr/testudo/spacecorsair/game/achievements/AchievementEventListener;->onPlayerSellStuff(Lfr/testudo/spacecorsair/business/loot/SpaceObject;)V

    .line 97
    iget-object v1, p0, Lfr/testudo/spacecorsair/activity/StationActivity$1;->this$0:Lfr/testudo/spacecorsair/activity/StationActivity;

    iget-object v1, v1, Lfr/testudo/spacecorsair/activity/StationActivity;->currentStation:Lfr/testudo/spacecorsair/business/world/station/Station;

    iget-object v1, v1, Lfr/testudo/spacecorsair/business/world/station/Station;->inventory:Lfr/testudo/spacecorsair/business/player/Inventory;

    invoke-virtual {v1, v0}, Lfr/testudo/spacecorsair/business/player/Inventory;->addObject(Lfr/testudo/spacecorsair/business/loot/SpaceObject;)Z

    goto :goto_1a

    .line 101
    :pswitch_70
    sget-object v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v1, v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v1, v1, Lfr/testudo/spacecorsair/game/Game;->playerCurrentShipInventory:Lfr/testudo/spacecorsair/business/player/Inventory;

    invoke-virtual {v1, v0}, Lfr/testudo/spacecorsair/business/player/Inventory;->buy(Lfr/testudo/spacecorsair/business/loot/SpaceObject;)V

    .line 102
    invoke-static {v0}, Lfr/testudo/spacecorsair/game/achievements/AchievementEventListener;->onPlayerBuyStuff(Lfr/testudo/spacecorsair/business/loot/SpaceObject;)V

    .line 103
    iget-object v1, p0, Lfr/testudo/spacecorsair/activity/StationActivity$1;->this$0:Lfr/testudo/spacecorsair/activity/StationActivity;

    iget-object v1, v1, Lfr/testudo/spacecorsair/activity/StationActivity;->currentStation:Lfr/testudo/spacecorsair/business/world/station/Station;

    iget-object v1, v1, Lfr/testudo/spacecorsair/business/world/station/Station;->inventory:Lfr/testudo/spacecorsair/business/player/Inventory;

    invoke-virtual {v1, v0}, Lfr/testudo/spacecorsair/business/player/Inventory;->removeObject(Lfr/testudo/spacecorsair/business/loot/SpaceObject;)V

    goto :goto_1a

    .line 93
    :pswitch_data_86
    .packed-switch 0x1
        :pswitch_5a
        :pswitch_70
    .end packed-switch
.end method
