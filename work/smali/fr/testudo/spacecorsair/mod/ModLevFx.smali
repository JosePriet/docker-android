.class public final Lfr/testudo/spacecorsair/mod/ModLevFx;
.super Ljava/lang/Object;
.source "ModLevFx.java"


# static fields
.field static final BPM_IDLE:F = 40.0f

.field static final BPM_WAR:F = 120.0f

.field private static D:F = 0.0f

.field static final RING_LIFE:J = 0x708L

.field static final RING_MS:J = 0xdcL

.field private static final WN:I = 0xe

.field private static final a:Lfr/testudo/spacecorsair/engine/Vector2;

.field private static agit:F

.field private static final b:Lfr/testudo/spacecorsair/engine/Vector2;

.field private static beat:F

.field private static heat:F

.field private static lastRing:J

.field private static lastT:J

.field private static spd01:F

.field private static stage:I

.field private static stageAt:J

.field private static vbest:F

.field private static vmax:F

.field private static wNext:I

.field private static final wrot:[F

.field private static final wstr:[F

.field private static final wt:[J

.field private static final wx:[F

.field private static final wy:[F


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/16 v1, 0xe

    .line 23
    const/high16 v0, 0x447a0000    # 1000.0f

    sput v0, Lfr/testudo/spacecorsair/mod/ModLevFx;->D:F

    .line 26
    const v0, 0x3a83126f    # 0.001f

    sput v0, Lfr/testudo/spacecorsair/mod/ModLevFx;->vmax:F

    .line 28
    new-array v0, v1, [F

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModLevFx;->wx:[F

    new-array v0, v1, [F

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModLevFx;->wy:[F

    new-array v0, v1, [F

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModLevFx;->wrot:[F

    new-array v0, v1, [F

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModLevFx;->wstr:[F

    .line 29
    new-array v0, v1, [J

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModLevFx;->wt:[J

    .line 32
    new-instance v0, Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-direct {v0}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>()V

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModLevFx;->a:Lfr/testudo/spacecorsair/engine/Vector2;

    new-instance v0, Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-direct {v0}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>()V

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModLevFx;->b:Lfr/testudo/spacecorsair/engine/Vector2;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static hit(Lfr/testudo/spacecorsair/business/player/PlayerShip;F)V
    .registers 7

    .prologue
    const/high16 v4, 0x3f800000    # 1.0f

    .line 55
    sget v0, Lfr/testudo/spacecorsair/mod/ModLevFx;->stage:I

    if-nez v0, :cond_7

    .line 58
    :goto_6
    return-void

    .line 56
    :cond_7
    iget v0, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->maxLife:F

    invoke-static {v4, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 57
    sget v1, Lfr/testudo/spacecorsair/mod/ModLevFx;->agit:F

    const/high16 v2, 0x3e800000    # 0.25f

    add-float/2addr v1, v2

    const/high16 v2, 0x40000000    # 2.0f

    const v3, 0x3e99999a    # 0.3f

    div-float v0, p1, v0

    invoke-static {v3, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    mul-float/2addr v0, v2

    add-float/2addr v0, v1

    invoke-static {v4, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    sput v0, Lfr/testudo/spacecorsair/mod/ModLevFx;->agit:F

    goto :goto_6
.end method

.method private static lx(F)F
    .registers 4

    .prologue
    const/high16 v2, 0x3f000000    # 0.5f

    .line 156
    add-float v0, p0, v2

    const/high16 v1, 0x44800000    # 1024.0f

    div-float/2addr v0, v1

    sub-float/2addr v0, v2

    sget v1, Lfr/testudo/spacecorsair/mod/ModLevFx;->D:F

    mul-float/2addr v0, v1

    return v0
.end method

.method public static over(Lfr/testudo/spacecorsair/business/player/PlayerShip;)V
    .registers 23

    .prologue
    .line 124
    sget v2, Lfr/testudo/spacecorsair/mod/ModLevFx;->stage:I

    if-eqz v2, :cond_10

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->isDocked:Z

    if-nez v2, :cond_10

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->removed:Z

    if-eqz v2, :cond_11

    .line 153
    :cond_10
    :goto_10
    return-void

    .line 125
    :cond_11
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModTitan;->busy()Z

    move-result v2

    if-nez v2, :cond_10

    sget-boolean v2, Lfr/testudo/spacecorsair/mod/ModLevDoom;->gauge:Z

    if-nez v2, :cond_10

    .line 127
    :try_start_1b
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLevFx;->str()F

    move-result v20

    .line 128
    sget v16, Lfr/testudo/spacecorsair/mod/ModLevFx;->beat:F

    .line 129
    move/from16 v0, v16

    neg-float v2, v0

    float-to-double v2, v2

    const-wide/high16 v4, 0x4012000000000000L    # 4.5

    mul-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->exp(D)D

    move-result-wide v2

    double-to-float v0, v2

    move/from16 v21, v0

    .line 130
    const/high16 v4, 0x43220000    # 162.0f

    const v5, 0x444a8000    # 810.0f

    .line 131
    const/4 v2, 0x1

    sput-boolean v2, Lfr/testudo/spacecorsair/mod/ModFx;->relative:Z

    .line 132
    sget v2, Lfr/testudo/spacecorsair/mod/ModLevFx;->stage:I

    const/4 v3, 0x5

    if-lt v2, v3, :cond_db

    const-string v2, "leviathan_stage5_spine"

    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModArt;->ready(Ljava/lang/String;)Lfr/testudo/spacecorsair/display/Texture;

    move-result-object v3

    .line 133
    :goto_42
    const/high16 v6, 0x3f800000    # 1.0f

    const v2, 0x3f19999a    # 0.6f

    const v7, 0x3dcccccd    # 0.1f

    sget v8, Lfr/testudo/spacecorsair/mod/ModLevFx;->agit:F

    mul-float/2addr v7, v8

    add-float/2addr v7, v2

    const v8, 0x3e19999a    # 0.15f

    .line 134
    if-eqz v3, :cond_de

    .line 136
    const v2, 0x3df5c28f    # 0.12f

    const v9, 0x3ee66666    # 0.45f

    mul-float v9, v9, v21

    add-float/2addr v2, v9

    mul-float v2, v2, v20

    const v9, 0x3f19999a    # 0.6f

    const v10, 0x3ecccccd    # 0.4f

    sget v11, Lfr/testudo/spacecorsair/mod/ModLevFx;->agit:F

    mul-float/2addr v10, v11

    add-float/2addr v9, v10

    mul-float/2addr v9, v2

    const/4 v10, 0x1

    move-object/from16 v2, p0

    invoke-static/range {v2 .. v10}, Lfr/testudo/spacecorsair/mod/ModLevFx;->span(Lfr/testudo/spacecorsair/business/player/PlayerShip;Lfr/testudo/spacecorsair/display/Texture;FFFFFFZ)V

    .line 138
    sub-float v2, v5, v4

    mul-float v2, v2, v16

    sub-float v2, v5, v2

    .line 139
    const/high16 v9, 0x42200000    # 40.0f

    sub-float v9, v2, v9

    invoke-static {v4, v9}, Ljava/lang/Math;->max(FF)F

    move-result v11

    const/high16 v4, 0x42200000    # 40.0f

    add-float/2addr v2, v4

    invoke-static {v5, v2}, Ljava/lang/Math;->min(FF)F

    move-result v12

    const/high16 v13, 0x3f800000    # 1.0f

    const v14, 0x3f4ccccd    # 0.8f

    const v15, 0x3ecccccd    # 0.4f

    const v2, 0x3f4ccccd    # 0.8f

    mul-float v2, v2, v20

    const/high16 v4, 0x3f800000    # 1.0f

    const/high16 v5, 0x3f000000    # 0.5f

    mul-float v5, v5, v16

    sub-float/2addr v4, v5

    mul-float v16, v2, v4

    const/16 v17, 0x1

    move-object/from16 v9, p0

    move-object v10, v3

    invoke-static/range {v9 .. v17}, Lfr/testudo/spacecorsair/mod/ModLevFx;->span(Lfr/testudo/spacecorsair/business/player/PlayerShip;Lfr/testudo/spacecorsair/display/Texture;FFFFFFZ)V

    .line 146
    :goto_a2
    const/high16 v2, 0x44000000    # 512.0f

    const/high16 v3, 0x42d80000    # 108.0f

    sget-object v4, Lfr/testudo/spacecorsair/mod/ModLevFx;->b:Lfr/testudo/spacecorsair/engine/Vector2;

    move-object/from16 v0, p0

    invoke-static {v0, v2, v3, v4}, Lfr/testudo/spacecorsair/mod/ModLevFx;->scr(Lfr/testudo/spacecorsair/business/player/PlayerShip;FFLfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 147
    const-string v9, "fx_glow"

    sget-object v2, Lfr/testudo/spacecorsair/mod/ModLevFx;->b:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v10, v2, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    sget-object v2, Lfr/testudo/spacecorsair/mod/ModLevFx;->b:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v11, v2, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    sget v2, Lfr/testudo/spacecorsair/mod/ModLevFx;->D:F

    const v3, 0x3e23d70a    # 0.16f

    mul-float v12, v2, v3

    sget v2, Lfr/testudo/spacecorsair/mod/ModLevFx;->D:F

    const v3, 0x3e23d70a    # 0.16f

    mul-float v13, v2, v3

    const/4 v14, 0x0

    const/high16 v2, 0x3f000000    # 0.5f

    mul-float v2, v2, v20

    mul-float v18, v2, v21

    const/16 v19, 0x1

    move v15, v6

    move/from16 v16, v7

    move/from16 v17, v8

    invoke-static/range {v9 .. v19}, Lfr/testudo/spacecorsair/mod/ModFx;->spr(Ljava/lang/String;FFFFFFFFFZ)V
    :try_end_d6
    .catch Ljava/lang/Throwable; {:try_start_1b .. :try_end_d6} :catch_11f
    .catchall {:try_start_1b .. :try_end_d6} :catchall_125

    .line 151
    const/4 v2, 0x0

    sput-boolean v2, Lfr/testudo/spacecorsair/mod/ModFx;->relative:Z

    goto/16 :goto_10

    .line 132
    :cond_db
    const/4 v3, 0x0

    goto/16 :goto_42

    .line 141
    :cond_de
    sub-float v2, v5, v4

    mul-float v2, v2, v16

    sub-float v2, v5, v2

    .line 142
    const/high16 v3, 0x44000000    # 512.0f

    :try_start_e6
    sget-object v4, Lfr/testudo/spacecorsair/mod/ModLevFx;->b:Lfr/testudo/spacecorsair/engine/Vector2;

    move-object/from16 v0, p0

    invoke-static {v0, v3, v2, v4}, Lfr/testudo/spacecorsair/mod/ModLevFx;->scr(Lfr/testudo/spacecorsair/business/player/PlayerShip;FFLfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 143
    const-string v9, "fx_glow"

    sget-object v2, Lfr/testudo/spacecorsair/mod/ModLevFx;->b:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v10, v2, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    sget-object v2, Lfr/testudo/spacecorsair/mod/ModLevFx;->b:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v11, v2, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    sget v2, Lfr/testudo/spacecorsair/mod/ModLevFx;->D:F

    const v3, 0x3d8f5c29    # 0.07f

    mul-float v12, v2, v3

    sget v2, Lfr/testudo/spacecorsair/mod/ModLevFx;->D:F

    const v3, 0x3d8f5c29    # 0.07f

    mul-float v13, v2, v3

    const/4 v14, 0x0

    const v2, 0x3f19999a    # 0.6f

    mul-float v2, v2, v20

    const/high16 v3, 0x3f800000    # 1.0f

    const/high16 v4, 0x3f000000    # 0.5f

    mul-float v4, v4, v16

    sub-float/2addr v3, v4

    mul-float v18, v2, v3

    const/16 v19, 0x1

    move v15, v6

    move/from16 v16, v7

    move/from16 v17, v8

    invoke-static/range {v9 .. v19}, Lfr/testudo/spacecorsair/mod/ModFx;->spr(Ljava/lang/String;FFFFFFFFFZ)V
    :try_end_11e
    .catch Ljava/lang/Throwable; {:try_start_e6 .. :try_end_11e} :catch_11f
    .catchall {:try_start_e6 .. :try_end_11e} :catchall_125

    goto :goto_a2

    .line 148
    :catch_11f
    move-exception v2

    .line 151
    const/4 v2, 0x0

    sput-boolean v2, Lfr/testudo/spacecorsair/mod/ModFx;->relative:Z

    goto/16 :goto_10

    :catchall_125
    move-exception v2

    const/4 v3, 0x0

    sput-boolean v3, Lfr/testudo/spacecorsair/mod/ModFx;->relative:Z

    .line 152
    throw v2
.end method

.method private static scr(Lfr/testudo/spacecorsair/business/player/PlayerShip;FFLfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;
    .registers 8

    .prologue
    .line 160
    sget-object v0, Lfr/testudo/spacecorsair/engine/GameRenderer;->screenCenter:Lfr/testudo/spacecorsair/engine/Vector2;

    .line 161
    invoke-static {p1}, Lfr/testudo/spacecorsair/mod/ModLevFx;->lx(F)F

    move-result v1

    invoke-static {p2}, Lfr/testudo/spacecorsair/mod/ModLevFx;->lx(F)F

    move-result v2

    invoke-virtual {p3, v1, v2}, Lfr/testudo/spacecorsair/engine/Vector2;->set(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    move-result-object v1

    iget v2, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->spin:F

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lfr/testudo/spacecorsair/engine/Vector2;->applyRotatation(D)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 162
    iget v1, p3, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    iget v2, v0, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    add-float/2addr v1, v2

    iget v2, p3, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    iget v0, v0, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    add-float/2addr v0, v2

    invoke-virtual {p3, v1, v0}, Lfr/testudo/spacecorsair/engine/Vector2;->set(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 163
    return-object p3
.end method

.method private static span(Lfr/testudo/spacecorsair/business/player/PlayerShip;Lfr/testudo/spacecorsair/display/Texture;FFFFFFZ)V
    .registers 24

    .prologue
    .line 167
    sub-float v0, p3, p2

    const/high16 v1, 0x3f800000    # 1.0f

    cmpg-float v0, v0, v1

    if-ltz v0, :cond_f

    const v0, 0x3ba3d70a    # 0.005f

    cmpg-float v0, p7, v0

    if-gez v0, :cond_10

    .line 170
    :cond_f
    :goto_f
    return-void

    .line 168
    :cond_10
    const v0, 0x43ffc000    # 511.5f

    add-float v1, p2, p3

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    const/high16 v2, 0x3f000000    # 0.5f

    sub-float/2addr v1, v2

    sget-object v2, Lfr/testudo/spacecorsair/mod/ModLevFx;->b:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-static {p0, v0, v1, v2}, Lfr/testudo/spacecorsair/mod/ModLevFx;->scr(Lfr/testudo/spacecorsair/business/player/PlayerShip;FFLfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 169
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModLevFx;->b:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v1, v0, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    sget-object v0, Lfr/testudo/spacecorsair/mod/ModLevFx;->b:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v2, v0, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    sget v3, Lfr/testudo/spacecorsair/mod/ModLevFx;->D:F

    sget v0, Lfr/testudo/spacecorsair/mod/ModLevFx;->D:F

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

    goto :goto_f
.end method

.method static stageOf(Lfr/testudo/spacecorsair/business/player/PlayerShip;)I
    .registers 9

    .prologue
    const/4 v1, 0x0

    .line 39
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 40
    sget-wide v4, Lfr/testudo/spacecorsair/mod/ModLevFx;->stageAt:J

    sub-long v4, v2, v4

    const-wide/16 v6, 0x3e8

    cmp-long v0, v4, v6

    if-gtz v0, :cond_17

    sget-wide v4, Lfr/testudo/spacecorsair/mod/ModLevFx;->stageAt:J

    const-wide/16 v6, 0x0

    cmp-long v0, v4, v6

    if-nez v0, :cond_35

    .line 41
    :cond_17
    sput-wide v2, Lfr/testudo/spacecorsair/mod/ModLevFx;->stageAt:J

    .line 44
    :try_start_19
    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModCaps;->profile(Lfr/testudo/spacecorsair/business/player/PlayerShip;)Lfr/testudo/spacecorsair/mod/ModCaps$Profile;

    move-result-object v0

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLevDoom;->is(Lfr/testudo/spacecorsair/mod/ModCaps$Profile;)Z

    move-result v0

    if-eqz v0, :cond_3b

    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModV35;->currentShip()Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    move-result-object v0

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModV35;->level(Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)I

    move-result v0

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModV35;->stage(I)I
    :try_end_2e
    .catch Ljava/lang/Throwable; {:try_start_19 .. :try_end_2e} :catch_38

    move-result v0

    .line 48
    :goto_2f
    const/4 v2, 0x4

    if-lt v0, v2, :cond_33

    move v1, v0

    :cond_33
    sput v1, Lfr/testudo/spacecorsair/mod/ModLevFx;->stage:I

    .line 50
    :cond_35
    sget v0, Lfr/testudo/spacecorsair/mod/ModLevFx;->stage:I

    return v0

    .line 45
    :catch_38
    move-exception v0

    move v0, v1

    .line 46
    goto :goto_2f

    :cond_3b
    move v0, v1

    goto :goto_2f
.end method

.method private static str()F
    .registers 2

    .prologue
    .line 61
    sget v0, Lfr/testudo/spacecorsair/mod/ModLevFx;->stage:I

    const/4 v1, 0x5

    if-lt v0, v1, :cond_8

    const/high16 v0, 0x3f800000    # 1.0f

    :goto_7
    return v0

    :cond_8
    const/high16 v0, 0x3f000000    # 0.5f

    goto :goto_7
.end method

.method public static under(Lfr/testudo/spacecorsair/business/player/PlayerShip;)V
    .registers 25

    .prologue
    .line 90
    invoke-static/range {p0 .. p0}, Lfr/testudo/spacecorsair/mod/ModLevFx;->stageOf(Lfr/testudo/spacecorsair/business/player/PlayerShip;)I

    move-result v2

    if-eqz v2, :cond_12

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->isDocked:Z

    if-nez v2, :cond_12

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->removed:Z

    if-eqz v2, :cond_13

    .line 120
    :cond_12
    :goto_12
    return-void

    .line 92
    :cond_13
    :try_start_13
    invoke-virtual/range {p0 .. p0}, Lfr/testudo/spacecorsair/business/player/PlayerShip;->getDrawableObject()Lfr/testudo/spacecorsair/display/Drawable;

    move-result-object v2

    .line 93
    if-eqz v2, :cond_12

    iget-object v3, v2, Lfr/testudo/spacecorsair/display/Drawable;->dimensions:Lfr/testudo/spacecorsair/engine/Vector2;

    if-eqz v3, :cond_12

    .line 94
    iget-object v2, v2, Lfr/testudo/spacecorsair/display/Drawable;->dimensions:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v2, v2, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    sput v2, Lfr/testudo/spacecorsair/mod/ModLevFx;->D:F

    .line 95
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    .line 96
    move-object/from16 v0, p0

    invoke-static {v0, v14, v15}, Lfr/testudo/spacecorsair/mod/ModLevFx;->update(Lfr/testudo/spacecorsair/business/player/PlayerShip;J)V

    .line 97
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLevFx;->str()F

    move-result v16

    .line 98
    const/4 v2, 0x0

    move v13, v2

    :goto_32
    const/16 v2, 0xe

    if-ge v13, v2, :cond_c8

    .line 99
    sget-object v2, Lfr/testudo/spacecorsair/mod/ModLevFx;->wt:[J

    aget-wide v2, v2, v13

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_44

    .line 98
    :goto_40
    add-int/lit8 v2, v13, 0x1

    move v13, v2

    goto :goto_32

    .line 100
    :cond_44
    sget-object v2, Lfr/testudo/spacecorsair/mod/ModLevFx;->wt:[J

    aget-wide v2, v2, v13

    sub-long v2, v14, v2

    long-to-float v2, v2

    const/high16 v3, 0x44e10000    # 1800.0f

    div-float/2addr v2, v3

    .line 101
    const/high16 v3, 0x3f800000    # 1.0f

    cmpl-float v3, v2, v3

    if-ltz v3, :cond_5d

    sget-object v2, Lfr/testudo/spacecorsair/mod/ModLevFx;->wt:[J

    const-wide/16 v4, 0x0

    aput-wide v4, v2, v13

    goto :goto_40

    .line 117
    :catch_5b
    move-exception v2

    goto :goto_12

    .line 102
    :cond_5d
    const v3, 0x3eb33333    # 0.35f

    const v4, 0x3f8ccccd    # 1.1f

    mul-float/2addr v4, v2

    add-float/2addr v3, v4

    sget-object v4, Lfr/testudo/spacecorsair/mod/ModLevFx;->wstr:[F

    aget v4, v4, v13

    mul-float v4, v4, v16

    const v5, 0x3f0ccccd    # 0.55f

    mul-float/2addr v4, v5

    const/high16 v5, 0x3f800000    # 1.0f

    sub-float/2addr v5, v2

    mul-float/2addr v4, v5

    const/high16 v5, 0x3f800000    # 1.0f

    sub-float v2, v5, v2

    mul-float v17, v4, v2

    .line 103
    sget v2, Lfr/testudo/spacecorsair/mod/ModLevFx;->D:F

    mul-float v5, v2, v3

    sget v2, Lfr/testudo/spacecorsair/mod/ModLevFx;->D:F

    mul-float/2addr v2, v3

    const v3, 0x3ee66666    # 0.45f

    mul-float v6, v2, v3

    .line 105
    const-string v2, "fx_glow"

    sget-object v3, Lfr/testudo/spacecorsair/mod/ModLevFx;->wx:[F

    aget v3, v3, v13

    sget-object v4, Lfr/testudo/spacecorsair/mod/ModLevFx;->wy:[F

    aget v4, v4, v13

    sget-object v7, Lfr/testudo/spacecorsair/mod/ModLevFx;->wrot:[F

    aget v7, v7, v13

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const v11, 0x3f333333    # 0.7f

    mul-float v11, v11, v17

    const/4 v12, 0x0

    invoke-static/range {v2 .. v12}, Lfr/testudo/spacecorsair/mod/ModFx;->spr(Ljava/lang/String;FFFFFFFFFZ)V

    .line 106
    const-string v2, "fx_glow"

    sget-object v3, Lfr/testudo/spacecorsair/mod/ModLevFx;->wx:[F

    aget v3, v3, v13

    sget-object v4, Lfr/testudo/spacecorsair/mod/ModLevFx;->wy:[F

    aget v4, v4, v13

    const v7, 0x3f933333    # 1.15f

    mul-float/2addr v5, v7

    const v7, 0x3f933333    # 1.15f

    mul-float/2addr v6, v7

    sget-object v7, Lfr/testudo/spacecorsair/mod/ModLevFx;->wrot:[F

    aget v7, v7, v13

    const v8, 0x3ee66666    # 0.45f

    const v9, 0x3f333333    # 0.7f

    const/high16 v10, 0x3f800000    # 1.0f

    const v11, 0x3eb33333    # 0.35f

    mul-float v11, v11, v17

    const/4 v12, 0x1

    invoke-static/range {v2 .. v12}, Lfr/testudo/spacecorsair/mod/ModFx;->spr(Ljava/lang/String;FFFFFFFFFZ)V

    goto/16 :goto_40

    .line 108
    :cond_c8
    sget v2, Lfr/testudo/spacecorsair/mod/ModLevFx;->heat:F

    const v3, 0x3e19999a    # 0.15f

    cmpl-float v2, v2, v3

    if-lez v2, :cond_12

    .line 109
    sget v2, Lfr/testudo/spacecorsair/mod/ModLevFx;->heat:F

    const v3, 0x3e19999a    # 0.15f

    sub-float/2addr v2, v3

    mul-float v2, v2, v16

    const/high16 v3, 0x3f000000    # 0.5f

    mul-float v11, v2, v3

    .line 110
    const/4 v2, -0x1

    move/from16 v23, v2

    :goto_e0
    const/4 v2, 0x1

    move/from16 v0, v23

    if-gt v0, v2, :cond_12

    .line 111
    move-object/from16 v0, p0

    iget-object v2, v0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    move-object/from16 v0, p0

    iget v3, v0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->spin:F

    move/from16 v0, v23

    int-to-float v4, v0

    sget v5, Lfr/testudo/spacecorsair/mod/ModLevFx;->D:F

    mul-float/2addr v4, v5

    const v5, 0x3eb851ec    # 0.36f

    mul-float/2addr v4, v5

    sget v5, Lfr/testudo/spacecorsair/mod/ModLevFx;->D:F

    const v6, 0x3dcccccd    # 0.1f

    mul-float/2addr v5, v6

    sget-object v6, Lfr/testudo/spacecorsair/mod/ModLevFx;->a:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-static {v2, v3, v4, v5, v6}, Lfr/testudo/spacecorsair/mod/ModFx;->local(Lfr/testudo/spacecorsair/engine/Vector2;FFFLfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 112
    const-string v2, "fx_glow"

    sget-object v3, Lfr/testudo/spacecorsair/mod/ModLevFx;->a:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v3, v3, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    sget-object v4, Lfr/testudo/spacecorsair/mod/ModLevFx;->a:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v4, v4, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    sget v5, Lfr/testudo/spacecorsair/mod/ModLevFx;->D:F

    const v6, 0x3e3851ec    # 0.18f

    mul-float/2addr v5, v6

    sget v6, Lfr/testudo/spacecorsair/mod/ModLevFx;->D:F

    const v7, 0x3f666666    # 0.9f

    mul-float/2addr v6, v7

    move-object/from16 v0, p0

    iget v7, v0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->spin:F

    mul-int/lit8 v8, v23, 0xe

    int-to-float v8, v8

    add-float/2addr v7, v8

    const/high16 v8, 0x3f000000    # 0.5f

    const/high16 v9, 0x3f400000    # 0.75f

    const/high16 v10, 0x3f800000    # 1.0f

    const/4 v12, 0x1

    invoke-static/range {v2 .. v12}, Lfr/testudo/spacecorsair/mod/ModFx;->spr(Ljava/lang/String;FFFFFFFFFZ)V

    .line 113
    move-object/from16 v0, p0

    iget-object v2, v0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    move-object/from16 v0, p0

    iget v3, v0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->spin:F

    move/from16 v0, v23

    int-to-float v4, v0

    sget v5, Lfr/testudo/spacecorsair/mod/ModLevFx;->D:F

    mul-float/2addr v4, v5

    const v5, 0x3eeb851f    # 0.46f

    mul-float/2addr v4, v5

    sget v5, Lfr/testudo/spacecorsair/mod/ModLevFx;->D:F

    const v6, 0x3ed70a3d    # 0.42f

    mul-float/2addr v5, v6

    sget-object v6, Lfr/testudo/spacecorsair/mod/ModLevFx;->a:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-static {v2, v3, v4, v5, v6}, Lfr/testudo/spacecorsair/mod/ModFx;->local(Lfr/testudo/spacecorsair/engine/Vector2;FFFLfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 114
    const-string v12, "fx_glow"

    sget-object v2, Lfr/testudo/spacecorsair/mod/ModLevFx;->a:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v13, v2, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    sget-object v2, Lfr/testudo/spacecorsair/mod/ModLevFx;->a:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v14, v2, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    sget v2, Lfr/testudo/spacecorsair/mod/ModLevFx;->D:F

    const v3, 0x3e0f5c29    # 0.14f

    mul-float v15, v2, v3

    sget v2, Lfr/testudo/spacecorsair/mod/ModLevFx;->D:F

    const v3, 0x3f333333    # 0.7f

    mul-float v16, v2, v3

    move-object/from16 v0, p0

    iget v2, v0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->spin:F

    mul-int/lit8 v3, v23, 0x16

    int-to-float v3, v3

    add-float v17, v2, v3

    const v18, 0x3ecccccd    # 0.4f

    const v19, 0x3f19999a    # 0.6f

    const/high16 v20, 0x3f800000    # 1.0f

    const v2, 0x3f19999a    # 0.6f

    mul-float v21, v11, v2

    const/16 v22, 0x1

    invoke-static/range {v12 .. v22}, Lfr/testudo/spacecorsair/mod/ModFx;->spr(Ljava/lang/String;FFFFFFFFFZ)V
    :try_end_17a
    .catch Ljava/lang/Throwable; {:try_start_13 .. :try_end_17a} :catch_5b

    .line 110
    add-int/lit8 v2, v23, 0x2

    move/from16 v23, v2

    goto/16 :goto_e0
.end method

.method private static update(Lfr/testudo/spacecorsair/business/player/PlayerShip;J)V
    .registers 12

    .prologue
    const/high16 v4, 0x3f000000    # 0.5f

    const/4 v7, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    .line 65
    sget-wide v0, Lfr/testudo/spacecorsair/mod/ModLevFx;->lastT:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_103

    const v0, 0x3c83126f    # 0.016f

    .line 66
    :goto_10
    sput-wide p1, Lfr/testudo/spacecorsair/mod/ModLevFx;->lastT:J

    .line 67
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

    .line 68
    iget-boolean v2, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->isBoosterEnabled:Z

    if-nez v2, :cond_58

    .line 69
    sget v2, Lfr/testudo/spacecorsair/mod/ModLevFx;->vmax:F

    mul-float/2addr v2, v4

    cmpl-float v2, v1, v2

    if-lez v2, :cond_41

    sget v2, Lfr/testudo/spacecorsair/mod/ModLevFx;->vmax:F

    const v3, 0x3ca3d70a    # 0.02f

    mul-float/2addr v3, v0

    sub-float v3, v6, v3

    mul-float/2addr v2, v3

    sput v2, Lfr/testudo/spacecorsair/mod/ModLevFx;->vmax:F

    .line 70
    :cond_41
    sget v2, Lfr/testudo/spacecorsair/mod/ModLevFx;->vmax:F

    invoke-static {v2, v1}, Ljava/lang/Math;->max(FF)F

    move-result v2

    sget v3, Lfr/testudo/spacecorsair/mod/ModLevFx;->vbest:F

    mul-float/2addr v3, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v2

    sput v2, Lfr/testudo/spacecorsair/mod/ModLevFx;->vmax:F

    .line 71
    sget v2, Lfr/testudo/spacecorsair/mod/ModLevFx;->vbest:F

    invoke-static {v2, v1}, Ljava/lang/Math;->max(FF)F

    move-result v2

    sput v2, Lfr/testudo/spacecorsair/mod/ModLevFx;->vbest:F

    .line 73
    :cond_58
    sget v2, Lfr/testudo/spacecorsair/mod/ModLevFx;->vmax:F

    const v3, 0x3a83126f    # 0.001f

    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v2

    div-float/2addr v1, v2

    invoke-static {v6, v1}, Ljava/lang/Math;->min(FF)F

    move-result v1

    sput v1, Lfr/testudo/spacecorsair/mod/ModLevFx;->spd01:F

    .line 74
    sget v1, Lfr/testudo/spacecorsair/mod/ModLevFx;->heat:F

    sget v2, Lfr/testudo/spacecorsair/mod/ModLevFx;->spd01:F

    sget v3, Lfr/testudo/spacecorsair/mod/ModLevFx;->heat:F

    sub-float/2addr v2, v3

    const/high16 v3, 0x40400000    # 3.0f

    mul-float/2addr v3, v0

    invoke-static {v6, v3}, Ljava/lang/Math;->min(FF)F

    move-result v3

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    sput v1, Lfr/testudo/spacecorsair/mod/ModLevFx;->heat:F

    .line 75
    sget v1, Lfr/testudo/spacecorsair/mod/ModLevFx;->agit:F

    neg-float v2, v0

    float-to-double v2, v2

    const-wide/high16 v4, 0x4004000000000000L    # 2.5

    div-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->exp(D)D

    move-result-wide v2

    double-to-float v2, v2

    mul-float/2addr v1, v2

    sput v1, Lfr/testudo/spacecorsair/mod/ModLevFx;->agit:F

    .line 76
    const/high16 v1, 0x42200000    # 40.0f

    const/high16 v2, 0x42a00000    # 80.0f

    sget v3, Lfr/testudo/spacecorsair/mod/ModLevFx;->agit:F

    const/high16 v4, 0x3fc00000    # 1.5f

    mul-float/2addr v3, v4

    invoke-static {v6, v3}, Ljava/lang/Math;->min(FF)F

    move-result v3

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    .line 77
    sget v2, Lfr/testudo/spacecorsair/mod/ModLevFx;->beat:F

    mul-float/2addr v0, v1

    const/high16 v1, 0x42700000    # 60.0f

    div-float/2addr v0, v1

    add-float/2addr v0, v2

    sput v0, Lfr/testudo/spacecorsair/mod/ModLevFx;->beat:F

    .line 78
    sget v0, Lfr/testudo/spacecorsair/mod/ModLevFx;->beat:F

    cmpl-float v0, v0, v6

    if-ltz v0, :cond_ac

    sget v0, Lfr/testudo/spacecorsair/mod/ModLevFx;->beat:F

    sub-float/2addr v0, v6

    sput v0, Lfr/testudo/spacecorsair/mod/ModLevFx;->beat:F

    .line 80
    :cond_ac
    sget v0, Lfr/testudo/spacecorsair/mod/ModLevFx;->spd01:F

    const v1, 0x3df5c28f    # 0.12f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_102

    sget-wide v0, Lfr/testudo/spacecorsair/mod/ModLevFx;->lastRing:J

    sub-long v0, p1, v0

    const-wide/16 v2, 0xdc

    cmp-long v0, v0, v2

    if-ltz v0, :cond_102

    .line 81
    sput-wide p1, Lfr/testudo/spacecorsair/mod/ModLevFx;->lastRing:J

    .line 82
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v1, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->spin:F

    sget v2, Lfr/testudo/spacecorsair/mod/ModLevFx;->D:F

    const v3, 0x3ef0a3d7    # 0.47f

    mul-float/2addr v2, v3

    sget-object v3, Lfr/testudo/spacecorsair/mod/ModLevFx;->a:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-static {v0, v1, v7, v2, v3}, Lfr/testudo/spacecorsair/mod/ModFx;->local(Lfr/testudo/spacecorsair/engine/Vector2;FFFLfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 83
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModLevFx;->wx:[F

    sget v1, Lfr/testudo/spacecorsair/mod/ModLevFx;->wNext:I

    sget-object v2, Lfr/testudo/spacecorsair/mod/ModLevFx;->a:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v2, v2, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    aput v2, v0, v1

    sget-object v0, Lfr/testudo/spacecorsair/mod/ModLevFx;->wy:[F

    sget v1, Lfr/testudo/spacecorsair/mod/ModLevFx;->wNext:I

    sget-object v2, Lfr/testudo/spacecorsair/mod/ModLevFx;->a:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v2, v2, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    aput v2, v0, v1

    sget-object v0, Lfr/testudo/spacecorsair/mod/ModLevFx;->wrot:[F

    sget v1, Lfr/testudo/spacecorsair/mod/ModLevFx;->wNext:I

    iget v2, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->spin:F

    aput v2, v0, v1

    sget-object v0, Lfr/testudo/spacecorsair/mod/ModLevFx;->wstr:[F

    sget v1, Lfr/testudo/spacecorsair/mod/ModLevFx;->wNext:I

    sget v2, Lfr/testudo/spacecorsair/mod/ModLevFx;->spd01:F

    aput v2, v0, v1

    sget-object v0, Lfr/testudo/spacecorsair/mod/ModLevFx;->wt:[J

    sget v1, Lfr/testudo/spacecorsair/mod/ModLevFx;->wNext:I

    aput-wide p1, v0, v1

    .line 84
    sget v0, Lfr/testudo/spacecorsair/mod/ModLevFx;->wNext:I

    add-int/lit8 v0, v0, 0x1

    rem-int/lit8 v0, v0, 0xe

    sput v0, Lfr/testudo/spacecorsair/mod/ModLevFx;->wNext:I

    .line 86
    :cond_102
    return-void

    .line 65
    :cond_103
    const v0, 0x3dcccccd    # 0.1f

    sget-wide v2, Lfr/testudo/spacecorsair/mod/ModLevFx;->lastT:J

    sub-long v2, p1, v2

    long-to-float v1, v2

    const/high16 v2, 0x447a0000    # 1000.0f

    div-float/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    invoke-static {v7, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    goto/16 :goto_10
.end method
