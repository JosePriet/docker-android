.class Lfr/testudo/spacecorsair/mod/ModContent$1;
.super Ljava/lang/Object;
.source "ModContent.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfr/testudo/spacecorsair/mod/ModContent;->ensure(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 106
    const-wide/32 v0, 0xafc8

    :try_start_3
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    const-class v1, Lfr/testudo/spacecorsair/mod/ModContent;

    monitor-enter v1
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_9} :catch_1a

    const/4 v0, 0x1

    :try_start_a
    # setter for: Lfr/testudo/spacecorsair/mod/ModContent;->guardOk:Z
    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModContent;->access$002(Z)Z

    const/4 v0, 0x0

    # setter for: Lfr/testudo/spacecorsair/mod/ModContent;->guardCrashes:I
    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModContent;->access$102(I)I

    monitor-exit v1
    :try_end_12
    .catchall {:try_start_a .. :try_end_12} :catchall_17

    const/4 v0, 0x0

    :try_start_13
    # invokes: Lfr/testudo/spacecorsair/mod/ModContent;->guard(Ljava/lang/String;)V
    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModContent;->access$200(Ljava/lang/String;)V
    :try_end_16
    .catch Ljava/lang/Throwable; {:try_start_13 .. :try_end_16} :catch_1a

    .line 107
    :goto_16
    return-void

    .line 106
    :catchall_17
    move-exception v0

    :try_start_18
    monitor-exit v1
    :try_end_19
    .catchall {:try_start_18 .. :try_end_19} :catchall_17

    :try_start_19
    throw v0
    :try_end_1a
    .catch Ljava/lang/Throwable; {:try_start_19 .. :try_end_1a} :catch_1a

    :catch_1a
    move-exception v0

    goto :goto_16
.end method
