.class public Lfr/testudo/spacecorsair/activity/pagerindicator/TabPageIndicator;
.super Landroid/widget/HorizontalScrollView;
.source "SourceFile"

# interfaces
.implements Lfr/testudo/spacecorsair/activity/pagerindicator/PageIndicator;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lfr/testudo/spacecorsair/activity/pagerindicator/TabPageIndicator$TabView;,
        Lfr/testudo/spacecorsair/activity/pagerindicator/TabPageIndicator$OnTabReselectedListener;
    }
.end annotation


# static fields
.field private static final EMPTY_TITLE:Ljava/lang/CharSequence;


# instance fields
.field private mListener:Landroid/support/v4/view/ViewPager$e;

.field private mMaxTabWidth:I

.field private mSelectedTabIndex:I

.field private final mTabClickListener:Landroid/view/View$OnClickListener;

.field private final mTabLayout:Lfr/testudo/spacecorsair/activity/pagerindicator/IcsLinearLayout;

.field private mTabReselectedListener:Lfr/testudo/spacecorsair/activity/pagerindicator/TabPageIndicator$OnTabReselectedListener;

.field private mTabSelector:Ljava/lang/Runnable;

.field private mViewPager:Landroid/support/v4/view/ViewPager;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 40
    const-string v0, ""

    sput-object v0, Lfr/testudo/spacecorsair/activity/pagerindicator/TabPageIndicator;->EMPTY_TITLE:Ljava/lang/CharSequence;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .prologue
    .line 79
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lfr/testudo/spacecorsair/activity/pagerindicator/TabPageIndicator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 80
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 7

    .prologue
    .line 83
    invoke-direct {p0, p1, p2}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 56
    new-instance v0, Lfr/testudo/spacecorsair/activity/pagerindicator/TabPageIndicator$1;

    invoke-direct {v0, p0}, Lfr/testudo/spacecorsair/activity/pagerindicator/TabPageIndicator$1;-><init>(Lfr/testudo/spacecorsair/activity/pagerindicator/TabPageIndicator;)V

    iput-object v0, p0, Lfr/testudo/spacecorsair/activity/pagerindicator/TabPageIndicator;->mTabClickListener:Landroid/view/View$OnClickListener;

    .line 84
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lfr/testudo/spacecorsair/activity/pagerindicator/TabPageIndicator;->setHorizontalScrollBarEnabled(Z)V

    .line 86
    new-instance v0, Lfr/testudo/spacecorsair/activity/pagerindicator/IcsLinearLayout;

    const v1, 0x7f010004

    invoke-direct {v0, p1, v1}, Lfr/testudo/spacecorsair/activity/pagerindicator/IcsLinearLayout;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lfr/testudo/spacecorsair/activity/pagerindicator/TabPageIndicator;->mTabLayout:Lfr/testudo/spacecorsair/activity/pagerindicator/IcsLinearLayout;

    .line 87
    iget-object v0, p0, Lfr/testudo/spacecorsair/activity/pagerindicator/TabPageIndicator;->mTabLayout:Lfr/testudo/spacecorsair/activity/pagerindicator/IcsLinearLayout;

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x2

    const/4 v3, -0x1

    invoke-direct {v1, v2, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Lfr/testudo/spacecorsair/activity/pagerindicator/TabPageIndicator;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 88
    return-void
.end method

.method static synthetic access$000(Lfr/testudo/spacecorsair/activity/pagerindicator/TabPageIndicator;)Landroid/support/v4/view/ViewPager;
    .registers 2

    .prologue
    .line 38
    iget-object v0, p0, Lfr/testudo/spacecorsair/activity/pagerindicator/TabPageIndicator;->mViewPager:Landroid/support/v4/view/ViewPager;

    return-object v0
.end method

.method static synthetic access$100(Lfr/testudo/spacecorsair/activity/pagerindicator/TabPageIndicator;)Lfr/testudo/spacecorsair/activity/pagerindicator/TabPageIndicator$OnTabReselectedListener;
    .registers 2

    .prologue
    .line 38
    iget-object v0, p0, Lfr/testudo/spacecorsair/activity/pagerindicator/TabPageIndicator;->mTabReselectedListener:Lfr/testudo/spacecorsair/activity/pagerindicator/TabPageIndicator$OnTabReselectedListener;

    return-object v0
.end method

.method static synthetic access$202(Lfr/testudo/spacecorsair/activity/pagerindicator/TabPageIndicator;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .registers 2

    .prologue
    .line 38
    iput-object p1, p0, Lfr/testudo/spacecorsair/activity/pagerindicator/TabPageIndicator;->mTabSelector:Ljava/lang/Runnable;

    return-object p1
.end method

.method static synthetic access$400(Lfr/testudo/spacecorsair/activity/pagerindicator/TabPageIndicator;)I
    .registers 2

    .prologue
    .line 38
    iget v0, p0, Lfr/testudo/spacecorsair/activity/pagerindicator/TabPageIndicator;->mMaxTabWidth:I

    return v0
.end method

.method private addTab(ILjava/lang/CharSequence;I)V
    .registers 10

    .prologue
    const/4 v5, 0x0

    .line 154
    new-instance v0, Lfr/testudo/spacecorsair/activity/pagerindicator/TabPageIndicator$TabView;

    invoke-virtual {p0}, Lfr/testudo/spacecorsair/activity/pagerindicator/TabPageIndicator;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lfr/testudo/spacecorsair/activity/pagerindicator/TabPageIndicator$TabView;-><init>(Lfr/testudo/spacecorsair/activity/pagerindicator/TabPageIndicator;Landroid/content/Context;)V

    .line 155
    # setter for: Lfr/testudo/spacecorsair/activity/pagerindicator/TabPageIndicator$TabView;->mIndex:I
    invoke-static {v0, p1}, Lfr/testudo/spacecorsair/activity/pagerindicator/TabPageIndicator$TabView;->access$302(Lfr/testudo/spacecorsair/activity/pagerindicator/TabPageIndicator$TabView;I)I

    .line 156
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/activity/pagerindicator/TabPageIndicator$TabView;->setFocusable(Z)V

    .line 157
    iget-object v1, p0, Lfr/testudo/spacecorsair/activity/pagerindicator/TabPageIndicator;->mTabClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/activity/pagerindicator/TabPageIndicator$TabView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 158
    invoke-virtual {v0, p2}, Lfr/testudo/spacecorsair/activity/pagerindicator/TabPageIndicator$TabView;->setText(Ljava/lang/CharSequence;)V

    .line 160
    if-eqz p3, :cond_1e

    .line 161
    invoke-virtual {v0, p3, v5, v5, v5}, Lfr/testudo/spacecorsair/activity/pagerindicator/TabPageIndicator$TabView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 164
    :cond_1e
    iget-object v1, p0, Lfr/testudo/spacecorsair/activity/pagerindicator/TabPageIndicator;->mTabLayout:Lfr/testudo/spacecorsair/activity/pagerindicator/IcsLinearLayout;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x1

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v2, v5, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v1, v0, v2}, Lfr/testudo/spacecorsair/activity/pagerindicator/IcsLinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 165
    return-void
.end method

.method private animateToTab(I)V
    .registers 4

    .prologue
    .line 122
    iget-object v0, p0, Lfr/testudo/spacecorsair/activity/pagerindicator/TabPageIndicator;->mTabLayout:Lfr/testudo/spacecorsair/activity/pagerindicator/IcsLinearLayout;

    invoke-virtual {v0, p1}, Lfr/testudo/spacecorsair/activity/pagerindicator/IcsLinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 123
    iget-object v1, p0, Lfr/testudo/spacecorsair/activity/pagerindicator/TabPageIndicator;->mTabSelector:Ljava/lang/Runnable;

    if-eqz v1, :cond_f

    .line 124
    iget-object v1, p0, Lfr/testudo/spacecorsair/activity/pagerindicator/TabPageIndicator;->mTabSelector:Ljava/lang/Runnable;

    invoke-virtual {p0, v1}, Lfr/testudo/spacecorsair/activity/pagerindicator/TabPageIndicator;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 126
    :cond_f
    new-instance v1, Lfr/testudo/spacecorsair/activity/pagerindicator/TabPageIndicator$2;

    invoke-direct {v1, p0, v0}, Lfr/testudo/spacecorsair/activity/pagerindicator/TabPageIndicator$2;-><init>(Lfr/testudo/spacecorsair/activity/pagerindicator/TabPageIndicator;Landroid/view/View;)V

    iput-object v1, p0, Lfr/testudo/spacecorsair/activity/pagerindicator/TabPageIndicator;->mTabSelector:Ljava/lang/Runnable;

    .line 133
    iget-object v0, p0, Lfr/testudo/spacecorsair/activity/pagerindicator/TabPageIndicator;->mTabSelector:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lfr/testudo/spacecorsair/activity/pagerindicator/TabPageIndicator;->post(Ljava/lang/Runnable;)Z

    .line 134
    return-void
.end method


# virtual methods
.method public notifyDataSetChanged()V
    .registers 8

    .prologue
    const/4 v3, 0x0

    .line 207
    iget-object v0, p0, Lfr/testudo/spacecorsair/activity/pagerindicator/TabPageIndicator;->mTabLayout:Lfr/testudo/spacecorsair/activity/pagerindicator/IcsLinearLayout;

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/activity/pagerindicator/IcsLinearLayout;->removeAllViews()V

    .line 208
    iget-object v0, p0, Lfr/testudo/spacecorsair/activity/pagerindicator/TabPageIndicator;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/o;

    move-result-object v1

    .line 209
    const/4 v0, 0x0

    .line 210
    instance-of v2, v1, Lfr/testudo/spacecorsair/activity/pagerindicator/IconPagerAdapter;

    if-eqz v2, :cond_14

    move-object v0, v1

    .line 211
    check-cast v0, Lfr/testudo/spacecorsair/activity/pagerindicator/IconPagerAdapter;

    .line 213
    :cond_14
    invoke-virtual {v1}, Landroid/support/v4/view/o;->getCount()I

    move-result v6

    move v5, v3

    .line 214
    :goto_19
    if-ge v5, v6, :cond_31

    .line 215
    invoke-virtual {v1, v5}, Landroid/support/v4/view/o;->getPageTitle(I)Ljava/lang/CharSequence;

    move-result-object v2

    .line 216
    if-nez v2, :cond_44

    .line 217
    sget-object v2, Lfr/testudo/spacecorsair/activity/pagerindicator/TabPageIndicator;->EMPTY_TITLE:Ljava/lang/CharSequence;

    move-object v4, v2

    .line 220
    :goto_24
    if-eqz v0, :cond_42

    .line 221
    invoke-interface {v0, v5}, Lfr/testudo/spacecorsair/activity/pagerindicator/IconPagerAdapter;->getIconResId(I)I

    move-result v2

    .line 223
    :goto_2a
    invoke-direct {p0, v5, v4, v2}, Lfr/testudo/spacecorsair/activity/pagerindicator/TabPageIndicator;->addTab(ILjava/lang/CharSequence;I)V

    .line 214
    add-int/lit8 v2, v5, 0x1

    move v5, v2

    goto :goto_19

    .line 225
    :cond_31
    iget v0, p0, Lfr/testudo/spacecorsair/activity/pagerindicator/TabPageIndicator;->mSelectedTabIndex:I

    if-le v0, v6, :cond_39

    .line 226
    add-int/lit8 v0, v6, -0x1

    iput v0, p0, Lfr/testudo/spacecorsair/activity/pagerindicator/TabPageIndicator;->mSelectedTabIndex:I

    .line 228
    :cond_39
    iget v0, p0, Lfr/testudo/spacecorsair/activity/pagerindicator/TabPageIndicator;->mSelectedTabIndex:I

    invoke-virtual {p0, v0}, Lfr/testudo/spacecorsair/activity/pagerindicator/TabPageIndicator;->setCurrentItem(I)V

    .line 229
    invoke-virtual {p0}, Lfr/testudo/spacecorsair/activity/pagerindicator/TabPageIndicator;->requestLayout()V

    .line 230
    return-void

    :cond_42
    move v2, v3

    goto :goto_2a

    :cond_44
    move-object v4, v2

    goto :goto_24
.end method

.method public onAttachedToWindow()V
    .registers 2

    .prologue
    .line 138
    invoke-super {p0}, Landroid/widget/HorizontalScrollView;->onAttachedToWindow()V

    .line 139
    iget-object v0, p0, Lfr/testudo/spacecorsair/activity/pagerindicator/TabPageIndicator;->mTabSelector:Ljava/lang/Runnable;

    if-eqz v0, :cond_c

    .line 141
    iget-object v0, p0, Lfr/testudo/spacecorsair/activity/pagerindicator/TabPageIndicator;->mTabSelector:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lfr/testudo/spacecorsair/activity/pagerindicator/TabPageIndicator;->post(Ljava/lang/Runnable;)Z

    .line 143
    :cond_c
    return-void
.end method

.method public onDetachedFromWindow()V
    .registers 2

    .prologue
    .line 147
    invoke-super {p0}, Landroid/widget/HorizontalScrollView;->onDetachedFromWindow()V

    .line 148
    iget-object v0, p0, Lfr/testudo/spacecorsair/activity/pagerindicator/TabPageIndicator;->mTabSelector:Ljava/lang/Runnable;

    if-eqz v0, :cond_c

    .line 149
    iget-object v0, p0, Lfr/testudo/spacecorsair/activity/pagerindicator/TabPageIndicator;->mTabSelector:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lfr/testudo/spacecorsair/activity/pagerindicator/TabPageIndicator;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 151
    :cond_c
    return-void
.end method

.method public onMeasure(II)V
    .registers 8

    .prologue
    const/high16 v4, 0x40000000    # 2.0f

    const/4 v1, 0x1

    .line 96
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    .line 97
    if-ne v2, v4, :cond_3f

    move v0, v1

    .line 98
    :goto_a
    invoke-virtual {p0, v0}, Lfr/testudo/spacecorsair/activity/pagerindicator/TabPageIndicator;->setFillViewport(Z)V

    .line 100
    iget-object v3, p0, Lfr/testudo/spacecorsair/activity/pagerindicator/TabPageIndicator;->mTabLayout:Lfr/testudo/spacecorsair/activity/pagerindicator/IcsLinearLayout;

    invoke-virtual {v3}, Lfr/testudo/spacecorsair/activity/pagerindicator/IcsLinearLayout;->getChildCount()I

    move-result v3

    .line 101
    if-le v3, v1, :cond_4a

    if-eq v2, v4, :cond_1b

    const/high16 v1, -0x80000000

    if-ne v2, v1, :cond_4a

    .line 102
    :cond_1b
    const/4 v1, 0x2

    if-le v3, v1, :cond_41

    .line 103
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    int-to-float v1, v1

    const v2, 0x3ecccccd    # 0.4f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Lfr/testudo/spacecorsair/activity/pagerindicator/TabPageIndicator;->mMaxTabWidth:I

    .line 111
    :goto_2a
    invoke-virtual {p0}, Lfr/testudo/spacecorsair/activity/pagerindicator/TabPageIndicator;->getMeasuredWidth()I

    move-result v1

    .line 112
    invoke-super {p0, p1, p2}, Landroid/widget/HorizontalScrollView;->onMeasure(II)V

    .line 113
    invoke-virtual {p0}, Lfr/testudo/spacecorsair/activity/pagerindicator/TabPageIndicator;->getMeasuredWidth()I

    move-result v2

    .line 115
    if-eqz v0, :cond_3e

    if-eq v1, v2, :cond_3e

    .line 117
    iget v0, p0, Lfr/testudo/spacecorsair/activity/pagerindicator/TabPageIndicator;->mSelectedTabIndex:I

    invoke-virtual {p0, v0}, Lfr/testudo/spacecorsair/activity/pagerindicator/TabPageIndicator;->setCurrentItem(I)V

    .line 119
    :cond_3e
    return-void

    .line 97
    :cond_3f
    const/4 v0, 0x0

    goto :goto_a

    .line 105
    :cond_41
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    iput v1, p0, Lfr/testudo/spacecorsair/activity/pagerindicator/TabPageIndicator;->mMaxTabWidth:I

    goto :goto_2a

    .line 108
    :cond_4a
    const/4 v1, -0x1

    iput v1, p0, Lfr/testudo/spacecorsair/activity/pagerindicator/TabPageIndicator;->mMaxTabWidth:I

    goto :goto_2a
.end method

.method public onPageScrollStateChanged(I)V
    .registers 3

    .prologue
    .line 169
    iget-object v0, p0, Lfr/testudo/spacecorsair/activity/pagerindicator/TabPageIndicator;->mListener:Landroid/support/v4/view/ViewPager$e;

    if-eqz v0, :cond_9

    .line 170
    iget-object v0, p0, Lfr/testudo/spacecorsair/activity/pagerindicator/TabPageIndicator;->mListener:Landroid/support/v4/view/ViewPager$e;

    invoke-interface {v0, p1}, Landroid/support/v4/view/ViewPager$e;->onPageScrollStateChanged(I)V

    .line 172
    :cond_9
    return-void
.end method

.method public onPageScrolled(IFI)V
    .registers 5

    .prologue
    .line 176
    iget-object v0, p0, Lfr/testudo/spacecorsair/activity/pagerindicator/TabPageIndicator;->mListener:Landroid/support/v4/view/ViewPager$e;

    if-eqz v0, :cond_9

    .line 177
    iget-object v0, p0, Lfr/testudo/spacecorsair/activity/pagerindicator/TabPageIndicator;->mListener:Landroid/support/v4/view/ViewPager$e;

    invoke-interface {v0, p1, p2, p3}, Landroid/support/v4/view/ViewPager$e;->onPageScrolled(IFI)V

    .line 179
    :cond_9
    return-void
.end method

.method public onPageSelected(I)V
    .registers 3

    .prologue
    .line 183
    invoke-virtual {p0, p1}, Lfr/testudo/spacecorsair/activity/pagerindicator/TabPageIndicator;->setCurrentItem(I)V

    .line 184
    iget-object v0, p0, Lfr/testudo/spacecorsair/activity/pagerindicator/TabPageIndicator;->mListener:Landroid/support/v4/view/ViewPager$e;

    if-eqz v0, :cond_c

    .line 185
    iget-object v0, p0, Lfr/testudo/spacecorsair/activity/pagerindicator/TabPageIndicator;->mListener:Landroid/support/v4/view/ViewPager$e;

    invoke-interface {v0, p1}, Landroid/support/v4/view/ViewPager$e;->onPageSelected(I)V

    .line 187
    :cond_c
    return-void
.end method

.method public setCurrentItem(I)V
    .registers 7

    .prologue
    const/4 v1, 0x0

    .line 240
    iget-object v0, p0, Lfr/testudo/spacecorsair/activity/pagerindicator/TabPageIndicator;->mViewPager:Landroid/support/v4/view/ViewPager;

    if-nez v0, :cond_d

    .line 241
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "ViewPager has not been bound."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 243
    :cond_d
    iput p1, p0, Lfr/testudo/spacecorsair/activity/pagerindicator/TabPageIndicator;->mSelectedTabIndex:I

    .line 244
    iget-object v0, p0, Lfr/testudo/spacecorsair/activity/pagerindicator/TabPageIndicator;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, p1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 246
    iget-object v0, p0, Lfr/testudo/spacecorsair/activity/pagerindicator/TabPageIndicator;->mTabLayout:Lfr/testudo/spacecorsair/activity/pagerindicator/IcsLinearLayout;

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/activity/pagerindicator/IcsLinearLayout;->getChildCount()I

    move-result v3

    move v2, v1

    .line 247
    :goto_1b
    if-ge v2, v3, :cond_34

    .line 248
    iget-object v0, p0, Lfr/testudo/spacecorsair/activity/pagerindicator/TabPageIndicator;->mTabLayout:Lfr/testudo/spacecorsair/activity/pagerindicator/IcsLinearLayout;

    invoke-virtual {v0, v2}, Lfr/testudo/spacecorsair/activity/pagerindicator/IcsLinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 249
    if-ne v2, p1, :cond_32

    const/4 v0, 0x1

    .line 250
    :goto_26
    invoke-virtual {v4, v0}, Landroid/view/View;->setSelected(Z)V

    .line 251
    if-eqz v0, :cond_2e

    .line 252
    invoke-direct {p0, p1}, Lfr/testudo/spacecorsair/activity/pagerindicator/TabPageIndicator;->animateToTab(I)V

    .line 247
    :cond_2e
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1b

    :cond_32
    move v0, v1

    .line 249
    goto :goto_26

    .line 255
    :cond_34
    return-void
.end method

.method public setOnPageChangeListener(Landroid/support/v4/view/ViewPager$e;)V
    .registers 2

    .prologue
    .line 259
    iput-object p1, p0, Lfr/testudo/spacecorsair/activity/pagerindicator/TabPageIndicator;->mListener:Landroid/support/v4/view/ViewPager$e;

    .line 260
    return-void
.end method

.method public setOnTabReselectedListener(Lfr/testudo/spacecorsair/activity/pagerindicator/TabPageIndicator$OnTabReselectedListener;)V
    .registers 2

    .prologue
    .line 91
    iput-object p1, p0, Lfr/testudo/spacecorsair/activity/pagerindicator/TabPageIndicator;->mTabReselectedListener:Lfr/testudo/spacecorsair/activity/pagerindicator/TabPageIndicator$OnTabReselectedListener;

    .line 92
    return-void
.end method

.method public setViewPager(Landroid/support/v4/view/ViewPager;)V
    .registers 4

    .prologue
    .line 191
    iget-object v0, p0, Lfr/testudo/spacecorsair/activity/pagerindicator/TabPageIndicator;->mViewPager:Landroid/support/v4/view/ViewPager;

    if-ne v0, p1, :cond_5

    .line 204
    :goto_4
    return-void

    .line 194
    :cond_5
    iget-object v0, p0, Lfr/testudo/spacecorsair/activity/pagerindicator/TabPageIndicator;->mViewPager:Landroid/support/v4/view/ViewPager;

    if-eqz v0, :cond_f

    .line 195
    iget-object v0, p0, Lfr/testudo/spacecorsair/activity/pagerindicator/TabPageIndicator;->mViewPager:Landroid/support/v4/view/ViewPager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$e;)V

    .line 197
    :cond_f
    invoke-virtual {p1}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/o;

    move-result-object v0

    .line 198
    if-nez v0, :cond_1d

    .line 199
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "ViewPager does not have adapter instance."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 201
    :cond_1d
    iput-object p1, p0, Lfr/testudo/spacecorsair/activity/pagerindicator/TabPageIndicator;->mViewPager:Landroid/support/v4/view/ViewPager;

    .line 202
    invoke-virtual {p1, p0}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$e;)V

    .line 203
    invoke-virtual {p0}, Lfr/testudo/spacecorsair/activity/pagerindicator/TabPageIndicator;->notifyDataSetChanged()V

    goto :goto_4
.end method

.method public setViewPager(Landroid/support/v4/view/ViewPager;I)V
    .registers 3

    .prologue
    .line 234
    invoke-virtual {p0, p1}, Lfr/testudo/spacecorsair/activity/pagerindicator/TabPageIndicator;->setViewPager(Landroid/support/v4/view/ViewPager;)V

    .line 235
    invoke-virtual {p0, p2}, Lfr/testudo/spacecorsair/activity/pagerindicator/TabPageIndicator;->setCurrentItem(I)V

    .line 236
    return-void
.end method
