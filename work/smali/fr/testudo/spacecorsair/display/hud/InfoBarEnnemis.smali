.class public Lfr/testudo/spacecorsair/display/hud/InfoBarEnnemis;
.super Lfr/testudo/spacecorsair/display/hud/InfoBar;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lfr/testudo/spacecorsair/engine/Vector2;II)V
    .registers 4

    .prologue
    .line 110
    invoke-direct {p0, p1, p2, p3}, Lfr/testudo/spacecorsair/display/hud/InfoBar;-><init>(Lfr/testudo/spacecorsair/engine/Vector2;II)V

    .line 111
    return-void
.end method

.method public static newBlue(Lfr/testudo/spacecorsair/engine/Vector2;II)Lfr/testudo/spacecorsair/display/hud/InfoBarEnnemis;
    .registers 6

    .prologue
    const/high16 v2, 0x3f800000    # 1.0f

    .line 136
    new-instance v0, Lfr/testudo/spacecorsair/display/hud/InfoBarEnnemis;

    invoke-direct {v0, p0, p1, p2}, Lfr/testudo/spacecorsair/display/hud/InfoBarEnnemis;-><init>(Lfr/testudo/spacecorsair/engine/Vector2;II)V

    .line 137
    iput v2, v0, Lfr/testudo/spacecorsair/display/hud/InfoBarEnnemis;->fillA:F

    .line 138
    const/4 v1, 0x0

    iput v1, v0, Lfr/testudo/spacecorsair/display/hud/InfoBarEnnemis;->fillR:F

    .line 139
    const v1, 0x3f147ae1    # 0.58f

    iput v1, v0, Lfr/testudo/spacecorsair/display/hud/InfoBarEnnemis;->fillG:F

    .line 140
    iput v2, v0, Lfr/testudo/spacecorsair/display/hud/InfoBarEnnemis;->fillB:F

    .line 141
    return-object v0
.end method

.method public static newGreen(Lfr/testudo/spacecorsair/engine/Vector2;II)Lfr/testudo/spacecorsair/display/hud/InfoBarEnnemis;
    .registers 6

    .prologue
    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    .line 126
    new-instance v0, Lfr/testudo/spacecorsair/display/hud/InfoBarEnnemis;

    invoke-direct {v0, p0, p1, p2}, Lfr/testudo/spacecorsair/display/hud/InfoBarEnnemis;-><init>(Lfr/testudo/spacecorsair/engine/Vector2;II)V

    .line 128
    iput v2, v0, Lfr/testudo/spacecorsair/display/hud/InfoBarEnnemis;->fillA:F

    .line 129
    iput v1, v0, Lfr/testudo/spacecorsair/display/hud/InfoBarEnnemis;->fillR:F

    .line 130
    iput v2, v0, Lfr/testudo/spacecorsair/display/hud/InfoBarEnnemis;->fillG:F

    .line 131
    iput v1, v0, Lfr/testudo/spacecorsair/display/hud/InfoBarEnnemis;->fillB:F

    .line 132
    return-object v0
.end method

.method public static newRed(Lfr/testudo/spacecorsair/engine/Vector2;II)Lfr/testudo/spacecorsair/display/hud/InfoBarEnnemis;
    .registers 6

    .prologue
    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    .line 116
    new-instance v0, Lfr/testudo/spacecorsair/display/hud/InfoBarEnnemis;

    invoke-direct {v0, p0, p1, p2}, Lfr/testudo/spacecorsair/display/hud/InfoBarEnnemis;-><init>(Lfr/testudo/spacecorsair/engine/Vector2;II)V

    .line 118
    iput v2, v0, Lfr/testudo/spacecorsair/display/hud/InfoBarEnnemis;->fillA:F

    .line 119
    iput v2, v0, Lfr/testudo/spacecorsair/display/hud/InfoBarEnnemis;->fillR:F

    .line 120
    iput v1, v0, Lfr/testudo/spacecorsair/display/hud/InfoBarEnnemis;->fillG:F

    .line 121
    iput v1, v0, Lfr/testudo/spacecorsair/display/hud/InfoBarEnnemis;->fillB:F

    .line 122
    return-object v0
.end method

