.class final Lfr/testudo/spacecorsair/game/levels/builders/DeltaNodeLevelBuilder$1;
.super Lfr/testudo/spacecorsair/game/levels/LevelAnimator;
.source "SourceFile"


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 73
    invoke-direct {p0}, Lfr/testudo/spacecorsair/game/levels/LevelAnimator;-><init>()V

    return-void
.end method

.method private launchAnAsteroidOnPlayer()V
    .registers 5

    .prologue
    .line 77
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v0

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    mul-double/2addr v0, v2

    double-to-int v0, v0

    add-int/lit8 v1, v0, 0x1

    .line 78
    const/4 v0, 0x0

    :goto_b
    if-ge v0, v1, :cond_1c

    .line 79
    sget-object v2, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v2, v2, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v2, v2, Lfr/testudo/spacecorsair/game/Game;->currentLevel:Lfr/testudo/spacecorsair/game/levels/Level;

    const v3, 0x4059999a    # 3.4f

    invoke-virtual {v2, v3}, Lfr/testudo/spacecorsair/game/levels/Level;->addRandomAsteThatTargetPlayer(F)V

    .line 78
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    .line 82
    :cond_1c
    return-void
.end method


# virtual methods
.method public onEverySecond()V
    .registers 3

    .prologue
    const/high16 v1, 0x43fa0000    # 500.0f

    .line 86
    sget-object v0, Lfr/testudo/spacecorsair/game/levels/builders/DeltaNodeLevelBuilder;->THE_HIVE_PORTAL:Lfr/testudo/spacecorsair/business/world/Portal;

    iget v0, v0, Lfr/testudo/spacecorsair/business/world/Portal;->distanceToPlayer:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_15

    sget-object v0, Lfr/testudo/spacecorsair/game/levels/builders/DeltaNodeLevelBuilder;->GREEN_BORDER_PORTAL:Lfr/testudo/spacecorsair/business/world/Portal;

    iget v0, v0, Lfr/testudo/spacecorsair/business/world/Portal;->distanceToPlayer:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_15

    .line 87
    invoke-direct {p0}, Lfr/testudo/spacecorsair/game/levels/builders/DeltaNodeLevelBuilder$1;->launchAnAsteroidOnPlayer()V

    .line 91
    :cond_15
    return-void
.end method

