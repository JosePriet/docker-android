.class Lfr/testudo/spacecorsair/mod/ModShipTree$3;
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
.field final synthetic val$gg:I

.field final synthetic val$o:Lfr/testudo/spacecorsair/mod/ModShipTree$Overlay;


# direct methods
.method constructor <init>(ILfr/testudo/spacecorsair/mod/ModShipTree$Overlay;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 460
    iput p1, p0, Lfr/testudo/spacecorsair/mod/ModShipTree$3;->val$gg:I

    iput-object p2, p0, Lfr/testudo/spacecorsair/mod/ModShipTree$3;->val$o:Lfr/testudo/spacecorsair/mod/ModShipTree$Overlay;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4

    .prologue
    .line 461
    iget v0, p0, Lfr/testudo/spacecorsair/mod/ModShipTree$3;->val$gg:I

    # setter for: Lfr/testudo/spacecorsair/mod/ModShipTree;->sel:I
    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModShipTree;->access$102(I)I

    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModShipTree$3;->val$o:Lfr/testudo/spacecorsair/mod/ModShipTree$Overlay;

    iget v1, p0, Lfr/testudo/spacecorsair/mod/ModShipTree$3;->val$gg:I

    # invokes: Lfr/testudo/spacecorsair/mod/ModShipTree;->select(Lfr/testudo/spacecorsair/mod/ModShipTree$Overlay;I)V
    invoke-static {v0, v1}, Lfr/testudo/spacecorsair/mod/ModShipTree;->access$200(Lfr/testudo/spacecorsair/mod/ModShipTree$Overlay;I)V

    return-void
.end method
