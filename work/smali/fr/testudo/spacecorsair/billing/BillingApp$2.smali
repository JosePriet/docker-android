.class Lfr/testudo/spacecorsair/billing/BillingApp$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lfr/testudo/spacecorsair/billing/IabHelper$OnConsumeFinishedListener;


# instance fields
.field final synthetic this$0:Lfr/testudo/spacecorsair/billing/BillingApp;


# direct methods
.method constructor <init>(Lfr/testudo/spacecorsair/billing/BillingApp;)V
    .registers 2

    .prologue
    .line 141
    iput-object p1, p0, Lfr/testudo/spacecorsair/billing/BillingApp$2;->this$0:Lfr/testudo/spacecorsair/billing/BillingApp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConsumeFinished(Lfr/testudo/spacecorsair/billing/Purchase;Lfr/testudo/spacecorsair/billing/IabResult;)V
    .registers 4

    .prologue
    .line 145
    iget-object v0, p0, Lfr/testudo/spacecorsair/billing/BillingApp$2;->this$0:Lfr/testudo/spacecorsair/billing/BillingApp;

    # getter for: Lfr/testudo/spacecorsair/billing/BillingApp;->billingListener:Lfr/testudo/spacecorsair/billing/BillingListener;
    invoke-static {v0}, Lfr/testudo/spacecorsair/billing/BillingApp;->access$300(Lfr/testudo/spacecorsair/billing/BillingApp;)Lfr/testudo/spacecorsair/billing/BillingListener;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 146
    iget-object v0, p0, Lfr/testudo/spacecorsair/billing/BillingApp$2;->this$0:Lfr/testudo/spacecorsair/billing/BillingApp;

    # getter for: Lfr/testudo/spacecorsair/billing/BillingApp;->billingListener:Lfr/testudo/spacecorsair/billing/BillingListener;
    invoke-static {v0}, Lfr/testudo/spacecorsair/billing/BillingApp;->access$300(Lfr/testudo/spacecorsair/billing/BillingApp;)Lfr/testudo/spacecorsair/billing/BillingListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lfr/testudo/spacecorsair/billing/BillingListener;->onPurchaseConsumed(Lfr/testudo/spacecorsair/billing/Purchase;)V

    .line 149
    :cond_11
    return-void
.end method
