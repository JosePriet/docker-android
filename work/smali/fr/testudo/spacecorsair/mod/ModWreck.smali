.class public final Lfr/testudo/spacecorsair/mod/ModWreck;
.super Lfr/testudo/spacecorsair/business/Element;
.source "ModWreck.java"


# static fields
.field private static final BANDS2:[[F

.field private static final BANDS3:[[F

.field static final MAX:I = 0x24

.field static final MAX_DRIFT:F = 0.4f

.field private static final a:Lfr/testudo/spacecorsair/engine/Vector2;

.field private static final b:Lfr/testudo/spacecorsair/engine/Vector2;

.field static final live:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lfr/testudo/spacecorsair/mod/ModWreck;",
            ">;"
        }
    .end annotation
.end field

.field private static final sp:[F


# instance fields
.field art:Ljava/lang/String;

.field born:J

.field private final burnA:[F

.field private final burnSpr:Lfr/testudo/spacecorsair/mod/ModFx$Sprite;

.field cutBottom:Z

.field cutTop:Z

.field derelict:Z

.field derelictSite:I

.field fadeMs:J

.field group:[Z

.field h:F

.field husk:Z

.field private lastVx:F

.field private lastVy:F

.field lifeMs:J

.field private nextVent:J

.field private final phys:Lfr/testudo/spacecorsair/engine/Vector2;

.field poi:Z

.field preDrawn:Z

.field private scorch:[F

.field private scorchSize:F

.field private final spr:Lfr/testudo/spacecorsair/mod/ModFx$Sprite;

.field srcBoss:Z

.field srcClass:I

.field srcElite:Z

.field srcLevel:I

.field tex:Lfr/testudo/spacecorsair/display/Texture;

.field tint:F

.field u0:F

.field u1:F

.field v0:F

.field v1:F

.field private final vis:Lfr/testudo/spacecorsair/engine/Vector2;

.field visualOnly:Z

.field w:F


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x2

    .line 140
    new-instance v0, Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-direct {v0}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>()V

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModWreck;->a:Lfr/testudo/spacecorsair/engine/Vector2;

    new-instance v0, Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-direct {v0}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>()V

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModWreck;->b:Lfr/testudo/spacecorsair/engine/Vector2;

    .line 205
    new-array v0, v2, [F

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModWreck;->sp:[F

    .line 237
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModWreck;->live:Ljava/util/ArrayList;

    .line 319
    new-array v0, v2, [[F

    new-array v1, v2, [F

    fill-array-data v1, :array_4a

    aput-object v1, v0, v3

    new-array v1, v2, [F

    fill-array-data v1, :array_52

    aput-object v1, v0, v4

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModWreck;->BANDS2:[[F

    .line 320
    const/4 v0, 0x3

    new-array v0, v0, [[F

    new-array v1, v2, [F

    fill-array-data v1, :array_5a

    aput-object v1, v0, v3

    new-array v1, v2, [F

    fill-array-data v1, :array_62

    aput-object v1, v0, v4

    new-array v1, v2, [F

    fill-array-data v1, :array_6a

    aput-object v1, v0, v2

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModWreck;->BANDS3:[[F

    return-void

    .line 319
    nop

    :array_4a
    .array-data 4
        0x0
        0x3f0f5c29    # 0.56f
    .end array-data

    :array_52
    .array-data 4
        0x3ee147ae    # 0.44f
        0x3f800000    # 1.0f
    .end array-data

    .line 320
    :array_5a
    .array-data 4
        0x0
        0x3ecccccd    # 0.4f
    .end array-data

    :array_62
    .array-data 4
        0x3e99999a    # 0.3f
        0x3f333333    # 0.7f
    .end array-data

    :array_6a
    .array-data 4
        0x3f19999a    # 0.6f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method constructor <init>()V
    .registers 7

    .prologue
    .line 54
    invoke-direct {p0}, Lfr/testudo/spacecorsair/business/Element;-><init>()V

    .line 38
    const v0, 0x3f1eb852    # 0.62f

    iput v0, p0, Lfr/testudo/spacecorsair/mod/ModWreck;->tint:F

    .line 39
    const/4 v0, -0x1

    iput v0, p0, Lfr/testudo/spacecorsair/mod/ModWreck;->derelictSite:I

    .line 46
    new-instance v0, Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-direct {v0}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>()V

    iput-object v0, p0, Lfr/testudo/spacecorsair/mod/ModWreck;->phys:Lfr/testudo/spacecorsair/engine/Vector2;

    new-instance v0, Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-direct {v0}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>()V

    iput-object v0, p0, Lfr/testudo/spacecorsair/mod/ModWreck;->vis:Lfr/testudo/spacecorsair/engine/Vector2;

    .line 47
    new-instance v0, Lfr/testudo/spacecorsair/mod/ModFx$Sprite;

    invoke-direct {v0}, Lfr/testudo/spacecorsair/mod/ModFx$Sprite;-><init>()V

    iput-object v0, p0, Lfr/testudo/spacecorsair/mod/ModWreck;->spr:Lfr/testudo/spacecorsair/mod/ModFx$Sprite;

    .line 48
    new-instance v0, Lfr/testudo/spacecorsair/mod/ModFx$Sprite;

    invoke-direct {v0}, Lfr/testudo/spacecorsair/mod/ModFx$Sprite;-><init>()V

    iput-object v0, p0, Lfr/testudo/spacecorsair/mod/ModWreck;->burnSpr:Lfr/testudo/spacecorsair/mod/ModFx$Sprite;

    .line 49
    const/4 v0, 0x2

    new-array v0, v0, [F

    iput-object v0, p0, Lfr/testudo/spacecorsair/mod/ModWreck;->burnA:[F

    .line 55
    const/4 v0, 0x1

    iput-boolean v0, p0, Lfr/testudo/spacecorsair/mod/ModWreck;->hasSpeedDeperdition:Z

    .line 56
    const v0, 0x3f803127    # 1.0015f

    iput v0, p0, Lfr/testudo/spacecorsair/mod/ModWreck;->speedDeperditionfactor:F

    .line 57
    const/4 v0, 0x0

    iput-boolean v0, p0, Lfr/testudo/spacecorsair/mod/ModWreck;->drawOnRadar:Z

    .line 58
    const/high16 v0, 0x40c00000    # 6.0f

    iput v0, p0, Lfr/testudo/spacecorsair/mod/ModWreck;->mass:F

    .line 59
    const-string v0, "Wreck"

    iput-object v0, p0, Lfr/testudo/spacecorsair/mod/ModWreck;->objectName:Ljava/lang/String;

    .line 60
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lfr/testudo/spacecorsair/mod/ModWreck;->born:J

    .line 61
    iget-wide v0, p0, Lfr/testudo/spacecorsair/mod/ModWreck;->born:J

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v2

    const-wide v4, 0x4097700000000000L    # 1500.0

    mul-double/2addr v2, v4

    double-to-long v2, v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lfr/testudo/spacecorsair/mod/ModWreck;->nextVent:J

    .line 62
    return-void
.end method

.method static add(Lfr/testudo/spacecorsair/mod/ModWreck;)V
    .registers 7

    .prologue
    const/16 v5, 0x24

    const/4 v2, 0x0

    .line 457
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModWreck;->speed:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v0, v0, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    iput v0, p0, Lfr/testudo/spacecorsair/mod/ModWreck;->lastVx:F

    .line 458
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModWreck;->speed:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v0, v0, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    iput v0, p0, Lfr/testudo/spacecorsair/mod/ModWreck;->lastVy:F

    .line 459
    iget-boolean v0, p0, Lfr/testudo/spacecorsair/mod/ModWreck;->visualOnly:Z

    if-eqz v0, :cond_1f

    .line 460
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/Game;->currentLevel:Lfr/testudo/spacecorsair/game/levels/Level;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/levels/Level;->toAddDrawOnly:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 474
    :goto_1e
    return-void

    .line 463
    :cond_1f
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModWreck;->live:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v3, v2

    .line 464
    :goto_25
    const/4 v0, 0x2

    if-ge v3, v0, :cond_67

    sget-object v0, Lfr/testudo/spacecorsair/mod/ModWreck;->live:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, v5, :cond_67

    move v1, v2

    .line 466
    :goto_31
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModWreck;->live:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_63

    sget-object v0, Lfr/testudo/spacecorsair/mod/ModWreck;->live:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, v5, :cond_63

    .line 467
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModWreck;->live:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfr/testudo/spacecorsair/mod/ModWreck;

    .line 468
    iget-boolean v4, v0, Lfr/testudo/spacecorsair/mod/ModWreck;->derelict:Z

    if-nez v4, :cond_59

    iget-boolean v4, v0, Lfr/testudo/spacecorsair/mod/ModWreck;->poi:Z

    if-nez v4, :cond_59

    if-eq v0, p0, :cond_59

    if-nez v3, :cond_5d

    iget-boolean v4, v0, Lfr/testudo/spacecorsair/mod/ModWreck;->husk:Z

    if-nez v4, :cond_5d

    .line 466
    :cond_59
    :goto_59
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_31

    .line 469
    :cond_5d
    invoke-direct {v0}, Lfr/testudo/spacecorsair/mod/ModWreck;->vanish()V

    .line 470
    add-int/lit8 v1, v1, -0x1

    goto :goto_59

    .line 464
    :cond_63
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_25

    .line 473
    :cond_67
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/Game;->currentLevel:Lfr/testudo/spacecorsair/game/levels/Level;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/levels/Level;->toAdd:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1e
.end method

.method static breakUp(Lfr/testudo/spacecorsair/business/Element;Lfr/testudo/spacecorsair/display/Drawable;IZJ)[Lfr/testudo/spacecorsair/mod/ModWreck;
    .registers 30

    .prologue
    .line 398
    move-object/from16 v0, p1

    iget-object v0, v0, Lfr/testudo/spacecorsair/display/Drawable;->myTexture:Lfr/testudo/spacecorsair/display/Texture;

    move-object/from16 v21, v0

    .line 399
    if-eqz v21, :cond_e

    move-object/from16 v0, v21

    iget v4, v0, Lfr/testudo/spacecorsair/display/Texture;->name:I

    if-gtz v4, :cond_10

    :cond_e
    const/4 v4, 0x0

    .line 429
    :goto_f
    return-object v4

    .line 401
    :cond_10
    move-object/from16 v0, p1

    instance-of v4, v0, Lfr/testudo/spacecorsair/mod/ModFx$Sprite;

    if-eqz v4, :cond_106

    move-object/from16 v4, p1

    check-cast v4, Lfr/testudo/spacecorsair/mod/ModFx$Sprite;

    iget v5, v4, Lfr/testudo/spacecorsair/mod/ModFx$Sprite;->w:F

    check-cast p1, Lfr/testudo/spacecorsair/mod/ModFx$Sprite;

    move-object/from16 v0, p1

    iget v4, v0, Lfr/testudo/spacecorsair/mod/ModFx$Sprite;->h:F

    move/from16 v19, v4

    move/from16 v20, v5

    .line 403
    :goto_26
    const/4 v4, 0x3

    move/from16 v0, p2

    if-lt v0, v4, :cond_118

    const/4 v4, 0x3

    move/from16 v18, v4

    .line 404
    :goto_2e
    const/4 v4, 0x2

    move/from16 v0, v18

    if-ne v0, v4, :cond_11d

    const/4 v4, 0x3

    new-array v4, v4, [F

    const/4 v5, 0x0

    const/4 v6, 0x0

    aput v6, v4, v5

    const/4 v5, 0x1

    const v6, 0x3ee147ae    # 0.44f

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v8

    double-to-float v7, v8

    const v8, 0x3df5c28f    # 0.12f

    mul-float/2addr v7, v8

    add-float/2addr v6, v7

    aput v6, v4, v5

    const/4 v5, 0x2

    const/high16 v6, 0x3f800000    # 1.0f

    aput v6, v4, v5

    move-object/from16 v16, v4

    .line 406
    :goto_51
    move/from16 v0, v18

    new-array v0, v0, [Lfr/testudo/spacecorsair/mod/ModWreck;

    move-object/from16 v17, v0

    .line 407
    const/4 v4, 0x1

    new-array v0, v4, [Z

    move-object/from16 v22, v0

    .line 408
    move/from16 v0, v20

    move/from16 v1, v19

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v23

    .line 409
    const-string v4, "fx_explosion_big_sheet"

    const/16 v5, 0x8

    const/16 v6, 0x40

    move-object/from16 v0, p0

    iget-object v7, v0, Lfr/testudo/spacecorsair/business/Element;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v7, v7, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    move-object/from16 v0, p0

    iget-object v8, v0, Lfr/testudo/spacecorsair/business/Element;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v8, v8, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    const v9, 0x3faccccd    # 1.35f

    mul-float v9, v9, v23

    const-wide/16 v10, 0x514

    const/high16 v12, 0x3f800000    # 1.0f

    const v13, 0x3f4ccccd    # 0.8f

    const/high16 v14, 0x3f000000    # 0.5f

    const/4 v15, 0x1

    invoke-static/range {v4 .. v15}, Lfr/testudo/spacecorsair/mod/ModLive;->fx(Ljava/lang/String;IIFFFJFFFZ)V

    .line 410
    move-object/from16 v0, p0

    iget-object v4, v0, Lfr/testudo/spacecorsair/business/Element;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    move-object/from16 v0, p0

    iget-object v5, v0, Lfr/testudo/spacecorsair/business/Element;->speed:Lfr/testudo/spacecorsair/engine/Vector2;

    const/16 v6, 0x8

    move/from16 v0, v23

    invoke-static {v4, v5, v0, v6}, Lfr/testudo/spacecorsair/mod/ModWreck;->debris(Lfr/testudo/spacecorsair/engine/Vector2;Lfr/testudo/spacecorsair/engine/Vector2;FI)V

    .line 411
    const/4 v4, 0x0

    move v5, v4

    :goto_99
    move/from16 v0, v18

    if-ge v5, v0, :cond_157

    .line 412
    new-instance v6, Lfr/testudo/spacecorsair/mod/ModWreck;

    invoke-direct {v6}, Lfr/testudo/spacecorsair/mod/ModWreck;-><init>()V

    .line 413
    move-object/from16 v0, v22

    iput-object v0, v6, Lfr/testudo/spacecorsair/mod/ModWreck;->group:[Z

    .line 414
    move-object/from16 v0, v21

    iput-object v0, v6, Lfr/testudo/spacecorsair/mod/ModWreck;->tex:Lfr/testudo/spacecorsair/display/Texture;

    .line 415
    const/4 v4, 0x0

    iput v4, v6, Lfr/testudo/spacecorsair/mod/ModWreck;->u0:F

    const/high16 v4, 0x3f800000    # 1.0f

    iput v4, v6, Lfr/testudo/spacecorsair/mod/ModWreck;->u1:F

    .line 416
    aget v4, v16, v5

    iput v4, v6, Lfr/testudo/spacecorsair/mod/ModWreck;->v0:F

    add-int/lit8 v4, v5, 0x1

    aget v4, v16, v4

    iput v4, v6, Lfr/testudo/spacecorsair/mod/ModWreck;->v1:F

    .line 417
    if-lez v5, :cond_14d

    const/4 v4, 0x1

    :goto_be
    iput-boolean v4, v6, Lfr/testudo/spacecorsair/mod/ModWreck;->cutTop:Z

    .line 418
    add-int/lit8 v4, v18, -0x1

    if-ge v5, v4, :cond_150

    const/4 v4, 0x1

    :goto_c5
    iput-boolean v4, v6, Lfr/testudo/spacecorsair/mod/ModWreck;->cutBottom:Z

    .line 419
    move/from16 v0, v20

    iput v0, v6, Lfr/testudo/spacecorsair/mod/ModWreck;->w:F

    .line 420
    iget v4, v6, Lfr/testudo/spacecorsair/mod/ModWreck;->v1:F

    iget v7, v6, Lfr/testudo/spacecorsair/mod/ModWreck;->v0:F

    sub-float/2addr v4, v7

    mul-float v4, v4, v19

    iput v4, v6, Lfr/testudo/spacecorsair/mod/ModWreck;->h:F

    .line 421
    iget-object v7, v6, Lfr/testudo/spacecorsair/mod/ModWreck;->burnA:[F

    const/4 v8, 0x0

    iget-boolean v4, v6, Lfr/testudo/spacecorsair/mod/ModWreck;->cutTop:Z

    if-eqz v4, :cond_153

    const v4, 0x3f666666    # 0.9f

    :goto_de
    aput v4, v7, v8

    .line 422
    iget-object v7, v6, Lfr/testudo/spacecorsair/mod/ModWreck;->burnA:[F

    const/4 v8, 0x1

    iget-boolean v4, v6, Lfr/testudo/spacecorsair/mod/ModWreck;->cutBottom:Z

    if-eqz v4, :cond_155

    const v4, 0x3f666666    # 0.9f

    :goto_ea
    aput v4, v7, v8

    .line 423
    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v23

    invoke-static {v6, v0, v1, v2}, Lfr/testudo/spacecorsair/mod/ModWreck;->place(Lfr/testudo/spacecorsair/mod/ModWreck;Lfr/testudo/spacecorsair/business/Element;FF)V

    .line 424
    move/from16 v0, p3

    iput-boolean v0, v6, Lfr/testudo/spacecorsair/mod/ModWreck;->visualOnly:Z

    .line 425
    move-wide/from16 v0, p4

    iput-wide v0, v6, Lfr/testudo/spacecorsair/mod/ModWreck;->lifeMs:J

    .line 426
    aput-object v6, v17, v5

    .line 427
    invoke-static {v6}, Lfr/testudo/spacecorsair/mod/ModWreck;->add(Lfr/testudo/spacecorsair/mod/ModWreck;)V

    .line 411
    add-int/lit8 v4, v5, 0x1

    move v5, v4

    goto :goto_99

    .line 402
    :cond_106
    move-object/from16 v0, p1

    iget-object v4, v0, Lfr/testudo/spacecorsair/display/Drawable;->dimensions:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v5, v4, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    move-object/from16 v0, p1

    iget-object v4, v0, Lfr/testudo/spacecorsair/display/Drawable;->dimensions:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v4, v4, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    move/from16 v19, v4

    move/from16 v20, v5

    goto/16 :goto_26

    .line 403
    :cond_118
    const/4 v4, 0x2

    move/from16 v18, v4

    goto/16 :goto_2e

    .line 405
    :cond_11d
    const/4 v4, 0x4

    new-array v4, v4, [F

    const/4 v5, 0x0

    const/4 v6, 0x0

    aput v6, v4, v5

    const/4 v5, 0x1

    const v6, 0x3e99999a    # 0.3f

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v8

    double-to-float v7, v8

    const v8, 0x3da3d70a    # 0.08f

    mul-float/2addr v7, v8

    add-float/2addr v6, v7

    aput v6, v4, v5

    const/4 v5, 0x2

    const v6, 0x3f19999a    # 0.6f

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v8

    double-to-float v7, v8

    const v8, 0x3da3d70a    # 0.08f

    mul-float/2addr v7, v8

    add-float/2addr v6, v7

    aput v6, v4, v5

    const/4 v5, 0x3

    const/high16 v6, 0x3f800000    # 1.0f

    aput v6, v4, v5

    move-object/from16 v16, v4

    goto/16 :goto_51

    .line 417
    :cond_14d
    const/4 v4, 0x0

    goto/16 :goto_be

    .line 418
    :cond_150
    const/4 v4, 0x0

    goto/16 :goto_c5

    .line 421
    :cond_153
    const/4 v4, 0x0

    goto :goto_de

    .line 422
    :cond_155
    const/4 v4, 0x0

    goto :goto_ea

    :cond_157
    move-object/from16 v4, v17

    .line 429
    goto/16 :goto_f
.end method

.method private static breakUpArt(Lfr/testudo/spacecorsair/business/Element;Lfr/testudo/spacecorsair/display/Drawable;Ljava/lang/String;)[Lfr/testudo/spacecorsair/mod/ModWreck;
    .registers 21

    .prologue
    .line 327
    if-eqz p2, :cond_38

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_a"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModArt;->lazyTex(Ljava/lang/String;)Lfr/testudo/spacecorsair/display/Texture;

    move-result-object v2

    if-eqz v2, :cond_38

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_b"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModArt;->lazyTex(Ljava/lang/String;)Lfr/testudo/spacecorsair/display/Texture;

    move-result-object v2

    if-nez v2, :cond_3a

    :cond_38
    const/4 v2, 0x0

    .line 355
    :goto_39
    return-object v2

    .line 328
    :cond_3a
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_c"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModArt;->lazyTex(Ljava/lang/String;)Lfr/testudo/spacecorsair/display/Texture;

    move-result-object v2

    if-eqz v2, :cond_11c

    const/4 v2, 0x3

    move v14, v2

    .line 330
    :goto_57
    move-object/from16 v0, p1

    instance-of v2, v0, Lfr/testudo/spacecorsair/mod/ModFx$Sprite;

    if-eqz v2, :cond_120

    move-object/from16 v2, p1

    check-cast v2, Lfr/testudo/spacecorsair/mod/ModFx$Sprite;

    iget v3, v2, Lfr/testudo/spacecorsair/mod/ModFx$Sprite;->w:F

    check-cast p1, Lfr/testudo/spacecorsair/mod/ModFx$Sprite;

    move-object/from16 v0, p1

    iget v2, v0, Lfr/testudo/spacecorsair/mod/ModFx$Sprite;->h:F

    move v15, v2

    move/from16 v16, v3

    .line 333
    :goto_6c
    move/from16 v0, v16

    invoke-static {v0, v15}, Ljava/lang/Math;->max(FF)F

    move-result v17

    .line 334
    const-string v2, "fx_explosion_big_sheet"

    const/16 v3, 0x8

    const/16 v4, 0x40

    move-object/from16 v0, p0

    iget-object v5, v0, Lfr/testudo/spacecorsair/business/Element;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v5, v5, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    move-object/from16 v0, p0

    iget-object v6, v0, Lfr/testudo/spacecorsair/business/Element;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v6, v6, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    const v7, 0x3faccccd    # 1.35f

    mul-float v7, v7, v17

    const-wide/16 v8, 0x514

    const/high16 v10, 0x3f800000    # 1.0f

    const v11, 0x3f4ccccd    # 0.8f

    const/high16 v12, 0x3f000000    # 0.5f

    const/4 v13, 0x1

    invoke-static/range {v2 .. v13}, Lfr/testudo/spacecorsair/mod/ModLive;->fx(Ljava/lang/String;IIFFFJFFFZ)V

    .line 335
    move-object/from16 v0, p0

    iget-object v2, v0, Lfr/testudo/spacecorsair/business/Element;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    move-object/from16 v0, p0

    iget-object v3, v0, Lfr/testudo/spacecorsair/business/Element;->speed:Lfr/testudo/spacecorsair/engine/Vector2;

    const/16 v4, 0x8

    move/from16 v0, v17

    invoke-static {v2, v3, v0, v4}, Lfr/testudo/spacecorsair/mod/ModWreck;->debris(Lfr/testudo/spacecorsair/engine/Vector2;Lfr/testudo/spacecorsair/engine/Vector2;FI)V

    .line 336
    const/4 v2, 0x1

    new-array v6, v2, [Z

    .line 337
    const/4 v2, 0x3

    if-ne v14, v2, :cond_13a

    sget-object v2, Lfr/testudo/spacecorsair/mod/ModWreck;->BANDS3:[[F

    .line 338
    :goto_ad
    new-array v4, v14, [Lfr/testudo/spacecorsair/mod/ModWreck;

    .line 339
    const/4 v3, 0x0

    move v5, v3

    :goto_b1
    if-ge v5, v14, :cond_142

    .line 340
    new-instance v7, Lfr/testudo/spacecorsair/mod/ModWreck;

    invoke-direct {v7}, Lfr/testudo/spacecorsair/mod/ModWreck;-><init>()V

    .line 341
    iput-object v6, v7, Lfr/testudo/spacecorsair/mod/ModWreck;->group:[Z

    .line 342
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v8, "_"

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    add-int/lit8 v8, v5, 0x61

    int-to-char v8, v8

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v7, Lfr/testudo/spacecorsair/mod/ModWreck;->art:Ljava/lang/String;

    .line 343
    const/4 v3, 0x1

    iput-boolean v3, v7, Lfr/testudo/spacecorsair/mod/ModWreck;->preDrawn:Z

    .line 344
    const/high16 v3, 0x3f800000    # 1.0f

    iput v3, v7, Lfr/testudo/spacecorsair/mod/ModWreck;->tint:F

    .line 345
    const/4 v3, 0x0

    iput v3, v7, Lfr/testudo/spacecorsair/mod/ModWreck;->u0:F

    const/high16 v3, 0x3f800000    # 1.0f

    iput v3, v7, Lfr/testudo/spacecorsair/mod/ModWreck;->u1:F

    .line 346
    aget-object v3, v2, v5

    const/4 v8, 0x0

    aget v3, v3, v8

    iput v3, v7, Lfr/testudo/spacecorsair/mod/ModWreck;->v0:F

    aget-object v3, v2, v5

    const/4 v8, 0x1

    aget v3, v3, v8

    iput v3, v7, Lfr/testudo/spacecorsair/mod/ModWreck;->v1:F

    .line 347
    if-lez v5, :cond_13e

    const/4 v3, 0x1

    :goto_f7
    iput-boolean v3, v7, Lfr/testudo/spacecorsair/mod/ModWreck;->cutTop:Z

    .line 348
    add-int/lit8 v3, v14, -0x1

    if-ge v5, v3, :cond_140

    const/4 v3, 0x1

    :goto_fe
    iput-boolean v3, v7, Lfr/testudo/spacecorsair/mod/ModWreck;->cutBottom:Z

    .line 349
    move/from16 v0, v16

    iput v0, v7, Lfr/testudo/spacecorsair/mod/ModWreck;->w:F

    .line 350
    iget v3, v7, Lfr/testudo/spacecorsair/mod/ModWreck;->v1:F

    iget v8, v7, Lfr/testudo/spacecorsair/mod/ModWreck;->v0:F

    sub-float/2addr v3, v8

    mul-float/2addr v3, v15

    iput v3, v7, Lfr/testudo/spacecorsair/mod/ModWreck;->h:F

    .line 351
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-static {v7, v0, v15, v1}, Lfr/testudo/spacecorsair/mod/ModWreck;->place(Lfr/testudo/spacecorsair/mod/ModWreck;Lfr/testudo/spacecorsair/business/Element;FF)V

    .line 352
    aput-object v7, v4, v5

    .line 353
    invoke-static {v7}, Lfr/testudo/spacecorsair/mod/ModWreck;->add(Lfr/testudo/spacecorsair/mod/ModWreck;)V

    .line 339
    add-int/lit8 v3, v5, 0x1

    move v5, v3

    goto :goto_b1

    .line 328
    :cond_11c
    const/4 v2, 0x2

    move v14, v2

    goto/16 :goto_57

    .line 331
    :cond_120
    move-object/from16 v0, p1

    iget-object v2, v0, Lfr/testudo/spacecorsair/display/Drawable;->dimensions:Lfr/testudo/spacecorsair/engine/Vector2;

    if-eqz v2, :cond_137

    move-object/from16 v0, p1

    iget-object v2, v0, Lfr/testudo/spacecorsair/display/Drawable;->dimensions:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v3, v2, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    move-object/from16 v0, p1

    iget-object v2, v0, Lfr/testudo/spacecorsair/display/Drawable;->dimensions:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v2, v2, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    move v15, v2

    move/from16 v16, v3

    goto/16 :goto_6c

    .line 332
    :cond_137
    const/4 v2, 0x0

    goto/16 :goto_39

    .line 337
    :cond_13a
    sget-object v2, Lfr/testudo/spacecorsair/mod/ModWreck;->BANDS2:[[F

    goto/16 :goto_ad

    .line 347
    :cond_13e
    const/4 v3, 0x0

    goto :goto_f7

    .line 348
    :cond_140
    const/4 v3, 0x0

    goto :goto_fe

    :cond_142
    move-object v2, v4

    .line 355
    goto/16 :goto_39
.end method

.method static debris(Lfr/testudo/spacecorsair/engine/Vector2;Lfr/testudo/spacecorsair/engine/Vector2;FI)V
    .registers 22

    .prologue
    .line 381
    const/4 v2, 0x0

    :goto_1
    move/from16 v0, p3

    if-ge v2, v0, :cond_74

    .line 382
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v4

    const-wide v6, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v4, v6

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    mul-double v14, v4, v6

    .line 383
    const v3, 0x3e99999a    # 0.3f

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v4

    double-to-float v4, v4

    const v5, 0x3f19999a    # 0.6f

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    mul-float v13, p2, v3

    .line 384
    const-string v3, "debris_sheet"

    const/4 v4, 0x4

    const/4 v5, 0x4

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v6

    const-wide/high16 v8, 0x4030000000000000L    # 16.0

    mul-double/2addr v6, v8

    double-to-int v6, v6

    move-object/from16 v0, p0

    iget v7, v0, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    move-object/from16 v0, p0

    iget v8, v0, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    const v9, 0x3dcccccd    # 0.1f

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v10

    double-to-float v10, v10

    const v11, 0x3dcccccd    # 0.1f

    mul-float/2addr v10, v11

    add-float/2addr v9, v10

    mul-float v9, v9, p2

    const-wide/16 v10, 0x708

    move-object/from16 v0, p1

    iget v12, v0, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    const/high16 v16, 0x42c80000    # 100.0f

    mul-float v12, v12, v16

    .line 385
    invoke-static {v14, v15}, Ljava/lang/Math;->cos(D)D

    move-result-wide v16

    move-wide/from16 v0, v16

    double-to-float v0, v0

    move/from16 v16, v0

    mul-float v16, v16, v13

    add-float v12, v12, v16

    move-object/from16 v0, p1

    iget v0, v0, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    move/from16 v16, v0

    const/high16 v17, 0x42c80000    # 100.0f

    mul-float v16, v16, v17

    invoke-static {v14, v15}, Ljava/lang/Math;->sin(D)D

    move-result-wide v14

    double-to-float v14, v14

    mul-float/2addr v13, v14

    add-float v13, v13, v16

    .line 384
    invoke-static/range {v3 .. v13}, Lfr/testudo/spacecorsair/mod/ModLive;->chunk(Ljava/lang/String;IIIFFFJFF)V

    .line 381
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 387
    :cond_74
    return-void
.end method

.method private edge(Lfr/testudo/spacecorsair/display/Texture;FFFFFLfr/testudo/spacecorsair/display/Texture;)V
    .registers 25

    .prologue
    .line 209
    const v3, 0x3e99999a    # 0.3f

    const v2, 0x3f333333    # 0.7f

    .line 210
    const v4, 0x3f7fbe77    # 0.999f

    const/4 v5, 0x0

    move/from16 v0, p2

    invoke-static {v5, v0}, Ljava/lang/Math;->max(FF)F

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->min(FF)F

    move-result v4

    sget-object v5, Lfr/testudo/spacecorsair/mod/ModWreck;->sp:[F

    move-object/from16 v0, p7

    invoke-static {v0, v4, v5}, Lfr/testudo/spacecorsair/mod/ModArt;->span(Lfr/testudo/spacecorsair/display/Texture;F[F)[F

    move-result-object v4

    if-eqz v4, :cond_28

    sget-object v2, Lfr/testudo/spacecorsair/mod/ModWreck;->sp:[F

    const/4 v3, 0x0

    aget v3, v2, v3

    sget-object v2, Lfr/testudo/spacecorsair/mod/ModWreck;->sp:[F

    const/4 v4, 0x1

    aget v2, v2, v4

    .line 211
    :cond_28
    sub-float v4, v2, v3

    move-object/from16 v0, p0

    iget v5, v0, Lfr/testudo/spacecorsair/mod/ModWreck;->w:F

    mul-float/2addr v5, v4

    .line 212
    const/high16 v4, 0x41000000    # 8.0f

    cmpg-float v4, v5, v4

    if-gez v4, :cond_36

    .line 217
    :goto_35
    return-void

    .line 213
    :cond_36
    add-float/2addr v2, v3

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    const/high16 v3, 0x3f000000    # 0.5f

    sub-float/2addr v2, v3

    move-object/from16 v0, p0

    iget v3, v0, Lfr/testudo/spacecorsair/mod/ModWreck;->w:F

    mul-float/2addr v2, v3

    .line 214
    const/high16 v3, 0x41600000    # 14.0f

    const v4, 0x3e3851ec    # 0.18f

    mul-float/2addr v4, v5

    move-object/from16 v0, p0

    iget v6, v0, Lfr/testudo/spacecorsair/mod/ModWreck;->w:F

    const v7, 0x3d75c28f    # 0.06f

    mul-float/2addr v6, v7

    invoke-static {v4, v6}, Ljava/lang/Math;->min(FF)F

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(FF)F

    move-result v6

    .line 215
    sget-object v3, Lfr/testudo/spacecorsair/mod/ModWreck;->a:Lfr/testudo/spacecorsair/engine/Vector2;

    move/from16 v0, p3

    invoke-virtual {v3, v2, v0}, Lfr/testudo/spacecorsair/engine/Vector2;->set(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    move-result-object v2

    move-object/from16 v0, p0

    iget v3, v0, Lfr/testudo/spacecorsair/mod/ModWreck;->spin:F

    float-to-double v8, v3

    invoke-static {v8, v9}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v8

    invoke-virtual {v2, v8, v9}, Lfr/testudo/spacecorsair/engine/Vector2;->applyRotatation(D)Lfr/testudo/spacecorsair/engine/Vector2;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lfr/testudo/spacecorsair/mod/ModWreck;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v2, v3}, Lfr/testudo/spacecorsair/engine/Vector2;->add(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 216
    sget-object v2, Lfr/testudo/spacecorsair/mod/ModWreck;->a:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v3, v2, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    sget-object v2, Lfr/testudo/spacecorsair/mod/ModWreck;->a:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v4, v2, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    const v2, 0x3f851eb8    # 1.04f

    mul-float/2addr v5, v2

    const/high16 v8, 0x3f800000    # 1.0f

    const/high16 v2, 0x3f400000    # 0.75f

    const/high16 v7, 0x3e800000    # 0.25f

    mul-float v7, v7, p5

    add-float v9, v2, v7

    const v2, 0x3f19999a    # 0.6f

    const v7, 0x3ecccccd    # 0.4f

    mul-float v7, v7, p5

    add-float v10, v2, v7

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/high16 v15, 0x3f800000    # 1.0f

    const/high16 v16, 0x3f800000    # 1.0f

    move-object/from16 v2, p1

    move/from16 v7, p4

    move/from16 v11, p6

    invoke-static/range {v2 .. v16}, Lfr/testudo/spacecorsair/mod/ModFx;->sprTex(Lfr/testudo/spacecorsair/display/Texture;FFFFFFFFFZFFFF)V

    goto :goto_35
.end method

.method static husk(Lfr/testudo/spacecorsair/business/Element;Lfr/testudo/spacecorsair/display/Drawable;)V
    .registers 11

    .prologue
    const/4 v8, 0x0

    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 434
    iget-object v2, p1, Lfr/testudo/spacecorsair/display/Drawable;->myTexture:Lfr/testudo/spacecorsair/display/Texture;

    .line 435
    if-eqz v2, :cond_d

    iget v0, v2, Lfr/testudo/spacecorsair/display/Texture;->name:I

    if-gtz v0, :cond_e

    .line 454
    :cond_d
    :goto_d
    return-void

    .line 437
    :cond_e
    instance-of v0, p1, Lfr/testudo/spacecorsair/mod/ModFx$Sprite;

    if-eqz v0, :cond_62

    move-object v0, p1

    check-cast v0, Lfr/testudo/spacecorsair/mod/ModFx$Sprite;

    iget v1, v0, Lfr/testudo/spacecorsair/mod/ModFx$Sprite;->w:F

    check-cast p1, Lfr/testudo/spacecorsair/mod/ModFx$Sprite;

    iget v0, p1, Lfr/testudo/spacecorsair/mod/ModFx$Sprite;->h:F

    .line 440
    :goto_1b
    new-instance v3, Lfr/testudo/spacecorsair/mod/ModWreck;

    invoke-direct {v3}, Lfr/testudo/spacecorsair/mod/ModWreck;-><init>()V

    .line 441
    new-array v4, v5, [Z

    aput-boolean v5, v4, v8

    iput-object v4, v3, Lfr/testudo/spacecorsair/mod/ModWreck;->group:[Z

    .line 442
    iput-boolean v5, v3, Lfr/testudo/spacecorsair/mod/ModWreck;->husk:Z

    .line 443
    iput-object v2, v3, Lfr/testudo/spacecorsair/mod/ModWreck;->tex:Lfr/testudo/spacecorsair/display/Texture;

    .line 444
    iput v6, v3, Lfr/testudo/spacecorsair/mod/ModWreck;->u0:F

    iput v7, v3, Lfr/testudo/spacecorsair/mod/ModWreck;->u1:F

    iput v6, v3, Lfr/testudo/spacecorsair/mod/ModWreck;->v0:F

    iput v7, v3, Lfr/testudo/spacecorsair/mod/ModWreck;->v1:F

    .line 445
    iput v1, v3, Lfr/testudo/spacecorsair/mod/ModWreck;->w:F

    .line 446
    iput v0, v3, Lfr/testudo/spacecorsair/mod/ModWreck;->h:F

    .line 447
    const v2, 0x3ecccccd    # 0.4f

    iput v2, v3, Lfr/testudo/spacecorsair/mod/ModWreck;->tint:F

    .line 448
    invoke-static {v8}, Lfr/testudo/spacecorsair/mod/ModWreck;->lifeMs(I)J

    move-result-wide v4

    iput-wide v4, v3, Lfr/testudo/spacecorsair/mod/ModWreck;->fadeMs:J

    .line 449
    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v1

    invoke-static {v3, p0, v0, v1}, Lfr/testudo/spacecorsair/mod/ModWreck;->place(Lfr/testudo/spacecorsair/mod/ModWreck;Lfr/testudo/spacecorsair/business/Element;FF)V

    .line 450
    const/high16 v0, 0x42c80000    # 100.0f

    iget v1, p0, Lfr/testudo/spacecorsair/business/Element;->maxLife:F

    const v2, 0x3e4ccccd    # 0.2f

    mul-float/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, v3, Lfr/testudo/spacecorsair/mod/ModWreck;->maxLife:F

    .line 451
    iget v0, v3, Lfr/testudo/spacecorsair/mod/ModWreck;->maxLife:F

    iput v0, v3, Lfr/testudo/spacecorsair/mod/ModWreck;->life:F

    .line 452
    iget v0, p0, Lfr/testudo/spacecorsair/business/Element;->level:I

    iput v0, v3, Lfr/testudo/spacecorsair/mod/ModWreck;->srcLevel:I

    .line 453
    invoke-static {v3}, Lfr/testudo/spacecorsair/mod/ModWreck;->add(Lfr/testudo/spacecorsair/mod/ModWreck;)V

    goto :goto_d

    .line 438
    :cond_62
    iget-object v0, p1, Lfr/testudo/spacecorsair/display/Drawable;->dimensions:Lfr/testudo/spacecorsair/engine/Vector2;

    if-eqz v0, :cond_d

    iget-object v0, p1, Lfr/testudo/spacecorsair/display/Drawable;->dimensions:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v1, v0, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    iget-object v0, p1, Lfr/testudo/spacecorsair/display/Drawable;->dimensions:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v0, v0, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    goto :goto_1b
.end method

.method public static lifeMs(I)J
    .registers 3

    .prologue
    .line 242
    const/4 v0, 0x1

    if-gt p0, v0, :cond_7

    const-wide/32 v0, 0x1d4c0

    .line 244
    :goto_6
    return-wide v0

    .line 243
    :cond_7
    const/4 v0, 0x2

    if-ne p0, v0, :cond_e

    const-wide/32 v0, 0x493e0

    goto :goto_6

    .line 244
    :cond_e
    const-wide/16 v0, 0x0

    goto :goto_6
.end method

.method static massFor(F)F
    .registers 4

    .prologue
    .line 101
    const/high16 v0, 0x41a00000    # 20.0f

    mul-float v1, p0, p0

    const/high16 v2, 0x44fa0000    # 2000.0f

    div-float/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    return v0
.end method

.method public static onDestroyed(Lfr/testudo/spacecorsair/business/Element;Z)V
    .registers 17

    .prologue
    const/4 v5, 0x0

    const/4 v9, 0x2

    const/4 v6, 0x1

    const/4 v8, 0x0

    .line 267
    if-eqz p0, :cond_12

    iget-boolean v2, p0, Lfr/testudo/spacecorsair/business/Element;->removed:Z

    if-nez v2, :cond_12

    instance-of v2, p0, Lfr/testudo/spacecorsair/mod/ModWreck;

    if-nez v2, :cond_12

    instance-of v2, p0, Lfr/testudo/spacecorsair/business/projectiles/Projectile;

    if-eqz v2, :cond_13

    .line 316
    :cond_12
    :goto_12
    return-void

    .line 269
    :cond_13
    :try_start_13
    sget-object v2, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v2, v2, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-boolean v2, v2, Lfr/testudo/spacecorsair/game/Game;->mapMode:Z

    if-nez v2, :cond_12

    .line 270
    iget-boolean v2, p0, Lfr/testudo/spacecorsair/business/Element;->isPlayer:Z

    if-eqz v2, :cond_7b

    instance-of v2, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;

    if-eqz v2, :cond_7b

    .line 271
    move-object v0, p0

    check-cast v0, Lfr/testudo/spacecorsair/business/player/PlayerShip;

    move-object v2, v0

    .line 272
    iget-object v3, v2, Lfr/testudo/spacecorsair/business/player/PlayerShip;->shipSpec:Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;

    if-eqz v3, :cond_12

    .line 273
    invoke-virtual {v2}, Lfr/testudo/spacecorsair/business/player/PlayerShip;->getDrawableObject()Lfr/testudo/spacecorsair/display/Drawable;

    move-result-object v3

    .line 274
    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModWreck;->playerClass(Lfr/testudo/spacecorsair/business/player/PlayerShip;)I

    move-result v4

    .line 275
    if-nez v3, :cond_41

    .line 276
    :goto_35
    invoke-static {v5}, Lfr/testudo/spacecorsair/mod/ModLive;->alienArt(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_48

    invoke-static {p0, v3}, Lfr/testudo/spacecorsair/mod/ModWreck;->spores(Lfr/testudo/spacecorsair/business/Element;Lfr/testudo/spacecorsair/display/Drawable;)V

    goto :goto_12

    .line 313
    :catch_3f
    move-exception v2

    goto :goto_12

    .line 275
    :cond_41
    iget-object v2, v3, Lfr/testudo/spacecorsair/display/Drawable;->myTexture:Lfr/testudo/spacecorsair/display/Texture;

    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModArt;->artOf(Lfr/testudo/spacecorsair/display/Texture;)Ljava/lang/String;

    move-result-object v5

    goto :goto_35

    .line 277
    :cond_48
    if-lt v4, v9, :cond_54

    if-eqz v3, :cond_54

    const/4 v5, 0x1

    const-wide/16 v6, 0xed8

    move-object v2, p0

    invoke-static/range {v2 .. v7}, Lfr/testudo/spacecorsair/mod/ModWreck;->breakUp(Lfr/testudo/spacecorsair/business/Element;Lfr/testudo/spacecorsair/display/Drawable;IZJ)[Lfr/testudo/spacecorsair/mod/ModWreck;

    goto :goto_12

    .line 278
    :cond_54
    if-eqz v3, :cond_12

    const-string v2, "vfx_explosion_sheet"

    const/16 v14, 0x8

    const/16 v4, 0x40

    iget-object v5, p0, Lfr/testudo/spacecorsair/business/Element;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v5, v5, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    iget-object v6, p0, Lfr/testudo/spacecorsair/business/Element;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v6, v6, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    invoke-static {v3}, Lfr/testudo/spacecorsair/mod/ModLive;->sizeOf(Lfr/testudo/spacecorsair/display/Drawable;)F

    move-result v3

    const v7, 0x3fcccccd    # 1.6f

    mul-float/2addr v7, v3

    const-wide/16 v8, 0x384

    const/high16 v10, 0x3f800000    # 1.0f

    const v11, 0x3f4ccccd    # 0.8f

    const/high16 v12, 0x3f000000    # 0.5f

    const/4 v13, 0x1

    move v3, v14

    invoke-static/range {v2 .. v13}, Lfr/testudo/spacecorsair/mod/ModLive;->fx(Ljava/lang/String;IIFFFJFFFZ)V

    goto :goto_12

    .line 281
    :cond_7b
    instance-of v2, p0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    if-nez v2, :cond_83

    instance-of v2, p0, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;

    if-eqz v2, :cond_b5

    :cond_83
    move v2, v6

    .line 282
    :goto_84
    if-eqz v2, :cond_12

    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/Mod;->isDrone(Lfr/testudo/spacecorsair/business/Element;)Z

    move-result v2

    if-nez v2, :cond_12

    .line 283
    invoke-virtual {p0}, Lfr/testudo/spacecorsair/business/Element;->getDrawableObject()Lfr/testudo/spacecorsair/display/Drawable;

    move-result-object v3

    .line 284
    if-eqz v3, :cond_12

    iget-object v2, v3, Lfr/testudo/spacecorsair/display/Drawable;->myTexture:Lfr/testudo/spacecorsair/display/Texture;

    if-eqz v2, :cond_12

    .line 285
    iget-object v2, v3, Lfr/testudo/spacecorsair/display/Drawable;->myTexture:Lfr/testudo/spacecorsair/display/Texture;

    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModArt;->artOf(Lfr/testudo/spacecorsair/display/Texture;)Ljava/lang/String;

    move-result-object v7

    .line 286
    invoke-static {v7}, Lfr/testudo/spacecorsair/mod/ModLive;->alienArt(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_aa

    instance-of v2, p0, Lfr/testudo/spacecorsair/business/ennemis/AlienRat;

    if-nez v2, :cond_aa

    instance-of v2, p0, Lfr/testudo/spacecorsair/business/ennemis/UfoAlienShip;

    if-eqz v2, :cond_b7

    .line 288
    :cond_aa
    invoke-static {p0, v3}, Lfr/testudo/spacecorsair/mod/ModWreck;->spores(Lfr/testudo/spacecorsair/business/Element;Lfr/testudo/spacecorsair/display/Drawable;)V

    .line 289
    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModWreck;->sizeClass(Lfr/testudo/spacecorsair/business/Element;)I

    move-result v2

    if-ge v2, v9, :cond_12

    goto/16 :goto_12

    :cond_b5
    move v2, v8

    .line 281
    goto :goto_84

    .line 292
    :cond_b7
    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModWreck;->sizeClass(Lfr/testudo/spacecorsair/business/Element;)I

    move-result v4

    .line 293
    if-ge v4, v9, :cond_c2

    .line 294
    invoke-static {p0, v3}, Lfr/testudo/spacecorsair/mod/ModWreck;->husk(Lfr/testudo/spacecorsair/business/Element;Lfr/testudo/spacecorsair/display/Drawable;)V

    goto/16 :goto_12

    .line 297
    :cond_c2
    instance-of v2, p0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    if-eqz v2, :cond_113

    move-object v0, p0

    check-cast v0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    move-object v2, v0

    iget-boolean v2, v2, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->elite:Z

    if-eqz v2, :cond_113

    move v10, v6

    .line 298
    :goto_cf
    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModBoss;->kindOf(Lfr/testudo/spacecorsair/business/Element;)I

    move-result v2

    if-ltz v2, :cond_115

    move v9, v6

    .line 299
    :goto_d6
    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModCapitals;->cap(Ljava/lang/Object;)Lfr/testudo/spacecorsair/mod/ModCapitals$Cap;

    move-result-object v11

    .line 300
    if-eqz v11, :cond_117

    iget-object v2, v11, Lfr/testudo/spacecorsair/mod/ModCapitals$Cap;->f:Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;

    if-eqz v2, :cond_117

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "wreck_cap_"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v5, v11, Lfr/testudo/spacecorsair/mod/ModCapitals$Cap;->f:Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;

    iget-object v5, v5, Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;->key:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_f7
    invoke-static {p0, v3, v2}, Lfr/testudo/spacecorsair/mod/ModWreck;->breakUpArt(Lfr/testudo/spacecorsair/business/Element;Lfr/testudo/spacecorsair/display/Drawable;Ljava/lang/String;)[Lfr/testudo/spacecorsair/mod/ModWreck;

    move-result-object v2

    .line 301
    if-nez v2, :cond_14d

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    move-object v2, p0

    invoke-static/range {v2 .. v7}, Lfr/testudo/spacecorsair/mod/ModWreck;->breakUp(Lfr/testudo/spacecorsair/business/Element;Lfr/testudo/spacecorsair/display/Drawable;IZJ)[Lfr/testudo/spacecorsair/mod/ModWreck;

    move-result-object v2

    move-object v3, v2

    .line 302
    :goto_106
    if-eqz v3, :cond_12

    .line 303
    array-length v5, v3

    move v2, v8

    :goto_10a
    if-ge v2, v5, :cond_140

    aget-object v6, v3, v2

    .line 304
    if-nez v6, :cond_12f

    .line 303
    :goto_110
    add-int/lit8 v2, v2, 0x1

    goto :goto_10a

    :cond_113
    move v10, v8

    .line 297
    goto :goto_cf

    :cond_115
    move v9, v8

    .line 298
    goto :goto_d6

    .line 300
    :cond_117
    if-nez v7, :cond_11b

    move-object v2, v5

    goto :goto_f7

    :cond_11b
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "wreck_"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_f7

    .line 305
    :cond_12f
    invoke-static {v4}, Lfr/testudo/spacecorsair/mod/ModWreck;->lifeMs(I)J

    move-result-wide v12

    iput-wide v12, v6, Lfr/testudo/spacecorsair/mod/ModWreck;->fadeMs:J

    .line 306
    iget v7, p0, Lfr/testudo/spacecorsair/business/Element;->level:I

    iput v7, v6, Lfr/testudo/spacecorsair/mod/ModWreck;->srcLevel:I

    .line 307
    iput v4, v6, Lfr/testudo/spacecorsair/mod/ModWreck;->srcClass:I

    .line 308
    iput-boolean v10, v6, Lfr/testudo/spacecorsair/mod/ModWreck;->srcElite:Z

    .line 309
    iput-boolean v9, v6, Lfr/testudo/spacecorsair/mod/ModWreck;->srcBoss:Z

    goto :goto_110

    .line 311
    :cond_140
    if-nez v11, :cond_148

    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModTitan;->isTitanClass(Lfr/testudo/spacecorsair/business/Element;)Z

    move-result v2

    if-eqz v2, :cond_12

    :cond_148
    invoke-static {v3}, Lfr/testudo/spacecorsair/mod/ModSector;->persist([Lfr/testudo/spacecorsair/mod/ModWreck;)V
    :try_end_14b
    .catch Ljava/lang/Throwable; {:try_start_13 .. :try_end_14b} :catch_3f

    goto/16 :goto_12

    :cond_14d
    move-object v3, v2

    goto :goto_106
.end method

.method static onLevel()V
    .registers 1

    .prologue
    .line 478
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModWreck;->live:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 479
    return-void
.end method

.method private static place(Lfr/testudo/spacecorsair/mod/ModWreck;Lfr/testudo/spacecorsair/business/Element;FF)V
    .registers 13

    .prologue
    const/high16 v8, 0x43c80000    # 400.0f

    const/high16 v7, 0x3f800000    # 1.0f

    const v6, 0x3f4ccccd    # 0.8f

    const/high16 v4, 0x3e800000    # 0.25f

    const v5, 0x3e99999a    # 0.3f

    .line 360
    iget v0, p0, Lfr/testudo/spacecorsair/mod/ModWreck;->v0:F

    iget v1, p0, Lfr/testudo/spacecorsair/mod/ModWreck;->v1:F

    add-float/2addr v0, v1

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    const/high16 v1, 0x3f000000    # 0.5f

    sub-float/2addr v0, v1

    mul-float/2addr v0, p2

    .line 361
    sget-object v1, Lfr/testudo/spacecorsair/mod/ModWreck;->a:Lfr/testudo/spacecorsair/engine/Vector2;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Lfr/testudo/spacecorsair/engine/Vector2;->set(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    move-result-object v0

    iget v1, p1, Lfr/testudo/spacecorsair/business/Element;->spin:F

    float-to-double v2, v1

    invoke-static {v2, v3}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lfr/testudo/spacecorsair/engine/Vector2;->applyRotatation(D)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 362
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModWreck;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget-object v1, p1, Lfr/testudo/spacecorsair/business/Element;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/engine/Vector2;->setSameAs(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    move-result-object v0

    sget-object v1, Lfr/testudo/spacecorsair/mod/ModWreck;->a:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/engine/Vector2;->add(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 363
    iget v0, p1, Lfr/testudo/spacecorsair/business/Element;->spin:F

    iput v0, p0, Lfr/testudo/spacecorsair/mod/ModWreck;->spin:F

    .line 365
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v0

    double-to-float v0, v0

    mul-float/2addr v0, v4

    add-float/2addr v0, v4

    invoke-static {v8, p3}, Ljava/lang/Math;->max(FF)F

    move-result v1

    div-float v1, v8, v1

    add-float/2addr v1, v5

    invoke-static {v7, v1}, Ljava/lang/Math;->min(FF)F

    move-result v1

    mul-float/2addr v0, v1

    .line 366
    sget-object v1, Lfr/testudo/spacecorsair/mod/ModWreck;->a:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v1, v1, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    sget-object v2, Lfr/testudo/spacecorsair/mod/ModWreck;->a:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v2, v2, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    mul-float/2addr v1, v2

    sget-object v2, Lfr/testudo/spacecorsair/mod/ModWreck;->a:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v2, v2, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    sget-object v3, Lfr/testudo/spacecorsair/mod/ModWreck;->a:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v3, v3, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    float-to-double v2, v1

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    double-to-float v1, v2

    invoke-static {v7, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    .line 367
    iget-object v2, p0, Lfr/testudo/spacecorsair/mod/ModWreck;->speed:Lfr/testudo/spacecorsair/engine/Vector2;

    iget-object v3, p1, Lfr/testudo/spacecorsair/business/Element;->speed:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v3, v3, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    mul-float/2addr v3, v5

    sget-object v4, Lfr/testudo/spacecorsair/mod/ModWreck;->a:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v4, v4, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    div-float/2addr v4, v1

    mul-float/2addr v4, v0

    add-float/2addr v3, v4

    iget-object v4, p1, Lfr/testudo/spacecorsair/business/Element;->speed:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v4, v4, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    mul-float/2addr v4, v5

    sget-object v5, Lfr/testudo/spacecorsair/mod/ModWreck;->a:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v5, v5, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    div-float v1, v5, v1

    mul-float/2addr v0, v1

    add-float/2addr v0, v4

    invoke-virtual {v2, v3, v0}, Lfr/testudo/spacecorsair/engine/Vector2;->set(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 368
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModWreck;->speed:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v0, v0, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    iget-object v1, p0, Lfr/testudo/spacecorsair/mod/ModWreck;->speed:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v1, v1, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    mul-float/2addr v0, v1

    iget-object v1, p0, Lfr/testudo/spacecorsair/mod/ModWreck;->speed:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v1, v1, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    iget-object v2, p0, Lfr/testudo/spacecorsair/mod/ModWreck;->speed:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v2, v2, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    .line 369
    const v1, 0x3e23d70b    # 0.16000001f

    cmpl-float v1, v0, v1

    if-lez v1, :cond_b2

    iget-object v1, p0, Lfr/testudo/spacecorsair/mod/ModWreck;->speed:Lfr/testudo/spacecorsair/engine/Vector2;

    const v2, 0x3ecccccd    # 0.4f

    float-to-double v4, v0

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    double-to-float v0, v4

    div-float v0, v2, v0

    invoke-virtual {v1, v0}, Lfr/testudo/spacecorsair/engine/Vector2;->multiply(F)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 370
    :cond_b2
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v0

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    sub-double/2addr v0, v2

    double-to-float v0, v0

    const v1, 0x3d4ccccd    # 0.05f

    mul-float/2addr v0, v1

    iput v0, p0, Lfr/testudo/spacecorsair/mod/ModWreck;->spinSpeed:F

    .line 371
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModWreck;->phys:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v1, p0, Lfr/testudo/spacecorsair/mod/ModWreck;->w:F

    iget v2, p0, Lfr/testudo/spacecorsair/mod/ModWreck;->h:F

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    mul-float/2addr v1, v6

    iget v2, p0, Lfr/testudo/spacecorsair/mod/ModWreck;->w:F

    iget v3, p0, Lfr/testudo/spacecorsair/mod/ModWreck;->h:F

    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v2

    mul-float/2addr v2, v6

    invoke-virtual {v0, v1, v2}, Lfr/testudo/spacecorsair/engine/Vector2;->set(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 372
    invoke-static {p3}, Lfr/testudo/spacecorsair/mod/ModWreck;->massFor(F)F

    move-result v0

    iput v0, p0, Lfr/testudo/spacecorsair/mod/ModWreck;->mass:F

    .line 373
    const/high16 v0, 0x43960000    # 300.0f

    iget v1, p1, Lfr/testudo/spacecorsair/business/Element;->maxLife:F

    const v2, 0x3e4ccccd    # 0.2f

    mul-float/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Lfr/testudo/spacecorsair/mod/ModWreck;->maxLife:F

    .line 374
    iget v0, p0, Lfr/testudo/spacecorsair/mod/ModWreck;->maxLife:F

    iput v0, p0, Lfr/testudo/spacecorsair/mod/ModWreck;->life:F

    .line 375
    iget v0, p1, Lfr/testudo/spacecorsair/business/Element;->level:I

    iput v0, p0, Lfr/testudo/spacecorsair/mod/ModWreck;->level:I

    .line 376
    invoke-virtual {p0}, Lfr/testudo/spacecorsair/mod/ModWreck;->updateSapCoords()V

    .line 377
    return-void
.end method

.method private static playerClass(Lfr/testudo/spacecorsair/business/player/PlayerShip;)I
    .registers 6

    .prologue
    const/4 v2, 0x3

    const/4 v1, 0x2

    const/4 v0, 0x1

    .line 258
    iget-object v3, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->shipSpec:Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;

    invoke-static {v3}, Lfr/testudo/spacecorsair/mod/ModShips;->hullFor(Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;)Lfr/testudo/spacecorsair/mod/ModShips$Hull;

    move-result-object v3

    .line 259
    if-eqz v3, :cond_15

    iget v3, v3, Lfr/testudo/spacecorsair/mod/ModShips$Hull;->cls:I

    .line 260
    :goto_d
    const/4 v4, 0x6

    if-eq v3, v4, :cond_13

    const/4 v4, 0x5

    if-ne v3, v4, :cond_1c

    :cond_13
    move v0, v2

    .line 262
    :cond_14
    :goto_14
    return v0

    .line 259
    :cond_15
    iget-object v3, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->shipSpec:Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;

    invoke-static {v3}, Lfr/testudo/spacecorsair/mod/ModShips;->originalClass(Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;)I

    move-result v3

    goto :goto_d

    .line 261
    :cond_1c
    if-eq v3, v1, :cond_26

    if-eq v3, v2, :cond_26

    const/4 v2, 0x4

    if-eq v3, v2, :cond_26

    const/4 v2, 0x7

    if-ne v3, v2, :cond_28

    :cond_26
    move v0, v1

    goto :goto_14

    .line 262
    :cond_28
    if-eq v3, v0, :cond_14

    const/4 v0, 0x0

    goto :goto_14
.end method

.method static sizeClass(Lfr/testudo/spacecorsair/business/Element;)I
    .registers 4

    .prologue
    const/4 v0, 0x3

    .line 249
    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModTitan;->isTitanClass(Lfr/testudo/spacecorsair/business/Element;)Z

    move-result v1

    if-nez v1, :cond_d

    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModCapitals;->cap(Ljava/lang/Object;)Lfr/testudo/spacecorsair/mod/ModCapitals$Cap;

    move-result-object v1

    if-eqz v1, :cond_e

    .line 254
    :cond_d
    :goto_d
    return v0

    .line 250
    :cond_e
    invoke-virtual {p0}, Lfr/testudo/spacecorsair/business/Element;->getPhysicDimension()Lfr/testudo/spacecorsair/engine/Vector2;

    move-result-object v1

    if-nez v1, :cond_1d

    const/4 v1, 0x0

    .line 251
    :goto_15
    const/high16 v2, 0x42c80000    # 100.0f

    cmpg-float v2, v1, v2

    if-gez v2, :cond_24

    const/4 v0, 0x0

    goto :goto_d

    .line 250
    :cond_1d
    invoke-virtual {p0}, Lfr/testudo/spacecorsair/business/Element;->getPhysicDimension()Lfr/testudo/spacecorsair/engine/Vector2;

    move-result-object v1

    iget v1, v1, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    goto :goto_15

    .line 252
    :cond_24
    const/high16 v2, 0x43960000    # 300.0f

    cmpg-float v2, v1, v2

    if-gez v2, :cond_2c

    const/4 v0, 0x1

    goto :goto_d

    .line 253
    :cond_2c
    const/high16 v2, 0x44610000    # 900.0f

    cmpg-float v1, v1, v2

    if-gez v1, :cond_d

    const/4 v0, 0x2

    goto :goto_d
.end method

.method static spores(Lfr/testudo/spacecorsair/business/Element;Lfr/testudo/spacecorsair/display/Drawable;)V
    .registers 15

    .prologue
    .line 391
    invoke-static {p1}, Lfr/testudo/spacecorsair/mod/ModLive;->sizeOf(Lfr/testudo/spacecorsair/display/Drawable;)F

    move-result v12

    .line 392
    const-string v0, "fx_spore_sheet"

    const/4 v1, 0x4

    const/16 v2, 0x10

    iget-object v3, p0, Lfr/testudo/spacecorsair/business/Element;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v3, v3, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    iget-object v4, p0, Lfr/testudo/spacecorsair/business/Element;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v4, v4, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    const/high16 v5, 0x3fc00000    # 1.5f

    mul-float/2addr v5, v12

    const-wide/16 v6, 0x514

    const v8, 0x3f266666    # 0.65f

    const/high16 v9, 0x3f800000    # 1.0f

    const v10, 0x3f0ccccd    # 0.55f

    const/4 v11, 0x1

    invoke-static/range {v0 .. v11}, Lfr/testudo/spacecorsair/mod/ModLive;->fx(Ljava/lang/String;IIFFFJFFFZ)V

    .line 393
    const-string v0, "fx_ichor_sheet"

    const/4 v1, 0x4

    const/16 v2, 0x10

    iget-object v3, p0, Lfr/testudo/spacecorsair/business/Element;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v3, v3, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    iget-object v4, p0, Lfr/testudo/spacecorsair/business/Element;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v4, v4, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    const v5, 0x3f666666    # 0.9f

    mul-float/2addr v5, v12

    const-wide/16 v6, 0x320

    const v8, 0x3f19999a    # 0.6f

    const v9, 0x3e99999a    # 0.3f

    const/high16 v10, 0x3f800000    # 1.0f

    const/4 v11, 0x1

    invoke-static/range {v0 .. v11}, Lfr/testudo/spacecorsair/mod/ModLive;->fx(Ljava/lang/String;IIFFFJFFFZ)V

    .line 394
    return-void
.end method

.method private vanish()V
    .registers 2

    .prologue
    .line 133
    iget-boolean v0, p0, Lfr/testudo/spacecorsair/mod/ModWreck;->removed:Z

    if-eqz v0, :cond_5

    .line 138
    :goto_4
    return-void

    .line 134
    :cond_5
    const/4 v0, 0x1

    iput-boolean v0, p0, Lfr/testudo/spacecorsair/mod/ModWreck;->removed:Z

    .line 135
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModWreck;->live:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 136
    iget-boolean v0, p0, Lfr/testudo/spacecorsair/mod/ModWreck;->visualOnly:Z

    if-eqz v0, :cond_1d

    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/Game;->currentLevel:Lfr/testudo/spacecorsair/game/levels/Level;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/levels/Level;->toDeleteDrawOnly:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 137
    :cond_1d
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/Game;->currentLevel:Lfr/testudo/spacecorsair/game/levels/Level;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/levels/Level;->toDelete:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4
.end method


# virtual methods
.method protected applyRebound(Lfr/testudo/spacecorsair/business/Element;I)F
    .registers 9

    .prologue
    const v5, 0x3dcccccd    # 0.1f

    .line 125
    instance-of v0, p1, Lfr/testudo/spacecorsair/business/projectiles/Projectile;

    if-nez v0, :cond_c

    invoke-super {p0, p1, p2}, Lfr/testudo/spacecorsair/business/Element;->applyRebound(Lfr/testudo/spacecorsair/business/Element;I)F

    move-result v0

    .line 129
    :goto_b
    return v0

    .line 126
    :cond_c
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModWreck;->speed:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v1, v0, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModWreck;->speed:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v2, v0, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    .line 127
    invoke-super {p0, p1, p2}, Lfr/testudo/spacecorsair/business/Element;->applyRebound(Lfr/testudo/spacecorsair/business/Element;I)F

    move-result v0

    .line 128
    iget-object v3, p0, Lfr/testudo/spacecorsair/mod/ModWreck;->speed:Lfr/testudo/spacecorsair/engine/Vector2;

    iget-object v4, p0, Lfr/testudo/spacecorsair/mod/ModWreck;->speed:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v4, v4, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    sub-float/2addr v4, v1

    mul-float/2addr v4, v5

    add-float/2addr v1, v4

    iget-object v4, p0, Lfr/testudo/spacecorsair/mod/ModWreck;->speed:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v4, v4, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    sub-float/2addr v4, v2

    mul-float/2addr v4, v5

    add-float/2addr v2, v4

    invoke-virtual {v3, v1, v2}, Lfr/testudo/spacecorsair/engine/Vector2;->set(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    goto :goto_b
.end method

.method public doPhysic(J)V
    .registers 10

    .prologue
    const v4, 0x3e99999a    # 0.3f

    const/4 v3, 0x0

    .line 109
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModWreck;->speed:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v0, v0, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    iget v1, p0, Lfr/testudo/spacecorsair/mod/ModWreck;->lastVx:F

    sub-float/2addr v0, v1

    iget-object v1, p0, Lfr/testudo/spacecorsair/mod/ModWreck;->speed:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v1, v1, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    iget v2, p0, Lfr/testudo/spacecorsair/mod/ModWreck;->lastVy:F

    sub-float/2addr v1, v2

    .line 110
    cmpl-float v2, v0, v3

    if-nez v2, :cond_1a

    cmpl-float v2, v1, v3

    if-eqz v2, :cond_27

    :cond_1a
    iget-object v2, p0, Lfr/testudo/spacecorsair/mod/ModWreck;->speed:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v3, p0, Lfr/testudo/spacecorsair/mod/ModWreck;->lastVx:F

    mul-float/2addr v0, v4

    add-float/2addr v0, v3

    iget v3, p0, Lfr/testudo/spacecorsair/mod/ModWreck;->lastVy:F

    mul-float/2addr v1, v4

    add-float/2addr v1, v3

    invoke-virtual {v2, v0, v1}, Lfr/testudo/spacecorsair/engine/Vector2;->set(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 111
    :cond_27
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModWreck;->speed:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v0, v0, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    iget-object v1, p0, Lfr/testudo/spacecorsair/mod/ModWreck;->speed:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v1, v1, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    mul-float/2addr v0, v1

    iget-object v1, p0, Lfr/testudo/spacecorsair/mod/ModWreck;->speed:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v1, v1, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    iget-object v2, p0, Lfr/testudo/spacecorsair/mod/ModWreck;->speed:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v2, v2, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    .line 112
    const v1, 0x3e23d70b    # 0.16000001f

    cmpl-float v1, v0, v1

    if-lez v1, :cond_51

    iget-object v1, p0, Lfr/testudo/spacecorsair/mod/ModWreck;->speed:Lfr/testudo/spacecorsair/engine/Vector2;

    const v2, 0x3ecccccd    # 0.4f

    float-to-double v4, v0

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    double-to-float v0, v4

    div-float v0, v2, v0

    invoke-virtual {v1, v0}, Lfr/testudo/spacecorsair/engine/Vector2;->multiply(F)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 113
    :cond_51
    invoke-super {p0, p1, p2}, Lfr/testudo/spacecorsair/business/Element;->doPhysic(J)V

    .line 114
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModWreck;->speed:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v0, v0, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    iput v0, p0, Lfr/testudo/spacecorsair/mod/ModWreck;->lastVx:F

    .line 115
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModWreck;->speed:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v0, v0, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    iput v0, p0, Lfr/testudo/spacecorsair/mod/ModWreck;->lastVy:F

    .line 116
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lfr/testudo/spacecorsair/mod/ModWreck;->born:J

    sub-long/2addr v0, v2

    .line 117
    iget-boolean v2, p0, Lfr/testudo/spacecorsair/mod/ModWreck;->visualOnly:Z

    if-eqz v2, :cond_71

    iget-wide v2, p0, Lfr/testudo/spacecorsair/mod/ModWreck;->lifeMs:J

    cmp-long v2, v0, v2

    if-gtz v2, :cond_7f

    :cond_71
    iget-wide v2, p0, Lfr/testudo/spacecorsair/mod/ModWreck;->fadeMs:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_82

    iget-wide v2, p0, Lfr/testudo/spacecorsair/mod/ModWreck;->fadeMs:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_82

    .line 118
    :cond_7f
    invoke-direct {p0}, Lfr/testudo/spacecorsair/mod/ModWreck;->vanish()V

    .line 120
    :cond_82
    return-void
.end method

.method public getDimToTestIfVisibleOnScreen()Lfr/testudo/spacecorsair/engine/Vector2;
    .registers 3

    .prologue
    .line 89
    iget v0, p0, Lfr/testudo/spacecorsair/mod/ModWreck;->w:F

    iget v1, p0, Lfr/testudo/spacecorsair/mod/ModWreck;->h:F

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 90
    iget-object v1, p0, Lfr/testudo/spacecorsair/mod/ModWreck;->vis:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v1, v0, v0}, Lfr/testudo/spacecorsair/engine/Vector2;->set(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 91
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModWreck;->vis:Lfr/testudo/spacecorsair/engine/Vector2;

    return-object v0
.end method

.method public getDrawableObject()Lfr/testudo/spacecorsair/display/Drawable;
    .registers 3

    .prologue
    .line 66
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModWreck;->tex:Lfr/testudo/spacecorsair/display/Texture;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModWreck;->tex:Lfr/testudo/spacecorsair/display/Texture;

    .line 67
    :goto_6
    if-nez v0, :cond_11

    const/4 v0, 0x0

    .line 73
    :goto_9
    return-object v0

    .line 66
    :cond_a
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModWreck;->art:Ljava/lang/String;

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModArt;->ready(Ljava/lang/String;)Lfr/testudo/spacecorsair/display/Texture;

    move-result-object v0

    goto :goto_6

    .line 68
    :cond_11
    iget-object v1, p0, Lfr/testudo/spacecorsair/mod/ModWreck;->spr:Lfr/testudo/spacecorsair/mod/ModFx$Sprite;

    iput-object v0, v1, Lfr/testudo/spacecorsair/mod/ModFx$Sprite;->myTexture:Lfr/testudo/spacecorsair/display/Texture;

    .line 69
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModWreck;->spr:Lfr/testudo/spacecorsair/mod/ModFx$Sprite;

    iget v1, p0, Lfr/testudo/spacecorsair/mod/ModWreck;->w:F

    iput v1, v0, Lfr/testudo/spacecorsair/mod/ModFx$Sprite;->w:F

    .line 70
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModWreck;->spr:Lfr/testudo/spacecorsair/mod/ModFx$Sprite;

    iget v1, p0, Lfr/testudo/spacecorsair/mod/ModWreck;->h:F

    iput v1, v0, Lfr/testudo/spacecorsair/mod/ModFx$Sprite;->h:F

    .line 71
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModWreck;->spr:Lfr/testudo/spacecorsair/mod/ModFx$Sprite;

    iget v1, p0, Lfr/testudo/spacecorsair/mod/ModWreck;->u0:F

    iput v1, v0, Lfr/testudo/spacecorsair/mod/ModFx$Sprite;->u0:F

    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModWreck;->spr:Lfr/testudo/spacecorsair/mod/ModFx$Sprite;

    iget v1, p0, Lfr/testudo/spacecorsair/mod/ModWreck;->v0:F

    iput v1, v0, Lfr/testudo/spacecorsair/mod/ModFx$Sprite;->v0:F

    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModWreck;->spr:Lfr/testudo/spacecorsair/mod/ModFx$Sprite;

    iget v1, p0, Lfr/testudo/spacecorsair/mod/ModWreck;->u1:F

    iput v1, v0, Lfr/testudo/spacecorsair/mod/ModFx$Sprite;->u1:F

    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModWreck;->spr:Lfr/testudo/spacecorsair/mod/ModFx$Sprite;

    iget v1, p0, Lfr/testudo/spacecorsair/mod/ModWreck;->v1:F

    iput v1, v0, Lfr/testudo/spacecorsair/mod/ModFx$Sprite;->v1:F

    .line 72
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModWreck;->spr:Lfr/testudo/spacecorsair/mod/ModFx$Sprite;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lfr/testudo/spacecorsair/mod/ModFx$Sprite;->additive:Z

    .line 73
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModWreck;->spr:Lfr/testudo/spacecorsair/mod/ModFx$Sprite;

    goto :goto_9
.end method

.method public getMiniDrawableObject()Lfr/testudo/spacecorsair/display/Drawable;
    .registers 2

    .prologue
    .line 78
    const/4 v0, 0x0

    return-object v0
.end method

.method public getPhysicDimension()Lfr/testudo/spacecorsair/engine/Vector2;
    .registers 2

    .prologue
    .line 83
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModWreck;->phys:Lfr/testudo/spacecorsair/engine/Vector2;

    return-object v0
.end method

.method public isColidable()Z
    .registers 2

    .prologue
    .line 96
    iget-boolean v0, p0, Lfr/testudo/spacecorsair/mod/ModWreck;->visualOnly:Z

    if-nez v0, :cond_c

    invoke-super {p0}, Lfr/testudo/spacecorsair/business/Element;->isColidable()Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public onDestroyed(Z)V
    .registers 15

    .prologue
    .line 221
    iget-boolean v0, p0, Lfr/testudo/spacecorsair/mod/ModWreck;->removed:Z

    if-eqz v0, :cond_5

    .line 234
    :goto_4
    return-void

    .line 223
    :cond_5
    :try_start_5
    iget v0, p0, Lfr/testudo/spacecorsair/mod/ModWreck;->w:F

    iget v1, p0, Lfr/testudo/spacecorsair/mod/ModWreck;->h:F

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v12

    .line 224
    const-string v0, "fx_explosion_big_sheet"

    const/16 v1, 0x8

    const/16 v2, 0x40

    iget-object v3, p0, Lfr/testudo/spacecorsair/mod/ModWreck;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v3, v3, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    iget-object v4, p0, Lfr/testudo/spacecorsair/mod/ModWreck;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v4, v4, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    const v5, 0x3fa66666    # 1.3f

    mul-float/2addr v5, v12

    const-wide/16 v6, 0x44c

    const/high16 v8, 0x3f800000    # 1.0f

    const/high16 v9, 0x3f400000    # 0.75f

    const v10, 0x3ee66666    # 0.45f

    const/4 v11, 0x1

    invoke-static/range {v0 .. v11}, Lfr/testudo/spacecorsair/mod/ModLive;->fx(Ljava/lang/String;IIFFFJFFFZ)V

    .line 225
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModWreck;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget-object v1, p0, Lfr/testudo/spacecorsair/mod/ModWreck;->speed:Lfr/testudo/spacecorsair/engine/Vector2;

    const/4 v2, 0x6

    invoke-static {v0, v1, v12, v2}, Lfr/testudo/spacecorsair/mod/ModWreck;->debris(Lfr/testudo/spacecorsair/engine/Vector2;Lfr/testudo/spacecorsair/engine/Vector2;FI)V

    .line 226
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->soundManager:Lfr/testudo/spacecorsair/engine/SoundManager;

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/engine/SoundManager;->playRandomExplode()V

    .line 227
    if-eqz p1, :cond_40

    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModLoot;->fromWreck(Lfr/testudo/spacecorsair/mod/ModWreck;)V

    .line 228
    :cond_40
    iget-boolean v0, p0, Lfr/testudo/spacecorsair/mod/ModWreck;->derelict:Z

    if-eqz v0, :cond_47

    invoke-static {p0, p1}, Lfr/testudo/spacecorsair/mod/ModDerelict;->onPieceDestroyed(Lfr/testudo/spacecorsair/mod/ModWreck;Z)V
    :try_end_47
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_47} :catch_51

    .line 232
    :cond_47
    :goto_47
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModWreck;->live:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 233
    const/4 v0, 0x0

    invoke-super {p0, v0}, Lfr/testudo/spacecorsair/business/Element;->onDestroyed(Z)V

    goto :goto_4

    .line 229
    :catch_51
    move-exception v0

    goto :goto_47
.end method

.method public registerYourselfToDrawQueue()V
    .registers 25

    .prologue
    .line 144
    invoke-virtual/range {p0 .. p0}, Lfr/testudo/spacecorsair/mod/ModWreck;->getDrawableObject()Lfr/testudo/spacecorsair/display/Drawable;

    move-result-object v21

    .line 145
    if-nez v21, :cond_7

    .line 203
    :cond_6
    :goto_6
    return-void

    .line 146
    :cond_7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v22

    .line 147
    const/high16 v8, 0x3f800000    # 1.0f

    .line 148
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lfr/testudo/spacecorsair/mod/ModWreck;->visualOnly:Z

    if-eqz v2, :cond_1cc

    move-object/from16 v0, p0

    iget-wide v2, v0, Lfr/testudo/spacecorsair/mod/ModWreck;->lifeMs:J

    .line 149
    :goto_17
    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-lez v4, :cond_43

    .line 150
    move-object/from16 v0, p0

    iget-wide v4, v0, Lfr/testudo/spacecorsair/mod/ModWreck;->born:J

    sub-long v4, v22, v4

    long-to-float v4, v4

    const-wide/16 v6, 0x1

    invoke-static {v6, v7, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    long-to-float v2, v2

    div-float v2, v4, v2

    .line 151
    const/high16 v3, 0x3f400000    # 0.75f

    cmpl-float v3, v2, v3

    if-lez v3, :cond_1d2

    const/4 v3, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    const/high16 v5, 0x3f400000    # 0.75f

    sub-float/2addr v2, v5

    const/high16 v5, 0x3e800000    # 0.25f

    div-float/2addr v2, v5

    sub-float v2, v4, v2

    invoke-static {v3, v2}, Ljava/lang/Math;->max(FF)F

    move-result v2

    :goto_42
    move v8, v2

    .line 153
    :cond_43
    move-object/from16 v0, p0

    iget v2, v0, Lfr/testudo/spacecorsair/mod/ModWreck;->maxLife:F

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-lez v2, :cond_1d6

    move-object/from16 v0, p0

    iget v2, v0, Lfr/testudo/spacecorsair/mod/ModWreck;->life:F

    move-object/from16 v0, p0

    iget v3, v0, Lfr/testudo/spacecorsair/mod/ModWreck;->maxLife:F

    div-float/2addr v2, v3

    move/from16 v20, v2

    .line 154
    :goto_57
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lfr/testudo/spacecorsair/mod/ModWreck;->preDrawn:Z

    if-nez v2, :cond_1dc

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lfr/testudo/spacecorsair/mod/ModWreck;->derelict:Z

    if-nez v2, :cond_1dc

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lfr/testudo/spacecorsair/mod/ModWreck;->cutTop:Z

    if-nez v2, :cond_6f

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lfr/testudo/spacecorsair/mod/ModWreck;->cutBottom:Z

    if-eqz v2, :cond_1dc

    :cond_6f
    const/4 v2, 0x1

    move v12, v2

    .line 155
    :goto_71
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lfr/testudo/spacecorsair/mod/ModWreck;->preDrawn:Z

    if-eqz v2, :cond_1e0

    const/high16 v9, 0x3f800000    # 1.0f

    .line 156
    :goto_79
    sget-object v2, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v2, v2, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->renderQueue:Lfr/testudo/spacecorsair/engine/RenderQueue;

    move-object/from16 v0, p0

    iget-object v3, v0, Lfr/testudo/spacecorsair/mod/ModWreck;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v5, v0, Lfr/testudo/spacecorsair/mod/ModWreck;->spr:Lfr/testudo/spacecorsair/mod/ModFx$Sprite;

    move-object/from16 v0, p0

    iget v6, v0, Lfr/testudo/spacecorsair/mod/ModWreck;->spin:F

    const/4 v7, 0x0

    const v10, 0x3f70a3d7    # 0.94f

    mul-float/2addr v10, v9

    const v11, 0x3f666666    # 0.9f

    mul-float/2addr v11, v9

    invoke-virtual/range {v2 .. v11}, Lfr/testudo/spacecorsair/engine/RenderQueue;->addToWaitingQueue(Lfr/testudo/spacecorsair/engine/Vector2;ZLfr/testudo/spacecorsair/display/Drawable;FZFFFF)V

    .line 157
    if-eqz v12, :cond_277

    .line 159
    move-object/from16 v0, p0

    iget-object v2, v0, Lfr/testudo/spacecorsair/mod/ModWreck;->burnSpr:Lfr/testudo/spacecorsair/mod/ModFx$Sprite;

    move-object/from16 v0, p0

    iget-object v3, v0, Lfr/testudo/spacecorsair/mod/ModWreck;->spr:Lfr/testudo/spacecorsair/mod/ModFx$Sprite;

    iget-object v3, v3, Lfr/testudo/spacecorsair/mod/ModFx$Sprite;->myTexture:Lfr/testudo/spacecorsair/display/Texture;

    iput-object v3, v2, Lfr/testudo/spacecorsair/mod/ModFx$Sprite;->myTexture:Lfr/testudo/spacecorsair/display/Texture;

    .line 160
    move-object/from16 v0, p0

    iget-object v2, v0, Lfr/testudo/spacecorsair/mod/ModWreck;->burnSpr:Lfr/testudo/spacecorsair/mod/ModFx$Sprite;

    move-object/from16 v0, p0

    iget v3, v0, Lfr/testudo/spacecorsair/mod/ModWreck;->w:F

    iput v3, v2, Lfr/testudo/spacecorsair/mod/ModFx$Sprite;->w:F

    move-object/from16 v0, p0

    iget-object v2, v0, Lfr/testudo/spacecorsair/mod/ModWreck;->burnSpr:Lfr/testudo/spacecorsair/mod/ModFx$Sprite;

    move-object/from16 v0, p0

    iget v3, v0, Lfr/testudo/spacecorsair/mod/ModWreck;->h:F

    iput v3, v2, Lfr/testudo/spacecorsair/mod/ModFx$Sprite;->h:F

    .line 161
    move-object/from16 v0, p0

    iget-object v2, v0, Lfr/testudo/spacecorsair/mod/ModWreck;->burnSpr:Lfr/testudo/spacecorsair/mod/ModFx$Sprite;

    move-object/from16 v0, p0

    iget v3, v0, Lfr/testudo/spacecorsair/mod/ModWreck;->u0:F

    iput v3, v2, Lfr/testudo/spacecorsair/mod/ModFx$Sprite;->u0:F

    move-object/from16 v0, p0

    iget-object v2, v0, Lfr/testudo/spacecorsair/mod/ModWreck;->burnSpr:Lfr/testudo/spacecorsair/mod/ModFx$Sprite;

    move-object/from16 v0, p0

    iget v3, v0, Lfr/testudo/spacecorsair/mod/ModWreck;->v0:F

    iput v3, v2, Lfr/testudo/spacecorsair/mod/ModFx$Sprite;->v0:F

    move-object/from16 v0, p0

    iget-object v2, v0, Lfr/testudo/spacecorsair/mod/ModWreck;->burnSpr:Lfr/testudo/spacecorsair/mod/ModFx$Sprite;

    move-object/from16 v0, p0

    iget v3, v0, Lfr/testudo/spacecorsair/mod/ModWreck;->u1:F

    iput v3, v2, Lfr/testudo/spacecorsair/mod/ModFx$Sprite;->u1:F

    move-object/from16 v0, p0

    iget-object v2, v0, Lfr/testudo/spacecorsair/mod/ModWreck;->burnSpr:Lfr/testudo/spacecorsair/mod/ModFx$Sprite;

    move-object/from16 v0, p0

    iget v3, v0, Lfr/testudo/spacecorsair/mod/ModWreck;->v1:F

    iput v3, v2, Lfr/testudo/spacecorsair/mod/ModFx$Sprite;->v1:F

    .line 162
    move-object/from16 v0, p0

    iget-object v2, v0, Lfr/testudo/spacecorsair/mod/ModWreck;->burnSpr:Lfr/testudo/spacecorsair/mod/ModFx$Sprite;

    const/4 v3, 0x0

    iput-boolean v3, v2, Lfr/testudo/spacecorsair/mod/ModFx$Sprite;->additive:Z

    .line 163
    move-object/from16 v0, p0

    iget-object v2, v0, Lfr/testudo/spacecorsair/mod/ModWreck;->burnSpr:Lfr/testudo/spacecorsair/mod/ModFx$Sprite;

    const/4 v3, 0x1

    iput-boolean v3, v2, Lfr/testudo/spacecorsair/mod/ModFx$Sprite;->flat:Z

    .line 164
    move-object/from16 v0, p0

    iget-object v2, v0, Lfr/testudo/spacecorsair/mod/ModWreck;->burnSpr:Lfr/testudo/spacecorsair/mod/ModFx$Sprite;

    move-object/from16 v0, p0

    iget-object v3, v0, Lfr/testudo/spacecorsair/mod/ModWreck;->burnA:[F

    iput-object v3, v2, Lfr/testudo/spacecorsair/mod/ModFx$Sprite;->edgeA:[F

    .line 165
    sget-object v2, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v9, v2, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->renderQueue:Lfr/testudo/spacecorsair/engine/RenderQueue;

    move-object/from16 v0, p0

    iget-object v10, v0, Lfr/testudo/spacecorsair/mod/ModWreck;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    const/4 v11, 0x0

    move-object/from16 v0, p0

    iget-object v12, v0, Lfr/testudo/spacecorsair/mod/ModWreck;->burnSpr:Lfr/testudo/spacecorsair/mod/ModFx$Sprite;

    move-object/from16 v0, p0

    iget v13, v0, Lfr/testudo/spacecorsair/mod/ModWreck;->spin:F

    const/4 v14, 0x0

    const v2, 0x3f59999a    # 0.85f

    mul-float v15, v8, v2

    const v16, 0x3d8f5c29    # 0.07f

    const v17, 0x3d4ccccd    # 0.05f

    const v18, 0x3d23d70a    # 0.04f

    invoke-virtual/range {v9 .. v18}, Lfr/testudo/spacecorsair/engine/RenderQueue;->addToWaitingQueue(Lfr/testudo/spacecorsair/engine/Vector2;ZLfr/testudo/spacecorsair/display/Drawable;FZFFFF)V

    .line 166
    move-object/from16 v0, p0

    iget-object v2, v0, Lfr/testudo/spacecorsair/mod/ModWreck;->scorch:[F

    if-nez v2, :cond_211

    .line 167
    const/4 v2, 0x4

    new-array v2, v2, [F

    move-object/from16 v0, p0

    iput-object v2, v0, Lfr/testudo/spacecorsair/mod/ModWreck;->scorch:[F

    .line 168
    const/4 v2, 0x0

    move v6, v2

    :goto_12a
    const/4 v2, 0x2

    if-ge v6, v2, :cond_211

    .line 169
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lfr/testudo/spacecorsair/mod/ModWreck;->cutTop:Z

    if-eqz v2, :cond_1f5

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lfr/testudo/spacecorsair/mod/ModWreck;->cutBottom:Z

    if-eqz v2, :cond_13b

    if-nez v6, :cond_1f5

    :cond_13b
    const/4 v2, 0x1

    move v5, v2

    .line 170
    :goto_13d
    if-eqz v5, :cond_1f9

    move-object/from16 v0, p0

    iget v2, v0, Lfr/testudo/spacecorsair/mod/ModWreck;->v0:F

    move-object/from16 v0, p0

    iget v3, v0, Lfr/testudo/spacecorsair/mod/ModWreck;->v1:F

    move-object/from16 v0, p0

    iget v4, v0, Lfr/testudo/spacecorsair/mod/ModWreck;->v0:F

    sub-float/2addr v3, v4

    const v4, 0x3df5c28f    # 0.12f

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    .line 171
    :goto_151
    const v4, 0x3ecccccd    # 0.4f

    const v3, 0x3f19999a    # 0.6f

    .line 172
    move-object/from16 v0, p0

    iget-object v7, v0, Lfr/testudo/spacecorsair/mod/ModWreck;->spr:Lfr/testudo/spacecorsair/mod/ModFx$Sprite;

    iget-object v7, v7, Lfr/testudo/spacecorsair/mod/ModFx$Sprite;->myTexture:Lfr/testudo/spacecorsair/display/Texture;

    const v9, 0x3f7fbe77    # 0.999f

    const/4 v10, 0x0

    invoke-static {v10, v2}, Ljava/lang/Math;->max(FF)F

    move-result v2

    invoke-static {v9, v2}, Ljava/lang/Math;->min(FF)F

    move-result v2

    sget-object v9, Lfr/testudo/spacecorsair/mod/ModWreck;->sp:[F

    invoke-static {v7, v2, v9}, Lfr/testudo/spacecorsair/mod/ModArt;->span(Lfr/testudo/spacecorsair/display/Texture;F[F)[F

    move-result-object v2

    if-eqz v2, :cond_417

    sget-object v2, Lfr/testudo/spacecorsair/mod/ModWreck;->sp:[F

    const/4 v3, 0x0

    aget v3, v2, v3

    sget-object v2, Lfr/testudo/spacecorsair/mod/ModWreck;->sp:[F

    const/4 v4, 0x1

    aget v2, v2, v4

    move v4, v3

    .line 173
    :goto_17c
    move-object/from16 v0, p0

    iget-object v3, v0, Lfr/testudo/spacecorsair/mod/ModWreck;->scorch:[F

    mul-int/lit8 v7, v6, 0x2

    sub-float v9, v2, v4

    const v10, 0x3e99999a    # 0.3f

    const v11, 0x3ecccccd    # 0.4f

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v12

    double-to-float v12, v12

    mul-float/2addr v11, v12

    add-float/2addr v10, v11

    mul-float/2addr v9, v10

    add-float/2addr v9, v4

    const/high16 v10, 0x3f000000    # 0.5f

    sub-float/2addr v9, v10

    move-object/from16 v0, p0

    iget v10, v0, Lfr/testudo/spacecorsair/mod/ModWreck;->w:F

    mul-float/2addr v9, v10

    aput v9, v3, v7

    .line 174
    move-object/from16 v0, p0

    iget-object v7, v0, Lfr/testudo/spacecorsair/mod/ModWreck;->scorch:[F

    mul-int/lit8 v3, v6, 0x2

    add-int/lit8 v9, v3, 0x1

    if-eqz v5, :cond_20d

    const v3, -0x413d70a4    # -0.38f

    :goto_1aa
    move-object/from16 v0, p0

    iget v5, v0, Lfr/testudo/spacecorsair/mod/ModWreck;->h:F

    mul-float/2addr v3, v5

    aput v3, v7, v9

    .line 175
    move-object/from16 v0, p0

    iget v3, v0, Lfr/testudo/spacecorsair/mod/ModWreck;->scorchSize:F

    sub-float/2addr v2, v4

    move-object/from16 v0, p0

    iget v4, v0, Lfr/testudo/spacecorsair/mod/ModWreck;->w:F

    mul-float/2addr v2, v4

    const v4, 0x3eb33333    # 0.35f

    mul-float/2addr v2, v4

    invoke-static {v3, v2}, Ljava/lang/Math;->max(FF)F

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lfr/testudo/spacecorsair/mod/ModWreck;->scorchSize:F

    .line 168
    add-int/lit8 v2, v6, 0x1

    move v6, v2

    goto/16 :goto_12a

    .line 148
    :cond_1cc
    move-object/from16 v0, p0

    iget-wide v2, v0, Lfr/testudo/spacecorsair/mod/ModWreck;->fadeMs:J

    goto/16 :goto_17

    .line 151
    :cond_1d2
    const/high16 v2, 0x3f800000    # 1.0f

    goto/16 :goto_42

    .line 153
    :cond_1d6
    const/high16 v2, 0x3f800000    # 1.0f

    move/from16 v20, v2

    goto/16 :goto_57

    .line 154
    :cond_1dc
    const/4 v2, 0x0

    move v12, v2

    goto/16 :goto_71

    .line 155
    :cond_1e0
    if-eqz v12, :cond_1ef

    move-object/from16 v0, p0

    iget v2, v0, Lfr/testudo/spacecorsair/mod/ModWreck;->tint:F

    const v3, 0x3f4ccccd    # 0.8f

    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v9

    goto/16 :goto_79

    :cond_1ef
    move-object/from16 v0, p0

    iget v9, v0, Lfr/testudo/spacecorsair/mod/ModWreck;->tint:F

    goto/16 :goto_79

    .line 169
    :cond_1f5
    const/4 v2, 0x0

    move v5, v2

    goto/16 :goto_13d

    .line 170
    :cond_1f9
    move-object/from16 v0, p0

    iget v2, v0, Lfr/testudo/spacecorsair/mod/ModWreck;->v1:F

    move-object/from16 v0, p0

    iget v3, v0, Lfr/testudo/spacecorsair/mod/ModWreck;->v1:F

    move-object/from16 v0, p0

    iget v4, v0, Lfr/testudo/spacecorsair/mod/ModWreck;->v0:F

    sub-float/2addr v3, v4

    const v4, 0x3df5c28f    # 0.12f

    mul-float/2addr v3, v4

    sub-float/2addr v2, v3

    goto/16 :goto_151

    .line 174
    :cond_20d
    const v3, 0x3ec28f5c    # 0.38f

    goto :goto_1aa

    .line 178
    :cond_211
    const/4 v2, 0x0

    :goto_212
    const/4 v3, 0x2

    if-ge v2, v3, :cond_277

    .line 179
    sget-object v3, Lfr/testudo/spacecorsair/mod/ModWreck;->b:Lfr/testudo/spacecorsair/engine/Vector2;

    move-object/from16 v0, p0

    iget-object v4, v0, Lfr/testudo/spacecorsair/mod/ModWreck;->scorch:[F

    mul-int/lit8 v5, v2, 0x2

    aget v4, v4, v5

    move-object/from16 v0, p0

    iget-object v5, v0, Lfr/testudo/spacecorsair/mod/ModWreck;->scorch:[F

    mul-int/lit8 v6, v2, 0x2

    add-int/lit8 v6, v6, 0x1

    aget v5, v5, v6

    invoke-virtual {v3, v4, v5}, Lfr/testudo/spacecorsair/engine/Vector2;->set(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Lfr/testudo/spacecorsair/mod/ModWreck;->spin:F

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lfr/testudo/spacecorsair/engine/Vector2;->applyRotatation(D)Lfr/testudo/spacecorsair/engine/Vector2;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lfr/testudo/spacecorsair/mod/ModWreck;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v3, v4}, Lfr/testudo/spacecorsair/engine/Vector2;->add(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 180
    move-object/from16 v0, p0

    iget v3, v0, Lfr/testudo/spacecorsair/mod/ModWreck;->scorchSize:F

    move-object/from16 v0, p0

    iget v4, v0, Lfr/testudo/spacecorsair/mod/ModWreck;->h:F

    const/high16 v5, 0x3f000000    # 0.5f

    mul-float/2addr v4, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F

    move-result v12

    .line 181
    const-string v9, "fx_scorch"

    sget-object v3, Lfr/testudo/spacecorsair/mod/ModWreck;->b:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v10, v3, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    sget-object v3, Lfr/testudo/spacecorsair/mod/ModWreck;->b:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v11, v3, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    move-object/from16 v0, p0

    iget v3, v0, Lfr/testudo/spacecorsair/mod/ModWreck;->spin:F

    mul-int/lit8 v4, v2, 0x61

    int-to-float v4, v4

    add-float v14, v3, v4

    const/high16 v15, 0x3f800000    # 1.0f

    const/high16 v16, 0x3f800000    # 1.0f

    const/high16 v17, 0x3f800000    # 1.0f

    const v3, 0x3f4ccccd    # 0.8f

    mul-float v18, v3, v8

    const/16 v19, 0x0

    move v13, v12

    invoke-static/range {v9 .. v19}, Lfr/testudo/spacecorsair/mod/ModFx;->spr(Ljava/lang/String;FFFFFFFFFZ)V

    .line 178
    add-int/lit8 v2, v2, 0x1

    goto :goto_212

    .line 185
    :cond_277
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lfr/testudo/spacecorsair/mod/ModWreck;->derelict:Z

    if-eqz v2, :cond_3f0

    const/high16 v7, 0x3e800000    # 0.25f

    .line 186
    :goto_27f
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lfr/testudo/spacecorsair/mod/ModWreck;->preDrawn:Z

    if-eqz v2, :cond_406

    const/4 v3, 0x0

    .line 187
    :goto_286
    if-eqz v3, :cond_2ca

    .line 188
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lfr/testudo/spacecorsair/mod/ModWreck;->cutTop:Z

    if-eqz v2, :cond_2a8

    move-object/from16 v0, p0

    iget v4, v0, Lfr/testudo/spacecorsair/mod/ModWreck;->v0:F

    move-object/from16 v0, p0

    iget v2, v0, Lfr/testudo/spacecorsair/mod/ModWreck;->h:F

    neg-float v2, v2

    const/high16 v5, 0x40000000    # 2.0f

    div-float v5, v2, v5

    move-object/from16 v0, p0

    iget v6, v0, Lfr/testudo/spacecorsair/mod/ModWreck;->spin:F

    move-object/from16 v0, v21

    iget-object v9, v0, Lfr/testudo/spacecorsair/display/Drawable;->myTexture:Lfr/testudo/spacecorsair/display/Texture;

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v9}, Lfr/testudo/spacecorsair/mod/ModWreck;->edge(Lfr/testudo/spacecorsair/display/Texture;FFFFFLfr/testudo/spacecorsair/display/Texture;)V

    .line 189
    :cond_2a8
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lfr/testudo/spacecorsair/mod/ModWreck;->cutBottom:Z

    if-eqz v2, :cond_2ca

    move-object/from16 v0, p0

    iget v4, v0, Lfr/testudo/spacecorsair/mod/ModWreck;->v1:F

    move-object/from16 v0, p0

    iget v2, v0, Lfr/testudo/spacecorsair/mod/ModWreck;->h:F

    const/high16 v5, 0x40000000    # 2.0f

    div-float v5, v2, v5

    move-object/from16 v0, p0

    iget v2, v0, Lfr/testudo/spacecorsair/mod/ModWreck;->spin:F

    const/high16 v6, 0x43340000    # 180.0f

    add-float/2addr v6, v2

    move-object/from16 v0, v21

    iget-object v9, v0, Lfr/testudo/spacecorsair/display/Drawable;->myTexture:Lfr/testudo/spacecorsair/display/Texture;

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v9}, Lfr/testudo/spacecorsair/mod/ModWreck;->edge(Lfr/testudo/spacecorsair/display/Texture;FFFFFLfr/testudo/spacecorsair/display/Texture;)V

    .line 192
    :cond_2ca
    move-object/from16 v0, p0

    iget-wide v2, v0, Lfr/testudo/spacecorsair/mod/ModWreck;->nextVent:J

    cmp-long v2, v22, v2

    if-lez v2, :cond_37d

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lfr/testudo/spacecorsair/mod/ModWreck;->derelict:Z

    if-nez v2, :cond_37d

    .line 193
    const-wide/16 v2, 0x1f4

    add-long v2, v2, v22

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v4

    const-wide/high16 v8, 0x4099000000000000L    # 1600.0

    mul-double/2addr v4, v8

    const v6, 0x3e99999a    # 0.3f

    invoke-static {v6, v7}, Ljava/lang/Math;->max(FF)F

    move-result v6

    float-to-double v8, v6

    div-double/2addr v4, v8

    double-to-long v4, v4

    add-long/2addr v2, v4

    move-object/from16 v0, p0

    iput-wide v2, v0, Lfr/testudo/spacecorsair/mod/ModWreck;->nextVent:J

    .line 194
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lfr/testudo/spacecorsair/mod/ModWreck;->cutTop:Z

    if-eqz v2, :cond_40e

    move-object/from16 v0, p0

    iget v2, v0, Lfr/testudo/spacecorsair/mod/ModWreck;->h:F

    neg-float v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    .line 195
    :goto_300
    sget-object v3, Lfr/testudo/spacecorsair/mod/ModWreck;->b:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v4

    const-wide/high16 v8, 0x3fe0000000000000L    # 0.5

    sub-double/2addr v4, v8

    double-to-float v4, v4

    move-object/from16 v0, p0

    iget v5, v0, Lfr/testudo/spacecorsair/mod/ModWreck;->w:F

    mul-float/2addr v4, v5

    const v5, 0x3f19999a    # 0.6f

    mul-float/2addr v4, v5

    invoke-virtual {v3, v4, v2}, Lfr/testudo/spacecorsair/engine/Vector2;->set(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    move-result-object v2

    move-object/from16 v0, p0

    iget v3, v0, Lfr/testudo/spacecorsair/mod/ModWreck;->spin:F

    float-to-double v4, v3

    invoke-static {v4, v5}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Lfr/testudo/spacecorsair/engine/Vector2;->applyRotatation(D)Lfr/testudo/spacecorsair/engine/Vector2;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lfr/testudo/spacecorsair/mod/ModWreck;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v2, v3}, Lfr/testudo/spacecorsair/engine/Vector2;->add(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 196
    const-string v8, "fx_vent_sheet"

    const/4 v9, 0x4

    const/16 v10, 0x10

    sget-object v2, Lfr/testudo/spacecorsair/mod/ModWreck;->b:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v11, v2, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    sget-object v2, Lfr/testudo/spacecorsair/mod/ModWreck;->b:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v12, v2, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    move-object/from16 v0, p0

    iget v2, v0, Lfr/testudo/spacecorsair/mod/ModWreck;->w:F

    const v3, 0x3e99999a    # 0.3f

    mul-float v13, v2, v3

    const-wide/16 v14, 0x384

    const v16, 0x3f4ccccd    # 0.8f

    const v17, 0x3f59999a    # 0.85f

    const v18, 0x3f666666    # 0.9f

    const/16 v19, 0x1

    invoke-static/range {v8 .. v19}, Lfr/testudo/spacecorsair/mod/ModLive;->fx(Ljava/lang/String;IIFFFJFFFZ)V

    .line 197
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v2

    float-to-double v4, v7

    cmpg-double v2, v2, v4

    if-gez v2, :cond_37d

    const-string v2, "fx_sparks_sheet"

    const/4 v3, 0x4

    const/16 v4, 0x10

    sget-object v5, Lfr/testudo/spacecorsair/mod/ModWreck;->b:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v5, v5, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    sget-object v6, Lfr/testudo/spacecorsair/mod/ModWreck;->b:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v6, v6, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    move-object/from16 v0, p0

    iget v7, v0, Lfr/testudo/spacecorsair/mod/ModWreck;->w:F

    const v8, 0x3e6147ae    # 0.22f

    mul-float/2addr v7, v8

    const-wide/16 v8, 0x1a4

    const/high16 v10, 0x3f800000    # 1.0f

    const v11, 0x3f4ccccd    # 0.8f

    const v12, 0x3ee66666    # 0.45f

    const/4 v13, 0x1

    invoke-static/range {v2 .. v13}, Lfr/testudo/spacecorsair/mod/ModLive;->fx(Ljava/lang/String;IIFFFJFFFZ)V

    .line 199
    :cond_37d
    const/high16 v2, 0x3f000000    # 0.5f

    cmpg-float v2, v20, v2

    if-gez v2, :cond_6

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v2

    const-wide v4, 0x3faeb851eb851eb8L    # 0.06

    cmpg-double v2, v2, v4

    if-gez v2, :cond_6

    .line 200
    sget-object v2, Lfr/testudo/spacecorsair/mod/ModWreck;->b:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v4

    const-wide/high16 v6, 0x3fe0000000000000L    # 0.5

    sub-double/2addr v4, v6

    double-to-float v3, v4

    move-object/from16 v0, p0

    iget v4, v0, Lfr/testudo/spacecorsair/mod/ModWreck;->w:F

    mul-float/2addr v3, v4

    const/high16 v4, 0x3f000000    # 0.5f

    mul-float/2addr v3, v4

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v4

    const-wide/high16 v6, 0x3fe0000000000000L    # 0.5

    sub-double/2addr v4, v6

    double-to-float v4, v4

    move-object/from16 v0, p0

    iget v5, v0, Lfr/testudo/spacecorsair/mod/ModWreck;->h:F

    mul-float/2addr v4, v5

    const/high16 v5, 0x3f000000    # 0.5f

    mul-float/2addr v4, v5

    invoke-virtual {v2, v3, v4}, Lfr/testudo/spacecorsair/engine/Vector2;->set(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    move-result-object v2

    move-object/from16 v0, p0

    iget v3, v0, Lfr/testudo/spacecorsair/mod/ModWreck;->spin:F

    float-to-double v4, v3

    invoke-static {v4, v5}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Lfr/testudo/spacecorsair/engine/Vector2;->applyRotatation(D)Lfr/testudo/spacecorsair/engine/Vector2;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lfr/testudo/spacecorsair/mod/ModWreck;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v2, v3}, Lfr/testudo/spacecorsair/engine/Vector2;->add(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 201
    const-string v2, "fx_smoke_sheet"

    const/4 v3, 0x4

    const/16 v4, 0x10

    sget-object v5, Lfr/testudo/spacecorsair/mod/ModWreck;->b:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v5, v5, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    sget-object v6, Lfr/testudo/spacecorsair/mod/ModWreck;->b:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v6, v6, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    move-object/from16 v0, p0

    iget v7, v0, Lfr/testudo/spacecorsair/mod/ModWreck;->w:F

    const v8, 0x3eb33333    # 0.35f

    mul-float/2addr v7, v8

    const-wide/16 v8, 0x5dc

    const v10, 0x3ee66666    # 0.45f

    const v11, 0x3ee66666    # 0.45f

    const v12, 0x3ee66666    # 0.45f

    const/4 v13, 0x1

    invoke-static/range {v2 .. v13}, Lfr/testudo/spacecorsair/mod/ModLive;->fx(Ljava/lang/String;IIFFFJFFFZ)V

    goto/16 :goto_6

    .line 185
    :cond_3f0
    const/high16 v2, 0x3e800000    # 0.25f

    const/high16 v3, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    iget-wide v4, v0, Lfr/testudo/spacecorsair/mod/ModWreck;->born:J

    sub-long v4, v22, v4

    long-to-float v4, v4

    const v5, 0x469c4000    # 20000.0f

    div-float/2addr v4, v5

    sub-float/2addr v3, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v7

    goto/16 :goto_27f

    .line 186
    :cond_406
    const-string v2, "wreck_edge"

    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModArt;->ready(Ljava/lang/String;)Lfr/testudo/spacecorsair/display/Texture;

    move-result-object v3

    goto/16 :goto_286

    .line 194
    :cond_40e
    move-object/from16 v0, p0

    iget v2, v0, Lfr/testudo/spacecorsair/mod/ModWreck;->h:F

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    goto/16 :goto_300

    :cond_417
    move v2, v3

    goto/16 :goto_17c
.end method
