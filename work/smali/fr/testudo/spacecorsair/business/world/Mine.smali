.class public Lfr/testudo/spacecorsair/business/world/Mine;
.super Lfr/testudo/spacecorsair/business/Element;
.source "SourceFile"


# static fields
.field private static MOOVETOPLAYER_RANGE:I

.field public static drawableDimension:Lfr/testudo/spacecorsair/engine/Vector2;

.field private static mainDrawable:Lfr/testudo/spacecorsair/display/Drawable;

.field public static physicDimension:Lfr/testudo/spacecorsair/engine/Vector2;


# instance fields
.field protected disabled:Z

.field public engaged:Z

.field public mineSpec:Lfr/testudo/spacecorsair/business/ennemis/MineSpec;

.field public remainingBeforeExplode:F


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/high16 v1, 0x42c80000    # 100.0f

    .line 26
    new-instance v0, Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-direct {v0, v1, v1}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>(FF)V

    sput-object v0, Lfr/testudo/spacecorsair/business/world/Mine;->physicDimension:Lfr/testudo/spacecorsair/engine/Vector2;

    .line 28
    sget-object v0, Lfr/testudo/spacecorsair/engine/Vector2;->VECTOR_128:Lfr/testudo/spacecorsair/engine/Vector2;

    sput-object v0, Lfr/testudo/spacecorsair/business/world/Mine;->drawableDimension:Lfr/testudo/spacecorsair/engine/Vector2;

    .line 32
    const/16 v0, 0x190

    sput v0, Lfr/testudo/spacecorsair/business/world/Mine;->MOOVETOPLAYER_RANGE:I

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 52
    invoke-direct {p0}, Lfr/testudo/spacecorsair/business/Element;-><init>()V

    .line 34
    iput-boolean v0, p0, Lfr/testudo/spacecorsair/business/world/Mine;->disabled:Z

    .line 59
    iput-boolean v0, p0, Lfr/testudo/spacecorsair/business/world/Mine;->engaged:Z

    .line 54
    return-void
.end method

.method public static setTexture(Lfr/testudo/spacecorsair/display/Texture;)V
    .registers 3

    .prologue
    .line 41
    new-instance v0, Lfr/testudo/spacecorsair/display/Drawable;

    sget-object v1, Lfr/testudo/spacecorsair/business/world/Mine;->drawableDimension:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-direct {v0, v1, p0}, Lfr/testudo/spacecorsair/display/Drawable;-><init>(Lfr/testudo/spacecorsair/engine/Vector2;Lfr/testudo/spacecorsair/display/Texture;)V

    sput-object v0, Lfr/testudo/spacecorsair/business/world/Mine;->mainDrawable:Lfr/testudo/spacecorsair/display/Drawable;

    .line 42
    return-void
.end method


# virtual methods
.method public activate()V
    .registers 3

    .prologue
    .line 165
    const/4 v0, 0x1

    iput-boolean v0, p0, Lfr/testudo/spacecorsair/business/world/Mine;->engaged:Z

    .line 166
    iget v0, p0, Lfr/testudo/spacecorsair/business/world/Mine;->distanceToPlayer:F

    const/high16 v1, 0x44fa0000    # 2000.0f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_12

    .line 167
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->soundManager:Lfr/testudo/spacecorsair/engine/SoundManager;

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/engine/SoundManager;->playMineEngaged()V

    .line 170
    :cond_12
    return-void
.end method

.method public applyAsteroidCollision(F)V
    .registers 2

    .prologue
    .line 153
    return-void
.end method

