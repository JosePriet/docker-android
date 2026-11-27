.class public final Lfr/testudo/spacecorsair/mod/ModContent;
.super Ljava/lang/Object;
.source "ModContent.java"


# static fields
.field static final API:I = 0x1

.field static final CONFIRM_MS:J = 0xafc8L

.field static final EXTS:[Ljava/lang/String;

.field static final FOLDERS:[Ljava/lang/String;

.field static final GUARD_CRASHES:I = 0x2

.field static final MAX_UNPACKED:J = 0x12c00000L

.field static final STALE_MS:J = 0x240c8400L

.field private static buildNow:I

.field private static final chainIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static chainKey:Ljava/lang/String;

.field private static dir:Ljava/io/File;

.field private static guardCrashes:I

.field private static guardKey:Ljava/lang/String;

.field private static guardOk:Z

.field private static guardState:Ljava/lang/String;

.field private static final index:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/zip/ZipFile;",
            ">;"
        }
    .end annotation
.end field

.field static volatile notice:Ljava/lang/String;

.field private static ready:Z

.field private static final removed:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final zips:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/util/zip/ZipFile;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 37
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "modart/"

    aput-object v1, v0, v2

    const-string v1, "modsfx/"

    aput-object v1, v0, v3

    const-string v1, "lang/"

    aput-object v1, v0, v4

    const-string v1, "music/"

    aput-object v1, v0, v5

    const-string v1, "data/"

    aput-object v1, v0, v6

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModContent;->FOLDERS:[Ljava/lang/String;

    .line 38
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, ".webp"

    aput-object v1, v0, v2

    const-string v1, ".png"

    aput-object v1, v0, v3

    const-string v1, ".ogg"

    aput-object v1, v0, v4

    const-string v1, ".json"

    aput-object v1, v0, v5

    const-string v1, ".txt"

    aput-object v1, v0, v6

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModContent;->EXTS:[Ljava/lang/String;

    .line 44
    const-string v0, ""

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModContent;->guardState:Ljava/lang/String;

    .line 45
    const/4 v0, -0x1

    sput v0, Lfr/testudo/spacecorsair/mod/ModContent;->buildNow:I

    .line 61
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModContent;->chainIds:Ljava/util/List;

    .line 62
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModContent;->zips:Ljava/util/List;

    .line 63
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModContent;->index:Ljava/util/Map;

    .line 64
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModContent;->removed:Ljava/util/Set;

    .line 65
    const-string v0, ""

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModContent;->chainKey:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$002(Z)Z
    .registers 1

    .prologue
    .line 32
    sput-boolean p0, Lfr/testudo/spacecorsair/mod/ModContent;->guardOk:Z

    return p0
.end method

.method static synthetic access$102(I)I
    .registers 1

    .prologue
    .line 32
    sput p0, Lfr/testudo/spacecorsair/mod/ModContent;->guardCrashes:I

    return p0
.end method

.method static synthetic access$200(Ljava/lang/String;)V
    .registers 1

    .prologue
    .line 32
    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModContent;->guard(Ljava/lang/String;)V

    return-void
.end method

.method private static allowedFolder(Ljava/lang/String;)Z
    .registers 7

    .prologue
    const/4 v0, 0x0

    .line 392
    if-eqz p0, :cond_b

    const-string v1, ".."

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 394
    :cond_b
    :goto_b
    return v0

    .line 393
    :cond_c
    sget-object v2, Lfr/testudo/spacecorsair/mod/ModContent;->FOLDERS:[Ljava/lang/String;

    array-length v3, v2

    move v1, v0

    :goto_10
    if-ge v1, v3, :cond_b

    aget-object v4, v2, v1

    invoke-virtual {p0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_26

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-le v5, v4, :cond_26

    const/4 v0, 0x1

    goto :goto_b

    :cond_26
    add-int/lit8 v1, v1, 0x1

    goto :goto_10
.end method

.method static base(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .prologue
    .line 399
    const/16 v0, 0x2f

    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    const/16 v1, 0x2e

    invoke-virtual {p0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    .line 400
    if-le v1, v0, :cond_13

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    :cond_13
    return-object p0
.end method

.method static chainIds(Landroid/content/Context;)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 278
    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModContent;->ensure(Landroid/content/Context;)V

    new-instance v0, Ljava/util/ArrayList;

    sget-object v1, Lfr/testudo/spacecorsair/mod/ModContent;->chainIds:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method static chainKey(Landroid/content/Context;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 276
    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModContent;->ensure(Landroid/content/Context;)V

    sget-object v0, Lfr/testudo/spacecorsair/mod/ModContent;->chainKey:Ljava/lang/String;

    return-object v0
.end method

.method static dir(Landroid/content/Context;)Ljava/io/File;
    .registers 2

    .prologue
    .line 288
    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModContent;->ensure(Landroid/content/Context;)V

    sget-object v0, Lfr/testudo/spacecorsair/mod/ModContent;->dir:Ljava/io/File;

    return-object v0
.end method

.method public static declared-synchronized ensure(Landroid/content/Context;)V
    .registers 13

    .prologue
    const/4 v10, 0x3

    const/4 v11, 0x2

    const/4 v6, 0x1

    const/4 v2, 0x0

    .line 71
    const-class v8, Lfr/testudo/spacecorsair/mod/ModContent;

    monitor-enter v8

    :try_start_7
    sget-boolean v0, Lfr/testudo/spacecorsair/mod/ModContent;->ready:Z
    :try_end_9
    .catchall {:try_start_7 .. :try_end_9} :catchall_9a

    if-nez v0, :cond_d

    if-nez p0, :cond_f

    .line 136
    :cond_d
    :goto_d
    monitor-exit v8

    return-void

    .line 72
    :cond_f
    const/4 v0, 0x1

    :try_start_10
    sput-boolean v0, Lfr/testudo/spacecorsair/mod/ModContent;->ready:Z
    :try_end_12
    .catchall {:try_start_10 .. :try_end_12} :catchall_9a

    .line 74
    :try_start_12
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 75
    if-eqz v1, :cond_7b

    move-object v0, v1

    :goto_19
    const-string v3, "content"

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v0

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModContent;->dir:Ljava/io/File;

    .line 76
    new-instance v0, Ljava/io/File;

    sget-object v3, Lfr/testudo/spacecorsair/mod/ModContent;->dir:Ljava/io/File;

    const-string v4, "packs"

    invoke-direct {v0, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z
    :try_end_2e
    .catch Ljava/lang/Throwable; {:try_start_12 .. :try_end_2e} :catch_61
    .catchall {:try_start_12 .. :try_end_2e} :catchall_9a

    .line 78
    :try_start_2e
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_3d
    .catch Ljava/lang/Throwable; {:try_start_2e .. :try_end_3d} :catch_7d
    .catchall {:try_start_2e .. :try_end_3d} :catchall_9a

    add-int/lit16 v0, v0, -0x3e8

    .line 79
    :goto_3f
    :try_start_3f
    sput v0, Lfr/testudo/spacecorsair/mod/ModContent;->buildNow:I
    :try_end_41
    .catch Ljava/lang/Throwable; {:try_start_3f .. :try_end_41} :catch_61
    .catchall {:try_start_3f .. :try_end_41} :catchall_9a

    .line 80
    :try_start_41
    sget-object v3, Lfr/testudo/spacecorsair/mod/ModContent;->dir:Ljava/io/File;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v3, v0, v4, v5}, Lfr/testudo/spacecorsair/mod/ModContent;->prune(Ljava/io/File;IJ)I
    :try_end_4a
    .catch Ljava/lang/Throwable; {:try_start_41 .. :try_end_4a} :catch_80
    .catchall {:try_start_41 .. :try_end_4a} :catchall_9a

    .line 81
    :goto_4a
    :try_start_4a
    new-instance v0, Ljava/io/File;

    sget-object v3, Lfr/testudo/spacecorsair/mod/ModContent;->dir:Ljava/io/File;

    const-string v4, "safe"

    invoke-direct {v0, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_9d

    const-string v0, "content"

    const-string v1, "safe mode: built-in content only"

    invoke-static {v0, v1}, Lfr/testudo/spacecorsair/mod/ModDev;->ev(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_60
    .catch Ljava/lang/Throwable; {:try_start_4a .. :try_end_60} :catch_61
    .catchall {:try_start_4a .. :try_end_60} :catchall_9a

    goto :goto_d

    .line 131
    :catch_61
    move-exception v0

    move-object v1, v0

    .line 132
    :try_start_63
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModContent;->zips:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_69
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1fa

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/zip/ZipFile;
    :try_end_75
    .catchall {:try_start_63 .. :try_end_75} :catchall_9a

    :try_start_75
    invoke-virtual {v0}, Ljava/util/zip/ZipFile;->close()V
    :try_end_78
    .catch Ljava/lang/Throwable; {:try_start_75 .. :try_end_78} :catch_79
    .catchall {:try_start_75 .. :try_end_78} :catchall_9a

    goto :goto_69

    :catch_79
    move-exception v0

    goto :goto_69

    :cond_7b
    move-object v0, p0

    .line 75
    goto :goto_19

    .line 78
    :catch_7d
    move-exception v0

    const/4 v0, -0x1

    goto :goto_3f

    .line 80
    :catch_80
    move-exception v0

    :try_start_81
    const-string v3, "content"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "prune: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lfr/testudo/spacecorsair/mod/ModDev;->ev(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_99
    .catch Ljava/lang/Throwable; {:try_start_81 .. :try_end_99} :catch_61
    .catchall {:try_start_81 .. :try_end_99} :catchall_9a

    goto :goto_4a

    .line 71
    :catchall_9a
    move-exception v0

    monitor-exit v8

    throw v0

    .line 82
    :cond_9d
    :try_start_9d
    new-instance v0, Ljava/io/File;

    sget-object v3, Lfr/testudo/spacecorsair/mod/ModContent;->dir:Ljava/io/File;

    const-string v4, "active.txt"

    invoke-direct {v0, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModContent;->readChain(Ljava/io/File;)Ljava/util/List;

    move-result-object v5

    .line 83
    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_d

    .line 84
    invoke-static {v5}, Lfr/testudo/spacecorsair/mod/ModContent;->keyOf(Ljava/util/List;)Ljava/lang/String;

    move-result-object v4

    .line 88
    new-instance v0, Ljava/io/File;

    sget-object v3, Lfr/testudo/spacecorsair/mod/ModContent;->dir:Ljava/io/File;

    const-string v7, "boot.txt"

    invoke-direct {v0, v3, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModContent;->readLines(Ljava/io/File;)[Ljava/lang/String;

    move-result-object v9

    .line 89
    array-length v0, v9

    if-lt v0, v10, :cond_166

    const/4 v0, 0x0

    aget-object v0, v9, v0

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_166

    move v7, v6

    .line 90
    :goto_ce
    if-eqz v7, :cond_169

    const/4 v0, 0x1

    aget-object v0, v9, v0

    const/4 v3, 0x0

    invoke-static {v0, v3}, Lfr/testudo/spacecorsair/mod/ModContent;->parseInt(Ljava/lang/String;I)I

    move-result v3

    .line 91
    :goto_d8
    if-eqz v7, :cond_16c

    array-length v0, v9

    const/4 v10, 0x4

    if-lt v0, v10, :cond_16c

    const-string v0, "ok"

    const/4 v10, 0x3

    aget-object v10, v9, v10

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16c

    move v0, v6

    .line 92
    :goto_ea
    if-nez v0, :cond_fb

    if-eqz v7, :cond_fb

    const-string v6, "run"

    const/4 v7, 0x2

    aget-object v7, v9, v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_fb

    add-int/lit8 v3, v3, 0x1

    .line 93
    :cond_fb
    if-nez v0, :cond_171

    if-lt v3, v11, :cond_171

    .line 94
    const-string v0, "content"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "crash guard: chain "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " off after "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " crashes"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lfr/testudo/spacecorsair/mod/ModDev;->ev(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    new-instance v0, Ljava/io/File;

    sget-object v3, Lfr/testudo/spacecorsair/mod/ModContent;->dir:Ljava/io/File;

    const-string v4, "previous.txt"

    invoke-direct {v0, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 96
    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModContent;->readChain(Ljava/io/File;)Ljava/util/List;

    move-result-object v5

    .line 97
    new-instance v3, Ljava/io/File;

    sget-object v4, Lfr/testudo/spacecorsair/mod/ModContent;->dir:Ljava/io/File;

    const-string v6, "active.txt"

    invoke-direct {v3, v4, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v3, v5}, Lfr/testudo/spacecorsair/mod/ModContent;->writeChain(Ljava/io/File;Ljava/util/List;)V

    .line 98
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0, v3}, Lfr/testudo/spacecorsair/mod/ModContent;->writeChain(Ljava/io/File;Ljava/util/List;)V

    .line 99
    const-string v0, "The last update was turned off after it failed to start."

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModContent;->notice:Ljava/lang/String;

    .line 101
    invoke-static {v5}, Lfr/testudo/spacecorsair/mod/ModContent;->keyOf(Ljava/util/List;)Ljava/lang/String;

    move-result-object v4

    .line 103
    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_16f

    new-instance v0, Ljava/io/File;

    sget-object v1, Lfr/testudo/spacecorsair/mod/ModContent;->dir:Ljava/io/File;

    const-string v2, "boot.txt"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const-string v1, ""

    invoke-static {v0, v1}, Lfr/testudo/spacecorsair/mod/ModContent;->writeText(Ljava/io/File;Ljava/lang/String;)V

    goto/16 :goto_d

    :cond_166
    move v7, v2

    .line 89
    goto/16 :goto_ce

    :cond_169
    move v3, v2

    .line 90
    goto/16 :goto_d8

    :cond_16c
    move v0, v2

    .line 91
    goto/16 :goto_ea

    :cond_16f
    move v0, v2

    move v3, v2

    .line 105
    :cond_171
    sput-object v4, Lfr/testudo/spacecorsair/mod/ModContent;->guardKey:Ljava/lang/String;

    sput v3, Lfr/testudo/spacecorsair/mod/ModContent;->guardCrashes:I

    sput-boolean v0, Lfr/testudo/spacecorsair/mod/ModContent;->guardOk:Z

    .line 106
    const-string v2, "run"

    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModContent;->guard(Ljava/lang/String;)V

    .line 107
    if-nez v0, :cond_191

    .line 108
    new-instance v0, Ljava/lang/Thread;

    new-instance v2, Lfr/testudo/spacecorsair/mod/ModContent$1;

    invoke-direct {v2}, Lfr/testudo/spacecorsair/mod/ModContent$1;-><init>()V

    const-string v3, "content-guard"

    invoke-direct {v0, v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 113
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 114
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_191
    .catch Ljava/lang/Throwable; {:try_start_9d .. :try_end_191} :catch_61
    .catchall {:try_start_9d .. :try_end_191} :catchall_9a

    .line 117
    :cond_191
    if-eqz v1, :cond_1f1

    move-object v0, v1

    :goto_194
    :try_start_194
    check-cast v0, Landroid/app/Application;

    new-instance v1, Lfr/testudo/spacecorsair/mod/ModContent$2;

    invoke-direct {v1}, Lfr/testudo/spacecorsair/mod/ModContent$2;-><init>()V

    invoke-virtual {v0, v1}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V
    :try_end_19e
    .catch Ljava/lang/Throwable; {:try_start_194 .. :try_end_19e} :catch_1f3
    .catchall {:try_start_194 .. :try_end_19e} :catchall_9a

    .line 127
    :goto_19e
    :try_start_19e
    invoke-static {v5}, Lfr/testudo/spacecorsair/mod/ModContent;->load(Ljava/util/List;)V

    .line 128
    sput-object v4, Lfr/testudo/spacecorsair/mod/ModContent;->chainKey:Ljava/lang/String;

    .line 129
    const-string v0, "content"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "chain "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lfr/testudo/spacecorsair/mod/ModContent;->index:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " files)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lfr/testudo/spacecorsair/mod/ModDev;->ev(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1d1
    .catch Ljava/lang/Throwable; {:try_start_19e .. :try_end_1d1} :catch_61
    .catchall {:try_start_19e .. :try_end_1d1} :catchall_9a

    .line 130
    :try_start_1d1
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModTables;->apply()V
    :try_end_1d4
    .catch Ljava/lang/Throwable; {:try_start_1d1 .. :try_end_1d4} :catch_1d6
    .catchall {:try_start_1d1 .. :try_end_1d4} :catchall_9a

    goto/16 :goto_d

    :catch_1d6
    move-exception v0

    :try_start_1d7
    const-string v1, "content"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "tables: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lfr/testudo/spacecorsair/mod/ModDev;->ev(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_d

    :cond_1f1
    move-object v0, p0

    .line 117
    goto :goto_194

    .line 126
    :catch_1f3
    move-exception v0

    const-string v0, "paused"

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModContent;->guard(Ljava/lang/String;)V
    :try_end_1f9
    .catch Ljava/lang/Throwable; {:try_start_1d7 .. :try_end_1f9} :catch_61
    .catchall {:try_start_1d7 .. :try_end_1f9} :catchall_9a

    goto :goto_19e

    .line 133
    :cond_1fa
    :try_start_1fa
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModContent;->index:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    sget-object v0, Lfr/testudo/spacecorsair/mod/ModContent;->removed:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    sget-object v0, Lfr/testudo/spacecorsair/mod/ModContent;->zips:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    sget-object v0, Lfr/testudo/spacecorsair/mod/ModContent;->chainIds:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const-string v0, ""

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModContent;->chainKey:Ljava/lang/String;

    .line 134
    const-string v0, "content"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "chain not loaded: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lfr/testudo/spacecorsair/mod/ModDev;->ev(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_22a
    .catchall {:try_start_1fa .. :try_end_22a} :catchall_9a

    goto/16 :goto_d
.end method

.method private static declared-synchronized guard(Ljava/lang/String;)V
    .registers 5

    .prologue
    .line 50
    const-class v1, Lfr/testudo/spacecorsair/mod/ModContent;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModContent;->guardKey:Ljava/lang/String;

    if-eqz v0, :cond_b

    sget-object v0, Lfr/testudo/spacecorsair/mod/ModContent;->dir:Ljava/io/File;
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_9} :catch_6a
    .catchall {:try_start_3 .. :try_end_9} :catchall_6f

    if-nez v0, :cond_d

    .line 55
    :cond_b
    :goto_b
    monitor-exit v1

    return-void

    .line 51
    :cond_d
    if-eqz p0, :cond_1d

    :try_start_f
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModContent;->guardState:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b

    sget-boolean v0, Lfr/testudo/spacecorsair/mod/ModContent;->guardOk:Z

    if-eqz v0, :cond_b

    :cond_1b
    sput-object p0, Lfr/testudo/spacecorsair/mod/ModContent;->guardState:Ljava/lang/String;

    .line 52
    :cond_1d
    new-instance v2, Ljava/io/File;

    sget-object v0, Lfr/testudo/spacecorsair/mod/ModContent;->dir:Ljava/io/File;

    const-string v3, "boot.txt"

    invoke-direct {v2, v0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lfr/testudo/spacecorsair/mod/ModContent;->guardKey:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v3, Lfr/testudo/spacecorsair/mod/ModContent;->guardCrashes:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v3, Lfr/testudo/spacecorsair/mod/ModContent;->guardState:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-boolean v0, Lfr/testudo/spacecorsair/mod/ModContent;->guardOk:Z

    if-eqz v0, :cond_6c

    const-string v0, "ok\n"

    :goto_55
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lfr/testudo/spacecorsair/mod/ModContent;->writeText(Ljava/io/File;Ljava/lang/String;)V

    .line 53
    sget-boolean v0, Lfr/testudo/spacecorsair/mod/ModContent;->guardOk:Z

    if-eqz v0, :cond_b

    if-eqz p0, :cond_b

    const/4 v0, 0x0

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModContent;->guardKey:Ljava/lang/String;

    goto :goto_b

    .line 54
    :catch_6a
    move-exception v0

    goto :goto_b

    .line 52
    :cond_6c
    const-string v0, ""
    :try_end_6e
    .catch Ljava/lang/Throwable; {:try_start_f .. :try_end_6e} :catch_6a
    .catchall {:try_start_f .. :try_end_6e} :catchall_6f

    goto :goto_55

    .line 50
    :catchall_6f
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static hex([B)Ljava/lang/String;
    .registers 8

    .prologue
    const/4 v1, 0x0

    .line 467
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 468
    array-length v3, p0

    move v0, v1

    :goto_8
    if-ge v0, v3, :cond_23

    aget-byte v4, p0, v0

    const-string v5, "%02x"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    and-int/lit16 v4, v4, 0xff

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v6, v1

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 469
    :cond_23
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static installedChain(Landroid/content/Context;)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 294
    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModContent;->dir(Landroid/content/Context;)Ljava/io/File;

    move-result-object v1

    const-string v2, "active.txt"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModContent;->readChain(Ljava/io/File;)Ljava/util/List;
    :try_end_e
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_e} :catch_10

    move-result-object v0

    :goto_f
    return-object v0

    :catch_10
    move-exception v0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    goto :goto_f
.end method

.method static declared-synchronized isReady()Z
    .registers 2

    .prologue
    .line 231
    const-class v1, Lfr/testudo/spacecorsair/mod/ModContent;

    monitor-enter v1

    :try_start_3
    sget-boolean v0, Lfr/testudo/spacecorsair/mod/ModContent;->ready:Z

    if-eqz v0, :cond_e

    sget-object v0, Lfr/testudo/spacecorsair/mod/ModContent;->dir:Ljava/io/File;
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_10

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_c
    monitor-exit v1

    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_c

    :catchall_10
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static keyOf(Ljava/util/List;)Ljava/lang/String;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<[",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    const/16 v7, 0x10

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 411
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 412
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 413
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-lez v3, :cond_24

    const/16 v3, 0x2c

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 414
    :cond_24
    aget-object v3, v0, v6

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x3a

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    array-length v4, v0

    if-le v4, v5, :cond_45

    aget-object v4, v0, v5

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-lt v4, v7, :cond_45

    aget-object v0, v0, v5

    invoke-virtual {v0, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :goto_41
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_d

    :cond_45
    array-length v4, v0

    if-le v4, v5, :cond_4b

    aget-object v0, v0, v5

    goto :goto_41

    :cond_4b
    const-string v0, ""

    goto :goto_41

    .line 416
    :cond_4e
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static label(Landroid/content/Context;)Ljava/lang/String;
    .registers 4

    .prologue
    .line 282
    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModContent;->ensure(Landroid/content/Context;)V

    .line 283
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModContent;->dir:Ljava/io/File;

    if-eqz v0, :cond_19

    new-instance v0, Ljava/io/File;

    sget-object v1, Lfr/testudo/spacecorsair/mod/ModContent;->dir:Ljava/io/File;

    const-string v2, "safe"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_19

    const-string v0, "built-in (safe mode)"

    .line 284
    :goto_18
    return-object v0

    :cond_19
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModContent;->chainIds:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_24

    const-string v0, "built-in"

    goto :goto_18

    :cond_24
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModContent;->chainIds:Ljava/util/List;

    sget-object v1, Lfr/testudo/spacecorsair/mod/ModContent;->chainIds:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_18
.end method

.method static layers(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation

    .prologue
    .line 267
    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModContent;->ensure(Landroid/content/Context;)V

    .line 268
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 269
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModContent;->zips:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_e
    :goto_e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/zip/ZipFile;

    .line 270
    :try_start_1a
    invoke-virtual {v0, p1}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v3

    if-eqz v3, :cond_e

    invoke-virtual {v0, v3}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_27
    .catch Ljava/lang/Throwable; {:try_start_1a .. :try_end_27} :catch_28

    goto :goto_e

    :catch_28
    move-exception v0

    goto :goto_e

    .line 272
    :cond_2a
    return-object v1
.end method

.method private static load(Ljava/util/List;)V
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<[",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 139
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_5
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_155

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 140
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/io/File;

    sget-object v5, Lfr/testudo/spacecorsair/mod/ModContent;->dir:Ljava/io/File;

    const-string v6, "packs"

    invoke-direct {v2, v5, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v6, v0, v3

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".zip"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v2, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 141
    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result v2

    if-nez v2, :cond_55

    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "missing pack "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v0, v0, v3

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 142
    :cond_55
    new-instance v5, Ljava/util/zip/ZipFile;

    invoke-direct {v5, v1}, Ljava/util/zip/ZipFile;-><init>(Ljava/io/File;)V

    .line 143
    sget-object v1, Lfr/testudo/spacecorsair/mod/ModContent;->zips:Ljava/util/List;

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 144
    invoke-static {v5}, Lfr/testudo/spacecorsair/mod/ModContent;->packInfo(Ljava/util/zip/ZipFile;)[Ljava/lang/String;

    move-result-object v6

    .line 145
    sget v1, Lfr/testudo/spacecorsair/mod/ModContent;->buildNow:I

    if-ltz v1, :cond_b0

    .line 147
    array-length v7, v6

    move v2, v3

    move v1, v3

    :goto_6a
    if-ge v2, v7, :cond_8d

    aget-object v8, v6, v2

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "build="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget v10, Lfr/testudo/spacecorsair/mod/ModContent;->buildNow:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_8a

    const/4 v1, 0x1

    :cond_8a
    add-int/lit8 v2, v2, 0x1

    goto :goto_6a

    .line 148
    :cond_8d
    if-nez v1, :cond_b0

    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "pack "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v0, v0, v3

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " is for another game build"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 150
    :cond_b0
    array-length v7, v6

    move v2, v3

    :goto_b2
    if-ge v2, v7, :cond_115

    aget-object v1, v6, v2

    .line 151
    const-string v8, "remove="

    invoke-virtual {v1, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_c2

    .line 150
    :cond_be
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_b2

    .line 152
    :cond_c2
    const/4 v8, 0x7

    invoke-virtual {v1, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    .line 153
    invoke-static {v8}, Lfr/testudo/spacecorsair/mod/ModContent;->allowedFolder(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_be

    .line 154
    sget-object v1, Lfr/testudo/spacecorsair/mod/ModContent;->removed:Ljava/util/Set;

    invoke-interface {v1, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 155
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 156
    sget-object v1, Lfr/testudo/spacecorsair/mod/ModContent;->index:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_e5
    :goto_e5
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_ff

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModContent;->base(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_e5

    invoke-interface {v9, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_e5

    .line 157
    :cond_ff
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_103
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_be

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    sget-object v9, Lfr/testudo/spacecorsair/mod/ModContent;->index:Ljava/util/Map;

    invoke-interface {v9, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_103

    .line 159
    :cond_115
    invoke-virtual {v5}, Ljava/util/zip/ZipFile;->entries()Ljava/util/Enumeration;

    move-result-object v2

    .line 160
    :cond_119
    :goto_119
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_14c

    .line 161
    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/zip/ZipEntry;

    .line 162
    invoke-virtual {v1}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v6

    .line 163
    invoke-virtual {v1}, Ljava/util/zip/ZipEntry;->isDirectory()Z

    move-result v1

    if-nez v1, :cond_119

    invoke-static {v6}, Lfr/testudo/spacecorsair/mod/ModContent;->safeName(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_119

    const-string v1, "pack.txt"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_119

    .line 164
    sget-object v1, Lfr/testudo/spacecorsair/mod/ModContent;->index:Ljava/util/Map;

    invoke-interface {v1, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 165
    sget-object v1, Lfr/testudo/spacecorsair/mod/ModContent;->removed:Ljava/util/Set;

    invoke-static {v6}, Lfr/testudo/spacecorsair/mod/ModContent;->base(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v1, v6}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_119

    .line 167
    :cond_14c
    sget-object v1, Lfr/testudo/spacecorsair/mod/ModContent;->chainIds:Ljava/util/List;

    aget-object v0, v0, v3

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_5

    .line 169
    :cond_155
    return-void
.end method

.method static names(Landroid/content/Context;Ljava/lang/String;)Ljava/util/Set;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 251
    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModContent;->ensure(Landroid/content/Context;)V

    .line 252
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 253
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModContent;->index:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_12
    :goto_12
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_40

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_12

    const/16 v3, 0x2f

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->indexOf(II)I

    move-result v3

    if-gez v3, :cond_12

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModContent;->base(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_12

    .line 254
    :cond_40
    return-object v1
.end method

.method public static open(Landroid/content/Context;Ljava/lang/String;)Ljava/io/InputStream;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 236
    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModContent;->ensure(Landroid/content/Context;)V

    .line 237
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModContent;->index:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/zip/ZipFile;

    .line 238
    if-nez v0, :cond_f

    .line 240
    :goto_e
    return-object v1

    .line 239
    :cond_f
    invoke-virtual {v0, p1}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v2

    .line 240
    if-nez v2, :cond_18

    move-object v0, v1

    :goto_16
    move-object v1, v0

    goto :goto_e

    :cond_18
    invoke-virtual {v0, v2}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v0

    goto :goto_16
.end method

.method static packBuild(Ljava/io/File;)I
    .registers 8

    .prologue
    const/4 v0, -0x1

    .line 214
    const/4 v2, 0x0

    .line 216
    :try_start_2
    new-instance v1, Ljava/util/zip/ZipFile;

    invoke-direct {v1, p0}, Ljava/util/zip/ZipFile;-><init>(Ljava/io/File;)V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_7} :catch_34
    .catchall {:try_start_2 .. :try_end_7} :catchall_3e

    .line 217
    :try_start_7
    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModContent;->packInfo(Ljava/util/zip/ZipFile;)[Ljava/lang/String;

    move-result-object v3

    array-length v4, v3

    const/4 v2, 0x0

    :goto_d
    if-ge v2, v4, :cond_2c

    aget-object v5, v3, v2

    const-string v6, "build="

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_29

    const/4 v2, 0x6

    invoke-virtual {v5, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, -0x1

    invoke-static {v2, v3}, Lfr/testudo/spacecorsair/mod/ModContent;->parseInt(Ljava/lang/String;I)I
    :try_end_22
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_22} :catch_4c
    .catchall {:try_start_7 .. :try_end_22} :catchall_4a

    move-result v0

    .line 222
    if-eqz v1, :cond_28

    :try_start_25
    invoke-virtual {v1}, Ljava/util/zip/ZipFile;->close()V
    :try_end_28
    .catch Ljava/lang/Throwable; {:try_start_25 .. :try_end_28} :catch_46

    .line 220
    :cond_28
    :goto_28
    return v0

    .line 217
    :cond_29
    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    .line 222
    :cond_2c
    if-eqz v1, :cond_28

    :try_start_2e
    invoke-virtual {v1}, Ljava/util/zip/ZipFile;->close()V
    :try_end_31
    .catch Ljava/lang/Throwable; {:try_start_2e .. :try_end_31} :catch_32

    goto :goto_28

    :catch_32
    move-exception v1

    goto :goto_28

    .line 219
    :catch_34
    move-exception v1

    move-object v1, v2

    .line 222
    :goto_36
    if-eqz v1, :cond_28

    :try_start_38
    invoke-virtual {v1}, Ljava/util/zip/ZipFile;->close()V
    :try_end_3b
    .catch Ljava/lang/Throwable; {:try_start_38 .. :try_end_3b} :catch_3c

    goto :goto_28

    :catch_3c
    move-exception v1

    goto :goto_28

    :catchall_3e
    move-exception v0

    move-object v1, v2

    :goto_40
    if-eqz v1, :cond_45

    :try_start_42
    invoke-virtual {v1}, Ljava/util/zip/ZipFile;->close()V
    :try_end_45
    .catch Ljava/lang/Throwable; {:try_start_42 .. :try_end_45} :catch_48

    .line 223
    :cond_45
    :goto_45
    throw v0

    .line 222
    :catch_46
    move-exception v1

    goto :goto_28

    :catch_48
    move-exception v1

    goto :goto_45

    :catchall_4a
    move-exception v0

    goto :goto_40

    .line 219
    :catch_4c
    move-exception v2

    goto :goto_36
.end method

.method static packFile(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;
    .registers 6

    .prologue
    .line 290
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/io/File;

    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModContent;->dir(Landroid/content/Context;)Ljava/io/File;

    move-result-object v2

    const-string v3, "packs"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".zip"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method private static packInfo(Ljava/util/zip/ZipFile;)[Ljava/lang/String;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 404
    const-string v0, "pack.txt"

    invoke-virtual {p0, v0}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v0

    .line 405
    if-eqz v0, :cond_13

    invoke-virtual {v0}, Ljava/util/zip/ZipEntry;->getSize()J

    move-result-wide v2

    const-wide/32 v4, 0x10000

    cmp-long v1, v2, v4

    if-lez v1, :cond_17

    :cond_13
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    .line 407
    :goto_16
    return-object v0

    .line 406
    :cond_17
    invoke-virtual {p0, v0}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v1

    .line 407
    :try_start_1b
    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModContent;->readLines(Ljava/io/InputStream;)[Ljava/lang/String;
    :try_end_1e
    .catchall {:try_start_1b .. :try_end_1e} :catchall_23

    move-result-object v0

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    goto :goto_16

    :catchall_23
    move-exception v0

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    throw v0
.end method

.method static parseInt(Ljava/lang/String;I)I
    .registers 3

    .prologue
    .line 456
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_7} :catch_9

    move-result p1

    :goto_8
    return p1

    :catch_9
    move-exception v0

    goto :goto_8
.end method

.method static prune(Ljava/io/File;IJ)I
    .registers 16

    .prologue
    const-wide/32 v10, 0x240c8400

    const/4 v0, -0x1

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 181
    .line 182
    new-instance v3, Ljava/io/File;

    const-string v4, "apk"

    invoke-direct {v3, p0, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 183
    invoke-virtual {v3}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v5

    .line 184
    if-eqz v5, :cond_4e

    .line 185
    new-instance v4, Ljava/io/File;

    const-string v6, "build.txt"

    invoke-direct {v4, v3, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v4}, Lfr/testudo/spacecorsair/mod/ModContent;->readLinesQuiet(Ljava/io/File;)[Ljava/lang/String;

    move-result-object v3

    .line 186
    array-length v4, v3

    if-lez v4, :cond_27

    aget-object v3, v3, v2

    invoke-static {v3, v0}, Lfr/testudo/spacecorsair/mod/ModContent;->parseInt(Ljava/lang/String;I)I

    move-result v0

    .line 187
    :cond_27
    if-ltz p1, :cond_4c

    if-ltz v0, :cond_4c

    if-lt p1, v0, :cond_4c

    move v0, v1

    .line 188
    :goto_2e
    array-length v6, v5

    move v4, v2

    move v3, v2

    :goto_31
    if-ge v4, v6, :cond_4f

    aget-object v7, v5, v4

    if-nez v0, :cond_41

    invoke-virtual {v7}, Ljava/io/File;->lastModified()J

    move-result-wide v8

    sub-long v8, p2, v8

    cmp-long v8, v8, v10

    if-lez v8, :cond_49

    :cond_41
    invoke-virtual {v7}, Ljava/io/File;->delete()Z

    move-result v7

    if-eqz v7, :cond_49

    add-int/lit8 v3, v3, 0x1

    :cond_49
    add-int/lit8 v4, v4, 0x1

    goto :goto_31

    :cond_4c
    move v0, v2

    .line 187
    goto :goto_2e

    :cond_4e
    move v3, v2

    .line 190
    :cond_4f
    new-instance v0, Ljava/io/File;

    const-string v4, "packs"

    invoke-direct {v0, p0, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v5

    .line 191
    new-instance v6, Ljava/util/HashSet;

    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    .line 192
    if-eqz v5, :cond_b1

    array-length v7, v5

    move v4, v2

    move v0, v3

    :goto_64
    if-ge v4, v7, :cond_b0

    aget-object v3, v5, v4

    .line 193
    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v8

    .line 194
    const-string v9, ".part"

    invoke-virtual {v8, v9}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_8a

    invoke-virtual {v3}, Ljava/io/File;->lastModified()J

    move-result-wide v8

    sub-long v8, p2, v8

    cmp-long v8, v8, v10

    if-lez v8, :cond_86

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    move-result v3

    if-eqz v3, :cond_86

    add-int/lit8 v0, v0, 0x1

    .line 192
    :cond_86
    :goto_86
    add-int/lit8 v3, v4, 0x1

    move v4, v3

    goto :goto_64

    .line 195
    :cond_8a
    if-ltz p1, :cond_86

    const-string v9, ".zip"

    invoke-virtual {v8, v9}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_86

    .line 196
    invoke-static {v3}, Lfr/testudo/spacecorsair/mod/ModContent;->packBuild(Ljava/io/File;)I

    move-result v9

    if-eq v9, p1, :cond_86

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    move-result v3

    if-eqz v3, :cond_86

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x4

    invoke-virtual {v8, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v6, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_86

    :cond_b0
    move v3, v0

    .line 198
    :cond_b1
    invoke-interface {v6}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_114

    .line 199
    const/4 v0, 0x2

    new-array v7, v0, [Ljava/lang/String;

    const-string v0, "active.txt"

    aput-object v0, v7, v2

    const-string v0, "previous.txt"

    aput-object v0, v7, v1

    array-length v8, v7

    move v5, v2

    :goto_c4
    if-ge v5, v8, :cond_fc

    aget-object v0, v7, v5

    .line 200
    new-instance v9, Ljava/io/File;

    invoke-direct {v9, p0, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 203
    :try_start_cd
    invoke-static {v9}, Lfr/testudo/spacecorsair/mod/ModContent;->readChain(Ljava/io/File;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    move v4, v2

    :goto_d6
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_ee

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    const/4 v11, 0x0

    aget-object v0, v0, v11

    invoke-interface {v6, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_117

    move v0, v1

    :goto_ec
    move v4, v0

    goto :goto_d6

    .line 204
    :cond_ee
    if-eqz v4, :cond_f8

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v9, v0}, Lfr/testudo/spacecorsair/mod/ModContent;->writeChain(Ljava/io/File;Ljava/util/List;)V
    :try_end_f8
    .catch Ljava/lang/Throwable; {:try_start_cd .. :try_end_f8} :catch_115

    .line 199
    :cond_f8
    :goto_f8
    add-int/lit8 v0, v5, 0x1

    move v5, v0

    goto :goto_c4

    .line 207
    :cond_fc
    const-string v0, "content"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "pruned packs for another game build: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lfr/testudo/spacecorsair/mod/ModDev;->ev(Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    :cond_114
    return v3

    .line 205
    :catch_115
    move-exception v0

    goto :goto_f8

    :cond_117
    move v0, v4

    goto :goto_ec
.end method

.method static readChain(Ljava/io/File;)Ljava/util/List;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            ")",
            "Ljava/util/List",
            "<[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v1, 0x0

    .line 420
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 421
    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModContent;->readLines(Ljava/io/File;)[Ljava/lang/String;

    move-result-object v3

    array-length v4, v3

    move v0, v1

    :goto_e
    if-ge v0, v4, :cond_37

    aget-object v5, v3, v0

    .line 422
    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 423
    array-length v6, v5

    if-lt v6, v9, :cond_34

    aget-object v6, v5, v1

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_34

    new-array v6, v9, [Ljava/lang/String;

    aget-object v7, v5, v1

    aput-object v7, v6, v1

    aget-object v5, v5, v8

    aput-object v5, v6, v8

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 421
    :cond_34
    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    .line 425
    :cond_37
    return-object v2
.end method

.method static readLines(Ljava/io/File;)[Ljava/lang/String;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 435
    invoke-virtual {p0}, Ljava/io/File;->isFile()Z

    move-result v0

    if-nez v0, :cond_a

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    .line 437
    :goto_9
    return-object v0

    .line 436
    :cond_a
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 437
    :try_start_f
    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModContent;->readLines(Ljava/io/InputStream;)[Ljava/lang/String;
    :try_end_12
    .catchall {:try_start_f .. :try_end_12} :catchall_17

    move-result-object v0

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    goto :goto_9

    :catchall_17
    move-exception v0

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    throw v0
.end method

.method static readLines(Ljava/io/InputStream;)[Ljava/lang/String;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 441
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/InputStreamReader;

    const-string v2, "UTF-8"

    invoke-direct {v1, p0, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 442
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 443
    :cond_11
    :goto_11
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_29

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_11

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_11

    .line 444
    :cond_29
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    invoke-interface {v1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method private static readLinesQuiet(Ljava/io/File;)[Ljava/lang/String;
    .registers 2

    .prologue
    .line 227
    :try_start_0
    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModContent;->readLines(Ljava/io/File;)[Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_3} :catch_5

    move-result-object v0

    :goto_4
    return-object v0

    :catch_5
    move-exception v0

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    goto :goto_4
.end method

.method public static removed(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 3

    .prologue
    .line 245
    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModContent;->ensure(Landroid/content/Context;)V

    .line 246
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModContent;->removed:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method static removedNames(Landroid/content/Context;Ljava/lang/String;)Ljava/util/Set;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 259
    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModContent;->ensure(Landroid/content/Context;)V

    .line 260
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 261
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModContent;->removed:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_e
    :goto_e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_e

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_e

    .line 262
    :cond_2c
    return-object v1
.end method

.method private static safeDir(Ljava/lang/String;)Z
    .registers 6

    .prologue
    const/4 v0, 0x0

    .line 386
    const-string v1, ".."

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_19

    const-string v1, "/"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_19

    const/16 v1, 0x5c

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-ltz v1, :cond_1a

    .line 388
    :cond_19
    :goto_19
    return v0

    .line 387
    :cond_1a
    sget-object v1, Lfr/testudo/spacecorsair/mod/ModContent;->FOLDERS:[Ljava/lang/String;

    array-length v2, v1

    :goto_1d
    if-ge v0, v2, :cond_32

    aget-object v3, v1, v0

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2d

    invoke-virtual {v3, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2f

    :cond_2d
    const/4 v0, 0x1

    goto :goto_19

    :cond_2f
    add-int/lit8 v0, v0, 0x1

    goto :goto_1d

    .line 388
    :cond_32
    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModContent;->allowedFolder(Ljava/lang/String;)Z

    move-result v0

    goto :goto_19
.end method

.method static safeMode(Landroid/content/Context;)Z
    .registers 4

    .prologue
    .line 322
    new-instance v0, Ljava/io/File;

    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModContent;->dir(Landroid/content/Context;)Ljava/io/File;

    move-result-object v1

    const-string v2, "safe"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    return v0
.end method

.method static safeName(Ljava/lang/String;)Z
    .registers 8

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 377
    if-eqz p0, :cond_2c

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0xc8

    if-gt v2, v3, :cond_2c

    const-string v2, "/"

    invoke-virtual {p0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2c

    const/16 v2, 0x5c

    invoke-virtual {p0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-gez v2, :cond_2c

    const-string v2, ".."

    invoke-virtual {p0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2c

    const/16 v2, 0x3a

    invoke-virtual {p0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-ltz v2, :cond_2e

    :cond_2c
    move v0, v1

    .line 382
    :cond_2d
    :goto_2d
    return v0

    .line 378
    :cond_2e
    const-string v2, "pack.txt"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2d

    .line 379
    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModContent;->allowedFolder(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3e

    move v0, v1

    goto :goto_2d

    .line 380
    :cond_3e
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p0, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    .line 381
    sget-object v4, Lfr/testudo/spacecorsair/mod/ModContent;->EXTS:[Ljava/lang/String;

    array-length v5, v4

    move v2, v1

    :goto_48
    if-ge v2, v5, :cond_55

    aget-object v6, v4, v2

    invoke-virtual {v3, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_2d

    add-int/lit8 v2, v2, 0x1

    goto :goto_48

    :cond_55
    move v0, v1

    .line 382
    goto :goto_2d
.end method

.method static declared-synchronized setChain(Landroid/content/Context;Ljava/util/List;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<[",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 299
    const-class v2, Lfr/testudo/spacecorsair/mod/ModContent;

    monitor-enter v2

    :try_start_4
    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModContent;->dir(Landroid/content/Context;)Ljava/io/File;

    move-result-object v3

    .line 300
    new-instance v0, Ljava/io/File;

    const-string v4, "active.txt"

    invoke-direct {v0, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModContent;->readChain(Ljava/io/File;)Ljava/util/List;

    move-result-object v0

    .line 301
    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModContent;->keyOf(Ljava/util/List;)Ljava/lang/String;

    move-result-object v4

    invoke-static {p1}, Lfr/testudo/spacecorsair/mod/ModContent;->keyOf(Ljava/util/List;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2b

    new-instance v4, Ljava/io/File;

    const-string v5, "previous.txt"

    invoke-direct {v4, v3, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v4, v0}, Lfr/testudo/spacecorsair/mod/ModContent;->writeChain(Ljava/io/File;Ljava/util/List;)V

    .line 302
    :cond_2b
    new-instance v0, Ljava/io/File;

    const-string v4, "active.txt"

    invoke-direct {v0, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v0, p1}, Lfr/testudo/spacecorsair/mod/ModContent;->writeChain(Ljava/io/File;Ljava/util/List;)V

    .line 303
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    .line 304
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_3e
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_67

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v7, 0x0

    aget-object v0, v0, v7

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, ".zip"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_63
    .catchall {:try_start_4 .. :try_end_63} :catchall_64

    goto :goto_3e

    .line 299
    :catchall_64
    move-exception v0

    monitor-exit v2

    throw v0

    .line 305
    :cond_67
    :try_start_67
    new-instance v0, Ljava/io/File;

    const-string v5, "previous.txt"

    invoke-direct {v0, v3, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModContent;->readChain(Ljava/io/File;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_76
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9c

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v7, 0x0

    aget-object v0, v0, v7

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, ".zip"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_76

    .line 306
    :cond_9c
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModContent;->chainIds:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_a2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_c5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, ".zip"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_a2

    .line 307
    :cond_c5
    new-instance v0, Ljava/io/File;

    const-string v5, "packs"

    invoke-direct {v0, v3, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    .line 308
    if-eqz v3, :cond_f4

    array-length v5, v3

    move v0, v1

    :goto_d4
    if-ge v0, v5, :cond_f4

    aget-object v1, v3, v0

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_f1

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v7, ".part"

    invoke-virtual {v6, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_f1

    invoke-virtual {v1}, Ljava/io/File;->delete()Z
    :try_end_f1
    .catchall {:try_start_67 .. :try_end_f1} :catchall_64

    :cond_f1
    add-int/lit8 v0, v0, 0x1

    goto :goto_d4

    .line 309
    :cond_f4
    monitor-exit v2

    return-void
.end method

.method static setSafeMode(Landroid/content/Context;Z)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 325
    new-instance v0, Ljava/io/File;

    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModContent;->dir(Landroid/content/Context;)Ljava/io/File;

    move-result-object v1

    const-string v2, "safe"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 326
    if-eqz p1, :cond_13

    const-string v1, "1"

    invoke-static {v0, v1}, Lfr/testudo/spacecorsair/mod/ModContent;->writeText(Ljava/io/File;Ljava/lang/String;)V

    .line 327
    :goto_12
    return-void

    .line 326
    :cond_13
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    goto :goto_12
.end method

.method static sha256(Ljava/io/File;)Ljava/lang/String;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 460
    const-string v0, "SHA-256"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 461
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 462
    const/high16 v2, 0x10000

    :try_start_d
    new-array v2, v2, [B

    :goto_f
    invoke-virtual {v1, v2}, Ljava/io/InputStream;->read([B)I

    move-result v3

    if-lez v3, :cond_1f

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v4, v3}, Ljava/security/MessageDigest;->update([BII)V
    :try_end_19
    .catchall {:try_start_d .. :try_end_19} :catchall_1a

    goto :goto_f

    :catchall_1a
    move-exception v0

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    throw v0

    :cond_1f
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 463
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModContent;->hex([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static declared-synchronized testLoad()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 481
    const-class v1, Lfr/testudo/spacecorsair/mod/ModContent;

    monitor-enter v1

    :try_start_3
    new-instance v0, Ljava/io/File;

    sget-object v2, Lfr/testudo/spacecorsair/mod/ModContent;->dir:Ljava/io/File;

    const-string v3, "active.txt"

    invoke-direct {v0, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModContent;->readChain(Ljava/io/File;)Ljava/util/List;

    move-result-object v0

    .line 482
    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModContent;->load(Ljava/util/List;)V

    .line 483
    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModContent;->keyOf(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModContent;->chainKey:Ljava/lang/String;
    :try_end_19
    .catchall {:try_start_3 .. :try_end_19} :catchall_1b

    .line 484
    monitor-exit v1

    return-void

    .line 481
    :catchall_1b
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static declared-synchronized testReset(Ljava/io/File;)V
    .registers 4

    .prologue
    .line 474
    const-class v1, Lfr/testudo/spacecorsair/mod/ModContent;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModContent;->zips:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_9
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/zip/ZipFile;
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_41

    :try_start_15
    invoke-virtual {v0}, Ljava/util/zip/ZipFile;->close()V
    :try_end_18
    .catch Ljava/lang/Throwable; {:try_start_15 .. :try_end_18} :catch_19
    .catchall {:try_start_15 .. :try_end_18} :catchall_41

    goto :goto_9

    :catch_19
    move-exception v0

    goto :goto_9

    .line 475
    :cond_1b
    :try_start_1b
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModContent;->zips:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    sget-object v0, Lfr/testudo/spacecorsair/mod/ModContent;->index:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    sget-object v0, Lfr/testudo/spacecorsair/mod/ModContent;->removed:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    sget-object v0, Lfr/testudo/spacecorsair/mod/ModContent;->chainIds:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const-string v0, ""

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModContent;->chainKey:Ljava/lang/String;

    const/4 v0, 0x0

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModContent;->notice:Ljava/lang/String;

    .line 476
    sput-object p0, Lfr/testudo/spacecorsair/mod/ModContent;->dir:Ljava/io/File;

    if-eqz p0, :cond_3f

    const/4 v0, 0x1

    :goto_3b
    sput-boolean v0, Lfr/testudo/spacecorsair/mod/ModContent;->ready:Z
    :try_end_3d
    .catchall {:try_start_1b .. :try_end_3d} :catchall_41

    .line 477
    monitor-exit v1

    return-void

    .line 476
    :cond_3f
    const/4 v0, 0x0

    goto :goto_3b

    .line 474
    :catchall_41
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static declared-synchronized undo(Landroid/content/Context;)Z
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 313
    const-class v1, Lfr/testudo/spacecorsair/mod/ModContent;

    monitor-enter v1

    :try_start_3
    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModContent;->dir(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    .line 314
    new-instance v2, Ljava/io/File;

    const-string v3, "previous.txt"

    invoke-direct {v2, v0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModContent;->readChain(Ljava/io/File;)Ljava/util/List;

    move-result-object v2

    .line 315
    new-instance v3, Ljava/io/File;

    const-string v4, "active.txt"

    invoke-direct {v3, v0, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v3}, Lfr/testudo/spacecorsair/mod/ModContent;->readChain(Ljava/io/File;)Ljava/util/List;

    move-result-object v3

    .line 316
    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModContent;->keyOf(Ljava/util/List;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3}, Lfr/testudo/spacecorsair/mod/ModContent;->keyOf(Ljava/util/List;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_28
    .catchall {:try_start_3 .. :try_end_28} :catchall_44

    move-result v4

    if-eqz v4, :cond_2e

    const/4 v0, 0x0

    .line 319
    :goto_2c
    monitor-exit v1

    return v0

    .line 317
    :cond_2e
    :try_start_2e
    new-instance v4, Ljava/io/File;

    const-string v5, "active.txt"

    invoke-direct {v4, v0, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v4, v2}, Lfr/testudo/spacecorsair/mod/ModContent;->writeChain(Ljava/io/File;Ljava/util/List;)V

    .line 318
    new-instance v2, Ljava/io/File;

    const-string v4, "previous.txt"

    invoke-direct {v2, v0, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v2, v3}, Lfr/testudo/spacecorsair/mod/ModContent;->writeChain(Ljava/io/File;Ljava/util/List;)V
    :try_end_42
    .catchall {:try_start_2e .. :try_end_42} :catchall_44

    .line 319
    const/4 v0, 0x1

    goto :goto_2c

    .line 313
    :catchall_44
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static validate(Ljava/io/File;Ljava/lang/String;II)Ljava/lang/String;
    .registers 16

    .prologue
    .line 334
    const/4 v2, 0x0

    .line 336
    :try_start_1
    new-instance v1, Ljava/util/zip/ZipFile;

    invoke-direct {v1, p0}, Ljava/util/zip/ZipFile;-><init>(Ljava/io/File;)V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_6} :catch_1f6
    .catchall {:try_start_1 .. :try_end_6} :catchall_1e7

    .line 337
    const-wide/16 v4, 0x0

    .line 338
    const/4 v0, 0x0

    .line 339
    :try_start_9
    invoke-virtual {v1}, Ljava/util/zip/ZipFile;->entries()Ljava/util/Enumeration;

    move-result-object v3

    move v2, v0

    .line 340
    :cond_e
    :goto_e
    invoke-interface {v3}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_a6

    .line 341
    invoke-interface {v3}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/zip/ZipEntry;

    .line 342
    invoke-virtual {v0}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v6

    .line 343
    const-string v7, "pack.txt"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_29

    const/4 v0, 0x1

    move v2, v0

    goto :goto_e

    .line 344
    :cond_29
    invoke-virtual {v0}, Ljava/util/zip/ZipEntry;->isDirectory()Z

    move-result v7

    if-eqz v7, :cond_4e

    invoke-static {v6}, Lfr/testudo/spacecorsair/mod/ModContent;->safeDir(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_e

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bad folder "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_47
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_47} :catch_1ba
    .catchall {:try_start_9 .. :try_end_47} :catchall_1f4

    move-result-object v0

    .line 372
    if-eqz v1, :cond_4d

    :try_start_4a
    invoke-virtual {v1}, Ljava/util/zip/ZipFile;->close()V
    :try_end_4d
    .catch Ljava/lang/Throwable; {:try_start_4a .. :try_end_4d} :catch_1ef

    .line 370
    :cond_4d
    :goto_4d
    return-object v0

    .line 345
    :cond_4e
    :try_start_4e
    invoke-static {v6}, Lfr/testudo/spacecorsair/mod/ModContent;->safeName(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_6f

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "file not allowed: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_66
    .catch Ljava/lang/Throwable; {:try_start_4e .. :try_end_66} :catch_1ba
    .catchall {:try_start_4e .. :try_end_66} :catchall_1f4

    move-result-object v0

    .line 372
    if-eqz v1, :cond_4d

    :try_start_69
    invoke-virtual {v1}, Ljava/util/zip/ZipFile;->close()V
    :try_end_6c
    .catch Ljava/lang/Throwable; {:try_start_69 .. :try_end_6c} :catch_6d

    goto :goto_4d

    :catch_6d
    move-exception v1

    goto :goto_4d

    .line 346
    :cond_6f
    :try_start_6f
    invoke-virtual {v0}, Ljava/util/zip/ZipEntry;->getSize()J

    move-result-wide v8

    .line 347
    const-wide/16 v10, 0x0

    cmp-long v0, v8, v10

    if-gez v0, :cond_94

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unknown size: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_8b
    .catch Ljava/lang/Throwable; {:try_start_6f .. :try_end_8b} :catch_1ba
    .catchall {:try_start_6f .. :try_end_8b} :catchall_1f4

    move-result-object v0

    .line 372
    if-eqz v1, :cond_4d

    :try_start_8e
    invoke-virtual {v1}, Ljava/util/zip/ZipFile;->close()V
    :try_end_91
    .catch Ljava/lang/Throwable; {:try_start_8e .. :try_end_91} :catch_92

    goto :goto_4d

    :catch_92
    move-exception v1

    goto :goto_4d

    .line 348
    :cond_94
    add-long/2addr v4, v8

    .line 349
    const-wide/32 v6, 0x12c00000

    cmp-long v0, v4, v6

    if-lez v0, :cond_e

    :try_start_9c
    const-string v0, "pack too large"
    :try_end_9e
    .catch Ljava/lang/Throwable; {:try_start_9c .. :try_end_9e} :catch_1ba
    .catchall {:try_start_9c .. :try_end_9e} :catchall_1f4

    .line 372
    if-eqz v1, :cond_4d

    :try_start_a0
    invoke-virtual {v1}, Ljava/util/zip/ZipFile;->close()V
    :try_end_a3
    .catch Ljava/lang/Throwable; {:try_start_a0 .. :try_end_a3} :catch_a4

    goto :goto_4d

    :catch_a4
    move-exception v1

    goto :goto_4d

    .line 351
    :cond_a6
    if-nez v2, :cond_b2

    :try_start_a8
    const-string v0, "no pack.txt"
    :try_end_aa
    .catch Ljava/lang/Throwable; {:try_start_a8 .. :try_end_aa} :catch_1ba
    .catchall {:try_start_a8 .. :try_end_aa} :catchall_1f4

    .line 372
    if-eqz v1, :cond_4d

    :try_start_ac
    invoke-virtual {v1}, Ljava/util/zip/ZipFile;->close()V
    :try_end_af
    .catch Ljava/lang/Throwable; {:try_start_ac .. :try_end_af} :catch_b0

    goto :goto_4d

    :catch_b0
    move-exception v1

    goto :goto_4d

    .line 352
    :cond_b2
    :try_start_b2
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 353
    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModContent;->packInfo(Ljava/util/zip/ZipFile;)[Ljava/lang/String;

    move-result-object v3

    array-length v4, v3

    const/4 v0, 0x0

    :goto_bd
    if-ge v0, v4, :cond_e6

    aget-object v5, v3, v0

    const/16 v6, 0x3d

    invoke-virtual {v5, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    if-lez v6, :cond_e3

    const-string v7, "remove="

    invoke-virtual {v5, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_e3

    const/4 v7, 0x0

    invoke-virtual {v5, v7, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {v5, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v7, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_e3
    add-int/lit8 v0, v0, 0x1

    goto :goto_bd

    .line 354
    :cond_e6
    const-string v0, "id"

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_fe

    const-string v0, "pack id differs"
    :try_end_f4
    .catch Ljava/lang/Throwable; {:try_start_b2 .. :try_end_f4} :catch_1ba
    .catchall {:try_start_b2 .. :try_end_f4} :catchall_1f4

    .line 372
    if-eqz v1, :cond_4d

    :try_start_f6
    invoke-virtual {v1}, Ljava/util/zip/ZipFile;->close()V
    :try_end_f9
    .catch Ljava/lang/Throwable; {:try_start_f6 .. :try_end_f9} :catch_fb

    goto/16 :goto_4d

    :catch_fb
    move-exception v1

    goto/16 :goto_4d

    .line 355
    :cond_fe
    :try_start_fe
    const-string v0, "build"

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const/4 v3, -0x1

    invoke-static {v0, v3}, Lfr/testudo/spacecorsair/mod/ModContent;->parseInt(Ljava/lang/String;I)I

    move-result v0

    if-eq v0, p2, :cond_119

    const-string v0, "pack is for another game build"
    :try_end_10f
    .catch Ljava/lang/Throwable; {:try_start_fe .. :try_end_10f} :catch_1ba
    .catchall {:try_start_fe .. :try_end_10f} :catchall_1f4

    .line 372
    if-eqz v1, :cond_4d

    :try_start_111
    invoke-virtual {v1}, Ljava/util/zip/ZipFile;->close()V
    :try_end_114
    .catch Ljava/lang/Throwable; {:try_start_111 .. :try_end_114} :catch_116

    goto/16 :goto_4d

    :catch_116
    move-exception v1

    goto/16 :goto_4d

    .line 356
    :cond_119
    :try_start_119
    const-string v0, "api"

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const/4 v2, -0x1

    invoke-static {v0, v2}, Lfr/testudo/spacecorsair/mod/ModContent;->parseInt(Ljava/lang/String;I)I

    move-result v0

    if-eq v0, p3, :cond_134

    const-string v0, "pack is for another content version"
    :try_end_12a
    .catch Ljava/lang/Throwable; {:try_start_119 .. :try_end_12a} :catch_1ba
    .catchall {:try_start_119 .. :try_end_12a} :catchall_1f4

    .line 372
    if-eqz v1, :cond_4d

    :try_start_12c
    invoke-virtual {v1}, Ljava/util/zip/ZipFile;->close()V
    :try_end_12f
    .catch Ljava/lang/Throwable; {:try_start_12c .. :try_end_12f} :catch_131

    goto/16 :goto_4d

    :catch_131
    move-exception v1

    goto/16 :goto_4d

    .line 358
    :cond_134
    :try_start_134
    invoke-virtual {v1}, Ljava/util/zip/ZipFile;->entries()Ljava/util/Enumeration;

    move-result-object v4

    .line 359
    const v0, 0x8000

    new-array v5, v0, [B

    .line 360
    :cond_13d
    invoke-interface {v4}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_1dc

    .line 361
    invoke-interface {v4}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/zip/ZipEntry;

    .line 362
    invoke-virtual {v0}, Ljava/util/zip/ZipEntry;->isDirectory()Z

    move-result v2

    if-nez v2, :cond_13d

    .line 363
    invoke-virtual {v1, v0}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;
    :try_end_152
    .catch Ljava/lang/Throwable; {:try_start_134 .. :try_end_152} :catch_1ba
    .catchall {:try_start_134 .. :try_end_152} :catchall_1f4

    move-result-object v6

    .line 364
    const-wide/16 v2, 0x0

    .line 365
    :cond_155
    :try_start_155
    invoke-virtual {v6, v5}, Ljava/io/InputStream;->read([B)I

    move-result v7

    if-lez v7, :cond_189

    int-to-long v8, v7

    add-long/2addr v2, v8

    invoke-virtual {v0}, Ljava/util/zip/ZipEntry;->getSize()J

    move-result-wide v8

    cmp-long v7, v2, v8

    if-lez v7, :cond_155

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "size mismatch: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_17b
    .catchall {:try_start_155 .. :try_end_17b} :catchall_1b5

    move-result-object v0

    :try_start_17c
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_17f
    .catch Ljava/lang/Throwable; {:try_start_17c .. :try_end_17f} :catch_1ba
    .catchall {:try_start_17c .. :try_end_17f} :catchall_1f4

    .line 372
    if-eqz v1, :cond_4d

    :try_start_181
    invoke-virtual {v1}, Ljava/util/zip/ZipFile;->close()V
    :try_end_184
    .catch Ljava/lang/Throwable; {:try_start_181 .. :try_end_184} :catch_186

    goto/16 :goto_4d

    :catch_186
    move-exception v1

    goto/16 :goto_4d

    .line 365
    :cond_189
    :try_start_189
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V

    .line 366
    invoke-virtual {v0}, Ljava/util/zip/ZipEntry;->getSize()J

    move-result-wide v6

    cmp-long v2, v2, v6

    if-eqz v2, :cond_13d

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "size mismatch: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1aa
    .catch Ljava/lang/Throwable; {:try_start_189 .. :try_end_1aa} :catch_1ba
    .catchall {:try_start_189 .. :try_end_1aa} :catchall_1f4

    move-result-object v0

    .line 372
    if-eqz v1, :cond_4d

    :try_start_1ad
    invoke-virtual {v1}, Ljava/util/zip/ZipFile;->close()V
    :try_end_1b0
    .catch Ljava/lang/Throwable; {:try_start_1ad .. :try_end_1b0} :catch_1b2

    goto/16 :goto_4d

    :catch_1b2
    move-exception v1

    goto/16 :goto_4d

    .line 365
    :catchall_1b5
    move-exception v0

    :try_start_1b6
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V

    throw v0
    :try_end_1ba
    .catch Ljava/lang/Throwable; {:try_start_1b6 .. :try_end_1ba} :catch_1ba
    .catchall {:try_start_1b6 .. :try_end_1ba} :catchall_1f4

    .line 369
    :catch_1ba
    move-exception v0

    .line 370
    :goto_1bb
    :try_start_1bb
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "not a valid pack: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1d1
    .catchall {:try_start_1bb .. :try_end_1d1} :catchall_1f4

    move-result-object v0

    .line 372
    if-eqz v1, :cond_4d

    :try_start_1d4
    invoke-virtual {v1}, Ljava/util/zip/ZipFile;->close()V
    :try_end_1d7
    .catch Ljava/lang/Throwable; {:try_start_1d4 .. :try_end_1d7} :catch_1d9

    goto/16 :goto_4d

    :catch_1d9
    move-exception v1

    goto/16 :goto_4d

    .line 368
    :cond_1dc
    const/4 v0, 0x0

    .line 372
    if-eqz v1, :cond_4d

    :try_start_1df
    invoke-virtual {v1}, Ljava/util/zip/ZipFile;->close()V
    :try_end_1e2
    .catch Ljava/lang/Throwable; {:try_start_1df .. :try_end_1e2} :catch_1e4

    goto/16 :goto_4d

    :catch_1e4
    move-exception v1

    goto/16 :goto_4d

    :catchall_1e7
    move-exception v0

    move-object v1, v2

    :goto_1e9
    if-eqz v1, :cond_1ee

    :try_start_1eb
    invoke-virtual {v1}, Ljava/util/zip/ZipFile;->close()V
    :try_end_1ee
    .catch Ljava/lang/Throwable; {:try_start_1eb .. :try_end_1ee} :catch_1f2

    .line 373
    :cond_1ee
    :goto_1ee
    throw v0

    .line 372
    :catch_1ef
    move-exception v1

    goto/16 :goto_4d

    :catch_1f2
    move-exception v1

    goto :goto_1ee

    :catchall_1f4
    move-exception v0

    goto :goto_1e9

    .line 369
    :catch_1f6
    move-exception v0

    move-object v1, v2

    goto :goto_1bb
.end method

.method static writeChain(Ljava/io/File;Ljava/util/List;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/util/List",
            "<[",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 429
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 430
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_9
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    const/4 v3, 0x0

    aget-object v3, v0, v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x20

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x1

    aget-object v0, v0, v4

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v3, 0xa

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_9

    .line 431
    :cond_2f
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lfr/testudo/spacecorsair/mod/ModContent;->writeText(Ljava/io/File;Ljava/lang/String;)V

    .line 432
    return-void
.end method

.method static writeText(Ljava/io/File;Ljava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 449
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".tmp"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 450
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 451
    :try_start_21
    const-string v2, "UTF-8"

    invoke-virtual {p1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/FileOutputStream;->write([B)V

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/FileDescriptor;->sync()V
    :try_end_31
    .catchall {:try_start_21 .. :try_end_31} :catchall_5c

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    .line 452
    invoke-virtual {v0, p0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v1

    if-nez v1, :cond_61

    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    invoke-virtual {v0, p0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v0

    if-nez v0, :cond_61

    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "rename "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 451
    :catchall_5c
    move-exception v0

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    throw v0

    .line 453
    :cond_61
    return-void
.end method
