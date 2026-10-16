.class Lfr/testudo/spacecorsair/activity/pagerindicator/TabPageIndicator$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lfr/testudo/spacecorsair/activity/pagerindicator/TabPageIndicator;


# direct methods
.method constructor <init>(Lfr/testudo/spacecorsair/activity/pagerindicator/TabPageIndicator;)V
    .registers 2

    .prologue
    .line 56
    iput-object p1, p0, Lfr/testudo/spacecorsair/activity/pagerindicator/TabPageIndicator$1;->this$0:Lfr/testudo/spacecorsair/activity/pagerindicator/TabPageIndicator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5

    .prologue
    .line 58
    check-cast p1, Lfr/testudo/spacecorsair/activity/pagerindicator/TabPageIndicator$TabView;

    .line 59
    iget-object v0, p0, Lfr/testudo/spacecorsair/activity/pagerindicator/TabPageIndicator$1;->this$0:Lfr/testudo/spacecorsair/activity/pagerindicator/TabPageIndicator;

    # getter for: Lfr/testudo/spacecorsair/activity/pagerindicator/TabPageIndicator;->mViewPager:Landroid/support/v4/view/ViewPager;
    invoke-static {v0}, Lfr/testudo/spacecorsair/activity/pagerindicator/TabPageIndicator;->access$000(Lfr/testudo/spacecorsair/activity/pagerindicator/TabPageIndicator;)Landroid/support/v4/view/ViewPager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v0

    .line 60
    invoke-virtual {p1}, Lfr/testudo/spacecorsair/activity/pagerindicator/TabPageIndicator$TabView;->getIndex()I

    move-result v1

    .line 61
    iget-object v2, p0, Lfr/testudo/spacecorsair/activity/pagerindicator/TabPageIndicator$1;->this$0:Lfr/testudo/spacecorsair/activity/pagerindicator/TabPageIndicator;

    # getter for: Lfr/testudo/spacecorsair/activity/pagerindicator/TabPageIndicator;->mViewPager:Landroid/support/v4/view/ViewPager;
    invoke-static {v2}, Lfr/testudo/spacecorsair/activity/pagerindicator/TabPageIndicator;->access$000(Lfr/testudo/spacecorsair/activity/pagerindicator/TabPageIndicator;)Landroid/support/v4/view/ViewPager;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 62
    if-ne v0, v1, :cond_2c

    iget-object v0, p0, Lfr/testudo/spacecorsair/activity/pagerindicator/TabPageIndicator$1;->this$0:Lfr/testudo/spacecorsair/activity/pagerindicator/TabPageIndicator;

    # getter for: Lfr/testudo/spacecorsair/activity/pagerindicator/TabPageIndicator;->mTabReselectedListener:Lfr/testudo/spacecorsair/activity/pagerindicator/TabPageIndicator$OnTabReselectedListener;
    invoke-static {v0}, Lfr/testudo/spacecorsair/activity/pagerindicator/TabPageIndicator;->access$100(Lfr/testudo/spacecorsair/activity/pagerindicator/TabPageIndicator;)Lfr/testudo/spacecorsair/activity/pagerindicator/TabPageIndicator$OnTabReselectedListener;

    move-result-object v0

    if-eqz v0, :cond_2c

    .line 63
    iget-object v0, p0, Lfr/testudo/spacecorsair/activity/pagerindicator/TabPageIndicator$1;->this$0:Lfr/testudo/spacecorsair/activity/pagerindicator/TabPageIndicator;

    # getter for: Lfr/testudo/spacecorsair/activity/pagerindicator/TabPageIndicator;->mTabReselectedListener:Lfr/testudo/spacecorsair/activity/pagerindicator/TabPageIndicator$OnTabReselectedListener;
    invoke-static {v0}, Lfr/testudo/spacecorsair/activity/pagerindicator/TabPageIndicator;->access$100(Lfr/testudo/spacecorsair/activity/pagerindicator/TabPageIndicator;)Lfr/testudo/spacecorsair/activity/pagerindicator/TabPageIndicator$OnTabReselectedListener;

    move-result-object v0

    invoke-interface {v0, v1}, Lfr/testudo/spacecorsair/activity/pagerindicator/TabPageIndicator$OnTabReselectedListener;->onTabReselected(I)V

    .line 65
    :cond_2c
    return-void
.end method
