.class public Lfr/testudo/spacecorsair/activity/StatsActivity;
.super Lfr/testudo/spacecorsair/activity/CommonActivity;
.source "SourceFile"


# static fields
.field public static final SEQUENCE_SPEED:I = 0x14

.field static mogaYScroll:I


# instance fields
.field currentListPos:I

.field currentListPosMoga:F

.field listStatItems:Landroid/widget/ListView;

.field statAdapter:Lfr/testudo/spacecorsair/activity/adapters/StatAdapter;

.field public statClickListener:Lfr/testudo/spacecorsair/activity/StatClickListener;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 88
    const/4 v0, 0x0

    sput v0, Lfr/testudo/spacecorsair/activity/StatsActivity;->mogaYScroll:I

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 24
    invoke-direct {p0}, Lfr/testudo/spacecorsair/activity/CommonActivity;-><init>()V

    .line 65
    new-instance v0, Lfr/testudo/spacecorsair/activity/StatsActivity$1;

    invoke-direct {v0, p0}, Lfr/testudo/spacecorsair/activity/StatsActivity$1;-><init>(Lfr/testudo/spacecorsair/activity/StatsActivity;)V

    iput-object v0, p0, Lfr/testudo/spacecorsair/activity/StatsActivity;->statClickListener:Lfr/testudo/spacecorsair/activity/StatClickListener;

    .line 90
    const/4 v0, 0x0

    iput v0, p0, Lfr/testudo/spacecorsair/activity/StatsActivity;->currentListPos:I

    .line 91
    const/4 v0, 0x0

    iput v0, p0, Lfr/testudo/spacecorsair/activity/StatsActivity;->currentListPosMoga:F

    return-void
.end method


# virtual methods
.method public bindUI()V
    .registers 4

    .prologue
    .line 50
    invoke-static {p0}, Lfr/testudo/spacecorsair/business/Util;->removeAddIfNecessary(Landroid/app/Activity;)V

    .line 52
    new-instance v0, Lfr/testudo/spacecorsair/activity/adapters/StatAdapter;

    sget-object v1, Lfr/testudo/spacecorsair/game/achievements/StatModule;->STAT_ITEMS:[Lfr/testudo/spacecorsair/game/achievements/StatItem;

    iget-object v2, p0, Lfr/testudo/spacecorsair/activity/StatsActivity;->statClickListener:Lfr/testudo/spacecorsair/activity/StatClickListener;

    invoke-direct {v0, p0, v1, v2}, Lfr/testudo/spacecorsair/activity/adapters/StatAdapter;-><init>(Landroid/app/Activity;[Lfr/testudo/spacecorsair/game/achievements/StatItem;Lfr/testudo/spacecorsair/activity/StatClickListener;)V

    iput-object v0, p0, Lfr/testudo/spacecorsair/activity/StatsActivity;->statAdapter:Lfr/testudo/spacecorsair/activity/adapters/StatAdapter;

    .line 53
    iget-object v0, p0, Lfr/testudo/spacecorsair/activity/StatsActivity;->listStatItems:Landroid/widget/ListView;

    iget-object v1, p0, Lfr/testudo/spacecorsair/activity/StatsActivity;->statAdapter:Lfr/testudo/spacecorsair/activity/adapters/StatAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 56
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-boolean v0, v0, Lfr/testudo/spacecorsair/game/Game;->mogaConnected:Z

    if-eqz v0, :cond_22

    .line 57
    iget-object v0, p0, Lfr/testudo/spacecorsair/activity/StatsActivity;->listStatItems:Landroid/widget/ListView;

    invoke-virtual {p0, v0}, Lfr/testudo/spacecorsair/activity/StatsActivity;->makeItScrollableByMoga(Landroid/widget/ListView;)V

    .line 60
    :cond_22
    const/4 v0, 0x0

    iput v0, p0, Lfr/testudo/spacecorsair/activity/StatsActivity;->currentListPos:I

    .line 62
    return-void
.end method

.method public makeItScrollableByMoga(Landroid/widget/ListView;)V
    .registers 8

    .prologue
    const-wide/16 v2, 0x14

    .line 105
    .line 106
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    .line 107
    new-instance v1, Lfr/testudo/spacecorsair/activity/StatsActivity$2;

    invoke-direct {v1, p0, p0, p1}, Lfr/testudo/spacecorsair/activity/StatsActivity$2;-><init>(Lfr/testudo/spacecorsair/activity/StatsActivity;Landroid/app/Activity;Landroid/widget/ListView;)V

    move-wide v4, v2

    .line 137
    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 138
    return-void
.end method

.method public onMotionEvent(Lcom/bda/controller/MotionEvent;)V
    .registers 4

    .prologue
    .line 99
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/bda/controller/MotionEvent;->getAxisValue(I)F

    move-result v0

    const/high16 v1, 0x41700000    # 15.0f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    sput v0, Lfr/testudo/spacecorsair/activity/StatsActivity;->mogaYScroll:I

    .line 100
    return-void
.end method

.method public onStart()V
    .registers 1

    .prologue
    .line 34
    invoke-super {p0}, Lfr/testudo/spacecorsair/activity/CommonActivity;->onStart()V

    .line 37
    return-void
.end method

.method public onStop()V
    .registers 1

    .prologue
    .line 41
    invoke-super {p0}, Lfr/testudo/spacecorsair/activity/CommonActivity;->onStop()V

    .line 43
    return-void
.end method
