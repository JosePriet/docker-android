.class Lfr/testudo/spacecorsair/mod/ModSaveSig$2;
.super Ljava/lang/Object;
.source "ModSaveSig.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfr/testudo/spacecorsair/mod/ModSaveSig;->resignSoon()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 8

    .prologue
    .line 82
    const/4 v0, 0x2

    :try_start_1
    new-array v1, v0, [I

    fill-array-data v1, :array_3a

    array-length v2, v1

    const/4 v0, 0x0

    :goto_8
    if-ge v0, v2, :cond_38

    aget v3, v1, v0

    .line 83
    int-to-long v4, v3

    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V

    .line 84
    # getter for: Lfr/testudo/spacecorsair/mod/ModSaveSig;->signLock:Ljava/lang/Object;
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModSaveSig;->access$000()Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3
    :try_end_15
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_15} :catch_37

    .line 85
    :try_start_15
    # invokes: Lfr/testudo/spacecorsair/mod/ModSaveSig;->signAll()Ljava/lang/String;
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModSaveSig;->access$100()Ljava/lang/String;

    move-result-object v4

    .line 86
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_30

    # invokes: Lfr/testudo/spacecorsair/mod/ModSaveSig;->prefs()Landroid/content/SharedPreferences;
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModSaveSig;->access$200()Landroid/content/SharedPreferences;

    move-result-object v5

    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    const-string v6, "sig"

    invoke-interface {v5, v6, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 87
    :cond_30
    monitor-exit v3

    .line 82
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 87
    :catchall_34
    move-exception v0

    monitor-exit v3
    :try_end_36
    .catchall {:try_start_15 .. :try_end_36} :catchall_34

    :try_start_36
    throw v0
    :try_end_37
    .catch Ljava/lang/Throwable; {:try_start_36 .. :try_end_37} :catch_37

    .line 89
    :catch_37
    move-exception v0

    .line 92
    :cond_38
    return-void

    .line 82
    nop

    :array_3a
    .array-data 4
        0x12c
        0xa8c
    .end array-data
.end method
