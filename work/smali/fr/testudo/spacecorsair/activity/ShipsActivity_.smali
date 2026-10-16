.class public final Lfr/testudo/spacecorsair/activity/ShipsActivity_;
.super Lfr/testudo/spacecorsair/activity/ShipsActivity;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lfr/testudo/spacecorsair/activity/ShipsActivity_$IntentBuilder_;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 22
    invoke-direct {p0}, Lfr/testudo/spacecorsair/activity/ShipsActivity;-><init>()V

    .line 167
    return-void
.end method

.method private afterSetContentView_()V
    .registers 4

    .prologue
    const v2, 0x7f0a00d0

    const v1, 0x7f0a009e

    .line 40
    const v0, 0x7f0a004b

    invoke-virtual {p0, v0}, Lfr/testudo/spacecorsair/activity/ShipsActivity_;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lfr/testudo/spacecorsair/activity/ShipsActivity_;->txtLevel:Landroid/widget/TextView;

    .line 41
    invoke-virtual {p0, v2}, Lfr/testudo/spacecorsair/activity/ShipsActivity_;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lfr/testudo/spacecorsair/activity/ShipsActivity_;->txtCreditsInApp:Landroid/widget/TextView;

    .line 42
    invoke-virtual {p0, v1}, Lfr/testudo/spacecorsair/activity/ShipsActivity_;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lfr/testudo/spacecorsair/activity/ShipsActivity_;->txtCredits:Landroid/widget/TextView;

    .line 43
    const v0, 0x7f0a0123

    invoke-virtual {p0, v0}, Lfr/testudo/spacecorsair/activity/ShipsActivity_;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lfr/testudo/spacecorsair/activity/pagerindicator/LinePageIndicator;

    iput-object v0, p0, Lfr/testudo/spacecorsair/activity/ShipsActivity_;->pageIndicator:Lfr/testudo/spacecorsair/activity/pagerindicator/LinePageIndicator;

    .line 45
    invoke-virtual {p0, v1}, Lfr/testudo/spacecorsair/activity/ShipsActivity_;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 46
    if-eqz v0, :cond_3a

    .line 47
    new-instance v1, Lfr/testudo/spacecorsair/activity/ShipsActivity_$1;

    invoke-direct {v1, p0}, Lfr/testudo/spacecorsair/activity/ShipsActivity_$1;-><init>(Lfr/testudo/spacecorsair/activity/ShipsActivity_;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 60
    :cond_3a
    const v0, 0x7f0a0018

    invoke-virtual {p0, v0}, Lfr/testudo/spacecorsair/activity/ShipsActivity_;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 61
    if-eqz v0, :cond_4b

    .line 62
    new-instance v1, Lfr/testudo/spacecorsair/activity/ShipsActivity_$2;

    invoke-direct {v1, p0}, Lfr/testudo/spacecorsair/activity/ShipsActivity_$2;-><init>(Lfr/testudo/spacecorsair/activity/ShipsActivity_;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 75
    :cond_4b
    const v0, 0x7f0a00cf

    invoke-virtual {p0, v0}, Lfr/testudo/spacecorsair/activity/ShipsActivity_;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 76
    if-eqz v0, :cond_5c

    .line 77
    new-instance v1, Lfr/testudo/spacecorsair/activity/ShipsActivity_$3;

    invoke-direct {v1, p0}, Lfr/testudo/spacecorsair/activity/ShipsActivity_$3;-><init>(Lfr/testudo/spacecorsair/activity/ShipsActivity_;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 90
    :cond_5c
    invoke-virtual {p0, v2}, Lfr/testudo/spacecorsair/activity/ShipsActivity_;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 91
    if-eqz v0, :cond_6a

    .line 92
    new-instance v1, Lfr/testudo/spacecorsair/activity/ShipsActivity_$4;

    invoke-direct {v1, p0}, Lfr/testudo/spacecorsair/activity/ShipsActivity_$4;-><init>(Lfr/testudo/spacecorsair/activity/ShipsActivity_;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 105
    :cond_6a
    const v0, 0x7f0a00d1

    invoke-virtual {p0, v0}, Lfr/testudo/spacecorsair/activity/ShipsActivity_;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 106
    if-eqz v0, :cond_7b

    .line 107
    new-instance v1, Lfr/testudo/spacecorsair/activity/ShipsActivity_$5;

    invoke-direct {v1, p0}, Lfr/testudo/spacecorsair/activity/ShipsActivity_$5;-><init>(Lfr/testudo/spacecorsair/activity/ShipsActivity_;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 120
    :cond_7b
    const v0, 0x7f0a00d2

    invoke-virtual {p0, v0}, Lfr/testudo/spacecorsair/activity/ShipsActivity_;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 121
    if-eqz v0, :cond_8c

    .line 122
    new-instance v1, Lfr/testudo/spacecorsair/activity/ShipsActivity_$6;

    invoke-direct {v1, p0}, Lfr/testudo/spacecorsair/activity/ShipsActivity_$6;-><init>(Lfr/testudo/spacecorsair/activity/ShipsActivity_;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 134
    :cond_8c
    invoke-virtual {p0}, Lfr/testudo/spacecorsair/activity/ShipsActivity_;->updateUI()V

    .line 135
    return-void
.end method

.method private init_(Landroid/os/Bundle;)V
    .registers 4

    .prologue
    const/16 v1, 0x400

    .line 35
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lfr/testudo/spacecorsair/activity/ShipsActivity_;->requestWindowFeature(I)Z

    .line 36
    invoke-virtual {p0}, Lfr/testudo/spacecorsair/activity/ShipsActivity_;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setFlags(II)V

    .line 37
    return-void
.end method

.method public static intent(Landroid/content/Context;)Lfr/testudo/spacecorsair/activity/ShipsActivity_$IntentBuilder_;
    .registers 2

    .prologue
    .line 164
    new-instance v0, Lfr/testudo/spacecorsair/activity/ShipsActivity_$IntentBuilder_;

    invoke-direct {v0, p0}, Lfr/testudo/spacecorsair/activity/ShipsActivity_$IntentBuilder_;-><init>(Landroid/content/Context;)V

    return-object v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .registers 3

    .prologue
    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModLang;->apply(Landroid/app/Activity;)V
    .line 29
    invoke-direct {p0, p1}, Lfr/testudo/spacecorsair/activity/ShipsActivity_;->init_(Landroid/os/Bundle;)V

    .line 30
    invoke-super {p0, p1}, Lfr/testudo/spacecorsair/activity/ShipsActivity;->onCreate(Landroid/os/Bundle;)V

    .line 31
    const v0, 0x7f03001a

    invoke-virtual {p0, v0}, Lfr/testudo/spacecorsair/activity/ShipsActivity_;->setContentView(I)V

    .line 32
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 5

    .prologue
    invoke-static {p0, p1, p2}, Lfr/testudo/spacecorsair/mod/ModShipTree;->onKey(Landroid/app/Activity;ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :mod_tree_pass

    return v0

    :mod_tree_pass
    .line 157
    invoke-static {}, Lcom/a/a/a/a;->a()I

    move-result v0

    const/4 v1, 0x5

    if-ge v0, v1, :cond_13

    const/4 v0, 0x4

    if-ne p1, v0, :cond_13

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_13

    .line 158
    invoke-virtual {p0}, Lfr/testudo/spacecorsair/activity/ShipsActivity_;->onBackPressed()V

    .line 160
    :cond_13
    invoke-super {p0, p1, p2}, Lfr/testudo/spacecorsair/activity/ShipsActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public setContentView(I)V
    .registers 2

    .prologue
    .line 139
    invoke-super {p0, p1}, Lfr/testudo/spacecorsair/activity/ShipsActivity;->setContentView(I)V

    .line 140
    invoke-direct {p0}, Lfr/testudo/spacecorsair/activity/ShipsActivity_;->afterSetContentView_()V

    .line 141
    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .registers 2

    .prologue
    .line 151
    invoke-super {p0, p1}, Lfr/testudo/spacecorsair/activity/ShipsActivity;->setContentView(Landroid/view/View;)V

    .line 152
    invoke-direct {p0}, Lfr/testudo/spacecorsair/activity/ShipsActivity_;->afterSetContentView_()V

    .line 153
    return-void
.end method

.method public setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .registers 3

    .prologue
    .line 145
    invoke-super {p0, p1, p2}, Lfr/testudo/spacecorsair/activity/ShipsActivity;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 146
    invoke-direct {p0}, Lfr/testudo/spacecorsair/activity/ShipsActivity_;->afterSetContentView_()V

    .line 147
    return-void
.end method
