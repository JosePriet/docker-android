.class Lfr/testudo/spacecorsair/billing/IabHelper$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lfr/testudo/spacecorsair/billing/IabHelper;

.field final synthetic val$handler:Landroid/os/Handler;

.field final synthetic val$listener:Lfr/testudo/spacecorsair/billing/IabHelper$QueryInventoryFinishedListener;

.field final synthetic val$moreSkus:Ljava/util/List;

.field final synthetic val$querySkuDetails:Z


# direct methods
.method constructor <init>(Lfr/testudo/spacecorsair/billing/IabHelper;ZLjava/util/List;Landroid/os/Handler;Lfr/testudo/spacecorsair/billing/IabHelper$QueryInventoryFinishedListener;)V
    .registers 6

    .prologue
    .line 613
    iput-object p1, p0, Lfr/testudo/spacecorsair/billing/IabHelper$2;->this$0:Lfr/testudo/spacecorsair/billing/IabHelper;

    iput-boolean p2, p0, Lfr/testudo/spacecorsair/billing/IabHelper$2;->val$querySkuDetails:Z

    iput-object p3, p0, Lfr/testudo/spacecorsair/billing/IabHelper$2;->val$moreSkus:Ljava/util/List;

    iput-object p4, p0, Lfr/testudo/spacecorsair/billing/IabHelper$2;->val$handler:Landroid/os/Handler;

    iput-object p5, p0, Lfr/testudo/spacecorsair/billing/IabHelper$2;->val$listener:Lfr/testudo/spacecorsair/billing/IabHelper$QueryInventoryFinishedListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .prologue
    .line 615
    new-instance v1, Lfr/testudo/spacecorsair/billing/IabResult;

    const/4 v0, 0x0

    const-string v2, "Inventory refresh successful."

    invoke-direct {v1, v0, v2}, Lfr/testudo/spacecorsair/billing/IabResult;-><init>(ILjava/lang/String;)V

    .line 616
    const/4 v0, 0x0

    .line 618
    :try_start_9
    iget-object v2, p0, Lfr/testudo/spacecorsair/billing/IabHelper$2;->this$0:Lfr/testudo/spacecorsair/billing/IabHelper;

    iget-boolean v3, p0, Lfr/testudo/spacecorsair/billing/IabHelper$2;->val$querySkuDetails:Z

    iget-object v4, p0, Lfr/testudo/spacecorsair/billing/IabHelper$2;->val$moreSkus:Ljava/util/List;

    invoke-virtual {v2, v3, v4}, Lfr/testudo/spacecorsair/billing/IabHelper;->queryInventory(ZLjava/util/List;)Lfr/testudo/spacecorsair/billing/Inventory;
    :try_end_12
    .catch Lfr/testudo/spacecorsair/billing/IabException; {:try_start_9 .. :try_end_12} :catch_23

    move-result-object v0

    .line 623
    :goto_13
    iget-object v2, p0, Lfr/testudo/spacecorsair/billing/IabHelper$2;->this$0:Lfr/testudo/spacecorsair/billing/IabHelper;

    invoke-virtual {v2}, Lfr/testudo/spacecorsair/billing/IabHelper;->flagEndAsync()V

    .line 627
    iget-object v2, p0, Lfr/testudo/spacecorsair/billing/IabHelper$2;->val$handler:Landroid/os/Handler;

    new-instance v3, Lfr/testudo/spacecorsair/billing/IabHelper$2$1;

    invoke-direct {v3, p0, v1, v0}, Lfr/testudo/spacecorsair/billing/IabHelper$2$1;-><init>(Lfr/testudo/spacecorsair/billing/IabHelper$2;Lfr/testudo/spacecorsair/billing/IabResult;Lfr/testudo/spacecorsair/billing/Inventory;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 632
    return-void

    .line 619
    :catch_23
    move-exception v1

    .line 620
    invoke-virtual {v1}, Lfr/testudo/spacecorsair/billing/IabException;->getResult()Lfr/testudo/spacecorsair/billing/IabResult;

    move-result-object v1

    goto :goto_13
.end method
