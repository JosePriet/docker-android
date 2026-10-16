.class public Lfr/testudo/spacecorsair/utils/AchievementsDisplayer;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static achievementView:Landroid/view/View;

.field private static hideAchievementAnim:Landroid/view/animation/TranslateAnimation;

.field private static isAchievementDisplaying:Z

.field private static parentView:Landroid/view/ViewGroup;

.field private static showAchievementAnim:Landroid/view/animation/TranslateAnimation;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 20
    const/4 v0, 0x0

    sput-boolean v0, Lfr/testudo/spacecorsair/utils/AchievementsDisplayer;->isAchievementDisplaying:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Landroid/view/View;
    .registers 1

    .prologue
    .line 18
    sget-object v0, Lfr/testudo/spacecorsair/utils/AchievementsDisplayer;->achievementView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$002(Landroid/view/View;)Landroid/view/View;
    .registers 1

    .prologue
    .line 18
    sput-object p0, Lfr/testudo/spacecorsair/utils/AchievementsDisplayer;->achievementView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$100()Landroid/view/ViewGroup;
    .registers 1

    .prologue
    .line 18
    sget-object v0, Lfr/testudo/spacecorsair/utils/AchievementsDisplayer;->parentView:Landroid/view/ViewGroup;

    return-object v0
.end method

.method public static hideAchievement()V
    .registers 2

    .prologue
    .line 108
    sget-object v0, Lfr/testudo/spacecorsair/utils/AchievementsDisplayer;->achievementView:Landroid/view/View;

    if-nez v0, :cond_5

    .line 114
    :goto_4
    return-void

    .line 112
    :cond_5
    sget-object v0, Lfr/testudo/spacecorsair/utils/AchievementsDisplayer;->achievementView:Landroid/view/View;

    sget-object v1, Lfr/testudo/spacecorsair/utils/AchievementsDisplayer;->hideAchievementAnim:Landroid/view/animation/TranslateAnimation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 113
    const/4 v0, 0x0

    sput-boolean v0, Lfr/testudo/spacecorsair/utils/AchievementsDisplayer;->isAchievementDisplaying:Z

    goto :goto_4
.end method

