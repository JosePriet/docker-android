.class public Lfr/testudo/spacecorsair/business/ennemis/RocketTourelle;
.super Lfr/testudo/spacecorsair/business/ennemis/Ennemis;
.source "SourceFile"


# static fields
.field public static final SHOCKWAVE_MINI_DISTANCE:I = 0x190

.field public static final TIME_BETWEEN_SHOCKWAVE:I = 0x7d0

.field public static baseDrawableDim:Lfr/testudo/spacecorsair/engine/Vector2;

.field public static drawable:Lfr/testudo/spacecorsair/display/Drawable;

.field public static drawableDim:Lfr/testudo/spacecorsair/engine/Vector2;

.field public static drawableDimHidden:Lfr/testudo/spacecorsair/engine/Vector2;

.field public static drawableFix:Lfr/testudo/spacecorsair/display/Drawable;

.field public static drawableHidden:Lfr/testudo/spacecorsair/display/Drawable;

.field public static miniDrawable:Lfr/testudo/spacecorsair/display/Drawable;

.field public static physicalDim:Lfr/testudo/spacecorsair/engine/Vector2;


# instance fields
.field public hidden:Z

.field left:Z

.field public missileSpec:Lfr/testudo/spacecorsair/business/loot/stuff/missile/MissileSpec;

.field public nextShockWaveInMilli:I


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const/high16 v3, 0x43340000    # 180.0f

    const/high16 v2, 0x43000000    # 128.0f

    const/high16 v1, 0x43480000    # 200.0f

    .line 38
    new-instance v0, Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-direct {v0, v3, v3}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>(FF)V

    sput-object v0, Lfr/testudo/spacecorsair/business/ennemis/RocketTourelle;->physicalDim:Lfr/testudo/spacecorsair/engine/Vector2;

    .line 39
    new-instance v0, Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-direct {v0, v1, v1}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>(FF)V

    sput-object v0, Lfr/testudo/spacecorsair/business/ennemis/RocketTourelle;->drawableDim:Lfr/testudo/spacecorsair/engine/Vector2;

    .line 40
    new-instance v0, Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-direct {v0, v1, v1}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>(FF)V

    sput-object v0, Lfr/testudo/spacecorsair/business/ennemis/RocketTourelle;->baseDrawableDim:Lfr/testudo/spacecorsair/engine/Vector2;

    .line 41
    new-instance v0, Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-direct {v0, v2, v2}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>(FF)V

    sput-object v0, Lfr/testudo/spacecorsair/business/ennemis/RocketTourelle;->drawableDimHidden:Lfr/testudo/spacecorsair/engine/Vector2;

    return-void
.end method

.method public constructor <init>()V
    .registers 6

    .prologue
    const/high16 v4, 0x3f400000    # 0.75f

    .line 84
    invoke-direct {p0}, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;-><init>()V

    .line 32
    const/4 v0, 0x0

    iput-boolean v0, p0, Lfr/testudo/spacecorsair/business/ennemis/RocketTourelle;->hidden:Z

    .line 236
    const/4 v0, 0x1

    iput-boolean v0, p0, Lfr/testudo/spacecorsair/business/ennemis/RocketTourelle;->left:Z

    .line 86
    new-instance v0, Lfr/testudo/spacecorsair/engine/Vector2;

    const/4 v1, 0x0

    sget-object v2, Lfr/testudo/spacecorsair/business/ennemis/RocketTourelle;->drawableDim:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v2, v2, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    neg-float v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    const/high16 v3, 0x40a00000    # 5.0f

    sub-float/2addr v2, v3

    invoke-direct {v0, v1, v2}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>(FF)V

    sget-object v1, Lfr/testudo/spacecorsair/business/ennemis/RocketTourelle;->drawableDim:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v1, v1, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    float-to-int v1, v1

    add-int/lit8 v1, v1, -0x19

    const/4 v2, 0x6

    invoke-static {v0, v1, v2}, Lfr/testudo/spacecorsair/display/hud/InfoBarEnnemis;->newRed(Lfr/testudo/spacecorsair/engine/Vector2;II)Lfr/testudo/spacecorsair/display/hud/InfoBarEnnemis;

    move-result-object v0

    iput-object v0, p0, Lfr/testudo/spacecorsair/business/ennemis/RocketTourelle;->lifeBar:Lfr/testudo/spacecorsair/display/hud/InfoBarEnnemis;

    .line 87
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/ennemis/RocketTourelle;->lifeBar:Lfr/testudo/spacecorsair/display/hud/InfoBarEnnemis;

    iput v4, v0, Lfr/testudo/spacecorsair/display/hud/InfoBarEnnemis;->extR:F

    .line 88
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/ennemis/RocketTourelle;->lifeBar:Lfr/testudo/spacecorsair/display/hud/InfoBarEnnemis;

    iput v4, v0, Lfr/testudo/spacecorsair/display/hud/InfoBarEnnemis;->extG:F

    .line 89
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/ennemis/RocketTourelle;->lifeBar:Lfr/testudo/spacecorsair/display/hud/InfoBarEnnemis;

    iput v4, v0, Lfr/testudo/spacecorsair/display/hud/InfoBarEnnemis;->extB:F

    .line 90
    return-void
.end method

