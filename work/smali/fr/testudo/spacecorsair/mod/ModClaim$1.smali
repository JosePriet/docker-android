.class Lfr/testudo/spacecorsair/mod/ModClaim$1;
.super Ljava/lang/Object;
.source "ModClaim.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfr/testudo/spacecorsair/mod/ModClaim;->show(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$a:Lfr/testudo/spacecorsair/activity/Main;

.field final synthetic val$reward:Ljava/lang/String;

.field final synthetic val$text:Ljava/lang/String;

.field final synthetic val$title:Ljava/lang/String;


# direct methods
.method constructor <init>(Lfr/testudo/spacecorsair/activity/Main;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 44
    iput-object p1, p0, Lfr/testudo/spacecorsair/mod/ModClaim$1;->val$a:Lfr/testudo/spacecorsair/activity/Main;

    iput-object p2, p0, Lfr/testudo/spacecorsair/mod/ModClaim$1;->val$title:Ljava/lang/String;

    iput-object p3, p0, Lfr/testudo/spacecorsair/mod/ModClaim$1;->val$text:Ljava/lang/String;

    iput-object p4, p0, Lfr/testudo/spacecorsair/mod/ModClaim$1;->val$reward:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 47
    :try_start_0
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/game/Game;->pause()V

    .line 48
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lfr/testudo/spacecorsair/mod/ModClaim$1;->val$a:Lfr/testudo/spacecorsair/activity/Main;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lfr/testudo/spacecorsair/mod/ModClaim$1;->val$title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lfr/testudo/spacecorsair/mod/ModClaim$1;->val$text:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "Accept reward"

    .line 49
    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lfr/testudo/spacecorsair/mod/ModClaim$1$1;

    invoke-direct {v2, p0}, Lfr/testudo/spacecorsair/mod/ModClaim$1$1;-><init>(Lfr/testudo/spacecorsair/mod/ModClaim$1;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 57
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;
    :try_end_31
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_31} :catch_32

    .line 61
    :goto_31
    return-void

    .line 58
    :catch_32
    move-exception v0

    .line 59
    :try_start_33
    invoke-static {}, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->resume()V
    :try_end_36
    .catch Ljava/lang/Throwable; {:try_start_33 .. :try_end_36} :catch_37

    goto :goto_31

    :catch_37
    move-exception v0

    goto :goto_31
.end method
