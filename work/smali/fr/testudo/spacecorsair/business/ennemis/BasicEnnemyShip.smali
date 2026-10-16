.class public Lfr/testudo/spacecorsair/business/ennemis/BasicEnnemyShip;
.super Lfr/testudo/spacecorsair/business/ennemis/Ennemis;
.source "SourceFile"


# static fields
.field public static final GAZ_TEXTURE_COUNT:I = 0x3

.field public static final OBJECT_NAME:Ljava/lang/String; = "BasicShip"

.field public static drawable:Lfr/testudo/spacecorsair/display/Drawable;

.field public static drawableDim:Lfr/testudo/spacecorsair/engine/Vector2;

.field public static drawableDimension:Lfr/testudo/spacecorsair/engine/Vector2;

.field private static gazDrawables:[Lfr/testudo/spacecorsair/display/Drawable;

.field public static miniDrawable:Lfr/testudo/spacecorsair/display/Drawable;

.field public static physicalDim:Lfr/testudo/spacecorsair/engine/Vector2;


# instance fields
.field public cur_gaz_texture:I

.field public currentMissileReload:J

.field public miniDistanceForMissile:J

.field public missileCount:I

.field public missileDamage:I

.field public missileReloadTimeInMilli:J

.field public pouseeForceAbimed:F

.field private targetAngle:F


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    const/high16 v2, 0x42800000    # 64.0f

    const/high16 v1, 0x42480000    # 50.0f

    .line 24
    new-instance v0, Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-direct {v0, v1, v1}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>(FF)V

    sput-object v0, Lfr/testudo/spacecorsair/business/ennemis/BasicEnnemyShip;->physicalDim:Lfr/testudo/spacecorsair/engine/Vector2;

    .line 25
    new-instance v0, Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-direct {v0, v1, v1}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>(FF)V

    sput-object v0, Lfr/testudo/spacecorsair/business/ennemis/BasicEnnemyShip;->drawableDim:Lfr/testudo/spacecorsair/engine/Vector2;

    .line 26
    new-instance v0, Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-direct {v0, v2, v2}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>(FF)V

    sput-object v0, Lfr/testudo/spacecorsair/business/ennemis/BasicEnnemyShip;->drawableDimension:Lfr/testudo/spacecorsair/engine/Vector2;

    .line 47
    const/4 v0, 0x0

    sput-object v0, Lfr/testudo/spacecorsair/business/ennemis/BasicEnnemyShip;->gazDrawables:[Lfr/testudo/spacecorsair/display/Drawable;

    return-void
.end method

.method public constructor <init>()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    const/4 v2, 0x0

    const/high16 v3, 0x3f400000    # 0.75f

    .line 78
    invoke-direct {p0}, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;-><init>()V

    .line 27
    iput v4, p0, Lfr/testudo/spacecorsair/business/ennemis/BasicEnnemyShip;->targetAngle:F

    .line 31
    iput v2, p0, Lfr/testudo/spacecorsair/business/ennemis/BasicEnnemyShip;->missileCount:I

    .line 32
    const-wide/16 v0, 0x7530

    iput-wide v0, p0, Lfr/testudo/spacecorsair/business/ennemis/BasicEnnemyShip;->missileReloadTimeInMilli:J

    .line 33
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lfr/testudo/spacecorsair/business/ennemis/BasicEnnemyShip;->currentMissileReload:J

    .line 34
    const-wide/16 v0, 0x3e8

    iput-wide v0, p0, Lfr/testudo/spacecorsair/business/ennemis/BasicEnnemyShip;->miniDistanceForMissile:J

    .line 35
    const/high16 v0, 0x3e800000    # 0.25f

    iput v0, p0, Lfr/testudo/spacecorsair/business/ennemis/BasicEnnemyShip;->pouseeForceAbimed:F

    .line 37
    iput v2, p0, Lfr/testudo/spacecorsair/business/ennemis/BasicEnnemyShip;->missileDamage:I

    .line 304
    iput v2, p0, Lfr/testudo/spacecorsair/business/ennemis/BasicEnnemyShip;->cur_gaz_texture:I

    .line 79
    const-string v0, "BasicShip"

    iput-object v0, p0, Lfr/testudo/spacecorsair/business/ennemis/BasicEnnemyShip;->objectName:Ljava/lang/String;

    .line 80
    new-instance v0, Lfr/testudo/spacecorsair/engine/Vector2;

    sget-object v1, Lfr/testudo/spacecorsair/business/ennemis/BasicEnnemyShip;->drawableDim:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v1, v1, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    neg-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    const/high16 v2, 0x40a00000    # 5.0f

    sub-float/2addr v1, v2

    invoke-direct {v0, v4, v1}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>(FF)V

    sget-object v1, Lfr/testudo/spacecorsair/business/ennemis/BasicEnnemyShip;->drawableDim:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v1, v1, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    float-to-int v1, v1

    add-int/lit8 v1, v1, -0x5

    const/4 v2, 0x6

    invoke-static {v0, v1, v2}, Lfr/testudo/spacecorsair/display/hud/InfoBarEnnemis;->newRed(Lfr/testudo/spacecorsair/engine/Vector2;II)Lfr/testudo/spacecorsair/display/hud/InfoBarEnnemis;

    move-result-object v0

    iput-object v0, p0, Lfr/testudo/spacecorsair/business/ennemis/BasicEnnemyShip;->lifeBar:Lfr/testudo/spacecorsair/display/hud/InfoBarEnnemis;

    .line 81
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/ennemis/BasicEnnemyShip;->lifeBar:Lfr/testudo/spacecorsair/display/hud/InfoBarEnnemis;

    iput v3, v0, Lfr/testudo/spacecorsair/display/hud/InfoBarEnnemis;->extR:F

    .line 82
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/ennemis/BasicEnnemyShip;->lifeBar:Lfr/testudo/spacecorsair/display/hud/InfoBarEnnemis;

    iput v3, v0, Lfr/testudo/spacecorsair/display/hud/InfoBarEnnemis;->extG:F

    .line 83
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/ennemis/BasicEnnemyShip;->lifeBar:Lfr/testudo/spacecorsair/display/hud/InfoBarEnnemis;

    iput v3, v0, Lfr/testudo/spacecorsair/display/hud/InfoBarEnnemis;->extB:F

    .line 84
    return-void
.end method

.method public static setGazTextures(Lfr/testudo/spacecorsair/display/Texture;Lfr/testudo/spacecorsair/display/Texture;Lfr/testudo/spacecorsair/display/Texture;)V
    .registers 7

    .prologue
    .line 51
    const/4 v0, 0x3

    new-array v0, v0, [Lfr/testudo/spacecorsair/display/Drawable;

    const/4 v1, 0x0

    new-instance v2, Lfr/testudo/spacecorsair/display/Drawable;

    sget-object v3, Lfr/testudo/spacecorsair/business/ennemis/BasicEnnemyShip;->drawableDimension:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-direct {v2, v3, p0}, Lfr/testudo/spacecorsair/display/Drawable;-><init>(Lfr/testudo/spacecorsair/engine/Vector2;Lfr/testudo/spacecorsair/display/Texture;)V

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-instance v2, Lfr/testudo/spacecorsair/display/Drawable;

    sget-object v3, Lfr/testudo/spacecorsair/business/ennemis/BasicEnnemyShip;->drawableDimension:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-direct {v2, v3, p1}, Lfr/testudo/spacecorsair/display/Drawable;-><init>(Lfr/testudo/spacecorsair/engine/Vector2;Lfr/testudo/spacecorsair/display/Texture;)V

    aput-object v2, v0, v1

    const/4 v1, 0x2

    new-instance v2, Lfr/testudo/spacecorsair/display/Drawable;

    sget-object v3, Lfr/testudo/spacecorsair/business/ennemis/BasicEnnemyShip;->drawableDimension:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-direct {v2, v3, p2}, Lfr/testudo/spacecorsair/display/Drawable;-><init>(Lfr/testudo/spacecorsair/engine/Vector2;Lfr/testudo/spacecorsair/display/Texture;)V

    aput-object v2, v0, v1

    sput-object v0, Lfr/testudo/spacecorsair/business/ennemis/BasicEnnemyShip;->gazDrawables:[Lfr/testudo/spacecorsair/display/Drawable;

    .line 58
    return-void
.end method

.method public static setTexture(Lfr/testudo/spacecorsair/display/Texture;)V
    .registers 3

    .prologue
    .line 62
    new-instance v0, Lfr/testudo/spacecorsair/display/Drawable;

    sget-object v1, Lfr/testudo/spacecorsair/business/ennemis/BasicEnnemyShip;->drawableDim:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-direct {v0, v1, p0}, Lfr/testudo/spacecorsair/display/Drawable;-><init>(Lfr/testudo/spacecorsair/engine/Vector2;Lfr/testudo/spacecorsair/display/Texture;)V

    sput-object v0, Lfr/testudo/spacecorsair/business/ennemis/BasicEnnemyShip;->drawable:Lfr/testudo/spacecorsair/display/Drawable;

    .line 64
    return-void
.end method


# virtual methods
.method public applyDamage(FLfr/testudo/spacecorsair/business/Element;Lfr/testudo/spacecorsair/business/projectiles/Projectile;)V
    .registers 6

    .prologue
    .line 274
    invoke-super {p0, p1, p2, p3}, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->applyDamage(FLfr/testudo/spacecorsair/business/Element;Lfr/testudo/spacecorsair/business/projectiles/Projectile;)V

    .line 275
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/ennemis/BasicEnnemyShip;->lifeBar:Lfr/testudo/spacecorsair/display/hud/InfoBarEnnemis;

    iget v1, p0, Lfr/testudo/spacecorsair/business/ennemis/BasicEnnemyShip;->lifeInPourc:F

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/display/hud/InfoBarEnnemis;->setValue(F)V

    .line 278
    iget v0, p0, Lfr/testudo/spacecorsair/business/ennemis/BasicEnnemyShip;->lifeInPourc:F

    const/high16 v1, 0x41700000    # 15.0f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_16

    .line 279
    iget v0, p0, Lfr/testudo/spacecorsair/business/ennemis/BasicEnnemyShip;->pouseeForceAbimed:F

    iput v0, p0, Lfr/testudo/spacecorsair/business/ennemis/BasicEnnemyShip;->pouseeForce:F

    .line 281
    :cond_16
    return-void
.end method

.method protected doAttackIa(JJ)V
    .registers 12

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 178
    const-wide/16 v4, 0x15e

    cmp-long v0, p3, v4

    if-lez v0, :cond_65

    move v0, v1

    :goto_9
    iput-boolean v0, p0, Lfr/testudo/spacecorsair/business/ennemis/BasicEnnemyShip;->isPousee:Z

    .line 180
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/ennemis/BasicEnnemyShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget-object v3, p0, Lfr/testudo/spacecorsair/business/ennemis/BasicEnnemyShip;->attackTarget:Lfr/testudo/spacecorsair/business/Element;

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

    iput v0, p0, Lfr/testudo/spacecorsair/business/ennemis/BasicEnnemyShip;->targetAngle:F

    .line 184
    iget v0, p0, Lfr/testudo/spacecorsair/business/ennemis/BasicEnnemyShip;->targetAngle:F

    iget v3, p0, Lfr/testudo/spacecorsair/business/ennemis/BasicEnnemyShip;->spin:F

    sub-float/2addr v0, v3

    float-to-int v0, v0

    .line 185
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 187
    const/4 v3, 0x5

    if-ge v0, v3, :cond_3d

    long-to-float v3, p3

    iget v4, p0, Lfr/testudo/spacecorsair/business/ennemis/BasicEnnemyShip;->distanceShoot:F

    cmpg-float v3, v3, v4

    if-gez v3, :cond_3d

    .line 188
    invoke-virtual {p0}, Lfr/testudo/spacecorsair/business/ennemis/BasicEnnemyShip;->shoot()V

    .line 191
    :cond_3d
    const/4 v3, 0x4

    if-ge v0, v3, :cond_67

    .line 192
    const/4 v3, 0x0

    iput v3, p0, Lfr/testudo/spacecorsair/business/ennemis/BasicEnnemyShip;->spinSpeed:F

    .line 211
    :goto_43
    const/16 v3, 0x50

    if-ge v0, v3, :cond_91

    .line 212
    const-wide/16 v2, 0xfa

    cmp-long v0, p3, v2

    if-lez v0, :cond_4f

    .line 213
    iput-boolean v1, p0, Lfr/testudo/spacecorsair/business/ennemis/BasicEnnemyShip;->isPousee:Z

    .line 220
    :cond_4f
    :goto_4f
    iget-wide v0, p0, Lfr/testudo/spacecorsair/business/ennemis/BasicEnnemyShip;->currentMissileReload:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_64

    iget v0, p0, Lfr/testudo/spacecorsair/business/ennemis/BasicEnnemyShip;->missileCount:I

    if-lez v0, :cond_64

    .line 221
    iget-wide v0, p0, Lfr/testudo/spacecorsair/business/ennemis/BasicEnnemyShip;->miniDistanceForMissile:J

    cmp-long v0, p3, v0

    if-lez v0, :cond_64

    .line 222
    invoke-virtual {p0}, Lfr/testudo/spacecorsair/business/ennemis/BasicEnnemyShip;->shootMissile()V

    .line 227
    :cond_64
    return-void

    :cond_65
    move v0, v2

    .line 178
    goto :goto_9

    .line 194
    :cond_67
    const/16 v3, 0xb4

    if-gt v0, v3, :cond_7e

    .line 196
    iget v3, p0, Lfr/testudo/spacecorsair/business/ennemis/BasicEnnemyShip;->spin:F

    iget v4, p0, Lfr/testudo/spacecorsair/business/ennemis/BasicEnnemyShip;->targetAngle:F

    cmpl-float v3, v3, v4

    if-lez v3, :cond_79

    .line 197
    iget v3, p0, Lfr/testudo/spacecorsair/business/ennemis/BasicEnnemyShip;->maxTurnFactor:F

    neg-float v3, v3

    iput v3, p0, Lfr/testudo/spacecorsair/business/ennemis/BasicEnnemyShip;->spinSpeed:F

    goto :goto_43

    .line 199
    :cond_79
    iget v3, p0, Lfr/testudo/spacecorsair/business/ennemis/BasicEnnemyShip;->maxTurnFactor:F

    iput v3, p0, Lfr/testudo/spacecorsair/business/ennemis/BasicEnnemyShip;->spinSpeed:F

    goto :goto_43

    .line 203
    :cond_7e
    iget v3, p0, Lfr/testudo/spacecorsair/business/ennemis/BasicEnnemyShip;->spin:F

    iget v4, p0, Lfr/testudo/spacecorsair/business/ennemis/BasicEnnemyShip;->targetAngle:F

    cmpg-float v3, v3, v4

    if-gez v3, :cond_8c

    .line 204
    iget v3, p0, Lfr/testudo/spacecorsair/business/ennemis/BasicEnnemyShip;->maxTurnFactor:F

    neg-float v3, v3

    iput v3, p0, Lfr/testudo/spacecorsair/business/ennemis/BasicEnnemyShip;->spinSpeed:F

    goto :goto_43

    .line 206
    :cond_8c
    iget v3, p0, Lfr/testudo/spacecorsair/business/ennemis/BasicEnnemyShip;->maxTurnFactor:F

    iput v3, p0, Lfr/testudo/spacecorsair/business/ennemis/BasicEnnemyShip;->spinSpeed:F

    goto :goto_43

    .line 216
    :cond_91
    iput-boolean v2, p0, Lfr/testudo/spacecorsair/business/ennemis/BasicEnnemyShip;->isPousee:Z

    goto :goto_4f
.end method

.method public doPhysic(J)V
    .registers 8

    .prologue
    const-wide/16 v2, 0x0

    .line 164
    invoke-super {p0, p1, p2}, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->doPhysic(J)V

    .line 165
    iget-wide v0, p0, Lfr/testudo/spacecorsair/business/ennemis/BasicEnnemyShip;->nextShootAlowed:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_10

    .line 166
    iget-wide v0, p0, Lfr/testudo/spacecorsair/business/ennemis/BasicEnnemyShip;->nextShootAlowed:J

    sub-long/2addr v0, p1

    iput-wide v0, p0, Lfr/testudo/spacecorsair/business/ennemis/BasicEnnemyShip;->nextShootAlowed:J

    .line 170
    :cond_10
    iget-wide v0, p0, Lfr/testudo/spacecorsair/business/ennemis/BasicEnnemyShip;->currentMissileReload:J

    cmp-long v0, v0, v2

    if-ltz v0, :cond_1b

    .line 171
    iget-wide v0, p0, Lfr/testudo/spacecorsair/business/ennemis/BasicEnnemyShip;->currentMissileReload:J

    sub-long/2addr v0, p1

    iput-wide v0, p0, Lfr/testudo/spacecorsair/business/ennemis/BasicEnnemyShip;->currentMissileReload:J

    .line 174
    :cond_1b
    return-void
.end method

.method public getDrawableObject()Lfr/testudo/spacecorsair/display/Drawable;
    .registers 2

    .prologue
    .line 68
    sget-object v0, Lfr/testudo/spacecorsair/business/ennemis/BasicEnnemyShip;->drawable:Lfr/testudo/spacecorsair/display/Drawable;

    return-object v0
.end method

.method public getMiniDrawableObject()Lfr/testudo/spacecorsair/display/Drawable;
    .registers 2

    .prologue
    .line 43
    sget-object v0, Lfr/testudo/spacecorsair/business/ennemis/BasicEnnemyShip;->miniDrawable:Lfr/testudo/spacecorsair/display/Drawable;

    return-object v0
.end method

.method public getPhysicDimension()Lfr/testudo/spacecorsair/engine/Vector2;
    .registers 2

    .prologue
    .line 73
    sget-object v0, Lfr/testudo/spacecorsair/business/ennemis/BasicEnnemyShip;->physicalDim:Lfr/testudo/spacecorsair/engine/Vector2;

    return-object v0
.end method

.method public initLevelConfig(Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;I)Lfr/testudo/spacecorsair/business/ennemis/BasicEnnemyShip;
    .registers 7

    .prologue
    const v3, 0x459c4000    # 5000.0f

    const/high16 v2, 0x40000000    # 2.0f

    .line 88
    invoke-super {p0, p2}, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->init(I)Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    .line 91
    iget v0, p1, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->life:I

    int-to-float v0, v0

    iput v0, p0, Lfr/testudo/spacecorsair/business/ennemis/BasicEnnemyShip;->life:F

    .line 92
    iget v0, p1, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->xp:I

    iput v0, p0, Lfr/testudo/spacecorsair/business/ennemis/BasicEnnemyShip;->xp:I

    .line 93
    iget v0, p1, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->life:I

    int-to-float v0, v0

    iput v0, p0, Lfr/testudo/spacecorsair/business/ennemis/BasicEnnemyShip;->maxLife:F

    .line 94
    iget v0, p1, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->shootReload:I

    int-to-long v0, v0

    iput-wide v0, p0, Lfr/testudo/spacecorsair/business/ennemis/BasicEnnemyShip;->milleSecBetweenShots:J

    .line 95
    iget v0, p1, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->shootDamage:I

    int-to-float v0, v0

    iput v0, p0, Lfr/testudo/spacecorsair/business/ennemis/BasicEnnemyShip;->bulletDamage:F

    .line 96
    iget v0, p1, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->missileCount:I

    iput v0, p0, Lfr/testudo/spacecorsair/business/ennemis/BasicEnnemyShip;->missileCount:I

    .line 97
    iget v0, p1, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->missileReloadTime:I

    int-to-long v0, v0

    iput-wide v0, p0, Lfr/testudo/spacecorsair/business/ennemis/BasicEnnemyShip;->missileReloadTimeInMilli:J

    .line 98
    iget v0, p1, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->missileReloadTime:I

    int-to-long v0, v0

    iput-wide v0, p0, Lfr/testudo/spacecorsair/business/ennemis/BasicEnnemyShip;->currentMissileReload:J

    .line 99
    iget v0, p1, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->missileMinDistance:I

    int-to-long v0, v0

    iput-wide v0, p0, Lfr/testudo/spacecorsair/business/ennemis/BasicEnnemyShip;->miniDistanceForMissile:J

    .line 100
    iget-object v0, p1, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->lootConfig:Lfr/testudo/spacecorsair/business/loot/LootConfig;

    iput-object v0, p0, Lfr/testudo/spacecorsair/business/ennemis/BasicEnnemyShip;->lootConfig:Lfr/testudo/spacecorsair/business/loot/LootConfig;

    .line 101
    iget v0, p1, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->maxTurnFactor:F

    iput v0, p0, Lfr/testudo/spacecorsair/business/ennemis/BasicEnnemyShip;->maxTurnFactor:F

    .line 102
    iget v0, p1, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->missileDamage:I

    iput v0, p0, Lfr/testudo/spacecorsair/business/ennemis/BasicEnnemyShip;->missileDamage:I

    .line 105
    const/high16 v0, 0x44480000    # 800.0f

    iput v0, p0, Lfr/testudo/spacecorsair/business/ennemis/BasicEnnemyShip;->distanceShoot:F

    .line 106
    const/high16 v0, 0x425c0000    # 55.0f

    iput v0, p0, Lfr/testudo/spacecorsair/business/ennemis/BasicEnnemyShip;->mass:F

    .line 107
    const v0, 0x3ec28f5c    # 0.38f

    iput v0, p0, Lfr/testudo/spacecorsair/business/ennemis/BasicEnnemyShip;->pouseeForce:F

    .line 108
    const v0, 0x3f824dd3    # 1.018f

    iput v0, p0, Lfr/testudo/spacecorsair/business/ennemis/BasicEnnemyShip;->speedDeperditionfactor:F

    .line 109
    const/high16 v0, 0x3e800000    # 0.25f

    iput v0, p0, Lfr/testudo/spacecorsair/business/ennemis/BasicEnnemyShip;->pouseeForceAbimed:F

    .line 112
    iput v3, p0, Lfr/testudo/spacecorsair/business/ennemis/BasicEnnemyShip;->desengagementDistance:F

    .line 113
    iput v2, p0, Lfr/testudo/spacecorsair/business/ennemis/BasicEnnemyShip;->shootPrecision:F

    .line 114
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/ennemis/BasicEnnemyShip;->lifeBar:Lfr/testudo/spacecorsair/display/hud/InfoBarEnnemis;

    const/high16 v1, 0x42c80000    # 100.0f

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/display/hud/InfoBarEnnemis;->setValue(F)V

    .line 117
    const/4 v0, 0x1

    iput-boolean v0, p0, Lfr/testudo/spacecorsair/business/ennemis/BasicEnnemyShip;->drawOnRadar:Z

    .line 118
    iput v2, p0, Lfr/testudo/spacecorsair/business/ennemis/BasicEnnemyShip;->radarPointSize:F

    .line 119
    iput v3, p0, Lfr/testudo/spacecorsair/business/ennemis/BasicEnnemyShip;->distanceToPlayer:F

    .line 120
    const/16 v0, 0x96

    iput v0, p0, Lfr/testudo/spacecorsair/business/ennemis/BasicEnnemyShip;->precisionToTarget:I

    .line 121
    const/16 v0, 0x3e8

    invoke-virtual {p0, v0}, Lfr/testudo/spacecorsair/business/ennemis/BasicEnnemyShip;->setMitigedDistance(I)V

    .line 125
    return-object p0
.end method

.method public onAttackTargetStart()V
    .registers 3

    .prologue
    .line 232
    iget-wide v0, p0, Lfr/testudo/spacecorsair/business/ennemis/BasicEnnemyShip;->missileReloadTimeInMilli:J

    iput-wide v0, p0, Lfr/testudo/spacecorsair/business/ennemis/BasicEnnemyShip;->currentMissileReload:J

    .line 233
    return-void
.end method

.method public onAttackTargetStop()V
    .registers 1

    .prologue
    .line 237
    return-void
.end method

.method public onDestroyed(Z)V
    .registers 4

    .prologue
    .line 290
    invoke-static {}, Lfr/testudo/spacecorsair/business/factory/GamePools;->newRandomExplode()Lfr/testudo/spacecorsair/display/ExplosionAnim;

    move-result-object v0

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/ennemis/BasicEnnemyShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v0, v1, p0}, Lfr/testudo/spacecorsair/display/ExplosionAnim;->init(Lfr/testudo/spacecorsair/engine/Vector2;Lfr/testudo/spacecorsair/business/Element;)Lfr/testudo/spacecorsair/display/ExplosionAnim;

    move-result-object v0

    .line 291
    sget-object v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v1, v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v1, v1, Lfr/testudo/spacecorsair/game/Game;->currentLevel:Lfr/testudo/spacecorsair/game/levels/Level;

    iget-object v1, v1, Lfr/testudo/spacecorsair/game/levels/Level;->toAddAnimated:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 293
    const/4 v0, 0x2

    invoke-static {p0, v0}, Lfr/testudo/spacecorsair/display/ParticuleFactory;->addWhite(Lfr/testudo/spacecorsair/business/Element;I)V

    .line 294
    const/4 v0, 0x4

    invoke-static {p0, v0}, Lfr/testudo/spacecorsair/display/ParticuleFactory;->addRed(Lfr/testudo/spacecorsair/business/Element;I)V

    .line 295
    const/4 v0, 0x3

    invoke-static {p0, v0}, Lfr/testudo/spacecorsair/display/ParticuleFactory;->addYellow(Lfr/testudo/spacecorsair/business/Element;I)V

    .line 296
    invoke-super {p0, p1}, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->onDestroyed(Z)V

    .line 298
    return-void
.end method

.method public registerYourselfToDrawQueue()V
    .registers 10

    .prologue
    .line 310
    invoke-super {p0}, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->registerYourselfToDrawQueue()V

    .line 315
    iget-boolean v0, p0, Lfr/testudo/spacecorsair/business/ennemis/BasicEnnemyShip;->isPousee:Z

    if-eqz v0, :cond_43

    .line 317
    iget v0, p0, Lfr/testudo/spacecorsair/business/ennemis/BasicEnnemyShip;->cur_gaz_texture:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lfr/testudo/spacecorsair/business/ennemis/BasicEnnemyShip;->cur_gaz_texture:I

    .line 318
    iget v0, p0, Lfr/testudo/spacecorsair/business/ennemis/BasicEnnemyShip;->cur_gaz_texture:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_15

    .line 319
    const/4 v0, 0x0

    iput v0, p0, Lfr/testudo/spacecorsair/business/ennemis/BasicEnnemyShip;->cur_gaz_texture:I

    .line 322
    :cond_15
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/ennemis/BasicEnnemyShip;->tempVector:Lfr/testudo/spacecorsair/engine/Vector2;

    const/4 v1, 0x0

    const/high16 v2, 0x41a00000    # 20.0f

    invoke-virtual {v0, v1, v2}, Lfr/testudo/spacecorsair/engine/Vector2;->set(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    move-result-object v0

    iget v1, p0, Lfr/testudo/spacecorsair/business/ennemis/BasicEnnemyShip;->spin:F

    float-to-double v2, v1

    invoke-static {v2, v3}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lfr/testudo/spacecorsair/engine/Vector2;->applyRotatation(D)Lfr/testudo/spacecorsair/engine/Vector2;

    move-result-object v0

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/ennemis/BasicEnnemyShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/engine/Vector2;->add(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 325
    const/high16 v5, 0x3f800000    # 1.0f

    .line 327
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->renderQueue:Lfr/testudo/spacecorsair/engine/RenderQueue;

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/ennemis/BasicEnnemyShip;->tempVector:Lfr/testudo/spacecorsair/engine/Vector2;

    const/4 v2, 0x0

    sget-object v3, Lfr/testudo/spacecorsair/business/ennemis/BasicEnnemyShip;->gazDrawables:[Lfr/testudo/spacecorsair/display/Drawable;

    iget v4, p0, Lfr/testudo/spacecorsair/business/ennemis/BasicEnnemyShip;->cur_gaz_texture:I

    aget-object v3, v3, v4

    iget v4, p0, Lfr/testudo/spacecorsair/business/ennemis/BasicEnnemyShip;->spin:F

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Lfr/testudo/spacecorsair/engine/RenderQueue;->addToWaitingQueue(Lfr/testudo/spacecorsair/engine/Vector2;ZLfr/testudo/spacecorsair/display/Drawable;FFZ)V

    .line 335
    :cond_43
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/ennemis/BasicEnnemyShip;->tempVector:Lfr/testudo/spacecorsair/engine/Vector2;

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/ennemis/BasicEnnemyShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/engine/Vector2;->setSameAs(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 336
    iget-object v1, p0, Lfr/testudo/spacecorsair/business/ennemis/BasicEnnemyShip;->tempVector:Lfr/testudo/spacecorsair/engine/Vector2;

    sget-object v0, Lfr/testudo/spacecorsair/business/ennemis/BasicEnnemyShip;->drawable:Lfr/testudo/spacecorsair/display/Drawable;

    iget-object v0, v0, Lfr/testudo/spacecorsair/display/Drawable;->dimensions:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v0, v0, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    neg-float v0, v0

    const/high16 v2, 0x40000000    # 2.0f

    div-float v2, v0, v2

    iget v0, p0, Lfr/testudo/spacecorsair/business/ennemis/BasicEnnemyShip;->level:I

    const/16 v3, 0xa

    if-ge v0, v3, :cond_131

    const/16 v0, 0xa

    :goto_5f
    int-to-float v0, v0

    sub-float v0, v2, v0

    sget-object v2, Lfr/testudo/spacecorsair/business/ennemis/BasicEnnemyShip;->drawable:Lfr/testudo/spacecorsair/display/Drawable;

    iget-object v2, v2, Lfr/testudo/spacecorsair/display/Drawable;->dimensions:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v2, v2, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    const/high16 v3, 0x41000000    # 8.0f

    add-float/2addr v2, v3

    invoke-virtual {v1, v0, v2}, Lfr/testudo/spacecorsair/engine/Vector2;->add(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 337
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->renderQueue:Lfr/testudo/spacecorsair/engine/RenderQueue;

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/ennemis/BasicEnnemyShip;->tempVector:Lfr/testudo/spacecorsair/engine/Vector2;

    const/4 v2, 0x0

    iget-object v3, p0, Lfr/testudo/spacecorsair/business/ennemis/BasicEnnemyShip;->levelStr:Ljava/lang/String;

    iget v4, p0, Lfr/testudo/spacecorsair/business/ennemis/BasicEnnemyShip;->levelColorR:F

    iget v5, p0, Lfr/testudo/spacecorsair/business/ennemis/BasicEnnemyShip;->levelColorG:F

    iget v6, p0, Lfr/testudo/spacecorsair/business/ennemis/BasicEnnemyShip;->levelColorB:F

    const v7, 0x3f4ccccd    # 0.8f

    sget-object v8, Lfr/testudo/spacecorsair/textengine/TextSize;->LITTLE:Lfr/testudo/spacecorsair/textengine/TextSize;

    invoke-virtual/range {v0 .. v8}, Lfr/testudo/spacecorsair/engine/RenderQueue;->addTextToTextWaitingQueue(Lfr/testudo/spacecorsair/engine/Vector2;ZLjava/lang/String;FFFFLfr/testudo/spacecorsair/textengine/TextSize;)V

    .line 340
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/ennemis/BasicEnnemyShip;->tempVector:Lfr/testudo/spacecorsair/engine/Vector2;

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/ennemis/BasicEnnemyShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/engine/Vector2;->setSameAs(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 341
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/ennemis/BasicEnnemyShip;->tempVector:Lfr/testudo/spacecorsair/engine/Vector2;

    const/high16 v1, 0x40a00000    # 5.0f

    const/high16 v2, 0x41200000    # 10.0f

    invoke-virtual {v0, v1, v2}, Lfr/testudo/spacecorsair/engine/Vector2;->add(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 342
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->renderQueue:Lfr/testudo/spacecorsair/engine/RenderQueue;

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/ennemis/BasicEnnemyShip;->tempVector:Lfr/testudo/spacecorsair/engine/Vector2;

    iget-object v2, p0, Lfr/testudo/spacecorsair/business/ennemis/BasicEnnemyShip;->lifeBar:Lfr/testudo/spacecorsair/display/hud/InfoBarEnnemis;

    invoke-virtual {v0, v1, v2}, Lfr/testudo/spacecorsair/engine/RenderQueue;->addToWaitingQueue(Lfr/testudo/spacecorsair/engine/Vector2;Lfr/testudo/spacecorsair/display/hud/InfoBar;)V

    .line 346
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/ennemis/BasicEnnemyShip;->specificName:Ljava/lang/String;

    if-eqz v0, :cond_f3

    .line 348
    iget v0, p0, Lfr/testudo/spacecorsair/business/ennemis/BasicEnnemyShip;->specificNameDecalX:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_ba

    .line 349
    sget-object v0, Lfr/testudo/spacecorsair/engine/GameRenderer;->glTextNormal:Lfr/testudo/spacecorsair/textengine/GLText;

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/ennemis/BasicEnnemyShip;->specificName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/textengine/GLText;->getLength(Ljava/lang/String;)F

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lfr/testudo/spacecorsair/business/ennemis/BasicEnnemyShip;->specificNameDecalX:I

    .line 351
    :cond_ba
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/ennemis/BasicEnnemyShip;->tempVector:Lfr/testudo/spacecorsair/engine/Vector2;

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/ennemis/BasicEnnemyShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/engine/Vector2;->setSameAs(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    move-result-object v0

    iget v1, p0, Lfr/testudo/spacecorsair/business/ennemis/BasicEnnemyShip;->specificNameDecalX:I

    neg-int v1, v1

    int-to-float v1, v1

    sget-object v2, Lfr/testudo/spacecorsair/business/ennemis/BasicEnnemyShip;->drawable:Lfr/testudo/spacecorsair/display/Drawable;

    iget-object v2, v2, Lfr/testudo/spacecorsair/display/Drawable;->dimensions:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v2, v2, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    const/high16 v3, 0x41c00000    # 24.0f

    add-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Lfr/testudo/spacecorsair/engine/Vector2;->add(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 352
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->renderQueue:Lfr/testudo/spacecorsair/engine/RenderQueue;

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/ennemis/BasicEnnemyShip;->tempVector:Lfr/testudo/spacecorsair/engine/Vector2;

    const/4 v2, 0x0

    iget-object v3, p0, Lfr/testudo/spacecorsair/business/ennemis/BasicEnnemyShip;->specificName:Ljava/lang/String;

    sget-object v4, Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;->ORANGE:Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;

    iget v4, v4, Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;->r:F

    sget-object v5, Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;->ORANGE:Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;

    iget v5, v5, Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;->g:F

    sget-object v6, Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;->ORANGE:Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;

    iget v6, v6, Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;->b:F

    sget-object v7, Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;->ORANGE:Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;

    iget v7, v7, Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;->a:F

    sget-object v8, Lfr/testudo/spacecorsair/textengine/TextSize;->LITTLE:Lfr/testudo/spacecorsair/textengine/TextSize;

    invoke-virtual/range {v0 .. v8}, Lfr/testudo/spacecorsair/engine/RenderQueue;->addTextToTextWaitingQueue(Lfr/testudo/spacecorsair/engine/Vector2;ZLjava/lang/String;FFFFLfr/testudo/spacecorsair/textengine/TextSize;)V

    .line 357
    :cond_f3
    iget-boolean v0, p0, Lfr/testudo/spacecorsair/business/ennemis/BasicEnnemyShip;->elite:Z

    if-eqz v0, :cond_130

    .line 358
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/ennemis/BasicEnnemyShip;->tempVector:Lfr/testudo/spacecorsair/engine/Vector2;

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/ennemis/BasicEnnemyShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/engine/Vector2;->setSameAs(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    move-result-object v0

    sget-object v1, Lfr/testudo/spacecorsair/business/ennemis/BasicEnnemyShip;->drawable:Lfr/testudo/spacecorsair/display/Drawable;

    iget-object v1, v1, Lfr/testudo/spacecorsair/display/Drawable;->dimensions:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v1, v1, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    const/high16 v2, 0x41980000    # 19.0f

    add-float/2addr v1, v2

    sget-object v2, Lfr/testudo/spacecorsair/business/ennemis/BasicEnnemyShip;->drawable:Lfr/testudo/spacecorsair/display/Drawable;

    iget-object v2, v2, Lfr/testudo/spacecorsair/display/Drawable;->dimensions:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v2, v2, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    const/high16 v3, 0x41700000    # 15.0f

    add-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Lfr/testudo/spacecorsair/engine/Vector2;->add(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 359
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->renderQueue:Lfr/testudo/spacecorsair/engine/RenderQueue;

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/ennemis/BasicEnnemyShip;->tempVector:Lfr/testudo/spacecorsair/engine/Vector2;

    const/4 v2, 0x0

    sget-object v3, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->ELITE_MARK_SIZE_NORMAL:Lfr/testudo/spacecorsair/display/Drawable;

    const/high16 v4, 0x43340000    # 180.0f

    const/high16 v5, 0x3f800000    # 1.0f

    const/high16 v6, 0x3f800000    # 1.0f

    const/high16 v7, 0x3f800000    # 1.0f

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-virtual/range {v0 .. v8}, Lfr/testudo/spacecorsair/engine/RenderQueue;->addToWaitingQueue(Lfr/testudo/spacecorsair/engine/Vector2;ZLfr/testudo/spacecorsair/display/Drawable;FFFFF)V

    .line 365
    :cond_130
    return-void

    .line 336
    :cond_131
    const/16 v0, 0x12

    goto/16 :goto_5f
.end method

.method public setElite()Lfr/testudo/spacecorsair/business/ennemis/Ennemis;
    .registers 3

    .prologue
    const/high16 v1, 0x40800000    # 4.0f

    .line 370
    invoke-super {p0}, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->setElite()Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    .line 371
    iget v0, p0, Lfr/testudo/spacecorsair/business/ennemis/BasicEnnemyShip;->xp:I

    mul-int/lit8 v0, v0, 0x4

    iput v0, p0, Lfr/testudo/spacecorsair/business/ennemis/BasicEnnemyShip;->xp:I

    .line 372
    iget v0, p0, Lfr/testudo/spacecorsair/business/ennemis/BasicEnnemyShip;->life:F

    mul-float/2addr v0, v1

    iput v0, p0, Lfr/testudo/spacecorsair/business/ennemis/BasicEnnemyShip;->life:F

    .line 373
    iget v0, p0, Lfr/testudo/spacecorsair/business/ennemis/BasicEnnemyShip;->maxLife:F

    mul-float/2addr v0, v1

    iput v0, p0, Lfr/testudo/spacecorsair/business/ennemis/BasicEnnemyShip;->maxLife:F

    .line 374
    iget v0, p0, Lfr/testudo/spacecorsair/business/ennemis/BasicEnnemyShip;->bulletDamage:F

    const v1, 0x3fa66666    # 1.3f

    mul-float/2addr v0, v1

    iput v0, p0, Lfr/testudo/spacecorsair/business/ennemis/BasicEnnemyShip;->bulletDamage:F

    .line 375
    iget-wide v0, p0, Lfr/testudo/spacecorsair/business/ennemis/BasicEnnemyShip;->missileReloadTimeInMilli:J

    long-to-float v0, v0

    const/high16 v1, 0x3f000000    # 0.5f

    mul-float/2addr v0, v1

    float-to-long v0, v0

    iput-wide v0, p0, Lfr/testudo/spacecorsair/business/ennemis/BasicEnnemyShip;->missileReloadTimeInMilli:J

    .line 376
    iget v0, p0, Lfr/testudo/spacecorsair/business/ennemis/BasicEnnemyShip;->pouseeForce:F

    const v1, 0x3f99999a    # 1.2f

    mul-float/2addr v0, v1

    iput v0, p0, Lfr/testudo/spacecorsair/business/ennemis/BasicEnnemyShip;->pouseeForce:F

    .line 377
    iget v0, p0, Lfr/testudo/spacecorsair/business/ennemis/BasicEnnemyShip;->radarPointSize:F

    const/high16 v1, 0x40000000    # 2.0f

    add-float/2addr v0, v1

    iput v0, p0, Lfr/testudo/spacecorsair/business/ennemis/BasicEnnemyShip;->radarPointSize:F

    .line 379
    return-object p0
.end method

.method public shoot()V
    .registers 5

    .prologue
    .line 262
    iget-wide v0, p0, Lfr/testudo/spacecorsair/business/ennemis/BasicEnnemyShip;->nextShootAlowed:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_1d

    .line 263
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/ennemis/BasicEnnemyShip;->attackTarget:Lfr/testudo/spacecorsair/business/Element;

    invoke-static {p0, v0}, Lfr/testudo/spacecorsair/business/Util;->isLaserOrMissileSoundEarable(Lfr/testudo/spacecorsair/business/Element;Lfr/testudo/spacecorsair/business/Element;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 264
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->soundManager:Lfr/testudo/spacecorsair/engine/SoundManager;

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/engine/SoundManager;->playLaserEnnemis()V

    .line 266
    :cond_17
    const/4 v0, 0x0

    const/high16 v1, -0x3e780000    # -17.0f

    invoke-virtual {p0, v0, v1}, Lfr/testudo/spacecorsair/business/ennemis/BasicEnnemyShip;->shootEnergyBullet(FF)V

    .line 269
    :cond_1d
    return-void
.end method

.method protected shootEnergyBullet(FF)V
    .registers 11

    .prologue
    .line 243
    iget v0, p0, Lfr/testudo/spacecorsair/business/ennemis/BasicEnnemyShip;->spin:F

    iget v1, p0, Lfr/testudo/spacecorsair/business/ennemis/BasicEnnemyShip;->shootPrecision:F

    sub-float/2addr v0, v1

    float-to-double v0, v0

    iget v2, p0, Lfr/testudo/spacecorsair/business/ennemis/BasicEnnemyShip;->shootPrecision:F

    const/high16 v3, 0x40000000    # 2.0f

    mul-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v4

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    .line 244
    iget-object v2, p0, Lfr/testudo/spacecorsair/business/ennemis/BasicEnnemyShip;->tempVector:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v2, p1, p2}, Lfr/testudo/spacecorsair/engine/Vector2;->set(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 246
    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v2

    .line 247
    invoke-static {}, Lfr/testudo/spacecorsair/business/factory/GamePools;->newEnergyLaser()Lfr/testudo/spacecorsair/business/projectiles/EnergyLaser;

    move-result-object v4

    iget v5, p0, Lfr/testudo/spacecorsair/business/ennemis/BasicEnnemyShip;->bulletDamage:F

    iget v6, p0, Lfr/testudo/spacecorsair/business/ennemis/BasicEnnemyShip;->bulletLifeTime:I

    iget-object v7, p0, Lfr/testudo/spacecorsair/business/ennemis/BasicEnnemyShip;->specialLaserAlteration:Lfr/testudo/spacecorsair/business/loot/stuff/alteration/AlterationSpecs;

    invoke-virtual {v4, v5, v6, p0, v7}, Lfr/testudo/spacecorsair/business/projectiles/EnergyLaser;->init(FILfr/testudo/spacecorsair/business/Element;Lfr/testudo/spacecorsair/business/loot/stuff/alteration/AlterationSpecs;)Lfr/testudo/spacecorsair/business/projectiles/EnergyLaser;

    move-result-object v4

    .line 249
    iget-object v5, p0, Lfr/testudo/spacecorsair/business/ennemis/BasicEnnemyShip;->tempVector:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v5, v2, v3}, Lfr/testudo/spacecorsair/engine/Vector2;->applyRotatation(D)Lfr/testudo/spacecorsair/engine/Vector2;

    move-result-object v5

    .line 250
    iget-object v6, v4, Lfr/testudo/spacecorsair/business/projectiles/EnergyLaser;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget-object v7, p0, Lfr/testudo/spacecorsair/business/ennemis/BasicEnnemyShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v6, v7}, Lfr/testudo/spacecorsair/engine/Vector2;->setSameAs(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    move-result-object v6

    invoke-virtual {v6, v5}, Lfr/testudo/spacecorsair/engine/Vector2;->add(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 251
    iget-object v5, v4, Lfr/testudo/spacecorsair/business/projectiles/EnergyLaser;->speed:Lfr/testudo/spacecorsair/engine/Vector2;

    const/4 v6, 0x0

    const/high16 v7, -0x3f100000    # -7.5f

    invoke-virtual {v5, v6, v7}, Lfr/testudo/spacecorsair/engine/Vector2;->set(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 252
    iget-object v5, v4, Lfr/testudo/spacecorsair/business/projectiles/EnergyLaser;->speed:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v5, v2, v3}, Lfr/testudo/spacecorsair/engine/Vector2;->applyRotatation(D)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 253
    iget-object v2, v4, Lfr/testudo/spacecorsair/business/projectiles/EnergyLaser;->speed:Lfr/testudo/spacecorsair/engine/Vector2;

    iget-object v3, p0, Lfr/testudo/spacecorsair/business/ennemis/BasicEnnemyShip;->speed:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v2, v3}, Lfr/testudo/spacecorsair/engine/Vector2;->add(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 254
    double-to-float v0, v0

    iput v0, v4, Lfr/testudo/spacecorsair/business/projectiles/EnergyLaser;->spin:F

    .line 255
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/Game;->currentLevel:Lfr/testudo/spacecorsair/game/levels/Level;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/levels/Level;->toAdd:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 256
    iget-wide v0, p0, Lfr/testudo/spacecorsair/business/ennemis/BasicEnnemyShip;->milleSecBetweenShots:J

    long-to-float v0, v0

    iget v1, p0, Lfr/testudo/spacecorsair/business/ennemis/BasicEnnemyShip;->alterationReloadValue:F

    mul-float/2addr v0, v1

    float-to-long v0, v0

    iput-wide v0, p0, Lfr/testudo/spacecorsair/business/ennemis/BasicEnnemyShip;->nextShootAlowed:J

    .line 257
    return-void
.end method

.method public shootMissile()V
    .registers 10

    .prologue
    const/high16 v8, 0x42200000    # 40.0f

    const/4 v7, 0x0

    .line 131
    iget v0, p0, Lfr/testudo/spacecorsair/business/ennemis/BasicEnnemyShip;->missileCount:I

    if-gtz v0, :cond_8

    .line 159
    :goto_7
    return-void

    .line 136
    :cond_8
    invoke-static {}, Lfr/testudo/spacecorsair/business/factory/GamePools;->newMissile()Lfr/testudo/spacecorsair/business/projectiles/Missile;

    move-result-object v0

    iget v1, p0, Lfr/testudo/spacecorsair/business/ennemis/BasicEnnemyShip;->level:I

    iget v2, p0, Lfr/testudo/spacecorsair/business/ennemis/BasicEnnemyShip;->missileDamage:I

    int-to-float v2, v2

    const/16 v3, 0xf

    iget-object v5, p0, Lfr/testudo/spacecorsair/business/ennemis/BasicEnnemyShip;->attackTarget:Lfr/testudo/spacecorsair/business/Element;

    iget-object v6, p0, Lfr/testudo/spacecorsair/business/ennemis/BasicEnnemyShip;->specialMissileAlteration:Lfr/testudo/spacecorsair/business/loot/stuff/alteration/AlterationSpecs;

    move-object v4, p0

    invoke-virtual/range {v0 .. v6}, Lfr/testudo/spacecorsair/business/projectiles/Missile;->init(IFILfr/testudo/spacecorsair/business/Element;Lfr/testudo/spacecorsair/business/Element;Lfr/testudo/spacecorsair/business/loot/stuff/alteration/AlterationSpecs;)Lfr/testudo/spacecorsair/business/projectiles/Missile;

    move-result-object v0

    .line 137
    iget-object v1, p0, Lfr/testudo/spacecorsair/business/ennemis/BasicEnnemyShip;->tempVector:Lfr/testudo/spacecorsair/engine/Vector2;

    const/high16 v2, -0x3e380000    # -25.0f

    invoke-virtual {v1, v7, v2}, Lfr/testudo/spacecorsair/engine/Vector2;->set(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 138
    iget v1, p0, Lfr/testudo/spacecorsair/business/ennemis/BasicEnnemyShip;->spin:F

    float-to-double v2, v1

    invoke-static {v2, v3}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v2

    .line 139
    iget-object v1, p0, Lfr/testudo/spacecorsair/business/ennemis/BasicEnnemyShip;->tempVector:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v1, v2, v3}, Lfr/testudo/spacecorsair/engine/Vector2;->applyRotatation(D)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 140
    iget-object v1, v0, Lfr/testudo/spacecorsair/business/projectiles/Missile;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget-object v2, p0, Lfr/testudo/spacecorsair/business/ennemis/BasicEnnemyShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v1, v2}, Lfr/testudo/spacecorsair/engine/Vector2;->setSameAs(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    move-result-object v1

    iget-object v2, p0, Lfr/testudo/spacecorsair/business/ennemis/BasicEnnemyShip;->tempVector:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v1, v2}, Lfr/testudo/spacecorsair/engine/Vector2;->add(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 141
    iget-object v1, v0, Lfr/testudo/spacecorsair/business/projectiles/Missile;->speed:Lfr/testudo/spacecorsair/engine/Vector2;

    const v2, -0x40b33333    # -0.8f

    invoke-virtual {v1, v7, v2}, Lfr/testudo/spacecorsair/engine/Vector2;->set(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 143
    iget-object v1, v0, Lfr/testudo/spacecorsair/business/projectiles/Missile;->speed:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v2, p0, Lfr/testudo/spacecorsair/business/ennemis/BasicEnnemyShip;->spin:F

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lfr/testudo/spacecorsair/engine/Vector2;->applyRotatation(D)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 144
    iget-object v1, v0, Lfr/testudo/spacecorsair/business/projectiles/Missile;->speed:Lfr/testudo/spacecorsair/engine/Vector2;

    iget-object v2, p0, Lfr/testudo/spacecorsair/business/ennemis/BasicEnnemyShip;->speed:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v1, v2}, Lfr/testudo/spacecorsair/engine/Vector2;->add(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 145
    iget v1, p0, Lfr/testudo/spacecorsair/business/ennemis/BasicEnnemyShip;->spin:F

    iput v1, v0, Lfr/testudo/spacecorsair/business/projectiles/Missile;->spin:F

    .line 146
    const/16 v1, 0x2ee

    iput v1, v0, Lfr/testudo/spacecorsair/business/projectiles/Missile;->timeAllume:I

    .line 147
    iput v8, v0, Lfr/testudo/spacecorsair/business/projectiles/Missile;->maxLife:F

    .line 148
    iput v8, v0, Lfr/testudo/spacecorsair/business/projectiles/Missile;->life:F

    .line 149
    const v1, 0x3f4ccccd    # 0.8f

    iput v1, v0, Lfr/testudo/spacecorsair/business/projectiles/Missile;->alumedMaxTurnFactor:F

    .line 150
    const-wide/16 v2, 0x1b58

    iput-wide v2, v0, Lfr/testudo/spacecorsair/business/projectiles/Missile;->lifeTime:J

    .line 152
    sget-object v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v1, v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v1, v1, Lfr/testudo/spacecorsair/game/Game;->currentLevel:Lfr/testudo/spacecorsair/game/levels/Level;

    iget-object v1, v1, Lfr/testudo/spacecorsair/game/levels/Level;->toAdd:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 153
    iget-wide v0, p0, Lfr/testudo/spacecorsair/business/ennemis/BasicEnnemyShip;->missileReloadTimeInMilli:J

    long-to-float v0, v0

    iget v1, p0, Lfr/testudo/spacecorsair/business/ennemis/BasicEnnemyShip;->alterationReloadValue:F

    mul-float/2addr v0, v1

    float-to-long v0, v0

    iput-wide v0, p0, Lfr/testudo/spacecorsair/business/ennemis/BasicEnnemyShip;->currentMissileReload:J

    .line 154
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/ennemis/BasicEnnemyShip;->attackTarget:Lfr/testudo/spacecorsair/business/Element;

    iget-boolean v0, v0, Lfr/testudo/spacecorsair/business/Element;->isPlayer:Z

    if-nez v0, :cond_8f

    .line 155
    iget-wide v0, p0, Lfr/testudo/spacecorsair/business/ennemis/BasicEnnemyShip;->currentMissileReload:J

    long-to-float v0, v0

    const/high16 v1, 0x3fc00000    # 1.5f

    mul-float/2addr v0, v1

    float-to-long v0, v0

    iput-wide v0, p0, Lfr/testudo/spacecorsair/business/ennemis/BasicEnnemyShip;->currentMissileReload:J

    .line 158
    :cond_8f
    iget v0, p0, Lfr/testudo/spacecorsair/business/ennemis/BasicEnnemyShip;->missileCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lfr/testudo/spacecorsair/business/ennemis/BasicEnnemyShip;->missileCount:I

    goto/16 :goto_7
.end method
