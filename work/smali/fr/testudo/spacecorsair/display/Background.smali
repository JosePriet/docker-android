.class public Lfr/testudo/spacecorsair/display/Background;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lfr/testudo/spacecorsair/display/Background$BackImage;
    }
.end annotation


# static fields
.field public static final TEXTURE_SIZE:I = 0x320

.field public static final TEXTURE_SIZE_2:I = 0x320

.field public static final factor:F = 16.0f

.field private static texture_stars:[F


# instance fields
.field public decalFog:F

.field public decalGrid:F

.field public decalStars:F

.field public defaultVector2Pos:Lfr/testudo/spacecorsair/engine/Vector2;

.field public myFogTexture:Lfr/testudo/spacecorsair/display/Texture;

.field public mySquareTexture:Lfr/testudo/spacecorsair/display/Texture;

.field public myStartsTexture:Lfr/testudo/spacecorsair/display/Texture;

.field private textureBufferStars:Ljava/nio/FloatBuffer;

.field private vertexBufferStars:Ljava/nio/FloatBuffer;

.field private vertices:[F


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 28
    const/16 v0, 0x8

    new-array v0, v0, [F

    fill-array-data v0, :array_a

    sput-object v0, Lfr/testudo/spacecorsair/display/Background;->texture_stars:[F

    return-void

    :array_a
    .array-data 4
        0x0
        0x0
        0x41800000    # 16.0f
        0x0
        0x0
        0x41800000    # 16.0f
        0x41800000    # 16.0f
        0x41800000    # 16.0f
    .end array-data
.end method

.method public constructor <init>(Lfr/testudo/spacecorsair/engine/Vector2;Lfr/testudo/spacecorsair/display/Texture;Lfr/testudo/spacecorsair/display/Texture;Lfr/testudo/spacecorsair/display/Texture;)V
    .registers 10

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    const/4 v0, 0x0

    iput-object v0, p0, Lfr/testudo/spacecorsair/display/Background;->vertices:[F

    .line 39
    const v0, 0x3d4ccccd    # 0.05f

    iput v0, p0, Lfr/testudo/spacecorsair/display/Background;->decalStars:F

    .line 40
    const v0, 0x3f4ccccd    # 0.8f

    iput v0, p0, Lfr/testudo/spacecorsair/display/Background;->decalFog:F

    .line 41
    const v0, 0x3f147ae1    # 0.58f

    iput v0, p0, Lfr/testudo/spacecorsair/display/Background;->decalGrid:F

    .line 136
    new-instance v0, Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-direct {v0, v3, v3}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>(FF)V

    iput-object v0, p0, Lfr/testudo/spacecorsair/display/Background;->defaultVector2Pos:Lfr/testudo/spacecorsair/engine/Vector2;

    .line 105
    iput-object p2, p0, Lfr/testudo/spacecorsair/display/Background;->myStartsTexture:Lfr/testudo/spacecorsair/display/Texture;

    .line 106
    iput-object p3, p0, Lfr/testudo/spacecorsair/display/Background;->myFogTexture:Lfr/testudo/spacecorsair/display/Texture;

    .line 107
    iput-object p4, p0, Lfr/testudo/spacecorsair/display/Background;->mySquareTexture:Lfr/testudo/spacecorsair/display/Texture;

    .line 111
    const/16 v0, 0xc

    new-array v0, v0, [F

    iget v1, p1, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    neg-float v1, v1

    aput v1, v0, v4

    const/4 v1, 0x1

    iget v2, p1, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    neg-float v2, v2

    aput v2, v0, v1

    const/4 v1, 0x2

    aput v3, v0, v1

    const/4 v1, 0x3

    iget v2, p1, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    aput v2, v0, v1

    const/4 v1, 0x4

    iget v2, p1, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    neg-float v2, v2

    aput v2, v0, v1

    const/4 v1, 0x5

    aput v3, v0, v1

    const/4 v1, 0x6

    iget v2, p1, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    neg-float v2, v2

    aput v2, v0, v1

    const/4 v1, 0x7

    iget v2, p1, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    aput v2, v0, v1

    const/16 v1, 0x8

    aput v3, v0, v1

    const/16 v1, 0x9

    iget v2, p1, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    aput v2, v0, v1

    const/16 v1, 0xa

    iget v2, p1, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    aput v2, v0, v1

    const/16 v1, 0xb

    aput v3, v0, v1

    iput-object v0, p0, Lfr/testudo/spacecorsair/display/Background;->vertices:[F

    .line 119
    iget-object v0, p0, Lfr/testudo/spacecorsair/display/Background;->vertices:[F

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x4

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 120
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 121
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lfr/testudo/spacecorsair/display/Background;->vertexBufferStars:Ljava/nio/FloatBuffer;

    .line 122
    iget-object v0, p0, Lfr/testudo/spacecorsair/display/Background;->vertexBufferStars:Ljava/nio/FloatBuffer;

    iget-object v1, p0, Lfr/testudo/spacecorsair/display/Background;->vertices:[F

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    .line 123
    iget-object v0, p0, Lfr/testudo/spacecorsair/display/Background;->vertexBufferStars:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, v4}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 126
    sget-object v0, Lfr/testudo/spacecorsair/display/Background;->texture_stars:[F

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x4

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 127
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 128
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lfr/testudo/spacecorsair/display/Background;->textureBufferStars:Ljava/nio/FloatBuffer;

    .line 129
    iget-object v0, p0, Lfr/testudo/spacecorsair/display/Background;->textureBufferStars:Ljava/nio/FloatBuffer;

    sget-object v1, Lfr/testudo/spacecorsair/display/Background;->texture_stars:[F

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    .line 130
    iget-object v0, p0, Lfr/testudo/spacecorsair/display/Background;->textureBufferStars:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, v4}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 134
    return-void
.end method

.method static synthetic access$000()[F
    .registers 1

    .prologue
    .line 12
    sget-object v0, Lfr/testudo/spacecorsair/display/Background;->texture_stars:[F

    return-object v0
.end method

.method private drawDecal(Ljavax/microedition/khronos/opengles/GL10;Lfr/testudo/spacecorsair/display/Texture;FFFFFFZ)V
    .registers 15

    .prologue
    .line 190
    iget-object v0, p0, Lfr/testudo/spacecorsair/display/Background;->defaultVector2Pos:Lfr/testudo/spacecorsair/engine/Vector2;

    .line 191
    sget-object v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v1, v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->camera:Lfr/testudo/spacecorsair/engine/Camera;

    if-eqz v1, :cond_2e

    .line 193
    sget v1, Lfr/testudo/spacecorsair/engine/GameRenderer;->screenMidWidthX:I

    neg-int v1, v1

    int-to-float v1, v1

    sget-object v2, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v2, v2, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->playerShip:Lfr/testudo/spacecorsair/business/player/PlayerShip;

    iget-object v2, v2, Lfr/testudo/spacecorsair/business/player/PlayerShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v2, v2, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    mul-float/2addr v2, p3

    const/high16 v3, 0x44c80000    # 1600.0f

    rem-float/2addr v2, v3

    add-float/2addr v1, v2

    iput v1, v0, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    .line 194
    sget v1, Lfr/testudo/spacecorsair/engine/GameRenderer;->screenMidWidthY:I

    neg-int v1, v1

    int-to-float v1, v1

    sget-object v2, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v2, v2, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->playerShip:Lfr/testudo/spacecorsair/business/player/PlayerShip;

    iget-object v2, v2, Lfr/testudo/spacecorsair/business/player/PlayerShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v2, v2, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    mul-float/2addr v2, p3

    const/high16 v3, 0x44c80000    # 1600.0f

    rem-float/2addr v2, v3

    add-float/2addr v1, v2

    iput v1, v0, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    .line 197
    :cond_2e
    const/16 v1, 0xde1

    invoke-interface {p1, v1}, Ljavax/microedition/khronos/opengles/GL10;->glEnable(I)V

    .line 198
    const/16 v1, 0xde1

    iget v2, p2, Lfr/testudo/spacecorsair/display/Texture;->name:I

    invoke-interface {p1, v1, v2}, Ljavax/microedition/khronos/opengles/GL10;->glBindTexture(II)V

    .line 199
    invoke-interface {p1}, Ljavax/microedition/khronos/opengles/GL10;->glLoadIdentity()V

    .line 200
    if-eqz p9, :cond_92

    .line 201
    iget v1, v0, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    neg-float v1, v1

    iget v0, v0, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    neg-float v0, v0

    const/high16 v2, -0x3ee00000    # -10.0f

    invoke-interface {p1, v1, v0, v2}, Ljavax/microedition/khronos/opengles/GL10;->glTranslatef(FFF)V

    .line 205
    :goto_4a
    const v0, 0x8074

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glEnableClientState(I)V

    .line 206
    const v0, 0x8078

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glEnableClientState(I)V

    .line 210
    invoke-interface {p1, p5, p6, p7, p8}, Ljavax/microedition/khronos/opengles/GL10;->glColor4f(FFFF)V

    .line 212
    const/4 v0, 0x3

    const/16 v1, 0x1406

    const/4 v2, 0x0

    iget-object v3, p0, Lfr/testudo/spacecorsair/display/Background;->vertexBufferStars:Ljava/nio/FloatBuffer;

    invoke-interface {p1, v0, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glVertexPointer(IIILjava/nio/Buffer;)V

    .line 213
    const/4 v0, 0x2

    const/16 v1, 0x1406

    const/4 v2, 0x0

    iget-object v3, p0, Lfr/testudo/spacecorsair/display/Background;->textureBufferStars:Ljava/nio/FloatBuffer;

    invoke-interface {p1, v0, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glTexCoordPointer(IIILjava/nio/Buffer;)V

    .line 217
    const/4 v0, 0x5

    const/4 v1, 0x0

    iget-object v2, p0, Lfr/testudo/spacecorsair/display/Background;->vertices:[F

    array-length v2, v2

    div-int/lit8 v2, v2, 0x3

    invoke-interface {p1, v0, v1, v2}, Ljavax/microedition/khronos/opengles/GL10;->glDrawArrays(III)V

    .line 220
    const/high16 v0, 0x3f800000    # 1.0f

    const/high16 v1, 0x3f800000    # 1.0f

    const/high16 v2, 0x3f800000    # 1.0f

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-interface {p1, v0, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glColor4f(FFFF)V

    .line 223
    const v0, 0x8074

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glDisableClientState(I)V

    .line 224
    const v0, 0x8078

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glDisableClientState(I)V

    .line 225
    const/16 v0, 0xde1

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glDisable(I)V

    .line 227
    return-void

    .line 203
    :cond_92
    iget v1, v0, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    neg-float v1, v1

    iget v0, v0, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    neg-float v0, v0

    sget-object v2, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v2, v2, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->config:Lfr/testudo/spacecorsair/game/Config;

    iget v2, v2, Lfr/testudo/spacecorsair/game/Config;->Zindex:F

    neg-float v2, v2

    const/high16 v3, 0x41200000    # 10.0f

    sub-float/2addr v2, v3

    sget-object v3, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v3, v3, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->camera:Lfr/testudo/spacecorsair/engine/Camera;

    iget v3, v3, Lfr/testudo/spacecorsair/engine/Camera;->curZDecal:F

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    sub-float/2addr v2, v3

    invoke-interface {p1, v1, v0, v2}, Ljavax/microedition/khronos/opengles/GL10;->glTranslatef(FFF)V

    goto :goto_4a
.end method

.method private drawImage(Ljavax/microedition/khronos/opengles/GL10;Lfr/testudo/spacecorsair/display/Background$BackImage;FFFFFFZ)V
    .registers 15

    .prologue
    .line 149
    iget-object v0, p0, Lfr/testudo/spacecorsair/display/Background;->defaultVector2Pos:Lfr/testudo/spacecorsair/engine/Vector2;

    .line 150
    sget-object v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v1, v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->camera:Lfr/testudo/spacecorsair/engine/Camera;

    if-eqz v1, :cond_34

    .line 152
    sget v1, Lfr/testudo/spacecorsair/engine/GameRenderer;->screenMidWidthX:I

    neg-int v1, v1

    int-to-float v1, v1

    sget-object v2, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v2, v2, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->playerShip:Lfr/testudo/spacecorsair/business/player/PlayerShip;

    iget-object v2, v2, Lfr/testudo/spacecorsair/business/player/PlayerShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v2, v2, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    mul-float/2addr v2, p3

    iget v3, p2, Lfr/testudo/spacecorsair/display/Background$BackImage;->texture_size:I

    mul-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    rem-float/2addr v2, v3

    add-float/2addr v1, v2

    iput v1, v0, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    .line 153
    sget v1, Lfr/testudo/spacecorsair/engine/GameRenderer;->screenMidWidthY:I

    neg-int v1, v1

    int-to-float v1, v1

    sget-object v2, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v2, v2, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->playerShip:Lfr/testudo/spacecorsair/business/player/PlayerShip;

    iget-object v2, v2, Lfr/testudo/spacecorsair/business/player/PlayerShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v2, v2, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    mul-float/2addr v2, p3

    iget v3, p2, Lfr/testudo/spacecorsair/display/Background$BackImage;->texture_size:I

    mul-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    rem-float/2addr v2, v3

    add-float/2addr v1, v2

    iput v1, v0, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    .line 156
    :cond_34
    const/16 v1, 0xde1

    invoke-interface {p1, v1}, Ljavax/microedition/khronos/opengles/GL10;->glEnable(I)V

    .line 157
    const/16 v1, 0xde1

    iget-object v2, p2, Lfr/testudo/spacecorsair/display/Background$BackImage;->texture:Lfr/testudo/spacecorsair/display/Texture;

    iget v2, v2, Lfr/testudo/spacecorsair/display/Texture;->name:I

    invoke-interface {p1, v1, v2}, Ljavax/microedition/khronos/opengles/GL10;->glBindTexture(II)V

    .line 158
    invoke-interface {p1}, Ljavax/microedition/khronos/opengles/GL10;->glLoadIdentity()V

    .line 159
    if-eqz p9, :cond_9a

    .line 160
    iget v1, v0, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    neg-float v1, v1

    iget v0, v0, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    neg-float v0, v0

    const/high16 v2, -0x3ee00000    # -10.0f

    invoke-interface {p1, v1, v0, v2}, Ljavax/microedition/khronos/opengles/GL10;->glTranslatef(FFF)V

    .line 164
    :goto_52
    const v0, 0x8074

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glEnableClientState(I)V

    .line 165
    const v0, 0x8078

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glEnableClientState(I)V

    .line 169
    invoke-interface {p1, p5, p6, p7, p8}, Ljavax/microedition/khronos/opengles/GL10;->glColor4f(FFFF)V

    .line 171
    const/4 v0, 0x3

    const/16 v1, 0x1406

    const/4 v2, 0x0

    iget-object v3, p2, Lfr/testudo/spacecorsair/display/Background$BackImage;->vertexBuffer:Ljava/nio/FloatBuffer;

    invoke-interface {p1, v0, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glVertexPointer(IIILjava/nio/Buffer;)V

    .line 172
    const/4 v0, 0x2

    const/16 v1, 0x1406

    const/4 v2, 0x0

    iget-object v3, p2, Lfr/testudo/spacecorsair/display/Background$BackImage;->textureBuffer:Ljava/nio/FloatBuffer;

    invoke-interface {p1, v0, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glTexCoordPointer(IIILjava/nio/Buffer;)V

    .line 176
    const/4 v0, 0x5

    const/4 v1, 0x0

    iget-object v2, p0, Lfr/testudo/spacecorsair/display/Background;->vertices:[F

    array-length v2, v2

    div-int/lit8 v2, v2, 0x3

    invoke-interface {p1, v0, v1, v2}, Ljavax/microedition/khronos/opengles/GL10;->glDrawArrays(III)V

    .line 179
    const/high16 v0, 0x3f800000    # 1.0f

    const/high16 v1, 0x3f800000    # 1.0f

    const/high16 v2, 0x3f800000    # 1.0f

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-interface {p1, v0, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glColor4f(FFFF)V

    .line 182
    const v0, 0x8074

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glDisableClientState(I)V

    .line 183
    const v0, 0x8078

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glDisableClientState(I)V

    .line 184
    const/16 v0, 0xde1

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glDisable(I)V

    .line 186
    return-void

    .line 162
    :cond_9a
    iget v1, v0, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    neg-float v1, v1

    iget v0, v0, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    neg-float v0, v0

    sget-object v2, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v2, v2, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->config:Lfr/testudo/spacecorsair/game/Config;

    iget v2, v2, Lfr/testudo/spacecorsair/game/Config;->Zindex:F

    neg-float v2, v2

    const/high16 v3, 0x41200000    # 10.0f

    sub-float/2addr v2, v3

    sget-object v3, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v3, v3, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->camera:Lfr/testudo/spacecorsair/engine/Camera;

    iget v3, v3, Lfr/testudo/spacecorsair/engine/Camera;->curZDecal:F

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    sub-float/2addr v2, v3

    invoke-interface {p1, v1, v0, v2}, Ljavax/microedition/khronos/opengles/GL10;->glTranslatef(FFF)V

    goto :goto_52
.end method

.method private drawStars(Ljavax/microedition/khronos/opengles/GL10;)V
    .registers 2

    .prologue
    .line 144
    return-void
.end method


# virtual methods
.method public draw(Ljavax/microedition/khronos/opengles/GL10;)V
    .registers 12

    .prologue
    const/high16 v4, 0x3f800000    # 1.0f

    .line 232
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/Game;->currentLevel:Lfr/testudo/spacecorsair/game/levels/Level;

    iget-object v2, v0, Lfr/testudo/spacecorsair/game/levels/Level;->backGroundImage:Lfr/testudo/spacecorsair/display/Background$BackImage;

    iget v3, p0, Lfr/testudo/spacecorsair/display/Background;->decalStars:F

    const/4 v9, 0x1

    move-object v0, p0

    move-object v1, p1

    move v5, v4

    move v6, v4

    move v7, v4

    move v8, v4

    invoke-direct/range {v0 .. v9}, Lfr/testudo/spacecorsair/display/Background;->drawImage(Ljavax/microedition/khronos/opengles/GL10;Lfr/testudo/spacecorsair/display/Background$BackImage;FFFFFFZ)V

    .line 240
    return-void
.end method

.method public drawFog(Ljavax/microedition/khronos/opengles/GL10;)V
    .registers 12

    .prologue
    const/high16 v4, 0x3f800000    # 1.0f

    .line 243
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-boolean v0, v0, Lfr/testudo/spacecorsair/game/Game;->mapMode:Z

    if-nez v0, :cond_18

    .line 244
    iget-object v2, p0, Lfr/testudo/spacecorsair/display/Background;->myFogTexture:Lfr/testudo/spacecorsair/display/Texture;

    iget v3, p0, Lfr/testudo/spacecorsair/display/Background;->decalFog:F

    const/4 v9, 0x0

    move-object v0, p0

    move-object v1, p1

    move v5, v4

    move v6, v4

    move v7, v4

    move v8, v4

    invoke-direct/range {v0 .. v9}, Lfr/testudo/spacecorsair/display/Background;->drawDecal(Ljavax/microedition/khronos/opengles/GL10;Lfr/testudo/spacecorsair/display/Texture;FFFFFFZ)V

    .line 246
    :cond_18
    return-void
.end method
