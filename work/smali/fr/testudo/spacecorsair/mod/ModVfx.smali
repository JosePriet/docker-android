.class public final Lfr/testudo/spacecorsair/mod/ModVfx;
.super Ljava/lang/Object;
.source "ModVfx.java"


# static fields
.field private static final DN:I = 0x20

.field static final FAINT:F = 0.55f

.field private static final FAMILY_KEY:[Ljava/lang/String;

.field public static final HIGH:I = 0x2

.field public static final LOW:I = 0x0

.field public static final MEDIUM:I = 0x1

.field public static MP_PROMPT:Z = false

.field static final SLOW_FPS:F = 30.0f

.field static final SLOW_MS:J = 0x2710L

.field private static volatile ask:Z

.field private static budgetCheap:I

.field private static budgetDeath:I

.field private static budgetFancy:I

.field private static budgetImpact:I

.field private static budgetMuzzle:I

.field private static budgetRibbon:I

.field private static final dAt:[J

.field private static dNext:I

.field private static final dOn:[Z

.field private static final dS:[F

.field private static final dX:[F

.field private static final dY:[F

.field private static fancyAt:J

.field private static final fancyOf:Ljava/util/IdentityHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/IdentityHashMap",
            "<",
            "Lfr/testudo/spacecorsair/business/Element;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private static final hasArt:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static lastE:Lfr/testudo/spacecorsair/business/Element;

.field private static lastFrame:J

.field private static lastK:F

.field private static loaded:Z

.field private static volatile prompting:Z

.field private static volatile quality:I

.field private static final shown:[Z

.field private static slowMs:J

.field private static testAt:J

.field private static testForce:Z

.field private static testLog:I

.field private static testMode:I

.field private static testQ:Ljava/lang/String;

.field private static winMs:J

.field private static winN:I


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v2, 0x0

    const/16 v3, 0x20

    .line 44
    sput-boolean v2, Lfr/testudo/spacecorsair/mod/ModVfx;->MP_PROMPT:Z

    .line 50
    sput v5, Lfr/testudo/spacecorsair/mod/ModVfx;->quality:I

    .line 51
    sput-boolean v4, Lfr/testudo/spacecorsair/mod/ModVfx;->ask:Z

    .line 129
    new-array v0, v6, [Z

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModVfx;->shown:[Z

    .line 131
    const/4 v0, -0x1

    sput v0, Lfr/testudo/spacecorsair/mod/ModVfx;->testMode:I

    .line 265
    new-instance v0, Ljava/util/IdentityHashMap;

    invoke-direct {v0}, Ljava/util/IdentityHashMap;-><init>()V

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModVfx;->fancyOf:Ljava/util/IdentityHashMap;

    .line 319
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "spartan"

    aput-object v1, v0, v2

    const-string v1, "helion"

    aput-object v1, v0, v4

    const-string v1, "ironclad"

    aput-object v1, v0, v5

    const-string v1, "kretari"

    aput-object v1, v0, v6

    const/4 v1, 0x4

    const-string v2, "varn"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "warden_arc"

    aput-object v2, v0, v1

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModVfx;->FAMILY_KEY:[Ljava/lang/String;

    .line 320
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModVfx;->hasArt:Ljava/util/HashMap;

    .line 461
    new-array v0, v3, [J

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModVfx;->dAt:[J

    .line 462
    new-array v0, v3, [F

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModVfx;->dX:[F

    new-array v0, v3, [F

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModVfx;->dY:[F

    new-array v0, v3, [F

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModVfx;->dS:[F

    .line 463
    new-array v0, v3, [Z

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModVfx;->dOn:[Z

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Z)V
    .registers 1

    .prologue
    .line 39
    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModVfx;->done(Z)V

    return-void
.end method

.method static synthetic access$100()[Z
    .registers 1

    .prologue
    .line 39
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModVfx;->shown:[Z

    return-object v0
.end method

.method private static art(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    .prologue
    const/4 v2, 0x0

    .line 324
    if-nez p0, :cond_4

    .line 328
    :goto_3
    return-object v2

    .line 325
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "fx_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 326
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModVfx;->hasArt:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 327
    if-nez v0, :cond_35

    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModArt;->lazyTex(Ljava/lang/String;)Lfr/testudo/spacecorsair/display/Texture;

    move-result-object v0

    if-eqz v0, :cond_44

    const/4 v0, 0x1

    :goto_2c
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sget-object v3, Lfr/testudo/spacecorsair/mod/ModVfx;->hasArt:Ljava/util/HashMap;

    invoke-virtual {v3, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 328
    :cond_35
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_46

    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModArt;->ready(Ljava/lang/String;)Lfr/testudo/spacecorsair/display/Texture;

    move-result-object v0

    if-eqz v0, :cond_46

    move-object v0, v1

    :goto_42
    move-object v2, v0

    goto :goto_3

    .line 327
    :cond_44
    const/4 v0, 0x0

    goto :goto_2c

    :cond_46
    move-object v0, v2

    .line 328
    goto :goto_42
.end method

.method private static byStage(I)F
    .registers 2

    .prologue
    .line 306
    const/4 v0, 0x5

    if-lt p0, v0, :cond_6

    const/high16 v0, 0x3f800000    # 1.0f

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x4

    if-ne p0, v0, :cond_d

    const v0, 0x3f0ccccd    # 0.55f

    goto :goto_5

    :cond_d
    const/4 v0, 0x0

    goto :goto_5
.end method

.method static clear()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    move v0, v1

    .line 535
    :goto_2
    const/16 v2, 0x20

    if-ge v0, v2, :cond_d

    sget-object v2, Lfr/testudo/spacecorsair/mod/ModVfx;->dOn:[Z

    aput-boolean v1, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 536
    :cond_d
    return-void
.end method

.method private static col(F)F
    .registers 3

    .prologue
    const v0, 0x3d4ccccd    # 0.05f

    .line 357
    cmpg-float v1, p0, v0

    if-gtz v1, :cond_8

    :goto_7
    return v0

    :cond_8
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {v0, p0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    goto :goto_7
.end method

.method static death(Lfr/testudo/spacecorsair/business/Element;F)V
    .registers 23

    .prologue
    .line 468
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModVfx;->quality()I

    move-result v2

    if-eqz v2, :cond_11

    if-eqz p0, :cond_11

    const/4 v2, 0x0

    cmpg-float v2, p1, v2

    if-lez v2, :cond_11

    sget v2, Lfr/testudo/spacecorsair/mod/ModVfx;->budgetDeath:I

    if-gtz v2, :cond_12

    .line 512
    :cond_11
    :goto_11
    return-void

    .line 470
    :cond_12
    :try_start_12
    move-object/from16 v0, p0

    iget-object v2, v0, Lfr/testudo/spacecorsair/business/Element;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v3, v2, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    move-object/from16 v0, p0

    iget-object v2, v0, Lfr/testudo/spacecorsair/business/Element;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v4, v2, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    .line 471
    move/from16 v0, p1

    invoke-static {v3, v4, v0}, Lfr/testudo/spacecorsair/mod/ModVfx;->near(FFF)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 472
    sget v2, Lfr/testudo/spacecorsair/mod/ModVfx;->budgetDeath:I

    add-int/lit8 v2, v2, -0x1

    sput v2, Lfr/testudo/spacecorsair/mod/ModVfx;->budgetDeath:I

    .line 473
    sget v2, Lfr/testudo/spacecorsair/mod/ModVfx;->quality:I

    const/4 v5, 0x2

    if-ne v2, v5, :cond_e1

    const/4 v2, 0x1

    move/from16 v18, v2

    .line 474
    :goto_34
    const/high16 v2, 0x45160000    # 2400.0f

    move/from16 v0, p1

    invoke-static {v0, v2}, Ljava/lang/Math;->min(FF)F

    move-result v19

    .line 475
    const-string v2, "fx_glow"

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/high16 v7, 0x435c0000    # 220.0f

    const v8, 0x3f4ccccd    # 0.8f

    mul-float v8, v8, v19

    const v9, 0x400ccccd    # 2.2f

    mul-float v9, v9, v19

    const/high16 v10, 0x3f800000    # 1.0f

    const v11, 0x3f59999a    # 0.85f

    const v12, 0x3f19999a    # 0.6f

    const v13, 0x3f666666    # 0.9f

    const/4 v14, 0x1

    const/4 v15, 0x1

    invoke-static/range {v2 .. v15}, Lfr/testudo/spacecorsair/mod/ModFx;->part(Ljava/lang/String;FFFFFFFFFFFZZ)V

    .line 476
    const-string v2, "fx_ring"

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/high16 v7, 0x43e60000    # 460.0f

    const v8, 0x3e99999a    # 0.3f

    mul-float v8, v8, v19

    const v9, 0x400ccccd    # 2.2f

    mul-float v9, v9, v19

    const/high16 v10, 0x3f800000    # 1.0f

    const v11, 0x3f4ccccd    # 0.8f

    const/high16 v12, 0x3f000000    # 0.5f

    const v13, 0x3f0ccccd    # 0.55f

    const/4 v14, 0x1

    const/4 v15, 0x1

    invoke-static/range {v2 .. v15}, Lfr/testudo/spacecorsair/mod/ModFx;->part(Ljava/lang/String;FFFFFFFFFFFZZ)V

    .line 477
    if-eqz v18, :cond_e6

    const/16 v2, 0x8

    move/from16 v16, v2

    .line 478
    :goto_81
    const/4 v2, 0x0

    move/from16 v17, v2

    :goto_84
    move/from16 v0, v17

    move/from16 v1, v16

    if-ge v0, v1, :cond_ea

    .line 479
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v6

    const-wide v8, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v6, v8

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    mul-double/2addr v6, v8

    double-to-float v6, v6

    .line 480
    const/high16 v2, 0x43c80000    # 400.0f

    const/high16 v5, 0x44610000    # 900.0f

    invoke-static {v2, v5}, Lfr/testudo/spacecorsair/mod/ModFx;->rnd(FF)F

    move-result v2

    const/high16 v5, 0x3f800000    # 1.0f

    const/high16 v7, 0x43480000    # 200.0f

    div-float v7, v19, v7

    invoke-static {v5, v7}, Ljava/lang/Math;->max(FF)F

    move-result v5

    mul-float v7, v2, v5

    .line 481
    const-string v2, "fx_spark"

    float-to-double v8, v6

    invoke-static {v8, v9}, Ljava/lang/Math;->cos(D)D

    move-result-wide v8

    double-to-float v5, v8

    mul-float/2addr v5, v7

    float-to-double v8, v6

    invoke-static {v8, v9}, Ljava/lang/Math;->sin(D)D

    move-result-wide v8

    double-to-float v6, v8

    mul-float/2addr v6, v7

    const/high16 v7, 0x43d20000    # 420.0f

    const/high16 v8, 0x41b00000    # 22.0f

    const/high16 v9, 0x40c00000    # 6.0f

    const/high16 v10, 0x3f800000    # 1.0f

    const v11, 0x3f4ccccd    # 0.8f

    const v12, 0x3ee66666    # 0.45f

    const/high16 v13, 0x3f800000    # 1.0f

    const/4 v14, 0x1

    const/4 v15, 0x1

    invoke-static/range {v2 .. v15}, Lfr/testudo/spacecorsair/mod/ModFx;->part(Ljava/lang/String;FFFFFFFFFFFZZ)V

    .line 482
    const v2, 0x3d23d70a    # 0.04f

    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModFx;->lastStretch(F)V

    .line 483
    const/high16 v2, 0x40200000    # 2.5f

    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModFx;->lastDrag(F)V

    .line 478
    add-int/lit8 v2, v17, 0x1

    move/from16 v17, v2

    goto :goto_84

    .line 473
    :cond_e1
    const/4 v2, 0x0

    move/from16 v18, v2

    goto/16 :goto_34

    .line 477
    :cond_e6
    const/4 v2, 0x4

    move/from16 v16, v2

    goto :goto_81

    .line 485
    :cond_ea
    if-eqz v18, :cond_fe

    const/high16 v2, 0x3fc00000    # 1.5f

    mul-float v5, v19, v2

    const v6, 0x443b8000    # 750.0f

    const/high16 v7, 0x3f800000    # 1.0f

    const v8, 0x3f4ccccd    # 0.8f

    const v9, 0x3f19999a    # 0.6f

    invoke-static/range {v3 .. v9}, Lfr/testudo/spacecorsair/mod/ModFx;->boom(FFFFFFF)V

    .line 486
    :cond_fe
    invoke-static/range {p0 .. p0}, Lfr/testudo/spacecorsair/mod/ModVfx;->fancyQ(Lfr/testudo/spacecorsair/business/Element;)F

    move-result v20

    .line 487
    const/4 v2, 0x0

    cmpg-float v2, v20, v2

    if-lez v2, :cond_11

    .line 488
    const-string v2, "fx_shock"

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/high16 v7, 0x442f0000    # 700.0f

    const/high16 v8, 0x3f000000    # 0.5f

    mul-float v8, v8, v19

    const/high16 v9, 0x40200000    # 2.5f

    const/high16 v10, 0x3fc00000    # 1.5f

    mul-float v10, v10, v20

    add-float/2addr v9, v10

    mul-float v9, v9, v19

    const/high16 v10, 0x3f800000    # 1.0f

    const v11, 0x3f59999a    # 0.85f

    const v12, 0x3f266666    # 0.65f

    const v13, 0x3f19999a    # 0.6f

    mul-float v13, v13, v20

    const/4 v14, 0x1

    const/4 v15, 0x1

    invoke-static/range {v2 .. v15}, Lfr/testudo/spacecorsair/mod/ModFx;->part(Ljava/lang/String;FFFFFFFFFFFZZ)V

    .line 489
    if-eqz v18, :cond_184

    const/high16 v2, 0x40400000    # 3.0f

    const/high16 v5, 0x40400000    # 3.0f

    mul-float v5, v5, v20

    add-float/2addr v2, v5

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    .line 490
    :goto_139
    const/4 v5, 0x0

    :goto_13a
    if-ge v5, v2, :cond_186

    .line 491
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v6

    const-wide v8, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v6, v8

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    mul-double/2addr v6, v8

    double-to-float v6, v6

    const v7, 0x3dcccccd    # 0.1f

    const v8, 0x3ee66666    # 0.45f

    invoke-static {v7, v8}, Lfr/testudo/spacecorsair/mod/ModFx;->rnd(FF)F

    move-result v7

    mul-float v7, v7, v19

    .line 492
    float-to-double v8, v6

    invoke-static {v8, v9}, Ljava/lang/Math;->cos(D)D

    move-result-wide v8

    double-to-float v8, v8

    mul-float/2addr v8, v7

    add-float/2addr v8, v3

    float-to-double v10, v6

    invoke-static {v10, v11}, Ljava/lang/Math;->sin(D)D

    move-result-wide v10

    double-to-float v6, v10

    mul-float/2addr v6, v7

    add-float/2addr v6, v4

    const v7, 0x3ee66666    # 0.45f

    const v9, 0x3f59999a    # 0.85f

    invoke-static {v7, v9}, Lfr/testudo/spacecorsair/mod/ModFx;->rnd(FF)F

    move-result v7

    mul-float v7, v7, v19

    const/16 v9, 0x3e8

    const/4 v10, 0x1

    invoke-static {v10, v2}, Ljava/lang/Math;->max(II)I

    move-result v10

    div-int/2addr v9, v10

    mul-int/2addr v9, v5

    add-int/lit8 v9, v9, 0x78

    int-to-long v10, v9

    invoke-static {v8, v6, v7, v10, v11}, Lfr/testudo/spacecorsair/mod/ModVfx;->later(FFFJ)V

    .line 490
    add-int/lit8 v5, v5, 0x1

    goto :goto_13a

    .line 489
    :cond_184
    const/4 v2, 0x2

    goto :goto_139

    .line 494
    :cond_186
    if-eqz v18, :cond_1e6

    const/16 v2, 0xe

    :goto_18a
    int-to-float v2, v2

    mul-float v2, v2, v20

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v17

    .line 495
    const/4 v2, 0x0

    move/from16 v16, v2

    :goto_194
    move/from16 v0, v16

    move/from16 v1, v17

    if-ge v0, v1, :cond_1e8

    .line 496
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v6

    const-wide v8, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v6, v8

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    mul-double/2addr v6, v8

    double-to-float v6, v6

    .line 497
    const/high16 v2, 0x43960000    # 300.0f

    const v5, 0x44898000    # 1100.0f

    invoke-static {v2, v5}, Lfr/testudo/spacecorsair/mod/ModFx;->rnd(FF)F

    move-result v7

    .line 498
    const-string v2, "fx_fire"

    float-to-double v8, v6

    invoke-static {v8, v9}, Ljava/lang/Math;->cos(D)D

    move-result-wide v8

    double-to-float v5, v8

    mul-float/2addr v5, v7

    float-to-double v8, v6

    invoke-static {v8, v9}, Ljava/lang/Math;->sin(D)D

    move-result-wide v8

    double-to-float v6, v8

    mul-float/2addr v6, v7

    const/high16 v7, 0x44610000    # 900.0f

    const v8, 0x3da3d70a    # 0.08f

    mul-float v8, v8, v19

    const v9, 0x3ca3d70a    # 0.02f

    mul-float v9, v9, v19

    const/high16 v10, 0x3f800000    # 1.0f

    const v11, 0x3f19999a    # 0.6f

    const/high16 v12, 0x3e800000    # 0.25f

    const v13, 0x3f666666    # 0.9f

    const/4 v14, 0x1

    const/4 v15, 0x1

    invoke-static/range {v2 .. v15}, Lfr/testudo/spacecorsair/mod/ModFx;->part(Ljava/lang/String;FFFFFFFFFFFZZ)V

    .line 499
    const/high16 v2, 0x3fc00000    # 1.5f

    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModFx;->lastDrag(F)V

    .line 495
    add-int/lit8 v2, v16, 0x1

    move/from16 v16, v2

    goto :goto_194

    .line 494
    :cond_1e6
    const/4 v2, 0x6

    goto :goto_18a

    .line 501
    :cond_1e8
    invoke-static/range {p0 .. p0}, Lfr/testudo/spacecorsair/mod/ModCapitals;->cap(Ljava/lang/Object;)Lfr/testudo/spacecorsair/mod/ModCapitals$Cap;

    move-result-object v2

    if-nez v2, :cond_209

    invoke-static/range {p0 .. p0}, Lfr/testudo/spacecorsair/mod/ModTitan;->isTitanClass(Lfr/testudo/spacecorsair/business/Element;)Z

    move-result v2

    if-nez v2, :cond_209

    move-object/from16 v0, p0

    instance-of v2, v0, Lfr/testudo/spacecorsair/business/player/PlayerShip;

    if-eqz v2, :cond_25f

    invoke-static/range {p0 .. p0}, Lfr/testudo/spacecorsair/mod/ModVfx;->fancy(Lfr/testudo/spacecorsair/business/Element;)F

    move-result v2

    const/4 v5, 0x0

    cmpl-float v2, v2, v5

    if-lez v2, :cond_25f

    const/high16 v2, 0x43fa0000    # 500.0f

    cmpl-float v2, v19, v2

    if-lez v2, :cond_25f

    :cond_209
    const/4 v2, 0x1

    .line 502
    :goto_20a
    if-eqz v2, :cond_238

    .line 503
    const-string v2, "fx_boom_hero_sheet"

    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModArt;->lazyTex(Ljava/lang/String;)Lfr/testudo/spacecorsair/display/Texture;

    move-result-object v2

    if-eqz v2, :cond_261

    const-string v2, "fx_boom_hero_sheet"

    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModArt;->ready(Ljava/lang/String;)Lfr/testudo/spacecorsair/display/Texture;

    move-result-object v2

    if-eqz v2, :cond_261

    .line 504
    const-string v6, "fx_boom_hero_sheet"

    const/16 v7, 0x8

    const/16 v8, 0x40

    const v2, 0x40266666    # 2.6f

    mul-float v11, v19, v2

    const-wide/16 v12, 0x640

    const/high16 v14, 0x3f800000    # 1.0f

    const v15, 0x3f666666    # 0.9f

    const v16, 0x3f4ccccd    # 0.8f

    const/16 v17, 0x1

    move v9, v3

    move v10, v4

    invoke-static/range {v6 .. v17}, Lfr/testudo/spacecorsair/mod/ModLive;->fx(Ljava/lang/String;IIFFFJFFFZ)V

    .line 507
    :cond_238
    :goto_238
    sget-object v2, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v2, v2, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->playerShip:Lfr/testudo/spacecorsair/business/player/PlayerShip;

    .line 508
    if-eqz v2, :cond_11

    iget-object v2, v2, Lfr/testudo/spacecorsair/business/player/PlayerShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    move-object/from16 v0, p0

    iget-object v3, v0, Lfr/testudo/spacecorsair/business/Element;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v2, v3}, Lfr/testudo/spacecorsair/engine/Vector2;->distance(Lfr/testudo/spacecorsair/engine/Vector2;)F

    move-result v2

    const v3, 0x451c4000    # 2500.0f

    cmpg-float v2, v2, v3

    if-gez v2, :cond_11

    const/high16 v2, 0x3e800000    # 0.25f

    const v3, 0x3eb33333    # 0.35f

    mul-float v3, v3, v20

    add-float/2addr v2, v3

    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModQol;->addShake(F)V

    goto/16 :goto_11

    .line 509
    :catch_25c
    move-exception v2

    goto/16 :goto_11

    .line 501
    :cond_25f
    const/4 v2, 0x0

    goto :goto_20a

    .line 505
    :cond_261
    const v2, 0x400ccccd    # 2.2f

    mul-float v5, v19, v2

    const v6, 0x44a28000    # 1300.0f

    const/high16 v7, 0x3f800000    # 1.0f

    const v8, 0x3f4ccccd    # 0.8f

    const v9, 0x3f0ccccd    # 0.55f

    invoke-static/range {v3 .. v9}, Lfr/testudo/spacecorsair/mod/ModFx;->boom(FFFFFFF)V
    :try_end_274
    .catch Ljava/lang/Throwable; {:try_start_12 .. :try_end_274} :catch_25c

    goto :goto_238
.end method

.method private static done(Z)V
    .registers 5

    .prologue
    const-wide/16 v2, 0x0

    const/4 v0, 0x0

    .line 255
    sput-boolean v0, Lfr/testudo/spacecorsair/mod/ModArt;->hold:Z

    .line 256
    sput-wide v2, Lfr/testudo/spacecorsair/mod/ModVfx;->lastFrame:J

    .line 257
    sput-wide v2, Lfr/testudo/spacecorsair/mod/ModVfx;->slowMs:J

    .line 258
    sput-boolean v0, Lfr/testudo/spacecorsair/mod/ModVfx;->prompting:Z

    .line 259
    if-eqz p0, :cond_10

    .line 260
    :try_start_d
    invoke-static {}, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->resume()V
    :try_end_10
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_10} :catch_11

    .line 262
    :cond_10
    :goto_10
    return-void

    .line 260
    :catch_11
    move-exception v0

    goto :goto_10
.end method

.method static fancy(Lfr/testudo/spacecorsair/business/Element;)F
    .registers 9

    .prologue
    const-wide/16 v6, 0x3e8

    const/4 v1, 0x0

    .line 272
    if-nez p0, :cond_6

    .line 285
    :goto_5
    return v1

    .line 273
    :cond_6
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModVfx;->lastE:Lfr/testudo/spacecorsair/business/Element;

    if-ne p0, v0, :cond_18

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    sget-wide v4, Lfr/testudo/spacecorsair/mod/ModVfx;->fancyAt:J

    sub-long/2addr v2, v4

    cmp-long v0, v2, v6

    if-gtz v0, :cond_18

    sget v1, Lfr/testudo/spacecorsair/mod/ModVfx;->lastK:F

    goto :goto_5

    .line 274
    :cond_18
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 275
    sget-wide v4, Lfr/testudo/spacecorsair/mod/ModVfx;->fancyAt:J

    sub-long v4, v2, v4

    cmp-long v0, v4, v6

    if-lez v0, :cond_2e

    sget-object v0, Lfr/testudo/spacecorsair/mod/ModVfx;->fancyOf:Ljava/util/IdentityHashMap;

    invoke-virtual {v0}, Ljava/util/IdentityHashMap;->clear()V

    sput-wide v2, Lfr/testudo/spacecorsair/mod/ModVfx;->fancyAt:J

    const/4 v0, 0x0

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModVfx;->lastE:Lfr/testudo/spacecorsair/business/Element;

    .line 276
    :cond_2e
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModVfx;->fancyOf:Ljava/util/IdentityHashMap;

    invoke-virtual {v0, p0}, Ljava/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    .line 277
    if-nez v0, :cond_45

    .line 279
    :try_start_38
    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModVfx;->fancyNow(Lfr/testudo/spacecorsair/business/Element;)F
    :try_end_3b
    .catch Ljava/lang/Throwable; {:try_start_38 .. :try_end_3b} :catch_52

    move-result v0

    .line 280
    :goto_3c
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    .line 281
    sget-object v1, Lfr/testudo/spacecorsair/mod/ModVfx;->fancyOf:Ljava/util/IdentityHashMap;

    invoke-virtual {v1, p0, v0}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 283
    :cond_45
    sput-object p0, Lfr/testudo/spacecorsair/mod/ModVfx;->lastE:Lfr/testudo/spacecorsair/business/Element;

    .line 284
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v1

    sput v1, Lfr/testudo/spacecorsair/mod/ModVfx;->lastK:F

    .line 285
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v1

    goto :goto_5

    .line 279
    :catch_52
    move-exception v0

    move v0, v1

    goto :goto_3c
.end method

.method private static fancyNow(Lfr/testudo/spacecorsair/business/Element;)F
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 289
    instance-of v0, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;

    if-eqz v0, :cond_43

    move-object v0, p0

    .line 290
    check-cast v0, Lfr/testudo/spacecorsair/business/player/PlayerShip;

    .line 291
    iget-object v2, v0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->shipSpec:Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;

    if-nez v2, :cond_e

    move v0, v1

    .line 302
    :goto_d
    return v0

    .line 292
    :cond_e
    iget-object v2, v0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->shipSpec:Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;

    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModShips;->hullFor(Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;)Lfr/testudo/spacecorsair/mod/ModShips$Hull;

    move-result-object v2

    .line 293
    if-eqz v2, :cond_23

    iget v0, v2, Lfr/testudo/spacecorsair/mod/ModShips$Hull;->cls:I

    .line 294
    :goto_18
    const/4 v2, 0x4

    if-eq v0, v2, :cond_2a

    const/4 v2, 0x6

    if-eq v0, v2, :cond_2a

    const/4 v2, 0x5

    if-eq v0, v2, :cond_2a

    move v0, v1

    goto :goto_d

    .line 293
    :cond_23
    iget-object v0, v0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->shipSpec:Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModShips;->originalClass(Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;)I

    move-result v0

    goto :goto_18

    .line 295
    :cond_2a
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->playerShip:Lfr/testudo/spacecorsair/business/player/PlayerShip;

    if-eq p0, v0, :cond_32

    move v0, v1

    goto :goto_d

    .line 296
    :cond_32
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModV35;->currentShip()Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    move-result-object v0

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModV35;->level(Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)I

    move-result v0

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModV35;->stage(I)I

    move-result v0

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModVfx;->byStage(I)F

    move-result v0

    goto :goto_d

    .line 298
    :cond_43
    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/Mod;->isDrone(Lfr/testudo/spacecorsair/business/Element;)Z

    move-result v0

    if-eqz v0, :cond_4b

    move v0, v1

    goto :goto_d

    .line 299
    :cond_4b
    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModCapitals;->cap(Ljava/lang/Object;)Lfr/testudo/spacecorsair/mod/ModCapitals$Cap;

    move-result-object v0

    if-nez v0, :cond_57

    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModTitan;->isTitanClass(Lfr/testudo/spacecorsair/business/Element;)Z

    move-result v0

    if-eqz v0, :cond_5a

    :cond_57
    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_d

    .line 300
    :cond_5a
    instance-of v0, p0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    if-nez v0, :cond_60

    move v0, v1

    goto :goto_d

    .line 301
    :cond_60
    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModWreck;->sizeClass(Lfr/testudo/spacecorsair/business/Element;)I

    move-result v0

    const/4 v2, 0x3

    if-ge v0, v2, :cond_69

    move v0, v1

    goto :goto_d

    .line 302
    :cond_69
    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModV35;->enemyStage(Lfr/testudo/spacecorsair/business/Element;)I

    move-result v0

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModVfx;->byStage(I)F

    move-result v0

    goto :goto_d
.end method

.method private static fancyQ(Lfr/testudo/spacecorsair/business/Element;)F
    .registers 5

    .prologue
    const/4 v1, 0x0

    .line 311
    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModVfx;->fancy(Lfr/testudo/spacecorsair/business/Element;)F

    move-result v0

    .line 312
    cmpg-float v2, v0, v1

    if-gtz v2, :cond_a

    .line 313
    :goto_9
    return v1

    :cond_a
    sget v2, Lfr/testudo/spacecorsair/mod/ModVfx;->quality:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_11

    :goto_f
    move v1, v0

    goto :goto_9

    :cond_11
    sget v2, Lfr/testudo/spacecorsair/mod/ModVfx;->quality:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1a

    const/high16 v1, 0x3f000000    # 0.5f

    mul-float/2addr v0, v1

    goto :goto_f

    :cond_1a
    move v0, v1

    goto :goto_f
.end method

.method static frame()V
    .registers 2

    .prologue
    const/16 v1, 0x18

    .line 139
    const/16 v0, 0xa0

    sput v0, Lfr/testudo/spacecorsair/mod/ModVfx;->budgetCheap:I

    .line 140
    const/16 v0, 0x30

    sput v0, Lfr/testudo/spacecorsair/mod/ModVfx;->budgetFancy:I

    .line 141
    const/16 v0, 0x28

    sput v0, Lfr/testudo/spacecorsair/mod/ModVfx;->budgetRibbon:I

    .line 142
    sput v1, Lfr/testudo/spacecorsair/mod/ModVfx;->budgetMuzzle:I

    .line 143
    sput v1, Lfr/testudo/spacecorsair/mod/ModVfx;->budgetImpact:I

    .line 144
    const/4 v0, 0x3

    sput v0, Lfr/testudo/spacecorsair/mod/ModVfx;->budgetDeath:I

    .line 146
    :try_start_15
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModVfx;->watch()V
    :try_end_18
    .catch Ljava/lang/Throwable; {:try_start_15 .. :try_end_18} :catch_19

    .line 150
    :goto_18
    return-void

    .line 147
    :catch_19
    move-exception v0

    goto :goto_18
.end method

.method static impact(Lfr/testudo/spacecorsair/business/projectiles/EnergyBullet;Lfr/testudo/spacecorsair/business/Element;I)V
    .registers 22

    .prologue
    .line 422
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModVfx;->quality()I

    move-result v2

    if-eqz v2, :cond_c

    if-eqz p0, :cond_c

    sget v2, Lfr/testudo/spacecorsair/mod/ModVfx;->budgetImpact:I

    if-gtz v2, :cond_d

    .line 452
    :cond_c
    :goto_c
    return-void

    .line 424
    :cond_d
    :try_start_d
    sget-object v2, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v2, v2, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-boolean v2, v2, Lfr/testudo/spacecorsair/game/Game;->mapMode:Z

    if-nez v2, :cond_c

    .line 425
    move-object/from16 v0, p0

    iget-object v2, v0, Lfr/testudo/spacecorsair/business/projectiles/EnergyBullet;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v3, v2, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    move-object/from16 v0, p0

    iget-object v2, v0, Lfr/testudo/spacecorsair/business/projectiles/EnergyBullet;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v4, v2, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    .line 426
    const/high16 v2, 0x43480000    # 200.0f

    invoke-static {v3, v4, v2}, Lfr/testudo/spacecorsair/mod/ModVfx;->near(FFF)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 427
    sget v2, Lfr/testudo/spacecorsair/mod/ModVfx;->budgetImpact:I

    add-int/lit8 v2, v2, -0x1

    sput v2, Lfr/testudo/spacecorsair/mod/ModVfx;->budgetImpact:I

    .line 428
    sget v2, Lfr/testudo/spacecorsair/mod/ModVfx;->quality:I

    const/4 v5, 0x2

    if-ne v2, v5, :cond_a2

    const/4 v2, 0x1

    move/from16 v18, v2

    .line 429
    :goto_37
    move-object/from16 v0, p0

    iget v2, v0, Lfr/testudo/spacecorsair/business/projectiles/EnergyBullet;->r:F

    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModVfx;->col(F)F

    move-result v10

    move-object/from16 v0, p0

    iget v2, v0, Lfr/testudo/spacecorsair/business/projectiles/EnergyBullet;->g:F

    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModVfx;->col(F)F

    move-result v11

    move-object/from16 v0, p0

    iget v2, v0, Lfr/testudo/spacecorsair/business/projectiles/EnergyBullet;->b:F

    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModVfx;->col(F)F

    move-result v12

    .line 430
    if-eqz v18, :cond_a6

    const/4 v2, 0x3

    move/from16 v16, v2

    .line 431
    :goto_54
    const/4 v2, 0x0

    move/from16 v17, v2

    :goto_57
    move/from16 v0, v17

    move/from16 v1, v16

    if-ge v0, v1, :cond_aa

    .line 432
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v6

    const-wide v8, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v6, v8

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    mul-double/2addr v6, v8

    double-to-float v6, v6

    .line 433
    const/high16 v2, 0x437a0000    # 250.0f

    const v5, 0x44228000    # 650.0f

    invoke-static {v2, v5}, Lfr/testudo/spacecorsair/mod/ModFx;->rnd(FF)F

    move-result v7

    .line 434
    const-string v2, "fx_spark"

    float-to-double v8, v6

    invoke-static {v8, v9}, Ljava/lang/Math;->cos(D)D

    move-result-wide v8

    double-to-float v5, v8

    mul-float/2addr v5, v7

    float-to-double v8, v6

    invoke-static {v8, v9}, Ljava/lang/Math;->sin(D)D

    move-result-wide v8

    double-to-float v6, v8

    mul-float/2addr v6, v7

    const/high16 v7, 0x43700000    # 240.0f

    const/high16 v8, 0x41600000    # 14.0f

    const/high16 v9, 0x40800000    # 4.0f

    const v13, 0x3f666666    # 0.9f

    const/4 v14, 0x1

    const/4 v15, 0x1

    invoke-static/range {v2 .. v15}, Lfr/testudo/spacecorsair/mod/ModFx;->part(Ljava/lang/String;FFFFFFFFFFFZZ)V

    .line 435
    const v2, 0x3d4ccccd    # 0.05f

    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModFx;->lastStretch(F)V

    .line 436
    const/high16 v2, 0x40400000    # 3.0f

    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModFx;->lastDrag(F)V

    .line 431
    add-int/lit8 v2, v17, 0x1

    move/from16 v17, v2

    goto :goto_57

    .line 428
    :cond_a2
    const/4 v2, 0x0

    move/from16 v18, v2

    goto :goto_37

    .line 430
    :cond_a6
    const/4 v2, 0x2

    move/from16 v16, v2

    goto :goto_54

    .line 438
    :cond_aa
    const-string v2, "fx_glow"

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/high16 v7, 0x42f00000    # 120.0f

    const/high16 v8, 0x41f00000    # 30.0f

    const/high16 v9, 0x42b40000    # 90.0f

    const v13, 0x3f333333    # 0.7f

    const/4 v14, 0x1

    const/4 v15, 0x1

    invoke-static/range {v2 .. v15}, Lfr/testudo/spacecorsair/mod/ModFx;->part(Ljava/lang/String;FFFFFFFFFFFZZ)V

    .line 439
    move-object/from16 v0, p0

    iget-object v2, v0, Lfr/testudo/spacecorsair/business/projectiles/EnergyBullet;->sender:Lfr/testudo/spacecorsair/business/Element;

    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModVfx;->fancyQ(Lfr/testudo/spacecorsair/business/Element;)F

    move-result v16

    .line 440
    if-nez v18, :cond_cb

    const/4 v2, 0x0

    cmpl-float v2, v16, v2

    if-lez v2, :cond_11e

    :cond_cb
    move-object/from16 v0, p0

    iget-object v2, v0, Lfr/testudo/spacecorsair/business/projectiles/EnergyBullet;->sender:Lfr/testudo/spacecorsair/business/Element;

    move/from16 v0, p2

    invoke-static {v2, v0}, Lfr/testudo/spacecorsair/mod/ModVfx;->keyOf(Lfr/testudo/spacecorsair/business/Element;I)Ljava/lang/String;

    move-result-object v2

    const-string v5, "_impact"

    invoke-static {v2, v5}, Lfr/testudo/spacecorsair/mod/ModVfx;->art(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 441
    :goto_db
    if-eqz v2, :cond_12a

    .line 442
    const/4 v5, 0x0

    cmpl-float v5, v16, v5

    if-lez v5, :cond_120

    const/high16 v5, 0x43160000    # 150.0f

    const/high16 v6, 0x42b40000    # 90.0f

    mul-float v6, v6, v16

    add-float v9, v5, v6

    .line 443
    :goto_ea
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    cmpl-float v7, v16, v7

    if-lez v7, :cond_123

    const/high16 v7, 0x43960000    # 300.0f

    :goto_f3
    const v8, 0x3ecccccd    # 0.4f

    mul-float/2addr v8, v9

    const/high16 v10, 0x3f800000    # 1.0f

    const/high16 v11, 0x3f800000    # 1.0f

    const/high16 v12, 0x3f800000    # 1.0f

    const/4 v13, 0x0

    cmpl-float v13, v16, v13

    if-lez v13, :cond_126

    const v13, 0x3f666666    # 0.9f

    :goto_105
    const/4 v14, 0x1

    const/4 v15, 0x1

    invoke-static/range {v2 .. v15}, Lfr/testudo/spacecorsair/mod/ModFx;->part(Ljava/lang/String;FFFFFFFFFFFZZ)V

    .line 444
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v2

    const-wide v4, 0x4076800000000000L    # 360.0

    mul-double/2addr v2, v4

    double-to-float v2, v2

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lfr/testudo/spacecorsair/mod/ModFx;->lastSpin(FF)V

    goto/16 :goto_c

    .line 449
    :catch_11b
    move-exception v2

    goto/16 :goto_c

    .line 440
    :cond_11e
    const/4 v2, 0x0

    goto :goto_db

    .line 442
    :cond_120
    const/high16 v9, 0x428c0000    # 70.0f

    goto :goto_ea

    .line 443
    :cond_123
    const/high16 v7, 0x43480000    # 200.0f

    goto :goto_f3

    :cond_126
    const v13, 0x3f333333    # 0.7f

    goto :goto_105

    .line 445
    :cond_12a
    const/4 v2, 0x0

    cmpl-float v2, v16, v2

    if-lez v2, :cond_c

    .line 446
    const-string v2, "fx_ring"

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/high16 v7, 0x43820000    # 260.0f

    const/high16 v8, 0x41a00000    # 20.0f

    const/high16 v9, 0x432a0000    # 170.0f

    mul-float v9, v9, v16

    const v13, 0x3f19999a    # 0.6f

    mul-float v13, v13, v16

    const/4 v14, 0x1

    const/4 v15, 0x1

    invoke-static/range {v2 .. v15}, Lfr/testudo/spacecorsair/mod/ModFx;->part(Ljava/lang/String;FFFFFFFFFFFZZ)V

    .line 447
    const-string v2, "fx_core"

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/high16 v7, 0x43200000    # 160.0f

    const/high16 v8, 0x41f00000    # 30.0f

    const/high16 v9, 0x42dc0000    # 110.0f

    const/high16 v10, 0x3f800000    # 1.0f

    const/high16 v11, 0x3f800000    # 1.0f

    const/high16 v12, 0x3f800000    # 1.0f

    const v13, 0x3f4ccccd    # 0.8f

    mul-float v13, v13, v16

    const/4 v14, 0x1

    const/4 v15, 0x1

    invoke-static/range {v2 .. v15}, Lfr/testudo/spacecorsair/mod/ModFx;->part(Ljava/lang/String;FFFFFFFFFFFZZ)V
    :try_end_15f
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_15f} :catch_11b

    goto/16 :goto_c
.end method

.method private static indexOf(Ljava/lang/String;)I
    .registers 3

    .prologue
    .line 455
    const/4 v0, 0x0

    :goto_1
    sget-object v1, Lfr/testudo/spacecorsair/mod/ModCapitals;->FACTIONS:[Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;

    array-length v1, v1

    if-ge v0, v1, :cond_16

    sget-object v1, Lfr/testudo/spacecorsair/mod/ModCapitals;->FACTIONS:[Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;

    aget-object v1, v1, v0

    iget-object v1, v1, Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;->key:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 456
    :goto_12
    return v0

    .line 455
    :cond_13
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 456
    :cond_16
    const/4 v0, -0x1

    goto :goto_12
.end method

.method private static keyOf(Lfr/testudo/spacecorsair/business/Element;I)Ljava/lang/String;
    .registers 5

    .prologue
    const/4 v0, -0x1

    .line 333
    .line 334
    if-eqz p0, :cond_19

    iget-boolean v1, p0, Lfr/testudo/spacecorsair/business/Element;->isPlayer:Z

    if-nez v1, :cond_19

    .line 335
    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModCapitals;->cap(Ljava/lang/Object;)Lfr/testudo/spacecorsair/mod/ModCapitals$Cap;

    move-result-object v1

    .line 336
    if-eqz v1, :cond_34

    iget-object v2, v1, Lfr/testudo/spacecorsair/mod/ModCapitals$Cap;->f:Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;

    if-eqz v2, :cond_34

    iget-object v0, v1, Lfr/testudo/spacecorsair/mod/ModCapitals$Cap;->f:Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;

    iget-object v0, v0, Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;->key:Ljava/lang/String;

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModVfx;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 342
    :cond_19
    :goto_19
    if-ltz v0, :cond_41

    sget-object v1, Lfr/testudo/spacecorsair/mod/ModCapitals;->FACTIONS:[Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;

    array-length v1, v1

    if-ge v0, v1, :cond_41

    .line 343
    sget-object v1, Lfr/testudo/spacecorsair/mod/ModCapitals;->FACTIONS:[Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;

    aget-object v0, v1, v0

    iget-object v0, v0, Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;->key:Ljava/lang/String;

    .line 344
    const-string v1, "warden"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_33

    const/4 v1, 0x5

    if-ne p1, v1, :cond_33

    const-string v0, "warden_arc"

    .line 346
    :cond_33
    :goto_33
    return-object v0

    .line 338
    :cond_34
    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModEnemyGuns;->shooter(Lfr/testudo/spacecorsair/business/Element;)[I

    move-result-object v1

    .line 339
    if-eqz v1, :cond_19

    array-length v2, v1

    if-lez v2, :cond_19

    const/4 v0, 0x0

    aget v0, v1, v0

    goto :goto_19

    .line 346
    :cond_41
    if-ltz p1, :cond_4d

    sget-object v0, Lfr/testudo/spacecorsair/mod/ModVfx;->FAMILY_KEY:[Ljava/lang/String;

    array-length v0, v0

    if-ge p1, v0, :cond_4d

    sget-object v0, Lfr/testudo/spacecorsair/mod/ModVfx;->FAMILY_KEY:[Ljava/lang/String;

    aget-object v0, v0, p1

    goto :goto_33

    :cond_4d
    const/4 v0, 0x0

    goto :goto_33
.end method

.method private static later(FFFJ)V
    .registers 10

    .prologue
    .line 515
    sget v0, Lfr/testudo/spacecorsair/mod/ModVfx;->dNext:I

    .line 516
    sget v1, Lfr/testudo/spacecorsair/mod/ModVfx;->dNext:I

    add-int/lit8 v1, v1, 0x1

    rem-int/lit8 v1, v1, 0x20

    sput v1, Lfr/testudo/spacecorsair/mod/ModVfx;->dNext:I

    .line 517
    sget-object v1, Lfr/testudo/spacecorsair/mod/ModVfx;->dAt:[J

    sget-wide v2, Lfr/testudo/spacecorsair/mod/ModLive;->nowMs:J

    add-long/2addr v2, p3

    aput-wide v2, v1, v0

    .line 518
    sget-object v1, Lfr/testudo/spacecorsair/mod/ModVfx;->dX:[F

    aput p0, v1, v0

    sget-object v1, Lfr/testudo/spacecorsair/mod/ModVfx;->dY:[F

    aput p1, v1, v0

    sget-object v1, Lfr/testudo/spacecorsair/mod/ModVfx;->dS:[F

    aput p2, v1, v0

    .line 519
    sget-object v1, Lfr/testudo/spacecorsair/mod/ModVfx;->dOn:[Z

    const/4 v2, 0x1

    aput-boolean v2, v1, v0

    .line 520
    return-void
.end method

.method private static load()V
    .registers 4

    .prologue
    const/4 v3, 0x1

    const/4 v1, 0x2

    .line 55
    sget-boolean v0, Lfr/testudo/spacecorsair/mod/ModVfx;->loaded:Z

    if-eqz v0, :cond_7

    .line 62
    :cond_6
    :goto_6
    return-void

    .line 56
    :cond_7
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModQol;->prefs()Landroid/content/SharedPreferences;

    move-result-object v2

    .line 57
    if-eqz v2, :cond_6

    .line 58
    sput-boolean v3, Lfr/testudo/spacecorsair/mod/ModVfx;->loaded:Z

    .line 59
    const-string v0, "visualQuality"

    invoke-static {v2, v0, v1}, Lfr/testudo/spacecorsair/mod/ModQol;->saved(Landroid/content/SharedPreferences;Ljava/lang/String;I)I

    move-result v0

    .line 60
    if-ltz v0, :cond_19

    if-le v0, v1, :cond_1a

    :cond_19
    move v0, v1

    :cond_1a
    sput v0, Lfr/testudo/spacecorsair/mod/ModVfx;->quality:I

    .line 61
    const-string v0, "visualAsk"

    invoke-static {v2, v0, v3}, Lfr/testudo/spacecorsair/mod/ModQol;->saved(Landroid/content/SharedPreferences;Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lfr/testudo/spacecorsair/mod/ModVfx;->ask:Z

    goto :goto_6
.end method

.method private static maybePrompt(F)V
    .registers 7

    .prologue
    const/4 v1, 0x1

    .line 189
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModVfx;->load()V

    .line 190
    sget v2, Lfr/testudo/spacecorsair/mod/ModVfx;->quality:I

    .line 191
    if-lez v2, :cond_1a

    sget-object v0, Lfr/testudo/spacecorsair/mod/ModVfx;->shown:[Z

    aget-boolean v0, v0, v2

    if-nez v0, :cond_1a

    sget-boolean v0, Lfr/testudo/spacecorsair/mod/ModVfx;->ask:Z

    if-eqz v0, :cond_1a

    sget v0, Lfr/testudo/spacecorsair/mod/ModVfx;->testMode:I

    if-ne v0, v1, :cond_1b

    sget-boolean v0, Lfr/testudo/spacecorsair/mod/ModVfx;->testForce:Z

    if-nez v0, :cond_1b

    .line 196
    :cond_1a
    :goto_1a
    return-void

    .line 192
    :cond_1b
    sget-boolean v3, Lfr/testudo/spacecorsair/mod/ModLan;->connected:Z

    .line 193
    if-eqz v3, :cond_23

    sget-boolean v0, Lfr/testudo/spacecorsair/mod/ModVfx;->MP_PROMPT:Z

    if-eqz v0, :cond_1a

    .line 194
    :cond_23
    const-string v4, "vfx"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "slow frames "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, " fps: prompt at quality "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    if-eqz v3, :cond_58

    const-string v0, " (linked, no pause)"

    :goto_46
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lfr/testudo/spacecorsair/mod/ModDev;->ev(Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    if-nez v3, :cond_5b

    move v0, v1

    :goto_54
    invoke-static {v2, v0}, Lfr/testudo/spacecorsair/mod/ModVfx;->prompt(IZ)V

    goto :goto_1a

    .line 194
    :cond_58
    const-string v0, ""

    goto :goto_46

    .line 195
    :cond_5b
    const/4 v0, 0x0

    goto :goto_54
.end method

.method static name(I)Ljava/lang/String;
    .registers 2

    .prologue
    .line 83
    if-nez p0, :cond_9

    const-string v0, "Low"

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_8
    return-object v0

    :cond_9
    const/4 v0, 0x1

    if-ne p0, v0, :cond_13

    const-string v0, "Medium"

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_8

    :cond_13
    const-string v0, "High"

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_8
.end method

.method private static near(FFF)Z
    .registers 9

    .prologue
    const/4 v0, 0x1

    const v5, 0x3fe66666    # 1.8f

    .line 350
    sget-object v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v1, v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->playerShip:Lfr/testudo/spacecorsair/business/player/PlayerShip;

    .line 351
    if-nez v1, :cond_b

    .line 353
    :cond_a
    :goto_a
    return v0

    .line 352
    :cond_b
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModView;->radius()F

    move-result v2

    const v3, 0x3f59999a    # 0.85f

    div-float/2addr v2, v3

    add-float/2addr v2, p2

    .line 353
    iget-object v3, v1, Lfr/testudo/spacecorsair/business/player/PlayerShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v3, v3, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    sub-float/2addr v3, p0

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    mul-float v4, v2, v5

    cmpg-float v3, v3, v4

    if-gez v3, :cond_31

    iget-object v1, v1, Lfr/testudo/spacecorsair/business/player/PlayerShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v1, v1, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    sub-float/2addr v1, p1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    mul-float/2addr v2, v5

    cmpg-float v1, v1, v2

    if-ltz v1, :cond_a

    :cond_31
    const/4 v0, 0x0

    goto :goto_a
.end method

.method private static prompt(IZ)V
    .registers 4

    .prologue
    .line 199
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->mainActivity:Lfr/testudo/spacecorsair/activity/Main;

    .line 200
    if-nez v0, :cond_7

    .line 252
    :goto_6
    return-void

    .line 201
    :cond_7
    const/4 v1, 0x1

    sput-boolean v1, Lfr/testudo/spacecorsair/mod/ModVfx;->prompting:Z

    .line 203
    :try_start_a
    new-instance v1, Lfr/testudo/spacecorsair/mod/ModVfx$3;

    invoke-direct {v1, v0, p0, p1}, Lfr/testudo/spacecorsair/mod/ModVfx$3;-><init>(Lfr/testudo/spacecorsair/activity/Main;IZ)V

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/activity/Main;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_12
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_12} :catch_13

    goto :goto_6

    .line 249
    :catch_13
    move-exception v0

    .line 250
    const/4 v0, 0x0

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModVfx;->done(Z)V

    goto :goto_6
.end method

.method public static quality()I
    .registers 1

    .prologue
    .line 64
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModVfx;->load()V

    sget v0, Lfr/testudo/spacecorsair/mod/ModVfx;->quality:I

    return v0
.end method

.method static setAsk(Z)V
    .registers 7

    .prologue
    const/4 v5, 0x0

    .line 75
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModVfx;->load()V

    .line 76
    sput-boolean p0, Lfr/testudo/spacecorsair/mod/ModVfx;->ask:Z

    .line 77
    if-eqz p0, :cond_16

    sget-object v0, Lfr/testudo/spacecorsair/mod/ModVfx;->shown:[Z

    sget-object v1, Lfr/testudo/spacecorsair/mod/ModVfx;->shown:[Z

    const/4 v2, 0x1

    sget-object v3, Lfr/testudo/spacecorsair/mod/ModVfx;->shown:[Z

    const/4 v4, 0x2

    aput-boolean v5, v3, v4

    aput-boolean v5, v1, v2

    aput-boolean v5, v0, v5

    .line 78
    :cond_16
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModQol;->prefs()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 79
    if-eqz v0, :cond_29

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "visualAsk"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 80
    :cond_29
    return-void
.end method

.method static setQuality(I)V
    .registers 4

    .prologue
    .line 67
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModVfx;->load()V

    .line 68
    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-static {v1, p0}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    sput v0, Lfr/testudo/spacecorsair/mod/ModVfx;->quality:I

    .line 69
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModQol;->prefs()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 70
    if-eqz v0, :cond_24

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "visualQuality"

    sget v2, Lfr/testudo/spacecorsair/mod/ModVfx;->quality:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 71
    :cond_24
    const-string v0, "vfx"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "quality "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lfr/testudo/spacecorsair/mod/ModVfx;->quality:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lfr/testudo/spacecorsair/mod/ModDev;->ev(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    return-void
.end method

.method static settingsRow(Landroid/app/Activity;)Landroid/view/View;
    .registers 10

    .prologue
    const v8, 0x5c100

    const/4 v0, 0x0

    const/4 v7, -0x1

    .line 88
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModVfx;->load()V

    .line 89
    new-instance v1, Landroid/widget/LinearLayout;

    invoke-direct {v1, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 90
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 91
    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 92
    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 93
    const-string v3, "Visual quality (effects)"

    invoke-static {v3}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 94
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 95
    new-instance v2, Landroid/widget/RadioGroup;

    invoke-direct {v2, p0}, Landroid/widget/RadioGroup;-><init>(Landroid/content/Context;)V

    .line 96
    invoke-virtual {v2, v0}, Landroid/widget/RadioGroup;->setOrientation(I)V

    .line 97
    const/4 v3, 0x3

    new-array v3, v3, [I

    fill-array-data v3, :array_8c

    .line 98
    :goto_33
    array-length v4, v3

    if-ge v0, v4, :cond_59

    .line 99
    new-instance v4, Landroid/widget/RadioButton;

    invoke-direct {v4, p0}, Landroid/widget/RadioButton;-><init>(Landroid/content/Context;)V

    .line 100
    aget v5, v3, v0

    add-int/2addr v5, v8

    invoke-virtual {v4, v5}, Landroid/widget/RadioButton;->setId(I)V

    .line 101
    aget v5, v3, v0

    invoke-static {v5}, Lfr/testudo/spacecorsair/mod/ModVfx;->name(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/RadioButton;->setText(Ljava/lang/CharSequence;)V

    .line 102
    invoke-virtual {v4, v7}, Landroid/widget/RadioButton;->setTextColor(I)V

    .line 103
    const/4 v5, 0x2

    const/high16 v6, 0x41600000    # 14.0f

    invoke-virtual {v4, v5, v6}, Landroid/widget/RadioButton;->setTextSize(IF)V

    .line 104
    invoke-virtual {v2, v4}, Landroid/widget/RadioGroup;->addView(Landroid/view/View;)V

    .line 98
    add-int/lit8 v0, v0, 0x1

    goto :goto_33

    .line 106
    :cond_59
    sget v0, Lfr/testudo/spacecorsair/mod/ModVfx;->quality:I

    add-int/2addr v0, v8

    invoke-virtual {v2, v0}, Landroid/widget/RadioGroup;->check(I)V

    .line 107
    new-instance v0, Lfr/testudo/spacecorsair/mod/ModVfx$1;

    invoke-direct {v0}, Lfr/testudo/spacecorsair/mod/ModVfx$1;-><init>()V

    invoke-virtual {v2, v0}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 113
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 114
    new-instance v0, Landroid/widget/CheckBox;

    invoke-direct {v0, p0}, Landroid/widget/CheckBox;-><init>(Landroid/content/Context;)V

    .line 115
    const-string v2, "Offer lower quality when the game runs slowly"

    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setText(Ljava/lang/CharSequence;)V

    .line 116
    invoke-virtual {v0, v7}, Landroid/widget/CheckBox;->setTextColor(I)V

    .line 117
    sget-boolean v2, Lfr/testudo/spacecorsair/mod/ModVfx;->ask:Z

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 118
    new-instance v2, Lfr/testudo/spacecorsair/mod/ModVfx$2;

    invoke-direct {v2}, Lfr/testudo/spacecorsair/mod/ModVfx$2;-><init>()V

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 121
    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 122
    return-object v1

    .line 97
    :array_8c
    .array-data 4
        0x2
        0x1
        0x0
    .end array-data
.end method

.method static shot(Lfr/testudo/spacecorsair/business/projectiles/EnergyBullet;)V
    .registers 26

    .prologue
    .line 362
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModVfx;->quality()I

    move-result v2

    if-eqz v2, :cond_16

    if-eqz p0, :cond_16

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lfr/testudo/spacecorsair/business/projectiles/EnergyBullet;->removed:Z

    if-nez v2, :cond_16

    sget-object v2, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v2, v2, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-boolean v2, v2, Lfr/testudo/spacecorsair/game/Game;->mapMode:Z

    if-eqz v2, :cond_17

    .line 391
    :cond_16
    :goto_16
    return-void

    .line 364
    :cond_17
    :try_start_17
    sget v2, Lfr/testudo/spacecorsair/mod/ModVfx;->budgetCheap:I

    if-lez v2, :cond_16

    .line 365
    sget v2, Lfr/testudo/spacecorsair/mod/ModVfx;->budgetCheap:I

    add-int/lit8 v2, v2, -0x1

    sput v2, Lfr/testudo/spacecorsair/mod/ModVfx;->budgetCheap:I

    .line 366
    move-object/from16 v0, p0

    iget-object v2, v0, Lfr/testudo/spacecorsair/business/projectiles/EnergyBullet;->sender:Lfr/testudo/spacecorsair/business/Element;

    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModVfx;->fancyQ(Lfr/testudo/spacecorsair/business/Element;)F

    move-result v24

    .line 367
    move-object/from16 v0, p0

    iget-object v2, v0, Lfr/testudo/spacecorsair/business/projectiles/EnergyBullet;->sender:Lfr/testudo/spacecorsair/business/Element;

    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModVfx;->fancy(Lfr/testudo/spacecorsair/business/Element;)F

    move-result v2

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-lez v2, :cond_166

    const/high16 v2, 0x428c0000    # 70.0f

    move/from16 v23, v2

    .line 368
    :goto_3a
    move-object/from16 v0, p0

    iget v2, v0, Lfr/testudo/spacecorsair/business/projectiles/EnergyBullet;->r:F

    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModVfx;->col(F)F

    move-result v8

    move-object/from16 v0, p0

    iget v2, v0, Lfr/testudo/spacecorsair/business/projectiles/EnergyBullet;->g:F

    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModVfx;->col(F)F

    move-result v9

    move-object/from16 v0, p0

    iget v2, v0, Lfr/testudo/spacecorsair/business/projectiles/EnergyBullet;->b:F

    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModVfx;->col(F)F

    move-result v10

    .line 369
    move-object/from16 v0, p0

    iget-object v2, v0, Lfr/testudo/spacecorsair/business/projectiles/EnergyBullet;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v3, v2, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    move-object/from16 v0, p0

    iget-object v2, v0, Lfr/testudo/spacecorsair/business/projectiles/EnergyBullet;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v4, v2, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    .line 370
    sget v2, Lfr/testudo/spacecorsair/mod/ModVfx;->quality:I

    const/4 v5, 0x2

    if-ne v2, v5, :cond_16c

    const/4 v2, 0x1

    move/from16 v22, v2

    .line 371
    :goto_66
    const-string v2, "fx_glow"

    const v5, 0x4019999a    # 2.4f

    mul-float v5, v5, v23

    const v6, 0x4019999a    # 2.4f

    mul-float v6, v6, v23

    const/4 v7, 0x0

    if-eqz v22, :cond_171

    const v11, 0x3e99999a    # 0.3f

    :goto_78
    const/4 v12, 0x1

    invoke-static/range {v2 .. v12}, Lfr/testudo/spacecorsair/mod/ModFx;->spr(Ljava/lang/String;FFFFFFFFFZ)V

    .line 372
    move-object/from16 v0, p0

    iget-object v2, v0, Lfr/testudo/spacecorsair/business/projectiles/EnergyBullet;->speed:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v5, v2, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    move-object/from16 v0, p0

    iget-object v2, v0, Lfr/testudo/spacecorsair/business/projectiles/EnergyBullet;->speed:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v6, v2, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    .line 373
    mul-float v2, v5, v5

    mul-float v7, v6, v6

    add-float/2addr v2, v7

    float-to-double v12, v2

    invoke-static {v12, v13}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v12

    double-to-float v7, v12

    .line 374
    if-eqz v22, :cond_b7

    const v2, 0x3c23d70a    # 0.01f

    cmpl-float v2, v7, v2

    if-lez v2, :cond_b7

    .line 375
    const v2, 0x40266666    # 2.6f

    mul-float v11, v23, v2

    .line 376
    const-string v2, "fx_streak"

    div-float/2addr v5, v7

    mul-float/2addr v5, v11

    sub-float v5, v3, v5

    div-float/2addr v6, v7

    mul-float/2addr v6, v11

    sub-float v6, v4, v6

    const v7, 0x3f19999a    # 0.6f

    mul-float v7, v7, v23

    const v11, 0x3ecccccd    # 0.4f

    const/4 v12, 0x1

    invoke-static/range {v2 .. v12}, Lfr/testudo/spacecorsair/mod/ModFx;->strip(Ljava/lang/String;FFFFFFFFFZ)V

    .line 378
    :cond_b7
    const/4 v2, 0x0

    cmpg-float v2, v24, v2

    if-lez v2, :cond_16

    sget v2, Lfr/testudo/spacecorsair/mod/ModVfx;->budgetFancy:I

    if-lez v2, :cond_16

    .line 379
    sget v2, Lfr/testudo/spacecorsair/mod/ModVfx;->budgetFancy:I

    add-int/lit8 v2, v2, -0x1

    sput v2, Lfr/testudo/spacecorsair/mod/ModVfx;->budgetFancy:I

    .line 380
    const-string v2, "fx_glow"

    const v5, 0x408ccccd    # 4.4f

    mul-float v5, v5, v23

    const v6, 0x408ccccd    # 4.4f

    mul-float v6, v6, v23

    const/4 v7, 0x0

    const v11, 0x3ea3d70a    # 0.32f

    mul-float v11, v11, v24

    const/4 v12, 0x1

    invoke-static/range {v2 .. v12}, Lfr/testudo/spacecorsair/mod/ModFx;->spr(Ljava/lang/String;FFFFFFFFFZ)V

    .line 381
    const-string v11, "fx_core"

    const v2, 0x3f8ccccd    # 1.1f

    mul-float v14, v23, v2

    const v2, 0x3f8ccccd    # 1.1f

    mul-float v15, v23, v2

    const/16 v16, 0x0

    const/high16 v17, 0x3f800000    # 1.0f

    const/high16 v18, 0x3f800000    # 1.0f

    const/high16 v19, 0x3f800000    # 1.0f

    const v2, 0x3f266666    # 0.65f

    mul-float v20, v2, v24

    const/16 v21, 0x1

    move v12, v3

    move v13, v4

    invoke-static/range {v11 .. v21}, Lfr/testudo/spacecorsair/mod/ModFx;->spr(Ljava/lang/String;FFFFFFFFFZ)V

    .line 382
    move-object/from16 v0, p0

    iget-object v2, v0, Lfr/testudo/spacecorsair/business/projectiles/EnergyBullet;->sender:Lfr/testudo/spacecorsair/business/Element;

    invoke-static/range {p0 .. p0}, Lfr/testudo/spacecorsair/mod/ModWeapons;->familyOf(Ljava/lang/Object;)I

    move-result v5

    invoke-static {v2, v5}, Lfr/testudo/spacecorsair/mod/ModVfx;->keyOf(Lfr/testudo/spacecorsair/business/Element;I)Ljava/lang/String;

    move-result-object v2

    const-string v5, "_shot"

    invoke-static {v2, v5}, Lfr/testudo/spacecorsair/mod/ModVfx;->art(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 383
    if-eqz v11, :cond_132

    const v2, 0x400ccccd    # 2.2f

    mul-float v14, v23, v2

    const v2, 0x400ccccd    # 2.2f

    mul-float v15, v23, v2

    move-object/from16 v0, p0

    iget v0, v0, Lfr/testudo/spacecorsair/business/projectiles/EnergyBullet;->spin:F

    move/from16 v16, v0

    const/high16 v17, 0x3f800000    # 1.0f

    const/high16 v18, 0x3f800000    # 1.0f

    const/high16 v19, 0x3f800000    # 1.0f

    const v2, 0x3f666666    # 0.9f

    mul-float v20, v2, v24

    const/16 v21, 0x1

    move v12, v3

    move v13, v4

    invoke-static/range {v11 .. v21}, Lfr/testudo/spacecorsair/mod/ModFx;->spr(Ljava/lang/String;FFFFFFFFFZ)V

    .line 384
    :cond_132
    if-eqz v22, :cond_16

    sget v2, Lfr/testudo/spacecorsair/mod/ModVfx;->budgetRibbon:I

    if-lez v2, :cond_16

    .line 385
    sget v2, Lfr/testudo/spacecorsair/mod/ModVfx;->budgetRibbon:I

    add-int/lit8 v2, v2, -0x1

    sput v2, Lfr/testudo/spacecorsair/mod/ModVfx;->budgetRibbon:I

    .line 386
    const-string v11, "fx_glow"

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/high16 v16, 0x43820000    # 260.0f

    const v2, 0x3fa66666    # 1.3f

    mul-float v17, v23, v2

    const v2, 0x3e99999a    # 0.3f

    mul-float v18, v23, v2

    const/high16 v2, 0x3f000000    # 0.5f

    mul-float v22, v2, v24

    const/16 v23, 0x1

    const/16 v24, 0x0

    move v12, v3

    move v13, v4

    move/from16 v19, v8

    move/from16 v20, v9

    move/from16 v21, v10

    invoke-static/range {v11 .. v24}, Lfr/testudo/spacecorsair/mod/ModFx;->part(Ljava/lang/String;FFFFFFFFFFFZZ)V
    :try_end_161
    .catch Ljava/lang/Throwable; {:try_start_17 .. :try_end_161} :catch_163

    goto/16 :goto_16

    .line 388
    :catch_163
    move-exception v2

    goto/16 :goto_16

    .line 367
    :cond_166
    const/high16 v2, 0x42200000    # 40.0f

    move/from16 v23, v2

    goto/16 :goto_3a

    .line 370
    :cond_16c
    const/4 v2, 0x0

    move/from16 v22, v2

    goto/16 :goto_66

    .line 371
    :cond_171
    const v11, 0x3e4ccccd    # 0.2f

    goto/16 :goto_78
.end method

.method static spawned(Ljava/util/List;)V
    .registers 31
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 395
    if-eqz p0, :cond_e

    invoke-interface/range {p0 .. p0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_e

    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModVfx;->quality()I

    move-result v2

    if-nez v2, :cond_f

    .line 418
    :cond_e
    :goto_e
    return-void

    .line 397
    :cond_f
    :try_start_f
    sget-object v2, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v2, v2, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-boolean v2, v2, Lfr/testudo/spacecorsair/game/Game;->mapMode:Z

    if-nez v2, :cond_e

    .line 398
    sget v2, Lfr/testudo/spacecorsair/mod/ModVfx;->quality:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_3f

    const/4 v2, 0x1

    move/from16 v27, v2

    .line 399
    :goto_1f
    const/4 v2, 0x0

    move/from16 v28, v2

    :goto_22
    invoke-interface/range {p0 .. p0}, Ljava/util/List;->size()I

    move-result v2

    move/from16 v0, v28

    if-ge v0, v2, :cond_e

    sget v2, Lfr/testudo/spacecorsair/mod/ModVfx;->budgetMuzzle:I

    if-lez v2, :cond_e

    .line 400
    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    .line 401
    instance-of v3, v2, Lfr/testudo/spacecorsair/business/projectiles/EnergyBullet;

    if-nez v3, :cond_43

    .line 399
    :cond_3a
    :goto_3a
    add-int/lit8 v2, v28, 0x1

    move/from16 v28, v2

    goto :goto_22

    .line 398
    :cond_3f
    const/4 v2, 0x0

    move/from16 v27, v2

    goto :goto_1f

    .line 402
    :cond_43
    check-cast v2, Lfr/testudo/spacecorsair/business/projectiles/EnergyBullet;

    .line 403
    iget-object v3, v2, Lfr/testudo/spacecorsair/business/projectiles/EnergyBullet;->sender:Lfr/testudo/spacecorsair/business/Element;

    invoke-static {v3}, Lfr/testudo/spacecorsair/mod/ModVfx;->fancyQ(Lfr/testudo/spacecorsair/business/Element;)F

    move-result v29

    .line 404
    if-nez v27, :cond_52

    const/4 v3, 0x0

    cmpg-float v3, v29, v3

    if-lez v3, :cond_3a

    .line 405
    :cond_52
    iget-object v3, v2, Lfr/testudo/spacecorsair/business/projectiles/EnergyBullet;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v3, v3, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    iget-object v4, v2, Lfr/testudo/spacecorsair/business/projectiles/EnergyBullet;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v4, v4, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    .line 406
    const/high16 v5, 0x43480000    # 200.0f

    invoke-static {v3, v4, v5}, Lfr/testudo/spacecorsair/mod/ModVfx;->near(FFF)Z

    move-result v5

    if-eqz v5, :cond_3a

    .line 407
    sget v5, Lfr/testudo/spacecorsair/mod/ModVfx;->budgetMuzzle:I

    add-int/lit8 v5, v5, -0x1

    sput v5, Lfr/testudo/spacecorsair/mod/ModVfx;->budgetMuzzle:I

    .line 408
    iget v5, v2, Lfr/testudo/spacecorsair/business/projectiles/EnergyBullet;->r:F

    invoke-static {v5}, Lfr/testudo/spacecorsair/mod/ModVfx;->col(F)F

    move-result v10

    iget v5, v2, Lfr/testudo/spacecorsair/business/projectiles/EnergyBullet;->g:F

    invoke-static {v5}, Lfr/testudo/spacecorsair/mod/ModVfx;->col(F)F

    move-result v11

    iget v2, v2, Lfr/testudo/spacecorsair/business/projectiles/EnergyBullet;->b:F

    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModVfx;->col(F)F

    move-result v12

    .line 409
    const-string v2, "fx_glow"

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/high16 v7, 0x42dc0000    # 110.0f

    const/high16 v8, 0x42200000    # 40.0f

    const/high16 v9, 0x42b40000    # 90.0f

    const v13, 0x3f333333    # 0.7f

    const/4 v14, 0x1

    const/4 v15, 0x1

    invoke-static/range {v2 .. v15}, Lfr/testudo/spacecorsair/mod/ModFx;->part(Ljava/lang/String;FFFFFFFFFFFZZ)V

    .line 410
    const/4 v2, 0x0

    cmpl-float v2, v29, v2

    if-lez v2, :cond_3a

    .line 411
    const-string v13, "fx_core"

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/high16 v18, 0x43160000    # 150.0f

    const/high16 v19, 0x42480000    # 50.0f

    const/high16 v20, 0x430c0000    # 140.0f

    const/high16 v21, 0x3f800000    # 1.0f

    const/high16 v22, 0x3f800000    # 1.0f

    const/high16 v23, 0x3f800000    # 1.0f

    const v2, 0x3f4ccccd    # 0.8f

    mul-float v24, v2, v29

    const/16 v25, 0x1

    const/16 v26, 0x1

    move v14, v3

    move v15, v4

    invoke-static/range {v13 .. v26}, Lfr/testudo/spacecorsair/mod/ModFx;->part(Ljava/lang/String;FFFFFFFFFFFZZ)V

    .line 412
    const-string v2, "fx_ring"

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/high16 v7, 0x435c0000    # 220.0f

    const/high16 v8, 0x41f00000    # 30.0f

    const/high16 v9, 0x43480000    # 200.0f

    const v13, 0x3f0ccccd    # 0.55f

    mul-float v13, v13, v29

    const/4 v14, 0x1

    const/4 v15, 0x1

    invoke-static/range {v2 .. v15}, Lfr/testudo/spacecorsair/mod/ModFx;->part(Ljava/lang/String;FFFFFFFFFFFZZ)V
    :try_end_c5
    .catch Ljava/lang/Throwable; {:try_start_f .. :try_end_c5} :catch_c7

    goto/16 :goto_3a

    .line 415
    :catch_c7
    move-exception v2

    goto/16 :goto_e
.end method

.method static tick(J)V
    .registers 18

    .prologue
    .line 524
    const/4 v0, 0x0

    move v14, v0

    :goto_2
    const/16 v0, 0x20

    if-ge v14, v0, :cond_76

    .line 525
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModVfx;->dOn:[Z

    aget-boolean v0, v0, v14

    if-eqz v0, :cond_14

    sget-object v0, Lfr/testudo/spacecorsair/mod/ModVfx;->dAt:[J

    aget-wide v0, v0, v14

    cmp-long v0, p0, v0

    if-gez v0, :cond_18

    .line 524
    :cond_14
    :goto_14
    add-int/lit8 v0, v14, 0x1

    move v14, v0

    goto :goto_2

    .line 526
    :cond_18
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModVfx;->dOn:[Z

    const/4 v1, 0x0

    aput-boolean v1, v0, v14

    .line 527
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModVfx;->dAt:[J

    aget-wide v0, v0, v14

    sub-long v0, p0, v0

    const-wide/16 v2, 0x7d0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_14

    .line 528
    const-string v0, "fx_explosion_big_sheet"

    const/16 v1, 0x8

    const/16 v2, 0x40

    sget-object v3, Lfr/testudo/spacecorsair/mod/ModVfx;->dX:[F

    aget v3, v3, v14

    sget-object v4, Lfr/testudo/spacecorsair/mod/ModVfx;->dY:[F

    aget v4, v4, v14

    sget-object v5, Lfr/testudo/spacecorsair/mod/ModVfx;->dS:[F

    aget v5, v5, v14

    const-wide/16 v6, 0x384

    const/high16 v8, 0x3f800000    # 1.0f

    const/high16 v9, 0x3f400000    # 0.75f

    const v10, 0x3ee66666    # 0.45f

    const/4 v11, 0x1

    invoke-static/range {v0 .. v11}, Lfr/testudo/spacecorsair/mod/ModLive;->fx(Ljava/lang/String;IIFFFJFFFZ)V

    .line 529
    const-string v0, "fx_glow"

    sget-object v1, Lfr/testudo/spacecorsair/mod/ModVfx;->dX:[F

    aget v1, v1, v14

    sget-object v2, Lfr/testudo/spacecorsair/mod/ModVfx;->dY:[F

    aget v2, v2, v14

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/high16 v5, 0x43340000    # 180.0f

    sget-object v6, Lfr/testudo/spacecorsair/mod/ModVfx;->dS:[F

    aget v6, v6, v14

    const v7, 0x3ecccccd    # 0.4f

    mul-float/2addr v6, v7

    sget-object v7, Lfr/testudo/spacecorsair/mod/ModVfx;->dS:[F

    aget v7, v7, v14

    const v8, 0x3f99999a    # 1.2f

    mul-float/2addr v7, v8

    const/high16 v8, 0x3f800000    # 1.0f

    const v9, 0x3f4ccccd    # 0.8f

    const/high16 v10, 0x3f000000    # 0.5f

    const v11, 0x3f333333    # 0.7f

    const/4 v12, 0x1

    const/4 v13, 0x1

    invoke-static/range {v0 .. v13}, Lfr/testudo/spacecorsair/mod/ModFx;->part(Ljava/lang/String;FFFFFFFFFFFZZ)V

    goto :goto_14

    .line 531
    :cond_76
    return-void
.end method

.method private static watch()V
    .registers 14

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    const-wide/16 v12, 0x3e8

    const-wide/16 v2, 0x0

    .line 153
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    .line 154
    sget-wide v0, Lfr/testudo/spacecorsair/mod/ModVfx;->lastFrame:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_76

    move-wide v0, v2

    .line 155
    :goto_11
    sput-wide v8, Lfr/testudo/spacecorsair/mod/ModVfx;->lastFrame:J

    .line 156
    sget v4, Lfr/testudo/spacecorsair/mod/ModVfx;->testMode:I

    if-gez v4, :cond_22

    const-string v4, "corsair_nodialog"

    invoke-static {v4}, Lfr/testudo/spacecorsair/mod/ModDev;->testFlag(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_7b

    move v4, v5

    :goto_20
    sput v4, Lfr/testudo/spacecorsair/mod/ModVfx;->testMode:I

    .line 157
    :cond_22
    sget v4, Lfr/testudo/spacecorsair/mod/ModVfx;->testMode:I

    if-ne v4, v5, :cond_55

    sget-wide v10, Lfr/testudo/spacecorsair/mod/ModVfx;->testAt:J

    sub-long v10, v8, v10

    cmp-long v4, v10, v12

    if-lez v4, :cond_55

    .line 158
    sput-wide v8, Lfr/testudo/spacecorsair/mod/ModVfx;->testAt:J

    .line 159
    const-string v4, "corsair_vfx_prompt"

    invoke-static {v4}, Lfr/testudo/spacecorsair/mod/ModDev;->testFlag(Ljava/lang/String;)Z

    move-result v4

    sput-boolean v4, Lfr/testudo/spacecorsair/mod/ModVfx;->testForce:Z

    .line 160
    const-string v4, "corsair_vfx_q"

    invoke-static {v4}, Lfr/testudo/spacecorsair/mod/ModDev;->testValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 161
    if-eqz v4, :cond_55

    sget-object v7, Lfr/testudo/spacecorsair/mod/ModVfx;->testQ:Ljava/lang/String;

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_55

    .line 162
    sput-object v4, Lfr/testudo/spacecorsair/mod/ModVfx;->testQ:Ljava/lang/String;

    .line 163
    :try_start_4a
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-static {v4}, Lfr/testudo/spacecorsair/mod/ModVfx;->setQuality(I)V
    :try_end_55
    .catch Ljava/lang/Throwable; {:try_start_4a .. :try_end_55} :catch_109

    .line 166
    :cond_55
    :goto_55
    sget-object v4, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v4, v4, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-boolean v4, v4, Lfr/testudo/spacecorsair/game/Game;->mapMode:Z

    .line 167
    cmp-long v7, v0, v2

    if-lez v7, :cond_69

    cmp-long v7, v0, v12

    if-gtz v7, :cond_69

    if-nez v4, :cond_69

    sget-boolean v7, Lfr/testudo/spacecorsair/mod/ModVfx;->prompting:Z

    if-eqz v7, :cond_7d

    .line 168
    :cond_69
    sput-wide v2, Lfr/testudo/spacecorsair/mod/ModVfx;->winMs:J

    sput v6, Lfr/testudo/spacecorsair/mod/ModVfx;->winN:I

    .line 169
    cmp-long v0, v0, v12

    if-gtz v0, :cond_73

    if-eqz v4, :cond_75

    :cond_73
    sput-wide v2, Lfr/testudo/spacecorsair/mod/ModVfx;->slowMs:J

    .line 186
    :cond_75
    :goto_75
    return-void

    .line 154
    :cond_76
    sget-wide v0, Lfr/testudo/spacecorsair/mod/ModVfx;->lastFrame:J

    sub-long v0, v8, v0

    goto :goto_11

    :cond_7b
    move v4, v6

    .line 156
    goto :goto_20

    .line 172
    :cond_7d
    sget-wide v8, Lfr/testudo/spacecorsair/mod/ModVfx;->winMs:J

    add-long/2addr v0, v8

    sput-wide v0, Lfr/testudo/spacecorsair/mod/ModVfx;->winMs:J

    .line 173
    sget v0, Lfr/testudo/spacecorsair/mod/ModVfx;->winN:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lfr/testudo/spacecorsair/mod/ModVfx;->winN:I

    .line 174
    sget-wide v0, Lfr/testudo/spacecorsair/mod/ModVfx;->winMs:J

    cmp-long v0, v0, v12

    if-ltz v0, :cond_75

    .line 175
    sget v0, Lfr/testudo/spacecorsair/mod/ModVfx;->winN:I

    int-to-float v0, v0

    const/high16 v1, 0x447a0000    # 1000.0f

    mul-float/2addr v0, v1

    sget-wide v8, Lfr/testudo/spacecorsair/mod/ModVfx;->winMs:J

    long-to-float v1, v8

    div-float v4, v0, v1

    .line 176
    sget v0, Lfr/testudo/spacecorsair/mod/ModVfx;->testMode:I

    if-ne v0, v5, :cond_db

    sget v0, Lfr/testudo/spacecorsair/mod/ModVfx;->testLog:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lfr/testudo/spacecorsair/mod/ModVfx;->testLog:I

    rem-int/lit8 v0, v0, 0x5

    if-nez v0, :cond_db

    const-string v0, "vfx"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "fps "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, " slow "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-wide v8, Lfr/testudo/spacecorsair/mod/ModVfx;->slowMs:J

    invoke-virtual {v1, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, " q "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v5, Lfr/testudo/spacecorsair/mod/ModVfx;->quality:I

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lfr/testudo/spacecorsair/mod/ModDev;->ev(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    :cond_db
    const/high16 v0, 0x41f00000    # 30.0f

    cmpg-float v0, v4, v0

    if-ltz v0, :cond_e5

    sget-boolean v0, Lfr/testudo/spacecorsair/mod/ModVfx;->testForce:Z

    if-eqz v0, :cond_103

    :cond_e5
    sget-wide v0, Lfr/testudo/spacecorsair/mod/ModVfx;->slowMs:J

    sget-wide v8, Lfr/testudo/spacecorsair/mod/ModVfx;->winMs:J

    add-long/2addr v0, v8

    sput-wide v0, Lfr/testudo/spacecorsair/mod/ModVfx;->slowMs:J

    .line 179
    :goto_ec
    sput-wide v2, Lfr/testudo/spacecorsair/mod/ModVfx;->winMs:J

    .line 180
    sput v6, Lfr/testudo/spacecorsair/mod/ModVfx;->winN:I

    .line 181
    sget-boolean v0, Lfr/testudo/spacecorsair/mod/ModVfx;->testForce:Z

    if-eqz v0, :cond_106

    const-wide/16 v0, 0xbb8

    .line 182
    :goto_f6
    sget-wide v6, Lfr/testudo/spacecorsair/mod/ModVfx;->slowMs:J

    cmp-long v0, v6, v0

    if-lez v0, :cond_75

    .line 183
    sput-wide v2, Lfr/testudo/spacecorsair/mod/ModVfx;->slowMs:J

    .line 184
    invoke-static {v4}, Lfr/testudo/spacecorsair/mod/ModVfx;->maybePrompt(F)V

    goto/16 :goto_75

    .line 178
    :cond_103
    sput-wide v2, Lfr/testudo/spacecorsair/mod/ModVfx;->slowMs:J

    goto :goto_ec

    .line 181
    :cond_106
    const-wide/16 v0, 0x2710

    goto :goto_f6

    .line 163
    :catch_109
    move-exception v4

    goto/16 :goto_55
.end method
