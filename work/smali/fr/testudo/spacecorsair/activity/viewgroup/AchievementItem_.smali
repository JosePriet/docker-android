.class public final Lfr/testudo/spacecorsair/activity/viewgroup/AchievementItem_;
.super Lfr/testudo/spacecorsair/activity/viewgroup/AchievementItem;
.source "SourceFile"


# instance fields
.field private context_:Landroid/content/Context;

.field private mAlreadyInflated_:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lfr/testudo/spacecorsair/activity/viewgroup/AchievementItem;-><init>(Landroid/content/Context;)V

    .line 32
    const/4 v0, 0x0

    iput-boolean v0, p0, Lfr/testudo/spacecorsair/activity/viewgroup/AchievementItem_;->mAlreadyInflated_:Z

    .line 36
    invoke-direct {p0}, Lfr/testudo/spacecorsair/activity/viewgroup/AchievementItem_;->init_()V

    .line 37
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    .prologue
    .line 40
    invoke-direct {p0, p1, p2}, Lfr/testudo/spacecorsair/activity/viewgroup/AchievementItem;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 32
    const/4 v0, 0x0

    iput-boolean v0, p0, Lfr/testudo/spacecorsair/activity/viewgroup/AchievementItem_;->mAlreadyInflated_:Z

    .line 41
    invoke-direct {p0}, Lfr/testudo/spacecorsair/activity/viewgroup/AchievementItem_;->init_()V

    .line 42
    return-void
.end method

.method private afterSetContentView_()V
    .registers 2

    .prologue
    .line 52
    const v0, 0x7f0a0010

    invoke-virtual {p0, v0}, Lfr/testudo/spacecorsair/activity/viewgroup/AchievementItem_;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lfr/testudo/spacecorsair/activity/viewgroup/AchievementItem_;->imgShare:Landroid/widget/ImageView;

    .line 53
    const v0, 0x7f0a000f

    invoke-virtual {p0, v0}, Lfr/testudo/spacecorsair/activity/viewgroup/AchievementItem_;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lfr/testudo/spacecorsair/activity/viewgroup/AchievementItem_;->txtProgress:Landroid/widget/TextView;

    .line 54
    const v0, 0x7f0a0009

    invoke-virtual {p0, v0}, Lfr/testudo/spacecorsair/activity/viewgroup/AchievementItem_;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lfr/testudo/spacecorsair/activity/viewgroup/AchievementItem_;->txtAchievementName:Landroid/widget/TextView;

    .line 55
    const v0, 0x7f0a0007

    invoke-virtual {p0, v0}, Lfr/testudo/spacecorsair/activity/viewgroup/AchievementItem_;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lfr/testudo/spacecorsair/activity/viewgroup/AchievementItem_;->imgAchivement:Landroid/widget/ImageView;

    .line 56
    const v0, 0x7f0a000d

    invoke-virtual {p0, v0}, Lfr/testudo/spacecorsair/activity/viewgroup/AchievementItem_;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lfr/testudo/spacecorsair/activity/viewgroup/AchievementItem_;->layProgress:Landroid/widget/RelativeLayout;

    .line 57
    const v0, 0x7f0a000c

    invoke-virtual {p0, v0}, Lfr/testudo/spacecorsair/activity/viewgroup/AchievementItem_;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lfr/testudo/spacecorsair/activity/viewgroup/AchievementItem_;->layAchievementItem:Landroid/widget/RelativeLayout;

    .line 58
    const v0, 0x7f0a000a

    invoke-virtual {p0, v0}, Lfr/testudo/spacecorsair/activity/viewgroup/AchievementItem_;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lfr/testudo/spacecorsair/activity/viewgroup/AchievementItem_;->txtAchievementDesc:Landroid/widget/TextView;

    .line 59
    const v0, 0x7f0a000e

    invoke-virtual {p0, v0}, Lfr/testudo/spacecorsair/activity/viewgroup/AchievementItem_;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lfr/testudo/spacecorsair/activity/viewgroup/AchievementItem_;->pgbProgress:Landroid/widget/ProgressBar;

    .line 60
    return-void
.end method

.method public static build(Landroid/content/Context;)Lfr/testudo/spacecorsair/activity/viewgroup/AchievementItem;
    .registers 2

    .prologue
    .line 80
    new-instance v0, Lfr/testudo/spacecorsair/activity/viewgroup/AchievementItem_;

    invoke-direct {v0, p0}, Lfr/testudo/spacecorsair/activity/viewgroup/AchievementItem_;-><init>(Landroid/content/Context;)V

    .line 81
    invoke-virtual {v0}, Lfr/testudo/spacecorsair/activity/viewgroup/AchievementItem_;->onFinishInflate()V

    .line 82
    return-object v0
.end method

.method public static build(Landroid/content/Context;Landroid/util/AttributeSet;)Lfr/testudo/spacecorsair/activity/viewgroup/AchievementItem;
    .registers 3

    .prologue
    .line 86
    new-instance v0, Lfr/testudo/spacecorsair/activity/viewgroup/AchievementItem_;

    invoke-direct {v0, p0, p1}, Lfr/testudo/spacecorsair/activity/viewgroup/AchievementItem_;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 87
    invoke-virtual {v0}, Lfr/testudo/spacecorsair/activity/viewgroup/AchievementItem_;->onFinishInflate()V

    .line 88
    return-object v0
.end method

.method private init_()V
    .registers 2

    .prologue
    .line 45
    invoke-virtual {p0}, Lfr/testudo/spacecorsair/activity/viewgroup/AchievementItem_;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lfr/testudo/spacecorsair/activity/viewgroup/AchievementItem_;->context_:Landroid/content/Context;

    .line 46
    iget-object v0, p0, Lfr/testudo/spacecorsair/activity/viewgroup/AchievementItem_;->context_:Landroid/content/Context;

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_10

    .line 47
    iget-object v0, p0, Lfr/testudo/spacecorsair/activity/viewgroup/AchievementItem_;->context_:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    .line 49
    :cond_10
    return-void
.end method


# virtual methods
.method public onFinishInflate()V
    .registers 3

    .prologue
    .line 71
    iget-boolean v0, p0, Lfr/testudo/spacecorsair/activity/viewgroup/AchievementItem_;->mAlreadyInflated_:Z

    if-nez v0, :cond_14

    .line 72
    const/4 v0, 0x1

    iput-boolean v0, p0, Lfr/testudo/spacecorsair/activity/viewgroup/AchievementItem_;->mAlreadyInflated_:Z

    .line 73
    invoke-virtual {p0}, Lfr/testudo/spacecorsair/activity/viewgroup/AchievementItem_;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f030001

    invoke-static {v0, v1, p0}, Lfr/testudo/spacecorsair/activity/viewgroup/AchievementItem_;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 74
    invoke-direct {p0}, Lfr/testudo/spacecorsair/activity/viewgroup/AchievementItem_;->afterSetContentView_()V

    .line 76
    :cond_14
    invoke-super {p0}, Lfr/testudo/spacecorsair/activity/viewgroup/AchievementItem;->onFinishInflate()V

    .line 77
    return-void
.end method
