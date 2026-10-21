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

.field ou0:F

.field ou1:F

.field ovBottom:F

.field ovTop:F

.field private ovUv:Ljava/nio/FloatBuffer;

.field overlay:Lfr/testudo/spacecorsair/display/Texture;

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

    .line 68
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

    .line 46
    iput v3, p0, Lfr/testudo/spacecorsair/mod/ModFx$Sprite;->ou0:F

    iput v2, p0, Lfr/testudo/spacecorsair/mod/ModFx$Sprite;->ou1:F

    iput v3, p0, Lfr/testudo/spacecorsair/mod/ModFx$Sprite;->ovTop:F

    iput v2, p0, Lfr/testudo/spacecorsair/mod/ModFx$Sprite;->ovBottom:F

    .line 48
    iput v3, p0, Lfr/testudo/spacecorsair/mod/ModFx$Sprite;->bu0:F

    iput v3, p0, Lfr/testudo/spacecorsair/mod/ModFx$Sprite;->bv0:F

    iput v2, p0, Lfr/testudo/spacecorsair/mod/ModFx$Sprite;->bu1:F

    iput v2, p0, Lfr/testudo/spacecorsair/mod/ModFx$Sprite;->bv1:F

    .line 69
    return-void
.end method

.method private uvBuf()Ljava/nio/FloatBuffer;
    .registers 5

    .prologue
    const/4 v3, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    .line 56
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

    .line 64
    :goto_20
    return-object v0

    .line 57
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

    .line 58
    :cond_45
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModFx$Sprite;->uv:Ljava/nio/FloatBuffer;

    if-nez v0, :cond_53

    const/16 v0, 0x8

    new-array v0, v0, [F

    # invokes: Lfr/testudo/spacecorsair/mod/ModFx;->buf([F)Ljava/nio/FloatBuffer;
    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModFx;->access$100([F)Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lfr/testudo/spacecorsair/mod/ModFx$Sprite;->uv:Ljava/nio/FloatBuffer;

    .line 59
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

    .line 60
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

    .line 61
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModFx$Sprite;->uv:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, v3}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 62
    iget v0, p0, Lfr/testudo/spacecorsair/mod/ModFx$Sprite;->u0:F

    iput v0, p0, Lfr/testudo/spacecorsair/mod/ModFx$Sprite;->bu0:F

    iget v0, p0, Lfr/testudo/spacecorsair/mod/ModFx$Sprite;->v0:F

    iput v0, p0, Lfr/testudo/spacecorsair/mod/ModFx$Sprite;->bv0:F

    iget v0, p0, Lfr/testudo/spacecorsair/mod/ModFx$Sprite;->u1:F

    iput v0, p0, Lfr/testudo/spacecorsair/mod/ModFx$Sprite;->bu1:F

    iget v0, p0, Lfr/testudo/spacecorsair/mod/ModFx$Sprite;->v1:F

    iput v0, p0, Lfr/testudo/spacecorsair/mod/ModFx$Sprite;->bv1:F

    .line 64
    :cond_a7
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModFx$Sprite;->uv:Ljava/nio/FloatBuffer;

    goto/16 :goto_20
.end method


# virtual methods
.method public draw(Ljavax/microedition/khronos/opengles/GL10;Lfr/testudo/spacecorsair/engine/Vector2;FZFFFFZZ)V
    .registers 18

    .prologue
    .line 73
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModFx;->PUMP:Lfr/testudo/spacecorsair/mod/ModFx$Sprite;

    if-ne p0, v0, :cond_8

    .line 74
    invoke-static {p1}, Lfr/testudo/spacecorsair/mod/ModArt;->pump(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 151
    :cond_7
    :goto_7
    return-void

    .line 77
    :cond_8
    iget-object v2, p0, Lfr/testudo/spacecorsair/mod/ModFx$Sprite;->myTexture:Lfr/testudo/spacecorsair/display/Texture;

    .line 78
    if-eqz v2, :cond_7

    .line 79
    iget-object v1, p0, Lfr/testudo/spacecorsair/mod/ModFx$Sprite;->overlay:Lfr/testudo/spacecorsair/display/Texture;

    .line 80
    instance-of v0, v1, Lfr/testudo/spacecorsair/mod/ModArt$Lazy;

    if-eqz v0, :cond_20

    move-object v0, v1

    .line 81
    check-cast v0, Lfr/testudo/spacecorsair/mod/ModArt$Lazy;

    invoke-static {p1, v0}, Lfr/testudo/spacecorsair/mod/ModArt;->use(Ljavax/microedition/khronos/opengles/GL10;Lfr/testudo/spacecorsair/mod/ModArt$Lazy;)V

    move-object v0, v1

    .line 82
    check-cast v0, Lfr/testudo/spacecorsair/mod/ModArt$Lazy;

    iget-boolean v0, v0, Lfr/testudo/spacecorsair/mod/ModArt$Lazy;->resident:Z

    if-nez v0, :cond_20

    const/4 v1, 0x0

    .line 84
    :cond_20
    instance-of v0, v2, Lfr/testudo/spacecorsair/mod/ModArt$Lazy;

    if-eqz v0, :cond_2a

    move-object v0, v2

    check-cast v0, Lfr/testudo/spacecorsair/mod/ModArt$Lazy;

    invoke-static {p1, v0}, Lfr/testudo/spacecorsair/mod/ModArt;->use(Ljavax/microedition/khronos/opengles/GL10;Lfr/testudo/spacecorsair/mod/ModArt$Lazy;)V

    .line 85
    :cond_2a
    iget-boolean v0, p0, Lfr/testudo/spacecorsair/mod/ModFx$Sprite;->additive:Z

    if-eqz v0, :cond_34

    const/16 v0, 0x302

    const/4 v3, 0x1

    invoke-interface {p1, v0, v3}, Ljavax/microedition/khronos/opengles/GL10;->glBlendFunc(II)V

    .line 86
    :cond_34
    const/16 v0, 0xde1

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glEnable(I)V

    .line 87
    const/16 v0, 0xde1

    iget v2, v2, Lfr/testudo/spacecorsair/display/Texture;->name:I

    invoke-interface {p1, v0, v2}, Ljavax/microedition/khronos/opengles/GL10;->glBindTexture(II)V

    .line 88
    invoke-interface {p1}, Ljavax/microedition/khronos/opengles/GL10;->glLoadIdentity()V

    .line 89
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->config:Lfr/testudo/spacecorsair/game/Config;

    iget v0, v0, Lfr/testudo/spacecorsair/game/Config;->Zindex:F

    neg-float v2, v0

    if-eqz p9, :cond_23a

    const/4 v0, 0x0

    :goto_4d
    sub-float v0, v2, v0

    .line 90
    if-eqz p4, :cond_242

    .line 91
    iget v2, p2, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    sget v3, Lfr/testudo/spacecorsair/engine/GameRenderer;->screenMidWidthX:I

    int-to-float v3, v3

    sub-float/2addr v2, v3

    iget v3, p2, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    sget v4, Lfr/testudo/spacecorsair/engine/GameRenderer;->screenMidWidthY:I

    int-to-float v4, v4

    sub-float/2addr v3, v4

    invoke-interface {p1, v2, v3, v0}, Ljavax/microedition/khronos/opengles/GL10;->glTranslatef(FFF)V

    .line 95
    :goto_60
    const v0, 0x8074

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glEnableClientState(I)V

    .line 96
    const v0, 0x8078

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glEnableClientState(I)V

    .line 97
    invoke-interface {p1, p6, p7, p8, p5}, Ljavax/microedition/khronos/opengles/GL10;->glColor4f(FFFF)V

    .line 98
    const/4 v0, 0x3

    const/16 v2, 0x1406

    const/4 v3, 0x0

    # getter for: Lfr/testudo/spacecorsair/mod/ModFx;->QUAD:Ljava/nio/FloatBuffer;
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModFx;->access$200()Ljava/nio/FloatBuffer;

    move-result-object v4

    invoke-interface {p1, v0, v2, v3, v4}, Ljavax/microedition/khronos/opengles/GL10;->glVertexPointer(IIILjava/nio/Buffer;)V

    .line 99
    const/4 v0, 0x2

    const/16 v2, 0x1406

    const/4 v3, 0x0

    invoke-direct {p0}, Lfr/testudo/spacecorsair/mod/ModFx$Sprite;->uvBuf()Ljava/nio/FloatBuffer;

    move-result-object v4

    invoke-interface {p1, v0, v2, v3, v4}, Ljavax/microedition/khronos/opengles/GL10;->glTexCoordPointer(IIILjava/nio/Buffer;)V

    .line 100
    iget-boolean v0, p0, Lfr/testudo/spacecorsair/mod/ModFx$Sprite;->repeatT:Z

    .line 101
    if-eqz v0, :cond_93

    const/16 v2, 0xde1

    const/16 v3, 0x2803

    const v4, 0x46240400    # 10497.0f

    invoke-interface {p1, v2, v3, v4}, Ljavax/microedition/khronos/opengles/GL10;->glTexParameterf(IIF)V

    .line 102
    :cond_93
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-interface {p1, p3, v2, v3, v4}, Ljavax/microedition/khronos/opengles/GL10;->glRotatef(FFFF)V

    .line 103
    iget v2, p0, Lfr/testudo/spacecorsair/mod/ModFx$Sprite;->w:F

    iget v3, p0, Lfr/testudo/spacecorsair/mod/ModFx$Sprite;->h:F

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-interface {p1, v2, v3, v4}, Ljavax/microedition/khronos/opengles/GL10;->glScalef(FFF)V

    .line 104
    iget-boolean v2, p0, Lfr/testudo/spacecorsair/mod/ModFx$Sprite;->flat:Z

    .line 105
    if-eqz v2, :cond_107

    .line 107
    const/16 v3, 0x2300

    const/16 v4, 0x2200

    const v5, 0x47057000    # 34160.0f

    invoke-interface {p1, v3, v4, v5}, Ljavax/microedition/khronos/opengles/GL10;->glTexEnvf(IIF)V

    .line 108
    const/16 v3, 0x2300

    const v4, 0x8571

    const v5, 0x45f00800    # 7681.0f

    invoke-interface {p1, v3, v4, v5}, Ljavax/microedition/khronos/opengles/GL10;->glTexEnvf(IIF)V

    .line 109
    const/16 v3, 0x2300

    const v4, 0x8580

    const v5, 0x47057700    # 34167.0f

    invoke-interface {p1, v3, v4, v5}, Ljavax/microedition/khronos/opengles/GL10;->glTexEnvf(IIF)V

    .line 110
    const/16 v3, 0x2300

    const v4, 0x8590

    const/high16 v5, 0x44400000    # 768.0f

    invoke-interface {p1, v3, v4, v5}, Ljavax/microedition/khronos/opengles/GL10;->glTexEnvf(IIF)V

    .line 111
    const/16 v3, 0x2300

    const v4, 0x8572

    const/high16 v5, 0x46040000    # 8448.0f

    invoke-interface {p1, v3, v4, v5}, Ljavax/microedition/khronos/opengles/GL10;->glTexEnvf(IIF)V

    .line 112
    const/16 v3, 0x2300

    const v4, 0x8588

    const v5, 0x45b81000    # 5890.0f

    invoke-interface {p1, v3, v4, v5}, Ljavax/microedition/khronos/opengles/GL10;->glTexEnvf(IIF)V

    .line 113
    const/16 v3, 0x2300

    const v4, 0x8598

    const v5, 0x44408000    # 770.0f

    invoke-interface {p1, v3, v4, v5}, Ljavax/microedition/khronos/opengles/GL10;->glTexEnvf(IIF)V

    .line 114
    const/16 v3, 0x2300

    const v4, 0x8589

    const v5, 0x47057700    # 34167.0f

    invoke-interface {p1, v3, v4, v5}, Ljavax/microedition/khronos/opengles/GL10;->glTexEnvf(IIF)V

    .line 115
    const/16 v3, 0x2300

    const v4, 0x8599

    const v5, 0x44408000    # 770.0f

    invoke-interface {p1, v3, v4, v5}, Ljavax/microedition/khronos/opengles/GL10;->glTexEnvf(IIF)V

    .line 117
    :cond_107
    if-eqz v1, :cond_1c8

    .line 118
    iget-object v3, p0, Lfr/testudo/spacecorsair/mod/ModFx$Sprite;->ovUv:Ljava/nio/FloatBuffer;

    if-nez v3, :cond_117

    const/16 v3, 0x8

    new-array v3, v3, [F

    # invokes: Lfr/testudo/spacecorsair/mod/ModFx;->buf([F)Ljava/nio/FloatBuffer;
    invoke-static {v3}, Lfr/testudo/spacecorsair/mod/ModFx;->access$100([F)Ljava/nio/FloatBuffer;

    move-result-object v3

    iput-object v3, p0, Lfr/testudo/spacecorsair/mod/ModFx$Sprite;->ovUv:Ljava/nio/FloatBuffer;

    .line 119
    :cond_117
    iget-object v3, p0, Lfr/testudo/spacecorsair/mod/ModFx$Sprite;->ovUv:Ljava/nio/FloatBuffer;

    const/4 v4, 0x0

    iget v5, p0, Lfr/testudo/spacecorsair/mod/ModFx$Sprite;->ou0:F

    invoke-virtual {v3, v4, v5}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    iget-object v3, p0, Lfr/testudo/spacecorsair/mod/ModFx$Sprite;->ovUv:Ljava/nio/FloatBuffer;

    const/4 v4, 0x1

    iget v5, p0, Lfr/testudo/spacecorsair/mod/ModFx$Sprite;->ovTop:F

    invoke-virtual {v3, v4, v5}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    iget-object v3, p0, Lfr/testudo/spacecorsair/mod/ModFx$Sprite;->ovUv:Ljava/nio/FloatBuffer;

    const/4 v4, 0x2

    iget v5, p0, Lfr/testudo/spacecorsair/mod/ModFx$Sprite;->ou1:F

    invoke-virtual {v3, v4, v5}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    iget-object v3, p0, Lfr/testudo/spacecorsair/mod/ModFx$Sprite;->ovUv:Ljava/nio/FloatBuffer;

    const/4 v4, 0x3

    iget v5, p0, Lfr/testudo/spacecorsair/mod/ModFx$Sprite;->ovTop:F

    invoke-virtual {v3, v4, v5}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 120
    iget-object v3, p0, Lfr/testudo/spacecorsair/mod/ModFx$Sprite;->ovUv:Ljava/nio/FloatBuffer;

    const/4 v4, 0x4

    iget v5, p0, Lfr/testudo/spacecorsair/mod/ModFx$Sprite;->ou0:F

    invoke-virtual {v3, v4, v5}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    iget-object v3, p0, Lfr/testudo/spacecorsair/mod/ModFx$Sprite;->ovUv:Ljava/nio/FloatBuffer;

    const/4 v4, 0x5

    iget v5, p0, Lfr/testudo/spacecorsair/mod/ModFx$Sprite;->ovBottom:F

    invoke-virtual {v3, v4, v5}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    iget-object v3, p0, Lfr/testudo/spacecorsair/mod/ModFx$Sprite;->ovUv:Ljava/nio/FloatBuffer;

    const/4 v4, 0x6

    iget v5, p0, Lfr/testudo/spacecorsair/mod/ModFx$Sprite;->ou1:F

    invoke-virtual {v3, v4, v5}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    iget-object v3, p0, Lfr/testudo/spacecorsair/mod/ModFx$Sprite;->ovUv:Ljava/nio/FloatBuffer;

    const/4 v4, 0x7

    iget v5, p0, Lfr/testudo/spacecorsair/mod/ModFx$Sprite;->ovBottom:F

    invoke-virtual {v3, v4, v5}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 121
    const v3, 0x84c1

    invoke-interface {p1, v3}, Ljavax/microedition/khronos/opengles/GL10;->glActiveTexture(I)V

    .line 122
    const v3, 0x84c1

    invoke-interface {p1, v3}, Ljavax/microedition/khronos/opengles/GL10;->glClientActiveTexture(I)V

    .line 123
    const/16 v3, 0xde1

    invoke-interface {p1, v3}, Ljavax/microedition/khronos/opengles/GL10;->glEnable(I)V

    .line 124
    const/16 v3, 0xde1

    iget v4, v1, Lfr/testudo/spacecorsair/display/Texture;->name:I

    invoke-interface {p1, v3, v4}, Ljavax/microedition/khronos/opengles/GL10;->glBindTexture(II)V

    .line 125
    const v3, 0x8078

    invoke-interface {p1, v3}, Ljavax/microedition/khronos/opengles/GL10;->glEnableClientState(I)V

    .line 126
    const/4 v3, 0x2

    const/16 v4, 0x1406

    const/4 v5, 0x0

    iget-object v6, p0, Lfr/testudo/spacecorsair/mod/ModFx$Sprite;->ovUv:Ljava/nio/FloatBuffer;

    invoke-interface {p1, v3, v4, v5, v6}, Ljavax/microedition/khronos/opengles/GL10;->glTexCoordPointer(IIILjava/nio/Buffer;)V

    .line 127
    const/16 v3, 0x2300

    const/16 v4, 0x2200

    const v5, 0x47057000    # 34160.0f

    invoke-interface {p1, v3, v4, v5}, Ljavax/microedition/khronos/opengles/GL10;->glTexEnvf(IIF)V

    .line 128
    const/16 v3, 0x2300

    const v4, 0x8571

    const/high16 v5, 0x46040000    # 8448.0f

    invoke-interface {p1, v3, v4, v5}, Ljavax/microedition/khronos/opengles/GL10;->glTexEnvf(IIF)V

    .line 129
    const/16 v3, 0x2300

    const v4, 0x8580

    const v5, 0x47057800    # 34168.0f

    invoke-interface {p1, v3, v4, v5}, Ljavax/microedition/khronos/opengles/GL10;->glTexEnvf(IIF)V

    .line 130
    const/16 v3, 0x2300

    const v4, 0x8581

    const v5, 0x45b81000    # 5890.0f

    invoke-interface {p1, v3, v4, v5}, Ljavax/microedition/khronos/opengles/GL10;->glTexEnvf(IIF)V

    .line 131
    const/16 v3, 0x2300

    const v4, 0x8573

    const/high16 v5, 0x40800000    # 4.0f

    invoke-interface {p1, v3, v4, v5}, Ljavax/microedition/khronos/opengles/GL10;->glTexEnvf(IIF)V

    .line 132
    const/16 v3, 0x2300

    const v4, 0x8572

    const v5, 0x45f00800    # 7681.0f

    invoke-interface {p1, v3, v4, v5}, Ljavax/microedition/khronos/opengles/GL10;->glTexEnvf(IIF)V

    .line 133
    const/16 v3, 0x2300

    const v4, 0x8588

    const v5, 0x47057800    # 34168.0f

    invoke-interface {p1, v3, v4, v5}, Ljavax/microedition/khronos/opengles/GL10;->glTexEnvf(IIF)V

    .line 135
    :cond_1c8
    const/4 v3, 0x5

    const/4 v4, 0x0

    const/4 v5, 0x4

    invoke-interface {p1, v3, v4, v5}, Ljavax/microedition/khronos/opengles/GL10;->glDrawArrays(III)V

    .line 136
    if-eqz v1, :cond_1fa

    .line 137
    const/16 v1, 0x2300

    const v3, 0x8573

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-interface {p1, v1, v3, v4}, Ljavax/microedition/khronos/opengles/GL10;->glTexEnvf(IIF)V

    .line 138
    const/16 v1, 0x2300

    const/16 v3, 0x2200

    const/high16 v4, 0x46040000    # 8448.0f

    invoke-interface {p1, v1, v3, v4}, Ljavax/microedition/khronos/opengles/GL10;->glTexEnvf(IIF)V

    .line 139
    const v1, 0x8078

    invoke-interface {p1, v1}, Ljavax/microedition/khronos/opengles/GL10;->glDisableClientState(I)V

    .line 140
    const/16 v1, 0xde1

    invoke-interface {p1, v1}, Ljavax/microedition/khronos/opengles/GL10;->glDisable(I)V

    .line 141
    const v1, 0x84c0

    invoke-interface {p1, v1}, Ljavax/microedition/khronos/opengles/GL10;->glActiveTexture(I)V

    .line 142
    const v1, 0x84c0

    invoke-interface {p1, v1}, Ljavax/microedition/khronos/opengles/GL10;->glClientActiveTexture(I)V

    .line 144
    :cond_1fa
    if-eqz v2, :cond_205

    const/16 v1, 0x2300

    const/16 v2, 0x2200

    const/high16 v3, 0x46040000    # 8448.0f

    invoke-interface {p1, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glTexEnvf(IIF)V

    .line 145
    :cond_205
    if-eqz v0, :cond_211

    const/16 v0, 0xde1

    const/16 v1, 0x2803

    const v2, 0x47012f00    # 33071.0f

    invoke-interface {p1, v0, v1, v2}, Ljavax/microedition/khronos/opengles/GL10;->glTexParameterf(IIF)V

    .line 146
    :cond_211
    const/high16 v0, 0x3f800000    # 1.0f

    const/high16 v1, 0x3f800000    # 1.0f

    const/high16 v2, 0x3f800000    # 1.0f

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-interface {p1, v0, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glColor4f(FFFF)V

    .line 147
    const v0, 0x8074

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glDisableClientState(I)V

    .line 148
    const v0, 0x8078

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glDisableClientState(I)V

    .line 149
    const/16 v0, 0xde1

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glDisable(I)V

    .line 150
    iget-boolean v0, p0, Lfr/testudo/spacecorsair/mod/ModFx$Sprite;->additive:Z

    if-eqz v0, :cond_7

    const/16 v0, 0x302

    const/16 v1, 0x303

    invoke-interface {p1, v0, v1}, Ljavax/microedition/khronos/opengles/GL10;->glBlendFunc(II)V

    goto/16 :goto_7

    .line 89
    :cond_23a
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->camera:Lfr/testudo/spacecorsair/engine/Camera;

    iget v0, v0, Lfr/testudo/spacecorsair/engine/Camera;->curZDecal:F

    goto/16 :goto_4d

    .line 93
    :cond_242
    iget v2, p2, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    sget-object v3, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v3, v3, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->camera:Lfr/testudo/spacecorsair/engine/Camera;

    iget-object v3, v3, Lfr/testudo/spacecorsair/engine/Camera;->centerPosition:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v3, v3, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    sub-float/2addr v2, v3

    iget v3, p2, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    sget-object v4, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v4, v4, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->camera:Lfr/testudo/spacecorsair/engine/Camera;

    iget-object v4, v4, Lfr/testudo/spacecorsair/engine/Camera;->centerPosition:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v4, v4, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    sub-float/2addr v3, v4

    invoke-interface {p1, v2, v3, v0}, Ljavax/microedition/khronos/opengles/GL10;->glTranslatef(FFF)V

    goto/16 :goto_60
.end method

.method fullUV()V
    .registers 3

    .prologue
    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v0, 0x0

    .line 51
    iput v0, p0, Lfr/testudo/spacecorsair/mod/ModFx$Sprite;->u0:F

    iput v0, p0, Lfr/testudo/spacecorsair/mod/ModFx$Sprite;->v0:F

    iput v1, p0, Lfr/testudo/spacecorsair/mod/ModFx$Sprite;->u1:F

    iput v1, p0, Lfr/testudo/spacecorsair/mod/ModFx$Sprite;->v1:F

    .line 52
    const/4 v0, 0x0

    iput-boolean v0, p0, Lfr/testudo/spacecorsair/mod/ModFx$Sprite;->repeatT:Z

    .line 53
    return-void
.end method
