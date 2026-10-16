.class public Lfr/testudo/spacecorsair/activity/viewgroup/MissionItem;
.super Landroid/widget/RelativeLayout;
.source "SourceFile"


# instance fields
.field protected btnAccept:Landroid/widget/Button;

.field protected btnGiveUp:Landroid/widget/Button;

.field protected btnReward:Landroid/widget/Button;

.field protected imgAlreadyDone:Landroid/widget/ImageView;

.field protected imgInstructions:Landroid/widget/ImageView;

.field protected imgRepeatable:Landroid/widget/ImageView;

.field protected imgRewards:Landroid/widget/ImageView;

.field protected layRewards:Landroid/view/ViewGroup;

.field protected mission:Lfr/testudo/spacecorsair/business/mission/Mission;

.field protected txtAlreadyDone:Landroid/widget/TextView;

.field protected txtCredits:Landroid/widget/TextView;

.field protected txtDescription:Landroid/widget/TextView;

.field protected txtInstruction:Landroid/widget/TextView;

.field protected txtLevel:Landroid/widget/TextView;

.field protected txtLevelTitle:Landroid/widget/TextView;

.field protected txtName:Landroid/widget/TextView;

.field protected txtRepeatable:Landroid/widget/TextView;

.field protected txtXp:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .prologue
    .line 49
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 50
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    .prologue
    .line 53
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 54
    return-void
.end method


# virtual methods
.method public accept()V
    .registers 4

    .prologue
    .line 96
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->currentMission:Lfr/testudo/spacecorsair/business/mission/Mission;

    if-nez v0, :cond_3d

    .line 97
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v1, p0, Lfr/testudo/spacecorsair/activity/viewgroup/MissionItem;->mission:Lfr/testudo/spacecorsair/business/mission/Mission;

    iput-object v1, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->currentMission:Lfr/testudo/spacecorsair/business/mission/Mission;

    .line 98
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->currentMission:Lfr/testudo/spacecorsair/business/mission/Mission;

    iget-object v0, v0, Lfr/testudo/spacecorsair/business/mission/Mission;->missionEngine:Lfr/testudo/spacecorsair/business/mission/MissionListener;

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/business/mission/MissionListener;->init()V

    .line 99
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->missionRepository:Lfr/testudo/spacecorsair/business/mission/MissionRepository;

    iget-object v1, p0, Lfr/testudo/spacecorsair/activity/viewgroup/MissionItem;->mission:Lfr/testudo/spacecorsair/business/mission/Mission;

    iget-object v1, v1, Lfr/testudo/spacecorsair/business/mission/Mission;->missionId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/business/mission/MissionRepository;->saveMissionAsCurrentOne(Ljava/lang/String;)V

    .line 100
    invoke-virtual {p0}, Lfr/testudo/spacecorsair/activity/viewgroup/MissionItem;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f070299

    const/4 v2, 0x3

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 101
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 102
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->saveGameAndPlayerData()V

    .line 104
    invoke-virtual {p0}, Lfr/testudo/spacecorsair/activity/viewgroup/MissionItem;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lfr/testudo/spacecorsair/activity/MissionActivity;

    .line 105
    invoke-virtual {v0}, Lfr/testudo/spacecorsair/activity/MissionActivity;->finish()V

    .line 107
    :cond_3d
    return-void
.end method

