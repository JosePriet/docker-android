.class public final Lfr/testudo/spacecorsair/activity/StationActivity_;
.super Lfr/testudo/spacecorsair/activity/StationActivity;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lfr/testudo/spacecorsair/activity/StationActivity_$IntentBuilder_;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 20
    invoke-direct {p0}, Lfr/testudo/spacecorsair/activity/StationActivity;-><init>()V

    .line 208
    return-void
.end method

.method private afterSetContentView_()V
    .registers 6

    .prologue
    const v4, 0x7f0a0129

    const v1, 0x7f0a0128

    const v3, 0x7f0a00d0

    const v2, 0x7f0a009e

    .line 38
    invoke-virtual {p0, v1}, Lfr/testudo/spacecorsair/activity/StationActivity_;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lfr/testudo/spacecorsair/activity/StationActivity_;->txtBuyables:Landroid/widget/TextView;

    .line 39
    const v0, 0x7f0a012c

    invoke-virtual {p0, v0}, Lfr/testudo/spacecorsair/activity/StationActivity_;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lfr/testudo/spacecorsair/activity/StationActivity_;->txtStationName:Landroid/widget/TextView;

    .line 40
    invoke-virtual {p0, v4}, Lfr/testudo/spacecorsair/activity/StationActivity_;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lfr/testudo/spacecorsair/activity/StationActivity_;->txtSellables:Landroid/widget/TextView;

    .line 41
    const v0, 0x7f0a012a

    invoke-virtual {p0, v0}, Lfr/testudo/spacecorsair/activity/StationActivity_;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lfr/testudo/spacecorsair/activity/StationActivity_;->lstBuyables:Landroid/widget/ListView;

    .line 42
    const v0, 0x7f0a00d3

    invoke-virtual {p0, v0}, Lfr/testudo/spacecorsair/activity/StationActivity_;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lfr/testudo/spacecorsair/activity/StationActivity_;->txtSoute:Landroid/widget/TextView;

    .line 43
    invoke-virtual {p0, v2}, Lfr/testudo/spacecorsair/activity/StationActivity_;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lfr/testudo/spacecorsair/activity/StationActivity_;->txtCredits:Landroid/widget/TextView;

    .line 44
    const v0, 0x7f0a010a

    invoke-virtual {p0, v0}, Lfr/testudo/spacecorsair/activity/StationActivity_;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lfr/testudo/spacecorsair/activity/StationActivity_;->lstStore:Landroid/widget/ListView;

    .line 45
    const v0, 0x7f0a012b

    invoke-virtual {p0, v0}, Lfr/testudo/spacecorsair/activity/StationActivity_;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lfr/testudo/spacecorsair/activity/StationActivity_;->lstSellables:Landroid/widget/ListView;

    .line 46
    invoke-virtual {p0, v3}, Lfr/testudo/spacecorsair/activity/StationActivity_;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lfr/testudo/spacecorsair/activity/StationActivity_;->txtCreditsInApp:Landroid/widget/TextView;

    .line 48
    invoke-virtual {p0, v1}, Lfr/testudo/spacecorsair/activity/StationActivity_;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 49
    if-eqz v0, :cond_71

    .line 50
    new-instance v1, Lfr/testudo/spacecorsair/activity/StationActivity_$1;

    invoke-direct {v1, p0}, Lfr/testudo/spacecorsair/activity/StationActivity_$1;-><init>(Lfr/testudo/spacecorsair/activity/StationActivity_;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 63
    :cond_71
    invoke-virtual {p0, v4}, Lfr/testudo/spacecorsair/activity/StationActivity_;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 64
    if-eqz v0, :cond_7f

    .line 65
    new-instance v1, Lfr/testudo/spacecorsair/activity/StationActivity_$2;

    invoke-direct {v1, p0}, Lfr/testudo/spacecorsair/activity/StationActivity_$2;-><init>(Lfr/testudo/spacecorsair/activity/StationActivity_;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 78
    :cond_7f
    invoke-virtual {p0, v2}, Lfr/testudo/spacecorsair/activity/StationActivity_;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 79
    if-eqz v0, :cond_8d

    .line 80
    new-instance v1, Lfr/testudo/spacecorsair/activity/StationActivity_$3;

    invoke-direct {v1, p0}, Lfr/testudo/spacecorsair/activity/StationActivity_$3;-><init>(Lfr/testudo/spacecorsair/activity/StationActivity_;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 93
    :cond_8d
    const v0, 0x7f0a0018

    invoke-virtual {p0, v0}, Lfr/testudo/spacecorsair/activity/StationActivity_;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 94
    if-eqz v0, :cond_9e

    .line 95
    new-instance v1, Lfr/testudo/spacecorsair/activity/StationActivity_$4;

    invoke-direct {v1, p0}, Lfr/testudo/spacecorsair/activity/StationActivity_$4;-><init>(Lfr/testudo/spacecorsair/activity/StationActivity_;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 108
    :cond_9e
    const v0, 0x7f0a00cf

    invoke-virtual {p0, v0}, Lfr/testudo/spacecorsair/activity/StationActivity_;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 109
    if-eqz v0, :cond_af

    .line 110
    new-instance v1, Lfr/testudo/spacecorsair/activity/StationActivity_$5;

    invoke-direct {v1, p0}, Lfr/testudo/spacecorsair/activity/StationActivity_$5;-><init>(Lfr/testudo/spacecorsair/activity/StationActivity_;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 123
    :cond_af
    invoke-virtual {p0, v3}, Lfr/testudo/spacecorsair/activity/StationActivity_;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 124
    if-eqz v0, :cond_bd

    .line 125
    new-instance v1, Lfr/testudo/spacecorsair/activity/StationActivity_$6;

    invoke-direct {v1, p0}, Lfr/testudo/spacecorsair/activity/StationActivity_$6;-><init>(Lfr/testudo/spacecorsair/activity/StationActivity_;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 138
    :cond_bd
    const v0, 0x7f0a00d1

    invoke-virtual {p0, v0}, Lfr/testudo/spacecorsair/activity/StationActivity_;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 139
    if-eqz v0, :cond_ce

    .line 140
    new-instance v1, Lfr/testudo/spacecorsair/activity/StationActivity_$7;

    invoke-direct {v1, p0}, Lfr/testudo/spacecorsair/activity/StationActivity_$7;-><init>(Lfr/testudo/spacecorsair/activity/StationActivity_;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 153
    :cond_ce
    const v0, 0x7f0a00d2

    invoke-virtual {p0, v0}, Lfr/testudo/spacecorsair/activity/StationActivity_;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 154
    if-eqz v0, :cond_df

    .line 155
    new-instance v1, Lfr/testudo/spacecorsair/activity/StationActivity_$8;

    invoke-direct {v1, p0}, Lfr/testudo/spacecorsair/activity/StationActivity_$8;-><init>(Lfr/testudo/spacecorsair/activity/StationActivity_;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 168
    :cond_df
    const v0, 0x7f0a0107

    invoke-virtual {p0, v0}, Lfr/testudo/spacecorsair/activity/StationActivity_;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 169
    if-eqz v0, :cond_f0

    .line 170
    new-instance v1, Lfr/testudo/spacecorsair/activity/StationActivity_$9;

    invoke-direct {v1, p0}, Lfr/testudo/spacecorsair/activity/StationActivity_$9;-><init>(Lfr/testudo/spacecorsair/activity/StationActivity_;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 182
    :cond_f0
    invoke-virtual {p0}, Lfr/testudo/spacecorsair/activity/StationActivity_;->removeAdd()V

    .line 183
    invoke-virtual {p0}, Lfr/testudo/spacecorsair/activity/StationActivity_;->bindUI()V

    .line 184
    return-void
.end method

.method private init_(Landroid/os/Bundle;)V
    .registers 4

    .prologue
    const/16 v1, 0x400

    .line 33
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lfr/testudo/spacecorsair/activity/StationActivity_;->requestWindowFeature(I)Z

    .line 34
    invoke-virtual {p0}, Lfr/testudo/spacecorsair/activity/StationActivity_;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setFlags(II)V

    .line 35
    return-void
.end method

.method public static intent(Landroid/content/Context;)Lfr/testudo/spacecorsair/activity/StationActivity_$IntentBuilder_;
    .registers 2

    .prologue
    .line 205
    new-instance v0, Lfr/testudo/spacecorsair/activity/StationActivity_$IntentBuilder_;

    invoke-direct {v0, p0}, Lfr/testudo/spacecorsair/activity/StationActivity_$IntentBuilder_;-><init>(Landroid/content/Context;)V

    return-object v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .registers 3

    .prologue
    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModLang;->apply(Landroid/app/Activity;)V
    .line 27
    invoke-direct {p0, p1}, Lfr/testudo/spacecorsair/activity/StationActivity_;->init_(Landroid/os/Bundle;)V

    .line 28
    invoke-super {p0, p1}, Lfr/testudo/spacecorsair/activity/StationActivity;->onCreate(Landroid/os/Bundle;)V

    .line 29
    const v0, 0x7f03001d

    invoke-virtual {p0, v0}, Lfr/testudo/spacecorsair/activity/StationActivity_;->setContentView(I)V

    .line 30
    return-void
.end method

.method public setContentView(I)V
    .registers 2

    .prologue
    .line 188
    invoke-super {p0, p1}, Lfr/testudo/spacecorsair/activity/StationActivity;->setContentView(I)V

    .line 189
    invoke-direct {p0}, Lfr/testudo/spacecorsair/activity/StationActivity_;->afterSetContentView_()V

    .line 190
    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .registers 2

    .prologue
    .line 200
    invoke-super {p0, p1}, Lfr/testudo/spacecorsair/activity/StationActivity;->setContentView(Landroid/view/View;)V

    .line 201
    invoke-direct {p0}, Lfr/testudo/spacecorsair/activity/StationActivity_;->afterSetContentView_()V

    .line 202
    return-void
.end method

.method public setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .registers 3

    .prologue
    .line 194
    invoke-super {p0, p1, p2}, Lfr/testudo/spacecorsair/activity/StationActivity;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 195
    invoke-direct {p0}, Lfr/testudo/spacecorsair/activity/StationActivity_;->afterSetContentView_()V

    .line 196
    return-void
.end method
