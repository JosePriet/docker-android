.class Lfr/testudo/spacecorsair/mod/ModLobby$1;
.super Ljava/lang/Object;
.source "ModLobby.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfr/testudo/spacecorsair/mod/ModLobby;->registerDev(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$key:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 203
    iput-object p1, p0, Lfr/testudo/spacecorsair/mod/ModLobby$1;->val$key:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .prologue
    .line 205
    const-string v0, "POST"

    const-string v1, "/dev"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "id"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModSaveSig;->installId()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "key"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    iget-object v4, p0, Lfr/testudo/spacecorsair/mod/ModLobby$1;->val$key:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lfr/testudo/spacecorsair/mod/ModLobby;->call(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lfr/testudo/spacecorsair/mod/ModLobby$Reply;

    move-result-object v1

    .line 206
    invoke-virtual {v1}, Lfr/testudo/spacecorsair/mod/ModLobby$Reply;->ok()Z

    move-result v0

    if-eqz v0, :cond_2a

    # invokes: Lfr/testudo/spacecorsair/mod/ModLobby;->setSelfDev(Lfr/testudo/spacecorsair/mod/ModLobby$Reply;)V
    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModLobby;->access$000(Lfr/testudo/spacecorsair/mod/ModLobby$Reply;)V

    .line 207
    :cond_2a
    invoke-virtual {v1}, Lfr/testudo/spacecorsair/mod/ModLobby$Reply;->ok()Z

    move-result v0

    if-eqz v0, :cond_5a

    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLobby;->selfDev()Z

    move-result v0

    if-eqz v0, :cond_5a

    const-string v0, "This install is registered as DEV. Other players see a DEV tag next to your name."

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_3c
    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModQol;->post(Ljava/lang/String;)V

    .line 209
    const-string v0, "lobby"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "dev register "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v1, v1, Lfr/testudo/spacecorsair/mod/ModLobby$Reply;->first:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lfr/testudo/spacecorsair/mod/ModDev;->ev(Ljava/lang/String;Ljava/lang/String;)V

    .line 210
    return-void

    .line 208
    :cond_5a
    const-string v0, "DEV registration was refused."

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_3c
.end method
