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


# direct methods
.method constructor <init>(JLjava/io/DataOutputStream;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 479
    iput-wide p1, p0, Lfr/testudo/spacecorsair/mod/ModLan$7;->val$gen:J

    iput-object p3, p0, Lfr/testudo/spacecorsair/mod/ModLan$7;->val$out:Ljava/io/DataOutputStream;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 9

    .prologue
    .line 482
    :goto_0
    :try_start_0
    iget-wide v0, p0, Lfr/testudo/spacecorsair/mod/ModLan$7;->val$gen:J

    # getter for: Lfr/testudo/spacecorsair/mod/ModLan;->linkGen:J
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLan;->access$100()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_44

    .line 485
    # getter for: Lfr/testudo/spacecorsair/mod/ModLan;->outLock:Ljava/lang/Object;
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLan;->access$1000()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1
    :try_end_f
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_f} :catch_36

    .line 486
    :goto_f
    :try_start_f
    # getter for: Lfr/testudo/spacecorsair/mod/ModLan;->reliable:Ljava/util/ArrayList;
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLan;->access$1100()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_45

    # getter for: Lfr/testudo/spacecorsair/mod/ModLan;->latest:[B
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLan;->access$1200()[B

    move-result-object v0

    if-nez v0, :cond_45

    iget-wide v2, p0, Lfr/testudo/spacecorsair/mod/ModLan$7;->val$gen:J

    # getter for: Lfr/testudo/spacecorsair/mod/ModLan;->linkGen:J
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLan;->access$100()J

    move-result-wide v4

    cmp-long v0, v2, v4

    if-nez v0, :cond_45

    # getter for: Lfr/testudo/spacecorsair/mod/ModLan;->outLock:Ljava/lang/Object;
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLan;->access$1000()Ljava/lang/Object;

    move-result-object v0

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3}, Ljava/lang/Object;->wait(J)V

    goto :goto_f

    .line 491
    :catchall_33
    move-exception v0

    monitor-exit v1
    :try_end_35
    .catchall {:try_start_f .. :try_end_35} :catchall_33

    :try_start_35
    throw v0
    :try_end_36
    .catch Ljava/lang/Throwable; {:try_start_35 .. :try_end_36} :catch_36

    .line 496
    :catch_36
    move-exception v0

    .line 497
    iget-wide v2, p0, Lfr/testudo/spacecorsair/mod/ModLan$7;->val$gen:J

    # getter for: Lfr/testudo/spacecorsair/mod/ModLan;->linkGen:J
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLan;->access$100()J

    move-result-wide v4

    cmp-long v1, v2, v4

    if-nez v1, :cond_44

    # invokes: Lfr/testudo/spacecorsair/mod/ModLan;->fail(Ljava/lang/Throwable;)V
    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLan;->access$400(Ljava/lang/Throwable;)V

    .line 499
    :cond_44
    return-void

    .line 487
    :cond_45
    :try_start_45
    # getter for: Lfr/testudo/spacecorsair/mod/ModLan;->reliable:Ljava/util/ArrayList;
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLan;->access$1100()Ljava/util/ArrayList;

    move-result-object v0

    # getter for: Lfr/testudo/spacecorsair/mod/ModLan;->reliable:Ljava/util/ArrayList;
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLan;->access$1100()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [[B

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[B

    .line 488
    # getter for: Lfr/testudo/spacecorsair/mod/ModLan;->reliable:Ljava/util/ArrayList;
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLan;->access$1100()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 489
    # getter for: Lfr/testudo/spacecorsair/mod/ModLan;->latest:[B
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLan;->access$1200()[B

    move-result-object v2

    .line 490
    const/4 v3, 0x0

    # setter for: Lfr/testudo/spacecorsair/mod/ModLan;->latest:[B
    invoke-static {v3}, Lfr/testudo/spacecorsair/mod/ModLan;->access$1202([B)[B

    .line 491
    monitor-exit v1
    :try_end_69
    .catchall {:try_start_45 .. :try_end_69} :catchall_33

    .line 492
    :try_start_69
    array-length v3, v0

    const/4 v1, 0x0

    :goto_6b
    if-ge v1, v3, :cond_7e

    aget-object v4, v0, v1

    iget-object v5, p0, Lfr/testudo/spacecorsair/mod/ModLan$7;->val$out:Ljava/io/DataOutputStream;

    invoke-virtual {v5, v4}, Ljava/io/DataOutputStream;->write([B)V

    sget-wide v6, Lfr/testudo/spacecorsair/mod/ModLan;->bytesOut:J

    array-length v4, v4

    int-to-long v4, v4

    add-long/2addr v4, v6

    sput-wide v4, Lfr/testudo/spacecorsair/mod/ModLan;->bytesOut:J

    add-int/lit8 v1, v1, 0x1

    goto :goto_6b

    .line 493
    :cond_7e
    if-eqz v2, :cond_8c

    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModLan$7;->val$out:Ljava/io/DataOutputStream;

    invoke-virtual {v0, v2}, Ljava/io/DataOutputStream;->write([B)V

    sget-wide v0, Lfr/testudo/spacecorsair/mod/ModLan;->bytesOut:J

    array-length v2, v2

    int-to-long v2, v2

    add-long/2addr v0, v2

    sput-wide v0, Lfr/testudo/spacecorsair/mod/ModLan;->bytesOut:J

    .line 494
    :cond_8c
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModLan$7;->val$out:Ljava/io/DataOutputStream;

    invoke-virtual {v0}, Ljava/io/DataOutputStream;->flush()V
    :try_end_91
    .catch Ljava/lang/Throwable; {:try_start_69 .. :try_end_91} :catch_36

    goto/16 :goto_0
.end method
