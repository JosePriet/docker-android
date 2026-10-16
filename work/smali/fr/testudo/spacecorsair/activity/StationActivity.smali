.class public Lfr/testudo/spacecorsair/activity/StationActivity;
.super Lfr/testudo/spacecorsair/activity/CommonActivity;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lfr/testudo/spacecorsair/activity/StationActivity$7;,
        Lfr/testudo/spacecorsair/activity/StationActivity$StationAction;
    }
.end annotation


# static fields
.field public static final INTENT_KEY_DISPLAY_INAPP:Ljava/lang/String; = "inapp"

.field public static final INTENT_KEY_DISPLAY_MOBILE_SHOP:Ljava/lang/String; = "mobile"


# instance fields
.field private StationItemClickListener:Lfr/testudo/spacecorsair/activity/viewgroup/SpaceObjectListener;

.field private context:Landroid/content/Context;

.field protected currentStation:Lfr/testudo/spacecorsair/business/world/station/Station;

.field protected currentStationAction:Lfr/testudo/spacecorsair/activity/StationActivity$StationAction;

.field protected indexBuyables:I

.field protected indexSellables:I

.field protected indexStore:I

.field protected isInappStation:Z

.field protected isMobileStation:Z

.field private listviewScrollListener:Landroid/widget/AbsListView$OnScrollListener;

.field protected lstBuyables:Landroid/widget/ListView;

.field protected lstBuyablesAdapter:Lfr/testudo/spacecorsair/activity/adapters/SpaceObjectAdapter;

.field protected lstSellables:Landroid/widget/ListView;

.field protected lstSellablesAdapter:Lfr/testudo/spacecorsair/activity/adapters/SpaceObjectAdapter;

.field protected lstStore:Landroid/widget/ListView;

.field protected lstStoreAdapter:Lfr/testudo/spacecorsair/activity/adapters/SpaceObjectAdapter;

.field private pickDialog:Landroid/app/Dialog;

.field pickListener:Lfr/testudo/spacecorsair/activity/viewgroup/ItemQuantityPickListener;

.field protected restoreListScrool:Z

.field protected topBuyables:I

.field protected topSellables:I

.field protected topStore:I

.field protected txtBuyables:Landroid/widget/TextView;

.field protected txtCredits:Landroid/widget/TextView;

.field protected txtCreditsInApp:Landroid/widget/TextView;

.field protected txtSellables:Landroid/widget/TextView;

.field protected txtSoute:Landroid/widget/TextView;

.field protected txtStationName:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 50
    invoke-direct {p0}, Lfr/testudo/spacecorsair/activity/CommonActivity;-><init>()V

    .line 66
    iput v0, p0, Lfr/testudo/spacecorsair/activity/StationActivity;->topSellables:I

    .line 68
    iput v0, p0, Lfr/testudo/spacecorsair/activity/StationActivity;->indexSellables:I

    .line 70
    iput v0, p0, Lfr/testudo/spacecorsair/activity/StationActivity;->topBuyables:I

    .line 72
    iput v0, p0, Lfr/testudo/spacecorsair/activity/StationActivity;->indexBuyables:I

    .line 74
    iput v0, p0, Lfr/testudo/spacecorsair/activity/StationActivity;->topStore:I

    .line 76
    iput v0, p0, Lfr/testudo/spacecorsair/activity/StationActivity;->indexStore:I

    .line 78
    iput-boolean v0, p0, Lfr/testudo/spacecorsair/activity/StationActivity;->restoreListScrool:Z

    .line 82
    sget-object v0, Lfr/testudo/spacecorsair/activity/StationActivity$StationAction;->BUY:Lfr/testudo/spacecorsair/activity/StationActivity$StationAction;

    iput-object v0, p0, Lfr/testudo/spacecorsair/activity/StationActivity;->currentStationAction:Lfr/testudo/spacecorsair/activity/StationActivity$StationAction;

    .line 86
    new-instance v0, Lfr/testudo/spacecorsair/activity/StationActivity$1;

    invoke-direct {v0, p0}, Lfr/testudo/spacecorsair/activity/StationActivity$1;-><init>(Lfr/testudo/spacecorsair/activity/StationActivity;)V

    iput-object v0, p0, Lfr/testudo/spacecorsair/activity/StationActivity;->pickListener:Lfr/testudo/spacecorsair/activity/viewgroup/ItemQuantityPickListener;

    .line 127
    new-instance v0, Lfr/testudo/spacecorsair/activity/StationActivity$2;

    invoke-direct {v0, p0}, Lfr/testudo/spacecorsair/activity/StationActivity$2;-><init>(Lfr/testudo/spacecorsair/activity/StationActivity;)V

    iput-object v0, p0, Lfr/testudo/spacecorsair/activity/StationActivity;->StationItemClickListener:Lfr/testudo/spacecorsair/activity/viewgroup/SpaceObjectListener;

    .line 319
    new-instance v0, Lfr/testudo/spacecorsair/activity/StationActivity$3;

    invoke-direct {v0, p0}, Lfr/testudo/spacecorsair/activity/StationActivity$3;-><init>(Lfr/testudo/spacecorsair/activity/StationActivity;)V

    iput-object v0, p0, Lfr/testudo/spacecorsair/activity/StationActivity;->listviewScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    .line 441
    return-void
