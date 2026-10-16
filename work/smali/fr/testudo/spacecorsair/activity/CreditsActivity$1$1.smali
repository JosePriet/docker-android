.class Lfr/testudo/spacecorsair/activity/CreditsActivity$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$1:Lfr/testudo/spacecorsair/activity/CreditsActivity$1;


# direct methods
.method constructor <init>(Lfr/testudo/spacecorsair/activity/CreditsActivity$1;)V
    .registers 2

    .prologue
    .line 105
    iput-object p1, p0, Lfr/testudo/spacecorsair/activity/CreditsActivity$1$1;->this$1:Lfr/testudo/spacecorsair/activity/CreditsActivity$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 109
    iget-object v0, p0, Lfr/testudo/spacecorsair/activity/CreditsActivity$1$1;->this$1:Lfr/testudo/spacecorsair/activity/CreditsActivity$1;

    iget-object v0, v0, Lfr/testudo/spacecorsair/activity/CreditsActivity$1;->this$0:Lfr/testudo/spacecorsair/activity/CreditsActivity;

    iget-object v0, v0, Lfr/testudo/spacecorsair/activity/CreditsActivity;->layoutScrollThanks:Landroid/widget/ScrollView;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/widget/ScrollView;->smoothScrollBy(II)V

    .line 110
    return-void
.end method
