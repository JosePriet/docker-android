.class Lfr/testudo/spacecorsair/activity/pagerindicator/UnderlinePageIndicator$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lfr/testudo/spacecorsair/activity/pagerindicator/UnderlinePageIndicator;


# direct methods
.method constructor <init>(Lfr/testudo/spacecorsair/activity/pagerindicator/UnderlinePageIndicator;)V
    .registers 2

    .prologue
    .line 61
    iput-object p1, p0, Lfr/testudo/spacecorsair/activity/pagerindicator/UnderlinePageIndicator$1;->this$0:Lfr/testudo/spacecorsair/activity/pagerindicator/UnderlinePageIndicator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 63
    iget-object v0, p0, Lfr/testudo/spacecorsair/activity/pagerindicator/UnderlinePageIndicator$1;->this$0:Lfr/testudo/spacecorsair/activity/pagerindicator/UnderlinePageIndicator;

    # getter for: Lfr/testudo/spacecorsair/activity/pagerindicator/UnderlinePageIndicator;->mFades:Z
    invoke-static {v0}, Lfr/testudo/spacecorsair/activity/pagerindicator/UnderlinePageIndicator;->access$000(Lfr/testudo/spacecorsair/activity/pagerindicator/UnderlinePageIndicator;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 71
    :cond_8
    :goto_8
    return-void

    .line 65
    :cond_9
    iget-object v0, p0, Lfr/testudo/spacecorsair/activity/pagerindicator/UnderlinePageIndicator$1;->this$0:Lfr/testudo/spacecorsair/activity/pagerindicator/UnderlinePageIndicator;

    # getter for: Lfr/testudo/spacecorsair/activity/pagerindicator/UnderlinePageIndicator;->mPaint:Landroid/graphics/Paint;
    invoke-static {v0}, Lfr/testudo/spacecorsair/activity/pagerindicator/UnderlinePageIndicator;->access$100(Lfr/testudo/spacecorsair/activity/pagerindicator/UnderlinePageIndicator;)Landroid/graphics/Paint;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Paint;->getAlpha()I

    move-result v0

    iget-object v1, p0, Lfr/testudo/spacecorsair/activity/pagerindicator/UnderlinePageIndicator$1;->this$0:Lfr/testudo/spacecorsair/activity/pagerindicator/UnderlinePageIndicator;

    # getter for: Lfr/testudo/spacecorsair/activity/pagerindicator/UnderlinePageIndicator;->mFadeBy:I
    invoke-static {v1}, Lfr/testudo/spacecorsair/activity/pagerindicator/UnderlinePageIndicator;->access$200(Lfr/testudo/spacecorsair/activity/pagerindicator/UnderlinePageIndicator;)I

    move-result v1

    sub-int/2addr v0, v1

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 66
    iget-object v1, p0, Lfr/testudo/spacecorsair/activity/pagerindicator/UnderlinePageIndicator$1;->this$0:Lfr/testudo/spacecorsair/activity/pagerindicator/UnderlinePageIndicator;

    # getter for: Lfr/testudo/spacecorsair/activity/pagerindicator/UnderlinePageIndicator;->mPaint:Landroid/graphics/Paint;
    invoke-static {v1}, Lfr/testudo/spacecorsair/activity/pagerindicator/UnderlinePageIndicator;->access$100(Lfr/testudo/spacecorsair/activity/pagerindicator/UnderlinePageIndicator;)Landroid/graphics/Paint;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 67
    iget-object v1, p0, Lfr/testudo/spacecorsair/activity/pagerindicator/UnderlinePageIndicator$1;->this$0:Lfr/testudo/spacecorsair/activity/pagerindicator/UnderlinePageIndicator;

    invoke-virtual {v1}, Lfr/testudo/spacecorsair/activity/pagerindicator/UnderlinePageIndicator;->invalidate()V

    .line 68
    if-lez v0, :cond_8

    .line 69
    iget-object v0, p0, Lfr/testudo/spacecorsair/activity/pagerindicator/UnderlinePageIndicator$1;->this$0:Lfr/testudo/spacecorsair/activity/pagerindicator/UnderlinePageIndicator;

    const-wide/16 v2, 0x1e

    invoke-virtual {v0, p0, v2, v3}, Lfr/testudo/spacecorsair/activity/pagerindicator/UnderlinePageIndicator;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_8
.end method
