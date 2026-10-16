.class public final Lfr/testudo/spacecorsair/activity/BuyInapp_;
.super Lfr/testudo/spacecorsair/activity/BuyInapp;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lfr/testudo/spacecorsair/activity/BuyInapp_$IntentBuilder_;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 20
    invoke-direct {p0}, Lfr/testudo/spacecorsair/activity/BuyInapp;-><init>()V

    .line 183
    return-void
.end method

.method static synthetic access$001(Lfr/testudo/spacecorsair/activity/BuyInapp_;IILandroid/content/Intent;)V
    .registers 4

    .prologue
    .line 20
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    return-void
.end method

.method private afterSetContentView_()V
    .registers 3

    .prologue
    .line 38
    const v0, 0x7f0a0019

    invoke-virtual {p0, v0}, Lfr/testudo/spacecorsair/activity/BuyInapp_;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lfr/testudo/spacecorsair/activity/BuyInapp_;->textCurRegular:Landroid/widget/TextView;

    .line 39
    const v0, 0x7f0a0023

    invoke-virtual {p0, v0}, Lfr/testudo/spacecorsair/activity/BuyInapp_;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lfr/testudo/spacecorsair/activity/BuyInapp_;->txtGift:Landroid/widget/EditText;

    .line 40
    const v0, 0x7f0a001b

    invoke-virtual {p0, v0}, Lfr/testudo/spacecorsair/activity/BuyInapp_;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lfr/testudo/spacecorsair/activity/BuyInapp_;->textBuyArgumentCredit:Landroid/widget/TextView;

    .line 41
    const v0, 0x7f0a0017

    invoke-virtual {p0, v0}, Lfr/testudo/spacecorsair/activity/BuyInapp_;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lfr/testudo/spacecorsair/activity/BuyInapp_;->textCurAmount:Landroid/widget/TextView;

    .line 42
    const v0, 0x7f0a001f

    invoke-virtual {p0, v0}, Lfr/testudo/spacecorsair/activity/BuyInapp_;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lfr/testudo/spacecorsair/activity/BuyInapp_;->textBuyArgument:Landroid/widget/TextView;

    .line 44
    const v0, 0x7f0a001d

    invoke-virtual {p0, v0}, Lfr/testudo/spacecorsair/activity/BuyInapp_;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 45
    if-eqz v0, :cond_48

    .line 46
    new-instance v1, Lfr/testudo/spacecorsair/activity/BuyInapp_$1;

    invoke-direct {v1, p0}, Lfr/testudo/spacecorsair/activity/BuyInapp_$1;-><init>(Lfr/testudo/spacecorsair/activity/BuyInapp_;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 59
    :cond_48
    const v0, 0x7f0a0022

    invoke-virtual {p0, v0}, Lfr/testudo/spacecorsair/activity/BuyInapp_;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 60
    if-eqz v0, :cond_59

    .line 61
    new-instance v1, Lfr/testudo/spacecorsair/activity/BuyInapp_$2;

    invoke-direct {v1, p0}, Lfr/testudo/spacecorsair/activity/BuyInapp_$2;-><init>(Lfr/testudo/spacecorsair/activity/BuyInapp_;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 74
    :cond_59
    const v0, 0x7f0a0021

    invoke-virtual {p0, v0}, Lfr/testudo/spacecorsair/activity/BuyInapp_;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 75
    if-eqz v0, :cond_6a

    .line 76
    new-instance v1, Lfr/testudo/spacecorsair/activity/BuyInapp_$3;

    invoke-direct {v1, p0}, Lfr/testudo/spacecorsair/activity/BuyInapp_$3;-><init>(Lfr/testudo/spacecorsair/activity/BuyInapp_;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 89
    :cond_6a
    const v0, 0x7f0a001c

    invoke-virtual {p0, v0}, Lfr/testudo/spacecorsair/activity/BuyInapp_;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 90
    if-eqz v0, :cond_7b

    .line 91
    new-instance v1, Lfr/testudo/spacecorsair/activity/BuyInapp_$4;

    invoke-direct {v1, p0}, Lfr/testudo/spacecorsair/activity/BuyInapp_$4;-><init>(Lfr/testudo/spacecorsair/activity/BuyInapp_;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 104
    :cond_7b
    const v0, 0x7f0a0020

    invoke-virtual {p0, v0}, Lfr/testudo/spacecorsair/activity/BuyInapp_;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 105
    if-eqz v0, :cond_8c

    .line 106
    new-instance v1, Lfr/testudo/spacecorsair/activity/BuyInapp_$5;

    invoke-direct {v1, p0}, Lfr/testudo/spacecorsair/activity/BuyInapp_$5;-><init>(Lfr/testudo/spacecorsair/activity/BuyInapp_;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 119
    :cond_8c
    const v0, 0x7f0a0024

    invoke-virtual {p0, v0}, Lfr/testudo/spacecorsair/activity/BuyInapp_;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 120
    if-eqz v0, :cond_9d

    .line 121
    new-instance v1, Lfr/testudo/spacecorsair/activity/BuyInapp_$6;

    invoke-direct {v1, p0}, Lfr/testudo/spacecorsair/activity/BuyInapp_$6;-><init>(Lfr/testudo/spacecorsair/activity/BuyInapp_;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 134
    :cond_9d
    const v0, 0x7f0a001e

    invoke-virtual {p0, v0}, Lfr/testudo/spacecorsair/activity/BuyInapp_;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 135
    if-eqz v0, :cond_ae

    .line 136
    new-instance v1, Lfr/testudo/spacecorsair/activity/BuyInapp_$7;

    invoke-direct {v1, p0}, Lfr/testudo/spacecorsair/activity/BuyInapp_$7;-><init>(Lfr/testudo/spacecorsair/activity/BuyInapp_;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 148
    :cond_ae
    invoke-virtual {p0}, Lfr/testudo/spacecorsair/activity/BuyInapp_;->bind()V

    .line 149
    return-void
.end method

.method private init_(Landroid/os/Bundle;)V
    .registers 4

    .prologue
    const/16 v1, 0x400

    .line 33
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lfr/testudo/spacecorsair/activity/BuyInapp_;->requestWindowFeature(I)Z

    .line 34
    invoke-virtual {p0}, Lfr/testudo/spacecorsair/activity/BuyInapp_;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setFlags(II)V

    .line 35
    return-void
.end method

.method public static intent(Landroid/content/Context;)Lfr/testudo/spacecorsair/activity/BuyInapp_$IntentBuilder_;
    .registers 2

    .prologue
    .line 170
    new-instance v0, Lfr/testudo/spacecorsair/activity/BuyInapp_$IntentBuilder_;

    invoke-direct {v0, p0}, Lfr/testudo/spacecorsair/activity/BuyInapp_$IntentBuilder_;-><init>(Landroid/content/Context;)V

    return-object v0
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .registers 4

    .prologue
    .line 175
    # invokes: Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V
    invoke-static {p0, p1, p2, p3}, Lfr/testudo/spacecorsair/activity/BuyInapp_;->access$001(Lfr/testudo/spacecorsair/activity/BuyInapp_;IILandroid/content/Intent;)V

    .line 176
    packed-switch p1, :pswitch_data_c

    .line 181
    :goto_6
    return-void

    .line 178
    :pswitch_7
    invoke-virtual {p0, p2, p3}, Lfr/testudo/spacecorsair/activity/BuyInapp_;->onActivityResult(ILandroid/content/Intent;)V

    goto :goto_6

    .line 176
    nop

    :pswitch_data_c
    .packed-switch 0x2
        :pswitch_7
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 3

    .prologue
    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModLang;->apply(Landroid/app/Activity;)V
    .line 27
    invoke-direct {p0, p1}, Lfr/testudo/spacecorsair/activity/BuyInapp_;->init_(Landroid/os/Bundle;)V

    .line 28
    invoke-super {p0, p1}, Lfr/testudo/spacecorsair/activity/BuyInapp;->onCreate(Landroid/os/Bundle;)V

    .line 29
    const v0, 0x7f030003

    invoke-virtual {p0, v0}, Lfr/testudo/spacecorsair/activity/BuyInapp_;->setContentView(I)V

    .line 30
    return-void
.end method

.method public setContentView(I)V
    .registers 2

    .prologue
    .line 153
    invoke-super {p0, p1}, Lfr/testudo/spacecorsair/activity/BuyInapp;->setContentView(I)V

    .line 154
    invoke-direct {p0}, Lfr/testudo/spacecorsair/activity/BuyInapp_;->afterSetContentView_()V

    .line 155
    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .registers 2

    .prologue
    .line 165
    invoke-super {p0, p1}, Lfr/testudo/spacecorsair/activity/BuyInapp;->setContentView(Landroid/view/View;)V

    .line 166
    invoke-direct {p0}, Lfr/testudo/spacecorsair/activity/BuyInapp_;->afterSetContentView_()V

    .line 167
    return-void
.end method

.method public setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .registers 3

    .prologue
    .line 159
    invoke-super {p0, p1, p2}, Lfr/testudo/spacecorsair/activity/BuyInapp;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 160
    invoke-direct {p0}, Lfr/testudo/spacecorsair/activity/BuyInapp_;->afterSetContentView_()V

    .line 161
    return-void
.end method
