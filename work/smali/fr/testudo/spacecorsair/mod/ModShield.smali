.class public final Lfr/testudo/spacecorsair/mod/ModShield;
.super Ljava/lang/Object;
.source "ModShield.java"


# static fields
.field static final BUBBLE:F = 1.1f

.field private static final DIM_ORDER:[I

.field static final FIZZLE_MS:J = 0x2bcL

.field static final HIT_MS:J = 0x208L

.field private static final PULSE:Lfr/testudo/spacecorsair/mod/ModFx$Sprite;

.field private static final PULSE2:Lfr/testudo/spacecorsair/mod/ModFx$Sprite;

.field static final REBOOT_MS:I = 0x514

.field static final RING_FRACTION:F = 0.9003906f

.field private static final RIP:[Lfr/testudo/spacecorsair/mod/ModFx$Sprite;

.field private static final SEG:[Lfr/testudo/spacecorsair/mod/ModFx$Sprite;

.field static final SEGMENTS:I = 0xc

.field static final SLOW:F = 0.5f

.field private static final SPUT:[Lfr/testudo/spacecorsair/mod/ModFx$Sprite;

.field private static final at:Lfr/testudo/spacecorsair/engine/Vector2;

.field private static fNoRegen:Ljava/lang/reflect/Field;

.field private static fRemaining:Ljava/lang/reflect/Field;

.field private static fizzleAt:J

.field private static hidden:Lfr/testudo/spacecorsair/display/Drawable;

.field private static last:F

.field private static lastFlash:I

.field private static lastShield:Lfr/testudo/spacecorsair/business/player/Shield;

.field private static logMs:J

.field private static final off:Lfr/testudo/spacecorsair/engine/Vector2;

.field private static rebootLeft:J

.field private static reflectFailed:Z

.field private static regen:Z

.field private static final ripAng:[F

.field private static final ripAt:[J

.field private static ripNext:I

.field private static slow:Z

.field private static stockTex:Lfr/testudo/spacecorsair/display/Texture;

.field private static testMs:J

.field private static testWas:Z

.field private static used:I


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .prologue
    const/16 v5, 0xc

    const/4 v2, 0x4

    const/4 v1, 0x0

    const/4 v4, 0x1

    .line 38
    const/high16 v0, -0x40800000    # -1.0f

    sput v0, Lfr/testudo/spacecorsair/mod/ModShield;->last:F

    .line 206
    new-array v0, v5, [I

    fill-array-data v0, :array_8e

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModShield;->DIM_ORDER:[I

    .line 207
    new-array v0, v5, [Lfr/testudo/spacecorsair/mod/ModFx$Sprite;

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModShield;->SEG:[Lfr/testudo/spacecorsair/mod/ModFx$Sprite;

    .line 208
    new-instance v0, Lfr/testudo/spacecorsair/mod/ModFx$Sprite;

    invoke-direct {v0}, Lfr/testudo/spacecorsair/mod/ModFx$Sprite;-><init>()V

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModShield;->PULSE:Lfr/testudo/spacecorsair/mod/ModFx$Sprite;

    new-instance v0, Lfr/testudo/spacecorsair/mod/ModFx$Sprite;

    invoke-direct {v0}, Lfr/testudo/spacecorsair/mod/ModFx$Sprite;-><init>()V

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModShield;->PULSE2:Lfr/testudo/spacecorsair/mod/ModFx$Sprite;

    .line 209
    new-array v0, v2, [Lfr/testudo/spacecorsair/mod/ModFx$Sprite;

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModShield;->RIP:[Lfr/testudo/spacecorsair/mod/ModFx$Sprite;

    const/4 v0, 0x6

    new-array v0, v0, [Lfr/testudo/spacecorsair/mod/ModFx$Sprite;

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModShield;->SPUT:[Lfr/testudo/spacecorsair/mod/ModFx$Sprite;

    .line 210
    new-array v0, v2, [F

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModShield;->ripAng:[F

    .line 211
    new-array v0, v2, [J

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModShield;->ripAt:[J

    .line 213
    new-instance v0, Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-direct {v0}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>()V

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModShield;->at:Lfr/testudo/spacecorsair/engine/Vector2;

    move v0, v1

    .line 215
    :goto_3b
    if-ge v0, v5, :cond_4f

    sget-object v2, Lfr/testudo/spacecorsair/mod/ModShield;->SEG:[Lfr/testudo/spacecorsair/mod/ModFx$Sprite;

    new-instance v3, Lfr/testudo/spacecorsair/mod/ModFx$Sprite;

    invoke-direct {v3}, Lfr/testudo/spacecorsair/mod/ModFx$Sprite;-><init>()V

    aput-object v3, v2, v0

    sget-object v2, Lfr/testudo/spacecorsair/mod/ModShield;->SEG:[Lfr/testudo/spacecorsair/mod/ModFx$Sprite;

    aget-object v2, v2, v0

    iput-boolean v4, v2, Lfr/testudo/spacecorsair/mod/ModFx$Sprite;->additive:Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_3b

    :cond_4f
    move v0, v1

    .line 216
    :goto_50
    sget-object v2, Lfr/testudo/spacecorsair/mod/ModShield;->RIP:[Lfr/testudo/spacecorsair/mod/ModFx$Sprite;

    array-length v2, v2

    if-ge v0, v2, :cond_67

    sget-object v2, Lfr/testudo/spacecorsair/mod/ModShield;->RIP:[Lfr/testudo/spacecorsair/mod/ModFx$Sprite;

    new-instance v3, Lfr/testudo/spacecorsair/mod/ModFx$Sprite;

    invoke-direct {v3}, Lfr/testudo/spacecorsair/mod/ModFx$Sprite;-><init>()V

    aput-object v3, v2, v0

    sget-object v2, Lfr/testudo/spacecorsair/mod/ModShield;->RIP:[Lfr/testudo/spacecorsair/mod/ModFx$Sprite;

    aget-object v2, v2, v0

    iput-boolean v4, v2, Lfr/testudo/spacecorsair/mod/ModFx$Sprite;->additive:Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_50

    .line 217
    :cond_67
    :goto_67
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModShield;->SPUT:[Lfr/testudo/spacecorsair/mod/ModFx$Sprite;

    array-length v0, v0

    if-ge v1, v0, :cond_7e

    sget-object v0, Lfr/testudo/spacecorsair/mod/ModShield;->SPUT:[Lfr/testudo/spacecorsair/mod/ModFx$Sprite;

    new-instance v2, Lfr/testudo/spacecorsair/mod/ModFx$Sprite;

    invoke-direct {v2}, Lfr/testudo/spacecorsair/mod/ModFx$Sprite;-><init>()V

    aput-object v2, v0, v1

    sget-object v0, Lfr/testudo/spacecorsair/mod/ModShield;->SPUT:[Lfr/testudo/spacecorsair/mod/ModFx$Sprite;

    aget-object v0, v0, v1

    iput-boolean v4, v0, Lfr/testudo/spacecorsair/mod/ModFx$Sprite;->additive:Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_67

    .line 218
    :cond_7e
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModShield;->PULSE:Lfr/testudo/spacecorsair/mod/ModFx$Sprite;

    iput-boolean v4, v0, Lfr/testudo/spacecorsair/mod/ModFx$Sprite;->additive:Z

    .line 219
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModShield;->PULSE2:Lfr/testudo/spacecorsair/mod/ModFx$Sprite;

    iput-boolean v4, v0, Lfr/testudo/spacecorsair/mod/ModFx$Sprite;->additive:Z

    .line 256
    new-instance v0, Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-direct {v0}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>()V

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModShield;->off:Lfr/testudo/spacecorsair/engine/Vector2;

    return-void

    .line 206
    :array_8e
    .array-data 4
        0x6
        0x5
        0x7
        0x4
        0x8
        0x3
        0x9
        0x2
        0xa
        0x1
        0xb
        0x0
    .end array-data
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static allowed(Lfr/testudo/spacecorsair/business/player/PlayerShip;)I
    .registers 3

    .prologue
    .line 112
    iget v0, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->maxLife:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_14

    iget v0, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->life:F

    iget v1, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->maxLife:F

    div-float/2addr v0, v1

    const/high16 v1, 0x3f000000    # 0.5f

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_14

    const/4 v0, 0x2

    :goto_13
    return v0

    :cond_14
    const/4 v0, 0x1

    goto :goto_13
.end method

.method static curve(F)F
    .registers 6

    .prologue
    const/high16 v4, 0x3f000000    # 0.5f

    const/high16 v0, 0x3f800000    # 1.0f

    const/high16 v3, 0x3f400000    # 0.75f

    const/high16 v2, 0x3e800000    # 0.25f

    .line 71
    cmpg-float v1, p0, v2

    if-gtz v1, :cond_d

    .line 74
    :goto_c
    return v0

    .line 72
    :cond_d
    cmpg-float v1, p0, v4

    if-gtz v1, :cond_16

    sub-float v1, p0, v2

    mul-float/2addr v1, v0

    sub-float/2addr v0, v1

    goto :goto_c

    .line 73
    :cond_16
    cmpg-float v0, p0, v3

    if-gtz v0, :cond_23

    sub-float v0, p0, v4

    const v1, 0x3f4ccccd    # 0.8f

    mul-float/2addr v0, v1

    sub-float v0, v3, v0

    goto :goto_c

    .line 74
    :cond_23
    const v0, 0x3f0ccccd    # 0.55f

    sub-float v1, p0, v3

    invoke-static {v2, v1}, Ljava/lang/Math;->min(FF)F

    move-result v1

    const v2, 0x3f19999a    # 0.6f

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    goto :goto_c
.end method

.method static draw(Lfr/testudo/spacecorsair/business/player/PlayerShip;)V
    .registers 4

    .prologue
    .line 344
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->shield:Lfr/testudo/spacecorsair/business/player/Shield;

    .line 345
    if-eqz v0, :cond_e

    iget v1, v0, Lfr/testudo/spacecorsair/business/player/Shield;->capacity:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-lez v1, :cond_e

    invoke-static {p0, v0}, Lfr/testudo/spacecorsair/mod/ModShield;->drawShell(Lfr/testudo/spacecorsair/business/player/PlayerShip;Lfr/testudo/spacecorsair/business/player/Shield;)V

    .line 346
    :cond_e
    return-void
.end method

.method private static drawShell(Lfr/testudo/spacecorsair/business/player/PlayerShip;Lfr/testudo/spacecorsair/business/player/Shield;)V
    .registers 32

    .prologue
    .line 275
    sget-object v2, Lfr/testudo/spacecorsair/mod/ModShield;->hidden:Lfr/testudo/spacecorsair/display/Drawable;

    if-eqz v2, :cond_a

    sget-object v2, Lfr/testudo/spacecorsair/mod/ModShield;->hidden:Lfr/testudo/spacecorsair/display/Drawable;

    sget-object v3, Lfr/testudo/spacecorsair/business/player/PlayerShip;->shieldDrawable:Lfr/testudo/spacecorsair/display/Drawable;

    if-eq v2, v3, :cond_b

    .line 340
    :cond_a
    return-void

    .line 276
    :cond_b
    sget-object v2, Lfr/testudo/spacecorsair/business/player/PlayerShip;->shieldDimension:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v0, v2, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    move/from16 v25, v0

    .line 277
    const v2, 0x3f668000

    div-float v4, v25, v2

    const/high16 v2, 0x3f000000    # 0.5f

    mul-float v26, v25, v2

    .line 278
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v28

    .line 279
    move-object/from16 v0, p0

    iget v3, v0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->shieldFlash:I

    .line 280
    sput v3, Lfr/testudo/spacecorsair/mod/ModShield;->lastFlash:I

    .line 281
    const/high16 v2, 0x3e800000    # 0.25f

    move-object/from16 v0, p1

    iget v5, v0, Lfr/testudo/spacecorsair/business/player/Shield;->r:F

    invoke-static {v2, v5}, Ljava/lang/Math;->max(FF)F

    move-result v7

    const/high16 v2, 0x3e800000    # 0.25f

    move-object/from16 v0, p1

    iget v5, v0, Lfr/testudo/spacecorsair/business/player/Shield;->g:F

    invoke-static {v2, v5}, Ljava/lang/Math;->max(FF)F

    move-result v8

    const/high16 v2, 0x3e800000    # 0.25f

    move-object/from16 v0, p1

    iget v5, v0, Lfr/testudo/spacecorsair/business/player/Shield;->b:F

    invoke-static {v2, v5}, Ljava/lang/Math;->max(FF)F

    move-result v9

    .line 282
    move-object/from16 v0, p1

    iget v2, v0, Lfr/testudo/spacecorsair/business/player/Shield;->capacity:F

    const/4 v5, 0x0

    cmpl-float v2, v2, v5

    if-lez v2, :cond_12f

    const/4 v2, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    move-object/from16 v0, p1

    iget v6, v0, Lfr/testudo/spacecorsair/business/player/Shield;->currentValue:F

    move-object/from16 v0, p1

    iget v10, v0, Lfr/testudo/spacecorsair/business/player/Shield;->capacity:F

    div-float/2addr v6, v10

    invoke-static {v5, v6}, Ljava/lang/Math;->min(FF)F

    move-result v5

    invoke-static {v2, v5}, Ljava/lang/Math;->max(FF)F

    move-result v2

    move/from16 v24, v2

    .line 283
    :goto_61
    if-lez v3, :cond_134

    const/high16 v2, 0x3f800000    # 1.0f

    int-to-float v3, v3

    const/high16 v5, 0x43c80000    # 400.0f

    div-float/2addr v3, v5

    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v2

    .line 284
    :goto_6d
    sget-wide v10, Lfr/testudo/spacecorsair/mod/ModShield;->rebootLeft:J

    const-wide/16 v12, 0x0

    cmp-long v3, v10, v12

    if-lez v3, :cond_137

    const/4 v3, 0x1

    move/from16 v22, v3

    .line 285
    :goto_78
    sget-boolean v3, Lfr/testudo/spacecorsair/mod/ModShield;->regen:Z

    if-eqz v3, :cond_13c

    const v3, 0x3f7fbe77    # 0.999f

    cmpg-float v3, v24, v3

    if-gez v3, :cond_13c

    const/4 v3, 0x1

    move v13, v3

    .line 287
    :goto_85
    const v5, 0x3ea3d70a    # 0.32f

    if-eqz v13, :cond_140

    const v3, 0x3e4ccccd    # 0.2f

    :goto_8d
    add-float/2addr v3, v5

    const v5, 0x3ecccccd    # 0.4f

    mul-float/2addr v2, v5

    add-float v14, v3, v2

    .line 288
    const/4 v2, 0x0

    cmpl-float v2, v24, v2

    if-lez v2, :cond_143

    const/high16 v2, 0x3e800000    # 0.25f

    cmpg-float v2, v24, v2

    if-gez v2, :cond_143

    const/4 v2, 0x1

    move/from16 v23, v2

    .line 289
    :goto_a2
    const/high16 v2, 0x41400000    # 12.0f

    mul-float v15, v24, v2

    .line 290
    const/4 v2, 0x0

    move v12, v2

    :goto_a8
    const/16 v2, 0xc

    if-ge v12, v2, :cond_14e

    .line 291
    sget-object v2, Lfr/testudo/spacecorsair/mod/ModShield;->DIM_ORDER:[I

    aget v5, v2, v12

    .line 292
    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    rsub-int/lit8 v6, v12, 0xb

    int-to-float v6, v6

    sub-float v6, v15, v6

    invoke-static {v3, v6}, Ljava/lang/Math;->min(FF)F

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v2

    .line 293
    const v3, 0x3d75c28f    # 0.06f

    const v6, 0x3f70a3d7    # 0.94f

    mul-float/2addr v2, v6

    add-float/2addr v2, v3

    mul-float v6, v14, v2

    .line 294
    if-eqz v23, :cond_da

    const v2, 0x3f0ccccd    # 0.55f

    const v3, 0x3ee66666    # 0.45f

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v10

    double-to-float v10, v10

    mul-float/2addr v3, v10

    add-float/2addr v2, v3

    mul-float/2addr v6, v2

    .line 295
    :cond_da
    if-eqz v22, :cond_f2

    .line 296
    const/high16 v2, 0x3f800000    # 1.0f

    sget-wide v10, Lfr/testudo/spacecorsair/mod/ModShield;->rebootLeft:J

    long-to-float v3, v10

    const v6, 0x44a28000    # 1300.0f

    div-float/2addr v3, v6

    sub-float/2addr v2, v3

    .line 297
    int-to-float v3, v5

    const/high16 v6, 0x41400000    # 12.0f

    div-float/2addr v3, v6

    cmpg-float v2, v3, v2

    if-gez v2, :cond_148

    const v2, 0x3ee66666    # 0.45f

    :goto_f1
    move v6, v2

    .line 299
    :cond_f2
    const/4 v2, 0x0

    cmpg-float v2, v24, v2

    if-gtz v2, :cond_116

    if-nez v22, :cond_116

    .line 300
    sget-wide v2, Lfr/testudo/spacecorsair/mod/ModShield;->fizzleAt:J

    sub-long v2, v28, v2

    .line 301
    const-wide/16 v10, 0x2bc

    cmp-long v6, v2, v10

    if-gez v6, :cond_14c

    const v6, 0x3f19999a    # 0.6f

    const/high16 v10, 0x3f800000    # 1.0f

    long-to-float v2, v2

    const/high16 v3, 0x442f0000    # 700.0f

    div-float/2addr v2, v3

    sub-float v2, v10, v2

    mul-float/2addr v2, v6

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v10

    double-to-float v3, v10

    mul-float/2addr v2, v3

    :goto_115
    move v6, v2

    .line 303
    :cond_116
    sget-object v2, Lfr/testudo/spacecorsair/mod/ModShield;->SEG:[Lfr/testudo/spacecorsair/mod/ModFx$Sprite;

    aget-object v2, v2, v5

    const-string v3, "shield_segment"

    move-object/from16 v0, p0

    iget v10, v0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->spin:F

    int-to-float v5, v5

    const/high16 v11, 0x41f00000    # 30.0f

    mul-float/2addr v5, v11

    add-float/2addr v5, v10

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-static/range {v2 .. v11}, Lfr/testudo/spacecorsair/mod/ModShield;->q(Lfr/testudo/spacecorsair/mod/ModFx$Sprite;Ljava/lang/String;FFFFFFFF)V

    .line 290
    add-int/lit8 v2, v12, 0x1

    move v12, v2

    goto/16 :goto_a8

    .line 282
    :cond_12f
    const/4 v2, 0x0

    move/from16 v24, v2

    goto/16 :goto_61

    .line 283
    :cond_134
    const/4 v2, 0x0

    goto/16 :goto_6d

    .line 284
    :cond_137
    const/4 v3, 0x0

    move/from16 v22, v3

    goto/16 :goto_78

    .line 285
    :cond_13c
    const/4 v3, 0x0

    move v13, v3

    goto/16 :goto_85

    .line 287
    :cond_140
    const/4 v3, 0x0

    goto/16 :goto_8d

    .line 288
    :cond_143
    const/4 v2, 0x0

    move/from16 v23, v2

    goto/16 :goto_a2

    .line 297
    :cond_148
    const v2, 0x3cf5c28f    # 0.03f

    goto :goto_f1

    .line 301
    :cond_14c
    const/4 v2, 0x0

    goto :goto_115

    .line 306
    :cond_14e
    if-nez v22, :cond_152

    if-eqz v13, :cond_1ac

    .line 307
    :cond_152
    if-eqz v22, :cond_1ce

    const v2, 0x44a28000    # 1300.0f

    .line 308
    :goto_157
    if-eqz v22, :cond_1d1

    const/high16 v2, 0x3f800000    # 1.0f

    sget-wide v4, Lfr/testudo/spacecorsair/mod/ModShield;->rebootLeft:J

    long-to-float v3, v4

    const v4, 0x44a28000    # 1300.0f

    div-float/2addr v3, v4

    sub-float/2addr v2, v3

    .line 309
    :goto_163
    move-object/from16 v0, p0

    iget v3, v0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->spin:F

    const/high16 v4, 0x43b40000    # 360.0f

    mul-float/2addr v2, v4

    add-float v5, v3, v2

    .line 310
    move/from16 v0, v26

    invoke-static {v5, v0}, Lfr/testudo/spacecorsair/mod/ModShield;->rim(FF)V

    .line 311
    sget-object v2, Lfr/testudo/spacecorsair/mod/ModShield;->off:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v10, v2, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    sget-object v2, Lfr/testudo/spacecorsair/mod/ModShield;->off:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v11, v2, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    .line 312
    const/high16 v2, 0x42700000    # 60.0f

    const v3, 0x3ed70a3d    # 0.42f

    mul-float v3, v3, v25

    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v4

    .line 313
    sget-object v2, Lfr/testudo/spacecorsair/mod/ModShield;->PULSE:Lfr/testudo/spacecorsair/mod/ModFx$Sprite;

    const-string v3, "shield_pulse"

    if-eqz v22, :cond_1d8

    const v6, 0x3f733333    # 0.95f

    :goto_18d
    invoke-static/range {v2 .. v11}, Lfr/testudo/spacecorsair/mod/ModShield;->q(Lfr/testudo/spacecorsair/mod/ModFx$Sprite;Ljava/lang/String;FFFFFFFF)V

    .line 314
    if-eqz v22, :cond_1ac

    sget-object v12, Lfr/testudo/spacecorsair/mod/ModShield;->PULSE2:Lfr/testudo/spacecorsair/mod/ModFx$Sprite;

    const-string v13, "shield_pulse"

    const v2, 0x3f19999a    # 0.6f

    mul-float v14, v4, v2

    const v16, 0x3f666666    # 0.9f

    const/high16 v17, 0x3f800000    # 1.0f

    const/high16 v18, 0x3f800000    # 1.0f

    const/high16 v19, 0x3f800000    # 1.0f

    move v15, v5

    move/from16 v20, v10

    move/from16 v21, v11

    invoke-static/range {v12 .. v21}, Lfr/testudo/spacecorsair/mod/ModShield;->q(Lfr/testudo/spacecorsair/mod/ModFx$Sprite;Ljava/lang/String;FFFFFFFF)V

    .line 317
    :cond_1ac
    const/4 v2, 0x0

    move v12, v2

    :goto_1ae
    sget-object v2, Lfr/testudo/spacecorsair/mod/ModShield;->RIP:[Lfr/testudo/spacecorsair/mod/ModFx$Sprite;

    array-length v2, v2

    if-ge v12, v2, :cond_219

    .line 318
    sget-object v2, Lfr/testudo/spacecorsair/mod/ModShield;->ripAt:[J

    aget-wide v2, v2, v12

    sub-long v2, v28, v2

    .line 319
    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-ltz v4, :cond_1ca

    const-wide/16 v4, 0x208

    cmp-long v4, v2, v4

    if-gez v4, :cond_1ca

    const/4 v4, 0x0

    cmpg-float v4, v24, v4

    if-gtz v4, :cond_1dc

    .line 317
    :cond_1ca
    :goto_1ca
    add-int/lit8 v2, v12, 0x1

    move v12, v2

    goto :goto_1ae

    .line 307
    :cond_1ce
    const/high16 v2, 0x44c80000    # 1600.0f

    goto :goto_157

    .line 308
    :cond_1d1
    float-to-long v4, v2

    rem-long v4, v28, v4

    long-to-float v3, v4

    div-float v2, v3, v2

    goto :goto_163

    .line 313
    :cond_1d8
    const v6, 0x3f19999a    # 0.6f

    goto :goto_18d

    .line 320
    :cond_1dc
    long-to-float v2, v2

    const/high16 v3, 0x44020000    # 520.0f

    div-float v6, v2, v3

    .line 321
    sget-object v2, Lfr/testudo/spacecorsair/mod/ModShield;->ripAng:[F

    aget v2, v2, v12

    const v3, 0x3f7851ec    # 0.97f

    mul-float v3, v3, v26

    invoke-static {v2, v3}, Lfr/testudo/spacecorsair/mod/ModShield;->rim(FF)V

    .line 322
    sget-object v2, Lfr/testudo/spacecorsair/mod/ModShield;->off:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v10, v2, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    sget-object v2, Lfr/testudo/spacecorsair/mod/ModShield;->off:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v11, v2, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    .line 323
    sget-object v2, Lfr/testudo/spacecorsair/mod/ModShield;->RIP:[Lfr/testudo/spacecorsair/mod/ModFx$Sprite;

    aget-object v2, v2, v12

    const-string v3, "shield_ripple"

    const v4, 0x3ea3d70a    # 0.32f

    const v5, 0x3e3851ec    # 0.18f

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    mul-float v4, v4, v25

    sget-object v5, Lfr/testudo/spacecorsair/mod/ModShield;->ripAng:[F

    aget v5, v5, v12

    const/high16 v13, 0x3f800000    # 1.0f

    sub-float/2addr v13, v6

    const/high16 v14, 0x3f800000    # 1.0f

    sub-float v6, v14, v6

    mul-float/2addr v6, v13

    const v13, 0x3f733333    # 0.95f

    mul-float/2addr v6, v13

    invoke-static/range {v2 .. v11}, Lfr/testudo/spacecorsair/mod/ModShield;->q(Lfr/testudo/spacecorsair/mod/ModFx$Sprite;Ljava/lang/String;FFFFFFFF)V

    goto :goto_1ca

    .line 326
    :cond_219
    const/4 v2, 0x0

    cmpg-float v2, v24, v2

    if-gtz v2, :cond_24d

    if-nez v22, :cond_24d

    sget-wide v2, Lfr/testudo/spacecorsair/mod/ModShield;->fizzleAt:J

    sub-long v2, v28, v2

    const-wide/16 v4, 0x2bc

    cmp-long v2, v2, v4

    if-gez v2, :cond_24d

    const/4 v2, 0x1

    move v14, v2

    .line 327
    :goto_22c
    if-nez v23, :cond_230

    if-eqz v14, :cond_a

    .line 328
    :cond_230
    if-eqz v14, :cond_250

    sget-object v2, Lfr/testudo/spacecorsair/mod/ModShield;->SPUT:[Lfr/testudo/spacecorsair/mod/ModFx$Sprite;

    array-length v2, v2

    move v12, v2

    .line 329
    :goto_236
    const/4 v2, 0x0

    move v13, v2

    :goto_238
    if-ge v13, v12, :cond_a

    .line 330
    if-nez v14, :cond_253

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v2

    const-wide v4, 0x3fe3333333333333L    # 0.6

    cmpg-double v2, v2, v4

    if-gez v2, :cond_253

    .line 329
    :goto_249
    add-int/lit8 v2, v13, 0x1

    move v13, v2

    goto :goto_238

    .line 326
    :cond_24d
    const/4 v2, 0x0

    move v14, v2

    goto :goto_22c

    .line 328
    :cond_250
    const/4 v2, 0x2

    move v12, v2

    goto :goto_236

    .line 331
    :cond_253
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v2

    const-wide v4, 0x4076800000000000L    # 360.0

    mul-double/2addr v2, v4

    double-to-float v5, v2

    .line 332
    move/from16 v0, v26

    invoke-static {v5, v0}, Lfr/testudo/spacecorsair/mod/ModShield;->rim(FF)V

    .line 333
    sget-object v2, Lfr/testudo/spacecorsair/mod/ModShield;->off:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v10, v2, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    sget-object v2, Lfr/testudo/spacecorsair/mod/ModShield;->off:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v11, v2, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    .line 334
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v2

    const-wide/high16 v16, 0x4030000000000000L    # 16.0

    mul-double v2, v2, v16

    double-to-int v3, v2

    .line 335
    sget-object v2, Lfr/testudo/spacecorsair/mod/ModShield;->SPUT:[Lfr/testudo/spacecorsair/mod/ModFx$Sprite;

    aget-object v2, v2, v13

    .line 336
    rem-int/lit8 v4, v3, 0x4

    int-to-float v4, v4

    const/high16 v6, 0x3e800000    # 0.25f

    mul-float/2addr v4, v6

    iput v4, v2, Lfr/testudo/spacecorsair/mod/ModFx$Sprite;->u0:F

    div-int/lit8 v3, v3, 0x4

    int-to-float v3, v3

    const/high16 v4, 0x3e800000    # 0.25f

    mul-float/2addr v3, v4

    iput v3, v2, Lfr/testudo/spacecorsair/mod/ModFx$Sprite;->v0:F

    iget v3, v2, Lfr/testudo/spacecorsair/mod/ModFx$Sprite;->u0:F

    const/high16 v4, 0x3e800000    # 0.25f

    add-float/2addr v3, v4

    iput v3, v2, Lfr/testudo/spacecorsair/mod/ModFx$Sprite;->u1:F

    iget v3, v2, Lfr/testudo/spacecorsair/mod/ModFx$Sprite;->v0:F

    const/high16 v4, 0x3e800000    # 0.25f

    add-float/2addr v3, v4

    iput v3, v2, Lfr/testudo/spacecorsair/mod/ModFx$Sprite;->v1:F

    .line 337
    const-string v3, "shield_sputter_sheet"

    const v4, 0x3e6147ae    # 0.22f

    mul-float v4, v4, v25

    const v6, 0x3f666666    # 0.9f

    invoke-static/range {v2 .. v11}, Lfr/testudo/spacecorsair/mod/ModShield;->q(Lfr/testudo/spacecorsair/mod/ModFx$Sprite;Ljava/lang/String;FFFFFFFF)V

    goto :goto_249
.end method

.method private static fields()Z
    .registers 5

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 44
    sget-object v2, Lfr/testudo/spacecorsair/mod/ModShield;->fNoRegen:Ljava/lang/reflect/Field;

    if-eqz v2, :cond_7

    .line 56
    :goto_6
    return v0

    .line 45
    :cond_7
    sget-boolean v2, Lfr/testudo/spacecorsair/mod/ModShield;->reflectFailed:Z

    if-eqz v2, :cond_d

    move v0, v1

    goto :goto_6

    .line 47
    :cond_d
    :try_start_d
    const-class v2, Lfr/testudo/spacecorsair/business/player/Shield;

    const-string v3, "isInNoRegenerationTime"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 48
    const-class v3, Lfr/testudo/spacecorsair/business/player/Shield;

    const-string v4, "remainingNoRegenrationTime"

    invoke-virtual {v3, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    .line 49
    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 50
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 51
    sput-object v3, Lfr/testudo/spacecorsair/mod/ModShield;->fRemaining:Ljava/lang/reflect/Field;

    .line 52
    sput-object v2, Lfr/testudo/spacecorsair/mod/ModShield;->fNoRegen:Ljava/lang/reflect/Field;
    :try_end_29
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_29} :catch_2a

    goto :goto_6

    .line 54
    :catch_2a
    move-exception v2

    .line 55
    sput-boolean v0, Lfr/testudo/spacecorsair/mod/ModShield;->reflectFailed:Z

    move v0, v1

    .line 56
    goto :goto_6
.end method

.method private static hideStock()V
    .registers 4

    .prologue
    .line 240
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModArt;->blank()Lfr/testudo/spacecorsair/display/Texture;

    .line 241
    sget-object v1, Lfr/testudo/spacecorsair/business/player/PlayerShip;->shieldDrawable:Lfr/testudo/spacecorsair/display/Drawable;

    .line 242
    if-eqz v1, :cond_48

    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModShield;->shellReady()Z

    move-result v0

    if-eqz v0, :cond_48

    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-boolean v0, v0, Lfr/testudo/spacecorsair/game/Game;->mapMode:Z

    if-nez v0, :cond_48

    const/4 v0, 0x1

    .line 243
    :goto_16
    sget-object v2, Lfr/testudo/spacecorsair/mod/ModShield;->hidden:Lfr/testudo/spacecorsair/display/Drawable;

    if-eqz v2, :cond_39

    sget-object v2, Lfr/testudo/spacecorsair/mod/ModShield;->hidden:Lfr/testudo/spacecorsair/display/Drawable;

    if-ne v2, v1, :cond_20

    if-nez v0, :cond_39

    .line 244
    :cond_20
    sget-object v2, Lfr/testudo/spacecorsair/mod/ModShield;->hidden:Lfr/testudo/spacecorsair/display/Drawable;

    iget-object v2, v2, Lfr/testudo/spacecorsair/display/Drawable;->myTexture:Lfr/testudo/spacecorsair/display/Texture;

    if-eqz v2, :cond_30

    sget-object v2, Lfr/testudo/spacecorsair/mod/ModShield;->hidden:Lfr/testudo/spacecorsair/display/Drawable;

    iget-object v2, v2, Lfr/testudo/spacecorsair/display/Drawable;->myTexture:Lfr/testudo/spacecorsair/display/Texture;

    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModArt;->blank()Lfr/testudo/spacecorsair/display/Texture;

    move-result-object v3

    if-ne v2, v3, :cond_36

    :cond_30
    sget-object v2, Lfr/testudo/spacecorsair/mod/ModShield;->hidden:Lfr/testudo/spacecorsair/display/Drawable;

    sget-object v3, Lfr/testudo/spacecorsair/mod/ModShield;->stockTex:Lfr/testudo/spacecorsair/display/Texture;

    iput-object v3, v2, Lfr/testudo/spacecorsair/display/Drawable;->myTexture:Lfr/testudo/spacecorsair/display/Texture;

    .line 245
    :cond_36
    const/4 v2, 0x0

    sput-object v2, Lfr/testudo/spacecorsair/mod/ModShield;->hidden:Lfr/testudo/spacecorsair/display/Drawable;

    .line 247
    :cond_39
    if-eqz v0, :cond_47

    sget-object v0, Lfr/testudo/spacecorsair/mod/ModShield;->hidden:Lfr/testudo/spacecorsair/display/Drawable;

    if-nez v0, :cond_47

    .line 248
    iget-object v0, v1, Lfr/testudo/spacecorsair/display/Drawable;->myTexture:Lfr/testudo/spacecorsair/display/Texture;

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModShield;->stockTex:Lfr/testudo/spacecorsair/display/Texture;

    .line 249
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModShield;->stockTex:Lfr/testudo/spacecorsair/display/Texture;

    if-nez v0, :cond_4a

    .line 254
    :cond_47
    :goto_47
    return-void

    .line 242
    :cond_48
    const/4 v0, 0x0

    goto :goto_16

    .line 250
    :cond_4a
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModArt;->blank()Lfr/testudo/spacecorsair/display/Texture;

    move-result-object v0

    iget v0, v0, Lfr/testudo/spacecorsair/display/Texture;->name:I

    if-lez v0, :cond_47

    .line 251
    sput-object v1, Lfr/testudo/spacecorsair/mod/ModShield;->hidden:Lfr/testudo/spacecorsair/display/Drawable;

    .line 252
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModArt;->blank()Lfr/testudo/spacecorsair/display/Texture;

    move-result-object v0

    iput-object v0, v1, Lfr/testudo/spacecorsair/display/Drawable;->myTexture:Lfr/testudo/spacecorsair/display/Texture;

    goto :goto_47
.end method

.method private static hold(Lfr/testudo/spacecorsair/business/player/Shield;F)V
    .registers 4

    .prologue
    .line 62
    :try_start_0
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModShield;->fNoRegen:Ljava/lang/reflect/Field;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Field;->setBoolean(Ljava/lang/Object;Z)V

    .line 63
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModShield;->fRemaining:Ljava/lang/reflect/Field;

    invoke-virtual {v0, p0, p1}, Ljava/lang/reflect/Field;->setFloat(Ljava/lang/Object;F)V
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_b} :catch_c

    .line 67
    :goto_b
    return-void

    .line 64
    :catch_c
    move-exception v0

    goto :goto_b
.end method

.method static impact(F)V
    .registers 5

    .prologue
    .line 228
    sget v0, Lfr/testudo/spacecorsair/mod/ModShield;->ripNext:I

    .line 229
    sget v1, Lfr/testudo/spacecorsair/mod/ModShield;->ripNext:I

    add-int/lit8 v1, v1, 0x1

    sget-object v2, Lfr/testudo/spacecorsair/mod/ModShield;->RIP:[Lfr/testudo/spacecorsair/mod/ModFx$Sprite;

    array-length v2, v2

    rem-int/2addr v1, v2

    sput v1, Lfr/testudo/spacecorsair/mod/ModShield;->ripNext:I

    .line 230
    sget-object v1, Lfr/testudo/spacecorsair/mod/ModShield;->ripAng:[F

    aput p0, v1, v0

    .line 231
    sget-object v1, Lfr/testudo/spacecorsair/mod/ModShield;->ripAt:[J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    aput-wide v2, v1, v0

    .line 232
    return-void
.end method

.method public static onRepair()V
    .registers 3

    .prologue
    const/4 v2, 0x0

    .line 106
    sput v2, Lfr/testudo/spacecorsair/mod/ModShield;->used:I

    .line 107
    const-wide/16 v0, 0x0

    sput-wide v0, Lfr/testudo/spacecorsair/mod/ModShield;->rebootLeft:J

    .line 108
    sput-boolean v2, Lfr/testudo/spacecorsair/mod/ModShield;->slow:Z

    .line 109
    return-void
.end method

.method private static q(Lfr/testudo/spacecorsair/mod/ModFx$Sprite;Ljava/lang/String;FFFFFFFF)V
    .registers 22

    .prologue
    .line 265
    invoke-static {p1}, Lfr/testudo/spacecorsair/mod/ModArt;->ready(Ljava/lang/String;)Lfr/testudo/spacecorsair/display/Texture;

    move-result-object v2

    .line 266
    if-eqz v2, :cond_d

    const v3, 0x3c23d70a    # 0.01f

    cmpg-float v3, p4, v3

    if-gtz v3, :cond_e

    .line 272
    :cond_d
    :goto_d
    return-void

    .line 267
    :cond_e
    iput-object v2, p0, Lfr/testudo/spacecorsair/mod/ModFx$Sprite;->myTexture:Lfr/testudo/spacecorsair/display/Texture;

    .line 268
    iput p2, p0, Lfr/testudo/spacecorsair/mod/ModFx$Sprite;->w:F

    .line 269
    iput p2, p0, Lfr/testudo/spacecorsair/mod/ModFx$Sprite;->h:F

    .line 270
    sget-object v2, Lfr/testudo/spacecorsair/mod/ModShield;->at:Lfr/testudo/spacecorsair/engine/Vector2;

    sget-object v3, Lfr/testudo/spacecorsair/engine/GameRenderer;->screenCenter:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v2, v3}, Lfr/testudo/spacecorsair/engine/Vector2;->setSameAs(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    move-result-object v2

    move/from16 v0, p8

    move/from16 v1, p9

    invoke-virtual {v2, v0, v1}, Lfr/testudo/spacecorsair/engine/Vector2;->add(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 271
    sget-object v2, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v2, v2, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->renderQueue:Lfr/testudo/spacecorsair/engine/RenderQueue;

    sget-object v3, Lfr/testudo/spacecorsair/mod/ModShield;->at:Lfr/testudo/spacecorsair/engine/Vector2;

    const/4 v4, 0x1

    const/4 v7, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    move/from16 v0, p4

    invoke-static {v5, v0}, Ljava/lang/Math;->min(FF)F

    move-result v8

    move-object v5, p0

    move v6, p3

    move/from16 v9, p5

    move/from16 v10, p6

    move/from16 v11, p7

    invoke-virtual/range {v2 .. v11}, Lfr/testudo/spacecorsair/engine/RenderQueue;->addToWaitingQueue(Lfr/testudo/spacecorsair/engine/Vector2;ZLfr/testudo/spacecorsair/display/Drawable;FZFFFF)V

    goto :goto_d
.end method

.method public static rate(Lfr/testudo/spacecorsair/business/player/Shield;F)F
    .registers 6

    .prologue
    const/high16 v3, 0x3f000000    # 0.5f

    const/4 v0, 0x0

    .line 88
    if-eqz p0, :cond_b

    :try_start_5
    iget v1, p0, Lfr/testudo/spacecorsair/business/player/Shield;->capacity:F

    cmpg-float v1, v1, v0

    if-gtz v1, :cond_c

    .line 100
    :cond_b
    :goto_b
    return p1

    .line 89
    :cond_c
    iget v1, p0, Lfr/testudo/spacecorsair/business/player/Shield;->currentValue:F

    iget v2, p0, Lfr/testudo/spacecorsair/business/player/Shield;->capacity:F

    div-float/2addr v1, v2

    .line 90
    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModShield;->curve(F)F

    move-result v1

    .line 91
    iget-boolean v2, p0, Lfr/testudo/spacecorsair/business/player/Shield;->isPlayerShield:Z

    if-eqz v2, :cond_37

    .line 92
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModPolice;->regenStopped()Z

    move-result v2

    if-eqz v2, :cond_21

    move p1, v0

    goto :goto_b

    .line 93
    :cond_21
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModEnemyGuns;->ionStopped()Z

    move-result v2

    if-eqz v2, :cond_29

    move p1, v0

    goto :goto_b

    .line 94
    :cond_29
    sget-boolean v0, Lfr/testudo/spacecorsair/mod/ModShield;->slow:Z

    if-eqz v0, :cond_4e

    mul-float v0, v1, v3

    .line 95
    :goto_2f
    mul-float/2addr v0, p1

    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModV34;->levelShield()F

    move-result v1

    mul-float p1, v0, v1

    goto :goto_b

    .line 97
    :cond_37
    iget v2, p0, Lfr/testudo/spacecorsair/business/player/Shield;->currentValue:F

    cmpg-float v2, v2, v0

    if-gtz v2, :cond_47

    iget-object v2, p0, Lfr/testudo/spacecorsair/business/player/Shield;->holder:Lfr/testudo/spacecorsair/business/Element;

    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModShield;->regenFromZero(Lfr/testudo/spacecorsair/business/Element;)Z
    :try_end_42
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_42} :catch_4c

    move-result v2

    if-nez v2, :cond_47

    move p1, v0

    goto :goto_b

    .line 98
    :cond_47
    mul-float v0, p1, v1

    mul-float p1, v0, v3

    goto :goto_b

    .line 99
    :catch_4c
    move-exception v0

    goto :goto_b

    :cond_4e
    move v0, v1

    goto :goto_2f
.end method

.method static regenFromZero(Lfr/testudo/spacecorsair/business/Element;)Z
    .registers 2

    .prologue
    .line 79
    if-eqz p0, :cond_10

    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModBoss;->isBoss(Lfr/testudo/spacecorsair/business/Element;)Z

    move-result v0

    if-nez v0, :cond_e

    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModTitan;->isTitanClass(Lfr/testudo/spacecorsair/business/Element;)Z

    move-result v0

    if-eqz v0, :cond_10

    :cond_e
    const/4 v0, 0x1

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method private static rim(FF)V
    .registers 6

    .prologue
    .line 260
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModShield;->off:Lfr/testudo/spacecorsair/engine/Vector2;

    const/4 v1, 0x0

    neg-float v2, p1

    invoke-virtual {v0, v1, v2}, Lfr/testudo/spacecorsair/engine/Vector2;->set(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    move-result-object v0

    float-to-double v2, p0

    invoke-static {v2, v3}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lfr/testudo/spacecorsair/engine/Vector2;->applyRotatation(D)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 261
    return-void
.end method

.method private static shellReady()Z
    .registers 1

    .prologue
    .line 223
    const-string v0, "shield_segment"

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModArt;->ready(Ljava/lang/String;)Lfr/testudo/spacecorsair/display/Texture;

    move-result-object v0

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method static tick(Lfr/testudo/spacecorsair/business/player/PlayerShip;J)V
    .registers 16

    .prologue
    const/4 v2, 0x1

    const/high16 v9, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    const-wide/16 v10, 0x0

    const/4 v8, 0x0

    .line 117
    iget-object v4, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->shield:Lfr/testudo/spacecorsair/business/player/Shield;

    .line 118
    if-eqz v4, :cond_11

    iget v0, v4, Lfr/testudo/spacecorsair/business/player/Shield;->capacity:F

    cmpg-float v0, v0, v8

    if-gtz v0, :cond_12

    .line 193
    :cond_11
    :goto_11
    return-void

    .line 120
    :cond_12
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->shipSpec:Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;

    if-eqz v0, :cond_143

    .line 122
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->shipSpec:Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;

    iget v0, v0, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;->drawableSizeOfShield:I

    int-to-float v0, v0

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->shipSpec:Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;

    iget v1, v1, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;->drawableSize:I

    int-to-float v1, v1

    const v5, 0x3f8ccccd    # 1.1f

    mul-float/2addr v1, v5

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 123
    invoke-virtual {p0}, Lfr/testudo/spacecorsair/business/player/PlayerShip;->getDrawableObject()Lfr/testudo/spacecorsair/display/Drawable;

    move-result-object v5

    .line 124
    if-eqz v5, :cond_54

    iget-object v1, v5, Lfr/testudo/spacecorsair/display/Drawable;->dimensions:Lfr/testudo/spacecorsair/engine/Vector2;

    if-eqz v1, :cond_54

    .line 125
    iget-object v1, v5, Lfr/testudo/spacecorsair/display/Drawable;->myTexture:Lfr/testudo/spacecorsair/display/Texture;

    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModArt;->extent(Lfr/testudo/spacecorsair/display/Texture;)F

    move-result v1

    .line 126
    iget-object v6, v5, Lfr/testudo/spacecorsair/display/Drawable;->dimensions:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v6, v6, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    iget-object v7, v5, Lfr/testudo/spacecorsair/display/Drawable;->dimensions:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v7, v7, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    invoke-static {v6, v7}, Ljava/lang/Math;->max(FF)F

    move-result v6

    .line 127
    cmpl-float v7, v1, v8

    if-lez v7, :cond_154

    const/high16 v0, 0x3f400000    # 0.75f

    mul-float/2addr v0, v6

    mul-float/2addr v1, v6

    const v6, 0x3f8f5c29    # 1.12f

    mul-float/2addr v1, v6

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 129
    :cond_54
    :goto_54
    sget-wide v6, Lfr/testudo/spacecorsair/mod/ModShield;->logMs:J

    sub-long/2addr v6, p1

    sput-wide v6, Lfr/testudo/spacecorsair/mod/ModShield;->logMs:J

    cmp-long v1, v6, v10

    if-gtz v1, :cond_f6

    const-string v1, "corsair_titans"

    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModDev;->testFlag(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_f6

    .line 130
    const-wide/16 v6, 0xbb8

    sput-wide v6, Lfr/testudo/spacecorsair/mod/ModShield;->logMs:J

    .line 131
    const-string v6, "ModShield"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "spec="

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v7, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->shipSpec:Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;

    iget v7, v7, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;->drawableSize:I

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v7, " dimStatic="

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v7, Lfr/testudo/spacecorsair/business/player/PlayerShip;->drawableDimension:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v7, v7, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v7, " hd="

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 132
    if-nez v5, :cond_15e

    const/high16 v1, -0x40800000    # -1.0f

    :goto_96
    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v7, " ext="

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    if-nez v5, :cond_164

    const/high16 v1, -0x3ef00000    # -9.0f

    :goto_a4
    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, " d="

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, " stockShieldDim="

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 133
    sget-object v1, Lfr/testudo/spacecorsair/business/player/PlayerShip;->shieldDrawable:Lfr/testudo/spacecorsair/display/Drawable;

    if-nez v1, :cond_16c

    const/high16 v1, -0x40800000    # -1.0f

    :goto_be
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, " hidden="

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v1, Lfr/testudo/spacecorsair/mod/ModShield;->hidden:Lfr/testudo/spacecorsair/display/Drawable;

    if-eqz v1, :cond_174

    move v1, v2

    :goto_cd
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, " img="

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v5, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->shipSpec:Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;

    iget-object v5, v5, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;->image:Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec$Image;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, " basicTex="

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v5, Lfr/testudo/spacecorsair/business/player/PlayerShip;->BASIC_TEXTURE:Lfr/testudo/spacecorsair/display/Texture;

    .line 134
    invoke-static {v5}, Lfr/testudo/spacecorsair/mod/ModArt;->extent(Lfr/testudo/spacecorsair/display/Texture;)F

    move-result v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 131
    invoke-static {v6, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    :cond_f6
    sget-object v1, Lfr/testudo/spacecorsair/business/player/PlayerShip;->shieldDimension:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v1, v1, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    cmpl-float v1, v1, v0

    if-eqz v1, :cond_103

    sget-object v1, Lfr/testudo/spacecorsair/business/player/PlayerShip;->shieldDimension:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v1, v0, v0}, Lfr/testudo/spacecorsair/engine/Vector2;->set(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 137
    :cond_103
    sget-object v1, Lfr/testudo/spacecorsair/business/player/PlayerShip;->shieldDrawable:Lfr/testudo/spacecorsair/display/Drawable;

    if-eqz v1, :cond_120

    sget-object v1, Lfr/testudo/spacecorsair/business/player/PlayerShip;->shieldDrawable:Lfr/testudo/spacecorsair/display/Drawable;

    iget-object v1, v1, Lfr/testudo/spacecorsair/display/Drawable;->dimensions:Lfr/testudo/spacecorsair/engine/Vector2;

    sget-object v5, Lfr/testudo/spacecorsair/business/player/PlayerShip;->shieldDimension:Lfr/testudo/spacecorsair/engine/Vector2;

    if-eq v1, v5, :cond_120

    sget-object v1, Lfr/testudo/spacecorsair/business/player/PlayerShip;->shieldDrawable:Lfr/testudo/spacecorsair/display/Drawable;

    iget-object v1, v1, Lfr/testudo/spacecorsair/display/Drawable;->dimensions:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v1, v1, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    cmpl-float v1, v1, v0

    if-eqz v1, :cond_120

    .line 138
    sget-object v1, Lfr/testudo/spacecorsair/business/player/PlayerShip;->shieldDrawable:Lfr/testudo/spacecorsair/display/Drawable;

    iget-object v1, v1, Lfr/testudo/spacecorsair/display/Drawable;->dimensions:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v1, v0, v0}, Lfr/testudo/spacecorsair/engine/Vector2;->set(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 139
    :cond_120
    iget-object v1, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->shipSpec:Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;

    iget v1, v1, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;->physicSizeWithoutShield:I

    int-to-float v1, v1

    iget-object v5, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->shipSpec:Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;

    iget v5, v5, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;->physicSizeWithShield:I

    int-to-float v5, v5

    const v6, 0x3f6b851f    # 0.92f

    mul-float/2addr v0, v6

    invoke-static {v5, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 140
    sget-object v1, Lfr/testudo/spacecorsair/business/player/PlayerShip;->physicDimensionWithShield:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v1, v1, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    cmpl-float v1, v1, v0

    if-eqz v1, :cond_143

    sget-object v1, Lfr/testudo/spacecorsair/business/player/PlayerShip;->physicDimensionWithShield:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v1, v0, v0}, Lfr/testudo/spacecorsair/engine/Vector2;->set(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 142
    :cond_143
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModShield;->hideStock()V

    .line 143
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModShield;->lastShield:Lfr/testudo/spacecorsair/business/player/Shield;

    if-eq v4, v0, :cond_177

    .line 144
    sput-object v4, Lfr/testudo/spacecorsair/mod/ModShield;->lastShield:Lfr/testudo/spacecorsair/business/player/Shield;

    .line 145
    iget v0, v4, Lfr/testudo/spacecorsair/business/player/Shield;->currentValue:F

    sput v0, Lfr/testudo/spacecorsair/mod/ModShield;->last:F

    .line 146
    sput-wide v10, Lfr/testudo/spacecorsair/mod/ModShield;->rebootLeft:J

    goto/16 :goto_11

    .line 127
    :cond_154
    const v1, 0x3f933333    # 1.15f

    mul-float/2addr v1, v6

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    goto/16 :goto_54

    .line 132
    :cond_15e
    iget-object v1, v5, Lfr/testudo/spacecorsair/display/Drawable;->dimensions:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v1, v1, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    goto/16 :goto_96

    :cond_164
    iget-object v1, v5, Lfr/testudo/spacecorsair/display/Drawable;->myTexture:Lfr/testudo/spacecorsair/display/Texture;

    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModArt;->extent(Lfr/testudo/spacecorsair/display/Texture;)F

    move-result v1

    goto/16 :goto_a4

    .line 133
    :cond_16c
    sget-object v1, Lfr/testudo/spacecorsair/business/player/PlayerShip;->shieldDrawable:Lfr/testudo/spacecorsair/display/Drawable;

    iget-object v1, v1, Lfr/testudo/spacecorsair/display/Drawable;->dimensions:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v1, v1, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    goto/16 :goto_be

    :cond_174
    move v1, v3

    goto/16 :goto_cd

    .line 149
    :cond_177
    iget-boolean v0, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->isDocked:Z

    if-nez v0, :cond_181

    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModShield;->fields()Z

    move-result v0

    if-nez v0, :cond_187

    .line 150
    :cond_181
    iget v0, v4, Lfr/testudo/spacecorsair/business/player/Shield;->currentValue:F

    sput v0, Lfr/testudo/spacecorsair/mod/ModShield;->last:F

    goto/16 :goto_11

    .line 154
    :cond_187
    sget-wide v0, Lfr/testudo/spacecorsair/mod/ModShield;->testMs:J

    sub-long/2addr v0, p1

    sput-wide v0, Lfr/testudo/spacecorsair/mod/ModShield;->testMs:J

    .line 155
    sget-wide v0, Lfr/testudo/spacecorsair/mod/ModShield;->testMs:J

    cmp-long v0, v0, v10

    if-gtz v0, :cond_1a8

    .line 156
    const-wide/16 v0, 0x1f4

    sput-wide v0, Lfr/testudo/spacecorsair/mod/ModShield;->testMs:J

    .line 157
    const-string v0, "corsair_shieldbreak"

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModDev;->testFlag(Ljava/lang/String;)Z

    move-result v0

    .line 158
    if-eqz v0, :cond_1a6

    sget-boolean v1, Lfr/testudo/spacecorsair/mod/ModShield;->testWas:Z

    if-nez v1, :cond_1a6

    .line 159
    iput v8, v4, Lfr/testudo/spacecorsair/business/player/Shield;->currentValue:F

    .line 160
    iput v8, v4, Lfr/testudo/spacecorsair/business/player/Shield;->valueInPourc:F

    .line 162
    :cond_1a6
    sput-boolean v0, Lfr/testudo/spacecorsair/mod/ModShield;->testWas:Z

    .line 164
    :cond_1a8
    iget v1, v4, Lfr/testudo/spacecorsair/business/player/Shield;->currentValue:F

    .line 165
    sget v0, Lfr/testudo/spacecorsair/mod/ModShield;->last:F

    cmpl-float v0, v0, v8

    if-lez v0, :cond_1ba

    cmpg-float v0, v1, v8

    if-gtz v0, :cond_1ba

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sput-wide v6, Lfr/testudo/spacecorsair/mod/ModShield;->fizzleAt:J

    .line 166
    :cond_1ba
    sget v0, Lfr/testudo/spacecorsair/mod/ModShield;->last:F

    const v5, 0x38d1b717    # 1.0E-4f

    add-float/2addr v0, v5

    cmpl-float v0, v1, v0

    if-lez v0, :cond_247

    move v0, v2

    :goto_1c5
    sput-boolean v0, Lfr/testudo/spacecorsair/mod/ModShield;->regen:Z

    .line 167
    sget v0, Lfr/testudo/spacecorsair/mod/ModShield;->last:F

    cmpl-float v0, v0, v8

    if-lez v0, :cond_1ff

    cmpg-float v0, v1, v8

    if-gtz v0, :cond_1ff

    sget-wide v6, Lfr/testudo/spacecorsair/mod/ModShield;->rebootLeft:J

    cmp-long v0, v6, v10

    if-gtz v0, :cond_1ff

    .line 168
    sget v0, Lfr/testudo/spacecorsair/mod/ModShield;->used:I

    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModShield;->allowed(Lfr/testudo/spacecorsair/business/player/PlayerShip;)I

    move-result v5

    if-ge v0, v5, :cond_24a

    .line 169
    sget v0, Lfr/testudo/spacecorsair/mod/ModShield;->used:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lfr/testudo/spacecorsair/mod/ModShield;->used:I

    .line 170
    sput-boolean v3, Lfr/testudo/spacecorsair/mod/ModShield;->slow:Z

    .line 171
    const-wide/16 v6, 0x514

    sput-wide v6, Lfr/testudo/spacecorsair/mod/ModShield;->rebootLeft:J

    .line 172
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sput-wide v6, Lfr/testudo/spacecorsair/mod/ModShield;->fizzleAt:J

    .line 173
    const-string v0, "SHIELDS REBOOTING"

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/high16 v2, 0x3f000000    # 0.5f

    const v5, 0x3f59999a    # 0.85f

    invoke-static {p0, v0, v2, v5, v9}, Lfr/testudo/spacecorsair/mod/Mod;->floatText(Lfr/testudo/spacecorsair/business/Element;Ljava/lang/String;FFF)V

    .line 179
    :cond_1ff
    :goto_1ff
    sget-boolean v0, Lfr/testudo/spacecorsair/mod/ModShield;->slow:Z

    if-eqz v0, :cond_229

    sget v0, Lfr/testudo/spacecorsair/mod/ModShield;->used:I

    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModShield;->allowed(Lfr/testudo/spacecorsair/business/player/PlayerShip;)I

    move-result v2

    if-ge v0, v2, :cond_229

    .line 180
    sput-boolean v3, Lfr/testudo/spacecorsair/mod/ModShield;->slow:Z

    .line 181
    sget v0, Lfr/testudo/spacecorsair/mod/ModShield;->used:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lfr/testudo/spacecorsair/mod/ModShield;->used:I

    .line 182
    cmpg-float v0, v1, v8

    if-gtz v0, :cond_229

    .line 183
    const-wide/16 v0, 0x514

    sput-wide v0, Lfr/testudo/spacecorsair/mod/ModShield;->rebootLeft:J

    .line 184
    const-string v0, "SHIELDS REBOOTING"

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/high16 v1, 0x3f000000    # 0.5f

    const v2, 0x3f59999a    # 0.85f

    invoke-static {p0, v0, v1, v2, v9}, Lfr/testudo/spacecorsair/mod/Mod;->floatText(Lfr/testudo/spacecorsair/business/Element;Ljava/lang/String;FFF)V

    .line 187
    :cond_229
    sget-wide v0, Lfr/testudo/spacecorsair/mod/ModShield;->rebootLeft:J

    cmp-long v0, v0, v10

    if-lez v0, :cond_241

    .line 188
    sget-wide v0, Lfr/testudo/spacecorsair/mod/ModShield;->rebootLeft:J

    sub-long/2addr v0, p1

    sput-wide v0, Lfr/testudo/spacecorsair/mod/ModShield;->rebootLeft:J

    .line 189
    sget-wide v0, Lfr/testudo/spacecorsair/mod/ModShield;->rebootLeft:J

    cmp-long v0, v0, v10

    if-lez v0, :cond_260

    sget-wide v0, Lfr/testudo/spacecorsair/mod/ModShield;->rebootLeft:J

    add-long/2addr v0, p1

    long-to-float v0, v0

    invoke-static {v4, v0}, Lfr/testudo/spacecorsair/mod/ModShield;->hold(Lfr/testudo/spacecorsair/business/player/Shield;F)V

    .line 192
    :cond_241
    :goto_241
    iget v0, v4, Lfr/testudo/spacecorsair/business/player/Shield;->currentValue:F

    sput v0, Lfr/testudo/spacecorsair/mod/ModShield;->last:F

    goto/16 :goto_11

    :cond_247
    move v0, v3

    .line 166
    goto/16 :goto_1c5

    .line 174
    :cond_24a
    sget-boolean v0, Lfr/testudo/spacecorsair/mod/ModShield;->slow:Z

    if-nez v0, :cond_1ff

    .line 175
    sput-boolean v2, Lfr/testudo/spacecorsair/mod/ModShield;->slow:Z

    .line 176
    const-string v0, "SHIELD EMITTERS DAMAGED - HALF RECHARGE UNTIL REPAIRED"

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const v2, 0x3f0ccccd    # 0.55f

    const v5, 0x3e99999a    # 0.3f

    invoke-static {p0, v0, v9, v2, v5}, Lfr/testudo/spacecorsair/mod/Mod;->floatText(Lfr/testudo/spacecorsair/business/Element;Ljava/lang/String;FFF)V

    goto :goto_1ff

    .line 190
    :cond_260
    invoke-static {v4, v8}, Lfr/testudo/spacecorsair/mod/ModShield;->hold(Lfr/testudo/spacecorsair/business/player/Shield;F)V

    goto :goto_241
.end method
