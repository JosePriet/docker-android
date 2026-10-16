.class public final Lfr/testudo/spacecorsair/activity/viewgroup/InventoryItem_;
.super Lfr/testudo/spacecorsair/activity/viewgroup/InventoryItem;
.source "SourceFile"


# instance fields
.field private context_:Landroid/content/Context;

.field private mAlreadyInflated_:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lfr/testudo/spacecorsair/activity/viewgroup/InventoryItem;-><init>(Landroid/content/Context;)V

    .line 33
    const/4 v0, 0x0

    iput-boolean v0, p0, Lfr/testudo/spacecorsair/activity/viewgroup/InventoryItem_;->mAlreadyInflated_:Z

    .line 37
    invoke-direct {p0}, Lfr/testudo/spacecorsair/activity/viewgroup/InventoryItem_;->init_()V

    .line 38
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    .prologue
    .line 41
    invoke-direct {p0, p1, p2}, Lfr/testudo/spacecorsair/activity/viewgroup/InventoryItem;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 33
    const/4 v0, 0x0

    iput-boolean v0, p0, Lfr/testudo/spacecorsair/activity/viewgroup/InventoryItem_;->mAlreadyInflated_:Z

    .line 42
    invoke-direct {p0}, Lfr/testudo/spacecorsair/activity/viewgroup/InventoryItem_;->init_()V

    .line 43
    return-void
.end method

.method private afterSetContentView_()V
    .registers 2

    .prologue
    .line 53
    const v0, 0x7f0a0052

    invoke-virtual {p0, v0}, Lfr/testudo/spacecorsair/activity/viewgroup/InventoryItem_;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lfr/testudo/spacecorsair/activity/viewgroup/InventoryItem_;->btnEquip:Landroid/widget/Button;

    .line 54
    const v0, 0x7f0a0058

    invoke-virtual {p0, v0}, Lfr/testudo/spacecorsair/activity/viewgroup/InventoryItem_;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lfr/testudo/spacecorsair/activity/viewgroup/InventoryItem_;->btnSell:Landroid/widget/Button;

    .line 55
    const v0, 0x7f0a0049

    invoke-virtual {p0, v0}, Lfr/testudo/spacecorsair/activity/viewgroup/InventoryItem_;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lfr/testudo/spacecorsair/activity/viewgroup/InventoryItem_;->txtPrice:Landroid/widget/TextView;

    .line 56
    const v0, 0x7f0a004d

    invoke-virtual {p0, v0}, Lfr/testudo/spacecorsair/activity/viewgroup/InventoryItem_;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lfr/testudo/spacecorsair/activity/viewgroup/InventoryItem_;->txtQuantity:Landroid/widget/TextView;

    .line 57
    const v0, 0x7f0a0051

    invoke-virtual {p0, v0}, Lfr/testudo/spacecorsair/activity/viewgroup/InventoryItem_;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lfr/testudo/spacecorsair/activity/viewgroup/InventoryItem_;->txtUnusableReason:Landroid/widget/TextView;

    .line 58
    const v0, 0x7f0a0045

    invoke-virtual {p0, v0}, Lfr/testudo/spacecorsair/activity/viewgroup/InventoryItem_;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lfr/testudo/spacecorsair/activity/viewgroup/InventoryItem_;->txtItemGearName:Landroid/widget/TextView;

    .line 59
    const v0, 0x7f0a0043

    invoke-virtual {p0, v0}, Lfr/testudo/spacecorsair/activity/viewgroup/InventoryItem_;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lfr/testudo/spacecorsair/activity/viewgroup/InventoryItem_;->imgItem:Landroid/widget/ImageView;

    .line 60
    const v0, 0x7f0a0047

    invoke-virtual {p0, v0}, Lfr/testudo/spacecorsair/activity/viewgroup/InventoryItem_;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lfr/testudo/spacecorsair/activity/viewgroup/InventoryItem_;->layPrice:Landroid/widget/LinearLayout;

    .line 61
    const v0, 0x7f0a0056

    invoke-virtual {p0, v0}, Lfr/testudo/spacecorsair/activity/viewgroup/InventoryItem_;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lfr/testudo/spacecorsair/activity/viewgroup/InventoryItem_;->btnDelete:Landroid/widget/ImageButton;

    .line 62
    const v0, 0x7f0a0054

    invoke-virtual {p0, v0}, Lfr/testudo/spacecorsair/activity/viewgroup/InventoryItem_;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lfr/testudo/spacecorsair/activity/viewgroup/InventoryItem_;->btnDetails:Landroid/widget/Button;

    .line 63
    const v0, 0x7f0a0053

    invoke-virtual {p0, v0}, Lfr/testudo/spacecorsair/activity/viewgroup/InventoryItem_;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lfr/testudo/spacecorsair/activity/viewgroup/InventoryItem_;->btnUse:Landroid/widget/Button;

    .line 64
    const v0, 0x7f0a0044

    invoke-virtual {p0, v0}, Lfr/testudo/spacecorsair/activity/viewgroup/InventoryItem_;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lfr/testudo/spacecorsair/activity/viewgroup/InventoryItem_;->txtNewItem:Landroid/widget/TextView;

    .line 65
    const v0, 0x7f0a004e

    invoke-virtual {p0, v0}, Lfr/testudo/spacecorsair/activity/viewgroup/InventoryItem_;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lfr/testudo/spacecorsair/activity/viewgroup/InventoryItem_;->layPoid:Landroid/widget/LinearLayout;

    .line 66
    const v0, 0x7f0a0055

    invoke-virtual {p0, v0}, Lfr/testudo/spacecorsair/activity/viewgroup/InventoryItem_;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lfr/testudo/spacecorsair/activity/viewgroup/InventoryItem_;->layDelete:Landroid/widget/LinearLayout;

    .line 67
    const v0, 0x7f0a00f9

    invoke-virtual {p0, v0}, Lfr/testudo/spacecorsair/activity/viewgroup/InventoryItem_;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lfr/testudo/spacecorsair/activity/viewgroup/InventoryItem_;->txtItemType:Landroid/widget/TextView;

    .line 68
    const v0, 0x7f0a004b

    invoke-virtual {p0, v0}, Lfr/testudo/spacecorsair/activity/viewgroup/InventoryItem_;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lfr/testudo/spacecorsair/activity/viewgroup/InventoryItem_;->txtLevel:Landroid/widget/TextView;

    .line 69
    const v0, 0x7f0a0046

    invoke-virtual {p0, v0}, Lfr/testudo/spacecorsair/activity/viewgroup/InventoryItem_;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lfr/testudo/spacecorsair/activity/viewgroup/InventoryItem_;->txtItemName:Landroid/widget/TextView;

    .line 70
    const v0, 0x7f0a0050

    invoke-virtual {p0, v0}, Lfr/testudo/spacecorsair/activity/viewgroup/InventoryItem_;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lfr/testudo/spacecorsair/activity/viewgroup/InventoryItem_;->txtTotalWeight:Landroid/widget/TextView;

    .line 71
    const v0, 0x7f0a0048

    invoke-virtual {p0, v0}, Lfr/testudo/spacecorsair/activity/viewgroup/InventoryItem_;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lfr/testudo/spacecorsair/activity/viewgroup/InventoryItem_;->imgCredit:Landroid/widget/ImageView;

    .line 72
    const v0, 0x7f0a004a

    invoke-virtual {p0, v0}, Lfr/testudo/spacecorsair/activity/viewgroup/InventoryItem_;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lfr/testudo/spacecorsair/activity/viewgroup/InventoryItem_;->layLevel:Landroid/widget/LinearLayout;

    .line 73
    const v0, 0x7f0a004c

    invoke-virtual {p0, v0}, Lfr/testudo/spacecorsair/activity/viewgroup/InventoryItem_;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lfr/testudo/spacecorsair/activity/viewgroup/InventoryItem_;->layQuantity:Landroid/widget/LinearLayout;

    .line 74
    const v0, 0x7f0a0057

    invoke-virtual {p0, v0}, Lfr/testudo/spacecorsair/activity/viewgroup/InventoryItem_;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lfr/testudo/spacecorsair/activity/viewgroup/InventoryItem_;->btnBuy:Landroid/widget/Button;

    .line 75
    return-void
