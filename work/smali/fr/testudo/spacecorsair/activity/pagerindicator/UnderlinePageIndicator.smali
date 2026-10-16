.class public Lfr/testudo/spacecorsair/activity/pagerindicator/UnderlinePageIndicator;
.super Landroid/view/View;
.source "SourceFile"

# interfaces
.implements Lfr/testudo/spacecorsair/activity/pagerindicator/PageIndicator;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lfr/testudo/spacecorsair/activity/pagerindicator/UnderlinePageIndicator$SavedState;
    }
.end annotation


# static fields
.field private static final FADE_FRAME_MS:I = 0x1e

.field private static final INVALID_POINTER:I = -0x1


# instance fields
.field private mActivePointerId:I

.field private mCurrentPage:I

.field private mFadeBy:I

.field private mFadeDelay:I

.field private mFadeLength:I

.field private final mFadeRunnable:Ljava/lang/Runnable;

.field private mFades:Z

.field private mIsDragging:Z

.field private mLastMotionX:F

.field private mListener:Landroid/support/v4/view/ViewPager$e;

.field private final mPaint:Landroid/graphics/Paint;

.field private mPositionOffset:F

.field private mScrollState:I

.field private mTouchSlop:I

.field private mViewPager:Landroid/support/v4/view/ViewPager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .prologue
    .line 75
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lfr/testudo/spacecorsair/activity/pagerindicator/UnderlinePageIndicator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 76
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    .prologue
    .line 79
    const v0, 0x7f010005

    invoke-direct {p0, p1, p2, v0}, Lfr/testudo/spacecorsair/activity/pagerindicator/UnderlinePageIndicator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 80
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 12

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 83
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 43
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v7}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lfr/testudo/spacecorsair/activity/pagerindicator/UnderlinePageIndicator;->mPaint:Landroid/graphics/Paint;

    .line 57
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lfr/testudo/spacecorsair/activity/pagerindicator/UnderlinePageIndicator;->mLastMotionX:F

    .line 58
    const/4 v0, -0x1

    iput v0, p0, Lfr/testudo/spacecorsair/activity/pagerindicator/UnderlinePageIndicator;->mActivePointerId:I

    .line 61
    new-instance v0, Lfr/testudo/spacecorsair/activity/pagerindicator/UnderlinePageIndicator$1;

    invoke-direct {v0, p0}, Lfr/testudo/spacecorsair/activity/pagerindicator/UnderlinePageIndicator$1;-><init>(Lfr/testudo/spacecorsair/activity/pagerindicator/UnderlinePageIndicator;)V

    iput-object v0, p0, Lfr/testudo/spacecorsair/activity/pagerindicator/UnderlinePageIndicator;->mFadeRunnable:Ljava/lang/Runnable;

    .line 84
    invoke-virtual {p0}, Lfr/testudo/spacecorsair/activity/pagerindicator/UnderlinePageIndicator;->isInEditMode()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 111
    :goto_20
    return-void

    .line 86
    :cond_21
    invoke-virtual {p0}, Lfr/testudo/spacecorsair/activity/pagerindicator/UnderlinePageIndicator;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 89
    const v1, 0x7f0d0004

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    .line 90
    const v2, 0x7f0e0003

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    .line 91
    const v3, 0x7f0e0004

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    .line 92
    const v4, 0x7f08001f

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 95
    sget-object v4, Lfr/testudo/spacecorsair/R$styleable;->UnderlinePageIndicator:[I

    invoke-virtual {p1, p2, v4, p3, v6}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v4

    .line 97
    const/4 v5, 0x2

    invoke-virtual {v4, v5, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    invoke-virtual {p0, v1}, Lfr/testudo/spacecorsair/activity/pagerindicator/UnderlinePageIndicator;->setFades(Z)V

    .line 98
    invoke-virtual {v4, v7, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    invoke-virtual {p0, v0}, Lfr/testudo/spacecorsair/activity/pagerindicator/UnderlinePageIndicator;->setSelectedColor(I)V

    .line 99
    const/4 v0, 0x3

    invoke-virtual {v4, v0, v2}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v0

    invoke-virtual {p0, v0}, Lfr/testudo/spacecorsair/activity/pagerindicator/UnderlinePageIndicator;->setFadeDelay(I)V

    .line 100
    const/4 v0, 0x4

    invoke-virtual {v4, v0, v3}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v0

    invoke-virtual {p0, v0}, Lfr/testudo/spacecorsair/activity/pagerindicator/UnderlinePageIndicator;->setFadeLength(I)V

    .line 102
    invoke-virtual {v4, v6}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 103
    if-eqz v0, :cond_6f

    .line 104
    invoke-virtual {p0, v0}, Lfr/testudo/spacecorsair/activity/pagerindicator/UnderlinePageIndicator;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 107
    :cond_6f
    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    .line 109
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 110
    invoke-static {v0}, Landroid/support/v4/view/y;->a(Landroid/view/ViewConfiguration;)I

    move-result v0

    iput v0, p0, Lfr/testudo/spacecorsair/activity/pagerindicator/UnderlinePageIndicator;->mTouchSlop:I

    goto :goto_20
.end method

.method static synthetic access$000(Lfr/testudo/spacecorsair/activity/pagerindicator/UnderlinePageIndicator;)Z
    .registers 2

    .prologue
    .line 39
    iget-boolean v0, p0, Lfr/testudo/spacecorsair/activity/pagerindicator/UnderlinePageIndicator;->mFades:Z

    return v0
.end method

.method static synthetic access$100(Lfr/testudo/spacecorsair/activity/pagerindicator/UnderlinePageIndicator;)Landroid/graphics/Paint;
    .registers 2

    .prologue
    .line 39
    iget-object v0, p0, Lfr/testudo/spacecorsair/activity/pagerindicator/UnderlinePageIndicator;->mPaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method static synthetic access$200(Lfr/testudo/spacecorsair/activity/pagerindicator/UnderlinePageIndicator;)I
    .registers 2

    .prologue
    .line 39
    iget v0, p0, Lfr/testudo/spacecorsair/activity/pagerindicator/UnderlinePageIndicator;->mFadeBy:I

    return v0
.end method

.method static synthetic access$300(Lfr/testudo/spacecorsair/activity/pagerindicator/UnderlinePageIndicator;)Ljava/lang/Runnable;
    .registers 2

    .prologue
    .line 39
    iget-object v0, p0, Lfr/testudo/spacecorsair/activity/pagerindicator/UnderlinePageIndicator;->mFadeRunnable:Ljava/lang/Runnable;

    return-object v0
.end method


# virtual methods
.method public getFadeDelay()I
    .registers 2

    .prologue
    .line 131
    iget v0, p0, Lfr/testudo/spacecorsair/activity/pagerindicator/UnderlinePageIndicator;->mFadeDelay:I

    return v0
.end method

.method public getFadeLength()I
    .registers 2

    .prologue
    .line 139
    iget v0, p0, Lfr/testudo/spacecorsair/activity/pagerindicator/UnderlinePageIndicator;->mFadeLength:I

    return v0
.end method

.method public getFades()Z
    .registers 2

    .prologue
    .line 114
    iget-boolean v0, p0, Lfr/testudo/spacecorsair/activity/pagerindicator/UnderlinePageIndicator;->mFades:Z

    return v0
.end method

.method public getSelectedColor()I
    .registers 2

    .prologue
    .line 148
    iget-object v0, p0, Lfr/testudo/spacecorsair/activity/pagerindicator/UnderlinePageIndicator;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    return v0
.end method

.method public notifyDataSetChanged()V
    .registers 1

    .prologue
    .line 307
    invoke-virtual {p0}, Lfr/testudo/spacecorsair/activity/pagerindicator/UnderlinePageIndicator;->invalidate()V

    .line 308
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 8

    .prologue
    .line 158
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 160
    iget-object v0, p0, Lfr/testudo/spacecorsair/activity/pagerindicator/UnderlinePageIndicator;->mViewPager:Landroid/support/v4/view/ViewPager;

    if-nez v0, :cond_8

    .line 180
    :cond_7
    :goto_7
    return-void

    .line 163
    :cond_8
    iget-object v0, p0, Lfr/testudo/spacecorsair/activity/pagerindicator/UnderlinePageIndicator;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/o;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/view/o;->getCount()I

    move-result v0

    .line 164
    if-eqz v0, :cond_7

    .line 168
    iget v1, p0, Lfr/testudo/spacecorsair/activity/pagerindicator/UnderlinePageIndicator;->mCurrentPage:I

    if-lt v1, v0, :cond_1e

    .line 169
    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lfr/testudo/spacecorsair/activity/pagerindicator/UnderlinePageIndicator;->setCurrentItem(I)V

    goto :goto_7

    .line 173
    :cond_1e
    invoke-virtual {p0}, Lfr/testudo/spacecorsair/activity/pagerindicator/UnderlinePageIndicator;->getPaddingLeft()I

    move-result v1

    .line 174
    invoke-virtual {p0}, Lfr/testudo/spacecorsair/activity/pagerindicator/UnderlinePageIndicator;->getWidth()I

    move-result v2

    sub-int/2addr v2, v1

    invoke-virtual {p0}, Lfr/testudo/spacecorsair/activity/pagerindicator/UnderlinePageIndicator;->getPaddingRight()I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    const/high16 v3, 0x3f800000    # 1.0f

    int-to-float v0, v0

    mul-float/2addr v0, v3

    div-float v0, v2, v0

    .line 175
    int-to-float v1, v1

    iget v2, p0, Lfr/testudo/spacecorsair/activity/pagerindicator/UnderlinePageIndicator;->mCurrentPage:I

    int-to-float v2, v2

    iget v3, p0, Lfr/testudo/spacecorsair/activity/pagerindicator/UnderlinePageIndicator;->mPositionOffset:F

    add-float/2addr v2, v3

    mul-float/2addr v2, v0

    add-float/2addr v1, v2

    .line 176
    add-float v3, v1, v0

    .line 177
    invoke-virtual {p0}, Lfr/testudo/spacecorsair/activity/pagerindicator/UnderlinePageIndicator;->getPaddingTop()I

    move-result v0

    int-to-float v2, v0

    .line 178
    invoke-virtual {p0}, Lfr/testudo/spacecorsair/activity/pagerindicator/UnderlinePageIndicator;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Lfr/testudo/spacecorsair/activity/pagerindicator/UnderlinePageIndicator;->getPaddingBottom()I

    move-result v4

    sub-int/2addr v0, v4

    int-to-float v4, v0

    .line 179
    iget-object v5, p0, Lfr/testudo/spacecorsair/activity/pagerindicator/UnderlinePageIndicator;->mPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto :goto_7
.end method

.method public onPageScrollStateChanged(I)V
    .registers 3

    .prologue
    .line 312
    iput p1, p0, Lfr/testudo/spacecorsair/activity/pagerindicator/UnderlinePageIndicator;->mScrollState:I

    .line 314
    iget-object v0, p0, Lfr/testudo/spacecorsair/activity/pagerindicator/UnderlinePageIndicator;->mListener:Landroid/support/v4/view/ViewPager$e;

    if-eqz v0, :cond_b

    .line 315
    iget-object v0, p0, Lfr/testudo/spacecorsair/activity/pagerindicator/UnderlinePageIndicator;->mListener:Landroid/support/v4/view/ViewPager$e;

    invoke-interface {v0, p1}, Landroid/support/v4/view/ViewPager$e;->onPageScrollStateChanged(I)V

    .line 317
    :cond_b
    return-void
.end method

.method public onPageScrolled(IFI)V
    .registers 8

    .prologue
    .line 321
    iput p1, p0, Lfr/testudo/spacecorsair/activity/pagerindicator/UnderlinePageIndicator;->mCurrentPage:I

    .line 322
    iput p2, p0, Lfr/testudo/spacecorsair/activity/pagerindicator/UnderlinePageIndicator;->mPositionOffset:F

    .line 323
    iget-boolean v0, p0, Lfr/testudo/spacecorsair/activity/pagerindicator/UnderlinePageIndicator;->mFades:Z

    if-eqz v0, :cond_16

    .line 324
    if-lez p3, :cond_23

    .line 325
    iget-object v0, p0, Lfr/testudo/spacecorsair/activity/pagerindicator/UnderlinePageIndicator;->mFadeRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lfr/testudo/spacecorsair/activity/pagerindicator/UnderlinePageIndicator;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 326
    iget-object v0, p0, Lfr/testudo/spacecorsair/activity/pagerindicator/UnderlinePageIndicator;->mPaint:Landroid/graphics/Paint;

    const/16 v1, 0xff

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 331
    :cond_16
    :goto_16
    invoke-virtual {p0}, Lfr/testudo/spacecorsair/activity/pagerindicator/UnderlinePageIndicator;->invalidate()V

    .line 333
    iget-object v0, p0, Lfr/testudo/spacecorsair/activity/pagerindicator/UnderlinePageIndicator;->mListener:Landroid/support/v4/view/ViewPager$e;

    if-eqz v0, :cond_22

    .line 334
    iget-object v0, p0, Lfr/testudo/spacecorsair/activity/pagerindicator/UnderlinePageIndicator;->mListener:Landroid/support/v4/view/ViewPager$e;

    invoke-interface {v0, p1, p2, p3}, Landroid/support/v4/view/ViewPager$e;->onPageScrolled(IFI)V

    .line 336
    :cond_22
    return-void

    .line 327
    :cond_23
    iget v0, p0, Lfr/testudo/spacecorsair/activity/pagerindicator/UnderlinePageIndicator;->mScrollState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_16

    .line 328
    iget-object v0, p0, Lfr/testudo/spacecorsair/activity/pagerindicator/UnderlinePageIndicator;->mFadeRunnable:Ljava/lang/Runnable;

    iget v1, p0, Lfr/testudo/spacecorsair/activity/pagerindicator/UnderlinePageIndicator;->mFadeDelay:I

    int-to-long v2, v1

    invoke-virtual {p0, v0, v2, v3}, Lfr/testudo/spacecorsair/activity/pagerindicator/UnderlinePageIndicator;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_16
.end method

.method public onPageSelected(I)V
    .registers 3

    .prologue
    .line 340
    iget v0, p0, Lfr/testudo/spacecorsair/activity/pagerindicator/UnderlinePageIndicator;->mScrollState:I

    if-nez v0, :cond_11

    .line 341
    iput p1, p0, Lfr/testudo/spacecorsair/activity/pagerindicator/UnderlinePageIndicator;->mCurrentPage:I

    .line 342
    const/4 v0, 0x0

    iput v0, p0, Lfr/testudo/spacecorsair/activity/pagerindicator/UnderlinePageIndicator;->mPositionOffset:F

    .line 343
    invoke-virtual {p0}, Lfr/testudo/spacecorsair/activity/pagerindicator/UnderlinePageIndicator;->invalidate()V

    .line 344
    iget-object v0, p0, Lfr/testudo/spacecorsair/activity/pagerindicator/UnderlinePageIndicator;->mFadeRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 346
    :cond_11
    iget-object v0, p0, Lfr/testudo/spacecorsair/activity/pagerindicator/UnderlinePageIndicator;->mListener:Landroid/support/v4/view/ViewPager$e;

    if-eqz v0, :cond_1a

    .line 347
    iget-object v0, p0, Lfr/testudo/spacecorsair/activity/pagerindicator/UnderlinePageIndicator;->mListener:Landroid/support/v4/view/ViewPager$e;

    invoke-interface {v0, p1}, Landroid/support/v4/view/ViewPager$e;->onPageSelected(I)V

    .line 349
    :cond_1a
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .registers 3

    .prologue
    .line 358
    check-cast p1, Lfr/testudo/spacecorsair/activity/pagerindicator/UnderlinePageIndicator$SavedState;

    .line 359
    invoke-virtual {p1}, Lfr/testudo/spacecorsair/activity/pagerindicator/UnderlinePageIndicator$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 360
    iget v0, p1, Lfr/testudo/spacecorsair/activity/pagerindicator/UnderlinePageIndicator$SavedState;->currentPage:I

    iput v0, p0, Lfr/testudo/spacecorsair/activity/pagerindicator/UnderlinePageIndicator;->mCurrentPage:I

    .line 361
    invoke-virtual {p0}, Lfr/testudo/spacecorsair/activity/pagerindicator/UnderlinePageIndicator;->requestLayout()V

    .line 362
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .registers 3

    .prologue
    .line 366
    invoke-super {p0}, Landroid/view/View;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 367
    new-instance v1, Lfr/testudo/spacecorsair/activity/pagerindicator/UnderlinePageIndicator$SavedState;

    invoke-direct {v1, v0}, Lfr/testudo/spacecorsair/activity/pagerindicator/UnderlinePageIndicator$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 368
    iget v0, p0, Lfr/testudo/spacecorsair/activity/pagerindicator/UnderlinePageIndicator;->mCurrentPage:I

    iput v0, v1, Lfr/testudo/spacecorsair/activity/pagerindicator/UnderlinePageIndicator$SavedState;->currentPage:I

    .line 369
    return-object v1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 11

    .prologue
    const/4 v8, 0x3

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 183
    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 262
    :cond_9
    :goto_9
    return v1

    .line 186
    :cond_a
    iget-object v2, p0, Lfr/testudo/spacecorsair/activity/pagerindicator/UnderlinePageIndicator;->mViewPager:Landroid/support/v4/view/ViewPager;

    if-eqz v2, :cond_1a

    iget-object v2, p0, Lfr/testudo/spacecorsair/activity/pagerindicator/UnderlinePageIndicator;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v2}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/o;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/view/o;->getCount()I

    move-result v2

    if-nez v2, :cond_1c

    :cond_1a
    move v1, v0

    .line 187
    goto :goto_9

    .line 190
    :cond_1c
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    and-int/lit16 v2, v2, 0xff

    .line 191
    packed-switch v2, :pswitch_data_108

    :pswitch_25
    goto :goto_9

    .line 193
    :pswitch_26
    invoke-static {p1, v0}, Landroid/support/v4/view/m;->b(Landroid/view/MotionEvent;I)I

    move-result v0

    iput v0, p0, Lfr/testudo/spacecorsair/activity/pagerindicator/UnderlinePageIndicator;->mActivePointerId:I

    .line 194
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lfr/testudo/spacecorsair/activity/pagerindicator/UnderlinePageIndicator;->mLastMotionX:F

    goto :goto_9

    .line 198
    :pswitch_33
    iget v0, p0, Lfr/testudo/spacecorsair/activity/pagerindicator/UnderlinePageIndicator;->mActivePointerId:I

    invoke-static {p1, v0}, Landroid/support/v4/view/m;->a(Landroid/view/MotionEvent;I)I

    move-result v0

    .line 199
    invoke-static {p1, v0}, Landroid/support/v4/view/m;->c(Landroid/view/MotionEvent;I)F

    move-result v0

    .line 200
    iget v2, p0, Lfr/testudo/spacecorsair/activity/pagerindicator/UnderlinePageIndicator;->mLastMotionX:F

    sub-float v2, v0, v2

    .line 202
    iget-boolean v3, p0, Lfr/testudo/spacecorsair/activity/pagerindicator/UnderlinePageIndicator;->mIsDragging:Z

    if-nez v3, :cond_52

    .line 203
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v3

    iget v4, p0, Lfr/testudo/spacecorsair/activity/pagerindicator/UnderlinePageIndicator;->mTouchSlop:I

    int-to-float v4, v4

    cmpl-float v3, v3, v4

    if-lez v3, :cond_52

    .line 204
    iput-boolean v1, p0, Lfr/testudo/spacecorsair/activity/pagerindicator/UnderlinePageIndicator;->mIsDragging:Z

    .line 208
    :cond_52
    iget-boolean v3, p0, Lfr/testudo/spacecorsair/activity/pagerindicator/UnderlinePageIndicator;->mIsDragging:Z

    if-eqz v3, :cond_9

    .line 209
    iput v0, p0, Lfr/testudo/spacecorsair/activity/pagerindicator/UnderlinePageIndicator;->mLastMotionX:F

    .line 210
    iget-object v0, p0, Lfr/testudo/spacecorsair/activity/pagerindicator/UnderlinePageIndicator;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->f()Z

    move-result v0

    if-nez v0, :cond_68

    iget-object v0, p0, Lfr/testudo/spacecorsair/activity/pagerindicator/UnderlinePageIndicator;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->d()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 211
    :cond_68
    iget-object v0, p0, Lfr/testudo/spacecorsair/activity/pagerindicator/UnderlinePageIndicator;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, v2}, Landroid/support/v4/view/ViewPager;->b(F)V

    goto :goto_9

    .line 220
    :pswitch_6e
    iget-boolean v3, p0, Lfr/testudo/spacecorsair/activity/pagerindicator/UnderlinePageIndicator;->mIsDragging:Z

    if-nez v3, :cond_bf

    .line 221
    iget-object v3, p0, Lfr/testudo/spacecorsair/activity/pagerindicator/UnderlinePageIndicator;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v3}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/o;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v4/view/o;->getCount()I

    move-result v3

    .line 222
    invoke-virtual {p0}, Lfr/testudo/spacecorsair/activity/pagerindicator/UnderlinePageIndicator;->getWidth()I

    move-result v4

    .line 223
    int-to-float v5, v4

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v5, v6

    .line 224
    int-to-float v4, v4

    const/high16 v6, 0x40c00000    # 6.0f

    div-float/2addr v4, v6

    .line 226
    iget v6, p0, Lfr/testudo/spacecorsair/activity/pagerindicator/UnderlinePageIndicator;->mCurrentPage:I

    if-lez v6, :cond_a3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    sub-float v7, v5, v4

    cmpg-float v6, v6, v7

    if-gez v6, :cond_a3

    .line 227
    if-eq v2, v8, :cond_9

    .line 228
    iget-object v0, p0, Lfr/testudo/spacecorsair/activity/pagerindicator/UnderlinePageIndicator;->mViewPager:Landroid/support/v4/view/ViewPager;

    iget v2, p0, Lfr/testudo/spacecorsair/activity/pagerindicator/UnderlinePageIndicator;->mCurrentPage:I

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v2}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    goto/16 :goto_9

    .line 231
    :cond_a3
    iget v6, p0, Lfr/testudo/spacecorsair/activity/pagerindicator/UnderlinePageIndicator;->mCurrentPage:I

    add-int/lit8 v3, v3, -0x1

    if-ge v6, v3, :cond_bf

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    add-float/2addr v4, v5

    cmpl-float v3, v3, v4

    if-lez v3, :cond_bf

    .line 232
    if-eq v2, v8, :cond_9

    .line 233
    iget-object v0, p0, Lfr/testudo/spacecorsair/activity/pagerindicator/UnderlinePageIndicator;->mViewPager:Landroid/support/v4/view/ViewPager;

    iget v2, p0, Lfr/testudo/spacecorsair/activity/pagerindicator/UnderlinePageIndicator;->mCurrentPage:I

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v0, v2}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    goto/16 :goto_9

    .line 239
    :cond_bf
    iput-boolean v0, p0, Lfr/testudo/spacecorsair/activity/pagerindicator/UnderlinePageIndicator;->mIsDragging:Z

    .line 240
    const/4 v0, -0x1

    iput v0, p0, Lfr/testudo/spacecorsair/activity/pagerindicator/UnderlinePageIndicator;->mActivePointerId:I

    .line 241
    iget-object v0, p0, Lfr/testudo/spacecorsair/activity/pagerindicator/UnderlinePageIndicator;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->f()Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lfr/testudo/spacecorsair/activity/pagerindicator/UnderlinePageIndicator;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->e()V

    goto/16 :goto_9

    .line 245
    :pswitch_d3
    invoke-static {p1}, Landroid/support/v4/view/m;->b(Landroid/view/MotionEvent;)I

    move-result v0

    .line 246
    invoke-static {p1, v0}, Landroid/support/v4/view/m;->c(Landroid/view/MotionEvent;I)F

    move-result v2

    iput v2, p0, Lfr/testudo/spacecorsair/activity/pagerindicator/UnderlinePageIndicator;->mLastMotionX:F

    .line 247
    invoke-static {p1, v0}, Landroid/support/v4/view/m;->b(Landroid/view/MotionEvent;I)I

    move-result v0

    iput v0, p0, Lfr/testudo/spacecorsair/activity/pagerindicator/UnderlinePageIndicator;->mActivePointerId:I

    goto/16 :goto_9

    .line 252
    :pswitch_e5
    invoke-static {p1}, Landroid/support/v4/view/m;->b(Landroid/view/MotionEvent;)I

    move-result v2

    .line 253
    invoke-static {p1, v2}, Landroid/support/v4/view/m;->b(Landroid/view/MotionEvent;I)I

    move-result v3

    .line 254
    iget v4, p0, Lfr/testudo/spacecorsair/activity/pagerindicator/UnderlinePageIndicator;->mActivePointerId:I

    if-ne v3, v4, :cond_fa

    .line 255
    if-nez v2, :cond_f4

    move v0, v1

    .line 256
    :cond_f4
    invoke-static {p1, v0}, Landroid/support/v4/view/m;->b(Landroid/view/MotionEvent;I)I

    move-result v0

    iput v0, p0, Lfr/testudo/spacecorsair/activity/pagerindicator/UnderlinePageIndicator;->mActivePointerId:I

    .line 258
    :cond_fa
    iget v0, p0, Lfr/testudo/spacecorsair/activity/pagerindicator/UnderlinePageIndicator;->mActivePointerId:I

    invoke-static {p1, v0}, Landroid/support/v4/view/m;->a(Landroid/view/MotionEvent;I)I

    move-result v0

    invoke-static {p1, v0}, Landroid/support/v4/view/m;->c(Landroid/view/MotionEvent;I)F

    move-result v0

    iput v0, p0, Lfr/testudo/spacecorsair/activity/pagerindicator/UnderlinePageIndicator;->mLastMotionX:F

    goto/16 :goto_9

    .line 191
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

