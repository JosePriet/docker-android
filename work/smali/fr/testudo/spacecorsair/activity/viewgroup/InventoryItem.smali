.class public Lfr/testudo/spacecorsair/activity/viewgroup/InventoryItem;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lfr/testudo/spacecorsair/activity/viewgroup/InventoryItem$1;
    }
.end annotation


# instance fields
.field protected btnBuy:Landroid/widget/Button;

.field protected btnDelete:Landroid/widget/ImageButton;

.field protected btnDetails:Landroid/widget/Button;

.field protected btnEquip:Landroid/widget/Button;

.field protected btnSell:Landroid/widget/Button;

.field protected btnUse:Landroid/widget/Button;

.field protected imgCredit:Landroid/widget/ImageView;

.field protected imgItem:Landroid/widget/ImageView;

.field protected layDelete:Landroid/widget/LinearLayout;

.field protected layLevel:Landroid/widget/LinearLayout;

.field protected layPoid:Landroid/widget/LinearLayout;

.field protected layPrice:Landroid/widget/LinearLayout;

.field protected layQuantity:Landroid/widget/LinearLayout;

.field protected txtItemGearName:Landroid/widget/TextView;

.field protected txtItemName:Landroid/widget/TextView;

.field protected txtItemType:Landroid/widget/TextView;

.field protected txtLevel:Landroid/widget/TextView;

.field protected txtNewItem:Landroid/widget/TextView;

.field protected txtPrice:Landroid/widget/TextView;

.field protected txtQuantity:Landroid/widget/TextView;

.field protected txtTotalWeight:Landroid/widget/TextView;

.field protected txtUnusableReason:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .prologue
    .line 44
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 45
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    .prologue
    .line 48
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 49
    return-void
.end method


