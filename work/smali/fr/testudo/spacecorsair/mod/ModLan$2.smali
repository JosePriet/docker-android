.class Lfr/testudo/spacecorsair/mod/ModLan$2;
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
    .line 242
    iput-wide p1, p0, Lfr/testudo/spacecorsair/mod/ModLan$2;->val$gen:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .prologue
    .line 245
    :try_start_0
    new-instance v0, Ljava/net/ServerSocket;

    invoke-direct {v0}, Ljava/net/ServerSocket;-><init>()V

    .line 246
    # setter for: Lfr/testudo/spacecorsair/mod/ModLan;->server:Ljava/net/ServerSocket;
    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLan;->access$002(Ljava/net/ServerSocket;)Ljava/net/ServerSocket;

    .line 247
    iget-wide v2, p0, Lfr/testudo/spacecorsair/mod/ModLan$2;->val$gen:J

    # getter for: Lfr/testudo/spacecorsair/mod/ModLan;->linkGen:J
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLan;->access$100()J

    move-result-wide v4

    cmp-long v1, v2, v4

    if-eqz v1, :cond_16

    invoke-virtual {v0}, Ljava/net/ServerSocket;->close()V

    .line 262
    :cond_15
    :goto_15
    return-void

    .line 248
    :cond_16
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/net/ServerSocket;->setReuseAddress(Z)V

    .line 249
    new-instance v1, Ljava/net/InetSocketAddress;

    const v2, 0x9089

    invoke-direct {v1, v2}, Ljava/net/InetSocketAddress;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/net/ServerSocket;->bind(Ljava/net/SocketAddress;)V

    .line 250
    :goto_25
    iget-wide v2, p0, Lfr/testudo/spacecorsair/mod/ModLan$2;->val$gen:J

    # getter for: Lfr/testudo/spacecorsair/mod/ModLan;->linkGen:J
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLan;->access$100()J

    move-result-wide v4

    cmp-long v1, v2, v4

    if-nez v1, :cond_15

    .line 251
    invoke-virtual {v0}, Ljava/net/ServerSocket;->accept()Ljava/net/Socket;

    move-result-object v1

    .line 252
    iget-wide v2, p0, Lfr/testudo/spacecorsair/mod/ModLan$2;->val$gen:J

    # getter for: Lfr/testudo/spacecorsair/mod/ModLan;->linkGen:J
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLan;->access$100()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-eqz v2, :cond_50

    invoke-virtual {v1}, Ljava/net/Socket;->close()V
    :try_end_40
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_40} :catch_41

    goto :goto_15

    .line 259
    :catch_41
    move-exception v0

    .line 260
    iget-wide v2, p0, Lfr/testudo/spacecorsair/mod/ModLan$2;->val$gen:J

    # getter for: Lfr/testudo/spacecorsair/mod/ModLan;->linkGen:J
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLan;->access$100()J

    move-result-wide v4

    cmp-long v1, v2, v4

    if-nez v1, :cond_15

    # invokes: Lfr/testudo/spacecorsair/mod/ModLan;->fail(Ljava/lang/Throwable;)V
    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLan;->access$400(Ljava/lang/Throwable;)V

    goto :goto_15

    .line 253
    :cond_50
    :try_start_50
    iget-wide v2, p0, Lfr/testudo/spacecorsair/mod/ModLan$2;->val$gen:J

    # invokes: Lfr/testudo/spacecorsair/mod/ModLan;->hello(Ljava/net/Socket;J)Z
    invoke-static {v1, v2, v3}, Lfr/testudo/spacecorsair/mod/ModLan;->access$200(Ljava/net/Socket;J)Z
    :try_end_55
    .catch Ljava/lang/Throwable; {:try_start_50 .. :try_end_55} :catch_41

    move-result v2

    if-nez v2, :cond_5e

    :try_start_58
    invoke-virtual {v1}, Ljava/net/Socket;->close()V
    :try_end_5b
    .catch Ljava/lang/Throwable; {:try_start_58 .. :try_end_5b} :catch_5c

    goto :goto_25

    :catch_5c
    move-exception v1

    goto :goto_25

    .line 254
    :cond_5e
    :try_start_5e
    iget-wide v2, p0, Lfr/testudo/spacecorsair/mod/ModLan$2;->val$gen:J

    # getter for: Lfr/testudo/spacecorsair/mod/ModLan;->linkGen:J
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLan;->access$100()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-eqz v2, :cond_6c

    invoke-virtual {v1}, Ljava/net/Socket;->close()V
    :try_end_6b
    .catch Ljava/lang/Throwable; {:try_start_5e .. :try_end_6b} :catch_41

    goto :goto_15

    .line 255
    :cond_6c
    :try_start_6c
    invoke-virtual {v0}, Ljava/net/ServerSocket;->close()V
    :try_end_6f
    .catch Ljava/lang/Throwable; {:try_start_6c .. :try_end_6f} :catch_75

    .line 256
    :goto_6f
    :try_start_6f
    iget-wide v2, p0, Lfr/testudo/spacecorsair/mod/ModLan$2;->val$gen:J

    # invokes: Lfr/testudo/spacecorsair/mod/ModLan;->begin(Ljava/net/Socket;J)V
    invoke-static {v1, v2, v3}, Lfr/testudo/spacecorsair/mod/ModLan;->access$300(Ljava/net/Socket;J)V
    :try_end_74
    .catch Ljava/lang/Throwable; {:try_start_6f .. :try_end_74} :catch_41

    goto :goto_15

    .line 255
    :catch_75
    move-exception v0

    goto :goto_6f
.end method
