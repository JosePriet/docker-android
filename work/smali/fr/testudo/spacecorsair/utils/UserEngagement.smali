.class public Lfr/testudo/spacecorsair/utils/UserEngagement;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final APPLICATION_FIRST_INSTALL_DONE:Ljava/lang/String; = "app_first_install"

.field public static final CURRENT_VERSION:Ljava/lang/String; = "current_version"

.field private static final HOURS_AFTER_INSTALL:I = 0x1

.field private static final LAUNCHES_UNTIL_PROMPT:I = 0x2

.field private static final PREFS_DATE_FIRST_LAUNCH:Ljava/lang/String; = "rate_datefirstlaunch"

.field private static final PREFS_DONT_SHOW_AGAIN:Ljava/lang/String; = "rate_dontshowagain"

.field private static final PREFS_LAUNCH_COUNT:Ljava/lang/String; = "rate_launchcount"

.field public static final PREVIOUS_VERSION:Ljava/lang/String; = "previous_version"

.field public static final SHOW_VERSION_PREFIX:Ljava/lang/String; = "show_version_update_"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getShareMessage(Landroid/content/Context;)Ljava/lang/String;
    .registers 4

    .prologue
    .line 171
    const-string v0, "templates/share.tpl"

    invoke-static {p0, v0}, Lfr/testudo/spacecorsair/utils/AssetsFileReader;->read(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 172
    const-string v1, "[appName]"

    const v2, 0x7f070232

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 173
    const-string v1, "[appPackage]"

    const v2, 0x7f0703b9

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 174
    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 175
    return-object v0
.end method

.method private static isFirstInstall(Landroid/content/Context;)Z
    .registers 2

    .prologue
    .line 159
    const-string v0, "app_first_install"

    invoke-static {p0, v0}, Lfr/testudo/spacecorsair/storage/SharedPrefs;->getBoolean(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public static isNewVersion(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 4

    .prologue
    .line 75
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "show_version_update_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lfr/testudo/spacecorsair/storage/SharedPrefs;->getBoolean(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    .line 76
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1f

    const/4 v0, 0x1

    :goto_1e
    return v0

    :cond_1f
    const/4 v0, 0x0

    goto :goto_1e
.end method

.method public static isNewVersionAndNotFirstStart(Landroid/content/Context;)Z
    .registers 5

    .prologue
    const/4 v0, 0x1

    .line 60
    const v1, 0x7f0703b8

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 61
    invoke-static {p0}, Lfr/testudo/spacecorsair/utils/UserEngagement;->isFirstInstall(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_15

    .line 62
    invoke-static {p0, v1}, Lfr/testudo/spacecorsair/utils/UserEngagement;->isNewVersion(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_39

    .line 71
    :goto_14
    return v0

    .line 67
    :cond_15
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "show_version_update_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {p0, v2, v0}, Lfr/testudo/spacecorsair/storage/SharedPrefs;->editBoolean(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 68
    const-string v0, "current_version"

    invoke-static {p0, v0, v1}, Lfr/testudo/spacecorsair/storage/SharedPrefs;->editString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    const-string v0, "previous_version"

    invoke-static {p0, v0, v1}, Lfr/testudo/spacecorsair/storage/SharedPrefs;->editString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    :cond_39
    const/4 v0, 0x0

    goto :goto_14
.end method

.method public static proposeRate(Landroid/content/Context;)V
    .registers 7

    .prologue
    const/4 v0, 0x1

    .line 84
    invoke-static {p0}, Lfr/testudo/spacecorsair/utils/UserEngagement;->isFirstInstall(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_16

    .line 85
    const-string v1, "app_first_install"

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {p0, v1, v0}, Lfr/testudo/spacecorsair/storage/SharedPrefs;->editBoolean(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 86
    const-string v0, "first install"

    invoke-static {v0}, Lfr/testudo/spacecorsair/utils/Logs;->d(Ljava/lang/String;)V

    .line 120
    :cond_15
    :goto_15
    return-void

    .line 91
    :cond_16
    const-string v1, "rate_dontshowagain"

    invoke-static {p0, v1}, Lfr/testudo/spacecorsair/storage/SharedPrefs;->getBoolean(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_28

    .line 92
    const-string v0, "don\'t show again"

    invoke-static {v0}, Lfr/testudo/spacecorsair/utils/Logs;->d(Ljava/lang/String;)V

    goto :goto_15

    .line 97
    :cond_28
    const-string v1, "rate_launchcount"

    invoke-static {p0, v1}, Lfr/testudo/spacecorsair/storage/SharedPrefs;->getInt(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    .line 98
    if-gtz v1, :cond_8d

    .line 99
    :goto_30
    const-string v1, "rate_launchcount"

    invoke-static {p0, v1, v0}, Lfr/testudo/spacecorsair/storage/SharedPrefs;->editInt(Landroid/content/Context;Ljava/lang/String;I)V

    .line 102
    const-string v1, "rate_datefirstlaunch"

    invoke-static {p0, v1}, Lfr/testudo/spacecorsair/storage/SharedPrefs;->getLong(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 103
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-gtz v2, :cond_5a

    .line 104
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 105
    const-string v2, "rate_datefirstlaunch"

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {p0, v2, v4, v5}, Lfr/testudo/spacecorsair/storage/SharedPrefs;->editLong(Landroid/content/Context;Ljava/lang/String;J)V

    .line 109
    :cond_5a
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "launch_count = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lfr/testudo/spacecorsair/utils/Logs;->d(Ljava/lang/String;)V

    .line 110
    const/4 v2, 0x2

    if-lt v0, v2, :cond_15

    .line 111
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/32 v4, 0x36ee80

    add-long/2addr v0, v4

    cmp-long v0, v2, v0

    if-ltz v0, :cond_15

    .line 112
    invoke-static {p0}, Lfr/testudo/spacecorsair/utils/UserEngagement;->showRateDialog(Landroid/content/Context;)V

    .line 113
    const-string v0, "rate_launchcount"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lfr/testudo/spacecorsair/storage/SharedPrefs;->editInt(Landroid/content/Context;Ljava/lang/String;I)V

    goto :goto_15

    .line 98
    :cond_8d
    add-int/lit8 v0, v1, 0x1

    goto :goto_30
.end method

.method public static proposeShare(Landroid/content/Context;)V
    .registers 4

    .prologue
    .line 163
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SEND"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 164
    const-string v1, "text/html"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 165
    const-string v1, "android.intent.extra.SUBJECT"

    const v2, 0x7f070232

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 166
    const-string v1, "android.intent.extra.TEXT"

    invoke-static {p0}, Lfr/testudo/spacecorsair/utils/UserEngagement;->getShareMessage(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 167
    const v1, 0x7f070353

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 168
    return-void
.end method

.method public static proposeVersionUpdate(Landroid/content/Context;)V
    .registers 6

    .prologue
    .line 42
    const v0, 0x7f0703b8

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 44
    invoke-static {p0}, Lfr/testudo/spacecorsair/utils/UserEngagement;->isNewVersionAndNotFirstStart(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_53

    .line 46
    const v1, 0x7f070187

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 47
    const v2, 0x7f020054

    .line 49
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const/high16 v4, 0x7f0b0000

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    .line 50
    const/4 v4, 0x0

    aget-object v3, v3, v4

    .line 51
    const/4 v4, 0x0

    invoke-static {p0, v1, v2, v3, v4}, Lfr/testudo/spacecorsair/utils/InGameDialog;->show(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;Ljava/lang/Runnable;)Landroid/app/Dialog;

    .line 53
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "show_version_update_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {p0, v1, v2}, Lfr/testudo/spacecorsair/storage/SharedPrefs;->editBoolean(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 54
    const-string v1, "previous_version"

    const-string v2, "current_version"

    invoke-static {p0, v2}, Lfr/testudo/spacecorsair/storage/SharedPrefs;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v1, v2}, Lfr/testudo/spacecorsair/storage/SharedPrefs;->editString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    const-string v1, "current_version"

    invoke-static {p0, v1, v0}, Lfr/testudo/spacecorsair/storage/SharedPrefs;->editString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    :cond_53
    return-void
.end method

.method private static showRateDialog(Landroid/content/Context;)V
    .registers 4

    .prologue
    .line 124
    new-instance v1, Landroid/app/Dialog;

    const v0, 0x1030011

    invoke-direct {v1, p0, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 125
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    .line 126
    const v0, 0x7f030009

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->setContentView(I)V

    .line 128
    const v0, 0x7f0a0040

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 129
    const v2, 0x7f070351

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 131
    const v0, 0x7f0a0042

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 132
    new-instance v2, Lfr/testudo/spacecorsair/utils/UserEngagement$1;

    invoke-direct {v2, p0, v1}, Lfr/testudo/spacecorsair/utils/UserEngagement$1;-><init>(Landroid/content/Context;Landroid/app/Dialog;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 139
    const v0, 0x7f0a0041

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 140
    new-instance v2, Lfr/testudo/spacecorsair/utils/UserEngagement$2;

    invoke-direct {v2, p0}, Lfr/testudo/spacecorsair/utils/UserEngagement$2;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 148
    const v0, 0x7f0a0036

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 149
    new-instance v2, Lfr/testudo/spacecorsair/utils/UserEngagement$3;

    invoke-direct {v2, v1}, Lfr/testudo/spacecorsair/utils/UserEngagement$3;-><init>(Landroid/app/Dialog;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 155
    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    .line 156
    return-void
.end method
