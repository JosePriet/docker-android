.class public Lfr/testudo/spacecorsair/activity/viewgroup/AchievementItem;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# instance fields
.field imgAchivement:Landroid/widget/ImageView;

.field imgShare:Landroid/widget/ImageView;

.field layAchievementItem:Landroid/widget/RelativeLayout;

.field layProgress:Landroid/widget/RelativeLayout;

.field pgbProgress:Landroid/widget/ProgressBar;

.field public txtAchievementDesc:Landroid/widget/TextView;

.field public txtAchievementName:Landroid/widget/TextView;

.field public txtProgress:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .prologue
    .line 30
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 31
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    .prologue
    .line 34
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 35
    return-void
.end method

.method public static getHeader(Landroid/content/Context;)Landroid/view/View;
    .registers 3

    .prologue
    .line 65
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 66
    const/high16 v1, 0x42200000    # 40.0f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 67
    const-string v1, "  "

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 68
    return-object v0
.end method


# virtual methods
.method public bind(Lfr/testudo/spacecorsair/game/achievements/Achievement;)V
    .registers 6

    .prologue
    const/16 v2, 0x8

    .line 39
    iget-object v0, p0, Lfr/testudo/spacecorsair/activity/viewgroup/AchievementItem;->txtAchievementName:Landroid/widget/TextView;

    iget v1, p1, Lfr/testudo/spacecorsair/game/achievements/Achievement;->name:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 40
    iget-object v0, p0, Lfr/testudo/spacecorsair/activity/viewgroup/AchievementItem;->txtAchievementDesc:Landroid/widget/TextView;

    iget v1, p1, Lfr/testudo/spacecorsair/game/achievements/Achievement;->desc:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 42
    iget-boolean v0, p1, Lfr/testudo/spacecorsair/game/achievements/Achievement;->done:Z

    if-eqz v0, :cond_2f

    .line 43
    iget-object v0, p0, Lfr/testudo/spacecorsair/activity/viewgroup/AchievementItem;->layProgress:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 44
    iget-object v0, p0, Lfr/testudo/spacecorsair/activity/viewgroup/AchievementItem;->imgShare:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 45
    iget-object v0, p0, Lfr/testudo/spacecorsair/activity/viewgroup/AchievementItem;->layAchievementItem:Landroid/widget/RelativeLayout;

    const v1, 0x7f020031

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    .line 46
    iget-object v0, p0, Lfr/testudo/spacecorsair/activity/viewgroup/AchievementItem;->imgAchivement:Landroid/widget/ImageView;

    iget v1, p1, Lfr/testudo/spacecorsair/game/achievements/Achievement;->drawable:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 60
    :goto_2e
    return-void

    .line 48
    :cond_2f
    iget-object v0, p0, Lfr/testudo/spacecorsair/activity/viewgroup/AchievementItem;->imgShare:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 49
    iget-object v0, p0, Lfr/testudo/spacecorsair/activity/viewgroup/AchievementItem;->imgAchivement:Landroid/widget/ImageView;

    const/high16 v1, 0x7f020000

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 51
    iget-object v0, p1, Lfr/testudo/spacecorsair/game/achievements/Achievement;->kind:Lfr/testudo/spacecorsair/game/achievements/AchievementKind;

    sget-object v1, Lfr/testudo/spacecorsair/game/achievements/AchievementKind;->quantitative:Lfr/testudo/spacecorsair/game/achievements/AchievementKind;

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/game/achievements/AchievementKind;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7e

    .line 52
    iget-object v0, p0, Lfr/testudo/spacecorsair/activity/viewgroup/AchievementItem;->pgbProgress:Landroid/widget/ProgressBar;

    iget-wide v2, p1, Lfr/testudo/spacecorsair/game/achievements/Achievement;->thresold:J

    long-to-int v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 53
    iget-object v0, p0, Lfr/testudo/spacecorsair/activity/viewgroup/AchievementItem;->pgbProgress:Landroid/widget/ProgressBar;

    iget-wide v2, p1, Lfr/testudo/spacecorsair/game/achievements/Achievement;->value:J

    long-to-int v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 54
    iget-object v0, p0, Lfr/testudo/spacecorsair/activity/viewgroup/AchievementItem;->pgbProgress:Landroid/widget/ProgressBar;

    iget-wide v2, p1, Lfr/testudo/spacecorsair/game/achievements/Achievement;->thresold:J

    long-to-int v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setSecondaryProgress(I)V

    .line 55
    iget-object v0, p0, Lfr/testudo/spacecorsair/activity/viewgroup/AchievementItem;->txtProgress:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v2, p1, Lfr/testudo/spacecorsair/game/achievements/Achievement;->value:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " / "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p1, Lfr/testudo/spacecorsair/game/achievements/Achievement;->thresold:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2e

    .line 57
    :cond_7e
    iget-object v0, p0, Lfr/testudo/spacecorsair/activity/viewgroup/AchievementItem;->layProgress:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_2e
.end method
