.class public Lfr/testudo/spacecorsair/business/player/Inventory;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private capacityInTon:I

.field private content:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;",
            "Lfr/testudo/spacecorsair/business/loot/SpaceObject;",
            ">;"
        }
    .end annotation
.end field

.field private credit:J

.field private transient dirty:Z

.field private inapCredit:J

.field private isPlayerInventory:Z


# direct methods
.method public constructor <init>(I)V
    .registers 6

    .prologue
    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    const/16 v0, 0x64

    iput v0, p0, Lfr/testudo/spacecorsair/business/player/Inventory;->capacityInTon:I

    .line 23
    iput-wide v2, p0, Lfr/testudo/spacecorsair/business/player/Inventory;->credit:J

    .line 24
    iput-wide v2, p0, Lfr/testudo/spacecorsair/business/player/Inventory;->inapCredit:J

    .line 25
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lfr/testudo/spacecorsair/business/player/Inventory;->content:Ljava/util/HashMap;

    .line 26
    iput-boolean v1, p0, Lfr/testudo/spacecorsair/business/player/Inventory;->dirty:Z

    .line 27
    iput-boolean v1, p0, Lfr/testudo/spacecorsair/business/player/Inventory;->isPlayerInventory:Z

    .line 30
    iput p1, p0, Lfr/testudo/spacecorsair/business/player/Inventory;->capacityInTon:I

    .line 31
    iput-wide v2, p0, Lfr/testudo/spacecorsair/business/player/Inventory;->credit:J

    .line 32
    iput-boolean v1, p0, Lfr/testudo/spacecorsair/business/player/Inventory;->isPlayerInventory:Z

    .line 33
    return-void
.end method

.method public static getDefault()Lfr/testudo/spacecorsair/business/player/Inventory;
    .registers 4

    .prologue
    .line 520
    new-instance v0, Lfr/testudo/spacecorsair/business/player/Inventory;

    const/16 v1, 0x5dc

    invoke-direct {v0, v1}, Lfr/testudo/spacecorsair/business/player/Inventory;-><init>(I)V

    .line 521
    const-wide/16 v2, 0xc8

    iput-wide v2, v0, Lfr/testudo/spacecorsair/business/player/Inventory;->credit:J

    .line 522
    const-wide/16 v2, 0x0

    iput-wide v2, v0, Lfr/testudo/spacecorsair/business/player/Inventory;->inapCredit:J

    .line 523
    new-instance v1, Lfr/testudo/spacecorsair/business/loot/SpaceObject;

    sget-object v2, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->instaRepair:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    const/4 v3, 0x2

    invoke-direct {v1, v2, v3}, Lfr/testudo/spacecorsair/business/loot/SpaceObject;-><init>(Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;I)V

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/business/player/Inventory;->forceAddObject(Lfr/testudo/spacecorsair/business/loot/SpaceObject;)V

    .line 524
    new-instance v1, Lfr/testudo/spacecorsair/business/loot/SpaceObject;

    sget-object v2, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->callMobileSeller:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    const/4 v3, 0x3

    invoke-direct {v1, v2, v3}, Lfr/testudo/spacecorsair/business/loot/SpaceObject;-><init>(Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;I)V

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/business/player/Inventory;->forceAddObject(Lfr/testudo/spacecorsair/business/loot/SpaceObject;)V

    .line 526
    return-object v0
.end method

.method private howManyCanBePaid(Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)I
    .registers 6

    .prologue
    .line 490
    invoke-virtual {p1}, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->getObjectPrice()Lfr/testudo/spacecorsair/business/economy/Price;

    move-result-object v0

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/business/economy/Price;->getBuyPrice()I

    move-result v0

    if-nez v0, :cond_e

    .line 491
    const v0, 0x7fffffff

    .line 497
    :goto_d
    return v0

    .line 494
    :cond_e
    invoke-virtual {p1}, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->isInappMoney()Z

    move-result v0

    if-eqz v0, :cond_24

    .line 495
    invoke-virtual {p0}, Lfr/testudo/spacecorsair/business/player/Inventory;->getCreditInApp()J

    move-result-wide v0

    invoke-virtual {p1}, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->getObjectPrice()Lfr/testudo/spacecorsair/business/economy/Price;

    move-result-object v2

    invoke-virtual {v2}, Lfr/testudo/spacecorsair/business/economy/Price;->getBuyPrice()I

    move-result v2

    int-to-long v2, v2

    div-long/2addr v0, v2

    long-to-int v0, v0

    goto :goto_d

    .line 497
    :cond_24
    invoke-virtual {p0}, Lfr/testudo/spacecorsair/business/player/Inventory;->getCredit()J

    move-result-wide v0

    invoke-virtual {p1}, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->getObjectPrice()Lfr/testudo/spacecorsair/business/economy/Price;

    move-result-object v2

    invoke-virtual {v2}, Lfr/testudo/spacecorsair/business/economy/Price;->getBuyPrice()I

    move-result v2

    int-to-long v2, v2

    div-long/2addr v0, v2

    long-to-int v0, v0

    goto :goto_d
.end method

