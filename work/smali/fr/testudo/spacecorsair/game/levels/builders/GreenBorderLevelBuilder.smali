.class public Lfr/testudo/spacecorsair/game/levels/builders/GreenBorderLevelBuilder;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final GATE_TO_DELTA_NODE_POS:Lfr/testudo/spacecorsair/engine/Vector2;

.field public static GATE_TO_DELTA_NODE_POS_POP_POINT1:Lfr/testudo/spacecorsair/engine/PopPoint; = null

.field public static GATE_TO_DELTA_NODE_POS_POP_POINT2:Lfr/testudo/spacecorsair/engine/PopPoint; = null

.field public static final GATE_TO_LOST_PARADIZE_POS:Lfr/testudo/spacecorsair/engine/Vector2;

.field public static final LEVEL_MAX:I = 0xd

.field public static final LEVEL_MIN:I = 0xc

.field public static PORTAL_DELTA_NODE:Lfr/testudo/spacecorsair/business/world/Portal;

.field private static final greenBorderLevelAnimator:Lfr/testudo/spacecorsair/game/levels/LevelAnimator;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 35
    new-instance v0, Lfr/testudo/spacecorsair/engine/Vector2;

    const/4 v1, 0x0

    const v2, -0x39f36000    # -9000.0f

    invoke-direct {v0, v1, v2}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>(FF)V

    sput-object v0, Lfr/testudo/spacecorsair/game/levels/builders/GreenBorderLevelBuilder;->GATE_TO_LOST_PARADIZE_POS:Lfr/testudo/spacecorsair/engine/Vector2;

    .line 36
    new-instance v0, Lfr/testudo/spacecorsair/engine/Vector2;

    const/high16 v1, -0x3a860000    # -4000.0f

    const v2, 0x45dac000    # 7000.0f

    invoke-direct {v0, v1, v2}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>(FF)V

    sput-object v0, Lfr/testudo/spacecorsair/game/levels/builders/GreenBorderLevelBuilder;->GATE_TO_DELTA_NODE_POS:Lfr/testudo/spacecorsair/engine/Vector2;

    .line 38
    sget-object v0, Lfr/testudo/spacecorsair/game/levels/builders/GreenBorderLevelBuilder;->GATE_TO_DELTA_NODE_POS:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-static {v0}, Lfr/testudo/spacecorsair/engine/PopPoint;->newTop(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/PopPoint;

    move-result-object v0

    sput-object v0, Lfr/testudo/spacecorsair/game/levels/builders/GreenBorderLevelBuilder;->GATE_TO_DELTA_NODE_POS_POP_POINT1:Lfr/testudo/spacecorsair/engine/PopPoint;

    .line 39
    sget-object v0, Lfr/testudo/spacecorsair/game/levels/builders/GreenBorderLevelBuilder;->GATE_TO_DELTA_NODE_POS:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-static {v0}, Lfr/testudo/spacecorsair/engine/PopPoint;->newLeft(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/PopPoint;

    move-result-object v0

    sput-object v0, Lfr/testudo/spacecorsair/game/levels/builders/GreenBorderLevelBuilder;->GATE_TO_DELTA_NODE_POS_POP_POINT2:Lfr/testudo/spacecorsair/engine/PopPoint;

    .line 82
    new-instance v0, Lfr/testudo/spacecorsair/game/levels/builders/GreenBorderLevelBuilder$1;

    invoke-direct {v0}, Lfr/testudo/spacecorsair/game/levels/builders/GreenBorderLevelBuilder$1;-><init>()V

    sput-object v0, Lfr/testudo/spacecorsair/game/levels/builders/GreenBorderLevelBuilder;->greenBorderLevelAnimator:Lfr/testudo/spacecorsair/game/levels/LevelAnimator;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addAsteroids(Ljava/util/List;)V
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
    const/16 v7, 0x7530

    const/4 v2, 0x0

    .line 139
    const/16 v1, 0x50

    const/16 v4, 0x2328

    const/16 v5, 0x2710

    move-object v0, p0

    move v3, v2

    move v6, v2

    invoke-static/range {v0 .. v6}, Lfr/testudo/spacecorsair/game/levels/builders/LevelBuilderHelper;->addRandomAsteroid(Ljava/util/List;IFFIIF)V

    .line 140
    const/4 v1, 0x1

    move-object v0, p0

    move v3, v2

    move v4, v7

    move v5, v7

    move v6, v2

    invoke-static/range {v0 .. v6}, Lfr/testudo/spacecorsair/game/levels/builders/LevelBuilderHelper;->addEpaveAlbatros(Ljava/util/List;IFFIIF)V

    .line 142
    return-void
.end method

.method public static addEnemies(Ljava/util/List;)V
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
    .line 146
    const/4 v1, 0x5

    const/high16 v2, -0x3b060000    # -2000.0f

    const v3, -0x3ac48000    # -3000.0f

    const/16 v4, 0x1770

    const/16 v5, 0xbb8

    sget-object v6, Lfr/testudo/spacecorsair/business/ennemis/EnnemisType;->TOURELLE:Lfr/testudo/spacecorsair/business/ennemis/EnnemisType;

    const/16 v7, 0xc

    const/16 v8, 0xd

    move-object v0, p0

    invoke-static/range {v0 .. v8}, Lfr/testudo/spacecorsair/game/levels/builders/LevelBuilderHelper;->addStaticEnnemies(Ljava/util/List;IFFIILfr/testudo/spacecorsair/business/ennemis/EnnemisType;II)V

    .line 149
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

    .line 152
    invoke-static {}, Lfr/testudo/spacecorsair/business/factory/GamePools;->newPortal()Lfr/testudo/spacecorsair/business/world/Portal;

    move-result-object v0

    const-string v1, "> lost paradise <"

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/business/world/Portal;->init(Ljava/lang/String;)Lfr/testudo/spacecorsair/business/world/Portal;

    move-result-object v0

    .line 153
    const-string v1, "lost paradise"

    iput-object v1, v0, Lfr/testudo/spacecorsair/business/world/Portal;->jumpLevelName:Ljava/lang/String;

    .line 154
    const-string v1, "> green border <"

    iput-object v1, v0, Lfr/testudo/spacecorsair/business/world/Portal;->jumpPortalName:Ljava/lang/String;

    .line 155
    iget-object v1, v0, Lfr/testudo/spacecorsair/business/world/Portal;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    sget-object v2, Lfr/testudo/spacecorsair/game/levels/builders/GreenBorderLevelBuilder;->GATE_TO_LOST_PARADIZE_POS:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v1, v2}, Lfr/testudo/spacecorsair/engine/Vector2;->setSameAs(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 156
    iget-object v1, v0, Lfr/testudo/spacecorsair/business/world/Portal;->initialPlayerSpeed:Lfr/testudo/spacecorsair/engine/Vector2;

    const/high16 v2, 0x40e00000    # 7.0f

    invoke-virtual {v1, v3, v2}, Lfr/testudo/spacecorsair/engine/Vector2;->set(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 157
    iput v3, v0, Lfr/testudo/spacecorsair/business/world/Portal;->initialPlayerSpin:F

    .line 158
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 161
    invoke-static {}, Lfr/testudo/spacecorsair/business/factory/GamePools;->newPortal()Lfr/testudo/spacecorsair/business/world/Portal;

    move-result-object v0

    const-string v1, "> delta node <"

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/business/world/Portal;->init(Ljava/lang/String;)Lfr/testudo/spacecorsair/business/world/Portal;

    move-result-object v0

    .line 162
    const-string v1, "delta node"

    iput-object v1, v0, Lfr/testudo/spacecorsair/business/world/Portal;->jumpLevelName:Ljava/lang/String;

    .line 163
    const-string v1, "> green border <"

    iput-object v1, v0, Lfr/testudo/spacecorsair/business/world/Portal;->jumpPortalName:Ljava/lang/String;

    .line 164
    iget-object v1, v0, Lfr/testudo/spacecorsair/business/world/Portal;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    sget-object v2, Lfr/testudo/spacecorsair/game/levels/builders/GreenBorderLevelBuilder;->GATE_TO_DELTA_NODE_POS:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v1, v2}, Lfr/testudo/spacecorsair/engine/Vector2;->setSameAs(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 165
    iget-object v1, v0, Lfr/testudo/spacecorsair/business/world/Portal;->initialPlayerSpeed:Lfr/testudo/spacecorsair/engine/Vector2;

    const/high16 v2, -0x3f200000    # -7.0f

    invoke-virtual {v1, v3, v2}, Lfr/testudo/spacecorsair/engine/Vector2;->set(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 166
    iput v3, v0, Lfr/testudo/spacecorsair/business/world/Portal;->initialPlayerSpin:F

    .line 167
    sput-object v0, Lfr/testudo/spacecorsair/game/levels/builders/GreenBorderLevelBuilder;->PORTAL_DELTA_NODE:Lfr/testudo/spacecorsair/business/world/Portal;

    .line 168
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 170
    return-void
.end method

.method public static getGreenBorder()Lfr/testudo/spacecorsair/game/levels/Level;
    .registers 4

    .prologue
    .line 54
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 56
    invoke-static {v0}, Lfr/testudo/spacecorsair/game/levels/builders/GreenBorderLevelBuilder;->addPortals(Ljava/util/List;)V

    .line 58
    invoke-static {v0}, Lfr/testudo/spacecorsair/game/levels/builders/GreenBorderLevelBuilder;->addAsteroids(Ljava/util/List;)V

    .line 60
    invoke-static {v0}, Lfr/testudo/spacecorsair/game/levels/builders/GreenBorderLevelBuilder;->addEnemies(Ljava/util/List;)V

    .line 64
    invoke-static {}, Lfr/testudo/spacecorsair/business/player/PlayerShip;->instance()Lfr/testudo/spacecorsair/business/player/PlayerShip;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 66
    new-instance v1, Lfr/testudo/spacecorsair/game/levels/Level;

    sget-object v2, Lfr/testudo/spacecorsair/game/levels/LevelId;->GREEN_BORDER:Lfr/testudo/spacecorsair/game/levels/LevelId;

    sget-object v3, Lfr/testudo/spacecorsair/game/levels/builders/GreenBorderLevelBuilder;->greenBorderLevelAnimator:Lfr/testudo/spacecorsair/game/levels/LevelAnimator;

    invoke-direct {v1, v2, v0, v3}, Lfr/testudo/spacecorsair/game/levels/Level;-><init>(Lfr/testudo/spacecorsair/game/levels/LevelId;Ljava/util/List;Lfr/testudo/spacecorsair/game/levels/LevelAnimator;)V

    .line 67
    const v0, 0x7f060018

    iput v0, v1, Lfr/testudo/spacecorsair/game/levels/Level;->musicResourceId:I

    .line 68
    sget-object v0, Lfr/testudo/spacecorsair/display/Background$BackImage;->Nebuleuse:Lfr/testudo/spacecorsair/display/Background$BackImage;

    iput-object v0, v1, Lfr/testudo/spacecorsair/game/levels/Level;->backGroundImage:Lfr/testudo/spacecorsair/display/Background$BackImage;

    .line 78
    return-object v1
.end method
