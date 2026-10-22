.class public Lfr/testudo/spacecorsair/business/ennemis/AlienTourelle;
.super Lfr/testudo/spacecorsair/business/ennemis/AlienEnemy;
.source "SourceFile"


# static fields
.field public static drawable:Lfr/testudo/spacecorsair/display/Drawable;

.field public static drawableDim:Lfr/testudo/spacecorsair/engine/Vector2;

.field public static drawableDimBase:Lfr/testudo/spacecorsair/engine/Vector2;

.field public static drawableFix:Lfr/testudo/spacecorsair/display/Drawable;

.field public static physicalDim:Lfr/testudo/spacecorsair/engine/Vector2;


# instance fields
.field nextShootAlowedRootProjectile:I

.field timeReloadRootProjectile:I


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const v3, 0x44098000    # 550.0f

    const/high16 v2, 0x435c0000    # 220.0f

    const/high16 v1, 0x43340000    # 180.0f

    .line 26
    new-instance v0, Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-direct {v0, v1, v1}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>(FF)V

    sput-object v0, Lfr/testudo/spacecorsair/business/ennemis/AlienTourelle;->physicalDim:Lfr/testudo/spacecorsair/engine/Vector2;

    .line 27
    new-instance v0, Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-direct {v0, v3, v3}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>(FF)V

    sput-object v0, Lfr/testudo/spacecorsair/business/ennemis/AlienTourelle;->drawableDim:Lfr/testudo/spacecorsair/engine/Vector2;

    .line 28
    new-instance v0, Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-direct {v0, v2, v2}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>(FF)V

    sput-object v0, Lfr/testudo/spacecorsair/business/ennemis/AlienTourelle;->drawableDimBase:Lfr/testudo/spacecorsair/engine/Vector2;

    return-void
.end method

.method public constructor <init>()V
    .registers 6

    .prologue
    const/4 v0, 0x0

    const/high16 v4, 0x3f400000    # 0.75f

    .line 57
    invoke-direct {p0}, Lfr/testudo/spacecorsair/business/ennemis/AlienEnemy;-><init>()V

    .line 37
    iput v0, p0, Lfr/testudo/spacecorsair/business/ennemis/AlienTourelle;->nextShootAlowedRootProjectile:I

    .line 38
    iput v0, p0, Lfr/testudo/spacecorsair/business/ennemis/AlienTourelle;->timeReloadRootProjectile:I

    .line 59
    new-instance v0, Lfr/testudo/spacecorsair/engine/Vector2;

    const/4 v1, 0x0

    sget-object v2, Lfr/testudo/spacecorsair/business/ennemis/AlienTourelle;->drawableDim:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v2, v2, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    neg-float v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    const/high16 v3, 0x42480000    # 50.0f

    sub-float/2addr v2, v3

    invoke-direct {v0, v1, v2}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>(FF)V

    sget-object v1, Lfr/testudo/spacecorsair/business/ennemis/AlienTourelle;->drawableDim:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v1, v1, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    float-to-int v1, v1

    add-int/lit16 v1, v1, -0xc8

    const/16 v2, 0x8

    invoke-static {v0, v1, v2}, Lfr/testudo/spacecorsair/display/hud/InfoBarEnnemis;->newRed(Lfr/testudo/spacecorsair/engine/Vector2;II)Lfr/testudo/spacecorsair/display/hud/InfoBarEnnemis;

    move-result-object v0

    iput-object v0, p0, Lfr/testudo/spacecorsair/business/ennemis/AlienTourelle;->lifeBar:Lfr/testudo/spacecorsair/display/hud/InfoBarEnnemis;

    .line 60
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/ennemis/AlienTourelle;->lifeBar:Lfr/testudo/spacecorsair/display/hud/InfoBarEnnemis;

    iput v4, v0, Lfr/testudo/spacecorsair/display/hud/InfoBarEnnemis;->extR:F

    .line 61
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/ennemis/AlienTourelle;->lifeBar:Lfr/testudo/spacecorsair/display/hud/InfoBarEnnemis;

    iput v4, v0, Lfr/testudo/spacecorsair/display/hud/InfoBarEnnemis;->extG:F

    .line 62
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/ennemis/AlienTourelle;->lifeBar:Lfr/testudo/spacecorsair/display/hud/InfoBarEnnemis;

    iput v4, v0, Lfr/testudo/spacecorsair/display/hud/InfoBarEnnemis;->extB:F

    .line 63
    return-void
.end method

.method public static setTexture(Lfr/testudo/spacecorsair/display/Texture;Lfr/testudo/spacecorsair/display/Texture;)V
    .registers 4

    .prologue
    .line 32
    new-instance v0, Lfr/testudo/spacecorsair/display/Drawable;

    sget-object v1, Lfr/testudo/spacecorsair/business/ennemis/AlienTourelle;->drawableDim:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-direct {v0, v1, p0}, Lfr/testudo/spacecorsair/display/Drawable;-><init>(Lfr/testudo/spacecorsair/engine/Vector2;Lfr/testudo/spacecorsair/display/Texture;)V

    sput-object v0, Lfr/testudo/spacecorsair/business/ennemis/AlienTourelle;->drawable:Lfr/testudo/spacecorsair/display/Drawable;

    .line 33
    new-instance v0, Lfr/testudo/spacecorsair/display/Drawable;

    sget-object v1, Lfr/testudo/spacecorsair/business/ennemis/AlienTourelle;->drawableDimBase:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-direct {v0, v1, p1}, Lfr/testudo/spacecorsair/display/Drawable;-><init>(Lfr/testudo/spacecorsair/engine/Vector2;Lfr/testudo/spacecorsair/display/Texture;)V

    sput-object v0, Lfr/testudo/spacecorsair/business/ennemis/AlienTourelle;->drawableFix:Lfr/testudo/spacecorsair/display/Drawable;

    .line 35
    return-void
.end method

