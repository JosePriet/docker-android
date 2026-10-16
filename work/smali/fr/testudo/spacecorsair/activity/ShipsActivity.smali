.class public Lfr/testudo/spacecorsair/activity/ShipsActivity;
.super Landroid/support/v4/app/FragmentActivity;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lfr/testudo/spacecorsair/activity/ShipsActivity$1;,
        Lfr/testudo/spacecorsair/activity/ShipsActivity$ScreenSlidePagerAdapter;
    }
.end annotation


# instance fields
.field pageIndicator:Lfr/testudo/spacecorsair/activity/pagerindicator/LinePageIndicator;

.field protected shipPagerAdapter:Landroid/support/v4/view/o;

.field protected shipsPager:Landroid/support/v4/view/ViewPager;

.field protected txtCredits:Landroid/widget/TextView;

.field protected txtCreditsInApp:Landroid/widget/TextView;

.field protected txtLevel:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 25
    invoke-direct {p0}, Landroid/support/v4/app/FragmentActivity;-><init>()V

    .line 114
    return-void
.end method

.method private getCurentShipPos(Ljava/util/List;)I
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;",
            ">;)I"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 97
    .line 98
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v2

    :goto_6
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_27

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    .line 99
    sget-object v4, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v4, v4, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v4, v4, Lfr/testudo/spacecorsair/game/Game;->playerInfo:Lfr/testudo/spacecorsair/business/player/PlayerInfo;

    iget-object v4, v4, Lfr/testudo/spacecorsair/business/player/PlayerInfo;->playerGear:Lfr/testudo/spacecorsair/business/player/PlayerGear;

    iget-object v4, v4, Lfr/testudo/spacecorsair/business/player/PlayerGear;->playerShip:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    invoke-virtual {v0, v4}, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_23

    .line 104
    :goto_22
    return v1

    .line 102
    :cond_23
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    .line 103
    goto :goto_6

    :cond_27
    move v1, v2

    .line 104
    goto :goto_22
.end method


# virtual methods
.method public initPager()V
    .registers 7

    .prologue
    .line 72
    const v0, 0x7f0a0122

    invoke-virtual {p0, v0}, Lfr/testudo/spacecorsair/activity/ShipsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager;

    iput-object v0, p0, Lfr/testudo/spacecorsair/activity/ShipsActivity;->shipsPager:Landroid/support/v4/view/ViewPager;

    .line 73
    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModUi;->ships(Landroid/app/Activity;)Ljava/util/List;

    move-result-object v3

    .line 75
    new-instance v0, Lfr/testudo/spacecorsair/activity/ShipsActivity$ScreenSlidePagerAdapter;

    invoke-virtual {p0}, Lfr/testudo/spacecorsair/activity/ShipsActivity;->getSupportFragmentManager()Landroid/support/v4/app/i;

    move-result-object v2

    const/4 v5, 0x0

    move-object v1, p0

    move-object v4, p0

    invoke-direct/range {v0 .. v5}, Lfr/testudo/spacecorsair/activity/ShipsActivity$ScreenSlidePagerAdapter;-><init>(Lfr/testudo/spacecorsair/activity/ShipsActivity;Landroid/support/v4/app/i;Ljava/util/List;Lfr/testudo/spacecorsair/activity/ShipsActivity;Lfr/testudo/spacecorsair/activity/ShipsActivity$1;)V

    iput-object v0, p0, Lfr/testudo/spacecorsair/activity/ShipsActivity;->shipPagerAdapter:Landroid/support/v4/view/o;

    .line 77
    iget-object v0, p0, Lfr/testudo/spacecorsair/activity/ShipsActivity;->shipsPager:Landroid/support/v4/view/ViewPager;

    iget-object v1, p0, Lfr/testudo/spacecorsair/activity/ShipsActivity;->shipPagerAdapter:Landroid/support/v4/view/o;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/o;)V

    .line 79
    iget-object v0, p0, Lfr/testudo/spacecorsair/activity/ShipsActivity;->pageIndicator:Lfr/testudo/spacecorsair/activity/pagerindicator/LinePageIndicator;

    iget-object v1, p0, Lfr/testudo/spacecorsair/activity/ShipsActivity;->shipsPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/activity/pagerindicator/LinePageIndicator;->setViewPager(Landroid/support/v4/view/ViewPager;)V

    .line 86
    iget-object v0, p0, Lfr/testudo/spacecorsair/activity/ShipsActivity;->shipsPager:Landroid/support/v4/view/ViewPager;

    const/4 v1, 0x1

    new-instance v2, Lfr/testudo/spacecorsair/activity/DepthPageTransformer;

    invoke-direct {v2}, Lfr/testudo/spacecorsair/activity/DepthPageTransformer;-><init>()V

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/view/ViewPager;->a(ZLandroid/support/v4/view/ViewPager$f;)V

    .line 90
    iget-object v0, p0, Lfr/testudo/spacecorsair/activity/ShipsActivity;->shipsPager:Landroid/support/v4/view/ViewPager;

    invoke-direct {p0, v3}, Lfr/testudo/spacecorsair/activity/ShipsActivity;->getCurentShipPos(Ljava/util/List;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 94
    return-void
.end method

.method public showInAppCredits()V
    .registers 3

    .prologue
    .line 66
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lfr/testudo/spacecorsair/activity/BuyInapp_;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 67
    invoke-virtual {p0, v0}, Lfr/testudo/spacecorsair/activity/ShipsActivity;->startActivity(Landroid/content/Intent;)V

    .line 68
    return-void
.end method

.method public updateUI()V
    .registers 5

    .prologue
    .line 51
    iget-object v0, p0, Lfr/testudo/spacecorsair/activity/ShipsActivity;->txtLevel:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    const v3, 0x7f070257

    invoke-virtual {v2, v3}, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->getLocalizedString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v2, v2, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v2, v2, Lfr/testudo/spacecorsair/game/Game;->playerInfo:Lfr/testudo/spacecorsair/business/player/PlayerInfo;

    iget v2, v2, Lfr/testudo/spacecorsair/business/player/PlayerInfo;->level:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 54
    iget-object v0, p0, Lfr/testudo/spacecorsair/activity/ShipsActivity;->txtCredits:Landroid/widget/TextView;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-static {v1}, Ljava/text/NumberFormat;->getNumberInstance(Ljava/util/Locale;)Ljava/text/NumberFormat;

    move-result-object v1

    sget-object v2, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v2, v2, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v2, v2, Lfr/testudo/spacecorsair/game/Game;->playerCurrentShipInventory:Lfr/testudo/spacecorsair/business/player/Inventory;

    invoke-virtual {v2}, Lfr/testudo/spacecorsair/business/player/Inventory;->getCredit()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 55
    iget-object v0, p0, Lfr/testudo/spacecorsair/activity/ShipsActivity;->txtCreditsInApp:Landroid/widget/TextView;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-static {v1}, Ljava/text/NumberFormat;->getNumberInstance(Ljava/util/Locale;)Ljava/text/NumberFormat;

    move-result-object v1

    sget-object v2, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v2, v2, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v2, v2, Lfr/testudo/spacecorsair/game/Game;->playerCurrentShipInventory:Lfr/testudo/spacecorsair/business/player/Inventory;

    invoke-virtual {v2}, Lfr/testudo/spacecorsair/business/player/Inventory;->getCreditInApp()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 59
    invoke-virtual {p0}, Lfr/testudo/spacecorsair/activity/ShipsActivity;->initPager()V

    .line 61
    return-void
.end method