.method public bind(Lfr/testudo/spacecorsair/business/mission/Mission;)V
    .registers 12

    .prologue
    const/4 v9, -0x1

    const/high16 v8, -0x10000

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/16 v7, 0x8

    .line 135
    iput-object p1, p0, Lfr/testudo/spacecorsair/activity/viewgroup/MissionItem;->mission:Lfr/testudo/spacecorsair/business/mission/Mission;

    .line 137
    iget-object v0, p0, Lfr/testudo/spacecorsair/activity/viewgroup/MissionItem;->txtXp:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p1, Lfr/testudo/spacecorsair/business/mission/Mission;->reward:Lfr/testudo/spacecorsair/business/mission/MissionReward;

    iget v4, v4, Lfr/testudo/spacecorsair/business/mission/MissionReward;->xpReward:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 138
    iget-object v0, p0, Lfr/testudo/spacecorsair/activity/viewgroup/MissionItem;->txtCredits:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p1, Lfr/testudo/spacecorsair/business/mission/Mission;->reward:Lfr/testudo/spacecorsair/business/mission/MissionReward;

    iget v4, v4, Lfr/testudo/spacecorsair/business/mission/MissionReward;->creditReward:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 139
    iget-object v0, p0, Lfr/testudo/spacecorsair/activity/viewgroup/MissionItem;->txtName:Landroid/widget/TextView;

    iget-object v3, p1, Lfr/testudo/spacecorsair/business/mission/Mission;->localizedName:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 142
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->currentMission:Lfr/testudo/spacecorsair/business/mission/Mission;

    if-eqz v0, :cond_151

    move v4, v1

    .line 144
    :goto_4f
    if-eqz v4, :cond_1f9

    .line 145
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->currentMission:Lfr/testudo/spacecorsair/business/mission/Mission;

    iget-object v0, v0, Lfr/testudo/spacecorsair/business/mission/Mission;->missionId:Ljava/lang/String;

    iget-object v3, p1, Lfr/testudo/spacecorsair/business/mission/Mission;->missionId:Ljava/lang/String;

    if-ne v0, v3, :cond_154

    move v0, v1

    :goto_5c
    move v3, v0

    .line 149
    :goto_5d
    if-eqz v3, :cond_157

    invoke-virtual {p1}, Lfr/testudo/spacecorsair/business/mission/Mission;->isCompleted()Z

    move-result v0

    if-eqz v0, :cond_157

    invoke-static {}, Lfr/testudo/spacecorsair/utils/MissionUtils;->isDockedToMission()Z

    move-result v0

    if-eqz v0, :cond_157

    .line 150
    iget-object v0, p0, Lfr/testudo/spacecorsair/activity/viewgroup/MissionItem;->txtDescription:Landroid/widget/TextView;

    sget-object v5, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget v6, p1, Lfr/testudo/spacecorsair/business/mission/Mission;->missionDescCompletedId:I

    invoke-virtual {v5, v6}, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->getLocalizedString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 160
    :goto_7c
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->missionRepository:Lfr/testudo/spacecorsair/business/mission/MissionRepository;

    iget-object v5, p1, Lfr/testudo/spacecorsair/business/mission/Mission;->missionId:Ljava/lang/String;

    invoke-virtual {v0, v5}, Lfr/testudo/spacecorsair/business/mission/MissionRepository;->hasDoneMission(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_16a

    .line 161
    iget-object v0, p0, Lfr/testudo/spacecorsair/activity/viewgroup/MissionItem;->imgAlreadyDone:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 162
    iget-object v0, p0, Lfr/testudo/spacecorsair/activity/viewgroup/MissionItem;->txtAlreadyDone:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 169
    :goto_92
    iget-boolean v0, p1, Lfr/testudo/spacecorsair/business/mission/Mission;->repeatable:Z

    if-eqz v0, :cond_176

    .line 170
    iget-object v0, p0, Lfr/testudo/spacecorsair/activity/viewgroup/MissionItem;->imgRepeatable:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 171
    iget-object v0, p0, Lfr/testudo/spacecorsair/activity/viewgroup/MissionItem;->txtRepeatable:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 178
    :goto_a0
    iget-object v0, p0, Lfr/testudo/spacecorsair/activity/viewgroup/MissionItem;->txtLevel:Landroid/widget/TextView;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget v6, p1, Lfr/testudo/spacecorsair/business/mission/Mission;->level:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 179
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/Game;->playerInfo:Lfr/testudo/spacecorsair/business/player/PlayerInfo;

    iget v0, v0, Lfr/testudo/spacecorsair/business/player/PlayerInfo;->level:I

    .line 180
    iget v5, p1, Lfr/testudo/spacecorsair/business/mission/Mission;->level:I

    if-lt v0, v5, :cond_19a

    .line 181
    iget v5, p1, Lfr/testudo/spacecorsair/business/mission/Mission;->level:I

    sub-int/2addr v0, v5

    if-le v0, v1, :cond_182

    .line 182
    iget-object v0, p0, Lfr/testudo/spacecorsair/activity/viewgroup/MissionItem;->txtLevel:Landroid/widget/TextView;

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setTextColor(I)V

    .line 183
    iget-object v0, p0, Lfr/testudo/spacecorsair/activity/viewgroup/MissionItem;->txtLevelTitle:Landroid/widget/TextView;

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setTextColor(I)V

    .line 194
    :goto_d5
    if-eqz v4, :cond_1b2

    if-eqz v3, :cond_1b2

    .line 195
    iget-object v0, p0, Lfr/testudo/spacecorsair/activity/viewgroup/MissionItem;->txtInstruction:Landroid/widget/TextView;

    iget-object v1, p1, Lfr/testudo/spacecorsair/business/mission/Mission;->missionEngine:Lfr/testudo/spacecorsair/business/mission/MissionListener;

    invoke-virtual {v1}, Lfr/testudo/spacecorsair/business/mission/MissionListener;->getCurrentInstruction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 196
    invoke-virtual {p1}, Lfr/testudo/spacecorsair/business/mission/Mission;->isCompleted()Z

    move-result v0

    if-eqz v0, :cond_1a6

    invoke-static {}, Lfr/testudo/spacecorsair/utils/MissionUtils;->isDockedToMission()Z

    move-result v0

    if-eqz v0, :cond_1a6

    .line 197
    iget-object v0, p0, Lfr/testudo/spacecorsair/activity/viewgroup/MissionItem;->imgInstructions:Landroid/widget/ImageView;

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 198
    iget-object v0, p0, Lfr/testudo/spacecorsair/activity/viewgroup/MissionItem;->txtInstruction:Landroid/widget/TextView;

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 209
    :goto_fa
    invoke-virtual {p1}, Lfr/testudo/spacecorsair/business/mission/Mission;->getBestReward()Lfr/testudo/spacecorsair/business/loot/LootRarety;

    move-result-object v0

    .line 210
    if-eqz v0, :cond_1be

    .line 211
    invoke-virtual {p1}, Lfr/testudo/spacecorsair/business/mission/Mission;->getRewards()Ljava/util/List;

    move-result-object v0

    .line 212
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_108
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1c3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfr/testudo/spacecorsair/business/loot/SpaceObject;

    .line 213
    new-instance v2, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lfr/testudo/spacecorsair/activity/viewgroup/MissionItem;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v2, v5}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 214
    invoke-virtual {v0}, Lfr/testudo/spacecorsair/business/loot/SpaceObject;->getSpaceObjectType()Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    move-result-object v0

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModIcons;->id(Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)I

    move-result v0

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModIcons;->applyBackground(Landroid/widget/ImageView;)V

    .line 216
    iget-object v0, p0, Lfr/testudo/spacecorsair/activity/viewgroup/MissionItem;->layRewards:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 217
    invoke-virtual {v2}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 218
    invoke-virtual {p0}, Lfr/testudo/spacecorsair/activity/viewgroup/MissionItem;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f09000d

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-int v5, v5

    iput v5, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 219
    invoke-virtual {p0}, Lfr/testudo/spacecorsair/activity/viewgroup/MissionItem;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f09000d

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-int v5, v5

    iput v5, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 220
    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_108

    :cond_151
    move v4, v2

    .line 142
    goto/16 :goto_4f

    :cond_154
    move v0, v2

    .line 145
    goto/16 :goto_5c

    .line 154
    :cond_157
    iget-object v0, p0, Lfr/testudo/spacecorsair/activity/viewgroup/MissionItem;->txtDescription:Landroid/widget/TextView;

    sget-object v5, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget v6, p1, Lfr/testudo/spacecorsair/business/mission/Mission;->missionDescId:I

    invoke-virtual {v5, v6}, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->getLocalizedString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_7c

    .line 164
    :cond_16a
    iget-object v0, p0, Lfr/testudo/spacecorsair/activity/viewgroup/MissionItem;->imgAlreadyDone:Landroid/widget/ImageView;

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 165
    iget-object v0, p0, Lfr/testudo/spacecorsair/activity/viewgroup/MissionItem;->txtAlreadyDone:Landroid/widget/TextView;

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_92

    .line 173
    :cond_176
    iget-object v0, p0, Lfr/testudo/spacecorsair/activity/viewgroup/MissionItem;->imgRepeatable:Landroid/widget/ImageView;

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 174
    iget-object v0, p0, Lfr/testudo/spacecorsair/activity/viewgroup/MissionItem;->txtRepeatable:Landroid/widget/TextView;

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_a0

    .line 185
    :cond_182
    iget-object v0, p0, Lfr/testudo/spacecorsair/activity/viewgroup/MissionItem;->txtLevel:Landroid/widget/TextView;

    const-string v1, "#FFA500"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 186
    iget-object v0, p0, Lfr/testudo/spacecorsair/activity/viewgroup/MissionItem;->txtLevelTitle:Landroid/widget/TextView;

    const-string v1, "#FFA500"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_d5

    .line 189
    :cond_19a
    iget-object v0, p0, Lfr/testudo/spacecorsair/activity/viewgroup/MissionItem;->txtLevel:Landroid/widget/TextView;

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setTextColor(I)V

    .line 190
    iget-object v0, p0, Lfr/testudo/spacecorsair/activity/viewgroup/MissionItem;->txtLevelTitle:Landroid/widget/TextView;

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_d5

    .line 200
    :cond_1a6
    iget-object v0, p0, Lfr/testudo/spacecorsair/activity/viewgroup/MissionItem;->imgInstructions:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 201
    iget-object v0, p0, Lfr/testudo/spacecorsair/activity/viewgroup/MissionItem;->txtInstruction:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_fa

    .line 204
    :cond_1b2
    iget-object v0, p0, Lfr/testudo/spacecorsair/activity/viewgroup/MissionItem;->imgInstructions:Landroid/widget/ImageView;

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 205
    iget-object v0, p0, Lfr/testudo/spacecorsair/activity/viewgroup/MissionItem;->txtInstruction:Landroid/widget/TextView;

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_fa

    .line 223
    :cond_1be
    iget-object v0, p0, Lfr/testudo/spacecorsair/activity/viewgroup/MissionItem;->imgRewards:Landroid/widget/ImageView;

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 227
    :cond_1c3
    if-eqz v4, :cond_1ca

    .line 228
    iget-object v0, p0, Lfr/testudo/spacecorsair/activity/viewgroup/MissionItem;->btnAccept:Landroid/widget/Button;

    invoke-virtual {v0, v7}, Landroid/widget/Button;->setVisibility(I)V

    .line 232
    :cond_1ca
    invoke-virtual {p1}, Lfr/testudo/spacecorsair/business/mission/Mission;->isCompleted()Z

    move-result v0

    if-eqz v0, :cond_1d6

    invoke-static {}, Lfr/testudo/spacecorsair/utils/MissionUtils;->isDockedToMission()Z

    move-result v0

    if-nez v0, :cond_1db

    .line 233
    :cond_1d6
    iget-object v0, p0, Lfr/testudo/spacecorsair/activity/viewgroup/MissionItem;->btnReward:Landroid/widget/Button;

    invoke-virtual {v0, v7}, Landroid/widget/Button;->setVisibility(I)V

    .line 237
    :cond_1db
    if-eqz v4, :cond_1df

    if-nez v3, :cond_1e5

    .line 238
    :cond_1df
    iget-object v0, p0, Lfr/testudo/spacecorsair/activity/viewgroup/MissionItem;->btnGiveUp:Landroid/widget/Button;

    invoke-virtual {v0, v7}, Landroid/widget/Button;->setVisibility(I)V

    .line 244
    :cond_1e4
    :goto_1e4
    return-void

    .line 239
    :cond_1e5
    if-eqz v3, :cond_1e4

    .line 240
    invoke-virtual {p1}, Lfr/testudo/spacecorsair/business/mission/Mission;->isCompleted()Z

    move-result v0

    if-nez v0, :cond_1f3

    invoke-virtual {p1}, Lfr/testudo/spacecorsair/business/mission/Mission;->isTutorial()Z

    move-result v0

    if-eqz v0, :cond_1e4

    .line 241
    :cond_1f3
    iget-object v0, p0, Lfr/testudo/spacecorsair/activity/viewgroup/MissionItem;->btnGiveUp:Landroid/widget/Button;

    invoke-virtual {v0, v7}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_1e4

    :cond_1f9
    move v3, v2

    goto/16 :goto_5d
