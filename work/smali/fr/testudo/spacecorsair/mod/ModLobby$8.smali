.class Lfr/testudo/spacecorsair/mod/ModLobby$8;
.super Ljava/lang/Object;
.source "ModLobby.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfr/testudo/spacecorsair/mod/ModLobby;->report(Ljava/lang/String;Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$c:Ljava/lang/String;

.field final synthetic val$done:Ljava/lang/Runnable;

.field final synthetic val$text:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 727
    iput-object p1, p0, Lfr/testudo/spacecorsair/mod/ModLobby$8;->val$c:Ljava/lang/String;

    iput-object p2, p0, Lfr/testudo/spacecorsair/mod/ModLobby$8;->val$text:Ljava/lang/String;

    iput-object p3, p0, Lfr/testudo/spacecorsair/mod/ModLobby$8;->val$done:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .prologue
    .line 729
    const-string v1, "POST"

    const-string v2, "/report"

    const/16 v0, 0x8

    new-array v3, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v4, "code"

    aput-object v4, v3, v0

    const/4 v0, 0x1

    iget-object v4, p0, Lfr/testudo/spacecorsair/mod/ModLobby$8;->val$c:Ljava/lang/String;

    aput-object v4, v3, v0

    const/4 v0, 0x2

    const-string v4, "id"

    aput-object v4, v3, v0

    const/4 v0, 0x3

    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModSaveSig;->installId()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v0

    const/4 v0, 0x4

    const-string v4, "text"

    aput-object v4, v3, v0

    const/4 v0, 0x5

    iget-object v4, p0, Lfr/testudo/spacecorsair/mod/ModLobby$8;->val$text:Ljava/lang/String;

    aput-object v4, v3, v0

    const/4 v0, 0x6

    const-string v4, "about"

    aput-object v4, v3, v0

    const/4 v4, 0x7

    sget-boolean v0, Lfr/testudo/spacecorsair/mod/ModLobby;->hosting:Z

    if-eqz v0, :cond_5a

    # getter for: Lfr/testudo/spacecorsair/mod/ModLobby;->peerId:Ljava/lang/String;
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLobby;->access$600()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5a

    # getter for: Lfr/testudo/spacecorsair/mod/ModLobby;->peerId:Ljava/lang/String;
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLobby;->access$600()Ljava/lang/String;

    move-result-object v0

    :goto_3c
    aput-object v0, v3, v4

    invoke-static {v1, v2, v3}, Lfr/testudo/spacecorsair/mod/ModLobby;->call(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lfr/testudo/spacecorsair/mod/ModLobby$Reply;

    move-result-object v0

    .line 730
    invoke-virtual {v0}, Lfr/testudo/spacecorsair/mod/ModLobby$Reply;->ok()Z

    move-result v0

    if-eqz v0, :cond_5d

    const-string v0, "Report sent."

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_4e
    sput-object v0, Lfr/testudo/spacecorsair/mod/ModLobby;->status:Ljava/lang/String;

    .line 731
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModLobby$8;->val$done:Ljava/lang/Runnable;

    if-eqz v0, :cond_59

    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModLobby$8;->val$done:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 732
    :cond_59
    return-void

    .line 729
    :cond_5a
    const-string v0, ""

    goto :goto_3c

    .line 730
    :cond_5d
    const-string v0, "The report could not be sent."

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_4e
.end method
