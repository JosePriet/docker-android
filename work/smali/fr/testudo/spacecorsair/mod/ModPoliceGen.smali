.class public final Lfr/testudo/spacecorsair/mod/ModPoliceGen;
.super Ljava/lang/Object;
.source "ModPoliceGen.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lfr/testudo/spacecorsair/mod/ModPoliceGen$Loader;,
        Lfr/testudo/spacecorsair/mod/ModPoliceGen$Img;
    }
.end annotation


# static fields
.field static final BLOOD:[F

.field static final CAMO:[F

.field static final COMPS:[Ljava/lang/String;

.field static final COUNCIL:[F

.field static final COUNCIL_RAW:[F

.field static final DARKSPOT:[F

.field static final ENGINE:[F

.field static final GOLD:[F

.field static final HELION:I = 0x5

.field static final IRONCLAD:I = 0x4

.field public static final KEYS:[Ljava/lang/String;

.field static final KRETARI:I = 0x2

.field static final LGOLD:[F

.field static final LIGHT_BLUE:[F

.field static final LIGHT_RED:[F

.field public static final MAGENTA:I = -0xff01

.field static final MGREEN:[F

.field static final REAVER:I = 0x1

.field static final SILVER:[F

.field static final SPARTAN:I = 0x0

.field static final STAGE5:[Ljava/lang/String;

.field static final VARN:I = 0x3

.field static final VIOLET:[F

.field static final WARDEN:I = 0x6

.field private static faction:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x3

    .line 31
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "spartan"

    aput-object v1, v0, v4

    const-string v1, "reaver"

    aput-object v1, v0, v5

    const-string v1, "kretari"

    aput-object v1, v0, v6

    const-string v1, "varn"

    aput-object v1, v0, v3

    const-string v1, "ironclad"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "helion"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "warden"

    aput-object v2, v0, v1

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModPoliceGen;->KEYS:[Ljava/lang/String;

    .line 34
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "bastion"

    aput-object v1, v0, v4

    const-string v1, "mantis"

    aput-object v1, v0, v5

    const-string v1, "verdant"

    aput-object v1, v0, v6

    const-string v1, "monolith"

    aput-object v1, v0, v3

    const-string v1, "leviathan"

    aput-object v1, v0, v7

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModPoliceGen;->STAGE5:[Ljava/lang/String;

    .line 35
    const/16 v0, 0xb

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_glow_l"

    aput-object v1, v0, v4

    const-string v1, "_veins"

    aput-object v1, v0, v5

    const-string v1, "_anim_01"

    aput-object v1, v0, v6

    const-string v1, "_anim_02"

    aput-object v1, v0, v3

    const-string v1, "_anim_03"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "_anim_04"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "_anim_05"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "_anim_06"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "_anim_07"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "_anim_08"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "_glow_e"

    aput-object v2, v0, v1

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModPoliceGen;->COMPS:[Ljava/lang/String;

    .line 251
    new-array v0, v3, [F

    fill-array-data v0, :array_d8

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModPoliceGen;->COUNCIL:[F

    .line 252
    new-array v0, v3, [F

    fill-array-data v0, :array_e2

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModPoliceGen;->SILVER:[F

    .line 281
    new-array v0, v3, [F

    fill-array-data v0, :array_ec

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModPoliceGen;->LIGHT_RED:[F

    new-array v0, v3, [F

    fill-array-data v0, :array_f6

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModPoliceGen;->LIGHT_BLUE:[F

    new-array v0, v3, [F

    fill-array-data v0, :array_100

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModPoliceGen;->ENGINE:[F

    .line 282
    new-array v0, v3, [F

    fill-array-data v0, :array_10a

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModPoliceGen;->COUNCIL_RAW:[F

    .line 307
    new-array v0, v3, [F

    fill-array-data v0, :array_114

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModPoliceGen;->GOLD:[F

    new-array v0, v3, [F

    fill-array-data v0, :array_11e

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModPoliceGen;->BLOOD:[F

    new-array v0, v3, [F

    fill-array-data v0, :array_128

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModPoliceGen;->LGOLD:[F

    new-array v0, v3, [F

    fill-array-data v0, :array_132

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModPoliceGen;->VIOLET:[F

    .line 308
    new-array v0, v3, [F

    fill-array-data v0, :array_13c

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModPoliceGen;->MGREEN:[F

    new-array v0, v3, [F

    fill-array-data v0, :array_146

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModPoliceGen;->CAMO:[F

    new-array v0, v3, [F

    fill-array-data v0, :array_150

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModPoliceGen;->DARKSPOT:[F

    return-void

    .line 251
    :array_d8
    .array-data 4
        0x3f241a42
        0x3e906907
        0x3f800000    # 1.0f
    .end array-data

    .line 252
    :array_e2
    .array-data 4
        0x3f75c28f    # 0.96f
        0x3f7ae148    # 0.98f
        0x3f800000    # 1.0f
    .end array-data

    .line 281
    :array_ec
    .array-data 4
        0x3f800000    # 1.0f
        0x3df5c28f    # 0.12f
        0x3dcccccd    # 0.1f
    .end array-data

    :array_f6
    .array-data 4
        0x3e19999a    # 0.15f
        0x3ed70a3d    # 0.42f
        0x3f800000    # 1.0f
    .end array-data

    :array_100
    .array-data 4
        0x3f0ccccd    # 0.55f
        0x3f47ae14    # 0.78f
        0x3f800000    # 1.0f
    .end array-data

    .line 282
    :array_10a
    .array-data 4
        0x3f000000    # 0.5f
        0x3e6147ae    # 0.22f
        0x3f47ae14    # 0.78f
    .end array-data

    .line 307
    :array_114
    .array-data 4
        0x435e0000    # 222.0f
        0x43320000    # 178.0f
        0x428c0000    # 70.0f
    .end array-data

    :array_11e
    .array-data 4
        0x43160000    # 150.0f
        0x41000000    # 8.0f
        0x41800000    # 16.0f
    .end array-data

    :array_128
    .array-data 4
        0x437f0000    # 255.0f
        0x43640000    # 228.0f
        0x43160000    # 150.0f
    .end array-data

    :array_132
    .array-data 4
        0x428c0000    # 70.0f
        0x41f00000    # 30.0f
        0x42dc0000    # 110.0f
    .end array-data

    .line 308
    :array_13c
    .array-data 4
        0x42800000    # 64.0f
        0x42b40000    # 90.0f
        0x42400000    # 48.0f
    .end array-data

    :array_146
    .array-data 4
        0x41900000    # 18.0f
        0x41a00000    # 20.0f
        0x41800000    # 16.0f
    .end array-data

    :array_150
    .array-data 4
        0x42080000    # 34.0f
        0x41d00000    # 26.0f
        0x41e00000    # 28.0f
    .end array-data
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static accent(ILfr/testudo/spacecorsair/mod/ModPoliceGen$Img;Lfr/testudo/spacecorsair/mod/ModPoliceGen$Img;Ljava/lang/String;)Lfr/testudo/spacecorsair/mod/ModPoliceGen$Img;
    .registers 28

    .prologue
    .line 311
    move-object/from16 v0, p1

    iget v9, v0, Lfr/testudo/spacecorsair/mod/ModPoliceGen$Img;->w:I

    move-object/from16 v0, p1

    iget v10, v0, Lfr/testudo/spacecorsair/mod/ModPoliceGen$Img;->h:I

    move-object/from16 v0, p1

    iget-object v2, v0, Lfr/testudo/spacecorsair/mod/ModPoliceGen$Img;->px:[I

    array-length v11, v2

    .line 312
    invoke-static {v9, v10}, Ljava/lang/Math;->max(II)I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x44800000    # 1024.0f

    div-float v7, v2, v3

    .line 313
    new-array v12, v11, [F

    new-array v13, v11, [F

    new-array v14, v11, [F

    new-array v15, v11, [F

    new-array v0, v11, [F

    move-object/from16 v16, v0

    .line 314
    new-array v2, v11, [F

    new-array v3, v11, [F

    new-array v4, v11, [F

    .line 315
    const/4 v5, 0x0

    move v6, v5

    :goto_2a
    if-ge v6, v11, :cond_a9

    .line 316
    move-object/from16 v0, p1

    iget-object v5, v0, Lfr/testudo/spacecorsair/mod/ModPoliceGen$Img;->px:[I

    aget v5, v5, v6

    move-object/from16 v0, p2

    iget-object v8, v0, Lfr/testudo/spacecorsair/mod/ModPoliceGen$Img;->px:[I

    aget v8, v8, v6

    .line 317
    shr-int/lit8 v17, v5, 0x10

    move/from16 v0, v17

    and-int/lit16 v0, v0, 0xff

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    aput v17, v12, v6

    shr-int/lit8 v17, v5, 0x8

    move/from16 v0, v17

    and-int/lit16 v0, v0, 0xff

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    aput v17, v13, v6

    and-int/lit16 v0, v5, 0xff

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    aput v17, v14, v6

    .line 318
    const v17, 0x3e991687    # 0.299f

    aget v18, v12, v6

    mul-float v17, v17, v18

    const v18, 0x3f1645a2    # 0.587f

    aget v19, v13, v6

    mul-float v18, v18, v19

    add-float v17, v17, v18

    const v18, 0x3de978d5    # 0.114f

    aget v19, v14, v6

    mul-float v18, v18, v19

    add-float v17, v17, v18

    aput v17, v15, v6

    .line 319
    move-object/from16 v0, p1

    iget-boolean v0, v0, Lfr/testudo/spacecorsair/mod/ModPoliceGen$Img;->opaque:Z

    move/from16 v17, v0

    if-nez v17, :cond_8c

    ushr-int/lit8 v5, v5, 0x18

    const/16 v17, 0x20

    move/from16 v0, v17

    if-le v5, v0, :cond_a7

    :cond_8c
    const/high16 v5, 0x437f0000    # 255.0f

    :goto_8e
    aput v5, v16, v6

    .line 320
    shr-int/lit8 v5, v8, 0x10

    and-int/lit16 v5, v5, 0xff

    int-to-float v5, v5

    aput v5, v2, v6

    shr-int/lit8 v5, v8, 0x8

    and-int/lit16 v5, v5, 0xff

    int-to-float v5, v5

    aput v5, v3, v6

    and-int/lit16 v5, v8, 0xff

    int-to-float v5, v5

    aput v5, v4, v6

    .line 315
    add-int/lit8 v5, v6, 0x1

    move v6, v5

    goto :goto_2a

    .line 319
    :cond_a7
    const/4 v5, 0x0

    goto :goto_8e

    .line 322
    :cond_a9
    packed-switch p0, :pswitch_data_4a0

    .line 399
    :cond_ac
    new-array v6, v11, [I

    .line 400
    const/4 v5, 0x0

    :goto_af
    if-ge v5, v11, :cond_496

    move-object/from16 v0, p1

    iget-object v7, v0, Lfr/testudo/spacecorsair/mod/ModPoliceGen$Img;->px:[I

    aget v7, v7, v5

    const/high16 v8, -0x1000000

    and-int/2addr v7, v8

    aget v8, v2, v5

    invoke-static {v8}, Lfr/testudo/spacecorsair/mod/ModPoliceGen;->clamp(F)I

    move-result v8

    shl-int/lit8 v8, v8, 0x10

    or-int/2addr v7, v8

    aget v8, v3, v5

    invoke-static {v8}, Lfr/testudo/spacecorsair/mod/ModPoliceGen;->clamp(F)I

    move-result v8

    shl-int/lit8 v8, v8, 0x8

    or-int/2addr v7, v8

    aget v8, v4, v5

    invoke-static {v8}, Lfr/testudo/spacecorsair/mod/ModPoliceGen;->clamp(F)I

    move-result v8

    or-int/2addr v7, v8

    aput v7, v6, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_af

    .line 324
    :pswitch_d8
    const/4 v5, 0x0

    :goto_d9
    if-ge v5, v11, :cond_ac

    .line 325
    aget v6, v12, v5

    aget v7, v13, v5

    aget v8, v14, v5

    .line 326
    invoke-static {v7, v8}, Ljava/lang/Math;->max(FF)F

    move-result v17

    move/from16 v0, v17

    invoke-static {v6, v0}, Ljava/lang/Math;->max(FF)F

    move-result v17

    invoke-static {v7, v8}, Ljava/lang/Math;->min(FF)F

    move-result v18

    move/from16 v0, v18

    invoke-static {v6, v0}, Ljava/lang/Math;->min(FF)F

    move-result v18

    .line 327
    sub-float v18, v17, v18

    const/high16 v19, 0x3f800000    # 1.0f

    move/from16 v0, v17

    move/from16 v1, v19

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v19

    div-float v18, v18, v19

    .line 328
    cmpl-float v19, v6, v7

    if-lez v19, :cond_158

    cmpl-float v19, v7, v8

    if-lez v19, :cond_158

    sub-float/2addr v7, v8

    sub-float/2addr v6, v8

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-static {v6, v8}, Ljava/lang/Math;->max(FF)F

    move-result v6

    div-float v6, v7, v6

    const v7, 0x3ee66666    # 0.45f

    cmpl-float v6, v6, v7

    if-lez v6, :cond_158

    const/high16 v6, 0x42b40000    # 90.0f

    cmpl-float v6, v17, v6

    if-lez v6, :cond_158

    const/4 v6, 0x1

    .line 329
    :goto_123
    if-eqz v6, :cond_15a

    aget v6, v16, v5

    const/4 v7, 0x0

    cmpl-float v6, v6, v7

    if-lez v6, :cond_15a

    const v6, 0x3eb33333    # 0.35f

    const v7, 0x3f0ccccd    # 0.55f

    move/from16 v0, v18

    invoke-static {v0, v6, v7}, Lfr/testudo/spacecorsair/mod/ModPoliceGen;->smooth(FFF)F

    move-result v6

    const v7, 0x3f733333    # 0.95f

    mul-float/2addr v7, v6

    .line 330
    :goto_13c
    const/4 v6, 0x0

    cmpl-float v6, v7, v6

    if-lez v6, :cond_155

    sget-object v6, Lfr/testudo/spacecorsair/mod/ModPoliceGen;->GOLD:[F

    const v8, 0x3ee66666    # 0.45f

    const/high16 v17, 0x3f400000    # 0.75f

    aget v18, v15, v5

    mul-float v17, v17, v18

    const/high16 v18, 0x437f0000    # 255.0f

    div-float v17, v17, v18

    add-float v8, v8, v17

    invoke-static/range {v2 .. v8}, Lfr/testudo/spacecorsair/mod/ModPoliceGen;->mix([F[F[FI[FFF)V

    .line 324
    :cond_155
    add-int/lit8 v5, v5, 0x1

    goto :goto_d9

    .line 328
    :cond_158
    const/4 v6, 0x0

    goto :goto_123

    .line 329
    :cond_15a
    const/4 v7, 0x0

    goto :goto_13c

    .line 334
    :pswitch_15c
    const/high16 v5, 0x41200000    # 10.0f

    mul-float/2addr v5, v7

    move-object/from16 v0, v16

    invoke-static {v0, v9, v10, v5}, Lfr/testudo/spacecorsair/mod/ModPoliceGen;->band([FIIF)[F

    move-result-object v7

    .line 335
    const/4 v5, 0x0

    move v6, v5

    :goto_167
    if-ge v6, v11, :cond_ac

    .line 336
    aget v5, v12, v6

    aget v8, v13, v6

    aget v17, v14, v6

    .line 337
    move/from16 v0, v17

    invoke-static {v8, v0}, Ljava/lang/Math;->max(FF)F

    move-result v18

    move/from16 v0, v18

    invoke-static {v5, v0}, Ljava/lang/Math;->max(FF)F

    move-result v18

    move/from16 v0, v17

    invoke-static {v8, v0}, Ljava/lang/Math;->min(FF)F

    move-result v19

    move/from16 v0, v19

    invoke-static {v5, v0}, Ljava/lang/Math;->min(FF)F

    move-result v19

    .line 338
    sub-float v19, v18, v19

    const/high16 v20, 0x3f800000    # 1.0f

    move/from16 v0, v18

    move/from16 v1, v20

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v18

    div-float v18, v19, v18

    .line 339
    const v19, 0x3e3851ec    # 0.18f

    const v20, 0x3ea3d70a    # 0.32f

    invoke-static/range {v18 .. v20}, Lfr/testudo/spacecorsair/mod/ModPoliceGen;->smooth(FFF)F

    move-result v18

    move/from16 v0, v17

    invoke-static {v8, v0}, Ljava/lang/Math;->max(FF)F

    move-result v8

    const/high16 v17, 0x3f800000    # 1.0f

    move/from16 v0, v17

    invoke-static {v8, v0}, Ljava/lang/Math;->max(FF)F

    move-result v8

    div-float/2addr v5, v8

    const v8, 0x3f933333    # 1.15f

    const v17, 0x3faccccd    # 1.35f

    move/from16 v0, v17

    invoke-static {v5, v8, v0}, Lfr/testudo/spacecorsair/mod/ModPoliceGen;->smooth(FFF)F

    move-result v5

    mul-float v5, v5, v18

    .line 340
    const/4 v8, 0x0

    const/high16 v17, 0x3f800000    # 1.0f

    aget v18, v15, v6

    const/high16 v19, 0x437f0000    # 255.0f

    div-float v18, v18, v19

    invoke-static/range {v17 .. v18}, Ljava/lang/Math;->min(FF)F

    move-result v17

    move/from16 v0, v17

    invoke-static {v8, v0}, Ljava/lang/Math;->max(FF)F

    move-result v8

    .line 341
    const v17, 0x3df5c28f    # 0.12f

    const v18, 0x3faccccd    # 1.35f

    float-to-double v0, v8

    move-wide/from16 v20, v0

    const-wide v22, 0x3ff3333333333333L    # 1.2

    invoke-static/range {v20 .. v23}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v20

    move-wide/from16 v0, v20

    double-to-float v0, v0

    move/from16 v19, v0

    mul-float v18, v18, v19

    add-float v17, v17, v18

    const v18, 0x3eb33333    # 0.35f

    const v19, 0x3fb33333    # 1.4f

    mul-float v19, v19, v8

    add-float v18, v18, v19

    .line 342
    sget-object v19, Lfr/testudo/spacecorsair/mod/ModPoliceGen;->BLOOD:[F

    const/16 v20, 0x0

    aget v19, v19, v20

    mul-float v19, v19, v17

    const/high16 v20, 0x3f800000    # 1.0f

    sub-float v20, v20, v5

    mul-float v19, v19, v20

    sget-object v20, Lfr/testudo/spacecorsair/mod/ModPoliceGen;->DARKSPOT:[F

    const/16 v21, 0x0

    aget v20, v20, v21

    mul-float v20, v20, v18

    mul-float v20, v20, v5

    add-float v19, v19, v20

    aput v19, v2, v6

    .line 343
    sget-object v19, Lfr/testudo/spacecorsair/mod/ModPoliceGen;->BLOOD:[F

    const/16 v20, 0x1

    aget v19, v19, v20

    mul-float v19, v19, v17

    const/high16 v20, 0x3f800000    # 1.0f

    sub-float v20, v20, v5

    mul-float v19, v19, v20

    sget-object v20, Lfr/testudo/spacecorsair/mod/ModPoliceGen;->DARKSPOT:[F

    const/16 v21, 0x1

    aget v20, v20, v21

    mul-float v20, v20, v18

    mul-float v20, v20, v5

    add-float v19, v19, v20

    aput v19, v3, v6

    .line 344
    sget-object v19, Lfr/testudo/spacecorsair/mod/ModPoliceGen;->BLOOD:[F

    const/16 v20, 0x2

    aget v19, v19, v20

    mul-float v17, v17, v19

    const/high16 v19, 0x3f800000    # 1.0f

    sub-float v19, v19, v5

    mul-float v17, v17, v19

    sget-object v19, Lfr/testudo/spacecorsair/mod/ModPoliceGen;->DARKSPOT:[F

    const/16 v20, 0x2

    aget v19, v19, v20

    mul-float v18, v18, v19

    mul-float v5, v5, v18

    add-float v5, v5, v17

    aput v5, v4, v6

    .line 345
    aget v5, v16, v6

    const/16 v17, 0x0

    cmpl-float v5, v5, v17

    if-lez v5, :cond_2bc

    aget v5, v7, v6

    const v17, 0x3f666666    # 0.9f

    mul-float v5, v5, v17

    .line 346
    :goto_257
    const/16 v17, 0x0

    cmpl-float v17, v5, v17

    if-lez v17, :cond_2b7

    .line 347
    const v17, 0x3f19999a    # 0.6f

    const v18, 0x3f19999a    # 0.6f

    mul-float v8, v8, v18

    add-float v8, v8, v17

    .line 348
    aget v17, v2, v6

    const/high16 v18, 0x3f800000    # 1.0f

    sub-float v18, v18, v5

    mul-float v17, v17, v18

    sget-object v18, Lfr/testudo/spacecorsair/mod/ModPoliceGen;->BLOOD:[F

    const/16 v19, 0x0

    aget v18, v18, v19

    const v19, 0x3f933333    # 1.15f

    mul-float v18, v18, v19

    mul-float v18, v18, v8

    mul-float v18, v18, v5

    add-float v17, v17, v18

    aput v17, v2, v6

    .line 349
    aget v17, v3, v6

    const/high16 v18, 0x3f800000    # 1.0f

    sub-float v18, v18, v5

    mul-float v17, v17, v18

    sget-object v18, Lfr/testudo/spacecorsair/mod/ModPoliceGen;->BLOOD:[F

    const/16 v19, 0x1

    aget v18, v18, v19

    const v19, 0x3f933333    # 1.15f

    mul-float v18, v18, v19

    mul-float v18, v18, v8

    mul-float v18, v18, v5

    add-float v17, v17, v18

    aput v17, v3, v6

    .line 350
    aget v17, v4, v6

    const/high16 v18, 0x3f800000    # 1.0f

    sub-float v18, v18, v5

    mul-float v17, v17, v18

    sget-object v18, Lfr/testudo/spacecorsair/mod/ModPoliceGen;->BLOOD:[F

    const/16 v19, 0x2

    aget v18, v18, v19

    const v19, 0x3f933333    # 1.15f

    mul-float v18, v18, v19

    mul-float v8, v8, v18

    mul-float/2addr v5, v8

    add-float v5, v5, v17

    aput v5, v4, v6

    .line 335
    :cond_2b7
    add-int/lit8 v5, v6, 0x1

    move v6, v5

    goto/16 :goto_167

    .line 345
    :cond_2bc
    const/4 v5, 0x0

    goto :goto_257

    .line 356
    :pswitch_2be
    const/4 v5, 0x0

    :goto_2bf
    if-ge v5, v11, :cond_ac

    .line 357
    aget v6, v12, v5

    aget v7, v13, v5

    aget v8, v14, v5

    invoke-static {v7, v8}, Ljava/lang/Math;->max(FF)F

    move-result v7

    invoke-static {v6, v7}, Ljava/lang/Math;->max(FF)F

    move-result v6

    .line 358
    const/high16 v7, 0x3f800000    # 1.0f

    const/high16 v8, 0x43160000    # 150.0f

    const/high16 v16, 0x3f800000    # 1.0f

    move/from16 v0, v16

    invoke-static {v6, v0}, Ljava/lang/Math;->max(FF)F

    move-result v6

    div-float v6, v8, v6

    invoke-static {v7, v6}, Ljava/lang/Math;->min(FF)F

    move-result v6

    .line 359
    const v7, 0x3e99999a    # 0.3f

    aget v8, v15, v5

    const/high16 v16, 0x437f0000    # 255.0f

    div-float v8, v8, v16

    const v16, 0x3e19999a    # 0.15f

    add-float v8, v8, v16

    mul-float/2addr v7, v8

    .line 360
    aget v8, v12, v5

    mul-float/2addr v8, v6

    const/high16 v16, 0x3f000000    # 0.5f

    mul-float v8, v8, v16

    sget-object v16, Lfr/testudo/spacecorsair/mod/ModPoliceGen;->VIOLET:[F

    const/16 v17, 0x0

    aget v16, v16, v17

    mul-float v16, v16, v7

    add-float v8, v8, v16

    aput v8, v2, v5

    .line 361
    aget v8, v13, v5

    mul-float/2addr v8, v6

    const/high16 v16, 0x3f000000    # 0.5f

    mul-float v8, v8, v16

    sget-object v16, Lfr/testudo/spacecorsair/mod/ModPoliceGen;->VIOLET:[F

    const/16 v17, 0x1

    aget v16, v16, v17

    mul-float v16, v16, v7

    add-float v8, v8, v16

    aput v8, v3, v5

    .line 362
    aget v8, v14, v5

    mul-float/2addr v6, v8

    const/high16 v8, 0x3f000000    # 0.5f

    mul-float/2addr v6, v8

    sget-object v8, Lfr/testudo/spacecorsair/mod/ModPoliceGen;->VIOLET:[F

    const/16 v16, 0x2

    aget v8, v8, v16

    mul-float/2addr v7, v8

    add-float/2addr v6, v7

    aput v6, v4, v5

    .line 356
    add-int/lit8 v5, v5, 0x1

    goto :goto_2bf

    .line 366
    :pswitch_329
    const v5, 0x3f333333    # 0.7f

    const/high16 v6, 0x43000000    # 128.0f

    move-object/from16 v0, p1

    invoke-static {v0, v15, v5, v6}, Lfr/testudo/spacecorsair/mod/ModPoliceGen;->percentile(Lfr/testudo/spacecorsair/mod/ModPoliceGen$Img;[FFF)F

    move-result v6

    .line 367
    const/4 v5, 0x0

    :goto_335
    if-ge v5, v11, :cond_ac

    .line 368
    aget v7, v12, v5

    aget v8, v13, v5

    aget v16, v14, v5

    move/from16 v0, v16

    invoke-static {v8, v0}, Ljava/lang/Math;->max(FF)F

    move-result v8

    invoke-static {v7, v8}, Ljava/lang/Math;->max(FF)F

    move-result v7

    aget v8, v12, v5

    aget v16, v13, v5

    aget v17, v14, v5

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->min(FF)F

    move-result v16

    move/from16 v0, v16

    invoke-static {v8, v0}, Ljava/lang/Math;->min(FF)F

    move-result v8

    .line 369
    sub-float v8, v7, v8

    const/high16 v16, 0x3f800000    # 1.0f

    move/from16 v0, v16

    invoke-static {v7, v0}, Ljava/lang/Math;->max(FF)F

    move-result v7

    div-float v7, v8, v7

    const v8, 0x3df5c28f    # 0.12f

    const v16, 0x3e99999a    # 0.3f

    move/from16 v0, v16

    invoke-static {v7, v8, v0}, Lfr/testudo/spacecorsair/mod/ModPoliceGen;->smooth(FFF)F

    move-result v7

    .line 370
    const/high16 v8, 0x437f0000    # 255.0f

    aget v16, v15, v5

    const/high16 v17, 0x437f0000    # 255.0f

    div-float v16, v16, v17

    move/from16 v0, v16

    float-to-double v0, v0

    move-wide/from16 v16, v0

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v16

    move-wide/from16 v0, v16

    double-to-float v0, v0

    move/from16 v16, v0

    mul-float v8, v8, v16

    const v16, 0x3e99999a    # 0.3f

    aget v17, v15, v5

    mul-float v16, v16, v17

    const/high16 v17, 0x41000000    # 8.0f

    add-float v16, v16, v17

    .line 371
    aget v17, v15, v5

    const/high16 v18, 0x41900000    # 18.0f

    sub-float v18, v6, v18

    const/high16 v19, 0x41900000    # 18.0f

    add-float v19, v19, v6

    invoke-static/range {v17 .. v19}, Lfr/testudo/spacecorsair/mod/ModPoliceGen;->smooth(FFF)F

    move-result v17

    const/high16 v18, 0x3f800000    # 1.0f

    const/high16 v19, 0x3f000000    # 0.5f

    mul-float v7, v7, v19

    sub-float v7, v18, v7

    mul-float v7, v7, v17

    .line 372
    mul-float/2addr v8, v7

    const/high16 v17, 0x3f800000    # 1.0f

    sub-float v7, v17, v7

    mul-float v7, v7, v16

    add-float/2addr v7, v8

    aput v7, v4, v5

    aput v7, v3, v5

    aput v7, v2, v5

    .line 367
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_335

    .line 377
    :pswitch_3bc
    const v5, 0x3cf5c28f    # 0.03f

    const/4 v6, 0x0

    move-object/from16 v0, p1

    invoke-static {v0, v15, v5, v6}, Lfr/testudo/spacecorsair/mod/ModPoliceGen;->percentile(Lfr/testudo/spacecorsair/mod/ModPoliceGen$Img;[FFF)F

    move-result v12

    const v5, 0x3f7851ec    # 0.97f

    const/high16 v6, 0x437f0000    # 255.0f

    move-object/from16 v0, p1

    invoke-static {v0, v15, v5, v6}, Lfr/testudo/spacecorsair/mod/ModPoliceGen;->percentile(Lfr/testudo/spacecorsair/mod/ModPoliceGen$Img;[FFF)F

    move-result v13

    .line 378
    move-object/from16 v0, p3

    invoke-static {v9, v10, v0}, Lfr/testudo/spacecorsair/mod/ModPoliceGen;->camo(IILjava/lang/String;)[F

    move-result-object v14

    .line 379
    const/4 v5, 0x0

    :goto_3d8
    if-ge v5, v11, :cond_ac

    .line 380
    const/4 v6, 0x0

    const/high16 v7, 0x3f800000    # 1.0f

    aget v8, v15, v5

    sub-float/2addr v8, v12

    sub-float v17, v13, v12

    const/high16 v18, 0x3f800000    # 1.0f

    invoke-static/range {v17 .. v18}, Ljava/lang/Math;->max(FF)F

    move-result v17

    div-float v8, v8, v17

    invoke-static {v7, v8}, Ljava/lang/Math;->min(FF)F

    move-result v7

    invoke-static {v6, v7}, Ljava/lang/Math;->max(FF)F

    move-result v6

    .line 381
    const v7, 0x3dcccccd    # 0.1f

    const v8, 0x3fa66666    # 1.3f

    float-to-double v0, v6

    move-wide/from16 v18, v0

    const-wide v20, 0x3ff2666666666666L    # 1.15

    invoke-static/range {v18 .. v21}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v18

    move-wide/from16 v0, v18

    double-to-float v6, v0

    mul-float/2addr v6, v8

    add-float/2addr v6, v7

    .line 382
    const/high16 v7, 0x437f0000    # 255.0f

    sget-object v8, Lfr/testudo/spacecorsair/mod/ModPoliceGen;->MGREEN:[F

    const/16 v17, 0x0

    aget v8, v8, v17

    mul-float/2addr v8, v6

    invoke-static {v7, v8}, Ljava/lang/Math;->min(FF)F

    move-result v7

    aput v7, v2, v5

    const/high16 v7, 0x437f0000    # 255.0f

    sget-object v8, Lfr/testudo/spacecorsair/mod/ModPoliceGen;->MGREEN:[F

    const/16 v17, 0x1

    aget v8, v8, v17

    mul-float/2addr v8, v6

    invoke-static {v7, v8}, Ljava/lang/Math;->min(FF)F

    move-result v7

    aput v7, v3, v5

    const/high16 v7, 0x437f0000    # 255.0f

    sget-object v8, Lfr/testudo/spacecorsair/mod/ModPoliceGen;->MGREEN:[F

    const/16 v17, 0x2

    aget v8, v8, v17

    mul-float/2addr v6, v8

    invoke-static {v7, v6}, Ljava/lang/Math;->min(FF)F

    move-result v6

    aput v6, v4, v5

    .line 383
    aget v6, v16, v5

    const/4 v7, 0x0

    cmpl-float v6, v6, v7

    if-lez v6, :cond_45f

    aget v6, v14, v5

    const v7, 0x3f4ccccd    # 0.8f

    mul-float/2addr v7, v6

    .line 384
    :goto_443
    const/4 v6, 0x0

    cmpl-float v6, v7, v6

    if-lez v6, :cond_45b

    sget-object v6, Lfr/testudo/spacecorsair/mod/ModPoliceGen;->CAMO:[F

    const/high16 v8, 0x3f000000    # 0.5f

    const/high16 v17, 0x3f800000    # 1.0f

    aget v18, v15, v5

    mul-float v17, v17, v18

    const/high16 v18, 0x437f0000    # 255.0f

    div-float v17, v17, v18

    add-float v8, v8, v17

    invoke-static/range {v2 .. v8}, Lfr/testudo/spacecorsair/mod/ModPoliceGen;->mix([F[F[FI[FFF)V

    .line 379
    :cond_45b
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_3d8

    .line 383
    :cond_45f
    const/4 v7, 0x0

    goto :goto_443

    .line 389
    :pswitch_461
    const/high16 v5, 0x40e00000    # 7.0f

    mul-float/2addr v5, v7

    move-object/from16 v0, v16

    invoke-static {v0, v9, v10, v5}, Lfr/testudo/spacecorsair/mod/ModPoliceGen;->band([FIIF)[F

    move-result-object v12

    .line 390
    const/4 v5, 0x0

    :goto_46b
    if-ge v5, v11, :cond_ac

    .line 391
    aget v6, v16, v5

    const/4 v7, 0x0

    cmpl-float v6, v6, v7

    if-lez v6, :cond_494

    aget v6, v12, v5

    const v7, 0x3f266666    # 0.65f

    mul-float/2addr v7, v6

    .line 392
    :goto_47a
    const/4 v6, 0x0

    cmpl-float v6, v7, v6

    if-lez v6, :cond_491

    sget-object v6, Lfr/testudo/spacecorsair/mod/ModPoliceGen;->LGOLD:[F

    const v8, 0x3f59999a    # 0.85f

    const v13, 0x3e19999a    # 0.15f

    aget v14, v15, v5

    mul-float/2addr v13, v14

    const/high16 v14, 0x437f0000    # 255.0f

    div-float/2addr v13, v14

    add-float/2addr v8, v13

    invoke-static/range {v2 .. v8}, Lfr/testudo/spacecorsair/mod/ModPoliceGen;->mix([F[F[FI[FFF)V

    .line 390
    :cond_491
    add-int/lit8 v5, v5, 0x1

    goto :goto_46b

    .line 391
    :cond_494
    const/4 v7, 0x0

    goto :goto_47a

    .line 401
    :cond_496
    new-instance v2, Lfr/testudo/spacecorsair/mod/ModPoliceGen$Img;

    move-object/from16 v0, p1

    iget-boolean v3, v0, Lfr/testudo/spacecorsair/mod/ModPoliceGen$Img;->opaque:Z

    invoke-direct {v2, v9, v10, v6, v3}, Lfr/testudo/spacecorsair/mod/ModPoliceGen$Img;-><init>(II[IZ)V

    return-object v2

    .line 322
    :pswitch_data_4a0
    .packed-switch 0x0
        :pswitch_d8
        :pswitch_15c
        :pswitch_2be
        :pswitch_329
        :pswitch_3bc
        :pswitch_461
    .end packed-switch
.end method

.method static band([FIIF)[F
    .registers 12

    .prologue
    const/4 v1, 0x0

    .line 241
    const/4 v0, 0x1

    float-to-int v2, p3

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 242
    invoke-static {p0, p1, p2, v2}, Lfr/testudo/spacecorsair/mod/ModPoliceGen;->minFilter([FIII)[F

    move-result-object v3

    .line 243
    array-length v0, p0

    new-array v4, v0, [F

    move v0, v1

    .line 244
    :goto_f
    array-length v5, v4

    if-ge v0, v5, :cond_27

    const/4 v5, 0x0

    aget v6, p0, v0

    aget v7, v3, v0

    sub-float/2addr v6, v7

    invoke-static {v5, v6}, Ljava/lang/Math;->max(FF)F

    move-result v5

    float-to-double v6, v5

    invoke-static {v6, v7}, Ljava/lang/Math;->floor(D)D

    move-result-wide v6

    double-to-float v5, v6

    aput v5, v4, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_f

    .line 245
    :cond_27
    int-to-float v0, v2

    const v2, 0x3eb33333    # 0.35f

    mul-float/2addr v0, v2

    invoke-static {v4, p1, p2, v0}, Lfr/testudo/spacecorsair/mod/ModPoliceGen;->blur([FIIF)[F

    move-result-object v0

    .line 246
    :goto_30
    array-length v2, v0

    if-ge v1, v2, :cond_3d

    aget v2, v0, v1

    const/high16 v3, 0x437f0000    # 255.0f

    div-float/2addr v2, v3

    aput v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_30

    .line 247
    :cond_3d
    return-object v0
.end method

.method static bilinear([FIIFF)F
    .registers 14

    .prologue
    const/4 v2, 0x0

    const/high16 v8, 0x3f800000    # 1.0f

    .line 428
    add-int/lit8 v0, p1, -0x1

    int-to-float v0, v0

    invoke-static {v0, p3}, Ljava/lang/Math;->min(FF)F

    move-result v0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    add-int/lit8 v1, p2, -0x1

    int-to-float v1, v1

    invoke-static {v1, p4}, Ljava/lang/Math;->min(FF)F

    move-result v1

    invoke-static {v2, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    .line 429
    float-to-int v2, v0

    float-to-int v3, v1

    add-int/lit8 v4, p1, -0x1

    add-int/lit8 v5, v2, 0x1

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    add-int/lit8 v5, p2, -0x1

    add-int/lit8 v6, v3, 0x1

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 430
    int-to-float v6, v2

    sub-float/2addr v0, v6

    int-to-float v6, v3

    sub-float/2addr v1, v6

    .line 431
    mul-int v6, v3, p1

    add-int/2addr v6, v2

    aget v6, p0, v6

    sub-float v7, v8, v0

    mul-float/2addr v6, v7

    mul-int/2addr v3, p1

    add-int/2addr v3, v4

    aget v3, p0, v3

    mul-float/2addr v3, v0

    add-float/2addr v3, v6

    mul-int v6, v5, p1

    add-int/2addr v2, v6

    aget v2, p0, v2

    sub-float v6, v8, v0

    mul-float/2addr v2, v6

    mul-int/2addr v5, p1

    add-int/2addr v4, v5

    aget v4, p0, v4

    mul-float/2addr v0, v4

    add-float/2addr v0, v2

    .line 432
    sub-float v2, v8, v1

    mul-float/2addr v2, v3

    mul-float/2addr v0, v1

    add-float/2addr v0, v2

    return v0
.end method

.method static blur([FIIF)[F
    .registers 15

    .prologue
    .line 206
    const v0, 0x3e99999a    # 0.3f

    cmpg-float v0, p3, v0

    if-gez v0, :cond_e

    invoke-virtual {p0}, [F->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [F

    .line 236
    :goto_d
    return-object v0

    .line 207
    :cond_e
    const/high16 v0, 0x40400000    # 3.0f

    mul-float/2addr v0, p3

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v6, v0

    .line 208
    mul-int/lit8 v0, v6, 0x2

    add-int/lit8 v0, v0, 0x1

    new-array v7, v0, [F

    .line 209
    const/4 v1, 0x0

    .line 210
    neg-int v0, v6

    :goto_1f
    if-gt v0, v6, :cond_3b

    add-int v2, v0, v6

    neg-int v3, v0

    mul-int/2addr v3, v0

    int-to-float v3, v3

    const/high16 v4, 0x40000000    # 2.0f

    mul-float/2addr v4, p3

    mul-float/2addr v4, p3

    div-float/2addr v3, v4

    float-to-double v4, v3

    invoke-static {v4, v5}, Ljava/lang/Math;->exp(D)D

    move-result-wide v4

    double-to-float v3, v4

    aput v3, v7, v2

    add-int v2, v0, v6

    aget v2, v7, v2

    add-float/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_1f

    .line 211
    :cond_3b
    const/4 v0, 0x0

    :goto_3c
    array-length v2, v7

    if-ge v0, v2, :cond_47

    aget v2, v7, v0

    div-float/2addr v2, v1

    aput v2, v7, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_3c

    .line 212
    :cond_47
    array-length v0, p0

    new-array v8, v0, [F

    array-length v0, p0

    new-array v1, v0, [F

    .line 213
    const/4 v0, 0x0

    move v5, v0

    :goto_4f
    if-ge v5, p2, :cond_7f

    .line 214
    mul-int v9, v5, p1

    .line 215
    const/4 v0, 0x0

    move v4, v0

    :goto_55
    if-ge v4, p1, :cond_7b

    .line 216
    const/4 v3, 0x0

    .line 217
    neg-int v0, v6

    move v2, v0

    :goto_5a
    if-gt v2, v6, :cond_73

    .line 218
    add-int v0, v4, v2

    .line 219
    if-gez v0, :cond_6e

    const/4 v0, 0x0

    .line 220
    :cond_61
    :goto_61
    add-int/2addr v0, v9

    aget v0, p0, v0

    add-int v10, v2, v6

    aget v10, v7, v10

    mul-float/2addr v0, v10

    add-float/2addr v3, v0

    .line 217
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_5a

    .line 219
    :cond_6e
    if-lt v0, p1, :cond_61

    add-int/lit8 v0, p1, -0x1

    goto :goto_61

    .line 222
    :cond_73
    add-int v0, v9, v4

    aput v3, v8, v0

    .line 215
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_55

    .line 213
    :cond_7b
    add-int/lit8 v0, v5, 0x1

    move v5, v0

    goto :goto_4f

    .line 225
    :cond_7f
    const/4 v0, 0x0

    move v5, v0

    :goto_81
    if-ge v5, p2, :cond_b1

    .line 226
    const/4 v0, 0x0

    move v4, v0

    :goto_85
    if-ge v4, p1, :cond_ad

    .line 227
    const/4 v3, 0x0

    .line 228
    neg-int v0, v6

    move v2, v0

    :goto_8a
    if-gt v2, v6, :cond_a4

    .line 229
    add-int v0, v5, v2

    .line 230
    if-gez v0, :cond_9f

    const/4 v0, 0x0

    .line 231
    :cond_91
    :goto_91
    mul-int/2addr v0, p1

    add-int/2addr v0, v4

    aget v0, v8, v0

    add-int v9, v2, v6

    aget v9, v7, v9

    mul-float/2addr v0, v9

    add-float/2addr v3, v0

    .line 228
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_8a

    .line 230
    :cond_9f
    if-lt v0, p2, :cond_91

    add-int/lit8 v0, p2, -0x1

    goto :goto_91

    .line 233
    :cond_a4
    mul-int v0, v5, p1

    add-int/2addr v0, v4

    aput v3, v1, v0

    .line 226
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_85

    .line 225
    :cond_ad
    add-int/lit8 v0, v5, 0x1

    move v5, v0

    goto :goto_81

    :cond_b1
    move-object v0, v1

    .line 236
    goto/16 :goto_d
.end method

.method static camo(IILjava/lang/String;)[F
    .registers 16

    .prologue
    const/16 v12, 0x12

    const/high16 v11, 0x41900000    # 18.0f

    const/4 v1, 0x0

    const/high16 v10, 0x3f000000    # 0.5f

    .line 412
    new-instance v2, Ljava/util/Random;

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v0

    int-to-long v4, v0

    invoke-direct {v2, v4, v5}, Ljava/util/Random;-><init>(J)V

    .line 413
    const/16 v0, 0x144

    new-array v3, v0, [F

    move v0, v1

    .line 414
    :goto_16
    array-length v4, v3

    if-ge v0, v4, :cond_22

    invoke-virtual {v2}, Ljava/util/Random;->nextFloat()F

    move-result v4

    aput v4, v3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_16

    .line 415
    :cond_22
    const/16 v4, 0x80

    .line 416
    const/16 v0, 0x4000

    new-array v5, v0, [F

    move v2, v1

    .line 417
    :goto_29
    if-ge v2, v4, :cond_4a

    move v0, v1

    .line 418
    :goto_2c
    if-ge v0, v4, :cond_46

    mul-int v6, v2, v4

    add-int/2addr v6, v0

    int-to-float v7, v0

    add-float/2addr v7, v10

    mul-float/2addr v7, v11

    int-to-float v8, v4

    div-float/2addr v7, v8

    sub-float/2addr v7, v10

    int-to-float v8, v2

    add-float/2addr v8, v10

    mul-float/2addr v8, v11

    int-to-float v9, v4

    div-float/2addr v8, v9

    sub-float/2addr v8, v10

    invoke-static {v3, v12, v12, v7, v8}, Lfr/testudo/spacecorsair/mod/ModPoliceGen;->bilinear([FIIFF)F

    move-result v7

    aput v7, v5, v6

    add-int/lit8 v0, v0, 0x1

    goto :goto_2c

    .line 417
    :cond_46
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_29

    .line 419
    :cond_4a
    int-to-float v0, v4

    div-float/2addr v0, v11

    const v2, 0x3eb33333    # 0.35f

    mul-float/2addr v0, v2

    invoke-static {v5, v4, v4, v0}, Lfr/testudo/spacecorsair/mod/ModPoliceGen;->blur([FIIF)[F

    move-result-object v3

    .line 420
    mul-int v0, p0, p1

    new-array v5, v0, [F

    move v2, v1

    .line 421
    :goto_59
    if-ge v2, p1, :cond_86

    move v0, v1

    .line 422
    :goto_5c
    if-ge v0, p0, :cond_82

    .line 423
    mul-int v6, v2, p0

    add-int/2addr v6, v0

    int-to-float v7, v0

    add-float/2addr v7, v10

    int-to-float v8, v4

    mul-float/2addr v7, v8

    int-to-float v8, p0

    div-float/2addr v7, v8

    sub-float/2addr v7, v10

    int-to-float v8, v2

    add-float/2addr v8, v10

    int-to-float v9, v4

    mul-float/2addr v8, v9

    int-to-float v9, p1

    div-float/2addr v8, v9

    sub-float/2addr v8, v10

    invoke-static {v3, v4, v4, v7, v8}, Lfr/testudo/spacecorsair/mod/ModPoliceGen;->bilinear([FIIFF)F

    move-result v7

    const v8, 0x3f19999a    # 0.6f

    const v9, 0x3f23d70a    # 0.64f

    invoke-static {v7, v8, v9}, Lfr/testudo/spacecorsair/mod/ModPoliceGen;->smooth(FFF)F

    move-result v7

    aput v7, v5, v6

    .line 422
    add-int/lit8 v0, v0, 0x1

    goto :goto_5c

    .line 421
    :cond_82
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_59

    .line 424
    :cond_86
    return-object v5
.end method

.method static clamp(F)I
    .registers 3

    .prologue
    const/16 v0, 0xff

    .line 155
    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 156
    if-gez v1, :cond_a

    const/4 v0, 0x0

    :cond_9
    :goto_9
    return v0

    :cond_a
    if-gt v1, v0, :cond_9

    move v0, v1

    goto :goto_9
.end method

.method static declared-synchronized factionOf(Ljava/lang/String;)I
    .registers 14

    .prologue
    const/4 v0, 0x0

    .line 44
    const-class v4, Lfr/testudo/spacecorsair/mod/ModPoliceGen;

    monitor-enter v4

    :try_start_4
    sget-object v1, Lfr/testudo/spacecorsair/mod/ModPoliceGen;->faction:Ljava/util/Map;

    if-nez v1, :cond_68

    .line 45
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    move v3, v0

    .line 46
    :goto_e
    sget-object v1, Lfr/testudo/spacecorsair/mod/ModPoliceData;->ROSTER:[[[Ljava/lang/String;

    array-length v1, v1

    if-ge v3, v1, :cond_40

    .line 47
    sget-object v1, Lfr/testudo/spacecorsair/mod/ModPoliceData;->ROSTER:[[[Ljava/lang/String;

    aget-object v6, v1, v3

    array-length v7, v6

    move v2, v0

    :goto_19
    if-ge v2, v7, :cond_3c

    aget-object v8, v6, v2

    .line 48
    array-length v9, v8

    move v1, v0

    :goto_1f
    if-ge v1, v9, :cond_38

    aget-object v10, v8, v1

    const/4 v11, 0x0

    const/16 v12, 0x3a

    invoke-virtual {v10, v12}, Ljava/lang/String;->indexOf(I)I

    move-result v12

    invoke-virtual {v10, v11, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v5, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_1f

    .line 47
    :cond_38
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_19

    .line 46
    :cond_3c
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_e

    .line 49
    :cond_40
    :goto_40
    sget-object v1, Lfr/testudo/spacecorsair/mod/ModPoliceGen;->KEYS:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_66

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cap_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lfr/testudo/spacecorsair/mod/ModPoliceGen;->KEYS:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v5, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_40

    .line 50
    :cond_66
    sput-object v5, Lfr/testudo/spacecorsair/mod/ModPoliceGen;->faction:Ljava/util/Map;

    .line 52
    :cond_68
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModPoliceGen;->faction:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;
    :try_end_70
    .catchall {:try_start_4 .. :try_end_70} :catchall_7a

    .line 53
    if-nez v0, :cond_75

    const/4 v0, -0x1

    :goto_73
    monitor-exit v4

    return v0

    :cond_75
    :try_start_75
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_78
    .catchall {:try_start_75 .. :try_end_78} :catchall_7a

    move-result v0

    goto :goto_73

    .line 44
    :catchall_7a
    move-exception v0

    monitor-exit v4

    throw v0
.end method

.method static glow(Lfr/testudo/spacecorsair/mod/ModPoliceGen$Img;ZZ)Lfr/testudo/spacecorsair/mod/ModPoliceGen$Img;
    .registers 15

    .prologue
    .line 285
    iget v5, p0, Lfr/testudo/spacecorsair/mod/ModPoliceGen$Img;->w:I

    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModPoliceGen$Img;->px:[I

    array-length v6, v0

    .line 286
    new-array v7, v6, [I

    .line 287
    const/4 v0, 0x0

    move v4, v0

    :goto_9
    if-ge v4, v6, :cond_b2

    .line 288
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModPoliceGen$Img;->px:[I

    aget v8, v0, v4

    .line 289
    shr-int/lit8 v0, v8, 0x10

    and-int/lit16 v0, v0, 0xff

    shr-int/lit8 v1, v8, 0x8

    and-int/lit16 v1, v1, 0xff

    and-int/lit16 v2, v8, 0xff

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    int-to-float v3, v0

    .line 291
    if-eqz p2, :cond_56

    .line 292
    const v0, 0x3f19999a    # 0.6f

    mul-float/2addr v3, v0

    sget-object v0, Lfr/testudo/spacecorsair/mod/ModPoliceGen;->COUNCIL_RAW:[F

    const/4 v1, 0x0

    aget v2, v0, v1

    sget-object v0, Lfr/testudo/spacecorsair/mod/ModPoliceGen;->COUNCIL_RAW:[F

    const/4 v1, 0x1

    aget v1, v0, v1

    sget-object v0, Lfr/testudo/spacecorsair/mod/ModPoliceGen;->COUNCIL_RAW:[F

    const/4 v9, 0x2

    aget v0, v0, v9

    .line 301
    :goto_37
    const/high16 v9, -0x1000000

    and-int/2addr v8, v9

    mul-float/2addr v2, v3

    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModPoliceGen;->clamp(F)I

    move-result v2

    shl-int/lit8 v2, v2, 0x10

    or-int/2addr v2, v8

    mul-float/2addr v1, v3

    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModPoliceGen;->clamp(F)I

    move-result v1

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v1, v2

    mul-float/2addr v0, v3

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModPoliceGen;->clamp(F)I

    move-result v0

    or-int/2addr v0, v1

    aput v0, v7, v4

    .line 287
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_9

    .line 293
    :cond_56
    if-eqz p1, :cond_a2

    .line 294
    rem-int v0, v4, v5

    int-to-float v0, v0

    int-to-float v1, v5

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    sub-float/2addr v0, v1

    neg-float v0, v0

    neg-int v1, v5

    int-to-float v1, v1

    const v2, 0x3c23d70a    # 0.01f

    mul-float/2addr v1, v2

    int-to-float v2, v5

    const v9, 0x3c23d70a    # 0.01f

    mul-float/2addr v2, v9

    invoke-static {v0, v1, v2}, Lfr/testudo/spacecorsair/mod/ModPoliceGen;->smooth(FFF)F

    move-result v0

    .line 295
    sget-object v1, Lfr/testudo/spacecorsair/mod/ModPoliceGen;->LIGHT_RED:[F

    const/4 v2, 0x0

    aget v1, v1, v2

    mul-float/2addr v1, v0

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float/2addr v2, v0

    sget-object v9, Lfr/testudo/spacecorsair/mod/ModPoliceGen;->LIGHT_BLUE:[F

    const/4 v10, 0x0

    aget v9, v9, v10

    mul-float/2addr v2, v9

    add-float/2addr v2, v1

    .line 296
    sget-object v1, Lfr/testudo/spacecorsair/mod/ModPoliceGen;->LIGHT_RED:[F

    const/4 v9, 0x1

    aget v1, v1, v9

    mul-float/2addr v1, v0

    const/high16 v9, 0x3f800000    # 1.0f

    sub-float/2addr v9, v0

    sget-object v10, Lfr/testudo/spacecorsair/mod/ModPoliceGen;->LIGHT_BLUE:[F

    const/4 v11, 0x1

    aget v10, v10, v11

    mul-float/2addr v9, v10

    add-float/2addr v1, v9

    .line 297
    sget-object v9, Lfr/testudo/spacecorsair/mod/ModPoliceGen;->LIGHT_RED:[F

    const/4 v10, 0x2

    aget v9, v9, v10

    mul-float/2addr v9, v0

    const/high16 v10, 0x3f800000    # 1.0f

    sub-float v0, v10, v0

    sget-object v10, Lfr/testudo/spacecorsair/mod/ModPoliceGen;->LIGHT_BLUE:[F

    const/4 v11, 0x2

    aget v10, v10, v11

    mul-float/2addr v0, v10

    add-float/2addr v0, v9

    .line 298
    goto :goto_37

    .line 299
    :cond_a2
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModPoliceGen;->ENGINE:[F

    const/4 v1, 0x0

    aget v2, v0, v1

    sget-object v0, Lfr/testudo/spacecorsair/mod/ModPoliceGen;->ENGINE:[F

    const/4 v1, 0x1

    aget v1, v0, v1

    sget-object v0, Lfr/testudo/spacecorsair/mod/ModPoliceGen;->ENGINE:[F

    const/4 v9, 0x2

    aget v0, v0, v9

    goto :goto_37

    .line 303
    :cond_b2
    new-instance v0, Lfr/testudo/spacecorsair/mod/ModPoliceGen$Img;

    iget v1, p0, Lfr/testudo/spacecorsair/mod/ModPoliceGen$Img;->w:I

    iget v2, p0, Lfr/testudo/spacecorsair/mod/ModPoliceGen$Img;->h:I

    iget-boolean v3, p0, Lfr/testudo/spacecorsair/mod/ModPoliceGen$Img;->opaque:Z

    invoke-direct {v0, v1, v2, v7, v3}, Lfr/testudo/spacecorsair/mod/ModPoliceGen$Img;-><init>(II[IZ)V

    return-object v0
.end method

.method static hull(Lfr/testudo/spacecorsair/mod/ModPoliceGen$Img;Z)Lfr/testudo/spacecorsair/mod/ModPoliceGen$Img;
    .registers 14

    .prologue
    .line 255
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModPoliceGen$Img;->px:[I

    array-length v2, v0

    .line 256
    new-array v3, v2, [I

    .line 257
    new-array v4, v2, [F

    .line 258
    const/4 v0, 0x0

    :goto_8
    if-ge v0, v2, :cond_17

    iget-object v1, p0, Lfr/testudo/spacecorsair/mod/ModPoliceGen$Img;->px:[I

    aget v1, v1, v0

    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModPoliceGen;->lum(I)F

    move-result v1

    aput v1, v4, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 259
    :cond_17
    if-eqz p1, :cond_69

    const/4 v0, 0x0

    .line 260
    :goto_1a
    const/4 v1, 0x0

    :goto_1b
    if-ge v1, v2, :cond_f0

    .line 261
    iget-object v5, p0, Lfr/testudo/spacecorsair/mod/ModPoliceGen$Img;->px:[I

    aget v5, v5, v1

    .line 262
    shr-int/lit8 v6, v5, 0x10

    and-int/lit16 v6, v6, 0xff

    shr-int/lit8 v7, v5, 0x8

    and-int/lit16 v7, v7, 0xff

    and-int/lit16 v8, v5, 0xff

    .line 263
    aget v9, v4, v1

    .line 264
    if-eqz p1, :cond_72

    .line 265
    const v6, 0x3f59999a    # 0.85f

    const/high16 v7, 0x430c0000    # 140.0f

    invoke-static {v9, v7}, Ljava/lang/Math;->min(FF)F

    move-result v7

    mul-float/2addr v6, v7

    const/high16 v7, 0x40c00000    # 6.0f

    add-float/2addr v6, v7

    .line 266
    const/high16 v7, -0x1000000

    and-int/2addr v5, v7

    sget-object v7, Lfr/testudo/spacecorsair/mod/ModPoliceGen;->COUNCIL:[F

    const/4 v8, 0x0

    aget v7, v7, v8

    mul-float/2addr v7, v6

    invoke-static {v7}, Lfr/testudo/spacecorsair/mod/ModPoliceGen;->clamp(F)I

    move-result v7

    shl-int/lit8 v7, v7, 0x10

    or-int/2addr v5, v7

    sget-object v7, Lfr/testudo/spacecorsair/mod/ModPoliceGen;->COUNCIL:[F

    const/4 v8, 0x1

    aget v7, v7, v8

    mul-float/2addr v7, v6

    invoke-static {v7}, Lfr/testudo/spacecorsair/mod/ModPoliceGen;->clamp(F)I

    move-result v7

    shl-int/lit8 v7, v7, 0x8

    or-int/2addr v5, v7

    sget-object v7, Lfr/testudo/spacecorsair/mod/ModPoliceGen;->COUNCIL:[F

    const/4 v8, 0x2

    aget v7, v7, v8

    mul-float/2addr v6, v7

    invoke-static {v6}, Lfr/testudo/spacecorsair/mod/ModPoliceGen;->clamp(F)I

    move-result v6

    or-int/2addr v5, v6

    aput v5, v3, v1

    .line 260
    :goto_66
    add-int/lit8 v1, v1, 0x1

    goto :goto_1b

    .line 259
    :cond_69
    const/high16 v0, 0x3f000000    # 0.5f

    const/high16 v1, 0x43000000    # 128.0f

    invoke-static {p0, v4, v0, v1}, Lfr/testudo/spacecorsair/mod/ModPoliceGen;->percentile(Lfr/testudo/spacecorsair/mod/ModPoliceGen$Img;[FFF)F

    move-result v0

    goto :goto_1a

    .line 269
    :cond_72
    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    move-result v10

    invoke-static {v6, v10}, Ljava/lang/Math;->max(II)I

    move-result v10

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v7

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v6

    .line 270
    sub-int v6, v10, v6

    int-to-float v6, v6

    const/4 v7, 0x1

    invoke-static {v10, v7}, Ljava/lang/Math;->max(II)I

    move-result v7

    int-to-float v7, v7

    div-float/2addr v6, v7

    const v7, 0x3df5c28f    # 0.12f

    const v8, 0x3e99999a    # 0.3f

    invoke-static {v6, v7, v8}, Lfr/testudo/spacecorsair/mod/ModPoliceGen;->smooth(FFF)F

    move-result v6

    .line 271
    const/high16 v7, 0x437f0000    # 255.0f

    const/high16 v8, 0x437f0000    # 255.0f

    div-float v8, v9, v8

    float-to-double v10, v8

    invoke-static {v10, v11}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v10

    double-to-float v8, v10

    mul-float/2addr v7, v8

    .line 272
    const v8, 0x3e99999a    # 0.3f

    mul-float/2addr v8, v9

    const/high16 v10, 0x41000000    # 8.0f

    add-float/2addr v8, v10

    .line 273
    const/high16 v10, 0x41900000    # 18.0f

    sub-float v10, v0, v10

    const/high16 v11, 0x41900000    # 18.0f

    add-float/2addr v11, v0

    invoke-static {v9, v10, v11}, Lfr/testudo/spacecorsair/mod/ModPoliceGen;->smooth(FFF)F

    move-result v9

    const/high16 v10, 0x3f800000    # 1.0f

    const/high16 v11, 0x3f000000    # 0.5f

    mul-float/2addr v6, v11

    sub-float v6, v10, v6

    mul-float/2addr v6, v9

    .line 274
    mul-float/2addr v7, v6

    const/high16 v9, 0x3f800000    # 1.0f

    sub-float v6, v9, v6

    mul-float/2addr v6, v8

    add-float/2addr v6, v7

    .line 275
    const/high16 v7, -0x1000000

    and-int/2addr v5, v7

    sget-object v7, Lfr/testudo/spacecorsair/mod/ModPoliceGen;->SILVER:[F

    const/4 v8, 0x0

    aget v7, v7, v8

    mul-float/2addr v7, v6

    invoke-static {v7}, Lfr/testudo/spacecorsair/mod/ModPoliceGen;->clamp(F)I

    move-result v7

    shl-int/lit8 v7, v7, 0x10

    or-int/2addr v5, v7

    sget-object v7, Lfr/testudo/spacecorsair/mod/ModPoliceGen;->SILVER:[F

    const/4 v8, 0x1

    aget v7, v7, v8

    mul-float/2addr v7, v6

    invoke-static {v7}, Lfr/testudo/spacecorsair/mod/ModPoliceGen;->clamp(F)I

    move-result v7

    shl-int/lit8 v7, v7, 0x8

    or-int/2addr v5, v7

    sget-object v7, Lfr/testudo/spacecorsair/mod/ModPoliceGen;->SILVER:[F

    const/4 v8, 0x2

    aget v7, v7, v8

    mul-float/2addr v6, v7

    invoke-static {v6}, Lfr/testudo/spacecorsair/mod/ModPoliceGen;->clamp(F)I

    move-result v6

    or-int/2addr v5, v6

    aput v5, v3, v1

    goto/16 :goto_66

    .line 277
    :cond_f0
    new-instance v0, Lfr/testudo/spacecorsair/mod/ModPoliceGen$Img;

    iget v1, p0, Lfr/testudo/spacecorsair/mod/ModPoliceGen$Img;->w:I

    iget v2, p0, Lfr/testudo/spacecorsair/mod/ModPoliceGen$Img;->h:I

    iget-boolean v4, p0, Lfr/testudo/spacecorsair/mod/ModPoliceGen$Img;->opaque:Z

    invoke-direct {v0, v1, v2, v3, v4}, Lfr/testudo/spacecorsair/mod/ModPoliceGen$Img;-><init>(II[IZ)V

    return-object v0
.end method

.method static lum(I)F
    .registers 4

    .prologue
    .line 160
    const v0, 0x3e991687    # 0.299f

    shr-int/lit8 v1, p0, 0x10

    and-int/lit16 v1, v1, 0xff

    int-to-float v1, v1

    mul-float/2addr v0, v1

    const v1, 0x3f1645a2    # 0.587f

    shr-int/lit8 v2, p0, 0x8

    and-int/lit16 v2, v2, 0xff

    int-to-float v2, v2

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    const v1, 0x3de978d5    # 0.114f

    and-int/lit16 v2, p0, 0xff

    int-to-float v2, v2

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    return v0
.end method

.method public static make(Ljava/lang/String;Lfr/testudo/spacecorsair/mod/ModPoliceGen$Loader;)Lfr/testudo/spacecorsair/mod/ModPoliceGen$Img;
    .registers 12

    .prologue
    const/4 v9, 0x2

    const/4 v3, 0x0

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 109
    const-string v2, "wreck_cap_"

    invoke-virtual {p0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_11

    invoke-static {p0, p1}, Lfr/testudo/spacecorsair/mod/ModPoliceGen;->wreck(Ljava/lang/String;Lfr/testudo/spacecorsair/mod/ModPoliceGen$Loader;)Lfr/testudo/spacecorsair/mod/ModPoliceGen$Img;

    move-result-object v3

    .line 129
    :cond_10
    :goto_10
    return-object v3

    .line 110
    :cond_11
    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModPoliceGen;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 111
    if-eqz v4, :cond_10

    .line 112
    const-string v2, "#wreck"

    aget-object v5, v4, v0

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7b

    .line 113
    aget-object v2, v4, v1

    invoke-static {v2, p1}, Lfr/testudo/spacecorsair/mod/ModPoliceGen;->wreck(Ljava/lang/String;Lfr/testudo/spacecorsair/mod/ModPoliceGen$Loader;)Lfr/testudo/spacecorsair/mod/ModPoliceGen$Img;

    move-result-object v5

    .line 114
    if-eqz v5, :cond_10

    .line 115
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cap_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v3, v4, v1

    const/16 v6, 0xa

    aget-object v4, v4, v1

    const/16 v7, 0x5f

    invoke-virtual {v4, v7}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v4

    invoke-virtual {v3, v6, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModPoliceGen;->factionOf(Ljava/lang/String;)I

    move-result v2

    .line 116
    if-ne v2, v9, :cond_77

    :goto_52
    invoke-static {v5, v0}, Lfr/testudo/spacecorsair/mod/ModPoliceGen;->hull(Lfr/testudo/spacecorsair/mod/ModPoliceGen$Img;Z)Lfr/testudo/spacecorsair/mod/ModPoliceGen$Img;

    move-result-object v1

    .line 117
    if-eqz v2, :cond_5e

    const/4 v0, 0x5

    if-eq v2, v0, :cond_5e

    const/4 v0, 0x6

    if-ne v2, v0, :cond_79

    :cond_5e
    const/4 v0, -0x1

    :goto_5f
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "wreck"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v5, v1, v2}, Lfr/testudo/spacecorsair/mod/ModPoliceGen;->accent(ILfr/testudo/spacecorsair/mod/ModPoliceGen$Img;Lfr/testudo/spacecorsair/mod/ModPoliceGen$Img;Ljava/lang/String;)Lfr/testudo/spacecorsair/mod/ModPoliceGen$Img;

    move-result-object v3

    goto :goto_10

    :cond_77
    move v0, v1

    .line 116
    goto :goto_52

    :cond_79
    move v0, v2

    .line 117
    goto :goto_5f

    .line 119
    :cond_7b
    aget-object v2, v4, v1

    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModPoliceGen;->factionOf(Ljava/lang/String;)I

    move-result v5

    .line 120
    if-ltz v5, :cond_10

    .line 121
    aget-object v2, v4, v1

    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModPoliceGen;->stage5(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_eb

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v6, v4, v1

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, "_stage5"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v2}, Lfr/testudo/spacecorsair/mod/ModPoliceGen$Loader;->load(Ljava/lang/String;)Lfr/testudo/spacecorsair/mod/ModPoliceGen$Img;

    move-result-object v2

    if-eqz v2, :cond_eb

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v6, v4, v1

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, "_stage5"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 122
    :goto_bb
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v6, v4, v0

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v2}, Lfr/testudo/spacecorsair/mod/ModPoliceGen$Loader;->load(Ljava/lang/String;)Lfr/testudo/spacecorsair/mod/ModPoliceGen$Img;

    move-result-object v6

    .line 123
    if-eqz v6, :cond_10

    .line 124
    if-ne v5, v9, :cond_ee

    move v2, v0

    .line 125
    :goto_d7
    aget-object v7, v4, v0

    .line 126
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v8

    if-nez v8, :cond_f0

    invoke-static {v6, v2}, Lfr/testudo/spacecorsair/mod/ModPoliceGen;->hull(Lfr/testudo/spacecorsair/mod/ModPoliceGen$Img;Z)Lfr/testudo/spacecorsair/mod/ModPoliceGen$Img;

    move-result-object v0

    aget-object v1, v4, v1

    invoke-static {v5, v6, v0, v1}, Lfr/testudo/spacecorsair/mod/ModPoliceGen;->accent(ILfr/testudo/spacecorsair/mod/ModPoliceGen$Img;Lfr/testudo/spacecorsair/mod/ModPoliceGen$Img;Ljava/lang/String;)Lfr/testudo/spacecorsair/mod/ModPoliceGen$Img;

    move-result-object v3

    goto/16 :goto_10

    .line 121
    :cond_eb
    aget-object v2, v4, v1

    goto :goto_bb

    :cond_ee
    move v2, v1

    .line 124
    goto :goto_d7

    .line 127
    :cond_f0
    const-string v5, "_glow_l"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_fe

    invoke-static {v6, v0, v2}, Lfr/testudo/spacecorsair/mod/ModPoliceGen;->glow(Lfr/testudo/spacecorsair/mod/ModPoliceGen$Img;ZZ)Lfr/testudo/spacecorsair/mod/ModPoliceGen$Img;

    move-result-object v3

    goto/16 :goto_10

    .line 128
    :cond_fe
    const-string v0, "_glow_e"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_111

    if-eqz v2, :cond_10c

    move-object v0, v3

    :goto_109
    move-object v3, v0

    goto/16 :goto_10

    :cond_10c
    invoke-static {v6, v1, v1}, Lfr/testudo/spacecorsair/mod/ModPoliceGen;->glow(Lfr/testudo/spacecorsair/mod/ModPoliceGen$Img;ZZ)Lfr/testudo/spacecorsair/mod/ModPoliceGen$Img;

    move-result-object v0

    goto :goto_109

    .line 129
    :cond_111
    if-eqz v2, :cond_11c

    aget-object v0, v4, v1

    invoke-static {v9, v6, v6, v0}, Lfr/testudo/spacecorsair/mod/ModPoliceGen;->accent(ILfr/testudo/spacecorsair/mod/ModPoliceGen$Img;Lfr/testudo/spacecorsair/mod/ModPoliceGen$Img;Ljava/lang/String;)Lfr/testudo/spacecorsair/mod/ModPoliceGen$Img;

    move-result-object v0

    :goto_119
    move-object v3, v0

    goto/16 :goto_10

    :cond_11c
    invoke-static {v6, v1}, Lfr/testudo/spacecorsair/mod/ModPoliceGen;->hull(Lfr/testudo/spacecorsair/mod/ModPoliceGen$Img;Z)Lfr/testudo/spacecorsair/mod/ModPoliceGen$Img;

    move-result-object v0

    goto :goto_119
.end method

.method static minFilter([FIII)[F
    .registers 16

    .prologue
    const/high16 v3, 0x437f0000    # 255.0f

    const/4 v1, 0x0

    const/4 v5, 0x0

    .line 183
    array-length v0, p0

    new-array v7, v0, [F

    array-length v0, p0

    new-array v8, v0, [F

    move v6, v5

    .line 184
    :goto_b
    if-ge v6, p2, :cond_49

    .line 185
    mul-int v9, v6, p1

    move v4, v5

    .line 186
    :goto_10
    if-ge v4, p1, :cond_45

    .line 188
    sub-int v0, v4, p3

    invoke-static {v5, v0}, Ljava/lang/Math;->max(II)I

    move-result v2

    add-int/lit8 v0, p1, -0x1

    add-int v10, v4, p3

    invoke-static {v0, v10}, Ljava/lang/Math;->min(II)I

    move-result v10

    move v0, v3

    :goto_21
    if-gt v2, v10, :cond_32

    add-int v11, v9, v2

    aget v11, p0, v11

    cmpg-float v11, v11, v0

    if-gez v11, :cond_2f

    add-int v0, v9, v2

    aget v0, p0, v0

    :cond_2f
    add-int/lit8 v2, v2, 0x1

    goto :goto_21

    .line 189
    :cond_32
    sub-int v2, v4, p3

    if-ltz v2, :cond_3c

    add-int v2, v4, p3

    add-int/lit8 v10, p1, -0x1

    if-le v2, v10, :cond_3d

    :cond_3c
    move v0, v1

    .line 190
    :cond_3d
    add-int v2, v9, v4

    aput v0, v7, v2

    .line 186
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_10

    .line 184
    :cond_45
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_b

    :cond_49
    move v6, v5

    .line 193
    :goto_4a
    if-ge v6, p1, :cond_89

    move v4, v5

    .line 194
    :goto_4d
    if-ge v4, p2, :cond_85

    .line 196
    sub-int v0, v4, p3

    invoke-static {v5, v0}, Ljava/lang/Math;->max(II)I

    move-result v2

    add-int/lit8 v0, p2, -0x1

    add-int v9, v4, p3

    invoke-static {v0, v9}, Ljava/lang/Math;->min(II)I

    move-result v9

    move v0, v3

    :goto_5e
    if-gt v2, v9, :cond_71

    mul-int v10, v2, p1

    add-int/2addr v10, v6

    aget v10, v7, v10

    cmpg-float v10, v10, v0

    if-gez v10, :cond_6e

    mul-int v0, v2, p1

    add-int/2addr v0, v6

    aget v0, v7, v0

    :cond_6e
    add-int/lit8 v2, v2, 0x1

    goto :goto_5e

    .line 197
    :cond_71
    sub-int v2, v4, p3

    if-ltz v2, :cond_7b

    add-int v2, v4, p3

    add-int/lit8 v9, p2, -0x1

    if-le v2, v9, :cond_7c

    :cond_7b
    move v0, v1

    .line 198
    :cond_7c
    mul-int v2, v4, p1

    add-int/2addr v2, v6

    aput v0, v8, v2

    .line 194
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_4d

    .line 193
    :cond_85
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_4a

    .line 201
    :cond_89
    return-object v8
.end method

.method private static mix([F[F[FI[FFF)V
    .registers 10

    .prologue
    const/high16 v2, 0x3f800000    # 1.0f

    .line 405
    aget v0, p0, p3

    sub-float v1, v2, p5

    mul-float/2addr v0, v1

    const/4 v1, 0x0

    aget v1, p4, v1

    mul-float/2addr v1, p6

    mul-float/2addr v1, p5

    add-float/2addr v0, v1

    aput v0, p0, p3

    .line 406
    aget v0, p1, p3

    sub-float v1, v2, p5

    mul-float/2addr v0, v1

    const/4 v1, 0x1

    aget v1, p4, v1

    mul-float/2addr v1, p6

    mul-float/2addr v1, p5

    add-float/2addr v0, v1

    aput v0, p1, p3

    .line 407
    aget v0, p2, p3

    sub-float v1, v2, p5

    mul-float/2addr v0, v1

    const/4 v1, 0x2

    aget v1, p4, v1

    mul-float/2addr v1, p6

    mul-float/2addr v1, p5

    add-float/2addr v0, v1

    aput v0, p2, p3

    .line 408
    return-void
.end method

.method static percentile(Lfr/testudo/spacecorsair/mod/ModPoliceGen$Img;[FFF)F
    .registers 12

    .prologue
    const/16 v7, 0x400

    const/high16 v6, 0x40800000    # 4.0f

    const/4 v1, 0x0

    .line 165
    new-array v3, v7, [I

    move v0, v1

    move v2, v1

    .line 167
    :goto_9
    array-length v4, p1

    if-ge v0, v4, :cond_30

    .line 168
    iget-boolean v4, p0, Lfr/testudo/spacecorsair/mod/ModPoliceGen$Img;->opaque:Z

    if-nez v4, :cond_1d

    iget-object v4, p0, Lfr/testudo/spacecorsair/mod/ModPoliceGen$Img;->px:[I

    aget v4, v4, v0

    ushr-int/lit8 v4, v4, 0x18

    const/16 v5, 0x20

    if-gt v4, v5, :cond_1d

    .line 167
    :goto_1a
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    .line 169
    :cond_1d
    const/16 v4, 0x3ff

    aget v5, p1, v0

    mul-float/2addr v5, v6

    float-to-int v5, v5

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    aget v5, v3, v4

    add-int/lit8 v5, v5, 0x1

    aput v5, v3, v4

    .line 170
    add-int/lit8 v2, v2, 0x1

    goto :goto_1a

    .line 172
    :cond_30
    if-nez v2, :cond_33

    .line 178
    :cond_32
    :goto_32
    return p3

    .line 173
    :cond_33
    add-int/lit8 v0, v2, -0x1

    int-to-float v0, v0

    mul-float/2addr v0, p2

    float-to-double v4, v0

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v4, v4

    move v0, v1

    move v2, v1

    .line 174
    :goto_3f
    if-ge v0, v7, :cond_32

    .line 175
    aget v1, v3, v0

    add-int/2addr v2, v1

    .line 176
    if-le v2, v4, :cond_4d

    int-to-float v0, v0

    div-float/2addr v0, v6

    const/high16 v1, 0x3e000000    # 0.125f

    add-float p3, v0, v1

    goto :goto_32

    .line 174
    :cond_4d
    add-int/lit8 v1, v0, 0x1

    move v0, v1

    goto :goto_3f
.end method

.method static smooth(FFF)F
    .registers 7

    .prologue
    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v0, 0x0

    .line 149
    sub-float v2, p0, p1

    sub-float v3, p2, p1

    div-float/2addr v2, v3

    .line 150
    cmpg-float v3, v2, v0

    if-gez v3, :cond_17

    .line 151
    :goto_c
    mul-float v1, v0, v0

    const/high16 v2, 0x40400000    # 3.0f

    const/high16 v3, 0x40000000    # 2.0f

    mul-float/2addr v0, v3

    sub-float v0, v2, v0

    mul-float/2addr v0, v1

    return v0

    .line 150
    :cond_17
    cmpl-float v0, v2, v1

    if-lez v0, :cond_1d

    move v0, v1

    goto :goto_c

    :cond_1d
    move v0, v2

    goto :goto_c
.end method

.method public static sourceOf(Ljava/lang/String;Ljava/util/Set;)Ljava/lang/String;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    const/4 v7, 0x6

    const/4 v5, 0x1

    const/4 v0, 0x0

    const/4 v6, 0x0

    .line 72
    if-nez p0, :cond_7

    .line 84
    :cond_6
    :goto_6
    return-object v0

    .line 73
    :cond_7
    const-string v1, "wreck_cap_"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_44

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "wrd_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "wrd_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_6

    .line 74
    :cond_44
    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModPoliceGen;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 75
    if-eqz v2, :cond_6

    .line 76
    const-string v1, "#wreck"

    aget-object v3, v2, v5

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a0

    .line 77
    aget-object v1, v2, v6

    const/16 v3, 0xa

    aget-object v4, v2, v6

    const/16 v5, 0x5f

    invoke-virtual {v4, v5}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v4

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 78
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "cap_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModPoliceGen;->factionOf(Ljava/lang/String;)I

    move-result v1

    if-ltz v1, :cond_6

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "wrd_"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget-object v3, v2, v6

    invoke-virtual {v3, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    aget-object v0, v2, v6

    goto/16 :goto_6

    .line 80
    :cond_a0
    aget-object v1, v2, v6

    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModPoliceGen;->factionOf(Ljava/lang/String;)I

    move-result v1

    .line 81
    if-ltz v1, :cond_6

    .line 82
    const-string v3, "_glow_e"

    aget-object v4, v2, v5

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b5

    const/4 v3, 0x2

    if-eq v1, v3, :cond_6

    .line 83
    :cond_b5
    aget-object v1, v2, v6

    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModPoliceGen;->stage5(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_11b

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v3, v2, v6

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "_stage5"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11b

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v3, v2, v6

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "_stage5"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 84
    :goto_ed
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v4, v2, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    aget-object v1, v2, v5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_6

    .line 83
    :cond_11b
    aget-object v1, v2, v6

    goto :goto_ed
.end method

.method static split(Ljava/lang/String;)[Ljava/lang/String;
    .registers 10

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v1, 0x0

    .line 63
    if-eqz p0, :cond_d

    const-string v0, "pol_"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_f

    :cond_d
    const/4 v0, 0x0

    .line 67
    :goto_e
    return-object v0

    .line 64
    :cond_f
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 65
    const-string v0, "wreck_cap_"

    invoke-virtual {v2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_25

    new-array v0, v8, [Ljava/lang/String;

    aput-object v2, v0, v1

    const-string v1, "#wreck"

    aput-object v1, v0, v7

    goto :goto_e

    .line 66
    :cond_25
    sget-object v3, Lfr/testudo/spacecorsair/mod/ModPoliceGen;->COMPS:[Ljava/lang/String;

    array-length v4, v3

    move v0, v1

    :goto_29
    if-ge v0, v4, :cond_4a

    aget-object v5, v3, v0

    invoke-virtual {v2, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_47

    new-array v0, v8, [Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {v2, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    aput-object v5, v0, v7

    goto :goto_e

    :cond_47
    add-int/lit8 v0, v0, 0x1

    goto :goto_29

    .line 67
    :cond_4a
    new-array v0, v8, [Ljava/lang/String;

    aput-object v2, v0, v1

    const-string v1, ""

    aput-object v1, v0, v7

    goto :goto_e
.end method

.method static stage5(Ljava/lang/String;)Z
    .registers 6

    .prologue
    const/4 v0, 0x0

    .line 57
    sget-object v2, Lfr/testudo/spacecorsair/mod/ModPoliceGen;->STAGE5:[Ljava/lang/String;

    array-length v3, v2

    move v1, v0

    :goto_5
    if-ge v1, v3, :cond_10

    aget-object v4, v2, v1

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_11

    const/4 v0, 0x1

    .line 58
    :cond_10
    return v0

    .line 57
    :cond_11
    add-int/lit8 v1, v1, 0x1

    goto :goto_5
.end method

.method public static virtualNames(Ljava/util/Set;)Ljava/util/Set;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 89
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 90
    new-instance v3, Ljava/util/ArrayList;

    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModPoliceData;->arts()Ljava/util/List;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 91
    sget-object v4, Lfr/testudo/spacecorsair/mod/ModPoliceGen;->KEYS:[Ljava/lang/String;

    array-length v5, v4

    move v0, v1

    :goto_13
    if-ge v0, v5, :cond_30

    aget-object v6, v4, v0

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "cap_"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_13

    .line 92
    :cond_30
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_34
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_92

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 93
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "pol_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 94
    invoke-static {v4, p0}, Lfr/testudo/spacecorsair/mod/ModPoliceGen;->sourceOf(Ljava/lang/String;Ljava/util/Set;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5c

    invoke-interface {v2, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 95
    :cond_5c
    sget-object v5, Lfr/testudo/spacecorsair/mod/ModPoliceGen;->COMPS:[Ljava/lang/String;

    array-length v6, v5

    move v0, v1

    :goto_60
    if-ge v0, v6, :cond_34

    aget-object v7, v5, v0

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8, p0}, Lfr/testudo/spacecorsair/mod/ModPoliceGen;->sourceOf(Ljava/lang/String;Ljava/util/Set;)Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_8f

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v2, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_8f
    add-int/lit8 v0, v0, 0x1

    goto :goto_60

    .line 97
    :cond_92
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_96
    :goto_96
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_f5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 98
    const-string v3, "wrd_cap_"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_96

    .line 99
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "wreck_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x4

    invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 100
    invoke-interface {v2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 101
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "pol_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, p0}, Lfr/testudo/spacecorsair/mod/ModPoliceGen;->sourceOf(Ljava/lang/String;Ljava/util/Set;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_96

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "pol_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_96

    .line 103
    :cond_f5
    return-object v2
.end method

.method static wreck(Ljava/lang/String;Lfr/testudo/spacecorsair/mod/ModPoliceGen$Loader;)Lfr/testudo/spacecorsair/mod/ModPoliceGen$Img;
    .registers 9

    .prologue
    const/4 v1, 0x0

    .line 134
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "wrd_"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v2, 0x6

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lfr/testudo/spacecorsair/mod/ModPoliceGen$Loader;->load(Ljava/lang/String;)Lfr/testudo/spacecorsair/mod/ModPoliceGen$Img;

    move-result-object v2

    .line 135
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cap_"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v3, 0xa

    const/16 v4, 0x5f

    invoke-virtual {p0, v4}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v4

    invoke-virtual {p0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lfr/testudo/spacecorsair/mod/ModPoliceGen$Loader;->load(Ljava/lang/String;)Lfr/testudo/spacecorsair/mod/ModPoliceGen$Img;

    move-result-object v3

    .line 136
    if-eqz v2, :cond_50

    if-eqz v3, :cond_50

    iget v0, v2, Lfr/testudo/spacecorsair/mod/ModPoliceGen$Img;->w:I

    iget v4, v3, Lfr/testudo/spacecorsair/mod/ModPoliceGen$Img;->w:I

    if-ne v0, v4, :cond_50

    iget v0, v2, Lfr/testudo/spacecorsair/mod/ModPoliceGen$Img;->h:I

    iget v4, v3, Lfr/testudo/spacecorsair/mod/ModPoliceGen$Img;->h:I

    if-eq v0, v4, :cond_52

    :cond_50
    const/4 v0, 0x0

    .line 144
    :goto_51
    return-object v0

    .line 137
    :cond_52
    iget-object v0, v2, Lfr/testudo/spacecorsair/mod/ModPoliceGen$Img;->px:[I

    array-length v0, v0

    new-array v4, v0, [I

    move v0, v1

    .line 138
    :goto_58
    array-length v5, v4

    if-ge v0, v5, :cond_77

    .line 139
    iget-object v5, v2, Lfr/testudo/spacecorsair/mod/ModPoliceGen$Img;->px:[I

    aget v5, v5, v0

    .line 140
    ushr-int/lit8 v6, v5, 0x18

    if-nez v6, :cond_6c

    iget-object v5, v3, Lfr/testudo/spacecorsair/mod/ModPoliceGen$Img;->px:[I

    aget v5, v5, v0

    aput v5, v4, v0

    .line 138
    :goto_69
    add-int/lit8 v0, v0, 0x1

    goto :goto_58

    .line 141
    :cond_6c
    const v6, -0xff01

    if-ne v5, v6, :cond_74

    aput v1, v4, v0

    goto :goto_69

    .line 142
    :cond_74
    aput v5, v4, v0

    goto :goto_69

    .line 144
    :cond_77
    new-instance v0, Lfr/testudo/spacecorsair/mod/ModPoliceGen$Img;

    iget v3, v2, Lfr/testudo/spacecorsair/mod/ModPoliceGen$Img;->w:I

    iget v2, v2, Lfr/testudo/spacecorsair/mod/ModPoliceGen$Img;->h:I

    invoke-direct {v0, v3, v2, v4, v1}, Lfr/testudo/spacecorsair/mod/ModPoliceGen$Img;-><init>(II[IZ)V

    goto :goto_51
.end method
