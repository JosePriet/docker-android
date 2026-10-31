.class public final Lfr/testudo/spacecorsair/mod/ModSound;
.super Ljava/lang/Object;
.source "ModSound.java"


# static fields
.field public static final NAMES:[Ljava/lang/String;

.field private static final PREFS:Ljava/lang/String; = "corsair_audio"

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

.field private static sfx:F

.field private static sfxLoaded:Z

.field private static sfxLogged:Z

.field private static volAt:J

.field private static volCache:F


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 31
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

    .line 38
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModSound;->ids:Ljava/util/Map;

    .line 40
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModSound;->last:Ljava/util/Map;

    .line 45
    const/high16 v0, 0x3f800000    # 1.0f

    sput v0, Lfr/testudo/spacecorsair/mod/ModSound;->sfx:F

    .line 132
    const/high16 v0, -0x40800000    # -1.0f

    sput v0, Lfr/testudo/spacecorsair/mod/ModSound;->loopGain:F

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()F
    .registers 1

    .prologue
    .line 28
    sget v0, Lfr/testudo/spacecorsair/mod/ModSound;->sfx:F

    return v0
.end method

.method static synthetic access$002(F)F
    .registers 1

    .prologue
    .line 28
    sput p0, Lfr/testudo/spacecorsair/mod/ModSound;->sfx:F

    return p0
.end method

.method static synthetic access$100(F)F
    .registers 2

    .prologue
    .line 28
    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModSound;->clamp01(F)F

    move-result v0

    return v0
.end method

.method private static clamp01(F)F
    .registers 4

    .prologue
    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v0, 0x0

    .line 171
    cmpg-float v2, p0, v0

    if-gez v2, :cond_9

    move p0, v0

    :cond_8
    :goto_8
    return p0

    :cond_9
    cmpl-float v0, p0, v1

    if-lez v0, :cond_8

    move p0, v1

    goto :goto_8
.end method

.method private static copy(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 77
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    .line 79
    :try_start_8
    invoke-virtual {v1}, Ljava/io/InputStream;->available()I

    move-result v0

    int-to-long v2, v0

    .line 80
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

    .line 90
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 92
    :goto_24
    return-void

    .line 81
    :cond_25
    :try_start_25
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_2a
    .catchall {:try_start_25 .. :try_end_2a} :catchall_3e

    .line 83
    const/16 v0, 0x4000

    :try_start_2c
    new-array v0, v0, [B

    .line 85
    :goto_2e
    invoke-virtual {v1, v0}, Ljava/io/InputStream;->read([B)I

    move-result v3

    if-lez v3, :cond_43

    const/4 v4, 0x0

    invoke-virtual {v2, v0, v4, v3}, Ljava/io/OutputStream;->write([BII)V
    :try_end_38
    .catchall {:try_start_2c .. :try_end_38} :catchall_39

    goto :goto_2e

    .line 87
    :catchall_39
    move-exception v0

    :try_start_3a
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V

    .line 88
    throw v0
    :try_end_3e
    .catchall {:try_start_3a .. :try_end_3e} :catchall_3e

    .line 90
    :catchall_3e
    move-exception v0

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 91
    throw v0

    .line 87
    :cond_43
    :try_start_43
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_46
    .catchall {:try_start_43 .. :try_end_46} :catchall_3e

    .line 90
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    goto :goto_24
.end method

.method public static declared-synchronized init(Landroid/content/Context;)V
    .registers 12

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 50
    const-class v3, Lfr/testudo/spacecorsair/mod/ModSound;

    monitor-enter v3

    :try_start_5
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModSound;->pool:Landroid/media/SoundPool;

    if-nez v0, :cond_f

    sget-boolean v0, Lfr/testudo/spacecorsair/mod/ModSound;->initDone:Z
    :try_end_b
    .catchall {:try_start_5 .. :try_end_b} :catchall_af

    if-nez v0, :cond_f

    if-nez p0, :cond_11

    .line 74
    :cond_f
    :goto_f
    monitor-exit v3

    return-void

    .line 53
    :cond_11
    :try_start_11
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 54
    if-eqz v0, :cond_18

    move-object p0, v0

    :cond_18
    sput-object p0, Lfr/testudo/spacecorsair/mod/ModSound;->ctx:Landroid/content/Context;

    .line 55
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModSound;->ctx:Landroid/content/Context;

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModSound;->loadSfx(Landroid/content/Context;)V

    .line 56
    new-instance v0, Landroid/media/SoundPool;

    const/16 v4, 0x8

    const/4 v5, 0x3

    const/4 v6, 0x0

    invoke-direct {v0, v4, v5, v6}, Landroid/media/SoundPool;-><init>(III)V
    :try_end_28
    .catch Ljava/lang/Throwable; {:try_start_11 .. :try_end_28} :catch_b4
    .catchall {:try_start_11 .. :try_end_28} :catchall_af

    .line 57
    :try_start_28
    new-instance v4, Ljava/io/File;

    sget-object v1, Lfr/testudo/spacecorsair/mod/ModSound;->ctx:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v1

    const-string v5, "modsfx"

    invoke-direct {v4, v1, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 58
    invoke-virtual {v4}, Ljava/io/File;->mkdirs()Z

    .line 59
    sget-object v5, Lfr/testudo/spacecorsair/mod/ModSound;->NAMES:[Ljava/lang/String;

    array-length v6, v5

    move v1, v2

    :goto_3c
    if-ge v1, v6, :cond_93

    aget-object v2, v5, v1

    .line 60
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

    .line 61
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

    .line 62
    sget-object v8, Lfr/testudo/spacecorsair/mod/ModSound;->ids:Ljava/util/Map;

    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    const/4 v9, 0x1

    invoke-virtual {v0, v7, v9}, Landroid/media/SoundPool;->load(Ljava/lang/String;I)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v8, v2, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    sget-object v7, Lfr/testudo/spacecorsair/mod/ModSound;->last:Ljava/util/Map;

    const/4 v8, 0x1

    new-array v8, v8, [J

    invoke-interface {v7, v2, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    add-int/lit8 v1, v1, 0x1

    goto :goto_3c

    .line 65
    :cond_93
    const/4 v1, 0x1

    sput-boolean v1, Lfr/testudo/spacecorsair/mod/ModSound;->initDone:Z

    .line 66
    sput-object v0, Lfr/testudo/spacecorsair/mod/ModSound;->pool:Landroid/media/SoundPool;
    :try_end_98
    .catch Ljava/lang/Throwable; {:try_start_28 .. :try_end_98} :catch_9a
    .catchall {:try_start_28 .. :try_end_98} :catchall_af

    goto/16 :goto_f

    .line 67
    :catch_9a
    move-exception v1

    .line 69
    :goto_9b
    :try_start_9b
    sget-object v1, Lfr/testudo/spacecorsair/mod/ModSound;->ids:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 70
    sget-object v1, Lfr/testudo/spacecorsair/mod/ModSound;->last:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V
    :try_end_a5
    .catchall {:try_start_9b .. :try_end_a5} :catchall_af

    .line 71
    if-eqz v0, :cond_aa

    :try_start_a7
    invoke-virtual {v0}, Landroid/media/SoundPool;->release()V
    :try_end_aa
    .catch Ljava/lang/Throwable; {:try_start_a7 .. :try_end_aa} :catch_b2
    .catchall {:try_start_a7 .. :try_end_aa} :catchall_af

    .line 72
    :cond_aa
    :goto_aa
    const/4 v0, 0x0

    :try_start_ab
    sput-object v0, Lfr/testudo/spacecorsair/mod/ModSound;->pool:Landroid/media/SoundPool;
    :try_end_ad
    .catchall {:try_start_ab .. :try_end_ad} :catchall_af

    goto/16 :goto_f

    .line 50
    :catchall_af
    move-exception v0

    monitor-exit v3

    throw v0

    .line 71
    :catch_b2
    move-exception v0

    goto :goto_aa

    .line 67
    :catch_b4
    move-exception v0

    move-object v0, v1

    goto :goto_9b
.end method

.method private static loadSfx(Landroid/content/Context;)V
    .registers 4

    .prologue
    .line 164
    sget-boolean v0, Lfr/testudo/spacecorsair/mod/ModSound;->sfxLoaded:Z

    if-nez v0, :cond_6

    if-nez p0, :cond_7

    .line 169
    :cond_6
    :goto_6
    return-void

    .line 166
    :cond_7
    :try_start_7
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "corsair_audio"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "sfx"

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v0

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModSound;->clamp01(F)F

    move-result v0

    sput v0, Lfr/testudo/spacecorsair/mod/ModSound;->sfx:F

    .line 167
    const/4 v0, 0x1

    sput-boolean v0, Lfr/testudo/spacecorsair/mod/ModSound;->sfxLoaded:Z
    :try_end_23
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_23} :catch_24

    goto :goto_6

    .line 168
    :catch_24
    move-exception v0

    goto :goto_6
.end method

.method public static musicResume(Landroid/media/MediaPlayer;)V
    .registers 2

    .prologue
    .line 184
    :try_start_0
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->config:Lfr/testudo/spacecorsair/game/Config;

    iget v0, v0, Lfr/testudo/spacecorsair/game/Config;->musicVolums:F

    .line 185
    invoke-virtual {p0, v0, v0}, Landroid/media/MediaPlayer;->setVolume(FF)V
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_9} :catch_a

    .line 187
    :goto_9
    return-void

    .line 186
    :catch_a
    move-exception v0

    goto :goto_9
.end method

.method public static play(Ljava/lang/String;FFJ)I
    .registers 18

    .prologue
    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 114
    :try_start_2
    sget-object v2, Lfr/testudo/spacecorsair/mod/ModSound;->pool:Landroid/media/SoundPool;

    if-nez v2, :cond_8

    move v2, v9

    .line 127
    :goto_7
    return v2

    .line 115
    :cond_8
    sget-object v2, Lfr/testudo/spacecorsair/mod/ModSound;->ids:Ljava/util/Map;

    invoke-interface {v2, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Ljava/lang/Integer;

    move-object v3, v0

    .line 116
    if-nez v3, :cond_16

    move v2, v9

    goto :goto_7

    .line 117
    :cond_16
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 118
    sget-object v2, Lfr/testudo/spacecorsair/mod/ModSound;->last:Ljava/util/Map;

    invoke-interface {v2, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [J

    .line 119
    if-eqz v2, :cond_3b

    .line 120
    const/4 v6, 0x0

    aget-wide v6, v2, v6

    const-wide/16 v10, 0x0

    cmp-long v6, v6, v10

    if-eqz v6, :cond_38

    const/4 v6, 0x0

    aget-wide v6, v2, v6

    sub-long v6, v4, v6

    cmp-long v6, v6, p3

    if-gez v6, :cond_38

    const/4 v2, -0x1

    goto :goto_7

    .line 121
    :cond_38
    const/4 v6, 0x0

    aput-wide v4, v2, v6

    .line 123
    :cond_3b
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModSound;->volume()F

    move-result v2

    sget v4, Lfr/testudo/spacecorsair/mod/ModSound;->sfx:F

    mul-float/2addr v2, v4

    mul-float v4, v2, p1

    .line 124
    cmpg-float v2, v4, v8

    if-gtz v2, :cond_75

    sget v2, Lfr/testudo/spacecorsair/mod/ModSound;->sfx:F

    cmpg-float v2, v2, v8

    if-gtz v2, :cond_73

    sget-boolean v2, Lfr/testudo/spacecorsair/mod/ModSound;->sfxLogged:Z

    if-nez v2, :cond_73

    const/4 v2, 0x1

    sput-boolean v2, Lfr/testudo/spacecorsair/mod/ModSound;->sfxLogged:Z

    const-string v2, "sfx"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mod effect "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " silenced"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lfr/testudo/spacecorsair/mod/ModDev;->ev(Ljava/lang/String;Ljava/lang/String;)V

    :cond_73
    move v2, v9

    goto :goto_7

    .line 125
    :cond_75
    sget-object v2, Lfr/testudo/spacecorsair/mod/ModSound;->pool:Landroid/media/SoundPool;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v6, 0x1

    const/4 v7, 0x0

    move v5, v4

    move v8, p2

    invoke-virtual/range {v2 .. v8}, Landroid/media/SoundPool;->play(IFFIIF)I
    :try_end_82
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_82} :catch_84

    move-result v2

    goto :goto_7

    .line 126
    :catch_84
    move-exception v2

    move v2, v9

    .line 127
    goto :goto_7
.end method

.method public static rumble(F)V
    .registers 9

    .prologue
    .line 137
    :try_start_0
    sget-object v1, Lfr/testudo/spacecorsair/mod/ModSound;->pool:Landroid/media/SoundPool;

    if-nez v1, :cond_5

    .line 157
    :cond_4
    :goto_4
    return-void

    .line 138
    :cond_5
    const v1, 0x3c23d70a    # 0.01f

    cmpg-float v1, p0, v1

    if-gtz v1, :cond_21

    .line 139
    sget v1, Lfr/testudo/spacecorsair/mod/ModSound;->loopStream:I

    if-eqz v1, :cond_17

    sget-object v1, Lfr/testudo/spacecorsair/mod/ModSound;->pool:Landroid/media/SoundPool;

    sget v2, Lfr/testudo/spacecorsair/mod/ModSound;->loopStream:I

    invoke-virtual {v1, v2}, Landroid/media/SoundPool;->stop(I)V

    .line 140
    :cond_17
    const/4 v1, 0x0

    sput v1, Lfr/testudo/spacecorsair/mod/ModSound;->loopStream:I

    .line 141
    const/high16 v1, -0x40800000    # -1.0f

    sput v1, Lfr/testudo/spacecorsair/mod/ModSound;->loopGain:F

    goto :goto_4

    .line 154
    :catch_1f
    move-exception v1

    goto :goto_4

    .line 144
    :cond_21
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModSound;->volume()F

    move-result v1

    sget v2, Lfr/testudo/spacecorsair/mod/ModSound;->sfx:F

    mul-float/2addr v1, v2

    mul-float v3, v1, p0

    .line 145
    sget v1, Lfr/testudo/spacecorsair/mod/ModSound;->loopStream:I

    if-nez v1, :cond_55

    .line 146
    sget-object v1, Lfr/testudo/spacecorsair/mod/ModSound;->ids:Ljava/util/Map;

    const-string v2, "engine_rumble"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Ljava/lang/Integer;

    move-object v2, v0

    .line 147
    if-eqz v2, :cond_4

    const/4 v1, 0x0

    cmpg-float v1, v3, v1

    if-lez v1, :cond_4

    .line 148
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

    .line 149
    sput p0, Lfr/testudo/spacecorsair/mod/ModSound;->loopGain:F

    goto :goto_4

    .line 150
    :cond_55
    sget v1, Lfr/testudo/spacecorsair/mod/ModSound;->loopGain:F

    sub-float v1, p0, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    const v2, 0x3cf5c28f    # 0.03f

    cmpl-float v1, v1, v2

    if-lez v1, :cond_4

    .line 151
    sget-object v1, Lfr/testudo/spacecorsair/mod/ModSound;->pool:Landroid/media/SoundPool;

    sget v2, Lfr/testudo/spacecorsair/mod/ModSound;->loopStream:I

    invoke-virtual {v1, v2, v3, v3}, Landroid/media/SoundPool;->setVolume(IFF)V

    .line 152
    sput p0, Lfr/testudo/spacecorsair/mod/ModSound;->loopGain:F
    :try_end_6d
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_6d} :catch_1f

    goto :goto_4
.end method

.method public static settingsBar(Landroid/app/Activity;Landroid/widget/CheckBox;Landroid/view/View;Landroid/widget/SeekBar;)V
    .registers 11

    .prologue
    const/4 v2, 0x0

    .line 195
    :try_start_1
    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModSound;->loadSfx(Landroid/content/Context;)V

    .line 196
    if-eqz p1, :cond_12

    if-eqz p2, :cond_12

    if-eqz p3, :cond_12

    invoke-virtual {p1}, Landroid/widget/CheckBox;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/view/ViewGroup;

    if-nez v0, :cond_13

    .line 237
    :cond_12
    :goto_12
    return-void

    .line 197
    :cond_13
    invoke-virtual {p1}, Landroid/widget/CheckBox;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 198
    const-string v1, "v36_sfx"

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_12

    .line 199
    new-instance v3, Landroid/widget/LinearLayout;

    invoke-direct {v3, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 200
    const-string v1, "v36_sfx"

    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    .line 201
    const/4 v1, 0x0

    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 202
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v4, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 203
    check-cast p2, Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {p2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 204
    instance-of v4, v1, Landroid/widget/TextView;

    if-eqz v4, :cond_88

    .line 205
    check-cast v1, Landroid/widget/TextView;

    new-instance v4, Landroid/widget/TextView;

    invoke-direct {v4, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 206
    const-string v5, "MUSIC"

    invoke-static {v5}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 207
    const-string v5, "EFFECTS"

    invoke-static {v5}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 208
    const/4 v5, 0x0

    invoke-virtual {v1}, Landroid/widget/TextView;->getTextSize()F

    move-result v6

    invoke-virtual {v4, v5, v6}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 209
    invoke-virtual {v1}, Landroid/widget/TextView;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 210
    invoke-virtual {v1}, Landroid/widget/TextView;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 211
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v5, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 212
    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 214
    :cond_88
    new-instance v4, Landroid/widget/SeekBar;

    invoke-direct {v4, p0}, Landroid/widget/SeekBar;-><init>(Landroid/content/Context;)V

    .line 215
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p3}, Landroid/widget/SeekBar;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v5, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    invoke-virtual {v4, v5}, Landroid/widget/SeekBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 216
    const/16 v1, 0xa

    invoke-virtual {v4, v1}, Landroid/widget/SeekBar;->setMax(I)V

    .line 217
    sget v1, Lfr/testudo/spacecorsair/mod/ModSound;->sfx:F

    const/high16 v5, 0x41200000    # 10.0f

    mul-float/2addr v1, v5

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    invoke-virtual {v4, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 218
    new-instance v1, Lfr/testudo/spacecorsair/mod/ModSound$1;

    invoke-direct {v1, p0}, Lfr/testudo/spacecorsair/mod/ModSound$1;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v4, v1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 227
    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 228
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v3, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 230
    invoke-virtual {p1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_d7

    move v0, v2

    :goto_c7
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 231
    new-instance v0, Lfr/testudo/spacecorsair/mod/ModSound$2;

    invoke-direct {v0, v3}, Lfr/testudo/spacecorsair/mod/ModSound$2;-><init>(Landroid/view/View;)V

    invoke-virtual {p1, v0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V
    :try_end_d2
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_d2} :catch_d4

    goto/16 :goto_12

    .line 234
    :catch_d4
    move-exception v0

    goto/16 :goto_12

    .line 230
    :cond_d7
    const/16 v0, 0x8

    goto :goto_c7
.end method

.method public static sfx()F
    .registers 3

    .prologue
    .line 175
    sget v0, Lfr/testudo/spacecorsair/mod/ModSound;->sfx:F

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_28

    sget-boolean v0, Lfr/testudo/spacecorsair/mod/ModSound;->sfxLogged:Z

    if-nez v0, :cond_28

    const/4 v0, 0x1

    sput-boolean v0, Lfr/testudo/spacecorsair/mod/ModSound;->sfxLogged:Z

    const-string v0, "sfx"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "stock effect played at volume x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lfr/testudo/spacecorsair/mod/ModSound;->sfx:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lfr/testudo/spacecorsair/mod/ModDev;->ev(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    :cond_28
    sget v0, Lfr/testudo/spacecorsair/mod/ModSound;->sfx:F

    return v0
.end method

.method public static stopAll()V
    .registers 1

    .prologue
    .line 160
    const/4 v0, 0x0

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModSound;->rumble(F)V

    .line 161
    return-void
.end method

.method private static volume()F
    .registers 8

    .prologue
    const/4 v1, 0x0

    .line 96
    :try_start_1
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->config:Lfr/testudo/spacecorsair/game/Config;

    iget-boolean v0, v0, Lfr/testudo/spacecorsair/game/Config;->soundFxEnabled:Z

    if-nez v0, :cond_b

    move v0, v1

    .line 107
    :goto_a
    return v0

    .line 98
    :cond_b
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 99
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

    .line 100
    :cond_2a
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModSound;->audio:Landroid/media/AudioManager;

    .line 101
    if-nez v0, :cond_3a

    sget-object v0, Lfr/testudo/spacecorsair/mod/ModSound;->ctx:Landroid/content/Context;

    const-string v4, "audio"

    invoke-virtual {v0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModSound;->audio:Landroid/media/AudioManager;

    .line 102
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

    .line 103
    sput v0, Lfr/testudo/spacecorsair/mod/ModSound;->volCache:F

    .line 104
    sput-wide v2, Lfr/testudo/spacecorsair/mod/ModSound;->volAt:J
    :try_end_4c
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_4c} :catch_4d

    goto :goto_a

    .line 106
    :catch_4d
    move-exception v0

    move v0, v1

    .line 107
    goto :goto_a
.end method
