.class final Lfr/testudo/spacecorsair/game/levels/builders/ConstellationLevelBuilder$1;
.super Lfr/testudo/spacecorsair/game/levels/LevelAnimator;
.source "SourceFile"


# instance fields
.field countPopEnnemisRemaing:I

.field nextType:Lfr/testudo/spacecorsair/business/ennemis/EnnemisType;


# direct methods
.method constructor <init>()V
    .registers 2

    .prologue
    .line 207
    invoke-direct {p0}, Lfr/testudo/spacecorsair/game/levels/LevelAnimator;-><init>()V

    .line 209
    const/4 v0, 0x0

    iput v0, p0, Lfr/testudo/spacecorsair/game/levels/builders/ConstellationLevelBuilder$1;->countPopEnnemisRemaing:I

    .line 210
    sget-object v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisType;->BASIC:Lfr/testudo/spacecorsair/business/ennemis/EnnemisType;

    iput-object v0, p0, Lfr/testudo/spacecorsair/game/levels/builders/ConstellationLevelBuilder$1;->nextType:Lfr/testudo/spacecorsair/business/ennemis/EnnemisType;

    return-void
.end method

.method private popEnnemy()V
    .registers 4

    .prologue
    .line 257
    iget-object v0, p0, Lfr/testudo/spacecorsair/game/levels/builders/ConstellationLevelBuilder$1;->nextType:Lfr/testudo/spacecorsair/business/ennemis/EnnemisType;

    const/4 v1, 0x4

    const/4 v2, 0x5

    invoke-static {v0, v1, v2}, Lfr/testudo/spacecorsair/mod/ModStockSpawn;->newEnnemis(Lfr/testudo/spacecorsair/business/ennemis/EnnemisType;II)Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    move-result-object v0

    .line 258
    sget-object v1, Lfr/testudo/spacecorsair/game/levels/builders/ConstellationLevelBuilder;->PIRATE_POP:Lfr/testudo/spacecorsair/engine/PopPoint;

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->applyPopPoint(Lfr/testudo/spacecorsair/engine/PopPoint;)Lfr/testudo/spacecorsair/business/Element;

    .line 259
    sget-object v1, Lfr/testudo/spacecorsair/game/levels/builders/ConstellationLevelBuilder;->POP_FROM_PIRATE_ACTIVITY:Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivitySequence;

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->setActivitySequence(Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivitySequence;)Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    .line 260
    const-string v1, "pirate"

    iput-object v1, v0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->specificName:Ljava/lang/String;

    .line 261
    sget-object v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v1, v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v1, v1, Lfr/testudo/spacecorsair/game/Game;->currentLevel:Lfr/testudo/spacecorsair/game/levels/Level;

    iget-object v1, v1, Lfr/testudo/spacecorsair/game/levels/Level;->toAdd:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 263
    return-void
.end method

