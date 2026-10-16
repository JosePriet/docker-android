.class public Lfr/testudo/spacecorsair/game/levels/builders/LevelBuilderHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final pos:Lfr/testudo/spacecorsair/engine/Vector2;

.field private static final speed:Lfr/testudo/spacecorsair/engine/Vector2;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 25
    new-instance v0, Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-direct {v0}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>()V

    sput-object v0, Lfr/testudo/spacecorsair/game/levels/builders/LevelBuilderHelper;->pos:Lfr/testudo/spacecorsair/engine/Vector2;

    .line 26
    new-instance v0, Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-direct {v0}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>()V

    sput-object v0, Lfr/testudo/spacecorsair/game/levels/builders/LevelBuilderHelper;->speed:Lfr/testudo/spacecorsair/engine/Vector2;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addAsteroidPacks(Ljava/util/List;IFFIIIII)V
    .registers 25
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lfr/testudo/spacecorsair/business/Element;",
            ">;IFFIIIII)V"
        }
    .end annotation

    .prologue
    .line 101
    const/4 v2, 0x0

    move v3, v2

    :goto_2
    move/from16 v0, p1

    if-ge v3, v0, :cond_87

    .line 102
    move/from16 v0, p4

    neg-int v2, v0

    int-to-double v4, v2

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v6

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    mul-double/2addr v6, v8

    move/from16 v0, p4

    int-to-double v8, v0

    mul-double/2addr v6, v8

    add-double/2addr v4, v6

    double-to-float v2, v4

    add-float v4, v2, p2

    .line 103
    move/from16 v0, p5

    neg-int v2, v0

    int-to-double v6, v2

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v8

    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    mul-double/2addr v8, v10

    move/from16 v0, p5

    int-to-double v10, v0

    mul-double/2addr v8, v10

    add-double/2addr v6, v8

    double-to-float v2, v6

    add-float v5, v2, p3

    .line 107
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v6

    sub-int v2, p7, p6

    int-to-double v8, v2

    mul-double/2addr v6, v8

    double-to-int v2, v6

    add-int v6, p6, v2

    .line 109
    const/4 v2, 0x0

    :goto_38
    if-ge v2, v6, :cond_82

    .line 110
    sget-object v7, Lfr/testudo/spacecorsair/game/levels/builders/LevelBuilderHelper;->pos:Lfr/testudo/spacecorsair/engine/Vector2;

    move/from16 v0, p8

    neg-int v8, v0

    int-to-double v8, v8

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v10

    const-wide/high16 v12, 0x4000000000000000L    # 2.0

    mul-double/2addr v10, v12

    move/from16 v0, p8

    int-to-double v12, v0

    mul-double/2addr v10, v12

    add-double/2addr v8, v10

    double-to-float v8, v8

    move/from16 v0, p8

    neg-int v9, v0

    int-to-double v10, v9

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v12

    const-wide/high16 v14, 0x4000000000000000L    # 2.0

    mul-double/2addr v12, v14

    move/from16 v0, p8

    int-to-double v14, v0

    mul-double/2addr v12, v14

    add-double/2addr v10, v12

    double-to-float v9, v10

    invoke-virtual {v7, v8, v9}, Lfr/testudo/spacecorsair/engine/Vector2;->set(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 111
    sget-object v7, Lfr/testudo/spacecorsair/game/levels/builders/LevelBuilderHelper;->pos:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v7, v4, v5}, Lfr/testudo/spacecorsair/engine/Vector2;->add(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 112
    invoke-static {}, Lfr/testudo/spacecorsair/business/factory/GamePools;->newRandomSizeAsteroid()Lfr/testudo/spacecorsair/business/world/Asteroid;

    move-result-object v7

    sget-object v8, Lfr/testudo/spacecorsair/game/levels/builders/LevelBuilderHelper;->pos:Lfr/testudo/spacecorsair/engine/Vector2;

    sget-object v9, Lfr/testudo/spacecorsair/game/levels/builders/LevelBuilderHelper;->speed:Lfr/testudo/spacecorsair/engine/Vector2;

    const-wide/high16 v10, -0x4020000000000000L    # -0.5

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v12

    add-double/2addr v10, v12

    double-to-float v10, v10

    invoke-virtual {v7, v8, v9, v10}, Lfr/testudo/spacecorsair/business/world/Asteroid;->init(Lfr/testudo/spacecorsair/engine/Vector2;Lfr/testudo/spacecorsair/engine/Vector2;F)Lfr/testudo/spacecorsair/business/world/Asteroid;

    move-result-object v7

    move-object/from16 v0, p0

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 109
    add-int/lit8 v2, v2, 0x1

    goto :goto_38

    .line 101
    :cond_82
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto/16 :goto_2

    .line 117
    :cond_87
    return-void
.end method

.method public static addAsteroidPacksWithCrocpierre(Ljava/util/List;IFFIIIIIIFII)V
    .registers 27
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lfr/testudo/spacecorsair/business/Element;",
            ">;IFFIIIIIIFII)V"
        }
    .end annotation

    .prologue
    .line 120
    const/4 v13, 0x0

    move-object v0, p0

    move v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move/from16 v10, p10

    move/from16 v11, p11

    move/from16 v12, p12

    invoke-static/range {v0 .. v13}, Lfr/testudo/spacecorsair/game/levels/builders/LevelBuilderHelper;->addAsteroidPacksWithCrocpierre(Ljava/util/List;IFFIIIIIIFIIZ)V

    .line 121
    return-void
.end method

