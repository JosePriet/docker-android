.class Lfr/testudo/spacecorsair/mod/ModLanUi$25;
.super Ljava/lang/Object;
.source "ModLanUi.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfr/testudo/spacecorsair/mod/ModLanUi;->codeBoxes(Landroid/app/Activity;Lfr/testudo/spacecorsair/mod/ModLanUi$CodeCb;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$at:I

.field final synthetic val$bx:[Landroid/widget/EditText;

.field final synthetic val$e:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Landroid/widget/EditText;I[Landroid/widget/EditText;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 822
    iput-object p1, p0, Lfr/testudo/spacecorsair/mod/ModLanUi$25;->val$e:Landroid/widget/EditText;

    iput p2, p0, Lfr/testudo/spacecorsair/mod/ModLanUi$25;->val$at:I

    iput-object p3, p0, Lfr/testudo/spacecorsair/mod/ModLanUi$25;->val$bx:[Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .registers 6

    .prologue
    .line 824
    const/16 v0, 0x43

    if-ne p2, v0, :cond_34

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_34

    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModLanUi$25;->val$e:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    if-nez v0, :cond_34

    iget v0, p0, Lfr/testudo/spacecorsair/mod/ModLanUi$25;->val$at:I

    if-lez v0, :cond_34

    .line 825
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModLanUi$25;->val$bx:[Landroid/widget/EditText;

    iget v1, p0, Lfr/testudo/spacecorsair/mod/ModLanUi$25;->val$at:I

    add-int/lit8 v1, v1, -0x1

    aget-object v0, v0, v1

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 826
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModLanUi$25;->val$bx:[Landroid/widget/EditText;

    iget v1, p0, Lfr/testudo/spacecorsair/mod/ModLanUi$25;->val$at:I

    add-int/lit8 v1, v1, -0x1

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 827
    const/4 v0, 0x1

    .line 829
    :goto_33
    return v0

    :cond_34
    const/4 v0, 0x0

    goto :goto_33
.end method
