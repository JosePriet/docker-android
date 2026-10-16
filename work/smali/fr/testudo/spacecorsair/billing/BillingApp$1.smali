.class Lfr/testudo/spacecorsair/billing/BillingApp$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lfr/testudo/spacecorsair/billing/IabHelper$OnIabSetupFinishedListener;


# instance fields
.field final synthetic this$0:Lfr/testudo/spacecorsair/billing/BillingApp;


# direct methods
.method constructor <init>(Lfr/testudo/spacecorsair/billing/BillingApp;)V
    .registers 2

    .prologue
    .line 54
    iput-object p1, p0, Lfr/testudo/spacecorsair/billing/BillingApp$1;->this$0:Lfr/testudo/spacecorsair/billing/BillingApp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onIabSetupFinished(Lfr/testudo/spacecorsair/billing/IabResult;)V
    .registers 4

    .prologue
    .line 56
    const-string v0, "In-app billing setup finished"

    invoke-static {v0}, Lfr/testudo/spacecorsair/utils/Logs;->i(Ljava/lang/String;)V

    .line 58
    invoke-virtual {p1}, Lfr/testudo/spacecorsair/billing/IabResult;->isSuccess()Z

    move-result v0

    if-nez v0, :cond_28

    .line 59
    iget-object v0, p0, Lfr/testudo/spacecorsair/billing/BillingApp$1;->this$0:Lfr/testudo/spacecorsair/billing/BillingApp;

    const/4 v1, 0x0

    # setter for: Lfr/testudo/spacecorsair/billing/BillingApp;->isBillingAvailable:Z
    invoke-static {v0, v1}, Lfr/testudo/spacecorsair/billing/BillingApp;->access$002(Lfr/testudo/spacecorsair/billing/BillingApp;Z)Z

    .line 60
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Problem setting up in-app billing: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lfr/testudo/spacecorsair/utils/Logs;->e(Ljava/lang/String;)V

    .line 66
    :goto_27
    return-void

    .line 64
    :cond_28
    const-string v0, "In-app billing setup completed"

    invoke-static {v0}, Lfr/testudo/spacecorsair/utils/Logs;->i(Ljava/lang/String;)V

    .line 65
    iget-object v0, p0, Lfr/testudo/spacecorsair/billing/BillingApp$1;->this$0:Lfr/testudo/spacecorsair/billing/BillingApp;

    # getter for: Lfr/testudo/spacecorsair/billing/BillingApp;->mHelper:Lfr/testudo/spacecorsair/billing/IabHelper;
    invoke-static {v0}, Lfr/testudo/spacecorsair/billing/BillingApp;->access$200(Lfr/testudo/spacecorsair/billing/BillingApp;)Lfr/testudo/spacecorsair/billing/IabHelper;

    move-result-object v0

    iget-object v1, p0, Lfr/testudo/spacecorsair/billing/BillingApp$1;->this$0:Lfr/testudo/spacecorsair/billing/BillingApp;

    # getter for: Lfr/testudo/spacecorsair/billing/BillingApp;->mGotInventoryListener:Lfr/testudo/spacecorsair/billing/IabHelper$QueryInventoryFinishedListener;
    invoke-static {v1}, Lfr/testudo/spacecorsair/billing/BillingApp;->access$100(Lfr/testudo/spacecorsair/billing/BillingApp;)Lfr/testudo/spacecorsair/billing/IabHelper$QueryInventoryFinishedListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/billing/IabHelper;->queryInventoryAsync(Lfr/testudo/spacecorsair/billing/IabHelper$QueryInventoryFinishedListener;)V

    goto :goto_27
.end method
