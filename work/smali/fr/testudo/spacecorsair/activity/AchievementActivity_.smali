.class public final Lfr/testudo/spacecorsair/activity/AchievementActivity_;
.super Lfr/testudo/spacecorsair/activity/AchievementActivity;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lfr/testudo/spacecorsair/activity/AchievementActivity_$IntentBuilder_;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 18
    invoke-direct {p0}, Lfr/testudo/spacecorsair/activity/AchievementActivity;-><init>()V

    .line 63
    return-void
.end method

.method private afterSetContentView_()V
    .registers 2

    .prologue
    .line 36
    const v0, 0x7f0a0013

    invoke-virtual {p0, v0}, Lfr/testudo/spacecorsair/activity/AchievementActivity_;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lfr/testudo/spacecorsair/activity/AchievementActivity_;->listAchievements:Landroid/widget/ListView;

    .line 37
    invoke-virtual {p0}, Lfr/testudo/spacecorsair/activity/AchievementActivity_;->removeAdd()V

    .line 38
    invoke-virtual {p0}, Lfr/testudo/spacecorsair/activity/AchievementActivity_;->bindUI()V

    .line 39
    return-void
.end method

.method private init_(Landroid/os/Bundle;)V
    .registers 4

    .prologue
    const/16 v1, 0x400

    .line 31
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lfr/testudo/spacecorsair/activity/AchievementActivity_;->requestWindowFeature(I)Z

    .line 32
    invoke-virtual {p0}, Lfr/testudo/spacecorsair/activity/AchievementActivity_;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setFlags(II)V

    .line 33
    return-void
.end method

.method public static intent(Landroid/content/Context;)Lfr/testudo/spacecorsair/activity/AchievementActivity_$IntentBuilder_;
    .registers 2

    .prologue
    .line 60
    new-instance v0, Lfr/testudo/spacecorsair/activity/AchievementActivity_$IntentBuilder_;

    invoke-direct {v0, p0}, Lfr/testudo/spacecorsair/activity/AchievementActivity_$IntentBuilder_;-><init>(Landroid/content/Context;)V

    return-object v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .registers 3

    .prologue
    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModLang;->apply(Landroid/app/Activity;)V
    .line 25
    invoke-direct {p0, p1}, Lfr/testudo/spacecorsair/activity/AchievementActivity_;->init_(Landroid/os/Bundle;)V

    .line 26
    invoke-super {p0, p1}, Lfr/testudo/spacecorsair/activity/AchievementActivity;->onCreate(Landroid/os/Bundle;)V

    .line 27
    const v0, 0x7f030002

    invoke-virtual {p0, v0}, Lfr/testudo/spacecorsair/activity/AchievementActivity_;->setContentView(I)V

    .line 28
    return-void
.end method

.method public setContentView(I)V
    .registers 2

    .prologue
    .line 43
    invoke-super {p0, p1}, Lfr/testudo/spacecorsair/activity/AchievementActivity;->setContentView(I)V

    .line 44
    invoke-direct {p0}, Lfr/testudo/spacecorsair/activity/AchievementActivity_;->afterSetContentView_()V

    .line 45
    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .registers 2

    .prologue
    .line 55
    invoke-super {p0, p1}, Lfr/testudo/spacecorsair/activity/AchievementActivity;->setContentView(Landroid/view/View;)V

    .line 56
    invoke-direct {p0}, Lfr/testudo/spacecorsair/activity/AchievementActivity_;->afterSetContentView_()V

    .line 57
    return-void
.end method

.method public setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .registers 3

    .prologue
    .line 49
    invoke-super {p0, p1, p2}, Lfr/testudo/spacecorsair/activity/AchievementActivity;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 50
    invoke-direct {p0}, Lfr/testudo/spacecorsair/activity/AchievementActivity_;->afterSetContentView_()V

    .line 51
    return-void
.end method
