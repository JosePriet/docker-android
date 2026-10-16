.class public Lfr/testudo/spacecorsair/business/ennemis/Albatros;
.super Lfr/testudo/spacecorsair/business/ennemis/Ennemis;
.source "SourceFile"


# static fields
.field public static COLIDE_POINT_COUNT:I = 0x0

.field public static final GAZ_TEXTURE_COUNT:I = 0x3

.field public static final OBJECT_NAME:Ljava/lang/String; = "Albatros"

.field public static final SHOCKWAVE_MINI_DISTANCE:I = 0x15e

.field public static final TIME_BETWEEN_SHOCKWAVE:I = 0x5dc

.field public static colidePoints:[Lfr/testudo/spacecorsair/engine/ColidePoint; = null

.field public static drawable:Lfr/testudo/spacecorsair/display/Drawable; = null

.field public static drawableDim:Lfr/testudo/spacecorsair/engine/Vector2; = null

.field public static drawableGazDimension:Lfr/testudo/spacecorsair/engine/Vector2; = null

.field public static drawableTourelle:Lfr/testudo/spacecorsair/display/Drawable; = null

.field private static gazDrawables:[Lfr/testudo/spacecorsair/display/Drawable; = null

.field public static final maxDistanceToTarget:I = 0x640

.field public static final minDistanceToTarget:I = 0x3e8

.field public static miniDrawable:Lfr/testudo/spacecorsair/display/Drawable; = null

.field public static physicalDim:Lfr/testudo/spacecorsair/engine/Vector2; = null

.field public static final timeBetweenExplodesInMilli:I = 0xc8

.field public static final timeDestroyInMilli:I = 0x1770

.field private static final tourelleCenterPos:Lfr/testudo/spacecorsair/engine/Vector2;

.field private static final tourellePoupePos:Lfr/testudo/spacecorsair/engine/Vector2;

.field private static final tourelleProuePos:Lfr/testudo/spacecorsair/engine/Vector2;


# instance fields
.field public antiMissileCount:I

.field public canonCenter:Lfr/testudo/spacecorsair/business/ennemis/EnnemisCanon;

.field public canonPoupe:Lfr/testudo/spacecorsair/business/ennemis/EnnemisCanon;

.field public canonProue:Lfr/testudo/spacecorsair/business/ennemis/EnnemisCanon;

.field public curNextExpldeTime:I

.field public cur_gaz_texture:I

.field public currentMissileReload:J

.field escaping:Z

.field public fixedTarget:Lfr/testudo/spacecorsair/engine/Vector2;

.field public isDestroyAnimation:Z

.field public miniDistanceForMissile:J

.field public missileCount:I

.field public missileReloadTimeInMilli:J

.field public missileSpec:Lfr/testudo/spacecorsair/business/loot/stuff/missile/MissileSpec;

.field public nextShockWaveInMilli:I

.field public pouseeForceAbimed:F

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

    .line 32
    new-instance v0, Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-direct {v0, v1, v1}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>(FF)V

    sput-object v0, Lfr/testudo/spacecorsair/business/ennemis/Albatros;->physicalDim:Lfr/testudo/spacecorsair/engine/Vector2;

    .line 33
    new-instance v0, Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-direct {v0, v1, v1}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>(FF)V

    sput-object v0, Lfr/testudo/spacecorsair/business/ennemis/Albatros;->drawableDim:Lfr/testudo/spacecorsair/engine/Vector2;

    .line 35
    new-instance v0, Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-direct {v0, v2, v2}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>(FF)V

    sput-object v0, Lfr/testudo/spacecorsair/business/ennemis/Albatros;->drawableGazDimension:Lfr/testudo/spacecorsair/engine/Vector2;

    .line 39
    const/4 v0, 0x4

    sput v0, Lfr/testudo/spacecorsair/business/ennemis/Albatros;->COLIDE_POINT_COUNT:I

    .line 40
    sget v0, Lfr/testudo/spacecorsair/business/ennemis/Albatros;->COLIDE_POINT_COUNT:I

    new-array v0, v0, [Lfr/testudo/spacecorsair/engine/ColidePoint;

    sput-object v0, Lfr/testudo/spacecorsair/business/ennemis/Albatros;->colidePoints:[Lfr/testudo/spacecorsair/engine/ColidePoint;

    .line 43
    sget-object v0, Lfr/testudo/spacecorsair/business/ennemis/Albatros;->colidePoints:[Lfr/testudo/spacecorsair/engine/ColidePoint;

    const/4 v1, 0x0

    new-instance v2, Lfr/testudo/spacecorsair/engine/ColidePoint;

    new-instance v3, Lfr/testudo/spacecorsair/engine/Vector2;

    const/high16 v4, -0x3ccc0000    # -180.0f

    invoke-direct {v3, v5, v4}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>(FF)V

    invoke-direct {v2, v3, v6}, Lfr/testudo/spacecorsair/engine/ColidePoint;-><init>(Lfr/testudo/spacecorsair/engine/Vector2;I)V

    aput-object v2, v0, v1

    .line 44
    sget-object v0, Lfr/testudo/spacecorsair/business/ennemis/Albatros;->colidePoints:[Lfr/testudo/spacecorsair/engine/ColidePoint;

    const/4 v1, 0x1

    new-instance v2, Lfr/testudo/spacecorsair/engine/ColidePoint;

    new-instance v3, Lfr/testudo/spacecorsair/engine/Vector2;

    const/high16 v4, -0x3d900000    # -60.0f

    invoke-direct {v3, v5, v4}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>(FF)V

    invoke-direct {v2, v3, v6}, Lfr/testudo/spacecorsair/engine/ColidePoint;-><init>(Lfr/testudo/spacecorsair/engine/Vector2;I)V

    aput-object v2, v0, v1

    .line 45
    sget-object v0, Lfr/testudo/spacecorsair/business/ennemis/Albatros;->colidePoints:[Lfr/testudo/spacecorsair/engine/ColidePoint;

    const/4 v1, 0x2

    new-instance v2, Lfr/testudo/spacecorsair/engine/ColidePoint;

    new-instance v3, Lfr/testudo/spacecorsair/engine/Vector2;

    const/high16 v4, 0x41f00000    # 30.0f

    invoke-direct {v3, v5, v4}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>(FF)V

    invoke-direct {v2, v3, v6}, Lfr/testudo/spacecorsair/engine/ColidePoint;-><init>(Lfr/testudo/spacecorsair/engine/Vector2;I)V

    aput-object v2, v0, v1

    .line 46
    sget-object v0, Lfr/testudo/spacecorsair/business/ennemis/Albatros;->colidePoints:[Lfr/testudo/spacecorsair/engine/ColidePoint;

    const/4 v1, 0x3

    new-instance v2, Lfr/testudo/spacecorsair/engine/ColidePoint;

    new-instance v3, Lfr/testudo/spacecorsair/engine/Vector2;

    const/high16 v4, 0x43110000    # 145.0f

    invoke-direct {v3, v5, v4}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>(FF)V

    const/16 v4, 0x96

    invoke-direct {v2, v3, v4}, Lfr/testudo/spacecorsair/engine/ColidePoint;-><init>(Lfr/testudo/spacecorsair/engine/Vector2;I)V

    aput-object v2, v0, v1

    .line 56
    new-instance v0, Lfr/testudo/spacecorsair/engine/Vector2;

    const/high16 v1, 0x40c00000    # 6.0f

    invoke-direct {v0, v5, v1}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>(FF)V

    sput-object v0, Lfr/testudo/spacecorsair/business/ennemis/Albatros;->tourelleCenterPos:Lfr/testudo/spacecorsair/engine/Vector2;

    .line 57
    new-instance v0, Lfr/testudo/spacecorsair/engine/Vector2;

    const/high16 v1, -0x3d1a0000    # -115.0f

    invoke-direct {v0, v5, v1}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>(FF)V

    sput-object v0, Lfr/testudo/spacecorsair/business/ennemis/Albatros;->tourelleProuePos:Lfr/testudo/spacecorsair/engine/Vector2;

    .line 58
    new-instance v0, Lfr/testudo/spacecorsair/engine/Vector2;

    const/high16 v1, 0x42e60000    # 115.0f

    invoke-direct {v0, v5, v1}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>(FF)V

    sput-object v0, Lfr/testudo/spacecorsair/business/ennemis/Albatros;->tourellePoupePos:Lfr/testudo/spacecorsair/engine/Vector2;

    .line 92
    const/4 v0, 0x0

    sput-object v0, Lfr/testudo/spacecorsair/business/ennemis/Albatros;->gazDrawables:[Lfr/testudo/spacecorsair/display/Drawable;

    return-void
.end method

.method public constructor <init>()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 119
    invoke-direct {p0}, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;-><init>()V

    .line 36
    iput v2, p0, Lfr/testudo/spacecorsair/business/ennemis/Albatros;->antiMissileCount:I

    .line 59
    new-instance v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisCanon;

    sget-object v1, Lfr/testudo/spacecorsair/business/ennemis/Albatros;->tourelleCenterPos:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-direct {v0, v1, p0}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisCanon;-><init>(Lfr/testudo/spacecorsair/engine/Vector2;Lfr/testudo/spacecorsair/business/Element;)V

    iput-object v0, p0, Lfr/testudo/spacecorsair/business/ennemis/Albatros;->canonCenter:Lfr/testudo/spacecorsair/business/ennemis/EnnemisCanon;

    .line 60
    new-instance v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisCanon;

    sget-object v1, Lfr/testudo/spacecorsair/business/ennemis/Albatros;->tourelleProuePos:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-direct {v0, v1, p0}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisCanon;-><init>(Lfr/testudo/spacecorsair/engine/Vector2;Lfr/testudo/spacecorsair/business/Element;)V

    iput-object v0, p0, Lfr/testudo/spacecorsair/business/ennemis/Albatros;->canonProue:Lfr/testudo/spacecorsair/business/ennemis/EnnemisCanon;

    .line 61
    new-instance v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisCanon;

    sget-object v1, Lfr/testudo/spacecorsair/business/ennemis/Albatros;->tourellePoupePos:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-direct {v0, v1, p0}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisCanon;-><init>(Lfr/testudo/spacecorsair/engine/Vector2;Lfr/testudo/spacecorsair/business/Element;)V

    iput-object v0, p0, Lfr/testudo/spacecorsair/business/ennemis/Albatros;->canonPoupe:Lfr/testudo/spacecorsair/business/ennemis/EnnemisCanon;

    .line 67
    iput v2, p0, Lfr/testudo/spacecorsair/business/ennemis/Albatros;->missileCount:I

    .line 68
    const-wide/16 v0, 0x7530

    iput-wide v0, p0, Lfr/testudo/spacecorsair/business/ennemis/Albatros;->missileReloadTimeInMilli:J

    .line 69
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lfr/testudo/spacecorsair/business/ennemis/Albatros;->currentMissileReload:J

    .line 70
    const-wide/16 v0, 0x3e8

    iput-wide v0, p0, Lfr/testudo/spacecorsair/business/ennemis/Albatros;->miniDistanceForMissile:J

    .line 71
    const/high16 v0, 0x3e800000    # 0.25f

    iput v0, p0, Lfr/testudo/spacecorsair/business/ennemis/Albatros;->pouseeForceAbimed:F

    .line 78
    new-instance v0, Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-direct {v0, v3, v3}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>(FF)V

    iput-object v0, p0, Lfr/testudo/spacecorsair/business/ennemis/Albatros;->fixedTarget:Lfr/testudo/spacecorsair/engine/Vector2;

    .line 343
    iput-boolean v2, p0, Lfr/testudo/spacecorsair/business/ennemis/Albatros;->escaping:Z

    .line 419
    const/4 v0, -0x1

    iput v0, p0, Lfr/testudo/spacecorsair/business/ennemis/Albatros;->curNextExpldeTime:I

    .line 423
    iput v2, p0, Lfr/testudo/spacecorsair/business/ennemis/Albatros;->remainingDestroytime:I

    .line 426
    iput-boolean v2, p0, Lfr/testudo/spacecorsair/business/ennemis/Albatros;->wasPlayerLootable:Z

    .line 507
    iput v2, p0, Lfr/testudo/spacecorsair/business/ennemis/Albatros;->cur_gaz_texture:I

    .line 120
    const-string v0, "Albatros"

    iput-object v0, p0, Lfr/testudo/spacecorsair/business/ennemis/Albatros;->objectName:Ljava/lang/String;

    .line 121
    new-instance v0, Lfr/testudo/spacecorsair/engine/Vector2;

    sget-object v1, Lfr/testudo/spacecorsair/business/ennemis/Albatros;->drawableDim:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v1, v1, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    neg-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    const/high16 v2, 0x40a00000    # 5.0f

    sub-float/2addr v1, v2

    invoke-direct {v0, v3, v1}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>(FF)V

    sget-object v1, Lfr/testudo/spacecorsair/business/ennemis/Albatros;->drawableDim:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v1, v1, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    float-to-int v1, v1

    add-int/lit8 v1, v1, -0x28

    const/16 v2, 0xf

    invoke-static {v0, v1, v2}, Lfr/testudo/spacecorsair/display/hud/InfoBarEnnemis;->newRed(Lfr/testudo/spacecorsair/engine/Vector2;II)Lfr/testudo/spacecorsair/display/hud/InfoBarEnnemis;

    move-result-object v0

    iput-object v0, p0, Lfr/testudo/spacecorsair/business/ennemis/Albatros;->lifeBar:Lfr/testudo/spacecorsair/display/hud/InfoBarEnnemis;

    .line 122
    const/4 v0, 0x1

    iput-boolean v0, p0, Lfr/testudo/spacecorsair/business/ennemis/Albatros;->disableCollisionForBigShip:Z

    .line 124
    return-void
.end method

.method private getNewRandomTarget(J)V
    .registers 14

    .prologue
    .line 350
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v0

    const-wide v2, 0x4076800000000000L    # 360.0

    mul-double/2addr v0, v2

    double-to-int v0, v0

    .line 351
    int-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v0

    .line 352
    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    .line 353
    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    .line 354
    iget-object v4, p0, Lfr/testudo/spacecorsair/business/ennemis/Albatros;->fixedTarget:Lfr/testudo/spacecorsair/engine/Vector2;

    iget-object v5, p0, Lfr/testudo/spacecorsair/business/ennemis/Albatros;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v4, v5}, Lfr/testudo/spacecorsair/engine/Vector2;->setSameAs(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 355
    iget-object v4, p0, Lfr/testudo/spacecorsair/business/ennemis/Albatros;->fixedTarget:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v5, v4, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    float-to-double v6, v5

    long-to-double v8, p1

    mul-double/2addr v2, v8

    add-double/2addr v2, v6

    double-to-float v2, v2

    iput v2, v4, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    .line 356
    iget-object v2, p0, Lfr/testudo/spacecorsair/business/ennemis/Albatros;->fixedTarget:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v3, v2, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    float-to-double v4, v3

    long-to-double v6, p1

    mul-double/2addr v0, v6

    add-double/2addr v0, v4

    double-to-float v0, v0

    iput v0, v2, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    .line 358
    return-void
.end method

.method private requestMissileShot()V
    .registers 5

    .prologue
    .line 316
    iget-wide v0, p0, Lfr/testudo/spacecorsair/business/ennemis/Albatros;->currentMissileReload:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_9

    .line 323
    :goto_8
    return-void

    .line 320
    :cond_9
    const/16 v0, 0x1e

    invoke-direct {p0, v0}, Lfr/testudo/spacecorsair/business/ennemis/Albatros;->shootMissile(I)V

    .line 321
    const/16 v0, -0x1e

    invoke-direct {p0, v0}, Lfr/testudo/spacecorsair/business/ennemis/Albatros;->shootMissile(I)V

    goto :goto_8
.end method

.method public static setGazTextures(Lfr/testudo/spacecorsair/display/Texture;Lfr/testudo/spacecorsair/display/Texture;Lfr/testudo/spacecorsair/display/Texture;)V
    .registers 7

    .prologue
    .line 96
    const/4 v0, 0x3

    new-array v0, v0, [Lfr/testudo/spacecorsair/display/Drawable;

    const/4 v1, 0x0

    new-instance v2, Lfr/testudo/spacecorsair/display/Drawable;

    sget-object v3, Lfr/testudo/spacecorsair/business/ennemis/Albatros;->drawableGazDimension:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-direct {v2, v3, p0}, Lfr/testudo/spacecorsair/display/Drawable;-><init>(Lfr/testudo/spacecorsair/engine/Vector2;Lfr/testudo/spacecorsair/display/Texture;)V

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-instance v2, Lfr/testudo/spacecorsair/display/Drawable;

    sget-object v3, Lfr/testudo/spacecorsair/business/ennemis/Albatros;->drawableGazDimension:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-direct {v2, v3, p1}, Lfr/testudo/spacecorsair/display/Drawable;-><init>(Lfr/testudo/spacecorsair/engine/Vector2;Lfr/testudo/spacecorsair/display/Texture;)V

    aput-object v2, v0, v1

    const/4 v1, 0x2

    new-instance v2, Lfr/testudo/spacecorsair/display/Drawable;

    sget-object v3, Lfr/testudo/spacecorsair/business/ennemis/Albatros;->drawableGazDimension:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-direct {v2, v3, p2}, Lfr/testudo/spacecorsair/display/Drawable;-><init>(Lfr/testudo/spacecorsair/engine/Vector2;Lfr/testudo/spacecorsair/display/Texture;)V

    aput-object v2, v0, v1

    sput-object v0, Lfr/testudo/spacecorsair/business/ennemis/Albatros;->gazDrawables:[Lfr/testudo/spacecorsair/display/Drawable;

    .line 103
    return-void
.end method

.method public static setTexture(Lfr/testudo/spacecorsair/display/Texture;Lfr/testudo/spacecorsair/display/Texture;)V
    .registers 4

    .prologue
    .line 87
    new-instance v0, Lfr/testudo/spacecorsair/display/Drawable;

    sget-object v1, Lfr/testudo/spacecorsair/business/ennemis/Albatros;->drawableDim:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-direct {v0, v1, p0}, Lfr/testudo/spacecorsair/display/Drawable;-><init>(Lfr/testudo/spacecorsair/engine/Vector2;Lfr/testudo/spacecorsair/display/Texture;)V

    sput-object v0, Lfr/testudo/spacecorsair/business/ennemis/Albatros;->drawable:Lfr/testudo/spacecorsair/display/Drawable;

    .line 88
    new-instance v0, Lfr/testudo/spacecorsair/display/Drawable;

    sget-object v1, Lfr/testudo/spacecorsair/engine/Vector2;->VECTOR_64:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-direct {v0, v1, p1}, Lfr/testudo/spacecorsair/display/Drawable;-><init>(Lfr/testudo/spacecorsair/engine/Vector2;Lfr/testudo/spacecorsair/display/Texture;)V

    sput-object v0, Lfr/testudo/spacecorsair/business/ennemis/Albatros;->drawableTourelle:Lfr/testudo/spacecorsair/display/Drawable;

    .line 90
    return-void
.end method

.method private shootMissile(I)V
    .registers 8

    .prologue
    const/high16 v5, 0x40200000    # 2.5f

    const/4 v4, 0x0

    .line 288
    iget v0, p0, Lfr/testudo/spacecorsair/business/ennemis/Albatros;->missileCount:I

    if-gtz v0, :cond_10

    iget-boolean v0, p0, Lfr/testudo/spacecorsair/business/ennemis/Albatros;->isDestroyAnimation:Z

    if-eqz v0, :cond_10

    iget-boolean v0, p0, Lfr/testudo/spacecorsair/business/ennemis/Albatros;->removed:Z

    if-eqz v0, :cond_10

    .line 312
    :goto_f
    return-void

    .line 292
    :cond_10
    invoke-static {}, Lfr/testudo/spacecorsair/business/factory/GamePools;->newMissile()Lfr/testudo/spacecorsair/business/projectiles/Missile;

    move-result-object v0

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/ennemis/Albatros;->missileSpec:Lfr/testudo/spacecorsair/business/loot/stuff/missile/MissileSpec;

    iget-object v2, p0, Lfr/testudo/spacecorsair/business/ennemis/Albatros;->attackTarget:Lfr/testudo/spacecorsair/business/Element;

    iget-object v3, p0, Lfr/testudo/spacecorsair/business/ennemis/Albatros;->specialMissileAlteration:Lfr/testudo/spacecorsair/business/loot/stuff/alteration/AlterationSpecs;

    invoke-virtual {v0, v1, p0, v2, v3}, Lfr/testudo/spacecorsair/business/projectiles/Missile;->initWithSpecs(Lfr/testudo/spacecorsair/business/loot/stuff/missile/MissileSpec;Lfr/testudo/spacecorsair/business/Element;Lfr/testudo/spacecorsair/business/Element;Lfr/testudo/spacecorsair/business/loot/stuff/alteration/AlterationSpecs;)Lfr/testudo/spacecorsair/business/projectiles/Missile;

    move-result-object v0

    .line 293
    iget-boolean v1, p0, Lfr/testudo/spacecorsair/business/ennemis/Albatros;->elite:Z

    if-eqz v1, :cond_2c

    .line 294
    iget v1, v0, Lfr/testudo/spacecorsair/business/projectiles/Missile;->damage:F

    mul-float/2addr v1, v5

    iput v1, v0, Lfr/testudo/spacecorsair/business/projectiles/Missile;->damage:F

    .line 295
    iget v1, v0, Lfr/testudo/spacecorsair/business/projectiles/Missile;->radiusDamage:F

    mul-float/2addr v1, v5

    iput v1, v0, Lfr/testudo/spacecorsair/business/projectiles/Missile;->radiusDamage:F

    .line 297
    :cond_2c
    iget-object v1, p0, Lfr/testudo/spacecorsair/business/ennemis/Albatros;->tempVector:Lfr/testudo/spacecorsair/engine/Vector2;

    const/high16 v2, -0x3cb80000    # -200.0f

    invoke-virtual {v1, v4, v2}, Lfr/testudo/spacecorsair/engine/Vector2;->set(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 299
    iget v1, p0, Lfr/testudo/spacecorsair/business/ennemis/Albatros;->spin:F

    float-to-double v2, v1

    invoke-static {v2, v3}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v2

    .line 300
    iget-object v1, p0, Lfr/testudo/spacecorsair/business/ennemis/Albatros;->tempVector:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v1, v2, v3}, Lfr/testudo/spacecorsair/engine/Vector2;->applyRotatation(D)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 301
    iget-object v1, v0, Lfr/testudo/spacecorsair/business/projectiles/Missile;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget-object v2, p0, Lfr/testudo/spacecorsair/business/ennemis/Albatros;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v1, v2}, Lfr/testudo/spacecorsair/engine/Vector2;->setSameAs(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    move-result-object v1

    iget-object v2, p0, Lfr/testudo/spacecorsair/business/ennemis/Albatros;->tempVector:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v1, v2}, Lfr/testudo/spacecorsair/engine/Vector2;->add(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 302
    iget-object v1, v0, Lfr/testudo/spacecorsair/business/projectiles/Missile;->speed:Lfr/testudo/spacecorsair/engine/Vector2;

    const/high16 v2, -0x3fc00000    # -3.0f

    invoke-virtual {v1, v4, v2}, Lfr/testudo/spacecorsair/engine/Vector2;->set(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 303
    const/16 v1, 0x4b0

    iput v1, v0, Lfr/testudo/spacecorsair/business/projectiles/Missile;->timeAllume:I

    .line 305
    iget-object v1, v0, Lfr/testudo/spacecorsair/business/projectiles/Missile;->speed:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v2, p0, Lfr/testudo/spacecorsair/business/ennemis/Albatros;->spin:F

    int-to-float v3, p1

    add-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lfr/testudo/spacecorsair/engine/Vector2;->applyRotatation(D)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 306
    iget-object v1, v0, Lfr/testudo/spacecorsair/business/projectiles/Missile;->speed:Lfr/testudo/spacecorsair/engine/Vector2;

    iget-object v2, p0, Lfr/testudo/spacecorsair/business/ennemis/Albatros;->speed:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v1, v2}, Lfr/testudo/spacecorsair/engine/Vector2;->add(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 307
    iget v1, p0, Lfr/testudo/spacecorsair/business/ennemis/Albatros;->spin:F

    int-to-float v2, p1

    add-float/2addr v1, v2

    iput v1, v0, Lfr/testudo/spacecorsair/business/projectiles/Missile;->spin:F

    .line 309
    sget-object v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v1, v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v1, v1, Lfr/testudo/spacecorsair/game/Game;->currentLevel:Lfr/testudo/spacecorsair/game/levels/Level;

    iget-object v1, v1, Lfr/testudo/spacecorsair/game/levels/Level;->toAdd:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 310
    iget-wide v0, p0, Lfr/testudo/spacecorsair/business/ennemis/Albatros;->missileReloadTimeInMilli:J

    long-to-float v0, v0

    iget v1, p0, Lfr/testudo/spacecorsair/business/ennemis/Albatros;->alterationReloadValue:F

    mul-float/2addr v0, v1

    float-to-long v0, v0

    iput-wide v0, p0, Lfr/testudo/spacecorsair/business/ennemis/Albatros;->currentMissileReload:J

    .line 311
    iget v0, p0, Lfr/testudo/spacecorsair/business/ennemis/Albatros;->missileCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lfr/testudo/spacecorsair/business/ennemis/Albatros;->missileCount:I

    goto :goto_f
.end method


# virtual methods
.method public addRandomExplode()V
    .registers 13

    .prologue
    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    .line 451
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v0

    sget v2, Lfr/testudo/spacecorsair/business/ennemis/Albatros;->COLIDE_POINT_COUNT:I

    int-to-double v2, v2

    mul-double/2addr v0, v2

    double-to-int v0, v0

    .line 453
    sget-object v1, Lfr/testudo/spacecorsair/business/ennemis/Albatros;->colidePoints:[Lfr/testudo/spacecorsair/engine/ColidePoint;

    aget-object v1, v1, v0

    iget v1, v1, Lfr/testudo/spacecorsair/engine/ColidePoint;->size:I

    int-to-double v2, v1

    const-wide v4, 0x3fe6666666666666L    # 0.7

    mul-double/2addr v2, v4

    double-to-int v1, v2

    .line 455
    iget-object v2, p0, Lfr/testudo/spacecorsair/business/ennemis/Albatros;->tempVector:Lfr/testudo/spacecorsair/engine/Vector2;

    sget-object v3, Lfr/testudo/spacecorsair/business/ennemis/Albatros;->colidePoints:[Lfr/testudo/spacecorsair/engine/ColidePoint;

    aget-object v0, v3, v0

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ColidePoint;->point:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v2, v0}, Lfr/testudo/spacecorsair/engine/Vector2;->setSameAs(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 456
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/ennemis/Albatros;->tempVector:Lfr/testudo/spacecorsair/engine/Vector2;

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

    .line 457
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/ennemis/Albatros;->tempVector:Lfr/testudo/spacecorsair/engine/Vector2;

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

    .line 458
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/ennemis/Albatros;->tempVector:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v1, p0, Lfr/testudo/spacecorsair/business/ennemis/Albatros;->spin:F

    float-to-double v2, v1

    invoke-static {v2, v3}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lfr/testudo/spacecorsair/engine/Vector2;->applyRotatation(D)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 459
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/ennemis/Albatros;->tempVector:Lfr/testudo/spacecorsair/engine/Vector2;

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/ennemis/Albatros;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/engine/Vector2;->add(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 462
    invoke-static {}, Lfr/testudo/spacecorsair/business/factory/GamePools;->newRandomExplode()Lfr/testudo/spacecorsair/display/ExplosionAnim;

    move-result-object v0

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/ennemis/Albatros;->tempVector:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v0, v1, p0}, Lfr/testudo/spacecorsair/display/ExplosionAnim;->init(Lfr/testudo/spacecorsair/engine/Vector2;Lfr/testudo/spacecorsair/business/Element;)Lfr/testudo/spacecorsair/display/ExplosionAnim;

    move-result-object v0

    .line 463
    sget-object v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v1, v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v1, v1, Lfr/testudo/spacecorsair/game/Game;->currentLevel:Lfr/testudo/spacecorsair/game/levels/Level;

    iget-object v1, v1, Lfr/testudo/spacecorsair/game/levels/Level;->toAddAnimated:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 464
    return-void
.end method

.method public applyAsteroidCollision(F)V
    .registers 2

    .prologue
    .line 329
    return-void
.end method

.method public applyDamage(FLfr/testudo/spacecorsair/business/Element;Lfr/testudo/spacecorsair/business/projectiles/Projectile;)V
    .registers 6

    .prologue
    .line 334
    invoke-super {p0, p1, p2, p3}, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->applyDamage(FLfr/testudo/spacecorsair/business/Element;Lfr/testudo/spacecorsair/business/projectiles/Projectile;)V

    .line 335
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/ennemis/Albatros;->lifeBar:Lfr/testudo/spacecorsair/display/hud/InfoBarEnnemis;

    iget v1, p0, Lfr/testudo/spacecorsair/business/ennemis/Albatros;->lifeInPourc:F

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/display/hud/InfoBarEnnemis;->setValue(F)V

    .line 336
    iget v0, p0, Lfr/testudo/spacecorsair/business/ennemis/Albatros;->lifeInPourc:F

    const/high16 v1, 0x41700000    # 15.0f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_16

    .line 337
    iget v0, p0, Lfr/testudo/spacecorsair/business/ennemis/Albatros;->pouseeForceAbimed:F

    iput v0, p0, Lfr/testudo/spacecorsair/business/ennemis/Albatros;->pouseeForce:F

    .line 339
    :cond_16
    return-void
.end method

.method protected doAttackIa(JJ)V
    .registers 14

    .prologue
    const-wide/16 v6, 0x640

    const-wide/16 v4, 0x3e8

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 364
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/ennemis/Albatros;->canonCenter:Lfr/testudo/spacecorsair/business/ennemis/EnnemisCanon;

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisCanon;->doIa()V

    .line 365
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/ennemis/Albatros;->canonProue:Lfr/testudo/spacecorsair/business/ennemis/EnnemisCanon;

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisCanon;->doIa()V

    .line 366
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/ennemis/Albatros;->canonPoupe:Lfr/testudo/spacecorsair/business/ennemis/EnnemisCanon;

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisCanon;->doIa()V

    .line 368
    long-to-float v0, p3

    iget v1, p0, Lfr/testudo/spacecorsair/business/ennemis/Albatros;->distanceShoot:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_2b

    .line 369
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/ennemis/Albatros;->canonProue:Lfr/testudo/spacecorsair/business/ennemis/EnnemisCanon;

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisCanon;->requestShoot()V

    .line 370
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/ennemis/Albatros;->canonCenter:Lfr/testudo/spacecorsair/business/ennemis/EnnemisCanon;

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisCanon;->requestShoot()V

    .line 371
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/ennemis/Albatros;->canonPoupe:Lfr/testudo/spacecorsair/business/ennemis/EnnemisCanon;

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisCanon;->requestShoot()V

    .line 375
    :cond_2b
    iget-wide v0, p0, Lfr/testudo/spacecorsair/business/ennemis/Albatros;->miniDistanceForMissile:J

    cmp-long v0, p3, v0

    if-lez v0, :cond_34

    .line 376
    invoke-direct {p0}, Lfr/testudo/spacecorsair/business/ennemis/Albatros;->requestMissileShot()V

    .line 380
    :cond_34
    cmp-long v0, p3, v4

    if-lez v0, :cond_5b

    cmp-long v0, p3, v6

    if-gez v0, :cond_5b

    .line 382
    iput-boolean v2, p0, Lfr/testudo/spacecorsair/business/ennemis/Albatros;->escaping:Z

    .line 383
    iput-boolean v2, p0, Lfr/testudo/spacecorsair/business/ennemis/Albatros;->isPousee:Z

    .line 389
    :goto_40
    cmp-long v0, p3, v4

    if-gez v0, :cond_4f

    .line 390
    iget-boolean v0, p0, Lfr/testudo/spacecorsair/business/ennemis/Albatros;->escaping:Z

    if-nez v0, :cond_5e

    .line 391
    iput-boolean v3, p0, Lfr/testudo/spacecorsair/business/ennemis/Albatros;->escaping:Z

    .line 392
    const-wide/16 v0, 0xbb8

    invoke-direct {p0, v0, v1}, Lfr/testudo/spacecorsair/business/ennemis/Albatros;->getNewRandomTarget(J)V

    .line 398
    :cond_4f
    :goto_4f
    cmp-long v0, p3, v6

    if-lez v0, :cond_5a

    .line 400
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/ennemis/Albatros;->attackTarget:Lfr/testudo/spacecorsair/business/Element;

    iget-object v0, v0, Lfr/testudo/spacecorsair/business/Element;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {p0, v0}, Lfr/testudo/spacecorsair/business/ennemis/Albatros;->alignToPoint(Lfr/testudo/spacecorsair/engine/Vector2;)Z

    .line 402
    :cond_5a
    return-void

    .line 385
    :cond_5b
    iput-boolean v3, p0, Lfr/testudo/spacecorsair/business/ennemis/Albatros;->isPousee:Z

    goto :goto_40

    .line 394
    :cond_5e
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/ennemis/Albatros;->fixedTarget:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {p0, v0}, Lfr/testudo/spacecorsair/business/ennemis/Albatros;->alignToPoint(Lfr/testudo/spacecorsair/engine/Vector2;)Z

    goto :goto_4f
.end method

.method public doPhysic(J)V
    .registers 8

    .prologue
    const/16 v4, 0x5dc

    .line 246
    invoke-super {p0, p1, p2}, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->doPhysic(J)V

    .line 248
    iget-boolean v0, p0, Lfr/testudo/spacecorsair/business/ennemis/Albatros;->isDestroyAnimation:Z

    if-eqz v0, :cond_60

    .line 249
    iget v0, p0, Lfr/testudo/spacecorsair/business/ennemis/Albatros;->curNextExpldeTime:I

    int-to-long v0, v0

    sub-long/2addr v0, p1

    long-to-int v0, v0

    iput v0, p0, Lfr/testudo/spacecorsair/business/ennemis/Albatros;->curNextExpldeTime:I

    .line 250
    iget v0, p0, Lfr/testudo/spacecorsair/business/ennemis/Albatros;->remainingDestroytime:I

    int-to-long v0, v0

    sub-long/2addr v0, p1

    long-to-int v0, v0

    iput v0, p0, Lfr/testudo/spacecorsair/business/ennemis/Albatros;->remainingDestroytime:I

    .line 251
    iget v0, p0, Lfr/testudo/spacecorsair/business/ennemis/Albatros;->remainingDestroytime:I

    if-gtz v0, :cond_21

    .line 252
    const/4 v0, 0x0

    iput-boolean v0, p0, Lfr/testudo/spacecorsair/business/ennemis/Albatros;->isDestroyAnimation:Z

    .line 253
    invoke-virtual {p0}, Lfr/testudo/spacecorsair/business/ennemis/Albatros;->realDestroy()V

    .line 255
    :cond_21
    iget v0, p0, Lfr/testudo/spacecorsair/business/ennemis/Albatros;->curNextExpldeTime:I

    if-gez v0, :cond_2c

    .line 256
    invoke-virtual {p0}, Lfr/testudo/spacecorsair/business/ennemis/Albatros;->addRandomExplode()V

    .line 257
    const/16 v0, 0xc8

    iput v0, p0, Lfr/testudo/spacecorsair/business/ennemis/Albatros;->curNextExpldeTime:I

    .line 268
    :cond_2c
    :goto_2c
    iget-wide v0, p0, Lfr/testudo/spacecorsair/business/ennemis/Albatros;->currentMissileReload:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_39

    .line 269
    iget-wide v0, p0, Lfr/testudo/spacecorsair/business/ennemis/Albatros;->currentMissileReload:J

    sub-long/2addr v0, p1

    iput-wide v0, p0, Lfr/testudo/spacecorsair/business/ennemis/Albatros;->currentMissileReload:J

    .line 272
    :cond_39
    iget-boolean v0, p0, Lfr/testudo/spacecorsair/business/ennemis/Albatros;->removed:Z

    if-nez v0, :cond_70

    iget-boolean v0, p0, Lfr/testudo/spacecorsair/business/ennemis/Albatros;->isDestroyAnimation:Z

    if-nez v0, :cond_70

    iget v0, p0, Lfr/testudo/spacecorsair/business/ennemis/Albatros;->distanceToPlayer:F

    const/high16 v1, 0x43af0000    # 350.0f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_70

    .line 274
    iget v0, p0, Lfr/testudo/spacecorsair/business/ennemis/Albatros;->nextShockWaveInMilli:I

    int-to-long v0, v0

    sub-long/2addr v0, p1

    long-to-int v0, v0

    iput v0, p0, Lfr/testudo/spacecorsair/business/ennemis/Albatros;->nextShockWaveInMilli:I

    .line 275
    iget v0, p0, Lfr/testudo/spacecorsair/business/ennemis/Albatros;->nextShockWaveInMilli:I

    if-gtz v0, :cond_5f

    .line 276
    const/16 v0, 0x12c

    const/16 v1, 0x3e8

    const/16 v2, 0x320

    invoke-static {p0, v0, v1, v2}, Lfr/testudo/spacecorsair/business/Util;->applyShockWaveOnPlayer(Lfr/testudo/spacecorsair/business/Element;III)V

    .line 277
    iput v4, p0, Lfr/testudo/spacecorsair/business/ennemis/Albatros;->nextShockWaveInMilli:I

    .line 284
    :cond_5f
    :goto_5f
    return-void

    .line 263
    :cond_60
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/ennemis/Albatros;->canonCenter:Lfr/testudo/spacecorsair/business/ennemis/EnnemisCanon;

    invoke-virtual {v0, p1, p2}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisCanon;->doPhysic(J)V

    .line 264
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/ennemis/Albatros;->canonProue:Lfr/testudo/spacecorsair/business/ennemis/EnnemisCanon;

    invoke-virtual {v0, p1, p2}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisCanon;->doPhysic(J)V

    .line 265
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/ennemis/Albatros;->canonPoupe:Lfr/testudo/spacecorsair/business/ennemis/EnnemisCanon;

    invoke-virtual {v0, p1, p2}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisCanon;->doPhysic(J)V

    goto :goto_2c

    .line 282
    :cond_70
    iput v4, p0, Lfr/testudo/spacecorsair/business/ennemis/Albatros;->nextShockWaveInMilli:I

    goto :goto_5f
.end method

.method public getDrawableObject()Lfr/testudo/spacecorsair/display/Drawable;
    .registers 2

    .prologue
    .line 109
    sget-object v0, Lfr/testudo/spacecorsair/business/ennemis/Albatros;->drawable:Lfr/testudo/spacecorsair/display/Drawable;

    return-object v0
.end method

.method public getMiniDrawableObject()Lfr/testudo/spacecorsair/display/Drawable;
    .registers 2

    .prologue
    .line 82
    sget-object v0, Lfr/testudo/spacecorsair/business/ennemis/Albatros;->miniDrawable:Lfr/testudo/spacecorsair/display/Drawable;

    return-object v0
.end method

.method public getPhysicDimension()Lfr/testudo/spacecorsair/engine/Vector2;
    .registers 2

    .prologue
    .line 114
    sget-object v0, Lfr/testudo/spacecorsair/business/ennemis/Albatros;->physicalDim:Lfr/testudo/spacecorsair/engine/Vector2;

    return-object v0
.end method

.method public initLevelConfig(Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;I)Lfr/testudo/spacecorsair/business/ennemis/Albatros;
    .registers 11

    .prologue
    const/4 v2, 0x1

    const/4 v7, 0x3

    const/high16 v4, 0x41500000    # 13.0f

    const/high16 v5, 0x3f000000    # 0.5f

    const/4 v3, 0x5

    .line 130
    invoke-super {p0, p2}, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->init(I)Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    .line 131
    iput-boolean v2, p0, Lfr/testudo/spacecorsair/business/ennemis/Albatros;->disableCollisionForBigShip:Z

    .line 133
    iget v0, p1, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->life:I

    int-to-float v0, v0

    iput v0, p0, Lfr/testudo/spacecorsair/business/ennemis/Albatros;->maxLife:F

    .line 134
    iget v0, p1, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->life:I

    int-to-float v0, v0

    iput v0, p0, Lfr/testudo/spacecorsair/business/ennemis/Albatros;->life:F

    .line 135
    iget v0, p1, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->xp:I

    iput v0, p0, Lfr/testudo/spacecorsair/business/ennemis/Albatros;->xp:I

    .line 136
    iget v0, p1, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->shootReload:I

    int-to-long v0, v0

    iput-wide v0, p0, Lfr/testudo/spacecorsair/business/ennemis/Albatros;->milleSecBetweenShots:J

    .line 137
    iget v0, p1, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->shootDamage:I

    int-to-float v0, v0

    iput v0, p0, Lfr/testudo/spacecorsair/business/ennemis/Albatros;->bulletDamage:F

    .line 138
    iget v0, p1, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->missileCount:I

    iput v0, p0, Lfr/testudo/spacecorsair/business/ennemis/Albatros;->missileCount:I

    .line 139
    iget v0, p1, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->missileReloadTime:I

    int-to-long v0, v0

    iput-wide v0, p0, Lfr/testudo/spacecorsair/business/ennemis/Albatros;->missileReloadTimeInMilli:J

    .line 140
    iget v0, p1, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->missileReloadTime:I

    int-to-long v0, v0

    iput-wide v0, p0, Lfr/testudo/spacecorsair/business/ennemis/Albatros;->currentMissileReload:J

    .line 141
    iget v0, p1, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->missileMinDistance:I

    int-to-long v0, v0

    iput-wide v0, p0, Lfr/testudo/spacecorsair/business/ennemis/Albatros;->miniDistanceForMissile:J

    .line 142
    iget-object v0, p1, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->lootConfig:Lfr/testudo/spacecorsair/business/loot/LootConfig;

    iput-object v0, p0, Lfr/testudo/spacecorsair/business/ennemis/Albatros;->lootConfig:Lfr/testudo/spacecorsair/business/loot/LootConfig;

    .line 143
    iget v0, p1, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->maxTurnFactor:F

    iput v0, p0, Lfr/testudo/spacecorsair/business/ennemis/Albatros;->maxTurnFactor:F

    .line 144
    iget v0, p1, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->antiMissileCount:I

    iput v0, p0, Lfr/testudo/spacecorsair/business/ennemis/Albatros;->antiMissileCount:I

    .line 145
    iget-object v0, p1, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->missileSpec:Lfr/testudo/spacecorsair/business/loot/stuff/missile/MissileSpec;

    iput-object v0, p0, Lfr/testudo/spacecorsair/business/ennemis/Albatros;->missileSpec:Lfr/testudo/spacecorsair/business/loot/stuff/missile/MissileSpec;

    .line 147
    const/high16 v0, 0x457a0000    # 4000.0f

    iput v0, p0, Lfr/testudo/spacecorsair/business/ennemis/Albatros;->distanceShoot:F

    .line 148
    const v0, 0x44e74000    # 1850.0f

    iput v0, p0, Lfr/testudo/spacecorsair/business/ennemis/Albatros;->mass:F

    .line 149
    const v0, 0x3dcccccd    # 0.1f

    iput v0, p0, Lfr/testudo/spacecorsair/business/ennemis/Albatros;->pouseeForce:F

    .line 150
    const v0, 0x3f8147ae    # 1.01f

    iput v0, p0, Lfr/testudo/spacecorsair/business/ennemis/Albatros;->speedDeperditionfactor:F

    .line 151
    const v0, 0x3d23d70a    # 0.04f

    iput v0, p0, Lfr/testudo/spacecorsair/business/ennemis/Albatros;->pouseeForceAbimed:F

    .line 153
    const/16 v0, 0x9c4

    invoke-virtual {p0, v0}, Lfr/testudo/spacecorsair/business/ennemis/Albatros;->setMitigedDistance(I)V

    .line 154
    const/high16 v0, 0x45fa0000    # 8000.0f

    iput v0, p0, Lfr/testudo/spacecorsair/business/ennemis/Albatros;->desengagementDistance:F

    .line 155
    const/high16 v0, 0x41000000    # 8.0f

    iput v0, p0, Lfr/testudo/spacecorsair/business/ennemis/Albatros;->shootPrecision:F

    .line 157
    const/4 v0, 0x0

    iput-boolean v0, p0, Lfr/testudo/spacecorsair/business/ennemis/Albatros;->isDestroyAnimation:Z

    .line 159
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/ennemis/Albatros;->lifeBar:Lfr/testudo/spacecorsair/display/hud/InfoBarEnnemis;

    const/high16 v1, 0x42c80000    # 100.0f

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/display/hud/InfoBarEnnemis;->setValue(F)V

    .line 161
    iput-boolean v2, p0, Lfr/testudo/spacecorsair/business/ennemis/Albatros;->drawOnRadar:Z

    .line 162
    const/high16 v0, 0x40c00000    # 6.0f

    iput v0, p0, Lfr/testudo/spacecorsair/business/ennemis/Albatros;->radarPointSize:F

    .line 163
    const v0, 0x466a6000    # 15000.0f

    iput v0, p0, Lfr/testudo/spacecorsair/business/ennemis/Albatros;->distanceToPlayer:F

    .line 166
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/ennemis/Albatros;->canonCenter:Lfr/testudo/spacecorsair/business/ennemis/EnnemisCanon;

    iget v1, p1, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->shootReload:I

    iget v2, p1, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->shootDamage:I

    move v6, v3

    invoke-virtual/range {v0 .. v7}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisCanon;->init(IIIFFII)Lfr/testudo/spacecorsair/business/ennemis/EnnemisCanon;

    .line 167
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/ennemis/Albatros;->canonProue:Lfr/testudo/spacecorsair/business/ennemis/EnnemisCanon;

    iget v1, p1, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->shootReload:I

    iget v2, p1, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->shootDamage:I

    move v6, v3

    invoke-virtual/range {v0 .. v7}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisCanon;->init(IIIFFII)Lfr/testudo/spacecorsair/business/ennemis/EnnemisCanon;

    .line 168
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/ennemis/Albatros;->canonPoupe:Lfr/testudo/spacecorsair/business/ennemis/EnnemisCanon;

    iget v1, p1, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->shootReload:I

    iget v2, p1, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->shootDamage:I

    move v6, v3

    invoke-virtual/range {v0 .. v7}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisCanon;->init(IIIFFII)Lfr/testudo/spacecorsair/business/ennemis/EnnemisCanon;

    .line 170
    const/16 v0, 0x3e8

    iput v0, p0, Lfr/testudo/spacecorsair/business/ennemis/Albatros;->precisionToTarget:I

    .line 171
    const/16 v0, 0xc8

    iput v0, p0, Lfr/testudo/spacecorsair/business/ennemis/Albatros;->lootDispersion:I

    .line 173
    return-object p0
.end method

.method protected onAttackTargetStart()V
    .registers 3

    .prologue
    .line 406
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/ennemis/Albatros;->canonProue:Lfr/testudo/spacecorsair/business/ennemis/EnnemisCanon;

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/ennemis/Albatros;->attackTarget:Lfr/testudo/spacecorsair/business/Element;

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisCanon;->initChasseTarget(Lfr/testudo/spacecorsair/business/Element;)V

    .line 407
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/ennemis/Albatros;->canonCenter:Lfr/testudo/spacecorsair/business/ennemis/EnnemisCanon;

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/ennemis/Albatros;->attackTarget:Lfr/testudo/spacecorsair/business/Element;

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisCanon;->initChasseTarget(Lfr/testudo/spacecorsair/business/Element;)V

    .line 408
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/ennemis/Albatros;->canonPoupe:Lfr/testudo/spacecorsair/business/ennemis/EnnemisCanon;

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/ennemis/Albatros;->attackTarget:Lfr/testudo/spacecorsair/business/Element;

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisCanon;->initChasseTarget(Lfr/testudo/spacecorsair/business/Element;)V

    .line 409
    iget-wide v0, p0, Lfr/testudo/spacecorsair/business/ennemis/Albatros;->missileReloadTimeInMilli:J

    iput-wide v0, p0, Lfr/testudo/spacecorsair/business/ennemis/Albatros;->currentMissileReload:J

    .line 410
    return-void
.end method

.method protected onAttackTargetStop()V
    .registers 2

    .prologue
    .line 414
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/ennemis/Albatros;->canonCenter:Lfr/testudo/spacecorsair/business/ennemis/EnnemisCanon;

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisCanon;->initReset()V

    .line 415
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/ennemis/Albatros;->canonProue:Lfr/testudo/spacecorsair/business/ennemis/EnnemisCanon;

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisCanon;->initReset()V

    .line 416
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/ennemis/Albatros;->canonPoupe:Lfr/testudo/spacecorsair/business/ennemis/EnnemisCanon;

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisCanon;->initReset()V

    .line 417
    return-void
.end method

.method public onDestroyed(Z)V
    .registers 4

    .prologue
    .line 430
    iget-boolean v0, p0, Lfr/testudo/spacecorsair/business/ennemis/Albatros;->isDestroyAnimation:Z

    if-eqz v0, :cond_5

    .line 448
    :goto_4
    return-void

    .line 434
    :cond_5
    iput-boolean p1, p0, Lfr/testudo/spacecorsair/business/ennemis/Albatros;->wasPlayerLootable:Z

    .line 436
    const/4 v0, 0x0

    iput-boolean v0, p0, Lfr/testudo/spacecorsair/business/ennemis/Albatros;->isPousee:Z

    .line 437
    const/16 v0, 0x1770

    iput v0, p0, Lfr/testudo/spacecorsair/business/ennemis/Albatros;->remainingDestroytime:I

    .line 438
    const/16 v0, 0xc8

    iput v0, p0, Lfr/testudo/spacecorsair/business/ennemis/Albatros;->curNextExpldeTime:I

    .line 439
    const/4 v0, 0x1

    iput-boolean v0, p0, Lfr/testudo/spacecorsair/business/ennemis/Albatros;->isDestroyAnimation:Z

    .line 441
    invoke-static {}, Lfr/testudo/spacecorsair/business/factory/GamePools;->newRandomExplode()Lfr/testudo/spacecorsair/display/ExplosionAnim;

    move-result-object v0

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/ennemis/Albatros;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v0, v1, p0}, Lfr/testudo/spacecorsair/display/ExplosionAnim;->init(Lfr/testudo/spacecorsair/engine/Vector2;Lfr/testudo/spacecorsair/business/Element;)Lfr/testudo/spacecorsair/display/ExplosionAnim;

    move-result-object v0

    .line 442
    sget-object v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v1, v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v1, v1, Lfr/testudo/spacecorsair/game/Game;->currentLevel:Lfr/testudo/spacecorsair/game/levels/Level;

    iget-object v1, v1, Lfr/testudo/spacecorsair/game/levels/Level;->toAddAnimated:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 444
    const/16 v0, 0xa

    invoke-static {p0, v0}, Lfr/testudo/spacecorsair/display/ParticuleFactory;->addWhite(Lfr/testudo/spacecorsair/business/Element;I)V

    .line 445
    const/4 v0, 0x4

    invoke-static {p0, v0}, Lfr/testudo/spacecorsair/display/ParticuleFactory;->addRed(Lfr/testudo/spacecorsair/business/Element;I)V

    .line 446
    const/4 v0, 0x3

    invoke-static {p0, v0}, Lfr/testudo/spacecorsair/display/ParticuleFactory;->addYellow(Lfr/testudo/spacecorsair/business/Element;I)V

    goto :goto_4
.end method

.method public onMissileLockedOnMe(Lfr/testudo/spacecorsair/business/projectiles/Missile;)V
    .registers 3

    .prologue
    .line 192
    invoke-virtual {p0, p1}, Lfr/testudo/spacecorsair/business/ennemis/Albatros;->shootAntiMissile(Lfr/testudo/spacecorsair/business/projectiles/Missile;)V

    .line 195
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/ennemis/Albatros;->canonCenter:Lfr/testudo/spacecorsair/business/ennemis/EnnemisCanon;

    iget-boolean v0, v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisCanon;->inMissileMode:Z

    if-nez v0, :cond_f

    .line 196
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/ennemis/Albatros;->canonCenter:Lfr/testudo/spacecorsair/business/ennemis/EnnemisCanon;

    invoke-virtual {v0, p1}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisCanon;->lockMissile(Lfr/testudo/spacecorsair/business/projectiles/Missile;)V

    .line 205
    :cond_e
    :goto_e
    return-void

    .line 200
    :cond_f
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/ennemis/Albatros;->canonProue:Lfr/testudo/spacecorsair/business/ennemis/EnnemisCanon;

    iget-boolean v0, v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisCanon;->inMissileMode:Z

    if-nez v0, :cond_e

    .line 201
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/ennemis/Albatros;->canonProue:Lfr/testudo/spacecorsair/business/ennemis/EnnemisCanon;

    invoke-virtual {v0, p1}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisCanon;->lockMissile(Lfr/testudo/spacecorsair/business/projectiles/Missile;)V

    goto :goto_e
.end method

.method public pruneColide(Lfr/testudo/spacecorsair/business/Element;)Z
    .registers 11

    .prologue
    const/4 v1, 0x0

    .line 485
    iget v0, p0, Lfr/testudo/spacecorsair/business/ennemis/Albatros;->spin:F

    float-to-double v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v2

    move v0, v1

    .line 488
    :goto_9
    sget v4, Lfr/testudo/spacecorsair/business/ennemis/Albatros;->COLIDE_POINT_COUNT:I

    if-ge v0, v4, :cond_4b

    .line 490
    iget-object v4, p0, Lfr/testudo/spacecorsair/business/ennemis/Albatros;->tempVector:Lfr/testudo/spacecorsair/engine/Vector2;

    sget-object v5, Lfr/testudo/spacecorsair/business/ennemis/Albatros;->colidePoints:[Lfr/testudo/spacecorsair/engine/ColidePoint;

    aget-object v5, v5, v0

    iget-object v5, v5, Lfr/testudo/spacecorsair/engine/ColidePoint;->point:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v4, v5}, Lfr/testudo/spacecorsair/engine/Vector2;->setSameAs(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 491
    iget-object v4, p0, Lfr/testudo/spacecorsair/business/ennemis/Albatros;->tempVector:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v4, v2, v3}, Lfr/testudo/spacecorsair/engine/Vector2;->applyRotatation(D)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 492
    iget-object v4, p0, Lfr/testudo/spacecorsair/business/ennemis/Albatros;->tempVector:Lfr/testudo/spacecorsair/engine/Vector2;

    iget-object v5, p0, Lfr/testudo/spacecorsair/business/ennemis/Albatros;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v4, v5}, Lfr/testudo/spacecorsair/engine/Vector2;->add(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 494
    iget-object v4, p0, Lfr/testudo/spacecorsair/business/ennemis/Albatros;->tempVector:Lfr/testudo/spacecorsair/engine/Vector2;

    iget-object v5, p1, Lfr/testudo/spacecorsair/business/Element;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v4, v5}, Lfr/testudo/spacecorsair/engine/Vector2;->distance2(Lfr/testudo/spacecorsair/engine/Vector2;)F

    move-result v4

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    .line 495
    sget-object v6, Lfr/testudo/spacecorsair/business/ennemis/Albatros;->colidePoints:[Lfr/testudo/spacecorsair/engine/ColidePoint;

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

    .line 497
    const-wide/16 v6, 0x0

    cmpg-double v4, v4, v6

    if-gtz v4, :cond_4c

    .line 498
    const/4 v1, 0x1

    .line 503
    :cond_4b
    return v1

    .line 488
    :cond_4c
    add-int/lit8 v0, v0, 0x1

    goto :goto_9
.end method

.method public realDestroy()V
    .registers 3

    .prologue
    const/16 v1, 0x9

    .line 472
    iget-boolean v0, p0, Lfr/testudo/spacecorsair/business/ennemis/Albatros;->wasPlayerLootable:Z

    invoke-super {p0, v0}, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->onDestroyed(Z)V

    .line 474
    const/16 v0, 0xf

    invoke-static {p0, v0}, Lfr/testudo/spacecorsair/display/ParticuleFactory;->addWhite(Lfr/testudo/spacecorsair/business/Element;I)V

    .line 475
    invoke-static {p0, v1}, Lfr/testudo/spacecorsair/display/ParticuleFactory;->addRed(Lfr/testudo/spacecorsair/business/Element;I)V

    .line 476
    invoke-static {p0, v1}, Lfr/testudo/spacecorsair/display/ParticuleFactory;->addYellow(Lfr/testudo/spacecorsair/business/Element;I)V

    .line 478
    return-void
.end method

.method public registerYourselfToDrawQueue()V
    .registers 13

    .prologue
    .line 512
    invoke-super {p0}, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->registerYourselfToDrawQueue()V

    .line 515
    iget v0, p0, Lfr/testudo/spacecorsair/business/ennemis/Albatros;->spin:F

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v10

    .line 519
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/ennemis/Albatros;->tempVector:Lfr/testudo/spacecorsair/engine/Vector2;

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/ennemis/Albatros;->canonCenter:Lfr/testudo/spacecorsair/business/ennemis/EnnemisCanon;

    iget-object v1, v1, Lfr/testudo/spacecorsair/business/ennemis/EnnemisCanon;->shipPosition:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/engine/Vector2;->setSameAs(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 520
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/ennemis/Albatros;->tempVector:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v0, v10, v11}, Lfr/testudo/spacecorsair/engine/Vector2;->applyRotatation(D)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 521
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/ennemis/Albatros;->tempVector:Lfr/testudo/spacecorsair/engine/Vector2;

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/ennemis/Albatros;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/engine/Vector2;->add(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 523
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->renderQueue:Lfr/testudo/spacecorsair/engine/RenderQueue;

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/ennemis/Albatros;->tempVector:Lfr/testudo/spacecorsair/engine/Vector2;

    iget-boolean v2, p0, Lfr/testudo/spacecorsair/business/ennemis/Albatros;->cameraRelative:Z

    sget-object v3, Lfr/testudo/spacecorsair/business/ennemis/Albatros;->drawableTourelle:Lfr/testudo/spacecorsair/display/Drawable;

    iget v4, p0, Lfr/testudo/spacecorsair/business/ennemis/Albatros;->spin:F

    iget-object v5, p0, Lfr/testudo/spacecorsair/business/ennemis/Albatros;->canonCenter:Lfr/testudo/spacecorsair/business/ennemis/EnnemisCanon;

    iget v5, v5, Lfr/testudo/spacecorsair/business/ennemis/EnnemisCanon;->currentDeltaSpinWithShip:F

    sub-float/2addr v4, v5

    iget v5, p0, Lfr/testudo/spacecorsair/business/ennemis/Albatros;->a:F

    const/high16 v6, 0x3f800000    # 1.0f

    const v7, 0x3f333333    # 0.7f

    const v8, 0x3f333333    # 0.7f

    invoke-virtual/range {v0 .. v8}, Lfr/testudo/spacecorsair/engine/RenderQueue;->addToWaitingQueue(Lfr/testudo/spacecorsair/engine/Vector2;ZLfr/testudo/spacecorsair/display/Drawable;FFFFF)V

    .line 529
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/ennemis/Albatros;->tempVector:Lfr/testudo/spacecorsair/engine/Vector2;

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/ennemis/Albatros;->canonProue:Lfr/testudo/spacecorsair/business/ennemis/EnnemisCanon;

    iget-object v1, v1, Lfr/testudo/spacecorsair/business/ennemis/EnnemisCanon;->shipPosition:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/engine/Vector2;->setSameAs(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 530
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/ennemis/Albatros;->tempVector:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v0, v10, v11}, Lfr/testudo/spacecorsair/engine/Vector2;->applyRotatation(D)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 531
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/ennemis/Albatros;->tempVector:Lfr/testudo/spacecorsair/engine/Vector2;

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/ennemis/Albatros;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/engine/Vector2;->add(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 533
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->renderQueue:Lfr/testudo/spacecorsair/engine/RenderQueue;

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/ennemis/Albatros;->tempVector:Lfr/testudo/spacecorsair/engine/Vector2;

    iget-boolean v2, p0, Lfr/testudo/spacecorsair/business/ennemis/Albatros;->cameraRelative:Z

    sget-object v3, Lfr/testudo/spacecorsair/business/ennemis/Albatros;->drawableTourelle:Lfr/testudo/spacecorsair/display/Drawable;

    iget v4, p0, Lfr/testudo/spacecorsair/business/ennemis/Albatros;->spin:F

    iget-object v5, p0, Lfr/testudo/spacecorsair/business/ennemis/Albatros;->canonProue:Lfr/testudo/spacecorsair/business/ennemis/EnnemisCanon;

    iget v5, v5, Lfr/testudo/spacecorsair/business/ennemis/EnnemisCanon;->currentDeltaSpinWithShip:F

    sub-float/2addr v4, v5

    iget v5, p0, Lfr/testudo/spacecorsair/business/ennemis/Albatros;->a:F

    const/high16 v6, 0x3f800000    # 1.0f

    const v7, 0x3f333333    # 0.7f

    const v8, 0x3f333333    # 0.7f

    invoke-virtual/range {v0 .. v8}, Lfr/testudo/spacecorsair/engine/RenderQueue;->addToWaitingQueue(Lfr/testudo/spacecorsair/engine/Vector2;ZLfr/testudo/spacecorsair/display/Drawable;FFFFF)V

    .line 539
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/ennemis/Albatros;->tempVector:Lfr/testudo/spacecorsair/engine/Vector2;

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/ennemis/Albatros;->canonPoupe:Lfr/testudo/spacecorsair/business/ennemis/EnnemisCanon;

    iget-object v1, v1, Lfr/testudo/spacecorsair/business/ennemis/EnnemisCanon;->shipPosition:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/engine/Vector2;->setSameAs(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 540
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/ennemis/Albatros;->tempVector:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v0, v10, v11}, Lfr/testudo/spacecorsair/engine/Vector2;->applyRotatation(D)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 541
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/ennemis/Albatros;->tempVector:Lfr/testudo/spacecorsair/engine/Vector2;

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/ennemis/Albatros;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/engine/Vector2;->add(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 543
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->renderQueue:Lfr/testudo/spacecorsair/engine/RenderQueue;

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/ennemis/Albatros;->tempVector:Lfr/testudo/spacecorsair/engine/Vector2;

    iget-boolean v2, p0, Lfr/testudo/spacecorsair/business/ennemis/Albatros;->cameraRelative:Z

    sget-object v3, Lfr/testudo/spacecorsair/business/ennemis/Albatros;->drawableTourelle:Lfr/testudo/spacecorsair/display/Drawable;

    iget v4, p0, Lfr/testudo/spacecorsair/business/ennemis/Albatros;->spin:F

    iget-object v5, p0, Lfr/testudo/spacecorsair/business/ennemis/Albatros;->canonPoupe:Lfr/testudo/spacecorsair/business/ennemis/EnnemisCanon;

    iget v5, v5, Lfr/testudo/spacecorsair/business/ennemis/EnnemisCanon;->currentDeltaSpinWithShip:F

    sub-float/2addr v4, v5

    iget v5, p0, Lfr/testudo/spacecorsair/business/ennemis/Albatros;->a:F

    const/high16 v6, 0x3f800000    # 1.0f

    const v7, 0x3f333333    # 0.7f

    const v8, 0x3f333333    # 0.7f

    invoke-virtual/range {v0 .. v8}, Lfr/testudo/spacecorsair/engine/RenderQueue;->addToWaitingQueue(Lfr/testudo/spacecorsair/engine/Vector2;ZLfr/testudo/spacecorsair/display/Drawable;FFFFF)V

    .line 552
    iget-boolean v0, p0, Lfr/testudo/spacecorsair/business/ennemis/Albatros;->isPousee:Z

    if-eqz v0, :cond_117

    .line 554
    iget v0, p0, Lfr/testudo/spacecorsair/business/ennemis/Albatros;->cur_gaz_texture:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lfr/testudo/spacecorsair/business/ennemis/Albatros;->cur_gaz_texture:I

    .line 555
    iget v0, p0, Lfr/testudo/spacecorsair/business/ennemis/Albatros;->cur_gaz_texture:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_b5

    .line 556
    const/4 v0, 0x0

    iput v0, p0, Lfr/testudo/spacecorsair/business/ennemis/Albatros;->cur_gaz_texture:I

    .line 559
    :cond_b5
    const/high16 v5, 0x3f800000    # 1.0f

    .line 562
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/ennemis/Albatros;->tempVector:Lfr/testudo/spacecorsair/engine/Vector2;

    const/high16 v1, -0x3e900000    # -15.0f

    const/high16 v2, 0x43660000    # 230.0f

    invoke-virtual {v0, v1, v2}, Lfr/testudo/spacecorsair/engine/Vector2;->set(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    move-result-object v0

    iget v1, p0, Lfr/testudo/spacecorsair/business/ennemis/Albatros;->spin:F

    float-to-double v2, v1

    invoke-static {v2, v3}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lfr/testudo/spacecorsair/engine/Vector2;->applyRotatation(D)Lfr/testudo/spacecorsair/engine/Vector2;

    move-result-object v0

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/ennemis/Albatros;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/engine/Vector2;->add(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 564
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->renderQueue:Lfr/testudo/spacecorsair/engine/RenderQueue;

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/ennemis/Albatros;->tempVector:Lfr/testudo/spacecorsair/engine/Vector2;

    const/4 v2, 0x0

    sget-object v3, Lfr/testudo/spacecorsair/business/ennemis/Albatros;->gazDrawables:[Lfr/testudo/spacecorsair/display/Drawable;

    iget v4, p0, Lfr/testudo/spacecorsair/business/ennemis/Albatros;->cur_gaz_texture:I

    aget-object v3, v3, v4

    iget v4, p0, Lfr/testudo/spacecorsair/business/ennemis/Albatros;->spin:F

    const/high16 v6, 0x40000000    # 2.0f

    add-float/2addr v4, v6

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Lfr/testudo/spacecorsair/engine/RenderQueue;->addToWaitingQueue(Lfr/testudo/spacecorsair/engine/Vector2;ZLfr/testudo/spacecorsair/display/Drawable;FFZ)V

    .line 568
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/ennemis/Albatros;->tempVector:Lfr/testudo/spacecorsair/engine/Vector2;

    const/high16 v1, 0x41700000    # 15.0f

    const/high16 v2, 0x43660000    # 230.0f

    invoke-virtual {v0, v1, v2}, Lfr/testudo/spacecorsair/engine/Vector2;->set(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    move-result-object v0

    iget v1, p0, Lfr/testudo/spacecorsair/business/ennemis/Albatros;->spin:F

    float-to-double v2, v1

    invoke-static {v2, v3}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lfr/testudo/spacecorsair/engine/Vector2;->applyRotatation(D)Lfr/testudo/spacecorsair/engine/Vector2;

    move-result-object v0

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/ennemis/Albatros;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/engine/Vector2;->add(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 569
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->renderQueue:Lfr/testudo/spacecorsair/engine/RenderQueue;

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/ennemis/Albatros;->tempVector:Lfr/testudo/spacecorsair/engine/Vector2;

    const/4 v2, 0x0

    sget-object v3, Lfr/testudo/spacecorsair/business/ennemis/Albatros;->gazDrawables:[Lfr/testudo/spacecorsair/display/Drawable;

    iget v4, p0, Lfr/testudo/spacecorsair/business/ennemis/Albatros;->cur_gaz_texture:I

    aget-object v3, v3, v4

    iget v4, p0, Lfr/testudo/spacecorsair/business/ennemis/Albatros;->spin:F

    const/high16 v6, 0x40000000    # 2.0f

    sub-float/2addr v4, v6

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Lfr/testudo/spacecorsair/engine/RenderQueue;->addToWaitingQueue(Lfr/testudo/spacecorsair/engine/Vector2;ZLfr/testudo/spacecorsair/display/Drawable;FFZ)V

    .line 579
    :cond_117
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/ennemis/Albatros;->tempVector:Lfr/testudo/spacecorsair/engine/Vector2;

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/ennemis/Albatros;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/engine/Vector2;->setSameAs(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 580
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/ennemis/Albatros;->tempVector:Lfr/testudo/spacecorsair/engine/Vector2;

    sget-object v1, Lfr/testudo/spacecorsair/business/ennemis/Albatros;->drawable:Lfr/testudo/spacecorsair/display/Drawable;

    iget-object v1, v1, Lfr/testudo/spacecorsair/display/Drawable;->dimensions:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v1, v1, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    neg-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    const/high16 v2, 0x41200000    # 10.0f

    sub-float/2addr v1, v2

    sget-object v2, Lfr/testudo/spacecorsair/business/ennemis/Albatros;->drawable:Lfr/testudo/spacecorsair/display/Drawable;

    iget-object v2, v2, Lfr/testudo/spacecorsair/display/Drawable;->dimensions:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v2, v2, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    const/high16 v3, 0x41400000    # 12.0f

    add-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Lfr/testudo/spacecorsair/engine/Vector2;->add(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 581
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->renderQueue:Lfr/testudo/spacecorsair/engine/RenderQueue;

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/ennemis/Albatros;->tempVector:Lfr/testudo/spacecorsair/engine/Vector2;

    const/4 v2, 0x0

    iget-object v3, p0, Lfr/testudo/spacecorsair/business/ennemis/Albatros;->levelStr:Ljava/lang/String;

    iget v4, p0, Lfr/testudo/spacecorsair/business/ennemis/Albatros;->levelColorR:F

    iget v5, p0, Lfr/testudo/spacecorsair/business/ennemis/Albatros;->levelColorG:F

    iget v6, p0, Lfr/testudo/spacecorsair/business/ennemis/Albatros;->levelColorB:F

    const v7, 0x3f4ccccd    # 0.8f

    sget-object v8, Lfr/testudo/spacecorsair/textengine/TextSize;->MEDIUM:Lfr/testudo/spacecorsair/textengine/TextSize;

    invoke-virtual/range {v0 .. v8}, Lfr/testudo/spacecorsair/engine/RenderQueue;->addTextToTextWaitingQueue(Lfr/testudo/spacecorsair/engine/Vector2;ZLjava/lang/String;FFFFLfr/testudo/spacecorsair/textengine/TextSize;)V

    .line 584
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/ennemis/Albatros;->tempVector:Lfr/testudo/spacecorsair/engine/Vector2;

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/ennemis/Albatros;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/engine/Vector2;->setSameAs(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 585
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/ennemis/Albatros;->tempVector:Lfr/testudo/spacecorsair/engine/Vector2;

    const/high16 v1, 0x41700000    # 15.0f

    const/high16 v2, 0x41f00000    # 30.0f

    invoke-virtual {v0, v1, v2}, Lfr/testudo/spacecorsair/engine/Vector2;->add(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 586
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->renderQueue:Lfr/testudo/spacecorsair/engine/RenderQueue;

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/ennemis/Albatros;->tempVector:Lfr/testudo/spacecorsair/engine/Vector2;

    iget-object v2, p0, Lfr/testudo/spacecorsair/business/ennemis/Albatros;->lifeBar:Lfr/testudo/spacecorsair/display/hud/InfoBarEnnemis;

    invoke-virtual {v0, v1, v2}, Lfr/testudo/spacecorsair/engine/RenderQueue;->addToWaitingQueue(Lfr/testudo/spacecorsair/engine/Vector2;Lfr/testudo/spacecorsair/display/hud/InfoBar;)V

    .line 590
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/ennemis/Albatros;->specificName:Ljava/lang/String;

    if-eqz v0, :cond_1be

    .line 592
    iget v0, p0, Lfr/testudo/spacecorsair/business/ennemis/Albatros;->specificNameDecalX:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_185

    .line 593
    sget-object v0, Lfr/testudo/spacecorsair/engine/GameRenderer;->glTextMedium:Lfr/testudo/spacecorsair/textengine/GLText;

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/ennemis/Albatros;->specificName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/textengine/GLText;->getLength(Ljava/lang/String;)F

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lfr/testudo/spacecorsair/business/ennemis/Albatros;->specificNameDecalX:I

    .line 595
    :cond_185
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/ennemis/Albatros;->tempVector:Lfr/testudo/spacecorsair/engine/Vector2;

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/ennemis/Albatros;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/engine/Vector2;->setSameAs(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    move-result-object v0

    iget v1, p0, Lfr/testudo/spacecorsair/business/ennemis/Albatros;->specificNameDecalX:I

    neg-int v1, v1

    int-to-float v1, v1

    sget-object v2, Lfr/testudo/spacecorsair/business/ennemis/Albatros;->drawable:Lfr/testudo/spacecorsair/display/Drawable;

    iget-object v2, v2, Lfr/testudo/spacecorsair/display/Drawable;->dimensions:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v2, v2, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    const/high16 v3, 0x42280000    # 42.0f

    add-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Lfr/testudo/spacecorsair/engine/Vector2;->add(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 597
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->renderQueue:Lfr/testudo/spacecorsair/engine/RenderQueue;

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/ennemis/Albatros;->tempVector:Lfr/testudo/spacecorsair/engine/Vector2;

    const/4 v2, 0x0

    iget-object v3, p0, Lfr/testudo/spacecorsair/business/ennemis/Albatros;->specificName:Ljava/lang/String;

    sget-object v4, Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;->ORANGE:Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;

    iget v4, v4, Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;->r:F

    sget-object v5, Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;->ORANGE:Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;

    iget v5, v5, Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;->g:F

    sget-object v6, Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;->ORANGE:Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;

    iget v6, v6, Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;->b:F

    sget-object v7, Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;->ORANGE:Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;

    iget v7, v7, Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;->a:F

    sget-object v8, Lfr/testudo/spacecorsair/textengine/TextSize;->MEDIUM:Lfr/testudo/spacecorsair/textengine/TextSize;

    invoke-virtual/range {v0 .. v8}, Lfr/testudo/spacecorsair/engine/RenderQueue;->addTextToTextWaitingQueue(Lfr/testudo/spacecorsair/engine/Vector2;ZLjava/lang/String;FFFFLfr/testudo/spacecorsair/textengine/TextSize;)V

    .line 601
    :cond_1be
    iget-boolean v0, p0, Lfr/testudo/spacecorsair/business/ennemis/Albatros;->elite:Z

    if-eqz v0, :cond_1fb

    .line 602
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/ennemis/Albatros;->tempVector:Lfr/testudo/spacecorsair/engine/Vector2;

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/ennemis/Albatros;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/engine/Vector2;->setSameAs(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    move-result-object v0

    sget-object v1, Lfr/testudo/spacecorsair/business/ennemis/Albatros;->drawable:Lfr/testudo/spacecorsair/display/Drawable;

    iget-object v1, v1, Lfr/testudo/spacecorsair/display/Drawable;->dimensions:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v1, v1, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    const/high16 v2, 0x41f00000    # 30.0f

    add-float/2addr v1, v2

    sget-object v2, Lfr/testudo/spacecorsair/business/ennemis/Albatros;->drawable:Lfr/testudo/spacecorsair/display/Drawable;

    iget-object v2, v2, Lfr/testudo/spacecorsair/display/Drawable;->dimensions:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v2, v2, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    const/high16 v3, 0x420c0000    # 35.0f

    add-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Lfr/testudo/spacecorsair/engine/Vector2;->add(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 603
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->renderQueue:Lfr/testudo/spacecorsair/engine/RenderQueue;

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/ennemis/Albatros;->tempVector:Lfr/testudo/spacecorsair/engine/Vector2;

    const/4 v2, 0x0

    sget-object v3, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->ELITE_MARK_SIZE_BIG:Lfr/testudo/spacecorsair/display/Drawable;

    const/high16 v4, 0x43340000    # 180.0f

    const/high16 v5, 0x3f800000    # 1.0f

    const/high16 v6, 0x3f800000    # 1.0f

    const/high16 v7, 0x3f800000    # 1.0f

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-virtual/range {v0 .. v8}, Lfr/testudo/spacecorsair/engine/RenderQueue;->addToWaitingQueue(Lfr/testudo/spacecorsair/engine/Vector2;ZLfr/testudo/spacecorsair/display/Drawable;FFFFF)V

    .line 613
    :cond_1fb
    return-void
.end method

.method public setElite()Lfr/testudo/spacecorsair/business/ennemis/Ennemis;
    .registers 4

    .prologue
    const/high16 v2, 0x40400000    # 3.0f

    .line 617
    invoke-super {p0}, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->setElite()Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    .line 618
    iget v0, p0, Lfr/testudo/spacecorsair/business/ennemis/Albatros;->xp:I

    int-to-float v0, v0

    const v1, 0x4019999a    # 2.4f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lfr/testudo/spacecorsair/business/ennemis/Albatros;->xp:I

    .line 619
    iget v0, p0, Lfr/testudo/spacecorsair/business/ennemis/Albatros;->life:F

    mul-float/2addr v0, v2

    iput v0, p0, Lfr/testudo/spacecorsair/business/ennemis/Albatros;->life:F

    .line 620
    iget v0, p0, Lfr/testudo/spacecorsair/business/ennemis/Albatros;->maxLife:F

    mul-float/2addr v0, v2

    iput v0, p0, Lfr/testudo/spacecorsair/business/ennemis/Albatros;->maxLife:F

    .line 621
    iget v0, p0, Lfr/testudo/spacecorsair/business/ennemis/Albatros;->bulletDamage:F

    const v1, 0x3fd9999a    # 1.7f

    mul-float/2addr v0, v1

    iput v0, p0, Lfr/testudo/spacecorsair/business/ennemis/Albatros;->bulletDamage:F

    .line 622
    iget-wide v0, p0, Lfr/testudo/spacecorsair/business/ennemis/Albatros;->missileReloadTimeInMilli:J

    long-to-float v0, v0

    const/high16 v1, 0x3f000000    # 0.5f

    mul-float/2addr v0, v1

    float-to-long v0, v0

    iput-wide v0, p0, Lfr/testudo/spacecorsair/business/ennemis/Albatros;->missileReloadTimeInMilli:J

    .line 623
    iget v0, p0, Lfr/testudo/spacecorsair/business/ennemis/Albatros;->missileCount:I

    int-to-float v0, v0

    mul-float/2addr v0, v2

    float-to-int v0, v0

    iput v0, p0, Lfr/testudo/spacecorsair/business/ennemis/Albatros;->missileCount:I

    .line 624
    iget v0, p0, Lfr/testudo/spacecorsair/business/ennemis/Albatros;->pouseeForce:F

    const v1, 0x3fb33333    # 1.4f

    mul-float/2addr v0, v1

    iput v0, p0, Lfr/testudo/spacecorsair/business/ennemis/Albatros;->pouseeForce:F

    .line 625
    iget v0, p0, Lfr/testudo/spacecorsair/business/ennemis/Albatros;->radarPointSize:F

    const/high16 v1, 0x40000000    # 2.0f

    add-float/2addr v0, v1

    iput v0, p0, Lfr/testudo/spacecorsair/business/ennemis/Albatros;->radarPointSize:F

    .line 627
    return-object p0
.end method

.method public shootAntiMissile(Lfr/testudo/spacecorsair/business/projectiles/Missile;)V
    .registers 12

    .prologue
    const/high16 v9, 0x3f800000    # 1.0f

    const v8, 0x3f4ccccd    # 0.8f

    const/4 v7, 0x0

    .line 210
    iget v0, p0, Lfr/testudo/spacecorsair/business/ennemis/Albatros;->antiMissileCount:I

    if-gtz v0, :cond_b

    .line 239
    :goto_a
    return-void

    .line 217
    :cond_b
    invoke-static {}, Lfr/testudo/spacecorsair/business/factory/GamePools;->newMissile()Lfr/testudo/spacecorsair/business/projectiles/Missile;

    move-result-object v0

    iget v1, p0, Lfr/testudo/spacecorsair/business/ennemis/Albatros;->level:I

    const/high16 v2, 0x437a0000    # 250.0f

    const/16 v3, 0x19

    sget-object v6, Lfr/testudo/spacecorsair/business/loot/stuff/alteration/AlterationSpecs;->DEFAULT:Lfr/testudo/spacecorsair/business/loot/stuff/alteration/AlterationSpecs;

    move-object v4, p0

    move-object v5, p1

    invoke-virtual/range {v0 .. v6}, Lfr/testudo/spacecorsair/business/projectiles/Missile;->init(IFILfr/testudo/spacecorsair/business/Element;Lfr/testudo/spacecorsair/business/Element;Lfr/testudo/spacecorsair/business/loot/stuff/alteration/AlterationSpecs;)Lfr/testudo/spacecorsair/business/projectiles/Missile;

    move-result-object v0

    .line 218
    iput v7, v0, Lfr/testudo/spacecorsair/business/projectiles/Missile;->radiusDamage:F

    .line 219
    iput v8, v0, Lfr/testudo/spacecorsair/business/projectiles/Missile;->b:F

    .line 220
    iput v9, v0, Lfr/testudo/spacecorsair/business/projectiles/Missile;->r:F

    .line 221
    iput v8, v0, Lfr/testudo/spacecorsair/business/projectiles/Missile;->g:F

    .line 222
    iput v9, v0, Lfr/testudo/spacecorsair/business/projectiles/Missile;->alumedMaxTurnFactor:F

    .line 223
    iget-object v1, p0, Lfr/testudo/spacecorsair/business/ennemis/Albatros;->tempVector:Lfr/testudo/spacecorsair/engine/Vector2;

    const/high16 v2, -0x3e380000    # -25.0f

    invoke-virtual {v1, v7, v2}, Lfr/testudo/spacecorsair/engine/Vector2;->set(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 225
    iget v1, p0, Lfr/testudo/spacecorsair/business/ennemis/Albatros;->spin:F

    float-to-double v2, v1

    invoke-static {v2, v3}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v2

    .line 226
    iget-object v1, p0, Lfr/testudo/spacecorsair/business/ennemis/Albatros;->tempVector:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v1, v2, v3}, Lfr/testudo/spacecorsair/engine/Vector2;->applyRotatation(D)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 227
    iget-object v1, v0, Lfr/testudo/spacecorsair/business/projectiles/Missile;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget-object v2, p0, Lfr/testudo/spacecorsair/business/ennemis/Albatros;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v1, v2}, Lfr/testudo/spacecorsair/engine/Vector2;->setSameAs(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    move-result-object v1

    iget-object v2, p0, Lfr/testudo/spacecorsair/business/ennemis/Albatros;->tempVector:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v1, v2}, Lfr/testudo/spacecorsair/engine/Vector2;->add(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 228
    const/high16 v1, 0x40c00000    # 6.0f

    iput v1, v0, Lfr/testudo/spacecorsair/business/projectiles/Missile;->pouseeForce:F

    .line 229
    const v1, 0x3f91eb85    # 1.14f

    iput v1, v0, Lfr/testudo/spacecorsair/business/projectiles/Missile;->speedDeperditionFactorPostAlumed:F

    .line 230
    const/high16 v1, 0x40a00000    # 5.0f

    iput v1, v0, Lfr/testudo/spacecorsair/business/projectiles/Missile;->alumedMaxTurnFactor:F

    .line 231
    const/16 v1, 0x190

    iput v1, v0, Lfr/testudo/spacecorsair/business/projectiles/Missile;->timeAllume:I

    .line 232
    iget-object v1, v0, Lfr/testudo/spacecorsair/business/projectiles/Missile;->speed:Lfr/testudo/spacecorsair/engine/Vector2;

    const v2, -0x404ccccd    # -1.4f

    invoke-virtual {v1, v7, v2}, Lfr/testudo/spacecorsair/engine/Vector2;->set(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 233
    iget-object v1, v0, Lfr/testudo/spacecorsair/business/projectiles/Missile;->speed:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v2, p0, Lfr/testudo/spacecorsair/business/ennemis/Albatros;->spin:F

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lfr/testudo/spacecorsair/engine/Vector2;->applyRotatation(D)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 234
    iget-object v1, v0, Lfr/testudo/spacecorsair/business/projectiles/Missile;->speed:Lfr/testudo/spacecorsair/engine/Vector2;

    iget-object v2, p0, Lfr/testudo/spacecorsair/business/ennemis/Albatros;->speed:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v1, v2}, Lfr/testudo/spacecorsair/engine/Vector2;->add(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 235
    iget v1, p0, Lfr/testudo/spacecorsair/business/ennemis/Albatros;->spin:F

    iput v1, v0, Lfr/testudo/spacecorsair/business/projectiles/Missile;->spin:F

    .line 236
    sget-object v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v1, v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v1, v1, Lfr/testudo/spacecorsair/game/Game;->currentLevel:Lfr/testudo/spacecorsair/game/levels/Level;

    iget-object v1, v1, Lfr/testudo/spacecorsair/game/levels/Level;->toAdd:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 238
    iget v0, p0, Lfr/testudo/spacecorsair/business/ennemis/Albatros;->antiMissileCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lfr/testudo/spacecorsair/business/ennemis/Albatros;->antiMissileCount:I

    goto :goto_a
.end method

.method public withLaserAlterations(Lfr/testudo/spacecorsair/business/loot/stuff/alteration/AlterationSpecs;)Lfr/testudo/spacecorsair/business/ennemis/Ennemis;
    .registers 3

    .prologue
    .line 180
    invoke-super {p0, p1}, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->withLaserAlterations(Lfr/testudo/spacecorsair/business/loot/stuff/alteration/AlterationSpecs;)Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    .line 181
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/ennemis/Albatros;->canonCenter:Lfr/testudo/spacecorsair/business/ennemis/EnnemisCanon;

    iput-object p1, v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisCanon;->alterationSpecs:Lfr/testudo/spacecorsair/business/loot/stuff/alteration/AlterationSpecs;

    .line 182
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/ennemis/Albatros;->canonPoupe:Lfr/testudo/spacecorsair/business/ennemis/EnnemisCanon;

    iput-object p1, v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisCanon;->alterationSpecs:Lfr/testudo/spacecorsair/business/loot/stuff/alteration/AlterationSpecs;

    .line 183
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/ennemis/Albatros;->canonProue:Lfr/testudo/spacecorsair/business/ennemis/EnnemisCanon;

    iput-object p1, v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisCanon;->alterationSpecs:Lfr/testudo/spacecorsair/business/loot/stuff/alteration/AlterationSpecs;

    .line 184
    return-object p0
.end method
