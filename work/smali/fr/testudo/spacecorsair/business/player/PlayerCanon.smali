.class public Lfr/testudo/spacecorsair/business/player/PlayerCanon;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final tempVect2:Lfr/testudo/spacecorsair/engine/Vector2;


# instance fields
.field public alreadyFireForThisFinger:Z

.field public alterationSpecs:Lfr/testudo/spacecorsair/business/loot/stuff/alteration/AlterationSpecs;

.field public bulletA:F

.field public bulletB:F

.field public bulletG:F

.field public bulletR:F

.field public currentDeltaSpinWithShip:F

.field public deltaAngleToTarget:F

.field leftCanon:Z

.field public maxSpinSpeed:F

.field public nextShootAllowed:I

.field public parent:Lfr/testudo/spacecorsair/business/player/PlayerShip;

.field public shipPosition:Lfr/testudo/spacecorsair/engine/Vector2;

.field public shootDamage:I

.field public shootLifeTime:I

.field public shootPrecision:I

.field public shootSpeed:F

.field public spinSpeed:F

.field public targetSpin:F

.field public tempVector:Lfr/testudo/spacecorsair/engine/Vector2;

.field public timeBewteenShootInMilli:I

.field public tirGroupe:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 159
    new-instance v0, Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-direct {v0}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>()V

    sput-object v0, Lfr/testudo/spacecorsair/business/player/PlayerCanon;->tempVect2:Lfr/testudo/spacecorsair/engine/Vector2;

    return-void
.end method

.method public constructor <init>(Lfr/testudo/spacecorsair/engine/Vector2;Lfr/testudo/spacecorsair/business/player/PlayerShip;)V
    .registers 7

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    new-instance v0, Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-direct {v0}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>()V

    iput-object v0, p0, Lfr/testudo/spacecorsair/business/player/PlayerCanon;->shipPosition:Lfr/testudo/spacecorsair/engine/Vector2;

    .line 15
    new-instance v0, Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-direct {v0}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>()V

    iput-object v0, p0, Lfr/testudo/spacecorsair/business/player/PlayerCanon;->tempVector:Lfr/testudo/spacecorsair/engine/Vector2;

    .line 16
    iput v3, p0, Lfr/testudo/spacecorsair/business/player/PlayerCanon;->currentDeltaSpinWithShip:F

    .line 17
    iput v3, p0, Lfr/testudo/spacecorsair/business/player/PlayerCanon;->spinSpeed:F

    .line 18
    iput v1, p0, Lfr/testudo/spacecorsair/business/player/PlayerCanon;->maxSpinSpeed:F

    .line 21
    iput v3, p0, Lfr/testudo/spacecorsair/business/player/PlayerCanon;->deltaAngleToTarget:F

    .line 24
    iput v2, p0, Lfr/testudo/spacecorsair/business/player/PlayerCanon;->nextShootAllowed:I

    .line 26
    const/16 v0, 0x578

    iput v0, p0, Lfr/testudo/spacecorsair/business/player/PlayerCanon;->timeBewteenShootInMilli:I

    .line 28
    iput v2, p0, Lfr/testudo/spacecorsair/business/player/PlayerCanon;->shootPrecision:I

    .line 33
    iput v1, p0, Lfr/testudo/spacecorsair/business/player/PlayerCanon;->bulletA:F

    .line 34
    iput v1, p0, Lfr/testudo/spacecorsair/business/player/PlayerCanon;->bulletR:F

    .line 35
    iput v1, p0, Lfr/testudo/spacecorsair/business/player/PlayerCanon;->bulletG:F

    .line 36
    iput v1, p0, Lfr/testudo/spacecorsair/business/player/PlayerCanon;->bulletB:F

    .line 37
    iput-boolean v2, p0, Lfr/testudo/spacecorsair/business/player/PlayerCanon;->tirGroupe:Z

    .line 39
    iput-boolean v2, p0, Lfr/testudo/spacecorsair/business/player/PlayerCanon;->alreadyFireForThisFinger:Z

    .line 43
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/alteration/AlterationSpecs;->DEFAULT:Lfr/testudo/spacecorsair/business/loot/stuff/alteration/AlterationSpecs;

    iput-object v0, p0, Lfr/testudo/spacecorsair/business/player/PlayerCanon;->alterationSpecs:Lfr/testudo/spacecorsair/business/loot/stuff/alteration/AlterationSpecs;

    .line 131
    const/4 v0, 0x1

    iput-boolean v0, p0, Lfr/testudo/spacecorsair/business/player/PlayerCanon;->leftCanon:Z

    .line 48
    iput-object p1, p0, Lfr/testudo/spacecorsair/business/player/PlayerCanon;->shipPosition:Lfr/testudo/spacecorsair/engine/Vector2;

    .line 49
    iput-object p2, p0, Lfr/testudo/spacecorsair/business/player/PlayerCanon;->parent:Lfr/testudo/spacecorsair/business/player/PlayerShip;

    .line 50
    return-void
