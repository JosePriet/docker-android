.class Lfr/testudo/spacecorsair/mod/ModLanUi$23;
.super Ljava/lang/Object;
.source "ModLanUi.java"

# interfaces
.implements Landroid/text/TextWatcher;


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

.field final synthetic val$busy:[Z

.field final synthetic val$bx:[Landroid/widget/EditText;

.field final synthetic val$check:Ljava/lang/Runnable;

.field final synthetic val$e:Landroid/widget/EditText;


# direct methods
.method constructor <init>([ZI[Landroid/widget/EditText;Landroid/widget/EditText;Ljava/lang/Runnable;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 785
    iput-object p1, p0, Lfr/testudo/spacecorsair/mod/ModLanUi$23;->val$busy:[Z

    iput p2, p0, Lfr/testudo/spacecorsair/mod/ModLanUi$23;->val$at:I

    iput-object p3, p0, Lfr/testudo/spacecorsair/mod/ModLanUi$23;->val$bx:[Landroid/widget/EditText;

    iput-object p4, p0, Lfr/testudo/spacecorsair/mod/ModLanUi$23;->val$e:Landroid/widget/EditText;

    iput-object p5, p0, Lfr/testudo/spacecorsair/mod/ModLanUi$23;->val$check:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .registers 9

    .prologue
    const/4 v5, 0x4

    const/4 v6, 0x3

    const/4 v1, 0x0

    .line 789
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModLanUi$23;->val$busy:[Z

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_a

    .line 803
    :goto_9
    return-void

    .line 790
    :cond_a
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModLanUi$23;->val$busy:[Z

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    .line 792
    const/4 v0, 0x4

    :try_start_10
    invoke-static {p1, v0}, Lfr/testudo/spacecorsair/mod/ModLanUi;->codeChars(Ljava/lang/CharSequence;I)Ljava/lang/String;

    move-result-object v2

    move v0, v1

    .line 794
    :goto_15
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v0, v3, :cond_33

    iget v3, p0, Lfr/testudo/spacecorsair/mod/ModLanUi$23;->val$at:I

    add-int/2addr v3, v0

    if-ge v3, v5, :cond_33

    iget-object v3, p0, Lfr/testudo/spacecorsair/mod/ModLanUi$23;->val$bx:[Landroid/widget/EditText;

    iget v4, p0, Lfr/testudo/spacecorsair/mod/ModLanUi$23;->val$at:I

    add-int/2addr v4, v0

    aget-object v3, v3, v4

    add-int/lit8 v4, v0, 0x1

    invoke-virtual {v2, v0, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_15

    .line 795
    :cond_33
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_40

    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModLanUi$23;->val$e:Landroid/widget/EditText;

    const-string v3, ""

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 796
    :cond_40
    const/4 v0, 0x3

    iget v3, p0, Lfr/testudo/spacecorsair/mod/ModLanUi$23;->val$at:I

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x0

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    add-int/2addr v3, v4

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 797
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_71

    iget v3, p0, Lfr/testudo/spacecorsair/mod/ModLanUi$23;->val$at:I

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    if-gt v3, v6, :cond_71

    iget-object v2, p0, Lfr/testudo/spacecorsair/mod/ModLanUi$23;->val$bx:[Landroid/widget/EditText;

    aget-object v0, v2, v0

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z
    :try_end_67
    .catchall {:try_start_10 .. :try_end_67} :catchall_8d

    .line 800
    :cond_67
    :goto_67
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModLanUi$23;->val$busy:[Z

    aput-boolean v1, v0, v1

    .line 802
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModLanUi$23;->val$check:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_9

    .line 798
    :cond_71
    :try_start_71
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_67

    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModLanUi$23;->val$bx:[Landroid/widget/EditText;

    const/4 v2, 0x3

    aget-object v0, v0, v2

    iget-object v2, p0, Lfr/testudo/spacecorsair/mod/ModLanUi$23;->val$bx:[Landroid/widget/EditText;

    const/4 v3, 0x3

    aget-object v2, v2, v3

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->length()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setSelection(I)V
    :try_end_8c
    .catchall {:try_start_71 .. :try_end_8c} :catchall_8d

    goto :goto_67

    .line 800
    :catchall_8d
    move-exception v0

    iget-object v2, p0, Lfr/testudo/spacecorsair/mod/ModLanUi$23;->val$busy:[Z

    aput-boolean v1, v2, v1

    .line 801
    throw v0
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5

    .prologue
    .line 786
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5

    .prologue
    .line 787
    return-void
.end method
