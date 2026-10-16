.class final Lfr/testudo/spacecorsair/utils/InGameDialog$3;
.super Ljava/util/TimerTask;
.source "SourceFile"


# instance fields
.field final synthetic val$dialogText:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/view/View;)V
    .registers 2

    .prologue
    .line 98
    iput-object p1, p0, Lfr/testudo/spacecorsair/utils/InGameDialog$3;->val$dialogText:Landroid/view/View;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 101
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->mainActivity:Lfr/testudo/spacecorsair/activity/Main;

    new-instance v1, Lfr/testudo/spacecorsair/utils/InGameDialog$3$1;

    invoke-direct {v1, p0}, Lfr/testudo/spacecorsair/utils/InGameDialog$3$1;-><init>(Lfr/testudo/spacecorsair/utils/InGameDialog$3;)V

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/activity/Main;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 111
    return-void
.end method