.end method

.method private doIa()V
    .registers 5

    .prologue
    .line 82
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/player/PlayerCanon;->parent:Lfr/testudo/spacecorsair/business/player/PlayerShip;

    iget v0, v0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->spin:F

    iget v1, p0, Lfr/testudo/spacecorsair/business/player/PlayerCanon;->currentDeltaSpinWithShip:F

    sub-float/2addr v0, v1

    invoke-static {v0}, Lfr/testudo/spacecorsair/business/Element;->normalizeSpin(F)F

    move-result v0

    .line 84
    iget v1, p0, Lfr/testudo/spacecorsair/business/player/PlayerCanon;->targetSpin:F

    .line 85
    sub-float v2, v1, v0

    .line 86
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    iput v2, p0, Lfr/testudo/spacecorsair/business/player/PlayerCanon;->deltaAngleToTarget:F

    .line 90
    iget v2, p0, Lfr/testudo/spacecorsair/business/player/PlayerCanon;->deltaAngleToTarget:F

    const/high16 v3, 0x3fc00000    # 1.5f

    cmpg-float v2, v2, v3

    if-gez v2, :cond_2d

    .line 91
    const/4 v1, 0x0

    iput v1, p0, Lfr/testudo/spacecorsair/business/player/PlayerCanon;->spinSpeed:F

    .line 92
    iget-object v1, p0, Lfr/testudo/spacecorsair/business/player/PlayerCanon;->parent:Lfr/testudo/spacecorsair/business/player/PlayerShip;

    iget v1, v1, Lfr/testudo/spacecorsair/business/player/PlayerShip;->spin:F

    sub-float v0, v1, v0

    invoke-static {v0}, Lfr/testudo/spacecorsair/business/Element;->normalizeSpin(F)F

    move-result v0

    iput v0, p0, Lfr/testudo/spacecorsair/business/player/PlayerCanon;->currentDeltaSpinWithShip:F

    .line 112
    :goto_2c
    return-void

    .line 94
    :cond_2d
    iget v2, p0, Lfr/testudo/spacecorsair/business/player/PlayerCanon;->deltaAngleToTarget:F

    const/high16 v3, 0x43340000    # 180.0f

    cmpg-float v2, v2, v3

    if-gtz v2, :cond_44

    .line 96
    cmpl-float v0, v0, v1

    if-lez v0, :cond_3e

    .line 97
    iget v0, p0, Lfr/testudo/spacecorsair/business/player/PlayerCanon;->maxSpinSpeed:F

    iput v0, p0, Lfr/testudo/spacecorsair/business/player/PlayerCanon;->spinSpeed:F

    goto :goto_2c

    .line 99
    :cond_3e
    iget v0, p0, Lfr/testudo/spacecorsair/business/player/PlayerCanon;->maxSpinSpeed:F

    neg-float v0, v0

    iput v0, p0, Lfr/testudo/spacecorsair/business/player/PlayerCanon;->spinSpeed:F

    goto :goto_2c

    .line 103
    :cond_44
    cmpg-float v0, v0, v1

    if-gez v0, :cond_4d

    .line 104
    iget v0, p0, Lfr/testudo/spacecorsair/business/player/PlayerCanon;->maxSpinSpeed:F

    iput v0, p0, Lfr/testudo/spacecorsair/business/player/PlayerCanon;->spinSpeed:F

    goto :goto_2c

    .line 106
    :cond_4d
    iget v0, p0, Lfr/testudo/spacecorsair/business/player/PlayerCanon;->maxSpinSpeed:F

    neg-float v0, v0

    iput v0, p0, Lfr/testudo/spacecorsair/business/player/PlayerCanon;->spinSpeed:F

    goto :goto_2c
