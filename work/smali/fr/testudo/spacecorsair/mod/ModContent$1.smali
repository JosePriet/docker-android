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


# instance fields
.field final synthetic val$k:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 86
    iput-object p1, p0, Lfr/testudo/spacecorsair/mod/ModContent$1;->val$k:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 88
    const-wide/32 v0, 0xafc8

    :try_start_3
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    new-instance v0, Ljava/io/File;

    # getter for: Lfr/testudo/spacecorsair/mod/ModContent;->dir:Ljava/io/File;
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModContent;->access$000()Ljava/io/File;

    move-result-object v1

    const-string v2, "boot.txt"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lfr/testudo/spacecorsair/mod/ModContent$1;->val$k:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n0\nok\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lfr/testudo/spacecorsair/mod/ModContent;->writeText(Ljava/io/File;Ljava/lang/String;)V
    :try_end_29
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_29} :catch_2a

    .line 89
    :goto_29
    return-void

    .line 88
    :catch_2a
    move-exception v0

    goto :goto_29
.end method
