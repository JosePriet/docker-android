.class public Lfr/testudo/spacecorsair/activity/adapters/SpaceObjectAdapter;
.super Landroid/widget/ArrayAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lfr/testudo/spacecorsair/activity/adapters/SpaceObjectAdapter$ItemContext;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lfr/testudo/spacecorsair/business/loot/SpaceObject;",
        ">;"
    }
.end annotation


# instance fields
.field private btnBuyClickListener:Landroid/view/View$OnClickListener;

.field private btnDeleteClickListener:Landroid/view/View$OnClickListener;

.field private btnEquipClickListener:Landroid/view/View$OnClickListener;

.field private btnInfoClickListener:Landroid/view/View$OnClickListener;

.field private btnSellClickListener:Landroid/view/View$OnClickListener;

.field private btnUseClickListener:Landroid/view/View$OnClickListener;

.field private itemContext:Lfr/testudo/spacecorsair/activity/adapters/SpaceObjectAdapter$ItemContext;

.field private myself:Lfr/testudo/spacecorsair/activity/adapters/SpaceObjectAdapter;

.field private spaceObjectListener:Lfr/testudo/spacecorsair/activity/viewgroup/SpaceObjectListener;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/util/List;Lfr/testudo/spacecorsair/activity/viewgroup/SpaceObjectListener;Lfr/testudo/spacecorsair/activity/adapters/SpaceObjectAdapter$ItemContext;)V
    .registers 6
    invoke-static {p1, p2, p4}, Lfr/testudo/spacecorsair/mod/ModUi;->items(Landroid/app/Activity;Ljava/util/List;Lfr/testudo/spacecorsair/activity/adapters/SpaceObjectAdapter$ItemContext;)Ljava/util/List;
    move-result-object p2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/List",
            "<",
            "Lfr/testudo/spacecorsair/business/loot/SpaceObject;",
            ">;",
            "Lfr/testudo/spacecorsair/activity/viewgroup/SpaceObjectListener;",
            "Lfr/testudo/spacecorsair/activity/adapters/SpaceObjectAdapter$ItemContext;",
            ")V"
        }
    .end annotation

    .prologue
    .line 80
    const v0, 0x7f03000a

    invoke-direct {p0, p1, v0, p2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 26
    new-instance v0, Lfr/testudo/spacecorsair/activity/adapters/SpaceObjectAdapter$1;

    invoke-direct {v0, p0}, Lfr/testudo/spacecorsair/activity/adapters/SpaceObjectAdapter$1;-><init>(Lfr/testudo/spacecorsair/activity/adapters/SpaceObjectAdapter;)V

    iput-object v0, p0, Lfr/testudo/spacecorsair/activity/adapters/SpaceObjectAdapter;->btnInfoClickListener:Landroid/view/View$OnClickListener;

    .line 35
    new-instance v0, Lfr/testudo/spacecorsair/activity/adapters/SpaceObjectAdapter$2;

    invoke-direct {v0, p0}, Lfr/testudo/spacecorsair/activity/adapters/SpaceObjectAdapter$2;-><init>(Lfr/testudo/spacecorsair/activity/adapters/SpaceObjectAdapter;)V

    iput-object v0, p0, Lfr/testudo/spacecorsair/activity/adapters/SpaceObjectAdapter;->btnEquipClickListener:Landroid/view/View$OnClickListener;

    .line 44
    new-instance v0, Lfr/testudo/spacecorsair/activity/adapters/SpaceObjectAdapter$3;

    invoke-direct {v0, p0}, Lfr/testudo/spacecorsair/activity/adapters/SpaceObjectAdapter$3;-><init>(Lfr/testudo/spacecorsair/activity/adapters/SpaceObjectAdapter;)V

    iput-object v0, p0, Lfr/testudo/spacecorsair/activity/adapters/SpaceObjectAdapter;->btnUseClickListener:Landroid/view/View$OnClickListener;

    .line 52
    new-instance v0, Lfr/testudo/spacecorsair/activity/adapters/SpaceObjectAdapter$4;

    invoke-direct {v0, p0}, Lfr/testudo/spacecorsair/activity/adapters/SpaceObjectAdapter$4;-><init>(Lfr/testudo/spacecorsair/activity/adapters/SpaceObjectAdapter;)V

    iput-object v0, p0, Lfr/testudo/spacecorsair/activity/adapters/SpaceObjectAdapter;->btnDeleteClickListener:Landroid/view/View$OnClickListener;

    .line 61
    new-instance v0, Lfr/testudo/spacecorsair/activity/adapters/SpaceObjectAdapter$5;

    invoke-direct {v0, p0}, Lfr/testudo/spacecorsair/activity/adapters/SpaceObjectAdapter$5;-><init>(Lfr/testudo/spacecorsair/activity/adapters/SpaceObjectAdapter;)V

    iput-object v0, p0, Lfr/testudo/spacecorsair/activity/adapters/SpaceObjectAdapter;->btnSellClickListener:Landroid/view/View$OnClickListener;

    .line 70
    new-instance v0, Lfr/testudo/spacecorsair/activity/adapters/SpaceObjectAdapter$6;

    invoke-direct {v0, p0}, Lfr/testudo/spacecorsair/activity/adapters/SpaceObjectAdapter$6;-><init>(Lfr/testudo/spacecorsair/activity/adapters/SpaceObjectAdapter;)V

    iput-object v0, p0, Lfr/testudo/spacecorsair/activity/adapters/SpaceObjectAdapter;->btnBuyClickListener:Landroid/view/View$OnClickListener;

    .line 81
    iput-object p0, p0, Lfr/testudo/spacecorsair/activity/adapters/SpaceObjectAdapter;->myself:Lfr/testudo/spacecorsair/activity/adapters/SpaceObjectAdapter;

    .line 82
    iput-object p4, p0, Lfr/testudo/spacecorsair/activity/adapters/SpaceObjectAdapter;->itemContext:Lfr/testudo/spacecorsair/activity/adapters/SpaceObjectAdapter$ItemContext;

    .line 83
    iput-object p3, p0, Lfr/testudo/spacecorsair/activity/adapters/SpaceObjectAdapter;->spaceObjectListener:Lfr/testudo/spacecorsair/activity/viewgroup/SpaceObjectListener;

    .line 84
    return-void
.end method

.method static synthetic access$000(Lfr/testudo/spacecorsair/activity/adapters/SpaceObjectAdapter;)Lfr/testudo/spacecorsair/activity/adapters/SpaceObjectAdapter;
    .registers 2

    .prologue
    .line 18
    iget-object v0, p0, Lfr/testudo/spacecorsair/activity/adapters/SpaceObjectAdapter;->myself:Lfr/testudo/spacecorsair/activity/adapters/SpaceObjectAdapter;

    return-object v0
.end method

.method static synthetic access$100(Lfr/testudo/spacecorsair/activity/adapters/SpaceObjectAdapter;)Lfr/testudo/spacecorsair/activity/viewgroup/SpaceObjectListener;
    .registers 2

    .prologue
    .line 18
    iget-object v0, p0, Lfr/testudo/spacecorsair/activity/adapters/SpaceObjectAdapter;->spaceObjectListener:Lfr/testudo/spacecorsair/activity/viewgroup/SpaceObjectListener;

    return-object v0
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 9

    .prologue
    .line 88
    invoke-virtual {p0, p1}, Lfr/testudo/spacecorsair/activity/adapters/SpaceObjectAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfr/testudo/spacecorsair/business/loot/SpaceObject;

    .line 90
    invoke-virtual {p0}, Lfr/testudo/spacecorsair/activity/adapters/SpaceObjectAdapter;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lfr/testudo/spacecorsair/activity/viewgroup/InventoryItem_;->build(Landroid/content/Context;)Lfr/testudo/spacecorsair/activity/viewgroup/InventoryItem;

    move-result-object v2

    .line 91
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lfr/testudo/spacecorsair/activity/viewgroup/InventoryItem;->setTag(Ljava/lang/Object;)V

    .line 92
    iget-object v1, p0, Lfr/testudo/spacecorsair/activity/adapters/SpaceObjectAdapter;->itemContext:Lfr/testudo/spacecorsair/activity/adapters/SpaceObjectAdapter$ItemContext;

    invoke-virtual {v2, v0, v1}, Lfr/testudo/spacecorsair/activity/viewgroup/InventoryItem;->bind(Lfr/testudo/spacecorsair/business/loot/SpaceObject;Lfr/testudo/spacecorsair/activity/adapters/SpaceObjectAdapter$ItemContext;)V

    .line 95
    const v0, 0x7f0a0058

    invoke-virtual {v2, v0}, Lfr/testudo/spacecorsair/activity/viewgroup/InventoryItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 96
    const v1, 0x7f0a0057

    invoke-virtual {v2, v1}, Lfr/testudo/spacecorsair/activity/viewgroup/InventoryItem;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 97
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    .line 98
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    .line 99
    iget-object v3, p0, Lfr/testudo/spacecorsair/activity/adapters/SpaceObjectAdapter;->btnSellClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 100
    iget-object v0, p0, Lfr/testudo/spacecorsair/activity/adapters/SpaceObjectAdapter;->btnBuyClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 103
    const v0, 0x7f0a0054

    invoke-virtual {v2, v0}, Lfr/testudo/spacecorsair/activity/viewgroup/InventoryItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 104
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    .line 105
    iget-object v1, p0, Lfr/testudo/spacecorsair/activity/adapters/SpaceObjectAdapter;->btnInfoClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 108
    const v0, 0x7f0a0053

    invoke-virtual {v2, v0}, Lfr/testudo/spacecorsair/activity/viewgroup/InventoryItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 109
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    .line 110
    iget-object v1, p0, Lfr/testudo/spacecorsair/activity/adapters/SpaceObjectAdapter;->btnUseClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 113
    const v0, 0x7f0a0052

    invoke-virtual {v2, v0}, Lfr/testudo/spacecorsair/activity/viewgroup/InventoryItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 114
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    .line 115
    iget-object v1, p0, Lfr/testudo/spacecorsair/activity/adapters/SpaceObjectAdapter;->btnEquipClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 118
    const v0, 0x7f0a0056

    invoke-virtual {v2, v0}, Lfr/testudo/spacecorsair/activity/viewgroup/InventoryItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    .line 119
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setTag(Ljava/lang/Object;)V

    .line 120
    iget-object v1, p0, Lfr/testudo/spacecorsair/activity/adapters/SpaceObjectAdapter;->btnDeleteClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 122
    return-object v2
.end method