.end method

.method private processShoot(FF)V
    .registers 19

    .prologue
    .line 164
    move-object/from16 v0, p0

    iget-object v2, v0, Lfr/testudo/spacecorsair/business/player/PlayerCanon;->parent:Lfr/testudo/spacecorsair/business/player/PlayerShip;

    iget v2, v2, Lfr/testudo/spacecorsair/business/player/PlayerShip;->spin:F

    move-object/from16 v0, p0

    iget v3, v0, Lfr/testudo/spacecorsair/business/player/PlayerCanon;->currentDeltaSpinWithShip:F

    sub-float/2addr v2, v3

    .line 165
    move-object/from16 v0, p0

    iget v3, v0, Lfr/testudo/spacecorsair/business/player/PlayerCanon;->shootPrecision:I

    int-to-float v3, v3

    sub-float/2addr v2, v3

    float-to-double v2, v2

    move-object/from16 v0, p0

    iget v4, v0, Lfr/testudo/spacecorsair/business/player/PlayerCanon;->shootPrecision:I

    mul-int/lit8 v4, v4, 0x2

    int-to-double v4, v4

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v6

    mul-double/2addr v4, v6

    add-double v12, v2, v4

    .line 167
    invoke-static {v12, v13}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v14

    .line 169
    invoke-static {}, Lfr/testudo/spacecorsair/business/factory/GamePools;->newEnnergyBullet()Lfr/testudo/spacecorsair/business/projectiles/EnergyBullet;

    move-result-object v2

    .line 170
    move-object/from16 v0, p0

    iget v3, v0, Lfr/testudo/spacecorsair/business/player/PlayerCanon;->shootDamage:I

    int-to-float v3, v3

    move-object/from16 v0, p0

    iget v4, v0, Lfr/testudo/spacecorsair/business/player/PlayerCanon;->shootLifeTime:I

    move-object/from16 v0, p0

    iget-object v5, v0, Lfr/testudo/spacecorsair/business/player/PlayerCanon;->parent:Lfr/testudo/spacecorsair/business/player/PlayerShip;

    move-object/from16 v0, p0

    iget v6, v0, Lfr/testudo/spacecorsair/business/player/PlayerCanon;->bulletA:F

    move-object/from16 v0, p0

    iget v7, v0, Lfr/testudo/spacecorsair/business/player/PlayerCanon;->bulletR:F

    move-object/from16 v0, p0

    iget v8, v0, Lfr/testudo/spacecorsair/business/player/PlayerCanon;->bulletG:F

    move-object/from16 v0, p0

    iget v9, v0, Lfr/testudo/spacecorsair/business/player/PlayerCanon;->bulletB:F

    move-object/from16 v0, p0

    iget-object v10, v0, Lfr/testudo/spacecorsair/business/player/PlayerCanon;->alterationSpecs:Lfr/testudo/spacecorsair/business/loot/stuff/alteration/AlterationSpecs;

    invoke-virtual/range {v2 .. v10}, Lfr/testudo/spacecorsair/business/projectiles/EnergyBullet;->init(FILfr/testudo/spacecorsair/business/Element;FFFFLfr/testudo/spacecorsair/business/loot/stuff/alteration/AlterationSpecs;)Lfr/testudo/spacecorsair/business/projectiles/EnergyBullet;

    .line 173
    move-object/from16 v0, p0

    iget-object v3, v0, Lfr/testudo/spacecorsair/business/player/PlayerCanon;->parent:Lfr/testudo/spacecorsair/business/player/PlayerShip;

    iget-object v3, v3, Lfr/testudo/spacecorsair/business/player/PlayerShip;->shield:Lfr/testudo/spacecorsair/business/player/Shield;

    iget-object v3, v3, Lfr/testudo/spacecorsair/business/player/Shield;->spec:Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;

    iget-object v3, v3, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;->bonuses:Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldBonuses;

    iget-object v3, v3, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldBonuses;->damageIncreasementWhenFull:Lfr/testudo/spacecorsair/business/loot/stuff/shield/DamageIncreasementWhenFull;

    invoke-virtual {v3}, Lfr/testudo/spacecorsair/business/loot/stuff/shield/DamageIncreasementWhenFull;->enabled()Z

    move-result v3

    if-eqz v3, :cond_8c

    move-object/from16 v0, p0

    iget-object v3, v0, Lfr/testudo/spacecorsair/business/player/PlayerCanon;->parent:Lfr/testudo/spacecorsair/business/player/PlayerShip;

    iget-object v3, v3, Lfr/testudo/spacecorsair/business/player/PlayerShip;->shield:Lfr/testudo/spacecorsair/business/player/Shield;

    iget v3, v3, Lfr/testudo/spacecorsair/business/player/Shield;->currentValue:F

    move-object/from16 v0, p0

    iget-object v4, v0, Lfr/testudo/spacecorsair/business/player/PlayerCanon;->parent:Lfr/testudo/spacecorsair/business/player/PlayerShip;

    iget-object v4, v4, Lfr/testudo/spacecorsair/business/player/PlayerShip;->shield:Lfr/testudo/spacecorsair/business/player/Shield;

    iget v4, v4, Lfr/testudo/spacecorsair/business/player/Shield;->capacity:F

    cmpl-float v3, v3, v4

    if-nez v3, :cond_8c

    .line 175
    iget v3, v2, Lfr/testudo/spacecorsair/business/projectiles/EnergyBullet;->damage:F

    iget v4, v2, Lfr/testudo/spacecorsair/business/projectiles/EnergyBullet;->damage:F

    move-object/from16 v0, p0

    iget-object v5, v0, Lfr/testudo/spacecorsair/business/player/PlayerCanon;->parent:Lfr/testudo/spacecorsair/business/player/PlayerShip;

    iget-object v5, v5, Lfr/testudo/spacecorsair/business/player/PlayerShip;->shield:Lfr/testudo/spacecorsair/business/player/Shield;

    iget-object v5, v5, Lfr/testudo/spacecorsair/business/player/Shield;->spec:Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;

    iget-object v5, v5, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;->bonuses:Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldBonuses;

    iget-object v5, v5, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldBonuses;->damageIncreasementWhenFull:Lfr/testudo/spacecorsair/business/loot/stuff/shield/DamageIncreasementWhenFull;

    iget v5, v5, Lfr/testudo/spacecorsair/business/loot/stuff/shield/DamageIncreasementWhenFull;->damageIncreasePourc:I

    int-to-float v5, v5

    mul-float/2addr v4, v5

    const/high16 v5, 0x42c80000    # 100.0f

    div-float/2addr v4, v5

    add-float/2addr v3, v4

    iput v3, v2, Lfr/testudo/spacecorsair/business/projectiles/EnergyBullet;->damage:F

    .line 178
    :cond_8c
    move-object/from16 v0, p0

    iget-object v3, v0, Lfr/testudo/spacecorsair/business/player/PlayerCanon;->parent:Lfr/testudo/spacecorsair/business/player/PlayerShip;

    iget v3, v3, Lfr/testudo/spacecorsair/business/player/PlayerShip;->spin:F

    float-to-double v4, v3

    invoke-static {v4, v5}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v4

    .line 181
    sget-object v3, Lfr/testudo/spacecorsair/business/player/PlayerCanon;->tempVect2:Lfr/testudo/spacecorsair/engine/Vector2;

    move/from16 v0, p1

    move/from16 v1, p2

    invoke-virtual {v3, v0, v1}, Lfr/testudo/spacecorsair/engine/Vector2;->set(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 182
    sget-object v3, Lfr/testudo/spacecorsair/business/player/PlayerCanon;->tempVect2:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v3, v14, v15}, Lfr/testudo/spacecorsair/engine/Vector2;->applyRotatation(D)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 184
    move-object/from16 v0, p0

    iget-object v3, v0, Lfr/testudo/spacecorsair/business/player/PlayerCanon;->tempVector:Lfr/testudo/spacecorsair/engine/Vector2;

    move-object/from16 v0, p0

    iget-object v6, v0, Lfr/testudo/spacecorsair/business/player/PlayerCanon;->shipPosition:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v3, v6}, Lfr/testudo/spacecorsair/engine/Vector2;->setSameAs(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 185
    move-object/from16 v0, p0

    iget-object v3, v0, Lfr/testudo/spacecorsair/business/player/PlayerCanon;->tempVector:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v3, v4, v5}, Lfr/testudo/spacecorsair/engine/Vector2;->applyRotatation(D)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 186
    move-object/from16 v0, p0

    iget-object v3, v0, Lfr/testudo/spacecorsair/business/player/PlayerCanon;->tempVector:Lfr/testudo/spacecorsair/engine/Vector2;

    move-object/from16 v0, p0

    iget-object v4, v0, Lfr/testudo/spacecorsair/business/player/PlayerCanon;->parent:Lfr/testudo/spacecorsair/business/player/PlayerShip;

    iget-object v4, v4, Lfr/testudo/spacecorsair/business/player/PlayerShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v3, v4}, Lfr/testudo/spacecorsair/engine/Vector2;->add(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    move-result-object v3

    sget-object v4, Lfr/testudo/spacecorsair/business/player/PlayerCanon;->tempVect2:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v3, v4}, Lfr/testudo/spacecorsair/engine/Vector2;->add(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 189
    iget-object v3, v2, Lfr/testudo/spacecorsair/business/projectiles/EnergyBullet;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    move-object/from16 v0, p0

    iget-object v4, v0, Lfr/testudo/spacecorsair/business/player/PlayerCanon;->tempVector:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v3, v4}, Lfr/testudo/spacecorsair/engine/Vector2;->setSameAs(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 190
    iget-object v3, v2, Lfr/testudo/spacecorsair/business/projectiles/EnergyBullet;->speed:Lfr/testudo/spacecorsair/engine/Vector2;

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget v5, v0, Lfr/testudo/spacecorsair/business/player/PlayerCanon;->shootSpeed:F

    invoke-virtual {v3, v4, v5}, Lfr/testudo/spacecorsair/engine/Vector2;->set(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 191
    iget-object v3, v2, Lfr/testudo/spacecorsair/business/projectiles/EnergyBullet;->speed:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v3, v14, v15}, Lfr/testudo/spacecorsair/engine/Vector2;->applyRotatation(D)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 196
    move-object/from16 v0, p0

    iget-object v3, v0, Lfr/testudo/spacecorsair/business/player/PlayerCanon;->tempVector:Lfr/testudo/spacecorsair/engine/Vector2;

    move-object/from16 v0, p0

    iget-object v4, v0, Lfr/testudo/spacecorsair/business/player/PlayerCanon;->parent:Lfr/testudo/spacecorsair/business/player/PlayerShip;

    iget-object v4, v4, Lfr/testudo/spacecorsair/business/player/PlayerShip;->speed:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v3, v4}, Lfr/testudo/spacecorsair/engine/Vector2;->setSameAs(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    move-result-object v3

    const/high16 v4, 0x3f000000    # 0.5f

    invoke-virtual {v3, v4}, Lfr/testudo/spacecorsair/engine/Vector2;->multiply(F)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 197
    iget-object v3, v2, Lfr/testudo/spacecorsair/business/projectiles/EnergyBullet;->speed:Lfr/testudo/spacecorsair/engine/Vector2;

    move-object/from16 v0, p0

    iget-object v4, v0, Lfr/testudo/spacecorsair/business/player/PlayerCanon;->tempVector:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v3, v4}, Lfr/testudo/spacecorsair/engine/Vector2;->add(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 198
    double-to-float v3, v12

    iput v3, v2, Lfr/testudo/spacecorsair/business/projectiles/EnergyBullet;->spin:F

    .line 201
    sget-object v3, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v3, v3, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v3, v3, Lfr/testudo/spacecorsair/game/Game;->currentLevel:Lfr/testudo/spacecorsair/game/levels/Level;

    iget-object v3, v3, Lfr/testudo/spacecorsair/game/levels/Level;->toAdd:Ljava/util/List;

    invoke-static {v3, v2}, Lfr/testudo/spacecorsair/mod/Mod;->addBullet(Ljava/util/List;Ljava/lang/Object;)Z

    .line 204
    return-void
.end method


# virtual methods
.method public doPhysic(J)V
    .registers 6

    .prologue
    .line 117
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/player/PlayerCanon;->parent:Lfr/testudo/spacecorsair/business/player/PlayerShip;

    iget-boolean v0, v0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->isShooting:Z

    if-eqz v0, :cond_19

    .line 119
    iget v0, p0, Lfr/testudo/spacecorsair/business/player/PlayerCanon;->currentDeltaSpinWithShip:F

    iget v1, p0, Lfr/testudo/spacecorsair/business/player/PlayerCanon;->spinSpeed:F

    long-to-float v2, p1

    mul-float/2addr v1, v2

    const/high16 v2, 0x41200000    # 10.0f

    div-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p0, Lfr/testudo/spacecorsair/business/player/PlayerCanon;->currentDeltaSpinWithShip:F

    .line 120
    iget v0, p0, Lfr/testudo/spacecorsair/business/player/PlayerCanon;->currentDeltaSpinWithShip:F

    const/high16 v1, 0x43b40000    # 360.0f

    rem-float/2addr v0, v1

    iput v0, p0, Lfr/testudo/spacecorsair/business/player/PlayerCanon;->currentDeltaSpinWithShip:F

    .line 123
    :cond_19
    iget v0, p0, Lfr/testudo/spacecorsair/business/player/PlayerCanon;->nextShootAllowed:I

    if-lez v0, :cond_24

    .line 124
    iget v0, p0, Lfr/testudo/spacecorsair/business/player/PlayerCanon;->nextShootAllowed:I

    int-to-long v0, v0

    sub-long/2addr v0, p1

    long-to-int v0, v0

    iput v0, p0, Lfr/testudo/spacecorsair/business/player/PlayerCanon;->nextShootAllowed:I

    .line 126
    :cond_24
    invoke-direct {p0}, Lfr/testudo/spacecorsair/business/player/PlayerCanon;->doIa()V

    .line 128
    return-void
.end method

.method public init(IIIFFI)Lfr/testudo/spacecorsair/business/player/PlayerCanon;
    .registers 15

    .prologue
    .line 55
    sget-object v7, Lfr/testudo/spacecorsair/business/loot/stuff/alteration/AlterationSpecs;->DEFAULT:Lfr/testudo/spacecorsair/business/loot/stuff/alteration/AlterationSpecs;

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v7}, Lfr/testudo/spacecorsair/business/player/PlayerCanon;->init(IIIFFILfr/testudo/spacecorsair/business/loot/stuff/alteration/AlterationSpecs;)Lfr/testudo/spacecorsair/business/player/PlayerCanon;

    move-result-object v0

    return-object v0
