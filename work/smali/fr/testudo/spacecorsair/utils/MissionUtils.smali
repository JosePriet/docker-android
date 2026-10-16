.class public Lfr/testudo/spacecorsair/utils/MissionUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static rewardDetailDialog:Landroid/app/Dialog;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Landroid/app/Dialog;
    .registers 1

    .prologue
    .line 19
    sget-object v0, Lfr/testudo/spacecorsair/utils/MissionUtils;->rewardDetailDialog:Landroid/app/Dialog;

    return-object v0
.end method

.method static synthetic access$002(Landroid/app/Dialog;)Landroid/app/Dialog;
    .registers 1

    .prologue
    .line 19
    sput-object p0, Lfr/testudo/spacecorsair/utils/MissionUtils;->rewardDetailDialog:Landroid/app/Dialog;

    return-object p0
.end method

.method public static isDockedToMission()Z
    .registers 1

    .prologue
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModComms;->hailing()Z

    move-result v0

    if-eqz v0, :mod_not_hailing

    return v0

    :mod_not_hailing
    .line 24
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->playerShip:Lfr/testudo/spacecorsair/business/player/PlayerShip;

    iget-boolean v0, v0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->isDocked:Z

    if-eqz v0, :cond_23

    .line 25
    const-string v0, "is docked"

    invoke-static {v0}, Lfr/testudo/spacecorsair/utils/Logs;->d(Ljava/lang/String;)V

    .line 26
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->playerShip:Lfr/testudo/spacecorsair/business/player/PlayerShip;

    iget-object v0, v0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->dock:Lfr/testudo/spacecorsair/business/world/station/DockPoint;

    if-eqz v0, :cond_23

    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->playerShip:Lfr/testudo/spacecorsair/business/player/PlayerShip;

    iget-object v0, v0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->dock:Lfr/testudo/spacecorsair/business/world/station/DockPoint;

    iget-object v0, v0, Lfr/testudo/spacecorsair/business/world/station/DockPoint;->parent:Lfr/testudo/spacecorsair/business/world/station/Station;

    instance-of v0, v0, Lfr/testudo/spacecorsair/business/world/station/MissionStation;

    if-eqz v0, :cond_23

    .line 27
    const/4 v0, 0x1

    .line 31
    :goto_22
    return v0

    :cond_23
    const/4 v0, 0x0

    goto :goto_22
.end method

