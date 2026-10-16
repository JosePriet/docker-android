.class final Lfr/testudo/spacecorsair/mod/ModShipTree$Slice;
.super Landroid/graphics/drawable/Drawable;
.source "ModShipTree.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfr/testudo/spacecorsair/mod/ModShipTree;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Slice"
.end annotation


# instance fields
.field final b:I

.field final bmp:Landroid/graphics/Bitmap;

.field private final dr:Landroid/graphics/RectF;

.field final fitHeight:Z

.field final l:I

.field private final p:Landroid/graphics/Paint;

.field final r:I

.field private final sr:Landroid/graphics/Rect;

.field final t:I


# direct methods
.method constructor <init>(Landroid/graphics/Bitmap;IIIIZ)V
    .registers 9

    .prologue
    .line 785
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 781
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lfr/testudo/spacecorsair/mod/ModShipTree$Slice;->p:Landroid/graphics/Paint;

    .line 782
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lfr/testudo/spacecorsair/mod/ModShipTree$Slice;->sr:Landroid/graphics/Rect;

    .line 783
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lfr/testudo/spacecorsair/mod/ModShipTree$Slice;->dr:Landroid/graphics/RectF;

    .line 786
    iput-object p1, p0, Lfr/testudo/spacecorsair/mod/ModShipTree$Slice;->bmp:Landroid/graphics/Bitmap;

    iput p2, p0, Lfr/testudo/spacecorsair/mod/ModShipTree$Slice;->l:I

    iput p3, p0, Lfr/testudo/spacecorsair/mod/ModShipTree$Slice;->t:I

    iput p4, p0, Lfr/testudo/spacecorsair/mod/ModShipTree$Slice;->r:I

    iput p5, p0, Lfr/testudo/spacecorsair/mod/ModShipTree$Slice;->b:I

    iput-boolean p6, p0, Lfr/testudo/spacecorsair/mod/ModShipTree$Slice;->fitHeight:Z

    .line 787
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .registers 15

    .prologue
    const/4 v11, 0x4

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v12, 0x3

    const/4 v1, 0x0

    .line 791
    invoke-virtual {p0}, Lfr/testudo/spacecorsair/mod/ModShipTree$Slice;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    .line 792
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v3

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v4

    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModShipTree$Slice;->bmp:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModShipTree$Slice;->bmp:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    .line 793
    if-lez v3, :cond_29

    if-lez v4, :cond_29

    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModShipTree$Slice;->bmp:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 809
    :cond_29
    return-void

    .line 794
    :cond_2a
    iget-boolean v0, p0, Lfr/testudo/spacecorsair/mod/ModShipTree$Slice;->fitHeight:Z

    if-eqz v0, :cond_103

    int-to-float v0, v4

    int-to-float v7, v6

    div-float/2addr v0, v7

    .line 795
    :goto_31
    iget v7, p0, Lfr/testudo/spacecorsair/mod/ModShipTree$Slice;->l:I

    iget v8, p0, Lfr/testudo/spacecorsair/mod/ModShipTree$Slice;->r:I

    add-int/2addr v7, v8

    int-to-float v7, v7

    mul-float/2addr v7, v0

    int-to-float v8, v3

    cmpl-float v7, v7, v8

    if-lez v7, :cond_45

    int-to-float v0, v3

    iget v3, p0, Lfr/testudo/spacecorsair/mod/ModShipTree$Slice;->l:I

    iget v7, p0, Lfr/testudo/spacecorsair/mod/ModShipTree$Slice;->r:I

    add-int/2addr v3, v7

    int-to-float v3, v3

    div-float/2addr v0, v3

    .line 796
    :cond_45
    iget v3, p0, Lfr/testudo/spacecorsair/mod/ModShipTree$Slice;->t:I

    iget v7, p0, Lfr/testudo/spacecorsair/mod/ModShipTree$Slice;->b:I

    add-int/2addr v3, v7

    int-to-float v3, v3

    mul-float/2addr v3, v0

    int-to-float v7, v4

    cmpl-float v3, v3, v7

    if-lez v3, :cond_5d

    int-to-float v3, v4

    iget v4, p0, Lfr/testudo/spacecorsair/mod/ModShipTree$Slice;->t:I

    iget v7, p0, Lfr/testudo/spacecorsair/mod/ModShipTree$Slice;->b:I

    add-int/2addr v4, v7

    int-to-float v4, v4

    div-float/2addr v3, v4

    invoke-static {v0, v3}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 797
    :cond_5d
    new-array v3, v11, [I

    aput v1, v3, v1

    iget v4, p0, Lfr/testudo/spacecorsair/mod/ModShipTree$Slice;->l:I

    aput v4, v3, v9

    iget v4, p0, Lfr/testudo/spacecorsair/mod/ModShipTree$Slice;->r:I

    sub-int v4, v5, v4

    aput v4, v3, v10

    aput v5, v3, v12

    new-array v4, v11, [I

    aput v1, v4, v1

    iget v5, p0, Lfr/testudo/spacecorsair/mod/ModShipTree$Slice;->t:I

    aput v5, v4, v9

    iget v5, p0, Lfr/testudo/spacecorsair/mod/ModShipTree$Slice;->b:I

    sub-int v5, v6, v5

    aput v5, v4, v10

    aput v6, v4, v12

    .line 798
    new-array v5, v11, [F

    iget v6, v2, Landroid/graphics/Rect;->left:I

    int-to-float v6, v6

    aput v6, v5, v1

    iget v6, v2, Landroid/graphics/Rect;->left:I

    int-to-float v6, v6

    iget v7, p0, Lfr/testudo/spacecorsair/mod/ModShipTree$Slice;->l:I

    int-to-float v7, v7

    mul-float/2addr v7, v0

    add-float/2addr v6, v7

    aput v6, v5, v9

    iget v6, v2, Landroid/graphics/Rect;->right:I

    int-to-float v6, v6

    iget v7, p0, Lfr/testudo/spacecorsair/mod/ModShipTree$Slice;->r:I

    int-to-float v7, v7

    mul-float/2addr v7, v0

    sub-float/2addr v6, v7

    aput v6, v5, v10

    iget v6, v2, Landroid/graphics/Rect;->right:I

    int-to-float v6, v6

    aput v6, v5, v12

    .line 799
    new-array v6, v11, [F

    iget v7, v2, Landroid/graphics/Rect;->top:I

    int-to-float v7, v7

    aput v7, v6, v1

    iget v7, v2, Landroid/graphics/Rect;->top:I

    int-to-float v7, v7

    iget v8, p0, Lfr/testudo/spacecorsair/mod/ModShipTree$Slice;->t:I

    int-to-float v8, v8

    mul-float/2addr v8, v0

    add-float/2addr v7, v8

    aput v7, v6, v9

    iget v7, v2, Landroid/graphics/Rect;->bottom:I

    int-to-float v7, v7

    iget v8, p0, Lfr/testudo/spacecorsair/mod/ModShipTree$Slice;->b:I

    int-to-float v8, v8

    mul-float/2addr v8, v0

    sub-float/2addr v7, v8

    aput v7, v6, v10

    iget v7, v2, Landroid/graphics/Rect;->bottom:I

    int-to-float v7, v7

    aput v7, v6, v12

    .line 800
    iget-boolean v7, p0, Lfr/testudo/spacecorsair/mod/ModShipTree$Slice;->fitHeight:Z

    if-eqz v7, :cond_d6

    iget v7, v2, Landroid/graphics/Rect;->top:I

    int-to-float v7, v7

    iget v8, p0, Lfr/testudo/spacecorsair/mod/ModShipTree$Slice;->t:I

    int-to-float v8, v8

    mul-float/2addr v8, v0

    add-float/2addr v7, v8

    aput v7, v6, v9

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    int-to-float v2, v2

    iget v7, p0, Lfr/testudo/spacecorsair/mod/ModShipTree$Slice;->b:I

    int-to-float v7, v7

    mul-float/2addr v0, v7

    sub-float v0, v2, v0

    aput v0, v6, v10

    :cond_d6
    move v2, v1

    .line 801
    :goto_d7
    if-ge v2, v12, :cond_29

    move v0, v1

    .line 802
    :goto_da
    if-ge v0, v12, :cond_13e

    .line 803
    add-int/lit8 v7, v2, 0x1

    aget v7, v3, v7

    aget v8, v3, v2

    if-le v7, v8, :cond_100

    add-int/lit8 v7, v0, 0x1

    aget v7, v4, v7

    aget v8, v4, v0

    if-le v7, v8, :cond_100

    add-int/lit8 v7, v2, 0x1

    aget v7, v5, v7

    aget v8, v5, v2

    cmpg-float v7, v7, v8

    if-lez v7, :cond_100

    add-int/lit8 v7, v0, 0x1

    aget v7, v6, v7

    aget v8, v6, v0

    cmpg-float v7, v7, v8

    if-gtz v7, :cond_110

    .line 802
    :cond_100
    :goto_100
    add-int/lit8 v0, v0, 0x1

    goto :goto_da

    .line 794
    :cond_103
    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v0

    int-to-float v0, v0

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v7

    int-to-float v7, v7

    div-float/2addr v0, v7

    goto/16 :goto_31

    .line 804
    :cond_110
    iget-object v7, p0, Lfr/testudo/spacecorsair/mod/ModShipTree$Slice;->sr:Landroid/graphics/Rect;

    aget v8, v3, v2

    aget v9, v4, v0

    add-int/lit8 v10, v2, 0x1

    aget v10, v3, v10

    add-int/lit8 v11, v0, 0x1

    aget v11, v4, v11

    invoke-virtual {v7, v8, v9, v10, v11}, Landroid/graphics/Rect;->set(IIII)V

    .line 805
    iget-object v7, p0, Lfr/testudo/spacecorsair/mod/ModShipTree$Slice;->dr:Landroid/graphics/RectF;

    aget v8, v5, v2

    aget v9, v6, v0

    add-int/lit8 v10, v2, 0x1

    aget v10, v5, v10

    add-int/lit8 v11, v0, 0x1

    aget v11, v6, v11

    invoke-virtual {v7, v8, v9, v10, v11}, Landroid/graphics/RectF;->set(FFFF)V

    .line 806
    iget-object v7, p0, Lfr/testudo/spacecorsair/mod/ModShipTree$Slice;->bmp:Landroid/graphics/Bitmap;

    iget-object v8, p0, Lfr/testudo/spacecorsair/mod/ModShipTree$Slice;->sr:Landroid/graphics/Rect;

    iget-object v9, p0, Lfr/testudo/spacecorsair/mod/ModShipTree$Slice;->dr:Landroid/graphics/RectF;

    iget-object v10, p0, Lfr/testudo/spacecorsair/mod/ModShipTree$Slice;->p:Landroid/graphics/Paint;

    invoke-virtual {p1, v7, v8, v9, v10}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    goto :goto_100

    .line 801
    :cond_13e
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_d7
.end method

.method public getOpacity()I
    .registers 2

    .prologue
    .line 813
    const/4 v0, -0x3

    return v0
.end method

.method public setAlpha(I)V
    .registers 3

    .prologue
    .line 811
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModShipTree$Slice;->p:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .registers 3

    .prologue
    .line 812
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModShipTree$Slice;->p:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    return-void
.end method
