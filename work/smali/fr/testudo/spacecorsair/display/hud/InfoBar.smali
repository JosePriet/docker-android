.class public Lfr/testudo/spacecorsair/display/hud/InfoBar;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final bordersize:I = 0x1


# instance fields
.field public centerPosition:Lfr/testudo/spacecorsair/engine/Vector2;

.field public demiHeight:F

.field public demiWidth:F

.field public extA:F

.field public extB:F

.field public extG:F

.field public extR:F

.field public fillA:F

.field public fillB:F

.field public fillG:F

.field public fillR:F

.field public height:F

.field public pourcentageValue:F

.field valueVertices:[F

.field protected vertexBorderBuffer:Ljava/nio/FloatBuffer;

.field protected vertexValueBuffer:Ljava/nio/FloatBuffer;

.field public witdh:F

.field public xPosition:F

.field public yPosition:F


# direct methods
.method public constructor <init>(Lfr/testudo/spacecorsair/engine/Vector2;II)V
    .registers 7

    .prologue
    const/4 v2, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    .line 137
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance v0, Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-direct {v0, v2, v2}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>(FF)V

    iput-object v0, p0, Lfr/testudo/spacecorsair/display/hud/InfoBar;->centerPosition:Lfr/testudo/spacecorsair/engine/Vector2;

    .line 34
    iput v1, p0, Lfr/testudo/spacecorsair/display/hud/InfoBar;->extA:F

    .line 35
    iput v1, p0, Lfr/testudo/spacecorsair/display/hud/InfoBar;->extR:F

    .line 36
    iput v1, p0, Lfr/testudo/spacecorsair/display/hud/InfoBar;->extG:F

    .line 37
    iput v1, p0, Lfr/testudo/spacecorsair/display/hud/InfoBar;->extB:F

    .line 47
    const/16 v0, 0xc

    new-array v0, v0, [F

    iput-object v0, p0, Lfr/testudo/spacecorsair/display/hud/InfoBar;->valueVertices:[F

    .line 138
    invoke-virtual {p0, p1, p2, p3}, Lfr/testudo/spacecorsair/display/hud/InfoBar;->init(Lfr/testudo/spacecorsair/engine/Vector2;II)V

    .line 139
    return-void
.end method

.method public static newBlue(Lfr/testudo/spacecorsair/engine/Vector2;II)Lfr/testudo/spacecorsair/display/hud/InfoBar;
    .registers 6

    .prologue
    const/high16 v2, 0x3f800000    # 1.0f

    .line 159
    new-instance v0, Lfr/testudo/spacecorsair/display/hud/InfoBar;

    invoke-direct {v0, p0, p1, p2}, Lfr/testudo/spacecorsair/display/hud/InfoBar;-><init>(Lfr/testudo/spacecorsair/engine/Vector2;II)V

    .line 160
    iput v2, v0, Lfr/testudo/spacecorsair/display/hud/InfoBar;->fillA:F

    .line 161
    const/4 v1, 0x0

    iput v1, v0, Lfr/testudo/spacecorsair/display/hud/InfoBar;->fillR:F

    .line 162
    const v1, 0x3f147ae1    # 0.58f

    iput v1, v0, Lfr/testudo/spacecorsair/display/hud/InfoBar;->fillG:F

    .line 163
    iput v2, v0, Lfr/testudo/spacecorsair/display/hud/InfoBar;->fillB:F

    .line 164
    return-object v0
.end method

.method public static newRed(Lfr/testudo/spacecorsair/engine/Vector2;II)Lfr/testudo/spacecorsair/display/hud/InfoBar;
    .registers 6

    .prologue
    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    .line 149
    new-instance v0, Lfr/testudo/spacecorsair/display/hud/InfoBar;

    invoke-direct {v0, p0, p1, p2}, Lfr/testudo/spacecorsair/display/hud/InfoBar;-><init>(Lfr/testudo/spacecorsair/engine/Vector2;II)V

    .line 151
    iput v2, v0, Lfr/testudo/spacecorsair/display/hud/InfoBar;->fillA:F

    .line 152
    iput v2, v0, Lfr/testudo/spacecorsair/display/hud/InfoBar;->fillR:F

    .line 153
    iput v1, v0, Lfr/testudo/spacecorsair/display/hud/InfoBar;->fillG:F

    .line 154
    iput v1, v0, Lfr/testudo/spacecorsair/display/hud/InfoBar;->fillB:F

    .line 155
    return-object v0
.end method

.method public static newTransparentWhite(Lfr/testudo/spacecorsair/engine/Vector2;II)Lfr/testudo/spacecorsair/display/hud/InfoBar;
    .registers 6

    .prologue
    const v2, 0x3eb33333    # 0.35f

    const/high16 v1, 0x3f800000    # 1.0f

    .line 168
    new-instance v0, Lfr/testudo/spacecorsair/display/hud/InfoBar;

    invoke-direct {v0, p0, p1, p2}, Lfr/testudo/spacecorsair/display/hud/InfoBar;-><init>(Lfr/testudo/spacecorsair/engine/Vector2;II)V

    .line 169
    iput v2, v0, Lfr/testudo/spacecorsair/display/hud/InfoBar;->fillA:F

    .line 170
    iput v2, v0, Lfr/testudo/spacecorsair/display/hud/InfoBar;->extA:F

    .line 171
    iput v1, v0, Lfr/testudo/spacecorsair/display/hud/InfoBar;->fillR:F

    .line 172
    iput v1, v0, Lfr/testudo/spacecorsair/display/hud/InfoBar;->fillG:F

    .line 173
    iput v1, v0, Lfr/testudo/spacecorsair/display/hud/InfoBar;->fillB:F

    .line 174
    return-object v0
.end method


# virtual methods
.method public draw(Ljavax/microedition/khronos/opengles/GL10;)V
    .registers 11

    .prologue
    const/4 v8, 0x5

    const/4 v7, 0x3

    const v6, 0x8074

    const/4 v5, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    .line 178
    invoke-interface {p1}, Ljavax/microedition/khronos/opengles/GL10;->glLoadIdentity()V

    .line 182
    iget-object v0, p0, Lfr/testudo/spacecorsair/display/hud/InfoBar;->centerPosition:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v0, v0, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    sget v1, Lfr/testudo/spacecorsair/engine/GameRenderer;->screenWidthX:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    sget v1, Lfr/testudo/spacecorsair/engine/GameRenderer;->screenMidWidthY:I

    neg-int v1, v1

    int-to-float v1, v1

    sget-object v2, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v2, v2, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->config:Lfr/testudo/spacecorsair/game/Config;

    iget v2, v2, Lfr/testudo/spacecorsair/game/Config;->Zindex:F

    neg-float v2, v2

    invoke-interface {p1, v0, v1, v2}, Ljavax/microedition/khronos/opengles/GL10;->glTranslatef(FFF)V

    .line 184
    iget v0, p0, Lfr/testudo/spacecorsair/display/hud/InfoBar;->pourcentageValue:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_44

    .line 186
    invoke-interface {p1, v6}, Ljavax/microedition/khronos/opengles/GL10;->glEnableClientState(I)V

    .line 187
    iget v0, p0, Lfr/testudo/spacecorsair/display/hud/InfoBar;->fillR:F

    iget v1, p0, Lfr/testudo/spacecorsair/display/hud/InfoBar;->fillG:F

    iget v2, p0, Lfr/testudo/spacecorsair/display/hud/InfoBar;->fillB:F

    iget v3, p0, Lfr/testudo/spacecorsair/display/hud/InfoBar;->fillA:F

    invoke-interface {p1, v0, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glColor4f(FFFF)V

    .line 188
    const/16 v0, 0x1406

    iget-object v1, p0, Lfr/testudo/spacecorsair/display/hud/InfoBar;->vertexValueBuffer:Ljava/nio/FloatBuffer;

    invoke-interface {p1, v7, v0, v5, v1}, Ljavax/microedition/khronos/opengles/GL10;->glVertexPointer(IIILjava/nio/Buffer;)V

    .line 189
    const/4 v0, 0x4

    invoke-interface {p1, v8, v5, v0}, Ljavax/microedition/khronos/opengles/GL10;->glDrawArrays(III)V

    .line 191
    invoke-interface {p1, v6}, Ljavax/microedition/khronos/opengles/GL10;->glDisableClientState(I)V

    .line 196
    :cond_44
    invoke-interface {p1, v6}, Ljavax/microedition/khronos/opengles/GL10;->glEnableClientState(I)V

    .line 197
    iget v0, p0, Lfr/testudo/spacecorsair/display/hud/InfoBar;->extR:F

    iget v1, p0, Lfr/testudo/spacecorsair/display/hud/InfoBar;->extG:F

    iget v2, p0, Lfr/testudo/spacecorsair/display/hud/InfoBar;->extB:F

    iget v3, p0, Lfr/testudo/spacecorsair/display/hud/InfoBar;->extA:F

    invoke-interface {p1, v0, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glColor4f(FFFF)V

    .line 198
    const/16 v0, 0x1406

    iget-object v1, p0, Lfr/testudo/spacecorsair/display/hud/InfoBar;->vertexBorderBuffer:Ljava/nio/FloatBuffer;

    invoke-interface {p1, v7, v0, v5, v1}, Ljavax/microedition/khronos/opengles/GL10;->glVertexPointer(IIILjava/nio/Buffer;)V

    .line 199
    invoke-interface {p1, v7, v5, v8}, Ljavax/microedition/khronos/opengles/GL10;->glDrawArrays(III)V

    .line 201
    invoke-interface {p1, v6}, Ljavax/microedition/khronos/opengles/GL10;->glDisableClientState(I)V

    .line 203
    invoke-interface {p1, v4, v4, v4, v4}, Ljavax/microedition/khronos/opengles/GL10;->glColor4f(FFFF)V

    .line 204
    return-void
.end method

.method public drawCameraRelative(Ljavax/microedition/khronos/opengles/GL10;Lfr/testudo/spacecorsair/engine/Vector2;)V
    .registers 12

    .prologue
    const/4 v8, 0x5

    const/4 v7, 0x3

    const v6, 0x8074

    const/4 v5, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    .line 207
    invoke-interface {p1}, Ljavax/microedition/khronos/opengles/GL10;->glLoadIdentity()V

    .line 212
    iget v0, p2, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    sget-object v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v1, v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->camera:Lfr/testudo/spacecorsair/engine/Camera;

    iget-object v1, v1, Lfr/testudo/spacecorsair/engine/Camera;->centerPosition:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v1, v1, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    sub-float/2addr v0, v1

    iget v1, p2, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    sget-object v2, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v2, v2, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->camera:Lfr/testudo/spacecorsair/engine/Camera;

    iget-object v2, v2, Lfr/testudo/spacecorsair/engine/Camera;->centerPosition:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v2, v2, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    sub-float/2addr v1, v2

    sget-object v2, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v2, v2, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->config:Lfr/testudo/spacecorsair/game/Config;

    iget v2, v2, Lfr/testudo/spacecorsair/game/Config;->Zindex:F

    neg-float v2, v2

    sget-object v3, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v3, v3, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->camera:Lfr/testudo/spacecorsair/engine/Camera;

    iget v3, v3, Lfr/testudo/spacecorsair/engine/Camera;->curZDecal:F

    sub-float/2addr v2, v3

    invoke-interface {p1, v0, v1, v2}, Ljavax/microedition/khronos/opengles/GL10;->glTranslatef(FFF)V

    .line 214
    iget v0, p0, Lfr/testudo/spacecorsair/display/hud/InfoBar;->pourcentageValue:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_55

    .line 216
    invoke-interface {p1, v6}, Ljavax/microedition/khronos/opengles/GL10;->glEnableClientState(I)V

    .line 217
    iget v0, p0, Lfr/testudo/spacecorsair/display/hud/InfoBar;->fillR:F

    iget v1, p0, Lfr/testudo/spacecorsair/display/hud/InfoBar;->fillG:F

    iget v2, p0, Lfr/testudo/spacecorsair/display/hud/InfoBar;->fillB:F

    iget v3, p0, Lfr/testudo/spacecorsair/display/hud/InfoBar;->fillA:F

    invoke-interface {p1, v0, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glColor4f(FFFF)V

    .line 218
    const/16 v0, 0x1406

    iget-object v1, p0, Lfr/testudo/spacecorsair/display/hud/InfoBar;->vertexValueBuffer:Ljava/nio/FloatBuffer;

    invoke-interface {p1, v7, v0, v5, v1}, Ljavax/microedition/khronos/opengles/GL10;->glVertexPointer(IIILjava/nio/Buffer;)V

    .line 219
    const/4 v0, 0x4

    invoke-interface {p1, v8, v5, v0}, Ljavax/microedition/khronos/opengles/GL10;->glDrawArrays(III)V

    .line 221
    invoke-interface {p1, v6}, Ljavax/microedition/khronos/opengles/GL10;->glDisableClientState(I)V

    .line 226
    :cond_55
    invoke-interface {p1, v6}, Ljavax/microedition/khronos/opengles/GL10;->glEnableClientState(I)V

    .line 227
    iget v0, p0, Lfr/testudo/spacecorsair/display/hud/InfoBar;->extR:F

    iget v1, p0, Lfr/testudo/spacecorsair/display/hud/InfoBar;->extG:F

    iget v2, p0, Lfr/testudo/spacecorsair/display/hud/InfoBar;->extB:F

    iget v3, p0, Lfr/testudo/spacecorsair/display/hud/InfoBar;->extA:F

    invoke-interface {p1, v0, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glColor4f(FFFF)V

    .line 228
    const/16 v0, 0x1406

    iget-object v1, p0, Lfr/testudo/spacecorsair/display/hud/InfoBar;->vertexBorderBuffer:Ljava/nio/FloatBuffer;

    invoke-interface {p1, v7, v0, v5, v1}, Ljavax/microedition/khronos/opengles/GL10;->glVertexPointer(IIILjava/nio/Buffer;)V

    .line 229
    invoke-interface {p1, v7, v5, v8}, Ljavax/microedition/khronos/opengles/GL10;->glDrawArrays(III)V

    .line 231
    invoke-interface {p1, v6}, Ljavax/microedition/khronos/opengles/GL10;->glDisableClientState(I)V

    .line 233
    invoke-interface {p1, v4, v4, v4, v4}, Ljavax/microedition/khronos/opengles/GL10;->glColor4f(FFFF)V

    .line 236
    return-void
.end method

.method public init(Lfr/testudo/spacecorsair/engine/Vector2;II)V
    .registers 10

    .prologue
    const/4 v5, 0x0

    const/high16 v1, 0x40000000    # 2.0f

    const/4 v4, 0x0

    .line 86
    iget-object v0, p0, Lfr/testudo/spacecorsair/display/hud/InfoBar;->centerPosition:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v0, p1}, Lfr/testudo/spacecorsair/engine/Vector2;->setSameAs(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 87
    int-to-float v0, p2

    iput v0, p0, Lfr/testudo/spacecorsair/display/hud/InfoBar;->witdh:F

    .line 88
    int-to-float v0, p3

    iput v0, p0, Lfr/testudo/spacecorsair/display/hud/InfoBar;->height:F

    .line 89
    int-to-float v0, p3

    div-float/2addr v0, v1

    iput v0, p0, Lfr/testudo/spacecorsair/display/hud/InfoBar;->demiHeight:F

    .line 90
    int-to-float v0, p2

    div-float/2addr v0, v1

    iput v0, p0, Lfr/testudo/spacecorsair/display/hud/InfoBar;->demiWidth:F

    .line 92
    iget v0, p0, Lfr/testudo/spacecorsair/display/hud/InfoBar;->demiWidth:F

    neg-float v0, v0

    iget v1, p1, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    add-float/2addr v0, v1

    iput v0, p0, Lfr/testudo/spacecorsair/display/hud/InfoBar;->xPosition:F

    .line 93
    sget v0, Lfr/testudo/spacecorsair/engine/GameRenderer;->screenWidthY:I

    int-to-float v0, v0

    iget-object v1, p0, Lfr/testudo/spacecorsair/display/hud/InfoBar;->centerPosition:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v1, v1, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    sub-float/2addr v0, v1

    iput v0, p0, Lfr/testudo/spacecorsair/display/hud/InfoBar;->yPosition:F

    .line 96
    const/16 v0, 0xf

    new-array v0, v0, [F

    .line 97
    iget v1, p0, Lfr/testudo/spacecorsair/display/hud/InfoBar;->demiWidth:F

    neg-float v1, v1

    iget v2, p1, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    add-float/2addr v1, v2

    aput v1, v0, v5

    .line 98
    const/4 v1, 0x1

    iget v2, p0, Lfr/testudo/spacecorsair/display/hud/InfoBar;->demiHeight:F

    neg-float v2, v2

    sget v3, Lfr/testudo/spacecorsair/engine/GameRenderer;->screenWidthY:I

    int-to-float v3, v3

    add-float/2addr v2, v3

    iget-object v3, p0, Lfr/testudo/spacecorsair/display/hud/InfoBar;->centerPosition:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v3, v3, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    sub-float/2addr v2, v3

    aput v2, v0, v1

    .line 100
    const/4 v1, 0x2

    aput v4, v0, v1

    .line 102
    const/4 v1, 0x3

    iget v2, p0, Lfr/testudo/spacecorsair/display/hud/InfoBar;->demiWidth:F

    iget v3, p1, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    add-float/2addr v2, v3

    aput v2, v0, v1

    .line 103
    const/4 v1, 0x4

    iget v2, p0, Lfr/testudo/spacecorsair/display/hud/InfoBar;->demiHeight:F

    neg-float v2, v2

    sget v3, Lfr/testudo/spacecorsair/engine/GameRenderer;->screenWidthY:I

    int-to-float v3, v3

    add-float/2addr v2, v3

    iget-object v3, p0, Lfr/testudo/spacecorsair/display/hud/InfoBar;->centerPosition:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v3, v3, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    sub-float/2addr v2, v3

    aput v2, v0, v1

    .line 105
    const/4 v1, 0x5

    aput v4, v0, v1

    .line 107
    const/4 v1, 0x6

    iget v2, p0, Lfr/testudo/spacecorsair/display/hud/InfoBar;->demiWidth:F

    iget v3, p1, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    add-float/2addr v2, v3

    aput v2, v0, v1

    .line 108
    const/4 v1, 0x7

    iget v2, p0, Lfr/testudo/spacecorsair/display/hud/InfoBar;->demiHeight:F

    sget v3, Lfr/testudo/spacecorsair/engine/GameRenderer;->screenWidthY:I

    int-to-float v3, v3

    add-float/2addr v2, v3

    iget-object v3, p0, Lfr/testudo/spacecorsair/display/hud/InfoBar;->centerPosition:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v3, v3, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    sub-float/2addr v2, v3

    aput v2, v0, v1

    .line 110
    const/16 v1, 0x8

    aput v4, v0, v1

    .line 112
    const/16 v1, 0x9

    iget v2, p0, Lfr/testudo/spacecorsair/display/hud/InfoBar;->demiWidth:F

    neg-float v2, v2

    iget v3, p1, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    add-float/2addr v2, v3

    aput v2, v0, v1

    .line 113
    const/16 v1, 0xa

    iget v2, p0, Lfr/testudo/spacecorsair/display/hud/InfoBar;->demiHeight:F

    sget v3, Lfr/testudo/spacecorsair/engine/GameRenderer;->screenWidthY:I

    int-to-float v3, v3

    add-float/2addr v2, v3

    iget-object v3, p0, Lfr/testudo/spacecorsair/display/hud/InfoBar;->centerPosition:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v3, v3, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    sub-float/2addr v2, v3

    aput v2, v0, v1

    .line 115
    const/16 v1, 0xb

    aput v4, v0, v1

    .line 117
    const/16 v1, 0xc

    iget v2, p0, Lfr/testudo/spacecorsair/display/hud/InfoBar;->demiWidth:F

    neg-float v2, v2

    iget v3, p1, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    add-float/2addr v2, v3

    aput v2, v0, v1

    .line 118
    const/16 v1, 0xd

    iget v2, p0, Lfr/testudo/spacecorsair/display/hud/InfoBar;->demiHeight:F

    neg-float v2, v2

    sget v3, Lfr/testudo/spacecorsair/engine/GameRenderer;->screenWidthY:I

    int-to-float v3, v3

    add-float/2addr v2, v3

    iget-object v3, p0, Lfr/testudo/spacecorsair/display/hud/InfoBar;->centerPosition:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v3, v3, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    sub-float/2addr v2, v3

    aput v2, v0, v1

    .line 120
    const/16 v1, 0xe

    aput v4, v0, v1

    .line 122
    array-length v1, v0

    mul-int/lit8 v1, v1, 0x4

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 123
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 124
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v1

    iput-object v1, p0, Lfr/testudo/spacecorsair/display/hud/InfoBar;->vertexBorderBuffer:Ljava/nio/FloatBuffer;

    .line 125
    iget-object v1, p0, Lfr/testudo/spacecorsair/display/hud/InfoBar;->vertexBorderBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v1, v0}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    .line 126
    iget-object v1, p0, Lfr/testudo/spacecorsair/display/hud/InfoBar;->vertexBorderBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v1, v5}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 128
    array-length v0, v0

    mul-int/lit8 v0, v0, 0x4

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 129
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 130
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lfr/testudo/spacecorsair/display/hud/InfoBar;->vertexValueBuffer:Ljava/nio/FloatBuffer;

    .line 132
    const/high16 v0, 0x42c80000    # 100.0f

    invoke-virtual {p0, v0}, Lfr/testudo/spacecorsair/display/hud/InfoBar;->setValue(F)V

    .line 133
    return-void
.end method

.method public setValue(F)V
    .registers 11

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    .line 50
    iput p1, p0, Lfr/testudo/spacecorsair/display/hud/InfoBar;->pourcentageValue:F

    .line 52
    iget v0, p0, Lfr/testudo/spacecorsair/display/hud/InfoBar;->demiWidth:F

    neg-float v0, v0

    iget-object v1, p0, Lfr/testudo/spacecorsair/display/hud/InfoBar;->centerPosition:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v1, v1, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    add-float/2addr v0, v1

    add-float/2addr v0, v6

    .line 53
    iget v1, p0, Lfr/testudo/spacecorsair/display/hud/InfoBar;->demiWidth:F

    neg-float v1, v1

    iget-object v2, p0, Lfr/testudo/spacecorsair/display/hud/InfoBar;->centerPosition:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v2, v2, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    add-float/2addr v1, v2

    iget v2, p0, Lfr/testudo/spacecorsair/display/hud/InfoBar;->pourcentageValue:F

    iget v3, p0, Lfr/testudo/spacecorsair/display/hud/InfoBar;->witdh:F

    mul-float/2addr v2, v3

    const/high16 v3, 0x42c80000    # 100.0f

    div-float/2addr v2, v3

    add-float/2addr v1, v2

    const/high16 v2, 0x40000000    # 2.0f

    sub-float/2addr v1, v2

    .line 56
    iget-object v2, p0, Lfr/testudo/spacecorsair/display/hud/InfoBar;->valueVertices:[F

    aput v0, v2, v8

    .line 57
    iget-object v2, p0, Lfr/testudo/spacecorsair/display/hud/InfoBar;->valueVertices:[F

    const/4 v3, 0x1

    iget v4, p0, Lfr/testudo/spacecorsair/display/hud/InfoBar;->demiHeight:F

    neg-float v4, v4

    add-float/2addr v4, v6

    sget v5, Lfr/testudo/spacecorsair/engine/GameRenderer;->screenWidthY:I

    int-to-float v5, v5

    add-float/2addr v4, v5

    iget-object v5, p0, Lfr/testudo/spacecorsair/display/hud/InfoBar;->centerPosition:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v5, v5, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    sub-float/2addr v4, v5

    aput v4, v2, v3

    .line 59
    iget-object v2, p0, Lfr/testudo/spacecorsair/display/hud/InfoBar;->valueVertices:[F

    const/4 v3, 0x2

    aput v7, v2, v3

    .line 61
    iget-object v2, p0, Lfr/testudo/spacecorsair/display/hud/InfoBar;->valueVertices:[F

    const/4 v3, 0x3

    aput v1, v2, v3

    .line 62
    iget-object v2, p0, Lfr/testudo/spacecorsair/display/hud/InfoBar;->valueVertices:[F

    const/4 v3, 0x4

    iget v4, p0, Lfr/testudo/spacecorsair/display/hud/InfoBar;->demiHeight:F

    neg-float v4, v4

    add-float/2addr v4, v6

    sget v5, Lfr/testudo/spacecorsair/engine/GameRenderer;->screenWidthY:I

    int-to-float v5, v5

    add-float/2addr v4, v5

    iget-object v5, p0, Lfr/testudo/spacecorsair/display/hud/InfoBar;->centerPosition:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v5, v5, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    sub-float/2addr v4, v5

    aput v4, v2, v3

    .line 64
    iget-object v2, p0, Lfr/testudo/spacecorsair/display/hud/InfoBar;->valueVertices:[F

    const/4 v3, 0x5

    aput v7, v2, v3

    .line 66
    iget-object v2, p0, Lfr/testudo/spacecorsair/display/hud/InfoBar;->valueVertices:[F

    const/4 v3, 0x6

    aput v0, v2, v3

    .line 67
    iget-object v0, p0, Lfr/testudo/spacecorsair/display/hud/InfoBar;->valueVertices:[F

    const/4 v2, 0x7

    iget v3, p0, Lfr/testudo/spacecorsair/display/hud/InfoBar;->demiHeight:F

    sub-float/2addr v3, v6

    sget v4, Lfr/testudo/spacecorsair/engine/GameRenderer;->screenWidthY:I

    int-to-float v4, v4

    add-float/2addr v3, v4

    iget-object v4, p0, Lfr/testudo/spacecorsair/display/hud/InfoBar;->centerPosition:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v4, v4, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    sub-float/2addr v3, v4

    aput v3, v0, v2

    .line 69
    iget-object v0, p0, Lfr/testudo/spacecorsair/display/hud/InfoBar;->valueVertices:[F

    const/16 v2, 0x8

    aput v7, v0, v2

    .line 71
    iget-object v0, p0, Lfr/testudo/spacecorsair/display/hud/InfoBar;->valueVertices:[F

    const/16 v2, 0x9

    aput v1, v0, v2

    .line 72
    iget-object v0, p0, Lfr/testudo/spacecorsair/display/hud/InfoBar;->valueVertices:[F

    const/16 v1, 0xa

    iget v2, p0, Lfr/testudo/spacecorsair/display/hud/InfoBar;->demiHeight:F

    sub-float/2addr v2, v6

    sget v3, Lfr/testudo/spacecorsair/engine/GameRenderer;->screenWidthY:I

    int-to-float v3, v3

    add-float/2addr v2, v3

    iget-object v3, p0, Lfr/testudo/spacecorsair/display/hud/InfoBar;->centerPosition:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v3, v3, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    sub-float/2addr v2, v3

    aput v2, v0, v1

    .line 74
    iget-object v0, p0, Lfr/testudo/spacecorsair/display/hud/InfoBar;->valueVertices:[F

    const/16 v1, 0xb

    aput v7, v0, v1

    .line 76
    iget-object v0, p0, Lfr/testudo/spacecorsair/display/hud/InfoBar;->vertexValueBuffer:Ljava/nio/FloatBuffer;

    iget-object v1, p0, Lfr/testudo/spacecorsair/display/hud/InfoBar;->valueVertices:[F

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    .line 77
    iget-object v0, p0, Lfr/testudo/spacecorsair/display/hud/InfoBar;->vertexValueBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, v8}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 78
    return-void
.end method

.method public setValueColor(FFFF)V
    .registers 5

    .prologue
    .line 142
    iput p1, p0, Lfr/testudo/spacecorsair/display/hud/InfoBar;->fillA:F

    .line 143
    iput p4, p0, Lfr/testudo/spacecorsair/display/hud/InfoBar;->fillB:F

    .line 144
    iput p3, p0, Lfr/testudo/spacecorsair/display/hud/InfoBar;->fillG:F

    .line 145
    iput p2, p0, Lfr/testudo/spacecorsair/display/hud/InfoBar;->fillR:F

    .line 146
    return-void
.end method
