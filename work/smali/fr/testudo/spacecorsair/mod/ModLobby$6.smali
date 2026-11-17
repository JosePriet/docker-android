.class Lfr/testudo/spacecorsair/mod/ModLobby$6;
.super Ljava/lang/Object;
.source "ModLobby.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfr/testudo/spacecorsair/mod/ModLobby;->rejoin()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$jc:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 634
    iput-object p1, p0, Lfr/testudo/spacecorsair/mod/ModLobby$6;->val$jc:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 636
    const-wide/16 v0, 0xbb8

    :try_start_2
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_5} :catch_1f

    .line 637
    sget v0, Lfr/testudo/spacecorsair/mod/ModLan;->role:I

    if-nez v0, :cond_d

    sget-boolean v0, Lfr/testudo/spacecorsair/mod/ModLobby;->busy:Z

    if-eqz v0, :cond_e

    .line 639
    :cond_d
    :goto_d
    return-void

    .line 638
    :cond_e
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModLobby$6;->val$jc:Ljava/lang/String;

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLobby;->join(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_d

    const-string v0, "Co-op link lost"

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->status:Ljava/lang/String;

    goto :goto_d

    .line 636
    :catch_1f
    move-exception v0

    goto :goto_d
.end method
