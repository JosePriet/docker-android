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
.field final synthetic val$g:J

.field final synthetic val$jc:Ljava/lang/String;


# direct methods
.method constructor <init>(JLjava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 676
    iput-wide p1, p0, Lfr/testudo/spacecorsair/mod/ModLobby$6;->val$g:J

    iput-object p3, p0, Lfr/testudo/spacecorsair/mod/ModLobby$6;->val$jc:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 678
    const-wide/16 v0, 0xbb8

    :try_start_2
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_5} :catch_35

    .line 679
    iget-wide v0, p0, Lfr/testudo/spacecorsair/mod/ModLobby$6;->val$g:J

    # getter for: Lfr/testudo/spacecorsair/mod/ModLobby;->gen:J
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLobby;->access$400()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_1b

    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModLobby$6;->val$jc:Ljava/lang/String;

    # getter for: Lfr/testudo/spacecorsair/mod/ModLobby;->joinedCode:Ljava/lang/String;
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLobby;->access$600()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1c

    .line 682
    :cond_1b
    :goto_1b
    return-void

    .line 680
    :cond_1c
    sget v0, Lfr/testudo/spacecorsair/mod/ModLan;->role:I

    if-nez v0, :cond_1b

    sget-boolean v0, Lfr/testudo/spacecorsair/mod/ModLobby;->busy:Z

    if-nez v0, :cond_1b

    .line 681
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModLobby$6;->val$jc:Ljava/lang/String;

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLobby;->join(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1b

    const-string v0, "Co-op link lost"

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->status:Ljava/lang/String;

    goto :goto_1b

    .line 678
    :catch_35
    move-exception v0

    goto :goto_1b
.end method
