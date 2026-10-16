.class Lfr/testudo/spacecorsair/activity/pagerindicator/UnderlinePageIndicator$2;
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
    .line 280
    iput-object p1, p0, Lfr/testudo/spacecorsair/activity/pagerindicator/UnderlinePageIndicator$2;->this$0:Lfr/testudo/spacecorsair/activity/pagerindicator/UnderlinePageIndicator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 282
    iget-object v0, p0, Lfr/testudo/spacecorsair/activity/pagerindicator/UnderlinePageIndicator$2;->this$0:Lfr/testudo/spacecorsair/activity/pagerindicator/UnderlinePageIndicator;

    # getter for: Lfr/testudo/spacecorsair/activity/pagerindicator/UnderlinePageIndicator;->mFades:Z
    invoke-static {v0}, Lfr/testudo/spacecorsair/activity/pagerindicator/UnderlinePageIndicator;->access$000(Lfr/testudo/spacecorsair/activity/pagerindicator/UnderlinePageIndicator;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 283
    iget-object v0, p0, Lfr/testudo/spacecorsair/activity/pagerindicator/UnderlinePageIndicator$2;->this$0:Lfr/testudo/spacecorsair/activity/pagerindicator/UnderlinePageIndicator;

    iget-object v1, p0, Lfr/testudo/spacecorsair/activity/pagerindicator/UnderlinePageIndicator$2;->this$0:Lfr/testudo/spacecorsair/activity/pagerindicator/UnderlinePageIndicator;

    # getter for: Lfr/testudo/spacecorsair/activity/pagerindicator/UnderlinePageIndicator;->mFadeRunnable:Ljava/lang/Runnable;
    invoke-static {v1}, Lfr/testudo/spacecorsair/activity/pagerindicator/UnderlinePageIndicator;->access$300(Lfr/testudo/spacecorsair/activity/pagerindicator/UnderlinePageIndicator;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/activity/pagerindicator/UnderlinePageIndicator;->post(Ljava/lang/Runnable;)Z

    .line 285
    :cond_13
    return-void
.end method
