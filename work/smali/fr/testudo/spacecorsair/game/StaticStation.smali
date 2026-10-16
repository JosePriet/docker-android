.class public Lfr/testudo/spacecorsair/game/StaticStation;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static inappStation:Lfr/testudo/spacecorsair/business/world/station/Station;

.field private static mobileStation:Lfr/testudo/spacecorsair/business/world/station/Station;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    const/4 v0, 0x0

    .line 14
    sput-object v0, Lfr/testudo/spacecorsair/game/StaticStation;->inappStation:Lfr/testudo/spacecorsair/business/world/station/Station;

    .line 16
    sput-object v0, Lfr/testudo/spacecorsair/game/StaticStation;->mobileStation:Lfr/testudo/spacecorsair/business/world/station/Station;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInappStation()Lfr/testudo/spacecorsair/business/world/station/Station;
    .registers 1

    .prologue
    .line 20
    sget-object v0, Lfr/testudo/spacecorsair/game/StaticStation;->inappStation:Lfr/testudo/spacecorsair/business/world/station/Station;

    if-nez v0, :cond_7

    .line 21
    invoke-static {}, Lfr/testudo/spacecorsair/game/StaticStation;->loadInappStation()V

    .line 24
    :cond_7
    sget-object v0, Lfr/testudo/spacecorsair/game/StaticStation;->inappStation:Lfr/testudo/spacecorsair/business/world/station/Station;

    return-object v0
.end method

.method public static getMobileStation()Lfr/testudo/spacecorsair/business/world/station/Station;
    .registers 1

    .prologue
    .line 29
    sget-object v0, Lfr/testudo/spacecorsair/game/StaticStation;->mobileStation:Lfr/testudo/spacecorsair/business/world/station/Station;

    if-nez v0, :cond_7

    .line 30
    invoke-static {}, Lfr/testudo/spacecorsair/game/StaticStation;->loadMobileStation()V

    .line 33
    :cond_7
    sget-object v0, Lfr/testudo/spacecorsair/game/StaticStation;->mobileStation:Lfr/testudo/spacecorsair/business/world/station/Station;

    return-object v0
.end method

.method private static loadInappStation()V
    .registers 3

    .prologue
    .line 37
    new-instance v0, Lfr/testudo/spacecorsair/business/world/station/BasicTradeStation;

    invoke-direct {v0}, Lfr/testudo/spacecorsair/business/world/station/BasicTradeStation;-><init>()V

    sget-object v1, Lfr/testudo/spacecorsair/engine/Vector2;->ZERO:Lfr/testudo/spacecorsair/engine/Vector2;

    const-string v2, "Cash Shop"

    invoke-virtual {v0, v1, v2}, Lfr/testudo/spacecorsair/business/world/station/BasicTradeStation;->init(Lfr/testudo/spacecorsair/engine/Vector2;Ljava/lang/String;)Lfr/testudo/spacecorsair/business/world/station/BasicTradeStation;

    move-result-object v0

    sput-object v0, Lfr/testudo/spacecorsair/game/StaticStation;->inappStation:Lfr/testudo/spacecorsair/business/world/station/Station;

    .line 38
    sget-object v0, Lfr/testudo/spacecorsair/game/StaticStation;->inappStation:Lfr/testudo/spacecorsair/business/world/station/Station;

    iget-object v0, v0, Lfr/testudo/spacecorsair/business/world/station/Station;->buyList:Ljava/util/List;

    sget-object v1, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->ALL_INAPP:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 40
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->ALL_INAPP:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_36

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    .line 41
    sget-object v2, Lfr/testudo/spacecorsair/game/StaticStation;->inappStation:Lfr/testudo/spacecorsair/business/world/station/Station;

    iget-object v2, v2, Lfr/testudo/spacecorsair/business/world/station/Station;->inventory:Lfr/testudo/spacecorsair/business/player/Inventory;

    invoke-static {v0}, Lfr/testudo/spacecorsair/business/loot/SpaceObject;->ofInfinite(Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)Lfr/testudo/spacecorsair/business/loot/SpaceObject;

    move-result-object v0

    invoke-virtual {v2, v0}, Lfr/testudo/spacecorsair/business/player/Inventory;->forceAddObject(Lfr/testudo/spacecorsair/business/loot/SpaceObject;)V

    goto :goto_1e

    .line 43
    :cond_36
    return-void
.end method

