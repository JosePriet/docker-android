.class Lfr/testudo/spacecorsair/mod/ModFitting$Picker$1;
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

.field final synthetic val$slot:I


# direct methods
.method constructor <init>(Landroid/app/Dialog;Landroid/app/Activity;I)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 1386
    iput-object p1, p0, Lfr/testudo/spacecorsair/mod/ModFitting$Picker$1;->val$dlg:Landroid/app/Dialog;

    iput-object p2, p0, Lfr/testudo/spacecorsair/mod/ModFitting$Picker$1;->val$a:Landroid/app/Activity;

    iput p3, p0, Lfr/testudo/spacecorsair/mod/ModFitting$Picker$1;->val$slot:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4

    .prologue
    .line 1387
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModFitting$Picker$1;->val$dlg:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModFitting$Picker$1;->val$a:Landroid/app/Activity;

    iget v1, p0, Lfr/testudo/spacecorsair/mod/ModFitting$Picker$1;->val$slot:I

    invoke-static {v0, v1}, Lfr/testudo/spacecorsair/mod/ModFitting;->details(Landroid/app/Activity;I)V

    return-void
.end method
