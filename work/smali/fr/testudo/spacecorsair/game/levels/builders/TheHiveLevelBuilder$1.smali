.class final Lfr/testudo/spacecorsair/game/levels/builders/TheHiveLevelBuilder$1;
.super Lfr/testudo/spacecorsair/game/levels/LevelAnimator;
.source "SourceFile"


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 66
    invoke-direct {p0}, Lfr/testudo/spacecorsair/game/levels/LevelAnimator;-><init>()V

    return-void
.end method


# virtual methods
.method public onEveryTenSec()V
    .registers 7

    .prologue
    const/4 v4, 0x0

    .line 71
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v0

    const-wide v2, 0x3fc99999a0000000L    # 0.20000000298023224

    cmpg-double v0, v0, v2

    if-gez v0, :cond_58

    .line 73
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/Game;->currentLevel:Lfr/testudo/spacecorsair/game/levels/Level;

    invoke-virtual {v0, v4}, Lfr/testudo/spacecorsair/game/levels/Level;->isThereMoreAttackingPlayerEnemiesThan(I)Z

    move-result v0

    if-nez v0, :cond_58

    .line 75
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/Game;->currentLevel:Lfr/testudo/spacecorsair/game/levels/Level;

    sget-object v1, Lfr/testudo/spacecorsair/game/levels/builders/TheHiveLevelBuilder;->temp:Lfr/testudo/spacecorsair/engine/Vector2;

    const/16 v2, 0xed8

    invoke-virtual {v0, v1, v2, v4}, Lfr/testudo/spacecorsair/game/levels/Level;->getRandomPlayerLocationCirclePoint(Lfr/testudo/spacecorsair/engine/Vector2;II)V

    .line 76
    # invokes: Lfr/testudo/spacecorsair/game/levels/builders/TheHiveLevelBuilder;->getBlatteLevel()I
    invoke-static {}, Lfr/testudo/spacecorsair/game/levels/builders/TheHiveLevelBuilder;->access$000()I

    move-result v0

    .line 78
    add-int/lit8 v1, v0, -0x1

    invoke-static {v1, v0}, Lfr/testudo/spacecorsair/mod/ModStockSpawn;->newAlienBlatte(II)Lfr/testudo/spacecorsair/business/ennemis/AlienBlatte;

    move-result-object v0

    sget-object v1, Lfr/testudo/spacecorsair/game/levels/builders/TheHiveLevelBuilder;->temp:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/business/ennemis/AlienBlatte;->initPosition(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    move-result-object v0

    .line 79
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v2

    const-wide v4, 0x3fb999999999999aL    # 0.1

    cmpg-double v1, v2, v4

    if-gez v1, :cond_47

    .line 80
    invoke-virtual {v0}, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->setElite()Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    .line 82
    :cond_47
    invoke-virtual {v0}, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->initChasePlayer()Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    .line 83
    sget-object v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    invoke-virtual {v1, v0}, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->queueElementToBeAddToLevel(Lfr/testudo/spacecorsair/business/Element;)V

    .line 84
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/Game;->currentLevel:Lfr/testudo/spacecorsair/game/levels/Level;

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/game/levels/Level;->requestPlayerGotoLastPosOfElements()V

    .line 91
    :cond_58
    return-void
.end method
