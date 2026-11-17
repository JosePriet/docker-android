.class final Lfr/testudo/spacecorsair/mod/ModGameQueue;
.super Ljava/lang/Object;
.source "ModGameQueue.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lfr/testudo/spacecorsair/mod/ModGameQueue$Job;
    }
.end annotation


# static fields
.field private static volatile gameThread:Ljava/lang/Thread;

.field private static final jobs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lfr/testudo/spacecorsair/mod/ModGameQueue$Job;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 31
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModGameQueue;->jobs:Ljava/util/ArrayList;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static drain()V
    .registers 5

    .prologue
    .line 58
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModGameQueue;->gameThread:Ljava/lang/Thread;

    .line 59
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModGameQueue;->jobs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 63
    :cond_e
    return-void

    .line 61
    :cond_f
    sget-object v1, Lfr/testudo/spacecorsair/mod/ModGameQueue;->jobs:Ljava/util/ArrayList;

    monitor-enter v1

    :try_start_12
    new-instance v0, Ljava/util/ArrayList;

    sget-object v2, Lfr/testudo/spacecorsair/mod/ModGameQueue;->jobs:Ljava/util/ArrayList;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    sget-object v2, Lfr/testudo/spacecorsair/mod/ModGameQueue;->jobs:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    monitor-exit v1
    :try_end_1f
    .catchall {:try_start_12 .. :try_end_1f} :catchall_3d

    .line 62
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_23
    :goto_23
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfr/testudo/spacecorsair/mod/ModGameQueue$Job;

    iget-object v2, v0, Lfr/testudo/spacecorsair/mod/ModGameQueue$Job;->claimed:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v2

    if-eqz v2, :cond_23

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/mod/ModGameQueue$Job;->run()V

    goto :goto_23

    .line 61
    :catchall_3d
    move-exception v0

    :try_start_3e
    monitor-exit v1
    :try_end_3f
    .catchall {:try_start_3e .. :try_end_3f} :catchall_3d

    throw v0
.end method

.method static run(Ljava/util/concurrent/Callable;)Ljava/lang/Object;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable",
            "<TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 36
    new-instance v2, Lfr/testudo/spacecorsair/mod/ModGameQueue$Job;

    invoke-direct {v2, p0}, Lfr/testudo/spacecorsair/mod/ModGameQueue$Job;-><init>(Ljava/util/concurrent/Callable;)V

    .line 38
    :try_start_6
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/Game;->gameThread:Lfr/testudo/spacecorsair/engine/GameThread;

    iget-boolean v0, v0, Lfr/testudo/spacecorsair/engine/GameThread;->paused:Z
    :try_end_e
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_e} :catch_37

    .line 39
    :goto_e
    if-nez v0, :cond_24

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    sget-object v3, Lfr/testudo/spacecorsair/mod/ModGameQueue;->gameThread:Ljava/lang/Thread;

    if-eq v0, v3, :cond_24

    sget-object v0, Lfr/testudo/spacecorsair/mod/ModGameQueue;->gameThread:Ljava/lang/Thread;

    if-eqz v0, :cond_24

    sget-object v0, Lfr/testudo/spacecorsair/mod/ModGameQueue;->gameThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-nez v0, :cond_3a

    .line 40
    :cond_24
    iget-object v0, v2, Lfr/testudo/spacecorsair/mod/ModGameQueue$Job;->claimed:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 41
    invoke-virtual {v2}, Lfr/testudo/spacecorsair/mod/ModGameQueue$Job;->run()V

    .line 51
    :goto_2c
    iget-object v0, v2, Lfr/testudo/spacecorsair/mod/ModGameQueue$Job;->err:Ljava/lang/Throwable;

    instance-of v0, v0, Ljava/lang/Exception;

    if-eqz v0, :cond_77

    iget-object v0, v2, Lfr/testudo/spacecorsair/mod/ModGameQueue$Job;->err:Ljava/lang/Throwable;

    check-cast v0, Ljava/lang/Exception;

    throw v0

    .line 38
    :catch_37
    move-exception v0

    move v0, v1

    goto :goto_e

    .line 43
    :cond_3a
    sget-object v3, Lfr/testudo/spacecorsair/mod/ModGameQueue;->jobs:Ljava/util/ArrayList;

    monitor-enter v3

    :try_start_3d
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModGameQueue;->jobs:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    monitor-exit v3
    :try_end_43
    .catchall {:try_start_3d .. :try_end_43} :catchall_71

    .line 44
    iget-object v0, v2, Lfr/testudo/spacecorsair/mod/ModGameQueue$Job;->done:Ljava/util/concurrent/CountDownLatch;

    const-wide/16 v4, 0x7d0

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v4, v5, v3}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v0

    if-nez v0, :cond_6b

    iget-object v0, v2, Lfr/testudo/spacecorsair/mod/ModGameQueue$Job;->claimed:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_6b

    .line 45
    sget-object v1, Lfr/testudo/spacecorsair/mod/ModGameQueue;->jobs:Ljava/util/ArrayList;

    monitor-enter v1

    :try_start_5b
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModGameQueue;->jobs:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    monitor-exit v1
    :try_end_61
    .catchall {:try_start_5b .. :try_end_61} :catchall_74

    .line 46
    const-string v0, "gamequeue"

    const-string v1, "game thread idle: ran on the caller"

    invoke-static {v0, v1}, Lfr/testudo/spacecorsair/mod/ModDev;->ev(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    invoke-virtual {v2}, Lfr/testudo/spacecorsair/mod/ModGameQueue$Job;->run()V

    .line 49
    :cond_6b
    iget-object v0, v2, Lfr/testudo/spacecorsair/mod/ModGameQueue$Job;->done:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V

    goto :goto_2c

    .line 43
    :catchall_71
    move-exception v0

    :try_start_72
    monitor-exit v3
    :try_end_73
    .catchall {:try_start_72 .. :try_end_73} :catchall_71

    throw v0

    .line 45
    :catchall_74
    move-exception v0

    :try_start_75
    monitor-exit v1
    :try_end_76
    .catchall {:try_start_75 .. :try_end_76} :catchall_74

    throw v0

    .line 52
    :cond_77
    iget-object v0, v2, Lfr/testudo/spacecorsair/mod/ModGameQueue$Job;->err:Ljava/lang/Throwable;

    if-eqz v0, :cond_83

    new-instance v0, Ljava/lang/RuntimeException;

    iget-object v1, v2, Lfr/testudo/spacecorsair/mod/ModGameQueue$Job;->err:Ljava/lang/Throwable;

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 53
    :cond_83
    iget-object v0, v2, Lfr/testudo/spacecorsair/mod/ModGameQueue$Job;->out:Ljava/lang/Object;

    return-object v0
.end method
