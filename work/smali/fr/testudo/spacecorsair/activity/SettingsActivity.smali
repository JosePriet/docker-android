.class public Lfr/testudo/spacecorsair/activity/SettingsActivity;
.super Lfr/testudo/spacecorsair/activity/CommonActivity;
.source "SourceFile"


# instance fields
.field cbInvertJoysticks:Landroid/widget/CheckBox;

.field ckbFx:Landroid/widget/CheckBox;

.field ckbHideHud:Landroid/widget/CheckBox;

.field ckbMusic:Landroid/widget/CheckBox;

.field ckbOverrideJoystick:Landroid/widget/CheckBox;

.field ckbVibrate:Landroid/widget/CheckBox;

.field layJoystickSize:Landroid/view/View;

.field layMogaConnected:Landroid/view/View;

.field layMogaNotConnected:Landroid/view/View;

.field layMusicVolume:Landroid/view/View;

.field skbDeadZone:Landroid/widget/SeekBar;

.field skbJoystickSize:Landroid/widget/SeekBar;

.field skbMusic:Landroid/widget/SeekBar;

.field skbZoom:Landroid/widget/SeekBar;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 18
    invoke-direct {p0}, Lfr/testudo/spacecorsair/activity/CommonActivity;-><init>()V

    return-void
.end method

