.class public Lfr/testudo/spacecorsair/game/achievements/AchievementEventListener;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lfr/testudo/spacecorsair/game/achievements/AchievementEventListener$1;
    }
.end annotation


# static fields
.field static final DELIVERY_MISSIONS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 222
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lfr/testudo/spacecorsair/game/achievements/AchievementEventListener;->DELIVERY_MISSIONS:Ljava/util/List;

    .line 223
    sget-object v0, Lfr/testudo/spacecorsair/game/achievements/AchievementEventListener;->DELIVERY_MISSIONS:Ljava/util/List;

    const-string v1, "SPARTAN_DELIVERY_TRANSFORMER"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 224
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 331
    return-void
.end method

.method public static addDamageMadeByPlayer(I)V
    .registers 2

    .prologue
    .line 187
    sget-object v0, Lfr/testudo/spacecorsair/game/achievements/Achievement;->player10KDamage:Lfr/testudo/spacecorsair/game/achievements/Achievement;

    invoke-virtual {v0, p0}, Lfr/testudo/spacecorsair/game/achievements/Achievement;->add(I)V

    .line 188
    sget-object v0, Lfr/testudo/spacecorsair/game/achievements/Achievement;->player100KDamage:Lfr/testudo/spacecorsair/game/achievements/Achievement;

    invoke-virtual {v0, p0}, Lfr/testudo/spacecorsair/game/achievements/Achievement;->add(I)V

    .line 189
    sget-object v0, Lfr/testudo/spacecorsair/game/achievements/Achievement;->player1MDamage:Lfr/testudo/spacecorsair/game/achievements/Achievement;

    invoke-virtual {v0, p0}, Lfr/testudo/spacecorsair/game/achievements/Achievement;->add(I)V

    .line 190
    return-void
.end method

.method private static checkAllSetGold()V
    .registers 3

    .prologue
    .line 352
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/Game;->playerInfo:Lfr/testudo/spacecorsair/business/player/PlayerInfo;

    iget-object v0, v0, Lfr/testudo/spacecorsair/business/player/PlayerInfo;->playerGear:Lfr/testudo/spacecorsair/business/player/PlayerGear;

    .line 353
    iget-object v1, v0, Lfr/testudo/spacecorsair/business/player/PlayerGear;->laser:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    invoke-virtual {v1}, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->getRarety()Lfr/testudo/spacecorsair/business/loot/LootRarety;

    move-result-object v1

    sget-object v2, Lfr/testudo/spacecorsair/business/loot/LootRarety;->EXCEPTIONAL:Lfr/testudo/spacecorsair/business/loot/LootRarety;

    invoke-virtual {v1, v2}, Lfr/testudo/spacecorsair/business/loot/LootRarety;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_37

    iget-object v1, v0, Lfr/testudo/spacecorsair/business/player/PlayerGear;->missile:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    invoke-virtual {v1}, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->getRarety()Lfr/testudo/spacecorsair/business/loot/LootRarety;

    move-result-object v1

    sget-object v2, Lfr/testudo/spacecorsair/business/loot/LootRarety;->EXCEPTIONAL:Lfr/testudo/spacecorsair/business/loot/LootRarety;

    invoke-virtual {v1, v2}, Lfr/testudo/spacecorsair/business/loot/LootRarety;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_37

    iget-object v0, v0, Lfr/testudo/spacecorsair/business/player/PlayerGear;->shield:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->getRarety()Lfr/testudo/spacecorsair/business/loot/LootRarety;

    move-result-object v0

    sget-object v1, Lfr/testudo/spacecorsair/business/loot/LootRarety;->EXCEPTIONAL:Lfr/testudo/spacecorsair/business/loot/LootRarety;

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/business/loot/LootRarety;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_37

    .line 354
    sget-object v0, Lfr/testudo/spacecorsair/game/achievements/Achievement;->fullSetGold:Lfr/testudo/spacecorsair/game/achievements/Achievement;

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/game/achievements/Achievement;->setCompleted()V

    .line 357
    :cond_37
    return-void
.end method

.method private static checkAllSetLegendary()V
    .registers 3

    .prologue
    .line 342
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/Game;->playerInfo:Lfr/testudo/spacecorsair/business/player/PlayerInfo;

    iget-object v0, v0, Lfr/testudo/spacecorsair/business/player/PlayerInfo;->playerGear:Lfr/testudo/spacecorsair/business/player/PlayerGear;

    .line 343
    iget-object v1, v0, Lfr/testudo/spacecorsair/business/player/PlayerGear;->laser:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    invoke-virtual {v1}, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->getRarety()Lfr/testudo/spacecorsair/business/loot/LootRarety;

    move-result-object v1

    sget-object v2, Lfr/testudo/spacecorsair/business/loot/LootRarety;->LEGENDARY:Lfr/testudo/spacecorsair/business/loot/LootRarety;

    invoke-virtual {v1, v2}, Lfr/testudo/spacecorsair/business/loot/LootRarety;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_37

    iget-object v1, v0, Lfr/testudo/spacecorsair/business/player/PlayerGear;->missile:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    invoke-virtual {v1}, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->getRarety()Lfr/testudo/spacecorsair/business/loot/LootRarety;

    move-result-object v1

    sget-object v2, Lfr/testudo/spacecorsair/business/loot/LootRarety;->LEGENDARY:Lfr/testudo/spacecorsair/business/loot/LootRarety;

    invoke-virtual {v1, v2}, Lfr/testudo/spacecorsair/business/loot/LootRarety;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_37

    iget-object v0, v0, Lfr/testudo/spacecorsair/business/player/PlayerGear;->shield:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->getRarety()Lfr/testudo/spacecorsair/business/loot/LootRarety;

    move-result-object v0

    sget-object v1, Lfr/testudo/spacecorsair/business/loot/LootRarety;->LEGENDARY:Lfr/testudo/spacecorsair/business/loot/LootRarety;

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/business/loot/LootRarety;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_37

    .line 344
    sget-object v0, Lfr/testudo/spacecorsair/game/achievements/Achievement;->fullSetLegendary:Lfr/testudo/spacecorsair/game/achievements/Achievement;

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/game/achievements/Achievement;->setCompleted()V

    .line 347
    :cond_37
    return-void
.end method

.method public static checkLevelIsCleaned(Lfr/testudo/spacecorsair/game/levels/LevelId;Lfr/testudo/spacecorsair/game/achievements/Achievement;)V
    .registers 3

    .prologue
    .line 140
    iget-boolean v0, p1, Lfr/testudo/spacecorsair/game/achievements/Achievement;->done:Z

    if-nez v0, :cond_12

    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/Game;->currentLevel:Lfr/testudo/spacecorsair/game/levels/Level;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/levels/Level;->id:Lfr/testudo/spacecorsair/game/levels/LevelId;

    invoke-virtual {v0, p0}, Lfr/testudo/spacecorsair/game/levels/LevelId;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_13

    .line 148
    :cond_12
    :goto_12
    return-void

    .line 144
    :cond_13
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/Game;->currentLevel:Lfr/testudo/spacecorsair/game/levels/Level;

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/game/levels/Level;->isZoneEnnemyCleaned()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 145
    invoke-virtual {p1}, Lfr/testudo/spacecorsair/game/achievements/Achievement;->setCompleted()V

    goto :goto_12