.method private howManyCanFit(Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)I
    .registers 5

    .prologue
    .line 471
    invoke-virtual {p1}, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->getUnitWeight()I

    move-result v0

    if-nez v0, :cond_a

    .line 472
    const v0, 0x7fffffff

    .line 486
    :cond_9
    :goto_9
    return v0

    .line 475
    :cond_a
    iget-boolean v0, p0, Lfr/testudo/spacecorsair/business/player/Inventory;->isPlayerInventory:Z

    if-eqz v0, :cond_27

    sget-object v0, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->missile:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    invoke-virtual {p1, v0}, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_27

    .line 476
    invoke-virtual {p0}, Lfr/testudo/spacecorsair/business/player/Inventory;->getRemainingAllowedMissileToFit()I

    move-result v1

    .line 477
    invoke-virtual {p0}, Lfr/testudo/spacecorsair/business/player/Inventory;->getAvaillableWeight()I

    move-result v0

    invoke-virtual {p1}, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->getUnitWeight()I

    move-result v2

    div-int/2addr v0, v2

    .line 478
    if-gt v1, v0, :cond_9

    move v0, v1

    .line 482
    goto :goto_9

    .line 486
    :cond_27
    invoke-virtual {p0}, Lfr/testudo/spacecorsair/business/player/Inventory;->getAvaillableWeight()I

    move-result v0

    invoke-virtual {p1}, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->getUnitWeight()I

    move-result v1

    div-int/2addr v0, v1

    goto :goto_9
.end method

.method public static ofStation()Lfr/testudo/spacecorsair/business/player/Inventory;
    .registers 2

    .prologue
    .line 59
    new-instance v0, Lfr/testudo/spacecorsair/business/player/Inventory;

    const v1, 0x7fffffff

    invoke-direct {v0, v1}, Lfr/testudo/spacecorsair/business/player/Inventory;-><init>(I)V

    return-object v0
.end method

