.class public final Lfr/testudo/spacecorsair/mod/ModFx$Sprite;
.super Lfr/testudo/spacecorsair/display/Drawable;
.source "ModFx.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfr/testudo/spacecorsair/mod/ModFx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Sprite"
.end annotation


# instance fields
.field additive:Z

.field private bu0:F

.field private bu1:F

.field private bv0:F

.field private bv1:F

.field flat:Z

.field h:F

.field repeatT:Z

.field u0:F

.field u1:F

.field private uv:Ljava/nio/FloatBuffer;

.field v0:F

.field v1:F

.field w:F


# direct methods
.method constructor <init>()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    .line 64
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lfr/testudo/spacecorsair/display/Drawable;-><init>(ILfr/testudo/spacecorsair/display/Texture;)V

    .line 36
    iput v2, p0, Lfr/testudo/spacecorsair/mod/ModFx$Sprite;->w:F

    iput v2, p0, Lfr/testudo/spacecorsair/mod/ModFx$Sprite;->h:F

    .line 39
    iput v3, p0, Lfr/testudo/spacecorsair/mod/ModFx$Sprite;->u0:F

    iput v3, p0, Lfr/testudo/spacecorsair/mod/ModFx$Sprite;->v0:F

    iput v2, p0, Lfr/testudo/spacecorsair/mod/ModFx$Sprite;->u1:F

    iput v2, p0, Lfr/testudo/spacecorsair/mod/ModFx$Sprite;->v1:F

    .line 44
    iput v3, p0, Lfr/testudo/spacecorsair/mod/ModFx$Sprite;->bu0:F

    iput v3, p0, Lfr/testudo/spacecorsair/mod/ModFx$Sprite;->bv0:F

    iput v2, p0, Lfr/testudo/spacecorsair/mod/ModFx$Sprite;->bu1:F

    iput v2, p0, Lfr/testudo/spacecorsair/mod/ModFx$Sprite;->bv1:F

    .line 65
    return-void
.end method

