.class public Lfr/testudo/spacecorsair/engine/Camera;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final MAX_PINCH_VALUE:I = 0x1edc

.field public static final MAX_PINCH_VALUE_GALACTIC:I = 0x7d0

.field public static MINIDECAL:F = 0.0f

.field public static final MIN_PINCH_VALUE:I = 0x64

.field public static cameraSpeed:F = 0.0f

.field public static final decalSpeedFactor:F = 130.0f

.field public static final defaultGalaxyModeZoom:F = 1000.0f

.field public static final defaultMapModeZoom:F = 3000.0f

.field public static final minimumSpeedZDecal:F = 1.0f

.field public static final zommSpeed:I = 0x19

.field public static final zommSpeedGalaxy:I = 0xa


# instance fields
.field public centerPosition:Lfr/testudo/spacecorsair/engine/Vector2;

.field public curZDecal:F

.field public target:Lfr/testudo/spacecorsair/business/Element;

.field public targetZDecal:F


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 18
    const/4 v0, 0x0

    sput v0, Lfr/testudo/spacecorsair/engine/Camera;->MINIDECAL:F

    .line 19
    const v0, 0x3e4ccccd    # 0.2f

    sput v0, Lfr/testudo/spacecorsair/engine/Camera;->cameraSpeed:F

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    new-instance v0, Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-direct {v0, v1, v1}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>(FF)V

    iput-object v0, p0, Lfr/testudo/spacecorsair/engine/Camera;->centerPosition:Lfr/testudo/spacecorsair/engine/Vector2;

    .line 16
    iput v1, p0, Lfr/testudo/spacecorsair/engine/Camera;->targetZDecal:F

    .line 17
    iput v1, p0, Lfr/testudo/spacecorsair/engine/Camera;->curZDecal:F

    return-void
.end method


# virtual methods
.method public backToPlayerMapMode(Ljava/lang/Long;Z)Z
    .registers 7

    .prologue
    const/high16 v2, 0x3f800000    # 1.0f

    .line 87
    iget-object v0, p0, Lfr/testudo/spacecorsair/engine/Camera;->target:Lfr/testudo/spacecorsair/business/Element;

    iget-object v0, v0, Lfr/testudo/spacecorsair/business/Element;->speed:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/engine/Vector2;->length()F

    move-result v0

    .line 88
    cmpg-float v0, v0, v2

    if-gez v0, :cond_20

    .line 89
    sget v0, Lfr/testudo/spacecorsair/engine/Camera;->MINIDECAL:F

    iput v0, p0, Lfr/testudo/spacecorsair/engine/Camera;->targetZDecal:F

    .line 96
    :goto_12
    iget v0, p0, Lfr/testudo/spacecorsair/engine/Camera;->curZDecal:F

    iget v1, p0, Lfr/testudo/spacecorsair/engine/Camera;->targetZDecal:F

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_32

    .line 97
    iget v0, p0, Lfr/testudo/spacecorsair/engine/Camera;->targetZDecal:F

    iput v0, p0, Lfr/testudo/spacecorsair/engine/Camera;->curZDecal:F

    .line 98
    const/4 v0, 0x1

    .line 102
    :goto_1f
    return v0

    .line 92
    :cond_20
    sget v0, Lfr/testudo/spacecorsair/engine/Camera;->MINIDECAL:F

    iget-object v1, p0, Lfr/testudo/spacecorsair/engine/Camera;->target:Lfr/testudo/spacecorsair/business/Element;

    iget-object v1, v1, Lfr/testudo/spacecorsair/business/Element;->speed:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v1}, Lfr/testudo/spacecorsair/engine/Vector2;->length()F

    move-result v1

    sub-float/2addr v1, v2

    const/high16 v2, 0x43020000    # 130.0f

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p0, Lfr/testudo/spacecorsair/engine/Camera;->targetZDecal:F

    goto :goto_12

    .line 100
    :cond_32
    iget v1, p0, Lfr/testudo/spacecorsair/engine/Camera;->curZDecal:F

    sget v0, Lfr/testudo/spacecorsair/engine/Camera;->cameraSpeed:F

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    long-to-float v2, v2

    mul-float/2addr v2, v0

    if-eqz p2, :cond_48

    const/16 v0, 0xa

    :goto_40
    int-to-float v0, v0

    mul-float/2addr v0, v2

    sub-float v0, v1, v0

    iput v0, p0, Lfr/testudo/spacecorsair/engine/Camera;->curZDecal:F

    .line 102
    const/4 v0, 0x0

    goto :goto_1f

    .line 100
    :cond_48
    const/16 v0, 0x19

    goto :goto_40
