.class public Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;
.super Lfr/testudo/spacecorsair/business/world/civil/CivilShip;
.source "SourceFile"


# static fields
.field public static COLIDE_POINT_COUNT:I = 0x0

.field public static final GAZ_TEXTURE_COUNT:I = 0x3

.field public static final SHOCKWAVE_MINI_DISTANCE:I = 0x15e

.field public static final TIME_BETWEEN_SHOCKWAVE:I = 0x5dc

.field public static colidePoints:[Lfr/testudo/spacecorsair/engine/ColidePoint; = null

.field public static drawable:Lfr/testudo/spacecorsair/display/Drawable; = null

.field public static drawableDim:Lfr/testudo/spacecorsair/engine/Vector2; = null

.field public static drawableGazDimension:Lfr/testudo/spacecorsair/engine/Vector2; = null

.field public static drawableTourelle:Lfr/testudo/spacecorsair/display/Drawable; = null

.field private static gazDrawables:[Lfr/testudo/spacecorsair/display/Drawable; = null

.field public static final maxDistanceToTarget:I = 0x384

.field public static final minDistanceToTarget:I = 0x383

.field public static physicalDim:Lfr/testudo/spacecorsair/engine/Vector2; = null

.field public static final timeBetweenExplodesInMilli:I = 0xc8

.field public static final timeDestroyInMilli:I = 0x1770

.field private static final tourelleCenterPos:Lfr/testudo/spacecorsair/engine/Vector2;

.field private static final tourellePoupePos:Lfr/testudo/spacecorsair/engine/Vector2;

.field private static final tourelleProuePos:Lfr/testudo/spacecorsair/engine/Vector2;


# instance fields
.field public canonCenter:Lfr/testudo/spacecorsair/business/ennemis/EnnemisCanon;

.field public canonPoupe:Lfr/testudo/spacecorsair/business/ennemis/EnnemisCanon;

.field public canonProue:Lfr/testudo/spacecorsair/business/ennemis/EnnemisCanon;

.field public curNextExpldeTime:I

.field public cur_gaz_texture:I

.field escaping:Z

.field fixedEscapedTarget:Lfr/testudo/spacecorsair/engine/Vector2;

.field public isDestroyAnimation:Z

.field public nextShockWaveInMilli:I

.field public remainingDestroytime:I

.field private wasPlayerLootable:Z


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .prologue
    const/high16 v2, 0x43160000    # 150.0f

    const/16 v6, 0x46

    const/high16 v1, 0x44000000    # 512.0f

    const/4 v5, 0x0

    .line 30
    new-instance v0, Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-direct {v0, v1, v1}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>(FF)V

    sput-object v0, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->physicalDim:Lfr/testudo/spacecorsair/engine/Vector2;

    .line 31
    new-instance v0, Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-direct {v0, v1, v1}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>(FF)V

    sput-object v0, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->drawableDim:Lfr/testudo/spacecorsair/engine/Vector2;

    .line 33
    new-instance v0, Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-direct {v0, v2, v2}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>(FF)V

    sput-object v0, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->drawableGazDimension:Lfr/testudo/spacecorsair/engine/Vector2;

    .line 35
    new-instance v0, Lfr/testudo/spacecorsair/engine/Vector2;

    const/high16 v1, 0x40c00000    # 6.0f

    invoke-direct {v0, v5, v1}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>(FF)V

    sput-object v0, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->tourelleCenterPos:Lfr/testudo/spacecorsair/engine/Vector2;

    .line 36
    new-instance v0, Lfr/testudo/spacecorsair/engine/Vector2;

    const/high16 v1, -0x3d1a0000    # -115.0f

    invoke-direct {v0, v5, v1}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>(FF)V

    sput-object v0, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->tourelleProuePos:Lfr/testudo/spacecorsair/engine/Vector2;

    .line 37
    new-instance v0, Lfr/testudo/spacecorsair/engine/Vector2;

    const/high16 v1, 0x42e60000    # 115.0f

    invoke-direct {v0, v5, v1}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>(FF)V

    sput-object v0, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->tourellePoupePos:Lfr/testudo/spacecorsair/engine/Vector2;

    .line 59
    const/4 v0, 0x0

    sput-object v0, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->gazDrawables:[Lfr/testudo/spacecorsair/display/Drawable;

    .line 467
    const/4 v0, 0x4

    sput v0, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->COLIDE_POINT_COUNT:I

    .line 468
    sget v0, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->COLIDE_POINT_COUNT:I

    new-array v0, v0, [Lfr/testudo/spacecorsair/engine/ColidePoint;

    sput-object v0, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->colidePoints:[Lfr/testudo/spacecorsair/engine/ColidePoint;

    .line 471
    sget-object v0, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->colidePoints:[Lfr/testudo/spacecorsair/engine/ColidePoint;

    const/4 v1, 0x0

    new-instance v2, Lfr/testudo/spacecorsair/engine/ColidePoint;

    new-instance v3, Lfr/testudo/spacecorsair/engine/Vector2;

    const/high16 v4, -0x3ccc0000    # -180.0f

    invoke-direct {v3, v5, v4}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>(FF)V

    invoke-direct {v2, v3, v6}, Lfr/testudo/spacecorsair/engine/ColidePoint;-><init>(Lfr/testudo/spacecorsair/engine/Vector2;I)V

    aput-object v2, v0, v1

    .line 472
    sget-object v0, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->colidePoints:[Lfr/testudo/spacecorsair/engine/ColidePoint;

    const/4 v1, 0x1

    new-instance v2, Lfr/testudo/spacecorsair/engine/ColidePoint;

    new-instance v3, Lfr/testudo/spacecorsair/engine/Vector2;

    const/high16 v4, -0x3d900000    # -60.0f

    invoke-direct {v3, v5, v4}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>(FF)V

    invoke-direct {v2, v3, v6}, Lfr/testudo/spacecorsair/engine/ColidePoint;-><init>(Lfr/testudo/spacecorsair/engine/Vector2;I)V

    aput-object v2, v0, v1

    .line 473
    sget-object v0, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->colidePoints:[Lfr/testudo/spacecorsair/engine/ColidePoint;

    const/4 v1, 0x2

    new-instance v2, Lfr/testudo/spacecorsair/engine/ColidePoint;

    new-instance v3, Lfr/testudo/spacecorsair/engine/Vector2;

    const/high16 v4, 0x41f00000    # 30.0f

    invoke-direct {v3, v5, v4}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>(FF)V

    invoke-direct {v2, v3, v6}, Lfr/testudo/spacecorsair/engine/ColidePoint;-><init>(Lfr/testudo/spacecorsair/engine/Vector2;I)V

    aput-object v2, v0, v1

    .line 474
    sget-object v0, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->colidePoints:[Lfr/testudo/spacecorsair/engine/ColidePoint;

    const/4 v1, 0x3

    new-instance v2, Lfr/testudo/spacecorsair/engine/ColidePoint;

    new-instance v3, Lfr/testudo/spacecorsair/engine/Vector2;

    const/high16 v4, 0x43110000    # 145.0f

    invoke-direct {v3, v5, v4}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>(FF)V

    const/16 v4, 0x96

    invoke-direct {v2, v3, v4}, Lfr/testudo/spacecorsair/engine/ColidePoint;-><init>(Lfr/testudo/spacecorsair/engine/Vector2;I)V

    aput-object v2, v0, v1

    .line 476
    return-void
.end method

.method public constructor <init>()V
    .registers 6

    .prologue
    const/high16 v4, 0x3f400000    # 0.75f

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 84
    invoke-direct {p0}, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;-><init>()V

    .line 38
    new-instance v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisCanon;

    sget-object v1, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->tourelleCenterPos:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-direct {v0, v1, p0}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisCanon;-><init>(Lfr/testudo/spacecorsair/engine/Vector2;Lfr/testudo/spacecorsair/business/Element;)V

    iput-object v0, p0, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->canonCenter:Lfr/testudo/spacecorsair/business/ennemis/EnnemisCanon;

    .line 39
    new-instance v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisCanon;

    sget-object v1, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->tourelleProuePos:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-direct {v0, v1, p0}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisCanon;-><init>(Lfr/testudo/spacecorsair/engine/Vector2;Lfr/testudo/spacecorsair/business/Element;)V

    iput-object v0, p0, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->canonProue:Lfr/testudo/spacecorsair/business/ennemis/EnnemisCanon;

    .line 40
    new-instance v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisCanon;

    sget-object v1, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->tourellePoupePos:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-direct {v0, v1, p0}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisCanon;-><init>(Lfr/testudo/spacecorsair/engine/Vector2;Lfr/testudo/spacecorsair/business/Element;)V

    iput-object v0, p0, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->canonPoupe:Lfr/testudo/spacecorsair/business/ennemis/EnnemisCanon;

    .line 153
    iput-boolean v2, p0, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->escaping:Z

    .line 154
    new-instance v0, Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-direct {v0, v3, v3}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>(FF)V

    iput-object v0, p0, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->fixedEscapedTarget:Lfr/testudo/spacecorsair/engine/Vector2;

    .line 267
    const/4 v0, -0x1

    iput v0, p0, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->curNextExpldeTime:I

    .line 271
    iput v2, p0, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->remainingDestroytime:I

    .line 274
    iput-boolean v2, p0, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->wasPlayerLootable:Z

    .line 367
    iput v2, p0, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->cur_gaz_texture:I

    .line 85
    new-instance v0, Lfr/testudo/spacecorsair/engine/Vector2;

    sget-object v1, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->drawableDim:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v1, v1, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    neg-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    const/high16 v2, 0x40a00000    # 5.0f

    sub-float/2addr v1, v2

    invoke-direct {v0, v3, v1}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>(FF)V

    sget-object v1, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->drawableDim:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v1, v1, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    float-to-int v1, v1

    add-int/lit8 v1, v1, -0x28

    const/16 v2, 0xf

    invoke-static {v0, v1, v2}, Lfr/testudo/spacecorsair/display/hud/InfoBarEnnemis;->newGreen(Lfr/testudo/spacecorsair/engine/Vector2;II)Lfr/testudo/spacecorsair/display/hud/InfoBarEnnemis;

    move-result-object v0

    iput-object v0, p0, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->lifeBar:Lfr/testudo/spacecorsair/display/hud/InfoBarEnnemis;

    .line 86
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->lifeBar:Lfr/testudo/spacecorsair/display/hud/InfoBarEnnemis;

    iput v4, v0, Lfr/testudo/spacecorsair/display/hud/InfoBarEnnemis;->extR:F

    .line 87
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->lifeBar:Lfr/testudo/spacecorsair/display/hud/InfoBarEnnemis;

    iput v4, v0, Lfr/testudo/spacecorsair/display/hud/InfoBarEnnemis;->extG:F

    .line 88
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->lifeBar:Lfr/testudo/spacecorsair/display/hud/InfoBarEnnemis;

    iput v4, v0, Lfr/testudo/spacecorsair/display/hud/InfoBarEnnemis;->extB:F

    .line 90
    const/4 v0, 0x1

    iput-boolean v0, p0, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->disableCollisionForBigShip:Z

    .line 92
    return-void
.end method

.method private requestMissileShot()V
    .registers 5

    .prologue
    .line 257
    iget-wide v0, p0, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->currentMissileReload:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_9

    .line 264
    :goto_8
    return-void

    .line 261
    :cond_9
    const/16 v0, 0x1e

    invoke-direct {p0, v0}, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->shootMissile(I)V

    .line 262
    const/16 v0, -0x1e

    invoke-direct {p0, v0}, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->shootMissile(I)V

    goto :goto_8
.end method

.method public static setGazTextures(Lfr/testudo/spacecorsair/display/Texture;Lfr/testudo/spacecorsair/display/Texture;Lfr/testudo/spacecorsair/display/Texture;)V
    .registers 7

    .prologue
    .line 63
    const/4 v0, 0x3

    new-array v0, v0, [Lfr/testudo/spacecorsair/display/Drawable;

    const/4 v1, 0x0

    new-instance v2, Lfr/testudo/spacecorsair/display/Drawable;

    sget-object v3, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->drawableGazDimension:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-direct {v2, v3, p0}, Lfr/testudo/spacecorsair/display/Drawable;-><init>(Lfr/testudo/spacecorsair/engine/Vector2;Lfr/testudo/spacecorsair/display/Texture;)V

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-instance v2, Lfr/testudo/spacecorsair/display/Drawable;

    sget-object v3, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->drawableGazDimension:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-direct {v2, v3, p1}, Lfr/testudo/spacecorsair/display/Drawable;-><init>(Lfr/testudo/spacecorsair/engine/Vector2;Lfr/testudo/spacecorsair/display/Texture;)V

    aput-object v2, v0, v1

    const/4 v1, 0x2

    new-instance v2, Lfr/testudo/spacecorsair/display/Drawable;

    sget-object v3, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->drawableGazDimension:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-direct {v2, v3, p2}, Lfr/testudo/spacecorsair/display/Drawable;-><init>(Lfr/testudo/spacecorsair/engine/Vector2;Lfr/testudo/spacecorsair/display/Texture;)V

    aput-object v2, v0, v1

    sput-object v0, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->gazDrawables:[Lfr/testudo/spacecorsair/display/Drawable;

    .line 70
    return-void
.end method

.method public static setTexture(Lfr/testudo/spacecorsair/display/Texture;Lfr/testudo/spacecorsair/display/Texture;)V
    .registers 4

    .prologue
    .line 54
    new-instance v0, Lfr/testudo/spacecorsair/display/Drawable;

    sget-object v1, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->drawableDim:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-direct {v0, v1, p0}, Lfr/testudo/spacecorsair/display/Drawable;-><init>(Lfr/testudo/spacecorsair/engine/Vector2;Lfr/testudo/spacecorsair/display/Texture;)V

    sput-object v0, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->drawable:Lfr/testudo/spacecorsair/display/Drawable;

    .line 55
    new-instance v0, Lfr/testudo/spacecorsair/display/Drawable;

    sget-object v1, Lfr/testudo/spacecorsair/engine/Vector2;->VECTOR_64:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-direct {v0, v1, p1}, Lfr/testudo/spacecorsair/display/Drawable;-><init>(Lfr/testudo/spacecorsair/engine/Vector2;Lfr/testudo/spacecorsair/display/Texture;)V

    sput-object v0, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->drawableTourelle:Lfr/testudo/spacecorsair/display/Drawable;

    .line 57
    return-void
.end method

.method private shootMissile(I)V
    .registers 7

    .prologue
    const/4 v4, 0x0

    .line 233
    iget v0, p0, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->missileCount:I

    if-gtz v0, :cond_6

    .line 253
    :goto_5
    return-void

    .line 237
    :cond_6
    invoke-static {}, Lfr/testudo/spacecorsair/business/factory/GamePools;->newMissile()Lfr/testudo/spacecorsair/business/projectiles/Missile;

    move-result-object v0

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->missileSpec:Lfr/testudo/spacecorsair/business/loot/stuff/missile/MissileSpec;

    iget-object v2, p0, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->chasseTarget:Lfr/testudo/spacecorsair/business/Element;

    invoke-virtual {v0, v1, p0, v2}, Lfr/testudo/spacecorsair/business/projectiles/Missile;->initWithSpecs(Lfr/testudo/spacecorsair/business/loot/stuff/missile/MissileSpec;Lfr/testudo/spacecorsair/business/Element;Lfr/testudo/spacecorsair/business/Element;)Lfr/testudo/spacecorsair/business/projectiles/Missile;

    move-result-object v0

    .line 238
    iget-object v1, p0, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->tempVector:Lfr/testudo/spacecorsair/engine/Vector2;

    const/high16 v2, -0x3cb80000    # -200.0f

    invoke-virtual {v1, v4, v2}, Lfr/testudo/spacecorsair/engine/Vector2;->set(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 240
    iget v1, p0, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->spin:F

    float-to-double v2, v1

    invoke-static {v2, v3}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v2

    .line 241
    iget-object v1, p0, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->tempVector:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v1, v2, v3}, Lfr/testudo/spacecorsair/engine/Vector2;->applyRotatation(D)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 242
    iget-object v1, v0, Lfr/testudo/spacecorsair/business/projectiles/Missile;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget-object v2, p0, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v1, v2}, Lfr/testudo/spacecorsair/engine/Vector2;->setSameAs(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    move-result-object v1

    iget-object v2, p0, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->tempVector:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v1, v2}, Lfr/testudo/spacecorsair/engine/Vector2;->add(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 243
    iget-object v1, v0, Lfr/testudo/spacecorsair/business/projectiles/Missile;->speed:Lfr/testudo/spacecorsair/engine/Vector2;

    const/high16 v2, -0x3fc00000    # -3.0f

    invoke-virtual {v1, v4, v2}, Lfr/testudo/spacecorsair/engine/Vector2;->set(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 244
    const/16 v1, 0x4b0

    iput v1, v0, Lfr/testudo/spacecorsair/business/projectiles/Missile;->timeAllume:I

    .line 246
    iget-object v1, v0, Lfr/testudo/spacecorsair/business/projectiles/Missile;->speed:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v2, p0, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->spin:F

    int-to-float v3, p1

    add-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lfr/testudo/spacecorsair/engine/Vector2;->applyRotatation(D)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 247
    iget-object v1, v0, Lfr/testudo/spacecorsair/business/projectiles/Missile;->speed:Lfr/testudo/spacecorsair/engine/Vector2;

    iget-object v2, p0, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->speed:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v1, v2}, Lfr/testudo/spacecorsair/engine/Vector2;->add(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 248
    iget v1, p0, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->spin:F

    int-to-float v2, p1

    add-float/2addr v1, v2

    iput v1, v0, Lfr/testudo/spacecorsair/business/projectiles/Missile;->spin:F

    .line 250
    sget-object v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v1, v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v1, v1, Lfr/testudo/spacecorsair/game/Game;->currentLevel:Lfr/testudo/spacecorsair/game/levels/Level;

    iget-object v1, v1, Lfr/testudo/spacecorsair/game/levels/Level;->toAdd:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 251
    iget-wide v0, p0, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->missileReloadTimeInMilli:J

    long-to-float v0, v0

    iget v1, p0, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->alterationReloadValue:F

    mul-float/2addr v0, v1

    float-to-long v0, v0

    iput-wide v0, p0, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->currentMissileReload:J

    .line 252
    iget v0, p0, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->missileCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->missileCount:I

    goto :goto_5
.end method


# virtual methods
.method public addRandomExplode()V
    .registers 13

    .prologue
    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    .line 331
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v0

    sget v2, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->COLIDE_POINT_COUNT:I

    int-to-double v2, v2

    mul-double/2addr v0, v2

    double-to-int v0, v0

    .line 333
    sget-object v1, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->colidePoints:[Lfr/testudo/spacecorsair/engine/ColidePoint;

    aget-object v1, v1, v0

    iget v1, v1, Lfr/testudo/spacecorsair/engine/ColidePoint;->size:I

    int-to-double v2, v1

    const-wide v4, 0x3fe6666666666666L    # 0.7

    mul-double/2addr v2, v4

    double-to-int v1, v2

    .line 335
    iget-object v2, p0, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->tempVector:Lfr/testudo/spacecorsair/engine/Vector2;

    sget-object v3, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->colidePoints:[Lfr/testudo/spacecorsair/engine/ColidePoint;

    aget-object v0, v3, v0

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ColidePoint;->point:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v2, v0}, Lfr/testudo/spacecorsair/engine/Vector2;->setSameAs(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 336
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->tempVector:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v2, v0, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    float-to-double v2, v2

    neg-int v4, v1

    int-to-double v4, v4

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v6

    mul-double/2addr v6, v10

    int-to-double v8, v1

    mul-double/2addr v6, v8

    add-double/2addr v4, v6

    add-double/2addr v2, v4

    double-to-float v2, v2

    iput v2, v0, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    .line 337
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->tempVector:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v2, v0, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    float-to-double v2, v2

    neg-int v4, v1

    int-to-double v4, v4

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v6

    mul-double/2addr v6, v10

    int-to-double v8, v1

    mul-double/2addr v6, v8

    add-double/2addr v4, v6

    add-double/2addr v2, v4

    double-to-float v1, v2

    iput v1, v0, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    .line 338
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->tempVector:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v1, p0, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->spin:F

    float-to-double v2, v1

    invoke-static {v2, v3}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lfr/testudo/spacecorsair/engine/Vector2;->applyRotatation(D)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 339
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->tempVector:Lfr/testudo/spacecorsair/engine/Vector2;

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/engine/Vector2;->add(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 342
    invoke-static {}, Lfr/testudo/spacecorsair/business/factory/GamePools;->newRandomExplode()Lfr/testudo/spacecorsair/display/ExplosionAnim;

    move-result-object v0

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->tempVector:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v0, v1, p0}, Lfr/testudo/spacecorsair/display/ExplosionAnim;->init(Lfr/testudo/spacecorsair/engine/Vector2;Lfr/testudo/spacecorsair/business/Element;)Lfr/testudo/spacecorsair/display/ExplosionAnim;

    move-result-object v0

    .line 343
    sget-object v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v1, v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v1, v1, Lfr/testudo/spacecorsair/game/Game;->currentLevel:Lfr/testudo/spacecorsair/game/levels/Level;

    iget-object v1, v1, Lfr/testudo/spacecorsair/game/levels/Level;->toAddAnimated:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 344
    return-void
.end method

.method public doChasse(JZ)V
    .registers 13

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    const/high16 v5, 0x44610000    # 900.0f

    const v4, 0x4460c000    # 899.0f

    .line 175
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->canonPoupe:Lfr/testudo/spacecorsair/business/ennemis/EnnemisCanon;

    invoke-virtual {v0, p1, p2}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisCanon;->doPhysic(J)V

    .line 176
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->canonPoupe:Lfr/testudo/spacecorsair/business/ennemis/EnnemisCanon;

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisCanon;->doIa()V

    .line 178
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->canonProue:Lfr/testudo/spacecorsair/business/ennemis/EnnemisCanon;

    invoke-virtual {v0, p1, p2}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisCanon;->doPhysic(J)V

    .line 179
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->canonProue:Lfr/testudo/spacecorsair/business/ennemis/EnnemisCanon;

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisCanon;->doIa()V

    .line 181
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->canonCenter:Lfr/testudo/spacecorsair/business/ennemis/EnnemisCanon;

    invoke-virtual {v0, p1, p2}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisCanon;->doPhysic(J)V

    .line 182
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->canonCenter:Lfr/testudo/spacecorsair/business/ennemis/EnnemisCanon;

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisCanon;->doIa()V

    .line 184
    iget-wide v0, p0, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->currentMissileReload:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_32

    .line 185
    iget-wide v0, p0, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->currentMissileReload:J

    sub-long/2addr v0, p1

    iput-wide v0, p0, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->currentMissileReload:J

    .line 189
    :cond_32
    iget v0, p0, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->distanceToTarget:F

    iget v1, p0, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->distanceShoot:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_49

    .line 190
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->canonPoupe:Lfr/testudo/spacecorsair/business/ennemis/EnnemisCanon;

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisCanon;->requestShoot()V

    .line 191
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->canonProue:Lfr/testudo/spacecorsair/business/ennemis/EnnemisCanon;

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisCanon;->requestShoot()V

    .line 192
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->canonCenter:Lfr/testudo/spacecorsair/business/ennemis/EnnemisCanon;

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisCanon;->requestShoot()V

    .line 196
    :cond_49
    iget v0, p0, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->distanceToTarget:F

    iget-wide v2, p0, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->miniDistanceForMissile:J

    long-to-float v1, v2

    cmpl-float v0, v0, v1

    if-lez v0, :cond_55

    .line 197
    invoke-direct {p0}, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->requestMissileShot()V

    .line 200
    :cond_55
    if-eqz p3, :cond_58

    .line 229
    :cond_57
    :goto_57
    return-void

    .line 205
    :cond_58
    iget v0, p0, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->distanceToTarget:F

    cmpl-float v0, v0, v4

    if-lez v0, :cond_8e

    iget v0, p0, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->distanceToTarget:F

    cmpg-float v0, v0, v5

    if-gez v0, :cond_8e

    .line 207
    iput-boolean v6, p0, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->escaping:Z

    .line 208
    iput-boolean v6, p0, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->isPousee:Z

    .line 209
    const/4 v0, 0x0

    iput v0, p0, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->spinSpeed:F

    .line 215
    :goto_6b
    iget v0, p0, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->distanceToTarget:F

    cmpg-float v0, v0, v4

    if-gez v0, :cond_80

    .line 216
    iget-boolean v0, p0, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->escaping:Z

    if-nez v0, :cond_91

    .line 217
    iput-boolean v7, p0, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->escaping:Z

    .line 218
    const-wide/16 v0, 0x384

    iget-object v2, p0, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget-object v3, p0, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->fixedEscapedTarget:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-static {v0, v1, v2, v3}, Lfr/testudo/spacecorsair/business/Util;->getNewRandomTarget(JLfr/testudo/spacecorsair/engine/Vector2;Lfr/testudo/spacecorsair/engine/Vector2;)V

    .line 224
    :cond_80
    :goto_80
    iget v0, p0, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->distanceToTarget:F

    cmpl-float v0, v0, v5

    if-lez v0, :cond_57

    .line 226
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->chasseTarget:Lfr/testudo/spacecorsair/business/Element;

    iget-object v0, v0, Lfr/testudo/spacecorsair/business/Element;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-super {p0, v0}, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->alignToPoint(Lfr/testudo/spacecorsair/engine/Vector2;)Z

    goto :goto_57

    .line 211
    :cond_8e
    iput-boolean v7, p0, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->isPousee:Z

    goto :goto_6b

    .line 220
    :cond_91
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->fixedEscapedTarget:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {p0, v0}, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->alignToPoint(Lfr/testudo/spacecorsair/engine/Vector2;)Z

    goto :goto_80
.end method

.method public doPhysic(J)V
    .registers 8

    .prologue
    const/16 v3, 0x5dc

    .line 300
    invoke-super {p0, p1, p2}, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->doPhysic(J)V

    .line 302
    iget-boolean v0, p0, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->isDestroyAnimation:Z

    if-eqz v0, :cond_2c

    .line 303
    iget v0, p0, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->curNextExpldeTime:I

    int-to-long v0, v0

    sub-long/2addr v0, p1

    long-to-int v0, v0

    iput v0, p0, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->curNextExpldeTime:I

    .line 304
    iget v0, p0, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->remainingDestroytime:I

    int-to-long v0, v0

    sub-long/2addr v0, p1

    long-to-int v0, v0

    iput v0, p0, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->remainingDestroytime:I

    .line 305
    iget v0, p0, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->remainingDestroytime:I

    if-gtz v0, :cond_21

    .line 306
    const/4 v0, 0x0

    iput-boolean v0, p0, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->isDestroyAnimation:Z

    .line 307
    invoke-virtual {p0}, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->realDestroy()V

    .line 309
    :cond_21
    iget v0, p0, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->curNextExpldeTime:I

    if-gez v0, :cond_2c

    .line 310
    invoke-virtual {p0}, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->addRandomExplode()V

    .line 311
    const/16 v0, 0xc8

    iput v0, p0, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->curNextExpldeTime:I

    .line 316
    :cond_2c
    iget-boolean v0, p0, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->removed:Z

    if-nez v0, :cond_5b

    iget-boolean v0, p0, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->isDestroyAnimation:Z

    if-nez v0, :cond_5b

    iget v0, p0, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->distanceToPlayer:F

    const/high16 v1, 0x43af0000    # 350.0f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_5b

    iget-object v0, p0, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->chasseTarget:Lfr/testudo/spacecorsair/business/Element;

    sget-object v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v1, v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->playerShip:Lfr/testudo/spacecorsair/business/player/PlayerShip;

    if-ne v0, v1, :cond_5b

    .line 318
    iget v0, p0, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->nextShockWaveInMilli:I

    int-to-long v0, v0

    sub-long/2addr v0, p1

    long-to-int v0, v0

    iput v0, p0, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->nextShockWaveInMilli:I

    .line 319
    iget v0, p0, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->nextShockWaveInMilli:I

    if-gtz v0, :cond_5a

    .line 320
    const/16 v0, 0x12c

    const/16 v1, 0x3e8

    const/16 v2, 0x320

    invoke-static {p0, v0, v1, v2}, Lfr/testudo/spacecorsair/business/Util;->applyShockWaveOnPlayer(Lfr/testudo/spacecorsair/business/Element;III)V

    .line 321
    iput v3, p0, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->nextShockWaveInMilli:I

    .line 328
    :cond_5a
    :goto_5a
    return-void

    .line 326
    :cond_5b
    iput v3, p0, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->nextShockWaveInMilli:I

    goto :goto_5a
.end method

.method public getDrawableObject()Lfr/testudo/spacecorsair/display/Drawable;
    .registers 2

    .prologue
    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModCapitals;->drawable(Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;)Lfr/testudo/spacecorsair/display/Drawable;
    move-result-object v0
    if-eqz v0, :mod_cap_d
    return-object v0
    :mod_cap_d
    .line 74
    sget-object v0, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->drawable:Lfr/testudo/spacecorsair/display/Drawable;

    return-object v0
.end method

.method public getMiniDrawableObject()Lfr/testudo/spacecorsair/display/Drawable;
    .registers 2

    .prologue
    .line 49
    const/4 v0, 0x0

    return-object v0
.end method

.method public getPhysicDimension()Lfr/testudo/spacecorsair/engine/Vector2;
    .registers 2

    .prologue
    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModCapitals;->physic(Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;)Lfr/testudo/spacecorsair/engine/Vector2;
    move-result-object v0
    if-eqz v0, :mod_cap_p
    return-object v0
    :mod_cap_p
    .line 79
    sget-object v0, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->physicalDim:Lfr/testudo/spacecorsair/engine/Vector2;

    return-object v0
.end method

.method public initLevelConfig(Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;I)Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;
    .registers 11

    .prologue
    const/4 v6, 0x1

    const/high16 v4, 0x41500000    # 13.0f

    const v2, 0x3fa66666    # 1.3f

    const/high16 v5, 0x3f000000    # 0.5f

    const/4 v3, 0x5

    .line 96
    invoke-super {p0, p2}, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->init(I)Lfr/testudo/spacecorsair/business/world/civil/CivilShip;

    .line 98
    iput-boolean v6, p0, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->disableCollisionForBigShip:Z

    .line 100
    iget v0, p1, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->life:I

    int-to-float v0, v0

    iput v0, p0, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->maxLife:F

    .line 101
    iget v0, p1, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->life:I

    int-to-float v0, v0

    iput v0, p0, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->life:F

    .line 102
    iget v0, p1, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->xp:I

    iput v0, p0, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->xp:I

    .line 103
    iget v0, p1, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->shootReload:I

    int-to-long v0, v0

    iput-wide v0, p0, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->milleSecBetweenShots:J

    .line 104
    iget v0, p1, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->shootDamage:I

    int-to-float v0, v0

    iput v0, p0, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->bulletDamage:F

    .line 105
    iget v0, p1, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->missileCount:I

    iput v0, p0, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->missileCount:I

    .line 106
    iget v0, p1, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->missileReloadTime:I

    int-to-long v0, v0

    iput-wide v0, p0, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->missileReloadTimeInMilli:J

    .line 107
    iget v0, p1, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->missileReloadTime:I

    int-to-long v0, v0

    iput-wide v0, p0, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->currentMissileReload:J

    .line 108
    iget v0, p1, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->missileMinDistance:I

    int-to-long v0, v0

    iput-wide v0, p0, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->miniDistanceForMissile:J

    .line 109
    iget-object v0, p1, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->lootConfig:Lfr/testudo/spacecorsair/business/loot/LootConfig;

    iput-object v0, p0, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->lootConfig:Lfr/testudo/spacecorsair/business/loot/LootConfig;

    .line 110
    iget v0, p1, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->maxTurnFactor:F

    iput v0, p0, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->maxTurnFactor:F

    .line 111
    iget-object v0, p1, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->missileSpec:Lfr/testudo/spacecorsair/business/loot/stuff/missile/MissileSpec;

    iput-object v0, p0, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->missileSpec:Lfr/testudo/spacecorsair/business/loot/stuff/missile/MissileSpec;

    .line 113
    const/high16 v0, 0x457a0000    # 4000.0f

    iput v0, p0, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->distanceShoot:F

    .line 114
    const v0, 0x44548000    # 850.0f

    iput v0, p0, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->mass:F

    .line 115
    const v0, 0x3dcccccd    # 0.1f

    iput v0, p0, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->pouseeForce:F

    .line 116
    const v0, 0x3dcccccd    # 0.1f

    iput v0, p0, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->maxPouseeForce:F

    .line 117
    const v0, 0x3f8147ae    # 1.01f

    iput v0, p0, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->speedDeperditionfactor:F

    .line 118
    const/high16 v0, 0x41000000    # 8.0f

    iput v0, p0, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->shootPrecision:F

    .line 120
    const/4 v0, 0x0

    iput-boolean v0, p0, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->isDestroyAnimation:Z

    .line 122
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->lifeBar:Lfr/testudo/spacecorsair/display/hud/InfoBarEnnemis;

    const/high16 v1, 0x42c80000    # 100.0f

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/display/hud/InfoBarEnnemis;->setValue(F)V

    .line 124
    iput-boolean v6, p0, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->drawOnRadar:Z

    .line 125
    const/high16 v0, 0x40c00000    # 6.0f

    iput v0, p0, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->radarPointSize:F

    .line 126
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->radarColorG:F

    .line 127
    const v0, 0x3ecccccd    # 0.4f

    iput v0, p0, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->radarColorR:F

    .line 128
    const v0, 0x3ecccccd    # 0.4f

    iput v0, p0, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->radarColorB:F

    .line 129
    const v0, 0x466a6000    # 15000.0f

    iput v0, p0, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->distanceToPlayer:F

    .line 131
    sget-object v0, Lfr/testudo/spacecorsair/business/world/civil/CivilState;->IDLE:Lfr/testudo/spacecorsair/business/world/civil/CivilState;

    iput-object v0, p0, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->curState:Lfr/testudo/spacecorsair/business/world/civil/CivilState;

    .line 132
    iget v0, p1, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->antiMissileCount:I

    iput v0, p0, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->antiMissileCount:I

    .line 134
    iput-boolean v6, p0, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->isPousee:Z

    .line 136
    const/4 v0, 0x0

    iput-boolean v0, p0, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->escaping:Z

    .line 138
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->canonPoupe:Lfr/testudo/spacecorsair/business/ennemis/EnnemisCanon;

    iput v2, v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisCanon;->maxSpinSpeed:F

    .line 139
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->canonProue:Lfr/testudo/spacecorsair/business/ennemis/EnnemisCanon;

    iput v2, v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisCanon;->maxSpinSpeed:F

    .line 140
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->canonCenter:Lfr/testudo/spacecorsair/business/ennemis/EnnemisCanon;

    iput v2, v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisCanon;->maxSpinSpeed:F

    .line 143
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->canonCenter:Lfr/testudo/spacecorsair/business/ennemis/EnnemisCanon;

    iget v1, p1, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->shootReload:I

    iget v2, p1, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->shootDamage:I

    const/4 v7, 0x3

    move v6, v3

    invoke-virtual/range {v0 .. v7}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisCanon;->init(IIIFFII)Lfr/testudo/spacecorsair/business/ennemis/EnnemisCanon;

    .line 144
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->canonProue:Lfr/testudo/spacecorsair/business/ennemis/EnnemisCanon;

    iget v1, p1, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->shootReload:I

    iget v2, p1, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->shootDamage:I

    const/4 v7, 0x3

    move v6, v3

    invoke-virtual/range {v0 .. v7}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisCanon;->init(IIIFFII)Lfr/testudo/spacecorsair/business/ennemis/EnnemisCanon;

    .line 145
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->canonPoupe:Lfr/testudo/spacecorsair/business/ennemis/EnnemisCanon;

    iget v1, p1, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->shootReload:I

    iget v2, p1, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->shootDamage:I

    const/4 v7, 0x3

    move v6, v3

    invoke-virtual/range {v0 .. v7}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisCanon;->init(IIIFFII)Lfr/testudo/spacecorsair/business/ennemis/EnnemisCanon;

    .line 147
    return-object p0
.end method

.method public onChaseStart()V
    .registers 3

    .prologue
    .line 161
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->canonPoupe:Lfr/testudo/spacecorsair/business/ennemis/EnnemisCanon;

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->chasseTarget:Lfr/testudo/spacecorsair/business/Element;

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisCanon;->initChasseTarget(Lfr/testudo/spacecorsair/business/Element;)V

    .line 162
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->canonProue:Lfr/testudo/spacecorsair/business/ennemis/EnnemisCanon;

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->chasseTarget:Lfr/testudo/spacecorsair/business/Element;

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisCanon;->initChasseTarget(Lfr/testudo/spacecorsair/business/Element;)V

    .line 163
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->canonCenter:Lfr/testudo/spacecorsair/business/ennemis/EnnemisCanon;

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->chasseTarget:Lfr/testudo/spacecorsair/business/Element;

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisCanon;->initChasseTarget(Lfr/testudo/spacecorsair/business/Element;)V

    .line 164
    return-void
.end method

.method public onChaseStop()V
    .registers 2

    .prologue
    .line 168
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->canonPoupe:Lfr/testudo/spacecorsair/business/ennemis/EnnemisCanon;

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisCanon;->initReset()V

    .line 169
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->canonProue:Lfr/testudo/spacecorsair/business/ennemis/EnnemisCanon;

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisCanon;->initReset()V

    .line 170
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->canonCenter:Lfr/testudo/spacecorsair/business/ennemis/EnnemisCanon;

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisCanon;->initReset()V

    .line 171
    return-void
.end method

.method public onDestroyed(Z)V
    .registers 4

    .prologue
    .line 278
    iget-boolean v0, p0, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->isDestroyAnimation:Z

    if-eqz v0, :cond_5

    .line 296
    :goto_4
    return-void

    .line 282
    :cond_5
    iput-boolean p1, p0, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->wasPlayerLootable:Z

    .line 284
    const/4 v0, 0x0

    iput-boolean v0, p0, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->isPousee:Z

    .line 285
    const/16 v0, 0x1770

    iput v0, p0, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->remainingDestroytime:I

    .line 286
    const/16 v0, 0xc8

    iput v0, p0, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->curNextExpldeTime:I

    .line 287
    const/4 v0, 0x1

    iput-boolean v0, p0, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->isDestroyAnimation:Z

    .line 289
    invoke-static {}, Lfr/testudo/spacecorsair/business/factory/GamePools;->newRandomExplode()Lfr/testudo/spacecorsair/display/ExplosionAnim;

    move-result-object v0

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v0, v1, p0}, Lfr/testudo/spacecorsair/display/ExplosionAnim;->init(Lfr/testudo/spacecorsair/engine/Vector2;Lfr/testudo/spacecorsair/business/Element;)Lfr/testudo/spacecorsair/display/ExplosionAnim;

    move-result-object v0

    .line 290
    sget-object v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v1, v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v1, v1, Lfr/testudo/spacecorsair/game/Game;->currentLevel:Lfr/testudo/spacecorsair/game/levels/Level;

    iget-object v1, v1, Lfr/testudo/spacecorsair/game/levels/Level;->toAddAnimated:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 292
    const/16 v0, 0xa

    invoke-static {p0, v0}, Lfr/testudo/spacecorsair/display/ParticuleFactory;->addWhite(Lfr/testudo/spacecorsair/business/Element;I)V

    .line 293
    const/4 v0, 0x4

    invoke-static {p0, v0}, Lfr/testudo/spacecorsair/display/ParticuleFactory;->addRed(Lfr/testudo/spacecorsair/business/Element;I)V

    .line 294
    const/4 v0, 0x3

    invoke-static {p0, v0}, Lfr/testudo/spacecorsair/display/ParticuleFactory;->addYellow(Lfr/testudo/spacecorsair/business/Element;I)V

    goto :goto_4
.end method

.method public pruneColide(Lfr/testudo/spacecorsair/business/Element;)Z
    .registers 11

    .prologue
    invoke-static {p0, p1}, Lfr/testudo/spacecorsair/mod/ModCapitals;->prune(Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;Lfr/testudo/spacecorsair/business/Element;)I
    move-result v0
    if-ltz v0, :mod_cap_c
    return v0
    :mod_cap_c
    const/4 v1, 0x0

    .line 482
    iget v0, p0, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->spin:F

    float-to-double v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v2

    move v0, v1

    .line 485
    :goto_9
    sget v4, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->COLIDE_POINT_COUNT:I

    if-ge v0, v4, :cond_4b

    .line 487
    iget-object v4, p0, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->tempVector:Lfr/testudo/spacecorsair/engine/Vector2;

    sget-object v5, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->colidePoints:[Lfr/testudo/spacecorsair/engine/ColidePoint;

    aget-object v5, v5, v0

    iget-object v5, v5, Lfr/testudo/spacecorsair/engine/ColidePoint;->point:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v4, v5}, Lfr/testudo/spacecorsair/engine/Vector2;->setSameAs(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 488
    iget-object v4, p0, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->tempVector:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v4, v2, v3}, Lfr/testudo/spacecorsair/engine/Vector2;->applyRotatation(D)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 489
    iget-object v4, p0, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->tempVector:Lfr/testudo/spacecorsair/engine/Vector2;

    iget-object v5, p0, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v4, v5}, Lfr/testudo/spacecorsair/engine/Vector2;->add(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 491
    iget-object v4, p0, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->tempVector:Lfr/testudo/spacecorsair/engine/Vector2;

    iget-object v5, p1, Lfr/testudo/spacecorsair/business/Element;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v4, v5}, Lfr/testudo/spacecorsair/engine/Vector2;->distance2(Lfr/testudo/spacecorsair/engine/Vector2;)F

    move-result v4

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    .line 492
    sget-object v6, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->colidePoints:[Lfr/testudo/spacecorsair/engine/ColidePoint;

    aget-object v6, v6, v0

    iget v6, v6, Lfr/testudo/spacecorsair/engine/ColidePoint;->size:I

    int-to-float v6, v6

    invoke-virtual {p1}, Lfr/testudo/spacecorsair/business/Element;->getPhysicDimension()Lfr/testudo/spacecorsair/engine/Vector2;

    move-result-object v7

    iget v7, v7, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    const/high16 v8, 0x40000000    # 2.0f

    div-float/2addr v7, v8

    add-float/2addr v6, v7

    float-to-double v6, v6

    sub-double/2addr v4, v6

    .line 494
    const-wide/16 v6, 0x0

    cmpg-double v4, v4, v6

    if-gtz v4, :cond_4c

    .line 495
    const/4 v1, 0x1

    .line 500
    :cond_4b
    return v1

    .line 485
    :cond_4c
    add-int/lit8 v0, v0, 0x1

    goto :goto_9
.end method

.method public realDestroy()V
    .registers 6

    .prologue
    const/16 v1, 0x9

    .line 352
    iget-boolean v0, p0, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->wasPlayerLootable:Z

    invoke-super {p0, v0}, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->onDestroyed(Z)V

    .line 354
    const/16 v0, 0xf

    invoke-static {p0, v0}, Lfr/testudo/spacecorsair/display/ParticuleFactory;->addWhite(Lfr/testudo/spacecorsair/business/Element;I)V

    .line 355
    invoke-static {p0, v1}, Lfr/testudo/spacecorsair/display/ParticuleFactory;->addRed(Lfr/testudo/spacecorsair/business/Element;I)V

    .line 356
    invoke-static {p0, v1}, Lfr/testudo/spacecorsair/display/ParticuleFactory;->addYellow(Lfr/testudo/spacecorsair/business/Element;I)V

    .line 358
    invoke-static {}, Lfr/testudo/spacecorsair/business/factory/GamePools;->newShockWave()Lfr/testudo/spacecorsair/display/ShockWave;

    move-result-object v0

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    const/high16 v2, 0x42c80000    # 100.0f

    const v3, 0x44228000    # 650.0f

    const v4, 0x443b8000    # 750.0f

    invoke-virtual {v0, v1, v2, v3, v4}, Lfr/testudo/spacecorsair/display/ShockWave;->init(Lfr/testudo/spacecorsair/engine/Vector2;FFF)Lfr/testudo/spacecorsair/display/ShockWave;

    move-result-object v0

    .line 359
    sget-object v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v1, v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v1, v1, Lfr/testudo/spacecorsair/game/Game;->currentLevel:Lfr/testudo/spacecorsair/game/levels/Level;

    iget-object v1, v1, Lfr/testudo/spacecorsair/game/levels/Level;->toAddDrawOnly:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 361
    return-void
.end method

.method public registerYourselfToDrawQueue()V
    .registers 13

    .prologue
    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModCapitals;->draw(Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;)Z
    move-result v0
    if-eqz v0, :mod_cap_r
    return-void
    :mod_cap_r
    .line 373
    invoke-super {p0}, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->registerYourselfToDrawQueue()V

    .line 376
    iget v0, p0, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->spin:F

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v10

    .line 380
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->tempVector:Lfr/testudo/spacecorsair/engine/Vector2;

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->canonCenter:Lfr/testudo/spacecorsair/business/ennemis/EnnemisCanon;

    iget-object v1, v1, Lfr/testudo/spacecorsair/business/ennemis/EnnemisCanon;->shipPosition:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/engine/Vector2;->setSameAs(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 381
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->tempVector:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v0, v10, v11}, Lfr/testudo/spacecorsair/engine/Vector2;->applyRotatation(D)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 382
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->tempVector:Lfr/testudo/spacecorsair/engine/Vector2;

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/engine/Vector2;->add(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 384
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->renderQueue:Lfr/testudo/spacecorsair/engine/RenderQueue;

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->tempVector:Lfr/testudo/spacecorsair/engine/Vector2;

    iget-boolean v2, p0, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->cameraRelative:Z

    sget-object v3, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->drawableTourelle:Lfr/testudo/spacecorsair/display/Drawable;

    iget v4, p0, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->spin:F

    iget-object v5, p0, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->canonCenter:Lfr/testudo/spacecorsair/business/ennemis/EnnemisCanon;

    iget v5, v5, Lfr/testudo/spacecorsair/business/ennemis/EnnemisCanon;->currentDeltaSpinWithShip:F

    sub-float/2addr v4, v5

    iget v5, p0, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->a:F

    const/high16 v6, 0x3f800000    # 1.0f

    const v7, 0x3f333333    # 0.7f

    const v8, 0x3f333333    # 0.7f

    invoke-virtual/range {v0 .. v8}, Lfr/testudo/spacecorsair/engine/RenderQueue;->addToWaitingQueue(Lfr/testudo/spacecorsair/engine/Vector2;ZLfr/testudo/spacecorsair/display/Drawable;FFFFF)V

    .line 390
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->tempVector:Lfr/testudo/spacecorsair/engine/Vector2;

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->canonProue:Lfr/testudo/spacecorsair/business/ennemis/EnnemisCanon;

    iget-object v1, v1, Lfr/testudo/spacecorsair/business/ennemis/EnnemisCanon;->shipPosition:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/engine/Vector2;->setSameAs(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 391
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->tempVector:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v0, v10, v11}, Lfr/testudo/spacecorsair/engine/Vector2;->applyRotatation(D)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 392
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->tempVector:Lfr/testudo/spacecorsair/engine/Vector2;

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/engine/Vector2;->add(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 394
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->renderQueue:Lfr/testudo/spacecorsair/engine/RenderQueue;

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->tempVector:Lfr/testudo/spacecorsair/engine/Vector2;

    iget-boolean v2, p0, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->cameraRelative:Z

    sget-object v3, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->drawableTourelle:Lfr/testudo/spacecorsair/display/Drawable;

    iget v4, p0, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->spin:F

    iget-object v5, p0, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->canonProue:Lfr/testudo/spacecorsair/business/ennemis/EnnemisCanon;

    iget v5, v5, Lfr/testudo/spacecorsair/business/ennemis/EnnemisCanon;->currentDeltaSpinWithShip:F

    sub-float/2addr v4, v5

    iget v5, p0, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->a:F

    const/high16 v6, 0x3f800000    # 1.0f

    const v7, 0x3f333333    # 0.7f

    const v8, 0x3f333333    # 0.7f

    invoke-virtual/range {v0 .. v8}, Lfr/testudo/spacecorsair/engine/RenderQueue;->addToWaitingQueue(Lfr/testudo/spacecorsair/engine/Vector2;ZLfr/testudo/spacecorsair/display/Drawable;FFFFF)V

    .line 400
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->tempVector:Lfr/testudo/spacecorsair/engine/Vector2;

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->canonPoupe:Lfr/testudo/spacecorsair/business/ennemis/EnnemisCanon;

    iget-object v1, v1, Lfr/testudo/spacecorsair/business/ennemis/EnnemisCanon;->shipPosition:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/engine/Vector2;->setSameAs(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 401
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->tempVector:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v0, v10, v11}, Lfr/testudo/spacecorsair/engine/Vector2;->applyRotatation(D)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 402
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->tempVector:Lfr/testudo/spacecorsair/engine/Vector2;

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/engine/Vector2;->add(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 404
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->renderQueue:Lfr/testudo/spacecorsair/engine/RenderQueue;

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->tempVector:Lfr/testudo/spacecorsair/engine/Vector2;

    iget-boolean v2, p0, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->cameraRelative:Z

    sget-object v3, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->drawableTourelle:Lfr/testudo/spacecorsair/display/Drawable;

    iget v4, p0, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->spin:F

    iget-object v5, p0, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->canonPoupe:Lfr/testudo/spacecorsair/business/ennemis/EnnemisCanon;

    iget v5, v5, Lfr/testudo/spacecorsair/business/ennemis/EnnemisCanon;->currentDeltaSpinWithShip:F

    sub-float/2addr v4, v5

    iget v5, p0, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->a:F

    const/high16 v6, 0x3f800000    # 1.0f

    const v7, 0x3f333333    # 0.7f

    const v8, 0x3f333333    # 0.7f

    invoke-virtual/range {v0 .. v8}, Lfr/testudo/spacecorsair/engine/RenderQueue;->addToWaitingQueue(Lfr/testudo/spacecorsair/engine/Vector2;ZLfr/testudo/spacecorsair/display/Drawable;FFFFF)V

    .line 413
    iget-boolean v0, p0, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->isPousee:Z

    if-eqz v0, :cond_117

    .line 415
    iget v0, p0, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->cur_gaz_texture:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->cur_gaz_texture:I

    .line 416
    iget v0, p0, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->cur_gaz_texture:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_b5

    .line 417
    const/4 v0, 0x0

    iput v0, p0, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->cur_gaz_texture:I

    .line 420
    :cond_b5
    const/high16 v5, 0x3f800000    # 1.0f

    .line 423
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->tempVector:Lfr/testudo/spacecorsair/engine/Vector2;

    const/high16 v1, -0x3e900000    # -15.0f

    const/high16 v2, 0x43660000    # 230.0f

    invoke-virtual {v0, v1, v2}, Lfr/testudo/spacecorsair/engine/Vector2;->set(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    move-result-object v0

    iget v1, p0, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->spin:F

    float-to-double v2, v1

    invoke-static {v2, v3}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lfr/testudo/spacecorsair/engine/Vector2;->applyRotatation(D)Lfr/testudo/spacecorsair/engine/Vector2;

    move-result-object v0

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/engine/Vector2;->add(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 425
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->renderQueue:Lfr/testudo/spacecorsair/engine/RenderQueue;

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->tempVector:Lfr/testudo/spacecorsair/engine/Vector2;

    const/4 v2, 0x0

    sget-object v3, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->gazDrawables:[Lfr/testudo/spacecorsair/display/Drawable;

    iget v4, p0, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->cur_gaz_texture:I

    aget-object v3, v3, v4

    iget v4, p0, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->spin:F

    const/high16 v6, 0x40000000    # 2.0f

    add-float/2addr v4, v6

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Lfr/testudo/spacecorsair/engine/RenderQueue;->addToWaitingQueue(Lfr/testudo/spacecorsair/engine/Vector2;ZLfr/testudo/spacecorsair/display/Drawable;FFZ)V

    .line 429
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->tempVector:Lfr/testudo/spacecorsair/engine/Vector2;

    const/high16 v1, 0x41700000    # 15.0f

    const/high16 v2, 0x43660000    # 230.0f

    invoke-virtual {v0, v1, v2}, Lfr/testudo/spacecorsair/engine/Vector2;->set(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    move-result-object v0

    iget v1, p0, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->spin:F

    float-to-double v2, v1

    invoke-static {v2, v3}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lfr/testudo/spacecorsair/engine/Vector2;->applyRotatation(D)Lfr/testudo/spacecorsair/engine/Vector2;

    move-result-object v0

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/engine/Vector2;->add(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 430
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->renderQueue:Lfr/testudo/spacecorsair/engine/RenderQueue;

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->tempVector:Lfr/testudo/spacecorsair/engine/Vector2;

    const/4 v2, 0x0

    sget-object v3, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->gazDrawables:[Lfr/testudo/spacecorsair/display/Drawable;

    iget v4, p0, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->cur_gaz_texture:I

    aget-object v3, v3, v4

    iget v4, p0, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->spin:F

    const/high16 v6, 0x40000000    # 2.0f

    sub-float/2addr v4, v6

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Lfr/testudo/spacecorsair/engine/RenderQueue;->addToWaitingQueue(Lfr/testudo/spacecorsair/engine/Vector2;ZLfr/testudo/spacecorsair/display/Drawable;FFZ)V

    .line 440
    :cond_117
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->tempVector:Lfr/testudo/spacecorsair/engine/Vector2;

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/engine/Vector2;->setSameAs(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 441
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->tempVector:Lfr/testudo/spacecorsair/engine/Vector2;

    sget-object v1, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->drawable:Lfr/testudo/spacecorsair/display/Drawable;

    iget-object v1, v1, Lfr/testudo/spacecorsair/display/Drawable;->dimensions:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v1, v1, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    neg-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    const/high16 v2, 0x41200000    # 10.0f

    sub-float/2addr v1, v2

    sget-object v2, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->drawable:Lfr/testudo/spacecorsair/display/Drawable;

    iget-object v2, v2, Lfr/testudo/spacecorsair/display/Drawable;->dimensions:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v2, v2, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    const/high16 v3, 0x41400000    # 12.0f

    add-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Lfr/testudo/spacecorsair/engine/Vector2;->add(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 442
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->renderQueue:Lfr/testudo/spacecorsair/engine/RenderQueue;

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->tempVector:Lfr/testudo/spacecorsair/engine/Vector2;

    const/4 v2, 0x0

    iget-object v3, p0, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->levelStr:Ljava/lang/String;

    iget v4, p0, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->levelColorR:F

    iget v5, p0, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->levelColorG:F

    iget v6, p0, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->levelColorB:F

    const/high16 v7, 0x3f800000    # 1.0f

    sget-object v8, Lfr/testudo/spacecorsair/textengine/TextSize;->MEDIUM:Lfr/testudo/spacecorsair/textengine/TextSize;

    invoke-virtual/range {v0 .. v8}, Lfr/testudo/spacecorsair/engine/RenderQueue;->addTextToTextWaitingQueue(Lfr/testudo/spacecorsair/engine/Vector2;ZLjava/lang/String;FFFFLfr/testudo/spacecorsair/textengine/TextSize;)V

    .line 445
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->tempVector:Lfr/testudo/spacecorsair/engine/Vector2;

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/engine/Vector2;->setSameAs(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 446
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->tempVector:Lfr/testudo/spacecorsair/engine/Vector2;

    const/high16 v1, 0x41700000    # 15.0f

    const/high16 v2, 0x41f00000    # 30.0f

    invoke-virtual {v0, v1, v2}, Lfr/testudo/spacecorsair/engine/Vector2;->add(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 447
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->renderQueue:Lfr/testudo/spacecorsair/engine/RenderQueue;

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->tempVector:Lfr/testudo/spacecorsair/engine/Vector2;

    iget-object v2, p0, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->lifeBar:Lfr/testudo/spacecorsair/display/hud/InfoBarEnnemis;

    invoke-virtual {v0, v1, v2}, Lfr/testudo/spacecorsair/engine/RenderQueue;->addToWaitingQueue(Lfr/testudo/spacecorsair/engine/Vector2;Lfr/testudo/spacecorsair/display/hud/InfoBar;)V

    .line 451
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->specificName:Ljava/lang/String;

    if-eqz v0, :cond_1bd

    .line 453
    iget v0, p0, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->specificNameDecalX:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_184

    .line 454
    sget-object v0, Lfr/testudo/spacecorsair/engine/GameRenderer;->glTextMedium:Lfr/testudo/spacecorsair/textengine/GLText;

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->specificName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/textengine/GLText;->getLength(Ljava/lang/String;)F

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->specificNameDecalX:I

    .line 456
    :cond_184
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->tempVector:Lfr/testudo/spacecorsair/engine/Vector2;

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/engine/Vector2;->setSameAs(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    move-result-object v0

    iget v1, p0, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->specificNameDecalX:I

    neg-int v1, v1

    int-to-float v1, v1

    sget-object v2, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->drawable:Lfr/testudo/spacecorsair/display/Drawable;

    iget-object v2, v2, Lfr/testudo/spacecorsair/display/Drawable;->dimensions:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v2, v2, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    const/high16 v3, 0x42280000    # 42.0f

    add-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Lfr/testudo/spacecorsair/engine/Vector2;->add(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 458
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->renderQueue:Lfr/testudo/spacecorsair/engine/RenderQueue;

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->tempVector:Lfr/testudo/spacecorsair/engine/Vector2;

    const/4 v2, 0x0

    iget-object v3, p0, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->specificName:Ljava/lang/String;

    sget-object v4, Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;->GREEN:Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;

    iget v4, v4, Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;->r:F

    sget-object v5, Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;->GREEN:Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;

    iget v5, v5, Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;->g:F

    sget-object v6, Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;->GREEN:Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;

    iget v6, v6, Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;->b:F

    sget-object v7, Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;->GREEN:Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;

    iget v7, v7, Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;->a:F

    sget-object v8, Lfr/testudo/spacecorsair/textengine/TextSize;->MEDIUM:Lfr/testudo/spacecorsair/textengine/TextSize;

    invoke-virtual/range {v0 .. v8}, Lfr/testudo/spacecorsair/engine/RenderQueue;->addTextToTextWaitingQueue(Lfr/testudo/spacecorsair/engine/Vector2;ZLjava/lang/String;FFFFLfr/testudo/spacecorsair/textengine/TextSize;)V

    .line 464
    :cond_1bd
    return-void
.end method

.method public restoreDefaultPouseeForce()V
    .registers 2

    .prologue
    .line 505
    const v0, 0x3dcccccd    # 0.1f

    iput v0, p0, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->maxPouseeForce:F

    iput v0, p0, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->pouseeForce:F

    .line 506
    return-void
.end method
