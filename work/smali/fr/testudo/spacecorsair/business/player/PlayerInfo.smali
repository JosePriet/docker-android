.class public Lfr/testudo/spacecorsair/business/player/PlayerInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lfr/testudo/spacecorsair/business/player/PlayerInfo$1;
    }
.end annotation


# static fields
.field public static final CHANGE_SHIP_DELAY_IN_SECOND:I = 0x1e

.field public static final LEVEL:Ljava/lang/String; = "Level "

.field public static final MOBILE_SHOP_DELAY_IN_SECOND:I = 0x3c

.field public static final REPAIR_DELAY_IN_SECOND:I = 0xb4

.field public static final levelUp:Ljava/lang/String; = "Level Up !"


# instance fields
.field public availShips:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;",
            ">;"
        }
    .end annotation
.end field

.field public curXp:J

.field public curlife:J

.field public lastLevelLoaded:Ljava/lang/String;

.field public lastUsedGateName:Ljava/lang/String;

.field public level:I

.field public levelPourc:F

.field public multiPlayerGear:Lfr/testudo/spacecorsair/business/player/PlayerGear;

.field public nextLevelXp:J

.field public playerGear:Lfr/testudo/spacecorsair/business/player/PlayerGear;

.field public playerLevelText:Ljava/lang/String;

.field public playerMaxLife:I

.field public remainingTimeChangeShip:I

.field public remainingTimeInstaRepair:I

.field public remainingTimeMobileShop:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput v0, p0, Lfr/testudo/spacecorsair/business/player/PlayerInfo;->playerMaxLife:I

    .line 49
    iput v0, p0, Lfr/testudo/spacecorsair/business/player/PlayerInfo;->remainingTimeInstaRepair:I

    .line 50
    iput v0, p0, Lfr/testudo/spacecorsair/business/player/PlayerInfo;->remainingTimeMobileShop:I

    .line 51
    iput v0, p0, Lfr/testudo/spacecorsair/business/player/PlayerInfo;->remainingTimeChangeShip:I

    .line 61
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lfr/testudo/spacecorsair/business/player/PlayerInfo;->availShips:Ljava/util/List;

    return-void
.end method

