.class public final Lfr/testudo/spacecorsair/activity/StatsActivity_;
.super Lfr/testudo/spacecorsair/activity/StatsActivity;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lfr/testudo/spacecorsair/activity/StatsActivity_$IntentBuilder_;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 18
    invoke-direct {p0}, Lfr/testudo/spacecorsair/activity/StatsActivity;-><init>()V

    .line 62
    return-void
.end method

.method private afterSetContentView_()V
    .registers 2

    .prologue
    .line 36
    const v0, 0x7f0a012d

    invoke-virtual {p0, v0}, Lfr/testudo/spacecorsair/activity/StatsActivity_;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lfr/testudo/spacecorsair/activity/StatsActivity_;->listStatItems:Landroid/widget/ListView;

    .line 37
    invoke-virtual {p0}, Lfr/testudo/spacecorsair/activity/StatsActivity_;->bindUI()V

    .line 38
    return-void
.end method

.method private init_(Landroid/os/Bundle;)V
    .registers 4

    .prologue
    const/16 v1, 0x400

    .line 31
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lfr/testudo/spacecorsair/activity/StatsActivity_;->requestWindowFeature(I)Z

    .line 32
    invoke-virtual {p0}, Lfr/testudo/spacecorsair/activity/StatsActivity_;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setFlags(II)V

    .line 33
    return-void
.end method

.method public static intent(Landroid/content/Context;)Lfr/testudo/spacecorsair/activity/StatsActivity_$IntentBuilder_;
    .registers 2

    .prologue
    .line 59
    new-instance v0, Lfr/testudo/spacecorsair/activity/StatsActivity_$IntentBuilder_;

    invoke-direct {v0, p0}, Lfr/testudo/spacecorsair/activity/StatsActivity_$IntentBuilder_;-><init>(Landroid/content/Context;)V

    return-object v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .registers 3

    .prologue
    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModLang;->apply(Landroid/app/Activity;)V
    .line 25
    invoke-direct {p0, p1}, Lfr/testudo/spacecorsair/activity/StatsActivity_;->init_(Landroid/os/Bundle;)V

    .line 26
    invoke-super {p0, p1}, Lfr/testudo/spacecorsair/activity/StatsActivity;->onCreate(Landroid/os/Bundle;)V

    .line 27
    const v0, 0x7f03001e

    invoke-virtual {p0, v0}, Lfr/testudo/spacecorsair/activity/StatsActivity_;->setContentView(I)V

    .line 28
    return-void
.end method

.method public setContentView(I)V
    .registers 2

    .prologue
    .line 42
    invoke-super {p0, p1}, Lfr/testudo/spacecorsair/activity/StatsActivity;->setContentView(I)V

    .line 43
    invoke-direct {p0}, Lfr/testudo/spacecorsair/activity/StatsActivity_;->afterSetContentView_()V

    .line 44
    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .registers 2

    .prologue
    .line 54
    invoke-super {p0, p1}, Lfr/testudo/spacecorsair/activity/StatsActivity;->setContentView(Landroid/view/View;)V

    .line 55
    invoke-direct {p0}, Lfr/testudo/spacecorsair/activity/StatsActivity_;->afterSetContentView_()V

    .line 56
    return-void
.end method

.method public setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .registers 3

    .prologue
    .line 48
    invoke-super {p0, p1, p2}, Lfr/testudo/spacecorsair/activity/StatsActivity;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 49
    invoke-direct {p0}, Lfr/testudo/spacecorsair/activity/StatsActivity_;->afterSetContentView_()V

    .line 50
    return-void
.end method
