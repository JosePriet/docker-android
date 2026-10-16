.class final Lfr/testudo/spacecorsair/utils/AchievementsDisplayer$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic val$context:Landroid/app/Activity;


# direct methods
.method constructor <init>(Landroid/app/Activity;)V
    .registers 2

    .prologue
    .line 90
    iput-object p1, p0, Lfr/testudo/spacecorsair/utils/AchievementsDisplayer$3;->val$context:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5

    .prologue
    .line 93
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lfr/testudo/spacecorsair/utils/AchievementsDisplayer$3;->val$context:Landroid/app/Activity;

    const-class v2, Lfr/testudo/spacecorsair/activity/AchievementActivity_;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 94
    iget-object v1, p0, Lfr/testudo/spacecorsair/utils/AchievementsDisplayer$3;->val$context:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 96
    # getter for: Lfr/testudo/spacecorsair/utils/AchievementsDisplayer;->achievementView:Landroid/view/View;
    invoke-static {}, Lfr/testudo/spacecorsair/utils/AchievementsDisplayer;->access$000()Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 97
    # getter for: Lfr/testudo/spacecorsair/utils/AchievementsDisplayer;->parentView:Landroid/view/ViewGroup;
    invoke-static {}, Lfr/testudo/spacecorsair/utils/AchievementsDisplayer;->access$100()Landroid/view/ViewGroup;

    move-result-object v0

    invoke-static {v0}, Lfr/testudo/spacecorsair/utils/AchievementsDisplayer;->reset(Landroid/view/ViewGroup;)V

    .line 98
    return-void
.end method
