.class Lfr/testudo/spacecorsair/mod/ModLan$9;
.super Ljava/lang/Object;
.source "ModLan.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfr/testudo/spacecorsair/mod/ModLan;->stop()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$bye:Z

.field final synthetic val$old:Ljava/net/Socket;


# direct methods
.method constructor <init>(ZLjava/net/Socket;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 601
    iput-boolean p1, p0, Lfr/testudo/spacecorsair/mod/ModLan$9;->val$bye:Z

    iput-object p2, p0, Lfr/testudo/spacecorsair/mod/ModLan$9;->val$old:Ljava/net/Socket;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 603
    :try_start_0
    iget-boolean v0, p0, Lfr/testudo/spacecorsair/mod/ModLan$9;->val$bye:Z

    if-eqz v0, :cond_20

    iget-object v1, p0, Lfr/testudo/spacecorsair/mod/ModLan$9;->val$old:Ljava/net/Socket;

    monitor-enter v1
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_7} :catch_29

    :try_start_7
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModLan$9;->val$old:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    const/4 v2, 0x5

    new-array v2, v2, [B

    fill-array-data v2, :array_2e

    invoke-virtual {v0, v2}, Ljava/io/OutputStream;->write([B)V

    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModLan$9;->val$old:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    monitor-exit v1
    :try_end_20
    .catchall {:try_start_7 .. :try_end_20} :catchall_26

    .line 604
    :cond_20
    :goto_20
    :try_start_20
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModLan$9;->val$old:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->close()V
    :try_end_25
    .catch Ljava/lang/Throwable; {:try_start_20 .. :try_end_25} :catch_2b

    .line 605
    :goto_25
    return-void

    .line 603
    :catchall_26
    move-exception v0

    :try_start_27
    monitor-exit v1
    :try_end_28
    .catchall {:try_start_27 .. :try_end_28} :catchall_26

    :try_start_28
    throw v0
    :try_end_29
    .catch Ljava/lang/Throwable; {:try_start_28 .. :try_end_29} :catch_29

    :catch_29
    move-exception v0

    goto :goto_20

    .line 604
    :catch_2b
    move-exception v0

    goto :goto_25

    .line 603
    nop

    :array_2e
    .array-data 1
        0x5t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data
.end method
