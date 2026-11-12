.class public final Lfr/testudo/spacecorsair/mod/ModWings;
.super Ljava/lang/Object;
.source "ModWings.java"


# static fields
.field static final ARTS:[Ljava/lang/String;

.field private static D:F = 0.0f

.field private static final ENEMY:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Lfr/testudo/spacecorsair/business/Element;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final EST:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Lfr/testudo/spacecorsair/business/Element;",
            "[D>;"
        }
    .end annotation
.end field

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

    .line 21
    new-array v0, v2, [Ljava/lang/String;

    const-string v1, "mantis"

    aput-object v1, v0, v3

    const-string v1, "verdant"

    aput-object v1, v0, v4

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModWings;->ARTS:[Ljava/lang/String;

    .line 23
    new-array v0, v2, [[F

    new-array v1, v2, [F

    fill-array-data v1, :array_50

    aput-object v1, v0, v3

    new-array v1, v2, [F

    fill-array-data v1, :array_58

    aput-object v1, v0, v4

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModWings;->PIVOT:[[F

    .line 25
    const/4 v0, -0x1

    sput v0, Lfr/testudo/spacecorsair/mod/ModWings;->cur:I

    .line 27
    const v0, 0x3a83126f    # 0.001f

    sput v0, Lfr/testudo/spacecorsair/mod/ModWings;->vmax:F

    .line 28
    const/16 v0, 0x1a

    new-array v0, v0, [F

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModWings;->hist:[F

    .line 32
    const-wide/16 v0, -0x1

    sput-wide v0, Lfr/testudo/spacecorsair/mod/ModWings;->stoppedSince:J

    .line 34
    new-instance v0, Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-direct {v0}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>()V

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModWings;->a:Lfr/testudo/spacecorsair/engine/Vector2;

    new-instance v0, Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-direct {v0}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>()V

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModWings;->b:Lfr/testudo/spacecorsair/engine/Vector2;

    .line 149
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModWings;->ENEMY:Ljava/util/WeakHashMap;

    .line 151
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModWings;->EST:Ljava/util/WeakHashMap;

    return-void

    .line 23
    :array_50
    .array-data 4
        0x436c0000    # 236.0f
        0x44160000    # 600.0f
    .end array-data

    :array_58
    .array-data 4
        0x43320000    # 178.0f
        0x44070000    # 540.0f
    .end array-data
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static artIndex(Ljava/lang/String;)I
    .registers 3

    .prologue
    .line 37
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

    .line 38
    :goto_10
    return v0

    .line 37
    :cond_11
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 38
    :cond_14
    const/4 v0, -0x1

    goto :goto_10
.end method

.method static enemySkin(Lfr/testudo/spacecorsair/business/Element;Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    .prologue
    .line 155
    const/4 v0, 0x0

    :goto_1
    sget-object v1, Lfr/testudo/spacecorsair/mod/ModWings;->ARTS:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_52

    .line 156
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lfr/testudo/spacecorsair/mod/ModWings;->ARTS:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_stage5"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4f

    sget-object v1, Lfr/testudo/spacecorsair/mod/ModWings;->ARTS:[Ljava/lang/String;

    aget-object v1, v1, v0

    const/4 v2, 0x5

    invoke-static {v1, v2}, Lfr/testudo/spacecorsair/mod/ModWings;->useParts(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_4f

    .line 157
    sget-object v1, Lfr/testudo/spacecorsair/mod/ModWings;->ENEMY:Ljava/util/WeakHashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, p0, v2}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 158
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lfr/testudo/spacecorsair/mod/ModWings;->ARTS:[Ljava/lang/String;

    aget-object v0, v2, v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_stage5_hull"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 162
    :goto_4e
    return-object p1

    .line 155
    :cond_4f
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 161
    :cond_52
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModWings;->ENEMY:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p0}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4e
.end method

.method private static indexOf(Lfr/testudo/spacecorsair/business/player/PlayerShip;)I
    .registers 5

    .prologue
    const/4 v0, -0x1

    .line 48
    :try_start_1
    iget-object v1, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->shipSpec:Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;

    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModShips;->hullFor(Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;)Lfr/testudo/spacecorsair/mod/ModShips$Hull;

    move-result-object v1

    .line 49
    if-nez v1, :cond_a

    .line 53
    :cond_9
    :goto_9
    return v0

    .line 50
    :cond_a
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModV35;->currentShip()Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    move-result-object v2

    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModV35;->level(Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)I

    move-result v2

    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModV35;->stage(I)I

    move-result v2

    .line 51
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

    .line 52
    :catch_25
    move-exception v1

    goto :goto_9
.end method

.method private static lx(F)F
    .registers 4

    .prologue
    const/high16 v2, 0x3f000000    # 0.5f

    .line 99
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

    .line 58
    const-wide/16 v0, 0x0

    sput-wide v0, Lfr/testudo/spacecorsair/mod/ModWings;->lastT:J

    .line 59
    const v0, 0x3a83126f    # 0.001f

    sput v0, Lfr/testudo/spacecorsair/mod/ModWings;->vmax:F

    .line 60
    sput v2, Lfr/testudo/spacecorsair/mod/ModWings;->vbest:F

    .line 61
    const/4 v0, 0x0

    :goto_d
    sget-object v1, Lfr/testudo/spacecorsair/mod/ModWings;->hist:[F

    array-length v1, v1

    if-ge v0, v1, :cond_19

    sget-object v1, Lfr/testudo/spacecorsair/mod/ModWings;->hist:[F

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    .line 62
    :cond_19
    sput v2, Lfr/testudo/spacecorsair/mod/ModWings;->vel:F

    sput v2, Lfr/testudo/spacecorsair/mod/ModWings;->ang:F

    sput v2, Lfr/testudo/spacecorsair/mod/ModWings;->peak:F

    sput v2, Lfr/testudo/spacecorsair/mod/ModWings;->held:F

    .line 63
    const-wide/16 v0, -0x1

    sput-wide v0, Lfr/testudo/spacecorsair/mod/ModWings;->stoppedSince:J

    .line 64
    return-void
.end method

.method public static under(Lfr/testudo/spacecorsair/business/player/PlayerShip;)V
    .registers 25

    .prologue
    .line 112
    :try_start_0
    invoke-static/range {p0 .. p0}, Lfr/testudo/spacecorsair/mod/ModWings;->indexOf(Lfr/testudo/spacecorsair/business/player/PlayerShip;)I

    move-result v4

    .line 113
    if-gez v4, :cond_11

    .line 114
    sget v4, Lfr/testudo/spacecorsair/mod/ModWings;->cur:I

    if-ltz v4, :cond_d

    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModWings;->reset()V

    .line 115
    :cond_d
    const/4 v4, -0x1

    sput v4, Lfr/testudo/spacecorsair/mod/ModWings;->cur:I

    .line 146
    :cond_10
    :goto_10
    return-void

    .line 118
    :cond_11
    sget v5, Lfr/testudo/spacecorsair/mod/ModWings;->cur:I

    if-eq v4, v5, :cond_18

    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModWings;->reset()V

    .line 119
    :cond_18
    sput v4, Lfr/testudo/spacecorsair/mod/ModWings;->cur:I

    .line 120
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    .line 121
    sget-wide v4, Lfr/testudo/spacecorsair/mod/ModWings;->lastT:J

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-eqz v4, :cond_33

    sget-wide v4, Lfr/testudo/spacecorsair/mod/ModWings;->lastT:J

    sub-long v4, v18, v4

    const-wide/16 v6, 0x3e8

    cmp-long v4, v4, v6

    if-lez v4, :cond_33

    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModWings;->reset()V

    .line 122
    :cond_33
    move-object/from16 v0, p0

    move-wide/from16 v1, v18

    invoke-static {v0, v1, v2}, Lfr/testudo/spacecorsair/mod/ModWings;->update(Lfr/testudo/spacecorsair/business/player/PlayerShip;J)V

    .line 123
    invoke-virtual/range {p0 .. p0}, Lfr/testudo/spacecorsair/business/player/PlayerShip;->getDrawableObject()Lfr/testudo/spacecorsair/display/Drawable;

    move-result-object v4

    .line 124
    if-eqz v4, :cond_10

    iget-object v5, v4, Lfr/testudo/spacecorsair/display/Drawable;->dimensions:Lfr/testudo/spacecorsair/engine/Vector2;

    if-eqz v5, :cond_10

    .line 125
    iget-object v4, v4, Lfr/testudo/spacecorsair/display/Drawable;->dimensions:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v4, v4, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    sput v4, Lfr/testudo/spacecorsair/mod/ModWings;->D:F

    .line 126
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

    .line 127
    sget-object v17, Lfr/testudo/spacecorsair/engine/GameRenderer;->screenCenter:Lfr/testudo/spacecorsair/engine/Vector2;

    .line 128
    const/4 v4, 0x1

    sput-boolean v4, Lfr/testudo/spacecorsair/mod/ModFx;->relative:Z
    :try_end_71
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_71} :catch_14e

    .line 130
    const/4 v4, 0x0

    move/from16 v16, v4

    :goto_74
    const/4 v4, 0x2

    move/from16 v0, v16

    if-ge v0, v4, :cond_149

    .line 131
    if-nez v16, :cond_13f

    const/4 v4, 0x1

    move v7, v4

    .line 132
    :goto_7d
    :try_start_7d
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lfr/testudo/spacecorsair/mod/ModWings;->ARTS:[Ljava/lang/String;

    sget v6, Lfr/testudo/spacecorsair/mod/ModWings;->cur:I

    aget-object v5, v5, v6

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-eqz v7, :cond_143

    const-string v4, "_stage5_wingL"

    :goto_90
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 133
    sget-object v5, Lfr/testudo/spacecorsair/mod/ModWings;->a:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-static {v7, v15, v5}, Lfr/testudo/spacecorsair/mod/ModWings;->wingPt(ZFLfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 134
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

    .line 135
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

    .line 136
    move-object/from16 v0, p0

    iget v8, v0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->spin:F

    if-eqz v7, :cond_147

    move v7, v15

    :goto_d0
    add-float v9, v8, v7

    .line 137
    sget v7, Lfr/testudo/spacecorsair/mod/ModWings;->D:F

    sget v8, Lfr/testudo/spacecorsair/mod/ModWings;->D:F

    const/high16 v10, 0x3f800000    # 1.0f

    const/high16 v11, 0x3f800000    # 1.0f

    const/high16 v12, 0x3f800000    # 1.0f

    const/high16 v13, 0x3f800000    # 1.0f

    const/4 v14, 0x0

    invoke-static/range {v4 .. v14}, Lfr/testudo/spacecorsair/mod/ModFx;->sprR(Ljava/lang/String;FFFFFFFFFZ)V

    .line 138
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

    if-eqz v7, :cond_139

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

    .line 130
    :cond_139
    add-int/lit8 v4, v16, 0x1

    move/from16 v16, v4

    goto/16 :goto_74

    .line 131
    :cond_13f
    const/4 v4, 0x0

    move v7, v4

    goto/16 :goto_7d

    .line 132
    :cond_143
    const-string v4, "_stage5_wingR"
    :try_end_145
    .catchall {:try_start_7d .. :try_end_145} :catchall_154

    goto/16 :goto_90

    .line 136
    :cond_147
    neg-float v7, v15

    goto :goto_d0

    .line 141
    :cond_149
    const/4 v4, 0x0

    :try_start_14a
    sput-boolean v4, Lfr/testudo/spacecorsair/mod/ModFx;->relative:Z
    :try_end_14c
    .catch Ljava/lang/Throwable; {:try_start_14a .. :try_end_14c} :catch_14e

    goto/16 :goto_10

    .line 143
    :catch_14e
    move-exception v4

    .line 144
    const/4 v4, 0x0

    sput-boolean v4, Lfr/testudo/spacecorsair/mod/ModFx;->relative:Z

    goto/16 :goto_10

    .line 141
    :catchall_154
    move-exception v4

    const/4 v5, 0x0

    :try_start_156
    sput-boolean v5, Lfr/testudo/spacecorsair/mod/ModFx;->relative:Z

    .line 142
    throw v4
    :try_end_159
    .catch Ljava/lang/Throwable; {:try_start_156 .. :try_end_159} :catch_14e
.end method

.method public static underEnemy(Lfr/testudo/spacecorsair/business/Element;)V
    .registers 19

    .prologue
    .line 168
    :try_start_0
    sget-object v2, Lfr/testudo/spacecorsair/mod/ModWings;->ENEMY:Ljava/util/WeakHashMap;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 169
    if-eqz v2, :cond_18

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lfr/testudo/spacecorsair/business/Element;->removed:Z

    if-nez v3, :cond_18

    move-object/from16 v0, p0

    iget-object v3, v0, Lfr/testudo/spacecorsair/business/Element;->speed:Lfr/testudo/spacecorsair/engine/Vector2;

    if-nez v3, :cond_19

    .line 212
    :cond_18
    :goto_18
    return-void

    .line 170
    :cond_19
    invoke-virtual/range {p0 .. p0}, Lfr/testudo/spacecorsair/business/Element;->getDrawableObject()Lfr/testudo/spacecorsair/display/Drawable;

    move-result-object v8

    .line 171
    if-eqz v8, :cond_18

    iget-object v3, v8, Lfr/testudo/spacecorsair/display/Drawable;->dimensions:Lfr/testudo/spacecorsair/engine/Vector2;

    if-eqz v3, :cond_18

    .line 172
    sget-object v3, Lfr/testudo/spacecorsair/mod/ModWings;->EST:Ljava/util/WeakHashMap;

    move-object/from16 v0, p0

    invoke-virtual {v3, v0}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [D

    .line 173
    if-eqz v3, :cond_4b

    const/4 v4, 0x4

    aget-wide v4, v3, v4

    const-wide/16 v6, 0x0

    cmpl-double v4, v4, v6

    if-eqz v4, :cond_4b

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    long-to-double v4, v4

    const/4 v6, 0x4

    aget-wide v6, v3, v6

    sub-double/2addr v4, v6

    const-wide v6, 0x408f400000000000L    # 1000.0

    cmpl-double v4, v4, v6

    if-lez v4, :cond_4b

    const/4 v3, 0x0

    .line 174
    :cond_4b
    if-nez v3, :cond_5a

    const/4 v3, 0x6

    new-array v3, v3, [D

    fill-array-data v3, :array_26a

    sget-object v4, Lfr/testudo/spacecorsair/mod/ModWings;->EST:Ljava/util/WeakHashMap;

    move-object/from16 v0, p0

    invoke-virtual {v4, v0, v3}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 175
    :cond_5a
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    .line 176
    const/4 v4, 0x4

    aget-wide v4, v3, v4

    const-wide/16 v6, 0x0

    cmpl-double v4, v4, v6

    if-nez v4, :cond_218

    const-wide v4, 0x3f90624dd2f1a9fcL    # 0.016

    move-wide v6, v4

    .line 177
    :goto_6d
    const/4 v4, 0x4

    long-to-double v12, v10

    aput-wide v12, v3, v4

    .line 178
    move-object/from16 v0, p0

    iget-object v4, v0, Lfr/testudo/spacecorsair/business/Element;->speed:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v4, v4, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    move-object/from16 v0, p0

    iget-object v5, v0, Lfr/testudo/spacecorsair/business/Element;->speed:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v5, v5, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    mul-float/2addr v4, v5

    move-object/from16 v0, p0

    iget-object v5, v0, Lfr/testudo/spacecorsair/business/Element;->speed:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v5, v5, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    move-object/from16 v0, p0

    iget-object v9, v0, Lfr/testudo/spacecorsair/business/Element;->speed:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v9, v9, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    mul-float/2addr v5, v9

    add-float/2addr v4, v5

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    .line 179
    const-wide/high16 v12, 0x3fe0000000000000L    # 0.5

    const/4 v9, 0x0

    aget-wide v14, v3, v9

    mul-double/2addr v12, v14

    cmpl-double v9, v4, v12

    if-lez v9, :cond_ac

    const/4 v9, 0x0

    aget-wide v12, v3, v9

    const-wide/high16 v14, 0x3ff0000000000000L    # 1.0

    const-wide v16, 0x3f947ae147ae147bL    # 0.02

    mul-double v16, v16, v6

    sub-double v14, v14, v16

    mul-double/2addr v12, v14

    aput-wide v12, v3, v9

    .line 180
    :cond_ac
    const/4 v9, 0x0

    const/4 v12, 0x0

    aget-wide v12, v3, v12

    invoke-static {v12, v13, v4, v5}, Ljava/lang/Math;->max(DD)D

    move-result-wide v12

    aput-wide v12, v3, v9

    .line 181
    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    const/4 v9, 0x0

    aget-wide v14, v3, v9

    const-wide v16, 0x3f50624dd2f1a9fcL    # 0.001

    invoke-static/range {v14 .. v17}, Ljava/lang/Math;->max(DD)D

    move-result-wide v14

    div-double/2addr v4, v14

    invoke-static {v12, v13, v4, v5}, Ljava/lang/Math;->min(DD)D

    move-result-wide v4

    .line 182
    const-wide v12, 0x3f947ae147ae147bL    # 0.02

    cmpg-double v9, v4, v12

    if-gez v9, :cond_235

    const/4 v9, 0x5

    aget-wide v12, v3, v9

    const-wide/16 v14, 0x0

    cmpg-double v9, v12, v14

    if-gez v9, :cond_df

    const/4 v9, 0x5

    long-to-double v12, v10

    aput-wide v12, v3, v9

    .line 183
    :cond_df
    :goto_df
    const/4 v9, 0x3

    const/4 v12, 0x5

    aget-wide v12, v3, v12

    const-wide/16 v14, 0x0

    cmpl-double v12, v12, v14

    if-ltz v12, :cond_23f

    long-to-double v10, v10

    const/4 v12, 0x5

    aget-wide v12, v3, v12

    sub-double/2addr v10, v12

    const-wide v12, 0x40a3880000000000L    # 2500.0

    cmpl-double v10, v10, v12

    if-ltz v10, :cond_23f

    const-wide/16 v4, 0x0

    :goto_f9
    aput-wide v4, v3, v9

    .line 184
    const-wide/high16 v4, 0x4028000000000000L    # 12.0

    mul-double/2addr v4, v6

    .line 185
    const-wide/high16 v6, 0x4028000000000000L    # 12.0

    const/4 v9, 0x3

    aget-wide v10, v3, v9

    const-wide v12, 0x3fe3333340000000L    # 0.6000000238418579

    div-double/2addr v10, v12

    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    invoke-static {v10, v11, v12, v13}, Ljava/lang/Math;->min(DD)D

    move-result-wide v10

    const-wide v12, 0x3fe6666666666666L    # 0.7

    invoke-static {v10, v11, v12, v13}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v10

    mul-double/2addr v6, v10

    .line 186
    const/4 v9, 0x2

    aget-wide v10, v3, v9

    const/4 v12, 0x1

    aget-wide v12, v3, v12

    sub-double/2addr v6, v12

    const-wide v12, 0x3fc70a3d70a3d70aL    # 0.18

    mul-double/2addr v6, v12

    mul-double/2addr v6, v4

    mul-double/2addr v6, v4

    add-double/2addr v6, v10

    aput-wide v6, v3, v9

    .line 187
    const/4 v6, 0x2

    aget-wide v10, v3, v6

    const-wide v12, 0x3fe70a3d70a3d70aL    # 0.72

    invoke-static {v12, v13, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    mul-double/2addr v4, v10

    aput-wide v4, v3, v6

    .line 188
    const/4 v4, 0x1

    const-wide/high16 v6, -0x4010000000000000L    # -1.0

    const-wide/high16 v10, 0x402c000000000000L    # 14.0

    const/4 v5, 0x1

    aget-wide v12, v3, v5

    const/4 v5, 0x2

    aget-wide v14, v3, v5

    add-double/2addr v12, v14

    invoke-static {v10, v11, v12, v13}, Ljava/lang/Math;->min(DD)D

    move-result-wide v10

    invoke-static {v6, v7, v10, v11}, Ljava/lang/Math;->max(DD)D

    move-result-wide v6

    aput-wide v6, v3, v4

    .line 189
    sget v15, Lfr/testudo/spacecorsair/mod/ModWings;->cur:I

    .line 190
    sget v16, Lfr/testudo/spacecorsair/mod/ModWings;->D:F

    .line 191
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    sput v2, Lfr/testudo/spacecorsair/mod/ModWings;->cur:I

    .line 192
    iget-object v2, v8, Lfr/testudo/spacecorsair/display/Drawable;->dimensions:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v2, v2, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    sput v2, Lfr/testudo/spacecorsair/mod/ModWings;->D:F

    .line 193
    const/4 v2, 0x1

    aget-wide v2, v3, v2
    :try_end_163
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_163} :catch_23c

    double-to-float v13, v2

    .line 195
    const/4 v2, 0x0

    move v14, v2

    :goto_166
    const/4 v2, 0x2

    if-ge v14, v2, :cond_25e

    .line 196
    if-nez v14, :cond_253

    const/4 v2, 0x1

    move v5, v2

    .line 197
    :goto_16d
    :try_start_16d
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lfr/testudo/spacecorsair/mod/ModWings;->ARTS:[Ljava/lang/String;

    sget v4, Lfr/testudo/spacecorsair/mod/ModWings;->cur:I

    aget-object v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-eqz v5, :cond_257

    const-string v2, "_stage5_wingL"

    :goto_180
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 198
    sget-object v3, Lfr/testudo/spacecorsair/mod/ModWings;->a:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-static {v5, v13, v3}, Lfr/testudo/spacecorsair/mod/ModWings;->wingPt(ZFLfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 199
    sget-object v3, Lfr/testudo/spacecorsair/mod/ModWings;->b:Lfr/testudo/spacecorsair/engine/Vector2;

    sget-object v4, Lfr/testudo/spacecorsair/mod/ModWings;->a:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v4, v4, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    sget-object v6, Lfr/testudo/spacecorsair/mod/ModWings;->a:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v6, v6, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    invoke-virtual {v3, v4, v6}, Lfr/testudo/spacecorsair/engine/Vector2;->set(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Lfr/testudo/spacecorsair/business/Element;->spin:F

    float-to-double v6, v4

    invoke-static {v6, v7}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v6

    invoke-virtual {v3, v6, v7}, Lfr/testudo/spacecorsair/engine/Vector2;->applyRotatation(D)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 200
    sget-object v3, Lfr/testudo/spacecorsair/mod/ModWings;->b:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v3, v3, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    move-object/from16 v0, p0

    iget-object v4, v0, Lfr/testudo/spacecorsair/business/Element;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v4, v4, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    add-float/2addr v3, v4

    sget-object v4, Lfr/testudo/spacecorsair/mod/ModWings;->b:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v4, v4, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    move-object/from16 v0, p0

    iget-object v6, v0, Lfr/testudo/spacecorsair/business/Element;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v6, v6, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    add-float/2addr v4, v6

    .line 201
    move-object/from16 v0, p0

    iget v6, v0, Lfr/testudo/spacecorsair/business/Element;->spin:F

    if-eqz v5, :cond_25b

    move v5, v13

    :goto_1c4
    add-float v7, v6, v5

    .line 202
    sget v5, Lfr/testudo/spacecorsair/mod/ModWings;->D:F

    sget v6, Lfr/testudo/spacecorsair/mod/ModWings;->D:F

    const/high16 v8, 0x3f800000    # 1.0f

    const/high16 v9, 0x3f800000    # 1.0f

    const/high16 v10, 0x3f800000    # 1.0f

    const/high16 v11, 0x3f800000    # 1.0f

    const/4 v12, 0x0

    invoke-static/range {v2 .. v12}, Lfr/testudo/spacecorsair/mod/ModFx;->sprR(Ljava/lang/String;FFFFFFFFFZ)V

    .line 203
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "_glow_l"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lfr/testudo/spacecorsair/mod/ModV35;->art(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_213

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "_glow_l"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget v5, Lfr/testudo/spacecorsair/mod/ModWings;->D:F

    sget v6, Lfr/testudo/spacecorsair/mod/ModWings;->D:F

    const/high16 v8, 0x3f800000    # 1.0f

    const/high16 v9, 0x3f800000    # 1.0f

    const/high16 v10, 0x3f800000    # 1.0f

    const v11, 0x3f19999a    # 0.6f

    const/4 v12, 0x1

    invoke-static/range {v2 .. v12}, Lfr/testudo/spacecorsair/mod/ModFx;->sprR(Ljava/lang/String;FFFFFFFFFZ)V
    :try_end_213
    .catchall {:try_start_16d .. :try_end_213} :catchall_264

    .line 195
    :cond_213
    add-int/lit8 v2, v14, 0x1

    move v14, v2

    goto/16 :goto_166

    .line 176
    :cond_218
    const-wide/16 v4, 0x0

    const-wide v6, 0x3fb999999999999aL    # 0.1

    long-to-double v12, v10

    const/4 v9, 0x4

    :try_start_221
    aget-wide v14, v3, v9

    sub-double/2addr v12, v14

    const-wide v14, 0x408f400000000000L    # 1000.0

    div-double/2addr v12, v14

    invoke-static {v6, v7, v12, v13}, Ljava/lang/Math;->min(DD)D

    move-result-wide v6

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->max(DD)D

    move-result-wide v4

    move-wide v6, v4

    goto/16 :goto_6d

    .line 182
    :cond_235
    const/4 v9, 0x5

    const-wide/high16 v12, -0x4010000000000000L    # -1.0

    aput-wide v12, v3, v9

    goto/16 :goto_df

    .line 209
    :catch_23c
    move-exception v2

    goto/16 :goto_18

    .line 183
    :cond_23f
    const/4 v10, 0x3

    aget-wide v10, v3, v10

    const-wide/high16 v12, 0x3fe0000000000000L    # 0.5

    const-wide/high16 v14, 0x4004000000000000L    # 2.5

    div-double v14, v6, v14

    invoke-static {v12, v13, v14, v15}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v12

    mul-double/2addr v10, v12

    invoke-static {v10, v11, v4, v5}, Ljava/lang/Math;->max(DD)D
    :try_end_250
    .catch Ljava/lang/Throwable; {:try_start_221 .. :try_end_250} :catch_23c

    move-result-wide v4

    goto/16 :goto_f9

    .line 196
    :cond_253
    const/4 v2, 0x0

    move v5, v2

    goto/16 :goto_16d

    .line 197
    :cond_257
    :try_start_257
    const-string v2, "_stage5_wingR"
    :try_end_259
    .catchall {:try_start_257 .. :try_end_259} :catchall_264

    goto/16 :goto_180

    .line 201
    :cond_25b
    neg-float v5, v13

    goto/16 :goto_1c4

    .line 206
    :cond_25e
    :try_start_25e
    sput v15, Lfr/testudo/spacecorsair/mod/ModWings;->cur:I

    .line 207
    sput v16, Lfr/testudo/spacecorsair/mod/ModWings;->D:F

    goto/16 :goto_18

    .line 206
    :catchall_264
    move-exception v2

    sput v15, Lfr/testudo/spacecorsair/mod/ModWings;->cur:I

    .line 207
    sput v16, Lfr/testudo/spacecorsair/mod/ModWings;->D:F

    .line 208
    throw v2
    :try_end_26a
    .catch Ljava/lang/Throwable; {:try_start_25e .. :try_end_26a} :catch_23c

    .line 174
    :array_26a
    .array-data 8
        0x3f50624dd2f1a9fcL    # 0.001
        0x0
        0x0
        0x0
        0x0
        -0x4010000000000000L    # -1.0
    .end array-data
.end method

.method private static update(Lfr/testudo/spacecorsair/business/player/PlayerShip;J)V
    .registers 16

    .prologue
    const/high16 v5, 0x3f000000    # 0.5f

    const v9, 0x3ca3d70a    # 0.02f

    const-wide/16 v10, 0x0

    const/high16 v8, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    .line 67
    sget-wide v2, Lfr/testudo/spacecorsair/mod/ModWings;->lastT:J

    cmp-long v0, v2, v10

    if-nez v0, :cond_a3

    const v0, 0x3c83126f    # 0.016f

    .line 68
    :goto_13
    sput-wide p1, Lfr/testudo/spacecorsair/mod/ModWings;->lastT:J

    .line 69
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

    .line 70
    iget-boolean v3, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->isBoosterEnabled:Z

    if-nez v3, :cond_59

    .line 71
    sget v3, Lfr/testudo/spacecorsair/mod/ModWings;->vmax:F

    mul-float/2addr v3, v5

    cmpl-float v3, v2, v3

    if-lez v3, :cond_42

    sget v3, Lfr/testudo/spacecorsair/mod/ModWings;->vmax:F

    mul-float v4, v9, v0

    sub-float v4, v8, v4

    mul-float/2addr v3, v4

    sput v3, Lfr/testudo/spacecorsair/mod/ModWings;->vmax:F

    .line 72
    :cond_42
    sget v3, Lfr/testudo/spacecorsair/mod/ModWings;->vmax:F

    invoke-static {v3, v2}, Ljava/lang/Math;->max(FF)F

    move-result v3

    sget v4, Lfr/testudo/spacecorsair/mod/ModWings;->vbest:F

    mul-float/2addr v4, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->max(FF)F

    move-result v3

    sput v3, Lfr/testudo/spacecorsair/mod/ModWings;->vmax:F

    .line 73
    sget v3, Lfr/testudo/spacecorsair/mod/ModWings;->vbest:F

    invoke-static {v3, v2}, Ljava/lang/Math;->max(FF)F

    move-result v3

    sput v3, Lfr/testudo/spacecorsair/mod/ModWings;->vbest:F

    .line 75
    :cond_59
    sget v3, Lfr/testudo/spacecorsair/mod/ModWings;->vmax:F

    const v4, 0x3a83126f    # 0.001f

    invoke-static {v3, v4}, Ljava/lang/Math;->max(FF)F

    move-result v3

    div-float/2addr v2, v3

    invoke-static {v8, v2}, Ljava/lang/Math;->min(FF)F

    move-result v4

    .line 76
    sget-wide v2, Lfr/testudo/spacecorsair/mod/ModWings;->histT:J

    sub-long v2, p1, v2

    const-wide/16 v6, 0x64

    cmp-long v2, v2, v6

    if-ltz v2, :cond_83

    .line 77
    sput-wide p1, Lfr/testudo/spacecorsair/mod/ModWings;->histT:J

    .line 78
    sget v2, Lfr/testudo/spacecorsair/mod/ModWings;->histPos:I

    add-int/lit8 v2, v2, 0x1

    sget-object v3, Lfr/testudo/spacecorsair/mod/ModWings;->hist:[F

    array-length v3, v3

    rem-int/2addr v2, v3

    sput v2, Lfr/testudo/spacecorsair/mod/ModWings;->histPos:I

    .line 79
    sget-object v2, Lfr/testudo/spacecorsair/mod/ModWings;->hist:[F

    sget v3, Lfr/testudo/spacecorsair/mod/ModWings;->histPos:I

    aput v1, v2, v3

    .line 81
    :cond_83
    sget-object v2, Lfr/testudo/spacecorsair/mod/ModWings;->hist:[F

    sget v3, Lfr/testudo/spacecorsair/mod/ModWings;->histPos:I

    sget-object v5, Lfr/testudo/spacecorsair/mod/ModWings;->hist:[F

    sget v6, Lfr/testudo/spacecorsair/mod/ModWings;->histPos:I

    aget v5, v5, v6

    invoke-static {v5, v4}, Ljava/lang/Math;->max(FF)F

    move-result v5

    aput v5, v2, v3

    .line 83
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

    .line 67
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

    .line 84
    :cond_b8
    sput v3, Lfr/testudo/spacecorsair/mod/ModWings;->held:F

    .line 85
    cmpg-float v2, v4, v9

    if-gez v2, :cond_12b

    .line 86
    sget-wide v2, Lfr/testudo/spacecorsair/mod/ModWings;->stoppedSince:J

    cmp-long v2, v2, v10

    if-gez v2, :cond_c6

    sput-wide p1, Lfr/testudo/spacecorsair/mod/ModWings;->stoppedSince:J

    .line 90
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

    .line 91
    const/high16 v1, 0x41400000    # 12.0f

    mul-float/2addr v0, v1

    .line 92
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

    .line 93
    sget v2, Lfr/testudo/spacecorsair/mod/ModWings;->vel:F

    sget v3, Lfr/testudo/spacecorsair/mod/ModWings;->ang:F

    sub-float/2addr v1, v3

    const v3, 0x3e3851ec    # 0.18f

    mul-float/2addr v1, v3

    mul-float/2addr v1, v0

    mul-float/2addr v1, v0

    add-float/2addr v1, v2

    sput v1, Lfr/testudo/spacecorsair/mod/ModWings;->vel:F

    .line 94
    sget v1, Lfr/testudo/spacecorsair/mod/ModWings;->vel:F

    const-wide v2, 0x3fe70a3d70a3d70aL    # 0.72

    float-to-double v4, v0

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    double-to-float v0, v2

    mul-float/2addr v0, v1

    sput v0, Lfr/testudo/spacecorsair/mod/ModWings;->vel:F

    .line 95
    sget v0, Lfr/testudo/spacecorsair/mod/ModWings;->ang:F

    sget v1, Lfr/testudo/spacecorsair/mod/ModWings;->vel:F

    add-float/2addr v0, v1

    sput v0, Lfr/testudo/spacecorsair/mod/ModWings;->ang:F

    .line 96
    const/high16 v0, -0x40800000    # -1.0f

    const/high16 v1, 0x41600000    # 14.0f

    sget v2, Lfr/testudo/spacecorsair/mod/ModWings;->ang:F

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    sput v0, Lfr/testudo/spacecorsair/mod/ModWings;->ang:F

    .line 97
    return-void

    .line 88
    :cond_12b
    const-wide/16 v2, -0x1

    sput-wide v2, Lfr/testudo/spacecorsair/mod/ModWings;->stoppedSince:J

    goto :goto_c6

    .line 90
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
    .line 43
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

    .line 103
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

    .line 104
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

    .line 105
    iget v2, p2, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    add-float/2addr v0, v2

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModWings;->lx(F)F

    move-result v0

    iget v2, p2, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    add-float/2addr v1, v2

    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModWings;->lx(F)F

    move-result v1

    invoke-virtual {p2, v0, v1}, Lfr/testudo/spacecorsair/engine/Vector2;->set(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 106
    return-object p2

    .line 103
    :cond_39
    const v0, 0x447fc000    # 1023.0f

    sget-object v1, Lfr/testudo/spacecorsair/mod/ModWings;->PIVOT:[[F

    sget v2, Lfr/testudo/spacecorsair/mod/ModWings;->cur:I

    aget-object v1, v1, v2

    aget v1, v1, v4

    sub-float/2addr v0, v1

    goto :goto_d

    .line 104
    :cond_46
    neg-float v2, p1

    float-to-double v2, v2

    goto :goto_20
.end method
