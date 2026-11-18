.class Lfr/testudo/spacecorsair/mod/ModLanUi$22;
.super Ljava/lang/Object;
.source "ModLanUi.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfr/testudo/spacecorsair/mod/ModLanUi;->codeBoxes(Landroid/app/Activity;Lfr/testudo/spacecorsair/mod/ModLanUi$CodeCb;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$bx:[Landroid/widget/EditText;

.field final synthetic val$dlg:[Landroid/app/AlertDialog;


# direct methods
.method constructor <init>([Landroid/widget/EditText;[Landroid/app/AlertDialog;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 765
    iput-object p1, p0, Lfr/testudo/spacecorsair/mod/ModLanUi$22;->val$bx:[Landroid/widget/EditText;

    iput-object p2, p0, Lfr/testudo/spacecorsair/mod/ModLanUi$22;->val$dlg:[Landroid/app/AlertDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 8

    .prologue
    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 767
    .line 768
    iget-object v4, p0, Lfr/testudo/spacecorsair/mod/ModLanUi$22;->val$bx:[Landroid/widget/EditText;

    array-length v5, v4

    move v2, v1

    move v0, v3

    :goto_7
    if-ge v2, v5, :cond_19

    aget-object v6, v4, v2

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-interface {v6}, Landroid/text/Editable;->length()I

    move-result v6

    if-eq v6, v3, :cond_16

    move v0, v1

    :cond_16
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 769
    :cond_19
    iget-object v2, p0, Lfr/testudo/spacecorsair/mod/ModLanUi$22;->val$dlg:[Landroid/app/AlertDialog;

    aget-object v2, v2, v1

    if-nez v2, :cond_26

    const/4 v1, 0x0

    .line 770
    :goto_20
    if-eqz v1, :cond_25

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 771
    :cond_25
    return-void

    .line 769
    :cond_26
    iget-object v2, p0, Lfr/testudo/spacecorsair/mod/ModLanUi$22;->val$dlg:[Landroid/app/AlertDialog;

    aget-object v1, v2, v1

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v1

    goto :goto_20
.end method
