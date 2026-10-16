.class public Lfr/testudo/spacecorsair/activity/pagerindicator/CirclePageIndicator;
.super Landroid/view/View;
.source "SourceFile"

# interfaces
.implements Lfr/testudo/spacecorsair/activity/pagerindicator/PageIndicator;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lfr/testudo/spacecorsair/activity/pagerindicator/CirclePageIndicator$1;,
        Lfr/testudo/spacecorsair/activity/pagerindicator/CirclePageIndicator$SavedState;
    }
.end annotation


# static fields
.field private static final INVALID_POINTER:I = -0x1


# instance fields
.field private mActivePointerId:I

.field private mCentered:Z

.field private mCurrentPage:I

.field private mIsDragging:Z

.field private mLastMotionX:F

.field private mListener:Landroid/support/v4/view/ViewPager$e;

.field private mOrientation:I

.field private mPageOffset:F

.field private final mPaintFill:Landroid/graphics/Paint;

.field private final mPaintPageFill:Landroid/graphics/Paint;

.field private final mPaintStroke:Landroid/graphics/Paint;

.field private mRadius:F

.field private mScrollState:I

.field private mSnap:Z

.field private mSnapPage:I

.field private mTouchSlop:I

.field private mViewPager:Landroid/support/v4/view/ViewPager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .prologue
    .line 69
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lfr/testudo/spacecorsair/activity/pagerindicator/CirclePageIndicator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 70
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    .prologue
    .line 73
    const/high16 v0, 0x7f010000

    invoke-direct {p0, p1, p2, v0}, Lfr/testudo/spacecorsair/activity/pagerindicator/CirclePageIndicator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 74
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 16

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x1

    .line 77
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 49
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v10}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lfr/testudo/spacecorsair/activity/pagerindicator/CirclePageIndicator;->mPaintPageFill:Landroid/graphics/Paint;

    .line 50
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v10}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lfr/testudo/spacecorsair/activity/pagerindicator/CirclePageIndicator;->mPaintStroke:Landroid/graphics/Paint;

    .line 51
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v10}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lfr/testudo/spacecorsair/activity/pagerindicator/CirclePageIndicator;->mPaintFill:Landroid/graphics/Paint;

    .line 63
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lfr/testudo/spacecorsair/activity/pagerindicator/CirclePageIndicator;->mLastMotionX:F

    .line 64
    const/4 v0, -0x1

    iput v0, p0, Lfr/testudo/spacecorsair/activity/pagerindicator/CirclePageIndicator;->mActivePointerId:I

    .line 78
    invoke-virtual {p0}, Lfr/testudo/spacecorsair/activity/pagerindicator/CirclePageIndicator;->isInEditMode()Z

    move-result v0

    if-eqz v0, :cond_28

    .line 115
    :goto_27
    return-void

    .line 81
    :cond_28
    invoke-virtual {p0}, Lfr/testudo/spacecorsair/activity/pagerindicator/CirclePageIndicator;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 82
    const v1, 0x7f080018

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    .line 83
    const v2, 0x7f080017

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    .line 84
    const/high16 v3, 0x7f0e0000

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    .line 85
    const v4, 0x7f080019

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    .line 86
    const v5, 0x7f090016

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    .line 87
    const v6, 0x7f090015

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    .line 88
    const/high16 v7, 0x7f0d0000

    invoke-virtual {v0, v7}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v7

    .line 89
    const v8, 0x7f0d0001

    invoke-virtual {v0, v8}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    .line 92
    sget-object v8, Lfr/testudo/spacecorsair/R$styleable;->CirclePageIndicator:[I

    invoke-virtual {p1, p2, v8, p3, v11}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v8

    .line 94
    const/4 v9, 0x2

    invoke-virtual {v8, v9, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v7

    iput-boolean v7, p0, Lfr/testudo/spacecorsair/activity/pagerindicator/CirclePageIndicator;->mCentered:Z

    .line 95
    invoke-virtual {v8, v11, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    iput v3, p0, Lfr/testudo/spacecorsair/activity/pagerindicator/CirclePageIndicator;->mOrientation:I

    .line 96
    iget-object v3, p0, Lfr/testudo/spacecorsair/activity/pagerindicator/CirclePageIndicator;->mPaintPageFill:Landroid/graphics/Paint;

    sget-object v7, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v3, v7}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 97
    iget-object v3, p0, Lfr/testudo/spacecorsair/activity/pagerindicator/CirclePageIndicator;->mPaintPageFill:Landroid/graphics/Paint;

    const/4 v7, 0x5

    invoke-virtual {v8, v7, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    invoke-virtual {v3, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 98
    iget-object v1, p0, Lfr/testudo/spacecorsair/activity/pagerindicator/CirclePageIndicator;->mPaintStroke:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 99
    iget-object v1, p0, Lfr/testudo/spacecorsair/activity/pagerindicator/CirclePageIndicator;->mPaintStroke:Landroid/graphics/Paint;

    const/16 v3, 0x8

    invoke-virtual {v8, v3, v4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 100
    iget-object v1, p0, Lfr/testudo/spacecorsair/activity/pagerindicator/CirclePageIndicator;->mPaintStroke:Landroid/graphics/Paint;

    const/4 v3, 0x3

    invoke-virtual {v8, v3, v5}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v3

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 101
    iget-object v1, p0, Lfr/testudo/spacecorsair/activity/pagerindicator/CirclePageIndicator;->mPaintFill:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 102
    iget-object v1, p0, Lfr/testudo/spacecorsair/activity/pagerindicator/CirclePageIndicator;->mPaintFill:Landroid/graphics/Paint;

    const/4 v3, 0x4

    invoke-virtual {v8, v3, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 103
    const/4 v1, 0x6

    invoke-virtual {v8, v1, v6}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    iput v1, p0, Lfr/testudo/spacecorsair/activity/pagerindicator/CirclePageIndicator;->mRadius:F

    .line 104
    const/4 v1, 0x7

    invoke-virtual {v8, v1, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lfr/testudo/spacecorsair/activity/pagerindicator/CirclePageIndicator;->mSnap:Z

    .line 106
    invoke-virtual {v8, v10}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 107
    if-eqz v0, :cond_ca

    .line 108
    invoke-virtual {p0, v0}, Lfr/testudo/spacecorsair/activity/pagerindicator/CirclePageIndicator;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 111
    :cond_ca
    invoke-virtual {v8}, Landroid/content/res/TypedArray;->recycle()V

    .line 113
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 114
    invoke-static {v0}, Landroid/support/v4/view/y;->a(Landroid/view/ViewConfiguration;)I

    move-result v0

    iput v0, p0, Lfr/testudo/spacecorsair/activity/pagerindicator/CirclePageIndicator;->mTouchSlop:I

    goto/16 :goto_27
.end method

.method private measureLong(I)I
    .registers 8

    .prologue
    .line 463
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    .line 464
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 466
    const/high16 v0, 0x40000000    # 2.0f

    if-eq v2, v0, :cond_10

    iget-object v0, p0, Lfr/testudo/spacecorsair/activity/pagerindicator/CirclePageIndicator;->mViewPager:Landroid/support/v4/view/ViewPager;

    if-nez v0, :cond_12

    :cond_10
    move v0, v1

    .line 479
    :cond_11
    :goto_11
    return v0

    .line 471
    :cond_12
    iget-object v0, p0, Lfr/testudo/spacecorsair/activity/pagerindicator/CirclePageIndicator;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/o;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/view/o;->getCount()I

    move-result v0

    .line 472
    invoke-virtual {p0}, Lfr/testudo/spacecorsair/activity/pagerindicator/CirclePageIndicator;->getPaddingLeft()I

    move-result v3

    invoke-virtual {p0}, Lfr/testudo/spacecorsair/activity/pagerindicator/CirclePageIndicator;->getPaddingRight()I

    move-result v4

    add-int/2addr v3, v4

    int-to-float v3, v3

    mul-int/lit8 v4, v0, 0x2

    int-to-float v4, v4

    iget v5, p0, Lfr/testudo/spacecorsair/activity/pagerindicator/CirclePageIndicator;->mRadius:F

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    add-int/lit8 v0, v0, -0x1

    int-to-float v0, v0

    iget v4, p0, Lfr/testudo/spacecorsair/activity/pagerindicator/CirclePageIndicator;->mRadius:F

    mul-float/2addr v0, v4

    add-float/2addr v0, v3

    const/high16 v3, 0x3f800000    # 1.0f

    add-float/2addr v0, v3

    float-to-int v0, v0

    .line 475
    const/high16 v3, -0x80000000

    if-ne v2, v3, :cond_11

    .line 476
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_11
.end method

.method private measureShort(I)I
    .registers 6

    .prologue
    .line 491
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    .line 492
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 494
    const/high16 v1, 0x40000000    # 2.0f

    if-ne v2, v1, :cond_d

    .line 505
    :goto_c
    return v0

    .line 499
    :cond_d
    const/high16 v1, 0x40000000    # 2.0f

    iget v3, p0, Lfr/testudo/spacecorsair/activity/pagerindicator/CirclePageIndicator;->mRadius:F

    mul-float/2addr v1, v3

    invoke-virtual {p0}, Lfr/testudo/spacecorsair/activity/pagerindicator/CirclePageIndicator;->getPaddingTop()I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v1, v3

    invoke-virtual {p0}, Lfr/testudo/spacecorsair/activity/pagerindicator/CirclePageIndicator;->getPaddingBottom()I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v1, v3

    const/high16 v3, 0x3f800000    # 1.0f

    add-float/2addr v1, v3

    float-to-int v1, v1

    .line 501
    const/high16 v3, -0x80000000

    if-ne v2, v3, :cond_2b

    .line 502
    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_c

    :cond_2b
    move v0, v1

    goto :goto_c
.end method


# virtual methods
.method public getFillColor()I
    .registers 2

    .prologue
    .line 142
    iget-object v0, p0, Lfr/testudo/spacecorsair/activity/pagerindicator/CirclePageIndicator;->mPaintFill:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    return v0
.end method

.method public getOrientation()I
    .registers 2

    .prologue
    .line 159
    iget v0, p0, Lfr/testudo/spacecorsair/activity/pagerindicator/CirclePageIndicator;->mOrientation:I

    return v0
.end method

.method public getPageColor()I
    .registers 2

    .prologue
    .line 133
    iget-object v0, p0, Lfr/testudo/spacecorsair/activity/pagerindicator/CirclePageIndicator;->mPaintPageFill:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    return v0
.end method

.method public getRadius()F
    .registers 2

    .prologue
    .line 186
    iget v0, p0, Lfr/testudo/spacecorsair/activity/pagerindicator/CirclePageIndicator;->mRadius:F

    return v0
.end method

.method public getStrokeColor()I
    .registers 2

    .prologue
    .line 168
    iget-object v0, p0, Lfr/testudo/spacecorsair/activity/pagerindicator/CirclePageIndicator;->mPaintStroke:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    return v0
.end method

.method public getStrokeWidth()F
    .registers 2

    .prologue
    .line 177
    iget-object v0, p0, Lfr/testudo/spacecorsair/activity/pagerindicator/CirclePageIndicator;->mPaintStroke:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v0

    return v0
.end method

.method public isCentered()Z
    .registers 2

    .prologue
    .line 124
    iget-boolean v0, p0, Lfr/testudo/spacecorsair/activity/pagerindicator/CirclePageIndicator;->mCentered:Z

    return v0
.end method

.method public isSnap()Z
    .registers 2

    .prologue
    .line 195
    iget-boolean v0, p0, Lfr/testudo/spacecorsair/activity/pagerindicator/CirclePageIndicator;->mSnap:Z

    return v0
.end method

.method public notifyDataSetChanged()V
    .registers 1

    .prologue
    .line 399
    invoke-virtual {p0}, Lfr/testudo/spacecorsair/activity/pagerindicator/CirclePageIndicator;->invalidate()V

    .line 400
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 13

    .prologue
    const/high16 v8, 0x40000000    # 2.0f

    .line 200
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 202
    iget-object v0, p0, Lfr/testudo/spacecorsair/activity/pagerindicator/CirclePageIndicator;->mViewPager:Landroid/support/v4/view/ViewPager;

    if-nez v0, :cond_a

    .line 280
    :cond_9
    :goto_9
    return-void

    .line 205
    :cond_a
    iget-object v0, p0, Lfr/testudo/spacecorsair/activity/pagerindicator/CirclePageIndicator;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/o;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/view/o;->getCount()I

    move-result v6

    .line 206
    if-eqz v6, :cond_9

    .line 210
    iget v0, p0, Lfr/testudo/spacecorsair/activity/pagerindicator/CirclePageIndicator;->mCurrentPage:I

    if-lt v0, v6, :cond_20

    .line 211
    add-int/lit8 v0, v6, -0x1

    invoke-virtual {p0, v0}, Lfr/testudo/spacecorsair/activity/pagerindicator/CirclePageIndicator;->setCurrentItem(I)V

    goto :goto_9

    .line 219
    :cond_20
    iget v0, p0, Lfr/testudo/spacecorsair/activity/pagerindicator/CirclePageIndicator;->mOrientation:I

    if-nez v0, :cond_91

    .line 220
    invoke-virtual {p0}, Lfr/testudo/spacecorsair/activity/pagerindicator/CirclePageIndicator;->getWidth()I

    move-result v3

    .line 221
    invoke-virtual {p0}, Lfr/testudo/spacecorsair/activity/pagerindicator/CirclePageIndicator;->getPaddingLeft()I

    move-result v2

    .line 222
    invoke-virtual {p0}, Lfr/testudo/spacecorsair/activity/pagerindicator/CirclePageIndicator;->getPaddingRight()I

    move-result v1

    .line 223
    invoke-virtual {p0}, Lfr/testudo/spacecorsair/activity/pagerindicator/CirclePageIndicator;->getPaddingTop()I

    move-result v0

    .line 231
    :goto_34
    iget v4, p0, Lfr/testudo/spacecorsair/activity/pagerindicator/CirclePageIndicator;->mRadius:F

    const/high16 v5, 0x40400000    # 3.0f

    mul-float v7, v4, v5

    .line 232
    int-to-float v0, v0

    iget v4, p0, Lfr/testudo/spacecorsair/activity/pagerindicator/CirclePageIndicator;->mRadius:F

    add-float/2addr v4, v0

    .line 233
    int-to-float v0, v2

    iget v5, p0, Lfr/testudo/spacecorsair/activity/pagerindicator/CirclePageIndicator;->mRadius:F

    add-float/2addr v0, v5

    .line 234
    iget-boolean v5, p0, Lfr/testudo/spacecorsair/activity/pagerindicator/CirclePageIndicator;->mCentered:Z

    if-eqz v5, :cond_51

    .line 235
    sub-int v2, v3, v2

    sub-int v1, v2, v1

    int-to-float v1, v1

    div-float/2addr v1, v8

    int-to-float v2, v6

    mul-float/2addr v2, v7

    div-float/2addr v2, v8

    sub-float/2addr v1, v2

    add-float/2addr v0, v1

    .line 241
    :cond_51
    iget v1, p0, Lfr/testudo/spacecorsair/activity/pagerindicator/CirclePageIndicator;->mRadius:F

    .line 242
    iget-object v2, p0, Lfr/testudo/spacecorsair/activity/pagerindicator/CirclePageIndicator;->mPaintStroke:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v2

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-lez v2, :cond_66

    .line 243
    iget-object v2, p0, Lfr/testudo/spacecorsair/activity/pagerindicator/CirclePageIndicator;->mPaintStroke:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v2

    div-float/2addr v2, v8

    sub-float/2addr v1, v2

    .line 247
    :cond_66
    const/4 v2, 0x0

    move v5, v2

    :goto_68
    if-ge v5, v6, :cond_a4

    .line 248
    int-to-float v2, v5

    mul-float/2addr v2, v7

    add-float/2addr v2, v0

    .line 249
    iget v3, p0, Lfr/testudo/spacecorsair/activity/pagerindicator/CirclePageIndicator;->mOrientation:I

    if-nez v3, :cond_a2

    move v3, v2

    move v2, v4

    .line 257
    :goto_73
    iget-object v8, p0, Lfr/testudo/spacecorsair/activity/pagerindicator/CirclePageIndicator;->mPaintPageFill:Landroid/graphics/Paint;

    invoke-virtual {v8}, Landroid/graphics/Paint;->getAlpha()I

    move-result v8

    if-lez v8, :cond_80

    .line 258
    iget-object v8, p0, Lfr/testudo/spacecorsair/activity/pagerindicator/CirclePageIndicator;->mPaintPageFill:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v2, v1, v8}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 262
    :cond_80
    iget v8, p0, Lfr/testudo/spacecorsair/activity/pagerindicator/CirclePageIndicator;->mRadius:F

    cmpl-float v8, v1, v8

    if-eqz v8, :cond_8d

    .line 263
    iget v8, p0, Lfr/testudo/spacecorsair/activity/pagerindicator/CirclePageIndicator;->mRadius:F

    iget-object v9, p0, Lfr/testudo/spacecorsair/activity/pagerindicator/CirclePageIndicator;->mPaintStroke:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v2, v8, v9}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 247
    :cond_8d
    add-int/lit8 v2, v5, 0x1

    move v5, v2

    goto :goto_68

    .line 225
    :cond_91
    invoke-virtual {p0}, Lfr/testudo/spacecorsair/activity/pagerindicator/CirclePageIndicator;->getHeight()I

    move-result v3

    .line 226
    invoke-virtual {p0}, Lfr/testudo/spacecorsair/activity/pagerindicator/CirclePageIndicator;->getPaddingTop()I

    move-result v2

    .line 227
    invoke-virtual {p0}, Lfr/testudo/spacecorsair/activity/pagerindicator/CirclePageIndicator;->getPaddingBottom()I

    move-result v1

    .line 228
    invoke-virtual {p0}, Lfr/testudo/spacecorsair/activity/pagerindicator/CirclePageIndicator;->getPaddingLeft()I

    move-result v0

    goto :goto_34

    :cond_a2
    move v3, v4

    .line 254
    goto :goto_73

    .line 268
    :cond_a4
    iget-boolean v1, p0, Lfr/testudo/spacecorsair/activity/pagerindicator/CirclePageIndicator;->mSnap:Z

    if-eqz v1, :cond_c2

    iget v1, p0, Lfr/testudo/spacecorsair/activity/pagerindicator/CirclePageIndicator;->mSnapPage:I

    :goto_aa
    int-to-float v1, v1

    mul-float/2addr v1, v7

    .line 269
    iget-boolean v2, p0, Lfr/testudo/spacecorsair/activity/pagerindicator/CirclePageIndicator;->mSnap:Z

    if-nez v2, :cond_b4

    .line 270
    iget v2, p0, Lfr/testudo/spacecorsair/activity/pagerindicator/CirclePageIndicator;->mPageOffset:F

    mul-float/2addr v2, v7

    add-float/2addr v1, v2

    .line 272
    :cond_b4
    iget v2, p0, Lfr/testudo/spacecorsair/activity/pagerindicator/CirclePageIndicator;->mOrientation:I

    if-nez v2, :cond_c5

    .line 273
    add-float/2addr v0, v1

    .line 279
    :goto_b9
    iget v1, p0, Lfr/testudo/spacecorsair/activity/pagerindicator/CirclePageIndicator;->mRadius:F

    iget-object v2, p0, Lfr/testudo/spacecorsair/activity/pagerindicator/CirclePageIndicator;->mPaintFill:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v4, v1, v2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto/16 :goto_9

    .line 268
    :cond_c2
    iget v1, p0, Lfr/testudo/spacecorsair/activity/pagerindicator/CirclePageIndicator;->mCurrentPage:I

    goto :goto_aa

    .line 277
    :cond_c5
    add-float/2addr v0, v1

    move v10, v0

    move v0, v4

    move v4, v10

    goto :goto_b9
.end method

.method protected onMeasure(II)V
    .registers 5

    .prologue
    .line 447
    iget v0, p0, Lfr/testudo/spacecorsair/activity/pagerindicator/CirclePageIndicator;->mOrientation:I

    if-nez v0, :cond_10

    .line 448
    invoke-direct {p0, p1}, Lfr/testudo/spacecorsair/activity/pagerindicator/CirclePageIndicator;->measureLong(I)I

    move-result v0

    invoke-direct {p0, p2}, Lfr/testudo/spacecorsair/activity/pagerindicator/CirclePageIndicator;->measureShort(I)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lfr/testudo/spacecorsair/activity/pagerindicator/CirclePageIndicator;->setMeasuredDimension(II)V

    .line 452
    :goto_f
    return-void

    .line 450
    :cond_10
    invoke-direct {p0, p1}, Lfr/testudo/spacecorsair/activity/pagerindicator/CirclePageIndicator;->measureShort(I)I

    move-result v0

    invoke-direct {p0, p2}, Lfr/testudo/spacecorsair/activity/pagerindicator/CirclePageIndicator;->measureLong(I)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lfr/testudo/spacecorsair/activity/pagerindicator/CirclePageIndicator;->setMeasuredDimension(II)V

    goto :goto_f
.end method

.method public onPageScrollStateChanged(I)V
    .registers 3

    .prologue
    .line 404
    iput p1, p0, Lfr/testudo/spacecorsair/activity/pagerindicator/CirclePageIndicator;->mScrollState:I

    .line 406
    iget-object v0, p0, Lfr/testudo/spacecorsair/activity/pagerindicator/CirclePageIndicator;->mListener:Landroid/support/v4/view/ViewPager$e;

    if-eqz v0, :cond_b

    .line 407
    iget-object v0, p0, Lfr/testudo/spacecorsair/activity/pagerindicator/CirclePageIndicator;->mListener:Landroid/support/v4/view/ViewPager$e;

    invoke-interface {v0, p1}, Landroid/support/v4/view/ViewPager$e;->onPageScrollStateChanged(I)V

    .line 409
    :cond_b
    return-void
.end method

.method public onPageScrolled(IFI)V
    .registers 5

    .prologue
    .line 413
    iput p1, p0, Lfr/testudo/spacecorsair/activity/pagerindicator/CirclePageIndicator;->mCurrentPage:I

    .line 414
    iput p2, p0, Lfr/testudo/spacecorsair/activity/pagerindicator/CirclePageIndicator;->mPageOffset:F

    .line 415
    invoke-virtual {p0}, Lfr/testudo/spacecorsair/activity/pagerindicator/CirclePageIndicator;->invalidate()V

    .line 417
    iget-object v0, p0, Lfr/testudo/spacecorsair/activity/pagerindicator/CirclePageIndicator;->mListener:Landroid/support/v4/view/ViewPager$e;

    if-eqz v0, :cond_10

    .line 418
    iget-object v0, p0, Lfr/testudo/spacecorsair/activity/pagerindicator/CirclePageIndicator;->mListener:Landroid/support/v4/view/ViewPager$e;

    invoke-interface {v0, p1, p2, p3}, Landroid/support/v4/view/ViewPager$e;->onPageScrolled(IFI)V

    .line 420
    :cond_10
    return-void
.end method

.method public onPageSelected(I)V
    .registers 3

    .prologue
    .line 424
    iget-boolean v0, p0, Lfr/testudo/spacecorsair/activity/pagerindicator/CirclePageIndicator;->mSnap:Z

    if-nez v0, :cond_8

    iget v0, p0, Lfr/testudo/spacecorsair/activity/pagerindicator/CirclePageIndicator;->mScrollState:I

    if-nez v0, :cond_f

    .line 425
    :cond_8
    iput p1, p0, Lfr/testudo/spacecorsair/activity/pagerindicator/CirclePageIndicator;->mCurrentPage:I

    .line 426
    iput p1, p0, Lfr/testudo/spacecorsair/activity/pagerindicator/CirclePageIndicator;->mSnapPage:I

    .line 427
    invoke-virtual {p0}, Lfr/testudo/spacecorsair/activity/pagerindicator/CirclePageIndicator;->invalidate()V

    .line 430
    :cond_f
    iget-object v0, p0, Lfr/testudo/spacecorsair/activity/pagerindicator/CirclePageIndicator;->mListener:Landroid/support/v4/view/ViewPager$e;

    if-eqz v0, :cond_18

    .line 431
    iget-object v0, p0, Lfr/testudo/spacecorsair/activity/pagerindicator/CirclePageIndicator;->mListener:Landroid/support/v4/view/ViewPager$e;

    invoke-interface {v0, p1}, Landroid/support/v4/view/ViewPager$e;->onPageSelected(I)V

    .line 433
    :cond_18
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .registers 3

    .prologue
    .line 510
    check-cast p1, Lfr/testudo/spacecorsair/activity/pagerindicator/CirclePageIndicator$SavedState;

    .line 511
    invoke-virtual {p1}, Lfr/testudo/spacecorsair/activity/pagerindicator/CirclePageIndicator$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 512
    iget v0, p1, Lfr/testudo/spacecorsair/activity/pagerindicator/CirclePageIndicator$SavedState;->currentPage:I

    iput v0, p0, Lfr/testudo/spacecorsair/activity/pagerindicator/CirclePageIndicator;->mCurrentPage:I

    .line 513
    iget v0, p1, Lfr/testudo/spacecorsair/activity/pagerindicator/CirclePageIndicator$SavedState;->currentPage:I

    iput v0, p0, Lfr/testudo/spacecorsair/activity/pagerindicator/CirclePageIndicator;->mSnapPage:I

    .line 514
    invoke-virtual {p0}, Lfr/testudo/spacecorsair/activity/pagerindicator/CirclePageIndicator;->requestLayout()V

    .line 515
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .registers 3

    .prologue
    .line 519
    invoke-super {p0}, Landroid/view/View;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 520
    new-instance v1, Lfr/testudo/spacecorsair/activity/pagerindicator/CirclePageIndicator$SavedState;

    invoke-direct {v1, v0}, Lfr/testudo/spacecorsair/activity/pagerindicator/CirclePageIndicator$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 521
    iget v0, p0, Lfr/testudo/spacecorsair/activity/pagerindicator/CirclePageIndicator;->mCurrentPage:I

    iput v0, v1, Lfr/testudo/spacecorsair/activity/pagerindicator/CirclePageIndicator$SavedState;->currentPage:I

    .line 522
    return-object v1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 11

    .prologue
    const/4 v8, 0x3

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 283
    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 362
    :cond_9
    :goto_9
    return v1

    .line 286
    :cond_a
    iget-object v2, p0, Lfr/testudo/spacecorsair/activity/pagerindicator/CirclePageIndicator;->mViewPager:Landroid/support/v4/view/ViewPager;

    if-eqz v2, :cond_1a

    iget-object v2, p0, Lfr/testudo/spacecorsair/activity/pagerindicator/CirclePageIndicator;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v2}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/o;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/view/o;->getCount()I

    move-result v2

    if-nez v2, :cond_1c

    :cond_1a
    move v1, v0

    .line 287
    goto :goto_9

    .line 290
    :cond_1c
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    and-int/lit16 v2, v2, 0xff

    .line 291
    packed-switch v2, :pswitch_data_108

    :pswitch_25
    goto :goto_9

    .line 293
    :pswitch_26
    invoke-static {p1, v0}, Landroid/support/v4/view/m;->b(Landroid/view/MotionEvent;I)I

    move-result v0

    iput v0, p0, Lfr/testudo/spacecorsair/activity/pagerindicator/CirclePageIndicator;->mActivePointerId:I

    .line 294
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lfr/testudo/spacecorsair/activity/pagerindicator/CirclePageIndicator;->mLastMotionX:F

    goto :goto_9

    .line 298
    :pswitch_33
    iget v0, p0, Lfr/testudo/spacecorsair/activity/pagerindicator/CirclePageIndicator;->mActivePointerId:I

    invoke-static {p1, v0}, Landroid/support/v4/view/m;->a(Landroid/view/MotionEvent;I)I

    move-result v0

    .line 299
    invoke-static {p1, v0}, Landroid/support/v4/view/m;->c(Landroid/view/MotionEvent;I)F

    move-result v0

    .line 300
    iget v2, p0, Lfr/testudo/spacecorsair/activity/pagerindicator/CirclePageIndicator;->mLastMotionX:F

    sub-float v2, v0, v2

    .line 302
    iget-boolean v3, p0, Lfr/testudo/spacecorsair/activity/pagerindicator/CirclePageIndicator;->mIsDragging:Z

    if-nez v3, :cond_52

    .line 303
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v3

    iget v4, p0, Lfr/testudo/spacecorsair/activity/pagerindicator/CirclePageIndicator;->mTouchSlop:I

    int-to-float v4, v4

    cmpl-float v3, v3, v4

    if-lez v3, :cond_52

    .line 304
    iput-boolean v1, p0, Lfr/testudo/spacecorsair/activity/pagerindicator/CirclePageIndicator;->mIsDragging:Z

    .line 308
    :cond_52
    iget-boolean v3, p0, Lfr/testudo/spacecorsair/activity/pagerindicator/CirclePageIndicator;->mIsDragging:Z

    if-eqz v3, :cond_9

    .line 309
    iput v0, p0, Lfr/testudo/spacecorsair/activity/pagerindicator/CirclePageIndicator;->mLastMotionX:F

    .line 310
    iget-object v0, p0, Lfr/testudo/spacecorsair/activity/pagerindicator/CirclePageIndicator;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->f()Z

    move-result v0

    if-nez v0, :cond_68

    iget-object v0, p0, Lfr/testudo/spacecorsair/activity/pagerindicator/CirclePageIndicator;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->d()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 311
    :cond_68
    iget-object v0, p0, Lfr/testudo/spacecorsair/activity/pagerindicator/CirclePageIndicator;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, v2}, Landroid/support/v4/view/ViewPager;->b(F)V

    goto :goto_9

    .line 320
    :pswitch_6e
    iget-boolean v3, p0, Lfr/testudo/spacecorsair/activity/pagerindicator/CirclePageIndicator;->mIsDragging:Z

    if-nez v3, :cond_bf

    .line 321
    iget-object v3, p0, Lfr/testudo/spacecorsair/activity/pagerindicator/CirclePageIndicator;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v3}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/o;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v4/view/o;->getCount()I

    move-result v3

    .line 322
    invoke-virtual {p0}, Lfr/testudo/spacecorsair/activity/pagerindicator/CirclePageIndicator;->getWidth()I

    move-result v4

    .line 323
    int-to-float v5, v4

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v5, v6

    .line 324
    int-to-float v4, v4

    const/high16 v6, 0x40c00000    # 6.0f

    div-float/2addr v4, v6

    .line 326
    iget v6, p0, Lfr/testudo/spacecorsair/activity/pagerindicator/CirclePageIndicator;->mCurrentPage:I

    if-lez v6, :cond_a3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    sub-float v7, v5, v4

    cmpg-float v6, v6, v7

    if-gez v6, :cond_a3

    .line 327
    if-eq v2, v8, :cond_9

    .line 328
    iget-object v0, p0, Lfr/testudo/spacecorsair/activity/pagerindicator/CirclePageIndicator;->mViewPager:Landroid/support/v4/view/ViewPager;

    iget v2, p0, Lfr/testudo/spacecorsair/activity/pagerindicator/CirclePageIndicator;->mCurrentPage:I

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v2}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    goto/16 :goto_9

    .line 331
    :cond_a3
    iget v6, p0, Lfr/testudo/spacecorsair/activity/pagerindicator/CirclePageIndicator;->mCurrentPage:I

    add-int/lit8 v3, v3, -0x1

    if-ge v6, v3, :cond_bf

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    add-float/2addr v4, v5

    cmpl-float v3, v3, v4

    if-lez v3, :cond_bf

    .line 332
    if-eq v2, v8, :cond_9

    .line 333
    iget-object v0, p0, Lfr/testudo/spacecorsair/activity/pagerindicator/CirclePageIndicator;->mViewPager:Landroid/support/v4/view/ViewPager;

    iget v2, p0, Lfr/testudo/spacecorsair/activity/pagerindicator/CirclePageIndicator;->mCurrentPage:I

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v0, v2}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    goto/16 :goto_9

    .line 339
    :cond_bf
    iput-boolean v0, p0, Lfr/testudo/spacecorsair/activity/pagerindicator/CirclePageIndicator;->mIsDragging:Z

    .line 340
    const/4 v0, -0x1

    iput v0, p0, Lfr/testudo/spacecorsair/activity/pagerindicator/CirclePageIndicator;->mActivePointerId:I

    .line 341
    iget-object v0, p0, Lfr/testudo/spacecorsair/activity/pagerindicator/CirclePageIndicator;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->f()Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lfr/testudo/spacecorsair/activity/pagerindicator/CirclePageIndicator;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->e()V

    goto/16 :goto_9

    .line 345
    :pswitch_d3
    invoke-static {p1}, Landroid/support/v4/view/m;->b(Landroid/view/MotionEvent;)I

    move-result v0

    .line 346
    invoke-static {p1, v0}, Landroid/support/v4/view/m;->c(Landroid/view/MotionEvent;I)F

    move-result v2

    iput v2, p0, Lfr/testudo/spacecorsair/activity/pagerindicator/CirclePageIndicator;->mLastMotionX:F

    .line 347
    invoke-static {p1, v0}, Landroid/support/v4/view/m;->b(Landroid/view/MotionEvent;I)I

    move-result v0

    iput v0, p0, Lfr/testudo/spacecorsair/activity/pagerindicator/CirclePageIndicator;->mActivePointerId:I

    goto/16 :goto_9

    .line 352
    :pswitch_e5
    invoke-static {p1}, Landroid/support/v4/view/m;->b(Landroid/view/MotionEvent;)I

    move-result v2

    .line 353
    invoke-static {p1, v2}, Landroid/support/v4/view/m;->b(Landroid/view/MotionEvent;I)I

    move-result v3

    .line 354
    iget v4, p0, Lfr/testudo/spacecorsair/activity/pagerindicator/CirclePageIndicator;->mActivePointerId:I

    if-ne v3, v4, :cond_fa

    .line 355
    if-nez v2, :cond_f4

    move v0, v1

    .line 356
    :cond_f4
    invoke-static {p1, v0}, Landroid/support/v4/view/m;->b(Landroid/view/MotionEvent;I)I

    move-result v0

    iput v0, p0, Lfr/testudo/spacecorsair/activity/pagerindicator/CirclePageIndicator;->mActivePointerId:I

    .line 358
    :cond_fa
    iget v0, p0, Lfr/testudo/spacecorsair/activity/pagerindicator/CirclePageIndicator;->mActivePointerId:I

    invoke-static {p1, v0}, Landroid/support/v4/view/m;->a(Landroid/view/MotionEvent;I)I

    move-result v0

    invoke-static {p1, v0}, Landroid/support/v4/view/m;->c(Landroid/view/MotionEvent;I)F

    move-result v0

    iput v0, p0, Lfr/testudo/spacecorsair/activity/pagerindicator/CirclePageIndicator;->mLastMotionX:F

    goto/16 :goto_9

    .line 291
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
    .line 119
    iput-boolean p1, p0, Lfr/testudo/spacecorsair/activity/pagerindicator/CirclePageIndicator;->mCentered:Z

    .line 120
    invoke-virtual {p0}, Lfr/testudo/spacecorsair/activity/pagerindicator/CirclePageIndicator;->invalidate()V

    .line 121
    return-void