.method public onEveryTenSec()V
    .registers 7

    .prologue
    const/16 v5, 0xc

    const/4 v4, 0x0

    .line 109
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v0

    const-wide v2, 0x3fb99999a0000000L    # 0.10000000149011612

    cmpg-double v0, v0, v2

    if-gez v0, :cond_49

    .line 110
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/Game;->currentLevel:Lfr/testudo/spacecorsair/game/levels/Level;

    invoke-virtual {v0, v4}, Lfr/testudo/spacecorsair/game/levels/Level;->isThereMoreAttackingPlayerEnemiesThan(I)Z

    move-result v0

    if-nez v0, :cond_49

    .line 112
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/Game;->currentLevel:Lfr/testudo/spacecorsair/game/levels/Level;

    sget-object v1, Lfr/testudo/spacecorsair/game/levels/builders/DeltaNodeLevelBuilder;->temp:Lfr/testudo/spacecorsair/engine/Vector2;

    const/16 v2, 0xdac

    invoke-virtual {v0, v1, v2, v4}, Lfr/testudo/spacecorsair/game/levels/Level;->getRandomPlayerLocationCirclePoint(Lfr/testudo/spacecorsair/engine/Vector2;II)V

    .line 113
    invoke-static {v5, v5}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisFactory;->newUfo(II)Lfr/testudo/spacecorsair/business/ennemis/UfoAlienShip;

    move-result-object v0

    sget-object v1, Lfr/testudo/spacecorsair/game/levels/builders/DeltaNodeLevelBuilder;->temp:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/business/ennemis/UfoAlienShip;->initPosition(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    move-result-object v0

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->setElite()Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    move-result-object v0

    .line 114
    const v1, 0x461c4000    # 10000.0f

    iput v1, v0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->desengagementDistance:F

    .line 115
    invoke-virtual {v0}, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->initChasePlayer()Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    .line 116
    const-string v1, "defensor"

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->setSpecificName(Ljava/lang/String;)Lfr/testudo/spacecorsair/business/Element;

    .line 117
    sget-object v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    invoke-virtual {v1, v0}, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->queueElementToBeAddToLevel(Lfr/testudo/spacecorsair/business/Element;)V

    .line 122
    :cond_49
    return-void
.end method

.method public onPlayerEnterInZone()V
    .registers 7

    .prologue
    const/16 v5, 0xd

    const/high16 v4, 0x43fa0000    # 500.0f

    .line 95
    invoke-super {p0}, Lfr/testudo/spacecorsair/game/levels/LevelAnimator;->onPlayerEnterInZone()V

    .line 98
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    invoke-static {v5}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisFactory;->newAlienTourelle(I)Lfr/testudo/spacecorsair/business/ennemis/AlienTourelle;

    move-result-object v1

    sget-object v2, Lfr/testudo/spacecorsair/game/levels/builders/DeltaNodeLevelBuilder;->GATE_TO_THE_HIVE_POS:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v2, v2, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    sub-float/2addr v2, v4

    sget-object v3, Lfr/testudo/spacecorsair/game/levels/builders/DeltaNodeLevelBuilder;->GATE_TO_THE_HIVE_POS:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v3, v3, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    invoke-virtual {v1, v2, v3}, Lfr/testudo/spacecorsair/business/ennemis/AlienTourelle;->initPosition(FF)Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->queueElementToBeAddToLevel(Lfr/testudo/spacecorsair/business/Element;)V

    .line 99
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    invoke-static {v5}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisFactory;->newAlienTourelle(I)Lfr/testudo/spacecorsair/business/ennemis/AlienTourelle;

    move-result-object v1

    sget-object v2, Lfr/testudo/spacecorsair/game/levels/builders/DeltaNodeLevelBuilder;->GATE_TO_THE_HIVE_POS:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v2, v2, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    add-float/2addr v2, v4

    sget-object v3, Lfr/testudo/spacecorsair/game/levels/builders/DeltaNodeLevelBuilder;->GATE_TO_THE_HIVE_POS:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v3, v3, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    invoke-virtual {v1, v2, v3}, Lfr/testudo/spacecorsair/business/ennemis/AlienTourelle;->initPosition(FF)Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->queueElementToBeAddToLevel(Lfr/testudo/spacecorsair/business/Element;)V

    .line 101
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    invoke-static {v5}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisFactory;->newAlienTourelle(I)Lfr/testudo/spacecorsair/business/ennemis/AlienTourelle;

    move-result-object v1

    sget-object v2, Lfr/testudo/spacecorsair/game/levels/builders/DeltaNodeLevelBuilder;->GATE_TO_GREEN_BORDER_POS:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v2, v2, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    sub-float/2addr v2, v4

    sget-object v3, Lfr/testudo/spacecorsair/game/levels/builders/DeltaNodeLevelBuilder;->GATE_TO_GREEN_BORDER_POS:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v3, v3, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    invoke-virtual {v1, v2, v3}, Lfr/testudo/spacecorsair/business/ennemis/AlienTourelle;->initPosition(FF)Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->queueElementToBeAddToLevel(Lfr/testudo/spacecorsair/business/Element;)V

    .line 102
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    invoke-static {v5}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisFactory;->newAlienTourelle(I)Lfr/testudo/spacecorsair/business/ennemis/AlienTourelle;

    move-result-object v1

    sget-object v2, Lfr/testudo/spacecorsair/game/levels/builders/DeltaNodeLevelBuilder;->GATE_TO_GREEN_BORDER_POS:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v2, v2, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    add-float/2addr v2, v4

    sget-object v3, Lfr/testudo/spacecorsair/game/levels/builders/DeltaNodeLevelBuilder;->GATE_TO_GREEN_BORDER_POS:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v3, v3, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    invoke-virtual {v1, v2, v3}, Lfr/testudo/spacecorsair/business/ennemis/AlienTourelle;->initPosition(FF)Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->queueElementToBeAddToLevel(Lfr/testudo/spacecorsair/business/Element;)V

    .line 105
    return-void
.end method
