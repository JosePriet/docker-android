.class Lfr/testudo/spacecorsair/billing/BillingApp$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lfr/testudo/spacecorsair/billing/IabHelper$QueryInventoryFinishedListener;


# instance fields
.field final synthetic this$0:Lfr/testudo/spacecorsair/billing/BillingApp;


# direct methods
.method constructor <init>(Lfr/testudo/spacecorsair/billing/BillingApp;)V
    .registers 2

    .prologue
    .line 176
    iput-object p1, p0, Lfr/testudo/spacecorsair/billing/BillingApp$4;->this$0:Lfr/testudo/spacecorsair/billing/BillingApp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onQueryInventoryFinished(Lfr/testudo/spacecorsair/billing/IabResult;Lfr/testudo/spacecorsair/billing/Inventory;)V
    .registers 5

    .prologue
    .line 178
    const-string v0, "Query inventory finished."

    invoke-static {v0}, Lfr/testudo/spacecorsair/utils/Logs;->i(Ljava/lang/String;)V

    .line 179
    invoke-virtual {p1}, Lfr/testudo/spacecorsair/billing/IabResult;->isFailure()Z

    move-result v0

    if-eqz v0, :cond_22

    .line 180
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to query inventory: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lfr/testudo/spacecorsair/utils/Logs;->w(Ljava/lang/String;)V

    .line 187
    :cond_21
    :goto_21
    return-void

    .line 184
    :cond_22
    iget-object v0, p0, Lfr/testudo/spacecorsair/billing/BillingApp$4;->this$0:Lfr/testudo/spacecorsair/billing/BillingApp;

    # getter for: Lfr/testudo/spacecorsair/billing/BillingApp;->billingListener:Lfr/testudo/spacecorsair/billing/BillingListener;
    invoke-static {v0}, Lfr/testudo/spacecorsair/billing/BillingApp;->access$300(Lfr/testudo/spacecorsair/billing/BillingApp;)Lfr/testudo/spacecorsair/billing/BillingListener;

    move-result-object v0

    if-eqz v0, :cond_21

    .line 185
    iget-object v0, p0, Lfr/testudo/spacecorsair/billing/BillingApp$4;->this$0:Lfr/testudo/spacecorsair/billing/BillingApp;

    # getter for: Lfr/testudo/spacecorsair/billing/BillingApp;->billingListener:Lfr/testudo/spacecorsair/billing/BillingListener;
    invoke-static {v0}, Lfr/testudo/spacecorsair/billing/BillingApp;->access$300(Lfr/testudo/spacecorsair/billing/BillingApp;)Lfr/testudo/spacecorsair/billing/BillingListener;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lfr/testudo/spacecorsair/billing/BillingListener;->onInventorRetreived(Lfr/testudo/spacecorsair/billing/IabResult;Lfr/testudo/spacecorsair/billing/Inventory;)V

    goto :goto_21
.end method