.method public static getDefaultInstance()Lfr/testudo/spacecorsair/business/player/PlayerInfo;
    .registers 5

    .prologue
    const/4 v4, 0x0

    .line 65
    new-instance v0, Lfr/testudo/spacecorsair/business/player/PlayerInfo;

    invoke-direct {v0}, Lfr/testudo/spacecorsair/business/player/PlayerInfo;-><init>()V

    .line 67
    iput v4, v0, Lfr/testudo/spacecorsair/business/player/PlayerInfo;->level:I

    .line 68
    const-wide/16 v2, 0x0

    iput-wide v2, v0, Lfr/testudo/spacecorsair/business/player/PlayerInfo;->curXp:J

    .line 69
    const/4 v1, 0x0

    iput v1, v0, Lfr/testudo/spacecorsair/business/player/PlayerInfo;->levelPourc:F

    .line 70
    sget-object v1, Lfr/testudo/spacecorsair/business/player/XpBuilder;->PLAYER_SHIP_LIFE:[I

    aget v1, v1, v4

    int-to-long v2, v1

    iput-wide v2, v0, Lfr/testudo/spacecorsair/business/player/PlayerInfo;->curlife:J

    .line 71
    invoke-static {v4}, Lfr/testudo/spacecorsair/business/player/XpBuilder;->getNextLevelXp(I)J

    move-result-wide v2

    iput-wide v2, v0, Lfr/testudo/spacecorsair/business/player/PlayerInfo;->nextLevelXp:J

    .line 72
    invoke-static {}, Lfr/testudo/spacecorsair/business/player/PlayerGear;->getDefault()Lfr/testudo/spacecorsair/business/player/PlayerGear;

    move-result-object v1

    iput-object v1, v0, Lfr/testudo/spacecorsair/business/player/PlayerInfo;->playerGear:Lfr/testudo/spacecorsair/business/player/PlayerGear;

    .line 73
    const-string v1, "tutorial"

    iput-object v1, v0, Lfr/testudo/spacecorsair/business/player/PlayerInfo;->lastLevelLoaded:Ljava/lang/String;

    .line 74
    const-string v1, "VECTOR00_GATE"

    iput-object v1, v0, Lfr/testudo/spacecorsair/business/player/PlayerInfo;->lastUsedGateName:Ljava/lang/String;

    .line 75
    iput v4, v0, Lfr/testudo/spacecorsair/business/player/PlayerInfo;->remainingTimeInstaRepair:I

    .line 76
    iput v4, v0, Lfr/testudo/spacecorsair/business/player/PlayerInfo;->remainingTimeMobileShop:I

    .line 77
    iput v4, v0, Lfr/testudo/spacecorsair/business/player/PlayerInfo;->remainingTimeChangeShip:I

    .line 78
    invoke-static {}, Lfr/testudo/spacecorsair/business/player/PlayerGear;->getMulti()Lfr/testudo/spacecorsair/business/player/PlayerGear;

    move-result-object v1

    iput-object v1, v0, Lfr/testudo/spacecorsair/business/player/PlayerInfo;->multiPlayerGear:Lfr/testudo/spacecorsair/business/player/PlayerGear;

    .line 89
    return-object v0
.end method

.method private onLevelUp()V
    .registers 5

    .prologue
    .line 272
    iget-wide v0, p0, Lfr/testudo/spacecorsair/business/player/PlayerInfo;->curXp:J

    iget-wide v2, p0, Lfr/testudo/spacecorsair/business/player/PlayerInfo;->nextLevelXp:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lfr/testudo/spacecorsair/business/player/PlayerInfo;->curXp:J

    .line 273
    iget-wide v0, p0, Lfr/testudo/spacecorsair/business/player/PlayerInfo;->nextLevelXp:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_13

    .line 275
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lfr/testudo/spacecorsair/business/player/PlayerInfo;->curXp:J

    .line 278
    :cond_13
    iget v0, p0, Lfr/testudo/spacecorsair/business/player/PlayerInfo;->level:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lfr/testudo/spacecorsair/business/player/PlayerInfo;->level:I

    .line 280
    invoke-static {}, Lfr/testudo/spacecorsair/business/player/PlayerShip;->instance()Lfr/testudo/spacecorsair/business/player/PlayerShip;

    move-result-object v0

    iget v1, p0, Lfr/testudo/spacecorsair/business/player/PlayerInfo;->level:I

    iput v1, v0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->level:I

    .line 281
    invoke-virtual {p0}, Lfr/testudo/spacecorsair/business/player/PlayerInfo;->init()V

    .line 283
    iget-wide v0, p0, Lfr/testudo/spacecorsair/business/player/PlayerInfo;->curXp:J

    iget-wide v2, p0, Lfr/testudo/spacecorsair/business/player/PlayerInfo;->nextLevelXp:J

    cmp-long v0, v0, v2

    if-ltz v0, :cond_2f

    .line 284
    invoke-direct {p0}, Lfr/testudo/spacecorsair/business/player/PlayerInfo;->onLevelUp()V

    .line 287
    :cond_2f
    invoke-static {}, Lfr/testudo/spacecorsair/business/player/PlayerShip;->instance()Lfr/testudo/spacecorsair/business/player/PlayerShip;

    move-result-object v0

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/business/player/PlayerShip;->applyGear()V

    .line 288
    invoke-static {}, Lfr/testudo/spacecorsair/business/player/PlayerShip;->instance()Lfr/testudo/spacecorsair/business/player/PlayerShip;

    move-result-object v0

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/business/player/PlayerShip;->setFullLifeAndShieldUp()V

    .line 290
    const-string v0, "Level Up !"

    const-string v1, ""

    invoke-static {v0, v1}, Lfr/testudo/spacecorsair/display/hud/WelcomeMessage;->setText(Ljava/lang/String;Ljava/lang/String;)V

    .line 291
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->soundManager:Lfr/testudo/spacecorsair/engine/SoundManager;

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/engine/SoundManager;->playPirate()V

    .line 292
    iget v0, p0, Lfr/testudo/spacecorsair/business/player/PlayerInfo;->level:I

    invoke-static {v0}, Lfr/testudo/spacecorsair/game/achievements/AchievementEventListener;->onLevelUp(I)V

    .line 293
    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModQol;->onLevelUp(Lfr/testudo/spacecorsair/business/player/PlayerInfo;)V

    return-void
.end method


# virtual methods
.method public addXp(I)V
    .registers 6

    .prologue
    .line 93
    iget v0, p0, Lfr/testudo/spacecorsair/business/player/PlayerInfo;->level:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_7

    .line 102
    :goto_6
    return-void

    .line 96
    :cond_7
    iget-wide v0, p0, Lfr/testudo/spacecorsair/business/player/PlayerInfo;->curXp:J

    int-to-long v2, p1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lfr/testudo/spacecorsair/business/player/PlayerInfo;->curXp:J

    .line 97
    iget-wide v0, p0, Lfr/testudo/spacecorsair/business/player/PlayerInfo;->curXp:J

    iget-wide v2, p0, Lfr/testudo/spacecorsair/business/player/PlayerInfo;->nextLevelXp:J

    cmp-long v0, v0, v2

    if-ltz v0, :cond_18

    .line 98
    invoke-direct {p0}, Lfr/testudo/spacecorsair/business/player/PlayerInfo;->onLevelUp()V

    .line 100
    :cond_18
    iget-wide v0, p0, Lfr/testudo/spacecorsair/business/player/PlayerInfo;->curXp:J

    const-wide/16 v2, 0x64

    mul-long/2addr v0, v2

    iget-wide v2, p0, Lfr/testudo/spacecorsair/business/player/PlayerInfo;->nextLevelXp:J

    div-long/2addr v0, v2

    long-to-float v0, v0

    iput v0, p0, Lfr/testudo/spacecorsair/business/player/PlayerInfo;->levelPourc:F

    goto :goto_6
.end method

.method public buyShipAndEquip(Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)V
    .registers 6

    .prologue
    invoke-static {p1}, Lfr/testudo/spacecorsair/mod/ModShips;->canBuy(Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)Z
    move-result v0
    if-nez v0, :mod_licensed
    return-void
    :mod_licensed

    const/4 v1, 0x0

    .line 409
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->storageManager:Lfr/testudo/spacecorsair/storage/StorageManager;

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/storage/StorageManager;->save()V

    .line 412
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->corvette:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    invoke-virtual {p1, v0}, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 413
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/Game;->gameThread:Lfr/testudo/spacecorsair/engine/GameThread;

    const v2, 0x7f07038d

    const/16 v3, 0x64

    invoke-static {v2, v3}, Lfr/testudo/spacecorsair/game/CharacterDialog;->ofDroid(II)Lfr/testudo/spacecorsair/game/CharacterDialog;

    move-result-object v2

    invoke-virtual {v0, v2}, Lfr/testudo/spacecorsair/engine/GameThread;->showDialog(Lfr/testudo/spacecorsair/game/CharacterDialog;)V

    .line 416
    :cond_22
    invoke-virtual {p1}, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->getGearSpec()Lfr/testudo/spacecorsair/business/loot/stuff/GearSpec;

    move-result-object v0

    iget v0, v0, Lfr/testudo/spacecorsair/business/loot/stuff/GearSpec;->level:I

    iget v2, p0, Lfr/testudo/spacecorsair/business/player/PlayerInfo;->level:I

    if-gt v0, v2, :cond_7a

    const/4 v0, 0x1

    .line 417
    :goto_2d
    sget-object v2, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v2, v2, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v2, v2, Lfr/testudo/spacecorsair/game/Game;->playerCurrentShipInventory:Lfr/testudo/spacecorsair/business/player/Inventory;

    invoke-virtual {v2, p1}, Lfr/testudo/spacecorsair/business/player/Inventory;->canAfford(Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)Z

    move-result v2

    if-eqz v2, :cond_48

    if-eqz v0, :cond_48

    .line 418
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/Game;->playerCurrentShipInventory:Lfr/testudo/spacecorsair/business/player/Inventory;

    invoke-static {p1}, Lfr/testudo/spacecorsair/business/loot/SpaceObject;->of(Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)Lfr/testudo/spacecorsair/business/loot/SpaceObject;

    move-result-object v2

    invoke-virtual {v0, v2}, Lfr/testudo/spacecorsair/business/player/Inventory;->buy(Lfr/testudo/spacecorsair/business/loot/SpaceObject;)V

    .line 423
    :cond_48
    iget v0, p0, Lfr/testudo/spacecorsair/business/player/PlayerInfo;->playerMaxLife:I

    int-to-float v2, v0

    iget-object v0, p0, Lfr/testudo/spacecorsair/business/player/PlayerInfo;->playerGear:Lfr/testudo/spacecorsair/business/player/PlayerGear;

    iget-object v0, v0, Lfr/testudo/spacecorsair/business/player/PlayerGear;->playerShip:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->getGearSpec()Lfr/testudo/spacecorsair/business/loot/stuff/GearSpec;

    move-result-object v0

    check-cast v0, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;

    iget v0, v0, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;->lifeBooster:F

    mul-float/2addr v0, v2

    float-to-int v0, v0

    int-to-long v2, v0

    iput-wide v2, p0, Lfr/testudo/spacecorsair/business/player/PlayerInfo;->curlife:J

    .line 424
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->playerShip:Lfr/testudo/spacecorsair/business/player/PlayerShip;

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/business/player/PlayerShip;->initLife()V

    .line 425
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->playerShip:Lfr/testudo/spacecorsair/business/player/PlayerShip;

    iget-object v0, v0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->shield:Lfr/testudo/spacecorsair/business/player/Shield;

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/business/player/Shield;->instantFullRegen()V

    .line 427
    invoke-virtual {p0, p1, v1}, Lfr/testudo/spacecorsair/business/player/PlayerInfo;->changeShip(Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;Z)V

    .line 429
    invoke-static {p1}, Lfr/testudo/spacecorsair/game/achievements/AchievementEventListener;->onBuyNewShip(Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)V

    .line 430
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->storageManager:Lfr/testudo/spacecorsair/storage/StorageManager;

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/storage/StorageManager;->save()V

    .line 432
    return-void

    :cond_7a
    move v0, v1

    .line 416
    goto :goto_2d
.end method

.method public canCallMobileShop()Z
    .registers 2

    .prologue
    .line 156
    iget v0, p0, Lfr/testudo/spacecorsair/business/player/PlayerInfo;->remainingTimeMobileShop:I

    if-gtz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public canChangeShip()Z
    .registers 2

    .prologue
    .line 403
    iget v0, p0, Lfr/testudo/spacecorsair/business/player/PlayerInfo;->remainingTimeChangeShip:I

    if-gtz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public canConsumeObjectRightNow(Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)Z
    .registers 4

    .prologue
    .line 366
    invoke-virtual {p1}, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->isConsommable()Z

    move-result v0

    if-nez v0, :cond_8

    .line 367
    const/4 v0, 0x0

    .line 379
    :goto_7
    return v0

    .line 369
    :cond_8
    sget-object v0, Lfr/testudo/spacecorsair/business/player/PlayerInfo$1;->$SwitchMap$fr$testudo$spacecorsair$business$loot$SpaceObjectType:[I

    invoke-virtual {p1}, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_20

    .line 379
    const/4 v0, 0x1

    goto :goto_7

    .line 372
    :pswitch_15
    invoke-virtual {p0}, Lfr/testudo/spacecorsair/business/player/PlayerInfo;->canUseInstantRepair()Z

    move-result v0

    goto :goto_7

    .line 376
    :pswitch_1a
    invoke-virtual {p0}, Lfr/testudo/spacecorsair/business/player/PlayerInfo;->canCallMobileShop()Z

    move-result v0

    goto :goto_7

    .line 369
    nop

    :pswitch_data_20
    .packed-switch 0x1
        :pswitch_15
        :pswitch_15
        :pswitch_1a
        :pswitch_1a
    .end packed-switch
.end method

.method public canUseInstantRepair()Z
    .registers 2

    .prologue
    .line 152
    iget v0, p0, Lfr/testudo/spacecorsair/business/player/PlayerInfo;->remainingTimeInstaRepair:I

    if-gtz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public changeShip(Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)V
    .registers 3

    .prologue
    .line 436
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lfr/testudo/spacecorsair/business/player/PlayerInfo;->changeShip(Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;Z)V

    .line 437
    return-void
.end method

.method public changeShip(Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;Z)V
    .registers 5

    .prologue
    .line 442
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/player/PlayerInfo;->availShips:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-virtual {p0}, Lfr/testudo/spacecorsair/business/player/PlayerInfo;->canChangeShip()Z

    move-result v0

    if-nez v0, :cond_11

    if-nez p2, :cond_11

    .line 457
    :cond_10
    :goto_10
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLock;->onShipChanged()V

    return-void

    .line 448
    :cond_11
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/player/PlayerInfo;->playerGear:Lfr/testudo/spacecorsair/business/player/PlayerGear;

    iput-object p1, v0, Lfr/testudo/spacecorsair/business/player/PlayerGear;->playerShip:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    .line 449
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->playerShip:Lfr/testudo/spacecorsair/business/player/PlayerShip;

    iget v0, v0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->lifeInPourc:F

    .line 450
    sget-object v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v1, v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->playerShip:Lfr/testudo/spacecorsair/business/player/PlayerShip;

    invoke-virtual {v1, p1}, Lfr/testudo/spacecorsair/business/player/PlayerShip;->applyChangeShip(Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)V

    .line 451
    const/high16 v1, 0x42c80000    # 100.0f

    div-float/2addr v0, v1

    iget v1, p0, Lfr/testudo/spacecorsair/business/player/PlayerInfo;->playerMaxLife:I

    int-to-float v1, v1

    mul-float/2addr v1, v0

    iget-object v0, p0, Lfr/testudo/spacecorsair/business/player/PlayerInfo;->playerGear:Lfr/testudo/spacecorsair/business/player/PlayerGear;

    iget-object v0, v0, Lfr/testudo/spacecorsair/business/player/PlayerGear;->playerShip:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->getGearSpec()Lfr/testudo/spacecorsair/business/loot/stuff/GearSpec;

    move-result-object v0

    check-cast v0, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;

    iget v0, v0, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;->lifeBooster:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    int-to-long v0, v0

    iput-wide v0, p0, Lfr/testudo/spacecorsair/business/player/PlayerInfo;->curlife:J

    .line 452
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->playerShip:Lfr/testudo/spacecorsair/business/player/PlayerShip;

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/business/player/PlayerShip;->initLife()V

    .line 453
    if-eqz p2, :cond_10

    .line 454
    const v0, 0x7530

    iput v0, p0, Lfr/testudo/spacecorsair/business/player/PlayerInfo;->remainingTimeChangeShip:I

    goto :goto_10
.end method

.method public equipGear(Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)V
    .registers 4

    .prologue
    .line 116
    sget-object v0, Lfr/testudo/spacecorsair/business/player/PlayerInfo$1;->$SwitchMap$fr$testudo$spacecorsair$business$loot$stuff$GearSpec$Type:[I

    invoke-virtual {p1}, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->getGearSpec()Lfr/testudo/spacecorsair/business/loot/stuff/GearSpec;

    move-result-object v1

    iget-object v1, v1, Lfr/testudo/spacecorsair/business/loot/stuff/GearSpec;->gearType:Lfr/testudo/spacecorsair/business/loot/stuff/GearSpec$Type;

    invoke-virtual {v1}, Lfr/testudo/spacecorsair/business/loot/stuff/GearSpec$Type;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_10a

    .line 147
    :goto_11
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->playerShip:Lfr/testudo/spacecorsair/business/player/PlayerShip;

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/business/player/PlayerShip;->applyGear()V

    .line 148
    invoke-static {p1}, Lfr/testudo/spacecorsair/game/achievements/AchievementEventListener;->onPlayerEquipGear(Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)V

    .line 149
    return-void

    .line 119
    :pswitch_1c
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/Game;->playerCurrentShipInventory:Lfr/testudo/spacecorsair/business/player/Inventory;

    sget-object v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v1, v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v1, v1, Lfr/testudo/spacecorsair/game/Game;->playerInfo:Lfr/testudo/spacecorsair/business/player/PlayerInfo;

    iget-object v1, v1, Lfr/testudo/spacecorsair/business/player/PlayerInfo;->playerGear:Lfr/testudo/spacecorsair/business/player/PlayerGear;

    iget-object v1, v1, Lfr/testudo/spacecorsair/business/player/PlayerGear;->shield:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    invoke-static {v1}, Lfr/testudo/spacecorsair/business/loot/SpaceObject;->of(Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)Lfr/testudo/spacecorsair/business/loot/SpaceObject;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/business/player/Inventory;->forceAddObject(Lfr/testudo/spacecorsair/business/loot/SpaceObject;)V

    .line 120
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/Game;->playerInfo:Lfr/testudo/spacecorsair/business/player/PlayerInfo;

    iget-object v0, v0, Lfr/testudo/spacecorsair/business/player/PlayerInfo;->playerGear:Lfr/testudo/spacecorsair/business/player/PlayerGear;

    iput-object p1, v0, Lfr/testudo/spacecorsair/business/player/PlayerGear;->shield:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    .line 121
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/Game;->playerCurrentShipInventory:Lfr/testudo/spacecorsair/business/player/Inventory;

    invoke-static {p1}, Lfr/testudo/spacecorsair/business/loot/SpaceObject;->of(Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)Lfr/testudo/spacecorsair/business/loot/SpaceObject;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/business/player/Inventory;->removeObject(Lfr/testudo/spacecorsair/business/loot/SpaceObject;)V

    goto :goto_11

    .line 125
    :pswitch_4b
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/Game;->playerCurrentShipInventory:Lfr/testudo/spacecorsair/business/player/Inventory;

    sget-object v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v1, v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v1, v1, Lfr/testudo/spacecorsair/game/Game;->playerInfo:Lfr/testudo/spacecorsair/business/player/PlayerInfo;

    iget-object v1, v1, Lfr/testudo/spacecorsair/business/player/PlayerInfo;->playerGear:Lfr/testudo/spacecorsair/business/player/PlayerGear;

    iget-object v1, v1, Lfr/testudo/spacecorsair/business/player/PlayerGear;->laser:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    invoke-static {v1}, Lfr/testudo/spacecorsair/business/loot/SpaceObject;->of(Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)Lfr/testudo/spacecorsair/business/loot/SpaceObject;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/business/player/Inventory;->forceAddObject(Lfr/testudo/spacecorsair/business/loot/SpaceObject;)V

    .line 126
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/Game;->playerInfo:Lfr/testudo/spacecorsair/business/player/PlayerInfo;

    iget-object v0, v0, Lfr/testudo/spacecorsair/business/player/PlayerInfo;->playerGear:Lfr/testudo/spacecorsair/business/player/PlayerGear;

    iput-object p1, v0, Lfr/testudo/spacecorsair/business/player/PlayerGear;->laser:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    .line 127
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/Game;->playerCurrentShipInventory:Lfr/testudo/spacecorsair/business/player/Inventory;

    invoke-static {p1}, Lfr/testudo/spacecorsair/business/loot/SpaceObject;->of(Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)Lfr/testudo/spacecorsair/business/loot/SpaceObject;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/business/player/Inventory;->removeObject(Lfr/testudo/spacecorsair/business/loot/SpaceObject;)V

    goto :goto_11

    .line 130
    :pswitch_7a
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/Game;->playerCurrentShipInventory:Lfr/testudo/spacecorsair/business/player/Inventory;

    sget-object v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v1, v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v1, v1, Lfr/testudo/spacecorsair/game/Game;->playerInfo:Lfr/testudo/spacecorsair/business/player/PlayerInfo;

    iget-object v1, v1, Lfr/testudo/spacecorsair/business/player/PlayerInfo;->playerGear:Lfr/testudo/spacecorsair/business/player/PlayerGear;

    iget-object v1, v1, Lfr/testudo/spacecorsair/business/player/PlayerGear;->booster:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    invoke-static {v1}, Lfr/testudo/spacecorsair/business/loot/SpaceObject;->of(Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)Lfr/testudo/spacecorsair/business/loot/SpaceObject;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/business/player/Inventory;->forceAddObject(Lfr/testudo/spacecorsair/business/loot/SpaceObject;)V

    .line 131
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/Game;->playerInfo:Lfr/testudo/spacecorsair/business/player/PlayerInfo;

    iget-object v0, v0, Lfr/testudo/spacecorsair/business/player/PlayerInfo;->playerGear:Lfr/testudo/spacecorsair/business/player/PlayerGear;

    iput-object p1, v0, Lfr/testudo/spacecorsair/business/player/PlayerGear;->booster:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    .line 132
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/Game;->playerCurrentShipInventory:Lfr/testudo/spacecorsair/business/player/Inventory;

    invoke-static {p1}, Lfr/testudo/spacecorsair/business/loot/SpaceObject;->of(Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)Lfr/testudo/spacecorsair/business/loot/SpaceObject;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/business/player/Inventory;->removeObject(Lfr/testudo/spacecorsair/business/loot/SpaceObject;)V

    goto/16 :goto_11

    .line 135
    :pswitch_aa
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/Game;->playerCurrentShipInventory:Lfr/testudo/spacecorsair/business/player/Inventory;

    sget-object v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v1, v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v1, v1, Lfr/testudo/spacecorsair/game/Game;->playerInfo:Lfr/testudo/spacecorsair/business/player/PlayerInfo;

    iget-object v1, v1, Lfr/testudo/spacecorsair/business/player/PlayerInfo;->playerGear:Lfr/testudo/spacecorsair/business/player/PlayerGear;

    iget-object v1, v1, Lfr/testudo/spacecorsair/business/player/PlayerGear;->hyperdriveEngine:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    invoke-static {v1}, Lfr/testudo/spacecorsair/business/loot/SpaceObject;->of(Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)Lfr/testudo/spacecorsair/business/loot/SpaceObject;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/business/player/Inventory;->forceAddObject(Lfr/testudo/spacecorsair/business/loot/SpaceObject;)V

    .line 136
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/Game;->playerInfo:Lfr/testudo/spacecorsair/business/player/PlayerInfo;

    iget-object v0, v0, Lfr/testudo/spacecorsair/business/player/PlayerInfo;->playerGear:Lfr/testudo/spacecorsair/business/player/PlayerGear;

    iput-object p1, v0, Lfr/testudo/spacecorsair/business/player/PlayerGear;->hyperdriveEngine:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    .line 137
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/Game;->playerCurrentShipInventory:Lfr/testudo/spacecorsair/business/player/Inventory;

    invoke-static {p1}, Lfr/testudo/spacecorsair/business/loot/SpaceObject;->of(Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)Lfr/testudo/spacecorsair/business/loot/SpaceObject;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/business/player/Inventory;->removeObject(Lfr/testudo/spacecorsair/business/loot/SpaceObject;)V

    goto/16 :goto_11

    .line 140
    :pswitch_da
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/Game;->playerCurrentShipInventory:Lfr/testudo/spacecorsair/business/player/Inventory;

    sget-object v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v1, v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v1, v1, Lfr/testudo/spacecorsair/game/Game;->playerInfo:Lfr/testudo/spacecorsair/business/player/PlayerInfo;

    iget-object v1, v1, Lfr/testudo/spacecorsair/business/player/PlayerInfo;->playerGear:Lfr/testudo/spacecorsair/business/player/PlayerGear;

    iget-object v1, v1, Lfr/testudo/spacecorsair/business/player/PlayerGear;->missile:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    invoke-static {v1}, Lfr/testudo/spacecorsair/business/loot/SpaceObject;->of(Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)Lfr/testudo/spacecorsair/business/loot/SpaceObject;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/business/player/Inventory;->forceAddObject(Lfr/testudo/spacecorsair/business/loot/SpaceObject;)V

    .line 141
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/Game;->playerInfo:Lfr/testudo/spacecorsair/business/player/PlayerInfo;

    iget-object v0, v0, Lfr/testudo/spacecorsair/business/player/PlayerInfo;->playerGear:Lfr/testudo/spacecorsair/business/player/PlayerGear;

    iput-object p1, v0, Lfr/testudo/spacecorsair/business/player/PlayerGear;->missile:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    .line 142
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/Game;->playerCurrentShipInventory:Lfr/testudo/spacecorsair/business/player/Inventory;

    invoke-static {p1}, Lfr/testudo/spacecorsair/business/loot/SpaceObject;->of(Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)Lfr/testudo/spacecorsair/business/loot/SpaceObject;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/business/player/Inventory;->removeObject(Lfr/testudo/spacecorsair/business/loot/SpaceObject;)V

    goto/16 :goto_11

    .line 116
    :pswitch_data_10a
    .packed-switch 0x1
        :pswitch_1c
        :pswitch_4b
        :pswitch_7a
        :pswitch_aa
        :pswitch_da
    .end packed-switch
.end method

.method public equipObject(Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)V
    .registers 4

    .prologue
    invoke-static {p1}, Lfr/testudo/spacecorsair/mod/ModLock;->canEquip(Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)Z
    move-result v0
    if-nez v0, :mod_can_equip
    return-void
    :mod_can_equip

    .line 353
    sget-object v0, Lfr/testudo/spacecorsair/business/player/PlayerInfo$1;->$SwitchMap$fr$testudo$spacecorsair$business$loot$stuff$GearSpec$Type:[I

    invoke-virtual {p1}, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->getGearSpec()Lfr/testudo/spacecorsair/business/loot/stuff/GearSpec;

    move-result-object v1

    iget-object v1, v1, Lfr/testudo/spacecorsair/business/loot/stuff/GearSpec;->gearType:Lfr/testudo/spacecorsair/business/loot/stuff/GearSpec$Type;

    invoke-virtual {v1}, Lfr/testudo/spacecorsair/business/loot/stuff/GearSpec$Type;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_1c

    .line 363
    :goto_11
    return-void

    .line 360
    :pswitch_12
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/Game;->playerInfo:Lfr/testudo/spacecorsair/business/player/PlayerInfo;

    invoke-virtual {v0, p1}, Lfr/testudo/spacecorsair/business/player/PlayerInfo;->equipGear(Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)V

    goto :goto_11

    .line 353
    :pswitch_data_1c
    .packed-switch 0x1
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
    .end packed-switch
.end method

.method public getLevel1()V
    .registers 5

    .prologue
    .line 218
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/Game;->playerCurrentShipInventory:Lfr/testudo/spacecorsair/business/player/Inventory;

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/business/player/Inventory;->clearItems()V

    .line 219
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->noMissileMod:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    invoke-virtual {p0, v0}, Lfr/testudo/spacecorsair/business/player/PlayerInfo;->equipGear(Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)V

    .line 220
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->basicShieldLevel1:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    invoke-virtual {p0, v0}, Lfr/testudo/spacecorsair/business/player/PlayerInfo;->equipGear(Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)V

    .line 221
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->standardLaserLevel1WithCrit:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    invoke-virtual {p0, v0}, Lfr/testudo/spacecorsair/business/player/PlayerInfo;->equipGear(Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)V

    .line 222
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/Game;->playerCurrentShipInventory:Lfr/testudo/spacecorsair/business/player/Inventory;

    new-instance v1, Lfr/testudo/spacecorsair/business/loot/SpaceObject;

    sget-object v2, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->missile:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    const/4 v3, 0x2

    invoke-direct {v1, v2, v3}, Lfr/testudo/spacecorsair/business/loot/SpaceObject;-><init>(Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;I)V

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/business/player/Inventory;->addObject(Lfr/testudo/spacecorsair/business/loot/SpaceObject;)Z

    .line 223
    const/4 v0, 0x1

    iput v0, p0, Lfr/testudo/spacecorsair/business/player/PlayerInfo;->level:I

    .line 225
    return-void
.end method

.method public getNotUsableLocalizedReason(Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)Ljava/lang/String;
    .registers 5

    .prologue
    const v2, 0x7f07035f

    .line 384
    invoke-virtual {p1}, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->isConsommable()Z

    move-result v0

    if-nez v0, :cond_c

    .line 385
    const-string v0, ""

    .line 397
    :goto_b
    return-object v0

    .line 387
    :cond_c
    sget-object v0, Lfr/testudo/spacecorsair/business/player/PlayerInfo$1;->$SwitchMap$fr$testudo$spacecorsair$business$loot$SpaceObjectType:[I

    invoke-virtual {p1}, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_5e

    .line 397
    const-string v0, ""

    goto :goto_b

    .line 390
    :pswitch_1a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    invoke-virtual {v1, v2}, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->getLocalizedString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lfr/testudo/spacecorsair/business/player/PlayerInfo;->remainingTimeInstaRepair:I

    div-int/lit16 v1, v1, 0x3e8

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " s)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_b

    .line 393
    :pswitch_3c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    invoke-virtual {v1, v2}, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->getLocalizedString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lfr/testudo/spacecorsair/business/player/PlayerInfo;->remainingTimeMobileShop:I

    div-int/lit16 v1, v1, 0x3e8

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " s)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_b

    .line 387
    :pswitch_data_5e
    .packed-switch 0x1
        :pswitch_1a
        :pswitch_1a
        :pswitch_3c
        :pswitch_3c
    .end packed-switch
.end method

.method public godModeLevel3()V
    .registers 5

    .prologue
    .line 229
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/Game;->playerCurrentShipInventory:Lfr/testudo/spacecorsair/business/player/Inventory;

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/business/player/Inventory;->clearItems()V

    .line 230
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->torpedoMissileLevel3:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    invoke-virtual {p0, v0}, Lfr/testudo/spacecorsair/business/player/PlayerInfo;->equipGear(Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)V

    .line 231
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->decentShieldLevel3:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    invoke-virtual {p0, v0}, Lfr/testudo/spacecorsair/business/player/PlayerInfo;->equipGear(Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)V

    .line 232
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->exceptionalLaserLevel3:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    invoke-virtual {p0, v0}, Lfr/testudo/spacecorsair/business/player/PlayerInfo;->equipGear(Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)V

    .line 233
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/Game;->playerCurrentShipInventory:Lfr/testudo/spacecorsair/business/player/Inventory;

    new-instance v1, Lfr/testudo/spacecorsair/business/loot/SpaceObject;

    sget-object v2, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->missile:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    const/4 v3, 0x2

    invoke-direct {v1, v2, v3}, Lfr/testudo/spacecorsair/business/loot/SpaceObject;-><init>(Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;I)V

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/business/player/Inventory;->addObject(Lfr/testudo/spacecorsair/business/loot/SpaceObject;)Z

    .line 234
    const/4 v0, 0x3

    iput v0, p0, Lfr/testudo/spacecorsair/business/player/PlayerInfo;->level:I

    .line 237
    return-void
.end method

.method public godModeLevel6()V
    .registers 5

    .prologue
    .line 241
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/Game;->playerCurrentShipInventory:Lfr/testudo/spacecorsair/business/player/Inventory;

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/business/player/Inventory;->clearItems()V

    .line 242
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->decentShieldLevel6:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    invoke-virtual {p0, v0}, Lfr/testudo/spacecorsair/business/player/PlayerInfo;->equipGear(Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)V

    .line 243
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->torpedoMissileLevel6:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    invoke-virtual {p0, v0}, Lfr/testudo/spacecorsair/business/player/PlayerInfo;->equipGear(Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)V

    .line 244
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->exceptionalLaserLevel6:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    invoke-virtual {p0, v0}, Lfr/testudo/spacecorsair/business/player/PlayerInfo;->equipGear(Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)V

    .line 245
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/Game;->playerCurrentShipInventory:Lfr/testudo/spacecorsair/business/player/Inventory;

    new-instance v1, Lfr/testudo/spacecorsair/business/loot/SpaceObject;

    sget-object v2, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->missile:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    const/4 v3, 0x2

    invoke-direct {v1, v2, v3}, Lfr/testudo/spacecorsair/business/loot/SpaceObject;-><init>(Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;I)V

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/business/player/Inventory;->addObject(Lfr/testudo/spacecorsair/business/loot/SpaceObject;)Z

    .line 248
    const/4 v0, 0x6

    iput v0, p0, Lfr/testudo/spacecorsair/business/player/PlayerInfo;->level:I

    .line 249
    return-void
.end method

.method public godModeLevel9()V
    .registers 5

    .prologue
    .line 253
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->spartanBlockerLevel8:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    invoke-virtual {p0, v0}, Lfr/testudo/spacecorsair/business/player/PlayerInfo;->equipGear(Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)V

    .line 254
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->torpedoMissileLevel9:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    invoke-virtual {p0, v0}, Lfr/testudo/spacecorsair/business/player/PlayerInfo;->equipGear(Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)V

    .line 255
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->exceptionalLaserLevel9:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    invoke-virtual {p0, v0}, Lfr/testudo/spacecorsair/business/player/PlayerInfo;->equipGear(Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)V

    .line 256
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/Game;->playerCurrentShipInventory:Lfr/testudo/spacecorsair/business/player/Inventory;

    new-instance v1, Lfr/testudo/spacecorsair/business/loot/SpaceObject;

    sget-object v2, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->missile:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    const/4 v3, 0x4

    invoke-direct {v1, v2, v3}, Lfr/testudo/spacecorsair/business/loot/SpaceObject;-><init>(Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;I)V

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/business/player/Inventory;->addObject(Lfr/testudo/spacecorsair/business/loot/SpaceObject;)Z

    .line 259
    const/16 v0, 0x9

    iput v0, p0, Lfr/testudo/spacecorsair/business/player/PlayerInfo;->level:I

    .line 260
    return-void
.end method

.method public godModeMissile()V
    .registers 5

    .prologue
    .line 264
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->torpedoMissileLevel6:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    invoke-virtual {p0, v0}, Lfr/testudo/spacecorsair/business/player/PlayerInfo;->equipGear(Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)V

    .line 265
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/Game;->playerCurrentShipInventory:Lfr/testudo/spacecorsair/business/player/Inventory;

    new-instance v1, Lfr/testudo/spacecorsair/business/loot/SpaceObject;

    sget-object v2, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->missile:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    const/4 v3, 0x4

    invoke-direct {v1, v2, v3}, Lfr/testudo/spacecorsair/business/loot/SpaceObject;-><init>(Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;I)V

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/business/player/Inventory;->addObject(Lfr/testudo/spacecorsair/business/loot/SpaceObject;)Z

    .line 268
    return-void
.end method

.method public init()V
    .registers 3

    .prologue
    .line 202
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Level "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lfr/testudo/spacecorsair/business/player/PlayerInfo;->level:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lfr/testudo/spacecorsair/business/player/PlayerInfo;->playerLevelText:Ljava/lang/String;

    .line 203
    iget v0, p0, Lfr/testudo/spacecorsair/business/player/PlayerInfo;->level:I

    invoke-static {v0}, Lfr/testudo/spacecorsair/business/player/XpBuilder;->getNextLevelXp(I)J

    move-result-wide v0

    iput-wide v0, p0, Lfr/testudo/spacecorsair/business/player/PlayerInfo;->nextLevelXp:J

    .line 204
    sget-object v0, Lfr/testudo/spacecorsair/business/player/XpBuilder;->PLAYER_SHIP_LIFE:[I

    iget v1, p0, Lfr/testudo/spacecorsair/business/player/PlayerInfo;->level:I

    aget v0, v0, v1

    iput v0, p0, Lfr/testudo/spacecorsair/business/player/PlayerInfo;->playerMaxLife:I

    .line 205
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/player/PlayerInfo;->availShips:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_36

    .line 207
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/player/PlayerInfo;->availShips:Ljava/util/List;

    sget-object v1, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->defaultPlayerShip:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 210
    :cond_36
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/player/PlayerInfo;->multiPlayerGear:Lfr/testudo/spacecorsair/business/player/PlayerGear;

    if-nez v0, :cond_40

    .line 212
    invoke-static {}, Lfr/testudo/spacecorsair/business/player/PlayerGear;->getMulti()Lfr/testudo/spacecorsair/business/player/PlayerGear;

    move-result-object v0

    iput-object v0, p0, Lfr/testudo/spacecorsair/business/player/PlayerInfo;->multiPlayerGear:Lfr/testudo/spacecorsair/business/player/PlayerGear;

    .line 214
    :cond_40
    return-void
.end method

.method public onTime(J)V
    .registers 6

    .prologue
    .line 190
    iget v0, p0, Lfr/testudo/spacecorsair/business/player/PlayerInfo;->remainingTimeInstaRepair:I

    if-lez v0, :cond_b

    .line 191
    iget v0, p0, Lfr/testudo/spacecorsair/business/player/PlayerInfo;->remainingTimeInstaRepair:I

    int-to-long v0, v0

    sub-long/2addr v0, p1

    long-to-int v0, v0

    iput v0, p0, Lfr/testudo/spacecorsair/business/player/PlayerInfo;->remainingTimeInstaRepair:I

    .line 193
    :cond_b
    iget v0, p0, Lfr/testudo/spacecorsair/business/player/PlayerInfo;->remainingTimeMobileShop:I

    if-lez v0, :cond_16

    .line 194
    iget v0, p0, Lfr/testudo/spacecorsair/business/player/PlayerInfo;->remainingTimeMobileShop:I

    int-to-long v0, v0

    sub-long/2addr v0, p1

    long-to-int v0, v0

    iput v0, p0, Lfr/testudo/spacecorsair/business/player/PlayerInfo;->remainingTimeMobileShop:I

    .line 196
    :cond_16
    iget v0, p0, Lfr/testudo/spacecorsair/business/player/PlayerInfo;->remainingTimeChangeShip:I

    if-lez v0, :cond_21

    .line 197
    iget v0, p0, Lfr/testudo/spacecorsair/business/player/PlayerInfo;->remainingTimeChangeShip:I

    int-to-long v0, v0

    sub-long/2addr v0, p1

    long-to-int v0, v0

    iput v0, p0, Lfr/testudo/spacecorsair/business/player/PlayerInfo;->remainingTimeChangeShip:I

    .line 199
    :cond_21
    return-void
.end method

.method public onUsedCallMobileStation()V
    .registers 3

    .prologue
    .line 160
    invoke-virtual {p0}, Lfr/testudo/spacecorsair/business/player/PlayerInfo;->canCallMobileShop()Z

    move-result v0

    if-eqz v0, :cond_26

    .line 161
    const v0, 0xea60

    iput v0, p0, Lfr/testudo/spacecorsair/business/player/PlayerInfo;->remainingTimeMobileShop:I

    .line 162
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    invoke-static {}, Lfr/testudo/spacecorsair/business/factory/GamePools;->newMobileShopShip()Lfr/testudo/spacecorsair/business/world/civil/MobileShopShip;

    move-result-object v1

    invoke-virtual {v1}, Lfr/testudo/spacecorsair/business/world/civil/MobileShopShip;->init()Lfr/testudo/spacecorsair/business/world/civil/MobileShopShip;

    move-result-object v1

    invoke-virtual {v1}, Lfr/testudo/spacecorsair/business/world/civil/MobileShopShip;->setClosestPortalAsIncomingSource()Lfr/testudo/spacecorsair/business/world/civil/MobileShopShip;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->queueElementToBeAddToLevel(Lfr/testudo/spacecorsair/business/Element;)V

    .line 163
    invoke-static {}, Lfr/testudo/spacecorsair/game/achievements/AchievementEventListener;->onMobileShopCalled()V

    .line 164
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->soundManager:Lfr/testudo/spacecorsair/engine/SoundManager;

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/engine/SoundManager;->playSignalTransfert()V

    .line 166
    :cond_26
    return-void
.end method

.method public onUsedInstantRepair()V
    .registers 3

    .prologue
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModShield;->onRepair()V

    .line 169
    invoke-virtual {p0}, Lfr/testudo/spacecorsair/business/player/PlayerInfo;->canUseInstantRepair()Z

    move-result v0

    if-eqz v0, :cond_29

    .line 170
    iget v0, p0, Lfr/testudo/spacecorsair/business/player/PlayerInfo;->playerMaxLife:I

    int-to-float v1, v0

    iget-object v0, p0, Lfr/testudo/spacecorsair/business/player/PlayerInfo;->playerGear:Lfr/testudo/spacecorsair/business/player/PlayerGear;

    iget-object v0, v0, Lfr/testudo/spacecorsair/business/player/PlayerGear;->playerShip:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->getGearSpec()Lfr/testudo/spacecorsair/business/loot/stuff/GearSpec;

    move-result-object v0

    check-cast v0, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;

    iget v0, v0, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;->lifeBooster:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    int-to-long v0, v0

    iput-wide v0, p0, Lfr/testudo/spacecorsair/business/player/PlayerInfo;->curlife:J

    .line 171
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->playerShip:Lfr/testudo/spacecorsair/business/player/PlayerShip;

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/business/player/PlayerShip;->initLife()V

    .line 172
    const v0, 0x2bf20

    iput v0, p0, Lfr/testudo/spacecorsair/business/player/PlayerInfo;->remainingTimeInstaRepair:I

    .line 173
    invoke-static {}, Lfr/testudo/spacecorsair/game/achievements/AchievementEventListener;->onPlayerUseInstaRepair()V

    .line 176
    :cond_29
    return-void
.end method

.method public onUsedInstantRepairDeluxe()V
    .registers 3

    .prologue
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModShield;->onRepair()V

    .line 179
    invoke-virtual {p0}, Lfr/testudo/spacecorsair/business/player/PlayerInfo;->canUseInstantRepair()Z

    move-result v0

    if-eqz v0, :cond_32

    .line 180
    iget v0, p0, Lfr/testudo/spacecorsair/business/player/PlayerInfo;->playerMaxLife:I

    int-to-float v1, v0

    iget-object v0, p0, Lfr/testudo/spacecorsair/business/player/PlayerInfo;->playerGear:Lfr/testudo/spacecorsair/business/player/PlayerGear;

    iget-object v0, v0, Lfr/testudo/spacecorsair/business/player/PlayerGear;->playerShip:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->getGearSpec()Lfr/testudo/spacecorsair/business/loot/stuff/GearSpec;

    move-result-object v0

    check-cast v0, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;

    iget v0, v0, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;->lifeBooster:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    int-to-long v0, v0

    iput-wide v0, p0, Lfr/testudo/spacecorsair/business/player/PlayerInfo;->curlife:J

    .line 181
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->playerShip:Lfr/testudo/spacecorsair/business/player/PlayerShip;

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/business/player/PlayerShip;->initLife()V

    .line 182
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->playerShip:Lfr/testudo/spacecorsair/business/player/PlayerShip;

    iget-object v0, v0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->shield:Lfr/testudo/spacecorsair/business/player/Shield;

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/business/player/Shield;->instantFullRegen()V

    .line 183
    const v0, 0x2bf20

    iput v0, p0, Lfr/testudo/spacecorsair/business/player/PlayerInfo;->remainingTimeInstaRepair:I

    .line 184
    invoke-static {}, Lfr/testudo/spacecorsair/game/achievements/AchievementEventListener;->onPlayerUseInstaRepair()V

    .line 187
    :cond_32
    return-void
.end method

.method public repairShipInPourc(I)I
    .registers 6

    .prologue
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModShield;->onRepair()V

    const/high16 v3, 0x42c80000    # 100.0f

    .line 461
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->playerShip:Lfr/testudo/spacecorsair/business/player/PlayerShip;

    iget v1, v0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->lifeInPourc:F

    int-to-float v2, p1

    add-float/2addr v1, v2

    iput v1, v0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->lifeInPourc:F

    .line 462
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->playerShip:Lfr/testudo/spacecorsair/business/player/PlayerShip;

    iget v0, v0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->lifeInPourc:F

    cmpl-float v0, v0, v3

    if-lez v0, :cond_1c

    .line 463
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->playerShip:Lfr/testudo/spacecorsair/business/player/PlayerShip;

    iput v3, v0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->lifeInPourc:F

    .line 465
    :cond_1c
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->playerShip:Lfr/testudo/spacecorsair/business/player/PlayerShip;

    iget v0, v0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->life:F

    float-to-int v1, v0

    .line 466
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->playerShip:Lfr/testudo/spacecorsair/business/player/PlayerShip;

    iget v0, v0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->lifeInPourc:F

    div-float/2addr v0, v3

    iget v2, p0, Lfr/testudo/spacecorsair/business/player/PlayerInfo;->playerMaxLife:I

    int-to-float v2, v2

    mul-float/2addr v2, v0

    iget-object v0, p0, Lfr/testudo/spacecorsair/business/player/PlayerInfo;->playerGear:Lfr/testudo/spacecorsair/business/player/PlayerGear;

    iget-object v0, v0, Lfr/testudo/spacecorsair/business/player/PlayerGear;->playerShip:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->getGearSpec()Lfr/testudo/spacecorsair/business/loot/stuff/GearSpec;

    move-result-object v0

    check-cast v0, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;

    iget v0, v0, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;->lifeBooster:F

    mul-float/2addr v0, v2

    float-to-int v0, v0

    int-to-long v2, v0

    iput-wide v2, p0, Lfr/testudo/spacecorsair/business/player/PlayerInfo;->curlife:J

    .line 467
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->playerShip:Lfr/testudo/spacecorsair/business/player/PlayerShip;

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/business/player/PlayerShip;->initLife()V

    .line 468
    iget-wide v2, p0, Lfr/testudo/spacecorsair/business/player/PlayerInfo;->curlife:J

    long-to-int v0, v2

    sub-int/2addr v0, v1

    .line 469
    return v0
.end method

.method public unlockMapMode(Landroid/content/Context;Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)V
    .registers 5

    .prologue
    .line 343
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->levelProperties:Lfr/testudo/spacecorsair/game/levels/LevelsGlobalProperties;

    invoke-virtual {v0, p2}, Lfr/testudo/spacecorsair/game/levels/LevelsGlobalProperties;->isMapOrTreasureUnlocked(Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)Z

    move-result v0

    if-nez v0, :cond_2e

    .line 344
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->levelProperties:Lfr/testudo/spacecorsair/game/levels/LevelsGlobalProperties;

    invoke-virtual {v0, p2}, Lfr/testudo/spacecorsair/game/levels/LevelsGlobalProperties;->setMapUnlocked(Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)V

    .line 346
    const v0, 0x7f0702bb

    const/4 v1, 0x5

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 347
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/Game;->currentLevel:Lfr/testudo/spacecorsair/game/levels/Level;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/levels/Level;->animator:Lfr/testudo/spacecorsair/game/levels/LevelAnimator;

    invoke-virtual {v0, p2}, Lfr/testudo/spacecorsair/game/levels/LevelAnimator;->onSecretMapReveleaed(Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)V

    .line 348
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->soundManager:Lfr/testudo/spacecorsair/engine/SoundManager;

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/engine/SoundManager;->playMapRevealed()V

    .line 350
    :cond_2e
    return-void
.end method

.method public updateCurLife(I)V
    .registers 4

    .prologue
    .line 296
    int-to-long v0, p1

    iput-wide v0, p0, Lfr/testudo/spacecorsair/business/player/PlayerInfo;->curlife:J

    .line 297
    return-void
.end method

.method public updateLastLevelVisited(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 300
    iput-object p1, p0, Lfr/testudo/spacecorsair/business/player/PlayerInfo;->lastLevelLoaded:Ljava/lang/String;

    .line 301
    iput-object p2, p0, Lfr/testudo/spacecorsair/business/player/PlayerInfo;->lastUsedGateName:Ljava/lang/String;

    .line 302
    return-void
.end method

.method public useObject(Landroid/content/Context;Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)V
    .registers 7

    .prologue
    const v3, 0x7f07035e

    const/4 v2, 0x4

    .line 307
    invoke-virtual {p2}, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->isMap()Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 308
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/Game;->playerCurrentShipInventory:Lfr/testudo/spacecorsair/business/player/Inventory;

    invoke-virtual {v0, p2}, Lfr/testudo/spacecorsair/business/player/Inventory;->containObject(Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 309
    invoke-virtual {p0, p1, p2}, Lfr/testudo/spacecorsair/business/player/PlayerInfo;->unlockMapMode(Landroid/content/Context;Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)V

    .line 337
    :cond_19
    :goto_19
    return-void

    .line 312
    :cond_1a
    sget-object v0, Lfr/testudo/spacecorsair/business/player/PlayerInfo$1;->$SwitchMap$fr$testudo$spacecorsair$business$loot$SpaceObjectType:[I

    invoke-virtual {p2}, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_7a

    goto :goto_19

    .line 314
    :pswitch_26
    invoke-virtual {p0}, Lfr/testudo/spacecorsair/business/player/PlayerInfo;->onUsedInstantRepair()V

    .line 315
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/Game;->playerCurrentShipInventory:Lfr/testudo/spacecorsair/business/player/Inventory;

    invoke-virtual {v0, p2}, Lfr/testudo/spacecorsair/business/player/Inventory;->removeOne(Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)V

    .line 316
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->mainActivity:Lfr/testudo/spacecorsair/activity/Main;

    const v1, 0x7f070282

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_19

    .line 320
    :pswitch_41
    invoke-virtual {p0}, Lfr/testudo/spacecorsair/business/player/PlayerInfo;->onUsedInstantRepairDeluxe()V

    .line 321
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->mainActivity:Lfr/testudo/spacecorsair/activity/Main;

    const v1, 0x7f070283

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_19

    .line 325
    :pswitch_53
    invoke-virtual {p0}, Lfr/testudo/spacecorsair/business/player/PlayerInfo;->onUsedCallMobileStation()V

    .line 326
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/Game;->playerCurrentShipInventory:Lfr/testudo/spacecorsair/business/player/Inventory;

    invoke-virtual {v0, p2}, Lfr/testudo/spacecorsair/business/player/Inventory;->removeOne(Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)V

    .line 327
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->mainActivity:Lfr/testudo/spacecorsair/activity/Main;

    invoke-static {v0, v3, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_19

    .line 331
    :pswitch_6b
    invoke-virtual {p0}, Lfr/testudo/spacecorsair/business/player/PlayerInfo;->onUsedCallMobileStation()V

    .line 332
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->mainActivity:Lfr/testudo/spacecorsair/activity/Main;

    invoke-static {v0, v3, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_19

    .line 312
    :pswitch_data_7a
    .packed-switch 0x1
        :pswitch_26
        :pswitch_41
        :pswitch_53
        :pswitch_6b
    .end packed-switch
.end method