.end method

.method public requestMapPinch(FZ)V
    .registers 7

    .prologue
    const/high16 v3, 0x42c80000    # 100.0f

    .line 115
    iget v0, p0, Lfr/testudo/spacecorsair/engine/Camera;->curZDecal:F

    add-float/2addr v0, p1

    iput v0, p0, Lfr/testudo/spacecorsair/engine/Camera;->curZDecal:F

    .line 117
    if-eqz p2, :cond_1e

    const/16 v0, 0x7d0

    .line 119
    :goto_b
    iget v1, p0, Lfr/testudo/spacecorsair/engine/Camera;->curZDecal:F

    int-to-float v2, v0

    cmpl-float v1, v1, v2

    if-lez v1, :cond_15

    .line 120
    int-to-float v0, v0

    iput v0, p0, Lfr/testudo/spacecorsair/engine/Camera;->curZDecal:F

    .line 125
    :cond_15
    iget v0, p0, Lfr/testudo/spacecorsair/engine/Camera;->curZDecal:F

    cmpg-float v0, v0, v3

    if-gez v0, :cond_1d

    .line 126
    iput v3, p0, Lfr/testudo/spacecorsair/engine/Camera;->curZDecal:F

    .line 129
    :cond_1d
    return-void

    .line 117
    :cond_1e
    const/16 v0, 0x1edc

    goto :goto_b
.end method

.method public setToMax()V
    .registers 3

    .prologue
    const/high16 v1, 0x43020000    # 130.0f

    .line 50
    sget v0, Lfr/testudo/spacecorsair/engine/Camera;->MINIDECAL:F

    add-float/2addr v0, v1

    iput v0, p0, Lfr/testudo/spacecorsair/engine/Camera;->curZDecal:F

    .line 51
    sget v0, Lfr/testudo/spacecorsair/engine/Camera;->MINIDECAL:F

    add-float/2addr v0, v1

    iput v0, p0, Lfr/testudo/spacecorsair/engine/Camera;->targetZDecal:F

    .line 52
    return-void
.end method