.method private popTransport()V
    .registers 7

    .prologue
    const/4 v5, 0x5

    const/4 v4, 0x4

    .line 246
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v0

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    cmpl-double v0, v0, v2

    if-lez v0, :cond_16

    .line 247
    sget-object v0, Lfr/testudo/spacecorsair/business/world/civil/CivilType;->TRANSPORTEUR:Lfr/testudo/spacecorsair/business/world/civil/CivilType;

    sget-object v1, Lfr/testudo/spacecorsair/game/levels/builders/ConstellationLevelBuilder;->HELIO_POP:Lfr/testudo/spacecorsair/engine/PopPoint;

    sget-object v2, Lfr/testudo/spacecorsair/game/levels/builders/ConstellationLevelBuilder;->HELO_TO_VENTO:[Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;

    invoke-static {v0, v1, v2, v4, v5}, Lfr/testudo/spacecorsair/game/levels/CivilAnimatorHelper;->addCivilFromXWithActivity(Lfr/testudo/spacecorsair/business/world/civil/CivilType;Lfr/testudo/spacecorsair/engine/PopPoint;[Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;II)V

    .line 252
    :goto_15
    return-void

    .line 249
    :cond_16
    sget-object v0, Lfr/testudo/spacecorsair/business/world/civil/CivilType;->TRANSPORTEUR:Lfr/testudo/spacecorsair/business/world/civil/CivilType;

    sget-object v1, Lfr/testudo/spacecorsair/game/levels/builders/ConstellationLevelBuilder;->VENTO_POP:Lfr/testudo/spacecorsair/engine/PopPoint;

    sget-object v2, Lfr/testudo/spacecorsair/game/levels/builders/ConstellationLevelBuilder;->VENTO_TO_HELO_CIVIL_ACTIVITY:[Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;

    invoke-static {v0, v1, v2, v4, v5}, Lfr/testudo/spacecorsair/game/levels/CivilAnimatorHelper;->addCivilFromXWithActivity(Lfr/testudo/spacecorsair/business/world/civil/CivilType;Lfr/testudo/spacecorsair/engine/PopPoint;[Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;II)V

    goto :goto_15
.end method


# virtual methods
.method public onElementKilledByPlayer(Lfr/testudo/spacecorsair/business/Element;)V
    .registers 4

    .prologue
    .line 269
    # getter for: Lfr/testudo/spacecorsair/game/levels/builders/ConstellationLevelBuilder;->treasureOne:Lfr/testudo/spacecorsair/business/world/civil/TransportCivilShip;
    invoke-static {}, Lfr/testudo/spacecorsair/game/levels/builders/ConstellationLevelBuilder;->access$000()Lfr/testudo/spacecorsair/business/world/civil/TransportCivilShip;

    move-result-object v0

    if-ne p1, v0, :cond_13

    .line 270
    const/4 v0, 0x0

    # setter for: Lfr/testudo/spacecorsair/game/levels/builders/ConstellationLevelBuilder;->treasureOne:Lfr/testudo/spacecorsair/business/world/civil/TransportCivilShip;
    invoke-static {v0}, Lfr/testudo/spacecorsair/game/levels/builders/ConstellationLevelBuilder;->access$002(Lfr/testudo/spacecorsair/business/world/civil/TransportCivilShip;)Lfr/testudo/spacecorsair/business/world/civil/TransportCivilShip;

    .line 271
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->levelProperties:Lfr/testudo/spacecorsair/game/levels/LevelsGlobalProperties;

    sget-object v1, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->constellationTreasureOne:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/game/levels/LevelsGlobalProperties;->onTreasureLoot(Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)V

    .line 274
    :cond_13
    return-void
.end method

.method public onEverySecond()V
    .registers 2

    .prologue
    .line 237
    iget v0, p0, Lfr/testudo/spacecorsair/game/levels/builders/ConstellationLevelBuilder$1;->countPopEnnemisRemaing:I

    if-lez v0, :cond_d

    .line 238
    invoke-direct {p0}, Lfr/testudo/spacecorsair/game/levels/builders/ConstellationLevelBuilder$1;->popEnnemy()V

    .line 239
    iget v0, p0, Lfr/testudo/spacecorsair/game/levels/builders/ConstellationLevelBuilder$1;->countPopEnnemisRemaing:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lfr/testudo/spacecorsair/game/levels/builders/ConstellationLevelBuilder$1;->countPopEnnemisRemaing:I

    .line 242
    :cond_d
    return-void
.end method

.method public onEveryTenSec()V
    .registers 5

    .prologue
    .line 227
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v0

    const-wide v2, 0x3fe999999999999aL    # 0.8

    cmpl-double v0, v0, v2

    if-lez v0, :cond_10

    .line 228
    invoke-direct {p0}, Lfr/testudo/spacecorsair/game/levels/builders/ConstellationLevelBuilder$1;->popTransport()V

    .line 232
    :cond_10
    return-void
.end method

.method public onEveryThirtySec()V
    .registers 5

    .prologue
    const-wide v2, 0x3fe3333333333333L    # 0.6

    .line 215
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v0

    cmpl-double v0, v0, v2

    if-lez v0, :cond_1c

    .line 216
    const/4 v0, 0x3

    iput v0, p0, Lfr/testudo/spacecorsair/game/levels/builders/ConstellationLevelBuilder$1;->countPopEnnemisRemaing:I

    .line 217
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v0

    cmpl-double v0, v0, v2

    if-lez v0, :cond_1d

    .line 218
    sget-object v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisType;->DEFENSOR:Lfr/testudo/spacecorsair/business/ennemis/EnnemisType;

    iput-object v0, p0, Lfr/testudo/spacecorsair/game/levels/builders/ConstellationLevelBuilder$1;->nextType:Lfr/testudo/spacecorsair/business/ennemis/EnnemisType;

    .line 223
    :cond_1c
    :goto_1c
    return-void

    .line 220
    :cond_1d
    sget-object v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisType;->BASIC:Lfr/testudo/spacecorsair/business/ennemis/EnnemisType;

    iput-object v0, p0, Lfr/testudo/spacecorsair/game/levels/builders/ConstellationLevelBuilder$1;->nextType:Lfr/testudo/spacecorsair/business/ennemis/EnnemisType;

    goto :goto_1c
.end method

.method public onSecretMapReveleaed(Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)V
    .registers 4

    .prologue
    .line 281
    sget-object v0, Lfr/testudo/spacecorsair/game/levels/builders/ConstellationLevelBuilder$2;->$SwitchMap$fr$testudo$spacecorsair$business$loot$SpaceObjectType:[I

    invoke-virtual {p1}, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_18

    .line 289
    :goto_b
    return-void

    .line 284
    :pswitch_c
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/Game;->currentLevel:Lfr/testudo/spacecorsair/game/levels/Level;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/levels/Level;->toAdd:Ljava/util/List;

    # invokes: Lfr/testudo/spacecorsair/game/levels/builders/ConstellationLevelBuilder;->enableTresureOneIfPossible(Ljava/util/List;)V
    invoke-static {v0}, Lfr/testudo/spacecorsair/game/levels/builders/ConstellationLevelBuilder;->access$100(Ljava/util/List;)V

    goto :goto_b

    .line 281
    :pswitch_data_18
    .packed-switch 0x1
        :pswitch_c
    .end packed-switch
.end method