.end method

.method static synthetic access$000(Lfr/testudo/spacecorsair/activity/StationActivity;)V
    .registers 1

    .prologue
    .line 50
    invoke-direct {p0}, Lfr/testudo/spacecorsair/activity/StationActivity;->updateListviews()V

    return-void
.end method

.method static synthetic access$100(Lfr/testudo/spacecorsair/activity/StationActivity;)Landroid/app/Dialog;
    .registers 2

    .prologue
    .line 50
    iget-object v0, p0, Lfr/testudo/spacecorsair/activity/StationActivity;->pickDialog:Landroid/app/Dialog;

    return-object v0
.end method

.method static synthetic access$102(Lfr/testudo/spacecorsair/activity/StationActivity;Landroid/app/Dialog;)Landroid/app/Dialog;
    .registers 2

    .prologue
    .line 50
    iput-object p1, p0, Lfr/testudo/spacecorsair/activity/StationActivity;->pickDialog:Landroid/app/Dialog;

    return-object p1
.end method

.method static synthetic access$200(Lfr/testudo/spacecorsair/activity/StationActivity;)Landroid/content/Context;
    .registers 2

    .prologue
    .line 50
    iget-object v0, p0, Lfr/testudo/spacecorsair/activity/StationActivity;->context:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lfr/testudo/spacecorsair/activity/StationActivity;Lfr/testudo/spacecorsair/business/loot/SpaceObject;IILfr/testudo/spacecorsair/activity/viewgroup/ItemQuantityPickListener;Lfr/testudo/spacecorsair/activity/adapters/SpaceObjectAdapter$ItemContext;)V
    .registers 6

    .prologue
    .line 50
    invoke-direct/range {p0 .. p5}, Lfr/testudo/spacecorsair/activity/StationActivity;->showTransactionDialog(Lfr/testudo/spacecorsair/business/loot/SpaceObject;IILfr/testudo/spacecorsair/activity/viewgroup/ItemQuantityPickListener;Lfr/testudo/spacecorsair/activity/adapters/SpaceObjectAdapter$ItemContext;)V

    return-void
.end method

.method static synthetic access$400(Lfr/testudo/spacecorsair/activity/StationActivity;)V
    .registers 1

    .prologue
    .line 50
    invoke-direct {p0}, Lfr/testudo/spacecorsair/activity/StationActivity;->saveListElemScrool()V

    return-void
.end method

.method private getBuyablesData()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lfr/testudo/spacecorsair/business/loot/SpaceObject;",
            ">;"
        }
    .end annotation

    .prologue
    .line 296
    iget-object v0, p0, Lfr/testudo/spacecorsair/activity/StationActivity;->currentStation:Lfr/testudo/spacecorsair/business/world/station/Station;

    iget-object v0, v0, Lfr/testudo/spacecorsair/business/world/station/Station;->inventory:Lfr/testudo/spacecorsair/business/player/Inventory;

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/business/player/Inventory;->getContent()Ljava/util/Collection;

    move-result-object v0

    .line 298
    instance-of v1, v0, Ljava/util/List;

    if-eqz v1, :cond_f

    .line 299
    check-cast v0, Ljava/util/List;

    .line 304
    :goto_e
    return-object v0

    .line 301
    :cond_f
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object v0, v1

    goto :goto_e
.end method

.method private getSellablesData()Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lfr/testudo/spacecorsair/business/loot/SpaceObject;",
            ">;"
        }
    .end annotation

    .prologue
    .line 308
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/Game;->playerCurrentShipInventory:Lfr/testudo/spacecorsair/business/player/Inventory;

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/business/player/Inventory;->getContent()Ljava/util/Collection;

    move-result-object v0

    .line 309
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 310
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_13
    :goto_13
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_31

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfr/testudo/spacecorsair/business/loot/SpaceObject;

    .line 311
    iget-object v3, p0, Lfr/testudo/spacecorsair/activity/StationActivity;->currentStation:Lfr/testudo/spacecorsair/business/world/station/Station;

    iget-object v3, v3, Lfr/testudo/spacecorsair/business/world/station/Station;->buyList:Ljava/util/List;

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/business/loot/SpaceObject;->getSpaceObjectType()Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_13

    .line 312
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_13

    .line 315
    :cond_31
    return-object v1
