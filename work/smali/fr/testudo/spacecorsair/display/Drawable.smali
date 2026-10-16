.class public Lfr/testudo/spacecorsair/display/Drawable;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public dimensions:Lfr/testudo/spacecorsair/engine/Vector2;

.field private mCrop:[I

.field public myTexture:Lfr/testudo/spacecorsair/display/Texture;

.field private texture:[F

.field private textureBuffer:Ljava/nio/FloatBuffer;

.field private vertexBuffer:Ljava/nio/FloatBuffer;

.field private vertices:[F


# direct methods
.method public constructor <init>(ILfr/testudo/spacecorsair/display/Texture;)V
    .registers 11

    .prologue
    const/16 v7, 0x8

    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    const/4 v0, 0x0

    iput-object v0, p0, Lfr/testudo/spacecorsair/display/Drawable;->vertices:[F

    .line 23
    new-array v0, v7, [F

    fill-array-data v0, :array_9c

    iput-object v0, p0, Lfr/testudo/spacecorsair/display/Drawable;->texture:[F

    .line 32
    new-instance v0, Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-direct {v0, v5, v5}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>(FF)V

    iput-object v0, p0, Lfr/testudo/spacecorsair/display/Drawable;->dimensions:Lfr/testudo/spacecorsair/engine/Vector2;

    .line 68
    iput-object p2, p0, Lfr/testudo/spacecorsair/display/Drawable;->myTexture:Lfr/testudo/spacecorsair/display/Texture;

    .line 69
    iget-object v0, p0, Lfr/testudo/spacecorsair/display/Drawable;->dimensions:Lfr/testudo/spacecorsair/engine/Vector2;

    int-to-float v1, p1

    int-to-float v2, p1

    invoke-virtual {v0, v1, v2}, Lfr/testudo/spacecorsair/engine/Vector2;->set(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 72
    div-int/lit8 v0, p1, 0x2

    int-to-float v0, v0

    .line 73
    div-int/lit8 v1, p1, 0x2

    int-to-float v1, v1

    .line 76
    const/16 v2, 0xc

    new-array v2, v2, [F

    neg-float v3, v0

    aput v3, v2, v6

    const/4 v3, 0x1

    neg-float v4, v1

    aput v4, v2, v3

    const/4 v3, 0x2

    aput v5, v2, v3

    const/4 v3, 0x3

    aput v0, v2, v3

    const/4 v3, 0x4

    neg-float v4, v1

    aput v4, v2, v3

    const/4 v3, 0x5

    aput v5, v2, v3

    const/4 v3, 0x6

    neg-float v4, v0

    aput v4, v2, v3

    const/4 v3, 0x7

    aput v1, v2, v3

    aput v5, v2, v7

    const/16 v3, 0x9

    aput v0, v2, v3

    const/16 v0, 0xa

    aput v1, v2, v0

    const/16 v0, 0xb

    aput v5, v2, v0

    iput-object v2, p0, Lfr/testudo/spacecorsair/display/Drawable;->vertices:[F

    .line 84
    iget-object v0, p0, Lfr/testudo/spacecorsair/display/Drawable;->vertices:[F

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x4

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 85
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 86
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lfr/testudo/spacecorsair/display/Drawable;->vertexBuffer:Ljava/nio/FloatBuffer;

    .line 87
    iget-object v0, p0, Lfr/testudo/spacecorsair/display/Drawable;->vertexBuffer:Ljava/nio/FloatBuffer;

    iget-object v1, p0, Lfr/testudo/spacecorsair/display/Drawable;->vertices:[F

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    .line 88
    iget-object v0, p0, Lfr/testudo/spacecorsair/display/Drawable;->vertexBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, v6}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 91
    iget-object v0, p0, Lfr/testudo/spacecorsair/display/Drawable;->texture:[F

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x4

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 92
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 93
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lfr/testudo/spacecorsair/display/Drawable;->textureBuffer:Ljava/nio/FloatBuffer;

    .line 94
    iget-object v0, p0, Lfr/testudo/spacecorsair/display/Drawable;->textureBuffer:Ljava/nio/FloatBuffer;

    iget-object v1, p0, Lfr/testudo/spacecorsair/display/Drawable;->texture:[F

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    .line 95
    iget-object v0, p0, Lfr/testudo/spacecorsair/display/Drawable;->textureBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, v6}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 98
    return-void

    .line 23
    nop

    :array_9c
    .array-data 4
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public constructor <init>(Lfr/testudo/spacecorsair/engine/Vector2;Lfr/testudo/spacecorsair/display/Texture;)V
    .registers 4

    .prologue
    .line 101
    iget v0, p1, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    float-to-int v0, v0

    invoke-direct {p0, v0, p2}, Lfr/testudo/spacecorsair/display/Drawable;-><init>(ILfr/testudo/spacecorsair/display/Texture;)V

    .line 102
    return-void
.end method


# virtual methods
.method public draw(Ljavax/microedition/khronos/opengles/GL10;Lfr/testudo/spacecorsair/engine/Vector2;FZF)V
    .registers 15

    .prologue
    const/high16 v6, 0x3f800000    # 1.0f

    .line 116
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v7, v6

    move v8, v6

    invoke-virtual/range {v0 .. v8}, Lfr/testudo/spacecorsair/display/Drawable;->draw(Ljavax/microedition/khronos/opengles/GL10;Lfr/testudo/spacecorsair/engine/Vector2;FZFFFF)V

    .line 118
    return-void
.end method

.method public draw(Ljavax/microedition/khronos/opengles/GL10;Lfr/testudo/spacecorsair/engine/Vector2;FZFFFF)V
    .registers 20

    .prologue
    .line 166
    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    invoke-virtual/range {v0 .. v10}, Lfr/testudo/spacecorsair/display/Drawable;->draw(Ljavax/microedition/khronos/opengles/GL10;Lfr/testudo/spacecorsair/engine/Vector2;FZFFFFZZ)V

    .line 167
    return-void
.end method

.method public draw(Ljavax/microedition/khronos/opengles/GL10;Lfr/testudo/spacecorsair/engine/Vector2;FZFFFFZZ)V
    .registers 15

    .prologue
    .line 125
    const/16 v0, 0xde1

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glEnable(I)V

    .line 126
    const/16 v0, 0xde1

    iget-object v1, p0, Lfr/testudo/spacecorsair/display/Drawable;->myTexture:Lfr/testudo/spacecorsair/display/Texture;

    iget v1, v1, Lfr/testudo/spacecorsair/display/Texture;->name:I

    invoke-interface {p1, v0, v1}, Ljavax/microedition/khronos/opengles/GL10;->glBindTexture(II)V

    .line 127
    invoke-interface {p1}, Ljavax/microedition/khronos/opengles/GL10;->glLoadIdentity()V

    .line 129
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->config:Lfr/testudo/spacecorsair/game/Config;

    iget v0, v0, Lfr/testudo/spacecorsair/game/Config;->Zindex:F

    neg-float v1, v0

    if-eqz p9, :cond_7d

    const/4 v0, 0x0

    :goto_1b
    sub-float v0, v1, v0

    .line 132
    if-eqz p4, :cond_84

    .line 133
    iget v1, p2, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    sget v2, Lfr/testudo/spacecorsair/engine/GameRenderer;->screenMidWidthX:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    iget v2, p2, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    sget v3, Lfr/testudo/spacecorsair/engine/GameRenderer;->screenMidWidthY:I

    int-to-float v3, v3

    sub-float/2addr v2, v3

    invoke-interface {p1, v1, v2, v0}, Ljavax/microedition/khronos/opengles/GL10;->glTranslatef(FFF)V

    .line 139
    :goto_2e
    const v0, 0x8074

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glEnableClientState(I)V

    .line 140
    const v0, 0x8078

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glEnableClientState(I)V

    .line 143
    invoke-interface {p1, p6, p7, p8, p5}, Ljavax/microedition/khronos/opengles/GL10;->glColor4f(FFFF)V

    .line 146
    const/4 v0, 0x3

    const/16 v1, 0x1406

    const/4 v2, 0x0

    iget-object v3, p0, Lfr/testudo/spacecorsair/display/Drawable;->vertexBuffer:Ljava/nio/FloatBuffer;

    invoke-interface {p1, v0, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glVertexPointer(IIILjava/nio/Buffer;)V

    .line 147
    const/4 v0, 0x2

    const/16 v1, 0x1406

    const/4 v2, 0x0

    iget-object v3, p0, Lfr/testudo/spacecorsair/display/Drawable;->textureBuffer:Ljava/nio/FloatBuffer;

    invoke-interface {p1, v0, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glTexCoordPointer(IIILjava/nio/Buffer;)V

    .line 149
    const/4 v0, 0x0

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-interface {p1, p3, v0, v1, v2}, Ljavax/microedition/khronos/opengles/GL10;->glRotatef(FFFF)V

    .line 152
    const/4 v0, 0x5

    const/4 v1, 0x0

    iget-object v2, p0, Lfr/testudo/spacecorsair/display/Drawable;->vertices:[F

    array-length v2, v2

    div-int/lit8 v2, v2, 0x3

    invoke-interface {p1, v0, v1, v2}, Ljavax/microedition/khronos/opengles/GL10;->glDrawArrays(III)V

    .line 155
    const/high16 v0, 0x3f800000    # 1.0f

    const/high16 v1, 0x3f800000    # 1.0f

    const/high16 v2, 0x3f800000    # 1.0f

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-interface {p1, v0, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glColor4f(FFFF)V

    .line 158
    const v0, 0x8074

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glDisableClientState(I)V

    .line 159
    const v0, 0x8078

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glDisableClientState(I)V

    .line 160
    const/16 v0, 0xde1

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glDisable(I)V

    .line 162
    return-void

    .line 129
    :cond_7d
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->camera:Lfr/testudo/spacecorsair/engine/Camera;

    iget v0, v0, Lfr/testudo/spacecorsair/engine/Camera;->curZDecal:F

    goto :goto_1b

    .line 137
    :cond_84
    iget v1, p2, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    sget-object v2, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v2, v2, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->camera:Lfr/testudo/spacecorsair/engine/Camera;

    iget-object v2, v2, Lfr/testudo/spacecorsair/engine/Camera;->centerPosition:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v2, v2, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    sub-float/2addr v1, v2

    iget v2, p2, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    sget-object v3, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v3, v3, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->camera:Lfr/testudo/spacecorsair/engine/Camera;

    iget-object v3, v3, Lfr/testudo/spacecorsair/engine/Camera;->centerPosition:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v3, v3, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    sub-float/2addr v2, v3

    invoke-interface {p1, v1, v2, v0}, Ljavax/microedition/khronos/opengles/GL10;->glTranslatef(FFF)V

    goto :goto_2e
.end method

.method public draw(Ljavax/microedition/khronos/opengles/GL10;Lfr/testudo/spacecorsair/engine/Vector2;FZFZ)V
    .registers 18

    .prologue
    .line 108
    const/high16 v6, 0x3f800000    # 1.0f

    const/high16 v7, 0x3f800000    # 1.0f

    const/high16 v8, 0x3f800000    # 1.0f

    const/4 v10, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move/from16 v5, p5

    move/from16 v9, p6

    invoke-virtual/range {v0 .. v10}, Lfr/testudo/spacecorsair/display/Drawable;->draw(Ljavax/microedition/khronos/opengles/GL10;Lfr/testudo/spacecorsair/engine/Vector2;FZFFFFZZ)V

    .line 110
    return-void
.end method

.method public setCrop(IIII)V
    .registers 8

    .prologue
    .line 182
    iget-object v0, p0, Lfr/testudo/spacecorsair/display/Drawable;->mCrop:[I

    const/4 v1, 0x0

    aput p1, v0, v1

    .line 183
    iget-object v0, p0, Lfr/testudo/spacecorsair/display/Drawable;->mCrop:[I

    const/4 v1, 0x1

    aput p2, v0, v1

    .line 184
    iget-object v0, p0, Lfr/testudo/spacecorsair/display/Drawable;->mCrop:[I

    const/4 v1, 0x2

    aput p3, v0, v1

    .line 185
    iget-object v0, p0, Lfr/testudo/spacecorsair/display/Drawable;->mCrop:[I

    const/4 v1, 0x3

    neg-int v2, p4

    aput v2, v0, v1

    .line 186
    return-void
.end method

.method public setDimension(Lfr/testudo/spacecorsair/engine/Vector2;)V
    .registers 9

    .prologue
    const/high16 v2, 0x40000000    # 2.0f

    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 38
    iget-object v0, p0, Lfr/testudo/spacecorsair/display/Drawable;->dimensions:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v0, p1}, Lfr/testudo/spacecorsair/engine/Vector2;->setSameAs(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 40
    iget v0, p1, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    div-float/2addr v0, v2

    .line 41
    iget v1, p1, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    div-float/2addr v1, v2

    .line 44
    iget-object v2, p0, Lfr/testudo/spacecorsair/display/Drawable;->vertices:[F

    neg-float v3, v0

    aput v3, v2, v6

    .line 45
    iget-object v2, p0, Lfr/testudo/spacecorsair/display/Drawable;->vertices:[F

    const/4 v3, 0x1

    neg-float v4, v1

    aput v4, v2, v3

    .line 46
    iget-object v2, p0, Lfr/testudo/spacecorsair/display/Drawable;->vertices:[F

    const/4 v3, 0x2

    aput v5, v2, v3

    .line 47
    iget-object v2, p0, Lfr/testudo/spacecorsair/display/Drawable;->vertices:[F

    const/4 v3, 0x3

    aput v0, v2, v3

    .line 48
    iget-object v2, p0, Lfr/testudo/spacecorsair/display/Drawable;->vertices:[F

    const/4 v3, 0x4

    neg-float v4, v1

    aput v4, v2, v3

    .line 49
    iget-object v2, p0, Lfr/testudo/spacecorsair/display/Drawable;->vertices:[F

    const/4 v3, 0x5

    aput v5, v2, v3

    .line 50
    iget-object v2, p0, Lfr/testudo/spacecorsair/display/Drawable;->vertices:[F

    const/4 v3, 0x6

    neg-float v4, v0

    aput v4, v2, v3

    .line 51
    iget-object v2, p0, Lfr/testudo/spacecorsair/display/Drawable;->vertices:[F

    const/4 v3, 0x7

    aput v1, v2, v3

    .line 52
    iget-object v2, p0, Lfr/testudo/spacecorsair/display/Drawable;->vertices:[F

    const/16 v3, 0x8

    aput v5, v2, v3

    .line 53
    iget-object v2, p0, Lfr/testudo/spacecorsair/display/Drawable;->vertices:[F

    const/16 v3, 0x9

    aput v0, v2, v3

    .line 54
    iget-object v0, p0, Lfr/testudo/spacecorsair/display/Drawable;->vertices:[F

    const/16 v2, 0xa

    aput v1, v0, v2

    .line 55
    iget-object v0, p0, Lfr/testudo/spacecorsair/display/Drawable;->vertices:[F

    const/16 v1, 0xb

    aput v5, v0, v1

    .line 59
    iget-object v0, p0, Lfr/testudo/spacecorsair/display/Drawable;->vertexBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, v6}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 60
    iget-object v0, p0, Lfr/testudo/spacecorsair/display/Drawable;->vertexBuffer:Ljava/nio/FloatBuffer;

    iget-object v1, p0, Lfr/testudo/spacecorsair/display/Drawable;->vertices:[F

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    .line 61
    iget-object v0, p0, Lfr/testudo/spacecorsair/display/Drawable;->vertexBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, v6}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 64
    return-void
.end method
