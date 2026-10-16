.class public Lfr/testudo/spacecorsair/textengine/Vertices;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final COLOR_CNT:I = 0x4

.field static final INDEX_SIZE:I = 0x2

.field static final NORMAL_CNT:I = 0x3

.field static final POSITION_CNT_2D:I = 0x2

.field static final POSITION_CNT_3D:I = 0x3

.field static final TEXCOORD_CNT:I = 0x2


# instance fields
.field final gl:Ljavax/microedition/khronos/opengles/GL10;

.field final hasColor:Z

.field final hasNormals:Z

.field final hasTexCoords:Z

.field final indices:Ljava/nio/ShortBuffer;

.field public numIndices:I

.field public numVertices:I

.field public final positionCnt:I

.field final tmpBuffer:[I

.field public final vertexSize:I

.field public final vertexStride:I

.field final vertices:Ljava/nio/IntBuffer;


# direct methods
.method public constructor <init>(Ljavax/microedition/khronos/opengles/GL10;IIZZZ)V
    .registers 15

    .prologue
    .line 48
    const/4 v7, 0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-direct/range {v0 .. v7}, Lfr/testudo/spacecorsair/textengine/Vertices;-><init>(Ljavax/microedition/khronos/opengles/GL10;IIZZZZ)V

    .line 49
    return-void
.end method

.method public constructor <init>(Ljavax/microedition/khronos/opengles/GL10;IIZZZZ)V
    .registers 13

    .prologue
    const/4 v1, 0x3

    const/4 v2, 0x2

    const/4 v3, 0x0

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-object p1, p0, Lfr/testudo/spacecorsair/textengine/Vertices;->gl:Ljavax/microedition/khronos/opengles/GL10;

    .line 52
    iput-boolean p4, p0, Lfr/testudo/spacecorsair/textengine/Vertices;->hasColor:Z

    .line 53
    iput-boolean p5, p0, Lfr/testudo/spacecorsair/textengine/Vertices;->hasTexCoords:Z

    .line 54
    iput-boolean p6, p0, Lfr/testudo/spacecorsair/textengine/Vertices;->hasNormals:Z

    .line 55
    if-eqz p7, :cond_5e

    move v0, v1

    :goto_11
    iput v0, p0, Lfr/testudo/spacecorsair/textengine/Vertices;->positionCnt:I

    .line 56
    iget v4, p0, Lfr/testudo/spacecorsair/textengine/Vertices;->positionCnt:I

    if-eqz p4, :cond_60

    const/4 v0, 0x4

    :goto_18
    add-int/2addr v0, v4

    if-eqz p5, :cond_62

    :goto_1b
    add-int/2addr v0, v2

    if-eqz p6, :cond_64

    :goto_1e
    add-int/2addr v0, v1

    iput v0, p0, Lfr/testudo/spacecorsair/textengine/Vertices;->vertexStride:I

    .line 57
    iget v0, p0, Lfr/testudo/spacecorsair/textengine/Vertices;->vertexStride:I

    mul-int/lit8 v0, v0, 0x4

    iput v0, p0, Lfr/testudo/spacecorsair/textengine/Vertices;->vertexSize:I

    .line 59
    iget v0, p0, Lfr/testudo/spacecorsair/textengine/Vertices;->vertexSize:I

    mul-int/2addr v0, p2

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 60
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 61
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asIntBuffer()Ljava/nio/IntBuffer;

    move-result-object v0

    iput-object v0, p0, Lfr/testudo/spacecorsair/textengine/Vertices;->vertices:Ljava/nio/IntBuffer;

    .line 63
    if-lez p3, :cond_66

    .line 64
    mul-int/lit8 v0, p3, 0x2

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 65
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 66
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    move-result-object v0

    iput-object v0, p0, Lfr/testudo/spacecorsair/textengine/Vertices;->indices:Ljava/nio/ShortBuffer;

    .line 71
    :goto_50
    iput v3, p0, Lfr/testudo/spacecorsair/textengine/Vertices;->numVertices:I

    .line 72
    iput v3, p0, Lfr/testudo/spacecorsair/textengine/Vertices;->numIndices:I

    .line 74
    iget v0, p0, Lfr/testudo/spacecorsair/textengine/Vertices;->vertexSize:I

    mul-int/2addr v0, p2

    div-int/lit8 v0, v0, 0x4

    new-array v0, v0, [I

    iput-object v0, p0, Lfr/testudo/spacecorsair/textengine/Vertices;->tmpBuffer:[I

    .line 75
    return-void

    :cond_5e
    move v0, v2

    .line 55
    goto :goto_11

    :cond_60
    move v0, v3

    .line 56
    goto :goto_18

    :cond_62
    move v2, v3

    goto :goto_1b

    :cond_64
    move v1, v3

    goto :goto_1e

    .line 69
    :cond_66
    const/4 v0, 0x0

    iput-object v0, p0, Lfr/testudo/spacecorsair/textengine/Vertices;->indices:Ljava/nio/ShortBuffer;

    goto :goto_50
.end method


# virtual methods
.method public bind()V
    .registers 9

    .prologue
    const/4 v3, 0x2

    const/4 v1, 0x4

    const/16 v7, 0x1406

    const/4 v2, 0x0

    .line 115
    iget-object v0, p0, Lfr/testudo/spacecorsair/textengine/Vertices;->gl:Ljavax/microedition/khronos/opengles/GL10;

    const v4, 0x8074

    invoke-interface {v0, v4}, Ljavax/microedition/khronos/opengles/GL10;->glEnableClientState(I)V

    .line 116
    iget-object v0, p0, Lfr/testudo/spacecorsair/textengine/Vertices;->vertices:Ljava/nio/IntBuffer;

    invoke-virtual {v0, v2}, Ljava/nio/IntBuffer;->position(I)Ljava/nio/Buffer;

    .line 117
    iget-object v0, p0, Lfr/testudo/spacecorsair/textengine/Vertices;->gl:Ljavax/microedition/khronos/opengles/GL10;

    iget v4, p0, Lfr/testudo/spacecorsair/textengine/Vertices;->positionCnt:I

    iget v5, p0, Lfr/testudo/spacecorsair/textengine/Vertices;->vertexSize:I

    iget-object v6, p0, Lfr/testudo/spacecorsair/textengine/Vertices;->vertices:Ljava/nio/IntBuffer;

    invoke-interface {v0, v4, v7, v5, v6}, Ljavax/microedition/khronos/opengles/GL10;->glVertexPointer(IIILjava/nio/Buffer;)V

    .line 119
    iget-boolean v0, p0, Lfr/testudo/spacecorsair/textengine/Vertices;->hasColor:Z

    if-eqz v0, :cond_39

    .line 120
    iget-object v0, p0, Lfr/testudo/spacecorsair/textengine/Vertices;->gl:Ljavax/microedition/khronos/opengles/GL10;

    const v4, 0x8076

    invoke-interface {v0, v4}, Ljavax/microedition/khronos/opengles/GL10;->glEnableClientState(I)V

    .line 121
    iget-object v0, p0, Lfr/testudo/spacecorsair/textengine/Vertices;->vertices:Ljava/nio/IntBuffer;

    iget v4, p0, Lfr/testudo/spacecorsair/textengine/Vertices;->positionCnt:I

    invoke-virtual {v0, v4}, Ljava/nio/IntBuffer;->position(I)Ljava/nio/Buffer;

    .line 122
    iget-object v0, p0, Lfr/testudo/spacecorsair/textengine/Vertices;->gl:Ljavax/microedition/khronos/opengles/GL10;

    iget v4, p0, Lfr/testudo/spacecorsair/textengine/Vertices;->vertexSize:I

    iget-object v5, p0, Lfr/testudo/spacecorsair/textengine/Vertices;->vertices:Ljava/nio/IntBuffer;

    invoke-interface {v0, v1, v7, v4, v5}, Ljavax/microedition/khronos/opengles/GL10;->glColorPointer(IIILjava/nio/Buffer;)V

    .line 125
    :cond_39
    iget-boolean v0, p0, Lfr/testudo/spacecorsair/textengine/Vertices;->hasTexCoords:Z

    if-eqz v0, :cond_5b

    .line 126
    iget-object v0, p0, Lfr/testudo/spacecorsair/textengine/Vertices;->gl:Ljavax/microedition/khronos/opengles/GL10;

    const v4, 0x8078

    invoke-interface {v0, v4}, Ljavax/microedition/khronos/opengles/GL10;->glEnableClientState(I)V

    .line 127
    iget-object v4, p0, Lfr/testudo/spacecorsair/textengine/Vertices;->vertices:Ljava/nio/IntBuffer;

    iget v5, p0, Lfr/testudo/spacecorsair/textengine/Vertices;->positionCnt:I

    iget-boolean v0, p0, Lfr/testudo/spacecorsair/textengine/Vertices;->hasColor:Z

    if-eqz v0, :cond_83

    move v0, v1

    :goto_4e
    add-int/2addr v0, v5

    invoke-virtual {v4, v0}, Ljava/nio/IntBuffer;->position(I)Ljava/nio/Buffer;

    .line 128
    iget-object v0, p0, Lfr/testudo/spacecorsair/textengine/Vertices;->gl:Ljavax/microedition/khronos/opengles/GL10;

    iget v4, p0, Lfr/testudo/spacecorsair/textengine/Vertices;->vertexSize:I

    iget-object v5, p0, Lfr/testudo/spacecorsair/textengine/Vertices;->vertices:Ljava/nio/IntBuffer;

    invoke-interface {v0, v3, v7, v4, v5}, Ljavax/microedition/khronos/opengles/GL10;->glTexCoordPointer(IIILjava/nio/Buffer;)V

    .line 131
    :cond_5b
    iget-boolean v0, p0, Lfr/testudo/spacecorsair/textengine/Vertices;->hasNormals:Z

    if-eqz v0, :cond_82

    .line 132
    iget-object v0, p0, Lfr/testudo/spacecorsair/textengine/Vertices;->gl:Ljavax/microedition/khronos/opengles/GL10;

    const v4, 0x8075

    invoke-interface {v0, v4}, Ljavax/microedition/khronos/opengles/GL10;->glEnableClientState(I)V

    .line 133
    iget-object v0, p0, Lfr/testudo/spacecorsair/textengine/Vertices;->vertices:Ljava/nio/IntBuffer;

    iget v4, p0, Lfr/testudo/spacecorsair/textengine/Vertices;->positionCnt:I

    iget-boolean v5, p0, Lfr/testudo/spacecorsair/textengine/Vertices;->hasColor:Z

    if-eqz v5, :cond_85

    :goto_6f
    add-int/2addr v1, v4

    iget-boolean v4, p0, Lfr/testudo/spacecorsair/textengine/Vertices;->hasTexCoords:Z

    if-eqz v4, :cond_75

    move v2, v3

    :cond_75
    add-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/nio/IntBuffer;->position(I)Ljava/nio/Buffer;

    .line 134
    iget-object v0, p0, Lfr/testudo/spacecorsair/textengine/Vertices;->gl:Ljavax/microedition/khronos/opengles/GL10;

    iget v1, p0, Lfr/testudo/spacecorsair/textengine/Vertices;->vertexSize:I

    iget-object v2, p0, Lfr/testudo/spacecorsair/textengine/Vertices;->vertices:Ljava/nio/IntBuffer;

    invoke-interface {v0, v7, v1, v2}, Ljavax/microedition/khronos/opengles/GL10;->glNormalPointer(IILjava/nio/Buffer;)V

    .line 136
    :cond_82
    return-void

    :cond_83
    move v0, v2

    .line 127
    goto :goto_4e

    :cond_85
    move v1, v2

    .line 133
    goto :goto_6f
.end method

.method public draw(III)V
    .registers 7

    .prologue
    .line 146
    iget-object v0, p0, Lfr/testudo/spacecorsair/textengine/Vertices;->indices:Ljava/nio/ShortBuffer;

    if-eqz v0, :cond_13

    .line 147
    iget-object v0, p0, Lfr/testudo/spacecorsair/textengine/Vertices;->indices:Ljava/nio/ShortBuffer;

    invoke-virtual {v0, p2}, Ljava/nio/ShortBuffer;->position(I)Ljava/nio/Buffer;

    .line 148
    iget-object v0, p0, Lfr/testudo/spacecorsair/textengine/Vertices;->gl:Ljavax/microedition/khronos/opengles/GL10;

    const/16 v1, 0x1403

    iget-object v2, p0, Lfr/testudo/spacecorsair/textengine/Vertices;->indices:Ljava/nio/ShortBuffer;

    invoke-interface {v0, p1, p3, v1, v2}, Ljavax/microedition/khronos/opengles/GL10;->glDrawElements(IIILjava/nio/Buffer;)V

    .line 153
    :goto_12
    return-void

    .line 151
    :cond_13
    iget-object v0, p0, Lfr/testudo/spacecorsair/textengine/Vertices;->gl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL10;->glDrawArrays(III)V

    goto :goto_12
.end method

.method public drawFull(III)V
    .registers 13

    .prologue
    const v8, 0x8078

    const v7, 0x8076

    const/4 v0, 0x4

    const/4 v1, 0x0

    const/16 v6, 0x1406

    .line 179
    iget-object v2, p0, Lfr/testudo/spacecorsair/textengine/Vertices;->gl:Ljavax/microedition/khronos/opengles/GL10;

    const v3, 0x8074

    invoke-interface {v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glEnableClientState(I)V

    .line 180
    iget-object v2, p0, Lfr/testudo/spacecorsair/textengine/Vertices;->vertices:Ljava/nio/IntBuffer;

    invoke-virtual {v2, v1}, Ljava/nio/IntBuffer;->position(I)Ljava/nio/Buffer;

    .line 181
    iget-object v2, p0, Lfr/testudo/spacecorsair/textengine/Vertices;->gl:Ljavax/microedition/khronos/opengles/GL10;

    iget v3, p0, Lfr/testudo/spacecorsair/textengine/Vertices;->positionCnt:I

    iget v4, p0, Lfr/testudo/spacecorsair/textengine/Vertices;->vertexSize:I

    iget-object v5, p0, Lfr/testudo/spacecorsair/textengine/Vertices;->vertices:Ljava/nio/IntBuffer;

    invoke-interface {v2, v3, v6, v4, v5}, Ljavax/microedition/khronos/opengles/GL10;->glVertexPointer(IIILjava/nio/Buffer;)V

    .line 183
    iget-boolean v2, p0, Lfr/testudo/spacecorsair/textengine/Vertices;->hasColor:Z

    if-eqz v2, :cond_3b

    .line 184
    iget-object v2, p0, Lfr/testudo/spacecorsair/textengine/Vertices;->gl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v2, v7}, Ljavax/microedition/khronos/opengles/GL10;->glEnableClientState(I)V

    .line 185
    iget-object v2, p0, Lfr/testudo/spacecorsair/textengine/Vertices;->vertices:Ljava/nio/IntBuffer;

    iget v3, p0, Lfr/testudo/spacecorsair/textengine/Vertices;->positionCnt:I

    invoke-virtual {v2, v3}, Ljava/nio/IntBuffer;->position(I)Ljava/nio/Buffer;

    .line 186
    iget-object v2, p0, Lfr/testudo/spacecorsair/textengine/Vertices;->gl:Ljavax/microedition/khronos/opengles/GL10;

    iget v3, p0, Lfr/testudo/spacecorsair/textengine/Vertices;->vertexSize:I

    iget-object v4, p0, Lfr/testudo/spacecorsair/textengine/Vertices;->vertices:Ljava/nio/IntBuffer;

    invoke-interface {v2, v0, v6, v3, v4}, Ljavax/microedition/khronos/opengles/GL10;->glColorPointer(IIILjava/nio/Buffer;)V

    .line 189
    :cond_3b
    iget-boolean v2, p0, Lfr/testudo/spacecorsair/textengine/Vertices;->hasTexCoords:Z

    if-eqz v2, :cond_5a

    .line 190
    iget-object v2, p0, Lfr/testudo/spacecorsair/textengine/Vertices;->gl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v2, v8}, Ljavax/microedition/khronos/opengles/GL10;->glEnableClientState(I)V

    .line 191
    iget-object v2, p0, Lfr/testudo/spacecorsair/textengine/Vertices;->vertices:Ljava/nio/IntBuffer;

    iget v3, p0, Lfr/testudo/spacecorsair/textengine/Vertices;->positionCnt:I

    iget-boolean v4, p0, Lfr/testudo/spacecorsair/textengine/Vertices;->hasColor:Z

    if-eqz v4, :cond_7f

    :goto_4c
    add-int/2addr v0, v3

    invoke-virtual {v2, v0}, Ljava/nio/IntBuffer;->position(I)Ljava/nio/Buffer;

    .line 192
    iget-object v0, p0, Lfr/testudo/spacecorsair/textengine/Vertices;->gl:Ljavax/microedition/khronos/opengles/GL10;

    const/4 v1, 0x2

    iget v2, p0, Lfr/testudo/spacecorsair/textengine/Vertices;->vertexSize:I

    iget-object v3, p0, Lfr/testudo/spacecorsair/textengine/Vertices;->vertices:Ljava/nio/IntBuffer;

    invoke-interface {v0, v1, v6, v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glTexCoordPointer(IIILjava/nio/Buffer;)V

    .line 195
    :cond_5a
    iget-object v0, p0, Lfr/testudo/spacecorsair/textengine/Vertices;->indices:Ljava/nio/ShortBuffer;

    if-eqz v0, :cond_81

    .line 196
    iget-object v0, p0, Lfr/testudo/spacecorsair/textengine/Vertices;->indices:Ljava/nio/ShortBuffer;

    invoke-virtual {v0, p2}, Ljava/nio/ShortBuffer;->position(I)Ljava/nio/Buffer;

    .line 197
    iget-object v0, p0, Lfr/testudo/spacecorsair/textengine/Vertices;->gl:Ljavax/microedition/khronos/opengles/GL10;

    const/16 v1, 0x1403

    iget-object v2, p0, Lfr/testudo/spacecorsair/textengine/Vertices;->indices:Ljava/nio/ShortBuffer;

    invoke-interface {v0, p1, p3, v1, v2}, Ljavax/microedition/khronos/opengles/GL10;->glDrawElements(IIILjava/nio/Buffer;)V

    .line 203
    :goto_6c
    iget-boolean v0, p0, Lfr/testudo/spacecorsair/textengine/Vertices;->hasTexCoords:Z

    if-eqz v0, :cond_75

    .line 204
    iget-object v0, p0, Lfr/testudo/spacecorsair/textengine/Vertices;->gl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, v8}, Ljavax/microedition/khronos/opengles/GL10;->glDisableClientState(I)V

    .line 206
    :cond_75
    iget-boolean v0, p0, Lfr/testudo/spacecorsair/textengine/Vertices;->hasColor:Z

    if-eqz v0, :cond_7e

    .line 207
    iget-object v0, p0, Lfr/testudo/spacecorsair/textengine/Vertices;->gl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, v7}, Ljavax/microedition/khronos/opengles/GL10;->glDisableClientState(I)V

    .line 208
    :cond_7e
    return-void

    :cond_7f
    move v0, v1

    .line 191
    goto :goto_4c

    .line 200
    :cond_81
    iget-object v0, p0, Lfr/testudo/spacecorsair/textengine/Vertices;->gl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL10;->glDrawArrays(III)V

    goto :goto_6c
.end method

.method public setIndices([SII)V
    .registers 5

    .prologue
    .line 103
    iget-object v0, p0, Lfr/testudo/spacecorsair/textengine/Vertices;->indices:Ljava/nio/ShortBuffer;

    invoke-virtual {v0}, Ljava/nio/ShortBuffer;->clear()Ljava/nio/Buffer;

    .line 104
    iget-object v0, p0, Lfr/testudo/spacecorsair/textengine/Vertices;->indices:Ljava/nio/ShortBuffer;

    invoke-virtual {v0, p1, p2, p3}, Ljava/nio/ShortBuffer;->put([SII)Ljava/nio/ShortBuffer;

    .line 105
    iget-object v0, p0, Lfr/testudo/spacecorsair/textengine/Vertices;->indices:Ljava/nio/ShortBuffer;

    invoke-virtual {v0}, Ljava/nio/ShortBuffer;->flip()Ljava/nio/Buffer;

    .line 106
    iput p3, p0, Lfr/testudo/spacecorsair/textengine/Vertices;->numIndices:I

    .line 107
    return-void
.end method

.method public setVertices([FII)V
    .registers 9

    .prologue
    const/4 v1, 0x0

    .line 86
    iget-object v0, p0, Lfr/testudo/spacecorsair/textengine/Vertices;->vertices:Ljava/nio/IntBuffer;

    invoke-virtual {v0}, Ljava/nio/IntBuffer;->clear()Ljava/nio/Buffer;

    .line 87
    add-int v2, p2, p3

    move v0, v1

    .line 88
    :goto_9
    if-ge p2, v2, :cond_1a

    .line 89
    iget-object v3, p0, Lfr/testudo/spacecorsair/textengine/Vertices;->tmpBuffer:[I

    aget v4, p1, p2

    invoke-static {v4}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v4

    aput v4, v3, v0

    .line 88
    add-int/lit8 p2, p2, 0x1

    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    .line 90
    :cond_1a
    iget-object v0, p0, Lfr/testudo/spacecorsair/textengine/Vertices;->vertices:Ljava/nio/IntBuffer;

    iget-object v2, p0, Lfr/testudo/spacecorsair/textengine/Vertices;->tmpBuffer:[I

    invoke-virtual {v0, v2, v1, p3}, Ljava/nio/IntBuffer;->put([III)Ljava/nio/IntBuffer;

    .line 91
    iget-object v0, p0, Lfr/testudo/spacecorsair/textengine/Vertices;->vertices:Ljava/nio/IntBuffer;

    invoke-virtual {v0}, Ljava/nio/IntBuffer;->flip()Ljava/nio/Buffer;

    .line 92
    iget v0, p0, Lfr/testudo/spacecorsair/textengine/Vertices;->vertexStride:I

    div-int v0, p3, v0

    iput v0, p0, Lfr/testudo/spacecorsair/textengine/Vertices;->numVertices:I

    .line 94
    return-void
.end method

.method setVtxColor(IF)V
    .registers 6

    .prologue
    .line 244
    iget v0, p0, Lfr/testudo/spacecorsair/textengine/Vertices;->vertexStride:I

    mul-int/2addr v0, p1

    iget v1, p0, Lfr/testudo/spacecorsair/textengine/Vertices;->positionCnt:I

    add-int/2addr v0, v1

    .line 245
    iget-object v1, p0, Lfr/testudo/spacecorsair/textengine/Vertices;->vertices:Ljava/nio/IntBuffer;

    add-int/lit8 v0, v0, 0x3

    invoke-static {p2}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v2

    invoke-virtual {v1, v0, v2}, Ljava/nio/IntBuffer;->put(II)Ljava/nio/IntBuffer;

    .line 246
    return-void
.end method

.method setVtxColor(IFFF)V
    .registers 9

    .prologue
    .line 238
    iget v0, p0, Lfr/testudo/spacecorsair/textengine/Vertices;->vertexStride:I

    mul-int/2addr v0, p1

    iget v1, p0, Lfr/testudo/spacecorsair/textengine/Vertices;->positionCnt:I

    add-int/2addr v0, v1

    .line 239
    iget-object v1, p0, Lfr/testudo/spacecorsair/textengine/Vertices;->vertices:Ljava/nio/IntBuffer;

    add-int/lit8 v2, v0, 0x0

    invoke-static {p2}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Ljava/nio/IntBuffer;->put(II)Ljava/nio/IntBuffer;

    .line 240
    iget-object v1, p0, Lfr/testudo/spacecorsair/textengine/Vertices;->vertices:Ljava/nio/IntBuffer;

    add-int/lit8 v2, v0, 0x1

    invoke-static {p3}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Ljava/nio/IntBuffer;->put(II)Ljava/nio/IntBuffer;

    .line 241
    iget-object v1, p0, Lfr/testudo/spacecorsair/textengine/Vertices;->vertices:Ljava/nio/IntBuffer;

    add-int/lit8 v0, v0, 0x2

    invoke-static {p4}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v2

    invoke-virtual {v1, v0, v2}, Ljava/nio/IntBuffer;->put(II)Ljava/nio/IntBuffer;

    .line 242
    return-void
.end method

.method setVtxColor(IFFFF)V
    .registers 10

    .prologue
    .line 231
    iget v0, p0, Lfr/testudo/spacecorsair/textengine/Vertices;->vertexStride:I

    mul-int/2addr v0, p1

    iget v1, p0, Lfr/testudo/spacecorsair/textengine/Vertices;->positionCnt:I

    add-int/2addr v0, v1

    .line 232
    iget-object v1, p0, Lfr/testudo/spacecorsair/textengine/Vertices;->vertices:Ljava/nio/IntBuffer;

    add-int/lit8 v2, v0, 0x0

    invoke-static {p2}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Ljava/nio/IntBuffer;->put(II)Ljava/nio/IntBuffer;

    .line 233
    iget-object v1, p0, Lfr/testudo/spacecorsair/textengine/Vertices;->vertices:Ljava/nio/IntBuffer;

    add-int/lit8 v2, v0, 0x1

    invoke-static {p3}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Ljava/nio/IntBuffer;->put(II)Ljava/nio/IntBuffer;

    .line 234
    iget-object v1, p0, Lfr/testudo/spacecorsair/textengine/Vertices;->vertices:Ljava/nio/IntBuffer;

    add-int/lit8 v2, v0, 0x2

    invoke-static {p4}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Ljava/nio/IntBuffer;->put(II)Ljava/nio/IntBuffer;

    .line 235
    iget-object v1, p0, Lfr/testudo/spacecorsair/textengine/Vertices;->vertices:Ljava/nio/IntBuffer;

    add-int/lit8 v0, v0, 0x3

    invoke-static {p5}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v2

    invoke-virtual {v1, v0, v2}, Ljava/nio/IntBuffer;->put(II)Ljava/nio/IntBuffer;

    .line 236
    return-void
.end method

.method setVtxNormal(IFFF)V
    .registers 9

    .prologue
    const/4 v1, 0x0

    .line 253
    iget v0, p0, Lfr/testudo/spacecorsair/textengine/Vertices;->vertexStride:I

    mul-int/2addr v0, p1

    iget v2, p0, Lfr/testudo/spacecorsair/textengine/Vertices;->positionCnt:I

    add-int/2addr v2, v0

    iget-boolean v0, p0, Lfr/testudo/spacecorsair/textengine/Vertices;->hasColor:Z

    if-eqz v0, :cond_35

    const/4 v0, 0x4

    :goto_c
    add-int/2addr v0, v2

    iget-boolean v2, p0, Lfr/testudo/spacecorsair/textengine/Vertices;->hasTexCoords:Z

    if-eqz v2, :cond_12

    const/4 v1, 0x2

    :cond_12
    add-int/2addr v0, v1

    .line 254
    iget-object v1, p0, Lfr/testudo/spacecorsair/textengine/Vertices;->vertices:Ljava/nio/IntBuffer;

    add-int/lit8 v2, v0, 0x0

    invoke-static {p2}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Ljava/nio/IntBuffer;->put(II)Ljava/nio/IntBuffer;

    .line 255
    iget-object v1, p0, Lfr/testudo/spacecorsair/textengine/Vertices;->vertices:Ljava/nio/IntBuffer;

    add-int/lit8 v2, v0, 0x1

    invoke-static {p3}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Ljava/nio/IntBuffer;->put(II)Ljava/nio/IntBuffer;

    .line 256
    iget-object v1, p0, Lfr/testudo/spacecorsair/textengine/Vertices;->vertices:Ljava/nio/IntBuffer;

    add-int/lit8 v0, v0, 0x2

    invoke-static {p4}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v2

    invoke-virtual {v1, v0, v2}, Ljava/nio/IntBuffer;->put(II)Ljava/nio/IntBuffer;

    .line 257
    return-void

    :cond_35
    move v0, v1

    .line 253
    goto :goto_c
.end method

.method setVtxPosition(IFF)V
    .registers 8

    .prologue
    .line 220
    iget v0, p0, Lfr/testudo/spacecorsair/textengine/Vertices;->vertexStride:I

    mul-int/2addr v0, p1

    .line 221
    iget-object v1, p0, Lfr/testudo/spacecorsair/textengine/Vertices;->vertices:Ljava/nio/IntBuffer;

    add-int/lit8 v2, v0, 0x0

    invoke-static {p2}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Ljava/nio/IntBuffer;->put(II)Ljava/nio/IntBuffer;

    .line 222
    iget-object v1, p0, Lfr/testudo/spacecorsair/textengine/Vertices;->vertices:Ljava/nio/IntBuffer;

    add-int/lit8 v0, v0, 0x1

    invoke-static {p3}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v2

    invoke-virtual {v1, v0, v2}, Ljava/nio/IntBuffer;->put(II)Ljava/nio/IntBuffer;

    .line 223
    return-void
.end method

.method setVtxPosition(IFFF)V
    .registers 9

    .prologue
    .line 225
    iget v0, p0, Lfr/testudo/spacecorsair/textengine/Vertices;->vertexStride:I

    mul-int/2addr v0, p1

    .line 226
    iget-object v1, p0, Lfr/testudo/spacecorsair/textengine/Vertices;->vertices:Ljava/nio/IntBuffer;

    add-int/lit8 v2, v0, 0x0

    invoke-static {p2}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Ljava/nio/IntBuffer;->put(II)Ljava/nio/IntBuffer;

    .line 227
    iget-object v1, p0, Lfr/testudo/spacecorsair/textengine/Vertices;->vertices:Ljava/nio/IntBuffer;

    add-int/lit8 v2, v0, 0x1

    invoke-static {p3}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Ljava/nio/IntBuffer;->put(II)Ljava/nio/IntBuffer;

    .line 228
    iget-object v1, p0, Lfr/testudo/spacecorsair/textengine/Vertices;->vertices:Ljava/nio/IntBuffer;

    add-int/lit8 v0, v0, 0x2

    invoke-static {p4}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v2

    invoke-virtual {v1, v0, v2}, Ljava/nio/IntBuffer;->put(II)Ljava/nio/IntBuffer;

    .line 229
    return-void
.end method

.method setVtxTexCoords(IFF)V
    .registers 8

    .prologue
    .line 248
    iget v0, p0, Lfr/testudo/spacecorsair/textengine/Vertices;->vertexStride:I

    mul-int/2addr v0, p1

    iget v1, p0, Lfr/testudo/spacecorsair/textengine/Vertices;->positionCnt:I

    add-int/2addr v1, v0

    iget-boolean v0, p0, Lfr/testudo/spacecorsair/textengine/Vertices;->hasColor:Z

    if-eqz v0, :cond_23

    const/4 v0, 0x4

    :goto_b
    add-int/2addr v0, v1

    .line 249
    iget-object v1, p0, Lfr/testudo/spacecorsair/textengine/Vertices;->vertices:Ljava/nio/IntBuffer;

    add-int/lit8 v2, v0, 0x0

    invoke-static {p2}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Ljava/nio/IntBuffer;->put(II)Ljava/nio/IntBuffer;

    .line 250
    iget-object v1, p0, Lfr/testudo/spacecorsair/textengine/Vertices;->vertices:Ljava/nio/IntBuffer;

    add-int/lit8 v0, v0, 0x1

    invoke-static {p3}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v2

    invoke-virtual {v1, v0, v2}, Ljava/nio/IntBuffer;->put(II)Ljava/nio/IntBuffer;

    .line 251
    return-void

    .line 248
    :cond_23
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public unbind()V
    .registers 3

    .prologue
    .line 161
    iget-boolean v0, p0, Lfr/testudo/spacecorsair/textengine/Vertices;->hasColor:Z

    if-eqz v0, :cond_c

    .line 162
    iget-object v0, p0, Lfr/testudo/spacecorsair/textengine/Vertices;->gl:Ljavax/microedition/khronos/opengles/GL10;

    const v1, 0x8076

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/opengles/GL10;->glDisableClientState(I)V

    .line 164
    :cond_c
    iget-boolean v0, p0, Lfr/testudo/spacecorsair/textengine/Vertices;->hasTexCoords:Z

    if-eqz v0, :cond_18

    .line 165
    iget-object v0, p0, Lfr/testudo/spacecorsair/textengine/Vertices;->gl:Ljavax/microedition/khronos/opengles/GL10;

    const v1, 0x8078

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/opengles/GL10;->glDisableClientState(I)V

    .line 167
    :cond_18
    iget-boolean v0, p0, Lfr/testudo/spacecorsair/textengine/Vertices;->hasNormals:Z

    if-eqz v0, :cond_24

    .line 168
    iget-object v0, p0, Lfr/testudo/spacecorsair/textengine/Vertices;->gl:Ljavax/microedition/khronos/opengles/GL10;

    const v1, 0x8075

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/opengles/GL10;->glDisableClientState(I)V

    .line 169
    :cond_24
    return-void
.end method
