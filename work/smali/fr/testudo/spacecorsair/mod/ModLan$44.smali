.class Lfr/testudo/spacecorsair/mod/ModLan$44;
.super Ljava/lang/Object;
.source "ModLan.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfr/testudo/spacecorsair/mod/ModLan;->joinCode(Landroid/app/Activity;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$a:Landroid/app/Activity;

.field final synthetic val$code:Ljava/lang/String;

.field final synthetic val$wait:Landroid/app/AlertDialog;


# direct methods
.method constructor <init>(Ljava/lang/String;Landroid/app/Activity;Landroid/app/AlertDialog;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 3263
    iput-object p1, p0, Lfr/testudo/spacecorsair/mod/ModLan$44;->val$code:Ljava/lang/String;

    iput-object p2, p0, Lfr/testudo/spacecorsair/mod/ModLan$44;->val$a:Landroid/app/Activity;

    iput-object p3, p0, Lfr/testudo/spacecorsair/mod/ModLan$44;->val$wait:Landroid/app/AlertDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 3265
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModLan$44;->val$code:Ljava/lang/String;

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLobby;->join(Ljava/lang/String;)Z

    move-result v0

    .line 3266
    iget-object v1, p0, Lfr/testudo/spacecorsair/mod/ModLan$44;->val$a:Landroid/app/Activity;

    new-instance v2, Lfr/testudo/spacecorsair/mod/ModLan$44$1;

    invoke-direct {v2, p0, v0}, Lfr/testudo/spacecorsair/mod/ModLan$44$1;-><init>(Lfr/testudo/spacecorsair/mod/ModLan$44;Z)V

    invoke-virtual {v1, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 3273
    return-void
.end method
