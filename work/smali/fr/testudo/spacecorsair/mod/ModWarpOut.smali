.class final Lfr/testudo/spacecorsair/mod/ModWarpOut;
.super Ljava/lang/Object;
.source "ModWarpOut.java"


# static fields
.field static final MS:J = 0xbb8L

.field private static fA:Ljava/lang/reflect/Field;

.field private static fIdx:Ljava/lang/reflect/Field;

.field private static fSize:Ljava/lang/reflect/Field;

.field private static final out:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lfr/testudo/spacecorsair/business/Element;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 24
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModWarpOut;->out:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static active(Lfr/testudo/spacecorsair/business/Element;)Z
    .registers 3

    .prologue
    .line 48
    sget-object v1, Lfr/testudo/spacecorsair/mod/ModWarpOut;->out:Ljava/util/Map;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModWarpOut;->out:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    monitor-exit v1

    return v0

    :catchall_b
    move-exception v0

    monitor-exit v1
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v0
.end method

.method static clear()V
    .registers 4

    .prologue
    .line 73
    sget-object v1, Lfr/testudo/spacecorsair/mod/ModWarpOut;->out:Ljava/util/Map;

    monitor-enter v1

    .line 74
    :try_start_3
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModWarpOut;->out:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_d
    :goto_d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_22

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfr/testudo/spacecorsair/business/Element;

    if-eqz v0, :cond_d

    const/4 v3, 0x0

    iput-boolean v3, v0, Lfr/testudo/spacecorsair/business/Element;->invincible:Z

    goto :goto_d

    .line 76
    :catchall_1f
    move-exception v0

    monitor-exit v1
    :try_end_21
    .catchall {:try_start_3 .. :try_end_21} :catchall_1f

    throw v0

    .line 75
    :cond_22
    :try_start_22
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModWarpOut;->out:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 76
    monitor-exit v1
    :try_end_28
    .catchall {:try_start_22 .. :try_end_28} :catchall_1f

    .line 77
    return-void
.end method