.method private uvBuf()Ljava/nio/FloatBuffer;
    .registers 5

    .prologue
    const/4 v3, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    .line 52
    iget v0, p0, Lfr/testudo/spacecorsair/mod/ModFx$Sprite;->u0:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_21

    iget v0, p0, Lfr/testudo/spacecorsair/mod/ModFx$Sprite;->v0:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_21

    iget v0, p0, Lfr/testudo/spacecorsair/mod/ModFx$Sprite;->u1:F

    cmpl-float v0, v0, v2

    if-nez v0, :cond_21

    iget v0, p0, Lfr/testudo/spacecorsair/mod/ModFx$Sprite;->v1:F

    cmpl-float v0, v0, v2

    if-nez v0, :cond_21

    # getter for: Lfr/testudo/spacecorsair/mod/ModFx;->UV:Ljava/nio/FloatBuffer;
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModFx;->access$000()Ljava/nio/FloatBuffer;

    move-result-object v0

    .line 60
    :goto_20
    return-object v0

    .line 53
    :cond_21
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModFx$Sprite;->uv:Ljava/nio/FloatBuffer;

    if-eqz v0, :cond_45

    iget v0, p0, Lfr/testudo/spacecorsair/mod/ModFx$Sprite;->bu0:F

    iget v1, p0, Lfr/testudo/spacecorsair/mod/ModFx$Sprite;->u0:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_45

    iget v0, p0, Lfr/testudo/spacecorsair/mod/ModFx$Sprite;->bv0:F

    iget v1, p0, Lfr/testudo/spacecorsair/mod/ModFx$Sprite;->v0:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_45

    iget v0, p0, Lfr/testudo/spacecorsair/mod/ModFx$Sprite;->bu1:F

    iget v1, p0, Lfr/testudo/spacecorsair/mod/ModFx$Sprite;->u1:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_45

    iget v0, p0, Lfr/testudo/spacecorsair/mod/ModFx$Sprite;->bv1:F

    iget v1, p0, Lfr/testudo/spacecorsair/mod/ModFx$Sprite;->v1:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_a7

    .line 54
    :cond_45
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModFx$Sprite;->uv:Ljava/nio/FloatBuffer;

    if-nez v0, :cond_53

    const/16 v0, 0x8

    new-array v0, v0, [F

    # invokes: Lfr/testudo/spacecorsair/mod/ModFx;->buf([F)Ljava/nio/FloatBuffer;
    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModFx;->access$100([F)Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lfr/testudo/spacecorsair/mod/ModFx$Sprite;->uv:Ljava/nio/FloatBuffer;

    .line 55
    :cond_53
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModFx$Sprite;->uv:Ljava/nio/FloatBuffer;

    iget v1, p0, Lfr/testudo/spacecorsair/mod/ModFx$Sprite;->u0:F

    invoke-virtual {v0, v3, v1}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModFx$Sprite;->uv:Ljava/nio/FloatBuffer;

    const/4 v1, 0x1

    iget v2, p0, Lfr/testudo/spacecorsair/mod/ModFx$Sprite;->v0:F

    invoke-virtual {v0, v1, v2}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModFx$Sprite;->uv:Ljava/nio/FloatBuffer;

    const/4 v1, 0x2

    iget v2, p0, Lfr/testudo/spacecorsair/mod/ModFx$Sprite;->u1:F

    invoke-virtual {v0, v1, v2}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModFx$Sprite;->uv:Ljava/nio/FloatBuffer;

    const/4 v1, 0x3

    iget v2, p0, Lfr/testudo/spacecorsair/mod/ModFx$Sprite;->v0:F

    invoke-virtual {v0, v1, v2}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 56
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModFx$Sprite;->uv:Ljava/nio/FloatBuffer;

    const/4 v1, 0x4

    iget v2, p0, Lfr/testudo/spacecorsair/mod/ModFx$Sprite;->u0:F

    invoke-virtual {v0, v1, v2}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModFx$Sprite;->uv:Ljava/nio/FloatBuffer;

    const/4 v1, 0x5

    iget v2, p0, Lfr/testudo/spacecorsair/mod/ModFx$Sprite;->v1:F

    invoke-virtual {v0, v1, v2}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModFx$Sprite;->uv:Ljava/nio/FloatBuffer;

    const/4 v1, 0x6

    iget v2, p0, Lfr/testudo/spacecorsair/mod/ModFx$Sprite;->u1:F

    invoke-virtual {v0, v1, v2}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModFx$Sprite;->uv:Ljava/nio/FloatBuffer;

    const/4 v1, 0x7

    iget v2, p0, Lfr/testudo/spacecorsair/mod/ModFx$Sprite;->v1:F

    invoke-virtual {v0, v1, v2}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 57
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModFx$Sprite;->uv:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, v3}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 58
    iget v0, p0, Lfr/testudo/spacecorsair/mod/ModFx$Sprite;->u0:F

    iput v0, p0, Lfr/testudo/spacecorsair/mod/ModFx$Sprite;->bu0:F

    iget v0, p0, Lfr/testudo/spacecorsair/mod/ModFx$Sprite;->v0:F

    iput v0, p0, Lfr/testudo/spacecorsair/mod/ModFx$Sprite;->bv0:F

    iget v0, p0, Lfr/testudo/spacecorsair/mod/ModFx$Sprite;->u1:F

    iput v0, p0, Lfr/testudo/spacecorsair/mod/ModFx$Sprite;->bu1:F

    iget v0, p0, Lfr/testudo/spacecorsair/mod/ModFx$Sprite;->v1:F

    iput v0, p0, Lfr/testudo/spacecorsair/mod/ModFx$Sprite;->bv1:F

    .line 60
    :cond_a7
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModFx$Sprite;->uv:Ljava/nio/FloatBuffer;

    goto/16 :goto_20
.end method


# virtual methods
.method public draw(Ljavax/microedition/khronos/opengles/GL10;Lfr/testudo/spacecorsair/engine/Vector2;FZFFFFZZ)V
    .registers 16

    .prologue
    .line 69
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModFx;->PUMP:Lfr/testudo/spacecorsair/mod/ModFx$Sprite;

    if-ne p0, v0, :cond_8

    .line 70
    invoke-static {p1}, Lfr/testudo/spacecorsair/mod/ModArt;->pump(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 116
    :cond_7
    :goto_7
    return-void

    .line 73
    :cond_8
    iget-object v1, p0, Lfr/testudo/spacecorsair/mod/ModFx$Sprite;->myTexture:Lfr/testudo/spacecorsair/display/Texture;

    .line 74
    if-eqz v1, :cond_7

    .line 75
    instance-of v0, v1, Lfr/testudo/spacecorsair/mod/ModArt$Lazy;

    if-eqz v0, :cond_16

    move-object v0, v1

    check-cast v0, Lfr/testudo/spacecorsair/mod/ModArt$Lazy;

    invoke-static {p1, v0}, Lfr/testudo/spacecorsair/mod/ModArt;->use(Ljavax/microedition/khronos/opengles/GL10;Lfr/testudo/spacecorsair/mod/ModArt$Lazy;)V

    .line 76
    :cond_16
    iget-boolean v0, p0, Lfr/testudo/spacecorsair/mod/ModFx$Sprite;->additive:Z

    if-eqz v0, :cond_20

    const/16 v0, 0x302

    const/4 v2, 0x1

    invoke-interface {p1, v0, v2}, Ljavax/microedition/khronos/opengles/GL10;->glBlendFunc(II)V

    .line 77
    :cond_20
    const/16 v0, 0xde1

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glEnable(I)V

    .line 78
    const/16 v0, 0xde1

    iget v1, v1, Lfr/testudo/spacecorsair/display/Texture;->name:I

    invoke-interface {p1, v0, v1}, Ljavax/microedition/khronos/opengles/GL10;->glBindTexture(II)V

    .line 79
    invoke-interface {p1}, Ljavax/microedition/khronos/opengles/GL10;->glLoadIdentity()V

    .line 80
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->config:Lfr/testudo/spacecorsair/game/Config;

    iget v0, v0, Lfr/testudo/spacecorsair/game/Config;->Zindex:F

    neg-float v1, v0

    if-eqz p9, :cond_139

    const/4 v0, 0x0

    :goto_39
    sub-float v0, v1, v0

    .line 81
    if-eqz p4, :cond_141

    .line 82
    iget v1, p2, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    sget v2, Lfr/testudo/spacecorsair/engine/GameRenderer;->screenMidWidthX:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    iget v2, p2, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    sget v3, Lfr/testudo/spacecorsair/engine/GameRenderer;->screenMidWidthY:I

    int-to-float v3, v3

    sub-float/2addr v2, v3

    invoke-interface {p1, v1, v2, v0}, Ljavax/microedition/khronos/opengles/GL10;->glTranslatef(FFF)V

    .line 86
    :goto_4c
    const v0, 0x8074

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glEnableClientState(I)V

    .line 87
    const v0, 0x8078

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glEnableClientState(I)V

    .line 88
    invoke-interface {p1, p6, p7, p8, p5}, Ljavax/microedition/khronos/opengles/GL10;->glColor4f(FFFF)V

    .line 89
    const/4 v0, 0x3

    const/16 v1, 0x1406

    const/4 v2, 0x0

    # getter for: Lfr/testudo/spacecorsair/mod/ModFx;->QUAD:Ljava/nio/FloatBuffer;
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModFx;->access$200()Ljava/nio/FloatBuffer;

    move-result-object v3

    invoke-interface {p1, v0, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glVertexPointer(IIILjava/nio/Buffer;)V

    .line 90
    const/4 v0, 0x2

    const/16 v1, 0x1406

    const/4 v2, 0x0

    invoke-direct {p0}, Lfr/testudo/spacecorsair/mod/ModFx$Sprite;->uvBuf()Ljava/nio/FloatBuffer;

    move-result-object v3

    invoke-interface {p1, v0, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glTexCoordPointer(IIILjava/nio/Buffer;)V

    .line 91
    iget-boolean v0, p0, Lfr/testudo/spacecorsair/mod/ModFx$Sprite;->repeatT:Z

    .line 92
    if-eqz v0, :cond_7f

    const/16 v1, 0xde1

    const/16 v2, 0x2803

    const v3, 0x46240400    # 10497.0f

    invoke-interface {p1, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glTexParameterf(IIF)V

    .line 93
    :cond_7f
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-interface {p1, p3, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glRotatef(FFFF)V

    .line 94
    iget v1, p0, Lfr/testudo/spacecorsair/mod/ModFx$Sprite;->w:F

    iget v2, p0, Lfr/testudo/spacecorsair/mod/ModFx$Sprite;->h:F

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-interface {p1, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glScalef(FFF)V

    .line 95
    iget-boolean v1, p0, Lfr/testudo/spacecorsair/mod/ModFx$Sprite;->flat:Z

    .line 96
    if-eqz v1, :cond_f3

    .line 98
    const/16 v2, 0x2300

    const/16 v3, 0x2200

    const v4, 0x47057000    # 34160.0f

    invoke-interface {p1, v2, v3, v4}, Ljavax/microedition/khronos/opengles/GL10;->glTexEnvf(IIF)V

    .line 99
    const/16 v2, 0x2300

    const v3, 0x8571

    const v4, 0x45f00800    # 7681.0f

    invoke-interface {p1, v2, v3, v4}, Ljavax/microedition/khronos/opengles/GL10;->glTexEnvf(IIF)V

    .line 100
    const/16 v2, 0x2300

    const v3, 0x8580

    const v4, 0x47057700    # 34167.0f

    invoke-interface {p1, v2, v3, v4}, Ljavax/microedition/khronos/opengles/GL10;->glTexEnvf(IIF)V

    .line 101
    const/16 v2, 0x2300

    const v3, 0x8590

    const/high16 v4, 0x44400000    # 768.0f

    invoke-interface {p1, v2, v3, v4}, Ljavax/microedition/khronos/opengles/GL10;->glTexEnvf(IIF)V

    .line 102
    const/16 v2, 0x2300

    const v3, 0x8572

    const/high16 v4, 0x46040000    # 8448.0f

    invoke-interface {p1, v2, v3, v4}, Ljavax/microedition/khronos/opengles/GL10;->glTexEnvf(IIF)V

    .line 103
    const/16 v2, 0x2300

    const v3, 0x8588

    const v4, 0x45b81000    # 5890.0f

    invoke-interface {p1, v2, v3, v4}, Ljavax/microedition/khronos/opengles/GL10;->glTexEnvf(IIF)V

    .line 104
    const/16 v2, 0x2300

    const v3, 0x8598

    const v4, 0x44408000    # 770.0f

    invoke-interface {p1, v2, v3, v4}, Ljavax/microedition/khronos/opengles/GL10;->glTexEnvf(IIF)V

    .line 105
    const/16 v2, 0x2300

    const v3, 0x8589

    const v4, 0x47057700    # 34167.0f

    invoke-interface {p1, v2, v3, v4}, Ljavax/microedition/khronos/opengles/GL10;->glTexEnvf(IIF)V

    .line 106
    const/16 v2, 0x2300

    const v3, 0x8599

    const v4, 0x44408000    # 770.0f

    invoke-interface {p1, v2, v3, v4}, Ljavax/microedition/khronos/opengles/GL10;->glTexEnvf(IIF)V

    .line 108
    :cond_f3
    const/4 v2, 0x5

    const/4 v3, 0x0

    const/4 v4, 0x4

    invoke-interface {p1, v2, v3, v4}, Ljavax/microedition/khronos/opengles/GL10;->glDrawArrays(III)V

    .line 109
    if-eqz v1, :cond_104

    const/16 v1, 0x2300

    const/16 v2, 0x2200

    const/high16 v3, 0x46040000    # 8448.0f

    invoke-interface {p1, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glTexEnvf(IIF)V

    .line 110
    :cond_104
    if-eqz v0, :cond_110

    const/16 v0, 0xde1

    const/16 v1, 0x2803

    const v2, 0x47012f00    # 33071.0f

    invoke-interface {p1, v0, v1, v2}, Ljavax/microedition/khronos/opengles/GL10;->glTexParameterf(IIF)V

    .line 111
    :cond_110
    const/high16 v0, 0x3f800000    # 1.0f

    const/high16 v1, 0x3f800000    # 1.0f

    const/high16 v2, 0x3f800000    # 1.0f

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-interface {p1, v0, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glColor4f(FFFF)V

    .line 112
    const v0, 0x8074

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glDisableClientState(I)V

    .line 113
    const v0, 0x8078

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glDisableClientState(I)V

    .line 114
    const/16 v0, 0xde1

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glDisable(I)V

    .line 115
    iget-boolean v0, p0, Lfr/testudo/spacecorsair/mod/ModFx$Sprite;->additive:Z

    if-eqz v0, :cond_7

    const/16 v0, 0x302

    const/16 v1, 0x303

    invoke-interface {p1, v0, v1}, Ljavax/microedition/khronos/opengles/GL10;->glBlendFunc(II)V

    goto/16 :goto_7

    .line 80
    :cond_139
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->camera:Lfr/testudo/spacecorsair/engine/Camera;

    iget v0, v0, Lfr/testudo/spacecorsair/engine/Camera;->curZDecal:F

    goto/16 :goto_39

    .line 84
    :cond_141
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

    goto/16 :goto_4c
.end method

.method fullUV()V
    .registers 3

    .prologue
    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v0, 0x0

    .line 47
    iput v0, p0, Lfr/testudo/spacecorsair/mod/ModFx$Sprite;->u0:F

    iput v0, p0, Lfr/testudo/spacecorsair/mod/ModFx$Sprite;->v0:F

    iput v1, p0, Lfr/testudo/spacecorsair/mod/ModFx$Sprite;->u1:F

    iput v1, p0, Lfr/testudo/spacecorsair/mod/ModFx$Sprite;->v1:F

    .line 48
    const/4 v0, 0x0

    iput-boolean v0, p0, Lfr/testudo/spacecorsair/mod/ModFx$Sprite;->repeatT:Z

    .line 49
    return-void
.end method
