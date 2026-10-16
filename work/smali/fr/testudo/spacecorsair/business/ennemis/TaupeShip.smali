.class public Lfr/testudo/spacecorsair/business/ennemis/TaupeShip;
.super Lfr/testudo/spacecorsair/business/ennemis/Ennemis;
.source "SourceFile"


# static fields
.field public static final GAZ_TEXTURE_COUNT:I = 0x3

.field public static drawable:Lfr/testudo/spacecorsair/display/Drawable;

.field public static final drawableDim:Lfr/testudo/spacecorsair/engine/Vector2;

.field public static final drawableDimHidden:Lfr/testudo/spacecorsair/engine/Vector2;

.field public static final drawableGazDimension:Lfr/testudo/spacecorsair/engine/Vector2;

.field public static drawableHidden:Lfr/testudo/spacecorsair/display/Drawable;

.field private static gazDrawables:[Lfr/testudo/spacecorsair/display/Drawable;

.field public static final physicalDim:Lfr/testudo/spacecorsair/engine/Vector2;

.field public static final physicalDimHidden:Lfr/testudo/spacecorsair/engine/Vector2;


# instance fields
.field public curRafale:I

.field public cur_gaz_texture:I

.field public currentMissileReload:J

.field public isHiddenMode:Z

.field public miniDistanceForMissile:J

.field public missileCount:I

.field public missileReloadTimeInMilli:J

.field public missileSpec:Lfr/testudo/spacecorsair/business/loot/stuff/missile/MissileSpec;

.field public nextShootAllowed:I

.field public rafaleCount:I

.field shootCanon:Z

.field public timeBewteenShootInMilli:I


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .prologue
    const/high16 v5, 0x42800000    # 64.0f

    const/high16 v4, 0x42700000    # 60.0f

    const/high16 v3, 0x42540000    # 53.0f

    const/high16 v2, 0x42480000    # 50.0f

    const/high16 v1, 0x42200000    # 40.0f

    .line 37
    new-instance v0, Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-direct {v0, v1, v1}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>(FF)V

    sput-object v0, Lfr/testudo/spacecorsair/business/ennemis/TaupeShip;->physicalDim:Lfr/testudo/spacecorsair/engine/Vector2;

    .line 38
    new-instance v0, Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-direct {v0, v3, v3}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>(FF)V

    sput-object v0, Lfr/testudo/spacecorsair/business/ennemis/TaupeShip;->physicalDimHidden:Lfr/testudo/spacecorsair/engine/Vector2;

    .line 39
    new-instance v0, Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-direct {v0, v2, v2}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>(FF)V

    sput-object v0, Lfr/testudo/spacecorsair/business/ennemis/TaupeShip;->drawableDim:Lfr/testudo/spacecorsair/engine/Vector2;

    .line 40
    new-instance v0, Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-direct {v0, v5, v5}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>(FF)V

    sput-object v0, Lfr/testudo/spacecorsair/business/ennemis/TaupeShip;->drawableDimHidden:Lfr/testudo/spacecorsair/engine/Vector2;

    .line 41
    new-instance v0, Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-direct {v0, v4, v4}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>(FF)V

    sput-object v0, Lfr/testudo/spacecorsair/business/ennemis/TaupeShip;->drawableGazDimension:Lfr/testudo/spacecorsair/engine/Vector2;

    .line 49
    const/4 v0, 0x0

    sput-object v0, Lfr/testudo/spacecorsair/business/ennemis/TaupeShip;->gazDrawables:[Lfr/testudo/spacecorsair/display/Drawable;

    return-void
.end method

.method public constructor <init>()V
    .registers 6

    .prologue
    const/4 v4, 0x6

    const/4 v2, 0x0

    .line 29
    invoke-direct {p0}, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;-><init>()V

    .line 87
    iput v2, p0, Lfr/testudo/spacecorsair/business/ennemis/TaupeShip;->missileCount:I

    .line 88
    const-wide/16 v0, 0x7530

    iput-wide v0, p0, Lfr/testudo/spacecorsair/business/ennemis/TaupeShip;->missileReloadTimeInMilli:J

    .line 89
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lfr/testudo/spacecorsair/business/ennemis/TaupeShip;->currentMissileReload:J

    .line 90
    const-wide/16 v0, 0x3e8

    iput-wide v0, p0, Lfr/testudo/spacecorsair/business/ennemis/TaupeShip;->miniDistanceForMissile:J

    .line 92
    iput v2, p0, Lfr/testudo/spacecorsair/business/ennemis/TaupeShip;->nextShootAllowed:I

    .line 93
    iput v2, p0, Lfr/testudo/spacecorsair/business/ennemis/TaupeShip;->curRafale:I

    .line 94
    iput v4, p0, Lfr/testudo/spacecorsair/business/ennemis/TaupeShip;->rafaleCount:I

    .line 95
    const/16 v0, 0x7d

    iput v0, p0, Lfr/testudo/spacecorsair/business/ennemis/TaupeShip;->timeBewteenShootInMilli:I

    .line 272
    iput v2, p0, Lfr/testudo/spacecorsair/business/ennemis/TaupeShip;->cur_gaz_texture:I

    .line 391
    const/4 v0, 0x1

    iput-boolean v0, p0, Lfr/testudo/spacecorsair/business/ennemis/TaupeShip;->shootCanon:Z

    .line 30
    new-instance v0, Lfr/testudo/spacecorsair/engine/Vector2;

    const/4 v1, 0x0

    sget-object v2, Lfr/testudo/spacecorsair/business/ennemis/TaupeShip;->drawableDim:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v2, v2, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    neg-float v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    const/high16 v3, 0x40a00000    # 5.0f

    sub-float/2addr v2, v3

    invoke-direct {v0, v1, v2}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>(FF)V

    sget-object v1, Lfr/testudo/spacecorsair/business/ennemis/TaupeShip;->drawableDim:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v1, v1, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    float-to-int v1, v1

    add-int/lit8 v1, v1, -0x5

    invoke-static {v0, v1, v4}, Lfr/testudo/spacecorsair/display/hud/InfoBarEnnemis;->newRed(Lfr/testudo/spacecorsair/engine/Vector2;II)Lfr/testudo/spacecorsair/display/hud/InfoBarEnnemis;

    move-result-object v0

    iput-object v0, p0, Lfr/testudo/spacecorsair/business/ennemis/TaupeShip;->lifeBar:Lfr/testudo/spacecorsair/display/hud/InfoBarEnnemis;

    .line 31
    return-void
.end method

.method private processShoot()V
    .registers 3

    .prologue
    const/high16 v1, -0x3f600000    # -5.0f

    .line 395
    iget-boolean v0, p0, Lfr/testudo/spacecorsair/business/ennemis/TaupeShip;->shootCanon:Z

    if-eqz v0, :cond_13

    .line 396
    const/high16 v0, 0x41200000    # 10.0f

    invoke-virtual {p0, v0, v1}, Lfr/testudo/spacecorsair/business/ennemis/TaupeShip;->shootEnergyBullet(FF)V

    .line 402
    :goto_b
    iget-boolean v0, p0, Lfr/testudo/spacecorsair/business/ennemis/TaupeShip;->shootCanon:Z

    if-nez v0, :cond_19

    const/4 v0, 0x1

    :goto_10
    iput-boolean v0, p0, Lfr/testudo/spacecorsair/business/ennemis/TaupeShip;->shootCanon:Z

    .line 404
    return-void

    .line 400
    :cond_13
    const/high16 v0, -0x3ee00000    # -10.0f

    invoke-virtual {p0, v0, v1}, Lfr/testudo/spacecorsair/business/ennemis/TaupeShip;->shootEnergyBullet(FF)V

    goto :goto_b

    .line 402
    :cond_19
    const/4 v0, 0x0

    goto :goto_10
.end method

.method public static setGazTextures(Lfr/testudo/spacecorsair/display/Texture;Lfr/testudo/spacecorsair/display/Texture;Lfr/testudo/spacecorsair/display/Texture;)V
    .registers 7

    .prologue
    .line 53
    const/4 v0, 0x3

    new-array v0, v0, [Lfr/testudo/spacecorsair/display/Drawable;

    const/4 v1, 0x0

    new-instance v2, Lfr/testudo/spacecorsair/display/Drawable;

    sget-object v3, Lfr/testudo/spacecorsair/business/ennemis/TaupeShip;->drawableGazDimension:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-direct {v2, v3, p0}, Lfr/testudo/spacecorsair/display/Drawable;-><init>(Lfr/testudo/spacecorsair/engine/Vector2;Lfr/testudo/spacecorsair/display/Texture;)V

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-instance v2, Lfr/testudo/spacecorsair/display/Drawable;

    sget-object v3, Lfr/testudo/spacecorsair/business/ennemis/TaupeShip;->drawableGazDimension:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-direct {v2, v3, p1}, Lfr/testudo/spacecorsair/display/Drawable;-><init>(Lfr/testudo/spacecorsair/engine/Vector2;Lfr/testudo/spacecorsair/display/Texture;)V

    aput-object v2, v0, v1

    const/4 v1, 0x2

    new-instance v2, Lfr/testudo/spacecorsair/display/Drawable;

    sget-object v3, Lfr/testudo/spacecorsair/business/ennemis/TaupeShip;->drawableGazDimension:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-direct {v2, v3, p2}, Lfr/testudo/spacecorsair/display/Drawable;-><init>(Lfr/testudo/spacecorsair/engine/Vector2;Lfr/testudo/spacecorsair/display/Texture;)V

    aput-object v2, v0, v1

    sput-object v0, Lfr/testudo/spacecorsair/business/ennemis/TaupeShip;->gazDrawables:[Lfr/testudo/spacecorsair/display/Drawable;

    .line 59
    return-void
.end method

.method public static setTexture(Lfr/testudo/spacecorsair/display/Texture;Lfr/testudo/spacecorsair/display/Texture;)V
    .registers 4

    .prologue
    .line 44
    new-instance v0, Lfr/testudo/spacecorsair/display/Drawable;

    sget-object v1, Lfr/testudo/spacecorsair/business/ennemis/TaupeShip;->drawableDim:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-direct {v0, v1, p0}, Lfr/testudo/spacecorsair/display/Drawable;-><init>(Lfr/testudo/spacecorsair/engine/Vector2;Lfr/testudo/spacecorsair/display/Texture;)V

    sput-object v0, Lfr/testudo/spacecorsair/business/ennemis/TaupeShip;->drawable:Lfr/testudo/spacecorsair/display/Drawable;

    .line 45
    new-instance v0, Lfr/testudo/spacecorsair/display/Drawable;

    sget-object v1, Lfr/testudo/spacecorsair/business/ennemis/TaupeShip;->drawableDimHidden:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-direct {v0, v1, p1}, Lfr/testudo/spacecorsair/display/Drawable;-><init>(Lfr/testudo/spacecorsair/engine/Vector2;Lfr/testudo/spacecorsair/display/Texture;)V

    sput-object v0, Lfr/testudo/spacecorsair/business/ennemis/TaupeShip;->drawableHidden:Lfr/testudo/spacecorsair/display/Drawable;

    .line 47
    return-void
.end method


# virtual methods
.method public applyAsteroidCollision(F)V
    .registers 2

    .prologue
    .line 440
    return-void
.end method

.method public applyDamage(FLfr/testudo/spacecorsair/business/Element;Lfr/testudo/spacecorsair/business/projectiles/Projectile;)V
    .registers 6

    .prologue
    .line 261
    invoke-super {p0, p1, p2, p3}, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->applyDamage(FLfr/testudo/spacecorsair/business/Element;Lfr/testudo/spacecorsair/business/projectiles/Projectile;)V

    .line 262
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/ennemis/TaupeShip;->lifeBar:Lfr/testudo/spacecorsair/display/hud/InfoBarEnnemis;

    iget v1, p0, Lfr/testudo/spacecorsair/business/ennemis/TaupeShip;->lifeInPourc:F

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/display/hud/InfoBarEnnemis;->setValue(F)V

    .line 264
    iget-boolean v0, p0, Lfr/testudo/spacecorsair/business/ennemis/TaupeShip;->isHiddenMode:Z

    if-eqz v0, :cond_15

    iget-boolean v0, p2, Lfr/testudo/spacecorsair/business/Element;->isPlayer:Z

    if-eqz v0, :cond_15

    .line 265
    invoke-virtual {p0, p2}, Lfr/testudo/spacecorsair/business/ennemis/TaupeShip;->initAttackTarget(Lfr/testudo/spacecorsair/business/Element;)V

    .line 267
    :cond_15
    return-void
.end method

.method protected doAttackIa(JJ)V
    .registers 12

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 189
    const-wide/16 v4, 0x2ee

    cmp-long v0, p3, v4

    if-lez v0, :cond_64

    move v0, v1

    :goto_9
    iput-boolean v0, p0, Lfr/testudo/spacecorsair/business/ennemis/TaupeShip;->isPousee:Z

    .line 191
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/ennemis/TaupeShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget-object v3, p0, Lfr/testudo/spacecorsair/business/ennemis/TaupeShip;->attackTarget:Lfr/testudo/spacecorsair/business/Element;

    iget-object v3, v3, Lfr/testudo/spacecorsair/business/Element;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v0, v3}, Lfr/testudo/spacecorsair/engine/Vector2;->getAngularWithInRad(Lfr/testudo/spacecorsair/engine/Vector2;)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v4

    double-to-float v0, v4

    const/high16 v3, 0x43b40000    # 360.0f

    rem-float/2addr v0, v3

    const/high16 v3, 0x42b40000    # 90.0f

    add-float/2addr v0, v3

    invoke-static {v0}, Lfr/testudo/spacecorsair/business/Element;->normalizeSpin(F)F

    move-result v0

    .line 195
    iget v3, p0, Lfr/testudo/spacecorsair/business/ennemis/TaupeShip;->spin:F

    sub-float v3, v0, v3

    float-to-int v3, v3

    .line 196
    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    .line 198
    if-ge v3, v1, :cond_39

    long-to-float v4, p3

    iget v5, p0, Lfr/testudo/spacecorsair/business/ennemis/TaupeShip;->distanceShoot:F

    cmpg-float v4, v4, v5

    if-gez v4, :cond_39

    .line 199
    invoke-virtual {p0}, Lfr/testudo/spacecorsair/business/ennemis/TaupeShip;->requestLaserShoot()V

    .line 202
    :cond_39
    int-to-float v4, v3

    const/high16 v5, 0x3fc00000    # 1.5f

    cmpg-float v4, v4, v5

    if-gez v4, :cond_66

    .line 203
    iput v0, p0, Lfr/testudo/spacecorsair/business/ennemis/TaupeShip;->spin:F

    .line 204
    const/4 v0, 0x0

    iput v0, p0, Lfr/testudo/spacecorsair/business/ennemis/TaupeShip;->spinSpeed:F

    .line 223
    :goto_45
    const/16 v0, 0x50

    if-ge v3, v0, :cond_8c

    .line 224
    const-wide/16 v2, 0xfa

    cmp-long v0, p3, v2

    if-lez v0, :cond_51

    .line 225
    iput-boolean v1, p0, Lfr/testudo/spacecorsair/business/ennemis/TaupeShip;->isPousee:Z

    .line 232
    :cond_51
    :goto_51
    iget-wide v0, p0, Lfr/testudo/spacecorsair/business/ennemis/TaupeShip;->currentMissileReload:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_63

    iget v0, p0, Lfr/testudo/spacecorsair/business/ennemis/TaupeShip;->missileCount:I

    if-lez v0, :cond_63

    .line 233
    iget-wide v0, p0, Lfr/testudo/spacecorsair/business/ennemis/TaupeShip;->miniDistanceForMissile:J

    cmp-long v0, p3, v0

    if-lez v0, :cond_63

    .line 238
    :cond_63
    return-void

    :cond_64
    move v0, v2

    .line 189
    goto :goto_9

    .line 206
    :cond_66
    const/16 v4, 0xb4

    if-gt v3, v4, :cond_7b

    .line 208
    iget v4, p0, Lfr/testudo/spacecorsair/business/ennemis/TaupeShip;->spin:F

    cmpl-float v0, v4, v0

    if-lez v0, :cond_76

    .line 209
    iget v0, p0, Lfr/testudo/spacecorsair/business/ennemis/TaupeShip;->maxTurnFactor:F

    neg-float v0, v0

    iput v0, p0, Lfr/testudo/spacecorsair/business/ennemis/TaupeShip;->spinSpeed:F

    goto :goto_45

    .line 211
    :cond_76
    iget v0, p0, Lfr/testudo/spacecorsair/business/ennemis/TaupeShip;->maxTurnFactor:F

    iput v0, p0, Lfr/testudo/spacecorsair/business/ennemis/TaupeShip;->spinSpeed:F

    goto :goto_45

    .line 215
    :cond_7b
    iget v4, p0, Lfr/testudo/spacecorsair/business/ennemis/TaupeShip;->spin:F

    cmpg-float v0, v4, v0

    if-gez v0, :cond_87

    .line 216
    iget v0, p0, Lfr/testudo/spacecorsair/business/ennemis/TaupeShip;->maxTurnFactor:F

    neg-float v0, v0

    iput v0, p0, Lfr/testudo/spacecorsair/business/ennemis/TaupeShip;->spinSpeed:F

    goto :goto_45

    .line 218
    :cond_87
    iget v0, p0, Lfr/testudo/spacecorsair/business/ennemis/TaupeShip;->maxTurnFactor:F

    iput v0, p0, Lfr/testudo/spacecorsair/business/ennemis/TaupeShip;->spinSpeed:F

    goto :goto_45

    .line 228
    :cond_8c
    iput-boolean v2, p0, Lfr/testudo/spacecorsair/business/ennemis/TaupeShip;->isPousee:Z

    goto :goto_51
.end method

.method public doPhysic(J)V
    .registers 8

    .prologue
    .line 169
    iget-boolean v0, p0, Lfr/testudo/spacecorsair/business/ennemis/TaupeShip;->isHiddenMode:Z

    if-eqz v0, :cond_7

    .line 170
    const/4 v0, 0x0

    iput-boolean v0, p0, Lfr/testudo/spacecorsair/business/ennemis/TaupeShip;->isPousee:Z

    .line 172
    :cond_7
    invoke-super {p0, p1, p2}, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->doPhysic(J)V

    .line 175
    iget-wide v0, p0, Lfr/testudo/spacecorsair/business/ennemis/TaupeShip;->currentMissileReload:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_17

    .line 176
    iget-wide v0, p0, Lfr/testudo/spacecorsair/business/ennemis/TaupeShip;->currentMissileReload:J

    sub-long/2addr v0, p1

    iput-wide v0, p0, Lfr/testudo/spacecorsair/business/ennemis/TaupeShip;->currentMissileReload:J

    .line 179
    :cond_17
    iget v0, p0, Lfr/testudo/spacecorsair/business/ennemis/TaupeShip;->nextShootAllowed:I

    if-ltz v0, :cond_22

    .line 180
    iget v0, p0, Lfr/testudo/spacecorsair/business/ennemis/TaupeShip;->nextShootAllowed:I

    int-to-long v0, v0

    sub-long/2addr v0, p1

    long-to-int v0, v0

    iput v0, p0, Lfr/testudo/spacecorsair/business/ennemis/TaupeShip;->nextShootAllowed:I

    .line 184
    :cond_22
    return-void
.end method

.method public getDrawableObject()Lfr/testudo/spacecorsair/display/Drawable;
    .registers 2

    .prologue
    .line 64
    iget-boolean v0, p0, Lfr/testudo/spacecorsair/business/ennemis/TaupeShip;->isHiddenMode:Z

    if-eqz v0, :cond_7

    .line 65
    sget-object v0, Lfr/testudo/spacecorsair/business/ennemis/TaupeShip;->drawableHidden:Lfr/testudo/spacecorsair/display/Drawable;

    .line 67
    :goto_6
    return-object v0

    :cond_7
    sget-object v0, Lfr/testudo/spacecorsair/business/ennemis/TaupeShip;->drawable:Lfr/testudo/spacecorsair/display/Drawable;

    goto :goto_6
.end method

.method public getMiniDrawableObject()Lfr/testudo/spacecorsair/display/Drawable;
    .registers 2

    .prologue
    .line 255
    const/4 v0, 0x0

    return-object v0
.end method

.method public getPhysicDimension()Lfr/testudo/spacecorsair/engine/Vector2;
    .registers 2

    .prologue
    .line 73
    iget-boolean v0, p0, Lfr/testudo/spacecorsair/business/ennemis/TaupeShip;->isHiddenMode:Z

    if-eqz v0, :cond_7

    .line 74
    sget-object v0, Lfr/testudo/spacecorsair/business/ennemis/TaupeShip;->physicalDimHidden:Lfr/testudo/spacecorsair/engine/Vector2;

    .line 76
    :goto_6
    return-object v0

    :cond_7
    sget-object v0, Lfr/testudo/spacecorsair/business/ennemis/TaupeShip;->physicalDim:Lfr/testudo/spacecorsair/engine/Vector2;

    goto :goto_6
.end method

.method public initLevelConfig(Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;I)Lfr/testudo/spacecorsair/business/ennemis/Ennemis;
    .registers 7

    .prologue
    const/4 v3, 0x1

    const/high16 v2, 0x3f800000    # 1.0f

    .line 99
    invoke-super {p0, p2}, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->init(I)Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    .line 100
    iput-boolean v3, p0, Lfr/testudo/spacecorsair/business/ennemis/TaupeShip;->isHiddenMode:Z

    .line 101
    const/16 v0, 0x1f4

    invoke-virtual {p0, v0}, Lfr/testudo/spacecorsair/business/ennemis/TaupeShip;->setMitigedDistance(I)V

    .line 103
    iget v0, p1, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->life:I

    int-to-float v0, v0

    iput v0, p0, Lfr/testudo/spacecorsair/business/ennemis/TaupeShip;->maxLife:F

    .line 104
    iget v0, p1, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->life:I

    int-to-float v0, v0

    iput v0, p0, Lfr/testudo/spacecorsair/business/ennemis/TaupeShip;->life:F

    .line 105
    iget v0, p1, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->xp:I

    iput v0, p0, Lfr/testudo/spacecorsair/business/ennemis/TaupeShip;->xp:I

    .line 106
    iget v0, p1, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->shootReload:I

    int-to-long v0, v0

    iput-wide v0, p0, Lfr/testudo/spacecorsair/business/ennemis/TaupeShip;->milleSecBetweenShots:J

    .line 107
    iget v0, p1, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->shootDamage:I

    int-to-float v0, v0

    iput v0, p0, Lfr/testudo/spacecorsair/business/ennemis/TaupeShip;->bulletDamage:F

    .line 108
    iget v0, p1, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->missileCount:I

    iput v0, p0, Lfr/testudo/spacecorsair/business/ennemis/TaupeShip;->missileCount:I

    .line 109
    iget v0, p1, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->missileReloadTime:I

    int-to-long v0, v0

    iput-wide v0, p0, Lfr/testudo/spacecorsair/business/ennemis/TaupeShip;->missileReloadTimeInMilli:J

    .line 110
    iget v0, p1, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->missileReloadTime:I

    int-to-long v0, v0

    iput-wide v0, p0, Lfr/testudo/spacecorsair/business/ennemis/TaupeShip;->currentMissileReload:J

    .line 111
    iget v0, p1, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->missileMinDistance:I

    int-to-long v0, v0

    iput-wide v0, p0, Lfr/testudo/spacecorsair/business/ennemis/TaupeShip;->miniDistanceForMissile:J

    .line 112
    iget-object v0, p1, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->lootConfig:Lfr/testudo/spacecorsair/business/loot/LootConfig;

    iput-object v0, p0, Lfr/testudo/spacecorsair/business/ennemis/TaupeShip;->lootConfig:Lfr/testudo/spacecorsair/business/loot/LootConfig;

    .line 113
    iget v0, p1, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->maxTurnFactor:F

    iput v0, p0, Lfr/testudo/spacecorsair/business/ennemis/TaupeShip;->maxTurnFactor:F

    .line 114
    iget-object v0, p1, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->missileSpec:Lfr/testudo/spacecorsair/business/loot/stuff/missile/MissileSpec;

    iput-object v0, p0, Lfr/testudo/spacecorsair/business/ennemis/TaupeShip;->missileSpec:Lfr/testudo/spacecorsair/business/loot/stuff/missile/MissileSpec;

    .line 117
    const/high16 v0, 0x457a0000    # 4000.0f

    iput v0, p0, Lfr/testudo/spacecorsair/business/ennemis/TaupeShip;->distanceShoot:F

    .line 118
    const/high16 v0, 0x43af0000    # 350.0f

    iput v0, p0, Lfr/testudo/spacecorsair/business/ennemis/TaupeShip;->mass:F

    .line 119
    const v0, 0x3ee66666    # 0.45f

    iput v0, p0, Lfr/testudo/spacecorsair/business/ennemis/TaupeShip;->pouseeForce:F

    .line 121
    const v0, 0x3f808312    # 1.004f

    iput v0, p0, Lfr/testudo/spacecorsair/business/ennemis/TaupeShip;->speedDeperditionfactor:F

    .line 124
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/ennemis/TaupeShip;->lifeBar:Lfr/testudo/spacecorsair/display/hud/InfoBarEnnemis;

    const/high16 v1, 0x42c80000    # 100.0f

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/display/hud/InfoBarEnnemis;->setValue(F)V

    .line 126
    const v0, 0x451c4000    # 2500.0f

    iput v0, p0, Lfr/testudo/spacecorsair/business/ennemis/TaupeShip;->desengagementDistance:F

    .line 127
    const/high16 v0, 0x40400000    # 3.0f

    iput v0, p0, Lfr/testudo/spacecorsair/business/ennemis/TaupeShip;->shootPrecision:F

    .line 129
    const/high16 v0, 0x420c0000    # 35.0f

    iput v0, p0, Lfr/testudo/spacecorsair/business/ennemis/TaupeShip;->mass:F

    .line 132
    iput-boolean v3, p0, Lfr/testudo/spacecorsair/business/ennemis/TaupeShip;->drawOnRadar:Z

    .line 133
    const/4 v0, 0x0

    iput v0, p0, Lfr/testudo/spacecorsair/business/ennemis/TaupeShip;->radarColorB:F

    .line 134
    iput v2, p0, Lfr/testudo/spacecorsair/business/ennemis/TaupeShip;->radarColorG:F

    .line 135
    iput v2, p0, Lfr/testudo/spacecorsair/business/ennemis/TaupeShip;->radarColorR:F

    .line 136
    const/high16 v0, 0x40000000    # 2.0f

    iput v0, p0, Lfr/testudo/spacecorsair/business/ennemis/TaupeShip;->radarPointSize:F

    .line 138
    const v0, 0x466a6000    # 15000.0f

    iput v0, p0, Lfr/testudo/spacecorsair/business/ennemis/TaupeShip;->distanceToPlayer:F

    .line 141
    return-object p0
.end method

.method protected onAttackTargetStart()V
    .registers 2

    .prologue
    .line 242
    iget-boolean v0, p0, Lfr/testudo/spacecorsair/business/ennemis/TaupeShip;->isHiddenMode:Z

    if-eqz v0, :cond_7

    .line 243
    invoke-virtual {p0}, Lfr/testudo/spacecorsair/business/ennemis/TaupeShip;->onPopVisible()V

    .line 245
    :cond_7
    return-void
.end method

.method protected onAttackTargetStop()V
    .registers 1

    .prologue
    .line 250
    return-void
.end method

.method public onDestroyed(Z)V
    .registers 4

    .prologue
    .line 353
    invoke-super {p0, p1}, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->onDestroyed(Z)V

    .line 355
    invoke-static {}, Lfr/testudo/spacecorsair/business/factory/GamePools;->newRandomExplode()Lfr/testudo/spacecorsair/display/ExplosionAnim;

    move-result-object v0

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/ennemis/TaupeShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v0, v1, p0}, Lfr/testudo/spacecorsair/display/ExplosionAnim;->init(Lfr/testudo/spacecorsair/engine/Vector2;Lfr/testudo/spacecorsair/business/Element;)Lfr/testudo/spacecorsair/display/ExplosionAnim;

    move-result-object v0

    .line 356
    sget-object v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v1, v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v1, v1, Lfr/testudo/spacecorsair/game/Game;->currentLevel:Lfr/testudo/spacecorsair/game/levels/Level;

    iget-object v1, v1, Lfr/testudo/spacecorsair/game/levels/Level;->toAddAnimated:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 358
    const/4 v0, 0x2

    invoke-static {p0, v0}, Lfr/testudo/spacecorsair/display/ParticuleFactory;->addWhite(Lfr/testudo/spacecorsair/business/Element;I)V

    .line 359
    const/4 v0, 0x4

    invoke-static {p0, v0}, Lfr/testudo/spacecorsair/display/ParticuleFactory;->addRed(Lfr/testudo/spacecorsair/business/Element;I)V

    .line 360
    const/4 v0, 0x7

    invoke-static {p0, v0}, Lfr/testudo/spacecorsair/display/ParticuleFactory;->addYellow(Lfr/testudo/spacecorsair/business/Element;I)V

    .line 363
    return-void
.end method

.method public onPopVisible()V
    .registers 3

    .prologue
    const/4 v0, 0x5

    const/4 v1, 0x0

    .line 151
    invoke-static {p0, v0}, Lfr/testudo/spacecorsair/display/ParticuleFactory;->addWhite(Lfr/testudo/spacecorsair/business/Element;I)V

    .line 152
    invoke-static {p0, v0}, Lfr/testudo/spacecorsair/display/ParticuleFactory;->addBrown(Lfr/testudo/spacecorsair/business/Element;I)V

    .line 154
    const/4 v0, 0x0

    iput-boolean v0, p0, Lfr/testudo/spacecorsair/business/ennemis/TaupeShip;->isHiddenMode:Z

    .line 155
    iput v1, p0, Lfr/testudo/spacecorsair/business/ennemis/TaupeShip;->radarColorB:F

    .line 156
    iput v1, p0, Lfr/testudo/spacecorsair/business/ennemis/TaupeShip;->radarColorG:F

    .line 157
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lfr/testudo/spacecorsair/business/ennemis/TaupeShip;->radarColorR:F

    .line 158
    const/high16 v0, 0x40400000    # 3.0f

    iput v0, p0, Lfr/testudo/spacecorsair/business/ennemis/TaupeShip;->radarPointSize:F

    .line 159
    const v0, 0x3f81cac1    # 1.014f

    iput v0, p0, Lfr/testudo/spacecorsair/business/ennemis/TaupeShip;->speedDeperditionfactor:F

    .line 160
    const/16 v0, 0x3e8

    iput v0, p0, Lfr/testudo/spacecorsair/business/ennemis/TaupeShip;->nextShootAllowed:I

    .line 162
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/ennemis/TaupeShip;->attackTarget:Lfr/testudo/spacecorsair/business/Element;

    iget-object v0, v0, Lfr/testudo/spacecorsair/business/Element;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/ennemis/TaupeShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/engine/Vector2;->getAngularWithInRad(Lfr/testudo/spacecorsair/engine/Vector2;)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v0

    double-to-float v0, v0

    const/high16 v1, 0x42b40000    # 90.0f

    sub-float/2addr v0, v1

    iput v0, p0, Lfr/testudo/spacecorsair/business/ennemis/TaupeShip;->spin:F

    .line 164
    return-void
.end method

.method public registerYourselfToDrawQueue()V
    .registers 10

    .prologue
    .line 278
    iget v0, p0, Lfr/testudo/spacecorsair/business/ennemis/TaupeShip;->r:F

    .line 279
    iget v1, p0, Lfr/testudo/spacecorsair/business/ennemis/TaupeShip;->g:F

    .line 280
    iget v2, p0, Lfr/testudo/spacecorsair/business/ennemis/TaupeShip;->b:F

    .line 282
    iget-boolean v3, p0, Lfr/testudo/spacecorsair/business/ennemis/TaupeShip;->isHiddenMode:Z

    if-eqz v3, :cond_16

    .line 283
    const/high16 v3, 0x3f800000    # 1.0f

    iput v3, p0, Lfr/testudo/spacecorsair/business/ennemis/TaupeShip;->r:F

    .line 284
    const/high16 v3, 0x3f800000    # 1.0f

    iput v3, p0, Lfr/testudo/spacecorsair/business/ennemis/TaupeShip;->g:F

    .line 285
    const/high16 v3, 0x3f800000    # 1.0f

    iput v3, p0, Lfr/testudo/spacecorsair/business/ennemis/TaupeShip;->b:F

    .line 289
    :cond_16
    invoke-super {p0}, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->registerYourselfToDrawQueue()V

    .line 291
    iget-boolean v3, p0, Lfr/testudo/spacecorsair/business/ennemis/TaupeShip;->isHiddenMode:Z

    if-eqz v3, :cond_24

    .line 292
    iput v0, p0, Lfr/testudo/spacecorsair/business/ennemis/TaupeShip;->r:F

    .line 293
    iput v1, p0, Lfr/testudo/spacecorsair/business/ennemis/TaupeShip;->g:F

    .line 294
    iput v2, p0, Lfr/testudo/spacecorsair/business/ennemis/TaupeShip;->b:F

    .line 348
    :cond_23
    :goto_23
    return-void

    .line 300
    :cond_24
    iget-boolean v0, p0, Lfr/testudo/spacecorsair/business/ennemis/TaupeShip;->isPousee:Z

    if-eqz v0, :cond_64

    .line 302
    iget v0, p0, Lfr/testudo/spacecorsair/business/ennemis/TaupeShip;->cur_gaz_texture:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lfr/testudo/spacecorsair/business/ennemis/TaupeShip;->cur_gaz_texture:I

    .line 303
    iget v0, p0, Lfr/testudo/spacecorsair/business/ennemis/TaupeShip;->cur_gaz_texture:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_36

    .line 304
    const/4 v0, 0x0

    iput v0, p0, Lfr/testudo/spacecorsair/business/ennemis/TaupeShip;->cur_gaz_texture:I

    .line 307
    :cond_36
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/ennemis/TaupeShip;->tempVector:Lfr/testudo/spacecorsair/engine/Vector2;

    const/4 v1, 0x0

    const/high16 v2, 0x41b00000    # 22.0f

    invoke-virtual {v0, v1, v2}, Lfr/testudo/spacecorsair/engine/Vector2;->set(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    move-result-object v0

    iget v1, p0, Lfr/testudo/spacecorsair/business/ennemis/TaupeShip;->spin:F

    float-to-double v2, v1

    invoke-static {v2, v3}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lfr/testudo/spacecorsair/engine/Vector2;->applyRotatation(D)Lfr/testudo/spacecorsair/engine/Vector2;

    move-result-object v0

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/ennemis/TaupeShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/engine/Vector2;->add(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 310
    const/high16 v5, 0x3f800000    # 1.0f

    .line 312
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->renderQueue:Lfr/testudo/spacecorsair/engine/RenderQueue;

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/ennemis/TaupeShip;->tempVector:Lfr/testudo/spacecorsair/engine/Vector2;

    const/4 v2, 0x0

    sget-object v3, Lfr/testudo/spacecorsair/business/ennemis/TaupeShip;->gazDrawables:[Lfr/testudo/spacecorsair/display/Drawable;

    iget v4, p0, Lfr/testudo/spacecorsair/business/ennemis/TaupeShip;->cur_gaz_texture:I

    aget-object v3, v3, v4

    iget v4, p0, Lfr/testudo/spacecorsair/business/ennemis/TaupeShip;->spin:F

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Lfr/testudo/spacecorsair/engine/RenderQueue;->addToWaitingQueue(Lfr/testudo/spacecorsair/engine/Vector2;ZLfr/testudo/spacecorsair/display/Drawable;FFZ)V

    .line 318
    :cond_64
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/ennemis/TaupeShip;->tempVector:Lfr/testudo/spacecorsair/engine/Vector2;

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/ennemis/TaupeShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/engine/Vector2;->setSameAs(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 319
    iget-object v1, p0, Lfr/testudo/spacecorsair/business/ennemis/TaupeShip;->tempVector:Lfr/testudo/spacecorsair/engine/Vector2;

    sget-object v0, Lfr/testudo/spacecorsair/business/ennemis/TaupeShip;->drawable:Lfr/testudo/spacecorsair/display/Drawable;

    iget-object v0, v0, Lfr/testudo/spacecorsair/display/Drawable;->dimensions:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v0, v0, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    neg-float v0, v0

    const/high16 v2, 0x40000000    # 2.0f

    div-float v2, v0, v2

    iget v0, p0, Lfr/testudo/spacecorsair/business/ennemis/TaupeShip;->level:I

    const/16 v3, 0xa

    if-ge v0, v3, :cond_152

    const/16 v0, 0xa

    :goto_80
    int-to-float v0, v0

    sub-float v0, v2, v0

    sget-object v2, Lfr/testudo/spacecorsair/business/ennemis/TaupeShip;->drawable:Lfr/testudo/spacecorsair/display/Drawable;

    iget-object v2, v2, Lfr/testudo/spacecorsair/display/Drawable;->dimensions:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v2, v2, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    const/high16 v3, 0x40e00000    # 7.0f

    add-float/2addr v2, v3

    invoke-virtual {v1, v0, v2}, Lfr/testudo/spacecorsair/engine/Vector2;->add(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 320
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->renderQueue:Lfr/testudo/spacecorsair/engine/RenderQueue;

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/ennemis/TaupeShip;->tempVector:Lfr/testudo/spacecorsair/engine/Vector2;

    const/4 v2, 0x0

    iget-object v3, p0, Lfr/testudo/spacecorsair/business/ennemis/TaupeShip;->levelStr:Ljava/lang/String;

    iget v4, p0, Lfr/testudo/spacecorsair/business/ennemis/TaupeShip;->levelColorR:F

    iget v5, p0, Lfr/testudo/spacecorsair/business/ennemis/TaupeShip;->levelColorG:F

    iget v6, p0, Lfr/testudo/spacecorsair/business/ennemis/TaupeShip;->levelColorB:F

    const/high16 v7, 0x3f800000    # 1.0f

    sget-object v8, Lfr/testudo/spacecorsair/textengine/TextSize;->LITTLE:Lfr/testudo/spacecorsair/textengine/TextSize;

    invoke-virtual/range {v0 .. v8}, Lfr/testudo/spacecorsair/engine/RenderQueue;->addTextToTextWaitingQueue(Lfr/testudo/spacecorsair/engine/Vector2;ZLjava/lang/String;FFFFLfr/testudo/spacecorsair/textengine/TextSize;)V

    .line 324
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/ennemis/TaupeShip;->tempVector:Lfr/testudo/spacecorsair/engine/Vector2;

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/ennemis/TaupeShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/engine/Vector2;->setSameAs(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 325
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/ennemis/TaupeShip;->tempVector:Lfr/testudo/spacecorsair/engine/Vector2;

    const/high16 v1, 0x40a00000    # 5.0f

    const/high16 v2, 0x41200000    # 10.0f

    invoke-virtual {v0, v1, v2}, Lfr/testudo/spacecorsair/engine/Vector2;->add(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 326
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->renderQueue:Lfr/testudo/spacecorsair/engine/RenderQueue;

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/ennemis/TaupeShip;->tempVector:Lfr/testudo/spacecorsair/engine/Vector2;

    iget-object v2, p0, Lfr/testudo/spacecorsair/business/ennemis/TaupeShip;->lifeBar:Lfr/testudo/spacecorsair/display/hud/InfoBarEnnemis;

    invoke-virtual {v0, v1, v2}, Lfr/testudo/spacecorsair/engine/RenderQueue;->addToWaitingQueue(Lfr/testudo/spacecorsair/engine/Vector2;Lfr/testudo/spacecorsair/display/hud/InfoBar;)V

    .line 328
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/ennemis/TaupeShip;->specificName:Ljava/lang/String;

    if-eqz v0, :cond_113

    .line 330
    iget v0, p0, Lfr/testudo/spacecorsair/business/ennemis/TaupeShip;->specificNameDecalX:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_da

    .line 331
    sget-object v0, Lfr/testudo/spacecorsair/engine/GameRenderer;->glTextNormal:Lfr/testudo/spacecorsair/textengine/GLText;

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/ennemis/TaupeShip;->specificName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/textengine/GLText;->getLength(Ljava/lang/String;)F

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lfr/testudo/spacecorsair/business/ennemis/TaupeShip;->specificNameDecalX:I

    .line 333
    :cond_da
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/ennemis/TaupeShip;->tempVector:Lfr/testudo/spacecorsair/engine/Vector2;

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/ennemis/TaupeShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/engine/Vector2;->setSameAs(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    move-result-object v0

    iget v1, p0, Lfr/testudo/spacecorsair/business/ennemis/TaupeShip;->specificNameDecalX:I

    neg-int v1, v1

    int-to-float v1, v1

    sget-object v2, Lfr/testudo/spacecorsair/business/ennemis/TaupeShip;->drawable:Lfr/testudo/spacecorsair/display/Drawable;

    iget-object v2, v2, Lfr/testudo/spacecorsair/display/Drawable;->dimensions:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v2, v2, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    const/high16 v3, 0x41c00000    # 24.0f

    add-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Lfr/testudo/spacecorsair/engine/Vector2;->add(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 335
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->renderQueue:Lfr/testudo/spacecorsair/engine/RenderQueue;

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/ennemis/TaupeShip;->tempVector:Lfr/testudo/spacecorsair/engine/Vector2;

    const/4 v2, 0x0

    iget-object v3, p0, Lfr/testudo/spacecorsair/business/ennemis/TaupeShip;->specificName:Ljava/lang/String;

    sget-object v4, Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;->ORANGE:Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;

    iget v4, v4, Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;->r:F

    sget-object v5, Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;->ORANGE:Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;

    iget v5, v5, Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;->g:F

    sget-object v6, Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;->ORANGE:Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;

    iget v6, v6, Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;->b:F

    sget-object v7, Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;->ORANGE:Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;

    iget v7, v7, Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;->a:F

    sget-object v8, Lfr/testudo/spacecorsair/textengine/TextSize;->NORMAL:Lfr/testudo/spacecorsair/textengine/TextSize;

    invoke-virtual/range {v0 .. v8}, Lfr/testudo/spacecorsair/engine/RenderQueue;->addTextToTextWaitingQueue(Lfr/testudo/spacecorsair/engine/Vector2;ZLjava/lang/String;FFFFLfr/testudo/spacecorsair/textengine/TextSize;)V

    .line 339
    :cond_113
    iget-boolean v0, p0, Lfr/testudo/spacecorsair/business/ennemis/TaupeShip;->elite:Z

    if-eqz v0, :cond_23

    .line 340
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/ennemis/TaupeShip;->tempVector:Lfr/testudo/spacecorsair/engine/Vector2;

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/ennemis/TaupeShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/engine/Vector2;->setSameAs(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    move-result-object v0

    sget-object v1, Lfr/testudo/spacecorsair/business/ennemis/TaupeShip;->drawable:Lfr/testudo/spacecorsair/display/Drawable;

    iget-object v1, v1, Lfr/testudo/spacecorsair/display/Drawable;->dimensions:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v1, v1, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    const/high16 v2, 0x41880000    # 17.0f

    add-float/2addr v1, v2

    sget-object v2, Lfr/testudo/spacecorsair/business/ennemis/TaupeShip;->drawable:Lfr/testudo/spacecorsair/display/Drawable;

    iget-object v2, v2, Lfr/testudo/spacecorsair/display/Drawable;->dimensions:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v2, v2, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    const/high16 v3, 0x41880000    # 17.0f

    add-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Lfr/testudo/spacecorsair/engine/Vector2;->add(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 341
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->renderQueue:Lfr/testudo/spacecorsair/engine/RenderQueue;

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/ennemis/TaupeShip;->tempVector:Lfr/testudo/spacecorsair/engine/Vector2;

    const/4 v2, 0x0

    sget-object v3, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->ELITE_MARK_SIZE_NORMAL:Lfr/testudo/spacecorsair/display/Drawable;

    const/high16 v4, 0x43340000    # 180.0f

    const/high16 v5, 0x3f800000    # 1.0f

    const/high16 v6, 0x3f800000    # 1.0f

    const/high16 v7, 0x3f800000    # 1.0f

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-virtual/range {v0 .. v8}, Lfr/testudo/spacecorsair/engine/RenderQueue;->addToWaitingQueue(Lfr/testudo/spacecorsair/engine/Vector2;ZLfr/testudo/spacecorsair/display/Drawable;FFFFF)V

    goto/16 :goto_23

    .line 319
    :cond_152
    const/16 v0, 0x12

    goto/16 :goto_80
.end method

.method public requestLaserShoot()V
    .registers 3

    .prologue
    .line 370
    iget v0, p0, Lfr/testudo/spacecorsair/business/ennemis/TaupeShip;->nextShootAllowed:I

    if-gtz v0, :cond_2e

    .line 373
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/ennemis/TaupeShip;->attackTarget:Lfr/testudo/spacecorsair/business/Element;

    invoke-static {p0, v0}, Lfr/testudo/spacecorsair/business/Util;->isLaserOrMissileSoundEarable(Lfr/testudo/spacecorsair/business/Element;Lfr/testudo/spacecorsair/business/Element;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 374
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->soundManager:Lfr/testudo/spacecorsair/engine/SoundManager;

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/engine/SoundManager;->playLaserEnnemis()V

    .line 376
    :cond_13
    invoke-direct {p0}, Lfr/testudo/spacecorsair/business/ennemis/TaupeShip;->processShoot()V

    .line 377
    iget v0, p0, Lfr/testudo/spacecorsair/business/ennemis/TaupeShip;->curRafale:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lfr/testudo/spacecorsair/business/ennemis/TaupeShip;->curRafale:I

    .line 379
    iget v0, p0, Lfr/testudo/spacecorsair/business/ennemis/TaupeShip;->curRafale:I

    iget v1, p0, Lfr/testudo/spacecorsair/business/ennemis/TaupeShip;->rafaleCount:I

    if-ne v0, v1, :cond_2f

    .line 380
    const/4 v0, 0x0

    iput v0, p0, Lfr/testudo/spacecorsair/business/ennemis/TaupeShip;->curRafale:I

    .line 381
    iget-wide v0, p0, Lfr/testudo/spacecorsair/business/ennemis/TaupeShip;->milleSecBetweenShots:J

    long-to-float v0, v0

    iget v1, p0, Lfr/testudo/spacecorsair/business/ennemis/TaupeShip;->alterationReloadValue:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lfr/testudo/spacecorsair/business/ennemis/TaupeShip;->nextShootAllowed:I

    .line 388
    :cond_2e
    :goto_2e
    return-void

    .line 384
    :cond_2f
    iget v0, p0, Lfr/testudo/spacecorsair/business/ennemis/TaupeShip;->timeBewteenShootInMilli:I

    int-to-float v0, v0

    iget v1, p0, Lfr/testudo/spacecorsair/business/ennemis/TaupeShip;->alterationReloadValue:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lfr/testudo/spacecorsair/business/ennemis/TaupeShip;->nextShootAllowed:I

    goto :goto_2e
.end method

.method public setElite()Lfr/testudo/spacecorsair/business/ennemis/Ennemis;
    .registers 3

    .prologue
    const/high16 v1, 0x40400000    # 3.0f

    .line 409
    invoke-super {p0}, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->setElite()Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    .line 410
    iget v0, p0, Lfr/testudo/spacecorsair/business/ennemis/TaupeShip;->xp:I

    mul-int/lit8 v0, v0, 0x4

    iput v0, p0, Lfr/testudo/spacecorsair/business/ennemis/TaupeShip;->xp:I

    .line 411
    iget v0, p0, Lfr/testudo/spacecorsair/business/ennemis/TaupeShip;->life:F

    mul-float/2addr v0, v1

    iput v0, p0, Lfr/testudo/spacecorsair/business/ennemis/TaupeShip;->life:F

    .line 412
    iget v0, p0, Lfr/testudo/spacecorsair/business/ennemis/TaupeShip;->maxLife:F

    mul-float/2addr v0, v1

    iput v0, p0, Lfr/testudo/spacecorsair/business/ennemis/TaupeShip;->maxLife:F

    .line 413
    iget v0, p0, Lfr/testudo/spacecorsair/business/ennemis/TaupeShip;->bulletDamage:F

    const v1, 0x3fd9999a    # 1.7f

    mul-float/2addr v0, v1

    iput v0, p0, Lfr/testudo/spacecorsair/business/ennemis/TaupeShip;->bulletDamage:F

    .line 414
    iget v0, p0, Lfr/testudo/spacecorsair/business/ennemis/TaupeShip;->pouseeForce:F

    const v1, 0x3f99999a    # 1.2f

    mul-float/2addr v0, v1

    iput v0, p0, Lfr/testudo/spacecorsair/business/ennemis/TaupeShip;->pouseeForce:F

    .line 415
    return-object p0
.end method

.method protected shootEnergyBullet(FF)V
    .registers 11

    .prologue
    .line 420
    iget v0, p0, Lfr/testudo/spacecorsair/business/ennemis/TaupeShip;->spin:F

    iget v1, p0, Lfr/testudo/spacecorsair/business/ennemis/TaupeShip;->shootPrecision:F

    sub-float/2addr v0, v1

    float-to-double v0, v0

    iget v2, p0, Lfr/testudo/spacecorsair/business/ennemis/TaupeShip;->shootPrecision:F

    const/high16 v3, 0x40000000    # 2.0f

    mul-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v4

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    .line 421
    iget-object v2, p0, Lfr/testudo/spacecorsair/business/ennemis/TaupeShip;->tempVector:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v2, p1, p2}, Lfr/testudo/spacecorsair/engine/Vector2;->set(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 423
    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v2

    .line 424
    invoke-static {}, Lfr/testudo/spacecorsair/business/factory/GamePools;->newEnergyLaser()Lfr/testudo/spacecorsair/business/projectiles/EnergyLaser;

    move-result-object v4

    iget v5, p0, Lfr/testudo/spacecorsair/business/ennemis/TaupeShip;->bulletDamage:F

    iget v6, p0, Lfr/testudo/spacecorsair/business/ennemis/TaupeShip;->bulletLifeTime:I

    iget-object v7, p0, Lfr/testudo/spacecorsair/business/ennemis/TaupeShip;->specialLaserAlteration:Lfr/testudo/spacecorsair/business/loot/stuff/alteration/AlterationSpecs;

    invoke-virtual {v4, v5, v6, p0, v7}, Lfr/testudo/spacecorsair/business/projectiles/EnergyLaser;->init(FILfr/testudo/spacecorsair/business/Element;Lfr/testudo/spacecorsair/business/loot/stuff/alteration/AlterationSpecs;)Lfr/testudo/spacecorsair/business/projectiles/EnergyLaser;

    move-result-object v4

    .line 426
    iget-object v5, p0, Lfr/testudo/spacecorsair/business/ennemis/TaupeShip;->tempVector:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v5, v2, v3}, Lfr/testudo/spacecorsair/engine/Vector2;->applyRotatation(D)Lfr/testudo/spacecorsair/engine/Vector2;

    move-result-object v5

    .line 427
    iget-object v6, v4, Lfr/testudo/spacecorsair/business/projectiles/EnergyLaser;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget-object v7, p0, Lfr/testudo/spacecorsair/business/ennemis/TaupeShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v6, v7}, Lfr/testudo/spacecorsair/engine/Vector2;->setSameAs(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    move-result-object v6

    invoke-virtual {v6, v5}, Lfr/testudo/spacecorsair/engine/Vector2;->add(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 428
    iget-object v5, v4, Lfr/testudo/spacecorsair/business/projectiles/EnergyLaser;->speed:Lfr/testudo/spacecorsair/engine/Vector2;

    const/4 v6, 0x0

    const/high16 v7, -0x3f000000    # -8.0f

    invoke-virtual {v5, v6, v7}, Lfr/testudo/spacecorsair/engine/Vector2;->set(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 429
    iget-object v5, v4, Lfr/testudo/spacecorsair/business/projectiles/EnergyLaser;->speed:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v5, v2, v3}, Lfr/testudo/spacecorsair/engine/Vector2;->applyRotatation(D)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 430
    iget-object v2, v4, Lfr/testudo/spacecorsair/business/projectiles/EnergyLaser;->speed:Lfr/testudo/spacecorsair/engine/Vector2;

    iget-object v3, p0, Lfr/testudo/spacecorsair/business/ennemis/TaupeShip;->speed:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v2, v3}, Lfr/testudo/spacecorsair/engine/Vector2;->add(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 431
    double-to-float v0, v0

    iput v0, v4, Lfr/testudo/spacecorsair/business/projectiles/EnergyLaser;->spin:F

    .line 432
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/Game;->currentLevel:Lfr/testudo/spacecorsair/game/levels/Level;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/levels/Level;->toAdd:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 433
    iget-wide v0, p0, Lfr/testudo/spacecorsair/business/ennemis/TaupeShip;->milleSecBetweenShots:J

    long-to-float v0, v0

    iget v1, p0, Lfr/testudo/spacecorsair/business/ennemis/TaupeShip;->alterationReloadValue:F

    mul-float/2addr v0, v1

    float-to-long v0, v0

    iput-wide v0, p0, Lfr/testudo/spacecorsair/business/ennemis/TaupeShip;->nextShootAlowed:J

    .line 434
    return-void
.end method
