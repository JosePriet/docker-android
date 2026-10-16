.class public Lfr/testudo/spacecorsair/business/projectiles/Missile;
.super Lfr/testudo/spacecorsair/business/projectiles/Projectile;
.source "SourceFile"


# static fields
.field public static final MAX_MISSILE_EXPLODE_RANGE:I = 0x15e

.field public static drawable:Lfr/testudo/spacecorsair/display/Drawable; = null

.field public static final drawableDim:Lfr/testudo/spacecorsair/engine/Vector2;

.field public static final intervalBetwenTuyereAnim:I = 0x28

.field private static lastMissileStartedSound:J

.field public static miniDrawable:Lfr/testudo/spacecorsair/display/Drawable;

.field public static final physicalDim:Lfr/testudo/spacecorsair/engine/Vector2;

.field public static tuyereDim:Lfr/testudo/spacecorsair/engine/Vector2;

.field public static tuyereDrawable:[Lfr/testudo/spacecorsair/display/Drawable;


# instance fields
.field public accelVector:Lfr/testudo/spacecorsair/engine/Vector2;

.field public alumed:Z

.field public alumedMaxTurnFactor:F

.field public animCountDown:I

.field public curAnimIndex:I

.field public dontDisplayAlertMignature:Z

.field public isAntiMissile:Z

.field public isPousee:Z

.field public lifeTime:J

.field public maxTurnFactor:F

.field public neverCutGaz:Z

.field nextPouseeIn:I

.field public pouseeForce:F

.field public radiusAfflection:Z

.field public radiusDamage:F

.field public sendAndForget:Z

.field public speedDeperditionFactorPostAlumed:F

.field public target:Lfr/testudo/spacecorsair/business/Element;

.field public timeAllume:I


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const/high16 v3, 0x42480000    # 50.0f

    const/high16 v2, 0x42200000    # 40.0f

    const/high16 v1, 0x41f00000    # 30.0f

    .line 19
    new-instance v0, Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-direct {v0, v1, v1}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>(FF)V

    sput-object v0, Lfr/testudo/spacecorsair/business/projectiles/Missile;->physicalDim:Lfr/testudo/spacecorsair/engine/Vector2;

    .line 20
    new-instance v0, Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-direct {v0, v3, v3}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>(FF)V

    sput-object v0, Lfr/testudo/spacecorsair/business/projectiles/Missile;->drawableDim:Lfr/testudo/spacecorsair/engine/Vector2;

    .line 21
    new-instance v0, Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-direct {v0, v2, v2}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>(FF)V

    sput-object v0, Lfr/testudo/spacecorsair/business/projectiles/Missile;->tuyereDim:Lfr/testudo/spacecorsair/engine/Vector2;

    .line 135
    const-wide/16 v0, 0x0

    sput-wide v0, Lfr/testudo/spacecorsair/business/projectiles/Missile;->lastMissileStartedSound:J

    return-void
.end method

.method public constructor <init>()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 17
    invoke-direct {p0}, Lfr/testudo/spacecorsair/business/projectiles/Projectile;-><init>()V

    .line 27
    iput v2, p0, Lfr/testudo/spacecorsair/business/projectiles/Missile;->curAnimIndex:I

    .line 28
    const/16 v0, 0x28

    iput v0, p0, Lfr/testudo/spacecorsair/business/projectiles/Missile;->animCountDown:I

    .line 34
    const/16 v0, 0x7d0

    iput v0, p0, Lfr/testudo/spacecorsair/business/projectiles/Missile;->timeAllume:I

    .line 39
    iput-boolean v2, p0, Lfr/testudo/spacecorsair/business/projectiles/Missile;->sendAndForget:Z

    .line 40
    iput v1, p0, Lfr/testudo/spacecorsair/business/projectiles/Missile;->pouseeForce:F

    .line 41
    iput v1, p0, Lfr/testudo/spacecorsair/business/projectiles/Missile;->maxTurnFactor:F

    .line 42
    iput v1, p0, Lfr/testudo/spacecorsair/business/projectiles/Missile;->alumedMaxTurnFactor:F

    .line 43
    const v0, 0x3f82b021    # 1.021f

    iput v0, p0, Lfr/testudo/spacecorsair/business/projectiles/Missile;->speedDeperditionFactorPostAlumed:F

    .line 44
    iput-boolean v2, p0, Lfr/testudo/spacecorsair/business/projectiles/Missile;->isPousee:Z

    .line 45
    new-instance v0, Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-direct {v0, v1, v1}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>(FF)V

    iput-object v0, p0, Lfr/testudo/spacecorsair/business/projectiles/Missile;->accelVector:Lfr/testudo/spacecorsair/engine/Vector2;

    .line 47
    iput-boolean v2, p0, Lfr/testudo/spacecorsair/business/projectiles/Missile;->neverCutGaz:Z

    .line 48
    iput-boolean v2, p0, Lfr/testudo/spacecorsair/business/projectiles/Missile;->dontDisplayAlertMignature:Z

    .line 49
    const/4 v0, 0x1

    iput-boolean v0, p0, Lfr/testudo/spacecorsair/business/projectiles/Missile;->radiusAfflection:Z

    return-void
.end method

.method private doChasse(J)V
    .registers 8

    .prologue
    const/4 v4, 0x0

    .line 234
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/projectiles/Missile;->target:Lfr/testudo/spacecorsair/business/Element;

    iget-boolean v0, v0, Lfr/testudo/spacecorsair/business/Element;->removed:Z

    if-eqz v0, :cond_2a

    .line 236
    iget-boolean v0, p0, Lfr/testudo/spacecorsair/business/projectiles/Missile;->isAntiMissile:Z

    if-eqz v0, :cond_e

    .line 237
    invoke-virtual {p0, v4}, Lfr/testudo/spacecorsair/business/projectiles/Missile;->onDestroyed(Z)V

    .line 239
    :cond_e
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/projectiles/Missile;->sender:Lfr/testudo/spacecorsair/business/Element;

    instance-of v0, v0, Lfr/testudo/spacecorsair/business/player/PlayerShip;

    if-eqz v0, :cond_72

    iget-boolean v0, p0, Lfr/testudo/spacecorsair/business/projectiles/Missile;->sendAndForget:Z

    if-nez v0, :cond_72

    .line 240
    const-wide/16 v0, 0x1388

    invoke-static {p0, v0, v1}, Lfr/testudo/spacecorsair/business/player/PlayerShip;->fetchEnnemisTarget(Lfr/testudo/spacecorsair/business/Element;J)Lfr/testudo/spacecorsair/business/Element;

    move-result-object v0

    iput-object v0, p0, Lfr/testudo/spacecorsair/business/projectiles/Missile;->target:Lfr/testudo/spacecorsair/business/Element;

    .line 241
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/projectiles/Missile;->target:Lfr/testudo/spacecorsair/business/Element;

    if-nez v0, :cond_25

    .line 299
    :goto_24
    return-void

    .line 244
    :cond_25
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/projectiles/Missile;->target:Lfr/testudo/spacecorsair/business/Element;

    invoke-virtual {v0, p0}, Lfr/testudo/spacecorsair/business/Element;->onMissileLockedOnMe(Lfr/testudo/spacecorsair/business/projectiles/Missile;)V

    .line 252
    :cond_2a
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/projectiles/Missile;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/projectiles/Missile;->target:Lfr/testudo/spacecorsair/business/Element;

    iget-object v1, v1, Lfr/testudo/spacecorsair/business/Element;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/engine/Vector2;->getAngularWithInRad(Lfr/testudo/spacecorsair/engine/Vector2;)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v0

    double-to-float v0, v0

    const/high16 v1, 0x43b40000    # 360.0f

    rem-float/2addr v0, v1

    const/high16 v1, 0x42b40000    # 90.0f

    add-float/2addr v0, v1

    invoke-static {v0}, Lfr/testudo/spacecorsair/business/Element;->normalizeSpin(F)F

    move-result v0

    .line 260
    iget v1, p0, Lfr/testudo/spacecorsair/business/projectiles/Missile;->spin:F

    sub-float v1, v0, v1

    float-to-int v1, v1

    .line 261
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    .line 263
    iget-object v2, p0, Lfr/testudo/spacecorsair/business/projectiles/Missile;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget-object v3, p0, Lfr/testudo/spacecorsair/business/projectiles/Missile;->target:Lfr/testudo/spacecorsair/business/Element;

    iget-object v3, v3, Lfr/testudo/spacecorsair/business/Element;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v2, v3}, Lfr/testudo/spacecorsair/engine/Vector2;->distance(Lfr/testudo/spacecorsair/engine/Vector2;)F

    move-result v2

    .line 265
    iget-boolean v3, p0, Lfr/testudo/spacecorsair/business/projectiles/Missile;->isPousee:Z

    if-nez v3, :cond_76

    .line 266
    iget v2, p0, Lfr/testudo/spacecorsair/business/projectiles/Missile;->nextPouseeIn:I

    int-to-long v2, v2

    sub-long/2addr v2, p1

    long-to-int v2, v2

    iput v2, p0, Lfr/testudo/spacecorsair/business/projectiles/Missile;->nextPouseeIn:I

    .line 267
    const/4 v2, 0x5

    if-lt v1, v2, :cond_68

    iget v2, p0, Lfr/testudo/spacecorsair/business/projectiles/Missile;->nextPouseeIn:I

    if-gtz v2, :cond_6b

    .line 268
    :cond_68
    const/4 v2, 0x1

    iput-boolean v2, p0, Lfr/testudo/spacecorsair/business/projectiles/Missile;->isPousee:Z

    .line 279
    :cond_6b
    :goto_6b
    const/4 v2, 0x2

    if-ge v1, v2, :cond_8b

    .line 280
    const/4 v0, 0x0

    iput v0, p0, Lfr/testudo/spacecorsair/business/projectiles/Missile;->spinSpeed:F

    goto :goto_24

    .line 247
    :cond_72
    const/4 v0, 0x0

    iput-object v0, p0, Lfr/testudo/spacecorsair/business/projectiles/Missile;->target:Lfr/testudo/spacecorsair/business/Element;

    goto :goto_24

    .line 273
    :cond_76
    const/high16 v3, 0x43480000    # 200.0f

    cmpg-float v2, v2, v3

    if-gez v2, :cond_6b

    const/16 v2, 0x4b

    if-le v1, v2, :cond_6b

    iget-boolean v2, p0, Lfr/testudo/spacecorsair/business/projectiles/Missile;->neverCutGaz:Z

    if-nez v2, :cond_6b

    .line 274
    iput-boolean v4, p0, Lfr/testudo/spacecorsair/business/projectiles/Missile;->isPousee:Z

    .line 275
    const/16 v2, 0x3e8

    iput v2, p0, Lfr/testudo/spacecorsair/business/projectiles/Missile;->nextPouseeIn:I

    goto :goto_6b

    .line 282
    :cond_8b
    const/16 v2, 0xb4

    if-gt v1, v2, :cond_a0

    .line 284
    iget v1, p0, Lfr/testudo/spacecorsair/business/projectiles/Missile;->spin:F

    cmpl-float v0, v1, v0

    if-lez v0, :cond_9b

    .line 285
    iget v0, p0, Lfr/testudo/spacecorsair/business/projectiles/Missile;->maxTurnFactor:F

    neg-float v0, v0

    iput v0, p0, Lfr/testudo/spacecorsair/business/projectiles/Missile;->spinSpeed:F

    goto :goto_24

    .line 287
    :cond_9b
    iget v0, p0, Lfr/testudo/spacecorsair/business/projectiles/Missile;->maxTurnFactor:F

    iput v0, p0, Lfr/testudo/spacecorsair/business/projectiles/Missile;->spinSpeed:F

    goto :goto_24

    .line 291
    :cond_a0
    iget v1, p0, Lfr/testudo/spacecorsair/business/projectiles/Missile;->spin:F

    cmpg-float v0, v1, v0

    if-gez v0, :cond_ad

    .line 292
    iget v0, p0, Lfr/testudo/spacecorsair/business/projectiles/Missile;->maxTurnFactor:F

    neg-float v0, v0

    iput v0, p0, Lfr/testudo/spacecorsair/business/projectiles/Missile;->spinSpeed:F

    goto/16 :goto_24

    .line 294
    :cond_ad
    iget v0, p0, Lfr/testudo/spacecorsair/business/projectiles/Missile;->maxTurnFactor:F

    iput v0, p0, Lfr/testudo/spacecorsair/business/projectiles/Missile;->spinSpeed:F

    goto/16 :goto_24
