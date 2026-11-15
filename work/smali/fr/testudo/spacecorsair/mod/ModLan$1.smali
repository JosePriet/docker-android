.class Lfr/testudo/spacecorsair/mod/ModLan$1;
.super Ljava/lang/Object;
.source "ModLan.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfr/testudo/spacecorsair/mod/ModLan;->host()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$gen:J


# direct methods
.method constructor <init>(J)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 111
    iput-wide p1, p0, Lfr/testudo/spacecorsair/mod/ModLan$1;->val$gen:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .prologue
    .line 114
    :try_start_0
    new-instance v0, Ljava/net/ServerSocket;

    invoke-direct {v0}, Ljava/net/ServerSocket;-><init>()V

    .line 115
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/net/ServerSocket;->setReuseAddress(Z)V

    .line 116
    new-instance v1, Ljava/net/InetSocketAddress;

    const v2, 0x9089

    invoke-direct {v1, v2}, Ljava/net/InetSocketAddress;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/net/ServerSocket;->bind(Ljava/net/SocketAddress;)V

    .line 117
    # setter for: Lfr/testudo/spacecorsair/mod/ModLan;->server:Ljava/net/ServerSocket;
    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLan;->access$002(Ljava/net/ServerSocket;)Ljava/net/ServerSocket;

    .line 118
    invoke-virtual {v0}, Ljava/net/ServerSocket;->accept()Ljava/net/Socket;

    move-result-object v1

    .line 119
    iget-wide v2, p0, Lfr/testudo/spacecorsair/mod/ModLan$1;->val$gen:J

    # getter for: Lfr/testudo/spacecorsair/mod/ModLan;->linkGen:J
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLan;->access$100()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-eqz v2, :cond_29

    invoke-virtual {v1}, Ljava/net/Socket;->close()V
    :try_end_28
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_28} :catch_32

    .line 125
    :cond_28
    :goto_28
    return-void

    .line 120
    :cond_29
    :try_start_29
    invoke-virtual {v0}, Ljava/net/ServerSocket;->close()V
    :try_end_2c
    .catch Ljava/lang/Throwable; {:try_start_29 .. :try_end_2c} :catch_41

    .line 121
    :goto_2c
    :try_start_2c
    iget-wide v2, p0, Lfr/testudo/spacecorsair/mod/ModLan$1;->val$gen:J

    # invokes: Lfr/testudo/spacecorsair/mod/ModLan;->begin(Ljava/net/Socket;J)V
    invoke-static {v1, v2, v3}, Lfr/testudo/spacecorsair/mod/ModLan;->access$200(Ljava/net/Socket;J)V
    :try_end_31
    .catch Ljava/lang/Throwable; {:try_start_2c .. :try_end_31} :catch_32

    goto :goto_28

    .line 122
    :catch_32
    move-exception v0

    .line 123
    iget-wide v2, p0, Lfr/testudo/spacecorsair/mod/ModLan$1;->val$gen:J

    # getter for: Lfr/testudo/spacecorsair/mod/ModLan;->linkGen:J
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLan;->access$100()J

    move-result-wide v4

    cmp-long v1, v2, v4

    if-nez v1, :cond_28

    # invokes: Lfr/testudo/spacecorsair/mod/ModLan;->fail(Ljava/lang/Throwable;)V
    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLan;->access$300(Ljava/lang/Throwable;)V

    goto :goto_28

    .line 120
    :catch_41
    move-exception v0

    goto :goto_2c
.end method