.method public snapToTarget(Ljava/lang/Long;)V
    .registers 10
    # v0 dt(float) v1 tz v2 tmp v3 tmp v4 step
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J
    move-result-wide v2
    long-to-float v0, v2

    iget-object v1, p0, Lfr/testudo/spacecorsair/engine/Camera;->target:Lfr/testudo/spacecorsair/business/Element;
    if-eqz v1, :after_target

    iget-object v2, v1, Lfr/testudo/spacecorsair/business/Element;->position:Lfr/testudo/spacecorsair/engine/Vector2;
    invoke-static {v2, v0}, Lfr/testudo/spacecorsair/mod/ModQol;->camCenter(Lfr/testudo/spacecorsair/engine/Vector2;F)Lfr/testudo/spacecorsair/engine/Vector2;
    move-result-object v2
    iput-object v2, p0, Lfr/testudo/spacecorsair/engine/Camera;->centerPosition:Lfr/testudo/spacecorsair/engine/Vector2;

    iget-object v2, v1, Lfr/testudo/spacecorsair/business/Element;->speed:Lfr/testudo/spacecorsair/engine/Vector2;
    invoke-virtual {v2}, Lfr/testudo/spacecorsair/engine/Vector2;->length()F
    move-result v2
    const/high16 v3, 0x3f800000    # 1.0f
    sub-float/2addr v2, v3
    const/4 v3, 0x0
    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F
    move-result v2
    const/high16 v3, 0x41400000    # 12.0f cap on speed contribution
    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F
    move-result v2
    const/high16 v3, 0x43020000    # 130.0f
    mul-float/2addr v2, v3
    sget v3, Lfr/testudo/spacecorsair/engine/Camera;->MINIDECAL:F
    add-float v1, v2, v3
    invoke-static {}, Lfr/testudo/spacecorsair/mod/Mod;->zoomBonus()F
    move-result v3
    add-float/2addr v1, v3

    # low-pass filter targetZDecal: k = min(1, dt/250)
    const/high16 v3, 0x437a0000    # 250.0f
    div-float v2, v0, v3
    const/high16 v3, 0x3f800000
    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F
    move-result v2
    iget v3, p0, Lfr/testudo/spacecorsair/engine/Camera;->targetZDecal:F
    sub-float/2addr v1, v3
    mul-float/2addr v1, v2
    add-float/2addr v3, v1
    iput v3, p0, Lfr/testudo/spacecorsair/engine/Camera;->targetZDecal:F

    :after_target
    iget v1, p0, Lfr/testudo/spacecorsair/engine/Camera;->curZDecal:F
    iget v2, p0, Lfr/testudo/spacecorsair/engine/Camera;->targetZDecal:F
    sub-float v3, v1, v2
    sget v4, Lfr/testudo/spacecorsair/engine/Camera;->cameraSpeed:F
    mul-float/2addr v4, v0
    const v5, 0x3f866666    # 1.05f
    mul-float v6, v4, v5
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F
    move-result v7
    cmpg-float v7, v7, v6
    if-lez v7, :snap
    const/4 v7, 0x0
    cmpl-float v7, v3, v7
    if-lez v7, :go_up
    sub-float/2addr v1, v6
    iput v1, p0, Lfr/testudo/spacecorsair/engine/Camera;->curZDecal:F
    return-void
    :go_up
    add-float/2addr v1, v4
    iput v1, p0, Lfr/testudo/spacecorsair/engine/Camera;->curZDecal:F
    return-void
    :snap
    iput v2, p0, Lfr/testudo/spacecorsair/engine/Camera;->curZDecal:F
    return-void
.end method

.method public snapToTargetMapGalaxyMode(Ljava/lang/Long;)Z
    .registers 6

    .prologue
    const/high16 v1, 0x447a0000    # 1000.0f

    .line 72
    iget v0, p0, Lfr/testudo/spacecorsair/engine/Camera;->curZDecal:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_c

    .line 73
    iput v1, p0, Lfr/testudo/spacecorsair/engine/Camera;->curZDecal:F

    .line 74
    const/4 v0, 0x1

    .line 78
    :goto_b
    return v0

    .line 76
    :cond_c
    iget v0, p0, Lfr/testudo/spacecorsair/engine/Camera;->curZDecal:F

    sget v1, Lfr/testudo/spacecorsair/engine/Camera;->cameraSpeed:F

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    long-to-float v2, v2

    mul-float/2addr v1, v2

    const/high16 v2, 0x41200000    # 10.0f

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p0, Lfr/testudo/spacecorsair/engine/Camera;->curZDecal:F

    .line 78
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public snapToTargetMapMode(Ljava/lang/Long;)Z
    .registers 6

    .prologue
    const v1, 0x453b8000    # 3000.0f

    .line 61
    iget v0, p0, Lfr/testudo/spacecorsair/engine/Camera;->curZDecal:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_d

    .line 62
    iput v1, p0, Lfr/testudo/spacecorsair/engine/Camera;->curZDecal:F

    .line 63
    const/4 v0, 0x1

    .line 67
    :goto_c
    return v0

    .line 65
    :cond_d
    iget v0, p0, Lfr/testudo/spacecorsair/engine/Camera;->curZDecal:F

    sget v1, Lfr/testudo/spacecorsair/engine/Camera;->cameraSpeed:F

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    long-to-float v2, v2

    mul-float/2addr v1, v2

    const/high16 v2, 0x41c80000    # 25.0f

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p0, Lfr/testudo/spacecorsair/engine/Camera;->curZDecal:F

    .line 67
    const/4 v0, 0x0

    goto :goto_c
.end method
