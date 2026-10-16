.class Lfr/testudo/spacecorsair/activity/CreditsActivity$1;
.super Ljava/util/TimerTask;
.source "SourceFile"


# instance fields
.field final synthetic this$0:Lfr/testudo/spacecorsair/activity/CreditsActivity;


# direct methods
.method constructor <init>(Lfr/testudo/spacecorsair/activity/CreditsActivity;)V
    .registers 2

    .prologue
    .line 102
    iput-object p1, p0, Lfr/testudo/spacecorsair/activity/CreditsActivity$1;->this$0:Lfr/testudo/spacecorsair/activity/CreditsActivity;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 105
    iget-object v0, p0, Lfr/testudo/spacecorsair/activity/CreditsActivity$1;->this$0:Lfr/testudo/spacecorsair/activity/CreditsActivity;

    new-instance v1, Lfr/testudo/spacecorsair/activity/CreditsActivity$1$1;

    invoke-direct {v1, p0}, Lfr/testudo/spacecorsair/activity/CreditsActivity$1$1;-><init>(Lfr/testudo/spacecorsair/activity/CreditsActivity$1;)V

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/activity/CreditsActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 112
    return-void
.end method