.method public static showRewardDialog(Landroid/content/Context;Landroid/content/DialogInterface$OnDismissListener;)V
    .registers 14

    .prologue
    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    const/16 v8, 0x8

    .line 36
    new-instance v0, Landroid/app/Dialog;

    const v1, 0x1030011

    invoke-direct {v0, p0, v1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    sput-object v0, Lfr/testudo/spacecorsair/utils/MissionUtils;->rewardDetailDialog:Landroid/app/Dialog;

    .line 37
    sget-object v0, Lfr/testudo/spacecorsair/utils/MissionUtils;->rewardDetailDialog:Landroid/app/Dialog;

    invoke-virtual {v0, v10}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    .line 38
    sget-object v0, Lfr/testudo/spacecorsair/utils/MissionUtils;->rewardDetailDialog:Landroid/app/Dialog;

    const v1, 0x7f030011

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setContentView(I)V

    .line 40
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v5, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->currentMission:Lfr/testudo/spacecorsair/business/mission/Mission;

    .line 41
    if-nez v5, :cond_23

    .line 124
    :goto_22
    return-void

    .line 46
    :cond_23
    sget-object v0, Lfr/testudo/spacecorsair/utils/MissionUtils;->rewardDetailDialog:Landroid/app/Dialog;

    const v1, 0x7f0a00ae

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 47
    new-instance v1, Lfr/testudo/spacecorsair/utils/MissionUtils$1;

    invoke-direct {v1}, Lfr/testudo/spacecorsair/utils/MissionUtils$1;-><init>()V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 57
    sget-object v0, Lfr/testudo/spacecorsair/utils/MissionUtils;->rewardDetailDialog:Landroid/app/Dialog;

    const v1, 0x7f0a00b2

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 58
    sget-object v1, Lfr/testudo/spacecorsair/utils/MissionUtils;->rewardDetailDialog:Landroid/app/Dialog;

    const v2, 0x7f0a00b5

    invoke-virtual {v1, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    .line 59
    sget-object v2, Lfr/testudo/spacecorsair/utils/MissionUtils;->rewardDetailDialog:Landroid/app/Dialog;

    const v3, 0x7f0a00b8

    invoke-virtual {v2, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    .line 61
    sget-object v3, Lfr/testudo/spacecorsair/utils/MissionUtils;->rewardDetailDialog:Landroid/app/Dialog;

    const v4, 0x7f0a00b1

    invoke-virtual {v3, v4}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 62
    sget-object v4, Lfr/testudo/spacecorsair/utils/MissionUtils;->rewardDetailDialog:Landroid/app/Dialog;

    const v6, 0x7f0a009e

    invoke-virtual {v4, v6}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 64
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, v5, Lfr/testudo/spacecorsair/business/mission/Mission;->reward:Lfr/testudo/spacecorsair/business/mission/MissionReward;

    iget v7, v7, Lfr/testudo/spacecorsair/business/mission/MissionReward;->xpReward:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 65
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, v5, Lfr/testudo/spacecorsair/business/mission/Mission;->reward:Lfr/testudo/spacecorsair/business/mission/MissionReward;

    iget v6, v6, Lfr/testudo/spacecorsair/business/mission/MissionReward;->creditReward:I

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, ""

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 68
    iget-object v3, v5, Lfr/testudo/spacecorsair/business/mission/Mission;->reward:Lfr/testudo/spacecorsair/business/mission/MissionReward;

    iget-object v3, v3, Lfr/testudo/spacecorsair/business/mission/MissionReward;->rewardLoot:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_1b0

    .line 69
    iget-object v3, v5, Lfr/testudo/spacecorsair/business/mission/Mission;->reward:Lfr/testudo/spacecorsair/business/mission/MissionReward;

    iget-object v3, v3, Lfr/testudo/spacecorsair/business/mission/MissionReward;->rewardLoot:Ljava/util/List;

    invoke-interface {v3, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lfr/testudo/spacecorsair/business/loot/SpaceObject;

    invoke-virtual {v3}, Lfr/testudo/spacecorsair/business/loot/SpaceObject;->getSpaceObjectType()Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    move-result-object v4

    .line 70
    invoke-virtual {v0, v9}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 72
    sget-object v0, Lfr/testudo/spacecorsair/utils/MissionUtils;->rewardDetailDialog:Landroid/app/Dialog;

    const v3, 0x7f0a00b3

    invoke-virtual {v0, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 73
    sget-object v3, Lfr/testudo/spacecorsair/utils/MissionUtils;->rewardDetailDialog:Landroid/app/Dialog;

    const v6, 0x7f0a00b4

    invoke-virtual {v3, v6}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 75
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v4}, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->getRarety()Lfr/testudo/spacecorsair/business/loot/LootRarety;

    move-result-object v7

    invoke-virtual {v7}, Lfr/testudo/spacecorsair/business/loot/LootRarety;->getColor()I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 76
    invoke-virtual {v4}, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->getLocalizedLabel()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 77
    invoke-static {v4}, Lfr/testudo/spacecorsair/mod/ModIcons;->id(Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModIcons;->applyImage(Landroid/widget/ImageView;)V

    .line 80
    iget-object v0, v5, Lfr/testudo/spacecorsair/business/mission/Mission;->reward:Lfr/testudo/spacecorsair/business/mission/MissionReward;

    iget-object v0, v0, Lfr/testudo/spacecorsair/business/mission/MissionReward;->rewardLoot:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v10, :cond_1a9

    .line 81
    iget-object v0, v5, Lfr/testudo/spacecorsair/business/mission/Mission;->reward:Lfr/testudo/spacecorsair/business/mission/MissionReward;

    iget-object v0, v0, Lfr/testudo/spacecorsair/business/mission/MissionReward;->rewardLoot:Ljava/util/List;

    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfr/testudo/spacecorsair/business/loot/SpaceObject;

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/business/loot/SpaceObject;->getSpaceObjectType()Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    move-result-object v3

    .line 82
    invoke-virtual {v1, v9}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 84
    sget-object v0, Lfr/testudo/spacecorsair/utils/MissionUtils;->rewardDetailDialog:Landroid/app/Dialog;

    const v1, 0x7f0a00b6

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 85
    sget-object v1, Lfr/testudo/spacecorsair/utils/MissionUtils;->rewardDetailDialog:Landroid/app/Dialog;

    const v4, 0x7f0a00b7

    invoke-virtual {v1, v4}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 87
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v3}, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->getRarety()Lfr/testudo/spacecorsair/business/loot/LootRarety;

    move-result-object v6

    invoke-virtual {v6}, Lfr/testudo/spacecorsair/business/loot/LootRarety;->getColor()I

    move-result v6

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 88
    invoke-virtual {v3}, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->getLocalizedLabel()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 89
    invoke-static {v3}, Lfr/testudo/spacecorsair/mod/ModIcons;->id(Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModIcons;->applyImage(Landroid/widget/ImageView;)V

    .line 92
    iget-object v0, v5, Lfr/testudo/spacecorsair/business/mission/Mission;->reward:Lfr/testudo/spacecorsair/business/mission/MissionReward;

    iget-object v0, v0, Lfr/testudo/spacecorsair/business/mission/MissionReward;->rewardLoot:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v11, :cond_1a5

    .line 93
    iget-object v0, v5, Lfr/testudo/spacecorsair/business/mission/Mission;->reward:Lfr/testudo/spacecorsair/business/mission/MissionReward;

    iget-object v0, v0, Lfr/testudo/spacecorsair/business/mission/MissionReward;->rewardLoot:Ljava/util/List;

    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfr/testudo/spacecorsair/business/loot/SpaceObject;

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/business/loot/SpaceObject;->getSpaceObjectType()Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    move-result-object v3

    .line 94
    invoke-virtual {v2, v9}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 96
    sget-object v0, Lfr/testudo/spacecorsair/utils/MissionUtils;->rewardDetailDialog:Landroid/app/Dialog;

    const v1, 0x7f0a00b9

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 97
    sget-object v1, Lfr/testudo/spacecorsair/utils/MissionUtils;->rewardDetailDialog:Landroid/app/Dialog;

    const v2, 0x7f0a00ba

    invoke-virtual {v1, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 99
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v3}, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->getRarety()Lfr/testudo/spacecorsair/business/loot/LootRarety;

    move-result-object v4

    invoke-virtual {v4}, Lfr/testudo/spacecorsair/business/loot/LootRarety;->getColor()I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 100
    invoke-virtual {v3}, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->getLocalizedLabel()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 101
    invoke-static {v3}, Lfr/testudo/spacecorsair/mod/ModIcons;->id(Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModIcons;->applyImage(Landroid/widget/ImageView;)V

    .line 118
    :goto_197
    if-eqz p1, :cond_19e

    .line 119
    sget-object v0, Lfr/testudo/spacecorsair/utils/MissionUtils;->rewardDetailDialog:Landroid/app/Dialog;

    invoke-virtual {v0, p1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 122
    :cond_19e
    sget-object v0, Lfr/testudo/spacecorsair/utils/MissionUtils;->rewardDetailDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    goto/16 :goto_22

    .line 104
    :cond_1a5
    invoke-virtual {v2, v8}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_197

    .line 108
    :cond_1a9
    invoke-virtual {v1, v8}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 109
    invoke-virtual {v2, v8}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_197

    .line 113
    :cond_1b0
    invoke-virtual {v0, v8}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 114
    invoke-virtual {v1, v8}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 115
    invoke-virtual {v2, v8}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_197
.end method
