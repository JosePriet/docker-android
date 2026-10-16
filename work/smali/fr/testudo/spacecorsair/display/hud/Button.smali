.class public Lfr/testudo/spacecorsair/display/hud/Button;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:F

.field public b:F

.field public demiDim:I

.field public g:F

.field public imageDim:Lfr/testudo/spacecorsair/engine/Vector2;

.field public imageDrawable:Lfr/testudo/spacecorsair/display/Drawable;

.field public imagePos:Lfr/testudo/spacecorsair/engine/Vector2;

.field public r:F


# direct methods
.method public constructor <init>()V
    .registers 4

    .prologue
    const/high16 v2, 0x42c80000    # 100.0f

    const/4 v1, 0x0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    new-instance v0, Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-direct {v0, v1, v1}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>(FF)V

    iput-object v0, p0, Lfr/testudo/spacecorsair/display/hud/Button;->imagePos:Lfr/testudo/spacecorsair/engine/Vector2;

    .line 23
    new-instance v0, Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-direct {v0, v2, v2}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>(FF)V

    iput-object v0, p0, Lfr/testudo/spacecorsair/display/hud/Button;->imageDim:Lfr/testudo/spacecorsair/engine/Vector2;

    .line 28
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lfr/testudo/spacecorsair/display/hud/Button;->b:F

    iput v0, p0, Lfr/testudo/spacecorsair/display/hud/Button;->g:F

    iput v0, p0, Lfr/testudo/spacecorsair/display/hud/Button;->r:F

    iput v0, p0, Lfr/testudo/spacecorsair/display/hud/Button;->a:F

    .line 29
    return-void
.end method


# virtual methods
.method public doesTouche(II)Z
    .registers 7

    .prologue
    .line 49
    sget v0, Lfr/testudo/spacecorsair/engine/GameRenderer;->screenWidthY:I

    sub-int/2addr v0, p2

    .line 50
    int-to-float v1, p1

    iget-object v2, p0, Lfr/testudo/spacecorsair/display/hud/Button;->imagePos:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v2, v2, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    iget v3, p0, Lfr/testudo/spacecorsair/display/hud/Button;->demiDim:I

    int-to-float v3, v3

    sub-float/2addr v2, v3

    cmpl-float v1, v1, v2

    if-lez v1, :cond_39

    int-to-float v1, p1

    iget-object v2, p0, Lfr/testudo/spacecorsair/display/hud/Button;->imagePos:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v2, v2, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    iget v3, p0, Lfr/testudo/spacecorsair/display/hud/Button;->demiDim:I

    int-to-float v3, v3

    add-float/2addr v2, v3

    cmpg-float v1, v1, v2

    if-gez v1, :cond_39

    int-to-float v1, v0

    iget-object v2, p0, Lfr/testudo/spacecorsair/display/hud/Button;->imagePos:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v2, v2, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    iget v3, p0, Lfr/testudo/spacecorsair/display/hud/Button;->demiDim:I

    int-to-float v3, v3

    add-float/2addr v2, v3

    cmpg-float v1, v1, v2

    if-gez v1, :cond_39

    int-to-float v0, v0

    iget-object v1, p0, Lfr/testudo/spacecorsair/display/hud/Button;->imagePos:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v1, v1, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    iget v2, p0, Lfr/testudo/spacecorsair/display/hud/Button;->demiDim:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    cmpl-float v0, v0, v1

    if-lez v0, :cond_39

    const/4 v0, 0x1

    :goto_38
    return v0

    :cond_39
    const/4 v0, 0x0

    goto :goto_38
.end method

.method public draw(Ljavax/microedition/khronos/opengles/GL10;)V
    .registers 13

    .prologue
    const/4 v4, 0x1

    .line 42
    iget-object v0, p0, Lfr/testudo/spacecorsair/display/hud/Button;->imageDrawable:Lfr/testudo/spacecorsair/display/Drawable;

    iget-object v2, p0, Lfr/testudo/spacecorsair/display/hud/Button;->imagePos:Lfr/testudo/spacecorsair/engine/Vector2;

    const/high16 v3, 0x43340000    # 180.0f

    iget v5, p0, Lfr/testudo/spacecorsair/display/hud/Button;->a:F

    iget v6, p0, Lfr/testudo/spacecorsair/display/hud/Button;->r:F

    iget v7, p0, Lfr/testudo/spacecorsair/display/hud/Button;->g:F

    iget v8, p0, Lfr/testudo/spacecorsair/display/hud/Button;->b:F

    const/4 v10, 0x0

    move-object v1, p1

    move v9, v4

    invoke-virtual/range {v0 .. v10}, Lfr/testudo/spacecorsair/display/Drawable;->draw(Ljavax/microedition/khronos/opengles/GL10;Lfr/testudo/spacecorsair/engine/Vector2;FZFFFFZZ)V

    .line 45
    return-void
.end method

.method public initImagePos(FF)V
    .registers 4

    .prologue
    .line 33
    iget-object v0, p0, Lfr/testudo/spacecorsair/display/hud/Button;->imagePos:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v0, p1, p2}, Lfr/testudo/spacecorsair/engine/Vector2;->set(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 35
    return-void
.end method

.method public setTexture(Lfr/testudo/spacecorsair/display/Texture;)V
    .registers 4

    .prologue
    .line 38
    new-instance v0, Lfr/testudo/spacecorsair/display/Drawable;

    iget-object v1, p0, Lfr/testudo/spacecorsair/display/hud/Button;->imageDim:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-direct {v0, v1, p1}, Lfr/testudo/spacecorsair/display/Drawable;-><init>(Lfr/testudo/spacecorsair/engine/Vector2;Lfr/testudo/spacecorsair/display/Texture;)V

    iput-object v0, p0, Lfr/testudo/spacecorsair/display/hud/Button;->imageDrawable:Lfr/testudo/spacecorsair/display/Drawable;

    .line 39
    return-void
.end method
