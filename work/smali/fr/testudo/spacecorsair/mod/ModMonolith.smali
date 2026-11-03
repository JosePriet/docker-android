.class public final Lfr/testudo/spacecorsair/mod/ModMonolith;
.super Ljava/lang/Object;
.source "ModMonolith.java"


# static fields
.field private static final AURA_CORE:[[F

.field private static final AURA_EDGE:[[F

.field private static D:F = 0.0f

.field private static final HN:I = 0xc

.field static final HOLD_MS:F = 2500.0f

.field static final MAX_ANG:F = 80.0f

.field private static final NS:I = 0x9

.field private static final PLASMA_CORE:[[F

.field private static final PLASMA_EDGE:[[F

.field private static final SJ:[F

.field private static final SL:[F

.field private static final SP:[F

.field private static final SU:[F

.field static final X_OPEN:F = 0.6f

.field private static final a:Lfr/testudo/spacecorsair/engine/Vector2;

.field private static ang:F

.field private static final b:Lfr/testudo/spacecorsair/engine/Vector2;

.field private static final c:Lfr/testudo/spacecorsair/engine/Vector2;

.field private static final core:[F

.field private static final edge:[F

.field private static flapT:F

.field private static final hAng:[F

.field private static final hDmg:[F

.field private static hNext:I

.field private static final hT:[J

.field private static heat:F

.field private static held:F

.field private static final hist:[F

.field private static histPos:I

.field private static histT:J

.field private static lastT:J

.field private static lastTrail:J

.field private static peak:F

.field private static phase:F

.field private static stage:I

.field private static stoppedSince:J

.field private static vel:F

.field private static vmax:F


# direct methods
.method static constructor <clinit>()V
    .registers 9

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/16 v8, 0x9

    const/4 v0, 0x0

    const/4 v4, 0x3

    .line 27
    const v1, 0x3a83126f    # 0.001f

    sput v1, Lfr/testudo/spacecorsair/mod/ModMonolith;->vmax:F

    .line 28
    const/16 v1, 0x1a

    new-array v1, v1, [F

    sput-object v1, Lfr/testudo/spacecorsair/mod/ModMonolith;->hist:[F

    .line 32
    const-wide/16 v2, -0x1

    sput-wide v2, Lfr/testudo/spacecorsair/mod/ModMonolith;->stoppedSince:J

    .line 37
    const/16 v1, 0xc

    new-array v1, v1, [J

    sput-object v1, Lfr/testudo/spacecorsair/mod/ModMonolith;->hT:[J

    .line 38
    const/16 v1, 0xc

    new-array v1, v1, [F

    sput-object v1, Lfr/testudo/spacecorsair/mod/ModMonolith;->hAng:[F

    const/16 v1, 0xc

    new-array v1, v1, [F

    sput-object v1, Lfr/testudo/spacecorsair/mod/ModMonolith;->hDmg:[F

    .line 41
    new-instance v1, Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-direct {v1}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>()V

    sput-object v1, Lfr/testudo/spacecorsair/mod/ModMonolith;->a:Lfr/testudo/spacecorsair/engine/Vector2;

    new-instance v1, Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-direct {v1}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>()V

    sput-object v1, Lfr/testudo/spacecorsair/mod/ModMonolith;->b:Lfr/testudo/spacecorsair/engine/Vector2;

    new-instance v1, Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-direct {v1}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>()V

    sput-object v1, Lfr/testudo/spacecorsair/mod/ModMonolith;->c:Lfr/testudo/spacecorsair/engine/Vector2;

    .line 135
    new-array v1, v4, [[F

    new-array v2, v4, [F

    fill-array-data v2, :array_10e

    aput-object v2, v1, v0

    new-array v2, v4, [F

    fill-array-data v2, :array_118

    aput-object v2, v1, v5

    new-array v2, v4, [F

    fill-array-data v2, :array_122

    aput-object v2, v1, v6

    sput-object v1, Lfr/testudo/spacecorsair/mod/ModMonolith;->AURA_CORE:[[F

    .line 136
    new-array v1, v4, [[F

    new-array v2, v4, [F

    fill-array-data v2, :array_12c

    aput-object v2, v1, v0

    new-array v2, v4, [F

    fill-array-data v2, :array_136

    aput-object v2, v1, v5

    new-array v2, v4, [F

    fill-array-data v2, :array_140

    aput-object v2, v1, v6

    sput-object v1, Lfr/testudo/spacecorsair/mod/ModMonolith;->AURA_EDGE:[[F

    .line 137
    new-array v1, v4, [[F

    new-array v2, v4, [F

    fill-array-data v2, :array_14a

    aput-object v2, v1, v0

    new-array v2, v4, [F

    fill-array-data v2, :array_154

    aput-object v2, v1, v5

    new-array v2, v4, [F

    fill-array-data v2, :array_15e

    aput-object v2, v1, v6

    sput-object v1, Lfr/testudo/spacecorsair/mod/ModMonolith;->PLASMA_CORE:[[F

    .line 138
    new-array v1, v4, [[F

    new-array v2, v4, [F

    fill-array-data v2, :array_168

    aput-object v2, v1, v0

    new-array v2, v4, [F

    fill-array-data v2, :array_172

    aput-object v2, v1, v5

    new-array v2, v4, [F

    fill-array-data v2, :array_17c

    aput-object v2, v1, v6

    sput-object v1, Lfr/testudo/spacecorsair/mod/ModMonolith;->PLASMA_EDGE:[[F

    .line 139
    new-array v1, v4, [F

    sput-object v1, Lfr/testudo/spacecorsair/mod/ModMonolith;->core:[F

    new-array v1, v4, [F

    sput-object v1, Lfr/testudo/spacecorsair/mod/ModMonolith;->edge:[F

    .line 238
    new-array v1, v8, [F

    sput-object v1, Lfr/testudo/spacecorsair/mod/ModMonolith;->SU:[F

    new-array v1, v8, [F

    sput-object v1, Lfr/testudo/spacecorsair/mod/ModMonolith;->SJ:[F

    new-array v1, v8, [F

    sput-object v1, Lfr/testudo/spacecorsair/mod/ModMonolith;->SL:[F

    new-array v1, v8, [F

    sput-object v1, Lfr/testudo/spacecorsair/mod/ModMonolith;->SP:[F

    .line 240
    new-instance v1, Ljava/util/Random;

    const-wide/16 v2, 0xb

    invoke-direct {v1, v2, v3}, Ljava/util/Random;-><init>(J)V

    .line 241
    :goto_bf
    if-ge v0, v8, :cond_10d

    .line 242
    sget-object v2, Lfr/testudo/spacecorsair/mod/ModMonolith;->SU:[F

    const/4 v3, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    int-to-float v5, v0

    const/high16 v6, 0x41000000    # 8.0f

    div-float/2addr v5, v6

    invoke-virtual {v1}, Ljava/util/Random;->nextFloat()F

    move-result v6

    const/high16 v7, 0x3f000000    # 0.5f

    sub-float/2addr v6, v7

    const v7, 0x3d23d70a    # 0.04f

    mul-float/2addr v6, v7

    add-float/2addr v5, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->min(FF)F

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(FF)F

    move-result v3

    aput v3, v2, v0

    .line 243
    sget-object v2, Lfr/testudo/spacecorsair/mod/ModMonolith;->SJ:[F

    invoke-virtual {v1}, Ljava/util/Random;->nextFloat()F

    move-result v3

    const/high16 v4, 0x3f000000    # 0.5f

    sub-float/2addr v3, v4

    const/high16 v4, 0x41600000    # 14.0f

    mul-float/2addr v3, v4

    aput v3, v2, v0

    .line 244
    sget-object v2, Lfr/testudo/spacecorsair/mod/ModMonolith;->SL:[F

    const v3, 0x3f19999a    # 0.6f

    invoke-virtual {v1}, Ljava/util/Random;->nextFloat()F

    move-result v4

    const v5, 0x3ee66666    # 0.45f

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    aput v3, v2, v0

    .line 245
    sget-object v2, Lfr/testudo/spacecorsair/mod/ModMonolith;->SP:[F

    invoke-virtual {v1}, Ljava/util/Random;->nextFloat()F

    move-result v3

    const v4, 0x40c90e56    # 6.283f

    mul-float/2addr v3, v4

    aput v3, v2, v0

    .line 241
    add-int/lit8 v0, v0, 0x1

    goto :goto_bf

    .line 247
    :cond_10d
    return-void

    .line 135
    :array_10e
    .array-data 4
        0x434d0000    # 205.0f
        0x436b0000    # 235.0f
        0x437f0000    # 255.0f
    .end array-data

    :array_118
    .array-data 4
        0x437f0000    # 255.0f
        0x43700000    # 240.0f
        0x43250000    # 165.0f
    .end array-data

    :array_122
    .array-data 4
        0x437f0000    # 255.0f
        0x43640000    # 228.0f
        0x43020000    # 130.0f
    .end array-data

    .line 136
    :array_12c
    .array-data 4
        0x42a00000    # 80.0f
        0x43250000    # 165.0f
        0x437f0000    # 255.0f
    .end array-data

    :array_136
    .array-data 4
        0x437f0000    # 255.0f
        0x43390000    # 185.0f
        0x425c0000    # 55.0f
    .end array-data

    :array_140
    .array-data 4
        0x437f0000    # 255.0f
        0x42aa0000    # 85.0f
        0x41c80000    # 25.0f
    .end array-data

    .line 137
    :array_14a
    .array-data 4
        0x43160000    # 150.0f
        0x43570000    # 215.0f
        0x437f0000    # 255.0f
    .end array-data

    :array_154
    .array-data 4
        0x437f0000    # 255.0f
        0x43570000    # 215.0f
        0x42dc0000    # 110.0f
    .end array-data

    :array_15e
    .array-data 4
        0x437f0000    # 255.0f
        0x433e0000    # 190.0f
        0x42b40000    # 90.0f
    .end array-data

    .line 138
    :array_168
    .array-data 4
        0x42200000    # 40.0f
        0x42f00000    # 120.0f
        0x437f0000    # 255.0f
    .end array-data

    :array_172
    .array-data 4
        0x437f0000    # 255.0f
        0x43160000    # 150.0f
        0x41f00000    # 30.0f
    .end array-data

    :array_17c
    .array-data 4
        0x437f0000    # 255.0f
        0x42340000    # 45.0f
        0x41c80000    # 25.0f
    .end array-data
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static agitation(J)F
    .registers 10

    .prologue
    .line 100
    const/4 v0, 0x0

    .line 101
    const/4 v1, 0x0

    :goto_2
    const/16 v2, 0xc

    if-ge v1, v2, :cond_33

    .line 102
    sget-object v2, Lfr/testudo/spacecorsair/mod/ModMonolith;->hT:[J

    aget-wide v2, v2, v1

    sub-long v2, p0, v2

    long-to-float v2, v2

    const/high16 v3, 0x447a0000    # 1000.0f

    div-float/2addr v2, v3

    .line 103
    sget-object v3, Lfr/testudo/spacecorsair/mod/ModMonolith;->hT:[J

    aget-wide v4, v3, v1

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-lez v3, :cond_30

    const/high16 v3, 0x40400000    # 3.0f

    cmpg-float v3, v2, v3

    if-gez v3, :cond_30

    sget-object v3, Lfr/testudo/spacecorsair/mod/ModMonolith;->hDmg:[F

    aget v3, v3, v1

    neg-float v2, v2

    float-to-double v4, v2

    const-wide/high16 v6, 0x3ff8000000000000L    # 1.5

    div-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->exp(D)D

    move-result-wide v4

    double-to-float v2, v4

    mul-float/2addr v2, v3

    add-float/2addr v0, v2

    .line 101
    :cond_30
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 105
    :cond_33
    return v0
.end method

.method private static angd(FF)F
    .registers 6

    .prologue
    .line 352
    sub-float v0, p0, p1

    float-to-double v0, v0

    .line 353
    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method private static heavyPulse(J)F
    .registers 10

    .prologue
    .line 228
    const/4 v0, 0x0

    .line 229
    const/4 v1, 0x0

    :goto_2
    const/16 v2, 0xc

    if-ge v1, v2, :cond_3d

    .line 230
    sget-object v2, Lfr/testudo/spacecorsair/mod/ModMonolith;->hT:[J

    aget-wide v2, v2, v1

    sub-long v2, p0, v2

    long-to-float v2, v2

    const/high16 v3, 0x447a0000    # 1000.0f

    div-float/2addr v2, v3

    .line 231
    sget-object v3, Lfr/testudo/spacecorsair/mod/ModMonolith;->hT:[J

    aget-wide v4, v3, v1

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-lez v3, :cond_3a

    sget-object v3, Lfr/testudo/spacecorsair/mod/ModMonolith;->hDmg:[F

    aget v3, v3, v1

    const v4, 0x3f4ccccd    # 0.8f

    cmpl-float v3, v3, v4

    if-lez v3, :cond_3a

    const v3, 0x3f19999a    # 0.6f

    cmpg-float v3, v2, v3

    if-gez v3, :cond_3a

    const/high16 v3, 0x3f000000    # 0.5f

    neg-float v2, v2

    float-to-double v4, v2

    const-wide/high16 v6, 0x3fd0000000000000L    # 0.25

    div-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->exp(D)D

    move-result-wide v4

    double-to-float v2, v4

    mul-float/2addr v2, v3

    add-float/2addr v0, v2

    .line 229
    :cond_3a
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 233
    :cond_3d
    return v0
.end method

.method static hit(Lfr/testudo/spacecorsair/business/player/PlayerShip;Lfr/testudo/spacecorsair/engine/Vector2;F)V
    .registers 13

    .prologue
    .line 111
    :try_start_0
    sget v0, Lfr/testudo/spacecorsair/mod/ModMonolith;->stage:I

    if-eqz v0, :cond_13

    if-eqz p1, :cond_13

    iget-object v0, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->shield:Lfr/testudo/spacecorsair/business/player/Shield;

    if-eqz v0, :cond_13

    iget-object v0, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->shield:Lfr/testudo/spacecorsair/business/player/Shield;

    iget v0, v0, Lfr/testudo/spacecorsair/business/player/Shield;->capacity:F

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_14

    .line 123
    :cond_13
    :goto_13
    return-void

    .line 112
    :cond_14
    iget v0, p1, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v1, v1, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    sub-float/2addr v0, v1

    iget v1, p1, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    iget-object v2, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v2, v2, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    sub-float/2addr v1, v2

    .line 113
    iget v2, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->spin:F

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v2

    neg-double v2, v2

    .line 114
    float-to-double v4, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v6

    mul-double/2addr v4, v6

    float-to-double v6, v1

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v8

    mul-double/2addr v6, v8

    sub-double/2addr v4, v6

    double-to-float v4, v4

    float-to-double v6, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v8

    mul-double/2addr v6, v8

    float-to-double v0, v1

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    mul-double/2addr v0, v2

    add-double/2addr v0, v6

    double-to-float v0, v0

    .line 115
    sget v1, Lfr/testudo/spacecorsair/mod/ModMonolith;->hNext:I

    .line 116
    sget v2, Lfr/testudo/spacecorsair/mod/ModMonolith;->hNext:I

    add-int/lit8 v2, v2, 0x1

    rem-int/lit8 v2, v2, 0xc

    sput v2, Lfr/testudo/spacecorsair/mod/ModMonolith;->hNext:I

    .line 117
    sget-object v2, Lfr/testudo/spacecorsair/mod/ModMonolith;->hT:[J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    aput-wide v6, v2, v1

    .line 118
    sget-object v2, Lfr/testudo/spacecorsair/mod/ModMonolith;->hAng:[F

    float-to-double v6, v0

    float-to-double v4, v4

    invoke-static {v6, v7, v4, v5}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v4

    double-to-float v0, v4

    aput v0, v2, v1

    .line 119
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModMonolith;->hDmg:[F

    const v2, 0x3e4ccccd    # 0.2f

    const/high16 v3, 0x3f800000    # 1.0f

    const v4, 0x3da3d70a    # 0.08f

    iget-object v5, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->shield:Lfr/testudo/spacecorsair/business/player/Shield;

    iget v5, v5, Lfr/testudo/spacecorsair/business/player/Shield;->capacity:F

    mul-float/2addr v4, v5

    div-float v4, p2, v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v2

    aput v2, v0, v1
    :try_end_7e
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_7e} :catch_7f

    goto :goto_13

    .line 120
    :catch_7f
    move-exception v0

    goto :goto_13
.end method

.method private static hits(Lfr/testudo/spacecorsair/business/player/PlayerShip;J[FF)V
    .registers 28

    .prologue
    .line 396
    sget v2, Lfr/testudo/spacecorsair/mod/ModMonolith;->D:F

    const/high16 v3, 0x44800000    # 1024.0f

    div-float v19, v2, v3

    .line 397
    move-object/from16 v0, p3

    array-length v2, v0

    div-int/lit8 v20, v2, 0x4

    .line 398
    const/4 v2, 0x0

    move/from16 v18, v2

    :goto_e
    const/16 v2, 0xc

    move/from16 v0, v18

    if-ge v0, v2, :cond_1a1

    .line 399
    sget-object v2, Lfr/testudo/spacecorsair/mod/ModMonolith;->hT:[J

    aget-wide v2, v2, v18

    sub-long v2, p1, v2

    long-to-float v2, v2

    const/high16 v3, 0x447a0000    # 1000.0f

    div-float v21, v2, v3

    .line 400
    sget-object v2, Lfr/testudo/spacecorsair/mod/ModMonolith;->hT:[J

    aget-wide v2, v2, v18

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_30

    const v2, 0x3f99999a    # 1.2f

    cmpl-float v2, v21, v2

    if-ltz v2, :cond_35

    .line 398
    :cond_30
    :goto_30
    add-int/lit8 v2, v18, 0x1

    move/from16 v18, v2

    goto :goto_e

    .line 401
    :cond_35
    sget-object v2, Lfr/testudo/spacecorsair/mod/ModMonolith;->hDmg:[F

    aget v22, v2, v18

    .line 403
    const/16 v17, 0x0

    .line 404
    const/high16 v3, 0x41100000    # 9.0f

    .line 405
    const/4 v5, 0x0

    :goto_3e
    move/from16 v0, v20

    if-ge v5, v0, :cond_6c

    .line 406
    mul-int/lit8 v2, v5, 0x4

    add-int/lit8 v2, v2, 0x1

    aget v2, p3, v2

    const/high16 v4, 0x44000000    # 512.0f

    sub-float/2addr v2, v4

    float-to-double v6, v2

    mul-int/lit8 v2, v5, 0x4

    aget v2, p3, v2

    const/high16 v4, 0x44000000    # 512.0f

    sub-float/2addr v2, v4

    float-to-double v8, v2

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v6

    double-to-float v2, v6

    .line 407
    sget-object v4, Lfr/testudo/spacecorsair/mod/ModMonolith;->hAng:[F

    aget v4, v4, v18

    invoke-static {v2, v4}, Lfr/testudo/spacecorsair/mod/ModMonolith;->angd(FF)F

    move-result v2

    .line 408
    cmpg-float v4, v2, v3

    if-gez v4, :cond_1a2

    move v4, v5

    .line 405
    :goto_66
    add-int/lit8 v5, v5, 0x1

    move v3, v2

    move/from16 v17, v4

    goto :goto_3e

    .line 410
    :cond_6c
    sget-object v2, Lfr/testudo/spacecorsair/mod/ModMonolith;->a:Lfr/testudo/spacecorsair/engine/Vector2;

    mul-int/lit8 v3, v17, 0x4

    aget v3, p3, v3

    invoke-static {v3}, Lfr/testudo/spacecorsair/mod/ModMonolith;->lx(F)F

    move-result v3

    mul-int/lit8 v4, v17, 0x4

    add-int/lit8 v4, v4, 0x1

    aget v4, p3, v4

    invoke-static {v4}, Lfr/testudo/spacecorsair/mod/ModMonolith;->lx(F)F

    move-result v4

    invoke-virtual {v2, v3, v4}, Lfr/testudo/spacecorsair/engine/Vector2;->set(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 411
    sget-object v2, Lfr/testudo/spacecorsair/mod/ModMonolith;->a:Lfr/testudo/spacecorsair/engine/Vector2;

    sget-object v3, Lfr/testudo/spacecorsair/mod/ModMonolith;->b:Lfr/testudo/spacecorsair/engine/Vector2;

    move-object/from16 v0, p0

    invoke-static {v0, v2, v3}, Lfr/testudo/spacecorsair/mod/ModMonolith;->toScreen(Lfr/testudo/spacecorsair/business/player/PlayerShip;Lfr/testudo/spacecorsair/engine/Vector2;Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 412
    const/high16 v2, 0x3f000000    # 0.5f

    add-float v2, v2, v22

    move/from16 v0, v21

    neg-float v3, v0

    const v4, 0x3e99999a    # 0.3f

    div-float/2addr v3, v4

    float-to-double v4, v3

    invoke-static {v4, v5}, Ljava/lang/Math;->exp(D)D

    move-result-wide v4

    double-to-float v3, v4

    mul-float v6, v2, v3

    .line 413
    const/high16 v2, 0x41600000    # 14.0f

    const/high16 v3, 0x41600000    # 14.0f

    mul-float v3, v3, v22

    add-float/2addr v2, v3

    const v3, 0x4023d70a    # 2.56f

    mul-float/2addr v2, v3

    mul-float v2, v2, v19

    const/high16 v3, 0x40200000    # 2.5f

    mul-float v5, v2, v3

    .line 414
    const-string v2, "fx_glow"

    sget-object v3, Lfr/testudo/spacecorsair/mod/ModMonolith;->b:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v3, v3, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    sget-object v4, Lfr/testudo/spacecorsair/mod/ModMonolith;->b:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v4, v4, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    const/4 v7, 0x0

    const/high16 v8, 0x3f800000    # 1.0f

    const/high16 v9, 0x3f800000    # 1.0f

    const/high16 v10, 0x3f800000    # 1.0f

    const/high16 v11, 0x3f800000    # 1.0f

    invoke-static {v11, v6}, Ljava/lang/Math;->min(FF)F

    move-result v6

    mul-float v11, v6, p4

    const/4 v12, 0x1

    move v6, v5

    invoke-static/range {v2 .. v12}, Lfr/testudo/spacecorsair/mod/ModFx;->spr(Ljava/lang/String;FFFFFFFFFZ)V

    .line 416
    const v2, 0x40333333    # 2.8f

    mul-float v2, v2, v21

    const v3, 0x40c90fdb

    div-float/2addr v2, v3

    move/from16 v0, v20

    int-to-float v3, v0

    mul-float/2addr v3, v2

    .line 417
    move/from16 v0, v21

    neg-float v2, v0

    const v4, 0x3f333333    # 0.7f

    div-float/2addr v2, v4

    float-to-double v6, v2

    invoke-static {v6, v7}, Ljava/lang/Math;->exp(D)D

    move-result-wide v6

    double-to-float v2, v6

    mul-float v2, v2, v22

    mul-float v15, v2, p4

    .line 418
    const/4 v2, -0x1

    :goto_ed
    const/4 v4, 0x1

    if-gt v2, v4, :cond_149

    .line 419
    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v4

    mul-int/2addr v4, v2

    add-int v4, v4, v17

    rem-int v4, v4, v20

    add-int v4, v4, v20

    rem-int v4, v4, v20

    .line 420
    sget-object v6, Lfr/testudo/spacecorsair/mod/ModMonolith;->a:Lfr/testudo/spacecorsair/engine/Vector2;

    mul-int/lit8 v7, v4, 0x4

    aget v7, p3, v7

    invoke-static {v7}, Lfr/testudo/spacecorsair/mod/ModMonolith;->lx(F)F

    move-result v7

    mul-int/lit8 v4, v4, 0x4

    add-int/lit8 v4, v4, 0x1

    aget v4, p3, v4

    invoke-static {v4}, Lfr/testudo/spacecorsair/mod/ModMonolith;->lx(F)F

    move-result v4

    invoke-virtual {v6, v7, v4}, Lfr/testudo/spacecorsair/engine/Vector2;->set(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 421
    sget-object v4, Lfr/testudo/spacecorsair/mod/ModMonolith;->a:Lfr/testudo/spacecorsair/engine/Vector2;

    sget-object v6, Lfr/testudo/spacecorsair/mod/ModMonolith;->c:Lfr/testudo/spacecorsair/engine/Vector2;

    move-object/from16 v0, p0

    invoke-static {v0, v4, v6}, Lfr/testudo/spacecorsair/mod/ModMonolith;->toScreen(Lfr/testudo/spacecorsair/business/player/PlayerShip;Lfr/testudo/spacecorsair/engine/Vector2;Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 422
    const-string v6, "fx_glow"

    sget-object v4, Lfr/testudo/spacecorsair/mod/ModMonolith;->c:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v7, v4, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    sget-object v4, Lfr/testudo/spacecorsair/mod/ModMonolith;->c:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v8, v4, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    const v4, 0x3f4ccccd    # 0.8f

    mul-float v9, v5, v4

    const v4, 0x3f4ccccd    # 0.8f

    mul-float v10, v5, v4

    const/4 v11, 0x0

    sget-object v4, Lfr/testudo/spacecorsair/mod/ModMonolith;->core:[F

    const/4 v12, 0x0

    aget v12, v4, v12

    sget-object v4, Lfr/testudo/spacecorsair/mod/ModMonolith;->core:[F

    const/4 v13, 0x1

    aget v13, v4, v13

    sget-object v4, Lfr/testudo/spacecorsair/mod/ModMonolith;->core:[F

    const/4 v14, 0x2

    aget v14, v4, v14

    const/16 v16, 0x1

    invoke-static/range {v6 .. v16}, Lfr/testudo/spacecorsair/mod/ModFx;->spr(Ljava/lang/String;FFFFFFFFFZ)V

    .line 418
    add-int/lit8 v2, v2, 0x2

    goto :goto_ed

    .line 424
    :cond_149
    const v2, 0x3f4ccccd    # 0.8f

    cmpl-float v2, v22, v2

    if-lez v2, :cond_30

    const v2, 0x3f19999a    # 0.6f

    cmpg-float v2, v21, v2

    if-gez v2, :cond_30

    .line 425
    sget-object v4, Lfr/testudo/spacecorsair/engine/GameRenderer;->screenCenter:Lfr/testudo/spacecorsair/engine/Vector2;

    .line 426
    sget v2, Lfr/testudo/spacecorsair/mod/ModMonolith;->D:F

    const/high16 v3, 0x3f000000    # 0.5f

    const/high16 v5, 0x42b40000    # 90.0f

    mul-float v5, v5, v21

    const v6, 0x4023d70a    # 2.56f

    mul-float/2addr v5, v6

    const/high16 v6, 0x44800000    # 1024.0f

    div-float/2addr v5, v6

    const/high16 v6, 0x40000000    # 2.0f

    mul-float/2addr v5, v6

    add-float/2addr v3, v5

    mul-float v6, v2, v3

    .line 427
    const-string v2, "fx_shock"

    iget v3, v4, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    iget v4, v4, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    const/high16 v5, 0x40000000    # 2.0f

    mul-float/2addr v5, v6

    const/high16 v7, 0x40000000    # 2.0f

    mul-float/2addr v6, v7

    const/4 v7, 0x0

    sget-object v8, Lfr/testudo/spacecorsair/mod/ModMonolith;->core:[F

    const/4 v9, 0x0

    aget v8, v8, v9

    sget-object v9, Lfr/testudo/spacecorsair/mod/ModMonolith;->core:[F

    const/4 v10, 0x1

    aget v9, v9, v10

    sget-object v10, Lfr/testudo/spacecorsair/mod/ModMonolith;->core:[F

    const/4 v11, 0x2

    aget v10, v10, v11

    const/high16 v11, 0x3f000000    # 0.5f

    move/from16 v0, v21

    neg-float v12, v0

    const/high16 v13, 0x3f000000    # 0.5f

    div-float/2addr v12, v13

    float-to-double v12, v12

    invoke-static {v12, v13}, Ljava/lang/Math;->exp(D)D

    move-result-wide v12

    double-to-float v12, v12

    mul-float/2addr v11, v12

    mul-float v11, v11, p4

    const/4 v12, 0x1

    invoke-static/range {v2 .. v12}, Lfr/testudo/spacecorsair/mod/ModFx;->spr(Ljava/lang/String;FFFFFFFFFZ)V

    goto/16 :goto_30

    .line 430
    :cond_1a1
    return-void

    :cond_1a2
    move v2, v3

    move/from16 v4, v17

    goto/16 :goto_66
.end method

.method private static interp([FIIF)F
    .registers 8

    .prologue
    .line 250
    array-length v0, p0

    div-int/2addr v0, p1

    .line 251
    add-int/lit8 v1, v0, -0x1

    int-to-float v1, v1

    mul-float/2addr v1, p3

    .line 252
    float-to-int v2, v1

    add-int/lit8 v0, v0, -0x2

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 253
    int-to-float v2, v0

    sub-float/2addr v1, v2

    .line 254
    mul-int v2, v0, p1

    add-int/2addr v2, p2

    aget v2, p0, v2

    const/high16 v3, 0x3f800000    # 1.0f

    sub-float/2addr v3, v1

    mul-float/2addr v2, v3

    add-int/lit8 v0, v0, 0x1

    mul-int/2addr v0, p1

    add-int/2addr v0, p2

    aget v0, p0, v0

    mul-float/2addr v0, v1

    add-float/2addr v0, v2

    return v0
.end method

.method private static lx(F)F
    .registers 4

    .prologue
    const/high16 v2, 0x3f000000    # 0.5f

    .line 142
    add-float v0, p0, v2

    const/high16 v1, 0x44800000    # 1024.0f

    div-float/2addr v0, v1

    sub-float/2addr v0, v2

    sget v1, Lfr/testudo/spacecorsair/mod/ModMonolith;->D:F

    mul-float/2addr v0, v1

    return v0
.end method

.method public static over(Lfr/testudo/spacecorsair/business/player/PlayerShip;)V
    .registers 24

    .prologue
    .line 317
    :try_start_0
    sget v2, Lfr/testudo/spacecorsair/mod/ModMonolith;->stage:I

    if-nez v2, :cond_5

    .line 349
    :cond_4
    :goto_4
    return-void

    .line 318
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lfr/testudo/spacecorsair/business/player/PlayerShip;->getDrawableObject()Lfr/testudo/spacecorsair/display/Drawable;

    move-result-object v2

    .line 319
    if-eqz v2, :cond_4

    iget-object v3, v2, Lfr/testudo/spacecorsair/display/Drawable;->dimensions:Lfr/testudo/spacecorsair/engine/Vector2;

    if-eqz v3, :cond_4

    .line 320
    iget-object v2, v2, Lfr/testudo/spacecorsair/display/Drawable;->dimensions:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v2, v2, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    sput v2, Lfr/testudo/spacecorsair/mod/ModMonolith;->D:F

    .line 321
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    .line 322
    const-string v2, "monolith"

    sget v3, Lfr/testudo/spacecorsair/mod/ModMonolith;->stage:I

    invoke-static {v2, v3}, Lfr/testudo/spacecorsair/mod/ModMonolith;->useParts(Ljava/lang/String;I)Z

    move-result v13

    .line 323
    sget v2, Lfr/testudo/spacecorsair/mod/ModMonolith;->stage:I

    const/4 v3, 0x5

    if-ne v2, v3, :cond_68

    const/high16 v20, 0x3f800000    # 1.0f

    .line 324
    :goto_28
    sget-object v4, Lfr/testudo/spacecorsair/engine/GameRenderer;->screenCenter:Lfr/testudo/spacecorsair/engine/Vector2;

    .line 325
    const/4 v2, 0x1

    sput-boolean v2, Lfr/testudo/spacecorsair/mod/ModFx;->relative:Z
    :try_end_2d
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_2d} :catch_63

    .line 327
    if-eqz v13, :cond_6b

    :try_start_2f
    const-string v2, "monolith_stage5_hull_hot"

    .line 328
    :goto_31
    if-eqz v2, :cond_56

    sget v3, Lfr/testudo/spacecorsair/mod/ModMonolith;->heat:F

    const v5, 0x3ca3d70a    # 0.02f

    cmpl-float v3, v3, v5

    if-lez v3, :cond_56

    iget v3, v4, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    iget v4, v4, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    sget v5, Lfr/testudo/spacecorsair/mod/ModMonolith;->D:F

    sget v6, Lfr/testudo/spacecorsair/mod/ModMonolith;->D:F

    move-object/from16 v0, p0

    iget v7, v0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->spin:F

    const/high16 v8, 0x3f800000    # 1.0f

    const/high16 v9, 0x3f800000    # 1.0f

    const/high16 v10, 0x3f800000    # 1.0f

    sget v11, Lfr/testudo/spacecorsair/mod/ModMonolith;->heat:F

    mul-float v11, v11, v20

    const/4 v12, 0x0

    invoke-static/range {v2 .. v12}, Lfr/testudo/spacecorsair/mod/ModFx;->sprR(Ljava/lang/String;FFFFFFFFFZ)V

    .line 329
    :cond_56
    invoke-static/range {p0 .. p0}, Lfr/testudo/spacecorsair/mod/ModMonolith;->shieldFrac(Lfr/testudo/spacecorsair/business/player/PlayerShip;)F
    :try_end_59
    .catchall {:try_start_2f .. :try_end_59} :catchall_de

    move-result v11

    .line 330
    const/4 v2, 0x0

    cmpg-float v2, v11, v2

    if-gtz v2, :cond_75

    .line 344
    const/4 v2, 0x0

    :try_start_60
    sput-boolean v2, Lfr/testudo/spacecorsair/mod/ModFx;->relative:Z
    :try_end_62
    .catch Ljava/lang/Throwable; {:try_start_60 .. :try_end_62} :catch_63

    goto :goto_4

    .line 346
    :catch_63
    move-exception v2

    .line 347
    const/4 v2, 0x0

    sput-boolean v2, Lfr/testudo/spacecorsair/mod/ModFx;->relative:Z

    goto :goto_4

    .line 323
    :cond_68
    const/high16 v20, 0x3f000000    # 0.5f

    goto :goto_28

    .line 327
    :cond_6b
    :try_start_6b
    sget v2, Lfr/testudo/spacecorsair/mod/ModMonolith;->stage:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_73

    const-string v2, "monolith_stage4_hot"

    goto :goto_31

    :cond_73
    const/4 v2, 0x0

    goto :goto_31

    .line 331
    :cond_75
    invoke-static {v14, v15}, Lfr/testudo/spacecorsair/mod/ModMonolith;->agitation(J)F

    move-result v12

    .line 332
    sget v2, Lfr/testudo/spacecorsair/mod/ModMonolith;->held:F

    const v3, 0x3e99999a    # 0.3f

    const/high16 v4, 0x3fc00000    # 1.5f

    invoke-static {v12, v4}, Ljava/lang/Math;->min(FF)F

    move-result v4

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    .line 333
    sget-object v3, Lfr/testudo/spacecorsair/mod/ModMonolith;->AURA_CORE:[[F

    sget-object v4, Lfr/testudo/spacecorsair/mod/ModMonolith;->core:[F

    invoke-static {v3, v2, v4}, Lfr/testudo/spacecorsair/mod/ModMonolith;->ramp([[FF[F)[F

    .line 334
    sget-object v3, Lfr/testudo/spacecorsair/mod/ModMonolith;->AURA_EDGE:[[F

    sget-object v4, Lfr/testudo/spacecorsair/mod/ModMonolith;->edge:[F

    invoke-static {v3, v2, v4}, Lfr/testudo/spacecorsair/mod/ModMonolith;->ramp([[FF[F)[F

    .line 335
    if-eqz v13, :cond_d8

    sget v19, Lfr/testudo/spacecorsair/mod/ModMonolith;->ang:F

    .line 336
    :goto_98
    if-nez v13, :cond_9f

    sget v2, Lfr/testudo/spacecorsair/mod/ModMonolith;->stage:I

    const/4 v3, 0x5

    if-ne v2, v3, :cond_db

    :cond_9f
    sget-object v6, Lfr/testudo/spacecorsair/mod/ModMonoData;->HULL:[F

    .line 337
    :goto_a1
    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v3, p0

    move-wide v4, v14

    move/from16 v10, v20

    invoke-static/range {v3 .. v12}, Lfr/testudo/spacecorsair/mod/ModMonolith;->tongues(Lfr/testudo/spacecorsair/business/player/PlayerShip;J[FZZFFFF)V

    .line 338
    if-eqz v13, :cond_cc

    .line 339
    sget-object v16, Lfr/testudo/spacecorsair/mod/ModMonoData;->WING_L:[F

    const/16 v17, 0x1

    const/16 v18, 0x1

    move-object/from16 v13, p0

    move/from16 v21, v11

    move/from16 v22, v12

    invoke-static/range {v13 .. v22}, Lfr/testudo/spacecorsair/mod/ModMonolith;->tongues(Lfr/testudo/spacecorsair/business/player/PlayerShip;J[FZZFFFF)V

    .line 340
    sget-object v16, Lfr/testudo/spacecorsair/mod/ModMonoData;->WING_L:[F

    const/16 v17, 0x1

    const/16 v18, 0x0

    move-object/from16 v13, p0

    move/from16 v21, v11

    move/from16 v22, v12

    invoke-static/range {v13 .. v22}, Lfr/testudo/spacecorsair/mod/ModMonolith;->tongues(Lfr/testudo/spacecorsair/business/player/PlayerShip;J[FZZFFFF)V

    .line 342
    :cond_cc
    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-static {v0, v14, v15, v6, v1}, Lfr/testudo/spacecorsair/mod/ModMonolith;->hits(Lfr/testudo/spacecorsair/business/player/PlayerShip;J[FF)V
    :try_end_d3
    .catchall {:try_start_6b .. :try_end_d3} :catchall_de

    .line 344
    const/4 v2, 0x0

    :try_start_d4
    sput-boolean v2, Lfr/testudo/spacecorsair/mod/ModFx;->relative:Z
    :try_end_d6
    .catch Ljava/lang/Throwable; {:try_start_d4 .. :try_end_d6} :catch_63

    goto/16 :goto_4

    .line 335
    :cond_d8
    const/16 v19, 0x0

    goto :goto_98

    .line 336
    :cond_db
    :try_start_db
    sget-object v6, Lfr/testudo/spacecorsair/mod/ModMonoData;->S4:[F
    :try_end_dd
    .catchall {:try_start_db .. :try_end_dd} :catchall_de

    goto :goto_a1

    .line 344
    :catchall_de
    move-exception v2

    const/4 v3, 0x0

    :try_start_e0
    sput-boolean v3, Lfr/testudo/spacecorsair/mod/ModFx;->relative:Z

    .line 345
    throw v2
    :try_end_e3
    .catch Ljava/lang/Throwable; {:try_start_e0 .. :try_end_e3} :catch_63
.end method

.method private static plasma(Lfr/testudo/spacecorsair/business/player/PlayerShip;JF)V
    .registers 33

    .prologue
    .line 260
    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    sget v4, Lfr/testudo/spacecorsair/mod/ModMonolith;->ang:F

    const/high16 v5, 0x42a00000    # 80.0f

    div-float/2addr v4, v5

    const v5, 0x3f59999a    # 0.85f

    sub-float/2addr v4, v5

    const v5, 0x3e19999a    # 0.15f

    div-float/2addr v4, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v20

    .line 261
    const/4 v2, 0x0

    cmpg-float v2, v20, v2

    if-gtz v2, :cond_1e

    .line 312
    :cond_1d
    return-void

    .line 262
    :cond_1e
    sget-object v2, Lfr/testudo/spacecorsair/mod/ModMonolith;->PLASMA_CORE:[[F

    sget v3, Lfr/testudo/spacecorsair/mod/ModMonolith;->held:F

    sget-object v4, Lfr/testudo/spacecorsair/mod/ModMonolith;->core:[F

    invoke-static {v2, v3, v4}, Lfr/testudo/spacecorsair/mod/ModMonolith;->ramp([[FF[F)[F

    .line 263
    sget-object v2, Lfr/testudo/spacecorsair/mod/ModMonolith;->PLASMA_EDGE:[[F

    sget v3, Lfr/testudo/spacecorsair/mod/ModMonolith;->held:F

    sget-object v4, Lfr/testudo/spacecorsair/mod/ModMonolith;->edge:[F

    invoke-static {v2, v3, v4}, Lfr/testudo/spacecorsair/mod/ModMonolith;->ramp([[FF[F)[F

    .line 264
    move-wide/from16 v0, p1

    long-to-float v2, v0

    const/high16 v3, 0x447a0000    # 1000.0f

    div-float v21, v2, v3

    .line 265
    sget-wide v2, Lfr/testudo/spacecorsair/mod/ModMonolith;->lastTrail:J

    sub-long v2, p1, v2

    const-wide/16 v4, 0x2d

    cmp-long v2, v2, v4

    if-lez v2, :cond_d0

    const/4 v2, 0x1

    move/from16 v19, v2

    .line 266
    :goto_44
    if-eqz v19, :cond_48

    sput-wide p1, Lfr/testudo/spacecorsair/mod/ModMonolith;->lastTrail:J

    .line 267
    :cond_48
    sget v2, Lfr/testudo/spacecorsair/mod/ModMonolith;->D:F

    const/high16 v3, 0x44800000    # 1024.0f

    div-float v22, v2, v3

    .line 268
    const/4 v2, 0x0

    move/from16 v18, v2

    :goto_51
    const/4 v2, 0x2

    move/from16 v0, v18

    if-ge v0, v2, :cond_1d

    .line 269
    if-nez v18, :cond_d5

    const/4 v2, 0x1

    move/from16 v16, v2

    .line 271
    :goto_5b
    const/4 v2, 0x0

    move v13, v2

    :goto_5d
    add-int/lit8 v2, v13, 0x3

    sget-object v3, Lfr/testudo/spacecorsair/mod/ModMonoData;->TE_L:[F

    array-length v3, v3

    if-ge v2, v3, :cond_d9

    .line 272
    sget-object v2, Lfr/testudo/spacecorsair/mod/ModMonoData;->TE_L:[F

    aget v2, v2, v13

    sget-object v3, Lfr/testudo/spacecorsair/mod/ModMonoData;->TE_L:[F

    add-int/lit8 v4, v13, 0x1

    aget v3, v3, v4

    sget-object v4, Lfr/testudo/spacecorsair/mod/ModMonolith;->a:Lfr/testudo/spacecorsair/engine/Vector2;

    move/from16 v0, v16

    move/from16 v1, p3

    invoke-static {v0, v2, v3, v1, v4}, Lfr/testudo/spacecorsair/mod/ModMonolith;->wingPt(ZFFFLfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 273
    sget-object v2, Lfr/testudo/spacecorsair/mod/ModMonolith;->a:Lfr/testudo/spacecorsair/engine/Vector2;

    sget-object v3, Lfr/testudo/spacecorsair/mod/ModMonolith;->b:Lfr/testudo/spacecorsair/engine/Vector2;

    move-object/from16 v0, p0

    invoke-static {v0, v2, v3}, Lfr/testudo/spacecorsair/mod/ModMonolith;->toScreen(Lfr/testudo/spacecorsair/business/player/PlayerShip;Lfr/testudo/spacecorsair/engine/Vector2;Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 274
    sget-object v2, Lfr/testudo/spacecorsair/mod/ModMonoData;->TE_L:[F

    add-int/lit8 v3, v13, 0x2

    aget v2, v2, v3

    sget-object v3, Lfr/testudo/spacecorsair/mod/ModMonoData;->TE_L:[F

    add-int/lit8 v4, v13, 0x3

    aget v3, v3, v4

    sget-object v4, Lfr/testudo/spacecorsair/mod/ModMonolith;->a:Lfr/testudo/spacecorsair/engine/Vector2;

    move/from16 v0, v16

    move/from16 v1, p3

    invoke-static {v0, v2, v3, v1, v4}, Lfr/testudo/spacecorsair/mod/ModMonolith;->wingPt(ZFFFLfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 275
    sget-object v2, Lfr/testudo/spacecorsair/mod/ModMonolith;->a:Lfr/testudo/spacecorsair/engine/Vector2;

    sget-object v3, Lfr/testudo/spacecorsair/mod/ModMonolith;->c:Lfr/testudo/spacecorsair/engine/Vector2;

    move-object/from16 v0, p0

    invoke-static {v0, v2, v3}, Lfr/testudo/spacecorsair/mod/ModMonolith;->toScreen(Lfr/testudo/spacecorsair/business/player/PlayerShip;Lfr/testudo/spacecorsair/engine/Vector2;Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 276
    const-string v2, "fx_glow"

    sget-object v3, Lfr/testudo/spacecorsair/mod/ModMonolith;->b:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v3, v3, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    sget-object v4, Lfr/testudo/spacecorsair/mod/ModMonolith;->b:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v4, v4, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    sget-object v5, Lfr/testudo/spacecorsair/mod/ModMonolith;->c:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v5, v5, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    sget-object v6, Lfr/testudo/spacecorsair/mod/ModMonolith;->c:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v6, v6, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    const/high16 v7, 0x41900000    # 18.0f

    mul-float v7, v7, v22

    sget-object v8, Lfr/testudo/spacecorsair/mod/ModMonolith;->edge:[F

    const/4 v9, 0x0

    aget v8, v8, v9

    sget-object v9, Lfr/testudo/spacecorsair/mod/ModMonolith;->edge:[F

    const/4 v10, 0x1

    aget v9, v9, v10

    sget-object v10, Lfr/testudo/spacecorsair/mod/ModMonolith;->edge:[F

    const/4 v11, 0x2

    aget v10, v10, v11

    const v11, 0x3f4ccccd    # 0.8f

    mul-float v11, v11, v20

    const/4 v12, 0x1

    invoke-static/range {v2 .. v12}, Lfr/testudo/spacecorsair/mod/ModFx;->strip(Ljava/lang/String;FFFFFFFFFZ)V

    .line 271
    add-int/lit8 v2, v13, 0x2

    move v13, v2

    goto :goto_5d

    .line 265
    :cond_d0
    const/4 v2, 0x0

    move/from16 v19, v2

    goto/16 :goto_44

    .line 269
    :cond_d5
    const/4 v2, 0x0

    move/from16 v16, v2

    goto :goto_5b

    .line 278
    :cond_d9
    const/4 v2, 0x0

    move/from16 v17, v2

    :goto_dc
    const/16 v2, 0x9

    move/from16 v0, v17

    if-ge v0, v2, :cond_2c0

    .line 279
    sget-object v2, Lfr/testudo/spacecorsair/mod/ModMonolith;->SU:[F

    aget v2, v2, v17

    .line 280
    sget-object v3, Lfr/testudo/spacecorsair/mod/ModMonoData;->TE_L:[F

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-static {v3, v4, v5, v2}, Lfr/testudo/spacecorsair/mod/ModMonolith;->interp([FIIF)F

    move-result v14

    sget-object v3, Lfr/testudo/spacecorsair/mod/ModMonoData;->TE_L:[F

    const/4 v4, 0x2

    const/4 v5, 0x1

    invoke-static {v3, v4, v5, v2}, Lfr/testudo/spacecorsair/mod/ModMonolith;->interp([FIIF)F

    move-result v15

    .line 281
    sget-object v3, Lfr/testudo/spacecorsair/mod/ModMonoData;->TE_ANG:[F

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-static {v3, v4, v5, v2}, Lfr/testudo/spacecorsair/mod/ModMonolith;->interp([FIIF)F

    move-result v3

    sget-object v4, Lfr/testudo/spacecorsair/mod/ModMonolith;->SJ:[F

    aget v4, v4, v17

    add-float/2addr v3, v4

    float-to-double v4, v3

    invoke-static {v4, v5}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v4

    double-to-float v3, v4

    .line 282
    sget-object v4, Lfr/testudo/spacecorsair/mod/ModMonoData;->TE_LEN:[F

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-static {v4, v5, v6, v2}, Lfr/testudo/spacecorsair/mod/ModMonolith;->interp([FIIF)F

    move-result v2

    sget-object v4, Lfr/testudo/spacecorsair/mod/ModMonolith;->SL:[F

    aget v4, v4, v17

    mul-float/2addr v2, v4

    mul-float v23, v2, v20

    .line 283
    float-to-double v4, v3

    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    double-to-float v0, v4

    move/from16 v24, v0

    float-to-double v2, v3

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    double-to-float v0, v2

    move/from16 v25, v0

    move/from16 v0, v24

    neg-float v0, v0

    move/from16 v26, v0

    .line 284
    const v2, 0x3f47ae14    # 0.78f

    const v3, 0x3e6147ae    # 0.22f

    const-wide v4, 0x401921fb54442d18L    # 6.283185307179586

    const-wide v6, 0x3fd3333333333333L    # 0.3

    move/from16 v0, v21

    float-to-double v8, v0

    const-wide v10, 0x3ff199999999999aL    # 1.1

    mul-double/2addr v8, v10

    sub-double/2addr v6, v8

    mul-double/2addr v4, v6

    sget-object v6, Lfr/testudo/spacecorsair/mod/ModMonolith;->SP:[F

    aget v6, v6, v17

    float-to-double v6, v6

    add-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    double-to-float v4, v4

    mul-float/2addr v3, v4

    add-float v27, v2, v3

    .line 286
    sget-object v2, Lfr/testudo/spacecorsair/mod/ModMonolith;->a:Lfr/testudo/spacecorsair/engine/Vector2;

    move/from16 v0, v16

    move/from16 v1, p3

    invoke-static {v0, v14, v15, v1, v2}, Lfr/testudo/spacecorsair/mod/ModMonolith;->wingPt(ZFFFLfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 287
    sget-object v2, Lfr/testudo/spacecorsair/mod/ModMonolith;->a:Lfr/testudo/spacecorsair/engine/Vector2;

    sget-object v3, Lfr/testudo/spacecorsair/mod/ModMonolith;->b:Lfr/testudo/spacecorsair/engine/Vector2;

    move-object/from16 v0, p0

    invoke-static {v0, v2, v3}, Lfr/testudo/spacecorsair/mod/ModMonolith;->toScreen(Lfr/testudo/spacecorsair/business/player/PlayerShip;Lfr/testudo/spacecorsair/engine/Vector2;Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 288
    sget-object v2, Lfr/testudo/spacecorsair/mod/ModMonolith;->b:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v3, v2, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    sget-object v2, Lfr/testudo/spacecorsair/mod/ModMonolith;->b:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v4, v2, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    .line 290
    mul-float v2, v24, v23

    add-float/2addr v2, v14

    mul-float v5, v25, v23

    add-float/2addr v5, v15

    sget-object v6, Lfr/testudo/spacecorsair/mod/ModMonolith;->a:Lfr/testudo/spacecorsair/engine/Vector2;

    move/from16 v0, v16

    move/from16 v1, p3

    invoke-static {v0, v2, v5, v1, v6}, Lfr/testudo/spacecorsair/mod/ModMonolith;->wingPt(ZFFFLfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 291
    sget-object v2, Lfr/testudo/spacecorsair/mod/ModMonolith;->a:Lfr/testudo/spacecorsair/engine/Vector2;

    sget-object v5, Lfr/testudo/spacecorsair/mod/ModMonolith;->c:Lfr/testudo/spacecorsair/engine/Vector2;

    move-object/from16 v0, p0

    invoke-static {v0, v2, v5}, Lfr/testudo/spacecorsair/mod/ModMonolith;->toScreen(Lfr/testudo/spacecorsair/business/player/PlayerShip;Lfr/testudo/spacecorsair/engine/Vector2;Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 292
    const-string v2, "fx_glow"

    sget-object v5, Lfr/testudo/spacecorsair/mod/ModMonolith;->c:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v5, v5, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    sget-object v6, Lfr/testudo/spacecorsair/mod/ModMonolith;->c:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v6, v6, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    const/high16 v7, 0x41d00000    # 26.0f

    mul-float v7, v7, v22

    sget-object v8, Lfr/testudo/spacecorsair/mod/ModMonolith;->edge:[F

    const/4 v9, 0x0

    aget v8, v8, v9

    sget-object v9, Lfr/testudo/spacecorsair/mod/ModMonolith;->edge:[F

    const/4 v10, 0x1

    aget v9, v9, v10

    sget-object v10, Lfr/testudo/spacecorsair/mod/ModMonolith;->edge:[F

    const/4 v11, 0x2

    aget v10, v10, v11

    const v11, 0x3eb33333    # 0.35f

    mul-float v11, v11, v20

    mul-float v11, v11, v27

    const/4 v12, 0x1

    invoke-static/range {v2 .. v12}, Lfr/testudo/spacecorsair/mod/ModFx;->strip(Ljava/lang/String;FFFFFFFFFZ)V

    .line 293
    const/4 v2, 0x1

    move v13, v2

    :goto_1b2
    const/4 v2, 0x3

    if-gt v13, v2, :cond_240

    .line 294
    int-to-float v2, v13

    mul-float v2, v2, v23

    const/high16 v5, 0x40400000    # 3.0f

    div-float/2addr v2, v5

    int-to-float v5, v13

    const/high16 v6, 0x40400000    # 3.0f

    div-float/2addr v5, v6

    .line 295
    const/high16 v6, 0x40e00000    # 7.0f

    const/high16 v7, 0x42180000    # 38.0f

    div-float v7, v2, v7

    const v8, 0x404ccccd    # 3.2f

    mul-float v8, v8, v21

    sub-float/2addr v7, v8

    sget-object v8, Lfr/testudo/spacecorsair/mod/ModMonolith;->SP:[F

    aget v8, v8, v17

    add-float/2addr v7, v8

    float-to-double v8, v7

    invoke-static {v8, v9}, Ljava/lang/Math;->sin(D)D

    move-result-wide v8

    double-to-float v7, v8

    mul-float/2addr v6, v7

    mul-float/2addr v5, v6

    .line 296
    mul-float v6, v24, v2

    add-float/2addr v6, v14

    mul-float v7, v25, v5

    add-float/2addr v6, v7

    mul-float v2, v2, v25

    add-float/2addr v2, v15

    mul-float v5, v5, v26

    add-float/2addr v2, v5

    sget-object v5, Lfr/testudo/spacecorsair/mod/ModMonolith;->a:Lfr/testudo/spacecorsair/engine/Vector2;

    move/from16 v0, v16

    move/from16 v1, p3

    invoke-static {v0, v6, v2, v1, v5}, Lfr/testudo/spacecorsair/mod/ModMonolith;->wingPt(ZFFFLfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 297
    sget-object v2, Lfr/testudo/spacecorsair/mod/ModMonolith;->a:Lfr/testudo/spacecorsair/engine/Vector2;

    sget-object v5, Lfr/testudo/spacecorsair/mod/ModMonolith;->c:Lfr/testudo/spacecorsair/engine/Vector2;

    move-object/from16 v0, p0

    invoke-static {v0, v2, v5}, Lfr/testudo/spacecorsair/mod/ModMonolith;->toScreen(Lfr/testudo/spacecorsair/business/player/PlayerShip;Lfr/testudo/spacecorsair/engine/Vector2;Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 298
    const/high16 v2, 0x3f800000    # 1.0f

    add-int/lit8 v5, v13, -0x1

    int-to-float v5, v5

    const/high16 v6, 0x40400000    # 3.0f

    div-float/2addr v5, v6

    sub-float/2addr v2, v5

    float-to-double v6, v2

    const-wide v8, 0x3fe999999999999aL    # 0.8

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    double-to-float v11, v6

    .line 299
    const-string v2, "fx_glow"

    sget-object v5, Lfr/testudo/spacecorsair/mod/ModMonolith;->c:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v5, v5, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    sget-object v6, Lfr/testudo/spacecorsair/mod/ModMonolith;->c:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v6, v6, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    const/high16 v7, 0x41100000    # 9.0f

    mul-float v7, v7, v22

    sget-object v8, Lfr/testudo/spacecorsair/mod/ModMonolith;->core:[F

    const/4 v9, 0x0

    aget v8, v8, v9

    sget-object v9, Lfr/testudo/spacecorsair/mod/ModMonolith;->core:[F

    const/4 v10, 0x1

    aget v9, v9, v10

    sget-object v10, Lfr/testudo/spacecorsair/mod/ModMonolith;->core:[F

    const/4 v12, 0x2

    aget v10, v10, v12

    const v12, 0x3f59999a    # 0.85f

    mul-float v12, v12, v20

    mul-float v12, v12, v27

    mul-float/2addr v11, v12

    const/4 v12, 0x1

    invoke-static/range {v2 .. v12}, Lfr/testudo/spacecorsair/mod/ModFx;->strip(Ljava/lang/String;FFFFFFFFFZ)V

    .line 300
    sget-object v2, Lfr/testudo/spacecorsair/mod/ModMonolith;->c:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v3, v2, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    .line 301
    sget-object v2, Lfr/testudo/spacecorsair/mod/ModMonolith;->c:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v4, v2, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    .line 293
    add-int/lit8 v2, v13, 0x1

    move v13, v2

    goto/16 :goto_1b2

    .line 304
    :cond_240
    if-eqz v19, :cond_2ba

    rem-int/lit8 v2, v17, 0x3

    const-wide/16 v4, 0x2d

    div-long v4, p1, v4

    const-wide/16 v6, 0x3

    rem-long/2addr v4, v6

    long-to-int v3, v4

    if-ne v2, v3, :cond_2ba

    .line 305
    mul-float v2, v24, v23

    add-float/2addr v2, v14

    mul-float v3, v25, v23

    add-float/2addr v3, v15

    sget-object v4, Lfr/testudo/spacecorsair/mod/ModMonolith;->a:Lfr/testudo/spacecorsair/engine/Vector2;

    move/from16 v0, v16

    move/from16 v1, p3

    invoke-static {v0, v2, v3, v1, v4}, Lfr/testudo/spacecorsair/mod/ModMonolith;->wingPt(ZFFFLfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 306
    move-object/from16 v0, p0

    iget-object v2, v0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    move-object/from16 v0, p0

    iget v3, v0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->spin:F

    sget-object v4, Lfr/testudo/spacecorsair/mod/ModMonolith;->a:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v4, v4, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    sget-object v5, Lfr/testudo/spacecorsair/mod/ModMonolith;->a:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v5, v5, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    sget-object v6, Lfr/testudo/spacecorsair/mod/ModMonolith;->c:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-static {v2, v3, v4, v5, v6}, Lfr/testudo/spacecorsair/mod/ModFx;->local(Lfr/testudo/spacecorsair/engine/Vector2;FFFLfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 307
    const-string v2, "fx_glow"

    sget-object v3, Lfr/testudo/spacecorsair/mod/ModMonolith;->c:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v3, v3, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    sget-object v4, Lfr/testudo/spacecorsair/mod/ModMonolith;->c:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v4, v4, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    const/high16 v5, -0x3f000000    # -8.0f

    const/high16 v6, 0x41000000    # 8.0f

    invoke-static {v5, v6}, Lfr/testudo/spacecorsair/mod/ModFx;->rnd(FF)F

    move-result v5

    const/high16 v6, -0x3f000000    # -8.0f

    const/high16 v7, 0x41000000    # 8.0f

    invoke-static {v6, v7}, Lfr/testudo/spacecorsair/mod/ModFx;->rnd(FF)F

    move-result v6

    const/high16 v7, 0x43d20000    # 420.0f

    const/high16 v8, 0x41b00000    # 22.0f

    mul-float v8, v8, v22

    const/high16 v9, 0x40800000    # 4.0f

    mul-float/2addr v8, v9

    const/high16 v9, 0x40c00000    # 6.0f

    mul-float v9, v9, v22

    const/high16 v10, 0x40800000    # 4.0f

    mul-float/2addr v9, v10

    sget-object v10, Lfr/testudo/spacecorsair/mod/ModMonolith;->edge:[F

    const/4 v11, 0x0

    aget v10, v10, v11

    sget-object v11, Lfr/testudo/spacecorsair/mod/ModMonolith;->edge:[F

    const/4 v12, 0x1

    aget v11, v11, v12

    sget-object v12, Lfr/testudo/spacecorsair/mod/ModMonolith;->edge:[F

    const/4 v13, 0x2

    aget v12, v12, v13

    const v13, 0x3f19999a    # 0.6f

    mul-float v13, v13, v20

    const/4 v14, 0x1

    const/4 v15, 0x0

    invoke-static/range {v2 .. v15}, Lfr/testudo/spacecorsair/mod/ModFx;->part(Ljava/lang/String;FFFFFFFFFFFZZ)V

    .line 308
    const/high16 v2, 0x40400000    # 3.0f

    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModFx;->lastDrag(F)V

    .line 278
    :cond_2ba
    add-int/lit8 v2, v17, 0x1

    move/from16 v17, v2

    goto/16 :goto_dc

    .line 268
    :cond_2c0
    add-int/lit8 v2, v18, 0x1

    move/from16 v18, v2

    goto/16 :goto_51
.end method

.method private static ramp([[FF[F)[F
    .registers 10

    .prologue
    const/4 v6, 0x1

    const/4 v3, 0x0

    const/high16 v5, 0x40000000    # 2.0f

    const/high16 v4, 0x3f000000    # 0.5f

    .line 127
    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v1, p1}, Ljava/lang/Math;->min(FF)F

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 130
    cmpg-float v1, v0, v4

    if-gtz v1, :cond_2e

    aget-object v2, p0, v3

    aget-object v1, p0, v6

    mul-float/2addr v0, v5

    .line 131
    :goto_1a
    const/4 v4, 0x3

    if-ge v3, v4, :cond_36

    aget v4, v2, v3

    aget v5, v1, v3

    aget v6, v2, v3

    sub-float/2addr v5, v6

    mul-float/2addr v5, v0

    add-float/2addr v4, v5

    const/high16 v5, 0x437f0000    # 255.0f

    div-float/2addr v4, v5

    aput v4, p2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1a

    .line 130
    :cond_2e
    aget-object v2, p0, v6

    const/4 v1, 0x2

    aget-object v1, p0, v1

    sub-float/2addr v0, v4

    mul-float/2addr v0, v5

    goto :goto_1a

    .line 132
    :cond_36
    return-object p2
.end method

.method private static shieldFrac(Lfr/testudo/spacecorsair/business/player/PlayerShip;)F
    .registers 5

    .prologue
    const/4 v0, 0x0

    .line 223
    iget-object v1, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->shield:Lfr/testudo/spacecorsair/business/player/Shield;

    if-eqz v1, :cond_15

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->shield:Lfr/testudo/spacecorsair/business/player/Shield;

    iget v1, v1, Lfr/testudo/spacecorsair/business/player/Shield;->capacity:F

    cmpg-float v1, v1, v0

    if-lez v1, :cond_15

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->shield:Lfr/testudo/spacecorsair/business/player/Shield;

    iget v1, v1, Lfr/testudo/spacecorsair/business/player/Shield;->currentValue:F

    cmpg-float v1, v1, v0

    if-gtz v1, :cond_16

    .line 224
    :cond_15
    :goto_15
    return v0

    :cond_16
    const/high16 v1, 0x3f800000    # 1.0f

    iget-object v2, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->shield:Lfr/testudo/spacecorsair/business/player/Shield;

    iget v2, v2, Lfr/testudo/spacecorsair/business/player/Shield;->currentValue:F

    iget-object v3, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->shield:Lfr/testudo/spacecorsair/business/player/Shield;

    iget v3, v3, Lfr/testudo/spacecorsair/business/player/Shield;->capacity:F

    div-float/2addr v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    goto :goto_15
.end method

.method static stageOf(Lfr/testudo/spacecorsair/business/player/PlayerShip;)I
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 46
    :try_start_1
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->shipSpec:Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModShips;->hullFor(Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;)Lfr/testudo/spacecorsair/mod/ModShips$Hull;

    move-result-object v0

    .line 47
    if-eqz v0, :cond_13

    const-string v2, "monolith"

    iget-object v0, v0, Lfr/testudo/spacecorsair/mod/ModShips$Hull;->art:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_14

    .line 51
    :cond_13
    :goto_13
    return v1

    .line 48
    :cond_14
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModV35;->currentShip()Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    move-result-object v0

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModV35;->level(Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)I

    move-result v0

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModV35;->stage(I)I
    :try_end_1f
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1f} :catch_27

    move-result v0

    .line 49
    const/4 v2, 0x4

    if-lt v0, v2, :cond_25

    :goto_23
    move v1, v0

    goto :goto_13

    :cond_25
    move v0, v1

    goto :goto_23

    .line 50
    :catch_27
    move-exception v0

    goto :goto_13
.end method

.method private static toScreen(Lfr/testudo/spacecorsair/business/player/PlayerShip;Lfr/testudo/spacecorsair/engine/Vector2;Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;
    .registers 7

    .prologue
    .line 154
    sget-object v0, Lfr/testudo/spacecorsair/engine/GameRenderer;->screenCenter:Lfr/testudo/spacecorsair/engine/Vector2;

    .line 155
    iget v1, p1, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    iget v2, p1, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    invoke-virtual {p2, v1, v2}, Lfr/testudo/spacecorsair/engine/Vector2;->set(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    move-result-object v1

    iget v2, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->spin:F

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lfr/testudo/spacecorsair/engine/Vector2;->applyRotatation(D)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 156
    iget v1, p2, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    iget v2, v0, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    add-float/2addr v1, v2

    iget v2, p2, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    iget v0, v0, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    add-float/2addr v0, v2

    invoke-virtual {p2, v1, v0}, Lfr/testudo/spacecorsair/engine/Vector2;->set(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 157
    return-object p2
.end method

.method private static tongues(Lfr/testudo/spacecorsair/business/player/PlayerShip;J[FZZFFFF)V
    .registers 33

    .prologue
    .line 358
    sget v2, Lfr/testudo/spacecorsair/mod/ModMonolith;->D:F

    const/high16 v3, 0x44800000    # 1024.0f

    div-float v14, v2, v3

    .line 359
    const/high16 v2, 0x41600000    # 14.0f

    const/high16 v3, 0x41000000    # 8.0f

    sget v4, Lfr/testudo/spacecorsair/mod/ModMonolith;->held:F

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    mul-float/2addr v2, v14

    const v3, 0x4023d70a    # 2.56f

    mul-float/2addr v2, v3

    const/high16 v3, 0x3f800000    # 1.0f

    const/high16 v4, 0x3f000000    # 0.5f

    const/high16 v5, 0x3fc00000    # 1.5f

    move/from16 v0, p9

    invoke-static {v0, v5}, Ljava/lang/Math;->min(FF)F

    move-result v5

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    mul-float v15, v2, v3

    .line 360
    move-object/from16 v0, p3

    array-length v2, v0

    div-int/lit8 v16, v2, 0x4

    .line 361
    const/4 v2, 0x0

    move v13, v2

    :goto_2a
    move/from16 v0, v16

    if-ge v13, v0, :cond_259

    .line 362
    mul-int/lit8 v2, v13, 0x4

    aget v3, p3, v2

    mul-int/lit8 v2, v13, 0x4

    add-int/lit8 v2, v2, 0x1

    aget v6, p3, v2

    mul-int/lit8 v2, v13, 0x4

    add-int/lit8 v2, v2, 0x2

    aget v7, p3, v2

    mul-int/lit8 v2, v13, 0x4

    add-int/lit8 v2, v2, 0x3

    aget v8, p3, v2

    .line 363
    const/high16 v2, 0x44000000    # 512.0f

    sub-float v2, v6, v2

    float-to-double v4, v2

    if-eqz p4, :cond_96

    if-nez p5, :cond_96

    const v2, 0x447fc000    # 1023.0f

    sub-float/2addr v2, v3

    :goto_51
    const/high16 v9, 0x44000000    # 512.0f

    sub-float/2addr v2, v9

    float-to-double v10, v2

    invoke-static {v4, v5, v10, v11}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v4

    double-to-float v9, v4

    .line 364
    const/high16 v2, 0x3f800000    # 1.0f

    const v4, 0x3f19999a    # 0.6f

    const/high16 v5, 0x44800000    # 1024.0f

    div-float v5, v6, v5

    const/high16 v10, 0x44800000    # 1024.0f

    div-float v10, v6, v10

    mul-float/2addr v5, v10

    mul-float/2addr v4, v5

    sget v5, Lfr/testudo/spacecorsair/mod/ModMonolith;->held:F

    mul-float/2addr v4, v5

    add-float/2addr v2, v4

    mul-float v10, v15, v2

    .line 365
    const/4 v4, 0x0

    .line 366
    const/high16 v2, 0x3f800000    # 1.0f

    .line 367
    const/4 v5, 0x0

    :goto_73
    const/16 v11, 0xc

    if-ge v5, v11, :cond_11d

    .line 368
    sget-object v11, Lfr/testudo/spacecorsair/mod/ModMonolith;->hT:[J

    aget-wide v18, v11, v5

    sub-long v18, p1, v18

    move-wide/from16 v0, v18

    long-to-float v11, v0

    const/high16 v12, 0x447a0000    # 1000.0f

    div-float/2addr v11, v12

    .line 369
    sget-object v12, Lfr/testudo/spacecorsair/mod/ModMonolith;->hT:[J

    aget-wide v18, v12, v5

    const-wide/16 v20, 0x0

    cmp-long v12, v18, v20

    if-eqz v12, :cond_93

    const/high16 v12, 0x40400000    # 3.0f

    cmpl-float v12, v11, v12

    if-ltz v12, :cond_98

    .line 367
    :cond_93
    :goto_93
    add-int/lit8 v5, v5, 0x1

    goto :goto_73

    :cond_96
    move v2, v3

    .line 363
    goto :goto_51

    .line 370
    :cond_98
    sget-object v12, Lfr/testudo/spacecorsair/mod/ModMonolith;->hDmg:[F

    aget v12, v12, v5

    neg-float v0, v11

    move/from16 v17, v0

    move/from16 v0, v17

    float-to-double v0, v0

    move-wide/from16 v18, v0

    const-wide/high16 v20, 0x3ff8000000000000L    # 1.5

    div-double v18, v18, v20

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->exp(D)D

    move-result-wide v18

    move-wide/from16 v0, v18

    double-to-float v0, v0

    move/from16 v17, v0

    mul-float v12, v12, v17

    .line 371
    sget-object v17, Lfr/testudo/spacecorsair/mod/ModMonolith;->hAng:[F

    aget v17, v17, v5

    sub-float v17, v9, v17

    move/from16 v0, v17

    float-to-double v0, v0

    move-wide/from16 v18, v0

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->cos(D)D

    move-result-wide v18

    move-wide/from16 v0, v18

    double-to-float v0, v0

    move/from16 v17, v0

    mul-float v12, v12, v17

    add-float/2addr v4, v12

    .line 372
    sget-object v12, Lfr/testudo/spacecorsair/mod/ModMonolith;->hAng:[F

    aget v12, v12, v5

    invoke-static {v9, v12}, Lfr/testudo/spacecorsair/mod/ModMonolith;->angd(FF)F

    move-result v12

    .line 373
    const/high16 v17, 0x3f800000    # 1.0f

    const v18, 0x3f0ccccd    # 0.55f

    sget-object v19, Lfr/testudo/spacecorsair/mod/ModMonolith;->hDmg:[F

    aget v19, v19, v5

    mul-float v18, v18, v19

    neg-float v0, v12

    move/from16 v19, v0

    mul-float v12, v12, v19

    const/high16 v19, 0x3e800000    # 0.25f

    div-float v12, v12, v19

    float-to-double v0, v12

    move-wide/from16 v20, v0

    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->exp(D)D

    move-result-wide v20

    move-wide/from16 v0, v20

    double-to-float v12, v0

    mul-float v12, v12, v18

    neg-float v0, v11

    move/from16 v18, v0

    const/high16 v19, 0x3f000000    # 0.5f

    div-float v18, v18, v19

    move/from16 v0, v18

    float-to-double v0, v0

    move-wide/from16 v18, v0

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->exp(D)D

    move-result-wide v18

    move-wide/from16 v0, v18

    double-to-float v0, v0

    move/from16 v18, v0

    mul-float v12, v12, v18

    const/high16 v18, 0x41200000    # 10.0f

    mul-float v11, v11, v18

    float-to-double v0, v11

    move-wide/from16 v18, v0

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->cos(D)D

    move-result-wide v18

    move-wide/from16 v0, v18

    double-to-float v11, v0

    mul-float/2addr v11, v12

    sub-float v11, v17, v11

    mul-float/2addr v2, v11

    goto/16 :goto_93

    .line 375
    :cond_11d
    const/high16 v5, 0x3f800000    # 1.0f

    const v9, 0x3eb33333    # 0.35f

    const/high16 v11, -0x40800000    # -1.0f

    const/high16 v12, 0x3f800000    # 1.0f

    invoke-static {v12, v4}, Ljava/lang/Math;->min(FF)F

    move-result v4

    invoke-static {v11, v4}, Ljava/lang/Math;->max(FF)F

    move-result v4

    mul-float/2addr v4, v9

    add-float/2addr v4, v5

    const v5, 0x3e19999a    # 0.15f

    invoke-static {v5, v2}, Ljava/lang/Math;->max(FF)F

    move-result v2

    mul-float/2addr v2, v4

    mul-float/2addr v2, v10

    .line 376
    sget v4, Lfr/testudo/spacecorsair/mod/ModMonolith;->phase:F

    float-to-double v4, v4

    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    mul-double/2addr v4, v10

    int-to-double v10, v13

    const-wide v18, 0x3ffb333333333333L    # 1.7

    mul-double v10, v10, v18

    add-double/2addr v4, v10

    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    sget v9, Lfr/testudo/spacecorsair/mod/ModMonolith;->phase:F

    float-to-double v10, v9

    const-wide v18, 0x3fe3333333333333L    # 0.6

    mul-double v10, v10, v18

    int-to-double v0, v13

    move-wide/from16 v18, v0

    const-wide v20, 0x3feccccccccccccdL    # 0.9

    mul-double v18, v18, v20

    add-double v10, v10, v18

    const-wide v18, 0x3ff4cccccccccccdL    # 1.3

    add-double v10, v10, v18

    invoke-static {v10, v11}, Ljava/lang/Math;->sin(D)D

    move-result-wide v10

    mul-double/2addr v4, v10

    .line 377
    const v9, 0x3f0ccccd    # 0.55f

    const v10, 0x3f666666    # 0.9f

    const-wide/high16 v18, 0x3fe0000000000000L    # 0.5

    const-wide/high16 v20, 0x3fe0000000000000L    # 0.5

    mul-double v20, v20, v4

    add-double v18, v18, v20

    move-wide/from16 v0, v18

    double-to-float v11, v0

    mul-float/2addr v10, v11

    add-float/2addr v9, v10

    mul-float v17, v2, v9

    .line 378
    mul-float v2, v7, v17

    div-float/2addr v2, v14

    add-float/2addr v2, v3

    mul-float v7, v8, v17

    div-float/2addr v7, v14

    add-float/2addr v7, v6

    .line 379
    if-eqz p4, :cond_23d

    .line 380
    sget-object v8, Lfr/testudo/spacecorsair/mod/ModMonolith;->a:Lfr/testudo/spacecorsair/engine/Vector2;

    move/from16 v0, p5

    move/from16 v1, p6

    invoke-static {v0, v3, v6, v1, v8}, Lfr/testudo/spacecorsair/mod/ModMonolith;->wingPt(ZFFFLfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 381
    sget-object v3, Lfr/testudo/spacecorsair/mod/ModMonolith;->c:Lfr/testudo/spacecorsair/engine/Vector2;

    move/from16 v0, p5

    move/from16 v1, p6

    invoke-static {v0, v2, v7, v1, v3}, Lfr/testudo/spacecorsair/mod/ModMonolith;->wingPt(ZFFFLfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 386
    :goto_19f
    sget-object v2, Lfr/testudo/spacecorsair/mod/ModMonolith;->a:Lfr/testudo/spacecorsair/engine/Vector2;

    sget-object v3, Lfr/testudo/spacecorsair/mod/ModMonolith;->b:Lfr/testudo/spacecorsair/engine/Vector2;

    move-object/from16 v0, p0

    invoke-static {v0, v2, v3}, Lfr/testudo/spacecorsair/mod/ModMonolith;->toScreen(Lfr/testudo/spacecorsair/business/player/PlayerShip;Lfr/testudo/spacecorsair/engine/Vector2;Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 387
    sget-object v2, Lfr/testudo/spacecorsair/mod/ModMonolith;->c:Lfr/testudo/spacecorsair/engine/Vector2;

    sget-object v3, Lfr/testudo/spacecorsair/mod/ModMonolith;->a:Lfr/testudo/spacecorsair/engine/Vector2;

    move-object/from16 v0, p0

    invoke-static {v0, v2, v3}, Lfr/testudo/spacecorsair/mod/ModMonolith;->toScreen(Lfr/testudo/spacecorsair/business/player/PlayerShip;Lfr/testudo/spacecorsair/engine/Vector2;Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 388
    const v2, 0x3e99999a    # 0.3f

    const/high16 v3, 0x3e800000    # 0.25f

    const-wide/high16 v6, 0x3fe0000000000000L    # 0.5

    const-wide/high16 v8, 0x3fe0000000000000L    # 0.5

    mul-double/2addr v4, v8

    add-double/2addr v4, v6

    double-to-float v4, v4

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    mul-float v2, v2, p7

    const/high16 v3, 0x3f000000    # 0.5f

    const/high16 v4, 0x3f000000    # 0.5f

    mul-float v4, v4, p8

    add-float/2addr v3, v4

    mul-float v11, v2, v3

    .line 389
    const-string v2, "fx_glow"

    sget-object v3, Lfr/testudo/spacecorsair/mod/ModMonolith;->b:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v3, v3, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    sget-object v4, Lfr/testudo/spacecorsair/mod/ModMonolith;->b:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v4, v4, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    sget-object v5, Lfr/testudo/spacecorsair/mod/ModMonolith;->a:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v5, v5, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    sget-object v6, Lfr/testudo/spacecorsair/mod/ModMonolith;->a:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v6, v6, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    const v7, 0x3f666666    # 0.9f

    mul-float v7, v7, v17

    sget-object v8, Lfr/testudo/spacecorsair/mod/ModMonolith;->edge:[F

    const/4 v9, 0x0

    aget v8, v8, v9

    sget-object v9, Lfr/testudo/spacecorsair/mod/ModMonolith;->edge:[F

    const/4 v10, 0x1

    aget v9, v9, v10

    sget-object v10, Lfr/testudo/spacecorsair/mod/ModMonolith;->edge:[F

    const/4 v12, 0x2

    aget v10, v10, v12

    const/4 v12, 0x1

    invoke-static/range {v2 .. v12}, Lfr/testudo/spacecorsair/mod/ModFx;->strip(Ljava/lang/String;FFFFFFFFFZ)V

    .line 390
    const-string v2, "fx_glow"

    sget-object v3, Lfr/testudo/spacecorsair/mod/ModMonolith;->b:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v3, v3, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    sget-object v4, Lfr/testudo/spacecorsair/mod/ModMonolith;->b:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v4, v4, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    sget-object v5, Lfr/testudo/spacecorsair/mod/ModMonolith;->a:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v5, v5, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    sget-object v6, Lfr/testudo/spacecorsair/mod/ModMonolith;->b:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v6, v6, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    const/high16 v7, 0x40000000    # 2.0f

    mul-float/2addr v6, v7

    add-float/2addr v5, v6

    const/high16 v6, 0x40400000    # 3.0f

    div-float/2addr v5, v6

    sget-object v6, Lfr/testudo/spacecorsair/mod/ModMonolith;->a:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v6, v6, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    sget-object v7, Lfr/testudo/spacecorsair/mod/ModMonolith;->b:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v7, v7, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    const/high16 v8, 0x40000000    # 2.0f

    mul-float/2addr v7, v8

    add-float/2addr v6, v7

    const/high16 v7, 0x40400000    # 3.0f

    div-float/2addr v6, v7

    const v7, 0x3eb33333    # 0.35f

    mul-float v7, v7, v17

    sget-object v8, Lfr/testudo/spacecorsair/mod/ModMonolith;->core:[F

    const/4 v9, 0x0

    aget v8, v8, v9

    sget-object v9, Lfr/testudo/spacecorsair/mod/ModMonolith;->core:[F

    const/4 v10, 0x1

    aget v9, v9, v10

    sget-object v10, Lfr/testudo/spacecorsair/mod/ModMonolith;->core:[F

    const/4 v12, 0x2

    aget v10, v10, v12

    const v12, 0x3f666666    # 0.9f

    mul-float/2addr v11, v12

    const/4 v12, 0x1

    invoke-static/range {v2 .. v12}, Lfr/testudo/spacecorsair/mod/ModFx;->strip(Ljava/lang/String;FFFFFFFFFZ)V

    .line 361
    add-int/lit8 v2, v13, 0x1

    move v13, v2

    goto/16 :goto_2a

    .line 383
    :cond_23d
    sget-object v8, Lfr/testudo/spacecorsair/mod/ModMonolith;->a:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-static {v3}, Lfr/testudo/spacecorsair/mod/ModMonolith;->lx(F)F

    move-result v3

    invoke-static {v6}, Lfr/testudo/spacecorsair/mod/ModMonolith;->lx(F)F

    move-result v6

    invoke-virtual {v8, v3, v6}, Lfr/testudo/spacecorsair/engine/Vector2;->set(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 384
    sget-object v3, Lfr/testudo/spacecorsair/mod/ModMonolith;->c:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModMonolith;->lx(F)F

    move-result v2

    invoke-static {v7}, Lfr/testudo/spacecorsair/mod/ModMonolith;->lx(F)F

    move-result v6

    invoke-virtual {v3, v2, v6}, Lfr/testudo/spacecorsair/engine/Vector2;->set(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    goto/16 :goto_19f

    .line 392
    :cond_259
    return-void
.end method

.method public static under(Lfr/testudo/spacecorsair/business/player/PlayerShip;)V
    .registers 27

    .prologue
    .line 164
    :try_start_0
    invoke-static/range {p0 .. p0}, Lfr/testudo/spacecorsair/mod/ModMonolith;->stageOf(Lfr/testudo/spacecorsair/business/player/PlayerShip;)I

    move-result v4

    sput v4, Lfr/testudo/spacecorsair/mod/ModMonolith;->stage:I

    .line 165
    sget v4, Lfr/testudo/spacecorsair/mod/ModMonolith;->stage:I

    if-nez v4, :cond_f

    .line 166
    const-wide/16 v4, 0x0

    sput-wide v4, Lfr/testudo/spacecorsair/mod/ModMonolith;->lastT:J

    .line 220
    :cond_e
    :goto_e
    return-void

    .line 169
    :cond_f
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v24

    .line 170
    move-object/from16 v0, p0

    move-wide/from16 v1, v24

    invoke-static {v0, v1, v2}, Lfr/testudo/spacecorsair/mod/ModMonolith;->update(Lfr/testudo/spacecorsair/business/player/PlayerShip;J)V

    .line 171
    invoke-virtual/range {p0 .. p0}, Lfr/testudo/spacecorsair/business/player/PlayerShip;->getDrawableObject()Lfr/testudo/spacecorsair/display/Drawable;

    move-result-object v4

    .line 172
    if-eqz v4, :cond_e

    iget-object v5, v4, Lfr/testudo/spacecorsair/display/Drawable;->dimensions:Lfr/testudo/spacecorsair/engine/Vector2;

    if-eqz v5, :cond_e

    .line 173
    iget-object v4, v4, Lfr/testudo/spacecorsair/display/Drawable;->dimensions:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v4, v4, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    sput v4, Lfr/testudo/spacecorsair/mod/ModMonolith;->D:F

    .line 174
    const-string v4, "monolith"

    sget v5, Lfr/testudo/spacecorsair/mod/ModMonolith;->stage:I

    invoke-static {v4, v5}, Lfr/testudo/spacecorsair/mod/ModMonolith;->useParts(Ljava/lang/String;I)Z

    move-result v16

    .line 175
    sget v4, Lfr/testudo/spacecorsair/mod/ModMonolith;->stage:I

    const/4 v5, 0x5

    if-ne v4, v5, :cond_141

    const/high16 v4, 0x3f800000    # 1.0f

    move/from16 v23, v4

    .line 176
    :goto_3b
    if-eqz v16, :cond_147

    sget v4, Lfr/testudo/spacecorsair/mod/ModMonolith;->ang:F

    const/high16 v5, 0x40400000    # 3.0f

    const-wide v6, 0x401921fb54442d18L    # 6.283185307179586

    sget v8, Lfr/testudo/spacecorsair/mod/ModMonolith;->flapT:F

    float-to-double v8, v8

    mul-double/2addr v6, v8

    const-wide v8, 0x3ffccccccccccccdL    # 1.8

    div-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    double-to-float v6, v6

    mul-float/2addr v5, v6

    sget v6, Lfr/testudo/spacecorsair/mod/ModMonolith;->ang:F

    const/high16 v7, 0x42a00000    # 80.0f

    div-float/2addr v6, v7

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-static {v6, v7}, Ljava/lang/Math;->min(FF)F

    move-result v6

    mul-float/2addr v5, v6

    add-float v21, v4, v5

    .line 177
    :goto_64
    const/4 v4, 0x1

    sput-boolean v4, Lfr/testudo/spacecorsair/mod/ModFx;->relative:Z
    :try_end_67
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_67} :catch_17f

    .line 180
    :try_start_67
    invoke-static/range {p0 .. p0}, Lfr/testudo/spacecorsair/mod/ModMonolith;->shieldFrac(Lfr/testudo/spacecorsair/business/player/PlayerShip;)F

    move-result v4

    .line 181
    invoke-static/range {v24 .. v25}, Lfr/testudo/spacecorsair/mod/ModMonolith;->agitation(J)F

    move-result v5

    .line 182
    const/4 v6, 0x0

    cmpl-float v6, v4, v6

    if-lez v6, :cond_178

    .line 183
    sget v6, Lfr/testudo/spacecorsair/mod/ModMonolith;->held:F

    const v7, 0x3e99999a    # 0.3f

    const/high16 v8, 0x3fc00000    # 1.5f

    invoke-static {v5, v8}, Ljava/lang/Math;->min(FF)F

    move-result v8

    mul-float/2addr v7, v8

    add-float/2addr v6, v7

    .line 184
    sget-object v7, Lfr/testudo/spacecorsair/mod/ModMonolith;->AURA_EDGE:[[F

    sget-object v8, Lfr/testudo/spacecorsair/mod/ModMonolith;->edge:[F

    invoke-static {v7, v6, v8}, Lfr/testudo/spacecorsair/mod/ModMonolith;->ramp([[FF[F)[F

    .line 185
    const v6, 0x3f6b851f    # 0.92f

    const v7, 0x3da3d70a    # 0.08f

    const-wide v8, 0x401921fb54442d18L    # 6.283185307179586

    const-wide/16 v10, 0x1964

    rem-long v10, v24, v10

    long-to-double v10, v10

    mul-double/2addr v8, v10

    const-wide v10, 0x40b9640000000000L    # 6500.0

    div-double/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Math;->sin(D)D

    move-result-wide v8

    double-to-float v8, v8

    mul-float/2addr v7, v8

    add-float/2addr v6, v7

    .line 186
    const v7, 0x3f0ccccd    # 0.55f

    const/high16 v8, 0x3e800000    # 0.25f

    const/high16 v9, 0x3fc00000    # 1.5f

    invoke-static {v5, v9}, Ljava/lang/Math;->min(FF)F

    move-result v5

    mul-float/2addr v5, v8

    add-float/2addr v5, v7

    invoke-static/range {v24 .. v25}, Lfr/testudo/spacecorsair/mod/ModMonolith;->heavyPulse(J)F

    move-result v7

    add-float/2addr v5, v7

    mul-float v5, v5, v23

    mul-float/2addr v5, v6

    const v6, 0x3ecccccd    # 0.4f

    const v7, 0x3f19999a    # 0.6f

    mul-float/2addr v4, v7

    add-float/2addr v4, v6

    mul-float v13, v5, v4

    .line 187
    sget-object v6, Lfr/testudo/spacecorsair/engine/GameRenderer;->screenCenter:Lfr/testudo/spacecorsair/engine/Vector2;

    .line 188
    sget v4, Lfr/testudo/spacecorsair/mod/ModMonolith;->D:F

    const/high16 v5, 0x3fa00000    # 1.25f

    mul-float/2addr v4, v5

    const/high16 v5, 0x3f800000    # 1.0f

    const v7, 0x3d23d70a    # 0.04f

    sget v8, Lfr/testudo/spacecorsair/mod/ModMonolith;->held:F

    mul-float/2addr v7, v8

    add-float/2addr v5, v7

    mul-float v7, v4, v5

    .line 189
    if-eqz v16, :cond_155

    .line 190
    const-string v4, "monolith_stage5_hull_aura"

    iget v5, v6, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    iget v6, v6, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    move-object/from16 v0, p0

    iget v9, v0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->spin:F

    sget-object v8, Lfr/testudo/spacecorsair/mod/ModMonolith;->edge:[F

    const/4 v10, 0x0

    aget v10, v8, v10

    sget-object v8, Lfr/testudo/spacecorsair/mod/ModMonolith;->edge:[F

    const/4 v11, 0x1

    aget v11, v8, v11

    sget-object v8, Lfr/testudo/spacecorsair/mod/ModMonolith;->edge:[F

    const/4 v12, 0x2

    aget v12, v8, v12

    const/4 v14, 0x1

    move v8, v7

    invoke-static/range {v4 .. v14}, Lfr/testudo/spacecorsair/mod/ModFx;->sprR(Ljava/lang/String;FFFFFFFFFZ)V

    .line 191
    const/4 v4, 0x0

    move v15, v4

    :goto_f9
    const/4 v4, 0x2

    if-ge v15, v4, :cond_178

    .line 192
    if-nez v15, :cond_14b

    const/4 v4, 0x1

    move v8, v4

    .line 193
    :goto_100
    const/high16 v4, 0x44000000    # 512.0f

    const/high16 v5, 0x44000000    # 512.0f

    sget-object v6, Lfr/testudo/spacecorsair/mod/ModMonolith;->a:Lfr/testudo/spacecorsair/engine/Vector2;

    move/from16 v0, v21

    invoke-static {v8, v4, v5, v0, v6}, Lfr/testudo/spacecorsair/mod/ModMonolith;->wingPt(ZFFFLfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 194
    sget-object v4, Lfr/testudo/spacecorsair/mod/ModMonolith;->a:Lfr/testudo/spacecorsair/engine/Vector2;

    sget-object v5, Lfr/testudo/spacecorsair/mod/ModMonolith;->b:Lfr/testudo/spacecorsair/engine/Vector2;

    move-object/from16 v0, p0

    invoke-static {v0, v4, v5}, Lfr/testudo/spacecorsair/mod/ModMonolith;->toScreen(Lfr/testudo/spacecorsair/business/player/PlayerShip;Lfr/testudo/spacecorsair/engine/Vector2;Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 195
    if-eqz v8, :cond_14e

    const-string v4, "monolith_stage5_wingL_aura"

    :goto_118
    sget-object v5, Lfr/testudo/spacecorsair/mod/ModMonolith;->b:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v5, v5, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    sget-object v6, Lfr/testudo/spacecorsair/mod/ModMonolith;->b:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v6, v6, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    move-object/from16 v0, p0

    iget v9, v0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->spin:F

    if-eqz v8, :cond_151

    move/from16 v8, v21

    :goto_128
    add-float/2addr v9, v8

    sget-object v8, Lfr/testudo/spacecorsair/mod/ModMonolith;->edge:[F

    const/4 v10, 0x0

    aget v10, v8, v10

    sget-object v8, Lfr/testudo/spacecorsair/mod/ModMonolith;->edge:[F

    const/4 v11, 0x1

    aget v11, v8, v11

    sget-object v8, Lfr/testudo/spacecorsair/mod/ModMonolith;->edge:[F

    const/4 v12, 0x2

    aget v12, v8, v12

    const/4 v14, 0x1

    move v8, v7

    invoke-static/range {v4 .. v14}, Lfr/testudo/spacecorsair/mod/ModFx;->sprR(Ljava/lang/String;FFFFFFFFFZ)V

    .line 191
    add-int/lit8 v4, v15, 0x1

    move v15, v4

    goto :goto_f9

    .line 175
    :cond_141
    const/high16 v4, 0x3f000000    # 0.5f

    move/from16 v23, v4

    goto/16 :goto_3b

    .line 176
    :cond_147
    const/16 v21, 0x0

    goto/16 :goto_64

    .line 192
    :cond_14b
    const/4 v4, 0x0

    move v8, v4

    goto :goto_100

    .line 195
    :cond_14e
    const-string v4, "monolith_stage5_wingR_aura"

    goto :goto_118

    :cond_151
    move/from16 v0, v21

    neg-float v8, v0

    goto :goto_128

    .line 198
    :cond_155
    sget v4, Lfr/testudo/spacecorsair/mod/ModMonolith;->stage:I

    const/4 v5, 0x5

    if-ne v4, v5, :cond_185

    const-string v4, "monolith_stage5_hull_aura"

    :goto_15c
    iget v5, v6, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    iget v6, v6, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    move-object/from16 v0, p0

    iget v9, v0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->spin:F

    sget-object v8, Lfr/testudo/spacecorsair/mod/ModMonolith;->edge:[F

    const/4 v10, 0x0

    aget v10, v8, v10

    sget-object v8, Lfr/testudo/spacecorsair/mod/ModMonolith;->edge:[F

    const/4 v11, 0x1

    aget v11, v8, v11

    sget-object v8, Lfr/testudo/spacecorsair/mod/ModMonolith;->edge:[F

    const/4 v12, 0x2

    aget v12, v8, v12

    const/4 v14, 0x1

    move v8, v7

    invoke-static/range {v4 .. v14}, Lfr/testudo/spacecorsair/mod/ModFx;->sprR(Ljava/lang/String;FFFFFFFFFZ)V
    :try_end_178
    .catchall {:try_start_67 .. :try_end_178} :catchall_26a

    .line 201
    :cond_178
    if-nez v16, :cond_188

    .line 215
    const/4 v4, 0x0

    :try_start_17b
    sput-boolean v4, Lfr/testudo/spacecorsair/mod/ModFx;->relative:Z
    :try_end_17d
    .catch Ljava/lang/Throwable; {:try_start_17b .. :try_end_17d} :catch_17f

    goto/16 :goto_e

    .line 217
    :catch_17f
    move-exception v4

    .line 218
    const/4 v4, 0x0

    sput-boolean v4, Lfr/testudo/spacecorsair/mod/ModFx;->relative:Z

    goto/16 :goto_e

    .line 198
    :cond_185
    :try_start_185
    const-string v4, "monolith_stage4_aura"

    goto :goto_15c

    .line 203
    :cond_188
    const/4 v4, 0x0

    move/from16 v22, v4

    :goto_18b
    const/4 v4, 0x2

    move/from16 v0, v22

    if-ge v0, v4, :cond_25c

    .line 204
    if-nez v22, :cond_24f

    const/4 v4, 0x1

    move v5, v4

    .line 205
    :goto_194
    if-eqz v5, :cond_253

    const-string v4, "monolith_stage5_wingL"

    .line 206
    :goto_198
    const/high16 v6, 0x44000000    # 512.0f

    const/high16 v7, 0x44000000    # 512.0f

    sget-object v8, Lfr/testudo/spacecorsair/mod/ModMonolith;->a:Lfr/testudo/spacecorsair/engine/Vector2;

    move/from16 v0, v21

    invoke-static {v5, v6, v7, v0, v8}, Lfr/testudo/spacecorsair/mod/ModMonolith;->wingPt(ZFFFLfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 207
    sget-object v6, Lfr/testudo/spacecorsair/mod/ModMonolith;->a:Lfr/testudo/spacecorsair/engine/Vector2;

    sget-object v7, Lfr/testudo/spacecorsair/mod/ModMonolith;->b:Lfr/testudo/spacecorsair/engine/Vector2;

    move-object/from16 v0, p0

    invoke-static {v0, v6, v7}, Lfr/testudo/spacecorsair/mod/ModMonolith;->toScreen(Lfr/testudo/spacecorsair/business/player/PlayerShip;Lfr/testudo/spacecorsair/engine/Vector2;Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 208
    move-object/from16 v0, p0

    iget v6, v0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->spin:F

    if-eqz v5, :cond_257

    move/from16 v5, v21

    :goto_1b4
    add-float v9, v6, v5

    .line 209
    sget-object v5, Lfr/testudo/spacecorsair/mod/ModMonolith;->b:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v5, v5, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    sget-object v6, Lfr/testudo/spacecorsair/mod/ModMonolith;->b:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v6, v6, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    sget v7, Lfr/testudo/spacecorsair/mod/ModMonolith;->D:F

    sget v8, Lfr/testudo/spacecorsair/mod/ModMonolith;->D:F

    const/high16 v10, 0x3f800000    # 1.0f

    const/high16 v11, 0x3f800000    # 1.0f

    const/high16 v12, 0x3f800000    # 1.0f

    const/high16 v13, 0x3f800000    # 1.0f

    const/4 v14, 0x0

    invoke-static/range {v4 .. v14}, Lfr/testudo/spacecorsair/mod/ModFx;->sprR(Ljava/lang/String;FFFFFFFFFZ)V

    .line 210
    sget v5, Lfr/testudo/spacecorsair/mod/ModMonolith;->heat:F

    const v6, 0x3ca3d70a    # 0.02f

    cmpl-float v5, v5, v6

    if-lez v5, :cond_206

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "_hot"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    sget-object v5, Lfr/testudo/spacecorsair/mod/ModMonolith;->b:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v11, v5, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    sget-object v5, Lfr/testudo/spacecorsair/mod/ModMonolith;->b:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v12, v5, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    sget v13, Lfr/testudo/spacecorsair/mod/ModMonolith;->D:F

    sget v14, Lfr/testudo/spacecorsair/mod/ModMonolith;->D:F

    const/high16 v16, 0x3f800000    # 1.0f

    const/high16 v17, 0x3f800000    # 1.0f

    const/high16 v18, 0x3f800000    # 1.0f

    sget v5, Lfr/testudo/spacecorsair/mod/ModMonolith;->heat:F

    mul-float v19, v5, v23

    const/16 v20, 0x0

    move v15, v9

    invoke-static/range {v10 .. v20}, Lfr/testudo/spacecorsair/mod/ModFx;->sprR(Ljava/lang/String;FFFFFFFFFZ)V

    .line 211
    :cond_206
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "_glow_l"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lfr/testudo/spacecorsair/mod/ModMonolith;->b:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v5, v5, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    sget-object v6, Lfr/testudo/spacecorsair/mod/ModMonolith;->b:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v6, v6, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    sget v7, Lfr/testudo/spacecorsair/mod/ModMonolith;->D:F

    sget v8, Lfr/testudo/spacecorsair/mod/ModMonolith;->D:F

    const/high16 v10, 0x3f800000    # 1.0f

    const/high16 v11, 0x3f800000    # 1.0f

    const/high16 v12, 0x3f800000    # 1.0f

    const v13, 0x3f0ccccd    # 0.55f

    const/high16 v14, 0x3e800000    # 0.25f

    move-wide/from16 v0, v24

    long-to-double v0, v0

    move-wide/from16 v16, v0

    const-wide v18, 0x4085e00000000000L    # 700.0

    div-double v16, v16, v18

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->sin(D)D

    move-result-wide v16

    move-wide/from16 v0, v16

    double-to-float v15, v0

    mul-float/2addr v14, v15

    add-float/2addr v13, v14

    const/4 v14, 0x1

    invoke-static/range {v4 .. v14}, Lfr/testudo/spacecorsair/mod/ModFx;->sprR(Ljava/lang/String;FFFFFFFFFZ)V

    .line 203
    add-int/lit8 v4, v22, 0x1

    move/from16 v22, v4

    goto/16 :goto_18b

    .line 204
    :cond_24f
    const/4 v4, 0x0

    move v5, v4

    goto/16 :goto_194

    .line 205
    :cond_253
    const-string v4, "monolith_stage5_wingR"

    goto/16 :goto_198

    .line 208
    :cond_257
    move/from16 v0, v21

    neg-float v5, v0

    goto/16 :goto_1b4

    .line 213
    :cond_25c
    move-object/from16 v0, p0

    move-wide/from16 v1, v24

    move/from16 v3, v21

    invoke-static {v0, v1, v2, v3}, Lfr/testudo/spacecorsair/mod/ModMonolith;->plasma(Lfr/testudo/spacecorsair/business/player/PlayerShip;JF)V
    :try_end_265
    .catchall {:try_start_185 .. :try_end_265} :catchall_26a

    .line 215
    const/4 v4, 0x0

    :try_start_266
    sput-boolean v4, Lfr/testudo/spacecorsair/mod/ModFx;->relative:Z

    goto/16 :goto_e

    :catchall_26a
    move-exception v4

    const/4 v5, 0x0

    sput-boolean v5, Lfr/testudo/spacecorsair/mod/ModFx;->relative:Z

    .line 216
    throw v4
    :try_end_26f
    .catch Ljava/lang/Throwable; {:try_start_266 .. :try_end_26f} :catch_17f
.end method

.method private static update(Lfr/testudo/spacecorsair/business/player/PlayerShip;J)V
    .registers 12

    .prologue
    .line 62
    sget-wide v0, Lfr/testudo/spacecorsair/mod/ModMonolith;->lastT:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_87

    const v0, 0x3c83126f    # 0.016f

    .line 63
    :goto_b
    sput-wide p1, Lfr/testudo/spacecorsair/mod/ModMonolith;->lastT:J

    .line 64
    iget-object v1, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->speed:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v1, v1, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    iget-object v2, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->speed:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v2, v2, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    mul-float/2addr v1, v2

    iget-object v2, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->speed:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v2, v2, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    iget-object v3, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->speed:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v3, v3, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    float-to-double v2, v1

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    double-to-float v1, v2

    .line 65
    iget-boolean v2, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->isBoosterEnabled:Z

    if-nez v2, :cond_3a

    sget v2, Lfr/testudo/spacecorsair/mod/ModMonolith;->vmax:F

    const/high16 v3, 0x3f800000    # 1.0f

    const v4, 0x3ca3d70a    # 0.02f

    mul-float/2addr v4, v0

    sub-float/2addr v3, v4

    mul-float/2addr v2, v3

    invoke-static {v2, v1}, Ljava/lang/Math;->max(FF)F

    move-result v2

    sput v2, Lfr/testudo/spacecorsair/mod/ModMonolith;->vmax:F

    .line 66
    :cond_3a
    const/high16 v2, 0x3f800000    # 1.0f

    sget v3, Lfr/testudo/spacecorsair/mod/ModMonolith;->vmax:F

    const v4, 0x3a83126f    # 0.001f

    invoke-static {v3, v4}, Ljava/lang/Math;->max(FF)F

    move-result v3

    div-float/2addr v1, v3

    invoke-static {v2, v1}, Ljava/lang/Math;->min(FF)F

    move-result v3

    .line 67
    sget-wide v4, Lfr/testudo/spacecorsair/mod/ModMonolith;->histT:J

    sub-long v4, p1, v4

    const-wide/16 v6, 0x64

    cmp-long v1, v4, v6

    if-ltz v1, :cond_67

    .line 68
    sput-wide p1, Lfr/testudo/spacecorsair/mod/ModMonolith;->histT:J

    .line 69
    sget v1, Lfr/testudo/spacecorsair/mod/ModMonolith;->histPos:I

    add-int/lit8 v1, v1, 0x1

    sget-object v2, Lfr/testudo/spacecorsair/mod/ModMonolith;->hist:[F

    array-length v2, v2

    rem-int/2addr v1, v2

    sput v1, Lfr/testudo/spacecorsair/mod/ModMonolith;->histPos:I

    .line 70
    sget-object v1, Lfr/testudo/spacecorsair/mod/ModMonolith;->hist:[F

    sget v2, Lfr/testudo/spacecorsair/mod/ModMonolith;->histPos:I

    const/4 v4, 0x0

    aput v4, v1, v2

    .line 72
    :cond_67
    sget-object v1, Lfr/testudo/spacecorsair/mod/ModMonolith;->hist:[F

    sget v2, Lfr/testudo/spacecorsair/mod/ModMonolith;->histPos:I

    sget-object v4, Lfr/testudo/spacecorsair/mod/ModMonolith;->hist:[F

    sget v5, Lfr/testudo/spacecorsair/mod/ModMonolith;->histPos:I

    aget v4, v4, v5

    invoke-static {v4, v3}, Ljava/lang/Math;->max(FF)F

    move-result v4

    aput v4, v1, v2

    .line 73
    const/4 v2, 0x0

    .line 74
    sget-object v4, Lfr/testudo/spacecorsair/mod/ModMonolith;->hist:[F

    array-length v5, v4

    const/4 v1, 0x0

    :goto_7c
    if-ge v1, v5, :cond_9d

    aget v6, v4, v1

    invoke-static {v2, v6}, Ljava/lang/Math;->max(FF)F

    move-result v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_7c

    .line 62
    :cond_87
    const/4 v0, 0x0

    const v1, 0x3dcccccd    # 0.1f

    sget-wide v2, Lfr/testudo/spacecorsair/mod/ModMonolith;->lastT:J

    sub-long v2, p1, v2

    long-to-float v2, v2

    const/high16 v3, 0x447a0000    # 1000.0f

    div-float/2addr v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    goto/16 :goto_b

    .line 75
    :cond_9d
    sput v2, Lfr/testudo/spacecorsair/mod/ModMonolith;->held:F

    .line 76
    const v1, 0x3ca3d70a    # 0.02f

    cmpg-float v1, v3, v1

    if-gez v1, :cond_14d

    .line 77
    sget-wide v2, Lfr/testudo/spacecorsair/mod/ModMonolith;->stoppedSince:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-gez v1, :cond_b0

    sput-wide p1, Lfr/testudo/spacecorsair/mod/ModMonolith;->stoppedSince:J

    .line 81
    :cond_b0
    :goto_b0
    sget-wide v2, Lfr/testudo/spacecorsair/mod/ModMonolith;->stoppedSince:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-ltz v1, :cond_153

    sget-wide v2, Lfr/testudo/spacecorsair/mod/ModMonolith;->stoppedSince:J

    sub-long v2, p1, v2

    long-to-float v1, v2

    const v2, 0x451c4000    # 2500.0f

    cmpl-float v1, v1, v2

    if-ltz v1, :cond_153

    const/4 v1, 0x0

    :goto_c5
    sput v1, Lfr/testudo/spacecorsair/mod/ModMonolith;->peak:F

    .line 82
    const/high16 v1, 0x41400000    # 12.0f

    mul-float/2addr v1, v0

    .line 83
    sget v2, Lfr/testudo/spacecorsair/mod/ModMonolith;->stage:I

    const/4 v3, 0x5

    if-ne v2, v3, :cond_15d

    .line 84
    const/high16 v2, 0x42a00000    # 80.0f

    sget v3, Lfr/testudo/spacecorsair/mod/ModMonolith;->peak:F

    const v4, 0x3f19999a    # 0.6f

    div-float/2addr v3, v4

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F

    move-result v3

    float-to-double v4, v3

    const-wide v6, 0x3fe6666666666666L    # 0.7

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    double-to-float v3, v4

    mul-float/2addr v2, v3

    .line 85
    sget v3, Lfr/testudo/spacecorsair/mod/ModMonolith;->vel:F

    sget v4, Lfr/testudo/spacecorsair/mod/ModMonolith;->ang:F

    sub-float/2addr v2, v4

    const v4, 0x3e3851ec    # 0.18f

    mul-float/2addr v2, v4

    mul-float/2addr v2, v1

    mul-float/2addr v2, v1

    add-float/2addr v2, v3

    sput v2, Lfr/testudo/spacecorsair/mod/ModMonolith;->vel:F

    .line 86
    sget v2, Lfr/testudo/spacecorsair/mod/ModMonolith;->vel:F

    const-wide v4, 0x3fe70a3d70a3d70aL    # 0.72

    float-to-double v6, v1

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    double-to-float v3, v4

    mul-float/2addr v2, v3

    sput v2, Lfr/testudo/spacecorsair/mod/ModMonolith;->vel:F

    .line 87
    sget v2, Lfr/testudo/spacecorsair/mod/ModMonolith;->ang:F

    sget v3, Lfr/testudo/spacecorsair/mod/ModMonolith;->vel:F

    add-float/2addr v2, v3

    sput v2, Lfr/testudo/spacecorsair/mod/ModMonolith;->ang:F

    .line 88
    const/high16 v2, -0x3f600000    # -5.0f

    const/high16 v3, 0x42b80000    # 92.0f

    sget v4, Lfr/testudo/spacecorsair/mod/ModMonolith;->ang:F

    invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v2

    sput v2, Lfr/testudo/spacecorsair/mod/ModMonolith;->ang:F

    .line 93
    :goto_11e
    sget v2, Lfr/testudo/spacecorsair/mod/ModMonolith;->heat:F

    sget v3, Lfr/testudo/spacecorsair/mod/ModMonolith;->held:F

    sget v4, Lfr/testudo/spacecorsair/mod/ModMonolith;->heat:F

    sub-float/2addr v3, v4

    const/high16 v4, 0x3f800000    # 1.0f

    const v5, 0x3da3d70a    # 0.08f

    mul-float/2addr v1, v5

    invoke-static {v4, v1}, Ljava/lang/Math;->min(FF)F

    move-result v1

    mul-float/2addr v1, v3

    add-float/2addr v1, v2

    sput v1, Lfr/testudo/spacecorsair/mod/ModMonolith;->heat:F

    .line 94
    invoke-static {p1, p2}, Lfr/testudo/spacecorsair/mod/ModMonolith;->agitation(J)F

    move-result v1

    .line 95
    sget v2, Lfr/testudo/spacecorsair/mod/ModMonolith;->phase:F

    const v3, 0x3f7775f9

    mul-float/2addr v3, v0

    const/high16 v4, 0x3f800000    # 1.0f

    const/high16 v5, 0x40400000    # 3.0f

    mul-float/2addr v1, v5

    add-float/2addr v1, v4

    mul-float/2addr v1, v3

    add-float/2addr v1, v2

    sput v1, Lfr/testudo/spacecorsair/mod/ModMonolith;->phase:F

    .line 96
    sget v1, Lfr/testudo/spacecorsair/mod/ModMonolith;->flapT:F

    add-float/2addr v0, v1

    sput v0, Lfr/testudo/spacecorsair/mod/ModMonolith;->flapT:F

    .line 97
    return-void

    .line 79
    :cond_14d
    const-wide/16 v2, -0x1

    sput-wide v2, Lfr/testudo/spacecorsair/mod/ModMonolith;->stoppedSince:J

    goto/16 :goto_b0

    .line 81
    :cond_153
    sget v1, Lfr/testudo/spacecorsair/mod/ModMonolith;->peak:F

    sget v2, Lfr/testudo/spacecorsair/mod/ModMonolith;->held:F

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    goto/16 :goto_c5

    .line 90
    :cond_15d
    const/4 v2, 0x0

    sput v2, Lfr/testudo/spacecorsair/mod/ModMonolith;->ang:F

    .line 91
    const/4 v2, 0x0

    sput v2, Lfr/testudo/spacecorsair/mod/ModMonolith;->vel:F

    goto :goto_11e
.end method

.method static useParts(Ljava/lang/String;I)Z
    .registers 3

    .prologue
    .line 57
    const-string v0, "monolith"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_25

    const/4 v0, 0x5

    if-ne p1, v0, :cond_25

    const-string v0, "monolith_stage5_hull"

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModV35;->art(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_25

    const-string v0, "monolith_stage5_wingL"

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModV35;->art(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_25

    const-string v0, "monolith_stage5_wingR"

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModV35;->art(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_25

    const/4 v0, 0x1

    :goto_24
    return v0

    :cond_25
    const/4 v0, 0x0

    goto :goto_24
.end method

.method private static wingPt(ZFFFLfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;
    .registers 10

    .prologue
    .line 146
    if-eqz p0, :cond_34

    const v0, 0x43a1d99a    # 323.7f

    move v2, v0

    :goto_6
    const v3, 0x43958ccd    # 299.1f

    .line 147
    if-nez p0, :cond_10

    const v0, 0x447fc000    # 1023.0f

    sub-float p1, v0, p1

    .line 148
    :cond_10
    sub-float v0, p1, v2

    sub-float v1, p2, v3

    invoke-virtual {p4, v0, v1}, Lfr/testudo/spacecorsair/engine/Vector2;->set(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    move-result-object v4

    if-eqz p0, :cond_39

    float-to-double v0, p3

    :goto_1b
    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v0

    invoke-virtual {v4, v0, v1}, Lfr/testudo/spacecorsair/engine/Vector2;->applyRotatation(D)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 149
    iget v0, p4, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    add-float/2addr v0, v2

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModMonolith;->lx(F)F

    move-result v0

    iget v1, p4, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    add-float/2addr v1, v3

    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModMonolith;->lx(F)F

    move-result v1

    invoke-virtual {p4, v0, v1}, Lfr/testudo/spacecorsair/engine/Vector2;->set(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 150
    return-object p4

    .line 146
    :cond_34
    const v0, 0x442ed333    # 699.3f

    move v2, v0

    goto :goto_6

    .line 148
    :cond_39
    neg-float v0, p3

    float-to-double v0, v0

    goto :goto_1b
.end method
