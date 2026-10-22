.class public Lfr/testudo/spacecorsair/game/levels/builders/HugoWisdomLevelBuilder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lfr/testudo/spacecorsair/game/levels/builders/HugoWisdomLevelBuilder$2;
    }
.end annotation


# static fields
.field public static final GATE_TO_ORE_BELT_POS:Lfr/testudo/spacecorsair/engine/Vector2;

.field public static final GATE_TO_SPARTAN_HQ_POS:Lfr/testudo/spacecorsair/engine/Vector2;

.field public static final GATE_TO_TWIN_STAR_POS:Lfr/testudo/spacecorsair/engine/Vector2;

.field public static final LEVEL_MAX:I = 0x6

.field public static final LEVEL_MIN:I = 0x5

.field static final ORE_BELT_POP:Lfr/testudo/spacecorsair/engine/PopPoint;

.field static final QPARTAN_HQ_POP:Lfr/testudo/spacecorsair/engine/PopPoint;

.field public static final TREASURE_ONE_POS:Lfr/testudo/spacecorsair/engine/Vector2;

.field static final TWIN_STAR_POP:Lfr/testudo/spacecorsair/engine/PopPoint;

.field public static final hugoWisdomAnimator:Lfr/testudo/spacecorsair/game/levels/LevelAnimator;