.method private shootEnergyBullet(Lfr/testudo/spacecorsair/engine/Vector2;)V
    .registers 10

    .prologue
    .line 173
    iget v0, p0, Lfr/testudo/spacecorsair/business/ennemis/AlienTourelle;->spin:F

    iget v1, p0, Lfr/testudo/spacecorsair/business/ennemis/AlienTourelle;->shootPrecision:F

    sub-float/2addr v0, v1

    float-to-double v0, v0

    iget v2, p0, Lfr/testudo/spacecorsair/business/ennemis/AlienTourelle;->shootPrecision:F

    const/high16 v3, 0x40000000    # 2.0f

    mul-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v4

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    .line 175
    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v2

    .line 176
    invoke-static {}, Lfr/testudo/spacecorsair/business/factory/GamePools;->newAlienLaser()Lfr/testudo/spacecorsair/business/projectiles/AlienLaser;

    move-result-object v4

    iget v5, p0, Lfr/testudo/spacecorsair/business/ennemis/AlienTourelle;->bulletDamage:F

    iget v6, p0, Lfr/testudo/spacecorsair/business/ennemis/AlienTourelle;->bulletLifeTime:I

    iget-object v7, p0, Lfr/testudo/spacecorsair/business/ennemis/AlienTourelle;->specialLaserAlteration:Lfr/testudo/spacecorsair/business/loot/stuff/alteration/AlterationSpecs;

    invoke-virtual {v4, v5, v6, p0, v7}, Lfr/testudo/spacecorsair/business/projectiles/AlienLaser;->init(FILfr/testudo/spacecorsair/business/Element;Lfr/testudo/spacecorsair/business/loot/stuff/alteration/AlterationSpecs;)Lfr/testudo/spacecorsair/business/projectiles/AlienLaser;

    move-result-object v4

    .line 177
    invoke-virtual {p1, v2, v3}, Lfr/testudo/spacecorsair/engine/Vector2;->applyRotatation(D)Lfr/testudo/spacecorsair/engine/Vector2;

    move-result-object v5

    .line 178
    iget-object v6, v4, Lfr/testudo/spacecorsair/business/projectiles/AlienLaser;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget-object v7, p0, Lfr/testudo/spacecorsair/business/ennemis/AlienTourelle;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v6, v7}, Lfr/testudo/spacecorsair/engine/Vector2;->setSameAs(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    move-result-object v6

    invoke-virtual {v6, v5}, Lfr/testudo/spacecorsair/engine/Vector2;->add(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 179
    new-instance v5, Lfr/testudo/spacecorsair/engine/Vector2;

    const/4 v6, 0x0

    iget v7, p0, Lfr/testudo/spacecorsair/business/ennemis/AlienTourelle;->bulletSpeed:F

    neg-float v7, v7

    invoke-direct {v5, v6, v7}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>(FF)V

    iput-object v5, v4, Lfr/testudo/spacecorsair/business/projectiles/AlienLaser;->speed:Lfr/testudo/spacecorsair/engine/Vector2;

    .line 180
    iget-object v5, v4, Lfr/testudo/spacecorsair/business/projectiles/AlienLaser;->speed:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v5, v2, v3}, Lfr/testudo/spacecorsair/engine/Vector2;->applyRotatation(D)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 181
    iget-object v2, v4, Lfr/testudo/spacecorsair/business/projectiles/AlienLaser;->speed:Lfr/testudo/spacecorsair/engine/Vector2;

    iget-object v3, p0, Lfr/testudo/spacecorsair/business/ennemis/AlienTourelle;->speed:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v2, v3}, Lfr/testudo/spacecorsair/engine/Vector2;->add(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 182
    double-to-float v0, v0

    iput v0, v4, Lfr/testudo/spacecorsair/business/projectiles/AlienLaser;->spin:F

    .line 183
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/Game;->currentLevel:Lfr/testudo/spacecorsair/game/levels/Level;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/levels/Level;->toAdd:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 185
    return-void
.end method


# virtual methods
.method public final applyAsteroidCollision(F)V
    .registers 2

    .prologue
    .line 262
    return-void
.end method

.method public applyDamage(FLfr/testudo/spacecorsair/business/Element;Lfr/testudo/spacecorsair/business/projectiles/Projectile;)V
    .registers 6

    .prologue
    .line 235
    invoke-super {p0, p1, p2, p3}, Lfr/testudo/spacecorsair/business/ennemis/AlienEnemy;->applyDamage(FLfr/testudo/spacecorsair/business/Element;Lfr/testudo/spacecorsair/business/projectiles/Projectile;)V

    .line 236
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/ennemis/AlienTourelle;->lifeBar:Lfr/testudo/spacecorsair/display/hud/InfoBarEnnemis;

    iget v1, p0, Lfr/testudo/spacecorsair/business/ennemis/AlienTourelle;->lifeInPourc:F

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/display/hud/InfoBarEnnemis;->setValue(F)V

    .line 237
    return-void
.end method

.method protected doAttackIa(JJ)V
    .registers 9

    .prologue
    .line 107
    iget v0, p0, Lfr/testudo/spacecorsair/business/ennemis/AlienTourelle;->distanceToTarget:F

    const/high16 v1, 0x41200000    # 10.0f

    mul-float/2addr v0, v1

    iget v1, p0, Lfr/testudo/spacecorsair/business/ennemis/AlienTourelle;->bulletSpeed:F

    div-float/2addr v0, v1

    float-to-long v0, v0

    .line 108
    iget-object v2, p0, Lfr/testudo/spacecorsair/business/ennemis/AlienTourelle;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget-object v3, p0, Lfr/testudo/spacecorsair/business/ennemis/AlienTourelle;->attackTarget:Lfr/testudo/spacecorsair/business/Element;

    invoke-virtual {v3, v0, v1}, Lfr/testudo/spacecorsair/business/Element;->estimatedPosition(J)Lfr/testudo/spacecorsair/engine/Vector2;

    move-result-object v0

    invoke-virtual {v2, v0}, Lfr/testudo/spacecorsair/engine/Vector2;->getAngularWithInRad(Lfr/testudo/spacecorsair/engine/Vector2;)D

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

    .line 110
    iget v1, p0, Lfr/testudo/spacecorsair/business/ennemis/AlienTourelle;->spin:F

    sub-float v1, v0, v1

    float-to-int v1, v1

    .line 111
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    .line 113
    int-to-float v2, v1

    const/high16 v3, 0x40a00000    # 5.0f

    cmpg-float v2, v2, v3

    if-gez v2, :cond_3f

    iget v2, p0, Lfr/testudo/spacecorsair/business/ennemis/AlienTourelle;->distanceToPlayer:F

    iget v3, p0, Lfr/testudo/spacecorsair/business/ennemis/AlienTourelle;->distanceShoot:F

    cmpg-float v2, v2, v3

    if-gez v2, :cond_3f

    .line 115
    invoke-virtual {p0}, Lfr/testudo/spacecorsair/business/ennemis/AlienTourelle;->shoot()V

    .line 118
    :cond_3f
    int-to-float v2, v1

    const/high16 v3, 0x3f000000    # 0.5f

    cmpg-float v2, v2, v3

    if-gez v2, :cond_4a

    .line 119
    const/4 v0, 0x0

    iput v0, p0, Lfr/testudo/spacecorsair/business/ennemis/AlienTourelle;->spinSpeed:F

    .line 142
    :goto_49
    return-void

    .line 122
    :cond_4a
    const/16 v2, 0xb4

    if-gt v1, v2, :cond_5f

    .line 124
    iget v1, p0, Lfr/testudo/spacecorsair/business/ennemis/AlienTourelle;->spin:F

    cmpl-float v0, v1, v0

    if-lez v0, :cond_5a

    .line 125
    iget v0, p0, Lfr/testudo/spacecorsair/business/ennemis/AlienTourelle;->maxTurnFactor:F

    neg-float v0, v0

    iput v0, p0, Lfr/testudo/spacecorsair/business/ennemis/AlienTourelle;->spinSpeed:F

    goto :goto_49

    .line 128
    :cond_5a
    iget v0, p0, Lfr/testudo/spacecorsair/business/ennemis/AlienTourelle;->maxTurnFactor:F

    iput v0, p0, Lfr/testudo/spacecorsair/business/ennemis/AlienTourelle;->spinSpeed:F

    goto :goto_49

    .line 133
    :cond_5f
    iget v1, p0, Lfr/testudo/spacecorsair/business/ennemis/AlienTourelle;->spin:F

    cmpg-float v0, v1, v0

    if-gez v0, :cond_6b

    .line 134
    iget v0, p0, Lfr/testudo/spacecorsair/business/ennemis/AlienTourelle;->maxTurnFactor:F

    neg-float v0, v0

    iput v0, p0, Lfr/testudo/spacecorsair/business/ennemis/AlienTourelle;->spinSpeed:F

    goto :goto_49

    .line 137
    :cond_6b
    iget v0, p0, Lfr/testudo/spacecorsair/business/ennemis/AlienTourelle;->maxTurnFactor:F

    iput v0, p0, Lfr/testudo/spacecorsair/business/ennemis/AlienTourelle;->spinSpeed:F

    goto :goto_49
.end method

.method public doPhysic(J)V
    .registers 8

    .prologue
    .line 157
    iget-wide v0, p0, Lfr/testudo/spacecorsair/business/ennemis/AlienTourelle;->nextShootAlowed:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_d

    .line 158
    iget-wide v0, p0, Lfr/testudo/spacecorsair/business/ennemis/AlienTourelle;->nextShootAlowed:J

    sub-long/2addr v0, p1

    iput-wide v0, p0, Lfr/testudo/spacecorsair/business/ennemis/AlienTourelle;->nextShootAlowed:J

    .line 161
    :cond_d
    iget v0, p0, Lfr/testudo/spacecorsair/business/ennemis/AlienTourelle;->nextShootAlowedRootProjectile:I

    if-lez v0, :cond_18

    .line 162
    iget v0, p0, Lfr/testudo/spacecorsair/business/ennemis/AlienTourelle;->nextShootAlowedRootProjectile:I

    int-to-long v0, v0

    sub-long/2addr v0, p1

    long-to-int v0, v0

    iput v0, p0, Lfr/testudo/spacecorsair/business/ennemis/AlienTourelle;->nextShootAlowedRootProjectile:I

    .line 165
    :cond_18
    invoke-super {p0, p1, p2}, Lfr/testudo/spacecorsair/business/ennemis/AlienEnemy;->doPhysic(J)V

    .line 167
    return-void
.end method

.method public getDrawableObject()Lfr/testudo/spacecorsair/display/Drawable;
    .registers 2

    .prologue
    .line 42
    sget-object v0, Lfr/testudo/spacecorsair/business/ennemis/AlienTourelle;->drawable:Lfr/testudo/spacecorsair/display/Drawable;

    return-object v0
.end method

.method public getMiniDrawableObject()Lfr/testudo/spacecorsair/display/Drawable;
    .registers 2

    .prologue
    .line 53
    const/4 v0, 0x0

    return-object v0
.end method

.method public getPhysicDimension()Lfr/testudo/spacecorsair/engine/Vector2;
    .registers 2

    .prologue
    .line 47
    sget-object v0, Lfr/testudo/spacecorsair/business/ennemis/AlienTourelle;->physicalDim:Lfr/testudo/spacecorsair/engine/Vector2;

    return-object v0
.end method

.method public initLevelConfig(Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;I)Lfr/testudo/spacecorsair/business/ennemis/AlienTourelle;
    .registers 9

    .prologue
    const v4, 0x459c4000    # 5000.0f

    const v3, 0x3f31b1b2

    const/4 v2, 0x0

    .line 67
    invoke-super {p0, p2}, Lfr/testudo/spacecorsair/business/ennemis/AlienEnemy;->init(I)Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    .line 68
    iget v0, p1, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->life:I

    int-to-float v0, v0

    iput v0, p0, Lfr/testudo/spacecorsair/business/ennemis/AlienTourelle;->life:F

    .line 69
    iget v0, p0, Lfr/testudo/spacecorsair/business/ennemis/AlienTourelle;->life:F

    iput v0, p0, Lfr/testudo/spacecorsair/business/ennemis/AlienTourelle;->maxLife:F

    .line 70
    iget v0, p1, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->maxTurnFactor:F

    iput v0, p0, Lfr/testudo/spacecorsair/business/ennemis/AlienTourelle;->maxTurnFactor:F

    .line 71
    iget v0, p1, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->shootReload:I

    int-to-long v0, v0

    iput-wide v0, p0, Lfr/testudo/spacecorsair/business/ennemis/AlienTourelle;->milleSecBetweenShots:J

    .line 72
    iget v0, p1, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->shootDamage:I

    int-to-float v0, v0

    iput v0, p0, Lfr/testudo/spacecorsair/business/ennemis/AlienTourelle;->bulletDamage:F

    .line 73
    iget v0, p1, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->xp:I

    iput v0, p0, Lfr/testudo/spacecorsair/business/ennemis/AlienTourelle;->xp:I

    .line 74
    iget-object v0, p1, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->lootConfig:Lfr/testudo/spacecorsair/business/loot/LootConfig;

    iput-object v0, p0, Lfr/testudo/spacecorsair/business/ennemis/AlienTourelle;->lootConfig:Lfr/testudo/spacecorsair/business/loot/LootConfig;

    .line 77
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/ennemis/AlienTourelle;->lifeBar:Lfr/testudo/spacecorsair/display/hud/InfoBarEnnemis;

    const/high16 v1, 0x42c80000    # 100.0f

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/display/hud/InfoBarEnnemis;->setValue(F)V

    .line 78
    const v0, 0x461c4000    # 10000.0f

    iput v0, p0, Lfr/testudo/spacecorsair/business/ennemis/AlienTourelle;->mass:F

    .line 79
    iput v2, p0, Lfr/testudo/spacecorsair/business/ennemis/AlienTourelle;->pouseeForce:F

    .line 80
    const/16 v0, 0x7d0

    invoke-virtual {p0, v0}, Lfr/testudo/spacecorsair/business/ennemis/AlienTourelle;->setMitigedDistance(I)V

    .line 81
    const v0, 0x451c4000    # 2500.0f

    iput v0, p0, Lfr/testudo/spacecorsair/business/ennemis/AlienTourelle;->desengagementDistance:F

    .line 82
    iput v2, p0, Lfr/testudo/spacecorsair/business/ennemis/AlienTourelle;->shootPrecision:F

    .line 83
    iput v4, p0, Lfr/testudo/spacecorsair/business/ennemis/AlienTourelle;->distanceShoot:F

    .line 84
    const/4 v0, 0x5

    iput v0, p0, Lfr/testudo/spacecorsair/business/ennemis/AlienTourelle;->bulletLifeTime:I

    .line 85
    const/high16 v0, 0x41380000    # 11.5f

    iput v0, p0, Lfr/testudo/spacecorsair/business/ennemis/AlienTourelle;->bulletSpeed:F

    .line 86
    const/4 v0, 0x1

    iput-boolean v0, p0, Lfr/testudo/spacecorsair/business/ennemis/AlienTourelle;->drawOnRadar:Z

    .line 87
    const/high16 v0, 0x40400000    # 3.0f

    iput v0, p0, Lfr/testudo/spacecorsair/business/ennemis/AlienTourelle;->radarPointSize:F

    .line 88
    iput v4, p0, Lfr/testudo/spacecorsair/business/ennemis/AlienTourelle;->distanceToPlayer:F

    .line 90
    iput v3, p0, Lfr/testudo/spacecorsair/business/ennemis/AlienTourelle;->radarColorR:F

    .line 91
    iput v2, p0, Lfr/testudo/spacecorsair/business/ennemis/AlienTourelle;->radarColorG:F

    .line 92
    iput v3, p0, Lfr/testudo/spacecorsair/business/ennemis/AlienTourelle;->radarColorB:F

    .line 94
    iget v0, p0, Lfr/testudo/spacecorsair/business/ennemis/AlienTourelle;->level:I

    const/16 v1, 0x14

    if-le v0, v1, :cond_77

    const/16 v0, 0x1770

    :goto_63
    iput v0, p0, Lfr/testudo/spacecorsair/business/ennemis/AlienTourelle;->timeReloadRootProjectile:I

    .line 95
    iget v0, p0, Lfr/testudo/spacecorsair/business/ennemis/AlienTourelle;->timeReloadRootProjectile:I

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v2

    iget v1, p0, Lfr/testudo/spacecorsair/business/ennemis/AlienTourelle;->timeReloadRootProjectile:I

    int-to-double v4, v1

    mul-double/2addr v2, v4

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    div-double/2addr v2, v4

    double-to-int v1, v2

    add-int/2addr v0, v1

    iput v0, p0, Lfr/testudo/spacecorsair/business/ennemis/AlienTourelle;->nextShootAlowedRootProjectile:I

    .line 97
    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModV34;->scale(Lfr/testudo/spacecorsair/business/ennemis/Ennemis;)V

    return-object p0

    .line 94
    :cond_77
    iget v0, p0, Lfr/testudo/spacecorsair/business/ennemis/AlienTourelle;->level:I

    mul-int/lit16 v0, v0, 0xc8

    rsub-int v0, v0, 0x2710

    goto :goto_63
.end method

.method protected onAttackTargetStart()V
    .registers 1

    .prologue
    .line 147
    return-void
.end method

.method protected onAttackTargetStop()V
    .registers 2

    .prologue
    .line 151
    const/4 v0, 0x0

    iput v0, p0, Lfr/testudo/spacecorsair/business/ennemis/AlienTourelle;->spinSpeed:F

    .line 152
    return-void
.end method

.method public onDestroyed(Z)V
    .registers 7

    .prologue
    const/4 v2, 0x2

    .line 243
    invoke-static {}, Lfr/testudo/spacecorsair/business/factory/GamePools;->newRandomExplode()Lfr/testudo/spacecorsair/display/ExplosionAnim;

    move-result-object v0

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/ennemis/AlienTourelle;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v0, v1, p0}, Lfr/testudo/spacecorsair/display/ExplosionAnim;->init(Lfr/testudo/spacecorsair/engine/Vector2;Lfr/testudo/spacecorsair/business/Element;)Lfr/testudo/spacecorsair/display/ExplosionAnim;

    move-result-object v0

    .line 244
    sget-object v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v1, v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v1, v1, Lfr/testudo/spacecorsair/game/Game;->currentLevel:Lfr/testudo/spacecorsair/game/levels/Level;

    iget-object v1, v1, Lfr/testudo/spacecorsair/game/levels/Level;->toAddAnimated:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 246
    invoke-static {p0, v2}, Lfr/testudo/spacecorsair/display/ParticuleFactory;->addWhite(Lfr/testudo/spacecorsair/business/Element;I)V

    .line 247
    const/4 v0, 0x5

    invoke-static {p0, v0}, Lfr/testudo/spacecorsair/display/ParticuleFactory;->addRed(Lfr/testudo/spacecorsair/business/Element;I)V

    .line 248
    invoke-static {p0, v2}, Lfr/testudo/spacecorsair/display/ParticuleFactory;->addYellow(Lfr/testudo/spacecorsair/business/Element;I)V

    .line 250
    invoke-static {}, Lfr/testudo/spacecorsair/business/factory/GamePools;->newShockWave()Lfr/testudo/spacecorsair/display/ShockWave;

    move-result-object v0

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/ennemis/AlienTourelle;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    const/high16 v2, 0x42c80000    # 100.0f

    const v3, 0x44098000    # 550.0f

    const v4, 0x44228000    # 650.0f

    invoke-virtual {v0, v1, v2, v3, v4}, Lfr/testudo/spacecorsair/display/ShockWave;->init(Lfr/testudo/spacecorsair/engine/Vector2;FFF)Lfr/testudo/spacecorsair/display/ShockWave;

    move-result-object v0

    .line 251
    sget-object v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v1, v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v1, v1, Lfr/testudo/spacecorsair/game/Game;->currentLevel:Lfr/testudo/spacecorsair/game/levels/Level;

    iget-object v1, v1, Lfr/testudo/spacecorsair/game/levels/Level;->toAddDrawOnly:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 252
    const v1, 0x3f008081

    iput v1, v0, Lfr/testudo/spacecorsair/display/ShockWave;->r:F

    .line 253
    const v1, 0x3ed4d4d5

    iput v1, v0, Lfr/testudo/spacecorsair/display/ShockWave;->g:F

    .line 254
    const v1, 0x3f0e8e8f

    iput v1, v0, Lfr/testudo/spacecorsair/display/ShockWave;->b:F

    .line 255
    invoke-super {p0, p1}, Lfr/testudo/spacecorsair/business/ennemis/AlienEnemy;->onDestroyed(Z)V

    .line 257
    return-void
