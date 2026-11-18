.class Lfr/testudo/spacecorsair/mod/ModLanUi$19;
.super Ljava/lang/Object;
.source "ModLanUi.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfr/testudo/spacecorsair/mod/ModLanUi;->publicList(Landroid/app/Activity;Lfr/testudo/spacecorsair/mod/ModLanUi$CodeCb;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$dlg:Landroid/app/AlertDialog;

.field final synthetic val$join:Lfr/testudo/spacecorsair/mod/ModLanUi$CodeCb;

.field final synthetic val$rows:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Ljava/util/ArrayList;Landroid/app/AlertDialog;Lfr/testudo/spacecorsair/mod/ModLanUi$CodeCb;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 728
    iput-object p1, p0, Lfr/testudo/spacecorsair/mod/ModLanUi$19;->val$rows:Ljava/util/ArrayList;

    iput-object p2, p0, Lfr/testudo/spacecorsair/mod/ModLanUi$19;->val$dlg:Landroid/app/AlertDialog;

    iput-object p3, p0, Lfr/testudo/spacecorsair/mod/ModLanUi$19;->val$join:Lfr/testudo/spacecorsair/mod/ModLanUi$CodeCb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 9
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
    .line 730
    if-ltz p3, :cond_1d

    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModLanUi$19;->val$rows:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p3, v0, :cond_1d

    const-string v1, "2"

    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModLanUi$19;->val$rows:Ljava/util/ArrayList;

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    const/4 v2, 0x6

    aget-object v0, v0, v2

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 734
    :cond_1d
    :goto_1d
    return-void

    .line 731
    :cond_1e
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModLanUi$19;->val$rows:Ljava/util/ArrayList;

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    .line 732
    iget-object v1, p0, Lfr/testudo/spacecorsair/mod/ModLanUi$19;->val$dlg:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->dismiss()V

    .line 733
    iget-object v1, p0, Lfr/testudo/spacecorsair/mod/ModLanUi$19;->val$join:Lfr/testudo/spacecorsair/mod/ModLanUi$CodeCb;

    invoke-interface {v1, v0}, Lfr/testudo/spacecorsair/mod/ModLanUi$CodeCb;->code(Ljava/lang/String;)V

    goto :goto_1d
.end method
