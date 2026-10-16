.class Lfr/testudo/spacecorsair/activity/StationActivity_$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lfr/testudo/spacecorsair/activity/StationActivity_;


# direct methods
.method constructor <init>(Lfr/testudo/spacecorsair/activity/StationActivity_;)V
    .registers 2

    .prologue
    .line 125
    iput-object p1, p0, Lfr/testudo/spacecorsair/activity/StationActivity_$6;->this$0:Lfr/testudo/spacecorsair/activity/StationActivity_;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3

    .prologue
    .line 130
    iget-object v0, p0, Lfr/testudo/spacecorsair/activity/StationActivity_$6;->this$0:Lfr/testudo/spacecorsair/activity/StationActivity_;

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/activity/StationActivity_;->showInAppCredits()V

    .line 131
    return-void
.end method
