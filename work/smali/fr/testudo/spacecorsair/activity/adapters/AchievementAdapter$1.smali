.class Lfr/testudo/spacecorsair/activity/adapters/AchievementAdapter$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lfr/testudo/spacecorsair/activity/adapters/AchievementAdapter;

.field final synthetic val$curAchieve:Lfr/testudo/spacecorsair/game/achievements/Achievement;


# direct methods
.method constructor <init>(Lfr/testudo/spacecorsair/activity/adapters/AchievementAdapter;Lfr/testudo/spacecorsair/game/achievements/Achievement;)V
    .registers 3

    .prologue
    .line 34
    iput-object p1, p0, Lfr/testudo/spacecorsair/activity/adapters/AchievementAdapter$1;->this$0:Lfr/testudo/spacecorsair/activity/adapters/AchievementAdapter;

    iput-object p2, p0, Lfr/testudo/spacecorsair/activity/adapters/AchievementAdapter$1;->val$curAchieve:Lfr/testudo/spacecorsair/game/achievements/Achievement;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4

    .prologue
    .line 37
    iget-object v0, p0, Lfr/testudo/spacecorsair/activity/adapters/AchievementAdapter$1;->this$0:Lfr/testudo/spacecorsair/activity/adapters/AchievementAdapter;

    # getter for: Lfr/testudo/spacecorsair/activity/adapters/AchievementAdapter;->clickListener:Lfr/testudo/spacecorsair/activity/AchievementClickListener;
    invoke-static {v0}, Lfr/testudo/spacecorsair/activity/adapters/AchievementAdapter;->access$000(Lfr/testudo/spacecorsair/activity/adapters/AchievementAdapter;)Lfr/testudo/spacecorsair/activity/AchievementClickListener;

    move-result-object v0

    iget-object v1, p0, Lfr/testudo/spacecorsair/activity/adapters/AchievementAdapter$1;->val$curAchieve:Lfr/testudo/spacecorsair/game/achievements/Achievement;

    invoke-interface {v0, v1}, Lfr/testudo/spacecorsair/activity/AchievementClickListener;->onAchevementClicked(Lfr/testudo/spacecorsair/game/achievements/Achievement;)V

    .line 38
    return-void
.end method
