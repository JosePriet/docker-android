.class public final Lfr/testudo/spacecorsair/mod/ModTune;
.super Ljava/lang/Object;
.source "ModTune.java"


# static fields
.field static final KEYS:[Ljava/lang/String;

.field private static final NONE:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile vals:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private static final warned:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 21
    const/16 v0, 0x1b

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "capital.dmg_mult"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "police.dmg_bonus"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "police.hull_bonus"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "police_titan.stat_mult"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "police_titan.over_pass"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "aegis.drones_min"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "aegis.drones_max"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "aegis.respawn_s"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "hold.police_lo"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "hold.police_hi"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "hold.flag_lo"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "hold.flag_hi"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "events.first_s"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "events.gap_min_s"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "events.gap_max_s"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "events.distress_pay"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "events.bounty_pay"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "chain.window_s"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "chain.step"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "chain.cap"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "ccef.speed"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "ccef.dmg_taken"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "ccef.player_dmg"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "ccef.warp_in_s"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "ccef.survive_s"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "ccef.warp_mult"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "ccef.reward_credits"

    aput-object v2, v0, v1

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModTune;->KEYS:[Ljava/lang/String;

    .line 31
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModTune;->NONE:Ljava/util/Map;

    .line 32
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModTune;->warned:Ljava/util/Set;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static f(Ljava/lang/String;FFF)F
    .registers 5

    .prologue
    .line 35
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModTune;->vals:Ljava/util/Map;

    .line 36
    if-nez v0, :cond_8

    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModTune;->load()Ljava/util/Map;

    move-result-object v0

    .line 37
    :cond_8
    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    .line 38
    if-nez v0, :cond_11

    .line 44
    :cond_10
    :goto_10
    return p1

    .line 39
    :cond_11
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result p1

    .line 40
    cmpg-float v0, p1, p2

    if-ltz v0, :cond_1d

    cmpl-float v0, p1, p3

    if-lez v0, :cond_10

    .line 41
    :cond_1d
    invoke-static {p0, p1}, Lfr/testudo/spacecorsair/mod/ModTune;->warn(Ljava/lang/String;F)V

    .line 42
    cmpg-float v0, p1, p2

    if-gez v0, :cond_26

    :goto_24
    move p1, p2

    goto :goto_10

    :cond_26
    move p2, p3

    goto :goto_24
.end method

.method public static i(Ljava/lang/String;III)I
    .registers 7

    .prologue
    .line 48
    int-to-float v0, p1

    int-to-float v1, p2

    int-to-float v2, p3

    invoke-static {p0, v0, v1, v2}, Lfr/testudo/spacecorsair/mod/ModTune;->f(Ljava/lang/String;FFF)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    return v0
.end method

.method private static declared-synchronized load()Ljava/util/Map;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .prologue
    .line 58
    const-class v3, Lfr/testudo/spacecorsair/mod/ModTune;

    monitor-enter v3

    :try_start_3
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModTune;->vals:Ljava/util/Map;

    if-eqz v0, :cond_b

    sget-object v0, Lfr/testudo/spacecorsair/mod/ModTune;->vals:Ljava/util/Map;
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_70

    .line 70
    :goto_9
    monitor-exit v3

    return-object v0

    .line 59
    :cond_b
    :try_start_b
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModContent;->isReady()Z
    :try_end_e
    .catchall {:try_start_b .. :try_end_e} :catchall_70

    move-result v0

    if-nez v0, :cond_23

    .line 60
    :try_start_11
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/Game;->context:Landroid/content/Context;

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModContent;->ensure(Landroid/content/Context;)V
    :try_end_1a
    .catch Ljava/lang/Throwable; {:try_start_11 .. :try_end_1a} :catch_a2
    .catchall {:try_start_11 .. :try_end_1a} :catchall_70

    .line 61
    :goto_1a
    :try_start_1a
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModContent;->isReady()Z

    move-result v0

    if-nez v0, :cond_23

    sget-object v0, Lfr/testudo/spacecorsair/mod/ModTune;->NONE:Ljava/util/Map;

    goto :goto_9

    .line 63
    :cond_23
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 64
    const/4 v0, 0x0

    const-string v2, "data/tune.txt"

    invoke-static {v0, v2}, Lfr/testudo/spacecorsair/mod/ModContent;->layers(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_33
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_73

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/InputStream;
    :try_end_3f
    .catchall {:try_start_1a .. :try_end_3f} :catchall_70

    .line 65
    :try_start_3f
    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModContent;->readLines(Ljava/io/InputStream;)[Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Lfr/testudo/spacecorsair/mod/ModTune;->parse([Ljava/lang/String;Ljava/util/Map;)V
    :try_end_46
    .catch Ljava/lang/Throwable; {:try_start_3f .. :try_end_46} :catch_4c
    .catchall {:try_start_3f .. :try_end_46} :catchall_6b

    .line 66
    :try_start_46
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_49
    .catch Ljava/lang/Throwable; {:try_start_46 .. :try_end_49} :catch_4a
    .catchall {:try_start_46 .. :try_end_49} :catchall_70

    goto :goto_33

    :catch_4a
    move-exception v0

    goto :goto_33

    .line 65
    :catch_4c
    move-exception v2

    :try_start_4d
    const-string v5, "content"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "tune.txt: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Lfr/testudo/spacecorsair/mod/ModDev;->ev(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_65
    .catchall {:try_start_4d .. :try_end_65} :catchall_6b

    .line 66
    :try_start_65
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_68
    .catch Ljava/lang/Throwable; {:try_start_65 .. :try_end_68} :catch_69
    .catchall {:try_start_65 .. :try_end_68} :catchall_70

    goto :goto_33

    :catch_69
    move-exception v0

    goto :goto_33

    :catchall_6b
    move-exception v1

    :try_start_6c
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_6f
    .catch Ljava/lang/Throwable; {:try_start_6c .. :try_end_6f} :catch_a0
    .catchall {:try_start_6c .. :try_end_6f} :catchall_70

    :goto_6f
    :try_start_6f
    throw v1
    :try_end_70
    .catchall {:try_start_6f .. :try_end_70} :catchall_70

    .line 58
    :catchall_70
    move-exception v0

    monitor-exit v3

    throw v0

    .line 68
    :cond_73
    :try_start_73
    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_9b

    const-string v0, "content"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "tune: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " values from packs"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lfr/testudo/spacecorsair/mod/ModDev;->ev(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    :cond_9b
    sput-object v1, Lfr/testudo/spacecorsair/mod/ModTune;->vals:Ljava/util/Map;
    :try_end_9d
    .catchall {:try_start_73 .. :try_end_9d} :catchall_70

    move-object v0, v1

    .line 70
    goto/16 :goto_9

    .line 66
    :catch_a0
    move-exception v0

    goto :goto_6f

    .line 60
    :catch_a2
    move-exception v0

    goto/16 :goto_1a
.end method

.method static parse([Ljava/lang/String;Ljava/util/Map;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Float;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 75
    array-length v2, p0

    move v0, v1

    :goto_3
    if-ge v0, v2, :cond_54

    aget-object v3, p0, v0

    .line 76
    const-string v4, "#"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_12

    .line 75
    :cond_f
    :goto_f
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 77
    :cond_12
    const/16 v4, 0x3d

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    .line 78
    if-lez v4, :cond_f

    .line 79
    invoke-virtual {v3, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    .line 81
    add-int/lit8 v4, v4, 0x1

    :try_start_24
    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3

    .line 82
    invoke-static {v3}, Ljava/lang/Float;->isNaN(F)Z

    move-result v4

    if-nez v4, :cond_f

    invoke-static {v3}, Ljava/lang/Float;->isInfinite(F)Z

    move-result v4

    if-nez v4, :cond_f

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_f

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v4

    const/16 v6, 0x40

    if-gt v4, v6, :cond_f

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-interface {p1, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_51
    .catch Ljava/lang/NumberFormatException; {:try_start_24 .. :try_end_51} :catch_52

    goto :goto_f

    .line 83
    :catch_52
    move-exception v3

    goto :goto_f

    .line 85
    :cond_54
    return-void
.end method

.method static declared-synchronized testSet(Ljava/util/Map;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Float;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 88
    const-class v1, Lfr/testudo/spacecorsair/mod/ModTune;

    monitor-enter v1

    :try_start_3
    sput-object p0, Lfr/testudo/spacecorsair/mod/ModTune;->vals:Ljava/util/Map;

    sget-object v2, Lfr/testudo/spacecorsair/mod/ModTune;->warned:Ljava/util/Set;

    monitor-enter v2
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_13

    :try_start_8
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModTune;->warned:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    monitor-exit v2
    :try_end_e
    .catchall {:try_start_8 .. :try_end_e} :catchall_10

    monitor-exit v1

    return-void

    :catchall_10
    move-exception v0

    :try_start_11
    monitor-exit v2
    :try_end_12
    .catchall {:try_start_11 .. :try_end_12} :catchall_10

    :try_start_12
    throw v0
    :try_end_13
    .catchall {:try_start_12 .. :try_end_13} :catchall_13

    :catchall_13
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static warn(Ljava/lang/String;F)V
    .registers 5

    .prologue
    .line 52
    sget-object v1, Lfr/testudo/spacecorsair/mod/ModTune;->warned:Ljava/util/Set;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModTune;->warned:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    monitor-exit v1

    .line 54
    :goto_c
    return-void

    .line 52
    :cond_d
    monitor-exit v1
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_37

    .line 53
    const-string v0, "content"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "tune "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " out of range, clamped"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lfr/testudo/spacecorsair/mod/ModDev;->ev(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_c

    .line 52
    :catchall_37
    move-exception v0

    :try_start_38
    monitor-exit v1
    :try_end_39
    .catchall {:try_start_38 .. :try_end_39} :catchall_37

    throw v0
.end method
