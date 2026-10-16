.class public Lfr/testudo/spacecorsair/activity/DepthPageTransformer;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/support/v4/view/ViewPager$f;


# static fields
.field private static MIN_SCALE:F


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 16
    const/high16 v0, 0x3f400000    # 0.75f

    sput v0, Lfr/testudo/spacecorsair/activity/DepthPageTransformer;->MIN_SCALE:F

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public transformPage(Landroid/view/View;F)V
    .registers 7

    .prologue
    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    .line 19
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    .line 21
    const/high16 v1, -0x40800000    # -1.0f

    cmpg-float v1, p2, v1

    if-gez v1, :cond_11

    .line 23
    invoke-virtual {p1, v2}, Landroid/view/View;->setAlpha(F)V

    .line 49
    :goto_10
    return-void

    .line 25
    :cond_11
    cmpg-float v1, p2, v2

    if-gtz v1, :cond_22

    .line 27
    invoke-virtual {p1, v3}, Landroid/view/View;->setAlpha(F)V

    .line 28
    invoke-virtual {p1, v2}, Landroid/view/View;->setTranslationX(F)V

    .line 29
    invoke-virtual {p1, v3}, Landroid/view/View;->setScaleX(F)V

    .line 30
    invoke-virtual {p1, v3}, Landroid/view/View;->setScaleY(F)V

    goto :goto_10

    .line 32
    :cond_22
    cmpg-float v1, p2, v3

    if-gtz v1, :cond_46

    .line 34
    sub-float v1, v3, p2

    invoke-virtual {p1, v1}, Landroid/view/View;->setAlpha(F)V

    .line 37
    int-to-float v0, v0

    neg-float v1, p2

    mul-float/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationX(F)V

    .line 40
    sget v0, Lfr/testudo/spacecorsair/activity/DepthPageTransformer;->MIN_SCALE:F

    sget v1, Lfr/testudo/spacecorsair/activity/DepthPageTransformer;->MIN_SCALE:F

    sub-float v1, v3, v1

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    sub-float v2, v3, v2

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    .line 42
    invoke-virtual {p1, v0}, Landroid/view/View;->setScaleX(F)V

    .line 43
    invoke-virtual {p1, v0}, Landroid/view/View;->setScaleY(F)V

    goto :goto_10

    .line 47
    :cond_46
    invoke-virtual {p1, v2}, Landroid/view/View;->setAlpha(F)V

    goto :goto_10
.end method
