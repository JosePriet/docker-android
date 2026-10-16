.class public Lfr/testudo/spacecorsair/activity/pagerindicator/TitlePageIndicator;
.super Landroid/view/View;
.source "SourceFile"

# interfaces
.implements Lfr/testudo/spacecorsair/activity/pagerindicator/PageIndicator;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lfr/testudo/spacecorsair/activity/pagerindicator/TitlePageIndicator$1;,
        Lfr/testudo/spacecorsair/activity/pagerindicator/TitlePageIndicator$SavedState;,
        Lfr/testudo/spacecorsair/activity/pagerindicator/TitlePageIndicator$LinePosition;,
        Lfr/testudo/spacecorsair/activity/pagerindicator/TitlePageIndicator$IndicatorStyle;,
        Lfr/testudo/spacecorsair/activity/pagerindicator/TitlePageIndicator$OnCenterItemClickListener;
    }
.end annotation


# static fields
.field private static final BOLD_FADE_PERCENTAGE:F = 0.05f

.field private static final EMPTY_TITLE:Ljava/lang/String; = ""

.field private static final INVALID_POINTER:I = -0x1

.field private static final SELECTION_FADE_PERCENTAGE:F = 0.25f


# instance fields
.field private mActivePointerId:I

.field private mBoldText:Z

.field private final mBounds:Landroid/graphics/Rect;

.field private mCenterItemClickListener:Lfr/testudo/spacecorsair/activity/pagerindicator/TitlePageIndicator$OnCenterItemClickListener;

.field private mClipPadding:F

.field private mColorSelected:I

.field private mColorText:I

.field private mCurrentPage:I

.field private mFooterIndicatorHeight:F

.field private mFooterIndicatorStyle:Lfr/testudo/spacecorsair/activity/pagerindicator/TitlePageIndicator$IndicatorStyle;

.field private mFooterIndicatorUnderlinePadding:F

.field private mFooterLineHeight:F

.field private mFooterPadding:F

.field private mIsDragging:Z

.field private mLastMotionX:F

.field private mLinePosition:Lfr/testudo/spacecorsair/activity/pagerindicator/TitlePageIndicator$LinePosition;

.field private mListener:Landroid/support/v4/view/ViewPager$e;

.field private mPageOffset:F

.field private final mPaintFooterIndicator:Landroid/graphics/Paint;

.field private final mPaintFooterLine:Landroid/graphics/Paint;

.field private final mPaintText:Landroid/graphics/Paint;

.field private mPath:Landroid/graphics/Path;

.field private mScrollState:I

.field private mTitlePadding:F

.field private mTopPadding:F

.field private mTouchSlop:I

