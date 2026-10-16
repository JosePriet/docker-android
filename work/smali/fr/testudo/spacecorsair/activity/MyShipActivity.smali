.class public Lfr/testudo/spacecorsair/activity/MyShipActivity;
.super Lfr/testudo/spacecorsair/activity/CommonActivity;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lfr/testudo/spacecorsair/activity/MyShipActivity$11;,
        Lfr/testudo/spacecorsair/activity/MyShipActivity$ShipAction;,
        Lfr/testudo/spacecorsair/activity/MyShipActivity$ShipItemAction;
    }
.end annotation


# instance fields
.field buyInappListener:Lfr/testudo/spacecorsair/activity/viewgroup/ItemQuantityPickListener;

.field protected currentShipAction:Lfr/testudo/spacecorsair/activity/MyShipActivity$ShipAction;

.field protected currentShipItemAction:Lfr/testudo/spacecorsair/activity/MyShipActivity$ShipItemAction;

.field protected imgBooster:Landroid/widget/ImageView;

.field protected imgHyperdrive:Landroid/widget/ImageView;

.field protected imgLaser:Landroid/widget/ImageView;

.field protected imgMissile:Landroid/widget/ImageView;

.field protected imgShield:Landroid/widget/ImageView;

.field protected indexInventory:I

.field protected indexStore:I

.field protected inventoryAdapter:Lfr/testudo/spacecorsair/activity/adapters/SpaceObjectAdapter;

.field protected layBooster:Landroid/view/ViewGroup;

.field protected layButtonListviews:Landroid/view/ViewGroup;

.field protected layEquiped:Landroid/view/ViewGroup;

.field protected layHyperdrive:Landroid/view/ViewGroup;

.field protected layLaser:Landroid/view/ViewGroup;

.field protected layListviews:Landroid/view/ViewGroup;

.field protected layMissile:Landroid/view/ViewGroup;

.field protected layShield:Landroid/view/ViewGroup;

.field protected layState:Landroid/view/ViewGroup;

.field private listviewScrollListener:Landroid/widget/AbsListView$OnScrollListener;

.field protected lstInventory:Landroid/widget/ListView;

.field protected lstStore:Landroid/widget/ListView;

.field protected pgbLife:Landroid/widget/ProgressBar;

.field protected pgbShield:Landroid/widget/ProgressBar;

.field protected pgbXp:Landroid/widget/ProgressBar;

.field private pickDialog:Landroid/app/Dialog;

.field pickListener:Lfr/testudo/spacecorsair/activity/viewgroup/ItemQuantityPickListener;

.field protected restoreListScroll:Z

.field private spaceObjectListener:Lfr/testudo/spacecorsair/activity/viewgroup/SpaceObjectListener;

.field protected storeAdapter:Lfr/testudo/spacecorsair/activity/adapters/SpaceObjectAdapter;

.field protected textCurrentShipName:Landroid/widget/TextView;

.field protected topInventory:I

.field protected topStore:I

.field protected txtCredits:Landroid/widget/TextView;

.field protected txtCreditsInApp:Landroid/widget/TextView;

.field protected txtInventory:Landroid/widget/TextView;

.field protected txtItemType:Landroid/widget/TextView;

.field protected txtLaserDps:Landroid/widget/TextView;

.field protected txtLevel:Landroid/widget/TextView;

.field protected txtMissileDamage:Landroid/widget/TextView;

.field protected txtObjectName:Landroid/widget/TextView;

.field protected txtShieldCapacity:Landroid/widget/TextView;

.field protected txtSoute:Landroid/widget/TextView;

.field protected txtStore:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 51
    invoke-direct {p0}, Lfr/testudo/spacecorsair/activity/CommonActivity;-><init>()V

    .line 54
    sget-object v0, Lfr/testudo/spacecorsair/activity/MyShipActivity$ShipItemAction;->SHIELD:Lfr/testudo/spacecorsair/activity/MyShipActivity$ShipItemAction;

    iput-object v0, p0, Lfr/testudo/spacecorsair/activity/MyShipActivity;->currentShipItemAction:Lfr/testudo/spacecorsair/activity/MyShipActivity$ShipItemAction;

    .line 56
    sget-object v0, Lfr/testudo/spacecorsair/activity/MyShipActivity$ShipAction;->INVENTORY:Lfr/testudo/spacecorsair/activity/MyShipActivity$ShipAction;

    iput-object v0, p0, Lfr/testudo/spacecorsair/activity/MyShipActivity;->currentShipAction:Lfr/testudo/spacecorsair/activity/MyShipActivity$ShipAction;

    .line 79
    iput v1, p0, Lfr/testudo/spacecorsair/activity/MyShipActivity;->topInventory:I

    .line 81
    iput v1, p0, Lfr/testudo/spacecorsair/activity/MyShipActivity;->indexInventory:I

    .line 83
    iput v1, p0, Lfr/testudo/spacecorsair/activity/MyShipActivity;->topStore:I

    .line 85
    iput v1, p0, Lfr/testudo/spacecorsair/activity/MyShipActivity;->indexStore:I

    .line 87
    iput-boolean v1, p0, Lfr/testudo/spacecorsair/activity/MyShipActivity;->restoreListScroll:Z

    .line 93
    new-instance v0, Lfr/testudo/spacecorsair/activity/MyShipActivity$1;

    invoke-direct {v0, p0}, Lfr/testudo/spacecorsair/activity/MyShipActivity$1;-><init>(Lfr/testudo/spacecorsair/activity/MyShipActivity;)V

    iput-object v0, p0, Lfr/testudo/spacecorsair/activity/MyShipActivity;->pickListener:Lfr/testudo/spacecorsair/activity/viewgroup/ItemQuantityPickListener;

    .line 122
    new-instance v0, Lfr/testudo/spacecorsair/activity/MyShipActivity$2;

    invoke-direct {v0, p0}, Lfr/testudo/spacecorsair/activity/MyShipActivity$2;-><init>(Lfr/testudo/spacecorsair/activity/MyShipActivity;)V

    iput-object v0, p0, Lfr/testudo/spacecorsair/activity/MyShipActivity;->buyInappListener:Lfr/testudo/spacecorsair/activity/viewgroup/ItemQuantityPickListener;

    .line 153
    new-instance v0, Lfr/testudo/spacecorsair/activity/MyShipActivity$3;

    invoke-direct {v0, p0}, Lfr/testudo/spacecorsair/activity/MyShipActivity$3;-><init>(Lfr/testudo/spacecorsair/activity/MyShipActivity;)V

    iput-object v0, p0, Lfr/testudo/spacecorsair/activity/MyShipActivity;->spaceObjectListener:Lfr/testudo/spacecorsair/activity/viewgroup/SpaceObjectListener;

    .line 191
    new-instance v0, Lfr/testudo/spacecorsair/activity/MyShipActivity$4;

    invoke-direct {v0, p0}, Lfr/testudo/spacecorsair/activity/MyShipActivity$4;-><init>(Lfr/testudo/spacecorsair/activity/MyShipActivity;)V

    iput-object v0, p0, Lfr/testudo/spacecorsair/activity/MyShipActivity;->listviewScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    .line 666
    return-void
.end method

.method static synthetic access$000(Lfr/testudo/spacecorsair/activity/MyShipActivity;)Landroid/app/Dialog;
    .registers 2

    .prologue
    .line 51
    iget-object v0, p0, Lfr/testudo/spacecorsair/activity/MyShipActivity;->pickDialog:Landroid/app/Dialog;

    return-object v0
