.class public Lfr/testudo/spacecorsair/display/Line;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private vertexBuffer:Ljava/nio/FloatBuffer;

.field private vertices:[F


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    const/4 v0, 0x6

    new-array v0, v0, [F

    iput-object v0, p0, Lfr/testudo/spacecorsair/display/Line;->vertices:[F

    .line 29
    iget-object v0, p0, Lfr/testudo/spacecorsair/display/Line;->vertices:[F

    array-length v0, v0

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

    iput-object v0, p0, Lfr/testudo/spacecorsair/display/Line;->vertexBuffer:Ljava/nio/FloatBuffer;

    .line 32
    return-void
.end method


# virtual methods
.method public draw(Ljavax/microedition/khronos/opengles/GL10;ZFFFFZ)V
    .registers 15

    .prologue
    const v6, 0x8074

    const/4 v5, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    .line 54
    invoke-interface {p1}, Ljavax/microedition/khronos/opengles/GL10;->glLoadIdentity()V

    .line 55
    if-nez p2, :cond_23

    .line 56
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->camera:Lfr/testudo/spacecorsair/engine/Camera;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/Camera;->centerPosition:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v0, v0, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    neg-float v1, v0

    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->camera:Lfr/testudo/spacecorsair/engine/Camera;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/Camera;->centerPosition:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v0, v0, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    neg-float v2, v0

    if-eqz p7, :cond_3d

    const/4 v0, 0x0

    :goto_20
    invoke-interface {p1, v1, v2, v0}, Ljavax/microedition/khronos/opengles/GL10;->glTranslatef(FFF)V

    .line 59
    :cond_23
    invoke-interface {p1, v6}, Ljavax/microedition/khronos/opengles/GL10;->glEnableClientState(I)V

    .line 60
    invoke-interface {p1, p4, p5, p6, p3}, Ljavax/microedition/khronos/opengles/GL10;->glColor4f(FFFF)V

    .line 61
    const/4 v0, 0x3

    const/16 v1, 0x1406

    iget-object v2, p0, Lfr/testudo/spacecorsair/display/Line;->vertexBuffer:Ljava/nio/FloatBuffer;

    invoke-interface {p1, v0, v1, v5, v2}, Ljavax/microedition/khronos/opengles/GL10;->glVertexPointer(IIILjava/nio/Buffer;)V

    .line 62
    const/4 v0, 0x1

    const/4 v1, 0x2

    invoke-interface {p1, v0, v5, v1}, Ljavax/microedition/khronos/opengles/GL10;->glDrawArrays(III)V

    .line 63
    invoke-interface {p1, v6}, Ljavax/microedition/khronos/opengles/GL10;->glDisableClientState(I)V

    .line 65
    invoke-interface {p1, v4, v4, v4, v4}, Ljavax/microedition/khronos/opengles/GL10;->glColor4f(FFFF)V

    .line 66
    return-void

    .line 56
    :cond_3d
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->config:Lfr/testudo/spacecorsair/game/Config;

    iget v0, v0, Lfr/testudo/spacecorsair/game/Config;->Zindex:F

    neg-float v0, v0

    sget-object v3, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v3, v3, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->camera:Lfr/testudo/spacecorsair/engine/Camera;

    iget v3, v3, Lfr/testudo/spacecorsair/engine/Camera;->curZDecal:F

    sub-float/2addr v0, v3

    goto :goto_20
.end method

.method public setDimension(Lfr/testudo/spacecorsair/engine/Vector2;Lfr/testudo/spacecorsair/engine/Vector2;)V
    .registers 8

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 36
    iget-object v0, p0, Lfr/testudo/spacecorsair/display/Line;->vertices:[F

    iget v1, p1, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    aput v1, v0, v3

    .line 37
    iget-object v0, p0, Lfr/testudo/spacecorsair/display/Line;->vertices:[F

    const/4 v1, 0x1

    iget v2, p1, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    aput v2, v0, v1

    .line 38
    iget-object v0, p0, Lfr/testudo/spacecorsair/display/Line;->vertices:[F

    const/4 v1, 0x2

    aput v4, v0, v1

    .line 40
    iget-object v0, p0, Lfr/testudo/spacecorsair/display/Line;->vertices:[F

    const/4 v1, 0x3

    iget v2, p2, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    aput v2, v0, v1

    .line 41
    iget-object v0, p0, Lfr/testudo/spacecorsair/display/Line;->vertices:[F

    const/4 v1, 0x4

    iget v2, p2, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    aput v2, v0, v1

    .line 42
    iget-object v0, p0, Lfr/testudo/spacecorsair/display/Line;->vertices:[F

    const/4 v1, 0x5

    aput v4, v0, v1

    .line 45
    iget-object v0, p0, Lfr/testudo/spacecorsair/display/Line;->vertexBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, v3}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 46
    iget-object v0, p0, Lfr/testudo/spacecorsair/display/Line;->vertexBuffer:Ljava/nio/FloatBuffer;

    iget-object v1, p0, Lfr/testudo/spacecorsair/display/Line;->vertices:[F

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    .line 47
    iget-object v0, p0, Lfr/testudo/spacecorsair/display/Line;->vertexBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, v3}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 49
    return-void
.end method