.end method

.method public setCurrentItem(I)V
    .registers 4

    .prologue
    .line 389
    iget-object v0, p0, Lfr/testudo/spacecorsair/activity/pagerindicator/CirclePageIndicator;->mViewPager:Landroid/support/v4/view/ViewPager;

    if-nez v0, :cond_c

    .line 390
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "ViewPager has not been bound."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 392
    :cond_c
    iget-object v0, p0, Lfr/testudo/spacecorsair/activity/pagerindicator/CirclePageIndicator;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, p1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 393
    iput p1, p0, Lfr/testudo/spacecorsair/activity/pagerindicator/CirclePageIndicator;->mCurrentPage:I

    .line 394
    invoke-virtual {p0}, Lfr/testudo/spacecorsair/activity/pagerindicator/CirclePageIndicator;->invalidate()V

    .line 395
    return-void
.end method

.method public setFillColor(I)V
    .registers 3

    .prologue
    .line 137
    iget-object v0, p0, Lfr/testudo/spacecorsair/activity/pagerindicator/CirclePageIndicator;->mPaintFill:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 138
    invoke-virtual {p0}, Lfr/testudo/spacecorsair/activity/pagerindicator/CirclePageIndicator;->invalidate()V

    .line 139
    return-void
.end method

.method public setOnPageChangeListener(Landroid/support/v4/view/ViewPager$e;)V
    .registers 2

    .prologue
    .line 437
    iput-object p1, p0, Lfr/testudo/spacecorsair/activity/pagerindicator/CirclePageIndicator;->mListener:Landroid/support/v4/view/ViewPager$e;

    .line 438
    return-void
