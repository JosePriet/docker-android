.class public Lfr/testudo/spacecorsair/activity/MissionActivity;
.super Lfr/testudo/spacecorsair/activity/CommonActivity;
.source "SourceFile"


# instance fields
.field protected adapter:Lfr/testudo/spacecorsair/activity/adapters/MissionAdapter;

.field protected layCurrentMission:Landroid/view/ViewGroup;

.field protected layMissionsList:Landroid/view/ViewGroup;

.field protected layNoMission:Landroid/view/ViewGroup;

.field protected lstAvailableMissions:Landroid/widget/ListView;

.field protected textStGenesis:Landroid/widget/TextView;

.field protected textStVentohigh:Landroid/widget/TextView;

.field protected textYouHaveNoMissions:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 32
    invoke-direct {p0}, Lfr/testudo/spacecorsair/activity/CommonActivity;-><init>()V

    return-void
.end method

.method private showCurrentMission()V
    .registers 3

    .prologue
    .line 79
    iget-object v0, p0, Lfr/testudo/spacecorsair/activity/MissionActivity;->layCurrentMission:Landroid/view/ViewGroup;

    invoke-direct {p0, v0}, Lfr/testudo/spacecorsair/activity/MissionActivity;->showSection(Landroid/view/View;)V

    .line 81
    invoke-static {p0}, Lfr/testudo/spacecorsair/activity/viewgroup/MissionItem_;->build(Landroid/content/Context;)Lfr/testudo/spacecorsair/activity/viewgroup/MissionItem;

    move-result-object v0

    .line 82
    sget-object v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v1, v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->currentMission:Lfr/testudo/spacecorsair/business/mission/Mission;

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/activity/viewgroup/MissionItem;->bind(Lfr/testudo/spacecorsair/business/mission/Mission;)V

    .line 83
    invoke-virtual {v0}, Lfr/testudo/spacecorsair/activity/viewgroup/MissionItem;->showHideDetails()V

    .line 85
    iget-object v1, p0, Lfr/testudo/spacecorsair/activity/MissionActivity;->layCurrentMission:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 86
    return-void
.end method

.method private showMissionList()V
    .registers 3

    .prologue
    .line 89
    iget-object v0, p0, Lfr/testudo/spacecorsair/activity/MissionActivity;->layMissionsList:Landroid/view/ViewGroup;

    invoke-direct {p0, v0}, Lfr/testudo/spacecorsair/activity/MissionActivity;->showSection(Landroid/view/View;)V

    .line 91
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->missionRepository:Lfr/testudo/spacecorsair/business/mission/MissionRepository;

    sget-object v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v1, v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v1, v1, Lfr/testudo/spacecorsair/game/Game;->currentLevel:Lfr/testudo/spacecorsair/game/levels/Level;

    iget-object v1, v1, Lfr/testudo/spacecorsair/game/levels/Level;->id:Lfr/testudo/spacecorsair/game/levels/LevelId;

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/business/mission/MissionRepository;->getAvaillableMission(Lfr/testudo/spacecorsair/game/levels/LevelId;)Ljava/util/List;

    move-result-object v0

    .line 93
    new-instance v1, Lfr/testudo/spacecorsair/activity/adapters/MissionAdapter;

    invoke-direct {v1, p0, v0}, Lfr/testudo/spacecorsair/activity/adapters/MissionAdapter;-><init>(Landroid/app/Activity;Ljava/util/List;)V

    iput-object v1, p0, Lfr/testudo/spacecorsair/activity/MissionActivity;->adapter:Lfr/testudo/spacecorsair/activity/adapters/MissionAdapter;

    .line 94
    iget-object v0, p0, Lfr/testudo/spacecorsair/activity/MissionActivity;->lstAvailableMissions:Landroid/widget/ListView;

    iget-object v1, p0, Lfr/testudo/spacecorsair/activity/MissionActivity;->adapter:Lfr/testudo/spacecorsair/activity/adapters/MissionAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 95
    return-void
