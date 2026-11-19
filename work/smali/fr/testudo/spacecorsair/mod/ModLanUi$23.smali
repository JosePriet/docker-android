.class Lfr/testudo/spacecorsair/mod/ModLanUi$23;
.super Ljava/lang/Object;
.source "ModLanUi.java"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfr/testudo/spacecorsair/mod/ModLanUi;->codeBoxes(Landroid/app/Activity;Lfr/testudo/spacecorsair/mod/ModLanUi$CodeCb;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$dlg:[Landroid/app/AlertDialog;


# direct methods
.method constructor <init>([Landroid/app/AlertDialog;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 790
    iput-object p1, p0, Lfr/testudo/spacecorsair/mod/ModLanUi$23;->val$dlg:[Landroid/app/AlertDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .registers 6

    .prologue
    const/4 v1, 0x0

    .line 792
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModLanUi$23;->val$dlg:[Landroid/app/AlertDialog;

    aget-object v0, v0, v1

    if-nez v0, :cond_15

    const/4 v0, 0x0

    .line 793
    :goto_8
    if-eqz v0, :cond_13

    invoke-virtual {v0}, Landroid/widget/Button;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_13

    invoke-virtual {v0}, Landroid/widget/Button;->performClick()Z

    .line 794
    :cond_13
    const/4 v0, 0x1

    return v0

    .line 792
    :cond_15
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModLanUi$23;->val$dlg:[Landroid/app/AlertDialog;

    aget-object v0, v0, v1

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    goto :goto_8
.end method
