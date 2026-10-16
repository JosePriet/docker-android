.class public Lfr/testudo/spacecorsair/engine/ObjectPool;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Lfr/testudo/spacecorsair/engine/PoolObject;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field protected final MAX_FREE_OBJECT_INDEX:I

.field protected freeObjectIndex:I

.field protected final freeObjects:[Lfr/testudo/spacecorsair/engine/PoolObject;


# direct methods
.method public constructor <init>(I)V
    .registers 3

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    const/4 v0, -0x1

    iput v0, p0, Lfr/testudo/spacecorsair/engine/ObjectPool;->freeObjectIndex:I

    .line 13
    new-array v0, p1, [Lfr/testudo/spacecorsair/engine/PoolObject;

    iput-object v0, p0, Lfr/testudo/spacecorsair/engine/ObjectPool;->freeObjects:[Lfr/testudo/spacecorsair/engine/PoolObject;

    .line 14
    add-int/lit8 v0, p1, -0x1

    iput v0, p0, Lfr/testudo/spacecorsair/engine/ObjectPool;->MAX_FREE_OBJECT_INDEX:I

    .line 15
    return-void
.end method


# virtual methods
.method public declared-synchronized freeObject(Lfr/testudo/spacecorsair/engine/PoolObject;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)V"
        }
    .end annotation

    .prologue
    .line 55
    monitor-enter p0

    if-eqz p1, :cond_18

    .line 57
    :try_start_3
    invoke-virtual {p1}, Lfr/testudo/spacecorsair/engine/PoolObject;->finalizePoolObject()V

    .line 61
    iget v0, p0, Lfr/testudo/spacecorsair/engine/ObjectPool;->freeObjectIndex:I

    iget v1, p0, Lfr/testudo/spacecorsair/engine/ObjectPool;->MAX_FREE_OBJECT_INDEX:I

    if-ge v0, v1, :cond_18

    .line 62
    iget v0, p0, Lfr/testudo/spacecorsair/engine/ObjectPool;->freeObjectIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lfr/testudo/spacecorsair/engine/ObjectPool;->freeObjectIndex:I

    .line 65
    iget-object v0, p0, Lfr/testudo/spacecorsair/engine/ObjectPool;->freeObjects:[Lfr/testudo/spacecorsair/engine/PoolObject;

    iget v1, p0, Lfr/testudo/spacecorsair/engine/ObjectPool;->freeObjectIndex:I

    aput-object p1, v0, v1
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_1a

    .line 68
    :cond_18
    monitor-exit p0

    return-void

    .line 55
    :catchall_1a
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getObject()Lfr/testudo/spacecorsair/engine/PoolObject;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .prologue
    .line 30
    monitor-enter p0

    .line 32
    :try_start_1
    iget v0, p0, Lfr/testudo/spacecorsair/engine/ObjectPool;->freeObjectIndex:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_17

    const/4 v1, -0x1

    if-ne v0, v1, :cond_9

    .line 34
    const/4 v0, 0x0

    .line 44
    :goto_7
    monitor-exit p0

    return-object v0

    .line 38
    :cond_9
    :try_start_9
    iget-object v0, p0, Lfr/testudo/spacecorsair/engine/ObjectPool;->freeObjects:[Lfr/testudo/spacecorsair/engine/PoolObject;

    iget v1, p0, Lfr/testudo/spacecorsair/engine/ObjectPool;->freeObjectIndex:I

    add-int/lit8 v2, v1, -0x1

    iput v2, p0, Lfr/testudo/spacecorsair/engine/ObjectPool;->freeObjectIndex:I

    aget-object v0, v0, v1

    .line 42
    invoke-virtual {v0}, Lfr/testudo/spacecorsair/engine/PoolObject;->initializePoolObject()V
    :try_end_16
    .catchall {:try_start_9 .. :try_end_16} :catchall_17

    goto :goto_7

    .line 30
    :catchall_17
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public hasMoreSpace()Z
    .registers 3

    .prologue
    .line 20
    iget v0, p0, Lfr/testudo/spacecorsair/engine/ObjectPool;->freeObjectIndex:I

    iget v1, p0, Lfr/testudo/spacecorsair/engine/ObjectPool;->MAX_FREE_OBJECT_INDEX:I

    if-ge v0, v1, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method
