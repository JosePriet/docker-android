.class Lfr/testudo/spacecorsair/mod/ModShipTree$5;
.super Ljava/lang/Object;
.source "ModShipTree.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfr/testudo/spacecorsair/mod/ModShipTree;->build(Landroid/app/Activity;Landroid/view/ViewGroup;)Lfr/testudo/spacecorsair/mod/ModShipTree$Overlay;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$a:Landroid/app/Activity;

.field final synthetic val$ib:Landroid/widget/Button;


# direct methods
.method constructor <init>(Landroid/app/Activity;Landroid/widget/Button;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 495
    iput-object p1, p0, Lfr/testudo/spacecorsair/mod/ModShipTree$5;->val$a:Landroid/app/Activity;

    iput-object p2, p0, Lfr/testudo/spacecorsair/mod/ModShipTree$5;->val$ib:Landroid/widget/Button;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4

    .prologue
    .line 496
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModShipTree$5;->val$a:Landroid/app/Activity;

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModQol;->showInbox(Landroid/app/Activity;)V

    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModShipTree$5;->val$ib:Landroid/widget/Button;

    # invokes: Lfr/testudo/spacecorsair/mod/ModShipTree;->inboxLabel()Ljava/lang/String;
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModShipTree;->access$300()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
