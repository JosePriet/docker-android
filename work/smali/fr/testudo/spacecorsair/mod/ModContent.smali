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
    .registers 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 37
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "modart/"

    aput-object v1, v0, v2

    const-string v1, "modsfx/"

    aput-object v1, v0, v3

    const-string v1, "lang/"

    aput-object v1, v0, v4

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

    const/4 v1, 0x4

    const-string v2, ".txt"

    aput-object v2, v0, v1

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

    .line 328
    if-eqz p0, :cond_b

    const-string v1, ".."

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 330
    :cond_b
    :goto_b
    return v0

    .line 329
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
    .line 335
    const/16 v0, 0x2f

    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    const/16 v1, 0x2e

    invoke-virtual {p0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    .line 336
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
    .line 214
    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModContent;->ensure(Landroid/content/Context;)V

    new-instance v0, Ljava/util/ArrayList;

    sget-object v1, Lfr/testudo/spacecorsair/mod/ModContent;->chainIds:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method static chainKey(Landroid/content/Context;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 212
    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModContent;->ensure(Landroid/content/Context;)V

    sget-object v0, Lfr/testudo/spacecorsair/mod/ModContent;->chainKey:Ljava/lang/String;

    return-object v0
.end method

.method static dir(Landroid/content/Context;)Ljava/io/File;
    .registers 2

    .prologue
    .line 224
    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModContent;->ensure(Landroid/content/Context;)V

    sget-object v0, Lfr/testudo/spacecorsair/mod/ModContent;->dir:Ljava/io/File;

    return-object v0
.end method

.method public static declared-synchronized ensure(Landroid/content/Context;)V
    .registers 13

    .prologue
    const/4 v9, 0x3

    const/4 v11, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 71
    const-class v7, Lfr/testudo/spacecorsair/mod/ModContent;

    monitor-enter v7

    :try_start_7
    sget-boolean v0, Lfr/testudo/spacecorsair/mod/ModContent;->ready:Z
    :try_end_9
    .catchall {:try_start_7 .. :try_end_9} :catchall_129

    if-nez v0, :cond_d

    if-nez p0, :cond_f

    .line 134
    :cond_d
    :goto_d
    monitor-exit v7

    return-void

    .line 72
    :cond_f
    const/4 v0, 0x1

    :try_start_10
    sput-boolean v0, Lfr/testudo/spacecorsair/mod/ModContent;->ready:Z
    :try_end_12
    .catchall {:try_start_10 .. :try_end_12} :catchall_129

    .line 74
    :try_start_12
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 75
    if-eqz v0, :cond_5f

    move-object v3, v0

    :goto_19
    const-string v4, "content"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v3

    sput-object v3, Lfr/testudo/spacecorsair/mod/ModContent;->dir:Ljava/io/File;

    .line 76
    new-instance v3, Ljava/io/File;

    sget-object v4, Lfr/testudo/spacecorsair/mod/ModContent;->dir:Ljava/io/File;

    const-string v5, "packs"

    invoke-direct {v3, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    .line 77
    new-instance v3, Ljava/io/File;

    sget-object v4, Lfr/testudo/spacecorsair/mod/ModContent;->dir:Ljava/io/File;

    const-string v5, "safe"

    invoke-direct {v3, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_61

    const-string v0, "content"

    const-string v1, "safe mode: built-in content only"

    invoke-static {v0, v1}, Lfr/testudo/spacecorsair/mod/ModDev;->ev(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_44
    .catch Ljava/lang/Throwable; {:try_start_12 .. :try_end_44} :catch_45
    .catchall {:try_start_12 .. :try_end_44} :catchall_129

    goto :goto_d

    .line 129
    :catch_45
    move-exception v0

    move-object v1, v0

    .line 130
    :try_start_47
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModContent;->zips:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_4d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1b7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/zip/ZipFile;
    :try_end_59
    .catchall {:try_start_47 .. :try_end_59} :catchall_129

    :try_start_59
    invoke-virtual {v0}, Ljava/util/zip/ZipFile;->close()V
    :try_end_5c
    .catch Ljava/lang/Throwable; {:try_start_59 .. :try_end_5c} :catch_5d
    .catchall {:try_start_59 .. :try_end_5c} :catchall_129

    goto :goto_4d

    :catch_5d
    move-exception v0

    goto :goto_4d

    :cond_5f
    move-object v3, p0

    .line 75
    goto :goto_19

    .line 78
    :cond_61
    :try_start_61
    new-instance v3, Ljava/io/File;

    sget-object v4, Lfr/testudo/spacecorsair/mod/ModContent;->dir:Ljava/io/File;

    const-string v5, "active.txt"

    invoke-direct {v3, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v3}, Lfr/testudo/spacecorsair/mod/ModContent;->readChain(Ljava/io/File;)Ljava/util/List;

    move-result-object v5

    .line 79
    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_d

    .line 80
    invoke-static {v5}, Lfr/testudo/spacecorsair/mod/ModContent;->keyOf(Ljava/util/List;)Ljava/lang/String;

    move-result-object v4

    .line 84
    new-instance v3, Ljava/io/File;

    sget-object v6, Lfr/testudo/spacecorsair/mod/ModContent;->dir:Ljava/io/File;

    const-string v8, "boot.txt"

    invoke-direct {v3, v6, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v3}, Lfr/testudo/spacecorsair/mod/ModContent;->readLines(Ljava/io/File;)[Ljava/lang/String;

    move-result-object v8

    .line 85
    array-length v3, v8

    if-lt v3, v9, :cond_12c

    const/4 v3, 0x0

    aget-object v3, v8, v3

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_12c

    move v6, v1

    .line 86
    :goto_92
    if-eqz v6, :cond_12f

    const/4 v3, 0x1

    aget-object v3, v8, v3

    const/4 v9, 0x0

    invoke-static {v3, v9}, Lfr/testudo/spacecorsair/mod/ModContent;->parseInt(Ljava/lang/String;I)I

    move-result v3

    .line 87
    :goto_9c
    if-eqz v6, :cond_132

    array-length v9, v8

    const/4 v10, 0x4

    if-lt v9, v10, :cond_132

    const-string v9, "ok"

    const/4 v10, 0x3

    aget-object v10, v8, v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_132

    .line 88
    :goto_ad
    if-nez v1, :cond_be

    if-eqz v6, :cond_be

    const-string v6, "run"

    const/4 v9, 0x2

    aget-object v8, v8, v9

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_be

    add-int/lit8 v3, v3, 0x1

    .line 89
    :cond_be
    if-nez v1, :cond_137

    if-lt v3, v11, :cond_137

    .line 90
    const-string v1, "content"

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

    invoke-static {v1, v3}, Lfr/testudo/spacecorsair/mod/ModDev;->ev(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    new-instance v1, Ljava/io/File;

    sget-object v3, Lfr/testudo/spacecorsair/mod/ModContent;->dir:Ljava/io/File;

    const-string v4, "previous.txt"

    invoke-direct {v1, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 92
    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModContent;->readChain(Ljava/io/File;)Ljava/util/List;

    move-result-object v5

    .line 93
    new-instance v3, Ljava/io/File;

    sget-object v4, Lfr/testudo/spacecorsair/mod/ModContent;->dir:Ljava/io/File;

    const-string v6, "active.txt"

    invoke-direct {v3, v4, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v3, v5}, Lfr/testudo/spacecorsair/mod/ModContent;->writeChain(Ljava/io/File;Ljava/util/List;)V

    .line 94
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v1, v3}, Lfr/testudo/spacecorsair/mod/ModContent;->writeChain(Ljava/io/File;Ljava/util/List;)V

    .line 95
    const-string v1, "The last update was turned off after it failed to start."

    sput-object v1, Lfr/testudo/spacecorsair/mod/ModContent;->notice:Ljava/lang/String;

    .line 97
    invoke-static {v5}, Lfr/testudo/spacecorsair/mod/ModContent;->keyOf(Ljava/util/List;)Ljava/lang/String;

    move-result-object v4

    .line 99
    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_135

    new-instance v0, Ljava/io/File;

    sget-object v1, Lfr/testudo/spacecorsair/mod/ModContent;->dir:Ljava/io/File;

    const-string v2, "boot.txt"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const-string v1, ""

    invoke-static {v0, v1}, Lfr/testudo/spacecorsair/mod/ModContent;->writeText(Ljava/io/File;Ljava/lang/String;)V
    :try_end_127
    .catch Ljava/lang/Throwable; {:try_start_61 .. :try_end_127} :catch_45
    .catchall {:try_start_61 .. :try_end_127} :catchall_129

    goto/16 :goto_d

    .line 71
    :catchall_129
    move-exception v0

    monitor-exit v7

    throw v0

    :cond_12c
    move v6, v2

    .line 85
    goto/16 :goto_92

    :cond_12f
    move v3, v2

    .line 86
    goto/16 :goto_9c

    :cond_132
    move v1, v2

    .line 87
    goto/16 :goto_ad

    :cond_135
    move v1, v2

    move v3, v2

    .line 101
    :cond_137
    :try_start_137
    sput-object v4, Lfr/testudo/spacecorsair/mod/ModContent;->guardKey:Ljava/lang/String;

    sput v3, Lfr/testudo/spacecorsair/mod/ModContent;->guardCrashes:I

    sput-boolean v1, Lfr/testudo/spacecorsair/mod/ModContent;->guardOk:Z

    .line 102
    const-string v2, "run"

    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModContent;->guard(Ljava/lang/String;)V

    .line 103
    if-nez v1, :cond_157

    .line 104
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lfr/testudo/spacecorsair/mod/ModContent$1;

    invoke-direct {v2}, Lfr/testudo/spacecorsair/mod/ModContent$1;-><init>()V

    const-string v3, "content-guard"

    invoke-direct {v1, v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 109
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 110
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V
    :try_end_157
    .catch Ljava/lang/Throwable; {:try_start_137 .. :try_end_157} :catch_45
    .catchall {:try_start_137 .. :try_end_157} :catchall_129

    .line 113
    :cond_157
    if-eqz v0, :cond_1ab

    :goto_159
    :try_start_159
    check-cast v0, Landroid/app/Application;

    new-instance v1, Lfr/testudo/spacecorsair/mod/ModContent$2;

    invoke-direct {v1}, Lfr/testudo/spacecorsair/mod/ModContent$2;-><init>()V

    invoke-virtual {v0, v1}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V
    :try_end_163
    .catch Ljava/lang/Throwable; {:try_start_159 .. :try_end_163} :catch_1ad
    .catchall {:try_start_159 .. :try_end_163} :catchall_129

    .line 124
    :goto_163
    :try_start_163
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_172
    .catch Ljava/lang/Throwable; {:try_start_163 .. :try_end_172} :catch_1b4
    .catchall {:try_start_163 .. :try_end_172} :catchall_129

    add-int/lit16 v0, v0, -0x3e8

    .line 125
    :goto_174
    :try_start_174
    sput v0, Lfr/testudo/spacecorsair/mod/ModContent;->buildNow:I

    .line 126
    invoke-static {v5}, Lfr/testudo/spacecorsair/mod/ModContent;->load(Ljava/util/List;)V

    .line 127
    sput-object v4, Lfr/testudo/spacecorsair/mod/ModContent;->chainKey:Ljava/lang/String;

    .line 128
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

    goto/16 :goto_d

    :cond_1ab
    move-object v0, p0

    .line 113
    goto :goto_159

    .line 122
    :catch_1ad
    move-exception v0

    const-string v0, "paused"

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModContent;->guard(Ljava/lang/String;)V
    :try_end_1b3
    .catch Ljava/lang/Throwable; {:try_start_174 .. :try_end_1b3} :catch_45
    .catchall {:try_start_174 .. :try_end_1b3} :catchall_129

    goto :goto_163

    .line 124
    :catch_1b4
    move-exception v0

    const/4 v0, -0x1

    goto :goto_174

    .line 131
    :cond_1b7
    :try_start_1b7
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

    .line 132
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
    :try_end_1e7
    .catchall {:try_start_1b7 .. :try_end_1e7} :catchall_129

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

    .line 403
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 404
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

    .line 405
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
    .line 230
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

    .line 347
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 348
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 349
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-lez v3, :cond_24

    const/16 v3, 0x2c

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 350
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

    .line 352
    :cond_4e
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static label(Landroid/content/Context;)Ljava/lang/String;
    .registers 4

    .prologue
    .line 218
    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModContent;->ensure(Landroid/content/Context;)V

    .line 219
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

    .line 220
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
    .line 203
    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModContent;->ensure(Landroid/content/Context;)V

    .line 204
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 205
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

    .line 206
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

    .line 208
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

    .line 137
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_5
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_155

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 138
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

    .line 139
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

    .line 140
    :cond_55
    new-instance v5, Ljava/util/zip/ZipFile;

    invoke-direct {v5, v1}, Ljava/util/zip/ZipFile;-><init>(Ljava/io/File;)V

    .line 141
    sget-object v1, Lfr/testudo/spacecorsair/mod/ModContent;->zips:Ljava/util/List;

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 142
    invoke-static {v5}, Lfr/testudo/spacecorsair/mod/ModContent;->packInfo(Ljava/util/zip/ZipFile;)[Ljava/lang/String;

    move-result-object v6

    .line 143
    sget v1, Lfr/testudo/spacecorsair/mod/ModContent;->buildNow:I

    if-ltz v1, :cond_b0

    .line 145
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

    .line 146
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

    .line 148
    :cond_b0
    array-length v7, v6

    move v2, v3

    :goto_b2
    if-ge v2, v7, :cond_115

    aget-object v1, v6, v2

    .line 149
    const-string v8, "remove="

    invoke-virtual {v1, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_c2

    .line 148
    :cond_be
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_b2

    .line 150
    :cond_c2
    const/4 v8, 0x7

    invoke-virtual {v1, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    .line 151
    invoke-static {v8}, Lfr/testudo/spacecorsair/mod/ModContent;->allowedFolder(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_be

    .line 152
    sget-object v1, Lfr/testudo/spacecorsair/mod/ModContent;->removed:Ljava/util/Set;

    invoke-interface {v1, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 153
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 154
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

    .line 155
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

    .line 157
    :cond_115
    invoke-virtual {v5}, Ljava/util/zip/ZipFile;->entries()Ljava/util/Enumeration;

    move-result-object v2

    .line 158
    :cond_119
    :goto_119
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_14c

    .line 159
    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/zip/ZipEntry;

    .line 160
    invoke-virtual {v1}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v6

    .line 161
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

    .line 162
    sget-object v1, Lfr/testudo/spacecorsair/mod/ModContent;->index:Ljava/util/Map;

    invoke-interface {v1, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    sget-object v1, Lfr/testudo/spacecorsair/mod/ModContent;->removed:Ljava/util/Set;

    invoke-static {v6}, Lfr/testudo/spacecorsair/mod/ModContent;->base(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v1, v6}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_119

    .line 165
    :cond_14c
    sget-object v1, Lfr/testudo/spacecorsair/mod/ModContent;->chainIds:Ljava/util/List;

    aget-object v0, v0, v3

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_5

    .line 167
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
    .line 187
    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModContent;->ensure(Landroid/content/Context;)V

    .line 188
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 189
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

    .line 190
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

    .line 172
    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModContent;->ensure(Landroid/content/Context;)V

    .line 173
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModContent;->index:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/zip/ZipFile;

    .line 174
    if-nez v0, :cond_f

    .line 176
    :goto_e
    return-object v1

    .line 175
    :cond_f
    invoke-virtual {v0, p1}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v2

    .line 176
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

.method static packFile(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;
    .registers 6

    .prologue
    .line 226
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
    .line 340
    const-string v0, "pack.txt"

    invoke-virtual {p0, v0}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v0

    .line 341
    if-eqz v0, :cond_13

    invoke-virtual {v0}, Ljava/util/zip/ZipEntry;->getSize()J

    move-result-wide v2

    const-wide/32 v4, 0x10000

    cmp-long v1, v2, v4

    if-lez v1, :cond_17

    :cond_13
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    .line 343
    :goto_16
    return-object v0

    .line 342
    :cond_17
    invoke-virtual {p0, v0}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v1

    .line 343
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
    .line 392
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

    .line 356
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 357
    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModContent;->readLines(Ljava/io/File;)[Ljava/lang/String;

    move-result-object v3

    array-length v4, v3

    move v0, v1

    :goto_e
    if-ge v0, v4, :cond_37

    aget-object v5, v3, v0

    .line 358
    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 359
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

    .line 357
    :cond_34
    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    .line 361
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
    .line 371
    invoke-virtual {p0}, Ljava/io/File;->isFile()Z

    move-result v0

    if-nez v0, :cond_a

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    .line 373
    :goto_9
    return-object v0

    .line 372
    :cond_a
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 373
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
    .line 377
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/InputStreamReader;

    const-string v2, "UTF-8"

    invoke-direct {v1, p0, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 378
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 379
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

    .line 380
    :cond_29
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    invoke-interface {v1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method public static removed(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 3

    .prologue
    .line 181
    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModContent;->ensure(Landroid/content/Context;)V

    .line 182
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
    .line 195
    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModContent;->ensure(Landroid/content/Context;)V

    .line 196
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 197
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

    .line 198
    :cond_2c
    return-object v1
.end method

.method private static safeDir(Ljava/lang/String;)Z
    .registers 6

    .prologue
    const/4 v0, 0x0

    .line 322
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

    .line 324
    :cond_19
    :goto_19
    return v0

    .line 323
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

    .line 324
    :cond_32
    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModContent;->allowedFolder(Ljava/lang/String;)Z

    move-result v0

    goto :goto_19
.end method

.method static safeMode(Landroid/content/Context;)Z
    .registers 4

    .prologue
    .line 258
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

    .line 313
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

    .line 318
    :cond_2d
    :goto_2d
    return v0

    .line 314
    :cond_2e
    const-string v2, "pack.txt"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2d

    .line 315
    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModContent;->allowedFolder(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3e

    move v0, v1

    goto :goto_2d

    .line 316
    :cond_3e
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p0, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    .line 317
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

    .line 318
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

    .line 235
    const-class v2, Lfr/testudo/spacecorsair/mod/ModContent;

    monitor-enter v2

    :try_start_4
    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModContent;->dir(Landroid/content/Context;)Ljava/io/File;

    move-result-object v3

    .line 236
    new-instance v0, Ljava/io/File;

    const-string v4, "active.txt"

    invoke-direct {v0, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModContent;->readChain(Ljava/io/File;)Ljava/util/List;

    move-result-object v0

    .line 237
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

    .line 238
    :cond_2b
    new-instance v0, Ljava/io/File;

    const-string v4, "active.txt"

    invoke-direct {v0, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v0, p1}, Lfr/testudo/spacecorsair/mod/ModContent;->writeChain(Ljava/io/File;Ljava/util/List;)V

    .line 239
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    .line 240
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

    .line 235
    :catchall_64
    move-exception v0

    monitor-exit v2

    throw v0

    .line 241
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

    .line 242
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

    .line 243
    :cond_c5
    new-instance v0, Ljava/io/File;

    const-string v5, "packs"

    invoke-direct {v0, v3, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    .line 244
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

    .line 245
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
    .line 261
    new-instance v0, Ljava/io/File;

    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModContent;->dir(Landroid/content/Context;)Ljava/io/File;

    move-result-object v1

    const-string v2, "safe"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 262
    if-eqz p1, :cond_13

    const-string v1, "1"

    invoke-static {v0, v1}, Lfr/testudo/spacecorsair/mod/ModContent;->writeText(Ljava/io/File;Ljava/lang/String;)V

    .line 263
    :goto_12
    return-void

    .line 262
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
    .line 396
    const-string v0, "SHA-256"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 397
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 398
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

    .line 399
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
    .line 417
    const-class v1, Lfr/testudo/spacecorsair/mod/ModContent;

    monitor-enter v1

    :try_start_3
    new-instance v0, Ljava/io/File;

    sget-object v2, Lfr/testudo/spacecorsair/mod/ModContent;->dir:Ljava/io/File;

    const-string v3, "active.txt"

    invoke-direct {v0, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModContent;->readChain(Ljava/io/File;)Ljava/util/List;

    move-result-object v0

    .line 418
    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModContent;->load(Ljava/util/List;)V

    .line 419
    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModContent;->keyOf(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModContent;->chainKey:Ljava/lang/String;
    :try_end_19
    .catchall {:try_start_3 .. :try_end_19} :catchall_1b

    .line 420
    monitor-exit v1

    return-void

    .line 417
    :catchall_1b
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static declared-synchronized testReset(Ljava/io/File;)V
    .registers 4

    .prologue
    .line 410
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

    .line 411
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

    .line 412
    sput-object p0, Lfr/testudo/spacecorsair/mod/ModContent;->dir:Ljava/io/File;

    if-eqz p0, :cond_3f

    const/4 v0, 0x1

    :goto_3b
    sput-boolean v0, Lfr/testudo/spacecorsair/mod/ModContent;->ready:Z
    :try_end_3d
    .catchall {:try_start_1b .. :try_end_3d} :catchall_41

    .line 413
    monitor-exit v1

    return-void

    .line 412
    :cond_3f
    const/4 v0, 0x0

    goto :goto_3b

    .line 410
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
    .line 249
    const-class v1, Lfr/testudo/spacecorsair/mod/ModContent;

    monitor-enter v1

    :try_start_3
    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModContent;->dir(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    .line 250
    new-instance v2, Ljava/io/File;

    const-string v3, "previous.txt"

    invoke-direct {v2, v0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModContent;->readChain(Ljava/io/File;)Ljava/util/List;

    move-result-object v2

    .line 251
    new-instance v3, Ljava/io/File;

    const-string v4, "active.txt"

    invoke-direct {v3, v0, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v3}, Lfr/testudo/spacecorsair/mod/ModContent;->readChain(Ljava/io/File;)Ljava/util/List;

    move-result-object v3

    .line 252
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

    .line 255
    :goto_2c
    monitor-exit v1

    return v0

    .line 253
    :cond_2e
    :try_start_2e
    new-instance v4, Ljava/io/File;

    const-string v5, "active.txt"

    invoke-direct {v4, v0, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v4, v2}, Lfr/testudo/spacecorsair/mod/ModContent;->writeChain(Ljava/io/File;Ljava/util/List;)V

    .line 254
    new-instance v2, Ljava/io/File;

    const-string v4, "previous.txt"

    invoke-direct {v2, v0, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v2, v3}, Lfr/testudo/spacecorsair/mod/ModContent;->writeChain(Ljava/io/File;Ljava/util/List;)V
    :try_end_42
    .catchall {:try_start_2e .. :try_end_42} :catchall_44

    .line 255
    const/4 v0, 0x1

    goto :goto_2c

    .line 249
    :catchall_44
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static validate(Ljava/io/File;Ljava/lang/String;II)Ljava/lang/String;
    .registers 16

    .prologue
    .line 270
    const/4 v2, 0x0

    .line 272
    :try_start_1
    new-instance v1, Ljava/util/zip/ZipFile;

    invoke-direct {v1, p0}, Ljava/util/zip/ZipFile;-><init>(Ljava/io/File;)V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_6} :catch_1f6
    .catchall {:try_start_1 .. :try_end_6} :catchall_1e7

    .line 273
    const-wide/16 v4, 0x0

    .line 274
    const/4 v0, 0x0

    .line 275
    :try_start_9
    invoke-virtual {v1}, Ljava/util/zip/ZipFile;->entries()Ljava/util/Enumeration;

    move-result-object v3

    move v2, v0

    .line 276
    :cond_e
    :goto_e
    invoke-interface {v3}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_a6

    .line 277
    invoke-interface {v3}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/zip/ZipEntry;

    .line 278
    invoke-virtual {v0}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v6

    .line 279
    const-string v7, "pack.txt"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_29

    const/4 v0, 0x1

    move v2, v0

    goto :goto_e

    .line 280
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

    .line 308
    if-eqz v1, :cond_4d

    :try_start_4a
    invoke-virtual {v1}, Ljava/util/zip/ZipFile;->close()V
    :try_end_4d
    .catch Ljava/lang/Throwable; {:try_start_4a .. :try_end_4d} :catch_1ef

    .line 306
    :cond_4d
    :goto_4d
    return-object v0

    .line 281
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

    .line 308
    if-eqz v1, :cond_4d

    :try_start_69
    invoke-virtual {v1}, Ljava/util/zip/ZipFile;->close()V
    :try_end_6c
    .catch Ljava/lang/Throwable; {:try_start_69 .. :try_end_6c} :catch_6d

    goto :goto_4d

    :catch_6d
    move-exception v1

    goto :goto_4d

    .line 282
    :cond_6f
    :try_start_6f
    invoke-virtual {v0}, Ljava/util/zip/ZipEntry;->getSize()J

    move-result-wide v8

    .line 283
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

    .line 308
    if-eqz v1, :cond_4d

    :try_start_8e
    invoke-virtual {v1}, Ljava/util/zip/ZipFile;->close()V
    :try_end_91
    .catch Ljava/lang/Throwable; {:try_start_8e .. :try_end_91} :catch_92

    goto :goto_4d

    :catch_92
    move-exception v1

    goto :goto_4d

    .line 284
    :cond_94
    add-long/2addr v4, v8

    .line 285
    const-wide/32 v6, 0x12c00000

    cmp-long v0, v4, v6

    if-lez v0, :cond_e

    :try_start_9c
    const-string v0, "pack too large"
    :try_end_9e
    .catch Ljava/lang/Throwable; {:try_start_9c .. :try_end_9e} :catch_1ba
    .catchall {:try_start_9c .. :try_end_9e} :catchall_1f4

    .line 308
    if-eqz v1, :cond_4d

    :try_start_a0
    invoke-virtual {v1}, Ljava/util/zip/ZipFile;->close()V
    :try_end_a3
    .catch Ljava/lang/Throwable; {:try_start_a0 .. :try_end_a3} :catch_a4

    goto :goto_4d

    :catch_a4
    move-exception v1

    goto :goto_4d

    .line 287
    :cond_a6
    if-nez v2, :cond_b2

    :try_start_a8
    const-string v0, "no pack.txt"
    :try_end_aa
    .catch Ljava/lang/Throwable; {:try_start_a8 .. :try_end_aa} :catch_1ba
    .catchall {:try_start_a8 .. :try_end_aa} :catchall_1f4

    .line 308
    if-eqz v1, :cond_4d

    :try_start_ac
    invoke-virtual {v1}, Ljava/util/zip/ZipFile;->close()V
    :try_end_af
    .catch Ljava/lang/Throwable; {:try_start_ac .. :try_end_af} :catch_b0

    goto :goto_4d

    :catch_b0
    move-exception v1

    goto :goto_4d

    .line 288
    :cond_b2
    :try_start_b2
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 289
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

    .line 290
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

    .line 308
    if-eqz v1, :cond_4d

    :try_start_f6
    invoke-virtual {v1}, Ljava/util/zip/ZipFile;->close()V
    :try_end_f9
    .catch Ljava/lang/Throwable; {:try_start_f6 .. :try_end_f9} :catch_fb

    goto/16 :goto_4d

    :catch_fb
    move-exception v1

    goto/16 :goto_4d

    .line 291
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

    .line 308
    if-eqz v1, :cond_4d

    :try_start_111
    invoke-virtual {v1}, Ljava/util/zip/ZipFile;->close()V
    :try_end_114
    .catch Ljava/lang/Throwable; {:try_start_111 .. :try_end_114} :catch_116

    goto/16 :goto_4d

    :catch_116
    move-exception v1

    goto/16 :goto_4d

    .line 292
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

    .line 308
    if-eqz v1, :cond_4d

    :try_start_12c
    invoke-virtual {v1}, Ljava/util/zip/ZipFile;->close()V
    :try_end_12f
    .catch Ljava/lang/Throwable; {:try_start_12c .. :try_end_12f} :catch_131

    goto/16 :goto_4d

    :catch_131
    move-exception v1

    goto/16 :goto_4d

    .line 294
    :cond_134
    :try_start_134
    invoke-virtual {v1}, Ljava/util/zip/ZipFile;->entries()Ljava/util/Enumeration;

    move-result-object v4

    .line 295
    const v0, 0x8000

    new-array v5, v0, [B

    .line 296
    :cond_13d
    invoke-interface {v4}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_1dc

    .line 297
    invoke-interface {v4}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/zip/ZipEntry;

    .line 298
    invoke-virtual {v0}, Ljava/util/zip/ZipEntry;->isDirectory()Z

    move-result v2

    if-nez v2, :cond_13d

    .line 299
    invoke-virtual {v1, v0}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;
    :try_end_152
    .catch Ljava/lang/Throwable; {:try_start_134 .. :try_end_152} :catch_1ba
    .catchall {:try_start_134 .. :try_end_152} :catchall_1f4

    move-result-object v6

    .line 300
    const-wide/16 v2, 0x0

    .line 301
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

    .line 308
    if-eqz v1, :cond_4d

    :try_start_181
    invoke-virtual {v1}, Ljava/util/zip/ZipFile;->close()V
    :try_end_184
    .catch Ljava/lang/Throwable; {:try_start_181 .. :try_end_184} :catch_186

    goto/16 :goto_4d

    :catch_186
    move-exception v1

    goto/16 :goto_4d

    .line 301
    :cond_189
    :try_start_189
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V

    .line 302
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

    .line 308
    if-eqz v1, :cond_4d

    :try_start_1ad
    invoke-virtual {v1}, Ljava/util/zip/ZipFile;->close()V
    :try_end_1b0
    .catch Ljava/lang/Throwable; {:try_start_1ad .. :try_end_1b0} :catch_1b2

    goto/16 :goto_4d

    :catch_1b2
    move-exception v1

    goto/16 :goto_4d

    .line 301
    :catchall_1b5
    move-exception v0

    :try_start_1b6
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V

    throw v0
    :try_end_1ba
    .catch Ljava/lang/Throwable; {:try_start_1b6 .. :try_end_1ba} :catch_1ba
    .catchall {:try_start_1b6 .. :try_end_1ba} :catchall_1f4

    .line 305
    :catch_1ba
    move-exception v0

    .line 306
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

    .line 308
    if-eqz v1, :cond_4d

    :try_start_1d4
    invoke-virtual {v1}, Ljava/util/zip/ZipFile;->close()V
    :try_end_1d7
    .catch Ljava/lang/Throwable; {:try_start_1d4 .. :try_end_1d7} :catch_1d9

    goto/16 :goto_4d

    :catch_1d9
    move-exception v1

    goto/16 :goto_4d

    .line 304
    :cond_1dc
    const/4 v0, 0x0

    .line 308
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

    .line 309
    :cond_1ee
    :goto_1ee
    throw v0

    .line 308
    :catch_1ef
    move-exception v1

    goto/16 :goto_4d

    :catch_1f2
    move-exception v1

    goto :goto_1ee

    :catchall_1f4
    move-exception v0

    goto :goto_1e9

    .line 305
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
    .line 365
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 366
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

    .line 367
    :cond_2f
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lfr/testudo/spacecorsair/mod/ModContent;->writeText(Ljava/io/File;Ljava/lang/String;)V

    .line 368
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
    .line 385
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

    .line 386
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 387
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

    .line 388
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

    .line 387
    :catchall_5c
    move-exception v0

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    throw v0

    .line 389
    :cond_61
    return-void
.end method