# virtual methods
.method public bind(Lfr/testudo/spacecorsair/business/loot/SpaceObject;Lfr/testudo/spacecorsair/activity/adapters/SpaceObjectAdapter$ItemContext;)V
    .registers 7

    .prologue
    const/4 v3, 0x0

    .line 52
    invoke-virtual {p1}, Lfr/testudo/spacecorsair/business/loot/SpaceObject;->getSpaceObjectType()Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    move-result-object v0

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->isEquipable()Z

    move-result v0

    if-eqz v0, :cond_be

    .line 53
    iget-object v0, p0, Lfr/testudo/spacecorsair/activity/viewgroup/InventoryItem;->txtItemGearName:Landroid/widget/TextView;

    invoke-virtual {p1}, Lfr/testudo/spacecorsair/business/loot/SpaceObject;->getSpaceObjectType()Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    move-result-object v1

    invoke-virtual {v1}, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->getGearSpec()Lfr/testudo/spacecorsair/business/loot/stuff/GearSpec;

    move-result-object v1

    iget-object v1, v1, Lfr/testudo/spacecorsair/business/loot/stuff/GearSpec;->gearType:Lfr/testudo/spacecorsair/business/loot/stuff/GearSpec$Type;

    invoke-virtual {v1}, Lfr/testudo/spacecorsair/business/loot/stuff/GearSpec$Type;->getLocalisedString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 54
    iget-object v0, p0, Lfr/testudo/spacecorsair/activity/viewgroup/InventoryItem;->txtItemGearName:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 61
    :goto_23
    iget-object v0, p0, Lfr/testudo/spacecorsair/activity/viewgroup/InventoryItem;->txtItemName:Landroid/widget/TextView;

    invoke-virtual {p1}, Lfr/testudo/spacecorsair/business/loot/SpaceObject;->getSpaceObjectType()Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    move-result-object v1

    invoke-virtual {v1}, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->getLocalizedLabel()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 62
    iget-object v0, p0, Lfr/testudo/spacecorsair/activity/viewgroup/InventoryItem;->txtQuantity:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lfr/testudo/spacecorsair/business/loot/SpaceObject;->getQuantity()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 63
    iget-object v0, p0, Lfr/testudo/spacecorsair/activity/viewgroup/InventoryItem;->imgItem:Landroid/widget/ImageView;

    invoke-virtual {p1}, Lfr/testudo/spacecorsair/business/loot/SpaceObject;->getSpaceObjectType()Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    move-result-object v1

    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModIcons;->id(Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModIcons;->applyBackground(Landroid/widget/ImageView;)V

    .line 64
    iget-object v0, p0, Lfr/testudo/spacecorsair/activity/viewgroup/InventoryItem;->txtTotalWeight:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lfr/testudo/spacecorsair/business/loot/SpaceObject;->getTotalWeight()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 65
    invoke-virtual {p1}, Lfr/testudo/spacecorsair/business/loot/SpaceObject;->isNew()Z

    move-result v0

    if-eqz v0, :cond_ce

    .line 66
    iget-object v0, p0, Lfr/testudo/spacecorsair/activity/viewgroup/InventoryItem;->txtNewItem:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 70
    :goto_80
    iget-object v0, p0, Lfr/testudo/spacecorsair/activity/viewgroup/InventoryItem;->txtPrice:Landroid/widget/TextView;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 71
    iget-object v0, p0, Lfr/testudo/spacecorsair/activity/viewgroup/InventoryItem;->txtPrice:Landroid/widget/TextView;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-static {v1}, Ljava/text/NumberFormat;->getNumberInstance(Ljava/util/Locale;)Ljava/text/NumberFormat;

    move-result-object v1

    invoke-virtual {p1}, Lfr/testudo/spacecorsair/business/loot/SpaceObject;->getTotalSellPrice()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 73
    iget-object v0, p0, Lfr/testudo/spacecorsair/activity/viewgroup/InventoryItem;->imgCredit:Landroid/widget/ImageView;

    const v1, 0x7f0200a8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 75
    invoke-virtual {p1}, Lfr/testudo/spacecorsair/business/loot/SpaceObject;->getSpaceObjectType()Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    move-result-object v0

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->isInappMoney()Z

    move-result v0

    if-eqz v0, :cond_ba

    .line 76
    sget-object v0, Lfr/testudo/spacecorsair/activity/adapters/SpaceObjectAdapter$ItemContext;->BUY:Lfr/testudo/spacecorsair/activity/adapters/SpaceObjectAdapter$ItemContext;

    if-ne p2, v0, :cond_ba

    .line 77
    iget-object v0, p0, Lfr/testudo/spacecorsair/activity/viewgroup/InventoryItem;->imgCredit:Landroid/widget/ImageView;

    const v1, 0x7f0200a9

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 80
    :cond_ba
    invoke-virtual {p0, p2, p1}, Lfr/testudo/spacecorsair/activity/viewgroup/InventoryItem;->toggleVisibility(Lfr/testudo/spacecorsair/activity/adapters/SpaceObjectAdapter$ItemContext;Lfr/testudo/spacecorsair/business/loot/SpaceObject;)V

    .line 81
    return-void

    .line 57
    :cond_be
    iget-object v0, p0, Lfr/testudo/spacecorsair/activity/viewgroup/InventoryItem;->txtItemGearName:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 58
    iget-object v0, p0, Lfr/testudo/spacecorsair/activity/viewgroup/InventoryItem;->txtItemGearName:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_23

    .line 68
    :cond_ce
    iget-object v0, p0, Lfr/testudo/spacecorsair/activity/viewgroup/InventoryItem;->txtNewItem:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_80
.end method

.method public toggleVisibility(Lfr/testudo/spacecorsair/activity/adapters/SpaceObjectAdapter$ItemContext;Lfr/testudo/spacecorsair/business/loot/SpaceObject;)V
    .registers 7

    .prologue
    const/16 v2, 0x8

    const/4 v3, 0x0

    .line 85
    iget-object v0, p0, Lfr/testudo/spacecorsair/activity/viewgroup/InventoryItem;->layDelete:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 86
    iget-object v0, p0, Lfr/testudo/spacecorsair/activity/viewgroup/InventoryItem;->btnDelete:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 87
    iget-object v0, p0, Lfr/testudo/spacecorsair/activity/viewgroup/InventoryItem;->btnBuy:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 88
    iget-object v0, p0, Lfr/testudo/spacecorsair/activity/viewgroup/InventoryItem;->btnSell:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 89
    iget-object v0, p0, Lfr/testudo/spacecorsair/activity/viewgroup/InventoryItem;->btnUse:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 90
    iget-object v0, p0, Lfr/testudo/spacecorsair/activity/viewgroup/InventoryItem;->btnEquip:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 91
    iget-object v0, p0, Lfr/testudo/spacecorsair/activity/viewgroup/InventoryItem;->txtUnusableReason:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 92
    iget-object v0, p0, Lfr/testudo/spacecorsair/activity/viewgroup/InventoryItem;->layLevel:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 94
    sget-object v0, Lfr/testudo/spacecorsair/activity/viewgroup/InventoryItem$1;->$SwitchMap$fr$testudo$spacecorsair$activity$adapters$SpaceObjectAdapter$ItemContext:[I

    invoke-virtual {p1}, Lfr/testudo/spacecorsair/activity/adapters/SpaceObjectAdapter$ItemContext;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_14c

    .line 147
    :cond_36
    :goto_36
    return-void

    .line 96
    :pswitch_37
    iget-object v0, p0, Lfr/testudo/spacecorsair/activity/viewgroup/InventoryItem;->btnDelete:Landroid/widget/ImageButton;

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 97
    iget-object v0, p0, Lfr/testudo/spacecorsair/activity/viewgroup/InventoryItem;->layDelete:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 98
    iget-object v0, p0, Lfr/testudo/spacecorsair/activity/viewgroup/InventoryItem;->txtTotalWeight:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 101
    invoke-virtual {p2}, Lfr/testudo/spacecorsair/business/loot/SpaceObject;->getSpaceObjectType()Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    move-result-object v0

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->isConsommable()Z

    move-result v0

    if-eqz v0, :cond_7d

    .line 104
    invoke-virtual {p2}, Lfr/testudo/spacecorsair/business/loot/SpaceObject;->getSpaceObjectType()Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    move-result-object v0

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->isMap()Z

    move-result v0

    if-eqz v0, :cond_6e

    .line 105
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->levelProperties:Lfr/testudo/spacecorsair/game/levels/LevelsGlobalProperties;

    invoke-virtual {p2}, Lfr/testudo/spacecorsair/business/loot/SpaceObject;->getSpaceObjectType()Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/game/levels/LevelsGlobalProperties;->isMapOrTreasureUnlocked(Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)Z

    move-result v0

    if-nez v0, :cond_36

    .line 106
    iget-object v0, p0, Lfr/testudo/spacecorsair/activity/viewgroup/InventoryItem;->btnUse:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_36

    .line 111
    :cond_6e
    invoke-virtual {p2}, Lfr/testudo/spacecorsair/business/loot/SpaceObject;->getSpaceObjectType()Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    move-result-object v0

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->canBeUsedRightNow()Z

    move-result v0

    if-eqz v0, :cond_c2

    .line 112
    iget-object v0, p0, Lfr/testudo/spacecorsair/activity/viewgroup/InventoryItem;->btnUse:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 120
    :cond_7d
    :goto_7d
    invoke-virtual {p2}, Lfr/testudo/spacecorsair/business/loot/SpaceObject;->getSpaceObjectType()Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    move-result-object v0

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->isEquipable()Z

    move-result v0

    if-eqz v0, :cond_36

    .line 121
    iget-object v0, p0, Lfr/testudo/spacecorsair/activity/viewgroup/InventoryItem;->btnEquip:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 123
    invoke-virtual {p2}, Lfr/testudo/spacecorsair/business/loot/SpaceObject;->getSpaceObjectType()Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    move-result-object v0

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->canEquip()Z

    move-result v0

    if-nez v0, :cond_36

    .line 124
    iget-object v0, p0, Lfr/testudo/spacecorsair/activity/viewgroup/InventoryItem;->layLevel:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 125
    iget-object v0, p0, Lfr/testudo/spacecorsair/activity/viewgroup/InventoryItem;->txtLevel:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Lfr/testudo/spacecorsair/business/loot/SpaceObject;->getSpaceObjectType()Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    move-result-object v2

    invoke-virtual {v2}, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->getLevel()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 126
    iget-object v0, p0, Lfr/testudo/spacecorsair/activity/viewgroup/InventoryItem;->btnEquip:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setEnabled(Z)V

    goto/16 :goto_36

    .line 114
    :cond_c2
    iget-object v0, p0, Lfr/testudo/spacecorsair/activity/viewgroup/InventoryItem;->txtUnusableReason:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 115
    iget-object v0, p0, Lfr/testudo/spacecorsair/activity/viewgroup/InventoryItem;->txtUnusableReason:Landroid/widget/TextView;

    invoke-virtual {p2}, Lfr/testudo/spacecorsair/business/loot/SpaceObject;->getSpaceObjectType()Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    move-result-object v1

    invoke-virtual {v1}, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->cannotBeUsedLocalisedReason()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_7d

    .line 131
    :pswitch_d5
    iget-object v0, p0, Lfr/testudo/spacecorsair/activity/viewgroup/InventoryItem;->btnSell:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 132
    iget-object v0, p0, Lfr/testudo/spacecorsair/activity/viewgroup/InventoryItem;->layPoid:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 133
    iget-object v0, p0, Lfr/testudo/spacecorsair/activity/viewgroup/InventoryItem;->txtPrice:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lfr/testudo/spacecorsair/business/loot/SpaceObject;->getTotalSellPrice()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_36

    .line 136
    :pswitch_fd
    iget-object v0, p0, Lfr/testudo/spacecorsair/activity/viewgroup/InventoryItem;->btnBuy:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 137
    iget-object v0, p0, Lfr/testudo/spacecorsair/activity/viewgroup/InventoryItem;->layQuantity:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 138
    iget-object v0, p0, Lfr/testudo/spacecorsair/activity/viewgroup/InventoryItem;->layPoid:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 139
    iget-object v0, p0, Lfr/testudo/spacecorsair/activity/viewgroup/InventoryItem;->txtPrice:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lfr/testudo/spacecorsair/business/loot/SpaceObject;->getUnitBuyPrice()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 142
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/Game;->playerCurrentShipInventory:Lfr/testudo/spacecorsair/business/player/Inventory;

    invoke-virtual {p2}, Lfr/testudo/spacecorsair/business/loot/SpaceObject;->getSpaceObjectType()Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/business/player/Inventory;->canAfford(Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)Z

    move-result v0

    if-nez v0, :cond_36

    invoke-virtual {p2}, Lfr/testudo/spacecorsair/business/loot/SpaceObject;->getSpaceObjectType()Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    move-result-object v0

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->isInappMoney()Z

    move-result v0

    if-nez v0, :cond_36

    .line 143
    iget-object v0, p0, Lfr/testudo/spacecorsair/activity/viewgroup/InventoryItem;->txtPrice:Landroid/widget/TextView;

    const/high16 v1, -0x10000

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_36

    .line 94
    nop

    :pswitch_data_14c
    .packed-switch 0x1
        :pswitch_37
        :pswitch_d5
        :pswitch_fd
    .end packed-switch
.end method
