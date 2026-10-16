.class public abstract Lfr/testudo/spacecorsair/engine/PoolObject;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public myPool:Lfr/testudo/spacecorsair/engine/ObjectPool;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract finalizePoolObject()V
.end method

.method public abstract initializePoolObject()V
.end method

.method public recycleToPool()V
    .registers 2

    .prologue
    .line 15
    iget-object v0, p0, Lfr/testudo/spacecorsair/engine/PoolObject;->myPool:Lfr/testudo/spacecorsair/engine/ObjectPool;

    if-eqz v0, :cond_9

    .line 16
    iget-object v0, p0, Lfr/testudo/spacecorsair/engine/PoolObject;->myPool:Lfr/testudo/spacecorsair/engine/ObjectPool;

    invoke-virtual {v0, p0}, Lfr/testudo/spacecorsair/engine/ObjectPool;->freeObject(Lfr/testudo/spacecorsair/engine/PoolObject;)V

    .line 18
    :cond_9
    return-void
.end method
