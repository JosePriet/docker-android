.class Lfr/testudo/spacecorsair/mod/ModUpdate$10;
.super Ljava/lang/Object;
.source "ModUpdate.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfr/testudo/spacecorsair/mod/ModUpdate;->work(Landroid/app/Activity;Lfr/testudo/spacecorsair/mod/ModUpdate$Job;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$j:Lfr/testudo/spacecorsair/mod/ModUpdate$Job;


# direct methods
.method constructor <init>(Lfr/testudo/spacecorsair/mod/ModUpdate$Job;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 541
    iput-object p1, p0, Lfr/testudo/spacecorsair/mod/ModUpdate$10;->val$j:Lfr/testudo/spacecorsair/mod/ModUpdate$Job;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 543
    :try_start_0
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModUpdate$10;->val$j:Lfr/testudo/spacecorsair/mod/ModUpdate$Job;

    invoke-interface {v0}, Lfr/testudo/spacecorsair/mod/ModUpdate$Job;->run()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_5} :catch_12

    .line 544
    :goto_5
    const/4 v0, 0x0

    # setter for: Lfr/testudo/spacecorsair/mod/ModUpdate;->busy:Z
    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModUpdate;->access$702(Z)Z

    .line 545
    new-instance v0, Lfr/testudo/spacecorsair/mod/ModUpdate$10$1;

    invoke-direct {v0, p0}, Lfr/testudo/spacecorsair/mod/ModUpdate$10$1;-><init>(Lfr/testudo/spacecorsair/mod/ModUpdate$10;)V

    # invokes: Lfr/testudo/spacecorsair/mod/ModUpdate;->post(Ljava/lang/Runnable;)V
    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModUpdate;->access$200(Ljava/lang/Runnable;)V

    .line 546
    return-void

    .line 543
    :catch_12
    move-exception v0

    move-object v1, v0

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3a

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    :goto_1e
    # setter for: Lfr/testudo/spacecorsair/mod/ModUpdate;->status:Ljava/lang/String;
    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModUpdate;->access$602(Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "update"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "job failed "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lfr/testudo/spacecorsair/mod/ModDev;->ev(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    :cond_3a
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1e
.end method
