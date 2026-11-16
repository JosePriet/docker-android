.class public final Lfr/testudo/spacecorsair/mod/ModV38;
.super Ljava/lang/Object;
.source "ModV38.java"


# static fields
.field static final ARTS:[Ljava/lang/String;

.field private static final DEFAULTS:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;",
            "[",
            "Lfr/testudo/spacecorsair/engine/Vector2;",
            ">;"
        }
    .end annotation
.end field

.field static final LANCE_PAD:[I

.field static final PADS:[[[I

.field private static inSync:Z


# direct methods
.method static constructor <clinit>()V
    .registers 10

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    const/4 v7, 0x2

    const/4 v6, 0x6

    const/4 v5, 0x4

    .line 17
    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "mantis"

    aput-object v1, v0, v8

    const-string v1, "verdant"

    aput-object v1, v0, v9

    const-string v1, "leviathan"

    aput-object v1, v0, v7

    const/4 v1, 0x3

    const-string v2, "bastion"

    aput-object v2, v0, v1

    const-string v1, "monolith"

    aput-object v1, v0, v5

    const/4 v1, 0x5

    const-string v2, "hornet"

    aput-object v2, v0, v1

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModV38;->ARTS:[Ljava/lang/String;

    .line 19
    new-array v0, v6, [[[I

    new-array v1, v6, [[I

    new-array v2, v5, [I

    fill-array-data v2, :array_158

    aput-object v2, v1, v8

    new-array v2, v5, [I

    fill-array-data v2, :array_164

    aput-object v2, v1, v9

    new-array v2, v5, [I

    fill-array-data v2, :array_170

    aput-object v2, v1, v7

    const/4 v2, 0x3

    new-array v3, v5, [I

    fill-array-data v3, :array_17c

    aput-object v3, v1, v2

    new-array v2, v6, [I

    fill-array-data v2, :array_188

    aput-object v2, v1, v5

    const/4 v2, 0x5

    new-array v3, v6, [I

    fill-array-data v3, :array_198

    aput-object v3, v1, v2

    aput-object v1, v0, v8

    new-array v1, v6, [[I

    new-array v2, v5, [I

    fill-array-data v2, :array_1a8

    aput-object v2, v1, v8

    new-array v2, v5, [I

    fill-array-data v2, :array_1b4

    aput-object v2, v1, v9

    new-array v2, v5, [I

    fill-array-data v2, :array_1c0

    aput-object v2, v1, v7

    const/4 v2, 0x3

    new-array v3, v5, [I

    fill-array-data v3, :array_1cc

    aput-object v3, v1, v2

    new-array v2, v6, [I

    fill-array-data v2, :array_1d8

    aput-object v2, v1, v5

    const/4 v2, 0x5

    new-array v3, v6, [I

    fill-array-data v3, :array_1e8

    aput-object v3, v1, v2

    aput-object v1, v0, v9

    new-array v1, v6, [[I

    const/16 v2, 0x8

    new-array v2, v2, [I

    fill-array-data v2, :array_1f8

    aput-object v2, v1, v8

    const/16 v2, 0x8

    new-array v2, v2, [I

    fill-array-data v2, :array_20c

    aput-object v2, v1, v9

    const/16 v2, 0x8

    new-array v2, v2, [I

    fill-array-data v2, :array_220

    aput-object v2, v1, v7

    const/4 v2, 0x3

    const/16 v3, 0x8

    new-array v3, v3, [I

    fill-array-data v3, :array_234

    aput-object v3, v1, v2

    const/16 v2, 0xa

    new-array v2, v2, [I

    fill-array-data v2, :array_248

    aput-object v2, v1, v5

    const/4 v2, 0x5

    const/16 v3, 0xc

    new-array v3, v3, [I

    fill-array-data v3, :array_260

    aput-object v3, v1, v2

    aput-object v1, v0, v7

    const/4 v1, 0x3

    new-array v2, v6, [[I

    const/4 v3, 0x0

    aput-object v3, v2, v8

    new-array v3, v7, [I

    fill-array-data v3, :array_27c

    aput-object v3, v2, v9

    new-array v3, v7, [I

    fill-array-data v3, :array_284

    aput-object v3, v2, v7

    const/4 v3, 0x3

    new-array v4, v7, [I

    fill-array-data v4, :array_28c

    aput-object v4, v2, v3

    new-array v3, v5, [I

    fill-array-data v3, :array_294

    aput-object v3, v2, v5

    const/4 v3, 0x5

    new-array v4, v5, [I

    fill-array-data v4, :array_2a0

    aput-object v4, v2, v3

    aput-object v2, v0, v1

    new-array v1, v6, [[I

    new-array v2, v5, [I

    fill-array-data v2, :array_2ac

    aput-object v2, v1, v8

    new-array v2, v5, [I

    fill-array-data v2, :array_2b8

    aput-object v2, v1, v9

    new-array v2, v5, [I

    fill-array-data v2, :array_2c4

    aput-object v2, v1, v7

    const/4 v2, 0x3

    new-array v3, v5, [I

    fill-array-data v3, :array_2d0

    aput-object v3, v1, v2

    new-array v2, v6, [I

    fill-array-data v2, :array_2dc

    aput-object v2, v1, v5

    const/4 v2, 0x5

    new-array v3, v6, [I

    fill-array-data v3, :array_2ec

    aput-object v3, v1, v2

    aput-object v1, v0, v5

    const/4 v1, 0x5

    new-array v2, v6, [[I

    const/4 v3, 0x0

    aput-object v3, v2, v8

    const/4 v3, 0x0

    aput-object v3, v2, v9

    new-array v3, v5, [I

    fill-array-data v3, :array_2fc

    aput-object v3, v2, v7

    const/4 v3, 0x3

    new-array v4, v5, [I

    fill-array-data v4, :array_308

    aput-object v4, v2, v3

    new-array v3, v6, [I

    fill-array-data v3, :array_314

    aput-object v3, v2, v5

    const/4 v3, 0x5

    new-array v4, v6, [I

    fill-array-data v4, :array_324

    aput-object v4, v2, v3

    aput-object v2, v0, v1

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModV38;->PADS:[[[I

    .line 94
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModV38;->DEFAULTS:Ljava/util/HashMap;

    .line 102
    new-array v0, v7, [I

    fill-array-data v0, :array_334

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModV38;->LANCE_PAD:[I

    return-void

    .line 19
    :array_158
    .array-data 4
        0x175
        0x222
        0x28a
        0x222
    .end array-data

    :array_164
    .array-data 4
        0x175
        0x222
        0x28a
        0x222
    .end array-data

    :array_170
    .array-data 4
        0x175
        0x222
        0x28a
        0x222
    .end array-data

    :array_17c
    .array-data 4
        0x175
        0x222
        0x28a
        0x222
    .end array-data

    :array_188
    .array-data 4
        0x1ff
        0x167
        0x175
        0x222
        0x28a
        0x222
    .end array-data

    :array_198
    .array-data 4
        0x1ff
        0x167
        0x175
        0x222
        0x28a
        0x222
    .end array-data

    :array_1a8
    .array-data 4
        0x13e
        0x211
        0x2c0
        0x211
    .end array-data

    :array_1b4
    .array-data 4
        0x13e
        0x211
        0x2c0
        0x211
    .end array-data

    :array_1c0
    .array-data 4
        0x13e
        0x211
        0x2c0
        0x211
    .end array-data

    :array_1cc
    .array-data 4
        0x13e
        0x211
        0x2c0
        0x211
    .end array-data

    :array_1d8
    .array-data 4
        0x200
        0x131
        0x16a
        0x1f0
        0x295
        0x1f0
    .end array-data

    :array_1e8
    .array-data 4
        0x200
        0x131
        0x16a
        0x1f0
        0x295
        0x1f0
    .end array-data

    :array_1f8
    .array-data 4
        0x195
        0x17b
        0x269
        0x17b
        0x194
        0x20f
        0x26a
        0x20f
    .end array-data

    :array_20c
    .array-data 4
        0x195
        0x17b
        0x269
        0x17b
        0x194
        0x20f
        0x26a
        0x20f
    .end array-data

    :array_220
    .array-data 4
        0x195
        0x17b
        0x269
        0x17b
        0x194
        0x20f
        0x26a
        0x20f
    .end array-data

    :array_234
    .array-data 4
        0x199
        0x182
        0x265
        0x182
        0x18c
        0x212
        0x272
        0x212
    .end array-data

    :array_248
    .array-data 4
        0x191
        0x14f
        0x26c
        0x14f
        0x192
        0x1f9
        0x26d
        0x1f9
        0x192
        0x284
    .end array-data

    :array_260
    .array-data 4
        0x177
        0x1c0
        0x287
        0x1c0
        0x177
        0x240
        0x287
        0x240
        0x177
        0x2be
        0x287
        0x2be
    .end array-data

    :array_27c
    .array-data 4
        0x230
        0x107
    .end array-data

    :array_284
    .array-data 4
        0x230
        0x107
    .end array-data

    :array_28c
    .array-data 4
        0x230
        0x107
    .end array-data

    :array_294
    .array-data 4
        0x1b1
        0x1a6
        0x248
        0x1a7
    .end array-data

    :array_2a0
    .array-data 4
        0x1b1
        0x1a6
        0x24e
        0x1a6
    .end array-data

    :array_2ac
    .array-data 4
        0x175
        0x23e
        0x28a
        0x23e
    .end array-data

    :array_2b8
    .array-data 4
        0x175
        0x23e
        0x28a
        0x23e
    .end array-data

    :array_2c4
    .array-data 4
        0x175
        0x23e
        0x28a
        0x23e
    .end array-data

    :array_2d0
    .array-data 4
        0x175
        0x23e
        0x28a
        0x23e
    .end array-data

    :array_2dc
    .array-data 4
        0x200
        0x126
        0x144
        0x12b
        0x2bc
        0x12b
    .end array-data

    :array_2ec
    .array-data 4
        0x200
        0x126
        0x144
        0x12b
        0x2bc
        0x12b
    .end array-data

    :array_2fc
    .array-data 4
        0x18c
        0x210
        0x274
        0x210
    .end array-data

    :array_308
    .array-data 4
        0x193
        0x1fb
        0x26c
        0x1fb
    .end array-data

    :array_314
    .array-data 4
        0x162
        0x22a
        0x29d
        0x22a
        0x200
        0x304
    .end array-data

    :array_324
    .array-data 4
        0x169
        0x1e7
        0x29a
        0x1e9
        0x201
        0x2d8
    .end array-data

    .line 102
    :array_334
    .array-data 4
        0x200
        0x126
    .end array-data
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static artIndex(Ljava/lang/String;)I
    .registers 3

    .prologue
    .line 51
    const/4 v0, 0x0

    :goto_1
    sget-object v1, Lfr/testudo/spacecorsair/mod/ModV38;->ARTS:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_14

    sget-object v1, Lfr/testudo/spacecorsair/mod/ModV38;->ARTS:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 52
    :goto_10
    return v0

    .line 51
    :cond_11
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 52
    :cond_14
    const/4 v0, -0x1

    goto :goto_10
.end method

.method static initSpecs([Lfr/testudo/spacecorsair/mod/ModShips$Hull;)V
    .registers 5

    .prologue
    const/4 v0, 0x0

    .line 132
    array-length v1, p0

    :goto_2
    if-ge v0, v1, :cond_11

    aget-object v2, p0, v0

    .line 134
    if-eqz v2, :cond_c

    const/4 v3, 0x0

    :try_start_9
    invoke-static {v2, v3}, Lfr/testudo/spacecorsair/mod/ModV38;->setStage(Lfr/testudo/spacecorsair/mod/ModShips$Hull;I)Z
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_c} :catch_f

    .line 132
    :cond_c
    :goto_c
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 135
    :catch_f
    move-exception v2

    goto :goto_c

    .line 139
    :cond_11
    return-void
.end method

.method static pads(Lfr/testudo/spacecorsair/mod/ModShips$Hull;I)[Lfr/testudo/spacecorsair/engine/Vector2;
    .registers 11

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    const/high16 v8, 0x44800000    # 1024.0f

    const/high16 v7, 0x3f000000    # 0.5f

    .line 57
    if-nez p0, :cond_d

    const/4 v2, -0x1

    .line 58
    :goto_9
    if-gez v2, :cond_14

    move-object v0, v1

    .line 65
    :goto_c
    return-object v0

    .line 57
    :cond_d
    iget-object v2, p0, Lfr/testudo/spacecorsair/mod/ModShips$Hull;->art:Ljava/lang/String;

    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModV38;->artIndex(Ljava/lang/String;)I

    move-result v2

    goto :goto_9

    .line 59
    :cond_14
    sget-object v3, Lfr/testudo/spacecorsair/mod/ModV38;->PADS:[[[I

    aget-object v2, v3, v2

    const/4 v3, 0x5

    invoke-static {v3, p1}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    aget-object v2, v2, v3

    .line 60
    if-nez v2, :cond_27

    move-object v0, v1

    goto :goto_c

    .line 61
    :cond_27
    array-length v1, v2

    div-int/lit8 v1, v1, 0x2

    new-array v1, v1, [Lfr/testudo/spacecorsair/engine/Vector2;

    .line 62
    :goto_2c
    array-length v3, v1

    if-ge v0, v3, :cond_53

    .line 63
    new-instance v3, Lfr/testudo/spacecorsair/engine/Vector2;

    mul-int/lit8 v4, v0, 0x2

    aget v4, v2, v4

    int-to-float v4, v4

    add-float/2addr v4, v7

    div-float/2addr v4, v8

    sub-float/2addr v4, v7

    iget v5, p0, Lfr/testudo/spacecorsair/mod/ModShips$Hull;->size:I

    int-to-float v5, v5

    mul-float/2addr v4, v5

    mul-int/lit8 v5, v0, 0x2

    add-int/lit8 v5, v5, 0x1

    aget v5, v2, v5

    int-to-float v5, v5

    add-float/2addr v5, v7

    div-float/2addr v5, v8

    sub-float/2addr v5, v7

    iget v6, p0, Lfr/testudo/spacecorsair/mod/ModShips$Hull;->size:I

    int-to-float v6, v6

    mul-float/2addr v5, v6

    invoke-direct {v3, v4, v5}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>(FF)V

    aput-object v3, v1, v0

    .line 62
    add-int/lit8 v0, v0, 0x1

    goto :goto_2c

    :cond_53
    move-object v0, v1

    .line 65
    goto :goto_c
.end method

.method static setStage(Lfr/testudo/spacecorsair/mod/ModShips$Hull;I)Z
    .registers 3

    .prologue
    .line 98
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lfr/testudo/spacecorsair/mod/ModV38;->setStage(Lfr/testudo/spacecorsair/mod/ModShips$Hull;IZ)Z

    move-result v0

    return v0
.end method

.method static setStage(Lfr/testudo/spacecorsair/mod/ModShips$Hull;IZ)Z
    .registers 14

    .prologue
    const/high16 v10, 0x44800000    # 1024.0f

    const v9, 0x3d4ccccd    # 0.05f

    const/high16 v8, 0x3f000000    # 0.5f

    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 105
    if-nez p0, :cond_1c

    const/4 v0, 0x0

    move-object v5, v0

    .line 106
    :goto_d
    if-eqz v5, :cond_1b

    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModShips$Hull;->art:Ljava/lang/String;

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModV38;->artIndex(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_1b

    iget-object v0, v5, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;->canonPos:[Lfr/testudo/spacecorsair/engine/Vector2;

    if-nez v0, :cond_20

    .line 127
    :cond_1b
    :goto_1b
    return v1

    .line 105
    :cond_1c
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModShips$Hull;->spec:Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;

    move-object v5, v0

    goto :goto_d

    .line 107
    :cond_20
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModV38;->DEFAULTS:Ljava/util/HashMap;

    invoke-virtual {v0, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_52

    .line 108
    iget v0, v5, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;->canonCount:I

    iget-object v2, v5, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;->canonPos:[Lfr/testudo/spacecorsair/engine/Vector2;

    array-length v2, v2

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    new-array v2, v0, [Lfr/testudo/spacecorsair/engine/Vector2;

    move v0, v1

    .line 109
    :goto_34
    array-length v4, v2

    if-ge v0, v4, :cond_4d

    new-instance v4, Lfr/testudo/spacecorsair/engine/Vector2;

    iget-object v6, v5, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;->canonPos:[Lfr/testudo/spacecorsair/engine/Vector2;

    aget-object v6, v6, v0

    iget v6, v6, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    iget-object v7, v5, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;->canonPos:[Lfr/testudo/spacecorsair/engine/Vector2;

    aget-object v7, v7, v0

    iget v7, v7, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    invoke-direct {v4, v6, v7}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>(FF)V

    aput-object v4, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_34

    .line 110
    :cond_4d
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModV38;->DEFAULTS:Ljava/util/HashMap;

    invoke-virtual {v0, v5, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    :cond_52
    invoke-static {p0, p1}, Lfr/testudo/spacecorsair/mod/ModV38;->pads(Lfr/testudo/spacecorsair/mod/ModShips$Hull;I)[Lfr/testudo/spacecorsair/engine/Vector2;

    move-result-object v0

    .line 113
    if-eqz p2, :cond_83

    const-string v2, "monolith"

    iget-object v4, p0, Lfr/testudo/spacecorsair/mod/ModShips$Hull;->art:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_83

    .line 114
    new-array v0, v3, [Lfr/testudo/spacecorsair/engine/Vector2;

    new-instance v2, Lfr/testudo/spacecorsair/engine/Vector2;

    sget-object v4, Lfr/testudo/spacecorsair/mod/ModV38;->LANCE_PAD:[I

    aget v4, v4, v1

    int-to-float v4, v4

    add-float/2addr v4, v8

    div-float/2addr v4, v10

    sub-float/2addr v4, v8

    iget v6, p0, Lfr/testudo/spacecorsair/mod/ModShips$Hull;->size:I

    int-to-float v6, v6

    mul-float/2addr v4, v6

    sget-object v6, Lfr/testudo/spacecorsair/mod/ModV38;->LANCE_PAD:[I

    aget v6, v6, v3

    int-to-float v6, v6

    add-float/2addr v6, v8

    div-float/2addr v6, v10

    sub-float/2addr v6, v8

    iget v7, p0, Lfr/testudo/spacecorsair/mod/ModShips$Hull;->size:I

    int-to-float v7, v7

    mul-float/2addr v6, v7

    invoke-direct {v2, v4, v6}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>(FF)V

    aput-object v2, v0, v1

    .line 116
    :cond_83
    if-nez v0, :cond_8d

    sget-object v0, Lfr/testudo/spacecorsair/mod/ModV38;->DEFAULTS:Ljava/util/HashMap;

    invoke-virtual {v0, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lfr/testudo/spacecorsair/engine/Vector2;

    .line 117
    :cond_8d
    iget v2, v5, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;->canonCount:I

    array-length v4, v0

    if-ne v2, v4, :cond_c9

    iget-object v2, v5, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;->canonPos:[Lfr/testudo/spacecorsair/engine/Vector2;

    array-length v2, v2

    array-length v4, v0

    if-lt v2, v4, :cond_c9

    move v2, v3

    :goto_99
    move v4, v1

    .line 118
    :goto_9a
    if-eqz v2, :cond_cd

    array-length v6, v0

    if-ge v4, v6, :cond_cd

    .line 119
    iget-object v2, v5, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;->canonPos:[Lfr/testudo/spacecorsair/engine/Vector2;

    aget-object v2, v2, v4

    iget v2, v2, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    aget-object v6, v0, v4

    iget v6, v6, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    sub-float/2addr v2, v6

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    cmpg-float v2, v2, v9

    if-gez v2, :cond_cb

    iget-object v2, v5, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;->canonPos:[Lfr/testudo/spacecorsair/engine/Vector2;

    aget-object v2, v2, v4

    iget v2, v2, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    aget-object v6, v0, v4

    iget v6, v6, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    sub-float/2addr v2, v6

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    cmpg-float v2, v2, v9

    if-gez v2, :cond_cb

    move v2, v3

    .line 118
    :goto_c6
    add-int/lit8 v4, v4, 0x1

    goto :goto_9a

    :cond_c9
    move v2, v1

    .line 117
    goto :goto_99

    :cond_cb
    move v2, v1

    .line 119
    goto :goto_c6

    .line 121
    :cond_cd
    if-nez v2, :cond_1b

    .line 122
    array-length v2, v0

    new-array v2, v2, [Lfr/testudo/spacecorsair/engine/Vector2;

    .line 123
    :goto_d2
    array-length v4, v0

    if-ge v1, v4, :cond_e7

    new-instance v4, Lfr/testudo/spacecorsair/engine/Vector2;

    aget-object v6, v0, v1

    iget v6, v6, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    aget-object v7, v0, v1

    iget v7, v7, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    invoke-direct {v4, v6, v7}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>(FF)V

    aput-object v4, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_d2

    .line 124
    :cond_e7
    iput-object v2, v5, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;->canonPos:[Lfr/testudo/spacecorsair/engine/Vector2;

    .line 125
    array-length v0, v2

    iput v0, v5, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;->canonCount:I

    .line 126
    array-length v0, v2

    iput v0, v5, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;->laserCount:I

    move v1, v3

    .line 127
    goto/16 :goto_1b
.end method

.method public static syncTurrets(Lfr/testudo/spacecorsair/business/player/PlayerShip;)Z
    .registers 8

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 148
    sget-boolean v2, Lfr/testudo/spacecorsair/mod/ModV38;->inSync:Z

    if-nez v2, :cond_8

    if-nez p0, :cond_9

    .line 167
    :cond_8
    :goto_8
    return v0

    .line 150
    :cond_9
    :try_start_9
    iget-object v2, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->shipSpec:Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;

    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModShips;->hullFor(Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;)Lfr/testudo/spacecorsair/mod/ModShips$Hull;

    move-result-object v3

    .line 151
    if-eqz v3, :cond_8

    iget-object v2, v3, Lfr/testudo/spacecorsair/mod/ModShips$Hull;->art:Ljava/lang/String;

    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModV38;->artIndex(Ljava/lang/String;)I

    move-result v2

    if-ltz v2, :cond_8

    .line 152
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModV35;->currentShip()Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    move-result-object v2

    .line 153
    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModShips;->hull(Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)Lfr/testudo/spacecorsair/mod/ModShips$Hull;

    move-result-object v4

    if-ne v4, v3, :cond_8

    .line 154
    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModV35;->level(Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)I

    move-result v2

    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModV35;->stage(I)I

    move-result v4

    .line 155
    const/4 v2, 0x5

    if-lt v4, v2, :cond_7c

    iget-object v2, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->laserSpec:Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModLance;->isLance(Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;)Z

    move-result v2

    if-eqz v2, :cond_7c

    move v2, v1

    .line 156
    :goto_37
    invoke-static {v3, v4, v2}, Lfr/testudo/spacecorsair/mod/ModV38;->setStage(Lfr/testudo/spacecorsair/mod/ModShips$Hull;IZ)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 157
    const/4 v5, 0x1

    sput-boolean v5, Lfr/testudo/spacecorsair/mod/ModV38;->inSync:Z
    :try_end_40
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_40} :catch_83

    .line 159
    :try_start_40
    invoke-virtual {p0}, Lfr/testudo/spacecorsair/business/player/PlayerShip;->applyGear()V
    :try_end_43
    .catchall {:try_start_40 .. :try_end_43} :catchall_7e

    .line 161
    const/4 v5, 0x0

    :try_start_44
    sput-boolean v5, Lfr/testudo/spacecorsair/mod/ModV38;->inSync:Z

    .line 163
    const-string v5, "v38"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v3, Lfr/testudo/spacecorsair/mod/ModShips$Hull;->art:Ljava/lang/String;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, " stage "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " turrets "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->shipSpec:Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;

    iget v4, v4, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;->canonCount:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    if-eqz v2, :cond_87

    const-string v2, " (Phoenix Lance)"

    :goto_6f
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Lfr/testudo/spacecorsair/mod/ModDev;->ev(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    .line 164
    goto :goto_8

    :cond_7c
    move v2, v0

    .line 155
    goto :goto_37

    .line 161
    :catchall_7e
    move-exception v1

    const/4 v2, 0x0

    sput-boolean v2, Lfr/testudo/spacecorsair/mod/ModV38;->inSync:Z

    .line 162
    throw v1
    :try_end_83
    .catch Ljava/lang/Throwable; {:try_start_44 .. :try_end_83} :catch_83

    .line 165
    :catch_83
    move-exception v1

    .line 166
    sput-boolean v0, Lfr/testudo/spacecorsair/mod/ModV38;->inSync:Z

    goto :goto_8

    .line 163
    :cond_87
    :try_start_87
    const-string v2, ""
    :try_end_89
    .catch Ljava/lang/Throwable; {:try_start_87 .. :try_end_89} :catch_83

    goto :goto_6f
.end method

.method public static turretPlan(Lfr/testudo/spacecorsair/mod/ModShips$Hull;)[I
    .registers 6

    .prologue
    const/4 v1, 0x0

    .line 70
    if-nez p0, :cond_9

    const/4 v0, -0x1

    move v4, v0

    .line 71
    :goto_5
    if-gez v4, :cond_11

    const/4 v0, 0x0

    .line 75
    :goto_8
    return-object v0

    .line 70
    :cond_9
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModShips$Hull;->art:Ljava/lang/String;

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModV38;->artIndex(Ljava/lang/String;)I

    move-result v0

    move v4, v0

    goto :goto_5

    .line 72
    :cond_11
    const/4 v0, 0x6

    new-array v2, v0, [I

    .line 73
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModShips$Hull;->spec:Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;

    if-nez v0, :cond_2c

    move v0, v1

    :goto_19
    move v3, v1

    .line 74
    :goto_1a
    const/4 v1, 0x5

    if-gt v3, v1, :cond_51

    sget-object v1, Lfr/testudo/spacecorsair/mod/ModV38;->PADS:[[[I

    aget-object v1, v1, v4

    aget-object v1, v1, v3

    if-nez v1, :cond_47

    move v1, v0

    :goto_26
    aput v1, v2, v3

    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_1a

    .line 73
    :cond_2c
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModV38;->DEFAULTS:Ljava/util/HashMap;

    iget-object v3, p0, Lfr/testudo/spacecorsair/mod/ModShips$Hull;->spec:Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_42

    sget-object v0, Lfr/testudo/spacecorsair/mod/ModV38;->DEFAULTS:Ljava/util/HashMap;

    iget-object v3, p0, Lfr/testudo/spacecorsair/mod/ModShips$Hull;->spec:Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lfr/testudo/spacecorsair/engine/Vector2;

    array-length v0, v0

    goto :goto_19

    :cond_42
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModShips$Hull;->spec:Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;

    iget v0, v0, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;->canonCount:I

    goto :goto_19

    .line 74
    :cond_47
    sget-object v1, Lfr/testudo/spacecorsair/mod/ModV38;->PADS:[[[I

    aget-object v1, v1, v4

    aget-object v1, v1, v3

    array-length v1, v1

    div-int/lit8 v1, v1, 0x2

    goto :goto_26

    :cond_51
    move-object v0, v2

    .line 75
    goto :goto_8
.end method

.method public static turretText(Lfr/testudo/spacecorsair/mod/ModShips$Hull;I)Ljava/lang/String;
    .registers 11

    .prologue
    const/16 v8, 0x20

    const/4 v7, 0x5

    const/4 v1, 0x1

    const/4 v6, 0x0

    .line 80
    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModV38;->turretPlan(Lfr/testudo/spacecorsair/mod/ModShips$Hull;)[I

    move-result-object v2

    .line 81
    if-nez v2, :cond_10

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 91
    :goto_f
    return-object v0

    .line 82
    :cond_10
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    aget v3, v2, v6

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 83
    const-string v0, " ("

    .line 84
    const/4 v4, 0x6

    new-array v4, v4, [Ljava/lang/String;

    const-string v5, ""

    aput-object v5, v4, v6

    const-string v5, "I"

    aput-object v5, v4, v1

    const/4 v5, 0x2

    const-string v6, "II"

    aput-object v6, v4, v5

    const/4 v5, 0x3

    const-string v6, "III"

    aput-object v6, v4, v5

    const/4 v5, 0x4

    const-string v6, "IV"

    aput-object v6, v4, v5

    const-string v5, "V"

    aput-object v5, v4, v7

    .line 85
    :goto_3b
    if-gt v1, v7, :cond_6c

    .line 86
    aget v5, v2, v1

    add-int/lit8 v6, v1, -0x1

    aget v6, v2, v6

    if-ne v5, v6, :cond_48

    .line 85
    :goto_45
    add-int/lit8 v1, v1, 0x1

    goto :goto_3b

    .line 87
    :cond_48
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    aget v5, v2, v1

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, "at form"

    invoke-static {v5}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    aget-object v5, v4, v1

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    const-string v0, ", "

    goto :goto_45

    .line 90
    :cond_6c
    const-string v1, " ("

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_79

    const/16 v0, 0x29

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 91
    :cond_79
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_f
.end method
