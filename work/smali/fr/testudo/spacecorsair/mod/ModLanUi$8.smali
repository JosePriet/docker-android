.class Lfr/testudo/spacecorsair/mod/ModLanUi$8;
.super Ljava/lang/Object;
.source "ModLanUi.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfr/testudo/spacecorsair/mod/ModLanUi;->menu(Landroid/app/Activity;Ljava/lang/String;Landroid/view/View;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/Runnable;)Landroid/app/AlertDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$dlg:Landroid/app/AlertDialog;

.field final synthetic val$r:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Landroid/app/AlertDialog;Ljava/lang/Runnable;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 410
    iput-object p1, p0, Lfr/testudo/spacecorsair/mod/ModLanUi$8;->val$dlg:Landroid/app/AlertDialog;

    iput-object p2, p0, Lfr/testudo/spacecorsair/mod/ModLanUi$8;->val$r:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3

    .prologue
    .line 412
    :try_start_0
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModLanUi$8;->val$dlg:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_5} :catch_f

    .line 413
    :goto_5
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModLanUi$8;->val$r:Ljava/lang/Runnable;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModLanUi$8;->val$r:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 414
    :cond_e
    return-void

    .line 412
    :catch_f
    move-exception v0

    goto :goto_5
.end method