.method public static addAsteroidPacksWithCrocpierre(Ljava/util/List;IFFIIIIIIFIIZ)V
    .registers 32
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lfr/testudo/spacecorsair/business/Element;",
            ">;IFFIIIIIIFIIZ)V"
        }
    .end annotation

    .prologue
    .line 125
    sget-object v2, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    const v3, 0x7f0702d1

    invoke-virtual {v2, v3}, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->getLocalizedString(I)Ljava/lang/String;

    move-result-object v5

    .line 130
    const/4 v2, 0x0

    move v4, v2

    :goto_b
    move/from16 v0, p1

    if-ge v4, v0, :cond_f7

    .line 131
    move/from16 v0, p4

    neg-int v2, v0

    int-to-double v2, v2

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v6

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    mul-double/2addr v6, v8

    move/from16 v0, p4

    int-to-double v8, v0

    mul-double/2addr v6, v8

    add-double/2addr v2, v6

    double-to-float v2, v2

    add-float v6, v2, p2

    .line 132
    move/from16 v0, p5

    neg-int v2, v0

    int-to-double v2, v2

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v8

    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    mul-double/2addr v8, v10

    move/from16 v0, p5

    int-to-double v10, v0

    mul-double/2addr v8, v10

    add-double/2addr v2, v8

    double-to-float v2, v2

    add-float v7, v2, p3

    .line 136
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v2

    sub-int v8, p7, p6

    int-to-double v8, v8

    mul-double/2addr v2, v8

    double-to-int v2, v2

    add-int v8, p6, v2

    .line 138
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v2

    move/from16 v0, p10

    float-to-double v10, v0

    cmpg-double v2, v2, v10

    if-gez v2, :cond_a8

    const/4 v2, 0x1

    move v3, v2

    .line 139
    :goto_4d
    const/4 v2, 0x0

    .line 140
    if-eqz v3, :cond_59

    .line 141
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v2

    move/from16 v0, p9

    int-to-double v10, v0

    mul-double/2addr v2, v10

    double-to-int v2, v2

    .line 144
    :cond_59
    const/4 v3, 0x0

    :goto_5a
    if-ge v3, v8, :cond_ab

    .line 145
    sget-object v9, Lfr/testudo/spacecorsair/game/levels/builders/LevelBuilderHelper;->pos:Lfr/testudo/spacecorsair/engine/Vector2;

    move/from16 v0, p8

    neg-int v10, v0

    int-to-double v10, v10

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v12

    const-wide/high16 v14, 0x4000000000000000L    # 2.0

    mul-double/2addr v12, v14

    move/from16 v0, p8

    int-to-double v14, v0

    mul-double/2addr v12, v14

    add-double/2addr v10, v12

    double-to-float v10, v10

    move/from16 v0, p8

    neg-int v11, v0

    int-to-double v12, v11

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v14

    const-wide/high16 v16, 0x4000000000000000L    # 2.0

    mul-double v14, v14, v16

    move/from16 v0, p8

    int-to-double v0, v0

    move-wide/from16 v16, v0

    mul-double v14, v14, v16

    add-double/2addr v12, v14

    double-to-float v11, v12

    invoke-virtual {v9, v10, v11}, Lfr/testudo/spacecorsair/engine/Vector2;->set(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 146
    sget-object v9, Lfr/testudo/spacecorsair/game/levels/builders/LevelBuilderHelper;->pos:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v9, v6, v7}, Lfr/testudo/spacecorsair/engine/Vector2;->add(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 147
    invoke-static {}, Lfr/testudo/spacecorsair/business/factory/GamePools;->newRandomSizeAsteroid()Lfr/testudo/spacecorsair/business/world/Asteroid;

    move-result-object v9

    sget-object v10, Lfr/testudo/spacecorsair/game/levels/builders/LevelBuilderHelper;->pos:Lfr/testudo/spacecorsair/engine/Vector2;

    sget-object v11, Lfr/testudo/spacecorsair/game/levels/builders/LevelBuilderHelper;->speed:Lfr/testudo/spacecorsair/engine/Vector2;

    const-wide/high16 v12, -0x4020000000000000L    # -0.5

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v14

    add-double/2addr v12, v14

    double-to-float v12, v12

    invoke-virtual {v9, v10, v11, v12}, Lfr/testudo/spacecorsair/business/world/Asteroid;->init(Lfr/testudo/spacecorsair/engine/Vector2;Lfr/testudo/spacecorsair/engine/Vector2;F)Lfr/testudo/spacecorsair/business/world/Asteroid;

    move-result-object v9

    move-object/from16 v0, p0

    invoke-interface {v0, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 144
    add-int/lit8 v3, v3, 0x1

    goto :goto_5a

    .line 138
    :cond_a8
    const/4 v2, 0x0

    move v3, v2

    goto :goto_4d

    .line 151
    :cond_ab
    const/4 v3, 0x0

    :goto_ac
    if-ge v3, v2, :cond_f2

    .line 152
    sget-object v8, Lfr/testudo/spacecorsair/game/levels/builders/LevelBuilderHelper;->pos:Lfr/testudo/spacecorsair/engine/Vector2;

    move/from16 v0, p8

    neg-int v9, v0

    int-to-double v10, v9

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v12

    const-wide/high16 v14, 0x4000000000000000L    # 2.0

    mul-double/2addr v12, v14

    move/from16 v0, p8

    int-to-double v14, v0

    mul-double/2addr v12, v14

    add-double/2addr v10, v12

    double-to-float v9, v10

    move/from16 v0, p8

    neg-int v10, v0

    int-to-double v10, v10

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v12

    const-wide/high16 v14, 0x4000000000000000L    # 2.0

    mul-double/2addr v12, v14

    move/from16 v0, p8

    int-to-double v14, v0

    mul-double/2addr v12, v14

    add-double/2addr v10, v12

    double-to-float v10, v10

    invoke-virtual {v8, v9, v10}, Lfr/testudo/spacecorsair/engine/Vector2;->set(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 153
    sget-object v8, Lfr/testudo/spacecorsair/game/levels/builders/LevelBuilderHelper;->pos:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v8, v6, v7}, Lfr/testudo/spacecorsair/engine/Vector2;->add(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 154
    invoke-static/range {p11 .. p12}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisFactory;->newTaupe(II)Lfr/testudo/spacecorsair/business/ennemis/TaupeShip;

    move-result-object v8

    .line 155
    sget-object v9, Lfr/testudo/spacecorsair/game/levels/builders/LevelBuilderHelper;->pos:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v8, v9}, Lfr/testudo/spacecorsair/business/ennemis/TaupeShip;->setPosition(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/business/Element;

    .line 156
    if-eqz p13, :cond_e8

    .line 157
    invoke-virtual {v8}, Lfr/testudo/spacecorsair/business/ennemis/TaupeShip;->setElite()Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    .line 160
    :cond_e8
    iput-object v5, v8, Lfr/testudo/spacecorsair/business/ennemis/TaupeShip;->specificName:Ljava/lang/String;

    .line 161
    move-object/from16 v0, p0

    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 151
    add-int/lit8 v3, v3, 0x1

    goto :goto_ac

    .line 130
    :cond_f2
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    goto/16 :goto_b

    .line 167
    :cond_f7
    return-void
.end method

.method public static addAsteroidsCircle(Ljava/util/List;IIFFZ)V
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lfr/testudo/spacecorsair/business/Element;",
            ">;IIFFZ)V"
        }
    .end annotation

    .prologue
    .line 216
    const/4 v0, 0x0

    :goto_1
    if-ge v0, p1, :cond_37

    .line 218
    mul-int/lit16 v1, v0, 0x168

    div-int/2addr v1, p1

    int-to-float v1, v1

    .line 219
    float-to-double v2, v1

    invoke-static {v2, v3}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v2

    .line 221
    sget-object v1, Lfr/testudo/spacecorsair/game/levels/builders/LevelBuilderHelper;->pos:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    int-to-double v6, p2

    mul-double/2addr v4, v6

    double-to-float v4, v4

    add-float/2addr v4, p3

    iput v4, v1, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    .line 222
    sget-object v1, Lfr/testudo/spacecorsair/game/levels/builders/LevelBuilderHelper;->pos:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    int-to-double v4, p2

    mul-double/2addr v2, v4

    double-to-float v2, v2

    add-float/2addr v2, p4

    iput v2, v1, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    .line 224
    invoke-static {p5}, Lfr/testudo/spacecorsair/business/factory/GamePools;->newRandomAsteroid(Z)Lfr/testudo/spacecorsair/business/world/Asteroid;

    move-result-object v1

    sget-object v2, Lfr/testudo/spacecorsair/game/levels/builders/LevelBuilderHelper;->pos:Lfr/testudo/spacecorsair/engine/Vector2;

    sget-object v3, Lfr/testudo/spacecorsair/engine/Vector2;->ZERO:Lfr/testudo/spacecorsair/engine/Vector2;

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Lfr/testudo/spacecorsair/business/world/Asteroid;->init(Lfr/testudo/spacecorsair/engine/Vector2;Lfr/testudo/spacecorsair/engine/Vector2;F)Lfr/testudo/spacecorsair/business/world/Asteroid;

    move-result-object v1

    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 216
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 227
    :cond_37
    return-void
.end method

.method public static addAsteroidsCircleWithRandom(Ljava/util/List;IIFFZIZ)V
    .registers 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lfr/testudo/spacecorsair/business/Element;",
            ">;IIFFZIZ)V"
        }
    .end annotation

    .prologue
    .line 233
    const/4 v2, 0x0

    :goto_1
    if-ge v2, p1, :cond_70

    .line 235
    mul-int/lit16 v3, v2, 0x168

    div-int/2addr v3, p1

    int-to-float v3, v3

    .line 236
    float-to-double v4, v3

    invoke-static {v4, v5}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v4

    .line 237
    sget-object v3, Lfr/testudo/spacecorsair/game/levels/builders/LevelBuilderHelper;->pos:Lfr/testudo/spacecorsair/engine/Vector2;

    move/from16 v0, p6

    neg-int v6, v0

    int-to-double v6, v6

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v8

    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    mul-double/2addr v8, v10

    move/from16 v0, p6

    int-to-double v10, v0

    mul-double/2addr v8, v10

    add-double/2addr v6, v8

    double-to-float v6, v6

    move/from16 v0, p6

    neg-int v7, v0

    int-to-double v8, v7

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v10

    const-wide/high16 v12, 0x4000000000000000L    # 2.0

    mul-double/2addr v10, v12

    move/from16 v0, p6

    int-to-double v12, v0

    mul-double/2addr v10, v12

    add-double/2addr v8, v10

    double-to-float v7, v8

    invoke-virtual {v3, v6, v7}, Lfr/testudo/spacecorsair/engine/Vector2;->set(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 238
    sget-object v3, Lfr/testudo/spacecorsair/game/levels/builders/LevelBuilderHelper;->pos:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v6, v3, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v8

    move/from16 v0, p2

    int-to-double v10, v0

    mul-double/2addr v8, v10

    double-to-float v7, v8

    add-float v7, v7, p3

    add-float/2addr v6, v7

    iput v6, v3, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    .line 239
    sget-object v3, Lfr/testudo/spacecorsair/game/levels/builders/LevelBuilderHelper;->pos:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v6, v3, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    move/from16 v0, p2

    int-to-double v8, v0

    mul-double/2addr v4, v8

    double-to-float v4, v4

    add-float v4, v4, p4

    add-float/2addr v4, v6

    iput v4, v3, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    .line 242
    invoke-static/range {p5 .. p5}, Lfr/testudo/spacecorsair/business/factory/GamePools;->newRandomSizeAsteroid(Z)Lfr/testudo/spacecorsair/business/world/Asteroid;

    move-result-object v3

    sget-object v4, Lfr/testudo/spacecorsair/game/levels/builders/LevelBuilderHelper;->pos:Lfr/testudo/spacecorsair/engine/Vector2;

    sget-object v5, Lfr/testudo/spacecorsair/engine/Vector2;->ZERO:Lfr/testudo/spacecorsair/engine/Vector2;

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v5, v6}, Lfr/testudo/spacecorsair/business/world/Asteroid;->init(Lfr/testudo/spacecorsair/engine/Vector2;Lfr/testudo/spacecorsair/engine/Vector2;F)Lfr/testudo/spacecorsair/business/world/Asteroid;

    move-result-object v3

    move/from16 v0, p7

    invoke-virtual {v3, v0}, Lfr/testudo/spacecorsair/business/world/Asteroid;->enableDeperdition(Z)Lfr/testudo/spacecorsair/business/world/Asteroid;

    move-result-object v3

    invoke-interface {p0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 233
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 245
    :cond_70
    return-void
.end method

.method public static addEpaveAlbatros(Ljava/util/List;IFFIIF)V
    .registers 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lfr/testudo/spacecorsair/business/Element;",
            ">;IFFIIF)V"
        }
    .end annotation

    .prologue
    .line 200
    const/4 v2, 0x0

    :goto_1
    if-ge v2, p1, :cond_76

    .line 201
    sget-object v3, Lfr/testudo/spacecorsair/game/levels/builders/LevelBuilderHelper;->pos:Lfr/testudo/spacecorsair/engine/Vector2;

    move/from16 v0, p4

    neg-int v4, v0

    int-to-double v4, v4

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v6

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    mul-double/2addr v6, v8

    move/from16 v0, p4

    int-to-double v8, v0

    mul-double/2addr v6, v8

    add-double/2addr v4, v6

    double-to-float v4, v4

    move/from16 v0, p5

    neg-int v5, v0

    int-to-double v6, v5

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v8

    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    mul-double/2addr v8, v10

    move/from16 v0, p5

    int-to-double v10, v0

    mul-double/2addr v8, v10

    add-double/2addr v6, v8

    double-to-float v5, v6

    invoke-virtual {v3, v4, v5}, Lfr/testudo/spacecorsair/engine/Vector2;->set(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 202
    sget-object v3, Lfr/testudo/spacecorsair/game/levels/builders/LevelBuilderHelper;->pos:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v3, p2, p3}, Lfr/testudo/spacecorsair/engine/Vector2;->add(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 203
    sget-object v3, Lfr/testudo/spacecorsair/game/levels/builders/LevelBuilderHelper;->speed:Lfr/testudo/spacecorsair/engine/Vector2;

    move/from16 v0, p6

    neg-float v4, v0

    float-to-double v4, v4

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v6

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    mul-double/2addr v6, v8

    move/from16 v0, p6

    float-to-double v8, v0

    mul-double/2addr v6, v8

    add-double/2addr v4, v6

    double-to-float v4, v4

    move/from16 v0, p6

    neg-float v5, v0

    float-to-double v6, v5

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v8

    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    mul-double/2addr v8, v10

    move/from16 v0, p6

    float-to-double v10, v0

    mul-double/2addr v8, v10

    add-double/2addr v6, v8

    double-to-float v5, v6

    invoke-virtual {v3, v4, v5}, Lfr/testudo/spacecorsair/engine/Vector2;->set(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 205
    invoke-static {}, Lfr/testudo/spacecorsair/business/factory/GamePools;->newEpaveAlbatros()Lfr/testudo/spacecorsair/business/world/EpaveAlbatros;

    move-result-object v3

    sget-object v4, Lfr/testudo/spacecorsair/game/levels/builders/LevelBuilderHelper;->pos:Lfr/testudo/spacecorsair/engine/Vector2;

    sget-object v5, Lfr/testudo/spacecorsair/game/levels/builders/LevelBuilderHelper;->speed:Lfr/testudo/spacecorsair/engine/Vector2;

    const-wide v6, -0x4046666666666666L    # -0.1

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v8

    const-wide/high16 v10, 0x4014000000000000L    # 5.0

    div-double/2addr v8, v10

    add-double/2addr v6, v8

    double-to-float v6, v6

    invoke-virtual {v3, v4, v5, v6}, Lfr/testudo/spacecorsair/business/world/EpaveAlbatros;->init(Lfr/testudo/spacecorsair/engine/Vector2;Lfr/testudo/spacecorsair/engine/Vector2;F)Lfr/testudo/spacecorsair/business/world/EpaveAlbatros;

    move-result-object v3

    invoke-interface {p0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 200
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 208
    :cond_76
    return-void
.end method

.method public static addRandomAsteroid(Ljava/util/List;IFFIIF)V
    .registers 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lfr/testudo/spacecorsair/business/Element;",
            ">;IFFIIF)V"
        }
    .end annotation

    .prologue
    .line 172
    const/4 v2, 0x0

    :goto_1
    if-ge v2, p1, :cond_70

    .line 173
    sget-object v3, Lfr/testudo/spacecorsair/game/levels/builders/LevelBuilderHelper;->pos:Lfr/testudo/spacecorsair/engine/Vector2;

    move/from16 v0, p4

    neg-int v4, v0

    int-to-double v4, v4

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v6

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    mul-double/2addr v6, v8

    move/from16 v0, p4

    int-to-double v8, v0

    mul-double/2addr v6, v8

    add-double/2addr v4, v6

    double-to-float v4, v4

    move/from16 v0, p5

    neg-int v5, v0

    int-to-double v6, v5

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v8

    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    mul-double/2addr v8, v10

    move/from16 v0, p5

    int-to-double v10, v0

    mul-double/2addr v8, v10

    add-double/2addr v6, v8

    double-to-float v5, v6

    invoke-virtual {v3, v4, v5}, Lfr/testudo/spacecorsair/engine/Vector2;->set(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 174
    sget-object v3, Lfr/testudo/spacecorsair/game/levels/builders/LevelBuilderHelper;->pos:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v3, p2, p3}, Lfr/testudo/spacecorsair/engine/Vector2;->add(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 175
    sget-object v3, Lfr/testudo/spacecorsair/game/levels/builders/LevelBuilderHelper;->speed:Lfr/testudo/spacecorsair/engine/Vector2;

    move/from16 v0, p6

    neg-float v4, v0

    float-to-double v4, v4

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v6

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    mul-double/2addr v6, v8

    move/from16 v0, p6

    float-to-double v8, v0

    mul-double/2addr v6, v8

    add-double/2addr v4, v6

    double-to-float v4, v4

    move/from16 v0, p6

    neg-float v5, v0

    float-to-double v6, v5

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v8

    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    mul-double/2addr v8, v10

    move/from16 v0, p6

    float-to-double v10, v0

    mul-double/2addr v8, v10

    add-double/2addr v6, v8

    double-to-float v5, v6

    invoke-virtual {v3, v4, v5}, Lfr/testudo/spacecorsair/engine/Vector2;->set(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 177
    invoke-static {}, Lfr/testudo/spacecorsair/business/factory/GamePools;->newRandomSizeAsteroid()Lfr/testudo/spacecorsair/business/world/Asteroid;

    move-result-object v3

    sget-object v4, Lfr/testudo/spacecorsair/game/levels/builders/LevelBuilderHelper;->pos:Lfr/testudo/spacecorsair/engine/Vector2;

    sget-object v5, Lfr/testudo/spacecorsair/game/levels/builders/LevelBuilderHelper;->speed:Lfr/testudo/spacecorsair/engine/Vector2;

    const-wide/high16 v6, -0x4020000000000000L    # -0.5

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v8

    add-double/2addr v6, v8

    double-to-float v6, v6

    invoke-virtual {v3, v4, v5, v6}, Lfr/testudo/spacecorsair/business/world/Asteroid;->init(Lfr/testudo/spacecorsair/engine/Vector2;Lfr/testudo/spacecorsair/engine/Vector2;F)Lfr/testudo/spacecorsair/business/world/Asteroid;

    move-result-object v3

    invoke-interface {p0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 172
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 180
    :cond_70
    return-void
.end method

.method public static addRandomAsteroids(Ljava/util/List;IFFIIFZ)V
    .registers 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lfr/testudo/spacecorsair/business/Element;",
            ">;IFFIIFZ)V"
        }
    .end annotation

    .prologue
    .line 54
    const/4 v2, 0x0

    :goto_1
    if-ge v2, p1, :cond_70

    .line 55
    sget-object v3, Lfr/testudo/spacecorsair/game/levels/builders/LevelBuilderHelper;->pos:Lfr/testudo/spacecorsair/engine/Vector2;

    move/from16 v0, p4

    neg-int v4, v0

    int-to-double v4, v4

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v6

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    mul-double/2addr v6, v8

    move/from16 v0, p4

    int-to-double v8, v0

    mul-double/2addr v6, v8

    add-double/2addr v4, v6

    double-to-float v4, v4

    move/from16 v0, p5

    neg-int v5, v0

    int-to-double v6, v5

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v8

    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    mul-double/2addr v8, v10

    move/from16 v0, p5

    int-to-double v10, v0

    mul-double/2addr v8, v10

    add-double/2addr v6, v8

    double-to-float v5, v6

    invoke-virtual {v3, v4, v5}, Lfr/testudo/spacecorsair/engine/Vector2;->set(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 56
    sget-object v3, Lfr/testudo/spacecorsair/game/levels/builders/LevelBuilderHelper;->pos:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v3, p2, p3}, Lfr/testudo/spacecorsair/engine/Vector2;->add(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 57
    sget-object v3, Lfr/testudo/spacecorsair/game/levels/builders/LevelBuilderHelper;->speed:Lfr/testudo/spacecorsair/engine/Vector2;

    move/from16 v0, p6

    neg-float v4, v0

    float-to-double v4, v4

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v6

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    mul-double/2addr v6, v8

    move/from16 v0, p6

    float-to-double v8, v0

    mul-double/2addr v6, v8

    add-double/2addr v4, v6

    double-to-float v4, v4

    move/from16 v0, p6

    neg-float v5, v0

    float-to-double v6, v5

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v8

    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    mul-double/2addr v8, v10

    move/from16 v0, p6

    float-to-double v10, v0

    mul-double/2addr v8, v10

    add-double/2addr v6, v8

    double-to-float v5, v6

    invoke-virtual {v3, v4, v5}, Lfr/testudo/spacecorsair/engine/Vector2;->set(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 59
    invoke-static/range {p7 .. p7}, Lfr/testudo/spacecorsair/business/factory/GamePools;->newRandomSizeAsteroid(Z)Lfr/testudo/spacecorsair/business/world/Asteroid;

    move-result-object v3

    sget-object v4, Lfr/testudo/spacecorsair/game/levels/builders/LevelBuilderHelper;->pos:Lfr/testudo/spacecorsair/engine/Vector2;

    sget-object v5, Lfr/testudo/spacecorsair/game/levels/builders/LevelBuilderHelper;->speed:Lfr/testudo/spacecorsair/engine/Vector2;

    const-wide/high16 v6, -0x4020000000000000L    # -0.5

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v8

    add-double/2addr v6, v8

    double-to-float v6, v6

    invoke-virtual {v3, v4, v5, v6}, Lfr/testudo/spacecorsair/business/world/Asteroid;->init(Lfr/testudo/spacecorsair/engine/Vector2;Lfr/testudo/spacecorsair/engine/Vector2;F)Lfr/testudo/spacecorsair/business/world/Asteroid;

    move-result-object v3

    invoke-interface {p0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 54
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 62
    :cond_70
    return-void
.end method

.method public static addRandomMalachite(Ljava/util/List;IFFIIF)V
    .registers 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lfr/testudo/spacecorsair/business/Element;",
            ">;IFFIIF)V"
        }
    .end annotation

    .prologue
    .line 30
    const/4 v2, 0x0

    :goto_1
    if-ge v2, p1, :cond_70

    .line 31
    sget-object v3, Lfr/testudo/spacecorsair/game/levels/builders/LevelBuilderHelper;->pos:Lfr/testudo/spacecorsair/engine/Vector2;

    move/from16 v0, p4

    neg-int v4, v0

    int-to-double v4, v4

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v6

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    mul-double/2addr v6, v8

    move/from16 v0, p4

    int-to-double v8, v0

    mul-double/2addr v6, v8

    add-double/2addr v4, v6

    double-to-float v4, v4

    move/from16 v0, p5

    neg-int v5, v0

    int-to-double v6, v5

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v8

    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    mul-double/2addr v8, v10

    move/from16 v0, p5

    int-to-double v10, v0

    mul-double/2addr v8, v10

    add-double/2addr v6, v8

    double-to-float v5, v6

    invoke-virtual {v3, v4, v5}, Lfr/testudo/spacecorsair/engine/Vector2;->set(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 32
    sget-object v3, Lfr/testudo/spacecorsair/game/levels/builders/LevelBuilderHelper;->pos:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v3, p2, p3}, Lfr/testudo/spacecorsair/engine/Vector2;->add(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 33
    sget-object v3, Lfr/testudo/spacecorsair/game/levels/builders/LevelBuilderHelper;->speed:Lfr/testudo/spacecorsair/engine/Vector2;

    move/from16 v0, p6

    neg-float v4, v0

    float-to-double v4, v4

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v6

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    mul-double/2addr v6, v8

    move/from16 v0, p6

    float-to-double v8, v0

    mul-double/2addr v6, v8

    add-double/2addr v4, v6

    double-to-float v4, v4

    move/from16 v0, p6

    neg-float v5, v0

    float-to-double v6, v5

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v8

    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    mul-double/2addr v8, v10

    move/from16 v0, p6

    float-to-double v10, v0

    mul-double/2addr v8, v10

    add-double/2addr v6, v8

    double-to-float v5, v6

    invoke-virtual {v3, v4, v5}, Lfr/testudo/spacecorsair/engine/Vector2;->set(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 35
    invoke-static {}, Lfr/testudo/spacecorsair/business/factory/GamePools;->newMalachiteAsteroid()Lfr/testudo/spacecorsair/business/world/MalachiteAsteroid;

    move-result-object v3

    sget-object v4, Lfr/testudo/spacecorsair/game/levels/builders/LevelBuilderHelper;->pos:Lfr/testudo/spacecorsair/engine/Vector2;

    sget-object v5, Lfr/testudo/spacecorsair/game/levels/builders/LevelBuilderHelper;->speed:Lfr/testudo/spacecorsair/engine/Vector2;

    const-wide/high16 v6, -0x4020000000000000L    # -0.5

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v8

    add-double/2addr v6, v8

    double-to-float v6, v6

    invoke-virtual {v3, v4, v5, v6}, Lfr/testudo/spacecorsair/business/world/MalachiteAsteroid;->init(Lfr/testudo/spacecorsair/engine/Vector2;Lfr/testudo/spacecorsair/engine/Vector2;F)Lfr/testudo/spacecorsair/business/world/MalachiteAsteroid;

    move-result-object v3

    invoke-interface {p0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 30
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 38
    :cond_70
    return-void
.end method

.method public static addRandomMines(Ljava/util/List;IFFIIFLfr/testudo/spacecorsair/business/ennemis/MineSpec;)V
    .registers 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lfr/testudo/spacecorsair/business/Element;",
            ">;IFFIIF",
            "Lfr/testudo/spacecorsair/business/ennemis/MineSpec;",
            ")V"
        }
    .end annotation

    .prologue
    .line 68
    const/4 v2, 0x0

    :goto_1
    if-ge v2, p1, :cond_72

    .line 69
    sget-object v3, Lfr/testudo/spacecorsair/game/levels/builders/LevelBuilderHelper;->pos:Lfr/testudo/spacecorsair/engine/Vector2;

    move/from16 v0, p4

    neg-int v4, v0

    int-to-double v4, v4

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v6

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    mul-double/2addr v6, v8

    move/from16 v0, p4

    int-to-double v8, v0

    mul-double/2addr v6, v8

    add-double/2addr v4, v6

    double-to-float v4, v4

    move/from16 v0, p5

    neg-int v5, v0

    int-to-double v6, v5

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v8

    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    mul-double/2addr v8, v10

    move/from16 v0, p5

    int-to-double v10, v0

    mul-double/2addr v8, v10

    add-double/2addr v6, v8

    double-to-float v5, v6

    invoke-virtual {v3, v4, v5}, Lfr/testudo/spacecorsair/engine/Vector2;->set(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 70
    sget-object v3, Lfr/testudo/spacecorsair/game/levels/builders/LevelBuilderHelper;->pos:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v3, p2, p3}, Lfr/testudo/spacecorsair/engine/Vector2;->add(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 71
    sget-object v3, Lfr/testudo/spacecorsair/game/levels/builders/LevelBuilderHelper;->speed:Lfr/testudo/spacecorsair/engine/Vector2;

    move/from16 v0, p6

    neg-float v4, v0

    float-to-double v4, v4

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v6

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    mul-double/2addr v6, v8

    move/from16 v0, p6

    float-to-double v8, v0

    mul-double/2addr v6, v8

    add-double/2addr v4, v6

    double-to-float v4, v4

    move/from16 v0, p6

    neg-float v5, v0

    float-to-double v6, v5

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v8

    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    mul-double/2addr v8, v10

    move/from16 v0, p6

    float-to-double v10, v0

    mul-double/2addr v8, v10

    add-double/2addr v6, v8

    double-to-float v5, v6

    invoke-virtual {v3, v4, v5}, Lfr/testudo/spacecorsair/engine/Vector2;->set(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 73
    invoke-static {}, Lfr/testudo/spacecorsair/business/factory/GamePools;->newMine()Lfr/testudo/spacecorsair/business/world/Mine;

    move-result-object v3

    sget-object v4, Lfr/testudo/spacecorsair/game/levels/builders/LevelBuilderHelper;->pos:Lfr/testudo/spacecorsair/engine/Vector2;

    sget-object v5, Lfr/testudo/spacecorsair/game/levels/builders/LevelBuilderHelper;->speed:Lfr/testudo/spacecorsair/engine/Vector2;

    const-wide/high16 v6, -0x4020000000000000L    # -0.5

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v8

    add-double/2addr v6, v8

    double-to-float v6, v6

    move-object/from16 v0, p7

    invoke-virtual {v3, v4, v5, v6, v0}, Lfr/testudo/spacecorsair/business/world/Mine;->init(Lfr/testudo/spacecorsair/engine/Vector2;Lfr/testudo/spacecorsair/engine/Vector2;FLfr/testudo/spacecorsair/business/ennemis/MineSpec;)Lfr/testudo/spacecorsair/business/world/Mine;

    move-result-object v3

    invoke-interface {p0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 68
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 76
    :cond_72
    return-void
.end method

.method public static addRandomReprogramableMines(Ljava/util/List;IFFIIFLfr/testudo/spacecorsair/business/ennemis/MineSpec;)V
    .registers 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lfr/testudo/spacecorsair/business/Element;",
            ">;IFFIIF",
            "Lfr/testudo/spacecorsair/business/ennemis/MineSpec;",
            ")V"
        }
    .end annotation

    .prologue
    .line 83
    const/4 v2, 0x0

    :goto_1
    if-ge v2, p1, :cond_72

    .line 84
    sget-object v3, Lfr/testudo/spacecorsair/game/levels/builders/LevelBuilderHelper;->pos:Lfr/testudo/spacecorsair/engine/Vector2;

    move/from16 v0, p4

    neg-int v4, v0

    int-to-double v4, v4

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v6

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    mul-double/2addr v6, v8

    move/from16 v0, p4

    int-to-double v8, v0

    mul-double/2addr v6, v8

    add-double/2addr v4, v6

    double-to-float v4, v4

    move/from16 v0, p5

    neg-int v5, v0

    int-to-double v6, v5

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v8

    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    mul-double/2addr v8, v10

    move/from16 v0, p5

    int-to-double v10, v0

    mul-double/2addr v8, v10

    add-double/2addr v6, v8

    double-to-float v5, v6

    invoke-virtual {v3, v4, v5}, Lfr/testudo/spacecorsair/engine/Vector2;->set(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 85
    sget-object v3, Lfr/testudo/spacecorsair/game/levels/builders/LevelBuilderHelper;->pos:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v3, p2, p3}, Lfr/testudo/spacecorsair/engine/Vector2;->add(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 86
    sget-object v3, Lfr/testudo/spacecorsair/game/levels/builders/LevelBuilderHelper;->speed:Lfr/testudo/spacecorsair/engine/Vector2;

    move/from16 v0, p6

    neg-float v4, v0

    float-to-double v4, v4

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v6

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    mul-double/2addr v6, v8

    move/from16 v0, p6

    float-to-double v8, v0

    mul-double/2addr v6, v8

    add-double/2addr v4, v6

    double-to-float v4, v4

    move/from16 v0, p6

    neg-float v5, v0

    float-to-double v6, v5

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v8

    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    mul-double/2addr v8, v10

    move/from16 v0, p6

    float-to-double v10, v0

    mul-double/2addr v8, v10

    add-double/2addr v6, v8

    double-to-float v5, v6

    invoke-virtual {v3, v4, v5}, Lfr/testudo/spacecorsair/engine/Vector2;->set(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 88
    invoke-static {}, Lfr/testudo/spacecorsair/business/factory/GamePools;->newReprogrammableMine()Lfr/testudo/spacecorsair/business/world/ReprogramableMine;

    move-result-object v3

    sget-object v4, Lfr/testudo/spacecorsair/game/levels/builders/LevelBuilderHelper;->pos:Lfr/testudo/spacecorsair/engine/Vector2;

    sget-object v5, Lfr/testudo/spacecorsair/game/levels/builders/LevelBuilderHelper;->speed:Lfr/testudo/spacecorsair/engine/Vector2;

    const-wide/high16 v6, -0x4020000000000000L    # -0.5

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v8

    add-double/2addr v6, v8

    double-to-float v6, v6

    move-object/from16 v0, p7

    invoke-virtual {v3, v4, v5, v6, v0}, Lfr/testudo/spacecorsair/business/world/ReprogramableMine;->init(Lfr/testudo/spacecorsair/engine/Vector2;Lfr/testudo/spacecorsair/engine/Vector2;FLfr/testudo/spacecorsair/business/ennemis/MineSpec;)Lfr/testudo/spacecorsair/business/world/ReprogramableMine;

    move-result-object v3

    invoke-interface {p0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 83
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 91
    :cond_72
    return-void
.end method

.method public static addRandomRuby(Ljava/util/List;IFFIIF)V
    .registers 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lfr/testudo/spacecorsair/business/Element;",
            ">;IFFIIF)V"
        }
    .end annotation

    .prologue
    .line 42
    const/4 v2, 0x0

    :goto_1
    if-ge v2, p1, :cond_70

    .line 43
    sget-object v3, Lfr/testudo/spacecorsair/game/levels/builders/LevelBuilderHelper;->pos:Lfr/testudo/spacecorsair/engine/Vector2;

    move/from16 v0, p4

    neg-int v4, v0

    int-to-double v4, v4

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v6

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    mul-double/2addr v6, v8

    move/from16 v0, p4

    int-to-double v8, v0

    mul-double/2addr v6, v8

    add-double/2addr v4, v6

    double-to-float v4, v4

    move/from16 v0, p5

    neg-int v5, v0

    int-to-double v6, v5

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v8

    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    mul-double/2addr v8, v10

    move/from16 v0, p5

    int-to-double v10, v0

    mul-double/2addr v8, v10

    add-double/2addr v6, v8

    double-to-float v5, v6

    invoke-virtual {v3, v4, v5}, Lfr/testudo/spacecorsair/engine/Vector2;->set(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 44
    sget-object v3, Lfr/testudo/spacecorsair/game/levels/builders/LevelBuilderHelper;->pos:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v3, p2, p3}, Lfr/testudo/spacecorsair/engine/Vector2;->add(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 45
    sget-object v3, Lfr/testudo/spacecorsair/game/levels/builders/LevelBuilderHelper;->speed:Lfr/testudo/spacecorsair/engine/Vector2;

    move/from16 v0, p6

    neg-float v4, v0

    float-to-double v4, v4

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v6

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    mul-double/2addr v6, v8

    move/from16 v0, p6

    float-to-double v8, v0

    mul-double/2addr v6, v8

    add-double/2addr v4, v6

    double-to-float v4, v4

    move/from16 v0, p6

    neg-float v5, v0

    float-to-double v6, v5

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v8

    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    mul-double/2addr v8, v10

    move/from16 v0, p6

    float-to-double v10, v0

    mul-double/2addr v8, v10

    add-double/2addr v6, v8

    double-to-float v5, v6

    invoke-virtual {v3, v4, v5}, Lfr/testudo/spacecorsair/engine/Vector2;->set(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 47
    invoke-static {}, Lfr/testudo/spacecorsair/business/factory/GamePools;->newRubyAsteroid()Lfr/testudo/spacecorsair/business/world/RubyAsteroid;

    move-result-object v3

    sget-object v4, Lfr/testudo/spacecorsair/game/levels/builders/LevelBuilderHelper;->pos:Lfr/testudo/spacecorsair/engine/Vector2;

    sget-object v5, Lfr/testudo/spacecorsair/game/levels/builders/LevelBuilderHelper;->speed:Lfr/testudo/spacecorsair/engine/Vector2;

    const-wide/high16 v6, -0x4020000000000000L    # -0.5

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v8

    add-double/2addr v6, v8

    double-to-float v6, v6

    invoke-virtual {v3, v4, v5, v6}, Lfr/testudo/spacecorsair/business/world/RubyAsteroid;->init(Lfr/testudo/spacecorsair/engine/Vector2;Lfr/testudo/spacecorsair/engine/Vector2;F)Lfr/testudo/spacecorsair/business/world/RubyAsteroid;

    move-result-object v3

    invoke-interface {p0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 42
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 50
    :cond_70
    return-void
.end method

.method public static addStaticEnnemies(Ljava/util/List;IFFIILfr/testudo/spacecorsair/business/ennemis/EnnemisType;II)V
    .registers 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lfr/testudo/spacecorsair/business/Element;",
            ">;IFFII",
            "Lfr/testudo/spacecorsair/business/ennemis/EnnemisType;",
            "II)V"
        }
    .end annotation

    .prologue
    .line 185
    const/4 v0, 0x0

    :goto_1
    if-ge v0, p1, :cond_37

    .line 186
    sget-object v1, Lfr/testudo/spacecorsair/game/levels/builders/LevelBuilderHelper;->pos:Lfr/testudo/spacecorsair/engine/Vector2;

    neg-int v2, p4

    int-to-double v2, v2

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v4

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    mul-double/2addr v4, v6

    int-to-double v6, p4

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    double-to-float v2, v2

    neg-int v3, p5

    int-to-double v4, v3

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v6

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    mul-double/2addr v6, v8

    int-to-double v8, p5

    mul-double/2addr v6, v8

    add-double/2addr v4, v6

    double-to-float v3, v4

    invoke-virtual {v1, v2, v3}, Lfr/testudo/spacecorsair/engine/Vector2;->set(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 187
    sget-object v1, Lfr/testudo/spacecorsair/game/levels/builders/LevelBuilderHelper;->pos:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v1, p2, p3}, Lfr/testudo/spacecorsair/engine/Vector2;->add(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 189
    invoke-static/range {p6 .. p8}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisFactory;->newEnnemis(Lfr/testudo/spacecorsair/business/ennemis/EnnemisType;II)Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    move-result-object v1

    sget-object v2, Lfr/testudo/spacecorsair/game/levels/builders/LevelBuilderHelper;->pos:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v1, v2}, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->initPosition(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    move-result-object v1

    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 185
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 194
    :cond_37
    return-void
.end method