.method public static newTransparentWhite(Lfr/testudo/spacecorsair/engine/Vector2;II)Lfr/testudo/spacecorsair/display/hud/InfoBarEnnemis;
    .registers 6

    .prologue
    const v2, 0x3eb33333    # 0.35f

    const/high16 v1, 0x3f800000    # 1.0f

    .line 145
    new-instance v0, Lfr/testudo/spacecorsair/display/hud/InfoBarEnnemis;

    invoke-direct {v0, p0, p1, p2}, Lfr/testudo/spacecorsair/display/hud/InfoBarEnnemis;-><init>(Lfr/testudo/spacecorsair/engine/Vector2;II)V

    .line 146
    iput v2, v0, Lfr/testudo/spacecorsair/display/hud/InfoBarEnnemis;->fillA:F

    .line 147
    iput v2, v0, Lfr/testudo/spacecorsair/display/hud/InfoBarEnnemis;->extA:F

    .line 148
    iput v1, v0, Lfr/testudo/spacecorsair/display/hud/InfoBarEnnemis;->fillR:F

    .line 149
    iput v1, v0, Lfr/testudo/spacecorsair/display/hud/InfoBarEnnemis;->fillG:F

    .line 150
    iput v1, v0, Lfr/testudo/spacecorsair/display/hud/InfoBarEnnemis;->fillB:F

    .line 151
    return-object v0
.end method


# virtual methods
.method public init(Lfr/testudo/spacecorsair/engine/Vector2;II)V
    .registers 10

    .prologue
    const/4 v5, 0x0

    const/high16 v1, 0x40000000    # 2.0f

    const/4 v4, 0x0

    .line 23
    iget-object v0, p0, Lfr/testudo/spacecorsair/display/hud/InfoBarEnnemis;->centerPosition:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v0, p1}, Lfr/testudo/spacecorsair/engine/Vector2;->setSameAs(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 24
    int-to-float v0, p2

    iput v0, p0, Lfr/testudo/spacecorsair/display/hud/InfoBarEnnemis;->witdh:F

    .line 25
    int-to-float v0, p3

    iput v0, p0, Lfr/testudo/spacecorsair/display/hud/InfoBarEnnemis;->height:F

    .line 26
    int-to-float v0, p3

    div-float/2addr v0, v1

    iput v0, p0, Lfr/testudo/spacecorsair/display/hud/InfoBarEnnemis;->demiHeight:F

    .line 27
    int-to-float v0, p2

    div-float/2addr v0, v1

    iput v0, p0, Lfr/testudo/spacecorsair/display/hud/InfoBarEnnemis;->demiWidth:F

    .line 29
    iget v0, p0, Lfr/testudo/spacecorsair/display/hud/InfoBarEnnemis;->demiWidth:F

    neg-float v0, v0

    iget v1, p1, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    add-float/2addr v0, v1

    iput v0, p0, Lfr/testudo/spacecorsair/display/hud/InfoBarEnnemis;->xPosition:F

    .line 30
    sget v0, Lfr/testudo/spacecorsair/engine/GameRenderer;->screenWidthY:I

    int-to-float v0, v0

    iget-object v1, p0, Lfr/testudo/spacecorsair/display/hud/InfoBarEnnemis;->centerPosition:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v1, v1, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    sub-float/2addr v0, v1

    iput v0, p0, Lfr/testudo/spacecorsair/display/hud/InfoBarEnnemis;->yPosition:F

    .line 33
    const/16 v0, 0xf

    new-array v0, v0, [F

    .line 34
    iget v1, p0, Lfr/testudo/spacecorsair/display/hud/InfoBarEnnemis;->demiWidth:F

    neg-float v1, v1

    iget v2, p1, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    add-float/2addr v1, v2

    aput v1, v0, v5

    .line 35
    const/4 v1, 0x1

    iget v2, p0, Lfr/testudo/spacecorsair/display/hud/InfoBarEnnemis;->demiHeight:F

    neg-float v2, v2

    iget-object v3, p0, Lfr/testudo/spacecorsair/display/hud/InfoBarEnnemis;->centerPosition:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v3, v3, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    sub-float/2addr v2, v3

    aput v2, v0, v1

    .line 37
    const/4 v1, 0x2

    aput v4, v0, v1

    .line 39
    const/4 v1, 0x3

    iget v2, p0, Lfr/testudo/spacecorsair/display/hud/InfoBarEnnemis;->demiWidth:F

    iget v3, p1, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    add-float/2addr v2, v3

    aput v2, v0, v1

    .line 40
    const/4 v1, 0x4

    iget v2, p0, Lfr/testudo/spacecorsair/display/hud/InfoBarEnnemis;->demiHeight:F

    neg-float v2, v2

    iget-object v3, p0, Lfr/testudo/spacecorsair/display/hud/InfoBarEnnemis;->centerPosition:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v3, v3, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    sub-float/2addr v2, v3

    aput v2, v0, v1

    .line 42
    const/4 v1, 0x5

    aput v4, v0, v1

    .line 44
    const/4 v1, 0x6

    iget v2, p0, Lfr/testudo/spacecorsair/display/hud/InfoBarEnnemis;->demiWidth:F

    iget v3, p1, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    add-float/2addr v2, v3

    aput v2, v0, v1

    .line 45
    const/4 v1, 0x7

    iget v2, p0, Lfr/testudo/spacecorsair/display/hud/InfoBarEnnemis;->demiHeight:F

    iget-object v3, p0, Lfr/testudo/spacecorsair/display/hud/InfoBarEnnemis;->centerPosition:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v3, v3, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    sub-float/2addr v2, v3

    aput v2, v0, v1

    .line 47
    const/16 v1, 0x8

    aput v4, v0, v1

    .line 49
    const/16 v1, 0x9

    iget v2, p0, Lfr/testudo/spacecorsair/display/hud/InfoBarEnnemis;->demiWidth:F

    neg-float v2, v2

    iget v3, p1, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    add-float/2addr v2, v3

    aput v2, v0, v1

    .line 50
    const/16 v1, 0xa

    iget v2, p0, Lfr/testudo/spacecorsair/display/hud/InfoBarEnnemis;->demiHeight:F

    iget-object v3, p0, Lfr/testudo/spacecorsair/display/hud/InfoBarEnnemis;->centerPosition:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v3, v3, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    sub-float/2addr v2, v3

    aput v2, v0, v1

    .line 52
    const/16 v1, 0xb

    aput v4, v0, v1

    .line 54
    const/16 v1, 0xc

    iget v2, p0, Lfr/testudo/spacecorsair/display/hud/InfoBarEnnemis;->demiWidth:F

    neg-float v2, v2

    iget v3, p1, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    add-float/2addr v2, v3

    aput v2, v0, v1

    .line 55
    const/16 v1, 0xd

    iget v2, p0, Lfr/testudo/spacecorsair/display/hud/InfoBarEnnemis;->demiHeight:F

    neg-float v2, v2

    iget-object v3, p0, Lfr/testudo/spacecorsair/display/hud/InfoBarEnnemis;->centerPosition:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v3, v3, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    sub-float/2addr v2, v3

    aput v2, v0, v1

    .line 57
    const/16 v1, 0xe

    aput v4, v0, v1

    .line 59
    array-length v1, v0

    mul-int/lit8 v1, v1, 0x4

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 60
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 61
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v1

    iput-object v1, p0, Lfr/testudo/spacecorsair/display/hud/InfoBarEnnemis;->vertexBorderBuffer:Ljava/nio/FloatBuffer;

    .line 62
    iget-object v1, p0, Lfr/testudo/spacecorsair/display/hud/InfoBarEnnemis;->vertexBorderBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v1, v0}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    .line 63
    iget-object v1, p0, Lfr/testudo/spacecorsair/display/hud/InfoBarEnnemis;->vertexBorderBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v1, v5}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 65
    array-length v0, v0

    mul-int/lit8 v0, v0, 0x4

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 66
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 67
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lfr/testudo/spacecorsair/display/hud/InfoBarEnnemis;->vertexValueBuffer:Ljava/nio/FloatBuffer;

    .line 69
    const/high16 v0, 0x42c80000    # 100.0f

    invoke-virtual {p0, v0}, Lfr/testudo/spacecorsair/display/hud/InfoBarEnnemis;->setValue(F)V

    .line 70
    return-void
