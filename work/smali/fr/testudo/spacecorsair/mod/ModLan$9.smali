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

.field final synthetic val$wlOld:Ljava/util/concurrent/locks/ReentrantLock;


# direct methods
.method constructor <init>(ZLjava/util/concurrent/locks/ReentrantLock;Ljava/net/Socket;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 706
    iput-boolean p1, p0, Lfr/testudo/spacecorsair/mod/ModLan$9;->val$bye:Z

    iput-object p2, p0, Lfr/testudo/spacecorsair/mod/ModLan$9;->val$wlOld:Ljava/util/concurrent/locks/ReentrantLock;

    iput-object p3, p0, Lfr/testudo/spacecorsair/mod/ModLan$9;->val$old:Ljava/net/Socket;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .prologue
    const/4 v0, 0x0

    .line 709
    .line 711
    :try_start_1
    iget-boolean v1, p0, Lfr/testudo/spacecorsair/mod/ModLan$9;->val$bye:Z

    if-eqz v1, :cond_16

    iget-object v1, p0, Lfr/testudo/spacecorsair/mod/ModLan$9;->val$wlOld:Ljava/util/concurrent/locks/ReentrantLock;

    if-eqz v1, :cond_16

    iget-object v1, p0, Lfr/testudo/spacecorsair/mod/ModLan$9;->val$wlOld:Ljava/util/concurrent/locks/ReentrantLock;

    const-wide/16 v2, 0x1

    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v2, v3, v4}, Ljava/util/concurrent/locks/ReentrantLock;->tryLock(JLjava/util/concurrent/TimeUnit;)Z

    move-result v1

    if-eqz v1, :cond_16

    const/4 v0, 0x1

    .line 712
    :cond_16
    if-eqz v0, :cond_30

    iget-object v1, p0, Lfr/testudo/spacecorsair/mod/ModLan$9;->val$old:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    const/4 v2, 0x5

    new-array v2, v2, [B

    fill-array-data v2, :array_52

    invoke-virtual {v1, v2}, Ljava/io/OutputStream;->write([B)V

    iget-object v1, p0, Lfr/testudo/spacecorsair/mod/ModLan$9;->val$old:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/OutputStream;->flush()V
    :try_end_30
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_30} :catch_3d
    .catchall {:try_start_1 .. :try_end_30} :catchall_46

    .line 716
    :cond_30
    if-eqz v0, :cond_37

    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModLan$9;->val$wlOld:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 718
    :cond_37
    :goto_37
    :try_start_37
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModLan$9;->val$old:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->close()V
    :try_end_3c
    .catch Ljava/lang/Throwable; {:try_start_37 .. :try_end_3c} :catch_4f

    .line 719
    :goto_3c
    return-void

    .line 713
    :catch_3d
    move-exception v1

    .line 716
    if-eqz v0, :cond_37

    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModLan$9;->val$wlOld:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_37

    :catchall_46
    move-exception v1

    if-eqz v0, :cond_4e

    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModLan$9;->val$wlOld:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 717
    :cond_4e
    throw v1

    .line 718
    :catch_4f
    move-exception v0

    goto :goto_3c

    .line 712
    nop

    :array_52
    .array-data 1
        0x5t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data
.end method
