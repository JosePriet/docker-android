.class Lfr/testudo/spacecorsair/mod/ModShipTree$9;
.super Ljava/lang/Object;
.source "ModShipTree.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfr/testudo/spacecorsair/mod/ModShipTree;->showInfo(Lfr/testudo/spacecorsair/mod/ModShipTree$Overlay;Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$o:Lfr/testudo/spacecorsair/mod/ModShipTree$Overlay;


# direct methods
.method constructor <init>(Lfr/testudo/spacecorsair/mod/ModShipTree$Overlay;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 1102
    iput-object p1, p0, Lfr/testudo/spacecorsair/mod/ModShipTree$9;->val$o:Lfr/testudo/spacecorsair/mod/ModShipTree$Overlay;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3

    .prologue
    .line 1102
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModShipTree$9;->val$o:Lfr/testudo/spacecorsair/mod/ModShipTree$Overlay;

    # invokes: Lfr/testudo/spacecorsair/mod/ModShipTree;->hideInfo(Lfr/testudo/spacecorsair/mod/ModShipTree$Overlay;)V
    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModShipTree;->access$400(Lfr/testudo/spacecorsair/mod/ModShipTree$Overlay;)V

    return-void
.end method
