.class public Lfr/testudo/spacecorsair/activity/pagerindicator/IconPageIndicator;
.super Landroid/widget/HorizontalScrollView;
.source "SourceFile"

# interfaces
.implements Lfr/testudo/spacecorsair/activity/pagerindicator/PageIndicator;


# instance fields
.field private mIconSelector:Ljava/lang/Runnable;

.field private final mIconsLayout:Lfr/testudo/spacecorsair/activity/pagerindicator/IcsLinearLayout;

.field private mListener:Landroid/support/v4/view/ViewPager$e;

.field private mSelectedIndex:I

.field private mViewPager:Landroid/support/v4/view/ViewPager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .prologue
    .line 46
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lfr/testudo/spacecorsair/activity/pagerindicator/IconPageIndicator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 47
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 8

    .prologue
    .line 50
    invoke-direct {p0, p1, p2}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 51
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lfr/testudo/spacecorsair/activity/pagerindicator/IconPageIndicator;->setHorizontalScrollBarEnabled(Z)V

    .line 53
    new-instance v0, Lfr/testudo/spacecorsair/activity/pagerindicator/IcsLinearLayout;

    const v1, 0x7f010001

    invoke-direct {v0, p1, v1}, Lfr/testudo/spacecorsair/activity/pagerindicator/IcsLinearLayout;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lfr/testudo/spacecorsair/activity/pagerindicator/IconPageIndicator;->mIconsLayout:Lfr/testudo/spacecorsair/activity/pagerindicator/IcsLinearLayout;

    .line 54
    iget-object v0, p0, Lfr/testudo/spacecorsair/activity/pagerindicator/IconPageIndicator;->mIconsLayout:Lfr/testudo/spacecorsair/activity/pagerindicator/IcsLinearLayout;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x2

    const/4 v3, -0x1

    const/16 v4, 0x11

    invoke-direct {v1, v2, v3, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {p0, v0, v1}, Lfr/testudo/spacecorsair/activity/pagerindicator/IconPageIndicator;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 55
    return-void
.end method

.method static synthetic access$002(Lfr/testudo/spacecorsair/activity/pagerindicator/IconPageIndicator;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .registers 2

    .prologue
    .line 37
    iput-object p1, p0, Lfr/testudo/spacecorsair/activity/pagerindicator/IconPageIndicator;->mIconSelector:Ljava/lang/Runnable;

    return-object p1
.end method

.method private animateToIcon(I)V
    .registers 4

    .prologue
    .line 58
    iget-object v0, p0, Lfr/testudo/spacecorsair/activity/pagerindicator/IconPageIndicator;->mIconsLayout:Lfr/testudo/spacecorsair/activity/pagerindicator/IcsLinearLayout;

    invoke-virtual {v0, p1}, Lfr/testudo/spacecorsair/activity/pagerindicator/IcsLinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 59
    iget-object v1, p0, Lfr/testudo/spacecorsair/activity/pagerindicator/IconPageIndicator;->mIconSelector:Ljava/lang/Runnable;

    if-eqz v1, :cond_f

    .line 60
    iget-object v1, p0, Lfr/testudo/spacecorsair/activity/pagerindicator/IconPageIndicator;->mIconSelector:Ljava/lang/Runnable;

    invoke-virtual {p0, v1}, Lfr/testudo/spacecorsair/activity/pagerindicator/IconPageIndicator;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 62
    :cond_f
    new-instance v1, Lfr/testudo/spacecorsair/activity/pagerindicator/IconPageIndicator$1;

    invoke-direct {v1, p0, v0}, Lfr/testudo/spacecorsair/activity/pagerindicator/IconPageIndicator$1;-><init>(Lfr/testudo/spacecorsair/activity/pagerindicator/IconPageIndicator;Landroid/view/View;)V

    iput-object v1, p0, Lfr/testudo/spacecorsair/activity/pagerindicator/IconPageIndicator;->mIconSelector:Ljava/lang/Runnable;

    .line 69
    iget-object v0, p0, Lfr/testudo/spacecorsair/activity/pagerindicator/IconPageIndicator;->mIconSelector:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lfr/testudo/spacecorsair/activity/pagerindicator/IconPageIndicator;->post(Ljava/lang/Runnable;)Z

    .line 70
    return-void
.end method


# virtual methods
.method public notifyDataSetChanged()V
    .registers 8

    .prologue
    .line 129
    iget-object v0, p0, Lfr/testudo/spacecorsair/activity/pagerindicator/IconPageIndicator;->mIconsLayout:Lfr/testudo/spacecorsair/activity/pagerindicator/IcsLinearLayout;

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/activity/pagerindicator/IcsLinearLayout;->removeAllViews()V

    .line 130
    iget-object v0, p0, Lfr/testudo/spacecorsair/activity/pagerindicator/IconPageIndicator;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/o;

    move-result-object v0

    check-cast v0, Lfr/testudo/spacecorsair/activity/pagerindicator/IconPagerAdapter;

    .line 131
    invoke-interface {v0}, Lfr/testudo/spacecorsair/activity/pagerindicator/IconPagerAdapter;->getCount()I

    move-result v2

    .line 132
    const/4 v1, 0x0

    :goto_12
    if-ge v1, v2, :cond_30

    .line 133
    new-instance v3, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lfr/testudo/spacecorsair/activity/pagerindicator/IconPageIndicator;->getContext()Landroid/content/Context;

    move-result-object v4

    const/4 v5, 0x0

    const v6, 0x7f010001

    invoke-direct {v3, v4, v5, v6}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 134
    invoke-interface {v0, v1}, Lfr/testudo/spacecorsair/activity/pagerindicator/IconPagerAdapter;->getIconResId(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 135
    iget-object v4, p0, Lfr/testudo/spacecorsair/activity/pagerindicator/IconPageIndicator;->mIconsLayout:Lfr/testudo/spacecorsair/activity/pagerindicator/IcsLinearLayout;

    invoke-virtual {v4, v3}, Lfr/testudo/spacecorsair/activity/pagerindicator/IcsLinearLayout;->addView(Landroid/view/View;)V

    .line 132
    add-int/lit8 v1, v1, 0x1

    goto :goto_12

    .line 137
    :cond_30
    iget v0, p0, Lfr/testudo/spacecorsair/activity/pagerindicator/IconPageIndicator;->mSelectedIndex:I

    if-le v0, v2, :cond_38

    .line 138
    add-int/lit8 v0, v2, -0x1

    iput v0, p0, Lfr/testudo/spacecorsair/activity/pagerindicator/IconPageIndicator;->mSelectedIndex:I

    .line 140
    :cond_38
    iget v0, p0, Lfr/testudo/spacecorsair/activity/pagerindicator/IconPageIndicator;->mSelectedIndex:I

    invoke-virtual {p0, v0}, Lfr/testudo/spacecorsair/activity/pagerindicator/IconPageIndicator;->setCurrentItem(I)V

    .line 141
    invoke-virtual {p0}, Lfr/testudo/spacecorsair/activity/pagerindicator/IconPageIndicator;->requestLayout()V

    .line 142
    return-void
.end method

.method public onAttachedToWindow()V
    .registers 2

    .prologue
    .line 74
    invoke-super {p0}, Landroid/widget/HorizontalScrollView;->onAttachedToWindow()V

    .line 75
    iget-object v0, p0, Lfr/testudo/spacecorsair/activity/pagerindicator/IconPageIndicator;->mIconSelector:Ljava/lang/Runnable;

    if-eqz v0, :cond_c

    .line 77
    iget-object v0, p0, Lfr/testudo/spacecorsair/activity/pagerindicator/IconPageIndicator;->mIconSelector:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lfr/testudo/spacecorsair/activity/pagerindicator/IconPageIndicator;->post(Ljava/lang/Runnable;)Z

    .line 79
    :cond_c
    return-void
.end method

.method public onDetachedFromWindow()V
    .registers 2

    .prologue
    .line 83
    invoke-super {p0}, Landroid/widget/HorizontalScrollView;->onDetachedFromWindow()V

    .line 84
    iget-object v0, p0, Lfr/testudo/spacecorsair/activity/pagerindicator/IconPageIndicator;->mIconSelector:Ljava/lang/Runnable;

    if-eqz v0, :cond_c

    .line 85
    iget-object v0, p0, Lfr/testudo/spacecorsair/activity/pagerindicator/IconPageIndicator;->mIconSelector:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lfr/testudo/spacecorsair/activity/pagerindicator/IconPageIndicator;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 87
    :cond_c
    return-void
.end method

.method public onPageScrollStateChanged(I)V
    .registers 3

    .prologue
    .line 91
    iget-object v0, p0, Lfr/testudo/spacecorsair/activity/pagerindicator/IconPageIndicator;->mListener:Landroid/support/v4/view/ViewPager$e;

    if-eqz v0, :cond_9

    .line 92
    iget-object v0, p0, Lfr/testudo/spacecorsair/activity/pagerindicator/IconPageIndicator;->mListener:Landroid/support/v4/view/ViewPager$e;

    invoke-interface {v0, p1}, Landroid/support/v4/view/ViewPager$e;->onPageScrollStateChanged(I)V

    .line 94
    :cond_9
    return-void
.end method

.method public onPageScrolled(IFI)V
    .registers 5

    .prologue
    .line 98
    iget-object v0, p0, Lfr/testudo/spacecorsair/activity/pagerindicator/IconPageIndicator;->mListener:Landroid/support/v4/view/ViewPager$e;

    if-eqz v0, :cond_9

    .line 99
    iget-object v0, p0, Lfr/testudo/spacecorsair/activity/pagerindicator/IconPageIndicator;->mListener:Landroid/support/v4/view/ViewPager$e;

    invoke-interface {v0, p1, p2, p3}, Landroid/support/v4/view/ViewPager$e;->onPageScrolled(IFI)V

    .line 101
    :cond_9
    return-void
.end method

.method public onPageSelected(I)V
    .registers 3

    .prologue
    .line 105
    invoke-virtual {p0, p1}, Lfr/testudo/spacecorsair/activity/pagerindicator/IconPageIndicator;->setCurrentItem(I)V

    .line 106
    iget-object v0, p0, Lfr/testudo/spacecorsair/activity/pagerindicator/IconPageIndicator;->mListener:Landroid/support/v4/view/ViewPager$e;

    if-eqz v0, :cond_c

    .line 107
    iget-object v0, p0, Lfr/testudo/spacecorsair/activity/pagerindicator/IconPageIndicator;->mListener:Landroid/support/v4/view/ViewPager$e;

    invoke-interface {v0, p1}, Landroid/support/v4/view/ViewPager$e;->onPageSelected(I)V

    .line 109
    :cond_c
    return-void
.end method

.method public setCurrentItem(I)V
    .registers 7

    .prologue
    const/4 v1, 0x0

    .line 152
    iget-object v0, p0, Lfr/testudo/spacecorsair/activity/pagerindicator/IconPageIndicator;->mViewPager:Landroid/support/v4/view/ViewPager;

    if-nez v0, :cond_d

    .line 153
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "ViewPager has not been bound."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 155
    :cond_d
    iput p1, p0, Lfr/testudo/spacecorsair/activity/pagerindicator/IconPageIndicator;->mSelectedIndex:I

    .line 156
    iget-object v0, p0, Lfr/testudo/spacecorsair/activity/pagerindicator/IconPageIndicator;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, p1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 158
    iget-object v0, p0, Lfr/testudo/spacecorsair/activity/pagerindicator/IconPageIndicator;->mIconsLayout:Lfr/testudo/spacecorsair/activity/pagerindicator/IcsLinearLayout;

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/activity/pagerindicator/IcsLinearLayout;->getChildCount()I

    move-result v3

    move v2, v1

    .line 159
    :goto_1b
    if-ge v2, v3, :cond_34

    .line 160
    iget-object v0, p0, Lfr/testudo/spacecorsair/activity/pagerindicator/IconPageIndicator;->mIconsLayout:Lfr/testudo/spacecorsair/activity/pagerindicator/IcsLinearLayout;

    invoke-virtual {v0, v2}, Lfr/testudo/spacecorsair/activity/pagerindicator/IcsLinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 161
    if-ne v2, p1, :cond_32

    const/4 v0, 0x1

    .line 162
    :goto_26
    invoke-virtual {v4, v0}, Landroid/view/View;->setSelected(Z)V

    .line 163
    if-eqz v0, :cond_2e

    .line 164
    invoke-direct {p0, p1}, Lfr/testudo/spacecorsair/activity/pagerindicator/IconPageIndicator;->animateToIcon(I)V

    .line 159
    :cond_2e
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1b

    :cond_32
    move v0, v1

    .line 161
    goto :goto_26

    .line 167
    :cond_34
    return-void
.end method

.method public setOnPageChangeListener(Landroid/support/v4/view/ViewPager$e;)V
    .registers 2

    .prologue
    .line 171
    iput-object p1, p0, Lfr/testudo/spacecorsair/activity/pagerindicator/IconPageIndicator;->mListener:Landroid/support/v4/view/ViewPager$e;

    .line 172
    return-void
.end method

.method public setViewPager(Landroid/support/v4/view/ViewPager;)V
    .registers 4

    .prologue
    .line 113
    iget-object v0, p0, Lfr/testudo/spacecorsair/activity/pagerindicator/IconPageIndicator;->mViewPager:Landroid/support/v4/view/ViewPager;

    if-ne v0, p1, :cond_5

    .line 126
    :goto_4
    return-void

    .line 116
    :cond_5
    iget-object v0, p0, Lfr/testudo/spacecorsair/activity/pagerindicator/IconPageIndicator;->mViewPager:Landroid/support/v4/view/ViewPager;

    if-eqz v0, :cond_f

    .line 117
    iget-object v0, p0, Lfr/testudo/spacecorsair/activity/pagerindicator/IconPageIndicator;->mViewPager:Landroid/support/v4/view/ViewPager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$e;)V

    .line 119
    :cond_f
    invoke-virtual {p1}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/o;

    move-result-object v0

    .line 120
    if-nez v0, :cond_1d

    .line 121
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "ViewPager does not have adapter instance."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 123
    :cond_1d
    iput-object p1, p0, Lfr/testudo/spacecorsair/activity/pagerindicator/IconPageIndicator;->mViewPager:Landroid/support/v4/view/ViewPager;

    .line 124
    invoke-virtual {p1, p0}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$e;)V

    .line 125
    invoke-virtual {p0}, Lfr/testudo/spacecorsair/activity/pagerindicator/IconPageIndicator;->notifyDataSetChanged()V

    goto :goto_4
.end method

.method public setViewPager(Landroid/support/v4/view/ViewPager;I)V
    .registers 3

    .prologue
    .line 146
    invoke-virtual {p0, p1}, Lfr/testudo/spacecorsair/activity/pagerindicator/IconPageIndicator;->setViewPager(Landroid/support/v4/view/ViewPager;)V

    .line 147
    invoke-virtual {p0, p2}, Lfr/testudo/spacecorsair/activity/pagerindicator/IconPageIndicator;->setCurrentItem(I)V

    .line 148
    return-void
.end method
