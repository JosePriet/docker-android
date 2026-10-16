.class Lfr/testudo/spacecorsair/activity/MyShipActivity$9;
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
    .line 391
    iput-object p1, p0, Lfr/testudo/spacecorsair/activity/MyShipActivity$9;->this$0:Lfr/testudo/spacecorsair/activity/MyShipActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3

    .prologue
    .line 394
    iget-object v0, p0, Lfr/testudo/spacecorsair/activity/MyShipActivity$9;->this$0:Lfr/testudo/spacecorsair/activity/MyShipActivity;

    # getter for: Lfr/testudo/spacecorsair/activity/MyShipActivity;->pickDialog:Landroid/app/Dialog;
    invoke-static {v0}, Lfr/testudo/spacecorsair/activity/MyShipActivity;->access$000(Lfr/testudo/spacecorsair/activity/MyShipActivity;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 395
    return-void
.end method