.end method

.method private static checkStone250Achieve()V
    .registers 2

    .prologue
    .line 313
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/Game;->playerCurrentShipInventory:Lfr/testudo/spacecorsair/business/player/Inventory;

    sget-object v1, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->stone:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/business/player/Inventory;->getQuantityOf(Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)I

    move-result v0

    .line 314
    const/16 v1, 0xfa

    if-le v0, v1, :cond_15

    .line 315
    sget-object v0, Lfr/testudo/spacecorsair/game/achievements/Achievement;->stone_250_inventory:Lfr/testudo/spacecorsair/game/achievements/Achievement;

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/game/achievements/Achievement;->setCompleted()V

    .line 317
    :cond_15
    return-void
.end method

.method public static onAchievementUnlock(Lfr/testudo/spacecorsair/game/achievements/Achievement;)V
    .registers 2

    .prologue
    .line 275
    sget-object v0, Lfr/testudo/spacecorsair/game/achievements/Achievement;->unlock_10_achievements:Lfr/testudo/spacecorsair/game/achievements/Achievement;

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/game/achievements/Achievement;->addOne()V

    .line 276
    sget-object v0, Lfr/testudo/spacecorsair/game/achievements/Achievement;->unlock_100_achievements:Lfr/testudo/spacecorsair/game/achievements/Achievement;

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/game/achievements/Achievement;->addOne()V

    .line 278
    iget-boolean v0, p0, Lfr/testudo/spacecorsair/game/achievements/Achievement;->secret:Z

    if-eqz v0, :cond_13

    .line 279
    sget-object v0, Lfr/testudo/spacecorsair/game/achievements/Achievement;->unlock5Secret:Lfr/testudo/spacecorsair/game/achievements/Achievement;

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/game/achievements/Achievement;->addOne()V

    .line 281
    :cond_13
    return-void
.end method

.method public static onAsteroidImpact(F)V
    .registers 2

    .prologue
    .line 210
    sget-object v0, Lfr/testudo/spacecorsair/game/achievements/Achievement;->astroid_hit100:Lfr/testudo/spacecorsair/game/achievements/Achievement;

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/game/achievements/Achievement;->addOne()V

    .line 211
    sget-object v0, Lfr/testudo/spacecorsair/game/achievements/Achievement;->astroid_hit1000:Lfr/testudo/spacecorsair/game/achievements/Achievement;

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/game/achievements/Achievement;->addOne()V

    .line 212
    return-void
.end method

.method public static onBoosterConsumeShield(I)V
    .registers 2

    .prologue
    .line 426
    sget-object v0, Lfr/testudo/spacecorsair/game/achievements/Achievement;->booster100K:Lfr/testudo/spacecorsair/game/achievements/Achievement;

    invoke-virtual {v0, p0}, Lfr/testudo/spacecorsair/game/achievements/Achievement;->add(I)V

    .line 427
    sget-object v0, Lfr/testudo/spacecorsair/game/achievements/Achievement;->booster1M:Lfr/testudo/spacecorsair/game/achievements/Achievement;

    invoke-virtual {v0, p0}, Lfr/testudo/spacecorsair/game/achievements/Achievement;->add(I)V

    .line 428
    return-void
.end method

.method public static onBuyNewShip(Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)V
    .registers 2

    .prologue
    .line 469
    sget-object v0, Lfr/testudo/spacecorsair/game/achievements/Achievement;->buyNewShip:Lfr/testudo/spacecorsair/game/achievements/Achievement;

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/game/achievements/Achievement;->setCompleted()V

    .line 470
    return-void
.end method

.method public static onDeliveryMissionCompleted()V
    .registers 1

    .prologue
    .line 461
    sget-object v0, Lfr/testudo/spacecorsair/game/achievements/Achievement;->spaceDelivery5:Lfr/testudo/spacecorsair/game/achievements/Achievement;

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/game/achievements/Achievement;->addOne()V

    .line 462
    return-void
.end method

.method public static onDevKilledInMulti()V
    .registers 1

    .prologue
    .line 473
    sget-object v0, Lfr/testudo/spacecorsair/game/achievements/Achievement;->killTheDev:Lfr/testudo/spacecorsair/game/achievements/Achievement;

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/game/achievements/Achievement;->setCompleted()V

    .line 474
    return-void
.end method

