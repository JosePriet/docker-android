.class public final Lfr/testudo/spacecorsair/mod/ModMonolith;
.super Ljava/lang/Object;
.source "ModMonolith.java"


# static fields
.field private static final AURA_CORE:[[F

.field private static final AURA_EDGE:[[F

.field private static D:F = 0.0f

.field private static final GHOST_AGE:[F

.field private static final GHOST_W:[F

.field private static final HN:I = 0xc

.field static final HOLD_MS:F = 2500.0f

.field private static final HT:F = 2.4414062E-4f

.field static final MAX_ANG:F = 80.0f

.field private static final PLASMA_CORE:[[F

.field private static final PLASMA_EDGE:[[F

.field private static final P_CORE:[F

.field private static final P_EDGE:[F

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

.field private static htv:F

.field private static lastT:J

.field private static final pa:Lfr/testudo/spacecorsair/engine/Vector2;

.field private static final pb:Lfr/testudo/spacecorsair/engine/Vector2;

.field private static peak:F

.field private static phase:F

.field private static stage:I

.field private static stoppedSince:J

.field private static vbest:F

.field private static vel:F

.field private static vmax:F


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .prologue
    const/16 v6, 0xc

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x3

    .line 33
    const v0, 0x3a83126f    # 0.001f

    sput v0, Lfr/testudo/spacecorsair/mod/ModMonolith;->vmax:F

    .line 35
    const/16 v0, 0x1a

    new-array v0, v0, [F

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModMonolith;->hist:[F

    .line 39
    const-wide/16 v0, -0x1

    sput-wide v0, Lfr/testudo/spacecorsair/mod/ModMonolith;->stoppedSince:J

    .line 44
    new-array v0, v6, [J

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModMonolith;->hT:[J

    .line 45
    new-array v0, v6, [F

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModMonolith;->hAng:[F

    new-array v0, v6, [F

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModMonolith;->hDmg:[F

    .line 48
    new-instance v0, Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-direct {v0}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>()V

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModMonolith;->a:Lfr/testudo/spacecorsair/engine/Vector2;

    new-instance v0, Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-direct {v0}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>()V

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModMonolith;->b:Lfr/testudo/spacecorsair/engine/Vector2;

    new-instance v0, Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-direct {v0}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>()V

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModMonolith;->c:Lfr/testudo/spacecorsair/engine/Vector2;

    .line 161
    new-array v0, v2, [[F

    new-array v1, v2, [F

    fill-array-data v1, :array_d2

    aput-object v1, v0, v3

    new-array v1, v2, [F

    fill-array-data v1, :array_dc

    aput-object v1, v0, v4

    new-array v1, v2, [F

    fill-array-data v1, :array_e6

    aput-object v1, v0, v5

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModMonolith;->AURA_CORE:[[F

    .line 162
    new-array v0, v2, [[F

    new-array v1, v2, [F

    fill-array-data v1, :array_f0

    aput-object v1, v0, v3

    new-array v1, v2, [F

    fill-array-data v1, :array_fa

    aput-object v1, v0, v4

    new-array v1, v2, [F

    fill-array-data v1, :array_104

    aput-object v1, v0, v5

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModMonolith;->AURA_EDGE:[[F

    .line 163
    new-array v0, v2, [[F

    new-array v1, v2, [F

    fill-array-data v1, :array_10e

    aput-object v1, v0, v3

    new-array v1, v2, [F

    fill-array-data v1, :array_118

    aput-object v1, v0, v4

    new-array v1, v2, [F

    fill-array-data v1, :array_122

    aput-object v1, v0, v5

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModMonolith;->PLASMA_CORE:[[F

    .line 164
    new-array v0, v2, [[F

    new-array v1, v2, [F

    fill-array-data v1, :array_12c

    aput-object v1, v0, v3

    new-array v1, v2, [F

    fill-array-data v1, :array_136

    aput-object v1, v0, v4

    new-array v1, v2, [F

    fill-array-data v1, :array_140

    aput-object v1, v0, v5

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModMonolith;->PLASMA_EDGE:[[F

    .line 165
    new-array v0, v2, [F

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModMonolith;->core:[F

    new-array v0, v2, [F

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModMonolith;->edge:[F

    .line 187
    new-array v0, v2, [F

    fill-array-data v0, :array_14a

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModMonolith;->P_EDGE:[F

    new-array v0, v2, [F

    fill-array-data v0, :array_154

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModMonolith;->P_CORE:[F

    .line 188
    new-instance v0, Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-direct {v0}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>()V

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModMonolith;->pa:Lfr/testudo/spacecorsair/engine/Vector2;

    new-instance v0, Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-direct {v0}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>()V

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModMonolith;->pb:Lfr/testudo/spacecorsair/engine/Vector2;

    .line 305
    const/high16 v0, 0x39800000

    sput v0, Lfr/testudo/spacecorsair/mod/ModMonolith;->htv:F

    .line 362
    new-array v0, v2, [F

    fill-array-data v0, :array_15e

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModMonolith;->GHOST_AGE:[F

    new-array v0, v2, [F

    fill-array-data v0, :array_168

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModMonolith;->GHOST_W:[F

    return-void

    .line 161
    nop

    :array_d2
    .array-data 4
        0x434d0000    # 205.0f
        0x436b0000    # 235.0f
        0x437f0000    # 255.0f
    .end array-data

    :array_dc
    .array-data 4
        0x437f0000    # 255.0f
        0x43700000    # 240.0f
        0x43250000    # 165.0f
    .end array-data

    :array_e6
    .array-data 4
        0x437f0000    # 255.0f
        0x43640000    # 228.0f
        0x43020000    # 130.0f
    .end array-data

    .line 162
    :array_f0
    .array-data 4
        0x42a00000    # 80.0f
        0x43250000    # 165.0f
        0x437f0000    # 255.0f
    .end array-data

    :array_fa
    .array-data 4
        0x437f0000    # 255.0f
        0x43390000    # 185.0f
        0x425c0000    # 55.0f
    .end array-data

    :array_104
    .array-data 4
        0x437f0000    # 255.0f
        0x42aa0000    # 85.0f
        0x41c80000    # 25.0f
    .end array-data

    .line 163
    :array_10e
    .array-data 4
        0x43160000    # 150.0f
        0x43570000    # 215.0f
        0x437f0000    # 255.0f
    .end array-data

    :array_118
    .array-data 4
        0x437f0000    # 255.0f
        0x43570000    # 215.0f
        0x42dc0000    # 110.0f
    .end array-data

    :array_122
    .array-data 4
        0x437f0000    # 255.0f
        0x433e0000    # 190.0f
        0x42b40000    # 90.0f
    .end array-data

    .line 164
    :array_12c
    .array-data 4
        0x42200000    # 40.0f
        0x42f00000    # 120.0f
        0x437f0000    # 255.0f
    .end array-data

    :array_136
    .array-data 4
        0x437f0000    # 255.0f
        0x43160000    # 150.0f
        0x41f00000    # 30.0f
    .end array-data

    :array_140
    .array-data 4
        0x437f0000    # 255.0f
        0x42340000    # 45.0f
        0x41c80000    # 25.0f
    .end array-data

    .line 187
    :array_14a
    .array-data 4
        0x3e23d70a    # 0.16f
        0x3e99999a    # 0.3f
        0x3f800000    # 1.0f
    .end array-data

    :array_154
    .array-data 4
        0x3f6b851f    # 0.92f
        0x3f75c28f    # 0.96f
        0x3f800000    # 1.0f
    .end array-data

    .line 362
    :array_15e
    .array-data 4
        0x3dbe76c9    # 0.093f
        0x3ea3d70a    # 0.32f
        0x3f3ae148    # 0.73f
    .end array-data

    :array_168
    .array-data 4
        0x3e74bc6a    # 0.239f
        0x3e624dd3    # 0.221f
        0x3e116873    # 0.142f
    .end array-data
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static active()Z
    .registers 1

    .prologue
    .line 64
    sget v0, Lfr/testudo/spacecorsair/mod/ModMonolith;->stage:I

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method private static agitation(J)F
    .registers 10

    .prologue
    .line 126
    const/4 v0, 0x0

    .line 127
    const/4 v1, 0x0

    :goto_2
    const/16 v2, 0xc

    if-ge v1, v2, :cond_33

    .line 128
    sget-object v2, Lfr/testudo/spacecorsair/mod/ModMonolith;->hT:[J

    aget-wide v2, v2, v1

    sub-long v2, p0, v2

    long-to-float v2, v2

    const/high16 v3, 0x447a0000    # 1000.0f

    div-float/2addr v2, v3

    .line 129
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

    .line 127
    :cond_30
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 131
    :cond_33
    return v0
.end method

.method private static angd(FF)F
    .registers 6

    .prologue
    .line 453
    sub-float v0, p0, p1

    float-to-double v0, v0

    .line 454
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

.method private static aura(Ljava/lang/String;FFFFZFF)V
    .registers 30

    .prologue
    .line 322
    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    move/from16 v0, p6

    invoke-static {v3, v0}, Ljava/lang/Math;->min(FF)F

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v2

    const/high16 v3, 0x40000000    # 2.0f

    mul-float/2addr v2, v3

    .line 323
    float-to-int v3, v2

    const/4 v4, 0x1

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v20

    .line 324
    move/from16 v0, v20

    int-to-float v3, v0

    sub-float v18, v2, v3

    .line 325
    sget v2, Lfr/testudo/spacecorsair/mod/ModMonolith;->phase:F

    float-to-double v2, v2

    const-wide v4, 0x401921fb54442d18L    # 6.283185307179586

    div-double/2addr v2, v4

    const-wide/high16 v4, 0x4018000000000000L    # 6.0

    mul-double/2addr v2, v4

    double-to-float v2, v2

    .line 326
    const/high16 v3, 0x40c00000    # 6.0f

    div-float v3, v2, v3

    float-to-double v4, v3

    invoke-static {v4, v5}, Ljava/lang/Math;->floor(D)D

    move-result-wide v4

    double-to-float v3, v4

    const/high16 v4, 0x40c00000    # 6.0f

    mul-float/2addr v3, v4

    sub-float/2addr v2, v3

    .line 327
    float-to-int v3, v2

    const/4 v4, 0x5

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v21

    .line 328
    move/from16 v0, v21

    int-to-float v3, v0

    sub-float v17, v2, v3

    .line 329
    if-eqz p5, :cond_76

    move/from16 v0, p3

    neg-float v5, v0

    .line 330
    :goto_46
    const/4 v2, 0x0

    move/from16 v19, v2

    :goto_49
    const/4 v2, 0x4

    move/from16 v0, v19

    if-ge v0, v2, :cond_132

    .line 331
    shr-int/lit8 v2, v19, 0x1

    add-int v4, v20, v2

    and-int/lit8 v2, v19, 0x1

    add-int v2, v2, v21

    rem-int/lit8 v6, v2, 0x6

    .line 332
    shr-int/lit8 v2, v19, 0x1

    if-nez v2, :cond_79

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float v2, v2, v18

    move v3, v2

    :goto_61
    and-int/lit8 v2, v19, 0x1

    if-nez v2, :cond_7c

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float v2, v2, v17

    :goto_69
    mul-float/2addr v2, v3

    .line 333
    const v3, 0x3c23d70a    # 0.01f

    cmpg-float v3, v2, v3

    if-gtz v3, :cond_7f

    .line 330
    :cond_71
    add-int/lit8 v2, v19, 0x1

    move/from16 v19, v2

    goto :goto_49

    :cond_76
    move/from16 v5, p3

    .line 329
    goto :goto_46

    :cond_79
    move/from16 v3, v18

    .line 332
    goto :goto_61

    :cond_7c
    move/from16 v2, v17

    goto :goto_69

    .line 334
    :cond_7f
    mul-int/lit8 v3, v4, 0x6

    add-int/2addr v3, v6

    .line 335
    rem-int/lit8 v4, v3, 0x5

    int-to-float v4, v4

    const/high16 v6, 0x3e480000    # 0.1953125f

    mul-float v12, v4, v6

    div-int/lit8 v3, v3, 0x5

    int-to-float v3, v3

    const/high16 v4, 0x3e480000    # 0.1953125f

    mul-float v13, v3, v4

    .line 336
    const/high16 v3, 0x3e480000    # 0.1953125f

    add-float v14, v12, v3

    const/high16 v3, 0x3e480000    # 0.1953125f

    add-float v15, v13, v3

    .line 338
    mul-float v2, v2, p7

    move/from16 v16, v2

    :goto_9c
    const v2, 0x3b83126f    # 0.004f

    cmpl-float v2, v16, v2

    if-lez v2, :cond_71

    .line 339
    const/high16 v2, 0x3f800000    # 1.0f

    move/from16 v0, v16

    invoke-static {v2, v0}, Ljava/lang/Math;->min(FF)F

    move-result v11

    .line 340
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_a"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lfr/testudo/spacecorsair/mod/ModMonolith;->edge:[F

    const/4 v4, 0x0

    aget v8, v3, v4

    sget-object v3, Lfr/testudo/spacecorsair/mod/ModMonolith;->edge:[F

    const/4 v4, 0x1

    aget v9, v3, v4

    sget-object v3, Lfr/testudo/spacecorsair/mod/ModMonolith;->edge:[F

    const/4 v4, 0x2

    aget v10, v3, v4

    move/from16 v3, p1

    move/from16 v4, p2

    move/from16 v6, p3

    move/from16 v7, p4

    invoke-static/range {v2 .. v15}, Lfr/testudo/spacecorsair/mod/ModMonolith;->mask(Ljava/lang/String;FFFFFFFFFFFFF)V

    .line 341
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_ai"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    sget-object v4, Lfr/testudo/spacecorsair/mod/ModMonolith;->core:[F

    const/4 v6, 0x0

    aget v4, v4, v6

    sget-object v6, Lfr/testudo/spacecorsair/mod/ModMonolith;->edge:[F

    const/4 v7, 0x0

    aget v6, v6, v7

    sub-float/2addr v4, v6

    invoke-static {v3, v4}, Ljava/lang/Math;->max(FF)F

    move-result v8

    const/4 v3, 0x0

    sget-object v4, Lfr/testudo/spacecorsair/mod/ModMonolith;->core:[F

    const/4 v6, 0x1

    aget v4, v4, v6

    sget-object v6, Lfr/testudo/spacecorsair/mod/ModMonolith;->edge:[F

    const/4 v7, 0x1

    aget v6, v6, v7

    sub-float/2addr v4, v6

    invoke-static {v3, v4}, Ljava/lang/Math;->max(FF)F

    move-result v9

    const/4 v3, 0x0

    sget-object v4, Lfr/testudo/spacecorsair/mod/ModMonolith;->core:[F

    const/4 v6, 0x2

    aget v4, v4, v6

    sget-object v6, Lfr/testudo/spacecorsair/mod/ModMonolith;->edge:[F

    const/4 v7, 0x2

    aget v6, v6, v7

    sub-float/2addr v4, v6

    invoke-static {v3, v4}, Ljava/lang/Math;->max(FF)F

    move-result v10

    move/from16 v3, p1

    move/from16 v4, p2

    move/from16 v6, p3

    move/from16 v7, p4

    invoke-static/range {v2 .. v15}, Lfr/testudo/spacecorsair/mod/ModMonolith;->mask(Ljava/lang/String;FFFFFFFFFFFFF)V

    .line 338
    const/high16 v2, 0x3f800000    # 1.0f

    sub-float v2, v16, v2

    move/from16 v16, v2

    goto/16 :goto_9c

    .line 344
    :cond_132
    return-void
.end method

.method private static heavyPulse(J)F
    .registers 10

    .prologue
    .line 295
    const/4 v0, 0x0

    .line 296
    const/4 v1, 0x0

    :goto_2
    const/16 v2, 0xc

    if-ge v1, v2, :cond_3d

    .line 297
    sget-object v2, Lfr/testudo/spacecorsair/mod/ModMonolith;->hT:[J

    aget-wide v2, v2, v1

    sub-long v2, p0, v2

    long-to-float v2, v2

    const/high16 v3, 0x447a0000    # 1000.0f

    div-float/2addr v2, v3

    .line 298
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

    .line 296
    :cond_3a
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 300
    :cond_3d
    return v0
.end method

.method static hit(Lfr/testudo/spacecorsair/business/player/PlayerShip;Lfr/testudo/spacecorsair/engine/Vector2;F)V
    .registers 13

    .prologue
    .line 137
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

    .line 149
    :cond_13
    :goto_13
    return-void

    .line 138
    :cond_14
    iget v0, p1, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v1, v1, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    sub-float/2addr v0, v1

    iget v1, p1, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    iget-object v2, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v2, v2, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    sub-float/2addr v1, v2

    .line 139
    iget v2, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->spin:F

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v2

    neg-double v2, v2

    .line 140
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

    .line 141
    sget v1, Lfr/testudo/spacecorsair/mod/ModMonolith;->hNext:I

    .line 142
    sget v2, Lfr/testudo/spacecorsair/mod/ModMonolith;->hNext:I

    add-int/lit8 v2, v2, 0x1

    rem-int/lit8 v2, v2, 0xc

    sput v2, Lfr/testudo/spacecorsair/mod/ModMonolith;->hNext:I

    .line 143
    sget-object v2, Lfr/testudo/spacecorsair/mod/ModMonolith;->hT:[J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    aput-wide v6, v2, v1

    .line 144
    sget-object v2, Lfr/testudo/spacecorsair/mod/ModMonolith;->hAng:[F

    float-to-double v6, v0

    float-to-double v4, v4

    invoke-static {v6, v7, v4, v5}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v4

    double-to-float v0, v4

    aput v0, v2, v1

    .line 145
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

    .line 146
    :catch_7f
    move-exception v0

    goto :goto_13
.end method

.method private static hits(Lfr/testudo/spacecorsair/business/player/PlayerShip;J[FF)V
    .registers 28

    .prologue
    .line 459
    sget v2, Lfr/testudo/spacecorsair/mod/ModMonolith;->D:F

    const/high16 v3, 0x44800000    # 1024.0f

    div-float v19, v2, v3

    .line 460
    move-object/from16 v0, p3

    array-length v2, v0

    div-int/lit8 v20, v2, 0x4

    .line 461
    const/4 v2, 0x0

    move/from16 v18, v2

    :goto_e
    const/16 v2, 0xc

    move/from16 v0, v18

    if-ge v0, v2, :cond_1a1

    .line 462
    sget-object v2, Lfr/testudo/spacecorsair/mod/ModMonolith;->hT:[J

    aget-wide v2, v2, v18

    sub-long v2, p1, v2

    long-to-float v2, v2

    const/high16 v3, 0x447a0000    # 1000.0f

    div-float v21, v2, v3

    .line 463
    sget-object v2, Lfr/testudo/spacecorsair/mod/ModMonolith;->hT:[J

    aget-wide v2, v2, v18

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_30

    const v2, 0x3f99999a    # 1.2f

    cmpl-float v2, v21, v2

    if-ltz v2, :cond_35

    .line 461
    :cond_30
    :goto_30
    add-int/lit8 v2, v18, 0x1

    move/from16 v18, v2

    goto :goto_e

    .line 464
    :cond_35
    sget-object v2, Lfr/testudo/spacecorsair/mod/ModMonolith;->hDmg:[F

    aget v22, v2, v18

    .line 466
    const/16 v17, 0x0

    .line 467
    const/high16 v3, 0x41100000    # 9.0f

    .line 468
    const/4 v5, 0x0

    :goto_3e
    move/from16 v0, v20

    if-ge v5, v0, :cond_6c

    .line 469
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

    .line 470
    sget-object v4, Lfr/testudo/spacecorsair/mod/ModMonolith;->hAng:[F

    aget v4, v4, v18

    invoke-static {v2, v4}, Lfr/testudo/spacecorsair/mod/ModMonolith;->angd(FF)F

    move-result v2

    .line 471
    cmpg-float v4, v2, v3

    if-gez v4, :cond_1a2

    move v4, v5

    .line 468
    :goto_66
    add-int/lit8 v5, v5, 0x1

    move v3, v2

    move/from16 v17, v4

    goto :goto_3e

    .line 473
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

    .line 474
    sget-object v2, Lfr/testudo/spacecorsair/mod/ModMonolith;->a:Lfr/testudo/spacecorsair/engine/Vector2;

    sget-object v3, Lfr/testudo/spacecorsair/mod/ModMonolith;->b:Lfr/testudo/spacecorsair/engine/Vector2;

    move-object/from16 v0, p0

    invoke-static {v0, v2, v3}, Lfr/testudo/spacecorsair/mod/ModMonolith;->toScreen(Lfr/testudo/spacecorsair/business/player/PlayerShip;Lfr/testudo/spacecorsair/engine/Vector2;Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 475
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

    .line 476
    const/high16 v2, 0x41600000    # 14.0f

    const/high16 v3, 0x41600000    # 14.0f

    mul-float v3, v3, v22

    add-float/2addr v2, v3

    const v3, 0x4023d70a    # 2.56f

    mul-float/2addr v2, v3

    mul-float v2, v2, v19

    const/high16 v3, 0x40200000    # 2.5f

    mul-float v5, v2, v3

    .line 477
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

    .line 479
    const v2, 0x40333333    # 2.8f

    mul-float v2, v2, v21

    const v3, 0x40c90fdb

    div-float/2addr v2, v3

    move/from16 v0, v20

    int-to-float v3, v0

    mul-float/2addr v3, v2

    .line 480
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

    .line 481
    const/4 v2, -0x1

    :goto_ed
    const/4 v4, 0x1

    if-gt v2, v4, :cond_149

    .line 482
    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v4

    mul-int/2addr v4, v2

    add-int v4, v4, v17

    rem-int v4, v4, v20

    add-int v4, v4, v20

    rem-int v4, v4, v20

    .line 483
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

    .line 484
    sget-object v4, Lfr/testudo/spacecorsair/mod/ModMonolith;->a:Lfr/testudo/spacecorsair/engine/Vector2;

    sget-object v6, Lfr/testudo/spacecorsair/mod/ModMonolith;->c:Lfr/testudo/spacecorsair/engine/Vector2;

    move-object/from16 v0, p0

    invoke-static {v0, v4, v6}, Lfr/testudo/spacecorsair/mod/ModMonolith;->toScreen(Lfr/testudo/spacecorsair/business/player/PlayerShip;Lfr/testudo/spacecorsair/engine/Vector2;Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 485
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

    .line 481
    add-int/lit8 v2, v2, 0x2

    goto :goto_ed

    .line 487
    :cond_149
    const v2, 0x3f4ccccd    # 0.8f

    cmpl-float v2, v22, v2

    if-lez v2, :cond_30

    const v2, 0x3f19999a    # 0.6f

    cmpg-float v2, v21, v2

    if-gez v2, :cond_30

    .line 488
    sget-object v4, Lfr/testudo/spacecorsair/engine/GameRenderer;->screenCenter:Lfr/testudo/spacecorsair/engine/Vector2;

    .line 489
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

    .line 490
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

    .line 493
    :cond_1a1
    return-void

    :cond_1a2
    move v2, v3

    move/from16 v4, v17

    goto/16 :goto_66
.end method

.method private static leanOffset(Lfr/testudo/spacecorsair/business/player/PlayerShip;JLfr/testudo/spacecorsair/engine/Vector2;)V
    .registers 15

    .prologue
    const/4 v4, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    .line 348
    .line 349
    const/4 v3, 0x0

    move v0, v4

    move v1, v4

    :goto_6
    const/16 v4, 0xc

    if-ge v3, v4, :cond_4f

    .line 350
    sget-object v4, Lfr/testudo/spacecorsair/mod/ModMonolith;->hT:[J

    aget-wide v4, v4, v3

    sub-long v4, p1, v4

    long-to-float v4, v4

    const/high16 v5, 0x447a0000    # 1000.0f

    div-float/2addr v4, v5

    .line 351
    sget-object v5, Lfr/testudo/spacecorsair/mod/ModMonolith;->hT:[J

    aget-wide v6, v5, v3

    const-wide/16 v8, 0x0

    cmp-long v5, v6, v8

    if-eqz v5, :cond_24

    const/high16 v5, 0x40400000    # 3.0f

    cmpl-float v5, v4, v5

    if-ltz v5, :cond_27

    .line 349
    :cond_24
    :goto_24
    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    .line 352
    :cond_27
    sget-object v5, Lfr/testudo/spacecorsair/mod/ModMonolith;->hDmg:[F

    aget v5, v5, v3

    neg-float v4, v4

    float-to-double v6, v4

    const-wide/high16 v8, 0x3ff8000000000000L    # 1.5

    div-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->exp(D)D

    move-result-wide v6

    double-to-float v4, v6

    mul-float/2addr v4, v5

    .line 353
    sget-object v5, Lfr/testudo/spacecorsair/mod/ModMonolith;->hAng:[F

    aget v5, v5, v3

    float-to-double v6, v5

    invoke-static {v6, v7}, Ljava/lang/Math;->cos(D)D

    move-result-wide v6

    double-to-float v5, v6

    mul-float/2addr v5, v4

    add-float/2addr v1, v5

    .line 354
    sget-object v5, Lfr/testudo/spacecorsair/mod/ModMonolith;->hAng:[F

    aget v5, v5, v3

    float-to-double v6, v5

    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    double-to-float v5, v6

    mul-float/2addr v4, v5

    add-float/2addr v0, v4

    goto :goto_24

    .line 356
    :cond_4f
    mul-float v3, v1, v1

    mul-float v4, v0, v0

    add-float/2addr v3, v4

    float-to-double v4, v3

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    double-to-float v3, v4

    const/high16 v4, 0x41280000    # 10.5f

    sget v5, Lfr/testudo/spacecorsair/mod/ModMonolith;->D:F

    mul-float/2addr v4, v5

    const/high16 v5, 0x44800000    # 1024.0f

    div-float/2addr v4, v5

    .line 357
    cmpl-float v5, v3, v2

    if-lez v5, :cond_67

    div-float/2addr v2, v3

    .line 358
    :cond_67
    mul-float/2addr v1, v2

    mul-float/2addr v1, v4

    mul-float/2addr v0, v2

    mul-float/2addr v0, v4

    invoke-virtual {p3, v1, v0}, Lfr/testudo/spacecorsair/engine/Vector2;->set(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    move-result-object v0

    iget v1, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->spin:F

    float-to-double v2, v1

    invoke-static {v2, v3}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lfr/testudo/spacecorsair/engine/Vector2;->applyRotatation(D)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 359
    return-void
.end method

.method private static lx(F)F
    .registers 4

    .prologue
    const/high16 v2, 0x3f000000    # 0.5f

    .line 168
    add-float v0, p0, v2

    const/high16 v1, 0x44800000    # 1024.0f

    div-float/2addr v0, v1

    sub-float/2addr v0, v2

    sget v1, Lfr/testudo/spacecorsair/mod/ModMonolith;->D:F

    mul-float/2addr v0, v1

    return v0
.end method

.method private static mask(Ljava/lang/String;FFFFFFFFFFFFF)V
    .registers 30

    .prologue
    .line 310
    const v1, 0x3b83126f    # 0.004f

    cmpg-float v1, p9, v1

    if-gtz v1, :cond_8

    .line 315
    :cond_7
    :goto_7
    return-void

    .line 311
    :cond_8
    invoke-static/range {p0 .. p0}, Lfr/testudo/spacecorsair/mod/ModArt;->ready(Ljava/lang/String;)Lfr/testudo/spacecorsair/display/Texture;

    move-result-object v1

    .line 312
    if-eqz v1, :cond_7

    .line 313
    const/4 v2, 0x1

    sput-boolean v2, Lfr/testudo/spacecorsair/mod/ModFx;->flatNext:Z

    .line 314
    const/high16 v2, 0x3f800000    # 1.0f

    move/from16 v0, p6

    invoke-static {v2, v0}, Ljava/lang/Math;->min(FF)F

    move-result v7

    const/high16 v2, 0x3f800000    # 1.0f

    move/from16 v0, p7

    invoke-static {v2, v0}, Ljava/lang/Math;->min(FF)F

    move-result v8

    const/high16 v2, 0x3f800000    # 1.0f

    move/from16 v0, p8

    invoke-static {v2, v0}, Ljava/lang/Math;->min(FF)F

    move-result v9

    const/high16 v2, 0x3f800000    # 1.0f

    move/from16 v0, p9

    invoke-static {v2, v0}, Ljava/lang/Math;->min(FF)F

    move-result v10

    const/4 v11, 0x1

    const/high16 v2, 0x39800000

    add-float v12, p10, v2

    sget v2, Lfr/testudo/spacecorsair/mod/ModMonolith;->htv:F

    add-float v13, p11, v2

    const/high16 v2, 0x39800000

    sub-float v14, p12, v2

    sget v2, Lfr/testudo/spacecorsair/mod/ModMonolith;->htv:F

    sub-float v15, p13, v2

    move/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    invoke-static/range {v1 .. v15}, Lfr/testudo/spacecorsair/mod/ModFx;->sprTex(Lfr/testudo/spacecorsair/display/Texture;FFFFFFFFFZFFFF)V

    goto :goto_7
.end method

.method public static over(Lfr/testudo/spacecorsair/business/player/PlayerShip;)V
    .registers 16

    .prologue
    .line 421
    :try_start_0
    sget v0, Lfr/testudo/spacecorsair/mod/ModMonolith;->stage:I

    if-nez v0, :cond_5

    .line 450
    :cond_4
    :goto_4
    return-void

    .line 422
    :cond_5
    invoke-virtual {p0}, Lfr/testudo/spacecorsair/business/player/PlayerShip;->getDrawableObject()Lfr/testudo/spacecorsair/display/Drawable;

    move-result-object v0

    .line 423
    if-eqz v0, :cond_4

    iget-object v1, v0, Lfr/testudo/spacecorsair/display/Drawable;->dimensions:Lfr/testudo/spacecorsair/engine/Vector2;

    if-eqz v1, :cond_4

    .line 424
    iget-object v0, v0, Lfr/testudo/spacecorsair/display/Drawable;->dimensions:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v0, v0, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    sput v0, Lfr/testudo/spacecorsair/mod/ModMonolith;->D:F

    .line 425
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    .line 426
    const-string v0, "monolith"

    sget v1, Lfr/testudo/spacecorsair/mod/ModMonolith;->stage:I

    invoke-static {v0, v1}, Lfr/testudo/spacecorsair/mod/ModMonolith;->useParts(Ljava/lang/String;I)Z

    move-result v14

    .line 427
    sget v0, Lfr/testudo/spacecorsair/mod/ModMonolith;->stage:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_94

    const/high16 v0, 0x3f800000    # 1.0f

    move v11, v0

    .line 428
    :goto_29
    sget-object v2, Lfr/testudo/spacecorsair/engine/GameRenderer;->screenCenter:Lfr/testudo/spacecorsair/engine/Vector2;

    .line 429
    const/4 v0, 0x1

    sput-boolean v0, Lfr/testudo/spacecorsair/mod/ModFx;->relative:Z
    :try_end_2e
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_2e} :catch_8e

    .line 431
    if-eqz v14, :cond_98

    :try_start_30
    const-string v0, "monolith_stage5_hull_hot"

    .line 432
    :goto_32
    if-eqz v0, :cond_54

    sget v1, Lfr/testudo/spacecorsair/mod/ModMonolith;->heat:F

    const v3, 0x3ca3d70a    # 0.02f

    cmpl-float v1, v1, v3

    if-lez v1, :cond_54

    iget v1, v2, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    iget v2, v2, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    sget v3, Lfr/testudo/spacecorsair/mod/ModMonolith;->D:F

    sget v4, Lfr/testudo/spacecorsair/mod/ModMonolith;->D:F

    iget v5, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->spin:F

    const/high16 v6, 0x3f800000    # 1.0f

    const/high16 v7, 0x3f800000    # 1.0f

    const/high16 v8, 0x3f800000    # 1.0f

    sget v9, Lfr/testudo/spacecorsair/mod/ModMonolith;->heat:F

    mul-float/2addr v9, v11

    const/4 v10, 0x0

    invoke-static/range {v0 .. v10}, Lfr/testudo/spacecorsair/mod/ModFx;->sprR(Ljava/lang/String;FFFFFFFFFZ)V

    .line 433
    :cond_54
    if-eqz v14, :cond_80

    .line 434
    sget v0, Lfr/testudo/spacecorsair/mod/ModMonolith;->ang:F

    const/high16 v1, 0x40400000    # 3.0f

    const-wide v2, 0x401921fb54442d18L    # 6.283185307179586

    sget v4, Lfr/testudo/spacecorsair/mod/ModMonolith;->flapT:F

    float-to-double v4, v4

    mul-double/2addr v2, v4

    const-wide v4, 0x3ffccccccccccccdL    # 1.8

    div-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    double-to-float v2, v2

    mul-float/2addr v1, v2

    sget v2, Lfr/testudo/spacecorsair/mod/ModMonolith;->ang:F

    const/high16 v3, 0x42a00000    # 80.0f

    div-float/2addr v2, v3

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v2

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    .line 435
    const/4 v1, 0x0

    invoke-static {p0, v12, v13, v0, v1}, Lfr/testudo/spacecorsair/mod/ModMonolith;->plasma(Lfr/testudo/spacecorsair/business/player/PlayerShip;JFZ)V

    .line 437
    :cond_80
    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModMonolith;->shieldFrac(Lfr/testudo/spacecorsair/business/player/PlayerShip;)F
    :try_end_83
    .catchall {:try_start_30 .. :try_end_83} :catchall_d5

    move-result v0

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_a2

    .line 445
    const/4 v0, 0x0

    :try_start_8a
    sput-boolean v0, Lfr/testudo/spacecorsair/mod/ModFx;->relative:Z
    :try_end_8c
    .catch Ljava/lang/Throwable; {:try_start_8a .. :try_end_8c} :catch_8e

    goto/16 :goto_4

    .line 447
    :catch_8e
    move-exception v0

    .line 448
    const/4 v0, 0x0

    sput-boolean v0, Lfr/testudo/spacecorsair/mod/ModFx;->relative:Z

    goto/16 :goto_4

    .line 427
    :cond_94
    const/high16 v0, 0x3f000000    # 0.5f

    move v11, v0

    goto :goto_29

    .line 431
    :cond_98
    :try_start_98
    sget v0, Lfr/testudo/spacecorsair/mod/ModMonolith;->stage:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_a0

    const-string v0, "monolith_stage4_hot"

    goto :goto_32

    :cond_a0
    const/4 v0, 0x0

    goto :goto_32

    .line 438
    :cond_a2
    invoke-static {v12, v13}, Lfr/testudo/spacecorsair/mod/ModMonolith;->agitation(J)F

    move-result v0

    .line 439
    sget v1, Lfr/testudo/spacecorsair/mod/ModMonolith;->held:F

    const v2, 0x3e99999a    # 0.3f

    const/high16 v3, 0x3fc00000    # 1.5f

    invoke-static {v0, v3}, Ljava/lang/Math;->min(FF)F

    move-result v0

    mul-float/2addr v0, v2

    add-float/2addr v0, v1

    .line 440
    sget-object v1, Lfr/testudo/spacecorsair/mod/ModMonolith;->AURA_CORE:[[F

    sget-object v2, Lfr/testudo/spacecorsair/mod/ModMonolith;->core:[F

    invoke-static {v1, v0, v2}, Lfr/testudo/spacecorsair/mod/ModMonolith;->ramp([[FF[F)[F

    .line 441
    sget-object v1, Lfr/testudo/spacecorsair/mod/ModMonolith;->AURA_EDGE:[[F

    sget-object v2, Lfr/testudo/spacecorsair/mod/ModMonolith;->edge:[F

    invoke-static {v1, v0, v2}, Lfr/testudo/spacecorsair/mod/ModMonolith;->ramp([[FF[F)[F

    .line 442
    if-nez v14, :cond_c8

    sget v0, Lfr/testudo/spacecorsair/mod/ModMonolith;->stage:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_d2

    :cond_c8
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModMonoData;->HULL:[F

    .line 443
    :goto_ca
    invoke-static {p0, v12, v13, v0, v11}, Lfr/testudo/spacecorsair/mod/ModMonolith;->hits(Lfr/testudo/spacecorsair/business/player/PlayerShip;J[FF)V
    :try_end_cd
    .catchall {:try_start_98 .. :try_end_cd} :catchall_d5

    .line 445
    const/4 v0, 0x0

    :try_start_ce
    sput-boolean v0, Lfr/testudo/spacecorsair/mod/ModFx;->relative:Z
    :try_end_d0
    .catch Ljava/lang/Throwable; {:try_start_ce .. :try_end_d0} :catch_8e

    goto/16 :goto_4

    .line 442
    :cond_d2
    :try_start_d2
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModMonoData;->S4:[F
    :try_end_d4
    .catchall {:try_start_d2 .. :try_end_d4} :catchall_d5

    goto :goto_ca

    .line 445
    :catchall_d5
    move-exception v0

    const/4 v1, 0x0

    :try_start_d7
    sput-boolean v1, Lfr/testudo/spacecorsair/mod/ModFx;->relative:Z

    .line 446
    throw v0
    :try_end_da
    .catch Ljava/lang/Throwable; {:try_start_d7 .. :try_end_da} :catch_8e
.end method

.method private static plasma(Lfr/testudo/spacecorsair/business/player/PlayerShip;JFZ)V
    .registers 28

    .prologue
    .line 370
    const/4 v4, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    sget v6, Lfr/testudo/spacecorsair/mod/ModMonolith;->ang:F

    const/high16 v7, 0x42a00000    # 80.0f

    div-float/2addr v6, v7

    const v7, 0x3f59999a    # 0.85f

    sub-float/2addr v6, v7

    const v7, 0x3e19999a    # 0.15f

    div-float/2addr v6, v7

    invoke-static {v5, v6}, Ljava/lang/Math;->min(FF)F

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(FF)F

    move-result v4

    .line 371
    const/4 v5, 0x0

    cmpg-float v5, v4, v5

    if-gtz v5, :cond_1e

    .line 404
    :cond_1d
    return-void

    .line 372
    :cond_1e
    sget-object v5, Lfr/testudo/spacecorsair/mod/ModMonolith;->PLASMA_CORE:[[F

    sget v6, Lfr/testudo/spacecorsair/mod/ModMonolith;->held:F

    sget-object v7, Lfr/testudo/spacecorsair/mod/ModMonolith;->core:[F

    invoke-static {v5, v6, v7}, Lfr/testudo/spacecorsair/mod/ModMonolith;->ramp([[FF[F)[F

    .line 373
    sget-object v5, Lfr/testudo/spacecorsair/mod/ModMonolith;->PLASMA_EDGE:[[F

    sget v6, Lfr/testudo/spacecorsair/mod/ModMonolith;->held:F

    sget-object v7, Lfr/testudo/spacecorsair/mod/ModMonolith;->edge:[F

    invoke-static {v5, v6, v7}, Lfr/testudo/spacecorsair/mod/ModMonolith;->ramp([[FF[F)[F

    .line 374
    const/high16 v5, 0x3f800000    # 1.0f

    const v6, 0x3fb33333    # 1.4f

    mul-float/2addr v6, v4

    invoke-static {v5, v6}, Ljava/lang/Math;->min(FF)F

    move-result v17

    const/high16 v5, 0x3e800000    # 0.25f

    const/high16 v6, 0x3f400000    # 0.75f

    mul-float/2addr v4, v6

    add-float/2addr v4, v5

    .line 375
    const-wide/16 v6, 0x708

    rem-long v6, p1, v6

    long-to-float v5, v6

    const/high16 v6, 0x44e10000    # 1800.0f

    div-float/2addr v5, v6

    const/high16 v6, 0x41900000    # 18.0f

    mul-float/2addr v5, v6

    .line 376
    float-to-int v6, v5

    const/16 v7, 0x11

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v18

    .line 377
    move/from16 v0, v18

    int-to-float v6, v0

    sub-float v14, v5, v6

    .line 378
    sget v5, Lfr/testudo/spacecorsair/mod/ModMonolith;->D:F

    const/high16 v6, 0x44800000    # 1024.0f

    div-float v19, v5, v6

    .line 379
    const/high16 v5, 0x44160000    # 600.0f

    const v6, 0x44294000    # 677.0f

    .line 380
    const/high16 v7, 0x44480000    # 800.0f

    mul-float v7, v7, v19

    mul-float v13, v7, v4

    const v7, 0x442d8000    # 694.0f

    mul-float v7, v7, v19

    mul-float v8, v7, v4

    .line 382
    const v7, 0x43b68000    # 365.0f

    const v9, 0x43b68000    # 365.0f

    sub-float/2addr v5, v9

    mul-float/2addr v5, v4

    add-float v20, v7, v5

    const/high16 v5, 0x44160000    # 600.0f

    const/high16 v7, 0x44160000    # 600.0f

    sub-float/2addr v6, v7

    mul-float/2addr v4, v6

    add-float v21, v5, v4

    .line 383
    if-eqz p4, :cond_e2

    const v4, 0x3f19999a    # 0.6f

    move v12, v4

    .line 384
    :goto_87
    const v4, 0x4019999a    # 2.4f

    const v5, 0x4099999a    # 4.8f

    sget v6, Lfr/testudo/spacecorsair/mod/ModMonolith;->held:F

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    const/high16 v5, 0x41f00000    # 30.0f

    mul-float v22, v4, v5

    .line 385
    const/4 v4, 0x0

    move/from16 v16, v4

    :goto_98
    const/4 v4, 0x2

    move/from16 v0, v16

    if-ge v0, v4, :cond_1d

    .line 386
    if-nez v16, :cond_e7

    const/4 v4, 0x1

    .line 387
    :goto_a0
    sget-object v5, Lfr/testudo/spacecorsair/mod/ModMonolith;->a:Lfr/testudo/spacecorsair/engine/Vector2;

    move/from16 v0, v20

    move/from16 v1, v21

    move/from16 v2, p3

    invoke-static {v4, v0, v1, v2, v5}, Lfr/testudo/spacecorsair/mod/ModMonolith;->wingPt(ZFFFLfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 388
    sget-object v5, Lfr/testudo/spacecorsair/mod/ModMonolith;->a:Lfr/testudo/spacecorsair/engine/Vector2;

    sget-object v6, Lfr/testudo/spacecorsair/mod/ModMonolith;->b:Lfr/testudo/spacecorsair/engine/Vector2;

    move-object/from16 v0, p0

    invoke-static {v0, v5, v6}, Lfr/testudo/spacecorsair/mod/ModMonolith;->toScreen(Lfr/testudo/spacecorsair/business/player/PlayerShip;Lfr/testudo/spacecorsair/engine/Vector2;Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 389
    move-object/from16 v0, p0

    iget v6, v0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->spin:F

    if-eqz v4, :cond_e9

    move/from16 v5, p3

    :goto_bc
    add-float v9, v6, v5

    if-eqz v4, :cond_ed

    move v7, v13

    .line 390
    :goto_c1
    const/4 v4, 0x0

    move v15, v4

    :goto_c3
    const/4 v4, 0x2

    if-ge v15, v4, :cond_f1

    .line 391
    add-int v4, v18, v15

    rem-int/lit8 v4, v4, 0x12

    .line 392
    if-nez v15, :cond_ef

    const/high16 v5, 0x3f800000    # 1.0f

    sub-float/2addr v5, v14

    :goto_cf
    mul-float/2addr v5, v12

    mul-float v10, v5, v17

    .line 393
    sget-object v5, Lfr/testudo/spacecorsair/mod/ModMonolith;->b:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v5, v5, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    sget-object v6, Lfr/testudo/spacecorsair/mod/ModMonolith;->b:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v6, v6, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    const/4 v11, 0x1

    invoke-static/range {v4 .. v11}, Lfr/testudo/spacecorsair/mod/ModMonolith;->plasmaTile(IFFFFFFZ)V

    .line 390
    add-int/lit8 v4, v15, 0x1

    move v15, v4

    goto :goto_c3

    .line 383
    :cond_e2
    const v4, 0x3ecccccd    # 0.4f

    move v12, v4

    goto :goto_87

    .line 386
    :cond_e7
    const/4 v4, 0x0

    goto :goto_a0

    .line 389
    :cond_e9
    move/from16 v0, p3

    neg-float v5, v0

    goto :goto_bc

    :cond_ed
    neg-float v7, v13

    goto :goto_c1

    :cond_ef
    move v5, v14

    .line 392
    goto :goto_cf

    .line 395
    :cond_f1
    if-nez p4, :cond_f8

    .line 385
    :cond_f3
    add-int/lit8 v4, v16, 0x1

    move/from16 v16, v4

    goto :goto_98

    .line 396
    :cond_f8
    const/4 v4, 0x0

    move v15, v4

    :goto_fa
    sget-object v4, Lfr/testudo/spacecorsair/mod/ModMonolith;->GHOST_AGE:[F

    array-length v4, v4

    if-ge v15, v4, :cond_f3

    .line 397
    sget-object v4, Lfr/testudo/spacecorsair/mod/ModMonolith;->GHOST_AGE:[F

    aget v4, v4, v15

    mul-float v4, v4, v22

    mul-float v4, v4, v19

    .line 398
    sget-object v5, Lfr/testudo/spacecorsair/mod/ModMonolith;->c:Lfr/testudo/spacecorsair/engine/Vector2;

    const/4 v6, 0x0

    invoke-virtual {v5, v6, v4}, Lfr/testudo/spacecorsair/engine/Vector2;->set(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    move-result-object v4

    move-object/from16 v0, p0

    iget v5, v0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->spin:F

    float-to-double v10, v5

    invoke-static {v10, v11}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v10

    invoke-virtual {v4, v10, v11}, Lfr/testudo/spacecorsair/engine/Vector2;->applyRotatation(D)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 399
    sget-object v4, Lfr/testudo/spacecorsair/mod/ModMonolith;->GHOST_AGE:[F

    aget v4, v4, v15

    const/high16 v5, 0x447a0000    # 1000.0f

    mul-float/2addr v4, v5

    float-to-long v4, v4

    sub-long v4, p1, v4

    const-wide/16 v10, 0x708

    rem-long/2addr v4, v10

    const-wide/16 v10, 0x708

    add-long/2addr v4, v10

    const-wide/16 v10, 0x708

    rem-long/2addr v4, v10

    long-to-float v4, v4

    const/high16 v5, 0x44e10000    # 1800.0f

    div-float/2addr v4, v5

    const/high16 v5, 0x41900000    # 18.0f

    mul-float/2addr v4, v5

    float-to-int v4, v4

    rem-int/lit8 v4, v4, 0x12

    .line 401
    sget-object v5, Lfr/testudo/spacecorsair/mod/ModMonolith;->b:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v5, v5, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    sget-object v6, Lfr/testudo/spacecorsair/mod/ModMonolith;->c:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v6, v6, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    add-float/2addr v5, v6

    sget-object v6, Lfr/testudo/spacecorsair/mod/ModMonolith;->b:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v6, v6, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    sget-object v10, Lfr/testudo/spacecorsair/mod/ModMonolith;->c:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v10, v10, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    add-float/2addr v6, v10

    sget-object v10, Lfr/testudo/spacecorsair/mod/ModMonolith;->GHOST_W:[F

    aget v10, v10, v15

    mul-float v10, v10, v17

    const/4 v11, 0x0

    invoke-static/range {v4 .. v11}, Lfr/testudo/spacecorsair/mod/ModMonolith;->plasmaTile(IFFFFFFZ)V

    .line 396
    add-int/lit8 v4, v15, 0x1

    move v15, v4

    goto :goto_fa
.end method

.method private static plasmaTile(IFFFFFFZ)V
    .registers 22

    .prologue
    .line 407
    const v0, 0x3b83126f    # 0.004f

    cmpg-float v0, p6, v0

    if-gtz v0, :cond_8

    .line 416
    :goto_7
    return-void

    .line 408
    :cond_8
    rem-int/lit8 v0, p0, 0x6

    int-to-float v0, v0

    const/high16 v1, 0x3e160000

    mul-float v10, v0, v1

    div-int/lit8 v0, p0, 0x6

    int-to-float v0, v0

    const/high16 v1, 0x3e820000    # 0.25390625f

    mul-float v11, v0, v1

    .line 409
    const/high16 v0, 0x3e160000

    add-float v12, v10, v0

    const/high16 v0, 0x3e820000    # 0.25390625f

    add-float v13, v11, v0

    .line 410
    const/high16 v0, 0x3a000000

    sput v0, Lfr/testudo/spacecorsair/mod/ModMonolith;->htv:F

    .line 412
    const-string v0, "mfx_mono_plasma_glow"

    sget-object v1, Lfr/testudo/spacecorsair/mod/ModMonolith;->edge:[F

    const/4 v2, 0x0

    aget v6, v1, v2

    sget-object v1, Lfr/testudo/spacecorsair/mod/ModMonolith;->edge:[F

    const/4 v2, 0x1

    aget v7, v1, v2

    sget-object v1, Lfr/testudo/spacecorsair/mod/ModMonolith;->edge:[F

    const/4 v2, 0x2

    aget v8, v1, v2

    const v1, 0x3f99999a    # 1.2f

    mul-float v9, p6, v1

    move v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    invoke-static/range {v0 .. v13}, Lfr/testudo/spacecorsair/mod/ModMonolith;->mask(Ljava/lang/String;FFFFFFFFFFFFF)V

    .line 413
    const-string v0, "mfx_mono_plasma_core"

    sget-object v1, Lfr/testudo/spacecorsair/mod/ModMonolith;->core:[F

    const/4 v2, 0x0

    aget v6, v1, v2

    sget-object v1, Lfr/testudo/spacecorsair/mod/ModMonolith;->core:[F

    const/4 v2, 0x1

    aget v7, v1, v2

    sget-object v1, Lfr/testudo/spacecorsair/mod/ModMonolith;->core:[F

    const/4 v2, 0x2

    aget v8, v1, v2

    move v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v9, p6

    invoke-static/range {v0 .. v13}, Lfr/testudo/spacecorsair/mod/ModMonolith;->mask(Ljava/lang/String;FFFFFFFFFFFFF)V

    .line 414
    if-eqz p7, :cond_7b

    const-string v0, "mfx_mono_plasma_white"

    const/high16 v6, 0x3f800000    # 1.0f

    const/high16 v7, 0x3f800000    # 1.0f

    const/high16 v8, 0x3f800000    # 1.0f

    move v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v9, p6

    invoke-static/range {v0 .. v13}, Lfr/testudo/spacecorsair/mod/ModMonolith;->mask(Ljava/lang/String;FFFFFFFFFFFFF)V

    .line 415
    :cond_7b
    const/high16 v0, 0x39800000

    sput v0, Lfr/testudo/spacecorsair/mod/ModMonolith;->htv:F

    goto :goto_7
.end method

.method static policeAura(Lfr/testudo/spacecorsair/business/Element;F)V
    .registers 16

    .prologue
    .line 195
    if-eqz p0, :cond_7

    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_8

    .line 222
    :cond_7
    :goto_7
    return-void

    .line 196
    :cond_8
    sget v11, Lfr/testudo/spacecorsair/mod/ModMonolith;->D:F

    sget v12, Lfr/testudo/spacecorsair/mod/ModMonolith;->phase:F

    .line 197
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModMonolith;->core:[F

    invoke-virtual {v0}, [F->clone()Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, [F

    sget-object v0, Lfr/testudo/spacecorsair/mod/ModMonolith;->edge:[F

    invoke-virtual {v0}, [F->clone()Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, [F

    .line 199
    :try_start_1e
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 200
    sput p1, Lfr/testudo/spacecorsair/mod/ModMonolith;->D:F

    .line 201
    const-wide/16 v2, 0x1964

    rem-long v2, v0, v2

    long-to-double v2, v2

    const-wide v4, 0x40b9640000000000L    # 6500.0

    div-double/2addr v2, v4

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    mul-double/2addr v2, v4

    const-wide v4, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v2, v4

    double-to-float v2, v2

    sput v2, Lfr/testudo/spacecorsair/mod/ModMonolith;->phase:F

    .line 202
    sget-object v2, Lfr/testudo/spacecorsair/mod/ModMonolith;->P_CORE:[F

    const/4 v3, 0x0

    sget-object v4, Lfr/testudo/spacecorsair/mod/ModMonolith;->core:[F

    const/4 v5, 0x0

    const/4 v6, 0x3

    invoke-static {v2, v3, v4, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 203
    sget-object v2, Lfr/testudo/spacecorsair/mod/ModMonolith;->P_EDGE:[F

    const/4 v3, 0x0

    sget-object v4, Lfr/testudo/spacecorsair/mod/ModMonolith;->edge:[F

    const/4 v5, 0x0

    const/4 v6, 0x3

    invoke-static {v2, v3, v4, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 204
    const/high16 v2, 0x3f800000    # 1.0f

    const v3, 0x3ca3d70a    # 0.02f

    const-wide v4, 0x401921fb54442d18L    # 6.283185307179586

    const-wide/16 v6, 0x1964

    rem-long/2addr v0, v6

    long-to-double v0, v0

    mul-double/2addr v0, v4

    const-wide v4, 0x40b9640000000000L    # 6500.0

    div-double/2addr v0, v4

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    double-to-float v0, v0

    mul-float/2addr v0, v3

    add-float/2addr v0, v2

    .line 205
    const/high16 v1, 0x3fa00000    # 1.25f

    mul-float/2addr v1, p1

    mul-float v3, v1, v0

    .line 206
    const v6, 0x3ee66666    # 0.45f

    const v7, 0x3f4ccccd    # 0.8f

    .line 207
    const-string v0, "mfx_mono_aura_hull"

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/Element;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v1, v1, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    iget-object v2, p0, Lfr/testudo/spacecorsair/business/Element;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v2, v2, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    iget v4, p0, Lfr/testudo/spacecorsair/business/Element;->spin:F

    const/4 v5, 0x0

    invoke-static/range {v0 .. v7}, Lfr/testudo/spacecorsair/mod/ModMonolith;->aura(Ljava/lang/String;FFFFZFF)V

    .line 208
    const/4 v0, 0x0

    move v10, v0

    :goto_88
    const/4 v0, 0x2

    if-ge v10, v0, :cond_c5

    .line 209
    if-nez v10, :cond_c0

    const/4 v0, 0x1

    move v5, v0

    .line 210
    :goto_8f
    const/high16 v0, 0x44000000    # 512.0f

    const/high16 v1, 0x44000000    # 512.0f

    const/4 v2, 0x0

    sget-object v4, Lfr/testudo/spacecorsair/mod/ModMonolith;->pa:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-static {v5, v0, v1, v2, v4}, Lfr/testudo/spacecorsair/mod/ModMonolith;->wingPt(ZFFFLfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 211
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/Element;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v1, p0, Lfr/testudo/spacecorsair/business/Element;->spin:F

    sget-object v2, Lfr/testudo/spacecorsair/mod/ModMonolith;->pa:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v2, v2, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    sget-object v4, Lfr/testudo/spacecorsair/mod/ModMonolith;->pa:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v4, v4, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    sget-object v13, Lfr/testudo/spacecorsair/mod/ModMonolith;->pb:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-static {v0, v1, v2, v4, v13}, Lfr/testudo/spacecorsair/mod/ModFx;->local(Lfr/testudo/spacecorsair/engine/Vector2;FFFLfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 212
    const-string v0, "mfx_mono_aura_wing"

    sget-object v1, Lfr/testudo/spacecorsair/mod/ModMonolith;->pb:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v1, v1, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    sget-object v2, Lfr/testudo/spacecorsair/mod/ModMonolith;->pb:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v2, v2, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    iget v4, p0, Lfr/testudo/spacecorsair/business/Element;->spin:F

    if-nez v5, :cond_c3

    const/4 v5, 0x1

    :goto_b9
    invoke-static/range {v0 .. v7}, Lfr/testudo/spacecorsair/mod/ModMonolith;->aura(Ljava/lang/String;FFFFZFF)V
    :try_end_bc
    .catch Ljava/lang/Throwable; {:try_start_1e .. :try_end_bc} :catch_db
    .catchall {:try_start_1e .. :try_end_bc} :catchall_f2

    .line 208
    add-int/lit8 v0, v10, 0x1

    move v10, v0

    goto :goto_88

    .line 209
    :cond_c0
    const/4 v0, 0x0

    move v5, v0

    goto :goto_8f

    .line 212
    :cond_c3
    const/4 v5, 0x0

    goto :goto_b9

    .line 217
    :cond_c5
    sput v11, Lfr/testudo/spacecorsair/mod/ModMonolith;->D:F

    .line 218
    sput v12, Lfr/testudo/spacecorsair/mod/ModMonolith;->phase:F

    .line 219
    const/4 v0, 0x0

    sget-object v1, Lfr/testudo/spacecorsair/mod/ModMonolith;->core:[F

    const/4 v2, 0x0

    const/4 v3, 0x3

    invoke-static {v8, v0, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 220
    const/4 v0, 0x0

    sget-object v1, Lfr/testudo/spacecorsair/mod/ModMonolith;->edge:[F

    const/4 v2, 0x0

    const/4 v3, 0x3

    invoke-static {v9, v0, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto/16 :goto_7

    .line 214
    :catch_db
    move-exception v0

    .line 217
    sput v11, Lfr/testudo/spacecorsair/mod/ModMonolith;->D:F

    .line 218
    sput v12, Lfr/testudo/spacecorsair/mod/ModMonolith;->phase:F

    .line 219
    const/4 v0, 0x0

    sget-object v1, Lfr/testudo/spacecorsair/mod/ModMonolith;->core:[F

    const/4 v2, 0x0

    const/4 v3, 0x3

    invoke-static {v8, v0, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 220
    const/4 v0, 0x0

    sget-object v1, Lfr/testudo/spacecorsair/mod/ModMonolith;->edge:[F

    const/4 v2, 0x0

    const/4 v3, 0x3

    invoke-static {v9, v0, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto/16 :goto_7

    .line 217
    :catchall_f2
    move-exception v0

    sput v11, Lfr/testudo/spacecorsair/mod/ModMonolith;->D:F

    .line 218
    sput v12, Lfr/testudo/spacecorsair/mod/ModMonolith;->phase:F

    .line 219
    const/4 v1, 0x0

    sget-object v2, Lfr/testudo/spacecorsair/mod/ModMonolith;->core:[F

    const/4 v3, 0x0

    const/4 v4, 0x3

    invoke-static {v8, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 220
    const/4 v1, 0x0

    sget-object v2, Lfr/testudo/spacecorsair/mod/ModMonolith;->edge:[F

    const/4 v3, 0x0

    const/4 v4, 0x3

    invoke-static {v9, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 221
    throw v0
.end method

.method private static ramp([[FF[F)[F
    .registers 10

    .prologue
    const/4 v6, 0x1

    const/4 v3, 0x0

    const/high16 v5, 0x40000000    # 2.0f

    const/high16 v4, 0x3f000000    # 0.5f

    .line 153
    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v1, p1}, Ljava/lang/Math;->min(FF)F

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 156
    cmpg-float v1, v0, v4

    if-gtz v1, :cond_2e

    aget-object v2, p0, v3

    aget-object v1, p0, v6

    mul-float/2addr v0, v5

    .line 157
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

    .line 156
    :cond_2e
    aget-object v2, p0, v6

    const/4 v1, 0x2

    aget-object v1, p0, v1

    sub-float/2addr v0, v4

    mul-float/2addr v0, v5

    goto :goto_1a

    .line 158
    :cond_36
    return-object p2
.end method

.method private static reset()V
    .registers 4

    .prologue
    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    .line 118
    sput-wide v2, Lfr/testudo/spacecorsair/mod/ModMonolith;->lastT:J

    .line 119
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModMonolith;->hist:[F

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([FF)V

    .line 120
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModMonolith;->hT:[J

    invoke-static {v0, v2, v3}, Ljava/util/Arrays;->fill([JJ)V

    .line 121
    sput v1, Lfr/testudo/spacecorsair/mod/ModMonolith;->heat:F

    sput v1, Lfr/testudo/spacecorsair/mod/ModMonolith;->vel:F

    sput v1, Lfr/testudo/spacecorsair/mod/ModMonolith;->ang:F

    sput v1, Lfr/testudo/spacecorsair/mod/ModMonolith;->peak:F

    sput v1, Lfr/testudo/spacecorsair/mod/ModMonolith;->held:F

    .line 122
    const-wide/16 v0, -0x1

    sput-wide v0, Lfr/testudo/spacecorsair/mod/ModMonolith;->stoppedSince:J

    .line 123
    return-void
.end method

.method private static shieldFrac(Lfr/testudo/spacecorsair/business/player/PlayerShip;)F
    .registers 5

    .prologue
    const/4 v0, 0x0

    .line 290
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

    .line 291
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

    .line 53
    :try_start_1
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->shipSpec:Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModShips;->hullFor(Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;)Lfr/testudo/spacecorsair/mod/ModShips$Hull;

    move-result-object v0

    .line 54
    if-eqz v0, :cond_13

    const-string v2, "monolith"

    iget-object v0, v0, Lfr/testudo/spacecorsair/mod/ModShips$Hull;->art:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_14

    .line 58
    :cond_13
    :goto_13
    return v1

    .line 55
    :cond_14
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModV35;->currentShip()Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    move-result-object v0

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModV35;->level(Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)I

    move-result v0

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModV35;->stage(I)I
    :try_end_1f
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1f} :catch_27

    move-result v0

    .line 56
    const/4 v2, 0x4

    if-lt v0, v2, :cond_25

    :goto_23
    move v1, v0

    goto :goto_13

    :cond_25
    move v0, v1

    goto :goto_23

    .line 57
    :catch_27
    move-exception v0

    goto :goto_13
.end method

.method private static toScreen(Lfr/testudo/spacecorsair/business/player/PlayerShip;Lfr/testudo/spacecorsair/engine/Vector2;Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;
    .registers 7

    .prologue
    .line 180
    sget-object v0, Lfr/testudo/spacecorsair/engine/GameRenderer;->screenCenter:Lfr/testudo/spacecorsair/engine/Vector2;

    .line 181
    iget v1, p1, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    iget v2, p1, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    invoke-virtual {p2, v1, v2}, Lfr/testudo/spacecorsair/engine/Vector2;->set(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    move-result-object v1

    iget v2, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->spin:F

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lfr/testudo/spacecorsair/engine/Vector2;->applyRotatation(D)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 182
    iget v1, p2, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    iget v2, v0, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    add-float/2addr v1, v2

    iget v2, p2, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    iget v0, v0, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    add-float/2addr v0, v2

    invoke-virtual {p2, v1, v0}, Lfr/testudo/spacecorsair/engine/Vector2;->set(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 183
    return-object p2
.end method

.method public static under(Lfr/testudo/spacecorsair/business/player/PlayerShip;)V
    .registers 27

    .prologue
    .line 228
    :try_start_0
    invoke-static/range {p0 .. p0}, Lfr/testudo/spacecorsair/mod/ModMonolith;->stageOf(Lfr/testudo/spacecorsair/business/player/PlayerShip;)I

    move-result v4

    sput v4, Lfr/testudo/spacecorsair/mod/ModMonolith;->stage:I

    .line 229
    sget v4, Lfr/testudo/spacecorsair/mod/ModMonolith;->stage:I

    if-nez v4, :cond_16

    .line 230
    sget-wide v4, Lfr/testudo/spacecorsair/mod/ModMonolith;->lastT:J

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-eqz v4, :cond_15

    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModMonolith;->reset()V

    .line 287
    :cond_15
    :goto_15
    return-void

    .line 233
    :cond_16
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v24

    .line 234
    move-object/from16 v0, p0

    move-wide/from16 v1, v24

    invoke-static {v0, v1, v2}, Lfr/testudo/spacecorsair/mod/ModMonolith;->update(Lfr/testudo/spacecorsair/business/player/PlayerShip;J)V

    .line 235
    invoke-virtual/range {p0 .. p0}, Lfr/testudo/spacecorsair/business/player/PlayerShip;->getDrawableObject()Lfr/testudo/spacecorsair/display/Drawable;

    move-result-object v4

    .line 236
    if-eqz v4, :cond_15

    iget-object v5, v4, Lfr/testudo/spacecorsair/display/Drawable;->dimensions:Lfr/testudo/spacecorsair/engine/Vector2;

    if-eqz v5, :cond_15

    .line 237
    iget-object v4, v4, Lfr/testudo/spacecorsair/display/Drawable;->dimensions:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v4, v4, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    sput v4, Lfr/testudo/spacecorsair/mod/ModMonolith;->D:F

    .line 238
    const-string v4, "monolith"

    sget v5, Lfr/testudo/spacecorsair/mod/ModMonolith;->stage:I

    invoke-static {v4, v5}, Lfr/testudo/spacecorsair/mod/ModMonolith;->useParts(Ljava/lang/String;I)Z

    move-result v13

    .line 239
    sget v4, Lfr/testudo/spacecorsair/mod/ModMonolith;->stage:I

    const/4 v5, 0x5

    if-ne v4, v5, :cond_156

    const/high16 v4, 0x3f800000    # 1.0f

    move/from16 v23, v4

    .line 240
    :goto_42
    if-eqz v13, :cond_15c

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

    .line 241
    :goto_6b
    const/4 v4, 0x1

    sput-boolean v4, Lfr/testudo/spacecorsair/mod/ModFx;->relative:Z
    :try_end_6e
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_6e} :catch_18d

    .line 244
    :try_start_6e
    invoke-static/range {p0 .. p0}, Lfr/testudo/spacecorsair/mod/ModMonolith;->shieldFrac(Lfr/testudo/spacecorsair/business/player/PlayerShip;)F

    move-result v4

    .line 245
    invoke-static/range {v24 .. v25}, Lfr/testudo/spacecorsair/mod/ModMonolith;->agitation(J)F

    move-result v5

    .line 246
    const/4 v6, 0x0

    cmpl-float v6, v4, v6

    if-lez v6, :cond_186

    .line 247
    sget v6, Lfr/testudo/spacecorsair/mod/ModMonolith;->held:F

    const v7, 0x3e99999a    # 0.3f

    const/high16 v8, 0x3fc00000    # 1.5f

    invoke-static {v5, v8}, Ljava/lang/Math;->min(FF)F

    move-result v8

    mul-float/2addr v7, v8

    add-float/2addr v6, v7

    .line 248
    sget-object v7, Lfr/testudo/spacecorsair/mod/ModMonolith;->AURA_CORE:[[F

    sget-object v8, Lfr/testudo/spacecorsair/mod/ModMonolith;->core:[F

    invoke-static {v7, v6, v8}, Lfr/testudo/spacecorsair/mod/ModMonolith;->ramp([[FF[F)[F

    .line 249
    sget-object v7, Lfr/testudo/spacecorsair/mod/ModMonolith;->AURA_EDGE:[[F

    sget-object v8, Lfr/testudo/spacecorsair/mod/ModMonolith;->edge:[F

    invoke-static {v7, v6, v8}, Lfr/testudo/spacecorsair/mod/ModMonolith;->ramp([[FF[F)[F

    .line 250
    const/high16 v6, 0x3f800000    # 1.0f

    const v7, 0x3ca3d70a    # 0.02f

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

    .line 251
    const/high16 v7, 0x3f800000    # 1.0f

    invoke-static/range {v24 .. v25}, Lfr/testudo/spacecorsair/mod/ModMonolith;->heavyPulse(J)F

    move-result v8

    add-float/2addr v7, v8

    mul-float v7, v7, v23

    const v8, 0x3ecccccd    # 0.4f

    const v9, 0x3f19999a    # 0.6f

    mul-float/2addr v4, v9

    add-float/2addr v4, v8

    mul-float v11, v7, v4

    .line 252
    sget v4, Lfr/testudo/spacecorsair/mod/ModMonolith;->D:F

    const/high16 v7, 0x3fa00000    # 1.25f

    mul-float/2addr v4, v7

    mul-float/2addr v4, v6

    const/high16 v6, 0x3f800000    # 1.0f

    const v7, 0x3d75c28f    # 0.06f

    const/high16 v8, 0x3fc00000    # 1.5f

    invoke-static {v5, v8}, Ljava/lang/Math;->min(FF)F

    move-result v8

    mul-float/2addr v7, v8

    add-float/2addr v6, v7

    mul-float v7, v4, v6

    .line 253
    const/high16 v4, 0x3f800000    # 1.0f

    sget v6, Lfr/testudo/spacecorsair/mod/ModMonolith;->held:F

    const/high16 v8, 0x3e800000    # 0.25f

    const/high16 v9, 0x3fc00000    # 1.5f

    invoke-static {v5, v9}, Ljava/lang/Math;->min(FF)F

    move-result v5

    mul-float/2addr v5, v8

    add-float/2addr v5, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->min(FF)F

    move-result v10

    .line 254
    sget-object v4, Lfr/testudo/spacecorsair/mod/ModMonolith;->c:Lfr/testudo/spacecorsair/engine/Vector2;

    move-object/from16 v0, p0

    move-wide/from16 v1, v24

    invoke-static {v0, v1, v2, v4}, Lfr/testudo/spacecorsair/mod/ModMonolith;->leanOffset(Lfr/testudo/spacecorsair/business/player/PlayerShip;JLfr/testudo/spacecorsair/engine/Vector2;)V

    .line 255
    sget-object v6, Lfr/testudo/spacecorsair/engine/GameRenderer;->screenCenter:Lfr/testudo/spacecorsair/engine/Vector2;

    .line 256
    if-eqz v13, :cond_169

    .line 257
    const-string v4, "mfx_mono_aura_hull"

    iget v5, v6, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    sget-object v8, Lfr/testudo/spacecorsair/mod/ModMonolith;->c:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v8, v8, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    add-float/2addr v5, v8

    iget v6, v6, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    sget-object v8, Lfr/testudo/spacecorsair/mod/ModMonolith;->c:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v8, v8, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    add-float/2addr v6, v8

    move-object/from16 v0, p0

    iget v8, v0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->spin:F

    const/4 v9, 0x0

    invoke-static/range {v4 .. v11}, Lfr/testudo/spacecorsair/mod/ModMonolith;->aura(Ljava/lang/String;FFFFZFF)V

    .line 258
    const/4 v4, 0x0

    move v12, v4

    :goto_114
    const/4 v4, 0x2

    if-ge v12, v4, :cond_186

    .line 259
    if-nez v12, :cond_160

    const/4 v4, 0x1

    move v9, v4

    .line 260
    :goto_11b
    const/high16 v4, 0x44000000    # 512.0f

    const/high16 v5, 0x44000000    # 512.0f

    sget-object v6, Lfr/testudo/spacecorsair/mod/ModMonolith;->a:Lfr/testudo/spacecorsair/engine/Vector2;

    move/from16 v0, v21

    invoke-static {v9, v4, v5, v0, v6}, Lfr/testudo/spacecorsair/mod/ModMonolith;->wingPt(ZFFFLfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 261
    sget-object v4, Lfr/testudo/spacecorsair/mod/ModMonolith;->a:Lfr/testudo/spacecorsair/engine/Vector2;

    sget-object v5, Lfr/testudo/spacecorsair/mod/ModMonolith;->b:Lfr/testudo/spacecorsair/engine/Vector2;

    move-object/from16 v0, p0

    invoke-static {v0, v4, v5}, Lfr/testudo/spacecorsair/mod/ModMonolith;->toScreen(Lfr/testudo/spacecorsair/business/player/PlayerShip;Lfr/testudo/spacecorsair/engine/Vector2;Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 262
    const-string v4, "mfx_mono_aura_wing"

    sget-object v5, Lfr/testudo/spacecorsair/mod/ModMonolith;->b:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v5, v5, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    sget-object v6, Lfr/testudo/spacecorsair/mod/ModMonolith;->c:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v6, v6, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    add-float/2addr v5, v6

    sget-object v6, Lfr/testudo/spacecorsair/mod/ModMonolith;->b:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v6, v6, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    sget-object v8, Lfr/testudo/spacecorsair/mod/ModMonolith;->c:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v8, v8, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    add-float/2addr v6, v8

    move-object/from16 v0, p0

    iget v14, v0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->spin:F

    if-eqz v9, :cond_163

    move/from16 v8, v21

    :goto_14b
    add-float/2addr v8, v14

    if-nez v9, :cond_167

    const/4 v9, 0x1

    :goto_14f
    invoke-static/range {v4 .. v11}, Lfr/testudo/spacecorsair/mod/ModMonolith;->aura(Ljava/lang/String;FFFFZFF)V

    .line 258
    add-int/lit8 v4, v12, 0x1

    move v12, v4

    goto :goto_114

    .line 239
    :cond_156
    const/high16 v4, 0x3f000000    # 0.5f

    move/from16 v23, v4

    goto/16 :goto_42

    .line 240
    :cond_15c
    const/16 v21, 0x0

    goto/16 :goto_6b

    .line 259
    :cond_160
    const/4 v4, 0x0

    move v9, v4

    goto :goto_11b

    .line 262
    :cond_163
    move/from16 v0, v21

    neg-float v8, v0

    goto :goto_14b

    :cond_167
    const/4 v9, 0x0

    goto :goto_14f

    .line 265
    :cond_169
    sget v4, Lfr/testudo/spacecorsair/mod/ModMonolith;->stage:I

    const/4 v5, 0x5

    if-ne v4, v5, :cond_193

    const-string v4, "mfx_mono_aura_hull"

    :goto_170
    iget v5, v6, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    sget-object v8, Lfr/testudo/spacecorsair/mod/ModMonolith;->c:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v8, v8, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    add-float/2addr v5, v8

    iget v6, v6, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    sget-object v8, Lfr/testudo/spacecorsair/mod/ModMonolith;->c:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v8, v8, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    add-float/2addr v6, v8

    move-object/from16 v0, p0

    iget v8, v0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->spin:F

    const/4 v9, 0x0

    invoke-static/range {v4 .. v11}, Lfr/testudo/spacecorsair/mod/ModMonolith;->aura(Ljava/lang/String;FFFFZFF)V
    :try_end_186
    .catchall {:try_start_6e .. :try_end_186} :catchall_279

    .line 268
    :cond_186
    if-nez v13, :cond_196

    .line 282
    const/4 v4, 0x0

    :try_start_189
    sput-boolean v4, Lfr/testudo/spacecorsair/mod/ModFx;->relative:Z
    :try_end_18b
    .catch Ljava/lang/Throwable; {:try_start_189 .. :try_end_18b} :catch_18d

    goto/16 :goto_15

    .line 284
    :catch_18d
    move-exception v4

    .line 285
    const/4 v4, 0x0

    sput-boolean v4, Lfr/testudo/spacecorsair/mod/ModFx;->relative:Z

    goto/16 :goto_15

    .line 265
    :cond_193
    :try_start_193
    const-string v4, "mfx_mono_aura_s4"

    goto :goto_170

    .line 269
    :cond_196
    const/4 v4, 0x1

    move-object/from16 v0, p0

    move-wide/from16 v1, v24

    move/from16 v3, v21

    invoke-static {v0, v1, v2, v3, v4}, Lfr/testudo/spacecorsair/mod/ModMonolith;->plasma(Lfr/testudo/spacecorsair/business/player/PlayerShip;JFZ)V

    .line 271
    const/4 v4, 0x0

    move/from16 v22, v4

    :goto_1a3
    const/4 v4, 0x2

    move/from16 v0, v22

    if-ge v0, v4, :cond_274

    .line 272
    if-nez v22, :cond_267

    const/4 v4, 0x1

    move v5, v4

    .line 273
    :goto_1ac
    if-eqz v5, :cond_26b

    const-string v4, "monolith_stage5_wingL"

    .line 274
    :goto_1b0
    const/high16 v6, 0x44000000    # 512.0f

    const/high16 v7, 0x44000000    # 512.0f

    sget-object v8, Lfr/testudo/spacecorsair/mod/ModMonolith;->a:Lfr/testudo/spacecorsair/engine/Vector2;

    move/from16 v0, v21

    invoke-static {v5, v6, v7, v0, v8}, Lfr/testudo/spacecorsair/mod/ModMonolith;->wingPt(ZFFFLfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 275
    sget-object v6, Lfr/testudo/spacecorsair/mod/ModMonolith;->a:Lfr/testudo/spacecorsair/engine/Vector2;

    sget-object v7, Lfr/testudo/spacecorsair/mod/ModMonolith;->b:Lfr/testudo/spacecorsair/engine/Vector2;

    move-object/from16 v0, p0

    invoke-static {v0, v6, v7}, Lfr/testudo/spacecorsair/mod/ModMonolith;->toScreen(Lfr/testudo/spacecorsair/business/player/PlayerShip;Lfr/testudo/spacecorsair/engine/Vector2;Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 276
    move-object/from16 v0, p0

    iget v6, v0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->spin:F

    if-eqz v5, :cond_26f

    move/from16 v5, v21

    :goto_1cc
    add-float v9, v6, v5

    .line 277
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

    .line 278
    sget v5, Lfr/testudo/spacecorsair/mod/ModMonolith;->heat:F

    const v6, 0x3ca3d70a    # 0.02f

    cmpl-float v5, v5, v6

    if-lez v5, :cond_21e

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

    .line 279
    :cond_21e
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

    .line 271
    add-int/lit8 v4, v22, 0x1

    move/from16 v22, v4

    goto/16 :goto_1a3

    .line 272
    :cond_267
    const/4 v4, 0x0

    move v5, v4

    goto/16 :goto_1ac

    .line 273
    :cond_26b
    const-string v4, "monolith_stage5_wingR"
    :try_end_26d
    .catchall {:try_start_193 .. :try_end_26d} :catchall_279

    goto/16 :goto_1b0

    .line 276
    :cond_26f
    move/from16 v0, v21

    neg-float v5, v0

    goto/16 :goto_1cc

    .line 282
    :cond_274
    const/4 v4, 0x0

    :try_start_275
    sput-boolean v4, Lfr/testudo/spacecorsair/mod/ModFx;->relative:Z

    goto/16 :goto_15

    :catchall_279
    move-exception v4

    const/4 v5, 0x0

    sput-boolean v5, Lfr/testudo/spacecorsair/mod/ModFx;->relative:Z

    .line 283
    throw v4
    :try_end_27e
    .catch Ljava/lang/Throwable; {:try_start_275 .. :try_end_27e} :catch_18d
.end method

.method private static update(Lfr/testudo/spacecorsair/business/player/PlayerShip;J)V
    .registers 12

    .prologue
    .line 74
    sget-wide v0, Lfr/testudo/spacecorsair/mod/ModMonolith;->lastT:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_a5

    const v0, 0x3c83126f    # 0.016f

    .line 75
    :goto_b
    sput-wide p1, Lfr/testudo/spacecorsair/mod/ModMonolith;->lastT:J

    .line 76
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

    .line 78
    iget-boolean v2, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->isBoosterEnabled:Z

    if-nez v2, :cond_58

    .line 79
    const/high16 v2, 0x3f000000    # 0.5f

    sget v3, Lfr/testudo/spacecorsair/mod/ModMonolith;->vmax:F

    mul-float/2addr v2, v3

    cmpl-float v2, v1, v2

    if-lez v2, :cond_3f

    sget v2, Lfr/testudo/spacecorsair/mod/ModMonolith;->vmax:F

    const/high16 v3, 0x3f800000    # 1.0f

    const v4, 0x3ca3d70a    # 0.02f

    mul-float/2addr v4, v0

    sub-float/2addr v3, v4

    mul-float/2addr v2, v3

    sput v2, Lfr/testudo/spacecorsair/mod/ModMonolith;->vmax:F

    .line 80
    :cond_3f
    sget v2, Lfr/testudo/spacecorsair/mod/ModMonolith;->vmax:F

    invoke-static {v2, v1}, Ljava/lang/Math;->max(FF)F

    move-result v2

    const/high16 v3, 0x3f000000    # 0.5f

    sget v4, Lfr/testudo/spacecorsair/mod/ModMonolith;->vbest:F

    mul-float/2addr v3, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v2

    sput v2, Lfr/testudo/spacecorsair/mod/ModMonolith;->vmax:F

    .line 81
    sget v2, Lfr/testudo/spacecorsair/mod/ModMonolith;->vbest:F

    invoke-static {v2, v1}, Ljava/lang/Math;->max(FF)F

    move-result v2

    sput v2, Lfr/testudo/spacecorsair/mod/ModMonolith;->vbest:F

    .line 83
    :cond_58
    const/high16 v2, 0x3f800000    # 1.0f

    sget v3, Lfr/testudo/spacecorsair/mod/ModMonolith;->vmax:F

    const v4, 0x3a83126f    # 0.001f

    invoke-static {v3, v4}, Ljava/lang/Math;->max(FF)F

    move-result v3

    div-float/2addr v1, v3

    invoke-static {v2, v1}, Ljava/lang/Math;->min(FF)F

    move-result v3

    .line 84
    sget-wide v4, Lfr/testudo/spacecorsair/mod/ModMonolith;->histT:J

    sub-long v4, p1, v4

    const-wide/16 v6, 0x64

    cmp-long v1, v4, v6

    if-ltz v1, :cond_85

    .line 85
    sput-wide p1, Lfr/testudo/spacecorsair/mod/ModMonolith;->histT:J

    .line 86
    sget v1, Lfr/testudo/spacecorsair/mod/ModMonolith;->histPos:I

    add-int/lit8 v1, v1, 0x1

    sget-object v2, Lfr/testudo/spacecorsair/mod/ModMonolith;->hist:[F

    array-length v2, v2

    rem-int/2addr v1, v2

    sput v1, Lfr/testudo/spacecorsair/mod/ModMonolith;->histPos:I

    .line 87
    sget-object v1, Lfr/testudo/spacecorsair/mod/ModMonolith;->hist:[F

    sget v2, Lfr/testudo/spacecorsair/mod/ModMonolith;->histPos:I

    const/4 v4, 0x0

    aput v4, v1, v2

    .line 89
    :cond_85
    sget-object v1, Lfr/testudo/spacecorsair/mod/ModMonolith;->hist:[F

    sget v2, Lfr/testudo/spacecorsair/mod/ModMonolith;->histPos:I

    sget-object v4, Lfr/testudo/spacecorsair/mod/ModMonolith;->hist:[F

    sget v5, Lfr/testudo/spacecorsair/mod/ModMonolith;->histPos:I

    aget v4, v4, v5

    invoke-static {v4, v3}, Ljava/lang/Math;->max(FF)F

    move-result v4

    aput v4, v1, v2

    .line 90
    const/4 v2, 0x0

    .line 91
    sget-object v4, Lfr/testudo/spacecorsair/mod/ModMonolith;->hist:[F

    array-length v5, v4

    const/4 v1, 0x0

    :goto_9a
    if-ge v1, v5, :cond_bb

    aget v6, v4, v1

    invoke-static {v2, v6}, Ljava/lang/Math;->max(FF)F

    move-result v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_9a

    .line 74
    :cond_a5
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

    .line 92
    :cond_bb
    sput v2, Lfr/testudo/spacecorsair/mod/ModMonolith;->held:F

    .line 93
    const v1, 0x3ca3d70a    # 0.02f

    cmpg-float v1, v3, v1

    if-gez v1, :cond_16b

    .line 94
    sget-wide v2, Lfr/testudo/spacecorsair/mod/ModMonolith;->stoppedSince:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-gez v1, :cond_ce

    sput-wide p1, Lfr/testudo/spacecorsair/mod/ModMonolith;->stoppedSince:J

    .line 98
    :cond_ce
    :goto_ce
    sget-wide v2, Lfr/testudo/spacecorsair/mod/ModMonolith;->stoppedSince:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-ltz v1, :cond_171

    sget-wide v2, Lfr/testudo/spacecorsair/mod/ModMonolith;->stoppedSince:J

    sub-long v2, p1, v2

    long-to-float v1, v2

    const v2, 0x451c4000    # 2500.0f

    cmpl-float v1, v1, v2

    if-ltz v1, :cond_171

    const/4 v1, 0x0

    :goto_e3
    sput v1, Lfr/testudo/spacecorsair/mod/ModMonolith;->peak:F

    .line 99
    const/high16 v1, 0x41400000    # 12.0f

    mul-float/2addr v1, v0

    .line 100
    sget v2, Lfr/testudo/spacecorsair/mod/ModMonolith;->stage:I

    const/4 v3, 0x5

    if-ne v2, v3, :cond_17b

    .line 101
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

    .line 102
    sget v3, Lfr/testudo/spacecorsair/mod/ModMonolith;->vel:F

    sget v4, Lfr/testudo/spacecorsair/mod/ModMonolith;->ang:F

    sub-float/2addr v2, v4

    const v4, 0x3e3851ec    # 0.18f

    mul-float/2addr v2, v4

    mul-float/2addr v2, v1

    mul-float/2addr v2, v1

    add-float/2addr v2, v3

    sput v2, Lfr/testudo/spacecorsair/mod/ModMonolith;->vel:F

    .line 103
    sget v2, Lfr/testudo/spacecorsair/mod/ModMonolith;->vel:F

    const-wide v4, 0x3fe70a3d70a3d70aL    # 0.72

    float-to-double v6, v1

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    double-to-float v3, v4

    mul-float/2addr v2, v3

    sput v2, Lfr/testudo/spacecorsair/mod/ModMonolith;->vel:F

    .line 104
    sget v2, Lfr/testudo/spacecorsair/mod/ModMonolith;->ang:F

    sget v3, Lfr/testudo/spacecorsair/mod/ModMonolith;->vel:F

    add-float/2addr v2, v3

    sput v2, Lfr/testudo/spacecorsair/mod/ModMonolith;->ang:F

    .line 105
    const/high16 v2, -0x3f600000    # -5.0f

    const/high16 v3, 0x42b80000    # 92.0f

    sget v4, Lfr/testudo/spacecorsair/mod/ModMonolith;->ang:F

    invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v2

    sput v2, Lfr/testudo/spacecorsair/mod/ModMonolith;->ang:F

    .line 110
    :goto_13c
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

    .line 111
    invoke-static {p1, p2}, Lfr/testudo/spacecorsair/mod/ModMonolith;->agitation(J)F

    move-result v1

    .line 112
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

    .line 113
    sget v1, Lfr/testudo/spacecorsair/mod/ModMonolith;->flapT:F

    add-float/2addr v0, v1

    sput v0, Lfr/testudo/spacecorsair/mod/ModMonolith;->flapT:F

    .line 114
    return-void

    .line 96
    :cond_16b
    const-wide/16 v2, -0x1

    sput-wide v2, Lfr/testudo/spacecorsair/mod/ModMonolith;->stoppedSince:J

    goto/16 :goto_ce

    .line 98
    :cond_171
    sget v1, Lfr/testudo/spacecorsair/mod/ModMonolith;->peak:F

    sget v2, Lfr/testudo/spacecorsair/mod/ModMonolith;->held:F

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    goto/16 :goto_e3

    .line 107
    :cond_17b
    const/4 v2, 0x0

    sput v2, Lfr/testudo/spacecorsair/mod/ModMonolith;->ang:F

    .line 108
    const/4 v2, 0x0

    sput v2, Lfr/testudo/spacecorsair/mod/ModMonolith;->vel:F

    goto :goto_13c
.end method

.method static useParts(Ljava/lang/String;I)Z
    .registers 3

    .prologue
    .line 69
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
    .line 172
    if-eqz p0, :cond_34

    const v0, 0x43a1d99a    # 323.7f

    move v2, v0

    :goto_6
    const v3, 0x43958ccd    # 299.1f

    .line 173
    if-nez p0, :cond_10

    const v0, 0x447fc000    # 1023.0f

    sub-float p1, v0, p1

    .line 174
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

    .line 175
    iget v0, p4, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    add-float/2addr v0, v2

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModMonolith;->lx(F)F

    move-result v0

    iget v1, p4, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    add-float/2addr v1, v3

    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModMonolith;->lx(F)F

    move-result v1

    invoke-virtual {p4, v0, v1}, Lfr/testudo/spacecorsair/engine/Vector2;->set(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 176
    return-object p4

    .line 172
    :cond_34
    const v0, 0x442ed333    # 699.3f

    move v2, v0

    goto :goto_6

    .line 174
    :cond_39
    neg-float v0, p3

    float-to-double v0, v0

    goto :goto_1b
.end method
