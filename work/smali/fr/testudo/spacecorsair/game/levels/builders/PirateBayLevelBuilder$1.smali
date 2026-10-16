.class final Lfr/testudo/spacecorsair/game/levels/builders/PirateBayLevelBuilder$1;
.super Lfr/testudo/spacecorsair/game/levels/LevelAnimator;
.source "SourceFile"


# instance fields
.field private remainingPopStation1:I

.field private remainingPopStation2:I

.field private remainingPopStation3:I


# direct methods
.method constructor <init>()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 400
    invoke-direct {p0}, Lfr/testudo/spacecorsair/game/levels/LevelAnimator;-><init>()V

    .line 402
    iput v0, p0, Lfr/testudo/spacecorsair/game/levels/builders/PirateBayLevelBuilder$1;->remainingPopStation1:I

    .line 403
    iput v0, p0, Lfr/testudo/spacecorsair/game/levels/builders/PirateBayLevelBuilder$1;->remainingPopStation2:I

    .line 404
    iput v0, p0, Lfr/testudo/spacecorsair/game/levels/builders/PirateBayLevelBuilder$1;->remainingPopStation3:I

    return-void
.end method

.method private checkPopEnnemisStation(Lfr/testudo/spacecorsair/business/world/station/DestroyablePirateStation;Lfr/testudo/spacecorsair/game/levels/builders/PirateBayLevelBuilder$StationNum;)V
    .registers 9

    .prologue
    const-wide/high16 v4, 0x4010000000000000L    # 4.0

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    .line 418
    if-eqz p1, :cond_24

    const/4 v0, 0x1

    :goto_7
    iget-boolean v1, p1, Lfr/testudo/spacecorsair/business/world/station/DestroyablePirateStation;->removed:Z

    and-int/2addr v0, v1

    if-eqz v0, :cond_d

    .line 419
    const/4 p1, 0x0

    .line 421
    :cond_d
    if-eqz p1, :cond_23

    iget v0, p1, Lfr/testudo/spacecorsair/business/world/station/DestroyablePirateStation;->distanceToPlayer:F

    const v1, 0x455ac000    # 3500.0f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_23

    .line 422
    sget-object v0, Lfr/testudo/spacecorsair/game/levels/builders/PirateBayLevelBuilder$2;->$SwitchMap$fr$testudo$spacecorsair$game$levels$builders$PirateBayLevelBuilder$StationNum:[I

    invoke-virtual {p2}, Lfr/testudo/spacecorsair/game/levels/builders/PirateBayLevelBuilder$StationNum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_44

    .line 436
    :cond_23
    :goto_23
    return-void

    .line 418
    :cond_24
    const/4 v0, 0x0

    goto :goto_7

    .line 425
    :pswitch_26
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v0

    mul-double/2addr v0, v4

    add-double/2addr v0, v2

    double-to-int v0, v0

    iput v0, p0, Lfr/testudo/spacecorsair/game/levels/builders/PirateBayLevelBuilder$1;->remainingPopStation1:I

    goto :goto_23

    .line 428
    :pswitch_30
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v0

    mul-double/2addr v0, v4

    add-double/2addr v0, v2

    double-to-int v0, v0

    iput v0, p0, Lfr/testudo/spacecorsair/game/levels/builders/PirateBayLevelBuilder$1;->remainingPopStation2:I

    goto :goto_23

    .line 431
    :pswitch_3a
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v0

    mul-double/2addr v0, v4

    add-double/2addr v0, v2

    double-to-int v0, v0

    iput v0, p0, Lfr/testudo/spacecorsair/game/levels/builders/PirateBayLevelBuilder$1;->remainingPopStation3:I

    goto :goto_23

    .line 422
    :pswitch_data_44
    .packed-switch 0x1
        :pswitch_26
        :pswitch_30
        :pswitch_3a
    .end packed-switch
.end method

.method private popEnnemiesFromStation(Lfr/testudo/spacecorsair/game/levels/builders/PirateBayLevelBuilder$StationNum;I)V
    .registers 11

    .prologue
    const/16 v7, 0x8

    const/4 v6, 0x5

    .line 470
    sget-object v0, Lfr/testudo/spacecorsair/business/world/station/DestroyablePirateStation;->stationRelativePop:[Lfr/testudo/spacecorsair/engine/PopPoint;

    sget-object v1, Lfr/testudo/spacecorsair/business/world/station/DestroyablePirateStation;->stationRelativePop:[Lfr/testudo/spacecorsair/engine/PopPoint;

    array-length v1, v1

    rem-int v1, p2, v1

    aget-object v1, v0, v1

    .line 473
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v2

    const-wide v4, 0x3fe4cccccccccccdL    # 0.65

    cmpl-double v0, v2, v4

    if-lez v0, :cond_44

    .line 474
    invoke-static {v6, v7}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisFactory;->newDefensor(II)Lfr/testudo/spacecorsair/business/ennemis/DefensorShip;

    move-result-object v0

    invoke-static {}, Lfr/testudo/spacecorsair/business/player/PlayerShip;->instance()Lfr/testudo/spacecorsair/business/player/PlayerShip;

    move-result-object v2

    invoke-virtual {v0, v2}, Lfr/testudo/spacecorsair/business/ennemis/DefensorShip;->initChase(Lfr/testudo/spacecorsair/business/Element;)Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    move-result-object v0

    .line 481
    :goto_25
    const-string v2, "pirate"

    iput-object v2, v0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->specificName:Ljava/lang/String;

    .line 482
    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->applyPopPoint(Lfr/testudo/spacecorsair/engine/PopPoint;)Lfr/testudo/spacecorsair/business/Element;

    .line 483
    sget-object v1, Lfr/testudo/spacecorsair/game/levels/builders/PirateBayLevelBuilder$2;->$SwitchMap$fr$testudo$spacecorsair$game$levels$builders$PirateBayLevelBuilder$StationNum:[I

    invoke-virtual {p1}, Lfr/testudo/spacecorsair/game/levels/builders/PirateBayLevelBuilder$StationNum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_82

    .line 500
    :goto_37
    sget-object v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    invoke-virtual {v1, v0}, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->queueElementToBeAddToLevel(Lfr/testudo/spacecorsair/business/Element;)V

    .line 501
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->soundManager:Lfr/testudo/spacecorsair/engine/SoundManager;

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/engine/SoundManager;->playMissileStart()V

    .line 504
    return-void

    .line 477
    :cond_44
    invoke-static {v6, v7}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisFactory;->newBasicEnnemisShip(II)Lfr/testudo/spacecorsair/business/ennemis/BasicEnnemyShip;

    move-result-object v0

    invoke-static {}, Lfr/testudo/spacecorsair/business/player/PlayerShip;->instance()Lfr/testudo/spacecorsair/business/player/PlayerShip;

    move-result-object v2

    invoke-virtual {v0, v2}, Lfr/testudo/spacecorsair/business/ennemis/BasicEnnemyShip;->initChase(Lfr/testudo/spacecorsair/business/Element;)Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    move-result-object v0

    goto :goto_25

    .line 487
    :pswitch_51
    iget-object v1, v0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    # getter for: Lfr/testudo/spacecorsair/game/levels/builders/PirateBayLevelBuilder;->pirateStation1Pos:Lfr/testudo/spacecorsair/engine/Vector2;
    invoke-static {}, Lfr/testudo/spacecorsair/game/levels/builders/PirateBayLevelBuilder;->access$400()Lfr/testudo/spacecorsair/engine/Vector2;

    move-result-object v2

    invoke-virtual {v1, v2}, Lfr/testudo/spacecorsair/engine/Vector2;->add(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 488
    iget v1, p0, Lfr/testudo/spacecorsair/game/levels/builders/PirateBayLevelBuilder$1;->remainingPopStation1:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lfr/testudo/spacecorsair/game/levels/builders/PirateBayLevelBuilder$1;->remainingPopStation1:I

    goto :goto_37

    .line 491
    :pswitch_61
    iget-object v1, v0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    # getter for: Lfr/testudo/spacecorsair/game/levels/builders/PirateBayLevelBuilder;->pirateStation2Pos:Lfr/testudo/spacecorsair/engine/Vector2;
    invoke-static {}, Lfr/testudo/spacecorsair/game/levels/builders/PirateBayLevelBuilder;->access$500()Lfr/testudo/spacecorsair/engine/Vector2;

    move-result-object v2

    invoke-virtual {v1, v2}, Lfr/testudo/spacecorsair/engine/Vector2;->add(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 492
    iget v1, p0, Lfr/testudo/spacecorsair/game/levels/builders/PirateBayLevelBuilder$1;->remainingPopStation2:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lfr/testudo/spacecorsair/game/levels/builders/PirateBayLevelBuilder$1;->remainingPopStation2:I

    goto :goto_37

    .line 495
    :pswitch_71
    iget-object v1, v0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    # getter for: Lfr/testudo/spacecorsair/game/levels/builders/PirateBayLevelBuilder;->pirateStation3Pos:Lfr/testudo/spacecorsair/engine/Vector2;
    invoke-static {}, Lfr/testudo/spacecorsair/game/levels/builders/PirateBayLevelBuilder;->access$600()Lfr/testudo/spacecorsair/engine/Vector2;

    move-result-object v2

    invoke-virtual {v1, v2}, Lfr/testudo/spacecorsair/engine/Vector2;->add(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 496
    iget v1, p0, Lfr/testudo/spacecorsair/game/levels/builders/PirateBayLevelBuilder$1;->remainingPopStation3:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lfr/testudo/spacecorsair/game/levels/builders/PirateBayLevelBuilder$1;->remainingPopStation3:I

    goto :goto_37

    .line 483
    nop

    :pswitch_data_82
    .packed-switch 0x1
        :pswitch_51
        :pswitch_61
        :pswitch_71
    .end packed-switch
.end method


# virtual methods
.method public onElementKilledByPlayer(Lfr/testudo/spacecorsair/business/Element;)V
    .registers 4

    .prologue
    .line 442
    # getter for: Lfr/testudo/spacecorsair/game/levels/builders/PirateBayLevelBuilder;->treasureOne:Lfr/testudo/spacecorsair/business/Element;
    invoke-static {}, Lfr/testudo/spacecorsair/game/levels/builders/PirateBayLevelBuilder;->access$300()Lfr/testudo/spacecorsair/business/Element;

    move-result-object v0

    if-ne p1, v0, :cond_13

    .line 443
    const/4 v0, 0x0

    # setter for: Lfr/testudo/spacecorsair/game/levels/builders/PirateBayLevelBuilder;->treasureOne:Lfr/testudo/spacecorsair/business/Element;
    invoke-static {v0}, Lfr/testudo/spacecorsair/game/levels/builders/PirateBayLevelBuilder;->access$302(Lfr/testudo/spacecorsair/business/Element;)Lfr/testudo/spacecorsair/business/Element;

    .line 444
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->levelProperties:Lfr/testudo/spacecorsair/game/levels/LevelsGlobalProperties;

    sget-object v1, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->pirateBayTreasureOne:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/game/levels/LevelsGlobalProperties;->onTreasureLoot(Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)V

    .line 447
    :cond_13
    return-void
.end method

.method public onEverySecond()V
    .registers 3

    .prologue
    .line 452
    iget v0, p0, Lfr/testudo/spacecorsair/game/levels/builders/PirateBayLevelBuilder$1;->remainingPopStation1:I

    if-lez v0, :cond_19

    # getter for: Lfr/testudo/spacecorsair/game/levels/builders/PirateBayLevelBuilder;->pirateStation1:Lfr/testudo/spacecorsair/business/world/station/DestroyablePirateStation;
    invoke-static {}, Lfr/testudo/spacecorsair/game/levels/builders/PirateBayLevelBuilder;->access$000()Lfr/testudo/spacecorsair/business/world/station/DestroyablePirateStation;

    move-result-object v0

    if-eqz v0, :cond_19

    # getter for: Lfr/testudo/spacecorsair/game/levels/builders/PirateBayLevelBuilder;->pirateStation1:Lfr/testudo/spacecorsair/business/world/station/DestroyablePirateStation;
    invoke-static {}, Lfr/testudo/spacecorsair/game/levels/builders/PirateBayLevelBuilder;->access$000()Lfr/testudo/spacecorsair/business/world/station/DestroyablePirateStation;

    move-result-object v0

    iget-boolean v0, v0, Lfr/testudo/spacecorsair/business/world/station/DestroyablePirateStation;->removed:Z

    if-nez v0, :cond_19

    .line 453
    sget-object v0, Lfr/testudo/spacecorsair/game/levels/builders/PirateBayLevelBuilder$StationNum;->ONE:Lfr/testudo/spacecorsair/game/levels/builders/PirateBayLevelBuilder$StationNum;

    iget v1, p0, Lfr/testudo/spacecorsair/game/levels/builders/PirateBayLevelBuilder$1;->remainingPopStation1:I

    invoke-direct {p0, v0, v1}, Lfr/testudo/spacecorsair/game/levels/builders/PirateBayLevelBuilder$1;->popEnnemiesFromStation(Lfr/testudo/spacecorsair/game/levels/builders/PirateBayLevelBuilder$StationNum;I)V

    .line 456
    :cond_19
    iget v0, p0, Lfr/testudo/spacecorsair/game/levels/builders/PirateBayLevelBuilder$1;->remainingPopStation2:I

    if-lez v0, :cond_32

    # getter for: Lfr/testudo/spacecorsair/game/levels/builders/PirateBayLevelBuilder;->pirateStation2:Lfr/testudo/spacecorsair/business/world/station/DestroyablePirateStation;
    invoke-static {}, Lfr/testudo/spacecorsair/game/levels/builders/PirateBayLevelBuilder;->access$100()Lfr/testudo/spacecorsair/business/world/station/DestroyablePirateStation;

    move-result-object v0

    if-eqz v0, :cond_32

    # getter for: Lfr/testudo/spacecorsair/game/levels/builders/PirateBayLevelBuilder;->pirateStation2:Lfr/testudo/spacecorsair/business/world/station/DestroyablePirateStation;
    invoke-static {}, Lfr/testudo/spacecorsair/game/levels/builders/PirateBayLevelBuilder;->access$100()Lfr/testudo/spacecorsair/business/world/station/DestroyablePirateStation;

    move-result-object v0

    iget-boolean v0, v0, Lfr/testudo/spacecorsair/business/world/station/DestroyablePirateStation;->removed:Z

    if-nez v0, :cond_32

    .line 457
    sget-object v0, Lfr/testudo/spacecorsair/game/levels/builders/PirateBayLevelBuilder$StationNum;->TWO:Lfr/testudo/spacecorsair/game/levels/builders/PirateBayLevelBuilder$StationNum;

    iget v1, p0, Lfr/testudo/spacecorsair/game/levels/builders/PirateBayLevelBuilder$1;->remainingPopStation2:I

    invoke-direct {p0, v0, v1}, Lfr/testudo/spacecorsair/game/levels/builders/PirateBayLevelBuilder$1;->popEnnemiesFromStation(Lfr/testudo/spacecorsair/game/levels/builders/PirateBayLevelBuilder$StationNum;I)V

    .line 460
    :cond_32
    iget v0, p0, Lfr/testudo/spacecorsair/game/levels/builders/PirateBayLevelBuilder$1;->remainingPopStation3:I

    if-lez v0, :cond_4b

    # getter for: Lfr/testudo/spacecorsair/game/levels/builders/PirateBayLevelBuilder;->pirateStation3:Lfr/testudo/spacecorsair/business/world/station/DestroyablePirateStation;
    invoke-static {}, Lfr/testudo/spacecorsair/game/levels/builders/PirateBayLevelBuilder;->access$200()Lfr/testudo/spacecorsair/business/world/station/DestroyablePirateStation;

    move-result-object v0

    if-eqz v0, :cond_4b

    # getter for: Lfr/testudo/spacecorsair/game/levels/builders/PirateBayLevelBuilder;->pirateStation3:Lfr/testudo/spacecorsair/business/world/station/DestroyablePirateStation;
    invoke-static {}, Lfr/testudo/spacecorsair/game/levels/builders/PirateBayLevelBuilder;->access$200()Lfr/testudo/spacecorsair/business/world/station/DestroyablePirateStation;

    move-result-object v0

    iget-boolean v0, v0, Lfr/testudo/spacecorsair/business/world/station/DestroyablePirateStation;->removed:Z

    if-nez v0, :cond_4b

    .line 461
    sget-object v0, Lfr/testudo/spacecorsair/game/levels/builders/PirateBayLevelBuilder$StationNum;->THREE:Lfr/testudo/spacecorsair/game/levels/builders/PirateBayLevelBuilder$StationNum;

    iget v1, p0, Lfr/testudo/spacecorsair/game/levels/builders/PirateBayLevelBuilder$1;->remainingPopStation3:I

    invoke-direct {p0, v0, v1}, Lfr/testudo/spacecorsair/game/levels/builders/PirateBayLevelBuilder$1;->popEnnemiesFromStation(Lfr/testudo/spacecorsair/game/levels/builders/PirateBayLevelBuilder$StationNum;I)V

    .line 466
    :cond_4b
    return-void
.end method

.method public onEveryTenSec()V
    .registers 1

    .prologue
    .line 511
    return-void
.end method

.method public onEveryThirtySec()V
    .registers 3

    .prologue
    .line 410
    # getter for: Lfr/testudo/spacecorsair/game/levels/builders/PirateBayLevelBuilder;->pirateStation1:Lfr/testudo/spacecorsair/business/world/station/DestroyablePirateStation;
    invoke-static {}, Lfr/testudo/spacecorsair/game/levels/builders/PirateBayLevelBuilder;->access$000()Lfr/testudo/spacecorsair/business/world/station/DestroyablePirateStation;

    move-result-object v0

    sget-object v1, Lfr/testudo/spacecorsair/game/levels/builders/PirateBayLevelBuilder$StationNum;->ONE:Lfr/testudo/spacecorsair/game/levels/builders/PirateBayLevelBuilder$StationNum;

    invoke-direct {p0, v0, v1}, Lfr/testudo/spacecorsair/game/levels/builders/PirateBayLevelBuilder$1;->checkPopEnnemisStation(Lfr/testudo/spacecorsair/business/world/station/DestroyablePirateStation;Lfr/testudo/spacecorsair/game/levels/builders/PirateBayLevelBuilder$StationNum;)V

    .line 411
    # getter for: Lfr/testudo/spacecorsair/game/levels/builders/PirateBayLevelBuilder;->pirateStation2:Lfr/testudo/spacecorsair/business/world/station/DestroyablePirateStation;
    invoke-static {}, Lfr/testudo/spacecorsair/game/levels/builders/PirateBayLevelBuilder;->access$100()Lfr/testudo/spacecorsair/business/world/station/DestroyablePirateStation;

    move-result-object v0

    sget-object v1, Lfr/testudo/spacecorsair/game/levels/builders/PirateBayLevelBuilder$StationNum;->TWO:Lfr/testudo/spacecorsair/game/levels/builders/PirateBayLevelBuilder$StationNum;

    invoke-direct {p0, v0, v1}, Lfr/testudo/spacecorsair/game/levels/builders/PirateBayLevelBuilder$1;->checkPopEnnemisStation(Lfr/testudo/spacecorsair/business/world/station/DestroyablePirateStation;Lfr/testudo/spacecorsair/game/levels/builders/PirateBayLevelBuilder$StationNum;)V

    .line 412
    # getter for: Lfr/testudo/spacecorsair/game/levels/builders/PirateBayLevelBuilder;->pirateStation3:Lfr/testudo/spacecorsair/business/world/station/DestroyablePirateStation;
    invoke-static {}, Lfr/testudo/spacecorsair/game/levels/builders/PirateBayLevelBuilder;->access$200()Lfr/testudo/spacecorsair/business/world/station/DestroyablePirateStation;

    move-result-object v0

    sget-object v1, Lfr/testudo/spacecorsair/game/levels/builders/PirateBayLevelBuilder$StationNum;->THREE:Lfr/testudo/spacecorsair/game/levels/builders/PirateBayLevelBuilder$StationNum;

    invoke-direct {p0, v0, v1}, Lfr/testudo/spacecorsair/game/levels/builders/PirateBayLevelBuilder$1;->checkPopEnnemisStation(Lfr/testudo/spacecorsair/business/world/station/DestroyablePirateStation;Lfr/testudo/spacecorsair/game/levels/builders/PirateBayLevelBuilder$StationNum;)V

    .line 415
    return-void
.end method

.method public onSecretMapReveleaed(Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)V
    .registers 4

    .prologue
    .line 518
    sget-object v0, Lfr/testudo/spacecorsair/game/levels/builders/PirateBayLevelBuilder$2;->$SwitchMap$fr$testudo$spacecorsair$business$loot$SpaceObjectType:[I

    invoke-virtual {p1}, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_30

    .line 533
    :cond_b
    :goto_b
    return-void

    .line 521
    :pswitch_c
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/Game;->currentLevel:Lfr/testudo/spacecorsair/game/levels/Level;

    # getter for: Lfr/testudo/spacecorsair/game/levels/builders/PirateBayLevelBuilder;->SMUGLER_STATION_NAME:Ljava/lang/String;
    invoke-static {}, Lfr/testudo/spacecorsair/game/levels/builders/PirateBayLevelBuilder;->access$700()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/game/levels/Level;->findStationByName(Ljava/lang/String;)Lfr/testudo/spacecorsair/business/world/station/Station;

    move-result-object v0

    .line 522
    if-eqz v0, :cond_b

    .line 523
    const/4 v1, 0x0

    iput-boolean v1, v0, Lfr/testudo/spacecorsair/business/world/station/Station;->mapHidden:Z

    .line 524
    const/4 v1, 0x1

    iput-boolean v1, v0, Lfr/testudo/spacecorsair/business/world/station/Station;->drawOnRadar:Z

    goto :goto_b

    .line 528
    :pswitch_23
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/Game;->currentLevel:Lfr/testudo/spacecorsair/game/levels/Level;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/levels/Level;->toAdd:Ljava/util/List;

    # invokes: Lfr/testudo/spacecorsair/game/levels/builders/PirateBayLevelBuilder;->enableTresureOneIfPossible(Ljava/util/List;)V
    invoke-static {v0}, Lfr/testudo/spacecorsair/game/levels/builders/PirateBayLevelBuilder;->access$800(Ljava/util/List;)V

    goto :goto_b

    .line 518
    nop

    :pswitch_data_30
    .packed-switch 0x1
        :pswitch_c
        :pswitch_23
    .end packed-switch
.end method
