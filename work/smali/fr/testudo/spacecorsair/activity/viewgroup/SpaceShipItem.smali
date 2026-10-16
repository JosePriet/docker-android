.class public Lfr/testudo/spacecorsair/activity/viewgroup/SpaceShipItem;
.super Landroid/support/v4/app/Fragment;
.source "SourceFile"


# static fields
.field static rotatedArrow:Landroid/graphics/Bitmap;


# instance fields
.field private btnBuyClickListener:Landroid/view/View$OnClickListener;

.field btnBuyOrEquip:Landroid/widget/Button;

.field private btnCannotAffordClickListener:Landroid/view/View$OnClickListener;

.field private btnEquipClickListener:Landroid/view/View$OnClickListener;

.field firstOfList:Z

.field imgNext:Landroid/widget/ImageView;

.field imgPrevious:Landroid/widget/ImageView;

.field imgPriceIcon:Landroid/widget/ImageView;

.field imgShip:Landroid/widget/ImageView;

.field lastOfList:Z

.field laySpecPrice:Landroid/widget/LinearLayout;

.field parentActivity:Lfr/testudo/spacecorsair/activity/ShipsActivity;

.field pgbAgility:Landroid/widget/ProgressBar;

.field pgbResistance:Landroid/widget/ProgressBar;

.field pgbSpeed:Landroid/widget/ProgressBar;

.field shipName:Landroid/widget/TextView;

.field spaceShip:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

.field textShipDesc:Landroid/widget/TextView;

.field txtLaserType:Landroid/widget/TextView;

.field txtPrice:Landroid/widget/TextView;

.field txtShipLevel:Landroid/widget/TextView;

.field txtShipSize:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .prologue
    .line 54
    :try_start_0
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 55
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->mainActivity:Lfr/testudo/spacecorsair/activity/Main;

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/activity/Main;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020023

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 56
    const/high16 v1, 0x43340000    # 180.0f

    invoke-virtual {v5, v1}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 57
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v6, 0x1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    sput-object v0, Lfr/testudo/spacecorsair/activity/viewgroup/SpaceShipItem;->rotatedArrow:Landroid/graphics/Bitmap;
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_2a} :catch_2b

    .line 67
    :goto_2a
    return-void

    .line 61
    :catch_2b
    move-exception v0

    .line 63
    const/4 v0, 0x0

    sput-object v0, Lfr/testudo/spacecorsair/activity/viewgroup/SpaceShipItem;->rotatedArrow:Landroid/graphics/Bitmap;

    goto :goto_2a
.end method

.method public constructor <init>(Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;Lfr/testudo/spacecorsair/activity/ShipsActivity;ZZ)V
    .registers 6

    .prologue
    .line 71
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 214
    new-instance v0, Lfr/testudo/spacecorsair/activity/viewgroup/SpaceShipItem$1;

    invoke-direct {v0, p0}, Lfr/testudo/spacecorsair/activity/viewgroup/SpaceShipItem$1;-><init>(Lfr/testudo/spacecorsair/activity/viewgroup/SpaceShipItem;)V

    iput-object v0, p0, Lfr/testudo/spacecorsair/activity/viewgroup/SpaceShipItem;->btnEquipClickListener:Landroid/view/View$OnClickListener;

    .line 223
    new-instance v0, Lfr/testudo/spacecorsair/activity/viewgroup/SpaceShipItem$2;

    invoke-direct {v0, p0}, Lfr/testudo/spacecorsair/activity/viewgroup/SpaceShipItem$2;-><init>(Lfr/testudo/spacecorsair/activity/viewgroup/SpaceShipItem;)V

    iput-object v0, p0, Lfr/testudo/spacecorsair/activity/viewgroup/SpaceShipItem;->btnBuyClickListener:Landroid/view/View$OnClickListener;

    .line 232
    new-instance v0, Lfr/testudo/spacecorsair/activity/viewgroup/SpaceShipItem$3;

    invoke-direct {v0, p0}, Lfr/testudo/spacecorsair/activity/viewgroup/SpaceShipItem$3;-><init>(Lfr/testudo/spacecorsair/activity/viewgroup/SpaceShipItem;)V

    iput-object v0, p0, Lfr/testudo/spacecorsair/activity/viewgroup/SpaceShipItem;->btnCannotAffordClickListener:Landroid/view/View$OnClickListener;

    .line 72
    iput-object p1, p0, Lfr/testudo/spacecorsair/activity/viewgroup/SpaceShipItem;->spaceShip:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    .line 73
    iput-object p2, p0, Lfr/testudo/spacecorsair/activity/viewgroup/SpaceShipItem;->parentActivity:Lfr/testudo/spacecorsair/activity/ShipsActivity;

    .line 74
    iput-boolean p3, p0, Lfr/testudo/spacecorsair/activity/viewgroup/SpaceShipItem;->firstOfList:Z

    .line 75
    iput-boolean p4, p0, Lfr/testudo/spacecorsair/activity/viewgroup/SpaceShipItem;->lastOfList:Z

    .line 76
    return-void