.method private processAddObject(Lfr/testudo/spacecorsair/business/loot/SpaceObject;Z)Z
    .registers 6

    .prologue
    const/4 v1, 0x1

    .line 275
    invoke-virtual {p0, p1}, Lfr/testudo/spacecorsair/business/player/Inventory;->canFit(Lfr/testudo/spacecorsair/business/loot/SpaceObject;)Z

    move-result v0

    if-nez v0, :cond_b

    if-nez p2, :cond_b

    .line 276
    const/4 v0, 0x0

    .line 289
    :goto_a
    return v0

    .line 279
    :cond_b
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/player/Inventory;->content:Ljava/util/HashMap;

    invoke-virtual {p1}, Lfr/testudo/spacecorsair/business/loot/SpaceObject;->getSpaceObjectType()Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_43

    .line 280
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/player/Inventory;->content:Ljava/util/HashMap;

    invoke-virtual {p1}, Lfr/testudo/spacecorsair/business/loot/SpaceObject;->getSpaceObjectType()Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfr/testudo/spacecorsair/business/loot/SpaceObject;

    invoke-virtual {p1}, Lfr/testudo/spacecorsair/business/loot/SpaceObject;->getQuantity()I

    move-result v2

    invoke-virtual {v0, v2}, Lfr/testudo/spacecorsair/business/loot/SpaceObject;->addQuantity(I)V

    .line 281
    invoke-virtual {p1}, Lfr/testudo/spacecorsair/business/loot/SpaceObject;->isNew()Z

    move-result v0

    if-eqz v0, :cond_3f

    .line 282
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/player/Inventory;->content:Ljava/util/HashMap;

    invoke-virtual {p1}, Lfr/testudo/spacecorsair/business/loot/SpaceObject;->getSpaceObjectType()Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfr/testudo/spacecorsair/business/loot/SpaceObject;

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/business/loot/SpaceObject;->setNew(Z)V

    .line 288
    :cond_3f
    :goto_3f
    iput-boolean v1, p0, Lfr/testudo/spacecorsair/business/player/Inventory;->dirty:Z

    move v0, v1

    .line 289
    goto :goto_a

    .line 285
    :cond_43
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/player/Inventory;->content:Ljava/util/HashMap;

    invoke-virtual {p1}, Lfr/testudo/spacecorsair/business/loot/SpaceObject;->getSpaceObjectType()Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    move-result-object v2

    invoke-virtual {v0, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3f
.end method


# virtual methods
.method public addCredit(I)V
    .registers 6

    .prologue
    .line 106
    if-gez p1, :cond_7

    .line 108
    neg-int v0, p1

    invoke-virtual {p0, v0}, Lfr/testudo/spacecorsair/business/player/Inventory;->removeCredit(I)V

    .line 114
    :goto_6
    return-void

    .line 111
    :cond_7
    iget-wide v0, p0, Lfr/testudo/spacecorsair/business/player/Inventory;->credit:J

    int-to-long v2, p1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lfr/testudo/spacecorsair/business/player/Inventory;->credit:J

    .line 112
    const/4 v0, 0x1

    iput-boolean v0, p0, Lfr/testudo/spacecorsair/business/player/Inventory;->dirty:Z

    .line 113
    invoke-static {p1}, Lfr/testudo/spacecorsair/game/achievements/AchievementEventListener;->onPlayerEarnMoney(I)V

    goto :goto_6
.end method

.method public addCreditInApp(I)V
    .registers 6

    .prologue
    .line 96
    if-gez p1, :cond_7

    .line 98
    neg-int v0, p1

    invoke-virtual {p0, v0}, Lfr/testudo/spacecorsair/business/player/Inventory;->removeCreditInApp(I)V

    .line 103
    :goto_6
    return-void

    .line 101
    :cond_7
    iget-wide v0, p0, Lfr/testudo/spacecorsair/business/player/Inventory;->inapCredit:J

    int-to-long v2, p1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lfr/testudo/spacecorsair/business/player/Inventory;->inapCredit:J

    .line 102
    const/4 v0, 0x1

    iput-boolean v0, p0, Lfr/testudo/spacecorsair/business/player/Inventory;->dirty:Z

    goto :goto_6
.end method

.method public addObject(Lfr/testudo/spacecorsair/business/loot/SpaceObject;)Z
    .registers 3

    .prologue
    .line 270
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lfr/testudo/spacecorsair/business/player/Inventory;->processAddObject(Lfr/testudo/spacecorsair/business/loot/SpaceObject;Z)Z

    move-result v0

    return v0
.end method

.method public buy(Lfr/testudo/spacecorsair/business/loot/SpaceObject;)V
    .registers 4

    .prologue
    .line 438
    invoke-virtual {p1}, Lfr/testudo/spacecorsair/business/loot/SpaceObject;->getQuantity()I

    move-result v0

    if-lez v0, :cond_85

    invoke-virtual {p0, p1}, Lfr/testudo/spacecorsair/business/player/Inventory;->canAffordAndFit(Lfr/testudo/spacecorsair/business/loot/SpaceObject;)Z

    move-result v0

    if-eqz v0, :cond_85

    .line 439
    invoke-virtual {p1}, Lfr/testudo/spacecorsair/business/loot/SpaceObject;->getSpaceObjectType()Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    move-result-object v0

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->isInappMoney()Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 440
    invoke-virtual {p1}, Lfr/testudo/spacecorsair/business/loot/SpaceObject;->getTotalPrice()I

    move-result v0

    invoke-virtual {p0, v0}, Lfr/testudo/spacecorsair/business/player/Inventory;->removeCreditInApp(I)V

    .line 442
    :cond_1d
    invoke-virtual {p1}, Lfr/testudo/spacecorsair/business/loot/SpaceObject;->getTotalPrice()I

    move-result v0

    invoke-virtual {p0, v0}, Lfr/testudo/spacecorsair/business/player/Inventory;->removeCredit(I)V

    .line 444
    invoke-virtual {p1}, Lfr/testudo/spacecorsair/business/loot/SpaceObject;->getSpaceObjectType()Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    move-result-object v0

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->getGearSpec()Lfr/testudo/spacecorsair/business/loot/stuff/GearSpec;

    move-result-object v0

    instance-of v0, v0, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;

    if-eqz v0, :cond_44

    iget-boolean v0, p0, Lfr/testudo/spacecorsair/business/player/Inventory;->isPlayerInventory:Z

    if-eqz v0, :cond_44

    .line 446
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/Game;->playerInfo:Lfr/testudo/spacecorsair/business/player/PlayerInfo;

    iget-object v0, v0, Lfr/testudo/spacecorsair/business/player/PlayerInfo;->availShips:Ljava/util/List;

    invoke-virtual {p1}, Lfr/testudo/spacecorsair/business/loot/SpaceObject;->getSpaceObjectType()Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 467
    :cond_43
    :goto_43
    return-void

    .line 450
    :cond_44
    invoke-virtual {p1}, Lfr/testudo/spacecorsair/business/loot/SpaceObject;->getSpaceObjectType()Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    move-result-object v0

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->isConsommable()Z

    move-result v0

    if-eqz v0, :cond_82

    .line 451
    invoke-virtual {p1}, Lfr/testudo/spacecorsair/business/loot/SpaceObject;->getSpaceObjectType()Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    move-result-object v0

    sget-object v1, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->souteIncrease300:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6a

    .line 452
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/Game;->playerCurrentShipInventory:Lfr/testudo/spacecorsair/business/player/Inventory;

    invoke-virtual {p1}, Lfr/testudo/spacecorsair/business/loot/SpaceObject;->getQuantity()I

    move-result v1

    mul-int/lit16 v1, v1, 0x12c

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/business/player/Inventory;->increaseCapacityInTon(I)V

    goto :goto_43

    .line 455
    :cond_6a
    invoke-virtual {p1}, Lfr/testudo/spacecorsair/business/loot/SpaceObject;->getSpaceObjectType()Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    move-result-object v0

    sget-object v1, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->buy50KGold:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_82

    .line 456
    const v0, 0xc350

    invoke-virtual {p1}, Lfr/testudo/spacecorsair/business/loot/SpaceObject;->getQuantity()I

    move-result v1

    mul-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lfr/testudo/spacecorsair/business/player/Inventory;->addCredit(I)V

    goto :goto_43

    .line 460
    :cond_82
    invoke-virtual {p0, p1}, Lfr/testudo/spacecorsair/business/player/Inventory;->addObject(Lfr/testudo/spacecorsair/business/loot/SpaceObject;)Z

    .line 464
    :cond_85
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->currentMission:Lfr/testudo/spacecorsair/business/mission/Mission;

    if-eqz v0, :cond_43

    .line 465
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->currentMission:Lfr/testudo/spacecorsair/business/mission/Mission;

    iget-object v0, v0, Lfr/testudo/spacecorsair/business/mission/Mission;->missionEngine:Lfr/testudo/spacecorsair/business/mission/MissionListener;

    invoke-virtual {v0, p1}, Lfr/testudo/spacecorsair/business/mission/MissionListener;->onPlayerBuyItem(Lfr/testudo/spacecorsair/business/loot/SpaceObject;)V

    goto :goto_43
.end method

.method public canAfford(I)Z
    .registers 6

    .prologue
    .line 132
    iget-wide v0, p0, Lfr/testudo/spacecorsair/business/player/Inventory;->credit:J

    int-to-long v2, p1

    cmp-long v0, v0, v2

    if-ltz v0, :cond_9

    const/4 v0, 0x1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public canAfford(Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)Z
    .registers 3

    .prologue
    .line 123
    invoke-virtual {p1}, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->isInappMoney()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 124
    invoke-virtual {p1}, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->getObjectPrice()Lfr/testudo/spacecorsair/business/economy/Price;

    move-result-object v0

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/business/economy/Price;->getBuyPrice()I

    move-result v0

    invoke-virtual {p0, v0}, Lfr/testudo/spacecorsair/business/player/Inventory;->canAffordInApp(I)Z

    move-result v0

    .line 127
    :goto_12
    return v0

    :cond_13
    invoke-virtual {p1}, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->getObjectPrice()Lfr/testudo/spacecorsair/business/economy/Price;

    move-result-object v0

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/business/economy/Price;->getBuyPrice()I

    move-result v0

    invoke-virtual {p0, v0}, Lfr/testudo/spacecorsair/business/player/Inventory;->canAfford(I)Z

    move-result v0

    goto :goto_12
.end method

.method public canAffordAndFit(Lfr/testudo/spacecorsair/business/loot/SpaceObject;)Z
    .registers 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 228
    invoke-virtual {p1}, Lfr/testudo/spacecorsair/business/loot/SpaceObject;->getSpaceObjectType()Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    move-result-object v2

    invoke-virtual {v2}, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->isInappMoney()Z

    move-result v2

    if-eqz v2, :cond_1f

    .line 229
    invoke-virtual {p0, p1}, Lfr/testudo/spacecorsair/business/player/Inventory;->canFit(Lfr/testudo/spacecorsair/business/loot/SpaceObject;)Z

    move-result v2

    if-eqz v2, :cond_1d

    invoke-virtual {p1}, Lfr/testudo/spacecorsair/business/loot/SpaceObject;->getTotalPrice()I

    move-result v2

    invoke-virtual {p0, v2}, Lfr/testudo/spacecorsair/business/player/Inventory;->canAffordInApp(I)Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 231
    :cond_1c
    :goto_1c
    return v0

    :cond_1d
    move v0, v1

    .line 229
    goto :goto_1c

    .line 231
    :cond_1f
    invoke-virtual {p0, p1}, Lfr/testudo/spacecorsair/business/player/Inventory;->canFit(Lfr/testudo/spacecorsair/business/loot/SpaceObject;)Z

    move-result v2

    if-eqz v2, :cond_2f

    invoke-virtual {p1}, Lfr/testudo/spacecorsair/business/loot/SpaceObject;->getTotalPrice()I

    move-result v2

    invoke-virtual {p0, v2}, Lfr/testudo/spacecorsair/business/player/Inventory;->canAfford(I)Z

    move-result v2

    if-nez v2, :cond_1c

    :cond_2f
    move v0, v1

    goto :goto_1c
.end method

.method public canAffordAndFit(Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;I)Z
    .registers 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 236
    invoke-virtual {p1}, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->isInappMoney()Z

    move-result v2

    if-eqz v2, :cond_20

    .line 237
    invoke-virtual {p0, p1, p2}, Lfr/testudo/spacecorsair/business/player/Inventory;->canFit(Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;I)Z

    move-result v2

    if-eqz v2, :cond_1e

    invoke-virtual {p1}, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->getObjectPrice()Lfr/testudo/spacecorsair/business/economy/Price;

    move-result-object v2

    invoke-virtual {v2}, Lfr/testudo/spacecorsair/business/economy/Price;->getBuyPrice()I

    move-result v2

    mul-int/2addr v2, p2

    invoke-virtual {p0, v2}, Lfr/testudo/spacecorsair/business/player/Inventory;->canAffordInApp(I)Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 239
    :cond_1d
    :goto_1d
    return v0

    :cond_1e
    move v0, v1

    .line 237
    goto :goto_1d

    .line 239
    :cond_20
    invoke-virtual {p0, p1, p2}, Lfr/testudo/spacecorsair/business/player/Inventory;->canFit(Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;I)Z

    move-result v2

    if-eqz v2, :cond_35

    invoke-virtual {p1}, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->getObjectPrice()Lfr/testudo/spacecorsair/business/economy/Price;

    move-result-object v2

    invoke-virtual {v2}, Lfr/testudo/spacecorsair/business/economy/Price;->getBuyPrice()I

    move-result v2

    mul-int/2addr v2, p2

    invoke-virtual {p0, v2}, Lfr/testudo/spacecorsair/business/player/Inventory;->canAfford(I)Z

    move-result v2

    if-nez v2, :cond_1d

    :cond_35
    move v0, v1

    goto :goto_1d
.end method

.method public canAffordAndFitOne(Lfr/testudo/spacecorsair/business/loot/SpaceObject;)Z
    .registers 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 244
    invoke-virtual {p1}, Lfr/testudo/spacecorsair/business/loot/SpaceObject;->getSpaceObjectType()Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    move-result-object v2

    invoke-virtual {v2}, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->isInappMoney()Z

    move-result v2

    if-eqz v2, :cond_1f

    .line 245
    invoke-virtual {p0, p1}, Lfr/testudo/spacecorsair/business/player/Inventory;->canFitOne(Lfr/testudo/spacecorsair/business/loot/SpaceObject;)Z

    move-result v2

    if-eqz v2, :cond_1d

    invoke-virtual {p1}, Lfr/testudo/spacecorsair/business/loot/SpaceObject;->getUnitBuyPrice()I

    move-result v2

    invoke-virtual {p0, v2}, Lfr/testudo/spacecorsair/business/player/Inventory;->canAffordInApp(I)Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 247
    :cond_1c
    :goto_1c
    return v0

    :cond_1d
    move v0, v1

    .line 245
    goto :goto_1c

    .line 247
    :cond_1f
    invoke-virtual {p0, p1}, Lfr/testudo/spacecorsair/business/player/Inventory;->canFitOne(Lfr/testudo/spacecorsair/business/loot/SpaceObject;)Z

    move-result v2

    if-eqz v2, :cond_2f

    invoke-virtual {p1}, Lfr/testudo/spacecorsair/business/loot/SpaceObject;->getUnitBuyPrice()I

    move-result v2

    invoke-virtual {p0, v2}, Lfr/testudo/spacecorsair/business/player/Inventory;->canAfford(I)Z

    move-result v2

    if-nez v2, :cond_1c

    :cond_2f
    move v0, v1

    goto :goto_1c
.end method

.method public canAffordInApp(I)Z
    .registers 6

    .prologue
    .line 136
    iget-wide v0, p0, Lfr/testudo/spacecorsair/business/player/Inventory;->inapCredit:J

    int-to-long v2, p1

    cmp-long v0, v0, v2

    if-ltz v0, :cond_9

    const/4 v0, 0x1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public canFit(Lfr/testudo/spacecorsair/business/loot/SpaceObject;)Z
    .registers 5

    .prologue
    const/4 v0, 0x0

    .line 193
    iget-boolean v1, p0, Lfr/testudo/spacecorsair/business/player/Inventory;->isPlayerInventory:Z

    if-eqz v1, :cond_1c

    invoke-virtual {p1}, Lfr/testudo/spacecorsair/business/loot/SpaceObject;->getSpaceObjectType()Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    move-result-object v1

    sget-object v2, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->missile:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    invoke-virtual {v1, v2}, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 194
    invoke-virtual {p1}, Lfr/testudo/spacecorsair/business/loot/SpaceObject;->getQuantity()I

    move-result v1

    invoke-virtual {p0}, Lfr/testudo/spacecorsair/business/player/Inventory;->getRemainingAllowedMissileToFit()I

    move-result v2

    if-le v1, v2, :cond_1c

    .line 199
    :cond_1b
    :goto_1b
    return v0

    :cond_1c
    invoke-virtual {p0}, Lfr/testudo/spacecorsair/business/player/Inventory;->getAvaillableWeight()I

    move-result v1

    invoke-virtual {p1}, Lfr/testudo/spacecorsair/business/loot/SpaceObject;->getTotalWeight()I

    move-result v2

    if-lt v1, v2, :cond_1b

    const/4 v0, 0x1

    goto :goto_1b
.end method

.method public canFit(Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;I)Z
    .registers 6

    .prologue
    const/4 v0, 0x0

    .line 206
    iget-boolean v1, p0, Lfr/testudo/spacecorsair/business/player/Inventory;->isPlayerInventory:Z

    if-eqz v1, :cond_14

    sget-object v1, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->missile:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    invoke-virtual {p1, v1}, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 207
    invoke-virtual {p0}, Lfr/testudo/spacecorsair/business/player/Inventory;->getRemainingAllowedMissileToFit()I

    move-result v1

    if-le p2, v1, :cond_14

    .line 212
    :cond_13
    :goto_13
    return v0

    :cond_14
    invoke-virtual {p0}, Lfr/testudo/spacecorsair/business/player/Inventory;->getAvaillableWeight()I

    move-result v1

    invoke-virtual {p1}, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->getUnitWeight()I

    move-result v2

    mul-int/2addr v2, p2

    if-lt v1, v2, :cond_13

    const/4 v0, 0x1

    goto :goto_13
.end method

.method public canFitOne(Lfr/testudo/spacecorsair/business/loot/SpaceObject;)Z
    .registers 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 217
    iget-boolean v2, p0, Lfr/testudo/spacecorsair/business/player/Inventory;->isPlayerInventory:Z

    if-eqz v2, :cond_15

    sget-object v2, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->missile:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_15

    .line 218
    invoke-virtual {p0}, Lfr/testudo/spacecorsair/business/player/Inventory;->getRemainingAllowedMissileToFit()I

    move-result v2

    if-le v0, v2, :cond_15

    .line 223
    :goto_14
    return v1

    :cond_15
    invoke-virtual {p0}, Lfr/testudo/spacecorsair/business/player/Inventory;->getAvaillableWeight()I

    move-result v2

    invoke-virtual {p1}, Lfr/testudo/spacecorsair/business/loot/SpaceObject;->getSpaceObjectType()Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    move-result-object v3

    invoke-virtual {v3}, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->getUnitWeight()I

    move-result v3

    if-lt v2, v3, :cond_25

    :goto_23
    move v1, v0

    goto :goto_14

    :cond_25
    move v0, v1

    goto :goto_23
.end method

.method public clearItems()V
    .registers 2

    .prologue
    .line 141
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/player/Inventory;->content:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 142
    return-void
.end method

.method public containObject(Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)Z
    .registers 3

    .prologue
    .line 163
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/player/Inventory;->content:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public containsDeliveryItem()Z
    .registers 3

    .prologue
    .line 540
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->ALL_DELIVERY_GOODS:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    .line 541
    invoke-virtual {p0, v0}, Lfr/testudo/spacecorsair/business/player/Inventory;->containObject(Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 542
    const/4 v0, 0x1

    .line 545
    :goto_19
    return v0

    :cond_1a
    const/4 v0, 0x0

    goto :goto_19
.end method

.method public ensureMissileCountInferiorTo(I)V
    .registers 4

    .prologue
    .line 53
    invoke-virtual {p0}, Lfr/testudo/spacecorsair/business/player/Inventory;->getMissileCount()I

    move-result v0

    if-le v0, p1, :cond_13

    .line 54
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/player/Inventory;->content:Ljava/util/HashMap;

    sget-object v1, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->missile:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfr/testudo/spacecorsair/business/loot/SpaceObject;

    invoke-virtual {v0, p1}, Lfr/testudo/spacecorsair/business/loot/SpaceObject;->setQuantity(I)V

    .line 56
    :cond_13
    return-void
.end method

.method public forceAddObject(Lfr/testudo/spacecorsair/business/loot/SpaceObject;)V
    .registers 3

    .prologue
    .line 258
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lfr/testudo/spacecorsair/business/player/Inventory;->processAddObject(Lfr/testudo/spacecorsair/business/loot/SpaceObject;Z)Z

    .line 259
    return-void
.end method

.method public getAvaillableWeight()I
    .registers 3

    .prologue
    .line 173
    invoke-virtual {p0}, Lfr/testudo/spacecorsair/business/player/Inventory;->getCapacityInTon()I

    move-result v0

    invoke-virtual {p0}, Lfr/testudo/spacecorsair/business/player/Inventory;->getTotalWeight()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public getCapacityInTon()I
    .registers 3
    iget v0, p0, Lfr/testudo/spacecorsair/business/player/Inventory;->capacityInTon:I
    iget-boolean v1, p0, Lfr/testudo/spacecorsair/business/player/Inventory;->isPlayerInventory:Z
    if-eqz v1, :plain
    int-to-float v0, v0
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModShips;->cargoMult()F
    move-result v1
    mul-float/2addr v0, v1
    float-to-int v0, v0
    :plain
    return v0
.end method

.method public getContent()Ljava/util/Collection;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lfr/testudo/spacecorsair/business/loot/SpaceObject;",
            ">;"
        }
    .end annotation

    .prologue
    .line 360
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/player/Inventory;->content:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public getContentAsList()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lfr/testudo/spacecorsair/business/loot/SpaceObject;",
            ">;"
        }
    .end annotation

    .prologue
    .line 365
    invoke-virtual {p0}, Lfr/testudo/spacecorsair/business/player/Inventory;->getContent()Ljava/util/Collection;

    move-result-object v0

    .line 368
    instance-of v1, v0, Ljava/util/List;

    if-eqz v1, :cond_b

    .line 369
    check-cast v0, Ljava/util/List;

    .line 374
    :goto_a
    return-object v0

    .line 371
    :cond_b
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object v0, v1

    goto :goto_a
