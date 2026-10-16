.class final Lfr/testudo/spacecorsair/utils/AchievementsDisplayer$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic val$parentView:Landroid/view/ViewGroup;


# direct methods
.method constructor <init>(Landroid/view/ViewGroup;)V
    .registers 2

    .prologue
    .line 64
    iput-object p1, p0, Lfr/testudo/spacecorsair/utils/AchievementsDisplayer$2;->val$parentView:Landroid/view/ViewGroup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 66
    iget-object v0, p0, Lfr/testudo/spacecorsair/utils/AchievementsDisplayer$2;->val$parentView:Landroid/view/ViewGroup;

    # getter for: Lfr/testudo/spacecorsair/utils/AchievementsDisplayer;->achievementView:Landroid/view/View;
    invoke-static {}, Lfr/testudo/spacecorsair/utils/AchievementsDisplayer;->access$000()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 67
    const/4 v0, 0x0

    # setter for: Lfr/testudo/spacecorsair/utils/AchievementsDisplayer;->achievementView:Landroid/view/View;
    invoke-static {v0}, Lfr/testudo/spacecorsair/utils/AchievementsDisplayer;->access$002(Landroid/view/View;)Landroid/view/View;

    .line 68
    return-void
.end method
