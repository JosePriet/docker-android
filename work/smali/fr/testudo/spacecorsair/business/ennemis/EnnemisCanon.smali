.class public Lfr/testudo/spacecorsair/business/ennemis/EnnemisCanon;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lfr/testudo/spacecorsair/business/ennemis/EnnemisCanon$1;,
        Lfr/testudo/spacecorsair/business/ennemis/EnnemisCanon$canonStatus;
    }
.end annotation


# instance fields
.field public alterationSpecs:Lfr/testudo/spacecorsair/business/loot/stuff/alteration/AlterationSpecs;

.field public curRafale:I

.field public currentDeltaSpinWithShip:F

.field public deltaAngleToTarget:F

.field public inMissileMode:Z

.field public maxSpinSpeed:F

.field public nextShootAllowed:I

.field public parent:Lfr/testudo/spacecorsair/business/Element;

.field public previousTarget:Lfr/testudo/spacecorsair/business/Element;

.field public rafaleCount:I

.field public shipPosition:Lfr/testudo/spacecorsair/engine/Vector2;

.field public shootDamage:I

.field public shootLifeTime:I

.field public shootPrecision:I

.field public shootSpeed:F

.field public spinSpeed:F

.field public status:Lfr/testudo/spacecorsair/business/ennemis/EnnemisCanon$canonStatus;

.field public target:Lfr/testudo/spacecorsair/business/Element;

.field public tempVector:Lfr/testudo/spacecorsair/engine/Vector2;

.field public timeBewteenRafaleInMilli:I

.field public timeBewteenShootInMilli:I


# direct methods
.method public constructor <init>(Lfr/testudo/spacecorsair/engine/Vector2;Lfr/testudo/spacecorsair/business/Element;)V
    .registers 6

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-direct {v0}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>()V

    iput-object v0, p0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisCanon;->shipPosition:Lfr/testudo/spacecorsair/engine/Vector2;

    .line 33
    new-instance v0, Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-direct {v0}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>()V

    iput-object v0, p0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisCanon;->tempVector:Lfr/testudo/spacecorsair/engine/Vector2;

    .line 34
    iput v1, p0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisCanon;->currentDeltaSpinWithShip:F

    .line 35
    iput v1, p0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisCanon;->spinSpeed:F

    .line 36
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisCanon;->maxSpinSpeed:F

    .line 37
    sget-object v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisCanon$canonStatus;->IDLE:Lfr/testudo/spacecorsair/business/ennemis/EnnemisCanon$canonStatus;

    iput-object v0, p0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisCanon;->status:Lfr/testudo/spacecorsair/business/ennemis/EnnemisCanon$canonStatus;

    .line 39
    iput v1, p0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisCanon;->deltaAngleToTarget:F

    .line 43
    iput v2, p0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisCanon;->nextShootAllowed:I

    .line 45
    const/16 v0, 0x578

    iput v0, p0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisCanon;->timeBewteenShootInMilli:I

    .line 46
    const/16 v0, 0x12c

    iput v0, p0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisCanon;->timeBewteenRafaleInMilli:I

    .line 47
    iput v2, p0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisCanon;->shootPrecision:I

    .line 51
    const/4 v0, 0x1

    iput v0, p0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisCanon;->rafaleCount:I

    .line 52
    iput v2, p0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisCanon;->curRafale:I

    .line 54
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/alteration/AlterationSpecs;->DEFAULT:Lfr/testudo/spacecorsair/business/loot/stuff/alteration/AlterationSpecs;

    iput-object v0, p0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisCanon;->alterationSpecs:Lfr/testudo/spacecorsair/business/loot/stuff/alteration/AlterationSpecs;

    .line 59
    iput-object p1, p0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisCanon;->shipPosition:Lfr/testudo/spacecorsair/engine/Vector2;

    .line 60
    iput-object p2, p0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisCanon;->parent:Lfr/testudo/spacecorsair/business/Element;

    .line 61
    return-void
.end method

