.class public abstract Lfr/testudo/spacecorsair/display/AnimatedDrawable;
.super Lfr/testudo/spacecorsair/engine/PoolObject;
.source "SourceFile"


# instance fields
.field public animTime:[J

.field public cameraRelative:Z

.field public currentSprite:I

.field finished:Z

.field public position:Lfr/testudo/spacecorsair/engine/Vector2;

.field repeatable:Z

.field public spin:F


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 22
    invoke-direct {p0}, Lfr/testudo/spacecorsair/engine/PoolObject;-><init>()V

    .line 14
    new-instance v0, Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-direct {v0, v1, v1}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>(FF)V

    iput-object v0, p0, Lfr/testudo/spacecorsair/display/AnimatedDrawable;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    .line 16
    const/4 v0, 0x0

    iput-boolean v0, p0, Lfr/testudo/spacecorsair/display/AnimatedDrawable;->cameraRelative:Z

    .line 24
    return-void
.end method

.method public static initFluidArray(II)[J
    .registers 6

    .prologue
    .line 74
    new-array v1, p0, [J

    .line 75
    const/4 v0, 0x0

    :goto_3
    if-ge v0, p0, :cond_e

    .line 76
    add-int/lit8 v2, v0, 0x1

    mul-int/2addr v2, p1

    int-to-long v2, v2

    aput-wide v2, v1, v0

    .line 75
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 78
    :cond_e
    return-object v1
.end method

.method private initTimeRef()V
    .registers 7

    .prologue
    .line 39
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 40
    iget-object v0, p0, Lfr/testudo/spacecorsair/display/AnimatedDrawable;->animTime:[J

    if-nez v0, :cond_11

    .line 41
    invoke-virtual {p0}, Lfr/testudo/spacecorsair/display/AnimatedDrawable;->getRefAnimTime()[J

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [J

    iput-object v0, p0, Lfr/testudo/spacecorsair/display/AnimatedDrawable;->animTime:[J

    .line 43
    :cond_11
    const/4 v0, 0x0

    :goto_12
    invoke-virtual {p0}, Lfr/testudo/spacecorsair/display/AnimatedDrawable;->getRefAnimTime()[J

    move-result-object v1

    array-length v1, v1

    if-ge v0, v1, :cond_27

    .line 44
    iget-object v1, p0, Lfr/testudo/spacecorsair/display/AnimatedDrawable;->animTime:[J

    invoke-virtual {p0}, Lfr/testudo/spacecorsair/display/AnimatedDrawable;->getRefAnimTime()[J

    move-result-object v4

    aget-wide v4, v4, v0

    add-long/2addr v4, v2

    aput-wide v4, v1, v0

    .line 43
    add-int/lit8 v0, v0, 0x1

    goto :goto_12

    .line 46
    :cond_27
    return-void
.end method


# virtual methods
.method public finalizePoolObject()V
    .registers 1

    .prologue
    .line 99
    return-void
.end method

.method public getDrawable()Lfr/testudo/spacecorsair/display/Drawable;
    .registers 3

    .prologue
    .line 69
    invoke-virtual {p0}, Lfr/testudo/spacecorsair/display/AnimatedDrawable;->getDrawables()[Lfr/testudo/spacecorsair/display/Drawable;

    move-result-object v0

    iget v1, p0, Lfr/testudo/spacecorsair/display/AnimatedDrawable;->currentSprite:I

    aget-object v0, v0, v1

    return-object v0
.end method

.method public abstract getDrawables()[Lfr/testudo/spacecorsair/display/Drawable;
.end method

.method public abstract getRefAnimTime()[J
.end method

.method public init(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/display/AnimatedDrawable;
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 27
    iget-object v0, p0, Lfr/testudo/spacecorsair/display/AnimatedDrawable;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v0, p1}, Lfr/testudo/spacecorsair/engine/Vector2;->setSameAs(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 28
    invoke-direct {p0}, Lfr/testudo/spacecorsair/display/AnimatedDrawable;->initTimeRef()V

    .line 29
    iput v1, p0, Lfr/testudo/spacecorsair/display/AnimatedDrawable;->currentSprite:I

    .line 30
    iput-boolean v1, p0, Lfr/testudo/spacecorsair/display/AnimatedDrawable;->finished:Z

    .line 31
    iput-boolean v1, p0, Lfr/testudo/spacecorsair/display/AnimatedDrawable;->repeatable:Z

    .line 32
    const/4 v0, 0x0

    iput v0, p0, Lfr/testudo/spacecorsair/display/AnimatedDrawable;->spin:F

    .line 33
    return-object p0
.end method

.method public initializePoolObject()V
    .registers 1

    .prologue
    .line 92
    invoke-virtual {p0}, Lfr/testudo/spacecorsair/display/AnimatedDrawable;->reset()V

    .line 93
    return-void
.end method

.method public recycleToPool()V
    .registers 2

    .prologue
    .line 102
    iget-object v0, p0, Lfr/testudo/spacecorsair/display/AnimatedDrawable;->myPool:Lfr/testudo/spacecorsair/engine/ObjectPool;

    if-eqz v0, :cond_9

    .line 103
    iget-object v0, p0, Lfr/testudo/spacecorsair/display/AnimatedDrawable;->myPool:Lfr/testudo/spacecorsair/engine/ObjectPool;

    invoke-virtual {v0, p0}, Lfr/testudo/spacecorsair/engine/ObjectPool;->freeObject(Lfr/testudo/spacecorsair/engine/PoolObject;)V

    .line 105
    :cond_9
    return-void
.end method

.method public remove()V
    .registers 2

    .prologue
    .line 108
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/Game;->currentLevel:Lfr/testudo/spacecorsair/game/levels/Level;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/levels/Level;->toDeleteAnimated:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 109
    return-void
.end method

.method public reset()V
    .registers 1

    .prologue
    .line 85
    return-void
.end method

.method public updateCurrentSprite(J)V
    .registers 8

    .prologue
    .line 50
    iget v0, p0, Lfr/testudo/spacecorsair/display/AnimatedDrawable;->currentSprite:I

    :goto_2
    iget-object v1, p0, Lfr/testudo/spacecorsair/display/AnimatedDrawable;->animTime:[J

    array-length v1, v1

    if-ge v0, v1, :cond_15

    .line 51
    iget-object v1, p0, Lfr/testudo/spacecorsair/display/AnimatedDrawable;->animTime:[J

    aget-wide v2, v1, v0

    cmp-long v1, p1, v2

    if-gez v1, :cond_12

    .line 52
    iput v0, p0, Lfr/testudo/spacecorsair/display/AnimatedDrawable;->currentSprite:I

    .line 66
    :goto_11
    return-void

    .line 50
    :cond_12
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 58
    :cond_15
    iget-boolean v0, p0, Lfr/testudo/spacecorsair/display/AnimatedDrawable;->repeatable:Z

    if-eqz v0, :cond_20

    .line 59
    const/4 v0, 0x0

    iput v0, p0, Lfr/testudo/spacecorsair/display/AnimatedDrawable;->currentSprite:I

    .line 60
    invoke-direct {p0}, Lfr/testudo/spacecorsair/display/AnimatedDrawable;->initTimeRef()V

    goto :goto_11

    .line 63
    :cond_20
    const/4 v0, 0x1

    iput-boolean v0, p0, Lfr/testudo/spacecorsair/display/AnimatedDrawable;->finished:Z

    .line 64
    invoke-virtual {p0}, Lfr/testudo/spacecorsair/display/AnimatedDrawable;->remove()V

    goto :goto_11
.end method
