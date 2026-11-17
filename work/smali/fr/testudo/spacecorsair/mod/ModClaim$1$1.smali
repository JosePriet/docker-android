.class Lfr/testudo/spacecorsair/mod/ModClaim$1$1;
.super Ljava/lang/Object;
.source "ModClaim.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfr/testudo/spacecorsair/mod/ModClaim$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lfr/testudo/spacecorsair/mod/ModClaim$1;


# direct methods
.method constructor <init>(Lfr/testudo/spacecorsair/mod/ModClaim$1;)V
    .registers 2

    .prologue
    .line 49
    iput-object p1, p0, Lfr/testudo/spacecorsair/mod/ModClaim$1$1;->this$0:Lfr/testudo/spacecorsair/mod/ModClaim$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 6

    .prologue
    .line 51
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lfr/testudo/spacecorsair/mod/ModClaim$1$1;->this$0:Lfr/testudo/spacecorsair/mod/ModClaim$1;

    iget-object v1, v1, Lfr/testudo/spacecorsair/mod/ModClaim$1;->val$a:Lfr/testudo/spacecorsair/activity/Main;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v1, "Reward received"

    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 52
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModClaim$1$1;->this$0:Lfr/testudo/spacecorsair/mod/ModClaim$1;

    iget-object v0, v0, Lfr/testudo/spacecorsair/mod/ModClaim$1;->val$reward:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_3d

    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModClaim$1$1;->this$0:Lfr/testudo/spacecorsair/mod/ModClaim$1;

    iget-object v0, v0, Lfr/testudo/spacecorsair/mod/ModClaim$1;->val$reward:Ljava/lang/String;

    :goto_21
    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "OK"

    .line 53
    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lfr/testudo/spacecorsair/mod/ModClaim$1$1$1;

    invoke-direct {v2, p0}, Lfr/testudo/spacecorsair/mod/ModClaim$1$1$1;-><init>(Lfr/testudo/spacecorsair/mod/ModClaim$1$1;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 55
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 56
    return-void

    .line 52
    :cond_3d
    const-string v0, "-"

    goto :goto_21
.end method
