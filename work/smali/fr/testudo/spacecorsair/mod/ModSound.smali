.class public final Lfr/testudo/spacecorsair/mod/ModSound;
.super Ljava/lang/Object;
.source "ModSound.java"


# static fields
.field public static final NAMES:[Ljava/lang/String;

.field private static audio:Landroid/media/AudioManager;

.field private static ctx:Landroid/content/Context;

.field private static final ids:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static initDone:Z

.field private static final last:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "[J>;"
        }
    .end annotation
.end field

.field private static loopGain:F

.field private static loopStream:I

.field private static volatile pool:Landroid/media/SoundPool;

.field private static volAt:J

.field private static volCache:F


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 21
    const/16 v0, 0x1f

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "wpn_rail"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "wpn_auto"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "wpn_arty"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "wpn_blast"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "wpn_disint"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "wpn_arc"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "gun_medium"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "gun_heavy"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "titan_leviathan"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "titan_throne"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "titan_dev"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "doom_charge"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "doom_lance"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "doom_nova"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "warp_in"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "titan_missile"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "titan_blast"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "bay_launch"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "repair"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "hull_breach"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "engine_rumble"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "combat_start"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "all_clear"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "disengage"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "hull_alarm"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "shield_down"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "flagship_horn"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "mission_ok"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string v2, "mission_fail"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string v2, "rank_up"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string v2, "comms_click"

    aput-object v2, v0, v1

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModSound;->NAMES:[Ljava/lang/String;

    .line 28
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModSound;->ids:Ljava/util/Map;

    .line 30
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModSound;->last:Ljava/util/Map;

    .line 118
    const/high16 v0, -0x40800000    # -1.0f

    sput v0, Lfr/testudo/spacecorsair/mod/ModSound;->loopGain:F

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static copy(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 63
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    .line 65
    :try_start_8
    invoke-virtual {v1}, Ljava/io/InputStream;->available()I

    move-result v0

    int-to-long v2, v0

    .line 66
    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_25

    invoke-virtual {p2}, Ljava/io/File;->length()J
    :try_end_16
    .catchall {:try_start_8 .. :try_end_16} :catchall_3e

    move-result-wide v4

    cmp-long v0, v4, v2

    if-nez v0, :cond_25

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-lez v0, :cond_25

    .line 76
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 78
    :goto_24
    return-void

    .line 67
    :cond_25
    :try_start_25
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_2a
    .catchall {:try_start_25 .. :try_end_2a} :catchall_3e

    .line 69
    const/16 v0, 0x4000

    :try_start_2c
    new-array v0, v0, [B

    .line 71
    :goto_2e
    invoke-virtual {v1, v0}, Ljava/io/InputStream;->read([B)I

    move-result v3

    if-lez v3, :cond_43

    const/4 v4, 0x0

    invoke-virtual {v2, v0, v4, v3}, Ljava/io/OutputStream;->write([BII)V
    :try_end_38
    .catchall {:try_start_2c .. :try_end_38} :catchall_39

    goto :goto_2e

    .line 73
    :catchall_39
    move-exception v0

    :try_start_3a
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V

    .line 74
    throw v0
    :try_end_3e
    .catchall {:try_start_3a .. :try_end_3e} :catchall_3e

    .line 76
    :catchall_3e
    move-exception v0

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 77
    throw v0

    .line 73
    :cond_43
    :try_start_43
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_46
    .catchall {:try_start_43 .. :try_end_46} :catchall_3e

    .line 76
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    goto :goto_24
.end method

.method public static declared-synchronized init(Landroid/content/Context;)V
    .registers 12

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 37
    const-class v3, Lfr/testudo/spacecorsair/mod/ModSound;

    monitor-enter v3

    :try_start_5
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModSound;->pool:Landroid/media/SoundPool;

    if-nez v0, :cond_f

    sget-boolean v0, Lfr/testudo/spacecorsair/mod/ModSound;->initDone:Z
    :try_end_b
    .catchall {:try_start_5 .. :try_end_b} :catchall_aa

    if-nez v0, :cond_f

    if-nez p0, :cond_11

    .line 60
    :cond_f
    :goto_f
    monitor-exit v3

    return-void

    .line 40
    :cond_11
    :try_start_11
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 41
    if-eqz v0, :cond_18

    move-object p0, v0

    :cond_18
    sput-object p0, Lfr/testudo/spacecorsair/mod/ModSound;->ctx:Landroid/content/Context;

    .line 42
    new-instance v0, Landroid/media/SoundPool;

    const/16 v4, 0x8

    const/4 v5, 0x3

    const/4 v6, 0x0

    invoke-direct {v0, v4, v5, v6}, Landroid/media/SoundPool;-><init>(III)V
    :try_end_23
    .catch Ljava/lang/Throwable; {:try_start_11 .. :try_end_23} :catch_af
    .catchall {:try_start_11 .. :try_end_23} :catchall_aa

    .line 43
    :try_start_23
    new-instance v4, Ljava/io/File;

    sget-object v1, Lfr/testudo/spacecorsair/mod/ModSound;->ctx:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v1

    const-string v5, "modsfx"

    invoke-direct {v4, v1, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 44
    invoke-virtual {v4}, Ljava/io/File;->mkdirs()Z

    .line 45
    sget-object v5, Lfr/testudo/spacecorsair/mod/ModSound;->NAMES:[Ljava/lang/String;

    array-length v6, v5

    move v1, v2

    :goto_37
    if-ge v1, v6, :cond_8e

    aget-object v2, v5, v1

    .line 46
    new-instance v7, Ljava/io/File;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ".ogg"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v4, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 47
    sget-object v8, Lfr/testudo/spacecorsair/mod/ModSound;->ctx:Landroid/content/Context;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "modsfx/"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ".ogg"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9, v7}, Lfr/testudo/spacecorsair/mod/ModSound;->copy(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)V

    .line 48
    sget-object v8, Lfr/testudo/spacecorsair/mod/ModSound;->ids:Ljava/util/Map;

    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    const/4 v9, 0x1

    invoke-virtual {v0, v7, v9}, Landroid/media/SoundPool;->load(Ljava/lang/String;I)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v8, v2, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    sget-object v7, Lfr/testudo/spacecorsair/mod/ModSound;->last:Ljava/util/Map;

    const/4 v8, 0x1

    new-array v8, v8, [J

    invoke-interface {v7, v2, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    add-int/lit8 v1, v1, 0x1

    goto :goto_37

    .line 51
    :cond_8e
    const/4 v1, 0x1

    sput-boolean v1, Lfr/testudo/spacecorsair/mod/ModSound;->initDone:Z

    .line 52
    sput-object v0, Lfr/testudo/spacecorsair/mod/ModSound;->pool:Landroid/media/SoundPool;
    :try_end_93
    .catch Ljava/lang/Throwable; {:try_start_23 .. :try_end_93} :catch_95
    .catchall {:try_start_23 .. :try_end_93} :catchall_aa

    goto/16 :goto_f

    .line 53
    :catch_95
    move-exception v1

    .line 55
    :goto_96
    :try_start_96
    sget-object v1, Lfr/testudo/spacecorsair/mod/ModSound;->ids:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 56
    sget-object v1, Lfr/testudo/spacecorsair/mod/ModSound;->last:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V
    :try_end_a0
    .catchall {:try_start_96 .. :try_end_a0} :catchall_aa

    .line 57
    if-eqz v0, :cond_a5

    :try_start_a2
    invoke-virtual {v0}, Landroid/media/SoundPool;->release()V
    :try_end_a5
    .catch Ljava/lang/Throwable; {:try_start_a2 .. :try_end_a5} :catch_ad
    .catchall {:try_start_a2 .. :try_end_a5} :catchall_aa

    .line 58
    :cond_a5
    :goto_a5
    const/4 v0, 0x0

    :try_start_a6
    sput-object v0, Lfr/testudo/spacecorsair/mod/ModSound;->pool:Landroid/media/SoundPool;
    :try_end_a8
    .catchall {:try_start_a6 .. :try_end_a8} :catchall_aa

    goto/16 :goto_f

    .line 37
    :catchall_aa
    move-exception v0

    monitor-exit v3

    throw v0

    .line 57
    :catch_ad
    move-exception v0

    goto :goto_a5

    .line 53
    :catch_af
    move-exception v0

    move-object v0, v1

    goto :goto_96
.end method

.method public static play(Ljava/lang/String;FFJ)I
    .registers 18

    .prologue
    const/4 v9, 0x0

    .line 100
    :try_start_1
    sget-object v2, Lfr/testudo/spacecorsair/mod/ModSound;->pool:Landroid/media/SoundPool;

    if-nez v2, :cond_7

    move v2, v9

    .line 113
    :goto_6
    return v2

    .line 101
    :cond_7
    sget-object v2, Lfr/testudo/spacecorsair/mod/ModSound;->ids:Ljava/util/Map;

    invoke-interface {v2, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Ljava/lang/Integer;

    move-object v3, v0

    .line 102
    if-nez v3, :cond_15

    move v2, v9

    goto :goto_6

    .line 103
    :cond_15
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 104
    sget-object v2, Lfr/testudo/spacecorsair/mod/ModSound;->last:Ljava/util/Map;

    invoke-interface {v2, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [J

    .line 105
    if-eqz v2, :cond_3a

    .line 106
    const/4 v6, 0x0

    aget-wide v6, v2, v6

    const-wide/16 v10, 0x0

    cmp-long v6, v6, v10

    if-eqz v6, :cond_37

    const/4 v6, 0x0

    aget-wide v6, v2, v6

    sub-long v6, v4, v6

    cmp-long v6, v6, p3

    if-gez v6, :cond_37

    const/4 v2, -0x1

    goto :goto_6

    .line 107
    :cond_37
    const/4 v6, 0x0

    aput-wide v4, v2, v6

    .line 109
    :cond_3a
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModSound;->volume()F

    move-result v2

    mul-float v4, v2, p1

    .line 110
    const/4 v2, 0x0

    cmpg-float v2, v4, v2

    if-gtz v2, :cond_47

    move v2, v9

    goto :goto_6

    .line 111
    :cond_47
    sget-object v2, Lfr/testudo/spacecorsair/mod/ModSound;->pool:Landroid/media/SoundPool;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v6, 0x1

    const/4 v7, 0x0

    move v5, v4

    move v8, p2

    invoke-virtual/range {v2 .. v8}, Landroid/media/SoundPool;->play(IFFIIF)I
    :try_end_54
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_54} :catch_56

    move-result v2

    goto :goto_6

    .line 112
    :catch_56
    move-exception v2

    move v2, v9

    .line 113
    goto :goto_6
.end method

.method public static rumble(F)V
    .registers 9

    .prologue
    .line 123
    :try_start_0
    sget-object v1, Lfr/testudo/spacecorsair/mod/ModSound;->pool:Landroid/media/SoundPool;

    if-nez v1, :cond_5

    .line 143
    :cond_4
    :goto_4
    return-void

    .line 124
    :cond_5
    const v1, 0x3c23d70a    # 0.01f

    cmpg-float v1, p0, v1

    if-gtz v1, :cond_21

    .line 125
    sget v1, Lfr/testudo/spacecorsair/mod/ModSound;->loopStream:I

    if-eqz v1, :cond_17

    sget-object v1, Lfr/testudo/spacecorsair/mod/ModSound;->pool:Landroid/media/SoundPool;

    sget v2, Lfr/testudo/spacecorsair/mod/ModSound;->loopStream:I

    invoke-virtual {v1, v2}, Landroid/media/SoundPool;->stop(I)V

    .line 126
    :cond_17
    const/4 v1, 0x0

    sput v1, Lfr/testudo/spacecorsair/mod/ModSound;->loopStream:I

    .line 127
    const/high16 v1, -0x40800000    # -1.0f

    sput v1, Lfr/testudo/spacecorsair/mod/ModSound;->loopGain:F

    goto :goto_4

    .line 140
    :catch_1f
    move-exception v1

    goto :goto_4

    .line 130
    :cond_21
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModSound;->volume()F

    move-result v1

    mul-float v3, v1, p0

    .line 131
    sget v1, Lfr/testudo/spacecorsair/mod/ModSound;->loopStream:I

    if-nez v1, :cond_52

    .line 132
    sget-object v1, Lfr/testudo/spacecorsair/mod/ModSound;->ids:Ljava/util/Map;

    const-string v2, "engine_rumble"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Ljava/lang/Integer;

    move-object v2, v0

    .line 133
    if-eqz v2, :cond_4

    const/4 v1, 0x0

    cmpg-float v1, v3, v1

    if-lez v1, :cond_4

    .line 134
    sget-object v1, Lfr/testudo/spacecorsair/mod/ModSound;->pool:Landroid/media/SoundPool;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v5, 0x0

    const/4 v6, -0x1

    const/high16 v7, 0x3f800000    # 1.0f

    move v4, v3

    invoke-virtual/range {v1 .. v7}, Landroid/media/SoundPool;->play(IFFIIF)I

    move-result v1

    sput v1, Lfr/testudo/spacecorsair/mod/ModSound;->loopStream:I

    .line 135
    sput p0, Lfr/testudo/spacecorsair/mod/ModSound;->loopGain:F

    goto :goto_4

    .line 136
    :cond_52
    sget v1, Lfr/testudo/spacecorsair/mod/ModSound;->loopGain:F

    sub-float v1, p0, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    const v2, 0x3cf5c28f    # 0.03f

    cmpl-float v1, v1, v2

    if-lez v1, :cond_4

    .line 137
    sget-object v1, Lfr/testudo/spacecorsair/mod/ModSound;->pool:Landroid/media/SoundPool;

    sget v2, Lfr/testudo/spacecorsair/mod/ModSound;->loopStream:I

    invoke-virtual {v1, v2, v3, v3}, Landroid/media/SoundPool;->setVolume(IFF)V

    .line 138
    sput p0, Lfr/testudo/spacecorsair/mod/ModSound;->loopGain:F
    :try_end_6a
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_6a} :catch_1f

    goto :goto_4
.end method

.method public static stopAll()V
    .registers 1

    .prologue
    .line 146
    const/4 v0, 0x0

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModSound;->rumble(F)V

    .line 147
    return-void
.end method

.method private static volume()F
    .registers 8

    .prologue
    const/4 v1, 0x0

    .line 82
    :try_start_1
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->config:Lfr/testudo/spacecorsair/game/Config;

    iget-boolean v0, v0, Lfr/testudo/spacecorsair/game/Config;->soundFxEnabled:Z

    if-nez v0, :cond_b

    move v0, v1

    .line 93
    :goto_a
    return v0

    .line 84
    :cond_b
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 85
    sget-wide v4, Lfr/testudo/spacecorsair/mod/ModSound;->volAt:J

    const-wide/16 v6, 0x0

    cmp-long v0, v4, v6

    if-eqz v0, :cond_2a

    sget-wide v4, Lfr/testudo/spacecorsair/mod/ModSound;->volAt:J

    sub-long v4, v2, v4

    const-wide/16 v6, 0x12c

    cmp-long v0, v4, v6

    if-gez v0, :cond_2a

    sget-wide v4, Lfr/testudo/spacecorsair/mod/ModSound;->volAt:J

    cmp-long v0, v2, v4

    if-ltz v0, :cond_2a

    sget v0, Lfr/testudo/spacecorsair/mod/ModSound;->volCache:F

    goto :goto_a

    .line 86
    :cond_2a
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModSound;->audio:Landroid/media/AudioManager;

    .line 87
    if-nez v0, :cond_3a

    sget-object v0, Lfr/testudo/spacecorsair/mod/ModSound;->ctx:Landroid/content/Context;

    const-string v4, "audio"

    invoke-virtual {v0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModSound;->audio:Landroid/media/AudioManager;

    .line 88
    :cond_3a
    const/4 v4, 0x3

    invoke-virtual {v0, v4}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v4

    int-to-float v4, v4

    const/4 v5, 0x3

    invoke-virtual {v0, v5}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v0

    int-to-float v0, v0

    div-float v0, v4, v0

    .line 89
    sput v0, Lfr/testudo/spacecorsair/mod/ModSound;->volCache:F

    .line 90
    sput-wide v2, Lfr/testudo/spacecorsair/mod/ModSound;->volAt:J
    :try_end_4c
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_4c} :catch_4d

    goto :goto_a

    .line 92
    :catch_4d
    move-exception v0

    move v0, v1

    .line 93
    goto :goto_a
.end method
