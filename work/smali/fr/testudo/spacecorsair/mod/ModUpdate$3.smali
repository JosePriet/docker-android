.class Lfr/testudo/spacecorsair/mod/ModUpdate$3;
.super Ljava/lang/Object;
.source "ModUpdate.java"

# interfaces
.implements Lfr/testudo/spacecorsair/mod/ModUpdate$Progress;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfr/testudo/spacecorsair/mod/ModUpdate;->runContent(Landroid/content/Context;Lfr/testudo/spacecorsair/mod/ModUpdate$Manifest;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$p:Lfr/testudo/spacecorsair/mod/ModUpdate$Pack;


# direct methods
.method constructor <init>(Lfr/testudo/spacecorsair/mod/ModUpdate$Pack;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 409
    iput-object p1, p0, Lfr/testudo/spacecorsair/mod/ModUpdate$3;->val$p:Lfr/testudo/spacecorsair/mod/ModUpdate$Pack;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public at(JJ)V
    .registers 8

    .prologue
    .line 409
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Downloading content"

    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModUpdate;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lfr/testudo/spacecorsair/mod/ModUpdate$3;->val$p:Lfr/testudo/spacecorsair/mod/ModUpdate$Pack;

    iget-object v1, v1, Lfr/testudo/spacecorsair/mod/ModUpdate$Pack;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1, p2}, Lfr/testudo/spacecorsair/mod/ModUpdate;->mb(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " / "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p3, p4}, Lfr/testudo/spacecorsair/mod/ModUpdate;->mb(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    # invokes: Lfr/testudo/spacecorsair/mod/ModUpdate;->setStatus(Ljava/lang/String;)V
    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModUpdate;->access$400(Ljava/lang/String;)V

    return-void
.end method
