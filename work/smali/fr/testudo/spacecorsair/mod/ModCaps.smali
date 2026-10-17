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
    .line 386
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

    .line 466
    :cond_14
    :goto_14
    return-void

    .line 387
    :cond_15
    invoke-static/range {p0 .. p0}, Lfr/testudo/spacecorsair/mod/ModCaps;->profile(Lfr/testudo/spacecorsair/business/player/PlayerShip;)Lfr/testudo/spacecorsair/mod/ModCaps$Profile;

    move-result-object v20

    .line 388
    invoke-static/range {p0 .. p0}, Lfr/testudo/spacecorsair/mod/ModCaps;->size(Lfr/testudo/spacecorsair/business/player/PlayerShip;)F

    move-result v23

    .line 389
    sget-wide v18, Lfr/testudo/spacecorsair/mod/ModCaps;->now:J

    .line 392
    sget v2, Lfr/testudo/spacecorsair/mod/ModCaps;->damageStage:I

    if-lez v2, :cond_123

    move-object/from16 v0, v20

    iget v2, v0, Lfr/testudo/spacecorsair/mod/ModCaps$Profile;->data:I

    if-ltz v2, :cond_123

    .line 393
    sget-object v2, Lfr/testudo/spacecorsair/mod/ModFxData;->DMG:[[F

    move-object/from16 v0, v20

    iget v3, v0, Lfr/testudo/spacecorsair/mod/ModCaps$Profile;->data:I

    aget-object v21, v2, v3

    .line 394
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

    .line 395
    const/4 v2, 0x0

    move/from16 v17, v2

    :goto_43
    move/from16 v0, v17

    move/from16 v1, v22

    if-ge v0, v1, :cond_123

    .line 396
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

    .line 397
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

    .line 398
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

    .line 399
    sget v2, Lfr/testudo/spacecorsair/mod/ModCaps;->damageStage:I

    const/4 v3, 0x2

    if-lt v2, v3, :cond_112

    rem-int/lit8 v2, v17, 0x2

    if-nez v2, :cond_112

    .line 400
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

    .line 401
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

    .line 402
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

    .line 395
    :cond_112
    add-int/lit8 v2, v17, 0x1

    move/from16 v17, v2

    goto/16 :goto_43

    .line 394
    :cond_118
    sget v2, Lfr/testudo/spacecorsair/mod/ModCaps;->damageStage:I

    const/4 v4, 0x2

    if-ne v2, v4, :cond_120

    const/4 v2, 0x4

    goto/16 :goto_3c

    :cond_120
    const/4 v2, 0x7

    goto/16 :goto_3c

    .line 407
    :cond_123
    invoke-virtual/range {p0 .. p0}, Lfr/testudo/spacecorsair/business/player/PlayerShip;->getDrawableObject()Lfr/testudo/spacecorsair/display/Drawable;

    move-result-object v2

    .line 408
    if-eqz v2, :cond_132

    const/4 v3, 0x0

    sget v4, Lfr/testudo/spacecorsair/mod/ModCaps;->thrust:F

    const/4 v5, 0x1

    move-object/from16 v0, p0

    invoke-static {v0, v2, v3, v4, v5}, Lfr/testudo/spacecorsair/mod/ModLive;->living(Lfr/testudo/spacecorsair/business/Element;Lfr/testudo/spacecorsair/display/Drawable;ZFZ)V

    .line 409
    :cond_132
    invoke-static/range {p0 .. p0}, Lfr/testudo/spacecorsair/mod/ModShield;->draw(Lfr/testudo/spacecorsair/business/player/PlayerShip;)V

    .line 410
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Lfr/testudo/spacecorsair/mod/ModTitan;->drawTurrets(Lfr/testudo/spacecorsair/business/player/PlayerShip;Lfr/testudo/spacecorsair/mod/ModCaps$Profile;)V

    .line 412
    move-object/from16 v0, v20

    iget-boolean v2, v0, Lfr/testudo/spacecorsair/mod/ModCaps$Profile;->top:Z

    if-nez v2, :cond_148

    move-object/from16 v0, v20

    iget-boolean v2, v0, Lfr/testudo/spacecorsair/mod/ModCaps$Profile;->titan:Z

    if-eqz v2, :cond_34e

    .line 414
    :cond_148
    move-object/from16 v0, v20

    iget v2, v0, Lfr/testudo/spacecorsair/mod/ModCaps$Profile;->data:I

    if-ltz v2, :cond_2cc

    .line 415
    sget-object v2, Lfr/testudo/spacecorsair/mod/ModFxData;->LIGHTS:[[F

    move-object/from16 v0, v20

    iget v3, v0, Lfr/testudo/spacecorsair/mod/ModCaps$Profile;->data:I

    aget-object v14, v2, v3

    .line 416
    array-length v2, v14

    div-int/lit8 v3, v2, 0x5

    move-object/from16 v0, v20

    iget-boolean v2, v0, Lfr/testudo/spacecorsair/mod/ModCaps$Profile;->titan:Z

    if-eqz v2, :cond_1e8

    const/16 v2, 0x8

    :goto_161
    invoke-static {v3, v2}, Ljava/lang/Math;->min(II)I

    move-result v15

    .line 417
    const/4 v2, 0x0

    move v13, v2

    :goto_167
    if-ge v13, v15, :cond_1eb

    .line 418
    mul-int/lit8 v6, v13, 0x5

    .line 419
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

    .line 420
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

    .line 421
    const v2, 0x3d0f5c29    # 0.035f

    mul-float v2, v2, v23

    const/high16 v3, 0x41000000    # 8.0f

    add-float v5, v2, v3

    .line 422
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

    .line 417
    add-int/lit8 v2, v13, 0x1

    move v13, v2

    goto :goto_167

    .line 416
    :cond_1e8
    const/4 v2, 0x5

    goto/16 :goto_161

    .line 425
    :cond_1eb
    sget-object v2, Lfr/testudo/spacecorsair/mod/ModFxData;->NAV:[[F

    move-object/from16 v0, v20

    iget v3, v0, Lfr/testudo/spacecorsair/mod/ModCaps$Profile;->data:I

    aget-object v13, v2, v3

    .line 426
    const-wide/16 v2, 0x578

    rem-long v2, v18, v2

    .line 427
    const-wide/16 v4, 0xa0

    cmp-long v2, v2, v4

    if-gez v2, :cond_434

    const/high16 v11, 0x3f800000    # 1.0f

    .line 428
    :goto_1ff
    const v2, 0x3cf5c28f    # 0.03f

    mul-float v2, v2, v23

    const/high16 v3, 0x41400000    # 12.0f

    add-float v14, v2, v3

    .line 429
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

    .line 430
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

    .line 431
    const-wide/16 v2, 0x2bc

    add-long v2, v2, v18

    const-wide/16 v4, 0x578

    rem-long/2addr v2, v4

    .line 432
    const-wide/16 v4, 0xa0

    cmp-long v2, v2, v4

    if-gez v2, :cond_439

    const/high16 v11, 0x3f800000    # 1.0f

    .line 433
    :goto_24d
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

    .line 434
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

    .line 435
    move-object/from16 v0, v20

    iget-boolean v2, v0, Lfr/testudo/spacecorsair/mod/ModCaps$Profile;->titan:Z

    if-eqz v2, :cond_2cc

    const-wide/16 v2, 0x834

    rem-long v2, v18, v2

    const-wide/16 v4, 0x5a

    cmp-long v2, v2, v4

    if-gez v2, :cond_2cc

    .line 436
    move-object/from16 v0, p0

    iget-object v2, v0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    move-object/from16 v0, p0

    iget v3, v0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->spin:F

    const/4 v4, 0x0

    const v5, 0x3ef0a3d7    # 0.47f

    mul-float v5, v5, v23

    sget-object v6, Lfr/testudo/spacecorsair/mod/ModCaps;->a:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-static {v2, v3, v4, v5, v6}, Lfr/testudo/spacecorsair/mod/ModFx;->local(Lfr/testudo/spacecorsair/engine/Vector2;FFFLfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 437
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

    .line 441
    :cond_2cc
    move-object/from16 v0, v20

    iget-boolean v2, v0, Lfr/testudo/spacecorsair/mod/ModCaps$Profile;->titan:Z

    if-eqz v2, :cond_34e

    move-object/from16 v0, p0

    iget-object v2, v0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->shield:Lfr/testudo/spacecorsair/business/player/Shield;

    if-eqz v2, :cond_34e

    move-object/from16 v0, p0

    iget-object v2, v0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->shield:Lfr/testudo/spacecorsair/business/player/Shield;

    iget v2, v2, Lfr/testudo/spacecorsair/business/player/Shield;->capacity:F

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-lez v2, :cond_34e

    .line 442
    move-object/from16 v0, p0

    iget-object v2, v0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->shield:Lfr/testudo/spacecorsair/business/player/Shield;

    iget v2, v2, Lfr/testudo/spacecorsair/business/player/Shield;->currentValue:F

    move-object/from16 v0, p0

    iget-object v3, v0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->shield:Lfr/testudo/spacecorsair/business/player/Shield;

    iget v3, v3, Lfr/testudo/spacecorsair/business/player/Shield;->capacity:F

    div-float v11, v2, v3

    .line 443
    move-object/from16 v0, v20

    iget v2, v0, Lfr/testudo/spacecorsair/mod/ModCaps$Profile;->data:I

    if-ltz v2, :cond_43e

    sget-object v2, Lfr/testudo/spacecorsair/mod/ModFxData;->RADIUS:[F

    move-object/from16 v0, v20

    iget v3, v0, Lfr/testudo/spacecorsair/mod/ModCaps$Profile;->data:I

    aget v2, v2, v3

    :goto_2ff
    mul-float v6, v2, v23

    .line 444
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

    .line 445
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

    .line 449
    :cond_34e
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Lfr/testudo/spacecorsair/mod/ModTitan;->drawOver(Lfr/testudo/spacecorsair/business/player/PlayerShip;Lfr/testudo/spacecorsair/mod/ModCaps$Profile;)V

    .line 450
    invoke-static/range {p0 .. p0}, Lfr/testudo/spacecorsair/mod/ModFaction;->draw(Lfr/testudo/spacecorsair/business/player/PlayerShip;)V

    .line 451
    const/4 v2, 0x1

    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModFx;->drawParticles(Z)V

    .line 452
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 453
    sget-wide v2, Lfr/testudo/spacecorsair/mod/ModCaps;->lastDraw:J

    const-wide/16 v6, 0x0

    cmp-long v2, v2, v6

    if-nez v2, :cond_443

    const-wide/16 v2, 0x10

    :goto_36a
    invoke-static {v2, v3}, Lfr/testudo/spacecorsair/mod/ModWeapons;->drawArcs(J)V

    .line 454
    sput-wide v4, Lfr/testudo/spacecorsair/mod/ModCaps;->lastDraw:J

    .line 456
    sget v2, Lfr/testudo/spacecorsair/mod/ModCaps;->warp:I

    if-lez v2, :cond_14

    .line 457
    sget v2, Lfr/testudo/spacecorsair/mod/ModCaps;->warp:I

    int-to-float v2, v2

    const v3, 0x44898000    # 1100.0f

    div-float v11, v2, v3

    .line 458
    const/high16 v2, 0x3f800000    # 1.0f

    sub-float v17, v2, v11

    .line 459
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

    .line 460
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

    .line 461
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

    .line 463
    :catch_431
    move-exception v2

    goto/16 :goto_14

    .line 427
    :cond_434
    const v11, 0x3e19999a    # 0.15f

    goto/16 :goto_1ff

    .line 432
    :cond_439
    const v11, 0x3e19999a    # 0.15f

    goto/16 :goto_24d

    .line 443
    :cond_43e
    const v2, 0x3ee66666    # 0.45f

    goto/16 :goto_2ff

    .line 453
    :cond_443
    const-wide/16 v2, 0x64

    sget-wide v6, Lfr/testudo/spacecorsair/mod/ModCaps;->lastDraw:J

    sub-long v6, v4, v6

    invoke-static {v2, v3, v6, v7}, Ljava/lang/Math;->min(JJ)J
    :try_end_44c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_44c} :catch_431

    move-result-wide v2

    goto/16 :goto_36a
.end method

.method public static drawUnder(Lfr/testudo/spacecorsair/business/player/PlayerShip;)V
    .registers 27

    .prologue
    .line 322
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLive;->frame()V

    .line 323
    sget v2, Lfr/testudo/spacecorsair/mod/ModFx;->budget:I

    const/16 v3, 0x1a4

    if-ge v2, v3, :cond_d

    const/16 v2, 0x1a4

    sput v2, Lfr/testudo/spacecorsair/mod/ModFx;->budget:I

    .line 324
    :cond_d
    move-object/from16 v0, p0

    iget-object v2, v0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->shipSpec:Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;

    if-eqz v2, :cond_21

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->removed:Z

    if-nez v2, :cond_21

    sget-object v2, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v2, v2, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-boolean v2, v2, Lfr/testudo/spacecorsair/game/Game;->mapMode:Z

    if-eqz v2, :cond_22

    .line 381
    :cond_21
    :goto_21
    return-void

    .line 325
    :cond_22
    invoke-static/range {p0 .. p0}, Lfr/testudo/spacecorsair/mod/ModCaps;->profile(Lfr/testudo/spacecorsair/business/player/PlayerShip;)Lfr/testudo/spacecorsair/mod/ModCaps$Profile;

    move-result-object v20

    .line 326
    invoke-static/range {p0 .. p0}, Lfr/testudo/spacecorsair/mod/ModCaps;->size(Lfr/testudo/spacecorsair/business/player/PlayerShip;)F

    move-result v21

    .line 327
    sget-wide v22, Lfr/testudo/spacecorsair/mod/ModCaps;->now:J

    .line 328
    const/4 v2, 0x0

    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModFx;->drawParticles(Z)V

    .line 330
    invoke-virtual/range {p0 .. p0}, Lfr/testudo/spacecorsair/business/player/PlayerShip;->getDrawableObject()Lfr/testudo/spacecorsair/display/Drawable;

    move-result-object v17

    .line 331
    if-eqz v17, :cond_11d

    move-object/from16 v0, v17

    iget-object v2, v0, Lfr/testudo/spacecorsair/display/Drawable;->dimensions:Lfr/testudo/spacecorsair/engine/Vector2;

    if-eqz v2, :cond_11d

    .line 332
    move-object/from16 v0, v17

    iget-object v2, v0, Lfr/testudo/spacecorsair/display/Drawable;->dimensions:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v2, v2, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    move-object/from16 v0, v17

    iget-object v3, v0, Lfr/testudo/spacecorsair/display/Drawable;->dimensions:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v3, v3, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v13

    .line 333
    sget-object v18, Lfr/testudo/spacecorsair/engine/GameRenderer;->screenCenter:Lfr/testudo/spacecorsair/engine/Vector2;

    .line 335
    const/4 v2, 0x1

    :try_start_4f
    sput-boolean v2, Lfr/testudo/spacecorsair/mod/ModFx;->relative:Z

    .line 336
    move-object/from16 v0, v20

    iget-boolean v2, v0, Lfr/testudo/spacecorsair/mod/ModCaps$Profile;->titan:Z

    if-eqz v2, :cond_77

    const-string v2, "player_titan_signature"

    move-object/from16 v0, v18

    iget v3, v0, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    move-object/from16 v0, v18

    iget v4, v0, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    const/high16 v5, 0x3fc00000    # 1.5f

    mul-float/2addr v5, v13

    const/high16 v6, 0x3fc00000    # 1.5f

    mul-float/2addr v6, v13

    const/4 v7, 0x0

    const v8, 0x3eb33333    # 0.35f

    const v9, 0x3f59999a    # 0.85f

    const/high16 v10, 0x3f800000    # 1.0f

    const v11, 0x3f19999a    # 0.6f

    const/4 v12, 0x1

    invoke-static/range {v2 .. v12}, Lfr/testudo/spacecorsair/mod/ModFx;->spr(Ljava/lang/String;FFFFFFFFFZ)V

    .line 337
    :cond_77
    const-string v2, "marker_friendly"

    move-object/from16 v0, v18

    iget v3, v0, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    move-object/from16 v0, v18

    iget v4, v0, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    const v5, 0x3ff33333    # 1.9f

    mul-float/2addr v5, v13

    const v6, 0x3ff33333    # 1.9f

    mul-float/2addr v6, v13

    move-wide/from16 v0, v22

    long-to-float v7, v0

    const/high16 v8, 0x42b40000    # 90.0f

    div-float/2addr v7, v8

    const/high16 v8, 0x43b40000    # 360.0f

    rem-float/2addr v7, v8

    const v8, 0x3e99999a    # 0.3f

    const v9, 0x3f59999a    # 0.85f

    const/high16 v10, 0x3f800000    # 1.0f

    const v11, 0x3e99999a    # 0.3f

    const/4 v12, 0x1

    invoke-static/range {v2 .. v12}, Lfr/testudo/spacecorsair/mod/ModFx;->sprR(Ljava/lang/String;FFFFFFFFFZ)V

    .line 338
    move-object/from16 v0, v17

    iget-object v2, v0, Lfr/testudo/spacecorsair/display/Drawable;->myTexture:Lfr/testudo/spacecorsair/display/Texture;

    .line 339
    if-eqz v2, :cond_11a

    iget v3, v2, Lfr/testudo/spacecorsair/display/Texture;->name:I

    if-lez v3, :cond_11a

    .line 340
    const/4 v3, 0x1

    sput-boolean v3, Lfr/testudo/spacecorsair/mod/ModFx;->flatNext:Z

    .line 341
    move-object/from16 v0, v18

    iget v3, v0, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    move-object/from16 v0, v18

    iget v4, v0, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    move-object/from16 v0, v17

    iget-object v5, v0, Lfr/testudo/spacecorsair/display/Drawable;->dimensions:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v5, v5, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    const v6, 0x3f8ccccd    # 1.1f

    mul-float/2addr v5, v6

    move-object/from16 v0, v17

    iget-object v6, v0, Lfr/testudo/spacecorsair/display/Drawable;->dimensions:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v6, v6, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    const v7, 0x3f8ccccd    # 1.1f

    mul-float/2addr v6, v7

    move-object/from16 v0, p0

    iget v7, v0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->spin:F

    const v8, 0x3eb33333    # 0.35f

    const v9, 0x3f59999a    # 0.85f

    const/high16 v10, 0x3f800000    # 1.0f

    const/high16 v11, 0x3f000000    # 0.5f

    const/4 v12, 0x1

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/high16 v15, 0x3f800000    # 1.0f

    const/high16 v16, 0x3f800000    # 1.0f

    invoke-static/range {v2 .. v16}, Lfr/testudo/spacecorsair/mod/ModFx;->sprTex(Lfr/testudo/spacecorsair/display/Texture;FFFFFFFFFZFFFF)V

    .line 342
    const/4 v3, 0x1

    sput-boolean v3, Lfr/testudo/spacecorsair/mod/ModFx;->flatNext:Z

    .line 343
    move-object/from16 v0, v18

    iget v3, v0, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    move-object/from16 v0, v18

    iget v4, v0, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    move-object/from16 v0, v17

    iget-object v5, v0, Lfr/testudo/spacecorsair/display/Drawable;->dimensions:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v5, v5, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    const v6, 0x3f866666    # 1.05f

    mul-float/2addr v5, v6

    move-object/from16 v0, v17

    iget-object v6, v0, Lfr/testudo/spacecorsair/display/Drawable;->dimensions:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v6, v6, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    const v7, 0x3f866666    # 1.05f

    mul-float/2addr v6, v7

    move-object/from16 v0, p0

    iget v7, v0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->spin:F

    const v8, 0x3ee66666    # 0.45f

    const v9, 0x3f666666    # 0.9f

    const/high16 v10, 0x3f800000    # 1.0f

    const v11, 0x3f4ccccd    # 0.8f

    const/4 v12, 0x1

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/high16 v15, 0x3f800000    # 1.0f

    const/high16 v16, 0x3f800000    # 1.0f

    invoke-static/range {v2 .. v16}, Lfr/testudo/spacecorsair/mod/ModFx;->sprTex(Lfr/testudo/spacecorsair/display/Texture;FFFFFFFFFZFFFF)V
    :try_end_11a
    .catchall {:try_start_4f .. :try_end_11a} :catchall_279

    .line 346
    :cond_11a
    const/4 v2, 0x0

    sput-boolean v2, Lfr/testudo/spacecorsair/mod/ModFx;->relative:Z

    .line 350
    :cond_11d
    move-object/from16 v0, v20

    iget-boolean v2, v0, Lfr/testudo/spacecorsair/mod/ModCaps$Profile;->flames:Z

    if-eqz v2, :cond_29b

    .line 351
    sget-object v2, Lfr/testudo/spacecorsair/mod/ModFxData;->ENGINES:[[F

    move-object/from16 v0, v20

    iget v3, v0, Lfr/testudo/spacecorsair/mod/ModCaps$Profile;->data:I

    aget-object v24, v2, v3

    .line 352
    move-object/from16 v0, v20

    iget-boolean v2, v0, Lfr/testudo/spacecorsair/mod/ModCaps$Profile;->titan:Z

    if-eqz v2, :cond_27e

    const v2, 0x3e75c28f    # 0.24f

    move/from16 v18, v2

    .line 353
    :goto_136
    const/4 v2, 0x0

    move/from16 v19, v2

    :goto_139
    add-int/lit8 v2, v19, 0x2

    move-object/from16 v0, v24

    array-length v3, v0

    if-ge v2, v3, :cond_29b

    .line 354
    add-int/lit8 v2, v19, 0x2

    aget v2, v24, v2

    mul-float v2, v2, v21

    const v3, 0x3fa66666    # 1.3f

    mul-float/2addr v3, v2

    move-object/from16 v0, v20

    iget-boolean v2, v0, Lfr/testudo/spacecorsair/mod/ModCaps$Profile;->titan:Z

    if-eqz v2, :cond_292

    const v2, 0x3d8f5c29    # 0.07f

    :goto_153
    mul-float v2, v2, v21

    invoke-static {v3, v2}, Ljava/lang/Math;->max(FF)F

    move-result v25

    .line 355
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

    .line 357
    sget v2, Lfr/testudo/spacecorsair/mod/ModCaps;->thrust:F

    const v3, 0x3d23d70a    # 0.04f

    cmpl-float v2, v2, v3

    if-lez v2, :cond_273

    .line 358
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

    .line 359
    const v2, 0x3f6147ae    # 0.88f

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v4

    double-to-float v3, v4

    const v4, 0x3e75c28f    # 0.24f

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    .line 360
    const/high16 v3, 0x3f000000    # 0.5f

    sget v4, Lfr/testudo/spacecorsair/mod/ModCaps;->thrust:F

    mul-float/2addr v3, v4

    add-float v3, v3, v18

    mul-float v3, v3, v21

    mul-float/2addr v3, v2

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->isBoosterEnabled:Z

    if-eqz v2, :cond_297

    const v2, 0x3faccccd    # 1.35f

    :goto_1c2
    mul-float v6, v3, v2

    .line 361
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

    .line 362
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

    .line 363
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

    .line 364
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

    .line 365
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

    .line 353
    :cond_273
    add-int/lit8 v2, v19, 0x3

    move/from16 v19, v2

    goto/16 :goto_139

    .line 346
    :catchall_279
    move-exception v2

    const/4 v3, 0x0

    sput-boolean v3, Lfr/testudo/spacecorsair/mod/ModFx;->relative:Z

    .line 347
    throw v2

    .line 352
    :cond_27e
    move-object/from16 v0, v20

    iget-boolean v2, v0, Lfr/testudo/spacecorsair/mod/ModCaps$Profile;->big:Z

    if-eqz v2, :cond_28b

    const v2, 0x3e3851ec    # 0.18f

    move/from16 v18, v2

    goto/16 :goto_136

    :cond_28b
    const v2, 0x3e051eb8    # 0.13f

    move/from16 v18, v2

    goto/16 :goto_136

    .line 354
    :cond_292
    const v2, 0x3d4ccccd    # 0.05f

    goto/16 :goto_153

    .line 360
    :cond_297
    const/high16 v2, 0x3f800000    # 1.0f

    goto/16 :goto_1c2

    .line 369
    :cond_29b
    move-object/from16 v0, v20

    iget-boolean v2, v0, Lfr/testudo/spacecorsair/mod/ModCaps$Profile;->top:Z

    if-nez v2, :cond_2a7

    move-object/from16 v0, v20

    iget-boolean v2, v0, Lfr/testudo/spacecorsair/mod/ModCaps$Profile;->titan:Z

    if-eqz v2, :cond_21

    .line 370
    :cond_2a7
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

    .line 371
    move-object/from16 v0, v20

    iget v2, v0, Lfr/testudo/spacecorsair/mod/ModCaps$Profile;->data:I

    if-ltz v2, :cond_376

    sget-object v2, Lfr/testudo/spacecorsair/mod/ModFxData;->RADIUS:[F

    move-object/from16 v0, v20

    iget v3, v0, Lfr/testudo/spacecorsair/mod/ModCaps$Profile;->data:I

    aget v2, v2, v3

    mul-float v2, v2, v21

    move v13, v2

    .line 374
    :goto_2cd
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

    if-eqz v11, :cond_37e

    const v11, 0x3e6147ae    # 0.22f

    :goto_2f9
    const v12, 0x3d75c28f    # 0.06f

    mul-float/2addr v12, v14

    add-float/2addr v11, v12

    const/4 v12, 0x1

    invoke-static/range {v2 .. v12}, Lfr/testudo/spacecorsair/mod/ModFx;->spr(Ljava/lang/String;FFFFFFFFFZ)V

    .line 375
    move-object/from16 v0, v20

    iget-boolean v2, v0, Lfr/testudo/spacecorsair/mod/ModCaps$Profile;->titan:Z

    if-nez v2, :cond_30e

    move-object/from16 v0, v20

    iget-boolean v2, v0, Lfr/testudo/spacecorsair/mod/ModCaps$Profile;->alien:Z

    if-eqz v2, :cond_21

    .line 376
    :cond_30e
    move-wide/from16 v0, v22

    long-to-float v2, v0

    const/high16 v3, 0x42200000    # 40.0f

    div-float/2addr v2, v3

    const/high16 v3, 0x43b40000    # 360.0f

    rem-float v7, v2, v3

    .line 377
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

    .line 378
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

    goto/16 :goto_21

    .line 371
    :cond_376
    const v2, 0x3ee66666    # 0.45f

    mul-float v2, v2, v21

    move v13, v2

    goto/16 :goto_2cd

    .line 374
    :cond_37e
    const v11, 0x3e0f5c29    # 0.14f

    goto/16 :goto_2f9
.end method

.method private static emitDamage(Lfr/testudo/spacecorsair/business/player/PlayerShip;Lfr/testudo/spacecorsair/mod/ModCaps$Profile;JF)V
    .registers 25

    .prologue
    .line 275
    sget-object v2, Lfr/testudo/spacecorsair/mod/ModFxData;->DMG:[[F

    move-object/from16 v0, p1

    iget v3, v0, Lfr/testudo/spacecorsair/mod/ModCaps$Profile;->data:I

    aget-object v17, v2, v3

    .line 276
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

    .line 277
    sget v2, Lfr/testudo/spacecorsair/mod/ModCaps;->smokeTick:I

    int-to-long v2, v2

    sub-long v2, v2, p2

    long-to-int v2, v2

    sput v2, Lfr/testudo/spacecorsair/mod/ModCaps;->smokeTick:I

    .line 278
    sget v2, Lfr/testudo/spacecorsair/mod/ModCaps;->smokeTick:I

    if-gtz v2, :cond_127

    .line 279
    sget v2, Lfr/testudo/spacecorsair/mod/ModCaps;->damageStage:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_1c6

    const/16 v2, 0x37

    :goto_2a
    sput v2, Lfr/testudo/spacecorsair/mod/ModCaps;->smokeTick:I

    .line 280
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v2

    move/from16 v0, v18

    int-to-double v4, v0

    mul-double/2addr v2, v4

    double-to-int v2, v2

    mul-int/lit8 v2, v2, 0x2

    .line 281
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

    .line 282
    const v2, 0x3e3851ec    # 0.18f

    const v3, 0x3ea3d70a    # 0.32f

    invoke-static {v2, v3}, Lfr/testudo/spacecorsair/mod/ModFx;->rnd(FF)F

    move-result v10

    .line 283
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

    .line 284
    sget v11, Lfr/testudo/spacecorsair/mod/ModCaps;->damageStage:I

    const/4 v12, 0x1

    if-ne v11, v12, :cond_1d7

    const v13, 0x3f0ccccd    # 0.55f

    :goto_a6
    const/4 v14, 0x0

    const/4 v15, 0x1

    move v11, v10

    move v12, v10

    .line 283
    invoke-static/range {v2 .. v15}, Lfr/testudo/spacecorsair/mod/ModFx;->part(Ljava/lang/String;FFFFFFFFFFFZZ)V

    .line 285
    const v2, 0x3f99999a    # 1.2f

    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModFx;->lastDrag(F)V

    .line 286
    sget v2, Lfr/testudo/spacecorsair/mod/ModCaps;->damageStage:I

    const/4 v3, 0x2

    if-lt v2, v3, :cond_127

    .line 287
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

    .line 288
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

    .line 289
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

    .line 292
    :cond_127
    sget v2, Lfr/testudo/spacecorsair/mod/ModCaps;->damageStage:I

    const/4 v3, 0x2

    if-lt v2, v3, :cond_1e3

    .line 293
    sget v2, Lfr/testudo/spacecorsair/mod/ModCaps;->sparkTick:I

    int-to-long v2, v2

    sub-long v2, v2, p2

    long-to-int v2, v2

    sput v2, Lfr/testudo/spacecorsair/mod/ModCaps;->sparkTick:I

    .line 294
    sget v2, Lfr/testudo/spacecorsair/mod/ModCaps;->sparkTick:I

    if-gtz v2, :cond_1e3

    .line 295
    sget v2, Lfr/testudo/spacecorsair/mod/ModCaps;->damageStage:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_1df

    const/16 v2, 0xa0

    :goto_13f
    sput v2, Lfr/testudo/spacecorsair/mod/ModCaps;->sparkTick:I

    .line 296
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v2

    move/from16 v0, v18

    int-to-double v4, v0

    mul-double/2addr v2, v4

    double-to-int v2, v2

    mul-int/lit8 v2, v2, 0x2

    .line 297
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

    .line 298
    const/4 v2, 0x0

    move/from16 v16, v2

    :goto_166
    const/4 v2, 0x4

    move/from16 v0, v16

    if-ge v0, v2, :cond_1e3

    .line 299
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v2

    const-wide v4, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v2, v4

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    mul-double v6, v2, v4

    .line 300
    const/high16 v2, 0x42f00000    # 120.0f

    const/high16 v3, 0x43a00000    # 320.0f

    invoke-static {v2, v3}, Lfr/testudo/spacecorsair/mod/ModFx;->rnd(FF)F

    move-result v8

    .line 301
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

    .line 302
    const v2, 0x3d75c28f    # 0.06f

    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModFx;->lastStretch(F)V

    .line 303
    const/high16 v2, 0x40200000    # 2.5f

    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModFx;->lastDrag(F)V

    .line 298
    add-int/lit8 v2, v16, 0x1

    move/from16 v16, v2

    goto :goto_166

    .line 276
    :cond_1bb
    sget v2, Lfr/testudo/spacecorsair/mod/ModCaps;->damageStage:I

    const/4 v4, 0x2

    if-ne v2, v4, :cond_1c3

    const/4 v2, 0x4

    goto/16 :goto_13

    :cond_1c3
    const/4 v2, 0x7

    goto/16 :goto_13

    .line 279
    :cond_1c6
    sget v2, Lfr/testudo/spacecorsair/mod/ModCaps;->damageStage:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1cf

    const/16 v2, 0x5a

    goto/16 :goto_2a

    :cond_1cf
    const/16 v2, 0x96

    goto/16 :goto_2a

    .line 283
    :cond_1d3
    const/high16 v7, 0x44c80000    # 1600.0f

    goto/16 :goto_8e

    .line 284
    :cond_1d7
    const v13, 0x3f4ccccd    # 0.8f

    goto/16 :goto_a6

    .line 287
    :cond_1dc
    const/4 v2, 0x4

    goto/16 :goto_c2

    .line 295
    :cond_1df
    const/16 v2, 0x17c

    goto/16 :goto_13f

    .line 307
    :cond_1e3
    sget v2, Lfr/testudo/spacecorsair/mod/ModCaps;->damageStage:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_26f

    .line 308
    sget v2, Lfr/testudo/spacecorsair/mod/ModCaps;->boomTick:I

    int-to-long v2, v2

    sub-long v2, v2, p2

    long-to-int v2, v2

    sput v2, Lfr/testudo/spacecorsair/mod/ModCaps;->boomTick:I

    .line 309
    sget v2, Lfr/testudo/spacecorsair/mod/ModCaps;->boomTick:I

    if-gtz v2, :cond_26f

    .line 310
    const/high16 v2, 0x44af0000    # 1400.0f

    const v3, 0x45228000    # 2600.0f

    invoke-static {v2, v3}, Lfr/testudo/spacecorsair/mod/ModFx;->rnd(FF)F

    move-result v2

    float-to-int v2, v2

    sput v2, Lfr/testudo/spacecorsair/mod/ModCaps;->boomTick:I

    .line 311
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v2

    move/from16 v0, v18

    int-to-double v4, v0

    mul-double/2addr v2, v4

    double-to-int v2, v2

    mul-int/lit8 v2, v2, 0x2

    .line 312
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

    .line 313
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

    .line 314
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

    .line 317
    :cond_26f
    return-void
.end method

.method public static onBayLaunch(Lfr/testudo/spacecorsair/business/player/PlayerShip;)V
    .registers 21

    .prologue
    .line 471
    :try_start_0
    invoke-static/range {p0 .. p0}, Lfr/testudo/spacecorsair/mod/ModCaps;->profile(Lfr/testudo/spacecorsair/business/player/PlayerShip;)Lfr/testudo/spacecorsair/mod/ModCaps$Profile;

    move-result-object v18

    .line 472
    invoke-static/range {p0 .. p0}, Lfr/testudo/spacecorsair/mod/ModCaps;->size(Lfr/testudo/spacecorsair/business/player/PlayerShip;)F

    move-result v19

    .line 473
    const/4 v2, -0x1

    move/from16 v17, v2

    :goto_b
    const/4 v2, 0x1

    move/from16 v0, v17

    if-gt v0, v2, :cond_115

    .line 474
    move-object/from16 v0, v18

    iget v2, v0, Lfr/testudo/spacecorsair/mod/ModCaps$Profile;->data:I

    if-ltz v2, :cond_ec

    sget-object v2, Lfr/testudo/spacecorsair/mod/ModFxData;->NAV:[[F

    move-object/from16 v0, v18

    iget v3, v0, Lfr/testudo/spacecorsair/mod/ModCaps$Profile;->data:I

    aget-object v2, v2, v3

    move-object v4, v2

    .line 475
    :goto_1f
    if-nez v4, :cond_f0

    move/from16 v0, v17

    int-to-float v2, v0

    mul-float v2, v2, v19

    const v3, 0x3e99999a    # 0.3f

    mul-float/2addr v2, v3

    move v3, v2

    .line 476
    :goto_2b
    if-nez v4, :cond_102

    const/4 v2, 0x0

    .line 477
    :goto_2e
    move-object/from16 v0, p0

    iget-object v4, v0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    move-object/from16 v0, p0

    iget v5, v0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->spin:F

    sget-object v6, Lfr/testudo/spacecorsair/mod/ModCaps;->a:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-static {v4, v5, v3, v2, v6}, Lfr/testudo/spacecorsair/mod/ModFx;->local(Lfr/testudo/spacecorsair/engine/Vector2;FFFLfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 478
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

    .line 479
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

    .line 480
    const/4 v2, 0x0

    move/from16 v16, v2

    :goto_8b
    const/4 v2, 0x5

    move/from16 v0, v16

    if-ge v0, v2, :cond_10f

    .line 481
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

    .line 482
    const/high16 v2, 0x43480000    # 200.0f

    const/high16 v3, 0x43d20000    # 420.0f

    invoke-static {v2, v3}, Lfr/testudo/spacecorsair/mod/ModFx;->rnd(FF)F

    move-result v8

    .line 483
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

    .line 484
    const v2, 0x3d8f5c29    # 0.07f

    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModFx;->lastStretch(F)V

    .line 485
    const/high16 v2, 0x40000000    # 2.0f

    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModFx;->lastDrag(F)V

    .line 480
    add-int/lit8 v2, v16, 0x1

    move/from16 v16, v2

    goto :goto_8b

    .line 474
    :cond_ec
    const/4 v2, 0x0

    move-object v4, v2

    goto/16 :goto_1f

    .line 475
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

    .line 476
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

    .line 473
    :cond_10f
    add-int/lit8 v2, v17, 0x2

    move/from16 v17, v2

    goto/16 :goto_b

    .line 488
    :cond_115
    const-string v2, "bay_launch"

    const v3, 0x3f4ccccd    # 0.8f

    const/high16 v4, 0x3f800000    # 1.0f

    const-wide/16 v6, 0x190

    invoke-static {v2, v3, v4, v6, v7}, Lfr/testudo/spacecorsair/mod/ModSound;->play(Ljava/lang/String;FFJ)I
    :try_end_121
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_121} :catch_122

    .line 492
    :goto_121
    return-void

    .line 489
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

    .line 272
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

    if-gtz v8, :cond_6f

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
    invoke-static/range {p0 .. p0}, Lfr/testudo/spacecorsair/mod/ModDev;->testV30(Lfr/testudo/spacecorsair/business/player/PlayerShip;)V

    .line 151
    const-string v8, "corsair_doomhold"

    invoke-static {v8}, Lfr/testudo/spacecorsair/mod/ModDev;->testFlag(Ljava/lang/String;)Z

    move-result v8

    sput-boolean v8, Lfr/testudo/spacecorsair/mod/ModTitan;->holdFire:Z

    .line 152
    invoke-static/range {p0 .. p0}, Lfr/testudo/spacecorsair/mod/ModFaction;->testTick(Lfr/testudo/spacecorsair/business/player/PlayerShip;)V

    .line 153
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModRep;->testTick()V

    .line 155
    const-string v8, "corsair_level"

    invoke-static {v8}, Lfr/testudo/spacecorsair/mod/ModDev;->testValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 156
    if-eqz v8, :cond_6f

    .line 158
    :try_start_55
    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    .line 159
    sget-object v9, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v9, v9, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v9, v9, Lfr/testudo/spacecorsair/game/Game;->playerInfo:Lfr/testudo/spacecorsair/business/player/PlayerInfo;

    iget v9, v9, Lfr/testudo/spacecorsair/business/player/PlayerInfo;->level:I

    if-ge v9, v8, :cond_6f

    sget-object v9, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v9, v9, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v9, v9, Lfr/testudo/spacecorsair/game/Game;->playerInfo:Lfr/testudo/spacecorsair/business/player/PlayerInfo;

    iput v8, v9, Lfr/testudo/spacecorsair/business/player/PlayerInfo;->level:I
    :try_end_6f
    .catch Ljava/lang/Exception; {:try_start_55 .. :try_end_6f} :catch_477

    .line 163
    :cond_6f
    :goto_6f
    invoke-static/range {p0 .. p0}, Lfr/testudo/spacecorsair/mod/ModComms;->tick(Lfr/testudo/spacecorsair/business/player/PlayerShip;)V

    .line 164
    invoke-static/range {p0 .. p2}, Lfr/testudo/spacecorsair/mod/ModDerelict;->tick(Lfr/testudo/spacecorsair/business/player/PlayerShip;J)V

    .line 165
    invoke-static/range {p0 .. p2}, Lfr/testudo/spacecorsair/mod/ModRep;->tick(Lfr/testudo/spacecorsair/business/player/PlayerShip;J)V

    .line 166
    invoke-static/range {p0 .. p2}, Lfr/testudo/spacecorsair/mod/ModAlerts;->tick(Lfr/testudo/spacecorsair/business/player/PlayerShip;J)V

    .line 167
    invoke-static/range {p0 .. p2}, Lfr/testudo/spacecorsair/mod/ModShield;->tick(Lfr/testudo/spacecorsair/business/player/PlayerShip;J)V

    .line 168
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModCapitals;->checkDestroyed()V

    .line 169
    invoke-static/range {p0 .. p2}, Lfr/testudo/spacecorsair/mod/ModTitanAI;->tick(Lfr/testudo/spacecorsair/business/player/PlayerShip;J)V

    .line 170
    sget-object v8, Lfr/testudo/spacecorsair/mod/ModCaps;->level:Ljava/lang/Object;

    if-eq v6, v8, :cond_c2

    .line 171
    sput-object v6, Lfr/testudo/spacecorsair/mod/ModCaps;->level:Ljava/lang/Object;

    .line 172
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModFx;->clear()V

    .line 173
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModCapitals;->onLevel()V

    .line 174
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModWreck;->onLevel()V

    .line 175
    invoke-static/range {p0 .. p0}, Lfr/testudo/spacecorsair/mod/ModTitanAI;->resetPlayer(Lfr/testudo/spacecorsair/business/player/PlayerShip;)V

    .line 176
    invoke-static/range {p0 .. p0}, Lfr/testudo/spacecorsair/mod/ModDerelict;->onLevel(Lfr/testudo/spacecorsair/business/player/PlayerShip;)V

    .line 177
    if-nez v7, :cond_c2

    move-object/from16 v0, v21

    iget-boolean v6, v0, Lfr/testudo/spacecorsair/mod/ModCaps$Profile;->titan:Z

    if-nez v6, :cond_ad

    move-object/from16 v0, v21

    iget-boolean v6, v0, Lfr/testudo/spacecorsair/mod/ModCaps$Profile;->top:Z

    if-eqz v6, :cond_c2

    move-object/from16 v0, v21

    iget-boolean v6, v0, Lfr/testudo/spacecorsair/mod/ModCaps$Profile;->big:Z

    if-eqz v6, :cond_c2

    .line 178
    :cond_ad
    const/16 v6, 0x44c

    sput v6, Lfr/testudo/spacecorsair/mod/ModCaps;->warp:I

    .line 179
    const-string v8, "warp_in"

    move-object/from16 v0, v21

    iget-boolean v6, v0, Lfr/testudo/spacecorsair/mod/ModCaps$Profile;->titan:Z

    if-eqz v6, :cond_d9

    const/high16 v6, 0x3f800000    # 1.0f

    :goto_bb
    const/high16 v9, 0x3f800000    # 1.0f

    const-wide/16 v10, 0x7d0

    invoke-static {v8, v6, v9, v10, v11}, Lfr/testudo/spacecorsair/mod/ModSound;->play(Ljava/lang/String;FFJ)I

    .line 182
    :cond_c2
    move-object/from16 v0, v21

    iget-boolean v6, v0, Lfr/testudo/spacecorsair/mod/ModCaps$Profile;->flames:Z

    if-eqz v6, :cond_cb

    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModCaps;->blankStockGaz()V

    .line 183
    :cond_cb
    if-nez v7, :cond_d3

    move-object/from16 v0, p0

    iget-boolean v6, v0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->isDocked:Z

    if-eqz v6, :cond_dd

    .line 184
    :cond_d3
    const/4 v6, 0x0

    invoke-static {v6}, Lfr/testudo/spacecorsair/mod/ModSound;->rumble(F)V

    goto/16 :goto_12

    .line 179
    :cond_d9
    const v6, 0x3f333333    # 0.7f

    goto :goto_bb

    .line 187
    :cond_dd
    sget-boolean v6, Lfr/testudo/spacecorsair/mod/ModCaps;->gearChecked:Z

    if-nez v6, :cond_e7

    .line 189
    const/4 v6, 0x1

    sput-boolean v6, Lfr/testudo/spacecorsair/mod/ModCaps;->gearChecked:Z

    .line 190
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLock;->onShipChanged()V

    .line 192
    :cond_e7
    sget-boolean v6, Lfr/testudo/spacecorsair/mod/ModCaps;->lowHullTest:Z

    if-eqz v6, :cond_103

    move-object/from16 v0, p0

    iget v6, v0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->maxLife:F

    const/4 v7, 0x0

    cmpl-float v6, v6, v7

    if-lez v6, :cond_103

    .line 193
    const/4 v6, 0x0

    sput-boolean v6, Lfr/testudo/spacecorsair/mod/ModCaps;->lowHullTest:Z

    .line 194
    move-object/from16 v0, p0

    iget v6, v0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->maxLife:F

    const v7, 0x3e4ccccd    # 0.2f

    mul-float/2addr v6, v7

    move-object/from16 v0, p0

    iput v6, v0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->life:F

    .line 196
    :cond_103
    move-object/from16 v0, p0

    iget-boolean v6, v0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->isPousee:Z

    if-eqz v6, :cond_1aa

    move-object/from16 v0, p0

    iget-boolean v6, v0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->isBoosterEnabled:Z

    if-eqz v6, :cond_19d

    const/high16 v6, 0x3f800000    # 1.0f

    .line 197
    :goto_111
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

    .line 198
    invoke-static/range {p0 .. p0}, Lfr/testudo/spacecorsair/mod/ModCaps;->size(Lfr/testudo/spacecorsair/business/player/PlayerShip;)F

    move-result v22

    .line 201
    move-object/from16 v0, p0

    iget-boolean v6, v0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->isPousee:Z

    if-eqz v6, :cond_1ad

    sget-boolean v6, Lfr/testudo/spacecorsair/mod/ModCaps;->wasThrust:Z

    if-nez v6, :cond_1ad

    move-object/from16 v0, v21

    iget-boolean v6, v0, Lfr/testudo/spacecorsair/mod/ModCaps$Profile;->flames:Z

    if-eqz v6, :cond_1ad

    move-object/from16 v0, v21

    iget-boolean v6, v0, Lfr/testudo/spacecorsair/mod/ModCaps$Profile;->top:Z

    if-eqz v6, :cond_1ad

    .line 202
    sget-object v6, Lfr/testudo/spacecorsair/mod/ModFxData;->ENGINES:[[F

    move-object/from16 v0, v21

    iget v7, v0, Lfr/testudo/spacecorsair/mod/ModCaps$Profile;->data:I

    aget-object v23, v6, v7

    .line 203
    const/4 v6, 0x0

    move/from16 v20, v6

    :goto_14b
    add-int/lit8 v6, v20, 0x2

    move-object/from16 v0, v23

    array-length v7, v0

    if-ge v6, v7, :cond_1ad

    .line 204
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

    .line 205
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

    .line 203
    add-int/lit8 v6, v20, 0x3

    move/from16 v20, v6

    goto :goto_14b

    .line 196
    :cond_19d
    const v6, 0x3eb33333    # 0.35f

    move-object/from16 v0, p0

    iget v7, v0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->curPouseePourcentage:F

    const/high16 v8, 0x43200000    # 160.0f

    div-float/2addr v7, v8

    add-float/2addr v6, v7

    goto/16 :goto_111

    :cond_1aa
    const/4 v6, 0x0

    goto/16 :goto_111

    .line 208
    :cond_1ad
    move-object/from16 v0, p0

    iget-boolean v6, v0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->isPousee:Z

    sput-boolean v6, Lfr/testudo/spacecorsair/mod/ModCaps;->wasThrust:Z

    .line 211
    move-object/from16 v0, v21

    iget-boolean v6, v0, Lfr/testudo/spacecorsair/mod/ModCaps$Profile;->top:Z

    if-eqz v6, :cond_414

    move-object/from16 v0, v21

    iget-boolean v6, v0, Lfr/testudo/spacecorsair/mod/ModCaps$Profile;->big:Z

    if-eqz v6, :cond_414

    sget v7, Lfr/testudo/spacecorsair/mod/ModCaps;->thrust:F

    move-object/from16 v0, v21

    iget-boolean v6, v0, Lfr/testudo/spacecorsair/mod/ModCaps$Profile;->titan:Z

    if-eqz v6, :cond_40f

    const v6, 0x3ee66666    # 0.45f

    :goto_1ca
    mul-float/2addr v6, v7

    invoke-static {v6}, Lfr/testudo/spacecorsair/mod/ModSound;->rumble(F)V

    .line 215
    :goto_1ce
    move-object/from16 v0, v21

    iget-boolean v6, v0, Lfr/testudo/spacecorsair/mod/ModCaps$Profile;->flames:Z

    if-eqz v6, :cond_28e

    move-object/from16 v0, v21

    iget-boolean v6, v0, Lfr/testudo/spacecorsair/mod/ModCaps$Profile;->top:Z

    if-eqz v6, :cond_28e

    move-object/from16 v0, p0

    iget-object v6, v0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->speed:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v6}, Lfr/testudo/spacecorsair/engine/Vector2;->length()F

    move-result v6

    const v7, 0x3f99999a    # 1.2f

    cmpl-float v6, v6, v7

    if-lez v6, :cond_28e

    .line 216
    sget v6, Lfr/testudo/spacecorsair/mod/ModCaps;->wakeTick:I

    int-to-long v6, v6

    sub-long v6, v6, p1

    long-to-int v6, v6

    sput v6, Lfr/testudo/spacecorsair/mod/ModCaps;->wakeTick:I

    .line 217
    sget v6, Lfr/testudo/spacecorsair/mod/ModCaps;->wakeTick:I

    if-gtz v6, :cond_28e

    .line 218
    move-object/from16 v0, v21

    iget-boolean v6, v0, Lfr/testudo/spacecorsair/mod/ModCaps$Profile;->titan:Z

    if-eqz v6, :cond_41a

    const/16 v6, 0x2d

    :goto_1fd
    sput v6, Lfr/testudo/spacecorsair/mod/ModCaps;->wakeTick:I

    .line 219
    sget-object v6, Lfr/testudo/spacecorsair/mod/ModFxData;->ENGINES:[[F

    move-object/from16 v0, v21

    iget v7, v0, Lfr/testudo/spacecorsair/mod/ModCaps$Profile;->data:I

    aget-object v6, v6, v7

    .line 220
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v8

    array-length v7, v6

    div-int/lit8 v7, v7, 0x3

    int-to-double v10, v7

    mul-double/2addr v8, v10

    double-to-int v7, v8

    mul-int/lit8 v7, v7, 0x3

    .line 221
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

    .line 222
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

    if-eqz v11, :cond_41e

    const/high16 v11, 0x44c80000    # 1600.0f

    :goto_250
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

    .line 228
    :cond_28e
    sget v6, Lfr/testudo/spacecorsair/mod/ModCaps;->lastLife:F

    const/4 v7, 0x0

    cmpl-float v6, v6, v7

    if-ltz v6, :cond_2b3

    move-object/from16 v0, p0

    iget v6, v0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->life:F

    sget v7, Lfr/testudo/spacecorsair/mod/ModCaps;->lastLife:F

    const v8, 0x3c23d70a    # 0.01f

    add-float/2addr v7, v8

    cmpl-float v6, v6, v7

    if-lez v6, :cond_2b3

    move-object/from16 v0, p0

    iget v6, v0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->life:F

    move-object/from16 v0, p0

    iget v7, v0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->maxLife:F

    cmpg-float v6, v6, v7

    if-gez v6, :cond_2b3

    const/16 v6, 0x258

    sput v6, Lfr/testudo/spacecorsair/mod/ModCaps;->repairGlow:I

    .line 229
    :cond_2b3
    move-object/from16 v0, p0

    iget v6, v0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->life:F

    sput v6, Lfr/testudo/spacecorsair/mod/ModCaps;->lastLife:F

    .line 230
    sget v6, Lfr/testudo/spacecorsair/mod/ModCaps;->repairGlow:I

    if-lez v6, :cond_3ba

    .line 231
    sget v6, Lfr/testudo/spacecorsair/mod/ModCaps;->repairGlow:I

    int-to-long v6, v6

    sub-long v6, v6, p1

    long-to-int v6, v6

    sput v6, Lfr/testudo/spacecorsair/mod/ModCaps;->repairGlow:I

    .line 232
    sget v6, Lfr/testudo/spacecorsair/mod/ModCaps;->repairTick:I

    int-to-long v6, v6

    sub-long v6, v6, p1

    long-to-int v6, v6

    sput v6, Lfr/testudo/spacecorsair/mod/ModCaps;->repairTick:I

    .line 233
    sget v6, Lfr/testudo/spacecorsair/mod/ModCaps;->repairPulse:I

    int-to-long v6, v6

    sub-long v6, v6, p1

    long-to-int v6, v6

    sput v6, Lfr/testudo/spacecorsair/mod/ModCaps;->repairPulse:I

    .line 234
    sget v6, Lfr/testudo/spacecorsair/mod/ModCaps;->repairSound:I

    int-to-long v6, v6

    sub-long v6, v6, p1

    long-to-int v6, v6

    sput v6, Lfr/testudo/spacecorsair/mod/ModCaps;->repairSound:I

    .line 235
    move-object/from16 v0, v21

    iget-object v6, v0, Lfr/testudo/spacecorsair/mod/ModCaps$Profile;->hull:Lfr/testudo/spacecorsair/mod/ModShips$Hull;

    if-eqz v6, :cond_422

    const-string v6, "crimson_throne"

    move-object/from16 v0, v21

    iget-object v7, v0, Lfr/testudo/spacecorsair/mod/ModCaps$Profile;->hull:Lfr/testudo/spacecorsair/mod/ModShips$Hull;

    iget-object v7, v7, Lfr/testudo/spacecorsair/mod/ModShips$Hull;->art:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_422

    const/4 v6, 0x1

    .line 236
    :goto_2f2
    if-eqz v6, :cond_425

    const/high16 v14, 0x3f800000    # 1.0f

    :goto_2f6
    if-eqz v6, :cond_42a

    const v15, 0x3f19999a    # 0.6f

    :goto_2fb
    if-eqz v6, :cond_42e

    const v16, 0x3e4ccccd    # 0.2f

    .line 237
    :goto_300
    sget v7, Lfr/testudo/spacecorsair/mod/ModCaps;->repairTick:I

    if-gtz v7, :cond_374

    move-object/from16 v0, v21

    iget v7, v0, Lfr/testudo/spacecorsair/mod/ModCaps$Profile;->data:I

    if-ltz v7, :cond_374

    .line 238
    const/16 v7, 0x6e

    sput v7, Lfr/testudo/spacecorsair/mod/ModCaps;->repairTick:I

    .line 239
    sget-object v7, Lfr/testudo/spacecorsair/mod/ModFxData;->DMG:[[F

    move-object/from16 v0, v21

    iget v8, v0, Lfr/testudo/spacecorsair/mod/ModCaps$Profile;->data:I

    aget-object v7, v7, v8

    .line 240
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v8

    array-length v10, v7

    div-int/lit8 v10, v10, 0x2

    int-to-double v10, v10

    mul-double/2addr v8, v10

    double-to-int v8, v8

    mul-int/lit8 v8, v8, 0x2

    .line 241
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

    .line 242
    if-eqz v6, :cond_432

    const-string v6, "fx_fire"

    :goto_33d
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

    .line 244
    :cond_374
    sget v6, Lfr/testudo/spacecorsair/mod/ModCaps;->repairPulse:I

    if-gtz v6, :cond_3a6

    .line 245
    const/16 v6, 0x5dc

    sput v6, Lfr/testudo/spacecorsair/mod/ModCaps;->repairPulse:I

    .line 246
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

    .line 247
    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static {v6, v7}, Lfr/testudo/spacecorsair/mod/ModFx;->lastSpin(FF)V

    .line 249
    :cond_3a6
    sget v6, Lfr/testudo/spacecorsair/mod/ModCaps;->repairSound:I

    if-gtz v6, :cond_3ba

    .line 250
    const/16 v6, 0x1194

    sput v6, Lfr/testudo/spacecorsair/mod/ModCaps;->repairSound:I

    .line 251
    const-string v6, "repair"

    const v7, 0x3eb33333    # 0.35f

    const/high16 v8, 0x3f800000    # 1.0f

    const-wide/16 v10, 0xbb8

    invoke-static {v6, v7, v8, v10, v11}, Lfr/testudo/spacecorsair/mod/ModSound;->play(Ljava/lang/String;FFJ)I

    .line 256
    :cond_3ba
    move-object/from16 v0, v21

    iget-boolean v6, v0, Lfr/testudo/spacecorsair/mod/ModCaps$Profile;->big:Z

    if-eqz v6, :cond_473

    move-object/from16 v0, v21

    iget v6, v0, Lfr/testudo/spacecorsair/mod/ModCaps$Profile;->data:I

    if-ltz v6, :cond_473

    .line 257
    move-object/from16 v0, p0

    iget v6, v0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->maxLife:F

    const/4 v7, 0x0

    cmpg-float v6, v6, v7

    if-gtz v6, :cond_436

    const/high16 v6, 0x3f800000    # 1.0f

    move v8, v6

    .line 258
    :goto_3d2
    const/high16 v6, 0x3e800000    # 0.25f

    cmpg-float v6, v8, v6

    if-gez v6, :cond_441

    const/4 v6, 0x3

    .line 259
    :goto_3d9
    sget v7, Lfr/testudo/spacecorsair/mod/ModCaps;->damageStage:I

    if-le v6, v7, :cond_453

    .line 260
    sget v7, Lfr/testudo/spacecorsair/mod/ModCaps;->damageStage:I

    if-ltz v7, :cond_3f0

    const/4 v7, 0x2

    if-lt v6, v7, :cond_3f0

    const-string v7, "hull_breach"

    const v8, 0x3f19999a    # 0.6f

    const/high16 v9, 0x3f800000    # 1.0f

    const-wide/16 v10, 0x5dc

    invoke-static {v7, v8, v9, v10, v11}, Lfr/testudo/spacecorsair/mod/ModSound;->play(Ljava/lang/String;FFJ)I

    .line 261
    :cond_3f0
    sput v6, Lfr/testudo/spacecorsair/mod/ModCaps;->damageStage:I

    .line 266
    :cond_3f2
    :goto_3f2
    sget v6, Lfr/testudo/spacecorsair/mod/ModCaps;->damageStage:I

    if-lez v6, :cond_401

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-wide/from16 v2, p1

    move/from16 v4, v22

    invoke-static {v0, v1, v2, v3, v4}, Lfr/testudo/spacecorsair/mod/ModCaps;->emitDamage(Lfr/testudo/spacecorsair/business/player/PlayerShip;Lfr/testudo/spacecorsair/mod/ModCaps$Profile;JF)V

    .line 271
    :cond_401
    :goto_401
    sget v6, Lfr/testudo/spacecorsair/mod/ModCaps;->warp:I

    if-lez v6, :cond_12

    sget v6, Lfr/testudo/spacecorsair/mod/ModCaps;->warp:I

    int-to-long v6, v6

    sub-long v6, v6, p1

    long-to-int v6, v6

    sput v6, Lfr/testudo/spacecorsair/mod/ModCaps;->warp:I

    goto/16 :goto_12

    .line 211
    :cond_40f
    const v6, 0x3e99999a    # 0.3f

    goto/16 :goto_1ca

    .line 212
    :cond_414
    const/4 v6, 0x0

    invoke-static {v6}, Lfr/testudo/spacecorsair/mod/ModSound;->rumble(F)V

    goto/16 :goto_1ce

    .line 218
    :cond_41a
    const/16 v6, 0x50

    goto/16 :goto_1fd

    .line 222
    :cond_41e
    const/high16 v11, 0x447a0000    # 1000.0f

    goto/16 :goto_250

    .line 235
    :cond_422
    const/4 v6, 0x0

    goto/16 :goto_2f2

    .line 236
    :cond_425
    const v14, 0x3eb33333    # 0.35f

    goto/16 :goto_2f6

    :cond_42a
    const/high16 v15, 0x3f800000    # 1.0f

    goto/16 :goto_2fb

    :cond_42e
    const/high16 v16, 0x3f000000    # 0.5f

    goto/16 :goto_300

    .line 242
    :cond_432
    const-string v6, "fx_plus"

    goto/16 :goto_33d

    .line 257
    :cond_436
    move-object/from16 v0, p0

    iget v6, v0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->life:F

    move-object/from16 v0, p0

    iget v7, v0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->maxLife:F

    div-float/2addr v6, v7

    move v8, v6

    goto :goto_3d2

    .line 258
    :cond_441
    const/high16 v6, 0x3f000000    # 0.5f

    cmpg-float v6, v8, v6

    if-gez v6, :cond_449

    const/4 v6, 0x2

    goto :goto_3d9

    :cond_449
    const/high16 v6, 0x3f400000    # 0.75f

    cmpg-float v6, v8, v6

    if-gez v6, :cond_451

    const/4 v6, 0x1

    goto :goto_3d9

    :cond_451
    const/4 v6, 0x0

    goto :goto_3d9

    .line 262
    :cond_453
    sget v7, Lfr/testudo/spacecorsair/mod/ModCaps;->damageStage:I

    if-ge v6, v7, :cond_3f2

    .line 263
    sget v7, Lfr/testudo/spacecorsair/mod/ModCaps;->damageStage:I

    const/4 v9, 0x3

    if-ne v7, v9, :cond_466

    const v7, 0x3e99999a    # 0.3f

    .line 264
    :goto_45f
    cmpl-float v7, v8, v7

    if-ltz v7, :cond_3f2

    sput v6, Lfr/testudo/spacecorsair/mod/ModCaps;->damageStage:I

    goto :goto_3f2

    .line 263
    :cond_466
    sget v7, Lfr/testudo/spacecorsair/mod/ModCaps;->damageStage:I

    const/4 v9, 0x2

    if-ne v7, v9, :cond_46f

    const v7, 0x3f0ccccd    # 0.55f

    goto :goto_45f

    :cond_46f
    const v7, 0x3f4ccccd    # 0.8f

    goto :goto_45f

    .line 268
    :cond_473
    const/4 v6, 0x0

    sput v6, Lfr/testudo/spacecorsair/mod/ModCaps;->damageStage:I

    goto :goto_401

    .line 160
    :catch_477
    move-exception v8

    goto/16 :goto_6f
.end method
