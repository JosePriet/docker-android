.class public Lfr/testudo/spacecorsair/activity/pagerindicator/LinePageIndicator;
.super Landroid/view/View;
.source "SourceFile"

# interfaces
.implements Lfr/testudo/spacecorsair/activity/pagerindicator/PageIndicator;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lfr/testudo/spacecorsair/activity/pagerindicator/LinePageIndicator$1;,
        Lfr/testudo/spacecorsair/activity/pagerindicator/LinePageIndicator$SavedState;
    }
.end annotation


# static fields
.field private static final INVALID_POINTER:I = -0x1


# instance fields
.field private mActivePointerId:I

.field private mCentered:Z

.field private mCurrentPage:I

.field private mGapWidth:F

.field private mIsDragging:Z

.field private mLastMotionX:F

.field private mLineWidth:F

.field private mListener:Landroid/support/v4/view/ViewPager$e;

.field private final mPaintSelected:Landroid/graphics/Paint;

.field private final mPaintUnselected:Landroid/graphics/Paint;

.field private mTouchSlop:I

.field private mViewPager:Landroid/support/v4/view/ViewPager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .prologue
    .line 59
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lfr/testudo/spacecorsair/activity/pagerindicator/LinePageIndicator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 60
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    .prologue
    .line 63
    const v0, 0x7f010002

    invoke-direct {p0, p1, p2, v0}, Lfr/testudo/spacecorsair/activity/pagerindicator/LinePageIndicator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 64
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 13

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 67
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 43
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v7}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lfr/testudo/spacecorsair/activity/pagerindicator/LinePageIndicator;->mPaintUnselected:Landroid/graphics/Paint;

    .line 44
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v7}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lfr/testudo/spacecorsair/activity/pagerindicator/LinePageIndicator;->mPaintSelected:Landroid/graphics/Paint;

    .line 53
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lfr/testudo/spacecorsair/activity/pagerindicator/LinePageIndicator;->mLastMotionX:F

    .line 54
    const/4 v0, -0x1

    iput v0, p0, Lfr/testudo/spacecorsair/activity/pagerindicator/LinePageIndicator;->mActivePointerId:I

    .line 68
    invoke-virtual {p0}, Lfr/testudo/spacecorsair/activity/pagerindicator/LinePageIndicator;->isInEditMode()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 99
    :goto_20
    return-void

    .line 70
    :cond_21
    invoke-virtual {p0}, Lfr/testudo/spacecorsair/activity/pagerindicator/LinePageIndicator;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 73
    const v1, 0x7f08001a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    .line 74
    const v2, 0x7f08001b

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    .line 75
    const v3, 0x7f090017

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    .line 76
    const v4, 0x7f090018

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    .line 77
    const v5, 0x7f090019

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    .line 78
    const v6, 0x7f0d0002

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    .line 81
    sget-object v6, Lfr/testudo/spacecorsair/R$styleable;->LinePageIndicator:[I

    invoke-virtual {p1, p2, v6, p3, v8}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v6

    .line 83
    invoke-virtual {v6, v7, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lfr/testudo/spacecorsair/activity/pagerindicator/LinePageIndicator;->mCentered:Z

    .line 84
    const/4 v0, 0x5

    invoke-virtual {v6, v0, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    iput v0, p0, Lfr/testudo/spacecorsair/activity/pagerindicator/LinePageIndicator;->mLineWidth:F

    .line 85
    const/4 v0, 0x6

    invoke-virtual {v6, v0, v4}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    iput v0, p0, Lfr/testudo/spacecorsair/activity/pagerindicator/LinePageIndicator;->mGapWidth:F

    .line 86
    const/4 v0, 0x3

    invoke-virtual {v6, v0, v5}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    invoke-virtual {p0, v0}, Lfr/testudo/spacecorsair/activity/pagerindicator/LinePageIndicator;->setStrokeWidth(F)V

    .line 87
    iget-object v0, p0, Lfr/testudo/spacecorsair/activity/pagerindicator/LinePageIndicator;->mPaintUnselected:Landroid/graphics/Paint;

    const/4 v3, 0x4

    invoke-virtual {v6, v3, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 88
    iget-object v0, p0, Lfr/testudo/spacecorsair/activity/pagerindicator/LinePageIndicator;->mPaintSelected:Landroid/graphics/Paint;

    const/4 v2, 0x2

    invoke-virtual {v6, v2, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 90
    invoke-virtual {v6, v8}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 91
    if-eqz v0, :cond_8e

    .line 92
    invoke-virtual {p0, v0}, Lfr/testudo/spacecorsair/activity/pagerindicator/LinePageIndicator;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 95
    :cond_8e
    invoke-virtual {v6}, Landroid/content/res/TypedArray;->recycle()V

    .line 97
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 98
    invoke-static {v0}, Landroid/support/v4/view/y;->a(Landroid/view/ViewConfiguration;)I

    move-result v0

    iput v0, p0, Lfr/testudo/spacecorsair/activity/pagerindicator/LinePageIndicator;->mTouchSlop:I

    goto :goto_20
.end method

.method private measureHeight(I)I
    .registers 6

    .prologue
    .line 385
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 386
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 388
    const/high16 v0, 0x40000000    # 2.0f

    if-ne v1, v0, :cond_13

    .line 390
    int-to-float v0, v2

    .line 399
    :cond_d
    :goto_d
    invoke-static {v0}, Landroid/util/FloatMath;->ceil(F)F

    move-result v0

    float-to-int v0, v0

    return v0

    .line 393
    :cond_13
    iget-object v0, p0, Lfr/testudo/spacecorsair/activity/pagerindicator/LinePageIndicator;->mPaintSelected:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v0

    invoke-virtual {p0}, Lfr/testudo/spacecorsair/activity/pagerindicator/LinePageIndicator;->getPaddingTop()I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v0, v3

    invoke-virtual {p0}, Lfr/testudo/spacecorsair/activity/pagerindicator/LinePageIndicator;->getPaddingBottom()I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v0, v3

    .line 395
    const/high16 v3, -0x80000000

    if-ne v1, v3, :cond_d

    .line 396
    int-to-float v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    goto :goto_d
.end method

.method private measureWidth(I)I
    .registers 8

    .prologue
    .line 358
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 359
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 361
    const/high16 v0, 0x40000000    # 2.0f

    if-eq v1, v0, :cond_10

    iget-object v0, p0, Lfr/testudo/spacecorsair/activity/pagerindicator/LinePageIndicator;->mViewPager:Landroid/support/v4/view/ViewPager;

    if-nez v0, :cond_17

    .line 363
    :cond_10
    int-to-float v0, v2

    .line 373
    :cond_11
    :goto_11
    invoke-static {v0}, Landroid/util/FloatMath;->ceil(F)F

    move-result v0

    float-to-int v0, v0

    return v0

    .line 366
    :cond_17
    iget-object v0, p0, Lfr/testudo/spacecorsair/activity/pagerindicator/LinePageIndicator;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/o;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/view/o;->getCount()I

    move-result v0

    .line 367
    invoke-virtual {p0}, Lfr/testudo/spacecorsair/activity/pagerindicator/LinePageIndicator;->getPaddingLeft()I

    move-result v3

    invoke-virtual {p0}, Lfr/testudo/spacecorsair/activity/pagerindicator/LinePageIndicator;->getPaddingRight()I

    move-result v4

    add-int/2addr v3, v4

    int-to-float v3, v3

    int-to-float v4, v0

    iget v5, p0, Lfr/testudo/spacecorsair/activity/pagerindicator/LinePageIndicator;->mLineWidth:F

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    add-int/lit8 v0, v0, -0x1

    int-to-float v0, v0

    iget v4, p0, Lfr/testudo/spacecorsair/activity/pagerindicator/LinePageIndicator;->mGapWidth:F

    mul-float/2addr v0, v4

    add-float/2addr v0, v3

    .line 369
    const/high16 v3, -0x80000000

    if-ne v1, v3, :cond_11

    .line 370
    int-to-float v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    goto :goto_11
.end method


# virtual methods
.method public getGapWidth()F
    .registers 2

    .prologue
    .line 154
    iget v0, p0, Lfr/testudo/spacecorsair/activity/pagerindicator/LinePageIndicator;->mGapWidth:F

    return v0
.end method

.method public getLineWidth()F
    .registers 2

    .prologue
    .line 135
    iget v0, p0, Lfr/testudo/spacecorsair/activity/pagerindicator/LinePageIndicator;->mLineWidth:F

    return v0
.end method

.method public getSelectedColor()I
    .registers 2

    .prologue
    .line 126
    iget-object v0, p0, Lfr/testudo/spacecorsair/activity/pagerindicator/LinePageIndicator;->mPaintSelected:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    return v0
.end method

.method public getStrokeWidth()F
    .registers 2

    .prologue
    .line 145
    iget-object v0, p0, Lfr/testudo/spacecorsair/activity/pagerindicator/LinePageIndicator;->mPaintSelected:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v0

    return v0
.end method

.method public getUnselectedColor()I
    .registers 2

    .prologue
    .line 117
    iget-object v0, p0, Lfr/testudo/spacecorsair/activity/pagerindicator/LinePageIndicator;->mPaintUnselected:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    return v0
.end method

.method public isCentered()Z
    .registers 2

    .prologue
    .line 108
    iget-boolean v0, p0, Lfr/testudo/spacecorsair/activity/pagerindicator/LinePageIndicator;->mCentered:Z

    return v0
.end method

.method public notifyDataSetChanged()V
    .registers 1

    .prologue
    .line 312
    invoke-virtual {p0}, Lfr/testudo/spacecorsair/activity/pagerindicator/LinePageIndicator;->invalidate()V

    .line 313
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 12

    .prologue
    const/high16 v6, 0x40000000    # 2.0f

    .line 159
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 161
    iget-object v0, p0, Lfr/testudo/spacecorsair/activity/pagerindicator/LinePageIndicator;->mViewPager:Landroid/support/v4/view/ViewPager;

    if-nez v0, :cond_a

    .line 192
    :cond_9
    :goto_9
    return-void

    .line 164
    :cond_a
    iget-object v0, p0, Lfr/testudo/spacecorsair/activity/pagerindicator/LinePageIndicator;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/o;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/view/o;->getCount()I

    move-result v8

    .line 165
    if-eqz v8, :cond_9

    .line 169
    iget v0, p0, Lfr/testudo/spacecorsair/activity/pagerindicator/LinePageIndicator;->mCurrentPage:I

    if-lt v0, v8, :cond_20

    .line 170
    add-int/lit8 v0, v8, -0x1

    invoke-virtual {p0, v0}, Lfr/testudo/spacecorsair/activity/pagerindicator/LinePageIndicator;->setCurrentItem(I)V

    goto :goto_9

    .line 174
    :cond_20
    iget v0, p0, Lfr/testudo/spacecorsair/activity/pagerindicator/LinePageIndicator;->mLineWidth:F

    iget v1, p0, Lfr/testudo/spacecorsair/activity/pagerindicator/LinePageIndicator;->mGapWidth:F

    add-float v9, v0, v1

    .line 175
    int-to-float v0, v8

    mul-float/2addr v0, v9

    iget v1, p0, Lfr/testudo/spacecorsair/activity/pagerindicator/LinePageIndicator;->mGapWidth:F

    sub-float v1, v0, v1

    .line 176
    invoke-virtual {p0}, Lfr/testudo/spacecorsair/activity/pagerindicator/LinePageIndicator;->getPaddingTop()I

    move-result v0

    int-to-float v2, v0

    .line 177
    invoke-virtual {p0}, Lfr/testudo/spacecorsair/activity/pagerindicator/LinePageIndicator;->getPaddingLeft()I

    move-result v0

    int-to-float v0, v0

    .line 178
    invoke-virtual {p0}, Lfr/testudo/spacecorsair/activity/pagerindicator/LinePageIndicator;->getPaddingRight()I

    move-result v3

    int-to-float v3, v3

    .line 180
    invoke-virtual {p0}, Lfr/testudo/spacecorsair/activity/pagerindicator/LinePageIndicator;->getHeight()I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v4, v2

    invoke-virtual {p0}, Lfr/testudo/spacecorsair/activity/pagerindicator/LinePageIndicator;->getPaddingBottom()I

    move-result v5

    int-to-float v5, v5

    sub-float/2addr v4, v5

    div-float/2addr v4, v6

    add-float/2addr v2, v4

    .line 182
    iget-boolean v4, p0, Lfr/testudo/spacecorsair/activity/pagerindicator/LinePageIndicator;->mCentered:Z

    if-eqz v4, :cond_79

    .line 183
    invoke-virtual {p0}, Lfr/testudo/spacecorsair/activity/pagerindicator/LinePageIndicator;->getWidth()I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v4, v0

    sub-float v3, v4, v3

    div-float/2addr v3, v6

    div-float/2addr v1, v6

    sub-float v1, v3, v1

    add-float/2addr v0, v1

    move v6, v0

    .line 187
    :goto_5b
    const/4 v0, 0x0

    move v7, v0

    :goto_5d
    if-ge v7, v8, :cond_9

    .line 188
    int-to-float v0, v7

    mul-float/2addr v0, v9

    add-float v1, v6, v0

    .line 189
    iget v0, p0, Lfr/testudo/spacecorsair/activity/pagerindicator/LinePageIndicator;->mLineWidth:F

    add-float v3, v1, v0

    .line 190
    iget v0, p0, Lfr/testudo/spacecorsair/activity/pagerindicator/LinePageIndicator;->mCurrentPage:I

    if-ne v7, v0, :cond_76

    iget-object v5, p0, Lfr/testudo/spacecorsair/activity/pagerindicator/LinePageIndicator;->mPaintSelected:Landroid/graphics/Paint;

    :goto_6d
    move-object v0, p1

    move v4, v2

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 187
    add-int/lit8 v0, v7, 0x1

    move v7, v0

    goto :goto_5d

    .line 190
    :cond_76
    iget-object v5, p0, Lfr/testudo/spacecorsair/activity/pagerindicator/LinePageIndicator;->mPaintUnselected:Landroid/graphics/Paint;

    goto :goto_6d

    :cond_79
    move v6, v0

    goto :goto_5b
.end method

.method protected onMeasure(II)V
    .registers 5

    .prologue
    .line 346
    invoke-direct {p0, p1}, Lfr/testudo/spacecorsair/activity/pagerindicator/LinePageIndicator;->measureWidth(I)I

    move-result v0

    invoke-direct {p0, p2}, Lfr/testudo/spacecorsair/activity/pagerindicator/LinePageIndicator;->measureHeight(I)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lfr/testudo/spacecorsair/activity/pagerindicator/LinePageIndicator;->setMeasuredDimension(II)V

    .line 347
    return-void
.end method

.method public onPageScrollStateChanged(I)V
    .registers 3

    .prologue
    .line 317
    iget-object v0, p0, Lfr/testudo/spacecorsair/activity/pagerindicator/LinePageIndicator;->mListener:Landroid/support/v4/view/ViewPager$e;

    if-eqz v0, :cond_9

    .line 318
    iget-object v0, p0, Lfr/testudo/spacecorsair/activity/pagerindicator/LinePageIndicator;->mListener:Landroid/support/v4/view/ViewPager$e;

    invoke-interface {v0, p1}, Landroid/support/v4/view/ViewPager$e;->onPageScrollStateChanged(I)V

    .line 320
    :cond_9
    return-void
.end method

.method public onPageScrolled(IFI)V
    .registers 5

    .prologue
    .line 324
    iget-object v0, p0, Lfr/testudo/spacecorsair/activity/pagerindicator/LinePageIndicator;->mListener:Landroid/support/v4/view/ViewPager$e;

    if-eqz v0, :cond_9

    .line 325
    iget-object v0, p0, Lfr/testudo/spacecorsair/activity/pagerindicator/LinePageIndicator;->mListener:Landroid/support/v4/view/ViewPager$e;

    invoke-interface {v0, p1, p2, p3}, Landroid/support/v4/view/ViewPager$e;->onPageScrolled(IFI)V

    .line 327
    :cond_9
    return-void
.end method

.method public onPageSelected(I)V
    .registers 3

    .prologue
    .line 331
    iput p1, p0, Lfr/testudo/spacecorsair/activity/pagerindicator/LinePageIndicator;->mCurrentPage:I

    .line 332
    invoke-virtual {p0}, Lfr/testudo/spacecorsair/activity/pagerindicator/LinePageIndicator;->invalidate()V

    .line 334
    iget-object v0, p0, Lfr/testudo/spacecorsair/activity/pagerindicator/LinePageIndicator;->mListener:Landroid/support/v4/view/ViewPager$e;

    if-eqz v0, :cond_e

    .line 335
    iget-object v0, p0, Lfr/testudo/spacecorsair/activity/pagerindicator/LinePageIndicator;->mListener:Landroid/support/v4/view/ViewPager$e;

    invoke-interface {v0, p1}, Landroid/support/v4/view/ViewPager$e;->onPageSelected(I)V

    .line 337
    :cond_e
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .registers 3

    .prologue
    .line 404
    check-cast p1, Lfr/testudo/spacecorsair/activity/pagerindicator/LinePageIndicator$SavedState;

    .line 405
    invoke-virtual {p1}, Lfr/testudo/spacecorsair/activity/pagerindicator/LinePageIndicator$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 406
    iget v0, p1, Lfr/testudo/spacecorsair/activity/pagerindicator/LinePageIndicator$SavedState;->currentPage:I

    iput v0, p0, Lfr/testudo/spacecorsair/activity/pagerindicator/LinePageIndicator;->mCurrentPage:I

    .line 407
    invoke-virtual {p0}, Lfr/testudo/spacecorsair/activity/pagerindicator/LinePageIndicator;->requestLayout()V

    .line 408
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .registers 3

    .prologue
    .line 412
    invoke-super {p0}, Landroid/view/View;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 413
    new-instance v1, Lfr/testudo/spacecorsair/activity/pagerindicator/LinePageIndicator$SavedState;

    invoke-direct {v1, v0}, Lfr/testudo/spacecorsair/activity/pagerindicator/LinePageIndicator$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 414
    iget v0, p0, Lfr/testudo/spacecorsair/activity/pagerindicator/LinePageIndicator;->mCurrentPage:I

    iput v0, v1, Lfr/testudo/spacecorsair/activity/pagerindicator/LinePageIndicator$SavedState;->currentPage:I

    .line 415
    return-object v1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 11

    .prologue
    const/4 v8, 0x3

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 195
    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 274
    :cond_9
    :goto_9
    return v1

    .line 198
    :cond_a
    iget-object v2, p0, Lfr/testudo/spacecorsair/activity/pagerindicator/LinePageIndicator;->mViewPager:Landroid/support/v4/view/ViewPager;

    if-eqz v2, :cond_1a

    iget-object v2, p0, Lfr/testudo/spacecorsair/activity/pagerindicator/LinePageIndicator;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v2}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/o;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/view/o;->getCount()I

    move-result v2

    if-nez v2, :cond_1c

    :cond_1a
    move v1, v0

    .line 199
    goto :goto_9

    .line 202
    :cond_1c
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    and-int/lit16 v2, v2, 0xff

    .line 203
    packed-switch v2, :pswitch_data_108

    :pswitch_25
    goto :goto_9

    .line 205
    :pswitch_26
    invoke-static {p1, v0}, Landroid/support/v4/view/m;->b(Landroid/view/MotionEvent;I)I

    move-result v0

    iput v0, p0, Lfr/testudo/spacecorsair/activity/pagerindicator/LinePageIndicator;->mActivePointerId:I

    .line 206
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lfr/testudo/spacecorsair/activity/pagerindicator/LinePageIndicator;->mLastMotionX:F

    goto :goto_9

    .line 210
    :pswitch_33
    iget v0, p0, Lfr/testudo/spacecorsair/activity/pagerindicator/LinePageIndicator;->mActivePointerId:I

    invoke-static {p1, v0}, Landroid/support/v4/view/m;->a(Landroid/view/MotionEvent;I)I

    move-result v0

    .line 211
    invoke-static {p1, v0}, Landroid/support/v4/view/m;->c(Landroid/view/MotionEvent;I)F

    move-result v0

    .line 212
    iget v2, p0, Lfr/testudo/spacecorsair/activity/pagerindicator/LinePageIndicator;->mLastMotionX:F

    sub-float v2, v0, v2

    .line 214
    iget-boolean v3, p0, Lfr/testudo/spacecorsair/activity/pagerindicator/LinePageIndicator;->mIsDragging:Z

    if-nez v3, :cond_52

    .line 215
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v3

    iget v4, p0, Lfr/testudo/spacecorsair/activity/pagerindicator/LinePageIndicator;->mTouchSlop:I

    int-to-float v4, v4

    cmpl-float v3, v3, v4

    if-lez v3, :cond_52

    .line 216
    iput-boolean v1, p0, Lfr/testudo/spacecorsair/activity/pagerindicator/LinePageIndicator;->mIsDragging:Z

    .line 220
    :cond_52
    iget-boolean v3, p0, Lfr/testudo/spacecorsair/activity/pagerindicator/LinePageIndicator;->mIsDragging:Z

    if-eqz v3, :cond_9

    .line 221
    iput v0, p0, Lfr/testudo/spacecorsair/activity/pagerindicator/LinePageIndicator;->mLastMotionX:F

    .line 222
    iget-object v0, p0, Lfr/testudo/spacecorsair/activity/pagerindicator/LinePageIndicator;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->f()Z

    move-result v0

    if-nez v0, :cond_68

    iget-object v0, p0, Lfr/testudo/spacecorsair/activity/pagerindicator/LinePageIndicator;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->d()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 223
    :cond_68
    iget-object v0, p0, Lfr/testudo/spacecorsair/activity/pagerindicator/LinePageIndicator;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, v2}, Landroid/support/v4/view/ViewPager;->b(F)V

    goto :goto_9

    .line 232
    :pswitch_6e
    iget-boolean v3, p0, Lfr/testudo/spacecorsair/activity/pagerindicator/LinePageIndicator;->mIsDragging:Z

    if-nez v3, :cond_bf

    .line 233
    iget-object v3, p0, Lfr/testudo/spacecorsair/activity/pagerindicator/LinePageIndicator;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v3}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/o;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v4/view/o;->getCount()I

    move-result v3

    .line 234
    invoke-virtual {p0}, Lfr/testudo/spacecorsair/activity/pagerindicator/LinePageIndicator;->getWidth()I

    move-result v4

    .line 235
    int-to-float v5, v4

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v5, v6

    .line 236
    int-to-float v4, v4

    const/high16 v6, 0x40c00000    # 6.0f

    div-float/2addr v4, v6

    .line 238
    iget v6, p0, Lfr/testudo/spacecorsair/activity/pagerindicator/LinePageIndicator;->mCurrentPage:I

    if-lez v6, :cond_a3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    sub-float v7, v5, v4

    cmpg-float v6, v6, v7

    if-gez v6, :cond_a3

    .line 239
    if-eq v2, v8, :cond_9

    .line 240
    iget-object v0, p0, Lfr/testudo/spacecorsair/activity/pagerindicator/LinePageIndicator;->mViewPager:Landroid/support/v4/view/ViewPager;

    iget v2, p0, Lfr/testudo/spacecorsair/activity/pagerindicator/LinePageIndicator;->mCurrentPage:I

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v2}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    goto/16 :goto_9

    .line 243
    :cond_a3
    iget v6, p0, Lfr/testudo/spacecorsair/activity/pagerindicator/LinePageIndicator;->mCurrentPage:I

    add-int/lit8 v3, v3, -0x1

    if-ge v6, v3, :cond_bf

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    add-float/2addr v4, v5

    cmpl-float v3, v3, v4

    if-lez v3, :cond_bf

    .line 244
    if-eq v2, v8, :cond_9

    .line 245
    iget-object v0, p0, Lfr/testudo/spacecorsair/activity/pagerindicator/LinePageIndicator;->mViewPager:Landroid/support/v4/view/ViewPager;

    iget v2, p0, Lfr/testudo/spacecorsair/activity/pagerindicator/LinePageIndicator;->mCurrentPage:I

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v0, v2}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    goto/16 :goto_9

    .line 251
    :cond_bf
    iput-boolean v0, p0, Lfr/testudo/spacecorsair/activity/pagerindicator/LinePageIndicator;->mIsDragging:Z

    .line 252
    const/4 v0, -0x1

    iput v0, p0, Lfr/testudo/spacecorsair/activity/pagerindicator/LinePageIndicator;->mActivePointerId:I

    .line 253
    iget-object v0, p0, Lfr/testudo/spacecorsair/activity/pagerindicator/LinePageIndicator;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->f()Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lfr/testudo/spacecorsair/activity/pagerindicator/LinePageIndicator;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->e()V

    goto/16 :goto_9

    .line 257
    :pswitch_d3
    invoke-static {p1}, Landroid/support/v4/view/m;->b(Landroid/view/MotionEvent;)I

    move-result v0

    .line 258
    invoke-static {p1, v0}, Landroid/support/v4/view/m;->c(Landroid/view/MotionEvent;I)F

    move-result v2

    iput v2, p0, Lfr/testudo/spacecorsair/activity/pagerindicator/LinePageIndicator;->mLastMotionX:F

    .line 259
    invoke-static {p1, v0}, Landroid/support/v4/view/m;->b(Landroid/view/MotionEvent;I)I

    move-result v0

    iput v0, p0, Lfr/testudo/spacecorsair/activity/pagerindicator/LinePageIndicator;->mActivePointerId:I

    goto/16 :goto_9

    .line 264
    :pswitch_e5
    invoke-static {p1}, Landroid/support/v4/view/m;->b(Landroid/view/MotionEvent;)I

    move-result v2

    .line 265
    invoke-static {p1, v2}, Landroid/support/v4/view/m;->b(Landroid/view/MotionEvent;I)I

    move-result v3

    .line 266
    iget v4, p0, Lfr/testudo/spacecorsair/activity/pagerindicator/LinePageIndicator;->mActivePointerId:I

    if-ne v3, v4, :cond_fa

    .line 267
    if-nez v2, :cond_f4

    move v0, v1

    .line 268
    :cond_f4
    invoke-static {p1, v0}, Landroid/support/v4/view/m;->b(Landroid/view/MotionEvent;I)I

    move-result v0

    iput v0, p0, Lfr/testudo/spacecorsair/activity/pagerindicator/LinePageIndicator;->mActivePointerId:I

    .line 270
    :cond_fa
    iget v0, p0, Lfr/testudo/spacecorsair/activity/pagerindicator/LinePageIndicator;->mActivePointerId:I

    invoke-static {p1, v0}, Landroid/support/v4/view/m;->a(Landroid/view/MotionEvent;I)I

    move-result v0

    invoke-static {p1, v0}, Landroid/support/v4/view/m;->c(Landroid/view/MotionEvent;I)F

    move-result v0

    iput v0, p0, Lfr/testudo/spacecorsair/activity/pagerindicator/LinePageIndicator;->mLastMotionX:F

    goto/16 :goto_9

    .line 203
    :pswitch_data_108
    .packed-switch 0x0
        :pswitch_26
        :pswitch_6e
        :pswitch_33
        :pswitch_6e
        :pswitch_25
        :pswitch_d3
        :pswitch_e5
    .end packed-switch
