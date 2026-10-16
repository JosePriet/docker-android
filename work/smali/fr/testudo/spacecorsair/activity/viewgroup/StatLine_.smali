.class public final Lfr/testudo/spacecorsair/activity/viewgroup/StatLine_;
.super Lfr/testudo/spacecorsair/activity/viewgroup/StatLine;
.source "SourceFile"


# instance fields
.field private context_:Landroid/content/Context;

.field private mAlreadyInflated_:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lfr/testudo/spacecorsair/activity/viewgroup/StatLine;-><init>(Landroid/content/Context;)V

    .line 28
    const/4 v0, 0x0

    iput-boolean v0, p0, Lfr/testudo/spacecorsair/activity/viewgroup/StatLine_;->mAlreadyInflated_:Z

    .line 32
    invoke-direct {p0}, Lfr/testudo/spacecorsair/activity/viewgroup/StatLine_;->init_()V

    .line 33
    return-void
.end method

.method private afterSetContentView_()V
    .registers 2

    .prologue
    .line 43
    const v0, 0x7f0a0126

    invoke-virtual {p0, v0}, Lfr/testudo/spacecorsair/activity/viewgroup/StatLine_;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lfr/testudo/spacecorsair/activity/viewgroup/StatLine_;->txtStatName:Landroid/widget/TextView;

    .line 44
    const v0, 0x7f0a0127

    invoke-virtual {p0, v0}, Lfr/testudo/spacecorsair/activity/viewgroup/StatLine_;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lfr/testudo/spacecorsair/activity/viewgroup/StatLine_;->txtStatValue:Landroid/widget/TextView;

    .line 45
    return-void
.end method

.method public static build(Landroid/content/Context;)Lfr/testudo/spacecorsair/activity/viewgroup/StatLine;
    .registers 2

    .prologue
    .line 65
    new-instance v0, Lfr/testudo/spacecorsair/activity/viewgroup/StatLine_;

    invoke-direct {v0, p0}, Lfr/testudo/spacecorsair/activity/viewgroup/StatLine_;-><init>(Landroid/content/Context;)V

    .line 66
    invoke-virtual {v0}, Lfr/testudo/spacecorsair/activity/viewgroup/StatLine_;->onFinishInflate()V

    .line 67
    return-object v0
.end method

.method private init_()V
    .registers 2

    .prologue
    .line 36
    invoke-virtual {p0}, Lfr/testudo/spacecorsair/activity/viewgroup/StatLine_;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lfr/testudo/spacecorsair/activity/viewgroup/StatLine_;->context_:Landroid/content/Context;

    .line 37
    iget-object v0, p0, Lfr/testudo/spacecorsair/activity/viewgroup/StatLine_;->context_:Landroid/content/Context;

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_10

    .line 38
    iget-object v0, p0, Lfr/testudo/spacecorsair/activity/viewgroup/StatLine_;->context_:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    .line 40
    :cond_10
    return-void
.end method


# virtual methods
.method public onFinishInflate()V
    .registers 3

    .prologue
    .line 56
    iget-boolean v0, p0, Lfr/testudo/spacecorsair/activity/viewgroup/StatLine_;->mAlreadyInflated_:Z

    if-nez v0, :cond_14

    .line 57
    const/4 v0, 0x1

    iput-boolean v0, p0, Lfr/testudo/spacecorsair/activity/viewgroup/StatLine_;->mAlreadyInflated_:Z

    .line 58
    invoke-virtual {p0}, Lfr/testudo/spacecorsair/activity/viewgroup/StatLine_;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f03001c

    invoke-static {v0, v1, p0}, Lfr/testudo/spacecorsair/activity/viewgroup/StatLine_;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 59
    invoke-direct {p0}, Lfr/testudo/spacecorsair/activity/viewgroup/StatLine_;->afterSetContentView_()V

    .line 61
    :cond_14
    invoke-super {p0}, Lfr/testudo/spacecorsair/activity/viewgroup/StatLine;->onFinishInflate()V

    .line 62
    return-void
.end method
