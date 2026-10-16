.class Lfr/testudo/spacecorsair/billing/IabHelper$2$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$1:Lfr/testudo/spacecorsair/billing/IabHelper$2;

.field final synthetic val$inv_f:Lfr/testudo/spacecorsair/billing/Inventory;

.field final synthetic val$result_f:Lfr/testudo/spacecorsair/billing/IabResult;


# direct methods
.method constructor <init>(Lfr/testudo/spacecorsair/billing/IabHelper$2;Lfr/testudo/spacecorsair/billing/IabResult;Lfr/testudo/spacecorsair/billing/Inventory;)V
    .registers 4

    .prologue
    .line 627
    iput-object p1, p0, Lfr/testudo/spacecorsair/billing/IabHelper$2$1;->this$1:Lfr/testudo/spacecorsair/billing/IabHelper$2;

    iput-object p2, p0, Lfr/testudo/spacecorsair/billing/IabHelper$2$1;->val$result_f:Lfr/testudo/spacecorsair/billing/IabResult;

    iput-object p3, p0, Lfr/testudo/spacecorsair/billing/IabHelper$2$1;->val$inv_f:Lfr/testudo/spacecorsair/billing/Inventory;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 629
    iget-object v0, p0, Lfr/testudo/spacecorsair/billing/IabHelper$2$1;->this$1:Lfr/testudo/spacecorsair/billing/IabHelper$2;

    iget-object v0, v0, Lfr/testudo/spacecorsair/billing/IabHelper$2;->val$listener:Lfr/testudo/spacecorsair/billing/IabHelper$QueryInventoryFinishedListener;

    iget-object v1, p0, Lfr/testudo/spacecorsair/billing/IabHelper$2$1;->val$result_f:Lfr/testudo/spacecorsair/billing/IabResult;

    iget-object v2, p0, Lfr/testudo/spacecorsair/billing/IabHelper$2$1;->val$inv_f:Lfr/testudo/spacecorsair/billing/Inventory;

    invoke-interface {v0, v1, v2}, Lfr/testudo/spacecorsair/billing/IabHelper$QueryInventoryFinishedListener;->onQueryInventoryFinished(Lfr/testudo/spacecorsair/billing/IabResult;Lfr/testudo/spacecorsair/billing/Inventory;)V

    .line 630
    return-void
.end method