.end method

.method public getCredit()J
    .registers 3

    .prologue
    .line 145
    iget-wide v0, p0, Lfr/testudo/spacecorsair/business/player/Inventory;->credit:J

    return-wide v0
.end method

.method public getCreditInApp()J
    .registers 3

    .prologue
    .line 149
    iget-wide v0, p0, Lfr/testudo/spacecorsair/business/player/Inventory;->inapCredit:J

    return-wide v0
.end method

.method public getMissileCount()I
    .registers 2

    .prologue
    .line 49
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->missile:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    invoke-virtual {p0, v0}, Lfr/testudo/spacecorsair/business/player/Inventory;->getQuantityOf(Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)I

    move-result v0

    return v0
.end method

.method public getQuantityOf(Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)I
    .registers 3

    .prologue
    .line 41
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/player/Inventory;->content:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 42
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/player/Inventory;->content:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfr/testudo/spacecorsair/business/loot/SpaceObject;

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/business/loot/SpaceObject;->getQuantity()I

    move-result v0

    .line 44
    :goto_14
    return v0

    :cond_15
    const/4 v0, 0x0

    goto :goto_14
.end method

.method public getRemainingAllowedMissileToFit()I
    .registers 3

    .prologue
    .line 182
    iget-boolean v0, p0, Lfr/testudo/spacecorsair/business/player/Inventory;->isPlayerInventory:Z

    if-nez v0, :cond_8

    .line 183
    const v0, 0x7fffffff

    .line 186
    :goto_7
    return v0

    .line 185
    :cond_8
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/Game;->playerInfo:Lfr/testudo/spacecorsair/business/player/PlayerInfo;

    iget-object v0, v0, Lfr/testudo/spacecorsair/business/player/PlayerInfo;->playerGear:Lfr/testudo/spacecorsair/business/player/PlayerGear;

    iget-object v0, v0, Lfr/testudo/spacecorsair/business/player/PlayerGear;->missile:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->getGearSpec()Lfr/testudo/spacecorsair/business/loot/stuff/GearSpec;

    move-result-object v0

    check-cast v0, Lfr/testudo/spacecorsair/business/loot/stuff/missile/MissileSpec;

    .line 186
    iget v0, v0, Lfr/testudo/spacecorsair/business/loot/stuff/missile/MissileSpec;->maxCountInventory:I

    invoke-virtual {p0}, Lfr/testudo/spacecorsair/business/player/Inventory;->getMissileCount()I

    move-result v1

    sub-int/2addr v0, v1

    goto :goto_7