.end method

.method public getReward()V
    .registers 4

    .prologue
    .line 111
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->currentMission:Lfr/testudo/spacecorsair/business/mission/Mission;

    if-eqz v0, :cond_39

    .line 113
    invoke-virtual {p0}, Lfr/testudo/spacecorsair/activity/viewgroup/MissionItem;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lfr/testudo/spacecorsair/activity/MissionActivity;

    .line 116
    invoke-virtual {p0}, Lfr/testudo/spacecorsair/activity/viewgroup/MissionItem;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lfr/testudo/spacecorsair/activity/viewgroup/MissionItem$1;

    invoke-direct {v2, p0, v0}, Lfr/testudo/spacecorsair/activity/viewgroup/MissionItem$1;-><init>(Lfr/testudo/spacecorsair/activity/viewgroup/MissionItem;Lfr/testudo/spacecorsair/activity/MissionActivity;)V

    invoke-static {v1, v2}, Lfr/testudo/spacecorsair/utils/MissionUtils;->showRewardDialog(Landroid/content/Context;Landroid/content/DialogInterface$OnDismissListener;)V

    .line 123
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->currentMission:Lfr/testudo/spacecorsair/business/mission/Mission;

    .line 124
    invoke-virtual {v0}, Lfr/testudo/spacecorsair/business/mission/Mission;->grantRewardToPlayer()V

    .line 125
    sget-object v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v1, v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->missionRepository:Lfr/testudo/spacecorsair/business/mission/MissionRepository;

    iget-object v2, v0, Lfr/testudo/spacecorsair/business/mission/Mission;->missionId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lfr/testudo/spacecorsair/business/mission/MissionRepository;->addMissionToDoneList(Ljava/lang/String;)V

    .line 126
    sget-object v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v1, v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->missionRepository:Lfr/testudo/spacecorsair/business/mission/MissionRepository;

    invoke-virtual {v1}, Lfr/testudo/spacecorsair/business/mission/MissionRepository;->saveNoCorrentMission()V

    .line 127
    iget-object v0, v0, Lfr/testudo/spacecorsair/business/mission/Mission;->missionEngine:Lfr/testudo/spacecorsair/business/mission/MissionListener;

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/business/mission/MissionListener;->terminate()V

    .line 128
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    const/4 v1, 0x0

    iput-object v1, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->currentMission:Lfr/testudo/spacecorsair/business/mission/Mission;

    .line 131
    :cond_39
    return-void