.method private doChasse()V
    .registers 6

    .prologue
    .line 137
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisCanon;->target:Lfr/testudo/spacecorsair/business/Element;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisCanon;->target:Lfr/testudo/spacecorsair/business/Element;

    iget-boolean v0, v0, Lfr/testudo/spacecorsair/business/Element;->removed:Z

    if-eqz v0, :cond_29

    .line 138
    :cond_a
    iget-boolean v0, p0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisCanon;->inMissileMode:Z

    if-eqz v0, :cond_24

    .line 139
    const/4 v0, 0x0

    iput-boolean v0, p0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisCanon;->inMissileMode:Z

    .line 140
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisCanon;->previousTarget:Lfr/testudo/spacecorsair/business/Element;

    iput-object v0, p0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisCanon;->target:Lfr/testudo/spacecorsair/business/Element;

    .line 141
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisCanon;->target:Lfr/testudo/spacecorsair/business/Element;

    if-eqz v0, :cond_1f

    iget-object v0, p0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisCanon;->target:Lfr/testudo/spacecorsair/business/Element;

    iget-boolean v0, v0, Lfr/testudo/spacecorsair/business/Element;->removed:Z

    if-eqz v0, :cond_23

    .line 142
    :cond_1f
    sget-object v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisCanon$canonStatus;->RESET:Lfr/testudo/spacecorsair/business/ennemis/EnnemisCanon$canonStatus;

    iput-object v0, p0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisCanon;->status:Lfr/testudo/spacecorsair/business/ennemis/EnnemisCanon$canonStatus;

    .line 193
    :cond_23
    :goto_23
    return-void

    .line 147
    :cond_24
    sget-object v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisCanon$canonStatus;->RESET:Lfr/testudo/spacecorsair/business/ennemis/EnnemisCanon$canonStatus;

    iput-object v0, p0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisCanon;->status:Lfr/testudo/spacecorsair/business/ennemis/EnnemisCanon$canonStatus;

    goto :goto_23

    .line 151
    :cond_29
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisCanon;->parent:Lfr/testudo/spacecorsair/business/Element;

    iget v0, v0, Lfr/testudo/spacecorsair/business/Element;->spin:F

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v0

    .line 152
    iget-object v2, p0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisCanon;->tempVector:Lfr/testudo/spacecorsair/engine/Vector2;

    iget-object v3, p0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisCanon;->shipPosition:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v2, v3}, Lfr/testudo/spacecorsair/engine/Vector2;->setSameAs(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 153
    iget-object v2, p0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisCanon;->tempVector:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v2, v0, v1}, Lfr/testudo/spacecorsair/engine/Vector2;->applyRotatation(D)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 154
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisCanon;->tempVector:Lfr/testudo/spacecorsair/engine/Vector2;

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisCanon;->parent:Lfr/testudo/spacecorsair/business/Element;

    iget-object v1, v1, Lfr/testudo/spacecorsair/business/Element;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/engine/Vector2;->add(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 159
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisCanon;->parent:Lfr/testudo/spacecorsair/business/Element;

    iget v0, v0, Lfr/testudo/spacecorsair/business/Element;->spin:F

    iget v1, p0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisCanon;->currentDeltaSpinWithShip:F

    sub-float/2addr v0, v1

    invoke-static {v0}, Lfr/testudo/spacecorsair/business/Element;->normalizeSpin(F)F

    move-result v0

    .line 162
    iget-object v1, p0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisCanon;->parent:Lfr/testudo/spacecorsair/business/Element;

    iget v1, v1, Lfr/testudo/spacecorsair/business/Element;->distanceToTarget:F

    const/high16 v2, 0x41200000    # 10.0f

    mul-float/2addr v1, v2

    iget v2, p0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisCanon;->shootSpeed:F

    div-float/2addr v1, v2

    float-to-long v2, v1

    .line 164
    iget-object v1, p0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisCanon;->tempVector:Lfr/testudo/spacecorsair/engine/Vector2;

    iget-object v4, p0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisCanon;->target:Lfr/testudo/spacecorsair/business/Element;

    invoke-virtual {v4, v2, v3}, Lfr/testudo/spacecorsair/business/Element;->estimatedPosition(J)Lfr/testudo/spacecorsair/engine/Vector2;

    move-result-object v2

    invoke-virtual {v1, v2}, Lfr/testudo/spacecorsair/engine/Vector2;->getAngularWithInRad(Lfr/testudo/spacecorsair/engine/Vector2;)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v2

    .line 166
    double-to-float v1, v2

    const/high16 v2, 0x42b40000    # 90.0f

    add-float/2addr v1, v2

    invoke-static {v1}, Lfr/testudo/spacecorsair/business/Element;->normalizeSpin(F)F

    move-result v1

    .line 167
    sub-float v2, v1, v0

    .line 168
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    iput v2, p0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisCanon;->deltaAngleToTarget:F

    .line 172
    iget v2, p0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisCanon;->deltaAngleToTarget:F

    const/high16 v3, 0x40400000    # 3.0f

    cmpg-float v2, v2, v3

    if-gez v2, :cond_89

    .line 173
    const/4 v0, 0x0

    iput v0, p0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisCanon;->spinSpeed:F

    goto :goto_23

    .line 175
    :cond_89
    iget v2, p0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisCanon;->deltaAngleToTarget:F

    const/high16 v3, 0x43340000    # 180.0f

    cmpg-float v2, v2, v3

    if-gtz v2, :cond_a0

    .line 177
    cmpl-float v0, v0, v1

    if-lez v0, :cond_9a

    .line 178
    iget v0, p0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisCanon;->maxSpinSpeed:F

    iput v0, p0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisCanon;->spinSpeed:F

    goto :goto_23

    .line 180
    :cond_9a
    iget v0, p0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisCanon;->maxSpinSpeed:F

    neg-float v0, v0

    iput v0, p0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisCanon;->spinSpeed:F

    goto :goto_23

    .line 184
    :cond_a0
    cmpg-float v0, v0, v1

    if-gez v0, :cond_aa

    .line 185
    iget v0, p0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisCanon;->maxSpinSpeed:F

    iput v0, p0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisCanon;->spinSpeed:F

    goto/16 :goto_23

    .line 187
    :cond_aa
    iget v0, p0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisCanon;->maxSpinSpeed:F

    neg-float v0, v0

    iput v0, p0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisCanon;->spinSpeed:F

    goto/16 :goto_23
.end method

.method private doReset()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 87
    iget v0, p0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisCanon;->currentDeltaSpinWithShip:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 89
    const/high16 v1, 0x40400000    # 3.0f

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_14

    .line 90
    iput v2, p0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisCanon;->currentDeltaSpinWithShip:F

    .line 91
    sget-object v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisCanon$canonStatus;->IDLE:Lfr/testudo/spacecorsair/business/ennemis/EnnemisCanon$canonStatus;

    iput-object v0, p0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisCanon;->status:Lfr/testudo/spacecorsair/business/ennemis/EnnemisCanon$canonStatus;

    .line 102
    :goto_13
    return-void

    .line 95
    :cond_14
    iget v0, p0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisCanon;->currentDeltaSpinWithShip:F

    cmpg-float v0, v0, v2

    if-gez v0, :cond_1f

    .line 96
    iget v0, p0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisCanon;->maxSpinSpeed:F

    iput v0, p0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisCanon;->spinSpeed:F

    goto :goto_13

    .line 98
    :cond_1f
    iget v0, p0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisCanon;->maxSpinSpeed:F

    neg-float v0, v0

    iput v0, p0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisCanon;->spinSpeed:F

    goto :goto_13
.end method

.method private processShoot()V
    .registers 10

    .prologue
    .line 261
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisCanon;->parent:Lfr/testudo/spacecorsair/business/Element;

    iget v0, v0, Lfr/testudo/spacecorsair/business/Element;->spin:F

    iget v1, p0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisCanon;->currentDeltaSpinWithShip:F

    sub-float/2addr v0, v1

    .line 262
    iget v1, p0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisCanon;->shootPrecision:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    float-to-double v0, v0

    iget v2, p0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisCanon;->shootPrecision:I

    mul-int/lit8 v2, v2, 0x2

    int-to-double v2, v2

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v4

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    .line 263
    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v2

    .line 268
    iget-object v4, p0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisCanon;->tempVector:Lfr/testudo/spacecorsair/engine/Vector2;

    iget-object v5, p0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisCanon;->shipPosition:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v4, v5}, Lfr/testudo/spacecorsair/engine/Vector2;->setSameAs(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 269
    iget-object v4, p0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisCanon;->tempVector:Lfr/testudo/spacecorsair/engine/Vector2;

    iget-object v5, p0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisCanon;->parent:Lfr/testudo/spacecorsair/business/Element;

    iget v5, v5, Lfr/testudo/spacecorsair/business/Element;->spin:F

    float-to-double v6, v5

    invoke-static {v6, v7}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Lfr/testudo/spacecorsair/engine/Vector2;->applyRotatation(D)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 270
    iget-object v4, p0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisCanon;->tempVector:Lfr/testudo/spacecorsair/engine/Vector2;

    iget-object v5, p0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisCanon;->parent:Lfr/testudo/spacecorsair/business/Element;

    iget-object v5, v5, Lfr/testudo/spacecorsair/business/Element;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v4, v5}, Lfr/testudo/spacecorsair/engine/Vector2;->add(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 274
    invoke-static {}, Lfr/testudo/spacecorsair/business/factory/GamePools;->newEnergyLaser()Lfr/testudo/spacecorsair/business/projectiles/EnergyLaser;

    move-result-object v4

    iget v5, p0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisCanon;->shootDamage:I

    int-to-float v5, v5

    iget v6, p0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisCanon;->shootLifeTime:I

    iget-object v7, p0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisCanon;->parent:Lfr/testudo/spacecorsair/business/Element;

    iget-object v8, p0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisCanon;->alterationSpecs:Lfr/testudo/spacecorsair/business/loot/stuff/alteration/AlterationSpecs;

    invoke-virtual {v4, v5, v6, v7, v8}, Lfr/testudo/spacecorsair/business/projectiles/EnergyLaser;->init(FILfr/testudo/spacecorsair/business/Element;Lfr/testudo/spacecorsair/business/loot/stuff/alteration/AlterationSpecs;)Lfr/testudo/spacecorsair/business/projectiles/EnergyLaser;

    move-result-object v4

    .line 275
    iget-object v5, v4, Lfr/testudo/spacecorsair/business/projectiles/EnergyLaser;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget-object v6, p0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisCanon;->tempVector:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v5, v6}, Lfr/testudo/spacecorsair/engine/Vector2;->setSameAs(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 276
    iget-object v5, v4, Lfr/testudo/spacecorsair/business/projectiles/EnergyLaser;->speed:Lfr/testudo/spacecorsair/engine/Vector2;

    const/4 v6, 0x0

    iget v7, p0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisCanon;->shootSpeed:F

    neg-float v7, v7

    invoke-virtual {v5, v6, v7}, Lfr/testudo/spacecorsair/engine/Vector2;->set(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 277
    iget-object v5, v4, Lfr/testudo/spacecorsair/business/projectiles/EnergyLaser;->speed:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v5, v2, v3}, Lfr/testudo/spacecorsair/engine/Vector2;->applyRotatation(D)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 278
    iget-object v2, v4, Lfr/testudo/spacecorsair/business/projectiles/EnergyLaser;->speed:Lfr/testudo/spacecorsair/engine/Vector2;

    iget-object v3, p0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisCanon;->parent:Lfr/testudo/spacecorsair/business/Element;

    iget-object v3, v3, Lfr/testudo/spacecorsair/business/Element;->speed:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v2, v3}, Lfr/testudo/spacecorsair/engine/Vector2;->add(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 279
    double-to-float v0, v0

    iput v0, v4, Lfr/testudo/spacecorsair/business/projectiles/EnergyLaser;->spin:F

    .line 282
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/Game;->currentLevel:Lfr/testudo/spacecorsair/game/levels/Level;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/levels/Level;->toAdd:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 283
    return-void
.end method


# virtual methods
.method public doIa()V
    .registers 3

    .prologue
    .line 198
    sget-object v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisCanon$1;->$SwitchMap$fr$testudo$spacecorsair$business$ennemis$EnnemisCanon$canonStatus:[I

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisCanon;->status:Lfr/testudo/spacecorsair/business/ennemis/EnnemisCanon$canonStatus;

    invoke-virtual {v1}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisCanon$canonStatus;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_16

    .line 210
    :goto_d
    :pswitch_d
    return-void

    .line 203
    :pswitch_e
    invoke-direct {p0}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisCanon;->doReset()V

    goto :goto_d

    .line 206
    :pswitch_12
    invoke-direct {p0}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisCanon;->doChasse()V

    goto :goto_d

    .line 198
    :pswitch_data_16
    .packed-switch 0x1
        :pswitch_d
        :pswitch_e
        :pswitch_12
    .end packed-switch
.end method

.method public doPhysic(J)V
    .registers 6

    .prologue
    .line 226
    iget v0, p0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisCanon;->currentDeltaSpinWithShip:F

    iget v1, p0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisCanon;->spinSpeed:F

    long-to-float v2, p1

    mul-float/2addr v1, v2

    const/high16 v2, 0x41200000    # 10.0f

    div-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisCanon;->currentDeltaSpinWithShip:F

    .line 228
    iget v0, p0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisCanon;->currentDeltaSpinWithShip:F

    const/high16 v1, 0x43b40000    # 360.0f

    rem-float/2addr v0, v1

    iput v0, p0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisCanon;->currentDeltaSpinWithShip:F

    .line 230
    iget v0, p0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisCanon;->nextShootAllowed:I

    if-lez v0, :cond_1e

    .line 231
    iget v0, p0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisCanon;->nextShootAllowed:I

    int-to-long v0, v0

    sub-long/2addr v0, p1

    long-to-int v0, v0

    iput v0, p0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisCanon;->nextShootAllowed:I

    .line 234
    :cond_1e
    return-void
.end method

.method public init(IIIFFII)Lfr/testudo/spacecorsair/business/ennemis/EnnemisCanon;
    .registers 17

    .prologue
    .line 66
    sget-object v8, Lfr/testudo/spacecorsair/business/loot/stuff/alteration/AlterationSpecs;->DEFAULT:Lfr/testudo/spacecorsair/business/loot/stuff/alteration/AlterationSpecs;

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move/from16 v7, p7

    invoke-virtual/range {v0 .. v8}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisCanon;->init(IIIFFIILfr/testudo/spacecorsair/business/loot/stuff/alteration/AlterationSpecs;)Lfr/testudo/spacecorsair/business/ennemis/EnnemisCanon;

    move-result-object v0

    return-object v0
.end method

.method public init(IIIFFIILfr/testudo/spacecorsair/business/loot/stuff/alteration/AlterationSpecs;)Lfr/testudo/spacecorsair/business/ennemis/EnnemisCanon;
    .registers 10

    .prologue
    .line 71
    iput p1, p0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisCanon;->timeBewteenShootInMilli:I

    .line 72
    iput p4, p0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisCanon;->shootSpeed:F

    .line 73
    iput p2, p0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisCanon;->shootDamage:I

    .line 74
    iput p3, p0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisCanon;->shootLifeTime:I

    .line 75
    iput p6, p0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisCanon;->shootPrecision:I

    .line 76
    iput p5, p0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisCanon;->maxSpinSpeed:F

    .line 77
    iput p7, p0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisCanon;->rafaleCount:I

    .line 78
    iput-object p8, p0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisCanon;->alterationSpecs:Lfr/testudo/spacecorsair/business/loot/stuff/alteration/AlterationSpecs;

    .line 80
    const/4 v0, 0x0

    iput-boolean v0, p0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisCanon;->inMissileMode:Z

    .line 81
    return-object p0
.end method

.method public initChasseTarget(Lfr/testudo/spacecorsair/business/Element;)V
    .registers 3

    .prologue
    .line 214
    iput-object p1, p0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisCanon;->target:Lfr/testudo/spacecorsair/business/Element;

    .line 215
    sget-object v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisCanon$canonStatus;->CHASSE:Lfr/testudo/spacecorsair/business/ennemis/EnnemisCanon$canonStatus;

    iput-object v0, p0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisCanon;->status:Lfr/testudo/spacecorsair/business/ennemis/EnnemisCanon$canonStatus;

    .line 216
    const/4 v0, 0x0

    iput v0, p0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisCanon;->curRafale:I

    .line 217
    return-void
.end method

.method public initReset()V
    .registers 2

    .prologue
    .line 220
    const/4 v0, 0x0

    iput-object v0, p0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisCanon;->target:Lfr/testudo/spacecorsair/business/Element;

    .line 221
    sget-object v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisCanon$canonStatus;->RESET:Lfr/testudo/spacecorsair/business/ennemis/EnnemisCanon$canonStatus;

    iput-object v0, p0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisCanon;->status:Lfr/testudo/spacecorsair/business/ennemis/EnnemisCanon$canonStatus;

    .line 222
    return-void
.end method

.method public lockMissile(Lfr/testudo/spacecorsair/business/projectiles/Missile;)V
    .registers 4

    .prologue
    .line 111
    iget-boolean v0, p0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisCanon;->inMissileMode:Z

    if-eqz v0, :cond_5

    .line 133
    :goto_4
    return-void

    .line 115
    :cond_5
    sget-object v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisCanon$1;->$SwitchMap$fr$testudo$spacecorsair$business$ennemis$EnnemisCanon$canonStatus:[I

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisCanon;->status:Lfr/testudo/spacecorsair/business/ennemis/EnnemisCanon$canonStatus;

    invoke-virtual {v1}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisCanon$canonStatus;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_24

    .line 130
    :goto_12
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisCanon;->target:Lfr/testudo/spacecorsair/business/Element;

    iput-object v0, p0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisCanon;->previousTarget:Lfr/testudo/spacecorsair/business/Element;

    .line 131
    iput-object p1, p0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisCanon;->target:Lfr/testudo/spacecorsair/business/Element;

    .line 132
    const/4 v0, 0x1

    iput-boolean v0, p0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisCanon;->inMissileMode:Z

    goto :goto_4

    .line 118
    :pswitch_1c
    invoke-virtual {p0, p1}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisCanon;->initChasseTarget(Lfr/testudo/spacecorsair/business/Element;)V

    goto :goto_12

    .line 121
    :pswitch_20
    invoke-virtual {p0, p1}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisCanon;->initChasseTarget(Lfr/testudo/spacecorsair/business/Element;)V

    goto :goto_12

    .line 115
    :pswitch_data_24
    .packed-switch 0x1
        :pswitch_1c
        :pswitch_20
    .end packed-switch
.end method

.method public requestShoot()V
    .registers 3

    .prologue
    .line 239
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisCanon;->status:Lfr/testudo/spacecorsair/business/ennemis/EnnemisCanon$canonStatus;

    sget-object v1, Lfr/testudo/spacecorsair/business/ennemis/EnnemisCanon$canonStatus;->CHASSE:Lfr/testudo/spacecorsair/business/ennemis/EnnemisCanon$canonStatus;

    if-ne v0, v1, :cond_40

    iget v0, p0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisCanon;->nextShootAllowed:I

    if-gtz v0, :cond_40

    iget v0, p0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisCanon;->deltaAngleToTarget:F

    const/high16 v1, 0x40a00000    # 5.0f

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_40

    .line 242
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisCanon;->parent:Lfr/testudo/spacecorsair/business/Element;

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisCanon;->target:Lfr/testudo/spacecorsair/business/Element;

    invoke-static {v0, v1}, Lfr/testudo/spacecorsair/business/Util;->isLaserOrMissileSoundEarable(Lfr/testudo/spacecorsair/business/Element;Lfr/testudo/spacecorsair/business/Element;)Z

    move-result v0

    if-eqz v0, :cond_23

    .line 243
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->soundManager:Lfr/testudo/spacecorsair/engine/SoundManager;

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/engine/SoundManager;->playLaserEnnemis()V

    .line 245
    :cond_23
    invoke-direct {p0}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisCanon;->processShoot()V

    .line 246
    iget v0, p0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisCanon;->curRafale:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisCanon;->curRafale:I

    .line 248
    iget v0, p0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisCanon;->curRafale:I

    iget v1, p0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisCanon;->rafaleCount:I

    if-ne v0, v1, :cond_41

    .line 249
    const/4 v0, 0x0

    iput v0, p0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisCanon;->curRafale:I

    .line 250
    iget v0, p0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisCanon;->timeBewteenShootInMilli:I

    int-to-float v0, v0

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisCanon;->parent:Lfr/testudo/spacecorsair/business/Element;

    iget v1, v1, Lfr/testudo/spacecorsair/business/Element;->alterationReloadValue:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisCanon;->nextShootAllowed:I

    .line 257
    :cond_40
    :goto_40
    return-void

    .line 253
    :cond_41
    iget v0, p0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisCanon;->timeBewteenRafaleInMilli:I

    int-to-float v0, v0

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisCanon;->parent:Lfr/testudo/spacecorsair/business/Element;

    iget v1, v1, Lfr/testudo/spacecorsair/business/Element;->alterationReloadValue:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisCanon;->nextShootAllowed:I

    goto :goto_40
.end method
