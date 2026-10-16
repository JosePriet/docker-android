.class public Lfr/testudo/spacecorsair/activity/AchievementActivity;
.super Lfr/testudo/spacecorsair/activity/CommonActivity;
.source "SourceFile"


# static fields
.field public static final SEQUENCE_SPEED:I = 0x14

.field static mogaYScroll:I


# instance fields
.field private adapter:Lfr/testudo/spacecorsair/activity/adapters/AchievementAdapter;

.field clickListener:Lfr/testudo/spacecorsair/activity/AchievementClickListener;

.field currentListPos:I

.field currentListPosMoga:F

.field protected listAchievements:Landroid/widget/ListView;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 81
    const/4 v0, 0x0

    sput v0, Lfr/testudo/spacecorsair/activity/AchievementActivity;->mogaYScroll:I

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 22
    invoke-direct {p0}, Lfr/testudo/spacecorsair/activity/CommonActivity;-><init>()V

    .line 56
    new-instance v0, Lfr/testudo/spacecorsair/activity/AchievementActivity$1;

    invoke-direct {v0, p0}, Lfr/testudo/spacecorsair/activity/AchievementActivity$1;-><init>(Lfr/testudo/spacecorsair/activity/AchievementActivity;)V

    iput-object v0, p0, Lfr/testudo/spacecorsair/activity/AchievementActivity;->clickListener:Lfr/testudo/spacecorsair/activity/AchievementClickListener;

    .line 83
    const/4 v0, 0x0

    iput v0, p0, Lfr/testudo/spacecorsair/activity/AchievementActivity;->currentListPos:I

    .line 84
    const/4 v0, 0x0

    iput v0, p0, Lfr/testudo/spacecorsair/activity/AchievementActivity;->currentListPosMoga:F

    return-void
.end method


# virtual methods
.method public bindUI()V
    .registers 4

    .prologue
    .line 36
    new-instance v0, Lfr/testudo/spacecorsair/activity/adapters/AchievementAdapter;

    invoke-static {}, Lfr/testudo/spacecorsair/game/achievements/Achievement;->getVisibleValues()Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lfr/testudo/spacecorsair/activity/AchievementActivity;->clickListener:Lfr/testudo/spacecorsair/activity/AchievementClickListener;

    invoke-direct {v0, p0, v1, v2}, Lfr/testudo/spacecorsair/activity/adapters/AchievementAdapter;-><init>(Landroid/app/Activity;Ljava/util/List;Lfr/testudo/spacecorsair/activity/AchievementClickListener;)V

    iput-object v0, p0, Lfr/testudo/spacecorsair/activity/AchievementActivity;->adapter:Lfr/testudo/spacecorsair/activity/adapters/AchievementAdapter;

    .line 37
    iget-object v0, p0, Lfr/testudo/spacecorsair/activity/AchievementActivity;->listAchievements:Landroid/widget/ListView;

    invoke-static {p0}, Lfr/testudo/spacecorsair/activity/viewgroup/AchievementItem;->getHeader(Landroid/content/Context;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    .line 38
    iget-object v0, p0, Lfr/testudo/spacecorsair/activity/AchievementActivity;->listAchievements:Landroid/widget/ListView;

    iget-object v1, p0, Lfr/testudo/spacecorsair/activity/AchievementActivity;->adapter:Lfr/testudo/spacecorsair/activity/adapters/AchievementAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 40
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-boolean v0, v0, Lfr/testudo/spacecorsair/game/Game;->mogaConnected:Z

    if-eqz v0, :cond_2a

    .line 41
    iget-object v0, p0, Lfr/testudo/spacecorsair/activity/AchievementActivity;->listAchievements:Landroid/widget/ListView;

    invoke-virtual {p0, v0}, Lfr/testudo/spacecorsair/activity/AchievementActivity;->makeItScrollableByMoga(Landroid/widget/ListView;)V

    .line 43
    :cond_2a
    return-void
.end method

.method public makeItScrollableByMoga(Landroid/widget/ListView;)V
    .registers 8

    .prologue
    const-wide/16 v2, 0x14

    .line 98
    .line 99
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    .line 100
    new-instance v1, Lfr/testudo/spacecorsair/activity/AchievementActivity$2;

    invoke-direct {v1, p0, p0, p1}, Lfr/testudo/spacecorsair/activity/AchievementActivity$2;-><init>(Lfr/testudo/spacecorsair/activity/AchievementActivity;Landroid/app/Activity;Landroid/widget/ListView;)V

    move-wide v4, v2

    .line 130
    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 131
    return-void
.end method

.method public onMotionEvent(Lcom/bda/controller/MotionEvent;)V
    .registers 4

    .prologue
    .line 92
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/bda/controller/MotionEvent;->getAxisValue(I)F

    move-result v0

    const/high16 v1, 0x41700000    # 15.0f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    sput v0, Lfr/testudo/spacecorsair/activity/AchievementActivity;->mogaYScroll:I

    .line 93
    return-void
.end method

.method public onStart()V
    .registers 1

    .prologue
    .line 47
    invoke-super {p0}, Lfr/testudo/spacecorsair/activity/CommonActivity;->onStart()V

    .line 48
    return-void
.end method

.method public onStop()V
    .registers 1

    .prologue
    .line 52
    invoke-super {p0}, Lfr/testudo/spacecorsair/activity/CommonActivity;->onStop()V

    .line 53
    return-void
.end method

.method public removeAdd()V
    .registers 1

    .prologue
    .line 31
    invoke-static {p0}, Lfr/testudo/spacecorsair/business/Util;->removeAddIfNecessary(Landroid/app/Activity;)V

    .line 32
    return-void
.end method