.end method

.method public giveUp()V
    .registers 4

    .prologue
    .line 81
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->currentMission:Lfr/testudo/spacecorsair/business/mission/Mission;

    if-eqz v0, :cond_33

    .line 82
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->currentMission:Lfr/testudo/spacecorsair/business/mission/Mission;

    .line 83
    iget-object v0, v0, Lfr/testudo/spacecorsair/business/mission/Mission;->missionEngine:Lfr/testudo/spacecorsair/business/mission/MissionListener;

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/business/mission/MissionListener;->giveUp()V

    .line 84
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->missionRepository:Lfr/testudo/spacecorsair/business/mission/MissionRepository;

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/business/mission/MissionRepository;->saveNoCorrentMission()V

    .line 85
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    const/4 v1, 0x0

    iput-object v1, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->currentMission:Lfr/testudo/spacecorsair/business/mission/Mission;

    .line 86
    invoke-virtual {p0}, Lfr/testudo/spacecorsair/activity/viewgroup/MissionItem;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f07034b

    const/4 v2, 0x3

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 87
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 89
    invoke-virtual {p0}, Lfr/testudo/spacecorsair/activity/viewgroup/MissionItem;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lfr/testudo/spacecorsair/activity/MissionActivity;

    .line 90
    invoke-virtual {v0}, Lfr/testudo/spacecorsair/activity/MissionActivity;->finish()V

    .line 92
    :cond_33
    return-void