.field private mViewPager:Landroid/support/v4/view/ViewPager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .prologue
    .line 153
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lfr/testudo/spacecorsair/activity/pagerindicator/TitlePageIndicator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 154
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    .prologue
    .line 157
    const v0, 0x7f010003

    invoke-direct {p0, p1, p2, v0}, Lfr/testudo/spacecorsair/activity/pagerindicator/TitlePageIndicator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 158
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 25

    .prologue
    .line 161
    invoke-direct/range {p0 .. p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 120
    const/4 v5, -0x1

    move-object/from16 v0, p0

    iput v5, v0, Lfr/testudo/spacecorsair/activity/pagerindicator/TitlePageIndicator;->mCurrentPage:I

    .line 123
    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    move-object/from16 v0, p0

    iput-object v5, v0, Lfr/testudo/spacecorsair/activity/pagerindicator/TitlePageIndicator;->mPaintText:Landroid/graphics/Paint;

    .line 127
    new-instance v5, Landroid/graphics/Path;

    invoke-direct {v5}, Landroid/graphics/Path;-><init>()V

    move-object/from16 v0, p0

    iput-object v5, v0, Lfr/testudo/spacecorsair/activity/pagerindicator/TitlePageIndicator;->mPath:Landroid/graphics/Path;

    .line 128
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    move-object/from16 v0, p0

    iput-object v5, v0, Lfr/testudo/spacecorsair/activity/pagerindicator/TitlePageIndicator;->mBounds:Landroid/graphics/Rect;

    .line 129
    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    move-object/from16 v0, p0

    iput-object v5, v0, Lfr/testudo/spacecorsair/activity/pagerindicator/TitlePageIndicator;->mPaintFooterLine:Landroid/graphics/Paint;

    .line 132
    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    move-object/from16 v0, p0

    iput-object v5, v0, Lfr/testudo/spacecorsair/activity/pagerindicator/TitlePageIndicator;->mPaintFooterIndicator:Landroid/graphics/Paint;

    .line 145
    const/high16 v5, -0x40800000    # -1.0f

    move-object/from16 v0, p0

    iput v5, v0, Lfr/testudo/spacecorsair/activity/pagerindicator/TitlePageIndicator;->mLastMotionX:F

    .line 146
    const/4 v5, -0x1

    move-object/from16 v0, p0

    iput v5, v0, Lfr/testudo/spacecorsair/activity/pagerindicator/TitlePageIndicator;->mActivePointerId:I

    .line 162
    invoke-virtual/range {p0 .. p0}, Lfr/testudo/spacecorsair/activity/pagerindicator/TitlePageIndicator;->isInEditMode()Z

    move-result v5

    if-eqz v5, :cond_47

    .line 217
    :goto_46
    return-void

    .line 165
    :cond_47
    invoke-virtual/range {p0 .. p0}, Lfr/testudo/spacecorsair/activity/pagerindicator/TitlePageIndicator;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 166
    const v6, 0x7f08001c

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    .line 167
    const v7, 0x7f09001b

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v7

    .line 168
    const v8, 0x7f0e0001

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v8

    .line 169
    const v9, 0x7f09001c

    invoke-virtual {v5, v9}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v9

    .line 170
    const v10, 0x7f09001d

    invoke-virtual {v5, v10}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v10

    .line 171
    const v11, 0x7f09001e

    invoke-virtual {v5, v11}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v11

    .line 172
    const v12, 0x7f0e0002

    invoke-virtual {v5, v12}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v12

    .line 173
    const v13, 0x7f08001d

    invoke-virtual {v5, v13}, Landroid/content/res/Resources;->getColor(I)I

    move-result v13

    .line 174
    const v14, 0x7f0d0003

    invoke-virtual {v5, v14}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v14

    .line 175
    const v15, 0x7f08001e

    invoke-virtual {v5, v15}, Landroid/content/res/Resources;->getColor(I)I

    move-result v15

    .line 176
    const v16, 0x7f09001f

    move/from16 v0, v16

    invoke-virtual {v5, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v16

    .line 177
    const v17, 0x7f090020

    move/from16 v0, v17

    invoke-virtual {v5, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v17

    .line 178
    const v18, 0x7f09001a

    move/from16 v0, v18

    invoke-virtual {v5, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v18

    .line 179
    const v19, 0x7f090021

    move/from16 v0, v19

    invoke-virtual {v5, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    .line 182
    sget-object v19, Lfr/testudo/spacecorsair/R$styleable;->TitlePageIndicator:[I

    const/16 v20, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, v19

    move/from16 v3, p3

    move/from16 v4, v20

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v19

    .line 185
    const/16 v20, 0x6

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v0, v1, v7}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v7

    move-object/from16 v0, p0

    iput v7, v0, Lfr/testudo/spacecorsair/activity/pagerindicator/TitlePageIndicator;->mFooterLineHeight:F

    .line 186
    const/4 v7, 0x7

    move-object/from16 v0, v19

    invoke-virtual {v0, v7, v8}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v7

    invoke-static {v7}, Lfr/testudo/spacecorsair/activity/pagerindicator/TitlePageIndicator$IndicatorStyle;->fromValue(I)Lfr/testudo/spacecorsair/activity/pagerindicator/TitlePageIndicator$IndicatorStyle;

    move-result-object v7

    move-object/from16 v0, p0

    iput-object v7, v0, Lfr/testudo/spacecorsair/activity/pagerindicator/TitlePageIndicator;->mFooterIndicatorStyle:Lfr/testudo/spacecorsair/activity/pagerindicator/TitlePageIndicator$IndicatorStyle;

    .line 187
    const/16 v7, 0x8

    move-object/from16 v0, v19

    invoke-virtual {v0, v7, v9}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v7

    move-object/from16 v0, p0

    iput v7, v0, Lfr/testudo/spacecorsair/activity/pagerindicator/TitlePageIndicator;->mFooterIndicatorHeight:F

    .line 188
    const/16 v7, 0x9

    move-object/from16 v0, v19

    invoke-virtual {v0, v7, v10}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v7

    move-object/from16 v0, p0

    iput v7, v0, Lfr/testudo/spacecorsair/activity/pagerindicator/TitlePageIndicator;->mFooterIndicatorUnderlinePadding:F

    .line 189
    const/16 v7, 0xa

    move-object/from16 v0, v19

    invoke-virtual {v0, v7, v11}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v7

    move-object/from16 v0, p0

    iput v7, v0, Lfr/testudo/spacecorsair/activity/pagerindicator/TitlePageIndicator;->mFooterPadding:F

    .line 190
    const/16 v7, 0xb

    move-object/from16 v0, v19

    invoke-virtual {v0, v7, v12}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v7

    invoke-static {v7}, Lfr/testudo/spacecorsair/activity/pagerindicator/TitlePageIndicator$LinePosition;->fromValue(I)Lfr/testudo/spacecorsair/activity/pagerindicator/TitlePageIndicator$LinePosition;

    move-result-object v7

    move-object/from16 v0, p0

    iput-object v7, v0, Lfr/testudo/spacecorsair/activity/pagerindicator/TitlePageIndicator;->mLinePosition:Lfr/testudo/spacecorsair/activity/pagerindicator/TitlePageIndicator$LinePosition;

    .line 191
    const/16 v7, 0xe

    move-object/from16 v0, v19

    invoke-virtual {v0, v7, v5}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v5

    move-object/from16 v0, p0

    iput v5, v0, Lfr/testudo/spacecorsair/activity/pagerindicator/TitlePageIndicator;->mTopPadding:F

    .line 192
    const/16 v5, 0xd

    move-object/from16 v0, v19

    move/from16 v1, v17

    invoke-virtual {v0, v5, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v5

    move-object/from16 v0, p0

    iput v5, v0, Lfr/testudo/spacecorsair/activity/pagerindicator/TitlePageIndicator;->mTitlePadding:F

    .line 193
    const/4 v5, 0x4

    move-object/from16 v0, v19

    move/from16 v1, v18

    invoke-virtual {v0, v5, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v5

    move-object/from16 v0, p0

    iput v5, v0, Lfr/testudo/spacecorsair/activity/pagerindicator/TitlePageIndicator;->mClipPadding:F

    .line 194
    const/4 v5, 0x3

    move-object/from16 v0, v19

    invoke-virtual {v0, v5, v13}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v5

    move-object/from16 v0, p0

    iput v5, v0, Lfr/testudo/spacecorsair/activity/pagerindicator/TitlePageIndicator;->mColorSelected:I

    .line 195
    const/4 v5, 0x1

    move-object/from16 v0, v19

    invoke-virtual {v0, v5, v15}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v5

    move-object/from16 v0, p0

    iput v5, v0, Lfr/testudo/spacecorsair/activity/pagerindicator/TitlePageIndicator;->mColorText:I

    .line 196
    const/16 v5, 0xc

    move-object/from16 v0, v19

    invoke-virtual {v0, v5, v14}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    move-object/from16 v0, p0

    iput-boolean v5, v0, Lfr/testudo/spacecorsair/activity/pagerindicator/TitlePageIndicator;->mBoldText:Z

    .line 198
    const/4 v5, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v16

    invoke-virtual {v0, v5, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v5

    .line 199
    const/4 v7, 0x5

    move-object/from16 v0, v19

    invoke-virtual {v0, v7, v6}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v6

    .line 200
    move-object/from16 v0, p0

    iget-object v7, v0, Lfr/testudo/spacecorsair/activity/pagerindicator/TitlePageIndicator;->mPaintText:Landroid/graphics/Paint;

    invoke-virtual {v7, v5}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 201
    move-object/from16 v0, p0

    iget-object v5, v0, Lfr/testudo/spacecorsair/activity/pagerindicator/TitlePageIndicator;->mPaintText:Landroid/graphics/Paint;

    const/4 v7, 0x1

    invoke-virtual {v5, v7}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 202
    move-object/from16 v0, p0

    iget-object v5, v0, Lfr/testudo/spacecorsair/activity/pagerindicator/TitlePageIndicator;->mPaintFooterLine:Landroid/graphics/Paint;

    sget-object v7, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v5, v7}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 203
    move-object/from16 v0, p0

    iget-object v5, v0, Lfr/testudo/spacecorsair/activity/pagerindicator/TitlePageIndicator;->mPaintFooterLine:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget v7, v0, Lfr/testudo/spacecorsair/activity/pagerindicator/TitlePageIndicator;->mFooterLineHeight:F

    invoke-virtual {v5, v7}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 204
    move-object/from16 v0, p0

    iget-object v5, v0, Lfr/testudo/spacecorsair/activity/pagerindicator/TitlePageIndicator;->mPaintFooterLine:Landroid/graphics/Paint;

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 205
    move-object/from16 v0, p0

    iget-object v5, v0, Lfr/testudo/spacecorsair/activity/pagerindicator/TitlePageIndicator;->mPaintFooterIndicator:Landroid/graphics/Paint;

    sget-object v7, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v5, v7}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 206
    move-object/from16 v0, p0

    iget-object v5, v0, Lfr/testudo/spacecorsair/activity/pagerindicator/TitlePageIndicator;->mPaintFooterIndicator:Landroid/graphics/Paint;

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 208
    const/4 v5, 0x2

    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 209
    if-eqz v5, :cond_1b9

    .line 210
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lfr/testudo/spacecorsair/activity/pagerindicator/TitlePageIndicator;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 213
    :cond_1b9
    invoke-virtual/range {v19 .. v19}, Landroid/content/res/TypedArray;->recycle()V

    .line 215
    invoke-static/range {p1 .. p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v5

    .line 216
    invoke-static {v5}, Landroid/support/v4/view/y;->a(Landroid/view/ViewConfiguration;)I

    move-result v5

    move-object/from16 v0, p0

    iput v5, v0, Lfr/testudo/spacecorsair/activity/pagerindicator/TitlePageIndicator;->mTouchSlop:I

    goto/16 :goto_46
.end method

.method private calcBounds(ILandroid/graphics/Paint;)Landroid/graphics/Rect;
    .registers 7

    .prologue
    .line 701
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 702
    invoke-direct {p0, p1}, Lfr/testudo/spacecorsair/activity/pagerindicator/TitlePageIndicator;->getTitle(I)Ljava/lang/CharSequence;

    move-result-object v1

    .line 703
    const/4 v2, 0x0

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    invoke-virtual {p2, v1, v2, v3}, Landroid/graphics/Paint;->measureText(Ljava/lang/CharSequence;II)F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 704
    invoke-virtual {p2}, Landroid/graphics/Paint;->descent()F

    move-result v1

    invoke-virtual {p2}, Landroid/graphics/Paint;->ascent()F

    move-result v2

    sub-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 705
    return-object v0
.end method

.method private calculateAllBounds(Landroid/graphics/Paint;)Ljava/util/ArrayList;
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Paint;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 673
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 675
    iget-object v0, p0, Lfr/testudo/spacecorsair/activity/pagerindicator/TitlePageIndicator;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/o;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/view/o;->getCount()I

    move-result v3

    .line 676
    invoke-virtual {p0}, Lfr/testudo/spacecorsair/activity/pagerindicator/TitlePageIndicator;->getWidth()I

    move-result v4

    .line 677
    div-int/lit8 v5, v4, 0x2

    move v0, v1

    .line 678
    :goto_17
    if-ge v0, v3, :cond_4a

    .line 679
    invoke-direct {p0, v0, p1}, Lfr/testudo/spacecorsair/activity/pagerindicator/TitlePageIndicator;->calcBounds(ILandroid/graphics/Paint;)Landroid/graphics/Rect;

    move-result-object v6

    .line 680
    iget v7, v6, Landroid/graphics/Rect;->right:I

    iget v8, v6, Landroid/graphics/Rect;->left:I

    sub-int/2addr v7, v8

    .line 681
    iget v8, v6, Landroid/graphics/Rect;->bottom:I

    iget v9, v6, Landroid/graphics/Rect;->top:I

    sub-int/2addr v8, v9

    .line 682
    int-to-float v9, v5

    int-to-float v10, v7

    const/high16 v11, 0x40000000    # 2.0f

    div-float/2addr v10, v11

    sub-float/2addr v9, v10

    iget v10, p0, Lfr/testudo/spacecorsair/activity/pagerindicator/TitlePageIndicator;->mCurrentPage:I

    sub-int v10, v0, v10

    int-to-float v10, v10

    iget v11, p0, Lfr/testudo/spacecorsair/activity/pagerindicator/TitlePageIndicator;->mPageOffset:F

    sub-float/2addr v10, v11

    int-to-float v11, v4

    mul-float/2addr v10, v11

    add-float/2addr v9, v10

    float-to-int v9, v9

    iput v9, v6, Landroid/graphics/Rect;->left:I

    .line 683
    iget v9, v6, Landroid/graphics/Rect;->left:I

    add-int/2addr v7, v9

    iput v7, v6, Landroid/graphics/Rect;->right:I

    .line 684
    iput v1, v6, Landroid/graphics/Rect;->top:I

    .line 685
    iput v8, v6, Landroid/graphics/Rect;->bottom:I

    .line 686
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 678
    add-int/lit8 v0, v0, 0x1

    goto :goto_17

    .line 689
    :cond_4a
    return-object v2
.end method

.method private clipViewOnTheLeft(Landroid/graphics/Rect;FI)V
    .registers 6

    .prologue
    .line 662
    int-to-float v0, p3

    iget v1, p0, Lfr/testudo/spacecorsair/activity/pagerindicator/TitlePageIndicator;->mClipPadding:F

    add-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p1, Landroid/graphics/Rect;->left:I

    .line 663
    iget v0, p0, Lfr/testudo/spacecorsair/activity/pagerindicator/TitlePageIndicator;->mClipPadding:F

    add-float/2addr v0, p2

    float-to-int v0, v0

    iput v0, p1, Landroid/graphics/Rect;->right:I

    .line 664
    return-void
.end method

.method private clipViewOnTheRight(Landroid/graphics/Rect;FI)V
    .registers 6

    .prologue
    .line 649
    int-to-float v0, p3

    iget v1, p0, Lfr/testudo/spacecorsair/activity/pagerindicator/TitlePageIndicator;->mClipPadding:F

    sub-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p1, Landroid/graphics/Rect;->right:I

    .line 650
    iget v0, p1, Landroid/graphics/Rect;->right:I

    int-to-float v0, v0

    sub-float/2addr v0, p2

    float-to-int v0, v0

    iput v0, p1, Landroid/graphics/Rect;->left:I

    .line 651
    return-void
.end method

.method private getTitle(I)Ljava/lang/CharSequence;
    .registers 3

    .prologue
    .line 865
    iget-object v0, p0, Lfr/testudo/spacecorsair/activity/pagerindicator/TitlePageIndicator;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/o;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v4/view/o;->getPageTitle(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 866
    if-nez v0, :cond_e

    .line 867
    const-string v0, ""

    .line 869
    :cond_e
    return-object v0
.end method


# virtual methods
.method public getClipPadding()F
    .registers 2

    .prologue
    .line 332
    iget v0, p0, Lfr/testudo/spacecorsair/activity/pagerindicator/TitlePageIndicator;->mClipPadding:F

    return v0
.end method

.method public getFooterColor()I
    .registers 2

    .prologue
    .line 221
    iget-object v0, p0, Lfr/testudo/spacecorsair/activity/pagerindicator/TitlePageIndicator;->mPaintFooterLine:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    return v0
.end method

.method public getFooterIndicatorHeight()F
    .registers 2

    .prologue
    .line 241
    iget v0, p0, Lfr/testudo/spacecorsair/activity/pagerindicator/TitlePageIndicator;->mFooterIndicatorHeight:F

    return v0
.end method

.method public getFooterIndicatorPadding()F
    .registers 2

    .prologue
    .line 250
    iget v0, p0, Lfr/testudo/spacecorsair/activity/pagerindicator/TitlePageIndicator;->mFooterPadding:F

    return v0
.end method

.method public getFooterIndicatorStyle()Lfr/testudo/spacecorsair/activity/pagerindicator/TitlePageIndicator$IndicatorStyle;
    .registers 2

    .prologue
    .line 259
    iget-object v0, p0, Lfr/testudo/spacecorsair/activity/pagerindicator/TitlePageIndicator;->mFooterIndicatorStyle:Lfr/testudo/spacecorsair/activity/pagerindicator/TitlePageIndicator$IndicatorStyle;

    return-object v0
.end method

.method public getFooterLineHeight()F
    .registers 2

    .prologue
    .line 231
    iget v0, p0, Lfr/testudo/spacecorsair/activity/pagerindicator/TitlePageIndicator;->mFooterLineHeight:F

    return v0
.end method

.method public getLinePosition()Lfr/testudo/spacecorsair/activity/pagerindicator/TitlePageIndicator$LinePosition;
    .registers 2

    .prologue
    .line 268
    iget-object v0, p0, Lfr/testudo/spacecorsair/activity/pagerindicator/TitlePageIndicator;->mLinePosition:Lfr/testudo/spacecorsair/activity/pagerindicator/TitlePageIndicator$LinePosition;

    return-object v0
.end method

.method public getSelectedColor()I
    .registers 2

    .prologue
    .line 277
    iget v0, p0, Lfr/testudo/spacecorsair/activity/pagerindicator/TitlePageIndicator;->mColorSelected:I

    return v0
.end method

.method public getTextColor()I
    .registers 2

    .prologue
    .line 295
    iget v0, p0, Lfr/testudo/spacecorsair/activity/pagerindicator/TitlePageIndicator;->mColorText:I

    return v0
.end method

.method public getTextSize()F
    .registers 2

    .prologue
    .line 305
    iget-object v0, p0, Lfr/testudo/spacecorsair/activity/pagerindicator/TitlePageIndicator;->mPaintText:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getTextSize()F

    move-result v0

    return v0
.end method

.method public getTitlePadding()F
    .registers 2

    .prologue
    .line 314
    iget v0, p0, Lfr/testudo/spacecorsair/activity/pagerindicator/TitlePageIndicator;->mTitlePadding:F

    return v0
.end method

.method public getTopPadding()F
    .registers 2

    .prologue
    .line 323
    iget v0, p0, Lfr/testudo/spacecorsair/activity/pagerindicator/TitlePageIndicator;->mTopPadding:F

    return v0
.end method

.method public getTypeface()Landroid/graphics/Typeface;
    .registers 2

    .prologue
    .line 346
    iget-object v0, p0, Lfr/testudo/spacecorsair/activity/pagerindicator/TitlePageIndicator;->mPaintText:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v0

    return-object v0
.end method

.method public isSelectedBold()Z
    .registers 2

    .prologue
    .line 286
    iget-boolean v0, p0, Lfr/testudo/spacecorsair/activity/pagerindicator/TitlePageIndicator;->mBoldText:Z

    return v0
.end method

.method public notifyDataSetChanged()V
    .registers 1

    .prologue
    .line 732
    invoke-virtual {p0}, Lfr/testudo/spacecorsair/activity/pagerindicator/TitlePageIndicator;->invalidate()V

    .line 733
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 28

    .prologue
    .line 356
    invoke-super/range {p0 .. p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 358
    move-object/from16 v0, p0

    iget-object v2, v0, Lfr/testudo/spacecorsair/activity/pagerindicator/TitlePageIndicator;->mViewPager:Landroid/support/v4/view/ViewPager;

    if-nez v2, :cond_a

    .line 543
    :cond_9
    :goto_9
    return-void

    .line 361
    :cond_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lfr/testudo/spacecorsair/activity/pagerindicator/TitlePageIndicator;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v2}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/o;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/view/o;->getCount()I

    move-result v16

    .line 362
    if-eqz v16, :cond_9

    .line 367
    move-object/from16 v0, p0

    iget v2, v0, Lfr/testudo/spacecorsair/activity/pagerindicator/TitlePageIndicator;->mCurrentPage:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_31

    move-object/from16 v0, p0

    iget-object v2, v0, Lfr/testudo/spacecorsair/activity/pagerindicator/TitlePageIndicator;->mViewPager:Landroid/support/v4/view/ViewPager;

    if-eqz v2, :cond_31

    .line 368
    move-object/from16 v0, p0

    iget-object v2, v0, Lfr/testudo/spacecorsair/activity/pagerindicator/TitlePageIndicator;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v2}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lfr/testudo/spacecorsair/activity/pagerindicator/TitlePageIndicator;->mCurrentPage:I

    .line 372
    :cond_31
    move-object/from16 v0, p0

    iget-object v2, v0, Lfr/testudo/spacecorsair/activity/pagerindicator/TitlePageIndicator;->mPaintText:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lfr/testudo/spacecorsair/activity/pagerindicator/TitlePageIndicator;->calculateAllBounds(Landroid/graphics/Paint;)Ljava/util/ArrayList;

    move-result-object v17

    .line 373
    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v18

    .line 376
    move-object/from16 v0, p0

    iget v2, v0, Lfr/testudo/spacecorsair/activity/pagerindicator/TitlePageIndicator;->mCurrentPage:I

    move/from16 v0, v18

    if-lt v2, v0, :cond_4f

    .line 377
    add-int/lit8 v2, v18, -0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lfr/testudo/spacecorsair/activity/pagerindicator/TitlePageIndicator;->setCurrentItem(I)V

    goto :goto_9

    .line 381
    :cond_4f
    add-int/lit8 v5, v16, -0x1

    .line 382
    invoke-virtual/range {p0 .. p0}, Lfr/testudo/spacecorsair/activity/pagerindicator/TitlePageIndicator;->getWidth()I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float v19, v2, v3

    .line 383
    invoke-virtual/range {p0 .. p0}, Lfr/testudo/spacecorsair/activity/pagerindicator/TitlePageIndicator;->getLeft()I

    move-result v20

    .line 384
    move/from16 v0, v20

    int-to-float v2, v0

    move-object/from16 v0, p0

    iget v3, v0, Lfr/testudo/spacecorsair/activity/pagerindicator/TitlePageIndicator;->mClipPadding:F

    add-float v6, v2, v3

    .line 385
    invoke-virtual/range {p0 .. p0}, Lfr/testudo/spacecorsair/activity/pagerindicator/TitlePageIndicator;->getWidth()I

    move-result v21

    .line 386
    invoke-virtual/range {p0 .. p0}, Lfr/testudo/spacecorsair/activity/pagerindicator/TitlePageIndicator;->getHeight()I

    move-result v12

    .line 387
    add-int v22, v20, v21

    .line 388
    move/from16 v0, v22

    int-to-float v2, v0

    move-object/from16 v0, p0

    iget v3, v0, Lfr/testudo/spacecorsair/activity/pagerindicator/TitlePageIndicator;->mClipPadding:F

    sub-float v7, v2, v3

    .line 390
    move-object/from16 v0, p0

    iget v3, v0, Lfr/testudo/spacecorsair/activity/pagerindicator/TitlePageIndicator;->mCurrentPage:I

    .line 392
    move-object/from16 v0, p0

    iget v2, v0, Lfr/testudo/spacecorsair/activity/pagerindicator/TitlePageIndicator;->mPageOffset:F

    float-to-double v8, v2

    const-wide/high16 v10, 0x3fe0000000000000L    # 0.5

    cmpg-double v2, v8, v10

    if-gtz v2, :cond_12f

    .line 393
    move-object/from16 v0, p0

    iget v2, v0, Lfr/testudo/spacecorsair/activity/pagerindicator/TitlePageIndicator;->mPageOffset:F

    move v15, v3

    move v3, v2

    .line 398
    :goto_8f
    const/high16 v2, 0x3e800000    # 0.25f

    cmpg-float v2, v3, v2

    if-gtz v2, :cond_13c

    const/4 v2, 0x1

    move v14, v2

    .line 399
    :goto_97
    const v2, 0x3d4ccccd    # 0.05f

    cmpg-float v2, v3, v2

    if-gtz v2, :cond_140

    const/4 v2, 0x1

    move v10, v2

    .line 400
    :goto_a0
    const/high16 v2, 0x3e800000    # 0.25f

    sub-float/2addr v2, v3

    const/high16 v3, 0x3e800000    # 0.25f

    div-float v23, v2, v3

    .line 403
    move-object/from16 v0, p0

    iget v2, v0, Lfr/testudo/spacecorsair/activity/pagerindicator/TitlePageIndicator;->mCurrentPage:I

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Rect;

    .line 404
    iget v3, v2, Landroid/graphics/Rect;->right:I

    iget v4, v2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    .line 405
    iget v4, v2, Landroid/graphics/Rect;->left:I

    int-to-float v4, v4

    cmpg-float v4, v4, v6

    if-gez v4, :cond_c7

    .line 407
    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-direct {v0, v2, v3, v1}, Lfr/testudo/spacecorsair/activity/pagerindicator/TitlePageIndicator;->clipViewOnTheLeft(Landroid/graphics/Rect;FI)V

    .line 409
    :cond_c7
    iget v4, v2, Landroid/graphics/Rect;->right:I

    int-to-float v4, v4

    cmpl-float v4, v4, v7

    if-lez v4, :cond_d5

    .line 411
    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-direct {v0, v2, v3, v1}, Lfr/testudo/spacecorsair/activity/pagerindicator/TitlePageIndicator;->clipViewOnTheRight(Landroid/graphics/Rect;FI)V

    .line 415
    :cond_d5
    move-object/from16 v0, p0

    iget v2, v0, Lfr/testudo/spacecorsair/activity/pagerindicator/TitlePageIndicator;->mCurrentPage:I

    if-lez v2, :cond_144

    .line 416
    move-object/from16 v0, p0

    iget v2, v0, Lfr/testudo/spacecorsair/activity/pagerindicator/TitlePageIndicator;->mCurrentPage:I

    add-int/lit8 v2, v2, -0x1

    move v4, v2

    :goto_e2
    if-ltz v4, :cond_144

    .line 417
    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Rect;

    .line 419
    iget v3, v2, Landroid/graphics/Rect;->left:I

    int-to-float v3, v3

    cmpg-float v3, v3, v6

    if-gez v3, :cond_12b

    .line 420
    iget v3, v2, Landroid/graphics/Rect;->right:I

    iget v8, v2, Landroid/graphics/Rect;->left:I

    sub-int v8, v3, v8

    .line 422
    int-to-float v3, v8

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-direct {v0, v2, v3, v1}, Lfr/testudo/spacecorsair/activity/pagerindicator/TitlePageIndicator;->clipViewOnTheLeft(Landroid/graphics/Rect;FI)V

    .line 424
    add-int/lit8 v3, v4, 0x1

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Rect;

    .line 426
    iget v9, v2, Landroid/graphics/Rect;->right:I

    int-to-float v9, v9

    move-object/from16 v0, p0

    iget v11, v0, Lfr/testudo/spacecorsair/activity/pagerindicator/TitlePageIndicator;->mTitlePadding:F

    add-float/2addr v9, v11

    iget v11, v3, Landroid/graphics/Rect;->left:I

    int-to-float v11, v11

    cmpl-float v9, v9, v11

    if-lez v9, :cond_12b

    .line 427
    iget v3, v3, Landroid/graphics/Rect;->left:I

    sub-int/2addr v3, v8

    int-to-float v3, v3

    move-object/from16 v0, p0

    iget v9, v0, Lfr/testudo/spacecorsair/activity/pagerindicator/TitlePageIndicator;->mTitlePadding:F

    sub-float/2addr v3, v9

    float-to-int v3, v3

    iput v3, v2, Landroid/graphics/Rect;->left:I

    .line 428
    iget v3, v2, Landroid/graphics/Rect;->left:I

    add-int/2addr v3, v8

    iput v3, v2, Landroid/graphics/Rect;->right:I

    .line 416
    :cond_12b
    add-int/lit8 v2, v4, -0x1

    move v4, v2

    goto :goto_e2

    .line 395
    :cond_12f
    add-int/lit8 v3, v3, 0x1

    .line 396
    const/high16 v2, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    iget v4, v0, Lfr/testudo/spacecorsair/activity/pagerindicator/TitlePageIndicator;->mPageOffset:F

    sub-float/2addr v2, v4

    move v15, v3

    move v3, v2

    goto/16 :goto_8f

    .line 398
    :cond_13c
    const/4 v2, 0x0

    move v14, v2

    goto/16 :goto_97

    .line 399
    :cond_140
    const/4 v2, 0x0

    move v10, v2

    goto/16 :goto_a0

    .line 434
    :cond_144
    move-object/from16 v0, p0

    iget v2, v0, Lfr/testudo/spacecorsair/activity/pagerindicator/TitlePageIndicator;->mCurrentPage:I

    if-ge v2, v5, :cond_19f

    .line 435
    move-object/from16 v0, p0

    iget v2, v0, Lfr/testudo/spacecorsair/activity/pagerindicator/TitlePageIndicator;->mCurrentPage:I

    add-int/lit8 v2, v2, 0x1

    move v4, v2

    :goto_151
    move/from16 v0, v16

    if-ge v4, v0, :cond_19f

    .line 436
    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Rect;

    .line 438
    iget v3, v2, Landroid/graphics/Rect;->right:I

    int-to-float v3, v3

    cmpl-float v3, v3, v7

    if-lez v3, :cond_19b

    .line 439
    iget v3, v2, Landroid/graphics/Rect;->right:I

    iget v5, v2, Landroid/graphics/Rect;->left:I

    sub-int v5, v3, v5

    .line 441
    int-to-float v3, v5

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-direct {v0, v2, v3, v1}, Lfr/testudo/spacecorsair/activity/pagerindicator/TitlePageIndicator;->clipViewOnTheRight(Landroid/graphics/Rect;FI)V

    .line 443
    add-int/lit8 v3, v4, -0x1

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Rect;

    .line 445
    iget v6, v2, Landroid/graphics/Rect;->left:I

    int-to-float v6, v6

    move-object/from16 v0, p0

    iget v8, v0, Lfr/testudo/spacecorsair/activity/pagerindicator/TitlePageIndicator;->mTitlePadding:F

    sub-float/2addr v6, v8

    iget v8, v3, Landroid/graphics/Rect;->right:I

    int-to-float v8, v8

    cmpg-float v6, v6, v8

    if-gez v6, :cond_19b

    .line 446
    iget v3, v3, Landroid/graphics/Rect;->right:I

    int-to-float v3, v3

    move-object/from16 v0, p0

    iget v6, v0, Lfr/testudo/spacecorsair/activity/pagerindicator/TitlePageIndicator;->mTitlePadding:F

    add-float/2addr v3, v6

    float-to-int v3, v3

    iput v3, v2, Landroid/graphics/Rect;->left:I

    .line 447
    iget v3, v2, Landroid/graphics/Rect;->left:I

    add-int/2addr v3, v5

    iput v3, v2, Landroid/graphics/Rect;->right:I

    .line 435
    :cond_19b
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    goto :goto_151

    .line 454
    :cond_19f
    move-object/from16 v0, p0

    iget v2, v0, Lfr/testudo/spacecorsair/activity/pagerindicator/TitlePageIndicator;->mColorText:I

    ushr-int/lit8 v24, v2, 0x18

    .line 455
    const/4 v2, 0x0

    move v13, v2

    :goto_1a7
    move/from16 v0, v16

    if-ge v13, v0, :cond_297

    .line 457
    move-object/from16 v0, v17

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Landroid/graphics/Rect;

    .line 459
    iget v2, v9, Landroid/graphics/Rect;->left:I

    move/from16 v0, v20

    if-le v2, v0, :cond_1c0

    iget v2, v9, Landroid/graphics/Rect;->left:I

    move/from16 v0, v22

    if-lt v2, v0, :cond_1cc

    :cond_1c0
    iget v2, v9, Landroid/graphics/Rect;->right:I

    move/from16 v0, v20

    if-le v2, v0, :cond_28b

    iget v2, v9, Landroid/graphics/Rect;->right:I

    move/from16 v0, v22

    if-ge v2, v0, :cond_28b

    .line 460
    :cond_1cc
    if-ne v13, v15, :cond_290

    const/4 v2, 0x1

    move v11, v2

    .line 461
    :goto_1d0
    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lfr/testudo/spacecorsair/activity/pagerindicator/TitlePageIndicator;->getTitle(I)Ljava/lang/CharSequence;

    move-result-object v3

    .line 464
    move-object/from16 v0, p0

    iget-object v4, v0, Lfr/testudo/spacecorsair/activity/pagerindicator/TitlePageIndicator;->mPaintText:Landroid/graphics/Paint;

    if-eqz v11, :cond_294

    if-eqz v10, :cond_294

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lfr/testudo/spacecorsair/activity/pagerindicator/TitlePageIndicator;->mBoldText:Z

    if-eqz v2, :cond_294

    const/4 v2, 0x1

    :goto_1e5
    invoke-virtual {v4, v2}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    .line 467
    move-object/from16 v0, p0

    iget-object v2, v0, Lfr/testudo/spacecorsair/activity/pagerindicator/TitlePageIndicator;->mPaintText:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget v4, v0, Lfr/testudo/spacecorsair/activity/pagerindicator/TitlePageIndicator;->mColorText:I

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 468
    if-eqz v11, :cond_206

    if-eqz v14, :cond_206

    .line 470
    move-object/from16 v0, p0

    iget-object v2, v0, Lfr/testudo/spacecorsair/activity/pagerindicator/TitlePageIndicator;->mPaintText:Landroid/graphics/Paint;

    move/from16 v0, v24

    int-to-float v4, v0

    mul-float v4, v4, v23

    float-to-int v4, v4

    sub-int v4, v24, v4

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 474
    :cond_206
    add-int/lit8 v2, v18, -0x1

    if-ge v13, v2, :cond_239

    .line 475
    add-int/lit8 v2, v13, 0x1

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Rect;

    .line 477
    iget v4, v9, Landroid/graphics/Rect;->right:I

    int-to-float v4, v4

    move-object/from16 v0, p0

    iget v5, v0, Lfr/testudo/spacecorsair/activity/pagerindicator/TitlePageIndicator;->mTitlePadding:F

    add-float/2addr v4, v5

    iget v5, v2, Landroid/graphics/Rect;->left:I

    int-to-float v5, v5

    cmpl-float v4, v4, v5

    if-lez v4, :cond_239

    .line 478
    iget v4, v9, Landroid/graphics/Rect;->right:I

    iget v5, v9, Landroid/graphics/Rect;->left:I

    sub-int/2addr v4, v5

    .line 479
    iget v2, v2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v4

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget v5, v0, Lfr/testudo/spacecorsair/activity/pagerindicator/TitlePageIndicator;->mTitlePadding:F

    sub-float/2addr v2, v5

    float-to-int v2, v2

    iput v2, v9, Landroid/graphics/Rect;->left:I

    .line 480
    iget v2, v9, Landroid/graphics/Rect;->left:I

    add-int/2addr v2, v4

    iput v2, v9, Landroid/graphics/Rect;->right:I

    .line 483
    :cond_239
    const/4 v4, 0x0

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v5

    iget v2, v9, Landroid/graphics/Rect;->left:I

    int-to-float v6, v2

    iget v2, v9, Landroid/graphics/Rect;->bottom:I

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget v7, v0, Lfr/testudo/spacecorsair/activity/pagerindicator/TitlePageIndicator;->mTopPadding:F

    add-float/2addr v7, v2

    move-object/from16 v0, p0

    iget-object v8, v0, Lfr/testudo/spacecorsair/activity/pagerindicator/TitlePageIndicator;->mPaintText:Landroid/graphics/Paint;

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v8}, Landroid/graphics/Canvas;->drawText(Ljava/lang/CharSequence;IIFFLandroid/graphics/Paint;)V

    .line 486
    if-eqz v11, :cond_28b

    if-eqz v14, :cond_28b

    .line 487
    move-object/from16 v0, p0

    iget-object v2, v0, Lfr/testudo/spacecorsair/activity/pagerindicator/TitlePageIndicator;->mPaintText:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget v4, v0, Lfr/testudo/spacecorsair/activity/pagerindicator/TitlePageIndicator;->mColorSelected:I

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 488
    move-object/from16 v0, p0

    iget-object v2, v0, Lfr/testudo/spacecorsair/activity/pagerindicator/TitlePageIndicator;->mPaintText:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget v4, v0, Lfr/testudo/spacecorsair/activity/pagerindicator/TitlePageIndicator;->mColorSelected:I

    ushr-int/lit8 v4, v4, 0x18

    int-to-float v4, v4

    mul-float v4, v4, v23

    float-to-int v4, v4

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 489
    const/4 v4, 0x0

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v5

    iget v2, v9, Landroid/graphics/Rect;->left:I

    int-to-float v6, v2

    iget v2, v9, Landroid/graphics/Rect;->bottom:I

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget v7, v0, Lfr/testudo/spacecorsair/activity/pagerindicator/TitlePageIndicator;->mTopPadding:F

    add-float/2addr v7, v2

    move-object/from16 v0, p0

    iget-object v8, v0, Lfr/testudo/spacecorsair/activity/pagerindicator/TitlePageIndicator;->mPaintText:Landroid/graphics/Paint;

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v8}, Landroid/graphics/Canvas;->drawText(Ljava/lang/CharSequence;IIFFLandroid/graphics/Paint;)V

    .line 455
    :cond_28b
    add-int/lit8 v2, v13, 0x1

    move v13, v2

    goto/16 :goto_1a7

    .line 460
    :cond_290
    const/4 v2, 0x0

    move v11, v2

    goto/16 :goto_1d0

    .line 464
    :cond_294
    const/4 v2, 0x0

    goto/16 :goto_1e5

    .line 495
    :cond_297
    move-object/from16 v0, p0

    iget v3, v0, Lfr/testudo/spacecorsair/activity/pagerindicator/TitlePageIndicator;->mFooterLineHeight:F

    .line 496
    move-object/from16 v0, p0

    iget v2, v0, Lfr/testudo/spacecorsair/activity/pagerindicator/TitlePageIndicator;->mFooterIndicatorHeight:F

    .line 497
    move-object/from16 v0, p0

    iget-object v4, v0, Lfr/testudo/spacecorsair/activity/pagerindicator/TitlePageIndicator;->mLinePosition:Lfr/testudo/spacecorsair/activity/pagerindicator/TitlePageIndicator$LinePosition;

    sget-object v5, Lfr/testudo/spacecorsair/activity/pagerindicator/TitlePageIndicator$LinePosition;->Top:Lfr/testudo/spacecorsair/activity/pagerindicator/TitlePageIndicator$LinePosition;

    if-ne v4, v5, :cond_3a3

    .line 498
    const/4 v4, 0x0

    .line 499
    neg-float v3, v3

    .line 500
    neg-float v2, v2

    move/from16 v25, v2

    move v2, v3

    move/from16 v3, v25

    .line 504
    :goto_2af
    move-object/from16 v0, p0

    iget-object v5, v0, Lfr/testudo/spacecorsair/activity/pagerindicator/TitlePageIndicator;->mPath:Landroid/graphics/Path;

    invoke-virtual {v5}, Landroid/graphics/Path;->reset()V

    .line 505
    move-object/from16 v0, p0

    iget-object v5, v0, Lfr/testudo/spacecorsair/activity/pagerindicator/TitlePageIndicator;->mPath:Landroid/graphics/Path;

    const/4 v6, 0x0

    int-to-float v7, v4

    const/high16 v8, 0x40000000    # 2.0f

    div-float v8, v2, v8

    sub-float/2addr v7, v8

    invoke-virtual {v5, v6, v7}, Landroid/graphics/Path;->moveTo(FF)V

    .line 506
    move-object/from16 v0, p0

    iget-object v5, v0, Lfr/testudo/spacecorsair/activity/pagerindicator/TitlePageIndicator;->mPath:Landroid/graphics/Path;

    move/from16 v0, v21

    int-to-float v6, v0

    int-to-float v7, v4

    const/high16 v8, 0x40000000    # 2.0f

    div-float v8, v2, v8

    sub-float/2addr v7, v8

    invoke-virtual {v5, v6, v7}, Landroid/graphics/Path;->lineTo(FF)V

    .line 507
    move-object/from16 v0, p0

    iget-object v5, v0, Lfr/testudo/spacecorsair/activity/pagerindicator/TitlePageIndicator;->mPath:Landroid/graphics/Path;

    invoke-virtual {v5}, Landroid/graphics/Path;->close()V

    .line 508
    move-object/from16 v0, p0

    iget-object v5, v0, Lfr/testudo/spacecorsair/activity/pagerindicator/TitlePageIndicator;->mPath:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget-object v6, v0, Lfr/testudo/spacecorsair/activity/pagerindicator/TitlePageIndicator;->mPaintFooterLine:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v5, v6}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 510
    int-to-float v4, v4

    sub-float/2addr v4, v2

    .line 511
    sget-object v2, Lfr/testudo/spacecorsair/activity/pagerindicator/TitlePageIndicator$1;->$SwitchMap$fr$testudo$spacecorsair$activity$pagerindicator$TitlePageIndicator$IndicatorStyle:[I

    move-object/from16 v0, p0

    iget-object v5, v0, Lfr/testudo/spacecorsair/activity/pagerindicator/TitlePageIndicator;->mFooterIndicatorStyle:Lfr/testudo/spacecorsair/activity/pagerindicator/TitlePageIndicator$IndicatorStyle;

    invoke-virtual {v5}, Lfr/testudo/spacecorsair/activity/pagerindicator/TitlePageIndicator$IndicatorStyle;->ordinal()I

    move-result v5

    aget v2, v2, v5

    packed-switch v2, :pswitch_data_3ac

    goto/16 :goto_9

    .line 513
    :pswitch_2fb
    move-object/from16 v0, p0

    iget-object v2, v0, Lfr/testudo/spacecorsair/activity/pagerindicator/TitlePageIndicator;->mPath:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->reset()V

    .line 514
    move-object/from16 v0, p0

    iget-object v2, v0, Lfr/testudo/spacecorsair/activity/pagerindicator/TitlePageIndicator;->mPath:Landroid/graphics/Path;

    sub-float v5, v4, v3

    move/from16 v0, v19

    invoke-virtual {v2, v0, v5}, Landroid/graphics/Path;->moveTo(FF)V

    .line 515
    move-object/from16 v0, p0

    iget-object v2, v0, Lfr/testudo/spacecorsair/activity/pagerindicator/TitlePageIndicator;->mPath:Landroid/graphics/Path;

    add-float v5, v19, v3

    invoke-virtual {v2, v5, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 516
    move-object/from16 v0, p0

    iget-object v2, v0, Lfr/testudo/spacecorsair/activity/pagerindicator/TitlePageIndicator;->mPath:Landroid/graphics/Path;

    sub-float v3, v19, v3

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 517
    move-object/from16 v0, p0

    iget-object v2, v0, Lfr/testudo/spacecorsair/activity/pagerindicator/TitlePageIndicator;->mPath:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->close()V

    .line 518
    move-object/from16 v0, p0

    iget-object v2, v0, Lfr/testudo/spacecorsair/activity/pagerindicator/TitlePageIndicator;->mPath:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget-object v3, v0, Lfr/testudo/spacecorsair/activity/pagerindicator/TitlePageIndicator;->mPaintFooterIndicator:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto/16 :goto_9

    .line 522
    :pswitch_335
    if-eqz v14, :cond_9

    move/from16 v0, v18

    if-ge v15, v0, :cond_9

    .line 526
    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Rect;

    .line 527
    iget v5, v2, Landroid/graphics/Rect;->right:I

    int-to-float v5, v5

    move-object/from16 v0, p0

    iget v6, v0, Lfr/testudo/spacecorsair/activity/pagerindicator/TitlePageIndicator;->mFooterIndicatorUnderlinePadding:F

    add-float/2addr v5, v6

    .line 528
    iget v2, v2, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget v6, v0, Lfr/testudo/spacecorsair/activity/pagerindicator/TitlePageIndicator;->mFooterIndicatorUnderlinePadding:F

    sub-float/2addr v2, v6

    .line 529
    sub-float v3, v4, v3

    .line 531
    move-object/from16 v0, p0

    iget-object v6, v0, Lfr/testudo/spacecorsair/activity/pagerindicator/TitlePageIndicator;->mPath:Landroid/graphics/Path;

    invoke-virtual {v6}, Landroid/graphics/Path;->reset()V

    .line 532
    move-object/from16 v0, p0

    iget-object v6, v0, Lfr/testudo/spacecorsair/activity/pagerindicator/TitlePageIndicator;->mPath:Landroid/graphics/Path;

    invoke-virtual {v6, v2, v4}, Landroid/graphics/Path;->moveTo(FF)V

    .line 533
    move-object/from16 v0, p0

    iget-object v6, v0, Lfr/testudo/spacecorsair/activity/pagerindicator/TitlePageIndicator;->mPath:Landroid/graphics/Path;

    invoke-virtual {v6, v5, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 534
    move-object/from16 v0, p0

    iget-object v4, v0, Lfr/testudo/spacecorsair/activity/pagerindicator/TitlePageIndicator;->mPath:Landroid/graphics/Path;

    invoke-virtual {v4, v5, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 535
    move-object/from16 v0, p0

    iget-object v4, v0, Lfr/testudo/spacecorsair/activity/pagerindicator/TitlePageIndicator;->mPath:Landroid/graphics/Path;

    invoke-virtual {v4, v2, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 536
    move-object/from16 v0, p0

    iget-object v2, v0, Lfr/testudo/spacecorsair/activity/pagerindicator/TitlePageIndicator;->mPath:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->close()V

    .line 538
    move-object/from16 v0, p0

    iget-object v2, v0, Lfr/testudo/spacecorsair/activity/pagerindicator/TitlePageIndicator;->mPaintFooterIndicator:Landroid/graphics/Paint;

    const/high16 v3, 0x437f0000    # 255.0f

    mul-float v3, v3, v23

    float-to-int v3, v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 539
    move-object/from16 v0, p0

    iget-object v2, v0, Lfr/testudo/spacecorsair/activity/pagerindicator/TitlePageIndicator;->mPath:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget-object v3, v0, Lfr/testudo/spacecorsair/activity/pagerindicator/TitlePageIndicator;->mPaintFooterIndicator:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 540
    move-object/from16 v0, p0

    iget-object v2, v0, Lfr/testudo/spacecorsair/activity/pagerindicator/TitlePageIndicator;->mPaintFooterIndicator:Landroid/graphics/Paint;

    const/16 v3, 0xff

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    goto/16 :goto_9

    :cond_3a3
    move v4, v12

    move/from16 v25, v3

    move v3, v2

    move/from16 v2, v25

    goto/16 :goto_2af

    .line 511
    nop

    :pswitch_data_3ac
    .packed-switch 0x1
        :pswitch_2fb
        :pswitch_335
    .end packed-switch
.end method

.method protected onMeasure(II)V
    .registers 7

    .prologue
    .line 794
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 798
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 799
    const/high16 v2, 0x40000000    # 2.0f

    if-ne v0, v2, :cond_16

    .line 801
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    int-to-float v0, v0

    .line 811
    :cond_11
    :goto_11
    float-to-int v0, v0

    .line 813
    invoke-virtual {p0, v1, v0}, Lfr/testudo/spacecorsair/activity/pagerindicator/TitlePageIndicator;->setMeasuredDimension(II)V

    .line 814
    return-void

    .line 804
    :cond_16
    iget-object v0, p0, Lfr/testudo/spacecorsair/activity/pagerindicator/TitlePageIndicator;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    .line 805
    iget-object v0, p0, Lfr/testudo/spacecorsair/activity/pagerindicator/TitlePageIndicator;->mBounds:Landroid/graphics/Rect;

    iget-object v2, p0, Lfr/testudo/spacecorsair/activity/pagerindicator/TitlePageIndicator;->mPaintText:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->descent()F

    move-result v2

    iget-object v3, p0, Lfr/testudo/spacecorsair/activity/pagerindicator/TitlePageIndicator;->mPaintText:Landroid/graphics/Paint;

    invoke-virtual {v3}, Landroid/graphics/Paint;->ascent()F

    move-result v3

    sub-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, v0, Landroid/graphics/Rect;->bottom:I

    .line 806
    iget-object v0, p0, Lfr/testudo/spacecorsair/activity/pagerindicator/TitlePageIndicator;->mBounds:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    iget-object v2, p0, Lfr/testudo/spacecorsair/activity/pagerindicator/TitlePageIndicator;->mBounds:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v0, v2

    int-to-float v0, v0

    iget v2, p0, Lfr/testudo/spacecorsair/activity/pagerindicator/TitlePageIndicator;->mFooterLineHeight:F

    add-float/2addr v0, v2

    iget v2, p0, Lfr/testudo/spacecorsair/activity/pagerindicator/TitlePageIndicator;->mFooterPadding:F

    add-float/2addr v0, v2

    iget v2, p0, Lfr/testudo/spacecorsair/activity/pagerindicator/TitlePageIndicator;->mTopPadding:F

    add-float/2addr v0, v2

    .line 807
    iget-object v2, p0, Lfr/testudo/spacecorsair/activity/pagerindicator/TitlePageIndicator;->mFooterIndicatorStyle:Lfr/testudo/spacecorsair/activity/pagerindicator/TitlePageIndicator$IndicatorStyle;

    sget-object v3, Lfr/testudo/spacecorsair/activity/pagerindicator/TitlePageIndicator$IndicatorStyle;->None:Lfr/testudo/spacecorsair/activity/pagerindicator/TitlePageIndicator$IndicatorStyle;

    if-eq v2, v3, :cond_11

    .line 808
    iget v2, p0, Lfr/testudo/spacecorsair/activity/pagerindicator/TitlePageIndicator;->mFooterIndicatorHeight:F

    add-float/2addr v0, v2

    goto :goto_11
.end method

.method public onPageScrollStateChanged(I)V
    .registers 3

    .prologue
    .line 756
    iput p1, p0, Lfr/testudo/spacecorsair/activity/pagerindicator/TitlePageIndicator;->mScrollState:I

    .line 758
    iget-object v0, p0, Lfr/testudo/spacecorsair/activity/pagerindicator/TitlePageIndicator;->mListener:Landroid/support/v4/view/ViewPager$e;

    if-eqz v0, :cond_b

    .line 759
    iget-object v0, p0, Lfr/testudo/spacecorsair/activity/pagerindicator/TitlePageIndicator;->mListener:Landroid/support/v4/view/ViewPager$e;

    invoke-interface {v0, p1}, Landroid/support/v4/view/ViewPager$e;->onPageScrollStateChanged(I)V

    .line 761
    :cond_b
    return-void
.end method

.method public onPageScrolled(IFI)V
    .registers 5

    .prologue
    .line 765
    iput p1, p0, Lfr/testudo/spacecorsair/activity/pagerindicator/TitlePageIndicator;->mCurrentPage:I

    .line 766
    iput p2, p0, Lfr/testudo/spacecorsair/activity/pagerindicator/TitlePageIndicator;->mPageOffset:F

    .line 767
    invoke-virtual {p0}, Lfr/testudo/spacecorsair/activity/pagerindicator/TitlePageIndicator;->invalidate()V

    .line 769
    iget-object v0, p0, Lfr/testudo/spacecorsair/activity/pagerindicator/TitlePageIndicator;->mListener:Landroid/support/v4/view/ViewPager$e;

    if-eqz v0, :cond_10

    .line 770
    iget-object v0, p0, Lfr/testudo/spacecorsair/activity/pagerindicator/TitlePageIndicator;->mListener:Landroid/support/v4/view/ViewPager$e;

    invoke-interface {v0, p1, p2, p3}, Landroid/support/v4/view/ViewPager$e;->onPageScrolled(IFI)V

    .line 772
    :cond_10
    return-void
.end method

.method public onPageSelected(I)V
    .registers 3

    .prologue
    .line 776
    iget v0, p0, Lfr/testudo/spacecorsair/activity/pagerindicator/TitlePageIndicator;->mScrollState:I

    if-nez v0, :cond_9

    .line 777
    iput p1, p0, Lfr/testudo/spacecorsair/activity/pagerindicator/TitlePageIndicator;->mCurrentPage:I

    .line 778
    invoke-virtual {p0}, Lfr/testudo/spacecorsair/activity/pagerindicator/TitlePageIndicator;->invalidate()V

    .line 781
    :cond_9
    iget-object v0, p0, Lfr/testudo/spacecorsair/activity/pagerindicator/TitlePageIndicator;->mListener:Landroid/support/v4/view/ViewPager$e;

    if-eqz v0, :cond_12

    .line 782
    iget-object v0, p0, Lfr/testudo/spacecorsair/activity/pagerindicator/TitlePageIndicator;->mListener:Landroid/support/v4/view/ViewPager$e;

    invoke-interface {v0, p1}, Landroid/support/v4/view/ViewPager$e;->onPageSelected(I)V

    .line 784
    :cond_12
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .registers 3

    .prologue
    .line 818
    check-cast p1, Lfr/testudo/spacecorsair/activity/pagerindicator/TitlePageIndicator$SavedState;

    .line 819
    invoke-virtual {p1}, Lfr/testudo/spacecorsair/activity/pagerindicator/TitlePageIndicator$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 820
    iget v0, p1, Lfr/testudo/spacecorsair/activity/pagerindicator/TitlePageIndicator$SavedState;->currentPage:I

    iput v0, p0, Lfr/testudo/spacecorsair/activity/pagerindicator/TitlePageIndicator;->mCurrentPage:I

    .line 821
    invoke-virtual {p0}, Lfr/testudo/spacecorsair/activity/pagerindicator/TitlePageIndicator;->requestLayout()V

    .line 822
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .registers 3

    .prologue
    .line 826
    invoke-super {p0}, Landroid/view/View;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 827
    new-instance v1, Lfr/testudo/spacecorsair/activity/pagerindicator/TitlePageIndicator$SavedState;

    invoke-direct {v1, v0}, Lfr/testudo/spacecorsair/activity/pagerindicator/TitlePageIndicator$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 828
    iget v0, p0, Lfr/testudo/spacecorsair/activity/pagerindicator/TitlePageIndicator;->mCurrentPage:I

    iput v0, v1, Lfr/testudo/spacecorsair/activity/pagerindicator/TitlePageIndicator$SavedState;->currentPage:I

    .line 829
    return-object v1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 10

    .prologue
    const/4 v7, 0x3

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 546
    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 637
    :cond_9
    :goto_9
    return v1

    .line 549
    :cond_a
    iget-object v2, p0, Lfr/testudo/spacecorsair/activity/pagerindicator/TitlePageIndicator;->mViewPager:Landroid/support/v4/view/ViewPager;

    if-eqz v2, :cond_1a

    iget-object v2, p0, Lfr/testudo/spacecorsair/activity/pagerindicator/TitlePageIndicator;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v2}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/o;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/view/o;->getCount()I

    move-result v2

    if-nez v2, :cond_1c

    :cond_1a
    move v1, v0

    .line 550
    goto :goto_9

    .line 553
    :cond_1c
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    and-int/lit16 v2, v2, 0xff

    .line 554
    packed-switch v2, :pswitch_data_112

    :pswitch_25
    goto :goto_9

    .line 556
    :pswitch_26
    invoke-static {p1, v0}, Landroid/support/v4/view/m;->b(Landroid/view/MotionEvent;I)I

    move-result v0

    iput v0, p0, Lfr/testudo/spacecorsair/activity/pagerindicator/TitlePageIndicator;->mActivePointerId:I

    .line 557
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lfr/testudo/spacecorsair/activity/pagerindicator/TitlePageIndicator;->mLastMotionX:F

    goto :goto_9

    .line 561
    :pswitch_33
    iget v0, p0, Lfr/testudo/spacecorsair/activity/pagerindicator/TitlePageIndicator;->mActivePointerId:I

    invoke-static {p1, v0}, Landroid/support/v4/view/m;->a(Landroid/view/MotionEvent;I)I

    move-result v0

    .line 562
    invoke-static {p1, v0}, Landroid/support/v4/view/m;->c(Landroid/view/MotionEvent;I)F

    move-result v0

    .line 563
    iget v2, p0, Lfr/testudo/spacecorsair/activity/pagerindicator/TitlePageIndicator;->mLastMotionX:F

    sub-float v2, v0, v2

    .line 565
    iget-boolean v3, p0, Lfr/testudo/spacecorsair/activity/pagerindicator/TitlePageIndicator;->mIsDragging:Z

    if-nez v3, :cond_52

    .line 566
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v3

    iget v4, p0, Lfr/testudo/spacecorsair/activity/pagerindicator/TitlePageIndicator;->mTouchSlop:I

    int-to-float v4, v4

    cmpl-float v3, v3, v4

    if-lez v3, :cond_52

    .line 567
    iput-boolean v1, p0, Lfr/testudo/spacecorsair/activity/pagerindicator/TitlePageIndicator;->mIsDragging:Z

    .line 571
    :cond_52
    iget-boolean v3, p0, Lfr/testudo/spacecorsair/activity/pagerindicator/TitlePageIndicator;->mIsDragging:Z

    if-eqz v3, :cond_9

    .line 572
    iput v0, p0, Lfr/testudo/spacecorsair/activity/pagerindicator/TitlePageIndicator;->mLastMotionX:F

    .line 573
    iget-object v0, p0, Lfr/testudo/spacecorsair/activity/pagerindicator/TitlePageIndicator;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->f()Z

    move-result v0

    if-nez v0, :cond_68

    iget-object v0, p0, Lfr/testudo/spacecorsair/activity/pagerindicator/TitlePageIndicator;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->d()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 574
    :cond_68
    iget-object v0, p0, Lfr/testudo/spacecorsair/activity/pagerindicator/TitlePageIndicator;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, v2}, Landroid/support/v4/view/ViewPager;->b(F)V

    goto :goto_9

    .line 583
    :pswitch_6e
    iget-boolean v3, p0, Lfr/testudo/spacecorsair/activity/pagerindicator/TitlePageIndicator;->mIsDragging:Z

    if-nez v3, :cond_c8

    .line 584
    iget-object v3, p0, Lfr/testudo/spacecorsair/activity/pagerindicator/TitlePageIndicator;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v3}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/o;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v4/view/o;->getCount()I

    move-result v3

    .line 585
    invoke-virtual {p0}, Lfr/testudo/spacecorsair/activity/pagerindicator/TitlePageIndicator;->getWidth()I

    move-result v4

    .line 586
    int-to-float v5, v4

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v5, v6

    .line 587
    int-to-float v4, v4

    const/high16 v6, 0x40c00000    # 6.0f

    div-float/2addr v4, v6

    .line 588
    sub-float v6, v5, v4

    .line 589
    add-float/2addr v4, v5

    .line 590
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    .line 592
    cmpg-float v6, v5, v6

    if-gez v6, :cond_a4

    .line 593
    iget v3, p0, Lfr/testudo/spacecorsair/activity/pagerindicator/TitlePageIndicator;->mCurrentPage:I

    if-lez v3, :cond_c8

    .line 594
    if-eq v2, v7, :cond_9

    .line 595
    iget-object v0, p0, Lfr/testudo/spacecorsair/activity/pagerindicator/TitlePageIndicator;->mViewPager:Landroid/support/v4/view/ViewPager;

    iget v2, p0, Lfr/testudo/spacecorsair/activity/pagerindicator/TitlePageIndicator;->mCurrentPage:I

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v2}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    goto/16 :goto_9

    .line 599
    :cond_a4
    cmpl-float v4, v5, v4

    if-lez v4, :cond_bb

    .line 600
    iget v4, p0, Lfr/testudo/spacecorsair/activity/pagerindicator/TitlePageIndicator;->mCurrentPage:I

    add-int/lit8 v3, v3, -0x1

    if-ge v4, v3, :cond_c8

    .line 601
    if-eq v2, v7, :cond_9

    .line 602
    iget-object v0, p0, Lfr/testudo/spacecorsair/activity/pagerindicator/TitlePageIndicator;->mViewPager:Landroid/support/v4/view/ViewPager;

    iget v2, p0, Lfr/testudo/spacecorsair/activity/pagerindicator/TitlePageIndicator;->mCurrentPage:I

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v0, v2}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    goto/16 :goto_9

    .line 608
    :cond_bb
    iget-object v3, p0, Lfr/testudo/spacecorsair/activity/pagerindicator/TitlePageIndicator;->mCenterItemClickListener:Lfr/testudo/spacecorsair/activity/pagerindicator/TitlePageIndicator$OnCenterItemClickListener;

    if-eqz v3, :cond_c8

    if-eq v2, v7, :cond_c8

    .line 609
    iget-object v2, p0, Lfr/testudo/spacecorsair/activity/pagerindicator/TitlePageIndicator;->mCenterItemClickListener:Lfr/testudo/spacecorsair/activity/pagerindicator/TitlePageIndicator$OnCenterItemClickListener;

    iget v3, p0, Lfr/testudo/spacecorsair/activity/pagerindicator/TitlePageIndicator;->mCurrentPage:I

    invoke-interface {v2, v3}, Lfr/testudo/spacecorsair/activity/pagerindicator/TitlePageIndicator$OnCenterItemClickListener;->onCenterItemClick(I)V

    .line 614
    :cond_c8
    iput-boolean v0, p0, Lfr/testudo/spacecorsair/activity/pagerindicator/TitlePageIndicator;->mIsDragging:Z

    .line 615
    const/4 v0, -0x1

    iput v0, p0, Lfr/testudo/spacecorsair/activity/pagerindicator/TitlePageIndicator;->mActivePointerId:I

    .line 616
    iget-object v0, p0, Lfr/testudo/spacecorsair/activity/pagerindicator/TitlePageIndicator;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->f()Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lfr/testudo/spacecorsair/activity/pagerindicator/TitlePageIndicator;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->e()V

    goto/16 :goto_9

    .line 620
    :pswitch_dc
    invoke-static {p1}, Landroid/support/v4/view/m;->b(Landroid/view/MotionEvent;)I

    move-result v0

    .line 621
    invoke-static {p1, v0}, Landroid/support/v4/view/m;->c(Landroid/view/MotionEvent;I)F

    move-result v2

    iput v2, p0, Lfr/testudo/spacecorsair/activity/pagerindicator/TitlePageIndicator;->mLastMotionX:F

    .line 622
    invoke-static {p1, v0}, Landroid/support/v4/view/m;->b(Landroid/view/MotionEvent;I)I

    move-result v0

    iput v0, p0, Lfr/testudo/spacecorsair/activity/pagerindicator/TitlePageIndicator;->mActivePointerId:I

    goto/16 :goto_9

    .line 627
    :pswitch_ee
    invoke-static {p1}, Landroid/support/v4/view/m;->b(Landroid/view/MotionEvent;)I

    move-result v2

    .line 628
    invoke-static {p1, v2}, Landroid/support/v4/view/m;->b(Landroid/view/MotionEvent;I)I

    move-result v3

    .line 629
    iget v4, p0, Lfr/testudo/spacecorsair/activity/pagerindicator/TitlePageIndicator;->mActivePointerId:I

    if-ne v3, v4, :cond_103

    .line 630
    if-nez v2, :cond_fd

    move v0, v1

    .line 631
    :cond_fd
    invoke-static {p1, v0}, Landroid/support/v4/view/m;->b(Landroid/view/MotionEvent;I)I

    move-result v0

    iput v0, p0, Lfr/testudo/spacecorsair/activity/pagerindicator/TitlePageIndicator;->mActivePointerId:I

    .line 633
    :cond_103
    iget v0, p0, Lfr/testudo/spacecorsair/activity/pagerindicator/TitlePageIndicator;->mActivePointerId:I

    invoke-static {p1, v0}, Landroid/support/v4/view/m;->a(Landroid/view/MotionEvent;I)I

    move-result v0

    invoke-static {p1, v0}, Landroid/support/v4/view/m;->c(Landroid/view/MotionEvent;I)F

    move-result v0

    iput v0, p0, Lfr/testudo/spacecorsair/activity/pagerindicator/TitlePageIndicator;->mLastMotionX:F

    goto/16 :goto_9

    .line 554
    nop

    :pswitch_data_112
    .packed-switch 0x0
        :pswitch_26
        :pswitch_6e
        :pswitch_33
        :pswitch_6e
        :pswitch_25
        :pswitch_dc
        :pswitch_ee
    .end packed-switch
.end method

.method public setClipPadding(F)V
    .registers 2

    .prologue
    .line 336
    iput p1, p0, Lfr/testudo/spacecorsair/activity/pagerindicator/TitlePageIndicator;->mClipPadding:F

    .line 337
    invoke-virtual {p0}, Lfr/testudo/spacecorsair/activity/pagerindicator/TitlePageIndicator;->invalidate()V

    .line 338
    return-void
.end method

.method public setCurrentItem(I)V
    .registers 4

    .prologue
    .line 746
    iget-object v0, p0, Lfr/testudo/spacecorsair/activity/pagerindicator/TitlePageIndicator;->mViewPager:Landroid/support/v4/view/ViewPager;

    if-nez v0, :cond_c

    .line 747
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "ViewPager has not been bound."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 749
    :cond_c
    iget-object v0, p0, Lfr/testudo/spacecorsair/activity/pagerindicator/TitlePageIndicator;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, p1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 750
    iput p1, p0, Lfr/testudo/spacecorsair/activity/pagerindicator/TitlePageIndicator;->mCurrentPage:I

    .line 751
    invoke-virtual {p0}, Lfr/testudo/spacecorsair/activity/pagerindicator/TitlePageIndicator;->invalidate()V

    .line 752
    return-void
.end method

.method public setFooterColor(I)V
    .registers 3

    .prologue
    .line 225
    iget-object v0, p0, Lfr/testudo/spacecorsair/activity/pagerindicator/TitlePageIndicator;->mPaintFooterLine:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 226
    iget-object v0, p0, Lfr/testudo/spacecorsair/activity/pagerindicator/TitlePageIndicator;->mPaintFooterIndicator:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 227
    invoke-virtual {p0}, Lfr/testudo/spacecorsair/activity/pagerindicator/TitlePageIndicator;->invalidate()V

    .line 228
    return-void
.end method

.method public setFooterIndicatorHeight(F)V
    .registers 2

    .prologue
    .line 245
    iput p1, p0, Lfr/testudo/spacecorsair/activity/pagerindicator/TitlePageIndicator;->mFooterIndicatorHeight:F

    .line 246
    invoke-virtual {p0}, Lfr/testudo/spacecorsair/activity/pagerindicator/TitlePageIndicator;->invalidate()V

    .line 247
    return-void
.end method

.method public setFooterIndicatorPadding(F)V
    .registers 2

    .prologue
    .line 254
    iput p1, p0, Lfr/testudo/spacecorsair/activity/pagerindicator/TitlePageIndicator;->mFooterPadding:F

    .line 255
    invoke-virtual {p0}, Lfr/testudo/spacecorsair/activity/pagerindicator/TitlePageIndicator;->invalidate()V

    .line 256
    return-void
.end method

.method public setFooterIndicatorStyle(Lfr/testudo/spacecorsair/activity/pagerindicator/TitlePageIndicator$IndicatorStyle;)V
    .registers 2

    .prologue
    .line 263
    iput-object p1, p0, Lfr/testudo/spacecorsair/activity/pagerindicator/TitlePageIndicator;->mFooterIndicatorStyle:Lfr/testudo/spacecorsair/activity/pagerindicator/TitlePageIndicator$IndicatorStyle;

    .line 264
    invoke-virtual {p0}, Lfr/testudo/spacecorsair/activity/pagerindicator/TitlePageIndicator;->invalidate()V

    .line 265
    return-void
.end method

.method public setFooterLineHeight(F)V
    .registers 4

    .prologue
    .line 235
    iput p1, p0, Lfr/testudo/spacecorsair/activity/pagerindicator/TitlePageIndicator;->mFooterLineHeight:F

    .line 236
    iget-object v0, p0, Lfr/testudo/spacecorsair/activity/pagerindicator/TitlePageIndicator;->mPaintFooterLine:Landroid/graphics/Paint;

    iget v1, p0, Lfr/testudo/spacecorsair/activity/pagerindicator/TitlePageIndicator;->mFooterLineHeight:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 237
    invoke-virtual {p0}, Lfr/testudo/spacecorsair/activity/pagerindicator/TitlePageIndicator;->invalidate()V

    .line 238
    return-void
.end method

.method public setLinePosition(Lfr/testudo/spacecorsair/activity/pagerindicator/TitlePageIndicator$LinePosition;)V
    .registers 2

    .prologue
    .line 272
    iput-object p1, p0, Lfr/testudo/spacecorsair/activity/pagerindicator/TitlePageIndicator;->mLinePosition:Lfr/testudo/spacecorsair/activity/pagerindicator/TitlePageIndicator$LinePosition;

    .line 273
    invoke-virtual {p0}, Lfr/testudo/spacecorsair/activity/pagerindicator/TitlePageIndicator;->invalidate()V

    .line 274
    return-void
.end method

.method public setOnCenterItemClickListener(Lfr/testudo/spacecorsair/activity/pagerindicator/TitlePageIndicator$OnCenterItemClickListener;)V
    .registers 2

    .prologue
    .line 741
    iput-object p1, p0, Lfr/testudo/spacecorsair/activity/pagerindicator/TitlePageIndicator;->mCenterItemClickListener:Lfr/testudo/spacecorsair/activity/pagerindicator/TitlePageIndicator$OnCenterItemClickListener;

    .line 742
    return-void
.end method

.method public setOnPageChangeListener(Landroid/support/v4/view/ViewPager$e;)V
    .registers 2

    .prologue
    .line 788
    iput-object p1, p0, Lfr/testudo/spacecorsair/activity/pagerindicator/TitlePageIndicator;->mListener:Landroid/support/v4/view/ViewPager$e;

    .line 789
    return-void
.end method

.method public setSelectedBold(Z)V
    .registers 2

    .prologue
    .line 290
    iput-boolean p1, p0, Lfr/testudo/spacecorsair/activity/pagerindicator/TitlePageIndicator;->mBoldText:Z

    .line 291
    invoke-virtual {p0}, Lfr/testudo/spacecorsair/activity/pagerindicator/TitlePageIndicator;->invalidate()V

    .line 292
    return-void
.end method

.method public setSelectedColor(I)V
    .registers 2

    .prologue
    .line 281
    iput p1, p0, Lfr/testudo/spacecorsair/activity/pagerindicator/TitlePageIndicator;->mColorSelected:I

    .line 282
    invoke-virtual {p0}, Lfr/testudo/spacecorsair/activity/pagerindicator/TitlePageIndicator;->invalidate()V

    .line 283
    return-void
.end method

.method public setTextColor(I)V
    .registers 3

    .prologue
    .line 299
    iget-object v0, p0, Lfr/testudo/spacecorsair/activity/pagerindicator/TitlePageIndicator;->mPaintText:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 300
    iput p1, p0, Lfr/testudo/spacecorsair/activity/pagerindicator/TitlePageIndicator;->mColorText:I

    .line 301
    invoke-virtual {p0}, Lfr/testudo/spacecorsair/activity/pagerindicator/TitlePageIndicator;->invalidate()V

    .line 302
    return-void
.end method

.method public setTextSize(F)V
    .registers 3

    .prologue
    .line 309
    iget-object v0, p0, Lfr/testudo/spacecorsair/activity/pagerindicator/TitlePageIndicator;->mPaintText:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 310
    invoke-virtual {p0}, Lfr/testudo/spacecorsair/activity/pagerindicator/TitlePageIndicator;->invalidate()V

    .line 311
    return-void
.end method

.method public setTitlePadding(F)V
    .registers 2

    .prologue
    .line 318
    iput p1, p0, Lfr/testudo/spacecorsair/activity/pagerindicator/TitlePageIndicator;->mTitlePadding:F

    .line 319
    invoke-virtual {p0}, Lfr/testudo/spacecorsair/activity/pagerindicator/TitlePageIndicator;->invalidate()V

    .line 320
    return-void
.end method

.method public setTopPadding(F)V
    .registers 2

    .prologue
    .line 327
    iput p1, p0, Lfr/testudo/spacecorsair/activity/pagerindicator/TitlePageIndicator;->mTopPadding:F

    .line 328
    invoke-virtual {p0}, Lfr/testudo/spacecorsair/activity/pagerindicator/TitlePageIndicator;->invalidate()V

    .line 329
    return-void
.end method

.method public setTypeface(Landroid/graphics/Typeface;)V
    .registers 3

    .prologue
    .line 341
    iget-object v0, p0, Lfr/testudo/spacecorsair/activity/pagerindicator/TitlePageIndicator;->mPaintText:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 342
    invoke-virtual {p0}, Lfr/testudo/spacecorsair/activity/pagerindicator/TitlePageIndicator;->invalidate()V

    .line 343
    return-void
.end method

.method public setViewPager(Landroid/support/v4/view/ViewPager;)V
    .registers 4

    .prologue
    .line 710
    iget-object v0, p0, Lfr/testudo/spacecorsair/activity/pagerindicator/TitlePageIndicator;->mViewPager:Landroid/support/v4/view/ViewPager;

    if-ne v0, p1, :cond_5

    .line 722
    :goto_4
    return-void

    .line 713
    :cond_5
    iget-object v0, p0, Lfr/testudo/spacecorsair/activity/pagerindicator/TitlePageIndicator;->mViewPager:Landroid/support/v4/view/ViewPager;

    if-eqz v0, :cond_f

    .line 714
    iget-object v0, p0, Lfr/testudo/spacecorsair/activity/pagerindicator/TitlePageIndicator;->mViewPager:Landroid/support/v4/view/ViewPager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$e;)V

    .line 716
    :cond_f
    invoke-virtual {p1}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/o;

    move-result-object v0

    if-nez v0, :cond_1d

    .line 717
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "ViewPager does not have adapter instance."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 719
    :cond_1d
    iput-object p1, p0, Lfr/testudo/spacecorsair/activity/pagerindicator/TitlePageIndicator;->mViewPager:Landroid/support/v4/view/ViewPager;

    .line 720
    iget-object v0, p0, Lfr/testudo/spacecorsair/activity/pagerindicator/TitlePageIndicator;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, p0}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$e;)V

    .line 721
    invoke-virtual {p0}, Lfr/testudo/spacecorsair/activity/pagerindicator/TitlePageIndicator;->invalidate()V

    goto :goto_4
.end method

.method public setViewPager(Landroid/support/v4/view/ViewPager;I)V
    .registers 3

    .prologue
    .line 726
    invoke-virtual {p0, p1}, Lfr/testudo/spacecorsair/activity/pagerindicator/TitlePageIndicator;->setViewPager(Landroid/support/v4/view/ViewPager;)V

    .line 727
    invoke-virtual {p0, p2}, Lfr/testudo/spacecorsair/activity/pagerindicator/TitlePageIndicator;->setCurrentItem(I)V

    .line 728
    return-void
.end method
