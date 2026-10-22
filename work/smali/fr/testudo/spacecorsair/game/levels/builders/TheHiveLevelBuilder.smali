.class public Lfr/testudo/spacecorsair/game/levels/builders/TheHiveLevelBuilder;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static DELTA_NODE_PORTAL:Lfr/testudo/spacecorsair/business/world/Portal; = null

.field public static final GATE_TO_DELTA_NODE_POS:Lfr/testudo/spacecorsair/engine/Vector2;

.field public static final GATE_TO_LEFT_POS:Lfr/testudo/spacecorsair/engine/Vector2;

.field static LEFT_PORTAL:Lfr/testudo/spacecorsair/business/world/Portal; = null

.field public static final LEVEL_MAX:I = 0x10

.field public static final LEVEL_MIN:I = 0xe

.field static temp:Lfr/testudo/spacecorsair/engine/Vector2;

.field private static final theHiveLevelAnimator:Lfr/testudo/spacecorsair/game/levels/LevelAnimator;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 26
    new-instance v0, Lfr/testudo/spacecorsair/engine/Vector2;

    const v1, 0x461c4000    # 10000.0f

    const v2, 0x453b8000    # 3000.0f

    invoke-direct {v0, v1, v2}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>(FF)V

    sput-object v0, Lfr/testudo/spacecorsair/game/levels/builders/TheHiveLevelBuilder;->GATE_TO_DELTA_NODE_POS:Lfr/testudo/spacecorsair/engine/Vector2;

    .line 27
    new-instance v0, Lfr/testudo/spacecorsair/engine/Vector2;

    const v1, -0x38e3c000    # -40000.0f

    const/high16 v2, -0x3a860000    # -4000.0f

    invoke-direct {v0, v1, v2}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>(FF)V

    sput-object v0, Lfr/testudo/spacecorsair/game/levels/builders/TheHiveLevelBuilder;->GATE_TO_LEFT_POS:Lfr/testudo/spacecorsair/engine/Vector2;

    .line 66
    new-instance v0, Lfr/testudo/spacecorsair/game/levels/builders/TheHiveLevelBuilder$1;

    invoke-direct {v0}, Lfr/testudo/spacecorsair/game/levels/builders/TheHiveLevelBuilder$1;-><init>()V

    sput-object v0, Lfr/testudo/spacecorsair/game/levels/builders/TheHiveLevelBuilder;->theHiveLevelAnimator:Lfr/testudo/spacecorsair/game/levels/LevelAnimator;

    .line 106
    new-instance v0, Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-direct {v0}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>()V

    sput-object v0, Lfr/testudo/spacecorsair/game/levels/builders/TheHiveLevelBuilder;->temp:Lfr/testudo/spacecorsair/engine/Vector2;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()I
    .registers 1

    .prologue
    .line 20
    invoke-static {}, Lfr/testudo/spacecorsair/game/levels/builders/TheHiveLevelBuilder;->getBlatteLevel()I

    move-result v0

    return v0
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
    .line 63
    const/16 v1, 0x32

    const v2, -0x3995a000    # -15000.0f

    const/high16 v3, -0x3c060000    # -500.0f

    const/16 v4, 0x7530

    const/16 v5, 0x2328

    const/4 v6, 0x7

    const/16 v7, 0x19

    const/16 v8, 0x320

    move-object v0, p0

    invoke-static/range {v0 .. v8}, Lfr/testudo/spacecorsair/game/levels/builders/LevelBuilderHelper;->addAsteroidPacks(Ljava/util/List;IFFIIIII)V

    .line 64
    return-void
.end method

