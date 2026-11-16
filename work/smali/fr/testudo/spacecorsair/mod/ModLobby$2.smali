.class Lfr/testudo/spacecorsair/mod/ModLobby$2;
.super Ljava/lang/Object;
.source "ModLobby.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfr/testudo/spacecorsair/mod/ModLobby;->hostLoop(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$connecting:[Z

.field final synthetic val$fg:J

.field final synthetic val$fh:Z

.field final synthetic val$fw:Lfr/testudo/spacecorsair/mod/ModNet$Wire;

.field final synthetic val$row:[Ljava/lang/String;


# direct methods
.method constructor <init>(JLfr/testudo/spacecorsair/mod/ModNet$Wire;[Ljava/lang/String;Z[Z)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 338
    iput-wide p1, p0, Lfr/testudo/spacecorsair/mod/ModLobby$2;->val$fg:J

    iput-object p3, p0, Lfr/testudo/spacecorsair/mod/ModLobby$2;->val$fw:Lfr/testudo/spacecorsair/mod/ModNet$Wire;

    iput-object p4, p0, Lfr/testudo/spacecorsair/mod/ModLobby$2;->val$row:[Ljava/lang/String;

    iput-boolean p5, p0, Lfr/testudo/spacecorsair/mod/ModLobby$2;->val$fh:Z

    iput-object p6, p0, Lfr/testudo/spacecorsair/mod/ModLobby$2;->val$connecting:[Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .prologue
    const/4 v5, 0x0

    .line 340
    :try_start_1
    iget-wide v0, p0, Lfr/testudo/spacecorsair/mod/ModLobby$2;->val$fg:J

    iget-object v2, p0, Lfr/testudo/spacecorsair/mod/ModLobby$2;->val$fw:Lfr/testudo/spacecorsair/mod/ModNet$Wire;

    iget-object v3, p0, Lfr/testudo/spacecorsair/mod/ModLobby$2;->val$row:[Ljava/lang/String;

    iget-boolean v4, p0, Lfr/testudo/spacecorsair/mod/ModLobby$2;->val$fh:Z

    # invokes: Lfr/testudo/spacecorsair/mod/ModLobby;->accept(JLfr/testudo/spacecorsair/mod/ModNet$Wire;[Ljava/lang/String;Z)V
    invoke-static {v0, v1, v2, v3, v4}, Lfr/testudo/spacecorsair/mod/ModLobby;->access$100(JLfr/testudo/spacecorsair/mod/ModNet$Wire;[Ljava/lang/String;Z)V
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_11

    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModLobby$2;->val$connecting:[Z

    aput-boolean v5, v0, v5

    .line 341
    return-void

    .line 340
    :catchall_11
    move-exception v0

    iget-object v1, p0, Lfr/testudo/spacecorsair/mod/ModLobby$2;->val$connecting:[Z

    aput-boolean v5, v1, v5

    throw v0
.end method
