.class Lfr/testudo/spacecorsair/activity/AchievementActivity$2$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$1:Lfr/testudo/spacecorsair/activity/AchievementActivity$2;


# direct methods
.method constructor <init>(Lfr/testudo/spacecorsair/activity/AchievementActivity$2;)V
    .registers 2

    .prologue
    .line 103
    iput-object p1, p0, Lfr/testudo/spacecorsair/activity/AchievementActivity$2$1;->this$1:Lfr/testudo/spacecorsair/activity/AchievementActivity$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .prologue
    .line 107
    iget-object v0, p0, Lfr/testudo/spacecorsair/activity/AchievementActivity$2$1;->this$1:Lfr/testudo/spacecorsair/activity/AchievementActivity$2;

    iget-object v0, v0, Lfr/testudo/spacecorsair/activity/AchievementActivity$2;->this$0:Lfr/testudo/spacecorsair/activity/AchievementActivity;

    iget v0, v0, Lfr/testudo/spacecorsair/activity/AchievementActivity;->currentListPos:I

    .line 109
    sget v1, Lfr/testudo/spacecorsair/activity/AchievementActivity;->mogaYScroll:I

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    int-to-float v1, v1

    const v2, 0x3dcccccd    # 0.1f

    cmpg-float v1, v1, v2

    if-gez v1, :cond_37

    .line 110
    iget-object v1, p0, Lfr/testudo/spacecorsair/activity/AchievementActivity$2$1;->this$1:Lfr/testudo/spacecorsair/activity/AchievementActivity$2;

    iget-object v1, v1, Lfr/testudo/spacecorsair/activity/AchievementActivity$2;->this$0:Lfr/testudo/spacecorsair/activity/AchievementActivity;

    iget-object v2, p0, Lfr/testudo/spacecorsair/activity/AchievementActivity$2$1;->this$1:Lfr/testudo/spacecorsair/activity/AchievementActivity$2;

    iget-object v2, v2, Lfr/testudo/spacecorsair/activity/AchievementActivity$2;->this$0:Lfr/testudo/spacecorsair/activity/AchievementActivity;

    iget v2, v2, Lfr/testudo/spacecorsair/activity/AchievementActivity;->currentListPos:I

    int-to-float v2, v2

    iput v2, v1, Lfr/testudo/spacecorsair/activity/AchievementActivity;->currentListPosMoga:F

    .line 122
    :cond_21
    :goto_21
    iget-object v1, p0, Lfr/testudo/spacecorsair/activity/AchievementActivity$2$1;->this$1:Lfr/testudo/spacecorsair/activity/AchievementActivity$2;

    iget-object v1, v1, Lfr/testudo/spacecorsair/activity/AchievementActivity$2;->this$0:Lfr/testudo/spacecorsair/activity/AchievementActivity;

    iget v1, v1, Lfr/testudo/spacecorsair/activity/AchievementActivity;->currentListPos:I

    if-eq v1, v0, :cond_36

    .line 123
    iget-object v0, p0, Lfr/testudo/spacecorsair/activity/AchievementActivity$2$1;->this$1:Lfr/testudo/spacecorsair/activity/AchievementActivity$2;

    iget-object v0, v0, Lfr/testudo/spacecorsair/activity/AchievementActivity$2;->val$list:Landroid/widget/ListView;

    iget-object v1, p0, Lfr/testudo/spacecorsair/activity/AchievementActivity$2$1;->this$1:Lfr/testudo/spacecorsair/activity/AchievementActivity$2;

    iget-object v1, v1, Lfr/testudo/spacecorsair/activity/AchievementActivity$2;->this$0:Lfr/testudo/spacecorsair/activity/AchievementActivity;

    iget v1, v1, Lfr/testudo/spacecorsair/activity/AchievementActivity;->currentListPos:I

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->smoothScrollToPosition(I)V

    .line 125
    :cond_36
    return-void

    .line 112
    :cond_37
    iget-object v1, p0, Lfr/testudo/spacecorsair/activity/AchievementActivity$2$1;->this$1:Lfr/testudo/spacecorsair/activity/AchievementActivity$2;

    iget-object v1, v1, Lfr/testudo/spacecorsair/activity/AchievementActivity$2;->this$0:Lfr/testudo/spacecorsair/activity/AchievementActivity;

    iget v2, v1, Lfr/testudo/spacecorsair/activity/AchievementActivity;->currentListPosMoga:F

    sget v3, Lfr/testudo/spacecorsair/activity/AchievementActivity;->mogaYScroll:I

    int-to-float v3, v3

    const/high16 v4, 0x42700000    # 60.0f

    div-float/2addr v3, v4

    add-float/2addr v2, v3

    iput v2, v1, Lfr/testudo/spacecorsair/activity/AchievementActivity;->currentListPosMoga:F

    .line 113
    iget-object v1, p0, Lfr/testudo/spacecorsair/activity/AchievementActivity$2$1;->this$1:Lfr/testudo/spacecorsair/activity/AchievementActivity$2;

    iget-object v1, v1, Lfr/testudo/spacecorsair/activity/AchievementActivity$2;->this$0:Lfr/testudo/spacecorsair/activity/AchievementActivity;

    iget-object v2, p0, Lfr/testudo/spacecorsair/activity/AchievementActivity$2$1;->this$1:Lfr/testudo/spacecorsair/activity/AchievementActivity$2;

    iget-object v2, v2, Lfr/testudo/spacecorsair/activity/AchievementActivity$2;->this$0:Lfr/testudo/spacecorsair/activity/AchievementActivity;

    iget v2, v2, Lfr/testudo/spacecorsair/activity/AchievementActivity;->currentListPosMoga:F

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    iput v2, v1, Lfr/testudo/spacecorsair/activity/AchievementActivity;->currentListPos:I

    .line 114
    iget-object v1, p0, Lfr/testudo/spacecorsair/activity/AchievementActivity$2$1;->this$1:Lfr/testudo/spacecorsair/activity/AchievementActivity$2;

    iget-object v1, v1, Lfr/testudo/spacecorsair/activity/AchievementActivity$2;->this$0:Lfr/testudo/spacecorsair/activity/AchievementActivity;

    iget v1, v1, Lfr/testudo/spacecorsair/activity/AchievementActivity;->currentListPos:I

    if-gez v1, :cond_65

    .line 115
    iget-object v1, p0, Lfr/testudo/spacecorsair/activity/AchievementActivity$2$1;->this$1:Lfr/testudo/spacecorsair/activity/AchievementActivity$2;

    iget-object v1, v1, Lfr/testudo/spacecorsair/activity/AchievementActivity$2;->this$0:Lfr/testudo/spacecorsair/activity/AchievementActivity;

    const/4 v2, 0x0

    iput v2, v1, Lfr/testudo/spacecorsair/activity/AchievementActivity;->currentListPos:I

    .line 117
    :cond_65
    iget-object v1, p0, Lfr/testudo/spacecorsair/activity/AchievementActivity$2$1;->this$1:Lfr/testudo/spacecorsair/activity/AchievementActivity$2;

    iget-object v1, v1, Lfr/testudo/spacecorsair/activity/AchievementActivity$2;->this$0:Lfr/testudo/spacecorsair/activity/AchievementActivity;

    iget v1, v1, Lfr/testudo/spacecorsair/activity/AchievementActivity;->currentListPos:I

    iget-object v2, p0, Lfr/testudo/spacecorsair/activity/AchievementActivity$2$1;->this$1:Lfr/testudo/spacecorsair/activity/AchievementActivity$2;

    iget-object v2, v2, Lfr/testudo/spacecorsair/activity/AchievementActivity$2;->val$list:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v2

    invoke-interface {v2}, Landroid/widget/ListAdapter;->getCount()I

    move-result v2

    if-lt v1, v2, :cond_21

    .line 118
    iget-object v1, p0, Lfr/testudo/spacecorsair/activity/AchievementActivity$2$1;->this$1:Lfr/testudo/spacecorsair/activity/AchievementActivity$2;

    iget-object v1, v1, Lfr/testudo/spacecorsair/activity/AchievementActivity$2;->this$0:Lfr/testudo/spacecorsair/activity/AchievementActivity;

    iget-object v2, p0, Lfr/testudo/spacecorsair/activity/AchievementActivity$2$1;->this$1:Lfr/testudo/spacecorsair/activity/AchievementActivity$2;

    iget-object v2, v2, Lfr/testudo/spacecorsair/activity/AchievementActivity$2;->val$list:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v2

    invoke-interface {v2}, Landroid/widget/ListAdapter;->getCount()I

    move-result v2

    iput v2, v1, Lfr/testudo/spacecorsair/activity/AchievementActivity;->currentListPos:I

    goto :goto_21
.end method