.end method

.method public init(IIIFFILfr/testudo/spacecorsair/business/loot/stuff/alteration/AlterationSpecs;)Lfr/testudo/spacecorsair/business/player/PlayerCanon;
    .registers 9

    .prologue
    .line 60
    iput p1, p0, Lfr/testudo/spacecorsair/business/player/PlayerCanon;->timeBewteenShootInMilli:I

    .line 61
    iput p4, p0, Lfr/testudo/spacecorsair/business/player/PlayerCanon;->shootSpeed:F

    .line 62
    iput p2, p0, Lfr/testudo/spacecorsair/business/player/PlayerCanon;->shootDamage:I

    .line 63
    iput p3, p0, Lfr/testudo/spacecorsair/business/player/PlayerCanon;->shootLifeTime:I

    .line 64
    iput p6, p0, Lfr/testudo/spacecorsair/business/player/PlayerCanon;->shootPrecision:I

    .line 65
    iput p5, p0, Lfr/testudo/spacecorsair/business/player/PlayerCanon;->maxSpinSpeed:F

    .line 66
    iput-object p7, p0, Lfr/testudo/spacecorsair/business/player/PlayerCanon;->alterationSpecs:Lfr/testudo/spacecorsair/business/loot/stuff/alteration/AlterationSpecs;

    .line 67
    const/4 v0, 0x0

    iput-boolean v0, p0, Lfr/testudo/spacecorsair/business/player/PlayerCanon;->alreadyFireForThisFinger:Z

    .line 69
    return-object p0