.method public static onElementDestroyedByPlayer(Lfr/testudo/spacecorsair/business/Element;)V
    .registers 3

    .prologue
    .line 55
    instance-of v0, p0, Lfr/testudo/spacecorsair/business/world/Asteroid;

    if-eqz v0, :cond_e

    .line 56
    sget-object v0, Lfr/testudo/spacecorsair/game/achievements/Achievement;->destroy_100_asteroid:Lfr/testudo/spacecorsair/game/achievements/Achievement;

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/game/achievements/Achievement;->addOne()V

    .line 57
    sget-object v0, Lfr/testudo/spacecorsair/game/achievements/Achievement;->destroy_1000_asteroid:Lfr/testudo/spacecorsair/game/achievements/Achievement;

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/game/achievements/Achievement;->addOne()V

    .line 60
    :cond_e
    instance-of v0, p0, Lfr/testudo/spacecorsair/business/world/GoldAsteroid;

    if-nez v0, :cond_16

    instance-of v0, p0, Lfr/testudo/spacecorsair/business/world/BigGoldAsteroid;

    if-eqz v0, :cond_1b

    .line 61
    :cond_16
    sget-object v0, Lfr/testudo/spacecorsair/game/achievements/Achievement;->destroy50AsteGold:Lfr/testudo/spacecorsair/game/achievements/Achievement;

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/game/achievements/Achievement;->addOne()V

    .line 64
    :cond_1b
    instance-of v0, p0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    if-eqz v0, :cond_e2

    .line 65
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->levelProperties:Lfr/testudo/spacecorsair/game/levels/LevelsGlobalProperties;

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/game/levels/LevelsGlobalProperties;->checkFirstEnnemyDestroyed()V

    .line 66
    sget-object v0, Lfr/testudo/spacecorsair/game/achievements/Achievement;->kill_100_ennemies:Lfr/testudo/spacecorsair/game/achievements/Achievement;

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/game/achievements/Achievement;->addOne()V

    .line 67
    sget-object v0, Lfr/testudo/spacecorsair/game/achievements/Achievement;->kill_1000_ennemies:Lfr/testudo/spacecorsair/game/achievements/Achievement;

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/game/achievements/Achievement;->addOne()V

    .line 68
    sget-object v0, Lfr/testudo/spacecorsair/game/achievements/Achievement;->kill_10000_ennemies:Lfr/testudo/spacecorsair/game/achievements/Achievement;

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/game/achievements/Achievement;->addOne()V

    .line 69
    sget-object v0, Lfr/testudo/spacecorsair/game/achievements/Achievement;->kill_100000_ennemies:Lfr/testudo/spacecorsair/game/achievements/Achievement;

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/game/achievements/Achievement;->addOne()V

    move-object v0, p0

    .line 71
    check-cast v0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    iget-boolean v0, v0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->elite:Z

    if-eqz v0, :cond_4b

    .line 72
    sget-object v0, Lfr/testudo/spacecorsair/game/achievements/Achievement;->eliteKiller:Lfr/testudo/spacecorsair/game/achievements/Achievement;

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/game/achievements/Achievement;->setCompleted()V

    .line 73
    sget-object v0, Lfr/testudo/spacecorsair/game/achievements/Achievement;->eliteKiller20:Lfr/testudo/spacecorsair/game/achievements/Achievement;

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/game/achievements/Achievement;->addOne()V

    .line 76
    :cond_4b
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->config:Lfr/testudo/spacecorsair/game/Config;

    iget-boolean v0, v0, Lfr/testudo/spacecorsair/game/Config;->hideHud:Z

    if-eqz v0, :cond_58

    .line 77
    sget-object v0, Lfr/testudo/spacecorsair/game/achievements/Achievement;->playWithoutHud:Lfr/testudo/spacecorsair/game/achievements/Achievement;

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/game/achievements/Achievement;->addOne()V

    .line 81
    :cond_58
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->playerShip:Lfr/testudo/spacecorsair/business/player/PlayerShip;

    iget-boolean v0, v0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->removed:Z

    if-eqz v0, :cond_65

    .line 82
    sget-object v0, Lfr/testudo/spacecorsair/game/achievements/Achievement;->testament:Lfr/testudo/spacecorsair/game/achievements/Achievement;

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/game/achievements/Achievement;->setCompleted()V

    .line 85
    :cond_65
    iget v0, p0, Lfr/testudo/spacecorsair/business/Element;->level:I

    add-int/lit8 v0, v0, 0xa

    invoke-static {}, Lfr/testudo/spacecorsair/business/player/PlayerShip;->instance()Lfr/testudo/spacecorsair/business/player/PlayerShip;

    move-result-object v1

    iget v1, v1, Lfr/testudo/spacecorsair/business/player/PlayerShip;->level:I

    if-ge v0, v1, :cond_76

    .line 86
    sget-object v0, Lfr/testudo/spacecorsair/game/achievements/Achievement;->goliath:Lfr/testudo/spacecorsair/game/achievements/Achievement;

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/game/achievements/Achievement;->addOne()V

    .line 89
    :cond_76
    iget v0, p0, Lfr/testudo/spacecorsair/business/Element;->level:I

    add-int/lit8 v0, v0, -0x5

    invoke-static {}, Lfr/testudo/spacecorsair/business/player/PlayerShip;->instance()Lfr/testudo/spacecorsair/business/player/PlayerShip;

    move-result-object v1

    iget v1, v1, Lfr/testudo/spacecorsair/business/player/PlayerShip;->level:I

    if-le v0, v1, :cond_87

    .line 90
    sget-object v0, Lfr/testudo/spacecorsair/game/achievements/Achievement;->david:Lfr/testudo/spacecorsair/game/achievements/Achievement;

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/game/achievements/Achievement;->setCompleted()V

    .line 93
    :cond_87
    instance-of v0, p0, Lfr/testudo/spacecorsair/business/ennemis/Albatros;

    if-eqz v0, :cond_9a

    .line 94
    sget-object v0, Lfr/testudo/spacecorsair/game/achievements/Achievement;->kill_an_albatros:Lfr/testudo/spacecorsair/game/achievements/Achievement;

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/game/achievements/Achievement;->setCompleted()V

    .line 95
    sget-object v0, Lfr/testudo/spacecorsair/game/achievements/Achievement;->kill_20_albatros:Lfr/testudo/spacecorsair/game/achievements/Achievement;

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/game/achievements/Achievement;->addOne()V

    .line 96
    sget-object v0, Lfr/testudo/spacecorsair/game/achievements/Achievement;->kill_100_albatros:Lfr/testudo/spacecorsair/game/achievements/Achievement;

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/game/achievements/Achievement;->addOne()V

    .line 99
    :cond_9a
    instance-of v0, p0, Lfr/testudo/spacecorsair/business/ennemis/AlienEnemy;

    if-eqz v0, :cond_b1

    .line 100
    sget-object v0, Lfr/testudo/spacecorsair/game/achievements/Achievement;->killAnAlien:Lfr/testudo/spacecorsair/game/achievements/Achievement;

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/game/achievements/Achievement;->setCompleted()V

    .line 101
    sget-object v0, Lfr/testudo/spacecorsair/game/achievements/Achievement;->kill100Aliens:Lfr/testudo/spacecorsair/game/achievements/Achievement;

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/game/achievements/Achievement;->addOne()V

    .line 102
    instance-of v0, p0, Lfr/testudo/spacecorsair/business/ennemis/AlienBlatte;

    if-eqz v0, :cond_b1

    .line 103
    sget-object v0, Lfr/testudo/spacecorsair/game/achievements/Achievement;->killAnAlienMotherShip:Lfr/testudo/spacecorsair/game/achievements/Achievement;

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/game/achievements/Achievement;->setCompleted()V

    .line 108
    :cond_b1
    sget-object v0, Lfr/testudo/spacecorsair/game/levels/LevelId;->PLANCK_PRIDE:Lfr/testudo/spacecorsair/game/levels/LevelId;

    sget-object v1, Lfr/testudo/spacecorsair/game/achievements/Achievement;->clean_planck_pride:Lfr/testudo/spacecorsair/game/achievements/Achievement;

    invoke-static {v0, v1}, Lfr/testudo/spacecorsair/game/achievements/AchievementEventListener;->checkLevelIsCleaned(Lfr/testudo/spacecorsair/game/levels/LevelId;Lfr/testudo/spacecorsair/game/achievements/Achievement;)V

    .line 109
    sget-object v0, Lfr/testudo/spacecorsair/game/levels/LevelId;->THOR_PASSING:Lfr/testudo/spacecorsair/game/levels/LevelId;

    sget-object v1, Lfr/testudo/spacecorsair/game/achievements/Achievement;->clean_thorPassing:Lfr/testudo/spacecorsair/game/achievements/Achievement;

    invoke-static {v0, v1}, Lfr/testudo/spacecorsair/game/achievements/AchievementEventListener;->checkLevelIsCleaned(Lfr/testudo/spacecorsair/game/levels/LevelId;Lfr/testudo/spacecorsair/game/achievements/Achievement;)V

    .line 110
    sget-object v0, Lfr/testudo/spacecorsair/game/levels/LevelId;->HUGO_WISDOM:Lfr/testudo/spacecorsair/game/levels/LevelId;

    sget-object v1, Lfr/testudo/spacecorsair/game/achievements/Achievement;->clean_hugoWisdom:Lfr/testudo/spacecorsair/game/achievements/Achievement;

    invoke-static {v0, v1}, Lfr/testudo/spacecorsair/game/achievements/AchievementEventListener;->checkLevelIsCleaned(Lfr/testudo/spacecorsair/game/levels/LevelId;Lfr/testudo/spacecorsair/game/achievements/Achievement;)V

    .line 111
    sget-object v0, Lfr/testudo/spacecorsair/game/levels/LevelId;->PIRATE_BAY:Lfr/testudo/spacecorsair/game/levels/LevelId;

    sget-object v1, Lfr/testudo/spacecorsair/game/achievements/Achievement;->clean_pirateBay:Lfr/testudo/spacecorsair/game/achievements/Achievement;

    invoke-static {v0, v1}, Lfr/testudo/spacecorsair/game/achievements/AchievementEventListener;->checkLevelIsCleaned(Lfr/testudo/spacecorsair/game/levels/LevelId;Lfr/testudo/spacecorsair/game/achievements/Achievement;)V

    .line 112
    sget-object v0, Lfr/testudo/spacecorsair/game/levels/LevelId;->HERMES:Lfr/testudo/spacecorsair/game/levels/LevelId;

    sget-object v1, Lfr/testudo/spacecorsair/game/achievements/Achievement;->clean_hermes:Lfr/testudo/spacecorsair/game/achievements/Achievement;

    invoke-static {v0, v1}, Lfr/testudo/spacecorsair/game/achievements/AchievementEventListener;->checkLevelIsCleaned(Lfr/testudo/spacecorsair/game/levels/LevelId;Lfr/testudo/spacecorsair/game/achievements/Achievement;)V

    .line 113
    sget-object v0, Lfr/testudo/spacecorsair/game/levels/LevelId;->THE_WAVE:Lfr/testudo/spacecorsair/game/levels/LevelId;

    sget-object v1, Lfr/testudo/spacecorsair/game/achievements/Achievement;->clean_the_wave:Lfr/testudo/spacecorsair/game/achievements/Achievement;

    invoke-static {v0, v1}, Lfr/testudo/spacecorsair/game/achievements/AchievementEventListener;->checkLevelIsCleaned(Lfr/testudo/spacecorsair/game/levels/LevelId;Lfr/testudo/spacecorsair/game/achievements/Achievement;)V

    .line 114
    sget-object v0, Lfr/testudo/spacecorsair/game/levels/LevelId;->ORION:Lfr/testudo/spacecorsair/game/levels/LevelId;

    sget-object v1, Lfr/testudo/spacecorsair/game/achievements/Achievement;->clean_orion:Lfr/testudo/spacecorsair/game/achievements/Achievement;

    invoke-static {v0, v1}, Lfr/testudo/spacecorsair/game/achievements/AchievementEventListener;->checkLevelIsCleaned(Lfr/testudo/spacecorsair/game/levels/LevelId;Lfr/testudo/spacecorsair/game/achievements/Achievement;)V

    .line 118
    :cond_e2
    instance-of v0, p0, Lfr/testudo/spacecorsair/business/world/station/Station;

    if-eqz v0, :cond_eb

    .line 119
    sget-object v0, Lfr/testudo/spacecorsair/game/achievements/Achievement;->destroy10Stations:Lfr/testudo/spacecorsair/game/achievements/Achievement;

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/game/achievements/Achievement;->addOne()V

    .line 122
    :cond_eb
    instance-of v0, p0, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;

    if-eqz v0, :cond_f4

    .line 123
    sget-object v0, Lfr/testudo/spacecorsair/game/achievements/Achievement;->destroy50Civils:Lfr/testudo/spacecorsair/game/achievements/Achievement;

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/game/achievements/Achievement;->addOne()V

    .line 127
    :cond_f4
    instance-of v0, p0, Lfr/testudo/spacecorsair/business/projectiles/Missile;

    if-eqz v0, :cond_102

    .line 128
    sget-object v0, Lfr/testudo/spacecorsair/game/achievements/Achievement;->destroy_10_missiles:Lfr/testudo/spacecorsair/game/achievements/Achievement;

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/game/achievements/Achievement;->addOne()V

    .line 129
    sget-object v0, Lfr/testudo/spacecorsair/game/achievements/Achievement;->destroy_100_missiles:Lfr/testudo/spacecorsair/game/achievements/Achievement;

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/game/achievements/Achievement;->addOne()V

    .line 132
    :cond_102
    instance-of v0, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;

    if-eqz v0, :cond_10b

    .line 133
    sget-object v0, Lfr/testudo/spacecorsair/game/achievements/Achievement;->boomerang:Lfr/testudo/spacecorsair/game/achievements/Achievement;

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/game/achievements/Achievement;->setCompleted()V

    .line 136
    :cond_10b
    return-void