.method public setCurrentItem(I)V
    .registers 4

    .prologue
    .line 297
    iget-object v0, p0, Lfr/testudo/spacecorsair/activity/pagerindicator/UnderlinePageIndicator;->mViewPager:Landroid/support/v4/view/ViewPager;

    if-nez v0, :cond_c

    .line 298
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "ViewPager has not been bound."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 300
    :cond_c
    iget-object v0, p0, Lfr/testudo/spacecorsair/activity/pagerindicator/UnderlinePageIndicator;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, p1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 301
    iput p1, p0, Lfr/testudo/spacecorsair/activity/pagerindicator/UnderlinePageIndicator;->mCurrentPage:I

    .line 302
    invoke-virtual {p0}, Lfr/testudo/spacecorsair/activity/pagerindicator/UnderlinePageIndicator;->invalidate()V

    .line 303
    return-void
.end method

.method public setFadeDelay(I)V
    .registers 2

    .prologue
    .line 135
    iput p1, p0, Lfr/testudo/spacecorsair/activity/pagerindicator/UnderlinePageIndicator;->mFadeDelay:I

    .line 136
    return-void
.end method

.method public setFadeLength(I)V
    .registers 4

    .prologue
    .line 143
    iput p1, p0, Lfr/testudo/spacecorsair/activity/pagerindicator/UnderlinePageIndicator;->mFadeLength:I

    .line 144
    const/16 v0, 0xff

    iget v1, p0, Lfr/testudo/spacecorsair/activity/pagerindicator/UnderlinePageIndicator;->mFadeLength:I

    div-int/lit8 v1, v1, 0x1e

    div-int/2addr v0, v1

    iput v0, p0, Lfr/testudo/spacecorsair/activity/pagerindicator/UnderlinePageIndicator;->mFadeBy:I

    .line 145
    return-void