.end method

.method public setCentered(Z)V
    .registers 2

    .prologue
    .line 103
    iput-boolean p1, p0, Lfr/testudo/spacecorsair/activity/pagerindicator/LinePageIndicator;->mCentered:Z

    .line 104
    invoke-virtual {p0}, Lfr/testudo/spacecorsair/activity/pagerindicator/LinePageIndicator;->invalidate()V

    .line 105
    return-void
.end method

.method public setCurrentItem(I)V
    .registers 4

    .prologue
    .line 302
    iget-object v0, p0, Lfr/testudo/spacecorsair/activity/pagerindicator/LinePageIndicator;->mViewPager:Landroid/support/v4/view/ViewPager;

    if-nez v0, :cond_c

    .line 303
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "ViewPager has not been bound."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 305
    :cond_c
    iget-object v0, p0, Lfr/testudo/spacecorsair/activity/pagerindicator/LinePageIndicator;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, p1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 306
    iput p1, p0, Lfr/testudo/spacecorsair/activity/pagerindicator/LinePageIndicator;->mCurrentPage:I

    .line 307
    invoke-virtual {p0}, Lfr/testudo/spacecorsair/activity/pagerindicator/LinePageIndicator;->invalidate()V

    .line 308
    return-void
.end method

.method public setGapWidth(F)V
    .registers 2

    .prologue
    .line 149
    iput p1, p0, Lfr/testudo/spacecorsair/activity/pagerindicator/LinePageIndicator;->mGapWidth:F

    .line 150
    invoke-virtual {p0}, Lfr/testudo/spacecorsair/activity/pagerindicator/LinePageIndicator;->invalidate()V

    .line 151
    return-void
