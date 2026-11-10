.class public final Lfr/testudo/spacecorsair/mod/ModWings;
.super Ljava/lang/Object;
.source "ModWings.java"


# static fields
.field static final ARTS:[Ljava/lang/String;

.field private static D:F = 0.0f

.field static final HOLD_MS:F = 2500.0f

.field static final MAX_ANG:F = 12.0f

.field static final PIVOT:[[F

.field static final X_OPEN:F = 0.6f

.field private static final a:Lfr/testudo/spacecorsair/engine/Vector2;

.field private static ang:F

.field private static final b:Lfr/testudo/spacecorsair/engine/Vector2;

.field private static cur:I

.field private static held:F

.field private static final hist:[F

.field private static histPos:I

.field private static histT:J

.field private static lastT:J

.field private static peak:F

.field private static stoppedSince:J

.field private static vbest:F

.field private static vel:F

.field private static vmax:F


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x2

    .line 20
    new-array v0, v2, [Ljava/lang/String;

    const-string v1, "mantis"

    aput-object v1, v0, v3

    const-string v1, "verdant"

    aput-object v1, v0, v4

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModWings;->ARTS:[Ljava/lang/String;

    .line 22
    new-array v0, v2, [[F

    new-array v1, v2, [F

    fill-array-data v1, :array_42

    aput-object v1, v0, v3

    new-array v1, v2, [F

    fill-array-data v1, :array_4a

    aput-object v1, v0, v4

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModWings;->PIVOT:[[F

    .line 24
    const/4 v0, -0x1

    sput v0, Lfr/testudo/spacecorsair/mod/ModWings;->cur:I

    .line 26
    const v0, 0x3a83126f    # 0.001f

    sput v0, Lfr/testudo/spacecorsair/mod/ModWings;->vmax:F

    .line 27
    const/16 v0, 0x1a

    new-array v0, v0, [F

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModWings;->hist:[F

    .line 31
    const-wide/16 v0, -0x1

    sput-wide v0, Lfr/testudo/spacecorsair/mod/ModWings;->stoppedSince:J

    .line 33
    new-instance v0, Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-direct {v0}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>()V

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModWings;->a:Lfr/testudo/spacecorsair/engine/Vector2;

    new-instance v0, Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-direct {v0}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>()V

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModWings;->b:Lfr/testudo/spacecorsair/engine/Vector2;

    return-void

    .line 22
    :array_42
    .array-data 4
        0x436c0000    # 236.0f
        0x44160000    # 600.0f
    .end array-data

    :array_4a
    .array-data 4
        0x43320000    # 178.0f
        0x44070000    # 540.0f
    .end array-data
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static artIndex(Ljava/lang/String;)I
    .registers 3

    .prologue
    .line 36
    const/4 v0, 0x0

    :goto_1
    sget-object v1, Lfr/testudo/spacecorsair/mod/ModWings;->ARTS:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_14

    sget-object v1, Lfr/testudo/spacecorsair/mod/ModWings;->ARTS:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 37
    :goto_10
    return v0

    .line 36
    :cond_11
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 37
    :cond_14
    const/4 v0, -0x1

    goto :goto_10
.end method

.method private static indexOf(Lfr/testudo/spacecorsair/business/player/PlayerShip;)I
    .registers 5

    .prologue
    const/4 v0, -0x1

    .line 47
    :try_start_1
    iget-object v1, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->shipSpec:Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;

    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModShips;->hullFor(Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;)Lfr/testudo/spacecorsair/mod/ModShips$Hull;

    move-result-object v1

    .line 48
    if-nez v1, :cond_a

    .line 52
    :cond_9
    :goto_9
    return v0

    .line 49
    :cond_a
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModV35;->currentShip()Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    move-result-object v2

    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModV35;->level(Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)I

    move-result v2

    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModV35;->stage(I)I

    move-result v2

    .line 50
    iget-object v3, v1, Lfr/testudo/spacecorsair/mod/ModShips$Hull;->art:Ljava/lang/String;

    invoke-static {v3, v2}, Lfr/testudo/spacecorsair/mod/ModWings;->useParts(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_9

    iget-object v1, v1, Lfr/testudo/spacecorsair/mod/ModShips$Hull;->art:Ljava/lang/String;

    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModWings;->artIndex(Ljava/lang/String;)I
    :try_end_23
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_23} :catch_25

    move-result v0

    goto :goto_9

    .line 51
    :catch_25
    move-exception v1

    goto :goto_9
.end method

.method private static lx(F)F
    .registers 4

    .prologue
    const/high16 v2, 0x3f000000    # 0.5f

    .line 98
    add-float v0, p0, v2

    const/high16 v1, 0x44800000    # 1024.0f

    div-float/2addr v0, v1

    sub-float/2addr v0, v2

    sget v1, Lfr/testudo/spacecorsair/mod/ModWings;->D:F

    mul-float/2addr v0, v1

    return v0
.end method

.method private static reset()V
    .registers 3

    .prologue
    const/4 v2, 0x0

    .line 57
    const-wide/16 v0, 0x0

    sput-wide v0, Lfr/testudo/spacecorsair/mod/ModWings;->lastT:J

    .line 58
    const v0, 0x3a83126f    # 0.001f

    sput v0, Lfr/testudo/spacecorsair/mod/ModWings;->vmax:F

    .line 59
    sput v2, Lfr/testudo/spacecorsair/mod/ModWings;->vbest:F

    .line 60
    const/4 v0, 0x0

    :goto_d
    sget-object v1, Lfr/testudo/spacecorsair/mod/ModWings;->hist:[F

    array-length v1, v1

    if-ge v0, v1, :cond_19

    sget-object v1, Lfr/testudo/spacecorsair/mod/ModWings;->hist:[F

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    .line 61
    :cond_19
    sput v2, Lfr/testudo/spacecorsair/mod/ModWings;->vel:F

    sput v2, Lfr/testudo/spacecorsair/mod/ModWings;->ang:F

    sput v2, Lfr/testudo/spacecorsair/mod/ModWings;->peak:F

    sput v2, Lfr/testudo/spacecorsair/mod/ModWings;->held:F

    .line 62
    const-wide/16 v0, -0x1

    sput-wide v0, Lfr/testudo/spacecorsair/mod/ModWings;->stoppedSince:J

    .line 63
    return-void
.end method

.method public static under(Lfr/testudo/spacecorsair/business/player/PlayerShip;)V
    .registers 25

    .prologue
    .line 111
    :try_start_0
    invoke-static/range {p0 .. p0}, Lfr/testudo/spacecorsair/mod/ModWings;->indexOf(Lfr/testudo/spacecorsair/business/player/PlayerShip;)I

    move-result v4

    .line 112
    if-gez v4, :cond_11

    .line 113
    sget v4, Lfr/testudo/spacecorsair/mod/ModWings;->cur:I

    if-ltz v4, :cond_d

    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModWings;->reset()V

    .line 114
    :cond_d
    const/4 v4, -0x1

    sput v4, Lfr/testudo/spacecorsair/mod/ModWings;->cur:I

    .line 144
    :cond_10
    :goto_10
    return-void

    .line 117
    :cond_11
    sget v5, Lfr/testudo/spacecorsair/mod/ModWings;->cur:I

    if-eq v4, v5, :cond_18

    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModWings;->reset()V

    .line 118
    :cond_18
    sput v4, Lfr/testudo/spacecorsair/mod/ModWings;->cur:I

    .line 119
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    .line 120
    move-object/from16 v0, p0

    move-wide/from16 v1, v18

    invoke-static {v0, v1, v2}, Lfr/testudo/spacecorsair/mod/ModWings;->update(Lfr/testudo/spacecorsair/business/player/PlayerShip;J)V

    .line 121
    invoke-virtual/range {p0 .. p0}, Lfr/testudo/spacecorsair/business/player/PlayerShip;->getDrawableObject()Lfr/testudo/spacecorsair/display/Drawable;

    move-result-object v4

    .line 122
    if-eqz v4, :cond_10

    iget-object v5, v4, Lfr/testudo/spacecorsair/display/Drawable;->dimensions:Lfr/testudo/spacecorsair/engine/Vector2;

    if-eqz v5, :cond_10

    .line 123
    iget-object v4, v4, Lfr/testudo/spacecorsair/display/Drawable;->dimensions:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v4, v4, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    sput v4, Lfr/testudo/spacecorsair/mod/ModWings;->D:F

    .line 124
    sget v4, Lfr/testudo/spacecorsair/mod/ModWings;->ang:F

    const v5, 0x3f19999a    # 0.6f

    move-wide/from16 v0, v18

    long-to-double v6, v0

    const-wide v8, 0x407c200000000000L    # 450.0

    div-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    double-to-float v6, v6

    mul-float/2addr v5, v6

    sget v6, Lfr/testudo/spacecorsair/mod/ModWings;->ang:F

    const/high16 v7, 0x41400000    # 12.0f

    div-float/2addr v6, v7

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-static {v6, v7}, Ljava/lang/Math;->min(FF)F

    move-result v6

    mul-float/2addr v5, v6

    add-float v15, v4, v5

    .line 125
    sget-object v17, Lfr/testudo/spacecorsair/engine/GameRenderer;->screenCenter:Lfr/testudo/spacecorsair/engine/Vector2;

    .line 126
    const/4 v4, 0x1

    sput-boolean v4, Lfr/testudo/spacecorsair/mod/ModFx;->relative:Z
    :try_end_5c
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_5c} :catch_139

    .line 128
    const/4 v4, 0x0

    move/from16 v16, v4

    :goto_5f
    const/4 v4, 0x2

    move/from16 v0, v16

    if-ge v0, v4, :cond_134

    .line 129
    if-nez v16, :cond_12a

    const/4 v4, 0x1

    move v7, v4

    .line 130
    :goto_68
    :try_start_68
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lfr/testudo/spacecorsair/mod/ModWings;->ARTS:[Ljava/lang/String;

    sget v6, Lfr/testudo/spacecorsair/mod/ModWings;->cur:I

    aget-object v5, v5, v6

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-eqz v7, :cond_12e

    const-string v4, "_stage5_wingL"

    :goto_7b
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 131
    sget-object v5, Lfr/testudo/spacecorsair/mod/ModWings;->a:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-static {v7, v15, v5}, Lfr/testudo/spacecorsair/mod/ModWings;->wingPt(ZFLfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 132
    sget-object v5, Lfr/testudo/spacecorsair/mod/ModWings;->b:Lfr/testudo/spacecorsair/engine/Vector2;

    sget-object v6, Lfr/testudo/spacecorsair/mod/ModWings;->a:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v6, v6, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    sget-object v8, Lfr/testudo/spacecorsair/mod/ModWings;->a:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v8, v8, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    invoke-virtual {v5, v6, v8}, Lfr/testudo/spacecorsair/engine/Vector2;->set(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    move-result-object v5

    move-object/from16 v0, p0

    iget v6, v0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->spin:F

    float-to-double v8, v6

    invoke-static {v8, v9}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v8

    invoke-virtual {v5, v8, v9}, Lfr/testudo/spacecorsair/engine/Vector2;->applyRotatation(D)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 133
    sget-object v5, Lfr/testudo/spacecorsair/mod/ModWings;->b:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v5, v5, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    move-object/from16 v0, v17

    iget v6, v0, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    add-float/2addr v5, v6

    sget-object v6, Lfr/testudo/spacecorsair/mod/ModWings;->b:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v6, v6, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    move-object/from16 v0, v17

    iget v8, v0, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    add-float/2addr v6, v8

    .line 134
    move-object/from16 v0, p0

    iget v8, v0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->spin:F

    if-eqz v7, :cond_132

    move v7, v15

    :goto_bb
    add-float v9, v8, v7

    .line 135
    sget v7, Lfr/testudo/spacecorsair/mod/ModWings;->D:F

    sget v8, Lfr/testudo/spacecorsair/mod/ModWings;->D:F

    const/high16 v10, 0x3f800000    # 1.0f

    const/high16 v11, 0x3f800000    # 1.0f

    const/high16 v12, 0x3f800000    # 1.0f

    const/high16 v13, 0x3f800000    # 1.0f

    const/4 v14, 0x0

    invoke-static/range {v4 .. v14}, Lfr/testudo/spacecorsair/mod/ModFx;->sprR(Ljava/lang/String;FFFFFFFFFZ)V

    .line 136
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "_glow_l"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lfr/testudo/spacecorsair/mod/ModV35;->art(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_124

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, "_glow_l"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    sget v7, Lfr/testudo/spacecorsair/mod/ModWings;->D:F

    sget v8, Lfr/testudo/spacecorsair/mod/ModWings;->D:F

    const/high16 v10, 0x3f800000    # 1.0f

    const/high16 v11, 0x3f800000    # 1.0f

    const/high16 v12, 0x3f800000    # 1.0f

    const v13, 0x3f0ccccd    # 0.55f

    const/high16 v14, 0x3e800000    # 0.25f

    move-wide/from16 v0, v18

    long-to-double v0, v0

    move-wide/from16 v20, v0

    const-wide v22, 0x4085e00000000000L    # 700.0

    div-double v20, v20, v22

    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->sin(D)D

    move-result-wide v20

    move-wide/from16 v0, v20

    double-to-float v0, v0

    move/from16 v20, v0

    mul-float v14, v14, v20

    add-float/2addr v13, v14

    const/4 v14, 0x1

    invoke-static/range {v4 .. v14}, Lfr/testudo/spacecorsair/mod/ModFx;->sprR(Ljava/lang/String;FFFFFFFFFZ)V

    .line 128
    :cond_124
    add-int/lit8 v4, v16, 0x1

    move/from16 v16, v4

    goto/16 :goto_5f

    .line 129
    :cond_12a
    const/4 v4, 0x0

    move v7, v4

    goto/16 :goto_68

    .line 130
    :cond_12e
    const-string v4, "_stage5_wingR"
    :try_end_130
    .catchall {:try_start_68 .. :try_end_130} :catchall_13f

    goto/16 :goto_7b

    .line 134
    :cond_132
    neg-float v7, v15

    goto :goto_bb

    .line 139
    :cond_134
    const/4 v4, 0x0

    :try_start_135
    sput-boolean v4, Lfr/testudo/spacecorsair/mod/ModFx;->relative:Z
    :try_end_137
    .catch Ljava/lang/Throwable; {:try_start_135 .. :try_end_137} :catch_139

    goto/16 :goto_10

    .line 141
    :catch_139
    move-exception v4

    .line 142
    const/4 v4, 0x0

    sput-boolean v4, Lfr/testudo/spacecorsair/mod/ModFx;->relative:Z

    goto/16 :goto_10

    .line 139
    :catchall_13f
    move-exception v4

    const/4 v5, 0x0

    :try_start_141
    sput-boolean v5, Lfr/testudo/spacecorsair/mod/ModFx;->relative:Z

    .line 140
    throw v4
    :try_end_144
    .catch Ljava/lang/Throwable; {:try_start_141 .. :try_end_144} :catch_139
.end method

.method private static update(Lfr/testudo/spacecorsair/business/player/PlayerShip;J)V
    .registers 16

    .prologue
    const/high16 v5, 0x3f000000    # 0.5f

    const v9, 0x3ca3d70a    # 0.02f

    const-wide/16 v10, 0x0

    const/high16 v8, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    .line 66
    sget-wide v2, Lfr/testudo/spacecorsair/mod/ModWings;->lastT:J

    cmp-long v0, v2, v10

    if-nez v0, :cond_a3

    const v0, 0x3c83126f    # 0.016f

    .line 67
    :goto_13
    sput-wide p1, Lfr/testudo/spacecorsair/mod/ModWings;->lastT:J

    .line 68
    iget-object v2, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->speed:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v2, v2, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    iget-object v3, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->speed:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v3, v3, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    mul-float/2addr v2, v3

    iget-object v3, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->speed:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v3, v3, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    iget-object v4, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->speed:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v4, v4, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    double-to-float v2, v2

    .line 69
    iget-boolean v3, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->isBoosterEnabled:Z

    if-nez v3, :cond_59

    .line 70
    sget v3, Lfr/testudo/spacecorsair/mod/ModWings;->vmax:F

    mul-float/2addr v3, v5

    cmpl-float v3, v2, v3

    if-lez v3, :cond_42

    sget v3, Lfr/testudo/spacecorsair/mod/ModWings;->vmax:F

    mul-float v4, v9, v0

    sub-float v4, v8, v4

    mul-float/2addr v3, v4

    sput v3, Lfr/testudo/spacecorsair/mod/ModWings;->vmax:F

    .line 71
    :cond_42
    sget v3, Lfr/testudo/spacecorsair/mod/ModWings;->vmax:F

    invoke-static {v3, v2}, Ljava/lang/Math;->max(FF)F

    move-result v3

    sget v4, Lfr/testudo/spacecorsair/mod/ModWings;->vbest:F

    mul-float/2addr v4, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->max(FF)F

    move-result v3

    sput v3, Lfr/testudo/spacecorsair/mod/ModWings;->vmax:F

    .line 72
    sget v3, Lfr/testudo/spacecorsair/mod/ModWings;->vbest:F

    invoke-static {v3, v2}, Ljava/lang/Math;->max(FF)F

    move-result v3

    sput v3, Lfr/testudo/spacecorsair/mod/ModWings;->vbest:F

    .line 74
    :cond_59
    sget v3, Lfr/testudo/spacecorsair/mod/ModWings;->vmax:F

    const v4, 0x3a83126f    # 0.001f

    invoke-static {v3, v4}, Ljava/lang/Math;->max(FF)F

    move-result v3

    div-float/2addr v2, v3

    invoke-static {v8, v2}, Ljava/lang/Math;->min(FF)F

    move-result v4

    .line 75
    sget-wide v2, Lfr/testudo/spacecorsair/mod/ModWings;->histT:J

    sub-long v2, p1, v2

    const-wide/16 v6, 0x64

    cmp-long v2, v2, v6

    if-ltz v2, :cond_83

    .line 76
    sput-wide p1, Lfr/testudo/spacecorsair/mod/ModWings;->histT:J

    .line 77
    sget v2, Lfr/testudo/spacecorsair/mod/ModWings;->histPos:I

    add-int/lit8 v2, v2, 0x1

    sget-object v3, Lfr/testudo/spacecorsair/mod/ModWings;->hist:[F

    array-length v3, v3

    rem-int/2addr v2, v3

    sput v2, Lfr/testudo/spacecorsair/mod/ModWings;->histPos:I

    .line 78
    sget-object v2, Lfr/testudo/spacecorsair/mod/ModWings;->hist:[F

    sget v3, Lfr/testudo/spacecorsair/mod/ModWings;->histPos:I

    aput v1, v2, v3

    .line 80
    :cond_83
    sget-object v2, Lfr/testudo/spacecorsair/mod/ModWings;->hist:[F

    sget v3, Lfr/testudo/spacecorsair/mod/ModWings;->histPos:I

    sget-object v5, Lfr/testudo/spacecorsair/mod/ModWings;->hist:[F

    sget v6, Lfr/testudo/spacecorsair/mod/ModWings;->histPos:I

    aget v5, v5, v6

    invoke-static {v5, v4}, Ljava/lang/Math;->max(FF)F

    move-result v5

    aput v5, v2, v3

    .line 82
    sget-object v5, Lfr/testudo/spacecorsair/mod/ModWings;->hist:[F

    array-length v6, v5

    const/4 v2, 0x0

    move v3, v1

    :goto_98
    if-ge v2, v6, :cond_b8

    aget v7, v5, v2

    invoke-static {v3, v7}, Ljava/lang/Math;->max(FF)F

    move-result v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_98

    .line 66
    :cond_a3
    const v0, 0x3dcccccd    # 0.1f

    sget-wide v2, Lfr/testudo/spacecorsair/mod/ModWings;->lastT:J

    sub-long v2, p1, v2

    long-to-float v2, v2

    const/high16 v3, 0x447a0000    # 1000.0f

    div-float/2addr v2, v3

    invoke-static {v0, v2}, Ljava/lang/Math;->min(FF)F

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    goto/16 :goto_13

    .line 83
    :cond_b8
    sput v3, Lfr/testudo/spacecorsair/mod/ModWings;->held:F

    .line 84
    cmpg-float v2, v4, v9

    if-gez v2, :cond_12b

    .line 85
    sget-wide v2, Lfr/testudo/spacecorsair/mod/ModWings;->stoppedSince:J

    cmp-long v2, v2, v10

    if-gez v2, :cond_c6

    sput-wide p1, Lfr/testudo/spacecorsair/mod/ModWings;->stoppedSince:J

    .line 89
    :cond_c6
    :goto_c6
    sget-wide v2, Lfr/testudo/spacecorsair/mod/ModWings;->stoppedSince:J

    cmp-long v2, v2, v10

    if-ltz v2, :cond_130

    sget-wide v2, Lfr/testudo/spacecorsair/mod/ModWings;->stoppedSince:J

    sub-long v2, p1, v2

    long-to-float v2, v2

    const v3, 0x451c4000    # 2500.0f

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_130

    :goto_d8
    sput v1, Lfr/testudo/spacecorsair/mod/ModWings;->peak:F

    .line 90
    const/high16 v1, 0x41400000    # 12.0f

    mul-float/2addr v0, v1

    .line 91
    const/high16 v1, 0x41400000    # 12.0f

    sget v2, Lfr/testudo/spacecorsair/mod/ModWings;->peak:F

    const v3, 0x3f19999a    # 0.6f

    div-float/2addr v2, v3

    invoke-static {v2, v8}, Ljava/lang/Math;->min(FF)F

    move-result v2

    float-to-double v2, v2

    const-wide v4, 0x3fe6666666666666L    # 0.7

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    double-to-float v2, v2

    mul-float/2addr v1, v2

    .line 92
    sget v2, Lfr/testudo/spacecorsair/mod/ModWings;->vel:F

    sget v3, Lfr/testudo/spacecorsair/mod/ModWings;->ang:F

    sub-float/2addr v1, v3

    const v3, 0x3e3851ec    # 0.18f

    mul-float/2addr v1, v3

    mul-float/2addr v1, v0

    mul-float/2addr v1, v0

    add-float/2addr v1, v2

    sput v1, Lfr/testudo/spacecorsair/mod/ModWings;->vel:F

    .line 93
    sget v1, Lfr/testudo/spacecorsair/mod/ModWings;->vel:F

    const-wide v2, 0x3fe70a3d70a3d70aL    # 0.72

    float-to-double v4, v0

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    double-to-float v0, v2

    mul-float/2addr v0, v1

    sput v0, Lfr/testudo/spacecorsair/mod/ModWings;->vel:F

    .line 94
    sget v0, Lfr/testudo/spacecorsair/mod/ModWings;->ang:F

    sget v1, Lfr/testudo/spacecorsair/mod/ModWings;->vel:F

    add-float/2addr v0, v1

    sput v0, Lfr/testudo/spacecorsair/mod/ModWings;->ang:F

    .line 95
    const/high16 v0, -0x40800000    # -1.0f

    const/high16 v1, 0x41600000    # 14.0f

    sget v2, Lfr/testudo/spacecorsair/mod/ModWings;->ang:F

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    sput v0, Lfr/testudo/spacecorsair/mod/ModWings;->ang:F

    .line 96
    return-void

    .line 87
    :cond_12b
    const-wide/16 v2, -0x1

    sput-wide v2, Lfr/testudo/spacecorsair/mod/ModWings;->stoppedSince:J

    goto :goto_c6

    .line 89
    :cond_130
    sget v1, Lfr/testudo/spacecorsair/mod/ModWings;->peak:F

    sget v2, Lfr/testudo/spacecorsair/mod/ModWings;->held:F

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    goto :goto_d8
.end method

.method static useParts(Ljava/lang/String;I)Z
    .registers 4

    .prologue
    .line 42
    const/4 v0, 0x5

    if-ne p1, v0, :cond_56

    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModWings;->artIndex(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_56

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_stage5_hull"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModV35;->art(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_56

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_stage5_wingL"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModV35;->art(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_56

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_stage5_wingR"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModV35;->art(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_56

    const/4 v0, 0x1

    :goto_55
    return v0

    :cond_56
    const/4 v0, 0x0

    goto :goto_55
.end method

.method private static wingPt(ZFLfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;
    .registers 8

    .prologue
    const/4 v4, 0x0

    const/high16 v3, 0x44000000    # 512.0f

    .line 102
    if-eqz p0, :cond_39

    sget-object v0, Lfr/testudo/spacecorsair/mod/ModWings;->PIVOT:[[F

    sget v1, Lfr/testudo/spacecorsair/mod/ModWings;->cur:I

    aget-object v0, v0, v1

    aget v0, v0, v4

    :goto_d
    sget-object v1, Lfr/testudo/spacecorsair/mod/ModWings;->PIVOT:[[F

    sget v2, Lfr/testudo/spacecorsair/mod/ModWings;->cur:I

    aget-object v1, v1, v2

    const/4 v2, 0x1

    aget v1, v1, v2

    .line 103
    sub-float v2, v3, v0

    sub-float/2addr v3, v1

    invoke-virtual {p2, v2, v3}, Lfr/testudo/spacecorsair/engine/Vector2;->set(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    move-result-object v4

    if-eqz p0, :cond_46

    float-to-double v2, p1

    :goto_20
    invoke-static {v2, v3}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v2

    invoke-virtual {v4, v2, v3}, Lfr/testudo/spacecorsair/engine/Vector2;->applyRotatation(D)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 104
    iget v2, p2, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    add-float/2addr v0, v2

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModWings;->lx(F)F

    move-result v0

    iget v2, p2, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    add-float/2addr v1, v2

    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModWings;->lx(F)F

    move-result v1

    invoke-virtual {p2, v0, v1}, Lfr/testudo/spacecorsair/engine/Vector2;->set(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 105
    return-object p2

    .line 102
    :cond_39
    const v0, 0x447fc000    # 1023.0f

    sget-object v1, Lfr/testudo/spacecorsair/mod/ModWings;->PIVOT:[[F

    sget v2, Lfr/testudo/spacecorsair/mod/ModWings;->cur:I

    aget-object v1, v1, v2

    aget v1, v1, v4

    sub-float/2addr v0, v1

    goto :goto_d

    .line 103
    :cond_46
    neg-float v2, p1

    float-to-double v2, v2

    goto :goto_20
.end method
