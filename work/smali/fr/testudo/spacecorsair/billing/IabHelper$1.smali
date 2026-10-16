.class Lfr/testudo/spacecorsair/billing/IabHelper$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field final synthetic this$0:Lfr/testudo/spacecorsair/billing/IabHelper;

.field final synthetic val$listener:Lfr/testudo/spacecorsair/billing/IabHelper$OnIabSetupFinishedListener;


# direct methods
.method constructor <init>(Lfr/testudo/spacecorsair/billing/IabHelper;Lfr/testudo/spacecorsair/billing/IabHelper$OnIabSetupFinishedListener;)V
    .registers 3

    .prologue
    .line 211
    iput-object p1, p0, Lfr/testudo/spacecorsair/billing/IabHelper$1;->this$0:Lfr/testudo/spacecorsair/billing/IabHelper;

    iput-object p2, p0, Lfr/testudo/spacecorsair/billing/IabHelper$1;->val$listener:Lfr/testudo/spacecorsair/billing/IabHelper$OnIabSetupFinishedListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 8

    .prologue
    const/4 v4, 0x0

    .line 220
    iget-object v0, p0, Lfr/testudo/spacecorsair/billing/IabHelper$1;->this$0:Lfr/testudo/spacecorsair/billing/IabHelper;

    const-string v1, "Billing service connected."

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/billing/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 221
    iget-object v0, p0, Lfr/testudo/spacecorsair/billing/IabHelper$1;->this$0:Lfr/testudo/spacecorsair/billing/IabHelper;

    invoke-static {p2}, Lcom/android/vending/billing/IInAppBillingService$Stub;->a(Landroid/os/IBinder;)Lcom/android/vending/billing/IInAppBillingService;

    move-result-object v1

    iput-object v1, v0, Lfr/testudo/spacecorsair/billing/IabHelper;->mService:Lcom/android/vending/billing/IInAppBillingService;

    .line 222
    iget-object v0, p0, Lfr/testudo/spacecorsair/billing/IabHelper$1;->this$0:Lfr/testudo/spacecorsair/billing/IabHelper;

    iget-object v0, v0, Lfr/testudo/spacecorsair/billing/IabHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 224
    :try_start_18
    iget-object v1, p0, Lfr/testudo/spacecorsair/billing/IabHelper$1;->this$0:Lfr/testudo/spacecorsair/billing/IabHelper;

    const-string v2, "Checking for in-app billing 3 support."

    invoke-virtual {v1, v2}, Lfr/testudo/spacecorsair/billing/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 227
    iget-object v1, p0, Lfr/testudo/spacecorsair/billing/IabHelper$1;->this$0:Lfr/testudo/spacecorsair/billing/IabHelper;

    iget-object v1, v1, Lfr/testudo/spacecorsair/billing/IabHelper;->mService:Lcom/android/vending/billing/IInAppBillingService;

    const/4 v2, 0x3

    const-string v3, "inapp"

    invoke-interface {v1, v2, v0, v3}, Lcom/android/vending/billing/IInAppBillingService;->a(ILjava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 228
    if-eqz v1, :cond_42

    .line 229
    iget-object v0, p0, Lfr/testudo/spacecorsair/billing/IabHelper$1;->val$listener:Lfr/testudo/spacecorsair/billing/IabHelper$OnIabSetupFinishedListener;

    if-eqz v0, :cond_3c

    .line 230
    iget-object v0, p0, Lfr/testudo/spacecorsair/billing/IabHelper$1;->val$listener:Lfr/testudo/spacecorsair/billing/IabHelper$OnIabSetupFinishedListener;

    new-instance v2, Lfr/testudo/spacecorsair/billing/IabResult;

    const-string v3, "Error checking for billing v3 support."

    invoke-direct {v2, v1, v3}, Lfr/testudo/spacecorsair/billing/IabResult;-><init>(ILjava/lang/String;)V

    invoke-interface {v0, v2}, Lfr/testudo/spacecorsair/billing/IabHelper$OnIabSetupFinishedListener;->onIabSetupFinished(Lfr/testudo/spacecorsair/billing/IabResult;)V

    .line 234
    :cond_3c
    iget-object v0, p0, Lfr/testudo/spacecorsair/billing/IabHelper$1;->this$0:Lfr/testudo/spacecorsair/billing/IabHelper;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lfr/testudo/spacecorsair/billing/IabHelper;->mSubscriptionsSupported:Z

    .line 260
    :cond_41
    :goto_41
    return-void

    .line 237
    :cond_42
    iget-object v1, p0, Lfr/testudo/spacecorsair/billing/IabHelper$1;->this$0:Lfr/testudo/spacecorsair/billing/IabHelper;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "In-app billing version 3 supported for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lfr/testudo/spacecorsair/billing/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 240
    iget-object v1, p0, Lfr/testudo/spacecorsair/billing/IabHelper$1;->this$0:Lfr/testudo/spacecorsair/billing/IabHelper;

    iget-object v1, v1, Lfr/testudo/spacecorsair/billing/IabHelper;->mService:Lcom/android/vending/billing/IInAppBillingService;

    const/4 v2, 0x3

    const-string v3, "subs"

    invoke-interface {v1, v2, v0, v3}, Lcom/android/vending/billing/IInAppBillingService;->a(ILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 241
    if-nez v0, :cond_89

    .line 242
    iget-object v0, p0, Lfr/testudo/spacecorsair/billing/IabHelper$1;->this$0:Lfr/testudo/spacecorsair/billing/IabHelper;

    const-string v1, "Subscriptions AVAILABLE."

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/billing/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 243
    iget-object v0, p0, Lfr/testudo/spacecorsair/billing/IabHelper$1;->this$0:Lfr/testudo/spacecorsair/billing/IabHelper;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lfr/testudo/spacecorsair/billing/IabHelper;->mSubscriptionsSupported:Z

    .line 248
    :goto_73
    iget-object v0, p0, Lfr/testudo/spacecorsair/billing/IabHelper$1;->this$0:Lfr/testudo/spacecorsair/billing/IabHelper;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lfr/testudo/spacecorsair/billing/IabHelper;->mSetupDone:Z
    :try_end_78
    .catch Landroid/os/RemoteException; {:try_start_18 .. :try_end_78} :catch_a2

    .line 257
    iget-object v0, p0, Lfr/testudo/spacecorsair/billing/IabHelper$1;->val$listener:Lfr/testudo/spacecorsair/billing/IabHelper$OnIabSetupFinishedListener;

    if-eqz v0, :cond_41

    .line 258
    iget-object v0, p0, Lfr/testudo/spacecorsair/billing/IabHelper$1;->val$listener:Lfr/testudo/spacecorsair/billing/IabHelper$OnIabSetupFinishedListener;

    new-instance v1, Lfr/testudo/spacecorsair/billing/IabResult;

    const-string v2, "Setup successful."

    invoke-direct {v1, v4, v2}, Lfr/testudo/spacecorsair/billing/IabResult;-><init>(ILjava/lang/String;)V

    invoke-interface {v0, v1}, Lfr/testudo/spacecorsair/billing/IabHelper$OnIabSetupFinishedListener;->onIabSetupFinished(Lfr/testudo/spacecorsair/billing/IabResult;)V

    goto :goto_41

    .line 245
    :cond_89
    :try_start_89
    iget-object v1, p0, Lfr/testudo/spacecorsair/billing/IabHelper$1;->this$0:Lfr/testudo/spacecorsair/billing/IabHelper;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Subscriptions NOT AVAILABLE. Response: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lfr/testudo/spacecorsair/billing/IabHelper;->logDebug(Ljava/lang/String;)V
    :try_end_a1
    .catch Landroid/os/RemoteException; {:try_start_89 .. :try_end_a1} :catch_a2

    goto :goto_73

    .line 249
    :catch_a2
    move-exception v0

    .line 250
    iget-object v1, p0, Lfr/testudo/spacecorsair/billing/IabHelper$1;->val$listener:Lfr/testudo/spacecorsair/billing/IabHelper$OnIabSetupFinishedListener;

    if-eqz v1, :cond_b5

    .line 251
    iget-object v1, p0, Lfr/testudo/spacecorsair/billing/IabHelper$1;->val$listener:Lfr/testudo/spacecorsair/billing/IabHelper$OnIabSetupFinishedListener;

    new-instance v2, Lfr/testudo/spacecorsair/billing/IabResult;

    const/16 v3, -0x3e9

    const-string v4, "RemoteException while setting up in-app billing."

    invoke-direct {v2, v3, v4}, Lfr/testudo/spacecorsair/billing/IabResult;-><init>(ILjava/lang/String;)V

    invoke-interface {v1, v2}, Lfr/testudo/spacecorsair/billing/IabHelper$OnIabSetupFinishedListener;->onIabSetupFinished(Lfr/testudo/spacecorsair/billing/IabResult;)V

    .line 253
    :cond_b5
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_41
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 4

    .prologue
    .line 214
    iget-object v0, p0, Lfr/testudo/spacecorsair/billing/IabHelper$1;->this$0:Lfr/testudo/spacecorsair/billing/IabHelper;

    const-string v1, "Billing service disconnected."

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/billing/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 215
    iget-object v0, p0, Lfr/testudo/spacecorsair/billing/IabHelper$1;->this$0:Lfr/testudo/spacecorsair/billing/IabHelper;

    const/4 v1, 0x0

    iput-object v1, v0, Lfr/testudo/spacecorsair/billing/IabHelper;->mService:Lcom/android/vending/billing/IInAppBillingService;

    .line 216
    return-void
.end method
