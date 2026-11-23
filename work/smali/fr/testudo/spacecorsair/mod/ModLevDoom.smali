.class public final Lfr/testudo/spacecorsair/mod/ModLevDoom;
.super Ljava/lang/Object;
.source "ModLevDoom.java"


# static fields
.field private static final AMBER:[F

.field static final CHARGE_MS:I = 0x1518

.field private static D:F = 0.0f

.field static final DAMAGE_DELAY_MS:I = 0x96

.field static final FIRE_MS:I = 0x11f8

.field private static final HOT:[F

.field private static final ICY:[F

.field static final OVER_MS:I = 0x898

.field private static final a:Lfr/testudo/spacecorsair/engine/Vector2;

.field private static final b:Lfr/testudo/spacecorsair/engine/Vector2;

.field private static final c:Lfr/testudo/spacecorsair/engine/Vector2;

.field static coolFrac:F

.field static gauge:Z

.field private static on:Z

.field private static s5:Z

.field private static seqMs:J


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/4 v1, 0x3

    .line 31
    const/high16 v0, 0x3f800000    # 1.0f

    sput v0, Lfr/testudo/spacecorsair/mod/ModLevDoom;->coolFrac:F

    .line 33
    new-instance v0, Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-direct {v0}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>()V

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModLevDoom;->a:Lfr/testudo/spacecorsair/engine/Vector2;

    new-instance v0, Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-direct {v0}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>()V

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModLevDoom;->b:Lfr/testudo/spacecorsair/engine/Vector2;

    new-instance v0, Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-direct {v0}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>()V

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModLevDoom;->c:Lfr/testudo/spacecorsair/engine/Vector2;

    .line 185
    new-array v0, v1, [F

    fill-array-data v0, :array_30

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModLevDoom;->AMBER:[F

    new-array v0, v1, [F

    fill-array-data v0, :array_3a

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModLevDoom;->ICY:[F

    new-array v0, v1, [F

    fill-array-data v0, :array_44

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModLevDoom;->HOT:[F

    return-void

    :array_30
    .array-data 4
        0x3f800000    # 1.0f
        0x3f1eb852    # 0.62f
        0x3e19999a    # 0.15f
    .end array-data

    :array_3a
    .array-data 4
        0x3f19999a    # 0.6f
        0x3f6147ae    # 0.88f
        0x3f800000    # 1.0f
    .end array-data

    :array_44
    .array-data 4
        0x3f800000    # 1.0f
        0x3ecccccd    # 0.4f
        0x3df5c28f    # 0.12f
    .end array-data
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static abort()V
    .registers 1

    .prologue
    .line 71
    const/4 v0, 0x0

    sput-boolean v0, Lfr/testudo/spacecorsair/mod/ModLevDoom;->on:Z

    .line 72
    return-void
.end method

.method static advance(J)V
    .registers 4

    .prologue
    .line 66
    sget-boolean v0, Lfr/testudo/spacecorsair/mod/ModLevDoom;->on:Z

    if-eqz v0, :cond_9

    sget-wide v0, Lfr/testudo/spacecorsair/mod/ModLevDoom;->seqMs:J

    add-long/2addr v0, p0

    sput-wide v0, Lfr/testudo/spacecorsair/mod/ModLevDoom;->seqMs:J

    .line 67
    :cond_9
    return-void
.end method

.method private static arc(FFFF[FF)V
    .registers 19

    .prologue
    .line 263
    const/high16 v0, 0x40c00000    # 6.0f

    sub-float v1, p2, p0

    float-to-double v2, v1

    sub-float v1, p3, p1

    float-to-double v4, v1

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v2

    double-to-float v1, v2

    const v2, 0x3df5c28f    # 0.12f

    mul-float/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v12

    .line 264
    const/4 v0, 0x1

    move v11, v0

    move v2, p1

    move v1, p0

    :goto_19
    const/4 v0, 0x5

    if-gt v11, v0, :cond_73

    .line 265
    int-to-float v0, v11

    const/high16 v3, 0x40a00000    # 5.0f

    div-float v4, v0, v3

    .line 266
    sub-float v0, p2, p0

    mul-float/2addr v0, v4

    add-float v3, p0, v0

    const/4 v0, 0x5

    if-ge v11, v0, :cond_6f

    neg-float v0, v12

    invoke-static {v0, v12}, Lfr/testudo/spacecorsair/mod/ModFx;->rnd(FF)F

    move-result v0

    :goto_2e
    add-float/2addr v3, v0

    sub-float v0, p3, p1

    mul-float/2addr v0, v4

    add-float v4, p1, v0

    const/4 v0, 0x5

    if-ge v11, v0, :cond_71

    neg-float v0, v12

    invoke-static {v0, v12}, Lfr/testudo/spacecorsair/mod/ModFx;->rnd(FF)F

    move-result v0

    :goto_3c
    add-float/2addr v4, v0

    .line 267
    const-string v0, "fx_glow"

    const/4 v5, 0x0

    aget v5, p4, v5

    const v6, 0x3f19999a    # 0.6f

    mul-float/2addr v5, v6

    const v6, 0x3ecccccd    # 0.4f

    add-float/2addr v6, v5

    const/4 v5, 0x1

    aget v5, p4, v5

    const v7, 0x3f19999a    # 0.6f

    mul-float/2addr v5, v7

    const v7, 0x3ecccccd    # 0.4f

    add-float/2addr v7, v5

    const/4 v5, 0x2

    aget v5, p4, v5

    const v8, 0x3f19999a    # 0.6f

    mul-float/2addr v5, v8

    const v8, 0x3ecccccd    # 0.4f

    add-float/2addr v8, v5

    const v9, 0x3f666666    # 0.9f

    const/4 v10, 0x1

    move/from16 v5, p5

    invoke-static/range {v0 .. v10}, Lfr/testudo/spacecorsair/mod/ModFx;->strip(Ljava/lang/String;FFFFFFFFFZ)V

    .line 264
    add-int/lit8 v0, v11, 0x1

    move v11, v0

    move v2, v4

    move v1, v3

    goto :goto_19

    .line 266
    :cond_6f
    const/4 v0, 0x0

    goto :goto_2e

    :cond_71
    const/4 v0, 0x0

    goto :goto_3c

    .line 271
    :cond_73
    return-void
.end method

.method static chargeTick(Lfr/testudo/spacecorsair/business/player/PlayerShip;J[F)V
    .registers 21

    .prologue
    .line 103
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLevDoom;->sec()F

    move-result v2

    .line 104
    move-object/from16 v0, p0

    iget-object v3, v0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->shipSpec:Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;

    iget v3, v3, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;->drawableSize:I

    int-to-float v3, v3

    .line 105
    const v4, 0x404ccccd    # 3.2f

    cmpl-float v4, v2, v4

    if-lez v4, :cond_a4

    const/high16 v4, 0x40980000    # 4.75f

    cmpg-float v4, v2, v4

    if-gez v4, :cond_a4

    .line 106
    const v4, 0x404ccccd    # 3.2f

    const v5, 0x409ccccd    # 4.9f

    invoke-static {v2, v4, v5}, Lfr/testudo/spacecorsair/mod/ModLevDoom;->sm(FFF)F

    move-result v2

    .line 107
    move-wide/from16 v0, p1

    long-to-float v4, v0

    const/high16 v5, 0x457a0000    # 4000.0f

    div-float/2addr v4, v5

    const v5, 0x3e99999a    # 0.3f

    add-float/2addr v2, v5

    mul-float/2addr v2, v4

    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModQol;->addShake(F)V

    .line 108
    sget-object v2, Lfr/testudo/spacecorsair/mod/ModLevDoom;->a:Lfr/testudo/spacecorsair/engine/Vector2;

    move-object/from16 v0, p0

    invoke-static {v0, v3, v2}, Lfr/testudo/spacecorsair/mod/ModLevDoom;->core(Lfr/testudo/spacecorsair/business/player/PlayerShip;FLfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 109
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v4

    const-wide v6, 0x3fe999999999999aL    # 0.8

    cmpg-double v2, v4, v6

    if-gez v2, :cond_a3

    .line 110
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v4

    const-wide v6, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v4, v6

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    mul-double/2addr v4, v6

    .line 111
    const v2, 0x3eb33333    # 0.35f

    const v6, 0x3f666666    # 0.9f

    invoke-static {v2, v6}, Lfr/testudo/spacecorsair/mod/ModFx;->rnd(FF)F

    move-result v2

    mul-float/2addr v2, v3

    .line 112
    sget-object v3, Lfr/testudo/spacecorsair/mod/ModLevDoom;->a:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v3, v3, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v6

    double-to-float v6, v6

    mul-float/2addr v6, v2

    add-float/2addr v3, v6

    sget-object v6, Lfr/testudo/spacecorsair/mod/ModLevDoom;->a:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v6, v6, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    double-to-float v4, v4

    mul-float/2addr v2, v4

    add-float v4, v6, v2

    .line 113
    const-string v2, "fx_spark"

    sget-object v5, Lfr/testudo/spacecorsair/mod/ModLevDoom;->a:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v5, v5, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    sub-float/2addr v5, v3

    const v6, 0x4019999a    # 2.4f

    mul-float/2addr v5, v6

    sget-object v6, Lfr/testudo/spacecorsair/mod/ModLevDoom;->a:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v6, v6, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    sub-float/2addr v6, v4

    const v7, 0x4019999a    # 2.4f

    mul-float/2addr v6, v7

    const/high16 v7, 0x43d20000    # 420.0f

    const/high16 v8, 0x41800000    # 16.0f

    const/high16 v9, 0x40c00000    # 6.0f

    const/4 v10, 0x0

    aget v10, p3, v10

    const/4 v11, 0x1

    aget v11, p3, v11

    const/4 v12, 0x2

    aget v12, p3, v12

    const/high16 v13, 0x3f800000    # 1.0f

    const/4 v14, 0x1

    const/4 v15, 0x1

    invoke-static/range {v2 .. v15}, Lfr/testudo/spacecorsair/mod/ModFx;->part(Ljava/lang/String;FFFFFFFFFFFZZ)V

    .line 114
    const v2, 0x3d4ccccd    # 0.05f

    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModFx;->lastStretch(F)V

    .line 119
    :cond_a3
    :goto_a3
    return-void

    .line 116
    :cond_a4
    const/high16 v3, 0x3f800000    # 1.0f

    cmpg-float v2, v2, v3

    if-gez v2, :cond_a3

    .line 117
    move-wide/from16 v0, p1

    long-to-float v2, v0

    const v3, 0x460ca000    # 9000.0f

    div-float/2addr v2, v3

    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModQol;->addShake(F)V

    goto :goto_a3
.end method

.method static core(Lfr/testudo/spacecorsair/business/player/PlayerShip;FLfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;
    .registers 7

    .prologue
    .line 145
    sget-boolean v0, Lfr/testudo/spacecorsair/mod/ModLevDoom;->s5:Z

    if-eqz v0, :cond_12

    const v0, -0x41224000

    mul-float/2addr v0, p1

    .line 146
    :goto_8
    iget-object v1, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v2, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->spin:F

    const/4 v3, 0x0

    invoke-static {v1, v2, v3, v0, p2}, Lfr/testudo/spacecorsair/mod/ModFx;->local(Lfr/testudo/spacecorsair/engine/Vector2;FFFLfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    move-result-object v0

    return-object v0

    .line 145
    :cond_12
    neg-float v0, p1

    const v1, 0x3ef5c28f    # 0.48f

    mul-float/2addr v0, v1

    goto :goto_8
.end method

.method public static drawOver(Lfr/testudo/spacecorsair/business/player/PlayerShip;)V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 164
    sget-boolean v0, Lfr/testudo/spacecorsair/mod/ModLevDoom;->on:Z

    if-nez v0, :cond_9

    sget-boolean v0, Lfr/testudo/spacecorsair/mod/ModLevDoom;->gauge:Z

    if-eqz v0, :cond_f

    :cond_9
    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModTitan;->isLeviathanSeq(Lfr/testudo/spacecorsair/business/player/PlayerShip;)Z

    move-result v0

    if-nez v0, :cond_10

    .line 183
    :cond_f
    :goto_f
    return-void

    .line 165
    :cond_10
    invoke-virtual {p0}, Lfr/testudo/spacecorsair/business/player/PlayerShip;->getDrawableObject()Lfr/testudo/spacecorsair/display/Drawable;

    move-result-object v1

    .line 166
    if-eqz v1, :cond_f

    iget-object v0, v1, Lfr/testudo/spacecorsair/display/Drawable;->dimensions:Lfr/testudo/spacecorsair/engine/Vector2;

    if-eqz v0, :cond_f

    .line 167
    iget-object v0, v1, Lfr/testudo/spacecorsair/display/Drawable;->dimensions:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v0, v0, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    sput v0, Lfr/testudo/spacecorsair/mod/ModLevDoom;->D:F

    .line 168
    sget-boolean v0, Lfr/testudo/spacecorsair/mod/ModLevDoom;->on:Z

    if-eqz v0, :cond_5a

    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLevDoom;->sec()F

    move-result v0

    .line 169
    :goto_28
    sget-boolean v2, Lfr/testudo/spacecorsair/mod/ModLevDoom;->on:Z

    if-eqz v2, :cond_34

    const/high16 v2, 0x418c0000    # 17.5f

    cmpl-float v2, v0, v2

    if-lez v2, :cond_34

    sput-boolean v3, Lfr/testudo/spacecorsair/mod/ModLevDoom;->on:Z

    .line 170
    :cond_34
    const/4 v2, 0x1

    sput-boolean v2, Lfr/testudo/spacecorsair/mod/ModFx;->relative:Z

    .line 172
    :try_start_37
    sget-boolean v2, Lfr/testudo/spacecorsair/mod/ModLevDoom;->s5:Z

    if-eqz v2, :cond_50

    .line 173
    invoke-static {p0, v0}, Lfr/testudo/spacecorsair/mod/ModLevDoom;->spine(Lfr/testudo/spacecorsair/business/player/PlayerShip;F)V

    .line 174
    invoke-static {p0, v0}, Lfr/testudo/spacecorsair/mod/ModLevDoom;->ring(Lfr/testudo/spacecorsair/business/player/PlayerShip;F)V

    .line 175
    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v2, v0, v2

    if-lez v2, :cond_50

    const/high16 v2, 0x40a00000    # 5.0f

    cmpg-float v2, v0, v2

    if-gez v2, :cond_50

    invoke-static {p0, v0}, Lfr/testudo/spacecorsair/mod/ModLevDoom;->trims(Lfr/testudo/spacecorsair/business/player/PlayerShip;F)V

    .line 177
    :cond_50
    sget-boolean v2, Lfr/testudo/spacecorsair/mod/ModLevDoom;->on:Z

    if-eqz v2, :cond_57

    invoke-static {p0, v1, v0}, Lfr/testudo/spacecorsair/mod/ModLevDoom;->sequence(Lfr/testudo/spacecorsair/business/player/PlayerShip;Lfr/testudo/spacecorsair/display/Drawable;F)V
    :try_end_57
    .catch Ljava/lang/Throwable; {:try_start_37 .. :try_end_57} :catch_5d
    .catchall {:try_start_37 .. :try_end_57} :catchall_61

    .line 181
    :cond_57
    sput-boolean v3, Lfr/testudo/spacecorsair/mod/ModFx;->relative:Z

    goto :goto_f

    .line 168
    :cond_5a
    const/high16 v0, 0x42c60000    # 99.0f

    goto :goto_28

    .line 178
    :catch_5d
    move-exception v0

    .line 181
    sput-boolean v3, Lfr/testudo/spacecorsair/mod/ModFx;->relative:Z

    goto :goto_f

    :catchall_61
    move-exception v0

    sput-boolean v3, Lfr/testudo/spacecorsair/mod/ModFx;->relative:Z

    .line 182
    throw v0
.end method

.method public static drawUnder(Lfr/testudo/spacecorsair/business/player/PlayerShip;)V
    .registers 13

    .prologue
    const/4 v10, 0x0

    const v11, 0x3f19999a    # 0.6f

    const/4 v5, 0x0

    .line 152
    sget-boolean v0, Lfr/testudo/spacecorsair/mod/ModLevDoom;->on:Z

    if-eqz v0, :cond_f

    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModTitan;->isLeviathanSeq(Lfr/testudo/spacecorsair/business/player/PlayerShip;)Z

    move-result v0

    if-nez v0, :cond_10

    .line 160
    :cond_f
    :goto_f
    return-void

    .line 153
    :cond_10
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLevDoom;->sec()F

    move-result v0

    .line 154
    const v1, 0x3f0ccccd    # 0.55f

    const v2, 0x404ccccd    # 3.2f

    const v3, 0x409ccccd    # 4.9f

    invoke-static {v0, v2, v3}, Lfr/testudo/spacecorsair/mod/ModLevDoom;->sm(FFF)F

    move-result v2

    mul-float/2addr v1, v2

    const/high16 v2, 0x3f800000    # 1.0f

    const v3, 0x40b33333    # 5.6f

    const/high16 v4, 0x40e00000    # 7.0f

    invoke-static {v0, v3, v4}, Lfr/testudo/spacecorsair/mod/ModLevDoom;->sm(FFF)F

    move-result v0

    sub-float v0, v2, v0

    mul-float v9, v1, v0

    .line 155
    const v0, 0x3c23d70a    # 0.01f

    cmpl-float v0, v9, v0

    if-lez v0, :cond_f

    .line 156
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->shipSpec:Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;

    iget v0, v0, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;->drawableSize:I

    mul-int/lit8 v0, v0, 0x7

    int-to-float v3, v0

    .line 157
    const-string v0, "fx_glow"

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v1, v1, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    iget-object v2, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v2, v2, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    move v4, v3

    move v6, v5

    move v7, v5

    move v8, v5

    invoke-static/range {v0 .. v10}, Lfr/testudo/spacecorsair/mod/ModFx;->spr(Ljava/lang/String;FFFFFFFFFZ)V

    .line 158
    const-string v0, "fx_glow"

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v1, v1, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    iget-object v2, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v2, v2, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    mul-float v6, v3, v11

    mul-float v4, v3, v11

    move v3, v6

    move v6, v5

    move v7, v5

    move v8, v5

    invoke-static/range {v0 .. v10}, Lfr/testudo/spacecorsair/mod/ModFx;->spr(Ljava/lang/String;FFFFFFFFFZ)V

    goto :goto_f
.end method

.method static endRecoil(Lfr/testudo/spacecorsair/business/player/PlayerShip;F)V
    .registers 7

    .prologue
    const/high16 v4, 0x3f800000    # 1.0f

    .line 123
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModLevDoom;->b:Lfr/testudo/spacecorsair/engine/Vector2;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v4}, Lfr/testudo/spacecorsair/engine/Vector2;->set(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    move-result-object v0

    float-to-double v2, p1

    invoke-static {v2, v3}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lfr/testudo/spacecorsair/engine/Vector2;->applyRotatation(D)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 124
    const/high16 v0, 0x3fc00000    # 1.5f

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->shipSpec:Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;

    iget v1, v1, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;->drawableSize:I

    int-to-float v1, v1

    const/high16 v2, 0x43960000    # 300.0f

    div-float/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 125
    iget-object v1, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->speed:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v2, v1, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    sget-object v3, Lfr/testudo/spacecorsair/mod/ModLevDoom;->b:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v3, v3, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    mul-float/2addr v3, v0

    add-float/2addr v2, v3

    iput v2, v1, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    .line 126
    iget-object v1, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->speed:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v2, v1, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    sget-object v3, Lfr/testudo/spacecorsair/mod/ModLevDoom;->b:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v3, v3, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    mul-float/2addr v0, v3

    add-float/2addr v0, v2

    iput v0, v1, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    .line 127
    const v0, 0x3f19999a    # 0.6f

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModQol;->addShake(F)V

    .line 128
    const-string v0, "lev_doom_over"

    const-wide/16 v2, 0x1f4

    invoke-static {v0, v4, v4, v2, v3}, Lfr/testudo/spacecorsair/mod/ModSound;->play(Ljava/lang/String;FFJ)I

    .line 129
    return-void
.end method

.method public static engineMul()F
    .registers 4

    .prologue
    const/high16 v0, 0x3f800000    # 1.0f

    .line 95
    sget-boolean v1, Lfr/testudo/spacecorsair/mod/ModLevDoom;->on:Z

    if-nez v1, :cond_7

    .line 97
    :goto_6
    return v0

    .line 96
    :cond_7
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLevDoom;->sec()F

    move-result v1

    .line 97
    const/4 v2, 0x0

    invoke-static {v1, v2, v0}, Lfr/testudo/spacecorsair/mod/ModLevDoom;->sm(FFF)F

    move-result v2

    sub-float/2addr v0, v2

    const v2, 0x417b3333    # 15.7f

    const v3, 0x4185999a    # 16.7f

    invoke-static {v1, v2, v3}, Lfr/testudo/spacecorsair/mod/ModLevDoom;->sm(FFF)F

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    goto :goto_6
.end method

.method static is(Lfr/testudo/spacecorsair/mod/ModCaps$Profile;)Z
    .registers 3

    .prologue
    .line 37
    if-eqz p0, :cond_14

    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModCaps$Profile;->hull:Lfr/testudo/spacecorsair/mod/ModShips$Hull;

    if-eqz v0, :cond_14

    const-string v0, "leviathan"

    iget-object v1, p0, Lfr/testudo/spacecorsair/mod/ModCaps$Profile;->hull:Lfr/testudo/spacecorsair/mod/ModShips$Hull;

    iget-object v1, v1, Lfr/testudo/spacecorsair/mod/ModShips$Hull;->art:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    const/4 v0, 0x1

    :goto_13
    return v0

    :cond_14
    const/4 v0, 0x0

    goto :goto_13
.end method

.method public static lightMul()F
    .registers 6

    .prologue
    const v3, 0x4129999a    # 10.6f

    const/high16 v4, 0x3f000000    # 0.5f

    const/high16 v1, 0x3f800000    # 1.0f

    .line 81
    sget-boolean v0, Lfr/testudo/spacecorsair/mod/ModLevDoom;->on:Z

    if-nez v0, :cond_d

    move v0, v1

    .line 90
    :cond_c
    :goto_c
    return v0

    .line 82
    :cond_d
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLevDoom;->sec()F

    move-result v2

    .line 83
    cmpg-float v0, v2, v3

    if-gez v0, :cond_35

    .line 84
    const v0, 0x400ccccd    # 2.2f

    invoke-static {v2, v1, v0}, Lfr/testudo/spacecorsair/mod/ModLevDoom;->sm(FFF)F

    move-result v0

    sub-float v0, v1, v0

    .line 85
    const/high16 v1, 0x41200000    # 10.0f

    cmpl-float v1, v2, v1

    if-lez v1, :cond_c

    const v1, 0x3df5c28f    # 0.12f

    const/high16 v3, 0x41b80000    # 23.0f

    mul-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    double-to-float v2, v2

    mul-float/2addr v2, v4

    add-float/2addr v2, v4

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    goto :goto_c

    .line 88
    :cond_35
    const v0, 0x4179999a    # 15.6f

    invoke-static {v2, v3, v0}, Lfr/testudo/spacecorsair/mod/ModLevDoom;->sm(FFF)F

    move-result v0

    .line 89
    cmpg-float v1, v0, v1

    if-gez v1, :cond_c

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v2

    const-wide v4, 0x3fc70a3d70a3d70aL    # 0.18

    cmpg-double v1, v2, v4

    if-gez v1, :cond_c

    const v1, 0x3eb33333    # 0.35f

    mul-float/2addr v0, v1

    goto :goto_c
.end method

.method private static lx(F)F
    .registers 2

    .prologue
    .line 133
    sget v0, Lfr/testudo/spacecorsair/mod/ModLevDoom;->D:F

    invoke-static {p0, v0}, Lfr/testudo/spacecorsair/mod/ModSpriteSpace;->local(FF)F

    move-result v0

    return v0
.end method

.method private static ring(Lfr/testudo/spacecorsair/business/player/PlayerShip;F)V
    .registers 26

    .prologue
    .line 223
    const-string v2, "leviathan_stage5_ringseg"

    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModArt;->ready(Ljava/lang/String;)Lfr/testudo/spacecorsair/display/Texture;

    move-result-object v2

    .line 224
    if-nez v2, :cond_9

    .line 260
    :cond_8
    :goto_8
    return-void

    .line 225
    :cond_9
    const v3, 0x404ccccd    # 3.2f

    const v4, 0x409ccccd    # 4.9f

    move/from16 v0, p1

    invoke-static {v0, v3, v4}, Lfr/testudo/spacecorsair/mod/ModLevDoom;->sm(FFF)F

    move-result v3

    const/high16 v4, 0x3f800000    # 1.0f

    const v5, 0x40accccd    # 5.4f

    const/high16 v6, 0x40c00000    # 6.0f

    move/from16 v0, p1

    invoke-static {v0, v5, v6}, Lfr/testudo/spacecorsair/mod/ModLevDoom;->sm(FFF)F

    move-result v5

    sub-float/2addr v4, v5

    mul-float v18, v3, v4

    .line 226
    const/4 v3, 0x0

    move/from16 v17, v3

    :goto_28
    const/16 v3, 0x10

    move/from16 v0, v17

    if-ge v0, v3, :cond_186

    .line 227
    sget-object v3, Lfr/testudo/spacecorsair/mod/ModLevData;->SEG_BOX:[F

    mul-int/lit8 v4, v17, 0x4

    aget v3, v3, v4

    sget-object v4, Lfr/testudo/spacecorsair/mod/ModLevData;->SEG_BOX:[F

    mul-int/lit8 v5, v17, 0x4

    add-int/lit8 v5, v5, 0x1

    aget v4, v4, v5

    sget-object v5, Lfr/testudo/spacecorsair/mod/ModLevData;->SEG_BOX:[F

    mul-int/lit8 v6, v17, 0x4

    add-int/lit8 v6, v6, 0x2

    aget v5, v5, v6

    sget-object v6, Lfr/testudo/spacecorsair/mod/ModLevData;->SEG_BOX:[F

    mul-int/lit8 v7, v17, 0x4

    add-int/lit8 v7, v7, 0x3

    aget v6, v6, v7

    .line 228
    cmpg-float v7, v5, v3

    if-gtz v7, :cond_55

    .line 226
    :cond_50
    :goto_50
    add-int/lit8 v3, v17, 0x1

    move/from16 v17, v3

    goto :goto_28

    .line 229
    :cond_55
    rem-int/lit8 v7, v17, 0x4

    int-to-float v7, v7

    const/high16 v8, 0x3e800000    # 0.25f

    mul-float v13, v7, v8

    div-int/lit8 v7, v17, 0x4

    int-to-float v7, v7

    const/high16 v8, 0x3e800000    # 0.25f

    mul-float v14, v7, v8

    .line 230
    sget-object v7, Lfr/testudo/spacecorsair/mod/ModLevData;->SEG_UV:[F

    mul-int/lit8 v8, v17, 0x2

    aget v7, v7, v8

    add-float v15, v13, v7

    sget-object v7, Lfr/testudo/spacecorsair/mod/ModLevData;->SEG_UV:[F

    mul-int/lit8 v8, v17, 0x2

    add-int/lit8 v8, v8, 0x1

    aget v7, v7, v8

    add-float v16, v14, v7

    .line 231
    add-float v7, v3, v5

    const/high16 v8, 0x40000000    # 2.0f

    div-float/2addr v7, v8

    const/high16 v8, 0x3f000000    # 0.5f

    sub-float/2addr v7, v8

    add-float v8, v4, v6

    const/high16 v9, 0x40000000    # 2.0f

    div-float/2addr v8, v9

    const/high16 v9, 0x3f000000    # 0.5f

    sub-float/2addr v8, v9

    sget-object v9, Lfr/testudo/spacecorsair/mod/ModLevDoom;->b:Lfr/testudo/spacecorsair/engine/Vector2;

    move-object/from16 v0, p0

    invoke-static {v0, v7, v8, v9}, Lfr/testudo/spacecorsair/mod/ModLevDoom;->scr(Lfr/testudo/spacecorsair/business/player/PlayerShip;FFLfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 232
    sget v7, Lfr/testudo/spacecorsair/mod/ModLevDoom;->D:F

    sub-float v3, v5, v3

    mul-float/2addr v3, v7

    const/high16 v5, 0x44800000    # 1024.0f

    div-float v5, v3, v5

    sget v3, Lfr/testudo/spacecorsair/mod/ModLevDoom;->D:F

    sub-float v4, v6, v4

    mul-float/2addr v3, v4

    const/high16 v4, 0x44800000    # 1024.0f

    div-float v6, v3, v4

    .line 234
    const/4 v12, 0x1

    .line 235
    const/high16 v3, 0x3f800000    # 1.0f

    cmpg-float v3, p1, v3

    if-gez v3, :cond_e8

    .line 236
    const/high16 v3, 0x41800000    # 16.0f

    mul-float v3, v3, p1

    move/from16 v0, v17

    int-to-float v4, v0

    sub-float/2addr v3, v4

    .line 237
    const/4 v4, 0x0

    cmpg-float v4, v3, v4

    if-ltz v4, :cond_50

    .line 238
    neg-float v3, v3

    const v4, 0x3f19999a    # 0.6f

    mul-float/2addr v3, v4

    float-to-double v8, v3

    invoke-static {v8, v9}, Ljava/lang/Math;->exp(D)D

    move-result-wide v8

    double-to-float v3, v8

    .line 239
    const/high16 v4, 0x3f400000    # 0.75f

    const/high16 v7, 0x3e800000    # 0.25f

    mul-float/2addr v7, v3

    add-float v8, v4, v7

    const v4, 0x3f59999a    # 0.85f

    const v7, 0x3e19999a    # 0.15f

    mul-float/2addr v7, v3

    add-float v9, v4, v7

    const/high16 v10, 0x3f800000    # 1.0f

    const v4, 0x3ee66666    # 0.45f

    const/high16 v7, 0x3f000000    # 0.5f

    mul-float/2addr v3, v7

    add-float v11, v4, v3

    .line 250
    :goto_d7
    sget-object v3, Lfr/testudo/spacecorsair/mod/ModLevDoom;->b:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v3, v3, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    sget-object v4, Lfr/testudo/spacecorsair/mod/ModLevDoom;->b:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v4, v4, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    move-object/from16 v0, p0

    iget v7, v0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->spin:F

    invoke-static/range {v2 .. v16}, Lfr/testudo/spacecorsair/mod/ModFx;->sprTex(Lfr/testudo/spacecorsair/display/Texture;FFFFFFFFFZFFFF)V

    goto/16 :goto_50

    .line 240
    :cond_e8
    const/high16 v3, 0x41200000    # 10.0f

    cmpg-float v3, p1, v3

    if-gez v3, :cond_132

    .line 241
    const v3, 0x404ccccd    # 3.2f

    cmpg-float v3, p1, v3

    if-gez v3, :cond_12e

    const/high16 v3, 0x3f000000    # 0.5f

    const/high16 v4, 0x3f000000    # 0.5f

    const/high16 v7, 0x3f800000    # 1.0f

    sub-float v7, p1, v7

    const/high16 v8, 0x40c00000    # 6.0f

    mul-float/2addr v7, v8

    move/from16 v0, v17

    int-to-float v8, v0

    const v9, 0x3f4ccccd    # 0.8f

    mul-float/2addr v8, v9

    sub-float/2addr v7, v8

    float-to-double v8, v7

    invoke-static {v8, v9}, Ljava/lang/Math;->sin(D)D

    move-result-wide v8

    double-to-float v7, v8

    mul-float/2addr v4, v7

    add-float/2addr v3, v4

    .line 242
    :goto_110
    sget-object v4, Lfr/testudo/spacecorsair/mod/ModLevDoom;->ICY:[F

    const/4 v7, 0x0

    aget v8, v4, v7

    sget-object v4, Lfr/testudo/spacecorsair/mod/ModLevDoom;->ICY:[F

    const/4 v7, 0x1

    aget v9, v4, v7

    sget-object v4, Lfr/testudo/spacecorsair/mod/ModLevDoom;->ICY:[F

    const/4 v7, 0x2

    aget v10, v4, v7

    const v4, 0x3eb33333    # 0.35f

    const/high16 v7, 0x3e800000    # 0.25f

    mul-float/2addr v3, v7

    add-float/2addr v3, v4

    const v4, 0x3ecccccd    # 0.4f

    mul-float v4, v4, v18

    add-float v11, v3, v4

    .line 243
    goto :goto_d7

    .line 241
    :cond_12e
    const v3, 0x3f19999a    # 0.6f

    goto :goto_110

    .line 243
    :cond_132
    const v3, 0x41433333    # 12.2f

    cmpg-float v3, p1, v3

    if-gez v3, :cond_15a

    .line 244
    sget-object v3, Lfr/testudo/spacecorsair/mod/ModLevDoom;->HOT:[F

    const/4 v4, 0x0

    aget v8, v3, v4

    sget-object v3, Lfr/testudo/spacecorsair/mod/ModLevDoom;->HOT:[F

    const/4 v4, 0x1

    aget v9, v3, v4

    sget-object v3, Lfr/testudo/spacecorsair/mod/ModLevDoom;->HOT:[F

    const/4 v4, 0x2

    aget v10, v3, v4

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v20

    const-wide/high16 v22, 0x3fd0000000000000L    # 0.25

    cmpg-double v3, v20, v22

    if-gez v3, :cond_157

    const v3, 0x3f333333    # 0.7f

    :goto_155
    move v11, v3

    goto :goto_d7

    :cond_157
    const/high16 v3, 0x3e800000    # 0.25f

    goto :goto_155

    .line 246
    :cond_15a
    sget v3, Lfr/testudo/spacecorsair/mod/ModLevDoom;->coolFrac:F

    add-int/lit8 v4, v17, 0x1

    int-to-float v4, v4

    const/high16 v7, 0x41800000    # 16.0f

    div-float/2addr v4, v7

    cmpl-float v3, v3, v4

    if-ltz v3, :cond_175

    const/4 v3, 0x1

    .line 247
    :goto_167
    if-eqz v3, :cond_177

    const/high16 v8, 0x3f800000    # 1.0f

    const v9, 0x3f59999a    # 0.85f

    const/high16 v10, 0x3f000000    # 0.5f

    const v11, 0x3eb33333    # 0.35f

    goto/16 :goto_d7

    .line 246
    :cond_175
    const/4 v3, 0x0

    goto :goto_167

    .line 248
    :cond_177
    const v8, 0x3cf5c28f    # 0.03f

    const v9, 0x3cf5c28f    # 0.03f

    const v10, 0x3d23d70a    # 0.04f

    const v11, 0x3f19999a    # 0.6f

    const/4 v12, 0x0

    goto/16 :goto_d7

    .line 252
    :cond_186
    const/high16 v2, 0x41200000    # 10.0f

    cmpl-float v2, p1, v2

    if-lez v2, :cond_8

    const v2, 0x41433333    # 12.2f

    cmpg-float v2, p1, v2

    if-gez v2, :cond_8

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v2

    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    cmpg-double v2, v2, v4

    if-gez v2, :cond_8

    .line 253
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v2

    const-wide/high16 v4, 0x4030000000000000L    # 16.0

    mul-double/2addr v2, v4

    double-to-int v2, v2

    add-int/lit8 v3, v2, 0x1

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v4

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    mul-double/2addr v4, v6

    double-to-int v4, v4

    add-int/2addr v3, v4

    rem-int/lit8 v3, v3, 0x10

    .line 254
    sget-object v4, Lfr/testudo/spacecorsair/mod/ModLevData;->SEG_BOX:[F

    mul-int/lit8 v5, v2, 0x4

    add-int/lit8 v5, v5, 0x2

    aget v4, v4, v5

    const/4 v5, 0x0

    cmpl-float v4, v4, v5

    if-lez v4, :cond_8

    sget-object v4, Lfr/testudo/spacecorsair/mod/ModLevData;->SEG_BOX:[F

    mul-int/lit8 v5, v3, 0x4

    add-int/lit8 v5, v5, 0x2

    aget v4, v4, v5

    const/4 v5, 0x0

    cmpl-float v4, v4, v5

    if-lez v4, :cond_8

    .line 255
    sget-object v4, Lfr/testudo/spacecorsair/mod/ModLevData;->SEG_BOX:[F

    mul-int/lit8 v5, v2, 0x4

    aget v4, v4, v5

    sget-object v5, Lfr/testudo/spacecorsair/mod/ModLevData;->SEG_BOX:[F

    mul-int/lit8 v6, v2, 0x4

    add-int/lit8 v6, v6, 0x2

    aget v5, v5, v6

    add-float/2addr v4, v5

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    sget-object v5, Lfr/testudo/spacecorsair/mod/ModLevData;->SEG_BOX:[F

    mul-int/lit8 v6, v2, 0x4

    add-int/lit8 v6, v6, 0x1

    aget v5, v5, v6

    sget-object v6, Lfr/testudo/spacecorsair/mod/ModLevData;->SEG_BOX:[F

    mul-int/lit8 v2, v2, 0x4

    add-int/lit8 v2, v2, 0x3

    aget v2, v6, v2

    add-float/2addr v2, v5

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v2, v5

    sget-object v5, Lfr/testudo/spacecorsair/mod/ModLevDoom;->a:Lfr/testudo/spacecorsair/engine/Vector2;

    move-object/from16 v0, p0

    invoke-static {v0, v4, v2, v5}, Lfr/testudo/spacecorsair/mod/ModLevDoom;->scr(Lfr/testudo/spacecorsair/business/player/PlayerShip;FFLfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 256
    sget-object v2, Lfr/testudo/spacecorsair/mod/ModLevData;->SEG_BOX:[F

    mul-int/lit8 v4, v3, 0x4

    aget v2, v2, v4

    sget-object v4, Lfr/testudo/spacecorsair/mod/ModLevData;->SEG_BOX:[F

    mul-int/lit8 v5, v3, 0x4

    add-int/lit8 v5, v5, 0x2

    aget v4, v4, v5

    add-float/2addr v2, v4

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v2, v4

    sget-object v4, Lfr/testudo/spacecorsair/mod/ModLevData;->SEG_BOX:[F

    mul-int/lit8 v5, v3, 0x4

    add-int/lit8 v5, v5, 0x1

    aget v4, v4, v5

    sget-object v5, Lfr/testudo/spacecorsair/mod/ModLevData;->SEG_BOX:[F

    mul-int/lit8 v3, v3, 0x4

    add-int/lit8 v3, v3, 0x3

    aget v3, v5, v3

    add-float/2addr v3, v4

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    sget-object v4, Lfr/testudo/spacecorsair/mod/ModLevDoom;->c:Lfr/testudo/spacecorsair/engine/Vector2;

    move-object/from16 v0, p0

    invoke-static {v0, v2, v3, v4}, Lfr/testudo/spacecorsair/mod/ModLevDoom;->scr(Lfr/testudo/spacecorsair/business/player/PlayerShip;FFLfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 257
    sget-object v2, Lfr/testudo/spacecorsair/mod/ModLevDoom;->a:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v2, v2, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    sget-object v3, Lfr/testudo/spacecorsair/mod/ModLevDoom;->a:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v3, v3, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    sget-object v4, Lfr/testudo/spacecorsair/mod/ModLevDoom;->c:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v4, v4, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    sget-object v5, Lfr/testudo/spacecorsair/mod/ModLevDoom;->c:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v5, v5, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    sget-object v6, Lfr/testudo/spacecorsair/mod/ModLevDoom;->HOT:[F

    sget v7, Lfr/testudo/spacecorsair/mod/ModLevDoom;->D:F

    const v8, 0x3c449ba6    # 0.012f

    mul-float/2addr v7, v8

    invoke-static/range {v2 .. v7}, Lfr/testudo/spacecorsair/mod/ModLevDoom;->arc(FFFF[FF)V

    goto/16 :goto_8
.end method

.method private static scr(Lfr/testudo/spacecorsair/business/player/PlayerShip;FFLfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;
    .registers 8

    .prologue
    .line 137
    sget-object v0, Lfr/testudo/spacecorsair/engine/GameRenderer;->screenCenter:Lfr/testudo/spacecorsair/engine/Vector2;

    .line 138
    invoke-static {p1}, Lfr/testudo/spacecorsair/mod/ModLevDoom;->lx(F)F

    move-result v1

    invoke-static {p2}, Lfr/testudo/spacecorsair/mod/ModLevDoom;->lx(F)F

    move-result v2

    invoke-virtual {p3, v1, v2}, Lfr/testudo/spacecorsair/engine/Vector2;->set(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    move-result-object v1

    iget v2, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->spin:F

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lfr/testudo/spacecorsair/engine/Vector2;->applyRotatation(D)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 139
    iget v1, p3, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    iget v2, v0, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    add-float/2addr v1, v2

    iget v2, p3, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    iget v0, v0, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    add-float/2addr v0, v2

    invoke-virtual {p3, v1, v0}, Lfr/testudo/spacecorsair/engine/Vector2;->set(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 140
    return-object p3
.end method

.method static sec()F
    .registers 2

    .prologue
    .line 61
    sget-wide v0, Lfr/testudo/spacecorsair/mod/ModLevDoom;->seqMs:J

    long-to-float v0, v0

    const/high16 v1, 0x447a0000    # 1000.0f

    div-float/2addr v0, v1

    return v0
.end method

.method private static sequence(Lfr/testudo/spacecorsair/business/player/PlayerShip;Lfr/testudo/spacecorsair/display/Drawable;F)V
    .registers 23

    .prologue
    .line 307
    sget-boolean v4, Lfr/testudo/spacecorsair/mod/ModLevDoom;->s5:Z

    if-eqz v4, :cond_330

    const/high16 v4, 0x44000000    # 512.0f

    :goto_6
    sget-boolean v5, Lfr/testudo/spacecorsair/mod/ModLevDoom;->s5:Z

    if-eqz v5, :cond_334

    const/high16 v5, 0x42880000    # 68.0f

    .line 308
    :goto_c
    sget-object v6, Lfr/testudo/spacecorsair/mod/ModLevDoom;->a:Lfr/testudo/spacecorsair/engine/Vector2;

    move-object/from16 v0, p0

    invoke-static {v0, v4, v5, v6}, Lfr/testudo/spacecorsair/mod/ModLevDoom;->scr(Lfr/testudo/spacecorsair/business/player/PlayerShip;FFLfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 309
    const v4, 0x404ccccd    # 3.2f

    const v5, 0x409ccccd    # 4.9f

    move/from16 v0, p2

    invoke-static {v0, v4, v5}, Lfr/testudo/spacecorsair/mod/ModLevDoom;->sm(FFF)F

    move-result v5

    .line 310
    const v4, 0x409ccccd    # 4.9f

    cmpl-float v4, p2, v4

    if-ltz v4, :cond_339

    const v4, 0x40accccd    # 5.4f

    cmpg-float v4, p2, v4

    if-gez v4, :cond_339

    const v4, 0x409ccccd    # 4.9f

    const/high16 v6, 0x40a00000    # 5.0f

    move/from16 v0, p2

    invoke-static {v0, v4, v6}, Lfr/testudo/spacecorsair/mod/ModLevDoom;->sm(FFF)F

    move-result v4

    .line 311
    :goto_38
    const v6, 0x40accccd    # 5.4f

    const/high16 v7, 0x40b00000    # 5.5f

    move/from16 v0, p2

    invoke-static {v0, v6, v7}, Lfr/testudo/spacecorsair/mod/ModLevDoom;->sm(FFF)F

    move-result v6

    const/high16 v7, 0x3f800000    # 1.0f

    const/high16 v8, 0x41180000    # 9.5f

    const/high16 v9, 0x41200000    # 10.0f

    move/from16 v0, p2

    invoke-static {v0, v8, v9}, Lfr/testudo/spacecorsair/mod/ModLevDoom;->sm(FFF)F

    move-result v8

    sub-float/2addr v7, v8

    mul-float v15, v6, v7

    .line 312
    const/high16 v6, 0x3f800000    # 1.0f

    const/high16 v7, 0x40b00000    # 5.5f

    const/high16 v8, 0x40c00000    # 6.0f

    move/from16 v0, p2

    invoke-static {v0, v7, v8}, Lfr/testudo/spacecorsair/mod/ModLevDoom;->sm(FFF)F

    move-result v7

    sub-float/2addr v6, v7

    mul-float v16, v5, v6

    .line 313
    const v6, 0x3c23d70a    # 0.01f

    cmpl-float v6, v16, v6

    if-lez v6, :cond_116

    .line 314
    const/high16 v6, 0x40800000    # 4.0f

    const/high16 v7, 0x41800000    # 16.0f

    mul-float/2addr v7, v5

    add-float/2addr v6, v7

    const/high16 v7, 0x40c00000    # 6.0f

    const/high16 v8, 0x41a00000    # 20.0f

    mul-float v8, v8, p2

    float-to-double v8, v8

    invoke-static {v8, v9}, Ljava/lang/Math;->sin(D)D

    move-result-wide v8

    double-to-float v8, v8

    mul-float/2addr v7, v8

    mul-float/2addr v5, v7

    const/high16 v7, 0x3f800000    # 1.0f

    sub-float/2addr v7, v4

    mul-float/2addr v5, v7

    add-float/2addr v5, v6

    const/high16 v6, 0x3f800000    # 1.0f

    const v7, 0x3f0ccccd    # 0.55f

    mul-float/2addr v4, v7

    sub-float v4, v6, v4

    mul-float/2addr v4, v5

    const/high16 v5, 0x40000000    # 2.0f

    mul-float/2addr v4, v5

    const/high16 v5, 0x44800000    # 1024.0f

    div-float/2addr v4, v5

    sget v5, Lfr/testudo/spacecorsair/mod/ModLevDoom;->D:F

    mul-float/2addr v4, v5

    const v5, 0x400ccccd    # 2.2f

    mul-float v17, v4, v5

    .line 315
    const-string v4, "fx_core"

    sget-object v5, Lfr/testudo/spacecorsair/mod/ModLevDoom;->a:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v5, v5, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    sget-object v6, Lfr/testudo/spacecorsair/mod/ModLevDoom;->a:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v6, v6, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    const/high16 v7, 0x40000000    # 2.0f

    mul-float v7, v7, v17

    const/high16 v8, 0x40000000    # 2.0f

    mul-float v8, v8, v17

    const/4 v9, 0x0

    sget-object v10, Lfr/testudo/spacecorsair/mod/ModLevDoom;->ICY:[F

    const/4 v11, 0x0

    aget v10, v10, v11

    sget-object v11, Lfr/testudo/spacecorsair/mod/ModLevDoom;->ICY:[F

    const/4 v12, 0x1

    aget v11, v11, v12

    sget-object v12, Lfr/testudo/spacecorsair/mod/ModLevDoom;->ICY:[F

    const/4 v13, 0x2

    aget v12, v12, v13

    const/high16 v13, 0x3f800000    # 1.0f

    move/from16 v0, v16

    invoke-static {v13, v0}, Ljava/lang/Math;->min(FF)F

    move-result v13

    const/4 v14, 0x1

    invoke-static/range {v4 .. v14}, Lfr/testudo/spacecorsair/mod/ModFx;->spr(Ljava/lang/String;FFFFFFFFFZ)V

    .line 316
    const-string v4, "fx_core"

    sget-object v5, Lfr/testudo/spacecorsair/mod/ModLevDoom;->a:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v5, v5, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    sget-object v6, Lfr/testudo/spacecorsair/mod/ModLevDoom;->a:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v6, v6, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    const/4 v9, 0x0

    const/high16 v10, 0x3f800000    # 1.0f

    const/high16 v11, 0x3f800000    # 1.0f

    const/high16 v12, 0x3f800000    # 1.0f

    const/high16 v7, 0x3f800000    # 1.0f

    move/from16 v0, v16

    invoke-static {v7, v0}, Ljava/lang/Math;->min(FF)F

    move-result v13

    const/4 v14, 0x1

    move/from16 v7, v17

    move/from16 v8, v17

    invoke-static/range {v4 .. v14}, Lfr/testudo/spacecorsair/mod/ModFx;->spr(Ljava/lang/String;FFFFFFFFFZ)V

    .line 317
    const-string v4, "fx_streak"

    sget-object v5, Lfr/testudo/spacecorsair/mod/ModLevDoom;->a:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v5, v5, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    sget-object v6, Lfr/testudo/spacecorsair/mod/ModLevDoom;->a:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v6, v6, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    const/high16 v7, 0x41100000    # 9.0f

    mul-float v7, v7, v17

    const v8, 0x3f99999a    # 1.2f

    mul-float v8, v8, v17

    move-object/from16 v0, p0

    iget v9, v0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->spin:F

    sget-object v10, Lfr/testudo/spacecorsair/mod/ModLevDoom;->ICY:[F

    const/4 v11, 0x0

    aget v10, v10, v11

    sget-object v11, Lfr/testudo/spacecorsair/mod/ModLevDoom;->ICY:[F

    const/4 v12, 0x1

    aget v11, v11, v12

    sget-object v12, Lfr/testudo/spacecorsair/mod/ModLevDoom;->ICY:[F

    const/4 v13, 0x2

    aget v12, v12, v13

    const v13, 0x3f19999a    # 0.6f

    mul-float v13, v13, v16

    const/4 v14, 0x1

    invoke-static/range {v4 .. v14}, Lfr/testudo/spacecorsair/mod/ModFx;->spr(Ljava/lang/String;FFFFFFFFFZ)V

    .line 319
    :cond_116
    const v4, 0x409ccccd    # 4.9f

    cmpl-float v4, p2, v4

    if-ltz v4, :cond_168

    const v4, 0x40a4cccd    # 5.15f

    cmpg-float v4, p2, v4

    if-gez v4, :cond_168

    .line 320
    const v4, 0x409ccccd    # 4.9f

    sub-float v4, p2, v4

    const/high16 v5, 0x3e800000    # 0.25f

    div-float v13, v4, v5

    .line 321
    sget v4, Lfr/testudo/spacecorsair/mod/ModLevDoom;->D:F

    const v5, 0x3f0ccccd    # 0.55f

    mul-float/2addr v4, v5

    const/high16 v5, 0x3f800000    # 1.0f

    sub-float/2addr v5, v13

    mul-float v8, v4, v5

    .line 322
    const-string v4, "fx_shock"

    sget-object v5, Lfr/testudo/spacecorsair/mod/ModLevDoom;->a:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v5, v5, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    sget-object v6, Lfr/testudo/spacecorsair/mod/ModLevDoom;->a:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v6, v6, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    const/high16 v7, 0x40000000    # 2.0f

    mul-float/2addr v7, v8

    const/high16 v9, 0x40000000    # 2.0f

    mul-float/2addr v8, v9

    const/4 v9, 0x0

    sget-object v10, Lfr/testudo/spacecorsair/mod/ModLevDoom;->ICY:[F

    const/4 v11, 0x0

    aget v10, v10, v11

    sget-object v11, Lfr/testudo/spacecorsair/mod/ModLevDoom;->ICY:[F

    const/4 v12, 0x1

    aget v11, v11, v12

    sget-object v12, Lfr/testudo/spacecorsair/mod/ModLevDoom;->ICY:[F

    const/4 v14, 0x2

    aget v12, v12, v14

    const v14, 0x3f4ccccd    # 0.8f

    const/high16 v16, 0x3f800000    # 1.0f

    const/high16 v17, 0x3f000000    # 0.5f

    mul-float v13, v13, v17

    sub-float v13, v16, v13

    mul-float/2addr v13, v14

    const/4 v14, 0x1

    invoke-static/range {v4 .. v14}, Lfr/testudo/spacecorsair/mod/ModFx;->spr(Ljava/lang/String;FFFFFFFFFZ)V

    .line 324
    :cond_168
    const v4, 0x40accccd    # 5.4f

    cmpl-float v4, p2, v4

    if-ltz v4, :cond_1e1

    const v4, 0x40bccccd    # 5.9f

    cmpg-float v4, p2, v4

    if-gez v4, :cond_1e1

    .line 325
    const v4, 0x40accccd    # 5.4f

    sub-float v4, p2, v4

    const/high16 v5, 0x3f000000    # 0.5f

    div-float v16, v4, v5

    .line 326
    const/4 v4, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    const v6, 0x40accccd    # 5.4f

    sub-float v6, p2, v6

    const v7, 0x3e3851ec    # 0.18f

    div-float/2addr v6, v7

    sub-float/2addr v5, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->max(FF)F

    move-result v13

    .line 327
    const-string v4, "fx_glow"

    sget-object v5, Lfr/testudo/spacecorsair/mod/ModLevDoom;->a:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v5, v5, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    sget-object v6, Lfr/testudo/spacecorsair/mod/ModLevDoom;->a:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v6, v6, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    sget v7, Lfr/testudo/spacecorsair/mod/ModLevDoom;->D:F

    const/high16 v8, 0x40600000    # 3.5f

    mul-float/2addr v7, v8

    sget v8, Lfr/testudo/spacecorsair/mod/ModLevDoom;->D:F

    const/high16 v9, 0x40600000    # 3.5f

    mul-float/2addr v8, v9

    const/4 v9, 0x0

    const/high16 v10, 0x3f800000    # 1.0f

    const/high16 v11, 0x3f800000    # 1.0f

    const/high16 v12, 0x3f800000    # 1.0f

    const/4 v14, 0x1

    invoke-static/range {v4 .. v14}, Lfr/testudo/spacecorsair/mod/ModFx;->spr(Ljava/lang/String;FFFFFFFFFZ)V

    .line 328
    sget v4, Lfr/testudo/spacecorsair/mod/ModLevDoom;->D:F

    const v5, 0x3e4ccccd    # 0.2f

    const v6, 0x4019999a    # 2.4f

    mul-float v6, v6, v16

    add-float/2addr v5, v6

    mul-float v8, v4, v5

    .line 329
    const-string v4, "fx_shock"

    sget-object v5, Lfr/testudo/spacecorsair/mod/ModLevDoom;->a:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v5, v5, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    sget-object v6, Lfr/testudo/spacecorsair/mod/ModLevDoom;->a:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v6, v6, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    const/high16 v7, 0x40000000    # 2.0f

    mul-float/2addr v7, v8

    const/high16 v9, 0x40000000    # 2.0f

    mul-float/2addr v8, v9

    const/4 v9, 0x0

    const v10, 0x3f59999a    # 0.85f

    const v11, 0x3f733333    # 0.95f

    const/high16 v12, 0x3f800000    # 1.0f

    const v13, 0x3f666666    # 0.9f

    const/high16 v14, 0x3f800000    # 1.0f

    sub-float v14, v14, v16

    mul-float/2addr v13, v14

    const/4 v14, 0x1

    invoke-static/range {v4 .. v14}, Lfr/testudo/spacecorsair/mod/ModFx;->spr(Ljava/lang/String;FFFFFFFFFZ)V

    .line 331
    :cond_1e1
    const v4, 0x3c23d70a    # 0.01f

    cmpl-float v4, v15, v4

    if-lez v4, :cond_20d

    const-string v4, "fx_glow"

    sget-object v5, Lfr/testudo/spacecorsair/mod/ModLevDoom;->a:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v5, v5, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    sget-object v6, Lfr/testudo/spacecorsair/mod/ModLevDoom;->a:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v6, v6, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    sget v7, Lfr/testudo/spacecorsair/mod/ModLevDoom;->D:F

    const v8, 0x3eb33333    # 0.35f

    mul-float/2addr v7, v8

    sget v8, Lfr/testudo/spacecorsair/mod/ModLevDoom;->D:F

    const v9, 0x3eb33333    # 0.35f

    mul-float/2addr v8, v9

    const/4 v9, 0x0

    const/high16 v10, 0x3f800000    # 1.0f

    const/high16 v11, 0x3f800000    # 1.0f

    const/high16 v12, 0x3f800000    # 1.0f

    const v13, 0x3f4ccccd    # 0.8f

    mul-float/2addr v13, v15

    const/4 v14, 0x1

    invoke-static/range {v4 .. v14}, Lfr/testudo/spacecorsair/mod/ModFx;->spr(Ljava/lang/String;FFFFFFFFFZ)V

    .line 333
    :cond_20d
    const v4, 0x411ccccd    # 9.8f

    const v5, 0x41266666    # 10.4f

    move/from16 v0, p2

    invoke-static {v0, v4, v5}, Lfr/testudo/spacecorsair/mod/ModLevDoom;->sm(FFF)F

    move-result v4

    const/high16 v5, 0x3f800000    # 1.0f

    const v6, 0x41433333    # 12.2f

    const v7, 0x417b3333    # 15.7f

    move/from16 v0, p2

    invoke-static {v0, v6, v7}, Lfr/testudo/spacecorsair/mod/ModLevDoom;->sm(FFF)F

    move-result v6

    sub-float/2addr v5, v6

    mul-float v19, v4, v5

    .line 334
    sget-object v6, Lfr/testudo/spacecorsair/engine/GameRenderer;->screenCenter:Lfr/testudo/spacecorsair/engine/Vector2;

    .line 335
    move-object/from16 v0, p1

    iget-object v4, v0, Lfr/testudo/spacecorsair/display/Drawable;->myTexture:Lfr/testudo/spacecorsair/display/Texture;

    .line 336
    const v5, 0x3c23d70a    # 0.01f

    cmpl-float v5, v19, v5

    if-lez v5, :cond_27b

    if-eqz v4, :cond_27b

    iget v5, v4, Lfr/testudo/spacecorsair/display/Texture;->name:I

    if-lez v5, :cond_27b

    .line 337
    const/4 v5, 0x1

    sput-boolean v5, Lfr/testudo/spacecorsair/mod/ModFx;->flatNext:Z

    .line 338
    iget v5, v6, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    iget v6, v6, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    move-object/from16 v0, p1

    iget-object v7, v0, Lfr/testudo/spacecorsair/display/Drawable;->dimensions:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v7, v7, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    const v8, 0x3f828f5c    # 1.02f

    mul-float/2addr v7, v8

    move-object/from16 v0, p1

    iget-object v8, v0, Lfr/testudo/spacecorsair/display/Drawable;->dimensions:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v8, v8, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    const v9, 0x3f828f5c    # 1.02f

    mul-float/2addr v8, v9

    move-object/from16 v0, p0

    iget v9, v0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->spin:F

    sget-object v10, Lfr/testudo/spacecorsair/mod/ModLevDoom;->HOT:[F

    const/4 v11, 0x0

    aget v10, v10, v11

    sget-object v11, Lfr/testudo/spacecorsair/mod/ModLevDoom;->HOT:[F

    const/4 v12, 0x1

    aget v11, v11, v12

    sget-object v12, Lfr/testudo/spacecorsair/mod/ModLevDoom;->HOT:[F

    const/4 v13, 0x2

    aget v12, v12, v13

    const v13, 0x3eb33333    # 0.35f

    mul-float v13, v13, v19

    const/4 v14, 0x1

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/high16 v17, 0x3f800000    # 1.0f

    const/high16 v18, 0x3f800000    # 1.0f

    invoke-static/range {v4 .. v18}, Lfr/testudo/spacecorsair/mod/ModFx;->sprTex(Lfr/testudo/spacecorsair/display/Texture;FFFFFFFFFZFFFF)V

    .line 341
    :cond_27b
    const v4, 0x3ca3d70a    # 0.02f

    cmpl-float v4, v19, v4

    if-gtz v4, :cond_290

    const v4, 0x41433333    # 12.2f

    cmpl-float v4, p2, v4

    if-lez v4, :cond_32f

    const v4, 0x4181999a    # 16.2f

    cmpg-float v4, p2, v4

    if-gez v4, :cond_32f

    :cond_290
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v4

    const-wide v6, 0x3fe3333333333333L    # 0.6

    cmpg-double v4, v4, v6

    if-gez v4, :cond_32f

    .line 342
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v4

    const-wide/high16 v6, 0x4008000000000000L    # 3.0

    mul-double/2addr v4, v6

    double-to-int v5, v4

    .line 343
    sget-boolean v4, Lfr/testudo/spacecorsair/mod/ModLevDoom;->s5:Z

    if-eqz v4, :cond_33c

    sget-object v4, Lfr/testudo/spacecorsair/mod/ModLevData;->VENTS:[F

    mul-int/lit8 v6, v5, 0x2

    aget v4, v4, v6

    :goto_2af
    sget-boolean v6, Lfr/testudo/spacecorsair/mod/ModLevDoom;->s5:Z

    if-eqz v6, :cond_345

    sget-object v6, Lfr/testudo/spacecorsair/mod/ModLevData;->VENTS:[F

    mul-int/lit8 v5, v5, 0x2

    add-int/lit8 v5, v5, 0x1

    aget v5, v6, v5

    .line 344
    :goto_2bb
    move-object/from16 v0, p0

    iget-object v6, v0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    move-object/from16 v0, p0

    iget v7, v0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->spin:F

    invoke-static {v4}, Lfr/testudo/spacecorsair/mod/ModLevDoom;->lx(F)F

    move-result v4

    invoke-static {v5}, Lfr/testudo/spacecorsair/mod/ModLevDoom;->lx(F)F

    move-result v5

    sget-object v8, Lfr/testudo/spacecorsair/mod/ModLevDoom;->b:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-static {v6, v7, v4, v5, v8}, Lfr/testudo/spacecorsair/mod/ModFx;->local(Lfr/testudo/spacecorsair/engine/Vector2;FFFLfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 345
    sget-object v4, Lfr/testudo/spacecorsair/mod/ModLevDoom;->c:Lfr/testudo/spacecorsair/engine/Vector2;

    const/high16 v5, -0x3e100000    # -30.0f

    const/high16 v6, 0x41f00000    # 30.0f

    invoke-static {v5, v6}, Lfr/testudo/spacecorsair/mod/ModFx;->rnd(FF)F

    move-result v5

    const/high16 v6, 0x43200000    # 160.0f

    invoke-virtual {v4, v5, v6}, Lfr/testudo/spacecorsair/engine/Vector2;->set(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    move-result-object v4

    move-object/from16 v0, p0

    iget v5, v0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->spin:F

    float-to-double v6, v5

    invoke-static {v6, v7}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Lfr/testudo/spacecorsair/engine/Vector2;->applyRotatation(D)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 346
    const v4, 0x3e99999a    # 0.3f

    cmpl-float v4, v19, v4

    if-lez v4, :cond_349

    const/16 v16, 0x1

    .line 347
    :goto_2f5
    const-string v4, "fx_glow"

    sget-object v5, Lfr/testudo/spacecorsair/mod/ModLevDoom;->b:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v5, v5, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    sget-object v6, Lfr/testudo/spacecorsair/mod/ModLevDoom;->b:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v6, v6, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    sget-object v7, Lfr/testudo/spacecorsair/mod/ModLevDoom;->c:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v7, v7, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    sget-object v8, Lfr/testudo/spacecorsair/mod/ModLevDoom;->c:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v8, v8, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    const/high16 v9, 0x442f0000    # 700.0f

    sget v10, Lfr/testudo/spacecorsair/mod/ModLevDoom;->D:F

    const v11, 0x3ca3d70a    # 0.02f

    mul-float/2addr v10, v11

    sget v11, Lfr/testudo/spacecorsair/mod/ModLevDoom;->D:F

    const v12, 0x3d8f5c29    # 0.07f

    mul-float/2addr v11, v12

    if-eqz v16, :cond_34c

    const/high16 v12, 0x3f800000    # 1.0f

    :goto_319
    if-eqz v16, :cond_350

    const v13, 0x3ee66666    # 0.45f

    :goto_31e
    if-eqz v16, :cond_354

    const v14, 0x3e19999a    # 0.15f

    .line 348
    :goto_323
    if-eqz v16, :cond_358

    const v15, 0x3f4ccccd    # 0.8f

    mul-float v15, v15, v19

    :goto_32a
    const/16 v17, 0x0

    .line 347
    invoke-static/range {v4 .. v17}, Lfr/testudo/spacecorsair/mod/ModFx;->part(Ljava/lang/String;FFFFFFFFFFFZZ)V

    .line 350
    :cond_32f
    return-void

    .line 307
    :cond_330
    const/high16 v4, 0x44000000    # 512.0f

    goto/16 :goto_6

    :cond_334
    const v5, 0x41a3d70a    # 20.48f

    goto/16 :goto_c

    .line 310
    :cond_339
    const/4 v4, 0x0

    goto/16 :goto_38

    .line 343
    :cond_33c
    add-int/lit8 v4, v5, -0x1

    mul-int/lit8 v4, v4, 0x32

    add-int/lit16 v4, v4, 0x200

    int-to-float v4, v4

    goto/16 :goto_2af

    :cond_345
    const/high16 v5, 0x44700000    # 960.0f

    goto/16 :goto_2bb

    .line 346
    :cond_349
    const/16 v16, 0x0

    goto :goto_2f5

    .line 347
    :cond_34c
    const v12, 0x3f19999a    # 0.6f

    goto :goto_319

    :cond_350
    const v13, 0x3f19999a    # 0.6f

    goto :goto_31e

    :cond_354
    const v14, 0x3f28f5c3    # 0.66f

    goto :goto_323

    .line 348
    :cond_358
    const v15, 0x3eb33333    # 0.35f

    const/high16 v17, 0x3f800000    # 1.0f

    const v18, 0x41633333    # 14.2f

    const v19, 0x4181999a    # 16.2f

    move/from16 v0, p2

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-static {v0, v1, v2}, Lfr/testudo/spacecorsair/mod/ModLevDoom;->sm(FFF)F

    move-result v18

    sub-float v17, v17, v18

    mul-float v15, v15, v17

    goto :goto_32a
.end method

.method static sm(FFF)F
    .registers 7

    .prologue
    .line 75
    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float v2, p0, p1

    sub-float v3, p2, p1

    div-float/2addr v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 76
    mul-float v1, v0, v0

    const/high16 v2, 0x40400000    # 3.0f

    const/high16 v3, 0x40000000    # 2.0f

    mul-float/2addr v0, v3

    sub-float v0, v2, v0

    mul-float/2addr v0, v1

    return v0
.end method

.method private static span(Lfr/testudo/spacecorsair/business/player/PlayerShip;Lfr/testudo/spacecorsair/display/Texture;FFFFFFZ)V
    .registers 24

    .prologue
    .line 216
    sub-float v0, p3, p2

    const/high16 v1, 0x3f800000    # 1.0f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_9

    .line 219
    :goto_8
    return-void

    .line 217
    :cond_9
    const v0, 0x43ffc000    # 511.5f

    add-float v1, p2, p3

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    const/high16 v2, 0x3f000000    # 0.5f

    sub-float/2addr v1, v2

    sget-object v2, Lfr/testudo/spacecorsair/mod/ModLevDoom;->b:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-static {p0, v0, v1, v2}, Lfr/testudo/spacecorsair/mod/ModLevDoom;->scr(Lfr/testudo/spacecorsair/business/player/PlayerShip;FFLfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 218
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModLevDoom;->b:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v1, v0, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    sget-object v0, Lfr/testudo/spacecorsair/mod/ModLevDoom;->b:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v2, v0, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    sget v3, Lfr/testudo/spacecorsair/mod/ModLevDoom;->D:F

    sget v0, Lfr/testudo/spacecorsair/mod/ModLevDoom;->D:F

    sub-float v4, p3, p2

    mul-float/2addr v0, v4

    const/high16 v4, 0x44800000    # 1024.0f

    div-float v4, v0, v4

    iget v5, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->spin:F

    const/4 v11, 0x0

    const/high16 v0, 0x44800000    # 1024.0f

    div-float v12, p2, v0

    const/high16 v13, 0x3f800000    # 1.0f

    const/high16 v0, 0x44800000    # 1024.0f

    div-float v14, p3, v0

    move-object/from16 v0, p1

    move/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    move/from16 v10, p8

    invoke-static/range {v0 .. v14}, Lfr/testudo/spacecorsair/mod/ModFx;->sprTex(Lfr/testudo/spacecorsair/display/Texture;FFFFFFFFFZFFFF)V

    goto :goto_8
.end method

.method private static spine(Lfr/testudo/spacecorsair/business/player/PlayerShip;F)V
    .registers 15

    .prologue
    .line 189
    const-string v0, "leviathan_stage5_spine"

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModArt;->ready(Ljava/lang/String;)Lfr/testudo/spacecorsair/display/Texture;

    move-result-object v1

    .line 190
    if-nez v1, :cond_9

    .line 212
    :cond_8
    :goto_8
    return-void

    .line 191
    :cond_9
    const/high16 v2, 0x43220000    # 162.0f

    const v12, 0x444a8000    # 810.0f

    .line 196
    const v0, 0x404ccccd    # 3.2f

    cmpg-float v0, p1, v0

    if-gez v0, :cond_98

    const/high16 v0, 0x3f800000    # 1.0f

    const v3, 0x404ccccd    # 3.2f

    invoke-static {p1, v0, v3}, Lfr/testudo/spacecorsair/mod/ModLevDoom;->sm(FFF)F

    move-result v5

    sget-object v4, Lfr/testudo/spacecorsair/mod/ModLevDoom;->AMBER:[F

    const v3, 0x3f666666    # 0.9f

    const/4 v0, 0x0

    move v9, v3

    move-object v10, v4

    move v11, v5

    .line 203
    :goto_27
    if-eqz v0, :cond_45

    const/high16 v0, 0x3f800000    # 1.0f

    cmpg-float v0, v11, v0

    if-gez v0, :cond_45

    sub-float v0, v12, v2

    mul-float/2addr v0, v11

    sub-float v3, v12, v0

    const v4, 0x3d4ccccd    # 0.05f

    const v5, 0x3d23d70a    # 0.04f

    const v6, 0x3d23d70a    # 0.04f

    const v7, 0x3f59999a    # 0.85f

    const/4 v8, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v8}, Lfr/testudo/spacecorsair/mod/ModLevDoom;->span(Lfr/testudo/spacecorsair/business/player/PlayerShip;Lfr/testudo/spacecorsair/display/Texture;FFFFFFZ)V

    .line 204
    :cond_45
    const v0, 0x3a83126f    # 0.001f

    cmpl-float v0, v11, v0

    if-lez v0, :cond_8

    .line 205
    sub-float v0, v12, v2

    mul-float/2addr v0, v11

    sub-float v2, v12, v0

    .line 206
    const/4 v0, 0x0

    aget v4, v10, v0

    const/4 v0, 0x1

    aget v5, v10, v0

    const/4 v0, 0x2

    aget v6, v10, v0

    const/4 v8, 0x1

    move-object v0, p0

    move v3, v12

    move v7, v9

    invoke-static/range {v0 .. v8}, Lfr/testudo/spacecorsair/mod/ModLevDoom;->span(Lfr/testudo/spacecorsair/business/player/PlayerShip;Lfr/testudo/spacecorsair/display/Texture;FFFFFFZ)V

    .line 207
    const v0, 0x3f7fbe77    # 0.999f

    cmpg-float v0, v11, v0

    if-gez v0, :cond_8

    .line 208
    const/high16 v0, 0x44000000    # 512.0f

    sget-object v1, Lfr/testudo/spacecorsair/mod/ModLevDoom;->b:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-static {p0, v0, v2, v1}, Lfr/testudo/spacecorsair/mod/ModLevDoom;->scr(Lfr/testudo/spacecorsair/business/player/PlayerShip;FFLfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 209
    const-string v0, "fx_glow"

    sget-object v1, Lfr/testudo/spacecorsair/mod/ModLevDoom;->b:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v1, v1, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    sget-object v2, Lfr/testudo/spacecorsair/mod/ModLevDoom;->b:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v2, v2, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    sget v3, Lfr/testudo/spacecorsair/mod/ModLevDoom;->D:F

    const v4, 0x3d75c28f    # 0.06f

    mul-float/2addr v3, v4

    sget v4, Lfr/testudo/spacecorsair/mod/ModLevDoom;->D:F

    const v5, 0x3d75c28f    # 0.06f

    mul-float/2addr v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    aget v6, v10, v6

    const/4 v7, 0x1

    aget v7, v10, v7

    const/4 v8, 0x2

    aget v8, v10, v8

    const v9, 0x3f666666    # 0.9f

    const/4 v10, 0x1

    invoke-static/range {v0 .. v10}, Lfr/testudo/spacecorsair/mod/ModFx;->spr(Ljava/lang/String;FFFFFFFFFZ)V

    goto/16 :goto_8

    .line 197
    :cond_98
    const v0, 0x40accccd    # 5.4f

    cmpg-float v0, p1, v0

    if-gez v0, :cond_b3

    const v0, 0x404ccccd    # 3.2f

    const v3, 0x409ccccd    # 4.9f

    invoke-static {p1, v0, v3}, Lfr/testudo/spacecorsair/mod/ModLevDoom;->sm(FFF)F

    move-result v5

    sget-object v4, Lfr/testudo/spacecorsair/mod/ModLevDoom;->ICY:[F

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v0, 0x1

    move v9, v3

    move-object v10, v4

    move v11, v5

    goto/16 :goto_27

    .line 198
    :cond_b3
    const/high16 v0, 0x41200000    # 10.0f

    cmpg-float v0, p1, v0

    if-gez v0, :cond_d0

    const/high16 v0, 0x3f800000    # 1.0f

    const/high16 v3, 0x40b00000    # 5.5f

    const v4, 0x411ccccd    # 9.8f

    invoke-static {p1, v3, v4}, Lfr/testudo/spacecorsair/mod/ModLevDoom;->sm(FFF)F

    move-result v3

    sub-float v5, v0, v3

    sget-object v4, Lfr/testudo/spacecorsair/mod/ModLevDoom;->ICY:[F

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v0, 0x1

    move v9, v3

    move-object v10, v4

    move v11, v5

    goto/16 :goto_27

    .line 200
    :cond_d0
    sget v5, Lfr/testudo/spacecorsair/mod/ModLevDoom;->coolFrac:F

    sget-object v4, Lfr/testudo/spacecorsair/mod/ModLevDoom;->AMBER:[F

    const v3, 0x3f0ccccd    # 0.55f

    const/4 v0, 0x1

    .line 201
    const v6, 0x41433333    # 12.2f

    cmpg-float v6, p1, v6

    if-gez v6, :cond_f7

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v6

    const-wide v8, 0x3fd3333333333333L    # 0.3

    cmpg-double v6, v6, v8

    if-gez v6, :cond_f7

    const/high16 v5, 0x3f800000    # 1.0f

    sget-object v4, Lfr/testudo/spacecorsair/mod/ModLevDoom;->HOT:[F

    const/high16 v3, 0x3e800000    # 0.25f

    move v9, v3

    move-object v10, v4

    move v11, v5

    goto/16 :goto_27

    :cond_f7
    move v9, v3

    move-object v10, v4

    move v11, v5

    goto/16 :goto_27
.end method

.method static start(Lfr/testudo/spacecorsair/business/player/PlayerShip;)V
    .registers 6

    .prologue
    const/4 v1, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v0, 0x1

    .line 41
    const-wide/16 v2, 0x0

    sput-wide v2, Lfr/testudo/spacecorsair/mod/ModLevDoom;->seqMs:J

    .line 42
    sput-boolean v0, Lfr/testudo/spacecorsair/mod/ModLevDoom;->on:Z

    .line 43
    sput-boolean v0, Lfr/testudo/spacecorsair/mod/ModLevDoom;->gauge:Z

    .line 44
    const/4 v2, 0x0

    sput v2, Lfr/testudo/spacecorsair/mod/ModLevDoom;->coolFrac:F

    .line 46
    :try_start_f
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModV35;->currentShip()Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    move-result-object v2

    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModV35;->level(Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)I

    move-result v2

    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModV35;->stage(I)I

    move-result v2

    const/4 v3, 0x5

    if-ne v2, v3, :cond_30

    const-string v2, "leviathan_stage5_spine"

    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModV35;->art(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_30

    :goto_26
    sput-boolean v0, Lfr/testudo/spacecorsair/mod/ModLevDoom;->s5:Z
    :try_end_28
    .catch Ljava/lang/Throwable; {:try_start_f .. :try_end_28} :catch_32

    .line 50
    :goto_28
    const-string v0, "lev_doom_charge"

    const-wide/16 v2, 0x1f4

    invoke-static {v0, v4, v4, v2, v3}, Lfr/testudo/spacecorsair/mod/ModSound;->play(Ljava/lang/String;FFJ)I

    .line 51
    return-void

    :cond_30
    move v0, v1

    .line 46
    goto :goto_26

    .line 47
    :catch_32
    move-exception v0

    .line 48
    sput-boolean v1, Lfr/testudo/spacecorsair/mod/ModLevDoom;->s5:Z

    goto :goto_28
.end method

.method static stop()V
    .registers 1

    .prologue
    const/4 v0, 0x0

    .line 55
    sput-boolean v0, Lfr/testudo/spacecorsair/mod/ModLevDoom;->on:Z

    .line 56
    sput-boolean v0, Lfr/testudo/spacecorsair/mod/ModLevDoom;->gauge:Z

    .line 57
    const/high16 v0, 0x3f800000    # 1.0f

    sput v0, Lfr/testudo/spacecorsair/mod/ModLevDoom;->coolFrac:F

    .line 58
    return-void
.end method

.method private static trims(Lfr/testudo/spacecorsair/business/player/PlayerShip;F)V
    .registers 21

    .prologue
    .line 275
    const/high16 v2, 0x3f800000    # 1.0f

    const v3, 0x3fcccccd    # 1.6f

    move/from16 v0, p1

    invoke-static {v0, v2, v3}, Lfr/testudo/spacecorsair/mod/ModLevDoom;->sm(FFF)F

    move-result v2

    const/high16 v3, 0x3f800000    # 1.0f

    const v4, 0x40966666    # 4.7f

    const v5, 0x409e6666    # 4.95f

    move/from16 v0, p1

    invoke-static {v0, v4, v5}, Lfr/testudo/spacecorsair/mod/ModLevDoom;->sm(FFF)F

    move-result v4

    sub-float/2addr v3, v4

    mul-float v17, v2, v3

    .line 276
    const/4 v2, 0x0

    cmpg-float v2, v17, v2

    if-gtz v2, :cond_22

    .line 303
    :cond_21
    return-void

    .line 277
    :cond_22
    const-string v2, "leviathan_stage5_trims"

    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModArt;->ready(Ljava/lang/String;)Lfr/testudo/spacecorsair/display/Texture;

    move-result-object v2

    .line 278
    sget-object v18, Lfr/testudo/spacecorsair/engine/GameRenderer;->screenCenter:Lfr/testudo/spacecorsair/engine/Vector2;

    .line 279
    const v3, 0x404ccccd    # 3.2f

    const v4, 0x409ccccd    # 4.9f

    move/from16 v0, p1

    invoke-static {v0, v3, v4}, Lfr/testudo/spacecorsair/mod/ModLevDoom;->sm(FFF)F

    move-result v11

    .line 280
    if-eqz v2, :cond_6e

    move-object/from16 v0, v18

    iget v3, v0, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    move-object/from16 v0, v18

    iget v4, v0, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    sget v5, Lfr/testudo/spacecorsair/mod/ModLevDoom;->D:F

    sget v6, Lfr/testudo/spacecorsair/mod/ModLevDoom;->D:F

    move-object/from16 v0, p0

    iget v7, v0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->spin:F

    sget-object v8, Lfr/testudo/spacecorsair/mod/ModLevDoom;->AMBER:[F

    const/4 v9, 0x0

    aget v8, v8, v9

    sget-object v9, Lfr/testudo/spacecorsair/mod/ModLevDoom;->AMBER:[F

    const/4 v10, 0x1

    aget v9, v9, v10

    sget-object v10, Lfr/testudo/spacecorsair/mod/ModLevDoom;->AMBER:[F

    const/4 v12, 0x2

    aget v10, v10, v12

    const v12, 0x3eb33333    # 0.35f

    mul-float v12, v12, v17

    const/high16 v13, 0x3f800000    # 1.0f

    const v14, 0x3f19999a    # 0.6f

    mul-float/2addr v11, v14

    add-float/2addr v11, v13

    mul-float/2addr v11, v12

    const/4 v12, 0x1

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/high16 v15, 0x3f800000    # 1.0f

    const/high16 v16, 0x3f800000    # 1.0f

    invoke-static/range {v2 .. v16}, Lfr/testudo/spacecorsair/mod/ModFx;->sprTex(Lfr/testudo/spacecorsair/display/Texture;FFFFFFFFFZFFFF)V

    .line 281
    :cond_6e
    const/high16 v2, 0x3f800000    # 1.0f

    const/high16 v3, 0x3fc00000    # 1.5f

    move/from16 v0, p1

    invoke-static {v0, v2, v3}, Lfr/testudo/spacecorsair/mod/ModLevDoom;->sm(FFF)F

    move-result v2

    const/high16 v3, 0x3f800000    # 1.0f

    const v4, 0x40266666    # 2.6f

    const v5, 0x40666666    # 3.6f

    move/from16 v0, p1

    invoke-static {v0, v4, v5}, Lfr/testudo/spacecorsair/mod/ModLevDoom;->sm(FFF)F

    move-result v4

    sub-float/2addr v3, v4

    mul-float v14, v2, v3

    .line 282
    const/4 v2, 0x0

    cmpl-float v2, v14, v2

    if-lez v2, :cond_f0

    move-object/from16 v0, p0

    iget-object v2, v0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->playerCannons:[Lfr/testudo/spacecorsair/business/player/PlayerCanon;

    if-eqz v2, :cond_f0

    .line 283
    const/4 v2, 0x0

    move v13, v2

    :goto_96
    move-object/from16 v0, p0

    iget-object v2, v0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->playerCannons:[Lfr/testudo/spacecorsair/business/player/PlayerCanon;

    array-length v2, v2

    if-ge v13, v2, :cond_f0

    .line 284
    move-object/from16 v0, p0

    iget-object v2, v0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->playerCannons:[Lfr/testudo/spacecorsair/business/player/PlayerCanon;

    aget-object v2, v2, v13

    iget-object v2, v2, Lfr/testudo/spacecorsair/business/player/PlayerCanon;->shipPosition:Lfr/testudo/spacecorsair/engine/Vector2;

    .line 285
    sget-object v3, Lfr/testudo/spacecorsair/mod/ModLevDoom;->a:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v4, v2, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    iget v2, v2, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    invoke-virtual {v3, v4, v2}, Lfr/testudo/spacecorsair/engine/Vector2;->set(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    move-result-object v2

    move-object/from16 v0, p0

    iget v3, v0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->spin:F

    float-to-double v4, v3

    invoke-static {v4, v5}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Lfr/testudo/spacecorsair/engine/Vector2;->applyRotatation(D)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 286
    const-string v2, "fx_glow"

    move-object/from16 v0, v18

    iget v3, v0, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    sget-object v4, Lfr/testudo/spacecorsair/mod/ModLevDoom;->a:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v4, v4, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    add-float/2addr v3, v4

    move-object/from16 v0, v18

    iget v4, v0, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    sget-object v5, Lfr/testudo/spacecorsair/mod/ModLevDoom;->a:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v5, v5, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    add-float/2addr v4, v5

    sget v5, Lfr/testudo/spacecorsair/mod/ModLevDoom;->D:F

    const v6, 0x3de147ae    # 0.11f

    mul-float/2addr v5, v6

    sget v6, Lfr/testudo/spacecorsair/mod/ModLevDoom;->D:F

    const v7, 0x3de147ae    # 0.11f

    mul-float/2addr v6, v7

    const/4 v7, 0x0

    const/high16 v8, 0x3f800000    # 1.0f

    const v9, 0x3f4ccccd    # 0.8f

    const v10, 0x3ecccccd    # 0.4f

    const v11, 0x3f4ccccd    # 0.8f

    mul-float/2addr v11, v14

    const/4 v12, 0x1

    invoke-static/range {v2 .. v12}, Lfr/testudo/spacecorsair/mod/ModFx;->spr(Ljava/lang/String;FFFFFFFFFZ)V

    .line 283
    add-int/lit8 v2, v13, 0x1

    move v13, v2

    goto :goto_96

    .line 289
    :cond_f0
    const/high16 v2, 0x3f800000    # 1.0f

    sub-float v15, p1, v2

    .line 290
    const/4 v2, 0x0

    move v13, v2

    :goto_f6
    sget-object v2, Lfr/testudo/spacecorsair/mod/ModLevData;->PATHS:[[F

    array-length v2, v2

    if-ge v13, v2, :cond_21

    .line 291
    sget-object v2, Lfr/testudo/spacecorsair/mod/ModLevData;->PATHS:[[F

    aget-object v16, v2, v13

    .line 292
    move-object/from16 v0, v16

    array-length v2, v0

    div-int/lit8 v18, v2, 0x2

    .line 293
    const/4 v2, 0x2

    move/from16 v0, v18

    if-ge v0, v2, :cond_10d

    .line 290
    :cond_109
    add-int/lit8 v2, v13, 0x1

    move v13, v2

    goto :goto_f6

    .line 294
    :cond_10d
    const/4 v2, 0x0

    move v14, v2

    :goto_10f
    const/4 v2, 0x3

    if-ge v14, v2, :cond_109

    .line 295
    const/high16 v2, 0x3f400000    # 0.75f

    mul-float/2addr v2, v15

    int-to-float v3, v14

    const/high16 v4, 0x40400000    # 3.0f

    div-float/2addr v3, v4

    add-float/2addr v2, v3

    int-to-float v3, v13

    const v4, 0x3de147ae    # 0.11f

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    const/high16 v3, 0x3f800000    # 1.0f

    rem-float/2addr v2, v3

    .line 296
    add-int/lit8 v3, v18, -0x1

    int-to-float v3, v3

    mul-float/2addr v2, v3

    .line 297
    float-to-int v3, v2

    add-int/lit8 v4, v18, -0x2

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 298
    int-to-float v4, v3

    sub-float/2addr v2, v4

    .line 299
    mul-int/lit8 v4, v3, 0x2

    aget v4, v16, v4

    const/high16 v5, 0x3f800000    # 1.0f

    sub-float/2addr v5, v2

    mul-float/2addr v4, v5

    mul-int/lit8 v5, v3, 0x2

    add-int/lit8 v5, v5, 0x2

    aget v5, v16, v5

    mul-float/2addr v5, v2

    add-float/2addr v4, v5

    mul-int/lit8 v5, v3, 0x2

    add-int/lit8 v5, v5, 0x1

    aget v5, v16, v5

    const/high16 v6, 0x3f800000    # 1.0f

    sub-float/2addr v6, v2

    mul-float/2addr v5, v6

    mul-int/lit8 v3, v3, 0x2

    add-int/lit8 v3, v3, 0x3

    aget v3, v16, v3

    mul-float/2addr v2, v3

    add-float/2addr v2, v5

    sget-object v3, Lfr/testudo/spacecorsair/mod/ModLevDoom;->b:Lfr/testudo/spacecorsair/engine/Vector2;

    move-object/from16 v0, p0

    invoke-static {v0, v4, v2, v3}, Lfr/testudo/spacecorsair/mod/ModLevDoom;->scr(Lfr/testudo/spacecorsair/business/player/PlayerShip;FFLfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 300
    const-string v2, "fx_glow"

    sget-object v3, Lfr/testudo/spacecorsair/mod/ModLevDoom;->b:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v3, v3, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    sget-object v4, Lfr/testudo/spacecorsair/mod/ModLevDoom;->b:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v4, v4, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    sget v5, Lfr/testudo/spacecorsair/mod/ModLevDoom;->D:F

    const v6, 0x3d0f5c29    # 0.035f

    mul-float/2addr v5, v6

    sget v6, Lfr/testudo/spacecorsair/mod/ModLevDoom;->D:F

    const v7, 0x3d0f5c29    # 0.035f

    mul-float/2addr v6, v7

    const/4 v7, 0x0

    const/high16 v8, 0x3f800000    # 1.0f

    const v9, 0x3f666666    # 0.9f

    const v10, 0x3f19999a    # 0.6f

    const v11, 0x3f666666    # 0.9f

    mul-float v11, v11, v17

    const/4 v12, 0x1

    invoke-static/range {v2 .. v12}, Lfr/testudo/spacecorsair/mod/ModFx;->spr(Ljava/lang/String;FFFFFFFFFZ)V

    .line 294
    add-int/lit8 v2, v14, 0x1

    move v14, v2

    goto :goto_10f
.end method