.end method

.method public static onEnnemisOneShotByPlayer(Lfr/testudo/spacecorsair/business/ennemis/Ennemis;)V
    .registers 2

    .prologue
    .line 361
    sget-object v0, Lfr/testudo/spacecorsair/game/achievements/Achievement;->oneShoot50Ennemies:Lfr/testudo/spacecorsair/game/achievements/Achievement;

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/game/achievements/Achievement;->addOne()V

    .line 362
    return-void
.end method

.method public static onHullRaiserKillEnnemy()V
    .registers 1

    .prologue
    .line 45
    sget-object v0, Lfr/testudo/spacecorsair/game/achievements/Achievement;->knockknock:Lfr/testudo/spacecorsair/game/achievements/Achievement;

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/game/achievements/Achievement;->addOne()V

    .line 46
    return-void
.end method

.method public static onHyperDriveJump(I)V
    .registers 2

    .prologue
    .line 441
    sget-object v0, Lfr/testudo/spacecorsair/game/achievements/Achievement;->jump20Times:Lfr/testudo/spacecorsair/game/achievements/Achievement;

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/game/achievements/Achievement;->addOne()V

    .line 442
    const/16 v0, 0xa

    if-lt p0, v0, :cond_e

    .line 443
    sget-object v0, Lfr/testudo/spacecorsair/game/achievements/Achievement;->jump10SectorsOnce:Lfr/testudo/spacecorsair/game/achievements/Achievement;

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/game/achievements/Achievement;->setCompleted()V

    .line 445
    :cond_e
    return-void
