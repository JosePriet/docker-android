.class public final Lfr/testudo/spacecorsair/engine/Vector2;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final VECTOR_128:Lfr/testudo/spacecorsair/engine/Vector2;

.field public static final VECTOR_16:Lfr/testudo/spacecorsair/engine/Vector2;

.field public static final VECTOR_2:Lfr/testudo/spacecorsair/engine/Vector2;

.field public static final VECTOR_256:Lfr/testudo/spacecorsair/engine/Vector2;

.field public static final VECTOR_32:Lfr/testudo/spacecorsair/engine/Vector2;

.field public static final VECTOR_4:Lfr/testudo/spacecorsair/engine/Vector2;

.field public static final VECTOR_512:Lfr/testudo/spacecorsair/engine/Vector2;

.field public static final VECTOR_64:Lfr/testudo/spacecorsair/engine/Vector2;

.field public static final VECTOR_8:Lfr/testudo/spacecorsair/engine/Vector2;

.field public static final ZERO:Lfr/testudo/spacecorsair/engine/Vector2;


# instance fields
.field public x:F

.field public y:F


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .prologue
    const/high16 v5, 0x41800000    # 16.0f

    const/high16 v4, 0x41000000    # 8.0f

    const/high16 v2, 0x40800000    # 4.0f

    const/high16 v1, 0x40000000    # 2.0f

    const/4 v3, 0x0

    .line 27
    new-instance v0, Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-direct {v0, v1, v1}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>(FF)V

    sput-object v0, Lfr/testudo/spacecorsair/engine/Vector2;->VECTOR_2:Lfr/testudo/spacecorsair/engine/Vector2;

    .line 28
    new-instance v0, Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-direct {v0, v2, v2}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>(FF)V

    sput-object v0, Lfr/testudo/spacecorsair/engine/Vector2;->VECTOR_4:Lfr/testudo/spacecorsair/engine/Vector2;

    .line 29
    new-instance v0, Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-direct {v0, v4, v4}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>(FF)V

    sput-object v0, Lfr/testudo/spacecorsair/engine/Vector2;->VECTOR_8:Lfr/testudo/spacecorsair/engine/Vector2;

    .line 30
    new-instance v0, Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-direct {v0, v5, v5}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>(FF)V

    sput-object v0, Lfr/testudo/spacecorsair/engine/Vector2;->VECTOR_16:Lfr/testudo/spacecorsair/engine/Vector2;

    .line 31
    new-instance v0, Lfr/testudo/spacecorsair/engine/Vector2;

    const/high16 v1, 0x42000000    # 32.0f

    const/high16 v2, 0x42000000    # 32.0f

    invoke-direct {v0, v1, v2}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>(FF)V

    sput-object v0, Lfr/testudo/spacecorsair/engine/Vector2;->VECTOR_32:Lfr/testudo/spacecorsair/engine/Vector2;

    .line 32
    new-instance v0, Lfr/testudo/spacecorsair/engine/Vector2;

    const/high16 v1, 0x42800000    # 64.0f

    const/high16 v2, 0x42800000    # 64.0f

    invoke-direct {v0, v1, v2}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>(FF)V

    sput-object v0, Lfr/testudo/spacecorsair/engine/Vector2;->VECTOR_64:Lfr/testudo/spacecorsair/engine/Vector2;

    .line 33
    new-instance v0, Lfr/testudo/spacecorsair/engine/Vector2;

    const/high16 v1, 0x43000000    # 128.0f

    const/high16 v2, 0x43000000    # 128.0f

    invoke-direct {v0, v1, v2}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>(FF)V

    sput-object v0, Lfr/testudo/spacecorsair/engine/Vector2;->VECTOR_128:Lfr/testudo/spacecorsair/engine/Vector2;

    .line 34
    new-instance v0, Lfr/testudo/spacecorsair/engine/Vector2;

    const/high16 v1, 0x43800000    # 256.0f

    const/high16 v2, 0x43800000    # 256.0f

    invoke-direct {v0, v1, v2}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>(FF)V

    sput-object v0, Lfr/testudo/spacecorsair/engine/Vector2;->VECTOR_256:Lfr/testudo/spacecorsair/engine/Vector2;

    .line 35
    new-instance v0, Lfr/testudo/spacecorsair/engine/Vector2;

    const/high16 v1, 0x44000000    # 512.0f

    const/high16 v2, 0x44000000    # 512.0f

    invoke-direct {v0, v1, v2}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>(FF)V

    sput-object v0, Lfr/testudo/spacecorsair/engine/Vector2;->VECTOR_512:Lfr/testudo/spacecorsair/engine/Vector2;

    .line 40
    new-instance v0, Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-direct {v0, v3, v3}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>(FF)V

    sput-object v0, Lfr/testudo/spacecorsair/engine/Vector2;->ZERO:Lfr/testudo/spacecorsair/engine/Vector2;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    return-void
.end method

