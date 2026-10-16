.class Lfr/testudo/spacecorsair/activity/pagerindicator/TabPageIndicator$TabView;
.super Landroid/widget/TextView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfr/testudo/spacecorsair/activity/pagerindicator/TabPageIndicator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TabView"
.end annotation


# instance fields
.field private mIndex:I

.field final synthetic this$0:Lfr/testudo/spacecorsair/activity/pagerindicator/TabPageIndicator;


# direct methods
.method public constructor <init>(Lfr/testudo/spacecorsair/activity/pagerindicator/TabPageIndicator;Landroid/content/Context;)V
    .registers 5

    .prologue
    .line 265
    iput-object p1, p0, Lfr/testudo/spacecorsair/activity/pagerindicator/TabPageIndicator$TabView;->this$0:Lfr/testudo/spacecorsair/activity/pagerindicator/TabPageIndicator;

    .line 266
    const/4 v0, 0x0

    const v1, 0x7f010004

    invoke-direct {p0, p2, v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 267
    return-void
.end method

.method static synthetic access$302(Lfr/testudo/spacecorsair/activity/pagerindicator/TabPageIndicator$TabView;I)I
    .registers 2

    .prologue
    .line 262
    iput p1, p0, Lfr/testudo/spacecorsair/activity/pagerindicator/TabPageIndicator$TabView;->mIndex:I

    return p1
.end method


# virtual methods
.method public getIndex()I
    .registers 2

    .prologue
    .line 281
    iget v0, p0, Lfr/testudo/spacecorsair/activity/pagerindicator/TabPageIndicator$TabView;->mIndex:I

    return v0
.end method

.method public onMeasure(II)V
    .registers 5

    .prologue
    .line 271
    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->onMeasure(II)V

    .line 274
    iget-object v0, p0, Lfr/testudo/spacecorsair/activity/pagerindicator/TabPageIndicator$TabView;->this$0:Lfr/testudo/spacecorsair/activity/pagerindicator/TabPageIndicator;

    # getter for: Lfr/testudo/spacecorsair/activity/pagerindicator/TabPageIndicator;->mMaxTabWidth:I
    invoke-static {v0}, Lfr/testudo/spacecorsair/activity/pagerindicator/TabPageIndicator;->access$400(Lfr/testudo/spacecorsair/activity/pagerindicator/TabPageIndicator;)I

    move-result v0

    if-lez v0, :cond_26

    invoke-virtual {p0}, Lfr/testudo/spacecorsair/activity/pagerindicator/TabPageIndicator$TabView;->getMeasuredWidth()I

    move-result v0

    iget-object v1, p0, Lfr/testudo/spacecorsair/activity/pagerindicator/TabPageIndicator$TabView;->this$0:Lfr/testudo/spacecorsair/activity/pagerindicator/TabPageIndicator;

    # getter for: Lfr/testudo/spacecorsair/activity/pagerindicator/TabPageIndicator;->mMaxTabWidth:I
    invoke-static {v1}, Lfr/testudo/spacecorsair/activity/pagerindicator/TabPageIndicator;->access$400(Lfr/testudo/spacecorsair/activity/pagerindicator/TabPageIndicator;)I

    move-result v1

    if-le v0, v1, :cond_26

    .line 275
    iget-object v0, p0, Lfr/testudo/spacecorsair/activity/pagerindicator/TabPageIndicator$TabView;->this$0:Lfr/testudo/spacecorsair/activity/pagerindicator/TabPageIndicator;

    # getter for: Lfr/testudo/spacecorsair/activity/pagerindicator/TabPageIndicator;->mMaxTabWidth:I
    invoke-static {v0}, Lfr/testudo/spacecorsair/activity/pagerindicator/TabPageIndicator;->access$400(Lfr/testudo/spacecorsair/activity/pagerindicator/TabPageIndicator;)I

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-super {p0, v0, p2}, Landroid/widget/TextView;->onMeasure(II)V

    .line 278
    :cond_26
    return-void
.end method
