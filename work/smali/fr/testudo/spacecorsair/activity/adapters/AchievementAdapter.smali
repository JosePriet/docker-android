.class public Lfr/testudo/spacecorsair/activity/adapters/AchievementAdapter;
.super Landroid/widget/ArrayAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lfr/testudo/spacecorsair/game/achievements/Achievement;",
        ">;"
    }
.end annotation


# instance fields
.field private clickListener:Lfr/testudo/spacecorsair/activity/AchievementClickListener;

.field private context:Landroid/app/Activity;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/util/List;Lfr/testudo/spacecorsair/activity/AchievementClickListener;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/List",
            "<",
            "Lfr/testudo/spacecorsair/game/achievements/Achievement;",
            ">;",
            "Lfr/testudo/spacecorsair/activity/AchievementClickListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 21
    const/4 v0, -0x1

    invoke-direct {p0, p1, v0, p2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 22
    iput-object p1, p0, Lfr/testudo/spacecorsair/activity/adapters/AchievementAdapter;->context:Landroid/app/Activity;

    .line 23
    iput-object p3, p0, Lfr/testudo/spacecorsair/activity/adapters/AchievementAdapter;->clickListener:Lfr/testudo/spacecorsair/activity/AchievementClickListener;

    .line 24
    return-void
.end method

.method static synthetic access$000(Lfr/testudo/spacecorsair/activity/adapters/AchievementAdapter;)Lfr/testudo/spacecorsair/activity/AchievementClickListener;
    .registers 2

    .prologue
    .line 15
    iget-object v0, p0, Lfr/testudo/spacecorsair/activity/adapters/AchievementAdapter;->clickListener:Lfr/testudo/spacecorsair/activity/AchievementClickListener;

    return-object v0
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 7

    .prologue
    .line 29
    invoke-virtual {p0, p1}, Lfr/testudo/spacecorsair/activity/adapters/AchievementAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfr/testudo/spacecorsair/game/achievements/Achievement;

    .line 31
    iget-object v1, p0, Lfr/testudo/spacecorsair/activity/adapters/AchievementAdapter;->context:Landroid/app/Activity;

    invoke-static {v1}, Lfr/testudo/spacecorsair/activity/viewgroup/AchievementItem_;->build(Landroid/content/Context;)Lfr/testudo/spacecorsair/activity/viewgroup/AchievementItem;

    move-result-object v1

    .line 32
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lfr/testudo/spacecorsair/activity/viewgroup/AchievementItem;->setClickable(Z)V

    .line 33
    invoke-virtual {v1, v0}, Lfr/testudo/spacecorsair/activity/viewgroup/AchievementItem;->bind(Lfr/testudo/spacecorsair/game/achievements/Achievement;)V

    .line 34
    new-instance v2, Lfr/testudo/spacecorsair/activity/adapters/AchievementAdapter$1;

    invoke-direct {v2, p0, v0}, Lfr/testudo/spacecorsair/activity/adapters/AchievementAdapter$1;-><init>(Lfr/testudo/spacecorsair/activity/adapters/AchievementAdapter;Lfr/testudo/spacecorsair/game/achievements/Achievement;)V

    invoke-virtual {v1, v2}, Lfr/testudo/spacecorsair/activity/viewgroup/AchievementItem;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 41
    return-object v1
.end method
