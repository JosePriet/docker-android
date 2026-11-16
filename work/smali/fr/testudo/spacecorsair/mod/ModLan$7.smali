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

.field final synthetic val$out:Ljava/io/DataOutputStream;

.field final synthetic val$s:Ljava/net/Socket;


# direct methods
.method constructor <init>(JLjava/net/Socket;Ljava/io/DataOutputStream;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 488
    iput-wide p1, p0, Lfr/testudo/spacecorsair/mod/ModLan$7;->val$gen:J

    iput-object p3, p0, Lfr/testudo/spacecorsair/mod/ModLan$7;->val$s:Ljava/net/Socket;

    iput-object p4, p0, Lfr/testudo/spacecorsair/mod/ModLan$7;->val$out:Ljava/io/DataOutputStream;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 11

    .prologue
    .line 491
    :goto_0
    :try_start_0
    iget-wide v0, p0, Lfr/testudo/spacecorsair/mod/ModLan$7;->val$gen:J

    # getter for: Lfr/testudo/spacecorsair/mod/ModLan;->linkGen:J
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLan;->access$100()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_80

    .line 494
    # getter for: Lfr/testudo/spacecorsair/mod/ModLan;->outLock:Ljava/lang/Object;
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLan;->access$1100()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1
    :try_end_f
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_f} :catch_84

    .line 495
    :try_start_f
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 496
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

    .line 497
    # getter for: Lfr/testudo/spacecorsair/mod/ModLan;->outLock:Ljava/lang/Object;
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLan;->access$1100()Ljava/lang/Object;

    move-result-object v0

    const-wide/16 v4, 0xc8

    invoke-virtual {v0, v4, v5}, Ljava/lang/Object;->wait(J)V

    .line 498
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

    fill-array-data v2, :array_c2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 500
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

    .line 501
    # getter for: Lfr/testudo/spacecorsair/mod/ModLan;->reliable:Ljava/util/ArrayList;
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLan;->access$1200()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 502
    # getter for: Lfr/testudo/spacecorsair/mod/ModLan;->latest:[B
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLan;->access$1300()[B

    move-result-object v2

    .line 503
    const/4 v3, 0x0

    # setter for: Lfr/testudo/spacecorsair/mod/ModLan;->latest:[B
    invoke-static {v3}, Lfr/testudo/spacecorsair/mod/ModLan;->access$1302([B)[B

    .line 504
    monitor-exit v1
    :try_end_72
    .catchall {:try_start_f .. :try_end_72} :catchall_81

    .line 505
    :try_start_72
    iget-object v3, p0, Lfr/testudo/spacecorsair/mod/ModLan$7;->val$s:Ljava/net/Socket;

    monitor-enter v3
    :try_end_75
    .catch Ljava/lang/Throwable; {:try_start_72 .. :try_end_75} :catch_84

    .line 506
    :try_start_75
    iget-wide v4, p0, Lfr/testudo/spacecorsair/mod/ModLan$7;->val$gen:J

    # getter for: Lfr/testudo/spacecorsair/mod/ModLan;->linkGen:J
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLan;->access$100()J

    move-result-wide v6

    cmp-long v1, v4, v6

    if-eqz v1, :cond_93

    monitor-exit v3
    :try_end_80
    .catchall {:try_start_75 .. :try_end_80} :catchall_be

    .line 515
    :cond_80
    :goto_80
    return-void

    .line 504
    :catchall_81
    move-exception v0

    :try_start_82
    monitor-exit v1
    :try_end_83
    .catchall {:try_start_82 .. :try_end_83} :catchall_81

    :try_start_83
    throw v0
    :try_end_84
    .catch Ljava/lang/Throwable; {:try_start_83 .. :try_end_84} :catch_84

    .line 512
    :catch_84
    move-exception v0

    .line 513
    iget-wide v2, p0, Lfr/testudo/spacecorsair/mod/ModLan$7;->val$gen:J

    # getter for: Lfr/testudo/spacecorsair/mod/ModLan;->linkGen:J
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLan;->access$100()J

    move-result-wide v4

    cmp-long v1, v2, v4

    if-nez v1, :cond_80

    # invokes: Lfr/testudo/spacecorsair/mod/ModLan;->fail(Ljava/lang/Throwable;)V
    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLan;->access$400(Ljava/lang/Throwable;)V

    goto :goto_80

    .line 507
    :cond_93
    :try_start_93
    array-length v4, v0

    const/4 v1, 0x0

    :goto_95
    if-ge v1, v4, :cond_a8

    aget-object v5, v0, v1

    iget-object v6, p0, Lfr/testudo/spacecorsair/mod/ModLan$7;->val$out:Ljava/io/DataOutputStream;

    invoke-virtual {v6, v5}, Ljava/io/DataOutputStream;->write([B)V

    sget-wide v6, Lfr/testudo/spacecorsair/mod/ModLan;->bytesOut:J

    array-length v5, v5

    int-to-long v8, v5

    add-long/2addr v6, v8

    sput-wide v6, Lfr/testudo/spacecorsair/mod/ModLan;->bytesOut:J

    add-int/lit8 v1, v1, 0x1

    goto :goto_95

    .line 508
    :cond_a8
    if-eqz v2, :cond_b6

    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModLan$7;->val$out:Ljava/io/DataOutputStream;

    invoke-virtual {v0, v2}, Ljava/io/DataOutputStream;->write([B)V

    sget-wide v0, Lfr/testudo/spacecorsair/mod/ModLan;->bytesOut:J

    array-length v2, v2

    int-to-long v4, v2

    add-long/2addr v0, v4

    sput-wide v0, Lfr/testudo/spacecorsair/mod/ModLan;->bytesOut:J

    .line 509
    :cond_b6
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModLan$7;->val$out:Ljava/io/DataOutputStream;

    invoke-virtual {v0}, Ljava/io/DataOutputStream;->flush()V

    .line 510
    monitor-exit v3

    goto/16 :goto_0

    :catchall_be
    move-exception v0

    monitor-exit v3
    :try_end_c0
    .catchall {:try_start_93 .. :try_end_c0} :catchall_be

    :try_start_c0
    throw v0
    :try_end_c1
    .catch Ljava/lang/Throwable; {:try_start_c0 .. :try_end_c1} :catch_84

    .line 498
    nop

    :array_c2
    .array-data 1
        0x9t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data
.end method
