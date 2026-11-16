.class Lfr/testudo/spacecorsair/mod/ModNet$Turn$2;
.super Ljava/lang/Object;
.source "ModNet.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfr/testudo/spacecorsair/mod/ModNet$Turn;->onData([BI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lfr/testudo/spacecorsair/mod/ModNet$Turn;

.field final synthetic val$peer:Ljava/net/InetSocketAddress;


# direct methods
.method constructor <init>(Lfr/testudo/spacecorsair/mod/ModNet$Turn;Ljava/net/InetSocketAddress;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 565
    iput-object p1, p0, Lfr/testudo/spacecorsair/mod/ModNet$Turn$2;->this$0:Lfr/testudo/spacecorsair/mod/ModNet$Turn;

    iput-object p2, p0, Lfr/testudo/spacecorsair/mod/ModNet$Turn$2;->val$peer:Ljava/net/InetSocketAddress;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 567
    :try_start_0
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModNet$Turn$2;->this$0:Lfr/testudo/spacecorsair/mod/ModNet$Turn;

    iget-object v1, p0, Lfr/testudo/spacecorsair/mod/ModNet$Turn$2;->val$peer:Ljava/net/InetSocketAddress;

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/mod/ModNet$Turn;->bind(Ljava/net/InetSocketAddress;)V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_7} :catch_1e
    .catchall {:try_start_0 .. :try_end_7} :catchall_36

    .line 568
    iget-object v1, p0, Lfr/testudo/spacecorsair/mod/ModNet$Turn$2;->this$0:Lfr/testudo/spacecorsair/mod/ModNet$Turn;

    monitor-enter v1

    :try_start_a
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModNet$Turn$2;->this$0:Lfr/testudo/spacecorsair/mod/ModNet$Turn;

    # getter for: Lfr/testudo/spacecorsair/mod/ModNet$Turn;->binding:Ljava/util/HashSet;
    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModNet$Turn;->access$700(Lfr/testudo/spacecorsair/mod/ModNet$Turn;)Ljava/util/HashSet;

    move-result-object v0

    iget-object v2, p0, Lfr/testudo/spacecorsair/mod/ModNet$Turn$2;->val$peer:Ljava/net/InetSocketAddress;

    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModNet;->show(Ljava/net/InetSocketAddress;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    monitor-exit v1

    .line 569
    :goto_1a
    return-void

    .line 568
    :catchall_1b
    move-exception v0

    monitor-exit v1
    :try_end_1d
    .catchall {:try_start_a .. :try_end_1d} :catchall_1b

    throw v0

    .line 567
    :catch_1e
    move-exception v0

    .line 568
    iget-object v1, p0, Lfr/testudo/spacecorsair/mod/ModNet$Turn$2;->this$0:Lfr/testudo/spacecorsair/mod/ModNet$Turn;

    monitor-enter v1

    :try_start_22
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModNet$Turn$2;->this$0:Lfr/testudo/spacecorsair/mod/ModNet$Turn;

    # getter for: Lfr/testudo/spacecorsair/mod/ModNet$Turn;->binding:Ljava/util/HashSet;
    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModNet$Turn;->access$700(Lfr/testudo/spacecorsair/mod/ModNet$Turn;)Ljava/util/HashSet;

    move-result-object v0

    iget-object v2, p0, Lfr/testudo/spacecorsair/mod/ModNet$Turn$2;->val$peer:Ljava/net/InetSocketAddress;

    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModNet;->show(Ljava/net/InetSocketAddress;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    monitor-exit v1

    goto :goto_1a

    :catchall_33
    move-exception v0

    monitor-exit v1
    :try_end_35
    .catchall {:try_start_22 .. :try_end_35} :catchall_33

    throw v0

    :catchall_36
    move-exception v0

    iget-object v1, p0, Lfr/testudo/spacecorsair/mod/ModNet$Turn$2;->this$0:Lfr/testudo/spacecorsair/mod/ModNet$Turn;

    monitor-enter v1

    :try_start_3a
    iget-object v2, p0, Lfr/testudo/spacecorsair/mod/ModNet$Turn$2;->this$0:Lfr/testudo/spacecorsair/mod/ModNet$Turn;

    # getter for: Lfr/testudo/spacecorsair/mod/ModNet$Turn;->binding:Ljava/util/HashSet;
    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModNet$Turn;->access$700(Lfr/testudo/spacecorsair/mod/ModNet$Turn;)Ljava/util/HashSet;

    move-result-object v2

    iget-object v3, p0, Lfr/testudo/spacecorsair/mod/ModNet$Turn$2;->val$peer:Ljava/net/InetSocketAddress;

    invoke-static {v3}, Lfr/testudo/spacecorsair/mod/ModNet;->show(Ljava/net/InetSocketAddress;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    monitor-exit v1
    :try_end_4a
    .catchall {:try_start_3a .. :try_end_4a} :catchall_4b

    throw v0

    :catchall_4b
    move-exception v0

    :try_start_4c
    monitor-exit v1
    :try_end_4d
    .catchall {:try_start_4c .. :try_end_4d} :catchall_4b

    throw v0
.end method
