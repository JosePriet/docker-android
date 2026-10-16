.class Lfr/testudo/spacecorsair/activity/MyShipActivity$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lfr/testudo/spacecorsair/activity/MyShipActivity;


# direct methods
.method constructor <init>(Lfr/testudo/spacecorsair/activity/MyShipActivity;)V
    .registers 2

    .prologue
    .line 263
    iput-object p1, p0, Lfr/testudo/spacecorsair/activity/MyShipActivity$6;->this$0:Lfr/testudo/spacecorsair/activity/MyShipActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4

    .prologue
    .line 266
    iget-object v0, p0, Lfr/testudo/spacecorsair/activity/MyShipActivity$6;->this$0:Lfr/testudo/spacecorsair/activity/MyShipActivity;

    # getter for: Lfr/testudo/spacecorsair/activity/MyShipActivity;->pickDialog:Landroid/app/Dialog;
    invoke-static {v0}, Lfr/testudo/spacecorsair/activity/MyShipActivity;->access$000(Lfr/testudo/spacecorsair/activity/MyShipActivity;)Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 267
    iget-object v0, p0, Lfr/testudo/spacecorsair/activity/MyShipActivity$6;->this$0:Lfr/testudo/spacecorsair/activity/MyShipActivity;

    # getter for: Lfr/testudo/spacecorsair/activity/MyShipActivity;->pickDialog:Landroid/app/Dialog;
    invoke-static {v0}, Lfr/testudo/spacecorsair/activity/MyShipActivity;->access$000(Lfr/testudo/spacecorsair/activity/MyShipActivity;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 269
    :cond_11
    iget-object v0, p0, Lfr/testudo/spacecorsair/activity/MyShipActivity$6;->this$0:Lfr/testudo/spacecorsair/activity/MyShipActivity;

    const/4 v1, 0x0

    # setter for: Lfr/testudo/spacecorsair/activity/MyShipActivity;->pickDialog:Landroid/app/Dialog;
    invoke-static {v0, v1}, Lfr/testudo/spacecorsair/activity/MyShipActivity;->access$002(Lfr/testudo/spacecorsair/activity/MyShipActivity;Landroid/app/Dialog;)Landroid/app/Dialog;

    .line 270
    return-void
.end method
