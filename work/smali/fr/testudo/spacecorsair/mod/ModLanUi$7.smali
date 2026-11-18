.class Lfr/testudo/spacecorsair/mod/ModLanUi$7;
.super Ljava/lang/Object;
.source "ModLanUi.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfr/testudo/spacecorsair/mod/ModLanUi;->pickCountry(Landroid/app/Activity;Lfr/testudo/spacecorsair/mod/ModLanUi$Pick;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$ad:Landroid/widget/ArrayAdapter;

.field final synthetic val$cb:Lfr/testudo/spacecorsair/mod/ModLanUi$Pick;

.field final synthetic val$dlg:Landroid/app/AlertDialog;


# direct methods
.method constructor <init>(Landroid/widget/ArrayAdapter;Lfr/testudo/spacecorsair/mod/ModLanUi$Pick;Landroid/app/AlertDialog;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 369
    iput-object p1, p0, Lfr/testudo/spacecorsair/mod/ModLanUi$7;->val$ad:Landroid/widget/ArrayAdapter;

    iput-object p2, p0, Lfr/testudo/spacecorsair/mod/ModLanUi$7;->val$cb:Lfr/testudo/spacecorsair/mod/ModLanUi$Pick;

    iput-object p3, p0, Lfr/testudo/spacecorsair/mod/ModLanUi$7;->val$dlg:Landroid/app/AlertDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 371
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModLanUi$7;->val$ad:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0, p3}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 372
    iget-object v1, p0, Lfr/testudo/spacecorsair/mod/ModLanUi$7;->val$cb:Lfr/testudo/spacecorsair/mod/ModLanUi$Pick;

    const-string v2, "?"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1d

    const-string v0, ""

    :goto_14
    invoke-interface {v1, v0}, Lfr/testudo/spacecorsair/mod/ModLanUi$Pick;->picked(Ljava/lang/String;)V

    .line 373
    :try_start_17
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModLanUi$7;->val$dlg:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V
    :try_end_1c
    .catch Ljava/lang/Throwable; {:try_start_17 .. :try_end_1c} :catch_24

    .line 374
    :goto_1c
    return-void

    .line 372
    :cond_1d
    const/4 v2, 0x0

    const/4 v3, 0x3

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_14

    .line 373
    :catch_24
    move-exception v0

    goto :goto_1c
.end method
