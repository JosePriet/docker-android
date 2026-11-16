.class Lfr/testudo/spacecorsair/mod/ModLan$9;
.super Ljava/lang/Object;
.source "ModLan.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfr/testudo/spacecorsair/mod/ModLan;->stop()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$bye:Z

.field final synthetic val$old:Ljava/net/Socket;


# direct methods
.method constructor <init>(ZLjava/net/Socket;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 542
    iput-boolean p1, p0, Lfr/testudo/spacecorsair/mod/ModLan$9;->val$bye:Z

    iput-object p2, p0, Lfr/testudo/spacecorsair/mod/ModLan$9;->val$old:Ljava/net/Socket;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 544
    :try_start_0
    iget-boolean v0, p0, Lfr/testudo/spacecorsair/mod/ModLan$9;->val$bye:Z

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModLan$9;->val$old:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    const/4 v1, 0x5

    new-array v1, v1, [B

    fill-array-data v1, :array_26

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModLan$9;->val$old:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V
    :try_end_1c
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_1c} :catch_24

    .line 545
    :cond_1c
    :goto_1c
    :try_start_1c
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModLan$9;->val$old:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->close()V
    :try_end_21
    .catch Ljava/lang/Throwable; {:try_start_1c .. :try_end_21} :catch_22

    .line 546
    :goto_21
    return-void

    .line 545
    :catch_22
    move-exception v0

    goto :goto_21

    .line 544
    :catch_24
    move-exception v0

    goto :goto_1c

    :array_26
    .array-data 1
        0x5t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data
.end method
