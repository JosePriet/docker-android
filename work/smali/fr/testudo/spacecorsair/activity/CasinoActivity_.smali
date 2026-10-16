.class public final Lfr/testudo/spacecorsair/activity/CasinoActivity_;
.super Lfr/testudo/spacecorsair/activity/CasinoActivity;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lfr/testudo/spacecorsair/activity/CasinoActivity_$IntentBuilder_;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 16
    invoke-direct {p0}, Lfr/testudo/spacecorsair/activity/CasinoActivity;-><init>()V

    .line 58
    return-void
.end method

.method private afterSetContentView_()V
    .registers 1

    .prologue
    .line 34
    return-void
.end method

.method private init_(Landroid/os/Bundle;)V
    .registers 4

    .prologue
    const/16 v1, 0x400

    .line 29
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lfr/testudo/spacecorsair/activity/CasinoActivity_;->requestWindowFeature(I)Z

    .line 30
    invoke-virtual {p0}, Lfr/testudo/spacecorsair/activity/CasinoActivity_;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setFlags(II)V

    .line 31
    return-void
.end method

.method public static intent(Landroid/content/Context;)Lfr/testudo/spacecorsair/activity/CasinoActivity_$IntentBuilder_;
    .registers 2

    .prologue
    .line 55
    new-instance v0, Lfr/testudo/spacecorsair/activity/CasinoActivity_$IntentBuilder_;

    invoke-direct {v0, p0}, Lfr/testudo/spacecorsair/activity/CasinoActivity_$IntentBuilder_;-><init>(Landroid/content/Context;)V

    return-object v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .registers 3

    .prologue
    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModLang;->apply(Landroid/app/Activity;)V
    .line 23
    invoke-direct {p0, p1}, Lfr/testudo/spacecorsair/activity/CasinoActivity_;->init_(Landroid/os/Bundle;)V

    .line 24
    invoke-super {p0, p1}, Lfr/testudo/spacecorsair/activity/CasinoActivity;->onCreate(Landroid/os/Bundle;)V

    .line 25
    const v0, 0x7f030004

    invoke-virtual {p0, v0}, Lfr/testudo/spacecorsair/activity/CasinoActivity_;->setContentView(I)V

    .line 26
    return-void
.end method

.method public setContentView(I)V
    .registers 2

    .prologue
    .line 38
    invoke-super {p0, p1}, Lfr/testudo/spacecorsair/activity/CasinoActivity;->setContentView(I)V

    .line 39
    invoke-direct {p0}, Lfr/testudo/spacecorsair/activity/CasinoActivity_;->afterSetContentView_()V

    .line 40
    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .registers 2

    .prologue
    .line 50
    invoke-super {p0, p1}, Lfr/testudo/spacecorsair/activity/CasinoActivity;->setContentView(Landroid/view/View;)V

    .line 51
    invoke-direct {p0}, Lfr/testudo/spacecorsair/activity/CasinoActivity_;->afterSetContentView_()V

    .line 52
    return-void
.end method

.method public setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .registers 3

    .prologue
    .line 44
    invoke-super {p0, p1, p2}, Lfr/testudo/spacecorsair/activity/CasinoActivity;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 45
    invoke-direct {p0}, Lfr/testudo/spacecorsair/activity/CasinoActivity_;->afterSetContentView_()V

    .line 46
    return-void
.end method
