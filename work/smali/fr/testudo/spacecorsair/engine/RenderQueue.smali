.class public Lfr/testudo/spacecorsair/engine/RenderQueue;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final MAX_OBJECT_PER_FRAME:I = 0x9c4


# instance fields
.field private initialized:Z

.field public objectQueue:[[Lfr/testudo/spacecorsair/display/RenderElement;

.field private queueSize:I

.field private renderQueueIndex:I

.field private waitingQueueIndex:I


# direct methods
.method public constructor <init>()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput v2, p0, Lfr/testudo/spacecorsair/engine/RenderQueue;->renderQueueIndex:I

    .line 19
    const/4 v0, 0x1

    iput v0, p0, Lfr/testudo/spacecorsair/engine/RenderQueue;->waitingQueueIndex:I

    .line 20
    iput v2, p0, Lfr/testudo/spacecorsair/engine/RenderQueue;->queueSize:I

    .line 21
    const/4 v0, 0x2

    const/16 v1, 0x9c4

    filled-new-array {v0, v1}, [I

    move-result-object v0

    const-class v1, Lfr/testudo/spacecorsair/display/RenderElement;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[Lfr/testudo/spacecorsair/display/RenderElement;

    iput-object v0, p0, Lfr/testudo/spacecorsair/engine/RenderQueue;->objectQueue:[[Lfr/testudo/spacecorsair/display/RenderElement;

    .line 22
    iput-boolean v2, p0, Lfr/testudo/spacecorsair/engine/RenderQueue;->initialized:Z

    .line 27
    invoke-direct {p0}, Lfr/testudo/spacecorsair/engine/RenderQueue;->initQueues()V

    .line 29
    return-void
.end method

.method private initQueues()V
    .registers 6

    .prologue
    const/4 v4, 0x1

    const/4 v1, 0x0

    .line 33
    iget-boolean v0, p0, Lfr/testudo/spacecorsair/engine/RenderQueue;->initialized:Z

    if-eqz v0, :cond_7

    .line 41
    :goto_6
    return-void

    :cond_7
    move v0, v1

    .line 36
    :goto_8
    const/16 v2, 0x9c4

    if-ge v0, v2, :cond_25

    .line 37
    iget-object v2, p0, Lfr/testudo/spacecorsair/engine/RenderQueue;->objectQueue:[[Lfr/testudo/spacecorsair/display/RenderElement;

    aget-object v2, v2, v1

    new-instance v3, Lfr/testudo/spacecorsair/display/RenderElement;

    invoke-direct {v3}, Lfr/testudo/spacecorsair/display/RenderElement;-><init>()V

    aput-object v3, v2, v0

    .line 38
    iget-object v2, p0, Lfr/testudo/spacecorsair/engine/RenderQueue;->objectQueue:[[Lfr/testudo/spacecorsair/display/RenderElement;

    aget-object v2, v2, v4

    new-instance v3, Lfr/testudo/spacecorsair/display/RenderElement;

    invoke-direct {v3}, Lfr/testudo/spacecorsair/display/RenderElement;-><init>()V

    aput-object v3, v2, v0

    .line 36
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 40
    :cond_25
    iput-boolean v4, p0, Lfr/testudo/spacecorsair/engine/RenderQueue;->initialized:Z

    goto :goto_6
.end method


# virtual methods
.method public addTextToTextWaitingQueue(FFZLjava/lang/String;FFFFLfr/testudo/spacecorsair/textengine/TextSize;)V
    .registers 20

    .prologue
    .line 110
    iget v0, p0, Lfr/testudo/spacecorsair/engine/RenderQueue;->queueSize:I

    const/16 v1, 0x9c4

    if-ge v0, v1, :cond_24

    .line 111
    iget-object v0, p0, Lfr/testudo/spacecorsair/engine/RenderQueue;->objectQueue:[[Lfr/testudo/spacecorsair/display/RenderElement;

    iget v1, p0, Lfr/testudo/spacecorsair/engine/RenderQueue;->waitingQueueIndex:I

    aget-object v0, v0, v1

    iget v1, p0, Lfr/testudo/spacecorsair/engine/RenderQueue;->queueSize:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lfr/testudo/spacecorsair/engine/RenderQueue;->queueSize:I

    aget-object v0, v0, v1

    move v1, p1

    move v2, p2

    move-object v3, p4

    move v4, p3

    move v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move-object/from16 v9, p9

    invoke-virtual/range {v0 .. v9}, Lfr/testudo/spacecorsair/display/RenderElement;->setAsText(FFLjava/lang/String;ZFFFFLfr/testudo/spacecorsair/textengine/TextSize;)V

    .line 113
    :cond_24
    return-void
.end method

.method public addTextToTextWaitingQueue(Lfr/testudo/spacecorsair/engine/Vector2;ZLjava/lang/String;FFFFLfr/testudo/spacecorsair/textengine/TextSize;)V
    .registers 18

    .prologue
    invoke-static {p3}, Lfr/testudo/spacecorsair/mod/ModV35;->tag(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :v35_tag

    sget p4, Lfr/testudo/spacecorsair/mod/ModV35;->tagR:F

    sget p5, Lfr/testudo/spacecorsair/mod/ModV35;->tagG:F

    sget p6, Lfr/testudo/spacecorsair/mod/ModV35;->tagB:F

    :v35_tag
    .line 103
    iget v0, p0, Lfr/testudo/spacecorsair/engine/RenderQueue;->queueSize:I

    const/16 v1, 0x9c4

    if-ge v0, v1, :cond_21

    .line 104
    iget-object v0, p0, Lfr/testudo/spacecorsair/engine/RenderQueue;->objectQueue:[[Lfr/testudo/spacecorsair/display/RenderElement;

    iget v1, p0, Lfr/testudo/spacecorsair/engine/RenderQueue;->waitingQueueIndex:I

    aget-object v0, v0, v1

    iget v1, p0, Lfr/testudo/spacecorsair/engine/RenderQueue;->queueSize:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lfr/testudo/spacecorsair/engine/RenderQueue;->queueSize:I

    aget-object v0, v0, v1

    move-object v1, p1

    move-object v2, p3

    move v3, p2

    move v4, p4

    move v5, p5

    move v6, p6

    move/from16 v7, p7

    move-object/from16 v8, p8

    invoke-virtual/range {v0 .. v8}, Lfr/testudo/spacecorsair/display/RenderElement;->setAsText(Lfr/testudo/spacecorsair/engine/Vector2;Ljava/lang/String;ZFFFFLfr/testudo/spacecorsair/textengine/TextSize;)V

    .line 106
    :cond_21
    return-void
.end method

.method public addToPointWaitingQueue(Lfr/testudo/spacecorsair/engine/Vector2;ZFFFFF)V
    .registers 16

    .prologue
    .line 51
    iget v0, p0, Lfr/testudo/spacecorsair/engine/RenderQueue;->queueSize:I

    const/16 v1, 0x9c4

    if-ge v0, v1, :cond_1e

    .line 52
    iget-object v0, p0, Lfr/testudo/spacecorsair/engine/RenderQueue;->objectQueue:[[Lfr/testudo/spacecorsair/display/RenderElement;

    iget v1, p0, Lfr/testudo/spacecorsair/engine/RenderQueue;->waitingQueueIndex:I

    aget-object v0, v0, v1

    iget v1, p0, Lfr/testudo/spacecorsair/engine/RenderQueue;->queueSize:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lfr/testudo/spacecorsair/engine/RenderQueue;->queueSize:I

    aget-object v0, v0, v1

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move v7, p7

    invoke-virtual/range {v0 .. v7}, Lfr/testudo/spacecorsair/display/RenderElement;->setAsPoint(Lfr/testudo/spacecorsair/engine/Vector2;ZFFFFF)V

    .line 54
    :cond_1e
    return-void
.end method

.method public addToWaitingQueue(Lfr/testudo/spacecorsair/engine/Vector2;Lfr/testudo/spacecorsair/display/hud/InfoBar;)V
    .registers 6

    .prologue
    .line 97
    iget v0, p0, Lfr/testudo/spacecorsair/engine/RenderQueue;->queueSize:I

    const/16 v1, 0x9c4

    if-ge v0, v1, :cond_17

    .line 98
    iget-object v0, p0, Lfr/testudo/spacecorsair/engine/RenderQueue;->objectQueue:[[Lfr/testudo/spacecorsair/display/RenderElement;

    iget v1, p0, Lfr/testudo/spacecorsair/engine/RenderQueue;->waitingQueueIndex:I

    aget-object v0, v0, v1

    iget v1, p0, Lfr/testudo/spacecorsair/engine/RenderQueue;->queueSize:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lfr/testudo/spacecorsair/engine/RenderQueue;->queueSize:I

    aget-object v0, v0, v1

    invoke-virtual {v0, p1, p2}, Lfr/testudo/spacecorsair/display/RenderElement;->set(Lfr/testudo/spacecorsair/engine/Vector2;Lfr/testudo/spacecorsair/display/hud/InfoBar;)V

    .line 100
    :cond_17
    return-void
.end method

.method public addToWaitingQueue(Lfr/testudo/spacecorsair/engine/Vector2;Lfr/testudo/spacecorsair/engine/Vector2;ZFFFF)V
    .registers 16

    .prologue
    .line 91
    iget v0, p0, Lfr/testudo/spacecorsair/engine/RenderQueue;->queueSize:I

    const/16 v1, 0x9c4

    if-ge v0, v1, :cond_1e

    .line 92
    iget-object v0, p0, Lfr/testudo/spacecorsair/engine/RenderQueue;->objectQueue:[[Lfr/testudo/spacecorsair/display/RenderElement;

    iget v1, p0, Lfr/testudo/spacecorsair/engine/RenderQueue;->waitingQueueIndex:I

    aget-object v0, v0, v1

    iget v1, p0, Lfr/testudo/spacecorsair/engine/RenderQueue;->queueSize:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lfr/testudo/spacecorsair/engine/RenderQueue;->queueSize:I

    aget-object v0, v0, v1

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move v7, p7

    invoke-virtual/range {v0 .. v7}, Lfr/testudo/spacecorsair/display/RenderElement;->setLine(Lfr/testudo/spacecorsair/engine/Vector2;Lfr/testudo/spacecorsair/engine/Vector2;ZFFFF)V

    .line 94
    :cond_1e
    return-void
.end method

.method public addToWaitingQueue(Lfr/testudo/spacecorsair/engine/Vector2;ZLfr/testudo/spacecorsair/display/Drawable;F)V
    .registers 11

    .prologue
    .line 57
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lfr/testudo/spacecorsair/engine/RenderQueue;->addToWaitingQueue(Lfr/testudo/spacecorsair/engine/Vector2;ZLfr/testudo/spacecorsair/display/Drawable;FZ)V

    .line 58
    return-void
.end method

.method public addToWaitingQueue(Lfr/testudo/spacecorsair/engine/Vector2;ZLfr/testudo/spacecorsair/display/Drawable;FFFFF)V
    .registers 18

    .prologue
    .line 79
    iget v0, p0, Lfr/testudo/spacecorsair/engine/RenderQueue;->queueSize:I

    const/16 v1, 0x9c4

    if-ge v0, v1, :cond_21

    .line 80
    iget-object v0, p0, Lfr/testudo/spacecorsair/engine/RenderQueue;->objectQueue:[[Lfr/testudo/spacecorsair/display/RenderElement;

    iget v1, p0, Lfr/testudo/spacecorsair/engine/RenderQueue;->waitingQueueIndex:I

    aget-object v0, v0, v1

    iget v1, p0, Lfr/testudo/spacecorsair/engine/RenderQueue;->queueSize:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lfr/testudo/spacecorsair/engine/RenderQueue;->queueSize:I

    aget-object v0, v0, v1

    move-object v1, p3

    move-object v2, p1

    move v3, p2

    move v4, p4

    move v5, p5

    move v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    invoke-virtual/range {v0 .. v8}, Lfr/testudo/spacecorsair/display/RenderElement;->set(Lfr/testudo/spacecorsair/display/Drawable;Lfr/testudo/spacecorsair/engine/Vector2;ZFFFFF)V

    .line 82
    :cond_21
    return-void
.end method

.method public addToWaitingQueue(Lfr/testudo/spacecorsair/engine/Vector2;ZLfr/testudo/spacecorsair/display/Drawable;FFZ)V
    .registers 14

    .prologue
    .line 67
    iget v0, p0, Lfr/testudo/spacecorsair/engine/RenderQueue;->queueSize:I

    const/16 v1, 0x9c4

    if-ge v0, v1, :cond_1d

    .line 68
    iget-object v0, p0, Lfr/testudo/spacecorsair/engine/RenderQueue;->objectQueue:[[Lfr/testudo/spacecorsair/display/RenderElement;

    iget v1, p0, Lfr/testudo/spacecorsair/engine/RenderQueue;->waitingQueueIndex:I

    aget-object v0, v0, v1

    iget v1, p0, Lfr/testudo/spacecorsair/engine/RenderQueue;->queueSize:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lfr/testudo/spacecorsair/engine/RenderQueue;->queueSize:I

    aget-object v0, v0, v1

    move-object v1, p3

    move-object v2, p1

    move v3, p2

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Lfr/testudo/spacecorsair/display/RenderElement;->set(Lfr/testudo/spacecorsair/display/Drawable;Lfr/testudo/spacecorsair/engine/Vector2;ZFFZ)V

    .line 70
    :cond_1d
    return-void
.end method

.method public addToWaitingQueue(Lfr/testudo/spacecorsair/engine/Vector2;ZLfr/testudo/spacecorsair/display/Drawable;FZ)V
    .registers 13

    .prologue
    .line 61
    iget v0, p0, Lfr/testudo/spacecorsair/engine/RenderQueue;->queueSize:I

    const/16 v1, 0x9c4

    if-ge v0, v1, :cond_1e

    .line 62
    iget-object v0, p0, Lfr/testudo/spacecorsair/engine/RenderQueue;->objectQueue:[[Lfr/testudo/spacecorsair/display/RenderElement;

    iget v1, p0, Lfr/testudo/spacecorsair/engine/RenderQueue;->waitingQueueIndex:I

    aget-object v0, v0, v1

    iget v1, p0, Lfr/testudo/spacecorsair/engine/RenderQueue;->queueSize:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lfr/testudo/spacecorsair/engine/RenderQueue;->queueSize:I

    aget-object v0, v0, v1

    const/high16 v5, 0x3f800000    # 1.0f

    move-object v1, p3

    move-object v2, p1

    move v3, p2

    move v4, p4

    move v6, p5

    invoke-virtual/range {v0 .. v6}, Lfr/testudo/spacecorsair/display/RenderElement;->set(Lfr/testudo/spacecorsair/display/Drawable;Lfr/testudo/spacecorsair/engine/Vector2;ZFFZ)V

    .line 64
    :cond_1e
    return-void
.end method

.method public addToWaitingQueue(Lfr/testudo/spacecorsair/engine/Vector2;ZLfr/testudo/spacecorsair/display/Drawable;FZFFFF)V
    .registers 21

    .prologue
    .line 73
    iget v0, p0, Lfr/testudo/spacecorsair/engine/RenderQueue;->queueSize:I

    const/16 v1, 0x9c4

    if-ge v0, v1, :cond_26

    .line 74
    iget-object v0, p0, Lfr/testudo/spacecorsair/engine/RenderQueue;->objectQueue:[[Lfr/testudo/spacecorsair/display/RenderElement;

    iget v1, p0, Lfr/testudo/spacecorsair/engine/RenderQueue;->waitingQueueIndex:I

    aget-object v0, v0, v1

    iget v1, p0, Lfr/testudo/spacecorsair/engine/RenderQueue;->queueSize:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lfr/testudo/spacecorsair/engine/RenderQueue;->queueSize:I

    aget-object v0, v0, v1

    const/4 v10, 0x0

    move-object v1, p3

    move-object v2, p1

    move v3, p2

    move v4, p4

    move/from16 v5, p6

    move/from16 v6, p7

    move/from16 v7, p8

    move/from16 v8, p9

    move/from16 v9, p5

    invoke-virtual/range {v0 .. v10}, Lfr/testudo/spacecorsair/display/RenderElement;->set(Lfr/testudo/spacecorsair/display/Drawable;Lfr/testudo/spacecorsair/engine/Vector2;ZFFFFFZZ)V

    .line 76
    :cond_26
    return-void
.end method

.method public addToWaitingQueueAsBackground(Lfr/testudo/spacecorsair/engine/Vector2;ZLfr/testudo/spacecorsair/display/Drawable;FFFFF)V
    .registers 18

    .prologue
    .line 85
    iget v0, p0, Lfr/testudo/spacecorsair/engine/RenderQueue;->queueSize:I

    const/16 v1, 0x9c4

    if-ge v0, v1, :cond_21

    .line 86
    iget-object v0, p0, Lfr/testudo/spacecorsair/engine/RenderQueue;->objectQueue:[[Lfr/testudo/spacecorsair/display/RenderElement;

    iget v1, p0, Lfr/testudo/spacecorsair/engine/RenderQueue;->waitingQueueIndex:I

    aget-object v0, v0, v1

    iget v1, p0, Lfr/testudo/spacecorsair/engine/RenderQueue;->queueSize:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lfr/testudo/spacecorsair/engine/RenderQueue;->queueSize:I

    aget-object v0, v0, v1

    move-object v1, p3

    move-object v2, p1

    move v3, p2

    move v4, p4

    move v5, p5

    move v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    invoke-virtual/range {v0 .. v8}, Lfr/testudo/spacecorsair/display/RenderElement;->setAsBackground(Lfr/testudo/spacecorsair/display/Drawable;Lfr/testudo/spacecorsair/engine/Vector2;ZFFFFF)V

    .line 88
    :cond_21
    return-void
.end method

.method public swapQueues(Lfr/testudo/spacecorsair/engine/GameRenderer;)V
    .registers 4

    .prologue
    .line 122
    iget v0, p0, Lfr/testudo/spacecorsair/engine/RenderQueue;->waitingQueueIndex:I

    .line 123
    iget v1, p0, Lfr/testudo/spacecorsair/engine/RenderQueue;->renderQueueIndex:I

    iput v1, p0, Lfr/testudo/spacecorsair/engine/RenderQueue;->waitingQueueIndex:I

    .line 124
    iput v0, p0, Lfr/testudo/spacecorsair/engine/RenderQueue;->renderQueueIndex:I

    .line 126
    iget-object v0, p0, Lfr/testudo/spacecorsair/engine/RenderQueue;->objectQueue:[[Lfr/testudo/spacecorsair/display/RenderElement;

    iget v1, p0, Lfr/testudo/spacecorsair/engine/RenderQueue;->renderQueueIndex:I

    aget-object v0, v0, v1

    iget v1, p0, Lfr/testudo/spacecorsair/engine/RenderQueue;->queueSize:I

    invoke-virtual {p1, v0, v1}, Lfr/testudo/spacecorsair/engine/GameRenderer;->setDrawQueue([Lfr/testudo/spacecorsair/display/RenderElement;I)V

    .line 127
    const/4 v0, 0x0

    iput v0, p0, Lfr/testudo/spacecorsair/engine/RenderQueue;->queueSize:I

    .line 129
    return-void
.end method