.end method


# virtual methods
.method public bind()Lfr/testudo/spacecorsair/activity/viewgroup/SpaceShipItem;
    .registers 11

    .prologue
    const v9, 0x7f070376

    const/4 v3, 0x1

    const/16 v6, 0x64

    const/16 v8, 0x8

    const/4 v2, 0x0

    .line 120
    iget-object v0, p0, Lfr/testudo/spacecorsair/activity/viewgroup/SpaceShipItem;->spaceShip:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    if-nez v0, :cond_e

    .line 208
    :goto_d
    return-object p0

    .line 124
    :cond_e
    iget-object v0, p0, Lfr/testudo/spacecorsair/activity/viewgroup/SpaceShipItem;->spaceShip:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->getGearSpec()Lfr/testudo/spacecorsair/business/loot/stuff/GearSpec;

    move-result-object v0

    check-cast v0, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;

    .line 125
    iget-object v1, p0, Lfr/testudo/spacecorsair/activity/viewgroup/SpaceShipItem;->shipName:Landroid/widget/TextView;

    iget-object v4, p0, Lfr/testudo/spacecorsair/activity/viewgroup/SpaceShipItem;->spaceShip:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    invoke-virtual {v4}, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->getLocalizedLabel()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 126
    iget-object v1, p0, Lfr/testudo/spacecorsair/activity/viewgroup/SpaceShipItem;->shipName:Landroid/widget/TextView;

    invoke-virtual {p0}, Lfr/testudo/spacecorsair/activity/viewgroup/SpaceShipItem;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    iget-object v5, p0, Lfr/testudo/spacecorsair/activity/viewgroup/SpaceShipItem;->spaceShip:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    invoke-virtual {v5}, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->getRarety()Lfr/testudo/spacecorsair/business/loot/LootRarety;

    move-result-object v5

    invoke-virtual {v5}, Lfr/testudo/spacecorsair/business/loot/LootRarety;->getColor()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 127
    iget-object v1, p0, Lfr/testudo/spacecorsair/activity/viewgroup/SpaceShipItem;->txtShipSize:Landroid/widget/TextView;

    iget-object v4, v0, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;->sizeInformational:Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec$Size;

    invoke-virtual {v4}, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec$Size;->getLocalizedLabel()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 128
    iget-object v1, p0, Lfr/testudo/spacecorsair/activity/viewgroup/SpaceShipItem;->txtLaserType:Landroid/widget/TextView;

    iget-object v4, v0, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;->laserType:Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec$LaserType;

    invoke-virtual {v4}, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec$LaserType;->getLocalizedLabel()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 129
    iget-object v1, p0, Lfr/testudo/spacecorsair/activity/viewgroup/SpaceShipItem;->txtShipLevel:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget v5, v0, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;->level:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 131
    sget-object v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v1, v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v1, v1, Lfr/testudo/spacecorsair/game/Game;->playerInfo:Lfr/testudo/spacecorsair/business/player/PlayerInfo;

    iget v1, v1, Lfr/testudo/spacecorsair/business/player/PlayerInfo;->level:I

    iget v4, v0, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;->level:I

    if-ge v1, v4, :cond_1d3

    .line 132
    iget-object v1, p0, Lfr/testudo/spacecorsair/activity/viewgroup/SpaceShipItem;->txtShipLevel:Landroid/widget/TextView;

    const/high16 v4, -0x10000

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setTextColor(I)V

    move v1, v2

    .line 136
    :goto_7c
    iget-object v4, p0, Lfr/testudo/spacecorsair/activity/viewgroup/SpaceShipItem;->textShipDesc:Landroid/widget/TextView;

    iget-object v5, p0, Lfr/testudo/spacecorsair/activity/viewgroup/SpaceShipItem;->spaceShip:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    invoke-virtual {v5}, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->getLocalizedDesc()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 139
    iget-object v4, p0, Lfr/testudo/spacecorsair/activity/viewgroup/SpaceShipItem;->imgShip:Landroid/widget/ImageView;

    iget-object v5, p0, Lfr/testudo/spacecorsair/activity/viewgroup/SpaceShipItem;->spaceShip:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    invoke-virtual {v5}, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->getDrawableId()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v5, p0, Lfr/testudo/spacecorsair/activity/viewgroup/SpaceShipItem;->spaceShip:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;
    invoke-static {v4, v5}, Lfr/testudo/spacecorsair/mod/ModArt;->shipIcon(Landroid/widget/ImageView;Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)V

    .line 141
    iget-object v4, p0, Lfr/testudo/spacecorsair/activity/viewgroup/SpaceShipItem;->pgbResistance:Landroid/widget/ProgressBar;

    invoke-virtual {v4, v6}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 142
    iget-object v4, p0, Lfr/testudo/spacecorsair/activity/viewgroup/SpaceShipItem;->pgbResistance:Landroid/widget/ProgressBar;

    iget v5, v0, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;->armorInformational:I

    invoke-virtual {v4, v5}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 145
    iget-object v4, p0, Lfr/testudo/spacecorsair/activity/viewgroup/SpaceShipItem;->pgbAgility:Landroid/widget/ProgressBar;

    invoke-virtual {v4, v6}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 146
    iget-object v4, p0, Lfr/testudo/spacecorsair/activity/viewgroup/SpaceShipItem;->pgbAgility:Landroid/widget/ProgressBar;

    iget v5, v0, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;->agilityInformational:I

    invoke-virtual {v4, v5}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 148
    iget-object v4, p0, Lfr/testudo/spacecorsair/activity/viewgroup/SpaceShipItem;->pgbSpeed:Landroid/widget/ProgressBar;

    invoke-virtual {v4, v6}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 149
    iget-object v4, p0, Lfr/testudo/spacecorsair/activity/viewgroup/SpaceShipItem;->pgbSpeed:Landroid/widget/ProgressBar;

    iget v0, v0, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;->maxSpeedInformational:I

    invoke-virtual {v4, v0}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 151
    iget-object v0, p0, Lfr/testudo/spacecorsair/activity/viewgroup/SpaceShipItem;->spaceShip:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->getObjectPrice()Lfr/testudo/spacecorsair/business/economy/Price;

    move-result-object v0

    iget-boolean v0, v0, Lfr/testudo/spacecorsair/business/economy/Price;->inapp:Z

    if-eqz v0, :cond_130

    .line 152
    iget-object v0, p0, Lfr/testudo/spacecorsair/activity/viewgroup/SpaceShipItem;->imgPriceIcon:Landroid/widget/ImageView;

    const v4, 0x7f0200a9

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 157
    :goto_cc
    iget-object v0, p0, Lfr/testudo/spacecorsair/activity/viewgroup/SpaceShipItem;->txtPrice:Landroid/widget/TextView;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    invoke-static {v4}, Ljava/text/NumberFormat;->getNumberInstance(Ljava/util/Locale;)Ljava/text/NumberFormat;

    move-result-object v4

    iget-object v5, p0, Lfr/testudo/spacecorsair/activity/viewgroup/SpaceShipItem;->spaceShip:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    invoke-virtual {v5}, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->getObjectPrice()Lfr/testudo/spacecorsair/business/economy/Price;

    move-result-object v5

    invoke-virtual {v5}, Lfr/testudo/spacecorsair/business/economy/Price;->getBuyPrice()I

    move-result v5

    int-to-long v6, v5

    invoke-virtual {v4, v6, v7}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 158
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/Game;->playerInfo:Lfr/testudo/spacecorsair/business/player/PlayerInfo;

    iget-object v0, v0, Lfr/testudo/spacecorsair/business/player/PlayerInfo;->playerGear:Lfr/testudo/spacecorsair/business/player/PlayerGear;

    iget-object v0, v0, Lfr/testudo/spacecorsair/business/player/PlayerGear;->playerShip:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    iget-object v4, p0, Lfr/testudo/spacecorsair/activity/viewgroup/SpaceShipItem;->spaceShip:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    invoke-virtual {v0, v4}, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 160
    sget-object v4, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v4, v4, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v4, v4, Lfr/testudo/spacecorsair/game/Game;->playerInfo:Lfr/testudo/spacecorsair/business/player/PlayerInfo;

    iget-object v4, v4, Lfr/testudo/spacecorsair/business/player/PlayerInfo;->availShips:Ljava/util/List;

    iget-object v5, p0, Lfr/testudo/spacecorsair/activity/viewgroup/SpaceShipItem;->spaceShip:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    invoke-interface {v4, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_194

    .line 161
    iget-object v1, p0, Lfr/testudo/spacecorsair/activity/viewgroup/SpaceShipItem;->laySpecPrice:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v8}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 163
    if-eqz v0, :cond_139

    .line 164
    iget-object v0, p0, Lfr/testudo/spacecorsair/activity/viewgroup/SpaceShipItem;->btnBuyOrEquip:Landroid/widget/Button;

    const v1, 0x7f070373

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 165
    iget-object v0, p0, Lfr/testudo/spacecorsair/activity/viewgroup/SpaceShipItem;->btnBuyOrEquip:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 192
    :cond_11c
    :goto_11c
    iget-boolean v0, p0, Lfr/testudo/spacecorsair/activity/viewgroup/SpaceShipItem;->firstOfList:Z

    if-eqz v0, :cond_1c5

    .line 193
    iget-object v0, p0, Lfr/testudo/spacecorsair/activity/viewgroup/SpaceShipItem;->imgPrevious:Landroid/widget/ImageView;

    invoke-virtual {v0, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 199
    :goto_125
    iget-boolean v0, p0, Lfr/testudo/spacecorsair/activity/viewgroup/SpaceShipItem;->lastOfList:Z

    if-eqz v0, :cond_1cc

    .line 200
    iget-object v0, p0, Lfr/testudo/spacecorsair/activity/viewgroup/SpaceShipItem;->imgNext:Landroid/widget/ImageView;

    invoke-virtual {v0, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_d

    .line 154
    :cond_130
    iget-object v0, p0, Lfr/testudo/spacecorsair/activity/viewgroup/SpaceShipItem;->imgPriceIcon:Landroid/widget/ImageView;

    const v4, 0x7f0200a8

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_cc

    .line 167
    :cond_139
    iget-object v0, p0, Lfr/testudo/spacecorsair/activity/viewgroup/SpaceShipItem;->btnBuyOrEquip:Landroid/widget/Button;

    invoke-virtual {v0, v9}, Landroid/widget/Button;->setText(I)V

    .line 168
    iget-object v0, p0, Lfr/testudo/spacecorsair/activity/viewgroup/SpaceShipItem;->btnBuyOrEquip:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 169
    iget-object v0, p0, Lfr/testudo/spacecorsair/activity/viewgroup/SpaceShipItem;->btnBuyOrEquip:Landroid/widget/Button;

    iget-object v1, p0, Lfr/testudo/spacecorsair/activity/viewgroup/SpaceShipItem;->btnEquipClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 170
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/Game;->playerInfo:Lfr/testudo/spacecorsair/business/player/PlayerInfo;

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/business/player/PlayerInfo;->canChangeShip()Z

    move-result v0

    if-nez v0, :cond_11c

    .line 171
    iget-object v0, p0, Lfr/testudo/spacecorsair/activity/viewgroup/SpaceShipItem;->btnBuyOrEquip:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 172
    iget-object v0, p0, Lfr/testudo/spacecorsair/activity/viewgroup/SpaceShipItem;->btnBuyOrEquip:Landroid/widget/Button;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    invoke-virtual {v3, v9}, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->getLocalizedString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " ("

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v3, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v3, v3, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v3, v3, Lfr/testudo/spacecorsair/game/Game;->playerInfo:Lfr/testudo/spacecorsair/business/player/PlayerInfo;

    iget v3, v3, Lfr/testudo/spacecorsair/business/player/PlayerInfo;->remainingTimeChangeShip:I

    div-int/lit16 v3, v3, 0x3e8

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "s"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ")"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_11c

    .line 178
    :cond_194
    iget-object v0, p0, Lfr/testudo/spacecorsair/activity/viewgroup/SpaceShipItem;->laySpecPrice:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 181
    iget-object v0, p0, Lfr/testudo/spacecorsair/activity/viewgroup/SpaceShipItem;->btnBuyOrEquip:Landroid/widget/Button;

    const v3, 0x7f070249

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setText(I)V

    .line 182
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/Game;->playerCurrentShipInventory:Lfr/testudo/spacecorsair/business/player/Inventory;

    iget-object v3, p0, Lfr/testudo/spacecorsair/activity/viewgroup/SpaceShipItem;->spaceShip:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    invoke-virtual {v0, v3}, Lfr/testudo/spacecorsair/business/player/Inventory;->canAfford(Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)Z

    move-result v0

    .line 183
    if-eqz v0, :cond_1bd

    .line 184
    iget-object v0, p0, Lfr/testudo/spacecorsair/activity/viewgroup/SpaceShipItem;->btnBuyOrEquip:Landroid/widget/Button;

    iget-object v3, p0, Lfr/testudo/spacecorsair/activity/viewgroup/SpaceShipItem;->btnBuyClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 189
    :goto_1b6
    iget-object v0, p0, Lfr/testudo/spacecorsair/activity/viewgroup/SpaceShipItem;->btnBuyOrEquip:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    goto/16 :goto_11c

    .line 186
    :cond_1bd
    iget-object v0, p0, Lfr/testudo/spacecorsair/activity/viewgroup/SpaceShipItem;->btnBuyOrEquip:Landroid/widget/Button;

    iget-object v3, p0, Lfr/testudo/spacecorsair/activity/viewgroup/SpaceShipItem;->btnCannotAffordClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1b6

    .line 196
    :cond_1c5
    iget-object v0, p0, Lfr/testudo/spacecorsair/activity/viewgroup/SpaceShipItem;->imgPrevious:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_125

    .line 203
    :cond_1cc
    iget-object v0, p0, Lfr/testudo/spacecorsair/activity/viewgroup/SpaceShipItem;->imgNext:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_d

    :cond_1d3
    move v1, v3

    goto/16 :goto_7c
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 7

    .prologue
    .line 81
    const v0, 0x7f030019

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 84
    const v1, 0x7f0a010b

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lfr/testudo/spacecorsair/activity/viewgroup/SpaceShipItem;->shipName:Landroid/widget/TextView;

    .line 85
    const v1, 0x7f0a010d

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lfr/testudo/spacecorsair/activity/viewgroup/SpaceShipItem;->textShipDesc:Landroid/widget/TextView;

    .line 86
    const v1, 0x7f0a0112

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lfr/testudo/spacecorsair/activity/viewgroup/SpaceShipItem;->txtShipSize:Landroid/widget/TextView;

    .line 87
    const v1, 0x7f0a0117

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lfr/testudo/spacecorsair/activity/viewgroup/SpaceShipItem;->txtLaserType:Landroid/widget/TextView;

    .line 88
    const v1, 0x7f0a011b

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lfr/testudo/spacecorsair/activity/viewgroup/SpaceShipItem;->txtShipLevel:Landroid/widget/TextView;

    .line 89
    const v1, 0x7f0a0049

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lfr/testudo/spacecorsair/activity/viewgroup/SpaceShipItem;->txtPrice:Landroid/widget/TextView;

    .line 92
    const v1, 0x7f0a00f2

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lfr/testudo/spacecorsair/activity/viewgroup/SpaceShipItem;->imgShip:Landroid/widget/ImageView;

    .line 93
    const v1, 0x7f0a011d

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lfr/testudo/spacecorsair/activity/viewgroup/SpaceShipItem;->imgPriceIcon:Landroid/widget/ImageView;

    .line 94
    const v1, 0x7f0a011f

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lfr/testudo/spacecorsair/activity/viewgroup/SpaceShipItem;->imgPrevious:Landroid/widget/ImageView;

    .line 95
    const v1, 0x7f0a0120

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lfr/testudo/spacecorsair/activity/viewgroup/SpaceShipItem;->imgNext:Landroid/widget/ImageView;

    .line 96
    sget-object v1, Lfr/testudo/spacecorsair/activity/viewgroup/SpaceShipItem;->rotatedArrow:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_83

    .line 97
    iget-object v1, p0, Lfr/testudo/spacecorsair/activity/viewgroup/SpaceShipItem;->imgPrevious:Landroid/widget/ImageView;

    sget-object v2, Lfr/testudo/spacecorsair/activity/viewgroup/SpaceShipItem;->rotatedArrow:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 101
    :cond_83
    const v1, 0x7f0a0110

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ProgressBar;

    iput-object v1, p0, Lfr/testudo/spacecorsair/activity/viewgroup/SpaceShipItem;->pgbAgility:Landroid/widget/ProgressBar;

    .line 102
    const v1, 0x7f0a0115

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ProgressBar;

    iput-object v1, p0, Lfr/testudo/spacecorsair/activity/viewgroup/SpaceShipItem;->pgbSpeed:Landroid/widget/ProgressBar;

    .line 103
    const v1, 0x7f0a0119

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ProgressBar;

    iput-object v1, p0, Lfr/testudo/spacecorsair/activity/viewgroup/SpaceShipItem;->pgbResistance:Landroid/widget/ProgressBar;

    .line 105
    const v1, 0x7f0a011e

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lfr/testudo/spacecorsair/activity/viewgroup/SpaceShipItem;->btnBuyOrEquip:Landroid/widget/Button;

    .line 107
    const v1, 0x7f0a011c

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lfr/testudo/spacecorsair/activity/viewgroup/SpaceShipItem;->laySpecPrice:Landroid/widget/LinearLayout;

    .line 112
    invoke-virtual {p0}, Lfr/testudo/spacecorsair/activity/viewgroup/SpaceShipItem;->bind()Lfr/testudo/spacecorsair/activity/viewgroup/SpaceShipItem;

    .line 114
    return-object v0
.end method