.end method

.method public static build(Landroid/content/Context;)Lfr/testudo/spacecorsair/activity/viewgroup/InventoryItem;
    .registers 2

    .prologue
    .line 95
    new-instance v0, Lfr/testudo/spacecorsair/activity/viewgroup/InventoryItem_;

    invoke-direct {v0, p0}, Lfr/testudo/spacecorsair/activity/viewgroup/InventoryItem_;-><init>(Landroid/content/Context;)V

    .line 96
    invoke-virtual {v0}, Lfr/testudo/spacecorsair/activity/viewgroup/InventoryItem_;->onFinishInflate()V

    .line 97
    return-object v0
.end method

.method public static build(Landroid/content/Context;Landroid/util/AttributeSet;)Lfr/testudo/spacecorsair/activity/viewgroup/InventoryItem;
    .registers 3

    .prologue
    .line 101
    new-instance v0, Lfr/testudo/spacecorsair/activity/viewgroup/InventoryItem_;

    invoke-direct {v0, p0, p1}, Lfr/testudo/spacecorsair/activity/viewgroup/InventoryItem_;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 102
    invoke-virtual {v0}, Lfr/testudo/spacecorsair/activity/viewgroup/InventoryItem_;->onFinishInflate()V

    .line 103
    return-object v0
.end method

.method private init_()V
    .registers 2

    .prologue
    .line 46
    invoke-virtual {p0}, Lfr/testudo/spacecorsair/activity/viewgroup/InventoryItem_;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lfr/testudo/spacecorsair/activity/viewgroup/InventoryItem_;->context_:Landroid/content/Context;

    .line 47
    iget-object v0, p0, Lfr/testudo/spacecorsair/activity/viewgroup/InventoryItem_;->context_:Landroid/content/Context;

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_10

    .line 48
    iget-object v0, p0, Lfr/testudo/spacecorsair/activity/viewgroup/InventoryItem_;->context_:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    .line 50
    :cond_10
    return-void
.end method


# virtual methods
.method public onFinishInflate()V
    .registers 3

    .prologue
    .line 86
    iget-boolean v0, p0, Lfr/testudo/spacecorsair/activity/viewgroup/InventoryItem_;->mAlreadyInflated_:Z

    if-nez v0, :cond_14

    .line 87
    const/4 v0, 0x1

    iput-boolean v0, p0, Lfr/testudo/spacecorsair/activity/viewgroup/InventoryItem_;->mAlreadyInflated_:Z

    .line 88
    invoke-virtual {p0}, Lfr/testudo/spacecorsair/activity/viewgroup/InventoryItem_;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f03000a

    invoke-static {v0, v1, p0}, Lfr/testudo/spacecorsair/activity/viewgroup/InventoryItem_;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 89
    invoke-direct {p0}, Lfr/testudo/spacecorsair/activity/viewgroup/InventoryItem_;->afterSetContentView_()V

    .line 91
    :cond_14
    invoke-super {p0}, Lfr/testudo/spacecorsair/activity/viewgroup/InventoryItem;->onFinishInflate()V

    .line 92
    return-void
.end method
