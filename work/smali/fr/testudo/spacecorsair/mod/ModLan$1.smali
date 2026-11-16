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
    .line 117
    iput-wide p1, p0, Lfr/testudo/spacecorsair/mod/ModLan$1;->val$gen:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .prologue
    .line 120
    :try_start_0
    new-instance v0, Ljava/net/ServerSocket;

    invoke-direct {v0}, Ljava/net/ServerSocket;-><init>()V

    .line 121
    # setter for: Lfr/testudo/spacecorsair/mod/ModLan;->server:Ljava/net/ServerSocket;
    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLan;->access$002(Ljava/net/ServerSocket;)Ljava/net/ServerSocket;

    .line 122
    iget-wide v2, p0, Lfr/testudo/spacecorsair/mod/ModLan$1;->val$gen:J

    # getter for: Lfr/testudo/spacecorsair/mod/ModLan;->linkGen:J
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLan;->access$100()J

    move-result-wide v4

    cmp-long v1, v2, v4

    if-eqz v1, :cond_16

    invoke-virtual {v0}, Ljava/net/ServerSocket;->close()V

    .line 136
    :cond_15
    :goto_15
    return-void

    .line 123
    :cond_16
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/net/ServerSocket;->setReuseAddress(Z)V

    .line 124
    new-instance v1, Ljava/net/InetSocketAddress;

    const v2, 0x9089

    invoke-direct {v1, v2}, Ljava/net/InetSocketAddress;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/net/ServerSocket;->bind(Ljava/net/SocketAddress;)V

    .line 125
    :goto_25
    iget-wide v2, p0, Lfr/testudo/spacecorsair/mod/ModLan$1;->val$gen:J

    # getter for: Lfr/testudo/spacecorsair/mod/ModLan;->linkGen:J
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLan;->access$100()J

    move-result-wide v4

    cmp-long v1, v2, v4

    if-nez v1, :cond_15

    .line 126
    invoke-virtual {v0}, Ljava/net/ServerSocket;->accept()Ljava/net/Socket;

    move-result-object v1

    .line 127
    iget-wide v2, p0, Lfr/testudo/spacecorsair/mod/ModLan$1;->val$gen:J

    # getter for: Lfr/testudo/spacecorsair/mod/ModLan;->linkGen:J
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLan;->access$100()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-eqz v2, :cond_50

    invoke-virtual {v1}, Ljava/net/Socket;->close()V
    :try_end_40
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_40} :catch_41

    goto :goto_15

    .line 133
    :catch_41
    move-exception v0

    .line 134
    iget-wide v2, p0, Lfr/testudo/spacecorsair/mod/ModLan$1;->val$gen:J

    # getter for: Lfr/testudo/spacecorsair/mod/ModLan;->linkGen:J
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLan;->access$100()J

    move-result-wide v4

    cmp-long v1, v2, v4

    if-nez v1, :cond_15

    # invokes: Lfr/testudo/spacecorsair/mod/ModLan;->fail(Ljava/lang/Throwable;)V
    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLan;->access$400(Ljava/lang/Throwable;)V

    goto :goto_15

    .line 128
    :cond_50
    :try_start_50
    # invokes: Lfr/testudo/spacecorsair/mod/ModLan;->hello(Ljava/net/Socket;)Z
    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModLan;->access$200(Ljava/net/Socket;)Z

    move-result v2

    if-nez v2, :cond_5a

    invoke-virtual {v1}, Ljava/net/Socket;->close()V
    :try_end_59
    .catch Ljava/lang/Throwable; {:try_start_50 .. :try_end_59} :catch_41

    goto :goto_25

    .line 129
    :cond_5a
    :try_start_5a
    invoke-virtual {v0}, Ljava/net/ServerSocket;->close()V
    :try_end_5d
    .catch Ljava/lang/Throwable; {:try_start_5a .. :try_end_5d} :catch_63

    .line 130
    :goto_5d
    :try_start_5d
    iget-wide v2, p0, Lfr/testudo/spacecorsair/mod/ModLan$1;->val$gen:J

    # invokes: Lfr/testudo/spacecorsair/mod/ModLan;->begin(Ljava/net/Socket;J)V
    invoke-static {v1, v2, v3}, Lfr/testudo/spacecorsair/mod/ModLan;->access$300(Ljava/net/Socket;J)V
    :try_end_62
    .catch Ljava/lang/Throwable; {:try_start_5d .. :try_end_62} :catch_41

    goto :goto_15

    .line 129
    :catch_63
    move-exception v0

    goto :goto_5d
.end method
