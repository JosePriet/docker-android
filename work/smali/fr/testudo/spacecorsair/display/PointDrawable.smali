.class public Lfr/testudo/spacecorsair/display/PointDrawable;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final coords:[F

.field static final icoords:[S

.field private static final mIndexBuffer:Ljava/nio/ShortBuffer;

.field private static final mVertexBuffer:Ljava/nio/FloatBuffer;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/4 v1, 0x0

    .line 20
    const/4 v0, 0x3

    new-array v0, v0, [F

    fill-array-data v0, :array_22

    sput-object v0, Lfr/testudo/spacecorsair/display/PointDrawable;->coords:[F

    .line 21
    const/4 v0, 0x1

    new-array v0, v0, [S

    aput-short v1, v0, v1

    sput-object v0, Lfr/testudo/spacecorsair/display/PointDrawable;->icoords:[S

    .line 24
    sget-object v0, Lfr/testudo/spacecorsair/display/PointDrawable;->coords:[F

    invoke-static {v0}, Lfr/testudo/spacecorsair/display/PointDrawable;->makeFloatBuffer([F)Ljava/nio/FloatBuffer;

    move-result-object v0

    sput-object v0, Lfr/testudo/spacecorsair/display/PointDrawable;->mVertexBuffer:Ljava/nio/FloatBuffer;

    .line 25
    sget-object v0, Lfr/testudo/spacecorsair/display/PointDrawable;->icoords:[S

    invoke-static {v0}, Lfr/testudo/spacecorsair/display/PointDrawable;->makeShortBuffer([S)Ljava/nio/ShortBuffer;

    move-result-object v0

    sput-object v0, Lfr/testudo/spacecorsair/display/PointDrawable;->mIndexBuffer:Ljava/nio/ShortBuffer;

    return-void

    .line 20
    nop

    :array_22
    .array-data 4
        0x0
        0x0
        0x0
    .end array-data
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    return-void
.end method

.method public static draw(Ljavax/microedition/khronos/opengles/GL10;FFFFFFZF)V
    .registers 16

    .prologue
    const v6, 0x8074

    const/4 v5, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    .line 50
    invoke-interface {p0}, Ljavax/microedition/khronos/opengles/GL10;->glLoadIdentity()V

    .line 51
    invoke-interface {p0, v6}, Ljavax/microedition/khronos/opengles/GL10;->glEnableClientState(I)V

    .line 55
    if-eqz p7, :cond_3b

    .line 56
    sget v0, Lfr/testudo/spacecorsair/engine/GameRenderer;->screenMidWidthX:I

    int-to-float v0, v0

    sub-float v0, p1, v0

    sget v1, Lfr/testudo/spacecorsair/engine/GameRenderer;->screenMidWidthY:I

    int-to-float v1, v1

    sub-float v1, p2, v1

    sget-object v2, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v2, v2, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->config:Lfr/testudo/spacecorsair/game/Config;

    iget v2, v2, Lfr/testudo/spacecorsair/game/Config;->Zindex:F

    neg-float v2, v2

    invoke-interface {p0, v0, v1, v2}, Ljavax/microedition/khronos/opengles/GL10;->glTranslatef(FFF)V

    .line 62
    :goto_22
    invoke-interface {p0, p8}, Ljavax/microedition/khronos/opengles/GL10;->glPointSize(F)V

    .line 64
    const/4 v0, 0x3

    const/16 v1, 0x1406

    sget-object v2, Lfr/testudo/spacecorsair/display/PointDrawable;->mVertexBuffer:Ljava/nio/FloatBuffer;

    invoke-interface {p0, v0, v1, v5, v2}, Ljavax/microedition/khronos/opengles/GL10;->glVertexPointer(IIILjava/nio/Buffer;)V

    .line 65
    invoke-interface {p0, p4, p5, p6, p3}, Ljavax/microedition/khronos/opengles/GL10;->glColor4f(FFFF)V

    .line 67
    const/4 v0, 0x1

    invoke-interface {p0, v5, v5, v0}, Ljavax/microedition/khronos/opengles/GL10;->glDrawArrays(III)V

    .line 70
    invoke-interface {p0, v6}, Ljavax/microedition/khronos/opengles/GL10;->glDisableClientState(I)V

    .line 71
    invoke-interface {p0, v4, v4, v4, v4}, Ljavax/microedition/khronos/opengles/GL10;->glColor4f(FFFF)V

    .line 73
    return-void

    .line 60
    :cond_3b
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->camera:Lfr/testudo/spacecorsair/engine/Camera;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/Camera;->centerPosition:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v0, v0, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    sub-float v0, p1, v0

    sget-object v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v1, v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->camera:Lfr/testudo/spacecorsair/engine/Camera;

    iget-object v1, v1, Lfr/testudo/spacecorsair/engine/Camera;->centerPosition:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v1, v1, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    sub-float v1, p2, v1

    sget-object v2, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v2, v2, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->config:Lfr/testudo/spacecorsair/game/Config;

    iget v2, v2, Lfr/testudo/spacecorsair/game/Config;->Zindex:F

    neg-float v2, v2

    sget-object v3, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v3, v3, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->camera:Lfr/testudo/spacecorsair/engine/Camera;

    iget v3, v3, Lfr/testudo/spacecorsair/engine/Camera;->curZDecal:F

    sub-float/2addr v2, v3

    invoke-interface {p0, v0, v1, v2}, Ljavax/microedition/khronos/opengles/GL10;->glTranslatef(FFF)V

    goto :goto_22
.end method

.method private static makeFloatBuffer([F)Ljava/nio/FloatBuffer;
    .registers 3

    .prologue
    .line 29
    array-length v0, p0

    mul-int/lit8 v0, v0, 0x4

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 30
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 31
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v0

    .line 32
    invoke-virtual {v0, p0}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    .line 33
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 34
    return-object v0
.end method

.method private static makeShortBuffer([S)Ljava/nio/ShortBuffer;
    .registers 3

    .prologue
    .line 39
    array-length v0, p0

    mul-int/lit8 v0, v0, 0x4

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 40
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 41
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    move-result-object v0

    .line 42
    invoke-virtual {v0, p0}, Ljava/nio/ShortBuffer;->put([S)Ljava/nio/ShortBuffer;

    .line 43
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/nio/ShortBuffer;->position(I)Ljava/nio/Buffer;

    .line 44
    return-object v0
.end method
