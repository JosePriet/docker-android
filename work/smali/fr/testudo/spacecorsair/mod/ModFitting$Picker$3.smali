.class Lfr/testudo/spacecorsair/mod/ModFitting$Picker$3;
.super Ljava/lang/Object;
.source "ModFitting.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfr/testudo/spacecorsair/mod/ModFitting$Picker;->show(Landroid/app/Activity;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$a:Landroid/app/Activity;

.field final synthetic val$dlg:Landroid/app/Dialog;


# direct methods
.method constructor <init>(Landroid/app/Dialog;Landroid/app/Activity;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 1419
    iput-object p1, p0, Lfr/testudo/spacecorsair/mod/ModFitting$Picker$3;->val$dlg:Landroid/app/Dialog;

    iput-object p2, p0, Lfr/testudo/spacecorsair/mod/ModFitting$Picker$3;->val$a:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4

    .prologue
    .line 1421
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModFitting$Picker$3;->val$dlg:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 1422
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModFitting$Picker$3;->val$a:Landroid/app/Activity;

    const-string v1, "txtShowInventory"

    invoke-static {v0, v1}, Lfr/testudo/spacecorsair/mod/ModFitting;->click(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_16

    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModFitting$Picker$3;->val$a:Landroid/app/Activity;

    const-string v1, "showPopupInventory"

    invoke-static {v0, v1}, Lfr/testudo/spacecorsair/mod/ModFitting;->invoke(Landroid/app/Activity;Ljava/lang/String;)V

    .line 1423
    :cond_16
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModFitting$Picker$3;->val$a:Landroid/app/Activity;

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModFitting;->attach(Landroid/app/Activity;)V

    .line 1424
    return-void
.end method
