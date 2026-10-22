.class public Lfr/testudo/spacecorsair/business/ennemis/FixedTourelle;
.super Lfr/testudo/spacecorsair/business/ennemis/Ennemis;
.source "SourceFile"


# static fields
.field public static drawable:Lfr/testudo/spacecorsair/display/Drawable;

.field public static drawableDim:Lfr/testudo/spacecorsair/engine/Vector2;

.field public static drawableFix:Lfr/testudo/spacecorsair/display/Drawable;

.field public static miniDrawable:Lfr/testudo/spacecorsair/display/Drawable;

.field public static physicalDim:Lfr/testudo/spacecorsair/engine/Vector2;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    const/high16 v2, 0x43480000    # 200.0f

    const/high16 v1, 0x43340000    # 180.0f

    .line 20
    new-instance v0, Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-direct {v0, v1, v1}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>(FF)V

    sput-object v0, Lfr/testudo/spacecorsair/business/ennemis/FixedTourelle;->physicalDim:Lfr/testudo/spacecorsair/engine/Vector2;

    .line 21
    new-instance v0, Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-direct {v0, v2, v2}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>(FF)V

    sput-object v0, Lfr/testudo/spacecorsair/business/ennemis/FixedTourelle;->drawableDim:Lfr/testudo/spacecorsair/engine/Vector2;

    return-void
.end method

.method public constructor <init>()V
    .registers 6

    .prologue
    const/high16 v4, 0x3f400000    # 0.75f

    .line 54
    invoke-direct {p0}, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;-><init>()V

    .line 56
    new-instance v0, Lfr/testudo/spacecorsair/engine/Vector2;

    const/4 v1, 0x0

    sget-object v2, Lfr/testudo/spacecorsair/business/ennemis/FixedTourelle;->drawableDim:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v2, v2, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    neg-float v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    const/high16 v3, 0x40a00000    # 5.0f

    sub-float/2addr v2, v3

    invoke-direct {v0, v1, v2}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>(FF)V

    sget-object v1, Lfr/testudo/spacecorsair/business/ennemis/FixedTourelle;->drawableDim:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v1, v1, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    float-to-int v1, v1

    add-int/lit8 v1, v1, -0x19

    const/4 v2, 0x6

    invoke-static {v0, v1, v2}, Lfr/testudo/spacecorsair/display/hud/InfoBarEnnemis;->newRed(Lfr/testudo/spacecorsair/engine/Vector2;II)Lfr/testudo/spacecorsair/display/hud/InfoBarEnnemis;

    move-result-object v0

    iput-object v0, p0, Lfr/testudo/spacecorsair/business/ennemis/FixedTourelle;->lifeBar:Lfr/testudo/spacecorsair/display/hud/InfoBarEnnemis;

    .line 57
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/ennemis/FixedTourelle;->lifeBar:Lfr/testudo/spacecorsair/display/hud/InfoBarEnnemis;

    iput v4, v0, Lfr/testudo/spacecorsair/display/hud/InfoBarEnnemis;->extR:F

    .line 58
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/ennemis/FixedTourelle;->lifeBar:Lfr/testudo/spacecorsair/display/hud/InfoBarEnnemis;

    iput v4, v0, Lfr/testudo/spacecorsair/display/hud/InfoBarEnnemis;->extG:F

    .line 59
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/ennemis/FixedTourelle;->lifeBar:Lfr/testudo/spacecorsair/display/hud/InfoBarEnnemis;

    iput v4, v0, Lfr/testudo/spacecorsair/display/hud/InfoBarEnnemis;->extB:F

    .line 60
    return-void
.end method

