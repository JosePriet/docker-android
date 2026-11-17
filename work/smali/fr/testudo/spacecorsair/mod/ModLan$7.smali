.class Lfr/testudo/spacecorsair/mod/ModLan$7;
.super Ljava/lang/Object;
.source "ModLan.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfr/testudo/spacecorsair/mod/ModLan;->begin(Ljava/net/Socket;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$gen:J

.field final synthetic val$nl:Lfr/testudo/spacecorsair/mod/ModNet$Link;

.field final synthetic val$out:Ljava/io/DataOutputStream;

.field final synthetic val$wl:Ljava/util/concurrent/locks/ReentrantLock;


# direct methods
.method constructor <init>(JLjava/util/concurrent/locks/ReentrantLock;Ljava/io/DataOutputStream;Lfr/testudo/spacecorsair/mod/ModNet$Link;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 579
    iput-wide p1, p0, Lfr/testudo/spacecorsair/mod/ModLan$7;->val$gen:J

    iput-object p3, p0, Lfr/testudo/spacecorsair/mod/ModLan$7;->val$wl:Ljava/util/concurrent/locks/ReentrantLock;

    iput-object p4, p0, Lfr/testudo/spacecorsair/mod/ModLan$7;->val$out:Ljava/io/DataOutputStream;

    iput-object p5, p0, Lfr/testudo/spacecorsair/mod/ModLan$7;->val$nl:Lfr/testudo/spacecorsair/mod/ModNet$Link;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 9

    .prologue
    .line 582
    :goto_0
    :try_start_0
    iget-wide v0, p0, Lfr/testudo/spacecorsair/mod/ModLan$7;->val$gen:J

    # getter for: Lfr/testudo/spacecorsair/mod/ModLan;->linkGen:J
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLan;->access$100()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_86

    .line 585
    # getter for: Lfr/testudo/spacecorsair/mod/ModLan;->outLock:Ljava/lang/Object;
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLan;->access$1100()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1
    :try_end_f
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_f} :catch_8a

    .line 586
    :try_start_f
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 587
    :cond_13
    # getter for: Lfr/testudo/spacecorsair/mod/ModLan;->reliable:Ljava/util/ArrayList;
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLan;->access$1200()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4e

    # getter for: Lfr/testudo/spacecorsair/mod/ModLan;->latest:[B
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLan;->access$1300()[B

    move-result-object v0

    if-nez v0, :cond_4e

    iget-wide v4, p0, Lfr/testudo/spacecorsair/mod/ModLan$7;->val$gen:J

    # getter for: Lfr/testudo/spacecorsair/mod/ModLan;->linkGen:J
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLan;->access$100()J

    move-result-wide v6

    cmp-long v0, v4, v6

    if-nez v0, :cond_4e

    .line 588
    # getter for: Lfr/testudo/spacecorsair/mod/ModLan;->outLock:Ljava/lang/Object;
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLan;->access$1100()Ljava/lang/Object;

    move-result-object v0

    const-wide/16 v4, 0xc8

    invoke-virtual {v0, v4, v5}, Ljava/lang/Object;->wait(J)V

    .line 589
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v2

    const-wide/16 v6, 0x7d0

    cmp-long v0, v4, v6

    if-ltz v0, :cond_13

    # getter for: Lfr/testudo/spacecorsair/mod/ModLan;->reliable:Ljava/util/ArrayList;
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLan;->access$1200()Ljava/util/ArrayList;

    move-result-object v0

    const/4 v2, 0x5

    new-array v2, v2, [B

    fill-array-data v2, :array_de

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 591
    :cond_4e
    # getter for: Lfr/testudo/spacecorsair/mod/ModLan;->reliable:Ljava/util/ArrayList;
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLan;->access$1200()Ljava/util/ArrayList;

    move-result-object v0

    # getter for: Lfr/testudo/spacecorsair/mod/ModLan;->reliable:Ljava/util/ArrayList;
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLan;->access$1200()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [[B

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[B

    .line 592
    # getter for: Lfr/testudo/spacecorsair/mod/ModLan;->reliable:Ljava/util/ArrayList;
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLan;->access$1200()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 593
    # getter for: Lfr/testudo/spacecorsair/mod/ModLan;->latest:[B
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLan;->access$1300()[B

    move-result-object v2

    .line 594
    const/4 v3, 0x0

    # setter for: Lfr/testudo/spacecorsair/mod/ModLan;->latest:[B
    invoke-static {v3}, Lfr/testudo/spacecorsair/mod/ModLan;->access$1302([B)[B

    .line 595
    monitor-exit v1
    :try_end_72
    .catchall {:try_start_f .. :try_end_72} :catchall_87

    .line 596
    :try_start_72
    iget-object v1, p0, Lfr/testudo/spacecorsair/mod/ModLan$7;->val$wl:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V
    :try_end_77
    .catch Ljava/lang/Throwable; {:try_start_72 .. :try_end_77} :catch_8a

    .line 598
    :try_start_77
    iget-wide v4, p0, Lfr/testudo/spacecorsair/mod/ModLan$7;->val$gen:J

    # getter for: Lfr/testudo/spacecorsair/mod/ModLan;->linkGen:J
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLan;->access$100()J
    :try_end_7c
    .catchall {:try_start_77 .. :try_end_7c} :catchall_d7

    move-result-wide v6

    cmp-long v1, v4, v6

    if-eqz v1, :cond_99

    .line 604
    :try_start_81
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModLan$7;->val$wl:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V
    :try_end_86
    .catch Ljava/lang/Throwable; {:try_start_81 .. :try_end_86} :catch_8a

    .line 610
    :cond_86
    :goto_86
    return-void

    .line 595
    :catchall_87
    move-exception v0

    :try_start_88
    monitor-exit v1
    :try_end_89
    .catchall {:try_start_88 .. :try_end_89} :catchall_87

    :try_start_89
    throw v0
    :try_end_8a
    .catch Ljava/lang/Throwable; {:try_start_89 .. :try_end_8a} :catch_8a

    .line 607
    :catch_8a
    move-exception v0

    .line 608
    iget-wide v2, p0, Lfr/testudo/spacecorsair/mod/ModLan$7;->val$gen:J

    # getter for: Lfr/testudo/spacecorsair/mod/ModLan;->linkGen:J
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLan;->access$100()J

    move-result-wide v4

    cmp-long v1, v2, v4

    if-nez v1, :cond_86

    # invokes: Lfr/testudo/spacecorsair/mod/ModLan;->fail(Ljava/lang/Throwable;)V
    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLan;->access$400(Ljava/lang/Throwable;)V

    goto :goto_86

    .line 599
    :cond_99
    :try_start_99
    array-length v3, v0

    const/4 v1, 0x0

    :goto_9b
    if-ge v1, v3, :cond_ae

    aget-object v4, v0, v1

    iget-object v5, p0, Lfr/testudo/spacecorsair/mod/ModLan$7;->val$out:Ljava/io/DataOutputStream;

    invoke-virtual {v5, v4}, Ljava/io/DataOutputStream;->write([B)V

    sget-wide v6, Lfr/testudo/spacecorsair/mod/ModLan;->bytesOut:J

    array-length v4, v4

    int-to-long v4, v4

    add-long/2addr v4, v6

    sput-wide v4, Lfr/testudo/spacecorsair/mod/ModLan;->bytesOut:J

    add-int/lit8 v1, v1, 0x1

    goto :goto_9b

    .line 600
    :cond_ae
    if-eqz v2, :cond_b9

    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModLan$7;->val$nl:Lfr/testudo/spacecorsair/mod/ModNet$Link;

    if-nez v0, :cond_b9

    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModLan$7;->val$out:Ljava/io/DataOutputStream;

    invoke-virtual {v0, v2}, Ljava/io/DataOutputStream;->write([B)V

    .line 601
    :cond_b9
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModLan$7;->val$out:Ljava/io/DataOutputStream;

    invoke-virtual {v0}, Ljava/io/DataOutputStream;->flush()V

    .line 602
    if-eqz v2, :cond_d0

    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModLan$7;->val$nl:Lfr/testudo/spacecorsair/mod/ModNet$Link;

    if-eqz v0, :cond_c9

    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModLan$7;->val$nl:Lfr/testudo/spacecorsair/mod/ModNet$Link;

    invoke-virtual {v0, v2}, Lfr/testudo/spacecorsair/mod/ModNet$Link;->sendLatest([B)V

    :cond_c9
    sget-wide v0, Lfr/testudo/spacecorsair/mod/ModLan;->bytesOut:J

    array-length v2, v2

    int-to-long v2, v2

    add-long/2addr v0, v2

    sput-wide v0, Lfr/testudo/spacecorsair/mod/ModLan;->bytesOut:J
    :try_end_d0
    .catchall {:try_start_99 .. :try_end_d0} :catchall_d7

    .line 604
    :cond_d0
    :try_start_d0
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModLan$7;->val$wl:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto/16 :goto_0

    :catchall_d7
    move-exception v0

    iget-object v1, p0, Lfr/testudo/spacecorsair/mod/ModLan$7;->val$wl:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 605
    throw v0
    :try_end_de
    .catch Ljava/lang/Throwable; {:try_start_d0 .. :try_end_de} :catch_8a

    .line 589
    :array_de
    .array-data 1
        0x9t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data
.end method
