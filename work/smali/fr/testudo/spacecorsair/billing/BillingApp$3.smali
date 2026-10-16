.class Lfr/testudo/spacecorsair/billing/BillingApp$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lfr/testudo/spacecorsair/billing/IabHelper$OnIabPurchaseFinishedListener;


# instance fields
.field final synthetic this$0:Lfr/testudo/spacecorsair/billing/BillingApp;


# direct methods
.method constructor <init>(Lfr/testudo/spacecorsair/billing/BillingApp;)V
    .registers 2

    .prologue
    .line 154
    iput-object p1, p0, Lfr/testudo/spacecorsair/billing/BillingApp$3;->this$0:Lfr/testudo/spacecorsair/billing/BillingApp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onIabPurchaseFinished(Lfr/testudo/spacecorsair/billing/IabResult;Lfr/testudo/spacecorsair/billing/Purchase;)V
    .registers 5

    .prologue
    .line 156
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Purchase finished: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", purchase: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lfr/testudo/spacecorsair/utils/Logs;->i(Ljava/lang/String;)V

    .line 157
    invoke-virtual {p1}, Lfr/testudo/spacecorsair/billing/IabResult;->isFailure()Z

    move-result v0

    if-eqz v0, :cond_3d

    .line 158
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error purchasing: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lfr/testudo/spacecorsair/utils/Logs;->w(Ljava/lang/String;)V

    .line 171
    :cond_3c
    :goto_3c
    return-void

    .line 161
    :cond_3d
    iget-object v0, p0, Lfr/testudo/spacecorsair/billing/BillingApp$3;->this$0:Lfr/testudo/spacecorsair/billing/BillingApp;

    invoke-virtual {v0, p2}, Lfr/testudo/spacecorsair/billing/BillingApp;->verifyDeveloperPayload(Lfr/testudo/spacecorsair/billing/Purchase;)Z

    move-result v0

    if-nez v0, :cond_4b

    .line 162
    const-string v0, "Error purchasing. Authenticity verification failed."

    invoke-static {v0}, Lfr/testudo/spacecorsair/utils/Logs;->w(Ljava/lang/String;)V

    goto :goto_3c

    .line 166
    :cond_4b
    const-string v0, "Purchase successful."

    invoke-static {v0}, Lfr/testudo/spacecorsair/utils/Logs;->log(Ljava/lang/String;)V

    .line 168
    iget-object v0, p0, Lfr/testudo/spacecorsair/billing/BillingApp$3;->this$0:Lfr/testudo/spacecorsair/billing/BillingApp;

    # getter for: Lfr/testudo/spacecorsair/billing/BillingApp;->billingListener:Lfr/testudo/spacecorsair/billing/BillingListener;
    invoke-static {v0}, Lfr/testudo/spacecorsair/billing/BillingApp;->access$300(Lfr/testudo/spacecorsair/billing/BillingApp;)Lfr/testudo/spacecorsair/billing/BillingListener;

    move-result-object v0

    if-eqz v0, :cond_3c

    .line 169
    iget-object v0, p0, Lfr/testudo/spacecorsair/billing/BillingApp$3;->this$0:Lfr/testudo/spacecorsair/billing/BillingApp;

    # getter for: Lfr/testudo/spacecorsair/billing/BillingApp;->billingListener:Lfr/testudo/spacecorsair/billing/BillingListener;
    invoke-static {v0}, Lfr/testudo/spacecorsair/billing/BillingApp;->access$300(Lfr/testudo/spacecorsair/billing/BillingApp;)Lfr/testudo/spacecorsair/billing/BillingListener;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lfr/testudo/spacecorsair/billing/BillingListener;->onPurchaseFinished(Lfr/testudo/spacecorsair/billing/IabResult;Lfr/testudo/spacecorsair/billing/Purchase;)V

    goto :goto_3c
.end method