.method public static setTexture(Lfr/testudo/spacecorsair/display/Texture;Lfr/testudo/spacecorsair/display/Texture;)V
    .registers 4

    .prologue
    .line 32
    new-instance v0, Lfr/testudo/spacecorsair/display/Drawable;

    sget-object v1, Lfr/testudo/spacecorsair/business/ennemis/FixedTourelle;->drawableDim:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-direct {v0, v1, p0}, Lfr/testudo/spacecorsair/display/Drawable;-><init>(Lfr/testudo/spacecorsair/engine/Vector2;Lfr/testudo/spacecorsair/display/Texture;)V

    sput-object v0, Lfr/testudo/spacecorsair/business/ennemis/FixedTourelle;->drawable:Lfr/testudo/spacecorsair/display/Drawable;

    .line 33
    new-instance v0, Lfr/testudo/spacecorsair/display/Drawable;

    sget-object v1, Lfr/testudo/spacecorsair/business/ennemis/FixedTourelle;->drawableDim:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-direct {v0, v1, p1}, Lfr/testudo/spacecorsair/display/Drawable;-><init>(Lfr/testudo/spacecorsair/engine/Vector2;Lfr/testudo/spacecorsair/display/Texture;)V

    sput-object v0, Lfr/testudo/spacecorsair/business/ennemis/FixedTourelle;->drawableFix:Lfr/testudo/spacecorsair/display/Drawable;

    .line 34
    new-instance v0, Lfr/testudo/spacecorsair/display/Drawable;

    sget-object v1, Lfr/testudo/spacecorsair/engine/Vector2;->VECTOR_32:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-direct {v0, v1, p0}, Lfr/testudo/spacecorsair/display/Drawable;-><init>(Lfr/testudo/spacecorsair/engine/Vector2;Lfr/testudo/spacecorsair/display/Texture;)V

    sput-object v0, Lfr/testudo/spacecorsair/business/ennemis/FixedTourelle;->miniDrawable:Lfr/testudo/spacecorsair/display/Drawable;

    .line 36
    return-void
.end method

