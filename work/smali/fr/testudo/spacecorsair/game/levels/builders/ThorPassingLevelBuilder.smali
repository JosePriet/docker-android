.class public Lfr/testudo/spacecorsair/game/levels/builders/ThorPassingLevelBuilder;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static ALPHA_PATROLL_SEQUENCE:Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivitySequence; = null

.field private static final PATROL_ALPHA:Ljava/lang/String; = "patroll alfa"

.field public static RANDOM_PATROUILLE_NEAR_STATION:Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivitySequence; = null

.field static final expand:I = 0x258


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .prologue
    const/16 v5, 0x1b58

    const v4, 0x46435000    # 12500.0f

    const/high16 v3, 0x44fa0000    # 2000.0f

    .line 57
    new-instance v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivitySequence;

    invoke-direct {v0}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivitySequence;-><init>()V

    new-instance v1, Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;

    invoke-direct {v1}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;-><init>()V

    const/16 v2, 0x1964

    invoke-virtual {v1, v4, v3, v2}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;->initGotoRandom(FFI)Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivitySequence;->addActivity(Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;)Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivitySequence;

    move-result-object v0

    new-instance v1, Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;

    invoke-direct {v1}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;-><init>()V

    invoke-virtual {v1, v4, v3, v5}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;->initGotoRandom(FFI)Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivitySequence;->addActivity(Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;)Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivitySequence;

    move-result-object v0

    new-instance v1, Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;

    invoke-direct {v1}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;-><init>()V

    const/16 v2, 0xfa0

    invoke-virtual {v1, v2}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;->initIdleDuring(I)Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivitySequence;->addActivity(Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;)Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivitySequence;

    move-result-object v0

    sput-object v0, Lfr/testudo/spacecorsair/game/levels/builders/ThorPassingLevelBuilder;->RANDOM_PATROUILLE_NEAR_STATION:Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivitySequence;

    .line 99
    new-instance v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivitySequence;

    invoke-direct {v0}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivitySequence;-><init>()V

    new-instance v1, Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;

    invoke-direct {v1}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;-><init>()V

    const v2, -0x3b448000    # -1500.0f

    const v3, -0x3a34e000    # -6500.0f

    invoke-virtual {v1, v2, v3}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;->initGotoPoint(FF)Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivitySequence;->addActivity(Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;)Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivitySequence;

    move-result-object v0

    new-instance v1, Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;

    invoke-direct {v1}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;-><init>()V

    const v2, 0x45cb2000    # 6500.0f

    const v3, -0x3a448000    # -6000.0f

    invoke-virtual {v1, v2, v3}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;->initGotoPoint(FF)Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivitySequence;->addActivity(Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;)Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivitySequence;

    move-result-object v0

    new-instance v1, Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;

    invoke-direct {v1}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;-><init>()V

    const/high16 v2, 0x43fa0000    # 500.0f

    const v3, -0x39c48000    # -12000.0f

    invoke-virtual {v1, v2, v3}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;->initGotoPoint(FF)Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivitySequence;->addActivity(Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;)Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivitySequence;

    move-result-object v0

    new-instance v1, Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;

    invoke-direct {v1}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;-><init>()V

    const/high16 v2, -0x3b1f0000    # -1800.0f

    const v3, -0x39e3c000    # -10000.0f

    invoke-virtual {v1, v2, v3}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;->initGotoPoint(FF)Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivitySequence;->addActivity(Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;)Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivitySequence;

    move-result-object v0

    new-instance v1, Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;

    invoke-direct {v1}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;-><init>()V

    invoke-virtual {v1, v5}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;->initIdleDuring(I)Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivitySequence;->addActivity(Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;)Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivitySequence;

    move-result-object v0

    sput-object v0, Lfr/testudo/spacecorsair/game/levels/builders/ThorPassingLevelBuilder;->ALPHA_PATROLL_SEQUENCE:Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivitySequence;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static addAstroids(Ljava/util/List;)V
    .registers 13
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
    .line 124
    new-instance v1, Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-direct {v1}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>()V

    .line 125
    new-instance v2, Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-direct {v2}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>()V

    .line 127
    const/16 v0, -0x1388

    :goto_c
    const/16 v3, 0x1388

    if-gt v0, v3, :cond_a2

    .line 128
    add-int/lit16 v3, v0, -0x258

    int-to-double v4, v3

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v6

    const-wide v8, 0x4082c00000000000L    # 600.0

    mul-double/2addr v6, v8

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    mul-double/2addr v6, v8

    add-double/2addr v4, v6

    double-to-float v3, v4

    neg-int v4, v0

    add-int/lit16 v4, v4, -0x258

    int-to-double v4, v4

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v6

    const-wide v8, 0x4082c00000000000L    # 600.0

    mul-double/2addr v6, v8

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    mul-double/2addr v6, v8

    add-double/2addr v4, v6

    double-to-float v4, v4

    invoke-virtual {v1, v3, v4}, Lfr/testudo/spacecorsair/engine/Vector2;->set(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 129
    const/4 v3, 0x0

    invoke-static {v3}, Lfr/testudo/spacecorsair/business/factory/GamePools;->newRandomSizeAsteroid(Z)Lfr/testudo/spacecorsair/business/world/Asteroid;

    move-result-object v3

    sget-object v4, Lfr/testudo/spacecorsair/engine/Vector2;->ZERO:Lfr/testudo/spacecorsair/engine/Vector2;

    const-wide v6, -0x4036666666666666L    # -0.2

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v8

    const-wide v10, 0x3fd999999999999aL    # 0.4

    mul-double/2addr v8, v10

    add-double/2addr v6, v8

    double-to-float v5, v6

    invoke-virtual {v3, v1, v4, v5}, Lfr/testudo/spacecorsair/business/world/Asteroid;->init(Lfr/testudo/spacecorsair/engine/Vector2;Lfr/testudo/spacecorsair/engine/Vector2;F)Lfr/testudo/spacecorsair/business/world/Asteroid;

    move-result-object v3

    invoke-interface {p0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 130
    add-int/lit16 v3, v0, -0x258

    int-to-double v4, v3

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v6

    const-wide v8, 0x4082c00000000000L    # 600.0

    mul-double/2addr v6, v8

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    mul-double/2addr v6, v8

    add-double/2addr v4, v6

    double-to-float v3, v4

    neg-int v4, v0

    add-int/lit16 v4, v4, -0x258

    int-to-double v4, v4

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v6

    const-wide v8, 0x4082c00000000000L    # 600.0

    mul-double/2addr v6, v8

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    mul-double/2addr v6, v8

    add-double/2addr v4, v6

    double-to-float v4, v4

    invoke-virtual {v1, v3, v4}, Lfr/testudo/spacecorsair/engine/Vector2;->set(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 131
    const/4 v3, 0x0

    invoke-static {v3}, Lfr/testudo/spacecorsair/business/factory/GamePools;->newRandomSizeAsteroid(Z)Lfr/testudo/spacecorsair/business/world/Asteroid;

    move-result-object v3

    sget-object v4, Lfr/testudo/spacecorsair/engine/Vector2;->ZERO:Lfr/testudo/spacecorsair/engine/Vector2;

    const-wide v6, -0x4036666666666666L    # -0.2

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v8

    const-wide v10, 0x3fd999999999999aL    # 0.4

    mul-double/2addr v8, v10

    add-double/2addr v6, v8

    double-to-float v5, v6

    invoke-virtual {v3, v1, v4, v5}, Lfr/testudo/spacecorsair/business/world/Asteroid;->init(Lfr/testudo/spacecorsair/engine/Vector2;Lfr/testudo/spacecorsair/engine/Vector2;F)Lfr/testudo/spacecorsair/business/world/Asteroid;

    move-result-object v3

    invoke-interface {p0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 127
    add-int/lit8 v0, v0, 0x64

    goto/16 :goto_c

    .line 134
    :cond_a2
    const/4 v0, 0x0

    :goto_a3
    const/16 v3, 0x64

    if-ge v0, v3, :cond_10e

    .line 135
    const-wide v4, -0x3f48900000000000L    # -6000.0

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v6

    const-wide v8, 0x40c7700000000000L    # 12000.0

    mul-double/2addr v6, v8

    add-double/2addr v4, v6

    double-to-float v3, v4

    const-wide v4, -0x3f4c780000000000L    # -5000.0

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v6

    const-wide v8, 0x40c3880000000000L    # 10000.0

    mul-double/2addr v6, v8

    add-double/2addr v4, v6

    double-to-float v4, v4

    invoke-virtual {v1, v3, v4}, Lfr/testudo/spacecorsair/engine/Vector2;->set(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 136
    const/high16 v3, 0x42c80000    # 100.0f

    const/high16 v4, 0x45fa0000    # 8000.0f

    invoke-virtual {v1, v3, v4}, Lfr/testudo/spacecorsair/engine/Vector2;->add(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 137
    const-wide v4, -0x402ccccccccccccdL    # -0.3

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v6

    const-wide v8, 0x3fe3333333333333L    # 0.6

    mul-double/2addr v6, v8

    add-double/2addr v4, v6

    double-to-float v3, v4

    const-wide v4, -0x402ccccccccccccdL    # -0.3

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v6

    const-wide v8, 0x3fe3333333333333L    # 0.6

    mul-double/2addr v6, v8

    add-double/2addr v4, v6

    double-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Lfr/testudo/spacecorsair/engine/Vector2;->set(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 138
    invoke-static {}, Lfr/testudo/spacecorsair/business/factory/GamePools;->newRandomSizeAsteroid()Lfr/testudo/spacecorsair/business/world/Asteroid;

    move-result-object v3

    const-wide/high16 v4, -0x4020000000000000L    # -0.5

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v6

    add-double/2addr v4, v6

    double-to-float v4, v4

    invoke-virtual {v3, v1, v2, v4}, Lfr/testudo/spacecorsair/business/world/Asteroid;->init(Lfr/testudo/spacecorsair/engine/Vector2;Lfr/testudo/spacecorsair/engine/Vector2;F)Lfr/testudo/spacecorsair/business/world/Asteroid;

    move-result-object v3

    invoke-interface {p0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 134
    add-int/lit8 v0, v0, 0x1

    goto :goto_a3

    .line 141
    :cond_10e
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
    .line 66
    new-instance v1, Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-direct {v1}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>()V

    .line 69
    const/16 v0, -0x1388

    :goto_7
    const/16 v2, 0x1388

    if-gt v0, v2, :cond_43

    .line 70
    add-int/lit16 v2, v0, -0x258

    int-to-double v2, v2

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v4

    const-wide v6, 0x4082c00000000000L    # 600.0

    mul-double/2addr v4, v6

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    double-to-float v2, v2

    neg-int v3, v0

    add-int/lit16 v3, v3, -0x258

    int-to-double v4, v3

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v6

    const-wide v8, 0x4082c00000000000L    # 600.0

    mul-double/2addr v6, v8

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    mul-double/2addr v6, v8

    add-double/2addr v4, v6

    double-to-float v3, v4

    invoke-virtual {v1, v2, v3}, Lfr/testudo/spacecorsair/engine/Vector2;->set(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 71
    const/4 v2, 0x2

    const/4 v3, 0x3

    invoke-static {v2, v3}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisFactory;->newFixedTourelle(II)Lfr/testudo/spacecorsair/business/ennemis/FixedTourelle;

    move-result-object v2

    invoke-virtual {v2, v1}, Lfr/testudo/spacecorsair/business/ennemis/FixedTourelle;->initPosition(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    move-result-object v2

    invoke-interface {p0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 69
    add-int/lit16 v0, v0, 0xfa

    goto :goto_7

    .line 75
    :cond_43
    const/4 v0, 0x0

    :goto_44
    const/16 v2, 0x50

    if-ge v0, v2, :cond_7e

    .line 76
    const-wide v2, 0x40b1940000000000L    # 4500.0

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v4

    const-wide v6, 0x40c3880000000000L    # 10000.0

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    double-to-float v2, v2

    const-wide/16 v4, 0x0

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v6

    const-wide v8, 0x40af400000000000L    # 4000.0

    mul-double/2addr v6, v8

    add-double/2addr v4, v6

    double-to-float v3, v4

    invoke-virtual {v1, v2, v3}, Lfr/testudo/spacecorsair/engine/Vector2;->set(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 77
    const/4 v2, 0x1

    const/4 v3, 0x2

    invoke-static {v2, v3}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisFactory;->newBasicEnnemisShip(II)Lfr/testudo/spacecorsair/business/ennemis/BasicEnnemyShip;

    move-result-object v2

    .line 78
    invoke-virtual {v2, v1}, Lfr/testudo/spacecorsair/business/ennemis/BasicEnnemyShip;->initPosition(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    .line 79
    sget-object v3, Lfr/testudo/spacecorsair/game/levels/builders/ThorPassingLevelBuilder;->RANDOM_PATROUILLE_NEAR_STATION:Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivitySequence;

    invoke-virtual {v2, v3}, Lfr/testudo/spacecorsair/business/ennemis/BasicEnnemyShip;->setActivitySequence(Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivitySequence;)Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    .line 80
    invoke-interface {p0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 75
    add-int/lit8 v0, v0, 0x1

    goto :goto_44

    .line 83
    :cond_7e
    const/4 v0, 0x0

    :goto_7f
    const/16 v2, 0xa

    if-ge v0, v2, :cond_b7

    .line 84
    const-wide v2, -0x3f3e6c0000000000L    # -9000.0

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v4

    const-wide v6, 0x40b57c0000000000L    # 5500.0

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    double-to-float v2, v2

    const-wide v4, -0x3f50c00000000000L    # -4000.0

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v6

    const-wide v8, 0x40af400000000000L    # 4000.0

    mul-double/2addr v6, v8

    add-double/2addr v4, v6

    double-to-float v3, v4

    invoke-virtual {v1, v2, v3}, Lfr/testudo/spacecorsair/engine/Vector2;->set(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 85
    const/4 v2, 0x1

    const/4 v3, 0x2

    invoke-static {v2, v3}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisFactory;->newDefensor(II)Lfr/testudo/spacecorsair/business/ennemis/DefensorShip;

    move-result-object v2

    .line 86
    invoke-virtual {v2, v1}, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->initPosition(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    .line 87
    invoke-interface {p0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 83
    add-int/lit8 v0, v0, 0x1

    goto :goto_7f

    .line 91
    :cond_b7
    invoke-static {p0}, Lfr/testudo/spacecorsair/game/levels/builders/ThorPassingLevelBuilder;->addPatrollShips(Ljava/util/List;)V

    .line 95
    return-void
.end method

.method private static addPatrollShips(Ljava/util/List;)V
    .registers 7
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
    .line 110
    const/4 v0, 0x0

    :goto_1
    const/4 v1, 0x5

    if-ge v0, v1, :cond_31

    .line 111
    const/4 v1, 0x2

    invoke-static {v1}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisFactory;->newBasicEnnemisShip(I)Lfr/testudo/spacecorsair/business/ennemis/BasicEnnemyShip;

    move-result-object v1

    .line 112
    mul-int/lit8 v2, v0, 0x64

    rsub-int v2, v2, -0x5dc

    int-to-float v2, v2

    mul-int/lit16 v3, v0, 0xc8

    rsub-int v3, v3, -0x157c

    int-to-float v3, v3

    invoke-virtual {v1, v2, v3}, Lfr/testudo/spacecorsair/business/ennemis/BasicEnnemyShip;->initPosition(FF)Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    .line 113
    iget v2, v1, Lfr/testudo/spacecorsair/business/ennemis/BasicEnnemyShip;->pouseeForce:F

    float-to-double v2, v2

    const-wide v4, 0x3fb999999999999aL    # 0.1

    add-double/2addr v2, v4

    double-to-float v2, v2

    iput v2, v1, Lfr/testudo/spacecorsair/business/ennemis/BasicEnnemyShip;->pouseeForce:F

    .line 114
    sget-object v2, Lfr/testudo/spacecorsair/game/levels/builders/ThorPassingLevelBuilder;->ALPHA_PATROLL_SEQUENCE:Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivitySequence;

    invoke-virtual {v1, v2}, Lfr/testudo/spacecorsair/business/ennemis/BasicEnnemyShip;->setActivitySequence(Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivitySequence;)Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    .line 115
    const-string v2, "patroll alfa"

    iput-object v2, v1, Lfr/testudo/spacecorsair/business/ennemis/BasicEnnemyShip;->specificName:Ljava/lang/String;

    .line 116
    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 110
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 120
    :cond_31
    return-void
.end method

.method private static addPortals(Ljava/util/List;)V
    .registers 6
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
    const/4 v4, 0x0

    .line 147
    invoke-static {}, Lfr/testudo/spacecorsair/business/factory/GamePools;->newPortal()Lfr/testudo/spacecorsair/business/world/Portal;

    move-result-object v0

    const-string v1, "> genesis <"

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/business/world/Portal;->init(Ljava/lang/String;)Lfr/testudo/spacecorsair/business/world/Portal;

    move-result-object v0

    .line 148
    const-string v1, "genesis"

    iput-object v1, v0, Lfr/testudo/spacecorsair/business/world/Portal;->jumpLevelName:Ljava/lang/String;

    .line 149
    const-string v1, "> thor passing <"

    iput-object v1, v0, Lfr/testudo/spacecorsair/business/world/Portal;->jumpPortalName:Ljava/lang/String;

    .line 151
    iget-object v1, v0, Lfr/testudo/spacecorsair/business/world/Portal;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    const v2, -0x39e3c000    # -10000.0f

    invoke-virtual {v1, v4, v2}, Lfr/testudo/spacecorsair/engine/Vector2;->set(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 152
    iget-object v1, v0, Lfr/testudo/spacecorsair/business/world/Portal;->initialPlayerSpeed:Lfr/testudo/spacecorsair/engine/Vector2;

    const/high16 v2, 0x40e00000    # 7.0f

    invoke-virtual {v1, v4, v2}, Lfr/testudo/spacecorsair/engine/Vector2;->set(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 153
    iput v4, v0, Lfr/testudo/spacecorsair/business/world/Portal;->initialPlayerSpin:F

    .line 154
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 157
    invoke-static {}, Lfr/testudo/spacecorsair/business/factory/GamePools;->newPortal()Lfr/testudo/spacecorsair/business/world/Portal;

    move-result-object v0

    const-string v1, "> ventohigh <"

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/business/world/Portal;->init(Ljava/lang/String;)Lfr/testudo/spacecorsair/business/world/Portal;

    move-result-object v0

    .line 158
    const-string v1, "ventohigh"

    iput-object v1, v0, Lfr/testudo/spacecorsair/business/world/Portal;->jumpLevelName:Ljava/lang/String;

    .line 159
    const-string v1, "> thor passing <"

    iput-object v1, v0, Lfr/testudo/spacecorsair/business/world/Portal;->jumpPortalName:Ljava/lang/String;

    .line 161
    iget-object v1, v0, Lfr/testudo/spacecorsair/business/world/Portal;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    const/high16 v2, 0x43160000    # 150.0f

    const v3, 0x466a6000    # 15000.0f

    invoke-virtual {v1, v2, v3}, Lfr/testudo/spacecorsair/engine/Vector2;->set(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 162
    iget-object v1, v0, Lfr/testudo/spacecorsair/business/world/Portal;->initialPlayerSpeed:Lfr/testudo/spacecorsair/engine/Vector2;

    const/high16 v2, -0x3f200000    # -7.0f

    invoke-virtual {v1, v4, v2}, Lfr/testudo/spacecorsair/engine/Vector2;->set(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 163
    iput v4, v0, Lfr/testudo/spacecorsair/business/world/Portal;->initialPlayerSpin:F

    .line 164
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 166
    return-void
.end method

.method public static getThorPassing()Lfr/testudo/spacecorsair/game/levels/Level;
    .registers 4

    .prologue
    .line 35
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 37
    invoke-static {v0}, Lfr/testudo/spacecorsair/game/levels/builders/ThorPassingLevelBuilder;->addPortals(Ljava/util/List;)V

    .line 39
    invoke-static {v0}, Lfr/testudo/spacecorsair/game/levels/builders/ThorPassingLevelBuilder;->addAstroids(Ljava/util/List;)V

    .line 41
    invoke-static {v0}, Lfr/testudo/spacecorsair/game/levels/builders/ThorPassingLevelBuilder;->addEnnemies(Ljava/util/List;)V

    .line 44
    invoke-static {}, Lfr/testudo/spacecorsair/business/player/PlayerShip;->instance()Lfr/testudo/spacecorsair/business/player/PlayerShip;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 47
    new-instance v1, Lfr/testudo/spacecorsair/game/levels/Level;

    sget-object v2, Lfr/testudo/spacecorsair/game/levels/LevelId;->THOR_PASSING:Lfr/testudo/spacecorsair/game/levels/LevelId;

    sget-object v3, Lfr/testudo/spacecorsair/game/levels/LevelAnimator;->NOP:Lfr/testudo/spacecorsair/game/levels/LevelAnimator;

    invoke-direct {v1, v2, v0, v3}, Lfr/testudo/spacecorsair/game/levels/Level;-><init>(Lfr/testudo/spacecorsair/game/levels/LevelId;Ljava/util/List;Lfr/testudo/spacecorsair/game/levels/LevelAnimator;)V

    .line 51
    const v0, 0x7f06002b

    iput v0, v1, Lfr/testudo/spacecorsair/game/levels/Level;->musicResourceId:I

    .line 52
    sget-object v0, Lfr/testudo/spacecorsair/display/Background$BackImage;->Blue:Lfr/testudo/spacecorsair/display/Background$BackImage;

    iput-object v0, v1, Lfr/testudo/spacecorsair/game/levels/Level;->backGroundImage:Lfr/testudo/spacecorsair/display/Background$BackImage;

    .line 53
    return-object v1
.end method