.method private static loadMobileStation()V
    .registers 4

    .prologue
    .line 46
    new-instance v0, Lfr/testudo/spacecorsair/business/world/station/BasicTradeStation;

    invoke-direct {v0}, Lfr/testudo/spacecorsair/business/world/station/BasicTradeStation;-><init>()V

    sget-object v1, Lfr/testudo/spacecorsair/engine/Vector2;->ZERO:Lfr/testudo/spacecorsair/engine/Vector2;

    sget-object v2, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    const v3, 0x7f070350

    invoke-virtual {v2, v3}, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->getLocalizedString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lfr/testudo/spacecorsair/business/world/station/BasicTradeStation;->init(Lfr/testudo/spacecorsair/engine/Vector2;Ljava/lang/String;)Lfr/testudo/spacecorsair/business/world/station/BasicTradeStation;

    move-result-object v0

    sput-object v0, Lfr/testudo/spacecorsair/game/StaticStation;->mobileStation:Lfr/testudo/spacecorsair/business/world/station/Station;

    .line 47
    sget-object v0, Lfr/testudo/spacecorsair/game/StaticStation;->mobileStation:Lfr/testudo/spacecorsair/business/world/station/Station;

    iget-object v0, v0, Lfr/testudo/spacecorsair/business/world/station/Station;->buyList:Ljava/util/List;

    sget-object v1, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->ALL_SELLABLE_BY_PLAYER:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 49
    sget-object v0, Lfr/testudo/spacecorsair/game/StaticStation;->mobileStation:Lfr/testudo/spacecorsair/business/world/station/Station;

    iget-object v0, v0, Lfr/testudo/spacecorsair/business/world/station/Station;->inventory:Lfr/testudo/spacecorsair/business/player/Inventory;

    sget-object v1, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->energyCell:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    invoke-static {v1}, Lfr/testudo/spacecorsair/business/loot/SpaceObject;->ofInfinite(Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)Lfr/testudo/spacecorsair/business/loot/SpaceObject;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/business/player/Inventory;->addObject(Lfr/testudo/spacecorsair/business/loot/SpaceObject;)Z

    .line 50
    sget-object v0, Lfr/testudo/spacecorsair/game/StaticStation;->mobileStation:Lfr/testudo/spacecorsair/business/world/station/Station;

    iget-object v0, v0, Lfr/testudo/spacecorsair/business/world/station/Station;->inventory:Lfr/testudo/spacecorsair/business/player/Inventory;

    sget-object v1, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->missile:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    invoke-static {v1}, Lfr/testudo/spacecorsair/business/loot/SpaceObject;->ofInfinite(Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)Lfr/testudo/spacecorsair/business/loot/SpaceObject;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/business/player/Inventory;->addObject(Lfr/testudo/spacecorsair/business/loot/SpaceObject;)Z

    .line 51
    sget-object v0, Lfr/testudo/spacecorsair/game/StaticStation;->mobileStation:Lfr/testudo/spacecorsair/business/world/station/Station;

    iget-object v0, v0, Lfr/testudo/spacecorsair/business/world/station/Station;->inventory:Lfr/testudo/spacecorsair/business/player/Inventory;

    sget-object v1, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->instaRepair:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    invoke-static {v1}, Lfr/testudo/spacecorsair/business/loot/SpaceObject;->ofInfinite(Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)Lfr/testudo/spacecorsair/business/loot/SpaceObject;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/business/player/Inventory;->addObject(Lfr/testudo/spacecorsair/business/loot/SpaceObject;)Z

    .line 52
    sget-object v0, Lfr/testudo/spacecorsair/game/StaticStation;->mobileStation:Lfr/testudo/spacecorsair/business/world/station/Station;

    iget-object v0, v0, Lfr/testudo/spacecorsair/business/world/station/Station;->inventory:Lfr/testudo/spacecorsair/business/player/Inventory;

    sget-object v1, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->callMobileSeller:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    invoke-static {v1}, Lfr/testudo/spacecorsair/business/loot/SpaceObject;->ofInfinite(Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)Lfr/testudo/spacecorsair/business/loot/SpaceObject;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/business/player/Inventory;->addObject(Lfr/testudo/spacecorsair/business/loot/SpaceObject;)Z

    .line 53
    sget-object v0, Lfr/testudo/spacecorsair/game/StaticStation;->mobileStation:Lfr/testudo/spacecorsair/business/world/station/Station;

    iget-object v0, v0, Lfr/testudo/spacecorsair/business/world/station/Station;->inventory:Lfr/testudo/spacecorsair/business/player/Inventory;

    sget-object v1, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->infiniteMobileSeller:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    invoke-static {v1}, Lfr/testudo/spacecorsair/business/loot/SpaceObject;->ofInfinite(Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)Lfr/testudo/spacecorsair/business/loot/SpaceObject;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/business/player/Inventory;->addObject(Lfr/testudo/spacecorsair/business/loot/SpaceObject;)Z

    .line 55
    return-void
.end method
