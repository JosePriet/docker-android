.class public final Lfr/testudo/spacecorsair/activity/SettingsActivity_;
.super Lfr/testudo/spacecorsair/activity/SettingsActivity;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lfr/testudo/spacecorsair/activity/SettingsActivity_$IntentBuilder_;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 20
    invoke-direct {p0}, Lfr/testudo/spacecorsair/activity/SettingsActivity;-><init>()V

    .line 212
    return-void
.end method

.method private afterSetContentView_()V
    .registers 5

    .prologue
    const v3, 0x7f0a00dd

    const v2, 0x7f0a00d7

    .line 38
    const v0, 0x7f0a00d9

    invoke-virtual {p0, v0}, Lfr/testudo/spacecorsair/activity/SettingsActivity_;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Lfr/testudo/spacecorsair/activity/SettingsActivity_;->skbMusic:Landroid/widget/SeekBar;

    .line 39
    const v0, 0x7f0a00e5

    invoke-virtual {p0, v0}, Lfr/testudo/spacecorsair/activity/SettingsActivity_;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lfr/testudo/spacecorsair/activity/SettingsActivity_;->layMogaNotConnected:Landroid/view/View;

    .line 40
    const v0, 0x7f0a00df

    invoke-virtual {p0, v0}, Lfr/testudo/spacecorsair/activity/SettingsActivity_;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Lfr/testudo/spacecorsair/activity/SettingsActivity_;->skbJoystickSize:Landroid/widget/SeekBar;

    .line 41
    const v0, 0x7f0a00e0

    invoke-virtual {p0, v0}, Lfr/testudo/spacecorsair/activity/SettingsActivity_;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lfr/testudo/spacecorsair/activity/SettingsActivity_;->ckbHideHud:Landroid/widget/CheckBox;

    .line 42
    const v0, 0x7f0a00e1

    invoke-virtual {p0, v0}, Lfr/testudo/spacecorsair/activity/SettingsActivity_;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lfr/testudo/spacecorsair/activity/SettingsActivity_;->layMogaConnected:Landroid/view/View;

    .line 43
    const v0, 0x7f0a00dc

    invoke-virtual {p0, v0}, Lfr/testudo/spacecorsair/activity/SettingsActivity_;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lfr/testudo/spacecorsair/activity/SettingsActivity_;->ckbVibrate:Landroid/widget/CheckBox;

    .line 44
    const v0, 0x7f0a00de

    invoke-virtual {p0, v0}, Lfr/testudo/spacecorsair/activity/SettingsActivity_;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lfr/testudo/spacecorsair/activity/SettingsActivity_;->layJoystickSize:Landroid/view/View;

    .line 45
    const v0, 0x7f0a00db

    invoke-virtual {p0, v0}, Lfr/testudo/spacecorsair/activity/SettingsActivity_;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Lfr/testudo/spacecorsair/activity/SettingsActivity_;->skbZoom:Landroid/widget/SeekBar;

    .line 46
    const v0, 0x7f0a00e3

    invoke-virtual {p0, v0}, Lfr/testudo/spacecorsair/activity/SettingsActivity_;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lfr/testudo/spacecorsair/activity/SettingsActivity_;->cbInvertJoysticks:Landroid/widget/CheckBox;

    .line 47
    invoke-virtual {p0, v2}, Lfr/testudo/spacecorsair/activity/SettingsActivity_;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lfr/testudo/spacecorsair/activity/SettingsActivity_;->ckbMusic:Landroid/widget/CheckBox;

    .line 48
    const v0, 0x7f0a00d8

    invoke-virtual {p0, v0}, Lfr/testudo/spacecorsair/activity/SettingsActivity_;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lfr/testudo/spacecorsair/activity/SettingsActivity_;->layMusicVolume:Landroid/view/View;

    .line 49
    invoke-virtual {p0, v3}, Lfr/testudo/spacecorsair/activity/SettingsActivity_;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lfr/testudo/spacecorsair/activity/SettingsActivity_;->ckbOverrideJoystick:Landroid/widget/CheckBox;

    .line 50
    const v0, 0x7f0a00e2

    invoke-virtual {p0, v0}, Lfr/testudo/spacecorsair/activity/SettingsActivity_;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Lfr/testudo/spacecorsair/activity/SettingsActivity_;->skbDeadZone:Landroid/widget/SeekBar;

    .line 51
    const v0, 0x7f0a00da

    invoke-virtual {p0, v0}, Lfr/testudo/spacecorsair/activity/SettingsActivity_;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lfr/testudo/spacecorsair/activity/SettingsActivity_;->ckbFx:Landroid/widget/CheckBox;

    .line 53
    const v0, 0x7f0a00d5

    invoke-virtual {p0, v0}, Lfr/testudo/spacecorsair/activity/SettingsActivity_;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 54
    if-eqz v0, :cond_a3

    .line 55
    new-instance v1, Lfr/testudo/spacecorsair/activity/SettingsActivity_$1;

    invoke-direct {v1, p0}, Lfr/testudo/spacecorsair/activity/SettingsActivity_$1;-><init>(Lfr/testudo/spacecorsair/activity/SettingsActivity_;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 68
    :cond_a3
    const v0, 0x7f0a00ea

    invoke-virtual {p0, v0}, Lfr/testudo/spacecorsair/activity/SettingsActivity_;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 69
    if-eqz v0, :cond_b4

    .line 70
    new-instance v1, Lfr/testudo/spacecorsair/activity/SettingsActivity_$2;

    invoke-direct {v1, p0}, Lfr/testudo/spacecorsair/activity/SettingsActivity_$2;-><init>(Lfr/testudo/spacecorsair/activity/SettingsActivity_;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 83
    :cond_b4
    const v0, 0x7f0a00d6

    invoke-virtual {p0, v0}, Lfr/testudo/spacecorsair/activity/SettingsActivity_;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 84
    if-eqz v0, :cond_c5

    .line 85
    new-instance v1, Lfr/testudo/spacecorsair/activity/SettingsActivity_$3;

    invoke-direct {v1, p0}, Lfr/testudo/spacecorsair/activity/SettingsActivity_$3;-><init>(Lfr/testudo/spacecorsair/activity/SettingsActivity_;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 98
    :cond_c5
    const v0, 0x7f0a00e8

    invoke-virtual {p0, v0}, Lfr/testudo/spacecorsair/activity/SettingsActivity_;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 99
    if-eqz v0, :cond_d6

    .line 100
    new-instance v1, Lfr/testudo/spacecorsair/activity/SettingsActivity_$4;

    invoke-direct {v1, p0}, Lfr/testudo/spacecorsair/activity/SettingsActivity_$4;-><init>(Lfr/testudo/spacecorsair/activity/SettingsActivity_;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 113
    :cond_d6
    const v0, 0x7f0a0042

    invoke-virtual {p0, v0}, Lfr/testudo/spacecorsair/activity/SettingsActivity_;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 114
    if-eqz v0, :cond_e7

    .line 115
    new-instance v1, Lfr/testudo/spacecorsair/activity/SettingsActivity_$5;

    invoke-direct {v1, p0}, Lfr/testudo/spacecorsair/activity/SettingsActivity_$5;-><init>(Lfr/testudo/spacecorsair/activity/SettingsActivity_;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 128
    :cond_e7
    invoke-virtual {p0, v2}, Lfr/testudo/spacecorsair/activity/SettingsActivity_;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 129
    if-eqz v0, :cond_f5

    .line 130
    new-instance v1, Lfr/testudo/spacecorsair/activity/SettingsActivity_$6;

    invoke-direct {v1, p0}, Lfr/testudo/spacecorsair/activity/SettingsActivity_$6;-><init>(Lfr/testudo/spacecorsair/activity/SettingsActivity_;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 143
    :cond_f5
    const v0, 0x7f0a00eb

    invoke-virtual {p0, v0}, Lfr/testudo/spacecorsair/activity/SettingsActivity_;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 144
    if-eqz v0, :cond_106

    .line 145
    new-instance v1, Lfr/testudo/spacecorsair/activity/SettingsActivity_$7;

    invoke-direct {v1, p0}, Lfr/testudo/spacecorsair/activity/SettingsActivity_$7;-><init>(Lfr/testudo/spacecorsair/activity/SettingsActivity_;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 158
    :cond_106
    invoke-virtual {p0, v3}, Lfr/testudo/spacecorsair/activity/SettingsActivity_;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 159
    if-eqz v0, :cond_114

    .line 160
    new-instance v1, Lfr/testudo/spacecorsair/activity/SettingsActivity_$8;

    invoke-direct {v1, p0}, Lfr/testudo/spacecorsair/activity/SettingsActivity_$8;-><init>(Lfr/testudo/spacecorsair/activity/SettingsActivity_;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 173
    :cond_114
    const v0, 0x7f0a00e4

    invoke-virtual {p0, v0}, Lfr/testudo/spacecorsair/activity/SettingsActivity_;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 174
    if-eqz v0, :cond_125

    .line 175
    new-instance v1, Lfr/testudo/spacecorsair/activity/SettingsActivity_$9;

    invoke-direct {v1, p0}, Lfr/testudo/spacecorsair/activity/SettingsActivity_$9;-><init>(Lfr/testudo/spacecorsair/activity/SettingsActivity_;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 187
    :cond_125
    invoke-virtual {p0}, Lfr/testudo/spacecorsair/activity/SettingsActivity_;->bindUI()V

    .line 188
    return-void
.end method

.method private init_(Landroid/os/Bundle;)V
    .registers 4

    .prologue
    const/16 v1, 0x400

    .line 33
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lfr/testudo/spacecorsair/activity/SettingsActivity_;->requestWindowFeature(I)Z

    .line 34
    invoke-virtual {p0}, Lfr/testudo/spacecorsair/activity/SettingsActivity_;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setFlags(II)V

    .line 35
    return-void
.end method

.method public static intent(Landroid/content/Context;)Lfr/testudo/spacecorsair/activity/SettingsActivity_$IntentBuilder_;
    .registers 2

    .prologue
    .line 209
    new-instance v0, Lfr/testudo/spacecorsair/activity/SettingsActivity_$IntentBuilder_;

    invoke-direct {v0, p0}, Lfr/testudo/spacecorsair/activity/SettingsActivity_$IntentBuilder_;-><init>(Landroid/content/Context;)V

    return-object v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .registers 3

    .prologue
    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModLang;->apply(Landroid/app/Activity;)V
    .line 27
    invoke-direct {p0, p1}, Lfr/testudo/spacecorsair/activity/SettingsActivity_;->init_(Landroid/os/Bundle;)V

    .line 28
    invoke-super {p0, p1}, Lfr/testudo/spacecorsair/activity/SettingsActivity;->onCreate(Landroid/os/Bundle;)V

    .line 29
    const v0, 0x7f030017

    invoke-virtual {p0, v0}, Lfr/testudo/spacecorsair/activity/SettingsActivity_;->setContentView(I)V

    .line 30
    return-void
.end method

.method public setContentView(I)V
    .registers 2

    .prologue
    .line 192
    invoke-super {p0, p1}, Lfr/testudo/spacecorsair/activity/SettingsActivity;->setContentView(I)V

    .line 193
    invoke-direct {p0}, Lfr/testudo/spacecorsair/activity/SettingsActivity_;->afterSetContentView_()V

    .line 194
    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .registers 2

    .prologue
    .line 204
    invoke-super {p0, p1}, Lfr/testudo/spacecorsair/activity/SettingsActivity;->setContentView(Landroid/view/View;)V

    .line 205
    invoke-direct {p0}, Lfr/testudo/spacecorsair/activity/SettingsActivity_;->afterSetContentView_()V

    .line 206
    return-void
.end method

.method public setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .registers 3

    .prologue
    .line 198
    invoke-super {p0, p1, p2}, Lfr/testudo/spacecorsair/activity/SettingsActivity;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 199
    invoke-direct {p0}, Lfr/testudo/spacecorsair/activity/SettingsActivity_;->afterSetContentView_()V

    .line 200
    return-void
.end method
