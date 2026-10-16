.class Lfr/testudo/spacecorsair/activity/StatsActivity$2;
.super Ljava/util/TimerTask;
.source "SourceFile"


# instance fields
.field final synthetic this$0:Lfr/testudo/spacecorsair/activity/StatsActivity;

.field final synthetic val$list:Landroid/widget/ListView;

.field final synthetic val$self:Landroid/app/Activity;


# direct methods
.method constructor <init>(Lfr/testudo/spacecorsair/activity/StatsActivity;Landroid/app/Activity;Landroid/widget/ListView;)V
    .registers 4

    .prologue
    .line 107
    iput-object p1, p0, Lfr/testudo/spacecorsair/activity/StatsActivity$2;->this$0:Lfr/testudo/spacecorsair/activity/StatsActivity;

    iput-object p2, p0, Lfr/testudo/spacecorsair/activity/StatsActivity$2;->val$self:Landroid/app/Activity;

    iput-object p3, p0, Lfr/testudo/spacecorsair/activity/StatsActivity$2;->val$list:Landroid/widget/ListView;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 110
    iget-object v0, p0, Lfr/testudo/spacecorsair/activity/StatsActivity$2;->val$self:Landroid/app/Activity;

    new-instance v1, Lfr/testudo/spacecorsair/activity/StatsActivity$2$1;

    invoke-direct {v1, p0}, Lfr/testudo/spacecorsair/activity/StatsActivity$2$1;-><init>(Lfr/testudo/spacecorsair/activity/StatsActivity$2;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 135
    return-void
.end method