.end method

.method public static setMiniTexture(Lfr/testudo/spacecorsair/display/Texture;Lfr/testudo/spacecorsair/engine/Vector2;)V
    .registers 3

    .prologue
    .line 64
    new-instance v0, Lfr/testudo/spacecorsair/display/Drawable;

    invoke-direct {v0, p1, p0}, Lfr/testudo/spacecorsair/display/Drawable;-><init>(Lfr/testudo/spacecorsair/engine/Vector2;Lfr/testudo/spacecorsair/display/Texture;)V

    sput-object v0, Lfr/testudo/spacecorsair/business/projectiles/Missile;->miniDrawable:Lfr/testudo/spacecorsair/display/Drawable;

    .line 65
    return-void
.end method

.method public static setTexture(Lfr/testudo/spacecorsair/display/Texture;)V
    .registers 3

    .prologue
    .line 52
    new-instance v0, Lfr/testudo/spacecorsair/display/Drawable;

    sget-object v1, Lfr/testudo/spacecorsair/business/projectiles/Missile;->drawableDim:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-direct {v0, v1, p0}, Lfr/testudo/spacecorsair/display/Drawable;-><init>(Lfr/testudo/spacecorsair/engine/Vector2;Lfr/testudo/spacecorsair/display/Texture;)V

    sput-object v0, Lfr/testudo/spacecorsair/business/projectiles/Missile;->drawable:Lfr/testudo/spacecorsair/display/Drawable;

    .line 53
    return-void