.method public static addEnemies(Ljava/util/List;)V
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
    .line 110
    invoke-static {}, Lfr/testudo/spacecorsair/game/levels/builders/TheHiveLevelBuilder;->getBlatteLevel()I

    move-result v1

    .line 114
    const/4 v0, 0x0

    :goto_5
    const/4 v2, 0x2

    if-ge v0, v2, :cond_5a

    .line 115
    sget-object v2, Lfr/testudo/spacecorsair/game/levels/builders/TheHiveLevelBuilder;->temp:Lfr/testudo/spacecorsair/engine/Vector2;

    const-wide v4, -0x3f1fe30000000000L    # -33000.0

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v6

    const-wide v8, 0x40e3880000000000L    # 40000.0

    mul-double/2addr v6, v8

    add-double/2addr v4, v6

    double-to-float v3, v4

    const-wide v4, -0x3f3e6c0000000000L    # -9000.0

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v6

    const-wide v8, 0x40d1940000000000L    # 18000.0

    mul-double/2addr v6, v8

    add-double/2addr v4, v6

    double-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Lfr/testudo/spacecorsair/engine/Vector2;->set(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 117
    add-int/lit8 v2, v1, -0x1

    invoke-static {v2, v1}, Lfr/testudo/spacecorsair/mod/ModStockSpawn;->newAlienBlatte(II)Lfr/testudo/spacecorsair/business/ennemis/AlienBlatte;

    move-result-object v2

    sget-object v3, Lfr/testudo/spacecorsair/game/levels/builders/TheHiveLevelBuilder;->temp:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v2, v3}, Lfr/testudo/spacecorsair/business/ennemis/AlienBlatte;->initPosition(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    move-result-object v2

    .line 118
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v4

    const-wide v6, 0x3fb999999999999aL    # 0.1

    cmpg-double v3, v4, v6

    if-gez v3, :cond_4b

    .line 119
    invoke-virtual {v2}, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->setElite()Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    .line 121
    :cond_4b
    sget-object v3, Lfr/testudo/spacecorsair/game/levels/builders/TheHiveLevelBuilder;->temp:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-static {v3}, Lfr/testudo/spacecorsair/game/levels/builders/TheHiveLevelBuilder;->generateAlienBlatteSequence(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivitySequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->setActivitySequence(Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivitySequence;)Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    .line 122
    invoke-interface {p0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 114
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 125
    :cond_5a
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

    .line 136
    invoke-static {}, Lfr/testudo/spacecorsair/business/factory/GamePools;->newPortal()Lfr/testudo/spacecorsair/business/world/Portal;

    move-result-object v0

    const-string v1, "> delta node <"

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/business/world/Portal;->init(Ljava/lang/String;)Lfr/testudo/spacecorsair/business/world/Portal;

    move-result-object v0

    .line 137
    const-string v1, "delta node"

    iput-object v1, v0, Lfr/testudo/spacecorsair/business/world/Portal;->jumpLevelName:Ljava/lang/String;

    .line 138
    const-string v1, "> the hive <"

    iput-object v1, v0, Lfr/testudo/spacecorsair/business/world/Portal;->jumpPortalName:Ljava/lang/String;

    .line 139
    iget-object v1, v0, Lfr/testudo/spacecorsair/business/world/Portal;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    sget-object v2, Lfr/testudo/spacecorsair/game/levels/builders/TheHiveLevelBuilder;->GATE_TO_DELTA_NODE_POS:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v1, v2}, Lfr/testudo/spacecorsair/engine/Vector2;->setSameAs(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 140
    iget-object v1, v0, Lfr/testudo/spacecorsair/business/world/Portal;->initialPlayerSpeed:Lfr/testudo/spacecorsair/engine/Vector2;

    const/high16 v2, -0x3f200000    # -7.0f

    invoke-virtual {v1, v2, v3}, Lfr/testudo/spacecorsair/engine/Vector2;->set(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 141
    iput v3, v0, Lfr/testudo/spacecorsair/business/world/Portal;->initialPlayerSpin:F

    .line 142
    sput-object v0, Lfr/testudo/spacecorsair/game/levels/builders/TheHiveLevelBuilder;->DELTA_NODE_PORTAL:Lfr/testudo/spacecorsair/business/world/Portal;

    .line 143
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 146
    invoke-static {}, Lfr/testudo/spacecorsair/business/factory/GamePools;->newPortal()Lfr/testudo/spacecorsair/business/world/Portal;

    move-result-object v0

    const-string v1, "COMING SOON"

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/business/world/Portal;->init(Ljava/lang/String;)Lfr/testudo/spacecorsair/business/world/Portal;

    move-result-object v0

    .line 147
    const-string v1, "the hive"

    iput-object v1, v0, Lfr/testudo/spacecorsair/business/world/Portal;->jumpLevelName:Ljava/lang/String;

    .line 148
    const-string v1, "COMING SOON"

    iput-object v1, v0, Lfr/testudo/spacecorsair/business/world/Portal;->jumpPortalName:Ljava/lang/String;

    .line 149
    iget-object v1, v0, Lfr/testudo/spacecorsair/business/world/Portal;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    sget-object v2, Lfr/testudo/spacecorsair/game/levels/builders/TheHiveLevelBuilder;->GATE_TO_LEFT_POS:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v1, v2}, Lfr/testudo/spacecorsair/engine/Vector2;->setSameAs(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 150
    const/4 v1, 0x0

    iput-boolean v1, v0, Lfr/testudo/spacecorsair/business/world/Portal;->canBeUsed:Z

    .line 151
    iget-object v1, v0, Lfr/testudo/spacecorsair/business/world/Portal;->initialPlayerSpeed:Lfr/testudo/spacecorsair/engine/Vector2;

    const/high16 v2, 0x40e00000    # 7.0f

    invoke-virtual {v1, v3, v2}, Lfr/testudo/spacecorsair/engine/Vector2;->set(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 152
    iput v3, v0, Lfr/testudo/spacecorsair/business/world/Portal;->initialPlayerSpin:F

    .line 153
    sput-object v0, Lfr/testudo/spacecorsair/game/levels/builders/TheHiveLevelBuilder;->LEFT_PORTAL:Lfr/testudo/spacecorsair/business/world/Portal;

    .line 154
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 156
    return-void
.end method

.method public static generateAlienBlatteSequence(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivitySequence;
    .registers 6

    .prologue
    const/16 v4, 0xfa0

    .line 129
    new-instance v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivitySequence;

    invoke-direct {v0}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivitySequence;-><init>()V

    new-instance v1, Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;

    invoke-direct {v1}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;-><init>()V

    iget v2, p0, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    const v3, -0x39c48000    # -12000.0f

    invoke-virtual {v1, v2, v3, v4}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;->initGotoRandom(FFI)Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivitySequence;->addActivity(Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;)Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivitySequence;

    move-result-object v0

    new-instance v1, Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;

    invoke-direct {v1}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;-><init>()V

    iget v2, p0, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    const v3, 0x463b8000    # 12000.0f

    invoke-virtual {v1, v2, v3, v4}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;->initGotoRandom(FFI)Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivitySequence;->addActivity(Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;)Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivitySequence;

    move-result-object v0

    return-object v0
.end method

.method private static getBlatteLevel()I
    .registers 3

    .prologue
    .line 98
    const/16 v0, 0xd

    .line 99
    sget-object v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v1, v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v1, v1, Lfr/testudo/spacecorsair/game/Game;->playerInfo:Lfr/testudo/spacecorsair/business/player/PlayerInfo;

    iget v1, v1, Lfr/testudo/spacecorsair/business/player/PlayerInfo;->level:I

    const/16 v2, 0xf

    if-le v1, v2, :cond_18

    .line 100
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/Game;->playerInfo:Lfr/testudo/spacecorsair/business/player/PlayerInfo;

    iget v0, v0, Lfr/testudo/spacecorsair/business/player/PlayerInfo;->level:I

    add-int/lit8 v0, v0, -0x1

    .line 102
    :cond_18
    return v0
.end method

.method public static getTheHive()Lfr/testudo/spacecorsair/game/levels/Level;
    .registers 4

    .prologue
    .line 38
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 40
    invoke-static {v0}, Lfr/testudo/spacecorsair/game/levels/builders/TheHiveLevelBuilder;->addPortals(Ljava/util/List;)V

    .line 42
    invoke-static {v0}, Lfr/testudo/spacecorsair/game/levels/builders/TheHiveLevelBuilder;->addEnemies(Ljava/util/List;)V

    .line 44
    invoke-static {v0}, Lfr/testudo/spacecorsair/game/levels/builders/TheHiveLevelBuilder;->addAsteroids(Ljava/util/List;)V

    .line 49
    invoke-static {}, Lfr/testudo/spacecorsair/business/player/PlayerShip;->instance()Lfr/testudo/spacecorsair/business/player/PlayerShip;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 51
    new-instance v1, Lfr/testudo/spacecorsair/game/levels/Level;

    sget-object v2, Lfr/testudo/spacecorsair/game/levels/LevelId;->THE_HIVE:Lfr/testudo/spacecorsair/game/levels/LevelId;

    sget-object v3, Lfr/testudo/spacecorsair/game/levels/builders/TheHiveLevelBuilder;->theHiveLevelAnimator:Lfr/testudo/spacecorsair/game/levels/LevelAnimator;

    invoke-direct {v1, v2, v0, v3}, Lfr/testudo/spacecorsair/game/levels/Level;-><init>(Lfr/testudo/spacecorsair/game/levels/LevelId;Ljava/util/List;Lfr/testudo/spacecorsair/game/levels/LevelAnimator;)V

    .line 52
    const v0, 0x7f060017

    iput v0, v1, Lfr/testudo/spacecorsair/game/levels/Level;->musicResourceId:I

    .line 53
    sget-object v0, Lfr/testudo/spacecorsair/display/Background$BackImage;->Nebuleuse:Lfr/testudo/spacecorsair/display/Background$BackImage;

    iput-object v0, v1, Lfr/testudo/spacecorsair/game/levels/Level;->backGroundImage:Lfr/testudo/spacecorsair/display/Background$BackImage;

    .line 56
    return-object v1
.end method