.end method

.method public setValue(F)V
    .registers 11

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    .line 76
    iput p1, p0, Lfr/testudo/spacecorsair/display/hud/InfoBarEnnemis;->pourcentageValue:F

    .line 78
    iget v0, p0, Lfr/testudo/spacecorsair/display/hud/InfoBarEnnemis;->demiWidth:F

    neg-float v0, v0

    iget-object v1, p0, Lfr/testudo/spacecorsair/display/hud/InfoBarEnnemis;->centerPosition:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v1, v1, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    add-float/2addr v0, v1

    add-float/2addr v0, v6

    .line 79
    iget v1, p0, Lfr/testudo/spacecorsair/display/hud/InfoBarEnnemis;->demiWidth:F

    neg-float v1, v1

    iget-object v2, p0, Lfr/testudo/spacecorsair/display/hud/InfoBarEnnemis;->centerPosition:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v2, v2, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    add-float/2addr v1, v2

    iget v2, p0, Lfr/testudo/spacecorsair/display/hud/InfoBarEnnemis;->pourcentageValue:F

    iget v3, p0, Lfr/testudo/spacecorsair/display/hud/InfoBarEnnemis;->witdh:F

    mul-float/2addr v2, v3

    const/high16 v3, 0x42c80000    # 100.0f

    div-float/2addr v2, v3

    add-float/2addr v1, v2

    const/high16 v2, 0x40000000    # 2.0f

    sub-float/2addr v1, v2

    .line 82
    iget-object v2, p0, Lfr/testudo/spacecorsair/display/hud/InfoBarEnnemis;->valueVertices:[F

    aput v0, v2, v8

    .line 83
    iget-object v2, p0, Lfr/testudo/spacecorsair/display/hud/InfoBarEnnemis;->valueVertices:[F

    const/4 v3, 0x1

    iget v4, p0, Lfr/testudo/spacecorsair/display/hud/InfoBarEnnemis;->demiHeight:F

    neg-float v4, v4

    add-float/2addr v4, v6

    iget-object v5, p0, Lfr/testudo/spacecorsair/display/hud/InfoBarEnnemis;->centerPosition:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v5, v5, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    sub-float/2addr v4, v5

    aput v4, v2, v3

    .line 85
    iget-object v2, p0, Lfr/testudo/spacecorsair/display/hud/InfoBarEnnemis;->valueVertices:[F

    const/4 v3, 0x2

    aput v7, v2, v3

    .line 87
    iget-object v2, p0, Lfr/testudo/spacecorsair/display/hud/InfoBarEnnemis;->valueVertices:[F

    const/4 v3, 0x3

    aput v1, v2, v3

    .line 88
    iget-object v2, p0, Lfr/testudo/spacecorsair/display/hud/InfoBarEnnemis;->valueVertices:[F

    const/4 v3, 0x4

    iget v4, p0, Lfr/testudo/spacecorsair/display/hud/InfoBarEnnemis;->demiHeight:F

    neg-float v4, v4

    add-float/2addr v4, v6

    iget-object v5, p0, Lfr/testudo/spacecorsair/display/hud/InfoBarEnnemis;->centerPosition:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v5, v5, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    sub-float/2addr v4, v5

    aput v4, v2, v3

    .line 90
    iget-object v2, p0, Lfr/testudo/spacecorsair/display/hud/InfoBarEnnemis;->valueVertices:[F

    const/4 v3, 0x5

    aput v7, v2, v3

    .line 92
    iget-object v2, p0, Lfr/testudo/spacecorsair/display/hud/InfoBarEnnemis;->valueVertices:[F

    const/4 v3, 0x6

    aput v0, v2, v3

    .line 93
    iget-object v0, p0, Lfr/testudo/spacecorsair/display/hud/InfoBarEnnemis;->valueVertices:[F

    const/4 v2, 0x7

    iget v3, p0, Lfr/testudo/spacecorsair/display/hud/InfoBarEnnemis;->demiHeight:F

    sub-float/2addr v3, v6

    iget-object v4, p0, Lfr/testudo/spacecorsair/display/hud/InfoBarEnnemis;->centerPosition:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v4, v4, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    sub-float/2addr v3, v4

    aput v3, v0, v2

    .line 95
    iget-object v0, p0, Lfr/testudo/spacecorsair/display/hud/InfoBarEnnemis;->valueVertices:[F

    const/16 v2, 0x8

    aput v7, v0, v2

    .line 97
    iget-object v0, p0, Lfr/testudo/spacecorsair/display/hud/InfoBarEnnemis;->valueVertices:[F

    const/16 v2, 0x9

    aput v1, v0, v2

    .line 98
    iget-object v0, p0, Lfr/testudo/spacecorsair/display/hud/InfoBarEnnemis;->valueVertices:[F

    const/16 v1, 0xa

    iget v2, p0, Lfr/testudo/spacecorsair/display/hud/InfoBarEnnemis;->demiHeight:F

    sub-float/2addr v2, v6

    iget-object v3, p0, Lfr/testudo/spacecorsair/display/hud/InfoBarEnnemis;->centerPosition:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v3, v3, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    sub-float/2addr v2, v3

    aput v2, v0, v1

    .line 100
    iget-object v0, p0, Lfr/testudo/spacecorsair/display/hud/InfoBarEnnemis;->valueVertices:[F

    const/16 v1, 0xb

    aput v7, v0, v1

    .line 102
    iget-object v0, p0, Lfr/testudo/spacecorsair/display/hud/InfoBarEnnemis;->vertexValueBuffer:Ljava/nio/FloatBuffer;

    iget-object v1, p0, Lfr/testudo/spacecorsair/display/hud/InfoBarEnnemis;->valueVertices:[F

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    .line 103
    iget-object v0, p0, Lfr/testudo/spacecorsair/display/hud/InfoBarEnnemis;->vertexValueBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, v8}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 104
    return-void
.end method
