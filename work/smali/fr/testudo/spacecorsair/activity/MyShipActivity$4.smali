.class Lfr/testudo/spacecorsair/activity/MyShipActivity$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# instance fields
.field final synthetic this$0:Lfr/testudo/spacecorsair/activity/MyShipActivity;


# direct methods
.method constructor <init>(Lfr/testudo/spacecorsair/activity/MyShipActivity;)V
    .registers 2

    .prologue
    .line 191
    iput-object p1, p0, Lfr/testudo/spacecorsair/activity/MyShipActivity$4;->this$0:Lfr/testudo/spacecorsair/activity/MyShipActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScroll(Landroid/widget/AbsListView;III)V
    .registers 5

    .prologue
    .line 202
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .registers 4

    .prologue
    .line 194
    if-nez p2, :cond_7

    .line 195
    iget-object v0, p0, Lfr/testudo/spacecorsair/activity/MyShipActivity$4;->this$0:Lfr/testudo/spacecorsair/activity/MyShipActivity;

    # invokes: Lfr/testudo/spacecorsair/activity/MyShipActivity;->saveListviewScroll()V
    invoke-static {v0}, Lfr/testudo/spacecorsair/activity/MyShipActivity;->access$300(Lfr/testudo/spacecorsair/activity/MyShipActivity;)V

    .line 197
    :cond_7
    return-void
.end method
