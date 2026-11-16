.class Lfr/testudo/spacecorsair/mod/ModLobby$7;
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
    .line 544
    iput-object p1, p0, Lfr/testudo/spacecorsair/mod/ModLobby$7;->val$c:Ljava/lang/String;

    iput-object p2, p0, Lfr/testudo/spacecorsair/mod/ModLobby$7;->val$text:Ljava/lang/String;

    iput-object p3, p0, Lfr/testudo/spacecorsair/mod/ModLobby$7;->val$done:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .prologue
    .line 546
    const-string v0, "POST"

    const-string v1, "/report"

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "code"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lfr/testudo/spacecorsair/mod/ModLobby$7;->val$c:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "id"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModSaveSig;->installId()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x4

    const-string v4, "text"

    aput-object v4, v2, v3

    const/4 v3, 0x5

    iget-object v4, p0, Lfr/testudo/spacecorsair/mod/ModLobby$7;->val$text:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lfr/testudo/spacecorsair/mod/ModLobby;->call(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lfr/testudo/spacecorsair/mod/ModLobby$Reply;

    move-result-object v0

    .line 547
    invoke-virtual {v0}, Lfr/testudo/spacecorsair/mod/ModLobby$Reply;->ok()Z

    move-result v0

    if-eqz v0, :cond_43

    const-string v0, "Report sent."

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_37
    sput-object v0, Lfr/testudo/spacecorsair/mod/ModLobby;->status:Ljava/lang/String;

    .line 548
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModLobby$7;->val$done:Ljava/lang/Runnable;

    if-eqz v0, :cond_42

    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModLobby$7;->val$done:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 549
    :cond_42
    return-void

    .line 547
    :cond_43
    const-string v0, "The report could not be sent."

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_37
.end method
