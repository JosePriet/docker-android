.class public Lfr/testudo/spacecorsair/game/levels/Level;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final ASTEOID_CLEAR_RANGE:I = 0x5dc

.field private static final ENNEMIS_CLEAR_RANGE:I = 0x7d0

.field public static pointDrawable:Lfr/testudo/spacecorsair/display/Drawable;


# instance fields
.field public final animatedElements:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lfr/testudo/spacecorsair/display/AnimatedDrawable;",
            ">;"
        }
    .end annotation
.end field

.field public animator:Lfr/testudo/spacecorsair/game/levels/LevelAnimator;

.field public backGroundImage:Lfr/testudo/spacecorsair/display/Background$BackImage;

.field public backgroundDrawableObjects:[Lfr/testudo/spacecorsair/business/world/BackgroundDrawableObject;

.field changeLevelRequested:Z

.field public final drawOnlyelements:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lfr/testudo/spacecorsair/business/Element;",
            ">;"
        }
    .end annotation
.end field

.field public final elements:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lfr/testudo/spacecorsair/business/Element;",
            ">;"
        }
    .end annotation
.end field

.field public id:Lfr/testudo/spacecorsair/game/levels/LevelId;

.field private initialEnteringPortalName:Ljava/lang/String;

.field public multiplayerElementIds:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lfr/testudo/spacecorsair/business/Element;",
            ">;"
        }
    .end annotation
.end field

.field public musicResourceId:I

.field public final name:Ljava/lang/String;

.field public nearbyDistanceOverrideValue:I

.field nextLevelName:Ljava/lang/String;

.field nextLevelPortal:Ljava/lang/String;

.field public overrideNearbyDistance:Z

.field public recommandedMaxLevel:I

.field public recommandedMinLevel:I

.field private requestPlayerMooveToQueueEnd:Z

.field tempCivilShips:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lfr/testudo/spacecorsair/business/world/civil/CivilShip;",
            ">;"
        }
    .end annotation
.end field

.field tempVector:Lfr/testudo/spacecorsair/engine/Vector2;

.field public toAdd:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lfr/testudo/spacecorsair/business/Element;",
            ">;"
        }
    .end annotation
.end field

.field public toAddAnimated:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lfr/testudo/spacecorsair/display/AnimatedDrawable;",
            ">;"
        }
    .end annotation
.end field

.field public toAddDrawOnly:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lfr/testudo/spacecorsair/business/Element;",
            ">;"
        }
    .end annotation
.end field

.field public toDelete:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lfr/testudo/spacecorsair/business/Element;",
            ">;"
        }
    .end annotation
.end field

.field public toDeleteAnimated:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lfr/testudo/spacecorsair/display/AnimatedDrawable;",
            ">;"
        }
    .end annotation
.end field

.field public toDeleteDrawOnly:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lfr/testudo/spacecorsair/business/Element;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lfr/testudo/spacecorsair/game/levels/LevelId;Ljava/util/List;Lfr/testudo/spacecorsair/game/levels/LevelAnimator;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lfr/testudo/spacecorsair/game/levels/LevelId;",
            "Ljava/util/List",
            "<",
            "Lfr/testudo/spacecorsair/business/Element;",
            ">;",
            "Lfr/testudo/spacecorsair/game/levels/LevelAnimator;",
            ")V"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    const/16 v1, 0x1f4

    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lfr/testudo/spacecorsair/game/levels/Level;->toDelete:Ljava/util/List;

    .line 42
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lfr/testudo/spacecorsair/game/levels/Level;->toAdd:Ljava/util/List;

    .line 44
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lfr/testudo/spacecorsair/game/levels/Level;->drawOnlyelements:Ljava/util/List;

    .line 45
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lfr/testudo/spacecorsair/game/levels/Level;->toDeleteDrawOnly:Ljava/util/List;

    .line 46
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lfr/testudo/spacecorsair/game/levels/Level;->toAddDrawOnly:Ljava/util/List;

    .line 49
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lfr/testudo/spacecorsair/game/levels/Level;->animatedElements:Ljava/util/List;

    .line 50
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lfr/testudo/spacecorsair/game/levels/Level;->toDeleteAnimated:Ljava/util/List;

    .line 51
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lfr/testudo/spacecorsair/game/levels/Level;->toAddAnimated:Ljava/util/List;

    .line 53
    iput-boolean v2, p0, Lfr/testudo/spacecorsair/game/levels/Level;->changeLevelRequested:Z

    .line 58
    iput-boolean v2, p0, Lfr/testudo/spacecorsair/game/levels/Level;->overrideNearbyDistance:Z

    .line 59
    const/16 v0, 0xbb8

    iput v0, p0, Lfr/testudo/spacecorsair/game/levels/Level;->nearbyDistanceOverrideValue:I

    .line 63
    iput v2, p0, Lfr/testudo/spacecorsair/game/levels/Level;->recommandedMinLevel:I

    .line 64
    iput v2, p0, Lfr/testudo/spacecorsair/game/levels/Level;->recommandedMaxLevel:I

    .line 65
    const/4 v0, -0x1

    iput v0, p0, Lfr/testudo/spacecorsair/game/levels/Level;->musicResourceId:I

    .line 66
    sget-object v0, Lfr/testudo/spacecorsair/display/Background$BackImage;->Black_default:Lfr/testudo/spacecorsair/display/Background$BackImage;

    iput-object v0, p0, Lfr/testudo/spacecorsair/game/levels/Level;->backGroundImage:Lfr/testudo/spacecorsair/display/Background$BackImage;

    .line 68
    iput-boolean v2, p0, Lfr/testudo/spacecorsair/game/levels/Level;->requestPlayerMooveToQueueEnd:Z

    .line 197
    new-instance v0, Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-direct {v0, v3, v3}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>(FF)V

    iput-object v0, p0, Lfr/testudo/spacecorsair/game/levels/Level;->tempVector:Lfr/testudo/spacecorsair/engine/Vector2;

    .line 623
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lfr/testudo/spacecorsair/game/levels/Level;->tempCivilShips:Ljava/util/List;

    .line 116
    iput-object p1, p0, Lfr/testudo/spacecorsair/game/levels/Level;->id:Lfr/testudo/spacecorsair/game/levels/LevelId;

    .line 117
    iput-object p2, p0, Lfr/testudo/spacecorsair/game/levels/Level;->elements:Ljava/util/List;

    .line 118
    iget-object v0, p1, Lfr/testudo/spacecorsair/game/levels/LevelId;->levelName:Ljava/lang/String;

    iput-object v0, p0, Lfr/testudo/spacecorsair/game/levels/Level;->name:Ljava/lang/String;

    .line 119
    iget v0, p1, Lfr/testudo/spacecorsair/game/levels/LevelId;->levelMax:I

    iput v0, p0, Lfr/testudo/spacecorsair/game/levels/Level;->recommandedMaxLevel:I

    .line 120
    iget v0, p1, Lfr/testudo/spacecorsair/game/levels/LevelId;->levelMin:I

    iput v0, p0, Lfr/testudo/spacecorsair/game/levels/Level;->recommandedMinLevel:I

    .line 121
    iput-object p3, p0, Lfr/testudo/spacecorsair/game/levels/Level;->animator:Lfr/testudo/spacecorsair/game/levels/LevelAnimator;

    .line 124
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(I)V

    iput-object v0, p0, Lfr/testudo/spacecorsair/game/levels/Level;->multiplayerElementIds:Ljava/util/Map;

    .line 126
    return-void
.end method

