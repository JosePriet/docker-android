.class public final Lfr/testudo/spacecorsair/mod/ModSound;
.super Ljava/lang/Object;
.source "ModSound.java"


# static fields
.field static final MUSIC_DEFAULT:F = 1.0f

.field public static final NAMES:[Ljava/lang/String;

.field private static final PREFS:Ljava/lang/String; = "corsair_audio"

.field static final SFX_DEFAULT:F = 0.7f

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

.field private static musDone:Z

.field private static final musicCopied:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

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
    const/16 v0, 0x22

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

    const/16 v1, 0x1f

    const-string v2, "lev_doom_charge"

    aput-object v2, v0, v1

    const/16 v1, 0x20

    const-string v2, "lev_doom_fire"

    aput-object v2, v0, v1

    const/16 v1, 0x21

    const-string v2, "lev_doom_over"

    aput-object v2, v0, v1

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModSound;->NAMES:[Ljava/lang/String;

    .line 39
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModSound;->ids:Ljava/util/Map;

    .line 41
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModSound;->last:Ljava/util/Map;

    .line 47
    const v0, 0x3f333333    # 0.7f

    sput v0, Lfr/testudo/spacecorsair/mod/ModSound;->sfx:F

    .line 157
    const/high16 v0, -0x40800000    # -1.0f

    sput v0, Lfr/testudo/spacecorsair/mod/ModSound;->loopGain:F

    .line 243
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModSound;->musicCopied:Ljava/util/Set;

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

    .line 228
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
    .line 102
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    .line 104
    :try_start_8
    invoke-virtual {v1}, Ljava/io/InputStream;->available()I

    move-result v0

    int-to-long v2, v0

    .line 105
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

    .line 115
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 117
    :goto_24
    return-void

    .line 106
    :cond_25
    :try_start_25
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_2a
    .catchall {:try_start_25 .. :try_end_2a} :catchall_3e

    .line 108
    const/16 v0, 0x4000

    :try_start_2c
    new-array v0, v0, [B

    .line 110
    :goto_2e
    invoke-virtual {v1, v0}, Ljava/io/InputStream;->read([B)I

    move-result v3

    if-lez v3, :cond_43

    const/4 v4, 0x0

    invoke-virtual {v2, v0, v4, v3}, Ljava/io/OutputStream;->write([BII)V
    :try_end_38
    .catchall {:try_start_2c .. :try_end_38} :catchall_39

    goto :goto_2e

    .line 112
    :catchall_39
    move-exception v0

    :try_start_3a
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V

    .line 113
    throw v0
    :try_end_3e
    .catchall {:try_start_3a .. :try_end_3e} :catchall_3e

    .line 115
    :catchall_3e
    move-exception v0

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 116
    throw v0

    .line 112
    :cond_43
    :try_start_43
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_46
    .catchall {:try_start_43 .. :try_end_46} :catchall_3e

    .line 115
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    goto :goto_24
.end method

.method private static copyStream(Ljava/io/InputStream;Ljava/io/File;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 93
    :try_start_0
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_5
    .catchall {:try_start_0 .. :try_end_5} :catchall_19

    .line 95
    const/16 v0, 0x4000

    :try_start_7
    new-array v0, v0, [B

    .line 96
    :goto_9
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    move-result v2

    if-lez v2, :cond_1e

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v3, v2}, Ljava/io/OutputStream;->write([BII)V
    :try_end_13
    .catchall {:try_start_7 .. :try_end_13} :catchall_14

    goto :goto_9

    .line 97
    :catchall_14
    move-exception v0

    :try_start_15
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    throw v0
    :try_end_19
    .catchall {:try_start_15 .. :try_end_19} :catchall_19

    .line 98
    :catchall_19
    move-exception v0

    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    throw v0

    .line 97
    :cond_1e
    :try_start_1e
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_21
    .catchall {:try_start_1e .. :try_end_21} :catchall_19

    .line 98
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    .line 99
    return-void
.end method

.method public static declared-synchronized init(Landroid/content/Context;)V
    .registers 16

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 52
    const-class v7, Lfr/testudo/spacecorsair/mod/ModSound;

    monitor-enter v7

    :try_start_5
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModSound;->pool:Landroid/media/SoundPool;

    if-nez v0, :cond_f

    sget-boolean v0, Lfr/testudo/spacecorsair/mod/ModSound;->initDone:Z
    :try_end_b
    .catchall {:try_start_5 .. :try_end_b} :catchall_146

    if-nez v0, :cond_f

    if-nez p0, :cond_11

    .line 88
    :cond_f
    :goto_f
    monitor-exit v7

    return-void

    .line 55
    :cond_11
    :try_start_11
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 56
    if-eqz v0, :cond_18

    move-object p0, v0

    :cond_18
    sput-object p0, Lfr/testudo/spacecorsair/mod/ModSound;->ctx:Landroid/content/Context;

    .line 57
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModSound;->ctx:Landroid/content/Context;

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModSound;->loadSfx(Landroid/content/Context;)V

    .line 58
    new-instance v0, Landroid/media/SoundPool;

    const/16 v2, 0x8

    const/4 v4, 0x3

    const/4 v5, 0x0

    invoke-direct {v0, v2, v4, v5}, Landroid/media/SoundPool;-><init>(III)V
    :try_end_28
    .catch Ljava/lang/Throwable; {:try_start_11 .. :try_end_28} :catch_15d
    .catchall {:try_start_11 .. :try_end_28} :catchall_146

    .line 59
    :try_start_28
    new-instance v8, Ljava/io/File;

    sget-object v2, Lfr/testudo/spacecorsair/mod/ModSound;->ctx:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v2

    const-string v4, "modsfx"

    invoke-direct {v8, v2, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 60
    invoke-virtual {v8}, Ljava/io/File;->mkdirs()Z

    .line 61
    sget-object v9, Lfr/testudo/spacecorsair/mod/ModSound;->NAMES:[Ljava/lang/String;

    array-length v10, v9

    move v6, v3

    :goto_3c
    if-ge v6, v10, :cond_154

    aget-object v11, v9, v6

    .line 62
    new-instance v4, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, ".ogg"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v4, v8, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 63
    new-instance v5, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v12, "_pack.ogg"

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v5, v8, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 64
    sget-object v2, Lfr/testudo/spacecorsair/mod/ModSound;->ctx:Landroid/content/Context;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "modsfx/"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ".ogg"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v2, v12}, Lfr/testudo/spacecorsair/mod/ModContent;->open(Landroid/content/Context;Ljava/lang/String;)Ljava/io/InputStream;
    :try_end_8e
    .catch Ljava/lang/Throwable; {:try_start_28 .. :try_end_8e} :catch_131
    .catchall {:try_start_28 .. :try_end_8e} :catchall_146

    move-result-object v2

    .line 66
    if-eqz v2, :cond_95

    .line 67
    :try_start_91
    invoke-static {v2, v5}, Lfr/testudo/spacecorsair/mod/ModSound;->copyStream(Ljava/io/InputStream;Ljava/io/File;)V
    :try_end_94
    .catch Ljava/lang/Throwable; {:try_start_91 .. :try_end_94} :catch_e2
    .catchall {:try_start_91 .. :try_end_94} :catchall_146

    move-object v4, v5

    .line 70
    :cond_95
    :goto_95
    if-nez v2, :cond_160

    .line 71
    :try_start_97
    invoke-virtual {v5}, Ljava/io/File;->delete()Z
    :try_end_9a
    .catch Ljava/lang/Throwable; {:try_start_97 .. :try_end_9a} :catch_131
    .catchall {:try_start_97 .. :try_end_9a} :catchall_146

    .line 73
    :try_start_9a
    sget-object v2, Lfr/testudo/spacecorsair/mod/ModSound;->ctx:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "modsfx/"

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v12, ".ogg"

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/content/res/AssetManager;->openFd(Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;
    :try_end_bc
    .catch Ljava/lang/Throwable; {:try_start_9a .. :try_end_bc} :catch_10f
    .catchall {:try_start_9a .. :try_end_bc} :catchall_146

    move-result-object v5

    const/4 v2, 0x1

    :try_start_be
    invoke-virtual {v0, v5, v2}, Landroid/media/SoundPool;->load(Landroid/content/res/AssetFileDescriptor;I)I
    :try_end_c1
    .catchall {:try_start_be .. :try_end_c1} :catchall_10a

    move-result v2

    :try_start_c2
    invoke-virtual {v5}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_c5
    .catch Ljava/lang/Throwable; {:try_start_c2 .. :try_end_c5} :catch_10f
    .catchall {:try_start_c2 .. :try_end_c5} :catchall_146

    .line 74
    :goto_c5
    if-lez v2, :cond_112

    :try_start_c7
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 76
    :goto_ca
    sget-object v5, Lfr/testudo/spacecorsair/mod/ModSound;->ids:Ljava/util/Map;

    if-lez v2, :cond_149

    :goto_ce
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v5, v11, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    sget-object v2, Lfr/testudo/spacecorsair/mod/ModSound;->last:Ljava/util/Map;

    const/4 v4, 0x1

    new-array v4, v4, [J

    invoke-interface {v2, v11, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    add-int/lit8 v2, v6, 0x1

    move v6, v2

    goto/16 :goto_3c

    .line 68
    :catch_e2
    move-exception v2

    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    const-string v12, "content"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "pack sound "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " not copied: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v12, v2}, Lfr/testudo/spacecorsair/mod/ModDev;->ev(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_108
    .catch Ljava/lang/Throwable; {:try_start_c7 .. :try_end_108} :catch_131
    .catchall {:try_start_c7 .. :try_end_108} :catchall_146

    move-object v2, v1

    goto :goto_95

    .line 73
    :catchall_10a
    move-exception v2

    :try_start_10b
    invoke-virtual {v5}, Landroid/content/res/AssetFileDescriptor;->close()V

    throw v2
    :try_end_10f
    .catch Ljava/lang/Throwable; {:try_start_10b .. :try_end_10f} :catch_10f
    .catchall {:try_start_10b .. :try_end_10f} :catchall_146

    :catch_10f
    move-exception v2

    move v2, v3

    goto :goto_c5

    .line 74
    :cond_112
    :try_start_112
    sget-object v5, Lfr/testudo/spacecorsair/mod/ModSound;->ctx:Landroid/content/Context;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "modsfx/"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ".ogg"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v5, v12, v4}, Lfr/testudo/spacecorsair/mod/ModSound;->copy(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)V
    :try_end_130
    .catch Ljava/lang/Throwable; {:try_start_112 .. :try_end_130} :catch_131
    .catchall {:try_start_112 .. :try_end_130} :catchall_146

    goto :goto_ca

    .line 81
    :catch_131
    move-exception v1

    .line 83
    :goto_132
    :try_start_132
    sget-object v1, Lfr/testudo/spacecorsair/mod/ModSound;->ids:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 84
    sget-object v1, Lfr/testudo/spacecorsair/mod/ModSound;->last:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V
    :try_end_13c
    .catchall {:try_start_132 .. :try_end_13c} :catchall_146

    .line 85
    if-eqz v0, :cond_141

    :try_start_13e
    invoke-virtual {v0}, Landroid/media/SoundPool;->release()V
    :try_end_141
    .catch Ljava/lang/Throwable; {:try_start_13e .. :try_end_141} :catch_15b
    .catchall {:try_start_13e .. :try_end_141} :catchall_146

    .line 86
    :cond_141
    :goto_141
    const/4 v0, 0x0

    :try_start_142
    sput-object v0, Lfr/testudo/spacecorsair/mod/ModSound;->pool:Landroid/media/SoundPool;
    :try_end_144
    .catchall {:try_start_142 .. :try_end_144} :catchall_146

    goto/16 :goto_f

    .line 52
    :catchall_146
    move-exception v0

    monitor-exit v7

    throw v0

    .line 76
    :cond_149
    :try_start_149
    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x1

    invoke-virtual {v0, v2, v4}, Landroid/media/SoundPool;->load(Ljava/lang/String;I)I

    move-result v2

    goto/16 :goto_ce

    .line 79
    :cond_154
    const/4 v1, 0x1

    sput-boolean v1, Lfr/testudo/spacecorsair/mod/ModSound;->initDone:Z

    .line 80
    sput-object v0, Lfr/testudo/spacecorsair/mod/ModSound;->pool:Landroid/media/SoundPool;
    :try_end_159
    .catch Ljava/lang/Throwable; {:try_start_149 .. :try_end_159} :catch_131
    .catchall {:try_start_149 .. :try_end_159} :catchall_146

    goto/16 :goto_f

    .line 85
    :catch_15b
    move-exception v0

    goto :goto_141

    .line 81
    :catch_15d
    move-exception v0

    move-object v0, v1

    goto :goto_132

    :cond_160
    move v2, v3

    goto/16 :goto_ca
.end method

.method private static loadSfx(Landroid/content/Context;)V
    .registers 4

    .prologue
    .line 189
    sget-boolean v0, Lfr/testudo/spacecorsair/mod/ModSound;->sfxLoaded:Z

    if-nez v0, :cond_6

    if-nez p0, :cond_7

    .line 203
    :cond_6
    :goto_6
    return-void

    .line 191
    :cond_7
    :try_start_7
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "corsair_audio"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 192
    const-string v1, "sfx"

    const v2, 0x3f333333    # 0.7f

    invoke-static {v0, v1, v2}, Lfr/testudo/spacecorsair/mod/ModQol;->saved(Landroid/content/SharedPreferences;Ljava/lang/String;F)F

    move-result v1

    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModSound;->clamp01(F)F

    move-result v1

    sput v1, Lfr/testudo/spacecorsair/mod/ModSound;->sfx:F

    .line 195
    const-string v1, "bal42"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_68

    .line 196
    sget v1, Lfr/testudo/spacecorsair/mod/ModSound;->sfx:F

    const v2, 0x3f7d70a4    # 0.99f

    cmpl-float v1, v1, v2

    if-ltz v1, :cond_38

    const v1, 0x3f333333    # 0.7f

    sput v1, Lfr/testudo/spacecorsair/mod/ModSound;->sfx:F

    .line 197
    :cond_38
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "sfx"

    sget v2, Lfr/testudo/spacecorsair/mod/ModSound;->sfx:F

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "bal42"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 198
    const-string v0, "audio"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bal42 sfx="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lfr/testudo/spacecorsair/mod/ModSound;->sfx:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lfr/testudo/spacecorsair/mod/ModDev;->ev(Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    :cond_68
    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModSound;->migrateMusic(Landroid/content/Context;)V

    .line 201
    const/4 v0, 0x1

    sput-boolean v0, Lfr/testudo/spacecorsair/mod/ModSound;->sfxLoaded:Z
    :try_end_6e
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_6e} :catch_6f

    goto :goto_6

    .line 202
    :catch_6f
    move-exception v0

    goto :goto_6
.end method

.method private static migrateMusic(Landroid/content/Context;)V
    .registers 5

    .prologue
    .line 212
    sget-boolean v0, Lfr/testudo/spacecorsair/mod/ModSound;->musDone:Z

    if-nez v0, :cond_6

    if-nez p0, :cond_7

    .line 226
    :cond_6
    :goto_6
    return-void

    .line 214
    :cond_7
    :try_start_7
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "corsair_audio"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 215
    const-string v0, "mus42"

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_21

    const/4 v0, 0x1

    sput-boolean v0, Lfr/testudo/spacecorsair/mod/ModSound;->musDone:Z

    goto :goto_6

    .line 225
    :catch_1f
    move-exception v0

    goto :goto_6

    .line 216
    :cond_21
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    if-nez v0, :cond_70

    const/4 v0, 0x0

    .line 217
    :goto_26
    if-eqz v0, :cond_6

    .line 218
    iget v2, v0, Lfr/testudo/spacecorsair/game/Config;->musicVolums:F

    const v3, 0x3ecccccd    # 0.4f

    sub-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    const v3, 0x3c23d70a    # 0.01f

    cmpg-float v2, v2, v3

    if-gez v2, :cond_44

    .line 219
    const/high16 v2, 0x3f800000    # 1.0f

    iput v2, v0, Lfr/testudo/spacecorsair/game/Config;->musicVolums:F
    :try_end_3d
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_3d} :catch_1f

    .line 220
    :try_start_3d
    sget-object v2, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v2, v2, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->storageManager:Lfr/testudo/spacecorsair/storage/StorageManager;

    invoke-virtual {v2}, Lfr/testudo/spacecorsair/storage/StorageManager;->saveConfig()V
    :try_end_44
    .catch Ljava/lang/Throwable; {:try_start_3d .. :try_end_44} :catch_75

    .line 222
    :cond_44
    :goto_44
    :try_start_44
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "mus42"

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 223
    const/4 v1, 0x1

    sput-boolean v1, Lfr/testudo/spacecorsair/mod/ModSound;->musDone:Z

    .line 224
    const-string v1, "audio"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mus42 music="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v0, v0, Lfr/testudo/spacecorsair/game/Config;->musicVolums:F

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lfr/testudo/spacecorsair/mod/ModDev;->ev(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    .line 216
    :cond_70
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->config:Lfr/testudo/spacecorsair/game/Config;
    :try_end_74
    .catch Ljava/lang/Throwable; {:try_start_44 .. :try_end_74} :catch_1f

    goto :goto_26

    .line 220
    :catch_75
    move-exception v2

    goto :goto_44
.end method

.method public static music(Landroid/content/Context;I)Landroid/media/MediaPlayer;
    .registers 9

    .prologue
    .line 247
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 248
    if-nez v0, :cond_7

    move-object v0, p0

    .line 249
    :cond_7
    new-instance v1, Ljava/io/File;

    invoke-virtual {v0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v2

    const-string v3, "music_pack"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 250
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object v2

    .line 251
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "music/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".ogg"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lfr/testudo/spacecorsair/mod/ModContent;->open(Landroid/content/Context;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    .line 252
    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".ogg"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v1, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 253
    if-nez v0, :cond_59

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    invoke-static {p0, p1}, Landroid/media/MediaPlayer;->create(Landroid/content/Context;I)Landroid/media/MediaPlayer;

    move-result-object v0

    .line 273
    :goto_58
    return-object v0

    .line 254
    :cond_59
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 256
    sget-object v4, Lfr/testudo/spacecorsair/mod/ModSound;->musicCopied:Ljava/util/Set;

    invoke-interface {v4, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_108

    .line 257
    new-instance v4, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".ogg.tmp"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v1, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 258
    invoke-static {v0, v4}, Lfr/testudo/spacecorsair/mod/ModSound;->copyStream(Ljava/io/InputStream;Ljava/io/File;)V

    .line 259
    invoke-virtual {v4, v3}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v0

    if-nez v0, :cond_ad

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    invoke-virtual {v4, v3}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v0

    if-nez v0, :cond_ad

    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "rename "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_a7
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_a7} :catch_a7

    .line 272
    :catch_a7
    move-exception v0

    .line 273
    :goto_a8
    invoke-static {p0, p1}, Landroid/media/MediaPlayer;->create(Landroid/content/Context;I)Landroid/media/MediaPlayer;

    move-result-object v0

    goto :goto_58

    .line 260
    :cond_ad
    :try_start_ad
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModSound;->musicCopied:Ljava/util/Set;

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 262
    :goto_b2
    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V
    :try_end_b7
    .catch Ljava/lang/Throwable; {:try_start_ad .. :try_end_b7} :catch_a7

    .line 264
    :try_start_b7
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    .line 265
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepare()V

    .line 266
    const-string v1, "content"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "music "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " from pack"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lfr/testudo/spacecorsair/mod/ModDev;->ev(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_df
    .catch Ljava/lang/Throwable; {:try_start_b7 .. :try_end_df} :catch_e1

    goto/16 :goto_58

    .line 268
    :catch_e1
    move-exception v1

    .line 269
    :try_start_e2
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 270
    const-string v0, "content"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "music "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " pack copy not playable: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lfr/testudo/spacecorsair/mod/ModDev;->ev(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_a8

    .line 261
    :cond_108
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_10b
    .catch Ljava/lang/Throwable; {:try_start_e2 .. :try_end_10b} :catch_a7

    goto :goto_b2
.end method

.method public static musicResume(Landroid/media/MediaPlayer;)V
    .registers 2

    .prologue
    .line 279
    :try_start_0
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModSound;->ctx:Landroid/content/Context;

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModSound;->migrateMusic(Landroid/content/Context;)V

    .line 280
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->config:Lfr/testudo/spacecorsair/game/Config;

    iget v0, v0, Lfr/testudo/spacecorsair/game/Config;->musicVolums:F

    .line 281
    invoke-virtual {p0, v0, v0}, Landroid/media/MediaPlayer;->setVolume(FF)V
    :try_end_e
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_e} :catch_f

    .line 283
    :goto_e
    return-void

    .line 282
    :catch_f
    move-exception v0

    goto :goto_e
.end method

.method public static play(Ljava/lang/String;FFJ)I
    .registers 18

    .prologue
    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 139
    :try_start_2
    sget-object v2, Lfr/testudo/spacecorsair/mod/ModSound;->pool:Landroid/media/SoundPool;

    if-nez v2, :cond_8

    move v2, v9

    .line 152
    :goto_7
    return v2

    .line 140
    :cond_8
    sget-object v2, Lfr/testudo/spacecorsair/mod/ModSound;->ids:Ljava/util/Map;

    invoke-interface {v2, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Ljava/lang/Integer;

    move-object v3, v0

    .line 141
    if-nez v3, :cond_16

    move v2, v9

    goto :goto_7

    .line 142
    :cond_16
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 143
    sget-object v2, Lfr/testudo/spacecorsair/mod/ModSound;->last:Ljava/util/Map;

    invoke-interface {v2, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [J

    .line 144
    if-eqz v2, :cond_3b

    .line 145
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

    .line 146
    :cond_38
    const/4 v6, 0x0

    aput-wide v4, v2, v6

    .line 148
    :cond_3b
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModSound;->volume()F

    move-result v2

    sget v4, Lfr/testudo/spacecorsair/mod/ModSound;->sfx:F

    mul-float/2addr v2, v4

    mul-float v4, v2, p1

    .line 149
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

    .line 150
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

    .line 151
    :catch_84
    move-exception v2

    move v2, v9

    .line 152
    goto :goto_7
.end method

.method public static rumble(F)V
    .registers 9

    .prologue
    .line 162
    :try_start_0
    sget-object v1, Lfr/testudo/spacecorsair/mod/ModSound;->pool:Landroid/media/SoundPool;

    if-nez v1, :cond_5

    .line 182
    :cond_4
    :goto_4
    return-void

    .line 163
    :cond_5
    const v1, 0x3c23d70a    # 0.01f

    cmpg-float v1, p0, v1

    if-gtz v1, :cond_21

    .line 164
    sget v1, Lfr/testudo/spacecorsair/mod/ModSound;->loopStream:I

    if-eqz v1, :cond_17

    sget-object v1, Lfr/testudo/spacecorsair/mod/ModSound;->pool:Landroid/media/SoundPool;

    sget v2, Lfr/testudo/spacecorsair/mod/ModSound;->loopStream:I

    invoke-virtual {v1, v2}, Landroid/media/SoundPool;->stop(I)V

    .line 165
    :cond_17
    const/4 v1, 0x0

    sput v1, Lfr/testudo/spacecorsair/mod/ModSound;->loopStream:I

    .line 166
    const/high16 v1, -0x40800000    # -1.0f

    sput v1, Lfr/testudo/spacecorsair/mod/ModSound;->loopGain:F

    goto :goto_4

    .line 179
    :catch_1f
    move-exception v1

    goto :goto_4

    .line 169
    :cond_21
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModSound;->volume()F

    move-result v1

    sget v2, Lfr/testudo/spacecorsair/mod/ModSound;->sfx:F

    mul-float/2addr v1, v2

    mul-float v3, v1, p0

    .line 170
    sget v1, Lfr/testudo/spacecorsair/mod/ModSound;->loopStream:I

    if-nez v1, :cond_55

    .line 171
    sget-object v1, Lfr/testudo/spacecorsair/mod/ModSound;->ids:Ljava/util/Map;

    const-string v2, "engine_rumble"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Ljava/lang/Integer;

    move-object v2, v0

    .line 172
    if-eqz v2, :cond_4

    const/4 v1, 0x0

    cmpg-float v1, v3, v1

    if-lez v1, :cond_4

    .line 173
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

    .line 174
    sput p0, Lfr/testudo/spacecorsair/mod/ModSound;->loopGain:F

    goto :goto_4

    .line 175
    :cond_55
    sget v1, Lfr/testudo/spacecorsair/mod/ModSound;->loopGain:F

    sub-float v1, p0, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    const v2, 0x3cf5c28f    # 0.03f

    cmpl-float v1, v1, v2

    if-lez v1, :cond_4

    .line 176
    sget-object v1, Lfr/testudo/spacecorsair/mod/ModSound;->pool:Landroid/media/SoundPool;

    sget v2, Lfr/testudo/spacecorsair/mod/ModSound;->loopStream:I

    invoke-virtual {v1, v2, v3, v3}, Landroid/media/SoundPool;->setVolume(IFF)V

    .line 177
    sput p0, Lfr/testudo/spacecorsair/mod/ModSound;->loopGain:F
    :try_end_6d
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_6d} :catch_1f

    goto :goto_4
.end method

.method public static settingsBar(Landroid/app/Activity;Landroid/widget/CheckBox;Landroid/view/View;Landroid/widget/SeekBar;)V
    .registers 11

    .prologue
    const/4 v2, 0x0

    .line 291
    :try_start_1
    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModSound;->loadSfx(Landroid/content/Context;)V

    .line 292
    if-eqz p1, :cond_12

    if-eqz p2, :cond_12

    if-eqz p3, :cond_12

    invoke-virtual {p1}, Landroid/widget/CheckBox;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/view/ViewGroup;

    if-nez v0, :cond_13

    .line 333
    :cond_12
    :goto_12
    return-void

    .line 293
    :cond_13
    invoke-virtual {p1}, Landroid/widget/CheckBox;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 294
    const-string v1, "v36_sfx"

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_12

    .line 295
    new-instance v3, Landroid/widget/LinearLayout;

    invoke-direct {v3, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 296
    const-string v1, "v36_sfx"

    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    .line 297
    const/4 v1, 0x0

    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 298
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v4, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 299
    check-cast p2, Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {p2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 300
    instance-of v4, v1, Landroid/widget/TextView;

    if-eqz v4, :cond_88

    .line 301
    check-cast v1, Landroid/widget/TextView;

    new-instance v4, Landroid/widget/TextView;

    invoke-direct {v4, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 302
    const-string v5, "MUSIC"

    invoke-static {v5}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 303
    const-string v5, "EFFECTS"

    invoke-static {v5}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 304
    const/4 v5, 0x0

    invoke-virtual {v1}, Landroid/widget/TextView;->getTextSize()F

    move-result v6

    invoke-virtual {v4, v5, v6}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 305
    invoke-virtual {v1}, Landroid/widget/TextView;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 306
    invoke-virtual {v1}, Landroid/widget/TextView;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 307
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v5, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 308
    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 310
    :cond_88
    new-instance v4, Landroid/widget/SeekBar;

    invoke-direct {v4, p0}, Landroid/widget/SeekBar;-><init>(Landroid/content/Context;)V

    .line 311
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p3}, Landroid/widget/SeekBar;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v5, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    invoke-virtual {v4, v5}, Landroid/widget/SeekBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 312
    const/16 v1, 0xa

    invoke-virtual {v4, v1}, Landroid/widget/SeekBar;->setMax(I)V

    .line 313
    sget v1, Lfr/testudo/spacecorsair/mod/ModSound;->sfx:F

    const/high16 v5, 0x41200000    # 10.0f

    mul-float/2addr v1, v5

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    invoke-virtual {v4, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 314
    new-instance v1, Lfr/testudo/spacecorsair/mod/ModSound$1;

    invoke-direct {v1, p0}, Lfr/testudo/spacecorsair/mod/ModSound$1;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v4, v1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 323
    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 324
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v3, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 326
    invoke-virtual {p1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_d7

    move v0, v2

    :goto_c7
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 327
    new-instance v0, Lfr/testudo/spacecorsair/mod/ModSound$2;

    invoke-direct {v0, v3}, Lfr/testudo/spacecorsair/mod/ModSound$2;-><init>(Landroid/view/View;)V

    invoke-virtual {p1, v0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V
    :try_end_d2
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_d2} :catch_d4

    goto/16 :goto_12

    .line 330
    :catch_d4
    move-exception v0

    goto/16 :goto_12

    .line 326
    :cond_d7
    const/16 v0, 0x8

    goto :goto_c7
.end method

.method public static sfx()F
    .registers 3

    .prologue
    .line 232
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

    .line 233
    :cond_28
    sget v0, Lfr/testudo/spacecorsair/mod/ModSound;->sfx:F

    return v0
.end method

.method public static stopAll()V
    .registers 1

    .prologue
    .line 185
    const/4 v0, 0x0

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModSound;->rumble(F)V

    .line 186
    return-void
.end method

.method private static volume()F
    .registers 8

    .prologue
    const/4 v1, 0x0

    .line 121
    :try_start_1
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->config:Lfr/testudo/spacecorsair/game/Config;

    iget-boolean v0, v0, Lfr/testudo/spacecorsair/game/Config;->soundFxEnabled:Z

    if-nez v0, :cond_b

    move v0, v1

    .line 132
    :goto_a
    return v0

    .line 123
    :cond_b
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 124
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

    .line 125
    :cond_2a
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModSound;->audio:Landroid/media/AudioManager;

    .line 126
    if-nez v0, :cond_3a

    sget-object v0, Lfr/testudo/spacecorsair/mod/ModSound;->ctx:Landroid/content/Context;

    const-string v4, "audio"

    invoke-virtual {v0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModSound;->audio:Landroid/media/AudioManager;

    .line 127
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

    .line 128
    sput v0, Lfr/testudo/spacecorsair/mod/ModSound;->volCache:F

    .line 129
    sput-wide v2, Lfr/testudo/spacecorsair/mod/ModSound;->volAt:J
    :try_end_4c
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_4c} :catch_4d

    goto :goto_a

    .line 131
    :catch_4d
    move-exception v0

    move v0, v1

    .line 132
    goto :goto_a
.end method