.end method

.method public getTotalWeight()I
    .registers 4

    .prologue
    .line 347
    const/4 v0, 0x0

    .line 348
    iget-object v1, p0, Lfr/testudo/spacecorsair/business/player/Inventory;->content:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :goto_c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfr/testudo/spacecorsair/business/loot/SpaceObject;

    .line 349
    invoke-virtual {v0}, Lfr/testudo/spacecorsair/business/loot/SpaceObject;->getTotalWeight()I

    move-result v0

    add-int/2addr v0, v1

    move v1, v0

    .line 350
    goto :goto_c

    .line 351
    :cond_1f
    return v1
.end method

.method public getUsedPourcent()I
    .registers 3

    .prologue
    .line 390
    invoke-virtual {p0}, Lfr/testudo/spacecorsair/business/player/Inventory;->getTotalWeight()I

    move-result v0

    mul-int/lit8 v0, v0, 0x64

    invoke-virtual {p0}, Lfr/testudo/spacecorsair/business/player/Inventory;->getCapacityInTon()I

    move-result v1

    div-int/2addr v0, v1

    return v0
.end method

.method public howManyCanIAfford(Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;I)I
    .registers 5

    .prologue
    .line 502
    invoke-direct {p0, p1}, Lfr/testudo/spacecorsair/business/player/Inventory;->howManyCanFit(Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)I

    move-result v1

    .line 503
    invoke-direct {p0, p1}, Lfr/testudo/spacecorsair/business/player/Inventory;->howManyCanBePaid(Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)I

    move-result v0

    .line 507
    if-ge v0, v1, :cond_f

    .line 511
    :goto_a
    if-ge p2, v0, :cond_d

    .line 515
    :goto_c
    return p2

    :cond_d
    move p2, v0

    goto :goto_c

    :cond_f
    move v0, v1

    goto :goto_a
