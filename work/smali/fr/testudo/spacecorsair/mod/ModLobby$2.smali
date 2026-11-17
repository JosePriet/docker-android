.class Lfr/testudo/spacecorsair/mod/ModLobby$2;
.super Ljava/lang/Object;
.source "ModLobby.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfr/testudo/spacecorsair/mod/ModLobby;->host(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$g:J


# direct methods
.method constructor <init>(J)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 379
    iput-wide p1, p0, Lfr/testudo/spacecorsair/mod/ModLobby$2;->val$g:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 379
    iget-wide v0, p0, Lfr/testudo/spacecorsair/mod/ModLobby$2;->val$g:J

    # invokes: Lfr/testudo/spacecorsair/mod/ModLobby;->hostLoop(J)V
    invoke-static {v0, v1}, Lfr/testudo/spacecorsair/mod/ModLobby;->access$200(J)V

    return-void
.end method
