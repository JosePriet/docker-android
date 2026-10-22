.class public Lfr/testudo/spacecorsair/business/ennemis/AlienRat;
.super Lfr/testudo/spacecorsair/business/ennemis/AlienEnemy;
.source "SourceFile"


# static fields
.field public static final APPEARING_TIME:F = 1500.0f

.field public static final ATTACK_TARGET_CENTER_DISTANCE:I = 0x96

.field public static final OBJECT_NAME:Ljava/lang/String; = "Alien RAT"

.field public static final RECALC_TARGET_POS_FREUENCY_IN_MILLI:I = 0xc8

.field public static final SHOOT_DISTANCE:I = 0x384

.field public static final TELEPORT_DISTANCE:I = 0x7d0

.field public static final TELEPORT_FREQUENCE_IN_MILLI:I = 0x3a98

.field public static final animCount:I = 0x16

.field public static final animLength:I = 0x370

.field public static final animSpeed:I = 0x28

.field static final calcVect:Lfr/testudo/spacecorsair/engine/Vector2;

.field public static drawable:[Lfr/testudo/spacecorsair/display/Drawable;

.field public static drawableDim:Lfr/testudo/spacecorsair/engine/Vector2;

.field public static physicalDim:Lfr/testudo/spacecorsair/engine/Vector2;

.field public static pouseeForceAbimed:F


# instance fields
.field public appearRemainingTime:I

.field public appearing:Z

.field public hasShootAttackMode:Z

.field public nextTimeRecalcPos:I

.field randomAnimDecal:I

.field public relativePosTarget:Lfr/testudo/spacecorsair/engine/Vector2;

.field public remainingTimeTeleport:I

.field public targetFollowAngle:I

.field public targetFollowDistanceRandom:I

.field public trackedMissile:Lfr/testudo/spacecorsair/business/projectiles/Missile;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    const/high16 v2, 0x42c80000    # 100.0f

    const/high16 v1, 0x42a00000    # 80.0f

    .line 27
    const/16 v0, 0x16

    new-array v0, v0, [Lfr/testudo/spacecorsair/display/Drawable;

    sput-object v0, Lfr/testudo/spacecorsair/business/ennemis/AlienRat;->drawable:[Lfr/testudo/spacecorsair/display/Drawable;

    .line 28
    new-instance v0, Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-direct {v0, v1, v1}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>(FF)V

    sput-object v0, Lfr/testudo/spacecorsair/business/ennemis/AlienRat;->physicalDim:Lfr/testudo/spacecorsair/engine/Vector2;

    .line 29
    new-instance v0, Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-direct {v0, v2, v2}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>(FF)V

    sput-object v0, Lfr/testudo/spacecorsair/business/ennemis/AlienRat;->drawableDim:Lfr/testudo/spacecorsair/engine/Vector2;

    .line 33
    const/high16 v0, 0x3f800000    # 1.0f

    sput v0, Lfr/testudo/spacecorsair/business/ennemis/AlienRat;->pouseeForceAbimed:F

    .line 290
    new-instance v0, Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-direct {v0}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>()V

    sput-object v0, Lfr/testudo/spacecorsair/business/ennemis/AlienRat;->calcVect:Lfr/testudo/spacecorsair/engine/Vector2;

    return-void
.end method

.method public constructor <init>()V
    .registers 6

    .prologue
    const/high16 v4, 0x3f400000    # 0.75f

    const/4 v1, 0x0

    .line 90
    invoke-direct {p0}, Lfr/testudo/spacecorsair/business/ennemis/AlienEnemy;-><init>()V

    .line 35
    iput-boolean v1, p0, Lfr/testudo/spacecorsair/business/ennemis/AlienRat;->hasShootAttackMode:Z

    .line 42
    new-instance v0, Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-direct {v0}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>()V

    iput-object v0, p0, Lfr/testudo/spacecorsair/business/ennemis/AlienRat;->relativePosTarget:Lfr/testudo/spacecorsair/engine/Vector2;

    .line 43
    iput v1, p0, Lfr/testudo/spacecorsair/business/ennemis/AlienRat;->targetFollowAngle:I

    .line 44
    iput v1, p0, Lfr/testudo/spacecorsair/business/ennemis/AlienRat;->targetFollowDistanceRandom:I

    .line 46
    iput v1, p0, Lfr/testudo/spacecorsair/business/ennemis/AlienRat;->remainingTimeTeleport:I

    .line 49
    iput-boolean v1, p0, Lfr/testudo/spacecorsair/business/ennemis/AlienRat;->appearing:Z

    .line 50
    iput v1, p0, Lfr/testudo/spacecorsair/business/ennemis/AlienRat;->appearRemainingTime:I

    .line 145
    iput v1, p0, Lfr/testudo/spacecorsair/business/ennemis/AlienRat;->nextTimeRecalcPos:I

    .line 91
    const-string v0, "Alien RAT"

    iput-object v0, p0, Lfr/testudo/spacecorsair/business/ennemis/AlienRat;->objectName:Ljava/lang/String;

    .line 92
    new-instance v0, Lfr/testudo/spacecorsair/engine/Vector2;

    const/4 v1, 0x0

    sget-object v2, Lfr/testudo/spacecorsair/business/ennemis/AlienRat;->drawableDim:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v2, v2, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    neg-float v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    const/high16 v3, 0x40a00000    # 5.0f

    sub-float/2addr v2, v3

    invoke-direct {v0, v1, v2}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>(FF)V

    sget-object v1, Lfr/testudo/spacecorsair/business/ennemis/AlienRat;->drawableDim:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v1, v1, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    float-to-int v1, v1

    add-int/lit8 v1, v1, -0x23

    const/4 v2, 0x6

    invoke-static {v0, v1, v2}, Lfr/testudo/spacecorsair/display/hud/InfoBarEnnemis;->newRed(Lfr/testudo/spacecorsair/engine/Vector2;II)Lfr/testudo/spacecorsair/display/hud/InfoBarEnnemis;

    move-result-object v0

    iput-object v0, p0, Lfr/testudo/spacecorsair/business/ennemis/AlienRat;->lifeBar:Lfr/testudo/spacecorsair/display/hud/InfoBarEnnemis;

    .line 93
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/ennemis/AlienRat;->lifeBar:Lfr/testudo/spacecorsair/display/hud/InfoBarEnnemis;

    iput v4, v0, Lfr/testudo/spacecorsair/display/hud/InfoBarEnnemis;->extR:F

    .line 94
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/ennemis/AlienRat;->lifeBar:Lfr/testudo/spacecorsair/display/hud/InfoBarEnnemis;

    iput v4, v0, Lfr/testudo/spacecorsair/display/hud/InfoBarEnnemis;->extG:F

    .line 95
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/ennemis/AlienRat;->lifeBar:Lfr/testudo/spacecorsair/display/hud/InfoBarEnnemis;

    iput v4, v0, Lfr/testudo/spacecorsair/display/hud/InfoBarEnnemis;->extB:F

    .line 97
    return-void
.end method

.method public static setTexture([Lfr/testudo/spacecorsair/display/Texture;)V
    .registers 6

    .prologue
    .line 62
    const/4 v0, 0x0

    :goto_1
    const/16 v1, 0xb

    if-ge v0, v1, :cond_1f

    .line 63
    sget-object v1, Lfr/testudo/spacecorsair/business/ennemis/AlienRat;->drawable:[Lfr/testudo/spacecorsair/display/Drawable;

    new-instance v2, Lfr/testudo/spacecorsair/display/Drawable;

    sget-object v3, Lfr/testudo/spacecorsair/business/ennemis/AlienRat;->drawableDim:Lfr/testudo/spacecorsair/engine/Vector2;

    aget-object v4, p0, v0

    invoke-direct {v2, v3, v4}, Lfr/testudo/spacecorsair/display/Drawable;-><init>(Lfr/testudo/spacecorsair/engine/Vector2;Lfr/testudo/spacecorsair/display/Texture;)V

    aput-object v2, v1, v0

    .line 64
    sget-object v1, Lfr/testudo/spacecorsair/business/ennemis/AlienRat;->drawable:[Lfr/testudo/spacecorsair/display/Drawable;

    rsub-int/lit8 v2, v0, 0x15

    sget-object v3, Lfr/testudo/spacecorsair/business/ennemis/AlienRat;->drawable:[Lfr/testudo/spacecorsair/display/Drawable;

    aget-object v3, v3, v0

    aput-object v3, v1, v2

    .line 62
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 66
    :cond_1f
    return-void
.end method


# virtual methods
.method public applyDamage(FLfr/testudo/spacecorsair/business/Element;Lfr/testudo/spacecorsair/business/projectiles/Projectile;)V
    .registers 6

    .prologue
    .line 335
    invoke-super {p0, p1, p2, p3}, Lfr/testudo/spacecorsair/business/ennemis/AlienEnemy;->applyDamage(FLfr/testudo/spacecorsair/business/Element;Lfr/testudo/spacecorsair/business/projectiles/Projectile;)V

    .line 336
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/ennemis/AlienRat;->lifeBar:Lfr/testudo/spacecorsair/display/hud/InfoBarEnnemis;

    iget v1, p0, Lfr/testudo/spacecorsair/business/ennemis/AlienRat;->lifeInPourc:F

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/display/hud/InfoBarEnnemis;->setValue(F)V

    .line 337
    iget v0, p0, Lfr/testudo/spacecorsair/business/ennemis/AlienRat;->lifeInPourc:F

    const/high16 v1, 0x41c80000    # 25.0f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_16

    .line 338
    sget v0, Lfr/testudo/spacecorsair/business/ennemis/AlienRat;->pouseeForceAbimed:F

    iput v0, p0, Lfr/testudo/spacecorsair/business/ennemis/AlienRat;->pouseeForce:F

    .line 340
    :cond_16
    return-void
.end method

.method protected doAttackIa(JJ)V
    .registers 10

    .prologue
    const-wide/16 v2, 0x0

    .line 242
    iget v0, p0, Lfr/testudo/spacecorsair/business/ennemis/AlienRat;->nextTimeRecalcPos:I

    int-to-long v0, v0

    sub-long/2addr v0, p1

    long-to-int v0, v0

    iput v0, p0, Lfr/testudo/spacecorsair/business/ennemis/AlienRat;->nextTimeRecalcPos:I

    .line 243
    iget v0, p0, Lfr/testudo/spacecorsair/business/ennemis/AlienRat;->nextTimeRecalcPos:I

    if-gtz v0, :cond_12

    .line 244
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/ennemis/AlienRat;->attackTarget:Lfr/testudo/spacecorsair/business/Element;

    invoke-virtual {p0, v0}, Lfr/testudo/spacecorsair/business/ennemis/AlienRat;->updateRelativePosTarget(Lfr/testudo/spacecorsair/business/Element;)V

    .line 247
    :cond_12
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/ennemis/AlienRat;->relativePosTarget:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {p0, v0}, Lfr/testudo/spacecorsair/business/ennemis/AlienRat;->alignToPoint(Lfr/testudo/spacecorsair/engine/Vector2;)Z

    move-result v0

    if-nez v0, :cond_49

    const/4 v0, 0x1

    :goto_1b
    iput-boolean v0, p0, Lfr/testudo/spacecorsair/business/ennemis/AlienRat;->isPousee:Z

    .line 249
    const-wide/16 v0, 0x384

    cmp-long v0, p3, v0

    if-gez v0, :cond_2e

    iget-wide v0, p0, Lfr/testudo/spacecorsair/business/ennemis/AlienRat;->nextShootAlowed:J

    cmp-long v0, v0, v2

    if-gtz v0, :cond_2e

    .line 250
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/ennemis/AlienRat;->attackTarget:Lfr/testudo/spacecorsair/business/Element;

    invoke-virtual {p0, v0}, Lfr/testudo/spacecorsair/business/ennemis/AlienRat;->shootTarget(Lfr/testudo/spacecorsair/business/Element;)V

    .line 253
    :cond_2e
    iget-boolean v0, p0, Lfr/testudo/spacecorsair/business/ennemis/AlienRat;->hasShootAttackMode:Z

    if-eqz v0, :cond_3b

    const-wide/16 v0, 0x7d0

    cmp-long v0, p3, v0

    if-lez v0, :cond_3b

    .line 254
    invoke-virtual {p0}, Lfr/testudo/spacecorsair/business/ennemis/AlienRat;->requestTeleportNextToTarget()V

    .line 257
    :cond_3b
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/ennemis/AlienRat;->trackedMissile:Lfr/testudo/spacecorsair/business/projectiles/Missile;

    if-eqz v0, :cond_48

    .line 258
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/ennemis/AlienRat;->trackedMissile:Lfr/testudo/spacecorsair/business/projectiles/Missile;

    iget-boolean v0, v0, Lfr/testudo/spacecorsair/business/projectiles/Missile;->removed:Z

    if-eqz v0, :cond_4b

    .line 259
    const/4 v0, 0x0

    iput-object v0, p0, Lfr/testudo/spacecorsair/business/ennemis/AlienRat;->trackedMissile:Lfr/testudo/spacecorsair/business/projectiles/Missile;

    .line 275
    :cond_48
    :goto_48
    return-void

    .line 247
    :cond_49
    const/4 v0, 0x0

    goto :goto_1b

    .line 261
    :cond_4b
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/ennemis/AlienRat;->trackedMissile:Lfr/testudo/spacecorsair/business/projectiles/Missile;

    iget-object v0, v0, Lfr/testudo/spacecorsair/business/projectiles/Missile;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/ennemis/AlienRat;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/engine/Vector2;->distance(Lfr/testudo/spacecorsair/engine/Vector2;)F

    move-result v0

    const/high16 v1, 0x43fa0000    # 500.0f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_48

    .line 262
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/ennemis/AlienRat;->trackedMissile:Lfr/testudo/spacecorsair/business/projectiles/Missile;

    invoke-virtual {p0, v0}, Lfr/testudo/spacecorsair/business/ennemis/AlienRat;->updateRelativePosTarget(Lfr/testudo/spacecorsair/business/Element;)V

    .line 263
    iget-wide v0, p0, Lfr/testudo/spacecorsair/business/ennemis/AlienRat;->nextShootAlowed:J

    cmp-long v0, v0, v2

    if-gtz v0, :cond_48

    .line 264
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/ennemis/AlienRat;->trackedMissile:Lfr/testudo/spacecorsair/business/projectiles/Missile;

    invoke-virtual {p0, v0}, Lfr/testudo/spacecorsair/business/ennemis/AlienRat;->shootTarget(Lfr/testudo/spacecorsair/business/Element;)V

    goto :goto_48
.end method

.method public doPhysic(J)V
    .registers 8

    .prologue
    .line 372
    invoke-super {p0, p1, p2}, Lfr/testudo/spacecorsair/business/ennemis/AlienEnemy;->doPhysic(J)V

    .line 374
    iget-wide v0, p0, Lfr/testudo/spacecorsair/business/ennemis/AlienRat;->nextShootAlowed:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_10

    .line 375
    iget-wide v0, p0, Lfr/testudo/spacecorsair/business/ennemis/AlienRat;->nextShootAlowed:J

    sub-long/2addr v0, p1

    iput-wide v0, p0, Lfr/testudo/spacecorsair/business/ennemis/AlienRat;->nextShootAlowed:J

    .line 377
    :cond_10
    iget v0, p0, Lfr/testudo/spacecorsair/business/ennemis/AlienRat;->remainingTimeTeleport:I

    if-lez v0, :cond_1b

    .line 378
    iget v0, p0, Lfr/testudo/spacecorsair/business/ennemis/AlienRat;->remainingTimeTeleport:I

    int-to-long v0, v0

    sub-long/2addr v0, p1

    long-to-int v0, v0

    iput v0, p0, Lfr/testudo/spacecorsair/business/ennemis/AlienRat;->remainingTimeTeleport:I

    .line 380
    :cond_1b
    iget-boolean v0, p0, Lfr/testudo/spacecorsair/business/ennemis/AlienRat;->appearing:Z

    if-eqz v0, :cond_2d

    .line 381
    iget v0, p0, Lfr/testudo/spacecorsair/business/ennemis/AlienRat;->appearRemainingTime:I

    int-to-long v0, v0

    sub-long/2addr v0, p1

    long-to-int v0, v0

    iput v0, p0, Lfr/testudo/spacecorsair/business/ennemis/AlienRat;->appearRemainingTime:I

    .line 382
    iget v0, p0, Lfr/testudo/spacecorsair/business/ennemis/AlienRat;->appearRemainingTime:I

    if-gtz v0, :cond_2d

    .line 383
    const/4 v0, 0x0

    iput-boolean v0, p0, Lfr/testudo/spacecorsair/business/ennemis/AlienRat;->appearing:Z

    .line 386
    :cond_2d
    return-void
.end method

.method public getDrawableObject()Lfr/testudo/spacecorsair/display/Drawable;
    .registers 5

    .prologue
    .line 76
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget v2, p0, Lfr/testudo/spacecorsair/business/ennemis/AlienRat;->randomAnimDecal:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    const-wide/16 v2, 0x370

    rem-long/2addr v0, v2

    .line 78
    const-wide/16 v2, 0x28

    div-long/2addr v0, v2

    .line 81
    sget-object v2, Lfr/testudo/spacecorsair/business/ennemis/AlienRat;->drawable:[Lfr/testudo/spacecorsair/display/Drawable;

    long-to-int v0, v0

    aget-object v0, v2, v0

    return-object v0
.end method

.method public getMiniDrawableObject()Lfr/testudo/spacecorsair/display/Drawable;
    .registers 2

    .prologue
    .line 57
    const/4 v0, 0x0

    return-object v0
.end method

.method public getPhysicDimension()Lfr/testudo/spacecorsair/engine/Vector2;
    .registers 2

    .prologue
    .line 86
    sget-object v0, Lfr/testudo/spacecorsair/business/ennemis/AlienRat;->physicalDim:Lfr/testudo/spacecorsair/engine/Vector2;

    return-object v0
.end method

.method public initLevelConfig(Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;I)Lfr/testudo/spacecorsair/business/ennemis/AlienRat;
    .registers 9

    .prologue
    const v5, 0x3f31b1b2

    const/4 v4, 0x0

    .line 101
    invoke-super {p0, p2}, Lfr/testudo/spacecorsair/business/ennemis/AlienEnemy;->init(I)Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    .line 104
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v0

    const-wide v2, 0x408b800000000000L    # 880.0

    mul-double/2addr v0, v2

    double-to-int v0, v0

    iput v0, p0, Lfr/testudo/spacecorsair/business/ennemis/AlienRat;->randomAnimDecal:I

    .line 105
    iget v0, p1, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->life:I

    int-to-float v0, v0

    iput v0, p0, Lfr/testudo/spacecorsair/business/ennemis/AlienRat;->maxLife:F

    .line 106
    iget v0, p1, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->life:I

    int-to-float v0, v0

    iput v0, p0, Lfr/testudo/spacecorsair/business/ennemis/AlienRat;->life:F

    .line 107
    iget v0, p1, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->xp:I

    iput v0, p0, Lfr/testudo/spacecorsair/business/ennemis/AlienRat;->xp:I

    .line 108
    iget v0, p1, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->shootReload:I

    int-to-long v0, v0

    iput-wide v0, p0, Lfr/testudo/spacecorsair/business/ennemis/AlienRat;->milleSecBetweenShots:J

    .line 109
    iget v0, p1, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->shootDamage:I

    int-to-float v0, v0

    iput v0, p0, Lfr/testudo/spacecorsair/business/ennemis/AlienRat;->bulletDamage:F

    .line 110
    iget-object v0, p1, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->lootConfig:Lfr/testudo/spacecorsair/business/loot/LootConfig;

    iput-object v0, p0, Lfr/testudo/spacecorsair/business/ennemis/AlienRat;->lootConfig:Lfr/testudo/spacecorsair/business/loot/LootConfig;

    .line 111
    iget v0, p1, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->maxTurnFactor:F

    iput v0, p0, Lfr/testudo/spacecorsair/business/ennemis/AlienRat;->maxTurnFactor:F

    .line 114
    const/high16 v0, 0x457a0000    # 4000.0f

    iput v0, p0, Lfr/testudo/spacecorsair/business/ennemis/AlienRat;->distanceShoot:F

    .line 115
    const/high16 v0, 0x43480000    # 200.0f

    iput v0, p0, Lfr/testudo/spacecorsair/business/ennemis/AlienRat;->mass:F

    .line 116
    const v0, 0x3fd33333    # 1.65f

    iput v0, p0, Lfr/testudo/spacecorsair/business/ennemis/AlienRat;->pouseeForce:F

    .line 117
    const v0, 0x3f866666    # 1.05f

    iput v0, p0, Lfr/testudo/spacecorsair/business/ennemis/AlienRat;->speedDeperditionfactor:F

    .line 119
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/ennemis/AlienRat;->lifeBar:Lfr/testudo/spacecorsair/display/hud/InfoBarEnnemis;

    const/high16 v1, 0x42c80000    # 100.0f

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/display/hud/InfoBarEnnemis;->setValue(F)V

    .line 121
    const/16 v0, 0x7d0

    invoke-virtual {p0, v0}, Lfr/testudo/spacecorsair/business/ennemis/AlienRat;->setMitigedDistance(I)V

    .line 122
    const v0, 0x45ea6000    # 7500.0f

    iput v0, p0, Lfr/testudo/spacecorsair/business/ennemis/AlienRat;->desengagementDistance:F

    .line 123
    const/high16 v0, 0x40800000    # 4.0f

    iput v0, p0, Lfr/testudo/spacecorsair/business/ennemis/AlienRat;->shootPrecision:F

    .line 125
    const/4 v0, 0x1

    iput-boolean v0, p0, Lfr/testudo/spacecorsair/business/ennemis/AlienRat;->drawOnRadar:Z

    .line 126
    const/high16 v0, 0x40400000    # 3.0f

    iput v0, p0, Lfr/testudo/spacecorsair/business/ennemis/AlienRat;->radarPointSize:F

    .line 127
    const v0, 0x466a6000    # 15000.0f

    iput v0, p0, Lfr/testudo/spacecorsair/business/ennemis/AlienRat;->distanceToPlayer:F

    .line 130
    iget-wide v0, p0, Lfr/testudo/spacecorsair/business/ennemis/AlienRat;->milleSecBetweenShots:J

    iput-wide v0, p0, Lfr/testudo/spacecorsair/business/ennemis/AlienRat;->nextShootAlowed:J

    .line 131
    iput-boolean v4, p0, Lfr/testudo/spacecorsair/business/ennemis/AlienRat;->appearing:Z

    .line 132
    iput v4, p0, Lfr/testudo/spacecorsair/business/ennemis/AlienRat;->appearRemainingTime:I

    .line 133
    iput-boolean v4, p0, Lfr/testudo/spacecorsair/business/ennemis/AlienRat;->hasShootAttackMode:Z

    .line 134
    const/4 v0, 0x0

    iput-object v0, p0, Lfr/testudo/spacecorsair/business/ennemis/AlienRat;->trackedMissile:Lfr/testudo/spacecorsair/business/projectiles/Missile;

    .line 136
    iput v5, p0, Lfr/testudo/spacecorsair/business/ennemis/AlienRat;->radarColorR:F

    .line 137
    const/4 v0, 0x0

    iput v0, p0, Lfr/testudo/spacecorsair/business/ennemis/AlienRat;->radarColorG:F

    .line 138
    iput v5, p0, Lfr/testudo/spacecorsair/business/ennemis/AlienRat;->radarColorB:F

    .line 141
    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModV34;->scale(Lfr/testudo/spacecorsair/business/ennemis/Ennemis;)V

    return-object p0
.end method

.method protected onAttackTargetStart()V
    .registers 7

    .prologue
    .line 175
    const-wide/high16 v0, -0x3fb2000000000000L    # -60.0

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v2

    const-wide/high16 v4, 0x405e000000000000L    # 120.0

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    double-to-int v0, v0

    iput v0, p0, Lfr/testudo/spacecorsair/business/ennemis/AlienRat;->targetFollowAngle:I

    .line 176
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v0

    const-wide/high16 v2, 0x4059000000000000L    # 100.0

    mul-double/2addr v0, v2

    double-to-int v0, v0

    iput v0, p0, Lfr/testudo/spacecorsair/business/ennemis/AlienRat;->targetFollowDistanceRandom:I

    .line 177
    const/16 v0, 0x64

    iput v0, p0, Lfr/testudo/spacecorsair/business/ennemis/AlienRat;->precisionToTarget:I

    .line 179
    const/4 v0, 0x0

    iput-boolean v0, p0, Lfr/testudo/spacecorsair/business/ennemis/AlienRat;->hasShootAttackMode:Z

    .line 181
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/ennemis/AlienRat;->attackTarget:Lfr/testudo/spacecorsair/business/Element;

    invoke-virtual {p0, v0}, Lfr/testudo/spacecorsair/business/ennemis/AlienRat;->updateRelativePosTarget(Lfr/testudo/spacecorsair/business/Element;)V

    .line 183
    return-void
.end method

.method protected onAttackTargetStop()V
    .registers 2

    .prologue
    .line 187
    const/16 v0, 0xc8

    iput v0, p0, Lfr/testudo/spacecorsair/business/ennemis/AlienRat;->precisionToTarget:I

    .line 188
    return-void
.end method

.method public onDestroyed(Z)V
    .registers 4

    .prologue
    .line 345
    invoke-super {p0, p1}, Lfr/testudo/spacecorsair/business/ennemis/AlienEnemy;->onDestroyed(Z)V

    .line 347
    invoke-static {}, Lfr/testudo/spacecorsair/business/factory/GamePools;->newRandomExplode()Lfr/testudo/spacecorsair/display/ExplosionAnim;

    move-result-object v0

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/ennemis/AlienRat;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v0, v1, p0}, Lfr/testudo/spacecorsair/display/ExplosionAnim;->init(Lfr/testudo/spacecorsair/engine/Vector2;Lfr/testudo/spacecorsair/business/Element;)Lfr/testudo/spacecorsair/display/ExplosionAnim;

    move-result-object v0

    .line 348
    sget-object v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v1, v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v1, v1, Lfr/testudo/spacecorsair/game/Game;->currentLevel:Lfr/testudo/spacecorsair/game/levels/Level;

    iget-object v1, v1, Lfr/testudo/spacecorsair/game/levels/Level;->toAddAnimated:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 350
    const/4 v0, 0x7

    invoke-static {p0, v0}, Lfr/testudo/spacecorsair/display/ParticuleFactory;->addGreen(Lfr/testudo/spacecorsair/business/Element;I)V

    .line 353
    return-void
.end method

.method public onMissileLockedOnMe(Lfr/testudo/spacecorsair/business/projectiles/Missile;)V
    .registers 6

    .prologue
    .line 193
    invoke-super {p0, p1}, Lfr/testudo/spacecorsair/business/ennemis/AlienEnemy;->onMissileLockedOnMe(Lfr/testudo/spacecorsair/business/projectiles/Missile;)V

    .line 194
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/ennemis/AlienRat;->trackedMissile:Lfr/testudo/spacecorsair/business/projectiles/Missile;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lfr/testudo/spacecorsair/business/ennemis/AlienRat;->trackedMissile:Lfr/testudo/spacecorsair/business/projectiles/Missile;

    iget-boolean v0, v0, Lfr/testudo/spacecorsair/business/projectiles/Missile;->removed:Z

    if-eqz v0, :cond_f

    .line 195
    :cond_d
    iput-object p1, p0, Lfr/testudo/spacecorsair/business/ennemis/AlienRat;->trackedMissile:Lfr/testudo/spacecorsair/business/projectiles/Missile;

    .line 197
    :cond_f
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v0

    const-wide v2, 0x3fd51eb860000000L    # 0.33000001311302185

    cmpg-double v0, v0, v2

    if-gez v0, :cond_1f

    .line 198
    invoke-virtual {p0, p1}, Lfr/testudo/spacecorsair/business/ennemis/AlienRat;->shootCounterMesure(Lfr/testudo/spacecorsair/business/projectiles/Missile;)V

    .line 200
    :cond_1f
    return-void
.end method

.method public registerYourselfToDrawQueue()V
    .registers 10

    .prologue
    .line 394
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lfr/testudo/spacecorsair/business/ennemis/AlienRat;->a:F

    .line 395
    iget-boolean v0, p0, Lfr/testudo/spacecorsair/business/ennemis/AlienRat;->appearing:Z

    if-eqz v0, :cond_15

    .line 396
    const v0, 0x44bb8000    # 1500.0f

    iget v1, p0, Lfr/testudo/spacecorsair/business/ennemis/AlienRat;->appearRemainingTime:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    const v1, 0x44bb8000    # 1500.0f

    div-float/2addr v0, v1

    iput v0, p0, Lfr/testudo/spacecorsair/business/ennemis/AlienRat;->a:F

    .line 401
    :cond_15
    invoke-super {p0}, Lfr/testudo/spacecorsair/business/ennemis/AlienEnemy;->registerYourselfToDrawQueue()V

    .line 408
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/ennemis/AlienRat;->tempVector:Lfr/testudo/spacecorsair/engine/Vector2;

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/ennemis/AlienRat;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/engine/Vector2;->setSameAs(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 409
    iget-object v1, p0, Lfr/testudo/spacecorsair/business/ennemis/AlienRat;->tempVector:Lfr/testudo/spacecorsair/engine/Vector2;

    sget-object v0, Lfr/testudo/spacecorsair/business/ennemis/AlienRat;->drawable:[Lfr/testudo/spacecorsair/display/Drawable;

    const/4 v2, 0x0

    aget-object v0, v0, v2

    iget-object v0, v0, Lfr/testudo/spacecorsair/display/Drawable;->dimensions:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v0, v0, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    neg-float v0, v0

    const/high16 v2, 0x40000000    # 2.0f

    div-float v2, v0, v2

    iget v0, p0, Lfr/testudo/spacecorsair/business/ennemis/AlienRat;->level:I

    const/16 v3, 0xa

    if-ge v0, v3, :cond_110

    const/4 v0, 0x2

    :goto_36
    int-to-float v0, v0

    sub-float v0, v2, v0

    sget-object v2, Lfr/testudo/spacecorsair/business/ennemis/AlienRat;->drawable:[Lfr/testudo/spacecorsair/display/Drawable;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    iget-object v2, v2, Lfr/testudo/spacecorsair/display/Drawable;->dimensions:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v2, v2, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    invoke-virtual {v1, v0, v2}, Lfr/testudo/spacecorsair/engine/Vector2;->add(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 410
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->renderQueue:Lfr/testudo/spacecorsair/engine/RenderQueue;

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/ennemis/AlienRat;->tempVector:Lfr/testudo/spacecorsair/engine/Vector2;

    const/4 v2, 0x0

    iget-object v3, p0, Lfr/testudo/spacecorsair/business/ennemis/AlienRat;->levelStr:Ljava/lang/String;

    iget v4, p0, Lfr/testudo/spacecorsair/business/ennemis/AlienRat;->levelColorR:F

    iget v5, p0, Lfr/testudo/spacecorsair/business/ennemis/AlienRat;->levelColorG:F

    iget v6, p0, Lfr/testudo/spacecorsair/business/ennemis/AlienRat;->levelColorB:F

    const/high16 v7, 0x3f800000    # 1.0f

    sget-object v8, Lfr/testudo/spacecorsair/textengine/TextSize;->LITTLE:Lfr/testudo/spacecorsair/textengine/TextSize;

    invoke-virtual/range {v0 .. v8}, Lfr/testudo/spacecorsair/engine/RenderQueue;->addTextToTextWaitingQueue(Lfr/testudo/spacecorsair/engine/Vector2;ZLjava/lang/String;FFFFLfr/testudo/spacecorsair/textengine/TextSize;)V

    .line 413
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/ennemis/AlienRat;->tempVector:Lfr/testudo/spacecorsair/engine/Vector2;

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/ennemis/AlienRat;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/engine/Vector2;->setSameAs(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 414
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/ennemis/AlienRat;->tempVector:Lfr/testudo/spacecorsair/engine/Vector2;

    const/high16 v1, 0x40a00000    # 5.0f

    const/high16 v2, 0x40a00000    # 5.0f

    invoke-virtual {v0, v1, v2}, Lfr/testudo/spacecorsair/engine/Vector2;->add(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 415
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->renderQueue:Lfr/testudo/spacecorsair/engine/RenderQueue;

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/ennemis/AlienRat;->tempVector:Lfr/testudo/spacecorsair/engine/Vector2;

    iget-object v2, p0, Lfr/testudo/spacecorsair/business/ennemis/AlienRat;->lifeBar:Lfr/testudo/spacecorsair/display/hud/InfoBarEnnemis;

    invoke-virtual {v0, v1, v2}, Lfr/testudo/spacecorsair/engine/RenderQueue;->addToWaitingQueue(Lfr/testudo/spacecorsair/engine/Vector2;Lfr/testudo/spacecorsair/display/hud/InfoBar;)V

    .line 417
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/ennemis/AlienRat;->specificName:Ljava/lang/String;

    if-eqz v0, :cond_cc

    .line 419
    iget v0, p0, Lfr/testudo/spacecorsair/business/ennemis/AlienRat;->specificNameDecalX:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_90

    .line 420
    sget-object v0, Lfr/testudo/spacecorsair/engine/GameRenderer;->glTextNormalPlus:Lfr/testudo/spacecorsair/textengine/GLText;

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/ennemis/AlienRat;->specificName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/textengine/GLText;->getLength(Ljava/lang/String;)F

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lfr/testudo/spacecorsair/business/ennemis/AlienRat;->specificNameDecalX:I

    .line 422
    :cond_90
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/ennemis/AlienRat;->tempVector:Lfr/testudo/spacecorsair/engine/Vector2;

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/ennemis/AlienRat;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/engine/Vector2;->setSameAs(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    move-result-object v0

    iget v1, p0, Lfr/testudo/spacecorsair/business/ennemis/AlienRat;->specificNameDecalX:I

    neg-int v1, v1

    int-to-float v1, v1

    sget-object v2, Lfr/testudo/spacecorsair/business/ennemis/AlienRat;->drawable:[Lfr/testudo/spacecorsair/display/Drawable;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    iget-object v2, v2, Lfr/testudo/spacecorsair/display/Drawable;->dimensions:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v2, v2, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    const/high16 v3, 0x41900000    # 18.0f

    add-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Lfr/testudo/spacecorsair/engine/Vector2;->add(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 424
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->renderQueue:Lfr/testudo/spacecorsair/engine/RenderQueue;

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/ennemis/AlienRat;->tempVector:Lfr/testudo/spacecorsair/engine/Vector2;

    const/4 v2, 0x0

    iget-object v3, p0, Lfr/testudo/spacecorsair/business/ennemis/AlienRat;->specificName:Ljava/lang/String;

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

    .line 428
    :cond_cc
    iget-boolean v0, p0, Lfr/testudo/spacecorsair/business/ennemis/AlienRat;->elite:Z

    if-eqz v0, :cond_10f

    .line 429
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/ennemis/AlienRat;->tempVector:Lfr/testudo/spacecorsair/engine/Vector2;

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/ennemis/AlienRat;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/engine/Vector2;->setSameAs(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    move-result-object v0

    sget-object v1, Lfr/testudo/spacecorsair/business/ennemis/AlienRat;->drawable:[Lfr/testudo/spacecorsair/display/Drawable;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    iget-object v1, v1, Lfr/testudo/spacecorsair/display/Drawable;->dimensions:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v1, v1, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    const/high16 v2, 0x40a00000    # 5.0f

    add-float/2addr v1, v2

    sget-object v2, Lfr/testudo/spacecorsair/business/ennemis/AlienRat;->drawable:[Lfr/testudo/spacecorsair/display/Drawable;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    iget-object v2, v2, Lfr/testudo/spacecorsair/display/Drawable;->dimensions:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v2, v2, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    const/high16 v3, 0x41200000    # 10.0f

    add-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Lfr/testudo/spacecorsair/engine/Vector2;->add(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 430
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->renderQueue:Lfr/testudo/spacecorsair/engine/RenderQueue;

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/ennemis/AlienRat;->tempVector:Lfr/testudo/spacecorsair/engine/Vector2;

    const/4 v2, 0x0

    sget-object v3, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->ELITE_MARK_SIZE_NORMAL:Lfr/testudo/spacecorsair/display/Drawable;

    const/high16 v4, 0x43340000    # 180.0f

    const/high16 v5, 0x3f800000    # 1.0f

    const/high16 v6, 0x3f800000    # 1.0f

    const/high16 v7, 0x3f800000    # 1.0f

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-virtual/range {v0 .. v8}, Lfr/testudo/spacecorsair/engine/RenderQueue;->addToWaitingQueue(Lfr/testudo/spacecorsair/engine/Vector2;ZLfr/testudo/spacecorsair/display/Drawable;FFFFF)V

    .line 437
    :cond_10f
    return-void

    .line 409
    :cond_110
    const/4 v0, 0x5

    goto/16 :goto_36
.end method

.method public requestTeleportNextToTarget()V
    .registers 3

    .prologue
    .line 278
    iget v0, p0, Lfr/testudo/spacecorsair/business/ennemis/AlienRat;->remainingTimeTeleport:I

    if-lez v0, :cond_5

    .line 288
    :goto_4
    return-void

    .line 282
    :cond_5
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/ennemis/AlienRat;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/ennemis/AlienRat;->relativePosTarget:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/engine/Vector2;->setSameAs(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 283
    invoke-virtual {p0}, Lfr/testudo/spacecorsair/business/ennemis/AlienRat;->updateSapCoords()V

    .line 284
    const/4 v0, 0x1

    iput-boolean v0, p0, Lfr/testudo/spacecorsair/business/ennemis/AlienRat;->appearing:Z

    .line 285
    const/16 v0, 0x5dc

    iput v0, p0, Lfr/testudo/spacecorsair/business/ennemis/AlienRat;->appearRemainingTime:I

    .line 287
    const/16 v0, 0x3a98

    iput v0, p0, Lfr/testudo/spacecorsair/business/ennemis/AlienRat;->remainingTimeTeleport:I

    goto :goto_4
.end method

.method public setElite()Lfr/testudo/spacecorsair/business/ennemis/Ennemis;
    .registers 3

    .prologue
    const/high16 v1, 0x40400000    # 3.0f

    .line 358
    invoke-super {p0}, Lfr/testudo/spacecorsair/business/ennemis/AlienEnemy;->setElite()Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    .line 359
    iget v0, p0, Lfr/testudo/spacecorsair/business/ennemis/AlienRat;->xp:I

    mul-int/lit8 v0, v0, 0x3

    iput v0, p0, Lfr/testudo/spacecorsair/business/ennemis/AlienRat;->xp:I

    .line 360
    iget v0, p0, Lfr/testudo/spacecorsair/business/ennemis/AlienRat;->life:F

    mul-float/2addr v0, v1

    iput v0, p0, Lfr/testudo/spacecorsair/business/ennemis/AlienRat;->life:F

    .line 361
    iget v0, p0, Lfr/testudo/spacecorsair/business/ennemis/AlienRat;->maxLife:F

    mul-float/2addr v0, v1

    iput v0, p0, Lfr/testudo/spacecorsair/business/ennemis/AlienRat;->maxLife:F

    .line 362
    iget v0, p0, Lfr/testudo/spacecorsair/business/ennemis/AlienRat;->bulletDamage:F

    mul-float/2addr v0, v1

    iput v0, p0, Lfr/testudo/spacecorsair/business/ennemis/AlienRat;->bulletDamage:F

    .line 363
    iget-wide v0, p0, Lfr/testudo/spacecorsair/business/ennemis/AlienRat;->milleSecBetweenShots:J

    long-to-float v0, v0

    const v1, 0x3f19999a    # 0.6f

    mul-float/2addr v0, v1

    float-to-long v0, v0

    iput-wide v0, p0, Lfr/testudo/spacecorsair/business/ennemis/AlienRat;->milleSecBetweenShots:J

    .line 364
    iget v0, p0, Lfr/testudo/spacecorsair/business/ennemis/AlienRat;->radarPointSize:F

    const/high16 v1, 0x40000000    # 2.0f

    add-float/2addr v0, v1

    iput v0, p0, Lfr/testudo/spacecorsair/business/ennemis/AlienRat;->radarPointSize:F

    .line 366
    return-object p0
.end method

.method public shootCounterMesure(Lfr/testudo/spacecorsair/business/projectiles/Missile;)V
    .registers 9

    .prologue
    const/high16 v6, 0x3f800000    # 1.0f

    .line 205
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/ennemis/AlienRat;->tempVector:Lfr/testudo/spacecorsair/engine/Vector2;

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/ennemis/AlienRat;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/engine/Vector2;->setSameAs(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 208
    iget v1, p0, Lfr/testudo/spacecorsair/business/ennemis/AlienRat;->spin:F

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v2

    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    cmpl-double v0, v2, v4

    if-lez v0, :cond_74

    const/4 v0, 0x1

    :goto_16
    mul-int/lit8 v0, v0, 0xf

    int-to-float v0, v0

    sub-float v0, v1, v0

    const/high16 v1, 0x43340000    # 180.0f

    add-float/2addr v0, v1

    float-to-double v0, v0

    .line 210
    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v0

    .line 212
    invoke-static {}, Lfr/testudo/spacecorsair/business/factory/GamePools;->newVortexProjectile()Lfr/testudo/spacecorsair/business/projectiles/VortexProjectile;

    move-result-object v2

    iget v3, p0, Lfr/testudo/spacecorsair/business/ennemis/AlienRat;->bulletDamage:F

    const/high16 v4, 0x40a00000    # 5.0f

    mul-float/2addr v3, v4

    iget v4, p0, Lfr/testudo/spacecorsair/business/ennemis/AlienRat;->bulletLifeTime:I

    iget-object v5, p0, Lfr/testudo/spacecorsair/business/ennemis/AlienRat;->specialLaserAlteration:Lfr/testudo/spacecorsair/business/loot/stuff/alteration/AlterationSpecs;

    invoke-virtual {v2, v3, v4, p0, v5}, Lfr/testudo/spacecorsair/business/projectiles/VortexProjectile;->init(FILfr/testudo/spacecorsair/business/Element;Lfr/testudo/spacecorsair/business/loot/stuff/alteration/AlterationSpecs;)Lfr/testudo/spacecorsair/business/projectiles/VortexProjectile;

    move-result-object v2

    .line 214
    iput v6, v2, Lfr/testudo/spacecorsair/business/projectiles/VortexProjectile;->r:F

    .line 215
    iput v6, v2, Lfr/testudo/spacecorsair/business/projectiles/VortexProjectile;->g:F

    .line 216
    iput v6, v2, Lfr/testudo/spacecorsair/business/projectiles/VortexProjectile;->b:F

    .line 218
    iget-object v3, v2, Lfr/testudo/spacecorsair/business/projectiles/VortexProjectile;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget-object v4, p0, Lfr/testudo/spacecorsair/business/ennemis/AlienRat;->tempVector:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v3, v4}, Lfr/testudo/spacecorsair/engine/Vector2;->setSameAs(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 219
    iget-object v3, v2, Lfr/testudo/spacecorsair/business/projectiles/VortexProjectile;->speed:Lfr/testudo/spacecorsair/engine/Vector2;

    const/4 v4, 0x0

    const/high16 v5, -0x3f400000    # -6.0f

    invoke-virtual {v3, v4, v5}, Lfr/testudo/spacecorsair/engine/Vector2;->set(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 220
    const-wide/16 v4, 0x1f40

    iput-wide v4, v2, Lfr/testudo/spacecorsair/business/projectiles/VortexProjectile;->lifeTimeInMilli:J

    .line 221
    iget-object v3, v2, Lfr/testudo/spacecorsair/business/projectiles/VortexProjectile;->speed:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v3, v0, v1}, Lfr/testudo/spacecorsair/engine/Vector2;->applyRotatation(D)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 222
    iget-object v0, v2, Lfr/testudo/spacecorsair/business/projectiles/VortexProjectile;->speed:Lfr/testudo/spacecorsair/engine/Vector2;

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/ennemis/AlienRat;->speed:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/engine/Vector2;->add(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 224
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/Game;->currentLevel:Lfr/testudo/spacecorsair/game/levels/Level;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/levels/Level;->toAdd:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 228
    invoke-static {p0, p1}, Lfr/testudo/spacecorsair/business/Util;->isLaserOrMissileSoundEarable(Lfr/testudo/spacecorsair/business/Element;Lfr/testudo/spacecorsair/business/Element;)Z

    move-result v0

    if-eqz v0, :cond_71

    .line 229
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->soundManager:Lfr/testudo/spacecorsair/engine/SoundManager;

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/engine/SoundManager;->playAlienRatLaser()V

    .line 232
    :cond_71
    iput-object v2, p1, Lfr/testudo/spacecorsair/business/projectiles/Missile;->target:Lfr/testudo/spacecorsair/business/Element;

    .line 235
    return-void

    .line 208
    :cond_74
    const/4 v0, -0x1

    goto :goto_16
.end method

.method public shootTarget(Lfr/testudo/spacecorsair/business/Element;)V
    .registers 10

    .prologue
    const/high16 v4, 0x447a0000    # 1000.0f

    const/high16 v3, 0x41200000    # 10.0f

    .line 293
    iget-boolean v0, p0, Lfr/testudo/spacecorsair/business/ennemis/AlienRat;->appearing:Z

    if-eqz v0, :cond_9

    .line 329
    :cond_8
    :goto_8
    return-void

    .line 305
    :cond_9
    const/4 v0, 0x1

    iput-boolean v0, p0, Lfr/testudo/spacecorsair/business/ennemis/AlienRat;->hasShootAttackMode:Z

    .line 306
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/ennemis/AlienRat;->tempVector:Lfr/testudo/spacecorsair/engine/Vector2;

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/ennemis/AlienRat;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/engine/Vector2;->setSameAs(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 308
    sget-object v0, Lfr/testudo/spacecorsair/business/ennemis/AlienRat;->calcVect:Lfr/testudo/spacecorsair/engine/Vector2;

    iget-object v1, p1, Lfr/testudo/spacecorsair/business/Element;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/engine/Vector2;->setSameAs(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 309
    sget-object v0, Lfr/testudo/spacecorsair/business/ennemis/AlienRat;->calcVect:Lfr/testudo/spacecorsair/engine/Vector2;

    iget-object v1, p1, Lfr/testudo/spacecorsair/business/Element;->speed:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v1, v1, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    mul-float/2addr v1, v4

    div-float/2addr v1, v3

    iget-object v2, p1, Lfr/testudo/spacecorsair/business/Element;->speed:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v2, v2, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    mul-float/2addr v2, v4

    div-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Lfr/testudo/spacecorsair/engine/Vector2;->add(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 311
    sget-object v0, Lfr/testudo/spacecorsair/business/ennemis/AlienRat;->calcVect:Lfr/testudo/spacecorsair/engine/Vector2;

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/ennemis/AlienRat;->tempVector:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/engine/Vector2;->getAngularWithInRad(Lfr/testudo/spacecorsair/engine/Vector2;)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v0

    iget v2, p0, Lfr/testudo/spacecorsair/business/ennemis/AlienRat;->shootPrecision:F

    float-to-double v2, v2

    sub-double/2addr v0, v2

    iget v2, p0, Lfr/testudo/spacecorsair/business/ennemis/AlienRat;->shootPrecision:F

    const/high16 v3, 0x40000000    # 2.0f

    mul-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v4

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    const-wide v2, 0x4056800000000000L    # 90.0

    sub-double/2addr v0, v2

    .line 313
    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v2

    .line 315
    invoke-static {}, Lfr/testudo/spacecorsair/business/factory/GamePools;->newAlienLaser()Lfr/testudo/spacecorsair/business/projectiles/AlienLaser;

    move-result-object v4

    iget v5, p0, Lfr/testudo/spacecorsair/business/ennemis/AlienRat;->bulletDamage:F

    iget v6, p0, Lfr/testudo/spacecorsair/business/ennemis/AlienRat;->bulletLifeTime:I

    iget-object v7, p0, Lfr/testudo/spacecorsair/business/ennemis/AlienRat;->specialLaserAlteration:Lfr/testudo/spacecorsair/business/loot/stuff/alteration/AlterationSpecs;

    invoke-virtual {v4, v5, v6, p0, v7}, Lfr/testudo/spacecorsair/business/projectiles/AlienLaser;->init(FILfr/testudo/spacecorsair/business/Element;Lfr/testudo/spacecorsair/business/loot/stuff/alteration/AlterationSpecs;)Lfr/testudo/spacecorsair/business/projectiles/AlienLaser;

    move-result-object v4

    .line 318
    iget-object v5, v4, Lfr/testudo/spacecorsair/business/projectiles/Projectile;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget-object v6, p0, Lfr/testudo/spacecorsair/business/ennemis/AlienRat;->tempVector:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v5, v6}, Lfr/testudo/spacecorsair/engine/Vector2;->setSameAs(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 319
    iget-object v5, v4, Lfr/testudo/spacecorsair/business/projectiles/Projectile;->speed:Lfr/testudo/spacecorsair/engine/Vector2;

    const/4 v6, 0x0

    const/high16 v7, -0x3ef00000    # -9.0f

    invoke-virtual {v5, v6, v7}, Lfr/testudo/spacecorsair/engine/Vector2;->set(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 320
    iget-object v5, v4, Lfr/testudo/spacecorsair/business/projectiles/Projectile;->speed:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v5, v2, v3}, Lfr/testudo/spacecorsair/engine/Vector2;->applyRotatation(D)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 322
    double-to-int v0, v0

    int-to-float v0, v0

    iput v0, v4, Lfr/testudo/spacecorsair/business/projectiles/Projectile;->spin:F

    .line 323
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/Game;->currentLevel:Lfr/testudo/spacecorsair/game/levels/Level;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/levels/Level;->toAdd:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 324
    iget-wide v0, p0, Lfr/testudo/spacecorsair/business/ennemis/AlienRat;->milleSecBetweenShots:J

    long-to-float v0, v0

    iget v1, p0, Lfr/testudo/spacecorsair/business/ennemis/AlienRat;->alterationReloadValue:F

    mul-float/2addr v0, v1

    float-to-long v0, v0

    iput-wide v0, p0, Lfr/testudo/spacecorsair/business/ennemis/AlienRat;->nextShootAlowed:J

    .line 326
    invoke-static {p0, p1}, Lfr/testudo/spacecorsair/business/Util;->isLaserOrMissileSoundEarable(Lfr/testudo/spacecorsair/business/Element;Lfr/testudo/spacecorsair/business/Element;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 327
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->soundManager:Lfr/testudo/spacecorsair/engine/SoundManager;

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/engine/SoundManager;->playAlienRatLaser()V

    goto/16 :goto_8
.end method

.method public updateRelativePosTarget(Lfr/testudo/spacecorsair/business/Element;)V
    .registers 10

    .prologue
    .line 148
    const/4 v0, 0x0

    .line 149
    iget-boolean v1, p1, Lfr/testudo/spacecorsair/business/Element;->isPlayer:Z

    if-eqz v1, :cond_12

    .line 150
    iget v0, p0, Lfr/testudo/spacecorsair/business/ennemis/AlienRat;->targetFollowDistanceRandom:I

    sget-object v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v1, v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->playerShip:Lfr/testudo/spacecorsair/business/player/PlayerShip;

    iget-object v1, v1, Lfr/testudo/spacecorsair/business/player/PlayerShip;->shipSpec:Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;

    iget v1, v1, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;->lootDistance:I

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    .line 152
    :cond_12
    add-int/lit16 v1, v0, 0x96

    .line 155
    iget-object v0, p1, Lfr/testudo/spacecorsair/business/Element;->speed:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/engine/Vector2;->length()F

    move-result v0

    const v2, 0x3e99999a    # 0.3f

    cmpg-float v0, v0, v2

    if-gez v0, :cond_59

    .line 156
    iget v0, p1, Lfr/testudo/spacecorsair/business/Element;->spin:F

    .line 162
    :goto_23
    const/high16 v2, 0x43340000    # 180.0f

    add-float/2addr v0, v2

    iget v2, p0, Lfr/testudo/spacecorsair/business/ennemis/AlienRat;->targetFollowAngle:I

    int-to-float v2, v2

    add-float/2addr v0, v2

    invoke-static {v0}, Lfr/testudo/spacecorsair/business/Element;->normalizeSpin(F)F

    move-result v0

    .line 163
    float-to-double v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v2

    .line 165
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/ennemis/AlienRat;->relativePosTarget:Lfr/testudo/spacecorsair/engine/Vector2;

    iget-object v4, p1, Lfr/testudo/spacecorsair/business/Element;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v0, v4}, Lfr/testudo/spacecorsair/engine/Vector2;->setSameAs(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 166
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/ennemis/AlienRat;->tempVector:Lfr/testudo/spacecorsair/engine/Vector2;

    int-to-double v4, v1

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v6

    mul-double/2addr v4, v6

    double-to-float v4, v4

    int-to-double v6, v1

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    mul-double/2addr v2, v6

    double-to-float v1, v2

    invoke-virtual {v0, v4, v1}, Lfr/testudo/spacecorsair/engine/Vector2;->set(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 167
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/ennemis/AlienRat;->relativePosTarget:Lfr/testudo/spacecorsair/engine/Vector2;

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/ennemis/AlienRat;->tempVector:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/engine/Vector2;->add(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 168
    const/16 v0, 0xc8

    iput v0, p0, Lfr/testudo/spacecorsair/business/ennemis/AlienRat;->nextTimeRecalcPos:I

    .line 169
    return-void

    .line 158
    :cond_59
    iget-object v0, p1, Lfr/testudo/spacecorsair/business/Element;->speed:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/engine/Vector2;->getAngularInRad()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v2

    double-to-float v0, v2

    goto :goto_23
.end method
