.class Lfr/testudo/spacecorsair/mod/ModLobby$5;
.super Ljava/lang/Object;
.source "ModLobby.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfr/testudo/spacecorsair/mod/ModLobby;->startGuestWatch(JLjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$g:J


# direct methods
.method constructor <init>(J)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 635
    iput-wide p1, p0, Lfr/testudo/spacecorsair/mod/ModLobby$5;->val$g:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 638
    :goto_0
    :try_start_0
    iget-wide v0, p0, Lfr/testudo/spacecorsair/mod/ModLobby$5;->val$g:J

    # getter for: Lfr/testudo/spacecorsair/mod/ModLobby;->gen:J
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLobby;->access$400()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_1f

    sget-boolean v0, Lfr/testudo/spacecorsair/mod/ModLan;->connected:Z

    if-eqz v0, :cond_1f

    sget-boolean v0, Lfr/testudo/spacecorsair/mod/ModLan;->internet:Z

    if-eqz v0, :cond_1f

    .line 639
    const-wide/16 v0, 0x1388

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    .line 640
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLobby;->applySaver()V

    .line 641
    # invokes: Lfr/testudo/spacecorsair/mod/ModLobby;->reportRelay()V
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLobby;->access$500()V
    :try_end_1d
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_1d} :catch_1e

    goto :goto_0

    .line 643
    :catch_1e
    move-exception v0

    .line 644
    :cond_1f
    return-void
.end method
