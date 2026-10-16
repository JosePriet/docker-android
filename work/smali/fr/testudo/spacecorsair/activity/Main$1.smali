.class Lfr/testudo/spacecorsair/activity/Main$1;
.super Landroid/os/Handler;
.source "SourceFile"


# instance fields
.field final synthetic this$0:Lfr/testudo/spacecorsair/activity/Main;


# direct methods
.method constructor <init>(Lfr/testudo/spacecorsair/activity/Main;)V
    .registers 2

    .prologue
    .line 80
    iput-object p1, p0, Lfr/testudo/spacecorsair/activity/Main$1;->this$0:Lfr/testudo/spacecorsair/activity/Main;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 3

    .prologue
    .line 83
    iget-object v0, p0, Lfr/testudo/spacecorsair/activity/Main$1;->this$0:Lfr/testudo/spacecorsair/activity/Main;

    # invokes: Lfr/testudo/spacecorsair/activity/Main;->readMessage(Landroid/os/Message;)V
    invoke-static {v0, p1}, Lfr/testudo/spacecorsair/activity/Main;->access$000(Lfr/testudo/spacecorsair/activity/Main;Landroid/os/Message;)V

    .line 84
    return-void
.end method
