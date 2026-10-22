.class public Lfr/testudo/spacecorsair/game/levels/builders/HermesLevelBuilder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lfr/testudo/spacecorsair/game/levels/builders/HermesLevelBuilder$2;
    }
.end annotation


# static fields
.field public static final GATE_TO_HELIOSTAT_POS:Lfr/testudo/spacecorsair/engine/Vector2;

.field public static final GATE_TO_ORE_BELT_POS:Lfr/testudo/spacecorsair/engine/Vector2;

.field public static final GATE_TO_THE_WAVE_POS:Lfr/testudo/spacecorsair/engine/Vector2;

.field public static final LEVEL_MAX:I = 0x5

.field public static final LEVEL_MIN:I = 0x4

.field public static final TREASURE_ONE_POS:Lfr/testudo/spacecorsair/engine/Vector2;

.field public static final hermesAnimator:Lfr/testudo/spacecorsair/game/levels/LevelAnimator;

.field static treasureOne:Lfr/testudo/spacecorsair/business/ennemis/Albatros;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const/4 v3, 0x0

    .line 34
    new-instance v0, Lfr/testudo/spacecorsair/engine/Vector2;

    const/high16 v1, 0x467a0000    # 16000.0f

    const/high16 v2, -0x3a860000    # -4000.0f

    invoke-direct {v0, v1, v2}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>(FF)V

    sput-object v0, Lfr/testudo/spacecorsair/game/levels/builders/HermesLevelBuilder;->GATE_TO_HELIOSTAT_POS:Lfr/testudo/spacecorsair/engine/Vector2;

    .line 35
    new-instance v0, Lfr/testudo/spacecorsair/engine/Vector2;

    const v1, -0x3a254000    # -7000.0f

    invoke-direct {v0, v1, v3}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>(FF)V

    sput-object v0, Lfr/testudo/spacecorsair/game/levels/builders/HermesLevelBuilder;->GATE_TO_THE_WAVE_POS:Lfr/testudo/spacecorsair/engine/Vector2;

    .line 36
    new-instance v0, Lfr/testudo/spacecorsair/engine/Vector2;

    const v1, -0x39e3c000    # -10000.0f

    invoke-direct {v0, v3, v1}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>(FF)V

    sput-object v0, Lfr/testudo/spacecorsair/game/levels/builders/HermesLevelBuilder;->GATE_TO_ORE_BELT_POS:Lfr/testudo/spacecorsair/engine/Vector2;

    .line 119
    new-instance v0, Lfr/testudo/spacecorsair/engine/Vector2;

    const v1, -0x3995a000    # -15000.0f

    invoke-direct {v0, v1, v3}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>(FF)V

    sput-object v0, Lfr/testudo/spacecorsair/game/levels/builders/HermesLevelBuilder;->TREASURE_ONE_POS:Lfr/testudo/spacecorsair/engine/Vector2;

    .line 140
    new-instance v0, Lfr/testudo/spacecorsair/game/levels/builders/HermesLevelBuilder$1;

    invoke-direct {v0}, Lfr/testudo/spacecorsair/game/levels/builders/HermesLevelBuilder$1;-><init>()V

    sput-object v0, Lfr/testudo/spacecorsair/game/levels/builders/HermesLevelBuilder;->hermesAnimator:Lfr/testudo/spacecorsair/game/levels/LevelAnimator;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 150
    return-void
.end method

.method static synthetic access$000(Ljava/util/List;)V
    .registers 1

    .prologue
    .line 31
    invoke-static {p0}, Lfr/testudo/spacecorsair/game/levels/builders/HermesLevelBuilder;->enableTresureOneIfPossible(Ljava/util/List;)V

    return-void
.end method

.method public static addAsteroids(Ljava/util/List;)V
    .registers 12
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
    const/16 v10, 0x4e20

    const/16 v4, 0x2710

    const v6, 0x3e6147ae    # 0.22f

    const/4 v2, 0x0

    .line 68
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v0

    const-wide/high16 v8, 0x4014000000000000L    # 5.0

    mul-double/2addr v0, v8

    double-to-int v1, v0

    move-object v0, p0

    move v3, v2

    move v5, v4

    invoke-static/range {v0 .. v6}, Lfr/testudo/spacecorsair/game/levels/builders/LevelBuilderHelper;->addRandomMalachite(Ljava/util/List;IFFIIF)V

    .line 70
    const/16 v1, 0x320

    const/4 v7, 0x1

    move-object v0, p0

    move v3, v2

    move v4, v10

    move v5, v10

    invoke-static/range {v0 .. v7}, Lfr/testudo/spacecorsair/game/levels/builders/LevelBuilderHelper;->addRandomAsteroids(Ljava/util/List;IFFIIFZ)V

    .line 74
    return-void
.end method