.end method

.method public setLineWidth(F)V
    .registers 2

    .prologue
    .line 130
    iput p1, p0, Lfr/testudo/spacecorsair/activity/pagerindicator/LinePageIndicator;->mLineWidth:F

    .line 131
    invoke-virtual {p0}, Lfr/testudo/spacecorsair/activity/pagerindicator/LinePageIndicator;->invalidate()V

    .line 132
    return-void
.end method

.method public setOnPageChangeListener(Landroid/support/v4/view/ViewPager$e;)V
    .registers 2

    .prologue
    .line 341
    iput-object p1, p0, Lfr/testudo/spacecorsair/activity/pagerindicator/LinePageIndicator;->mListener:Landroid/support/v4/view/ViewPager$e;

    .line 342
    return-void
.end method

.method public setSelectedColor(I)V
    .registers 3

    .prologue
    .line 121
    iget-object v0, p0, Lfr/testudo/spacecorsair/activity/pagerindicator/LinePageIndicator;->mPaintSelected:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 122
    invoke-virtual {p0}, Lfr/testudo/spacecorsair/activity/pagerindicator/LinePageIndicator;->invalidate()V

    .line 123
    return-void
.end method

.method public setStrokeWidth(F)V
    .registers 3

    .prologue
    .line 139
    iget-object v0, p0, Lfr/testudo/spacecorsair/activity/pagerindicator/LinePageIndicator;->mPaintSelected:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 140
    iget-object v0, p0, Lfr/testudo/spacecorsair/activity/pagerindicator/LinePageIndicator;->mPaintUnselected:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 141
    invoke-virtual {p0}, Lfr/testudo/spacecorsair/activity/pagerindicator/LinePageIndicator;->invalidate()V

    .line 142
    return-void