.end method

.method static synthetic access$002(Lfr/testudo/spacecorsair/activity/MyShipActivity;Landroid/app/Dialog;)Landroid/app/Dialog;
    .registers 2

    .prologue
    .line 51
    iput-object p1, p0, Lfr/testudo/spacecorsair/activity/MyShipActivity;->pickDialog:Landroid/app/Dialog;

    return-object p1
.end method

.method static synthetic access$100(Lfr/testudo/spacecorsair/activity/MyShipActivity;Lfr/testudo/spacecorsair/business/loot/SpaceObject;IILfr/testudo/spacecorsair/activity/viewgroup/ItemQuantityPickListener;Lfr/testudo/spacecorsair/activity/adapters/SpaceObjectAdapter$ItemContext;)V
    .registers 6

    .prologue
    .line 51
    invoke-direct/range {p0 .. p5}, Lfr/testudo/spacecorsair/activity/MyShipActivity;->showDeleteDialog(Lfr/testudo/spacecorsair/business/loot/SpaceObject;IILfr/testudo/spacecorsair/activity/viewgroup/ItemQuantityPickListener;Lfr/testudo/spacecorsair/activity/adapters/SpaceObjectAdapter$ItemContext;)V

    return-void
.end method

.method static synthetic access$200(Lfr/testudo/spacecorsair/activity/MyShipActivity;Lfr/testudo/spacecorsair/business/loot/SpaceObject;IILfr/testudo/spacecorsair/activity/viewgroup/ItemQuantityPickListener;Lfr/testudo/spacecorsair/activity/adapters/SpaceObjectAdapter$ItemContext;)V
    .registers 6

    .prologue
    .line 51
    invoke-direct/range {p0 .. p5}, Lfr/testudo/spacecorsair/activity/MyShipActivity;->showTransactionDialog(Lfr/testudo/spacecorsair/business/loot/SpaceObject;IILfr/testudo/spacecorsair/activity/viewgroup/ItemQuantityPickListener;Lfr/testudo/spacecorsair/activity/adapters/SpaceObjectAdapter$ItemContext;)V

    return-void
.end method

.method static synthetic access$300(Lfr/testudo/spacecorsair/activity/MyShipActivity;)V
    .registers 1

    .prologue
    .line 51
    invoke-direct {p0}, Lfr/testudo/spacecorsair/activity/MyShipActivity;->saveListviewScroll()V

    return-void
.end method

.method private resetShipItemAction()V
    .registers 4

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 584
    iget-object v0, p0, Lfr/testudo/spacecorsair/activity/MyShipActivity;->layShield:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 585
    iget-object v0, p0, Lfr/testudo/spacecorsair/activity/MyShipActivity;->imgShield:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    .line 586
    iget-object v0, p0, Lfr/testudo/spacecorsair/activity/MyShipActivity;->layLaser:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 587
    iget-object v0, p0, Lfr/testudo/spacecorsair/activity/MyShipActivity;->imgLaser:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    .line 588
    iget-object v0, p0, Lfr/testudo/spacecorsair/activity/MyShipActivity;->layMissile:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 589
    iget-object v0, p0, Lfr/testudo/spacecorsair/activity/MyShipActivity;->imgMissile:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    .line 590
    iget-object v0, p0, Lfr/testudo/spacecorsair/activity/MyShipActivity;->layBooster:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 591
    iget-object v0, p0, Lfr/testudo/spacecorsair/activity/MyShipActivity;->imgBooster:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    .line 592
    iget-object v0, p0, Lfr/testudo/spacecorsair/activity/MyShipActivity;->layHyperdrive:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 593
    iget-object v0, p0, Lfr/testudo/spacecorsair/activity/MyShipActivity;->imgHyperdrive:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    .line 594
    return-void
.end method

.method private saveListviewScroll()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 612
    iget-object v0, p0, Lfr/testudo/spacecorsair/activity/MyShipActivity;->lstInventory:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v0

    iput v0, p0, Lfr/testudo/spacecorsair/activity/MyShipActivity;->indexInventory:I

    .line 613
    iget-object v0, p0, Lfr/testudo/spacecorsair/activity/MyShipActivity;->lstInventory:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 614
    if-nez v0, :cond_2a

    move v0, v1

    :goto_12
    iput v0, p0, Lfr/testudo/spacecorsair/activity/MyShipActivity;->topInventory:I

    .line 616
    iget-object v0, p0, Lfr/testudo/spacecorsair/activity/MyShipActivity;->lstStore:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v0

    iput v0, p0, Lfr/testudo/spacecorsair/activity/MyShipActivity;->indexStore:I

    .line 617
    iget-object v0, p0, Lfr/testudo/spacecorsair/activity/MyShipActivity;->lstStore:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 618
    if-nez v0, :cond_2f

    :goto_24
    iput v1, p0, Lfr/testudo/spacecorsair/activity/MyShipActivity;->topStore:I

    .line 620
    const/4 v0, 0x1

    iput-boolean v0, p0, Lfr/testudo/spacecorsair/activity/MyShipActivity;->restoreListScroll:Z

    .line 621
    return-void

    .line 614
    :cond_2a
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    goto :goto_12

    .line 618
    :cond_2f
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v1

    goto :goto_24
.end method

