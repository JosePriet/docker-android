.class public Lfr/testudo/spacecorsair/business/ennemis/AlienBlatte;
.super Lfr/testudo/spacecorsair/business/ennemis/AlienEnemy;
.source "SourceFile"


# static fields
.field public static COLIDE_POINT_COUNT:I = 0x0

.field public static final OBJECT_NAME:Ljava/lang/String; = "Alien Blatte"

.field public static final SHOOT_DISTANCE:I = 0x320

.field public static final calcVect:Lfr/testudo/spacecorsair/engine/Vector2;

.field public static colidePoints:[Lfr/testudo/spacecorsair/engine/ColidePoint; = null

.field public static drawable:Lfr/testudo/spacecorsair/display/Drawable; = null

.field public static drawableDim:Lfr/testudo/spacecorsair/engine/Vector2; = null

.field public static physicalDim:Lfr/testudo/spacecorsair/engine/Vector2; = null

.field public static final pouseeForceAbimed:F = 0.003f

.field public static final timeBetweenExplodesInMilli:I = 0xc8

.field public static final timeDestroyInMilli:I = 0x1f40


# instance fields
.field public curNextExpldeTime:I

.field damageFrequency:I

.field public enemyPopFrequencyInMs:I

.field private fakeProjectile:Lfr/testudo/spacecorsair/business/projectiles/LaserBeam;

.field public isDestroyAnimation:Z

.field laserBeamActive:Z

.field public maxPopDistance:I

.field nextDamageCount:I

.field nextRootBulletCount:I

.field public popEnemisType:Lfr/testudo/spacecorsair/business/ennemis/EnnemisType;

.field public remainingDestroytime:I

.field public remainingPopEnemies:I

.field public remainingTimeBeforeEnemyPop:I

.field rootBulletFrequency:I

.field wasPlayerLootable:Z


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .prologue
    const/high16 v2, 0x44960000    # 1200.0f

    const/high16 v1, 0x44160000    # 600.0f

    const/16 v6, 0x73

    const/4 v5, 0x0

    .line 29
    new-instance v0, Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-direct {v0, v1, v1}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>(FF)V

    sput-object v0, Lfr/testudo/spacecorsair/business/ennemis/AlienBlatte;->physicalDim:Lfr/testudo/spacecorsair/engine/Vector2;

    .line 30
    new-instance v0, Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-direct {v0, v2, v2}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>(FF)V

    sput-object v0, Lfr/testudo/spacecorsair/business/ennemis/AlienBlatte;->drawableDim:Lfr/testudo/spacecorsair/engine/Vector2;

    .line 49
    const/4 v0, 0x4

    sput v0, Lfr/testudo/spacecorsair/business/ennemis/AlienBlatte;->COLIDE_POINT_COUNT:I

    .line 50
    sget v0, Lfr/testudo/spacecorsair/business/ennemis/AlienBlatte;->COLIDE_POINT_COUNT:I

    new-array v0, v0, [Lfr/testudo/spacecorsair/engine/ColidePoint;

    sput-object v0, Lfr/testudo/spacecorsair/business/ennemis/AlienBlatte;->colidePoints:[Lfr/testudo/spacecorsair/engine/ColidePoint;

    .line 54
    sget-object v0, Lfr/testudo/spacecorsair/business/ennemis/AlienBlatte;->colidePoints:[Lfr/testudo/spacecorsair/engine/ColidePoint;

    const/4 v1, 0x0

    new-instance v2, Lfr/testudo/spacecorsair/engine/ColidePoint;

    new-instance v3, Lfr/testudo/spacecorsair/engine/Vector2;

    const/high16 v4, -0x3ccc0000    # -180.0f

    invoke-direct {v3, v5, v4}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>(FF)V

    invoke-direct {v2, v3, v6}, Lfr/testudo/spacecorsair/engine/ColidePoint;-><init>(Lfr/testudo/spacecorsair/engine/Vector2;I)V

    aput-object v2, v0, v1

    .line 55
    sget-object v0, Lfr/testudo/spacecorsair/business/ennemis/AlienBlatte;->colidePoints:[Lfr/testudo/spacecorsair/engine/ColidePoint;

    const/4 v1, 0x1

    new-instance v2, Lfr/testudo/spacecorsair/engine/ColidePoint;

    new-instance v3, Lfr/testudo/spacecorsair/engine/Vector2;

    const/high16 v4, -0x3e100000    # -30.0f

    invoke-direct {v3, v5, v4}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>(FF)V

    invoke-direct {v2, v3, v6}, Lfr/testudo/spacecorsair/engine/ColidePoint;-><init>(Lfr/testudo/spacecorsair/engine/Vector2;I)V

    aput-object v2, v0, v1

    .line 56
    sget-object v0, Lfr/testudo/spacecorsair/business/ennemis/AlienBlatte;->colidePoints:[Lfr/testudo/spacecorsair/engine/ColidePoint;

    const/4 v1, 0x2

    new-instance v2, Lfr/testudo/spacecorsair/engine/ColidePoint;

    new-instance v3, Lfr/testudo/spacecorsair/engine/Vector2;

    const/high16 v4, 0x42f00000    # 120.0f

    invoke-direct {v3, v5, v4}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>(FF)V

    invoke-direct {v2, v3, v6}, Lfr/testudo/spacecorsair/engine/ColidePoint;-><init>(Lfr/testudo/spacecorsair/engine/Vector2;I)V

    aput-object v2, v0, v1

    .line 57
    sget-object v0, Lfr/testudo/spacecorsair/business/ennemis/AlienBlatte;->colidePoints:[Lfr/testudo/spacecorsair/engine/ColidePoint;

    const/4 v1, 0x3

    new-instance v2, Lfr/testudo/spacecorsair/engine/ColidePoint;

    new-instance v3, Lfr/testudo/spacecorsair/engine/Vector2;

    const/high16 v4, 0x43870000    # 270.0f

    invoke-direct {v3, v5, v4}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>(FF)V

    const/16 v4, 0x32

    invoke-direct {v2, v3, v4}, Lfr/testudo/spacecorsair/engine/ColidePoint;-><init>(Lfr/testudo/spacecorsair/engine/Vector2;I)V

    aput-object v2, v0, v1

    .line 380
    new-instance v0, Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-direct {v0}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>()V

    sput-object v0, Lfr/testudo/spacecorsair/business/ennemis/AlienBlatte;->calcVect:Lfr/testudo/spacecorsair/engine/Vector2;

    return-void
.end method

.method public constructor <init>()V
    .registers 6

    .prologue
    const/high16 v4, 0x3f400000    # 0.75f

    const/4 v1, 0x0

    .line 112
    invoke-direct {p0}, Lfr/testudo/spacecorsair/business/ennemis/AlienEnemy;-><init>()V

    .line 37
    iput-boolean v1, p0, Lfr/testudo/spacecorsair/business/ennemis/AlienBlatte;->laserBeamActive:Z

    .line 41
    iput v1, p0, Lfr/testudo/spacecorsair/business/ennemis/AlienBlatte;->remainingPopEnemies:I

    .line 43
    const/16 v0, 0x1f4

    iput v0, p0, Lfr/testudo/spacecorsair/business/ennemis/AlienBlatte;->damageFrequency:I

    .line 44
    iput v1, p0, Lfr/testudo/spacecorsair/business/ennemis/AlienBlatte;->nextDamageCount:I

    .line 46
    const/16 v0, 0xdac

    iput v0, p0, Lfr/testudo/spacecorsair/business/ennemis/AlienBlatte;->rootBulletFrequency:I

    .line 47
    iput v1, p0, Lfr/testudo/spacecorsair/business/ennemis/AlienBlatte;->nextRootBulletCount:I

    .line 61
    const/16 v0, 0x32c8

    iput v0, p0, Lfr/testudo/spacecorsair/business/ennemis/AlienBlatte;->enemyPopFrequencyInMs:I

    .line 62
    const/16 v0, 0x6a4

    iput v0, p0, Lfr/testudo/spacecorsair/business/ennemis/AlienBlatte;->maxPopDistance:I

    .line 63
    iget v0, p0, Lfr/testudo/spacecorsair/business/ennemis/AlienBlatte;->enemyPopFrequencyInMs:I

    iput v0, p0, Lfr/testudo/spacecorsair/business/ennemis/AlienBlatte;->remainingTimeBeforeEnemyPop:I

    .line 69
    const/4 v0, -0x1

    iput v0, p0, Lfr/testudo/spacecorsair/business/ennemis/AlienBlatte;->curNextExpldeTime:I

    .line 72
    iput v1, p0, Lfr/testudo/spacecorsair/business/ennemis/AlienBlatte;->remainingDestroytime:I

    .line 123
    new-instance v0, Lfr/testudo/spacecorsair/business/projectiles/LaserBeam;

    invoke-direct {v0}, Lfr/testudo/spacecorsair/business/projectiles/LaserBeam;-><init>()V

    iput-object v0, p0, Lfr/testudo/spacecorsair/business/ennemis/AlienBlatte;->fakeProjectile:Lfr/testudo/spacecorsair/business/projectiles/LaserBeam;

    .line 113
    const-string v0, "Alien Blatte"

    iput-object v0, p0, Lfr/testudo/spacecorsair/business/ennemis/AlienBlatte;->objectName:Ljava/lang/String;

    .line 114
    new-instance v0, Lfr/testudo/spacecorsair/engine/Vector2;

    const/4 v1, 0x0

    sget-object v2, Lfr/testudo/spacecorsair/business/ennemis/AlienBlatte;->drawableDim:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v2, v2, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    neg-float v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    const/high16 v3, 0x40a00000    # 5.0f

    sub-float/2addr v2, v3

    invoke-direct {v0, v1, v2}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>(FF)V

    sget-object v1, Lfr/testudo/spacecorsair/business/ennemis/AlienBlatte;->drawableDim:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v1, v1, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    float-to-int v1, v1

    add-int/lit16 v1, v1, -0x154

    const/16 v2, 0xf

    invoke-static {v0, v1, v2}, Lfr/testudo/spacecorsair/display/hud/InfoBarEnnemis;->newRed(Lfr/testudo/spacecorsair/engine/Vector2;II)Lfr/testudo/spacecorsair/display/hud/InfoBarEnnemis;

    move-result-object v0

    iput-object v0, p0, Lfr/testudo/spacecorsair/business/ennemis/AlienBlatte;->lifeBar:Lfr/testudo/spacecorsair/display/hud/InfoBarEnnemis;

    .line 115
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/ennemis/AlienBlatte;->lifeBar:Lfr/testudo/spacecorsair/display/hud/InfoBarEnnemis;

    iput v4, v0, Lfr/testudo/spacecorsair/display/hud/InfoBarEnnemis;->extR:F

    .line 116
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/ennemis/AlienBlatte;->lifeBar:Lfr/testudo/spacecorsair/display/hud/InfoBarEnnemis;

    iput v4, v0, Lfr/testudo/spacecorsair/display/hud/InfoBarEnnemis;->extG:F

    .line 117
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/ennemis/AlienBlatte;->lifeBar:Lfr/testudo/spacecorsair/display/hud/InfoBarEnnemis;

    iput v4, v0, Lfr/testudo/spacecorsair/display/hud/InfoBarEnnemis;->extB:F

    .line 119
    const/4 v0, 0x1

    iput-boolean v0, p0, Lfr/testudo/spacecorsair/business/ennemis/AlienBlatte;->disableCollisionForBigShip:Z

    .line 121
    return-void
.end method

.method private resetRemainingPopEnemies()V
    .registers 2

    .prologue
    .line 193
    iget v0, p0, Lfr/testudo/spacecorsair/business/ennemis/AlienBlatte;->level:I

    mul-int/lit8 v0, v0, 0x4

    add-int/lit8 v0, v0, 0x5

    iput v0, p0, Lfr/testudo/spacecorsair/business/ennemis/AlienBlatte;->remainingPopEnemies:I

    .line 194
    return-void
.end method

.method public static setTexture(Lfr/testudo/spacecorsair/display/Texture;)V
    .registers 3

    .prologue
    .line 97
    new-instance v0, Lfr/testudo/spacecorsair/display/Drawable;

    sget-object v1, Lfr/testudo/spacecorsair/business/ennemis/AlienBlatte;->drawableDim:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-direct {v0, v1, p0}, Lfr/testudo/spacecorsair/display/Drawable;-><init>(Lfr/testudo/spacecorsair/engine/Vector2;Lfr/testudo/spacecorsair/display/Texture;)V

    sput-object v0, Lfr/testudo/spacecorsair/business/ennemis/AlienBlatte;->drawable:Lfr/testudo/spacecorsair/display/Drawable;

    .line 98
    return-void
.end method


# virtual methods
.method public addRandomExplode()V
    .registers 14

    .prologue
    const/high16 v12, 0x43960000    # 300.0f

    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    .line 544
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v0

    sget v2, Lfr/testudo/spacecorsair/business/ennemis/AlienBlatte;->COLIDE_POINT_COUNT:I

    int-to-double v2, v2

    mul-double/2addr v0, v2

    double-to-int v0, v0

    .line 546
    sget-object v1, Lfr/testudo/spacecorsair/business/ennemis/AlienBlatte;->colidePoints:[Lfr/testudo/spacecorsair/engine/ColidePoint;

    aget-object v1, v1, v0

    iget v1, v1, Lfr/testudo/spacecorsair/engine/ColidePoint;->size:I

    int-to-double v2, v1

    const-wide v4, 0x3fe6666666666666L    # 0.7

    mul-double/2addr v2, v4

    double-to-int v1, v2

    .line 548
    iget-object v2, p0, Lfr/testudo/spacecorsair/business/ennemis/AlienBlatte;->tempVector:Lfr/testudo/spacecorsair/engine/Vector2;

    sget-object v3, Lfr/testudo/spacecorsair/business/ennemis/AlienBlatte;->colidePoints:[Lfr/testudo/spacecorsair/engine/ColidePoint;

    aget-object v0, v3, v0

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ColidePoint;->point:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v2, v0}, Lfr/testudo/spacecorsair/engine/Vector2;->setSameAs(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 549
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/ennemis/AlienBlatte;->tempVector:Lfr/testudo/spacecorsair/engine/Vector2;

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

    .line 550
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/ennemis/AlienBlatte;->tempVector:Lfr/testudo/spacecorsair/engine/Vector2;

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

    .line 551
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/ennemis/AlienBlatte;->tempVector:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v1, p0, Lfr/testudo/spacecorsair/business/ennemis/AlienBlatte;->spin:F

    float-to-double v2, v1

    invoke-static {v2, v3}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lfr/testudo/spacecorsair/engine/Vector2;->applyRotatation(D)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 552
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/ennemis/AlienBlatte;->tempVector:Lfr/testudo/spacecorsair/engine/Vector2;

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/ennemis/AlienBlatte;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/engine/Vector2;->add(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 555
    invoke-static {}, Lfr/testudo/spacecorsair/business/factory/GamePools;->newRandomExplode()Lfr/testudo/spacecorsair/display/ExplosionAnim;

    move-result-object v0

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/ennemis/AlienBlatte;->tempVector:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v0, v1, p0}, Lfr/testudo/spacecorsair/display/ExplosionAnim;->init(Lfr/testudo/spacecorsair/engine/Vector2;Lfr/testudo/spacecorsair/business/Element;)Lfr/testudo/spacecorsair/display/ExplosionAnim;

    move-result-object v0

    .line 556
    sget-object v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v1, v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v1, v1, Lfr/testudo/spacecorsair/game/Game;->currentLevel:Lfr/testudo/spacecorsair/game/levels/Level;

    iget-object v1, v1, Lfr/testudo/spacecorsair/game/levels/Level;->toAddAnimated:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 558
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v0

    const-wide v2, 0x3fb99999a0000000L    # 0.10000000149011612

    cmpg-double v0, v0, v2

    if-gez v0, :cond_a7

    .line 559
    invoke-static {}, Lfr/testudo/spacecorsair/business/factory/GamePools;->newShockWave()Lfr/testudo/spacecorsair/display/ShockWave;

    move-result-object v0

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/ennemis/AlienBlatte;->tempVector:Lfr/testudo/spacecorsair/engine/Vector2;

    const/high16 v2, 0x41200000    # 10.0f

    invoke-virtual {v0, v1, v2, v12, v12}, Lfr/testudo/spacecorsair/display/ShockWave;->init(Lfr/testudo/spacecorsair/engine/Vector2;FFF)Lfr/testudo/spacecorsair/display/ShockWave;

    move-result-object v0

    .line 560
    const v1, 0x3f008081

    iput v1, v0, Lfr/testudo/spacecorsair/display/ShockWave;->r:F

    .line 561
    const v1, 0x3ed4d4d5

    iput v1, v0, Lfr/testudo/spacecorsair/display/ShockWave;->g:F

    .line 562
    const v1, 0x3f0e8e8f

    iput v1, v0, Lfr/testudo/spacecorsair/display/ShockWave;->b:F

    .line 563
    sget-object v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v1, v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v1, v1, Lfr/testudo/spacecorsair/game/Game;->currentLevel:Lfr/testudo/spacecorsair/game/levels/Level;

    iget-object v1, v1, Lfr/testudo/spacecorsair/game/levels/Level;->toAddDrawOnly:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 565
    :cond_a7
    return-void
.end method

.method public applyAsteroidCollision(F)V
    .registers 2

    .prologue
    .line 198
    return-void
.end method

.method public applyDamage(FLfr/testudo/spacecorsair/business/Element;Lfr/testudo/spacecorsair/business/projectiles/Projectile;)V
    .registers 6

    .prologue
    .line 385
    invoke-super {p0, p1, p2, p3}, Lfr/testudo/spacecorsair/business/ennemis/AlienEnemy;->applyDamage(FLfr/testudo/spacecorsair/business/Element;Lfr/testudo/spacecorsair/business/projectiles/Projectile;)V

    .line 386
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/ennemis/AlienBlatte;->lifeBar:Lfr/testudo/spacecorsair/display/hud/InfoBarEnnemis;

    iget v1, p0, Lfr/testudo/spacecorsair/business/ennemis/AlienBlatte;->lifeInPourc:F

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/display/hud/InfoBarEnnemis;->setValue(F)V

    .line 387
    iget v0, p0, Lfr/testudo/spacecorsair/business/ennemis/AlienBlatte;->lifeInPourc:F

    const/high16 v1, 0x41c80000    # 25.0f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_17

    .line 388
    const v0, 0x3b449ba6    # 0.003f

    iput v0, p0, Lfr/testudo/spacecorsair/business/ennemis/AlienBlatte;->pouseeForce:F

    .line 390
    :cond_17
    return-void
.end method

.method protected doAttackIa(JJ)V
    .registers 16

    .prologue
    const/4 v1, 0x1

    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    const/4 v2, 0x0

    .line 280
    iget-boolean v3, p0, Lfr/testudo/spacecorsair/business/ennemis/AlienBlatte;->laserBeamActive:Z

    .line 281
    iput-boolean v2, p0, Lfr/testudo/spacecorsair/business/ennemis/AlienBlatte;->laserBeamActive:Z

    .line 285
    iget v0, p0, Lfr/testudo/spacecorsair/business/ennemis/AlienBlatte;->nextRootBulletCount:I

    int-to-long v6, v0

    sub-long/2addr v6, p1

    long-to-int v0, v6

    iput v0, p0, Lfr/testudo/spacecorsair/business/ennemis/AlienBlatte;->nextRootBulletCount:I

    .line 286
    iget v0, p0, Lfr/testudo/spacecorsair/business/ennemis/AlienBlatte;->nextRootBulletCount:I

    if-gtz v0, :cond_29

    iget v0, p0, Lfr/testudo/spacecorsair/business/ennemis/AlienBlatte;->distanceToPlayer:F

    const/high16 v6, 0x44480000    # 800.0f

    cmpl-float v0, v0, v6

    if-lez v0, :cond_29

    .line 287
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/ennemis/AlienBlatte;->attackTarget:Lfr/testudo/spacecorsair/business/Element;

    invoke-virtual {p0, v0}, Lfr/testudo/spacecorsair/business/ennemis/AlienBlatte;->shootRootBullet(Lfr/testudo/spacecorsair/business/Element;)V

    .line 288
    iget v0, p0, Lfr/testudo/spacecorsair/business/ennemis/AlienBlatte;->rootBulletFrequency:I

    int-to-float v0, v0

    iget v6, p0, Lfr/testudo/spacecorsair/business/ennemis/AlienBlatte;->alterationReloadValue:F

    mul-float/2addr v0, v6

    float-to-int v0, v0

    iput v0, p0, Lfr/testudo/spacecorsair/business/ennemis/AlienBlatte;->nextRootBulletCount:I

    .line 291
    :cond_29
    const-wide/16 v6, 0x320

    cmp-long v0, p3, v6

    if-gez v0, :cond_87

    .line 293
    iget v0, p0, Lfr/testudo/spacecorsair/business/ennemis/AlienBlatte;->nextDamageCount:I

    int-to-long v6, v0

    sub-long/2addr v6, p1

    long-to-int v0, v6

    iput v0, p0, Lfr/testudo/spacecorsair/business/ennemis/AlienBlatte;->nextDamageCount:I

    .line 294
    iget-boolean v0, p0, Lfr/testudo/spacecorsair/business/ennemis/AlienBlatte;->isDestroyAnimation:Z

    if-nez v0, :cond_d4

    iget v0, p0, Lfr/testudo/spacecorsair/business/ennemis/AlienBlatte;->nextDamageCount:I

    int-to-float v0, v0

    iget v6, p0, Lfr/testudo/spacecorsair/business/ennemis/AlienBlatte;->damageFrequency:I

    int-to-float v6, v6

    div-float/2addr v0, v6

    const v6, 0x3e99999a    # 0.3f

    cmpg-float v0, v0, v6

    if-gez v0, :cond_d4

    move v0, v1

    :goto_49
    iput-boolean v0, p0, Lfr/testudo/spacecorsair/business/ennemis/AlienBlatte;->laserBeamActive:Z

    .line 295
    iget-boolean v0, p0, Lfr/testudo/spacecorsair/business/ennemis/AlienBlatte;->laserBeamActive:Z

    if-eqz v0, :cond_58

    if-nez v3, :cond_58

    .line 297
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->soundManager:Lfr/testudo/spacecorsair/engine/SoundManager;

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/engine/SoundManager;->playAlienLaser()V

    .line 299
    :cond_58
    iget v0, p0, Lfr/testudo/spacecorsair/business/ennemis/AlienBlatte;->nextDamageCount:I

    if-gtz v0, :cond_87

    .line 300
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/ennemis/AlienBlatte;->attackTarget:Lfr/testudo/spacecorsair/business/Element;

    invoke-static {p0, v0}, Lfr/testudo/spacecorsair/mod/ModWreck;->beamTarget(Lfr/testudo/spacecorsair/business/Element;Lfr/testudo/spacecorsair/business/Element;)Lfr/testudo/spacecorsair/business/Element;

    move-result-object v0

    invoke-static {v0, v1}, Lfr/testudo/spacecorsair/display/ParticuleFactory;->addYellow(Lfr/testudo/spacecorsair/business/Element;I)V

    .line 301
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/ennemis/AlienBlatte;->fakeProjectile:Lfr/testudo/spacecorsair/business/projectiles/LaserBeam;

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/business/projectiles/LaserBeam;->resolveAlteration()V

    .line 302
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/ennemis/AlienBlatte;->attackTarget:Lfr/testudo/spacecorsair/business/Element;

    invoke-static {p0, v0}, Lfr/testudo/spacecorsair/mod/ModWreck;->beamTarget(Lfr/testudo/spacecorsair/business/Element;Lfr/testudo/spacecorsair/business/Element;)Lfr/testudo/spacecorsair/business/Element;

    move-result-object v0

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/ennemis/AlienBlatte;->fakeProjectile:Lfr/testudo/spacecorsair/business/projectiles/LaserBeam;

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/business/Element;->applyProjectileHit(Lfr/testudo/spacecorsair/business/projectiles/Projectile;)V

    .line 304
    iget v0, p0, Lfr/testudo/spacecorsair/business/ennemis/AlienBlatte;->distanceToPlayer:F

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v6

    const-wide/high16 v8, 0x4069000000000000L    # 200.0

    mul-double/2addr v6, v8

    add-double/2addr v0, v6

    double-to-int v0, v0

    iput v0, p0, Lfr/testudo/spacecorsair/business/ennemis/AlienBlatte;->damageFrequency:I

    .line 305
    iget v0, p0, Lfr/testudo/spacecorsair/business/ennemis/AlienBlatte;->damageFrequency:I

    int-to-float v0, v0

    iget v1, p0, Lfr/testudo/spacecorsair/business/ennemis/AlienBlatte;->alterationReloadValue:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lfr/testudo/spacecorsair/business/ennemis/AlienBlatte;->nextDamageCount:I

    .line 311
    :cond_87
    iget v0, p0, Lfr/testudo/spacecorsair/business/ennemis/AlienBlatte;->distanceToTarget:F

    const v1, 0x44228000    # 650.0f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_d7

    .line 312
    iput-boolean v2, p0, Lfr/testudo/spacecorsair/business/ennemis/AlienBlatte;->isPousee:Z

    .line 313
    const/4 v0, 0x0

    iput v0, p0, Lfr/testudo/spacecorsair/business/ennemis/AlienBlatte;->spinSpeed:F

    .line 319
    :goto_95
    iget v0, p0, Lfr/testudo/spacecorsair/business/ennemis/AlienBlatte;->remainingTimeBeforeEnemyPop:I

    if-ltz v0, :cond_a0

    .line 320
    iget v0, p0, Lfr/testudo/spacecorsair/business/ennemis/AlienBlatte;->remainingTimeBeforeEnemyPop:I

    int-to-long v0, v0

    sub-long/2addr v0, p1

    long-to-int v0, v0

    iput v0, p0, Lfr/testudo/spacecorsair/business/ennemis/AlienBlatte;->remainingTimeBeforeEnemyPop:I

    .line 323
    :cond_a0
    iget v0, p0, Lfr/testudo/spacecorsair/business/ennemis/AlienBlatte;->remainingTimeBeforeEnemyPop:I

    if-gtz v0, :cond_d3

    iget v0, p0, Lfr/testudo/spacecorsair/business/ennemis/AlienBlatte;->maxPopDistance:I

    int-to-long v0, v0

    cmp-long v0, p3, v0

    if-gez v0, :cond_d3

    .line 324
    invoke-virtual {p0}, Lfr/testudo/spacecorsair/business/ennemis/AlienBlatte;->popEnemy()V

    .line 325
    iget v0, p0, Lfr/testudo/spacecorsair/business/ennemis/AlienBlatte;->enemyPopFrequencyInMs:I

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v2

    const-wide/high16 v6, 0x4020000000000000L    # 8.0

    mul-double/2addr v2, v6

    double-to-int v1, v2

    add-int/2addr v0, v1

    iput v0, p0, Lfr/testudo/spacecorsair/business/ennemis/AlienBlatte;->remainingTimeBeforeEnemyPop:I

    .line 326
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v2

    iget v0, p0, Lfr/testudo/spacecorsair/business/ennemis/AlienBlatte;->lifeInPourc:F

    const/high16 v1, 0x41c80000    # 25.0f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_df

    move-wide v0, v4

    :goto_c8
    cmpg-double v0, v2, v0

    if-gez v0, :cond_d3

    .line 328
    iget v0, p0, Lfr/testudo/spacecorsair/business/ennemis/AlienBlatte;->remainingTimeBeforeEnemyPop:I

    int-to-double v0, v0

    mul-double/2addr v0, v4

    double-to-int v0, v0

    iput v0, p0, Lfr/testudo/spacecorsair/business/ennemis/AlienBlatte;->remainingTimeBeforeEnemyPop:I

    .line 334
    :cond_d3
    return-void

    :cond_d4
    move v0, v2

    .line 294
    goto/16 :goto_49

    .line 315
    :cond_d7
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/ennemis/AlienBlatte;->attackTarget:Lfr/testudo/spacecorsair/business/Element;

    iget-object v0, v0, Lfr/testudo/spacecorsair/business/Element;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {p0, v0}, Lfr/testudo/spacecorsair/business/ennemis/AlienBlatte;->alignToPoint(Lfr/testudo/spacecorsair/engine/Vector2;)Z

    goto :goto_95

    .line 326
    :cond_df
    const-wide v0, 0x3fe999999999999aL    # 0.8

    goto :goto_c8
.end method

.method public doPhysic(J)V
    .registers 8

    .prologue
    .line 495
    invoke-super {p0, p1, p2}, Lfr/testudo/spacecorsair/business/ennemis/AlienEnemy;->doPhysic(J)V

    .line 497
    iget-boolean v0, p0, Lfr/testudo/spacecorsair/business/ennemis/AlienBlatte;->isDestroyAnimation:Z

    if-eqz v0, :cond_2b

    .line 498
    iget v0, p0, Lfr/testudo/spacecorsair/business/ennemis/AlienBlatte;->curNextExpldeTime:I

    int-to-long v0, v0

    sub-long/2addr v0, p1

    long-to-int v0, v0

    iput v0, p0, Lfr/testudo/spacecorsair/business/ennemis/AlienBlatte;->curNextExpldeTime:I

    .line 499
    iget v0, p0, Lfr/testudo/spacecorsair/business/ennemis/AlienBlatte;->remainingDestroytime:I

    int-to-long v0, v0

    sub-long/2addr v0, p1

    long-to-int v0, v0

    iput v0, p0, Lfr/testudo/spacecorsair/business/ennemis/AlienBlatte;->remainingDestroytime:I

    .line 500
    iget v0, p0, Lfr/testudo/spacecorsair/business/ennemis/AlienBlatte;->remainingDestroytime:I

    if-gtz v0, :cond_1f

    .line 501
    const/4 v0, 0x0

    iput-boolean v0, p0, Lfr/testudo/spacecorsair/business/ennemis/AlienBlatte;->isDestroyAnimation:Z

    .line 502
    invoke-virtual {p0}, Lfr/testudo/spacecorsair/business/ennemis/AlienBlatte;->realDestroy()V

    .line 504
    :cond_1f
    iget v0, p0, Lfr/testudo/spacecorsair/business/ennemis/AlienBlatte;->curNextExpldeTime:I

    if-gez v0, :cond_2a

    .line 505
    invoke-virtual {p0}, Lfr/testudo/spacecorsair/business/ennemis/AlienBlatte;->addRandomExplode()V

    .line 506
    const/16 v0, 0xc8

    iput v0, p0, Lfr/testudo/spacecorsair/business/ennemis/AlienBlatte;->curNextExpldeTime:I

    .line 515
    :cond_2a
    :goto_2a
    return-void

    .line 511
    :cond_2b
    iget-wide v0, p0, Lfr/testudo/spacecorsair/business/ennemis/AlienBlatte;->nextShootAlowed:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_2a

    .line 512
    iget-wide v0, p0, Lfr/testudo/spacecorsair/business/ennemis/AlienBlatte;->nextShootAlowed:J

    sub-long/2addr v0, p1

    iput-wide v0, p0, Lfr/testudo/spacecorsair/business/ennemis/AlienBlatte;->nextShootAlowed:J

    goto :goto_2a
.end method

.method public getDrawableObject()Lfr/testudo/spacecorsair/display/Drawable;
    .registers 2

    .prologue
    .line 103
    sget-object v0, Lfr/testudo/spacecorsair/business/ennemis/AlienBlatte;->drawable:Lfr/testudo/spacecorsair/display/Drawable;

    return-object v0
.end method

.method public getMiniDrawableObject()Lfr/testudo/spacecorsair/display/Drawable;
    .registers 2

    .prologue
    .line 93
    const/4 v0, 0x0

    return-object v0
.end method

.method public getPhysicDimension()Lfr/testudo/spacecorsair/engine/Vector2;
    .registers 2

    .prologue
    .line 108
    sget-object v0, Lfr/testudo/spacecorsair/business/ennemis/AlienBlatte;->physicalDim:Lfr/testudo/spacecorsair/engine/Vector2;

    return-object v0
.end method

.method public initLevelConfig(Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;I)Lfr/testudo/spacecorsair/business/ennemis/AlienBlatte;
    .registers 9

    .prologue
    const v5, 0x3f31b1b2

    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 127
    invoke-super {p0, p2}, Lfr/testudo/spacecorsair/business/ennemis/AlienEnemy;->init(I)Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    .line 129
    iput-boolean v3, p0, Lfr/testudo/spacecorsair/business/ennemis/AlienBlatte;->disableCollisionForBigShip:Z

    .line 130
    iget v0, p1, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->life:I

    int-to-float v0, v0

    iput v0, p0, Lfr/testudo/spacecorsair/business/ennemis/AlienBlatte;->maxLife:F

    .line 131
    iget v0, p1, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->life:I

    int-to-float v0, v0

    iput v0, p0, Lfr/testudo/spacecorsair/business/ennemis/AlienBlatte;->life:F

    .line 132
    iget v0, p1, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->xp:I

    iput v0, p0, Lfr/testudo/spacecorsair/business/ennemis/AlienBlatte;->xp:I

    .line 133
    iget v0, p1, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->shootReload:I

    int-to-long v0, v0

    iput-wide v0, p0, Lfr/testudo/spacecorsair/business/ennemis/AlienBlatte;->milleSecBetweenShots:J

    .line 134
    iget v0, p1, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->shootDamage:I

    int-to-float v0, v0

    iput v0, p0, Lfr/testudo/spacecorsair/business/ennemis/AlienBlatte;->bulletDamage:F

    .line 135
    iget-object v0, p1, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->lootConfig:Lfr/testudo/spacecorsair/business/loot/LootConfig;

    iput-object v0, p0, Lfr/testudo/spacecorsair/business/ennemis/AlienBlatte;->lootConfig:Lfr/testudo/spacecorsair/business/loot/LootConfig;

    .line 136
    iget v0, p1, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->maxTurnFactor:F

    iput v0, p0, Lfr/testudo/spacecorsair/business/ennemis/AlienBlatte;->maxTurnFactor:F

    .line 139
    const/high16 v0, 0x457a0000    # 4000.0f

    iput v0, p0, Lfr/testudo/spacecorsair/business/ennemis/AlienBlatte;->distanceShoot:F

    .line 140
    const v0, 0x459c4000    # 5000.0f

    iput v0, p0, Lfr/testudo/spacecorsair/business/ennemis/AlienBlatte;->mass:F

    .line 142
    const v0, 0x3dcccccd    # 0.1f

    iput v0, p0, Lfr/testudo/spacecorsair/business/ennemis/AlienBlatte;->pouseeForce:F

    .line 143
    const v0, 0x3f8147ae    # 1.01f

    iput v0, p0, Lfr/testudo/spacecorsair/business/ennemis/AlienBlatte;->speedDeperditionfactor:F

    .line 146
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/ennemis/AlienBlatte;->lifeBar:Lfr/testudo/spacecorsair/display/hud/InfoBarEnnemis;

    const/high16 v1, 0x42c80000    # 100.0f

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/display/hud/InfoBarEnnemis;->setValue(F)V

    .line 148
    const/16 v0, 0x1194

    invoke-virtual {p0, v0}, Lfr/testudo/spacecorsair/business/ennemis/AlienBlatte;->setMitigedDistance(I)V

    .line 149
    const v0, 0x45ea6000    # 7500.0f

    iput v0, p0, Lfr/testudo/spacecorsair/business/ennemis/AlienBlatte;->desengagementDistance:F

    .line 150
    const/high16 v0, 0x40800000    # 4.0f

    iput v0, p0, Lfr/testudo/spacecorsair/business/ennemis/AlienBlatte;->shootPrecision:F

    .line 152
    iput-boolean v3, p0, Lfr/testudo/spacecorsair/business/ennemis/AlienBlatte;->drawOnRadar:Z

    .line 153
    const/high16 v0, 0x40400000    # 3.0f

    iput v0, p0, Lfr/testudo/spacecorsair/business/ennemis/AlienBlatte;->radarPointSize:F

    .line 154
    const v0, 0x466a6000    # 15000.0f

    iput v0, p0, Lfr/testudo/spacecorsair/business/ennemis/AlienBlatte;->distanceToPlayer:F

    .line 157
    iget-wide v0, p0, Lfr/testudo/spacecorsair/business/ennemis/AlienBlatte;->milleSecBetweenShots:J

    iput-wide v0, p0, Lfr/testudo/spacecorsair/business/ennemis/AlienBlatte;->nextShootAlowed:J

    .line 158
    sget-object v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisType;->ALIEN_RAT:Lfr/testudo/spacecorsair/business/ennemis/EnnemisType;

    iput-object v0, p0, Lfr/testudo/spacecorsair/business/ennemis/AlienBlatte;->popEnemisType:Lfr/testudo/spacecorsair/business/ennemis/EnnemisType;

    .line 160
    iget v0, p0, Lfr/testudo/spacecorsair/business/ennemis/AlienBlatte;->level:I

    mul-int/lit8 v0, v0, 0x4

    add-int/lit8 v0, v0, 0x5

    iput v0, p0, Lfr/testudo/spacecorsair/business/ennemis/AlienBlatte;->remainingPopEnemies:I

    .line 161
    iput-boolean v2, p0, Lfr/testudo/spacecorsair/business/ennemis/AlienBlatte;->laserBeamActive:Z

    .line 163
    const/high16 v0, 0x40c00000    # 6.0f

    iput v0, p0, Lfr/testudo/spacecorsair/business/ennemis/AlienBlatte;->radarPointSize:F

    .line 164
    iput v5, p0, Lfr/testudo/spacecorsair/business/ennemis/AlienBlatte;->radarColorR:F

    .line 165
    iput v4, p0, Lfr/testudo/spacecorsair/business/ennemis/AlienBlatte;->radarColorG:F

    .line 166
    iput v5, p0, Lfr/testudo/spacecorsair/business/ennemis/AlienBlatte;->radarColorB:F

    .line 169
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/ennemis/AlienBlatte;->fakeProjectile:Lfr/testudo/spacecorsair/business/projectiles/LaserBeam;

    iget v1, p0, Lfr/testudo/spacecorsair/business/ennemis/AlienBlatte;->bulletDamage:F

    iput v1, v0, Lfr/testudo/spacecorsair/business/projectiles/LaserBeam;->damage:F

    .line 170
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/ennemis/AlienBlatte;->fakeProjectile:Lfr/testudo/spacecorsair/business/projectiles/LaserBeam;

    iput-boolean v2, v0, Lfr/testudo/spacecorsair/business/projectiles/LaserBeam;->destroyedOnImpact:Z

    .line 171
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/ennemis/AlienBlatte;->fakeProjectile:Lfr/testudo/spacecorsair/business/projectiles/LaserBeam;

    iput-boolean v3, v0, Lfr/testudo/spacecorsair/business/projectiles/LaserBeam;->ignoreImactDecalOnTarget:Z

    .line 172
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/ennemis/AlienBlatte;->fakeProjectile:Lfr/testudo/spacecorsair/business/projectiles/LaserBeam;

    iput v4, v0, Lfr/testudo/spacecorsair/business/projectiles/LaserBeam;->mass:F

    .line 174
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/ennemis/AlienBlatte;->fakeProjectile:Lfr/testudo/spacecorsair/business/projectiles/LaserBeam;

    sget-object v1, Lfr/testudo/spacecorsair/business/loot/stuff/alteration/AlterationSpecsBuilder;->poison_10sec_8_proba_400dmg:Lfr/testudo/spacecorsair/business/loot/stuff/alteration/AlterationSpecs;

    iput-object v1, v0, Lfr/testudo/spacecorsair/business/projectiles/LaserBeam;->alterationSpecs:Lfr/testudo/spacecorsair/business/loot/stuff/alteration/AlterationSpecs;

    .line 175
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/ennemis/AlienBlatte;->fakeProjectile:Lfr/testudo/spacecorsair/business/projectiles/LaserBeam;

    iput-object p0, v0, Lfr/testudo/spacecorsair/business/projectiles/LaserBeam;->sender:Lfr/testudo/spacecorsair/business/Element;

    .line 176
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/ennemis/AlienBlatte;->fakeProjectile:Lfr/testudo/spacecorsair/business/projectiles/LaserBeam;

    iget v1, p0, Lfr/testudo/spacecorsair/business/ennemis/AlienBlatte;->level:I

    iput v1, v0, Lfr/testudo/spacecorsair/business/projectiles/LaserBeam;->level:I

    .line 178
    const/16 v0, 0x3a98

    iput v0, p0, Lfr/testudo/spacecorsair/business/ennemis/AlienBlatte;->rootBulletFrequency:I

    .line 180
    const/16 v0, 0x2710

    iput v0, p0, Lfr/testudo/spacecorsair/business/ennemis/AlienBlatte;->enemyPopFrequencyInMs:I

    .line 182
    iput-boolean v2, p0, Lfr/testudo/spacecorsair/business/ennemis/AlienBlatte;->isDestroyAnimation:Z

    .line 184
    const/16 v0, 0x12c

    iput v0, p0, Lfr/testudo/spacecorsair/business/ennemis/AlienBlatte;->lootDispersion:I

    .line 185
    const/16 v0, 0x898

    iput v0, p0, Lfr/testudo/spacecorsair/business/ennemis/AlienBlatte;->maxPopDistance:I

    .line 187
    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModV34;->scale(Lfr/testudo/spacecorsair/business/ennemis/Ennemis;)V

    return-object p0
.end method

.method protected onAttackTargetStart()V
    .registers 2

    .prologue
    .line 227
    iget v0, p0, Lfr/testudo/spacecorsair/business/ennemis/AlienBlatte;->damageFrequency:I

    iput v0, p0, Lfr/testudo/spacecorsair/business/ennemis/AlienBlatte;->nextDamageCount:I

    .line 228
    iget v0, p0, Lfr/testudo/spacecorsair/business/ennemis/AlienBlatte;->rootBulletFrequency:I

    iput v0, p0, Lfr/testudo/spacecorsair/business/ennemis/AlienBlatte;->nextRootBulletCount:I

    .line 229
    invoke-virtual {p0}, Lfr/testudo/spacecorsair/business/ennemis/AlienBlatte;->popEnemy()V

    .line 230
    invoke-virtual {p0}, Lfr/testudo/spacecorsair/business/ennemis/AlienBlatte;->popEnemy()V

    .line 231
    iget v0, p0, Lfr/testudo/spacecorsair/business/ennemis/AlienBlatte;->enemyPopFrequencyInMs:I

    iput v0, p0, Lfr/testudo/spacecorsair/business/ennemis/AlienBlatte;->remainingTimeBeforeEnemyPop:I

    .line 232
    return-void
.end method

.method protected onAttackTargetStop()V
    .registers 2

    .prologue
    .line 236
    const/4 v0, 0x0

    iput-boolean v0, p0, Lfr/testudo/spacecorsair/business/ennemis/AlienBlatte;->laserBeamActive:Z

    .line 238
    return-void
.end method

.method public onDestroyed(Z)V
    .registers 4

    .prologue
    .line 570
    iget-boolean v0, p0, Lfr/testudo/spacecorsair/business/ennemis/AlienBlatte;->isDestroyAnimation:Z

    if-eqz v0, :cond_5

    .line 585
    :goto_4
    return-void

    .line 574
    :cond_5
    iput-boolean p1, p0, Lfr/testudo/spacecorsair/business/ennemis/AlienBlatte;->wasPlayerLootable:Z

    .line 576
    const/4 v0, 0x0

    iput-boolean v0, p0, Lfr/testudo/spacecorsair/business/ennemis/AlienBlatte;->isPousee:Z

    .line 577
    const/16 v0, 0x1f40

    iput v0, p0, Lfr/testudo/spacecorsair/business/ennemis/AlienBlatte;->remainingDestroytime:I

    .line 578
    const/16 v0, 0xc8

    iput v0, p0, Lfr/testudo/spacecorsair/business/ennemis/AlienBlatte;->curNextExpldeTime:I

    .line 579
    const/4 v0, 0x1

    iput-boolean v0, p0, Lfr/testudo/spacecorsair/business/ennemis/AlienBlatte;->isDestroyAnimation:Z

    .line 581
    invoke-static {}, Lfr/testudo/spacecorsair/business/factory/GamePools;->newRandomExplode()Lfr/testudo/spacecorsair/display/ExplosionAnim;

    move-result-object v0

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/ennemis/AlienBlatte;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v0, v1, p0}, Lfr/testudo/spacecorsair/display/ExplosionAnim;->init(Lfr/testudo/spacecorsair/engine/Vector2;Lfr/testudo/spacecorsair/business/Element;)Lfr/testudo/spacecorsair/display/ExplosionAnim;

    move-result-object v0

    .line 582
    sget-object v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v1, v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v1, v1, Lfr/testudo/spacecorsair/game/Game;->currentLevel:Lfr/testudo/spacecorsair/game/levels/Level;

    iget-object v1, v1, Lfr/testudo/spacecorsair/game/levels/Level;->toAddAnimated:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4
.end method

.method public onFightDesengage()V
    .registers 3

    .prologue
    .line 243
    invoke-direct {p0}, Lfr/testudo/spacecorsair/business/ennemis/AlienBlatte;->resetRemainingPopEnemies()V

    .line 244
    iget v0, p0, Lfr/testudo/spacecorsair/business/ennemis/AlienBlatte;->maxLife:F

    invoke-virtual {p0, v0}, Lfr/testudo/spacecorsair/business/ennemis/AlienBlatte;->setNewLife(F)V

    .line 245
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/ennemis/AlienBlatte;->lifeBar:Lfr/testudo/spacecorsair/display/hud/InfoBarEnnemis;

    iget v1, p0, Lfr/testudo/spacecorsair/business/ennemis/AlienBlatte;->lifeInPourc:F

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/display/hud/InfoBarEnnemis;->setValue(F)V

    .line 246
    return-void
.end method

.method public onMissileLockedOnMe(Lfr/testudo/spacecorsair/business/projectiles/Missile;)V
    .registers 6

    .prologue
    .line 82
    invoke-super {p0, p1}, Lfr/testudo/spacecorsair/business/ennemis/AlienEnemy;->onMissileLockedOnMe(Lfr/testudo/spacecorsair/business/projectiles/Missile;)V

    .line 84
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v0

    const-wide v2, 0x3fe99999a0000000L    # 0.800000011920929

    cmpg-double v0, v0, v2

    if-gez v0, :cond_13

    .line 85
    invoke-virtual {p0, p1}, Lfr/testudo/spacecorsair/business/ennemis/AlienBlatte;->shootCounterMesure(Lfr/testudo/spacecorsair/business/projectiles/Missile;)V

    .line 88
    :cond_13
    return-void
.end method

.method public popEnemy()V
    .registers 11

    .prologue
    const/high16 v6, 0x41600000    # 14.0f

    .line 341
    iget v0, p0, Lfr/testudo/spacecorsair/business/ennemis/AlienBlatte;->remainingPopEnemies:I

    if-gtz v0, :cond_7

    .line 377
    :goto_6
    return-void

    .line 345
    :cond_7
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/ennemis/AlienBlatte;->popEnemisType:Lfr/testudo/spacecorsair/business/ennemis/EnnemisType;

    .line 346
    iget-object v1, p0, Lfr/testudo/spacecorsair/business/ennemis/AlienBlatte;->popEnemisType:Lfr/testudo/spacecorsair/business/ennemis/EnnemisType;

    sget-object v2, Lfr/testudo/spacecorsair/business/ennemis/EnnemisType;->ALIEN_RAT:Lfr/testudo/spacecorsair/business/ennemis/EnnemisType;

    invoke-virtual {v1, v2}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisType;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_22

    .line 347
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v2

    const-wide v4, 0x3fb3333333333333L    # 0.075

    cmpg-double v1, v2, v4

    if-gez v1, :cond_22

    .line 348
    sget-object v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisType;->UFO_ALIEN:Lfr/testudo/spacecorsair/business/ennemis/EnnemisType;

    .line 352
    :cond_22
    iget v1, p0, Lfr/testudo/spacecorsair/business/ennemis/AlienBlatte;->level:I

    add-int/lit8 v1, v1, -0x1

    iget v2, p0, Lfr/testudo/spacecorsair/business/ennemis/AlienBlatte;->level:I

    add-int/lit8 v2, v2, 0x1

    invoke-static {v0, v1, v2}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisFactory;->newEnnemis(Lfr/testudo/spacecorsair/business/ennemis/EnnemisType;II)Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    move-result-object v0

    .line 353
    iget v1, p0, Lfr/testudo/spacecorsair/business/ennemis/AlienBlatte;->spin:F

    const/high16 v2, 0x43340000    # 180.0f

    add-float/2addr v1, v2

    iput v1, v0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->spin:F

    .line 354
    iget v1, v0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->spin:F

    const/high16 v2, 0x42b40000    # 90.0f

    sub-float/2addr v1, v2

    float-to-double v2, v1

    invoke-static {v2, v3}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v2

    .line 355
    iget-object v1, v0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->speed:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    double-to-float v4, v4

    mul-float/2addr v4, v6

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    double-to-float v2, v2

    mul-float/2addr v2, v6

    invoke-virtual {v1, v4, v2}, Lfr/testudo/spacecorsair/engine/Vector2;->set(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 356
    iget-object v1, v0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget-object v2, p0, Lfr/testudo/spacecorsair/business/ennemis/AlienBlatte;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v1, v2}, Lfr/testudo/spacecorsair/engine/Vector2;->setSameAs(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 357
    iget v1, p0, Lfr/testudo/spacecorsair/business/ennemis/AlienBlatte;->desengagementDistance:F

    iput v1, v0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->desengagementDistance:F

    .line 358
    iget-object v1, p0, Lfr/testudo/spacecorsair/business/ennemis/AlienBlatte;->attackTarget:Lfr/testudo/spacecorsair/business/Element;

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->initAttackTarget(Lfr/testudo/spacecorsair/business/Element;)V

    .line 359
    iget-boolean v1, p0, Lfr/testudo/spacecorsair/business/ennemis/AlienBlatte;->elite:Z

    if-eqz v1, :cond_67

    .line 360
    invoke-virtual {v0}, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->setElite()Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    .line 363
    :cond_67
    sget-object v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v1, v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->currentMission:Lfr/testudo/spacecorsair/business/mission/Mission;

    if-eqz v1, :cond_83

    sget-object v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v1, v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->currentMission:Lfr/testudo/spacecorsair/business/mission/Mission;

    iget-object v1, v1, Lfr/testudo/spacecorsair/business/mission/Mission;->missionId:Ljava/lang/String;

    const-string v2, "OMICRON_PRIME_DEFEND_CIVILIANS"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_83

    .line 365
    iget-object v1, p0, Lfr/testudo/spacecorsair/business/ennemis/AlienBlatte;->missionObjectiveColor:Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;

    iput-object v1, v0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->missionObjectiveColor:Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;

    .line 366
    iget-boolean v1, p0, Lfr/testudo/spacecorsair/business/ennemis/AlienBlatte;->isMissionObjective:Z

    iput-boolean v1, v0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->isMissionObjective:Z

    .line 369
    :cond_83
    invoke-virtual {v0}, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->addToCurrentLevel()V

    .line 370
    iget-boolean v1, p0, Lfr/testudo/spacecorsair/business/ennemis/AlienBlatte;->isDestroyAnimation:Z

    if-eqz v1, :cond_a8

    .line 372
    iget v1, v0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->life:F

    const-wide v2, 0x3fb99999a0000000L    # 0.10000000149011612

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v6

    const-wide/high16 v8, 0x4008000000000000L    # 3.0

    mul-double/2addr v6, v8

    add-double/2addr v4, v6

    mul-double/2addr v2, v4

    double-to-float v2, v2

    mul-float/2addr v1, v2

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->setNewLife(F)V

    .line 373
    iget-object v1, v0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->lifeBar:Lfr/testudo/spacecorsair/display/hud/InfoBarEnnemis;

    iget v0, v0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->lifeInPourc:F

    invoke-virtual {v1, v0}, Lfr/testudo/spacecorsair/display/hud/InfoBarEnnemis;->setValue(F)V

    .line 375
    :cond_a8
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->soundManager:Lfr/testudo/spacecorsair/engine/SoundManager;

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/engine/SoundManager;->playMissileStart()V

    .line 376
    iget v0, p0, Lfr/testudo/spacecorsair/business/ennemis/AlienBlatte;->remainingPopEnemies:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lfr/testudo/spacecorsair/business/ennemis/AlienBlatte;->remainingPopEnemies:I

    goto/16 :goto_6
.end method

.method public pruneColide(Lfr/testudo/spacecorsair/business/Element;)Z
    .registers 11

    .prologue
    const/4 v1, 0x0

    .line 205
    iget v0, p0, Lfr/testudo/spacecorsair/business/ennemis/AlienBlatte;->spin:F

    float-to-double v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v2

    move v0, v1

    .line 208
    :goto_9
    sget v4, Lfr/testudo/spacecorsair/business/ennemis/AlienBlatte;->COLIDE_POINT_COUNT:I

    if-ge v0, v4, :cond_4b

    .line 210
    iget-object v4, p0, Lfr/testudo/spacecorsair/business/ennemis/AlienBlatte;->tempVector:Lfr/testudo/spacecorsair/engine/Vector2;

    sget-object v5, Lfr/testudo/spacecorsair/business/ennemis/AlienBlatte;->colidePoints:[Lfr/testudo/spacecorsair/engine/ColidePoint;

    aget-object v5, v5, v0

    iget-object v5, v5, Lfr/testudo/spacecorsair/engine/ColidePoint;->point:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v4, v5}, Lfr/testudo/spacecorsair/engine/Vector2;->setSameAs(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 211
    iget-object v4, p0, Lfr/testudo/spacecorsair/business/ennemis/AlienBlatte;->tempVector:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v4, v2, v3}, Lfr/testudo/spacecorsair/engine/Vector2;->applyRotatation(D)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 212
    iget-object v4, p0, Lfr/testudo/spacecorsair/business/ennemis/AlienBlatte;->tempVector:Lfr/testudo/spacecorsair/engine/Vector2;

    iget-object v5, p0, Lfr/testudo/spacecorsair/business/ennemis/AlienBlatte;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v4, v5}, Lfr/testudo/spacecorsair/engine/Vector2;->add(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 214
    iget-object v4, p0, Lfr/testudo/spacecorsair/business/ennemis/AlienBlatte;->tempVector:Lfr/testudo/spacecorsair/engine/Vector2;

    iget-object v5, p1, Lfr/testudo/spacecorsair/business/Element;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v4, v5}, Lfr/testudo/spacecorsair/engine/Vector2;->distance2(Lfr/testudo/spacecorsair/engine/Vector2;)F

    move-result v4

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    .line 215
    sget-object v6, Lfr/testudo/spacecorsair/business/ennemis/AlienBlatte;->colidePoints:[Lfr/testudo/spacecorsair/engine/ColidePoint;

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

    .line 217
    const-wide/16 v6, 0x0

    cmpg-double v4, v4, v6

    if-gtz v4, :cond_4c

    .line 218
    const/4 v1, 0x1

    .line 222
    :cond_4b
    return v1

    .line 208
    :cond_4c
    add-int/lit8 v0, v0, 0x1

    goto :goto_9
.end method

.method public realDestroy()V
    .registers 6

    .prologue
    .line 529
    iget-boolean v0, p0, Lfr/testudo/spacecorsair/business/ennemis/AlienBlatte;->wasPlayerLootable:Z

    invoke-super {p0, v0}, Lfr/testudo/spacecorsair/business/ennemis/AlienEnemy;->onDestroyed(Z)V

    .line 530
    invoke-static {}, Lfr/testudo/spacecorsair/business/factory/GamePools;->newShockWave()Lfr/testudo/spacecorsair/display/ShockWave;

    move-result-object v0

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/ennemis/AlienBlatte;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    const/high16 v2, 0x43480000    # 200.0f

    const v3, 0x44b54000    # 1450.0f

    const v4, 0x44228000    # 650.0f

    invoke-virtual {v0, v1, v2, v3, v4}, Lfr/testudo/spacecorsair/display/ShockWave;->init(Lfr/testudo/spacecorsair/engine/Vector2;FFF)Lfr/testudo/spacecorsair/display/ShockWave;

    move-result-object v0

    .line 531
    const v1, 0x3f008081

    iput v1, v0, Lfr/testudo/spacecorsair/display/ShockWave;->r:F

    .line 532
    const v1, 0x3ed4d4d5

    iput v1, v0, Lfr/testudo/spacecorsair/display/ShockWave;->g:F

    .line 533
    const v1, 0x3f0e8e8f

    iput v1, v0, Lfr/testudo/spacecorsair/display/ShockWave;->b:F

    .line 535
    sget-object v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v1, v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v1, v1, Lfr/testudo/spacecorsair/game/Game;->currentLevel:Lfr/testudo/spacecorsair/game/levels/Level;

    iget-object v1, v1, Lfr/testudo/spacecorsair/game/levels/Level;->toAddDrawOnly:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 537
    const/4 v0, 0x7

    invoke-static {p0, v0}, Lfr/testudo/spacecorsair/display/ParticuleFactory;->addGreen(Lfr/testudo/spacecorsair/business/Element;I)V

    .line 540
    return-void
.end method

.method public registerYourselfToDrawQueue()V
    .registers 16

    .prologue
    const-wide/high16 v12, 0x4044000000000000L    # 40.0

    const-wide/high16 v10, -0x3fcc000000000000L    # -20.0

    const/4 v3, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    const/high16 v14, 0x40000000    # 2.0f

    .line 412
    invoke-super {p0}, Lfr/testudo/spacecorsair/business/ennemis/AlienEnemy;->registerYourselfToDrawQueue()V

    .line 415
    iget-boolean v0, p0, Lfr/testudo/spacecorsair/business/ennemis/AlienBlatte;->laserBeamActive:Z

    if-eqz v0, :cond_51

    iget-object v0, p0, Lfr/testudo/spacecorsair/business/ennemis/AlienBlatte;->attackTarget:Lfr/testudo/spacecorsair/business/Element;

    if-eqz v0, :cond_51

    iget-object v0, p0, Lfr/testudo/spacecorsair/business/ennemis/AlienBlatte;->attackTarget:Lfr/testudo/spacecorsair/business/Element;

    iget-boolean v0, v0, Lfr/testudo/spacecorsair/business/Element;->removed:Z

    if-nez v0, :cond_51

    move v8, v3

    .line 416
    :goto_1b
    const/4 v0, 0x3

    if-ge v8, v0, :cond_51

    .line 417
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/ennemis/AlienBlatte;->tempVector:Lfr/testudo/spacecorsair/engine/Vector2;

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/ennemis/AlienBlatte;->attackTarget:Lfr/testudo/spacecorsair/business/Element;

    invoke-static {p0, v1}, Lfr/testudo/spacecorsair/mod/ModWreck;->beamTarget(Lfr/testudo/spacecorsair/business/Element;Lfr/testudo/spacecorsair/business/Element;)Lfr/testudo/spacecorsair/business/Element;

    move-result-object v1

    iget-object v1, v1, Lfr/testudo/spacecorsair/business/Element;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/engine/Vector2;->setSameAs(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    move-result-object v0

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v6

    mul-double/2addr v6, v12

    add-double/2addr v6, v10

    double-to-float v1, v6

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v6

    mul-double/2addr v6, v12

    add-double/2addr v6, v10

    double-to-float v2, v6

    invoke-virtual {v0, v1, v2}, Lfr/testudo/spacecorsair/engine/Vector2;->add(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 418
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->renderQueue:Lfr/testudo/spacecorsair/engine/RenderQueue;

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/ennemis/AlienBlatte;->tempVector:Lfr/testudo/spacecorsair/engine/Vector2;

    iget-object v2, p0, Lfr/testudo/spacecorsair/business/ennemis/AlienBlatte;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    const v5, 0x3f2aaaab

    const v6, 0x3e70f0f1

    const v7, 0x3f34b4b5

    invoke-virtual/range {v0 .. v7}, Lfr/testudo/spacecorsair/engine/RenderQueue;->addToWaitingQueue(Lfr/testudo/spacecorsair/engine/Vector2;Lfr/testudo/spacecorsair/engine/Vector2;ZFFFF)V

    .line 416
    add-int/lit8 v0, v8, 0x1

    move v8, v0

    goto :goto_1b

    .line 423
    :cond_51
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/ennemis/AlienBlatte;->tempVector:Lfr/testudo/spacecorsair/engine/Vector2;

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/ennemis/AlienBlatte;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/engine/Vector2;->setSameAs(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 424
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/ennemis/AlienBlatte;->tempVector:Lfr/testudo/spacecorsair/engine/Vector2;

    sget-object v1, Lfr/testudo/spacecorsair/business/ennemis/AlienBlatte;->drawable:Lfr/testudo/spacecorsair/display/Drawable;

    iget-object v1, v1, Lfr/testudo/spacecorsair/display/Drawable;->dimensions:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v1, v1, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    neg-float v1, v1

    div-float/2addr v1, v14

    const/high16 v2, 0x43110000    # 145.0f

    add-float/2addr v1, v2

    sget-object v2, Lfr/testudo/spacecorsair/business/ennemis/AlienBlatte;->drawable:Lfr/testudo/spacecorsair/display/Drawable;

    iget-object v2, v2, Lfr/testudo/spacecorsair/display/Drawable;->dimensions:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v2, v2, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    div-float/2addr v2, v14

    const/high16 v5, 0x43250000    # 165.0f

    sub-float/2addr v2, v5

    invoke-virtual {v0, v1, v2}, Lfr/testudo/spacecorsair/engine/Vector2;->add(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 425
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v5, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->renderQueue:Lfr/testudo/spacecorsair/engine/RenderQueue;

    iget-object v6, p0, Lfr/testudo/spacecorsair/business/ennemis/AlienBlatte;->tempVector:Lfr/testudo/spacecorsair/engine/Vector2;

    iget-object v8, p0, Lfr/testudo/spacecorsair/business/ennemis/AlienBlatte;->levelStr:Ljava/lang/String;

    iget v9, p0, Lfr/testudo/spacecorsair/business/ennemis/AlienBlatte;->levelColorR:F

    iget v10, p0, Lfr/testudo/spacecorsair/business/ennemis/AlienBlatte;->levelColorG:F

    iget v11, p0, Lfr/testudo/spacecorsair/business/ennemis/AlienBlatte;->levelColorB:F

    const v12, 0x3f4ccccd    # 0.8f

    sget-object v13, Lfr/testudo/spacecorsair/textengine/TextSize;->MEDIUM:Lfr/testudo/spacecorsair/textengine/TextSize;

    move v7, v3

    invoke-virtual/range {v5 .. v13}, Lfr/testudo/spacecorsair/engine/RenderQueue;->addTextToTextWaitingQueue(Lfr/testudo/spacecorsair/engine/Vector2;ZLjava/lang/String;FFFFLfr/testudo/spacecorsair/textengine/TextSize;)V

    .line 428
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/ennemis/AlienBlatte;->tempVector:Lfr/testudo/spacecorsair/engine/Vector2;

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/ennemis/AlienBlatte;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/engine/Vector2;->setSameAs(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 429
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/ennemis/AlienBlatte;->tempVector:Lfr/testudo/spacecorsair/engine/Vector2;

    const/high16 v1, 0x41f00000    # 30.0f

    const/high16 v2, -0x3cea0000    # -150.0f

    invoke-virtual {v0, v1, v2}, Lfr/testudo/spacecorsair/engine/Vector2;->add(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 430
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->renderQueue:Lfr/testudo/spacecorsair/engine/RenderQueue;

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/ennemis/AlienBlatte;->tempVector:Lfr/testudo/spacecorsair/engine/Vector2;

    iget-object v2, p0, Lfr/testudo/spacecorsair/business/ennemis/AlienBlatte;->lifeBar:Lfr/testudo/spacecorsair/display/hud/InfoBarEnnemis;

    invoke-virtual {v0, v1, v2}, Lfr/testudo/spacecorsair/engine/RenderQueue;->addToWaitingQueue(Lfr/testudo/spacecorsair/engine/Vector2;Lfr/testudo/spacecorsair/display/hud/InfoBar;)V

    .line 433
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/ennemis/AlienBlatte;->specificName:Ljava/lang/String;

    if-eqz v0, :cond_f0

    .line 435
    iget v0, p0, Lfr/testudo/spacecorsair/business/ennemis/AlienBlatte;->specificNameDecalX:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_b9

    .line 436
    sget-object v0, Lfr/testudo/spacecorsair/engine/GameRenderer;->glTextLarge:Lfr/testudo/spacecorsair/textengine/GLText;

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/ennemis/AlienBlatte;->specificName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/textengine/GLText;->getLength(Ljava/lang/String;)F

    move-result v0

    div-float/2addr v0, v14

    float-to-int v0, v0

    iput v0, p0, Lfr/testudo/spacecorsair/business/ennemis/AlienBlatte;->specificNameDecalX:I

    .line 438
    :cond_b9
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/ennemis/AlienBlatte;->tempVector:Lfr/testudo/spacecorsair/engine/Vector2;

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/ennemis/AlienBlatte;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/engine/Vector2;->setSameAs(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    move-result-object v0

    iget v1, p0, Lfr/testudo/spacecorsair/business/ennemis/AlienBlatte;->specificNameDecalX:I

    neg-int v1, v1

    int-to-float v1, v1

    sget-object v2, Lfr/testudo/spacecorsair/business/ennemis/AlienBlatte;->drawable:Lfr/testudo/spacecorsair/display/Drawable;

    iget-object v2, v2, Lfr/testudo/spacecorsair/display/Drawable;->dimensions:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v2, v2, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    div-float/2addr v2, v14

    const/high16 v5, 0x42e60000    # 115.0f

    sub-float/2addr v2, v5

    invoke-virtual {v0, v1, v2}, Lfr/testudo/spacecorsair/engine/Vector2;->add(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 440
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v5, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->renderQueue:Lfr/testudo/spacecorsair/engine/RenderQueue;

    iget-object v6, p0, Lfr/testudo/spacecorsair/business/ennemis/AlienBlatte;->tempVector:Lfr/testudo/spacecorsair/engine/Vector2;

    iget-object v8, p0, Lfr/testudo/spacecorsair/business/ennemis/AlienBlatte;->specificName:Ljava/lang/String;

    sget-object v0, Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;->ORANGE:Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;

    iget v9, v0, Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;->r:F

    sget-object v0, Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;->ORANGE:Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;

    iget v10, v0, Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;->g:F

    sget-object v0, Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;->ORANGE:Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;

    iget v11, v0, Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;->b:F

    sget-object v0, Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;->ORANGE:Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;

    iget v12, v0, Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;->a:F

    sget-object v13, Lfr/testudo/spacecorsair/textengine/TextSize;->LARGE:Lfr/testudo/spacecorsair/textengine/TextSize;

    move v7, v3

    invoke-virtual/range {v5 .. v13}, Lfr/testudo/spacecorsair/engine/RenderQueue;->addTextToTextWaitingQueue(Lfr/testudo/spacecorsair/engine/Vector2;ZLjava/lang/String;FFFFLfr/testudo/spacecorsair/textengine/TextSize;)V

    .line 444
    :cond_f0
    iget-boolean v0, p0, Lfr/testudo/spacecorsair/business/ennemis/AlienBlatte;->elite:Z

    if-eqz v0, :cond_125

    .line 445
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/ennemis/AlienBlatte;->tempVector:Lfr/testudo/spacecorsair/engine/Vector2;

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/ennemis/AlienBlatte;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/engine/Vector2;->setSameAs(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    move-result-object v0

    sget-object v1, Lfr/testudo/spacecorsair/business/ennemis/AlienBlatte;->drawable:Lfr/testudo/spacecorsair/display/Drawable;

    iget-object v1, v1, Lfr/testudo/spacecorsair/display/Drawable;->dimensions:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v1, v1, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    div-float/2addr v1, v14

    const/high16 v2, 0x42c80000    # 100.0f

    sub-float/2addr v1, v2

    sget-object v2, Lfr/testudo/spacecorsair/business/ennemis/AlienBlatte;->drawable:Lfr/testudo/spacecorsair/display/Drawable;

    iget-object v2, v2, Lfr/testudo/spacecorsair/display/Drawable;->dimensions:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v2, v2, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    div-float/2addr v2, v14

    const/high16 v5, 0x43120000    # 146.0f

    sub-float/2addr v2, v5

    invoke-virtual {v0, v1, v2}, Lfr/testudo/spacecorsair/engine/Vector2;->add(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 446
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v5, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->renderQueue:Lfr/testudo/spacecorsair/engine/RenderQueue;

    iget-object v6, p0, Lfr/testudo/spacecorsair/business/ennemis/AlienBlatte;->tempVector:Lfr/testudo/spacecorsair/engine/Vector2;

    sget-object v8, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->ELITE_MARK_SIZE_BIG:Lfr/testudo/spacecorsair/display/Drawable;

    const/high16 v9, 0x43340000    # 180.0f

    move v7, v3

    move v10, v4

    move v11, v4

    move v12, v4

    move v13, v4

    invoke-virtual/range {v5 .. v13}, Lfr/testudo/spacecorsair/engine/RenderQueue;->addToWaitingQueue(Lfr/testudo/spacecorsair/engine/Vector2;ZLfr/testudo/spacecorsair/display/Drawable;FFFFF)V

    .line 453
    :cond_125
    return-void
.end method

.method public setElite()Lfr/testudo/spacecorsair/business/ennemis/Ennemis;
    .registers 3

    .prologue
    const/high16 v1, 0x40800000    # 4.0f

    .line 398
    invoke-super {p0}, Lfr/testudo/spacecorsair/business/ennemis/AlienEnemy;->setElite()Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    .line 399
    iget v0, p0, Lfr/testudo/spacecorsair/business/ennemis/AlienBlatte;->xp:I

    mul-int/lit8 v0, v0, 0x4

    iput v0, p0, Lfr/testudo/spacecorsair/business/ennemis/AlienBlatte;->xp:I

    .line 400
    iget v0, p0, Lfr/testudo/spacecorsair/business/ennemis/AlienBlatte;->life:F

    mul-float/2addr v0, v1

    iput v0, p0, Lfr/testudo/spacecorsair/business/ennemis/AlienBlatte;->life:F

    .line 401
    iget v0, p0, Lfr/testudo/spacecorsair/business/ennemis/AlienBlatte;->maxLife:F

    mul-float/2addr v0, v1

    iput v0, p0, Lfr/testudo/spacecorsair/business/ennemis/AlienBlatte;->maxLife:F

    .line 402
    iget v0, p0, Lfr/testudo/spacecorsair/business/ennemis/AlienBlatte;->bulletDamage:F

    const/high16 v1, 0x40400000    # 3.0f

    mul-float/2addr v0, v1

    iput v0, p0, Lfr/testudo/spacecorsair/business/ennemis/AlienBlatte;->bulletDamage:F

    .line 403
    iget-wide v0, p0, Lfr/testudo/spacecorsair/business/ennemis/AlienBlatte;->milleSecBetweenShots:J

    long-to-float v0, v0

    const v1, 0x3f19999a    # 0.6f

    mul-float/2addr v0, v1

    float-to-long v0, v0

    iput-wide v0, p0, Lfr/testudo/spacecorsair/business/ennemis/AlienBlatte;->milleSecBetweenShots:J

    .line 404
    iget v0, p0, Lfr/testudo/spacecorsair/business/ennemis/AlienBlatte;->radarPointSize:F

    const/high16 v1, 0x40000000    # 2.0f

    add-float/2addr v0, v1

    iput v0, p0, Lfr/testudo/spacecorsair/business/ennemis/AlienBlatte;->radarPointSize:F

    .line 406
    return-object p0
.end method

.method public shootCounterMesure(Lfr/testudo/spacecorsair/business/projectiles/Missile;)V
    .registers 11

    .prologue
    const/high16 v8, 0x3f800000    # 1.0f

    .line 459
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/ennemis/AlienBlatte;->tempVector:Lfr/testudo/spacecorsair/engine/Vector2;

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/ennemis/AlienBlatte;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/engine/Vector2;->setSameAs(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 461
    sget-object v0, Lfr/testudo/spacecorsair/business/ennemis/AlienBlatte;->calcVect:Lfr/testudo/spacecorsair/engine/Vector2;

    iget-object v1, p1, Lfr/testudo/spacecorsair/business/projectiles/Missile;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/engine/Vector2;->setSameAs(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 463
    sget-object v0, Lfr/testudo/spacecorsair/business/ennemis/AlienBlatte;->calcVect:Lfr/testudo/spacecorsair/engine/Vector2;

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/ennemis/AlienBlatte;->tempVector:Lfr/testudo/spacecorsair/engine/Vector2;

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

    if-lez v0, :cond_85

    const/4 v0, 0x1

    :goto_2e
    mul-int/lit8 v0, v0, 0x2d

    int-to-double v0, v0

    sub-double v0, v2, v0

    .line 465
    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v2

    .line 467
    invoke-static {}, Lfr/testudo/spacecorsair/business/factory/GamePools;->newVortexProjectile()Lfr/testudo/spacecorsair/business/projectiles/VortexProjectile;

    move-result-object v4

    iget v5, p0, Lfr/testudo/spacecorsair/business/ennemis/AlienBlatte;->bulletDamage:F

    const/high16 v6, 0x40a00000    # 5.0f

    mul-float/2addr v5, v6

    iget v6, p0, Lfr/testudo/spacecorsair/business/ennemis/AlienBlatte;->bulletLifeTime:I

    iget-object v7, p0, Lfr/testudo/spacecorsair/business/ennemis/AlienBlatte;->specialLaserAlteration:Lfr/testudo/spacecorsair/business/loot/stuff/alteration/AlterationSpecs;

    invoke-virtual {v4, v5, v6, p0, v7}, Lfr/testudo/spacecorsair/business/projectiles/VortexProjectile;->init(FILfr/testudo/spacecorsair/business/Element;Lfr/testudo/spacecorsair/business/loot/stuff/alteration/AlterationSpecs;)Lfr/testudo/spacecorsair/business/projectiles/VortexProjectile;

    move-result-object v4

    .line 469
    iput v8, v4, Lfr/testudo/spacecorsair/business/projectiles/VortexProjectile;->r:F

    .line 470
    iput v8, v4, Lfr/testudo/spacecorsair/business/projectiles/VortexProjectile;->g:F

    .line 471
    iput v8, v4, Lfr/testudo/spacecorsair/business/projectiles/VortexProjectile;->b:F

    .line 473
    iget-object v5, v4, Lfr/testudo/spacecorsair/business/projectiles/VortexProjectile;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget-object v6, p0, Lfr/testudo/spacecorsair/business/ennemis/AlienBlatte;->tempVector:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v5, v6}, Lfr/testudo/spacecorsair/engine/Vector2;->setSameAs(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 474
    iget-object v5, v4, Lfr/testudo/spacecorsair/business/projectiles/VortexProjectile;->speed:Lfr/testudo/spacecorsair/engine/Vector2;

    const/4 v6, 0x0

    const/high16 v7, -0x3f200000    # -7.0f

    invoke-virtual {v5, v6, v7}, Lfr/testudo/spacecorsair/engine/Vector2;->set(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 475
    const-wide/16 v6, 0x1f40

    iput-wide v6, v4, Lfr/testudo/spacecorsair/business/projectiles/VortexProjectile;->lifeTimeInMilli:J

    .line 476
    iget-object v5, v4, Lfr/testudo/spacecorsair/business/projectiles/VortexProjectile;->speed:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v5, v2, v3}, Lfr/testudo/spacecorsair/engine/Vector2;->applyRotatation(D)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 478
    double-to-int v0, v0

    int-to-float v0, v0

    iput v0, v4, Lfr/testudo/spacecorsair/business/projectiles/VortexProjectile;->spin:F

    .line 480
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/Game;->currentLevel:Lfr/testudo/spacecorsair/game/levels/Level;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/levels/Level;->toAdd:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 483
    invoke-static {p0, p1}, Lfr/testudo/spacecorsair/business/Util;->isLaserOrMissileSoundEarable(Lfr/testudo/spacecorsair/business/Element;Lfr/testudo/spacecorsair/business/Element;)Z

    move-result v0

    if-eqz v0, :cond_82

    .line 484
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->soundManager:Lfr/testudo/spacecorsair/engine/SoundManager;

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/engine/SoundManager;->playAlienRatLaser()V

    .line 487
    :cond_82
    iput-object v4, p1, Lfr/testudo/spacecorsair/business/projectiles/Missile;->target:Lfr/testudo/spacecorsair/business/Element;

    .line 490
    return-void

    .line 463
    :cond_85
    const/4 v0, -0x1

    goto :goto_2e
.end method

.method public shootRootBullet(Lfr/testudo/spacecorsair/business/Element;)V
    .registers 10

    .prologue
    const/high16 v4, 0x447a0000    # 1000.0f

    const/high16 v3, 0x41200000    # 10.0f

    .line 251
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/ennemis/AlienBlatte;->tempVector:Lfr/testudo/spacecorsair/engine/Vector2;

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/ennemis/AlienBlatte;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/engine/Vector2;->setSameAs(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 253
    sget-object v0, Lfr/testudo/spacecorsair/business/ennemis/AlienBlatte;->calcVect:Lfr/testudo/spacecorsair/engine/Vector2;

    iget-object v1, p1, Lfr/testudo/spacecorsair/business/Element;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/engine/Vector2;->setSameAs(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 254
    sget-object v0, Lfr/testudo/spacecorsair/business/ennemis/AlienBlatte;->calcVect:Lfr/testudo/spacecorsair/engine/Vector2;

    iget-object v1, p1, Lfr/testudo/spacecorsair/business/Element;->speed:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v1, v1, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    mul-float/2addr v1, v4

    div-float/2addr v1, v3

    iget-object v2, p1, Lfr/testudo/spacecorsair/business/Element;->speed:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v2, v2, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    mul-float/2addr v2, v4

    div-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Lfr/testudo/spacecorsair/engine/Vector2;->add(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 256
    sget-object v0, Lfr/testudo/spacecorsair/business/ennemis/AlienBlatte;->calcVect:Lfr/testudo/spacecorsair/engine/Vector2;

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/ennemis/AlienBlatte;->tempVector:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/engine/Vector2;->getAngularWithInRad(Lfr/testudo/spacecorsair/engine/Vector2;)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v0

    iget v2, p0, Lfr/testudo/spacecorsair/business/ennemis/AlienBlatte;->shootPrecision:F

    float-to-double v2, v2

    sub-double/2addr v0, v2

    iget v2, p0, Lfr/testudo/spacecorsair/business/ennemis/AlienBlatte;->shootPrecision:F

    const/high16 v3, 0x40000000    # 2.0f

    mul-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v4

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    const-wide v2, 0x4056800000000000L    # 90.0

    sub-double/2addr v0, v2

    .line 258
    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v2

    .line 260
    invoke-static {}, Lfr/testudo/spacecorsair/business/factory/GamePools;->newElectricBullet()Lfr/testudo/spacecorsair/business/projectiles/ElectricBullet;

    move-result-object v4

    iget v5, p0, Lfr/testudo/spacecorsair/business/ennemis/AlienBlatte;->bulletDamage:F

    iget v6, p0, Lfr/testudo/spacecorsair/business/ennemis/AlienBlatte;->bulletLifeTime:I

    mul-int/lit8 v6, v6, 0x2

    sget-object v7, Lfr/testudo/spacecorsair/business/loot/stuff/alteration/AlterationSpecsBuilder;->root100_8sec:Lfr/testudo/spacecorsair/business/loot/stuff/alteration/AlterationSpecs;

    invoke-virtual {v4, v5, v6, p0, v7}, Lfr/testudo/spacecorsair/business/projectiles/ElectricBullet;->init(FILfr/testudo/spacecorsair/business/Element;Lfr/testudo/spacecorsair/business/loot/stuff/alteration/AlterationSpecs;)Lfr/testudo/spacecorsair/business/projectiles/Projectile;

    move-result-object v4

    .line 263
    iget-object v5, v4, Lfr/testudo/spacecorsair/business/projectiles/Projectile;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget-object v6, p0, Lfr/testudo/spacecorsair/business/ennemis/AlienBlatte;->tempVector:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v5, v6}, Lfr/testudo/spacecorsair/engine/Vector2;->setSameAs(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 264
    iget-object v5, v4, Lfr/testudo/spacecorsair/business/projectiles/Projectile;->speed:Lfr/testudo/spacecorsair/engine/Vector2;

    const/4 v6, 0x0

    const/high16 v7, -0x3ed00000    # -11.0f

    invoke-virtual {v5, v6, v7}, Lfr/testudo/spacecorsair/engine/Vector2;->set(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 265
    iget-object v5, v4, Lfr/testudo/spacecorsair/business/projectiles/Projectile;->speed:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v5, v2, v3}, Lfr/testudo/spacecorsair/engine/Vector2;->applyRotatation(D)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 267
    double-to-int v0, v0

    int-to-float v0, v0

    iput v0, v4, Lfr/testudo/spacecorsair/business/projectiles/Projectile;->spin:F

    .line 268
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/Game;->currentLevel:Lfr/testudo/spacecorsair/game/levels/Level;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/levels/Level;->toAdd:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 271
    invoke-static {p0, p1}, Lfr/testudo/spacecorsair/business/Util;->isLaserOrMissileSoundEarable(Lfr/testudo/spacecorsair/business/Element;Lfr/testudo/spacecorsair/business/Element;)Z

    move-result v0

    if-eqz v0, :cond_89

    .line 272
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->soundManager:Lfr/testudo/spacecorsair/engine/SoundManager;

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/engine/SoundManager;->playAlienRatLaser()V

    .line 274
    :cond_89
    return-void
.end method

.method public withLaserAlterations(Lfr/testudo/spacecorsair/business/loot/stuff/alteration/AlterationSpecs;)Lfr/testudo/spacecorsair/business/ennemis/Ennemis;
    .registers 3

    .prologue
    .line 519
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/ennemis/AlienBlatte;->fakeProjectile:Lfr/testudo/spacecorsair/business/projectiles/LaserBeam;

    iput-object p1, v0, Lfr/testudo/spacecorsair/business/projectiles/LaserBeam;->alterationSpecs:Lfr/testudo/spacecorsair/business/loot/stuff/alteration/AlterationSpecs;

    .line 520
    return-object p0
.end method
