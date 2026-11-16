.class Lfr/testudo/spacecorsair/mod/ModLobby$3;
.super Ljava/lang/Object;
.source "ModLobby.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfr/testudo/spacecorsair/mod/ModLobby;->repeatJoin(JLjava/lang/String;[Ljava/lang/String;Lfr/testudo/spacecorsair/mod/ModNet$Link;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$again:[Ljava/lang/String;

.field final synthetic val$fl:Lfr/testudo/spacecorsair/mod/ModNet$Link;

.field final synthetic val$g:J

.field final synthetic val$jc:Ljava/lang/String;


# direct methods
.method constructor <init>(JLfr/testudo/spacecorsair/mod/ModNet$Link;Ljava/lang/String;[Ljava/lang/String;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 491
    iput-wide p1, p0, Lfr/testudo/spacecorsair/mod/ModLobby$3;->val$g:J

    iput-object p3, p0, Lfr/testudo/spacecorsair/mod/ModLobby$3;->val$fl:Lfr/testudo/spacecorsair/mod/ModNet$Link;

    iput-object p4, p0, Lfr/testudo/spacecorsair/mod/ModLobby$3;->val$jc:Ljava/lang/String;

    iput-object p5, p0, Lfr/testudo/spacecorsair/mod/ModLobby$3;->val$again:[Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .prologue
    .line 494
    const/4 v0, 0x0

    :goto_1
    const/4 v1, 0x4

    if-ge v0, v1, :cond_23

    .line 495
    const-wide/16 v2, 0x1f40

    :try_start_6
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V

    .line 496
    iget-wide v2, p0, Lfr/testudo/spacecorsair/mod/ModLobby$3;->val$g:J

    # getter for: Lfr/testudo/spacecorsair/mod/ModLobby;->gen:J
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLobby;->access$200()J

    move-result-wide v4

    cmp-long v1, v2, v4

    if-nez v1, :cond_23

    iget-object v1, p0, Lfr/testudo/spacecorsair/mod/ModLobby$3;->val$fl:Lfr/testudo/spacecorsair/mod/ModNet$Link;

    invoke-virtual {v1}, Lfr/testudo/spacecorsair/mod/ModNet$Link;->isConnected()Z

    move-result v1

    if-nez v1, :cond_23

    iget-object v1, p0, Lfr/testudo/spacecorsair/mod/ModLobby$3;->val$fl:Lfr/testudo/spacecorsair/mod/ModNet$Link;

    invoke-virtual {v1}, Lfr/testudo/spacecorsair/mod/ModNet$Link;->isClosed()Z

    move-result v1

    if-eqz v1, :cond_24

    .line 501
    :cond_23
    :goto_23
    return-void

    .line 497
    :cond_24
    const-string v1, "POST"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "/lobby/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lfr/testudo/spacecorsair/mod/ModLobby$3;->val$jc:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/join"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lfr/testudo/spacecorsair/mod/ModLobby$3;->val$again:[Ljava/lang/String;

    invoke-static {v1, v2, v3}, Lfr/testudo/spacecorsair/mod/ModLobby;->call(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lfr/testudo/spacecorsair/mod/ModLobby$Reply;

    move-result-object v1

    .line 498
    invoke-virtual {v1}, Lfr/testudo/spacecorsair/mod/ModLobby$Reply;->ok()Z

    move-result v2

    if-eqz v2, :cond_66

    iget-object v2, p0, Lfr/testudo/spacecorsair/mod/ModLobby$3;->val$fl:Lfr/testudo/spacecorsair/mod/ModNet$Link;

    const-string v3, "cands"

    invoke-virtual {v1, v3}, Lfr/testudo/spacecorsair/mod/ModLobby$Reply;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lfr/testudo/spacecorsair/mod/ModLobby;->addrs(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    const-string v4, "relay"

    invoke-virtual {v1, v4}, Lfr/testudo/spacecorsair/mod/ModLobby$Reply;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModNet;->parse(Ljava/lang/String;)Ljava/net/InetSocketAddress;

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Lfr/testudo/spacecorsair/mod/ModNet$Link;->addTargets(Ljava/util/List;Ljava/net/InetSocketAddress;)V
    :try_end_66
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_66} :catch_69

    .line 494
    :cond_66
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 500
    :catch_69
    move-exception v0

    goto :goto_23
.end method