.end method

.method public setUnselectedColor(I)V
    .registers 3

    .prologue
    .line 112
    iget-object v0, p0, Lfr/testudo/spacecorsair/activity/pagerindicator/LinePageIndicator;->mPaintUnselected:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 113
    invoke-virtual {p0}, Lfr/testudo/spacecorsair/activity/pagerindicator/LinePageIndicator;->invalidate()V

    .line 114
    return-void
.end method

.method public setViewPager(Landroid/support/v4/view/ViewPager;)V
    .registers 4

    .prologue
    .line 279
    iget-object v0, p0, Lfr/testudo/spacecorsair/activity/pagerindicator/LinePageIndicator;->mViewPager:Landroid/support/v4/view/ViewPager;

    if-ne v0, p1, :cond_5

    .line 292
    :goto_4
    return-void

    .line 282
    :cond_5
    iget-object v0, p0, Lfr/testudo/spacecorsair/activity/pagerindicator/LinePageIndicator;->mViewPager:Landroid/support/v4/view/ViewPager;

    if-eqz v0, :cond_f

    .line 284
    iget-object v0, p0, Lfr/testudo/spacecorsair/activity/pagerindicator/LinePageIndicator;->mViewPager:Landroid/support/v4/view/ViewPager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$e;)V

    .line 286
    :cond_f
    invoke-virtual {p1}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/o;

    move-result-object v0

    if-nez v0, :cond_1d

    .line 287
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "ViewPager does not have adapter instance."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 289
    :cond_1d
    iput-object p1, p0, Lfr/testudo/spacecorsair/activity/pagerindicator/LinePageIndicator;->mViewPager:Landroid/support/v4/view/ViewPager;

    .line 290
    iget-object v0, p0, Lfr/testudo/spacecorsair/activity/pagerindicator/LinePageIndicator;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, p0}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$e;)V

    .line 291
    invoke-virtual {p0}, Lfr/testudo/spacecorsair/activity/pagerindicator/LinePageIndicator;->invalidate()V

    goto :goto_4
.end method

.method public setViewPager(Landroid/support/v4/view/ViewPager;I)V
    .registers 3

    .prologue
    .line 296
    invoke-virtual {p0, p1}, Lfr/testudo/spacecorsair/activity/pagerindicator/LinePageIndicator;->setViewPager(Landroid/support/v4/view/ViewPager;)V

    .line 297
    invoke-virtual {p0, p2}, Lfr/testudo/spacecorsair/activity/pagerindicator/LinePageIndicator;->setCurrentItem(I)V

    .line 298
    return-void
.end method
