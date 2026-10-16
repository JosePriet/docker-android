.class public Lfr/testudo/spacecorsair/game/levels/builders/TwinStarLevelBuilder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lfr/testudo/spacecorsair/game/levels/builders/TwinStarLevelBuilder$2;
    }
.end annotation


# static fields
.field public static final GATE_TO_HUGO_POS:Lfr/testudo/spacecorsair/engine/Vector2;

.field public static final GATE_TO_VENTOHIGH_POS:Lfr/testudo/spacecorsair/engine/Vector2;

.field public static final HUGO_ESCAPE_POINT:Lfr/testudo/spacecorsair/engine/Vector2;

.field static final HUGO_POP:Lfr/testudo/spacecorsair/engine/PopPoint;

.field private static final INTERNAL_STATION_DECK:Lfr/testudo/spacecorsair/engine/Vector2;

.field public static final LEVEL_MAX:I = 0x5

.field public static final LEVEL_MIN:I = 0x4

.field public static final PIRATE_STATION_POS:Lfr/testudo/spacecorsair/engine/Vector2;

.field public static final VENTO_ESCAPE_POINT:Lfr/testudo/spacecorsair/engine/Vector2;

.field static final VENTO_POP:Lfr/testudo/spacecorsair/engine/PopPoint;

.field public static VentoHighPortal:Lfr/testudo/spacecorsair/business/world/Portal;

.field public static pirateStation1:Lfr/testudo/spacecorsair/business/world/station/DestroyablePirateStation;

.field public static final pirateStationName:Ljava/lang/String;