.end method

.method private showNoMission()V
    .registers 4

    .prologue
    .line 73
    iget-object v0, p0, Lfr/testudo/spacecorsair/activity/MissionActivity;->layNoMission:Landroid/view/ViewGroup;

    invoke-direct {p0, v0}, Lfr/testudo/spacecorsair/activity/MissionActivity;->showSection(Landroid/view/View;)V

    .line 75
    iget-object v0, p0, Lfr/testudo/spacecorsair/activity/MissionActivity;->textYouHaveNoMissions:Landroid/widget/TextView;

    sget-object v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    const v2, 0x7f0702a5

    invoke-virtual {v1, v2}, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->getLocalizedString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 76
    return-void
.end method

.method private showSection(Landroid/view/View;)V
    .registers 4

    .prologue
    const/16 v1, 0x8

    .line 66
    iget-object v0, p0, Lfr/testudo/spacecorsair/activity/MissionActivity;->layMissionsList:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 67
    iget-object v0, p0, Lfr/testudo/spacecorsair/activity/MissionActivity;->layCurrentMission:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 68
    iget-object v0, p0, Lfr/testudo/spacecorsair/activity/MissionActivity;->layNoMission:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 69
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 70
    return-void
.end method


# virtual methods
.method public bindUI()V
    .registers 2

    .prologue
    .line 52
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->currentMission:Lfr/testudo/spacecorsair/business/mission/Mission;

    if-eqz v0, :cond_d

    const/4 v0, 0x1

    .line 54
    :goto_7
    if-eqz v0, :cond_f

    .line 55
    invoke-direct {p0}, Lfr/testudo/spacecorsair/activity/MissionActivity;->showCurrentMission()V

    .line 63
    :goto_c
    return-void

    .line 52
    :cond_d
    const/4 v0, 0x0

    goto :goto_7

    .line 57
    :cond_f
    invoke-static {}, Lfr/testudo/spacecorsair/utils/MissionUtils;->isDockedToMission()Z

    move-result v0

    if-eqz v0, :cond_19

    .line 58
    invoke-direct {p0}, Lfr/testudo/spacecorsair/activity/MissionActivity;->showMissionList()V

    goto :goto_c

    .line 60
    :cond_19
    invoke-direct {p0}, Lfr/testudo/spacecorsair/activity/MissionActivity;->showNoMission()V

    goto :goto_c
.end method

.method protected onPause()V
    .registers 3

    .prologue
    .line 117
    invoke-super {p0}, Lfr/testudo/spacecorsair/activity/CommonActivity;->onPause()V

    .line 118
    const v0, 0x7f040002

    const v1, 0x7f040003

    invoke-virtual {p0, v0, v1}, Lfr/testudo/spacecorsair/activity/MissionActivity;->overridePendingTransition(II)V

    .line 119
    return-void
.end method

.method protected onResume()V
    .registers 3

    .prologue
    .line 111
    const v0, 0x7f040002

    const v1, 0x7f040003

    invoke-virtual {p0, v0, v1}, Lfr/testudo/spacecorsair/activity/MissionActivity;->overridePendingTransition(II)V

    .line 112
    invoke-super {p0}, Lfr/testudo/spacecorsair/activity/CommonActivity;->onResume()V

    .line 113
    return-void
.end method

.method public onStart()V
    .registers 1

    .prologue
    .line 99
    invoke-super {p0}, Lfr/testudo/spacecorsair/activity/CommonActivity;->onStart()V

    .line 101
    return-void
.end method

.method public onStop()V
    .registers 1

    .prologue
    .line 105
    invoke-super {p0}, Lfr/testudo/spacecorsair/activity/CommonActivity;->onStop()V

    .line 107
    return-void
.end method

.method public removeAdd()V
    .registers 1

    .prologue
    .line 47
    invoke-static {p0}, Lfr/testudo/spacecorsair/business/Util;->removeAddIfNecessary(Landroid/app/Activity;)V

    .line 48
    return-void
.end method