.end method

.method protected onMeasure(II)V
    .registers 6

    .prologue
    .line 59
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 60
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 62
    invoke-virtual {p0, v0, v1}, Lfr/testudo/spacecorsair/activity/viewgroup/MissionItem;->setMeasuredDimension(II)V

    .line 64
    invoke-virtual {p0}, Lfr/testudo/spacecorsair/activity/viewgroup/MissionItem;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iput v1, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 65
    invoke-virtual {p0}, Lfr/testudo/spacecorsair/activity/viewgroup/MissionItem;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 67
    invoke-super {p0, p1, p2}, Landroid/widget/RelativeLayout;->onMeasure(II)V

    .line 68
    return-void
.end method

.method public showHideDetails()V
    .registers 3

    .prologue
    const/16 v1, 0x8

    .line 72
    iget-object v0, p0, Lfr/testudo/spacecorsair/activity/viewgroup/MissionItem;->txtDescription:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-ne v0, v1, :cond_11

    .line 73
    iget-object v0, p0, Lfr/testudo/spacecorsair/activity/viewgroup/MissionItem;->txtDescription:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 77
    :goto_10
    return-void

    .line 75
    :cond_11
    iget-object v0, p0, Lfr/testudo/spacecorsair/activity/viewgroup/MissionItem;->txtDescription:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_10
.end method
