.class Lfr/testudo/spacecorsair/mod/ModLan$41$1;
.super Ljava/lang/Object;
.source "ModLan.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfr/testudo/spacecorsair/mod/ModLan$41;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lfr/testudo/spacecorsair/mod/ModLan$41;

.field final synthetic val$ok:Z


# direct methods
.method constructor <init>(Lfr/testudo/spacecorsair/mod/ModLan$41;Z)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 3102
    iput-object p1, p0, Lfr/testudo/spacecorsair/mod/ModLan$41$1;->this$0:Lfr/testudo/spacecorsair/mod/ModLan$41;

    iput-boolean p2, p0, Lfr/testudo/spacecorsair/mod/ModLan$41$1;->val$ok:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 3104
    :try_start_0
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModLan$41$1;->this$0:Lfr/testudo/spacecorsair/mod/ModLan$41;

    iget-object v0, v0, Lfr/testudo/spacecorsair/mod/ModLan$41;->val$wait:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_7} :catch_2f

    .line 3105
    :goto_7
    iget-boolean v0, p0, Lfr/testudo/spacecorsair/mod/ModLan$41$1;->val$ok:Z

    if-nez v0, :cond_1b

    sget-object v0, Lfr/testudo/spacecorsair/mod/ModLobby;->status:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1b

    sget v0, Lfr/testudo/spacecorsair/mod/ModLan;->role:I

    if-nez v0, :cond_1b

    sget-object v0, Lfr/testudo/spacecorsair/mod/ModLobby;->status:Ljava/lang/String;

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->status:Ljava/lang/String;

    .line 3106
    :cond_1b
    :try_start_1b
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModLan$41$1;->this$0:Lfr/testudo/spacecorsair/mod/ModLan$41;

    iget-object v0, v0, Lfr/testudo/spacecorsair/mod/ModLan$41;->val$a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_2c

    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModLan$41$1;->this$0:Lfr/testudo/spacecorsair/mod/ModLan$41;

    iget-object v0, v0, Lfr/testudo/spacecorsair/mod/ModLan$41;->val$a:Landroid/app/Activity;

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLan;->showMenu(Landroid/app/Activity;)V
    :try_end_2c
    .catch Ljava/lang/Throwable; {:try_start_1b .. :try_end_2c} :catch_2d

    .line 3107
    :cond_2c
    :goto_2c
    return-void

    .line 3106
    :catch_2d
    move-exception v0

    goto :goto_2c

    .line 3104
    :catch_2f
    move-exception v0

    goto :goto_7
.end method
