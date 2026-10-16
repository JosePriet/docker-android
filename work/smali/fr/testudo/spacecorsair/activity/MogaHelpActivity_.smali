.class public final Lfr/testudo/spacecorsair/activity/MogaHelpActivity_;
.super Lfr/testudo/spacecorsair/activity/MogaHelpActivity;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lfr/testudo/spacecorsair/activity/MogaHelpActivity_$IntentBuilder_;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 19
    invoke-direct {p0}, Lfr/testudo/spacecorsair/activity/MogaHelpActivity;-><init>()V

    .line 78
    return-void
.end method

.method private afterSetContentView_()V
    .registers 3

    .prologue
    const v1, 0x7f0a00bc

    .line 37
    invoke-virtual {p0, v1}, Lfr/testudo/spacecorsair/activity/MogaHelpActivity_;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lfr/testudo/spacecorsair/activity/MogaHelpActivity_;->imgMogaControls:Landroid/widget/ImageView;

    .line 39
    invoke-virtual {p0, v1}, Lfr/testudo/spacecorsair/activity/MogaHelpActivity_;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 40
    if-eqz v0, :cond_19

    .line 41
    new-instance v1, Lfr/testudo/spacecorsair/activity/MogaHelpActivity_$1;

    invoke-direct {v1, p0}, Lfr/testudo/spacecorsair/activity/MogaHelpActivity_$1;-><init>(Lfr/testudo/spacecorsair/activity/MogaHelpActivity_;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 53
    :cond_19
    invoke-virtual {p0}, Lfr/testudo/spacecorsair/activity/MogaHelpActivity_;->bind()V

    .line 54
    return-void
.end method

.method private init_(Landroid/os/Bundle;)V
    .registers 4

    .prologue
    const/16 v1, 0x400

    .line 32
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lfr/testudo/spacecorsair/activity/MogaHelpActivity_;->requestWindowFeature(I)Z

    .line 33
    invoke-virtual {p0}, Lfr/testudo/spacecorsair/activity/MogaHelpActivity_;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setFlags(II)V

    .line 34
    return-void
.end method

.method public static intent(Landroid/content/Context;)Lfr/testudo/spacecorsair/activity/MogaHelpActivity_$IntentBuilder_;
    .registers 2

    .prologue
    .line 75
    new-instance v0, Lfr/testudo/spacecorsair/activity/MogaHelpActivity_$IntentBuilder_;

    invoke-direct {v0, p0}, Lfr/testudo/spacecorsair/activity/MogaHelpActivity_$IntentBuilder_;-><init>(Landroid/content/Context;)V

    return-object v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .registers 3

    .prologue
    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModLang;->apply(Landroid/app/Activity;)V
    .line 26
    invoke-direct {p0, p1}, Lfr/testudo/spacecorsair/activity/MogaHelpActivity_;->init_(Landroid/os/Bundle;)V

    .line 27
    invoke-super {p0, p1}, Lfr/testudo/spacecorsair/activity/MogaHelpActivity;->onCreate(Landroid/os/Bundle;)V

    .line 28
    const v0, 0x7f030012

    invoke-virtual {p0, v0}, Lfr/testudo/spacecorsair/activity/MogaHelpActivity_;->setContentView(I)V

    .line 29
    return-void
.end method

.method public setContentView(I)V
    .registers 2

    .prologue
    .line 58
    invoke-super {p0, p1}, Lfr/testudo/spacecorsair/activity/MogaHelpActivity;->setContentView(I)V

    .line 59
    invoke-direct {p0}, Lfr/testudo/spacecorsair/activity/MogaHelpActivity_;->afterSetContentView_()V

    .line 60
    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .registers 2

    .prologue
    .line 70
    invoke-super {p0, p1}, Lfr/testudo/spacecorsair/activity/MogaHelpActivity;->setContentView(Landroid/view/View;)V

    .line 71
    invoke-direct {p0}, Lfr/testudo/spacecorsair/activity/MogaHelpActivity_;->afterSetContentView_()V

    .line 72
    return-void
.end method

.method public setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .registers 3

    .prologue
    .line 64
    invoke-super {p0, p1, p2}, Lfr/testudo/spacecorsair/activity/MogaHelpActivity;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 65
    invoke-direct {p0}, Lfr/testudo/spacecorsair/activity/MogaHelpActivity_;->afterSetContentView_()V

    .line 66
    return-void
.end method
