.class Lfr/testudo/spacecorsair/mod/ModShipTree$8;
.super Ljava/lang/Object;
.source "ModShipTree.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfr/testudo/spacecorsair/mod/ModShipTree;->card(Lfr/testudo/spacecorsair/mod/ModShipTree$Overlay;Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;IIIILandroid/graphics/Bitmap;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$o:Lfr/testudo/spacecorsair/mod/ModShipTree$Overlay;

.field final synthetic val$t:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;


# direct methods
.method constructor <init>(Lfr/testudo/spacecorsair/mod/ModShipTree$Overlay;Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 944
    iput-object p1, p0, Lfr/testudo/spacecorsair/mod/ModShipTree$8;->val$o:Lfr/testudo/spacecorsair/mod/ModShipTree$Overlay;

    iput-object p2, p0, Lfr/testudo/spacecorsair/mod/ModShipTree$8;->val$t:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4

    .prologue
    .line 945
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModShipTree$8;->val$o:Lfr/testudo/spacecorsair/mod/ModShipTree$Overlay;

    iget-object v1, p0, Lfr/testudo/spacecorsair/mod/ModShipTree$8;->val$t:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    # invokes: Lfr/testudo/spacecorsair/mod/ModShipTree;->showInfo(Lfr/testudo/spacecorsair/mod/ModShipTree$Overlay;Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;Landroid/view/View;)V
    invoke-static {v0, v1, p1}, Lfr/testudo/spacecorsair/mod/ModShipTree;->access$600(Lfr/testudo/spacecorsair/mod/ModShipTree$Overlay;Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;Landroid/view/View;)V

    return-void
.end method
