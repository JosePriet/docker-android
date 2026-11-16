.class Lfr/testudo/spacecorsair/mod/ModNet$Turn$1;
.super Ljava/lang/Object;
.source "ModNet.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfr/testudo/spacecorsair/mod/ModNet$Turn;->keep()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lfr/testudo/spacecorsair/mod/ModNet$Turn;


# direct methods
.method constructor <init>(Lfr/testudo/spacecorsair/mod/ModNet$Turn;)V
    .registers 2

    .prologue
    .line 496
    iput-object p1, p0, Lfr/testudo/spacecorsair/mod/ModNet$Turn$1;->this$0:Lfr/testudo/spacecorsair/mod/ModNet$Turn;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 17

    .prologue
    const/4 v15, 0x1

    const/4 v9, 0x0

    .line 499
    :try_start_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lfr/testudo/spacecorsair/mod/ModNet$Turn$1;->this$0:Lfr/testudo/spacecorsair/mod/ModNet$Turn;

    const/4 v2, 0x4

    const/4 v3, 0x1

    new-array v3, v3, [[B

    const/4 v4, 0x0

    const/16 v5, 0xd

    const/4 v6, 0x4

    new-array v6, v6, [B

    fill-array-data v6, :array_da

    invoke-static {v5, v6}, Lfr/testudo/spacecorsair/mod/ModNet;->attr(I[B)[B

    move-result-object v5

    aput-object v5, v3, v4

    # invokes: Lfr/testudo/spacecorsair/mod/ModNet$Turn;->request(I[[B)[B
    invoke-static {v1, v2, v3}, Lfr/testudo/spacecorsair/mod/ModNet$Turn;->access$300(Lfr/testudo/spacecorsair/mod/ModNet$Turn;I[[B)[B

    .line 501
    move-object/from16 v0, p0

    iget-object v3, v0, Lfr/testudo/spacecorsair/mod/ModNet$Turn$1;->this$0:Lfr/testudo/spacecorsair/mod/ModNet$Turn;

    monitor-enter v3
    :try_end_21
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_21} :catch_8f

    .line 502
    :try_start_21
    move-object/from16 v0, p0

    iget-object v1, v0, Lfr/testudo/spacecorsair/mod/ModNet$Turn$1;->this$0:Lfr/testudo/spacecorsair/mod/ModNet$Turn;

    # getter for: Lfr/testudo/spacecorsair/mod/ModNet$Turn;->perms:Ljava/util/HashSet;
    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModNet$Turn;->access$400(Lfr/testudo/spacecorsair/mod/ModNet$Turn;)Ljava/util/HashSet;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, [Ljava/lang/String;

    move-object v7, v0

    .line 503
    move-object/from16 v0, p0

    iget-object v1, v0, Lfr/testudo/spacecorsair/mod/ModNet$Turn$1;->this$0:Lfr/testudo/spacecorsair/mod/ModNet$Turn;

    # getter for: Lfr/testudo/spacecorsair/mod/ModNet$Turn;->peerOf:Ljava/util/HashMap;
    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModNet$Turn;->access$500(Lfr/testudo/spacecorsair/mod/ModNet$Turn;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Integer;

    invoke-interface {v1, v2}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, [Ljava/lang/Integer;

    move-object v8, v0

    .line 504
    array-length v1, v8

    new-array v11, v1, [Ljava/net/InetSocketAddress;

    move v2, v9

    .line 505
    :goto_4f
    array-length v1, v8

    if-ge v2, v1, :cond_68

    move-object/from16 v0, p0

    iget-object v1, v0, Lfr/testudo/spacecorsair/mod/ModNet$Turn$1;->this$0:Lfr/testudo/spacecorsair/mod/ModNet$Turn;

    # getter for: Lfr/testudo/spacecorsair/mod/ModNet$Turn;->peerOf:Ljava/util/HashMap;
    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModNet$Turn;->access$500(Lfr/testudo/spacecorsair/mod/ModNet$Turn;)Ljava/util/HashMap;

    move-result-object v1

    aget-object v4, v8, v2

    invoke-virtual {v1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/net/InetSocketAddress;

    aput-object v1, v11, v2

    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_4f

    .line 506
    :cond_68
    monitor-exit v3
    :try_end_69
    .catchall {:try_start_21 .. :try_end_69} :catchall_8c

    .line 507
    :try_start_69
    array-length v12, v7

    move v10, v9

    :goto_6b
    if-ge v10, v12, :cond_97

    aget-object v6, v7, v10

    move-object/from16 v0, p0

    iget-object v1, v0, Lfr/testudo/spacecorsair/mod/ModNet$Turn$1;->this$0:Lfr/testudo/spacecorsair/mod/ModNet$Turn;

    const/16 v2, 0x8

    const/4 v3, 0x0

    const/16 v4, 0x12

    new-instance v5, Ljava/net/InetSocketAddress;

    invoke-static {v6}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v6

    const/4 v13, 0x1

    invoke-direct {v5, v6, v13}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    const/4 v6, 0x0

    new-array v6, v6, [[B

    # invokes: Lfr/testudo/spacecorsair/mod/ModNet$Turn;->requestTx(I[BILjava/net/InetSocketAddress;[[B)[B
    invoke-static/range {v1 .. v6}, Lfr/testudo/spacecorsair/mod/ModNet$Turn;->access$600(Lfr/testudo/spacecorsair/mod/ModNet$Turn;I[BILjava/net/InetSocketAddress;[[B)[B
    :try_end_88
    .catch Ljava/lang/Throwable; {:try_start_69 .. :try_end_88} :catch_8f

    add-int/lit8 v1, v10, 0x1

    move v10, v1

    goto :goto_6b

    .line 506
    :catchall_8c
    move-exception v1

    :try_start_8d
    monitor-exit v3
    :try_end_8e
    .catchall {:try_start_8d .. :try_end_8e} :catchall_8c

    :try_start_8e
    throw v1
    :try_end_8f
    .catch Ljava/lang/Throwable; {:try_start_8e .. :try_end_8f} :catch_8f

    .line 510
    :catch_8f
    move-exception v1

    .line 511
    move-object/from16 v0, p0

    iget-object v1, v0, Lfr/testudo/spacecorsair/mod/ModNet$Turn$1;->this$0:Lfr/testudo/spacecorsair/mod/ModNet$Turn;

    iput-boolean v15, v1, Lfr/testudo/spacecorsair/mod/ModNet$Turn;->dead:Z

    .line 513
    :cond_96
    return-void

    :cond_97
    move v7, v9

    .line 508
    :goto_98
    :try_start_98
    array-length v1, v8

    if-ge v7, v1, :cond_96

    .line 509
    move-object/from16 v0, p0

    iget-object v1, v0, Lfr/testudo/spacecorsair/mod/ModNet$Turn$1;->this$0:Lfr/testudo/spacecorsair/mod/ModNet$Turn;

    const/16 v2, 0x9

    const/4 v3, 0x0

    const/16 v4, 0x12

    aget-object v5, v11, v7

    const/4 v6, 0x1

    new-array v6, v6, [[B

    const/4 v9, 0x0

    const/16 v10, 0xc

    const/4 v12, 0x4

    new-array v12, v12, [B

    const/4 v13, 0x0

    aget-object v14, v8, v7

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    shr-int/lit8 v14, v14, 0x8

    int-to-byte v14, v14

    aput-byte v14, v12, v13

    const/4 v13, 0x1

    aget-object v14, v8, v7

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    int-to-byte v14, v14

    aput-byte v14, v12, v13

    const/4 v13, 0x2

    const/4 v14, 0x0

    aput-byte v14, v12, v13

    const/4 v13, 0x3

    const/4 v14, 0x0

    aput-byte v14, v12, v13

    invoke-static {v10, v12}, Lfr/testudo/spacecorsair/mod/ModNet;->attr(I[B)[B

    move-result-object v10

    aput-object v10, v6, v9

    # invokes: Lfr/testudo/spacecorsair/mod/ModNet$Turn;->requestTx(I[BILjava/net/InetSocketAddress;[[B)[B
    invoke-static/range {v1 .. v6}, Lfr/testudo/spacecorsair/mod/ModNet$Turn;->access$600(Lfr/testudo/spacecorsair/mod/ModNet$Turn;I[BILjava/net/InetSocketAddress;[[B)[B
    :try_end_d6
    .catch Ljava/lang/Throwable; {:try_start_98 .. :try_end_d6} :catch_8f

    .line 508
    add-int/lit8 v1, v7, 0x1

    move v7, v1

    goto :goto_98

    .line 499
    :array_da
    .array-data 1
        0x0t
        0x0t
        0x2t
        0x58t
    .end array-data
.end method