.end method

.method public increaseCapacityInTon(I)V
    .registers 3

    .prologue
    .line 157
    iget v0, p0, Lfr/testudo/spacecorsair/business/player/Inventory;->capacityInTon:I

    add-int/2addr v0, p1

    iput v0, p0, Lfr/testudo/spacecorsair/business/player/Inventory;->capacityInTon:I

    .line 158
    const/4 v0, 0x1

    iput-boolean v0, p0, Lfr/testudo/spacecorsair/business/player/Inventory;->dirty:Z

    .line 159
    return-void
.end method

.method public isDirty()Z
    .registers 2

    .prologue
    .line 69
    iget-boolean v0, p0, Lfr/testudo/spacecorsair/business/player/Inventory;->dirty:Z

    return v0
.end method

.method public isEmpty()Z
    .registers 2

    .prologue
    .line 356
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/player/Inventory;->content:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public markObjectsAsSeen()V
    .registers 4

    .prologue
    .line 380
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/player/Inventory;->content:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_a
    :goto_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_24

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfr/testudo/spacecorsair/business/loot/SpaceObject;

    .line 381
    invoke-virtual {v0}, Lfr/testudo/spacecorsair/business/loot/SpaceObject;->isNew()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 382
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lfr/testudo/spacecorsair/business/loot/SpaceObject;->setNew(Z)V

    .line 383
    const/4 v0, 0x1

    iput-boolean v0, p0, Lfr/testudo/spacecorsair/business/player/Inventory;->dirty:Z

    goto :goto_a

    .line 386
    :cond_24
    return-void
