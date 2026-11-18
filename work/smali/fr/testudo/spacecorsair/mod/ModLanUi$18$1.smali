.class Lfr/testudo/spacecorsair/mod/ModLanUi$18$1;
.super Ljava/lang/Object;
.source "ModLanUi.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfr/testudo/spacecorsair/mod/ModLanUi$18;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lfr/testudo/spacecorsair/mod/ModLanUi$18;


# direct methods
.method constructor <init>(Lfr/testudo/spacecorsair/mod/ModLanUi$18;)V
    .registers 2

    .prologue
    .line 707
    iput-object p1, p0, Lfr/testudo/spacecorsair/mod/ModLanUi$18$1;->this$0:Lfr/testudo/spacecorsair/mod/ModLanUi$18;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 710
    :try_start_0
    const-string v0, ""

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModLobby;->status:Ljava/lang/String;

    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLobby;->list()Ljava/util/List;
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_7} :catch_17

    move-result-object v0

    .line 712
    :goto_8
    sget-object v1, Lfr/testudo/spacecorsair/mod/ModLobby;->status:Ljava/lang/String;

    .line 713
    iget-object v2, p0, Lfr/testudo/spacecorsair/mod/ModLanUi$18$1;->this$0:Lfr/testudo/spacecorsair/mod/ModLanUi$18;

    iget-object v2, v2, Lfr/testudo/spacecorsair/mod/ModLanUi$18;->val$h:Landroid/os/Handler;

    new-instance v3, Lfr/testudo/spacecorsair/mod/ModLanUi$18$1$1;

    invoke-direct {v3, p0, v0, v1}, Lfr/testudo/spacecorsair/mod/ModLanUi$18$1$1;-><init>(Lfr/testudo/spacecorsair/mod/ModLanUi$18$1;Ljava/util/List;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 724
    return-void

    .line 710
    :catch_17
    move-exception v0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    goto :goto_8
.end method
