.class Lfr/testudo/spacecorsair/activity/StationActivity$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lfr/testudo/spacecorsair/activity/StationActivity;


# direct methods
.method constructor <init>(Lfr/testudo/spacecorsair/activity/StationActivity;)V
    .registers 2

    .prologue
    .line 391
    iput-object p1, p0, Lfr/testudo/spacecorsair/activity/StationActivity$5;->this$0:Lfr/testudo/spacecorsair/activity/StationActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4

    .prologue
    .line 394
    iget-object v0, p0, Lfr/testudo/spacecorsair/activity/StationActivity$5;->this$0:Lfr/testudo/spacecorsair/activity/StationActivity;

    # getter for: Lfr/testudo/spacecorsair/activity/StationActivity;->pickDialog:Landroid/app/Dialog;
    invoke-static {v0}, Lfr/testudo/spacecorsair/activity/StationActivity;->access$100(Lfr/testudo/spacecorsair/activity/StationActivity;)Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 395
    iget-object v0, p0, Lfr/testudo/spacecorsair/activity/StationActivity$5;->this$0:Lfr/testudo/spacecorsair/activity/StationActivity;

    # getter for: Lfr/testudo/spacecorsair/activity/StationActivity;->pickDialog:Landroid/app/Dialog;
    invoke-static {v0}, Lfr/testudo/spacecorsair/activity/StationActivity;->access$100(Lfr/testudo/spacecorsair/activity/StationActivity;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 397
    :cond_11
    iget-object v0, p0, Lfr/testudo/spacecorsair/activity/StationActivity$5;->this$0:Lfr/testudo/spacecorsair/activity/StationActivity;

    const/4 v1, 0x0

    # setter for: Lfr/testudo/spacecorsair/activity/StationActivity;->pickDialog:Landroid/app/Dialog;
    invoke-static {v0, v1}, Lfr/testudo/spacecorsair/activity/StationActivity;->access$102(Lfr/testudo/spacecorsair/activity/StationActivity;Landroid/app/Dialog;)Landroid/app/Dialog;

    .line 398
    return-void
.end method
