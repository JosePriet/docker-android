.class public Lfr/testudo/spacecorsair/game/levels/builders/DeltaNodeLevelBuilder;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final GATE_TO_GREEN_BORDER_POS:Lfr/testudo/spacecorsair/engine/Vector2;

.field public static final GATE_TO_THE_HIVE_POS:Lfr/testudo/spacecorsair/engine/Vector2;

.field static GREEN_BORDER_PORTAL:Lfr/testudo/spacecorsair/business/world/Portal; = null

.field public static final LEVEL_MAX:I = 0xd

.field public static final LEVEL_MIN:I = 0xd

.field static THE_HIVE_PORTAL:Lfr/testudo/spacecorsair/business/world/Portal;

.field private static final deltaNodeLevelAnimator:Lfr/testudo/spacecorsair/game/levels/LevelAnimator;

.field static temp:Lfr/testudo/spacecorsair/engine/Vector2;

.field static ufoSequence:Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivitySequence;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    const/16 v4, 0x3a98

    .line 34
    new-instance v0, Lfr/testudo/spacecorsair/engine/Vector2;

    const/high16 v1, 0x44fa0000    # 2000.0f

    const v2, -0x39b4e000    # -13000.0f

    invoke-direct {v0, v1, v2}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>(FF)V

    sput-object v0, Lfr/testudo/spacecorsair/game/levels/builders/DeltaNodeLevelBuilder;->GATE_TO_GREEN_BORDER_POS:Lfr/testudo/spacecorsair/engine/Vector2;

    .line 35
    new-instance v0, Lfr/testudo/spacecorsair/engine/Vector2;

    const/high16 v1, -0x3a860000    # -4000.0f

    const/high16 v2, 0x45fa0000    # 8000.0f

    invoke-direct {v0, v1, v2}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>(FF)V

    sput-object v0, Lfr/testudo/spacecorsair/game/levels/builders/DeltaNodeLevelBuilder;->GATE_TO_THE_HIVE_POS:Lfr/testudo/spacecorsair/engine/Vector2;

    .line 73
    new-instance v0, Lfr/testudo/spacecorsair/game/levels/builders/DeltaNodeLevelBuilder$1;

    invoke-direct {v0}, Lfr/testudo/spacecorsair/game/levels/builders/DeltaNodeLevelBuilder$1;-><init>()V

    sput-object v0, Lfr/testudo/spacecorsair/game/levels/builders/DeltaNodeLevelBuilder;->deltaNodeLevelAnimator:Lfr/testudo/spacecorsair/game/levels/LevelAnimator;

    .line 128
    new-instance v0, Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-direct {v0}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>()V

    sput-object v0, Lfr/testudo/spacecorsair/game/levels/builders/DeltaNodeLevelBuilder;->temp:Lfr/testudo/spacecorsair/engine/Vector2;

    .line 144
    new-instance v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivitySequence;

    invoke-direct {v0}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivitySequence;-><init>()V

    new-instance v1, Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;

    invoke-direct {v1}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;-><init>()V

    const/high16 v2, -0x3b860000    # -1000.0f

    const/high16 v3, -0x3b060000    # -2000.0f

    invoke-virtual {v1, v2, v3, v4}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;->initGotoRandom(FFI)Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivitySequence;->addActivity(Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;)Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivitySequence;

    move-result-object v0

    new-instance v1, Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;

    invoke-direct {v1}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;-><init>()V

    const/16 v2, 0x7530

    invoke-virtual {v1, v2}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;->initIdleDuring(I)Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivitySequence;->addActivity(Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;)Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivitySequence;

    move-result-object v0

    new-instance v1, Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;

    invoke-direct {v1}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;-><init>()V

    const v2, 0x459c4000    # 5000.0f

    const/high16 v3, 0x457a0000    # 4000.0f

    invoke-virtual {v1, v2, v3, v4}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;->initGotoRandom(FFI)Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivitySequence;->addActivity(Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;)Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivitySequence;

    move-result-object v0

    sput-object v0, Lfr/testudo/spacecorsair/game/levels/builders/DeltaNodeLevelBuilder;->ufoSequence:Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivitySequence;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addEnemies(Ljava/util/List;)V
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
    const/16 v4, 0x3a98

    const-wide v12, 0x40d3880000000000L    # 20000.0

    const-wide v10, -0x3f3c780000000000L    # -10000.0

    const/16 v7, 0xd

    .line 133
    const/16 v1, 0x32

    const/high16 v2, -0x3b860000    # -1000.0f

    const/high16 v3, -0x3b060000    # -2000.0f

    sget-object v6, Lfr/testudo/spacecorsair/business/ennemis/EnnemisType;->ALIEN_RAT:Lfr/testudo/spacecorsair/business/ennemis/EnnemisType;

    move-object v0, p0

    move v5, v4

    move v8, v7

    invoke-static/range {v0 .. v8}, Lfr/testudo/spacecorsair/game/levels/builders/LevelBuilderHelper;->addStaticEnnemies(Ljava/util/List;IFFIILfr/testudo/spacecorsair/business/ennemis/EnnemisType;II)V

    .line 137
    const/4 v0, 0x0

    :goto_1d
    const/16 v1, 0xf

    if-ge v0, v1, :cond_4a

    .line 138
    sget-object v1, Lfr/testudo/spacecorsair/game/levels/builders/DeltaNodeLevelBuilder;->temp:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v2

    mul-double/2addr v2, v12

    add-double/2addr v2, v10

    double-to-float v2, v2

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v4

    mul-double/2addr v4, v12

    add-double/2addr v4, v10

    double-to-float v3, v4

    invoke-virtual {v1, v2, v3}, Lfr/testudo/spacecorsair/engine/Vector2;->set(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 139
    invoke-static {v7, v7}, Lfr/testudo/spacecorsair/mod/ModStockSpawn;->newUfo(II)Lfr/testudo/spacecorsair/business/ennemis/UfoAlienShip;

    move-result-object v1

    sget-object v2, Lfr/testudo/spacecorsair/game/levels/builders/DeltaNodeLevelBuilder;->temp:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v1, v2}, Lfr/testudo/spacecorsair/business/ennemis/UfoAlienShip;->initPosition(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    move-result-object v1

    sget-object v2, Lfr/testudo/spacecorsair/game/levels/builders/DeltaNodeLevelBuilder;->ufoSequence:Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivitySequence;

    invoke-virtual {v1, v2}, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->setActivitySequence(Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivitySequence;)Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    move-result-object v1

    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 137
    add-int/lit8 v0, v0, 0x1

    goto :goto_1d

    .line 142
    :cond_4a
    return-void
.end method

.method public static addPortals(Ljava/util/List;)V
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

    .line 152
    invoke-static {}, Lfr/testudo/spacecorsair/business/factory/GamePools;->newPortal()Lfr/testudo/spacecorsair/business/world/Portal;

    move-result-object v0

    const-string v1, "> green border <"

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/business/world/Portal;->init(Ljava/lang/String;)Lfr/testudo/spacecorsair/business/world/Portal;

    move-result-object v0

    .line 153
    const-string v1, "green border"

    iput-object v1, v0, Lfr/testudo/spacecorsair/business/world/Portal;->jumpLevelName:Ljava/lang/String;

    .line 154
    const-string v1, "> delta node <"

    iput-object v1, v0, Lfr/testudo/spacecorsair/business/world/Portal;->jumpPortalName:Ljava/lang/String;

    .line 155
    iget-object v1, v0, Lfr/testudo/spacecorsair/business/world/Portal;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    sget-object v2, Lfr/testudo/spacecorsair/game/levels/builders/DeltaNodeLevelBuilder;->GATE_TO_GREEN_BORDER_POS:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v1, v2}, Lfr/testudo/spacecorsair/engine/Vector2;->setSameAs(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 156
    iget-object v1, v0, Lfr/testudo/spacecorsair/business/world/Portal;->initialPlayerSpeed:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v1, v3, v4}, Lfr/testudo/spacecorsair/engine/Vector2;->set(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 157
    iput v3, v0, Lfr/testudo/spacecorsair/business/world/Portal;->initialPlayerSpin:F

    .line 158
    sput-object v0, Lfr/testudo/spacecorsair/game/levels/builders/DeltaNodeLevelBuilder;->GREEN_BORDER_PORTAL:Lfr/testudo/spacecorsair/business/world/Portal;

    .line 159
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 162
    invoke-static {}, Lfr/testudo/spacecorsair/business/factory/GamePools;->newPortal()Lfr/testudo/spacecorsair/business/world/Portal;

    move-result-object v0

    const-string v1, "> the hive <"

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/business/world/Portal;->init(Ljava/lang/String;)Lfr/testudo/spacecorsair/business/world/Portal;

    move-result-object v0

    .line 163
    const-string v1, "the hive"

    iput-object v1, v0, Lfr/testudo/spacecorsair/business/world/Portal;->jumpLevelName:Ljava/lang/String;

    .line 164
    const-string v1, "> delta node <"

    iput-object v1, v0, Lfr/testudo/spacecorsair/business/world/Portal;->jumpPortalName:Ljava/lang/String;

    .line 165
    iget-object v1, v0, Lfr/testudo/spacecorsair/business/world/Portal;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    sget-object v2, Lfr/testudo/spacecorsair/game/levels/builders/DeltaNodeLevelBuilder;->GATE_TO_THE_HIVE_POS:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v1, v2}, Lfr/testudo/spacecorsair/engine/Vector2;->setSameAs(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 166
    iget-object v1, v0, Lfr/testudo/spacecorsair/business/world/Portal;->initialPlayerSpeed:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v1, v3, v4}, Lfr/testudo/spacecorsair/engine/Vector2;->set(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 167
    iput v3, v0, Lfr/testudo/spacecorsair/business/world/Portal;->initialPlayerSpin:F

    .line 168
    sput-object v0, Lfr/testudo/spacecorsair/game/levels/builders/DeltaNodeLevelBuilder;->THE_HIVE_PORTAL:Lfr/testudo/spacecorsair/business/world/Portal;

    .line 169
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 171
    return-void
.end method

.method public static getDeltaNode()Lfr/testudo/spacecorsair/game/levels/Level;
    .registers 7

    .prologue
    .line 49
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 51
    invoke-static {v0}, Lfr/testudo/spacecorsair/game/levels/builders/DeltaNodeLevelBuilder;->addPortals(Ljava/util/List;)V

    .line 53
    invoke-static {v0}, Lfr/testudo/spacecorsair/game/levels/builders/DeltaNodeLevelBuilder;->addEnemies(Ljava/util/List;)V

    .line 57
    invoke-static {}, Lfr/testudo/spacecorsair/business/player/PlayerShip;->instance()Lfr/testudo/spacecorsair/business/player/PlayerShip;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 59
    new-instance v1, Lfr/testudo/spacecorsair/game/levels/Level;

    sget-object v2, Lfr/testudo/spacecorsair/game/levels/LevelId;->DELTA_NODE:Lfr/testudo/spacecorsair/game/levels/LevelId;

    sget-object v3, Lfr/testudo/spacecorsair/game/levels/builders/DeltaNodeLevelBuilder;->deltaNodeLevelAnimator:Lfr/testudo/spacecorsair/game/levels/LevelAnimator;

    invoke-direct {v1, v2, v0, v3}, Lfr/testudo/spacecorsair/game/levels/Level;-><init>(Lfr/testudo/spacecorsair/game/levels/LevelId;Ljava/util/List;Lfr/testudo/spacecorsair/game/levels/LevelAnimator;)V

    .line 60
    const v0, 0x7f060017

    iput v0, v1, Lfr/testudo/spacecorsair/game/levels/Level;->musicResourceId:I

    .line 61
    sget-object v0, Lfr/testudo/spacecorsair/display/Background$BackImage;->Black_default:Lfr/testudo/spacecorsair/display/Background$BackImage;

    iput-object v0, v1, Lfr/testudo/spacecorsair/game/levels/Level;->backGroundImage:Lfr/testudo/spacecorsair/display/Background$BackImage;

    .line 64
    const/4 v0, 0x1

    new-array v0, v0, [Lfr/testudo/spacecorsair/business/world/BackgroundDrawableObject;

    const/4 v2, 0x0

    invoke-static {}, Lfr/testudo/spacecorsair/business/factory/GamePools;->newSunDrawable()Lfr/testudo/spacecorsair/business/world/SunDrawableObject;

    move-result-object v3

    new-instance v4, Lfr/testudo/spacecorsair/engine/Vector2;

    const v5, 0x453b8000    # 3000.0f

    const v6, 0x45bb8000    # 6000.0f

    invoke-direct {v4, v5, v6}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>(FF)V

    const/high16 v5, 0x41880000    # 17.0f

    invoke-virtual {v3, v4, v5}, Lfr/testudo/spacecorsair/business/world/SunDrawableObject;->init(Lfr/testudo/spacecorsair/engine/Vector2;F)Lfr/testudo/spacecorsair/business/world/BackgroundDrawableObject;

    move-result-object v3

    aput-object v3, v0, v2

    iput-object v0, v1, Lfr/testudo/spacecorsair/game/levels/Level;->backgroundDrawableObjects:[Lfr/testudo/spacecorsair/business/world/BackgroundDrawableObject;

    .line 69
    return-object v1
.end method
