.class Lfr/testudo/spacecorsair/activity/viewgroup/MissionItem_$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lfr/testudo/spacecorsair/activity/viewgroup/MissionItem_;


# direct methods
.method constructor <init>(Lfr/testudo/spacecorsair/activity/viewgroup/MissionItem_;)V
    .registers 2

    .prologue
    .line 89
    iput-object p1, p0, Lfr/testudo/spacecorsair/activity/viewgroup/MissionItem_$2;->this$0:Lfr/testudo/spacecorsair/activity/viewgroup/MissionItem_;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3

    .prologue
    .line 94
    iget-object v0, p0, Lfr/testudo/spacecorsair/activity/viewgroup/MissionItem_$2;->this$0:Lfr/testudo/spacecorsair/activity/viewgroup/MissionItem_;

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/activity/viewgroup/MissionItem_;->giveUp()V

    .line 95
    return-void
.end method
