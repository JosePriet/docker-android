.class public Lfr/testudo/spacecorsair/billing/IabHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lfr/testudo/spacecorsair/billing/IabHelper$OnConsumeMultiFinishedListener;,
        Lfr/testudo/spacecorsair/billing/IabHelper$OnConsumeFinishedListener;,
        Lfr/testudo/spacecorsair/billing/IabHelper$QueryInventoryFinishedListener;,
        Lfr/testudo/spacecorsair/billing/IabHelper$OnIabPurchaseFinishedListener;,
        Lfr/testudo/spacecorsair/billing/IabHelper$OnIabSetupFinishedListener;
    }
.end annotation


# static fields
.field public static final BILLING_RESPONSE_RESULT_BILLING_UNAVAILABLE:I = 0x3

.field public static final BILLING_RESPONSE_RESULT_DEVELOPER_ERROR:I = 0x5

.field public static final BILLING_RESPONSE_RESULT_ERROR:I = 0x6

.field public static final BILLING_RESPONSE_RESULT_ITEM_ALREADY_OWNED:I = 0x7

.field public static final BILLING_RESPONSE_RESULT_ITEM_NOT_OWNED:I = 0x8

.field public static final BILLING_RESPONSE_RESULT_ITEM_UNAVAILABLE:I = 0x4

.field public static final BILLING_RESPONSE_RESULT_OK:I = 0x0

.field public static final BILLING_RESPONSE_RESULT_USER_CANCELED:I = 0x1

.field public static final GET_SKU_DETAILS_ITEM_LIST:Ljava/lang/String; = "ITEM_ID_LIST"

.field public static final GET_SKU_DETAILS_ITEM_TYPE_LIST:Ljava/lang/String; = "ITEM_TYPE_LIST"

.field public static final IABHELPER_BAD_RESPONSE:I = -0x3ea

.field public static final IABHELPER_ERROR_BASE:I = -0x3e8

.field public static final IABHELPER_INVALID_CONSUMPTION:I = -0x3f2

.field public static final IABHELPER_MISSING_TOKEN:I = -0x3ef

.field public static final IABHELPER_REMOTE_EXCEPTION:I = -0x3e9

.field public static final IABHELPER_SEND_INTENT_FAILED:I = -0x3ec

.field public static final IABHELPER_SUBSCRIPTIONS_NOT_AVAILABLE:I = -0x3f1

.field public static final IABHELPER_UNKNOWN_ERROR:I = -0x3f0

.field public static final IABHELPER_UNKNOWN_PURCHASE_RESPONSE:I = -0x3ee

.field public static final IABHELPER_USER_CANCELLED:I = -0x3ed

.field public static final IABHELPER_VERIFICATION_FAILED:I = -0x3eb

.field public static final INAPP_CONTINUATION_TOKEN:Ljava/lang/String; = "INAPP_CONTINUATION_TOKEN"

.field public static final ITEM_TYPE_INAPP:Ljava/lang/String; = "inapp"

.field public static final ITEM_TYPE_SUBS:Ljava/lang/String; = "subs"

.field public static final RESPONSE_BUY_INTENT:Ljava/lang/String; = "BUY_INTENT"

.field public static final RESPONSE_CODE:Ljava/lang/String; = "RESPONSE_CODE"

.field public static final RESPONSE_GET_SKU_DETAILS_LIST:Ljava/lang/String; = "DETAILS_LIST"

.field public static final RESPONSE_INAPP_ITEM_LIST:Ljava/lang/String; = "INAPP_PURCHASE_ITEM_LIST"

.field public static final RESPONSE_INAPP_PURCHASE_DATA:Ljava/lang/String; = "INAPP_PURCHASE_DATA"

.field public static final RESPONSE_INAPP_PURCHASE_DATA_LIST:Ljava/lang/String; = "INAPP_PURCHASE_DATA_LIST"

.field public static final RESPONSE_INAPP_SIGNATURE:Ljava/lang/String; = "INAPP_DATA_SIGNATURE"

.field public static final RESPONSE_INAPP_SIGNATURE_LIST:Ljava/lang/String; = "INAPP_DATA_SIGNATURE_LIST"


# instance fields
.field mAsyncInProgress:Z

.field mAsyncOperation:Ljava/lang/String;

.field mContext:Landroid/content/Context;

.field mDebugLog:Z

.field mDebugTag:Ljava/lang/String;

.field mPurchaseListener:Lfr/testudo/spacecorsair/billing/IabHelper$OnIabPurchaseFinishedListener;

.field mPurchasingItemType:Ljava/lang/String;

.field mRequestCode:I

.field mService:Lcom/android/vending/billing/IInAppBillingService;

.field mServiceConn:Landroid/content/ServiceConnection;

.field mSetupDone:Z

.field mSignatureBase64:Ljava/lang/String;

.field mSubscriptionsSupported:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .registers 5

    .prologue
    const/4 v1, 0x0

    .line 164
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    iput-boolean v1, p0, Lfr/testudo/spacecorsair/billing/IabHelper;->mDebugLog:Z

    .line 74
    const-string v0, "IabHelper"

    iput-object v0, p0, Lfr/testudo/spacecorsair/billing/IabHelper;->mDebugTag:Ljava/lang/String;

    .line 77
    iput-boolean v1, p0, Lfr/testudo/spacecorsair/billing/IabHelper;->mSetupDone:Z

    .line 80
    iput-boolean v1, p0, Lfr/testudo/spacecorsair/billing/IabHelper;->mSubscriptionsSupported:Z

    .line 84
    iput-boolean v1, p0, Lfr/testudo/spacecorsair/billing/IabHelper;->mAsyncInProgress:Z

    .line 88
    const-string v0, ""

    iput-object v0, p0, Lfr/testudo/spacecorsair/billing/IabHelper;->mAsyncOperation:Ljava/lang/String;

    .line 104
    const/4 v0, 0x0

    iput-object v0, p0, Lfr/testudo/spacecorsair/billing/IabHelper;->mSignatureBase64:Ljava/lang/String;

    .line 165
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lfr/testudo/spacecorsair/billing/IabHelper;->mContext:Landroid/content/Context;

    .line 166
    iput-object p2, p0, Lfr/testudo/spacecorsair/billing/IabHelper;->mSignatureBase64:Ljava/lang/String;

    .line 167
    const-string v0, "IAB helper created."

    invoke-virtual {p0, v0}, Lfr/testudo/spacecorsair/billing/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 168
    return-void
.end method

.method public static getResponseDesc(I)Ljava/lang/String;
    .registers 4

    .prologue
    .line 757
    const-string v0, "0:OK/1:User Canceled/2:Unknown/3:Billing Unavailable/4:Item unavailable/5:Developer Error/6:Error/7:Item Already Owned/8:Item not owned"

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 758
    const-string v1, "0:OK/-1001:Remote exception during initialization/-1002:Bad response received/-1003:Purchase signature verification failed/-1004:Send intent failed/-1005:User cancelled/-1006:Unknown purchase response/-1007:Missing token/-1008:Unknown error/-1009:Subscriptions not available/-1010:Invalid consumption attempt"

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 760
    const/16 v2, -0x3e8

    if-gt p0, v2, :cond_36

    .line 761
    rsub-int v0, p0, -0x3e8

    .line 762
    if-ltz v0, :cond_1e

    array-length v2, v1

    if-ge v0, v2, :cond_1e

    .line 763
    aget-object v0, v1, v0

    .line 769
    :goto_1d
    return-object v0

    .line 765
    :cond_1e
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":Unknown IAB Helper Error"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1d

    .line 766
    :cond_36
    if-ltz p0, :cond_3b

    array-length v1, v0

    if-lt p0, v1, :cond_53

    .line 767
    :cond_3b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":Unknown"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1d

    .line 769
    :cond_53
    aget-object v0, v0, p0

    goto :goto_1d
.end method


