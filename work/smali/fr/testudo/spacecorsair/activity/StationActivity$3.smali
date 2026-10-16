.class Lfr/testudo/spacecorsair/activity/StationActivity$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# instance fields
.field final synthetic this$0:Lfr/testudo/spacecorsair/activity/StationActivity;


# direct methods
.method constructor <init>(Lfr/testudo/spacecorsair/activity/StationActivity;)V
    .registers 2

    .prologue
    .line 319
    iput-object p1, p0, Lfr/testudo/spacecorsair/activity/StationActivity$3;->this$0:Lfr/testudo/spacecorsair/activity/StationActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScroll(Landroid/widget/AbsListView;III)V
    .registers 5

    .prologue
    .line 330
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .registers 4

    .prologue
    .line 322
    if-nez p2, :cond_7

    .line 323
    iget-object v0, p0, Lfr/testudo/spacecorsair/activity/StationActivity$3;->this$0:Lfr/testudo/spacecorsair/activity/StationActivity;

    # invokes: Lfr/testudo/spacecorsair/activity/StationActivity;->saveListElemScrool()V
    invoke-static {v0}, Lfr/testudo/spacecorsair/activity/StationActivity;->access$400(Lfr/testudo/spacecorsair/activity/StationActivity;)V

    .line 325
    :cond_7
    return-void
.end method
