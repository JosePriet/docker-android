.class public Lfr/testudo/spacecorsair/mod/ModUi;
.super Ljava/lang/Object;
.source "ModUi.java"


# static fields
.field private static final SHIPS:Ljava/lang/String; = "SHIPS"

.field private static final SORT_NAMES:[Ljava/lang/String;

.field private static final TAG:Ljava/lang/String; = "modToolbar"

.field private static final filters:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lfr/testudo/spacecorsair/business/loot/LootRarety;",
            ">;"
        }
    .end annotation
.end field

.field private static inShips:Z

.field private static lastShips:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;",
            ">;"
        }
    .end annotation
.end field

.field private static final sorts:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static testPaged:Landroid/app/Activity;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 46
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModUi;->filters:Ljava/util/Map;

    .line 47
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModUi;->sorts:Ljava/util/Map;

    .line 48
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "Rarity"

    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "Level"

    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "Value"

    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "Name"

    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModUi;->SORT_NAMES:[Ljava/lang/String;

    .line 49
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModUi;->lastShips:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Landroid/app/Activity;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 43
    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModUi;->activeKey(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100()Ljava/util/Map;
    .registers 1

    .prologue
    .line 43
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModUi;->filters:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$200(Lfr/testudo/spacecorsair/business/loot/LootRarety;)Lfr/testudo/spacecorsair/business/loot/LootRarety;
    .registers 2

    .prologue
    .line 43
    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModUi;->next(Lfr/testudo/spacecorsair/business/loot/LootRarety;)Lfr/testudo/spacecorsair/business/loot/LootRarety;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Landroid/app/Activity;)V
    .registers 1

    .prologue
    .line 43
    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModUi;->refresh(Landroid/app/Activity;)V

    return-void
.end method

.method static synthetic access$400(Landroid/app/Activity;)V
    .registers 1

    .prologue
    .line 43
    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModUi;->update(Landroid/app/Activity;)V

    return-void
.end method

.method static synthetic access$500()Ljava/util/Map;
    .registers 1

    .prologue
    .line 43
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModUi;->sorts:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$600()[Ljava/lang/String;
    .registers 1

    .prologue
    .line 43
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModUi;->SORT_NAMES:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$700(Landroid/app/Activity;)V
    .registers 1

    .prologue
    .line 43
    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModUi;->sellJunk(Landroid/app/Activity;)V

    return-void
.end method

.method static synthetic access$800(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;
    .registers 3

    .prologue
    .line 43
    invoke-static {p0, p1}, Lfr/testudo/spacecorsair/mod/ModUi;->hasField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    return-object v0
.end method

.method private static activeKey(Landroid/app/Activity;)Ljava/lang/String;
    .registers 8

    .prologue
    .line 123
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ShipsActivity"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_13

    const-string v0, "SHIPS"

    .line 144
    :goto_12
    return-object v0

    .line 124
    :cond_13
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    move-object v2, v0

    .line 125
    :goto_18
    if-eqz v2, :cond_70

    const-class v0, Ljava/lang/Object;

    if-eq v2, v0, :cond_70

    .line 126
    invoke-virtual {v2}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v3

    array-length v4, v3

    const/4 v0, 0x0

    move v1, v0

    :goto_25
    if-ge v1, v4, :cond_6a

    aget-object v0, v3, v1

    .line 127
    const-class v5, Landroid/widget/ListView;

    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v5

    if-nez v5, :cond_39

    .line 126
    :cond_35
    :goto_35
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_25

    .line 129
    :cond_39
    const/4 v5, 0x1

    :try_start_3a
    invoke-virtual {v0, v5}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 130
    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    .line 131
    if-eqz v0, :cond_35

    invoke-virtual {v0}, Landroid/widget/ListView;->isShown()Z

    move-result v5

    if-eqz v5, :cond_35

    .line 132
    invoke-virtual {v0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    .line 133
    instance-of v5, v0, Lfr/testudo/spacecorsair/activity/adapters/SpaceObjectAdapter;

    if-eqz v5, :cond_35

    .line 134
    const-class v5, Lfr/testudo/spacecorsair/activity/adapters/SpaceObjectAdapter;

    const-string v6, "itemContext"

    invoke-virtual {v5, v6}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v5

    .line 135
    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 136
    invoke-virtual {v5, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfr/testudo/spacecorsair/activity/adapters/SpaceObjectAdapter$ItemContext;

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModUi;->key(Lfr/testudo/spacecorsair/activity/adapters/SpaceObjectAdapter$ItemContext;)Ljava/lang/String;
    :try_end_68
    .catch Ljava/lang/Exception; {:try_start_3a .. :try_end_68} :catch_72

    move-result-object v0

    goto :goto_12

    .line 142
    :cond_6a
    invoke-virtual {v2}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    move-object v2, v0

    goto :goto_18

    .line 144
    :cond_70
    const/4 v0, 0x0

    goto :goto_12

    .line 138
    :catch_72
    move-exception v0

    goto :goto_35
.end method

.method private static button(Landroid/app/Activity;Ljava/lang/String;)Landroid/widget/Button;
    .registers 7

    .prologue
    const/4 v4, 0x0

    .line 149
    new-instance v0, Landroid/widget/Button;

    invoke-direct {v0, p0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 150
    invoke-virtual {v0, p1}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    .line 151
    invoke-virtual {v0, v4}, Landroid/widget/Button;->setAllCaps(Z)V

    .line 152
    const/4 v1, 0x2

    const/high16 v2, 0x41400000    # 12.0f

    invoke-virtual {v0, v1, v2}, Landroid/widget/Button;->setTextSize(IF)V

    .line 153
    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    .line 154
    const v1, -0x33f4ddc8    # -3.6473056E7f

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundColor(I)V

    .line 155
    const/high16 v1, 0x40c00000    # 6.0f

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    .line 156
    mul-int/lit8 v2, v1, 0x2

    mul-int/lit8 v3, v1, 0x2

    invoke-virtual {v0, v2, v1, v3, v1}, Landroid/widget/Button;->setPadding(IIII)V

    .line 157
    invoke-virtual {v0, v4}, Landroid/widget/Button;->setMinWidth(I)V

    .line 158
    invoke-virtual {v0, v4}, Landroid/widget/Button;->setMinimumWidth(I)V

    .line 159
    return-object v0
.end method

.method private static collect(Landroid/view/View;ILjava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "I",
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 382
    invoke-virtual {p0}, Landroid/view/View;->getId()I

    move-result v0

    if-ne v0, p1, :cond_9

    invoke-interface {p2, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 383
    :cond_9
    instance-of v0, p0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_20

    .line 384
    check-cast p0, Landroid/view/ViewGroup;

    .line 385
    const/4 v0, 0x0

    :goto_10
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_20

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-static {v1, p1, p2}, Lfr/testudo/spacecorsair/mod/ModUi;->collect(Landroid/view/View;ILjava/util/List;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_10

    .line 387
    :cond_20
    return-void
.end method

.method private static ensureBar(Landroid/app/Activity;I)V
    .registers 11

    .prologue
    .line 163
    if-nez p0, :cond_3

    .line 253
    :cond_2
    :goto_2
    return-void

    .line 165
    :cond_3
    const v0, 0x1020002

    :try_start_6
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 166
    if-eqz v0, :cond_2

    .line 167
    const-string v1, "modToolbar"

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 168
    if-nez v1, :cond_140

    .line 169
    new-instance v1, Landroid/widget/LinearLayout;

    invoke-direct {v1, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 170
    const-string v2, "modToolbar"

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    .line 171
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 172
    const/high16 v2, 0x40c00000    # 6.0f

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    .line 173
    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v4, -0x2

    const/4 v5, -0x2

    invoke-direct {v3, v4, v5, p1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 174
    invoke-virtual {v3, v2, v2, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 175
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "ShipsActivity"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    .line 176
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v6, -0x2

    const/4 v7, -0x2

    invoke-direct {v5, v6, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 177
    div-int/lit8 v6, v2, 0x2

    const/4 v7, 0x0

    div-int/lit8 v2, v2, 0x2

    const/4 v8, 0x0

    invoke-virtual {v5, v6, v7, v2, v8}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 179
    const-string v2, "rarity"

    invoke-static {p0, v2}, Lfr/testudo/spacecorsair/mod/ModUi;->button(Landroid/app/Activity;Ljava/lang/String;)Landroid/widget/Button;

    move-result-object v2

    .line 180
    new-instance v6, Lfr/testudo/spacecorsair/mod/ModUi$2;

    invoke-direct {v6, p0}, Lfr/testudo/spacecorsair/mod/ModUi$2;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v2, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 189
    invoke-virtual {v1, v2, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 190
    if-nez v4, :cond_9a

    .line 191
    const-string v2, "sort"

    invoke-static {p0, v2}, Lfr/testudo/spacecorsair/mod/ModUi;->button(Landroid/app/Activity;Ljava/lang/String;)Landroid/widget/Button;

    move-result-object v2

    .line 192
    new-instance v4, Lfr/testudo/spacecorsair/mod/ModUi$3;

    invoke-direct {v4, p0}, Lfr/testudo/spacecorsair/mod/ModUi$3;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 202
    invoke-virtual {v1, v2, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 203
    const-string v2, "junk"

    invoke-static {p0, v2}, Lfr/testudo/spacecorsair/mod/ModUi;->button(Landroid/app/Activity;Ljava/lang/String;)Landroid/widget/Button;

    move-result-object v2

    .line 204
    const-string v4, "Sell junk"

    invoke-static {v4}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 205
    new-instance v4, Lfr/testudo/spacecorsair/mod/ModUi$4;

    invoke-direct {v4, p0}, Lfr/testudo/spacecorsair/mod/ModUi$4;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 206
    invoke-virtual {v1, v2, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 208
    :cond_9a
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v4, "StationActivity"

    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_de

    .line 209
    const-string v2, "gift"

    invoke-static {p0, v2}, Lfr/testudo/spacecorsair/mod/ModUi;->button(Landroid/app/Activity;Ljava/lang/String;)Landroid/widget/Button;

    move-result-object v2

    .line 210
    const-string v4, "Gift code"

    invoke-static {v4}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 211
    new-instance v4, Lfr/testudo/spacecorsair/mod/ModUi$5;

    invoke-direct {v4, p0}, Lfr/testudo/spacecorsair/mod/ModUi$5;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 212
    invoke-virtual {v1, v2, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 214
    const-string v2, "refit"

    invoke-static {p0, v2}, Lfr/testudo/spacecorsair/mod/ModUi;->button(Landroid/app/Activity;Ljava/lang/String;)Landroid/widget/Button;

    move-result-object v2

    .line 215
    const-string v4, "Refit"

    invoke-static {v4}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 216
    new-instance v4, Lfr/testudo/spacecorsair/mod/ModUi$6;

    invoke-direct {v4, p0}, Lfr/testudo/spacecorsair/mod/ModUi$6;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 217
    invoke-virtual {v1, v2, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 219
    :cond_de
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v4, "StationActivity"

    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_106

    .line 220
    const-string v2, "lan"

    invoke-static {p0, v2}, Lfr/testudo/spacecorsair/mod/ModUi;->button(Landroid/app/Activity;Ljava/lang/String;)Landroid/widget/Button;

    move-result-object v2

    .line 221
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLan;->buttonLabel()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 222
    new-instance v4, Lfr/testudo/spacecorsair/mod/ModUi$7;

    invoke-direct {v4, p0}, Lfr/testudo/spacecorsair/mod/ModUi$7;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 223
    invoke-virtual {v1, v2, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 225
    :cond_106
    const-string v2, "rep"

    invoke-static {p0, v2}, Lfr/testudo/spacecorsair/mod/ModUi;->button(Landroid/app/Activity;Ljava/lang/String;)Landroid/widget/Button;

    move-result-object v2

    .line 226
    const-string v4, "Standings"

    invoke-static {v4}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 227
    new-instance v4, Lfr/testudo/spacecorsair/mod/ModUi$8;

    invoke-direct {v4, p0}, Lfr/testudo/spacecorsair/mod/ModUi$8;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 228
    invoke-virtual {v1, v2, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 229
    const-string v2, "inbox"

    invoke-static {p0, v2}, Lfr/testudo/spacecorsair/mod/ModUi;->button(Landroid/app/Activity;Ljava/lang/String;)Landroid/widget/Button;

    move-result-object v2

    .line 230
    new-instance v4, Lfr/testudo/spacecorsair/mod/ModUi$9;

    invoke-direct {v4, p0}, Lfr/testudo/spacecorsair/mod/ModUi$9;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 233
    invoke-virtual {v1, v2, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 234
    invoke-virtual {v0, v1, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 237
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v2

    new-instance v3, Lfr/testudo/spacecorsair/mod/ModUi$10;

    invoke-direct {v3, p0, v1, v0}, Lfr/testudo/spacecorsair/mod/ModUi$10;-><init>(Landroid/app/Activity;Landroid/view/View;Landroid/view/ViewGroup;)V

    invoke-virtual {v2, v3}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 248
    :cond_140
    invoke-virtual {v1}, Landroid/widget/LinearLayout;->bringToFront()V

    .line 249
    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModUi;->update(Landroid/app/Activity;)V
    :try_end_146
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_146} :catch_148

    goto/16 :goto_2

    .line 250
    :catch_148
    move-exception v0

    goto/16 :goto_2
.end method

.method private static fitShipDescriptions(Landroid/app/Activity;Landroid/view/ViewGroup;)V
    .registers 6

    .prologue
    .line 300
    :try_start_0
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "textShipDesc"

    const-string v2, "id"

    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 301
    if-nez v0, :cond_13

    .line 317
    :cond_12
    :goto_12
    return-void

    .line 302
    :cond_13
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v1, v1

    const v2, 0x3ecccccd    # 0.4f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    .line 303
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 304
    invoke-static {p1, v0, v2}, Lfr/testudo/spacecorsair/mod/ModUi;->collect(Landroid/view/View;ILjava/util/List;)V

    .line 305
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2f
    :goto_2f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_12

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 306
    instance-of v3, v0, Landroid/widget/TextView;

    if-eqz v3, :cond_2f

    .line 307
    check-cast v0, Landroid/widget/TextView;

    .line 308
    invoke-virtual {v0}, Landroid/widget/TextView;->getMaxHeight()I

    move-result v3

    if-eq v3, v1, :cond_2f

    .line 309
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMaxHeight(I)V

    .line 311
    new-instance v3, Landroid/text/method/ScrollingMovementMethod;

    invoke-direct {v3}, Landroid/text/method/ScrollingMovementMethod;-><init>()V

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 312
    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModScroll;->track(Landroid/widget/TextView;)V
    :try_end_55
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_55} :catch_56

    goto :goto_2f

    .line 314
    :catch_56
    move-exception v0

    goto :goto_12
.end method

.method private static hasField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/reflect/Field;"
        }
    .end annotation

    .prologue
    .line 375
    :try_start_0
    invoke-virtual {p0, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3} :catch_5

    move-result-object v0

    .line 377
    :goto_4
    return-object v0

    .line 376
    :catch_5
    move-exception v0

    .line 377
    const/4 v0, 0x0

    goto :goto_4
.end method

.method private static itemOrder(I)Ljava/util/Comparator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Comparator",
            "<",
            "Lfr/testudo/spacecorsair/business/loot/SpaceObject;",
            ">;"
        }
    .end annotation

    .prologue
    .line 57
    new-instance v0, Lfr/testudo/spacecorsair/mod/ModUi$1;

    invoke-direct {v0, p0}, Lfr/testudo/spacecorsair/mod/ModUi$1;-><init>(I)V

    return-object v0
.end method

.method public static items(Landroid/app/Activity;Ljava/util/List;Lfr/testudo/spacecorsair/activity/adapters/SpaceObjectAdapter$ItemContext;)Ljava/util/List;
    .registers 9

    .prologue
    .line 103
    const/16 v0, 0x55

    invoke-static {p0, v0}, Lfr/testudo/spacecorsair/mod/ModUi;->ensureBar(Landroid/app/Activity;I)V

    .line 104
    if-nez p1, :cond_9

    const/4 v0, 0x0

    .line 114
    :goto_8
    return-object v0

    .line 105
    :cond_9
    invoke-static {p2}, Lfr/testudo/spacecorsair/mod/ModUi;->key(Lfr/testudo/spacecorsair/activity/adapters/SpaceObjectAdapter$ItemContext;)Ljava/lang/String;

    move-result-object v3

    .line 106
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModUi;->filters:Ljava/util/Map;

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfr/testudo/spacecorsair/business/loot/LootRarety;

    .line 107
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 108
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1e
    :goto_1e
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3a

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 109
    check-cast v1, Lfr/testudo/spacecorsair/business/loot/SpaceObject;

    .line 110
    if-eqz v0, :cond_36

    invoke-virtual {v1}, Lfr/testudo/spacecorsair/business/loot/SpaceObject;->getSpaceObjectType()Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    move-result-object v5

    invoke-virtual {v5}, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->getRarety()Lfr/testudo/spacecorsair/business/loot/LootRarety;

    move-result-object v5

    if-ne v5, v0, :cond_1e

    :cond_36
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1e

    .line 112
    :cond_3a
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModUi;->sorts:Ljava/util/Map;

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 113
    if-nez v0, :cond_4e

    const/4 v0, 0x0

    :goto_45
    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModUi;->itemOrder(I)Ljava/util/Comparator;

    move-result-object v0

    invoke-static {v2, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    move-object v0, v2

    .line 114
    goto :goto_8

    .line 113
    :cond_4e
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_45
.end method

.method static jumpTo(Landroid/app/Activity;Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)V
    .registers 9

    .prologue
    .line 528
    :try_start_0
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModUi;->lastShips:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_12

    .line 529
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModUi;->filters:Ljava/util/Map;

    const-string v1, "SHIPS"

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 530
    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModUi;->refresh(Landroid/app/Activity;)V

    .line 532
    :cond_12
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModUi;->lastShips:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 533
    if-gez v0, :cond_1b

    .line 543
    :goto_1a
    return-void

    .line 534
    :cond_1b
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "shipsPager"

    invoke-static {v1, v2}, Lfr/testudo/spacecorsair/mod/ModQol;->findField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 535
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 536
    invoke-virtual {v1, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 537
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "setCurrentItem"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 538
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-virtual {v2, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 539
    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModUi;->update(Landroid/app/Activity;)V
    :try_end_4f
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_4f} :catch_50

    goto :goto_1a

    .line 540
    :catch_50
    move-exception v0

    goto :goto_1a
.end method

.method private static key(Lfr/testudo/spacecorsair/activity/adapters/SpaceObjectAdapter$ItemContext;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 118
    if-nez p0, :cond_5

    const-string v0, "INVENTORY"

    :goto_4
    return-object v0

    :cond_5
    invoke-virtual {p0}, Lfr/testudo/spacecorsair/activity/adapters/SpaceObjectAdapter$ItemContext;->name()Ljava/lang/String;

    move-result-object v0

    goto :goto_4
.end method

.method static level(Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)I
    .registers 2

    .prologue
    .line 52
    invoke-virtual {p0}, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->getGearSpec()Lfr/testudo/spacecorsair/business/loot/stuff/GearSpec;

    move-result-object v0

    .line 53
    if-nez v0, :cond_8

    const/4 v0, 0x0

    :goto_7
    return v0

    :cond_8
    iget v0, v0, Lfr/testudo/spacecorsair/business/loot/stuff/GearSpec;->level:I

    goto :goto_7
.end method

.method public static markNewShips(I)V
    .registers 8

    .prologue
    .line 504
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModUi;->prefs()Landroid/content/SharedPreferences;

    move-result-object v1

    .line 505
    if-nez v1, :cond_7

    .line 512
    :goto_6
    return-void

    .line 506
    :cond_7
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModUi;->newShips()Ljava/util/Set;

    move-result-object v2

    .line 507
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v3, v0, Lfr/testudo/spacecorsair/game/Game;->playerInfo:Lfr/testudo/spacecorsair/business/player/PlayerInfo;

    .line 508
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->ALL_SHIPS:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_17
    :goto_17
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4b

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModUi;->level(Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)I

    move-result v5

    if-ne v5, p0, :cond_17

    iget-object v5, v3, Lfr/testudo/spacecorsair/business/player/PlayerInfo;->availShips:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_17

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModDev;->isDev(Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)Z

    move-result v5

    if-nez v5, :cond_17

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->name()Ljava/lang/String;

    move-result-object v5

    const-string v6, "hullSecret"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_17

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->name()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_17

    .line 509
    :cond_4b
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 510
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_54
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v4, 0x2c

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_54

    .line 511
    :cond_6a
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "newShips"

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_6
.end method

.method static newShips()Ljava/util/Set;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 495
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 496
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModUi;->prefs()Landroid/content/SharedPreferences;

    move-result-object v1

    .line 497
    if-nez v1, :cond_c

    .line 499
    :cond_b
    return-object v0

    .line 498
    :cond_c
    const-string v2, "newShips"

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    array-length v3, v2

    const/4 v1, 0x0

    :goto_1c
    if-ge v1, v3, :cond_b

    aget-object v4, v2, v1

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_29

    invoke-interface {v0, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_29
    add-int/lit8 v1, v1, 0x1

    goto :goto_1c
.end method

.method private static next(Lfr/testudo/spacecorsair/business/loot/LootRarety;)Lfr/testudo/spacecorsair/business/loot/LootRarety;
    .registers 4

    .prologue
    .line 412
    invoke-static {}, Lfr/testudo/spacecorsair/business/loot/LootRarety;->values()[Lfr/testudo/spacecorsair/business/loot/LootRarety;

    move-result-object v0

    .line 413
    if-nez p0, :cond_a

    const/4 v1, 0x0

    aget-object v0, v0, v1

    .line 415
    :goto_9
    return-object v0

    .line 414
    :cond_a
    invoke-virtual {p0}, Lfr/testudo/spacecorsair/business/loot/LootRarety;->ordinal()I

    move-result v1

    array-length v2, v0

    add-int/lit8 v2, v2, -0x1

    if-ne v1, v2, :cond_15

    const/4 v0, 0x0

    goto :goto_9

    .line 415
    :cond_15
    invoke-virtual {p0}, Lfr/testudo/spacecorsair/business/loot/LootRarety;->ordinal()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    aget-object v0, v0, v1

    goto :goto_9
.end method

.method private static padLists(Landroid/app/Activity;I)V
    .registers 11

    .prologue
    const/4 v2, 0x0

    .line 390
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    move-object v3, v0

    .line 391
    :goto_6
    if-eqz v3, :cond_54

    const-class v0, Ljava/lang/Object;

    if-eq v3, v0, :cond_54

    .line 392
    invoke-virtual {v3}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v4

    array-length v5, v4

    move v1, v2

    :goto_12
    if-ge v1, v5, :cond_4e

    aget-object v0, v4, v1

    .line 393
    const-class v6, Landroid/widget/ListView;

    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v6

    if-nez v6, :cond_26

    .line 392
    :cond_22
    :goto_22
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_12

    .line 395
    :cond_26
    const/4 v6, 0x1

    :try_start_27
    invoke-virtual {v0, v6}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 396
    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    .line 397
    if-eqz v0, :cond_22

    invoke-virtual {v0}, Landroid/widget/ListView;->getPaddingBottom()I

    move-result v6

    if-eq v6, p1, :cond_22

    .line 398
    const/4 v6, 0x0

    invoke-virtual {v0, v6}, Landroid/widget/ListView;->setClipToPadding(Z)V

    .line 399
    invoke-virtual {v0}, Landroid/widget/ListView;->getPaddingLeft()I

    move-result v6

    invoke-virtual {v0}, Landroid/widget/ListView;->getPaddingTop()I

    move-result v7

    invoke-virtual {v0}, Landroid/widget/ListView;->getPaddingRight()I

    move-result v8

    invoke-virtual {v0, v6, v7, v8, p1}, Landroid/widget/ListView;->setPadding(IIII)V
    :try_end_4b
    .catch Ljava/lang/Exception; {:try_start_27 .. :try_end_4b} :catch_4c

    goto :goto_22

    .line 400
    :catch_4c
    move-exception v0

    goto :goto_22

    .line 404
    :cond_4e
    invoke-virtual {v3}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    move-object v3, v0

    goto :goto_6

    .line 406
    :cond_54
    return-void
.end method

.method private static prefs()Landroid/content/SharedPreferences;
    .registers 3

    .prologue
    .line 488
    :try_start_0
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/Game;->context:Landroid/content/Context;

    const-string v1, "modqol"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_c} :catch_e

    move-result-object v0

    .line 490
    :goto_d
    return-object v0

    .line 489
    :catch_e
    move-exception v0

    .line 490
    const/4 v0, 0x0

    goto :goto_d
.end method

.method private static refresh(Landroid/app/Activity;)V
    .registers 7

    .prologue
    const/4 v0, 0x0

    .line 419
    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "updateUI"

    aput-object v2, v1, v0

    const/4 v2, 0x1

    const-string v3, "updateListviews"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "initPager"

    aput-object v3, v1, v2

    .line 420
    array-length v2, v1

    :goto_13
    if-ge v0, v2, :cond_28

    aget-object v3, v1, v0

    .line 422
    :try_start_17
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Class;

    invoke-virtual {v4, v3, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 423
    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v3, p0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_28} :catch_29

    .line 429
    :cond_28
    return-void

    .line 425
    :catch_29
    move-exception v3

    .line 420
    add-int/lit8 v0, v0, 0x1

    goto :goto_13
.end method

.method private static sellJunk(Landroid/app/Activity;)V
    .registers 12

    .prologue
    .line 434
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "currentStation"

    invoke-static {v0, v1}, Lfr/testudo/spacecorsair/mod/ModQol;->findField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 435
    if-nez v0, :cond_d

    .line 483
    :goto_c
    return-void

    .line 436
    :cond_d
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 437
    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 438
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "buyList"

    invoke-static {v0, v1}, Lfr/testudo/spacecorsair/mod/ModQol;->findField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 439
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 440
    invoke-virtual {v0, v4}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    .line 441
    sget-object v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v1, v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v1, v1, Lfr/testudo/spacecorsair/game/Game;->playerInfo:Lfr/testudo/spacecorsair/business/player/PlayerInfo;

    iget v5, v1, Lfr/testudo/spacecorsair/business/player/PlayerInfo;->level:I

    .line 442
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 443
    const-wide/16 v2, 0x0

    .line 444
    sget-object v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v1, v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v1, v1, Lfr/testudo/spacecorsair/game/Game;->playerCurrentShipInventory:Lfr/testudo/spacecorsair/business/player/Inventory;

    invoke-virtual {v1}, Lfr/testudo/spacecorsair/business/player/Inventory;->getContent()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_46
    :goto_46
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7e

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lfr/testudo/spacecorsair/business/loot/SpaceObject;

    .line 445
    invoke-virtual {v1}, Lfr/testudo/spacecorsair/business/loot/SpaceObject;->getSpaceObjectType()Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    move-result-object v8

    .line 446
    invoke-virtual {v8}, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->getGearSpec()Lfr/testudo/spacecorsair/business/loot/stuff/GearSpec;

    move-result-object v9

    .line 447
    invoke-interface {v0, v8}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_46

    if-eqz v9, :cond_46

    invoke-virtual {v8}, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->isEquipable()Z

    move-result v10

    if-eqz v10, :cond_46

    .line 448
    invoke-virtual {v8}, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->getRarety()Lfr/testudo/spacecorsair/business/loot/LootRarety;

    move-result-object v8

    sget-object v10, Lfr/testudo/spacecorsair/business/loot/LootRarety;->BASIC:Lfr/testudo/spacecorsair/business/loot/LootRarety;

    if-ne v8, v10, :cond_46

    iget v8, v9, Lfr/testudo/spacecorsair/business/loot/stuff/GearSpec;->level:I

    if-ge v8, v5, :cond_46

    .line 449
    invoke-interface {v6, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 450
    invoke-virtual {v1}, Lfr/testudo/spacecorsair/business/loot/SpaceObject;->getTotalSellPrice()I

    move-result v1

    int-to-long v8, v1

    add-long/2addr v2, v8

    .line 451
    goto :goto_46

    .line 452
    :cond_7e
    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_ac

    .line 453
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v1, "Sell junk"

    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "No Common gear below your level to sell."

    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "OK"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto/16 :goto_c

    .line 480
    :catch_a9
    move-exception v0

    goto/16 :goto_c

    .line 456
    :cond_ac
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v1, "Sell junk"

    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "Sell {0} stacks of Common gear below level {1} for about {2} credits?"

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    .line 457
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v7, v8

    const/4 v5, 0x2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v7, v5

    invoke-static {v1, v7}, Lfr/testudo/spacecorsair/mod/ModLang;->fmt(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "Sell"

    .line 458
    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lfr/testudo/spacecorsair/mod/ModUi$12;

    invoke-direct {v2, v4, v6, p0}, Lfr/testudo/spacecorsair/mod/ModUi$12;-><init>(Ljava/lang/Object;Ljava/util/List;Landroid/app/Activity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "Cancel"

    .line 479
    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;
    :try_end_fe
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_fe} :catch_a9

    goto/16 :goto_c
.end method

.method private static setText(Landroid/widget/Button;Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 409
    invoke-virtual {p0}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_d

    invoke-virtual {p0, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    :cond_d
    return-void
.end method

.method private static setVis(Landroid/view/View;I)V
    .registers 3

    .prologue
    .line 408
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eq v0, p1, :cond_9

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_9
    return-void
.end method

.method private static shipList(Landroid/app/Activity;)Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            ")",
            "Ljava/util/List",
            "<",
            "Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;",
            ">;"
        }
    .end annotation

    .prologue
    .line 85
    const/16 v0, 0x31

    invoke-static {p0, v0}, Lfr/testudo/spacecorsair/mod/ModUi;->ensureBar(Landroid/app/Activity;I)V

    .line 86
    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModScroll;->attach(Landroid/app/Activity;)V

    .line 88
    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModShipTree;->ensureSelection(Landroid/app/Activity;)I

    move-result v2

    .line 89
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModUi;->filters:Ljava/util/Map;

    const-string v1, "SHIPS"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfr/testudo/spacecorsair/business/loot/LootRarety;

    .line 90
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 91
    sget-object v1, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->ALL_SHIPS:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_21
    :goto_21
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_45

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    .line 92
    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModDev;->hidden(Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)Z

    move-result v5

    if-nez v5, :cond_21

    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModShipTree;->group(Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)I

    move-result v5

    if-ne v5, v2, :cond_21

    .line 93
    if-eqz v0, :cond_41

    invoke-virtual {v1}, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->getRarety()Lfr/testudo/spacecorsair/business/loot/LootRarety;

    move-result-object v5

    if-ne v5, v0, :cond_21

    :cond_41
    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_21

    .line 95
    :cond_45
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_6d

    sget-object v0, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->ALL_SHIPS:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_51
    :goto_51
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModDev;->hidden(Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)Z

    move-result v4

    if-nez v4, :cond_51

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModShipTree;->group(Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)I

    move-result v4

    if-ne v4, v2, :cond_51

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_51

    .line 96
    :cond_6d
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_8f

    sget-object v0, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->ALL_SHIPS:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_79
    :goto_79
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModDev;->hidden(Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)Z

    move-result v2

    if-nez v2, :cond_79

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_79

    .line 97
    :cond_8f
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModShipTree;->ORDER:Ljava/util/Comparator;

    invoke-static {v3, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 98
    sput-object v3, Lfr/testudo/spacecorsair/mod/ModUi;->lastShips:Ljava/util/List;

    .line 99
    return-object v3
.end method

.method public static ships(Landroid/app/Activity;)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            ")",
            "Ljava/util/List",
            "<",
            "Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 75
    const/4 v0, 0x1

    sput-boolean v0, Lfr/testudo/spacecorsair/mod/ModUi;->inShips:Z

    .line 77
    :try_start_4
    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModUi;->shipList(Landroid/app/Activity;)Ljava/util/List;
    :try_end_7
    .catchall {:try_start_4 .. :try_end_7} :catchall_b

    move-result-object v0

    .line 79
    sput-boolean v1, Lfr/testudo/spacecorsair/mod/ModUi;->inShips:Z

    .line 77
    return-object v0

    .line 79
    :catchall_b
    move-exception v0

    sput-boolean v1, Lfr/testudo/spacecorsair/mod/ModUi;->inShips:Z

    .line 80
    throw v0
.end method

.method static state(Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)I
    .registers 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 516
    sget-object v2, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v2, v2, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v2, v2, Lfr/testudo/spacecorsair/game/Game;->playerInfo:Lfr/testudo/spacecorsair/business/player/PlayerInfo;

    .line 517
    iget-object v3, v2, Lfr/testudo/spacecorsair/business/player/PlayerInfo;->playerGear:Lfr/testudo/spacecorsair/business/player/PlayerGear;

    iget-object v3, v3, Lfr/testudo/spacecorsair/business/player/PlayerGear;->playerShip:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    if-ne v3, p0, :cond_10

    move v0, v1

    .line 522
    :cond_f
    :goto_f
    return v0

    .line 518
    :cond_10
    iget-object v3, v2, Lfr/testudo/spacecorsair/business/player/PlayerInfo;->availShips:Ljava/util/List;

    invoke-interface {v3, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_f

    .line 519
    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModUi;->level(Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)I

    move-result v3

    iget v2, v2, Lfr/testudo/spacecorsair/business/player/PlayerInfo;->level:I

    if-gt v3, v2, :cond_36

    .line 520
    :goto_20
    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModShips;->licenceOk(Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)Z

    move-result v1

    .line 521
    sget-object v2, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v2, v2, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v2, v2, Lfr/testudo/spacecorsair/game/Game;->playerCurrentShipInventory:Lfr/testudo/spacecorsair/business/player/Inventory;

    invoke-virtual {v2, p0}, Lfr/testudo/spacecorsair/business/player/Inventory;->canAfford(Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)Z

    move-result v2

    .line 522
    if-eqz v0, :cond_38

    if-eqz v1, :cond_38

    if-eqz v2, :cond_38

    const/4 v0, 0x2

    goto :goto_f

    :cond_36
    move v0, v1

    .line 519
    goto :goto_20

    .line 522
    :cond_38
    if-eqz v0, :cond_3e

    if-eqz v1, :cond_3e

    const/4 v0, 0x3

    goto :goto_f

    :cond_3e
    const/4 v0, 0x4

    goto :goto_f
.end method

.method private static testPage(Landroid/app/Activity;)V
    .registers 5

    .prologue
    .line 359
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModUi;->testPaged:Landroid/app/Activity;

    if-ne p0, v0, :cond_5

    .line 371
    :cond_4
    :goto_4
    return-void

    .line 360
    :cond_5
    sput-object p0, Lfr/testudo/spacecorsair/mod/ModUi;->testPaged:Landroid/app/Activity;

    .line 361
    const-string v0, "corsair_page"

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModDev;->testValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 362
    if-eqz v1, :cond_4

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_4

    .line 364
    :try_start_15
    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModShipTree;->hide(Landroid/app/Activity;)V

    .line 365
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->ALL_SHIPS:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    .line 366
    invoke-virtual {v0}, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1e

    invoke-static {p0, v0}, Lfr/testudo/spacecorsair/mod/ModShipTree;->openShip(Landroid/app/Activity;Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)V
    :try_end_37
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_37} :catch_38

    goto :goto_4

    .line 368
    :catch_38
    move-exception v0

    goto :goto_4
.end method

.method private static update(Landroid/app/Activity;)V
    .registers 11

    .prologue
    const/16 v4, 0x8

    const/4 v2, -0x1

    const/4 v3, 0x0

    .line 257
    const v0, 0x1020002

    :try_start_7
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 258
    if-nez v0, :cond_10

    .line 295
    :cond_f
    :goto_f
    return-void

    .line 259
    :cond_10
    const-string v1, "modToolbar"

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v6

    .line 260
    if-eqz v6, :cond_f

    .line 261
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v5, "ShipsActivity"

    invoke-virtual {v1, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_49

    .line 262
    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModShipTree;->attach(Landroid/app/Activity;)V

    .line 263
    invoke-static {p0, v0}, Lfr/testudo/spacecorsair/mod/ModUi;->fitShipDescriptions(Landroid/app/Activity;Landroid/view/ViewGroup;)V

    .line 264
    invoke-static {p0, v0}, Lfr/testudo/spacecorsair/mod/ModUi;->wireArrows(Landroid/app/Activity;Landroid/view/ViewGroup;)V

    .line 265
    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModShipTree;->decoratePages(Landroid/app/Activity;)V

    .line 266
    sget-boolean v0, Lfr/testudo/spacecorsair/mod/ModUi;->inShips:Z

    if-nez v0, :cond_3b

    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModUi;->testPage(Landroid/app/Activity;)V

    .line 268
    :cond_3b
    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModShipTree;->shown(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_49

    const/16 v0, 0x8

    invoke-static {v6, v0}, Lfr/testudo/spacecorsair/mod/ModUi;->setVis(Landroid/view/View;I)V

    goto :goto_f

    .line 292
    :catch_47
    move-exception v0

    goto :goto_f

    .line 270
    :cond_49
    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModUi;->activeKey(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v7

    .line 271
    if-nez v7, :cond_122

    move v0, v4

    :goto_50
    invoke-static {v6, v0}, Lfr/testudo/spacecorsair/mod/ModUi;->setVis(Landroid/view/View;I)V

    .line 272
    if-eqz v7, :cond_f

    .line 274
    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    move-result v0

    .line 275
    if-lez v0, :cond_6d

    const/high16 v1, 0x41400000    # 12.0f

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v5, v5, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v1, v5

    float-to-int v1, v1

    add-int/2addr v0, v1

    invoke-static {p0, v0}, Lfr/testudo/spacecorsair/mod/ModUi;->padLists(Landroid/app/Activity;I)V

    .line 276
    :cond_6d
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModUi;->filters:Ljava/util/Map;

    invoke-interface {v0, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfr/testudo/spacecorsair/business/loot/LootRarety;

    .line 277
    const-string v1, "rarity"

    invoke-virtual {v6, v1}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 278
    if-eqz v1, :cond_9b

    .line 279
    if-nez v0, :cond_125

    const-string v5, "Rarity: All"

    invoke-static {v5}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    :goto_87
    invoke-static {v1, v5}, Lfr/testudo/spacecorsair/mod/ModUi;->setText(Landroid/widget/Button;Ljava/lang/String;)V
    :try_end_8a
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_8a} :catch_47

    .line 281
    if-eqz v0, :cond_16d

    .line 282
    :try_start_8c
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/business/loot/LootRarety;->getColor()I

    move-result v0

    invoke-virtual {v5, v0}, Landroid/content/res/Resources;->getColor(I)I
    :try_end_97
    .catch Ljava/lang/Exception; {:try_start_8c .. :try_end_97} :catch_158

    move-result v0

    .line 284
    :goto_98
    :try_start_98
    invoke-virtual {v1, v0}, Landroid/widget/Button;->setTextColor(I)V

    .line 286
    :cond_9b
    const-string v0, "sort"

    invoke-virtual {v6, v0}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 287
    if-eqz v0, :cond_d2

    sget-object v1, Lfr/testudo/spacecorsair/mod/ModUi;->sorts:Ljava/util/Map;

    invoke-interface {v1, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Sort: "

    invoke-static {v8}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v8, Lfr/testudo/spacecorsair/mod/ModUi;->SORT_NAMES:[Ljava/lang/String;

    if-nez v1, :cond_15c

    move v1, v3

    :goto_c1
    aget-object v1, v8, v1

    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModLang;->re(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lfr/testudo/spacecorsair/mod/ModUi;->setText(Landroid/widget/Button;Ljava/lang/String;)V

    .line 288
    :cond_d2
    const-string v0, "junk"

    invoke-virtual {v6, v0}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 289
    if-eqz v0, :cond_e8

    const-string v1, "SELL"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_162

    move v1, v3

    :goto_e5
    invoke-static {v0, v1}, Lfr/testudo/spacecorsair/mod/ModUi;->setVis(Landroid/view/View;I)V

    .line 290
    :cond_e8
    const-string v0, "inbox"

    invoke-virtual {v6, v0}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 291
    if-eqz v0, :cond_f

    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModQol;->unread()I

    move-result v3

    if-lez v3, :cond_164

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Inbox ("

    invoke-static {v4}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ")"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_115
    invoke-static {v0, v1}, Lfr/testudo/spacecorsair/mod/ModUi;->setText(Landroid/widget/Button;Ljava/lang/String;)V

    if-lez v3, :cond_16b

    const v1, -0xbe00ea

    :goto_11d
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    goto/16 :goto_f

    :cond_122
    move v0, v3

    .line 271
    goto/16 :goto_50

    .line 279
    :cond_125
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Rarity: "

    invoke-static {v8}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/business/loot/LootRarety;->name()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Ljava/lang/String;->charAt(I)C

    move-result v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/business/loot/LootRarety;->name()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_87

    .line 282
    :catch_158
    move-exception v0

    move v0, v2

    goto/16 :goto_98

    .line 287
    :cond_15c
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto/16 :goto_c1

    :cond_162
    move v1, v4

    .line 289
    goto :goto_e5

    .line 291
    :cond_164
    const-string v1, "Inbox"

    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;
    :try_end_169
    .catch Ljava/lang/Exception; {:try_start_98 .. :try_end_169} :catch_47

    move-result-object v1

    goto :goto_115

    :cond_16b
    move v1, v2

    goto :goto_11d

    :cond_16d
    move v0, v2

    goto/16 :goto_98
.end method

.method private static wireArrows(Landroid/app/Activity;Landroid/view/ViewGroup;)V
    .registers 9

    .prologue
    const/4 v2, 0x1

    .line 323
    :try_start_1
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "imgNext"

    const-string v3, "id"

    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 324
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string v3, "imgPrevious"

    const-string v4, "id"

    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v3, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 325
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 326
    if-eqz v0, :cond_2b

    invoke-static {p1, v0, v4}, Lfr/testudo/spacecorsair/mod/ModUi;->collect(Landroid/view/View;ILjava/util/List;)V

    .line 327
    :cond_2b
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 328
    if-eqz v1, :cond_34

    invoke-static {p1, v1, v4}, Lfr/testudo/spacecorsair/mod/ModUi;->collect(Landroid/view/View;ILjava/util/List;)V

    .line 329
    :cond_34
    const/4 v0, 0x0

    move v3, v0

    :goto_36
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v3, v0, :cond_6e

    .line 330
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 331
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_58

    const-string v1, "modArrow"

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_58

    .line 329
    :goto_54
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_36

    .line 332
    :cond_58
    if-ge v3, v5, :cond_6f

    move v1, v2

    .line 333
    :goto_5b
    const-string v6, "modArrow"

    invoke-virtual {v0, v6}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 334
    const/4 v6, 0x1

    invoke-virtual {v0, v6}, Landroid/view/View;->setClickable(Z)V

    .line 335
    new-instance v6, Lfr/testudo/spacecorsair/mod/ModUi$11;

    invoke-direct {v6, p0, v1}, Lfr/testudo/spacecorsair/mod/ModUi$11;-><init>(Landroid/app/Activity;I)V

    invoke-virtual {v0, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V
    :try_end_6c
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_6c} :catch_6d

    goto :goto_54

    .line 350
    :catch_6d
    move-exception v0

    .line 353
    :cond_6e
    return-void

    .line 332
    :cond_6f
    const/4 v1, -0x1

    goto :goto_5b
.end method
