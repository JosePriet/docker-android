.class final Lfr/testudo/spacecorsair/mod/ModFitting$Bar;
.super Landroid/view/View;
.source "ModFitting.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfr/testudo/spacecorsair/mod/ModFitting;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Bar"
.end annotation


# instance fields
.field final bg:Landroid/graphics/Paint;

.field final d:F

.field final edge:Landroid/graphics/Paint;

.field final fill:Landroid/graphics/Paint;

.field frac:F

.field final label:Ljava/lang/String;

.field final r:Landroid/graphics/RectF;

.field final txt:Landroid/graphics/Paint;

.field value:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;I)V
    .registers 8

    .prologue
    const v3, 0xffffff

    const/4 v1, 0x1

    .line 981
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 974
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lfr/testudo/spacecorsair/mod/ModFitting$Bar;->bg:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lfr/testudo/spacecorsair/mod/ModFitting$Bar;->fill:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lfr/testudo/spacecorsair/mod/ModFitting$Bar;->txt:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lfr/testudo/spacecorsair/mod/ModFitting$Bar;->edge:Landroid/graphics/Paint;

    .line 975
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lfr/testudo/spacecorsair/mod/ModFitting$Bar;->r:Landroid/graphics/RectF;

    .line 978
    const-string v0, ""

    iput-object v0, p0, Lfr/testudo/spacecorsair/mod/ModFitting$Bar;->value:Ljava/lang/String;

    .line 982
    iput-object p2, p0, Lfr/testudo/spacecorsair/mod/ModFitting$Bar;->label:Ljava/lang/String;

    .line 983
    invoke-static {p1}, Lfr/testudo/spacecorsair/mod/ModFitting;->dp(Landroid/content/Context;)F

    move-result v0

    iput v0, p0, Lfr/testudo/spacecorsair/mod/ModFitting$Bar;->d:F

    .line 984
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModFitting$Bar;->bg:Landroid/graphics/Paint;

    const v1, -0xefe5d8

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 985
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModFitting$Bar;->fill:Landroid/graphics/Paint;

    and-int v1, p3, v3

    const/high16 v2, -0x50000000

    or-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 986
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModFitting$Bar;->edge:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 987
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModFitting$Bar;->edge:Landroid/graphics/Paint;

    const/high16 v1, 0x3f800000    # 1.0f

    iget v2, p0, Lfr/testudo/spacecorsair/mod/ModFitting$Bar;->d:F

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 988
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModFitting$Bar;->edge:Landroid/graphics/Paint;

    and-int v1, p3, v3

    const/high16 v2, 0x70000000

    or-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 989
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModFitting$Bar;->txt:Landroid/graphics/Paint;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 990
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModFitting$Bar;->txt:Landroid/graphics/Paint;

    const/high16 v1, 0x41200000    # 10.0f

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->scaledDensity:F

    mul-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 991
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModFitting$Bar;->txt:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 992
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 11

    .prologue
    const/high16 v8, 0x40a00000    # 5.0f

    const/high16 v7, 0x40000000    # 2.0f

    const/4 v6, 0x0

    .line 1005
    invoke-virtual {p0}, Lfr/testudo/spacecorsair/mod/ModFitting$Bar;->getWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Lfr/testudo/spacecorsair/mod/ModFitting$Bar;->getHeight()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x40400000    # 3.0f

    iget v3, p0, Lfr/testudo/spacecorsair/mod/ModFitting$Bar;->d:F

    mul-float/2addr v2, v3

    .line 1006
    iget-object v3, p0, Lfr/testudo/spacecorsair/mod/ModFitting$Bar;->r:Landroid/graphics/RectF;

    invoke-virtual {v3, v6, v6, v0, v1}, Landroid/graphics/RectF;->set(FFFF)V

    .line 1007
    iget-object v3, p0, Lfr/testudo/spacecorsair/mod/ModFitting$Bar;->r:Landroid/graphics/RectF;

    iget-object v4, p0, Lfr/testudo/spacecorsair/mod/ModFitting$Bar;->bg:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v2, v2, v4}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 1008
    iget v3, p0, Lfr/testudo/spacecorsair/mod/ModFitting$Bar;->frac:F

    cmpl-float v3, v3, v6

    if-lez v3, :cond_3b

    .line 1009
    iget-object v3, p0, Lfr/testudo/spacecorsair/mod/ModFitting$Bar;->r:Landroid/graphics/RectF;

    mul-float v4, v7, v2

    iget v5, p0, Lfr/testudo/spacecorsair/mod/ModFitting$Bar;->frac:F

    mul-float/2addr v5, v0

    invoke-static {v4, v5}, Ljava/lang/Math;->max(FF)F

    move-result v4

    invoke-virtual {v3, v6, v6, v4, v1}, Landroid/graphics/RectF;->set(FFFF)V

    .line 1010
    iget-object v3, p0, Lfr/testudo/spacecorsair/mod/ModFitting$Bar;->r:Landroid/graphics/RectF;

    iget-object v4, p0, Lfr/testudo/spacecorsair/mod/ModFitting$Bar;->fill:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v2, v2, v4}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 1012
    :cond_3b
    iget-object v3, p0, Lfr/testudo/spacecorsair/mod/ModFitting$Bar;->r:Landroid/graphics/RectF;

    invoke-virtual {v3, v6, v6, v0, v1}, Landroid/graphics/RectF;->set(FFFF)V

    .line 1013
    iget-object v3, p0, Lfr/testudo/spacecorsair/mod/ModFitting$Bar;->r:Landroid/graphics/RectF;

    iget-object v4, p0, Lfr/testudo/spacecorsair/mod/ModFitting$Bar;->edge:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v2, v2, v4}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 1014
    div-float/2addr v1, v7

    iget-object v2, p0, Lfr/testudo/spacecorsair/mod/ModFitting$Bar;->txt:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->descent()F

    move-result v2

    iget-object v3, p0, Lfr/testudo/spacecorsair/mod/ModFitting$Bar;->txt:Landroid/graphics/Paint;

    invoke-virtual {v3}, Landroid/graphics/Paint;->ascent()F

    move-result v3

    add-float/2addr v2, v3

    div-float/2addr v2, v7

    sub-float/2addr v1, v2

    .line 1015
    iget-object v2, p0, Lfr/testudo/spacecorsair/mod/ModFitting$Bar;->txt:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 1016
    iget-object v2, p0, Lfr/testudo/spacecorsair/mod/ModFitting$Bar;->label:Ljava/lang/String;

    iget v3, p0, Lfr/testudo/spacecorsair/mod/ModFitting$Bar;->d:F

    mul-float/2addr v3, v8

    iget-object v4, p0, Lfr/testudo/spacecorsair/mod/ModFitting$Bar;->txt:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3, v1, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1017
    iget-object v2, p0, Lfr/testudo/spacecorsair/mod/ModFitting$Bar;->txt:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 1018
    iget-object v2, p0, Lfr/testudo/spacecorsair/mod/ModFitting$Bar;->value:Ljava/lang/String;

    iget v3, p0, Lfr/testudo/spacecorsair/mod/ModFitting$Bar;->d:F

    mul-float/2addr v3, v8

    sub-float/2addr v0, v3

    iget-object v3, p0, Lfr/testudo/spacecorsair/mod/ModFitting$Bar;->txt:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v0, v1, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1019
    return-void
.end method

.method set(FLjava/lang/String;)V
    .registers 5

    .prologue
    const/4 v0, 0x0

    .line 995
    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-eqz v1, :cond_8

    move p1, v0

    .line 996
    :cond_8
    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v1, p1}, Ljava/lang/Math;->min(FF)F

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 997
    iget v1, p0, Lfr/testudo/spacecorsair/mod/ModFitting$Bar;->frac:F

    cmpl-float v1, v0, v1

    if-nez v1, :cond_21

    iget-object v1, p0, Lfr/testudo/spacecorsair/mod/ModFitting$Bar;->value:Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_21

    .line 1001
    :goto_20
    return-void

    .line 998
    :cond_21
    iput v0, p0, Lfr/testudo/spacecorsair/mod/ModFitting$Bar;->frac:F

    .line 999
    iput-object p2, p0, Lfr/testudo/spacecorsair/mod/ModFitting$Bar;->value:Ljava/lang/String;

    .line 1000
    invoke-virtual {p0}, Lfr/testudo/spacecorsair/mod/ModFitting$Bar;->invalidate()V

    goto :goto_20
.end method