.end method

.method public reduceCredit(I)V
    .registers 6

    .prologue
    .line 117
    iget-wide v0, p0, Lfr/testudo/spacecorsair/business/player/Inventory;->credit:J

    int-to-long v2, p1

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lfr/testudo/spacecorsair/business/player/Inventory;->credit:J

    .line 118
    const/4 v0, 0x1

    iput-boolean v0, p0, Lfr/testudo/spacecorsair/business/player/Inventory;->dirty:Z

    .line 119
    return-void
.end method

.method public removeAllDeliveryItems()V
    .registers 3

    .prologue
    .line 532
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->ALL_DELIVERY_GOODS:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    .line 533
    invoke-virtual {p0, v0}, Lfr/testudo/spacecorsair/business/player/Inventory;->removeAllOf(Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)V

    goto :goto_6

    .line 536
    :cond_16
    return-void
.end method

.method public removeAllOf(Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)V
    .registers 3

    .prologue
    .line 316
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/player/Inventory;->content:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 321
    :goto_8
    return-void

    .line 319
    :cond_9
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/player/Inventory;->content:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 320
    const/4 v0, 0x1

    iput-boolean v0, p0, Lfr/testudo/spacecorsair/business/player/Inventory;->dirty:Z

    goto :goto_8
.end method

.method public removeCredit(I)V
    .registers 6

    .prologue
    .line 83
    iget-wide v0, p0, Lfr/testudo/spacecorsair/business/player/Inventory;->credit:J

    int-to-long v2, p1

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lfr/testudo/spacecorsair/business/player/Inventory;->credit:J

    .line 84
    const/4 v0, 0x1

    iput-boolean v0, p0, Lfr/testudo/spacecorsair/business/player/Inventory;->dirty:Z

    .line 85
    return-void
.end method

.method public removeCreditInApp(I)V
    .registers 6

    .prologue
    .line 88
    iget-wide v0, p0, Lfr/testudo/spacecorsair/business/player/Inventory;->inapCredit:J

    int-to-long v2, p1

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lfr/testudo/spacecorsair/business/player/Inventory;->inapCredit:J

    .line 89
    const/4 v0, 0x1

    iput-boolean v0, p0, Lfr/testudo/spacecorsair/business/player/Inventory;->dirty:Z

    .line 90
    return-void
.end method