.end method

.method public requestShoot()V
    .registers 8

    .prologue
    const/4 v2, 0x0

    const/high16 v4, 0x41200000    # 10.0f

    const/high16 v3, -0x3ee00000    # -10.0f

    const/4 v6, 0x0

    const/4 v1, 0x1

    .line 134
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/player/PlayerCanon;->parent:Lfr/testudo/spacecorsair/business/player/PlayerShip;

    iget-boolean v0, v0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->isShooting:Z

    if-eqz v0, :cond_45

    iget-boolean v0, p0, Lfr/testudo/spacecorsair/business/player/PlayerCanon;->alreadyFireForThisFinger:Z

    if-nez v0, :cond_19

    iget v0, p0, Lfr/testudo/spacecorsair/business/player/PlayerCanon;->deltaAngleToTarget:F

    const/high16 v5, 0x40a00000    # 5.0f

    cmpg-float v0, v0, v5

    if-gtz v0, :cond_45

    :cond_19
    move v0, v1

    .line 136
    :goto_1a
    iget v5, p0, Lfr/testudo/spacecorsair/business/player/PlayerCanon;->nextShootAllowed:I

    if-gtz v5, :cond_44

    if-eqz v0, :cond_44

    .line 138
    iput-boolean v1, p0, Lfr/testudo/spacecorsair/business/player/PlayerCanon;->alreadyFireForThisFinger:Z

    .line 141
    iget-boolean v0, p0, Lfr/testudo/spacecorsair/business/player/PlayerCanon;->tirGroupe:Z

    if-eqz v0, :cond_47

    .line 142
    invoke-direct {p0, v3, v6}, Lfr/testudo/spacecorsair/business/player/PlayerCanon;->processShoot(FF)V

    .line 143
    invoke-direct {p0, v4, v6}, Lfr/testudo/spacecorsair/business/player/PlayerCanon;->processShoot(FF)V

    .line 151
    :goto_2c
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->soundManager:Lfr/testudo/spacecorsair/engine/SoundManager;

    invoke-static {}, Lfr/testudo/spacecorsair/mod/Mod;->playLaserSound()V

    .line 154
    iget v0, p0, Lfr/testudo/spacecorsair/business/player/PlayerCanon;->timeBewteenShootInMilli:I

    int-to-float v0, v0

    iget-object v2, p0, Lfr/testudo/spacecorsair/business/player/PlayerCanon;->parent:Lfr/testudo/spacecorsair/business/player/PlayerShip;

    iget v2, v2, Lfr/testudo/spacecorsair/business/player/PlayerShip;->alterationReloadValue:F

    mul-float/2addr v0, v2

    iget-boolean v2, p0, Lfr/testudo/spacecorsair/business/player/PlayerCanon;->tirGroupe:Z

    if-eqz v2, :cond_59

    :goto_3f
    int-to-float v1, v1

    div-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lfr/testudo/spacecorsair/business/player/PlayerCanon;->nextShootAllowed:I

    .line 156
    :cond_44
    return-void

    :cond_45
    move v0, v2

    .line 134
    goto :goto_1a

    .line 147
    :cond_47
    iget-boolean v0, p0, Lfr/testudo/spacecorsair/business/player/PlayerCanon;->leftCanon:Z

    if-eqz v0, :cond_57

    move v0, v3

    :goto_4c
    invoke-direct {p0, v0, v6}, Lfr/testudo/spacecorsair/business/player/PlayerCanon;->processShoot(FF)V

    .line 148
    iget-boolean v0, p0, Lfr/testudo/spacecorsair/business/player/PlayerCanon;->leftCanon:Z

    if-nez v0, :cond_54

    move v2, v1

    :cond_54
    iput-boolean v2, p0, Lfr/testudo/spacecorsair/business/player/PlayerCanon;->leftCanon:Z

    goto :goto_2c

    :cond_57
    move v0, v4

    .line 147
    goto :goto_4c

    .line 154
    :cond_59
    const/4 v1, 0x2

    goto :goto_3f
.end method