# virtual methods
.method checkSetupDone(Ljava/lang/String;)V
    .registers 5

    .prologue
    .line 774
    iget-boolean v0, p0, Lfr/testudo/spacecorsair/billing/IabHelper;->mSetupDone:Z

    if-nez v0, :cond_39

    .line 775
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Illegal state for operation ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "): IAB helper is not set up."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lfr/testudo/spacecorsair/billing/IabHelper;->logError(Ljava/lang/String;)V

    .line 776
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IAB helper is not set up. Can\'t perform operation: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 778
    :cond_39
    return-void
.end method

.method consume(Lfr/testudo/spacecorsair/billing/Purchase;)V
    .registers 7

    .prologue
    .line 656
    const-string v0, "consume"

    invoke-virtual {p0, v0}, Lfr/testudo/spacecorsair/billing/IabHelper;->checkSetupDone(Ljava/lang/String;)V

    .line 658
    iget-object v0, p1, Lfr/testudo/spacecorsair/billing/Purchase;->mItemType:Ljava/lang/String;

    const-string v1, "inapp"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_32

    .line 659
    new-instance v0, Lfr/testudo/spacecorsair/billing/IabException;

    const/16 v1, -0x3f2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Items of type \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lfr/testudo/spacecorsair/billing/Purchase;->mItemType:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' can\'t be consumed."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lfr/testudo/spacecorsair/billing/IabException;-><init>(ILjava/lang/String;)V

    throw v0

    .line 663
    :cond_32
    :try_start_32
    invoke-virtual {p1}, Lfr/testudo/spacecorsair/billing/Purchase;->getToken()Ljava/lang/String;

    move-result-object v0

    .line 664
    invoke-virtual {p1}, Lfr/testudo/spacecorsair/billing/Purchase;->getSku()Ljava/lang/String;

    move-result-object v1

    .line 665
    if-eqz v0, :cond_44

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a1

    .line 666
    :cond_44
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t consume "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ". No token."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lfr/testudo/spacecorsair/billing/IabHelper;->logError(Ljava/lang/String;)V

    .line 667
    new-instance v0, Lfr/testudo/spacecorsair/billing/IabException;

    const/16 v2, -0x3ef

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "PurchaseInfo is missing token for sku: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v2, v1}, Lfr/testudo/spacecorsair/billing/IabException;-><init>(ILjava/lang/String;)V

    throw v0
    :try_end_85
    .catch Landroid/os/RemoteException; {:try_start_32 .. :try_end_85} :catch_85

    .line 678
    :catch_85
    move-exception v0

    .line 679
    new-instance v1, Lfr/testudo/spacecorsair/billing/IabException;

    const/16 v2, -0x3e9

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Remote exception while consuming. PurchaseInfo: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3, v0}, Lfr/testudo/spacecorsair/billing/IabException;-><init>(ILjava/lang/String;Ljava/lang/Exception;)V

    throw v1

    .line 670
    :cond_a1
    :try_start_a1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Consuming sku: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", token: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lfr/testudo/spacecorsair/billing/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 671
    iget-object v2, p0, Lfr/testudo/spacecorsair/billing/IabHelper;->mService:Lcom/android/vending/billing/IInAppBillingService;

    const/4 v3, 0x3

    iget-object v4, p0, Lfr/testudo/spacecorsair/billing/IabHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4, v0}, Lcom/android/vending/billing/IInAppBillingService;->b(ILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 672
    if-nez v0, :cond_e7

    .line 673
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Successfully consumed sku: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lfr/testudo/spacecorsair/billing/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 681
    return-void

    .line 675
    :cond_e7
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error consuming consuming sku "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ". "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Lfr/testudo/spacecorsair/billing/IabHelper;->getResponseDesc(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lfr/testudo/spacecorsair/billing/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 676
    new-instance v2, Lfr/testudo/spacecorsair/billing/IabException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error consuming sku "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v0, v1}, Lfr/testudo/spacecorsair/billing/IabException;-><init>(ILjava/lang/String;)V

    throw v2
    :try_end_124
    .catch Landroid/os/RemoteException; {:try_start_a1 .. :try_end_124} :catch_85
.end method

.method public consumeAsync(Lfr/testudo/spacecorsair/billing/Purchase;Lfr/testudo/spacecorsair/billing/IabHelper$OnConsumeFinishedListener;)V
    .registers 5

    .prologue
    .line 727
    const-string v0, "consume"

    invoke-virtual {p0, v0}, Lfr/testudo/spacecorsair/billing/IabHelper;->checkSetupDone(Ljava/lang/String;)V

    .line 728
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 729
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 730
    const/4 v1, 0x0

    invoke-virtual {p0, v0, p2, v1}, Lfr/testudo/spacecorsair/billing/IabHelper;->consumeAsyncInternal(Ljava/util/List;Lfr/testudo/spacecorsair/billing/IabHelper$OnConsumeFinishedListener;Lfr/testudo/spacecorsair/billing/IabHelper$OnConsumeMultiFinishedListener;)V

    .line 731
    return-void
.end method

.method public consumeAsync(Ljava/util/List;Lfr/testudo/spacecorsair/billing/IabHelper$OnConsumeMultiFinishedListener;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lfr/testudo/spacecorsair/billing/Purchase;",
            ">;",
            "Lfr/testudo/spacecorsair/billing/IabHelper$OnConsumeMultiFinishedListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 744
    const-string v0, "consume"

    invoke-virtual {p0, v0}, Lfr/testudo/spacecorsair/billing/IabHelper;->checkSetupDone(Ljava/lang/String;)V

    .line 745
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lfr/testudo/spacecorsair/billing/IabHelper;->consumeAsyncInternal(Ljava/util/List;Lfr/testudo/spacecorsair/billing/IabHelper$OnConsumeFinishedListener;Lfr/testudo/spacecorsair/billing/IabHelper$OnConsumeMultiFinishedListener;)V

    .line 746
    return-void
.end method

.method consumeAsyncInternal(Ljava/util/List;Lfr/testudo/spacecorsair/billing/IabHelper$OnConsumeFinishedListener;Lfr/testudo/spacecorsair/billing/IabHelper$OnConsumeMultiFinishedListener;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lfr/testudo/spacecorsair/billing/Purchase;",
            ">;",
            "Lfr/testudo/spacecorsair/billing/IabHelper$OnConsumeFinishedListener;",
            "Lfr/testudo/spacecorsair/billing/IabHelper$OnConsumeMultiFinishedListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 924
    new-instance v4, Landroid/os/Handler;

    invoke-direct {v4}, Landroid/os/Handler;-><init>()V

    .line 925
    const-string v0, "consume"

    invoke-virtual {p0, v0}, Lfr/testudo/spacecorsair/billing/IabHelper;->flagStartAsync(Ljava/lang/String;)V

    .line 926
    new-instance v6, Ljava/lang/Thread;

    new-instance v0, Lfr/testudo/spacecorsair/billing/IabHelper$3;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lfr/testudo/spacecorsair/billing/IabHelper$3;-><init>(Lfr/testudo/spacecorsair/billing/IabHelper;Ljava/util/List;Lfr/testudo/spacecorsair/billing/IabHelper$OnConsumeFinishedListener;Landroid/os/Handler;Lfr/testudo/spacecorsair/billing/IabHelper$OnConsumeMultiFinishedListener;)V

    invoke-direct {v6, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v6}, Ljava/lang/Thread;->start()V

    .line 955
    return-void
.end method

.method public dispose()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 283
    const-string v0, "Disposing."

    invoke-virtual {p0, v0}, Lfr/testudo/spacecorsair/billing/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 284
    const/4 v0, 0x0

    iput-boolean v0, p0, Lfr/testudo/spacecorsair/billing/IabHelper;->mSetupDone:Z

    .line 285
    iget-object v0, p0, Lfr/testudo/spacecorsair/billing/IabHelper;->mServiceConn:Landroid/content/ServiceConnection;

    if-eqz v0, :cond_23

    .line 286
    const-string v0, "Unbinding from service."

    invoke-virtual {p0, v0}, Lfr/testudo/spacecorsair/billing/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 287
    iget-object v0, p0, Lfr/testudo/spacecorsair/billing/IabHelper;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_1d

    .line 288
    iget-object v0, p0, Lfr/testudo/spacecorsair/billing/IabHelper;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lfr/testudo/spacecorsair/billing/IabHelper;->mServiceConn:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 289
    :cond_1d
    iput-object v2, p0, Lfr/testudo/spacecorsair/billing/IabHelper;->mServiceConn:Landroid/content/ServiceConnection;

    .line 290
    iput-object v2, p0, Lfr/testudo/spacecorsair/billing/IabHelper;->mService:Lcom/android/vending/billing/IInAppBillingService;

    .line 291
    iput-object v2, p0, Lfr/testudo/spacecorsair/billing/IabHelper;->mPurchaseListener:Lfr/testudo/spacecorsair/billing/IabHelper$OnIabPurchaseFinishedListener;

    .line 293
    :cond_23
    return-void
.end method

.method public enableDebugLogging(Z)V
    .registers 2

    .prologue
    .line 179
    iput-boolean p1, p0, Lfr/testudo/spacecorsair/billing/IabHelper;->mDebugLog:Z

    .line 180
    return-void
.end method

.method public enableDebugLogging(ZLjava/lang/String;)V
    .registers 3

    .prologue
    .line 174
    iput-boolean p1, p0, Lfr/testudo/spacecorsair/billing/IabHelper;->mDebugLog:Z

    .line 175
    iput-object p2, p0, Lfr/testudo/spacecorsair/billing/IabHelper;->mDebugTag:Ljava/lang/String;

    .line 176
    return-void
.end method

.method flagEndAsync()V
    .registers 3

    .prologue
    .line 825
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Ending async operation: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lfr/testudo/spacecorsair/billing/IabHelper;->mAsyncOperation:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lfr/testudo/spacecorsair/billing/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 826
    const-string v0, ""

    iput-object v0, p0, Lfr/testudo/spacecorsair/billing/IabHelper;->mAsyncOperation:Ljava/lang/String;

    .line 827
    const/4 v0, 0x0

    iput-boolean v0, p0, Lfr/testudo/spacecorsair/billing/IabHelper;->mAsyncInProgress:Z

    .line 828
    return-void
.end method

.method flagStartAsync(Ljava/lang/String;)V
    .registers 5

    .prologue
    .line 817
    iget-boolean v0, p0, Lfr/testudo/spacecorsair/billing/IabHelper;->mAsyncInProgress:Z

    if-eqz v0, :cond_2f

    .line 818
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t start async operation ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") because another async operation("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lfr/testudo/spacecorsair/billing/IabHelper;->mAsyncOperation:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") is in progress."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 819
    :cond_2f
    iput-object p1, p0, Lfr/testudo/spacecorsair/billing/IabHelper;->mAsyncOperation:Ljava/lang/String;

    .line 820
    const/4 v0, 0x1

    iput-boolean v0, p0, Lfr/testudo/spacecorsair/billing/IabHelper;->mAsyncInProgress:Z

    .line 821
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Starting async operation: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lfr/testudo/spacecorsair/billing/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 822
    return-void
.end method

.method getResponseCodeFromBundle(Landroid/os/Bundle;)I
    .registers 6

    .prologue
    .line 783
    const-string v0, "RESPONSE_CODE"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 784
    if-nez v0, :cond_f

    .line 785
    const-string v0, "Bundle with null response code, assuming OK (known issue)"

    invoke-virtual {p0, v0}, Lfr/testudo/spacecorsair/billing/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 786
    const/4 v0, 0x0

    .line 790
    :goto_e
    return v0

    .line 787
    :cond_f
    instance-of v1, v0, Ljava/lang/Integer;

    if-eqz v1, :cond_1a

    .line 788
    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_e

    .line 789
    :cond_1a
    instance-of v1, v0, Ljava/lang/Long;

    if-eqz v1, :cond_26

    .line 790
    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    long-to-int v0, v0

    goto :goto_e

    .line 792
    :cond_26
    const-string v1, "Unexpected type for bundle response code."

    invoke-virtual {p0, v1}, Lfr/testudo/spacecorsair/billing/IabHelper;->logError(Ljava/lang/String;)V

    .line 793
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lfr/testudo/spacecorsair/billing/IabHelper;->logError(Ljava/lang/String;)V

    .line 794
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected type for bundle response code: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method getResponseCodeFromIntent(Landroid/content/Intent;)I
    .registers 6

    .prologue
    .line 801
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "RESPONSE_CODE"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 802
    if-nez v0, :cond_13

    .line 803
    const-string v0, "Intent with no response code, assuming OK (known issue)"

    invoke-virtual {p0, v0}, Lfr/testudo/spacecorsair/billing/IabHelper;->logError(Ljava/lang/String;)V

    .line 804
    const/4 v0, 0x0

    .line 808
    :goto_12
    return v0

    .line 805
    :cond_13
    instance-of v1, v0, Ljava/lang/Integer;

    if-eqz v1, :cond_1e

    .line 806
    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_12

    .line 807
    :cond_1e
    instance-of v1, v0, Ljava/lang/Long;

    if-eqz v1, :cond_2a

    .line 808
    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    long-to-int v0, v0

    goto :goto_12

    .line 810
    :cond_2a
    const-string v1, "Unexpected type for intent response code."

    invoke-virtual {p0, v1}, Lfr/testudo/spacecorsair/billing/IabHelper;->logError(Ljava/lang/String;)V

    .line 811
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lfr/testudo/spacecorsair/billing/IabHelper;->logError(Ljava/lang/String;)V

    .line 812
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected type for intent response code: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public handleActivityResult(IILandroid/content/Intent;)Z
    .registers 13

    .prologue
    const/4 v0, 0x0

    const/4 v5, -0x1

    const/16 v8, -0x3ea

    const/4 v1, 0x1

    const/4 v7, 0x0

    .line 436
    iget v2, p0, Lfr/testudo/spacecorsair/billing/IabHelper;->mRequestCode:I

    if-eq p1, v2, :cond_b

    .line 516
    :goto_a
    return v0

    .line 439
    :cond_b
    const-string v2, "handleActivityResult"

    invoke-virtual {p0, v2}, Lfr/testudo/spacecorsair/billing/IabHelper;->checkSetupDone(Ljava/lang/String;)V

    .line 442
    invoke-virtual {p0}, Lfr/testudo/spacecorsair/billing/IabHelper;->flagEndAsync()V

    .line 444
    if-nez p3, :cond_2c

    .line 445
    const-string v0, "Null data in IAB activity result."

    invoke-virtual {p0, v0}, Lfr/testudo/spacecorsair/billing/IabHelper;->logError(Ljava/lang/String;)V

    .line 446
    new-instance v0, Lfr/testudo/spacecorsair/billing/IabResult;

    const-string v2, "Null data in IAB result"

    invoke-direct {v0, v8, v2}, Lfr/testudo/spacecorsair/billing/IabResult;-><init>(ILjava/lang/String;)V

    .line 447
    iget-object v2, p0, Lfr/testudo/spacecorsair/billing/IabHelper;->mPurchaseListener:Lfr/testudo/spacecorsair/billing/IabHelper$OnIabPurchaseFinishedListener;

    if-eqz v2, :cond_2a

    .line 448
    iget-object v2, p0, Lfr/testudo/spacecorsair/billing/IabHelper;->mPurchaseListener:Lfr/testudo/spacecorsair/billing/IabHelper$OnIabPurchaseFinishedListener;

    invoke-interface {v2, v0, v7}, Lfr/testudo/spacecorsair/billing/IabHelper$OnIabPurchaseFinishedListener;->onIabPurchaseFinished(Lfr/testudo/spacecorsair/billing/IabResult;Lfr/testudo/spacecorsair/billing/Purchase;)V

    :cond_2a
    move v0, v1

    .line 449
    goto :goto_a

    .line 452
    :cond_2c
    invoke-virtual {p0, p3}, Lfr/testudo/spacecorsair/billing/IabHelper;->getResponseCodeFromIntent(Landroid/content/Intent;)I

    move-result v2

    .line 453
    const-string v3, "INAPP_PURCHASE_DATA"

    invoke-virtual {p3, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 454
    const-string v4, "INAPP_DATA_SIGNATURE"

    invoke-virtual {p3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 456
    if-ne p2, v5, :cond_162

    if-nez v2, :cond_162

    .line 457
    const-string v2, "Successful resultcode from purchase activity."

    invoke-virtual {p0, v2}, Lfr/testudo/spacecorsair/billing/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 458
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Purchase data: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lfr/testudo/spacecorsair/billing/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 459
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Data signature: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lfr/testudo/spacecorsair/billing/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 460
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Extras: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lfr/testudo/spacecorsair/billing/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 461
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Expected item type: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v5, p0, Lfr/testudo/spacecorsair/billing/IabHelper;->mPurchasingItemType:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lfr/testudo/spacecorsair/billing/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 463
    if-eqz v3, :cond_a7

    if-nez v4, :cond_df

    .line 464
    :cond_a7
    const-string v0, "BUG: either purchaseData or dataSignature is null."

    invoke-virtual {p0, v0}, Lfr/testudo/spacecorsair/billing/IabHelper;->logError(Ljava/lang/String;)V

    .line 465
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Extras: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lfr/testudo/spacecorsair/billing/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 466
    new-instance v0, Lfr/testudo/spacecorsair/billing/IabResult;

    const/16 v2, -0x3f0

    const-string v3, "IAB returned null purchaseData or dataSignature"

    invoke-direct {v0, v2, v3}, Lfr/testudo/spacecorsair/billing/IabResult;-><init>(ILjava/lang/String;)V

    .line 467
    iget-object v2, p0, Lfr/testudo/spacecorsair/billing/IabHelper;->mPurchaseListener:Lfr/testudo/spacecorsair/billing/IabHelper$OnIabPurchaseFinishedListener;

    if-eqz v2, :cond_dc

    .line 468
    iget-object v2, p0, Lfr/testudo/spacecorsair/billing/IabHelper;->mPurchaseListener:Lfr/testudo/spacecorsair/billing/IabHelper$OnIabPurchaseFinishedListener;

    invoke-interface {v2, v0, v7}, Lfr/testudo/spacecorsair/billing/IabHelper$OnIabPurchaseFinishedListener;->onIabPurchaseFinished(Lfr/testudo/spacecorsair/billing/IabResult;Lfr/testudo/spacecorsair/billing/Purchase;)V

    :cond_dc
    move v0, v1

    .line 469
    goto/16 :goto_a

    .line 474
    :cond_df
    :try_start_df
    new-instance v2, Lfr/testudo/spacecorsair/billing/Purchase;

    iget-object v5, p0, Lfr/testudo/spacecorsair/billing/IabHelper;->mPurchasingItemType:Ljava/lang/String;

    invoke-direct {v2, v5, v3, v4}, Lfr/testudo/spacecorsair/billing/Purchase;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 475
    invoke-virtual {v2}, Lfr/testudo/spacecorsair/billing/Purchase;->getSku()Ljava/lang/String;

    move-result-object v5

    .line 478
    iget-object v6, p0, Lfr/testudo/spacecorsair/billing/IabHelper;->mSignatureBase64:Ljava/lang/String;

    invoke-static {v6, v3, v4}, Lfr/testudo/spacecorsair/billing/Security;->verifyPurchase(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_12e

    .line 479
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Purchase signature verification FAILED for sku "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lfr/testudo/spacecorsair/billing/IabHelper;->logError(Ljava/lang/String;)V

    .line 480
    new-instance v0, Lfr/testudo/spacecorsair/billing/IabResult;

    const/16 v3, -0x3eb

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Signature verification failed for sku "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v3, v4}, Lfr/testudo/spacecorsair/billing/IabResult;-><init>(ILjava/lang/String;)V

    .line 481
    iget-object v3, p0, Lfr/testudo/spacecorsair/billing/IabHelper;->mPurchaseListener:Lfr/testudo/spacecorsair/billing/IabHelper$OnIabPurchaseFinishedListener;

    if-eqz v3, :cond_12b

    .line 482
    iget-object v3, p0, Lfr/testudo/spacecorsair/billing/IabHelper;->mPurchaseListener:Lfr/testudo/spacecorsair/billing/IabHelper$OnIabPurchaseFinishedListener;

    invoke-interface {v3, v0, v2}, Lfr/testudo/spacecorsair/billing/IabHelper$OnIabPurchaseFinishedListener;->onIabPurchaseFinished(Lfr/testudo/spacecorsair/billing/IabResult;Lfr/testudo/spacecorsair/billing/Purchase;)V

    :cond_12b
    move v0, v1

    .line 483
    goto/16 :goto_a

    .line 485
    :cond_12e
    const-string v3, "Purchase signature successfully verified."

    invoke-virtual {p0, v3}, Lfr/testudo/spacecorsair/billing/IabHelper;->logDebug(Ljava/lang/String;)V
    :try_end_133
    .catch Lorg/json/JSONException; {:try_start_df .. :try_end_133} :catch_146

    .line 495
    iget-object v3, p0, Lfr/testudo/spacecorsair/billing/IabHelper;->mPurchaseListener:Lfr/testudo/spacecorsair/billing/IabHelper$OnIabPurchaseFinishedListener;

    if-eqz v3, :cond_143

    .line 496
    iget-object v3, p0, Lfr/testudo/spacecorsair/billing/IabHelper;->mPurchaseListener:Lfr/testudo/spacecorsair/billing/IabHelper$OnIabPurchaseFinishedListener;

    new-instance v4, Lfr/testudo/spacecorsair/billing/IabResult;

    const-string v5, "Success"

    invoke-direct {v4, v0, v5}, Lfr/testudo/spacecorsair/billing/IabResult;-><init>(ILjava/lang/String;)V

    invoke-interface {v3, v4, v2}, Lfr/testudo/spacecorsair/billing/IabHelper$OnIabPurchaseFinishedListener;->onIabPurchaseFinished(Lfr/testudo/spacecorsair/billing/IabResult;Lfr/testudo/spacecorsair/billing/Purchase;)V

    :cond_143
    :goto_143
    move v0, v1

    .line 516
    goto/16 :goto_a

    .line 486
    :catch_146
    move-exception v0

    .line 487
    const-string v2, "Failed to parse purchase data."

    invoke-virtual {p0, v2}, Lfr/testudo/spacecorsair/billing/IabHelper;->logError(Ljava/lang/String;)V

    .line 488
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 489
    new-instance v0, Lfr/testudo/spacecorsair/billing/IabResult;

    const-string v2, "Failed to parse purchase data."

    invoke-direct {v0, v8, v2}, Lfr/testudo/spacecorsair/billing/IabResult;-><init>(ILjava/lang/String;)V

    .line 490
    iget-object v2, p0, Lfr/testudo/spacecorsair/billing/IabHelper;->mPurchaseListener:Lfr/testudo/spacecorsair/billing/IabHelper$OnIabPurchaseFinishedListener;

    if-eqz v2, :cond_15f

    .line 491
    iget-object v2, p0, Lfr/testudo/spacecorsair/billing/IabHelper;->mPurchaseListener:Lfr/testudo/spacecorsair/billing/IabHelper$OnIabPurchaseFinishedListener;

    invoke-interface {v2, v0, v7}, Lfr/testudo/spacecorsair/billing/IabHelper$OnIabPurchaseFinishedListener;->onIabPurchaseFinished(Lfr/testudo/spacecorsair/billing/IabResult;Lfr/testudo/spacecorsair/billing/Purchase;)V

    :cond_15f
    move v0, v1

    .line 492
    goto/16 :goto_a

    .line 498
    :cond_162
    if-ne p2, v5, :cond_18f

    .line 500
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Result code was OK but in-app billing response was not OK: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v2}, Lfr/testudo/spacecorsair/billing/IabHelper;->getResponseDesc(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lfr/testudo/spacecorsair/billing/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 501
    iget-object v0, p0, Lfr/testudo/spacecorsair/billing/IabHelper;->mPurchaseListener:Lfr/testudo/spacecorsair/billing/IabHelper$OnIabPurchaseFinishedListener;

    if-eqz v0, :cond_143

    .line 502
    new-instance v0, Lfr/testudo/spacecorsair/billing/IabResult;

    const-string v3, "Problem purchashing item."

    invoke-direct {v0, v2, v3}, Lfr/testudo/spacecorsair/billing/IabResult;-><init>(ILjava/lang/String;)V

    .line 503
    iget-object v2, p0, Lfr/testudo/spacecorsair/billing/IabHelper;->mPurchaseListener:Lfr/testudo/spacecorsair/billing/IabHelper$OnIabPurchaseFinishedListener;

    invoke-interface {v2, v0, v7}, Lfr/testudo/spacecorsair/billing/IabHelper$OnIabPurchaseFinishedListener;->onIabPurchaseFinished(Lfr/testudo/spacecorsair/billing/IabResult;Lfr/testudo/spacecorsair/billing/Purchase;)V

    goto :goto_143

    .line 505
    :cond_18f
    if-nez p2, :cond_1be

    .line 506
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Purchase canceled - Response: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v2}, Lfr/testudo/spacecorsair/billing/IabHelper;->getResponseDesc(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lfr/testudo/spacecorsair/billing/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 507
    new-instance v0, Lfr/testudo/spacecorsair/billing/IabResult;

    const/16 v2, -0x3ed

    const-string v3, "User canceled."

    invoke-direct {v0, v2, v3}, Lfr/testudo/spacecorsair/billing/IabResult;-><init>(ILjava/lang/String;)V

    .line 508
    iget-object v2, p0, Lfr/testudo/spacecorsair/billing/IabHelper;->mPurchaseListener:Lfr/testudo/spacecorsair/billing/IabHelper$OnIabPurchaseFinishedListener;

    if-eqz v2, :cond_143

    .line 509
    iget-object v2, p0, Lfr/testudo/spacecorsair/billing/IabHelper;->mPurchaseListener:Lfr/testudo/spacecorsair/billing/IabHelper$OnIabPurchaseFinishedListener;

    invoke-interface {v2, v0, v7}, Lfr/testudo/spacecorsair/billing/IabHelper$OnIabPurchaseFinishedListener;->onIabPurchaseFinished(Lfr/testudo/spacecorsair/billing/IabResult;Lfr/testudo/spacecorsair/billing/Purchase;)V

    goto :goto_143

    .line 511
    :cond_1be
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Purchase failed. Result code: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ". Response: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v2}, Lfr/testudo/spacecorsair/billing/IabHelper;->getResponseDesc(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lfr/testudo/spacecorsair/billing/IabHelper;->logError(Ljava/lang/String;)V

    .line 512
    new-instance v0, Lfr/testudo/spacecorsair/billing/IabResult;

    const/16 v2, -0x3ee

    const-string v3, "Unknown purchase response."

    invoke-direct {v0, v2, v3}, Lfr/testudo/spacecorsair/billing/IabResult;-><init>(ILjava/lang/String;)V

    .line 513
    iget-object v2, p0, Lfr/testudo/spacecorsair/billing/IabHelper;->mPurchaseListener:Lfr/testudo/spacecorsair/billing/IabHelper$OnIabPurchaseFinishedListener;

    if-eqz v2, :cond_143

    .line 514
    iget-object v2, p0, Lfr/testudo/spacecorsair/billing/IabHelper;->mPurchaseListener:Lfr/testudo/spacecorsair/billing/IabHelper$OnIabPurchaseFinishedListener;

    invoke-interface {v2, v0, v7}, Lfr/testudo/spacecorsair/billing/IabHelper$OnIabPurchaseFinishedListener;->onIabPurchaseFinished(Lfr/testudo/spacecorsair/billing/IabResult;Lfr/testudo/spacecorsair/billing/Purchase;)V

    goto/16 :goto_143
.end method

.method public launchPurchaseFlow(Landroid/app/Activity;Ljava/lang/String;ILfr/testudo/spacecorsair/billing/IabHelper$OnIabPurchaseFinishedListener;)V
    .registers 11

    .prologue
    .line 326
    const-string v5, ""

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lfr/testudo/spacecorsair/billing/IabHelper;->launchPurchaseFlow(Landroid/app/Activity;Ljava/lang/String;ILfr/testudo/spacecorsair/billing/IabHelper$OnIabPurchaseFinishedListener;Ljava/lang/String;)V

    .line 327
    return-void
.end method

.method public launchPurchaseFlow(Landroid/app/Activity;Ljava/lang/String;ILfr/testudo/spacecorsair/billing/IabHelper$OnIabPurchaseFinishedListener;Ljava/lang/String;)V
    .registers 13

    .prologue
    .line 330
    const-string v3, "inapp"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-virtual/range {v0 .. v6}, Lfr/testudo/spacecorsair/billing/IabHelper;->launchPurchaseFlow(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;ILfr/testudo/spacecorsair/billing/IabHelper$OnIabPurchaseFinishedListener;Ljava/lang/String;)V

    .line 331
    return-void
.end method

.method public launchPurchaseFlow(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;ILfr/testudo/spacecorsair/billing/IabHelper$OnIabPurchaseFinishedListener;Ljava/lang/String;)V
    .registers 15

    .prologue
    const/4 v7, 0x0

    .line 370
    const-string v0, "launchPurchaseFlow"

    invoke-virtual {p0, v0}, Lfr/testudo/spacecorsair/billing/IabHelper;->checkSetupDone(Ljava/lang/String;)V

    .line 371
    const-string v0, "launchPurchaseFlow"

    invoke-virtual {p0, v0}, Lfr/testudo/spacecorsair/billing/IabHelper;->flagStartAsync(Ljava/lang/String;)V

    .line 374
    const-string v0, "subs"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_26

    iget-boolean v0, p0, Lfr/testudo/spacecorsair/billing/IabHelper;->mSubscriptionsSupported:Z

    if-nez v0, :cond_26

    .line 375
    new-instance v0, Lfr/testudo/spacecorsair/billing/IabResult;

    const/16 v1, -0x3f1

    const-string v2, "Subscriptions are not available."

    invoke-direct {v0, v1, v2}, Lfr/testudo/spacecorsair/billing/IabResult;-><init>(ILjava/lang/String;)V

    .line 376
    if-eqz p5, :cond_25

    .line 377
    invoke-interface {p5, v0, v7}, Lfr/testudo/spacecorsair/billing/IabHelper$OnIabPurchaseFinishedListener;->onIabPurchaseFinished(Lfr/testudo/spacecorsair/billing/IabResult;Lfr/testudo/spacecorsair/billing/Purchase;)V

    .line 415
    :cond_25
    :goto_25
    return-void

    .line 382
    :cond_26
    :try_start_26
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Constructing buy intent for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", item type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lfr/testudo/spacecorsair/billing/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 383
    iget-object v0, p0, Lfr/testudo/spacecorsair/billing/IabHelper;->mService:Lcom/android/vending/billing/IInAppBillingService;

    const/4 v1, 0x3

    iget-object v2, p0, Lfr/testudo/spacecorsair/billing/IabHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    move-object v3, p2

    move-object v4, p3

    move-object v5, p6

    invoke-interface/range {v0 .. v5}, Lcom/android/vending/billing/IInAppBillingService;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 384
    invoke-virtual {p0, v0}, Lfr/testudo/spacecorsair/billing/IabHelper;->getResponseCodeFromBundle(Landroid/os/Bundle;)I

    move-result v1

    .line 385
    if-eqz v1, :cond_ae

    .line 386
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to buy item, Error response: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v1}, Lfr/testudo/spacecorsair/billing/IabHelper;->getResponseDesc(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lfr/testudo/spacecorsair/billing/IabHelper;->logError(Ljava/lang/String;)V

    .line 388
    new-instance v0, Lfr/testudo/spacecorsair/billing/IabResult;

    const-string v2, "Unable to buy item"

    invoke-direct {v0, v1, v2}, Lfr/testudo/spacecorsair/billing/IabResult;-><init>(ILjava/lang/String;)V

    .line 389
    if-eqz p5, :cond_25

    .line 390
    const/4 v1, 0x0

    invoke-interface {p5, v0, v1}, Lfr/testudo/spacecorsair/billing/IabHelper$OnIabPurchaseFinishedListener;->onIabPurchaseFinished(Lfr/testudo/spacecorsair/billing/IabResult;Lfr/testudo/spacecorsair/billing/Purchase;)V
    :try_end_83
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_26 .. :try_end_83} :catch_84
    .catch Landroid/os/RemoteException; {:try_start_26 .. :try_end_83} :catch_107

    goto :goto_25

    .line 400
    :catch_84
    move-exception v0

    .line 401
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SendIntentException while launching purchase flow for sku "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lfr/testudo/spacecorsair/billing/IabHelper;->logError(Ljava/lang/String;)V

    .line 402
    invoke-virtual {v0}, Landroid/content/IntentSender$SendIntentException;->printStackTrace()V

    .line 404
    new-instance v0, Lfr/testudo/spacecorsair/billing/IabResult;

    const/16 v1, -0x3ec

    const-string v2, "Failed to send intent."

    invoke-direct {v0, v1, v2}, Lfr/testudo/spacecorsair/billing/IabResult;-><init>(ILjava/lang/String;)V

    .line 405
    if-eqz p5, :cond_25

    .line 406
    invoke-interface {p5, v0, v7}, Lfr/testudo/spacecorsair/billing/IabHelper$OnIabPurchaseFinishedListener;->onIabPurchaseFinished(Lfr/testudo/spacecorsair/billing/IabResult;Lfr/testudo/spacecorsair/billing/Purchase;)V

    goto/16 :goto_25

    .line 394
    :cond_ae
    :try_start_ae
    const-string v1, "BUY_INTENT"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/app/PendingIntent;

    .line 395
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Launching buy intent for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ". Request code: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lfr/testudo/spacecorsair/billing/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 396
    iput p4, p0, Lfr/testudo/spacecorsair/billing/IabHelper;->mRequestCode:I

    .line 397
    iput-object p5, p0, Lfr/testudo/spacecorsair/billing/IabHelper;->mPurchaseListener:Lfr/testudo/spacecorsair/billing/IabHelper$OnIabPurchaseFinishedListener;

    .line 398
    iput-object p3, p0, Lfr/testudo/spacecorsair/billing/IabHelper;->mPurchasingItemType:Ljava/lang/String;

    .line 399
    invoke-virtual {v0}, Landroid/app/PendingIntent;->getIntentSender()Landroid/content/IntentSender;

    move-result-object v1

    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v6

    move-object v0, p1

    move v2, p4

    invoke-virtual/range {v0 .. v6}, Landroid/app/Activity;->startIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;III)V
    :try_end_105
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_ae .. :try_end_105} :catch_84
    .catch Landroid/os/RemoteException; {:try_start_ae .. :try_end_105} :catch_107

    goto/16 :goto_25

    .line 407
    :catch_107
    move-exception v0

    .line 408
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RemoteException while launching purchase flow for sku "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lfr/testudo/spacecorsair/billing/IabHelper;->logError(Ljava/lang/String;)V

    .line 409
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 411
    new-instance v0, Lfr/testudo/spacecorsair/billing/IabResult;

    const/16 v1, -0x3e9

    const-string v2, "Remote exception while starting purchase flow"

    invoke-direct {v0, v1, v2}, Lfr/testudo/spacecorsair/billing/IabResult;-><init>(ILjava/lang/String;)V

    .line 412
    if-eqz p5, :cond_25

    .line 413
    invoke-interface {p5, v0, v7}, Lfr/testudo/spacecorsair/billing/IabHelper$OnIabPurchaseFinishedListener;->onIabPurchaseFinished(Lfr/testudo/spacecorsair/billing/IabResult;Lfr/testudo/spacecorsair/billing/Purchase;)V

    goto/16 :goto_25
.end method

.method public launchSubscriptionPurchaseFlow(Landroid/app/Activity;Ljava/lang/String;ILfr/testudo/spacecorsair/billing/IabHelper$OnIabPurchaseFinishedListener;)V
    .registers 11

    .prologue
    .line 334
    const-string v5, ""

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lfr/testudo/spacecorsair/billing/IabHelper;->launchSubscriptionPurchaseFlow(Landroid/app/Activity;Ljava/lang/String;ILfr/testudo/spacecorsair/billing/IabHelper$OnIabPurchaseFinishedListener;Ljava/lang/String;)V

    .line 335
    return-void
.end method

.method public launchSubscriptionPurchaseFlow(Landroid/app/Activity;Ljava/lang/String;ILfr/testudo/spacecorsair/billing/IabHelper$OnIabPurchaseFinishedListener;Ljava/lang/String;)V
    .registers 13

    .prologue
    .line 338
    const-string v3, "subs"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-virtual/range {v0 .. v6}, Lfr/testudo/spacecorsair/billing/IabHelper;->launchPurchaseFlow(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;ILfr/testudo/spacecorsair/billing/IabHelper$OnIabPurchaseFinishedListener;Ljava/lang/String;)V

    .line 339
    return-void
.end method

.method logDebug(Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 958
    iget-boolean v0, p0, Lfr/testudo/spacecorsair/billing/IabHelper;->mDebugLog:Z

    if-eqz v0, :cond_9

    .line 959
    iget-object v0, p0, Lfr/testudo/spacecorsair/billing/IabHelper;->mDebugTag:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 960
    :cond_9
    return-void
.end method

.method logError(Ljava/lang/String;)V
    .registers 5

    .prologue
    .line 963
    iget-object v0, p0, Lfr/testudo/spacecorsair/billing/IabHelper;->mDebugTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "In-app billing error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 964
    return-void
.end method

.method logWarn(Ljava/lang/String;)V
    .registers 5

    .prologue
    .line 967
    iget-object v0, p0, Lfr/testudo/spacecorsair/billing/IabHelper;->mDebugTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "In-app billing warning: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 968
    return-void
.end method

.method public queryInventory(ZLjava/util/List;)Lfr/testudo/spacecorsair/billing/Inventory;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lfr/testudo/spacecorsair/billing/Inventory;"
        }
    .end annotation

    .prologue
    .line 520
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lfr/testudo/spacecorsair/billing/IabHelper;->queryInventory(ZLjava/util/List;Ljava/util/List;)Lfr/testudo/spacecorsair/billing/Inventory;

    move-result-object v0

    return-object v0
.end method

.method public queryInventory(ZLjava/util/List;Ljava/util/List;)Lfr/testudo/spacecorsair/billing/Inventory;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lfr/testudo/spacecorsair/billing/Inventory;"
        }
    .end annotation

    .prologue
    .line 543
    const-string v0, "queryInventory"

    invoke-virtual {p0, v0}, Lfr/testudo/spacecorsair/billing/IabHelper;->checkSetupDone(Ljava/lang/String;)V

    .line 545
    :try_start_5
    new-instance v0, Lfr/testudo/spacecorsair/billing/Inventory;

    invoke-direct {v0}, Lfr/testudo/spacecorsair/billing/Inventory;-><init>()V

    .line 546
    const-string v1, "inapp"

    invoke-virtual {p0, v0, v1}, Lfr/testudo/spacecorsair/billing/IabHelper;->queryPurchases(Lfr/testudo/spacecorsair/billing/Inventory;Ljava/lang/String;)I

    move-result v1

    .line 547
    if-eqz v1, :cond_25

    .line 548
    new-instance v0, Lfr/testudo/spacecorsair/billing/IabException;

    const-string v2, "Error refreshing inventory (querying owned items)."

    invoke-direct {v0, v1, v2}, Lfr/testudo/spacecorsair/billing/IabException;-><init>(ILjava/lang/String;)V

    throw v0
    :try_end_1a
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_1a} :catch_1a
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_1a} :catch_37

    .line 574
    :catch_1a
    move-exception v0

    .line 575
    new-instance v1, Lfr/testudo/spacecorsair/billing/IabException;

    const/16 v2, -0x3e9

    const-string v3, "Remote exception while refreshing inventory."

    invoke-direct {v1, v2, v3, v0}, Lfr/testudo/spacecorsair/billing/IabException;-><init>(ILjava/lang/String;Ljava/lang/Exception;)V

    throw v1

    .line 551
    :cond_25
    if-eqz p1, :cond_42

    .line 552
    :try_start_27
    const-string v1, "inapp"

    invoke-virtual {p0, v1, v0, p2}, Lfr/testudo/spacecorsair/billing/IabHelper;->querySkuDetails(Ljava/lang/String;Lfr/testudo/spacecorsair/billing/Inventory;Ljava/util/List;)I

    move-result v1

    .line 553
    if-eqz v1, :cond_42

    .line 554
    new-instance v0, Lfr/testudo/spacecorsair/billing/IabException;

    const-string v2, "Error refreshing inventory (querying prices of items)."

    invoke-direct {v0, v1, v2}, Lfr/testudo/spacecorsair/billing/IabException;-><init>(ILjava/lang/String;)V

    throw v0
    :try_end_37
    .catch Landroid/os/RemoteException; {:try_start_27 .. :try_end_37} :catch_1a
    .catch Lorg/json/JSONException; {:try_start_27 .. :try_end_37} :catch_37

    .line 576
    :catch_37
    move-exception v0

    .line 577
    new-instance v1, Lfr/testudo/spacecorsair/billing/IabException;

    const/16 v2, -0x3ea

    const-string v3, "Error parsing JSON response while refreshing inventory."

    invoke-direct {v1, v2, v3, v0}, Lfr/testudo/spacecorsair/billing/IabException;-><init>(ILjava/lang/String;Ljava/lang/Exception;)V

    throw v1

    .line 559
    :cond_42
    :try_start_42
    iget-boolean v1, p0, Lfr/testudo/spacecorsair/billing/IabHelper;->mSubscriptionsSupported:Z

    if-eqz v1, :cond_68

    .line 560
    const-string v1, "subs"

    invoke-virtual {p0, v0, v1}, Lfr/testudo/spacecorsair/billing/IabHelper;->queryPurchases(Lfr/testudo/spacecorsair/billing/Inventory;Ljava/lang/String;)I

    move-result v1

    .line 561
    if-eqz v1, :cond_56

    .line 562
    new-instance v0, Lfr/testudo/spacecorsair/billing/IabException;

    const-string v2, "Error refreshing inventory (querying owned subscriptions)."

    invoke-direct {v0, v1, v2}, Lfr/testudo/spacecorsair/billing/IabException;-><init>(ILjava/lang/String;)V

    throw v0

    .line 565
    :cond_56
    if-eqz p1, :cond_68

    .line 566
    const-string v1, "subs"

    invoke-virtual {p0, v1, v0, p2}, Lfr/testudo/spacecorsair/billing/IabHelper;->querySkuDetails(Ljava/lang/String;Lfr/testudo/spacecorsair/billing/Inventory;Ljava/util/List;)I

    move-result v1

    .line 567
    if-eqz v1, :cond_68

    .line 568
    new-instance v0, Lfr/testudo/spacecorsair/billing/IabException;

    const-string v2, "Error refreshing inventory (querying prices of subscriptions)."

    invoke-direct {v0, v1, v2}, Lfr/testudo/spacecorsair/billing/IabException;-><init>(ILjava/lang/String;)V

    throw v0
    :try_end_68
    .catch Landroid/os/RemoteException; {:try_start_42 .. :try_end_68} :catch_1a
    .catch Lorg/json/JSONException; {:try_start_42 .. :try_end_68} :catch_37

    .line 573
    :cond_68
    return-object v0
