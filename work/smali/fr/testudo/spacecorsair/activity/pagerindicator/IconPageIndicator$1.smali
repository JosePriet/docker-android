.class Lfr/testudo/spacecorsair/activity/pagerindicator/IconPageIndicator$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lfr/testudo/spacecorsair/activity/pagerindicator/IconPageIndicator;

.field final synthetic val$iconView:Landroid/view/View;


# direct methods
.method constructor <init>(Lfr/testudo/spacecorsair/activity/pagerindicator/IconPageIndicator;Landroid/view/View;)V
    .registers 3

    .prologue
    .line 62
    iput-object p1, p0, Lfr/testudo/spacecorsair/activity/pagerindicator/IconPageIndicator$1;->this$0:Lfr/testudo/spacecorsair/activity/pagerindicator/IconPageIndicator;

    iput-object p2, p0, Lfr/testudo/spacecorsair/activity/pagerindicator/IconPageIndicator$1;->val$iconView:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 64
    iget-object v0, p0, Lfr/testudo/spacecorsair/activity/pagerindicator/IconPageIndicator$1;->val$iconView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    iget-object v1, p0, Lfr/testudo/spacecorsair/activity/pagerindicator/IconPageIndicator$1;->this$0:Lfr/testudo/spacecorsair/activity/pagerindicator/IconPageIndicator;

    invoke-virtual {v1}, Lfr/testudo/spacecorsair/activity/pagerindicator/IconPageIndicator;->getWidth()I

    move-result v1

    iget-object v2, p0, Lfr/testudo/spacecorsair/activity/pagerindicator/IconPageIndicator$1;->val$iconView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    .line 65
    iget-object v1, p0, Lfr/testudo/spacecorsair/activity/pagerindicator/IconPageIndicator$1;->this$0:Lfr/testudo/spacecorsair/activity/pagerindicator/IconPageIndicator;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lfr/testudo/spacecorsair/activity/pagerindicator/IconPageIndicator;->smoothScrollTo(II)V

    .line 66
    iget-object v0, p0, Lfr/testudo/spacecorsair/activity/pagerindicator/IconPageIndicator$1;->this$0:Lfr/testudo/spacecorsair/activity/pagerindicator/IconPageIndicator;

    const/4 v1, 0x0

    # setter for: Lfr/testudo/spacecorsair/activity/pagerindicator/IconPageIndicator;->mIconSelector:Ljava/lang/Runnable;
    invoke-static {v0, v1}, Lfr/testudo/spacecorsair/activity/pagerindicator/IconPageIndicator;->access$002(Lfr/testudo/spacecorsair/activity/pagerindicator/IconPageIndicator;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    .line 67
    return-void
.end method
