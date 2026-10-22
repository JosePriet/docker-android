.class public Lfr/testudo/spacecorsair/business/ennemis/FrelonShip;
.super Lfr/testudo/spacecorsair/business/ennemis/Ennemis;
.source "SourceFile"


# static fields
.field public static final GAZ_TEXTURE_COUNT:I = 0x3

.field public static final SHOCKWAVE_MINI_DISTANCE:I = 0x15e

.field public static final TIME_BETWEEN_SHOCKWAVE:I = 0x7d0

.field public static drawable:Lfr/testudo/spacecorsair/display/Drawable;

.field public static final drawableDim:Lfr/testudo/spacecorsair/engine/Vector2;

.field public static final drawableDimShield:Lfr/testudo/spacecorsair/engine/Vector2;

.field public static final drawableGazDimension:Lfr/testudo/spacecorsair/engine/Vector2;

.field private static gazDrawables:[Lfr/testudo/spacecorsair/display/Drawable;

.field public static final physicalDim:Lfr/testudo/spacecorsair/engine/Vector2;

.field public static final physicalDim_withShield:Lfr/testudo/spacecorsair/engine/Vector2;

.field public static shieldDrawable:Lfr/testudo/spacecorsair/display/Drawable;


# instance fields
.field public curRafale:I

.field public cur_gaz_texture:I

.field public currentMissileReload:J

.field lastShieldPourc:F

.field leftMissile:Z

.field public miniDistanceForMissile:J

.field public missileCount:I

.field public missileReloadTimeInMilli:J

.field public missileSpec:Lfr/testudo/spacecorsair/business/loot/stuff/missile/MissileSpec;

.field missileStreak:I

.field public nextShockWaveInMilli:I

.field public nextShootAllowed:I

.field public rafaleCount:I

.field public shield:Lfr/testudo/spacecorsair/business/player/Shield;

.field shieldBar:Lfr/testudo/spacecorsair/display/hud/InfoBarEnnemis;

.field shootCanon:Z

.field public timeBewteenShootInMilli:I


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .prologue
    const/high16 v5, 0x43960000    # 300.0f

    const/high16 v4, 0x438c0000    # 280.0f

    const/high16 v3, 0x43480000    # 200.0f

    const/high16 v2, 0x433e0000    # 190.0f

    const/high16 v1, 0x42f00000    # 120.0f

    .line 32
    new-instance v0, Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-direct {v0, v2, v2}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>(FF)V

    sput-object v0, Lfr/testudo/spacecorsair/business/ennemis/FrelonShip;->physicalDim:Lfr/testudo/spacecorsair/engine/Vector2;

    .line 33
    new-instance v0, Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-direct {v0, v3, v3}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>(FF)V

    sput-object v0, Lfr/testudo/spacecorsair/business/ennemis/FrelonShip;->drawableDim:Lfr/testudo/spacecorsair/engine/Vector2;

    .line 34
    new-instance v0, Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-direct {v0, v4, v4}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>(FF)V

    sput-object v0, Lfr/testudo/spacecorsair/business/ennemis/FrelonShip;->physicalDim_withShield:Lfr/testudo/spacecorsair/engine/Vector2;

    .line 35
    new-instance v0, Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-direct {v0, v5, v5}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>(FF)V

    sput-object v0, Lfr/testudo/spacecorsair/business/ennemis/FrelonShip;->drawableDimShield:Lfr/testudo/spacecorsair/engine/Vector2;

    .line 36
    new-instance v0, Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-direct {v0, v1, v1}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>(FF)V

    sput-object v0, Lfr/testudo/spacecorsair/business/ennemis/FrelonShip;->drawableGazDimension:Lfr/testudo/spacecorsair/engine/Vector2;

    .line 56
    const/4 v0, 0x0

    sput-object v0, Lfr/testudo/spacecorsair/business/ennemis/FrelonShip;->gazDrawables:[Lfr/testudo/spacecorsair/display/Drawable;

    return-void
.end method

.method public constructor <init>()V
    .registers 11

    .prologue
    const/4 v9, 0x6

    const/high16 v8, 0x40a00000    # 5.0f

    const/high16 v7, 0x40000000    # 2.0f

    const/4 v6, 0x0

    const/4 v4, 0x0

    .line 106
    invoke-direct {p0}, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;-><init>()V

    .line 71
    iput v4, p0, Lfr/testudo/spacecorsair/business/ennemis/FrelonShip;->missileCount:I

    .line 72
    const-wide/16 v0, 0x7530

    iput-wide v0, p0, Lfr/testudo/spacecorsair/business/ennemis/FrelonShip;->missileReloadTimeInMilli:J

    .line 73
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lfr/testudo/spacecorsair/business/ennemis/FrelonShip;->currentMissileReload:J

    .line 74
    const-wide/16 v0, 0x96

    iput-wide v0, p0, Lfr/testudo/spacecorsair/business/ennemis/FrelonShip;->miniDistanceForMissile:J

    .line 76
    iput v4, p0, Lfr/testudo/spacecorsair/business/ennemis/FrelonShip;->nextShootAllowed:I

    .line 77
    iput v4, p0, Lfr/testudo/spacecorsair/business/ennemis/FrelonShip;->curRafale:I

    .line 78
    const/4 v0, 0x3

    iput v0, p0, Lfr/testudo/spacecorsair/business/ennemis/FrelonShip;->rafaleCount:I

    .line 79
    const/16 v0, 0xc8

    iput v0, p0, Lfr/testudo/spacecorsair/business/ennemis/FrelonShip;->timeBewteenShootInMilli:I

    .line 81
    new-instance v0, Lfr/testudo/spacecorsair/business/player/Shield;

    const/high16 v1, 0x447a0000    # 1000.0f

    const/high16 v2, 0x42a00000    # 80.0f

    const v3, 0x453b8000    # 3000.0f

    move-object v5, p0

    invoke-direct/range {v0 .. v5}, Lfr/testudo/spacecorsair/business/player/Shield;-><init>(FFFZLfr/testudo/spacecorsair/business/Element;)V

    iput-object v0, p0, Lfr/testudo/spacecorsair/business/ennemis/FrelonShip;->shield:Lfr/testudo/spacecorsair/business/player/Shield;

    .line 167
    iput v6, p0, Lfr/testudo/spacecorsair/business/ennemis/FrelonShip;->lastShieldPourc:F

    .line 283
    iput v4, p0, Lfr/testudo/spacecorsair/business/ennemis/FrelonShip;->missileStreak:I

    .line 301
    iput-boolean v4, p0, Lfr/testudo/spacecorsair/business/ennemis/FrelonShip;->leftMissile:Z

    .line 370
    iput v4, p0, Lfr/testudo/spacecorsair/business/ennemis/FrelonShip;->cur_gaz_texture:I

    .line 475
    const/4 v0, 0x1

    iput-boolean v0, p0, Lfr/testudo/spacecorsair/business/ennemis/FrelonShip;->shootCanon:Z

    .line 107
    new-instance v0, Lfr/testudo/spacecorsair/engine/Vector2;

    sget-object v1, Lfr/testudo/spacecorsair/business/ennemis/FrelonShip;->drawableDim:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v1, v1, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    neg-float v1, v1

    div-float/2addr v1, v7

    sub-float/2addr v1, v8

    invoke-direct {v0, v6, v1}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>(FF)V

    sget-object v1, Lfr/testudo/spacecorsair/business/ennemis/FrelonShip;->drawableDim:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v1, v1, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    float-to-int v1, v1

    add-int/lit8 v1, v1, -0x5

    invoke-static {v0, v1, v9}, Lfr/testudo/spacecorsair/display/hud/InfoBarEnnemis;->newRed(Lfr/testudo/spacecorsair/engine/Vector2;II)Lfr/testudo/spacecorsair/display/hud/InfoBarEnnemis;

    move-result-object v0

    iput-object v0, p0, Lfr/testudo/spacecorsair/business/ennemis/FrelonShip;->lifeBar:Lfr/testudo/spacecorsair/display/hud/InfoBarEnnemis;

    .line 108
    new-instance v0, Lfr/testudo/spacecorsair/engine/Vector2;

    sget-object v1, Lfr/testudo/spacecorsair/business/ennemis/FrelonShip;->drawableDim:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v1, v1, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    neg-float v1, v1

    div-float/2addr v1, v7

    sub-float/2addr v1, v8

    invoke-direct {v0, v6, v1}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>(FF)V

    sget-object v1, Lfr/testudo/spacecorsair/business/ennemis/FrelonShip;->drawableDim:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v1, v1, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    float-to-int v1, v1

    add-int/lit8 v1, v1, -0x5

    invoke-static {v0, v1, v9}, Lfr/testudo/spacecorsair/display/hud/InfoBarEnnemis;->newBlue(Lfr/testudo/spacecorsair/engine/Vector2;II)Lfr/testudo/spacecorsair/display/hud/InfoBarEnnemis;

    move-result-object v0

    iput-object v0, p0, Lfr/testudo/spacecorsair/business/ennemis/FrelonShip;->shieldBar:Lfr/testudo/spacecorsair/display/hud/InfoBarEnnemis;

    .line 109
    return-void
.end method

.method private processShoot()V
    .registers 3

    .prologue
    const/high16 v1, 0x420c0000    # 35.0f

    .line 479
    iget-boolean v0, p0, Lfr/testudo/spacecorsair/business/ennemis/FrelonShip;->shootCanon:Z

    if-eqz v0, :cond_13

    .line 480
    const/high16 v0, 0x41f00000    # 30.0f

    invoke-virtual {p0, v0, v1}, Lfr/testudo/spacecorsair/business/ennemis/FrelonShip;->shootEnergyBullet(FF)V

    .line 486
    :goto_b
    iget-boolean v0, p0, Lfr/testudo/spacecorsair/business/ennemis/FrelonShip;->shootCanon:Z

    if-nez v0, :cond_19

    const/4 v0, 0x1

    :goto_10
    iput-boolean v0, p0, Lfr/testudo/spacecorsair/business/ennemis/FrelonShip;->shootCanon:Z

    .line 488
    return-void

    .line 484
    :cond_13
    const/high16 v0, -0x3e100000    # -30.0f

    invoke-virtual {p0, v0, v1}, Lfr/testudo/spacecorsair/business/ennemis/FrelonShip;->shootEnergyBullet(FF)V

    goto :goto_b

    .line 486
    :cond_19
    const/4 v0, 0x0

    goto :goto_10
.end method

.method private requestMissileShot()V
    .registers 6

    .prologue
    const/high16 v4, 0x41a00000    # 20.0f

    .line 286
    iget-wide v0, p0, Lfr/testudo/spacecorsair/business/ennemis/FrelonShip;->currentMissileReload:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_15

    iget-object v0, p0, Lfr/testudo/spacecorsair/business/ennemis/FrelonShip;->attackTarget:Lfr/testudo/spacecorsair/business/Element;

    if-eqz v0, :cond_15

    iget-object v0, p0, Lfr/testudo/spacecorsair/business/ennemis/FrelonShip;->attackTarget:Lfr/testudo/spacecorsair/business/Element;

    iget-boolean v0, v0, Lfr/testudo/spacecorsair/business/Element;->removed:Z

    if-nez v0, :cond_15

    .line 299
    :goto_14
    return-void

    .line 290
    :cond_15
    iget-boolean v0, p0, Lfr/testudo/spacecorsair/business/ennemis/FrelonShip;->leftMissile:Z

    if-eqz v0, :cond_26

    .line 292
    const/high16 v0, -0x3de00000    # -40.0f

    invoke-direct {p0, v0, v4}, Lfr/testudo/spacecorsair/business/ennemis/FrelonShip;->shootMissile(FF)V

    .line 297
    :goto_1e
    iget-boolean v0, p0, Lfr/testudo/spacecorsair/business/ennemis/FrelonShip;->leftMissile:Z

    if-nez v0, :cond_2c

    const/4 v0, 0x1

    :goto_23
    iput-boolean v0, p0, Lfr/testudo/spacecorsair/business/ennemis/FrelonShip;->leftMissile:Z

    goto :goto_14

    .line 295
    :cond_26
    const/high16 v0, 0x42200000    # 40.0f

    invoke-direct {p0, v0, v4}, Lfr/testudo/spacecorsair/business/ennemis/FrelonShip;->shootMissile(FF)V

    goto :goto_1e

    .line 297
    :cond_2c
    const/4 v0, 0x0

    goto :goto_23
.end method

.method public static setGazTextures(Lfr/testudo/spacecorsair/display/Texture;Lfr/testudo/spacecorsair/display/Texture;Lfr/testudo/spacecorsair/display/Texture;)V
    .registers 7

    .prologue
    .line 60
    const/4 v0, 0x3

    new-array v0, v0, [Lfr/testudo/spacecorsair/display/Drawable;

    const/4 v1, 0x0

    new-instance v2, Lfr/testudo/spacecorsair/display/Drawable;

    sget-object v3, Lfr/testudo/spacecorsair/business/ennemis/FrelonShip;->drawableGazDimension:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-direct {v2, v3, p0}, Lfr/testudo/spacecorsair/display/Drawable;-><init>(Lfr/testudo/spacecorsair/engine/Vector2;Lfr/testudo/spacecorsair/display/Texture;)V

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-instance v2, Lfr/testudo/spacecorsair/display/Drawable;

    sget-object v3, Lfr/testudo/spacecorsair/business/ennemis/FrelonShip;->drawableGazDimension:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-direct {v2, v3, p1}, Lfr/testudo/spacecorsair/display/Drawable;-><init>(Lfr/testudo/spacecorsair/engine/Vector2;Lfr/testudo/spacecorsair/display/Texture;)V

    aput-object v2, v0, v1

    const/4 v1, 0x2

    new-instance v2, Lfr/testudo/spacecorsair/display/Drawable;

    sget-object v3, Lfr/testudo/spacecorsair/business/ennemis/FrelonShip;->drawableGazDimension:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-direct {v2, v3, p2}, Lfr/testudo/spacecorsair/display/Drawable;-><init>(Lfr/testudo/spacecorsair/engine/Vector2;Lfr/testudo/spacecorsair/display/Texture;)V

    aput-object v2, v0, v1

    sput-object v0, Lfr/testudo/spacecorsair/business/ennemis/FrelonShip;->gazDrawables:[Lfr/testudo/spacecorsair/display/Drawable;

    .line 66
    return-void
.end method

.method public static setShieldTexture(Lfr/testudo/spacecorsair/display/Texture;)V
    .registers 3

    .prologue
    .line 53
    new-instance v0, Lfr/testudo/spacecorsair/display/Drawable;

    sget-object v1, Lfr/testudo/spacecorsair/business/ennemis/FrelonShip;->drawableDimShield:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-direct {v0, v1, p0}, Lfr/testudo/spacecorsair/display/Drawable;-><init>(Lfr/testudo/spacecorsair/engine/Vector2;Lfr/testudo/spacecorsair/display/Texture;)V

    sput-object v0, Lfr/testudo/spacecorsair/business/ennemis/FrelonShip;->shieldDrawable:Lfr/testudo/spacecorsair/display/Drawable;

    .line 54
    return-void
.end method

.method public static setTexture(Lfr/testudo/spacecorsair/display/Texture;)V
    .registers 3

    .prologue
    .line 46
    new-instance v0, Lfr/testudo/spacecorsair/display/Drawable;

    sget-object v1, Lfr/testudo/spacecorsair/business/ennemis/FrelonShip;->drawableDim:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-direct {v0, v1, p0}, Lfr/testudo/spacecorsair/display/Drawable;-><init>(Lfr/testudo/spacecorsair/engine/Vector2;Lfr/testudo/spacecorsair/display/Texture;)V

    sput-object v0, Lfr/testudo/spacecorsair/business/ennemis/FrelonShip;->drawable:Lfr/testudo/spacecorsair/display/Drawable;

    .line 49
    return-void
.end method

.method private shootMissile(FF)V
    .registers 11

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    const/high16 v4, 0x40000000    # 2.0f

    .line 305
    iget v0, p0, Lfr/testudo/spacecorsair/business/ennemis/FrelonShip;->missileCount:I

    if-gtz v0, :cond_9

    .line 349
    :cond_8
    :goto_8
    return-void

    .line 309
    :cond_9
    invoke-static {}, Lfr/testudo/spacecorsair/business/factory/GamePools;->newLittleMissile()Lfr/testudo/spacecorsair/business/projectiles/LittleMissile;

    move-result-object v0

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/ennemis/FrelonShip;->missileSpec:Lfr/testudo/spacecorsair/business/loot/stuff/missile/MissileSpec;

    iget-object v2, p0, Lfr/testudo/spacecorsair/business/ennemis/FrelonShip;->attackTarget:Lfr/testudo/spacecorsair/business/Element;

    iget-object v3, p0, Lfr/testudo/spacecorsair/business/ennemis/FrelonShip;->specialMissileAlteration:Lfr/testudo/spacecorsair/business/loot/stuff/alteration/AlterationSpecs;

    invoke-virtual {v0, v1, p0, v2, v3}, Lfr/testudo/spacecorsair/business/projectiles/LittleMissile;->initWithSpecs(Lfr/testudo/spacecorsair/business/loot/stuff/missile/MissileSpec;Lfr/testudo/spacecorsair/business/Element;Lfr/testudo/spacecorsair/business/Element;Lfr/testudo/spacecorsair/business/loot/stuff/alteration/AlterationSpecs;)Lfr/testudo/spacecorsair/business/projectiles/Missile;

    move-result-object v0

    .line 311
    iget-boolean v1, p0, Lfr/testudo/spacecorsair/business/ennemis/FrelonShip;->elite:Z

    if-eqz v1, :cond_25

    .line 312
    iget v1, v0, Lfr/testudo/spacecorsair/business/projectiles/Missile;->damage:F

    mul-float/2addr v1, v4

    iput v1, v0, Lfr/testudo/spacecorsair/business/projectiles/Missile;->damage:F

    .line 313
    iget v1, v0, Lfr/testudo/spacecorsair/business/projectiles/Missile;->radiusDamage:F

    mul-float/2addr v1, v4

    iput v1, v0, Lfr/testudo/spacecorsair/business/projectiles/Missile;->radiusDamage:F

    .line 316
    :cond_25
    iget-object v1, p0, Lfr/testudo/spacecorsair/business/ennemis/FrelonShip;->tempVector:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v1, p1, p2}, Lfr/testudo/spacecorsair/engine/Vector2;->set(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 319
    iget v1, p0, Lfr/testudo/spacecorsair/business/ennemis/FrelonShip;->spin:F

    float-to-double v2, v1

    invoke-static {v2, v3}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v2

    .line 320
    iget-object v1, p0, Lfr/testudo/spacecorsair/business/ennemis/FrelonShip;->tempVector:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v1, v2, v3}, Lfr/testudo/spacecorsair/engine/Vector2;->applyRotatation(D)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 321
    iget-object v1, v0, Lfr/testudo/spacecorsair/business/projectiles/Missile;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget-object v2, p0, Lfr/testudo/spacecorsair/business/ennemis/FrelonShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v1, v2}, Lfr/testudo/spacecorsair/engine/Vector2;->setSameAs(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    move-result-object v1

    iget-object v2, p0, Lfr/testudo/spacecorsair/business/ennemis/FrelonShip;->tempVector:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v1, v2}, Lfr/testudo/spacecorsair/engine/Vector2;->add(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 322
    iget-object v1, v0, Lfr/testudo/spacecorsair/business/projectiles/Missile;->speed:Lfr/testudo/spacecorsair/engine/Vector2;

    const/4 v2, 0x0

    const/high16 v3, -0x40000000    # -2.0f

    invoke-virtual {v1, v2, v3}, Lfr/testudo/spacecorsair/engine/Vector2;->set(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 323
    const/16 v1, 0x14

    iput v1, v0, Lfr/testudo/spacecorsair/business/projectiles/Missile;->timeAllume:I

    .line 324
    iput-boolean v5, v0, Lfr/testudo/spacecorsair/business/projectiles/Missile;->drawOnRadar:Z

    .line 325
    iput-boolean v6, v0, Lfr/testudo/spacecorsair/business/projectiles/Missile;->dontDisplayAlertMignature:Z

    .line 327
    iget-object v1, v0, Lfr/testudo/spacecorsair/business/projectiles/Missile;->speed:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v2, p0, Lfr/testudo/spacecorsair/business/ennemis/FrelonShip;->spin:F

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lfr/testudo/spacecorsair/engine/Vector2;->applyRotatation(D)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 328
    iget-object v1, v0, Lfr/testudo/spacecorsair/business/projectiles/Missile;->speed:Lfr/testudo/spacecorsair/engine/Vector2;

    iget-object v2, p0, Lfr/testudo/spacecorsair/business/ennemis/FrelonShip;->speed:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v1, v2}, Lfr/testudo/spacecorsair/engine/Vector2;->add(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 329
    iget v1, p0, Lfr/testudo/spacecorsair/business/ennemis/FrelonShip;->spin:F

    iput v1, v0, Lfr/testudo/spacecorsair/business/projectiles/Missile;->spin:F

    .line 330
    iput-boolean v6, v0, Lfr/testudo/spacecorsair/business/projectiles/Missile;->neverCutGaz:Z

    .line 333
    sget-object v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v1, v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v1, v1, Lfr/testudo/spacecorsair/game/Game;->currentLevel:Lfr/testudo/spacecorsair/game/levels/Level;

    iget-object v1, v1, Lfr/testudo/spacecorsair/game/levels/Level;->toAdd:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 335
    iget v0, p0, Lfr/testudo/spacecorsair/business/ennemis/FrelonShip;->missileStreak:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lfr/testudo/spacecorsair/business/ennemis/FrelonShip;->missileStreak:I

    .line 336
    iget v0, p0, Lfr/testudo/spacecorsair/business/ennemis/FrelonShip;->missileStreak:I

    const/4 v1, 0x4

    if-lt v0, v1, :cond_b1

    .line 337
    iput v5, p0, Lfr/testudo/spacecorsair/business/ennemis/FrelonShip;->missileStreak:I

    .line 338
    iget-wide v0, p0, Lfr/testudo/spacecorsair/business/ennemis/FrelonShip;->missileReloadTimeInMilli:J

    const-wide v2, -0x3f68900000000000L    # -1500.0

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v4

    const-wide v6, 0x40a7700000000000L    # 3000.0

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    double-to-int v2, v2

    int-to-long v2, v2

    add-long/2addr v0, v2

    long-to-float v0, v0

    iget v1, p0, Lfr/testudo/spacecorsair/business/ennemis/FrelonShip;->alterationReloadValue:F

    mul-float/2addr v0, v1

    float-to-long v0, v0

    iput-wide v0, p0, Lfr/testudo/spacecorsair/business/ennemis/FrelonShip;->currentMissileReload:J

    .line 339
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/ennemis/FrelonShip;->attackTarget:Lfr/testudo/spacecorsair/business/Element;

    iget-boolean v0, v0, Lfr/testudo/spacecorsair/business/Element;->isPlayer:Z

    if-nez v0, :cond_8

    .line 340
    iget-wide v0, p0, Lfr/testudo/spacecorsair/business/ennemis/FrelonShip;->currentMissileReload:J

    long-to-float v0, v0

    const/high16 v1, 0x3fc00000    # 1.5f

    mul-float/2addr v0, v1

    float-to-long v0, v0

    iput-wide v0, p0, Lfr/testudo/spacecorsair/business/ennemis/FrelonShip;->currentMissileReload:J

    goto/16 :goto_8

    .line 344
    :cond_b1
    const/high16 v0, 0x43fa0000    # 500.0f

    iget v1, p0, Lfr/testudo/spacecorsair/business/ennemis/FrelonShip;->alterationReloadValue:F

    mul-float/2addr v0, v1

    float-to-long v0, v0

    iput-wide v0, p0, Lfr/testudo/spacecorsair/business/ennemis/FrelonShip;->currentMissileReload:J

    goto/16 :goto_8
.end method


# virtual methods
.method public applyDamage(FLfr/testudo/spacecorsair/business/Element;Lfr/testudo/spacecorsair/business/projectiles/Projectile;)V
    .registers 6

    .prologue
    .line 364
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/ennemis/FrelonShip;->shield:Lfr/testudo/spacecorsair/business/player/Shield;

    invoke-virtual {v0, p1, p3}, Lfr/testudo/spacecorsair/business/player/Shield;->applyDamage(FLfr/testudo/spacecorsair/business/projectiles/Projectile;)F

    move-result v0

    invoke-super {p0, v0, p2, p3}, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->applyDamage(FLfr/testudo/spacecorsair/business/Element;Lfr/testudo/spacecorsair/business/projectiles/Projectile;)V

    .line 365
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/ennemis/FrelonShip;->lifeBar:Lfr/testudo/spacecorsair/display/hud/InfoBarEnnemis;

    iget v1, p0, Lfr/testudo/spacecorsair/business/ennemis/FrelonShip;->lifeInPourc:F

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/display/hud/InfoBarEnnemis;->setValue(F)V

    .line 366
    return-void
.end method

.method protected doAttackIa(JJ)V
    .registers 12

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 224
    const-wide/16 v4, 0x2ee

    cmp-long v0, p3, v4

    if-lez v0, :cond_6b

    move v0, v1

    :goto_9
    iput-boolean v0, p0, Lfr/testudo/spacecorsair/business/ennemis/FrelonShip;->isPousee:Z

    .line 226
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/ennemis/FrelonShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget-object v3, p0, Lfr/testudo/spacecorsair/business/ennemis/FrelonShip;->attackTarget:Lfr/testudo/spacecorsair/business/Element;

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

    .line 230
    iget v3, p0, Lfr/testudo/spacecorsair/business/ennemis/FrelonShip;->spin:F

    sub-float v3, v0, v3

    float-to-int v3, v3

    .line 231
    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    .line 233
    const/4 v4, 0x4

    if-gt v3, v4, :cond_3a

    long-to-float v4, p3

    iget v5, p0, Lfr/testudo/spacecorsair/business/ennemis/FrelonShip;->distanceShoot:F

    cmpg-float v4, v4, v5

    if-gez v4, :cond_3a

    .line 234
    invoke-virtual {p0}, Lfr/testudo/spacecorsair/business/ennemis/FrelonShip;->requestLaserShoot()V

    .line 238
    :cond_3a
    const/16 v4, 0xc

    if-ge v3, v4, :cond_47

    iget-wide v4, p0, Lfr/testudo/spacecorsair/business/ennemis/FrelonShip;->miniDistanceForMissile:J

    cmp-long v4, p3, v4

    if-lez v4, :cond_47

    .line 239
    invoke-direct {p0}, Lfr/testudo/spacecorsair/business/ennemis/FrelonShip;->requestMissileShot()V

    .line 242
    :cond_47
    if-gt v3, v1, :cond_6d

    .line 243
    const/4 v0, 0x0

    iput v0, p0, Lfr/testudo/spacecorsair/business/ennemis/FrelonShip;->spinSpeed:F

    .line 266
    :goto_4c
    const/16 v0, 0x50

    if-ge v3, v0, :cond_93

    .line 267
    const-wide/16 v2, 0x226

    cmp-long v0, p3, v2

    if-lez v0, :cond_58

    .line 268
    iput-boolean v1, p0, Lfr/testudo/spacecorsair/business/ennemis/FrelonShip;->isPousee:Z

    .line 275
    :cond_58
    :goto_58
    iget-wide v0, p0, Lfr/testudo/spacecorsair/business/ennemis/FrelonShip;->currentMissileReload:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_6a

    iget v0, p0, Lfr/testudo/spacecorsair/business/ennemis/FrelonShip;->missileCount:I

    if-lez v0, :cond_6a

    .line 276
    iget-wide v0, p0, Lfr/testudo/spacecorsair/business/ennemis/FrelonShip;->miniDistanceForMissile:J

    cmp-long v0, p3, v0

    if-lez v0, :cond_6a

    .line 281
    :cond_6a
    return-void

    :cond_6b
    move v0, v2

    .line 224
    goto :goto_9

    .line 246
    :cond_6d
    const/16 v4, 0xb4

    if-gt v3, v4, :cond_82

    .line 248
    iget v4, p0, Lfr/testudo/spacecorsair/business/ennemis/FrelonShip;->spin:F

    cmpl-float v0, v4, v0

    if-lez v0, :cond_7d

    .line 249
    iget v0, p0, Lfr/testudo/spacecorsair/business/ennemis/FrelonShip;->maxTurnFactor:F

    neg-float v0, v0

    iput v0, p0, Lfr/testudo/spacecorsair/business/ennemis/FrelonShip;->spinSpeed:F

    goto :goto_4c

    .line 251
    :cond_7d
    iget v0, p0, Lfr/testudo/spacecorsair/business/ennemis/FrelonShip;->maxTurnFactor:F

    iput v0, p0, Lfr/testudo/spacecorsair/business/ennemis/FrelonShip;->spinSpeed:F

    goto :goto_4c

    .line 255
    :cond_82
    iget v4, p0, Lfr/testudo/spacecorsair/business/ennemis/FrelonShip;->spin:F

    cmpg-float v0, v4, v0

    if-gez v0, :cond_8e

    .line 256
    iget v0, p0, Lfr/testudo/spacecorsair/business/ennemis/FrelonShip;->maxTurnFactor:F

    neg-float v0, v0

    iput v0, p0, Lfr/testudo/spacecorsair/business/ennemis/FrelonShip;->spinSpeed:F

    goto :goto_4c

    .line 258
    :cond_8e
    iget v0, p0, Lfr/testudo/spacecorsair/business/ennemis/FrelonShip;->maxTurnFactor:F

    iput v0, p0, Lfr/testudo/spacecorsair/business/ennemis/FrelonShip;->spinSpeed:F

    goto :goto_4c

    .line 271
    :cond_93
    iput-boolean v2, p0, Lfr/testudo/spacecorsair/business/ennemis/FrelonShip;->isPousee:Z

    goto :goto_58
.end method

.method public doPhysic(J)V
    .registers 8

    .prologue
    const/16 v4, 0x7d0

    .line 171
    invoke-super {p0, p1, p2}, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->doPhysic(J)V

    .line 174
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/ennemis/FrelonShip;->shield:Lfr/testudo/spacecorsair/business/player/Shield;

    invoke-virtual {v0, p1, p2}, Lfr/testudo/spacecorsair/business/player/Shield;->doPhysic(J)V

    .line 176
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/ennemis/FrelonShip;->shield:Lfr/testudo/spacecorsair/business/player/Shield;

    iget v0, v0, Lfr/testudo/spacecorsair/business/player/Shield;->valueInPourc:F

    iget v1, p0, Lfr/testudo/spacecorsair/business/ennemis/FrelonShip;->lastShieldPourc:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_23

    .line 177
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/ennemis/FrelonShip;->shieldBar:Lfr/testudo/spacecorsair/display/hud/InfoBarEnnemis;

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/ennemis/FrelonShip;->shield:Lfr/testudo/spacecorsair/business/player/Shield;

    iget v1, v1, Lfr/testudo/spacecorsair/business/player/Shield;->valueInPourc:F

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/display/hud/InfoBarEnnemis;->setValue(F)V

    .line 178
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/ennemis/FrelonShip;->shield:Lfr/testudo/spacecorsair/business/player/Shield;

    iget v0, v0, Lfr/testudo/spacecorsair/business/player/Shield;->valueInPourc:F

    iput v0, p0, Lfr/testudo/spacecorsair/business/ennemis/FrelonShip;->lastShieldPourc:F

    .line 182
    :cond_23
    iget-wide v0, p0, Lfr/testudo/spacecorsair/business/ennemis/FrelonShip;->currentMissileReload:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_30

    .line 183
    iget-wide v0, p0, Lfr/testudo/spacecorsair/business/ennemis/FrelonShip;->currentMissileReload:J

    sub-long/2addr v0, p1

    iput-wide v0, p0, Lfr/testudo/spacecorsair/business/ennemis/FrelonShip;->currentMissileReload:J

    .line 186
    :cond_30
    iget v0, p0, Lfr/testudo/spacecorsair/business/ennemis/FrelonShip;->nextShootAllowed:I

    if-ltz v0, :cond_3b

    .line 187
    iget v0, p0, Lfr/testudo/spacecorsair/business/ennemis/FrelonShip;->nextShootAllowed:I

    int-to-long v0, v0

    sub-long/2addr v0, p1

    long-to-int v0, v0

    iput v0, p0, Lfr/testudo/spacecorsair/business/ennemis/FrelonShip;->nextShootAllowed:I

    .line 190
    :cond_3b
    iget v0, p0, Lfr/testudo/spacecorsair/business/ennemis/FrelonShip;->distanceToPlayer:F

    sget-object v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v1, v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->playerShip:Lfr/testudo/spacecorsair/business/player/PlayerShip;

    iget-object v1, v1, Lfr/testudo/spacecorsair/business/player/PlayerShip;->shipSpec:Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;

    iget v1, v1, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;->lootDistance:I

    div-int/lit8 v1, v1, 0x2

    add-int/lit16 v1, v1, 0x15e

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_5f

    .line 192
    iget v0, p0, Lfr/testudo/spacecorsair/business/ennemis/FrelonShip;->nextShockWaveInMilli:I

    int-to-long v0, v0

    sub-long/2addr v0, p1

    long-to-int v0, v0

    iput v0, p0, Lfr/testudo/spacecorsair/business/ennemis/FrelonShip;->nextShockWaveInMilli:I

    .line 193
    iget v0, p0, Lfr/testudo/spacecorsair/business/ennemis/FrelonShip;->nextShockWaveInMilli:I

    if-gtz v0, :cond_5e

    .line 194
    invoke-static {p0}, Lfr/testudo/spacecorsair/business/Util;->applyShockWaveOnPlayer(Lfr/testudo/spacecorsair/business/Element;)V

    .line 195
    iput v4, p0, Lfr/testudo/spacecorsair/business/ennemis/FrelonShip;->nextShockWaveInMilli:I

    .line 204
    :cond_5e
    :goto_5e
    return-void

    .line 200
    :cond_5f
    iput v4, p0, Lfr/testudo/spacecorsair/business/ennemis/FrelonShip;->nextShockWaveInMilli:I

    goto :goto_5e
.end method

.method public getDrawableObject()Lfr/testudo/spacecorsair/display/Drawable;
    .registers 2

    .prologue
    .line 86
    sget-object v0, Lfr/testudo/spacecorsair/business/ennemis/FrelonShip;->drawable:Lfr/testudo/spacecorsair/display/Drawable;

    return-object v0
.end method

.method public getMiniDrawableObject()Lfr/testudo/spacecorsair/display/Drawable;
    .registers 2

    .prologue
    .line 358
    const/4 v0, 0x0

    return-object v0
.end method

.method public getPhysicDimension()Lfr/testudo/spacecorsair/engine/Vector2;
    .registers 2

    .prologue
    .line 92
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/ennemis/FrelonShip;->shield:Lfr/testudo/spacecorsair/business/player/Shield;

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/business/player/Shield;->isUp()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 93
    sget-object v0, Lfr/testudo/spacecorsair/business/ennemis/FrelonShip;->physicalDim_withShield:Lfr/testudo/spacecorsair/engine/Vector2;

    .line 95
    :goto_a
    return-object v0

    :cond_b
    sget-object v0, Lfr/testudo/spacecorsair/business/ennemis/FrelonShip;->physicalDim:Lfr/testudo/spacecorsair/engine/Vector2;

    goto :goto_a
.end method

.method public initLevelConfig(Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;I)Lfr/testudo/spacecorsair/business/ennemis/Ennemis;
    .registers 8

    .prologue
    const/high16 v4, 0x42c80000    # 100.0f

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    .line 114
    invoke-super {p0, p2}, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->init(I)Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    .line 115
    const/16 v0, 0x5dc

    invoke-virtual {p0, v0}, Lfr/testudo/spacecorsair/business/ennemis/FrelonShip;->setMitigedDistance(I)V

    .line 117
    iget v0, p1, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->life:I

    int-to-float v0, v0

    iput v0, p0, Lfr/testudo/spacecorsair/business/ennemis/FrelonShip;->maxLife:F

    .line 118
    iget v0, p1, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->life:I

    int-to-float v0, v0

    iput v0, p0, Lfr/testudo/spacecorsair/business/ennemis/FrelonShip;->life:F

    .line 119
    iget v0, p1, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->xp:I

    iput v0, p0, Lfr/testudo/spacecorsair/business/ennemis/FrelonShip;->xp:I

    .line 120
    iget v0, p1, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->shootReload:I

    int-to-long v0, v0

    iput-wide v0, p0, Lfr/testudo/spacecorsair/business/ennemis/FrelonShip;->milleSecBetweenShots:J

    .line 121
    iget v0, p1, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->shootDamage:I

    int-to-float v0, v0

    iput v0, p0, Lfr/testudo/spacecorsair/business/ennemis/FrelonShip;->bulletDamage:F

    .line 122
    iget v0, p1, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->missileCount:I

    iput v0, p0, Lfr/testudo/spacecorsair/business/ennemis/FrelonShip;->missileCount:I

    .line 123
    iget v0, p1, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->missileReloadTime:I

    int-to-long v0, v0

    iput-wide v0, p0, Lfr/testudo/spacecorsair/business/ennemis/FrelonShip;->missileReloadTimeInMilli:J

    .line 124
    iget v0, p1, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->missileReloadTime:I

    div-int/lit8 v0, v0, 0x4

    int-to-long v0, v0

    iput-wide v0, p0, Lfr/testudo/spacecorsair/business/ennemis/FrelonShip;->currentMissileReload:J

    .line 125
    iget v0, p1, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->missileMinDistance:I

    int-to-long v0, v0

    iput-wide v0, p0, Lfr/testudo/spacecorsair/business/ennemis/FrelonShip;->miniDistanceForMissile:J

    .line 126
    iget-object v0, p1, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->lootConfig:Lfr/testudo/spacecorsair/business/loot/LootConfig;

    iput-object v0, p0, Lfr/testudo/spacecorsair/business/ennemis/FrelonShip;->lootConfig:Lfr/testudo/spacecorsair/business/loot/LootConfig;

    .line 127
    iget v0, p1, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->maxTurnFactor:F

    iput v0, p0, Lfr/testudo/spacecorsair/business/ennemis/FrelonShip;->maxTurnFactor:F

    .line 128
    iget-object v0, p1, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->missileSpec:Lfr/testudo/spacecorsair/business/loot/stuff/missile/MissileSpec;

    iput-object v0, p0, Lfr/testudo/spacecorsair/business/ennemis/FrelonShip;->missileSpec:Lfr/testudo/spacecorsair/business/loot/stuff/missile/MissileSpec;

    .line 129
    const/4 v0, 0x0

    iput v0, p0, Lfr/testudo/spacecorsair/business/ennemis/FrelonShip;->missileStreak:I

    .line 131
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/ennemis/FrelonShip;->shield:Lfr/testudo/spacecorsair/business/player/Shield;

    iget-object v1, p1, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->shieldSpec:Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/business/player/Shield;->applySpec(Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;)V

    .line 133
    const/high16 v0, 0x44af0000    # 1400.0f

    iput v0, p0, Lfr/testudo/spacecorsair/business/ennemis/FrelonShip;->distanceShoot:F

    .line 134
    const v0, 0x44098000    # 550.0f

    iput v0, p0, Lfr/testudo/spacecorsair/business/ennemis/FrelonShip;->mass:F

    .line 135
    const v0, 0x3e2e147b    # 0.17f

    iput v0, p0, Lfr/testudo/spacecorsair/business/ennemis/FrelonShip;->pouseeForce:F

    .line 137
    const v0, 0x3f8126e9    # 1.009f

    iput v0, p0, Lfr/testudo/spacecorsair/business/ennemis/FrelonShip;->speedDeperditionfactor:F

    .line 140
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/ennemis/FrelonShip;->lifeBar:Lfr/testudo/spacecorsair/display/hud/InfoBarEnnemis;

    invoke-virtual {v0, v4}, Lfr/testudo/spacecorsair/display/hud/InfoBarEnnemis;->setValue(F)V

    .line 141
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/ennemis/FrelonShip;->shieldBar:Lfr/testudo/spacecorsair/display/hud/InfoBarEnnemis;

    invoke-virtual {v0, v4}, Lfr/testudo/spacecorsair/display/hud/InfoBarEnnemis;->setValue(F)V

    .line 143
    const v0, 0x455ac000    # 3500.0f

    iput v0, p0, Lfr/testudo/spacecorsair/business/ennemis/FrelonShip;->desengagementDistance:F

    .line 144
    iput v3, p0, Lfr/testudo/spacecorsair/business/ennemis/FrelonShip;->shootPrecision:F

    .line 146
    const/high16 v0, 0x43e10000    # 450.0f

    iput v0, p0, Lfr/testudo/spacecorsair/business/ennemis/FrelonShip;->mass:F

    .line 149
    const/4 v0, 0x1

    iput-boolean v0, p0, Lfr/testudo/spacecorsair/business/ennemis/FrelonShip;->drawOnRadar:Z

    .line 150
    iput v2, p0, Lfr/testudo/spacecorsair/business/ennemis/FrelonShip;->radarColorB:F

    .line 151
    iput v2, p0, Lfr/testudo/spacecorsair/business/ennemis/FrelonShip;->radarColorG:F

    .line 152
    iput v3, p0, Lfr/testudo/spacecorsair/business/ennemis/FrelonShip;->radarColorR:F

    .line 153
    const/high16 v0, 0x40400000    # 3.0f

    iput v0, p0, Lfr/testudo/spacecorsair/business/ennemis/FrelonShip;->radarPointSize:F

    .line 155
    const v0, 0x466a6000    # 15000.0f

    iput v0, p0, Lfr/testudo/spacecorsair/business/ennemis/FrelonShip;->distanceToPlayer:F

    .line 159
    const/16 v0, 0x7d0

    iput v0, p0, Lfr/testudo/spacecorsair/business/ennemis/FrelonShip;->nextShockWaveInMilli:I

    .line 161
    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModV34;->scale(Lfr/testudo/spacecorsair/business/ennemis/Ennemis;)V

    return-object p0
.end method

.method protected onAttackTargetStart()V
    .registers 1

    .prologue
    .line 215
    return-void
.end method

.method protected onAttackTargetStop()V
    .registers 1

    .prologue
    .line 220
    return-void
.end method

.method public onDestroyed(Z)V
    .registers 7

    .prologue
    .line 434
    invoke-super {p0, p1}, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->onDestroyed(Z)V

    .line 436
    invoke-static {}, Lfr/testudo/spacecorsair/business/factory/GamePools;->newRandomExplode()Lfr/testudo/spacecorsair/display/ExplosionAnim;

    move-result-object v0

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/ennemis/FrelonShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v0, v1, p0}, Lfr/testudo/spacecorsair/display/ExplosionAnim;->init(Lfr/testudo/spacecorsair/engine/Vector2;Lfr/testudo/spacecorsair/business/Element;)Lfr/testudo/spacecorsair/display/ExplosionAnim;

    move-result-object v0

    .line 437
    sget-object v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v1, v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v1, v1, Lfr/testudo/spacecorsair/game/Game;->currentLevel:Lfr/testudo/spacecorsair/game/levels/Level;

    iget-object v1, v1, Lfr/testudo/spacecorsair/game/levels/Level;->toAddAnimated:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 439
    const/4 v0, 0x2

    invoke-static {p0, v0}, Lfr/testudo/spacecorsair/display/ParticuleFactory;->addWhite(Lfr/testudo/spacecorsair/business/Element;I)V

    .line 440
    const/4 v0, 0x4

    invoke-static {p0, v0}, Lfr/testudo/spacecorsair/display/ParticuleFactory;->addRed(Lfr/testudo/spacecorsair/business/Element;I)V

    .line 441
    const/4 v0, 0x7

    invoke-static {p0, v0}, Lfr/testudo/spacecorsair/display/ParticuleFactory;->addYellow(Lfr/testudo/spacecorsair/business/Element;I)V

    .line 443
    invoke-static {}, Lfr/testudo/spacecorsair/business/factory/GamePools;->newShockWave()Lfr/testudo/spacecorsair/display/ShockWave;

    move-result-object v0

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/ennemis/FrelonShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    const/high16 v2, 0x42c80000    # 100.0f

    const v3, 0x44098000    # 550.0f

    const v4, 0x44228000    # 650.0f

    invoke-virtual {v0, v1, v2, v3, v4}, Lfr/testudo/spacecorsair/display/ShockWave;->init(Lfr/testudo/spacecorsair/engine/Vector2;FFF)Lfr/testudo/spacecorsair/display/ShockWave;

    move-result-object v0

    .line 444
    sget-object v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v1, v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v1, v1, Lfr/testudo/spacecorsair/game/Game;->currentLevel:Lfr/testudo/spacecorsair/game/levels/Level;

    iget-object v1, v1, Lfr/testudo/spacecorsair/game/levels/Level;->toAddDrawOnly:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 447
    return-void
.end method

.method public registerYourselfToDrawQueue()V
    .registers 10

    .prologue
    .line 375
    invoke-super {p0}, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->registerYourselfToDrawQueue()V

    .line 378
    iget-boolean v0, p0, Lfr/testudo/spacecorsair/business/ennemis/FrelonShip;->isPousee:Z

    if-eqz v0, :cond_43

    .line 380
    iget v0, p0, Lfr/testudo/spacecorsair/business/ennemis/FrelonShip;->cur_gaz_texture:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lfr/testudo/spacecorsair/business/ennemis/FrelonShip;->cur_gaz_texture:I

    .line 381
    iget v0, p0, Lfr/testudo/spacecorsair/business/ennemis/FrelonShip;->cur_gaz_texture:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_15

    .line 382
    const/4 v0, 0x0

    iput v0, p0, Lfr/testudo/spacecorsair/business/ennemis/FrelonShip;->cur_gaz_texture:I

    .line 385
    :cond_15
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/ennemis/FrelonShip;->tempVector:Lfr/testudo/spacecorsair/engine/Vector2;

    const/4 v1, 0x0

    const/high16 v2, 0x42be0000    # 95.0f

    invoke-virtual {v0, v1, v2}, Lfr/testudo/spacecorsair/engine/Vector2;->set(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    move-result-object v0

    iget v1, p0, Lfr/testudo/spacecorsair/business/ennemis/FrelonShip;->spin:F

    float-to-double v2, v1

    invoke-static {v2, v3}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lfr/testudo/spacecorsair/engine/Vector2;->applyRotatation(D)Lfr/testudo/spacecorsair/engine/Vector2;

    move-result-object v0

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/ennemis/FrelonShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/engine/Vector2;->add(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 387
    const/high16 v5, 0x3f800000    # 1.0f

    .line 389
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->renderQueue:Lfr/testudo/spacecorsair/engine/RenderQueue;

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/ennemis/FrelonShip;->tempVector:Lfr/testudo/spacecorsair/engine/Vector2;

    const/4 v2, 0x0

    sget-object v3, Lfr/testudo/spacecorsair/business/ennemis/FrelonShip;->gazDrawables:[Lfr/testudo/spacecorsair/display/Drawable;

    iget v4, p0, Lfr/testudo/spacecorsair/business/ennemis/FrelonShip;->cur_gaz_texture:I

    aget-object v3, v3, v4

    iget v4, p0, Lfr/testudo/spacecorsair/business/ennemis/FrelonShip;->spin:F

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Lfr/testudo/spacecorsair/engine/RenderQueue;->addToWaitingQueue(Lfr/testudo/spacecorsair/engine/Vector2;ZLfr/testudo/spacecorsair/display/Drawable;FFZ)V

    .line 395
    :cond_43
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->renderQueue:Lfr/testudo/spacecorsair/engine/RenderQueue;

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/ennemis/FrelonShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget-boolean v2, p0, Lfr/testudo/spacecorsair/business/ennemis/FrelonShip;->cameraRelative:Z

    sget-object v3, Lfr/testudo/spacecorsair/business/ennemis/FrelonShip;->shieldDrawable:Lfr/testudo/spacecorsair/display/Drawable;

    iget v4, p0, Lfr/testudo/spacecorsair/business/ennemis/FrelonShip;->spin:F

    iget-object v5, p0, Lfr/testudo/spacecorsair/business/ennemis/FrelonShip;->shield:Lfr/testudo/spacecorsair/business/player/Shield;

    iget v5, v5, Lfr/testudo/spacecorsair/business/player/Shield;->valueInPourc:F

    const/high16 v6, 0x42c80000    # 100.0f

    div-float/2addr v5, v6

    const/high16 v6, 0x3f800000    # 1.0f

    const v7, 0x3ecccccd    # 0.4f

    const v8, 0x3ecccccd    # 0.4f

    invoke-virtual/range {v0 .. v8}, Lfr/testudo/spacecorsair/engine/RenderQueue;->addToWaitingQueue(Lfr/testudo/spacecorsair/engine/Vector2;ZLfr/testudo/spacecorsair/display/Drawable;FFFFF)V

    .line 400
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/ennemis/FrelonShip;->tempVector:Lfr/testudo/spacecorsair/engine/Vector2;

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/ennemis/FrelonShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/engine/Vector2;->setSameAs(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 401
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/ennemis/FrelonShip;->tempVector:Lfr/testudo/spacecorsair/engine/Vector2;

    sget-object v1, Lfr/testudo/spacecorsair/business/ennemis/FrelonShip;->drawable:Lfr/testudo/spacecorsair/display/Drawable;

    iget-object v1, v1, Lfr/testudo/spacecorsair/display/Drawable;->dimensions:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v1, v1, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    neg-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    const/high16 v2, 0x41c00000    # 24.0f

    sub-float/2addr v1, v2

    sget-object v2, Lfr/testudo/spacecorsair/business/ennemis/FrelonShip;->drawable:Lfr/testudo/spacecorsair/display/Drawable;

    iget-object v2, v2, Lfr/testudo/spacecorsair/display/Drawable;->dimensions:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v2, v2, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    const/high16 v3, 0x42140000    # 37.0f

    add-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Lfr/testudo/spacecorsair/engine/Vector2;->add(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 402
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->renderQueue:Lfr/testudo/spacecorsair/engine/RenderQueue;

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/ennemis/FrelonShip;->tempVector:Lfr/testudo/spacecorsair/engine/Vector2;

    const/4 v2, 0x0

    iget-object v3, p0, Lfr/testudo/spacecorsair/business/ennemis/FrelonShip;->levelStr:Ljava/lang/String;

    iget v4, p0, Lfr/testudo/spacecorsair/business/ennemis/FrelonShip;->levelColorR:F

    iget v5, p0, Lfr/testudo/spacecorsair/business/ennemis/FrelonShip;->levelColorG:F

    iget v6, p0, Lfr/testudo/spacecorsair/business/ennemis/FrelonShip;->levelColorB:F

    const v7, 0x3f4ccccd    # 0.8f

    sget-object v8, Lfr/testudo/spacecorsair/textengine/TextSize;->NORMAL:Lfr/testudo/spacecorsair/textengine/TextSize;

    invoke-virtual/range {v0 .. v8}, Lfr/testudo/spacecorsair/engine/RenderQueue;->addTextToTextWaitingQueue(Lfr/testudo/spacecorsair/engine/Vector2;ZLjava/lang/String;FFFFLfr/testudo/spacecorsair/textengine/TextSize;)V

    .line 405
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/ennemis/FrelonShip;->tempVector:Lfr/testudo/spacecorsair/engine/Vector2;

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/ennemis/FrelonShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/engine/Vector2;->setSameAs(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 406
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/ennemis/FrelonShip;->tempVector:Lfr/testudo/spacecorsair/engine/Vector2;

    const/high16 v1, 0x40a00000    # 5.0f

    const/high16 v2, 0x42200000    # 40.0f

    invoke-virtual {v0, v1, v2}, Lfr/testudo/spacecorsair/engine/Vector2;->add(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 407
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->renderQueue:Lfr/testudo/spacecorsair/engine/RenderQueue;

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/ennemis/FrelonShip;->tempVector:Lfr/testudo/spacecorsair/engine/Vector2;

    iget-object v2, p0, Lfr/testudo/spacecorsair/business/ennemis/FrelonShip;->lifeBar:Lfr/testudo/spacecorsair/display/hud/InfoBarEnnemis;

    invoke-virtual {v0, v1, v2}, Lfr/testudo/spacecorsair/engine/RenderQueue;->addToWaitingQueue(Lfr/testudo/spacecorsair/engine/Vector2;Lfr/testudo/spacecorsair/display/hud/InfoBar;)V

    .line 409
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/ennemis/FrelonShip;->tempVector:Lfr/testudo/spacecorsair/engine/Vector2;

    const/4 v1, 0x0

    const/high16 v2, 0x41200000    # 10.0f

    invoke-virtual {v0, v1, v2}, Lfr/testudo/spacecorsair/engine/Vector2;->add(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 410
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->renderQueue:Lfr/testudo/spacecorsair/engine/RenderQueue;

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/ennemis/FrelonShip;->tempVector:Lfr/testudo/spacecorsair/engine/Vector2;

    iget-object v2, p0, Lfr/testudo/spacecorsair/business/ennemis/FrelonShip;->shieldBar:Lfr/testudo/spacecorsair/display/hud/InfoBarEnnemis;

    invoke-virtual {v0, v1, v2}, Lfr/testudo/spacecorsair/engine/RenderQueue;->addToWaitingQueue(Lfr/testudo/spacecorsair/engine/Vector2;Lfr/testudo/spacecorsair/display/hud/InfoBar;)V

    .line 412
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/ennemis/FrelonShip;->specificName:Ljava/lang/String;

    if-eqz v0, :cond_11b

    .line 414
    iget v0, p0, Lfr/testudo/spacecorsair/business/ennemis/FrelonShip;->specificNameDecalX:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_e2

    .line 415
    sget-object v0, Lfr/testudo/spacecorsair/engine/GameRenderer;->glTextNormal:Lfr/testudo/spacecorsair/textengine/GLText;

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/ennemis/FrelonShip;->specificName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/textengine/GLText;->getLength(Ljava/lang/String;)F

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lfr/testudo/spacecorsair/business/ennemis/FrelonShip;->specificNameDecalX:I

    .line 417
    :cond_e2
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/ennemis/FrelonShip;->tempVector:Lfr/testudo/spacecorsair/engine/Vector2;

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/ennemis/FrelonShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/engine/Vector2;->setSameAs(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    move-result-object v0

    iget v1, p0, Lfr/testudo/spacecorsair/business/ennemis/FrelonShip;->specificNameDecalX:I

    neg-int v1, v1

    int-to-float v1, v1

    sget-object v2, Lfr/testudo/spacecorsair/business/ennemis/FrelonShip;->shieldDrawable:Lfr/testudo/spacecorsair/display/Drawable;

    iget-object v2, v2, Lfr/testudo/spacecorsair/display/Drawable;->dimensions:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v2, v2, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    const/high16 v3, 0x41c00000    # 24.0f

    add-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Lfr/testudo/spacecorsair/engine/Vector2;->add(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 419
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->renderQueue:Lfr/testudo/spacecorsair/engine/RenderQueue;

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/ennemis/FrelonShip;->tempVector:Lfr/testudo/spacecorsair/engine/Vector2;

    const/4 v2, 0x0

    iget-object v3, p0, Lfr/testudo/spacecorsair/business/ennemis/FrelonShip;->specificName:Ljava/lang/String;

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

    .line 422
    :cond_11b
    iget-boolean v0, p0, Lfr/testudo/spacecorsair/business/ennemis/FrelonShip;->elite:Z

    if-eqz v0, :cond_158

    .line 423
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/ennemis/FrelonShip;->tempVector:Lfr/testudo/spacecorsair/engine/Vector2;

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/ennemis/FrelonShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/engine/Vector2;->setSameAs(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    move-result-object v0

    sget-object v1, Lfr/testudo/spacecorsair/business/ennemis/FrelonShip;->drawable:Lfr/testudo/spacecorsair/display/Drawable;

    iget-object v1, v1, Lfr/testudo/spacecorsair/display/Drawable;->dimensions:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v1, v1, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    const/high16 v2, 0x420c0000    # 35.0f

    add-float/2addr v1, v2

    sget-object v2, Lfr/testudo/spacecorsair/business/ennemis/FrelonShip;->drawable:Lfr/testudo/spacecorsair/display/Drawable;

    iget-object v2, v2, Lfr/testudo/spacecorsair/display/Drawable;->dimensions:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v2, v2, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    const/high16 v3, 0x42500000    # 52.0f

    add-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Lfr/testudo/spacecorsair/engine/Vector2;->add(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 424
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->renderQueue:Lfr/testudo/spacecorsair/engine/RenderQueue;

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/ennemis/FrelonShip;->tempVector:Lfr/testudo/spacecorsair/engine/Vector2;

    const/4 v2, 0x0

    sget-object v3, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->ELITE_MARK_SIZE_BIG:Lfr/testudo/spacecorsair/display/Drawable;

    const/high16 v4, 0x43340000    # 180.0f

    const/high16 v5, 0x3f800000    # 1.0f

    const/high16 v6, 0x3f800000    # 1.0f

    const/high16 v7, 0x3f800000    # 1.0f

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-virtual/range {v0 .. v8}, Lfr/testudo/spacecorsair/engine/RenderQueue;->addToWaitingQueue(Lfr/testudo/spacecorsair/engine/Vector2;ZLfr/testudo/spacecorsair/display/Drawable;FFFFF)V

    .line 429
    :cond_158
    return-void
.end method

.method public requestLaserShoot()V
    .registers 3

    .prologue
    .line 454
    iget v0, p0, Lfr/testudo/spacecorsair/business/ennemis/FrelonShip;->nextShootAllowed:I

    if-gtz v0, :cond_2e

    .line 457
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/ennemis/FrelonShip;->attackTarget:Lfr/testudo/spacecorsair/business/Element;

    invoke-static {p0, v0}, Lfr/testudo/spacecorsair/business/Util;->isLaserOrMissileSoundEarable(Lfr/testudo/spacecorsair/business/Element;Lfr/testudo/spacecorsair/business/Element;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 458
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->soundManager:Lfr/testudo/spacecorsair/engine/SoundManager;

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/engine/SoundManager;->playLaserEnnemis()V

    .line 460
    :cond_13
    invoke-direct {p0}, Lfr/testudo/spacecorsair/business/ennemis/FrelonShip;->processShoot()V

    .line 461
    iget v0, p0, Lfr/testudo/spacecorsair/business/ennemis/FrelonShip;->curRafale:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lfr/testudo/spacecorsair/business/ennemis/FrelonShip;->curRafale:I

    .line 463
    iget v0, p0, Lfr/testudo/spacecorsair/business/ennemis/FrelonShip;->curRafale:I

    iget v1, p0, Lfr/testudo/spacecorsair/business/ennemis/FrelonShip;->rafaleCount:I

    if-ne v0, v1, :cond_2f

    .line 464
    const/4 v0, 0x0

    iput v0, p0, Lfr/testudo/spacecorsair/business/ennemis/FrelonShip;->curRafale:I

    .line 465
    iget-wide v0, p0, Lfr/testudo/spacecorsair/business/ennemis/FrelonShip;->milleSecBetweenShots:J

    long-to-float v0, v0

    iget v1, p0, Lfr/testudo/spacecorsair/business/ennemis/FrelonShip;->alterationReloadValue:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lfr/testudo/spacecorsair/business/ennemis/FrelonShip;->nextShootAllowed:I

    .line 472
    :cond_2e
    :goto_2e
    return-void

    .line 468
    :cond_2f
    iget v0, p0, Lfr/testudo/spacecorsair/business/ennemis/FrelonShip;->timeBewteenShootInMilli:I

    int-to-float v0, v0

    iget v1, p0, Lfr/testudo/spacecorsair/business/ennemis/FrelonShip;->alterationReloadValue:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lfr/testudo/spacecorsair/business/ennemis/FrelonShip;->nextShootAllowed:I

    goto :goto_2e
.end method

.method public setElite()Lfr/testudo/spacecorsair/business/ennemis/Ennemis;
    .registers 9

    .prologue
    const/high16 v7, 0x40000000    # 2.0f

    const/high16 v6, 0x40400000    # 3.0f

    .line 517
    invoke-super {p0}, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->setElite()Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    .line 518
    iget v0, p0, Lfr/testudo/spacecorsair/business/ennemis/FrelonShip;->xp:I

    mul-int/lit8 v0, v0, 0x4

    iput v0, p0, Lfr/testudo/spacecorsair/business/ennemis/FrelonShip;->xp:I

    .line 519
    iget v0, p0, Lfr/testudo/spacecorsair/business/ennemis/FrelonShip;->life:F

    mul-float/2addr v0, v6

    iput v0, p0, Lfr/testudo/spacecorsair/business/ennemis/FrelonShip;->life:F

    .line 520
    iget v0, p0, Lfr/testudo/spacecorsair/business/ennemis/FrelonShip;->maxLife:F

    mul-float/2addr v0, v6

    iput v0, p0, Lfr/testudo/spacecorsair/business/ennemis/FrelonShip;->maxLife:F

    .line 521
    iget v0, p0, Lfr/testudo/spacecorsair/business/ennemis/FrelonShip;->pouseeForce:F

    const/high16 v1, 0x3fa00000    # 1.25f

    mul-float/2addr v0, v1

    iput v0, p0, Lfr/testudo/spacecorsair/business/ennemis/FrelonShip;->pouseeForce:F

    .line 522
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/ennemis/FrelonShip;->shield:Lfr/testudo/spacecorsair/business/player/Shield;

    iget v1, v0, Lfr/testudo/spacecorsair/business/player/Shield;->capacity:F

    mul-float/2addr v1, v7

    iput v1, v0, Lfr/testudo/spacecorsair/business/player/Shield;->capacity:F

    .line 523
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/ennemis/FrelonShip;->shield:Lfr/testudo/spacecorsair/business/player/Shield;

    iget v1, v0, Lfr/testudo/spacecorsair/business/player/Shield;->currentValue:F

    iget-object v2, p0, Lfr/testudo/spacecorsair/business/ennemis/FrelonShip;->shield:Lfr/testudo/spacecorsair/business/player/Shield;

    iget v2, v2, Lfr/testudo/spacecorsair/business/player/Shield;->capacity:F

    mul-float/2addr v1, v2

    iput v1, v0, Lfr/testudo/spacecorsair/business/player/Shield;->currentValue:F

    .line 524
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/ennemis/FrelonShip;->shield:Lfr/testudo/spacecorsair/business/player/Shield;

    iget v1, v0, Lfr/testudo/spacecorsair/business/player/Shield;->reloadTime:F

    float-to-double v2, v1

    const-wide v4, 0x3fd999999999999aL    # 0.4

    mul-double/2addr v2, v4

    double-to-float v1, v2

    iput v1, v0, Lfr/testudo/spacecorsair/business/player/Shield;->reloadTime:F

    .line 525
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/ennemis/FrelonShip;->shield:Lfr/testudo/spacecorsair/business/player/Shield;

    iget v1, v0, Lfr/testudo/spacecorsair/business/player/Shield;->reloadUnitBySec:F

    mul-float/2addr v1, v6

    iput v1, v0, Lfr/testudo/spacecorsair/business/player/Shield;->reloadUnitBySec:F

    .line 526
    iget v0, p0, Lfr/testudo/spacecorsair/business/ennemis/FrelonShip;->bulletDamage:F

    const/high16 v1, 0x3fc00000    # 1.5f

    mul-float/2addr v0, v1

    iput v0, p0, Lfr/testudo/spacecorsair/business/ennemis/FrelonShip;->bulletDamage:F

    .line 527
    iget-wide v0, p0, Lfr/testudo/spacecorsair/business/ennemis/FrelonShip;->milleSecBetweenShots:J

    long-to-float v0, v0

    const v1, 0x3f4ccccd    # 0.8f

    mul-float/2addr v0, v1

    float-to-long v0, v0

    iput-wide v0, p0, Lfr/testudo/spacecorsair/business/ennemis/FrelonShip;->milleSecBetweenShots:J

    .line 528
    iget v0, p0, Lfr/testudo/spacecorsair/business/ennemis/FrelonShip;->radarPointSize:F

    add-float/2addr v0, v7

    iput v0, p0, Lfr/testudo/spacecorsair/business/ennemis/FrelonShip;->radarPointSize:F

    .line 529
    iget-wide v0, p0, Lfr/testudo/spacecorsair/business/ennemis/FrelonShip;->missileReloadTimeInMilli:J

    long-to-float v0, v0

    const v1, 0x3f333333    # 0.7f

    mul-float/2addr v0, v1

    float-to-long v0, v0

    iput-wide v0, p0, Lfr/testudo/spacecorsair/business/ennemis/FrelonShip;->missileReloadTimeInMilli:J

    .line 531
    return-object p0
.end method

.method protected shootEnergyBullet(FF)V
    .registers 10

    .prologue
    const v6, 0x3dcccccd    # 0.1f

    .line 495
    iget v0, p0, Lfr/testudo/spacecorsair/business/ennemis/FrelonShip;->spin:F

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v0

    .line 496
    invoke-static {}, Lfr/testudo/spacecorsair/business/factory/GamePools;->newEnergyLaser()Lfr/testudo/spacecorsair/business/projectiles/EnergyLaser;

    move-result-object v2

    iget v3, p0, Lfr/testudo/spacecorsair/business/ennemis/FrelonShip;->bulletDamage:F

    iget v4, p0, Lfr/testudo/spacecorsair/business/ennemis/FrelonShip;->bulletLifeTime:I

    iget-object v5, p0, Lfr/testudo/spacecorsair/business/ennemis/FrelonShip;->specialLaserAlteration:Lfr/testudo/spacecorsair/business/loot/stuff/alteration/AlterationSpecs;

    invoke-virtual {v2, v3, v4, p0, v5}, Lfr/testudo/spacecorsair/business/projectiles/EnergyLaser;->init(FILfr/testudo/spacecorsair/business/Element;Lfr/testudo/spacecorsair/business/loot/stuff/alteration/AlterationSpecs;)Lfr/testudo/spacecorsair/business/projectiles/EnergyLaser;

    move-result-object v2

    .line 498
    iput v6, v2, Lfr/testudo/spacecorsair/business/projectiles/EnergyLaser;->r:F

    .line 499
    const/high16 v3, 0x3f800000    # 1.0f

    iput v3, v2, Lfr/testudo/spacecorsair/business/projectiles/EnergyLaser;->g:F

    .line 500
    iput v6, v2, Lfr/testudo/spacecorsair/business/projectiles/EnergyLaser;->b:F

    .line 502
    iget-object v3, p0, Lfr/testudo/spacecorsair/business/ennemis/FrelonShip;->tempVector:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v3, p1, p2}, Lfr/testudo/spacecorsair/engine/Vector2;->set(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 503
    iget-object v3, p0, Lfr/testudo/spacecorsair/business/ennemis/FrelonShip;->tempVector:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v3, v0, v1}, Lfr/testudo/spacecorsair/engine/Vector2;->applyRotatation(D)Lfr/testudo/spacecorsair/engine/Vector2;

    move-result-object v3

    .line 504
    iget-object v4, v2, Lfr/testudo/spacecorsair/business/projectiles/EnergyLaser;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget-object v5, p0, Lfr/testudo/spacecorsair/business/ennemis/FrelonShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v4, v5}, Lfr/testudo/spacecorsair/engine/Vector2;->setSameAs(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    move-result-object v4

    invoke-virtual {v4, v3}, Lfr/testudo/spacecorsair/engine/Vector2;->add(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 505
    iget-object v3, v2, Lfr/testudo/spacecorsair/business/projectiles/EnergyLaser;->speed:Lfr/testudo/spacecorsair/engine/Vector2;

    const/4 v4, 0x0

    const/high16 v5, -0x3ee00000    # -10.0f

    invoke-virtual {v3, v4, v5}, Lfr/testudo/spacecorsair/engine/Vector2;->set(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 506
    iget-object v3, v2, Lfr/testudo/spacecorsair/business/projectiles/EnergyLaser;->speed:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v3, v0, v1}, Lfr/testudo/spacecorsair/engine/Vector2;->applyRotatation(D)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 507
    iget-object v3, v2, Lfr/testudo/spacecorsair/business/projectiles/EnergyLaser;->speed:Lfr/testudo/spacecorsair/engine/Vector2;

    iget-object v4, p0, Lfr/testudo/spacecorsair/business/ennemis/FrelonShip;->speed:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v3, v4}, Lfr/testudo/spacecorsair/engine/Vector2;->add(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 508
    invoke-static {v0, v1}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v0

    double-to-float v0, v0

    iput v0, v2, Lfr/testudo/spacecorsair/business/projectiles/EnergyLaser;->spin:F

    .line 509
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/Game;->currentLevel:Lfr/testudo/spacecorsair/game/levels/Level;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/levels/Level;->toAdd:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 510
    iget-wide v0, p0, Lfr/testudo/spacecorsair/business/ennemis/FrelonShip;->milleSecBetweenShots:J

    iput-wide v0, p0, Lfr/testudo/spacecorsair/business/ennemis/FrelonShip;->nextShootAlowed:J

    .line 511
    return-void
.end method