.method public constructor <init>(FF)V
    .registers 3

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    invoke-virtual {p0, p1, p2}, Lfr/testudo/spacecorsair/engine/Vector2;->set(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 48
    return-void
.end method

.method public constructor <init>(Lfr/testudo/spacecorsair/engine/Vector2;)V
    .registers 2

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    invoke-virtual {p0, p1}, Lfr/testudo/spacecorsair/engine/Vector2;->set(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 52
    return-void
.end method


# virtual methods
.method public final add(FF)Lfr/testudo/spacecorsair/engine/Vector2;
    .registers 4

    .prologue
    .line 61
    iget v0, p0, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    add-float/2addr v0, p1

    iput v0, p0, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    .line 62
    iget v0, p0, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    add-float/2addr v0, p2

    iput v0, p0, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    .line 63
    return-object p0
.end method

.method public final add(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;
    .registers 4

    .prologue
    .line 55
    iget v0, p0, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    iget v1, p1, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    add-float/2addr v0, v1

    iput v0, p0, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    .line 56
    iget v0, p0, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    iget v1, p1, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    add-float/2addr v0, v1

    iput v0, p0, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    .line 57
    return-object p0
.end method

.method public final applyRotatation(D)Lfr/testudo/spacecorsair/engine/Vector2;
    .registers 12

    .prologue
    .line 193
    invoke-static {p1, p2}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    .line 194
    invoke-static {p1, p2}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    .line 196
    iget v4, p0, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    float-to-double v4, v4

    mul-double/2addr v4, v0

    iget v6, p0, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    float-to-double v6, v6

    mul-double/2addr v6, v2

    sub-double/2addr v4, v6

    .line 197
    iget v6, p0, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    float-to-double v6, v6

    mul-double/2addr v0, v6

    iget v6, p0, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    float-to-double v6, v6

    mul-double/2addr v2, v6

    add-double/2addr v0, v2

    .line 199
    double-to-float v2, v4

    iput v2, p0, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    .line 200
    double-to-float v0, v0

    iput v0, p0, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    .line 201
    return-object p0
.end method

.method public final copy()Lfr/testudo/spacecorsair/engine/Vector2;
    .registers 4

    .prologue
    .line 105
    new-instance v0, Lfr/testudo/spacecorsair/engine/Vector2;

    iget v1, p0, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    iget v2, p0, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    invoke-direct {v0, v1, v2}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>(FF)V

    return-object v0
.end method

.method public final copy2(Lfr/testudo/spacecorsair/engine/Vector2;)V
    .registers 3

    .prologue
    .line 109
    iget v0, p0, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    iput v0, p1, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    .line 110
    iget v0, p0, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    iput v0, p1, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    .line 111
    return-void
.end method

.method public final distance(Lfr/testudo/spacecorsair/engine/Vector2;)F
    .registers 3

    .prologue
    .line 142
    invoke-virtual {p0, p1}, Lfr/testudo/spacecorsair/engine/Vector2;->distance2(Lfr/testudo/spacecorsair/engine/Vector2;)F

    move-result v0

    invoke-static {v0}, Landroid/util/FloatMath;->sqrt(F)F

    move-result v0

    return v0
.end method

.method public final distance2(Lfr/testudo/spacecorsair/engine/Vector2;)F
    .registers 5

    .prologue
    .line 135
    iget v0, p0, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    iget v1, p1, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    sub-float/2addr v0, v1

    .line 136
    iget v1, p0, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    iget v2, p1, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    sub-float/2addr v1, v2

    .line 137
    mul-float/2addr v0, v0

    mul-float/2addr v1, v1

    add-float/2addr v0, v1

    return v0
.end method

.method public divide(F)Lfr/testudo/spacecorsair/engine/Vector2;
    .registers 3

    .prologue
    .line 84
    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_f

    .line 85
    iget v0, p0, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    div-float/2addr v0, p1

    iput v0, p0, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    .line 86
    iget v0, p0, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    div-float/2addr v0, p1

    iput v0, p0, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    .line 88
    :cond_f
    return-object p0
.end method

.method public final dot(Lfr/testudo/spacecorsair/engine/Vector2;)F
    .registers 5

    .prologue
    .line 123
    iget v0, p0, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    iget v1, p1, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    mul-float/2addr v0, v1

    iget v1, p0, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    iget v2, p1, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    return v0
.end method

.method public equals(Lfr/testudo/spacecorsair/engine/Vector2;)Z
    .registers 4

    .prologue
    .line 226
    iget v0, p0, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    iget v1, p1, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_12

    iget v0, p0, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    iget v1, p1, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_12

    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method public final flipHorizontal(F)V
    .registers 3

    .prologue
    .line 162
    iget v0, p0, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    sub-float v0, p1, v0

    iput v0, p0, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    .line 163
    return-void
.end method

.method public final flipVertical(F)V
    .registers 3

    .prologue
    .line 166
    iget v0, p0, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    sub-float v0, p1, v0

    iput v0, p0, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    .line 167
    return-void
.end method

.method public final getAngularInRad()D
    .registers 5

    .prologue
    .line 187
    iget v0, p0, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    float-to-double v0, v0

    iget v2, p0, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    float-to-double v2, v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    return-wide v0
.end method

.method public final getAngularWithInRad(Lfr/testudo/spacecorsair/engine/Vector2;)D
    .registers 6

    .prologue
    .line 170
    iget v0, p1, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    iget v1, p0, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    sub-float/2addr v0, v1

    .line 171
    iget v1, p1, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    iget v2, p0, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    sub-float/2addr v1, v2

    neg-float v1, v1

    .line 173
    float-to-double v2, v1

    float-to-double v0, v0

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    .line 175
    const-wide/16 v2, 0x0

    cmpg-double v2, v0, v2

    if-gez v2, :cond_1c

    .line 176
    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    .line 182
    :goto_1b
    return-wide v0

    .line 179
    :cond_1c
    const-wide v2, 0x401921fb54442d18L    # 6.283185307179586

    sub-double v0, v2, v0

    goto :goto_1b
.end method

.method public final getRotatedElement(D)Lfr/testudo/spacecorsair/engine/Vector2;
    .registers 12

    .prologue
    .line 205
    invoke-static {p1, p2}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    .line 206
    invoke-static {p1, p2}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    .line 208
    iget v4, p0, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    float-to-double v4, v4

    mul-double/2addr v4, v0

    iget v6, p0, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    float-to-double v6, v6

    mul-double/2addr v6, v2

    sub-double/2addr v4, v6

    .line 209
    iget v6, p0, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    float-to-double v6, v6

    mul-double/2addr v0, v6

    iget v6, p0, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    float-to-double v6, v6

    mul-double/2addr v2, v6

    add-double/2addr v0, v2

    .line 211
    new-instance v2, Lfr/testudo/spacecorsair/engine/Vector2;

    double-to-float v3, v4

    double-to-float v0, v0

    invoke-direct {v2, v3, v0}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>(FF)V

    return-object v2
.end method

.method public final length()F
    .registers 2

    .prologue
    .line 127
    invoke-virtual {p0}, Lfr/testudo/spacecorsair/engine/Vector2;->length2()F

    move-result v0

    invoke-static {v0}, Landroid/util/FloatMath;->sqrt(F)F

    move-result v0

    return v0
.end method

.method public final length2()F
    .registers 4

    .prologue
    .line 131
    iget v0, p0, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    iget v1, p0, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    mul-float/2addr v0, v1

    iget v1, p0, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    iget v2, p0, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    return v0
.end method

.method public final multiply(F)Lfr/testudo/spacecorsair/engine/Vector2;
    .registers 3

    .prologue
    .line 73
    iget v0, p0, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    mul-float/2addr v0, p1

    iput v0, p0, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    .line 74
    iget v0, p0, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    mul-float/2addr v0, p1

    iput v0, p0, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    .line 75
    return-object p0
.end method

.method public final multiply(Lfr/testudo/spacecorsair/engine/Vector2;)V
    .registers 4

    .prologue
    .line 79
    iget v0, p0, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    iget v1, p1, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    mul-float/2addr v0, v1

    iput v0, p0, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    .line 80
    iget v0, p0, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    iget v1, p1, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    mul-float/2addr v0, v1

    iput v0, p0, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    .line 81
    return-void
.end method

.method public final normalize()F
    .registers 3

    .prologue
    .line 146
    invoke-virtual {p0}, Lfr/testudo/spacecorsair/engine/Vector2;->length()F

    move-result v0

    .line 149
    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_13

    .line 150
    iget v1, p0, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    div-float/2addr v1, v0

    iput v1, p0, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    .line 151
    iget v1, p0, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    div-float/2addr v1, v0

    iput v1, p0, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    .line 154
    :cond_13
    return v0
.end method

.method public final set(FF)Lfr/testudo/spacecorsair/engine/Vector2;
    .registers 3

    .prologue
    .line 99
    iput p1, p0, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    .line 100
    iput p2, p0, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    .line 101
    return-object p0
.end method

.method public final set(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;
    .registers 3

    .prologue
    .line 93
    iget v0, p1, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    iput v0, p0, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    .line 94
    iget v0, p1, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    iput v0, p0, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    .line 95
    return-object p0
.end method

.method public final setSameAs(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;
    .registers 3

    .prologue
    .line 114
    if-eqz p1, :cond_a

    .line 115
    iget v0, p1, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    iput v0, p0, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    .line 116
    iget v0, p1, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    iput v0, p0, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    .line 118
    :cond_a
    return-object p0
.end method

.method public final subtract(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;
    .registers 4

    .prologue
    .line 67
    iget v0, p0, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    iget v1, p1, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    sub-float/2addr v0, v1

    iput v0, p0, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    .line 68
    iget v0, p0, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    iget v1, p1, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    sub-float/2addr v0, v1

    iput v0, p0, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    .line 69
    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 219
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "x:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " y:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final zero()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 158
    invoke-virtual {p0, v0, v0}, Lfr/testudo/spacecorsair/engine/Vector2;->set(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 159
    return-void
.end method
