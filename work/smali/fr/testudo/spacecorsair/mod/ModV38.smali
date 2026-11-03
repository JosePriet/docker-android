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

.field static final PADS:[[[I

.field private static inSync:Z


# direct methods
.method static constructor <clinit>()V
    .registers 10

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    const/4 v7, 0x2

    const/4 v6, 0x4

    const/4 v5, 0x6

    .line 17
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

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

    aput-object v1, v0, v6

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModV38;->ARTS:[Ljava/lang/String;

    .line 19
    const/4 v0, 0x5

    new-array v0, v0, [[[I

    new-array v1, v5, [[I

    new-array v2, v5, [I

    fill-array-data v2, :array_114

    aput-object v2, v1, v8

    new-array v2, v5, [I

    fill-array-data v2, :array_124

    aput-object v2, v1, v9

    new-array v2, v5, [I

    fill-array-data v2, :array_134

    aput-object v2, v1, v7

    const/4 v2, 0x3

    new-array v3, v5, [I

    fill-array-data v3, :array_144

    aput-object v3, v1, v2

    new-array v2, v5, [I

    fill-array-data v2, :array_154

    aput-object v2, v1, v6

    const/4 v2, 0x5

    new-array v3, v5, [I

    fill-array-data v3, :array_164

    aput-object v3, v1, v2

    aput-object v1, v0, v8

    new-array v1, v5, [[I

    new-array v2, v5, [I

    fill-array-data v2, :array_174

    aput-object v2, v1, v8

    new-array v2, v5, [I

    fill-array-data v2, :array_184

    aput-object v2, v1, v9

    new-array v2, v5, [I

    fill-array-data v2, :array_194

    aput-object v2, v1, v7

    const/4 v2, 0x3

    new-array v3, v5, [I

    fill-array-data v3, :array_1a4

    aput-object v3, v1, v2

    new-array v2, v5, [I

    fill-array-data v2, :array_1b4

    aput-object v2, v1, v6

    const/4 v2, 0x5

    new-array v3, v5, [I

    fill-array-data v3, :array_1c4

    aput-object v3, v1, v2

    aput-object v1, v0, v9

    new-array v1, v5, [[I

    const/4 v2, 0x0

    aput-object v2, v1, v8

    const/4 v2, 0x0

    aput-object v2, v1, v9

    const/4 v2, 0x0

    aput-object v2, v1, v7

    const/4 v2, 0x3

    const/16 v3, 0xc

    new-array v3, v3, [I

    fill-array-data v3, :array_1d4

    aput-object v3, v1, v2

    const/16 v2, 0xc

    new-array v2, v2, [I

    fill-array-data v2, :array_1f0

    aput-object v2, v1, v6

    const/4 v2, 0x5

    const/16 v3, 0xc

    new-array v3, v3, [I

    fill-array-data v3, :array_20c

    aput-object v3, v1, v2

    aput-object v1, v0, v7

    const/4 v1, 0x3

    new-array v2, v5, [[I

    const/4 v3, 0x0

    aput-object v3, v2, v8

    new-array v3, v7, [I

    fill-array-data v3, :array_228

    aput-object v3, v2, v9

    new-array v3, v7, [I

    fill-array-data v3, :array_230

    aput-object v3, v2, v7

    const/4 v3, 0x3

    new-array v4, v7, [I

    fill-array-data v4, :array_238

    aput-object v4, v2, v3

    new-array v3, v6, [I

    fill-array-data v3, :array_240

    aput-object v3, v2, v6

    const/4 v3, 0x5

    new-array v4, v6, [I

    fill-array-data v4, :array_24c

    aput-object v4, v2, v3

    aput-object v2, v0, v1

    new-array v1, v5, [[I

    new-array v2, v6, [I

    fill-array-data v2, :array_258

    aput-object v2, v1, v8

    new-array v2, v6, [I

    fill-array-data v2, :array_264

    aput-object v2, v1, v9

    new-array v2, v6, [I

    fill-array-data v2, :array_270

    aput-object v2, v1, v7

    const/4 v2, 0x3

    new-array v3, v6, [I

    fill-array-data v3, :array_27c

    aput-object v3, v1, v2

    new-array v2, v5, [I

    fill-array-data v2, :array_288

    aput-object v2, v1, v6

    const/4 v2, 0x5

    new-array v3, v5, [I

    fill-array-data v3, :array_298

    aput-object v3, v1, v2

    aput-object v1, v0, v6

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModV38;->PADS:[[[I

    .line 58
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModV38;->DEFAULTS:Ljava/util/HashMap;

    return-void

    .line 19
    nop

    :array_114
    .array-data 4
        0x1ff
        0x167
        0x175
        0x222
        0x28a
        0x222
    .end array-data

    :array_124
    .array-data 4
        0x1ff
        0x167
        0x175
        0x222
        0x28a
        0x222
    .end array-data

    :array_134
    .array-data 4
        0x1ff
        0x167
        0x175
        0x222
        0x28a
        0x222
    .end array-data

    :array_144
    .array-data 4
        0x1ff
        0x167
        0x175
        0x222
        0x28a
        0x222
    .end array-data

    :array_154
    .array-data 4
        0x1ff
        0x167
        0x175
        0x222
        0x28a
        0x222
    .end array-data

    :array_164
    .array-data 4
        0x1ff
        0x167
        0x175
        0x222
        0x28a
        0x222
    .end array-data

    :array_174
    .array-data 4
        0x1ff
        0x118
        0x13e
        0x211
        0x2c0
        0x211
    .end array-data

    :array_184
    .array-data 4
        0x1ff
        0x118
        0x13e
        0x211
        0x2c0
        0x211
    .end array-data

    :array_194
    .array-data 4
        0x1ff
        0x118
        0x13e
        0x211
        0x2c0
        0x211
    .end array-data

    :array_1a4
    .array-data 4
        0x1ff
        0x104
        0x13e
        0x211
        0x2c0
        0x211
    .end array-data

    :array_1b4
    .array-data 4
        0x200
        0x131
        0x16a
        0x1f0
        0x295
        0x1f0
    .end array-data

    :array_1c4
    .array-data 4
        0x200
        0x131
        0x16a
        0x1f0
        0x295
        0x1f0
    .end array-data

    :array_1d4
    .array-data 4
        0x199
        0x182
        0x265
        0x182
        0x18c
        0x212
        0x272
        0x212
        0x195
        0x29e
        0x269
        0x29e
    .end array-data

    :array_1f0
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
        0x26d
        0x284
    .end array-data

    :array_20c
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

    :array_228
    .array-data 4
        0x230
        0x107
    .end array-data

    :array_230
    .array-data 4
        0x230
        0x107
    .end array-data

    :array_238
    .array-data 4
        0x230
        0x107
    .end array-data

    :array_240
    .array-data 4
        0x1b1
        0x1a6
        0x248
        0x1a7
    .end array-data

    :array_24c
    .array-data 4
        0x1b1
        0x1a6
        0x24e
        0x1a6
    .end array-data

    :array_258
    .array-data 4
        0x175
        0x23e
        0x28a
        0x23e
    .end array-data

    :array_264
    .array-data 4
        0x175
        0x23e
        0x28a
        0x23e
    .end array-data

    :array_270
    .array-data 4
        0x175
        0x23e
        0x28a
        0x23e
    .end array-data

    :array_27c
    .array-data 4
        0x175
        0x23e
        0x28a
        0x23e
    .end array-data

    :array_288
    .array-data 4
        0x200
        0x126
        0x144
        0x12b
        0x2bc
        0x12b
    .end array-data

    :array_298
    .array-data 4
        0x200
        0x126
        0x144
        0x12b
        0x2bc
        0x12b
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
    .line 41
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

    .line 42
    :goto_10
    return v0

    .line 41
    :cond_11
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 42
    :cond_14
    const/4 v0, -0x1

    goto :goto_10
.end method

.method static initSpecs([Lfr/testudo/spacecorsair/mod/ModShips$Hull;)V
    .registers 5

    .prologue
    const/4 v0, 0x0

    .line 86
    array-length v1, p0

    :goto_2
    if-ge v0, v1, :cond_11

    aget-object v2, p0, v0

    .line 88
    if-eqz v2, :cond_c

    const/4 v3, 0x0

    :try_start_9
    invoke-static {v2, v3}, Lfr/testudo/spacecorsair/mod/ModV38;->setStage(Lfr/testudo/spacecorsair/mod/ModShips$Hull;I)Z
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_c} :catch_f

    .line 86
    :cond_c
    :goto_c
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 89
    :catch_f
    move-exception v2

    goto :goto_c

    .line 93
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

    .line 47
    if-nez p0, :cond_d

    const/4 v2, -0x1

    .line 48
    :goto_9
    if-gez v2, :cond_14

    move-object v0, v1

    .line 55
    :goto_c
    return-object v0

    .line 47
    :cond_d
    iget-object v2, p0, Lfr/testudo/spacecorsair/mod/ModShips$Hull;->art:Ljava/lang/String;

    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModV38;->artIndex(Ljava/lang/String;)I

    move-result v2

    goto :goto_9

    .line 49
    :cond_14
    sget-object v3, Lfr/testudo/spacecorsair/mod/ModV38;->PADS:[[[I

    aget-object v2, v3, v2

    const/4 v3, 0x5

    invoke-static {v3, p1}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    aget-object v2, v2, v3

    .line 50
    if-nez v2, :cond_27

    move-object v0, v1

    goto :goto_c

    .line 51
    :cond_27
    array-length v1, v2

    div-int/lit8 v1, v1, 0x2

    new-array v1, v1, [Lfr/testudo/spacecorsair/engine/Vector2;

    .line 52
    :goto_2c
    array-length v3, v1

    if-ge v0, v3, :cond_53

    .line 53
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

    .line 52
    add-int/lit8 v0, v0, 0x1

    goto :goto_2c

    :cond_53
    move-object v0, v1

    .line 55
    goto :goto_c
.end method

.method static setStage(Lfr/testudo/spacecorsair/mod/ModShips$Hull;I)Z
    .registers 11

    .prologue
    const v8, 0x3d4ccccd    # 0.05f

    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 62
    if-nez p0, :cond_18

    const/4 v0, 0x0

    move-object v5, v0

    .line 63
    :goto_9
    if-eqz v5, :cond_17

    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModShips$Hull;->art:Ljava/lang/String;

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModV38;->artIndex(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_17

    iget-object v0, v5, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;->canonPos:[Lfr/testudo/spacecorsair/engine/Vector2;

    if-nez v0, :cond_1c

    .line 81
    :cond_17
    :goto_17
    return v1

    .line 62
    :cond_18
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModShips$Hull;->spec:Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;

    move-object v5, v0

    goto :goto_9

    .line 64
    :cond_1c
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModV38;->DEFAULTS:Ljava/util/HashMap;

    invoke-virtual {v0, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4e

    .line 65
    iget v0, v5, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;->canonCount:I

    iget-object v2, v5, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;->canonPos:[Lfr/testudo/spacecorsair/engine/Vector2;

    array-length v2, v2

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    new-array v2, v0, [Lfr/testudo/spacecorsair/engine/Vector2;

    move v0, v1

    .line 66
    :goto_30
    array-length v4, v2

    if-ge v0, v4, :cond_49

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

    goto :goto_30

    .line 67
    :cond_49
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModV38;->DEFAULTS:Ljava/util/HashMap;

    invoke-virtual {v0, v5, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    :cond_4e
    invoke-static {p0, p1}, Lfr/testudo/spacecorsair/mod/ModV38;->pads(Lfr/testudo/spacecorsair/mod/ModShips$Hull;I)[Lfr/testudo/spacecorsair/engine/Vector2;

    move-result-object v0

    .line 70
    if-nez v0, :cond_5c

    sget-object v0, Lfr/testudo/spacecorsair/mod/ModV38;->DEFAULTS:Ljava/util/HashMap;

    invoke-virtual {v0, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lfr/testudo/spacecorsair/engine/Vector2;

    .line 71
    :cond_5c
    iget v2, v5, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;->canonCount:I

    array-length v4, v0

    if-ne v2, v4, :cond_98

    iget-object v2, v5, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;->canonPos:[Lfr/testudo/spacecorsair/engine/Vector2;

    array-length v2, v2

    array-length v4, v0

    if-lt v2, v4, :cond_98

    move v2, v3

    :goto_68
    move v4, v1

    .line 72
    :goto_69
    if-eqz v2, :cond_9c

    array-length v6, v0

    if-ge v4, v6, :cond_9c

    .line 73
    iget-object v2, v5, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;->canonPos:[Lfr/testudo/spacecorsair/engine/Vector2;

    aget-object v2, v2, v4

    iget v2, v2, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    aget-object v6, v0, v4

    iget v6, v6, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    sub-float/2addr v2, v6

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    cmpg-float v2, v2, v8

    if-gez v2, :cond_9a

    iget-object v2, v5, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;->canonPos:[Lfr/testudo/spacecorsair/engine/Vector2;

    aget-object v2, v2, v4

    iget v2, v2, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    aget-object v6, v0, v4

    iget v6, v6, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    sub-float/2addr v2, v6

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    cmpg-float v2, v2, v8

    if-gez v2, :cond_9a

    move v2, v3

    .line 72
    :goto_95
    add-int/lit8 v4, v4, 0x1

    goto :goto_69

    :cond_98
    move v2, v1

    .line 71
    goto :goto_68

    :cond_9a
    move v2, v1

    .line 73
    goto :goto_95

    .line 75
    :cond_9c
    if-nez v2, :cond_17

    .line 76
    array-length v2, v0

    new-array v2, v2, [Lfr/testudo/spacecorsair/engine/Vector2;

    .line 77
    :goto_a1
    array-length v4, v0

    if-ge v1, v4, :cond_b6

    new-instance v4, Lfr/testudo/spacecorsair/engine/Vector2;

    aget-object v6, v0, v1

    iget v6, v6, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    aget-object v7, v0, v1

    iget v7, v7, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    invoke-direct {v4, v6, v7}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>(FF)V

    aput-object v4, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_a1

    .line 78
    :cond_b6
    iput-object v2, v5, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;->canonPos:[Lfr/testudo/spacecorsair/engine/Vector2;

    .line 79
    array-length v0, v2

    iput v0, v5, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;->canonCount:I

    .line 80
    array-length v0, v2

    iput v0, v5, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;->laserCount:I

    move v1, v3

    .line 81
    goto/16 :goto_17
.end method

.method public static syncTurrets(Lfr/testudo/spacecorsair/business/player/PlayerShip;)Z
    .registers 7

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 102
    sget-boolean v2, Lfr/testudo/spacecorsair/mod/ModV38;->inSync:Z

    if-nez v2, :cond_8

    if-nez p0, :cond_9

    .line 120
    :cond_8
    :goto_8
    return v0

    .line 104
    :cond_9
    :try_start_9
    iget-object v2, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->shipSpec:Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;

    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModShips;->hullFor(Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;)Lfr/testudo/spacecorsair/mod/ModShips$Hull;

    move-result-object v2

    .line 105
    if-eqz v2, :cond_8

    iget-object v3, v2, Lfr/testudo/spacecorsair/mod/ModShips$Hull;->art:Ljava/lang/String;

    invoke-static {v3}, Lfr/testudo/spacecorsair/mod/ModV38;->artIndex(Ljava/lang/String;)I

    move-result v3

    if-ltz v3, :cond_8

    .line 106
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModV35;->currentShip()Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    move-result-object v3

    .line 107
    invoke-static {v3}, Lfr/testudo/spacecorsair/mod/ModShips;->hull(Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)Lfr/testudo/spacecorsair/mod/ModShips$Hull;

    move-result-object v4

    if-ne v4, v2, :cond_8

    .line 108
    invoke-static {v3}, Lfr/testudo/spacecorsair/mod/ModV35;->level(Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)I

    move-result v3

    invoke-static {v3}, Lfr/testudo/spacecorsair/mod/ModV35;->stage(I)I

    move-result v3

    .line 109
    invoke-static {v2, v3}, Lfr/testudo/spacecorsair/mod/ModV38;->setStage(Lfr/testudo/spacecorsair/mod/ModShips$Hull;I)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 110
    const/4 v4, 0x1

    sput-boolean v4, Lfr/testudo/spacecorsair/mod/ModV38;->inSync:Z
    :try_end_34
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_34} :catch_6d

    .line 112
    :try_start_34
    invoke-virtual {p0}, Lfr/testudo/spacecorsair/business/player/PlayerShip;->applyGear()V
    :try_end_37
    .catchall {:try_start_34 .. :try_end_37} :catchall_68

    .line 114
    const/4 v4, 0x0

    :try_start_38
    sput-boolean v4, Lfr/testudo/spacecorsair/mod/ModV38;->inSync:Z

    .line 116
    const-string v4, "v38"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v2, Lfr/testudo/spacecorsair/mod/ModShips$Hull;->art:Ljava/lang/String;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, " stage "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " turrets "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->shipSpec:Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;

    iget v3, v3, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;->canonCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Lfr/testudo/spacecorsair/mod/ModDev;->ev(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    .line 117
    goto :goto_8

    .line 114
    :catchall_68
    move-exception v1

    const/4 v2, 0x0

    sput-boolean v2, Lfr/testudo/spacecorsair/mod/ModV38;->inSync:Z

    .line 115
    throw v1
    :try_end_6d
    .catch Ljava/lang/Throwable; {:try_start_38 .. :try_end_6d} :catch_6d

    .line 118
    :catch_6d
    move-exception v1

    .line 119
    sput-boolean v0, Lfr/testudo/spacecorsair/mod/ModV38;->inSync:Z

    goto :goto_8
.end method