.method public removeObject(Lfr/testudo/spacecorsair/business/loot/SpaceObject;)V
    .registers 4

    .prologue
    .line 329
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/player/Inventory;->content:Ljava/util/HashMap;

    invoke-virtual {p1}, Lfr/testudo/spacecorsair/business/loot/SpaceObject;->getSpaceObjectType()Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 339
    :goto_c
    return-void

    .line 332
    :cond_d
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/player/Inventory;->content:Ljava/util/HashMap;

    invoke-virtual {p1}, Lfr/testudo/spacecorsair/business/loot/SpaceObject;->getSpaceObjectType()Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfr/testudo/spacecorsair/business/loot/SpaceObject;

    .line 333
    invoke-virtual {p1}, Lfr/testudo/spacecorsair/business/loot/SpaceObject;->getQuantity()I

    move-result v1

    neg-int v1, v1

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/business/loot/SpaceObject;->addQuantity(I)V

    .line 334
    invoke-virtual {v0}, Lfr/testudo/spacecorsair/business/loot/SpaceObject;->getQuantity()I

    move-result v0

    if-gtz v0, :cond_30

    .line 336
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/player/Inventory;->content:Ljava/util/HashMap;

    invoke-virtual {p1}, Lfr/testudo/spacecorsair/business/loot/SpaceObject;->getSpaceObjectType()Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 338
    :cond_30
    const/4 v0, 0x1

    iput-boolean v0, p0, Lfr/testudo/spacecorsair/business/player/Inventory;->dirty:Z

    goto :goto_c
.end method

.method public removeOne(Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)V
    .registers 4

    .prologue
    .line 301
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/player/Inventory;->content:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 312
    :goto_8
    return-void

    .line 305
    :cond_9
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/player/Inventory;->content:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfr/testudo/spacecorsair/business/loot/SpaceObject;

    .line 306
    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/business/loot/SpaceObject;->addQuantity(I)V

    .line 307
    invoke-virtual {v0}, Lfr/testudo/spacecorsair/business/loot/SpaceObject;->getQuantity()I

    move-result v0

    if-gtz v0, :cond_20

    .line 309
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/player/Inventory;->content:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 311
    :cond_20
    const/4 v0, 0x1

    iput-boolean v0, p0, Lfr/testudo/spacecorsair/business/player/Inventory;->dirty:Z

    goto :goto_8
.end method

.method public sell(Lfr/testudo/spacecorsair/business/loot/SpaceObject;)V
    .registers 5

    .prologue
    .line 405
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/player/Inventory;->content:Ljava/util/HashMap;

    invoke-virtual {p1}, Lfr/testudo/spacecorsair/business/loot/SpaceObject;->getSpaceObjectType()Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 433
    :goto_c
    return-void

    .line 412
    :cond_d
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/player/Inventory;->content:Ljava/util/HashMap;

    invoke-virtual {p1}, Lfr/testudo/spacecorsair/business/loot/SpaceObject;->getSpaceObjectType()Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfr/testudo/spacecorsair/business/loot/SpaceObject;

    .line 414
    invoke-virtual {v0}, Lfr/testudo/spacecorsair/business/loot/SpaceObject;->getQuantity()I

    move-result v1

    invoke-virtual {p1}, Lfr/testudo/spacecorsair/business/loot/SpaceObject;->getQuantity()I

    move-result v2

    if-ge v1, v2, :cond_2a

    .line 415
    invoke-virtual {v0}, Lfr/testudo/spacecorsair/business/loot/SpaceObject;->getQuantity()I

    move-result v0

    invoke-virtual {p1, v0}, Lfr/testudo/spacecorsair/business/loot/SpaceObject;->setQuantity(I)V

    .line 419
    :cond_2a
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->currentMission:Lfr/testudo/spacecorsair/business/mission/Mission;

    if-eqz v0, :cond_39

    .line 420
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->currentMission:Lfr/testudo/spacecorsair/business/mission/Mission;

    iget-object v0, v0, Lfr/testudo/spacecorsair/business/mission/Mission;->missionEngine:Lfr/testudo/spacecorsair/business/mission/MissionListener;

    invoke-virtual {v0, p1}, Lfr/testudo/spacecorsair/business/mission/MissionListener;->onPlayerSellItem(Lfr/testudo/spacecorsair/business/loot/SpaceObject;)V

    .line 425
    :cond_39
    invoke-virtual {p1}, Lfr/testudo/spacecorsair/business/loot/SpaceObject;->getTotalSellPrice()I

    move-result v0

    invoke-virtual {p0, v0}, Lfr/testudo/spacecorsair/business/player/Inventory;->addCredit(I)V

    .line 428
    invoke-virtual {p0, p1}, Lfr/testudo/spacecorsair/business/player/Inventory;->removeObject(Lfr/testudo/spacecorsair/business/loot/SpaceObject;)V

    goto :goto_c
.end method

.method public setAsPlayerInventory()V
    .registers 2

    .prologue
    .line 36
    const/4 v0, 0x1

    iput-boolean v0, p0, Lfr/testudo/spacecorsair/business/player/Inventory;->isPlayerInventory:Z

    .line 37
    return-void
.end method

.method public setCapacityInTon(I)V
    .registers 2

    .prologue
    .line 168
    iput p1, p0, Lfr/testudo/spacecorsair/business/player/Inventory;->capacityInTon:I

    .line 169
    return-void
.end method

.method public setDirty(Z)V
    .registers 2

    .prologue
    .line 79
    iput-boolean p1, p0, Lfr/testudo/spacecorsair/business/player/Inventory;->dirty:Z

    .line 80
    return-void
.end method

.method public validate()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 397
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/player/Inventory;->content:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 398
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/player/Inventory;->content:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 400
    :cond_e
    return-void
.end method