.method static fade(Lfr/testudo/spacecorsair/business/Element;I)V
    .registers 9

    .prologue
    const/high16 v4, 0x3f800000    # 1.0f

    .line 82
    sget-object v1, Lfr/testudo/spacecorsair/mod/ModWarpOut;->out:Ljava/util/Map;

    monitor-enter v1

    :try_start_5
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModWarpOut;->out:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    monitor-exit v1

    .line 83
    if-eqz v0, :cond_12

    if-gez p1, :cond_16

    .line 94
    :cond_12
    :goto_12
    return-void

    .line 82
    :catchall_13
    move-exception v0

    monitor-exit v1
    :try_end_15
    .catchall {:try_start_5 .. :try_end_15} :catchall_13

    throw v0

    .line 84
    :cond_16
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    sub-long v0, v2, v0

    long-to-float v0, v0

    const v1, 0x453b8000    # 3000.0f

    div-float/2addr v0, v1

    invoke-static {v4, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    sub-float v0, v4, v0

    .line 86
    :try_start_2b
    sget-object v1, Lfr/testudo/spacecorsair/mod/ModWarpOut;->fA:Ljava/lang/reflect/Field;

    if-nez v1, :cond_5f

    const-class v1, Lfr/testudo/spacecorsair/display/RenderElement;

    const-string v2, "a"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    sput-object v1, Lfr/testudo/spacecorsair/mod/ModWarpOut;->fA:Ljava/lang/reflect/Field;

    sget-object v1, Lfr/testudo/spacecorsair/mod/ModWarpOut;->fA:Ljava/lang/reflect/Field;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    const-class v1, Lfr/testudo/spacecorsair/engine/RenderQueue;

    const-string v2, "waitingQueueIndex"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    sput-object v1, Lfr/testudo/spacecorsair/mod/ModWarpOut;->fIdx:Ljava/lang/reflect/Field;

    sget-object v1, Lfr/testudo/spacecorsair/mod/ModWarpOut;->fIdx:Ljava/lang/reflect/Field;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    const-class v1, Lfr/testudo/spacecorsair/engine/RenderQueue;

    const-string v2, "queueSize"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    sput-object v1, Lfr/testudo/spacecorsair/mod/ModWarpOut;->fSize:Ljava/lang/reflect/Field;

    sget-object v1, Lfr/testudo/spacecorsair/mod/ModWarpOut;->fSize:Ljava/lang/reflect/Field;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 87
    :cond_5f
    sget-object v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v1, v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->renderQueue:Lfr/testudo/spacecorsair/engine/RenderQueue;

    .line 88
    sget-object v2, Lfr/testudo/spacecorsair/mod/ModWarpOut;->fSize:Ljava/lang/reflect/Field;

    invoke-virtual {v2, v1}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v2

    .line 89
    iget-object v3, v1, Lfr/testudo/spacecorsair/engine/RenderQueue;->objectQueue:[[Lfr/testudo/spacecorsair/display/RenderElement;

    sget-object v4, Lfr/testudo/spacecorsair/mod/ModWarpOut;->fIdx:Ljava/lang/reflect/Field;

    invoke-virtual {v4, v1}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v1

    aget-object v1, v3, v1

    .line 90
    :goto_73
    if-ge p1, v2, :cond_12

    array-length v3, v1

    if-ge p1, v3, :cond_12

    aget-object v3, v1, p1

    if-eqz v3, :cond_8c

    sget-object v3, Lfr/testudo/spacecorsair/mod/ModWarpOut;->fA:Ljava/lang/reflect/Field;

    aget-object v4, v1, p1

    sget-object v5, Lfr/testudo/spacecorsair/mod/ModWarpOut;->fA:Ljava/lang/reflect/Field;

    aget-object v6, v1, p1

    invoke-virtual {v5, v6}, Ljava/lang/reflect/Field;->getFloat(Ljava/lang/Object;)F

    move-result v5

    mul-float/2addr v5, v0

    invoke-virtual {v3, v4, v5}, Ljava/lang/reflect/Field;->setFloat(Ljava/lang/Object;F)V
    :try_end_8c
    .catch Ljava/lang/Throwable; {:try_start_2b .. :try_end_8c} :catch_8f

    :cond_8c
    add-int/lit8 p1, p1, 0x1

    goto :goto_73

    .line 91
    :catch_8f
    move-exception v0

    goto :goto_12
.end method

.method static mark()I
    .registers 2

    .prologue
    .line 98
    :try_start_0
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModWarpOut;->fSize:Ljava/lang/reflect/Field;

    if-nez v0, :cond_14

    const-class v0, Lfr/testudo/spacecorsair/engine/RenderQueue;

    const-string v1, "queueSize"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModWarpOut;->fSize:Ljava/lang/reflect/Field;

    sget-object v0, Lfr/testudo/spacecorsair/mod/ModWarpOut;->fSize:Ljava/lang/reflect/Field;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 99
    :cond_14
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModWarpOut;->fSize:Ljava/lang/reflect/Field;

    sget-object v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v1, v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->renderQueue:Lfr/testudo/spacecorsair/engine/RenderQueue;

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I
    :try_end_1d
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_1d} :catch_1f

    move-result v0

    .line 101
    :goto_1e
    return v0

    .line 100
    :catch_1f
    move-exception v0

    .line 101
    const/4 v0, -0x1

    goto :goto_1e
.end method

.method static start(Lfr/testudo/spacecorsair/business/ennemis/Ennemis;)V
    .registers 5

    .prologue
    .line 27
    if-eqz p0, :cond_6

    iget-boolean v0, p0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->removed:Z

    if-eqz v0, :cond_7

    .line 40
    :cond_6
    :goto_6
    return-void

    .line 28
    :cond_7
    sget-object v1, Lfr/testudo/spacecorsair/mod/ModWarpOut;->out:Ljava/util/Map;

    monitor-enter v1

    .line 29
    :try_start_a
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModWarpOut;->out:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    monitor-exit v1

    goto :goto_6

    .line 31
    :catchall_14
    move-exception v0

    monitor-exit v1
    :try_end_16
    .catchall {:try_start_a .. :try_end_16} :catchall_14

    throw v0

    .line 30
    :cond_17
    :try_start_17
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModWarpOut;->out:Ljava/util/Map;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, p0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    monitor-exit v1
    :try_end_25
    .catchall {:try_start_17 .. :try_end_25} :catchall_14

    .line 33
    const/4 v0, 0x0

    :try_start_26
    iput v0, p0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->bulletDamage:F

    .line 34
    const/4 v0, 0x1

    iput-boolean v0, p0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->invincible:Z

    .line 35
    const-wide v0, 0x3fffffffffffffffL    # 1.9999999999999998

    iput-wide v0, p0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->nextShootAlowed:J

    .line 36
    const/high16 v0, 0x3f000000    # 0.5f

    invoke-static {p0, v0}, Lfr/testudo/spacecorsair/mod/ModWarpOut;->wave(Lfr/testudo/spacecorsair/business/Element;F)V
    :try_end_37
    .catch Ljava/lang/Throwable; {:try_start_26 .. :try_end_37} :catch_38

    goto :goto_6

    .line 37
    :catch_38
    move-exception v0

    goto :goto_6
.end method

.method static startAll(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<+",
            "Lfr/testudo/spacecorsair/business/ennemis/Ennemis;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 43
    if-nez p0, :cond_3

    .line 45
    :cond_2
    return-void

    .line 44
    :cond_3
    const/4 v0, 0x0

    move v1, v0

    :goto_5
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModWarpOut;->start(Lfr/testudo/spacecorsair/business/ennemis/Ennemis;)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_5
.end method

.method static tick()V
    .registers 14

    .prologue
    .line 53
    sget-object v2, Lfr/testudo/spacecorsair/mod/ModWarpOut;->out:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 69
    :cond_8
    return-void

    .line 54
    :cond_9
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 55
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 56
    sget-object v8, Lfr/testudo/spacecorsair/mod/ModWarpOut;->out:Ljava/util/Map;

    monitor-enter v8

    .line 57
    :try_start_15
    sget-object v2, Lfr/testudo/spacecorsair/mod/ModWarpOut;->out:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_1f
    :goto_1f
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6d

    .line 58
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 59
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lfr/testudo/spacecorsair/business/Element;

    .line 60
    if-nez v3, :cond_3a

    invoke-interface {v9}, Ljava/util/Iterator;->remove()V

    goto :goto_1f

    .line 65
    :catchall_37
    move-exception v2

    monitor-exit v8
    :try_end_39
    .catchall {:try_start_15 .. :try_end_39} :catchall_37

    throw v2

    .line 61
    :cond_3a
    :try_start_3a
    iget-boolean v4, v3, Lfr/testudo/spacecorsair/business/Element;->removed:Z

    if-eqz v4, :cond_45

    const/4 v2, 0x0

    iput-boolean v2, v3, Lfr/testudo/spacecorsair/business/Element;->invincible:Z

    invoke-interface {v9}, Ljava/util/Iterator;->remove()V

    goto :goto_1f

    .line 62
    :cond_45
    instance-of v4, v3, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    if-eqz v4, :cond_54

    move-object v0, v3

    check-cast v0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    move-object v4, v0

    const-wide v10, 0x3fffffffffffffffL    # 1.9999999999999998

    iput-wide v10, v4, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->nextShootAlowed:J

    .line 63
    :cond_54
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    sub-long v10, v6, v10

    const-wide/16 v12, 0xbb8

    cmp-long v2, v10, v12

    if-ltz v2, :cond_1f

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-interface {v9}, Ljava/util/Iterator;->remove()V

    goto :goto_1f

    .line 65
    :cond_6d
    monitor-exit v8
    :try_end_6e
    .catchall {:try_start_3a .. :try_end_6e} :catchall_37

    .line 66
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_72
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lfr/testudo/spacecorsair/business/Element;

    .line 67
    const/4 v4, 0x0

    :try_start_7f
    iput-boolean v4, v2, Lfr/testudo/spacecorsair/business/Element;->invincible:Z

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-static {v2, v4}, Lfr/testudo/spacecorsair/mod/ModWarpOut;->wave(Lfr/testudo/spacecorsair/business/Element;F)V

    invoke-virtual {v2}, Lfr/testudo/spacecorsair/business/Element;->remove()V
    :try_end_89
    .catch Ljava/lang/Throwable; {:try_start_7f .. :try_end_89} :catch_8a

    goto :goto_72

    :catch_8a
    move-exception v2

    goto :goto_72
.end method

.method private static wave(Lfr/testudo/spacecorsair/business/Element;F)V
    .registers 7

    .prologue
    .line 108
    invoke-static {}, Lfr/testudo/spacecorsair/business/factory/GamePools;->newShockWave()Lfr/testudo/spacecorsair/display/ShockWave;

    move-result-object v0

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/Element;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    const/high16 v2, 0x42200000    # 40.0f

    const/high16 v3, 0x43820000    # 260.0f

    mul-float/2addr v3, p1

    const/high16 v4, 0x44160000    # 600.0f

    invoke-virtual {v0, v1, v2, v3, v4}, Lfr/testudo/spacecorsair/display/ShockWave;->init(Lfr/testudo/spacecorsair/engine/Vector2;FFF)Lfr/testudo/spacecorsair/display/ShockWave;

    move-result-object v0

    .line 109
    const v1, 0x3ee66666    # 0.45f

    iput v1, v0, Lfr/testudo/spacecorsair/display/ShockWave;->r:F

    const v1, 0x3f333333    # 0.7f

    iput v1, v0, Lfr/testudo/spacecorsair/display/ShockWave;->g:F

    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, v0, Lfr/testudo/spacecorsair/display/ShockWave;->b:F

    .line 110
    sget-object v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v1, v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v1, v1, Lfr/testudo/spacecorsair/game/Game;->currentLevel:Lfr/testudo/spacecorsair/game/levels/Level;

    iget-object v1, v1, Lfr/testudo/spacecorsair/game/levels/Level;->toAddDrawOnly:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 111
    return-void
.end method