.end method

.method private initCurrentStation()V
    .registers 3

    .prologue
    .line 168
    iget-boolean v0, p0, Lfr/testudo/spacecorsair/activity/StationActivity;->isInappStation:Z

    if-eqz v0, :cond_12

    .line 169
    invoke-static {}, Lfr/testudo/spacecorsair/game/StaticStation;->getInappStation()Lfr/testudo/spacecorsair/business/world/station/Station;

    move-result-object v0

    iput-object v0, p0, Lfr/testudo/spacecorsair/activity/StationActivity;->currentStation:Lfr/testudo/spacecorsair/business/world/station/Station;

    .line 170
    iget-object v0, p0, Lfr/testudo/spacecorsair/activity/StationActivity;->txtSellables:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 186
    :goto_11
    return-void

    .line 174
    :cond_12
    iget-boolean v0, p0, Lfr/testudo/spacecorsair/activity/StationActivity;->isMobileStation:Z

    if-eqz v0, :cond_1d

    .line 175
    invoke-static {}, Lfr/testudo/spacecorsair/game/StaticStation;->getMobileStation()Lfr/testudo/spacecorsair/business/world/station/Station;

    move-result-object v0

    iput-object v0, p0, Lfr/testudo/spacecorsair/activity/StationActivity;->currentStation:Lfr/testudo/spacecorsair/business/world/station/Station;

    goto :goto_11

    .line 178
    :cond_1d
    invoke-static {}, Lfr/testudo/spacecorsair/business/player/PlayerShip;->instance()Lfr/testudo/spacecorsair/business/player/PlayerShip;

    move-result-object v0

    iget-object v0, v0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->dock:Lfr/testudo/spacecorsair/business/world/station/DockPoint;

    .line 179
    if-nez v0, :cond_2d

    .line 181
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Cannot find docked space station !"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 183
    :cond_2d
    iget-object v0, v0, Lfr/testudo/spacecorsair/business/world/station/DockPoint;->parent:Lfr/testudo/spacecorsair/business/world/station/Station;

    iput-object v0, p0, Lfr/testudo/spacecorsair/activity/StationActivity;->currentStation:Lfr/testudo/spacecorsair/business/world/station/Station;

    goto :goto_11
.end method

.method private saveListElemScrool()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 256
    iget-object v0, p0, Lfr/testudo/spacecorsair/activity/StationActivity;->lstSellables:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v0

    iput v0, p0, Lfr/testudo/spacecorsair/activity/StationActivity;->indexSellables:I

    .line 257
    iget-object v0, p0, Lfr/testudo/spacecorsair/activity/StationActivity;->lstSellables:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 258
    if-nez v0, :cond_3d

    move v0, v1

    :goto_12
    iput v0, p0, Lfr/testudo/spacecorsair/activity/StationActivity;->topSellables:I

    .line 260
    iget-object v0, p0, Lfr/testudo/spacecorsair/activity/StationActivity;->lstBuyables:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v0

    iput v0, p0, Lfr/testudo/spacecorsair/activity/StationActivity;->indexBuyables:I

    .line 261
    iget-object v0, p0, Lfr/testudo/spacecorsair/activity/StationActivity;->lstBuyables:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 262
    if-nez v0, :cond_42

    move v0, v1

    :goto_25
    iput v0, p0, Lfr/testudo/spacecorsair/activity/StationActivity;->topBuyables:I

    .line 264
    iget-object v0, p0, Lfr/testudo/spacecorsair/activity/StationActivity;->lstStore:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v0

    iput v0, p0, Lfr/testudo/spacecorsair/activity/StationActivity;->indexStore:I

    .line 265
    iget-object v0, p0, Lfr/testudo/spacecorsair/activity/StationActivity;->lstStore:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 266
    if-nez v0, :cond_47

    :goto_37
    iput v1, p0, Lfr/testudo/spacecorsair/activity/StationActivity;->topStore:I

    .line 268
    const/4 v0, 0x1

    iput-boolean v0, p0, Lfr/testudo/spacecorsair/activity/StationActivity;->restoreListScrool:Z

    .line 269
    return-void

    .line 258
    :cond_3d
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    goto :goto_12

    .line 262
    :cond_42
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    goto :goto_25

    .line 266
    :cond_47
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v1

    goto :goto_37