.field public static final twinStarAnimator:Lfr/testudo/spacecorsair/game/levels/LevelAnimator;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const v3, -0x39a54000    # -14000.0f

    .line 32
    new-instance v0, Lfr/testudo/spacecorsair/engine/Vector2;

    const v1, 0x466a6000    # 15000.0f

    const v2, -0x3a63c000    # -5000.0f

    invoke-direct {v0, v1, v2}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>(FF)V

    sput-object v0, Lfr/testudo/spacecorsair/game/levels/builders/TwinStarLevelBuilder;->GATE_TO_VENTOHIGH_POS:Lfr/testudo/spacecorsair/engine/Vector2;

    .line 33
    new-instance v0, Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-direct {v0}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>()V

    sget-object v1, Lfr/testudo/spacecorsair/game/levels/builders/TwinStarLevelBuilder;->GATE_TO_VENTOHIGH_POS:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/engine/Vector2;->setSameAs(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    move-result-object v0

    const/high16 v1, 0x43c80000    # 400.0f

    const/high16 v2, 0x44af0000    # 1400.0f

    invoke-virtual {v0, v1, v2}, Lfr/testudo/spacecorsair/engine/Vector2;->add(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    move-result-object v0

    sput-object v0, Lfr/testudo/spacecorsair/game/levels/builders/TwinStarLevelBuilder;->VENTO_ESCAPE_POINT:Lfr/testudo/spacecorsair/engine/Vector2;

    .line 34
    sget-object v0, Lfr/testudo/spacecorsair/game/levels/builders/TwinStarLevelBuilder;->GATE_TO_VENTOHIGH_POS:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-static {v0}, Lfr/testudo/spacecorsair/engine/PopPoint;->newRight(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/PopPoint;

    move-result-object v0

    sput-object v0, Lfr/testudo/spacecorsair/game/levels/builders/TwinStarLevelBuilder;->VENTO_POP:Lfr/testudo/spacecorsair/engine/PopPoint;

    .line 37
    new-instance v0, Lfr/testudo/spacecorsair/engine/Vector2;

    const v1, -0x3995a000    # -15000.0f

    const/high16 v2, 0x45fa0000    # 8000.0f

    invoke-direct {v0, v1, v2}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>(FF)V

    sput-object v0, Lfr/testudo/spacecorsair/game/levels/builders/TwinStarLevelBuilder;->GATE_TO_HUGO_POS:Lfr/testudo/spacecorsair/engine/Vector2;

    .line 38
    new-instance v0, Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-direct {v0}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>()V

    sget-object v1, Lfr/testudo/spacecorsair/game/levels/builders/TwinStarLevelBuilder;->GATE_TO_HUGO_POS:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/engine/Vector2;->setSameAs(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    move-result-object v0

    const/high16 v1, -0x3b1f0000    # -1800.0f

    const/high16 v2, 0x43960000    # 300.0f

    invoke-virtual {v0, v1, v2}, Lfr/testudo/spacecorsair/engine/Vector2;->add(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    move-result-object v0

    sput-object v0, Lfr/testudo/spacecorsair/game/levels/builders/TwinStarLevelBuilder;->HUGO_ESCAPE_POINT:Lfr/testudo/spacecorsair/engine/Vector2;

    .line 39
    sget-object v0, Lfr/testudo/spacecorsair/game/levels/builders/TwinStarLevelBuilder;->GATE_TO_HUGO_POS:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-static {v0}, Lfr/testudo/spacecorsair/engine/PopPoint;->newTop(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/PopPoint;

    move-result-object v0

    sput-object v0, Lfr/testudo/spacecorsair/game/levels/builders/TwinStarLevelBuilder;->HUGO_POP:Lfr/testudo/spacecorsair/engine/PopPoint;

    .line 42
    new-instance v0, Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-direct {v0, v3, v3}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>(FF)V

    sput-object v0, Lfr/testudo/spacecorsair/game/levels/builders/TwinStarLevelBuilder;->PIRATE_STATION_POS:Lfr/testudo/spacecorsair/engine/Vector2;

    .line 43
    new-instance v0, Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-direct {v0}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>()V

    sget-object v1, Lfr/testudo/spacecorsair/game/levels/builders/TwinStarLevelBuilder;->PIRATE_STATION_POS:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/engine/Vector2;->setSameAs(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    move-result-object v0

    sget-object v1, Lfr/testudo/spacecorsair/business/world/station/DestroyablePirateStation;->stationRelativePop:[Lfr/testudo/spacecorsair/engine/PopPoint;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    iget-object v1, v1, Lfr/testudo/spacecorsair/engine/PopPoint;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/engine/Vector2;->add(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    move-result-object v0

    sput-object v0, Lfr/testudo/spacecorsair/game/levels/builders/TwinStarLevelBuilder;->INTERNAL_STATION_DECK:Lfr/testudo/spacecorsair/engine/Vector2;

    .line 46
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    const v1, 0x7f0702bc

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->getLocalizedString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lfr/testudo/spacecorsair/game/levels/builders/TwinStarLevelBuilder;->pirateStationName:Ljava/lang/String;

    .line 50
    const/4 v0, 0x0

    sput-object v0, Lfr/testudo/spacecorsair/game/levels/builders/TwinStarLevelBuilder;->VentoHighPortal:Lfr/testudo/spacecorsair/business/world/Portal;

    .line 188
    new-instance v0, Lfr/testudo/spacecorsair/game/levels/builders/TwinStarLevelBuilder$1;

    invoke-direct {v0}, Lfr/testudo/spacecorsair/game/levels/builders/TwinStarLevelBuilder$1;-><init>()V

    sput-object v0, Lfr/testudo/spacecorsair/game/levels/builders/TwinStarLevelBuilder;->twinStarAnimator:Lfr/testudo/spacecorsair/game/levels/LevelAnimator;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 313
    return-void
.end method

.method static synthetic access$000()Lfr/testudo/spacecorsair/engine/Vector2;
    .registers 1

    .prologue
    .line 30
    sget-object v0, Lfr/testudo/spacecorsair/game/levels/builders/TwinStarLevelBuilder;->INTERNAL_STATION_DECK:Lfr/testudo/spacecorsair/engine/Vector2;

    return-object v0
.end method

.method private static addAsteroids(Ljava/util/List;)V
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
    const/4 v8, 0x2

    const/16 v7, 0x4e20

    const/4 v2, 0x0

    .line 112
    const/16 v1, 0xfa

    const/16 v4, 0x3e80

    const/16 v5, 0x2710

    const/high16 v6, 0x3f000000    # 0.5f

    move-object v0, p0

    move v3, v2

    invoke-static/range {v0 .. v6}, Lfr/testudo/spacecorsair/game/levels/builders/LevelBuilderHelper;->addRandomAsteroid(Ljava/util/List;IFFIIF)V

    .line 115
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v0

    const-wide v4, 0x3fe999999999999aL    # 0.8

    cmpl-double v0, v0, v4

    if-lez v0, :cond_29

    .line 116
    const v6, 0x3e4ccccd    # 0.2f

    move-object v0, p0

    move v1, v8

    move v3, v2

    move v4, v7

    move v5, v7

    invoke-static/range {v0 .. v6}, Lfr/testudo/spacecorsair/game/levels/builders/LevelBuilderHelper;->addEpaveAlbatros(Ljava/util/List;IFFIIF)V

    .line 118
    :cond_29
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v0

    const-wide v4, 0x3fe3333333333333L    # 0.6

    cmpl-double v0, v0, v4

    if-lez v0, :cond_41

    .line 119
    const v6, 0x3dcccccd    # 0.1f

    move-object v0, p0

    move v1, v8

    move v3, v2

    move v4, v7

    move v5, v7

    invoke-static/range {v0 .. v6}, Lfr/testudo/spacecorsair/game/levels/builders/LevelBuilderHelper;->addRandomMalachite(Ljava/util/List;IFFIIF)V

    .line 122
    :cond_41
    return-void
.end method

.method private static addEnnemies(Ljava/util/List;)V
    .registers 1
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
    .line 130
    invoke-static {p0}, Lfr/testudo/spacecorsair/game/levels/builders/TwinStarLevelBuilder;->addPirateStation(Ljava/util/List;)V

    .line 131
    invoke-static {p0}, Lfr/testudo/spacecorsair/game/levels/builders/TwinStarLevelBuilder;->addTourelles(Ljava/util/List;)V

    .line 133
    return-void
.end method

.method private static addPirateStation(Ljava/util/List;)V
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
    .line 141
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->missionRepository:Lfr/testudo/spacecorsair/business/mission/MissionRepository;

    sget-object v1, Lfr/testudo/spacecorsair/business/mission/VentoHighMissions;->VENTOHIGH_DESTROY_PIRATE_TWIN:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/business/mission/MissionRepository;->hasDoneMission(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 142
    const/4 v0, 0x0

    sput-object v0, Lfr/testudo/spacecorsair/game/levels/builders/TwinStarLevelBuilder;->pirateStation1:Lfr/testudo/spacecorsair/business/world/station/DestroyablePirateStation;

    .line 154
    :goto_f
    return-void

    .line 147
    :cond_10
    invoke-static {}, Lfr/testudo/spacecorsair/business/factory/GamePools;->newDestroyablePirateStation()Lfr/testudo/spacecorsair/business/world/station/DestroyablePirateStation;

    move-result-object v0

    sget-object v1, Lfr/testudo/spacecorsair/game/levels/builders/TwinStarLevelBuilder;->PIRATE_STATION_POS:Lfr/testudo/spacecorsair/engine/Vector2;

    sget-object v2, Lfr/testudo/spacecorsair/game/levels/builders/TwinStarLevelBuilder;->pirateStationName:Ljava/lang/String;

    const v3, 0xc350

    invoke-virtual {v0, v1, v2, v3}, Lfr/testudo/spacecorsair/business/world/station/DestroyablePirateStation;->initDestroyStation(Lfr/testudo/spacecorsair/engine/Vector2;Ljava/lang/String;I)Lfr/testudo/spacecorsair/business/world/station/DestroyablePirateStation;

    move-result-object v0

    sput-object v0, Lfr/testudo/spacecorsair/game/levels/builders/TwinStarLevelBuilder;->pirateStation1:Lfr/testudo/spacecorsair/business/world/station/DestroyablePirateStation;

    .line 148
    sget-object v0, Lfr/testudo/spacecorsair/game/levels/builders/TwinStarLevelBuilder;->pirateStation1:Lfr/testudo/spacecorsair/business/world/station/DestroyablePirateStation;

    sget-object v1, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpecByLevel;->station_pirate_2a5:Lfr/testudo/spacecorsair/business/loot/LootConfig;

    iput-object v1, v0, Lfr/testudo/spacecorsair/business/world/station/DestroyablePirateStation;->lootConfig:Lfr/testudo/spacecorsair/business/loot/LootConfig;

    .line 149
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->missionRepository:Lfr/testudo/spacecorsair/business/mission/MissionRepository;

    sget-object v1, Lfr/testudo/spacecorsair/business/mission/VentoHighMissions;->VENTOHIGH_FIND_PIRATE_TWIN:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/business/mission/MissionRepository;->hasDoneMission(Ljava/lang/String;)Z

    move-result v1

    .line 150
    sget-object v2, Lfr/testudo/spacecorsair/game/levels/builders/TwinStarLevelBuilder;->pirateStation1:Lfr/testudo/spacecorsair/business/world/station/DestroyablePirateStation;

    if-nez v1, :cond_42

    const/4 v0, 0x1

    :goto_36
    iput-boolean v0, v2, Lfr/testudo/spacecorsair/business/world/station/DestroyablePirateStation;->mapHidden:Z

    .line 151
    sget-object v0, Lfr/testudo/spacecorsair/game/levels/builders/TwinStarLevelBuilder;->pirateStation1:Lfr/testudo/spacecorsair/business/world/station/DestroyablePirateStation;

    iput-boolean v1, v0, Lfr/testudo/spacecorsair/business/world/station/DestroyablePirateStation;->drawOnRadar:Z

    .line 152
    sget-object v0, Lfr/testudo/spacecorsair/game/levels/builders/TwinStarLevelBuilder;->pirateStation1:Lfr/testudo/spacecorsair/business/world/station/DestroyablePirateStation;

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_f

    .line 150
    :cond_42
    const/4 v0, 0x0

    goto :goto_36
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
    const/high16 v4, -0x3f200000    # -7.0f

    const/4 v3, 0x0

    .line 84
    invoke-static {}, Lfr/testudo/spacecorsair/business/factory/GamePools;->newPortal()Lfr/testudo/spacecorsair/business/world/Portal;

    move-result-object v0

    const-string v1, "> ventohigh <"

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/business/world/Portal;->init(Ljava/lang/String;)Lfr/testudo/spacecorsair/business/world/Portal;

    move-result-object v0

    .line 85
    const-string v1, "ventohigh"

    iput-object v1, v0, Lfr/testudo/spacecorsair/business/world/Portal;->jumpLevelName:Ljava/lang/String;

    .line 86
    const-string v1, "> twin stars <"

    iput-object v1, v0, Lfr/testudo/spacecorsair/business/world/Portal;->jumpPortalName:Ljava/lang/String;

    .line 88
    iget-object v1, v0, Lfr/testudo/spacecorsair/business/world/Portal;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    sget-object v2, Lfr/testudo/spacecorsair/game/levels/builders/TwinStarLevelBuilder;->GATE_TO_VENTOHIGH_POS:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v1, v2}, Lfr/testudo/spacecorsair/engine/Vector2;->setSameAs(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 89
    iget-object v1, v0, Lfr/testudo/spacecorsair/business/world/Portal;->initialPlayerSpeed:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v1, v4, v3}, Lfr/testudo/spacecorsair/engine/Vector2;->set(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 90
    iput v3, v0, Lfr/testudo/spacecorsair/business/world/Portal;->initialPlayerSpin:F

    .line 91
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 93
    sput-object v0, Lfr/testudo/spacecorsair/game/levels/builders/TwinStarLevelBuilder;->VentoHighPortal:Lfr/testudo/spacecorsair/business/world/Portal;

    .line 95
    invoke-static {}, Lfr/testudo/spacecorsair/business/factory/GamePools;->newPortal()Lfr/testudo/spacecorsair/business/world/Portal;

    move-result-object v0

    const-string v1, "> hugo wisdom <"

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/business/world/Portal;->init(Ljava/lang/String;)Lfr/testudo/spacecorsair/business/world/Portal;

    move-result-object v0

    .line 96
    const-string v1, "hugo wisdom"

    iput-object v1, v0, Lfr/testudo/spacecorsair/business/world/Portal;->jumpLevelName:Ljava/lang/String;

    .line 97
    const-string v1, "> twin stars <"

    iput-object v1, v0, Lfr/testudo/spacecorsair/business/world/Portal;->jumpPortalName:Ljava/lang/String;

    .line 99
    iget-object v1, v0, Lfr/testudo/spacecorsair/business/world/Portal;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    sget-object v2, Lfr/testudo/spacecorsair/game/levels/builders/TwinStarLevelBuilder;->GATE_TO_HUGO_POS:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v1, v2}, Lfr/testudo/spacecorsair/engine/Vector2;->setSameAs(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 100
    iget-object v1, v0, Lfr/testudo/spacecorsair/business/world/Portal;->initialPlayerSpeed:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v1, v3, v4}, Lfr/testudo/spacecorsair/engine/Vector2;->set(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 101
    iput v3, v0, Lfr/testudo/spacecorsair/business/world/Portal;->initialPlayerSpin:F

    .line 102
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 104
    return-void
.end method

.method private static addTourelles(Ljava/util/List;)V
    .registers 9
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
    const v7, -0x39b4e000    # -13000.0f

    const v6, -0x39c48000    # -12000.0f

    const v5, -0x39e3c000    # -10000.0f

    const/4 v4, 0x5

    const/4 v3, 0x4

    .line 159
    invoke-static {v3, v4}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisFactory;->newFixedTourelle(II)Lfr/testudo/spacecorsair/business/ennemis/FixedTourelle;

    move-result-object v0

    const v1, -0x39f36000    # -9000.0f

    invoke-virtual {v0, v1, v5}, Lfr/testudo/spacecorsair/business/ennemis/FixedTourelle;->initPosition(FF)Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 160
    invoke-static {v3, v4}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisFactory;->newFixedTourelle(II)Lfr/testudo/spacecorsair/business/ennemis/FixedTourelle;

    move-result-object v0

    const/high16 v1, -0x3a060000    # -8000.0f

    invoke-virtual {v0, v1, v5}, Lfr/testudo/spacecorsair/business/ennemis/FixedTourelle;->initPosition(FF)Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 161
    invoke-static {v3, v4}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisFactory;->newFixedTourelle(II)Lfr/testudo/spacecorsair/business/ennemis/FixedTourelle;

    move-result-object v0

    const/high16 v1, -0x3a060000    # -8000.0f

    const v2, -0x39d42000    # -11000.0f

    invoke-virtual {v0, v1, v2}, Lfr/testudo/spacecorsair/business/ennemis/FixedTourelle;->initPosition(FF)Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 164
    invoke-static {v3, v4}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisFactory;->newFixedTourelle(II)Lfr/testudo/spacecorsair/business/ennemis/FixedTourelle;

    move-result-object v0

    const v1, -0x3a448000    # -6000.0f

    const/high16 v2, -0x3b510000    # -1400.0f

    invoke-virtual {v0, v1, v2}, Lfr/testudo/spacecorsair/business/ennemis/FixedTourelle;->initPosition(FF)Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 165
    invoke-static {v3, v4}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisFactory;->newFixedTourelle(II)Lfr/testudo/spacecorsair/business/ennemis/FixedTourelle;

    move-result-object v0

    const v1, -0x3a63c000    # -5000.0f

    const/high16 v2, -0x3b510000    # -1400.0f

    invoke-virtual {v0, v1, v2}, Lfr/testudo/spacecorsair/business/ennemis/FixedTourelle;->initPosition(FF)Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 166
    invoke-static {v3, v4}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisFactory;->newFixedTourelle(II)Lfr/testudo/spacecorsair/business/ennemis/FixedTourelle;

    move-result-object v0

    const v1, -0x3a63c000    # -5000.0f

    const v2, -0x3b5d8000    # -1300.0f

    invoke-virtual {v0, v1, v2}, Lfr/testudo/spacecorsair/business/ennemis/FixedTourelle;->initPosition(FF)Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 172
    invoke-static {v3, v4}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisFactory;->newFixedTourelle(II)Lfr/testudo/spacecorsair/business/ennemis/FixedTourelle;

    move-result-object v0

    const/high16 v1, -0x39860000    # -16000.0f

    invoke-virtual {v0, v1, v6}, Lfr/testudo/spacecorsair/business/ennemis/FixedTourelle;->initPosition(FF)Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 173
    invoke-static {v3, v4}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisFactory;->newFixedTourelle(II)Lfr/testudo/spacecorsair/business/ennemis/FixedTourelle;

    move-result-object v0

    const v1, -0x3995a000    # -15000.0f

    invoke-virtual {v0, v1, v6}, Lfr/testudo/spacecorsair/business/ennemis/FixedTourelle;->initPosition(FF)Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 174
    invoke-static {v3, v4}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisFactory;->newFixedTourelle(II)Lfr/testudo/spacecorsair/business/ennemis/FixedTourelle;

    move-result-object v0

    const v1, -0x39a54000    # -14000.0f

    invoke-virtual {v0, v1, v7}, Lfr/testudo/spacecorsair/business/ennemis/FixedTourelle;->initPosition(FF)Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 175
    invoke-static {v3, v4}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisFactory;->newFixedTourelle(II)Lfr/testudo/spacecorsair/business/ennemis/FixedTourelle;

    move-result-object v0

    invoke-virtual {v0, v7, v7}, Lfr/testudo/spacecorsair/business/ennemis/FixedTourelle;->initPosition(FF)Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 176
    invoke-static {v3, v4}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisFactory;->newFixedTourelle(II)Lfr/testudo/spacecorsair/business/ennemis/FixedTourelle;

    move-result-object v0

    const v1, -0x39a54000    # -14000.0f

    invoke-virtual {v0, v6, v1}, Lfr/testudo/spacecorsair/business/ennemis/FixedTourelle;->initPosition(FF)Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 177
    invoke-static {v3, v4}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisFactory;->newFixedTourelle(II)Lfr/testudo/spacecorsair/business/ennemis/FixedTourelle;

    move-result-object v0

    const v1, -0x39d42000    # -11000.0f

    const v2, -0x3995a000    # -15000.0f

    invoke-virtual {v0, v1, v2}, Lfr/testudo/spacecorsair/business/ennemis/FixedTourelle;->initPosition(FF)Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 178
    invoke-static {v3, v4}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisFactory;->newFixedTourelle(II)Lfr/testudo/spacecorsair/business/ennemis/FixedTourelle;

    move-result-object v0

    const/high16 v1, -0x39860000    # -16000.0f

    invoke-virtual {v0, v5, v1}, Lfr/testudo/spacecorsair/business/ennemis/FixedTourelle;->initPosition(FF)Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 181
    return-void
.end method

.method public static getTwinStars()Lfr/testudo/spacecorsair/game/levels/Level;
    .registers 8

    .prologue
    const/high16 v7, 0x41700000    # 15.0f

    .line 57
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 59
    invoke-static {v0}, Lfr/testudo/spacecorsair/game/levels/builders/TwinStarLevelBuilder;->addPortals(Ljava/util/List;)V

    .line 60
    invoke-static {v0}, Lfr/testudo/spacecorsair/game/levels/builders/TwinStarLevelBuilder;->addAsteroids(Ljava/util/List;)V

    .line 62
    invoke-static {v0}, Lfr/testudo/spacecorsair/game/levels/builders/TwinStarLevelBuilder;->addEnnemies(Ljava/util/List;)V

    .line 65
    invoke-static {}, Lfr/testudo/spacecorsair/business/player/PlayerShip;->instance()Lfr/testudo/spacecorsair/business/player/PlayerShip;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 67
    new-instance v1, Lfr/testudo/spacecorsair/game/levels/Level;

    sget-object v2, Lfr/testudo/spacecorsair/game/levels/LevelId;->TWIN_STAR:Lfr/testudo/spacecorsair/game/levels/LevelId;

    sget-object v3, Lfr/testudo/spacecorsair/game/levels/builders/TwinStarLevelBuilder;->twinStarAnimator:Lfr/testudo/spacecorsair/game/levels/LevelAnimator;

    invoke-direct {v1, v2, v0, v3}, Lfr/testudo/spacecorsair/game/levels/Level;-><init>(Lfr/testudo/spacecorsair/game/levels/LevelId;Ljava/util/List;Lfr/testudo/spacecorsair/game/levels/LevelAnimator;)V

    .line 68
    const v0, 0x7f06002a

    iput v0, v1, Lfr/testudo/spacecorsair/game/levels/Level;->musicResourceId:I

    .line 69
    sget-object v0, Lfr/testudo/spacecorsair/display/Background$BackImage;->Brown:Lfr/testudo/spacecorsair/display/Background$BackImage;

    iput-object v0, v1, Lfr/testudo/spacecorsair/game/levels/Level;->backGroundImage:Lfr/testudo/spacecorsair/display/Background$BackImage;

    .line 71
    const/4 v0, 0x2

    new-array v0, v0, [Lfr/testudo/spacecorsair/business/world/BackgroundDrawableObject;

    const/4 v2, 0x0

    invoke-static {}, Lfr/testudo/spacecorsair/business/factory/GamePools;->newSunDrawable()Lfr/testudo/spacecorsair/business/world/SunDrawableObject;

    move-result-object v3

    new-instance v4, Lfr/testudo/spacecorsair/engine/Vector2;

    const v5, -0x39b4e000    # -13000.0f

    const v6, -0x3995a000    # -15000.0f

    invoke-direct {v4, v5, v6}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>(FF)V

    invoke-virtual {v3, v4, v7}, Lfr/testudo/spacecorsair/business/world/SunDrawableObject;->init(Lfr/testudo/spacecorsair/engine/Vector2;F)Lfr/testudo/spacecorsair/business/world/BackgroundDrawableObject;

    move-result-object v3

    aput-object v3, v0, v2

    const/4 v2, 0x1

    invoke-static {}, Lfr/testudo/spacecorsair/business/factory/GamePools;->newSunDrawable()Lfr/testudo/spacecorsair/business/world/SunDrawableObject;

    move-result-object v3

    new-instance v4, Lfr/testudo/spacecorsair/engine/Vector2;

    const v5, 0x463b8000    # 12000.0f

    const/4 v6, 0x0

    invoke-direct {v4, v5, v6}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>(FF)V

    invoke-virtual {v3, v4, v7}, Lfr/testudo/spacecorsair/business/world/SunDrawableObject;->init(Lfr/testudo/spacecorsair/engine/Vector2;F)Lfr/testudo/spacecorsair/business/world/BackgroundDrawableObject;

    move-result-object v3

    aput-object v3, v0, v2

    iput-object v0, v1, Lfr/testudo/spacecorsair/game/levels/Level;->backgroundDrawableObjects:[Lfr/testudo/spacecorsair/business/world/BackgroundDrawableObject;

    .line 76
    return-object v1
.end method