.method public static getRandomLocationCirclePoint(Lfr/testudo/spacecorsair/engine/Vector2;Lfr/testudo/spacecorsair/engine/Vector2;II)V
    .registers 14

    .prologue
    .line 207
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v0

    const-wide v2, 0x4076800000000000L    # 360.0

    mul-double/2addr v0, v2

    double-to-int v0, v0

    .line 208
    int-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v0

    .line 209
    double-to-float v2, v0

    invoke-static {v2}, Landroid/util/FloatMath;->cos(F)F

    move-result v2

    .line 210
    double-to-float v0, v0

    invoke-static {v0}, Landroid/util/FloatMath;->sin(F)F

    move-result v0

    .line 211
    invoke-virtual {p1, p0}, Lfr/testudo/spacecorsair/engine/Vector2;->setSameAs(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 212
    neg-int v1, p3

    int-to-double v4, v1

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v6

    int-to-double v8, p3

    mul-double/2addr v6, v8

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    mul-double/2addr v6, v8

    add-double/2addr v4, v6

    double-to-int v1, v4

    add-int/2addr v1, p2

    .line 213
    iget v3, p1, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    int-to-float v4, v1

    mul-float/2addr v2, v4

    add-float/2addr v2, v3

    iput v2, p1, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    .line 214
    iget v2, p1, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    int-to-float v1, v1

    mul-float/2addr v0, v1

    add-float/2addr v0, v2

    iput v0, p1, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    .line 217
    return-void
.end method

.method private placePlauerForGameBegins()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 325
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->playerShip:Lfr/testudo/spacecorsair/business/player/PlayerShip;

    .line 327
    iget-object v1, v0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v1, v2, v2}, Lfr/testudo/spacecorsair/engine/Vector2;->set(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 328
    iget-object v0, v0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->speed:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v0, v2, v2}, Lfr/testudo/spacecorsair/engine/Vector2;->set(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 329
    const-string v0, "VECTOR00_GATE"

    iput-object v0, p0, Lfr/testudo/spacecorsair/game/levels/Level;->initialEnteringPortalName:Ljava/lang/String;

    .line 330
    return-void
.end method

.method private requestLeaveArena()V
    .registers 2

    .prologue
    .line 94
    const-string v0, "heliostat"

    iput-object v0, p0, Lfr/testudo/spacecorsair/game/levels/Level;->nextLevelName:Ljava/lang/String;

    .line 95
    const-string v0, "> galactic arena <"

    iput-object v0, p0, Lfr/testudo/spacecorsair/game/levels/Level;->nextLevelPortal:Ljava/lang/String;

    .line 96
    const/4 v0, 0x1

    iput-boolean v0, p0, Lfr/testudo/spacecorsair/game/levels/Level;->changeLevelRequested:Z

    .line 98
    return-void
.end method

.method private tooglePortal(Z)V
    .registers 6

    .prologue
    .line 472
    iget-object v0, p0, Lfr/testudo/spacecorsair/game/levels/Level;->elements:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    .line 474
    const/4 v0, 0x0

    move v1, v0

    :goto_8
    if-ge v1, v2, :cond_1e

    .line 475
    iget-object v0, p0, Lfr/testudo/spacecorsair/game/levels/Level;->elements:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfr/testudo/spacecorsair/business/Element;

    .line 476
    instance-of v3, v0, Lfr/testudo/spacecorsair/business/world/Portal;

    if-eqz v3, :cond_1a

    .line 477
    check-cast v0, Lfr/testudo/spacecorsair/business/world/Portal;

    iput-boolean p1, v0, Lfr/testudo/spacecorsair/business/world/Portal;->canBeUsed:Z

    .line 474
    :cond_1a
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_8

    .line 481
    :cond_1e
    return-void
.end method


# virtual methods
.method public addMissileFrom(FF)V
    .registers 10

    .prologue
    .line 249
    invoke-static {}, Lfr/testudo/spacecorsair/business/factory/GamePools;->newMissile()Lfr/testudo/spacecorsair/business/projectiles/Missile;

    move-result-object v0

    const/16 v1, 0xa

    const/high16 v2, 0x44480000    # 800.0f

    const/16 v3, 0x3c

    const/4 v4, 0x0

    sget-object v5, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v5, v5, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->playerShip:Lfr/testudo/spacecorsair/business/player/PlayerShip;

    sget-object v6, Lfr/testudo/spacecorsair/business/loot/stuff/alteration/AlterationSpecs;->DEFAULT:Lfr/testudo/spacecorsair/business/loot/stuff/alteration/AlterationSpecs;

    invoke-virtual/range {v0 .. v6}, Lfr/testudo/spacecorsair/business/projectiles/Missile;->init(IFILfr/testudo/spacecorsair/business/Element;Lfr/testudo/spacecorsair/business/Element;Lfr/testudo/spacecorsair/business/loot/stuff/alteration/AlterationSpecs;)Lfr/testudo/spacecorsair/business/projectiles/Missile;

    move-result-object v0

    .line 250
    iget-object v1, v0, Lfr/testudo/spacecorsair/business/projectiles/Missile;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v1, p1, p2}, Lfr/testudo/spacecorsair/engine/Vector2;->set(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 251
    iget-object v1, v0, Lfr/testudo/spacecorsair/business/projectiles/Missile;->speed:Lfr/testudo/spacecorsair/engine/Vector2;

    const/4 v2, 0x0

    const/high16 v3, -0x40800000    # -1.0f

    invoke-virtual {v1, v2, v3}, Lfr/testudo/spacecorsair/engine/Vector2;->set(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 252
    iget-object v1, v0, Lfr/testudo/spacecorsair/business/projectiles/Missile;->speed:Lfr/testudo/spacecorsair/engine/Vector2;

    sget-object v2, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v2, v2, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->playerShip:Lfr/testudo/spacecorsair/business/player/PlayerShip;

    iget v2, v2, Lfr/testudo/spacecorsair/business/player/PlayerShip;->spin:F

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lfr/testudo/spacecorsair/engine/Vector2;->applyRotatation(D)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 253
    sget-object v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v1, v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->playerShip:Lfr/testudo/spacecorsair/business/player/PlayerShip;

    iget v1, v1, Lfr/testudo/spacecorsair/business/player/PlayerShip;->spin:F

    iput v1, v0, Lfr/testudo/spacecorsair/business/projectiles/Missile;->spin:F

    .line 254
    iget-object v1, p0, Lfr/testudo/spacecorsair/game/levels/Level;->toAdd:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 256
    return-void
.end method

.method public addNameToAllEnemies(Ljava/lang/Class;Ljava/lang/String;)V
    .registers 7

    .prologue
    .line 561
    iget-object v0, p0, Lfr/testudo/spacecorsair/game/levels/Level;->elements:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    .line 562
    const/4 v0, 0x0

    move v1, v0

    :goto_8
    if-ge v1, v2, :cond_21

    .line 564
    iget-object v0, p0, Lfr/testudo/spacecorsair/game/levels/Level;->elements:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfr/testudo/spacecorsair/business/Element;

    .line 565
    invoke-virtual {p1, v0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1d

    .line 567
    check-cast v0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    .line 568
    invoke-virtual {v0, p2}, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->setSpecificName(Ljava/lang/String;)Lfr/testudo/spacecorsair/business/Element;

    .line 562
    :cond_1d
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_8

    .line 572
    :cond_21
    return-void
.end method

.method public addRandomAsteThatTargetPlayer(F)V
    .registers 16

    .prologue
    const-wide/high16 v12, 0x4000000000000000L    # 2.0

    .line 221
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v0

    const-wide v2, 0x4076800000000000L    # 360.0

    mul-double/2addr v0, v2

    double-to-int v0, v0

    .line 222
    int-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v0

    .line 223
    double-to-float v2, v0

    invoke-static {v2}, Landroid/util/FloatMath;->cos(F)F

    move-result v2

    .line 224
    double-to-float v0, v0

    invoke-static {v0}, Landroid/util/FloatMath;->sin(F)F

    move-result v0

    .line 225
    iget-object v1, p0, Lfr/testudo/spacecorsair/game/levels/Level;->tempVector:Lfr/testudo/spacecorsair/engine/Vector2;

    sget-object v3, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v3, v3, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->playerShip:Lfr/testudo/spacecorsair/business/player/PlayerShip;

    iget-object v3, v3, Lfr/testudo/spacecorsair/business/player/PlayerShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v1, v3}, Lfr/testudo/spacecorsair/engine/Vector2;->setSameAs(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 226
    const/16 v1, 0x5dc

    .line 227
    iget-object v3, p0, Lfr/testudo/spacecorsair/game/levels/Level;->tempVector:Lfr/testudo/spacecorsair/engine/Vector2;

    neg-int v4, v1

    int-to-double v4, v4

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v6

    int-to-double v8, v1

    mul-double/2addr v6, v8

    mul-double/2addr v6, v12

    add-double/2addr v4, v6

    double-to-float v4, v4

    neg-int v5, v1

    int-to-double v6, v5

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v8

    int-to-double v10, v1

    mul-double/2addr v8, v10

    mul-double/2addr v8, v12

    add-double/2addr v6, v8

    double-to-float v1, v6

    invoke-virtual {v3, v4, v1}, Lfr/testudo/spacecorsair/engine/Vector2;->add(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 228
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v4

    const-wide/high16 v6, 0x4089000000000000L    # 800.0

    mul-double/2addr v4, v6

    double-to-int v1, v4

    add-int/lit16 v1, v1, 0xfa0

    .line 229
    iget-object v3, p0, Lfr/testudo/spacecorsair/game/levels/Level;->tempVector:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v4, v3, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    int-to-float v5, v1

    mul-float/2addr v5, v2

    add-float/2addr v4, v5

    iput v4, v3, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    .line 230
    iget-object v3, p0, Lfr/testudo/spacecorsair/game/levels/Level;->tempVector:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v4, v3, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    int-to-float v1, v1

    mul-float/2addr v1, v0

    add-float/2addr v1, v4

    iput v1, v3, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    .line 233
    new-instance v1, Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-direct {v1}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>()V

    .line 234
    iget-object v3, p0, Lfr/testudo/spacecorsair/game/levels/Level;->tempVector:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v1, v3}, Lfr/testudo/spacecorsair/engine/Vector2;->setSameAs(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 236
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v4

    const-wide v6, 0x3ffb333340000000L    # 1.7000000476837158

    mul-double/2addr v4, v6

    double-to-float v3, v4

    add-float/2addr v3, p1

    .line 239
    iget-object v4, p0, Lfr/testudo/spacecorsair/game/levels/Level;->tempVector:Lfr/testudo/spacecorsair/engine/Vector2;

    neg-float v2, v2

    mul-float/2addr v2, v3

    iput v2, v4, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    .line 240
    iget-object v2, p0, Lfr/testudo/spacecorsair/game/levels/Level;->tempVector:Lfr/testudo/spacecorsair/engine/Vector2;

    neg-float v0, v0

    mul-float/2addr v0, v3

    iput v0, v2, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    .line 242
    const/4 v0, 0x1

    invoke-static {v0}, Lfr/testudo/spacecorsair/business/factory/GamePools;->newRandomSizeAsteroid(Z)Lfr/testudo/spacecorsair/business/world/Asteroid;

    move-result-object v0

    iget-object v2, p0, Lfr/testudo/spacecorsair/game/levels/Level;->tempVector:Lfr/testudo/spacecorsair/engine/Vector2;

    const-wide/high16 v4, -0x4010000000000000L    # -1.0

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v6

    mul-double/2addr v6, v12

    add-double/2addr v4, v6

    double-to-float v3, v4

    invoke-virtual {v0, v1, v2, v3}, Lfr/testudo/spacecorsair/business/world/Asteroid;->init(Lfr/testudo/spacecorsair/engine/Vector2;Lfr/testudo/spacecorsair/engine/Vector2;F)Lfr/testudo/spacecorsair/business/world/Asteroid;

    move-result-object v0

    .line 243
    invoke-virtual {v0}, Lfr/testudo/spacecorsair/business/world/Asteroid;->enableLifeLimit()Lfr/testudo/spacecorsair/business/world/Asteroid;

    .line 244
    iget-object v1, p0, Lfr/testudo/spacecorsair/game/levels/Level;->toAdd:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 245
    return-void
.end method

.method public cleanDoors(Ljava/lang/String;)V
    .registers 8

    .prologue
    .line 417
    invoke-virtual {p0, p1}, Lfr/testudo/spacecorsair/game/levels/Level;->findPortalByName(Ljava/lang/String;)Lfr/testudo/spacecorsair/business/world/Portal;

    move-result-object v0

    .line 419
    if-nez v0, :cond_7

    .line 443
    :cond_6
    return-void

    .line 423
    :cond_7
    iget-object v0, v0, Lfr/testudo/spacecorsair/business/world/Portal;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    .line 425
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 426
    new-instance v3, Lfr/testudo/spacecorsair/engine/RemoveZone;

    const/16 v1, 0x5dc

    const/16 v4, 0x7d0

    invoke-direct {v3, v0, v1, v4}, Lfr/testudo/spacecorsair/engine/RemoveZone;-><init>(Lfr/testudo/spacecorsair/engine/Vector2;II)V

    .line 428
    iget-object v0, p0, Lfr/testudo/spacecorsair/game/levels/Level;->elements:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    .line 430
    const/4 v0, 0x0

    move v1, v0

    :goto_1f
    if-ge v1, v4, :cond_3a

    .line 432
    iget-object v0, p0, Lfr/testudo/spacecorsair/game/levels/Level;->elements:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfr/testudo/spacecorsair/business/Element;

    .line 433
    iget-boolean v5, v0, Lfr/testudo/spacecorsair/business/Element;->doNotRemoveWhenCleanDoors:Z

    if-nez v5, :cond_36

    invoke-virtual {v3, v0}, Lfr/testudo/spacecorsair/engine/RemoveZone;->touch(Lfr/testudo/spacecorsair/business/Element;)Z

    move-result v5

    if-eqz v5, :cond_36

    .line 434
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 430
    :cond_36
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1f

    .line 439
    :cond_3a
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfr/testudo/spacecorsair/business/Element;

    .line 440
    iget-object v2, p0, Lfr/testudo/spacecorsair/game/levels/Level;->elements:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_3e
.end method

.method public commitChanges()V
    .registers 7

    .prologue
    const/4 v1, 0x0

    .line 133
    iget-object v0, p0, Lfr/testudo/spacecorsair/game/levels/Level;->toDelete:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    move v2, v1

    .line 134
    :goto_8
    if-ge v2, v3, :cond_2b

    .line 135
    iget-object v0, p0, Lfr/testudo/spacecorsair/game/levels/Level;->toDelete:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfr/testudo/spacecorsair/business/Element;

    .line 136
    if-eqz v0, :cond_27

    .line 137
    iget-object v4, p0, Lfr/testudo/spacecorsair/game/levels/Level;->multiplayerElementIds:Ljava/util/Map;

    iget v5, v0, Lfr/testudo/spacecorsair/business/Element;->objectId:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    invoke-virtual {v0}, Lfr/testudo/spacecorsair/business/Element;->recycleToPool()V

    .line 139
    iget-object v4, p0, Lfr/testudo/spacecorsair/game/levels/Level;->elements:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 134
    :cond_27
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_8

    .line 142
    :cond_2b
    iget-object v0, p0, Lfr/testudo/spacecorsair/game/levels/Level;->toDelete:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 143
    iget-object v0, p0, Lfr/testudo/spacecorsair/game/levels/Level;->toAdd:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    move v2, v1

    .line 144
    :goto_37
    if-ge v2, v3, :cond_4a

    .line 145
    iget-object v0, p0, Lfr/testudo/spacecorsair/game/levels/Level;->toAdd:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfr/testudo/spacecorsair/business/Element;

    .line 146
    iget-object v4, p0, Lfr/testudo/spacecorsair/game/levels/Level;->elements:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 144
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_37

    .line 148
    :cond_4a
    iget-object v0, p0, Lfr/testudo/spacecorsair/game/levels/Level;->toAdd:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 151
    iget-object v0, p0, Lfr/testudo/spacecorsair/game/levels/Level;->toDeleteAnimated:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    move v2, v1

    .line 152
    :goto_56
    if-ge v2, v3, :cond_6c

    .line 153
    iget-object v0, p0, Lfr/testudo/spacecorsair/game/levels/Level;->toDeleteAnimated:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfr/testudo/spacecorsair/display/AnimatedDrawable;

    .line 154
    invoke-virtual {v0}, Lfr/testudo/spacecorsair/display/AnimatedDrawable;->recycleToPool()V

    .line 155
    iget-object v4, p0, Lfr/testudo/spacecorsair/game/levels/Level;->animatedElements:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 152
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_56

    .line 157
    :cond_6c
    iget-object v0, p0, Lfr/testudo/spacecorsair/game/levels/Level;->toDeleteAnimated:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 158
    iget-object v0, p0, Lfr/testudo/spacecorsair/game/levels/Level;->toAddAnimated:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    move v0, v1

    .line 159
    :goto_78
    if-ge v0, v2, :cond_88

    .line 160
    iget-object v3, p0, Lfr/testudo/spacecorsair/game/levels/Level;->animatedElements:Ljava/util/List;

    iget-object v4, p0, Lfr/testudo/spacecorsair/game/levels/Level;->toAddAnimated:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 159
    add-int/lit8 v0, v0, 0x1

    goto :goto_78

    .line 163
    :cond_88
    iget-object v0, p0, Lfr/testudo/spacecorsair/game/levels/Level;->toAddAnimated:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 165
    iget-object v0, p0, Lfr/testudo/spacecorsair/game/levels/Level;->toDeleteDrawOnly:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    move v2, v1

    .line 166
    :goto_94
    if-ge v2, v3, :cond_aa

    .line 167
    iget-object v0, p0, Lfr/testudo/spacecorsair/game/levels/Level;->toDeleteDrawOnly:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfr/testudo/spacecorsair/business/Element;

    .line 168
    invoke-virtual {v0}, Lfr/testudo/spacecorsair/business/Element;->recycleToPool()V

    .line 169
    iget-object v4, p0, Lfr/testudo/spacecorsair/game/levels/Level;->drawOnlyelements:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 166
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_94

    .line 171
    :cond_aa
    iget-object v0, p0, Lfr/testudo/spacecorsair/game/levels/Level;->toDeleteDrawOnly:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 173
    iget-object v0, p0, Lfr/testudo/spacecorsair/game/levels/Level;->toAddDrawOnly:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    move v0, v1

    .line 174
    :goto_b6
    if-ge v0, v2, :cond_c6

    .line 175
    iget-object v3, p0, Lfr/testudo/spacecorsair/game/levels/Level;->drawOnlyelements:Ljava/util/List;

    iget-object v4, p0, Lfr/testudo/spacecorsair/game/levels/Level;->toAddDrawOnly:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 174
    add-int/lit8 v0, v0, 0x1

    goto :goto_b6

    .line 177
    :cond_c6
    iget-object v0, p0, Lfr/testudo/spacecorsair/game/levels/Level;->toAddDrawOnly:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 180
    iget-boolean v0, p0, Lfr/testudo/spacecorsair/game/levels/Level;->changeLevelRequested:Z

    if-eqz v0, :cond_e9

    .line 181
    invoke-virtual {p0}, Lfr/testudo/spacecorsair/game/levels/Level;->reset()V

    .line 182
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/Game;->playerInfo:Lfr/testudo/spacecorsair/business/player/PlayerInfo;

    invoke-static {}, Lfr/testudo/spacecorsair/business/player/PlayerShip;->instance()Lfr/testudo/spacecorsair/business/player/PlayerShip;

    move-result-object v2

    iget v2, v2, Lfr/testudo/spacecorsair/business/player/PlayerShip;->life:F

    float-to-int v2, v2

    int-to-long v2, v2

    iput-wide v2, v0, Lfr/testudo/spacecorsair/business/player/PlayerInfo;->curlife:J

    .line 183
    iget-object v0, p0, Lfr/testudo/spacecorsair/game/levels/Level;->nextLevelName:Ljava/lang/String;

    iget-object v2, p0, Lfr/testudo/spacecorsair/game/levels/Level;->nextLevelPortal:Ljava/lang/String;

    invoke-static {v0, v2}, Lfr/testudo/spacecorsair/game/levels/builders/LevelBuilder;->jumpToLevel(Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    :cond_e9
    iget-boolean v0, p0, Lfr/testudo/spacecorsair/game/levels/Level;->requestPlayerMooveToQueueEnd:Z

    if-eqz v0, :cond_109

    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->playerShip:Lfr/testudo/spacecorsair/business/player/PlayerShip;

    iget-boolean v0, v0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->removed:Z

    if-nez v0, :cond_109

    .line 188
    iget-object v0, p0, Lfr/testudo/spacecorsair/game/levels/Level;->elements:Ljava/util/List;

    sget-object v2, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v2, v2, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->playerShip:Lfr/testudo/spacecorsair/business/player/PlayerShip;

    invoke-interface {v0, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 189
    iget-object v0, p0, Lfr/testudo/spacecorsair/game/levels/Level;->elements:Ljava/util/List;

    sget-object v2, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v2, v2, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->playerShip:Lfr/testudo/spacecorsair/business/player/PlayerShip;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 190
    iput-boolean v1, p0, Lfr/testudo/spacecorsair/game/levels/Level;->requestPlayerMooveToQueueEnd:Z

    .line 194
    :cond_109
    return-void
.end method

.method public countEnemiesInLevel()I
    .registers 5

    .prologue
    const/4 v0, 0x0

    .line 610
    .line 611
    iget-object v1, p0, Lfr/testudo/spacecorsair/game/levels/Level;->elements:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    move v2, v0

    move v1, v0

    .line 612
    :goto_9
    if-ge v2, v3, :cond_1e

    .line 614
    iget-object v0, p0, Lfr/testudo/spacecorsair/game/levels/Level;->elements:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfr/testudo/spacecorsair/business/Element;

    .line 615
    instance-of v0, v0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    if-eqz v0, :cond_1f

    .line 616
    add-int/lit8 v0, v1, 0x1

    .line 612
    :goto_19
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    move v1, v0

    goto :goto_9

    .line 619
    :cond_1e
    return v1

    :cond_1f
    move v0, v1

    goto :goto_19
.end method

.method public disableAllPortals()V
    .registers 2

    .prologue
    .line 447
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lfr/testudo/spacecorsair/game/levels/Level;->tooglePortal(Z)V

    .line 448
    return-void
.end method

.method public enableAllPortals()V
    .registers 2

    .prologue
    .line 452
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lfr/testudo/spacecorsair/game/levels/Level;->tooglePortal(Z)V

    .line 453
    return-void
.end method

.method public enableColisionDistanceDetectionOverride(I)V
    .registers 3

    .prologue
    .line 77
    const/4 v0, 0x1

    iput-boolean v0, p0, Lfr/testudo/spacecorsair/game/levels/Level;->overrideNearbyDistance:Z

    .line 78
    iput p1, p0, Lfr/testudo/spacecorsair/game/levels/Level;->nearbyDistanceOverrideValue:I

    .line 79
    return-void
.end method

.method public findClosestAsteroidInRange(FFI)Lfr/testudo/spacecorsair/business/world/Asteroid;
    .registers 11

    .prologue
    .line 490
    iget-object v0, p0, Lfr/testudo/spacecorsair/game/levels/Level;->tempVector:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v0, p1, p2}, Lfr/testudo/spacecorsair/engine/Vector2;->set(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 491
    int-to-float v3, p3

    .line 493
    const/4 v1, 0x0

    .line 496
    iget-object v0, p0, Lfr/testudo/spacecorsair/game/levels/Level;->elements:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    .line 497
    const/4 v0, 0x0

    move v4, v0

    :goto_f
    if-ge v4, v5, :cond_36

    .line 499
    iget-object v0, p0, Lfr/testudo/spacecorsair/game/levels/Level;->elements:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfr/testudo/spacecorsair/business/Element;

    .line 500
    instance-of v2, v0, Lfr/testudo/spacecorsair/business/world/Asteroid;

    if-eqz v2, :cond_37

    iget-boolean v2, v0, Lfr/testudo/spacecorsair/business/Element;->removed:Z

    if-nez v2, :cond_37

    .line 502
    iget-object v2, v0, Lfr/testudo/spacecorsair/business/Element;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget-object v6, p0, Lfr/testudo/spacecorsair/game/levels/Level;->tempVector:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v2, v6}, Lfr/testudo/spacecorsair/engine/Vector2;->distance(Lfr/testudo/spacecorsair/engine/Vector2;)F

    move-result v2

    .line 503
    cmpg-float v6, v2, v3

    if-gtz v6, :cond_37

    .line 504
    check-cast v0, Lfr/testudo/spacecorsair/business/world/Asteroid;

    move v1, v2

    .line 497
    :goto_30
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    move v3, v1

    move-object v1, v0

    goto :goto_f

    .line 513
    :cond_36
    return-object v1

    :cond_37
    move-object v0, v1

    move v1, v3

    goto :goto_30
.end method

.method public findClosestAsteroidInRange(Lfr/testudo/spacecorsair/engine/Vector2;I)Lfr/testudo/spacecorsair/business/world/Asteroid;
    .registers 5

    .prologue
    .line 485
    iget v0, p1, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    iget v1, p1, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    invoke-virtual {p0, v0, v1, p2}, Lfr/testudo/spacecorsair/game/levels/Level;->findClosestAsteroidInRange(FFI)Lfr/testudo/spacecorsair/business/world/Asteroid;

    move-result-object v0

    return-object v0
.end method

.method public findClosestPortal(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/business/world/Portal;
    .registers 10

    .prologue
    .line 575
    const/4 v3, 0x0

    .line 576
    const v2, 0x501502f9    # 1.0E10f

    .line 577
    iget-object v0, p0, Lfr/testudo/spacecorsair/game/levels/Level;->elements:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    .line 578
    const/4 v0, 0x0

    move v4, v0

    :goto_c
    if-ge v4, v5, :cond_33

    .line 580
    iget-object v0, p0, Lfr/testudo/spacecorsair/game/levels/Level;->elements:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfr/testudo/spacecorsair/business/Element;

    .line 581
    instance-of v1, v0, Lfr/testudo/spacecorsair/business/world/Portal;

    if-eqz v1, :cond_34

    .line 582
    iget-object v1, v0, Lfr/testudo/spacecorsair/business/Element;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {p1, v1}, Lfr/testudo/spacecorsair/engine/Vector2;->distance(Lfr/testudo/spacecorsair/engine/Vector2;)F

    move-result v1

    .line 583
    check-cast v0, Lfr/testudo/spacecorsair/business/world/Portal;

    .line 584
    cmpg-float v6, v1, v2

    if-gez v6, :cond_34

    iget-boolean v6, v0, Lfr/testudo/spacecorsair/business/world/Portal;->hidden:Z

    if-nez v6, :cond_34

    move v7, v1

    move-object v1, v0

    move v0, v7

    .line 578
    :goto_2d
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    move-object v3, v1

    move v2, v0

    goto :goto_c

    .line 591
    :cond_33
    return-object v3

    :cond_34
    move v0, v2

    move-object v1, v3

    goto :goto_2d
.end method

.method public findPortalByName(Ljava/lang/String;)Lfr/testudo/spacecorsair/business/world/Portal;
    .registers 8

    .prologue
    const/4 v2, 0x0

    .line 260
    if-nez p1, :cond_5

    move-object v1, v2

    .line 280
    :cond_4
    :goto_4
    return-object v1

    .line 263
    :cond_5
    iget-object v0, p0, Lfr/testudo/spacecorsair/game/levels/Level;->elements:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    .line 265
    const/4 v0, 0x0

    move v3, v0

    :goto_d
    if-ge v3, v4, :cond_3a

    .line 266
    iget-object v0, p0, Lfr/testudo/spacecorsair/game/levels/Level;->elements:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfr/testudo/spacecorsair/business/Element;

    .line 267
    instance-of v1, v0, Lfr/testudo/spacecorsair/business/world/Portal;

    if-eqz v1, :cond_26

    move-object v1, v0

    .line 268
    check-cast v1, Lfr/testudo/spacecorsair/business/world/Portal;

    .line 269
    iget-object v5, v1, Lfr/testudo/spacecorsair/business/world/Portal;->portalName:Ljava/lang/String;

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 273
    :cond_26
    instance-of v1, v0, Lfr/testudo/spacecorsair/business/world/LockedPortal;

    if-eqz v1, :cond_36

    .line 274
    check-cast v0, Lfr/testudo/spacecorsair/business/world/LockedPortal;

    .line 275
    iget-object v1, v0, Lfr/testudo/spacecorsair/business/world/LockedPortal;->originalName:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_36

    move-object v1, v0

    .line 276
    goto :goto_4

    .line 265
    :cond_36
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_d

    :cond_3a
    move-object v1, v2

    .line 280
    goto :goto_4
.end method

.method public findStationByName(Ljava/lang/String;)Lfr/testudo/spacecorsair/business/world/station/Station;
    .registers 7

    .prologue
    const/4 v1, 0x0

    .line 285
    if-nez p1, :cond_5

    move-object v0, v1

    .line 299
    :cond_4
    :goto_4
    return-object v0

    .line 288
    :cond_5
    iget-object v0, p0, Lfr/testudo/spacecorsair/game/levels/Level;->elements:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    .line 290
    const/4 v0, 0x0

    move v2, v0

    :goto_d
    if-ge v2, v3, :cond_29

    .line 291
    iget-object v0, p0, Lfr/testudo/spacecorsair/game/levels/Level;->elements:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfr/testudo/spacecorsair/business/Element;

    .line 292
    instance-of v4, v0, Lfr/testudo/spacecorsair/business/world/station/Station;

    if-eqz v4, :cond_25

    .line 293
    check-cast v0, Lfr/testudo/spacecorsair/business/world/station/Station;

    .line 294
    iget-object v4, v0, Lfr/testudo/spacecorsair/business/world/station/Station;->name:Ljava/lang/String;

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 290
    :cond_25
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_d

    :cond_29
    move-object v0, v1

    .line 299
    goto :goto_4
.end method

.method public getElementById(Ljava/lang/Integer;)Lfr/testudo/spacecorsair/business/Element;
    .registers 3

    .prologue
    .line 685
    iget-object v0, p0, Lfr/testudo/spacecorsair/game/levels/Level;->multiplayerElementIds:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfr/testudo/spacecorsair/business/Element;

    return-object v0
.end method

.method public getRandomPlayerLocationCirclePoint(Lfr/testudo/spacecorsair/engine/Vector2;II)V
    .registers 5

    .prologue
    .line 201
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->playerShip:Lfr/testudo/spacecorsair/business/player/PlayerShip;

    iget-object v0, v0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-static {v0, p1, p2, p3}, Lfr/testudo/spacecorsair/game/levels/Level;->getRandomLocationCirclePoint(Lfr/testudo/spacecorsair/engine/Vector2;Lfr/testudo/spacecorsair/engine/Vector2;II)V

    .line 203
    return-void
.end method

.method public hasMoreThanEnnemiesAttackingTargetThan(ILfr/testudo/spacecorsair/business/Element;)Z
    .registers 10

    .prologue
    const/4 v2, 0x0

    .line 654
    if-nez p2, :cond_5

    move v0, v2

    .line 678
    :goto_4
    return v0

    .line 661
    :cond_5
    iget-object v0, p0, Lfr/testudo/spacecorsair/game/levels/Level;->elements:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    move v3, v2

    move v1, v2

    .line 662
    :goto_d
    if-ge v3, v4, :cond_49

    .line 664
    iget-object v0, p0, Lfr/testudo/spacecorsair/game/levels/Level;->elements:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfr/testudo/spacecorsair/business/Element;

    .line 665
    instance-of v5, v0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    if-eqz v5, :cond_43

    .line 666
    check-cast v0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    .line 667
    iget-object v5, v0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->attackTarget:Lfr/testudo/spacecorsair/business/Element;

    invoke-virtual {v5, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_31

    iget-object v5, v0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->currentActivity:Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;

    iget-object v5, v5, Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;->kind:Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity$type;

    sget-object v6, Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity$type;->RANDOM_CIVIL_ATTACK:Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity$type;

    invoke-virtual {v5, v6}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity$type;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3d

    :cond_31
    iget-object v0, v0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->currentActivity:Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;

    iget-object v0, v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;->kind:Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity$type;

    sget-object v5, Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity$type;->ATTACK_TARGET:Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity$type;

    invoke-virtual {v0, v5}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity$type;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_43

    .line 668
    :cond_3d
    add-int/lit8 v0, v1, 0x1

    .line 669
    if-le v0, p1, :cond_44

    .line 670
    const/4 v0, 0x1

    goto :goto_4

    :cond_43
    move v0, v1

    .line 662
    :cond_44
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    move v1, v0

    goto :goto_d

    :cond_49
    move v0, v2

    .line 678
    goto :goto_4
.end method

.method public isThereMoreAttackingPlayerEnemiesThan(I)Z
    .registers 8

    .prologue
    const/4 v2, 0x0

    .line 537
    iget-object v0, p0, Lfr/testudo/spacecorsair/game/levels/Level;->elements:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 541
    add-int/lit8 v0, v0, -0x1

    move v3, v0

    move v1, v2

    :goto_b
    if-ltz v3, :cond_4d

    .line 542
    iget-object v0, p0, Lfr/testudo/spacecorsair/game/levels/Level;->elements:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfr/testudo/spacecorsair/business/Element;

    .line 543
    instance-of v4, v0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    if-eqz v4, :cond_47

    iget v4, v0, Lfr/testudo/spacecorsair/business/Element;->life:F

    const/4 v5, 0x0

    cmpl-float v4, v4, v5

    if-lez v4, :cond_47

    iget-boolean v4, v0, Lfr/testudo/spacecorsair/business/Element;->removed:Z

    if-nez v4, :cond_47

    .line 544
    check-cast v0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    .line 545
    iget-object v4, v0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->attackTarget:Lfr/testudo/spacecorsair/business/Element;

    if-eqz v4, :cond_4f

    iget-object v4, v0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->attackTarget:Lfr/testudo/spacecorsair/business/Element;

    iget-boolean v4, v4, Lfr/testudo/spacecorsair/business/Element;->isPlayer:Z

    if-eqz v4, :cond_4f

    iget-object v4, v0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->currentActivity:Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;

    if-eqz v4, :cond_4f

    iget-object v0, v0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->currentActivity:Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;

    iget-object v0, v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;->kind:Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity$type;

    sget-object v4, Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity$type;->ATTACK_TARGET:Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity$type;

    invoke-virtual {v0, v4}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity$type;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4f

    .line 546
    add-int/lit8 v1, v1, 0x1

    move v0, v1

    .line 548
    :goto_43
    if-le v0, p1, :cond_48

    .line 549
    const/4 v0, 0x1

    .line 554
    :goto_46
    return v0

    :cond_47
    move v0, v1

    .line 541
    :cond_48
    add-int/lit8 v1, v3, -0x1

    move v3, v1

    move v1, v0

    goto :goto_b

    :cond_4d
    move v0, v2

    .line 554
    goto :goto_46

    :cond_4f
    move v0, v1

    goto :goto_43
.end method

.method public isThereMoreEnnemiesThan(I)Z
    .registers 8

    .prologue
    const/4 v2, 0x0

    .line 519
    iget-object v0, p0, Lfr/testudo/spacecorsair/game/levels/Level;->elements:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 523
    add-int/lit8 v0, v0, -0x1

    move v3, v0

    move v1, v2

    :goto_b
    if-ltz v3, :cond_30

    .line 524
    iget-object v0, p0, Lfr/testudo/spacecorsair/game/levels/Level;->elements:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfr/testudo/spacecorsair/business/Element;

    .line 525
    instance-of v4, v0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    if-eqz v4, :cond_2a

    iget v4, v0, Lfr/testudo/spacecorsair/business/Element;->life:F

    const/4 v5, 0x0

    cmpl-float v4, v4, v5

    if-lez v4, :cond_2a

    iget-boolean v0, v0, Lfr/testudo/spacecorsair/business/Element;->removed:Z

    if-nez v0, :cond_2a

    .line 526
    add-int/lit8 v0, v1, 0x1

    .line 527
    if-le v0, p1, :cond_2b

    .line 528
    const/4 v0, 0x1

    .line 533
    :goto_29
    return v0

    :cond_2a
    move v0, v1

    .line 523
    :cond_2b
    add-int/lit8 v1, v3, -0x1

    move v3, v1

    move v1, v0

    goto :goto_b

    :cond_30
    move v0, v2

    .line 533
    goto :goto_29
.end method

.method public isZoneEnnemyCleaned()Z
    .registers 6

    .prologue
    const/4 v1, 0x0

    .line 457
    iget-object v0, p0, Lfr/testudo/spacecorsair/game/levels/Level;->elements:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    move v2, v1

    .line 459
    :goto_8
    if-ge v2, v3, :cond_23

    .line 460
    iget-object v0, p0, Lfr/testudo/spacecorsair/game/levels/Level;->elements:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfr/testudo/spacecorsair/business/Element;

    .line 461
    instance-of v4, v0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    if-eqz v4, :cond_1f

    iget v0, v0, Lfr/testudo/spacecorsair/business/Element;->life:F

    const/4 v4, 0x0

    cmpl-float v0, v0, v4

    if-lez v0, :cond_1f

    move v0, v1

    .line 467
    :goto_1e
    return v0

    .line 459
    :cond_1f
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_8

    .line 467
    :cond_23
    const/4 v0, 0x1

    goto :goto_1e
.end method

.method public pickOneRandomCivilNotTransport()Lfr/testudo/spacecorsair/business/world/civil/CivilShip;
    .registers 7

    .prologue
    .line 631
    iget-object v0, p0, Lfr/testudo/spacecorsair/game/levels/Level;->tempCivilShips:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 634
    iget-object v0, p0, Lfr/testudo/spacecorsair/game/levels/Level;->elements:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    .line 635
    const/4 v0, 0x0

    move v1, v0

    :goto_d
    if-ge v1, v2, :cond_2a

    .line 637
    iget-object v0, p0, Lfr/testudo/spacecorsair/game/levels/Level;->elements:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfr/testudo/spacecorsair/business/Element;

    .line 638
    instance-of v3, v0, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;

    if-eqz v3, :cond_26

    instance-of v3, v0, Lfr/testudo/spacecorsair/business/world/civil/TransportCivilShip;

    if-nez v3, :cond_26

    .line 640
    iget-object v3, p0, Lfr/testudo/spacecorsair/game/levels/Level;->tempCivilShips:Ljava/util/List;

    check-cast v0, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 635
    :cond_26
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_d

    .line 644
    :cond_2a
    iget-object v0, p0, Lfr/testudo/spacecorsair/game/levels/Level;->tempCivilShips:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_34

    .line 645
    const/4 v0, 0x0

    .line 648
    :goto_33
    return-object v0

    :cond_34
    iget-object v0, p0, Lfr/testudo/spacecorsair/game/levels/Level;->tempCivilShips:Ljava/util/List;

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v2

    iget-object v1, p0, Lfr/testudo/spacecorsair/game/levels/Level;->tempCivilShips:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    int-to-double v4, v1

    mul-double/2addr v2, v4

    double-to-int v1, v2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;

    goto :goto_33
.end method

.method public placeInitialPlayerPos(Ljava/lang/String;)V
    .registers 6

    .prologue
    .line 305
    const-string v0, "VECTOR00_GATE"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 307
    invoke-direct {p0}, Lfr/testudo/spacecorsair/game/levels/Level;->placePlauerForGameBegins()V

    .line 322
    :goto_b
    return-void

    .line 311
    :cond_c
    invoke-virtual {p0, p1}, Lfr/testudo/spacecorsair/game/levels/Level;->findPortalByName(Ljava/lang/String;)Lfr/testudo/spacecorsair/business/world/Portal;

    move-result-object v0

    .line 312
    if-nez v0, :cond_37

    .line 313
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Gate "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " not found on level "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lfr/testudo/spacecorsair/game/levels/Level;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 316
    :cond_37
    sget-object v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v1, v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->playerShip:Lfr/testudo/spacecorsair/business/player/PlayerShip;

    .line 318
    iget-object v2, v1, Lfr/testudo/spacecorsair/business/player/PlayerShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget-object v3, v0, Lfr/testudo/spacecorsair/business/world/Portal;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v2, v3}, Lfr/testudo/spacecorsair/engine/Vector2;->setSameAs(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 319
    iget-object v1, v1, Lfr/testudo/spacecorsair/business/player/PlayerShip;->speed:Lfr/testudo/spacecorsair/engine/Vector2;

    iget-object v0, v0, Lfr/testudo/spacecorsair/business/world/Portal;->initialPlayerSpeed:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v1, v0}, Lfr/testudo/spacecorsair/engine/Vector2;->setSameAs(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 320
    iput-object p1, p0, Lfr/testudo/spacecorsair/game/levels/Level;->initialEnteringPortalName:Ljava/lang/String;

    goto :goto_b
.end method

.method public removeAllOf(Ljava/lang/Class;)V
    .registers 6

    .prologue
    .line 598
    iget-object v0, p0, Lfr/testudo/spacecorsair/game/levels/Level;->elements:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    .line 599
    const/4 v0, 0x0

    move v1, v0

    :goto_8
    if-ge v1, v2, :cond_1f

    .line 601
    iget-object v0, p0, Lfr/testudo/spacecorsair/game/levels/Level;->elements:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfr/testudo/spacecorsair/business/Element;

    .line 602
    invoke-virtual {p1, v0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1b

    .line 603
    invoke-virtual {v0}, Lfr/testudo/spacecorsair/business/Element;->remove()V

    .line 599
    :cond_1b
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_8

    .line 606
    :cond_1f
    return-void
.end method

.method public requestChangeLevel(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 82
    iput-object p1, p0, Lfr/testudo/spacecorsair/game/levels/Level;->nextLevelName:Ljava/lang/String;

    .line 83
    iput-object p2, p0, Lfr/testudo/spacecorsair/game/levels/Level;->nextLevelPortal:Ljava/lang/String;

    .line 84
    const/4 v0, 0x1

    iput-boolean v0, p0, Lfr/testudo/spacecorsair/game/levels/Level;->changeLevelRequested:Z

    .line 85
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->currentMission:Lfr/testudo/spacecorsair/business/mission/Mission;

    if-eqz v0, :cond_16

    .line 86
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->currentMission:Lfr/testudo/spacecorsair/business/mission/Mission;

    iget-object v0, v0, Lfr/testudo/spacecorsair/business/mission/Mission;->missionEngine:Lfr/testudo/spacecorsair/business/mission/MissionListener;

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/business/mission/MissionListener;->onBeforeJump()V

    .line 88
    :cond_16
    return-void
.end method

.method public requestLevelReinit()V
    .registers 3

    .prologue
    .line 101
    iget-object v0, p0, Lfr/testudo/spacecorsair/game/levels/Level;->id:Lfr/testudo/spacecorsair/game/levels/LevelId;

    sget-object v1, Lfr/testudo/spacecorsair/game/levels/LevelId;->GALACTIC_ARENA:Lfr/testudo/spacecorsair/game/levels/LevelId;

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/game/levels/LevelId;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 102
    invoke-direct {p0}, Lfr/testudo/spacecorsair/game/levels/Level;->requestLeaveArena()V

    .line 112
    :cond_d
    :goto_d
    return-void

    .line 106
    :cond_e
    iget-boolean v0, p0, Lfr/testudo/spacecorsair/game/levels/Level;->changeLevelRequested:Z

    if-nez v0, :cond_d

    .line 107
    iget-object v0, p0, Lfr/testudo/spacecorsair/game/levels/Level;->name:Ljava/lang/String;

    iput-object v0, p0, Lfr/testudo/spacecorsair/game/levels/Level;->nextLevelName:Ljava/lang/String;

    .line 108
    iget-object v0, p0, Lfr/testudo/spacecorsair/game/levels/Level;->initialEnteringPortalName:Ljava/lang/String;

    iput-object v0, p0, Lfr/testudo/spacecorsair/game/levels/Level;->nextLevelPortal:Ljava/lang/String;

    .line 109
    const/4 v0, 0x1

    iput-boolean v0, p0, Lfr/testudo/spacecorsair/game/levels/Level;->changeLevelRequested:Z

    goto :goto_d
.end method

.method public requestPlayerGotoLastPosOfElements()V
    .registers 2

    .prologue
    .line 72
    const/4 v0, 0x1

    iput-boolean v0, p0, Lfr/testudo/spacecorsair/game/levels/Level;->requestPlayerMooveToQueueEnd:Z

    .line 73
    return-void
.end method

.method public reset()V
    .registers 6

    .prologue
    const/4 v4, 0x1

    const/4 v1, 0x0

    .line 335
    iget-object v0, p0, Lfr/testudo/spacecorsair/game/levels/Level;->elements:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    move v2, v1

    .line 336
    :goto_9
    if-ge v2, v3, :cond_1c

    .line 337
    iget-object v0, p0, Lfr/testudo/spacecorsair/game/levels/Level;->elements:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfr/testudo/spacecorsair/business/Element;

    .line 338
    iput-boolean v4, v0, Lfr/testudo/spacecorsair/business/Element;->removed:Z

    .line 339
    invoke-virtual {v0}, Lfr/testudo/spacecorsair/business/Element;->recycleToPool()V

    .line 336
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_9

    .line 342
    :cond_1c
    iget-object v0, p0, Lfr/testudo/spacecorsair/game/levels/Level;->toDelete:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    move v2, v1

    .line 343
    :goto_23
    if-ge v2, v3, :cond_36

    .line 344
    iget-object v0, p0, Lfr/testudo/spacecorsair/game/levels/Level;->toDelete:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfr/testudo/spacecorsair/business/Element;

    .line 345
    iput-boolean v4, v0, Lfr/testudo/spacecorsair/business/Element;->removed:Z

    .line 346
    invoke-virtual {v0}, Lfr/testudo/spacecorsair/business/Element;->recycleToPool()V

    .line 343
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_23

    .line 349
    :cond_36
    iget-object v0, p0, Lfr/testudo/spacecorsair/game/levels/Level;->toAdd:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    move v2, v1

    .line 350
    :goto_3d
    if-ge v2, v3, :cond_50

    .line 351
    iget-object v0, p0, Lfr/testudo/spacecorsair/game/levels/Level;->toAdd:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfr/testudo/spacecorsair/business/Element;

    .line 352
    iput-boolean v4, v0, Lfr/testudo/spacecorsair/business/Element;->removed:Z

    .line 353
    invoke-virtual {v0}, Lfr/testudo/spacecorsair/business/Element;->recycleToPool()V

    .line 350
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_3d

    .line 356
    :cond_50
    iget-object v0, p0, Lfr/testudo/spacecorsair/game/levels/Level;->toAddDrawOnly:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    move v2, v1

    .line 357
    :goto_57
    if-ge v2, v3, :cond_6a

    .line 358
    iget-object v0, p0, Lfr/testudo/spacecorsair/game/levels/Level;->toAddDrawOnly:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfr/testudo/spacecorsair/business/Element;

    .line 359
    iput-boolean v4, v0, Lfr/testudo/spacecorsair/business/Element;->removed:Z

    .line 360
    invoke-virtual {v0}, Lfr/testudo/spacecorsair/business/Element;->recycleToPool()V

    .line 357
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_57

    .line 363
    :cond_6a
    iget-object v0, p0, Lfr/testudo/spacecorsair/game/levels/Level;->toDeleteDrawOnly:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    move v2, v1

    .line 364
    :goto_71
    if-ge v2, v3, :cond_84

    .line 365
    iget-object v0, p0, Lfr/testudo/spacecorsair/game/levels/Level;->toDeleteDrawOnly:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfr/testudo/spacecorsair/business/Element;

    .line 366
    iput-boolean v4, v0, Lfr/testudo/spacecorsair/business/Element;->removed:Z

    .line 367
    invoke-virtual {v0}, Lfr/testudo/spacecorsair/business/Element;->recycleToPool()V

    .line 364
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_71

    .line 370
    :cond_84
    iget-object v0, p0, Lfr/testudo/spacecorsair/game/levels/Level;->drawOnlyelements:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    move v2, v1

    .line 371
    :goto_8b
    if-ge v2, v3, :cond_9e

    .line 372
    iget-object v0, p0, Lfr/testudo/spacecorsair/game/levels/Level;->drawOnlyelements:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfr/testudo/spacecorsair/business/Element;

    .line 373
    iput-boolean v4, v0, Lfr/testudo/spacecorsair/business/Element;->removed:Z

    .line 374
    invoke-virtual {v0}, Lfr/testudo/spacecorsair/business/Element;->recycleToPool()V

    .line 371
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_8b

    .line 377
    :cond_9e
    iget-object v0, p0, Lfr/testudo/spacecorsair/game/levels/Level;->toAddAnimated:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    move v2, v1

    .line 378
    :goto_a5
    if-ge v2, v3, :cond_b6

    .line 379
    iget-object v0, p0, Lfr/testudo/spacecorsair/game/levels/Level;->toAddAnimated:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfr/testudo/spacecorsair/display/AnimatedDrawable;

    .line 380
    invoke-virtual {v0}, Lfr/testudo/spacecorsair/display/AnimatedDrawable;->recycleToPool()V

    .line 378
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_a5

    .line 383
    :cond_b6
    iget-object v0, p0, Lfr/testudo/spacecorsair/game/levels/Level;->toDeleteAnimated:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    move v2, v1

    .line 384
    :goto_bd
    if-ge v2, v3, :cond_ce

    .line 385
    iget-object v0, p0, Lfr/testudo/spacecorsair/game/levels/Level;->toDeleteAnimated:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfr/testudo/spacecorsair/display/AnimatedDrawable;

    .line 386
    invoke-virtual {v0}, Lfr/testudo/spacecorsair/display/AnimatedDrawable;->recycleToPool()V

    .line 384
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_bd

    .line 389
    :cond_ce
    iget-object v0, p0, Lfr/testudo/spacecorsair/game/levels/Level;->backgroundDrawableObjects:[Lfr/testudo/spacecorsair/business/world/BackgroundDrawableObject;

    if-eqz v0, :cond_e2

    .line 391
    iget-object v0, p0, Lfr/testudo/spacecorsair/game/levels/Level;->backgroundDrawableObjects:[Lfr/testudo/spacecorsair/business/world/BackgroundDrawableObject;

    array-length v2, v0

    move v0, v1

    .line 392
    :goto_d6
    if-ge v0, v2, :cond_e2

    .line 393
    iget-object v1, p0, Lfr/testudo/spacecorsair/game/levels/Level;->backgroundDrawableObjects:[Lfr/testudo/spacecorsair/business/world/BackgroundDrawableObject;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lfr/testudo/spacecorsair/business/world/BackgroundDrawableObject;->recycleToPool()V

    .line 392
    add-int/lit8 v0, v0, 0x1

    goto :goto_d6

    .line 399
    :cond_e2
    iget-object v0, p0, Lfr/testudo/spacecorsair/game/levels/Level;->toAdd:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 400
    iget-object v0, p0, Lfr/testudo/spacecorsair/game/levels/Level;->toDelete:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 401
    iget-object v0, p0, Lfr/testudo/spacecorsair/game/levels/Level;->toDeleteAnimated:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 402
    iget-object v0, p0, Lfr/testudo/spacecorsair/game/levels/Level;->toAddAnimated:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 403
    iget-object v0, p0, Lfr/testudo/spacecorsair/game/levels/Level;->toDeleteDrawOnly:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 404
    iget-object v0, p0, Lfr/testudo/spacecorsair/game/levels/Level;->drawOnlyelements:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 405
    iget-object v0, p0, Lfr/testudo/spacecorsair/game/levels/Level;->elements:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 406
    iget-object v0, p0, Lfr/testudo/spacecorsair/game/levels/Level;->toAddDrawOnly:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 407
    iget-object v0, p0, Lfr/testudo/spacecorsair/game/levels/Level;->multiplayerElementIds:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 409
    return-void
.end method
