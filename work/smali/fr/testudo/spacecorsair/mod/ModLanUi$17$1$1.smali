.class Lfr/testudo/spacecorsair/mod/ModLanUi$17$1$1;
.super Ljava/lang/Object;
.source "ModLanUi.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfr/testudo/spacecorsair/mod/ModLanUi$17$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lfr/testudo/spacecorsair/mod/ModLanUi$17$1;

.field final synthetic val$got:Ljava/util/List;

.field final synthetic val$st:Ljava/lang/String;


# direct methods
.method constructor <init>(Lfr/testudo/spacecorsair/mod/ModLanUi$17$1;Ljava/util/List;Ljava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 611
    iput-object p1, p0, Lfr/testudo/spacecorsair/mod/ModLanUi$17$1$1;->this$1:Lfr/testudo/spacecorsair/mod/ModLanUi$17$1;

    iput-object p2, p0, Lfr/testudo/spacecorsair/mod/ModLanUi$17$1$1;->val$got:Ljava/util/List;

    iput-object p3, p0, Lfr/testudo/spacecorsair/mod/ModLanUi$17$1$1;->val$st:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 613
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModLanUi$17$1$1;->this$1:Lfr/testudo/spacecorsair/mod/ModLanUi$17$1;

    iget-object v0, v0, Lfr/testudo/spacecorsair/mod/ModLanUi$17$1;->this$0:Lfr/testudo/spacecorsair/mod/ModLanUi$17;

    iget-object v0, v0, Lfr/testudo/spacecorsair/mod/ModLanUi$17;->val$loading:[Z

    aput-boolean v1, v0, v1

    .line 614
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModLanUi$17$1$1;->this$1:Lfr/testudo/spacecorsair/mod/ModLanUi$17$1;

    iget-object v0, v0, Lfr/testudo/spacecorsair/mod/ModLanUi$17$1;->this$0:Lfr/testudo/spacecorsair/mod/ModLanUi$17;

    iget-object v0, v0, Lfr/testudo/spacecorsair/mod/ModLanUi$17;->val$dlg:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_16

    .line 620
    :goto_15
    return-void

    .line 615
    :cond_16
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModLanUi$17$1$1;->this$1:Lfr/testudo/spacecorsair/mod/ModLanUi$17$1;

    iget-object v0, v0, Lfr/testudo/spacecorsair/mod/ModLanUi$17$1;->this$0:Lfr/testudo/spacecorsair/mod/ModLanUi$17;

    iget-object v0, v0, Lfr/testudo/spacecorsair/mod/ModLanUi$17;->val$rows:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 616
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModLanUi$17$1$1;->this$1:Lfr/testudo/spacecorsair/mod/ModLanUi$17$1;

    iget-object v0, v0, Lfr/testudo/spacecorsair/mod/ModLanUi$17$1;->this$0:Lfr/testudo/spacecorsair/mod/ModLanUi$17;

    iget-object v0, v0, Lfr/testudo/spacecorsair/mod/ModLanUi$17;->val$rows:Ljava/util/ArrayList;

    iget-object v1, p0, Lfr/testudo/spacecorsair/mod/ModLanUi$17$1$1;->val$got:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 617
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModLanUi$17$1$1;->this$1:Lfr/testudo/spacecorsair/mod/ModLanUi$17$1;

    iget-object v0, v0, Lfr/testudo/spacecorsair/mod/ModLanUi$17$1;->this$0:Lfr/testudo/spacecorsair/mod/ModLanUi$17;

    iget-object v0, v0, Lfr/testudo/spacecorsair/mod/ModLanUi$17;->val$ad:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    .line 618
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModLanUi$17$1$1;->this$1:Lfr/testudo/spacecorsair/mod/ModLanUi$17$1;

    iget-object v0, v0, Lfr/testudo/spacecorsair/mod/ModLanUi$17$1;->this$0:Lfr/testudo/spacecorsair/mod/ModLanUi$17;

    iget-object v1, v0, Lfr/testudo/spacecorsair/mod/ModLanUi$17;->val$note:Landroid/widget/TextView;

    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModLanUi$17$1$1;->val$got:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_56

    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModLanUi$17$1$1;->val$st:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_4f

    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModLanUi$17$1$1;->val$st:Ljava/lang/String;

    :goto_4b
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_15

    :cond_4f
    const-string v0, "No public games right now. Host one, or look again in a moment."

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_4b

    .line 619
    :cond_56
    const-string v0, "Tap a game to join. The list refreshes by itself."

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_4b
.end method
