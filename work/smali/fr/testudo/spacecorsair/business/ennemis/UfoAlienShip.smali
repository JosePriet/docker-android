.class public Lfr/testudo/spacecorsair/business/ennemis/UfoAlienShip;
.super Lfr/testudo/spacecorsair/business/ennemis/AlienEnemy;
.source "SourceFile"


# static fields
.field public static final OBJECT_NAME:Ljava/lang/String; = "Alien UFO"

.field public static final SHOOT_DISTANCE:I = 0x226

.field public static final animCount:I = 0xf

.field public static final animLength:I = 0x2ee

.field public static final animSpeed:I = 0x32

.field public static drawable:[Lfr/testudo/spacecorsair/display/Drawable;

.field public static drawableDim:Lfr/testudo/spacecorsair/engine/Vector2;

.field public static physicalDim:Lfr/testudo/spacecorsair/engine/Vector2;


# instance fields
.field damageFrequency:I

.field private fakeProjectile:Lfr/testudo/spacecorsair/business/projectiles/LaserBeam;

.field laserBeamActive:Z

.field nextDamageCount:I

.field nextShootAllowed:I

.field pouseeForceAbimed:F

.field randomAnimDecal:I

.field public turnFactor:F


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    const/high16 v2, 0x43200000    # 160.0f

    const/high16 v1, 0x430c0000    # 140.0f

    .line 31
    const/16 v0, 0xf

    new-array v0, v0, [Lfr/testudo/spacecorsair/display/Drawable;

    sput-object v0, Lfr/testudo/spacecorsair/business/ennemis/UfoAlienShip;->drawable:[Lfr/testudo/spacecorsair/display/Drawable;

    .line 32
    new-instance v0, Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-direct {v0, v1, v1}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>(FF)V

    sput-object v0, Lfr/testudo/spacecorsair/business/ennemis/UfoAlienShip;->physicalDim:Lfr/testudo/spacecorsair/engine/Vector2;

    .line 33
    new-instance v0, Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-direct {v0, v2, v2}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>(FF)V

    sput-object v0, Lfr/testudo/spacecorsair/business/ennemis/UfoAlienShip;->drawableDim:Lfr/testudo/spacecorsair/engine/Vector2;

    return-void
.end method

.method public constructor <init>()V
    .registers 6

    .prologue
    const/4 v1, 0x0

    const/high16 v4, 0x3f400000    # 0.75f

    .line 84
    invoke-direct {p0}, Lfr/testudo/spacecorsair/business/ennemis/AlienEnemy;-><init>()V

    .line 37
    const v0, 0x3e99999a    # 0.3f

    iput v0, p0, Lfr/testudo/spacecorsair/business/ennemis/UfoAlienShip;->pouseeForceAbimed:F

    .line 42
    iput v1, p0, Lfr/testudo/spacecorsair/business/ennemis/UfoAlienShip;->nextShootAllowed:I

    .line 44
    iput-boolean v1, p0, Lfr/testudo/spacecorsair/business/ennemis/UfoAlienShip;->laserBeamActive:Z

    .line 93
    new-instance v0, Lfr/testudo/spacecorsair/business/projectiles/LaserBeam;

    invoke-direct {v0}, Lfr/testudo/spacecorsair/business/projectiles/LaserBeam;-><init>()V

    iput-object v0, p0, Lfr/testudo/spacecorsair/business/ennemis/UfoAlienShip;->fakeProjectile:Lfr/testudo/spacecorsair/business/projectiles/LaserBeam;

    .line 159
    iput v1, p0, Lfr/testudo/spacecorsair/business/ennemis/UfoAlienShip;->nextDamageCount:I

    .line 160
    const/16 v0, 0x1f4

    iput v0, p0, Lfr/testudo/spacecorsair/business/ennemis/UfoAlienShip;->damageFrequency:I

    .line 85
    const-string v0, "Alien UFO"

    iput-object v0, p0, Lfr/testudo/spacecorsair/business/ennemis/UfoAlienShip;->objectName:Ljava/lang/String;

    .line 86
    new-instance v0, Lfr/testudo/spacecorsair/engine/Vector2;

    const/4 v1, 0x0

    sget-object v2, Lfr/testudo/spacecorsair/business/ennemis/UfoAlienShip;->drawableDim:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v2, v2, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    neg-float v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    const/high16 v3, 0x40a00000    # 5.0f

    sub-float/2addr v2, v3

    invoke-direct {v0, v1, v2}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>(FF)V

    sget-object v1, Lfr/testudo/spacecorsair/business/ennemis/UfoAlienShip;->drawableDim:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v1, v1, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    float-to-int v1, v1

    add-int/lit8 v1, v1, -0x23

    const/4 v2, 0x6

    invoke-static {v0, v1, v2}, Lfr/testudo/spacecorsair/display/hud/InfoBarEnnemis;->newRed(Lfr/testudo/spacecorsair/engine/Vector2;II)Lfr/testudo/spacecorsair/display/hud/InfoBarEnnemis;

    move-result-object v0

    iput-object v0, p0, Lfr/testudo/spacecorsair/business/ennemis/UfoAlienShip;->lifeBar:Lfr/testudo/spacecorsair/display/hud/InfoBarEnnemis;

    .line 87
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/ennemis/UfoAlienShip;->lifeBar:Lfr/testudo/spacecorsair/display/hud/InfoBarEnnemis;

    iput v4, v0, Lfr/testudo/spacecorsair/display/hud/InfoBarEnnemis;->extR:F

    .line 88
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/ennemis/UfoAlienShip;->lifeBar:Lfr/testudo/spacecorsair/display/hud/InfoBarEnnemis;

    iput v4, v0, Lfr/testudo/spacecorsair/display/hud/InfoBarEnnemis;->extG:F

    .line 89
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/ennemis/UfoAlienShip;->lifeBar:Lfr/testudo/spacecorsair/display/hud/InfoBarEnnemis;

    iput v4, v0, Lfr/testudo/spacecorsair/display/hud/InfoBarEnnemis;->extB:F

    .line 91
    return-void
.end method

.method public static setTexture([Lfr/testudo/spacecorsair/display/Texture;)V
    .registers 6

    .prologue
    .line 56
    const/4 v0, 0x0

    :goto_1
    const/16 v1, 0xf

    if-ge v0, v1, :cond_15

    .line 57
    sget-object v1, Lfr/testudo/spacecorsair/business/ennemis/UfoAlienShip;->drawable:[Lfr/testudo/spacecorsair/display/Drawable;

    new-instance v2, Lfr/testudo/spacecorsair/display/Drawable;

    sget-object v3, Lfr/testudo/spacecorsair/business/ennemis/UfoAlienShip;->drawableDim:Lfr/testudo/spacecorsair/engine/Vector2;

    aget-object v4, p0, v0

    invoke-direct {v2, v3, v4}, Lfr/testudo/spacecorsair/display/Drawable;-><init>(Lfr/testudo/spacecorsair/engine/Vector2;Lfr/testudo/spacecorsair/display/Texture;)V

    aput-object v2, v1, v0

    .line 56
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 59
    :cond_15
    return-void
.end method


# virtual methods
.method public applyDamage(FLfr/testudo/spacecorsair/business/Element;Lfr/testudo/spacecorsair/business/projectiles/Projectile;)V
    .registers 6

    .prologue
    .line 212
    invoke-super {p0, p1, p2, p3}, Lfr/testudo/spacecorsair/business/ennemis/AlienEnemy;->applyDamage(FLfr/testudo/spacecorsair/business/Element;Lfr/testudo/spacecorsair/business/projectiles/Projectile;)V

    .line 213
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/ennemis/UfoAlienShip;->lifeBar:Lfr/testudo/spacecorsair/display/hud/InfoBarEnnemis;

    iget v1, p0, Lfr/testudo/spacecorsair/business/ennemis/UfoAlienShip;->lifeInPourc:F

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/display/hud/InfoBarEnnemis;->setValue(F)V

    .line 214
    iget v0, p0, Lfr/testudo/spacecorsair/business/ennemis/UfoAlienShip;->lifeInPourc:F

    const/high16 v1, 0x41c80000    # 25.0f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_16

    .line 215
    iget v0, p0, Lfr/testudo/spacecorsair/business/ennemis/UfoAlienShip;->pouseeForceAbimed:F

    iput v0, p0, Lfr/testudo/spacecorsair/business/ennemis/UfoAlienShip;->pouseeForce:F

    .line 217
    :cond_16
    return-void
.end method

.method protected doAttackIa(JJ)V
    .registers 14

    .prologue
    const-wide/16 v6, 0x3e8

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 165
    iget-boolean v3, p0, Lfr/testudo/spacecorsair/business/ennemis/UfoAlienShip;->laserBeamActive:Z

    .line 166
    iput-boolean v2, p0, Lfr/testudo/spacecorsair/business/ennemis/UfoAlienShip;->laserBeamActive:Z

    .line 168
    const-wide/16 v4, 0x226

    cmp-long v0, p3, v4

    if-gez v0, :cond_57

    .line 170
    iget v0, p0, Lfr/testudo/spacecorsair/business/ennemis/UfoAlienShip;->nextDamageCount:I

    int-to-long v4, v0

    sub-long/2addr v4, p1

    long-to-int v0, v4

    iput v0, p0, Lfr/testudo/spacecorsair/business/ennemis/UfoAlienShip;->nextDamageCount:I

    .line 171
    iget v0, p0, Lfr/testudo/spacecorsair/business/ennemis/UfoAlienShip;->nextDamageCount:I

    int-to-float v0, v0

    iget v4, p0, Lfr/testudo/spacecorsair/business/ennemis/UfoAlienShip;->damageFrequency:I

    int-to-float v4, v4

    div-float/2addr v0, v4

    const v4, 0x3e99999a    # 0.3f

    cmpg-float v0, v0, v4

    if-gez v0, :cond_8b

    move v0, v1

    :goto_24
    iput-boolean v0, p0, Lfr/testudo/spacecorsair/business/ennemis/UfoAlienShip;->laserBeamActive:Z

    .line 172
    iget-boolean v0, p0, Lfr/testudo/spacecorsair/business/ennemis/UfoAlienShip;->laserBeamActive:Z

    if-eqz v0, :cond_33

    if-nez v3, :cond_33

    .line 174
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->soundManager:Lfr/testudo/spacecorsair/engine/SoundManager;

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/engine/SoundManager;->playAlienLaser()V

    .line 176
    :cond_33
    iget v0, p0, Lfr/testudo/spacecorsair/business/ennemis/UfoAlienShip;->nextDamageCount:I

    if-gtz v0, :cond_57

    .line 177
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/ennemis/UfoAlienShip;->attackTarget:Lfr/testudo/spacecorsair/business/Element;

    const/4 v3, 0x2

    invoke-static {v0, v3}, Lfr/testudo/spacecorsair/display/ParticuleFactory;->addRed(Lfr/testudo/spacecorsair/business/Element;I)V

    .line 178
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/ennemis/UfoAlienShip;->attackTarget:Lfr/testudo/spacecorsair/business/Element;

    invoke-static {v0, v1}, Lfr/testudo/spacecorsair/display/ParticuleFactory;->addWhite(Lfr/testudo/spacecorsair/business/Element;I)V

    .line 179
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/ennemis/UfoAlienShip;->fakeProjectile:Lfr/testudo/spacecorsair/business/projectiles/LaserBeam;

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/business/projectiles/LaserBeam;->resolveAlteration()V

    .line 180
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/ennemis/UfoAlienShip;->attackTarget:Lfr/testudo/spacecorsair/business/Element;

    iget-object v3, p0, Lfr/testudo/spacecorsair/business/ennemis/UfoAlienShip;->fakeProjectile:Lfr/testudo/spacecorsair/business/projectiles/LaserBeam;

    invoke-virtual {v0, v3}, Lfr/testudo/spacecorsair/business/Element;->applyProjectileHit(Lfr/testudo/spacecorsair/business/projectiles/Projectile;)V

    .line 181
    iget v0, p0, Lfr/testudo/spacecorsair/business/ennemis/UfoAlienShip;->damageFrequency:I

    int-to-float v0, v0

    iget v3, p0, Lfr/testudo/spacecorsair/business/ennemis/UfoAlienShip;->alterationReloadValue:F

    mul-float/2addr v0, v3

    float-to-int v0, v0

    iput v0, p0, Lfr/testudo/spacecorsair/business/ennemis/UfoAlienShip;->nextDamageCount:I

    .line 188
    :cond_57
    const-wide/16 v4, 0x1f4

    cmp-long v0, p3, v4

    if-gez v0, :cond_8d

    .line 189
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 190
    iput-boolean v2, p0, Lfr/testudo/spacecorsair/business/ennemis/UfoAlienShip;->isPousee:Z

    .line 191
    const/4 v2, 0x0

    iput v2, p0, Lfr/testudo/spacecorsair/business/ennemis/UfoAlienShip;->spinSpeed:F

    .line 192
    rem-long v2, v0, v6

    const-wide/16 v4, 0x12c

    cmp-long v2, v2, v4

    if-lez v2, :cond_8a

    .line 193
    const/high16 v2, 0x3f800000    # 1.0f

    rem-long v4, v0, v6

    long-to-float v3, v4

    const/high16 v4, 0x447a0000    # 1000.0f

    div-float/2addr v3, v4

    const/high16 v4, 0x40400000    # 3.0f

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    iput v2, p0, Lfr/testudo/spacecorsair/business/ennemis/UfoAlienShip;->spinSpeed:F

    .line 194
    const-wide/16 v2, 0x7d0

    rem-long/2addr v0, v2

    cmp-long v0, v0, v6

    if-lez v0, :cond_8a

    .line 195
    iget v0, p0, Lfr/testudo/spacecorsair/business/ennemis/UfoAlienShip;->spinSpeed:F

    const/high16 v1, -0x40800000    # -1.0f

    mul-float/2addr v0, v1

    iput v0, p0, Lfr/testudo/spacecorsair/business/ennemis/UfoAlienShip;->spinSpeed:F

    .line 206
    :cond_8a
    :goto_8a
    return-void

    :cond_8b
    move v0, v2

    .line 171
    goto :goto_24

    .line 200
    :cond_8d
    iput-boolean v1, p0, Lfr/testudo/spacecorsair/business/ennemis/UfoAlienShip;->isPousee:Z

    .line 202
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/ennemis/UfoAlienShip;->attackTarget:Lfr/testudo/spacecorsair/business/Element;

    iget-object v0, v0, Lfr/testudo/spacecorsair/business/Element;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {p0, v0}, Lfr/testudo/spacecorsair/business/ennemis/UfoAlienShip;->alignToPoint(Lfr/testudo/spacecorsair/engine/Vector2;)Z

    goto :goto_8a
.end method

.method public doPhysic(J)V
    .registers 4

    .prologue
    .line 248
    invoke-super {p0, p1, p2}, Lfr/testudo/spacecorsair/business/ennemis/AlienEnemy;->doPhysic(J)V

    .line 251
    return-void
.end method

.method public getDrawableObject()Lfr/testudo/spacecorsair/display/Drawable;
    .registers 5

    .prologue
    .line 69
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget v2, p0, Lfr/testudo/spacecorsair/business/ennemis/UfoAlienShip;->randomAnimDecal:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    const-wide/16 v2, 0x2ee

    rem-long/2addr v0, v2

    .line 71
    const-wide/16 v2, 0x32

    div-long/2addr v0, v2

    .line 74
    sget-object v2, Lfr/testudo/spacecorsair/business/ennemis/UfoAlienShip;->drawable:[Lfr/testudo/spacecorsair/display/Drawable;

    long-to-int v0, v0

    aget-object v0, v2, v0

    return-object v0
.end method

.method public getMiniDrawableObject()Lfr/testudo/spacecorsair/display/Drawable;
    .registers 2

    .prologue
    .line 51
    const/4 v0, 0x0

    return-object v0
.end method

.method public getPhysicDimension()Lfr/testudo/spacecorsair/engine/Vector2;
    .registers 2

    .prologue
    .line 79
    sget-object v0, Lfr/testudo/spacecorsair/business/ennemis/UfoAlienShip;->physicalDim:Lfr/testudo/spacecorsair/engine/Vector2;

    return-object v0
.end method

.method public initLevelConfig(Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;I)Lfr/testudo/spacecorsair/business/ennemis/UfoAlienShip;
    .registers 11

    .prologue
    const/4 v7, 0x1

    const v6, 0x3f31b1b2

    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 97
    invoke-super {p0, p2}, Lfr/testudo/spacecorsair/business/ennemis/AlienEnemy;->init(I)Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    .line 98
    iput-boolean v4, p0, Lfr/testudo/spacecorsair/business/ennemis/UfoAlienShip;->laserBeamActive:Z

    .line 99
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v0

    const-wide v2, 0x4087700000000000L    # 750.0

    mul-double/2addr v0, v2

    double-to-int v0, v0

    iput v0, p0, Lfr/testudo/spacecorsair/business/ennemis/UfoAlienShip;->randomAnimDecal:I

    .line 101
    iget v0, p1, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->life:I

    int-to-float v0, v0

    iput v0, p0, Lfr/testudo/spacecorsair/business/ennemis/UfoAlienShip;->maxLife:F

    .line 102
    iget v0, p1, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->life:I

    int-to-float v0, v0

    iput v0, p0, Lfr/testudo/spacecorsair/business/ennemis/UfoAlienShip;->life:F

    .line 103
    iget v0, p1, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->xp:I

    iput v0, p0, Lfr/testudo/spacecorsair/business/ennemis/UfoAlienShip;->xp:I

    .line 104
    iget v0, p1, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->shootReload:I

    int-to-long v0, v0

    iput-wide v0, p0, Lfr/testudo/spacecorsair/business/ennemis/UfoAlienShip;->milleSecBetweenShots:J

    .line 105
    iget v0, p1, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->shootDamage:I

    int-to-float v0, v0

    iput v0, p0, Lfr/testudo/spacecorsair/business/ennemis/UfoAlienShip;->bulletDamage:F

    .line 106
    iget-object v0, p1, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->lootConfig:Lfr/testudo/spacecorsair/business/loot/LootConfig;

    iput-object v0, p0, Lfr/testudo/spacecorsair/business/ennemis/UfoAlienShip;->lootConfig:Lfr/testudo/spacecorsair/business/loot/LootConfig;

    .line 107
    iget v0, p1, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->maxTurnFactor:F

    iput v0, p0, Lfr/testudo/spacecorsair/business/ennemis/UfoAlienShip;->maxTurnFactor:F

    .line 108
    iget v0, p1, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->maxTurnFactor:F

    iput v0, p0, Lfr/testudo/spacecorsair/business/ennemis/UfoAlienShip;->turnFactor:F

    .line 110
    const/high16 v0, 0x457a0000    # 4000.0f

    iput v0, p0, Lfr/testudo/spacecorsair/business/ennemis/UfoAlienShip;->distanceShoot:F

    .line 111
    const v0, 0x44098000    # 550.0f

    iput v0, p0, Lfr/testudo/spacecorsair/business/ennemis/UfoAlienShip;->mass:F

    .line 112
    const/high16 v0, 0x3fe00000    # 1.75f

    iput v0, p0, Lfr/testudo/spacecorsair/business/ennemis/UfoAlienShip;->pouseeForce:F

    .line 113
    const v0, 0x3f843958    # 1.033f

    iput v0, p0, Lfr/testudo/spacecorsair/business/ennemis/UfoAlienShip;->speedDeperditionfactor:F

    .line 115
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/ennemis/UfoAlienShip;->lifeBar:Lfr/testudo/spacecorsair/display/hud/InfoBarEnnemis;

    const/high16 v1, 0x42c80000    # 100.0f

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/display/hud/InfoBarEnnemis;->setValue(F)V

    .line 117
    const/16 v0, 0x7d0

    invoke-virtual {p0, v0}, Lfr/testudo/spacecorsair/business/ennemis/UfoAlienShip;->setMitigedDistance(I)V

    .line 118
    const v0, 0x45ea6000    # 7500.0f

    iput v0, p0, Lfr/testudo/spacecorsair/business/ennemis/UfoAlienShip;->desengagementDistance:F

    .line 119
    const/high16 v0, 0x40800000    # 4.0f

    iput v0, p0, Lfr/testudo/spacecorsair/business/ennemis/UfoAlienShip;->shootPrecision:F

    .line 121
    iput-boolean v7, p0, Lfr/testudo/spacecorsair/business/ennemis/UfoAlienShip;->drawOnRadar:Z

    .line 122
    const/high16 v0, 0x40400000    # 3.0f

    iput v0, p0, Lfr/testudo/spacecorsair/business/ennemis/UfoAlienShip;->radarPointSize:F

    .line 123
    const v0, 0x466a6000    # 15000.0f

    iput v0, p0, Lfr/testudo/spacecorsair/business/ennemis/UfoAlienShip;->distanceToPlayer:F

    .line 125
    iput v4, p0, Lfr/testudo/spacecorsair/business/ennemis/UfoAlienShip;->nextShootAllowed:I

    .line 127
    iput v6, p0, Lfr/testudo/spacecorsair/business/ennemis/UfoAlienShip;->radarColorR:F

    .line 128
    iput v5, p0, Lfr/testudo/spacecorsair/business/ennemis/UfoAlienShip;->radarColorG:F

    .line 129
    iput v6, p0, Lfr/testudo/spacecorsair/business/ennemis/UfoAlienShip;->radarColorB:F

    .line 131
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/ennemis/UfoAlienShip;->fakeProjectile:Lfr/testudo/spacecorsair/business/projectiles/LaserBeam;

    iget v1, p0, Lfr/testudo/spacecorsair/business/ennemis/UfoAlienShip;->bulletDamage:F

    iput v1, v0, Lfr/testudo/spacecorsair/business/projectiles/LaserBeam;->damage:F

    .line 132
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/ennemis/UfoAlienShip;->fakeProjectile:Lfr/testudo/spacecorsair/business/projectiles/LaserBeam;

    iput-boolean v4, v0, Lfr/testudo/spacecorsair/business/projectiles/LaserBeam;->destroyedOnImpact:Z

    .line 133
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/ennemis/UfoAlienShip;->fakeProjectile:Lfr/testudo/spacecorsair/business/projectiles/LaserBeam;

    iput-boolean v7, v0, Lfr/testudo/spacecorsair/business/projectiles/LaserBeam;->ignoreImactDecalOnTarget:Z

    .line 134
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/ennemis/UfoAlienShip;->fakeProjectile:Lfr/testudo/spacecorsair/business/projectiles/LaserBeam;

    iput v5, v0, Lfr/testudo/spacecorsair/business/projectiles/LaserBeam;->mass:F

    .line 135
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/ennemis/UfoAlienShip;->fakeProjectile:Lfr/testudo/spacecorsair/business/projectiles/LaserBeam;

    sget-object v1, Lfr/testudo/spacecorsair/business/loot/stuff/alteration/AlterationSpecs;->DEFAULT:Lfr/testudo/spacecorsair/business/loot/stuff/alteration/AlterationSpecs;

    iput-object v1, v0, Lfr/testudo/spacecorsair/business/projectiles/LaserBeam;->alterationSpecs:Lfr/testudo/spacecorsair/business/loot/stuff/alteration/AlterationSpecs;

    .line 138
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/ennemis/UfoAlienShip;->fakeProjectile:Lfr/testudo/spacecorsair/business/projectiles/LaserBeam;

    iput-object p0, v0, Lfr/testudo/spacecorsair/business/projectiles/LaserBeam;->sender:Lfr/testudo/spacecorsair/business/Element;

    .line 139
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/ennemis/UfoAlienShip;->fakeProjectile:Lfr/testudo/spacecorsair/business/projectiles/LaserBeam;

    iget v1, p0, Lfr/testudo/spacecorsair/business/ennemis/UfoAlienShip;->level:I

    iput v1, v0, Lfr/testudo/spacecorsair/business/projectiles/LaserBeam;->level:I

    .line 141
    const v0, 0x459c4000    # 5000.0f

    iput v0, p0, Lfr/testudo/spacecorsair/business/ennemis/UfoAlienShip;->distanceToPlayer:F

    .line 143
    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModV34;->scale(Lfr/testudo/spacecorsair/business/ennemis/Ennemis;)V

    return-object p0
.end method

.method protected onAttackTargetStart()V
    .registers 2

    .prologue
    .line 149
    iget v0, p0, Lfr/testudo/spacecorsair/business/ennemis/UfoAlienShip;->damageFrequency:I

    iput v0, p0, Lfr/testudo/spacecorsair/business/ennemis/UfoAlienShip;->nextDamageCount:I

    .line 151
    return-void
.end method

.method protected onAttackTargetStop()V
    .registers 2

    .prologue
    .line 155
    const/4 v0, 0x0

    iput-boolean v0, p0, Lfr/testudo/spacecorsair/business/ennemis/UfoAlienShip;->laserBeamActive:Z

    .line 156
    return-void
.end method

.method public onDestroyed(Z)V
    .registers 4

    .prologue
    .line 221
    invoke-super {p0, p1}, Lfr/testudo/spacecorsair/business/ennemis/AlienEnemy;->onDestroyed(Z)V

    .line 223
    invoke-static {}, Lfr/testudo/spacecorsair/business/factory/GamePools;->newRandomExplode()Lfr/testudo/spacecorsair/display/ExplosionAnim;

    move-result-object v0

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/ennemis/UfoAlienShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v0, v1, p0}, Lfr/testudo/spacecorsair/display/ExplosionAnim;->init(Lfr/testudo/spacecorsair/engine/Vector2;Lfr/testudo/spacecorsair/business/Element;)Lfr/testudo/spacecorsair/display/ExplosionAnim;

    move-result-object v0

    .line 224
    sget-object v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v1, v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v1, v1, Lfr/testudo/spacecorsair/game/Game;->currentLevel:Lfr/testudo/spacecorsair/game/levels/Level;

    iget-object v1, v1, Lfr/testudo/spacecorsair/game/levels/Level;->toAddAnimated:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 226
    const/4 v0, 0x7

    invoke-static {p0, v0}, Lfr/testudo/spacecorsair/display/ParticuleFactory;->addLightBlue(Lfr/testudo/spacecorsair/business/Element;I)V

    .line 229
    return-void
.end method

.method public registerYourselfToDrawQueue()V
    .registers 10

    .prologue
    .line 256
    iget-boolean v0, p0, Lfr/testudo/spacecorsair/business/ennemis/UfoAlienShip;->laserBeamActive:Z

    if-eqz v0, :cond_50

    iget-object v0, p0, Lfr/testudo/spacecorsair/business/ennemis/UfoAlienShip;->attackTarget:Lfr/testudo/spacecorsair/business/Element;

    if-eqz v0, :cond_50

    iget-object v0, p0, Lfr/testudo/spacecorsair/business/ennemis/UfoAlienShip;->attackTarget:Lfr/testudo/spacecorsair/business/Element;

    iget-boolean v0, v0, Lfr/testudo/spacecorsair/business/Element;->removed:Z

    if-nez v0, :cond_50

    .line 257
    const/4 v0, 0x0

    move v8, v0

    :goto_10
    const/4 v0, 0x3

    if-ge v8, v0, :cond_50

    .line 258
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/ennemis/UfoAlienShip;->tempVector:Lfr/testudo/spacecorsair/engine/Vector2;

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/ennemis/UfoAlienShip;->attackTarget:Lfr/testudo/spacecorsair/business/Element;

    iget-object v1, v1, Lfr/testudo/spacecorsair/business/Element;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/engine/Vector2;->setSameAs(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    move-result-object v0

    const-wide/high16 v2, -0x3fcc000000000000L    # -20.0

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v4

    const-wide/high16 v6, 0x4044000000000000L    # 40.0

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    double-to-float v1, v2

    const-wide/high16 v2, -0x3fcc000000000000L    # -20.0

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v4

    const-wide/high16 v6, 0x4044000000000000L    # 40.0

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    double-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lfr/testudo/spacecorsair/engine/Vector2;->add(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 259
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->renderQueue:Lfr/testudo/spacecorsair/engine/RenderQueue;

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/ennemis/UfoAlienShip;->tempVector:Lfr/testudo/spacecorsair/engine/Vector2;

    iget-object v2, p0, Lfr/testudo/spacecorsair/business/ennemis/UfoAlienShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    const/4 v3, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    const/high16 v5, 0x3f800000    # 1.0f

    const v6, 0x3dcccccd    # 0.1f

    const v7, 0x3dcccccd    # 0.1f

    invoke-virtual/range {v0 .. v7}, Lfr/testudo/spacecorsair/engine/RenderQueue;->addToWaitingQueue(Lfr/testudo/spacecorsair/engine/Vector2;Lfr/testudo/spacecorsair/engine/Vector2;ZFFFF)V

    .line 257
    add-int/lit8 v0, v8, 0x1

    move v8, v0

    goto :goto_10

    .line 263
    :cond_50
    invoke-super {p0}, Lfr/testudo/spacecorsair/business/ennemis/AlienEnemy;->registerYourselfToDrawQueue()V

    .line 268
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/ennemis/UfoAlienShip;->tempVector:Lfr/testudo/spacecorsair/engine/Vector2;

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/ennemis/UfoAlienShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/engine/Vector2;->setSameAs(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 269
    iget-object v1, p0, Lfr/testudo/spacecorsair/business/ennemis/UfoAlienShip;->tempVector:Lfr/testudo/spacecorsair/engine/Vector2;

    sget-object v0, Lfr/testudo/spacecorsair/business/ennemis/UfoAlienShip;->drawable:[Lfr/testudo/spacecorsair/display/Drawable;

    const/4 v2, 0x0

    aget-object v0, v0, v2

    iget-object v0, v0, Lfr/testudo/spacecorsair/display/Drawable;->dimensions:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v0, v0, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    neg-float v0, v0

    const/high16 v2, 0x40000000    # 2.0f

    div-float v2, v0, v2

    iget v0, p0, Lfr/testudo/spacecorsair/business/ennemis/UfoAlienShip;->level:I

    const/16 v3, 0xa

    if-ge v0, v3, :cond_14b

    const/4 v0, 0x2

    :goto_71
    int-to-float v0, v0

    sub-float v0, v2, v0

    sget-object v2, Lfr/testudo/spacecorsair/business/ennemis/UfoAlienShip;->drawable:[Lfr/testudo/spacecorsair/display/Drawable;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    iget-object v2, v2, Lfr/testudo/spacecorsair/display/Drawable;->dimensions:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v2, v2, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    invoke-virtual {v1, v0, v2}, Lfr/testudo/spacecorsair/engine/Vector2;->add(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 270
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->renderQueue:Lfr/testudo/spacecorsair/engine/RenderQueue;

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/ennemis/UfoAlienShip;->tempVector:Lfr/testudo/spacecorsair/engine/Vector2;

    const/4 v2, 0x0

    iget-object v3, p0, Lfr/testudo/spacecorsair/business/ennemis/UfoAlienShip;->levelStr:Ljava/lang/String;

    iget v4, p0, Lfr/testudo/spacecorsair/business/ennemis/UfoAlienShip;->levelColorR:F

    iget v5, p0, Lfr/testudo/spacecorsair/business/ennemis/UfoAlienShip;->levelColorG:F

    iget v6, p0, Lfr/testudo/spacecorsair/business/ennemis/UfoAlienShip;->levelColorB:F

    const/high16 v7, 0x3f800000    # 1.0f

    sget-object v8, Lfr/testudo/spacecorsair/textengine/TextSize;->LITTLE:Lfr/testudo/spacecorsair/textengine/TextSize;

    invoke-virtual/range {v0 .. v8}, Lfr/testudo/spacecorsair/engine/RenderQueue;->addTextToTextWaitingQueue(Lfr/testudo/spacecorsair/engine/Vector2;ZLjava/lang/String;FFFFLfr/testudo/spacecorsair/textengine/TextSize;)V

    .line 273
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/ennemis/UfoAlienShip;->tempVector:Lfr/testudo/spacecorsair/engine/Vector2;

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/ennemis/UfoAlienShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/engine/Vector2;->setSameAs(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 274
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/ennemis/UfoAlienShip;->tempVector:Lfr/testudo/spacecorsair/engine/Vector2;

    const/high16 v1, 0x40a00000    # 5.0f

    const/high16 v2, 0x40a00000    # 5.0f

    invoke-virtual {v0, v1, v2}, Lfr/testudo/spacecorsair/engine/Vector2;->add(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 275
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->renderQueue:Lfr/testudo/spacecorsair/engine/RenderQueue;

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/ennemis/UfoAlienShip;->tempVector:Lfr/testudo/spacecorsair/engine/Vector2;

    iget-object v2, p0, Lfr/testudo/spacecorsair/business/ennemis/UfoAlienShip;->lifeBar:Lfr/testudo/spacecorsair/display/hud/InfoBarEnnemis;

    invoke-virtual {v0, v1, v2}, Lfr/testudo/spacecorsair/engine/RenderQueue;->addToWaitingQueue(Lfr/testudo/spacecorsair/engine/Vector2;Lfr/testudo/spacecorsair/display/hud/InfoBar;)V

    .line 277
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/ennemis/UfoAlienShip;->specificName:Ljava/lang/String;

    if-eqz v0, :cond_107

    .line 279
    iget v0, p0, Lfr/testudo/spacecorsair/business/ennemis/UfoAlienShip;->specificNameDecalX:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_cb

    .line 280
    sget-object v0, Lfr/testudo/spacecorsair/engine/GameRenderer;->glTextNormalPlus:Lfr/testudo/spacecorsair/textengine/GLText;

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/ennemis/UfoAlienShip;->specificName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/textengine/GLText;->getLength(Ljava/lang/String;)F

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lfr/testudo/spacecorsair/business/ennemis/UfoAlienShip;->specificNameDecalX:I

    .line 282
    :cond_cb
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/ennemis/UfoAlienShip;->tempVector:Lfr/testudo/spacecorsair/engine/Vector2;

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/ennemis/UfoAlienShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/engine/Vector2;->setSameAs(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    move-result-object v0

    iget v1, p0, Lfr/testudo/spacecorsair/business/ennemis/UfoAlienShip;->specificNameDecalX:I

    neg-int v1, v1

    int-to-float v1, v1

    sget-object v2, Lfr/testudo/spacecorsair/business/ennemis/UfoAlienShip;->drawable:[Lfr/testudo/spacecorsair/display/Drawable;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    iget-object v2, v2, Lfr/testudo/spacecorsair/display/Drawable;->dimensions:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v2, v2, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    const/high16 v3, 0x41900000    # 18.0f

    add-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Lfr/testudo/spacecorsair/engine/Vector2;->add(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 284
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->renderQueue:Lfr/testudo/spacecorsair/engine/RenderQueue;

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/ennemis/UfoAlienShip;->tempVector:Lfr/testudo/spacecorsair/engine/Vector2;

    const/4 v2, 0x0

    iget-object v3, p0, Lfr/testudo/spacecorsair/business/ennemis/UfoAlienShip;->specificName:Ljava/lang/String;

    sget-object v4, Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;->ORANGE:Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;

    iget v4, v4, Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;->r:F

    sget-object v5, Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;->ORANGE:Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;

    iget v5, v5, Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;->g:F

    sget-object v6, Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;->ORANGE:Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;

    iget v6, v6, Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;->b:F

    sget-object v7, Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;->ORANGE:Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;

    iget v7, v7, Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;->a:F

    sget-object v8, Lfr/testudo/spacecorsair/textengine/TextSize;->NORMALPLUS:Lfr/testudo/spacecorsair/textengine/TextSize;

    invoke-virtual/range {v0 .. v8}, Lfr/testudo/spacecorsair/engine/RenderQueue;->addTextToTextWaitingQueue(Lfr/testudo/spacecorsair/engine/Vector2;ZLjava/lang/String;FFFFLfr/testudo/spacecorsair/textengine/TextSize;)V

    .line 288
    :cond_107
    iget-boolean v0, p0, Lfr/testudo/spacecorsair/business/ennemis/UfoAlienShip;->elite:Z

    if-eqz v0, :cond_14a

    .line 289
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/ennemis/UfoAlienShip;->tempVector:Lfr/testudo/spacecorsair/engine/Vector2;

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/ennemis/UfoAlienShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/engine/Vector2;->setSameAs(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    move-result-object v0

    sget-object v1, Lfr/testudo/spacecorsair/business/ennemis/UfoAlienShip;->drawable:[Lfr/testudo/spacecorsair/display/Drawable;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    iget-object v1, v1, Lfr/testudo/spacecorsair/display/Drawable;->dimensions:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v1, v1, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    const/high16 v2, 0x40a00000    # 5.0f

    add-float/2addr v1, v2

    sget-object v2, Lfr/testudo/spacecorsair/business/ennemis/UfoAlienShip;->drawable:[Lfr/testudo/spacecorsair/display/Drawable;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    iget-object v2, v2, Lfr/testudo/spacecorsair/display/Drawable;->dimensions:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v2, v2, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    const/high16 v3, 0x41200000    # 10.0f

    add-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Lfr/testudo/spacecorsair/engine/Vector2;->add(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 290
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->renderQueue:Lfr/testudo/spacecorsair/engine/RenderQueue;

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/ennemis/UfoAlienShip;->tempVector:Lfr/testudo/spacecorsair/engine/Vector2;

    const/4 v2, 0x0

    sget-object v3, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->ELITE_MARK_SIZE_NORMAL:Lfr/testudo/spacecorsair/display/Drawable;

    const/high16 v4, 0x43340000    # 180.0f

    const/high16 v5, 0x3f800000    # 1.0f

    const/high16 v6, 0x3f800000    # 1.0f

    const/high16 v7, 0x3f800000    # 1.0f

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-virtual/range {v0 .. v8}, Lfr/testudo/spacecorsair/engine/RenderQueue;->addToWaitingQueue(Lfr/testudo/spacecorsair/engine/Vector2;ZLfr/testudo/spacecorsair/display/Drawable;FFFFF)V

    .line 299
    :cond_14a
    return-void

    .line 269
    :cond_14b
    const/4 v0, 0x5

    goto/16 :goto_71
.end method

.method public setElite()Lfr/testudo/spacecorsair/business/ennemis/Ennemis;
    .registers 4

    .prologue
    const/high16 v1, 0x40400000    # 3.0f

    const/high16 v2, 0x40000000    # 2.0f

    .line 234
    invoke-super {p0}, Lfr/testudo/spacecorsair/business/ennemis/AlienEnemy;->setElite()Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    .line 235
    iget v0, p0, Lfr/testudo/spacecorsair/business/ennemis/UfoAlienShip;->xp:I

    mul-int/lit8 v0, v0, 0x3

    iput v0, p0, Lfr/testudo/spacecorsair/business/ennemis/UfoAlienShip;->xp:I

    .line 236
    iget v0, p0, Lfr/testudo/spacecorsair/business/ennemis/UfoAlienShip;->life:F

    mul-float/2addr v0, v1

    iput v0, p0, Lfr/testudo/spacecorsair/business/ennemis/UfoAlienShip;->life:F

    .line 237
    iget v0, p0, Lfr/testudo/spacecorsair/business/ennemis/UfoAlienShip;->maxLife:F

    mul-float/2addr v0, v1

    iput v0, p0, Lfr/testudo/spacecorsair/business/ennemis/UfoAlienShip;->maxLife:F

    .line 238
    iget v0, p0, Lfr/testudo/spacecorsair/business/ennemis/UfoAlienShip;->bulletDamage:F

    mul-float/2addr v0, v2

    iput v0, p0, Lfr/testudo/spacecorsair/business/ennemis/UfoAlienShip;->bulletDamage:F

    .line 239
    iget-wide v0, p0, Lfr/testudo/spacecorsair/business/ennemis/UfoAlienShip;->milleSecBetweenShots:J

    long-to-float v0, v0

    const v1, 0x3f19999a    # 0.6f

    mul-float/2addr v0, v1

    float-to-long v0, v0

    iput-wide v0, p0, Lfr/testudo/spacecorsair/business/ennemis/UfoAlienShip;->milleSecBetweenShots:J

    .line 240
    iget v0, p0, Lfr/testudo/spacecorsair/business/ennemis/UfoAlienShip;->radarPointSize:F

    add-float/2addr v0, v2

    iput v0, p0, Lfr/testudo/spacecorsair/business/ennemis/UfoAlienShip;->radarPointSize:F

    .line 242
    return-object p0
.end method

.method public withLaserAlterations(Lfr/testudo/spacecorsair/business/loot/stuff/alteration/AlterationSpecs;)Lfr/testudo/spacecorsair/business/ennemis/Ennemis;
    .registers 3

    .prologue
    .line 303
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/ennemis/UfoAlienShip;->fakeProjectile:Lfr/testudo/spacecorsair/business/projectiles/LaserBeam;

    iput-object p1, v0, Lfr/testudo/spacecorsair/business/projectiles/LaserBeam;->alterationSpecs:Lfr/testudo/spacecorsair/business/loot/stuff/alteration/AlterationSpecs;

    .line 304
    return-object p0
.end method
