.class Lfr/testudo/spacecorsair/activity/MyShipActivity$1;
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
    .line 93
    iput-object p1, p0, Lfr/testudo/spacecorsair/activity/MyShipActivity$1;->this$0:Lfr/testudo/spacecorsair/activity/MyShipActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemPick(ILfr/testudo/spacecorsair/business/loot/SpaceObject;Lfr/testudo/spacecorsair/activity/adapters/SpaceObjectAdapter$ItemContext;)V
    .registers 7

    .prologue
    .line 96
    new-instance v0, Lfr/testudo/spacecorsair/business/loot/SpaceObject;

    invoke-virtual {p2}, Lfr/testudo/spacecorsair/business/loot/SpaceObject;->getSpaceObjectType()Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lfr/testudo/spacecorsair/business/loot/SpaceObject;-><init>(Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;I)V

    .line 97
    sget-object v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v1, v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->currentMission:Lfr/testudo/spacecorsair/business/mission/Mission;

    if-eqz v1, :cond_18

    .line 98
    sget-object v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v1, v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->currentMission:Lfr/testudo/spacecorsair/business/mission/Mission;

    iget-object v1, v1, Lfr/testudo/spacecorsair/business/mission/Mission;->missionEngine:Lfr/testudo/spacecorsair/business/mission/MissionListener;

    invoke-virtual {v1, v0}, Lfr/testudo/spacecorsair/business/mission/MissionListener;->onPlayerDestroyInventory(Lfr/testudo/spacecorsair/business/loot/SpaceObject;)V

    .line 101
    :cond_18
    sget-object v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v1, v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v1, v1, Lfr/testudo/spacecorsair/game/Game;->playerCurrentShipInventory:Lfr/testudo/spacecorsair/business/player/Inventory;

    invoke-virtual {v1, v0}, Lfr/testudo/spacecorsair/business/player/Inventory;->removeObject(Lfr/testudo/spacecorsair/business/loot/SpaceObject;)V

    .line 104
    invoke-virtual {p2}, Lfr/testudo/spacecorsair/business/loot/SpaceObject;->getSpaceObjectType()Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    move-result-object v1

    sget-object v2, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v2, v2, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v2, v2, Lfr/testudo/spacecorsair/game/Game;->playerInfo:Lfr/testudo/spacecorsair/business/player/PlayerInfo;

    iget-object v2, v2, Lfr/testudo/spacecorsair/business/player/PlayerInfo;->playerGear:Lfr/testudo/spacecorsair/business/player/PlayerGear;

    iget-object v2, v2, Lfr/testudo/spacecorsair/business/player/PlayerGear;->missile:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    if-ne v1, v2, :cond_38

    .line 106
    invoke-static {}, Lfr/testudo/spacecorsair/business/player/PlayerShip;->instance()Lfr/testudo/spacecorsair/business/player/PlayerShip;

    move-result-object v1

    invoke-virtual {v1}, Lfr/testudo/spacecorsair/business/player/PlayerShip;->updateRemainingMissiles()V

    .line 108
    :cond_38
    if-lez p1, :cond_44

    .line 109
    sget-object v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v1, v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->soundManager:Lfr/testudo/spacecorsair/engine/SoundManager;

    invoke-virtual {v1}, Lfr/testudo/spacecorsair/engine/SoundManager;->playTrash()V

    .line 110
    invoke-static {v0}, Lfr/testudo/spacecorsair/game/achievements/AchievementEventListener;->onItemToTrash(Lfr/testudo/spacecorsair/business/loot/SpaceObject;)V

    .line 113
    :cond_44
    iget-object v0, p0, Lfr/testudo/spacecorsair/activity/MyShipActivity$1;->this$0:Lfr/testudo/spacecorsair/activity/MyShipActivity;

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/activity/MyShipActivity;->updateUI()V

    .line 115
    iget-object v0, p0, Lfr/testudo/spacecorsair/activity/MyShipActivity$1;->this$0:Lfr/testudo/spacecorsair/activity/MyShipActivity;

    # getter for: Lfr/testudo/spacecorsair/activity/MyShipActivity;->pickDialog:Landroid/app/Dialog;
    invoke-static {v0}, Lfr/testudo/spacecorsair/activity/MyShipActivity;->access$000(Lfr/testudo/spacecorsair/activity/MyShipActivity;)Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_5a

    .line 116
    iget-object v0, p0, Lfr/testudo/spacecorsair/activity/MyShipActivity$1;->this$0:Lfr/testudo/spacecorsair/activity/MyShipActivity;

    # getter for: Lfr/testudo/spacecorsair/activity/MyShipActivity;->pickDialog:Landroid/app/Dialog;
    invoke-static {v0}, Lfr/testudo/spacecorsair/activity/MyShipActivity;->access$000(Lfr/testudo/spacecorsair/activity/MyShipActivity;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 118
    :cond_5a
    iget-object v0, p0, Lfr/testudo/spacecorsair/activity/MyShipActivity$1;->this$0:Lfr/testudo/spacecorsair/activity/MyShipActivity;

    const/4 v1, 0x0

    # setter for: Lfr/testudo/spacecorsair/activity/MyShipActivity;->pickDialog:Landroid/app/Dialog;
    invoke-static {v0, v1}, Lfr/testudo/spacecorsair/activity/MyShipActivity;->access$002(Lfr/testudo/spacecorsair/activity/MyShipActivity;Landroid/app/Dialog;)Landroid/app/Dialog;

    .line 119
    return-void
.end method
