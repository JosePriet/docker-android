.class final Lfr/testudo/spacecorsair/utils/InGameDialog$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic val$dialog:Landroid/app/Dialog;

.field final synthetic val$onCancelListener:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Landroid/app/Dialog;Ljava/lang/Runnable;)V
    .registers 3

    .prologue
    .line 63
    iput-object p1, p0, Lfr/testudo/spacecorsair/utils/InGameDialog$1;->val$dialog:Landroid/app/Dialog;

    iput-object p2, p0, Lfr/testudo/spacecorsair/utils/InGameDialog$1;->val$onCancelListener:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3

    .prologue
    .line 66
    iget-object v0, p0, Lfr/testudo/spacecorsair/utils/InGameDialog$1;->val$dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 67
    iget-object v0, p0, Lfr/testudo/spacecorsair/utils/InGameDialog$1;->val$onCancelListener:Ljava/lang/Runnable;

    if-eqz v0, :cond_e

    .line 68
    iget-object v0, p0, Lfr/testudo/spacecorsair/utils/InGameDialog$1;->val$onCancelListener:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 70
    :cond_e
    return-void
.end method
