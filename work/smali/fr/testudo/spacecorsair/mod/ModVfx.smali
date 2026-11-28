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

.field private static testBoom:Ljava/lang/String;

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

    .line 290
    new-instance v0, Ljava/util/IdentityHashMap;

    invoke-direct {v0}, Ljava/util/IdentityHashMap;-><init>()V

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModVfx;->fancyOf:Ljava/util/IdentityHashMap;

    .line 344
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

    .line 345
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModVfx;->hasArt:Ljava/util/HashMap;

    .line 486
    new-array v0, v3, [J

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModVfx;->dAt:[J

    .line 487
    new-array v0, v3, [F

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModVfx;->dX:[F

    new-array v0, v3, [F

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModVfx;->dY:[F

    new-array v0, v3, [F

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModVfx;->dS:[F

    .line 488
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

    .line 349
    if-nez p0, :cond_4

    .line 353
    :goto_3
    return-object v2

    .line 350
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

    .line 351
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModVfx;->hasArt:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 352
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

    .line 353
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

    .line 352
    :cond_44
    const/4 v0, 0x0

    goto :goto_2c

    :cond_46
    move-object v0, v2

    .line 353
    goto :goto_42
.end method

.method private static byStage(I)F
    .registers 2

    .prologue
    .line 331
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

    .line 560
    :goto_2
    const/16 v2, 0x20

    if-ge v0, v2, :cond_d

    sget-object v2, Lfr/testudo/spacecorsair/mod/ModVfx;->dOn:[Z

    aput-boolean v1, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 561
    :cond_d
    return-void
.end method

.method private static col(F)F
    .registers 3

    .prologue
    const v0, 0x3d4ccccd    # 0.05f

    .line 382
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
    .line 493
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModVfx;->quality()I

    move-result v2

    if-eqz v2, :cond_11

    if-eqz p0, :cond_11

    const/4 v2, 0x0

    cmpg-float v2, p1, v2

    if-lez v2, :cond_11

    sget v2, Lfr/testudo/spacecorsair/mod/ModVfx;->budgetDeath:I

    if-gtz v2, :cond_12

    .line 537
    :cond_11
    :goto_11
    return-void

    .line 495
    :cond_12
    :try_start_12
    move-object/from16 v0, p0

    iget-object v2, v0, Lfr/testudo/spacecorsair/business/Element;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v3, v2, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    move-object/from16 v0, p0

    iget-object v2, v0, Lfr/testudo/spacecorsair/business/Element;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v4, v2, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    .line 496
    move/from16 v0, p1

    invoke-static {v3, v4, v0}, Lfr/testudo/spacecorsair/mod/ModVfx;->near(FFF)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 497
    sget v2, Lfr/testudo/spacecorsair/mod/ModVfx;->budgetDeath:I

    add-int/lit8 v2, v2, -0x1

    sput v2, Lfr/testudo/spacecorsair/mod/ModVfx;->budgetDeath:I

    .line 498
    sget v2, Lfr/testudo/spacecorsair/mod/ModVfx;->quality:I

    const/4 v5, 0x2

    if-ne v2, v5, :cond_e1

    const/4 v2, 0x1

    move/from16 v18, v2

    .line 499
    :goto_34
    const/high16 v2, 0x45160000    # 2400.0f

    move/from16 v0, p1

    invoke-static {v0, v2}, Ljava/lang/Math;->min(FF)F

    move-result v19

    .line 500
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

    .line 501
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

    .line 502
    if-eqz v18, :cond_e6

    const/16 v2, 0x8

    move/from16 v16, v2

    .line 503
    :goto_81
    const/4 v2, 0x0

    move/from16 v17, v2

    :goto_84
    move/from16 v0, v17

    move/from16 v1, v16

    if-ge v0, v1, :cond_ea

    .line 504
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v6

    const-wide v8, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v6, v8

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    mul-double/2addr v6, v8

    double-to-float v6, v6

    .line 505
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

    .line 506
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

    .line 507
    const v2, 0x3d23d70a    # 0.04f

    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModFx;->lastStretch(F)V

    .line 508
    const/high16 v2, 0x40200000    # 2.5f

    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModFx;->lastDrag(F)V

    .line 503
    add-int/lit8 v2, v17, 0x1

    move/from16 v17, v2

    goto :goto_84

    .line 498
    :cond_e1
    const/4 v2, 0x0

    move/from16 v18, v2

    goto/16 :goto_34

    .line 502
    :cond_e6
    const/4 v2, 0x4

    move/from16 v16, v2

    goto :goto_81

    .line 510
    :cond_ea
    if-eqz v18, :cond_fe

    const/high16 v2, 0x3fc00000    # 1.5f

    mul-float v5, v19, v2

    const v6, 0x443b8000    # 750.0f

    const/high16 v7, 0x3f800000    # 1.0f

    const v8, 0x3f4ccccd    # 0.8f

    const v9, 0x3f19999a    # 0.6f

    invoke-static/range {v3 .. v9}, Lfr/testudo/spacecorsair/mod/ModFx;->boom(FFFFFFF)V

    .line 511
    :cond_fe
    invoke-static/range {p0 .. p0}, Lfr/testudo/spacecorsair/mod/ModVfx;->fancyQ(Lfr/testudo/spacecorsair/business/Element;)F

    move-result v20

    .line 512
    const/4 v2, 0x0

    cmpg-float v2, v20, v2

    if-lez v2, :cond_11

    .line 513
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

    .line 514
    if-eqz v18, :cond_184

    const/high16 v2, 0x40400000    # 3.0f

    const/high16 v5, 0x40400000    # 3.0f

    mul-float v5, v5, v20

    add-float/2addr v2, v5

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    .line 515
    :goto_139
    const/4 v5, 0x0

    :goto_13a
    if-ge v5, v2, :cond_186

    .line 516
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

    .line 517
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

    .line 515
    add-int/lit8 v5, v5, 0x1

    goto :goto_13a

    .line 514
    :cond_184
    const/4 v2, 0x2

    goto :goto_139

    .line 519
    :cond_186
    if-eqz v18, :cond_1e6

    const/16 v2, 0xe

    :goto_18a
    int-to-float v2, v2

    mul-float v2, v2, v20

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v17

    .line 520
    const/4 v2, 0x0

    move/from16 v16, v2

    :goto_194
    move/from16 v0, v16

    move/from16 v1, v17

    if-ge v0, v1, :cond_1e8

    .line 521
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v6

    const-wide v8, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v6, v8

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    mul-double/2addr v6, v8

    double-to-float v6, v6

    .line 522
    const/high16 v2, 0x43960000    # 300.0f

    const v5, 0x44898000    # 1100.0f

    invoke-static {v2, v5}, Lfr/testudo/spacecorsair/mod/ModFx;->rnd(FF)F

    move-result v7

    .line 523
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

    .line 524
    const/high16 v2, 0x3fc00000    # 1.5f

    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModFx;->lastDrag(F)V

    .line 520
    add-int/lit8 v2, v16, 0x1

    move/from16 v16, v2

    goto :goto_194

    .line 519
    :cond_1e6
    const/4 v2, 0x6

    goto :goto_18a

    .line 526
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

    .line 527
    :goto_20a
    if-eqz v2, :cond_238

    .line 528
    const-string v2, "fx_boom_hero_sheet"

    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModArt;->lazyTex(Ljava/lang/String;)Lfr/testudo/spacecorsair/display/Texture;

    move-result-object v2

    if-eqz v2, :cond_261

    const-string v2, "fx_boom_hero_sheet"

    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModArt;->ready(Ljava/lang/String;)Lfr/testudo/spacecorsair/display/Texture;

    move-result-object v2

    if-eqz v2, :cond_261

    .line 529
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

    .line 532
    :cond_238
    :goto_238
    sget-object v2, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v2, v2, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->playerShip:Lfr/testudo/spacecorsair/business/player/PlayerShip;

    .line 533
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

    .line 534
    :catch_25c
    move-exception v2

    goto/16 :goto_11

    .line 526
    :cond_25f
    const/4 v2, 0x0

    goto :goto_20a

    .line 530
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

    .line 280
    sput-boolean v0, Lfr/testudo/spacecorsair/mod/ModArt;->hold:Z

    .line 281
    sput-wide v2, Lfr/testudo/spacecorsair/mod/ModVfx;->lastFrame:J

    .line 282
    sput-wide v2, Lfr/testudo/spacecorsair/mod/ModVfx;->slowMs:J

    .line 283
    sput-boolean v0, Lfr/testudo/spacecorsair/mod/ModVfx;->prompting:Z

    .line 284
    if-eqz p0, :cond_10

    .line 285
    :try_start_d
    invoke-static {}, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->resume()V
    :try_end_10
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_10} :catch_11

    .line 287
    :cond_10
    :goto_10
    return-void

    .line 285
    :catch_11
    move-exception v0

    goto :goto_10
.end method

.method static fancy(Lfr/testudo/spacecorsair/business/Element;)F
    .registers 9

    .prologue
    const-wide/16 v6, 0x3e8

    const/4 v1, 0x0

    .line 297
    if-nez p0, :cond_6

    .line 310
    :goto_5
    return v1

    .line 298
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

    .line 299
    :cond_18
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 300
    sget-wide v4, Lfr/testudo/spacecorsair/mod/ModVfx;->fancyAt:J

    sub-long v4, v2, v4

    cmp-long v0, v4, v6

    if-lez v0, :cond_2e

    sget-object v0, Lfr/testudo/spacecorsair/mod/ModVfx;->fancyOf:Ljava/util/IdentityHashMap;

    invoke-virtual {v0}, Ljava/util/IdentityHashMap;->clear()V

    sput-wide v2, Lfr/testudo/spacecorsair/mod/ModVfx;->fancyAt:J

    const/4 v0, 0x0

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModVfx;->lastE:Lfr/testudo/spacecorsair/business/Element;

    .line 301
    :cond_2e
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModVfx;->fancyOf:Ljava/util/IdentityHashMap;

    invoke-virtual {v0, p0}, Ljava/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    .line 302
    if-nez v0, :cond_45

    .line 304
    :try_start_38
    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModVfx;->fancyNow(Lfr/testudo/spacecorsair/business/Element;)F
    :try_end_3b
    .catch Ljava/lang/Throwable; {:try_start_38 .. :try_end_3b} :catch_52

    move-result v0

    .line 305
    :goto_3c
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    .line 306
    sget-object v1, Lfr/testudo/spacecorsair/mod/ModVfx;->fancyOf:Ljava/util/IdentityHashMap;

    invoke-virtual {v1, p0, v0}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 308
    :cond_45
    sput-object p0, Lfr/testudo/spacecorsair/mod/ModVfx;->lastE:Lfr/testudo/spacecorsair/business/Element;

    .line 309
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v1

    sput v1, Lfr/testudo/spacecorsair/mod/ModVfx;->lastK:F

    .line 310
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v1

    goto :goto_5

    .line 304
    :catch_52
    move-exception v0

    move v0, v1

    goto :goto_3c
.end method

.method private static fancyNow(Lfr/testudo/spacecorsair/business/Element;)F
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 314
    instance-of v0, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;

    if-eqz v0, :cond_43

    move-object v0, p0

    .line 315
    check-cast v0, Lfr/testudo/spacecorsair/business/player/PlayerShip;

    .line 316
    iget-object v2, v0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->shipSpec:Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;

    if-nez v2, :cond_e

    move v0, v1

    .line 327
    :goto_d
    return v0

    .line 317
    :cond_e
    iget-object v2, v0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->shipSpec:Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;

    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModShips;->hullFor(Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;)Lfr/testudo/spacecorsair/mod/ModShips$Hull;

    move-result-object v2

    .line 318
    if-eqz v2, :cond_23

    iget v0, v2, Lfr/testudo/spacecorsair/mod/ModShips$Hull;->cls:I

    .line 319
    :goto_18
    const/4 v2, 0x4

    if-eq v0, v2, :cond_2a

    const/4 v2, 0x6

    if-eq v0, v2, :cond_2a

    const/4 v2, 0x5

    if-eq v0, v2, :cond_2a

    move v0, v1

    goto :goto_d

    .line 318
    :cond_23
    iget-object v0, v0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->shipSpec:Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModShips;->originalClass(Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;)I

    move-result v0

    goto :goto_18

    .line 320
    :cond_2a
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->playerShip:Lfr/testudo/spacecorsair/business/player/PlayerShip;

    if-eq p0, v0, :cond_32

    move v0, v1

    goto :goto_d

    .line 321
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

    .line 323
    :cond_43
    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/Mod;->isDrone(Lfr/testudo/spacecorsair/business/Element;)Z

    move-result v0

    if-eqz v0, :cond_4b

    move v0, v1

    goto :goto_d

    .line 324
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

    .line 325
    :cond_5a
    instance-of v0, p0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    if-nez v0, :cond_60

    move v0, v1

    goto :goto_d

    .line 326
    :cond_60
    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModWreck;->sizeClass(Lfr/testudo/spacecorsair/business/Element;)I

    move-result v0

    const/4 v2, 0x3

    if-ge v0, v2, :cond_69

    move v0, v1

    goto :goto_d

    .line 327
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

    .line 336
    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModVfx;->fancy(Lfr/testudo/spacecorsair/business/Element;)F

    move-result v0

    .line 337
    cmpg-float v2, v0, v1

    if-gtz v2, :cond_a

    .line 338
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

    .line 159
    const/16 v0, 0xa0

    sput v0, Lfr/testudo/spacecorsair/mod/ModVfx;->budgetCheap:I

    .line 160
    const/16 v0, 0x30

    sput v0, Lfr/testudo/spacecorsair/mod/ModVfx;->budgetFancy:I

    .line 161
    const/16 v0, 0x28

    sput v0, Lfr/testudo/spacecorsair/mod/ModVfx;->budgetRibbon:I

    .line 162
    sput v1, Lfr/testudo/spacecorsair/mod/ModVfx;->budgetMuzzle:I

    .line 163
    sput v1, Lfr/testudo/spacecorsair/mod/ModVfx;->budgetImpact:I

    .line 164
    const/4 v0, 0x3

    sput v0, Lfr/testudo/spacecorsair/mod/ModVfx;->budgetDeath:I

    .line 166
    :try_start_15
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModVfx;->watch()V
    :try_end_18
    .catch Ljava/lang/Throwable; {:try_start_15 .. :try_end_18} :catch_19

    .line 170
    :goto_18
    return-void

    .line 167
    :catch_19
    move-exception v0

    goto :goto_18
.end method

.method static impact(Lfr/testudo/spacecorsair/business/projectiles/EnergyBullet;Lfr/testudo/spacecorsair/business/Element;I)V
    .registers 22

    .prologue
    .line 447
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModVfx;->quality()I

    move-result v2

    if-eqz v2, :cond_c

    if-eqz p0, :cond_c

    sget v2, Lfr/testudo/spacecorsair/mod/ModVfx;->budgetImpact:I

    if-gtz v2, :cond_d

    .line 477
    :cond_c
    :goto_c
    return-void

    .line 449
    :cond_d
    :try_start_d
    sget-object v2, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v2, v2, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-boolean v2, v2, Lfr/testudo/spacecorsair/game/Game;->mapMode:Z

    if-nez v2, :cond_c

    .line 450
    move-object/from16 v0, p0

    iget-object v2, v0, Lfr/testudo/spacecorsair/business/projectiles/EnergyBullet;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v3, v2, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    move-object/from16 v0, p0

    iget-object v2, v0, Lfr/testudo/spacecorsair/business/projectiles/EnergyBullet;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v4, v2, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    .line 451
    const/high16 v2, 0x43480000    # 200.0f

    invoke-static {v3, v4, v2}, Lfr/testudo/spacecorsair/mod/ModVfx;->near(FFF)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 452
    sget v2, Lfr/testudo/spacecorsair/mod/ModVfx;->budgetImpact:I

    add-int/lit8 v2, v2, -0x1

    sput v2, Lfr/testudo/spacecorsair/mod/ModVfx;->budgetImpact:I

    .line 453
    sget v2, Lfr/testudo/spacecorsair/mod/ModVfx;->quality:I

    const/4 v5, 0x2

    if-ne v2, v5, :cond_a2

    const/4 v2, 0x1

    move/from16 v18, v2

    .line 454
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

    .line 455
    if-eqz v18, :cond_a6

    const/4 v2, 0x3

    move/from16 v16, v2

    .line 456
    :goto_54
    const/4 v2, 0x0

    move/from16 v17, v2

    :goto_57
    move/from16 v0, v17

    move/from16 v1, v16

    if-ge v0, v1, :cond_aa

    .line 457
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v6

    const-wide v8, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v6, v8

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    mul-double/2addr v6, v8

    double-to-float v6, v6

    .line 458
    const/high16 v2, 0x437a0000    # 250.0f

    const v5, 0x44228000    # 650.0f

    invoke-static {v2, v5}, Lfr/testudo/spacecorsair/mod/ModFx;->rnd(FF)F

    move-result v7

    .line 459
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

    .line 460
    const v2, 0x3d4ccccd    # 0.05f

    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModFx;->lastStretch(F)V

    .line 461
    const/high16 v2, 0x40400000    # 3.0f

    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModFx;->lastDrag(F)V

    .line 456
    add-int/lit8 v2, v17, 0x1

    move/from16 v17, v2

    goto :goto_57

    .line 453
    :cond_a2
    const/4 v2, 0x0

    move/from16 v18, v2

    goto :goto_37

    .line 455
    :cond_a6
    const/4 v2, 0x2

    move/from16 v16, v2

    goto :goto_54

    .line 463
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

    .line 464
    move-object/from16 v0, p0

    iget-object v2, v0, Lfr/testudo/spacecorsair/business/projectiles/EnergyBullet;->sender:Lfr/testudo/spacecorsair/business/Element;

    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModVfx;->fancyQ(Lfr/testudo/spacecorsair/business/Element;)F

    move-result v16

    .line 465
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

    .line 466
    :goto_db
    if-eqz v2, :cond_12a

    .line 467
    const/4 v5, 0x0

    cmpl-float v5, v16, v5

    if-lez v5, :cond_120

    const/high16 v5, 0x43160000    # 150.0f

    const/high16 v6, 0x42b40000    # 90.0f

    mul-float v6, v6, v16

    add-float v9, v5, v6

    .line 468
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

    .line 469
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v2

    const-wide v4, 0x4076800000000000L    # 360.0

    mul-double/2addr v2, v4

    double-to-float v2, v2

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lfr/testudo/spacecorsair/mod/ModFx;->lastSpin(FF)V

    goto/16 :goto_c

    .line 474
    :catch_11b
    move-exception v2

    goto/16 :goto_c

    .line 465
    :cond_11e
    const/4 v2, 0x0

    goto :goto_db

    .line 467
    :cond_120
    const/high16 v9, 0x428c0000    # 70.0f

    goto :goto_ea

    .line 468
    :cond_123
    const/high16 v7, 0x43480000    # 200.0f

    goto :goto_f3

    :cond_126
    const v13, 0x3f333333    # 0.7f

    goto :goto_105

    .line 470
    :cond_12a
    const/4 v2, 0x0

    cmpl-float v2, v16, v2

    if-lez v2, :cond_c

    .line 471
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

    .line 472
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
    .line 480
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

    .line 481
    :goto_12
    return v0

    .line 480
    :cond_13
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 481
    :cond_16
    const/4 v0, -0x1

    goto :goto_12
.end method

.method private static keyOf(Lfr/testudo/spacecorsair/business/Element;I)Ljava/lang/String;
    .registers 5

    .prologue
    const/4 v0, -0x1

    .line 358
    .line 359
    if-eqz p0, :cond_19

    iget-boolean v1, p0, Lfr/testudo/spacecorsair/business/Element;->isPlayer:Z

    if-nez v1, :cond_19

    .line 360
    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModCapitals;->cap(Ljava/lang/Object;)Lfr/testudo/spacecorsair/mod/ModCapitals$Cap;

    move-result-object v1

    .line 361
    if-eqz v1, :cond_34

    iget-object v2, v1, Lfr/testudo/spacecorsair/mod/ModCapitals$Cap;->f:Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;

    if-eqz v2, :cond_34

    iget-object v0, v1, Lfr/testudo/spacecorsair/mod/ModCapitals$Cap;->f:Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;

    iget-object v0, v0, Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;->key:Ljava/lang/String;

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModVfx;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 367
    :cond_19
    :goto_19
    if-ltz v0, :cond_41

    sget-object v1, Lfr/testudo/spacecorsair/mod/ModCapitals;->FACTIONS:[Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;

    array-length v1, v1

    if-ge v0, v1, :cond_41

    .line 368
    sget-object v1, Lfr/testudo/spacecorsair/mod/ModCapitals;->FACTIONS:[Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;

    aget-object v0, v1, v0

    iget-object v0, v0, Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;->key:Ljava/lang/String;

    .line 369
    const-string v1, "warden"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_33

    const/4 v1, 0x5

    if-ne p1, v1, :cond_33

    const-string v0, "warden_arc"

    .line 371
    :cond_33
    :goto_33
    return-object v0

    .line 363
    :cond_34
    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModEnemyGuns;->shooter(Lfr/testudo/spacecorsair/business/Element;)[I

    move-result-object v1

    .line 364
    if-eqz v1, :cond_19

    array-length v2, v1

    if-lez v2, :cond_19

    const/4 v0, 0x0

    aget v0, v1, v0

    goto :goto_19

    .line 371
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
    .line 540
    sget v0, Lfr/testudo/spacecorsair/mod/ModVfx;->dNext:I

    .line 541
    sget v1, Lfr/testudo/spacecorsair/mod/ModVfx;->dNext:I

    add-int/lit8 v1, v1, 0x1

    rem-int/lit8 v1, v1, 0x20

    sput v1, Lfr/testudo/spacecorsair/mod/ModVfx;->dNext:I

    .line 542
    sget-object v1, Lfr/testudo/spacecorsair/mod/ModVfx;->dAt:[J

    sget-wide v2, Lfr/testudo/spacecorsair/mod/ModLive;->nowMs:J

    add-long/2addr v2, p3

    aput-wide v2, v1, v0

    .line 543
    sget-object v1, Lfr/testudo/spacecorsair/mod/ModVfx;->dX:[F

    aput p0, v1, v0

    sget-object v1, Lfr/testudo/spacecorsair/mod/ModVfx;->dY:[F

    aput p1, v1, v0

    sget-object v1, Lfr/testudo/spacecorsair/mod/ModVfx;->dS:[F

    aput p2, v1, v0

    .line 544
    sget-object v1, Lfr/testudo/spacecorsair/mod/ModVfx;->dOn:[Z

    const/4 v2, 0x1

    aput-boolean v2, v1, v0

    .line 545
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

    .line 214
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModVfx;->load()V

    .line 215
    sget v2, Lfr/testudo/spacecorsair/mod/ModVfx;->quality:I

    .line 216
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

    .line 221
    :cond_1a
    :goto_1a
    return-void

    .line 217
    :cond_1b
    sget-boolean v3, Lfr/testudo/spacecorsair/mod/ModLan;->connected:Z

    .line 218
    if-eqz v3, :cond_23

    sget-boolean v0, Lfr/testudo/spacecorsair/mod/ModVfx;->MP_PROMPT:Z

    if-eqz v0, :cond_1a

    .line 219
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

    .line 220
    if-nez v3, :cond_5b

    move v0, v1

    :goto_54
    invoke-static {v2, v0}, Lfr/testudo/spacecorsair/mod/ModVfx;->prompt(IZ)V

    goto :goto_1a

    .line 219
    :cond_58
    const-string v0, ""

    goto :goto_46

    .line 220
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

    .line 375
    sget-object v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v1, v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->playerShip:Lfr/testudo/spacecorsair/business/player/PlayerShip;

    .line 376
    if-nez v1, :cond_b

    .line 378
    :cond_a
    :goto_a
    return v0

    .line 377
    :cond_b
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModView;->radius()F

    move-result v2

    const v3, 0x3f59999a    # 0.85f

    div-float/2addr v2, v3

    add-float/2addr v2, p2

    .line 378
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
    .line 224
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->mainActivity:Lfr/testudo/spacecorsair/activity/Main;

    .line 225
    if-nez v0, :cond_7

    .line 277
    :goto_6
    return-void

    .line 226
    :cond_7
    const/4 v1, 0x1

    sput-boolean v1, Lfr/testudo/spacecorsair/mod/ModVfx;->prompting:Z

    .line 228
    :try_start_a
    new-instance v1, Lfr/testudo/spacecorsair/mod/ModVfx$3;

    invoke-direct {v1, v0, p0, p1}, Lfr/testudo/spacecorsair/mod/ModVfx$3;-><init>(Lfr/testudo/spacecorsair/activity/Main;IZ)V

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/activity/Main;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_12
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_12} :catch_13

    goto :goto_6

    .line 274
    :catch_13
    move-exception v0

    .line 275
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
    .line 387
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

    .line 416
    :cond_16
    :goto_16
    return-void

    .line 389
    :cond_17
    :try_start_17
    sget v2, Lfr/testudo/spacecorsair/mod/ModVfx;->budgetCheap:I

    if-lez v2, :cond_16

    .line 390
    sget v2, Lfr/testudo/spacecorsair/mod/ModVfx;->budgetCheap:I

    add-int/lit8 v2, v2, -0x1

    sput v2, Lfr/testudo/spacecorsair/mod/ModVfx;->budgetCheap:I

    .line 391
    move-object/from16 v0, p0

    iget-object v2, v0, Lfr/testudo/spacecorsair/business/projectiles/EnergyBullet;->sender:Lfr/testudo/spacecorsair/business/Element;

    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModVfx;->fancyQ(Lfr/testudo/spacecorsair/business/Element;)F

    move-result v24

    .line 392
    move-object/from16 v0, p0

    iget-object v2, v0, Lfr/testudo/spacecorsair/business/projectiles/EnergyBullet;->sender:Lfr/testudo/spacecorsair/business/Element;

    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModVfx;->fancy(Lfr/testudo/spacecorsair/business/Element;)F

    move-result v2

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-lez v2, :cond_166

    const/high16 v2, 0x428c0000    # 70.0f

    move/from16 v23, v2

    .line 393
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

    .line 394
    move-object/from16 v0, p0

    iget-object v2, v0, Lfr/testudo/spacecorsair/business/projectiles/EnergyBullet;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v3, v2, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    move-object/from16 v0, p0

    iget-object v2, v0, Lfr/testudo/spacecorsair/business/projectiles/EnergyBullet;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v4, v2, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    .line 395
    sget v2, Lfr/testudo/spacecorsair/mod/ModVfx;->quality:I

    const/4 v5, 0x2

    if-ne v2, v5, :cond_16c

    const/4 v2, 0x1

    move/from16 v22, v2

    .line 396
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

    .line 397
    move-object/from16 v0, p0

    iget-object v2, v0, Lfr/testudo/spacecorsair/business/projectiles/EnergyBullet;->speed:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v5, v2, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    move-object/from16 v0, p0

    iget-object v2, v0, Lfr/testudo/spacecorsair/business/projectiles/EnergyBullet;->speed:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v6, v2, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    .line 398
    mul-float v2, v5, v5

    mul-float v7, v6, v6

    add-float/2addr v2, v7

    float-to-double v12, v2

    invoke-static {v12, v13}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v12

    double-to-float v7, v12

    .line 399
    if-eqz v22, :cond_b7

    const v2, 0x3c23d70a    # 0.01f

    cmpl-float v2, v7, v2

    if-lez v2, :cond_b7

    .line 400
    const v2, 0x40266666    # 2.6f

    mul-float v11, v23, v2

    .line 401
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

    .line 403
    :cond_b7
    const/4 v2, 0x0

    cmpg-float v2, v24, v2

    if-lez v2, :cond_16

    sget v2, Lfr/testudo/spacecorsair/mod/ModVfx;->budgetFancy:I

    if-lez v2, :cond_16

    .line 404
    sget v2, Lfr/testudo/spacecorsair/mod/ModVfx;->budgetFancy:I

    add-int/lit8 v2, v2, -0x1

    sput v2, Lfr/testudo/spacecorsair/mod/ModVfx;->budgetFancy:I

    .line 405
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

    .line 406
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

    .line 407
    move-object/from16 v0, p0

    iget-object v2, v0, Lfr/testudo/spacecorsair/business/projectiles/EnergyBullet;->sender:Lfr/testudo/spacecorsair/business/Element;

    invoke-static/range {p0 .. p0}, Lfr/testudo/spacecorsair/mod/ModWeapons;->familyOf(Ljava/lang/Object;)I

    move-result v5

    invoke-static {v2, v5}, Lfr/testudo/spacecorsair/mod/ModVfx;->keyOf(Lfr/testudo/spacecorsair/business/Element;I)Ljava/lang/String;

    move-result-object v2

    const-string v5, "_shot"

    invoke-static {v2, v5}, Lfr/testudo/spacecorsair/mod/ModVfx;->art(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 408
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

    .line 409
    :cond_132
    if-eqz v22, :cond_16

    sget v2, Lfr/testudo/spacecorsair/mod/ModVfx;->budgetRibbon:I

    if-lez v2, :cond_16

    .line 410
    sget v2, Lfr/testudo/spacecorsair/mod/ModVfx;->budgetRibbon:I

    add-int/lit8 v2, v2, -0x1

    sput v2, Lfr/testudo/spacecorsair/mod/ModVfx;->budgetRibbon:I

    .line 411
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

    .line 413
    :catch_163
    move-exception v2

    goto/16 :goto_16

    .line 392
    :cond_166
    const/high16 v2, 0x42200000    # 40.0f

    move/from16 v23, v2

    goto/16 :goto_3a

    .line 395
    :cond_16c
    const/4 v2, 0x0

    move/from16 v22, v2

    goto/16 :goto_66

    .line 396
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
    .line 420
    if-eqz p0, :cond_e

    invoke-interface/range {p0 .. p0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_e

    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModVfx;->quality()I

    move-result v2

    if-nez v2, :cond_f

    .line 443
    :cond_e
    :goto_e
    return-void

    .line 422
    :cond_f
    :try_start_f
    sget-object v2, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v2, v2, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-boolean v2, v2, Lfr/testudo/spacecorsair/game/Game;->mapMode:Z

    if-nez v2, :cond_e

    .line 423
    sget v2, Lfr/testudo/spacecorsair/mod/ModVfx;->quality:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_3f

    const/4 v2, 0x1

    move/from16 v27, v2

    .line 424
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

    .line 425
    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    .line 426
    instance-of v3, v2, Lfr/testudo/spacecorsair/business/projectiles/EnergyBullet;

    if-nez v3, :cond_43

    .line 424
    :cond_3a
    :goto_3a
    add-int/lit8 v2, v28, 0x1

    move/from16 v28, v2

    goto :goto_22

    .line 423
    :cond_3f
    const/4 v2, 0x0

    move/from16 v27, v2

    goto :goto_1f

    .line 427
    :cond_43
    check-cast v2, Lfr/testudo/spacecorsair/business/projectiles/EnergyBullet;

    .line 428
    iget-object v3, v2, Lfr/testudo/spacecorsair/business/projectiles/EnergyBullet;->sender:Lfr/testudo/spacecorsair/business/Element;

    invoke-static {v3}, Lfr/testudo/spacecorsair/mod/ModVfx;->fancyQ(Lfr/testudo/spacecorsair/business/Element;)F

    move-result v29

    .line 429
    if-nez v27, :cond_52

    const/4 v3, 0x0

    cmpg-float v3, v29, v3

    if-lez v3, :cond_3a

    .line 430
    :cond_52
    iget-object v3, v2, Lfr/testudo/spacecorsair/business/projectiles/EnergyBullet;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v3, v3, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    iget-object v4, v2, Lfr/testudo/spacecorsair/business/projectiles/EnergyBullet;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v4, v4, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    .line 431
    const/high16 v5, 0x43480000    # 200.0f

    invoke-static {v3, v4, v5}, Lfr/testudo/spacecorsair/mod/ModVfx;->near(FFF)Z

    move-result v5

    if-eqz v5, :cond_3a

    .line 432
    sget v5, Lfr/testudo/spacecorsair/mod/ModVfx;->budgetMuzzle:I

    add-int/lit8 v5, v5, -0x1

    sput v5, Lfr/testudo/spacecorsair/mod/ModVfx;->budgetMuzzle:I

    .line 433
    iget v5, v2, Lfr/testudo/spacecorsair/business/projectiles/EnergyBullet;->r:F

    invoke-static {v5}, Lfr/testudo/spacecorsair/mod/ModVfx;->col(F)F

    move-result v10

    iget v5, v2, Lfr/testudo/spacecorsair/business/projectiles/EnergyBullet;->g:F

    invoke-static {v5}, Lfr/testudo/spacecorsair/mod/ModVfx;->col(F)F

    move-result v11

    iget v2, v2, Lfr/testudo/spacecorsair/business/projectiles/EnergyBullet;->b:F

    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModVfx;->col(F)F

    move-result v12

    .line 434
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

    .line 435
    const/4 v2, 0x0

    cmpl-float v2, v29, v2

    if-lez v2, :cond_3a

    .line 436
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

    .line 437
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

    .line 440
    :catch_c7
    move-exception v2

    goto/16 :goto_e
.end method

.method private static testBoom(Z)V
    .registers 11

    .prologue
    const/4 v5, 0x1

    const/4 v3, 0x0

    .line 137
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v6, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->playerShip:Lfr/testudo/spacecorsair/business/player/PlayerShip;

    .line 138
    if-nez v6, :cond_9

    .line 153
    :goto_8
    return-void

    .line 139
    :cond_9
    const/4 v1, 0x0

    .line 140
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/Game;->currentLevel:Lfr/testudo/spacecorsair/game/levels/Level;

    iget-object v7, v0, Lfr/testudo/spacecorsair/game/levels/Level;->elements:Ljava/util/List;

    move v2, v3

    .line 141
    :goto_13
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_5f

    .line 142
    invoke-interface {v7, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfr/testudo/spacecorsair/business/Element;

    .line 143
    if-eqz v0, :cond_5d

    iget-boolean v4, v0, Lfr/testudo/spacecorsair/business/Element;->removed:Z

    if-nez v4, :cond_5d

    iget-boolean v4, v0, Lfr/testudo/spacecorsair/business/Element;->isPlayer:Z

    if-nez v4, :cond_5d

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/Mod;->isDrone(Lfr/testudo/spacecorsair/business/Element;)Z

    move-result v4

    if-eqz v4, :cond_34

    move-object v0, v1

    .line 141
    :cond_30
    :goto_30
    add-int/lit8 v2, v2, 0x1

    move-object v1, v0

    goto :goto_13

    .line 144
    :cond_34
    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModCapitals;->cap(Ljava/lang/Object;)Lfr/testudo/spacecorsair/mod/ModCapitals$Cap;

    move-result-object v4

    if-eqz v4, :cond_45

    move v4, v5

    .line 145
    :goto_3b
    if-ne p0, v4, :cond_5d

    if-nez v4, :cond_47

    instance-of v4, v0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    if-nez v4, :cond_47

    move-object v0, v1

    goto :goto_30

    :cond_45
    move v4, v3

    .line 144
    goto :goto_3b

    .line 146
    :cond_47
    if-eqz v1, :cond_30

    iget-object v4, v0, Lfr/testudo/spacecorsair/business/Element;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget-object v8, v6, Lfr/testudo/spacecorsair/business/player/PlayerShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v4, v8}, Lfr/testudo/spacecorsair/engine/Vector2;->distance(Lfr/testudo/spacecorsair/engine/Vector2;)F

    move-result v4

    iget-object v8, v1, Lfr/testudo/spacecorsair/business/Element;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget-object v9, v6, Lfr/testudo/spacecorsair/business/player/PlayerShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v8, v9}, Lfr/testudo/spacecorsair/engine/Vector2;->distance(Lfr/testudo/spacecorsair/engine/Vector2;)F

    move-result v8

    cmpg-float v4, v4, v8

    if-ltz v4, :cond_30

    :cond_5d
    move-object v0, v1

    goto :goto_30

    .line 148
    :cond_5f
    if-nez v1, :cond_69

    const-string v0, "vfx"

    const-string v1, "boom preview: none"

    invoke-static {v0, v1}, Lfr/testudo/spacecorsair/mod/ModDev;->ev(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_8

    .line 149
    :cond_69
    invoke-virtual {v1}, Lfr/testudo/spacecorsair/business/Element;->getDrawableObject()Lfr/testudo/spacecorsair/display/Drawable;

    move-result-object v0

    .line 150
    sget v2, Lfr/testudo/spacecorsair/mod/ModVfx;->budgetDeath:I

    invoke-static {v2, v5}, Ljava/lang/Math;->max(II)I

    move-result v2

    sput v2, Lfr/testudo/spacecorsair/mod/ModVfx;->budgetDeath:I

    .line 151
    if-nez v0, :cond_a8

    const/high16 v0, 0x43960000    # 300.0f

    :goto_79
    invoke-static {v1, v0}, Lfr/testudo/spacecorsair/mod/ModVfx;->death(Lfr/testudo/spacecorsair/business/Element;F)V

    .line 152
    const-string v2, "vfx"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "boom preview "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-eqz p0, :cond_ad

    const-string v0, "flagship"

    :goto_8d
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " fancy="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModVfx;->fancy(Lfr/testudo/spacecorsair/business/Element;)F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lfr/testudo/spacecorsair/mod/ModDev;->ev(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_8

    .line 151
    :cond_a8
    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLive;->sizeOf(Lfr/testudo/spacecorsair/display/Drawable;)F

    move-result v0

    goto :goto_79

    .line 152
    :cond_ad
    const-string v0, "ship"

    goto :goto_8d
.end method

.method static tick(J)V
    .registers 18

    .prologue
    .line 549
    const/4 v0, 0x0

    move v14, v0

    :goto_2
    const/16 v0, 0x20

    if-ge v14, v0, :cond_76

    .line 550
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModVfx;->dOn:[Z

    aget-boolean v0, v0, v14

    if-eqz v0, :cond_14

    sget-object v0, Lfr/testudo/spacecorsair/mod/ModVfx;->dAt:[J

    aget-wide v0, v0, v14

    cmp-long v0, p0, v0

    if-gez v0, :cond_18

    .line 549
    :cond_14
    :goto_14
    add-int/lit8 v0, v14, 0x1

    move v14, v0

    goto :goto_2

    .line 551
    :cond_18
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModVfx;->dOn:[Z

    const/4 v1, 0x0

    aput-boolean v1, v0, v14

    .line 552
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModVfx;->dAt:[J

    aget-wide v0, v0, v14

    sub-long v0, p0, v0

    const-wide/16 v2, 0x7d0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_14

    .line 553
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

    .line 554
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

    .line 556
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

    .line 173
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    .line 174
    sget-wide v0, Lfr/testudo/spacecorsair/mod/ModVfx;->lastFrame:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_95

    move-wide v0, v2

    .line 175
    :goto_11
    sput-wide v8, Lfr/testudo/spacecorsair/mod/ModVfx;->lastFrame:J

    .line 176
    sget v4, Lfr/testudo/spacecorsair/mod/ModVfx;->testMode:I

    if-gez v4, :cond_22

    const-string v4, "corsair_nodialog"

    invoke-static {v4}, Lfr/testudo/spacecorsair/mod/ModDev;->testFlag(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_9b

    move v4, v5

    :goto_20
    sput v4, Lfr/testudo/spacecorsair/mod/ModVfx;->testMode:I

    .line 177
    :cond_22
    sget v4, Lfr/testudo/spacecorsair/mod/ModVfx;->testMode:I

    if-ne v4, v5, :cond_74

    sget-wide v10, Lfr/testudo/spacecorsair/mod/ModVfx;->testAt:J

    sub-long v10, v8, v10

    cmp-long v4, v10, v12

    if-lez v4, :cond_74

    .line 178
    sput-wide v8, Lfr/testudo/spacecorsair/mod/ModVfx;->testAt:J

    .line 179
    const-string v4, "corsair_vfx_prompt"

    invoke-static {v4}, Lfr/testudo/spacecorsair/mod/ModDev;->testFlag(Ljava/lang/String;)Z

    move-result v4

    sput-boolean v4, Lfr/testudo/spacecorsair/mod/ModVfx;->testForce:Z

    .line 180
    const-string v4, "corsair_vfx_boom"

    invoke-static {v4}, Lfr/testudo/spacecorsair/mod/ModDev;->testValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 181
    if-eqz v4, :cond_57

    sget-object v7, Lfr/testudo/spacecorsair/mod/ModVfx;->testBoom:Ljava/lang/String;

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_57

    .line 182
    sput-object v4, Lfr/testudo/spacecorsair/mod/ModVfx;->testBoom:Ljava/lang/String;

    .line 183
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    const-string v7, "flagship"

    invoke-virtual {v4, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    invoke-static {v4}, Lfr/testudo/spacecorsair/mod/ModVfx;->testBoom(Z)V

    .line 185
    :cond_57
    const-string v4, "corsair_vfx_q"

    invoke-static {v4}, Lfr/testudo/spacecorsair/mod/ModDev;->testValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 186
    if-eqz v4, :cond_74

    sget-object v7, Lfr/testudo/spacecorsair/mod/ModVfx;->testQ:Ljava/lang/String;

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_74

    .line 187
    sput-object v4, Lfr/testudo/spacecorsair/mod/ModVfx;->testQ:Ljava/lang/String;

    .line 188
    :try_start_69
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-static {v4}, Lfr/testudo/spacecorsair/mod/ModVfx;->setQuality(I)V
    :try_end_74
    .catch Ljava/lang/Throwable; {:try_start_69 .. :try_end_74} :catch_129

    .line 191
    :cond_74
    :goto_74
    sget-object v4, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v4, v4, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-boolean v4, v4, Lfr/testudo/spacecorsair/game/Game;->mapMode:Z

    .line 192
    cmp-long v7, v0, v2

    if-lez v7, :cond_88

    cmp-long v7, v0, v12

    if-gtz v7, :cond_88

    if-nez v4, :cond_88

    sget-boolean v7, Lfr/testudo/spacecorsair/mod/ModVfx;->prompting:Z

    if-eqz v7, :cond_9d

    .line 193
    :cond_88
    sput-wide v2, Lfr/testudo/spacecorsair/mod/ModVfx;->winMs:J

    sput v6, Lfr/testudo/spacecorsair/mod/ModVfx;->winN:I

    .line 194
    cmp-long v0, v0, v12

    if-gtz v0, :cond_92

    if-eqz v4, :cond_94

    :cond_92
    sput-wide v2, Lfr/testudo/spacecorsair/mod/ModVfx;->slowMs:J

    .line 211
    :cond_94
    :goto_94
    return-void

    .line 174
    :cond_95
    sget-wide v0, Lfr/testudo/spacecorsair/mod/ModVfx;->lastFrame:J

    sub-long v0, v8, v0

    goto/16 :goto_11

    :cond_9b
    move v4, v6

    .line 176
    goto :goto_20

    .line 197
    :cond_9d
    sget-wide v8, Lfr/testudo/spacecorsair/mod/ModVfx;->winMs:J

    add-long/2addr v0, v8

    sput-wide v0, Lfr/testudo/spacecorsair/mod/ModVfx;->winMs:J

    .line 198
    sget v0, Lfr/testudo/spacecorsair/mod/ModVfx;->winN:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lfr/testudo/spacecorsair/mod/ModVfx;->winN:I

    .line 199
    sget-wide v0, Lfr/testudo/spacecorsair/mod/ModVfx;->winMs:J

    cmp-long v0, v0, v12

    if-ltz v0, :cond_94

    .line 200
    sget v0, Lfr/testudo/spacecorsair/mod/ModVfx;->winN:I

    int-to-float v0, v0

    const/high16 v1, 0x447a0000    # 1000.0f

    mul-float/2addr v0, v1

    sget-wide v8, Lfr/testudo/spacecorsair/mod/ModVfx;->winMs:J

    long-to-float v1, v8

    div-float v4, v0, v1

    .line 201
    sget v0, Lfr/testudo/spacecorsair/mod/ModVfx;->testMode:I

    if-ne v0, v5, :cond_fb

    sget v0, Lfr/testudo/spacecorsair/mod/ModVfx;->testLog:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lfr/testudo/spacecorsair/mod/ModVfx;->testLog:I

    rem-int/lit8 v0, v0, 0x5

    if-nez v0, :cond_fb

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

    .line 202
    :cond_fb
    const/high16 v0, 0x41f00000    # 30.0f

    cmpg-float v0, v4, v0

    if-ltz v0, :cond_105

    sget-boolean v0, Lfr/testudo/spacecorsair/mod/ModVfx;->testForce:Z

    if-eqz v0, :cond_123

    :cond_105
    sget-wide v0, Lfr/testudo/spacecorsair/mod/ModVfx;->slowMs:J

    sget-wide v8, Lfr/testudo/spacecorsair/mod/ModVfx;->winMs:J

    add-long/2addr v0, v8

    sput-wide v0, Lfr/testudo/spacecorsair/mod/ModVfx;->slowMs:J

    .line 204
    :goto_10c
    sput-wide v2, Lfr/testudo/spacecorsair/mod/ModVfx;->winMs:J

    .line 205
    sput v6, Lfr/testudo/spacecorsair/mod/ModVfx;->winN:I

    .line 206
    sget-boolean v0, Lfr/testudo/spacecorsair/mod/ModVfx;->testForce:Z

    if-eqz v0, :cond_126

    const-wide/16 v0, 0xbb8

    .line 207
    :goto_116
    sget-wide v6, Lfr/testudo/spacecorsair/mod/ModVfx;->slowMs:J

    cmp-long v0, v6, v0

    if-lez v0, :cond_94

    .line 208
    sput-wide v2, Lfr/testudo/spacecorsair/mod/ModVfx;->slowMs:J

    .line 209
    invoke-static {v4}, Lfr/testudo/spacecorsair/mod/ModVfx;->maybePrompt(F)V

    goto/16 :goto_94

    .line 203
    :cond_123
    sput-wide v2, Lfr/testudo/spacecorsair/mod/ModVfx;->slowMs:J

    goto :goto_10c

    .line 206
    :cond_126
    const-wide/16 v0, 0x2710

    goto :goto_116

    .line 188
    :catch_129
    move-exception v4

    goto/16 :goto_74
.end method