.method private static init(Landroid/app/Activity;Landroid/view/ViewGroup;)V
    .registers 10

    .prologue
    const-wide/16 v6, 0x320

    const/high16 v5, -0x3d380000    # -100.0f

    const/4 v4, 0x0

    .line 32
    sput-object p1, Lfr/testudo/spacecorsair/utils/AchievementsDisplayer;->parentView:Landroid/view/ViewGroup;

    .line 34
    const/high16 v0, 0x7f030000

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    sput-object v0, Lfr/testudo/spacecorsair/utils/AchievementsDisplayer;->achievementView:Landroid/view/View;

    .line 35
    sget-object v0, Lfr/testudo/spacecorsair/utils/AchievementsDisplayer;->achievementView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 36
    sget-object v0, Lfr/testudo/spacecorsair/utils/AchievementsDisplayer;->achievementView:Landroid/view/View;

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 38
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    invoke-direct {v0, v4, v4, v5, v4}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    sput-object v0, Lfr/testudo/spacecorsair/utils/AchievementsDisplayer;->showAchievementAnim:Landroid/view/animation/TranslateAnimation;

    .line 39
    sget-object v0, Lfr/testudo/spacecorsair/utils/AchievementsDisplayer;->showAchievementAnim:Landroid/view/animation/TranslateAnimation;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/TranslateAnimation;->setFillAfter(Z)V

    .line 40
    sget-object v0, Lfr/testudo/spacecorsair/utils/AchievementsDisplayer;->showAchievementAnim:Landroid/view/animation/TranslateAnimation;

    invoke-virtual {v0, v6, v7}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 42
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    invoke-direct {v0, v4, v4, v4, v5}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    sput-object v0, Lfr/testudo/spacecorsair/utils/AchievementsDisplayer;->hideAchievementAnim:Landroid/view/animation/TranslateAnimation;

    .line 43
    sget-object v0, Lfr/testudo/spacecorsair/utils/AchievementsDisplayer;->hideAchievementAnim:Landroid/view/animation/TranslateAnimation;

    invoke-virtual {v0, v6, v7}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 44
    sget-object v0, Lfr/testudo/spacecorsair/utils/AchievementsDisplayer;->hideAchievementAnim:Landroid/view/animation/TranslateAnimation;

    new-instance v1, Lfr/testudo/spacecorsair/utils/AchievementsDisplayer$1;

    invoke-direct {v1, p1}, Lfr/testudo/spacecorsair/utils/AchievementsDisplayer$1;-><init>(Landroid/view/ViewGroup;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/TranslateAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 60
    return-void
.end method

.method public static isDisplaying()Z
    .registers 1

    .prologue
    .line 117
    sget-boolean v0, Lfr/testudo/spacecorsair/utils/AchievementsDisplayer;->isAchievementDisplaying:Z

    return v0
.end method

.method public static reset(Landroid/view/ViewGroup;)V
    .registers 3

    .prologue
    .line 63
    sget-object v0, Lfr/testudo/spacecorsair/utils/AchievementsDisplayer;->achievementView:Landroid/view/View;

    if-eqz v0, :cond_11

    .line 64
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lfr/testudo/spacecorsair/utils/AchievementsDisplayer$2;

    invoke-direct {v1, p0}, Lfr/testudo/spacecorsair/utils/AchievementsDisplayer$2;-><init>(Landroid/view/ViewGroup;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 71
    :cond_11
    const/4 v0, 0x0

    sput-boolean v0, Lfr/testudo/spacecorsair/utils/AchievementsDisplayer;->isAchievementDisplaying:Z

    .line 72
    return-void
.end method

.method public static showAchievement(Landroid/app/Activity;Lfr/testudo/spacecorsair/game/achievements/Achievement;Landroid/view/ViewGroup;)V
    .registers 7

    .prologue
    .line 76
    sget-object v0, Lfr/testudo/spacecorsair/utils/AchievementsDisplayer;->achievementView:Landroid/view/View;

    if-nez v0, :cond_7

    .line 77
    invoke-static {p0, p2}, Lfr/testudo/spacecorsair/utils/AchievementsDisplayer;->init(Landroid/app/Activity;Landroid/view/ViewGroup;)V

    .line 80
    :cond_7
    sget-object v0, Lfr/testudo/spacecorsair/utils/AchievementsDisplayer;->achievementView:Landroid/view/View;

    const v1, 0x7f0a0007

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 81
    iget v1, p1, Lfr/testudo/spacecorsair/game/achievements/Achievement;->drawable:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 83
    sget-object v0, Lfr/testudo/spacecorsair/utils/AchievementsDisplayer;->achievementView:Landroid/view/View;

    const v1, 0x7f0a0009

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 84
    sget-object v1, Lfr/testudo/spacecorsair/utils/AchievementsDisplayer;->achievementView:Landroid/view/View;

    const v2, 0x7f0a000a

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 85
    sget-object v2, Lfr/testudo/spacecorsair/utils/AchievementsDisplayer;->achievementView:Landroid/view/View;

    const v3, 0x7f0a000b

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 87
    iget v3, p1, Lfr/testudo/spacecorsair/game/achievements/Achievement;->name:I

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(I)V

    .line 88
    iget v0, p1, Lfr/testudo/spacecorsair/game/achievements/Achievement;->desc:I

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 90
    new-instance v0, Lfr/testudo/spacecorsair/utils/AchievementsDisplayer$3;

    invoke-direct {v0, p0}, Lfr/testudo/spacecorsair/utils/AchievementsDisplayer$3;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v2, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 102
    sget-object v0, Lfr/testudo/spacecorsair/utils/AchievementsDisplayer;->achievementView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 103
    sget-object v0, Lfr/testudo/spacecorsair/utils/AchievementsDisplayer;->achievementView:Landroid/view/View;

    sget-object v1, Lfr/testudo/spacecorsair/utils/AchievementsDisplayer;->showAchievementAnim:Landroid/view/animation/TranslateAnimation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 104
    const/4 v0, 0x1

    sput-boolean v0, Lfr/testudo/spacecorsair/utils/AchievementsDisplayer;->isAchievementDisplaying:Z

    .line 105
    return-void
.end method