.end method

.method public onMissileLockedOnMe(Lfr/testudo/spacecorsair/business/projectiles/Missile;)V
    .registers 6

    .prologue
    .line 317
    invoke-super {p0, p1}, Lfr/testudo/spacecorsair/business/ennemis/AlienEnemy;->onMissileLockedOnMe(Lfr/testudo/spacecorsair/business/projectiles/Missile;)V

    .line 319
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v0

    const-wide v2, 0x3fe3851ec0000000L    # 0.6100000143051147

    cmpg-double v0, v0, v2

    if-gez v0, :cond_13

    .line 320
    invoke-virtual {p0, p1}, Lfr/testudo/spacecorsair/business/ennemis/AlienTourelle;->shootCounterMesure(Lfr/testudo/spacecorsair/business/projectiles/Missile;)V

    .line 322
    :cond_13
    return-void
.end method

.method public registerYourselfToDrawQueue()V
    .registers 10

    .prologue
    .line 270
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->renderQueue:Lfr/testudo/spacecorsair/engine/RenderQueue;

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/ennemis/AlienTourelle;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget-boolean v2, p0, Lfr/testudo/spacecorsair/business/ennemis/AlienTourelle;->cameraRelative:Z

    sget-object v3, Lfr/testudo/spacecorsair/business/ennemis/AlienTourelle;->drawableFix:Lfr/testudo/spacecorsair/display/Drawable;

    const/4 v4, 0x0

    iget v5, p0, Lfr/testudo/spacecorsair/business/ennemis/AlienTourelle;->a:F

    iget v6, p0, Lfr/testudo/spacecorsair/business/ennemis/AlienTourelle;->r:F

    iget v7, p0, Lfr/testudo/spacecorsair/business/ennemis/AlienTourelle;->g:F

    iget v8, p0, Lfr/testudo/spacecorsair/business/ennemis/AlienTourelle;->b:F

    invoke-virtual/range {v0 .. v8}, Lfr/testudo/spacecorsair/engine/RenderQueue;->addToWaitingQueue(Lfr/testudo/spacecorsair/engine/Vector2;ZLfr/testudo/spacecorsair/display/Drawable;FFFFF)V

    .line 274
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->renderQueue:Lfr/testudo/spacecorsair/engine/RenderQueue;

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/ennemis/AlienTourelle;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget-boolean v2, p0, Lfr/testudo/spacecorsair/business/ennemis/AlienTourelle;->cameraRelative:Z

    sget-object v3, Lfr/testudo/spacecorsair/business/ennemis/AlienTourelle;->drawable:Lfr/testudo/spacecorsair/display/Drawable;

    iget v4, p0, Lfr/testudo/spacecorsair/business/ennemis/AlienTourelle;->spin:F

    iget v5, p0, Lfr/testudo/spacecorsair/business/ennemis/AlienTourelle;->a:F

    iget v6, p0, Lfr/testudo/spacecorsair/business/ennemis/AlienTourelle;->r:F

    iget v7, p0, Lfr/testudo/spacecorsair/business/ennemis/AlienTourelle;->g:F

    iget v8, p0, Lfr/testudo/spacecorsair/business/ennemis/AlienTourelle;->b:F

    invoke-virtual/range {v0 .. v8}, Lfr/testudo/spacecorsair/engine/RenderQueue;->addToWaitingQueue(Lfr/testudo/spacecorsair/engine/Vector2;ZLfr/testudo/spacecorsair/display/Drawable;FFFFF)V

    .line 278
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/ennemis/AlienTourelle;->tempVector:Lfr/testudo/spacecorsair/engine/Vector2;

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/ennemis/AlienTourelle;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/engine/Vector2;->setSameAs(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 279
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/ennemis/AlienTourelle;->tempVector:Lfr/testudo/spacecorsair/engine/Vector2;

    sget-object v1, Lfr/testudo/spacecorsair/business/ennemis/AlienTourelle;->drawable:Lfr/testudo/spacecorsair/display/Drawable;

    iget-object v1, v1, Lfr/testudo/spacecorsair/display/Drawable;->dimensions:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v1, v1, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    neg-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    const/high16 v2, 0x42480000    # 50.0f

    add-float/2addr v1, v2

    sget-object v2, Lfr/testudo/spacecorsair/business/ennemis/AlienTourelle;->drawable:Lfr/testudo/spacecorsair/display/Drawable;

    iget-object v2, v2, Lfr/testudo/spacecorsair/display/Drawable;->dimensions:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v2, v2, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    const/high16 v3, 0x41f00000    # 30.0f

    sub-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Lfr/testudo/spacecorsair/engine/Vector2;->add(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 280
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->renderQueue:Lfr/testudo/spacecorsair/engine/RenderQueue;

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/ennemis/AlienTourelle;->tempVector:Lfr/testudo/spacecorsair/engine/Vector2;

    const/4 v2, 0x0

    iget-object v3, p0, Lfr/testudo/spacecorsair/business/ennemis/AlienTourelle;->levelStr:Ljava/lang/String;

    iget v4, p0, Lfr/testudo/spacecorsair/business/ennemis/AlienTourelle;->levelColorR:F

    iget v5, p0, Lfr/testudo/spacecorsair/business/ennemis/AlienTourelle;->levelColorG:F

    iget v6, p0, Lfr/testudo/spacecorsair/business/ennemis/AlienTourelle;->levelColorB:F

    const/high16 v7, 0x3f800000    # 1.0f

    sget-object v8, Lfr/testudo/spacecorsair/textengine/TextSize;->NORMAL:Lfr/testudo/spacecorsair/textengine/TextSize;

    invoke-virtual/range {v0 .. v8}, Lfr/testudo/spacecorsair/engine/RenderQueue;->addTextToTextWaitingQueue(Lfr/testudo/spacecorsair/engine/Vector2;ZLjava/lang/String;FFFFLfr/testudo/spacecorsair/textengine/TextSize;)V

    .line 282
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/ennemis/AlienTourelle;->tempVector:Lfr/testudo/spacecorsair/engine/Vector2;

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/ennemis/AlienTourelle;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/engine/Vector2;->setSameAs(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 283
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/ennemis/AlienTourelle;->tempVector:Lfr/testudo/spacecorsair/engine/Vector2;

    const/4 v1, 0x0

    const/high16 v2, -0x3d780000    # -68.0f

    invoke-virtual {v0, v1, v2}, Lfr/testudo/spacecorsair/engine/Vector2;->add(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 284
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->renderQueue:Lfr/testudo/spacecorsair/engine/RenderQueue;

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/ennemis/AlienTourelle;->tempVector:Lfr/testudo/spacecorsair/engine/Vector2;

    iget-object v2, p0, Lfr/testudo/spacecorsair/business/ennemis/AlienTourelle;->lifeBar:Lfr/testudo/spacecorsair/display/hud/InfoBarEnnemis;

    invoke-virtual {v0, v1, v2}, Lfr/testudo/spacecorsair/engine/RenderQueue;->addToWaitingQueue(Lfr/testudo/spacecorsair/engine/Vector2;Lfr/testudo/spacecorsair/display/hud/InfoBar;)V

    .line 287
    iget-boolean v0, p0, Lfr/testudo/spacecorsair/business/ennemis/AlienTourelle;->elite:Z

    if-eqz v0, :cond_bf

    .line 288
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/ennemis/AlienTourelle;->tempVector:Lfr/testudo/spacecorsair/engine/Vector2;

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/ennemis/AlienTourelle;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/engine/Vector2;->setSameAs(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    move-result-object v0

    sget-object v1, Lfr/testudo/spacecorsair/business/ennemis/AlienTourelle;->drawable:Lfr/testudo/spacecorsair/display/Drawable;

    iget-object v1, v1, Lfr/testudo/spacecorsair/display/Drawable;->dimensions:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v1, v1, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    const/high16 v2, 0x428c0000    # 70.0f

    sub-float/2addr v1, v2

    sget-object v2, Lfr/testudo/spacecorsair/business/ennemis/AlienTourelle;->drawable:Lfr/testudo/spacecorsair/display/Drawable;

    iget-object v2, v2, Lfr/testudo/spacecorsair/display/Drawable;->dimensions:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v2, v2, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    const/high16 v3, 0x41880000    # 17.0f

    sub-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Lfr/testudo/spacecorsair/engine/Vector2;->add(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 289
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->renderQueue:Lfr/testudo/spacecorsair/engine/RenderQueue;

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/ennemis/AlienTourelle;->tempVector:Lfr/testudo/spacecorsair/engine/Vector2;

    const/4 v2, 0x0

    sget-object v3, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->ELITE_MARK_SIZE_BIG:Lfr/testudo/spacecorsair/display/Drawable;

    const/high16 v4, 0x43340000    # 180.0f

    const/high16 v5, 0x3f800000    # 1.0f

    const/high16 v6, 0x3f800000    # 1.0f

    const/high16 v7, 0x3f800000    # 1.0f

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-virtual/range {v0 .. v8}, Lfr/testudo/spacecorsair/engine/RenderQueue;->addToWaitingQueue(Lfr/testudo/spacecorsair/engine/Vector2;ZLfr/testudo/spacecorsair/display/Drawable;FFFFF)V

    .line 295
    :cond_bf
    return-void
.end method

.method public setElite()Lfr/testudo/spacecorsair/business/ennemis/Ennemis;
    .registers 4

    .prologue
    const/high16 v1, 0x40400000    # 3.0f

    const/high16 v2, 0x40000000    # 2.0f

    .line 300
    invoke-super {p0}, Lfr/testudo/spacecorsair/business/ennemis/AlienEnemy;->setElite()Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    .line 301
    iget v0, p0, Lfr/testudo/spacecorsair/business/ennemis/AlienTourelle;->xp:I

    mul-int/lit8 v0, v0, 0x4

    iput v0, p0, Lfr/testudo/spacecorsair/business/ennemis/AlienTourelle;->xp:I

    .line 302
    iget v0, p0, Lfr/testudo/spacecorsair/business/ennemis/AlienTourelle;->life:F

    mul-float/2addr v0, v1

    iput v0, p0, Lfr/testudo/spacecorsair/business/ennemis/AlienTourelle;->life:F

    .line 303
    iget v0, p0, Lfr/testudo/spacecorsair/business/ennemis/AlienTourelle;->maxLife:F

    mul-float/2addr v0, v1

    iput v0, p0, Lfr/testudo/spacecorsair/business/ennemis/AlienTourelle;->maxLife:F

    .line 304
    iget v0, p0, Lfr/testudo/spacecorsair/business/ennemis/AlienTourelle;->bulletDamage:F

    const v1, 0x3fa66666    # 1.3f

    mul-float/2addr v0, v1

    iput v0, p0, Lfr/testudo/spacecorsair/business/ennemis/AlienTourelle;->bulletDamage:F

    .line 305
    iget-wide v0, p0, Lfr/testudo/spacecorsair/business/ennemis/AlienTourelle;->milleSecBetweenShots:J

    long-to-float v0, v0

    const v1, 0x3e99999a    # 0.3f

    mul-float/2addr v0, v1

    float-to-long v0, v0

    iput-wide v0, p0, Lfr/testudo/spacecorsair/business/ennemis/AlienTourelle;->milleSecBetweenShots:J

    .line 306
    iget v0, p0, Lfr/testudo/spacecorsair/business/ennemis/AlienTourelle;->bulletSpeed:F

    const v1, 0x3f99999a    # 1.2f

    mul-float/2addr v0, v1

    iput v0, p0, Lfr/testudo/spacecorsair/business/ennemis/AlienTourelle;->bulletSpeed:F

    .line 307
    iget v0, p0, Lfr/testudo/spacecorsair/business/ennemis/AlienTourelle;->maxTurnFactor:F

    mul-float/2addr v0, v2

    iput v0, p0, Lfr/testudo/spacecorsair/business/ennemis/AlienTourelle;->maxTurnFactor:F

    .line 308
    iget v0, p0, Lfr/testudo/spacecorsair/business/ennemis/AlienTourelle;->radarPointSize:F

    add-float/2addr v0, v2

    iput v0, p0, Lfr/testudo/spacecorsair/business/ennemis/AlienTourelle;->radarPointSize:F

    .line 310
    return-object p0
.end method

.method public shoot()V
    .registers 7

    .prologue
    const/high16 v4, -0x3cea0000    # -150.0f

    .line 190
    iget-wide v0, p0, Lfr/testudo/spacecorsair/business/ennemis/AlienTourelle;->nextShootAlowed:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_2e

    .line 191
    new-instance v0, Lfr/testudo/spacecorsair/engine/Vector2;

    const/high16 v1, 0x41c00000    # 24.0f

    invoke-direct {v0, v1, v4}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>(FF)V

    invoke-direct {p0, v0}, Lfr/testudo/spacecorsair/business/ennemis/AlienTourelle;->shootEnergyBullet(Lfr/testudo/spacecorsair/engine/Vector2;)V

    .line 192
    new-instance v0, Lfr/testudo/spacecorsair/engine/Vector2;

    const/high16 v1, -0x3e400000    # -24.0f

    invoke-direct {v0, v1, v4}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>(FF)V

    invoke-direct {p0, v0}, Lfr/testudo/spacecorsair/business/ennemis/AlienTourelle;->shootEnergyBullet(Lfr/testudo/spacecorsair/engine/Vector2;)V

    .line 193
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->soundManager:Lfr/testudo/spacecorsair/engine/SoundManager;

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/engine/SoundManager;->playAlienRatLaser()V

    .line 194
    iget-wide v0, p0, Lfr/testudo/spacecorsair/business/ennemis/AlienTourelle;->milleSecBetweenShots:J

    long-to-float v0, v0

    iget v1, p0, Lfr/testudo/spacecorsair/business/ennemis/AlienTourelle;->alterationReloadValue:F

    mul-float/2addr v0, v1

    float-to-long v0, v0

    iput-wide v0, p0, Lfr/testudo/spacecorsair/business/ennemis/AlienTourelle;->nextShootAlowed:J

    .line 197
    :cond_2e
    iget v0, p0, Lfr/testudo/spacecorsair/business/ennemis/AlienTourelle;->nextShootAlowedRootProjectile:I

    if-gtz v0, :cond_4c

    .line 199
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/ennemis/AlienTourelle;->attackTarget:Lfr/testudo/spacecorsair/business/Element;

    invoke-virtual {p0, v0}, Lfr/testudo/spacecorsair/business/ennemis/AlienTourelle;->shootRootBullet(Lfr/testudo/spacecorsair/business/Element;)V

    .line 200
    iget v0, p0, Lfr/testudo/spacecorsair/business/ennemis/AlienTourelle;->timeReloadRootProjectile:I

    int-to-float v0, v0

    iget v1, p0, Lfr/testudo/spacecorsair/business/ennemis/AlienTourelle;->alterationReloadValue:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v2

    const-wide v4, 0x409f400000000000L    # 2000.0

    mul-double/2addr v2, v4

    double-to-int v1, v2

    add-int/2addr v0, v1

    iput v0, p0, Lfr/testudo/spacecorsair/business/ennemis/AlienTourelle;->nextShootAlowedRootProjectile:I

    .line 204
    :cond_4c
    return-void
.end method

.method public shootCounterMesure(Lfr/testudo/spacecorsair/business/projectiles/Missile;)V
    .registers 11

    .prologue
    const/high16 v8, 0x3f800000    # 1.0f

    .line 331
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/ennemis/AlienTourelle;->tempVector:Lfr/testudo/spacecorsair/engine/Vector2;

    iget-object v1, p1, Lfr/testudo/spacecorsair/business/projectiles/Missile;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/engine/Vector2;->setSameAs(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 333
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/ennemis/AlienTourelle;->tempVector:Lfr/testudo/spacecorsair/engine/Vector2;

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/ennemis/AlienTourelle;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/engine/Vector2;->getAngularWithInRad(Lfr/testudo/spacecorsair/engine/Vector2;)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v0

    const-wide v2, 0x4056800000000000L    # 90.0

    sub-double v2, v0, v2

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v0

    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    cmpl-double v0, v0, v4

    if-lez v0, :cond_7e

    const/4 v0, 0x1

    :goto_27
    mul-int/lit8 v0, v0, 0x2d

    int-to-double v0, v0

    sub-double v0, v2, v0

    .line 335
    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v2

    .line 337
    invoke-static {}, Lfr/testudo/spacecorsair/business/factory/GamePools;->newVortexProjectile()Lfr/testudo/spacecorsair/business/projectiles/VortexProjectile;

    move-result-object v4

    iget v5, p0, Lfr/testudo/spacecorsair/business/ennemis/AlienTourelle;->bulletDamage:F

    const/high16 v6, 0x40a00000    # 5.0f

    mul-float/2addr v5, v6

    iget v6, p0, Lfr/testudo/spacecorsair/business/ennemis/AlienTourelle;->bulletLifeTime:I

    iget-object v7, p0, Lfr/testudo/spacecorsair/business/ennemis/AlienTourelle;->specialLaserAlteration:Lfr/testudo/spacecorsair/business/loot/stuff/alteration/AlterationSpecs;

    invoke-virtual {v4, v5, v6, p0, v7}, Lfr/testudo/spacecorsair/business/projectiles/VortexProjectile;->init(FILfr/testudo/spacecorsair/business/Element;Lfr/testudo/spacecorsair/business/loot/stuff/alteration/AlterationSpecs;)Lfr/testudo/spacecorsair/business/projectiles/VortexProjectile;

    move-result-object v4

    .line 339
    iput v8, v4, Lfr/testudo/spacecorsair/business/projectiles/VortexProjectile;->r:F

    .line 340
    iput v8, v4, Lfr/testudo/spacecorsair/business/projectiles/VortexProjectile;->g:F

    .line 341
    iput v8, v4, Lfr/testudo/spacecorsair/business/projectiles/VortexProjectile;->b:F

    .line 343
    iget-object v5, v4, Lfr/testudo/spacecorsair/business/projectiles/VortexProjectile;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget-object v6, p0, Lfr/testudo/spacecorsair/business/ennemis/AlienTourelle;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v5, v6}, Lfr/testudo/spacecorsair/engine/Vector2;->setSameAs(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 344
    iget-object v5, v4, Lfr/testudo/spacecorsair/business/projectiles/VortexProjectile;->speed:Lfr/testudo/spacecorsair/engine/Vector2;

    const/4 v6, 0x0

    const/high16 v7, -0x3f200000    # -7.0f

    invoke-virtual {v5, v6, v7}, Lfr/testudo/spacecorsair/engine/Vector2;->set(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 345
    const-wide/16 v6, 0x1f40

    iput-wide v6, v4, Lfr/testudo/spacecorsair/business/projectiles/VortexProjectile;->lifeTimeInMilli:J

    .line 346
    iget-object v5, v4, Lfr/testudo/spacecorsair/business/projectiles/VortexProjectile;->speed:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v5, v2, v3}, Lfr/testudo/spacecorsair/engine/Vector2;->applyRotatation(D)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 348
    double-to-int v0, v0

    int-to-float v0, v0

    iput v0, v4, Lfr/testudo/spacecorsair/business/projectiles/VortexProjectile;->spin:F

    .line 350
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/Game;->currentLevel:Lfr/testudo/spacecorsair/game/levels/Level;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/levels/Level;->toAdd:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 353
    invoke-static {p0, p1}, Lfr/testudo/spacecorsair/business/Util;->isLaserOrMissileSoundEarable(Lfr/testudo/spacecorsair/business/Element;Lfr/testudo/spacecorsair/business/Element;)Z

    move-result v0

    if-eqz v0, :cond_7b

    .line 355
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->soundManager:Lfr/testudo/spacecorsair/engine/SoundManager;

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/engine/SoundManager;->playAlienRatLaser()V

    .line 358
    :cond_7b
    iput-object v4, p1, Lfr/testudo/spacecorsair/business/projectiles/Missile;->target:Lfr/testudo/spacecorsair/business/Element;

    .line 360
    return-void

    .line 333
    :cond_7e
    const/4 v0, -0x1

    goto :goto_27
.end method

.method public shootRootBullet(Lfr/testudo/spacecorsair/business/Element;)V
    .registers 10

    .prologue
    .line 211
    iget v0, p0, Lfr/testudo/spacecorsair/business/ennemis/AlienTourelle;->spin:F

    iget v1, p0, Lfr/testudo/spacecorsair/business/ennemis/AlienTourelle;->shootPrecision:F

    sub-float/2addr v0, v1

    float-to-double v0, v0

    iget v2, p0, Lfr/testudo/spacecorsair/business/ennemis/AlienTourelle;->shootPrecision:F

    const/high16 v3, 0x40000000    # 2.0f

    mul-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v4

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    .line 213
    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v2

    .line 215
    invoke-static {}, Lfr/testudo/spacecorsair/business/factory/GamePools;->newElectricBullet()Lfr/testudo/spacecorsair/business/projectiles/ElectricBullet;

    move-result-object v4

    iget v5, p0, Lfr/testudo/spacecorsair/business/ennemis/AlienTourelle;->bulletDamage:F

    iget v6, p0, Lfr/testudo/spacecorsair/business/ennemis/AlienTourelle;->bulletLifeTime:I

    mul-int/lit8 v6, v6, 0x2

    sget-object v7, Lfr/testudo/spacecorsair/business/loot/stuff/alteration/AlterationSpecsBuilder;->snare50_5sec:Lfr/testudo/spacecorsair/business/loot/stuff/alteration/AlterationSpecs;

    invoke-virtual {v4, v5, v6, p0, v7}, Lfr/testudo/spacecorsair/business/projectiles/ElectricBullet;->init(FILfr/testudo/spacecorsair/business/Element;Lfr/testudo/spacecorsair/business/loot/stuff/alteration/AlterationSpecs;)Lfr/testudo/spacecorsair/business/projectiles/Projectile;

    move-result-object v4

    .line 218
    iget-object v5, v4, Lfr/testudo/spacecorsair/business/projectiles/Projectile;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget-object v6, p0, Lfr/testudo/spacecorsair/business/ennemis/AlienTourelle;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v5, v6}, Lfr/testudo/spacecorsair/engine/Vector2;->setSameAs(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 219
    iget-object v5, v4, Lfr/testudo/spacecorsair/business/projectiles/Projectile;->speed:Lfr/testudo/spacecorsair/engine/Vector2;

    const/4 v6, 0x0

    const/high16 v7, -0x3ed00000    # -11.0f

    invoke-virtual {v5, v6, v7}, Lfr/testudo/spacecorsair/engine/Vector2;->set(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 220
    iget-object v5, v4, Lfr/testudo/spacecorsair/business/projectiles/Projectile;->speed:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v5, v2, v3}, Lfr/testudo/spacecorsair/engine/Vector2;->applyRotatation(D)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 222
    double-to-int v0, v0

    int-to-float v0, v0

    iput v0, v4, Lfr/testudo/spacecorsair/business/projectiles/Projectile;->spin:F

    .line 223
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/Game;->currentLevel:Lfr/testudo/spacecorsair/game/levels/Level;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/levels/Level;->toAdd:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 226
    invoke-static {p0, p1}, Lfr/testudo/spacecorsair/business/Util;->isLaserOrMissileSoundEarable(Lfr/testudo/spacecorsair/business/Element;Lfr/testudo/spacecorsair/business/Element;)Z

    move-result v0

    if-eqz v0, :cond_56

    .line 227
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->soundManager:Lfr/testudo/spacecorsair/engine/SoundManager;

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/engine/SoundManager;->playAlienRatLaser()V

    .line 229
    :cond_56
    return-void
.end method
