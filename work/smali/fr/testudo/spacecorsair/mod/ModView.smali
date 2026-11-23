.class public final Lfr/testudo/spacecorsair/mod/ModView;
.super Ljava/lang/Object;
.source "ModView.java"


# static fields
.field static final INSIDE:F = 0.85f

.field private static at:J

.field private static halfH:F

.field private static halfW:F


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    const v0, 0x4e6e6b28    # 1.0E9f

    .line 20
    sput v0, Lfr/testudo/spacecorsair/mod/ModView;->halfW:F

    sput v0, Lfr/testudo/spacecorsair/mod/ModView;->halfH:F

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static defaultRadius()F
    .registers 5

    .prologue
    const/4 v4, 0x0

    .line 48
    :try_start_1
    sget v0, Lfr/testudo/spacecorsair/engine/GameRenderer;->fov_radians:F

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->tan(D)D

    move-result-wide v0

    double-to-float v0, v0

    .line 49
    sget v1, Lfr/testudo/spacecorsair/engine/Camera;->MINIDECAL:F

    const/4 v2, 0x0

    sget-object v3, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v3, v3, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->config:Lfr/testudo/spacecorsair/game/Config;

    iget v3, v3, Lfr/testudo/spacecorsair/game/Config;->defaultZoom:I

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    invoke-static {}, Lfr/testudo/spacecorsair/mod/Mod;->zoomBonus()F

    move-result v2

    add-float/2addr v1, v2

    .line 50
    sget v2, Lfr/testudo/spacecorsair/engine/GameRenderer;->camZ:F

    const/4 v3, 0x0

    invoke-static {v3, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    add-float/2addr v1, v2

    mul-float/2addr v1, v0

    .line 51
    cmpl-float v0, v0, v4

    if-lez v0, :cond_43

    const/high16 v0, 0x42c80000    # 100.0f

    cmpl-float v0, v1, v0

    if-lez v0, :cond_43

    const v0, 0x3e99999a    # 0.3f

    sget v2, Lfr/testudo/spacecorsair/engine/GameRenderer;->aspect:F

    invoke-static {v0, v2}, Ljava/lang/Math;->max(FF)F

    move-result v0

    mul-float/2addr v0, v1

    invoke-static {v1, v0}, Ljava/lang/Math;->min(FF)F
    :try_end_40
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_40} :catch_42

    move-result v0

    .line 55
    :goto_41
    return v0

    .line 52
    :catch_42
    move-exception v0

    .line 55
    :cond_43
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModView;->radius()F

    move-result v0

    const v1, 0x3f59999a    # 0.85f

    div-float/2addr v0, v1

    goto :goto_41
.end method

.method static outside(Lfr/testudo/spacecorsair/business/Element;)Z
    .registers 3

    .prologue
    .line 67
    if-eqz p0, :cond_d

    iget-object v0, p0, Lfr/testudo/spacecorsair/business/Element;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lfr/testudo/spacecorsair/mod/ModView;->outside(Lfr/testudo/spacecorsair/engine/Vector2;F)Z

    move-result v0

    if-eqz v0, :cond_d

    const/4 v0, 0x1

    :goto_c
    return v0

    :cond_d
    const/4 v0, 0x0

    goto :goto_c
.end method

.method static outside(Lfr/testudo/spacecorsair/engine/Vector2;F)Z
    .registers 7

    .prologue
    const v4, 0x3f59999a    # 0.85f

    const/4 v0, 0x0

    .line 60
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModView;->refresh()V

    .line 62
    :try_start_7
    sget-object v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v1, v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->camera:Lfr/testudo/spacecorsair/engine/Camera;

    iget-object v1, v1, Lfr/testudo/spacecorsair/engine/Camera;->centerPosition:Lfr/testudo/spacecorsair/engine/Vector2;
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_d} :catch_35

    .line 63
    if-nez v1, :cond_10

    .line 64
    :cond_f
    :goto_f
    return v0

    :cond_10
    iget v2, p0, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    iget v3, v1, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    sub-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    sget v3, Lfr/testudo/spacecorsair/mod/ModView;->halfW:F

    mul-float/2addr v3, v4

    sub-float/2addr v3, p1

    cmpl-float v2, v2, v3

    if-gtz v2, :cond_33

    iget v2, p0, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    iget v1, v1, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    sub-float v1, v2, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    sget v2, Lfr/testudo/spacecorsair/mod/ModView;->halfH:F

    mul-float/2addr v2, v4

    sub-float/2addr v2, p1

    cmpl-float v1, v1, v2

    if-lez v1, :cond_f

    :cond_33
    const/4 v0, 0x1

    goto :goto_f

    .line 62
    :catch_35
    move-exception v1

    goto :goto_f
.end method

.method static radius()F
    .registers 2

    .prologue
    .line 37
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModView;->refresh()V

    .line 38
    sget v0, Lfr/testudo/spacecorsair/mod/ModView;->halfW:F

    sget v1, Lfr/testudo/spacecorsair/mod/ModView;->halfH:F

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    const v1, 0x3f59999a    # 0.85f

    mul-float/2addr v0, v1

    return v0
.end method

.method private static refresh()V
    .registers 6

    .prologue
    .line 23
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 24
    sget-wide v2, Lfr/testudo/spacecorsair/mod/ModView;->at:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0xfa

    cmp-long v2, v2, v4

    if-gez v2, :cond_f

    .line 33
    :cond_e
    :goto_e
    return-void

    .line 25
    :cond_f
    sput-wide v0, Lfr/testudo/spacecorsair/mod/ModView;->at:J

    .line 27
    :try_start_11
    sget v0, Lfr/testudo/spacecorsair/engine/GameRenderer;->fov_radians:F

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->tan(D)D

    move-result-wide v0

    double-to-float v0, v0

    .line 28
    sget v1, Lfr/testudo/spacecorsair/engine/GameRenderer;->camZ:F

    sget-object v2, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v2, v2, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->camera:Lfr/testudo/spacecorsair/engine/Camera;

    iget v2, v2, Lfr/testudo/spacecorsair/engine/Camera;->curZDecal:F

    add-float/2addr v1, v2

    mul-float/2addr v1, v0

    .line 29
    const/4 v2, 0x0

    cmpl-float v0, v0, v2

    if-lez v0, :cond_e

    const/high16 v0, 0x42c80000    # 100.0f

    cmpl-float v0, v1, v0

    if-lez v0, :cond_e

    sput v1, Lfr/testudo/spacecorsair/mod/ModView;->halfH:F

    const v0, 0x3e99999a    # 0.3f

    sget v2, Lfr/testudo/spacecorsair/engine/GameRenderer;->aspect:F

    invoke-static {v0, v2}, Ljava/lang/Math;->max(FF)F

    move-result v0

    mul-float/2addr v0, v1

    sput v0, Lfr/testudo/spacecorsair/mod/ModView;->halfW:F
    :try_end_3f
    .catch Ljava/lang/Throwable; {:try_start_11 .. :try_end_3f} :catch_40

    goto :goto_e

    .line 30
    :catch_40
    move-exception v0

    .line 31
    const v0, 0x4e6e6b28    # 1.0E9f

    sput v0, Lfr/testudo/spacecorsair/mod/ModView;->halfH:F

    sput v0, Lfr/testudo/spacecorsair/mod/ModView;->halfW:F

    goto :goto_e
.end method