.method public static setTexture(Lfr/testudo/spacecorsair/display/Texture;Lfr/testudo/spacecorsair/display/Texture;Lfr/testudo/spacecorsair/display/Texture;)V
    .registers 5

    .prologue
    .line 61
    new-instance v0, Lfr/testudo/spacecorsair/display/Drawable;

    sget-object v1, Lfr/testudo/spacecorsair/business/ennemis/RocketTourelle;->drawableDim:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-direct {v0, v1, p0}, Lfr/testudo/spacecorsair/display/Drawable;-><init>(Lfr/testudo/spacecorsair/engine/Vector2;Lfr/testudo/spacecorsair/display/Texture;)V

    sput-object v0, Lfr/testudo/spacecorsair/business/ennemis/RocketTourelle;->drawable:Lfr/testudo/spacecorsair/display/Drawable;

    .line 62
    new-instance v0, Lfr/testudo/spacecorsair/display/Drawable;

    sget-object v1, Lfr/testudo/spacecorsair/business/ennemis/RocketTourelle;->baseDrawableDim:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-direct {v0, v1, p1}, Lfr/testudo/spacecorsair/display/Drawable;-><init>(Lfr/testudo/spacecorsair/engine/Vector2;Lfr/testudo/spacecorsair/display/Texture;)V

    sput-object v0, Lfr/testudo/spacecorsair/business/ennemis/RocketTourelle;->drawableFix:Lfr/testudo/spacecorsair/display/Drawable;

    .line 63
    new-instance v0, Lfr/testudo/spacecorsair/display/Drawable;

    sget-object v1, Lfr/testudo/spacecorsair/engine/Vector2;->VECTOR_32:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-direct {v0, v1, p0}, Lfr/testudo/spacecorsair/display/Drawable;-><init>(Lfr/testudo/spacecorsair/engine/Vector2;Lfr/testudo/spacecorsair/display/Texture;)V

    sput-object v0, Lfr/testudo/spacecorsair/business/ennemis/RocketTourelle;->miniDrawable:Lfr/testudo/spacecorsair/display/Drawable;

    .line 64
    new-instance v0, Lfr/testudo/spacecorsair/display/Drawable;

    sget-object v1, Lfr/testudo/spacecorsair/business/ennemis/RocketTourelle;->drawableDimHidden:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-direct {v0, v1, p2}, Lfr/testudo/spacecorsair/display/Drawable;-><init>(Lfr/testudo/spacecorsair/engine/Vector2;Lfr/testudo/spacecorsair/display/Texture;)V

    sput-object v0, Lfr/testudo/spacecorsair/business/ennemis/RocketTourelle;->drawableHidden:Lfr/testudo/spacecorsair/display/Drawable;

    .line 66
    return-void
.end method

