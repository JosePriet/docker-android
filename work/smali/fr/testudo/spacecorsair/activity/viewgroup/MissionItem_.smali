.class public final Lfr/testudo/spacecorsair/activity/viewgroup/MissionItem_;
.super Lfr/testudo/spacecorsair/activity/viewgroup/MissionItem;
.source "SourceFile"


# instance fields
.field private context_:Landroid/content/Context;

.field private mAlreadyInflated_:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lfr/testudo/spacecorsair/activity/viewgroup/MissionItem;-><init>(Landroid/content/Context;)V

    .line 34
    const/4 v0, 0x0

    iput-boolean v0, p0, Lfr/testudo/spacecorsair/activity/viewgroup/MissionItem_;->mAlreadyInflated_:Z

    .line 38
    invoke-direct {p0}, Lfr/testudo/spacecorsair/activity/viewgroup/MissionItem_;->init_()V

    .line 39
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    .prologue
    .line 42
    invoke-direct {p0, p1, p2}, Lfr/testudo/spacecorsair/activity/viewgroup/MissionItem;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 34
    const/4 v0, 0x0

    iput-boolean v0, p0, Lfr/testudo/spacecorsair/activity/viewgroup/MissionItem_;->mAlreadyInflated_:Z

    .line 43
    invoke-direct {p0}, Lfr/testudo/spacecorsair/activity/viewgroup/MissionItem_;->init_()V

    .line 44
    return-void
.end method

