.class public final Lfr/testudo/spacecorsair/mod/ModContent;
.super Ljava/lang/Object;
.source "ModContent.java"


# static fields
.field static final API:I = 0x1

.field static final CONFIRM_MS:J = 0xafc8L

.field static final EXTS:[Ljava/lang/String;

.field static final FOLDERS:[Ljava/lang/String;

.field static final GUARD_STARTS:I = 0x3

.field static final MAX_UNPACKED:J = 0x12c00000L

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

    .line 46
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModContent;->chainIds:Ljava/util/List;

    .line 47
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModContent;->zips:Ljava/util/List;

    .line 48
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModContent;->index:Ljava/util/Map;

    .line 49
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModContent;->removed:Ljava/util/Set;

    .line 50
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

.method static synthetic access$000()Ljava/io/File;
    .registers 1

    .prologue
    .line 32
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModContent;->dir:Ljava/io/File;

    return-object v0
.end method

.method private static allowedFolder(Ljava/lang/String;)Z
    .registers 7

    .prologue
    const/4 v0, 0x0

    .line 290
    if-eqz p0, :cond_b

    const-string v1, ".."

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 292
    :cond_b
    :goto_b
    return v0

    .line 291
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
    .line 297
    const/16 v0, 0x2f

    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    const/16 v1, 0x2e

    invoke-virtual {p0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    .line 298
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
    .line 176
    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModContent;->ensure(Landroid/content/Context;)V

    new-instance v0, Ljava/util/ArrayList;

    sget-object v1, Lfr/testudo/spacecorsair/mod/ModContent;->chainIds:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method static chainKey(Landroid/content/Context;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 174
    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModContent;->ensure(Landroid/content/Context;)V

    sget-object v0, Lfr/testudo/spacecorsair/mod/ModContent;->chainKey:Ljava/lang/String;

    return-object v0
.end method

.method static dir(Landroid/content/Context;)Ljava/io/File;
    .registers 2

    .prologue
    .line 186
    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModContent;->ensure(Landroid/content/Context;)V

    sget-object v0, Lfr/testudo/spacecorsair/mod/ModContent;->dir:Ljava/io/File;

    return-object v0
.end method

.method public static declared-synchronized ensure(Landroid/content/Context;)V
    .registers 11

    .prologue
    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 56
    const-class v5, Lfr/testudo/spacecorsair/mod/ModContent;

    monitor-enter v5

    :try_start_7
    sget-boolean v0, Lfr/testudo/spacecorsair/mod/ModContent;->ready:Z
    :try_end_9
    .catchall {:try_start_7 .. :try_end_9} :catchall_77

    if-nez v0, :cond_d

    if-nez p0, :cond_f

    .line 101
    :cond_d
    :goto_d
    monitor-exit v5

    return-void

    .line 57
    :cond_f
    const/4 v0, 0x1

    :try_start_10
    sput-boolean v0, Lfr/testudo/spacecorsair/mod/ModContent;->ready:Z
    :try_end_12
    .catchall {:try_start_10 .. :try_end_12} :catchall_77

    .line 59
    :try_start_12
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 60
    if-eqz v0, :cond_19

    move-object p0, v0

    :cond_19
    const-string v0, "content"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v0

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModContent;->dir:Ljava/io/File;

    .line 61
    new-instance v0, Ljava/io/File;

    sget-object v1, Lfr/testudo/spacecorsair/mod/ModContent;->dir:Ljava/io/File;

    const-string v4, "packs"

    invoke-direct {v0, v1, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 62
    new-instance v0, Ljava/io/File;

    sget-object v1, Lfr/testudo/spacecorsair/mod/ModContent;->dir:Ljava/io/File;

    const-string v4, "safe"

    invoke-direct {v0, v1, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_7a

    const-string v0, "content"

    const-string v1, "safe mode: built-in content only"

    invoke-static {v0, v1}, Lfr/testudo/spacecorsair/mod/ModDev;->ev(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_44
    .catch Ljava/lang/Throwable; {:try_start_12 .. :try_end_44} :catch_45
    .catchall {:try_start_12 .. :try_end_44} :catchall_77

    goto :goto_d

    .line 97
    :catch_45
    move-exception v0

    .line 98
    :try_start_46
    sget-object v1, Lfr/testudo/spacecorsair/mod/ModContent;->index:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    sget-object v1, Lfr/testudo/spacecorsair/mod/ModContent;->removed:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->clear()V

    sget-object v1, Lfr/testudo/spacecorsair/mod/ModContent;->zips:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    sget-object v1, Lfr/testudo/spacecorsair/mod/ModContent;->chainIds:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    const-string v1, ""

    sput-object v1, Lfr/testudo/spacecorsair/mod/ModContent;->chainKey:Ljava/lang/String;

    .line 99
    const-string v1, "content"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "chain not loaded: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lfr/testudo/spacecorsair/mod/ModDev;->ev(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_76
    .catchall {:try_start_46 .. :try_end_76} :catchall_77

    goto :goto_d

    .line 56
    :catchall_77
    move-exception v0

    monitor-exit v5

    throw v0

    .line 63
    :cond_7a
    :try_start_7a
    new-instance v0, Ljava/io/File;

    sget-object v1, Lfr/testudo/spacecorsair/mod/ModContent;->dir:Ljava/io/File;

    const-string v4, "active.txt"

    invoke-direct {v0, v1, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModContent;->readChain(Ljava/io/File;)Ljava/util/List;

    move-result-object v1

    .line 64
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_d

    .line 65
    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModContent;->keyOf(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    .line 67
    new-instance v4, Ljava/io/File;

    sget-object v6, Lfr/testudo/spacecorsair/mod/ModContent;->dir:Ljava/io/File;

    const-string v7, "boot.txt"

    invoke-direct {v4, v6, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v4}, Lfr/testudo/spacecorsair/mod/ModContent;->readLines(Ljava/io/File;)[Ljava/lang/String;

    move-result-object v6

    .line 68
    array-length v4, v6

    if-lt v4, v8, :cond_139

    const/4 v4, 0x0

    aget-object v4, v6, v4

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_139

    const/4 v4, 0x1

    aget-object v4, v6, v4

    const/4 v7, 0x0

    invoke-static {v4, v7}, Lfr/testudo/spacecorsair/mod/ModContent;->parseInt(Ljava/lang/String;I)I

    move-result v4

    .line 69
    :goto_b2
    array-length v7, v6

    if-lt v7, v9, :cond_ca

    const/4 v7, 0x0

    aget-object v7, v6, v7

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_ca

    const-string v7, "ok"

    const/4 v8, 0x2

    aget-object v6, v6, v8

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_ca

    move v3, v2

    .line 70
    :cond_ca
    if-nez v3, :cond_179

    .line 71
    add-int/lit8 v3, v4, 0x1

    .line 72
    if-le v3, v9, :cond_13c

    .line 73
    const-string v1, "content"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "crash guard: chain "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " off after "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " short starts"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lfr/testudo/spacecorsair/mod/ModDev;->ev(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    new-instance v0, Ljava/io/File;

    sget-object v1, Lfr/testudo/spacecorsair/mod/ModContent;->dir:Ljava/io/File;

    const-string v3, "previous.txt"

    invoke-direct {v0, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 75
    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModContent;->readChain(Ljava/io/File;)Ljava/util/List;

    move-result-object v1

    .line 76
    new-instance v3, Ljava/io/File;

    sget-object v4, Lfr/testudo/spacecorsair/mod/ModContent;->dir:Ljava/io/File;

    const-string v6, "active.txt"

    invoke-direct {v3, v4, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v3, v1}, Lfr/testudo/spacecorsair/mod/ModContent;->writeChain(Ljava/io/File;Ljava/util/List;)V

    .line 77
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0, v3}, Lfr/testudo/spacecorsair/mod/ModContent;->writeChain(Ljava/io/File;Ljava/util/List;)V

    .line 78
    const-string v0, "The last update was turned off after it failed to start."

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModContent;->notice:Ljava/lang/String;

    .line 80
    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModContent;->keyOf(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    .line 82
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_13d

    new-instance v0, Ljava/io/File;

    sget-object v1, Lfr/testudo/spacecorsair/mod/ModContent;->dir:Ljava/io/File;

    const-string v2, "boot.txt"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const-string v1, ""

    invoke-static {v0, v1}, Lfr/testudo/spacecorsair/mod/ModContent;->writeText(Ljava/io/File;Ljava/lang/String;)V

    goto/16 :goto_d

    :cond_139
    move v4, v3

    .line 68
    goto/16 :goto_b2

    :cond_13c
    move v2, v3

    .line 84
    :cond_13d
    new-instance v3, Ljava/io/File;

    sget-object v4, Lfr/testudo/spacecorsair/mod/ModContent;->dir:Ljava/io/File;

    const-string v6, "boot.txt"

    invoke-direct {v3, v4, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "\n"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "\n"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lfr/testudo/spacecorsair/mod/ModContent;->writeText(Ljava/io/File;Ljava/lang/String;)V

    .line 86
    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lfr/testudo/spacecorsair/mod/ModContent$1;

    invoke-direct {v3, v0}, Lfr/testudo/spacecorsair/mod/ModContent$1;-><init>(Ljava/lang/String;)V

    const-string v4, "content-guard"

    invoke-direct {v2, v3, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 91
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 92
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 94
    :cond_179
    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModContent;->load(Ljava/util/List;)V

    .line 95
    sput-object v0, Lfr/testudo/spacecorsair/mod/ModContent;->chainKey:Ljava/lang/String;

    .line 96
    const-string v1, "content"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "chain "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " ("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Lfr/testudo/spacecorsair/mod/ModContent;->index:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " files)"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lfr/testudo/spacecorsair/mod/ModDev;->ev(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1ac
    .catch Ljava/lang/Throwable; {:try_start_7a .. :try_end_1ac} :catch_45
    .catchall {:try_start_7a .. :try_end_1ac} :catchall_77

    goto/16 :goto_d
.end method

.method static hex([B)Ljava/lang/String;
    .registers 8

    .prologue
    const/4 v1, 0x0

    .line 365
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 366
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

    .line 367
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
    .line 192
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

    .line 309
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 310
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 311
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-lez v3, :cond_24

    const/16 v3, 0x2c

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 312
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

    .line 314
    :cond_4e
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static label(Landroid/content/Context;)Ljava/lang/String;
    .registers 4

    .prologue
    .line 180
    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModContent;->ensure(Landroid/content/Context;)V

    .line 181
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

    .line 182
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
    .line 165
    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModContent;->ensure(Landroid/content/Context;)V

    .line 166
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 167
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

    .line 168
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

    .line 170
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

    .line 104
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_5
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_108

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 105
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

    .line 106
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

    .line 107
    :cond_55
    new-instance v5, Ljava/util/zip/ZipFile;

    invoke-direct {v5, v1}, Ljava/util/zip/ZipFile;-><init>(Ljava/io/File;)V

    .line 108
    invoke-static {v5}, Lfr/testudo/spacecorsair/mod/ModContent;->packInfo(Ljava/util/zip/ZipFile;)[Ljava/lang/String;

    move-result-object v6

    .line 109
    array-length v7, v6

    move v2, v3

    :goto_60
    if-ge v2, v7, :cond_c3

    aget-object v1, v6, v2

    .line 110
    const-string v8, "remove="

    invoke-virtual {v1, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_70

    .line 109
    :cond_6c
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_60

    .line 111
    :cond_70
    const/4 v8, 0x7

    invoke-virtual {v1, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    .line 112
    invoke-static {v8}, Lfr/testudo/spacecorsair/mod/ModContent;->allowedFolder(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6c

    .line 113
    sget-object v1, Lfr/testudo/spacecorsair/mod/ModContent;->removed:Ljava/util/Set;

    invoke-interface {v1, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 114
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 115
    sget-object v1, Lfr/testudo/spacecorsair/mod/ModContent;->index:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_93
    :goto_93
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_ad

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModContent;->base(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_93

    invoke-interface {v9, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_93

    .line 116
    :cond_ad
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_b1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6c

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    sget-object v9, Lfr/testudo/spacecorsair/mod/ModContent;->index:Ljava/util/Map;

    invoke-interface {v9, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_b1

    .line 118
    :cond_c3
    invoke-virtual {v5}, Ljava/util/zip/ZipFile;->entries()Ljava/util/Enumeration;

    move-result-object v2

    .line 119
    :cond_c7
    :goto_c7
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_fa

    .line 120
    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/zip/ZipEntry;

    .line 121
    invoke-virtual {v1}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v6

    .line 122
    invoke-virtual {v1}, Ljava/util/zip/ZipEntry;->isDirectory()Z

    move-result v1

    if-nez v1, :cond_c7

    invoke-static {v6}, Lfr/testudo/spacecorsair/mod/ModContent;->safeName(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_c7

    const-string v1, "pack.txt"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c7

    .line 123
    sget-object v1, Lfr/testudo/spacecorsair/mod/ModContent;->index:Ljava/util/Map;

    invoke-interface {v1, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    sget-object v1, Lfr/testudo/spacecorsair/mod/ModContent;->removed:Ljava/util/Set;

    invoke-static {v6}, Lfr/testudo/spacecorsair/mod/ModContent;->base(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v1, v6}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_c7

    .line 126
    :cond_fa
    sget-object v1, Lfr/testudo/spacecorsair/mod/ModContent;->zips:Ljava/util/List;

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 127
    sget-object v1, Lfr/testudo/spacecorsair/mod/ModContent;->chainIds:Ljava/util/List;

    aget-object v0, v0, v3

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_5

    .line 129
    :cond_108
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
    .line 149
    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModContent;->ensure(Landroid/content/Context;)V

    .line 150
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 151
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

    .line 152
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

    .line 134
    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModContent;->ensure(Landroid/content/Context;)V

    .line 135
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModContent;->index:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/zip/ZipFile;

    .line 136
    if-nez v0, :cond_f

    .line 138
    :goto_e
    return-object v1

    .line 137
    :cond_f
    invoke-virtual {v0, p1}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v2

    .line 138
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
    .line 188
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
    .line 302
    const-string v0, "pack.txt"

    invoke-virtual {p0, v0}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v0

    .line 303
    if-eqz v0, :cond_13

    invoke-virtual {v0}, Ljava/util/zip/ZipEntry;->getSize()J

    move-result-wide v2

    const-wide/32 v4, 0x10000

    cmp-long v1, v2, v4

    if-lez v1, :cond_17

    :cond_13
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    .line 305
    :goto_16
    return-object v0

    .line 304
    :cond_17
    invoke-virtual {p0, v0}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v1

    .line 305
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
    .line 354
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

    .line 318
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 319
    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModContent;->readLines(Ljava/io/File;)[Ljava/lang/String;

    move-result-object v3

    array-length v4, v3

    move v0, v1

    :goto_e
    if-ge v0, v4, :cond_37

    aget-object v5, v3, v0

    .line 320
    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 321
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

    .line 319
    :cond_34
    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    .line 323
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
    .line 333
    invoke-virtual {p0}, Ljava/io/File;->isFile()Z

    move-result v0

    if-nez v0, :cond_a

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    .line 335
    :goto_9
    return-object v0

    .line 334
    :cond_a
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 335
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
    .line 339
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/InputStreamReader;

    const-string v2, "UTF-8"

    invoke-direct {v1, p0, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 340
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 341
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

    .line 342
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
    .line 143
    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModContent;->ensure(Landroid/content/Context;)V

    .line 144
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
    .line 157
    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModContent;->ensure(Landroid/content/Context;)V

    .line 158
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 159
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

    .line 160
    :cond_2c
    return-object v1
.end method

.method private static safeDir(Ljava/lang/String;)Z
    .registers 6

    .prologue
    const/4 v0, 0x0

    .line 284
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

    .line 286
    :cond_19
    :goto_19
    return v0

    .line 285
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

    .line 286
    :cond_32
    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModContent;->allowedFolder(Ljava/lang/String;)Z

    move-result v0

    goto :goto_19
.end method

.method static safeMode(Landroid/content/Context;)Z
    .registers 4

    .prologue
    .line 220
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

    .line 275
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

    .line 280
    :cond_2d
    :goto_2d
    return v0

    .line 276
    :cond_2e
    const-string v2, "pack.txt"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2d

    .line 277
    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModContent;->allowedFolder(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3e

    move v0, v1

    goto :goto_2d

    .line 278
    :cond_3e
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p0, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    .line 279
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

    .line 280
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

    .line 197
    const-class v2, Lfr/testudo/spacecorsair/mod/ModContent;

    monitor-enter v2

    :try_start_4
    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModContent;->dir(Landroid/content/Context;)Ljava/io/File;

    move-result-object v3

    .line 198
    new-instance v0, Ljava/io/File;

    const-string v4, "active.txt"

    invoke-direct {v0, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModContent;->readChain(Ljava/io/File;)Ljava/util/List;

    move-result-object v0

    .line 199
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

    .line 200
    :cond_2b
    new-instance v0, Ljava/io/File;

    const-string v4, "active.txt"

    invoke-direct {v0, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v0, p1}, Lfr/testudo/spacecorsair/mod/ModContent;->writeChain(Ljava/io/File;Ljava/util/List;)V

    .line 201
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    .line 202
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

    .line 197
    :catchall_64
    move-exception v0

    monitor-exit v2

    throw v0

    .line 203
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

    .line 204
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

    .line 205
    :cond_c5
    new-instance v0, Ljava/io/File;

    const-string v5, "packs"

    invoke-direct {v0, v3, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    .line 206
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

    .line 207
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
    .line 223
    new-instance v0, Ljava/io/File;

    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModContent;->dir(Landroid/content/Context;)Ljava/io/File;

    move-result-object v1

    const-string v2, "safe"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 224
    if-eqz p1, :cond_13

    const-string v1, "1"

    invoke-static {v0, v1}, Lfr/testudo/spacecorsair/mod/ModContent;->writeText(Ljava/io/File;Ljava/lang/String;)V

    .line 225
    :goto_12
    return-void

    .line 224
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
    .line 358
    const-string v0, "SHA-256"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 359
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 360
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

    .line 361
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
    .line 379
    const-class v1, Lfr/testudo/spacecorsair/mod/ModContent;

    monitor-enter v1

    :try_start_3
    new-instance v0, Ljava/io/File;

    sget-object v2, Lfr/testudo/spacecorsair/mod/ModContent;->dir:Ljava/io/File;

    const-string v3, "active.txt"

    invoke-direct {v0, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModContent;->readChain(Ljava/io/File;)Ljava/util/List;

    move-result-object v0

    .line 380
    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModContent;->load(Ljava/util/List;)V

    .line 381
    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModContent;->keyOf(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModContent;->chainKey:Ljava/lang/String;
    :try_end_19
    .catchall {:try_start_3 .. :try_end_19} :catchall_1b

    .line 382
    monitor-exit v1

    return-void

    .line 379
    :catchall_1b
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static declared-synchronized testReset(Ljava/io/File;)V
    .registers 4

    .prologue
    .line 372
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

    .line 373
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

    .line 374
    sput-object p0, Lfr/testudo/spacecorsair/mod/ModContent;->dir:Ljava/io/File;

    if-eqz p0, :cond_3f

    const/4 v0, 0x1

    :goto_3b
    sput-boolean v0, Lfr/testudo/spacecorsair/mod/ModContent;->ready:Z
    :try_end_3d
    .catchall {:try_start_1b .. :try_end_3d} :catchall_41

    .line 375
    monitor-exit v1

    return-void

    .line 374
    :cond_3f
    const/4 v0, 0x0

    goto :goto_3b

    .line 372
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
    .line 211
    const-class v1, Lfr/testudo/spacecorsair/mod/ModContent;

    monitor-enter v1

    :try_start_3
    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModContent;->dir(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    .line 212
    new-instance v2, Ljava/io/File;

    const-string v3, "previous.txt"

    invoke-direct {v2, v0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModContent;->readChain(Ljava/io/File;)Ljava/util/List;

    move-result-object v2

    .line 213
    new-instance v3, Ljava/io/File;

    const-string v4, "active.txt"

    invoke-direct {v3, v0, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v3}, Lfr/testudo/spacecorsair/mod/ModContent;->readChain(Ljava/io/File;)Ljava/util/List;

    move-result-object v3

    .line 214
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

    .line 217
    :goto_2c
    monitor-exit v1

    return v0

    .line 215
    :cond_2e
    :try_start_2e
    new-instance v4, Ljava/io/File;

    const-string v5, "active.txt"

    invoke-direct {v4, v0, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v4, v2}, Lfr/testudo/spacecorsair/mod/ModContent;->writeChain(Ljava/io/File;Ljava/util/List;)V

    .line 216
    new-instance v2, Ljava/io/File;

    const-string v4, "previous.txt"

    invoke-direct {v2, v0, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v2, v3}, Lfr/testudo/spacecorsair/mod/ModContent;->writeChain(Ljava/io/File;Ljava/util/List;)V
    :try_end_42
    .catchall {:try_start_2e .. :try_end_42} :catchall_44

    .line 217
    const/4 v0, 0x1

    goto :goto_2c

    .line 211
    :catchall_44
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static validate(Ljava/io/File;Ljava/lang/String;II)Ljava/lang/String;
    .registers 16

    .prologue
    .line 232
    const/4 v2, 0x0

    .line 234
    :try_start_1
    new-instance v1, Ljava/util/zip/ZipFile;

    invoke-direct {v1, p0}, Ljava/util/zip/ZipFile;-><init>(Ljava/io/File;)V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_6} :catch_1f6
    .catchall {:try_start_1 .. :try_end_6} :catchall_1e7

    .line 235
    const-wide/16 v4, 0x0

    .line 236
    const/4 v0, 0x0

    .line 237
    :try_start_9
    invoke-virtual {v1}, Ljava/util/zip/ZipFile;->entries()Ljava/util/Enumeration;

    move-result-object v3

    move v2, v0

    .line 238
    :cond_e
    :goto_e
    invoke-interface {v3}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_a6

    .line 239
    invoke-interface {v3}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/zip/ZipEntry;

    .line 240
    invoke-virtual {v0}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v6

    .line 241
    const-string v7, "pack.txt"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_29

    const/4 v0, 0x1

    move v2, v0

    goto :goto_e

    .line 242
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

    .line 270
    if-eqz v1, :cond_4d

    :try_start_4a
    invoke-virtual {v1}, Ljava/util/zip/ZipFile;->close()V
    :try_end_4d
    .catch Ljava/lang/Throwable; {:try_start_4a .. :try_end_4d} :catch_1ef

    .line 268
    :cond_4d
    :goto_4d
    return-object v0

    .line 243
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

    .line 270
    if-eqz v1, :cond_4d

    :try_start_69
    invoke-virtual {v1}, Ljava/util/zip/ZipFile;->close()V
    :try_end_6c
    .catch Ljava/lang/Throwable; {:try_start_69 .. :try_end_6c} :catch_6d

    goto :goto_4d

    :catch_6d
    move-exception v1

    goto :goto_4d

    .line 244
    :cond_6f
    :try_start_6f
    invoke-virtual {v0}, Ljava/util/zip/ZipEntry;->getSize()J

    move-result-wide v8

    .line 245
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

    .line 270
    if-eqz v1, :cond_4d

    :try_start_8e
    invoke-virtual {v1}, Ljava/util/zip/ZipFile;->close()V
    :try_end_91
    .catch Ljava/lang/Throwable; {:try_start_8e .. :try_end_91} :catch_92

    goto :goto_4d

    :catch_92
    move-exception v1

    goto :goto_4d

    .line 246
    :cond_94
    add-long/2addr v4, v8

    .line 247
    const-wide/32 v6, 0x12c00000

    cmp-long v0, v4, v6

    if-lez v0, :cond_e

    :try_start_9c
    const-string v0, "pack too large"
    :try_end_9e
    .catch Ljava/lang/Throwable; {:try_start_9c .. :try_end_9e} :catch_1ba
    .catchall {:try_start_9c .. :try_end_9e} :catchall_1f4

    .line 270
    if-eqz v1, :cond_4d

    :try_start_a0
    invoke-virtual {v1}, Ljava/util/zip/ZipFile;->close()V
    :try_end_a3
    .catch Ljava/lang/Throwable; {:try_start_a0 .. :try_end_a3} :catch_a4

    goto :goto_4d

    :catch_a4
    move-exception v1

    goto :goto_4d

    .line 249
    :cond_a6
    if-nez v2, :cond_b2

    :try_start_a8
    const-string v0, "no pack.txt"
    :try_end_aa
    .catch Ljava/lang/Throwable; {:try_start_a8 .. :try_end_aa} :catch_1ba
    .catchall {:try_start_a8 .. :try_end_aa} :catchall_1f4

    .line 270
    if-eqz v1, :cond_4d

    :try_start_ac
    invoke-virtual {v1}, Ljava/util/zip/ZipFile;->close()V
    :try_end_af
    .catch Ljava/lang/Throwable; {:try_start_ac .. :try_end_af} :catch_b0

    goto :goto_4d

    :catch_b0
    move-exception v1

    goto :goto_4d

    .line 250
    :cond_b2
    :try_start_b2
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 251
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

    .line 252
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

    .line 270
    if-eqz v1, :cond_4d

    :try_start_f6
    invoke-virtual {v1}, Ljava/util/zip/ZipFile;->close()V
    :try_end_f9
    .catch Ljava/lang/Throwable; {:try_start_f6 .. :try_end_f9} :catch_fb

    goto/16 :goto_4d

    :catch_fb
    move-exception v1

    goto/16 :goto_4d

    .line 253
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

    .line 270
    if-eqz v1, :cond_4d

    :try_start_111
    invoke-virtual {v1}, Ljava/util/zip/ZipFile;->close()V
    :try_end_114
    .catch Ljava/lang/Throwable; {:try_start_111 .. :try_end_114} :catch_116

    goto/16 :goto_4d

    :catch_116
    move-exception v1

    goto/16 :goto_4d

    .line 254
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

    .line 270
    if-eqz v1, :cond_4d

    :try_start_12c
    invoke-virtual {v1}, Ljava/util/zip/ZipFile;->close()V
    :try_end_12f
    .catch Ljava/lang/Throwable; {:try_start_12c .. :try_end_12f} :catch_131

    goto/16 :goto_4d

    :catch_131
    move-exception v1

    goto/16 :goto_4d

    .line 256
    :cond_134
    :try_start_134
    invoke-virtual {v1}, Ljava/util/zip/ZipFile;->entries()Ljava/util/Enumeration;

    move-result-object v4

    .line 257
    const v0, 0x8000

    new-array v5, v0, [B

    .line 258
    :cond_13d
    invoke-interface {v4}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_1dc

    .line 259
    invoke-interface {v4}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/zip/ZipEntry;

    .line 260
    invoke-virtual {v0}, Ljava/util/zip/ZipEntry;->isDirectory()Z

    move-result v2

    if-nez v2, :cond_13d

    .line 261
    invoke-virtual {v1, v0}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;
    :try_end_152
    .catch Ljava/lang/Throwable; {:try_start_134 .. :try_end_152} :catch_1ba
    .catchall {:try_start_134 .. :try_end_152} :catchall_1f4

    move-result-object v6

    .line 262
    const-wide/16 v2, 0x0

    .line 263
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

    .line 270
    if-eqz v1, :cond_4d

    :try_start_181
    invoke-virtual {v1}, Ljava/util/zip/ZipFile;->close()V
    :try_end_184
    .catch Ljava/lang/Throwable; {:try_start_181 .. :try_end_184} :catch_186

    goto/16 :goto_4d

    :catch_186
    move-exception v1

    goto/16 :goto_4d

    .line 263
    :cond_189
    :try_start_189
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V

    .line 264
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

    .line 270
    if-eqz v1, :cond_4d

    :try_start_1ad
    invoke-virtual {v1}, Ljava/util/zip/ZipFile;->close()V
    :try_end_1b0
    .catch Ljava/lang/Throwable; {:try_start_1ad .. :try_end_1b0} :catch_1b2

    goto/16 :goto_4d

    :catch_1b2
    move-exception v1

    goto/16 :goto_4d

    .line 263
    :catchall_1b5
    move-exception v0

    :try_start_1b6
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V

    throw v0
    :try_end_1ba
    .catch Ljava/lang/Throwable; {:try_start_1b6 .. :try_end_1ba} :catch_1ba
    .catchall {:try_start_1b6 .. :try_end_1ba} :catchall_1f4

    .line 267
    :catch_1ba
    move-exception v0

    .line 268
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

    .line 270
    if-eqz v1, :cond_4d

    :try_start_1d4
    invoke-virtual {v1}, Ljava/util/zip/ZipFile;->close()V
    :try_end_1d7
    .catch Ljava/lang/Throwable; {:try_start_1d4 .. :try_end_1d7} :catch_1d9

    goto/16 :goto_4d

    :catch_1d9
    move-exception v1

    goto/16 :goto_4d

    .line 266
    :cond_1dc
    const/4 v0, 0x0

    .line 270
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

    .line 271
    :cond_1ee
    :goto_1ee
    throw v0

    .line 270
    :catch_1ef
    move-exception v1

    goto/16 :goto_4d

    :catch_1f2
    move-exception v1

    goto :goto_1ee

    :catchall_1f4
    move-exception v0

    goto :goto_1e9

    .line 267
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
    .line 327
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 328
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

    .line 329
    :cond_2f
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lfr/testudo/spacecorsair/mod/ModContent;->writeText(Ljava/io/File;Ljava/lang/String;)V

    .line 330
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
    .line 347
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

    .line 348
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 349
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

    .line 350
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

    .line 349
    :catchall_5c
    move-exception v0

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    throw v0

    .line 351
    :cond_61
    return-void
.end method
