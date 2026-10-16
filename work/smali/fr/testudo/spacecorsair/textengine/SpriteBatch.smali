.class public Lfr/testudo/spacecorsair/textengine/SpriteBatch;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final INDICES_PER_SPRITE:I = 0x6

.field static final VERTEX_SIZE:I = 0x5

.field static final VERTICES_PER_SPRITE:I = 0x4


# instance fields
.field bufferIndex:I

.field gl:Ljavax/microedition/khronos/opengles/GL10;

.field maxSprites:I

.field numSprites:I

.field vertexBuffer:[F

.field vertices:Lfr/testudo/spacecorsair/textengine/Vertices;


# direct methods
.method public constructor <init>(Ljavax/microedition/khronos/opengles/GL10;I)V
    .registers 10

    .prologue
    const/4 v4, 0x0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lfr/testudo/spacecorsair/textengine/SpriteBatch;->gl:Ljavax/microedition/khronos/opengles/GL10;

    .line 28
    mul-int/lit8 v0, p2, 0x4

    mul-int/lit8 v0, v0, 0x5

    new-array v0, v0, [F

    iput-object v0, p0, Lfr/testudo/spacecorsair/textengine/SpriteBatch;->vertexBuffer:[F

    .line 29
    new-instance v0, Lfr/testudo/spacecorsair/textengine/Vertices;

    mul-int/lit8 v2, p2, 0x4

    mul-int/lit8 v3, p2, 0x6

    const/4 v5, 0x1

    move-object v1, p1

    move v6, v4

    invoke-direct/range {v0 .. v6}, Lfr/testudo/spacecorsair/textengine/Vertices;-><init>(Ljavax/microedition/khronos/opengles/GL10;IIZZZ)V

    iput-object v0, p0, Lfr/testudo/spacecorsair/textengine/SpriteBatch;->vertices:Lfr/testudo/spacecorsair/textengine/Vertices;

    .line 30
    iput v4, p0, Lfr/testudo/spacecorsair/textengine/SpriteBatch;->bufferIndex:I

    .line 31
    iput p2, p0, Lfr/testudo/spacecorsair/textengine/SpriteBatch;->maxSprites:I

    .line 32
    iput v4, p0, Lfr/testudo/spacecorsair/textengine/SpriteBatch;->numSprites:I

    .line 34
    mul-int/lit8 v0, p2, 0x6

    new-array v2, v0, [S

    .line 35
    array-length v3, v2

    move v0, v4

    move v1, v4

    .line 37
    :goto_29
    if-ge v0, v3, :cond_5b

    .line 38
    add-int/lit8 v5, v0, 0x0

    add-int/lit8 v6, v1, 0x0

    int-to-short v6, v6

    aput-short v6, v2, v5

    .line 39
    add-int/lit8 v5, v0, 0x1

    add-int/lit8 v6, v1, 0x1

    int-to-short v6, v6

    aput-short v6, v2, v5

    .line 40
    add-int/lit8 v5, v0, 0x2

    add-int/lit8 v6, v1, 0x2

    int-to-short v6, v6

    aput-short v6, v2, v5

    .line 41
    add-int/lit8 v5, v0, 0x3

    add-int/lit8 v6, v1, 0x2

    int-to-short v6, v6

    aput-short v6, v2, v5

    .line 42
    add-int/lit8 v5, v0, 0x4

    add-int/lit8 v6, v1, 0x3

    int-to-short v6, v6

    aput-short v6, v2, v5

    .line 43
    add-int/lit8 v5, v0, 0x5

    add-int/lit8 v6, v1, 0x0

    int-to-short v6, v6

    aput-short v6, v2, v5

    .line 37
    add-int/lit8 v0, v0, 0x6

    add-int/lit8 v1, v1, 0x4

    int-to-short v1, v1

    goto :goto_29

    .line 45
    :cond_5b
    iget-object v0, p0, Lfr/testudo/spacecorsair/textengine/SpriteBatch;->vertices:Lfr/testudo/spacecorsair/textengine/Vertices;

    invoke-virtual {v0, v2, v4, v3}, Lfr/testudo/spacecorsair/textengine/Vertices;->setIndices([SII)V

    .line 46
    return-void
.end method


# virtual methods
.method public beginBatch()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 59
    iput v0, p0, Lfr/testudo/spacecorsair/textengine/SpriteBatch;->numSprites:I

    .line 60
    iput v0, p0, Lfr/testudo/spacecorsair/textengine/SpriteBatch;->bufferIndex:I

    .line 61
    return-void
.end method

.method public beginBatch(I)V
    .registers 5

    .prologue
    const/4 v2, 0x0

    .line 54
    iget-object v0, p0, Lfr/testudo/spacecorsair/textengine/SpriteBatch;->gl:Ljavax/microedition/khronos/opengles/GL10;

    const/16 v1, 0xde1

    invoke-interface {v0, v1, p1}, Ljavax/microedition/khronos/opengles/GL10;->glBindTexture(II)V

    .line 55
    iput v2, p0, Lfr/testudo/spacecorsair/textengine/SpriteBatch;->numSprites:I

    .line 56
    iput v2, p0, Lfr/testudo/spacecorsair/textengine/SpriteBatch;->bufferIndex:I

    .line 57
    return-void
.end method

.method public drawSprite(FFFFLfr/testudo/spacecorsair/textengine/TextureRegion;F)V
    .registers 14

    .prologue
    const/4 v3, 0x0

    const/high16 v2, 0x40000000    # 2.0f

    .line 86
    iget v0, p0, Lfr/testudo/spacecorsair/textengine/SpriteBatch;->numSprites:I

    iget v1, p0, Lfr/testudo/spacecorsair/textengine/SpriteBatch;->maxSprites:I

    if-ne v0, v1, :cond_10

    .line 87
    invoke-virtual {p0}, Lfr/testudo/spacecorsair/textengine/SpriteBatch;->endBatch()V

    .line 89
    iput v3, p0, Lfr/testudo/spacecorsair/textengine/SpriteBatch;->numSprites:I

    .line 90
    iput v3, p0, Lfr/testudo/spacecorsair/textengine/SpriteBatch;->bufferIndex:I

    .line 93
    :cond_10
    div-float v0, p3, v2

    .line 94
    div-float v1, p4, v2

    .line 95
    sub-float v2, p1, v0

    .line 96
    sub-float v3, p2, v1

    .line 97
    add-float/2addr v0, p1

    .line 98
    add-float/2addr v1, p2

    .line 100
    iget-object v4, p0, Lfr/testudo/spacecorsair/textengine/SpriteBatch;->vertexBuffer:[F

    iget v5, p0, Lfr/testudo/spacecorsair/textengine/SpriteBatch;->bufferIndex:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lfr/testudo/spacecorsair/textengine/SpriteBatch;->bufferIndex:I

    aput v2, v4, v5

    .line 101
    iget-object v4, p0, Lfr/testudo/spacecorsair/textengine/SpriteBatch;->vertexBuffer:[F

    iget v5, p0, Lfr/testudo/spacecorsair/textengine/SpriteBatch;->bufferIndex:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lfr/testudo/spacecorsair/textengine/SpriteBatch;->bufferIndex:I

    aput v3, v4, v5

    .line 102
    iget-object v4, p0, Lfr/testudo/spacecorsair/textengine/SpriteBatch;->vertexBuffer:[F

    iget v5, p0, Lfr/testudo/spacecorsair/textengine/SpriteBatch;->bufferIndex:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lfr/testudo/spacecorsair/textengine/SpriteBatch;->bufferIndex:I

    aput p6, v4, v5

    .line 103
    iget-object v4, p0, Lfr/testudo/spacecorsair/textengine/SpriteBatch;->vertexBuffer:[F

    iget v5, p0, Lfr/testudo/spacecorsair/textengine/SpriteBatch;->bufferIndex:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lfr/testudo/spacecorsair/textengine/SpriteBatch;->bufferIndex:I

    iget v6, p5, Lfr/testudo/spacecorsair/textengine/TextureRegion;->u1:F

    aput v6, v4, v5

    .line 104
    iget-object v4, p0, Lfr/testudo/spacecorsair/textengine/SpriteBatch;->vertexBuffer:[F

    iget v5, p0, Lfr/testudo/spacecorsair/textengine/SpriteBatch;->bufferIndex:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lfr/testudo/spacecorsair/textengine/SpriteBatch;->bufferIndex:I

    iget v6, p5, Lfr/testudo/spacecorsair/textengine/TextureRegion;->v2:F

    aput v6, v4, v5

    .line 106
    iget-object v4, p0, Lfr/testudo/spacecorsair/textengine/SpriteBatch;->vertexBuffer:[F

    iget v5, p0, Lfr/testudo/spacecorsair/textengine/SpriteBatch;->bufferIndex:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lfr/testudo/spacecorsair/textengine/SpriteBatch;->bufferIndex:I

    aput v0, v4, v5

    .line 107
    iget-object v4, p0, Lfr/testudo/spacecorsair/textengine/SpriteBatch;->vertexBuffer:[F

    iget v5, p0, Lfr/testudo/spacecorsair/textengine/SpriteBatch;->bufferIndex:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lfr/testudo/spacecorsair/textengine/SpriteBatch;->bufferIndex:I

    aput v3, v4, v5

    .line 108
    iget-object v3, p0, Lfr/testudo/spacecorsair/textengine/SpriteBatch;->vertexBuffer:[F

    iget v4, p0, Lfr/testudo/spacecorsair/textengine/SpriteBatch;->bufferIndex:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lfr/testudo/spacecorsair/textengine/SpriteBatch;->bufferIndex:I

    aput p6, v3, v4

    .line 109
    iget-object v3, p0, Lfr/testudo/spacecorsair/textengine/SpriteBatch;->vertexBuffer:[F

    iget v4, p0, Lfr/testudo/spacecorsair/textengine/SpriteBatch;->bufferIndex:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lfr/testudo/spacecorsair/textengine/SpriteBatch;->bufferIndex:I

    iget v5, p5, Lfr/testudo/spacecorsair/textengine/TextureRegion;->u2:F

    aput v5, v3, v4

    .line 110
    iget-object v3, p0, Lfr/testudo/spacecorsair/textengine/SpriteBatch;->vertexBuffer:[F

    iget v4, p0, Lfr/testudo/spacecorsair/textengine/SpriteBatch;->bufferIndex:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lfr/testudo/spacecorsair/textengine/SpriteBatch;->bufferIndex:I

    iget v5, p5, Lfr/testudo/spacecorsair/textengine/TextureRegion;->v2:F

    aput v5, v3, v4

    .line 112
    iget-object v3, p0, Lfr/testudo/spacecorsair/textengine/SpriteBatch;->vertexBuffer:[F

    iget v4, p0, Lfr/testudo/spacecorsair/textengine/SpriteBatch;->bufferIndex:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lfr/testudo/spacecorsair/textengine/SpriteBatch;->bufferIndex:I

    aput v0, v3, v4

    .line 113
    iget-object v0, p0, Lfr/testudo/spacecorsair/textengine/SpriteBatch;->vertexBuffer:[F

    iget v3, p0, Lfr/testudo/spacecorsair/textengine/SpriteBatch;->bufferIndex:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lfr/testudo/spacecorsair/textengine/SpriteBatch;->bufferIndex:I

    aput v1, v0, v3

    .line 114
    iget-object v0, p0, Lfr/testudo/spacecorsair/textengine/SpriteBatch;->vertexBuffer:[F

    iget v3, p0, Lfr/testudo/spacecorsair/textengine/SpriteBatch;->bufferIndex:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lfr/testudo/spacecorsair/textengine/SpriteBatch;->bufferIndex:I

    aput p6, v0, v3

    .line 115
    iget-object v0, p0, Lfr/testudo/spacecorsair/textengine/SpriteBatch;->vertexBuffer:[F

    iget v3, p0, Lfr/testudo/spacecorsair/textengine/SpriteBatch;->bufferIndex:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lfr/testudo/spacecorsair/textengine/SpriteBatch;->bufferIndex:I

    iget v4, p5, Lfr/testudo/spacecorsair/textengine/TextureRegion;->u2:F

    aput v4, v0, v3

    .line 116
    iget-object v0, p0, Lfr/testudo/spacecorsair/textengine/SpriteBatch;->vertexBuffer:[F

    iget v3, p0, Lfr/testudo/spacecorsair/textengine/SpriteBatch;->bufferIndex:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lfr/testudo/spacecorsair/textengine/SpriteBatch;->bufferIndex:I

    iget v4, p5, Lfr/testudo/spacecorsair/textengine/TextureRegion;->v1:F

    aput v4, v0, v3

    .line 118
    iget-object v0, p0, Lfr/testudo/spacecorsair/textengine/SpriteBatch;->vertexBuffer:[F

    iget v3, p0, Lfr/testudo/spacecorsair/textengine/SpriteBatch;->bufferIndex:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lfr/testudo/spacecorsair/textengine/SpriteBatch;->bufferIndex:I

    aput v2, v0, v3

    .line 119
    iget-object v0, p0, Lfr/testudo/spacecorsair/textengine/SpriteBatch;->vertexBuffer:[F

    iget v2, p0, Lfr/testudo/spacecorsair/textengine/SpriteBatch;->bufferIndex:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lfr/testudo/spacecorsair/textengine/SpriteBatch;->bufferIndex:I

    aput v1, v0, v2

    .line 120
    iget-object v0, p0, Lfr/testudo/spacecorsair/textengine/SpriteBatch;->vertexBuffer:[F

    iget v1, p0, Lfr/testudo/spacecorsair/textengine/SpriteBatch;->bufferIndex:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lfr/testudo/spacecorsair/textengine/SpriteBatch;->bufferIndex:I

    aput p6, v0, v1

    .line 121
    iget-object v0, p0, Lfr/testudo/spacecorsair/textengine/SpriteBatch;->vertexBuffer:[F

    iget v1, p0, Lfr/testudo/spacecorsair/textengine/SpriteBatch;->bufferIndex:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lfr/testudo/spacecorsair/textengine/SpriteBatch;->bufferIndex:I

    iget v2, p5, Lfr/testudo/spacecorsair/textengine/TextureRegion;->u1:F

    aput v2, v0, v1

    .line 122
    iget-object v0, p0, Lfr/testudo/spacecorsair/textengine/SpriteBatch;->vertexBuffer:[F

    iget v1, p0, Lfr/testudo/spacecorsair/textengine/SpriteBatch;->bufferIndex:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lfr/testudo/spacecorsair/textengine/SpriteBatch;->bufferIndex:I

    iget v2, p5, Lfr/testudo/spacecorsair/textengine/TextureRegion;->v1:F

    aput v2, v0, v1

    .line 124
    iget v0, p0, Lfr/testudo/spacecorsair/textengine/SpriteBatch;->numSprites:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lfr/testudo/spacecorsair/textengine/SpriteBatch;->numSprites:I

    .line 125
    return-void
.end method

.method public endBatch()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 68
    iget v0, p0, Lfr/testudo/spacecorsair/textengine/SpriteBatch;->numSprites:I

    if-lez v0, :cond_22

    .line 69
    iget-object v0, p0, Lfr/testudo/spacecorsair/textengine/SpriteBatch;->vertices:Lfr/testudo/spacecorsair/textengine/Vertices;

    iget-object v1, p0, Lfr/testudo/spacecorsair/textengine/SpriteBatch;->vertexBuffer:[F

    iget v2, p0, Lfr/testudo/spacecorsair/textengine/SpriteBatch;->bufferIndex:I

    invoke-virtual {v0, v1, v3, v2}, Lfr/testudo/spacecorsair/textengine/Vertices;->setVertices([FII)V

    .line 70
    iget-object v0, p0, Lfr/testudo/spacecorsair/textengine/SpriteBatch;->vertices:Lfr/testudo/spacecorsair/textengine/Vertices;

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/textengine/Vertices;->bind()V

    .line 71
    iget-object v0, p0, Lfr/testudo/spacecorsair/textengine/SpriteBatch;->vertices:Lfr/testudo/spacecorsair/textengine/Vertices;

    const/4 v1, 0x4

    iget v2, p0, Lfr/testudo/spacecorsair/textengine/SpriteBatch;->numSprites:I

    mul-int/lit8 v2, v2, 0x6

    invoke-virtual {v0, v1, v3, v2}, Lfr/testudo/spacecorsair/textengine/Vertices;->draw(III)V

    .line 72
    iget-object v0, p0, Lfr/testudo/spacecorsair/textengine/SpriteBatch;->vertices:Lfr/testudo/spacecorsair/textengine/Vertices;

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/textengine/Vertices;->unbind()V

    .line 74
    :cond_22
    return-void
.end method
