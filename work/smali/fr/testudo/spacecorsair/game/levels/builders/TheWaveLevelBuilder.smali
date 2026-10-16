.class public Lfr/testudo/spacecorsair/game/levels/builders/TheWaveLevelBuilder;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final GATE_TO_SOLAR_FIELD:Lfr/testudo/spacecorsair/engine/Vector2;

.field public static final GATE_TO_SPARTAN_HQ_POS:Lfr/testudo/spacecorsair/engine/Vector2;

.field public static final LEVEL_MAX:I = 0x9

.field public static final LEVEL_MIN:I = 0x7

.field public static final TREASURE_ONE_POS:Lfr/testudo/spacecorsair/engine/Vector2;

.field public static final theWaveAnimator:Lfr/testudo/spacecorsair/game/levels/LevelAnimator;

.field static treasureOne:Lfr/testudo/spacecorsair/business/ennemis/Albatros;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const v3, -0x3995a000    # -15000.0f

    const/4 v2, 0x0

    .line 38
    new-instance v0, Lfr/testudo/spacecorsair/engine/Vector2;

    const v1, 0x463b8000    # 12000.0f

    invoke-direct {v0, v1, v2}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>(FF)V

    sput-object v0, Lfr/testudo/spacecorsair/game/levels/builders/TheWaveLevelBuilder;->GATE_TO_SPARTAN_HQ_POS:Lfr/testudo/spacecorsair/engine/Vector2;

    .line 39
    new-instance v0, Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-direct {v0, v3, v2}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>(FF)V

    sput-object v0, Lfr/testudo/spacecorsair/game/levels/builders/TheWaveLevelBuilder;->GATE_TO_SOLAR_FIELD:Lfr/testudo/spacecorsair/engine/Vector2;

    .line 149
    new-instance v0, Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-direct {v0, v3, v2}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>(FF)V

    sput-object v0, Lfr/testudo/spacecorsair/game/levels/builders/TheWaveLevelBuilder;->TREASURE_ONE_POS:Lfr/testudo/spacecorsair/engine/Vector2;

    .line 170
    new-instance v0, Lfr/testudo/spacecorsair/game/levels/builders/TheWaveLevelBuilder$1;

    invoke-direct {v0}, Lfr/testudo/spacecorsair/game/levels/builders/TheWaveLevelBuilder$1;-><init>()V

    sput-object v0, Lfr/testudo/spacecorsair/game/levels/builders/TheWaveLevelBuilder;->theWaveAnimator:Lfr/testudo/spacecorsair/game/levels/LevelAnimator;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addAsteroids(Ljava/util/List;)V
    .registers 15
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
    .line 73
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v0

    const-wide/high16 v2, 0x4008000000000000L    # 3.0

    mul-double/2addr v0, v2

    double-to-int v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/16 v4, 0x1770

    const/16 v5, 0x1770

    const v6, 0x3e6147ae    # 0.22f

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Lfr/testudo/spacecorsair/game/levels/builders/LevelBuilderHelper;->addRandomMalachite(Ljava/util/List;IFFIIF)V

    .line 75
    new-instance v2, Lfr/testudo/spacecorsair/engine/Vector2;

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {v2, v0, v1}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>(FF)V

    .line 77
    const/16 v1, 0x12c

    .line 79
    const/16 v3, 0xe74

    .line 81
    const/16 v4, 0x28a

    .line 83
    sget-object v0, Lfr/testudo/spacecorsair/game/levels/builders/TheWaveLevelBuilder;->GATE_TO_SOLAR_FIELD:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v0, v0, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    float-to-int v0, v0

    :goto_27
    sget-object v5, Lfr/testudo/spacecorsair/game/levels/builders/TheWaveLevelBuilder;->GATE_TO_SPARTAN_HQ_POS:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v5, v5, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    float-to-int v5, v5

    if-ge v0, v5, :cond_e5

    .line 84
    add-int/lit8 v1, v1, 0x3

    .line 85
    neg-int v5, v4

    int-to-double v6, v5

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v8

    int-to-double v10, v4

    mul-double/2addr v8, v10

    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    mul-double/2addr v8, v10

    add-double/2addr v6, v8

    double-to-float v5, v6

    int-to-float v6, v0

    add-float/2addr v5, v6

    const-wide/high16 v6, -0x3fbc000000000000L    # -40.0

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v8

    const-wide/high16 v10, 0x4054000000000000L    # 80.0

    mul-double/2addr v8, v10

    add-double/2addr v6, v8

    double-to-float v6, v6

    rem-int/lit16 v7, v1, 0x168

    int-to-double v8, v7

    invoke-static {v8, v9}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Math;->sin(D)D

    move-result-wide v8

    int-to-double v10, v3

    mul-double/2addr v8, v10

    double-to-float v7, v8

    add-float/2addr v6, v7

    invoke-virtual {v2, v5, v6}, Lfr/testudo/spacecorsair/engine/Vector2;->set(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 86
    const/4 v5, 0x0

    invoke-static {v5}, Lfr/testudo/spacecorsair/business/factory/GamePools;->newRandomSizeAsteroid(Z)Lfr/testudo/spacecorsair/business/world/Asteroid;

    move-result-object v5

    sget-object v6, Lfr/testudo/spacecorsair/engine/Vector2;->ZERO:Lfr/testudo/spacecorsair/engine/Vector2;

    const-wide v8, -0x4046666666666666L    # -0.1

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v10

    const-wide v12, 0x3fc999999999999aL    # 0.2

    mul-double/2addr v10, v12

    add-double/2addr v8, v10

    double-to-float v7, v8

    invoke-virtual {v5, v2, v6, v7}, Lfr/testudo/spacecorsair/business/world/Asteroid;->init(Lfr/testudo/spacecorsair/engine/Vector2;Lfr/testudo/spacecorsair/engine/Vector2;F)Lfr/testudo/spacecorsair/business/world/Asteroid;

    move-result-object v5

    invoke-interface {p0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 88
    neg-int v5, v4

    int-to-double v6, v5

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v8

    int-to-double v10, v4

    mul-double/2addr v8, v10

    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    mul-double/2addr v8, v10

    add-double/2addr v6, v8

    double-to-float v5, v6

    int-to-float v6, v0

    add-float/2addr v5, v6

    const-wide/high16 v6, -0x3fbc000000000000L    # -40.0

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v8

    const-wide/high16 v10, 0x4054000000000000L    # 80.0

    mul-double/2addr v8, v10

    add-double/2addr v6, v8

    double-to-float v6, v6

    rem-int/lit16 v7, v1, 0x168

    int-to-double v8, v7

    invoke-static {v8, v9}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Math;->sin(D)D

    move-result-wide v8

    int-to-double v10, v3

    mul-double/2addr v8, v10

    double-to-float v7, v8

    add-float/2addr v6, v7

    invoke-virtual {v2, v5, v6}, Lfr/testudo/spacecorsair/engine/Vector2;->set(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 89
    const/4 v5, 0x0

    invoke-static {v5}, Lfr/testudo/spacecorsair/business/factory/GamePools;->newRandomSizeAsteroid(Z)Lfr/testudo/spacecorsair/business/world/Asteroid;

    move-result-object v5

    sget-object v6, Lfr/testudo/spacecorsair/engine/Vector2;->ZERO:Lfr/testudo/spacecorsair/engine/Vector2;

    const-wide v8, -0x4046666666666666L    # -0.1

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v10

    const-wide v12, 0x3fc999999999999aL    # 0.2

    mul-double/2addr v10, v12

    add-double/2addr v8, v10

    double-to-float v7, v8

    invoke-virtual {v5, v2, v6, v7}, Lfr/testudo/spacecorsair/business/world/Asteroid;->init(Lfr/testudo/spacecorsair/engine/Vector2;Lfr/testudo/spacecorsair/engine/Vector2;F)Lfr/testudo/spacecorsair/business/world/Asteroid;

    move-result-object v5

    invoke-interface {p0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 94
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v6

    const-wide v8, 0x3feccccccccccccdL    # 0.9

    cmpl-double v5, v6, v8

    if-lez v5, :cond_e1

    .line 95
    const/4 v5, 0x7

    const/16 v6, 0x9

    invoke-static {v5, v6}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisFactory;->newTaupe(II)Lfr/testudo/spacecorsair/business/ennemis/TaupeShip;

    move-result-object v5

    invoke-virtual {v5, v2}, Lfr/testudo/spacecorsair/business/ennemis/TaupeShip;->setPosition(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/business/Element;

    move-result-object v5

    invoke-interface {p0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 83
    :cond_e1
    add-int/lit16 v0, v0, 0x82

    goto/16 :goto_27

    .line 101
    :cond_e5
    return-void
.end method

.method public static addEnnemies(Ljava/util/List;)V
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
    const/16 v4, 0x1f40

    const/16 v9, 0xf

    const/16 v8, 0x9

    const/4 v7, 0x7

    const/4 v2, 0x0

    .line 106
    const/16 v1, 0x28

    const/16 v5, 0x1770

    sget-object v6, Lfr/testudo/spacecorsair/business/ennemis/EnnemisType;->BASIC:Lfr/testudo/spacecorsair/business/ennemis/EnnemisType;

    move-object v0, p0

    move v3, v2

    invoke-static/range {v0 .. v8}, Lfr/testudo/spacecorsair/game/levels/builders/LevelBuilderHelper;->addStaticEnnemies(Ljava/util/List;IFFIILfr/testudo/spacecorsair/business/ennemis/EnnemisType;II)V

    .line 107
    const/16 v1, 0x1e

    const/16 v5, 0x1388

    sget-object v6, Lfr/testudo/spacecorsair/business/ennemis/EnnemisType;->FRELON:Lfr/testudo/spacecorsair/business/ennemis/EnnemisType;

    move-object v0, p0

    move v3, v2

    invoke-static/range {v0 .. v8}, Lfr/testudo/spacecorsair/game/levels/builders/LevelBuilderHelper;->addStaticEnnemies(Ljava/util/List;IFFIILfr/testudo/spacecorsair/business/ennemis/EnnemisType;II)V

    .line 109
    new-instance v1, Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-direct {v1, v2, v2}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>(FF)V

    .line 111
    sget-object v0, Lfr/testudo/spacecorsair/game/levels/builders/TheWaveLevelBuilder;->GATE_TO_SOLAR_FIELD:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v0, v0, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    float-to-int v0, v0

    :goto_28
    sget-object v2, Lfr/testudo/spacecorsair/game/levels/builders/TheWaveLevelBuilder;->GATE_TO_SPARTAN_HQ_POS:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v2, v2, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    float-to-int v2, v2

    if-ge v0, v2, :cond_56

    .line 112
    int-to-float v2, v0

    const v3, -0x3a15a000    # -7500.0f

    invoke-virtual {v1, v2, v3}, Lfr/testudo/spacecorsair/engine/Vector2;->set(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 113
    invoke-static {v9}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisFactory;->newFixedTourelle(I)Lfr/testudo/spacecorsair/business/ennemis/FixedTourelle;

    move-result-object v2

    invoke-virtual {v2, v1}, Lfr/testudo/spacecorsair/business/ennemis/FixedTourelle;->initPosition(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    move-result-object v2

    invoke-interface {p0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 116
    int-to-float v2, v0

    const v3, 0x45ea6000    # 7500.0f

    invoke-virtual {v1, v2, v3}, Lfr/testudo/spacecorsair/engine/Vector2;->set(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 117
    invoke-static {v9}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisFactory;->newFixedTourelle(I)Lfr/testudo/spacecorsair/business/ennemis/FixedTourelle;

    move-result-object v2

    invoke-virtual {v2, v1}, Lfr/testudo/spacecorsair/business/ennemis/FixedTourelle;->initPosition(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    move-result-object v2

    invoke-interface {p0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 111
    add-int/lit16 v0, v0, 0x7d0

    goto :goto_28

    .line 121
    :cond_56
    return-void
.end method

.method public static addPortals(Ljava/util/List;)V
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
    const/4 v3, 0x0

    .line 125
    invoke-static {}, Lfr/testudo/spacecorsair/business/factory/GamePools;->newPortal()Lfr/testudo/spacecorsair/business/world/Portal;

    move-result-object v0

    const-string v1, "> spartan headquarters <"

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/business/world/Portal;->init(Ljava/lang/String;)Lfr/testudo/spacecorsair/business/world/Portal;

    move-result-object v0

    .line 126
    const-string v1, "spartan headquarters"

    iput-object v1, v0, Lfr/testudo/spacecorsair/business/world/Portal;->jumpLevelName:Ljava/lang/String;

    .line 127
    const-string v1, "> the wave <"

    iput-object v1, v0, Lfr/testudo/spacecorsair/business/world/Portal;->jumpPortalName:Ljava/lang/String;

    .line 129
    iget-object v1, v0, Lfr/testudo/spacecorsair/business/world/Portal;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    sget-object v2, Lfr/testudo/spacecorsair/game/levels/builders/TheWaveLevelBuilder;->GATE_TO_SPARTAN_HQ_POS:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v1, v2}, Lfr/testudo/spacecorsair/engine/Vector2;->setSameAs(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 130
    iget-object v1, v0, Lfr/testudo/spacecorsair/business/world/Portal;->initialPlayerSpeed:Lfr/testudo/spacecorsair/engine/Vector2;

    const/high16 v2, -0x3f200000    # -7.0f

    invoke-virtual {v1, v2, v3}, Lfr/testudo/spacecorsair/engine/Vector2;->set(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 131
    iput v3, v0, Lfr/testudo/spacecorsair/business/world/Portal;->initialPlayerSpin:F

    .line 132
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 135
    invoke-static {}, Lfr/testudo/spacecorsair/business/factory/GamePools;->newPortal()Lfr/testudo/spacecorsair/business/world/Portal;

    move-result-object v0

    const-string v1, "> solar field <"

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/business/world/Portal;->init(Ljava/lang/String;)Lfr/testudo/spacecorsair/business/world/Portal;

    move-result-object v0

    .line 136
    const-string v1, "solar field"

    iput-object v1, v0, Lfr/testudo/spacecorsair/business/world/Portal;->jumpLevelName:Ljava/lang/String;

    .line 137
    const-string v1, "> the wave <"

    iput-object v1, v0, Lfr/testudo/spacecorsair/business/world/Portal;->jumpPortalName:Ljava/lang/String;

    .line 139
    iget-object v1, v0, Lfr/testudo/spacecorsair/business/world/Portal;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    sget-object v2, Lfr/testudo/spacecorsair/game/levels/builders/TheWaveLevelBuilder;->GATE_TO_SOLAR_FIELD:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v1, v2}, Lfr/testudo/spacecorsair/engine/Vector2;->setSameAs(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 140
    iget-object v1, v0, Lfr/testudo/spacecorsair/business/world/Portal;->initialPlayerSpeed:Lfr/testudo/spacecorsair/engine/Vector2;

    const/high16 v2, 0x40e00000    # 7.0f

    invoke-virtual {v1, v2, v3}, Lfr/testudo/spacecorsair/engine/Vector2;->set(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 141
    iput v3, v0, Lfr/testudo/spacecorsair/business/world/Portal;->initialPlayerSpin:F

    .line 142
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 146
    return-void
.end method

.method private static enableTresureOneIfPossible(Ljava/util/List;)V
    .registers 3
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
    .line 153
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->levelProperties:Lfr/testudo/spacecorsair/game/levels/LevelsGlobalProperties;

    sget-object v1, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->hermesTreasureOne:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/game/levels/LevelsGlobalProperties;->isTreasureAvail(Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)Z

    move-result v0

    if-eqz v0, :cond_41

    .line 155
    const/4 v0, 0x5

    invoke-static {v0}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisFactory;->newAlbatros(I)Lfr/testudo/spacecorsair/business/ennemis/Albatros;

    move-result-object v0

    sput-object v0, Lfr/testudo/spacecorsair/game/levels/builders/TheWaveLevelBuilder;->treasureOne:Lfr/testudo/spacecorsair/business/ennemis/Albatros;

    .line 156
    sget-object v0, Lfr/testudo/spacecorsair/game/levels/builders/TheWaveLevelBuilder;->treasureOne:Lfr/testudo/spacecorsair/business/ennemis/Albatros;

    const-string v1, "albatros"

    iput-object v1, v0, Lfr/testudo/spacecorsair/business/ennemis/Albatros;->specificName:Ljava/lang/String;

    .line 157
    sget-object v0, Lfr/testudo/spacecorsair/game/levels/builders/TheWaveLevelBuilder;->treasureOne:Lfr/testudo/spacecorsair/business/ennemis/Albatros;

    sget-object v1, Lfr/testudo/spacecorsair/game/levels/builders/TheWaveLevelBuilder;->TREASURE_ONE_POS:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/business/ennemis/Albatros;->setPosition(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/business/Element;

    .line 159
    sget-object v0, Lfr/testudo/spacecorsair/game/levels/builders/TheWaveLevelBuilder;->treasureOne:Lfr/testudo/spacecorsair/business/ennemis/Albatros;

    sget-object v1, Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;->TREASURE:Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;

    iput-object v1, v0, Lfr/testudo/spacecorsair/business/ennemis/Albatros;->missionObjectiveColor:Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;

    .line 160
    sget-object v0, Lfr/testudo/spacecorsair/game/levels/builders/TheWaveLevelBuilder;->treasureOne:Lfr/testudo/spacecorsair/business/ennemis/Albatros;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lfr/testudo/spacecorsair/business/ennemis/Albatros;->isMissionObjective:Z

    .line 162
    sget-object v0, Lfr/testudo/spacecorsair/game/levels/builders/TheWaveLevelBuilder;->treasureOne:Lfr/testudo/spacecorsair/business/ennemis/Albatros;

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 163
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/Game;->currentLevel:Lfr/testudo/spacecorsair/game/levels/Level;

    if-eqz v0, :cond_41

    .line 164
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/Game;->currentLevel:Lfr/testudo/spacecorsair/game/levels/Level;

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/game/levels/Level;->requestPlayerGotoLastPosOfElements()V

    .line 167
    :cond_41
    return-void
.end method

.method public static getTheWaveLevel()Lfr/testudo/spacecorsair/game/levels/Level;
    .registers 4

    .prologue
    .line 49
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 51
    invoke-static {v0}, Lfr/testudo/spacecorsair/game/levels/builders/TheWaveLevelBuilder;->addPortals(Ljava/util/List;)V

    .line 52
    invoke-static {v0}, Lfr/testudo/spacecorsair/game/levels/builders/TheWaveLevelBuilder;->addAsteroids(Ljava/util/List;)V

    .line 53
    invoke-static {v0}, Lfr/testudo/spacecorsair/game/levels/builders/TheWaveLevelBuilder;->addEnnemies(Ljava/util/List;)V

    .line 58
    invoke-static {}, Lfr/testudo/spacecorsair/business/player/PlayerShip;->instance()Lfr/testudo/spacecorsair/business/player/PlayerShip;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 60
    new-instance v1, Lfr/testudo/spacecorsair/game/levels/Level;

    sget-object v2, Lfr/testudo/spacecorsair/game/levels/LevelId;->THE_WAVE:Lfr/testudo/spacecorsair/game/levels/LevelId;

    sget-object v3, Lfr/testudo/spacecorsair/game/levels/builders/TheWaveLevelBuilder;->theWaveAnimator:Lfr/testudo/spacecorsair/game/levels/LevelAnimator;

    invoke-direct {v1, v2, v0, v3}, Lfr/testudo/spacecorsair/game/levels/Level;-><init>(Lfr/testudo/spacecorsair/game/levels/LevelId;Ljava/util/List;Lfr/testudo/spacecorsair/game/levels/LevelAnimator;)V

    .line 61
    const v0, 0x7f06002d

    iput v0, v1, Lfr/testudo/spacecorsair/game/levels/Level;->musicResourceId:I

    .line 62
    sget-object v0, Lfr/testudo/spacecorsair/display/Background$BackImage;->Black_default:Lfr/testudo/spacecorsair/display/Background$BackImage;

    iput-object v0, v1, Lfr/testudo/spacecorsair/game/levels/Level;->backGroundImage:Lfr/testudo/spacecorsair/display/Background$BackImage;

    .line 64
    return-object v1
.end method
