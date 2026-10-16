.class Lfr/testudo/spacecorsair/activity/Main$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lfr/testudo/spacecorsair/activity/Main;


# direct methods
.method constructor <init>(Lfr/testudo/spacecorsair/activity/Main;)V
    .registers 2

    .prologue
    .line 269
    iput-object p1, p0, Lfr/testudo/spacecorsair/activity/Main$2;->this$0:Lfr/testudo/spacecorsair/activity/Main;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 272
    iget-object v0, p0, Lfr/testudo/spacecorsair/activity/Main$2;->this$0:Lfr/testudo/spacecorsair/activity/Main;

    iget-object v0, v0, Lfr/testudo/spacecorsair/activity/Main;->context:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 273
    return-void
.end method