.method private shootEnergyBullet(Lfr/testudo/spacecorsair/engine/Vector2;)V
    .registers 10

    .prologue
    .line 150
    iget v0, p0, Lfr/testudo/spacecorsair/business/ennemis/FixedTourelle;->spin:F

    iget v1, p0, Lfr/testudo/spacecorsair/business/ennemis/FixedTourelle;->shootPrecision:F

    sub-float/2addr v0, v1

    float-to-double v0, v0

    iget v2, p0, Lfr/testudo/spacecorsair/business/ennemis/FixedTourelle;->shootPrecision:F

    const/high16 v3, 0x40000000    # 2.0f

    mul-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v4

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    .line 152
    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v2

    .line 153
    invoke-static {}, Lfr/testudo/spacecorsair/business/factory/GamePools;->newEnergyLaser()Lfr/testudo/spacecorsair/business/projectiles/EnergyLaser;

    move-result-object v4

    iget v5, p0, Lfr/testudo/spacecorsair/business/ennemis/FixedTourelle;->bulletDamage:F

    iget v6, p0, Lfr/testudo/spacecorsair/business/ennemis/FixedTourelle;->bulletLifeTime:I

    iget-object v7, p0, Lfr/testudo/spacecorsair/business/ennemis/FixedTourelle;->specialLaserAlteration:Lfr/testudo/spacecorsair/business/loot/stuff/alteration/AlterationSpecs;

    invoke-virtual {v4, v5, v6, p0, v7}, Lfr/testudo/spacecorsair/business/projectiles/EnergyLaser;->init(FILfr/testudo/spacecorsair/business/Element;Lfr/testudo/spacecorsair/business/loot/stuff/alteration/AlterationSpecs;)Lfr/testudo/spacecorsair/business/projectiles/EnergyLaser;

    move-result-object v4

    .line 154
    invoke-virtual {p1, v2, v3}, Lfr/testudo/spacecorsair/engine/Vector2;->applyRotatation(D)Lfr/testudo/spacecorsair/engine/Vector2;

    move-result-object v5

    .line 155
    iget-object v6, v4, Lfr/testudo/spacecorsair/business/projectiles/EnergyLaser;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget-object v7, p0, Lfr/testudo/spacecorsair/business/ennemis/FixedTourelle;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v6, v7}, Lfr/testudo/spacecorsair/engine/Vector2;->setSameAs(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    move-result-object v6

    invoke-virtual {v6, v5}, Lfr/testudo/spacecorsair/engine/Vector2;->add(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 156
    new-instance v5, Lfr/testudo/spacecorsair/engine/Vector2;

    const/4 v6, 0x0

    iget v7, p0, Lfr/testudo/spacecorsair/business/ennemis/FixedTourelle;->bulletSpeed:F

    neg-float v7, v7

    invoke-direct {v5, v6, v7}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>(FF)V

    iput-object v5, v4, Lfr/testudo/spacecorsair/business/projectiles/EnergyLaser;->speed:Lfr/testudo/spacecorsair/engine/Vector2;

    .line 157
    iget-object v5, v4, Lfr/testudo/spacecorsair/business/projectiles/EnergyLaser;->speed:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v5, v2, v3}, Lfr/testudo/spacecorsair/engine/Vector2;->applyRotatation(D)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 158
    iget-object v2, v4, Lfr/testudo/spacecorsair/business/projectiles/EnergyLaser;->speed:Lfr/testudo/spacecorsair/engine/Vector2;

    iget-object v3, p0, Lfr/testudo/spacecorsair/business/ennemis/FixedTourelle;->speed:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v2, v3}, Lfr/testudo/spacecorsair/engine/Vector2;->add(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 159
    double-to-float v0, v0

    iput v0, v4, Lfr/testudo/spacecorsair/business/projectiles/EnergyLaser;->spin:F

    .line 160
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/Game;->currentLevel:Lfr/testudo/spacecorsair/game/levels/Level;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/levels/Level;->toAdd:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 161
    iget-wide v0, p0, Lfr/testudo/spacecorsair/business/ennemis/FixedTourelle;->milleSecBetweenShots:J

    long-to-float v0, v0

    iget v1, p0, Lfr/testudo/spacecorsair/business/ennemis/FixedTourelle;->alterationReloadValue:F

    mul-float/2addr v0, v1

    float-to-long v0, v0

    iput-wide v0, p0, Lfr/testudo/spacecorsair/business/ennemis/FixedTourelle;->nextShootAlowed:J

    .line 162
    return-void
.end method


# virtual methods
.method public final applyAsteroidCollision(F)V
    .registers 2

    .prologue
    .line 199
    return-void
.end method

.method public applyDamage(FLfr/testudo/spacecorsair/business/Element;Lfr/testudo/spacecorsair/business/projectiles/Projectile;)V
    .registers 6

    .prologue
    .line 178
    invoke-super {p0, p1, p2, p3}, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->applyDamage(FLfr/testudo/spacecorsair/business/Element;Lfr/testudo/spacecorsair/business/projectiles/Projectile;)V

    .line 179
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/ennemis/FixedTourelle;->lifeBar:Lfr/testudo/spacecorsair/display/hud/InfoBarEnnemis;

    iget v1, p0, Lfr/testudo/spacecorsair/business/ennemis/FixedTourelle;->lifeInPourc:F

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/display/hud/InfoBarEnnemis;->setValue(F)V

    .line 180
    return-void
.end method

.method protected doAttackIa(JJ)V
    .registers 9

    .prologue
    .line 93
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/ennemis/FixedTourelle;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/ennemis/FixedTourelle;->attackTarget:Lfr/testudo/spacecorsair/business/Element;

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

    .line 95
    iget v1, p0, Lfr/testudo/spacecorsair/business/ennemis/FixedTourelle;->spin:F

    sub-float v1, v0, v1

    float-to-int v1, v1

    .line 96
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    .line 98
    int-to-float v2, v1

    const/high16 v3, 0x40800000    # 4.0f

    cmpg-float v2, v2, v3

    if-gez v2, :cond_34

    iget v2, p0, Lfr/testudo/spacecorsair/business/ennemis/FixedTourelle;->distanceToPlayer:F

    iget v3, p0, Lfr/testudo/spacecorsair/business/ennemis/FixedTourelle;->distanceShoot:F

    cmpg-float v2, v2, v3

    if-gez v2, :cond_34

    .line 100
    invoke-virtual {p0}, Lfr/testudo/spacecorsair/business/ennemis/FixedTourelle;->shoot()V

    .line 103
    :cond_34
    int-to-float v2, v1

    const/high16 v3, 0x3f000000    # 0.5f

    cmpg-float v2, v2, v3

    if-gez v2, :cond_3f

    .line 104
    const/4 v0, 0x0

    iput v0, p0, Lfr/testudo/spacecorsair/business/ennemis/FixedTourelle;->spinSpeed:F

    .line 127
    :goto_3e
    return-void

    .line 107
    :cond_3f
    const/16 v2, 0xb4

    if-gt v1, v2, :cond_54

    .line 109
    iget v1, p0, Lfr/testudo/spacecorsair/business/ennemis/FixedTourelle;->spin:F

    cmpl-float v0, v1, v0

    if-lez v0, :cond_4f

    .line 110
    iget v0, p0, Lfr/testudo/spacecorsair/business/ennemis/FixedTourelle;->maxTurnFactor:F

    neg-float v0, v0

    iput v0, p0, Lfr/testudo/spacecorsair/business/ennemis/FixedTourelle;->spinSpeed:F

    goto :goto_3e

    .line 113
    :cond_4f
    iget v0, p0, Lfr/testudo/spacecorsair/business/ennemis/FixedTourelle;->maxTurnFactor:F

    iput v0, p0, Lfr/testudo/spacecorsair/business/ennemis/FixedTourelle;->spinSpeed:F

    goto :goto_3e

    .line 118
    :cond_54
    iget v1, p0, Lfr/testudo/spacecorsair/business/ennemis/FixedTourelle;->spin:F

    cmpg-float v0, v1, v0

    if-gez v0, :cond_60

    .line 119
    iget v0, p0, Lfr/testudo/spacecorsair/business/ennemis/FixedTourelle;->maxTurnFactor:F

    neg-float v0, v0

    iput v0, p0, Lfr/testudo/spacecorsair/business/ennemis/FixedTourelle;->spinSpeed:F

    goto :goto_3e

    .line 122
    :cond_60
    iget v0, p0, Lfr/testudo/spacecorsair/business/ennemis/FixedTourelle;->maxTurnFactor:F

    iput v0, p0, Lfr/testudo/spacecorsair/business/ennemis/FixedTourelle;->spinSpeed:F

    goto :goto_3e
.end method

.method public doPhysic(J)V
    .registers 8

    .prologue
    .line 142
    iget-wide v0, p0, Lfr/testudo/spacecorsair/business/ennemis/FixedTourelle;->nextShootAlowed:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_d

    .line 143
    iget-wide v0, p0, Lfr/testudo/spacecorsair/business/ennemis/FixedTourelle;->nextShootAlowed:J

    sub-long/2addr v0, p1

    iput-wide v0, p0, Lfr/testudo/spacecorsair/business/ennemis/FixedTourelle;->nextShootAlowed:J

    .line 145
    :cond_d
    invoke-super {p0, p1, p2}, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->doPhysic(J)V

    .line 147
    return-void
.end method

.method public getDrawableObject()Lfr/testudo/spacecorsair/display/Drawable;
    .registers 2

    .prologue
    .line 40
    sget-object v0, Lfr/testudo/spacecorsair/business/ennemis/FixedTourelle;->drawable:Lfr/testudo/spacecorsair/display/Drawable;

    return-object v0
.end method

.method public getMiniDrawableObject()Lfr/testudo/spacecorsair/display/Drawable;
    .registers 2

    .prologue
    .line 27
    const/4 v0, 0x0

    return-object v0
.end method

.method public getPhysicDimension()Lfr/testudo/spacecorsair/engine/Vector2;
    .registers 2

    .prologue
    .line 45
    sget-object v0, Lfr/testudo/spacecorsair/business/ennemis/FixedTourelle;->physicalDim:Lfr/testudo/spacecorsair/engine/Vector2;

    return-object v0
.end method

.method public initLevelConfig(Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;I)Lfr/testudo/spacecorsair/business/ennemis/FixedTourelle;
    .registers 7

    .prologue
    const v3, 0x459c4000    # 5000.0f

    const/4 v2, 0x0

    .line 64
    invoke-super {p0, p2}, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->init(I)Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    .line 65
    iget v0, p1, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->life:I

    int-to-float v0, v0

    iput v0, p0, Lfr/testudo/spacecorsair/business/ennemis/FixedTourelle;->life:F

    .line 66
    iget v0, p0, Lfr/testudo/spacecorsair/business/ennemis/FixedTourelle;->life:F

    iput v0, p0, Lfr/testudo/spacecorsair/business/ennemis/FixedTourelle;->maxLife:F

    .line 67
    iget v0, p1, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->maxTurnFactor:F

    iput v0, p0, Lfr/testudo/spacecorsair/business/ennemis/FixedTourelle;->maxTurnFactor:F

    .line 68
    iget v0, p1, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->shootReload:I

    int-to-long v0, v0

    iput-wide v0, p0, Lfr/testudo/spacecorsair/business/ennemis/FixedTourelle;->milleSecBetweenShots:J

    .line 69
    iget v0, p1, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->shootDamage:I

    int-to-float v0, v0

    iput v0, p0, Lfr/testudo/spacecorsair/business/ennemis/FixedTourelle;->bulletDamage:F

    .line 70
    iget v0, p1, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->xp:I

    iput v0, p0, Lfr/testudo/spacecorsair/business/ennemis/FixedTourelle;->xp:I

    .line 71
    iget-object v0, p1, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->lootConfig:Lfr/testudo/spacecorsair/business/loot/LootConfig;

    iput-object v0, p0, Lfr/testudo/spacecorsair/business/ennemis/FixedTourelle;->lootConfig:Lfr/testudo/spacecorsair/business/loot/LootConfig;

    .line 74
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/ennemis/FixedTourelle;->lifeBar:Lfr/testudo/spacecorsair/display/hud/InfoBarEnnemis;

    const/high16 v1, 0x42c80000    # 100.0f

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/display/hud/InfoBarEnnemis;->setValue(F)V

    .line 75
    const v0, 0x461c4000    # 10000.0f

    iput v0, p0, Lfr/testudo/spacecorsair/business/ennemis/FixedTourelle;->mass:F

    .line 76
    iput v2, p0, Lfr/testudo/spacecorsair/business/ennemis/FixedTourelle;->pouseeForce:F

    .line 77
    const/16 v0, 0x7d0

    invoke-virtual {p0, v0}, Lfr/testudo/spacecorsair/business/ennemis/FixedTourelle;->setMitigedDistance(I)V

    .line 78
    const v0, 0x451c4000    # 2500.0f

    iput v0, p0, Lfr/testudo/spacecorsair/business/ennemis/FixedTourelle;->desengagementDistance:F

    .line 79
    iput v2, p0, Lfr/testudo/spacecorsair/business/ennemis/FixedTourelle;->shootPrecision:F

    .line 80
    iput v3, p0, Lfr/testudo/spacecorsair/business/ennemis/FixedTourelle;->distanceShoot:F

    .line 81
    const/4 v0, 0x5

    iput v0, p0, Lfr/testudo/spacecorsair/business/ennemis/FixedTourelle;->bulletLifeTime:I

    .line 82
    const/high16 v0, 0x41480000    # 12.5f

    iput v0, p0, Lfr/testudo/spacecorsair/business/ennemis/FixedTourelle;->bulletSpeed:F

    .line 83
    const/4 v0, 0x1

    iput-boolean v0, p0, Lfr/testudo/spacecorsair/business/ennemis/FixedTourelle;->drawOnRadar:Z

    .line 84
    const/high16 v0, 0x40000000    # 2.0f

    iput v0, p0, Lfr/testudo/spacecorsair/business/ennemis/FixedTourelle;->radarPointSize:F

    .line 85
    iput v3, p0, Lfr/testudo/spacecorsair/business/ennemis/FixedTourelle;->distanceToPlayer:F

    .line 86
    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModV34;->scale(Lfr/testudo/spacecorsair/business/ennemis/Ennemis;)V

    return-object p0
.end method

.method protected onAttackTargetStart()V
    .registers 1

    .prologue
    .line 132
    return-void
.end method

.method protected onAttackTargetStop()V
    .registers 2

    .prologue
    .line 136
    const/4 v0, 0x0

    iput v0, p0, Lfr/testudo/spacecorsair/business/ennemis/FixedTourelle;->spinSpeed:F

    .line 137
    return-void
.end method

.method public onDestroyed(Z)V
    .registers 5

    .prologue
    const/4 v2, 0x2

    .line 186
    invoke-static {}, Lfr/testudo/spacecorsair/business/factory/GamePools;->newRandomExplode()Lfr/testudo/spacecorsair/display/ExplosionAnim;

    move-result-object v0

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/ennemis/FixedTourelle;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v0, v1, p0}, Lfr/testudo/spacecorsair/display/ExplosionAnim;->init(Lfr/testudo/spacecorsair/engine/Vector2;Lfr/testudo/spacecorsair/business/Element;)Lfr/testudo/spacecorsair/display/ExplosionAnim;

    move-result-object v0

    .line 187
    sget-object v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v1, v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v1, v1, Lfr/testudo/spacecorsair/game/Game;->currentLevel:Lfr/testudo/spacecorsair/game/levels/Level;

    iget-object v1, v1, Lfr/testudo/spacecorsair/game/levels/Level;->toAddAnimated:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 189
    invoke-static {p0, v2}, Lfr/testudo/spacecorsair/display/ParticuleFactory;->addWhite(Lfr/testudo/spacecorsair/business/Element;I)V

    .line 190
    const/4 v0, 0x5

    invoke-static {p0, v0}, Lfr/testudo/spacecorsair/display/ParticuleFactory;->addRed(Lfr/testudo/spacecorsair/business/Element;I)V

    .line 191
    invoke-static {p0, v2}, Lfr/testudo/spacecorsair/display/ParticuleFactory;->addYellow(Lfr/testudo/spacecorsair/business/Element;I)V

    .line 192
    invoke-super {p0, p1}, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->onDestroyed(Z)V

    .line 194
    return-void
