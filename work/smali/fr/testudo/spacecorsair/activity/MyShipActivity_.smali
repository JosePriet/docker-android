.class public final Lfr/testudo/spacecorsair/activity/MyShipActivity_;
.super Lfr/testudo/spacecorsair/activity/MyShipActivity;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lfr/testudo/spacecorsair/activity/MyShipActivity_$IntentBuilder_;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 25
    invoke-direct {p0}, Lfr/testudo/spacecorsair/activity/MyShipActivity;-><init>()V

    .line 378
    return-void
.end method

.method private afterSetContentView_()V
    .registers 8

    .prologue
    const v6, 0x7f0a00f6

    const v5, 0x7f0a00f5

    const v4, 0x7f0a00f4

    const v3, 0x7f0a00d0

    const v2, 0x7f0a009e

    .line 43
    const v0, 0x7f0a00ef

    invoke-virtual {p0, v0}, Lfr/testudo/spacecorsair/activity/MyShipActivity_;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lfr/testudo/spacecorsair/activity/MyShipActivity_;->pgbShield:Landroid/widget/ProgressBar;

    .line 44
    const v0, 0x7f0a0107

    invoke-virtual {p0, v0}, Lfr/testudo/spacecorsair/activity/MyShipActivity_;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lfr/testudo/spacecorsair/activity/MyShipActivity_;->txtStore:Landroid/widget/TextView;

    .line 45
    const v0, 0x7f0a00f1

    invoke-virtual {p0, v0}, Lfr/testudo/spacecorsair/activity/MyShipActivity_;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lfr/testudo/spacecorsair/activity/MyShipActivity_;->textCurrentShipName:Landroid/widget/TextView;

    .line 46
    const v0, 0x7f0a00d3

    invoke-virtual {p0, v0}, Lfr/testudo/spacecorsair/activity/MyShipActivity_;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lfr/testudo/spacecorsair/activity/MyShipActivity_;->txtSoute:Landroid/widget/TextView;

    .line 47
    const v0, 0x7f0a00f9

    invoke-virtual {p0, v0}, Lfr/testudo/spacecorsair/activity/MyShipActivity_;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lfr/testudo/spacecorsair/activity/MyShipActivity_;->txtItemType:Landroid/widget/TextView;

    .line 48
    const v0, 0x7f0a00ee

    invoke-virtual {p0, v0}, Lfr/testudo/spacecorsair/activity/MyShipActivity_;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lfr/testudo/spacecorsair/activity/MyShipActivity_;->pgbLife:Landroid/widget/ProgressBar;

    .line 49
    const v0, 0x7f0a00f7

    invoke-virtual {p0, v0}, Lfr/testudo/spacecorsair/activity/MyShipActivity_;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lfr/testudo/spacecorsair/activity/MyShipActivity_;->imgBooster:Landroid/widget/ImageView;

    .line 50
    const v0, 0x7f0a0076

    invoke-virtual {p0, v0}, Lfr/testudo/spacecorsair/activity/MyShipActivity_;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lfr/testudo/spacecorsair/activity/MyShipActivity_;->txtLaserDps:Landroid/widget/TextView;

    .line 51
    const v0, 0x7f0a006c

    invoke-virtual {p0, v0}, Lfr/testudo/spacecorsair/activity/MyShipActivity_;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lfr/testudo/spacecorsair/activity/MyShipActivity_;->txtShieldCapacity:Landroid/widget/TextView;

    .line 52
    const v0, 0x7f0a00fc

    invoke-virtual {p0, v0}, Lfr/testudo/spacecorsair/activity/MyShipActivity_;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lfr/testudo/spacecorsair/activity/MyShipActivity_;->layShield:Landroid/view/ViewGroup;

    .line 53
    const v0, 0x7f0a00f8

    invoke-virtual {p0, v0}, Lfr/testudo/spacecorsair/activity/MyShipActivity_;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lfr/testudo/spacecorsair/activity/MyShipActivity_;->imgHyperdrive:Landroid/widget/ImageView;

    .line 54
    const v0, 0x7f0a005e

    invoke-virtual {p0, v0}, Lfr/testudo/spacecorsair/activity/MyShipActivity_;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lfr/testudo/spacecorsair/activity/MyShipActivity_;->txtMissileDamage:Landroid/widget/TextView;

    .line 55
    const v0, 0x7f0a00fe

    invoke-virtual {p0, v0}, Lfr/testudo/spacecorsair/activity/MyShipActivity_;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lfr/testudo/spacecorsair/activity/MyShipActivity_;->layMissile:Landroid/view/ViewGroup;

    .line 56
    const v0, 0x7f0a00fb

    invoke-virtual {p0, v0}, Lfr/testudo/spacecorsair/activity/MyShipActivity_;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lfr/testudo/spacecorsair/activity/MyShipActivity_;->txtObjectName:Landroid/widget/TextView;

    .line 57
    const v0, 0x7f0a0105

    invoke-virtual {p0, v0}, Lfr/testudo/spacecorsair/activity/MyShipActivity_;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lfr/testudo/spacecorsair/activity/MyShipActivity_;->layListviews:Landroid/view/ViewGroup;

    .line 58
    const v0, 0x7f0a0101

    invoke-virtual {p0, v0}, Lfr/testudo/spacecorsair/activity/MyShipActivity_;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lfr/testudo/spacecorsair/activity/MyShipActivity_;->layButtonListviews:Landroid/view/ViewGroup;

    .line 59
    invoke-virtual {p0, v6}, Lfr/testudo/spacecorsair/activity/MyShipActivity_;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lfr/testudo/spacecorsair/activity/MyShipActivity_;->imgMissile:Landroid/widget/ImageView;

    .line 60
    const v0, 0x7f0a0109

    invoke-virtual {p0, v0}, Lfr/testudo/spacecorsair/activity/MyShipActivity_;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lfr/testudo/spacecorsair/activity/MyShipActivity_;->lstInventory:Landroid/widget/ListView;

    .line 61
    const v0, 0x7f0a00f0

    invoke-virtual {p0, v0}, Lfr/testudo/spacecorsair/activity/MyShipActivity_;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lfr/testudo/spacecorsair/activity/MyShipActivity_;->pgbXp:Landroid/widget/ProgressBar;

    .line 62
    const v0, 0x7f0a004b

    invoke-virtual {p0, v0}, Lfr/testudo/spacecorsair/activity/MyShipActivity_;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lfr/testudo/spacecorsair/activity/MyShipActivity_;->txtLevel:Landroid/widget/TextView;

    .line 63
    const v0, 0x7f0a0100

    invoke-virtual {p0, v0}, Lfr/testudo/spacecorsair/activity/MyShipActivity_;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lfr/testudo/spacecorsair/activity/MyShipActivity_;->layHyperdrive:Landroid/view/ViewGroup;

    .line 64
    const v0, 0x7f0a0106

    invoke-virtual {p0, v0}, Lfr/testudo/spacecorsair/activity/MyShipActivity_;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lfr/testudo/spacecorsair/activity/MyShipActivity_;->txtInventory:Landroid/widget/TextView;

    .line 65
    const v0, 0x7f0a00ed

    invoke-virtual {p0, v0}, Lfr/testudo/spacecorsair/activity/MyShipActivity_;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lfr/testudo/spacecorsair/activity/MyShipActivity_;->layState:Landroid/view/ViewGroup;

    .line 66
    invoke-virtual {p0, v4}, Lfr/testudo/spacecorsair/activity/MyShipActivity_;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lfr/testudo/spacecorsair/activity/MyShipActivity_;->imgShield:Landroid/widget/ImageView;

    .line 67
    const v0, 0x7f0a00ff

    invoke-virtual {p0, v0}, Lfr/testudo/spacecorsair/activity/MyShipActivity_;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lfr/testudo/spacecorsair/activity/MyShipActivity_;->layBooster:Landroid/view/ViewGroup;

    .line 68
    const v0, 0x7f0a00fd

    invoke-virtual {p0, v0}, Lfr/testudo/spacecorsair/activity/MyShipActivity_;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lfr/testudo/spacecorsair/activity/MyShipActivity_;->layLaser:Landroid/view/ViewGroup;

    .line 69
    invoke-virtual {p0, v3}, Lfr/testudo/spacecorsair/activity/MyShipActivity_;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lfr/testudo/spacecorsair/activity/MyShipActivity_;->txtCreditsInApp:Landroid/widget/TextView;

    .line 70
    invoke-virtual {p0, v5}, Lfr/testudo/spacecorsair/activity/MyShipActivity_;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lfr/testudo/spacecorsair/activity/MyShipActivity_;->imgLaser:Landroid/widget/ImageView;

    .line 71
    invoke-virtual {p0, v2}, Lfr/testudo/spacecorsair/activity/MyShipActivity_;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lfr/testudo/spacecorsair/activity/MyShipActivity_;->txtCredits:Landroid/widget/TextView;

    .line 72
    const v0, 0x7f0a010a

    invoke-virtual {p0, v0}, Lfr/testudo/spacecorsair/activity/MyShipActivity_;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lfr/testudo/spacecorsair/activity/MyShipActivity_;->lstStore:Landroid/widget/ListView;

    .line 73
    const v0, 0x7f0a00f3

    invoke-virtual {p0, v0}, Lfr/testudo/spacecorsair/activity/MyShipActivity_;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lfr/testudo/spacecorsair/activity/MyShipActivity_;->layEquiped:Landroid/view/ViewGroup;

    .line 75
    const v0, 0x7f0a0102

    invoke-virtual {p0, v0}, Lfr/testudo/spacecorsair/activity/MyShipActivity_;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 76
    if-eqz v0, :cond_166

    .line 77
    new-instance v1, Lfr/testudo/spacecorsair/activity/MyShipActivity_$1;

    invoke-direct {v1, p0}, Lfr/testudo/spacecorsair/activity/MyShipActivity_$1;-><init>(Lfr/testudo/spacecorsair/activity/MyShipActivity_;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 90
    :cond_166
    const v0, 0x7f0a0107

    invoke-virtual {p0, v0}, Lfr/testudo/spacecorsair/activity/MyShipActivity_;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 91
    if-eqz v0, :cond_177

    .line 92
    new-instance v1, Lfr/testudo/spacecorsair/activity/MyShipActivity_$2;

    invoke-direct {v1, p0}, Lfr/testudo/spacecorsair/activity/MyShipActivity_$2;-><init>(Lfr/testudo/spacecorsair/activity/MyShipActivity_;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 105
    :cond_177
    const v0, 0x7f0a00fa

    invoke-virtual {p0, v0}, Lfr/testudo/spacecorsair/activity/MyShipActivity_;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 106
    if-eqz v0, :cond_188

    .line 107
    new-instance v1, Lfr/testudo/spacecorsair/activity/MyShipActivity_$3;

    invoke-direct {v1, p0}, Lfr/testudo/spacecorsair/activity/MyShipActivity_$3;-><init>(Lfr/testudo/spacecorsair/activity/MyShipActivity_;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 120
    :cond_188
    const v0, 0x7f0a0106

    invoke-virtual {p0, v0}, Lfr/testudo/spacecorsair/activity/MyShipActivity_;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 121
    if-eqz v0, :cond_199

    .line 122
    new-instance v1, Lfr/testudo/spacecorsair/activity/MyShipActivity_$4;

    invoke-direct {v1, p0}, Lfr/testudo/spacecorsair/activity/MyShipActivity_$4;-><init>(Lfr/testudo/spacecorsair/activity/MyShipActivity_;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 135
    :cond_199
    const v0, 0x7f0a0104

    invoke-virtual {p0, v0}, Lfr/testudo/spacecorsair/activity/MyShipActivity_;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 136
    if-eqz v0, :cond_1aa

    .line 137
    new-instance v1, Lfr/testudo/spacecorsair/activity/MyShipActivity_$5;

    invoke-direct {v1, p0}, Lfr/testudo/spacecorsair/activity/MyShipActivity_$5;-><init>(Lfr/testudo/spacecorsair/activity/MyShipActivity_;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 150
    :cond_1aa
    invoke-virtual {p0, v2}, Lfr/testudo/spacecorsair/activity/MyShipActivity_;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 151
    if-eqz v0, :cond_1b8

    .line 152
    new-instance v1, Lfr/testudo/spacecorsair/activity/MyShipActivity_$6;

    invoke-direct {v1, p0}, Lfr/testudo/spacecorsair/activity/MyShipActivity_$6;-><init>(Lfr/testudo/spacecorsair/activity/MyShipActivity_;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 165
    :cond_1b8
    const v0, 0x7f0a0018

    invoke-virtual {p0, v0}, Lfr/testudo/spacecorsair/activity/MyShipActivity_;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 166
    if-eqz v0, :cond_1c9

    .line 167
    new-instance v1, Lfr/testudo/spacecorsair/activity/MyShipActivity_$7;

    invoke-direct {v1, p0}, Lfr/testudo/spacecorsair/activity/MyShipActivity_$7;-><init>(Lfr/testudo/spacecorsair/activity/MyShipActivity_;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 180
    :cond_1c9
    const v0, 0x7f0a00cf

    invoke-virtual {p0, v0}, Lfr/testudo/spacecorsair/activity/MyShipActivity_;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 181
    if-eqz v0, :cond_1da

    .line 182
    new-instance v1, Lfr/testudo/spacecorsair/activity/MyShipActivity_$8;

    invoke-direct {v1, p0}, Lfr/testudo/spacecorsair/activity/MyShipActivity_$8;-><init>(Lfr/testudo/spacecorsair/activity/MyShipActivity_;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 195
    :cond_1da
    invoke-virtual {p0, v3}, Lfr/testudo/spacecorsair/activity/MyShipActivity_;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 196
    if-eqz v0, :cond_1e8

    .line 197
    new-instance v1, Lfr/testudo/spacecorsair/activity/MyShipActivity_$9;

    invoke-direct {v1, p0}, Lfr/testudo/spacecorsair/activity/MyShipActivity_$9;-><init>(Lfr/testudo/spacecorsair/activity/MyShipActivity_;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 210
    :cond_1e8
    const v0, 0x7f0a00d1

    invoke-virtual {p0, v0}, Lfr/testudo/spacecorsair/activity/MyShipActivity_;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 211
    if-eqz v0, :cond_1f9

    .line 212
    new-instance v1, Lfr/testudo/spacecorsair/activity/MyShipActivity_$10;

    invoke-direct {v1, p0}, Lfr/testudo/spacecorsair/activity/MyShipActivity_$10;-><init>(Lfr/testudo/spacecorsair/activity/MyShipActivity_;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 225
    :cond_1f9
    const v0, 0x7f0a00d2

    invoke-virtual {p0, v0}, Lfr/testudo/spacecorsair/activity/MyShipActivity_;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 226
    if-eqz v0, :cond_20a

    .line 227
    new-instance v1, Lfr/testudo/spacecorsair/activity/MyShipActivity_$11;

    invoke-direct {v1, p0}, Lfr/testudo/spacecorsair/activity/MyShipActivity_$11;-><init>(Lfr/testudo/spacecorsair/activity/MyShipActivity_;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 240
    :cond_20a
    const v0, 0x7f0a00f8

    invoke-virtual {p0, v0}, Lfr/testudo/spacecorsair/activity/MyShipActivity_;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 241
    if-eqz v0, :cond_21b

    .line 242
    new-instance v1, Lfr/testudo/spacecorsair/activity/MyShipActivity_$12;

    invoke-direct {v1, p0}, Lfr/testudo/spacecorsair/activity/MyShipActivity_$12;-><init>(Lfr/testudo/spacecorsair/activity/MyShipActivity_;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 255
    :cond_21b
    const v0, 0x7f0a0103

    invoke-virtual {p0, v0}, Lfr/testudo/spacecorsair/activity/MyShipActivity_;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 256
    if-eqz v0, :cond_22c

    .line 257
    new-instance v1, Lfr/testudo/spacecorsair/activity/MyShipActivity_$13;

    invoke-direct {v1, p0}, Lfr/testudo/spacecorsair/activity/MyShipActivity_$13;-><init>(Lfr/testudo/spacecorsair/activity/MyShipActivity_;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 270
    :cond_22c
    const v0, 0x7f0a0108

    invoke-virtual {p0, v0}, Lfr/testudo/spacecorsair/activity/MyShipActivity_;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 271
    if-eqz v0, :cond_23d

    .line 272
    new-instance v1, Lfr/testudo/spacecorsair/activity/MyShipActivity_$14;

    invoke-direct {v1, p0}, Lfr/testudo/spacecorsair/activity/MyShipActivity_$14;-><init>(Lfr/testudo/spacecorsair/activity/MyShipActivity_;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 285
    :cond_23d
    invoke-virtual {p0, v5}, Lfr/testudo/spacecorsair/activity/MyShipActivity_;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 286
    if-eqz v0, :cond_24b

    .line 287
    new-instance v1, Lfr/testudo/spacecorsair/activity/MyShipActivity_$15;

    invoke-direct {v1, p0}, Lfr/testudo/spacecorsair/activity/MyShipActivity_$15;-><init>(Lfr/testudo/spacecorsair/activity/MyShipActivity_;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 300
    :cond_24b
    const v0, 0x7f0a00f7

    invoke-virtual {p0, v0}, Lfr/testudo/spacecorsair/activity/MyShipActivity_;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 301
    if-eqz v0, :cond_25c

    .line 302
    new-instance v1, Lfr/testudo/spacecorsair/activity/MyShipActivity_$16;

    invoke-direct {v1, p0}, Lfr/testudo/spacecorsair/activity/MyShipActivity_$16;-><init>(Lfr/testudo/spacecorsair/activity/MyShipActivity_;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 315
    :cond_25c
    invoke-virtual {p0, v6}, Lfr/testudo/spacecorsair/activity/MyShipActivity_;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 316
    if-eqz v0, :cond_26a

    .line 317
    new-instance v1, Lfr/testudo/spacecorsair/activity/MyShipActivity_$17;

    invoke-direct {v1, p0}, Lfr/testudo/spacecorsair/activity/MyShipActivity_$17;-><init>(Lfr/testudo/spacecorsair/activity/MyShipActivity_;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 330
    :cond_26a
    invoke-virtual {p0, v4}, Lfr/testudo/spacecorsair/activity/MyShipActivity_;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 331
    if-eqz v0, :cond_278

    .line 332
    new-instance v1, Lfr/testudo/spacecorsair/activity/MyShipActivity_$18;

    invoke-direct {v1, p0}, Lfr/testudo/spacecorsair/activity/MyShipActivity_$18;-><init>(Lfr/testudo/spacecorsair/activity/MyShipActivity_;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 344
    :cond_278
    invoke-virtual {p0}, Lfr/testudo/spacecorsair/activity/MyShipActivity_;->updateUI()V

    .line 345
    invoke-virtual {p0}, Lfr/testudo/spacecorsair/activity/MyShipActivity_;->removeAdd()V

    .line 346
    return-void
.end method

.method private init_(Landroid/os/Bundle;)V
    .registers 4

    .prologue
    const/16 v1, 0x400

    .line 38
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lfr/testudo/spacecorsair/activity/MyShipActivity_;->requestWindowFeature(I)Z

    .line 39
    invoke-virtual {p0}, Lfr/testudo/spacecorsair/activity/MyShipActivity_;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setFlags(II)V

    .line 40
    return-void
.end method

.method public static intent(Landroid/content/Context;)Lfr/testudo/spacecorsair/activity/MyShipActivity_$IntentBuilder_;
    .registers 2

    .prologue
    .line 375
    new-instance v0, Lfr/testudo/spacecorsair/activity/MyShipActivity_$IntentBuilder_;

    invoke-direct {v0, p0}, Lfr/testudo/spacecorsair/activity/MyShipActivity_$IntentBuilder_;-><init>(Landroid/content/Context;)V

    return-object v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .registers 3

    .prologue
    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModLang;->apply(Landroid/app/Activity;)V
    .line 32
    invoke-direct {p0, p1}, Lfr/testudo/spacecorsair/activity/MyShipActivity_;->init_(Landroid/os/Bundle;)V

    .line 33
    invoke-super {p0, p1}, Lfr/testudo/spacecorsair/activity/MyShipActivity;->onCreate(Landroid/os/Bundle;)V

    .line 34
    const v0, 0x7f030018

    invoke-virtual {p0, v0}, Lfr/testudo/spacecorsair/activity/MyShipActivity_;->setContentView(I)V

    .line 35
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 5

    .prologue
    .line 368
    invoke-static {}, Lcom/a/a/a/a;->a()I

    move-result v0

    const/4 v1, 0x5

    if-ge v0, v1, :cond_13

    const/4 v0, 0x4

    if-ne p1, v0, :cond_13

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_13

    .line 369
    invoke-virtual {p0}, Lfr/testudo/spacecorsair/activity/MyShipActivity_;->onBackPressed()V

    .line 371
    :cond_13
    invoke-super {p0, p1, p2}, Lfr/testudo/spacecorsair/activity/MyShipActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public setContentView(I)V
    .registers 2

    .prologue
    .line 350
    invoke-super {p0, p1}, Lfr/testudo/spacecorsair/activity/MyShipActivity;->setContentView(I)V

    .line 351
    invoke-direct {p0}, Lfr/testudo/spacecorsair/activity/MyShipActivity_;->afterSetContentView_()V

    .line 352
    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .registers 2

    .prologue
    .line 362
    invoke-super {p0, p1}, Lfr/testudo/spacecorsair/activity/MyShipActivity;->setContentView(Landroid/view/View;)V

    .line 363
    invoke-direct {p0}, Lfr/testudo/spacecorsair/activity/MyShipActivity_;->afterSetContentView_()V

    .line 364
    return-void
.end method

.method public setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .registers 3

    .prologue
    .line 356
    invoke-super {p0, p1, p2}, Lfr/testudo/spacecorsair/activity/MyShipActivity;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 357
    invoke-direct {p0}, Lfr/testudo/spacecorsair/activity/MyShipActivity_;->afterSetContentView_()V

    .line 358
    return-void
.end method
