.class Lfr/testudo/spacecorsair/activity/Main$3;
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
    .line 274
    iput-object p1, p0, Lfr/testudo/spacecorsair/activity/Main$3;->this$0:Lfr/testudo/spacecorsair/activity/Main;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 277
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    invoke-static {}, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->resume()V

    .line 278
    iget-object v0, p0, Lfr/testudo/spacecorsair/activity/Main$3;->this$0:Lfr/testudo/spacecorsair/activity/Main;

    const/4 v1, 0x0

    iput-object v1, v0, Lfr/testudo/spacecorsair/activity/Main;->currentDialog:Landroid/app/Dialog;

    .line 279
    return-void
.end method