.end method

.method public registerYourselfToDrawQueue()V
    .registers 13

    .prologue
    const/4 v11, 0x0

    const/high16 v10, 0x40000000    # 2.0f

    const/high16 v9, 0x3f800000    # 1.0f

    .line 207
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->renderQueue:Lfr/testudo/spacecorsair/engine/RenderQueue;

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/ennemis/FixedTourelle;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget-boolean v2, p0, Lfr/testudo/spacecorsair/business/ennemis/FixedTourelle;->cameraRelative:Z

    sget-object v3, Lfr/testudo/spacecorsair/business/ennemis/FixedTourelle;->drawableFix:Lfr/testudo/spacecorsair/display/Drawable;

    const/4 v4, 0x0

    iget v5, p0, Lfr/testudo/spacecorsair/business/ennemis/FixedTourelle;->a:F

    iget v6, p0, Lfr/testudo/spacecorsair/business/ennemis/FixedTourelle;->r:F

    iget v7, p0, Lfr/testudo/spacecorsair/business/ennemis/FixedTourelle;->g:F

    iget v8, p0, Lfr/testudo/spacecorsair/business/ennemis/FixedTourelle;->b:F

    invoke-virtual/range {v0 .. v8}, Lfr/testudo/spacecorsair/engine/RenderQueue;->addToWaitingQueue(Lfr/testudo/spacecorsair/engine/Vector2;ZLfr/testudo/spacecorsair/display/Drawable;FFFFF)V

    .line 211
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->renderQueue:Lfr/testudo/spacecorsair/engine/RenderQueue;

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/ennemis/FixedTourelle;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget-boolean v2, p0, Lfr/testudo/spacecorsair/business/ennemis/FixedTourelle;->cameraRelative:Z

    sget-object v3, Lfr/testudo/spacecorsair/business/ennemis/FixedTourelle;->drawable:Lfr/testudo/spacecorsair/display/Drawable;

    iget v4, p0, Lfr/testudo/spacecorsair/business/ennemis/FixedTourelle;->spin:F

    iget v5, p0, Lfr/testudo/spacecorsair/business/ennemis/FixedTourelle;->a:F

    iget v6, p0, Lfr/testudo/spacecorsair/business/ennemis/FixedTourelle;->r:F

    iget v7, p0, Lfr/testudo/spacecorsair/business/ennemis/FixedTourelle;->g:F

    iget v8, p0, Lfr/testudo/spacecorsair/business/ennemis/FixedTourelle;->b:F

    invoke-virtual/range {v0 .. v8}, Lfr/testudo/spacecorsair/engine/RenderQueue;->addToWaitingQueue(Lfr/testudo/spacecorsair/engine/Vector2;ZLfr/testudo/spacecorsair/display/Drawable;FFFFF)V

    .line 215
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/ennemis/FixedTourelle;->tempVector:Lfr/testudo/spacecorsair/engine/Vector2;

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/ennemis/FixedTourelle;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/engine/Vector2;->setSameAs(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 216
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/ennemis/FixedTourelle;->tempVector:Lfr/testudo/spacecorsair/engine/Vector2;

    sget-object v1, Lfr/testudo/spacecorsair/business/ennemis/FixedTourelle;->drawable:Lfr/testudo/spacecorsair/display/Drawable;

    iget-object v1, v1, Lfr/testudo/spacecorsair/display/Drawable;->dimensions:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v1, v1, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    neg-float v1, v1

    div-float/2addr v1, v10

    sget-object v2, Lfr/testudo/spacecorsair/business/ennemis/FixedTourelle;->drawable:Lfr/testudo/spacecorsair/display/Drawable;

    iget-object v2, v2, Lfr/testudo/spacecorsair/display/Drawable;->dimensions:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v2, v2, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    div-float/2addr v2, v10

    invoke-virtual {v0, v1, v2}, Lfr/testudo/spacecorsair/engine/Vector2;->add(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 217
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->renderQueue:Lfr/testudo/spacecorsair/engine/RenderQueue;

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/ennemis/FixedTourelle;->tempVector:Lfr/testudo/spacecorsair/engine/Vector2;

    iget-object v3, p0, Lfr/testudo/spacecorsair/business/ennemis/FixedTourelle;->levelStr:Ljava/lang/String;

    iget v4, p0, Lfr/testudo/spacecorsair/business/ennemis/FixedTourelle;->levelColorR:F

    iget v5, p0, Lfr/testudo/spacecorsair/business/ennemis/FixedTourelle;->levelColorG:F

    iget v6, p0, Lfr/testudo/spacecorsair/business/ennemis/FixedTourelle;->levelColorB:F

    sget-object v8, Lfr/testudo/spacecorsair/textengine/TextSize;->LITTLE:Lfr/testudo/spacecorsair/textengine/TextSize;

    move v2, v11

    move v7, v9

    invoke-virtual/range {v0 .. v8}, Lfr/testudo/spacecorsair/engine/RenderQueue;->addTextToTextWaitingQueue(Lfr/testudo/spacecorsair/engine/Vector2;ZLjava/lang/String;FFFFLfr/testudo/spacecorsair/textengine/TextSize;)V

    .line 219
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/ennemis/FixedTourelle;->tempVector:Lfr/testudo/spacecorsair/engine/Vector2;

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/ennemis/FixedTourelle;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/engine/Vector2;->setSameAs(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 220
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/ennemis/FixedTourelle;->tempVector:Lfr/testudo/spacecorsair/engine/Vector2;

    const/high16 v1, 0x41500000    # 13.0f

    const/high16 v2, 0x40a00000    # 5.0f

    invoke-virtual {v0, v1, v2}, Lfr/testudo/spacecorsair/engine/Vector2;->add(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 221
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->renderQueue:Lfr/testudo/spacecorsair/engine/RenderQueue;

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/ennemis/FixedTourelle;->tempVector:Lfr/testudo/spacecorsair/engine/Vector2;

    iget-object v2, p0, Lfr/testudo/spacecorsair/business/ennemis/FixedTourelle;->lifeBar:Lfr/testudo/spacecorsair/display/hud/InfoBarEnnemis;

    invoke-virtual {v0, v1, v2}, Lfr/testudo/spacecorsair/engine/RenderQueue;->addToWaitingQueue(Lfr/testudo/spacecorsair/engine/Vector2;Lfr/testudo/spacecorsair/display/hud/InfoBar;)V

    .line 224
    iget-boolean v0, p0, Lfr/testudo/spacecorsair/business/ennemis/FixedTourelle;->elite:Z

    if-eqz v0, :cond_b2

    .line 225
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/ennemis/FixedTourelle;->tempVector:Lfr/testudo/spacecorsair/engine/Vector2;

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/ennemis/FixedTourelle;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/engine/Vector2;->setSameAs(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    move-result-object v0

    sget-object v1, Lfr/testudo/spacecorsair/business/ennemis/FixedTourelle;->drawable:Lfr/testudo/spacecorsair/display/Drawable;

    iget-object v1, v1, Lfr/testudo/spacecorsair/display/Drawable;->dimensions:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v1, v1, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    div-float/2addr v1, v10

    const/high16 v2, 0x41a80000    # 21.0f

    add-float/2addr v1, v2

    sget-object v2, Lfr/testudo/spacecorsair/business/ennemis/FixedTourelle;->drawable:Lfr/testudo/spacecorsair/display/Drawable;

    iget-object v2, v2, Lfr/testudo/spacecorsair/display/Drawable;->dimensions:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v2, v2, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    div-float/2addr v2, v10

    const/high16 v3, 0x41200000    # 10.0f

    add-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Lfr/testudo/spacecorsair/engine/Vector2;->add(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 226
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->renderQueue:Lfr/testudo/spacecorsair/engine/RenderQueue;

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/ennemis/FixedTourelle;->tempVector:Lfr/testudo/spacecorsair/engine/Vector2;

    sget-object v3, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->ELITE_MARK_SIZE_NORMAL:Lfr/testudo/spacecorsair/display/Drawable;

    const/high16 v4, 0x43340000    # 180.0f

    move v2, v11

    move v5, v9

    move v6, v9

    move v7, v9

    move v8, v9

    invoke-virtual/range {v0 .. v8}, Lfr/testudo/spacecorsair/engine/RenderQueue;->addToWaitingQueue(Lfr/testudo/spacecorsair/engine/Vector2;ZLfr/testudo/spacecorsair/display/Drawable;FFFFF)V

    .line 232
    :cond_b2
    return-void
.end method

.method public setElite()Lfr/testudo/spacecorsair/business/ennemis/Ennemis;
    .registers 4

    .prologue
    const/high16 v1, 0x40400000    # 3.0f

    const/high16 v2, 0x40000000    # 2.0f

    .line 237
    invoke-super {p0}, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->setElite()Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    .line 238
    iget v0, p0, Lfr/testudo/spacecorsair/business/ennemis/FixedTourelle;->xp:I

    mul-int/lit8 v0, v0, 0x4

    iput v0, p0, Lfr/testudo/spacecorsair/business/ennemis/FixedTourelle;->xp:I

    .line 239
    iget v0, p0, Lfr/testudo/spacecorsair/business/ennemis/FixedTourelle;->life:F

    mul-float/2addr v0, v1

    iput v0, p0, Lfr/testudo/spacecorsair/business/ennemis/FixedTourelle;->life:F

    .line 240
    iget v0, p0, Lfr/testudo/spacecorsair/business/ennemis/FixedTourelle;->maxLife:F

    mul-float/2addr v0, v1

    iput v0, p0, Lfr/testudo/spacecorsair/business/ennemis/FixedTourelle;->maxLife:F

    .line 241
    iget v0, p0, Lfr/testudo/spacecorsair/business/ennemis/FixedTourelle;->bulletDamage:F

    const v1, 0x3fa66666    # 1.3f

    mul-float/2addr v0, v1

    iput v0, p0, Lfr/testudo/spacecorsair/business/ennemis/FixedTourelle;->bulletDamage:F

    .line 242
    iget-wide v0, p0, Lfr/testudo/spacecorsair/business/ennemis/FixedTourelle;->milleSecBetweenShots:J

    long-to-float v0, v0

    const v1, 0x3e99999a    # 0.3f

    mul-float/2addr v0, v1

    float-to-long v0, v0

    iput-wide v0, p0, Lfr/testudo/spacecorsair/business/ennemis/FixedTourelle;->milleSecBetweenShots:J

    .line 243
    iget v0, p0, Lfr/testudo/spacecorsair/business/ennemis/FixedTourelle;->bulletSpeed:F

    const v1, 0x3f99999a    # 1.2f

    mul-float/2addr v0, v1

    iput v0, p0, Lfr/testudo/spacecorsair/business/ennemis/FixedTourelle;->bulletSpeed:F

    .line 244
    iget v0, p0, Lfr/testudo/spacecorsair/business/ennemis/FixedTourelle;->maxTurnFactor:F

    mul-float/2addr v0, v2

    iput v0, p0, Lfr/testudo/spacecorsair/business/ennemis/FixedTourelle;->maxTurnFactor:F

    .line 245
    iget v0, p0, Lfr/testudo/spacecorsair/business/ennemis/FixedTourelle;->radarPointSize:F

    add-float/2addr v0, v2

    iput v0, p0, Lfr/testudo/spacecorsair/business/ennemis/FixedTourelle;->radarPointSize:F

    .line 247
    return-object p0
.end method

.method public shoot()V
    .registers 5

    .prologue
    .line 166
    iget-wide v0, p0, Lfr/testudo/spacecorsair/business/ennemis/FixedTourelle;->nextShootAlowed:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_1a

    .line 167
    new-instance v0, Lfr/testudo/spacecorsair/engine/Vector2;

    const/4 v1, 0x0

    const/high16 v2, -0x3d600000    # -80.0f

    invoke-direct {v0, v1, v2}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>(FF)V

    invoke-direct {p0, v0}, Lfr/testudo/spacecorsair/business/ennemis/FixedTourelle;->shootEnergyBullet(Lfr/testudo/spacecorsair/engine/Vector2;)V

    .line 168
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->soundManager:Lfr/testudo/spacecorsair/engine/SoundManager;

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/engine/SoundManager;->playLaserEnnemis()V

    .line 171
    :cond_1a
    return-void
.end method
