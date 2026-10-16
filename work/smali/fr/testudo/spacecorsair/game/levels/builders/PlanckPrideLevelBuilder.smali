.class public Lfr/testudo/spacecorsair/game/levels/builders/PlanckPrideLevelBuilder;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static addEnnemies(Ljava/util/List;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lfr/testudo/spacecorsair/business/Element;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    const-wide v8, 0x40c7700000000000L    # 12000.0

    .line 63
    new-instance v2, Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-direct {v2}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>()V

    move v0, v1

    .line 65
    :goto_c
    const/16 v3, 0x50

    if-ge v0, v3, :cond_45

    .line 66
    const-wide v4, -0x3f50c00000000000L    # -4000.0

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v6

    mul-double/2addr v6, v8

    add-double/2addr v4, v6

    double-to-float v3, v4

    const-wide v4, -0x3f48900000000000L    # -6000.0

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v6

    mul-double/2addr v6, v8

    add-double/2addr v4, v6

    double-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Lfr/testudo/spacecorsair/engine/Vector2;->set(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 67
    const/4 v3, 0x2

    invoke-static {v1, v3}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisFactory;->newBasicEnnemisShip(II)Lfr/testudo/spacecorsair/business/ennemis/BasicEnnemyShip;

    move-result-object v3

    invoke-virtual {v3, v2}, Lfr/testudo/spacecorsair/business/ennemis/BasicEnnemyShip;->initPosition(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    move-result-object v3

    .line 68
    sget-object v4, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    const v5, 0x7f07029b

    invoke-virtual {v4, v5}, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->getStringRessource(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->specificName:Ljava/lang/String;

    .line 69
    invoke-interface {p0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 65
    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    .line 73
    :cond_45
    return-void
.end method

.method private static addPortals(Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lfr/testudo/spacecorsair/business/Element;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 80
    invoke-static {}, Lfr/testudo/spacecorsair/business/factory/GamePools;->newPortal()Lfr/testudo/spacecorsair/business/world/Portal;

    move-result-object v0

    const-string v1, "> genesis <"

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/business/world/Portal;->init(Ljava/lang/String;)Lfr/testudo/spacecorsair/business/world/Portal;

    move-result-object v0

    .line 81
    const-string v1, "genesis"

    iput-object v1, v0, Lfr/testudo/spacecorsair/business/world/Portal;->jumpLevelName:Ljava/lang/String;

    .line 82
    const-string v1, "> planck Pride <"

    iput-object v1, v0, Lfr/testudo/spacecorsair/business/world/Portal;->jumpPortalName:Ljava/lang/String;

    .line 84
    iget-object v1, v0, Lfr/testudo/spacecorsair/business/world/Portal;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    const v2, -0x3a448000    # -6000.0f

    const/high16 v3, -0x3cb80000    # -200.0f

    invoke-virtual {v1, v2, v3}, Lfr/testudo/spacecorsair/engine/Vector2;->set(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 85
    iget-object v1, v0, Lfr/testudo/spacecorsair/business/world/Portal;->initialPlayerSpeed:Lfr/testudo/spacecorsair/engine/Vector2;

    const/high16 v2, 0x40e00000    # 7.0f

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lfr/testudo/spacecorsair/engine/Vector2;->set(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 86
    const/high16 v1, 0x42b40000    # 90.0f

    iput v1, v0, Lfr/testudo/spacecorsair/business/world/Portal;->initialPlayerSpin:F

    .line 87
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 88
    return-void
.end method

.method public static getPlanckPride()Lfr/testudo/spacecorsair/game/levels/Level;
    .registers 16

    .prologue
    const-wide v14, 0x40cf400000000000L    # 16000.0

    const-wide v12, 0x3ff3333333333333L    # 1.2

    const-wide v10, -0x401ccccccccccccdL    # -0.6

    .line 33
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 36
    invoke-static {v1}, Lfr/testudo/spacecorsair/game/levels/builders/PlanckPrideLevelBuilder;->addPortals(Ljava/util/List;)V

    .line 38
    new-instance v2, Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-direct {v2}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>()V

    .line 39
    new-instance v3, Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-direct {v3}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>()V

    .line 42
    const/4 v0, 0x0

    :goto_22
    const/16 v4, 0xc8

    if-ge v0, v4, :cond_68

    .line 43
    const-wide v4, -0x3f3c780000000000L    # -10000.0

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v6

    mul-double/2addr v6, v14

    add-double/2addr v4, v6

    double-to-float v4, v4

    const-wide v6, -0x3f40c00000000000L    # -8000.0

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v8

    mul-double/2addr v8, v14

    add-double/2addr v6, v8

    double-to-float v5, v6

    invoke-virtual {v2, v4, v5}, Lfr/testudo/spacecorsair/engine/Vector2;->set(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 44
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v4

    mul-double/2addr v4, v12

    add-double/2addr v4, v10

    double-to-float v4, v4

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v6

    mul-double/2addr v6, v12

    add-double/2addr v6, v10

    double-to-float v5, v6

    invoke-virtual {v3, v4, v5}, Lfr/testudo/spacecorsair/engine/Vector2;->set(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 45
    invoke-static {}, Lfr/testudo/spacecorsair/business/factory/GamePools;->newRandomSizeAsteroid()Lfr/testudo/spacecorsair/business/world/Asteroid;

    move-result-object v4

    const-wide/high16 v6, -0x4020000000000000L    # -0.5

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v8

    add-double/2addr v6, v8

    double-to-float v5, v6

    invoke-virtual {v4, v2, v3, v5}, Lfr/testudo/spacecorsair/business/world/Asteroid;->init(Lfr/testudo/spacecorsair/engine/Vector2;Lfr/testudo/spacecorsair/engine/Vector2;F)Lfr/testudo/spacecorsair/business/world/Asteroid;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 42
    add-int/lit8 v0, v0, 0x1

    goto :goto_22

    .line 48
    :cond_68
    invoke-static {v1}, Lfr/testudo/spacecorsair/game/levels/builders/PlanckPrideLevelBuilder;->addEnnemies(Ljava/util/List;)V

    .line 50
    invoke-static {}, Lfr/testudo/spacecorsair/business/player/PlayerShip;->instance()Lfr/testudo/spacecorsair/business/player/PlayerShip;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 52
    new-instance v0, Lfr/testudo/spacecorsair/game/levels/Level;

    sget-object v2, Lfr/testudo/spacecorsair/game/levels/LevelId;->PLANCK_PRIDE:Lfr/testudo/spacecorsair/game/levels/LevelId;

    sget-object v3, Lfr/testudo/spacecorsair/game/levels/LevelAnimator;->NOP:Lfr/testudo/spacecorsair/game/levels/LevelAnimator;

    invoke-direct {v0, v2, v1, v3}, Lfr/testudo/spacecorsair/game/levels/Level;-><init>(Lfr/testudo/spacecorsair/game/levels/LevelId;Ljava/util/List;Lfr/testudo/spacecorsair/game/levels/LevelAnimator;)V

    .line 53
    const v1, 0x7f06002a

    iput v1, v0, Lfr/testudo/spacecorsair/game/levels/Level;->musicResourceId:I

    .line 55
    return-object v0
.end method
