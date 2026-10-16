.class Lfr/testudo/spacecorsair/activity/viewgroup/MissionItem$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field final synthetic this$0:Lfr/testudo/spacecorsair/activity/viewgroup/MissionItem;

.field final synthetic val$missionActivity:Lfr/testudo/spacecorsair/activity/MissionActivity;


# direct methods
.method constructor <init>(Lfr/testudo/spacecorsair/activity/viewgroup/MissionItem;Lfr/testudo/spacecorsair/activity/MissionActivity;)V
    .registers 3

    .prologue
    .line 116
    iput-object p1, p0, Lfr/testudo/spacecorsair/activity/viewgroup/MissionItem$1;->this$0:Lfr/testudo/spacecorsair/activity/viewgroup/MissionItem;

    iput-object p2, p0, Lfr/testudo/spacecorsair/activity/viewgroup/MissionItem$1;->val$missionActivity:Lfr/testudo/spacecorsair/activity/MissionActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .registers 3

    .prologue
    .line 119
    iget-object v0, p0, Lfr/testudo/spacecorsair/activity/viewgroup/MissionItem$1;->val$missionActivity:Lfr/testudo/spacecorsair/activity/MissionActivity;

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/activity/MissionActivity;->bindUI()V

    .line 120
    return-void
.end method
