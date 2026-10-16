.class public Lfr/testudo/spacecorsair/activity/adapters/MissionAdapter;
.super Landroid/widget/ArrayAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lfr/testudo/spacecorsair/business/mission/Mission;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/List",
            "<",
            "Lfr/testudo/spacecorsair/business/mission/Mission;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 19
    const v0, 0x7f030010

    invoke-direct {p0, p1, v0, p2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 20
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 7

    .prologue
    .line 24
    invoke-virtual {p0, p1}, Lfr/testudo/spacecorsair/activity/adapters/MissionAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfr/testudo/spacecorsair/business/mission/Mission;

    .line 26
    invoke-virtual {p0}, Lfr/testudo/spacecorsair/activity/adapters/MissionAdapter;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lfr/testudo/spacecorsair/activity/viewgroup/MissionItem_;->build(Landroid/content/Context;)Lfr/testudo/spacecorsair/activity/viewgroup/MissionItem;

    move-result-object v1

    .line 27
    invoke-virtual {v1, v0}, Lfr/testudo/spacecorsair/activity/viewgroup/MissionItem;->bind(Lfr/testudo/spacecorsair/business/mission/Mission;)V

    .line 28
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lfr/testudo/spacecorsair/activity/viewgroup/MissionItem;->setTag(Ljava/lang/Object;)V

    .line 30
    return-object v1
.end method
