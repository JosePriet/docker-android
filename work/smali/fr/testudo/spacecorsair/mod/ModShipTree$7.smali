.class Lfr/testudo/spacecorsair/mod/ModShipTree$7;
.super Ljava/lang/Object;
.source "ModShipTree.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


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


# direct methods
.method constructor <init>(Landroid/app/Activity;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 531
    iput-object p1, p0, Lfr/testudo/spacecorsair/mod/ModShipTree$7;->val$a:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .registers 7

    .prologue
    const/4 v0, 0x0

    .line 533
    const/4 v1, 0x4

    if-eq p2, v1, :cond_5

    .line 544
    :goto_4
    return v0

    .line 534
    :cond_5
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_24

    .line 535
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-lez v0, :cond_16

    # getter for: Lfr/testudo/spacecorsair/mod/ModShipTree;->ateDown:Z
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModShipTree;->access$500()Z

    move-result v0

    goto :goto_4

    .line 536
    :cond_16
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModShipTree$7;->val$a:Landroid/app/Activity;

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModShipTree;->handleBack(Landroid/app/Activity;)Z

    move-result v0

    # setter for: Lfr/testudo/spacecorsair/mod/ModShipTree;->ateDown:Z
    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModShipTree;->access$502(Z)Z

    .line 537
    # getter for: Lfr/testudo/spacecorsair/mod/ModShipTree;->ateDown:Z
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModShipTree;->access$500()Z

    move-result v0

    goto :goto_4

    .line 539
    :cond_24
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_34

    .line 540
    # getter for: Lfr/testudo/spacecorsair/mod/ModShipTree;->ateDown:Z
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModShipTree;->access$500()Z

    move-result v1

    .line 541
    # setter for: Lfr/testudo/spacecorsair/mod/ModShipTree;->ateDown:Z
    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModShipTree;->access$502(Z)Z

    move v0, v1

    .line 542
    goto :goto_4

    .line 544
    :cond_34
    # getter for: Lfr/testudo/spacecorsair/mod/ModShipTree;->ateDown:Z
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModShipTree;->access$500()Z

    move-result v0

    goto :goto_4
.end method
