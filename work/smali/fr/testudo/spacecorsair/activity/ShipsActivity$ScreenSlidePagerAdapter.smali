.class Lfr/testudo/spacecorsair/activity/ShipsActivity$ScreenSlidePagerAdapter;
.super Landroid/support/v4/app/o;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfr/testudo/spacecorsair/activity/ShipsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ScreenSlidePagerAdapter"
.end annotation


# instance fields
.field private context:Lfr/testudo/spacecorsair/activity/ShipsActivity;

.field ships:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lfr/testudo/spacecorsair/activity/ShipsActivity;


# direct methods
.method private constructor <init>(Lfr/testudo/spacecorsair/activity/ShipsActivity;Landroid/support/v4/app/i;Ljava/util/List;Lfr/testudo/spacecorsair/activity/ShipsActivity;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/app/i;",
            "Ljava/util/List",
            "<",
            "Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;",
            ">;",
            "Lfr/testudo/spacecorsair/activity/ShipsActivity;",
            ")V"
        }
    .end annotation

    .prologue
    .line 122
    iput-object p1, p0, Lfr/testudo/spacecorsair/activity/ShipsActivity$ScreenSlidePagerAdapter;->this$0:Lfr/testudo/spacecorsair/activity/ShipsActivity;

    .line 123
    invoke-direct {p0, p2}, Landroid/support/v4/app/o;-><init>(Landroid/support/v4/app/i;)V

    .line 124
    iput-object p3, p0, Lfr/testudo/spacecorsair/activity/ShipsActivity$ScreenSlidePagerAdapter;->ships:Ljava/util/List;

    .line 125
    iput-object p4, p0, Lfr/testudo/spacecorsair/activity/ShipsActivity$ScreenSlidePagerAdapter;->context:Lfr/testudo/spacecorsair/activity/ShipsActivity;

    .line 126
    return-void
.end method

.method synthetic constructor <init>(Lfr/testudo/spacecorsair/activity/ShipsActivity;Landroid/support/v4/app/i;Ljava/util/List;Lfr/testudo/spacecorsair/activity/ShipsActivity;Lfr/testudo/spacecorsair/activity/ShipsActivity$1;)V
    .registers 6

    .prologue
    .line 114
    invoke-direct {p0, p1, p2, p3, p4}, Lfr/testudo/spacecorsair/activity/ShipsActivity$ScreenSlidePagerAdapter;-><init>(Lfr/testudo/spacecorsair/activity/ShipsActivity;Landroid/support/v4/app/i;Ljava/util/List;Lfr/testudo/spacecorsair/activity/ShipsActivity;)V

    return-void
.end method


# virtual methods
.method public getCount()I
    .registers 2

    .prologue
    .line 138
    iget-object v0, p0, Lfr/testudo/spacecorsair/activity/ShipsActivity$ScreenSlidePagerAdapter;->ships:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Landroid/support/v4/app/Fragment;
    .registers 9

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 132
    new-instance v4, Lfr/testudo/spacecorsair/activity/viewgroup/SpaceShipItem;

    iget-object v0, p0, Lfr/testudo/spacecorsair/activity/ShipsActivity$ScreenSlidePagerAdapter;->ships:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    iget-object v5, p0, Lfr/testudo/spacecorsair/activity/ShipsActivity$ScreenSlidePagerAdapter;->context:Lfr/testudo/spacecorsair/activity/ShipsActivity;

    if-nez p1, :cond_1f

    move v1, v2

    :goto_11
    iget-object v6, p0, Lfr/testudo/spacecorsair/activity/ShipsActivity$ScreenSlidePagerAdapter;->ships:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    if-ne p1, v6, :cond_21

    :goto_1b
    invoke-direct {v4, v0, v5, v1, v2}, Lfr/testudo/spacecorsair/activity/viewgroup/SpaceShipItem;-><init>(Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;Lfr/testudo/spacecorsair/activity/ShipsActivity;ZZ)V

    return-object v4

    :cond_1f
    move v1, v3

    goto :goto_11

    :cond_21
    move v2, v3

    goto :goto_1b
.end method
