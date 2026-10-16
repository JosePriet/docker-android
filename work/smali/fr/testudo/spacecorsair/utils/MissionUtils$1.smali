.class final Lfr/testudo/spacecorsair/utils/MissionUtils$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3

    .prologue
    .line 50
    # getter for: Lfr/testudo/spacecorsair/utils/MissionUtils;->rewardDetailDialog:Landroid/app/Dialog;
    invoke-static {}, Lfr/testudo/spacecorsair/utils/MissionUtils;->access$000()Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 51
    # getter for: Lfr/testudo/spacecorsair/utils/MissionUtils;->rewardDetailDialog:Landroid/app/Dialog;
    invoke-static {}, Lfr/testudo/spacecorsair/utils/MissionUtils;->access$000()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->cancel()V

    .line 52
    const/4 v0, 0x0

    # setter for: Lfr/testudo/spacecorsair/utils/MissionUtils;->rewardDetailDialog:Landroid/app/Dialog;
    invoke-static {v0}, Lfr/testudo/spacecorsair/utils/MissionUtils;->access$002(Landroid/app/Dialog;)Landroid/app/Dialog;

    .line 54
    :cond_11
    return-void
.end method
