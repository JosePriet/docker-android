.class final Lfr/testudo/spacecorsair/mod/ModGameQueue$Job;
.super Ljava/lang/Object;
.source "ModGameQueue.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfr/testudo/spacecorsair/mod/ModGameQueue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Job"
.end annotation


# instance fields
.field final c:Ljava/util/concurrent/Callable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Callable",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field final claimed:Ljava/util/concurrent/atomic/AtomicBoolean;

.field final done:Ljava/util/concurrent/CountDownLatch;

.field err:Ljava/lang/Throwable;

.field out:Ljava/lang/Object;


# direct methods
.method constructor <init>(Ljava/util/concurrent/Callable;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Callable",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lfr/testudo/spacecorsair/mod/ModGameQueue$Job;->claimed:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 21
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lfr/testudo/spacecorsair/mod/ModGameQueue$Job;->done:Ljava/util/concurrent/CountDownLatch;

    .line 24
    iput-object p1, p0, Lfr/testudo/spacecorsair/mod/ModGameQueue$Job;->c:Ljava/util/concurrent/Callable;

    return-void
.end method


# virtual methods
.method run()V
    .registers 2

    .prologue
    .line 26
    :try_start_0
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModGameQueue$Job;->c:Ljava/util/concurrent/Callable;

    invoke-interface {v0}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lfr/testudo/spacecorsair/mod/ModGameQueue$Job;->out:Ljava/lang/Object;
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_8} :catch_e

    .line 27
    :goto_8
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModGameQueue$Job;->done:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 28
    return-void

    .line 26
    :catch_e
    move-exception v0

    iput-object v0, p0, Lfr/testudo/spacecorsair/mod/ModGameQueue$Job;->err:Ljava/lang/Throwable;

    goto :goto_8
.end method
