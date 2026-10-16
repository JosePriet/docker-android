.class public final Lfr/testudo/spacecorsair/activity/CreditsActivity_;
.super Lfr/testudo/spacecorsair/activity/CreditsActivity;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lfr/testudo/spacecorsair/activity/CreditsActivity_$IntentBuilder_;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 20
    invoke-direct {p0}, Lfr/testudo/spacecorsair/activity/CreditsActivity;-><init>()V

    .line 84
    return-void
.end method

.method private afterSetContentView_()V
    .registers 3

    .prologue
    .line 38
    const v0, 0x7f0a0028

    invoke-virtual {p0, v0}, Lfr/testudo/spacecorsair/activity/CreditsActivity_;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lfr/testudo/spacecorsair/activity/CreditsActivity_;->layApp:Landroid/widget/LinearLayout;

    .line 39
    const v0, 0x7f0a0026

    invoke-virtual {p0, v0}, Lfr/testudo/spacecorsair/activity/CreditsActivity_;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ScrollView;

    iput-object v0, p0, Lfr/testudo/spacecorsair/activity/CreditsActivity_;->layoutScrollThanks:Landroid/widget/ScrollView;

    .line 40
    const v0, 0x7f0a0027

    invoke-virtual {p0, v0}, Lfr/testudo/spacecorsair/activity/CreditsActivity_;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lfr/testudo/spacecorsair/activity/CreditsActivity_;->layCredits:Landroid/widget/LinearLayout;

    .line 41
    const v0, 0x7f0a0029

    invoke-virtual {p0, v0}, Lfr/testudo/spacecorsair/activity/CreditsActivity_;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lfr/testudo/spacecorsair/activity/CreditsActivity_;->layDevTeam:Landroid/widget/LinearLayout;

    .line 42
    const v0, 0x7f0a002b

    invoke-virtual {p0, v0}, Lfr/testudo/spacecorsair/activity/CreditsActivity_;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lfr/testudo/spacecorsair/activity/CreditsActivity_;->layChangelog:Landroid/widget/LinearLayout;

    .line 43
    const v0, 0x7f0a002a

    invoke-virtual {p0, v0}, Lfr/testudo/spacecorsair/activity/CreditsActivity_;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lfr/testudo/spacecorsair/activity/CreditsActivity_;->laySpecialThanks:Landroid/widget/LinearLayout;

    .line 45
    const v0, 0x7f0a002c

    invoke-virtual {p0, v0}, Lfr/testudo/spacecorsair/activity/CreditsActivity_;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 46
    if-eqz v0, :cond_53

    .line 47
    new-instance v1, Lfr/testudo/spacecorsair/activity/CreditsActivity_$1;

    invoke-direct {v1, p0}, Lfr/testudo/spacecorsair/activity/CreditsActivity_$1;-><init>(Lfr/testudo/spacecorsair/activity/CreditsActivity_;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 59
    :cond_53
    invoke-virtual {p0}, Lfr/testudo/spacecorsair/activity/CreditsActivity_;->initViews()V

    .line 60
    return-void
.end method

.method private init_(Landroid/os/Bundle;)V
    .registers 4

    .prologue
    const/16 v1, 0x400

    .line 33
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lfr/testudo/spacecorsair/activity/CreditsActivity_;->requestWindowFeature(I)Z

    .line 34
    invoke-virtual {p0}, Lfr/testudo/spacecorsair/activity/CreditsActivity_;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setFlags(II)V

    .line 35
    return-void
.end method

.method public static intent(Landroid/content/Context;)Lfr/testudo/spacecorsair/activity/CreditsActivity_$IntentBuilder_;
    .registers 2

    .prologue
    .line 81
    new-instance v0, Lfr/testudo/spacecorsair/activity/CreditsActivity_$IntentBuilder_;

    invoke-direct {v0, p0}, Lfr/testudo/spacecorsair/activity/CreditsActivity_$IntentBuilder_;-><init>(Landroid/content/Context;)V

    return-object v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .registers 3

    .prologue
    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModLang;->apply(Landroid/app/Activity;)V
    .line 27
    invoke-direct {p0, p1}, Lfr/testudo/spacecorsair/activity/CreditsActivity_;->init_(Landroid/os/Bundle;)V

    .line 28
    invoke-super {p0, p1}, Lfr/testudo/spacecorsair/activity/CreditsActivity;->onCreate(Landroid/os/Bundle;)V

    .line 29
    const v0, 0x7f030005

    invoke-virtual {p0, v0}, Lfr/testudo/spacecorsair/activity/CreditsActivity_;->setContentView(I)V

    .line 30
    return-void
.end method

.method public setContentView(I)V
    .registers 2

    .prologue
    .line 64
    invoke-super {p0, p1}, Lfr/testudo/spacecorsair/activity/CreditsActivity;->setContentView(I)V

    .line 65
    invoke-direct {p0}, Lfr/testudo/spacecorsair/activity/CreditsActivity_;->afterSetContentView_()V

    .line 66
    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .registers 2

    .prologue
    .line 76
    invoke-super {p0, p1}, Lfr/testudo/spacecorsair/activity/CreditsActivity;->setContentView(Landroid/view/View;)V

    .line 77
    invoke-direct {p0}, Lfr/testudo/spacecorsair/activity/CreditsActivity_;->afterSetContentView_()V

    .line 78
    return-void
.end method

.method public setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .registers 3

    .prologue
    .line 70
    invoke-super {p0, p1, p2}, Lfr/testudo/spacecorsair/activity/CreditsActivity;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 71
    invoke-direct {p0}, Lfr/testudo/spacecorsair/activity/CreditsActivity_;->afterSetContentView_()V

    .line 72
    return-void
.end method
