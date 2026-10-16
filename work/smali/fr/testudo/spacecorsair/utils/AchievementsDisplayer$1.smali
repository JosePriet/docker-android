.class final Lfr/testudo/spacecorsair/utils/AchievementsDisplayer$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# instance fields
.field final synthetic val$parentView:Landroid/view/ViewGroup;


# direct methods
.method constructor <init>(Landroid/view/ViewGroup;)V
    .registers 2

    .prologue
    .line 44
    iput-object p1, p0, Lfr/testudo/spacecorsair/utils/AchievementsDisplayer$1;->val$parentView:Landroid/view/ViewGroup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .registers 4

    .prologue
    .line 51
    # getter for: Lfr/testudo/spacecorsair/utils/AchievementsDisplayer;->achievementView:Landroid/view/View;
    invoke-static {}, Lfr/testudo/spacecorsair/utils/AchievementsDisplayer;->access$000()Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 52
    iget-object v0, p0, Lfr/testudo/spacecorsair/utils/AchievementsDisplayer$1;->val$parentView:Landroid/view/ViewGroup;

    invoke-static {v0}, Lfr/testudo/spacecorsair/utils/AchievementsDisplayer;->reset(Landroid/view/ViewGroup;)V

    .line 53
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .registers 2

    .prologue
    .line 57
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .registers 2

    .prologue
    .line 47
    return-void
.end method
