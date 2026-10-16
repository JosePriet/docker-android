.class final Lfr/testudo/spacecorsair/game/levels/builders/TheVaultLevelBuilder$1;
.super Lfr/testudo/spacecorsair/game/levels/LevelAnimator;
.source "SourceFile"


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 176
    invoke-direct {p0}, Lfr/testudo/spacecorsair/game/levels/LevelAnimator;-><init>()V

    return-void
.end method

.method private launchAnAsteroidOnPlayer()V
    .registers 5

    .prologue
    .line 232
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v0

    const-wide/high16 v2, 0x4008000000000000L    # 3.0

    mul-double/2addr v0, v2

    double-to-int v0, v0

    add-int/lit8 v1, v0, 0x1

    .line 233
    const/4 v0, 0x0

    :goto_b
    if-ge v0, v1, :cond_1c

    .line 234
    sget-object v2, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v2, v2, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v2, v2, Lfr/testudo/spacecorsair/game/Game;->currentLevel:Lfr/testudo/spacecorsair/game/levels/Level;

    const v3, 0x40866666    # 4.2f

    invoke-virtual {v2, v3}, Lfr/testudo/spacecorsair/game/levels/Level;->addRandomAsteThatTargetPlayer(F)V

    .line 233
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    .line 237
    :cond_1c
    return-void
.end method


# virtual methods
.method public onElementKilledByPlayer(Lfr/testudo/spacecorsair/business/Element;)V
    .registers 4

    .prologue
    .line 214
    invoke-super {p0, p1}, Lfr/testudo/spacecorsair/game/levels/LevelAnimator;->onElementKilledByPlayer(Lfr/testudo/spacecorsair/business/Element;)V

    .line 215
    instance-of v0, p1, Lfr/testudo/spacecorsair/business/world/RubyAsteroid;

    if-eqz v0, :cond_10

    .line 216
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->levelProperties:Lfr/testudo/spacecorsair/game/levels/LevelsGlobalProperties;

    sget-object v1, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->theVaultTreasureOne:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/game/levels/LevelsGlobalProperties;->onTreasureLoot(Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)V

    .line 218
    :cond_10
    return-void
.end method

.method public onEverySecond()V
    .registers 3

    .prologue
    .line 181
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->playerShip:Lfr/testudo/spacecorsair/business/player/PlayerShip;

    iget-object v0, v0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/engine/Vector2;->length()F

    move-result v0

    const/high16 v1, 0x43fa0000    # 500.0f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_13

    .line 182
    invoke-direct {p0}, Lfr/testudo/spacecorsair/game/levels/builders/TheVaultLevelBuilder$1;->launchAnAsteroidOnPlayer()V

    .line 184
    :cond_13
    return-void
.end method

.method public onEveryThirtySec()V
    .registers 8

    .prologue
    const/16 v6, 0xd

    const/16 v5, 0xc

    const/4 v4, 0x0

    .line 188
    invoke-super {p0}, Lfr/testudo/spacecorsair/game/levels/LevelAnimator;->onEveryThirtySec()V

    .line 190
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v0

    const-wide v2, 0x3fd3333340000000L    # 0.30000001192092896

    cmpg-double v0, v0, v2

    if-gez v0, :cond_58

    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/Game;->currentLevel:Lfr/testudo/spacecorsair/game/levels/Level;

    invoke-virtual {v0, v4}, Lfr/testudo/spacecorsair/game/levels/Level;->isThereMoreAttackingPlayerEnemiesThan(I)Z

    move-result v0

    if-nez v0, :cond_58

    .line 193
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->playerShip:Lfr/testudo/spacecorsair/business/player/PlayerShip;

    iget-object v0, v0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/engine/Vector2;->length()F

    move-result v0

    .line 195
    const v1, 0x466a6000    # 15000.0f

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_59

    .line 196
    invoke-static {v5, v6}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisFactory;->newBasicEnnemisShip(II)Lfr/testudo/spacecorsair/business/ennemis/BasicEnnemyShip;

    move-result-object v0

    .line 202
    :goto_36
    invoke-virtual {v0}, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->setElite()Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    .line 203
    sget-object v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v1, v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v1, v1, Lfr/testudo/spacecorsair/game/Game;->currentLevel:Lfr/testudo/spacecorsair/game/levels/Level;

    sget-object v2, Lfr/testudo/spacecorsair/game/levels/builders/TheVaultLevelBuilder;->temp:Lfr/testudo/spacecorsair/engine/Vector2;

    const/16 v3, 0xdac

    invoke-virtual {v1, v2, v3, v4}, Lfr/testudo/spacecorsair/game/levels/Level;->getRandomPlayerLocationCirclePoint(Lfr/testudo/spacecorsair/engine/Vector2;II)V

    .line 204
    sget-object v1, Lfr/testudo/spacecorsair/game/levels/builders/TheVaultLevelBuilder;->temp:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->setPosition(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/business/Element;

    .line 205
    const v1, 0x461c4000    # 10000.0f

    iput v1, v0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->desengagementDistance:F

    .line 206
    invoke-virtual {v0}, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->initChasePlayer()Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    .line 207
    sget-object v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    invoke-virtual {v1, v0}, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->queueElementToBeAddToLevel(Lfr/testudo/spacecorsair/business/Element;)V

    .line 210
    :cond_58
    return-void

    .line 198
    :cond_59
    invoke-static {v5, v6}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisFactory;->newDefensor(II)Lfr/testudo/spacecorsair/business/ennemis/DefensorShip;

    move-result-object v0

    goto :goto_36
.end method

.method public onSecretMapReveleaed(Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)V
    .registers 3

    .prologue
    .line 222
    invoke-super {p0, p1}, Lfr/testudo/spacecorsair/game/levels/LevelAnimator;->onSecretMapReveleaed(Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)V

    .line 223
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->theVaultTreasureOne:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    invoke-virtual {p1, v0}, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 224
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/Game;->currentLevel:Lfr/testudo/spacecorsair/game/levels/Level;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/levels/Level;->toAdd:Ljava/util/List;

    # invokes: Lfr/testudo/spacecorsair/game/levels/builders/TheVaultLevelBuilder;->addTreasure(Ljava/util/List;)V
    invoke-static {v0}, Lfr/testudo/spacecorsair/game/levels/builders/TheVaultLevelBuilder;->access$000(Ljava/util/List;)V

    .line 227
    :cond_16
    return-void
.end method