.method public static addEnnemies(Ljava/util/List;)V
    .registers 10
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
    const/4 v8, 0x5

    const/4 v7, 0x4

    const/16 v4, 0x4e20

    const/4 v2, 0x0

    .line 79
    const/16 v1, 0x64

    sget-object v6, Lfr/testudo/spacecorsair/business/ennemis/EnnemisType;->TAUPE:Lfr/testudo/spacecorsair/business/ennemis/EnnemisType;

    move-object v0, p0

    move v3, v2

    move v5, v4

    invoke-static/range {v0 .. v8}, Lfr/testudo/spacecorsair/game/levels/builders/LevelBuilderHelper;->addStaticEnnemies(Ljava/util/List;IFFIILfr/testudo/spacecorsair/business/ennemis/EnnemisType;II)V

    .line 80
    const/16 v1, 0x96

    sget-object v6, Lfr/testudo/spacecorsair/business/ennemis/EnnemisType;->BASIC:Lfr/testudo/spacecorsair/business/ennemis/EnnemisType;

    move-object v0, p0

    move v3, v2

    move v5, v4

    invoke-static/range {v0 .. v8}, Lfr/testudo/spacecorsair/game/levels/builders/LevelBuilderHelper;->addStaticEnnemies(Ljava/util/List;IFFIILfr/testudo/spacecorsair/business/ennemis/EnnemisType;II)V

    .line 81
    const/16 v1, 0x14

    sget-object v6, Lfr/testudo/spacecorsair/business/ennemis/EnnemisType;->DEFENSOR:Lfr/testudo/spacecorsair/business/ennemis/EnnemisType;

    move-object v0, p0

    move v3, v2

    move v5, v4

    invoke-static/range {v0 .. v8}, Lfr/testudo/spacecorsair/game/levels/builders/LevelBuilderHelper;->addStaticEnnemies(Ljava/util/List;IFFIILfr/testudo/spacecorsair/business/ennemis/EnnemisType;II)V

    .line 83
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

    .line 87
    invoke-static {}, Lfr/testudo/spacecorsair/business/factory/GamePools;->newPortal()Lfr/testudo/spacecorsair/business/world/Portal;

    move-result-object v0

    const-string v1, "> heliostat <"

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/business/world/Portal;->init(Ljava/lang/String;)Lfr/testudo/spacecorsair/business/world/Portal;

    move-result-object v0

    .line 88
    const-string v1, "heliostat"

    iput-object v1, v0, Lfr/testudo/spacecorsair/business/world/Portal;->jumpLevelName:Ljava/lang/String;

    .line 89
    const-string v1, "> hermes <"

    iput-object v1, v0, Lfr/testudo/spacecorsair/business/world/Portal;->jumpPortalName:Ljava/lang/String;

    .line 91
    iget-object v1, v0, Lfr/testudo/spacecorsair/business/world/Portal;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    sget-object v2, Lfr/testudo/spacecorsair/game/levels/builders/HermesLevelBuilder;->GATE_TO_HELIOSTAT_POS:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v1, v2}, Lfr/testudo/spacecorsair/engine/Vector2;->setSameAs(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 92
    iget-object v1, v0, Lfr/testudo/spacecorsair/business/world/Portal;->initialPlayerSpeed:Lfr/testudo/spacecorsair/engine/Vector2;

    const/high16 v2, -0x3f200000    # -7.0f

    invoke-virtual {v1, v2, v3}, Lfr/testudo/spacecorsair/engine/Vector2;->set(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 93
    iput v3, v0, Lfr/testudo/spacecorsair/business/world/Portal;->initialPlayerSpin:F

    .line 94
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 97
    invoke-static {}, Lfr/testudo/spacecorsair/business/factory/GamePools;->newPortal()Lfr/testudo/spacecorsair/business/world/Portal;

    move-result-object v0

    const-string v1, "> ore belt <"

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/business/world/Portal;->init(Ljava/lang/String;)Lfr/testudo/spacecorsair/business/world/Portal;

    move-result-object v0

    .line 98
    const-string v1, "ore belt"

    iput-object v1, v0, Lfr/testudo/spacecorsair/business/world/Portal;->jumpLevelName:Ljava/lang/String;

    .line 99
    const-string v1, "> hermes <"

    iput-object v1, v0, Lfr/testudo/spacecorsair/business/world/Portal;->jumpPortalName:Ljava/lang/String;

    .line 101
    iget-object v1, v0, Lfr/testudo/spacecorsair/business/world/Portal;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    sget-object v2, Lfr/testudo/spacecorsair/game/levels/builders/HermesLevelBuilder;->GATE_TO_ORE_BELT_POS:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v1, v2}, Lfr/testudo/spacecorsair/engine/Vector2;->setSameAs(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 102
    iget-object v1, v0, Lfr/testudo/spacecorsair/business/world/Portal;->initialPlayerSpeed:Lfr/testudo/spacecorsair/engine/Vector2;

    const/high16 v2, 0x40e00000    # 7.0f

    invoke-virtual {v1, v3, v2}, Lfr/testudo/spacecorsair/engine/Vector2;->set(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 103
    iput v3, v0, Lfr/testudo/spacecorsair/business/world/Portal;->initialPlayerSpin:F

    .line 104
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 116
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
    .line 123
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->levelProperties:Lfr/testudo/spacecorsair/game/levels/LevelsGlobalProperties;

    sget-object v1, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->hermesTreasureOne:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/game/levels/LevelsGlobalProperties;->isTreasureAvail(Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)Z

    move-result v0

    if-eqz v0, :cond_41

    .line 125
    const/4 v0, 0x5

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModStockSpawn;->newAlbatros(I)Lfr/testudo/spacecorsair/business/ennemis/Albatros;

    move-result-object v0

    sput-object v0, Lfr/testudo/spacecorsair/game/levels/builders/HermesLevelBuilder;->treasureOne:Lfr/testudo/spacecorsair/business/ennemis/Albatros;

    .line 126
    sget-object v0, Lfr/testudo/spacecorsair/game/levels/builders/HermesLevelBuilder;->treasureOne:Lfr/testudo/spacecorsair/business/ennemis/Albatros;

    const-string v1, "albatros"

    iput-object v1, v0, Lfr/testudo/spacecorsair/business/ennemis/Albatros;->specificName:Ljava/lang/String;

    .line 127
    sget-object v0, Lfr/testudo/spacecorsair/game/levels/builders/HermesLevelBuilder;->treasureOne:Lfr/testudo/spacecorsair/business/ennemis/Albatros;

    sget-object v1, Lfr/testudo/spacecorsair/game/levels/builders/HermesLevelBuilder;->TREASURE_ONE_POS:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/business/ennemis/Albatros;->setPosition(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/business/Element;

    .line 129
    sget-object v0, Lfr/testudo/spacecorsair/game/levels/builders/HermesLevelBuilder;->treasureOne:Lfr/testudo/spacecorsair/business/ennemis/Albatros;

    sget-object v1, Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;->TREASURE:Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;

    iput-object v1, v0, Lfr/testudo/spacecorsair/business/ennemis/Albatros;->missionObjectiveColor:Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;

    .line 130
    sget-object v0, Lfr/testudo/spacecorsair/game/levels/builders/HermesLevelBuilder;->treasureOne:Lfr/testudo/spacecorsair/business/ennemis/Albatros;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lfr/testudo/spacecorsair/business/ennemis/Albatros;->isMissionObjective:Z

    .line 132
    sget-object v0, Lfr/testudo/spacecorsair/game/levels/builders/HermesLevelBuilder;->treasureOne:Lfr/testudo/spacecorsair/business/ennemis/Albatros;

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 133
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/Game;->currentLevel:Lfr/testudo/spacecorsair/game/levels/Level;

    if-eqz v0, :cond_41

    .line 134
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/Game;->currentLevel:Lfr/testudo/spacecorsair/game/levels/Level;

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/game/levels/Level;->requestPlayerGotoLastPosOfElements()V

    .line 137
    :cond_41
    return-void
.end method

.method public static getHermesLevel()Lfr/testudo/spacecorsair/game/levels/Level;
    .registers 4

    .prologue
    .line 46
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 48
    invoke-static {v0}, Lfr/testudo/spacecorsair/game/levels/builders/HermesLevelBuilder;->addPortals(Ljava/util/List;)V

    .line 49
    invoke-static {v0}, Lfr/testudo/spacecorsair/game/levels/builders/HermesLevelBuilder;->addAsteroids(Ljava/util/List;)V

    .line 50
    invoke-static {v0}, Lfr/testudo/spacecorsair/game/levels/builders/HermesLevelBuilder;->addEnnemies(Ljava/util/List;)V

    .line 51
    invoke-static {v0}, Lfr/testudo/spacecorsair/game/levels/builders/HermesLevelBuilder;->enableTresureOneIfPossible(Ljava/util/List;)V

    .line 53
    invoke-static {}, Lfr/testudo/spacecorsair/business/player/PlayerShip;->instance()Lfr/testudo/spacecorsair/business/player/PlayerShip;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 55
    new-instance v1, Lfr/testudo/spacecorsair/game/levels/Level;

    sget-object v2, Lfr/testudo/spacecorsair/game/levels/LevelId;->HERMES:Lfr/testudo/spacecorsair/game/levels/LevelId;

    sget-object v3, Lfr/testudo/spacecorsair/game/levels/builders/HermesLevelBuilder;->hermesAnimator:Lfr/testudo/spacecorsair/game/levels/LevelAnimator;

    invoke-direct {v1, v2, v0, v3}, Lfr/testudo/spacecorsair/game/levels/Level;-><init>(Lfr/testudo/spacecorsair/game/levels/LevelId;Ljava/util/List;Lfr/testudo/spacecorsair/game/levels/LevelAnimator;)V

    .line 56
    const v0, 0x7f06002d

    iput v0, v1, Lfr/testudo/spacecorsair/game/levels/Level;->musicResourceId:I

    .line 57
    sget-object v0, Lfr/testudo/spacecorsair/display/Background$BackImage;->Black_default:Lfr/testudo/spacecorsair/display/Background$BackImage;

    iput-object v0, v1, Lfr/testudo/spacecorsair/game/levels/Level;->backGroundImage:Lfr/testudo/spacecorsair/display/Background$BackImage;

    .line 59
    return-object v1
.end method
