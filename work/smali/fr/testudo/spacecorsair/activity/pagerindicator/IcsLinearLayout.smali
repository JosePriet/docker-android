.class Lfr/testudo/spacecorsair/activity/pagerindicator/IcsLinearLayout;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# static fields
.field private static final LL:[I

.field private static final LL_DIVIDER:I = 0x0

.field private static final LL_DIVIDER_PADDING:I = 0x2

.field private static final LL_SHOW_DIVIDER:I = 0x1


# instance fields
.field private mDivider:Landroid/graphics/drawable/Drawable;

.field private mDividerHeight:I

.field private mDividerPadding:I

.field private mDividerWidth:I

.field private mShowDividers:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 19
    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_a

    sput-object v0, Lfr/testudo/spacecorsair/activity/pagerindicator/IcsLinearLayout;->LL:[I

    return-void

    nop

    :array_a
    .array-data 4
        0x1010129
        0x1010329
        0x101032a
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .registers 6

    .prologue
    const/4 v2, 0x0

    .line 36
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 38
    const/4 v0, 0x0

    sget-object v1, Lfr/testudo/spacecorsair/activity/pagerindicator/IcsLinearLayout;->LL:[I

    invoke-virtual {p1, v0, v1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 39
    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p0, v1}, Lfr/testudo/spacecorsair/activity/pagerindicator/IcsLinearLayout;->setDividerDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 40
    const/4 v1, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lfr/testudo/spacecorsair/activity/pagerindicator/IcsLinearLayout;->mDividerPadding:I

    .line 41
    const/4 v1, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v1

    iput v1, p0, Lfr/testudo/spacecorsair/activity/pagerindicator/IcsLinearLayout;->mShowDividers:I

    .line 42
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 43
    return-void
.end method

.method private drawDividersHorizontal(Landroid/graphics/Canvas;)V
    .registers 7

    .prologue
    .line 129
    invoke-virtual {p0}, Lfr/testudo/spacecorsair/activity/pagerindicator/IcsLinearLayout;->getChildCount()I

    move-result v2

    .line 130
    const/4 v0, 0x0

    move v1, v0

    :goto_6
    if-ge v1, v2, :cond_31

    .line 131
    invoke-virtual {p0, v1}, Lfr/testudo/spacecorsair/activity/pagerindicator/IcsLinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 133
    if-eqz v3, :cond_2d

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v4, 0x8

    if-eq v0, v4, :cond_2d

    .line 134
    invoke-direct {p0, v1}, Lfr/testudo/spacecorsair/activity/pagerindicator/IcsLinearLayout;->hasDividerBeforeChildAt(I)Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 135
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 136
    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v3

    iget v0, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    sub-int v0, v3, v0

    .line 137
    invoke-direct {p0, p1, v0}, Lfr/testudo/spacecorsair/activity/pagerindicator/IcsLinearLayout;->drawVerticalDivider(Landroid/graphics/Canvas;I)V

    .line 130
    :cond_2d
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_6

    .line 142
    :cond_31
    invoke-direct {p0, v2}, Lfr/testudo/spacecorsair/activity/pagerindicator/IcsLinearLayout;->hasDividerBeforeChildAt(I)Z

    move-result v0

    if-eqz v0, :cond_4e

    .line 143
    add-int/lit8 v0, v2, -0x1

    invoke-virtual {p0, v0}, Lfr/testudo/spacecorsair/activity/pagerindicator/IcsLinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 145
    if-nez v0, :cond_4f

    .line 146
    invoke-virtual {p0}, Lfr/testudo/spacecorsair/activity/pagerindicator/IcsLinearLayout;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lfr/testudo/spacecorsair/activity/pagerindicator/IcsLinearLayout;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    iget v1, p0, Lfr/testudo/spacecorsair/activity/pagerindicator/IcsLinearLayout;->mDividerWidth:I

    sub-int/2addr v0, v1

    .line 151
    :goto_4b
    invoke-direct {p0, p1, v0}, Lfr/testudo/spacecorsair/activity/pagerindicator/IcsLinearLayout;->drawVerticalDivider(Landroid/graphics/Canvas;I)V

    .line 153
    :cond_4e
    return-void

    .line 149
    :cond_4f
    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v0

    goto :goto_4b
.end method

.method private drawDividersVertical(Landroid/graphics/Canvas;)V
    .registers 7

    .prologue
    .line 102
    invoke-virtual {p0}, Lfr/testudo/spacecorsair/activity/pagerindicator/IcsLinearLayout;->getChildCount()I

    move-result v2

    .line 103
    const/4 v0, 0x0

    move v1, v0

    :goto_6
    if-ge v1, v2, :cond_31

    .line 104
    invoke-virtual {p0, v1}, Lfr/testudo/spacecorsair/activity/pagerindicator/IcsLinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 106
    if-eqz v3, :cond_2d

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v4, 0x8

    if-eq v0, v4, :cond_2d

    .line 107
    invoke-direct {p0, v1}, Lfr/testudo/spacecorsair/activity/pagerindicator/IcsLinearLayout;->hasDividerBeforeChildAt(I)Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 108
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 109
    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v3

    iget v0, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    sub-int v0, v3, v0

    .line 110
    invoke-direct {p0, p1, v0}, Lfr/testudo/spacecorsair/activity/pagerindicator/IcsLinearLayout;->drawHorizontalDivider(Landroid/graphics/Canvas;I)V

    .line 103
    :cond_2d
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_6

    .line 115
    :cond_31
    invoke-direct {p0, v2}, Lfr/testudo/spacecorsair/activity/pagerindicator/IcsLinearLayout;->hasDividerBeforeChildAt(I)Z

    move-result v0

    if-eqz v0, :cond_4e

    .line 116
    add-int/lit8 v0, v2, -0x1

    invoke-virtual {p0, v0}, Lfr/testudo/spacecorsair/activity/pagerindicator/IcsLinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 118
    if-nez v0, :cond_4f

    .line 119
    invoke-virtual {p0}, Lfr/testudo/spacecorsair/activity/pagerindicator/IcsLinearLayout;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Lfr/testudo/spacecorsair/activity/pagerindicator/IcsLinearLayout;->getPaddingBottom()I

    move-result v1

    sub-int/2addr v0, v1

    iget v1, p0, Lfr/testudo/spacecorsair/activity/pagerindicator/IcsLinearLayout;->mDividerHeight:I

    sub-int/2addr v0, v1

    .line 124
    :goto_4b
    invoke-direct {p0, p1, v0}, Lfr/testudo/spacecorsair/activity/pagerindicator/IcsLinearLayout;->drawHorizontalDivider(Landroid/graphics/Canvas;I)V

    .line 126
    :cond_4e
    return-void

    .line 122
    :cond_4f
    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v0

    goto :goto_4b
.end method

.method private drawHorizontalDivider(Landroid/graphics/Canvas;I)V
    .registers 7

    .prologue
    .line 156
    iget-object v0, p0, Lfr/testudo/spacecorsair/activity/pagerindicator/IcsLinearLayout;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lfr/testudo/spacecorsair/activity/pagerindicator/IcsLinearLayout;->getPaddingLeft()I

    move-result v1

    iget v2, p0, Lfr/testudo/spacecorsair/activity/pagerindicator/IcsLinearLayout;->mDividerPadding:I

    add-int/2addr v1, v2

    invoke-virtual {p0}, Lfr/testudo/spacecorsair/activity/pagerindicator/IcsLinearLayout;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Lfr/testudo/spacecorsair/activity/pagerindicator/IcsLinearLayout;->getPaddingRight()I

    move-result v3

    sub-int/2addr v2, v3

    iget v3, p0, Lfr/testudo/spacecorsair/activity/pagerindicator/IcsLinearLayout;->mDividerPadding:I

    sub-int/2addr v2, v3

    iget v3, p0, Lfr/testudo/spacecorsair/activity/pagerindicator/IcsLinearLayout;->mDividerHeight:I

    add-int/2addr v3, p2

    invoke-virtual {v0, v1, p2, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 158
    iget-object v0, p0, Lfr/testudo/spacecorsair/activity/pagerindicator/IcsLinearLayout;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 159
    return-void
.end method

.method private drawVerticalDivider(Landroid/graphics/Canvas;I)V
    .registers 8

    .prologue
    .line 162
    iget-object v0, p0, Lfr/testudo/spacecorsair/activity/pagerindicator/IcsLinearLayout;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lfr/testudo/spacecorsair/activity/pagerindicator/IcsLinearLayout;->getPaddingTop()I

    move-result v1

    iget v2, p0, Lfr/testudo/spacecorsair/activity/pagerindicator/IcsLinearLayout;->mDividerPadding:I

    add-int/2addr v1, v2

    iget v2, p0, Lfr/testudo/spacecorsair/activity/pagerindicator/IcsLinearLayout;->mDividerWidth:I

    add-int/2addr v2, p2

    invoke-virtual {p0}, Lfr/testudo/spacecorsair/activity/pagerindicator/IcsLinearLayout;->getHeight()I

    move-result v3

    invoke-virtual {p0}, Lfr/testudo/spacecorsair/activity/pagerindicator/IcsLinearLayout;->getPaddingBottom()I

    move-result v4

    sub-int/2addr v3, v4

    iget v4, p0, Lfr/testudo/spacecorsair/activity/pagerindicator/IcsLinearLayout;->mDividerPadding:I

    sub-int/2addr v3, v4

    invoke-virtual {v0, p2, v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 164
    iget-object v0, p0, Lfr/testudo/spacecorsair/activity/pagerindicator/IcsLinearLayout;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 165
    return-void
.end method

.method private hasDividerBeforeChildAt(I)Z
    .registers 6

    .prologue
    const/4 v0, 0x0

    .line 168
    if-eqz p1, :cond_9

    invoke-virtual {p0}, Lfr/testudo/spacecorsair/activity/pagerindicator/IcsLinearLayout;->getChildCount()I

    move-result v1

    if-ne p1, v1, :cond_a

    .line 181
    :cond_9
    :goto_9
    return v0

    .line 171
    :cond_a
    iget v1, p0, Lfr/testudo/spacecorsair/activity/pagerindicator/IcsLinearLayout;->mShowDividers:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_9

    .line 173
    add-int/lit8 v1, p1, -0x1

    :goto_12
    if-ltz v1, :cond_9

    .line 174
    invoke-virtual {p0, v1}, Lfr/testudo/spacecorsair/activity/pagerindicator/IcsLinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    const/16 v3, 0x8

    if-eq v2, v3, :cond_22

    .line 175
    const/4 v0, 0x1

    .line 176
    goto :goto_9

    .line 173
    :cond_22
    add-int/lit8 v1, v1, -0x1

    goto :goto_12
.end method


# virtual methods
.method protected measureChildWithMargins(Landroid/view/View;IIII)V
    .registers 12

    .prologue
    const/4 v5, 0x1

    .line 63
    invoke-virtual {p0, p1}, Lfr/testudo/spacecorsair/activity/pagerindicator/IcsLinearLayout;->indexOfChild(Landroid/view/View;)I

    move-result v1

    .line 64
    invoke-virtual {p0}, Lfr/testudo/spacecorsair/activity/pagerindicator/IcsLinearLayout;->getOrientation()I

    move-result v2

    .line 65
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 66
    invoke-direct {p0, v1}, Lfr/testudo/spacecorsair/activity/pagerindicator/IcsLinearLayout;->hasDividerBeforeChildAt(I)Z

    move-result v3

    if-eqz v3, :cond_1b

    .line 67
    if-ne v2, v5, :cond_33

    .line 69
    iget v3, p0, Lfr/testudo/spacecorsair/activity/pagerindicator/IcsLinearLayout;->mDividerHeight:I

    iput v3, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 76
    :cond_1b
    :goto_1b
    invoke-virtual {p0}, Lfr/testudo/spacecorsair/activity/pagerindicator/IcsLinearLayout;->getChildCount()I

    move-result v3

    .line 77
    add-int/lit8 v4, v3, -0x1

    if-ne v1, v4, :cond_2f

    .line 78
    invoke-direct {p0, v3}, Lfr/testudo/spacecorsair/activity/pagerindicator/IcsLinearLayout;->hasDividerBeforeChildAt(I)Z

    move-result v1

    if-eqz v1, :cond_2f

    .line 79
    if-ne v2, v5, :cond_38

    .line 80
    iget v1, p0, Lfr/testudo/spacecorsair/activity/pagerindicator/IcsLinearLayout;->mDividerHeight:I

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 86
    :cond_2f
    :goto_2f
    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 87
    return-void

    .line 72
    :cond_33
    iget v3, p0, Lfr/testudo/spacecorsair/activity/pagerindicator/IcsLinearLayout;->mDividerWidth:I

    iput v3, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    goto :goto_1b

    .line 82
    :cond_38
    iget v1, p0, Lfr/testudo/spacecorsair/activity/pagerindicator/IcsLinearLayout;->mDividerWidth:I

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    goto :goto_2f
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 4

    .prologue
    .line 91
    iget-object v0, p0, Lfr/testudo/spacecorsair/activity/pagerindicator/IcsLinearLayout;->mDivider:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_e

    .line 92
    invoke-virtual {p0}, Lfr/testudo/spacecorsair/activity/pagerindicator/IcsLinearLayout;->getOrientation()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_12

    .line 93
    invoke-direct {p0, p1}, Lfr/testudo/spacecorsair/activity/pagerindicator/IcsLinearLayout;->drawDividersVertical(Landroid/graphics/Canvas;)V

    .line 98
    :cond_e
    :goto_e
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onDraw(Landroid/graphics/Canvas;)V

    .line 99
    return-void

    .line 95
    :cond_12
    invoke-direct {p0, p1}, Lfr/testudo/spacecorsair/activity/pagerindicator/IcsLinearLayout;->drawDividersHorizontal(Landroid/graphics/Canvas;)V

    goto :goto_e
.end method

.method public setDividerDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 46
    iget-object v1, p0, Lfr/testudo/spacecorsair/activity/pagerindicator/IcsLinearLayout;->mDivider:Landroid/graphics/drawable/Drawable;

    if-ne p1, v1, :cond_6

    .line 59
    :goto_5
    return-void

    .line 49
    :cond_6
    iput-object p1, p0, Lfr/testudo/spacecorsair/activity/pagerindicator/IcsLinearLayout;->mDivider:Landroid/graphics/drawable/Drawable;

    .line 50
    if-eqz p1, :cond_20

    .line 51
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    iput v1, p0, Lfr/testudo/spacecorsair/activity/pagerindicator/IcsLinearLayout;->mDividerWidth:I

    .line 52
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    iput v1, p0, Lfr/testudo/spacecorsair/activity/pagerindicator/IcsLinearLayout;->mDividerHeight:I

    .line 57
    :goto_16
    if-nez p1, :cond_19

    const/4 v0, 0x1

    :cond_19
    invoke-virtual {p0, v0}, Lfr/testudo/spacecorsair/activity/pagerindicator/IcsLinearLayout;->setWillNotDraw(Z)V

    .line 58
    invoke-virtual {p0}, Lfr/testudo/spacecorsair/activity/pagerindicator/IcsLinearLayout;->requestLayout()V

    goto :goto_5

    .line 54
    :cond_20
    iput v0, p0, Lfr/testudo/spacecorsair/activity/pagerindicator/IcsLinearLayout;->mDividerWidth:I

    .line 55
    iput v0, p0, Lfr/testudo/spacecorsair/activity/pagerindicator/IcsLinearLayout;->mDividerHeight:I

    goto :goto_16
.end method
