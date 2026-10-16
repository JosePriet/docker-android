.class final Lfr/testudo/spacecorsair/utils/MenuDisplayer$2;
.super Ljava/util/TimerTask;
.source "SourceFile"


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 95
    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 98
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->mainActivity:Lfr/testudo/spacecorsair/activity/Main;

    new-instance v1, Lfr/testudo/spacecorsair/utils/MenuDisplayer$2$1;

    invoke-direct {v1, p0}, Lfr/testudo/spacecorsair/utils/MenuDisplayer$2$1;-><init>(Lfr/testudo/spacecorsair/utils/MenuDisplayer$2;)V

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/activity/Main;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 115
    return-void
.end method