.end method

.method public static varargs setTuyereDrawable([Lfr/testudo/spacecorsair/display/Texture;)V
    .registers 6

    .prologue
    .line 56
    array-length v0, p0

    new-array v0, v0, [Lfr/testudo/spacecorsair/display/Drawable;

    sput-object v0, Lfr/testudo/spacecorsair/business/projectiles/Missile;->tuyereDrawable:[Lfr/testudo/spacecorsair/display/Drawable;

    .line 57
    const/4 v0, 0x0

    :goto_6
    array-length v1, p0

    if-ge v0, v1, :cond_19

    .line 58
    sget-object v1, Lfr/testudo/spacecorsair/business/projectiles/Missile;->tuyereDrawable:[Lfr/testudo/spacecorsair/display/Drawable;

    new-instance v2, Lfr/testudo/spacecorsair/display/Drawable;

    sget-object v3, Lfr/testudo/spacecorsair/business/projectiles/Missile;->tuyereDim:Lfr/testudo/spacecorsair/engine/Vector2;

    aget-object v4, p0, v0

    invoke-direct {v2, v3, v4}, Lfr/testudo/spacecorsair/display/Drawable;-><init>(Lfr/testudo/spacecorsair/engine/Vector2;Lfr/testudo/spacecorsair/display/Texture;)V

    aput-object v2, v1, v0

    .line 57
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 61
    :cond_19
    return-void
.end method

.method private updateAnimTuyere(J)V
    .registers 6

    .prologue
    .line 219
    iget v0, p0, Lfr/testudo/spacecorsair/business/projectiles/Missile;->animCountDown:I

    int-to-long v0, v0

    sub-long/2addr v0, p1

    long-to-int v0, v0

    iput v0, p0, Lfr/testudo/spacecorsair/business/projectiles/Missile;->animCountDown:I

    .line 220
    iget v0, p0, Lfr/testudo/spacecorsair/business/projectiles/Missile;->animCountDown:I

    if-gez v0, :cond_21

    .line 221
    iget v0, p0, Lfr/testudo/spacecorsair/business/projectiles/Missile;->animCountDown:I

    add-int/lit8 v0, v0, 0x28

    iput v0, p0, Lfr/testudo/spacecorsair/business/projectiles/Missile;->animCountDown:I

    .line 222
    iget v0, p0, Lfr/testudo/spacecorsair/business/projectiles/Missile;->curAnimIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lfr/testudo/spacecorsair/business/projectiles/Missile;->curAnimIndex:I

    .line 223
    iget v0, p0, Lfr/testudo/spacecorsair/business/projectiles/Missile;->curAnimIndex:I

    sget-object v1, Lfr/testudo/spacecorsair/business/projectiles/Missile;->tuyereDrawable:[Lfr/testudo/spacecorsair/display/Drawable;

    array-length v1, v1

    if-lt v0, v1, :cond_21

    .line 224
    const/4 v0, 0x0

    iput v0, p0, Lfr/testudo/spacecorsair/business/projectiles/Missile;->curAnimIndex:I

    .line 228
    :cond_21
    return-void
.end method


# virtual methods
.method public applyAcceleration(J)V
    .registers 8

    .prologue
    .line 304
    iget-boolean v0, p0, Lfr/testudo/spacecorsair/business/projectiles/Missile;->isPousee:Z

    if-eqz v0, :cond_2d

    .line 306
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/projectiles/Missile;->accelVector:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v1, p0, Lfr/testudo/spacecorsair/business/projectiles/Missile;->pouseeForce:F

    iget v2, p0, Lfr/testudo/spacecorsair/business/projectiles/Missile;->alterationSnareValue:F

    mul-float/2addr v1, v2

    long-to-float v2, p1

    mul-float/2addr v1, v2

    const/high16 v2, 0x42c80000    # 100.0f

    div-float/2addr v1, v2

    iput v1, v0, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    .line 307
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/projectiles/Missile;->accelVector:Lfr/testudo/spacecorsair/engine/Vector2;

    const/4 v1, 0x0

    iput v1, v0, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    .line 308
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/projectiles/Missile;->accelVector:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v1, p0, Lfr/testudo/spacecorsair/business/projectiles/Missile;->spin:F

    const/high16 v2, 0x42b40000    # 90.0f

    sub-float/2addr v1, v2

    float-to-double v2, v1

    invoke-static {v2, v3}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lfr/testudo/spacecorsair/engine/Vector2;->applyRotatation(D)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 309
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/projectiles/Missile;->speed:Lfr/testudo/spacecorsair/engine/Vector2;

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/projectiles/Missile;->accelVector:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/engine/Vector2;->add(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 312
    :cond_2d
    return-void
.end method

.method public applyDamage(FLfr/testudo/spacecorsair/business/Element;Lfr/testudo/spacecorsair/business/projectiles/Projectile;)V
    .registers 4

    .prologue
    .line 346
    invoke-super {p0, p1, p2, p3}, Lfr/testudo/spacecorsair/business/projectiles/Projectile;->applyDamage(FLfr/testudo/spacecorsair/business/Element;Lfr/testudo/spacecorsair/business/projectiles/Projectile;)V

    .line 347
    return-void
.end method

.method public applyRadiusDamage(F)V
    .registers 14

    .prologue
    const/4 v2, 0x1

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    .line 372
    .line 373
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/Game;->currentLevel:Lfr/testudo/spacecorsair/game/levels/Level;

    iget-object v8, v0, Lfr/testudo/spacecorsair/game/levels/Level;->elements:Ljava/util/List;

    .line 374
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v9

    move v7, v3

    move v4, v3

    .line 375
    :goto_12
    if-ge v7, v9, :cond_ab

    .line 376
    invoke-interface {v8, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfr/testudo/spacecorsair/business/Element;

    .line 377
    if-eq v0, p0, :cond_28

    iget-boolean v1, v0, Lfr/testudo/spacecorsair/business/Element;->removed:Z

    if-nez v1, :cond_28

    instance-of v1, v0, Lfr/testudo/spacecorsair/business/projectiles/EnergyLaser;

    if-nez v1, :cond_28

    instance-of v1, v0, Lfr/testudo/spacecorsair/business/projectiles/EnergyBullet;

    if-eqz v1, :cond_2c

    .line 375
    :cond_28
    :goto_28
    add-int/lit8 v0, v7, 0x1

    move v7, v0

    goto :goto_12

    .line 381
    :cond_2c
    iget-object v1, v0, Lfr/testudo/spacecorsair/business/Element;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget-object v5, p0, Lfr/testudo/spacecorsair/business/projectiles/Missile;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v1, v5}, Lfr/testudo/spacecorsair/engine/Vector2;->distance(Lfr/testudo/spacecorsair/engine/Vector2;)F

    move-result v1

    .line 382
    cmpg-float v5, v1, v6

    if-gez v5, :cond_b9

    move v5, v6

    .line 385
    :goto_39
    cmpg-float v1, v5, p1

    if-gez v1, :cond_28

    .line 391
    sub-float v1, p1, v5

    iget v10, p0, Lfr/testudo/spacecorsair/business/projectiles/Missile;->radiusDamage:F

    mul-float/2addr v1, v10

    const/high16 v10, 0x40000000    # 2.0f

    mul-float/2addr v10, p1

    div-float v10, v1, v10

    .line 394
    iget-boolean v1, v0, Lfr/testudo/spacecorsair/business/Element;->removed:Z

    if-nez v1, :cond_a9

    move v1, v2

    .line 396
    :goto_4c
    iget-object v11, p0, Lfr/testudo/spacecorsair/business/projectiles/Missile;->sender:Lfr/testudo/spacecorsair/business/Element;

    invoke-virtual {v0, v10, v11, p0}, Lfr/testudo/spacecorsair/business/Element;->applyDamage(FLfr/testudo/spacecorsair/business/Element;Lfr/testudo/spacecorsair/business/projectiles/Projectile;)V

    .line 397
    iget-boolean v10, p0, Lfr/testudo/spacecorsair/business/projectiles/Missile;->radiusAfflection:Z

    if-eqz v10, :cond_58

    .line 398
    invoke-virtual {v0, p0}, Lfr/testudo/spacecorsair/business/Element;->applyAlterationDamage(Lfr/testudo/spacecorsair/business/projectiles/Projectile;)V

    .line 400
    :cond_58
    if-eqz v1, :cond_b7

    iget-boolean v1, v0, Lfr/testudo/spacecorsair/business/Element;->removed:Z

    if-eqz v1, :cond_b7

    .line 402
    add-int/lit8 v1, v4, 0x1

    .line 403
    iget-object v4, p0, Lfr/testudo/spacecorsair/business/projectiles/Missile;->sender:Lfr/testudo/spacecorsair/business/Element;

    iget-boolean v4, v4, Lfr/testudo/spacecorsair/business/Element;->isPlayer:Z

    if-eqz v4, :cond_69

    .line 404
    invoke-static {v0}, Lfr/testudo/spacecorsair/game/achievements/AchievementEventListener;->onPlayerMissileKillSomething(Lfr/testudo/spacecorsair/business/Element;)V

    .line 408
    :cond_69
    :goto_69
    iget-boolean v4, v0, Lfr/testudo/spacecorsair/business/Element;->removed:Z

    if-nez v4, :cond_a7

    .line 411
    iget-object v4, v0, Lfr/testudo/spacecorsair/business/Element;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget-object v10, p0, Lfr/testudo/spacecorsair/business/projectiles/Missile;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v4, v10}, Lfr/testudo/spacecorsair/engine/Vector2;->getAngularWithInRad(Lfr/testudo/spacecorsair/engine/Vector2;)D

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v10

    double-to-float v4, v10

    const/high16 v10, 0x43b40000    # 360.0f

    rem-float/2addr v4, v10

    const/high16 v10, 0x42b40000    # 90.0f

    add-float/2addr v4, v10

    invoke-static {v4}, Lfr/testudo/spacecorsair/business/Element;->normalizeSpin(F)F

    move-result v4

    .line 416
    const/high16 v10, 0x41100000    # 9.0f

    sub-float v5, p1, v5

    mul-float/2addr v5, v10

    iget v10, v0, Lfr/testudo/spacecorsair/business/Element;->mass:F

    const/high16 v11, 0x40400000    # 3.0f

    mul-float/2addr v10, v11

    add-float/2addr v10, p1

    div-float/2addr v5, v10

    .line 417
    iget-object v10, p0, Lfr/testudo/spacecorsair/business/projectiles/Missile;->tempVector:Lfr/testudo/spacecorsair/engine/Vector2;

    const/4 v11, 0x0

    invoke-virtual {v10, v11, v5}, Lfr/testudo/spacecorsair/engine/Vector2;->set(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 418
    iget-object v5, p0, Lfr/testudo/spacecorsair/business/projectiles/Missile;->tempVector:Lfr/testudo/spacecorsair/engine/Vector2;

    float-to-double v10, v4

    invoke-static {v10, v11}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v10

    invoke-virtual {v5, v10, v11}, Lfr/testudo/spacecorsair/engine/Vector2;->applyRotatation(D)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 419
    iget-object v0, v0, Lfr/testudo/spacecorsair/business/Element;->speed:Lfr/testudo/spacecorsair/engine/Vector2;

    iget-object v4, p0, Lfr/testudo/spacecorsair/business/projectiles/Missile;->tempVector:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v0, v4}, Lfr/testudo/spacecorsair/engine/Vector2;->add(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    :cond_a7
    move v4, v1

    goto :goto_28

    :cond_a9
    move v1, v3

    .line 394
    goto :goto_4c

    .line 426
    :cond_ab
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/projectiles/Missile;->sender:Lfr/testudo/spacecorsair/business/Element;

    iget-boolean v0, v0, Lfr/testudo/spacecorsair/business/Element;->isPlayer:Z

    if-eqz v0, :cond_b6

    if-le v4, v2, :cond_b6

    .line 427
    invoke-static {v4}, Lfr/testudo/spacecorsair/game/achievements/AchievementEventListener;->onMissileBlastKillEnnemies(I)V

    .line 430
    :cond_b6
    return-void

    :cond_b7
    move v1, v4

    goto :goto_69

    :cond_b9
    move v5, v1

    goto/16 :goto_39
.end method

.method public doIa(Ljava/lang/Long;)V
    .registers 7

    .prologue
    const/4 v4, 0x1

    .line 195
    iget-boolean v0, p0, Lfr/testudo/spacecorsair/business/projectiles/Missile;->alumed:Z

    if-nez v0, :cond_2e

    .line 196
    iget v0, p0, Lfr/testudo/spacecorsair/business/projectiles/Missile;->timeAllume:I

    int-to-long v0, v0

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    sub-long/2addr v0, v2

    long-to-int v0, v0

    iput v0, p0, Lfr/testudo/spacecorsair/business/projectiles/Missile;->timeAllume:I

    .line 197
    iget v0, p0, Lfr/testudo/spacecorsair/business/projectiles/Missile;->timeAllume:I

    if-gtz v0, :cond_2d

    .line 198
    iput-boolean v4, p0, Lfr/testudo/spacecorsair/business/projectiles/Missile;->alumed:Z

    .line 199
    iget v0, p0, Lfr/testudo/spacecorsair/business/projectiles/Missile;->speedDeperditionFactorPostAlumed:F

    iput v0, p0, Lfr/testudo/spacecorsair/business/projectiles/Missile;->speedDeperditionfactor:F

    .line 200
    iget v0, p0, Lfr/testudo/spacecorsair/business/projectiles/Missile;->alumedMaxTurnFactor:F

    iput v0, p0, Lfr/testudo/spacecorsair/business/projectiles/Missile;->maxTurnFactor:F

    .line 201
    iput-boolean v4, p0, Lfr/testudo/spacecorsair/business/projectiles/Missile;->isPousee:Z

    .line 202
    invoke-static {p0}, Lfr/testudo/spacecorsair/engine/GameThread;->isElementVisible(Lfr/testudo/spacecorsair/business/Element;)Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 203
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->soundManager:Lfr/testudo/spacecorsair/engine/SoundManager;

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/engine/SoundManager;->playMissileStart()V

    .line 216
    :cond_2d
    :goto_2d
    return-void

    .line 209
    :cond_2e
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/projectiles/Missile;->target:Lfr/testudo/spacecorsair/business/Element;

    if-eqz v0, :cond_2d

    .line 210
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lfr/testudo/spacecorsair/business/projectiles/Missile;->doChasse(J)V

    goto :goto_2d
.end method

.method public doPhysic(J)V
    .registers 4

    .prologue
    .line 316
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p0, v0}, Lfr/testudo/spacecorsair/business/projectiles/Missile;->doIa(Ljava/lang/Long;)V

    .line 317
    invoke-super {p0, p1, p2}, Lfr/testudo/spacecorsair/business/projectiles/Projectile;->doPhysic(J)V

    .line 318
    invoke-direct {p0, p1, p2}, Lfr/testudo/spacecorsair/business/projectiles/Missile;->updateAnimTuyere(J)V

    .line 319
    return-void
.end method

.method public getDrawableObject()Lfr/testudo/spacecorsair/display/Drawable;
    .registers 2

    .prologue
    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModArt;->missile(Lfr/testudo/spacecorsair/business/projectiles/Missile;)Lfr/testudo/spacecorsair/display/Drawable;
    move-result-object v0
    if-eqz v0, :mod_missile_stock
    return-object v0
    :mod_missile_stock
    .line 323
    sget-object v0, Lfr/testudo/spacecorsair/business/projectiles/Missile;->drawable:Lfr/testudo/spacecorsair/display/Drawable;

    return-object v0
.end method

.method public getMiniDrawableObject()Lfr/testudo/spacecorsair/display/Drawable;
    .registers 2

    .prologue
    .line 332
    invoke-virtual {p0}, Lfr/testudo/spacecorsair/business/projectiles/Missile;->isPlayerMissile()Z

    move-result v0

    if-nez v0, :cond_14

    iget-object v0, p0, Lfr/testudo/spacecorsair/business/projectiles/Missile;->target:Lfr/testudo/spacecorsair/business/Element;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lfr/testudo/spacecorsair/business/projectiles/Missile;->target:Lfr/testudo/spacecorsair/business/Element;

    iget-boolean v0, v0, Lfr/testudo/spacecorsair/business/Element;->isPlayer:Z

    if-eqz v0, :cond_14

    :cond_10
    iget-boolean v0, p0, Lfr/testudo/spacecorsair/business/projectiles/Missile;->dontDisplayAlertMignature:Z

    if-eqz v0, :cond_16

    .line 333
    :cond_14
    const/4 v0, 0x0

    .line 335
    :goto_15
    return-object v0

    :cond_16
    sget-object v0, Lfr/testudo/spacecorsair/business/projectiles/Missile;->miniDrawable:Lfr/testudo/spacecorsair/display/Drawable;

    goto :goto_15
.end method

.method public getPhysicDimension()Lfr/testudo/spacecorsair/engine/Vector2;
    .registers 2

    .prologue
    .line 340
    sget-object v0, Lfr/testudo/spacecorsair/business/projectiles/Missile;->physicalDim:Lfr/testudo/spacecorsair/engine/Vector2;

    return-object v0
.end method

.method public init(IFILfr/testudo/spacecorsair/business/Element;Lfr/testudo/spacecorsair/business/Element;Lfr/testudo/spacecorsair/business/loot/stuff/alteration/AlterationSpecs;)Lfr/testudo/spacecorsair/business/projectiles/Missile;
    .registers 13

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    .line 139
    invoke-super {p0, p2, p3, p4, p6}, Lfr/testudo/spacecorsair/business/projectiles/Projectile;->init(FILfr/testudo/spacecorsair/business/Element;Lfr/testudo/spacecorsair/business/loot/stuff/alteration/AlterationSpecs;)Lfr/testudo/spacecorsair/business/projectiles/Projectile;

    .line 140
    instance-of v0, p5, Lfr/testudo/spacecorsair/business/projectiles/Missile;

    iput-boolean v0, p0, Lfr/testudo/spacecorsair/business/projectiles/Missile;->isAntiMissile:Z

    .line 141
    iput-boolean v4, p0, Lfr/testudo/spacecorsair/business/projectiles/Missile;->doesColideWithOthers:Z

    .line 142
    const/high16 v0, 0x40a00000    # 5.0f

    iput v0, p0, Lfr/testudo/spacecorsair/business/projectiles/Missile;->mass:F

    .line 143
    const/high16 v0, 0x43960000    # 300.0f

    iput v0, p0, Lfr/testudo/spacecorsair/business/projectiles/Missile;->life:F

    .line 144
    const/high16 v0, 0x43480000    # 200.0f

    iput v0, p0, Lfr/testudo/spacecorsair/business/projectiles/Missile;->radiusDamage:F

    .line 145
    const/high16 v0, 0x42480000    # 50.0f

    iput v0, p0, Lfr/testudo/spacecorsair/business/projectiles/Missile;->maxLife:F

    .line 146
    const v0, 0x3f666666    # 0.9f

    iput v0, p0, Lfr/testudo/spacecorsair/business/projectiles/Missile;->pouseeForce:F

    .line 147
    iput v5, p0, Lfr/testudo/spacecorsair/business/projectiles/Missile;->maxTurnFactor:F

    .line 148
    iput v2, p0, Lfr/testudo/spacecorsair/business/projectiles/Missile;->speedDeperditionfactor:F

    .line 149
    iput-boolean v3, p0, Lfr/testudo/spacecorsair/business/projectiles/Missile;->alumed:Z

    .line 150
    iput-boolean v3, p0, Lfr/testudo/spacecorsair/business/projectiles/Missile;->isPousee:Z

    .line 151
    const-wide/16 v0, 0x2710

    iput-wide v0, p0, Lfr/testudo/spacecorsair/business/projectiles/Missile;->lifeTime:J

    .line 152
    iput-object p5, p0, Lfr/testudo/spacecorsair/business/projectiles/Missile;->target:Lfr/testudo/spacecorsair/business/Element;

    .line 153
    const/16 v0, 0x5dc

    iput v0, p0, Lfr/testudo/spacecorsair/business/projectiles/Missile;->timeAllume:I

    .line 154
    iput-boolean v4, p0, Lfr/testudo/spacecorsair/business/projectiles/Missile;->drawOnRadar:Z

    .line 155
    iput-boolean v4, p0, Lfr/testudo/spacecorsair/business/projectiles/Missile;->hasSpeedDeperdition:Z

    .line 156
    const v0, 0x3f51eb85    # 0.82f

    iput v0, p0, Lfr/testudo/spacecorsair/business/projectiles/Missile;->alumedMaxTurnFactor:F

    .line 157
    const v0, 0x3f82b021    # 1.021f

    iput v0, p0, Lfr/testudo/spacecorsair/business/projectiles/Missile;->speedDeperditionFactorPostAlumed:F

    .line 158
    iput-boolean v3, p0, Lfr/testudo/spacecorsair/business/projectiles/Missile;->neverCutGaz:Z

    .line 159
    iput v2, p0, Lfr/testudo/spacecorsair/business/projectiles/Missile;->a:F

    .line 160
    iput v2, p0, Lfr/testudo/spacecorsair/business/projectiles/Missile;->r:F

    .line 161
    iput v2, p0, Lfr/testudo/spacecorsair/business/projectiles/Missile;->b:F

    .line 162
    iput v2, p0, Lfr/testudo/spacecorsair/business/projectiles/Missile;->a:F

    .line 163
    iput-boolean v3, p0, Lfr/testudo/spacecorsair/business/projectiles/Missile;->sendAndForget:Z

    .line 164
    iput-boolean v3, p0, Lfr/testudo/spacecorsair/business/projectiles/Missile;->dontDisplayAlertMignature:Z

    .line 165
    iput-boolean v4, p0, Lfr/testudo/spacecorsair/business/projectiles/Missile;->radiusAfflection:Z

    .line 166
    iput-boolean v4, p0, Lfr/testudo/spacecorsair/business/projectiles/Missile;->ignoreLevelOnDamage:Z

    .line 168
    instance-of v0, p4, Lfr/testudo/spacecorsair/business/player/PlayerShip;

    if-eqz v0, :cond_66

    .line 170
    iput v5, p0, Lfr/testudo/spacecorsair/business/projectiles/Missile;->radarColorR:F

    .line 171
    iput v2, p0, Lfr/testudo/spacecorsair/business/projectiles/Missile;->radarColorG:F

    .line 172
    iput v5, p0, Lfr/testudo/spacecorsair/business/projectiles/Missile;->radarColorB:F

    .line 173
    const/high16 v0, 0x40400000    # 3.0f

    iput v0, p0, Lfr/testudo/spacecorsair/business/projectiles/Missile;->radarPointSize:F

    .line 174
    iput-boolean v3, p0, Lfr/testudo/spacecorsair/business/projectiles/Missile;->drawDistanceOnMiniature:Z

    .line 190
    :cond_65
    :goto_65
    return-object p0

    .line 178
    :cond_66
    iput v2, p0, Lfr/testudo/spacecorsair/business/projectiles/Missile;->radarColorR:F

    .line 179
    iput v5, p0, Lfr/testudo/spacecorsair/business/projectiles/Missile;->radarColorG:F

    .line 180
    iput v5, p0, Lfr/testudo/spacecorsair/business/projectiles/Missile;->radarColorB:F

    .line 181
    const/high16 v0, 0x40800000    # 4.0f

    iput v0, p0, Lfr/testudo/spacecorsair/business/projectiles/Missile;->radarPointSize:F

    .line 182
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/projectiles/Missile;->target:Lfr/testudo/spacecorsair/business/Element;

    iget-boolean v0, v0, Lfr/testudo/spacecorsair/business/Element;->isPlayer:Z

    if-eqz v0, :cond_65

    iget-boolean v0, p0, Lfr/testudo/spacecorsair/business/projectiles/Missile;->isAntiMissile:Z

    if-nez v0, :cond_65

    .line 183
    iput-boolean v4, p0, Lfr/testudo/spacecorsair/business/projectiles/Missile;->drawDistanceOnMiniature:Z

    .line 185
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->soundManager:Lfr/testudo/spacecorsair/engine/SoundManager;

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/engine/SoundManager;->onMissileLockedOnPlayerStarted()V

    goto :goto_65
.end method

.method public initWithSpecs(Lfr/testudo/spacecorsair/business/loot/stuff/missile/MissileSpec;Lfr/testudo/spacecorsair/business/Element;Lfr/testudo/spacecorsair/business/Element;)Lfr/testudo/spacecorsair/business/projectiles/Missile;
    .registers 5

    .prologue
    .line 69
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lfr/testudo/spacecorsair/business/projectiles/Missile;->initWithSpecs(Lfr/testudo/spacecorsair/business/loot/stuff/missile/MissileSpec;Lfr/testudo/spacecorsair/business/Element;Lfr/testudo/spacecorsair/business/Element;Lfr/testudo/spacecorsair/business/loot/stuff/alteration/AlterationSpecs;)Lfr/testudo/spacecorsair/business/projectiles/Missile;

    move-result-object v0

    return-object v0
.end method

.method public initWithSpecs(Lfr/testudo/spacecorsair/business/loot/stuff/missile/MissileSpec;Lfr/testudo/spacecorsair/business/Element;Lfr/testudo/spacecorsair/business/Element;Lfr/testudo/spacecorsair/business/loot/stuff/alteration/AlterationSpecs;)Lfr/testudo/spacecorsair/business/projectiles/Missile;
    .registers 12

    .prologue
    const/4 v6, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v4, 0x1

    const/4 v1, 0x0

    .line 73
    iget v0, p1, Lfr/testudo/spacecorsair/business/loot/stuff/missile/MissileSpec;->damage:F

    iget v2, p1, Lfr/testudo/spacecorsair/business/loot/stuff/missile/MissileSpec;->lifeTime:I

    if-nez p4, :cond_d

    iget-object p4, p1, Lfr/testudo/spacecorsair/business/loot/stuff/missile/MissileSpec;->alteration:Lfr/testudo/spacecorsair/business/loot/stuff/alteration/AlterationSpecs;

    :cond_d
    invoke-super {p0, v0, v2, p2, p4}, Lfr/testudo/spacecorsair/business/projectiles/Projectile;->init(FILfr/testudo/spacecorsair/business/Element;Lfr/testudo/spacecorsair/business/loot/stuff/alteration/AlterationSpecs;)Lfr/testudo/spacecorsair/business/projectiles/Projectile;

    .line 74
    instance-of v0, p3, Lfr/testudo/spacecorsair/business/projectiles/Missile;

    iput-boolean v0, p0, Lfr/testudo/spacecorsair/business/projectiles/Missile;->isAntiMissile:Z

    .line 75
    iput-boolean v4, p0, Lfr/testudo/spacecorsair/business/projectiles/Missile;->doesColideWithOthers:Z

    .line 76
    const/high16 v0, 0x40a00000    # 5.0f

    iput v0, p0, Lfr/testudo/spacecorsair/business/projectiles/Missile;->mass:F

    .line 77
    iget v0, p1, Lfr/testudo/spacecorsair/business/loot/stuff/missile/MissileSpec;->life:F

    iput v0, p0, Lfr/testudo/spacecorsair/business/projectiles/Missile;->life:F

    .line 78
    iget v0, p0, Lfr/testudo/spacecorsair/business/projectiles/Missile;->life:F

    iput v0, p0, Lfr/testudo/spacecorsair/business/projectiles/Missile;->maxLife:F

    .line 79
    iget v0, p1, Lfr/testudo/spacecorsair/business/loot/stuff/missile/MissileSpec;->pousseeForce:F

    iput v0, p0, Lfr/testudo/spacecorsair/business/projectiles/Missile;->pouseeForce:F

    .line 80
    iput v1, p0, Lfr/testudo/spacecorsair/business/projectiles/Missile;->maxTurnFactor:F

    .line 81
    iput v5, p0, Lfr/testudo/spacecorsair/business/projectiles/Missile;->speedDeperditionfactor:F

    .line 82
    iput-boolean v6, p0, Lfr/testudo/spacecorsair/business/projectiles/Missile;->alumed:Z

    .line 83
    iput-boolean v6, p0, Lfr/testudo/spacecorsair/business/projectiles/Missile;->isPousee:Z

    .line 84
    iget v0, p1, Lfr/testudo/spacecorsair/business/loot/stuff/missile/MissileSpec;->lifeTime:I

    int-to-long v2, v0

    iput-wide v2, p0, Lfr/testudo/spacecorsair/business/projectiles/Missile;->lifeTime:J

    .line 85
    iput-object p3, p0, Lfr/testudo/spacecorsair/business/projectiles/Missile;->target:Lfr/testudo/spacecorsair/business/Element;

    .line 86
    iget v2, p1, Lfr/testudo/spacecorsair/business/loot/stuff/missile/MissileSpec;->radiusDamage:F

    iget-boolean v0, p0, Lfr/testudo/spacecorsair/business/projectiles/Missile;->isCrit:Z

    if-eqz v0, :cond_88

    iget v0, p1, Lfr/testudo/spacecorsair/business/loot/stuff/missile/MissileSpec;->radiusDamage:F

    iget-object v3, p0, Lfr/testudo/spacecorsair/business/projectiles/Missile;->alterationSpecs:Lfr/testudo/spacecorsair/business/loot/stuff/alteration/AlterationSpecs;

    iget-object v3, v3, Lfr/testudo/spacecorsair/business/loot/stuff/alteration/AlterationSpecs;->critique:Lfr/testudo/spacecorsair/business/loot/stuff/alteration/CritiqueSpec;

    iget v3, v3, Lfr/testudo/spacecorsair/business/loot/stuff/alteration/CritiqueSpec;->multiplicationFactor:F

    mul-float/2addr v0, v3

    :goto_44
    float-to-int v0, v0

    int-to-float v0, v0

    add-float/2addr v0, v2

    iput v0, p0, Lfr/testudo/spacecorsair/business/projectiles/Missile;->radiusDamage:F

    .line 87
    iget v0, p1, Lfr/testudo/spacecorsair/business/loot/stuff/missile/MissileSpec;->timeAllume:I

    iput v0, p0, Lfr/testudo/spacecorsair/business/projectiles/Missile;->timeAllume:I

    .line 88
    iput-boolean v4, p0, Lfr/testudo/spacecorsair/business/projectiles/Missile;->drawOnRadar:Z

    .line 89
    iput-boolean v4, p0, Lfr/testudo/spacecorsair/business/projectiles/Missile;->hasSpeedDeperdition:Z

    .line 90
    iget v0, p1, Lfr/testudo/spacecorsair/business/loot/stuff/missile/MissileSpec;->maxTurnFactor:F

    iput v0, p0, Lfr/testudo/spacecorsair/business/projectiles/Missile;->alumedMaxTurnFactor:F

    .line 91
    iget v0, p1, Lfr/testudo/spacecorsair/business/loot/stuff/missile/MissileSpec;->speedDeperdition:F

    iput v0, p0, Lfr/testudo/spacecorsair/business/projectiles/Missile;->speedDeperditionFactorPostAlumed:F

    .line 92
    iget-boolean v0, p1, Lfr/testudo/spacecorsair/business/loot/stuff/missile/MissileSpec;->sendAndForget:Z

    iput-boolean v0, p0, Lfr/testudo/spacecorsair/business/projectiles/Missile;->sendAndForget:Z

    .line 93
    iput v5, p0, Lfr/testudo/spacecorsair/business/projectiles/Missile;->a:F

    .line 94
    iget v0, p1, Lfr/testudo/spacecorsair/business/loot/stuff/missile/MissileSpec;->r:F

    iput v0, p0, Lfr/testudo/spacecorsair/business/projectiles/Missile;->r:F

    .line 95
    iget v0, p1, Lfr/testudo/spacecorsair/business/loot/stuff/missile/MissileSpec;->b:F

    iput v0, p0, Lfr/testudo/spacecorsair/business/projectiles/Missile;->b:F

    .line 96
    iget v0, p1, Lfr/testudo/spacecorsair/business/loot/stuff/missile/MissileSpec;->g:F

    iput v0, p0, Lfr/testudo/spacecorsair/business/projectiles/Missile;->g:F

    .line 97
    iput-boolean v6, p0, Lfr/testudo/spacecorsair/business/projectiles/Missile;->dontDisplayAlertMignature:Z

    .line 98
    iget-boolean v0, p1, Lfr/testudo/spacecorsair/business/loot/stuff/missile/MissileSpec;->neverCutGaz:Z

    iput-boolean v0, p0, Lfr/testudo/spacecorsair/business/projectiles/Missile;->neverCutGaz:Z

    .line 99
    iget-boolean v0, p1, Lfr/testudo/spacecorsair/business/loot/stuff/missile/MissileSpec;->radiusAfflection:Z

    iput-boolean v0, p0, Lfr/testudo/spacecorsair/business/projectiles/Missile;->radiusAfflection:Z

    .line 100
    iput-boolean v4, p0, Lfr/testudo/spacecorsair/business/projectiles/Missile;->ignoreLevelOnDamage:Z

    .line 102
    instance-of v0, p2, Lfr/testudo/spacecorsair/business/player/PlayerShip;

    if-eqz v0, :cond_8a

    .line 104
    iput v1, p0, Lfr/testudo/spacecorsair/business/projectiles/Missile;->radarColorR:F

    .line 105
    iput v5, p0, Lfr/testudo/spacecorsair/business/projectiles/Missile;->radarColorG:F

    .line 106
    iput v1, p0, Lfr/testudo/spacecorsair/business/projectiles/Missile;->radarColorB:F

    .line 107
    const/high16 v0, 0x40400000    # 3.0f

    iput v0, p0, Lfr/testudo/spacecorsair/business/projectiles/Missile;->radarPointSize:F

    .line 108
    iput-boolean v6, p0, Lfr/testudo/spacecorsair/business/projectiles/Missile;->drawDistanceOnMiniature:Z

    .line 128
    :cond_87
    :goto_87
    return-object p0

    :cond_88
    move v0, v1

    .line 86
    goto :goto_44

    .line 112
    :cond_8a
    iput v5, p0, Lfr/testudo/spacecorsair/business/projectiles/Missile;->radarColorR:F

    .line 113
    iput v1, p0, Lfr/testudo/spacecorsair/business/projectiles/Missile;->radarColorG:F

    .line 114
    iput v1, p0, Lfr/testudo/spacecorsair/business/projectiles/Missile;->radarColorB:F

    .line 115
    const/high16 v0, 0x40800000    # 4.0f

    iput v0, p0, Lfr/testudo/spacecorsair/business/projectiles/Missile;->radarPointSize:F

    .line 116
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/projectiles/Missile;->target:Lfr/testudo/spacecorsair/business/Element;

    iget-boolean v0, v0, Lfr/testudo/spacecorsair/business/Element;->isPlayer:Z

    if-eqz v0, :cond_87

    iget-boolean v0, p0, Lfr/testudo/spacecorsair/business/projectiles/Missile;->isAntiMissile:Z

    if-nez v0, :cond_87

    .line 117
    iput-boolean v4, p0, Lfr/testudo/spacecorsair/business/projectiles/Missile;->drawDistanceOnMiniature:Z

    .line 118
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 119
    sget-wide v2, Lfr/testudo/spacecorsair/business/projectiles/Missile;->lastMissileStartedSound:J

    cmp-long v2, v0, v2

    if-lez v2, :cond_87

    .line 120
    sget-object v2, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v2, v2, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->soundManager:Lfr/testudo/spacecorsair/engine/SoundManager;

    invoke-virtual {v2}, Lfr/testudo/spacecorsair/engine/SoundManager;->onMissileLockedOnPlayerStarted()V

    .line 121
    const-wide/16 v2, 0xfa0

    add-long/2addr v0, v2

    sput-wide v0, Lfr/testudo/spacecorsair/business/projectiles/Missile;->lastMissileStartedSound:J

    goto :goto_87
.end method

.method public isPlayerMissile()Z
    .registers 2

    .prologue
    .line 327
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/projectiles/Missile;->sender:Lfr/testudo/spacecorsair/business/Element;

    iget-boolean v0, v0, Lfr/testudo/spacecorsair/business/Element;->isPlayer:Z

    return v0
.end method

.method public onDestroyed(Z)V
    .registers 5

    .prologue
    const/4 v2, 0x1

    .line 352
    invoke-static {}, Lfr/testudo/spacecorsair/business/factory/GamePools;->newRandomExplode()Lfr/testudo/spacecorsair/display/ExplosionAnim;

    move-result-object v0

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/projectiles/Missile;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v0, v1, p0}, Lfr/testudo/spacecorsair/display/ExplosionAnim;->init(Lfr/testudo/spacecorsair/engine/Vector2;Lfr/testudo/spacecorsair/business/Element;)Lfr/testudo/spacecorsair/display/ExplosionAnim;

    move-result-object v0

    .line 354
    sget-object v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v1, v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v1, v1, Lfr/testudo/spacecorsair/game/Game;->currentLevel:Lfr/testudo/spacecorsair/game/levels/Level;

    iget-object v1, v1, Lfr/testudo/spacecorsair/game/levels/Level;->toAddAnimated:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 357
    const/4 v0, 0x2

    invoke-static {p0, v0, v2}, Lfr/testudo/spacecorsair/display/ParticuleFactory;->addWhite(Lfr/testudo/spacecorsair/business/Element;IZ)V

    .line 358
    const/4 v0, 0x4

    invoke-static {p0, v0, v2}, Lfr/testudo/spacecorsair/display/ParticuleFactory;->addRed(Lfr/testudo/spacecorsair/business/Element;IZ)V

    .line 359
    const/4 v0, 0x3

    invoke-static {p0, v0, v2}, Lfr/testudo/spacecorsair/display/ParticuleFactory;->addYellow(Lfr/testudo/spacecorsair/business/Element;IZ)V

    .line 360
    invoke-super {p0, p1}, Lfr/testudo/spacecorsair/business/projectiles/Projectile;->onDestroyed(Z)V

    .line 363
    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModTitan;->blastRange(Lfr/testudo/spacecorsair/business/projectiles/Missile;)F

    move-result v0

    invoke-virtual {p0, v0}, Lfr/testudo/spacecorsair/business/projectiles/Missile;->applyRadiusDamage(F)V

    .line 365
    return-void
.end method

.method public registerYourselfToDrawQueue()V
    .registers 7

    .prologue
    .line 435
    invoke-super {p0}, Lfr/testudo/spacecorsair/business/projectiles/Projectile;->registerYourselfToDrawQueue()V

    .line 436
    iget-boolean v0, p0, Lfr/testudo/spacecorsair/business/projectiles/Missile;->isPousee:Z

    if-eqz v0, :cond_47

    .line 437
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/projectiles/Missile;->tempVector:Lfr/testudo/spacecorsair/engine/Vector2;

    const/4 v1, 0x0

    const/high16 v2, 0x420c0000    # 35.0f

    invoke-virtual {v0, v1, v2}, Lfr/testudo/spacecorsair/engine/Vector2;->set(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 438
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/projectiles/Missile;->tempVector:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v1, p0, Lfr/testudo/spacecorsair/business/projectiles/Missile;->spin:F

    iget v2, p0, Lfr/testudo/spacecorsair/business/projectiles/Missile;->spinSpeed:F

    sub-float/2addr v1, v2

    float-to-double v2, v1

    invoke-static {v2, v3}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lfr/testudo/spacecorsair/engine/Vector2;->applyRotatation(D)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 440
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/projectiles/Missile;->tempVector:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v0, v0, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    .line 441
    iget-object v1, p0, Lfr/testudo/spacecorsair/business/projectiles/Missile;->tempVector:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v1, v1, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    .line 443
    iget-object v2, p0, Lfr/testudo/spacecorsair/business/projectiles/Missile;->tempVector:Lfr/testudo/spacecorsair/engine/Vector2;

    iget-object v3, p0, Lfr/testudo/spacecorsair/business/projectiles/Missile;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v2, v3}, Lfr/testudo/spacecorsair/engine/Vector2;->setSameAs(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lfr/testudo/spacecorsair/engine/Vector2;->add(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 446
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->renderQueue:Lfr/testudo/spacecorsair/engine/RenderQueue;

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/projectiles/Missile;->tempVector:Lfr/testudo/spacecorsair/engine/Vector2;

    iget-boolean v2, p0, Lfr/testudo/spacecorsair/business/projectiles/Missile;->cameraRelative:Z

    sget-object v3, Lfr/testudo/spacecorsair/business/projectiles/Missile;->tuyereDrawable:[Lfr/testudo/spacecorsair/display/Drawable;

    iget v4, p0, Lfr/testudo/spacecorsair/business/projectiles/Missile;->curAnimIndex:I

    aget-object v3, v3, v4

    iget v4, p0, Lfr/testudo/spacecorsair/business/projectiles/Missile;->spin:F

    iget v5, p0, Lfr/testudo/spacecorsair/business/projectiles/Missile;->spinSpeed:F

    sub-float/2addr v4, v5

    invoke-virtual {v0, v1, v2, v3, v4}, Lfr/testudo/spacecorsair/engine/RenderQueue;->addToWaitingQueue(Lfr/testudo/spacecorsair/engine/Vector2;ZLfr/testudo/spacecorsair/display/Drawable;F)V

    .line 450
    :cond_47
    return-void
.end method