.end method

.method public setFades(Z)V
    .registers 4

    .prologue
    .line 118
    iget-boolean v0, p0, Lfr/testudo/spacecorsair/activity/pagerindicator/UnderlinePageIndicator;->mFades:Z

    if-eq p1, v0, :cond_d

    .line 119
    iput-boolean p1, p0, Lfr/testudo/spacecorsair/activity/pagerindicator/UnderlinePageIndicator;->mFades:Z

    .line 120
    if-eqz p1, :cond_e

    .line 121
    iget-object v0, p0, Lfr/testudo/spacecorsair/activity/pagerindicator/UnderlinePageIndicator;->mFadeRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lfr/testudo/spacecorsair/activity/pagerindicator/UnderlinePageIndicator;->post(Ljava/lang/Runnable;)Z

    .line 128
    :cond_d
    :goto_d
    return-void

    .line 123
    :cond_e
    iget-object v0, p0, Lfr/testudo/spacecorsair/activity/pagerindicator/UnderlinePageIndicator;->mFadeRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lfr/testudo/spacecorsair/activity/pagerindicator/UnderlinePageIndicator;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 124
    iget-object v0, p0, Lfr/testudo/spacecorsair/activity/pagerindicator/UnderlinePageIndicator;->mPaint:Landroid/graphics/Paint;

    const/16 v1, 0xff

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 125
    invoke-virtual {p0}, Lfr/testudo/spacecorsair/activity/pagerindicator/UnderlinePageIndicator;->invalidate()V

    goto :goto_d