.field private static treasureOne:Lfr/testudo/spacecorsair/business/world/EpaveAlbatros;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const/4 v3, 0x0

    .line 35
    new-instance v0, Lfr/testudo/spacecorsair/engine/Vector2;

    const v1, -0x3a63c000    # -5000.0f

    const v2, -0x39736000    # -18000.0f

    invoke-direct {v0, v1, v2}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>(FF)V

    sput-object v0, Lfr/testudo/spacecorsair/game/levels/builders/HugoWisdomLevelBuilder;->GATE_TO_TWIN_STAR_POS:Lfr/testudo/spacecorsair/engine/Vector2;

    .line 36
    sget-object v0, Lfr/testudo/spacecorsair/game/levels/builders/HugoWisdomLevelBuilder;->GATE_TO_TWIN_STAR_POS:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-static {v0}, Lfr/testudo/spacecorsair/engine/PopPoint;->newBottom(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/PopPoint;

    move-result-object v0

    sput-object v0, Lfr/testudo/spacecorsair/game/levels/builders/HugoWisdomLevelBuilder;->TWIN_STAR_POP:Lfr/testudo/spacecorsair/engine/PopPoint;

    .line 38
    new-instance v0, Lfr/testudo/spacecorsair/engine/Vector2;

    const v1, 0x46bb8000    # 24000.0f

    invoke-direct {v0, v3, v1}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>(FF)V

    sput-object v0, Lfr/testudo/spacecorsair/game/levels/builders/HugoWisdomLevelBuilder;->GATE_TO_SPARTAN_HQ_POS:Lfr/testudo/spacecorsair/engine/Vector2;

    .line 39
    sget-object v0, Lfr/testudo/spacecorsair/game/levels/builders/HugoWisdomLevelBuilder;->GATE_TO_SPARTAN_HQ_POS:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-static {v0}, Lfr/testudo/spacecorsair/engine/PopPoint;->newBottom(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/PopPoint;

    move-result-object v0

    sput-object v0, Lfr/testudo/spacecorsair/game/levels/builders/HugoWisdomLevelBuilder;->QPARTAN_HQ_POP:Lfr/testudo/spacecorsair/engine/PopPoint;

    .line 41
    new-instance v0, Lfr/testudo/spacecorsair/engine/Vector2;

    const v1, 0x469c4000    # 20000.0f

    invoke-direct {v0, v1, v3}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>(FF)V

    sput-object v0, Lfr/testudo/spacecorsair/game/levels/builders/HugoWisdomLevelBuilder;->GATE_TO_ORE_BELT_POS:Lfr/testudo/spacecorsair/engine/Vector2;

    .line 42
    sget-object v0, Lfr/testudo/spacecorsair/game/levels/builders/HugoWisdomLevelBuilder;->GATE_TO_ORE_BELT_POS:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-static {v0}, Lfr/testudo/spacecorsair/engine/PopPoint;->newBottom(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/PopPoint;

    move-result-object v0

    sput-object v0, Lfr/testudo/spacecorsair/game/levels/builders/HugoWisdomLevelBuilder;->ORE_BELT_POP:Lfr/testudo/spacecorsair/engine/PopPoint;

    .line 142
    new-instance v0, Lfr/testudo/spacecorsair/engine/Vector2;

    const v1, 0x463b8000    # 12000.0f

    const v2, -0x3a448000    # -6000.0f

    invoke-direct {v0, v1, v2}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>(FF)V

    sput-object v0, Lfr/testudo/spacecorsair/game/levels/builders/HugoWisdomLevelBuilder;->TREASURE_ONE_POS:Lfr/testudo/spacecorsair/engine/Vector2;

    .line 161
    new-instance v0, Lfr/testudo/spacecorsair/game/levels/builders/HugoWisdomLevelBuilder$1;

    invoke-direct {v0}, Lfr/testudo/spacecorsair/game/levels/builders/HugoWisdomLevelBuilder$1;-><init>()V

    sput-object v0, Lfr/testudo/spacecorsair/game/levels/builders/HugoWisdomLevelBuilder;->hugoWisdomAnimator:Lfr/testudo/spacecorsair/game/levels/LevelAnimator;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 170
    return-void
.end method

.method static synthetic access$000(Ljava/util/List;)V
    .registers 1

    .prologue
    .line 33
    invoke-static {p0}, Lfr/testudo/spacecorsair/game/levels/builders/HugoWisdomLevelBuilder;->enableTresureOneIfPossible(Ljava/util/List;)V

    return-void
.end method

.method private static addAsteroids(Ljava/util/List;)V
    .registers 14
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
    const/4 v2, 0x0

    .line 112
    const/16 v1, 0x32

    const/16 v4, 0x4650

    const/16 v5, 0x55f0

    const/16 v6, 0xa

    const/16 v7, 0x14

    const/16 v8, 0x2bc

    const/4 v9, 0x4

    const v10, 0x3f19999a    # 0.6f

    const/4 v11, 0x5

    const/4 v12, 0x6

    move-object v0, p0

    move v3, v2

    invoke-static/range {v0 .. v12}, Lfr/testudo/spacecorsair/game/levels/builders/LevelBuilderHelper;->addAsteroidPacksWithCrocpierre(Ljava/util/List;IFFIIIIIIFII)V

    .line 113
    return-void
.end method

.method private static addEnnemies(Ljava/util/List;)V
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
    .line 122
    const v1, 0x468ca000    # 18000.0f

    .line 123
    const/high16 v2, 0x44160000    # 600.0f

    .line 125
    const/4 v0, 0x0

    :goto_6
    const/16 v3, 0x28

    if-ge v0, v3, :cond_ba

    .line 126
    neg-float v3, v1

    float-to-double v4, v3

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v6

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    mul-double/2addr v6, v8

    float-to-double v8, v1

    mul-double/2addr v6, v8

    add-double/2addr v4, v6

    double-to-float v3, v4

    .line 127
    neg-float v4, v1

    float-to-double v4, v4

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v6

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    mul-double/2addr v6, v8

    float-to-double v8, v1

    mul-double/2addr v6, v8

    add-double/2addr v4, v6

    double-to-float v4, v4

    .line 129
    const/4 v5, 0x5

    const/4 v6, 0x6

    invoke-static {v5, v6}, Lfr/testudo/spacecorsair/mod/ModStockSpawn;->newFixedTourelle(II)Lfr/testudo/spacecorsair/business/ennemis/FixedTourelle;

    move-result-object v5

    invoke-virtual {v5, v3, v4}, Lfr/testudo/spacecorsair/business/ennemis/FixedTourelle;->setPosition(FF)Lfr/testudo/spacecorsair/business/Element;

    move-result-object v5

    invoke-interface {p0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 131
    const/4 v5, 0x5

    const/4 v6, 0x6

    invoke-static {v5, v6}, Lfr/testudo/spacecorsair/mod/ModStockSpawn;->newDefensor(II)Lfr/testudo/spacecorsair/business/ennemis/DefensorShip;

    move-result-object v5

    neg-float v6, v2

    float-to-double v6, v6

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v8

    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    mul-double/2addr v8, v10

    float-to-double v10, v2

    mul-double/2addr v8, v10

    add-double/2addr v6, v8

    double-to-float v6, v6

    add-float/2addr v6, v3

    neg-float v7, v2

    float-to-double v8, v7

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v10

    const-wide/high16 v12, 0x4000000000000000L    # 2.0

    mul-double/2addr v10, v12

    float-to-double v12, v2

    mul-double/2addr v10, v12

    add-double/2addr v8, v10

    double-to-float v7, v8

    add-float/2addr v7, v4

    invoke-virtual {v5, v6, v7}, Lfr/testudo/spacecorsair/business/ennemis/DefensorShip;->setPosition(FF)Lfr/testudo/spacecorsair/business/Element;

    move-result-object v5

    invoke-interface {p0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 132
    const/4 v5, 0x5

    const/4 v6, 0x6

    invoke-static {v5, v6}, Lfr/testudo/spacecorsair/mod/ModStockSpawn;->newBasicEnnemisShip(II)Lfr/testudo/spacecorsair/business/ennemis/BasicEnnemyShip;

    move-result-object v5

    neg-float v6, v2

    float-to-double v6, v6

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v8

    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    mul-double/2addr v8, v10

    float-to-double v10, v2

    mul-double/2addr v8, v10

    add-double/2addr v6, v8

    double-to-float v6, v6

    add-float/2addr v6, v3

    neg-float v7, v2

    float-to-double v8, v7

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v10

    const-wide/high16 v12, 0x4000000000000000L    # 2.0

    mul-double/2addr v10, v12

    float-to-double v12, v2

    mul-double/2addr v10, v12

    add-double/2addr v8, v10

    double-to-float v7, v8

    add-float/2addr v7, v4

    invoke-virtual {v5, v6, v7}, Lfr/testudo/spacecorsair/business/ennemis/BasicEnnemyShip;->setPosition(FF)Lfr/testudo/spacecorsair/business/Element;

    move-result-object v5

    invoke-interface {p0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 133
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v6

    const-wide/high16 v8, 0x3fe0000000000000L    # 0.5

    cmpg-double v5, v6, v8

    if-gez v5, :cond_b6

    .line 134
    const/4 v5, 0x5

    const/4 v6, 0x6

    invoke-static {v5, v6}, Lfr/testudo/spacecorsair/mod/ModStockSpawn;->newBasicEnnemisShip(II)Lfr/testudo/spacecorsair/business/ennemis/BasicEnnemyShip;

    move-result-object v5

    neg-float v6, v2

    float-to-double v6, v6

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v8

    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    mul-double/2addr v8, v10

    float-to-double v10, v2

    mul-double/2addr v8, v10

    add-double/2addr v6, v8

    double-to-float v6, v6

    add-float/2addr v3, v6

    neg-float v6, v2

    float-to-double v6, v6

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v8

    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    mul-double/2addr v8, v10

    float-to-double v10, v2

    mul-double/2addr v8, v10

    add-double/2addr v6, v8

    double-to-float v6, v6

    add-float/2addr v4, v6

    invoke-virtual {v5, v3, v4}, Lfr/testudo/spacecorsair/business/ennemis/BasicEnnemyShip;->setPosition(FF)Lfr/testudo/spacecorsair/business/Element;

    move-result-object v3

    invoke-interface {p0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 125
    :cond_b6
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_6

    .line 138
    :cond_ba
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
    const/high16 v4, 0x40e00000    # 7.0f

    const/4 v3, 0x0

    .line 76
    invoke-static {}, Lfr/testudo/spacecorsair/business/factory/GamePools;->newPortal()Lfr/testudo/spacecorsair/business/world/Portal;

    move-result-object v0

    const-string v1, "> twin stars <"

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/business/world/Portal;->init(Ljava/lang/String;)Lfr/testudo/spacecorsair/business/world/Portal;

    move-result-object v0

    .line 77
    const-string v1, "twin stars"

    iput-object v1, v0, Lfr/testudo/spacecorsair/business/world/Portal;->jumpLevelName:Ljava/lang/String;

    .line 78
    const-string v1, "> hugo wisdom <"

    iput-object v1, v0, Lfr/testudo/spacecorsair/business/world/Portal;->jumpPortalName:Ljava/lang/String;

    .line 80
    iget-object v1, v0, Lfr/testudo/spacecorsair/business/world/Portal;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    sget-object v2, Lfr/testudo/spacecorsair/game/levels/builders/HugoWisdomLevelBuilder;->GATE_TO_TWIN_STAR_POS:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v1, v2}, Lfr/testudo/spacecorsair/engine/Vector2;->setSameAs(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 81
    iget-object v1, v0, Lfr/testudo/spacecorsair/business/world/Portal;->initialPlayerSpeed:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v1, v3, v4}, Lfr/testudo/spacecorsair/engine/Vector2;->set(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 82
    iput v3, v0, Lfr/testudo/spacecorsair/business/world/Portal;->initialPlayerSpin:F

    .line 83
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 86
    invoke-static {}, Lfr/testudo/spacecorsair/business/factory/GamePools;->newPortal()Lfr/testudo/spacecorsair/business/world/Portal;

    move-result-object v0

    const-string v1, "> spartan headquarters <"

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/business/world/Portal;->init(Ljava/lang/String;)Lfr/testudo/spacecorsair/business/world/Portal;

    move-result-object v0

    .line 87
    const-string v1, "spartan headquarters"

    iput-object v1, v0, Lfr/testudo/spacecorsair/business/world/Portal;->jumpLevelName:Ljava/lang/String;

    .line 88
    const-string v1, "> hugo wisdom <"

    iput-object v1, v0, Lfr/testudo/spacecorsair/business/world/Portal;->jumpPortalName:Ljava/lang/String;

    .line 90
    iget-object v1, v0, Lfr/testudo/spacecorsair/business/world/Portal;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    sget-object v2, Lfr/testudo/spacecorsair/game/levels/builders/HugoWisdomLevelBuilder;->GATE_TO_SPARTAN_HQ_POS:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v1, v2}, Lfr/testudo/spacecorsair/engine/Vector2;->setSameAs(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 91
    iget-object v1, v0, Lfr/testudo/spacecorsair/business/world/Portal;->initialPlayerSpeed:Lfr/testudo/spacecorsair/engine/Vector2;

    const/high16 v2, -0x3f200000    # -7.0f

    invoke-virtual {v1, v3, v2}, Lfr/testudo/spacecorsair/engine/Vector2;->set(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 92
    iput v3, v0, Lfr/testudo/spacecorsair/business/world/Portal;->initialPlayerSpin:F

    .line 93
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 96
    invoke-static {}, Lfr/testudo/spacecorsair/business/factory/GamePools;->newPortal()Lfr/testudo/spacecorsair/business/world/Portal;

    move-result-object v0

    const-string v1, "> ore belt <"

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/business/world/Portal;->init(Ljava/lang/String;)Lfr/testudo/spacecorsair/business/world/Portal;

    move-result-object v0

    .line 97
    const-string v1, "ore belt"

    iput-object v1, v0, Lfr/testudo/spacecorsair/business/world/Portal;->jumpLevelName:Ljava/lang/String;

    .line 98
    const-string v1, "> hugo wisdom <"

    iput-object v1, v0, Lfr/testudo/spacecorsair/business/world/Portal;->jumpPortalName:Ljava/lang/String;

    .line 100
    iget-object v1, v0, Lfr/testudo/spacecorsair/business/world/Portal;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    sget-object v2, Lfr/testudo/spacecorsair/game/levels/builders/HugoWisdomLevelBuilder;->GATE_TO_ORE_BELT_POS:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v1, v2}, Lfr/testudo/spacecorsair/engine/Vector2;->setSameAs(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 101
    iget-object v1, v0, Lfr/testudo/spacecorsair/business/world/Portal;->initialPlayerSpeed:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v1, v4, v3}, Lfr/testudo/spacecorsair/engine/Vector2;->set(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 102
    iput v3, v0, Lfr/testudo/spacecorsair/business/world/Portal;->initialPlayerSpin:F

    .line 103
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 106
    return-void
.end method

.method private static enableTresureOneIfPossible(Ljava/util/List;)V
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
    .line 146
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->levelProperties:Lfr/testudo/spacecorsair/game/levels/LevelsGlobalProperties;

    sget-object v1, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->hugoWisdomTreasureOne:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/game/levels/LevelsGlobalProperties;->isTreasureAvail(Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)Z

    move-result v0

    if-eqz v0, :cond_55

    .line 148
    invoke-static {}, Lfr/testudo/spacecorsair/business/factory/GamePools;->newEpaveAlbatros()Lfr/testudo/spacecorsair/business/world/EpaveAlbatros;

    move-result-object v0

    sget-object v1, Lfr/testudo/spacecorsair/game/levels/builders/HugoWisdomLevelBuilder;->TREASURE_ONE_POS:Lfr/testudo/spacecorsair/engine/Vector2;

    sget-object v2, Lfr/testudo/spacecorsair/engine/Vector2;->ZERO:Lfr/testudo/spacecorsair/engine/Vector2;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lfr/testudo/spacecorsair/business/world/EpaveAlbatros;->init(Lfr/testudo/spacecorsair/engine/Vector2;Lfr/testudo/spacecorsair/engine/Vector2;F)Lfr/testudo/spacecorsair/business/world/EpaveAlbatros;

    move-result-object v0

    sput-object v0, Lfr/testudo/spacecorsair/game/levels/builders/HugoWisdomLevelBuilder;->treasureOne:Lfr/testudo/spacecorsair/business/world/EpaveAlbatros;

    .line 149
    sget-object v0, Lfr/testudo/spacecorsair/game/levels/builders/HugoWisdomLevelBuilder;->treasureOne:Lfr/testudo/spacecorsair/business/world/EpaveAlbatros;

    sget-object v1, Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;->TREASURE:Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;

    iput-object v1, v0, Lfr/testudo/spacecorsair/business/world/EpaveAlbatros;->missionObjectiveColor:Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;

    .line 150
    sget-object v0, Lfr/testudo/spacecorsair/game/levels/builders/HugoWisdomLevelBuilder;->treasureOne:Lfr/testudo/spacecorsair/business/world/EpaveAlbatros;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lfr/testudo/spacecorsair/business/world/EpaveAlbatros;->isMissionObjective:Z

    .line 151
    sget-object v0, Lfr/testudo/spacecorsair/game/levels/builders/HugoWisdomLevelBuilder;->treasureOne:Lfr/testudo/spacecorsair/business/world/EpaveAlbatros;

    sget-object v1, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpecByLevel;->station_pirate_5a10:Lfr/testudo/spacecorsair/business/loot/LootConfig;

    iput-object v1, v0, Lfr/testudo/spacecorsair/business/world/EpaveAlbatros;->lootConfig:Lfr/testudo/spacecorsair/business/loot/LootConfig;

    .line 152
    sget-object v0, Lfr/testudo/spacecorsair/game/levels/builders/HugoWisdomLevelBuilder;->treasureOne:Lfr/testudo/spacecorsair/business/world/EpaveAlbatros;

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 154
    const/16 v0, 0x9

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModStockSpawn;->newDefensor(I)Lfr/testudo/spacecorsair/business/ennemis/DefensorShip;

    move-result-object v0

    sget-object v1, Lfr/testudo/spacecorsair/game/levels/builders/HugoWisdomLevelBuilder;->TREASURE_ONE_POS:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v1, v1, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    const/high16 v2, 0x43fa0000    # 500.0f

    sub-float/2addr v1, v2

    sget-object v2, Lfr/testudo/spacecorsair/game/levels/builders/HugoWisdomLevelBuilder;->TREASURE_ONE_POS:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v2, v2, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    invoke-virtual {v0, v1, v2}, Lfr/testudo/spacecorsair/business/ennemis/DefensorShip;->initPosition(FF)Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    move-result-object v0

    .line 155
    sget-object v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    const v2, 0x7f0702be

    invoke-virtual {v1, v2}, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->getLocalizedString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->setSpecificName(Ljava/lang/String;)Lfr/testudo/spacecorsair/business/Element;

    .line 156
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 158
    :cond_55
    return-void
.end method

.method public static getHugoWisdom()Lfr/testudo/spacecorsair/game/levels/Level;
    .registers 4

    .prologue
    .line 52
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 54
    invoke-static {v0}, Lfr/testudo/spacecorsair/game/levels/builders/HugoWisdomLevelBuilder;->addPortals(Ljava/util/List;)V

    .line 55
    invoke-static {v0}, Lfr/testudo/spacecorsair/game/levels/builders/HugoWisdomLevelBuilder;->addAsteroids(Ljava/util/List;)V

    .line 58
    invoke-static {v0}, Lfr/testudo/spacecorsair/game/levels/builders/HugoWisdomLevelBuilder;->addEnnemies(Ljava/util/List;)V

    .line 61
    invoke-static {v0}, Lfr/testudo/spacecorsair/game/levels/builders/HugoWisdomLevelBuilder;->enableTresureOneIfPossible(Ljava/util/List;)V

    .line 63
    invoke-static {}, Lfr/testudo/spacecorsair/business/player/PlayerShip;->instance()Lfr/testudo/spacecorsair/business/player/PlayerShip;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 65
    new-instance v1, Lfr/testudo/spacecorsair/game/levels/Level;

    sget-object v2, Lfr/testudo/spacecorsair/game/levels/LevelId;->HUGO_WISDOM:Lfr/testudo/spacecorsair/game/levels/LevelId;

    sget-object v3, Lfr/testudo/spacecorsair/game/levels/builders/HugoWisdomLevelBuilder;->hugoWisdomAnimator:Lfr/testudo/spacecorsair/game/levels/LevelAnimator;

    invoke-direct {v1, v2, v0, v3}, Lfr/testudo/spacecorsair/game/levels/Level;-><init>(Lfr/testudo/spacecorsair/game/levels/LevelId;Ljava/util/List;Lfr/testudo/spacecorsair/game/levels/LevelAnimator;)V

    .line 66
    const v0, 0x7f06002a

    iput v0, v1, Lfr/testudo/spacecorsair/game/levels/Level;->musicResourceId:I

    .line 68
    sget-object v0, Lfr/testudo/spacecorsair/display/Background$BackImage;->Red:Lfr/testudo/spacecorsair/display/Background$BackImage;

    iput-object v0, v1, Lfr/testudo/spacecorsair/game/levels/Level;->backGroundImage:Lfr/testudo/spacecorsair/display/Background$BackImage;

    .line 70
    return-object v1
.end method
