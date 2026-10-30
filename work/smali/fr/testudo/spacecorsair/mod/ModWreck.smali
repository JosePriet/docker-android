.class public final Lfr/testudo/spacecorsair/mod/ModWreck;
.super Lfr/testudo/spacecorsair/business/Element;
.source "ModWreck.java"


# static fields
.field private static final BANDS2:[[F

.field private static final BANDS3:[[F

.field static final BLAST_PUSH:F = 0.05f

.field static final HIT_MAX:F = 0.1f

.field static final HIT_STOP:J = 0x7d0L

.field static final HIT_TAU:F = 666.6667f

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

.field private baseVx:F

.field private baseVy:F

.field blastVx:F

.field blastVy:F

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

.field private final hit:[F

.field private hitAge:J

.field husk:Z

.field private lastVx:F

.field private lastVy:F

.field lifeMs:J

.field lootKey:Ljava/lang/String;

.field private nextVent:J

.field private final phys:Lfr/testudo/spacecorsair/engine/Vector2;

.field pieceIdx:I

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

    .line 236
    new-instance v0, Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-direct {v0}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>()V

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModWreck;->a:Lfr/testudo/spacecorsair/engine/Vector2;

    new-instance v0, Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-direct {v0}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>()V

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModWreck;->b:Lfr/testudo/spacecorsair/engine/Vector2;

    .line 301
    new-array v0, v2, [F

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModWreck;->sp:[F

    .line 334
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModWreck;->live:Ljava/util/ArrayList;

    .line 420
    new-array v0, v2, [[F

    new-array v1, v2, [F

    fill-array-data v1, :array_4a

    aput-object v1, v0, v3

    new-array v1, v2, [F

    fill-array-data v1, :array_52

    aput-object v1, v0, v4

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModWreck;->BANDS2:[[F

    .line 421
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

    .line 420
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

    .line 421
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
    const/4 v2, 0x2

    const/4 v1, -0x1

    .line 60
    invoke-direct {p0}, Lfr/testudo/spacecorsair/business/Element;-><init>()V

    .line 40
    const v0, 0x3f1eb852    # 0.62f

    iput v0, p0, Lfr/testudo/spacecorsair/mod/ModWreck;->tint:F

    .line 41
    iput v1, p0, Lfr/testudo/spacecorsair/mod/ModWreck;->derelictSite:I

    .line 46
    iput v1, p0, Lfr/testudo/spacecorsair/mod/ModWreck;->pieceIdx:I

    .line 52
    new-instance v0, Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-direct {v0}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>()V

    iput-object v0, p0, Lfr/testudo/spacecorsair/mod/ModWreck;->phys:Lfr/testudo/spacecorsair/engine/Vector2;

    new-instance v0, Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-direct {v0}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>()V

    iput-object v0, p0, Lfr/testudo/spacecorsair/mod/ModWreck;->vis:Lfr/testudo/spacecorsair/engine/Vector2;

    .line 53
    new-instance v0, Lfr/testudo/spacecorsair/mod/ModFx$Sprite;

    invoke-direct {v0}, Lfr/testudo/spacecorsair/mod/ModFx$Sprite;-><init>()V

    iput-object v0, p0, Lfr/testudo/spacecorsair/mod/ModWreck;->spr:Lfr/testudo/spacecorsair/mod/ModFx$Sprite;

    .line 54
    new-instance v0, Lfr/testudo/spacecorsair/mod/ModFx$Sprite;

    invoke-direct {v0}, Lfr/testudo/spacecorsair/mod/ModFx$Sprite;-><init>()V

    iput-object v0, p0, Lfr/testudo/spacecorsair/mod/ModWreck;->burnSpr:Lfr/testudo/spacecorsair/mod/ModFx$Sprite;

    .line 55
    new-array v0, v2, [F

    iput-object v0, p0, Lfr/testudo/spacecorsair/mod/ModWreck;->burnA:[F

    .line 158
    new-array v0, v2, [F

    iput-object v0, p0, Lfr/testudo/spacecorsair/mod/ModWreck;->hit:[F

    .line 61
    const/4 v0, 0x1

    iput-boolean v0, p0, Lfr/testudo/spacecorsair/mod/ModWreck;->hasSpeedDeperdition:Z

    .line 62
    const v0, 0x3f803127    # 1.0015f

    iput v0, p0, Lfr/testudo/spacecorsair/mod/ModWreck;->speedDeperditionfactor:F

    .line 63
    const/4 v0, 0x0

    iput-boolean v0, p0, Lfr/testudo/spacecorsair/mod/ModWreck;->drawOnRadar:Z

    .line 64
    const/high16 v0, 0x40c00000    # 6.0f

    iput v0, p0, Lfr/testudo/spacecorsair/mod/ModWreck;->mass:F

    .line 65
    const-string v0, "Wreck"

    iput-object v0, p0, Lfr/testudo/spacecorsair/mod/ModWreck;->objectName:Ljava/lang/String;

    .line 66
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lfr/testudo/spacecorsair/mod/ModWreck;->born:J

    .line 67
    iget-wide v0, p0, Lfr/testudo/spacecorsair/mod/ModWreck;->born:J

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v2

    const-wide v4, 0x4097700000000000L    # 1500.0

    mul-double/2addr v2, v4

    double-to-long v2, v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lfr/testudo/spacecorsair/mod/ModWreck;->nextVent:J

    .line 68
    return-void
.end method

.method static add(Lfr/testudo/spacecorsair/mod/ModWreck;)V
    .registers 7

    .prologue
    const/16 v5, 0x24

    const/4 v2, 0x0

    .line 560
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModWreck;->speed:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v0, v0, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    iput v0, p0, Lfr/testudo/spacecorsair/mod/ModWreck;->baseVx:F

    iput v0, p0, Lfr/testudo/spacecorsair/mod/ModWreck;->lastVx:F

    .line 561
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModWreck;->speed:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v0, v0, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    iput v0, p0, Lfr/testudo/spacecorsair/mod/ModWreck;->baseVy:F

    iput v0, p0, Lfr/testudo/spacecorsair/mod/ModWreck;->lastVy:F

    .line 562
    iget-boolean v0, p0, Lfr/testudo/spacecorsair/mod/ModWreck;->visualOnly:Z

    if-eqz v0, :cond_23

    .line 563
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/Game;->currentLevel:Lfr/testudo/spacecorsair/game/levels/Level;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/levels/Level;->toAddDrawOnly:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 577
    :goto_22
    return-void

    .line 566
    :cond_23
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModWreck;->live:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v3, v2

    .line 567
    :goto_29
    const/4 v0, 0x2

    if-ge v3, v0, :cond_6b

    sget-object v0, Lfr/testudo/spacecorsair/mod/ModWreck;->live:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, v5, :cond_6b

    move v1, v2

    .line 569
    :goto_35
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModWreck;->live:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_67

    sget-object v0, Lfr/testudo/spacecorsair/mod/ModWreck;->live:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, v5, :cond_67

    .line 570
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModWreck;->live:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfr/testudo/spacecorsair/mod/ModWreck;

    .line 571
    iget-boolean v4, v0, Lfr/testudo/spacecorsair/mod/ModWreck;->derelict:Z

    if-nez v4, :cond_5d

    iget-boolean v4, v0, Lfr/testudo/spacecorsair/mod/ModWreck;->poi:Z

    if-nez v4, :cond_5d

    if-eq v0, p0, :cond_5d

    if-nez v3, :cond_61

    iget-boolean v4, v0, Lfr/testudo/spacecorsair/mod/ModWreck;->husk:Z

    if-nez v4, :cond_61

    .line 569
    :cond_5d
    :goto_5d
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_35

    .line 572
    :cond_61
    invoke-direct {v0}, Lfr/testudo/spacecorsair/mod/ModWreck;->vanish()V

    .line 573
    add-int/lit8 v1, v1, -0x1

    goto :goto_5d

    .line 567
    :cond_67
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_29

    .line 576
    :cond_6b
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/Game;->currentLevel:Lfr/testudo/spacecorsair/game/levels/Level;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/levels/Level;->toAdd:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_22
.end method

.method public static beamTarget(Lfr/testudo/spacecorsair/business/Element;Lfr/testudo/spacecorsair/business/Element;)Lfr/testudo/spacecorsair/business/Element;
    .registers 16

    .prologue
    const/high16 v12, 0x40000000    # 2.0f

    .line 189
    if-eqz p0, :cond_e

    if-eqz p1, :cond_e

    iget-boolean v1, p1, Lfr/testudo/spacecorsair/business/Element;->removed:Z

    if-nez v1, :cond_e

    instance-of v1, p1, Lfr/testudo/spacecorsair/mod/ModWreck;

    if-eqz v1, :cond_f

    .line 202
    :cond_e
    :goto_e
    return-object p1

    .line 193
    :cond_f
    :try_start_f
    iget-object v1, p0, Lfr/testudo/spacecorsair/business/Element;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v1, v1, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    iget-object v2, p0, Lfr/testudo/spacecorsair/business/Element;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v2, v2, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    .line 194
    const/4 v3, 0x0

    sget-object v4, Lfr/testudo/spacecorsair/mod/ModWreck;->live:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v13

    move v11, v3

    move v9, v12

    move-object v10, p1

    :goto_21
    if-ge v11, v13, :cond_62

    .line 195
    sget-object v3, Lfr/testudo/spacecorsair/mod/ModWreck;->live:Ljava/util/ArrayList;

    invoke-virtual {v3, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lfr/testudo/spacecorsair/mod/ModWreck;

    move-object v8, v0

    .line 196
    iget-boolean v3, v8, Lfr/testudo/spacecorsair/mod/ModWreck;->removed:Z

    if-nez v3, :cond_5f

    iget-boolean v3, v8, Lfr/testudo/spacecorsair/mod/ModWreck;->visualOnly:Z

    if-eqz v3, :cond_3d

    move v3, v9

    move-object v8, v10

    .line 194
    :cond_37
    :goto_37
    add-int/lit8 v4, v11, 0x1

    move v11, v4

    move v9, v3

    move-object v10, v8

    goto :goto_21

    .line 197
    :cond_3d
    iget-object v3, p1, Lfr/testudo/spacecorsair/business/Element;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v3, v3, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    iget-object v4, p1, Lfr/testudo/spacecorsair/business/Element;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v4, v4, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    iget-object v5, v8, Lfr/testudo/spacecorsair/mod/ModWreck;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v5, v5, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    iget-object v6, v8, Lfr/testudo/spacecorsair/mod/ModWreck;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v6, v6, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    iget-object v7, v8, Lfr/testudo/spacecorsair/mod/ModWreck;->phys:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v7, v7, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    div-float/2addr v7, v12

    invoke-static/range {v1 .. v7}, Lfr/testudo/spacecorsair/mod/ModWreck;->segHit(FFFFFFF)F
    :try_end_55
    .catch Ljava/lang/Throwable; {:try_start_f .. :try_end_55} :catch_64

    move-result v3

    .line 198
    const/4 v4, 0x0

    cmpl-float v4, v3, v4

    if-ltz v4, :cond_5f

    cmpg-float v4, v3, v9

    if-ltz v4, :cond_37

    :cond_5f
    move v3, v9

    move-object v8, v10

    goto :goto_37

    :cond_62
    move-object p1, v10

    .line 200
    goto :goto_e

    .line 201
    :catch_64
    move-exception v1

    goto :goto_e
.end method

.method public static blastPush(Lfr/testudo/spacecorsair/business/Element;Lfr/testudo/spacecorsair/engine/Vector2;)V
    .registers 4

    .prologue
    .line 176
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/Element;->speed:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v0, p1}, Lfr/testudo/spacecorsair/engine/Vector2;->add(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 177
    instance-of v0, p0, Lfr/testudo/spacecorsair/mod/ModWreck;

    if-eqz v0, :cond_19

    .line 178
    check-cast p0, Lfr/testudo/spacecorsair/mod/ModWreck;

    .line 179
    iget v0, p0, Lfr/testudo/spacecorsair/mod/ModWreck;->blastVx:F

    iget v1, p1, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    add-float/2addr v0, v1

    iput v0, p0, Lfr/testudo/spacecorsair/mod/ModWreck;->blastVx:F

    .line 180
    iget v0, p0, Lfr/testudo/spacecorsair/mod/ModWreck;->blastVy:F

    iget v1, p1, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    add-float/2addr v0, v1

    iput v0, p0, Lfr/testudo/spacecorsair/mod/ModWreck;->blastVy:F

    .line 182
    :cond_19
    return-void
.end method

.method static brake([FJJ)V
    .registers 12

    .prologue
    const/4 v0, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 167
    aget v1, p0, v4

    aget v2, p0, v4

    mul-float/2addr v1, v2

    aget v2, p0, v5

    aget v3, p0, v5

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    float-to-double v2, v1

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    double-to-float v1, v2

    .line 168
    cmpl-float v2, v1, v0

    if-nez v2, :cond_19

    .line 172
    :goto_18
    return-void

    .line 169
    :cond_19
    const-wide/16 v2, 0x7d0

    cmp-long v2, p3, v2

    if-ltz v2, :cond_2d

    .line 170
    :goto_1f
    aget v2, p0, v4

    div-float v3, v0, v1

    mul-float/2addr v2, v3

    aput v2, p0, v4

    .line 171
    aget v2, p0, v5

    div-float/2addr v0, v1

    mul-float/2addr v0, v2

    aput v0, p0, v5

    goto :goto_18

    .line 169
    :cond_2d
    const v0, 0x3dcccccd    # 0.1f

    invoke-static {v1, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    const-wide/16 v2, 0x0

    invoke-static {v2, v3, p1, p2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    neg-long v2, v2

    long-to-float v2, v2

    const v3, 0x4426aaab

    div-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->exp(D)D

    move-result-wide v2

    double-to-float v2, v2

    mul-float/2addr v0, v2

    goto :goto_1f
.end method

.method static breakUp(Lfr/testudo/spacecorsair/business/Element;Lfr/testudo/spacecorsair/display/Drawable;IZJ)[Lfr/testudo/spacecorsair/mod/ModWreck;
    .registers 30

    .prologue
    .line 499
    move-object/from16 v0, p1

    iget-object v0, v0, Lfr/testudo/spacecorsair/display/Drawable;->myTexture:Lfr/testudo/spacecorsair/display/Texture;

    move-object/from16 v21, v0

    .line 500
    if-eqz v21, :cond_e

    move-object/from16 v0, v21

    iget v4, v0, Lfr/testudo/spacecorsair/display/Texture;->name:I

    if-gtz v4, :cond_10

    :cond_e
    const/4 v4, 0x0

    .line 530
    :goto_f
    return-object v4

    .line 502
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

    .line 504
    :goto_26
    const/4 v4, 0x3

    move/from16 v0, p2

    if-lt v0, v4, :cond_118

    const/4 v4, 0x3

    move/from16 v18, v4

    .line 505
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

    .line 507
    :goto_51
    move/from16 v0, v18

    new-array v0, v0, [Lfr/testudo/spacecorsair/mod/ModWreck;

    move-object/from16 v17, v0

    .line 508
    const/4 v4, 0x1

    new-array v0, v4, [Z

    move-object/from16 v22, v0

    .line 509
    move/from16 v0, v20

    move/from16 v1, v19

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v23

    .line 510
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

    .line 511
    move-object/from16 v0, p0

    iget-object v4, v0, Lfr/testudo/spacecorsair/business/Element;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    move-object/from16 v0, p0

    iget-object v5, v0, Lfr/testudo/spacecorsair/business/Element;->speed:Lfr/testudo/spacecorsair/engine/Vector2;

    const/16 v6, 0x8

    move/from16 v0, v23

    invoke-static {v4, v5, v0, v6}, Lfr/testudo/spacecorsair/mod/ModWreck;->debris(Lfr/testudo/spacecorsair/engine/Vector2;Lfr/testudo/spacecorsair/engine/Vector2;FI)V

    .line 512
    const/4 v4, 0x0

    move v5, v4

    :goto_99
    move/from16 v0, v18

    if-ge v5, v0, :cond_157

    .line 513
    new-instance v6, Lfr/testudo/spacecorsair/mod/ModWreck;

    invoke-direct {v6}, Lfr/testudo/spacecorsair/mod/ModWreck;-><init>()V

    .line 514
    move-object/from16 v0, v22

    iput-object v0, v6, Lfr/testudo/spacecorsair/mod/ModWreck;->group:[Z

    .line 515
    move-object/from16 v0, v21

    iput-object v0, v6, Lfr/testudo/spacecorsair/mod/ModWreck;->tex:Lfr/testudo/spacecorsair/display/Texture;

    .line 516
    const/4 v4, 0x0

    iput v4, v6, Lfr/testudo/spacecorsair/mod/ModWreck;->u0:F

    const/high16 v4, 0x3f800000    # 1.0f

    iput v4, v6, Lfr/testudo/spacecorsair/mod/ModWreck;->u1:F

    .line 517
    aget v4, v16, v5

    iput v4, v6, Lfr/testudo/spacecorsair/mod/ModWreck;->v0:F

    add-int/lit8 v4, v5, 0x1

    aget v4, v16, v4

    iput v4, v6, Lfr/testudo/spacecorsair/mod/ModWreck;->v1:F

    .line 518
    if-lez v5, :cond_14d

    const/4 v4, 0x1

    :goto_be
    iput-boolean v4, v6, Lfr/testudo/spacecorsair/mod/ModWreck;->cutTop:Z

    .line 519
    add-int/lit8 v4, v18, -0x1

    if-ge v5, v4, :cond_150

    const/4 v4, 0x1

    :goto_c5
    iput-boolean v4, v6, Lfr/testudo/spacecorsair/mod/ModWreck;->cutBottom:Z

    .line 520
    move/from16 v0, v20

    iput v0, v6, Lfr/testudo/spacecorsair/mod/ModWreck;->w:F

    .line 521
    iget v4, v6, Lfr/testudo/spacecorsair/mod/ModWreck;->v1:F

    iget v7, v6, Lfr/testudo/spacecorsair/mod/ModWreck;->v0:F

    sub-float/2addr v4, v7

    mul-float v4, v4, v19

    iput v4, v6, Lfr/testudo/spacecorsair/mod/ModWreck;->h:F

    .line 522
    iget-object v7, v6, Lfr/testudo/spacecorsair/mod/ModWreck;->burnA:[F

    const/4 v8, 0x0

    iget-boolean v4, v6, Lfr/testudo/spacecorsair/mod/ModWreck;->cutTop:Z

    if-eqz v4, :cond_153

    const v4, 0x3f666666    # 0.9f

    :goto_de
    aput v4, v7, v8

    .line 523
    iget-object v7, v6, Lfr/testudo/spacecorsair/mod/ModWreck;->burnA:[F

    const/4 v8, 0x1

    iget-boolean v4, v6, Lfr/testudo/spacecorsair/mod/ModWreck;->cutBottom:Z

    if-eqz v4, :cond_155

    const v4, 0x3f666666    # 0.9f

    :goto_ea
    aput v4, v7, v8

    .line 524
    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v23

    invoke-static {v6, v0, v1, v2}, Lfr/testudo/spacecorsair/mod/ModWreck;->place(Lfr/testudo/spacecorsair/mod/ModWreck;Lfr/testudo/spacecorsair/business/Element;FF)V

    .line 525
    move/from16 v0, p3

    iput-boolean v0, v6, Lfr/testudo/spacecorsair/mod/ModWreck;->visualOnly:Z

    .line 526
    move-wide/from16 v0, p4

    iput-wide v0, v6, Lfr/testudo/spacecorsair/mod/ModWreck;->lifeMs:J

    .line 527
    aput-object v6, v17, v5

    .line 528
    invoke-static {v6}, Lfr/testudo/spacecorsair/mod/ModWreck;->add(Lfr/testudo/spacecorsair/mod/ModWreck;)V

    .line 512
    add-int/lit8 v4, v5, 0x1

    move v5, v4

    goto :goto_99

    .line 503
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

    .line 504
    :cond_118
    const/4 v4, 0x2

    move/from16 v18, v4

    goto/16 :goto_2e

    .line 506
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

    .line 518
    :cond_14d
    const/4 v4, 0x0

    goto/16 :goto_be

    .line 519
    :cond_150
    const/4 v4, 0x0

    goto/16 :goto_c5

    .line 522
    :cond_153
    const/4 v4, 0x0

    goto :goto_de

    .line 523
    :cond_155
    const/4 v4, 0x0

    goto :goto_ea

    :cond_157
    move-object/from16 v4, v17

    .line 530
    goto/16 :goto_f
.end method

.method private static breakUpArt(Lfr/testudo/spacecorsair/business/Element;Lfr/testudo/spacecorsair/display/Drawable;Ljava/lang/String;)[Lfr/testudo/spacecorsair/mod/ModWreck;
    .registers 21

    .prologue
    .line 428
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

    .line 456
    :goto_39
    return-object v2

    .line 429
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

    .line 431
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

    .line 434
    :goto_6c
    move/from16 v0, v16

    invoke-static {v0, v15}, Ljava/lang/Math;->max(FF)F

    move-result v17

    .line 435
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

    .line 436
    move-object/from16 v0, p0

    iget-object v2, v0, Lfr/testudo/spacecorsair/business/Element;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    move-object/from16 v0, p0

    iget-object v3, v0, Lfr/testudo/spacecorsair/business/Element;->speed:Lfr/testudo/spacecorsair/engine/Vector2;

    const/16 v4, 0x8

    move/from16 v0, v17

    invoke-static {v2, v3, v0, v4}, Lfr/testudo/spacecorsair/mod/ModWreck;->debris(Lfr/testudo/spacecorsair/engine/Vector2;Lfr/testudo/spacecorsair/engine/Vector2;FI)V

    .line 437
    const/4 v2, 0x1

    new-array v6, v2, [Z

    .line 438
    const/4 v2, 0x3

    if-ne v14, v2, :cond_13a

    sget-object v2, Lfr/testudo/spacecorsair/mod/ModWreck;->BANDS3:[[F

    .line 439
    :goto_ad
    new-array v4, v14, [Lfr/testudo/spacecorsair/mod/ModWreck;

    .line 440
    const/4 v3, 0x0

    move v5, v3

    :goto_b1
    if-ge v5, v14, :cond_142

    .line 441
    new-instance v7, Lfr/testudo/spacecorsair/mod/ModWreck;

    invoke-direct {v7}, Lfr/testudo/spacecorsair/mod/ModWreck;-><init>()V

    .line 442
    iput-object v6, v7, Lfr/testudo/spacecorsair/mod/ModWreck;->group:[Z

    .line 443
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

    .line 444
    const/4 v3, 0x1

    iput-boolean v3, v7, Lfr/testudo/spacecorsair/mod/ModWreck;->preDrawn:Z

    .line 445
    const/high16 v3, 0x3f800000    # 1.0f

    iput v3, v7, Lfr/testudo/spacecorsair/mod/ModWreck;->tint:F

    .line 446
    const/4 v3, 0x0

    iput v3, v7, Lfr/testudo/spacecorsair/mod/ModWreck;->u0:F

    const/high16 v3, 0x3f800000    # 1.0f

    iput v3, v7, Lfr/testudo/spacecorsair/mod/ModWreck;->u1:F

    .line 447
    aget-object v3, v2, v5

    const/4 v8, 0x0

    aget v3, v3, v8

    iput v3, v7, Lfr/testudo/spacecorsair/mod/ModWreck;->v0:F

    aget-object v3, v2, v5

    const/4 v8, 0x1

    aget v3, v3, v8

    iput v3, v7, Lfr/testudo/spacecorsair/mod/ModWreck;->v1:F

    .line 448
    if-lez v5, :cond_13e

    const/4 v3, 0x1

    :goto_f7
    iput-boolean v3, v7, Lfr/testudo/spacecorsair/mod/ModWreck;->cutTop:Z

    .line 449
    add-int/lit8 v3, v14, -0x1

    if-ge v5, v3, :cond_140

    const/4 v3, 0x1

    :goto_fe
    iput-boolean v3, v7, Lfr/testudo/spacecorsair/mod/ModWreck;->cutBottom:Z

    .line 450
    move/from16 v0, v16

    iput v0, v7, Lfr/testudo/spacecorsair/mod/ModWreck;->w:F

    .line 451
    iget v3, v7, Lfr/testudo/spacecorsair/mod/ModWreck;->v1:F

    iget v8, v7, Lfr/testudo/spacecorsair/mod/ModWreck;->v0:F

    sub-float/2addr v3, v8

    mul-float/2addr v3, v15

    iput v3, v7, Lfr/testudo/spacecorsair/mod/ModWreck;->h:F

    .line 452
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-static {v7, v0, v15, v1}, Lfr/testudo/spacecorsair/mod/ModWreck;->place(Lfr/testudo/spacecorsair/mod/ModWreck;Lfr/testudo/spacecorsair/business/Element;FF)V

    .line 453
    aput-object v7, v4, v5

    .line 454
    invoke-static {v7}, Lfr/testudo/spacecorsair/mod/ModWreck;->add(Lfr/testudo/spacecorsair/mod/ModWreck;)V

    .line 440
    add-int/lit8 v3, v5, 0x1

    move v5, v3

    goto :goto_b1

    .line 429
    :cond_11c
    const/4 v2, 0x2

    move v14, v2

    goto/16 :goto_57

    .line 432
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

    .line 433
    :cond_137
    const/4 v2, 0x0

    goto/16 :goto_39

    .line 438
    :cond_13a
    sget-object v2, Lfr/testudo/spacecorsair/mod/ModWreck;->BANDS2:[[F

    goto/16 :goto_ad

    .line 448
    :cond_13e
    const/4 v3, 0x0

    goto :goto_f7

    .line 449
    :cond_140
    const/4 v3, 0x0

    goto :goto_fe

    :cond_142
    move-object v2, v4

    .line 456
    goto/16 :goto_39
.end method

.method static damp(FF)F
    .registers 4

    .prologue
    .line 162
    sub-float v0, p0, p1

    const v1, 0x3e99999a    # 0.3f

    mul-float/2addr v0, v1

    const v1, 0x3d4ccccd    # 0.05f

    mul-float/2addr v1, p1

    add-float/2addr v0, v1

    return v0
.end method

.method static debris(Lfr/testudo/spacecorsair/engine/Vector2;Lfr/testudo/spacecorsair/engine/Vector2;FI)V
    .registers 22

    .prologue
    .line 482
    const/4 v2, 0x0

    :goto_1
    move/from16 v0, p3

    if-ge v2, v0, :cond_74

    .line 483
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v4

    const-wide v6, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v4, v6

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    mul-double v14, v4, v6

    .line 484
    const v3, 0x3e99999a    # 0.3f

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v4

    double-to-float v4, v4

    const v5, 0x3f19999a    # 0.6f

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    mul-float v13, p2, v3

    .line 485
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

    .line 486
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

    .line 485
    invoke-static/range {v3 .. v13}, Lfr/testudo/spacecorsair/mod/ModLive;->chunk(Ljava/lang/String;IIIFFFJFF)V

    .line 482
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 488
    :cond_74
    return-void
.end method

.method private edge(Lfr/testudo/spacecorsair/display/Texture;FFFFFLfr/testudo/spacecorsair/display/Texture;)V
    .registers 25

    .prologue
    .line 305
    const v3, 0x3e99999a    # 0.3f

    const v2, 0x3f333333    # 0.7f

    .line 306
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

    .line 307
    :cond_28
    sub-float v4, v2, v3

    move-object/from16 v0, p0

    iget v5, v0, Lfr/testudo/spacecorsair/mod/ModWreck;->w:F

    mul-float/2addr v5, v4

    .line 308
    const/high16 v4, 0x41000000    # 8.0f

    cmpg-float v4, v5, v4

    if-gez v4, :cond_36

    .line 313
    :goto_35
    return-void

    .line 309
    :cond_36
    add-float/2addr v2, v3

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    const/high16 v3, 0x3f000000    # 0.5f

    sub-float/2addr v2, v3

    move-object/from16 v0, p0

    iget v3, v0, Lfr/testudo/spacecorsair/mod/ModWreck;->w:F

    mul-float/2addr v2, v3

    .line 310
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

    .line 311
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

    .line 312
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
    const/high16 v8, 0x3f800000    # 1.0f

    const/4 v7, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 535
    iget-object v5, p1, Lfr/testudo/spacecorsair/display/Drawable;->myTexture:Lfr/testudo/spacecorsair/display/Texture;

    .line 536
    if-eqz v5, :cond_d

    iget v0, v5, Lfr/testudo/spacecorsair/display/Texture;->name:I

    if-gtz v0, :cond_e

    .line 557
    :cond_d
    :goto_d
    return-void

    .line 538
    :cond_e
    instance-of v0, p1, Lfr/testudo/spacecorsair/mod/ModFx$Sprite;

    if-eqz v0, :cond_73

    move-object v0, p1

    check-cast v0, Lfr/testudo/spacecorsair/mod/ModFx$Sprite;

    iget v2, v0, Lfr/testudo/spacecorsair/mod/ModFx$Sprite;->w:F

    check-cast p1, Lfr/testudo/spacecorsair/mod/ModFx$Sprite;

    iget v0, p1, Lfr/testudo/spacecorsair/mod/ModFx$Sprite;->h:F

    move v1, v0

    .line 541
    :goto_1c
    new-instance v6, Lfr/testudo/spacecorsair/mod/ModWreck;

    invoke-direct {v6}, Lfr/testudo/spacecorsair/mod/ModWreck;-><init>()V

    .line 542
    new-array v0, v3, [Z

    aput-boolean v4, v0, v4

    iput-object v0, v6, Lfr/testudo/spacecorsair/mod/ModWreck;->group:[Z

    .line 543
    iput-boolean v3, v6, Lfr/testudo/spacecorsair/mod/ModWreck;->husk:Z

    .line 544
    iput v3, v6, Lfr/testudo/spacecorsair/mod/ModWreck;->srcClass:I

    .line 545
    instance-of v0, p0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    if-eqz v0, :cond_81

    move-object v0, p0

    check-cast v0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    iget-boolean v0, v0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->elite:Z

    if-eqz v0, :cond_81

    move v0, v3

    :goto_37
    iput-boolean v0, v6, Lfr/testudo/spacecorsair/mod/ModWreck;->srcElite:Z

    .line 546
    iput-object v5, v6, Lfr/testudo/spacecorsair/mod/ModWreck;->tex:Lfr/testudo/spacecorsair/display/Texture;

    .line 547
    iput v7, v6, Lfr/testudo/spacecorsair/mod/ModWreck;->u0:F

    iput v8, v6, Lfr/testudo/spacecorsair/mod/ModWreck;->u1:F

    iput v7, v6, Lfr/testudo/spacecorsair/mod/ModWreck;->v0:F

    iput v8, v6, Lfr/testudo/spacecorsair/mod/ModWreck;->v1:F

    .line 548
    iput v2, v6, Lfr/testudo/spacecorsair/mod/ModWreck;->w:F

    .line 549
    iput v1, v6, Lfr/testudo/spacecorsair/mod/ModWreck;->h:F

    .line 550
    const v0, 0x3ecccccd    # 0.4f

    iput v0, v6, Lfr/testudo/spacecorsair/mod/ModWreck;->tint:F

    .line 551
    invoke-static {v4}, Lfr/testudo/spacecorsair/mod/ModWreck;->lifeMs(I)J

    move-result-wide v4

    iput-wide v4, v6, Lfr/testudo/spacecorsair/mod/ModWreck;->fadeMs:J

    .line 552
    invoke-static {v2, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    invoke-static {v6, p0, v1, v0}, Lfr/testudo/spacecorsair/mod/ModWreck;->place(Lfr/testudo/spacecorsair/mod/ModWreck;Lfr/testudo/spacecorsair/business/Element;FF)V

    .line 553
    const/high16 v0, 0x42c80000    # 100.0f

    iget v1, p0, Lfr/testudo/spacecorsair/business/Element;->maxLife:F

    const v2, 0x3e4ccccd    # 0.2f

    mul-float/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, v6, Lfr/testudo/spacecorsair/mod/ModWreck;->maxLife:F

    .line 554
    iget v0, v6, Lfr/testudo/spacecorsair/mod/ModWreck;->maxLife:F

    iput v0, v6, Lfr/testudo/spacecorsair/mod/ModWreck;->life:F

    .line 555
    iget v0, p0, Lfr/testudo/spacecorsair/business/Element;->level:I

    iput v0, v6, Lfr/testudo/spacecorsair/mod/ModWreck;->srcLevel:I

    .line 556
    invoke-static {v6}, Lfr/testudo/spacecorsair/mod/ModWreck;->add(Lfr/testudo/spacecorsair/mod/ModWreck;)V

    goto :goto_d

    .line 539
    :cond_73
    iget-object v0, p1, Lfr/testudo/spacecorsair/display/Drawable;->dimensions:Lfr/testudo/spacecorsair/engine/Vector2;

    if-eqz v0, :cond_d

    iget-object v0, p1, Lfr/testudo/spacecorsair/display/Drawable;->dimensions:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v2, v0, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    iget-object v0, p1, Lfr/testudo/spacecorsair/display/Drawable;->dimensions:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v0, v0, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    move v1, v0

    goto :goto_1c

    :cond_81
    move v0, v4

    .line 545
    goto :goto_37
.end method

.method public static lifeMs(I)J
    .registers 3

    .prologue
    .line 339
    const/4 v0, 0x1

    if-gt p0, v0, :cond_7

    const-wide/32 v0, 0x1d4c0

    .line 341
    :goto_6
    return-wide v0

    .line 340
    :cond_7
    const/4 v0, 0x2

    if-ne p0, v0, :cond_e

    const-wide/32 v0, 0x493e0

    goto :goto_6

    .line 341
    :cond_e
    const-wide/16 v0, 0x0

    goto :goto_6
.end method

.method static massFor(F)F
    .registers 4

    .prologue
    .line 107
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

    const/4 v8, 0x0

    const/4 v6, 0x1

    .line 368
    if-eqz p0, :cond_12

    iget-boolean v2, p0, Lfr/testudo/spacecorsair/business/Element;->removed:Z

    if-nez v2, :cond_12

    instance-of v2, p0, Lfr/testudo/spacecorsair/mod/ModWreck;

    if-nez v2, :cond_12

    instance-of v2, p0, Lfr/testudo/spacecorsair/business/projectiles/Projectile;

    if-eqz v2, :cond_13

    .line 417
    :cond_12
    :goto_12
    return-void

    .line 370
    :cond_13
    :try_start_13
    sget-object v2, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v2, v2, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-boolean v2, v2, Lfr/testudo/spacecorsair/game/Game;->mapMode:Z

    if-nez v2, :cond_12

    .line 371
    iget-boolean v2, p0, Lfr/testudo/spacecorsair/business/Element;->isPlayer:Z

    if-eqz v2, :cond_7b

    instance-of v2, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;

    if-eqz v2, :cond_7b

    .line 372
    move-object v0, p0

    check-cast v0, Lfr/testudo/spacecorsair/business/player/PlayerShip;

    move-object v2, v0

    .line 373
    iget-object v3, v2, Lfr/testudo/spacecorsair/business/player/PlayerShip;->shipSpec:Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;

    if-eqz v3, :cond_12

    .line 374
    invoke-virtual {v2}, Lfr/testudo/spacecorsair/business/player/PlayerShip;->getDrawableObject()Lfr/testudo/spacecorsair/display/Drawable;

    move-result-object v3

    .line 375
    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModWreck;->playerClass(Lfr/testudo/spacecorsair/business/player/PlayerShip;)I

    move-result v4

    .line 376
    if-nez v3, :cond_41

    .line 377
    :goto_35
    invoke-static {v5}, Lfr/testudo/spacecorsair/mod/ModLive;->alienArt(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_48

    invoke-static {p0, v3}, Lfr/testudo/spacecorsair/mod/ModWreck;->spores(Lfr/testudo/spacecorsair/business/Element;Lfr/testudo/spacecorsair/display/Drawable;)V

    goto :goto_12

    .line 414
    :catch_3f
    move-exception v2

    goto :goto_12

    .line 376
    :cond_41
    iget-object v2, v3, Lfr/testudo/spacecorsair/display/Drawable;->myTexture:Lfr/testudo/spacecorsair/display/Texture;

    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModArt;->artOf(Lfr/testudo/spacecorsair/display/Texture;)Ljava/lang/String;

    move-result-object v5

    goto :goto_35

    .line 378
    :cond_48
    if-lt v4, v9, :cond_54

    if-eqz v3, :cond_54

    const/4 v5, 0x1

    const-wide/16 v6, 0xed8

    move-object v2, p0

    invoke-static/range {v2 .. v7}, Lfr/testudo/spacecorsair/mod/ModWreck;->breakUp(Lfr/testudo/spacecorsair/business/Element;Lfr/testudo/spacecorsair/display/Drawable;IZJ)[Lfr/testudo/spacecorsair/mod/ModWreck;

    goto :goto_12

    .line 379
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

    .line 382
    :cond_7b
    instance-of v2, p0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    if-nez v2, :cond_83

    instance-of v2, p0, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;

    if-eqz v2, :cond_b5

    :cond_83
    move v2, v6

    .line 383
    :goto_84
    if-eqz v2, :cond_12

    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/Mod;->isDrone(Lfr/testudo/spacecorsair/business/Element;)Z

    move-result v2

    if-nez v2, :cond_12

    .line 384
    invoke-virtual {p0}, Lfr/testudo/spacecorsair/business/Element;->getDrawableObject()Lfr/testudo/spacecorsair/display/Drawable;

    move-result-object v3

    .line 385
    if-eqz v3, :cond_12

    iget-object v2, v3, Lfr/testudo/spacecorsair/display/Drawable;->myTexture:Lfr/testudo/spacecorsair/display/Texture;

    if-eqz v2, :cond_12

    .line 386
    iget-object v2, v3, Lfr/testudo/spacecorsair/display/Drawable;->myTexture:Lfr/testudo/spacecorsair/display/Texture;

    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModArt;->artOf(Lfr/testudo/spacecorsair/display/Texture;)Ljava/lang/String;

    move-result-object v7

    .line 387
    invoke-static {v7}, Lfr/testudo/spacecorsair/mod/ModLive;->alienArt(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_aa

    instance-of v2, p0, Lfr/testudo/spacecorsair/business/ennemis/AlienRat;

    if-nez v2, :cond_aa

    instance-of v2, p0, Lfr/testudo/spacecorsair/business/ennemis/UfoAlienShip;

    if-eqz v2, :cond_b7

    .line 389
    :cond_aa
    invoke-static {p0, v3}, Lfr/testudo/spacecorsair/mod/ModWreck;->spores(Lfr/testudo/spacecorsair/business/Element;Lfr/testudo/spacecorsair/display/Drawable;)V

    .line 390
    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModWreck;->sizeClass(Lfr/testudo/spacecorsair/business/Element;)I

    move-result v2

    if-ge v2, v9, :cond_12

    goto/16 :goto_12

    :cond_b5
    move v2, v8

    .line 382
    goto :goto_84

    .line 393
    :cond_b7
    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModWreck;->sizeClass(Lfr/testudo/spacecorsair/business/Element;)I

    move-result v4

    .line 394
    if-ge v4, v9, :cond_c4

    .line 395
    if-ne v4, v6, :cond_12

    invoke-static {p0, v3}, Lfr/testudo/spacecorsair/mod/ModWreck;->husk(Lfr/testudo/spacecorsair/business/Element;Lfr/testudo/spacecorsair/display/Drawable;)V

    goto/16 :goto_12

    .line 398
    :cond_c4
    instance-of v2, p0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    if-eqz v2, :cond_115

    move-object v0, p0

    check-cast v0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    move-object v2, v0

    iget-boolean v2, v2, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->elite:Z

    if-eqz v2, :cond_115

    move v10, v6

    .line 399
    :goto_d1
    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModBoss;->kindOf(Lfr/testudo/spacecorsair/business/Element;)I

    move-result v2

    if-ltz v2, :cond_117

    move v9, v6

    .line 400
    :goto_d8
    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModCapitals;->cap(Ljava/lang/Object;)Lfr/testudo/spacecorsair/mod/ModCapitals$Cap;

    move-result-object v11

    .line 401
    if-eqz v11, :cond_119

    iget-object v2, v11, Lfr/testudo/spacecorsair/mod/ModCapitals$Cap;->f:Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;

    if-eqz v2, :cond_119

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

    :goto_f9
    invoke-static {p0, v3, v2}, Lfr/testudo/spacecorsair/mod/ModWreck;->breakUpArt(Lfr/testudo/spacecorsair/business/Element;Lfr/testudo/spacecorsair/display/Drawable;Ljava/lang/String;)[Lfr/testudo/spacecorsair/mod/ModWreck;

    move-result-object v2

    .line 402
    if-nez v2, :cond_151

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    move-object v2, p0

    invoke-static/range {v2 .. v7}, Lfr/testudo/spacecorsair/mod/ModWreck;->breakUp(Lfr/testudo/spacecorsair/business/Element;Lfr/testudo/spacecorsair/display/Drawable;IZJ)[Lfr/testudo/spacecorsair/mod/ModWreck;

    move-result-object v2

    move-object v3, v2

    .line 403
    :goto_108
    if-eqz v3, :cond_12

    .line 404
    array-length v5, v3

    move v2, v8

    :goto_10c
    if-ge v2, v5, :cond_142

    aget-object v6, v3, v2

    .line 405
    if-nez v6, :cond_131

    .line 404
    :goto_112
    add-int/lit8 v2, v2, 0x1

    goto :goto_10c

    :cond_115
    move v10, v8

    .line 398
    goto :goto_d1

    :cond_117
    move v9, v8

    .line 399
    goto :goto_d8

    .line 401
    :cond_119
    if-nez v7, :cond_11d

    move-object v2, v5

    goto :goto_f9

    :cond_11d
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "wreck_"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_f9

    .line 406
    :cond_131
    invoke-static {v4}, Lfr/testudo/spacecorsair/mod/ModWreck;->lifeMs(I)J

    move-result-wide v12

    iput-wide v12, v6, Lfr/testudo/spacecorsair/mod/ModWreck;->fadeMs:J

    .line 407
    iget v7, p0, Lfr/testudo/spacecorsair/business/Element;->level:I

    iput v7, v6, Lfr/testudo/spacecorsair/mod/ModWreck;->srcLevel:I

    .line 408
    iput v4, v6, Lfr/testudo/spacecorsair/mod/ModWreck;->srcClass:I

    .line 409
    iput-boolean v10, v6, Lfr/testudo/spacecorsair/mod/ModWreck;->srcElite:Z

    .line 410
    iput-boolean v9, v6, Lfr/testudo/spacecorsair/mod/ModWreck;->srcBoss:Z

    goto :goto_112

    .line 412
    :cond_142
    if-nez v11, :cond_14a

    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModTitan;->isTitanClass(Lfr/testudo/spacecorsair/business/Element;)Z

    move-result v2

    if-eqz v2, :cond_12

    :cond_14a
    iget v2, p0, Lfr/testudo/spacecorsair/business/Element;->level:I

    invoke-static {v3, v2, v9}, Lfr/testudo/spacecorsair/mod/ModSector;->persist([Lfr/testudo/spacecorsair/mod/ModWreck;IZ)V
    :try_end_14f
    .catch Ljava/lang/Throwable; {:try_start_13 .. :try_end_14f} :catch_3f

    goto/16 :goto_12

    :cond_151
    move-object v3, v2

    goto :goto_108
.end method

.method static onLevel()V
    .registers 1

    .prologue
    .line 581
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModWreck;->live:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 582
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

    .line 461
    iget v0, p0, Lfr/testudo/spacecorsair/mod/ModWreck;->v0:F

    iget v1, p0, Lfr/testudo/spacecorsair/mod/ModWreck;->v1:F

    add-float/2addr v0, v1

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    const/high16 v1, 0x3f000000    # 0.5f

    sub-float/2addr v0, v1

    mul-float/2addr v0, p2

    .line 462
    sget-object v1, Lfr/testudo/spacecorsair/mod/ModWreck;->a:Lfr/testudo/spacecorsair/engine/Vector2;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Lfr/testudo/spacecorsair/engine/Vector2;->set(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    move-result-object v0

    iget v1, p1, Lfr/testudo/spacecorsair/business/Element;->spin:F

    float-to-double v2, v1

    invoke-static {v2, v3}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lfr/testudo/spacecorsair/engine/Vector2;->applyRotatation(D)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 463
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModWreck;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget-object v1, p1, Lfr/testudo/spacecorsair/business/Element;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/engine/Vector2;->setSameAs(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    move-result-object v0

    sget-object v1, Lfr/testudo/spacecorsair/mod/ModWreck;->a:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/engine/Vector2;->add(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 464
    iget v0, p1, Lfr/testudo/spacecorsair/business/Element;->spin:F

    iput v0, p0, Lfr/testudo/spacecorsair/mod/ModWreck;->spin:F

    .line 466
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

    .line 467
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

    .line 468
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

    .line 469
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

    .line 470
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

    .line 471
    :cond_b2
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v0

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    sub-double/2addr v0, v2

    double-to-float v0, v0

    const v1, 0x3d4ccccd    # 0.05f

    mul-float/2addr v0, v1

    iput v0, p0, Lfr/testudo/spacecorsair/mod/ModWreck;->spinSpeed:F

    .line 472
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

    .line 473
    invoke-static {p3}, Lfr/testudo/spacecorsair/mod/ModWreck;->massFor(F)F

    move-result v0

    iput v0, p0, Lfr/testudo/spacecorsair/mod/ModWreck;->mass:F

    .line 474
    const/high16 v0, 0x43960000    # 300.0f

    iget v1, p1, Lfr/testudo/spacecorsair/business/Element;->maxLife:F

    const v2, 0x3e4ccccd    # 0.2f

    mul-float/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Lfr/testudo/spacecorsair/mod/ModWreck;->maxLife:F

    .line 475
    iget v0, p0, Lfr/testudo/spacecorsair/mod/ModWreck;->maxLife:F

    iput v0, p0, Lfr/testudo/spacecorsair/mod/ModWreck;->life:F

    .line 476
    iget v0, p1, Lfr/testudo/spacecorsair/business/Element;->level:I

    iput v0, p0, Lfr/testudo/spacecorsair/mod/ModWreck;->level:I

    .line 477
    invoke-virtual {p0}, Lfr/testudo/spacecorsair/mod/ModWreck;->updateSapCoords()V

    .line 478
    return-void
.end method

.method private static playerClass(Lfr/testudo/spacecorsair/business/player/PlayerShip;)I
    .registers 6

    .prologue
    const/4 v2, 0x3

    const/4 v1, 0x2

    const/4 v0, 0x1

    .line 359
    iget-object v3, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->shipSpec:Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;

    invoke-static {v3}, Lfr/testudo/spacecorsair/mod/ModShips;->hullFor(Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;)Lfr/testudo/spacecorsair/mod/ModShips$Hull;

    move-result-object v3

    .line 360
    if-eqz v3, :cond_15

    iget v3, v3, Lfr/testudo/spacecorsair/mod/ModShips$Hull;->cls:I

    .line 361
    :goto_d
    const/4 v4, 0x6

    if-eq v3, v4, :cond_13

    const/4 v4, 0x5

    if-ne v3, v4, :cond_1c

    :cond_13
    move v0, v2

    .line 363
    :cond_14
    :goto_14
    return v0

    .line 360
    :cond_15
    iget-object v3, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->shipSpec:Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;

    invoke-static {v3}, Lfr/testudo/spacecorsair/mod/ModShips;->originalClass(Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;)I

    move-result v3

    goto :goto_d

    .line 362
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

    .line 363
    :cond_28
    if-eq v3, v0, :cond_14

    const/4 v0, 0x0

    goto :goto_14
.end method

.method static segHit(FFFFFFF)F
    .registers 16

    .prologue
    const/high16 v8, 0x40000000    # 2.0f

    const/high16 v1, -0x40800000    # -1.0f

    const/4 v2, 0x0

    .line 208
    sub-float v0, p2, p0

    sub-float v3, p3, p1

    sub-float v4, p0, p4

    sub-float v5, p1, p5

    .line 209
    mul-float v6, v0, v0

    mul-float v7, v3, v3

    add-float/2addr v6, v7

    mul-float/2addr v0, v4

    mul-float/2addr v3, v5

    add-float/2addr v0, v3

    mul-float/2addr v0, v8

    mul-float v3, v4, v4

    mul-float v4, v5, v5

    add-float/2addr v3, v4

    mul-float v4, p6, p6

    sub-float/2addr v3, v4

    .line 210
    cmpg-float v4, v3, v2

    if-gtz v4, :cond_24

    move v1, v2

    .line 215
    :cond_23
    :goto_23
    return v1

    .line 211
    :cond_24
    cmpl-float v4, v6, v2

    if-eqz v4, :cond_23

    .line 212
    mul-float v4, v0, v0

    const/high16 v5, 0x40800000    # 4.0f

    mul-float/2addr v5, v6

    mul-float/2addr v3, v5

    sub-float v3, v4, v3

    .line 213
    cmpg-float v4, v3, v2

    if-ltz v4, :cond_23

    .line 214
    neg-float v0, v0

    float-to-double v4, v3

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    double-to-float v3, v4

    sub-float/2addr v0, v3

    mul-float v3, v8, v6

    div-float/2addr v0, v3

    .line 215
    cmpl-float v2, v0, v2

    if-ltz v2, :cond_4b

    const/high16 v2, 0x3f800000    # 1.0f

    cmpg-float v2, v0, v2

    if-gtz v2, :cond_4b

    :goto_49
    move v1, v0

    goto :goto_23

    :cond_4b
    move v0, v1

    goto :goto_49
.end method

.method static sizeClass(Lfr/testudo/spacecorsair/business/Element;)I
    .registers 2

    .prologue
    .line 346
    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModTitan;->isTitanClass(Lfr/testudo/spacecorsair/business/Element;)Z

    move-result v0

    if-nez v0, :cond_c

    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModCapitals;->cap(Ljava/lang/Object;)Lfr/testudo/spacecorsair/mod/ModCapitals$Cap;

    move-result-object v0

    if-eqz v0, :cond_e

    :cond_c
    const/4 v0, 0x3

    .line 347
    :goto_d
    return v0

    :cond_e
    invoke-virtual {p0}, Lfr/testudo/spacecorsair/business/Element;->getPhysicDimension()Lfr/testudo/spacecorsair/engine/Vector2;

    move-result-object v0

    if-nez v0, :cond_1a

    const/4 v0, 0x0

    :goto_15
    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModWreck;->sizeClassOf(F)I

    move-result v0

    goto :goto_d

    :cond_1a
    invoke-virtual {p0}, Lfr/testudo/spacecorsair/business/Element;->getPhysicDimension()Lfr/testudo/spacecorsair/engine/Vector2;

    move-result-object v0

    iget v0, v0, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    goto :goto_15
.end method

.method public static sizeClassOf(F)I
    .registers 2

    .prologue
    .line 352
    const/high16 v0, 0x428c0000    # 70.0f

    cmpg-float v0, p0, v0

    if-gez v0, :cond_8

    const/4 v0, 0x0

    .line 355
    :goto_7
    return v0

    .line 353
    :cond_8
    const/high16 v0, 0x43110000    # 145.0f

    cmpg-float v0, p0, v0

    if-gez v0, :cond_10

    const/4 v0, 0x1

    goto :goto_7

    .line 354
    :cond_10
    const/high16 v0, 0x43aa0000    # 340.0f

    cmpg-float v0, p0, v0

    if-gez v0, :cond_18

    const/4 v0, 0x2

    goto :goto_7

    .line 355
    :cond_18
    const/4 v0, 0x3

    goto :goto_7
.end method

.method static spores(Lfr/testudo/spacecorsair/business/Element;Lfr/testudo/spacecorsair/display/Drawable;)V
    .registers 15

    .prologue
    .line 492
    invoke-static {p1}, Lfr/testudo/spacecorsair/mod/ModLive;->sizeOf(Lfr/testudo/spacecorsair/display/Drawable;)F

    move-result v12

    .line 493
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

    .line 494
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

    .line 495
    return-void
.end method

.method private vanish()V
    .registers 2

    .prologue
    .line 229
    iget-boolean v0, p0, Lfr/testudo/spacecorsair/mod/ModWreck;->removed:Z

    if-eqz v0, :cond_5

    .line 234
    :goto_4
    return-void

    .line 230
    :cond_5
    const/4 v0, 0x1

    iput-boolean v0, p0, Lfr/testudo/spacecorsair/mod/ModWreck;->removed:Z

    .line 231
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModWreck;->live:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 232
    iget-boolean v0, p0, Lfr/testudo/spacecorsair/mod/ModWreck;->visualOnly:Z

    if-eqz v0, :cond_1d

    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/Game;->currentLevel:Lfr/testudo/spacecorsair/game/levels/Level;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/levels/Level;->toDeleteDrawOnly:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 233
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

    .line 221
    instance-of v0, p1, Lfr/testudo/spacecorsair/business/projectiles/Projectile;

    if-nez v0, :cond_c

    invoke-super {p0, p1, p2}, Lfr/testudo/spacecorsair/business/Element;->applyRebound(Lfr/testudo/spacecorsair/business/Element;I)F

    move-result v0

    .line 225
    :goto_b
    return v0

    .line 222
    :cond_c
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModWreck;->speed:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v1, v0, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModWreck;->speed:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v2, v0, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    .line 223
    invoke-super {p0, p1, p2}, Lfr/testudo/spacecorsair/business/Element;->applyRebound(Lfr/testudo/spacecorsair/business/Element;I)F

    move-result v0

    .line 224
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
    .registers 14

    .prologue
    const-wide/16 v2, 0x0

    const/4 v10, 0x1

    const/4 v9, 0x0

    const/high16 v8, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    .line 121
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModWreck;->speed:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v0, v0, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    iget v1, p0, Lfr/testudo/spacecorsair/mod/ModWreck;->lastVx:F

    sub-float v5, v0, v1

    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModWreck;->speed:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v0, v0, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    iget v1, p0, Lfr/testudo/spacecorsair/mod/ModWreck;->lastVy:F

    sub-float v6, v0, v1

    .line 122
    cmpl-float v0, v5, v4

    if-nez v0, :cond_1f

    cmpl-float v0, v6, v4

    if-eqz v0, :cond_109

    :cond_1f
    move-wide v0, v2

    :goto_20
    iput-wide v0, p0, Lfr/testudo/spacecorsair/mod/ModWreck;->hitAge:J

    .line 124
    iget v0, p0, Lfr/testudo/spacecorsair/mod/ModWreck;->blastVx:F

    invoke-static {v5, v0}, Lfr/testudo/spacecorsair/mod/ModWreck;->damp(FF)F

    move-result v1

    iget v0, p0, Lfr/testudo/spacecorsair/mod/ModWreck;->blastVy:F

    invoke-static {v6, v0}, Lfr/testudo/spacecorsair/mod/ModWreck;->damp(FF)F

    move-result v5

    .line 126
    iget v0, p0, Lfr/testudo/spacecorsair/mod/ModWreck;->baseVx:F

    iget v6, p0, Lfr/testudo/spacecorsair/mod/ModWreck;->baseVx:F

    mul-float/2addr v0, v6

    iget v6, p0, Lfr/testudo/spacecorsair/mod/ModWreck;->baseVy:F

    iget v7, p0, Lfr/testudo/spacecorsair/mod/ModWreck;->baseVy:F

    mul-float/2addr v6, v7

    add-float/2addr v0, v6

    .line 127
    cmpl-float v6, v0, v4

    if-lez v6, :cond_10e

    iget v6, p0, Lfr/testudo/spacecorsair/mod/ModWreck;->baseVx:F

    mul-float/2addr v6, v1

    iget v7, p0, Lfr/testudo/spacecorsair/mod/ModWreck;->baseVy:F

    mul-float/2addr v7, v5

    add-float/2addr v6, v7

    div-float v0, v6, v0

    .line 128
    :goto_46
    cmpg-float v6, v0, v4

    if-gez v6, :cond_5d

    .line 129
    const/high16 v6, -0x40800000    # -1.0f

    invoke-static {v0, v6}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 130
    iget v6, p0, Lfr/testudo/spacecorsair/mod/ModWreck;->baseVx:F

    add-float v7, v8, v0

    mul-float/2addr v6, v7

    iput v6, p0, Lfr/testudo/spacecorsair/mod/ModWreck;->baseVx:F

    .line 131
    iget v6, p0, Lfr/testudo/spacecorsair/mod/ModWreck;->baseVy:F

    add-float/2addr v0, v8

    mul-float/2addr v0, v6

    iput v0, p0, Lfr/testudo/spacecorsair/mod/ModWreck;->baseVy:F

    .line 133
    :cond_5d
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModWreck;->hit:[F

    iget v6, p0, Lfr/testudo/spacecorsair/mod/ModWreck;->lastVx:F

    add-float/2addr v1, v6

    iget v6, p0, Lfr/testudo/spacecorsair/mod/ModWreck;->baseVx:F

    sub-float/2addr v1, v6

    aput v1, v0, v9

    .line 134
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModWreck;->hit:[F

    iget v1, p0, Lfr/testudo/spacecorsair/mod/ModWreck;->lastVy:F

    add-float/2addr v1, v5

    iget v5, p0, Lfr/testudo/spacecorsair/mod/ModWreck;->baseVy:F

    sub-float/2addr v1, v5

    aput v1, v0, v10

    .line 135
    iput v4, p0, Lfr/testudo/spacecorsair/mod/ModWreck;->blastVy:F

    iput v4, p0, Lfr/testudo/spacecorsair/mod/ModWreck;->blastVx:F

    .line 136
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModWreck;->hit:[F

    iget-wide v4, p0, Lfr/testudo/spacecorsair/mod/ModWreck;->hitAge:J

    invoke-static {v0, p1, p2, v4, v5}, Lfr/testudo/spacecorsair/mod/ModWreck;->brake([FJJ)V

    .line 137
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModWreck;->speed:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v1, p0, Lfr/testudo/spacecorsair/mod/ModWreck;->baseVx:F

    iget-object v4, p0, Lfr/testudo/spacecorsair/mod/ModWreck;->hit:[F

    aget v4, v4, v9

    add-float/2addr v1, v4

    iget v4, p0, Lfr/testudo/spacecorsair/mod/ModWreck;->baseVy:F

    iget-object v5, p0, Lfr/testudo/spacecorsair/mod/ModWreck;->hit:[F

    aget v5, v5, v10

    add-float/2addr v4, v5

    invoke-virtual {v0, v1, v4}, Lfr/testudo/spacecorsair/engine/Vector2;->set(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 138
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModWreck;->speed:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v0, v0, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    iget-object v1, p0, Lfr/testudo/spacecorsair/mod/ModWreck;->speed:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v1, v1, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    mul-float/2addr v0, v1

    iget-object v1, p0, Lfr/testudo/spacecorsair/mod/ModWreck;->speed:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v1, v1, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    iget-object v4, p0, Lfr/testudo/spacecorsair/mod/ModWreck;->speed:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v4, v4, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    mul-float/2addr v1, v4

    add-float/2addr v0, v1

    .line 139
    const v1, 0x3e23d70b    # 0.16000001f

    cmpl-float v1, v0, v1

    if-lez v1, :cond_c3

    .line 140
    const v1, 0x3ecccccd    # 0.4f

    float-to-double v4, v0

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    double-to-float v0, v4

    div-float v0, v1, v0

    .line 141
    iget-object v1, p0, Lfr/testudo/spacecorsair/mod/ModWreck;->speed:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v1, v0}, Lfr/testudo/spacecorsair/engine/Vector2;->multiply(F)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 142
    iget v1, p0, Lfr/testudo/spacecorsair/mod/ModWreck;->baseVx:F

    mul-float/2addr v1, v0

    iput v1, p0, Lfr/testudo/spacecorsair/mod/ModWreck;->baseVx:F

    .line 143
    iget v1, p0, Lfr/testudo/spacecorsair/mod/ModWreck;->baseVy:F

    mul-float/2addr v0, v1

    iput v0, p0, Lfr/testudo/spacecorsair/mod/ModWreck;->baseVy:F

    .line 145
    :cond_c3
    invoke-super {p0, p1, p2}, Lfr/testudo/spacecorsair/business/Element;->doPhysic(J)V

    .line 147
    iget v0, p0, Lfr/testudo/spacecorsair/mod/ModWreck;->speedDeperditionfactor:F

    iget v1, p0, Lfr/testudo/spacecorsair/mod/ModWreck;->speedDeperditionfactor:F

    sub-float/2addr v1, v8

    long-to-float v4, p1

    mul-float/2addr v1, v4

    const/high16 v4, 0x43200000    # 160.0f

    div-float/2addr v1, v4

    add-float/2addr v0, v1

    .line 148
    iget v1, p0, Lfr/testudo/spacecorsair/mod/ModWreck;->baseVx:F

    div-float/2addr v1, v0

    iput v1, p0, Lfr/testudo/spacecorsair/mod/ModWreck;->baseVx:F

    .line 149
    iget v1, p0, Lfr/testudo/spacecorsair/mod/ModWreck;->baseVy:F

    div-float v0, v1, v0

    iput v0, p0, Lfr/testudo/spacecorsair/mod/ModWreck;->baseVy:F

    .line 150
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModWreck;->speed:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v0, v0, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    iput v0, p0, Lfr/testudo/spacecorsair/mod/ModWreck;->lastVx:F

    .line 151
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModWreck;->speed:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v0, v0, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    iput v0, p0, Lfr/testudo/spacecorsair/mod/ModWreck;->lastVy:F

    .line 152
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v4, p0, Lfr/testudo/spacecorsair/mod/ModWreck;->born:J

    sub-long/2addr v0, v4

    .line 153
    iget-boolean v4, p0, Lfr/testudo/spacecorsair/mod/ModWreck;->visualOnly:Z

    if-eqz v4, :cond_f9

    iget-wide v4, p0, Lfr/testudo/spacecorsair/mod/ModWreck;->lifeMs:J

    cmp-long v4, v0, v4

    if-gtz v4, :cond_105

    :cond_f9
    iget-wide v4, p0, Lfr/testudo/spacecorsair/mod/ModWreck;->fadeMs:J

    cmp-long v2, v4, v2

    if-lez v2, :cond_108

    iget-wide v2, p0, Lfr/testudo/spacecorsair/mod/ModWreck;->fadeMs:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_108

    .line 154
    :cond_105
    invoke-direct {p0}, Lfr/testudo/spacecorsair/mod/ModWreck;->vanish()V

    .line 156
    :cond_108
    return-void

    .line 122
    :cond_109
    iget-wide v0, p0, Lfr/testudo/spacecorsair/mod/ModWreck;->hitAge:J

    add-long/2addr v0, p1

    goto/16 :goto_20

    :cond_10e
    move v0, v4

    .line 127
    goto/16 :goto_46
.end method

.method public getDimToTestIfVisibleOnScreen()Lfr/testudo/spacecorsair/engine/Vector2;
    .registers 3

    .prologue
    .line 95
    iget v0, p0, Lfr/testudo/spacecorsair/mod/ModWreck;->w:F

    iget v1, p0, Lfr/testudo/spacecorsair/mod/ModWreck;->h:F

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 96
    iget-object v1, p0, Lfr/testudo/spacecorsair/mod/ModWreck;->vis:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v1, v0, v0}, Lfr/testudo/spacecorsair/engine/Vector2;->set(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 97
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModWreck;->vis:Lfr/testudo/spacecorsair/engine/Vector2;

    return-object v0
.end method

.method public getDrawableObject()Lfr/testudo/spacecorsair/display/Drawable;
    .registers 3

    .prologue
    .line 72
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModWreck;->tex:Lfr/testudo/spacecorsair/display/Texture;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModWreck;->tex:Lfr/testudo/spacecorsair/display/Texture;

    .line 73
    :goto_6
    if-nez v0, :cond_11

    const/4 v0, 0x0

    .line 79
    :goto_9
    return-object v0

    .line 72
    :cond_a
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModWreck;->art:Ljava/lang/String;

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModArt;->ready(Ljava/lang/String;)Lfr/testudo/spacecorsair/display/Texture;

    move-result-object v0

    goto :goto_6

    .line 74
    :cond_11
    iget-object v1, p0, Lfr/testudo/spacecorsair/mod/ModWreck;->spr:Lfr/testudo/spacecorsair/mod/ModFx$Sprite;

    iput-object v0, v1, Lfr/testudo/spacecorsair/mod/ModFx$Sprite;->myTexture:Lfr/testudo/spacecorsair/display/Texture;

    .line 75
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModWreck;->spr:Lfr/testudo/spacecorsair/mod/ModFx$Sprite;

    iget v1, p0, Lfr/testudo/spacecorsair/mod/ModWreck;->w:F

    iput v1, v0, Lfr/testudo/spacecorsair/mod/ModFx$Sprite;->w:F

    .line 76
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModWreck;->spr:Lfr/testudo/spacecorsair/mod/ModFx$Sprite;

    iget v1, p0, Lfr/testudo/spacecorsair/mod/ModWreck;->h:F

    iput v1, v0, Lfr/testudo/spacecorsair/mod/ModFx$Sprite;->h:F

    .line 77
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

    .line 78
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModWreck;->spr:Lfr/testudo/spacecorsair/mod/ModFx$Sprite;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lfr/testudo/spacecorsair/mod/ModFx$Sprite;->additive:Z

    .line 79
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModWreck;->spr:Lfr/testudo/spacecorsair/mod/ModFx$Sprite;

    goto :goto_9
.end method

.method public getMiniDrawableObject()Lfr/testudo/spacecorsair/display/Drawable;
    .registers 2

    .prologue
    .line 84
    const/4 v0, 0x0

    return-object v0
.end method

.method public getPhysicDimension()Lfr/testudo/spacecorsair/engine/Vector2;
    .registers 2

    .prologue
    .line 89
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModWreck;->phys:Lfr/testudo/spacecorsair/engine/Vector2;

    return-object v0
.end method

.method public isColidable()Z
    .registers 2

    .prologue
    .line 102
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
    .line 317
    iget-boolean v0, p0, Lfr/testudo/spacecorsair/mod/ModWreck;->removed:Z

    if-eqz v0, :cond_5

    .line 331
    :goto_4
    return-void

    .line 319
    :cond_5
    :try_start_5
    iget v0, p0, Lfr/testudo/spacecorsair/mod/ModWreck;->w:F

    iget v1, p0, Lfr/testudo/spacecorsair/mod/ModWreck;->h:F

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v12

    .line 320
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

    .line 321
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModWreck;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget-object v1, p0, Lfr/testudo/spacecorsair/mod/ModWreck;->speed:Lfr/testudo/spacecorsair/engine/Vector2;

    const/4 v2, 0x6

    invoke-static {v0, v1, v12, v2}, Lfr/testudo/spacecorsair/mod/ModWreck;->debris(Lfr/testudo/spacecorsair/engine/Vector2;Lfr/testudo/spacecorsair/engine/Vector2;FI)V

    .line 322
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->soundManager:Lfr/testudo/spacecorsair/engine/SoundManager;

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/engine/SoundManager;->playRandomExplode()V

    .line 323
    if-eqz p1, :cond_40

    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModLoot;->fromWreck(Lfr/testudo/spacecorsair/mod/ModWreck;)V

    .line 324
    :cond_40
    iget-boolean v0, p0, Lfr/testudo/spacecorsair/mod/ModWreck;->derelict:Z

    if-eqz v0, :cond_47

    invoke-static {p0, p1}, Lfr/testudo/spacecorsair/mod/ModDerelict;->onPieceDestroyed(Lfr/testudo/spacecorsair/mod/ModWreck;Z)V

    .line 325
    :cond_47
    iget v0, p0, Lfr/testudo/spacecorsair/mod/ModWreck;->pieceIdx:I

    if-ltz v0, :cond_56

    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModWreck;->lootKey:Ljava/lang/String;

    if-eqz v0, :cond_56

    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModWreck;->lootKey:Ljava/lang/String;

    iget v1, p0, Lfr/testudo/spacecorsair/mod/ModWreck;->pieceIdx:I

    invoke-static {v0, v1}, Lfr/testudo/spacecorsair/mod/ModSector;->pieceShot(Ljava/lang/String;I)V
    :try_end_56
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_56} :catch_60

    .line 329
    :cond_56
    :goto_56
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModWreck;->live:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 330
    const/4 v0, 0x0

    invoke-super {p0, v0}, Lfr/testudo/spacecorsair/business/Element;->onDestroyed(Z)V

    goto :goto_4

    .line 326
    :catch_60
    move-exception v0

    goto :goto_56
.end method

.method public registerYourselfToDrawQueue()V
    .registers 25

    .prologue
    .line 240
    invoke-virtual/range {p0 .. p0}, Lfr/testudo/spacecorsair/mod/ModWreck;->getDrawableObject()Lfr/testudo/spacecorsair/display/Drawable;

    move-result-object v21

    .line 241
    if-nez v21, :cond_7

    .line 299
    :cond_6
    :goto_6
    return-void

    .line 242
    :cond_7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v22

    .line 243
    const/high16 v8, 0x3f800000    # 1.0f

    .line 244
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lfr/testudo/spacecorsair/mod/ModWreck;->visualOnly:Z

    if-eqz v2, :cond_1cc

    move-object/from16 v0, p0

    iget-wide v2, v0, Lfr/testudo/spacecorsair/mod/ModWreck;->lifeMs:J

    .line 245
    :goto_17
    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-lez v4, :cond_43

    .line 246
    move-object/from16 v0, p0

    iget-wide v4, v0, Lfr/testudo/spacecorsair/mod/ModWreck;->born:J

    sub-long v4, v22, v4

    long-to-float v4, v4

    const-wide/16 v6, 0x1

    invoke-static {v6, v7, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    long-to-float v2, v2

    div-float v2, v4, v2

    .line 247
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

    .line 249
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

    .line 250
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

    .line 251
    :goto_71
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lfr/testudo/spacecorsair/mod/ModWreck;->preDrawn:Z

    if-eqz v2, :cond_1e0

    const/high16 v9, 0x3f800000    # 1.0f

    .line 252
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

    .line 253
    if-eqz v12, :cond_277

    .line 255
    move-object/from16 v0, p0

    iget-object v2, v0, Lfr/testudo/spacecorsair/mod/ModWreck;->burnSpr:Lfr/testudo/spacecorsair/mod/ModFx$Sprite;

    move-object/from16 v0, p0

    iget-object v3, v0, Lfr/testudo/spacecorsair/mod/ModWreck;->spr:Lfr/testudo/spacecorsair/mod/ModFx$Sprite;

    iget-object v3, v3, Lfr/testudo/spacecorsair/mod/ModFx$Sprite;->myTexture:Lfr/testudo/spacecorsair/display/Texture;

    iput-object v3, v2, Lfr/testudo/spacecorsair/mod/ModFx$Sprite;->myTexture:Lfr/testudo/spacecorsair/display/Texture;

    .line 256
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

    .line 257
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

    .line 258
    move-object/from16 v0, p0

    iget-object v2, v0, Lfr/testudo/spacecorsair/mod/ModWreck;->burnSpr:Lfr/testudo/spacecorsair/mod/ModFx$Sprite;

    const/4 v3, 0x0

    iput-boolean v3, v2, Lfr/testudo/spacecorsair/mod/ModFx$Sprite;->additive:Z

    .line 259
    move-object/from16 v0, p0

    iget-object v2, v0, Lfr/testudo/spacecorsair/mod/ModWreck;->burnSpr:Lfr/testudo/spacecorsair/mod/ModFx$Sprite;

    const/4 v3, 0x1

    iput-boolean v3, v2, Lfr/testudo/spacecorsair/mod/ModFx$Sprite;->flat:Z

    .line 260
    move-object/from16 v0, p0

    iget-object v2, v0, Lfr/testudo/spacecorsair/mod/ModWreck;->burnSpr:Lfr/testudo/spacecorsair/mod/ModFx$Sprite;

    move-object/from16 v0, p0

    iget-object v3, v0, Lfr/testudo/spacecorsair/mod/ModWreck;->burnA:[F

    iput-object v3, v2, Lfr/testudo/spacecorsair/mod/ModFx$Sprite;->edgeA:[F

    .line 261
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

    .line 262
    move-object/from16 v0, p0

    iget-object v2, v0, Lfr/testudo/spacecorsair/mod/ModWreck;->scorch:[F

    if-nez v2, :cond_211

    .line 263
    const/4 v2, 0x4

    new-array v2, v2, [F

    move-object/from16 v0, p0

    iput-object v2, v0, Lfr/testudo/spacecorsair/mod/ModWreck;->scorch:[F

    .line 264
    const/4 v2, 0x0

    move v6, v2

    :goto_12a
    const/4 v2, 0x2

    if-ge v6, v2, :cond_211

    .line 265
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

    .line 266
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

    .line 267
    :goto_151
    const v4, 0x3ecccccd    # 0.4f

    const v3, 0x3f19999a    # 0.6f

    .line 268
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

    .line 269
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

    .line 270
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

    .line 271
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

    .line 264
    add-int/lit8 v2, v6, 0x1

    move v6, v2

    goto/16 :goto_12a

    .line 244
    :cond_1cc
    move-object/from16 v0, p0

    iget-wide v2, v0, Lfr/testudo/spacecorsair/mod/ModWreck;->fadeMs:J

    goto/16 :goto_17

    .line 247
    :cond_1d2
    const/high16 v2, 0x3f800000    # 1.0f

    goto/16 :goto_42

    .line 249
    :cond_1d6
    const/high16 v2, 0x3f800000    # 1.0f

    move/from16 v20, v2

    goto/16 :goto_57

    .line 250
    :cond_1dc
    const/4 v2, 0x0

    move v12, v2

    goto/16 :goto_71

    .line 251
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

    .line 265
    :cond_1f5
    const/4 v2, 0x0

    move v5, v2

    goto/16 :goto_13d

    .line 266
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

    .line 270
    :cond_20d
    const v3, 0x3ec28f5c    # 0.38f

    goto :goto_1aa

    .line 274
    :cond_211
    const/4 v2, 0x0

    :goto_212
    const/4 v3, 0x2

    if-ge v2, v3, :cond_277

    .line 275
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

    .line 276
    move-object/from16 v0, p0

    iget v3, v0, Lfr/testudo/spacecorsair/mod/ModWreck;->scorchSize:F

    move-object/from16 v0, p0

    iget v4, v0, Lfr/testudo/spacecorsair/mod/ModWreck;->h:F

    const/high16 v5, 0x3f000000    # 0.5f

    mul-float/2addr v4, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F

    move-result v12

    .line 277
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

    .line 274
    add-int/lit8 v2, v2, 0x1

    goto :goto_212

    .line 281
    :cond_277
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lfr/testudo/spacecorsair/mod/ModWreck;->derelict:Z

    if-eqz v2, :cond_3f0

    const/high16 v7, 0x3e800000    # 0.25f

    .line 282
    :goto_27f
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lfr/testudo/spacecorsair/mod/ModWreck;->preDrawn:Z

    if-eqz v2, :cond_406

    const/4 v3, 0x0

    .line 283
    :goto_286
    if-eqz v3, :cond_2ca

    .line 284
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

    .line 285
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

    .line 288
    :cond_2ca
    move-object/from16 v0, p0

    iget-wide v2, v0, Lfr/testudo/spacecorsair/mod/ModWreck;->nextVent:J

    cmp-long v2, v22, v2

    if-lez v2, :cond_37d

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lfr/testudo/spacecorsair/mod/ModWreck;->derelict:Z

    if-nez v2, :cond_37d

    .line 289
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

    .line 290
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lfr/testudo/spacecorsair/mod/ModWreck;->cutTop:Z

    if-eqz v2, :cond_40e

    move-object/from16 v0, p0

    iget v2, v0, Lfr/testudo/spacecorsair/mod/ModWreck;->h:F

    neg-float v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    .line 291
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

    .line 292
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

    .line 293
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

    .line 295
    :cond_37d
    const/high16 v2, 0x3f000000    # 0.5f

    cmpg-float v2, v20, v2

    if-gez v2, :cond_6

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v2

    const-wide v4, 0x3faeb851eb851eb8L    # 0.06

    cmpg-double v2, v2, v4

    if-gez v2, :cond_6

    .line 296
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

    .line 297
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

    .line 281
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

    .line 282
    :cond_406
    const-string v2, "wreck_edge"

    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModArt;->ready(Ljava/lang/String;)Lfr/testudo/spacecorsair/display/Texture;

    move-result-object v3

    goto/16 :goto_286

    .line 290
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
