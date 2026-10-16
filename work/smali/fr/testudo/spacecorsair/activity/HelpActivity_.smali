.class public final Lfr/testudo/spacecorsair/activity/HelpActivity_;
.super Lfr/testudo/spacecorsair/activity/HelpActivity;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lfr/testudo/spacecorsair/activity/HelpActivity_$IntentBuilder_;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 18
    invoke-direct {p0}, Lfr/testudo/spacecorsair/activity/HelpActivity;-><init>()V

    .line 75
    return-void
.end method

.method private afterSetContentView_()V
    .registers 3

    .prologue
    .line 37
    const v0, 0x7f0a002d

    invoke-virtual {p0, v0}, Lfr/testudo/spacecorsair/activity/HelpActivity_;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 38
    if-eqz v0, :cond_11

    .line 39
    new-instance v1, Lfr/testudo/spacecorsair/activity/HelpActivity_$1;

    invoke-direct {v1, p0}, Lfr/testudo/spacecorsair/activity/HelpActivity_$1;-><init>(Lfr/testudo/spacecorsair/activity/HelpActivity_;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 51
    :cond_11
    return-void
.end method

.method private init_(Landroid/os/Bundle;)V
    .registers 4

    .prologue
    const/16 v1, 0x400

    .line 31
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lfr/testudo/spacecorsair/activity/HelpActivity_;->requestWindowFeature(I)Z

    .line 32
    invoke-virtual {p0}, Lfr/testudo/spacecorsair/activity/HelpActivity_;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setFlags(II)V

    .line 33
    return-void
.end method

.method public static intent(Landroid/content/Context;)Lfr/testudo/spacecorsair/activity/HelpActivity_$IntentBuilder_;
    .registers 2

    .prologue
    .line 72
    new-instance v0, Lfr/testudo/spacecorsair/activity/HelpActivity_$IntentBuilder_;

    invoke-direct {v0, p0}, Lfr/testudo/spacecorsair/activity/HelpActivity_$IntentBuilder_;-><init>(Landroid/content/Context;)V

    return-object v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .registers 3

    .prologue
    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModLang;->apply(Landroid/app/Activity;)V
    .line 25
    invoke-direct {p0, p1}, Lfr/testudo/spacecorsair/activity/HelpActivity_;->init_(Landroid/os/Bundle;)V

    .line 26
    invoke-super {p0, p1}, Lfr/testudo/spacecorsair/activity/HelpActivity;->onCreate(Landroid/os/Bundle;)V

    .line 27
    const v0, 0x7f030006

    invoke-virtual {p0, v0}, Lfr/testudo/spacecorsair/activity/HelpActivity_;->setContentView(I)V

    .line 28
    return-void
.end method

.method public setContentView(I)V
    .registers 2

    .prologue
    .line 55
    invoke-super {p0, p1}, Lfr/testudo/spacecorsair/activity/HelpActivity;->setContentView(I)V

    .line 56
    invoke-direct {p0}, Lfr/testudo/spacecorsair/activity/HelpActivity_;->afterSetContentView_()V

    .line 57
    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .registers 2

    .prologue
    .line 67
    invoke-super {p0, p1}, Lfr/testudo/spacecorsair/activity/HelpActivity;->setContentView(Landroid/view/View;)V

    .line 68
    invoke-direct {p0}, Lfr/testudo/spacecorsair/activity/HelpActivity_;->afterSetContentView_()V

    .line 69
    return-void
.end method

.method public setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .registers 3

    .prologue
    .line 61
    invoke-super {p0, p1, p2}, Lfr/testudo/spacecorsair/activity/HelpActivity;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 62
    invoke-direct {p0}, Lfr/testudo/spacecorsair/activity/HelpActivity_;->afterSetContentView_()V

    .line 63
    return-void
.end method
