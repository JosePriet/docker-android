.class public abstract Lfr/testudo/spacecorsair/business/world/BackgroundDrawableObject;
.super Lfr/testudo/spacecorsair/engine/PoolObject;
.source "SourceFile"


# instance fields
.field public a:F

.field public b:F

.field public decalFactor:F

.field public g:F

.field public originalPosition:Lfr/testudo/spacecorsair/engine/Vector2;

.field public position:Lfr/testudo/spacecorsair/engine/Vector2;

.field public r:F

.field renderElem:Lfr/testudo/spacecorsair/display/RenderElement;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 18
    invoke-direct {p0}, Lfr/testudo/spacecorsair/engine/PoolObject;-><init>()V

    .line 22
    new-instance v0, Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-direct {v0}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>()V

    iput-object v0, p0, Lfr/testudo/spacecorsair/business/world/BackgroundDrawableObject;->originalPosition:Lfr/testudo/spacecorsair/engine/Vector2;

    .line 23
    new-instance v0, Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-direct {v0}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>()V

    iput-object v0, p0, Lfr/testudo/spacecorsair/business/world/BackgroundDrawableObject;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    .line 24
    const/high16 v0, 0x41400000    # 12.0f

    iput v0, p0, Lfr/testudo/spacecorsair/business/world/BackgroundDrawableObject;->decalFactor:F

    .line 29
    new-instance v0, Lfr/testudo/spacecorsair/display/RenderElement;

    invoke-direct {v0}, Lfr/testudo/spacecorsair/display/RenderElement;-><init>()V

    iput-object v0, p0, Lfr/testudo/spacecorsair/business/world/BackgroundDrawableObject;->renderElem:Lfr/testudo/spacecorsair/display/RenderElement;

    return-void
.end method


# virtual methods
.method public finalizePoolObject()V
    .registers 1

    .prologue
    .line 81
    return-void
.end method

.method public abstract getDrawableObject()Lfr/testudo/spacecorsair/display/Drawable;
.end method

.method public init(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/business/world/BackgroundDrawableObject;
    .registers 3

    .prologue
    .line 35
    const/high16 v0, 0x41700000    # 15.0f

    iput v0, p0, Lfr/testudo/spacecorsair/business/world/BackgroundDrawableObject;->decalFactor:F

    .line 36
    iget v0, p0, Lfr/testudo/spacecorsair/business/world/BackgroundDrawableObject;->decalFactor:F

    invoke-virtual {p0, p1, v0}, Lfr/testudo/spacecorsair/business/world/BackgroundDrawableObject;->init(Lfr/testudo/spacecorsair/engine/Vector2;F)Lfr/testudo/spacecorsair/business/world/BackgroundDrawableObject;

    move-result-object v0

    return-object v0
.end method

.method public init(Lfr/testudo/spacecorsair/engine/Vector2;F)Lfr/testudo/spacecorsair/business/world/BackgroundDrawableObject;
    .registers 4

    .prologue
    .line 40
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/world/BackgroundDrawableObject;->originalPosition:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v0, p1}, Lfr/testudo/spacecorsair/engine/Vector2;->setSameAs(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 41
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lfr/testudo/spacecorsair/business/world/BackgroundDrawableObject;->g:F

    iput v0, p0, Lfr/testudo/spacecorsair/business/world/BackgroundDrawableObject;->b:F

    iput v0, p0, Lfr/testudo/spacecorsair/business/world/BackgroundDrawableObject;->r:F

    iput v0, p0, Lfr/testudo/spacecorsair/business/world/BackgroundDrawableObject;->a:F

    .line 42
    iput p2, p0, Lfr/testudo/spacecorsair/business/world/BackgroundDrawableObject;->decalFactor:F

    .line 43
    return-object p0
.end method

.method public initializePoolObject()V
    .registers 1

    .prologue
    .line 76
    return-void
.end method

.method public prepareRenderElement()Lfr/testudo/spacecorsair/display/RenderElement;
    .registers 12

    .prologue
    const/4 v3, 0x0

    .line 52
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/world/BackgroundDrawableObject;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/world/BackgroundDrawableObject;->originalPosition:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/engine/Vector2;->setSameAs(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 54
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->camera:Lfr/testudo/spacecorsair/engine/Camera;

    .line 55
    if-eqz v0, :cond_34

    .line 57
    iget-object v1, v0, Lfr/testudo/spacecorsair/engine/Camera;->centerPosition:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v1, v1, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    iget-object v2, p0, Lfr/testudo/spacecorsair/business/world/BackgroundDrawableObject;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v2, v2, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    sub-float/2addr v1, v2

    .line 58
    iget-object v2, v0, Lfr/testudo/spacecorsair/engine/Camera;->centerPosition:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v2, v2, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    iget-object v4, p0, Lfr/testudo/spacecorsair/business/world/BackgroundDrawableObject;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v4, v4, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    sub-float/2addr v2, v4

    .line 60
    iget-object v4, p0, Lfr/testudo/spacecorsair/business/world/BackgroundDrawableObject;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/Camera;->centerPosition:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v4, v0}, Lfr/testudo/spacecorsair/engine/Vector2;->setSameAs(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 61
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/world/BackgroundDrawableObject;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    neg-float v1, v1

    iget v4, p0, Lfr/testudo/spacecorsair/business/world/BackgroundDrawableObject;->decalFactor:F

    div-float/2addr v1, v4

    neg-float v2, v2

    iget v4, p0, Lfr/testudo/spacecorsair/business/world/BackgroundDrawableObject;->decalFactor:F

    div-float/2addr v2, v4

    invoke-virtual {v0, v1, v2}, Lfr/testudo/spacecorsair/engine/Vector2;->add(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 66
    :cond_34
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/world/BackgroundDrawableObject;->renderElem:Lfr/testudo/spacecorsair/display/RenderElement;

    invoke-virtual {p0}, Lfr/testudo/spacecorsair/business/world/BackgroundDrawableObject;->getDrawableObject()Lfr/testudo/spacecorsair/display/Drawable;

    move-result-object v1

    iget-object v2, p0, Lfr/testudo/spacecorsair/business/world/BackgroundDrawableObject;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    const/high16 v4, -0x3d4c0000    # -90.0f

    iget v5, p0, Lfr/testudo/spacecorsair/business/world/BackgroundDrawableObject;->a:F

    iget v6, p0, Lfr/testudo/spacecorsair/business/world/BackgroundDrawableObject;->r:F

    iget v7, p0, Lfr/testudo/spacecorsair/business/world/BackgroundDrawableObject;->g:F

    iget v8, p0, Lfr/testudo/spacecorsair/business/world/BackgroundDrawableObject;->b:F

    const/4 v9, 0x1

    move v10, v3

    invoke-virtual/range {v0 .. v10}, Lfr/testudo/spacecorsair/display/RenderElement;->set(Lfr/testudo/spacecorsair/display/Drawable;Lfr/testudo/spacecorsair/engine/Vector2;ZFFFFFZZ)V

    .line 68
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/world/BackgroundDrawableObject;->renderElem:Lfr/testudo/spacecorsair/display/RenderElement;

    return-object v0
.end method
