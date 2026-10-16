.class public Lfr/testudo/spacecorsair/activity/CreditsActivity;
.super Lfr/testudo/spacecorsair/activity/CommonActivity;
.source "SourceFile"


# instance fields
.field protected layApp:Landroid/widget/LinearLayout;

.field protected layChangelog:Landroid/widget/LinearLayout;

.field protected layCredits:Landroid/widget/LinearLayout;

.field protected layDevTeam:Landroid/widget/LinearLayout;

.field protected laySpecialThanks:Landroid/widget/LinearLayout;

.field protected layoutScrollThanks:Landroid/widget/ScrollView;

.field private scrollTimer:Ljava/util/Timer;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 31
    invoke-direct {p0}, Lfr/testudo/spacecorsair/activity/CommonActivity;-><init>()V

    return-void
.end method

.method private getTextView(Ljava/lang/String;)Landroid/widget/TextView;
    .registers 5

    .prologue
    .line 92
    new-instance v0, Landroid/widget/TextView;

    iget-object v1, p0, Lfr/testudo/spacecorsair/activity/CreditsActivity;->context:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 93
    invoke-static {p1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 94
    invoke-virtual {p0}, Lfr/testudo/spacecorsair/activity/CreditsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090001

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 95
    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 96
    return-object v0
.end method

.method private makeItScroll()V
    .registers 7

    .prologue
    const-wide/16 v2, 0x23

    .line 101
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lfr/testudo/spacecorsair/activity/CreditsActivity;->scrollTimer:Ljava/util/Timer;

    .line 102
    new-instance v1, Lfr/testudo/spacecorsair/activity/CreditsActivity$1;

    invoke-direct {v1, p0}, Lfr/testudo/spacecorsair/activity/CreditsActivity$1;-><init>(Lfr/testudo/spacecorsair/activity/CreditsActivity;)V

    .line 114
    iget-object v0, p0, Lfr/testudo/spacecorsair/activity/CreditsActivity;->scrollTimer:Ljava/util/Timer;

    move-wide v4, v2

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 115
    return-void
.end method

.method private showThanks()V
    .registers 6

    .prologue
    const/4 v0, 0x0

    .line 53
    :try_start_1
    invoke-virtual {p0}, Lfr/testudo/spacecorsair/activity/CreditsActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 54
    invoke-virtual {p0}, Lfr/testudo/spacecorsair/activity/CreditsActivity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 57
    iget-object v2, p0, Lfr/testudo/spacecorsair/activity/CreditsActivity;->layApp:Landroid/widget/LinearLayout;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Space corsair version "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", build n\u00b0"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v1, v1, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lfr/testudo/spacecorsair/activity/CreditsActivity;->getTextView(Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 60
    iget-object v1, p0, Lfr/testudo/spacecorsair/activity/CreditsActivity;->layDevTeam:Landroid/widget/LinearLayout;

    const-string v2, "Jocelyn Demoy - Project manager, developer"

    invoke-direct {p0, v2}, Lfr/testudo/spacecorsair/activity/CreditsActivity;->getTextView(Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 61
    iget-object v1, p0, Lfr/testudo/spacecorsair/activity/CreditsActivity;->layDevTeam:Landroid/widget/LinearLayout;

    const-string v2, "Mathieu Debrito - Developer, designer"

    invoke-direct {p0, v2}, Lfr/testudo/spacecorsair/activity/CreditsActivity;->getTextView(Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 62
    iget-object v1, p0, Lfr/testudo/spacecorsair/activity/CreditsActivity;->layDevTeam:Landroid/widget/LinearLayout;

    const-string v2, "Raharijesy Eric - Designer"

    invoke-direct {p0, v2}, Lfr/testudo/spacecorsair/activity/CreditsActivity;->getTextView(Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 63
    iget-object v1, p0, Lfr/testudo/spacecorsair/activity/CreditsActivity;->layDevTeam:Landroid/widget/LinearLayout;

    const-string v2, "Florent Delalande - Tester"

    invoke-direct {p0, v2}, Lfr/testudo/spacecorsair/activity/CreditsActivity;->getTextView(Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 64
    iget-object v1, p0, Lfr/testudo/spacecorsair/activity/CreditsActivity;->layDevTeam:Landroid/widget/LinearLayout;

    const-string v2, "Alexis Coudeyras - Tester (owner of alcou corps)"

    invoke-direct {p0, v2}, Lfr/testudo/spacecorsair/activity/CreditsActivity;->getTextView(Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 65
    iget-object v1, p0, Lfr/testudo/spacecorsair/activity/CreditsActivity;->layDevTeam:Landroid/widget/LinearLayout;

    const-string v2, "Guillaume Breteau - Tester"

    invoke-direct {p0, v2}, Lfr/testudo/spacecorsair/activity/CreditsActivity;->getTextView(Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 66
    iget-object v1, p0, Lfr/testudo/spacecorsair/activity/CreditsActivity;->layDevTeam:Landroid/widget/LinearLayout;

    const-string v2, "Olivier Dupond - Tester"

    invoke-direct {p0, v2}, Lfr/testudo/spacecorsair/activity/CreditsActivity;->getTextView(Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 67
    iget-object v1, p0, Lfr/testudo/spacecorsair/activity/CreditsActivity;->layDevTeam:Landroid/widget/LinearLayout;

    const-string v2, "Nicolas Auvinet - Tester"

    invoke-direct {p0, v2}, Lfr/testudo/spacecorsair/activity/CreditsActivity;->getTextView(Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 68
    iget-object v1, p0, Lfr/testudo/spacecorsair/activity/CreditsActivity;->layDevTeam:Landroid/widget/LinearLayout;

    const-string v2, "Hugo Lemarchand - Tester"

    invoke-direct {p0, v2}, Lfr/testudo/spacecorsair/activity/CreditsActivity;->getTextView(Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 71
    iget-object v1, p0, Lfr/testudo/spacecorsair/activity/CreditsActivity;->laySpecialThanks:Landroid/widget/LinearLayout;

    const-string v2, "My wife for agreeing to share her weekends with the game developement process"

    invoke-direct {p0, v2}, Lfr/testudo/spacecorsair/activity/CreditsActivity;->getTextView(Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 72
    iget-object v1, p0, Lfr/testudo/spacecorsair/activity/CreditsActivity;->laySpecialThanks:Landroid/widget/LinearLayout;

    const-string v2, "All my workmates for the support, the nice ideas and the testing sessions"

    invoke-direct {p0, v2}, Lfr/testudo/spacecorsair/activity/CreditsActivity;->getTextView(Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 73
    iget-object v1, p0, Lfr/testudo/spacecorsair/activity/CreditsActivity;->laySpecialThanks:Landroid/widget/LinearLayout;

    const-string v2, "Pieter Harmse for his Helpful opengl text library"

    invoke-direct {p0, v2}, Lfr/testudo/spacecorsair/activity/CreditsActivity;->getTextView(Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 74
    iget-object v1, p0, Lfr/testudo/spacecorsair/activity/CreditsActivity;->laySpecialThanks:Landroid/widget/LinearLayout;

    const-string v2, "[Patashu] for his help on development (Stackoverflow)"

    invoke-direct {p0, v2}, Lfr/testudo/spacecorsair/activity/CreditsActivity;->getTextView(Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 75
    iget-object v1, p0, Lfr/testudo/spacecorsair/activity/CreditsActivity;->laySpecialThanks:Landroid/widget/LinearLayout;

    const-string v2, "[Skorpio] and [GM_Shaber] for his fair use of images (http://opengameart.org/)"

    invoke-direct {p0, v2}, Lfr/testudo/spacecorsair/activity/CreditsActivity;->getTextView(Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 76
    iget-object v1, p0, Lfr/testudo/spacecorsair/activity/CreditsActivity;->laySpecialThanks:Landroid/widget/LinearLayout;

    const-string v2, "[millionthvector] for his nices images (http://millionthvector.blogspot.de/)"

    invoke-direct {p0, v2}, Lfr/testudo/spacecorsair/activity/CreditsActivity;->getTextView(Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 77
    iget-object v1, p0, Lfr/testudo/spacecorsair/activity/CreditsActivity;->laySpecialThanks:Landroid/widget/LinearLayout;

    const-string v2, ""

    invoke-direct {p0, v2}, Lfr/testudo/spacecorsair/activity/CreditsActivity;->getTextView(Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 79
    invoke-virtual {p0}, Lfr/testudo/spacecorsair/activity/CreditsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/high16 v2, 0x7f0b0000

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 81
    array-length v2, v1

    :goto_f3
    if-ge v0, v2, :cond_112

    aget-object v3, v1, v0

    .line 82
    iget-object v4, p0, Lfr/testudo/spacecorsair/activity/CreditsActivity;->layChangelog:Landroid/widget/LinearLayout;

    invoke-direct {p0, v3}, Lfr/testudo/spacecorsair/activity/CreditsActivity;->getTextView(Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v4, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 83
    iget-object v3, p0, Lfr/testudo/spacecorsair/activity/CreditsActivity;->layChangelog:Landroid/widget/LinearLayout;

    const-string v4, " "

    invoke-direct {p0, v4}, Lfr/testudo/spacecorsair/activity/CreditsActivity;->getTextView(Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V
    :try_end_10b
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_10b} :catch_10e

    .line 81
    add-int/lit8 v0, v0, 0x1

    goto :goto_f3

    .line 86
    :catch_10e
    move-exception v0

    .line 87
    invoke-static {v0}, Lfr/testudo/spacecorsair/utils/ExceptionHandler;->handle(Ljava/lang/Exception;)V

    .line 89
    :cond_112
    return-void
.end method


# virtual methods
.method protected back()V
    .registers 1

    .prologue
    .line 119
    invoke-virtual {p0}, Lfr/testudo/spacecorsair/activity/CreditsActivity;->finish()V

    .line 120
    return-void
.end method

.method public initViews()V
    .registers 3

    .prologue
    .line 43
    iput-object p0, p0, Lfr/testudo/spacecorsair/activity/CreditsActivity;->context:Landroid/app/Activity;

    .line 45
    invoke-direct {p0}, Lfr/testudo/spacecorsair/activity/CreditsActivity;->showThanks()V

    .line 46
    sget-object v0, Lfr/testudo/spacecorsair/utils/Fonts;->antigrav:Landroid/graphics/Typeface;

    iget-object v1, p0, Lfr/testudo/spacecorsair/activity/CreditsActivity;->layCredits:Landroid/widget/LinearLayout;

    invoke-static {v0, v1}, Lfr/testudo/spacecorsair/utils/Fonts;->setFontToAllViews(Landroid/graphics/Typeface;Landroid/view/ViewGroup;)V

    .line 47
    invoke-direct {p0}, Lfr/testudo/spacecorsair/activity/CreditsActivity;->makeItScroll()V

    .line 48
    return-void
.end method

.method public onStart()V
    .registers 1

    .prologue
    .line 124
    invoke-super {p0}, Lfr/testudo/spacecorsair/activity/CommonActivity;->onStart()V

    .line 126
    return-void
.end method

.method public onStop()V
    .registers 1

    .prologue
    .line 130
    invoke-super {p0}, Lfr/testudo/spacecorsair/activity/CommonActivity;->onStop()V

    .line 132
    return-void
.end method
