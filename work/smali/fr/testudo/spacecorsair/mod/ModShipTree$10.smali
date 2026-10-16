.class Lfr/testudo/spacecorsair/mod/ModShipTree$10;
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
.field final synthetic val$a:Landroid/app/Activity;

.field final synthetic val$canOpen:Z

.field final synthetic val$t:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;


# direct methods
.method constructor <init>(ZLandroid/app/Activity;Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 1107
    iput-boolean p1, p0, Lfr/testudo/spacecorsair/mod/ModShipTree$10;->val$canOpen:Z

    iput-object p2, p0, Lfr/testudo/spacecorsair/mod/ModShipTree$10;->val$a:Landroid/app/Activity;

    iput-object p3, p0, Lfr/testudo/spacecorsair/mod/ModShipTree$10;->val$t:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4

    .prologue
    .line 1107
    iget-boolean v0, p0, Lfr/testudo/spacecorsair/mod/ModShipTree$10;->val$canOpen:Z

    if-eqz v0, :cond_b

    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModShipTree$10;->val$a:Landroid/app/Activity;

    iget-object v1, p0, Lfr/testudo/spacecorsair/mod/ModShipTree$10;->val$t:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    invoke-static {v0, v1}, Lfr/testudo/spacecorsair/mod/ModShipTree;->openShip(Landroid/app/Activity;Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)V

    :cond_b
    return-void
.end method
