.class Lfr/testudo/spacecorsair/activity/MyShipActivity$10;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lfr/testudo/spacecorsair/activity/MyShipActivity;

.field final synthetic val$maxValue:I

.field final synthetic val$objectToDelete:Lfr/testudo/spacecorsair/business/loot/SpaceObject;

.field final synthetic val$pickListener:Lfr/testudo/spacecorsair/activity/viewgroup/ItemQuantityPickListener;

.field final synthetic val$transactionContext:Lfr/testudo/spacecorsair/activity/adapters/SpaceObjectAdapter$ItemContext;

.field final synthetic val$txtValue:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lfr/testudo/spacecorsair/activity/MyShipActivity;Landroid/widget/EditText;ILfr/testudo/spacecorsair/activity/viewgroup/ItemQuantityPickListener;Lfr/testudo/spacecorsair/business/loot/SpaceObject;Lfr/testudo/spacecorsair/activity/adapters/SpaceObjectAdapter$ItemContext;)V
    .registers 7

    .prologue
    .line 401
    iput-object p1, p0, Lfr/testudo/spacecorsair/activity/MyShipActivity$10;->this$0:Lfr/testudo/spacecorsair/activity/MyShipActivity;

    iput-object p2, p0, Lfr/testudo/spacecorsair/activity/MyShipActivity$10;->val$txtValue:Landroid/widget/EditText;

    iput p3, p0, Lfr/testudo/spacecorsair/activity/MyShipActivity$10;->val$maxValue:I

    iput-object p4, p0, Lfr/testudo/spacecorsair/activity/MyShipActivity$10;->val$pickListener:Lfr/testudo/spacecorsair/activity/viewgroup/ItemQuantityPickListener;

    iput-object p5, p0, Lfr/testudo/spacecorsair/activity/MyShipActivity$10;->val$objectToDelete:Lfr/testudo/spacecorsair/business/loot/SpaceObject;

    iput-object p6, p0, Lfr/testudo/spacecorsair/activity/MyShipActivity$10;->val$transactionContext:Lfr/testudo/spacecorsair/activity/adapters/SpaceObjectAdapter$ItemContext;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 6

    .prologue
    .line 404
    const/4 v0, 0x0

    .line 406
    :try_start_1
    iget-object v1, p0, Lfr/testudo/spacecorsair/activity/MyShipActivity$10;->val$txtValue:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_e} :catch_1f

    move-result v0

    .line 409
    :goto_f
    iget v1, p0, Lfr/testudo/spacecorsair/activity/MyShipActivity$10;->val$maxValue:I

    if-le v0, v1, :cond_15

    .line 410
    iget v0, p0, Lfr/testudo/spacecorsair/activity/MyShipActivity$10;->val$maxValue:I

    .line 413
    :cond_15
    iget-object v1, p0, Lfr/testudo/spacecorsair/activity/MyShipActivity$10;->val$pickListener:Lfr/testudo/spacecorsair/activity/viewgroup/ItemQuantityPickListener;

    iget-object v2, p0, Lfr/testudo/spacecorsair/activity/MyShipActivity$10;->val$objectToDelete:Lfr/testudo/spacecorsair/business/loot/SpaceObject;

    iget-object v3, p0, Lfr/testudo/spacecorsair/activity/MyShipActivity$10;->val$transactionContext:Lfr/testudo/spacecorsair/activity/adapters/SpaceObjectAdapter$ItemContext;

    invoke-interface {v1, v0, v2, v3}, Lfr/testudo/spacecorsair/activity/viewgroup/ItemQuantityPickListener;->onItemPick(ILfr/testudo/spacecorsair/business/loot/SpaceObject;Lfr/testudo/spacecorsair/activity/adapters/SpaceObjectAdapter$ItemContext;)V

    .line 414
    return-void

    .line 407
    :catch_1f
    move-exception v1

    goto :goto_f
.end method
