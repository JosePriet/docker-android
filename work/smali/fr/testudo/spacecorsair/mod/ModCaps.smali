.class public final Lfr/testudo/spacecorsair/mod/ModCaps;
.super Ljava/lang/Object;
.source "ModCaps.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lfr/testudo/spacecorsair/mod/ModCaps$Profile;
    }
.end annotation


# static fields
.field private static final a:Lfr/testudo/spacecorsair/engine/Vector2;

.field private static final b:Lfr/testudo/spacecorsair/engine/Vector2;

.field private static boomTick:I

.field private static damageStage:I

.field private static gazBlanked:Ljava/lang/Object;

.field private static gazField:Ljava/lang/reflect/Field;

.field private static gearChecked:Z

.field private static lastDraw:J

.field private static lastLife:F

.field private static level:Ljava/lang/Object;

.field private static lowHullTest:Z

.field private static now:J

.field private static prof:Lfr/testudo/spacecorsair/mod/ModCaps$Profile;

.field private static repairGlow:I

.field private static repairPulse:I

.field private static repairSound:I

.field private static repairTick:I

.field private static shopTick:I

.field private static smokeTick:I

.field private static sparkTick:I

.field private static testWeapon:Ljava/lang/String;

.field private static thrust:F

.field private static wakeTick:I

.field private static warp:I

