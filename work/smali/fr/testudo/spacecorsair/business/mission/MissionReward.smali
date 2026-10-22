.class public Lfr/testudo/spacecorsair/business/mission/MissionReward;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lfr/testudo/spacecorsair/business/mission/MissionReward$1;
    }
.end annotation


# instance fields
.field public creditReward:I

.field public rewardLoot:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lfr/testudo/spacecorsair/business/loot/SpaceObject;",
            ">;"
        }
    .end annotation
.end field

.field public xpReward:I


# direct methods
.method private constructor <init>(Ljava/util/List;II)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lfr/testudo/spacecorsair/business/loot/SpaceObject;",
            ">;II)V"
        }
    .end annotation

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    if-nez p1, :cond_11

    .line 21
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lfr/testudo/spacecorsair/business/mission/MissionReward;->rewardLoot:Ljava/util/List;

    .line 26
    :goto_c
    invoke-static {p3}, Lfr/testudo/spacecorsair/mod/ModQol;->missionCredits(I)I

    move-result p3

    iput p3, p0, Lfr/testudo/spacecorsair/business/mission/MissionReward;->creditReward:I

    .line 27
    iput p2, p0, Lfr/testudo/spacecorsair/business/mission/MissionReward;->xpReward:I

    .line 28
    return-void

    .line 23
    :cond_11
    iput-object p1, p0, Lfr/testudo/spacecorsair/business/mission/MissionReward;->rewardLoot:Ljava/util/List;

    goto :goto_c
.end method

.method public static withObject(Ljava/util/List;II)Lfr/testudo/spacecorsair/business/mission/MissionReward;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lfr/testudo/spacecorsair/business/loot/SpaceObject;",
            ">;II)",
            "Lfr/testudo/spacecorsair/business/mission/MissionReward;"
        }
    .end annotation

    .prologue
    .line 31
    new-instance v0, Lfr/testudo/spacecorsair/business/mission/MissionReward;

    invoke-direct {v0, p0, p1, p2}, Lfr/testudo/spacecorsair/business/mission/MissionReward;-><init>(Ljava/util/List;II)V

    return-object v0
.end method

.method public static withoutObject(II)Lfr/testudo/spacecorsair/business/mission/MissionReward;
    .registers 4

    .prologue
    .line 35
    new-instance v0, Lfr/testudo/spacecorsair/business/mission/MissionReward;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0, p1}, Lfr/testudo/spacecorsair/business/mission/MissionReward;-><init>(Ljava/util/List;II)V

    return-object v0
.end method


# virtual methods
.method public getBestReward()Lfr/testudo/spacecorsair/business/loot/LootRarety;
    .registers 6

    .prologue
    .line 57
    const/4 v1, 0x0

    .line 58
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/mission/MissionReward;->rewardLoot:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_7
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfr/testudo/spacecorsair/business/loot/SpaceObject;

    .line 59
    if-nez v1, :cond_1f

    .line 60
    invoke-virtual {v0}, Lfr/testudo/spacecorsair/business/loot/SpaceObject;->getSpaceObjectType()Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    move-result-object v0

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->getRarety()Lfr/testudo/spacecorsair/business/loot/LootRarety;

    move-result-object v0

    :goto_1d
    move-object v1, v0

    .line 66
    goto :goto_7

    .line 62
    :cond_1f
    invoke-virtual {v1}, Lfr/testudo/spacecorsair/business/loot/LootRarety;->getRaretySort()I

    move-result v3

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/business/loot/SpaceObject;->getSpaceObjectType()Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    move-result-object v4

    invoke-virtual {v4}, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->getRarety()Lfr/testudo/spacecorsair/business/loot/LootRarety;

    move-result-object v4

    invoke-virtual {v4}, Lfr/testudo/spacecorsair/business/loot/LootRarety;->getRaretySort()I

    move-result v4

    if-ge v3, v4, :cond_3b

    .line 63
    invoke-virtual {v0}, Lfr/testudo/spacecorsair/business/loot/SpaceObject;->getSpaceObjectType()Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    move-result-object v0

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->getRarety()Lfr/testudo/spacecorsair/business/loot/LootRarety;

    move-result-object v0

    goto :goto_1d

    .line 67
    :cond_3a
    return-object v1

    :cond_3b
    move-object v0, v1

    goto :goto_1d
.end method

.method public grantToPlayer()V
    .registers 5

    .prologue
    .line 39
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/mission/MissionReward;->rewardLoot:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_49

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfr/testudo/spacecorsair/business/loot/SpaceObject;

    .line 40
    sget-object v2, Lfr/testudo/spacecorsair/business/mission/MissionReward$1;->$SwitchMap$fr$testudo$spacecorsair$business$loot$SpaceObjectType:[I

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/business/loot/SpaceObject;->getSpaceObjectType()Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    move-result-object v3

    invoke-virtual {v3}, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_60

    .line 48
    :goto_21
    sget-object v2, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v2, v2, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v2, v2, Lfr/testudo/spacecorsair/game/Game;->playerCurrentShipInventory:Lfr/testudo/spacecorsair/business/player/Inventory;

    invoke-virtual {v2, v0}, Lfr/testudo/spacecorsair/business/player/Inventory;->forceAddObject(Lfr/testudo/spacecorsair/business/loot/SpaceObject;)V

    goto :goto_6

    .line 42
    :pswitch_2b
    sget-object v2, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v2, v2, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v2, v2, Lfr/testudo/spacecorsair/game/Game;->playerCurrentShipInventory:Lfr/testudo/spacecorsair/business/player/Inventory;

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/business/loot/SpaceObject;->getQuantity()I

    move-result v0

    mul-int/lit16 v0, v0, 0x12c

    invoke-virtual {v2, v0}, Lfr/testudo/spacecorsair/business/player/Inventory;->increaseCapacityInTon(I)V

    goto :goto_6

    .line 45
    :pswitch_3b
    sget-object v2, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v2, v2, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v2, v2, Lfr/testudo/spacecorsair/game/Game;->playerCurrentShipInventory:Lfr/testudo/spacecorsair/business/player/Inventory;

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/business/loot/SpaceObject;->getQuantity()I

    move-result v3

    invoke-virtual {v2, v3}, Lfr/testudo/spacecorsair/business/player/Inventory;->addCreditInApp(I)V

    goto :goto_21

    .line 52
    :cond_49
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/Game;->playerCurrentShipInventory:Lfr/testudo/spacecorsair/business/player/Inventory;

    iget v1, p0, Lfr/testudo/spacecorsair/business/mission/MissionReward;->creditReward:I

    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModQol;->missionPay(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/business/player/Inventory;->addCredit(I)V

    .line 53
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/Game;->playerInfo:Lfr/testudo/spacecorsair/business/player/PlayerInfo;

    iget v1, p0, Lfr/testudo/spacecorsair/business/mission/MissionReward;->xpReward:I

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/business/player/PlayerInfo;->addXp(I)V

    .line 54
    return-void

    .line 40
    :pswitch_data_60
    .packed-switch 0x1
        :pswitch_2b
        :pswitch_3b
    .end packed-switch
.end method
