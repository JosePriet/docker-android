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
    .line 20
    :try_start_0
    sget-object v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v1, v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v1, v1, Lfr/testudo/spacecorsair/game/Game;->playerCurrentShipInventory:Lfr/testudo/spacecorsair/business/player/Inventory;

    .line 21
    if-eqz v1, :cond_4b

    .line 22
    const-class v2, Lfr/testudo/spacecorsair/business/player/Inventory;

    const-string v3, "content"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 23
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 24
    invoke-virtual {v2, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    .line 25
    if-eqz v1, :cond_4b

    .line 26
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 27
    :cond_24
    :goto_24
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4b

    .line 28
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 29
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    .line 30
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_46

    if-eqz v2, :cond_46

    move-object v0, v2

    check-cast v0, Lfr/testudo/spacecorsair/business/loot/SpaceObject;

    move-object v1, v0

    invoke-virtual {v1}, Lfr/testudo/spacecorsair/business/loot/SpaceObject;->getSpaceObjectType()Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    move-result-object v1

    if-nez v1, :cond_24

    .line 31
    :cond_46
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V
    :try_end_49
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_49} :catch_4a

    goto :goto_24

    .line 36
    :catch_4a
    move-exception v1

    .line 40
    :cond_4b
    :try_start_4b
    sget-object v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v1, v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v1, v1, Lfr/testudo/spacecorsair/game/Game;->playerInfo:Lfr/testudo/spacecorsair/business/player/PlayerInfo;

    .line 41
    if-nez v1, :cond_54

    .line 65
    :cond_53
    :goto_53
    return-void

    .line 42
    :cond_54
    iget-object v2, v1, Lfr/testudo/spacecorsair/business/player/PlayerInfo;->playerGear:Lfr/testudo/spacecorsair/business/player/PlayerGear;

    .line 43
    if-eqz v2, :cond_88

    .line 44
    iget-object v3, v2, Lfr/testudo/spacecorsair/business/player/PlayerGear;->shield:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    if-nez v3, :cond_60

    sget-object v3, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->basicShieldLevel0:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    iput-object v3, v2, Lfr/testudo/spacecorsair/business/player/PlayerGear;->shield:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    .line 45
    :cond_60
    iget-object v3, v2, Lfr/testudo/spacecorsair/business/player/PlayerGear;->laser:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    if-nez v3, :cond_68

    sget-object v3, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->standardLaserLevel0:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    iput-object v3, v2, Lfr/testudo/spacecorsair/business/player/PlayerGear;->laser:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    .line 46
    :cond_68
    iget-object v3, v2, Lfr/testudo/spacecorsair/business/player/PlayerGear;->missile:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    if-nez v3, :cond_70

    sget-object v3, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->noMissileMod:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    iput-object v3, v2, Lfr/testudo/spacecorsair/business/player/PlayerGear;->missile:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    .line 47
    :cond_70
    iget-object v3, v2, Lfr/testudo/spacecorsair/business/player/PlayerGear;->booster:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    if-nez v3, :cond_78

    sget-object v3, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->nopBooster:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    iput-object v3, v2, Lfr/testudo/spacecorsair/business/player/PlayerGear;->booster:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    .line 48
    :cond_78
    iget-object v3, v2, Lfr/testudo/spacecorsair/business/player/PlayerGear;->hyperdriveEngine:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    if-nez v3, :cond_80

    sget-object v3, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->nopHyperdriveEngine:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    iput-object v3, v2, Lfr/testudo/spacecorsair/business/player/PlayerGear;->hyperdriveEngine:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    .line 49
    :cond_80
    iget-object v3, v2, Lfr/testudo/spacecorsair/business/player/PlayerGear;->playerShip:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    if-nez v3, :cond_88

    sget-object v3, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->defaultPlayerShip:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    iput-object v3, v2, Lfr/testudo/spacecorsair/business/player/PlayerGear;->playerShip:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    .line 51
    :cond_88
    iget-object v3, v1, Lfr/testudo/spacecorsair/business/player/PlayerInfo;->availShips:Ljava/util/List;

    if-eqz v3, :cond_53

    .line 52
    :cond_8c
    iget-object v3, v1, Lfr/testudo/spacecorsair/business/player/PlayerInfo;->availShips:Ljava/util/List;

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8c

    .line 55
    iget-object v3, v1, Lfr/testudo/spacecorsair/business/player/PlayerInfo;->availShips:Ljava/util/List;

    sget-object v4, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->defaultPlayerShip:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    invoke-interface {v3, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_a6

    .line 56
    iget-object v3, v1, Lfr/testudo/spacecorsair/business/player/PlayerInfo;->availShips:Ljava/util/List;

    sget-object v4, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->defaultPlayerShip:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 58
    :cond_a6
    if-eqz v2, :cond_53

    iget-object v1, v1, Lfr/testudo/spacecorsair/business/player/PlayerInfo;->availShips:Ljava/util/List;

    iget-object v3, v2, Lfr/testudo/spacecorsair/business/player/PlayerGear;->playerShip:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    invoke-interface {v1, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_53

    .line 59
    sget-object v1, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->defaultPlayerShip:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    iput-object v1, v2, Lfr/testudo/spacecorsair/business/player/PlayerGear;->playerShip:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;
    :try_end_b6
    .catch Ljava/lang/Exception; {:try_start_4b .. :try_end_b6} :catch_b7

    goto :goto_53

    .line 62
    :catch_b7
    move-exception v1

    goto :goto_53
.end method