.end method

.method public setOrientation(I)V
    .registers 4

    .prologue
    .line 146
    packed-switch p1, :pswitch_data_12

    .line 154
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Orientation must be either HORIZONTAL or VERTICAL."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 149
    :pswitch_b
    iput p1, p0, Lfr/testudo/spacecorsair/activity/pagerindicator/CirclePageIndicator;->mOrientation:I

    .line 150
    invoke-virtual {p0}, Lfr/testudo/spacecorsair/activity/pagerindicator/CirclePageIndicator;->requestLayout()V

    .line 156
    return-void

    .line 146
    nop

    :pswitch_data_12
    .packed-switch 0x0
        :pswitch_b
        :pswitch_b
    .end packed-switch
.end method

.method public setPageColor(I)V
    .registers 3

    .prologue
    .line 128
    iget-object v0, p0, Lfr/testudo/spacecorsair/activity/pagerindicator/CirclePageIndicator;->mPaintPageFill:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 129
    invoke-virtual {p0}, Lfr/testudo/spacecorsair/activity/pagerindicator/CirclePageIndicator;->invalidate()V

    .line 130
    return-void
.end method

.method public setRadius(F)V
    .registers 2

    .prologue
    .line 181
    iput p1, p0, Lfr/testudo/spacecorsair/activity/pagerindicator/CirclePageIndicator;->mRadius:F

    .line 182
    invoke-virtual {p0}, Lfr/testudo/spacecorsair/activity/pagerindicator/CirclePageIndicator;->invalidate()V

    .line 183
    return-void