.method private afterSetContentView_()V
    .registers 6

    .prologue
    const v4, 0x7f0a00ad

    const v3, 0x7f0a00ac

    const v2, 0x7f0a00ab

    .line 54
    const v0, 0x7f0a00a1

    invoke-virtual {p0, v0}, Lfr/testudo/spacecorsair/activity/viewgroup/MissionItem_;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lfr/testudo/spacecorsair/activity/viewgroup/MissionItem_;->layRewards:Landroid/view/ViewGroup;

    .line 55
    const v0, 0x7f0a00a4

    invoke-virtual {p0, v0}, Lfr/testudo/spacecorsair/activity/viewgroup/MissionItem_;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lfr/testudo/spacecorsair/activity/viewgroup/MissionItem_;->txtRepeatable:Landroid/widget/TextView;

    .line 56
    invoke-virtual {p0, v3}, Lfr/testudo/spacecorsair/activity/viewgroup/MissionItem_;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lfr/testudo/spacecorsair/activity/viewgroup/MissionItem_;->btnAccept:Landroid/widget/Button;

    .line 57
    const v0, 0x7f0a009e

    invoke-virtual {p0, v0}, Lfr/testudo/spacecorsair/activity/viewgroup/MissionItem_;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lfr/testudo/spacecorsair/activity/viewgroup/MissionItem_;->txtCredits:Landroid/widget/TextView;

    .line 58
    const v0, 0x7f0a00a9

    invoke-virtual {p0, v0}, Lfr/testudo/spacecorsair/activity/viewgroup/MissionItem_;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lfr/testudo/spacecorsair/activity/viewgroup/MissionItem_;->txtDescription:Landroid/widget/TextView;

    .line 59
    const v0, 0x7f0a00a7

    invoke-virtual {p0, v0}, Lfr/testudo/spacecorsair/activity/viewgroup/MissionItem_;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lfr/testudo/spacecorsair/activity/viewgroup/MissionItem_;->imgInstructions:Landroid/widget/ImageView;

    .line 60
    const v0, 0x7f0a009d

    invoke-virtual {p0, v0}, Lfr/testudo/spacecorsair/activity/viewgroup/MissionItem_;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lfr/testudo/spacecorsair/activity/viewgroup/MissionItem_;->txtName:Landroid/widget/TextView;

    .line 61
    const v0, 0x7f0a00a6

    invoke-virtual {p0, v0}, Lfr/testudo/spacecorsair/activity/viewgroup/MissionItem_;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lfr/testudo/spacecorsair/activity/viewgroup/MissionItem_;->txtAlreadyDone:Landroid/widget/TextView;

    .line 62
    const v0, 0x7f0a00a8

    invoke-virtual {p0, v0}, Lfr/testudo/spacecorsair/activity/viewgroup/MissionItem_;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lfr/testudo/spacecorsair/activity/viewgroup/MissionItem_;->txtInstruction:Landroid/widget/TextView;

    .line 63
    invoke-virtual {p0, v4}, Lfr/testudo/spacecorsair/activity/viewgroup/MissionItem_;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lfr/testudo/spacecorsair/activity/viewgroup/MissionItem_;->btnReward:Landroid/widget/Button;

    .line 64
    const v0, 0x7f0a00a0

    invoke-virtual {p0, v0}, Lfr/testudo/spacecorsair/activity/viewgroup/MissionItem_;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lfr/testudo/spacecorsair/activity/viewgroup/MissionItem_;->txtLevelTitle:Landroid/widget/TextView;

    .line 65
    const v0, 0x7f0a004b

    invoke-virtual {p0, v0}, Lfr/testudo/spacecorsair/activity/viewgroup/MissionItem_;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lfr/testudo/spacecorsair/activity/viewgroup/MissionItem_;->txtLevel:Landroid/widget/TextView;

    .line 66
    const v0, 0x7f0a00a2

    invoke-virtual {p0, v0}, Lfr/testudo/spacecorsair/activity/viewgroup/MissionItem_;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lfr/testudo/spacecorsair/activity/viewgroup/MissionItem_;->imgRewards:Landroid/widget/ImageView;

    .line 67
    const v0, 0x7f0a009f

    invoke-virtual {p0, v0}, Lfr/testudo/spacecorsair/activity/viewgroup/MissionItem_;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lfr/testudo/spacecorsair/activity/viewgroup/MissionItem_;->txtXp:Landroid/widget/TextView;

    .line 68
    invoke-virtual {p0, v2}, Lfr/testudo/spacecorsair/activity/viewgroup/MissionItem_;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lfr/testudo/spacecorsair/activity/viewgroup/MissionItem_;->btnGiveUp:Landroid/widget/Button;

    .line 69
    const v0, 0x7f0a00a3

    invoke-virtual {p0, v0}, Lfr/testudo/spacecorsair/activity/viewgroup/MissionItem_;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lfr/testudo/spacecorsair/activity/viewgroup/MissionItem_;->imgRepeatable:Landroid/widget/ImageView;

    .line 70
    const v0, 0x7f0a00a5

    invoke-virtual {p0, v0}, Lfr/testudo/spacecorsair/activity/viewgroup/MissionItem_;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lfr/testudo/spacecorsair/activity/viewgroup/MissionItem_;->imgAlreadyDone:Landroid/widget/ImageView;

    .line 72
    const v0, 0x7f0a0054

    invoke-virtual {p0, v0}, Lfr/testudo/spacecorsair/activity/viewgroup/MissionItem_;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 73
    if-eqz v0, :cond_cc

    .line 74
    new-instance v1, Lfr/testudo/spacecorsair/activity/viewgroup/MissionItem_$1;

    invoke-direct {v1, p0}, Lfr/testudo/spacecorsair/activity/viewgroup/MissionItem_$1;-><init>(Lfr/testudo/spacecorsair/activity/viewgroup/MissionItem_;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 87
    :cond_cc
    invoke-virtual {p0, v2}, Lfr/testudo/spacecorsair/activity/viewgroup/MissionItem_;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 88
    if-eqz v0, :cond_da

    .line 89
    new-instance v1, Lfr/testudo/spacecorsair/activity/viewgroup/MissionItem_$2;

    invoke-direct {v1, p0}, Lfr/testudo/spacecorsair/activity/viewgroup/MissionItem_$2;-><init>(Lfr/testudo/spacecorsair/activity/viewgroup/MissionItem_;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 102
    :cond_da
    invoke-virtual {p0, v3}, Lfr/testudo/spacecorsair/activity/viewgroup/MissionItem_;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 103
    if-eqz v0, :cond_e8

    .line 104
    new-instance v1, Lfr/testudo/spacecorsair/activity/viewgroup/MissionItem_$3;

    invoke-direct {v1, p0}, Lfr/testudo/spacecorsair/activity/viewgroup/MissionItem_$3;-><init>(Lfr/testudo/spacecorsair/activity/viewgroup/MissionItem_;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 117
    :cond_e8
    invoke-virtual {p0, v4}, Lfr/testudo/spacecorsair/activity/viewgroup/MissionItem_;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 118
    if-eqz v0, :cond_f6

    .line 119
    new-instance v1, Lfr/testudo/spacecorsair/activity/viewgroup/MissionItem_$4;

    invoke-direct {v1, p0}, Lfr/testudo/spacecorsair/activity/viewgroup/MissionItem_$4;-><init>(Lfr/testudo/spacecorsair/activity/viewgroup/MissionItem_;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 131
    :cond_f6
    return-void
.end method

.method public static build(Landroid/content/Context;)Lfr/testudo/spacecorsair/activity/viewgroup/MissionItem;
    .registers 2

    .prologue
    .line 151
    new-instance v0, Lfr/testudo/spacecorsair/activity/viewgroup/MissionItem_;

    invoke-direct {v0, p0}, Lfr/testudo/spacecorsair/activity/viewgroup/MissionItem_;-><init>(Landroid/content/Context;)V

    .line 152
    invoke-virtual {v0}, Lfr/testudo/spacecorsair/activity/viewgroup/MissionItem_;->onFinishInflate()V

    .line 153
    return-object v0
.end method

.method public static build(Landroid/content/Context;Landroid/util/AttributeSet;)Lfr/testudo/spacecorsair/activity/viewgroup/MissionItem;
    .registers 3

    .prologue
    .line 157
    new-instance v0, Lfr/testudo/spacecorsair/activity/viewgroup/MissionItem_;

    invoke-direct {v0, p0, p1}, Lfr/testudo/spacecorsair/activity/viewgroup/MissionItem_;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 158
    invoke-virtual {v0}, Lfr/testudo/spacecorsair/activity/viewgroup/MissionItem_;->onFinishInflate()V

    .line 159
    return-object v0
.end method

.method private init_()V
    .registers 2

    .prologue
    .line 47
    invoke-virtual {p0}, Lfr/testudo/spacecorsair/activity/viewgroup/MissionItem_;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lfr/testudo/spacecorsair/activity/viewgroup/MissionItem_;->context_:Landroid/content/Context;

    .line 48
    iget-object v0, p0, Lfr/testudo/spacecorsair/activity/viewgroup/MissionItem_;->context_:Landroid/content/Context;

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_10

    .line 49
    iget-object v0, p0, Lfr/testudo/spacecorsair/activity/viewgroup/MissionItem_;->context_:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    .line 51
    :cond_10
    return-void
.end method


# virtual methods
.method public onFinishInflate()V
    .registers 3

    .prologue
    .line 142
    iget-boolean v0, p0, Lfr/testudo/spacecorsair/activity/viewgroup/MissionItem_;->mAlreadyInflated_:Z

    if-nez v0, :cond_14

    .line 143
    const/4 v0, 0x1

    iput-boolean v0, p0, Lfr/testudo/spacecorsair/activity/viewgroup/MissionItem_;->mAlreadyInflated_:Z

    .line 144
    invoke-virtual {p0}, Lfr/testudo/spacecorsair/activity/viewgroup/MissionItem_;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f030010

    invoke-static {v0, v1, p0}, Lfr/testudo/spacecorsair/activity/viewgroup/MissionItem_;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 145
    invoke-direct {p0}, Lfr/testudo/spacecorsair/activity/viewgroup/MissionItem_;->afterSetContentView_()V

    .line 147
    :cond_14
    invoke-super {p0}, Lfr/testudo/spacecorsair/activity/viewgroup/MissionItem;->onFinishInflate()V

    .line 148
    return-void
.end method
