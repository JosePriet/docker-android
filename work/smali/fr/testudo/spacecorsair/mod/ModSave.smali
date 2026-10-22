.class public Lfr/testudo/spacecorsair/mod/ModSave;
.super Ljava/lang/Object;
.source "ModSave.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static sanitize()V
    .registers 5

    .prologue
    .line 19
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModV34;->boot()V

    .line 21
    :try_start_3
    sget-object v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v1, v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v1, v1, Lfr/testudo/spacecorsair/game/Game;->playerCurrentShipInventory:Lfr/testudo/spacecorsair/business/player/Inventory;

    .line 22
    if-eqz v1, :cond_4e

    .line 23
    const-class v2, Lfr/testudo/spacecorsair/business/player/Inventory;

    const-string v3, "content"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 24
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 25
    invoke-virtual {v2, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    .line 26
    if-eqz v1, :cond_4e

    .line 27
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 28
    :cond_27
    :goto_27
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4e

    .line 29
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 30
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    .line 31
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_49

    if-eqz v2, :cond_49

    move-object v0, v2

    check-cast v0, Lfr/testudo/spacecorsair/business/loot/SpaceObject;

    move-object v1, v0

    invoke-virtual {v1}, Lfr/testudo/spacecorsair/business/loot/SpaceObject;->getSpaceObjectType()Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    move-result-object v1

    if-nez v1, :cond_27

    .line 32
    :cond_49
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V
    :try_end_4c
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_4c} :catch_4d

    goto :goto_27

    .line 37
    :catch_4d
    move-exception v1

    .line 41
    :cond_4e
    :try_start_4e
    sget-object v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v1, v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v1, v1, Lfr/testudo/spacecorsair/game/Game;->playerInfo:Lfr/testudo/spacecorsair/business/player/PlayerInfo;

    .line 42
    if-nez v1, :cond_57

    .line 66
    :cond_56
    :goto_56
    return-void

    .line 43
    :cond_57
    iget-object v2, v1, Lfr/testudo/spacecorsair/business/player/PlayerInfo;->playerGear:Lfr/testudo/spacecorsair/business/player/PlayerGear;

    .line 44
    if-eqz v2, :cond_8b

    .line 45
    iget-object v3, v2, Lfr/testudo/spacecorsair/business/player/PlayerGear;->shield:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    if-nez v3, :cond_63

    sget-object v3, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->basicShieldLevel0:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    iput-object v3, v2, Lfr/testudo/spacecorsair/business/player/PlayerGear;->shield:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    .line 46
    :cond_63
    iget-object v3, v2, Lfr/testudo/spacecorsair/business/player/PlayerGear;->laser:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    if-nez v3, :cond_6b

    sget-object v3, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->standardLaserLevel0:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    iput-object v3, v2, Lfr/testudo/spacecorsair/business/player/PlayerGear;->laser:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    .line 47
    :cond_6b
    iget-object v3, v2, Lfr/testudo/spacecorsair/business/player/PlayerGear;->missile:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    if-nez v3, :cond_73

    sget-object v3, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->noMissileMod:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    iput-object v3, v2, Lfr/testudo/spacecorsair/business/player/PlayerGear;->missile:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    .line 48
    :cond_73
    iget-object v3, v2, Lfr/testudo/spacecorsair/business/player/PlayerGear;->booster:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    if-nez v3, :cond_7b

    sget-object v3, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->nopBooster:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    iput-object v3, v2, Lfr/testudo/spacecorsair/business/player/PlayerGear;->booster:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    .line 49
    :cond_7b
    iget-object v3, v2, Lfr/testudo/spacecorsair/business/player/PlayerGear;->hyperdriveEngine:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    if-nez v3, :cond_83

    sget-object v3, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->nopHyperdriveEngine:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    iput-object v3, v2, Lfr/testudo/spacecorsair/business/player/PlayerGear;->hyperdriveEngine:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    .line 50
    :cond_83
    iget-object v3, v2, Lfr/testudo/spacecorsair/business/player/PlayerGear;->playerShip:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    if-nez v3, :cond_8b

    sget-object v3, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->defaultPlayerShip:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    iput-object v3, v2, Lfr/testudo/spacecorsair/business/player/PlayerGear;->playerShip:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    .line 52
    :cond_8b
    iget-object v3, v1, Lfr/testudo/spacecorsair/business/player/PlayerInfo;->availShips:Ljava/util/List;

    if-eqz v3, :cond_56

    .line 53
    :cond_8f
    iget-object v3, v1, Lfr/testudo/spacecorsair/business/player/PlayerInfo;->availShips:Ljava/util/List;

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8f

    .line 56
    iget-object v3, v1, Lfr/testudo/spacecorsair/business/player/PlayerInfo;->availShips:Ljava/util/List;

    sget-object v4, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->defaultPlayerShip:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    invoke-interface {v3, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_a9

    .line 57
    iget-object v3, v1, Lfr/testudo/spacecorsair/business/player/PlayerInfo;->availShips:Ljava/util/List;

    sget-object v4, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->defaultPlayerShip:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 59
    :cond_a9
    if-eqz v2, :cond_56

    iget-object v1, v1, Lfr/testudo/spacecorsair/business/player/PlayerInfo;->availShips:Ljava/util/List;

    iget-object v3, v2, Lfr/testudo/spacecorsair/business/player/PlayerGear;->playerShip:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    invoke-interface {v1, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_56

    .line 60
    sget-object v1, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->defaultPlayerShip:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    iput-object v1, v2, Lfr/testudo/spacecorsair/business/player/PlayerGear;->playerShip:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;
    :try_end_b9
    .catch Ljava/lang/Exception; {:try_start_4e .. :try_end_b9} :catch_ba

    goto :goto_56

    .line 63
    :catch_ba
    move-exception v1

    goto :goto_56
.end method