.method public applyRadiusDamage()V
    .registers 11

    .prologue
    const/high16 v2, 0x3f800000    # 1.0f

    .line 196
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/Game;->currentLevel:Lfr/testudo/spacecorsair/game/levels/Level;

    iget-object v4, v0, Lfr/testudo/spacecorsair/game/levels/Level;->elements:Ljava/util/List;

    .line 197
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    .line 198
    const/4 v0, 0x0

    move v3, v0

    :goto_10
    if-ge v3, v5, :cond_9c

    .line 199
    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfr/testudo/spacecorsair/business/Element;

    .line 200
    if-eq v0, p0, :cond_1e

    iget-boolean v1, v0, Lfr/testudo/spacecorsair/business/Element;->removed:Z

    if-eqz v1, :cond_22

    .line 198
    :cond_1e
    :goto_1e
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_10

    .line 204
    :cond_22
    iget-object v1, v0, Lfr/testudo/spacecorsair/business/Element;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget-object v6, p0, Lfr/testudo/spacecorsair/business/world/Mine;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v1, v6}, Lfr/testudo/spacecorsair/engine/Vector2;->distance(Lfr/testudo/spacecorsair/engine/Vector2;)F

    move-result v1

    .line 205
    cmpg-float v6, v1, v2

    if-gez v6, :cond_2f

    move v1, v2

    .line 208
    :cond_2f
    iget-object v6, p0, Lfr/testudo/spacecorsair/business/world/Mine;->mineSpec:Lfr/testudo/spacecorsair/business/ennemis/MineSpec;

    iget v6, v6, Lfr/testudo/spacecorsair/business/ennemis/MineSpec;->damageRange:F

    cmpg-float v6, v1, v6

    if-gez v6, :cond_1e

    .line 212
    iget-object v6, p0, Lfr/testudo/spacecorsair/business/world/Mine;->mineSpec:Lfr/testudo/spacecorsair/business/ennemis/MineSpec;

    iget v6, v6, Lfr/testudo/spacecorsair/business/ennemis/MineSpec;->damageRange:F

    sub-float/2addr v6, v1

    iget-object v7, p0, Lfr/testudo/spacecorsair/business/world/Mine;->mineSpec:Lfr/testudo/spacecorsair/business/ennemis/MineSpec;

    iget v7, v7, Lfr/testudo/spacecorsair/business/ennemis/MineSpec;->damageRange:F

    sub-float/2addr v7, v1

    mul-float/2addr v6, v7

    iget-object v7, p0, Lfr/testudo/spacecorsair/business/world/Mine;->mineSpec:Lfr/testudo/spacecorsair/business/ennemis/MineSpec;

    iget v7, v7, Lfr/testudo/spacecorsair/business/ennemis/MineSpec;->damage_per_pixel:F

    mul-float/2addr v6, v7

    iget-object v7, p0, Lfr/testudo/spacecorsair/business/world/Mine;->mineSpec:Lfr/testudo/spacecorsair/business/ennemis/MineSpec;

    iget v7, v7, Lfr/testudo/spacecorsair/business/ennemis/MineSpec;->damageRange:F

    const/high16 v8, 0x40000000    # 2.0f

    mul-float/2addr v7, v8

    div-float/2addr v6, v7

    .line 217
    const/4 v7, 0x0

    invoke-virtual {v0, v6, p0, v7}, Lfr/testudo/spacecorsair/business/Element;->applyDamage(FLfr/testudo/spacecorsair/business/Element;Lfr/testudo/spacecorsair/business/projectiles/Projectile;)V

    .line 220
    iget-boolean v6, v0, Lfr/testudo/spacecorsair/business/Element;->removed:Z

    if-nez v6, :cond_1e

    .line 223
    iget-object v6, v0, Lfr/testudo/spacecorsair/business/Element;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget-object v7, p0, Lfr/testudo/spacecorsair/business/world/Mine;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v6, v7}, Lfr/testudo/spacecorsair/engine/Vector2;->getAngularWithInRad(Lfr/testudo/spacecorsair/engine/Vector2;)D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v6

    double-to-float v6, v6

    const/high16 v7, 0x43b40000    # 360.0f

    rem-float/2addr v6, v7

    const/high16 v7, 0x42b40000    # 90.0f

    add-float/2addr v6, v7

    invoke-static {v6}, Lfr/testudo/spacecorsair/business/Element;->normalizeSpin(F)F

    move-result v6

    .line 228
    iget-object v7, p0, Lfr/testudo/spacecorsair/business/world/Mine;->mineSpec:Lfr/testudo/spacecorsair/business/ennemis/MineSpec;

    iget v7, v7, Lfr/testudo/spacecorsair/business/ennemis/MineSpec;->mouvement_force:F

    iget-object v8, p0, Lfr/testudo/spacecorsair/business/world/Mine;->mineSpec:Lfr/testudo/spacecorsair/business/ennemis/MineSpec;

    iget v8, v8, Lfr/testudo/spacecorsair/business/ennemis/MineSpec;->damageRange:F

    sub-float v1, v8, v1

    mul-float/2addr v1, v7

    iget-object v7, p0, Lfr/testudo/spacecorsair/business/world/Mine;->mineSpec:Lfr/testudo/spacecorsair/business/ennemis/MineSpec;

    iget v7, v7, Lfr/testudo/spacecorsair/business/ennemis/MineSpec;->damageRange:F

    iget v8, v0, Lfr/testudo/spacecorsair/business/Element;->mass:F

    const/high16 v9, 0x40400000    # 3.0f

    mul-float/2addr v8, v9

    add-float/2addr v7, v8

    div-float/2addr v1, v7

    .line 229
    iget-object v7, p0, Lfr/testudo/spacecorsair/business/world/Mine;->tempVector:Lfr/testudo/spacecorsair/engine/Vector2;

    const/4 v8, 0x0

    invoke-virtual {v7, v8, v1}, Lfr/testudo/spacecorsair/engine/Vector2;->set(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 230
    iget-object v1, p0, Lfr/testudo/spacecorsair/business/world/Mine;->tempVector:Lfr/testudo/spacecorsair/engine/Vector2;

    float-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v6

    invoke-virtual {v1, v6, v7}, Lfr/testudo/spacecorsair/engine/Vector2;->applyRotatation(D)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 231
    iget-object v0, v0, Lfr/testudo/spacecorsair/business/Element;->speed:Lfr/testudo/spacecorsair/engine/Vector2;

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/world/Mine;->tempVector:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/engine/Vector2;->add(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    goto :goto_1e

    .line 239
    :cond_9c
    return-void
.end method

.method public doPhysic(J)V
    .registers 8

    .prologue
    const/4 v4, 0x0

    .line 101
    invoke-super {p0, p1, p2}, Lfr/testudo/spacecorsair/business/Element;->doPhysic(J)V

    .line 102
    iget-boolean v0, p0, Lfr/testudo/spacecorsair/business/world/Mine;->engaged:Z

    if-eqz v0, :cond_1c

    iget-boolean v0, p0, Lfr/testudo/spacecorsair/business/world/Mine;->disabled:Z

    if-nez v0, :cond_1c

    .line 103
    iget v0, p0, Lfr/testudo/spacecorsair/business/world/Mine;->remainingBeforeExplode:F

    long-to-float v1, p1

    sub-float/2addr v0, v1

    iput v0, p0, Lfr/testudo/spacecorsair/business/world/Mine;->remainingBeforeExplode:F

    .line 104
    iget v0, p0, Lfr/testudo/spacecorsair/business/world/Mine;->remainingBeforeExplode:F

    cmpg-float v0, v0, v4

    if-gtz v0, :cond_1c

    .line 105
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lfr/testudo/spacecorsair/business/world/Mine;->onDestroyed(Z)V

    .line 110
    :cond_1c
    iget v0, p0, Lfr/testudo/spacecorsair/business/world/Mine;->distanceToPlayer:F

    sget v1, Lfr/testudo/spacecorsair/business/world/Mine;->MOOVETOPLAYER_RANGE:I

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_7c

    iget-boolean v0, p0, Lfr/testudo/spacecorsair/business/world/Mine;->disabled:Z

    if-nez v0, :cond_7c

    .line 111
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lfr/testudo/spacecorsair/business/world/Mine;->speedDeperditionfactor:F

    .line 113
    invoke-static {}, Lfr/testudo/spacecorsair/business/player/PlayerShip;->instance()Lfr/testudo/spacecorsair/business/player/PlayerShip;

    move-result-object v0

    iget-object v0, v0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/world/Mine;->position:Lfr/testudo/spacecorsair/engine/Vector2;

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

    .line 115
    const v1, 0x3ee66666    # 0.45f

    long-to-float v2, p1

    mul-float/2addr v1, v2

    iget v2, p0, Lfr/testudo/spacecorsair/business/world/Mine;->distanceToPlayer:F

    const/high16 v3, 0x42480000    # 50.0f

    add-float/2addr v2, v3

    div-float/2addr v1, v2

    .line 117
    iget-object v2, p0, Lfr/testudo/spacecorsair/business/world/Mine;->tempVector:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v2, v4, v1}, Lfr/testudo/spacecorsair/engine/Vector2;->set(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 118
    iget-object v1, p0, Lfr/testudo/spacecorsair/business/world/Mine;->tempVector:Lfr/testudo/spacecorsair/engine/Vector2;

    float-to-double v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lfr/testudo/spacecorsair/engine/Vector2;->applyRotatation(D)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 120
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/world/Mine;->speed:Lfr/testudo/spacecorsair/engine/Vector2;

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/world/Mine;->tempVector:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/engine/Vector2;->add(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 122
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/world/Mine;->tempVector:Lfr/testudo/spacecorsair/engine/Vector2;

    const/high16 v1, -0x40600000    # -1.25f

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/engine/Vector2;->multiply(F)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 123
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->playerShip:Lfr/testudo/spacecorsair/business/player/PlayerShip;

    iget-object v0, v0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->speed:Lfr/testudo/spacecorsair/engine/Vector2;

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/world/Mine;->tempVector:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/engine/Vector2;->add(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 127
    :goto_7b
    return-void

    .line 125
    :cond_7c
    const v0, 0x3f808312    # 1.004f

    iput v0, p0, Lfr/testudo/spacecorsair/business/world/Mine;->speedDeperditionfactor:F

    goto :goto_7b
.end method

.method public getDrawableObject()Lfr/testudo/spacecorsair/display/Drawable;
    .registers 2

    .prologue
    .line 95
    sget-object v0, Lfr/testudo/spacecorsair/business/world/Mine;->mainDrawable:Lfr/testudo/spacecorsair/display/Drawable;

    return-object v0
.end method

.method public getLootConfig()Lfr/testudo/spacecorsair/business/loot/LootConfig;
    .registers 2

    .prologue
    .line 158
    const/4 v0, 0x0

    return-object v0
.end method

.method public getMiniDrawableObject()Lfr/testudo/spacecorsair/display/Drawable;
    .registers 2

    .prologue
    .line 47
    const/4 v0, 0x0

    return-object v0
.end method

.method public getPhysicDimension()Lfr/testudo/spacecorsair/engine/Vector2;
    .registers 2

    .prologue
    .line 89
    sget-object v0, Lfr/testudo/spacecorsair/business/world/Mine;->physicDimension:Lfr/testudo/spacecorsair/engine/Vector2;

    return-object v0
.end method

.method public init(Lfr/testudo/spacecorsair/engine/Vector2;Lfr/testudo/spacecorsair/engine/Vector2;FLfr/testudo/spacecorsair/business/ennemis/MineSpec;)Lfr/testudo/spacecorsair/business/world/Mine;
    .registers 9

    .prologue
    const/4 v3, 0x1

    const v2, 0x3f333333    # 0.7f

    const/4 v1, 0x0

    .line 62
    invoke-virtual {p0}, Lfr/testudo/spacecorsair/business/world/Mine;->reset()V

    .line 63
    iput-boolean v3, p0, Lfr/testudo/spacecorsair/business/world/Mine;->ignoreLevelOnDamage:Z

    .line 64
    iget v0, p4, Lfr/testudo/spacecorsair/business/ennemis/MineSpec;->life:F

    iput v0, p0, Lfr/testudo/spacecorsair/business/world/Mine;->life:F

    .line 65
    const/high16 v0, 0x44af0000    # 1400.0f

    iput v0, p0, Lfr/testudo/spacecorsair/business/world/Mine;->mass:F

    .line 66
    invoke-virtual {p0, p1}, Lfr/testudo/spacecorsair/business/world/Mine;->setPosition(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/business/Element;

    .line 67
    invoke-virtual {p0, p2}, Lfr/testudo/spacecorsair/business/world/Mine;->setSpeedVector(Lfr/testudo/spacecorsair/engine/Vector2;)V

    .line 68
    iput p3, p0, Lfr/testudo/spacecorsair/business/world/Mine;->spinSpeed:F

    .line 69
    iput-boolean v1, p0, Lfr/testudo/spacecorsair/business/world/Mine;->drawOnRadar:Z

    .line 70
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lfr/testudo/spacecorsair/business/world/Mine;->r:F

    .line 71
    iput v2, p0, Lfr/testudo/spacecorsair/business/world/Mine;->g:F

    .line 72
    iput v2, p0, Lfr/testudo/spacecorsair/business/world/Mine;->b:F

    .line 74
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->playerShip:Lfr/testudo/spacecorsair/business/player/PlayerShip;

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/business/player/PlayerShip;->getLevel()I

    move-result v0

    iput v0, p0, Lfr/testudo/spacecorsair/business/world/Mine;->level:I

    .line 75
    iput-boolean v3, p0, Lfr/testudo/spacecorsair/business/world/Mine;->hasSpeedDeperdition:Z

    .line 76
    const v0, 0x48f42400    # 500000.0f

    iput v0, p0, Lfr/testudo/spacecorsair/business/world/Mine;->distanceToPlayer:F

    .line 77
    iput-object p4, p0, Lfr/testudo/spacecorsair/business/world/Mine;->mineSpec:Lfr/testudo/spacecorsair/business/ennemis/MineSpec;

    .line 78
    iput-boolean v1, p0, Lfr/testudo/spacecorsair/business/world/Mine;->engaged:Z

    .line 79
    const v0, 0x3f800008    # 1.000001f

    iput v0, p0, Lfr/testudo/spacecorsair/business/world/Mine;->speedDeperditionfactor:F

    .line 80
    iget v0, p4, Lfr/testudo/spacecorsair/business/ennemis/MineSpec;->loadingTimeInMilli:F

    iput v0, p0, Lfr/testudo/spacecorsair/business/world/Mine;->remainingBeforeExplode:F

    .line 81
    iput-boolean v1, p0, Lfr/testudo/spacecorsair/business/world/Mine;->disabled:Z

    .line 82
    return-object p0
.end method

.method public onContactWithElement(Lfr/testudo/spacecorsair/business/Element;)V
    .registers 4

    .prologue
    .line 174
    iget-boolean v0, p0, Lfr/testudo/spacecorsair/business/world/Mine;->disabled:Z

    if-eqz v0, :cond_5

    .line 186
    :cond_4
    :goto_4
    return-void

    .line 177
    :cond_5
    iget-boolean v0, p0, Lfr/testudo/spacecorsair/business/world/Mine;->engaged:Z

    if-nez v0, :cond_4

    iget v0, p0, Lfr/testudo/spacecorsair/business/world/Mine;->distanceToPlayer:F

    const v1, 0x451c4000    # 2500.0f

    cmpl-float v0, v0, v1

    if-gtz v0, :cond_4

    .line 182
    iget-boolean v0, p1, Lfr/testudo/spacecorsair/business/Element;->isPlayer:Z

    if-nez v0, :cond_1e

    instance-of v0, p1, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    if-nez v0, :cond_1e

    instance-of v0, p1, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;

    if-eqz v0, :cond_4

    .line 183
    :cond_1e
    invoke-virtual {p0}, Lfr/testudo/spacecorsair/business/world/Mine;->activate()V

    goto :goto_4
.end method

.method public onDestroyed(Z)V
    .registers 7

    .prologue
    .line 131
    invoke-super {p0, p1}, Lfr/testudo/spacecorsair/business/Element;->onDestroyed(Z)V

    .line 132
    invoke-static {}, Lfr/testudo/spacecorsair/business/factory/GamePools;->newRandomExplode()Lfr/testudo/spacecorsair/display/ExplosionAnim;

    move-result-object v0

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/world/Mine;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v0, v1, p0}, Lfr/testudo/spacecorsair/display/ExplosionAnim;->init(Lfr/testudo/spacecorsair/engine/Vector2;Lfr/testudo/spacecorsair/business/Element;)Lfr/testudo/spacecorsair/display/ExplosionAnim;

    move-result-object v0

    .line 133
    sget-object v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v1, v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v1, v1, Lfr/testudo/spacecorsair/game/Game;->currentLevel:Lfr/testudo/spacecorsair/game/levels/Level;

    iget-object v1, v1, Lfr/testudo/spacecorsair/game/levels/Level;->toAddAnimated:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 137
    invoke-static {}, Lfr/testudo/spacecorsair/business/factory/GamePools;->newShockWave()Lfr/testudo/spacecorsair/display/ShockWave;

    move-result-object v0

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/world/Mine;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    const/high16 v2, 0x42c80000    # 100.0f

    const v3, 0x443b8000    # 750.0f

    const v4, 0x44228000    # 650.0f

    invoke-virtual {v0, v1, v2, v3, v4}, Lfr/testudo/spacecorsair/display/ShockWave;->init(Lfr/testudo/spacecorsair/engine/Vector2;FFF)Lfr/testudo/spacecorsair/display/ShockWave;

    move-result-object v0

    .line 138
    sget-object v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v1, v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v1, v1, Lfr/testudo/spacecorsair/game/Game;->currentLevel:Lfr/testudo/spacecorsair/game/levels/Level;

    iget-object v1, v1, Lfr/testudo/spacecorsair/game/levels/Level;->toAddDrawOnly:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 140
    invoke-virtual {p0}, Lfr/testudo/spacecorsair/business/world/Mine;->applyRadiusDamage()V

    .line 142
    const/16 v0, 0xa

    invoke-static {p0, v0}, Lfr/testudo/spacecorsair/display/ParticuleFactory;->addYellow(Lfr/testudo/spacecorsair/business/Element;I)V

    .line 143
    const/4 v0, 0x5

    invoke-static {p0, v0}, Lfr/testudo/spacecorsair/display/ParticuleFactory;->addRed(Lfr/testudo/spacecorsair/business/Element;I)V

    .line 144
    const/16 v0, 0x8

    invoke-static {p0, v0}, Lfr/testudo/spacecorsair/display/ParticuleFactory;->addWhite(Lfr/testudo/spacecorsair/business/Element;I)V

    .line 148
    return-void
.end method
