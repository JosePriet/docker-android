.class public Lfr/testudo/spacecorsair/utils/UpgradeManager;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final UPDATES:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Lfr/testudo/spacecorsair/utils/UpdateExecutor;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 67
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    sput-object v0, Lfr/testudo/spacecorsair/utils/UpgradeManager;->UPDATES:Ljava/util/LinkedHashMap;

    .line 72
    sget-object v0, Lfr/testudo/spacecorsair/utils/UpgradeManager;->UPDATES:Ljava/util/LinkedHashMap;

    const-string v1, "1.1.0"

    new-instance v2, Lfr/testudo/spacecorsair/utils/UpgradeManager$1;

    invoke-direct {v2}, Lfr/testudo/spacecorsair/utils/UpgradeManager$1;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    sget-object v0, Lfr/testudo/spacecorsair/utils/UpgradeManager;->UPDATES:Ljava/util/LinkedHashMap;

    const-string v1, "1.5.1"

    new-instance v2, Lfr/testudo/spacecorsair/utils/UpgradeManager$2;

    invoke-direct {v2}, Lfr/testudo/spacecorsair/utils/UpgradeManager$2;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static ensureVersionUpToDate(Landroid/content/Context;)V
    .registers 4

    .prologue
    .line 27
    invoke-static {p0}, Lfr/testudo/spacecorsair/utils/UserEngagement;->isNewVersionAndNotFirstStart(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_24

    .line 28
    invoke-static {p0}, Lfr/testudo/spacecorsair/utils/UpgradeManager;->getPreviousVersionName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 29
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "First launch of a new version, previous version was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lfr/testudo/spacecorsair/utils/Logs;->i(Ljava/lang/String;)V

    .line 30
    invoke-static {v0}, Lfr/testudo/spacecorsair/utils/UpgradeManager;->onNewAppVersionInstalled(Ljava/lang/String;)V

    .line 36
    :goto_23
    return-void

    .line 32
    :cond_24
    const-string v0, "Game is up to date"

    invoke-static {v0}, Lfr/testudo/spacecorsair/utils/Logs;->i(Ljava/lang/String;)V

    goto :goto_23
.end method

.method public static getPreviousVersionName(Landroid/content/Context;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 93
    const-string v0, "current_version"

    invoke-static {p0, v0}, Lfr/testudo/spacecorsair/storage/SharedPrefs;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 94
    if-nez v0, :cond_a

    .line 95
    const-string v0, "1.0.0"

    .line 97
    :cond_a
    return-object v0
.end method

.method public static onNewAppVersionInstalled(Ljava/lang/String;)V
    .registers 6

    .prologue
    .line 41
    if-eqz p0, :cond_a

    const-string v0, ""

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 64
    :cond_a
    :goto_a
    return-void

    .line 47
    :cond_b
    sget-object v0, Lfr/testudo/spacecorsair/utils/UpgradeManager;->UPDATES:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_15
    :goto_15
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_71

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 49
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_15

    .line 52
    :try_start_2d
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Applying update for version "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lfr/testudo/spacecorsair/utils/Logs;->i(Ljava/lang/String;)V

    .line 53
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lfr/testudo/spacecorsair/utils/UpdateExecutor;

    invoke-interface {v1}, Lfr/testudo/spacecorsair/utils/UpdateExecutor;->processUpdate()V
    :try_end_52
    .catch Ljava/lang/Exception; {:try_start_2d .. :try_end_52} :catch_53

    goto :goto_15

    .line 54
    :catch_53
    move-exception v1

    .line 55
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error while applying update "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, Lfr/testudo/spacecorsair/utils/Logs;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_15

    .line 62
    :cond_71
    const-string v0, "End of system updates"

    invoke-static {v0}, Lfr/testudo/spacecorsair/utils/Logs;->d(Ljava/lang/String;)V

    goto :goto_a
.end method
