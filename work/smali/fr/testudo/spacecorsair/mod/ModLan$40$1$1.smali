.class Lfr/testudo/spacecorsair/mod/ModLan$40$1$1;
.super Ljava/lang/Object;
.source "ModLan.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfr/testudo/spacecorsair/mod/ModLan$40$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lfr/testudo/spacecorsair/mod/ModLan$40$1;


# direct methods
.method constructor <init>(Lfr/testudo/spacecorsair/mod/ModLan$40$1;)V
    .registers 2

    .prologue
    .line 3243
    iput-object p1, p0, Lfr/testudo/spacecorsair/mod/ModLan$40$1$1;->this$1:Lfr/testudo/spacecorsair/mod/ModLan$40$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 3244
    :try_start_0
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModLan$40$1$1;->this$1:Lfr/testudo/spacecorsair/mod/ModLan$40$1;

    iget-object v0, v0, Lfr/testudo/spacecorsair/mod/ModLan$40$1;->this$0:Lfr/testudo/spacecorsair/mod/ModLan$40;

    iget-object v0, v0, Lfr/testudo/spacecorsair/mod/ModLan$40;->val$a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_1c

    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModLan$40$1$1;->this$1:Lfr/testudo/spacecorsair/mod/ModLan$40$1;

    iget-object v0, v0, Lfr/testudo/spacecorsair/mod/ModLan$40$1;->this$0:Lfr/testudo/spacecorsair/mod/ModLan$40;

    iget-object v0, v0, Lfr/testudo/spacecorsair/mod/ModLan$40;->val$a:Landroid/app/Activity;

    sget-object v1, Lfr/testudo/spacecorsair/mod/ModLobby;->status:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V
    :try_end_1c
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_1c} :catch_1d

    .line 3245
    :cond_1c
    :goto_1c
    return-void

    .line 3244
    :catch_1d
    move-exception v0

    goto :goto_1c
.end method