.method private shootMissile(FFF)V
    .registers 11

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 256
    invoke-static {}, Lfr/testudo/spacecorsair/business/factory/GamePools;->newLittleMissile()Lfr/testudo/spacecorsair/business/projectiles/LittleMissile;

    move-result-object v0

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/ennemis/RocketTourelle;->missileSpec:Lfr/testudo/spacecorsair/business/loot/stuff/missile/MissileSpec;

    iget-object v2, p0, Lfr/testudo/spacecorsair/business/ennemis/RocketTourelle;->attackTarget:Lfr/testudo/spacecorsair/business/Element;

    iget-object v3, p0, Lfr/testudo/spacecorsair/business/ennemis/RocketTourelle;->specialMissileAlteration:Lfr/testudo/spacecorsair/business/loot/stuff/alteration/AlterationSpecs;

    invoke-virtual {v0, v1, p0, v2, v3}, Lfr/testudo/spacecorsair/business/projectiles/LittleMissile;->initWithSpecs(Lfr/testudo/spacecorsair/business/loot/stuff/missile/MissileSpec;Lfr/testudo/spacecorsair/business/Element;Lfr/testudo/spacecorsair/business/Element;Lfr/testudo/spacecorsair/business/loot/stuff/alteration/AlterationSpecs;)Lfr/testudo/spacecorsair/business/projectiles/Missile;

    move-result-object v0

    .line 258
    iget-boolean v1, p0, Lfr/testudo/spacecorsair/business/ennemis/RocketTourelle;->elite:Z

    if-eqz v1, :cond_1b

    .line 259
    iget v1, v0, Lfr/testudo/spacecorsair/business/projectiles/Missile;->damage:F

    const/high16 v2, 0x3fc00000    # 1.5f

    mul-float/2addr v1, v2

    iput v1, v0, Lfr/testudo/spacecorsair/business/projectiles/Missile;->damage:F

    .line 261
    :cond_1b
    iget-object v1, p0, Lfr/testudo/spacecorsair/business/ennemis/RocketTourelle;->tempVector:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v1, p1, p2}, Lfr/testudo/spacecorsair/engine/Vector2;->set(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 262
    iget v1, p0, Lfr/testudo/spacecorsair/business/ennemis/RocketTourelle;->spin:F

    add-float/2addr v1, p3

    .line 264
    iget v2, p0, Lfr/testudo/spacecorsair/business/ennemis/RocketTourelle;->spin:F

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v2

    .line 265
    iget-object v4, p0, Lfr/testudo/spacecorsair/business/ennemis/RocketTourelle;->tempVector:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v4, v2, v3}, Lfr/testudo/spacecorsair/engine/Vector2;->applyRotatation(D)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 266
    iget-object v2, v0, Lfr/testudo/spacecorsair/business/projectiles/Missile;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget-object v3, p0, Lfr/testudo/spacecorsair/business/ennemis/RocketTourelle;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v2, v3}, Lfr/testudo/spacecorsair/engine/Vector2;->setSameAs(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    move-result-object v2

    iget-object v3, p0, Lfr/testudo/spacecorsair/business/ennemis/RocketTourelle;->tempVector:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v2, v3}, Lfr/testudo/spacecorsair/engine/Vector2;->add(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 267
    iget-object v2, v0, Lfr/testudo/spacecorsair/business/projectiles/Missile;->speed:Lfr/testudo/spacecorsair/engine/Vector2;

    const/4 v3, 0x0

    const/high16 v4, -0x40000000    # -2.0f

    invoke-virtual {v2, v3, v4}, Lfr/testudo/spacecorsair/engine/Vector2;->set(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 268
    iput v5, v0, Lfr/testudo/spacecorsair/business/projectiles/Missile;->timeAllume:I

    .line 269
    iput-boolean v5, v0, Lfr/testudo/spacecorsair/business/projectiles/Missile;->drawOnRadar:Z

    .line 270
    iput-boolean v6, v0, Lfr/testudo/spacecorsair/business/projectiles/Missile;->dontDisplayAlertMignature:Z

    .line 272
    iget-object v2, v0, Lfr/testudo/spacecorsair/business/projectiles/Missile;->speed:Lfr/testudo/spacecorsair/engine/Vector2;

    float-to-double v4, v1

    invoke-static {v4, v5}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Lfr/testudo/spacecorsair/engine/Vector2;->applyRotatation(D)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 273
    iget-object v2, v0, Lfr/testudo/spacecorsair/business/projectiles/Missile;->speed:Lfr/testudo/spacecorsair/engine/Vector2;

    iget-object v3, p0, Lfr/testudo/spacecorsair/business/ennemis/RocketTourelle;->speed:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v2, v3}, Lfr/testudo/spacecorsair/engine/Vector2;->add(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 274
    iput v1, v0, Lfr/testudo/spacecorsair/business/projectiles/Missile;->spin:F

    .line 275
    iput-boolean v6, v0, Lfr/testudo/spacecorsair/business/projectiles/Missile;->neverCutGaz:Z

    .line 277
    sget-object v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v1, v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v1, v1, Lfr/testudo/spacecorsair/game/Game;->currentLevel:Lfr/testudo/spacecorsair/game/levels/Level;

    iget-object v1, v1, Lfr/testudo/spacecorsair/game/levels/Level;->toAdd:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 279
    return-void
.end method


# virtual methods
.method public final applyAsteroidCollision(F)V
    .registers 2

    .prologue
    .line 306
    return-void
.end method

.method public applyDamage(FLfr/testudo/spacecorsair/business/Element;Lfr/testudo/spacecorsair/business/projectiles/Projectile;)V
    .registers 6

    .prologue
    .line 285
    invoke-super {p0, p1, p2, p3}, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->applyDamage(FLfr/testudo/spacecorsair/business/Element;Lfr/testudo/spacecorsair/business/projectiles/Projectile;)V

    .line 286
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/ennemis/RocketTourelle;->lifeBar:Lfr/testudo/spacecorsair/display/hud/InfoBarEnnemis;

    iget v1, p0, Lfr/testudo/spacecorsair/business/ennemis/RocketTourelle;->lifeInPourc:F

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/display/hud/InfoBarEnnemis;->setValue(F)V

    .line 287
    return-void
.end method

.method protected doAttackIa(JJ)V
    .registers 9

    .prologue
    .line 140
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/ennemis/RocketTourelle;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/ennemis/RocketTourelle;->attackTarget:Lfr/testudo/spacecorsair/business/Element;

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

    .line 142
    iget v1, p0, Lfr/testudo/spacecorsair/business/ennemis/RocketTourelle;->spin:F

    sub-float v1, v0, v1

    float-to-int v1, v1

    .line 143
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    .line 145
    int-to-float v2, v1

    const/high16 v3, 0x40800000    # 4.0f

    cmpg-float v2, v2, v3

    if-gez v2, :cond_34

    iget v2, p0, Lfr/testudo/spacecorsair/business/ennemis/RocketTourelle;->distanceToPlayer:F

    iget v3, p0, Lfr/testudo/spacecorsair/business/ennemis/RocketTourelle;->distanceShoot:F

    cmpg-float v2, v2, v3

    if-gez v2, :cond_34

    .line 147
    invoke-virtual {p0}, Lfr/testudo/spacecorsair/business/ennemis/RocketTourelle;->shoot()V

    .line 150
    :cond_34
    int-to-float v2, v1

    const/high16 v3, 0x3f000000    # 0.5f

    cmpg-float v2, v2, v3

    if-gez v2, :cond_3f

    .line 151
    const/4 v0, 0x0

    iput v0, p0, Lfr/testudo/spacecorsair/business/ennemis/RocketTourelle;->spinSpeed:F

    .line 174
    :goto_3e
    return-void

    .line 154
    :cond_3f
    const/16 v2, 0xb4

    if-gt v1, v2, :cond_54

    .line 156
    iget v1, p0, Lfr/testudo/spacecorsair/business/ennemis/RocketTourelle;->spin:F

    cmpl-float v0, v1, v0

    if-lez v0, :cond_4f

    .line 157
    iget v0, p0, Lfr/testudo/spacecorsair/business/ennemis/RocketTourelle;->maxTurnFactor:F

    neg-float v0, v0

    iput v0, p0, Lfr/testudo/spacecorsair/business/ennemis/RocketTourelle;->spinSpeed:F

    goto :goto_3e

    .line 160
    :cond_4f
    iget v0, p0, Lfr/testudo/spacecorsair/business/ennemis/RocketTourelle;->maxTurnFactor:F

    iput v0, p0, Lfr/testudo/spacecorsair/business/ennemis/RocketTourelle;->spinSpeed:F

    goto :goto_3e

    .line 165
    :cond_54
    iget v1, p0, Lfr/testudo/spacecorsair/business/ennemis/RocketTourelle;->spin:F

    cmpg-float v0, v1, v0

    if-gez v0, :cond_60

    .line 166
    iget v0, p0, Lfr/testudo/spacecorsair/business/ennemis/RocketTourelle;->maxTurnFactor:F

    neg-float v0, v0

    iput v0, p0, Lfr/testudo/spacecorsair/business/ennemis/RocketTourelle;->spinSpeed:F

    goto :goto_3e

    .line 169
    :cond_60
    iget v0, p0, Lfr/testudo/spacecorsair/business/ennemis/RocketTourelle;->maxTurnFactor:F

    iput v0, p0, Lfr/testudo/spacecorsair/business/ennemis/RocketTourelle;->spinSpeed:F

    goto :goto_3e
.end method

.method public doPhysic(J)V
    .registers 8

    .prologue
    const/16 v4, 0x7d0

    .line 193
    iget-wide v0, p0, Lfr/testudo/spacecorsair/business/ennemis/RocketTourelle;->nextShootAlowed:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_f

    .line 194
    iget-wide v0, p0, Lfr/testudo/spacecorsair/business/ennemis/RocketTourelle;->nextShootAlowed:J

    sub-long/2addr v0, p1

    iput-wide v0, p0, Lfr/testudo/spacecorsair/business/ennemis/RocketTourelle;->nextShootAlowed:J

    .line 197
    :cond_f
    invoke-super {p0, p1, p2}, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->doPhysic(J)V

    .line 199
    iget v0, p0, Lfr/testudo/spacecorsair/business/ennemis/RocketTourelle;->distanceToPlayer:F

    const/high16 v1, 0x43c80000    # 400.0f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_2b

    .line 201
    iget v0, p0, Lfr/testudo/spacecorsair/business/ennemis/RocketTourelle;->nextShockWaveInMilli:I

    int-to-long v0, v0

    sub-long/2addr v0, p1

    long-to-int v0, v0

    iput v0, p0, Lfr/testudo/spacecorsair/business/ennemis/RocketTourelle;->nextShockWaveInMilli:I

    .line 202
    iget v0, p0, Lfr/testudo/spacecorsair/business/ennemis/RocketTourelle;->nextShockWaveInMilli:I

    if-gtz v0, :cond_2a

    .line 203
    invoke-static {p0}, Lfr/testudo/spacecorsair/business/Util;->applyShockWaveOnPlayer(Lfr/testudo/spacecorsair/business/Element;)V

    .line 204
    iput v4, p0, Lfr/testudo/spacecorsair/business/ennemis/RocketTourelle;->nextShockWaveInMilli:I

    .line 212
    :cond_2a
    :goto_2a
    return-void

    .line 209
    :cond_2b
    iput v4, p0, Lfr/testudo/spacecorsair/business/ennemis/RocketTourelle;->nextShockWaveInMilli:I

    goto :goto_2a
.end method

.method public getDrawableObject()Lfr/testudo/spacecorsair/display/Drawable;
    .registers 2

    .prologue
    .line 70
    iget-boolean v0, p0, Lfr/testudo/spacecorsair/business/ennemis/RocketTourelle;->hidden:Z

    if-eqz v0, :cond_7

    .line 71
    sget-object v0, Lfr/testudo/spacecorsair/business/ennemis/RocketTourelle;->drawableHidden:Lfr/testudo/spacecorsair/display/Drawable;

    .line 74
    :goto_6
    return-object v0

    :cond_7
    sget-object v0, Lfr/testudo/spacecorsair/business/ennemis/RocketTourelle;->drawable:Lfr/testudo/spacecorsair/display/Drawable;

    goto :goto_6
.end method

.method public getMiniDrawableObject()Lfr/testudo/spacecorsair/display/Drawable;
    .registers 2

    .prologue
    .line 56
    const/4 v0, 0x0

    return-object v0
.end method

.method public getPhysicDimension()Lfr/testudo/spacecorsair/engine/Vector2;
    .registers 2

    .prologue
    .line 79
    sget-object v0, Lfr/testudo/spacecorsair/business/ennemis/RocketTourelle;->physicalDim:Lfr/testudo/spacecorsair/engine/Vector2;

    return-object v0
.end method

.method public initLevelConfig(Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;I)Lfr/testudo/spacecorsair/business/ennemis/RocketTourelle;
    .registers 7

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 94
    invoke-super {p0, p2}, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->init(I)Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    .line 95
    iget v0, p1, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->life:I

    int-to-float v0, v0

    iput v0, p0, Lfr/testudo/spacecorsair/business/ennemis/RocketTourelle;->life:F

    .line 96
    iget v0, p0, Lfr/testudo/spacecorsair/business/ennemis/RocketTourelle;->life:F

    iput v0, p0, Lfr/testudo/spacecorsair/business/ennemis/RocketTourelle;->maxLife:F

    .line 97
    iget v0, p1, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->maxTurnFactor:F

    iput v0, p0, Lfr/testudo/spacecorsair/business/ennemis/RocketTourelle;->maxTurnFactor:F

    .line 98
    iget v0, p1, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->shootReload:I

    int-to-long v0, v0

    iput-wide v0, p0, Lfr/testudo/spacecorsair/business/ennemis/RocketTourelle;->milleSecBetweenShots:J

    .line 99
    iget v0, p1, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->shootDamage:I

    int-to-float v0, v0

    iput v0, p0, Lfr/testudo/spacecorsair/business/ennemis/RocketTourelle;->bulletDamage:F

    .line 100
    iget v0, p1, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->xp:I

    iput v0, p0, Lfr/testudo/spacecorsair/business/ennemis/RocketTourelle;->xp:I

    .line 101
    iget-object v0, p1, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->lootConfig:Lfr/testudo/spacecorsair/business/loot/LootConfig;

    iput-object v0, p0, Lfr/testudo/spacecorsair/business/ennemis/RocketTourelle;->lootConfig:Lfr/testudo/spacecorsair/business/loot/LootConfig;

    .line 102
    iget-object v0, p1, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->missileSpec:Lfr/testudo/spacecorsair/business/loot/stuff/missile/MissileSpec;

    iput-object v0, p0, Lfr/testudo/spacecorsair/business/ennemis/RocketTourelle;->missileSpec:Lfr/testudo/spacecorsair/business/loot/stuff/missile/MissileSpec;

    .line 105
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/ennemis/RocketTourelle;->lifeBar:Lfr/testudo/spacecorsair/display/hud/InfoBarEnnemis;

    const/high16 v1, 0x42c80000    # 100.0f

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/display/hud/InfoBarEnnemis;->setValue(F)V

    .line 106
    const v0, 0x461c4000    # 10000.0f

    iput v0, p0, Lfr/testudo/spacecorsair/business/ennemis/RocketTourelle;->mass:F

    .line 107
    iput v2, p0, Lfr/testudo/spacecorsair/business/ennemis/RocketTourelle;->pouseeForce:F

    .line 108
    const/16 v0, 0x1f4

    invoke-virtual {p0, v0}, Lfr/testudo/spacecorsair/business/ennemis/RocketTourelle;->setMitigedDistance(I)V

    .line 109
    const v0, 0x451c4000    # 2500.0f

    iput v0, p0, Lfr/testudo/spacecorsair/business/ennemis/RocketTourelle;->desengagementDistance:F

    .line 110
    iput v2, p0, Lfr/testudo/spacecorsair/business/ennemis/RocketTourelle;->shootPrecision:F

    .line 111
    const v0, 0x453b8000    # 3000.0f

    iput v0, p0, Lfr/testudo/spacecorsair/business/ennemis/RocketTourelle;->distanceShoot:F

    .line 112
    const/4 v0, 0x5

    iput v0, p0, Lfr/testudo/spacecorsair/business/ennemis/RocketTourelle;->bulletLifeTime:I

    .line 113
    const/high16 v0, 0x41480000    # 12.5f

    iput v0, p0, Lfr/testudo/spacecorsair/business/ennemis/RocketTourelle;->bulletSpeed:F

    .line 114
    iput-boolean v3, p0, Lfr/testudo/spacecorsair/business/ennemis/RocketTourelle;->drawOnRadar:Z

    .line 115
    const/high16 v0, 0x40000000    # 2.0f

    iput v0, p0, Lfr/testudo/spacecorsair/business/ennemis/RocketTourelle;->radarPointSize:F

    .line 116
    const v0, 0x466a6000    # 15000.0f

    iput v0, p0, Lfr/testudo/spacecorsair/business/ennemis/RocketTourelle;->distanceToPlayer:F

    .line 117
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lfr/testudo/spacecorsair/business/ennemis/RocketTourelle;->nextShootAlowed:J

    .line 118
    invoke-virtual {p0, v3}, Lfr/testudo/spacecorsair/business/ennemis/RocketTourelle;->setHidden(Z)Lfr/testudo/spacecorsair/business/ennemis/RocketTourelle;

    .line 119
    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModV34;->scale(Lfr/testudo/spacecorsair/business/ennemis/Ennemis;)V

    return-object p0
.end method

.method protected onAttackTargetStart()V
    .registers 2

    .prologue
    .line 178
    iget-boolean v0, p0, Lfr/testudo/spacecorsair/business/ennemis/RocketTourelle;->hidden:Z

    if-eqz v0, :cond_7

    .line 179
    invoke-virtual {p0}, Lfr/testudo/spacecorsair/business/ennemis/RocketTourelle;->onPopVisible()V

    .line 182
    :cond_7
    return-void
.end method

.method protected onAttackTargetStop()V
    .registers 2

    .prologue
    .line 186
    const/4 v0, 0x0

    iput v0, p0, Lfr/testudo/spacecorsair/business/ennemis/RocketTourelle;->spinSpeed:F

    .line 187
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lfr/testudo/spacecorsair/business/ennemis/RocketTourelle;->setHidden(Z)Lfr/testudo/spacecorsair/business/ennemis/RocketTourelle;

    .line 188
    return-void
.end method

.method public onDestroyed(Z)V
    .registers 5

    .prologue
    const/4 v2, 0x2

    .line 293
    invoke-static {}, Lfr/testudo/spacecorsair/business/factory/GamePools;->newRandomExplode()Lfr/testudo/spacecorsair/display/ExplosionAnim;

    move-result-object v0

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/ennemis/RocketTourelle;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v0, v1, p0}, Lfr/testudo/spacecorsair/display/ExplosionAnim;->init(Lfr/testudo/spacecorsair/engine/Vector2;Lfr/testudo/spacecorsair/business/Element;)Lfr/testudo/spacecorsair/display/ExplosionAnim;

    move-result-object v0

    .line 294
    sget-object v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v1, v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v1, v1, Lfr/testudo/spacecorsair/game/Game;->currentLevel:Lfr/testudo/spacecorsair/game/levels/Level;

    iget-object v1, v1, Lfr/testudo/spacecorsair/game/levels/Level;->toAddAnimated:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 296
    invoke-static {p0, v2}, Lfr/testudo/spacecorsair/display/ParticuleFactory;->addWhite(Lfr/testudo/spacecorsair/business/Element;I)V

    .line 297
    const/4 v0, 0x5

    invoke-static {p0, v0}, Lfr/testudo/spacecorsair/display/ParticuleFactory;->addRed(Lfr/testudo/spacecorsair/business/Element;I)V

    .line 298
    invoke-static {p0, v2}, Lfr/testudo/spacecorsair/display/ParticuleFactory;->addYellow(Lfr/testudo/spacecorsair/business/Element;I)V

    .line 299
    invoke-super {p0, p1}, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->onDestroyed(Z)V

    .line 301
    return-void
.end method

.method public onPopVisible()V
    .registers 3

    .prologue
    const/4 v0, 0x5

    const/4 v1, 0x0

    .line 219
    invoke-static {p0, v0}, Lfr/testudo/spacecorsair/display/ParticuleFactory;->addWhite(Lfr/testudo/spacecorsair/business/Element;I)V

    .line 220
    invoke-static {p0, v0}, Lfr/testudo/spacecorsair/display/ParticuleFactory;->addBrown(Lfr/testudo/spacecorsair/business/Element;I)V

    .line 222
    const/4 v0, 0x0

    iput-boolean v0, p0, Lfr/testudo/spacecorsair/business/ennemis/RocketTourelle;->hidden:Z

    .line 223
    iput v1, p0, Lfr/testudo/spacecorsair/business/ennemis/RocketTourelle;->radarColorB:F

    .line 224
    iput v1, p0, Lfr/testudo/spacecorsair/business/ennemis/RocketTourelle;->radarColorG:F

    .line 225
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lfr/testudo/spacecorsair/business/ennemis/RocketTourelle;->radarColorR:F

    .line 226
    const/high16 v0, 0x40400000    # 3.0f

    iput v0, p0, Lfr/testudo/spacecorsair/business/ennemis/RocketTourelle;->radarPointSize:F

    .line 229
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/ennemis/RocketTourelle;->attackTarget:Lfr/testudo/spacecorsair/business/Element;

    iget-object v0, v0, Lfr/testudo/spacecorsair/business/Element;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/ennemis/RocketTourelle;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/engine/Vector2;->getAngularWithInRad(Lfr/testudo/spacecorsair/engine/Vector2;)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v0

    double-to-float v0, v0

    const/high16 v1, 0x42b40000    # 90.0f

    sub-float/2addr v0, v1

    iput v0, p0, Lfr/testudo/spacecorsair/business/ennemis/RocketTourelle;->spin:F

    .line 231
    return-void
.end method

.method public registerYourselfToDrawQueue()V
    .registers 13

    .prologue
    const/4 v11, 0x0

    const/high16 v10, 0x40000000    # 2.0f

    const/high16 v9, 0x3f800000    # 1.0f

    .line 312
    iget v0, p0, Lfr/testudo/spacecorsair/business/ennemis/RocketTourelle;->r:F

    .line 313
    iget v1, p0, Lfr/testudo/spacecorsair/business/ennemis/RocketTourelle;->g:F

    .line 314
    iget v2, p0, Lfr/testudo/spacecorsair/business/ennemis/RocketTourelle;->b:F

    .line 316
    iget-boolean v3, p0, Lfr/testudo/spacecorsair/business/ennemis/RocketTourelle;->hidden:Z

    if-eqz v3, :cond_15

    .line 317
    iput v9, p0, Lfr/testudo/spacecorsair/business/ennemis/RocketTourelle;->r:F

    .line 318
    iput v9, p0, Lfr/testudo/spacecorsair/business/ennemis/RocketTourelle;->g:F

    .line 319
    iput v9, p0, Lfr/testudo/spacecorsair/business/ennemis/RocketTourelle;->b:F

    .line 323
    :cond_15
    invoke-super {p0}, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->registerYourselfToDrawQueue()V

    .line 325
    iget-boolean v3, p0, Lfr/testudo/spacecorsair/business/ennemis/RocketTourelle;->hidden:Z

    if-eqz v3, :cond_23

    .line 326
    iput v0, p0, Lfr/testudo/spacecorsair/business/ennemis/RocketTourelle;->r:F

    .line 327
    iput v1, p0, Lfr/testudo/spacecorsair/business/ennemis/RocketTourelle;->g:F

    .line 328
    iput v2, p0, Lfr/testudo/spacecorsair/business/ennemis/RocketTourelle;->b:F

    .line 368
    :cond_22
    :goto_22
    return-void

    .line 333
    :cond_23
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->renderQueue:Lfr/testudo/spacecorsair/engine/RenderQueue;

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/ennemis/RocketTourelle;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget-boolean v2, p0, Lfr/testudo/spacecorsair/business/ennemis/RocketTourelle;->cameraRelative:Z

    sget-object v3, Lfr/testudo/spacecorsair/business/ennemis/RocketTourelle;->drawableFix:Lfr/testudo/spacecorsair/display/Drawable;

    const/4 v4, 0x0

    iget v5, p0, Lfr/testudo/spacecorsair/business/ennemis/RocketTourelle;->a:F

    iget v6, p0, Lfr/testudo/spacecorsair/business/ennemis/RocketTourelle;->r:F

    iget v7, p0, Lfr/testudo/spacecorsair/business/ennemis/RocketTourelle;->g:F

    iget v8, p0, Lfr/testudo/spacecorsair/business/ennemis/RocketTourelle;->b:F

    invoke-virtual/range {v0 .. v8}, Lfr/testudo/spacecorsair/engine/RenderQueue;->addToWaitingQueue(Lfr/testudo/spacecorsair/engine/Vector2;ZLfr/testudo/spacecorsair/display/Drawable;FFFFF)V

    .line 337
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->renderQueue:Lfr/testudo/spacecorsair/engine/RenderQueue;

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/ennemis/RocketTourelle;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget-boolean v2, p0, Lfr/testudo/spacecorsair/business/ennemis/RocketTourelle;->cameraRelative:Z

    sget-object v3, Lfr/testudo/spacecorsair/business/ennemis/RocketTourelle;->drawable:Lfr/testudo/spacecorsair/display/Drawable;

    iget v4, p0, Lfr/testudo/spacecorsair/business/ennemis/RocketTourelle;->spin:F

    iget v5, p0, Lfr/testudo/spacecorsair/business/ennemis/RocketTourelle;->a:F

    iget v6, p0, Lfr/testudo/spacecorsair/business/ennemis/RocketTourelle;->r:F

    iget v7, p0, Lfr/testudo/spacecorsair/business/ennemis/RocketTourelle;->g:F

    iget v8, p0, Lfr/testudo/spacecorsair/business/ennemis/RocketTourelle;->b:F

    invoke-virtual/range {v0 .. v8}, Lfr/testudo/spacecorsair/engine/RenderQueue;->addToWaitingQueue(Lfr/testudo/spacecorsair/engine/Vector2;ZLfr/testudo/spacecorsair/display/Drawable;FFFFF)V

    .line 341
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/ennemis/RocketTourelle;->tempVector:Lfr/testudo/spacecorsair/engine/Vector2;

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/ennemis/RocketTourelle;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/engine/Vector2;->setSameAs(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 342
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/ennemis/RocketTourelle;->tempVector:Lfr/testudo/spacecorsair/engine/Vector2;

    sget-object v1, Lfr/testudo/spacecorsair/business/ennemis/RocketTourelle;->drawable:Lfr/testudo/spacecorsair/display/Drawable;

    iget-object v1, v1, Lfr/testudo/spacecorsair/display/Drawable;->dimensions:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v1, v1, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    neg-float v1, v1

    div-float/2addr v1, v10

    sget-object v2, Lfr/testudo/spacecorsair/business/ennemis/RocketTourelle;->drawable:Lfr/testudo/spacecorsair/display/Drawable;

    iget-object v2, v2, Lfr/testudo/spacecorsair/display/Drawable;->dimensions:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v2, v2, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    div-float/2addr v2, v10

    invoke-virtual {v0, v1, v2}, Lfr/testudo/spacecorsair/engine/Vector2;->add(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 343
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->renderQueue:Lfr/testudo/spacecorsair/engine/RenderQueue;

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/ennemis/RocketTourelle;->tempVector:Lfr/testudo/spacecorsair/engine/Vector2;

    iget-object v3, p0, Lfr/testudo/spacecorsair/business/ennemis/RocketTourelle;->levelStr:Ljava/lang/String;

    iget v4, p0, Lfr/testudo/spacecorsair/business/ennemis/RocketTourelle;->levelColorR:F

    iget v5, p0, Lfr/testudo/spacecorsair/business/ennemis/RocketTourelle;->levelColorG:F

    iget v6, p0, Lfr/testudo/spacecorsair/business/ennemis/RocketTourelle;->levelColorB:F

    sget-object v8, Lfr/testudo/spacecorsair/textengine/TextSize;->LITTLE:Lfr/testudo/spacecorsair/textengine/TextSize;

    move v2, v11

    move v7, v9

    invoke-virtual/range {v0 .. v8}, Lfr/testudo/spacecorsair/engine/RenderQueue;->addTextToTextWaitingQueue(Lfr/testudo/spacecorsair/engine/Vector2;ZLjava/lang/String;FFFFLfr/testudo/spacecorsair/textengine/TextSize;)V

    .line 345
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/ennemis/RocketTourelle;->tempVector:Lfr/testudo/spacecorsair/engine/Vector2;

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/ennemis/RocketTourelle;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/engine/Vector2;->setSameAs(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 346
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/ennemis/RocketTourelle;->tempVector:Lfr/testudo/spacecorsair/engine/Vector2;

    const/high16 v1, 0x41500000    # 13.0f

    const/high16 v2, 0x40a00000    # 5.0f

    invoke-virtual {v0, v1, v2}, Lfr/testudo/spacecorsair/engine/Vector2;->add(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 347
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->renderQueue:Lfr/testudo/spacecorsair/engine/RenderQueue;

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/ennemis/RocketTourelle;->tempVector:Lfr/testudo/spacecorsair/engine/Vector2;

    iget-object v2, p0, Lfr/testudo/spacecorsair/business/ennemis/RocketTourelle;->lifeBar:Lfr/testudo/spacecorsair/display/hud/InfoBarEnnemis;

    invoke-virtual {v0, v1, v2}, Lfr/testudo/spacecorsair/engine/RenderQueue;->addToWaitingQueue(Lfr/testudo/spacecorsair/engine/Vector2;Lfr/testudo/spacecorsair/display/hud/InfoBar;)V

    .line 349
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/ennemis/RocketTourelle;->specificName:Ljava/lang/String;

    if-eqz v0, :cond_e7

    .line 351
    iget v0, p0, Lfr/testudo/spacecorsair/business/ennemis/RocketTourelle;->specificNameDecalX:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_b0

    .line 352
    sget-object v0, Lfr/testudo/spacecorsair/engine/GameRenderer;->glTextNormalPlus:Lfr/testudo/spacecorsair/textengine/GLText;

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/ennemis/RocketTourelle;->specificName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/textengine/GLText;->getLength(Ljava/lang/String;)F

    move-result v0

    div-float/2addr v0, v10

    float-to-int v0, v0

    iput v0, p0, Lfr/testudo/spacecorsair/business/ennemis/RocketTourelle;->specificNameDecalX:I

    .line 354
    :cond_b0
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/ennemis/RocketTourelle;->tempVector:Lfr/testudo/spacecorsair/engine/Vector2;

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/ennemis/RocketTourelle;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/engine/Vector2;->setSameAs(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    move-result-object v0

    iget v1, p0, Lfr/testudo/spacecorsair/business/ennemis/RocketTourelle;->specificNameDecalX:I

    neg-int v1, v1

    int-to-float v1, v1

    sget-object v2, Lfr/testudo/spacecorsair/business/ennemis/RocketTourelle;->drawable:Lfr/testudo/spacecorsair/display/Drawable;

    iget-object v2, v2, Lfr/testudo/spacecorsair/display/Drawable;->dimensions:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v2, v2, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    div-float/2addr v2, v10

    const/high16 v3, 0x41a00000    # 20.0f

    add-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Lfr/testudo/spacecorsair/engine/Vector2;->add(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 356
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->renderQueue:Lfr/testudo/spacecorsair/engine/RenderQueue;

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/ennemis/RocketTourelle;->tempVector:Lfr/testudo/spacecorsair/engine/Vector2;

    iget-object v3, p0, Lfr/testudo/spacecorsair/business/ennemis/RocketTourelle;->specificName:Ljava/lang/String;

    sget-object v2, Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;->ORANGE:Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;

    iget v4, v2, Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;->r:F

    sget-object v2, Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;->ORANGE:Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;

    iget v5, v2, Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;->g:F

    sget-object v2, Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;->ORANGE:Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;

    iget v6, v2, Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;->b:F

    sget-object v2, Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;->ORANGE:Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;

    iget v7, v2, Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;->a:F

    sget-object v8, Lfr/testudo/spacecorsair/textengine/TextSize;->NORMALPLUS:Lfr/testudo/spacecorsair/textengine/TextSize;

    move v2, v11

    invoke-virtual/range {v0 .. v8}, Lfr/testudo/spacecorsair/engine/RenderQueue;->addTextToTextWaitingQueue(Lfr/testudo/spacecorsair/engine/Vector2;ZLjava/lang/String;FFFFLfr/testudo/spacecorsair/textengine/TextSize;)V

    .line 360
    :cond_e7
    iget-boolean v0, p0, Lfr/testudo/spacecorsair/business/ennemis/RocketTourelle;->elite:Z

    if-eqz v0, :cond_22

    .line 361
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/ennemis/RocketTourelle;->tempVector:Lfr/testudo/spacecorsair/engine/Vector2;

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/ennemis/RocketTourelle;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/engine/Vector2;->setSameAs(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    move-result-object v0

    sget-object v1, Lfr/testudo/spacecorsair/business/ennemis/RocketTourelle;->drawable:Lfr/testudo/spacecorsair/display/Drawable;

    iget-object v1, v1, Lfr/testudo/spacecorsair/display/Drawable;->dimensions:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v1, v1, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    div-float/2addr v1, v10

    const/high16 v2, 0x41880000    # 17.0f

    add-float/2addr v1, v2

    sget-object v2, Lfr/testudo/spacecorsair/business/ennemis/RocketTourelle;->drawable:Lfr/testudo/spacecorsair/display/Drawable;

    iget-object v2, v2, Lfr/testudo/spacecorsair/display/Drawable;->dimensions:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v2, v2, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    div-float/2addr v2, v10

    const/high16 v3, 0x41400000    # 12.0f

    add-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Lfr/testudo/spacecorsair/engine/Vector2;->add(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 362
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->renderQueue:Lfr/testudo/spacecorsair/engine/RenderQueue;

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/ennemis/RocketTourelle;->tempVector:Lfr/testudo/spacecorsair/engine/Vector2;

    sget-object v3, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->ELITE_MARK_SIZE_NORMAL:Lfr/testudo/spacecorsair/display/Drawable;

    const/high16 v4, 0x43340000    # 180.0f

    move v2, v11

    move v5, v9

    move v6, v9

    move v7, v9

    move v8, v9

    invoke-virtual/range {v0 .. v8}, Lfr/testudo/spacecorsair/engine/RenderQueue;->addToWaitingQueue(Lfr/testudo/spacecorsair/engine/Vector2;ZLfr/testudo/spacecorsair/display/Drawable;FFFFF)V

    goto/16 :goto_22
.end method

.method public setElite()Lfr/testudo/spacecorsair/business/ennemis/Ennemis;
    .registers 3

    .prologue
    const/high16 v1, 0x40400000    # 3.0f

    .line 373
    invoke-super {p0}, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->setElite()Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    .line 374
    iget v0, p0, Lfr/testudo/spacecorsair/business/ennemis/RocketTourelle;->xp:I

    mul-int/lit8 v0, v0, 0x5

    iput v0, p0, Lfr/testudo/spacecorsair/business/ennemis/RocketTourelle;->xp:I

    .line 375
    iget v0, p0, Lfr/testudo/spacecorsair/business/ennemis/RocketTourelle;->life:F

    mul-float/2addr v0, v1

    iput v0, p0, Lfr/testudo/spacecorsair/business/ennemis/RocketTourelle;->life:F

    .line 376
    iget v0, p0, Lfr/testudo/spacecorsair/business/ennemis/RocketTourelle;->maxLife:F

    mul-float/2addr v0, v1

    iput v0, p0, Lfr/testudo/spacecorsair/business/ennemis/RocketTourelle;->maxLife:F

    .line 377
    iget v0, p0, Lfr/testudo/spacecorsair/business/ennemis/RocketTourelle;->pouseeForce:F

    const/high16 v1, 0x3fa00000    # 1.25f

    mul-float/2addr v0, v1

    iput v0, p0, Lfr/testudo/spacecorsair/business/ennemis/RocketTourelle;->pouseeForce:F

    .line 378
    iget-wide v0, p0, Lfr/testudo/spacecorsair/business/ennemis/RocketTourelle;->milleSecBetweenShots:J

    long-to-float v0, v0

    const v1, 0x3f4ccccd    # 0.8f

    mul-float/2addr v0, v1

    float-to-long v0, v0

    iput-wide v0, p0, Lfr/testudo/spacecorsair/business/ennemis/RocketTourelle;->milleSecBetweenShots:J

    .line 379
    iget v0, p0, Lfr/testudo/spacecorsair/business/ennemis/RocketTourelle;->radarPointSize:F

    const/high16 v1, 0x40000000    # 2.0f

    add-float/2addr v0, v1

    iput v0, p0, Lfr/testudo/spacecorsair/business/ennemis/RocketTourelle;->radarPointSize:F

    .line 381
    return-object p0
.end method

.method public setHidden(Z)Lfr/testudo/spacecorsair/business/ennemis/RocketTourelle;
    .registers 4

    .prologue
    const/high16 v1, 0x3f800000    # 1.0f

    .line 124
    iput-boolean p1, p0, Lfr/testudo/spacecorsair/business/ennemis/RocketTourelle;->hidden:Z

    .line 125
    if-eqz p1, :cond_14

    .line 126
    const/4 v0, 0x1

    iput-boolean v0, p0, Lfr/testudo/spacecorsair/business/ennemis/RocketTourelle;->drawOnRadar:Z

    .line 127
    const/4 v0, 0x0

    iput v0, p0, Lfr/testudo/spacecorsair/business/ennemis/RocketTourelle;->radarColorB:F

    .line 128
    iput v1, p0, Lfr/testudo/spacecorsair/business/ennemis/RocketTourelle;->radarColorG:F

    .line 129
    iput v1, p0, Lfr/testudo/spacecorsair/business/ennemis/RocketTourelle;->radarColorR:F

    .line 130
    const/high16 v0, 0x40000000    # 2.0f

    iput v0, p0, Lfr/testudo/spacecorsair/business/ennemis/RocketTourelle;->radarPointSize:F

    .line 132
    :cond_14
    return-object p0
.end method

.method public shoot()V
    .registers 8

    .prologue
    const/high16 v6, -0x3d600000    # -80.0f

    const-wide/high16 v2, 0x4018000000000000L    # 6.0

    .line 240
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v0

    mul-double/2addr v0, v2

    add-double/2addr v0, v2

    double-to-int v0, v0

    .line 241
    iget-wide v2, p0, Lfr/testudo/spacecorsair/business/ennemis/RocketTourelle;->nextShootAlowed:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-gtz v1, :cond_38

    .line 242
    iget-boolean v1, p0, Lfr/testudo/spacecorsair/business/ennemis/RocketTourelle;->left:Z

    if-eqz v1, :cond_39

    .line 243
    const/high16 v1, -0x3e100000    # -30.0f

    neg-int v0, v0

    int-to-float v0, v0

    invoke-direct {p0, v1, v6, v0}, Lfr/testudo/spacecorsair/business/ennemis/RocketTourelle;->shootMissile(FFF)V

    .line 247
    :goto_1e
    iget-boolean v0, p0, Lfr/testudo/spacecorsair/business/ennemis/RocketTourelle;->left:Z

    if-nez v0, :cond_40

    const/4 v0, 0x1

    :goto_23
    iput-boolean v0, p0, Lfr/testudo/spacecorsair/business/ennemis/RocketTourelle;->left:Z

    .line 248
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/ennemis/RocketTourelle;->missileSpec:Lfr/testudo/spacecorsair/business/loot/stuff/missile/MissileSpec;

    iget-wide v0, v0, Lfr/testudo/spacecorsair/business/loot/stuff/missile/MissileSpec;->reloadSpeedInMilli:J

    long-to-float v0, v0

    iget v1, p0, Lfr/testudo/spacecorsair/business/ennemis/RocketTourelle;->alterationReloadValue:F

    mul-float/2addr v1, v0

    iget-boolean v0, p0, Lfr/testudo/spacecorsair/business/ennemis/RocketTourelle;->elite:Z

    if-eqz v0, :cond_42

    const v0, 0x3f333333    # 0.7f

    :goto_34
    mul-float/2addr v0, v1

    float-to-long v0, v0

    iput-wide v0, p0, Lfr/testudo/spacecorsair/business/ennemis/RocketTourelle;->nextShootAlowed:J

    .line 251
    :cond_38
    return-void

    .line 245
    :cond_39
    const/high16 v1, 0x41f00000    # 30.0f

    int-to-float v0, v0

    invoke-direct {p0, v1, v6, v0}, Lfr/testudo/spacecorsair/business/ennemis/RocketTourelle;->shootMissile(FFF)V

    goto :goto_1e

    .line 247
    :cond_40
    const/4 v0, 0x0

    goto :goto_23

    .line 248
    :cond_42
    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_34
.end method