.field private static wasThrust:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 98
    const/high16 v0, -0x40800000    # -1.0f

    sput v0, Lfr/testudo/spacecorsair/mod/ModCaps;->lastLife:F

    .line 105
    new-instance v0, Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-direct {v0}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>()V

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModCaps;->a:Lfr/testudo/spacecorsair/engine/Vector2;

    new-instance v0, Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-direct {v0}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>()V

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModCaps;->b:Lfr/testudo/spacecorsair/engine/Vector2;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static blankStockGaz()V
    .registers 4

    .prologue
    .line 113
    :try_start_0
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModCaps;->gazField:Ljava/lang/reflect/Field;

    if-nez v0, :cond_14

    .line 114
    const-class v0, Lfr/testudo/spacecorsair/business/player/PlayerShip;

    const-string v1, "gazDrawables"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModCaps;->gazField:Ljava/lang/reflect/Field;

    .line 115
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModCaps;->gazField:Ljava/lang/reflect/Field;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 117
    :cond_14
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModCaps;->gazField:Ljava/lang/reflect/Field;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 118
    if-eqz v0, :cond_22

    sget-object v1, Lfr/testudo/spacecorsair/mod/ModCaps;->gazBlanked:Ljava/lang/Object;

    if-ne v0, v1, :cond_22

    .line 131
    :goto_21
    return-void

    .line 120
    :cond_22
    if-nez v0, :cond_3e

    .line 121
    const/4 v0, 0x5

    new-array v0, v0, [Lfr/testudo/spacecorsair/display/Drawable;

    .line 122
    sget-object v1, Lfr/testudo/spacecorsair/mod/ModCaps;->gazField:Ljava/lang/reflect/Field;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 126
    :goto_2d
    const/4 v1, 0x0

    :goto_2e
    array-length v2, v0

    if-ge v1, v2, :cond_41

    aget-object v2, v0, v1

    sget-object v3, Lfr/testudo/spacecorsair/mod/ModFx;->EMPTY:Lfr/testudo/spacecorsair/mod/ModFx$Sprite;

    if-eq v2, v3, :cond_3b

    sget-object v2, Lfr/testudo/spacecorsair/mod/ModFx;->EMPTY:Lfr/testudo/spacecorsair/mod/ModFx$Sprite;

    aput-object v2, v0, v1

    :cond_3b
    add-int/lit8 v1, v1, 0x1

    goto :goto_2e

    .line 124
    :cond_3e
    check-cast v0, [Lfr/testudo/spacecorsair/display/Drawable;

    goto :goto_2d

    .line 127
    :cond_41
    sput-object v0, Lfr/testudo/spacecorsair/mod/ModCaps;->gazBlanked:Ljava/lang/Object;
    :try_end_43
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_43} :catch_44

    goto :goto_21

    .line 128
    :catch_44
    move-exception v0

    goto :goto_21
.end method

.method public static drawOver(Lfr/testudo/spacecorsair/business/player/PlayerShip;)V
    .registers 26

    .prologue
    .line 359
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->shipSpec:Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;

    if-eqz v2, :cond_14

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->removed:Z

    if-nez v2, :cond_14

    sget-object v2, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v2, v2, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-boolean v2, v2, Lfr/testudo/spacecorsair/game/Game;->mapMode:Z

    if-eqz v2, :cond_15

    .line 437
    :cond_14
    :goto_14
    return-void

    .line 360
    :cond_15
    invoke-static/range {p0 .. p0}, Lfr/testudo/spacecorsair/mod/ModCaps;->profile(Lfr/testudo/spacecorsair/business/player/PlayerShip;)Lfr/testudo/spacecorsair/mod/ModCaps$Profile;

    move-result-object v20

    .line 361
    invoke-static/range {p0 .. p0}, Lfr/testudo/spacecorsair/mod/ModCaps;->size(Lfr/testudo/spacecorsair/business/player/PlayerShip;)F

    move-result v23

    .line 362
    sget-wide v18, Lfr/testudo/spacecorsair/mod/ModCaps;->now:J

    .line 365
    sget v2, Lfr/testudo/spacecorsair/mod/ModCaps;->damageStage:I

    if-lez v2, :cond_123

    move-object/from16 v0, v20

    iget v2, v0, Lfr/testudo/spacecorsair/mod/ModCaps$Profile;->data:I

    if-ltz v2, :cond_123

    .line 366
    sget-object v2, Lfr/testudo/spacecorsair/mod/ModFxData;->DMG:[[F

    move-object/from16 v0, v20

    iget v3, v0, Lfr/testudo/spacecorsair/mod/ModCaps$Profile;->data:I

    aget-object v21, v2, v3

    .line 367
    move-object/from16 v0, v21

    array-length v2, v0

    div-int/lit8 v3, v2, 0x2

    sget v2, Lfr/testudo/spacecorsair/mod/ModCaps;->damageStage:I

    const/4 v4, 0x1

    if-ne v2, v4, :cond_118

    const/4 v2, 0x2

    :goto_3c
    invoke-static {v3, v2}, Ljava/lang/Math;->min(II)I

    move-result v22

    .line 368
    const/4 v2, 0x0

    move/from16 v17, v2

    :goto_43
    move/from16 v0, v17

    move/from16 v1, v22

    if-ge v0, v1, :cond_123

    .line 369
    move-object/from16 v0, p0

    iget-object v2, v0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    move-object/from16 v0, p0

    iget v3, v0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->spin:F

    mul-int/lit8 v4, v17, 0x2

    aget v4, v21, v4

    mul-float v4, v4, v23

    mul-int/lit8 v5, v17, 0x2

    add-int/lit8 v5, v5, 0x1

    aget v5, v21, v5

    mul-float v5, v5, v23

    sget-object v6, Lfr/testudo/spacecorsair/mod/ModCaps;->a:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-static {v2, v3, v4, v5, v6}, Lfr/testudo/spacecorsair/mod/ModFx;->local(Lfr/testudo/spacecorsair/engine/Vector2;FFFLfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 370
    const/high16 v2, 0x42380000    # 46.0f

    const v3, 0x3df5c28f    # 0.12f

    const v4, 0x3cf5c28f    # 0.03f

    rem-int/lit8 v5, v17, 0x3

    int-to-float v5, v5

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    mul-float v3, v3, v23

    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v5

    .line 371
    const-string v2, "fx_scorch"

    sget-object v3, Lfr/testudo/spacecorsair/mod/ModCaps;->a:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v3, v3, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    sget-object v4, Lfr/testudo/spacecorsair/mod/ModCaps;->a:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v4, v4, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    move-object/from16 v0, p0

    iget v6, v0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->spin:F

    mul-int/lit8 v7, v17, 0x43

    int-to-float v7, v7

    add-float/2addr v7, v6

    const/high16 v8, 0x3f800000    # 1.0f

    const/high16 v9, 0x3f800000    # 1.0f

    const/high16 v10, 0x3f800000    # 1.0f

    const v11, 0x3f59999a    # 0.85f

    const/4 v12, 0x0

    move v6, v5

    invoke-static/range {v2 .. v12}, Lfr/testudo/spacecorsair/mod/ModFx;->spr(Ljava/lang/String;FFFFFFFFFZ)V

    .line 372
    sget v2, Lfr/testudo/spacecorsair/mod/ModCaps;->damageStage:I

    const/4 v3, 0x2

    if-lt v2, v3, :cond_112

    rem-int/lit8 v2, v17, 0x2

    if-nez v2, :cond_112

    .line 373
    const v2, 0x3f0ccccd    # 0.55f

    const v3, 0x3ee66666    # 0.45f

    move-wide/from16 v0, v18

    long-to-double v6, v0

    const-wide v8, 0x4060400000000000L    # 130.0

    div-double/2addr v6, v8

    move/from16 v0, v17

    int-to-double v8, v0

    add-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    double-to-float v4, v6

    mul-float/2addr v3, v4

    add-float v24, v2, v3

    .line 374
    const-string v6, "fx_crack"

    sget-object v2, Lfr/testudo/spacecorsair/mod/ModCaps;->a:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v7, v2, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    sget-object v2, Lfr/testudo/spacecorsair/mod/ModCaps;->a:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v8, v2, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    const v2, 0x3fa66666    # 1.3f

    mul-float v9, v5, v2

    const v2, 0x3fa66666    # 1.3f

    mul-float v10, v5, v2

    move-object/from16 v0, p0

    iget v2, v0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->spin:F

    mul-int/lit8 v3, v17, 0x29

    int-to-float v3, v3

    add-float v11, v2, v3

    const/high16 v12, 0x3f800000    # 1.0f

    const/high16 v13, 0x3f800000    # 1.0f

    const/high16 v14, 0x3f800000    # 1.0f

    const v2, 0x3f19999a    # 0.6f

    const v3, 0x3ecccccd    # 0.4f

    mul-float v3, v3, v24

    add-float v15, v2, v3

    const/16 v16, 0x0

    invoke-static/range {v6 .. v16}, Lfr/testudo/spacecorsair/mod/ModFx;->spr(Ljava/lang/String;FFFFFFFFFZ)V

    .line 375
    const-string v2, "fx_glow"

    sget-object v3, Lfr/testudo/spacecorsair/mod/ModCaps;->a:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v3, v3, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    sget-object v4, Lfr/testudo/spacecorsair/mod/ModCaps;->a:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v4, v4, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    const v6, 0x3f666666    # 0.9f

    mul-float v13, v5, v6

    const v6, 0x3f666666    # 0.9f

    mul-float/2addr v6, v5

    const/4 v7, 0x0

    const/high16 v8, 0x3f800000    # 1.0f

    const v9, 0x3ee66666    # 0.45f

    const v10, 0x3dcccccd    # 0.1f

    const/high16 v5, 0x3e800000    # 0.25f

    mul-float v11, v5, v24

    const/4 v12, 0x1

    move v5, v13

    invoke-static/range {v2 .. v12}, Lfr/testudo/spacecorsair/mod/ModFx;->spr(Ljava/lang/String;FFFFFFFFFZ)V

    .line 368
    :cond_112
    add-int/lit8 v2, v17, 0x1

    move/from16 v17, v2

    goto/16 :goto_43

    .line 367
    :cond_118
    sget v2, Lfr/testudo/spacecorsair/mod/ModCaps;->damageStage:I

    const/4 v4, 0x2

    if-ne v2, v4, :cond_120

    const/4 v2, 0x4

    goto/16 :goto_3c

    :cond_120
    const/4 v2, 0x7

    goto/16 :goto_3c

    .line 380
    :cond_123
    invoke-static/range {p0 .. p0}, Lfr/testudo/spacecorsair/mod/ModShield;->draw(Lfr/testudo/spacecorsair/business/player/PlayerShip;)V

    .line 381
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Lfr/testudo/spacecorsair/mod/ModTitan;->drawTurrets(Lfr/testudo/spacecorsair/business/player/PlayerShip;Lfr/testudo/spacecorsair/mod/ModCaps$Profile;)V

    .line 383
    move-object/from16 v0, v20

    iget-boolean v2, v0, Lfr/testudo/spacecorsair/mod/ModCaps$Profile;->top:Z

    if-nez v2, :cond_139

    move-object/from16 v0, v20

    iget-boolean v2, v0, Lfr/testudo/spacecorsair/mod/ModCaps$Profile;->titan:Z

    if-eqz v2, :cond_33f

    .line 385
    :cond_139
    move-object/from16 v0, v20

    iget v2, v0, Lfr/testudo/spacecorsair/mod/ModCaps$Profile;->data:I

    if-ltz v2, :cond_2bd

    .line 386
    sget-object v2, Lfr/testudo/spacecorsair/mod/ModFxData;->LIGHTS:[[F

    move-object/from16 v0, v20

    iget v3, v0, Lfr/testudo/spacecorsair/mod/ModCaps$Profile;->data:I

    aget-object v14, v2, v3

    .line 387
    array-length v2, v14

    div-int/lit8 v3, v2, 0x5

    move-object/from16 v0, v20

    iget-boolean v2, v0, Lfr/testudo/spacecorsair/mod/ModCaps$Profile;->titan:Z

    if-eqz v2, :cond_1d9

    const/16 v2, 0x8

    :goto_152
    invoke-static {v3, v2}, Ljava/lang/Math;->min(II)I

    move-result v15

    .line 388
    const/4 v2, 0x0

    move v13, v2

    :goto_158
    if-ge v13, v15, :cond_1dc

    .line 389
    mul-int/lit8 v6, v13, 0x5

    .line 390
    const/high16 v2, 0x3f000000    # 0.5f

    const/high16 v3, 0x3f000000    # 0.5f

    move-wide/from16 v0, v18

    long-to-double v4, v0

    const-wide v8, 0x4080400000000000L    # 520.0

    mul-int/lit8 v7, v13, 0x5a

    int-to-double v10, v7

    add-double/2addr v8, v10

    div-double/2addr v4, v8

    int-to-double v8, v13

    const-wide v10, 0x3ffb333333333333L    # 1.7

    mul-double/2addr v8, v10

    add-double/2addr v4, v8

    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    double-to-float v4, v4

    mul-float/2addr v3, v4

    add-float v11, v2, v3

    .line 391
    move-object/from16 v0, p0

    iget-object v2, v0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    move-object/from16 v0, p0

    iget v3, v0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->spin:F

    aget v4, v14, v6

    mul-float v4, v4, v23

    add-int/lit8 v5, v6, 0x1

    aget v5, v14, v5

    mul-float v5, v5, v23

    sget-object v7, Lfr/testudo/spacecorsair/mod/ModCaps;->a:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-static {v2, v3, v4, v5, v7}, Lfr/testudo/spacecorsair/mod/ModFx;->local(Lfr/testudo/spacecorsair/engine/Vector2;FFFLfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 392
    const v2, 0x3d0f5c29    # 0.035f

    mul-float v2, v2, v23

    const/high16 v3, 0x41000000    # 8.0f

    add-float v5, v2, v3

    .line 393
    const-string v2, "fx_core"

    sget-object v3, Lfr/testudo/spacecorsair/mod/ModCaps;->a:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v3, v3, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    sget-object v4, Lfr/testudo/spacecorsair/mod/ModCaps;->a:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v4, v4, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    const/4 v7, 0x0

    const v8, 0x3ecccccd    # 0.4f

    add-int/lit8 v9, v6, 0x2

    aget v9, v14, v9

    invoke-static {v8, v9}, Ljava/lang/Math;->max(FF)F

    move-result v8

    const v9, 0x3ecccccd    # 0.4f

    add-int/lit8 v10, v6, 0x3

    aget v10, v14, v10

    invoke-static {v9, v10}, Ljava/lang/Math;->max(FF)F

    move-result v9

    const v10, 0x3ecccccd    # 0.4f

    add-int/lit8 v6, v6, 0x4

    aget v6, v14, v6

    invoke-static {v10, v6}, Ljava/lang/Math;->max(FF)F

    move-result v10

    const/high16 v6, 0x3e800000    # 0.25f

    const v12, 0x3f0ccccd    # 0.55f

    mul-float/2addr v11, v12

    add-float/2addr v11, v6

    const/4 v12, 0x1

    move v6, v5

    invoke-static/range {v2 .. v12}, Lfr/testudo/spacecorsair/mod/ModFx;->spr(Ljava/lang/String;FFFFFFFFFZ)V

    .line 388
    add-int/lit8 v2, v13, 0x1

    move v13, v2

    goto :goto_158

    .line 387
    :cond_1d9
    const/4 v2, 0x5

    goto/16 :goto_152

    .line 396
    :cond_1dc
    sget-object v2, Lfr/testudo/spacecorsair/mod/ModFxData;->NAV:[[F

    move-object/from16 v0, v20

    iget v3, v0, Lfr/testudo/spacecorsair/mod/ModCaps$Profile;->data:I

    aget-object v13, v2, v3

    .line 397
    const-wide/16 v2, 0x578

    rem-long v2, v18, v2

    .line 398
    const-wide/16 v4, 0xa0

    cmp-long v2, v2, v4

    if-gez v2, :cond_425

    const/high16 v11, 0x3f800000    # 1.0f

    .line 399
    :goto_1f0
    const v2, 0x3cf5c28f    # 0.03f

    mul-float v2, v2, v23

    const/high16 v3, 0x41400000    # 12.0f

    add-float v14, v2, v3

    .line 400
    move-object/from16 v0, p0

    iget-object v2, v0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    move-object/from16 v0, p0

    iget v3, v0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->spin:F

    const/4 v4, 0x0

    aget v4, v13, v4

    mul-float v4, v4, v23

    const/4 v5, 0x1

    aget v5, v13, v5

    mul-float v5, v5, v23

    sget-object v6, Lfr/testudo/spacecorsair/mod/ModCaps;->a:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-static {v2, v3, v4, v5, v6}, Lfr/testudo/spacecorsair/mod/ModFx;->local(Lfr/testudo/spacecorsair/engine/Vector2;FFFLfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 401
    const-string v2, "fx_core"

    sget-object v3, Lfr/testudo/spacecorsair/mod/ModCaps;->a:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v3, v3, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    sget-object v4, Lfr/testudo/spacecorsair/mod/ModCaps;->a:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v4, v4, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    const/high16 v5, 0x3f800000    # 1.0f

    add-float/2addr v5, v11

    mul-float/2addr v5, v14

    const/high16 v6, 0x3f800000    # 1.0f

    add-float/2addr v6, v11

    mul-float/2addr v6, v14

    const/4 v7, 0x0

    const/high16 v8, 0x3f800000    # 1.0f

    const v9, 0x3e19999a    # 0.15f

    const v10, 0x3dcccccd    # 0.1f

    const/4 v12, 0x1

    invoke-static/range {v2 .. v12}, Lfr/testudo/spacecorsair/mod/ModFx;->spr(Ljava/lang/String;FFFFFFFFFZ)V

    .line 402
    const-wide/16 v2, 0x2bc

    add-long v2, v2, v18

    const-wide/16 v4, 0x578

    rem-long/2addr v2, v4

    .line 403
    const-wide/16 v4, 0xa0

    cmp-long v2, v2, v4

    if-gez v2, :cond_42a

    const/high16 v11, 0x3f800000    # 1.0f

    .line 404
    :goto_23e
    move-object/from16 v0, p0

    iget-object v2, v0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    move-object/from16 v0, p0

    iget v3, v0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->spin:F

    const/4 v4, 0x2

    aget v4, v13, v4

    mul-float v4, v4, v23

    const/4 v5, 0x3

    aget v5, v13, v5

    mul-float v5, v5, v23

    sget-object v6, Lfr/testudo/spacecorsair/mod/ModCaps;->a:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-static {v2, v3, v4, v5, v6}, Lfr/testudo/spacecorsair/mod/ModFx;->local(Lfr/testudo/spacecorsair/engine/Vector2;FFFLfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 405
    const-string v2, "fx_core"

    sget-object v3, Lfr/testudo/spacecorsair/mod/ModCaps;->a:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v3, v3, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    sget-object v4, Lfr/testudo/spacecorsair/mod/ModCaps;->a:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v4, v4, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    const/high16 v5, 0x3f800000    # 1.0f

    add-float/2addr v5, v11

    mul-float/2addr v5, v14

    const/high16 v6, 0x3f800000    # 1.0f

    add-float/2addr v6, v11

    mul-float/2addr v6, v14

    const/4 v7, 0x0

    const v8, 0x3e19999a    # 0.15f

    const/high16 v9, 0x3f800000    # 1.0f

    const v10, 0x3e99999a    # 0.3f

    const/4 v12, 0x1

    invoke-static/range {v2 .. v12}, Lfr/testudo/spacecorsair/mod/ModFx;->spr(Ljava/lang/String;FFFFFFFFFZ)V

    .line 406
    move-object/from16 v0, v20

    iget-boolean v2, v0, Lfr/testudo/spacecorsair/mod/ModCaps$Profile;->titan:Z

    if-eqz v2, :cond_2bd

    const-wide/16 v2, 0x834

    rem-long v2, v18, v2

    const-wide/16 v4, 0x5a

    cmp-long v2, v2, v4

    if-gez v2, :cond_2bd

    .line 407
    move-object/from16 v0, p0

    iget-object v2, v0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    move-object/from16 v0, p0

    iget v3, v0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->spin:F

    const/4 v4, 0x0

    const v5, 0x3ef0a3d7    # 0.47f

    mul-float v5, v5, v23

    sget-object v6, Lfr/testudo/spacecorsair/mod/ModCaps;->a:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-static {v2, v3, v4, v5, v6}, Lfr/testudo/spacecorsair/mod/ModFx;->local(Lfr/testudo/spacecorsair/engine/Vector2;FFFLfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 408
    const-string v2, "fx_streak"

    sget-object v3, Lfr/testudo/spacecorsair/mod/ModCaps;->a:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v3, v3, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    sget-object v4, Lfr/testudo/spacecorsair/mod/ModCaps;->a:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v4, v4, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    const/high16 v5, 0x3f000000    # 0.5f

    mul-float v5, v5, v23

    const/high16 v6, 0x3f000000    # 0.5f

    mul-float v6, v6, v23

    move-object/from16 v0, p0

    iget v7, v0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->spin:F

    const/high16 v8, 0x42b40000    # 90.0f

    add-float/2addr v7, v8

    const/high16 v8, 0x3f800000    # 1.0f

    const/high16 v9, 0x3f800000    # 1.0f

    const/high16 v10, 0x3f800000    # 1.0f

    const v11, 0x3f666666    # 0.9f

    const/4 v12, 0x1

    invoke-static/range {v2 .. v12}, Lfr/testudo/spacecorsair/mod/ModFx;->spr(Ljava/lang/String;FFFFFFFFFZ)V

    .line 412
    :cond_2bd
    move-object/from16 v0, v20

    iget-boolean v2, v0, Lfr/testudo/spacecorsair/mod/ModCaps$Profile;->titan:Z

    if-eqz v2, :cond_33f

    move-object/from16 v0, p0

    iget-object v2, v0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->shield:Lfr/testudo/spacecorsair/business/player/Shield;

    if-eqz v2, :cond_33f

    move-object/from16 v0, p0

    iget-object v2, v0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->shield:Lfr/testudo/spacecorsair/business/player/Shield;

    iget v2, v2, Lfr/testudo/spacecorsair/business/player/Shield;->capacity:F

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-lez v2, :cond_33f

    .line 413
    move-object/from16 v0, p0

    iget-object v2, v0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->shield:Lfr/testudo/spacecorsair/business/player/Shield;

    iget v2, v2, Lfr/testudo/spacecorsair/business/player/Shield;->currentValue:F

    move-object/from16 v0, p0

    iget-object v3, v0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->shield:Lfr/testudo/spacecorsair/business/player/Shield;

    iget v3, v3, Lfr/testudo/spacecorsair/business/player/Shield;->capacity:F

    div-float v11, v2, v3

    .line 414
    move-object/from16 v0, v20

    iget v2, v0, Lfr/testudo/spacecorsair/mod/ModCaps$Profile;->data:I

    if-ltz v2, :cond_42f

    sget-object v2, Lfr/testudo/spacecorsair/mod/ModFxData;->RADIUS:[F

    move-object/from16 v0, v20

    iget v3, v0, Lfr/testudo/spacecorsair/mod/ModCaps$Profile;->data:I

    aget v2, v2, v3

    :goto_2f0
    mul-float v6, v2, v23

    .line 415
    const/high16 v2, 0x3f000000    # 0.5f

    const/high16 v3, 0x3f000000    # 0.5f

    move-wide/from16 v0, v18

    long-to-double v4, v0

    const-wide v8, 0x408c200000000000L    # 900.0

    div-double/2addr v4, v8

    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    double-to-float v4, v4

    mul-float/2addr v3, v4

    add-float v12, v2, v3

    .line 416
    const-string v2, "fx_hex"

    move-object/from16 v0, p0

    iget-object v3, v0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v3, v3, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    move-object/from16 v0, p0

    iget-object v4, v0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v4, v4, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    const v5, 0x40133333    # 2.3f

    mul-float/2addr v5, v6

    const v7, 0x40133333    # 2.3f

    mul-float/2addr v6, v7

    move-wide/from16 v0, v18

    long-to-float v7, v0

    const/high16 v8, 0x42f00000    # 120.0f

    div-float/2addr v7, v8

    const/high16 v8, 0x43b40000    # 360.0f

    rem-float/2addr v7, v8

    move-object/from16 v0, v20

    iget v8, v0, Lfr/testudo/spacecorsair/mod/ModCaps$Profile;->ar:F

    move-object/from16 v0, v20

    iget v9, v0, Lfr/testudo/spacecorsair/mod/ModCaps$Profile;->ag:F

    move-object/from16 v0, v20

    iget v10, v0, Lfr/testudo/spacecorsair/mod/ModCaps$Profile;->ab:F

    const v13, 0x3d8f5c29    # 0.07f

    const v14, 0x3d75c28f    # 0.06f

    mul-float/2addr v12, v14

    add-float/2addr v12, v13

    mul-float/2addr v11, v12

    const/4 v12, 0x1

    invoke-static/range {v2 .. v12}, Lfr/testudo/spacecorsair/mod/ModFx;->spr(Ljava/lang/String;FFFFFFFFFZ)V

    .line 420
    :cond_33f
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Lfr/testudo/spacecorsair/mod/ModTitan;->drawOver(Lfr/testudo/spacecorsair/business/player/PlayerShip;Lfr/testudo/spacecorsair/mod/ModCaps$Profile;)V

    .line 421
    invoke-static/range {p0 .. p0}, Lfr/testudo/spacecorsair/mod/ModFaction;->draw(Lfr/testudo/spacecorsair/business/player/PlayerShip;)V

    .line 422
    const/4 v2, 0x1

    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModFx;->drawParticles(Z)V

    .line 423
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 424
    sget-wide v2, Lfr/testudo/spacecorsair/mod/ModCaps;->lastDraw:J

    const-wide/16 v6, 0x0

    cmp-long v2, v2, v6

    if-nez v2, :cond_434

    const-wide/16 v2, 0x10

    :goto_35b
    invoke-static {v2, v3}, Lfr/testudo/spacecorsair/mod/ModWeapons;->drawArcs(J)V

    .line 425
    sput-wide v4, Lfr/testudo/spacecorsair/mod/ModCaps;->lastDraw:J

    .line 427
    sget v2, Lfr/testudo/spacecorsair/mod/ModCaps;->warp:I

    if-lez v2, :cond_14

    .line 428
    sget v2, Lfr/testudo/spacecorsair/mod/ModCaps;->warp:I

    int-to-float v2, v2

    const v3, 0x44898000    # 1100.0f

    div-float v11, v2, v3

    .line 429
    const/high16 v2, 0x3f800000    # 1.0f

    sub-float v17, v2, v11

    .line 430
    const-string v2, "fx_core"

    move-object/from16 v0, p0

    iget-object v3, v0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v3, v3, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    move-object/from16 v0, p0

    iget-object v4, v0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v4, v4, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    const v5, 0x3f19999a    # 0.6f

    const v6, 0x3fcccccd    # 1.6f

    mul-float v6, v6, v17

    add-float/2addr v5, v6

    mul-float v5, v5, v23

    const v6, 0x3f19999a    # 0.6f

    const v7, 0x3fcccccd    # 1.6f

    mul-float v7, v7, v17

    add-float/2addr v6, v7

    mul-float v6, v6, v23

    const/4 v7, 0x0

    move-object/from16 v0, v20

    iget v8, v0, Lfr/testudo/spacecorsair/mod/ModCaps$Profile;->ar:F

    const/high16 v9, 0x3f000000    # 0.5f

    mul-float/2addr v8, v9

    const/high16 v9, 0x3f000000    # 0.5f

    add-float/2addr v8, v9

    move-object/from16 v0, v20

    iget v9, v0, Lfr/testudo/spacecorsair/mod/ModCaps$Profile;->ag:F

    const/high16 v10, 0x3f000000    # 0.5f

    mul-float/2addr v9, v10

    const/high16 v10, 0x3f000000    # 0.5f

    add-float/2addr v9, v10

    move-object/from16 v0, v20

    iget v10, v0, Lfr/testudo/spacecorsair/mod/ModCaps$Profile;->ab:F

    const/high16 v12, 0x3f000000    # 0.5f

    mul-float/2addr v10, v12

    const/high16 v12, 0x3f000000    # 0.5f

    add-float/2addr v10, v12

    const/4 v12, 0x1

    invoke-static/range {v2 .. v12}, Lfr/testudo/spacecorsair/mod/ModFx;->spr(Ljava/lang/String;FFFFFFFFFZ)V

    .line 431
    const-string v12, "fx_shock"

    move-object/from16 v0, p0

    iget-object v2, v0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v13, v2, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    move-object/from16 v0, p0

    iget-object v2, v0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v14, v2, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    const/high16 v2, 0x3f000000    # 0.5f

    const v3, 0x40266666    # 2.6f

    mul-float v3, v3, v17

    add-float/2addr v2, v3

    mul-float v15, v23, v2

    const/high16 v2, 0x3f000000    # 0.5f

    const v3, 0x40266666    # 2.6f

    mul-float v3, v3, v17

    add-float/2addr v2, v3

    mul-float v16, v23, v2

    const/high16 v2, 0x42b40000    # 90.0f

    mul-float v17, v17, v2

    move-object/from16 v0, v20

    iget v0, v0, Lfr/testudo/spacecorsair/mod/ModCaps$Profile;->ar:F

    move/from16 v18, v0

    move-object/from16 v0, v20

    iget v0, v0, Lfr/testudo/spacecorsair/mod/ModCaps$Profile;->ag:F

    move/from16 v19, v0

    move-object/from16 v0, v20

    iget v0, v0, Lfr/testudo/spacecorsair/mod/ModCaps$Profile;->ab:F

    move/from16 v20, v0

    const v2, 0x3f666666    # 0.9f

    mul-float v21, v11, v2

    const/16 v22, 0x1

    invoke-static/range {v12 .. v22}, Lfr/testudo/spacecorsair/mod/ModFx;->spr(Ljava/lang/String;FFFFFFFFFZ)V

    .line 432
    const-string v2, "fx_streak"

    move-object/from16 v0, p0

    iget-object v3, v0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v3, v3, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    move-object/from16 v0, p0

    iget-object v4, v0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v4, v4, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    const/high16 v5, 0x40600000    # 3.5f

    mul-float v5, v5, v23

    const v6, 0x3ecccccd    # 0.4f

    add-float/2addr v6, v11

    mul-float/2addr v5, v6

    const v6, 0x3f19999a    # 0.6f

    mul-float v6, v6, v23

    const/4 v7, 0x0

    const/high16 v8, 0x3f800000    # 1.0f

    const/high16 v9, 0x3f800000    # 1.0f

    const/high16 v10, 0x3f800000    # 1.0f

    const/4 v12, 0x1

    invoke-static/range {v2 .. v12}, Lfr/testudo/spacecorsair/mod/ModFx;->spr(Ljava/lang/String;FFFFFFFFFZ)V

    goto/16 :goto_14

    .line 434
    :catch_422
    move-exception v2

    goto/16 :goto_14

    .line 398
    :cond_425
    const v11, 0x3e19999a    # 0.15f

    goto/16 :goto_1f0

    .line 403
    :cond_42a
    const v11, 0x3e19999a    # 0.15f

    goto/16 :goto_23e

    .line 414
    :cond_42f
    const v2, 0x3ee66666    # 0.45f

    goto/16 :goto_2f0

    .line 424
    :cond_434
    const-wide/16 v2, 0x64

    sget-wide v6, Lfr/testudo/spacecorsair/mod/ModCaps;->lastDraw:J

    sub-long v6, v4, v6

    invoke-static {v2, v3, v6, v7}, Ljava/lang/Math;->min(JJ)J
    :try_end_43d
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_43d} :catch_422

    move-result-wide v2

    goto/16 :goto_35b
.end method

.method public static drawUnder(Lfr/testudo/spacecorsair/business/player/PlayerShip;)V
    .registers 27

    .prologue
    .line 316
    const/16 v2, 0x1a4

    sput v2, Lfr/testudo/spacecorsair/mod/ModFx;->budget:I

    .line 317
    move-object/from16 v0, p0

    iget-object v2, v0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->shipSpec:Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;

    if-eqz v2, :cond_18

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->removed:Z

    if-nez v2, :cond_18

    sget-object v2, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v2, v2, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-boolean v2, v2, Lfr/testudo/spacecorsair/game/Game;->mapMode:Z

    if-eqz v2, :cond_19

    .line 354
    :cond_18
    :goto_18
    return-void

    .line 318
    :cond_19
    invoke-static/range {p0 .. p0}, Lfr/testudo/spacecorsair/mod/ModCaps;->profile(Lfr/testudo/spacecorsair/business/player/PlayerShip;)Lfr/testudo/spacecorsair/mod/ModCaps$Profile;

    move-result-object v20

    .line 319
    invoke-static/range {p0 .. p0}, Lfr/testudo/spacecorsair/mod/ModCaps;->size(Lfr/testudo/spacecorsair/business/player/PlayerShip;)F

    move-result v21

    .line 320
    sget-wide v22, Lfr/testudo/spacecorsair/mod/ModCaps;->now:J

    .line 321
    const/4 v2, 0x0

    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModFx;->drawParticles(Z)V

    .line 323
    move-object/from16 v0, v20

    iget-boolean v2, v0, Lfr/testudo/spacecorsair/mod/ModCaps$Profile;->flames:Z

    if-eqz v2, :cond_1a0

    .line 324
    sget-object v2, Lfr/testudo/spacecorsair/mod/ModFxData;->ENGINES:[[F

    move-object/from16 v0, v20

    iget v3, v0, Lfr/testudo/spacecorsair/mod/ModCaps$Profile;->data:I

    aget-object v24, v2, v3

    .line 325
    move-object/from16 v0, v20

    iget-boolean v2, v0, Lfr/testudo/spacecorsair/mod/ModCaps$Profile;->titan:Z

    if-eqz v2, :cond_183

    const v2, 0x3e75c28f    # 0.24f

    move/from16 v18, v2

    .line 326
    :goto_40
    const/4 v2, 0x0

    move/from16 v19, v2

    :goto_43
    add-int/lit8 v2, v19, 0x2

    move-object/from16 v0, v24

    array-length v3, v0

    if-ge v2, v3, :cond_1a0

    .line 327
    add-int/lit8 v2, v19, 0x2

    aget v2, v24, v2

    mul-float v2, v2, v21

    const v3, 0x3fa66666    # 1.3f

    mul-float/2addr v3, v2

    move-object/from16 v0, v20

    iget-boolean v2, v0, Lfr/testudo/spacecorsair/mod/ModCaps$Profile;->titan:Z

    if-eqz v2, :cond_197

    const v2, 0x3d8f5c29    # 0.07f

    :goto_5d
    mul-float v2, v2, v21

    invoke-static {v3, v2}, Ljava/lang/Math;->max(FF)F

    move-result v25

    .line 328
    move-object/from16 v0, p0

    iget-object v2, v0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    move-object/from16 v0, p0

    iget v3, v0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->spin:F

    aget v4, v24, v19

    mul-float v4, v4, v21

    add-int/lit8 v5, v19, 0x1

    aget v5, v24, v5

    mul-float v5, v5, v21

    sget-object v6, Lfr/testudo/spacecorsair/mod/ModCaps;->a:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-static {v2, v3, v4, v5, v6}, Lfr/testudo/spacecorsair/mod/ModFx;->local(Lfr/testudo/spacecorsair/engine/Vector2;FFFLfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 330
    sget v2, Lfr/testudo/spacecorsair/mod/ModCaps;->thrust:F

    const v3, 0x3d23d70a    # 0.04f

    cmpl-float v2, v2, v3

    if-lez v2, :cond_17d

    .line 331
    const-string v2, "fx_glow"

    sget-object v3, Lfr/testudo/spacecorsair/mod/ModCaps;->a:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v3, v3, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    sget-object v4, Lfr/testudo/spacecorsair/mod/ModCaps;->a:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v4, v4, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    const/high16 v5, 0x40400000    # 3.0f

    mul-float v5, v5, v25

    const/high16 v6, 0x40400000    # 3.0f

    mul-float v6, v6, v25

    const/4 v7, 0x0

    move-object/from16 v0, v20

    iget v8, v0, Lfr/testudo/spacecorsair/mod/ModCaps$Profile;->er:F

    move-object/from16 v0, v20

    iget v9, v0, Lfr/testudo/spacecorsair/mod/ModCaps$Profile;->eg:F

    move-object/from16 v0, v20

    iget v10, v0, Lfr/testudo/spacecorsair/mod/ModCaps$Profile;->eb:F

    const v11, 0x3f4ccccd    # 0.8f

    sget v12, Lfr/testudo/spacecorsair/mod/ModCaps;->thrust:F

    mul-float/2addr v11, v12

    const/4 v12, 0x1

    invoke-static/range {v2 .. v12}, Lfr/testudo/spacecorsair/mod/ModFx;->spr(Ljava/lang/String;FFFFFFFFFZ)V

    .line 332
    const v2, 0x3f6147ae    # 0.88f

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v4

    double-to-float v3, v4

    const v4, 0x3e75c28f    # 0.24f

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    .line 333
    const/high16 v3, 0x3f000000    # 0.5f

    sget v4, Lfr/testudo/spacecorsair/mod/ModCaps;->thrust:F

    mul-float/2addr v3, v4

    add-float v3, v3, v18

    mul-float v3, v3, v21

    mul-float/2addr v3, v2

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->isBoosterEnabled:Z

    if-eqz v2, :cond_19c

    const v2, 0x3faccccd    # 1.35f

    :goto_cc
    mul-float v6, v3, v2

    .line 334
    move-object/from16 v0, p0

    iget-object v2, v0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    move-object/from16 v0, p0

    iget v3, v0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->spin:F

    aget v4, v24, v19

    mul-float v4, v4, v21

    add-int/lit8 v5, v19, 0x1

    aget v5, v24, v5

    mul-float v5, v5, v21

    const v7, 0x3ee66666    # 0.45f

    mul-float/2addr v7, v6

    add-float/2addr v5, v7

    sget-object v7, Lfr/testudo/spacecorsair/mod/ModCaps;->b:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-static {v2, v3, v4, v5, v7}, Lfr/testudo/spacecorsair/mod/ModFx;->local(Lfr/testudo/spacecorsair/engine/Vector2;FFFLfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 335
    const-string v2, "fx_flame"

    sget-object v3, Lfr/testudo/spacecorsair/mod/ModCaps;->b:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v3, v3, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    sget-object v4, Lfr/testudo/spacecorsair/mod/ModCaps;->b:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v4, v4, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    const/high16 v5, 0x40000000    # 2.0f

    mul-float v5, v5, v25

    move-object/from16 v0, p0

    iget v7, v0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->spin:F

    move-object/from16 v0, v20

    iget v8, v0, Lfr/testudo/spacecorsair/mod/ModCaps$Profile;->er:F

    move-object/from16 v0, v20

    iget v9, v0, Lfr/testudo/spacecorsair/mod/ModCaps$Profile;->eg:F

    move-object/from16 v0, v20

    iget v10, v0, Lfr/testudo/spacecorsair/mod/ModCaps$Profile;->eb:F

    const/high16 v11, 0x3f800000    # 1.0f

    const/4 v12, 0x1

    invoke-static/range {v2 .. v12}, Lfr/testudo/spacecorsair/mod/ModFx;->spr(Ljava/lang/String;FFFFFFFFFZ)V

    .line 336
    const-string v7, "fx_glow"

    sget-object v2, Lfr/testudo/spacecorsair/mod/ModCaps;->b:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v8, v2, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    sget-object v2, Lfr/testudo/spacecorsair/mod/ModCaps;->b:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v9, v2, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    const v2, 0x404ccccd    # 3.2f

    mul-float v10, v25, v2

    const v2, 0x3f666666    # 0.9f

    mul-float v11, v6, v2

    move-object/from16 v0, p0

    iget v12, v0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->spin:F

    move-object/from16 v0, v20

    iget v13, v0, Lfr/testudo/spacecorsair/mod/ModCaps$Profile;->er:F

    move-object/from16 v0, v20

    iget v14, v0, Lfr/testudo/spacecorsair/mod/ModCaps$Profile;->eg:F

    move-object/from16 v0, v20

    iget v15, v0, Lfr/testudo/spacecorsair/mod/ModCaps$Profile;->eb:F

    const v2, 0x3eb33333    # 0.35f

    sget v3, Lfr/testudo/spacecorsair/mod/ModCaps;->thrust:F

    mul-float v16, v2, v3

    const/16 v17, 0x1

    invoke-static/range {v7 .. v17}, Lfr/testudo/spacecorsair/mod/ModFx;->spr(Ljava/lang/String;FFFFFFFFFZ)V

    .line 337
    move-object/from16 v0, p0

    iget-object v2, v0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    move-object/from16 v0, p0

    iget v3, v0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->spin:F

    aget v4, v24, v19

    mul-float v4, v4, v21

    add-int/lit8 v5, v19, 0x1

    aget v5, v24, v5

    mul-float v5, v5, v21

    const/high16 v7, 0x3e800000    # 0.25f

    mul-float/2addr v7, v6

    add-float/2addr v5, v7

    sget-object v7, Lfr/testudo/spacecorsair/mod/ModCaps;->b:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-static {v2, v3, v4, v5, v7}, Lfr/testudo/spacecorsair/mod/ModFx;->local(Lfr/testudo/spacecorsair/engine/Vector2;FFFLfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 338
    const-string v2, "fx_flame"

    sget-object v3, Lfr/testudo/spacecorsair/mod/ModCaps;->b:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v3, v3, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    sget-object v4, Lfr/testudo/spacecorsair/mod/ModCaps;->b:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v4, v4, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    const v5, 0x3f333333    # 0.7f

    mul-float v5, v5, v25

    const v7, 0x3f0ccccd    # 0.55f

    mul-float/2addr v6, v7

    move-object/from16 v0, p0

    iget v7, v0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->spin:F

    const/high16 v8, 0x3f800000    # 1.0f

    const/high16 v9, 0x3f800000    # 1.0f

    const/high16 v10, 0x3f800000    # 1.0f

    const v11, 0x3f4ccccd    # 0.8f

    const/4 v12, 0x1

    invoke-static/range {v2 .. v12}, Lfr/testudo/spacecorsair/mod/ModFx;->spr(Ljava/lang/String;FFFFFFFFFZ)V

    .line 326
    :cond_17d
    add-int/lit8 v2, v19, 0x3

    move/from16 v19, v2

    goto/16 :goto_43

    .line 325
    :cond_183
    move-object/from16 v0, v20

    iget-boolean v2, v0, Lfr/testudo/spacecorsair/mod/ModCaps$Profile;->big:Z

    if-eqz v2, :cond_190

    const v2, 0x3e3851ec    # 0.18f

    move/from16 v18, v2

    goto/16 :goto_40

    :cond_190
    const v2, 0x3e051eb8    # 0.13f

    move/from16 v18, v2

    goto/16 :goto_40

    .line 327
    :cond_197
    const v2, 0x3d4ccccd    # 0.05f

    goto/16 :goto_5d

    .line 333
    :cond_19c
    const/high16 v2, 0x3f800000    # 1.0f

    goto/16 :goto_cc

    .line 342
    :cond_1a0
    move-object/from16 v0, v20

    iget-boolean v2, v0, Lfr/testudo/spacecorsair/mod/ModCaps$Profile;->top:Z

    if-nez v2, :cond_1ac

    move-object/from16 v0, v20

    iget-boolean v2, v0, Lfr/testudo/spacecorsair/mod/ModCaps$Profile;->titan:Z

    if-eqz v2, :cond_18

    .line 343
    :cond_1ac
    const/high16 v2, 0x3f000000    # 0.5f

    const/high16 v3, 0x3f000000    # 0.5f

    move-wide/from16 v0, v22

    long-to-double v4, v0

    const-wide v6, 0x4085e00000000000L    # 700.0

    div-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    double-to-float v4, v4

    mul-float/2addr v3, v4

    add-float v14, v2, v3

    .line 344
    move-object/from16 v0, v20

    iget v2, v0, Lfr/testudo/spacecorsair/mod/ModCaps$Profile;->data:I

    if-ltz v2, :cond_27b

    sget-object v2, Lfr/testudo/spacecorsair/mod/ModFxData;->RADIUS:[F

    move-object/from16 v0, v20

    iget v3, v0, Lfr/testudo/spacecorsair/mod/ModCaps$Profile;->data:I

    aget v2, v2, v3

    mul-float v2, v2, v21

    move v13, v2

    .line 347
    :goto_1d2
    const-string v2, "fx_glow"

    move-object/from16 v0, p0

    iget-object v3, v0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v3, v3, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    move-object/from16 v0, p0

    iget-object v4, v0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v4, v4, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    const v5, 0x40266666    # 2.6f

    mul-float/2addr v5, v13

    const v6, 0x40266666    # 2.6f

    mul-float/2addr v6, v13

    const/4 v7, 0x0

    move-object/from16 v0, v20

    iget v8, v0, Lfr/testudo/spacecorsair/mod/ModCaps$Profile;->ar:F

    move-object/from16 v0, v20

    iget v9, v0, Lfr/testudo/spacecorsair/mod/ModCaps$Profile;->ag:F

    move-object/from16 v0, v20

    iget v10, v0, Lfr/testudo/spacecorsair/mod/ModCaps$Profile;->ab:F

    move-object/from16 v0, v20

    iget-boolean v11, v0, Lfr/testudo/spacecorsair/mod/ModCaps$Profile;->titan:Z

    if-eqz v11, :cond_283

    const v11, 0x3e6147ae    # 0.22f

    :goto_1fe
    const v12, 0x3d75c28f    # 0.06f

    mul-float/2addr v12, v14

    add-float/2addr v11, v12

    const/4 v12, 0x1

    invoke-static/range {v2 .. v12}, Lfr/testudo/spacecorsair/mod/ModFx;->spr(Ljava/lang/String;FFFFFFFFFZ)V

    .line 348
    move-object/from16 v0, v20

    iget-boolean v2, v0, Lfr/testudo/spacecorsair/mod/ModCaps$Profile;->titan:Z

    if-nez v2, :cond_213

    move-object/from16 v0, v20

    iget-boolean v2, v0, Lfr/testudo/spacecorsair/mod/ModCaps$Profile;->alien:Z

    if-eqz v2, :cond_18

    .line 349
    :cond_213
    move-wide/from16 v0, v22

    long-to-float v2, v0

    const/high16 v3, 0x42200000    # 40.0f

    div-float/2addr v2, v3

    const/high16 v3, 0x43b40000    # 360.0f

    rem-float v7, v2, v3

    .line 350
    const-string v2, "fx_shock"

    move-object/from16 v0, p0

    iget-object v3, v0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v3, v3, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    move-object/from16 v0, p0

    iget-object v4, v0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v4, v4, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    const v5, 0x40166666    # 2.35f

    mul-float/2addr v5, v13

    const v6, 0x40166666    # 2.35f

    mul-float/2addr v6, v13

    move-object/from16 v0, v20

    iget v8, v0, Lfr/testudo/spacecorsair/mod/ModCaps$Profile;->ar:F

    move-object/from16 v0, v20

    iget v9, v0, Lfr/testudo/spacecorsair/mod/ModCaps$Profile;->ag:F

    move-object/from16 v0, v20

    iget v10, v0, Lfr/testudo/spacecorsair/mod/ModCaps$Profile;->ab:F

    const v11, 0x3e23d70a    # 0.16f

    const v12, 0x3da3d70a    # 0.08f

    mul-float/2addr v12, v14

    add-float/2addr v11, v12

    const/4 v12, 0x1

    invoke-static/range {v2 .. v12}, Lfr/testudo/spacecorsair/mod/ModFx;->spr(Ljava/lang/String;FFFFFFFFFZ)V

    .line 351
    const-string v2, "fx_shock"

    move-object/from16 v0, p0

    iget-object v3, v0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v3, v3, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    move-object/from16 v0, p0

    iget-object v4, v0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v4, v4, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    const v5, 0x40033333    # 2.05f

    mul-float/2addr v5, v13

    const v6, 0x40033333    # 2.05f

    mul-float/2addr v6, v13

    neg-float v7, v7

    const v8, 0x3fb33333    # 1.4f

    mul-float/2addr v7, v8

    move-object/from16 v0, v20

    iget v8, v0, Lfr/testudo/spacecorsair/mod/ModCaps$Profile;->ar:F

    move-object/from16 v0, v20

    iget v9, v0, Lfr/testudo/spacecorsair/mod/ModCaps$Profile;->ag:F

    move-object/from16 v0, v20

    iget v10, v0, Lfr/testudo/spacecorsair/mod/ModCaps$Profile;->ab:F

    const v11, 0x3df5c28f    # 0.12f

    const/4 v12, 0x1

    invoke-static/range {v2 .. v12}, Lfr/testudo/spacecorsair/mod/ModFx;->spr(Ljava/lang/String;FFFFFFFFFZ)V

    goto/16 :goto_18

    .line 344
    :cond_27b
    const v2, 0x3ee66666    # 0.45f

    mul-float v2, v2, v21

    move v13, v2

    goto/16 :goto_1d2

    .line 347
    :cond_283
    const v11, 0x3e0f5c29    # 0.14f

    goto/16 :goto_1fe
.end method

.method private static emitDamage(Lfr/testudo/spacecorsair/business/player/PlayerShip;Lfr/testudo/spacecorsair/mod/ModCaps$Profile;JF)V
    .registers 25

    .prologue
    .line 269
    sget-object v2, Lfr/testudo/spacecorsair/mod/ModFxData;->DMG:[[F

    move-object/from16 v0, p1

    iget v3, v0, Lfr/testudo/spacecorsair/mod/ModCaps$Profile;->data:I

    aget-object v17, v2, v3

    .line 270
    move-object/from16 v0, v17

    array-length v2, v0

    div-int/lit8 v3, v2, 0x2

    sget v2, Lfr/testudo/spacecorsair/mod/ModCaps;->damageStage:I

    const/4 v4, 0x1

    if-ne v2, v4, :cond_1bb

    const/4 v2, 0x2

    :goto_13
    invoke-static {v3, v2}, Ljava/lang/Math;->min(II)I

    move-result v18

    .line 271
    sget v2, Lfr/testudo/spacecorsair/mod/ModCaps;->smokeTick:I

    int-to-long v2, v2

    sub-long v2, v2, p2

    long-to-int v2, v2

    sput v2, Lfr/testudo/spacecorsair/mod/ModCaps;->smokeTick:I

    .line 272
    sget v2, Lfr/testudo/spacecorsair/mod/ModCaps;->smokeTick:I

    if-gtz v2, :cond_127

    .line 273
    sget v2, Lfr/testudo/spacecorsair/mod/ModCaps;->damageStage:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_1c6

    const/16 v2, 0x37

    :goto_2a
    sput v2, Lfr/testudo/spacecorsair/mod/ModCaps;->smokeTick:I

    .line 274
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v2

    move/from16 v0, v18

    int-to-double v4, v0

    mul-double/2addr v2, v4

    double-to-int v2, v2

    mul-int/lit8 v2, v2, 0x2

    .line 275
    move-object/from16 v0, p0

    iget-object v3, v0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    move-object/from16 v0, p0

    iget v4, v0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->spin:F

    aget v5, v17, v2

    mul-float v5, v5, p4

    add-int/lit8 v2, v2, 0x1

    aget v2, v17, v2

    mul-float v2, v2, p4

    sget-object v6, Lfr/testudo/spacecorsair/mod/ModCaps;->a:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-static {v3, v4, v5, v2, v6}, Lfr/testudo/spacecorsair/mod/ModFx;->local(Lfr/testudo/spacecorsair/engine/Vector2;FFFLfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 276
    const v2, 0x3e3851ec    # 0.18f

    const v3, 0x3ea3d70a    # 0.32f

    invoke-static {v2, v3}, Lfr/testudo/spacecorsair/mod/ModFx;->rnd(FF)F

    move-result v10

    .line 277
    const-string v2, "fx_smoke"

    sget-object v3, Lfr/testudo/spacecorsair/mod/ModCaps;->a:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v3, v3, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    sget-object v4, Lfr/testudo/spacecorsair/mod/ModCaps;->a:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v4, v4, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    move-object/from16 v0, p0

    iget-object v5, v0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->speed:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v5, v5, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    const/high16 v6, 0x40c00000    # 6.0f

    mul-float/2addr v5, v6

    const/high16 v6, -0x3e380000    # -25.0f

    const/high16 v7, 0x41c80000    # 25.0f

    invoke-static {v6, v7}, Lfr/testudo/spacecorsair/mod/ModFx;->rnd(FF)F

    move-result v6

    add-float/2addr v5, v6

    move-object/from16 v0, p0

    iget-object v6, v0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->speed:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v6, v6, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    const/high16 v7, 0x40c00000    # 6.0f

    mul-float/2addr v6, v7

    const/high16 v7, -0x3e380000    # -25.0f

    const/high16 v8, 0x41c80000    # 25.0f

    invoke-static {v7, v8}, Lfr/testudo/spacecorsair/mod/ModFx;->rnd(FF)F

    move-result v7

    add-float/2addr v6, v7

    sget v7, Lfr/testudo/spacecorsair/mod/ModCaps;->damageStage:I

    const/4 v8, 0x3

    if-ne v7, v8, :cond_1d3

    const v7, 0x45098000    # 2200.0f

    :goto_8e
    const v8, 0x3da3d70a    # 0.08f

    mul-float v8, v8, p4

    const/high16 v9, 0x41a00000    # 20.0f

    add-float/2addr v8, v9

    const v9, 0x3e75c28f    # 0.24f

    mul-float v9, v9, p4

    const/high16 v11, 0x42480000    # 50.0f

    add-float/2addr v9, v11

    .line 278
    sget v11, Lfr/testudo/spacecorsair/mod/ModCaps;->damageStage:I

    const/4 v12, 0x1

    if-ne v11, v12, :cond_1d7

    const v13, 0x3f0ccccd    # 0.55f

    :goto_a6
    const/4 v14, 0x0

    const/4 v15, 0x1

    move v11, v10

    move v12, v10

    .line 277
    invoke-static/range {v2 .. v15}, Lfr/testudo/spacecorsair/mod/ModFx;->part(Ljava/lang/String;FFFFFFFFFFFZZ)V

    .line 279
    const v2, 0x3f99999a    # 1.2f

    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModFx;->lastDrag(F)V

    .line 280
    sget v2, Lfr/testudo/spacecorsair/mod/ModCaps;->damageStage:I

    const/4 v3, 0x2

    if-lt v2, v3, :cond_127

    .line 281
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v4

    sget v2, Lfr/testudo/spacecorsair/mod/ModCaps;->damageStage:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1dc

    const/4 v2, 0x2

    :goto_c2
    move/from16 v0, v18

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    int-to-double v2, v2

    mul-double/2addr v2, v4

    double-to-int v2, v2

    mul-int/lit8 v2, v2, 0x2

    .line 282
    move-object/from16 v0, p0

    iget-object v3, v0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    move-object/from16 v0, p0

    iget v4, v0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->spin:F

    aget v5, v17, v2

    mul-float v5, v5, p4

    add-int/lit8 v2, v2, 0x1

    aget v2, v17, v2

    mul-float v2, v2, p4

    sget-object v6, Lfr/testudo/spacecorsair/mod/ModCaps;->b:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-static {v3, v4, v5, v2, v6}, Lfr/testudo/spacecorsair/mod/ModFx;->local(Lfr/testudo/spacecorsair/engine/Vector2;FFFLfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 283
    const-string v2, "fx_fire"

    sget-object v3, Lfr/testudo/spacecorsair/mod/ModCaps;->b:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v3, v3, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    sget-object v4, Lfr/testudo/spacecorsair/mod/ModCaps;->b:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v4, v4, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    const/high16 v5, -0x3e600000    # -20.0f

    const/high16 v6, 0x41a00000    # 20.0f

    invoke-static {v5, v6}, Lfr/testudo/spacecorsair/mod/ModFx;->rnd(FF)F

    move-result v5

    const/high16 v6, -0x3e600000    # -20.0f

    const/high16 v7, 0x41a00000    # 20.0f

    invoke-static {v6, v7}, Lfr/testudo/spacecorsair/mod/ModFx;->rnd(FF)F

    move-result v6

    const/high16 v7, 0x44020000    # 520.0f

    const v8, 0x3d4ccccd    # 0.05f

    mul-float v8, v8, p4

    const/high16 v9, 0x41800000    # 16.0f

    add-float/2addr v8, v9

    const v9, 0x3dcccccd    # 0.1f

    mul-float v9, v9, p4

    const/high16 v10, 0x41f00000    # 30.0f

    add-float/2addr v9, v10

    const/high16 v10, 0x3f800000    # 1.0f

    const v11, 0x3ee66666    # 0.45f

    const v12, 0x3f333333    # 0.7f

    invoke-static {v11, v12}, Lfr/testudo/spacecorsair/mod/ModFx;->rnd(FF)F

    move-result v11

    const v12, 0x3e4ccccd    # 0.2f

    const v13, 0x3f733333    # 0.95f

    const/4 v14, 0x1

    const/4 v15, 0x1

    invoke-static/range {v2 .. v15}, Lfr/testudo/spacecorsair/mod/ModFx;->part(Ljava/lang/String;FFFFFFFFFFFZZ)V

    .line 286
    :cond_127
    sget v2, Lfr/testudo/spacecorsair/mod/ModCaps;->damageStage:I

    const/4 v3, 0x2

    if-lt v2, v3, :cond_1e3

    .line 287
    sget v2, Lfr/testudo/spacecorsair/mod/ModCaps;->sparkTick:I

    int-to-long v2, v2

    sub-long v2, v2, p2

    long-to-int v2, v2

    sput v2, Lfr/testudo/spacecorsair/mod/ModCaps;->sparkTick:I

    .line 288
    sget v2, Lfr/testudo/spacecorsair/mod/ModCaps;->sparkTick:I

    if-gtz v2, :cond_1e3

    .line 289
    sget v2, Lfr/testudo/spacecorsair/mod/ModCaps;->damageStage:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_1df

    const/16 v2, 0xa0

    :goto_13f
    sput v2, Lfr/testudo/spacecorsair/mod/ModCaps;->sparkTick:I

    .line 290
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v2

    move/from16 v0, v18

    int-to-double v4, v0

    mul-double/2addr v2, v4

    double-to-int v2, v2

    mul-int/lit8 v2, v2, 0x2

    .line 291
    move-object/from16 v0, p0

    iget-object v3, v0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    move-object/from16 v0, p0

    iget v4, v0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->spin:F

    aget v5, v17, v2

    mul-float v5, v5, p4

    add-int/lit8 v2, v2, 0x1

    aget v2, v17, v2

    mul-float v2, v2, p4

    sget-object v6, Lfr/testudo/spacecorsair/mod/ModCaps;->a:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-static {v3, v4, v5, v2, v6}, Lfr/testudo/spacecorsair/mod/ModFx;->local(Lfr/testudo/spacecorsair/engine/Vector2;FFFLfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 292
    const/4 v2, 0x0

    move/from16 v16, v2

    :goto_166
    const/4 v2, 0x4

    move/from16 v0, v16

    if-ge v0, v2, :cond_1e3

    .line 293
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v2

    const-wide v4, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v2, v4

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    mul-double v6, v2, v4

    .line 294
    const/high16 v2, 0x42f00000    # 120.0f

    const/high16 v3, 0x43a00000    # 320.0f

    invoke-static {v2, v3}, Lfr/testudo/spacecorsair/mod/ModFx;->rnd(FF)F

    move-result v8

    .line 295
    const-string v2, "fx_spark"

    sget-object v3, Lfr/testudo/spacecorsair/mod/ModCaps;->a:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v3, v3, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    sget-object v4, Lfr/testudo/spacecorsair/mod/ModCaps;->a:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v4, v4, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    invoke-static {v6, v7}, Ljava/lang/Math;->cos(D)D

    move-result-wide v10

    double-to-float v5, v10

    mul-float/2addr v5, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    double-to-float v6, v6

    mul-float/2addr v6, v8

    const/high16 v7, 0x43af0000    # 350.0f

    const/high16 v8, 0x41200000    # 10.0f

    const/high16 v9, 0x40c00000    # 6.0f

    const/high16 v10, 0x3f800000    # 1.0f

    const v11, 0x3f59999a    # 0.85f

    const/high16 v12, 0x3f000000    # 0.5f

    const/high16 v13, 0x3f800000    # 1.0f

    const/4 v14, 0x1

    const/4 v15, 0x1

    invoke-static/range {v2 .. v15}, Lfr/testudo/spacecorsair/mod/ModFx;->part(Ljava/lang/String;FFFFFFFFFFFZZ)V

    .line 296
    const v2, 0x3d75c28f    # 0.06f

    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModFx;->lastStretch(F)V

    .line 297
    const/high16 v2, 0x40200000    # 2.5f

    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModFx;->lastDrag(F)V

    .line 292
    add-int/lit8 v2, v16, 0x1

    move/from16 v16, v2

    goto :goto_166

    .line 270
    :cond_1bb
    sget v2, Lfr/testudo/spacecorsair/mod/ModCaps;->damageStage:I

    const/4 v4, 0x2

    if-ne v2, v4, :cond_1c3

    const/4 v2, 0x4

    goto/16 :goto_13

    :cond_1c3
    const/4 v2, 0x7

    goto/16 :goto_13

    .line 273
    :cond_1c6
    sget v2, Lfr/testudo/spacecorsair/mod/ModCaps;->damageStage:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1cf

    const/16 v2, 0x5a

    goto/16 :goto_2a

    :cond_1cf
    const/16 v2, 0x96

    goto/16 :goto_2a

    .line 277
    :cond_1d3
    const/high16 v7, 0x44c80000    # 1600.0f

    goto/16 :goto_8e

    .line 278
    :cond_1d7
    const v13, 0x3f4ccccd    # 0.8f

    goto/16 :goto_a6

    .line 281
    :cond_1dc
    const/4 v2, 0x4

    goto/16 :goto_c2

    .line 289
    :cond_1df
    const/16 v2, 0x17c

    goto/16 :goto_13f

    .line 301
    :cond_1e3
    sget v2, Lfr/testudo/spacecorsair/mod/ModCaps;->damageStage:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_26f

    .line 302
    sget v2, Lfr/testudo/spacecorsair/mod/ModCaps;->boomTick:I

    int-to-long v2, v2

    sub-long v2, v2, p2

    long-to-int v2, v2

    sput v2, Lfr/testudo/spacecorsair/mod/ModCaps;->boomTick:I

    .line 303
    sget v2, Lfr/testudo/spacecorsair/mod/ModCaps;->boomTick:I

    if-gtz v2, :cond_26f

    .line 304
    const/high16 v2, 0x44af0000    # 1400.0f

    const v3, 0x45228000    # 2600.0f

    invoke-static {v2, v3}, Lfr/testudo/spacecorsair/mod/ModFx;->rnd(FF)F

    move-result v2

    float-to-int v2, v2

    sput v2, Lfr/testudo/spacecorsair/mod/ModCaps;->boomTick:I

    .line 305
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v2

    move/from16 v0, v18

    int-to-double v4, v0

    mul-double/2addr v2, v4

    double-to-int v2, v2

    mul-int/lit8 v2, v2, 0x2

    .line 306
    move-object/from16 v0, p0

    iget-object v3, v0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    move-object/from16 v0, p0

    iget v4, v0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->spin:F

    aget v5, v17, v2

    mul-float v5, v5, p4

    add-int/lit8 v2, v2, 0x1

    aget v2, v17, v2

    mul-float v2, v2, p4

    sget-object v6, Lfr/testudo/spacecorsair/mod/ModCaps;->a:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-static {v3, v4, v5, v2, v6}, Lfr/testudo/spacecorsair/mod/ModFx;->local(Lfr/testudo/spacecorsair/engine/Vector2;FFFLfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 307
    const-string v2, "fx_core"

    sget-object v3, Lfr/testudo/spacecorsair/mod/ModCaps;->a:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v3, v3, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    sget-object v4, Lfr/testudo/spacecorsair/mod/ModCaps;->a:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v4, v4, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/high16 v7, 0x43960000    # 300.0f

    const v8, 0x3cf5c28f    # 0.03f

    mul-float v8, v8, p4

    const v9, 0x3df5c28f    # 0.12f

    mul-float v9, v9, p4

    const/high16 v10, 0x3f800000    # 1.0f

    const/high16 v11, 0x3f400000    # 0.75f

    const v12, 0x3eb33333    # 0.35f

    const/high16 v13, 0x3f800000    # 1.0f

    const/4 v14, 0x1

    const/4 v15, 0x1

    invoke-static/range {v2 .. v15}, Lfr/testudo/spacecorsair/mod/ModFx;->part(Ljava/lang/String;FFFFFFFFFFFZZ)V

    .line 308
    const-string v2, "fx_fire"

    sget-object v3, Lfr/testudo/spacecorsair/mod/ModCaps;->a:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v3, v3, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    sget-object v4, Lfr/testudo/spacecorsair/mod/ModCaps;->a:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v4, v4, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/high16 v7, 0x44160000    # 600.0f

    const v8, 0x3d23d70a    # 0.04f

    mul-float v8, v8, p4

    const v9, 0x3dcccccd    # 0.1f

    mul-float v9, v9, p4

    const/high16 v10, 0x3f800000    # 1.0f

    const/high16 v11, 0x3f000000    # 0.5f

    const v12, 0x3e19999a    # 0.15f

    const v13, 0x3f666666    # 0.9f

    const/4 v14, 0x1

    const/4 v15, 0x1

    invoke-static/range {v2 .. v15}, Lfr/testudo/spacecorsair/mod/ModFx;->part(Ljava/lang/String;FFFFFFFFFFFZZ)V

    .line 311
    :cond_26f
    return-void
.end method

.method public static onBayLaunch(Lfr/testudo/spacecorsair/business/player/PlayerShip;)V
    .registers 21

    .prologue
    .line 442
    :try_start_0
    invoke-static/range {p0 .. p0}, Lfr/testudo/spacecorsair/mod/ModCaps;->profile(Lfr/testudo/spacecorsair/business/player/PlayerShip;)Lfr/testudo/spacecorsair/mod/ModCaps$Profile;

    move-result-object v18

    .line 443
    invoke-static/range {p0 .. p0}, Lfr/testudo/spacecorsair/mod/ModCaps;->size(Lfr/testudo/spacecorsair/business/player/PlayerShip;)F

    move-result v19

    .line 444
    const/4 v2, -0x1

    move/from16 v17, v2

    :goto_b
    const/4 v2, 0x1

    move/from16 v0, v17

    if-gt v0, v2, :cond_115

    .line 445
    move-object/from16 v0, v18

    iget v2, v0, Lfr/testudo/spacecorsair/mod/ModCaps$Profile;->data:I

    if-ltz v2, :cond_ec

    sget-object v2, Lfr/testudo/spacecorsair/mod/ModFxData;->NAV:[[F

    move-object/from16 v0, v18

    iget v3, v0, Lfr/testudo/spacecorsair/mod/ModCaps$Profile;->data:I

    aget-object v2, v2, v3

    move-object v4, v2

    .line 446
    :goto_1f
    if-nez v4, :cond_f0

    move/from16 v0, v17

    int-to-float v2, v0

    mul-float v2, v2, v19

    const v3, 0x3e99999a    # 0.3f

    mul-float/2addr v2, v3

    move v3, v2

    .line 447
    :goto_2b
    if-nez v4, :cond_102

    const/4 v2, 0x0

    .line 448
    :goto_2e
    move-object/from16 v0, p0

    iget-object v4, v0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    move-object/from16 v0, p0

    iget v5, v0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->spin:F

    sget-object v6, Lfr/testudo/spacecorsair/mod/ModCaps;->a:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-static {v4, v5, v3, v2, v6}, Lfr/testudo/spacecorsair/mod/ModFx;->local(Lfr/testudo/spacecorsair/engine/Vector2;FFFLfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 449
    const-string v2, "fx_core"

    sget-object v3, Lfr/testudo/spacecorsair/mod/ModCaps;->a:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v3, v3, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    sget-object v4, Lfr/testudo/spacecorsair/mod/ModCaps;->a:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v4, v4, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/high16 v7, 0x43af0000    # 350.0f

    const v8, 0x3d4ccccd    # 0.05f

    mul-float v8, v8, v19

    const v9, 0x3e3851ec    # 0.18f

    mul-float v9, v9, v19

    const/high16 v10, 0x3f000000    # 0.5f

    const/high16 v11, 0x3f800000    # 1.0f

    const v12, 0x3f19999a    # 0.6f

    const/high16 v13, 0x3f800000    # 1.0f

    const/4 v14, 0x1

    const/4 v15, 0x1

    invoke-static/range {v2 .. v15}, Lfr/testudo/spacecorsair/mod/ModFx;->part(Ljava/lang/String;FFFFFFFFFFFZZ)V

    .line 450
    const-string v2, "fx_ring"

    sget-object v3, Lfr/testudo/spacecorsair/mod/ModCaps;->a:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v3, v3, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    sget-object v4, Lfr/testudo/spacecorsair/mod/ModCaps;->a:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v4, v4, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/high16 v7, 0x43fa0000    # 500.0f

    const v8, 0x3d4ccccd    # 0.05f

    mul-float v8, v8, v19

    const v9, 0x3e99999a    # 0.3f

    mul-float v9, v9, v19

    const/high16 v10, 0x3f000000    # 0.5f

    const/high16 v11, 0x3f800000    # 1.0f

    const v12, 0x3f19999a    # 0.6f

    const v13, 0x3f4ccccd    # 0.8f

    const/4 v14, 0x1

    const/4 v15, 0x1

    invoke-static/range {v2 .. v15}, Lfr/testudo/spacecorsair/mod/ModFx;->part(Ljava/lang/String;FFFFFFFFFFFZZ)V

    .line 451
    const/4 v2, 0x0

    move/from16 v16, v2

    :goto_8b
    const/4 v2, 0x5

    move/from16 v0, v16

    if-ge v0, v2, :cond_10f

    .line 452
    move-object/from16 v0, p0

    iget v2, v0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->spin:F

    const/high16 v3, 0x42b40000    # 90.0f

    add-float/2addr v2, v3

    mul-int/lit8 v3, v17, 0x5a

    int-to-float v3, v3

    add-float/2addr v2, v3

    const/high16 v3, -0x3e380000    # -25.0f

    const/high16 v4, 0x41c80000    # 25.0f

    invoke-static {v3, v4}, Lfr/testudo/spacecorsair/mod/ModFx;->rnd(FF)F

    move-result v3

    add-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v6

    .line 453
    const/high16 v2, 0x43480000    # 200.0f

    const/high16 v3, 0x43d20000    # 420.0f

    invoke-static {v2, v3}, Lfr/testudo/spacecorsair/mod/ModFx;->rnd(FF)F

    move-result v8

    .line 454
    const-string v2, "fx_spark"

    sget-object v3, Lfr/testudo/spacecorsair/mod/ModCaps;->a:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v3, v3, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    sget-object v4, Lfr/testudo/spacecorsair/mod/ModCaps;->a:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v4, v4, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    invoke-static {v6, v7}, Ljava/lang/Math;->cos(D)D

    move-result-wide v10

    double-to-float v5, v10

    mul-float/2addr v5, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    double-to-float v6, v6

    mul-float/2addr v6, v8

    const/high16 v7, 0x43d20000    # 420.0f

    const/high16 v8, 0x41400000    # 12.0f

    const/high16 v9, 0x40c00000    # 6.0f

    const v10, 0x3f19999a    # 0.6f

    const/high16 v11, 0x3f800000    # 1.0f

    const v12, 0x3f333333    # 0.7f

    const/high16 v13, 0x3f800000    # 1.0f

    const/4 v14, 0x1

    const/4 v15, 0x1

    invoke-static/range {v2 .. v15}, Lfr/testudo/spacecorsair/mod/ModFx;->part(Ljava/lang/String;FFFFFFFFFFFZZ)V

    .line 455
    const v2, 0x3d8f5c29    # 0.07f

    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModFx;->lastStretch(F)V

    .line 456
    const/high16 v2, 0x40000000    # 2.0f

    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModFx;->lastDrag(F)V

    .line 451
    add-int/lit8 v2, v16, 0x1

    move/from16 v16, v2

    goto :goto_8b

    .line 445
    :cond_ec
    const/4 v2, 0x0

    move-object v4, v2

    goto/16 :goto_1f

    .line 446
    :cond_f0
    if-gez v17, :cond_fe

    const/4 v2, 0x0

    aget v2, v4, v2

    :goto_f5
    mul-float v2, v2, v19

    const v3, 0x3f333333    # 0.7f

    mul-float/2addr v2, v3

    move v3, v2

    goto/16 :goto_2b

    :cond_fe
    const/4 v2, 0x2

    aget v2, v4, v2

    goto :goto_f5

    .line 447
    :cond_102
    if-gez v17, :cond_10b

    const/4 v2, 0x1

    aget v2, v4, v2

    :goto_107
    mul-float v2, v2, v19

    goto/16 :goto_2e

    :cond_10b
    const/4 v2, 0x3

    aget v2, v4, v2

    goto :goto_107

    .line 444
    :cond_10f
    add-int/lit8 v2, v17, 0x2

    move/from16 v17, v2

    goto/16 :goto_b

    .line 459
    :cond_115
    const-string v2, "bay_launch"

    const v3, 0x3f4ccccd    # 0.8f

    const/high16 v4, 0x3f800000    # 1.0f

    const-wide/16 v6, 0x190

    invoke-static {v2, v3, v4, v6, v7}, Lfr/testudo/spacecorsair/mod/ModSound;->play(Ljava/lang/String;FFJ)I
    :try_end_121
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_121} :catch_122

    .line 463
    :goto_121
    return-void

    .line 460
    :catch_122
    move-exception v2

    goto :goto_121
.end method

.method static profile(Lfr/testudo/spacecorsair/business/player/PlayerShip;)Lfr/testudo/spacecorsair/mod/ModCaps$Profile;
    .registers 12

    .prologue
    const v10, 0x3ecccccd    # 0.4f

    const v9, 0x3ee66666    # 0.45f

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/high16 v8, 0x3f800000    # 1.0f

    .line 30
    iget-object v5, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->shipSpec:Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;

    .line 31
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModCaps;->prof:Lfr/testudo/spacecorsair/mod/ModCaps$Profile;

    if-eqz v0, :cond_19

    sget-object v0, Lfr/testudo/spacecorsair/mod/ModCaps;->prof:Lfr/testudo/spacecorsair/mod/ModCaps$Profile;

    iget-object v0, v0, Lfr/testudo/spacecorsair/mod/ModCaps$Profile;->spec:Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;

    if-ne v0, v5, :cond_19

    sget-object v0, Lfr/testudo/spacecorsair/mod/ModCaps;->prof:Lfr/testudo/spacecorsair/mod/ModCaps$Profile;

    .line 72
    :goto_18
    return-object v0

    .line 32
    :cond_19
    new-instance v4, Lfr/testudo/spacecorsair/mod/ModCaps$Profile;

    invoke-direct {v4}, Lfr/testudo/spacecorsair/mod/ModCaps$Profile;-><init>()V

    .line 33
    iput-object v5, v4, Lfr/testudo/spacecorsair/mod/ModCaps$Profile;->spec:Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;

    .line 34
    invoke-static {v5}, Lfr/testudo/spacecorsair/mod/ModShips;->hullFor(Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;)Lfr/testudo/spacecorsair/mod/ModShips$Hull;

    move-result-object v6

    .line 35
    iput-object v6, v4, Lfr/testudo/spacecorsair/mod/ModCaps$Profile;->hull:Lfr/testudo/spacecorsair/mod/ModShips$Hull;

    .line 38
    if-eqz v6, :cond_c7

    .line 39
    iget-object v3, v6, Lfr/testudo/spacecorsair/mod/ModShips$Hull;->art:Ljava/lang/String;

    .line 40
    iget v0, v6, Lfr/testudo/spacecorsair/mod/ModShips$Hull;->cls:I

    iput v0, v4, Lfr/testudo/spacecorsair/mod/ModCaps$Profile;->cls:I

    .line 41
    iget v0, v6, Lfr/testudo/spacecorsair/mod/ModShips$Hull;->tech:I

    .line 42
    iget v5, v6, Lfr/testudo/spacecorsair/mod/ModShips$Hull;->cls:I

    invoke-static {v5}, Lfr/testudo/spacecorsair/mod/ModShips;->maxModTech(I)I

    move-result v5

    if-lt v0, v5, :cond_c4

    move v0, v1

    :goto_39
    iput-boolean v0, v4, Lfr/testudo/spacecorsair/mod/ModCaps$Profile;->top:Z

    move-object v0, v3

    .line 50
    :goto_3c
    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModFxData;->index(Ljava/lang/String;)I

    move-result v0

    iput v0, v4, Lfr/testudo/spacecorsair/mod/ModCaps$Profile;->data:I

    .line 51
    iget v0, v4, Lfr/testudo/spacecorsair/mod/ModCaps$Profile;->cls:I

    const/4 v3, 0x6

    if-ne v0, v3, :cond_ff

    move v0, v1

    :goto_48
    iput-boolean v0, v4, Lfr/testudo/spacecorsair/mod/ModCaps$Profile;->titan:Z

    .line 52
    iget v0, v4, Lfr/testudo/spacecorsair/mod/ModCaps$Profile;->cls:I

    const/4 v3, 0x3

    if-eq v0, v3, :cond_5d

    iget v0, v4, Lfr/testudo/spacecorsair/mod/ModCaps$Profile;->cls:I

    const/4 v3, 0x4

    if-eq v0, v3, :cond_5d

    iget v0, v4, Lfr/testudo/spacecorsair/mod/ModCaps$Profile;->cls:I

    const/4 v3, 0x5

    if-eq v0, v3, :cond_5d

    iget-boolean v0, v4, Lfr/testudo/spacecorsair/mod/ModCaps$Profile;->titan:Z

    if-eqz v0, :cond_102

    :cond_5d
    move v0, v1

    :goto_5e
    iput-boolean v0, v4, Lfr/testudo/spacecorsair/mod/ModCaps$Profile;->big:Z

    .line 54
    if-eqz v6, :cond_105

    iget v0, v4, Lfr/testudo/spacecorsair/mod/ModCaps$Profile;->data:I

    if-ltz v0, :cond_105

    move v0, v1

    :goto_67
    iput-boolean v0, v4, Lfr/testudo/spacecorsair/mod/ModCaps$Profile;->flames:Z

    .line 55
    if-nez v6, :cond_108

    const-string v0, ""

    .line 56
    :goto_6d
    const-string v3, "Crimson Reavers"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_10c

    iput v8, v4, Lfr/testudo/spacecorsair/mod/ModCaps$Profile;->er:F

    const/high16 v0, 0x3f000000    # 0.5f

    iput v0, v4, Lfr/testudo/spacecorsair/mod/ModCaps$Profile;->eg:F

    const v0, 0x3e4ccccd    # 0.2f

    iput v0, v4, Lfr/testudo/spacecorsair/mod/ModCaps$Profile;->eb:F

    iput v8, v4, Lfr/testudo/spacecorsair/mod/ModCaps$Profile;->ar:F

    iput v9, v4, Lfr/testudo/spacecorsair/mod/ModCaps$Profile;->ag:F

    const v0, 0x3e19999a    # 0.15f

    iput v0, v4, Lfr/testudo/spacecorsair/mod/ModCaps$Profile;->ab:F

    .line 67
    :cond_89
    :goto_89
    if-eqz v6, :cond_215

    iget-object v0, v6, Lfr/testudo/spacecorsair/mod/ModShips$Hull;->art:Ljava/lang/String;

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModShipStyle;->engine(Ljava/lang/String;)I

    move-result v0

    .line 68
    :goto_91
    if-ltz v0, :cond_af

    shr-int/lit8 v3, v0, 0x10

    and-int/lit16 v3, v3, 0xff

    int-to-float v3, v3

    const/high16 v5, 0x437f0000    # 255.0f

    div-float/2addr v3, v5

    iput v3, v4, Lfr/testudo/spacecorsair/mod/ModCaps$Profile;->er:F

    shr-int/lit8 v3, v0, 0x8

    and-int/lit16 v3, v3, 0xff

    int-to-float v3, v3

    const/high16 v5, 0x437f0000    # 255.0f

    div-float/2addr v3, v5

    iput v3, v4, Lfr/testudo/spacecorsair/mod/ModCaps$Profile;->eg:F

    and-int/lit16 v0, v0, 0xff

    int-to-float v0, v0

    const/high16 v3, 0x437f0000    # 255.0f

    div-float/2addr v0, v3

    iput v0, v4, Lfr/testudo/spacecorsair/mod/ModCaps$Profile;->eb:F

    .line 69
    :cond_af
    sput-object v4, Lfr/testudo/spacecorsair/mod/ModCaps;->prof:Lfr/testudo/spacecorsair/mod/ModCaps$Profile;

    .line 70
    sput v2, Lfr/testudo/spacecorsair/mod/ModCaps;->damageStage:I

    .line 71
    iget-boolean v0, v4, Lfr/testudo/spacecorsair/mod/ModCaps$Profile;->big:Z

    if-eqz v0, :cond_c1

    const-string v0, "corsair_lowhull"

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModDev;->testFlag(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c1

    sput-boolean v1, Lfr/testudo/spacecorsair/mod/ModCaps;->lowHullTest:Z

    :cond_c1
    move-object v0, v4

    .line 72
    goto/16 :goto_18

    :cond_c4
    move v0, v2

    .line 42
    goto/16 :goto_39

    .line 44
    :cond_c7
    iget-object v0, v5, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;->image:Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec$Image;

    if-nez v0, :cond_f4

    const-string v0, ""

    .line 45
    :goto_cd
    invoke-static {v5}, Lfr/testudo/spacecorsair/mod/ModShips;->originalClass(Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;)I

    move-result v3

    iput v3, v4, Lfr/testudo/spacecorsair/mod/ModCaps$Profile;->cls:I

    .line 46
    invoke-static {v5}, Lfr/testudo/spacecorsair/mod/ModShips;->originalTech(Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;)I

    move-result v3

    .line 47
    const/4 v7, 0x3

    if-lt v3, v7, :cond_fb

    move v3, v1

    :goto_db
    iput-boolean v3, v4, Lfr/testudo/spacecorsair/mod/ModCaps$Profile;->top:Z

    .line 48
    iget-object v3, v5, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;->image:Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec$Image;

    sget-object v7, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec$Image;->ALIEN_UFO:Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec$Image;

    if-eq v3, v7, :cond_ef

    iget-object v3, v5, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;->image:Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec$Image;

    sget-object v7, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec$Image;->ALIEN_RAT:Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec$Image;

    if-eq v3, v7, :cond_ef

    iget-object v3, v5, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;->image:Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec$Image;

    sget-object v5, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec$Image;->ALIEN_BLATTE:Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec$Image;

    if-ne v3, v5, :cond_fd

    :cond_ef
    move v3, v1

    :goto_f0
    iput-boolean v3, v4, Lfr/testudo/spacecorsair/mod/ModCaps$Profile;->alien:Z

    goto/16 :goto_3c

    .line 44
    :cond_f4
    iget-object v0, v5, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;->image:Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec$Image;

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec$Image;->name()Ljava/lang/String;

    move-result-object v0

    goto :goto_cd

    :cond_fb
    move v3, v2

    .line 47
    goto :goto_db

    :cond_fd
    move v3, v2

    .line 48
    goto :goto_f0

    :cond_ff
    move v0, v2

    .line 51
    goto/16 :goto_48

    :cond_102
    move v0, v2

    .line 52
    goto/16 :goto_5e

    :cond_105
    move v0, v2

    .line 54
    goto/16 :goto_67

    .line 55
    :cond_108
    iget-object v0, v6, Lfr/testudo/spacecorsair/mod/ModShips$Hull;->faction:Ljava/lang/String;

    goto/16 :goto_6d

    .line 57
    :cond_10c
    const-string v3, "Developers"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_12a

    const v0, 0x3eb33333    # 0.35f

    iput v0, v4, Lfr/testudo/spacecorsair/mod/ModCaps$Profile;->er:F

    iput v8, v4, Lfr/testudo/spacecorsair/mod/ModCaps$Profile;->eg:F

    const/high16 v0, 0x3f000000    # 0.5f

    iput v0, v4, Lfr/testudo/spacecorsair/mod/ModCaps$Profile;->eb:F

    const v0, 0x3e99999a    # 0.3f

    iput v0, v4, Lfr/testudo/spacecorsair/mod/ModCaps$Profile;->ar:F

    iput v8, v4, Lfr/testudo/spacecorsair/mod/ModCaps$Profile;->ag:F

    iput v9, v4, Lfr/testudo/spacecorsair/mod/ModCaps$Profile;->ab:F

    goto/16 :goto_89

    .line 58
    :cond_12a
    const-string v3, "Varn Syndicate"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_145

    const/high16 v0, 0x3f400000    # 0.75f

    iput v0, v4, Lfr/testudo/spacecorsair/mod/ModCaps$Profile;->er:F

    iput v9, v4, Lfr/testudo/spacecorsair/mod/ModCaps$Profile;->eg:F

    iput v8, v4, Lfr/testudo/spacecorsair/mod/ModCaps$Profile;->eb:F

    const v0, 0x3f333333    # 0.7f

    iput v0, v4, Lfr/testudo/spacecorsair/mod/ModCaps$Profile;->ar:F

    iput v10, v4, Lfr/testudo/spacecorsair/mod/ModCaps$Profile;->ag:F

    iput v8, v4, Lfr/testudo/spacecorsair/mod/ModCaps$Profile;->ab:F

    goto/16 :goto_89

    .line 59
    :cond_145
    const-string v3, "Ironclad Militia"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_163

    iput v8, v4, Lfr/testudo/spacecorsair/mod/ModCaps$Profile;->er:F

    const/high16 v0, 0x3f400000    # 0.75f

    iput v0, v4, Lfr/testudo/spacecorsair/mod/ModCaps$Profile;->eg:F

    const v0, 0x3eb33333    # 0.35f

    iput v0, v4, Lfr/testudo/spacecorsair/mod/ModCaps$Profile;->eb:F

    iput v8, v4, Lfr/testudo/spacecorsair/mod/ModCaps$Profile;->ar:F

    const v0, 0x3f4ccccd    # 0.8f

    iput v0, v4, Lfr/testudo/spacecorsair/mod/ModCaps$Profile;->ag:F

    iput v10, v4, Lfr/testudo/spacecorsair/mod/ModCaps$Profile;->ab:F

    goto/16 :goto_89

    .line 60
    :cond_163
    const-string v3, "Helion Combine"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_17f

    iput v8, v4, Lfr/testudo/spacecorsair/mod/ModCaps$Profile;->er:F

    const v0, 0x3f666666    # 0.9f

    iput v0, v4, Lfr/testudo/spacecorsair/mod/ModCaps$Profile;->eg:F

    iput v9, v4, Lfr/testudo/spacecorsair/mod/ModCaps$Profile;->eb:F

    iput v8, v4, Lfr/testudo/spacecorsair/mod/ModCaps$Profile;->ar:F

    const v0, 0x3f59999a    # 0.85f

    iput v0, v4, Lfr/testudo/spacecorsair/mod/ModCaps$Profile;->ag:F

    iput v10, v4, Lfr/testudo/spacecorsair/mod/ModCaps$Profile;->ab:F

    goto/16 :goto_89

    .line 61
    :cond_17f
    iget-boolean v3, v4, Lfr/testudo/spacecorsair/mod/ModCaps$Profile;->alien:Z

    if-eqz v3, :cond_191

    const v0, 0x3f333333    # 0.7f

    iput v0, v4, Lfr/testudo/spacecorsair/mod/ModCaps$Profile;->ar:F

    const v0, 0x3eb33333    # 0.35f

    iput v0, v4, Lfr/testudo/spacecorsair/mod/ModCaps$Profile;->ag:F

    iput v8, v4, Lfr/testudo/spacecorsair/mod/ModCaps$Profile;->ab:F

    goto/16 :goto_89

    .line 62
    :cond_191
    if-eqz v6, :cond_1b7

    const-string v3, "leviathan"

    iget-object v5, v6, Lfr/testudo/spacecorsair/mod/ModShips$Hull;->art:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1b7

    const v0, 0x3f19999a    # 0.6f

    iput v0, v4, Lfr/testudo/spacecorsair/mod/ModCaps$Profile;->er:F

    const v0, 0x3f6147ae    # 0.88f

    iput v0, v4, Lfr/testudo/spacecorsair/mod/ModCaps$Profile;->eg:F

    iput v8, v4, Lfr/testudo/spacecorsair/mod/ModCaps$Profile;->eb:F

    const v0, 0x3f0ccccd    # 0.55f

    iput v0, v4, Lfr/testudo/spacecorsair/mod/ModCaps$Profile;->ar:F

    const v0, 0x3f59999a    # 0.85f

    iput v0, v4, Lfr/testudo/spacecorsair/mod/ModCaps$Profile;->ag:F

    iput v8, v4, Lfr/testudo/spacecorsair/mod/ModCaps$Profile;->ab:F

    goto/16 :goto_89

    .line 63
    :cond_1b7
    const-string v3, "Spartan Republic"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1d7

    const v0, 0x3f4ccccd    # 0.8f

    iput v0, v4, Lfr/testudo/spacecorsair/mod/ModCaps$Profile;->er:F

    const v0, 0x3f6b851f    # 0.92f

    iput v0, v4, Lfr/testudo/spacecorsair/mod/ModCaps$Profile;->eg:F

    iput v8, v4, Lfr/testudo/spacecorsair/mod/ModCaps$Profile;->eb:F

    const/high16 v0, 0x3f000000    # 0.5f

    iput v0, v4, Lfr/testudo/spacecorsair/mod/ModCaps$Profile;->ar:F

    const/high16 v0, 0x3f400000    # 0.75f

    iput v0, v4, Lfr/testudo/spacecorsair/mod/ModCaps$Profile;->ag:F

    iput v8, v4, Lfr/testudo/spacecorsair/mod/ModCaps$Profile;->ab:F

    goto/16 :goto_89

    .line 64
    :cond_1d7
    const-string v3, "Frontier Authority"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1f6

    const v0, 0x3ef0a3d7    # 0.47f

    iput v0, v4, Lfr/testudo/spacecorsair/mod/ModCaps$Profile;->er:F

    const v0, 0x3f4ccccd    # 0.8f

    iput v0, v4, Lfr/testudo/spacecorsair/mod/ModCaps$Profile;->eg:F

    iput v8, v4, Lfr/testudo/spacecorsair/mod/ModCaps$Profile;->eb:F

    iput v9, v4, Lfr/testudo/spacecorsair/mod/ModCaps$Profile;->ar:F

    const v0, 0x3f266666    # 0.65f

    iput v0, v4, Lfr/testudo/spacecorsair/mod/ModCaps$Profile;->ag:F

    iput v8, v4, Lfr/testudo/spacecorsair/mod/ModCaps$Profile;->ab:F

    goto/16 :goto_89

    .line 65
    :cond_1f6
    const-string v3, "Kre\'tari Brood"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_89

    const v0, 0x3f451eb8    # 0.77f

    iput v0, v4, Lfr/testudo/spacecorsair/mod/ModCaps$Profile;->er:F

    const v0, 0x3eb851ec    # 0.36f

    iput v0, v4, Lfr/testudo/spacecorsair/mod/ModCaps$Profile;->eg:F

    iput v8, v4, Lfr/testudo/spacecorsair/mod/ModCaps$Profile;->eb:F

    const v0, 0x3f4ccccd    # 0.8f

    iput v0, v4, Lfr/testudo/spacecorsair/mod/ModCaps$Profile;->ar:F

    iput v10, v4, Lfr/testudo/spacecorsair/mod/ModCaps$Profile;->ag:F

    iput v8, v4, Lfr/testudo/spacecorsair/mod/ModCaps$Profile;->ab:F

    goto/16 :goto_89

    .line 67
    :cond_215
    const/4 v0, -0x1

    goto/16 :goto_91
.end method

.method static size(Lfr/testudo/spacecorsair/business/player/PlayerShip;)F
    .registers 2

    .prologue
    .line 134
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->shipSpec:Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;

    iget v0, v0, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;->drawableSize:I

    int-to-float v0, v0

    return v0
.end method

.method private static testWeapon(Lfr/testudo/spacecorsair/business/player/PlayerShip;)V
    .registers 4

    .prologue
    .line 83
    const-string v0, "corsair_weapon"

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModDev;->testValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 84
    if-eqz v0, :cond_16

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_16

    sget-object v1, Lfr/testudo/spacecorsair/mod/ModCaps;->testWeapon:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17

    .line 93
    :cond_16
    :goto_16
    return-void

    .line 86
    :cond_17
    :try_start_17
    sget-object v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v1, v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v1, v1, Lfr/testudo/spacecorsair/game/Game;->playerInfo:Lfr/testudo/spacecorsair/business/player/PlayerInfo;

    iget-object v1, v1, Lfr/testudo/spacecorsair/business/player/PlayerInfo;->playerGear:Lfr/testudo/spacecorsair/business/player/PlayerGear;

    invoke-static {v0}, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->valueOf(Ljava/lang/String;)Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    move-result-object v2

    iput-object v2, v1, Lfr/testudo/spacecorsair/business/player/PlayerGear;->laser:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    .line 87
    sget-object v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v1, v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v1, v1, Lfr/testudo/spacecorsair/game/Game;->playerCurrentShipInventory:Lfr/testudo/spacecorsair/business/player/Inventory;

    invoke-static {v0}, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->valueOf(Ljava/lang/String;)Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    move-result-object v2

    invoke-static {v2}, Lfr/testudo/spacecorsair/business/loot/SpaceObject;->of(Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)Lfr/testudo/spacecorsair/business/loot/SpaceObject;

    move-result-object v2

    invoke-virtual {v1, v2}, Lfr/testudo/spacecorsair/business/player/Inventory;->forceAddObject(Lfr/testudo/spacecorsair/business/loot/SpaceObject;)V

    .line 88
    invoke-virtual {p0}, Lfr/testudo/spacecorsair/business/player/PlayerShip;->applyGear()V

    .line 89
    sput-object v0, Lfr/testudo/spacecorsair/mod/ModCaps;->testWeapon:Ljava/lang/String;
    :try_end_3b
    .catch Ljava/lang/Throwable; {:try_start_17 .. :try_end_3b} :catch_3c

    goto :goto_16

    .line 90
    :catch_3c
    move-exception v1

    .line 91
    sput-object v0, Lfr/testudo/spacecorsair/mod/ModCaps;->testWeapon:Ljava/lang/String;

    goto :goto_16
.end method

.method public static tick(Lfr/testudo/spacecorsair/business/player/PlayerShip;J)V
    .registers 28

    .prologue
    .line 139
    sget-wide v6, Lfr/testudo/spacecorsair/mod/ModCaps;->now:J

    add-long v6, v6, p1

    sput-wide v6, Lfr/testudo/spacecorsair/mod/ModCaps;->now:J

    .line 140
    move-object/from16 v0, p0

    iget-object v6, v0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->shipSpec:Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;

    if-eqz v6, :cond_12

    move-object/from16 v0, p0

    iget-boolean v6, v0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->removed:Z

    if-eqz v6, :cond_13

    .line 266
    :cond_12
    :goto_12
    return-void

    .line 141
    :cond_13
    invoke-static/range {p0 .. p0}, Lfr/testudo/spacecorsair/mod/ModCaps;->profile(Lfr/testudo/spacecorsair/business/player/PlayerShip;)Lfr/testudo/spacecorsair/mod/ModCaps$Profile;

    move-result-object v21

    .line 142
    sget-object v6, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v6, v6, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-boolean v7, v6, Lfr/testudo/spacecorsair/game/Game;->mapMode:Z

    .line 143
    sget-object v6, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v6, v6, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v6, v6, Lfr/testudo/spacecorsair/game/Game;->currentLevel:Lfr/testudo/spacecorsair/game/levels/Level;

    .line 144
    sget v8, Lfr/testudo/spacecorsair/mod/ModCaps;->shopTick:I

    int-to-long v8, v8

    sub-long v8, v8, p1

    long-to-int v8, v8

    sput v8, Lfr/testudo/spacecorsair/mod/ModCaps;->shopTick:I

    .line 145
    sget v8, Lfr/testudo/spacecorsair/mod/ModCaps;->shopTick:I

    if-gtz v8, :cond_6c

    .line 146
    const/16 v8, 0x3e8

    sput v8, Lfr/testudo/spacecorsair/mod/ModCaps;->shopTick:I

    .line 147
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModWeapons;->stockShops()V

    .line 148
    invoke-static/range {p0 .. p0}, Lfr/testudo/spacecorsair/mod/ModCaps;->testWeapon(Lfr/testudo/spacecorsair/business/player/PlayerShip;)V

    .line 149
    invoke-static/range {p0 .. p0}, Lfr/testudo/spacecorsair/mod/ModCapitals;->testSpawn(Lfr/testudo/spacecorsair/business/player/PlayerShip;)V

    .line 150
    const-string v8, "corsair_doomhold"

    invoke-static {v8}, Lfr/testudo/spacecorsair/mod/ModDev;->testFlag(Ljava/lang/String;)Z

    move-result v8

    sput-boolean v8, Lfr/testudo/spacecorsair/mod/ModTitan;->holdFire:Z

    .line 151
    invoke-static/range {p0 .. p0}, Lfr/testudo/spacecorsair/mod/ModFaction;->testTick(Lfr/testudo/spacecorsair/business/player/PlayerShip;)V

    .line 152
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModRep;->testTick()V

    .line 154
    const-string v8, "corsair_level"

    invoke-static {v8}, Lfr/testudo/spacecorsair/mod/ModDev;->testValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 155
    if-eqz v8, :cond_6c

    .line 157
    :try_start_52
    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    .line 158
    sget-object v9, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v9, v9, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v9, v9, Lfr/testudo/spacecorsair/game/Game;->playerInfo:Lfr/testudo/spacecorsair/business/player/PlayerInfo;

    iget v9, v9, Lfr/testudo/spacecorsair/business/player/PlayerInfo;->level:I

    if-ge v9, v8, :cond_6c

    sget-object v9, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v9, v9, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v9, v9, Lfr/testudo/spacecorsair/game/Game;->playerInfo:Lfr/testudo/spacecorsair/business/player/PlayerInfo;

    iput v8, v9, Lfr/testudo/spacecorsair/business/player/PlayerInfo;->level:I
    :try_end_6c
    .catch Ljava/lang/Exception; {:try_start_52 .. :try_end_6c} :catch_465

    .line 162
    :cond_6c
    :goto_6c
    invoke-static/range {p0 .. p0}, Lfr/testudo/spacecorsair/mod/ModComms;->tick(Lfr/testudo/spacecorsair/business/player/PlayerShip;)V

    .line 163
    invoke-static/range {p0 .. p2}, Lfr/testudo/spacecorsair/mod/ModRep;->tick(Lfr/testudo/spacecorsair/business/player/PlayerShip;J)V

    .line 164
    invoke-static/range {p0 .. p2}, Lfr/testudo/spacecorsair/mod/ModAlerts;->tick(Lfr/testudo/spacecorsair/business/player/PlayerShip;J)V

    .line 165
    invoke-static/range {p0 .. p2}, Lfr/testudo/spacecorsair/mod/ModShield;->tick(Lfr/testudo/spacecorsair/business/player/PlayerShip;J)V

    .line 166
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModCapitals;->checkDestroyed()V

    .line 167
    sget-object v8, Lfr/testudo/spacecorsair/mod/ModCaps;->level:Ljava/lang/Object;

    if-eq v6, v8, :cond_b0

    .line 168
    sput-object v6, Lfr/testudo/spacecorsair/mod/ModCaps;->level:Ljava/lang/Object;

    .line 169
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModFx;->clear()V

    .line 170
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModCapitals;->onLevel()V

    .line 171
    if-nez v7, :cond_b0

    move-object/from16 v0, v21

    iget-boolean v6, v0, Lfr/testudo/spacecorsair/mod/ModCaps$Profile;->titan:Z

    if-nez v6, :cond_9b

    move-object/from16 v0, v21

    iget-boolean v6, v0, Lfr/testudo/spacecorsair/mod/ModCaps$Profile;->top:Z

    if-eqz v6, :cond_b0

    move-object/from16 v0, v21

    iget-boolean v6, v0, Lfr/testudo/spacecorsair/mod/ModCaps$Profile;->big:Z

    if-eqz v6, :cond_b0

    .line 172
    :cond_9b
    const/16 v6, 0x44c

    sput v6, Lfr/testudo/spacecorsair/mod/ModCaps;->warp:I

    .line 173
    const-string v8, "warp_in"

    move-object/from16 v0, v21

    iget-boolean v6, v0, Lfr/testudo/spacecorsair/mod/ModCaps$Profile;->titan:Z

    if-eqz v6, :cond_c7

    const/high16 v6, 0x3f800000    # 1.0f

    :goto_a9
    const/high16 v9, 0x3f800000    # 1.0f

    const-wide/16 v10, 0x7d0

    invoke-static {v8, v6, v9, v10, v11}, Lfr/testudo/spacecorsair/mod/ModSound;->play(Ljava/lang/String;FFJ)I

    .line 176
    :cond_b0
    move-object/from16 v0, v21

    iget-boolean v6, v0, Lfr/testudo/spacecorsair/mod/ModCaps$Profile;->flames:Z

    if-eqz v6, :cond_b9

    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModCaps;->blankStockGaz()V

    .line 177
    :cond_b9
    if-nez v7, :cond_c1

    move-object/from16 v0, p0

    iget-boolean v6, v0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->isDocked:Z

    if-eqz v6, :cond_cb

    .line 178
    :cond_c1
    const/4 v6, 0x0

    invoke-static {v6}, Lfr/testudo/spacecorsair/mod/ModSound;->rumble(F)V

    goto/16 :goto_12

    .line 173
    :cond_c7
    const v6, 0x3f333333    # 0.7f

    goto :goto_a9

    .line 181
    :cond_cb
    sget-boolean v6, Lfr/testudo/spacecorsair/mod/ModCaps;->gearChecked:Z

    if-nez v6, :cond_d5

    .line 183
    const/4 v6, 0x1

    sput-boolean v6, Lfr/testudo/spacecorsair/mod/ModCaps;->gearChecked:Z

    .line 184
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLock;->onShipChanged()V

    .line 186
    :cond_d5
    sget-boolean v6, Lfr/testudo/spacecorsair/mod/ModCaps;->lowHullTest:Z

    if-eqz v6, :cond_f1

    move-object/from16 v0, p0

    iget v6, v0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->maxLife:F

    const/4 v7, 0x0

    cmpl-float v6, v6, v7

    if-lez v6, :cond_f1

    .line 187
    const/4 v6, 0x0

    sput-boolean v6, Lfr/testudo/spacecorsair/mod/ModCaps;->lowHullTest:Z

    .line 188
    move-object/from16 v0, p0

    iget v6, v0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->maxLife:F

    const v7, 0x3e4ccccd    # 0.2f

    mul-float/2addr v6, v7

    move-object/from16 v0, p0

    iput v6, v0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->life:F

    .line 190
    :cond_f1
    move-object/from16 v0, p0

    iget-boolean v6, v0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->isPousee:Z

    if-eqz v6, :cond_198

    move-object/from16 v0, p0

    iget-boolean v6, v0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->isBoosterEnabled:Z

    if-eqz v6, :cond_18b

    const/high16 v6, 0x3f800000    # 1.0f

    .line 191
    :goto_ff
    sget v7, Lfr/testudo/spacecorsair/mod/ModCaps;->thrust:F

    sget v8, Lfr/testudo/spacecorsair/mod/ModCaps;->thrust:F

    sub-float/2addr v6, v8

    const/high16 v8, 0x3f800000    # 1.0f

    move-wide/from16 v0, p1

    long-to-float v9, v0

    const/high16 v10, 0x43340000    # 180.0f

    div-float/2addr v9, v10

    invoke-static {v8, v9}, Ljava/lang/Math;->min(FF)F

    move-result v8

    mul-float/2addr v6, v8

    add-float/2addr v6, v7

    sput v6, Lfr/testudo/spacecorsair/mod/ModCaps;->thrust:F

    .line 192
    invoke-static/range {p0 .. p0}, Lfr/testudo/spacecorsair/mod/ModCaps;->size(Lfr/testudo/spacecorsair/business/player/PlayerShip;)F

    move-result v22

    .line 195
    move-object/from16 v0, p0

    iget-boolean v6, v0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->isPousee:Z

    if-eqz v6, :cond_19b

    sget-boolean v6, Lfr/testudo/spacecorsair/mod/ModCaps;->wasThrust:Z

    if-nez v6, :cond_19b

    move-object/from16 v0, v21

    iget-boolean v6, v0, Lfr/testudo/spacecorsair/mod/ModCaps$Profile;->flames:Z

    if-eqz v6, :cond_19b

    move-object/from16 v0, v21

    iget-boolean v6, v0, Lfr/testudo/spacecorsair/mod/ModCaps$Profile;->top:Z

    if-eqz v6, :cond_19b

    .line 196
    sget-object v6, Lfr/testudo/spacecorsair/mod/ModFxData;->ENGINES:[[F

    move-object/from16 v0, v21

    iget v7, v0, Lfr/testudo/spacecorsair/mod/ModCaps$Profile;->data:I

    aget-object v23, v6, v7

    .line 197
    const/4 v6, 0x0

    move/from16 v20, v6

    :goto_139
    add-int/lit8 v6, v20, 0x2

    move-object/from16 v0, v23

    array-length v7, v0

    if-ge v6, v7, :cond_19b

    .line 198
    move-object/from16 v0, p0

    iget-object v6, v0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    move-object/from16 v0, p0

    iget v7, v0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->spin:F

    aget v8, v23, v20

    mul-float v8, v8, v22

    add-int/lit8 v9, v20, 0x1

    aget v9, v23, v9

    mul-float v9, v9, v22

    sget-object v10, Lfr/testudo/spacecorsair/mod/ModCaps;->a:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-static {v6, v7, v8, v9, v10}, Lfr/testudo/spacecorsair/mod/ModFx;->local(Lfr/testudo/spacecorsair/engine/Vector2;FFFLfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 199
    const-string v6, "fx_core"

    sget-object v7, Lfr/testudo/spacecorsair/mod/ModCaps;->a:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v7, v7, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    sget-object v8, Lfr/testudo/spacecorsair/mod/ModCaps;->a:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v8, v8, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/high16 v11, 0x43820000    # 260.0f

    const v12, 0x3d75c28f    # 0.06f

    mul-float v12, v12, v22

    const v13, 0x3e23d70a    # 0.16f

    mul-float v13, v13, v22

    move-object/from16 v0, v21

    iget v14, v0, Lfr/testudo/spacecorsair/mod/ModCaps$Profile;->er:F

    move-object/from16 v0, v21

    iget v15, v0, Lfr/testudo/spacecorsair/mod/ModCaps$Profile;->eg:F

    move-object/from16 v0, v21

    iget v0, v0, Lfr/testudo/spacecorsair/mod/ModCaps$Profile;->eb:F

    move/from16 v16, v0

    const/high16 v17, 0x3f800000    # 1.0f

    const/16 v18, 0x1

    const/16 v19, 0x0

    invoke-static/range {v6 .. v19}, Lfr/testudo/spacecorsair/mod/ModFx;->part(Ljava/lang/String;FFFFFFFFFFFZZ)V

    .line 197
    add-int/lit8 v6, v20, 0x3

    move/from16 v20, v6

    goto :goto_139

    .line 190
    :cond_18b
    const v6, 0x3eb33333    # 0.35f

    move-object/from16 v0, p0

    iget v7, v0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->curPouseePourcentage:F

    const/high16 v8, 0x43200000    # 160.0f

    div-float/2addr v7, v8

    add-float/2addr v6, v7

    goto/16 :goto_ff

    :cond_198
    const/4 v6, 0x0

    goto/16 :goto_ff

    .line 202
    :cond_19b
    move-object/from16 v0, p0

    iget-boolean v6, v0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->isPousee:Z

    sput-boolean v6, Lfr/testudo/spacecorsair/mod/ModCaps;->wasThrust:Z

    .line 205
    move-object/from16 v0, v21

    iget-boolean v6, v0, Lfr/testudo/spacecorsair/mod/ModCaps$Profile;->top:Z

    if-eqz v6, :cond_402

    move-object/from16 v0, v21

    iget-boolean v6, v0, Lfr/testudo/spacecorsair/mod/ModCaps$Profile;->big:Z

    if-eqz v6, :cond_402

    sget v7, Lfr/testudo/spacecorsair/mod/ModCaps;->thrust:F

    move-object/from16 v0, v21

    iget-boolean v6, v0, Lfr/testudo/spacecorsair/mod/ModCaps$Profile;->titan:Z

    if-eqz v6, :cond_3fd

    const v6, 0x3ee66666    # 0.45f

    :goto_1b8
    mul-float/2addr v6, v7

    invoke-static {v6}, Lfr/testudo/spacecorsair/mod/ModSound;->rumble(F)V

    .line 209
    :goto_1bc
    move-object/from16 v0, v21

    iget-boolean v6, v0, Lfr/testudo/spacecorsair/mod/ModCaps$Profile;->flames:Z

    if-eqz v6, :cond_27c

    move-object/from16 v0, v21

    iget-boolean v6, v0, Lfr/testudo/spacecorsair/mod/ModCaps$Profile;->top:Z

    if-eqz v6, :cond_27c

    move-object/from16 v0, p0

    iget-object v6, v0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->speed:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v6}, Lfr/testudo/spacecorsair/engine/Vector2;->length()F

    move-result v6

    const v7, 0x3f99999a    # 1.2f

    cmpl-float v6, v6, v7

    if-lez v6, :cond_27c

    .line 210
    sget v6, Lfr/testudo/spacecorsair/mod/ModCaps;->wakeTick:I

    int-to-long v6, v6

    sub-long v6, v6, p1

    long-to-int v6, v6

    sput v6, Lfr/testudo/spacecorsair/mod/ModCaps;->wakeTick:I

    .line 211
    sget v6, Lfr/testudo/spacecorsair/mod/ModCaps;->wakeTick:I

    if-gtz v6, :cond_27c

    .line 212
    move-object/from16 v0, v21

    iget-boolean v6, v0, Lfr/testudo/spacecorsair/mod/ModCaps$Profile;->titan:Z

    if-eqz v6, :cond_408

    const/16 v6, 0x2d

    :goto_1eb
    sput v6, Lfr/testudo/spacecorsair/mod/ModCaps;->wakeTick:I

    .line 213
    sget-object v6, Lfr/testudo/spacecorsair/mod/ModFxData;->ENGINES:[[F

    move-object/from16 v0, v21

    iget v7, v0, Lfr/testudo/spacecorsair/mod/ModCaps$Profile;->data:I

    aget-object v6, v6, v7

    .line 214
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v8

    array-length v7, v6

    div-int/lit8 v7, v7, 0x3

    int-to-double v10, v7

    mul-double/2addr v8, v10

    double-to-int v7, v8

    mul-int/lit8 v7, v7, 0x3

    .line 215
    move-object/from16 v0, p0

    iget-object v8, v0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    move-object/from16 v0, p0

    iget v9, v0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->spin:F

    aget v10, v6, v7

    mul-float v10, v10, v22

    add-int/lit8 v7, v7, 0x1

    aget v6, v6, v7

    const v7, 0x3cf5c28f    # 0.03f

    add-float/2addr v6, v7

    mul-float v6, v6, v22

    sget-object v7, Lfr/testudo/spacecorsair/mod/ModCaps;->a:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-static {v8, v9, v10, v6, v7}, Lfr/testudo/spacecorsair/mod/ModFx;->local(Lfr/testudo/spacecorsair/engine/Vector2;FFFLfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 216
    const-string v6, "fx_smoke"

    sget-object v7, Lfr/testudo/spacecorsair/mod/ModCaps;->a:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v7, v7, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    sget-object v8, Lfr/testudo/spacecorsair/mod/ModCaps;->a:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v8, v8, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    const/high16 v9, -0x3ee00000    # -10.0f

    const/high16 v10, 0x41200000    # 10.0f

    invoke-static {v9, v10}, Lfr/testudo/spacecorsair/mod/ModFx;->rnd(FF)F

    move-result v9

    const/high16 v10, -0x3ee00000    # -10.0f

    const/high16 v11, 0x41200000    # 10.0f

    invoke-static {v10, v11}, Lfr/testudo/spacecorsair/mod/ModFx;->rnd(FF)F

    move-result v10

    move-object/from16 v0, v21

    iget-boolean v11, v0, Lfr/testudo/spacecorsair/mod/ModCaps$Profile;->titan:Z

    if-eqz v11, :cond_40c

    const/high16 v11, 0x44c80000    # 1600.0f

    :goto_23e
    const v12, 0x3d4ccccd    # 0.05f

    mul-float v12, v12, v22

    const v13, 0x3e23d70a    # 0.16f

    mul-float v13, v13, v22

    move-object/from16 v0, v21

    iget v14, v0, Lfr/testudo/spacecorsair/mod/ModCaps$Profile;->er:F

    const v15, 0x3f333333    # 0.7f

    mul-float/2addr v14, v15

    const v15, 0x3e99999a    # 0.3f

    add-float/2addr v14, v15

    move-object/from16 v0, v21

    iget v15, v0, Lfr/testudo/spacecorsair/mod/ModCaps$Profile;->eg:F

    const v16, 0x3f333333    # 0.7f

    mul-float v15, v15, v16

    const v16, 0x3e99999a    # 0.3f

    add-float v15, v15, v16

    move-object/from16 v0, v21

    iget v0, v0, Lfr/testudo/spacecorsair/mod/ModCaps$Profile;->eb:F

    move/from16 v16, v0

    const v17, 0x3f333333    # 0.7f

    mul-float v16, v16, v17

    const v17, 0x3e99999a    # 0.3f

    add-float v16, v16, v17

    const v17, 0x3e6147ae    # 0.22f

    const/16 v18, 0x1

    const/16 v19, 0x0

    invoke-static/range {v6 .. v19}, Lfr/testudo/spacecorsair/mod/ModFx;->part(Ljava/lang/String;FFFFFFFFFFFZZ)V

    .line 222
    :cond_27c
    sget v6, Lfr/testudo/spacecorsair/mod/ModCaps;->lastLife:F

    const/4 v7, 0x0

    cmpl-float v6, v6, v7

    if-ltz v6, :cond_2a1

    move-object/from16 v0, p0

    iget v6, v0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->life:F

    sget v7, Lfr/testudo/spacecorsair/mod/ModCaps;->lastLife:F

    const v8, 0x3c23d70a    # 0.01f

    add-float/2addr v7, v8

    cmpl-float v6, v6, v7

    if-lez v6, :cond_2a1

    move-object/from16 v0, p0

    iget v6, v0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->life:F

    move-object/from16 v0, p0

    iget v7, v0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->maxLife:F

    cmpg-float v6, v6, v7

    if-gez v6, :cond_2a1

    const/16 v6, 0x258

    sput v6, Lfr/testudo/spacecorsair/mod/ModCaps;->repairGlow:I

    .line 223
    :cond_2a1
    move-object/from16 v0, p0

    iget v6, v0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->life:F

    sput v6, Lfr/testudo/spacecorsair/mod/ModCaps;->lastLife:F

    .line 224
    sget v6, Lfr/testudo/spacecorsair/mod/ModCaps;->repairGlow:I

    if-lez v6, :cond_3a8

    .line 225
    sget v6, Lfr/testudo/spacecorsair/mod/ModCaps;->repairGlow:I

    int-to-long v6, v6

    sub-long v6, v6, p1

    long-to-int v6, v6

    sput v6, Lfr/testudo/spacecorsair/mod/ModCaps;->repairGlow:I

    .line 226
    sget v6, Lfr/testudo/spacecorsair/mod/ModCaps;->repairTick:I

    int-to-long v6, v6

    sub-long v6, v6, p1

    long-to-int v6, v6

    sput v6, Lfr/testudo/spacecorsair/mod/ModCaps;->repairTick:I

    .line 227
    sget v6, Lfr/testudo/spacecorsair/mod/ModCaps;->repairPulse:I

    int-to-long v6, v6

    sub-long v6, v6, p1

    long-to-int v6, v6

    sput v6, Lfr/testudo/spacecorsair/mod/ModCaps;->repairPulse:I

    .line 228
    sget v6, Lfr/testudo/spacecorsair/mod/ModCaps;->repairSound:I

    int-to-long v6, v6

    sub-long v6, v6, p1

    long-to-int v6, v6

    sput v6, Lfr/testudo/spacecorsair/mod/ModCaps;->repairSound:I

    .line 229
    move-object/from16 v0, v21

    iget-object v6, v0, Lfr/testudo/spacecorsair/mod/ModCaps$Profile;->hull:Lfr/testudo/spacecorsair/mod/ModShips$Hull;

    if-eqz v6, :cond_410

    const-string v6, "crimson_throne"

    move-object/from16 v0, v21

    iget-object v7, v0, Lfr/testudo/spacecorsair/mod/ModCaps$Profile;->hull:Lfr/testudo/spacecorsair/mod/ModShips$Hull;

    iget-object v7, v7, Lfr/testudo/spacecorsair/mod/ModShips$Hull;->art:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_410

    const/4 v6, 0x1

    .line 230
    :goto_2e0
    if-eqz v6, :cond_413

    const/high16 v14, 0x3f800000    # 1.0f

    :goto_2e4
    if-eqz v6, :cond_418

    const v15, 0x3f19999a    # 0.6f

    :goto_2e9
    if-eqz v6, :cond_41c

    const v16, 0x3e4ccccd    # 0.2f

    .line 231
    :goto_2ee
    sget v7, Lfr/testudo/spacecorsair/mod/ModCaps;->repairTick:I

    if-gtz v7, :cond_362

    move-object/from16 v0, v21

    iget v7, v0, Lfr/testudo/spacecorsair/mod/ModCaps$Profile;->data:I

    if-ltz v7, :cond_362

    .line 232
    const/16 v7, 0x6e

    sput v7, Lfr/testudo/spacecorsair/mod/ModCaps;->repairTick:I

    .line 233
    sget-object v7, Lfr/testudo/spacecorsair/mod/ModFxData;->DMG:[[F

    move-object/from16 v0, v21

    iget v8, v0, Lfr/testudo/spacecorsair/mod/ModCaps$Profile;->data:I

    aget-object v7, v7, v8

    .line 234
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v8

    array-length v10, v7

    div-int/lit8 v10, v10, 0x2

    int-to-double v10, v10

    mul-double/2addr v8, v10

    double-to-int v8, v8

    mul-int/lit8 v8, v8, 0x2

    .line 235
    move-object/from16 v0, p0

    iget-object v9, v0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    move-object/from16 v0, p0

    iget v10, v0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->spin:F

    aget v11, v7, v8

    mul-float v11, v11, v22

    add-int/lit8 v8, v8, 0x1

    aget v7, v7, v8

    mul-float v7, v7, v22

    sget-object v8, Lfr/testudo/spacecorsair/mod/ModCaps;->a:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-static {v9, v10, v11, v7, v8}, Lfr/testudo/spacecorsair/mod/ModFx;->local(Lfr/testudo/spacecorsair/engine/Vector2;FFFLfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 236
    if-eqz v6, :cond_420

    const-string v6, "fx_fire"

    :goto_32b
    sget-object v7, Lfr/testudo/spacecorsair/mod/ModCaps;->a:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v7, v7, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    sget-object v8, Lfr/testudo/spacecorsair/mod/ModCaps;->a:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v8, v8, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    const/high16 v9, -0x3e900000    # -15.0f

    const/high16 v10, 0x41700000    # 15.0f

    invoke-static {v9, v10}, Lfr/testudo/spacecorsair/mod/ModFx;->rnd(FF)F

    move-result v9

    const/high16 v10, -0x3e900000    # -15.0f

    const/high16 v11, 0x41700000    # 15.0f

    invoke-static {v10, v11}, Lfr/testudo/spacecorsair/mod/ModFx;->rnd(FF)F

    move-result v10

    const/4 v11, 0x0

    add-float/2addr v10, v11

    const/high16 v11, 0x44610000    # 900.0f

    const v12, 0x3ccccccd    # 0.025f

    mul-float v12, v12, v22

    const/high16 v13, 0x41600000    # 14.0f

    add-float/2addr v12, v13

    const v13, 0x3d23d70a    # 0.04f

    mul-float v13, v13, v22

    const/high16 v17, 0x41900000    # 18.0f

    add-float v13, v13, v17

    const v17, 0x3f733333    # 0.95f

    const/16 v18, 0x1

    const/16 v19, 0x1

    invoke-static/range {v6 .. v19}, Lfr/testudo/spacecorsair/mod/ModFx;->part(Ljava/lang/String;FFFFFFFFFFFZZ)V

    .line 238
    :cond_362
    sget v6, Lfr/testudo/spacecorsair/mod/ModCaps;->repairPulse:I

    if-gtz v6, :cond_394

    .line 239
    const/16 v6, 0x5dc

    sput v6, Lfr/testudo/spacecorsair/mod/ModCaps;->repairPulse:I

    .line 240
    const-string v6, "fx_ring"

    move-object/from16 v0, p0

    iget-object v7, v0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v7, v7, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    move-object/from16 v0, p0

    iget-object v8, v0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v8, v8, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/high16 v11, 0x44610000    # 900.0f

    const/high16 v12, 0x3f000000    # 0.5f

    mul-float v12, v12, v22

    const v13, 0x3f933333    # 1.15f

    mul-float v13, v13, v22

    const v17, 0x3f0ccccd    # 0.55f

    const/16 v18, 0x1

    const/16 v19, 0x1

    invoke-static/range {v6 .. v19}, Lfr/testudo/spacecorsair/mod/ModFx;->part(Ljava/lang/String;FFFFFFFFFFFZZ)V

    .line 241
    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static {v6, v7}, Lfr/testudo/spacecorsair/mod/ModFx;->lastSpin(FF)V

    .line 243
    :cond_394
    sget v6, Lfr/testudo/spacecorsair/mod/ModCaps;->repairSound:I

    if-gtz v6, :cond_3a8

    .line 244
    const/16 v6, 0x1194

    sput v6, Lfr/testudo/spacecorsair/mod/ModCaps;->repairSound:I

    .line 245
    const-string v6, "repair"

    const v7, 0x3eb33333    # 0.35f

    const/high16 v8, 0x3f800000    # 1.0f

    const-wide/16 v10, 0xbb8

    invoke-static {v6, v7, v8, v10, v11}, Lfr/testudo/spacecorsair/mod/ModSound;->play(Ljava/lang/String;FFJ)I

    .line 250
    :cond_3a8
    move-object/from16 v0, v21

    iget-boolean v6, v0, Lfr/testudo/spacecorsair/mod/ModCaps$Profile;->big:Z

    if-eqz v6, :cond_461

    move-object/from16 v0, v21

    iget v6, v0, Lfr/testudo/spacecorsair/mod/ModCaps$Profile;->data:I

    if-ltz v6, :cond_461

    .line 251
    move-object/from16 v0, p0

    iget v6, v0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->maxLife:F

    const/4 v7, 0x0

    cmpg-float v6, v6, v7

    if-gtz v6, :cond_424

    const/high16 v6, 0x3f800000    # 1.0f

    move v8, v6

    .line 252
    :goto_3c0
    const/high16 v6, 0x3e800000    # 0.25f

    cmpg-float v6, v8, v6

    if-gez v6, :cond_42f

    const/4 v6, 0x3

    .line 253
    :goto_3c7
    sget v7, Lfr/testudo/spacecorsair/mod/ModCaps;->damageStage:I

    if-le v6, v7, :cond_441

    .line 254
    sget v7, Lfr/testudo/spacecorsair/mod/ModCaps;->damageStage:I

    if-ltz v7, :cond_3de

    const/4 v7, 0x2

    if-lt v6, v7, :cond_3de

    const-string v7, "hull_breach"

    const v8, 0x3f19999a    # 0.6f

    const/high16 v9, 0x3f800000    # 1.0f

    const-wide/16 v10, 0x5dc

    invoke-static {v7, v8, v9, v10, v11}, Lfr/testudo/spacecorsair/mod/ModSound;->play(Ljava/lang/String;FFJ)I

    .line 255
    :cond_3de
    sput v6, Lfr/testudo/spacecorsair/mod/ModCaps;->damageStage:I

    .line 260
    :cond_3e0
    :goto_3e0
    sget v6, Lfr/testudo/spacecorsair/mod/ModCaps;->damageStage:I

    if-lez v6, :cond_3ef

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-wide/from16 v2, p1

    move/from16 v4, v22

    invoke-static {v0, v1, v2, v3, v4}, Lfr/testudo/spacecorsair/mod/ModCaps;->emitDamage(Lfr/testudo/spacecorsair/business/player/PlayerShip;Lfr/testudo/spacecorsair/mod/ModCaps$Profile;JF)V

    .line 265
    :cond_3ef
    :goto_3ef
    sget v6, Lfr/testudo/spacecorsair/mod/ModCaps;->warp:I

    if-lez v6, :cond_12

    sget v6, Lfr/testudo/spacecorsair/mod/ModCaps;->warp:I

    int-to-long v6, v6

    sub-long v6, v6, p1

    long-to-int v6, v6

    sput v6, Lfr/testudo/spacecorsair/mod/ModCaps;->warp:I

    goto/16 :goto_12

    .line 205
    :cond_3fd
    const v6, 0x3e99999a    # 0.3f

    goto/16 :goto_1b8

    .line 206
    :cond_402
    const/4 v6, 0x0

    invoke-static {v6}, Lfr/testudo/spacecorsair/mod/ModSound;->rumble(F)V

    goto/16 :goto_1bc

    .line 212
    :cond_408
    const/16 v6, 0x50

    goto/16 :goto_1eb

    .line 216
    :cond_40c
    const/high16 v11, 0x447a0000    # 1000.0f

    goto/16 :goto_23e

    .line 229
    :cond_410
    const/4 v6, 0x0

    goto/16 :goto_2e0

    .line 230
    :cond_413
    const v14, 0x3eb33333    # 0.35f

    goto/16 :goto_2e4

    :cond_418
    const/high16 v15, 0x3f800000    # 1.0f

    goto/16 :goto_2e9

    :cond_41c
    const/high16 v16, 0x3f000000    # 0.5f

    goto/16 :goto_2ee

    .line 236
    :cond_420
    const-string v6, "fx_plus"

    goto/16 :goto_32b

    .line 251
    :cond_424
    move-object/from16 v0, p0

    iget v6, v0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->life:F

    move-object/from16 v0, p0

    iget v7, v0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->maxLife:F

    div-float/2addr v6, v7

    move v8, v6

    goto :goto_3c0

    .line 252
    :cond_42f
    const/high16 v6, 0x3f000000    # 0.5f

    cmpg-float v6, v8, v6

    if-gez v6, :cond_437

    const/4 v6, 0x2

    goto :goto_3c7

    :cond_437
    const/high16 v6, 0x3f400000    # 0.75f

    cmpg-float v6, v8, v6

    if-gez v6, :cond_43f

    const/4 v6, 0x1

    goto :goto_3c7

    :cond_43f
    const/4 v6, 0x0

    goto :goto_3c7

    .line 256
    :cond_441
    sget v7, Lfr/testudo/spacecorsair/mod/ModCaps;->damageStage:I

    if-ge v6, v7, :cond_3e0

    .line 257
    sget v7, Lfr/testudo/spacecorsair/mod/ModCaps;->damageStage:I

    const/4 v9, 0x3

    if-ne v7, v9, :cond_454

    const v7, 0x3e99999a    # 0.3f

    .line 258
    :goto_44d
    cmpl-float v7, v8, v7

    if-ltz v7, :cond_3e0

    sput v6, Lfr/testudo/spacecorsair/mod/ModCaps;->damageStage:I

    goto :goto_3e0

    .line 257
    :cond_454
    sget v7, Lfr/testudo/spacecorsair/mod/ModCaps;->damageStage:I

    const/4 v9, 0x2

    if-ne v7, v9, :cond_45d

    const v7, 0x3f0ccccd    # 0.55f

    goto :goto_44d

    :cond_45d
    const v7, 0x3f4ccccd    # 0.8f

    goto :goto_44d

    .line 262
    :cond_461
    const/4 v6, 0x0

    sput v6, Lfr/testudo/spacecorsair/mod/ModCaps;->damageStage:I

    goto :goto_3ef

    .line 159
    :catch_465
    move-exception v8

    goto/16 :goto_6c
.end method
