.class public Lfr/testudo/spacecorsair/activity/adapters/StatAdapter;
.super Landroid/widget/ArrayAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lfr/testudo/spacecorsair/game/achievements/StatItem;",
        ">;"
    }
.end annotation


# instance fields
.field private statListener:Lfr/testudo/spacecorsair/activity/StatClickListener;


# direct methods
.method public constructor <init>(Landroid/app/Activity;[Lfr/testudo/spacecorsair/game/achievements/StatItem;Lfr/testudo/spacecorsair/activity/StatClickListener;)V
    .registers 5

    .prologue
    .line 25
    const v0, 0x7f030010

    invoke-direct {p0, p1, v0, p2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 26
    iput-object p3, p0, Lfr/testudo/spacecorsair/activity/adapters/StatAdapter;->statListener:Lfr/testudo/spacecorsair/activity/StatClickListener;

    .line 27
    return-void
.end method

.method static synthetic access$000(Lfr/testudo/spacecorsair/activity/adapters/StatAdapter;)Lfr/testudo/spacecorsair/activity/StatClickListener;
    .registers 2

    .prologue
    .line 20
    iget-object v0, p0, Lfr/testudo/spacecorsair/activity/adapters/StatAdapter;->statListener:Lfr/testudo/spacecorsair/activity/StatClickListener;

    return-object v0
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 7

    .prologue
    .line 31
    invoke-virtual {p0, p1}, Lfr/testudo/spacecorsair/activity/adapters/StatAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfr/testudo/spacecorsair/game/achievements/StatItem;

    .line 32
    invoke-virtual {p0}, Lfr/testudo/spacecorsair/activity/adapters/StatAdapter;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lfr/testudo/spacecorsair/activity/viewgroup/StatLine_;->build(Landroid/content/Context;)Lfr/testudo/spacecorsair/activity/viewgroup/StatLine;

    move-result-object v1

    .line 33
    invoke-virtual {v1, v0}, Lfr/testudo/spacecorsair/activity/viewgroup/StatLine;->bind(Lfr/testudo/spacecorsair/game/achievements/StatItem;)V

    .line 34
    new-instance v2, Lfr/testudo/spacecorsair/activity/adapters/StatAdapter$1;

    invoke-direct {v2, p0, v0}, Lfr/testudo/spacecorsair/activity/adapters/StatAdapter$1;-><init>(Lfr/testudo/spacecorsair/activity/adapters/StatAdapter;Lfr/testudo/spacecorsair/game/achievements/StatItem;)V

    invoke-virtual {v1, v2}, Lfr/testudo/spacecorsair/activity/viewgroup/StatLine;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 41
    return-object v1
.end method