.end method

.method public static onInAppCreditBought()V
    .registers 1

    .prologue
    .line 449
    sget-object v0, Lfr/testudo/spacecorsair/game/achievements/Achievement;->buyInApp:Lfr/testudo/spacecorsair/game/achievements/Achievement;

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/game/achievements/Achievement;->setCompleted()V

    .line 450
    return-void
.end method

.method public static onItemToTrash(Lfr/testudo/spacecorsair/business/loot/SpaceObject;)V
    .registers 3

    .prologue
    .line 265
    sget-object v0, Lfr/testudo/spacecorsair/game/achievements/Achievement;->destroy_10_items:Lfr/testudo/spacecorsair/game/achievements/Achievement;

    invoke-virtual {p0}, Lfr/testudo/spacecorsair/business/loot/SpaceObject;->getQuantity()I

    move-result v1

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/game/achievements/Achievement;->add(I)V

    .line 266
    sget-object v0, Lfr/testudo/spacecorsair/game/achievements/Achievement;->destroy_100_items:Lfr/testudo/spacecorsair/game/achievements/Achievement;

    invoke-virtual {p0}, Lfr/testudo/spacecorsair/business/loot/SpaceObject;->getQuantity()I

    move-result v1

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/game/achievements/Achievement;->add(I)V

    .line 267
    sget-object v0, Lfr/testudo/spacecorsair/game/achievements/Achievement;->destroy_1000_items:Lfr/testudo/spacecorsair/game/achievements/Achievement;

    invoke-virtual {p0}, Lfr/testudo/spacecorsair/business/loot/SpaceObject;->getQuantity()I

    move-result v1

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/game/achievements/Achievement;->add(I)V

    .line 268
    invoke-virtual {p0}, Lfr/testudo/spacecorsair/business/loot/SpaceObject;->getSpaceObjectType()Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    move-result-object v0

    sget-object v1, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->diamond:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 269
    sget-object v0, Lfr/testudo/spacecorsair/game/achievements/Achievement;->destroyDiamond:Lfr/testudo/spacecorsair/game/achievements/Achievement;

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/game/achievements/Achievement;->setCompleted()V

    .line 271
    :cond_2c
    return-void
.end method

.method public static onKilledByAsteroid(F)V
    .registers 2

    .prologue
    .line 216
    sget-object v0, Lfr/testudo/spacecorsair/game/achievements/Achievement;->astroid_crash:Lfr/testudo/spacecorsair/game/achievements/Achievement;

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/game/achievements/Achievement;->addOne()V

    .line 217
    return-void
.end method

.method public static onKilledByTheDevInMulti()V
    .registers 1

    .prologue
    .line 477
    sget-object v0, Lfr/testudo/spacecorsair/game/achievements/Achievement;->killByTheDev:Lfr/testudo/spacecorsair/game/achievements/Achievement;

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/game/achievements/Achievement;->setCompleted()V

    .line 478
    return-void
.end method

.method public static onLevelUp(I)V
    .registers 2

    .prologue
    .line 301
    const/16 v0, 0xa

    if-ne p0, v0, :cond_9

    .line 302
    sget-object v0, Lfr/testudo/spacecorsair/game/achievements/Achievement;->level10:Lfr/testudo/spacecorsair/game/achievements/Achievement;

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/game/achievements/Achievement;->setCompleted()V

    .line 304
    :cond_9
    return-void
.end method

.method public static onLevelVisited(Lfr/testudo/spacecorsair/game/levels/LevelId;)V
    .registers 2

    .prologue
    .line 431
    sget-object v0, Lfr/testudo/spacecorsair/game/achievements/Achievement;->explore_10_sectors:Lfr/testudo/spacecorsair/game/achievements/Achievement;

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/game/achievements/Achievement;->addOne()V

    .line 432
    sget-object v0, Lfr/testudo/spacecorsair/game/levels/LevelId;->TWIN_STAR:Lfr/testudo/spacecorsair/game/levels/LevelId;

    invoke-virtual {p0, v0}, Lfr/testudo/spacecorsair/game/levels/LevelId;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 433
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->levelProperties:Lfr/testudo/spacecorsair/game/levels/LevelsGlobalProperties;

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/game/levels/LevelsGlobalProperties;->checkKnowBooster()V

    .line 435
    :cond_14
    sget-object v0, Lfr/testudo/spacecorsair/game/levels/LevelId;->SPARTAN_HQ:Lfr/testudo/spacecorsair/game/levels/LevelId;

    invoke-virtual {p0, v0}, Lfr/testudo/spacecorsair/game/levels/LevelId;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_23

    .line 436
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->levelProperties:Lfr/testudo/spacecorsair/game/levels/LevelsGlobalProperties;

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/game/levels/LevelsGlobalProperties;->ensureSeeSpartanHQWelecomeMessage()V

    .line 438
    :cond_23
    return-void
.end method

.method public static onLoot(Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)V
    .registers 2

    .prologue
    .line 194
    sget-object v0, Lfr/testudo/spacecorsair/game/achievements/Achievement;->loot_1000:Lfr/testudo/spacecorsair/game/achievements/Achievement;

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/game/achievements/Achievement;->addOne()V

    .line 195
    sget-object v0, Lfr/testudo/spacecorsair/game/achievements/Achievement;->loot_9001:Lfr/testudo/spacecorsair/game/achievements/Achievement;

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/game/achievements/Achievement;->addOne()V

    .line 197
    invoke-static {}, Lfr/testudo/spacecorsair/game/achievements/AchievementEventListener;->checkStone250Achieve()V

    .line 198
    invoke-static {p0}, Lfr/testudo/spacecorsair/utils/Analytics;->onObjectLooted(Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)V

    .line 199
    return-void
.end method

.method public static onMissileBlastKillEnnemies(I)V
    .registers 2

    .prologue
    .line 174
    const/4 v0, 0x5

    if-lt p0, v0, :cond_8

    .line 175
    sget-object v0, Lfr/testudo/spacecorsair/game/achievements/Achievement;->missileKill5Once:Lfr/testudo/spacecorsair/game/achievements/Achievement;

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/game/achievements/Achievement;->setCompleted()V

    .line 179
    :cond_8
    return-void
.end method