.method private showDeleteDialog(Lfr/testudo/spacecorsair/business/loot/SpaceObject;IILfr/testudo/spacecorsair/activity/viewgroup/ItemQuantityPickListener;Lfr/testudo/spacecorsair/activity/adapters/SpaceObjectAdapter$ItemContext;)V
    .registers 14

    .prologue
    .line 351
    new-instance v0, Landroid/app/Dialog;

    invoke-direct {v0, p0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lfr/testudo/spacecorsair/activity/MyShipActivity;->pickDialog:Landroid/app/Dialog;

    .line 353
    iget-object v0, p0, Lfr/testudo/spacecorsair/activity/MyShipActivity;->pickDialog:Landroid/app/Dialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    .line 354
    iget-object v0, p0, Lfr/testudo/spacecorsair/activity/MyShipActivity;->pickDialog:Landroid/app/Dialog;

    const v1, 0x7f03000c

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setContentView(I)V

    .line 355
    iget-object v0, p0, Lfr/testudo/spacecorsair/activity/MyShipActivity;->pickDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 357
    iget-object v0, p0, Lfr/testudo/spacecorsair/activity/MyShipActivity;->pickDialog:Landroid/app/Dialog;

    const v1, 0x7f0a0046

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 358
    invoke-virtual {p1}, Lfr/testudo/spacecorsair/business/loot/SpaceObject;->getSpaceObjectType()Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    move-result-object v1

    invoke-virtual {v1}, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->getLocalizedLabel()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 360
    iget-object v0, p0, Lfr/testudo/spacecorsair/activity/MyShipActivity;->pickDialog:Landroid/app/Dialog;

    const v1, 0x7f0a0087

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    .line 361
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

    .line 363
    iget-object v0, p0, Lfr/testudo/spacecorsair/activity/MyShipActivity;->pickDialog:Landroid/app/Dialog;

    const v1, 0x7f0a0088

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    .line 364
    invoke-virtual {v0, p2}, Landroid/widget/SeekBar;->setMax(I)V

    .line 367
    invoke-virtual {v0, p3}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 368
    new-instance v1, Lfr/testudo/spacecorsair/activity/MyShipActivity$8;

    invoke-direct {v1, p0, v2}, Lfr/testudo/spacecorsair/activity/MyShipActivity$8;-><init>(Lfr/testudo/spacecorsair/activity/MyShipActivity;Landroid/widget/EditText;)V

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 389
    iget-object v0, p0, Lfr/testudo/spacecorsair/activity/MyShipActivity;->pickDialog:Landroid/app/Dialog;

    const v1, 0x7f0a0036

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 390
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 391
    new-instance v1, Lfr/testudo/spacecorsair/activity/MyShipActivity$9;

    invoke-direct {v1, p0}, Lfr/testudo/spacecorsair/activity/MyShipActivity$9;-><init>(Lfr/testudo/spacecorsair/activity/MyShipActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 399
    iget-object v0, p0, Lfr/testudo/spacecorsair/activity/MyShipActivity;->pickDialog:Landroid/app/Dialog;

    const v1, 0x7f0a0089

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Landroid/widget/Button;

    .line 400
    const v0, 0x7f07023d

    invoke-virtual {v7, v0}, Landroid/widget/Button;->setText(I)V

    .line 401
    new-instance v0, Lfr/testudo/spacecorsair/activity/MyShipActivity$10;

    move-object v1, p0

    move v3, p2

    move-object v4, p4

    move-object v5, p1

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lfr/testudo/spacecorsair/activity/MyShipActivity$10;-><init>(Lfr/testudo/spacecorsair/activity/MyShipActivity;Landroid/widget/EditText;ILfr/testudo/spacecorsair/activity/viewgroup/ItemQuantityPickListener;Lfr/testudo/spacecorsair/business/loot/SpaceObject;Lfr/testudo/spacecorsair/activity/adapters/SpaceObjectAdapter$ItemContext;)V

    invoke-virtual {v7, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 418
    iget-object v0, p0, Lfr/testudo/spacecorsair/activity/MyShipActivity;->pickDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 420
    return-void
.end method

.method private showShipItemAction(Lfr/testudo/spacecorsair/activity/MyShipActivity$ShipItemAction;Landroid/view/ViewGroup;Landroid/view/View;)V
    .registers 5

    .prologue
    .line 577
    invoke-direct {p0}, Lfr/testudo/spacecorsair/activity/MyShipActivity;->resetShipItemAction()V

    .line 578
    iput-object p1, p0, Lfr/testudo/spacecorsair/activity/MyShipActivity;->currentShipItemAction:Lfr/testudo/spacecorsair/activity/MyShipActivity$ShipItemAction;

    .line 579
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 580
    const v0, 0x7f020046

    invoke-virtual {p3, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 581
    return-void
.end method

.method private showTransactionDialog(Lfr/testudo/spacecorsair/business/loot/SpaceObject;IILfr/testudo/spacecorsair/activity/viewgroup/ItemQuantityPickListener;Lfr/testudo/spacecorsair/activity/adapters/SpaceObjectAdapter$ItemContext;)V
    .registers 14

    .prologue
    const v6, 0x7f07024a

    const v5, 0x7f070249

    .line 208
    new-instance v0, Landroid/app/Dialog;

    invoke-direct {v0, p0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lfr/testudo/spacecorsair/activity/MyShipActivity;->pickDialog:Landroid/app/Dialog;

    .line 209
    iget-object v0, p0, Lfr/testudo/spacecorsair/activity/MyShipActivity;->pickDialog:Landroid/app/Dialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    .line 210
    iget-object v0, p0, Lfr/testudo/spacecorsair/activity/MyShipActivity;->pickDialog:Landroid/app/Dialog;

    const v1, 0x7f03000c

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setContentView(I)V

    .line 211
    iget-object v0, p0, Lfr/testudo/spacecorsair/activity/MyShipActivity;->pickDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 213
    iget-object v0, p0, Lfr/testudo/spacecorsair/activity/MyShipActivity;->pickDialog:Landroid/app/Dialog;

    const v1, 0x7f0a0046

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 214
    invoke-virtual {p1}, Lfr/testudo/spacecorsair/business/loot/SpaceObject;->getSpaceObjectType()Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    move-result-object v1

    invoke-virtual {v1}, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->getLocalizedLabel()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 216
    iget-object v0, p0, Lfr/testudo/spacecorsair/activity/MyShipActivity;->pickDialog:Landroid/app/Dialog;

    const v1, 0x7f0a0087

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    .line 217
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

    .line 219
    iget-object v0, p0, Lfr/testudo/spacecorsair/activity/MyShipActivity;->pickDialog:Landroid/app/Dialog;

    const v1, 0x7f0a0088

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    .line 220
    invoke-virtual {v0, p2}, Landroid/widget/SeekBar;->setMax(I)V

    .line 223
    iget-object v1, p0, Lfr/testudo/spacecorsair/activity/MyShipActivity;->pickDialog:Landroid/app/Dialog;

    const v3, 0x7f0a0089

    invoke-virtual {v1, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Landroid/widget/Button;

    .line 225
    iget-object v1, p0, Lfr/testudo/spacecorsair/activity/MyShipActivity;->pickDialog:Landroid/app/Dialog;

    const v3, 0x7f0a0086

    invoke-virtual {v1, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 226
    sget-object v3, Lfr/testudo/spacecorsair/activity/MyShipActivity$11;->$SwitchMap$fr$testudo$spacecorsair$activity$adapters$SpaceObjectAdapter$ItemContext:[I

    invoke-virtual {p5}, Lfr/testudo/spacecorsair/activity/adapters/SpaceObjectAdapter$ItemContext;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_e6

    .line 238
    :goto_91
    invoke-virtual {v0, p3}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 240
    new-instance v1, Lfr/testudo/spacecorsair/activity/MyShipActivity$5;

    invoke-direct {v1, p0, v2}, Lfr/testudo/spacecorsair/activity/MyShipActivity$5;-><init>(Lfr/testudo/spacecorsair/activity/MyShipActivity;Landroid/widget/EditText;)V

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 261
    iget-object v0, p0, Lfr/testudo/spacecorsair/activity/MyShipActivity;->pickDialog:Landroid/app/Dialog;

    const v1, 0x7f0a0036

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 262
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 263
    new-instance v1, Lfr/testudo/spacecorsair/activity/MyShipActivity$6;

    invoke-direct {v1, p0}, Lfr/testudo/spacecorsair/activity/MyShipActivity$6;-><init>(Lfr/testudo/spacecorsair/activity/MyShipActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 274
    new-instance v0, Lfr/testudo/spacecorsair/activity/MyShipActivity$7;

    move-object v1, p0

    move v3, p2

    move-object v4, p4

    move-object v5, p1

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lfr/testudo/spacecorsair/activity/MyShipActivity$7;-><init>(Lfr/testudo/spacecorsair/activity/MyShipActivity;Landroid/widget/EditText;ILfr/testudo/spacecorsair/activity/viewgroup/ItemQuantityPickListener;Lfr/testudo/spacecorsair/business/loot/SpaceObject;Lfr/testudo/spacecorsair/activity/adapters/SpaceObjectAdapter$ItemContext;)V

    invoke-virtual {v7, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 289
    iget-object v0, p0, Lfr/testudo/spacecorsair/activity/MyShipActivity;->pickDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 290
    return-void

    .line 228
    :pswitch_c7
    invoke-virtual {p0}, Lfr/testudo/spacecorsair/activity/MyShipActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 229
    invoke-virtual {v7, v6}, Landroid/widget/Button;->setText(I)V

    goto :goto_91

    .line 232
    :pswitch_d6
    invoke-virtual {p0}, Lfr/testudo/spacecorsair/activity/MyShipActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 233
    invoke-virtual {v7, v5}, Landroid/widget/Button;->setText(I)V

    goto :goto_91

    .line 226
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
    .line 423
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/Game;->playerCurrentShipInventory:Lfr/testudo/spacecorsair/business/player/Inventory;

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/business/player/Inventory;->getContentAsList()Ljava/util/List;

    move-result-object v0

    .line 424
    new-instance v1, Lfr/testudo/spacecorsair/activity/adapters/SpaceObjectAdapter;

    iget-object v2, p0, Lfr/testudo/spacecorsair/activity/MyShipActivity;->spaceObjectListener:Lfr/testudo/spacecorsair/activity/viewgroup/SpaceObjectListener;

    sget-object v3, Lfr/testudo/spacecorsair/activity/adapters/SpaceObjectAdapter$ItemContext;->INVENTORY:Lfr/testudo/spacecorsair/activity/adapters/SpaceObjectAdapter$ItemContext;

    invoke-direct {v1, p0, v0, v2, v3}, Lfr/testudo/spacecorsair/activity/adapters/SpaceObjectAdapter;-><init>(Landroid/app/Activity;Ljava/util/List;Lfr/testudo/spacecorsair/activity/viewgroup/SpaceObjectListener;Lfr/testudo/spacecorsair/activity/adapters/SpaceObjectAdapter$ItemContext;)V

    iput-object v1, p0, Lfr/testudo/spacecorsair/activity/MyShipActivity;->inventoryAdapter:Lfr/testudo/spacecorsair/activity/adapters/SpaceObjectAdapter;

    .line 425
    iget-object v0, p0, Lfr/testudo/spacecorsair/activity/MyShipActivity;->lstInventory:Landroid/widget/ListView;

    iget-object v1, p0, Lfr/testudo/spacecorsair/activity/MyShipActivity;->inventoryAdapter:Lfr/testudo/spacecorsair/activity/adapters/SpaceObjectAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 426
    iget-object v0, p0, Lfr/testudo/spacecorsair/activity/MyShipActivity;->lstInventory:Landroid/widget/ListView;

    iget-object v1, p0, Lfr/testudo/spacecorsair/activity/MyShipActivity;->listviewScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 428
    invoke-static {}, Lfr/testudo/spacecorsair/game/StaticStation;->getInappStation()Lfr/testudo/spacecorsair/business/world/station/Station;

    move-result-object v0

    iget-object v0, v0, Lfr/testudo/spacecorsair/business/world/station/Station;->inventory:Lfr/testudo/spacecorsair/business/player/Inventory;

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/business/player/Inventory;->getContentAsList()Ljava/util/List;

    move-result-object v0

    .line 429
    new-instance v1, Lfr/testudo/spacecorsair/activity/adapters/SpaceObjectAdapter;

    iget-object v2, p0, Lfr/testudo/spacecorsair/activity/MyShipActivity;->spaceObjectListener:Lfr/testudo/spacecorsair/activity/viewgroup/SpaceObjectListener;

    sget-object v3, Lfr/testudo/spacecorsair/activity/adapters/SpaceObjectAdapter$ItemContext;->BUY:Lfr/testudo/spacecorsair/activity/adapters/SpaceObjectAdapter$ItemContext;

    invoke-direct {v1, p0, v0, v2, v3}, Lfr/testudo/spacecorsair/activity/adapters/SpaceObjectAdapter;-><init>(Landroid/app/Activity;Ljava/util/List;Lfr/testudo/spacecorsair/activity/viewgroup/SpaceObjectListener;Lfr/testudo/spacecorsair/activity/adapters/SpaceObjectAdapter$ItemContext;)V

    iput-object v1, p0, Lfr/testudo/spacecorsair/activity/MyShipActivity;->storeAdapter:Lfr/testudo/spacecorsair/activity/adapters/SpaceObjectAdapter;

    .line 430
    iget-object v0, p0, Lfr/testudo/spacecorsair/activity/MyShipActivity;->lstStore:Landroid/widget/ListView;

    iget-object v1, p0, Lfr/testudo/spacecorsair/activity/MyShipActivity;->storeAdapter:Lfr/testudo/spacecorsair/activity/adapters/SpaceObjectAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 431
    iget-object v0, p0, Lfr/testudo/spacecorsair/activity/MyShipActivity;->lstStore:Landroid/widget/ListView;

    iget-object v1, p0, Lfr/testudo/spacecorsair/activity/MyShipActivity;->listviewScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 433
    iget-boolean v0, p0, Lfr/testudo/spacecorsair/activity/MyShipActivity;->restoreListScroll:Z

    if-eqz v0, :cond_5f

    .line 434
    iget-object v0, p0, Lfr/testudo/spacecorsair/activity/MyShipActivity;->lstInventory:Landroid/widget/ListView;

    iget v1, p0, Lfr/testudo/spacecorsair/activity/MyShipActivity;->indexInventory:I

    iget v2, p0, Lfr/testudo/spacecorsair/activity/MyShipActivity;->topInventory:I

    invoke-virtual {v0, v1, v2}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    .line 435
    iget-object v0, p0, Lfr/testudo/spacecorsair/activity/MyShipActivity;->lstStore:Landroid/widget/ListView;

    iget v1, p0, Lfr/testudo/spacecorsair/activity/MyShipActivity;->indexStore:I

    iget v2, p0, Lfr/testudo/spacecorsair/activity/MyShipActivity;->topStore:I

    invoke-virtual {v0, v1, v2}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    .line 436
    const/4 v0, 0x0

    iput-boolean v0, p0, Lfr/testudo/spacecorsair/activity/MyShipActivity;->restoreListScroll:Z

    .line 438
    :cond_5f
    return-void
.end method


# virtual methods
.method public closePopupListviews()V
    .registers 2

    .prologue
    .line 512
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lfr/testudo/spacecorsair/activity/MyShipActivity;->setListviewsVisibility(I)V

    .line 513
    return-void
.end method

.method public onBackPressed()V
    .registers 2

    .prologue
    .line 625
    iget-object v0, p0, Lfr/testudo/spacecorsair/activity/MyShipActivity;->layListviews:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    if-nez v0, :cond_e

    .line 626
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lfr/testudo/spacecorsair/activity/MyShipActivity;->setListviewsVisibility(I)V

    .line 630
    :goto_d
    return-void

    .line 628
    :cond_e
    invoke-super {p0}, Lfr/testudo/spacecorsair/activity/CommonActivity;->onBackPressed()V

    goto :goto_d
.end method

.method protected onPause()V
    .registers 2

    .prologue
    .line 657
    invoke-super {p0}, Lfr/testudo/spacecorsair/activity/CommonActivity;->onPause()V

    .line 658
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/Game;->playerCurrentShipInventory:Lfr/testudo/spacecorsair/business/player/Inventory;

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/business/player/Inventory;->markObjectsAsSeen()V

    .line 659
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->storageManager:Lfr/testudo/spacecorsair/storage/StorageManager;

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/storage/StorageManager;->saveInventory()V

    .line 660
    return-void
.end method

.method protected onResume()V
    .registers 1

    .prologue
    .line 651
    invoke-super {p0}, Lfr/testudo/spacecorsair/activity/CommonActivity;->onResume()V

    .line 652
    invoke-virtual {p0}, Lfr/testudo/spacecorsair/activity/MyShipActivity;->updateUI()V

    .line 653
    return-void
.end method

.method public onStart()V
    .registers 1

    .prologue
    .line 639
    invoke-super {p0}, Lfr/testudo/spacecorsair/activity/CommonActivity;->onStart()V

    .line 641
    return-void
.end method

.method public onStop()V
    .registers 1

    .prologue
    .line 645
    invoke-super {p0}, Lfr/testudo/spacecorsair/activity/CommonActivity;->onStop()V

    .line 647
    return-void
.end method

.method public openShipsActivity()V
    .registers 3

    .prologue
    .line 475
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lfr/testudo/spacecorsair/activity/ShipsActivity_;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 476
    invoke-virtual {p0, v0}, Lfr/testudo/spacecorsair/activity/MyShipActivity;->startActivity(Landroid/content/Intent;)V

    .line 478
    return-void
.end method

.method public removeAdd()V
    .registers 1

    .prologue
    .line 634
    invoke-static {p0}, Lfr/testudo/spacecorsair/business/Util;->removeAddIfNecessary(Landroid/app/Activity;)V

    .line 635
    return-void
.end method

.method public setListviewsVisibility(I)V
    .registers 5

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 597
    if-nez p1, :cond_1a

    .line 598
    iget-object v0, p0, Lfr/testudo/spacecorsair/activity/MyShipActivity;->layEquiped:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 599
    iget-object v0, p0, Lfr/testudo/spacecorsair/activity/MyShipActivity;->layState:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 600
    iget-object v0, p0, Lfr/testudo/spacecorsair/activity/MyShipActivity;->layButtonListviews:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 601
    iget-object v0, p0, Lfr/testudo/spacecorsair/activity/MyShipActivity;->layListviews:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 608
    :goto_19
    return-void

    .line 603
    :cond_1a
    iget-object v0, p0, Lfr/testudo/spacecorsair/activity/MyShipActivity;->layEquiped:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 604
    iget-object v0, p0, Lfr/testudo/spacecorsair/activity/MyShipActivity;->layState:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 605
    iget-object v0, p0, Lfr/testudo/spacecorsair/activity/MyShipActivity;->layButtonListviews:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 606
    iget-object v0, p0, Lfr/testudo/spacecorsair/activity/MyShipActivity;->layListviews:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_19
.end method

.method public showBooster()V
    .registers 4

    .prologue
    .line 556
    iget-object v0, p0, Lfr/testudo/spacecorsair/activity/MyShipActivity;->txtItemType:Landroid/widget/TextView;

    const v1, 0x7f07035d

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 558
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/Game;->playerInfo:Lfr/testudo/spacecorsair/business/player/PlayerInfo;

    iget-object v0, v0, Lfr/testudo/spacecorsair/business/player/PlayerInfo;->playerGear:Lfr/testudo/spacecorsair/business/player/PlayerGear;

    iget-object v0, v0, Lfr/testudo/spacecorsair/business/player/PlayerGear;->booster:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    .line 559
    iget-object v1, p0, Lfr/testudo/spacecorsair/activity/MyShipActivity;->txtObjectName:Landroid/widget/TextView;

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->getLocalizedLabel()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 560
    iget-object v1, p0, Lfr/testudo/spacecorsair/activity/MyShipActivity;->txtObjectName:Landroid/widget/TextView;

    invoke-virtual {p0}, Lfr/testudo/spacecorsair/activity/MyShipActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->getRarety()Lfr/testudo/spacecorsair/business/loot/LootRarety;

    move-result-object v0

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/business/loot/LootRarety;->getColor()I

    move-result v0

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 562
    sget-object v0, Lfr/testudo/spacecorsair/activity/MyShipActivity$ShipItemAction;->BOOSTER:Lfr/testudo/spacecorsair/activity/MyShipActivity$ShipItemAction;

    iget-object v1, p0, Lfr/testudo/spacecorsair/activity/MyShipActivity;->layBooster:Landroid/view/ViewGroup;

    iget-object v2, p0, Lfr/testudo/spacecorsair/activity/MyShipActivity;->imgBooster:Landroid/widget/ImageView;

    invoke-direct {p0, v0, v1, v2}, Lfr/testudo/spacecorsair/activity/MyShipActivity;->showShipItemAction(Lfr/testudo/spacecorsair/activity/MyShipActivity$ShipItemAction;Landroid/view/ViewGroup;Landroid/view/View;)V

    .line 563
    return-void
.end method

.method public showEquipedDetails()V
    .registers 4

    .prologue
    .line 448
    const/4 v0, 0x0

    .line 450
    sget-object v1, Lfr/testudo/spacecorsair/activity/MyShipActivity$11;->$SwitchMap$fr$testudo$spacecorsair$activity$MyShipActivity$ShipItemAction:[I

    iget-object v2, p0, Lfr/testudo/spacecorsair/activity/MyShipActivity;->currentShipItemAction:Lfr/testudo/spacecorsair/activity/MyShipActivity$ShipItemAction;

    invoke-virtual {v2}, Lfr/testudo/spacecorsair/activity/MyShipActivity$ShipItemAction;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_50

    .line 468
    :goto_e
    iget-object v1, p0, Lfr/testudo/spacecorsair/activity/MyShipActivity;->context:Landroid/app/Activity;

    invoke-static {v1, v0}, Lfr/testudo/spacecorsair/activity/InventoryDetailActivity;->getInventoryDetailIntent(Landroid/content/Context;Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)Landroid/content/Intent;

    move-result-object v0

    .line 469
    invoke-virtual {p0, v0}, Lfr/testudo/spacecorsair/activity/MyShipActivity;->startActivity(Landroid/content/Intent;)V

    .line 470
    return-void

    .line 453
    :pswitch_18
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/Game;->playerInfo:Lfr/testudo/spacecorsair/business/player/PlayerInfo;

    iget-object v0, v0, Lfr/testudo/spacecorsair/business/player/PlayerInfo;->playerGear:Lfr/testudo/spacecorsair/business/player/PlayerGear;

    iget-object v0, v0, Lfr/testudo/spacecorsair/business/player/PlayerGear;->shield:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    goto :goto_e

    .line 456
    :pswitch_23
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/Game;->playerInfo:Lfr/testudo/spacecorsair/business/player/PlayerInfo;

    iget-object v0, v0, Lfr/testudo/spacecorsair/business/player/PlayerInfo;->playerGear:Lfr/testudo/spacecorsair/business/player/PlayerGear;

    iget-object v0, v0, Lfr/testudo/spacecorsair/business/player/PlayerGear;->laser:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    goto :goto_e

    .line 459
    :pswitch_2e
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/Game;->playerInfo:Lfr/testudo/spacecorsair/business/player/PlayerInfo;

    iget-object v0, v0, Lfr/testudo/spacecorsair/business/player/PlayerInfo;->playerGear:Lfr/testudo/spacecorsair/business/player/PlayerGear;

    iget-object v0, v0, Lfr/testudo/spacecorsair/business/player/PlayerGear;->missile:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    goto :goto_e

    .line 462
    :pswitch_39
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/Game;->playerInfo:Lfr/testudo/spacecorsair/business/player/PlayerInfo;

    iget-object v0, v0, Lfr/testudo/spacecorsair/business/player/PlayerInfo;->playerGear:Lfr/testudo/spacecorsair/business/player/PlayerGear;

    iget-object v0, v0, Lfr/testudo/spacecorsair/business/player/PlayerGear;->booster:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    goto :goto_e

    .line 465
    :pswitch_44
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/Game;->playerInfo:Lfr/testudo/spacecorsair/business/player/PlayerInfo;

    iget-object v0, v0, Lfr/testudo/spacecorsair/business/player/PlayerInfo;->playerGear:Lfr/testudo/spacecorsair/business/player/PlayerGear;

    iget-object v0, v0, Lfr/testudo/spacecorsair/business/player/PlayerGear;->hyperdriveEngine:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    goto :goto_e

    .line 450
    nop

    :pswitch_data_50
    .packed-switch 0x1
        :pswitch_18
        :pswitch_23
        :pswitch_2e
        :pswitch_39
        :pswitch_44
    .end packed-switch
.end method

.method public showHyperdrive()V
    .registers 4

    .prologue
    .line 567
    iget-object v0, p0, Lfr/testudo/spacecorsair/activity/MyShipActivity;->txtItemType:Landroid/widget/TextView;

    const v1, 0x7f070359

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 569
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/Game;->playerInfo:Lfr/testudo/spacecorsair/business/player/PlayerInfo;

    iget-object v0, v0, Lfr/testudo/spacecorsair/business/player/PlayerInfo;->playerGear:Lfr/testudo/spacecorsair/business/player/PlayerGear;

    iget-object v0, v0, Lfr/testudo/spacecorsair/business/player/PlayerGear;->hyperdriveEngine:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    .line 570
    iget-object v1, p0, Lfr/testudo/spacecorsair/activity/MyShipActivity;->txtObjectName:Landroid/widget/TextView;

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->getLocalizedLabel()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 571
    iget-object v1, p0, Lfr/testudo/spacecorsair/activity/MyShipActivity;->txtObjectName:Landroid/widget/TextView;

    invoke-virtual {p0}, Lfr/testudo/spacecorsair/activity/MyShipActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->getRarety()Lfr/testudo/spacecorsair/business/loot/LootRarety;

    move-result-object v0

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/business/loot/LootRarety;->getColor()I

    move-result v0

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 573
    sget-object v0, Lfr/testudo/spacecorsair/activity/MyShipActivity$ShipItemAction;->HYPERDRIVE:Lfr/testudo/spacecorsair/activity/MyShipActivity$ShipItemAction;

    iget-object v1, p0, Lfr/testudo/spacecorsair/activity/MyShipActivity;->layHyperdrive:Landroid/view/ViewGroup;

    iget-object v2, p0, Lfr/testudo/spacecorsair/activity/MyShipActivity;->imgHyperdrive:Landroid/widget/ImageView;

    invoke-direct {p0, v0, v1, v2}, Lfr/testudo/spacecorsair/activity/MyShipActivity;->showShipItemAction(Lfr/testudo/spacecorsair/activity/MyShipActivity$ShipItemAction;Landroid/view/ViewGroup;Landroid/view/View;)V

    .line 574
    return-void
.end method

.method public showInAppCredits()V
    .registers 3

    .prologue
    .line 442
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lfr/testudo/spacecorsair/activity/BuyInapp_;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 443
    invoke-virtual {p0, v0}, Lfr/testudo/spacecorsair/activity/MyShipActivity;->startActivity(Landroid/content/Intent;)V

    .line 444
    return-void
.end method

.method public showInventory()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 482
    sget-object v0, Lfr/testudo/spacecorsair/activity/MyShipActivity$ShipAction;->INVENTORY:Lfr/testudo/spacecorsair/activity/MyShipActivity$ShipAction;

    iput-object v0, p0, Lfr/testudo/spacecorsair/activity/MyShipActivity;->currentShipAction:Lfr/testudo/spacecorsair/activity/MyShipActivity$ShipAction;

    .line 483
    iget-object v0, p0, Lfr/testudo/spacecorsair/activity/MyShipActivity;->txtInventory:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 484
    iget-object v0, p0, Lfr/testudo/spacecorsair/activity/MyShipActivity;->txtStore:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setSelected(Z)V

    .line 485
    iget-object v0, p0, Lfr/testudo/spacecorsair/activity/MyShipActivity;->lstInventory:Landroid/widget/ListView;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setVisibility(I)V

    .line 486
    iget-object v0, p0, Lfr/testudo/spacecorsair/activity/MyShipActivity;->lstStore:Landroid/widget/ListView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    .line 487
    return-void
.end method

.method public showLaser()V
    .registers 5

    .prologue
    .line 530
    iget-object v0, p0, Lfr/testudo/spacecorsair/activity/MyShipActivity;->txtItemType:Landroid/widget/TextView;

    const v1, 0x7f070358

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 532
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/Game;->playerInfo:Lfr/testudo/spacecorsair/business/player/PlayerInfo;

    iget-object v0, v0, Lfr/testudo/spacecorsair/business/player/PlayerInfo;->playerGear:Lfr/testudo/spacecorsair/business/player/PlayerGear;

    iget-object v1, v0, Lfr/testudo/spacecorsair/business/player/PlayerGear;->laser:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    .line 533
    invoke-virtual {v1}, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->getGearSpec()Lfr/testudo/spacecorsair/business/loot/stuff/GearSpec;

    move-result-object v0

    check-cast v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

    .line 534
    iget-object v2, p0, Lfr/testudo/spacecorsair/activity/MyShipActivity;->txtObjectName:Landroid/widget/TextView;

    invoke-virtual {v1}, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->getLocalizedLabel()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 535
    iget-object v2, p0, Lfr/testudo/spacecorsair/activity/MyShipActivity;->txtObjectName:Landroid/widget/TextView;

    invoke-virtual {p0}, Lfr/testudo/spacecorsair/activity/MyShipActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v1}, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->getRarety()Lfr/testudo/spacecorsair/business/loot/LootRarety;

    move-result-object v1

    invoke-virtual {v1}, Lfr/testudo/spacecorsair/business/loot/LootRarety;->getColor()I

    move-result v1

    invoke-virtual {v3, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 536
    iget-object v1, p0, Lfr/testudo/spacecorsair/activity/MyShipActivity;->txtLaserDps:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;->getDps()F

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 538
    sget-object v0, Lfr/testudo/spacecorsair/activity/MyShipActivity$ShipItemAction;->LASER:Lfr/testudo/spacecorsair/activity/MyShipActivity$ShipItemAction;

    iget-object v1, p0, Lfr/testudo/spacecorsair/activity/MyShipActivity;->layLaser:Landroid/view/ViewGroup;

    iget-object v2, p0, Lfr/testudo/spacecorsair/activity/MyShipActivity;->imgLaser:Landroid/widget/ImageView;

    invoke-direct {p0, v0, v1, v2}, Lfr/testudo/spacecorsair/activity/MyShipActivity;->showShipItemAction(Lfr/testudo/spacecorsair/activity/MyShipActivity$ShipItemAction;Landroid/view/ViewGroup;Landroid/view/View;)V

    .line 539
    return-void
.end method

.method public showMissile()V
    .registers 5

    .prologue
    .line 543
    iget-object v0, p0, Lfr/testudo/spacecorsair/activity/MyShipActivity;->txtItemType:Landroid/widget/TextView;

    const v1, 0x7f0702a2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 545
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/Game;->playerInfo:Lfr/testudo/spacecorsair/business/player/PlayerInfo;

    iget-object v0, v0, Lfr/testudo/spacecorsair/business/player/PlayerInfo;->playerGear:Lfr/testudo/spacecorsair/business/player/PlayerGear;

    iget-object v1, v0, Lfr/testudo/spacecorsair/business/player/PlayerGear;->missile:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    .line 546
    invoke-virtual {v1}, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->getGearSpec()Lfr/testudo/spacecorsair/business/loot/stuff/GearSpec;

    move-result-object v0

    check-cast v0, Lfr/testudo/spacecorsair/business/loot/stuff/missile/MissileSpec;

    .line 547
    iget-object v2, p0, Lfr/testudo/spacecorsair/activity/MyShipActivity;->txtObjectName:Landroid/widget/TextView;

    invoke-virtual {v1}, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->getLocalizedLabel()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 548
    iget-object v2, p0, Lfr/testudo/spacecorsair/activity/MyShipActivity;->txtObjectName:Landroid/widget/TextView;

    invoke-virtual {p0}, Lfr/testudo/spacecorsair/activity/MyShipActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v1}, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->getRarety()Lfr/testudo/spacecorsair/business/loot/LootRarety;

    move-result-object v1

    invoke-virtual {v1}, Lfr/testudo/spacecorsair/business/loot/LootRarety;->getColor()I

    move-result v1

    invoke-virtual {v3, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 549
    iget-object v1, p0, Lfr/testudo/spacecorsair/activity/MyShipActivity;->txtMissileDamage:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, v0, Lfr/testudo/spacecorsair/business/loot/stuff/missile/MissileSpec;->damage:F

    float-to-int v3, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " + "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v0, v0, Lfr/testudo/spacecorsair/business/loot/stuff/missile/MissileSpec;->radiusDamage:F

    float-to-int v0, v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 551
    sget-object v0, Lfr/testudo/spacecorsair/activity/MyShipActivity$ShipItemAction;->MISSILE:Lfr/testudo/spacecorsair/activity/MyShipActivity$ShipItemAction;

    iget-object v1, p0, Lfr/testudo/spacecorsair/activity/MyShipActivity;->layMissile:Landroid/view/ViewGroup;

    iget-object v2, p0, Lfr/testudo/spacecorsair/activity/MyShipActivity;->imgMissile:Landroid/widget/ImageView;

    invoke-direct {p0, v0, v1, v2}, Lfr/testudo/spacecorsair/activity/MyShipActivity;->showShipItemAction(Lfr/testudo/spacecorsair/activity/MyShipActivity$ShipItemAction;Landroid/view/ViewGroup;Landroid/view/View;)V

    .line 552
    return-void
.end method

.method public showPopupInventory()V
    .registers 2

    .prologue
    .line 500
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lfr/testudo/spacecorsair/activity/MyShipActivity;->setListviewsVisibility(I)V

    .line 501
    invoke-virtual {p0}, Lfr/testudo/spacecorsair/activity/MyShipActivity;->showInventory()V

    .line 502
    return-void
.end method

.method public showPopupStore()V
    .registers 2

    .prologue
    .line 506
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lfr/testudo/spacecorsair/activity/MyShipActivity;->setListviewsVisibility(I)V

    .line 507
    invoke-virtual {p0}, Lfr/testudo/spacecorsair/activity/MyShipActivity;->showStore()V

    .line 508
    return-void
.end method

.method public showShield()V
    .registers 5

    .prologue
    .line 517
    iget-object v0, p0, Lfr/testudo/spacecorsair/activity/MyShipActivity;->txtItemType:Landroid/widget/TextView;

    const v1, 0x7f070356

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 519
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/Game;->playerInfo:Lfr/testudo/spacecorsair/business/player/PlayerInfo;

    iget-object v0, v0, Lfr/testudo/spacecorsair/business/player/PlayerInfo;->playerGear:Lfr/testudo/spacecorsair/business/player/PlayerGear;

    iget-object v0, v0, Lfr/testudo/spacecorsair/business/player/PlayerGear;->shield:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    .line 520
    iget-object v1, p0, Lfr/testudo/spacecorsair/activity/MyShipActivity;->txtObjectName:Landroid/widget/TextView;

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->getLocalizedLabel()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 521
    iget-object v1, p0, Lfr/testudo/spacecorsair/activity/MyShipActivity;->txtObjectName:Landroid/widget/TextView;

    invoke-virtual {p0}, Lfr/testudo/spacecorsair/activity/MyShipActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->getRarety()Lfr/testudo/spacecorsair/business/loot/LootRarety;

    move-result-object v3

    invoke-virtual {v3}, Lfr/testudo/spacecorsair/business/loot/LootRarety;->getColor()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 522
    invoke-virtual {v0}, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->getGearSpec()Lfr/testudo/spacecorsair/business/loot/stuff/GearSpec;

    move-result-object v0

    check-cast v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;

    .line 523
    iget-object v1, p0, Lfr/testudo/spacecorsair/activity/MyShipActivity;->txtShieldCapacity:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v0, v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;->capacity:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 525
    sget-object v0, Lfr/testudo/spacecorsair/activity/MyShipActivity$ShipItemAction;->SHIELD:Lfr/testudo/spacecorsair/activity/MyShipActivity$ShipItemAction;

    iget-object v1, p0, Lfr/testudo/spacecorsair/activity/MyShipActivity;->layShield:Landroid/view/ViewGroup;

    iget-object v2, p0, Lfr/testudo/spacecorsair/activity/MyShipActivity;->imgShield:Landroid/widget/ImageView;

    invoke-direct {p0, v0, v1, v2}, Lfr/testudo/spacecorsair/activity/MyShipActivity;->showShipItemAction(Lfr/testudo/spacecorsair/activity/MyShipActivity$ShipItemAction;Landroid/view/ViewGroup;Landroid/view/View;)V

    .line 526
    return-void
.end method

.method public showStore()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 491
    sget-object v0, Lfr/testudo/spacecorsair/activity/MyShipActivity$ShipAction;->STORE:Lfr/testudo/spacecorsair/activity/MyShipActivity$ShipAction;

    iput-object v0, p0, Lfr/testudo/spacecorsair/activity/MyShipActivity;->currentShipAction:Lfr/testudo/spacecorsair/activity/MyShipActivity$ShipAction;

    .line 492
    iget-object v0, p0, Lfr/testudo/spacecorsair/activity/MyShipActivity;->txtStore:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 493
    iget-object v0, p0, Lfr/testudo/spacecorsair/activity/MyShipActivity;->txtInventory:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setSelected(Z)V

    .line 494
    iget-object v0, p0, Lfr/testudo/spacecorsair/activity/MyShipActivity;->lstInventory:Landroid/widget/ListView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    .line 495
    iget-object v0, p0, Lfr/testudo/spacecorsair/activity/MyShipActivity;->lstStore:Landroid/widget/ListView;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setVisibility(I)V

    .line 496
    return-void
.end method

.method public updateUI()V
    .registers 9

    .prologue
    const-wide/high16 v6, 0x4059000000000000L    # 100.0

    const/16 v4, 0x64

    .line 294
    iput-object p0, p0, Lfr/testudo/spacecorsair/activity/MyShipActivity;->context:Landroid/app/Activity;

    .line 297
    iget-object v0, p0, Lfr/testudo/spacecorsair/activity/MyShipActivity;->txtLevel:Landroid/widget/TextView;

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

    .line 299
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/Game;->playerInfo:Lfr/testudo/spacecorsair/business/player/PlayerInfo;

    iget-wide v0, v0, Lfr/testudo/spacecorsair/business/player/PlayerInfo;->curXp:J

    long-to-double v0, v0

    sget-object v2, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v2, v2, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v2, v2, Lfr/testudo/spacecorsair/game/Game;->playerInfo:Lfr/testudo/spacecorsair/business/player/PlayerInfo;

    iget-wide v2, v2, Lfr/testudo/spacecorsair/business/player/PlayerInfo;->nextLevelXp:J

    long-to-double v2, v2

    div-double/2addr v0, v2

    mul-double/2addr v0, v6

    double-to-int v0, v0

    .line 300
    iget-object v1, p0, Lfr/testudo/spacecorsair/activity/MyShipActivity;->pgbXp:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v4}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 301
    iget-object v1, p0, Lfr/testudo/spacecorsair/activity/MyShipActivity;->pgbXp:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v4}, Landroid/widget/ProgressBar;->setSecondaryProgress(I)V

    .line 302
    iget-object v1, p0, Lfr/testudo/spacecorsair/activity/MyShipActivity;->pgbXp:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v0}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 304
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->playerShip:Lfr/testudo/spacecorsair/business/player/PlayerShip;

    iget v0, v0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->life:F

    float-to-double v0, v0

    sget-object v2, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v2, v2, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->playerShip:Lfr/testudo/spacecorsair/business/player/PlayerShip;

    iget v2, v2, Lfr/testudo/spacecorsair/business/player/PlayerShip;->maxLife:F

    float-to-double v2, v2

    div-double/2addr v0, v2

    mul-double/2addr v0, v6

    double-to-int v0, v0

    .line 305
    iget-object v1, p0, Lfr/testudo/spacecorsair/activity/MyShipActivity;->pgbLife:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v4}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 306
    iget-object v1, p0, Lfr/testudo/spacecorsair/activity/MyShipActivity;->pgbLife:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v4}, Landroid/widget/ProgressBar;->setSecondaryProgress(I)V

    .line 307
    iget-object v1, p0, Lfr/testudo/spacecorsair/activity/MyShipActivity;->pgbLife:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v0}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 309
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->playerShip:Lfr/testudo/spacecorsair/business/player/PlayerShip;

    iget-object v0, v0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->shield:Lfr/testudo/spacecorsair/business/player/Shield;

    iget v0, v0, Lfr/testudo/spacecorsair/business/player/Shield;->currentValue:F

    float-to-double v0, v0

    sget-object v2, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v2, v2, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->playerShip:Lfr/testudo/spacecorsair/business/player/PlayerShip;

    iget-object v2, v2, Lfr/testudo/spacecorsair/business/player/PlayerShip;->shield:Lfr/testudo/spacecorsair/business/player/Shield;

    iget v2, v2, Lfr/testudo/spacecorsair/business/player/Shield;->capacity:F

    float-to-double v2, v2

    div-double/2addr v0, v2

    mul-double/2addr v0, v6

    double-to-int v0, v0

    .line 310
    iget-object v1, p0, Lfr/testudo/spacecorsair/activity/MyShipActivity;->pgbShield:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v4}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 311
    iget-object v1, p0, Lfr/testudo/spacecorsair/activity/MyShipActivity;->pgbShield:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v4}, Landroid/widget/ProgressBar;->setSecondaryProgress(I)V

    .line 312
    iget-object v1, p0, Lfr/testudo/spacecorsair/activity/MyShipActivity;->pgbShield:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v0}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 314
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/Game;->playerCurrentShipInventory:Lfr/testudo/spacecorsair/business/player/Inventory;

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/business/player/Inventory;->getTotalWeight()I

    move-result v0

    .line 315
    sget-object v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v1, v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v1, v1, Lfr/testudo/spacecorsair/game/Game;->playerCurrentShipInventory:Lfr/testudo/spacecorsair/business/player/Inventory;

    invoke-virtual {v1}, Lfr/testudo/spacecorsair/business/player/Inventory;->getCapacityInTon()I

    move-result v1

    .line 316
    iget-object v2, p0, Lfr/testudo/spacecorsair/activity/MyShipActivity;->txtSoute:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " / "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 318
    iget-object v0, p0, Lfr/testudo/spacecorsair/activity/MyShipActivity;->txtCredits:Landroid/widget/TextView;

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

    .line 319
    iget-object v0, p0, Lfr/testudo/spacecorsair/activity/MyShipActivity;->txtCreditsInApp:Landroid/widget/TextView;

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

    .line 322
    iget-object v0, p0, Lfr/testudo/spacecorsair/activity/MyShipActivity;->textCurrentShipName:Landroid/widget/TextView;

    sget-object v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v1, v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v1, v1, Lfr/testudo/spacecorsair/game/Game;->playerInfo:Lfr/testudo/spacecorsair/business/player/PlayerInfo;

    iget-object v1, v1, Lfr/testudo/spacecorsair/business/player/PlayerInfo;->playerGear:Lfr/testudo/spacecorsair/business/player/PlayerGear;

    iget-object v1, v1, Lfr/testudo/spacecorsair/business/player/PlayerGear;->playerShip:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    invoke-virtual {v1}, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->getLocalizedLabel()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 323
    iget-object v0, p0, Lfr/testudo/spacecorsair/activity/MyShipActivity;->textCurrentShipName:Landroid/widget/TextView;

    invoke-virtual {p0}, Lfr/testudo/spacecorsair/activity/MyShipActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget-object v2, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v2, v2, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v2, v2, Lfr/testudo/spacecorsair/game/Game;->playerInfo:Lfr/testudo/spacecorsair/business/player/PlayerInfo;

    iget-object v2, v2, Lfr/testudo/spacecorsair/business/player/PlayerInfo;->playerGear:Lfr/testudo/spacecorsair/business/player/PlayerGear;

    iget-object v2, v2, Lfr/testudo/spacecorsair/business/player/PlayerGear;->playerShip:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    invoke-virtual {v2}, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->getRarety()Lfr/testudo/spacecorsair/business/loot/LootRarety;

    move-result-object v2

    invoke-virtual {v2}, Lfr/testudo/spacecorsair/business/loot/LootRarety;->getColor()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 326
    invoke-direct {p0}, Lfr/testudo/spacecorsair/activity/MyShipActivity;->updateListviews()V

    .line 328
    sget-object v0, Lfr/testudo/spacecorsair/activity/MyShipActivity$11;->$SwitchMap$fr$testudo$spacecorsair$activity$MyShipActivity$ShipItemAction:[I

    iget-object v1, p0, Lfr/testudo/spacecorsair/activity/MyShipActivity;->currentShipItemAction:Lfr/testudo/spacecorsair/activity/MyShipActivity$ShipItemAction;

    invoke-virtual {v1}, Lfr/testudo/spacecorsair/activity/MyShipActivity$ShipItemAction;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_158

    .line 346
    :goto_143
    return-void

    .line 331
    :pswitch_144
    invoke-virtual {p0}, Lfr/testudo/spacecorsair/activity/MyShipActivity;->showShield()V

    goto :goto_143

    .line 334
    :pswitch_148
    invoke-virtual {p0}, Lfr/testudo/spacecorsair/activity/MyShipActivity;->showLaser()V

    goto :goto_143

    .line 337
    :pswitch_14c
    invoke-virtual {p0}, Lfr/testudo/spacecorsair/activity/MyShipActivity;->showMissile()V

    goto :goto_143

    .line 340
    :pswitch_150
    invoke-virtual {p0}, Lfr/testudo/spacecorsair/activity/MyShipActivity;->showBooster()V

    goto :goto_143

    .line 343
    :pswitch_154
    invoke-virtual {p0}, Lfr/testudo/spacecorsair/activity/MyShipActivity;->showHyperdrive()V

    goto :goto_143

    .line 328
    :pswitch_data_158
    .packed-switch 0x1
        :pswitch_144
        :pswitch_148
        :pswitch_14c
        :pswitch_150
        :pswitch_154
    .end packed-switch
.end method