.end method

.method public setSnap(Z)V
    .registers 2

    .prologue
    .line 190
    iput-boolean p1, p0, Lfr/testudo/spacecorsair/activity/pagerindicator/CirclePageIndicator;->mSnap:Z

    .line 191
    invoke-virtual {p0}, Lfr/testudo/spacecorsair/activity/pagerindicator/CirclePageIndicator;->invalidate()V

    .line 192
    return-void
.end method

.method public setStrokeColor(I)V
    .registers 3

    .prologue
    .line 163
    iget-object v0, p0, Lfr/testudo/spacecorsair/activity/pagerindicator/CirclePageIndicator;->mPaintStroke:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 164
    invoke-virtual {p0}, Lfr/testudo/spacecorsair/activity/pagerindicator/CirclePageIndicator;->invalidate()V

    .line 165
    return-void
.end method

.method public setStrokeWidth(F)V
    .registers 3

    .prologue
    .line 172
    iget-object v0, p0, Lfr/testudo/spacecorsair/activity/pagerindicator/CirclePageIndicator;->mPaintStroke:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 173
    invoke-virtual {p0}, Lfr/testudo/spacecorsair/activity/pagerindicator/CirclePageIndicator;->invalidate()V

    .line 174
    return-void
.end method

.method public setViewPager(Landroid/support/v4/view/ViewPager;)V
    .registers 4

    .prologue
    .line 367
    iget-object v0, p0, Lfr/testudo/spacecorsair/activity/pagerindicator/CirclePageIndicator;->mViewPager:Landroid/support/v4/view/ViewPager;

    if-ne v0, p1, :cond_5

    .line 379
    :goto_4
    return-void

    .line 370
    :cond_5
    iget-object v0, p0, Lfr/testudo/spacecorsair/activity/pagerindicator/CirclePageIndicator;->mViewPager:Landroid/support/v4/view/ViewPager;

    if-eqz v0, :cond_f

    .line 371
    iget-object v0, p0, Lfr/testudo/spacecorsair/activity/pagerindicator/CirclePageIndicator;->mViewPager:Landroid/support/v4/view/ViewPager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$e;)V

    .line 373
    :cond_f
    invoke-virtual {p1}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/o;

    move-result-object v0

    if-nez v0, :cond_1d

    .line 374
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "ViewPager does not have adapter instance."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 376
    :cond_1d
    iput-object p1, p0, Lfr/testudo/spacecorsair/activity/pagerindicator/CirclePageIndicator;->mViewPager:Landroid/support/v4/view/ViewPager;

    .line 377
    iget-object v0, p0, Lfr/testudo/spacecorsair/activity/pagerindicator/CirclePageIndicator;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, p0}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$e;)V

    .line 378
    invoke-virtual {p0}, Lfr/testudo/spacecorsair/activity/pagerindicator/CirclePageIndicator;->invalidate()V

    goto :goto_4
.end method

.method public setViewPager(Landroid/support/v4/view/ViewPager;I)V
    .registers 3

    .prologue
    .line 383
    invoke-virtual {p0, p1}, Lfr/testudo/spacecorsair/activity/pagerindicator/CirclePageIndicator;->setViewPager(Landroid/support/v4/view/ViewPager;)V

    .line 384
    invoke-virtual {p0, p2}, Lfr/testudo/spacecorsair/activity/pagerindicator/CirclePageIndicator;->setCurrentItem(I)V

    .line 385
    return-void
.end method