.end method

.method public queryInventoryAsync(Lfr/testudo/spacecorsair/billing/IabHelper$QueryInventoryFinishedListener;)V
    .registers 4

    .prologue
    .line 637
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, p1}, Lfr/testudo/spacecorsair/billing/IabHelper;->queryInventoryAsync(ZLjava/util/List;Lfr/testudo/spacecorsair/billing/IabHelper$QueryInventoryFinishedListener;)V

    .line 638
    return-void
.end method

.method public queryInventoryAsync(ZLfr/testudo/spacecorsair/billing/IabHelper$QueryInventoryFinishedListener;)V
    .registers 4

    .prologue
    .line 641
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lfr/testudo/spacecorsair/billing/IabHelper;->queryInventoryAsync(ZLjava/util/List;Lfr/testudo/spacecorsair/billing/IabHelper$QueryInventoryFinishedListener;)V

    .line 642
    return-void
.end method

.method public queryInventoryAsync(ZLjava/util/List;Lfr/testudo/spacecorsair/billing/IabHelper$QueryInventoryFinishedListener;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lfr/testudo/spacecorsair/billing/IabHelper$QueryInventoryFinishedListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 610
    new-instance v4, Landroid/os/Handler;

    invoke-direct {v4}, Landroid/os/Handler;-><init>()V

    .line 611
    const-string v0, "queryInventory"

    invoke-virtual {p0, v0}, Lfr/testudo/spacecorsair/billing/IabHelper;->checkSetupDone(Ljava/lang/String;)V

    .line 612
    const-string v0, "refresh inventory"

    invoke-virtual {p0, v0}, Lfr/testudo/spacecorsair/billing/IabHelper;->flagStartAsync(Ljava/lang/String;)V

    .line 613
    new-instance v6, Ljava/lang/Thread;

    new-instance v0, Lfr/testudo/spacecorsair/billing/IabHelper$2;

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lfr/testudo/spacecorsair/billing/IabHelper$2;-><init>(Lfr/testudo/spacecorsair/billing/IabHelper;ZLjava/util/List;Landroid/os/Handler;Lfr/testudo/spacecorsair/billing/IabHelper$QueryInventoryFinishedListener;)V

    invoke-direct {v6, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v6}, Ljava/lang/Thread;->start()V

    .line 634
    return-void
.end method

.method queryPurchases(Lfr/testudo/spacecorsair/billing/Inventory;Ljava/lang/String;)I
    .registers 15

    .prologue
    const/4 v3, 0x0

    .line 832
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Querying owned items, item type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lfr/testudo/spacecorsair/billing/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 833
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Package name: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lfr/testudo/spacecorsair/billing/IabHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lfr/testudo/spacecorsair/billing/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 835
    const/4 v0, 0x0

    move v1, v3

    .line 838
    :goto_35
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Calling getPurchases with continuation token: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lfr/testudo/spacecorsair/billing/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 839
    iget-object v2, p0, Lfr/testudo/spacecorsair/billing/IabHelper;->mService:Lcom/android/vending/billing/IInAppBillingService;

    const/4 v4, 0x3

    iget-object v5, p0, Lfr/testudo/spacecorsair/billing/IabHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v4, v5, p2, v0}, Lcom/android/vending/billing/IInAppBillingService;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v6

    .line 841
    invoke-virtual {p0, v6}, Lfr/testudo/spacecorsair/billing/IabHelper;->getResponseCodeFromBundle(Landroid/os/Bundle;)I

    move-result v0

    .line 842
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Owned items response: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lfr/testudo/spacecorsair/billing/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 843
    if-eqz v0, :cond_94

    .line 844
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getPurchases() failed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0}, Lfr/testudo/spacecorsair/billing/IabHelper;->getResponseDesc(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lfr/testudo/spacecorsair/billing/IabHelper;->logDebug(Ljava/lang/String;)V

    move v3, v0

    .line 883
    :cond_93
    :goto_93
    return v3

    .line 847
    :cond_94
    const-string v0, "INAPP_PURCHASE_ITEM_LIST"

    invoke-virtual {v6, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_ac

    const-string v0, "INAPP_PURCHASE_DATA_LIST"

    invoke-virtual {v6, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_ac

    const-string v0, "INAPP_DATA_SIGNATURE_LIST"

    invoke-virtual {v6, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_b4

    .line 848
    :cond_ac
    const-string v0, "Bundle returned from getPurchases() doesn\'t contain required fields."

    invoke-virtual {p0, v0}, Lfr/testudo/spacecorsair/billing/IabHelper;->logError(Ljava/lang/String;)V

    .line 849
    const/16 v3, -0x3ea

    goto :goto_93

    .line 852
    :cond_b4
    const-string v0, "INAPP_PURCHASE_ITEM_LIST"

    invoke-virtual {v6, v0}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v7

    .line 853
    const-string v0, "INAPP_PURCHASE_DATA_LIST"

    invoke-virtual {v6, v0}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v8

    .line 854
    const-string v0, "INAPP_DATA_SIGNATURE_LIST"

    invoke-virtual {v6, v0}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v9

    move v5, v3

    move v4, v1

    .line 856
    :goto_c8
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v5, v0, :cond_162

    .line 857
    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 858
    invoke-virtual {v9, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 859
    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 860
    iget-object v10, p0, Lfr/testudo/spacecorsair/billing/IabHelper;->mSignatureBase64:Ljava/lang/String;

    invoke-static {v10, v0, v1}, Lfr/testudo/spacecorsair/billing/Security;->verifyPurchase(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_12f

    .line 861
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Sku is owned: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lfr/testudo/spacecorsair/billing/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 862
    new-instance v2, Lfr/testudo/spacecorsair/billing/Purchase;

    invoke-direct {v2, p2, v0, v1}, Lfr/testudo/spacecorsair/billing/Purchase;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 864
    invoke-virtual {v2}, Lfr/testudo/spacecorsair/billing/Purchase;->getToken()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_128

    .line 865
    const-string v1, "BUG: empty/null token!"

    invoke-virtual {p0, v1}, Lfr/testudo/spacecorsair/billing/IabHelper;->logWarn(Ljava/lang/String;)V

    .line 866
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Purchase data: "

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lfr/testudo/spacecorsair/billing/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 870
    :cond_128
    invoke-virtual {p1, v2}, Lfr/testudo/spacecorsair/billing/Inventory;->addPurchase(Lfr/testudo/spacecorsair/billing/Purchase;)V

    .line 856
    :goto_12b
    add-int/lit8 v0, v5, 0x1

    move v5, v0

    goto :goto_c8

    .line 872
    :cond_12f
    const-string v2, "Purchase signature verification **FAILED**. Not adding item."

    invoke-virtual {p0, v2}, Lfr/testudo/spacecorsair/billing/IabHelper;->logWarn(Ljava/lang/String;)V

    .line 873
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "   Purchase data: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lfr/testudo/spacecorsair/billing/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 874
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "   Signature: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lfr/testudo/spacecorsair/billing/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 875
    const/4 v4, 0x1

    goto :goto_12b

    .line 879
    :cond_162
    const-string v0, "INAPP_CONTINUATION_TOKEN"

    invoke-virtual {v6, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 880
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Continuation token: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lfr/testudo/spacecorsair/billing/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 881
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_18a

    .line 883
    if-eqz v4, :cond_93

    const/16 v3, -0x3eb

    goto/16 :goto_93

    :cond_18a
    move v1, v4

    goto/16 :goto_35
.end method

.method querySkuDetails(Ljava/lang/String;Lfr/testudo/spacecorsair/billing/Inventory;Ljava/util/List;)I
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lfr/testudo/spacecorsair/billing/Inventory;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 887
    const-string v0, "Querying SKU details."

    invoke-virtual {p0, v0}, Lfr/testudo/spacecorsair/billing/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 888
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 889
    invoke-virtual {p2, p1}, Lfr/testudo/spacecorsair/billing/Inventory;->getAllOwnedSkus(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 890
    if-eqz p3, :cond_17

    .line 891
    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 893
    :cond_17
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_24

    .line 894
    const-string v0, "queryPrices: nothing to do because there are no SKUs."

    invoke-virtual {p0, v0}, Lfr/testudo/spacecorsair/billing/IabHelper;->logDebug(Ljava/lang/String;)V

    move v0, v1

    .line 920
    :goto_23
    return v0

    .line 898
    :cond_24
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 899
    const-string v3, "ITEM_ID_LIST"

    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 900
    iget-object v0, p0, Lfr/testudo/spacecorsair/billing/IabHelper;->mService:Lcom/android/vending/billing/IInAppBillingService;

    const/4 v3, 0x3

    iget-object v4, p0, Lfr/testudo/spacecorsair/billing/IabHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v3, v4, p1, v2}, Lcom/android/vending/billing/IInAppBillingService;->a(ILjava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    .line 902
    const-string v2, "DETAILS_LIST"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_6c

    .line 903
    invoke-virtual {p0, v0}, Lfr/testudo/spacecorsair/billing/IabHelper;->getResponseCodeFromBundle(Landroid/os/Bundle;)I

    move-result v0

    .line 904
    if-eqz v0, :cond_64

    .line 905
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getSkuDetails() failed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0}, Lfr/testudo/spacecorsair/billing/IabHelper;->getResponseDesc(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lfr/testudo/spacecorsair/billing/IabHelper;->logDebug(Ljava/lang/String;)V

    goto :goto_23

    .line 908
    :cond_64
    const-string v0, "getSkuDetails() returned a bundle with neither an error nor a detail list."

    invoke-virtual {p0, v0}, Lfr/testudo/spacecorsair/billing/IabHelper;->logError(Ljava/lang/String;)V

    .line 909
    const/16 v0, -0x3ea

    goto :goto_23

    .line 913
    :cond_6c
    const-string v2, "DETAILS_LIST"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 915
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_76
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 916
    new-instance v3, Lfr/testudo/spacecorsair/billing/SkuDetails;

    invoke-direct {v3, p1, v0}, Lfr/testudo/spacecorsair/billing/SkuDetails;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 917
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Got sku details: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lfr/testudo/spacecorsair/billing/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 918
    invoke-virtual {p2, v3}, Lfr/testudo/spacecorsair/billing/Inventory;->addSkuDetails(Lfr/testudo/spacecorsair/billing/SkuDetails;)V

    goto :goto_76

    :cond_a1
    move v0, v1

    .line 920
    goto :goto_23
.end method

.method public startSetup(Lfr/testudo/spacecorsair/billing/IabHelper$OnIabSetupFinishedListener;)V
    .registers 6

    .prologue
    .line 206
    iget-boolean v0, p0, Lfr/testudo/spacecorsair/billing/IabHelper;->mSetupDone:Z

    if-eqz v0, :cond_c

    .line 207
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "IAB helper is already set up."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 210
    :cond_c
    const-string v0, "Starting in-app billing setup."

    invoke-virtual {p0, v0}, Lfr/testudo/spacecorsair/billing/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 211
    new-instance v0, Lfr/testudo/spacecorsair/billing/IabHelper$1;

    invoke-direct {v0, p0, p1}, Lfr/testudo/spacecorsair/billing/IabHelper$1;-><init>(Lfr/testudo/spacecorsair/billing/IabHelper;Lfr/testudo/spacecorsair/billing/IabHelper$OnIabSetupFinishedListener;)V

    iput-object v0, p0, Lfr/testudo/spacecorsair/billing/IabHelper;->mServiceConn:Landroid/content/ServiceConnection;

    .line 263
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.vending.billing.InAppBillingService.BIND"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 264
    const-string v1, "com.android.vending"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 265
    iget-object v1, p0, Lfr/testudo/spacecorsair/billing/IabHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3e

    .line 267
    iget-object v1, p0, Lfr/testudo/spacecorsair/billing/IabHelper;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lfr/testudo/spacecorsair/billing/IabHelper;->mServiceConn:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 274
    :cond_3d
    :goto_3d
    return-void

    .line 270
    :cond_3e
    if-eqz p1, :cond_3d

    .line 271
    new-instance v0, Lfr/testudo/spacecorsair/billing/IabResult;

    const/4 v1, 0x3

    const-string v2, "Billing service unavailable on device."

    invoke-direct {v0, v1, v2}, Lfr/testudo/spacecorsair/billing/IabResult;-><init>(ILjava/lang/String;)V

    invoke-interface {p1, v0}, Lfr/testudo/spacecorsair/billing/IabHelper$OnIabSetupFinishedListener;->onIabSetupFinished(Lfr/testudo/spacecorsair/billing/IabResult;)V

    goto :goto_3d
.end method

.method public subscriptionsSupported()Z
    .registers 2

    .prologue
    .line 297
    iget-boolean v0, p0, Lfr/testudo/spacecorsair/billing/IabHelper;->mSubscriptionsSupported:Z

    return v0
.end method