.end method

.method public setOnPageChangeListener(Landroid/support/v4/view/ViewPager$e;)V
    .registers 2

    .prologue
    .line 353
    iput-object p1, p0, Lfr/testudo/spacecorsair/activity/pagerindicator/UnderlinePageIndicator;->mListener:Landroid/support/v4/view/ViewPager$e;

    .line 354
    return-void
.end method

.method public setSelectedColor(I)V
    .registers 3

    .prologue
    .line 152
    iget-object v0, p0, Lfr/testudo/spacecorsair/activity/pagerindicator/UnderlinePageIndicator;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 153
    invoke-virtual {p0}, Lfr/testudo/spacecorsair/activity/pagerindicator/UnderlinePageIndicator;->invalidate()V

    .line 154
    return-void
.end method

.method public setViewPager(Landroid/support/v4/view/ViewPager;)V
    .registers 4

    .prologue
    .line 267
    iget-object v0, p0, Lfr/testudo/spacecorsair/activity/pagerindicator/UnderlinePageIndicator;->mViewPager:Landroid/support/v4/view/ViewPager;

    if-ne v0, p1, :cond_5

    .line 287
    :goto_4
    return-void

    .line 270
    :cond_5
    iget-object v0, p0, Lfr/testudo/spacecorsair/activity/pagerindicator/UnderlinePageIndicator;->mViewPager:Landroid/support/v4/view/ViewPager;

    if-eqz v0, :cond_f

    .line 272
    iget-object v0, p0, Lfr/testudo/spacecorsair/activity/pagerindicator/UnderlinePageIndicator;->mViewPager:Landroid/support/v4/view/ViewPager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$e;)V

    .line 274
    :cond_f
    invoke-virtual {p1}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/o;

    move-result-object v0

    if-nez v0, :cond_1d

    .line 275
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "ViewPager does not have adapter instance."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 277
    :cond_1d
    iput-object p1, p0, Lfr/testudo/spacecorsair/activity/pagerindicator/UnderlinePageIndicator;->mViewPager:Landroid/support/v4/view/ViewPager;

    .line 278
    iget-object v0, p0, Lfr/testudo/spacecorsair/activity/pagerindicator/UnderlinePageIndicator;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, p0}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$e;)V

    .line 279
    invoke-virtual {p0}, Lfr/testudo/spacecorsair/activity/pagerindicator/UnderlinePageIndicator;->invalidate()V

    .line 280
    new-instance v0, Lfr/testudo/spacecorsair/activity/pagerindicator/UnderlinePageIndicator$2;

    invoke-direct {v0, p0}, Lfr/testudo/spacecorsair/activity/pagerindicator/UnderlinePageIndicator$2;-><init>(Lfr/testudo/spacecorsair/activity/pagerindicator/UnderlinePageIndicator;)V

    invoke-virtual {p0, v0}, Lfr/testudo/spacecorsair/activity/pagerindicator/UnderlinePageIndicator;->post(Ljava/lang/Runnable;)Z

    goto :goto_4
.end method

.method public setViewPager(Landroid/support/v4/view/ViewPager;I)V
    .registers 3

    .prologue
    .line 291
    invoke-virtual {p0, p1}, Lfr/testudo/spacecorsair/activity/pagerindicator/UnderlinePageIndicator;->setViewPager(Landroid/support/v4/view/ViewPager;)V

    .line 292
    invoke-virtual {p0, p2}, Lfr/testudo/spacecorsair/activity/pagerindicator/UnderlinePageIndicator;->setCurrentItem(I)V

    .line 293
    return-void
.end method
