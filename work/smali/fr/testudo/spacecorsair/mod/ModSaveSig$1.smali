.class Lfr/testudo/spacecorsair/mod/ModSaveSig$1;
.super Landroid/os/FileObserver;
.source "ModSaveSig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfr/testudo/spacecorsair/mod/ModSaveSig;->start(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .registers 3

    .prologue
    .line 61
    invoke-direct {p0, p1, p2}, Landroid/os/FileObserver;-><init>(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public onEvent(ILjava/lang/String;)V
    .registers 7

    .prologue
    .line 64
    :try_start_0
    # getter for: Lfr/testudo/spacecorsair/mod/ModSaveSig;->signLock:Ljava/lang/Object;
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModSaveSig;->access$000()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_5} :catch_28

    :try_start_5
    # invokes: Lfr/testudo/spacecorsair/mod/ModSaveSig;->signAll()Ljava/lang/String;
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModSaveSig;->access$100()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_20

    # invokes: Lfr/testudo/spacecorsair/mod/ModSaveSig;->prefs()Landroid/content/SharedPreferences;
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModSaveSig;->access$200()Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "sig"

    invoke-interface {v2, v3, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_20
    monitor-exit v1
    :try_end_21
    .catchall {:try_start_5 .. :try_end_21} :catchall_25

    .line 65
    :goto_21
    # invokes: Lfr/testudo/spacecorsair/mod/ModSaveSig;->resignSoon()V
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModSaveSig;->access$300()V

    .line 66
    return-void

    .line 64
    :catchall_25
    move-exception v0

    :try_start_26
    monitor-exit v1
    :try_end_27
    .catchall {:try_start_26 .. :try_end_27} :catchall_25

    :try_start_27
    throw v0
    :try_end_28
    .catch Ljava/lang/Throwable; {:try_start_27 .. :try_end_28} :catch_28

    :catch_28
    move-exception v0

    goto :goto_21
.end method