.method public static onMissionCompleted(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 228
    const-string v0, "GENESIS_TUTORIAL"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 229
    sget-object v0, Lfr/testudo/spacecorsair/game/achievements/Achievement;->finishTutorial:Lfr/testudo/spacecorsair/game/achievements/Achievement;

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/game/achievements/Achievement;->setCompleted()V

    .line 232
    :cond_d
    sget-object v0, Lfr/testudo/spacecorsair/business/mission/VentoHighMissions;->VENTOHIGH_SCAN_CIVILS:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 233
    sget-object v0, Lfr/testudo/spacecorsair/game/achievements/Achievement;->policeVento:Lfr/testudo/spacecorsair/game/achievements/Achievement;

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/game/achievements/Achievement;->setCompleted()V

    .line 236
    :cond_1a
    const-string v0, "GENESIS_TUER_CHEF_PILLARD"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_27

    .line 237
    sget-object v0, Lfr/testudo/spacecorsair/game/achievements/Achievement;->genesis_defender:Lfr/testudo/spacecorsair/game/achievements/Achievement;

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/game/achievements/Achievement;->setCompleted()V

    .line 239
    :cond_27
    sget-object v0, Lfr/testudo/spacecorsair/game/achievements/Achievement;->finish_10_mission:Lfr/testudo/spacecorsair/game/achievements/Achievement;

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/game/achievements/Achievement;->addOne()V

    .line 241
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->missionRepository:Lfr/testudo/spacecorsair/business/mission/MissionRepository;

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/business/mission/MissionRepository;->isAllGenesisMissionFinished()Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 242
    sget-object v0, Lfr/testudo/spacecorsair/game/achievements/Achievement;->finishAllMissionsGenesis:Lfr/testudo/spacecorsair/game/achievements/Achievement;

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/game/achievements/Achievement;->setCompleted()V

    .line 245
    :cond_3b
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->missionRepository:Lfr/testudo/spacecorsair/business/mission/MissionRepository;

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/business/mission/MissionRepository;->isAllVentohighMissionFinished()Z

    move-result v0

    if-eqz v0, :cond_4a

    .line 246
    sget-object v0, Lfr/testudo/spacecorsair/game/achievements/Achievement;->finishAllMissionVentohigh:Lfr/testudo/spacecorsair/game/achievements/Achievement;

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/game/achievements/Achievement;->setCompleted()V

    .line 249
    :cond_4a
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->missionRepository:Lfr/testudo/spacecorsair/business/mission/MissionRepository;

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/business/mission/MissionRepository;->isAllSpartanMissionFinished()Z

    move-result v0

    if-eqz v0, :cond_59

    .line 250
    sget-object v0, Lfr/testudo/spacecorsair/game/achievements/Achievement;->finishAllMissionsSpartan:Lfr/testudo/spacecorsair/game/achievements/Achievement;

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/game/achievements/Achievement;->setCompleted()V

    .line 253
    :cond_59
    sget-object v0, Lfr/testudo/spacecorsair/game/achievements/AchievementEventListener;->DELIVERY_MISSIONS:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_64

    .line 254
    invoke-static {}, Lfr/testudo/spacecorsair/game/achievements/AchievementEventListener;->onDeliveryMissionCompleted()V

    .line 260
    :cond_64
    return-void
.end method

.method public static onMobileShopCalled()V
    .registers 1

    .prologue
    .line 465
    sget-object v0, Lfr/testudo/spacecorsair/game/achievements/Achievement;->useThreeMobileShopTicket:Lfr/testudo/spacecorsair/game/achievements/Achievement;

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/game/achievements/Achievement;->addOne()V

    .line 466
    return-void
.end method

.method public static onMultiplayerBattleWon()V
    .registers 1

    .prologue
    .line 486
    sget-object v0, Lfr/testudo/spacecorsair/game/achievements/Achievement;->winMultiplayer:Lfr/testudo/spacecorsair/game/achievements/Achievement;

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/game/achievements/Achievement;->setCompleted()V

    .line 487
    return-void
.end method

.method public static onMultiplayerKill()V
    .registers 1

    .prologue
    .line 481
    sget-object v0, Lfr/testudo/spacecorsair/game/achievements/Achievement;->killMultiPlayer:Lfr/testudo/spacecorsair/game/achievements/Achievement;

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/game/achievements/Achievement;->setCompleted()V

    .line 482
    sget-object v0, Lfr/testudo/spacecorsair/game/achievements/Achievement;->kill10Multiplayer:Lfr/testudo/spacecorsair/game/achievements/Achievement;

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/game/achievements/Achievement;->addOne()V

    .line 483
    sget-object v0, Lfr/testudo/spacecorsair/game/achievements/Achievement;->kill100Multiplayer:Lfr/testudo/spacecorsair/game/achievements/Achievement;

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/game/achievements/Achievement;->addOne()V

    .line 484
    return-void
.end method

.method public static onPayerUseSpaceGate()V
    .registers 4

    .prologue
    .line 379
    sget-object v0, Lfr/testudo/spacecorsair/game/achievements/Achievement;->getThrough500gates:Lfr/testudo/spacecorsair/game/achievements/Achievement;

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/game/achievements/Achievement;->addOne()V

    .line 380
    sget-object v0, Lfr/testudo/spacecorsair/game/achievements/Achievement;->getThrough500gates:Lfr/testudo/spacecorsair/game/achievements/Achievement;

    iget-wide v0, v0, Lfr/testudo/spacecorsair/game/achievements/Achievement;->value:J

    const-wide/16 v2, 0x23

    cmp-long v0, v0, v2

    if-lez v0, :cond_28

    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/Game;->playerInfo:Lfr/testudo/spacecorsair/business/player/PlayerInfo;

    iget-object v0, v0, Lfr/testudo/spacecorsair/business/player/PlayerInfo;->playerGear:Lfr/testudo/spacecorsair/business/player/PlayerGear;

    iget-object v0, v0, Lfr/testudo/spacecorsair/business/player/PlayerGear;->hyperdriveEngine:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    sget-object v1, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->nopHyperdriveEngine:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_28

    .line 382
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->levelProperties:Lfr/testudo/spacecorsair/game/levels/LevelsGlobalProperties;

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/game/levels/LevelsGlobalProperties;->checkKnowJumpEngine()V

    .line 385
    :cond_28
    return-void
.end method

.method public static onPlayWithMoga()V
    .registers 1

    .prologue
    .line 40
    sget-object v0, Lfr/testudo/spacecorsair/game/achievements/Achievement;->playWithMoga:Lfr/testudo/spacecorsair/game/achievements/Achievement;

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/game/achievements/Achievement;->setCompleted()V

    .line 41
    return-void
.end method

.method public static onPlayerBuyStuff(Lfr/testudo/spacecorsair/business/loot/SpaceObject;)V
    .registers 5

    .prologue
    .line 151
    sget-object v0, Lfr/testudo/spacecorsair/game/achievements/Achievement;->buy20Items:Lfr/testudo/spacecorsair/game/achievements/Achievement;

    invoke-virtual {p0}, Lfr/testudo/spacecorsair/business/loot/SpaceObject;->getQuantity()I

    move-result v1

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/game/achievements/Achievement;->add(I)V

    .line 152
    sget-object v0, Lfr/testudo/spacecorsair/game/achievements/Achievement;->buy100Items:Lfr/testudo/spacecorsair/game/achievements/Achievement;

    invoke-virtual {p0}, Lfr/testudo/spacecorsair/business/loot/SpaceObject;->getQuantity()I

    move-result v1

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/game/achievements/Achievement;->add(I)V

    .line 153
    invoke-static {}, Lfr/testudo/spacecorsair/game/achievements/AchievementEventListener;->checkStone250Achieve()V

    .line 154
    invoke-virtual {p0}, Lfr/testudo/spacecorsair/business/loot/SpaceObject;->getUnitBuyPrice()I

    move-result v0

    int-to-long v0, v0

    sget-object v2, Lfr/testudo/spacecorsair/game/achievements/Achievement;->buyExpensive:Lfr/testudo/spacecorsair/game/achievements/Achievement;

    iget-wide v2, v2, Lfr/testudo/spacecorsair/game/achievements/Achievement;->thresold:J

    cmp-long v0, v0, v2

    if-ltz v0, :cond_27

    .line 155
    sget-object v0, Lfr/testudo/spacecorsair/game/achievements/Achievement;->buyExpensive:Lfr/testudo/spacecorsair/game/achievements/Achievement;

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/game/achievements/Achievement;->setCompleted()V

    .line 157
    :cond_27
    invoke-virtual {p0}, Lfr/testudo/spacecorsair/business/loot/SpaceObject;->getSpaceObjectType()Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    move-result-object v0

    invoke-static {v0}, Lfr/testudo/spacecorsair/utils/Analytics;->onObjectBought(Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)V

    .line 158
    return-void
.end method

.method public static onPlayerDead(I)V
    .registers 2

    .prologue
    .line 202
    sget-object v0, Lfr/testudo/spacecorsair/game/achievements/Achievement;->die_10_times:Lfr/testudo/spacecorsair/game/achievements/Achievement;

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/game/achievements/Achievement;->addOne()V

    .line 203
    sget-object v0, Lfr/testudo/spacecorsair/game/achievements/Achievement;->die_100_times:Lfr/testudo/spacecorsair/game/achievements/Achievement;

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/game/achievements/Achievement;->addOne()V

    .line 204
    sget-object v0, Lfr/testudo/spacecorsair/game/achievements/Achievement;->cumulate150KdeathPenalty:Lfr/testudo/spacecorsair/game/achievements/Achievement;

    invoke-virtual {v0, p0}, Lfr/testudo/spacecorsair/game/achievements/Achievement;->add(I)V

    .line 205
    sget-object v0, Lfr/testudo/spacecorsair/game/achievements/Achievement;->cumulate10KdeathPenalty:Lfr/testudo/spacecorsair/game/achievements/Achievement;

    invoke-virtual {v0, p0}, Lfr/testudo/spacecorsair/game/achievements/Achievement;->add(I)V

    .line 206
    return-void
.end method

.method public static onPlayerDock()V
    .registers 1

    .prologue
    .line 394
    sget-object v0, Lfr/testudo/spacecorsair/game/achievements/Achievement;->dock100Station:Lfr/testudo/spacecorsair/game/achievements/Achievement;

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/game/achievements/Achievement;->addOne()V

    .line 395
    return-void
.end method

.method public static onPlayerEarnMoney(I)V
    .registers 5

    .prologue
    .line 371
    sget-object v0, Lfr/testudo/spacecorsair/game/achievements/Achievement;->earn1MCredit:Lfr/testudo/spacecorsair/game/achievements/Achievement;

    invoke-virtual {v0, p0}, Lfr/testudo/spacecorsair/game/achievements/Achievement;->add(I)V

    .line 372
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/Game;->playerCurrentShipInventory:Lfr/testudo/spacecorsair/business/player/Inventory;

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/business/player/Inventory;->getCredit()J

    move-result-wide v0

    sget-object v2, Lfr/testudo/spacecorsair/game/achievements/Achievement;->have1MCredit:Lfr/testudo/spacecorsair/game/achievements/Achievement;

    iget-wide v2, v2, Lfr/testudo/spacecorsair/game/achievements/Achievement;->thresold:J

    cmp-long v0, v0, v2

    if-ltz v0, :cond_1c

    .line 373
    sget-object v0, Lfr/testudo/spacecorsair/game/achievements/Achievement;->have1MCredit:Lfr/testudo/spacecorsair/game/achievements/Achievement;

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/game/achievements/Achievement;->setCompleted()V

    .line 375
    :cond_1c
    return-void
.end method

.method public static onPlayerEnterCasino()V
    .registers 0

    .prologue
    .line 399
    return-void
.end method

.method public static onPlayerEquipGear(Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)V
    .registers 3

    .prologue
    .line 322
    sget-object v0, Lfr/testudo/spacecorsair/game/achievements/AchievementEventListener$1;->$SwitchMap$fr$testudo$spacecorsair$business$loot$LootRarety:[I

    invoke-virtual {p0}, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->getRarety()Lfr/testudo/spacecorsair/business/loot/LootRarety;

    move-result-object v1

    invoke-virtual {v1}, Lfr/testudo/spacecorsair/business/loot/LootRarety;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_22

    .line 338
    :goto_f
    return-void

    .line 325
    :pswitch_10
    sget-object v0, Lfr/testudo/spacecorsair/game/achievements/Achievement;->equipGoldItem:Lfr/testudo/spacecorsair/game/achievements/Achievement;

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/game/achievements/Achievement;->setCompleted()V

    .line 326
    invoke-static {}, Lfr/testudo/spacecorsair/game/achievements/AchievementEventListener;->checkAllSetGold()V

    goto :goto_f

    .line 329
    :pswitch_19
    sget-object v0, Lfr/testudo/spacecorsair/game/achievements/Achievement;->equipLegendaryItem:Lfr/testudo/spacecorsair/game/achievements/Achievement;

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/game/achievements/Achievement;->setCompleted()V

    .line 330
    invoke-static {}, Lfr/testudo/spacecorsair/game/achievements/AchievementEventListener;->checkAllSetLegendary()V

    goto :goto_f

    .line 322
    :pswitch_data_22
    .packed-switch 0x1
        :pswitch_10
        :pswitch_19
    .end packed-switch
.end method

.method public static onPlayerFarAwayFromCenterOfLevel()V
    .registers 1

    .prologue
    .line 389
    sget-object v0, Lfr/testudo/spacecorsair/game/achievements/Achievement;->getFarAway:Lfr/testudo/spacecorsair/game/achievements/Achievement;

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/game/achievements/Achievement;->setCompleted()V

    .line 390
    return-void
.end method

.method public static onPlayerFinishArena(II)V
    .registers 4

    .prologue
    .line 453
    sget-object v0, Lfr/testudo/spacecorsair/game/achievements/Achievement;->finishOneArena:Lfr/testudo/spacecorsair/game/achievements/Achievement;

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/game/achievements/Achievement;->setCompleted()V

    .line 454
    sub-int v0, p1, p0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_f

    .line 455
    sget-object v0, Lfr/testudo/spacecorsair/game/achievements/Achievement;->finishFiveArenaStraight:Lfr/testudo/spacecorsair/game/achievements/Achievement;

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/game/achievements/Achievement;->setCompleted()V

    .line 457
    :cond_f
    return-void
.end method

.method public static onPlayerHitByMissile()V
    .registers 1

    .prologue
    .line 412
    sget-object v0, Lfr/testudo/spacecorsair/game/achievements/Achievement;->getHit1000TimeByMissile:Lfr/testudo/spacecorsair/game/achievements/Achievement;

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/game/achievements/Achievement;->addOne()V

    .line 413
    return-void
.end method

.method public static onPlayerKilledBy(Lfr/testudo/spacecorsair/business/Element;)V
    .registers 2

    .prologue
    .line 285
    instance-of v0, p0, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;

    if-eqz v0, :cond_9

    .line 286
    sget-object v0, Lfr/testudo/spacecorsair/game/achievements/Achievement;->killed_by_civil:Lfr/testudo/spacecorsair/game/achievements/Achievement;

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/game/achievements/Achievement;->setCompleted()V

    .line 288
    :cond_9
    instance-of v0, p0, Lfr/testudo/spacecorsair/business/ennemis/FixedTourelle;

    if-nez v0, :cond_11

    instance-of v0, p0, Lfr/testudo/spacecorsair/business/ennemis/RocketTourelle;

    if-eqz v0, :cond_16

    .line 289
    :cond_11
    sget-object v0, Lfr/testudo/spacecorsair/game/achievements/Achievement;->killedBySentry10:Lfr/testudo/spacecorsair/game/achievements/Achievement;

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/game/achievements/Achievement;->addOne()V

    .line 292
    :cond_16
    instance-of v0, p0, Lfr/testudo/spacecorsair/business/world/Mine;

    if-eqz v0, :cond_1f

    .line 293
    sget-object v0, Lfr/testudo/spacecorsair/game/achievements/Achievement;->killedByMine:Lfr/testudo/spacecorsair/game/achievements/Achievement;

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/game/achievements/Achievement;->setCompleted()V

    .line 296
    :cond_1f
    return-void
.end method

.method public static onPlayerKilledByMissile()V
    .registers 1

    .prologue
    .line 416
    sget-object v0, Lfr/testudo/spacecorsair/game/achievements/Achievement;->getKilled100timesBymissile:Lfr/testudo/spacecorsair/game/achievements/Achievement;

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/game/achievements/Achievement;->addOne()V

    .line 418
    return-void
.end method

.method public static onPlayerMakeCriticalShoot()V
    .registers 1

    .prologue
    .line 49
    sget-object v0, Lfr/testudo/spacecorsair/game/achievements/Achievement;->critical1000:Lfr/testudo/spacecorsair/game/achievements/Achievement;

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/game/achievements/Achievement;->addOne()V

    .line 50
    return-void
.end method

.method public static onPlayerMissedLoot(Lfr/testudo/spacecorsair/business/loot/LootElement;)V
    .registers 3

    .prologue
    .line 402
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/loot/LootElement;->spaceObjectType:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->getRarety()Lfr/testudo/spacecorsair/business/loot/LootRarety;

    move-result-object v0

    sget-object v1, Lfr/testudo/spacecorsair/business/loot/LootRarety;->EXCEPTIONAL:Lfr/testudo/spacecorsair/business/loot/LootRarety;

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/business/loot/LootRarety;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 404
    sget-object v0, Lfr/testudo/spacecorsair/game/achievements/Achievement;->missGoldLoot:Lfr/testudo/spacecorsair/game/achievements/Achievement;

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/game/achievements/Achievement;->setCompleted()V

    .line 406
    :cond_13
    sget-object v0, Lfr/testudo/spacecorsair/game/achievements/Achievement;->miss500Loot:Lfr/testudo/spacecorsair/game/achievements/Achievement;

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/game/achievements/Achievement;->addOne()V

    .line 408
    return-void
.end method

.method public static onPlayerMissileHitSomething()V
    .registers 1

    .prologue
    .line 182
    sget-object v0, Lfr/testudo/spacecorsair/game/achievements/Achievement;->player_100_missiles_hit:Lfr/testudo/spacecorsair/game/achievements/Achievement;

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/game/achievements/Achievement;->addOne()V

    .line 184
    return-void
.end method

.method public static onPlayerMissileKillSomething(Lfr/testudo/spacecorsair/business/Element;)V
    .registers 2

    .prologue
    .line 169
    sget-object v0, Lfr/testudo/spacecorsair/game/achievements/Achievement;->kill500WithMissile:Lfr/testudo/spacecorsair/game/achievements/Achievement;

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/game/achievements/Achievement;->addOne()V

    .line 170
    return-void
.end method

.method public static onPlayerMissileShoot()V
    .registers 1

    .prologue
    .line 165
    sget-object v0, Lfr/testudo/spacecorsair/game/achievements/Achievement;->shoot_500_missiles:Lfr/testudo/spacecorsair/game/achievements/Achievement;

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/game/achievements/Achievement;->addOne()V

    .line 166
    return-void
.end method

.method public static onPlayerOneShoot()V
    .registers 1

    .prologue
    .line 366
    sget-object v0, Lfr/testudo/spacecorsair/game/achievements/Achievement;->getOneShoot:Lfr/testudo/spacecorsair/game/achievements/Achievement;

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/game/achievements/Achievement;->setCompleted()V

    .line 367
    return-void
.end method

.method public static onPlayerSellStuff(Lfr/testudo/spacecorsair/business/loot/SpaceObject;)V
    .registers 3

    .prologue
    .line 161
    sget-object v0, Lfr/testudo/spacecorsair/game/achievements/Achievement;->sell1000Items:Lfr/testudo/spacecorsair/game/achievements/Achievement;

    invoke-virtual {p0}, Lfr/testudo/spacecorsair/business/loot/SpaceObject;->getQuantity()I

    move-result v1

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/game/achievements/Achievement;->add(I)V

    .line 162
    return-void
.end method

.method public static onPlayerUseInstaRepair()V
    .registers 1

    .prologue
    .line 308
    sget-object v0, Lfr/testudo/spacecorsair/game/achievements/Achievement;->use25repairExpress:Lfr/testudo/spacecorsair/game/achievements/Achievement;

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/game/achievements/Achievement;->addOne()V

    .line 309
    return-void
.end method

.method public static onSendEmailToDev()V
    .registers 1

    .prologue
    .line 421
    sget-object v0, Lfr/testudo/spacecorsair/game/achievements/Achievement;->sendEmail:Lfr/testudo/spacecorsair/game/achievements/Achievement;

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/game/achievements/Achievement;->setCompleted()V

    .line 422
    return-void
.end method
