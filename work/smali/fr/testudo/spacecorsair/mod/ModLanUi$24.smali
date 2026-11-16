.class Lfr/testudo/spacecorsair/mod/ModLanUi$24;
.super Ljava/lang/Object;
.source "ModLanUi.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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

.field final synthetic val$join:Lfr/testudo/spacecorsair/mod/ModLanUi$CodeCb;


# direct methods
.method constructor <init>([Landroid/widget/EditText;Lfr/testudo/spacecorsair/mod/ModLanUi$CodeCb;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 719
    iput-object p1, p0, Lfr/testudo/spacecorsair/mod/ModLanUi$24;->val$bx:[Landroid/widget/EditText;

    iput-object p2, p0, Lfr/testudo/spacecorsair/mod/ModLanUi$24;->val$join:Lfr/testudo/spacecorsair/mod/ModLanUi$CodeCb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 9

    .prologue
    const/4 v5, 0x4

    .line 721
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 722
    iget-object v2, p0, Lfr/testudo/spacecorsair/mod/ModLanUi$24;->val$bx:[Landroid/widget/EditText;

    array-length v3, v2

    const/4 v0, 0x0

    :goto_a
    if-ge v0, v3, :cond_18

    aget-object v4, v2, v0

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .line 723
    :cond_18
    invoke-static {v1, v5}, Lfr/testudo/spacecorsair/mod/ModLanUi;->codeChars(Ljava/lang/CharSequence;I)Ljava/lang/String;

    move-result-object v0

    .line 724
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-ne v1, v5, :cond_27

    iget-object v1, p0, Lfr/testudo/spacecorsair/mod/ModLanUi$24;->val$join:Lfr/testudo/spacecorsair/mod/ModLanUi$CodeCb;

    invoke-interface {v1, v0}, Lfr/testudo/spacecorsair/mod/ModLanUi$CodeCb;->code(Ljava/lang/String;)V

    .line 725
    :cond_27
    return-void
.end method