.method private applyConfig()V
    .registers 4

    .prologue
    .line 132
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->config:Lfr/testudo/spacecorsair/game/Config;

    .line 133
    iget-object v1, p0, Lfr/testudo/spacecorsair/activity/SettingsActivity;->ckbVibrate:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    iput-boolean v1, v0, Lfr/testudo/spacecorsair/game/Config;->vibrationEnabled:Z

    .line 134
    iget-object v1, p0, Lfr/testudo/spacecorsair/activity/SettingsActivity;->ckbMusic:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    iput-boolean v1, v0, Lfr/testudo/spacecorsair/game/Config;->musicEnabled:Z

    .line 135
    iget-object v1, p0, Lfr/testudo/spacecorsair/activity/SettingsActivity;->ckbFx:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    iput-boolean v1, v0, Lfr/testudo/spacecorsair/game/Config;->soundFxEnabled:Z

    .line 136
    iget-object v1, p0, Lfr/testudo/spacecorsair/activity/SettingsActivity;->skbMusic:Landroid/widget/SeekBar;

    invoke-virtual {v1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x41200000    # 10.0f

    div-float/2addr v1, v2

    iput v1, v0, Lfr/testudo/spacecorsair/game/Config;->musicVolums:F

    .line 138
    iget-object v1, p0, Lfr/testudo/spacecorsair/activity/SettingsActivity;->skbZoom:Landroid/widget/SeekBar;

    invoke-virtual {v1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v1

    add-int/lit16 v1, v1, -0x12c

    iput v1, v0, Lfr/testudo/spacecorsair/game/Config;->defaultZoom:I

    .line 140
    iget-object v1, p0, Lfr/testudo/spacecorsair/activity/SettingsActivity;->ckbOverrideJoystick:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    iput-boolean v1, v0, Lfr/testudo/spacecorsair/game/Config;->overrideJoysickSize:Z

    .line 141
    iget-object v1, p0, Lfr/testudo/spacecorsair/activity/SettingsActivity;->skbJoystickSize:Landroid/widget/SeekBar;

    invoke-virtual {v1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v1

    add-int/lit8 v1, v1, 0x64

    iput v1, v0, Lfr/testudo/spacecorsair/game/Config;->joystickSize:I

    .line 143
    iget-object v1, p0, Lfr/testudo/spacecorsair/activity/SettingsActivity;->ckbHideHud:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    iput-boolean v1, v0, Lfr/testudo/spacecorsair/game/Config;->hideHud:Z

    .line 145
    iget-object v1, p0, Lfr/testudo/spacecorsair/activity/SettingsActivity;->skbDeadZone:Landroid/widget/SeekBar;

    invoke-virtual {v1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x42c80000    # 100.0f

    div-float/2addr v1, v2

    iput v1, v0, Lfr/testudo/spacecorsair/game/Config;->deadZoneMoga:F

    .line 146
    iget v1, v0, Lfr/testudo/spacecorsair/game/Config;->deadZoneMoga:F

    const v2, 0x3e19999a    # 0.15f

    add-float/2addr v1, v2

    iput v1, v0, Lfr/testudo/spacecorsair/game/Config;->accelMoga:F

    .line 148
    iget-object v1, p0, Lfr/testudo/spacecorsair/activity/SettingsActivity;->cbInvertJoysticks:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    iput-boolean v1, v0, Lfr/testudo/spacecorsair/game/Config;->mogaInvertJoystick:Z

    .line 151
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/game/Config;->setDirty(Z)V

    .line 152
    invoke-virtual {v0}, Lfr/testudo/spacecorsair/game/Config;->validate()V

    .line 153
    return-void
.end method


# virtual methods
.method askForHelp()V
    .registers 3

    .prologue
    .line 57
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lfr/testudo/spacecorsair/activity/HelpActivity_;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 58
    invoke-virtual {p0, v0}, Lfr/testudo/spacecorsair/activity/SettingsActivity;->startActivity(Landroid/content/Intent;)V

    .line 59
    return-void
.end method

.method public bindUI()V
    .registers 7

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 95
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v3, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->config:Lfr/testudo/spacecorsair/game/Config;

    .line 96
    iget-object v0, p0, Lfr/testudo/spacecorsair/activity/SettingsActivity;->ckbVibrate:Landroid/widget/CheckBox;

    iget-boolean v4, v3, Lfr/testudo/spacecorsair/game/Config;->vibrationEnabled:Z

    invoke-virtual {v0, v4}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 97
    iget-object v0, p0, Lfr/testudo/spacecorsair/activity/SettingsActivity;->ckbMusic:Landroid/widget/CheckBox;

    iget-boolean v4, v3, Lfr/testudo/spacecorsair/game/Config;->musicEnabled:Z

    invoke-virtual {v0, v4}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 98
    iget-object v4, p0, Lfr/testudo/spacecorsair/activity/SettingsActivity;->layMusicVolume:Landroid/view/View;

    iget-boolean v0, v3, Lfr/testudo/spacecorsair/game/Config;->musicEnabled:Z

    if-eqz v0, :cond_a2

    move v0, v1

    :goto_1c
    invoke-virtual {v4, v0}, Landroid/view/View;->setVisibility(I)V

    .line 99
    iget-object v0, p0, Lfr/testudo/spacecorsair/activity/SettingsActivity;->ckbFx:Landroid/widget/CheckBox;

    iget-boolean v4, v3, Lfr/testudo/spacecorsair/game/Config;->soundFxEnabled:Z

    invoke-virtual {v0, v4}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 100
    iget-object v0, p0, Lfr/testudo/spacecorsair/activity/SettingsActivity;->skbMusic:Landroid/widget/SeekBar;

    const/16 v4, 0xa

    invoke-virtual {v0, v4}, Landroid/widget/SeekBar;->setMax(I)V

    .line 101
    iget-object v0, p0, Lfr/testudo/spacecorsair/activity/SettingsActivity;->skbMusic:Landroid/widget/SeekBar;

    iget v4, v3, Lfr/testudo/spacecorsair/game/Config;->musicVolums:F

    const/high16 v5, 0x41200000    # 10.0f

    mul-float/2addr v4, v5

    float-to-int v4, v4

    invoke-virtual {v0, v4}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 103
    iget-object v0, p0, Lfr/testudo/spacecorsair/activity/SettingsActivity;->skbZoom:Landroid/widget/SeekBar;

    const/16 v4, 0x44c

    invoke-virtual {v0, v4}, Landroid/widget/SeekBar;->setMax(I)V

    .line 104
    iget-object v0, p0, Lfr/testudo/spacecorsair/activity/SettingsActivity;->skbZoom:Landroid/widget/SeekBar;

    iget v4, v3, Lfr/testudo/spacecorsair/game/Config;->defaultZoom:I

    add-int/lit16 v4, v4, 0x12c

    invoke-virtual {v0, v4}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 106
    iget-object v0, p0, Lfr/testudo/spacecorsair/activity/SettingsActivity;->skbJoystickSize:Landroid/widget/SeekBar;

    const/16 v4, 0x12c

    invoke-virtual {v0, v4}, Landroid/widget/SeekBar;->setMax(I)V

    .line 107
    iget-object v0, p0, Lfr/testudo/spacecorsair/activity/SettingsActivity;->skbJoystickSize:Landroid/widget/SeekBar;

    iget v4, v3, Lfr/testudo/spacecorsair/game/Config;->joystickSize:I

    add-int/lit8 v4, v4, -0x64

    invoke-virtual {v0, v4}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 108
    iget-object v4, p0, Lfr/testudo/spacecorsair/activity/SettingsActivity;->layJoystickSize:Landroid/view/View;

    iget-boolean v0, v3, Lfr/testudo/spacecorsair/game/Config;->overrideJoysickSize:Z

    if-eqz v0, :cond_a5

    move v0, v1

    :goto_5f
    invoke-virtual {v4, v0}, Landroid/view/View;->setVisibility(I)V

    .line 109
    iget-object v0, p0, Lfr/testudo/spacecorsair/activity/SettingsActivity;->skbJoystickSize:Landroid/widget/SeekBar;

    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Landroid/widget/SeekBar;->setEnabled(Z)V

    .line 111
    iget-object v0, p0, Lfr/testudo/spacecorsair/activity/SettingsActivity;->ckbOverrideJoystick:Landroid/widget/CheckBox;

    iget-boolean v4, v3, Lfr/testudo/spacecorsair/game/Config;->overrideJoysickSize:Z

    invoke-virtual {v0, v4}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 113
    iget-object v0, p0, Lfr/testudo/spacecorsair/activity/SettingsActivity;->ckbHideHud:Landroid/widget/CheckBox;

    iget-boolean v4, v3, Lfr/testudo/spacecorsair/game/Config;->hideHud:Z

    invoke-virtual {v0, v4}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 115
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-boolean v0, v0, Lfr/testudo/spacecorsair/game/Game;->mogaConnected:Z

    if-eqz v0, :cond_a7

    .line 116
    iget-object v0, p0, Lfr/testudo/spacecorsair/activity/SettingsActivity;->layMogaNotConnected:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 117
    iget-object v0, p0, Lfr/testudo/spacecorsair/activity/SettingsActivity;->layMogaConnected:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 123
    :goto_88
    iget-object v0, p0, Lfr/testudo/spacecorsair/activity/SettingsActivity;->skbDeadZone:Landroid/widget/SeekBar;

    const/16 v1, 0x46

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setMax(I)V

    .line 124
    iget-object v0, p0, Lfr/testudo/spacecorsair/activity/SettingsActivity;->skbDeadZone:Landroid/widget/SeekBar;

    iget v1, v3, Lfr/testudo/spacecorsair/game/Config;->deadZoneMoga:F

    const/high16 v2, 0x42c80000    # 100.0f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 126
    iget-object v0, p0, Lfr/testudo/spacecorsair/activity/SettingsActivity;->cbInvertJoysticks:Landroid/widget/CheckBox;

    iget-boolean v1, v3, Lfr/testudo/spacecorsair/game/Config;->mogaInvertJoystick:Z

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 129
    iget-object v0, p0, Lfr/testudo/spacecorsair/activity/SettingsActivity;->ckbFx:Landroid/widget/CheckBox;

    iget-object v1, p0, Lfr/testudo/spacecorsair/activity/SettingsActivity;->layMusicVolume:Landroid/view/View;

    iget-object v2, p0, Lfr/testudo/spacecorsair/activity/SettingsActivity;->skbMusic:Landroid/widget/SeekBar;

    invoke-static {p0, v0, v1, v2}, Lfr/testudo/spacecorsair/mod/ModSound;->settingsBar(Landroid/app/Activity;Landroid/widget/CheckBox;Landroid/view/View;Landroid/widget/SeekBar;)V

    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModQol;->settings(Ljava/lang/Object;)V

    return-void

    :cond_a2
    move v0, v2

    .line 98
    goto/16 :goto_1c

    :cond_a5
    move v0, v2

    .line 108
    goto :goto_5f

    .line 119
    :cond_a7
    iget-object v0, p0, Lfr/testudo/spacecorsair/activity/SettingsActivity;->layMogaNotConnected:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 120
    iget-object v0, p0, Lfr/testudo/spacecorsair/activity/SettingsActivity;->layMogaConnected:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_88
.end method

.method mogaHelp()V
    .registers 3

    .prologue
    .line 63
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lfr/testudo/spacecorsair/activity/MogaHelpActivity_;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 64
    invoke-virtual {p0, v0}, Lfr/testudo/spacecorsair/activity/SettingsActivity;->startActivity(Landroid/content/Intent;)V

    .line 65
    return-void
.end method

.method protected onPause()V
    .registers 1

    .prologue
    .line 32
    invoke-super {p0}, Lfr/testudo/spacecorsair/activity/CommonActivity;->onPause()V

    .line 33
    invoke-direct {p0}, Lfr/testudo/spacecorsair/activity/SettingsActivity;->applyConfig()V

    .line 34
    return-void
.end method

.method public onStart()V
    .registers 1

    .prologue
    .line 157
    invoke-super {p0}, Lfr/testudo/spacecorsair/activity/CommonActivity;->onStart()V

    .line 159
    return-void
.end method

.method public onStop()V
    .registers 1

    .prologue
    .line 163
    invoke-super {p0}, Lfr/testudo/spacecorsair/activity/CommonActivity;->onStop()V

    .line 165
    return-void
.end method

.method public overrideJoystick()V
    .registers 3

    .prologue
    .line 43
    iget-object v1, p0, Lfr/testudo/spacecorsair/activity/SettingsActivity;->layJoystickSize:Landroid/view/View;

    iget-object v0, p0, Lfr/testudo/spacecorsair/activity/SettingsActivity;->ckbOverrideJoystick:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_f

    const/4 v0, 0x0

    :goto_b
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 44
    return-void

    .line 43
    :cond_f
    const/16 v0, 0x8

    goto :goto_b
.end method

.method rateTheApp()V
    .registers 5

    .prologue
    .line 77
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "market://details?id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const v3, 0x7f0703b9

    invoke-virtual {p0, v3}, Lfr/testudo/spacecorsair/activity/SettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 78
    invoke-virtual {p0, v0}, Lfr/testudo/spacecorsair/activity/SettingsActivity;->startActivity(Landroid/content/Intent;)V

    .line 79
    return-void
.end method

.method public sendFeedback()V
    .registers 6

    .prologue
    .line 48
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SENDTO"

    const-string v2, "mailto"

    const v3, 0x7f0703ba

    invoke-virtual {p0, v3}, Lfr/testudo/spacecorsair/activity/SettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 50
    const-string v1, "android.intent.extra.SUBJECT"

    const-string v2, "Space corsair"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 51
    const-string v1, "Space corsair"

    invoke-static {v0, v1}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lfr/testudo/spacecorsair/activity/SettingsActivity;->startActivity(Landroid/content/Intent;)V

    .line 52
    invoke-static {}, Lfr/testudo/spacecorsair/game/achievements/AchievementEventListener;->onSendEmailToDev()V

    .line 53
    return-void
.end method

.method share()V
    .registers 1

    .prologue
    .line 89
    invoke-static {p0}, Lfr/testudo/spacecorsair/utils/UserEngagement;->proposeShare(Landroid/content/Context;)V

    .line 90
    return-void
.end method

.method showCredits()V
    .registers 3

    .prologue
    .line 83
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lfr/testudo/spacecorsair/activity/CreditsActivity_;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 84
    invoke-virtual {p0, v0}, Lfr/testudo/spacecorsair/activity/SettingsActivity;->startActivity(Landroid/content/Intent;)V

    .line 85
    return-void
.end method

.method showStats()V
    .registers 3

    .prologue
    .line 70
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lfr/testudo/spacecorsair/activity/StatsActivity_;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 71
    invoke-virtual {p0, v0}, Lfr/testudo/spacecorsair/activity/SettingsActivity;->startActivity(Landroid/content/Intent;)V

    .line 72
    return-void
.end method

.method public updateMusic()V
    .registers 3

    .prologue
    .line 38
    iget-object v1, p0, Lfr/testudo/spacecorsair/activity/SettingsActivity;->layMusicVolume:Landroid/view/View;

    iget-object v0, p0, Lfr/testudo/spacecorsair/activity/SettingsActivity;->ckbMusic:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_f

    const/4 v0, 0x0

    :goto_b
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 39
    return-void

    .line 38
    :cond_f
    const/16 v0, 0x8

    goto :goto_b
.end method
