.class public final Lfr/testudo/spacecorsair/activity/MissionActivity_;
.super Lfr/testudo/spacecorsair/activity/MissionActivity;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lfr/testudo/spacecorsair/activity/MissionActivity_$IntentBuilder_;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 20
    invoke-direct {p0}, Lfr/testudo/spacecorsair/activity/MissionActivity;-><init>()V

    .line 71
    return-void
.end method

.method private afterSetContentView_()V
    .registers 2

    .prologue
    .line 38
    const v0, 0x7f0a0095

    invoke-virtual {p0, v0}, Lfr/testudo/spacecorsair/activity/MissionActivity_;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lfr/testudo/spacecorsair/activity/MissionActivity_;->layMissionsList:Landroid/view/ViewGroup;

    .line 39
    const v0, 0x7f0a0099

    invoke-virtual {p0, v0}, Lfr/testudo/spacecorsair/activity/MissionActivity_;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lfr/testudo/spacecorsair/activity/MissionActivity_;->textStGenesis:Landroid/widget/TextView;

    .line 40
    const v0, 0x7f0a0098

    invoke-virtual {p0, v0}, Lfr/testudo/spacecorsair/activity/MissionActivity_;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lfr/testudo/spacecorsair/activity/MissionActivity_;->textYouHaveNoMissions:Landroid/widget/TextView;

    .line 41
    const v0, 0x7f0a0097

    invoke-virtual {p0, v0}, Lfr/testudo/spacecorsair/activity/MissionActivity_;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lfr/testudo/spacecorsair/activity/MissionActivity_;->layNoMission:Landroid/view/ViewGroup;

    .line 42
    const v0, 0x7f0a0094

    invoke-virtual {p0, v0}, Lfr/testudo/spacecorsair/activity/MissionActivity_;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lfr/testudo/spacecorsair/activity/MissionActivity_;->layCurrentMission:Landroid/view/ViewGroup;

    .line 43
    const v0, 0x7f0a009a

    invoke-virtual {p0, v0}, Lfr/testudo/spacecorsair/activity/MissionActivity_;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lfr/testudo/spacecorsair/activity/MissionActivity_;->textStVentohigh:Landroid/widget/TextView;

    .line 44
    const v0, 0x7f0a0096

    invoke-virtual {p0, v0}, Lfr/testudo/spacecorsair/activity/MissionActivity_;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lfr/testudo/spacecorsair/activity/MissionActivity_;->lstAvailableMissions:Landroid/widget/ListView;

    .line 45
    invoke-virtual {p0}, Lfr/testudo/spacecorsair/activity/MissionActivity_;->removeAdd()V

    .line 46
    invoke-virtual {p0}, Lfr/testudo/spacecorsair/activity/MissionActivity_;->bindUI()V

    .line 47
    return-void
.end method

.method private init_(Landroid/os/Bundle;)V
    .registers 4

    .prologue
    const/16 v1, 0x400

    .line 33
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lfr/testudo/spacecorsair/activity/MissionActivity_;->requestWindowFeature(I)Z

    .line 34
    invoke-virtual {p0}, Lfr/testudo/spacecorsair/activity/MissionActivity_;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setFlags(II)V

    .line 35
    return-void
.end method

.method public static intent(Landroid/content/Context;)Lfr/testudo/spacecorsair/activity/MissionActivity_$IntentBuilder_;
    .registers 2

    .prologue
    .line 68
    new-instance v0, Lfr/testudo/spacecorsair/activity/MissionActivity_$IntentBuilder_;

    invoke-direct {v0, p0}, Lfr/testudo/spacecorsair/activity/MissionActivity_$IntentBuilder_;-><init>(Landroid/content/Context;)V

    return-object v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .registers 3

    .prologue
    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModLang;->apply(Landroid/app/Activity;)V
    .line 27
    invoke-direct {p0, p1}, Lfr/testudo/spacecorsair/activity/MissionActivity_;->init_(Landroid/os/Bundle;)V

    .line 28
    invoke-super {p0, p1}, Lfr/testudo/spacecorsair/activity/MissionActivity;->onCreate(Landroid/os/Bundle;)V

    .line 29
    const v0, 0x7f03000f

    invoke-virtual {p0, v0}, Lfr/testudo/spacecorsair/activity/MissionActivity_;->setContentView(I)V

    .line 30
    return-void
.end method

.method public setContentView(I)V
    .registers 2

    .prologue
    .line 51
    invoke-super {p0, p1}, Lfr/testudo/spacecorsair/activity/MissionActivity;->setContentView(I)V

    .line 52
    invoke-direct {p0}, Lfr/testudo/spacecorsair/activity/MissionActivity_;->afterSetContentView_()V

    .line 53
    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .registers 2

    .prologue
    .line 63
    invoke-super {p0, p1}, Lfr/testudo/spacecorsair/activity/MissionActivity;->setContentView(Landroid/view/View;)V

    .line 64
    invoke-direct {p0}, Lfr/testudo/spacecorsair/activity/MissionActivity_;->afterSetContentView_()V

    .line 65
    return-void
.end method

.method public setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .registers 3

    .prologue
    .line 57
    invoke-super {p0, p1, p2}, Lfr/testudo/spacecorsair/activity/MissionActivity;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 58
    invoke-direct {p0}, Lfr/testudo/spacecorsair/activity/MissionActivity_;->afterSetContentView_()V

    .line 59
    return-void
.end method
