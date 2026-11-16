.class Lfr/testudo/spacecorsair/mod/ModLan$36;
.super Ljava/lang/Object;
.source "ModLan.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfr/testudo/spacecorsair/mod/ModLan;->publicList(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$a:Landroid/app/Activity;

.field final synthetic val$wait:Landroid/app/AlertDialog;


# direct methods
.method constructor <init>(Landroid/app/Activity;Landroid/app/AlertDialog;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 2586
    iput-object p1, p0, Lfr/testudo/spacecorsair/mod/ModLan$36;->val$a:Landroid/app/Activity;

    iput-object p2, p0, Lfr/testudo/spacecorsair/mod/ModLan$36;->val$wait:Landroid/app/AlertDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 2588
    const-string v0, ""

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModLobby;->status:Ljava/lang/String;

    .line 2589
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLobby;->list()Ljava/util/List;

    move-result-object v0

    .line 2590
    iget-object v1, p0, Lfr/testudo/spacecorsair/mod/ModLan$36;->val$a:Landroid/app/Activity;

    new-instance v2, Lfr/testudo/spacecorsair/mod/ModLan$36$1;

    invoke-direct {v2, p0, v0}, Lfr/testudo/spacecorsair/mod/ModLan$36$1;-><init>(Lfr/testudo/spacecorsair/mod/ModLan$36;Ljava/util/List;)V

    invoke-virtual {v1, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 2618
    return-void
.end method