.end method

.method private showTransactionDialog(Lfr/testudo/spacecorsair/business/loot/SpaceObject;IILfr/testudo/spacecorsair/activity/viewgroup/ItemQuantityPickListener;Lfr/testudo/spacecorsair/activity/adapters/SpaceObjectAdapter$ItemContext;)V
    .registers 14

    .prologue
    const v6, 0x7f07024a

    const v5, 0x7f070249

    .line 336
    new-instance v0, Landroid/app/Dialog;

    invoke-direct {v0, p0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lfr/testudo/spacecorsair/activity/StationActivity;->pickDialog:Landroid/app/Dialog;

    .line 337
    iget-object v0, p0, Lfr/testudo/spacecorsair/activity/StationActivity;->pickDialog:Landroid/app/Dialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    .line 338
    iget-object v0, p0, Lfr/testudo/spacecorsair/activity/StationActivity;->pickDialog:Landroid/app/Dialog;

    const v1, 0x7f03000c

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setContentView(I)V

    .line 339
    iget-object v0, p0, Lfr/testudo/spacecorsair/activity/StationActivity;->pickDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 341
    iget-object v0, p0, Lfr/testudo/spacecorsair/activity/StationActivity;->pickDialog:Landroid/app/Dialog;

    const v1, 0x7f0a0046

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 342
    invoke-virtual {p1}, Lfr/testudo/spacecorsair/business/loot/SpaceObject;->getSpaceObjectType()Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    move-result-object v1

    invoke-virtual {v1}, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->getLocalizedLabel()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 344
    iget-object v0, p0, Lfr/testudo/spacecorsair/activity/StationActivity;->pickDialog:Landroid/app/Dialog;

    const v1, 0x7f0a0087

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    .line 345
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 347
    iget-object v0, p0, Lfr/testudo/spacecorsair/activity/StationActivity;->pickDialog:Landroid/app/Dialog;

    const v1, 0x7f0a0088

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    .line 348
    invoke-virtual {v0, p2}, Landroid/widget/SeekBar;->setMax(I)V

    .line 351
    iget-object v1, p0, Lfr/testudo/spacecorsair/activity/StationActivity;->pickDialog:Landroid/app/Dialog;

    const v3, 0x7f0a0089

    invoke-virtual {v1, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Landroid/widget/Button;

    .line 353
    iget-object v1, p0, Lfr/testudo/spacecorsair/activity/StationActivity;->pickDialog:Landroid/app/Dialog;

    const v3, 0x7f0a0086

    invoke-virtual {v1, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 354
    sget-object v3, Lfr/testudo/spacecorsair/activity/StationActivity$7;->$SwitchMap$fr$testudo$spacecorsair$activity$adapters$SpaceObjectAdapter$ItemContext:[I

    invoke-virtual {p5}, Lfr/testudo/spacecorsair/activity/adapters/SpaceObjectAdapter$ItemContext;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_e6

    .line 366
    :goto_91
    invoke-virtual {v0, p3}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 368
    new-instance v1, Lfr/testudo/spacecorsair/activity/StationActivity$4;

    invoke-direct {v1, p0, v2}, Lfr/testudo/spacecorsair/activity/StationActivity$4;-><init>(Lfr/testudo/spacecorsair/activity/StationActivity;Landroid/widget/EditText;)V

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 389
    iget-object v0, p0, Lfr/testudo/spacecorsair/activity/StationActivity;->pickDialog:Landroid/app/Dialog;

    const v1, 0x7f0a0036

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 390
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 391
    new-instance v1, Lfr/testudo/spacecorsair/activity/StationActivity$5;

    invoke-direct {v1, p0}, Lfr/testudo/spacecorsair/activity/StationActivity$5;-><init>(Lfr/testudo/spacecorsair/activity/StationActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 402
    new-instance v0, Lfr/testudo/spacecorsair/activity/StationActivity$6;

    move-object v1, p0

    move v3, p2

    move-object v4, p4

    move-object v5, p1

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lfr/testudo/spacecorsair/activity/StationActivity$6;-><init>(Lfr/testudo/spacecorsair/activity/StationActivity;Landroid/widget/EditText;ILfr/testudo/spacecorsair/activity/viewgroup/ItemQuantityPickListener;Lfr/testudo/spacecorsair/business/loot/SpaceObject;Lfr/testudo/spacecorsair/activity/adapters/SpaceObjectAdapter$ItemContext;)V

    invoke-virtual {v7, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 420
    iget-object v0, p0, Lfr/testudo/spacecorsair/activity/StationActivity;->pickDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 421
    return-void

    .line 356
    :pswitch_c7
    invoke-virtual {p0}, Lfr/testudo/spacecorsair/activity/StationActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 357
    invoke-virtual {v7, v6}, Landroid/widget/Button;->setText(I)V

    goto :goto_91

    .line 360
    :pswitch_d6
    invoke-virtual {p0}, Lfr/testudo/spacecorsair/activity/StationActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 361
    invoke-virtual {v7, v5}, Landroid/widget/Button;->setText(I)V

    goto :goto_91

    .line 354
    nop

    :pswitch_data_e6
    .packed-switch 0x1
        :pswitch_c7
        :pswitch_d6
    .end packed-switch
.end method

.method private updateListviews()V
    .registers 5

    .prologue
    .line 272
    new-instance v0, Lfr/testudo/spacecorsair/activity/adapters/SpaceObjectAdapter;

    invoke-direct {p0}, Lfr/testudo/spacecorsair/activity/StationActivity;->getSellablesData()Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lfr/testudo/spacecorsair/activity/StationActivity;->StationItemClickListener:Lfr/testudo/spacecorsair/activity/viewgroup/SpaceObjectListener;

    sget-object v3, Lfr/testudo/spacecorsair/activity/adapters/SpaceObjectAdapter$ItemContext;->SELL:Lfr/testudo/spacecorsair/activity/adapters/SpaceObjectAdapter$ItemContext;

    invoke-direct {v0, p0, v1, v2, v3}, Lfr/testudo/spacecorsair/activity/adapters/SpaceObjectAdapter;-><init>(Landroid/app/Activity;Ljava/util/List;Lfr/testudo/spacecorsair/activity/viewgroup/SpaceObjectListener;Lfr/testudo/spacecorsair/activity/adapters/SpaceObjectAdapter$ItemContext;)V

    iput-object v0, p0, Lfr/testudo/spacecorsair/activity/StationActivity;->lstSellablesAdapter:Lfr/testudo/spacecorsair/activity/adapters/SpaceObjectAdapter;

    .line 273
    iget-object v0, p0, Lfr/testudo/spacecorsair/activity/StationActivity;->lstSellables:Landroid/widget/ListView;

    iget-object v1, p0, Lfr/testudo/spacecorsair/activity/StationActivity;->lstSellablesAdapter:Lfr/testudo/spacecorsair/activity/adapters/SpaceObjectAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 274
    iget-object v0, p0, Lfr/testudo/spacecorsair/activity/StationActivity;->lstSellables:Landroid/widget/ListView;

    iget-object v1, p0, Lfr/testudo/spacecorsair/activity/StationActivity;->listviewScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 276
    new-instance v0, Lfr/testudo/spacecorsair/activity/adapters/SpaceObjectAdapter;

    invoke-direct {p0}, Lfr/testudo/spacecorsair/activity/StationActivity;->getBuyablesData()Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lfr/testudo/spacecorsair/activity/StationActivity;->StationItemClickListener:Lfr/testudo/spacecorsair/activity/viewgroup/SpaceObjectListener;

    sget-object v3, Lfr/testudo/spacecorsair/activity/adapters/SpaceObjectAdapter$ItemContext;->BUY:Lfr/testudo/spacecorsair/activity/adapters/SpaceObjectAdapter$ItemContext;

    invoke-direct {v0, p0, v1, v2, v3}, Lfr/testudo/spacecorsair/activity/adapters/SpaceObjectAdapter;-><init>(Landroid/app/Activity;Ljava/util/List;Lfr/testudo/spacecorsair/activity/viewgroup/SpaceObjectListener;Lfr/testudo/spacecorsair/activity/adapters/SpaceObjectAdapter$ItemContext;)V

    iput-object v0, p0, Lfr/testudo/spacecorsair/activity/StationActivity;->lstBuyablesAdapter:Lfr/testudo/spacecorsair/activity/adapters/SpaceObjectAdapter;

    .line 277
    iget-object v0, p0, Lfr/testudo/spacecorsair/activity/StationActivity;->lstBuyables:Landroid/widget/ListView;

    iget-object v1, p0, Lfr/testudo/spacecorsair/activity/StationActivity;->lstBuyablesAdapter:Lfr/testudo/spacecorsair/activity/adapters/SpaceObjectAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 278
    iget-object v0, p0, Lfr/testudo/spacecorsair/activity/StationActivity;->lstBuyables:Landroid/widget/ListView;

    iget-object v1, p0, Lfr/testudo/spacecorsair/activity/StationActivity;->listviewScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 280
    invoke-static {}, Lfr/testudo/spacecorsair/game/StaticStation;->getInappStation()Lfr/testudo/spacecorsair/business/world/station/Station;

    move-result-object v0

    iget-object v0, v0, Lfr/testudo/spacecorsair/business/world/station/Station;->inventory:Lfr/testudo/spacecorsair/business/player/Inventory;

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/business/player/Inventory;->getContentAsList()Ljava/util/List;

    move-result-object v0

    .line 281
    new-instance v1, Lfr/testudo/spacecorsair/activity/adapters/SpaceObjectAdapter;

    iget-object v2, p0, Lfr/testudo/spacecorsair/activity/StationActivity;->StationItemClickListener:Lfr/testudo/spacecorsair/activity/viewgroup/SpaceObjectListener;

    sget-object v3, Lfr/testudo/spacecorsair/activity/adapters/SpaceObjectAdapter$ItemContext;->BUY:Lfr/testudo/spacecorsair/activity/adapters/SpaceObjectAdapter$ItemContext;

    invoke-direct {v1, p0, v0, v2, v3}, Lfr/testudo/spacecorsair/activity/adapters/SpaceObjectAdapter;-><init>(Landroid/app/Activity;Ljava/util/List;Lfr/testudo/spacecorsair/activity/viewgroup/SpaceObjectListener;Lfr/testudo/spacecorsair/activity/adapters/SpaceObjectAdapter$ItemContext;)V

    iput-object v1, p0, Lfr/testudo/spacecorsair/activity/StationActivity;->lstStoreAdapter:Lfr/testudo/spacecorsair/activity/adapters/SpaceObjectAdapter;

    .line 282
    iget-object v0, p0, Lfr/testudo/spacecorsair/activity/StationActivity;->lstStore:Landroid/widget/ListView;

    iget-object v1, p0, Lfr/testudo/spacecorsair/activity/StationActivity;->lstStoreAdapter:Lfr/testudo/spacecorsair/activity/adapters/SpaceObjectAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 283
    iget-object v0, p0, Lfr/testudo/spacecorsair/activity/StationActivity;->lstStore:Landroid/widget/ListView;

    iget-object v1, p0, Lfr/testudo/spacecorsair/activity/StationActivity;->listviewScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 285
    iget-boolean v0, p0, Lfr/testudo/spacecorsair/activity/StationActivity;->restoreListScrool:Z

    if-eqz v0, :cond_7f

    .line 286
    iget-object v0, p0, Lfr/testudo/spacecorsair/activity/StationActivity;->lstSellables:Landroid/widget/ListView;

    iget v1, p0, Lfr/testudo/spacecorsair/activity/StationActivity;->indexSellables:I

    iget v2, p0, Lfr/testudo/spacecorsair/activity/StationActivity;->topSellables:I

    invoke-virtual {v0, v1, v2}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    .line 287
    iget-object v0, p0, Lfr/testudo/spacecorsair/activity/StationActivity;->lstBuyables:Landroid/widget/ListView;

    iget v1, p0, Lfr/testudo/spacecorsair/activity/StationActivity;->indexBuyables:I

    iget v2, p0, Lfr/testudo/spacecorsair/activity/StationActivity;->topBuyables:I

    invoke-virtual {v0, v1, v2}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    .line 288
    iget-object v0, p0, Lfr/testudo/spacecorsair/activity/StationActivity;->lstStore:Landroid/widget/ListView;

    iget v1, p0, Lfr/testudo/spacecorsair/activity/StationActivity;->indexStore:I

    iget v2, p0, Lfr/testudo/spacecorsair/activity/StationActivity;->topStore:I

    invoke-virtual {v0, v1, v2}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    .line 290
    const/4 v0, 0x0

    iput-boolean v0, p0, Lfr/testudo/spacecorsair/activity/StationActivity;->restoreListScrool:Z

    .line 293
    :cond_7f
    return-void
.end method


# virtual methods
.method public bindUI()V
    .registers 3

    .prologue
    .line 195
    iput-object p0, p0, Lfr/testudo/spacecorsair/activity/StationActivity;->context:Landroid/content/Context;

    .line 197
    invoke-direct {p0}, Lfr/testudo/spacecorsair/activity/StationActivity;->initCurrentStation()V

    .line 199
    invoke-virtual {p0}, Lfr/testudo/spacecorsair/activity/StationActivity;->updateTexts()V

    .line 200
    invoke-direct {p0}, Lfr/testudo/spacecorsair/activity/StationActivity;->updateListviews()V

    .line 202
    iget-object v0, p0, Lfr/testudo/spacecorsair/activity/StationActivity;->currentStationAction:Lfr/testudo/spacecorsair/activity/StationActivity$StationAction;

    sget-object v1, Lfr/testudo/spacecorsair/activity/StationActivity$StationAction;->BUY:Lfr/testudo/spacecorsair/activity/StationActivity$StationAction;

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/activity/StationActivity$StationAction;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 203
    invoke-virtual {p0}, Lfr/testudo/spacecorsair/activity/StationActivity;->showBuyables()V

    .line 207
    :cond_18
    :goto_18
    return-void

    .line 204
    :cond_19
    iget-object v0, p0, Lfr/testudo/spacecorsair/activity/StationActivity;->currentStationAction:Lfr/testudo/spacecorsair/activity/StationActivity$StationAction;

    sget-object v1, Lfr/testudo/spacecorsair/activity/StationActivity$StationAction;->SELL:Lfr/testudo/spacecorsair/activity/StationActivity$StationAction;

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/activity/StationActivity$StationAction;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 205
    invoke-virtual {p0}, Lfr/testudo/spacecorsair/activity/StationActivity;->showSellables()V

    goto :goto_18
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 157
    invoke-super {p0, p1}, Lfr/testudo/spacecorsair/activity/CommonActivity;->onCreate(Landroid/os/Bundle;)V

    .line 159
    iput-boolean v0, p0, Lfr/testudo/spacecorsair/activity/StationActivity;->isInappStation:Z

    .line 160
    iput-boolean v0, p0, Lfr/testudo/spacecorsair/activity/StationActivity;->isMobileStation:Z

    .line 161
    invoke-virtual {p0}, Lfr/testudo/spacecorsair/activity/StationActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_32

    .line 162
    invoke-virtual {p0}, Lfr/testudo/spacecorsair/activity/StationActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "inapp"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lfr/testudo/spacecorsair/activity/StationActivity;->isInappStation:Z

    .line 163
    invoke-virtual {p0}, Lfr/testudo/spacecorsair/activity/StationActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "mobile"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lfr/testudo/spacecorsair/activity/StationActivity;->isMobileStation:Z

    .line 165
    :cond_32
    return-void
.end method

.method protected onResume()V
    .registers 1

    .prologue
    .line 437
    invoke-super {p0}, Lfr/testudo/spacecorsair/activity/CommonActivity;->onResume()V

    .line 438
    invoke-virtual {p0}, Lfr/testudo/spacecorsair/activity/StationActivity;->bindUI()V

    .line 439
    return-void
.end method

.method public onStart()V
    .registers 1

    .prologue
    .line 425
    invoke-super {p0}, Lfr/testudo/spacecorsair/activity/CommonActivity;->onStart()V

    .line 427
    return-void
.end method

.method public onStop()V
    .registers 1

    .prologue
    .line 431
    invoke-super {p0}, Lfr/testudo/spacecorsair/activity/CommonActivity;->onStop()V

    .line 433
    return-void
.end method

.method public removeAdd()V
    .registers 1

    .prologue
    .line 190
    invoke-static {p0}, Lfr/testudo/spacecorsair/business/Util;->removeAddIfNecessary(Landroid/app/Activity;)V

    .line 191
    return-void
.end method

.method public showBuyables()V
    .registers 5

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 227
    sget-object v0, Lfr/testudo/spacecorsair/activity/StationActivity$StationAction;->BUY:Lfr/testudo/spacecorsair/activity/StationActivity$StationAction;

    iput-object v0, p0, Lfr/testudo/spacecorsair/activity/StationActivity;->currentStationAction:Lfr/testudo/spacecorsair/activity/StationActivity$StationAction;

    .line 228
    iget-object v0, p0, Lfr/testudo/spacecorsair/activity/StationActivity;->txtBuyables:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 229
    iget-object v0, p0, Lfr/testudo/spacecorsair/activity/StationActivity;->txtSellables:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setSelected(Z)V

    .line 230
    iget-object v0, p0, Lfr/testudo/spacecorsair/activity/StationActivity;->lstSellables:Landroid/widget/ListView;

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setVisibility(I)V

    .line 231
    iget-object v0, p0, Lfr/testudo/spacecorsair/activity/StationActivity;->lstStore:Landroid/widget/ListView;

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setVisibility(I)V

    .line 232
    iget-object v0, p0, Lfr/testudo/spacecorsair/activity/StationActivity;->lstBuyables:Landroid/widget/ListView;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setVisibility(I)V

    .line 233
    return-void
.end method

.method public showInAppCredits()V
    .registers 3

    .prologue
    .line 211
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lfr/testudo/spacecorsair/activity/BuyInapp_;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 212
    invoke-virtual {p0, v0}, Lfr/testudo/spacecorsair/activity/StationActivity;->startActivity(Landroid/content/Intent;)V

    .line 213
    return-void
.end method

.method public showSellables()V
    .registers 5

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 217
    sget-object v0, Lfr/testudo/spacecorsair/activity/StationActivity$StationAction;->SELL:Lfr/testudo/spacecorsair/activity/StationActivity$StationAction;

    iput-object v0, p0, Lfr/testudo/spacecorsair/activity/StationActivity;->currentStationAction:Lfr/testudo/spacecorsair/activity/StationActivity$StationAction;

    .line 218
    iget-object v0, p0, Lfr/testudo/spacecorsair/activity/StationActivity;->txtSellables:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 219
    iget-object v0, p0, Lfr/testudo/spacecorsair/activity/StationActivity;->txtBuyables:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setSelected(Z)V

    .line 220
    iget-object v0, p0, Lfr/testudo/spacecorsair/activity/StationActivity;->lstBuyables:Landroid/widget/ListView;

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setVisibility(I)V

    .line 221
    iget-object v0, p0, Lfr/testudo/spacecorsair/activity/StationActivity;->lstStore:Landroid/widget/ListView;

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setVisibility(I)V

    .line 222
    iget-object v0, p0, Lfr/testudo/spacecorsair/activity/StationActivity;->lstSellables:Landroid/widget/ListView;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setVisibility(I)V

    .line 223
    return-void
.end method

.method public showStore()V
    .registers 5

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 237
    sget-object v0, Lfr/testudo/spacecorsair/activity/StationActivity$StationAction;->STORE:Lfr/testudo/spacecorsair/activity/StationActivity$StationAction;

    iput-object v0, p0, Lfr/testudo/spacecorsair/activity/StationActivity;->currentStationAction:Lfr/testudo/spacecorsair/activity/StationActivity$StationAction;

    .line 238
    iget-object v0, p0, Lfr/testudo/spacecorsair/activity/StationActivity;->txtBuyables:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 239
    iget-object v0, p0, Lfr/testudo/spacecorsair/activity/StationActivity;->txtSellables:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setSelected(Z)V

    .line 240
    iget-object v0, p0, Lfr/testudo/spacecorsair/activity/StationActivity;->lstSellables:Landroid/widget/ListView;

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setVisibility(I)V

    .line 241
    iget-object v0, p0, Lfr/testudo/spacecorsair/activity/StationActivity;->lstBuyables:Landroid/widget/ListView;

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setVisibility(I)V

    .line 242
    iget-object v0, p0, Lfr/testudo/spacecorsair/activity/StationActivity;->lstStore:Landroid/widget/ListView;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setVisibility(I)V

    .line 243
    return-void
.end method

.method public updateTexts()V
    .registers 7

    .prologue
    .line 246
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/Game;->playerCurrentShipInventory:Lfr/testudo/spacecorsair/business/player/Inventory;

    .line 248
    iget-object v1, p0, Lfr/testudo/spacecorsair/activity/StationActivity;->txtStationName:Landroid/widget/TextView;

    iget-object v2, p0, Lfr/testudo/spacecorsair/activity/StationActivity;->currentStation:Lfr/testudo/spacecorsair/business/world/station/Station;

    iget-object v2, v2, Lfr/testudo/spacecorsair/business/world/station/Station;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 249
    iget-object v1, p0, Lfr/testudo/spacecorsair/activity/StationActivity;->txtCredits:Landroid/widget/TextView;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-static {v2}, Ljava/text/NumberFormat;->getNumberInstance(Ljava/util/Locale;)Ljava/text/NumberFormat;

    move-result-object v2

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/business/player/Inventory;->getCredit()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 250
    iget-object v1, p0, Lfr/testudo/spacecorsair/activity/StationActivity;->txtCreditsInApp:Landroid/widget/TextView;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-static {v2}, Ljava/text/NumberFormat;->getNumberInstance(Ljava/util/Locale;)Ljava/text/NumberFormat;

    move-result-object v2

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/business/player/Inventory;->getCreditInApp()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 251
    iget-object v1, p0, Lfr/testudo/spacecorsair/activity/StationActivity;->txtSoute:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/business/player/Inventory;->getTotalWeight()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " / "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/business/player/Inventory;->getCapacityInTon()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 252
    return-void
.end method
