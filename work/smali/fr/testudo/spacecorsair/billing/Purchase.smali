.class public Lfr/testudo/spacecorsair/billing/Purchase;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field mDeveloperPayload:Ljava/lang/String;

.field mItemType:Ljava/lang/String;

.field mOrderId:Ljava/lang/String;

.field mOriginalJson:Ljava/lang/String;

.field mPackageName:Ljava/lang/String;

.field mPurchaseState:I

.field mPurchaseTime:J

.field mSignature:Ljava/lang/String;

.field mSku:Ljava/lang/String;

.field mToken:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 8

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lfr/testudo/spacecorsair/billing/Purchase;->mItemType:Ljava/lang/String;

    .line 38
    iput-object p2, p0, Lfr/testudo/spacecorsair/billing/Purchase;->mOriginalJson:Ljava/lang/String;

    .line 39
    new-instance v0, Lorg/json/JSONObject;

    iget-object v1, p0, Lfr/testudo/spacecorsair/billing/Purchase;->mOriginalJson:Ljava/lang/String;

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 40
    const-string v1, "orderId"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lfr/testudo/spacecorsair/billing/Purchase;->mOrderId:Ljava/lang/String;

    .line 41
    const-string v1, "packageName"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lfr/testudo/spacecorsair/billing/Purchase;->mPackageName:Ljava/lang/String;

    .line 42
    const-string v1, "productId"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lfr/testudo/spacecorsair/billing/Purchase;->mSku:Ljava/lang/String;

    .line 43
    const-string v1, "purchaseTime"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lfr/testudo/spacecorsair/billing/Purchase;->mPurchaseTime:J

    .line 44
    const-string v1, "purchaseState"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lfr/testudo/spacecorsair/billing/Purchase;->mPurchaseState:I

    .line 45
    const-string v1, "developerPayload"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lfr/testudo/spacecorsair/billing/Purchase;->mDeveloperPayload:Ljava/lang/String;

    .line 46
    const-string v1, "token"

    const-string v2, "purchaseToken"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lfr/testudo/spacecorsair/billing/Purchase;->mToken:Ljava/lang/String;

    .line 47
    iput-object p3, p0, Lfr/testudo/spacecorsair/billing/Purchase;->mSignature:Ljava/lang/String;

    .line 48
    return-void
.end method


# virtual methods
.method public getDeveloperPayload()Ljava/lang/String;
    .registers 2

    .prologue
    .line 56
    iget-object v0, p0, Lfr/testudo/spacecorsair/billing/Purchase;->mDeveloperPayload:Ljava/lang/String;

    return-object v0
.end method

.method public getItemType()Ljava/lang/String;
    .registers 2

    .prologue
    .line 50
    iget-object v0, p0, Lfr/testudo/spacecorsair/billing/Purchase;->mItemType:Ljava/lang/String;

    return-object v0
.end method

.method public getOrderId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 51
    iget-object v0, p0, Lfr/testudo/spacecorsair/billing/Purchase;->mOrderId:Ljava/lang/String;

    return-object v0
.end method

.method public getOriginalJson()Ljava/lang/String;
    .registers 2

    .prologue
    .line 58
    iget-object v0, p0, Lfr/testudo/spacecorsair/billing/Purchase;->mOriginalJson:Ljava/lang/String;

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 52
    iget-object v0, p0, Lfr/testudo/spacecorsair/billing/Purchase;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public getPurchaseState()I
    .registers 2

    .prologue
    .line 55
    iget v0, p0, Lfr/testudo/spacecorsair/billing/Purchase;->mPurchaseState:I

    return v0
.end method

.method public getPurchaseTime()J
    .registers 3

    .prologue
    .line 54
    iget-wide v0, p0, Lfr/testudo/spacecorsair/billing/Purchase;->mPurchaseTime:J

    return-wide v0
.end method

.method public getSignature()Ljava/lang/String;
    .registers 2

    .prologue
    .line 59
    iget-object v0, p0, Lfr/testudo/spacecorsair/billing/Purchase;->mSignature:Ljava/lang/String;

    return-object v0
.end method

.method public getSku()Ljava/lang/String;
    .registers 2

    .prologue
    .line 53
    iget-object v0, p0, Lfr/testudo/spacecorsair/billing/Purchase;->mSku:Ljava/lang/String;

    return-object v0
.end method

.method public getToken()Ljava/lang/String;
    .registers 2

    .prologue
    .line 57
    iget-object v0, p0, Lfr/testudo/spacecorsair/billing/Purchase;->mToken:Ljava/lang/String;

    return-object v0
.end method

.method public isCancelled()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 62
    iget v1, p0, Lfr/testudo/spacecorsair/billing/Purchase;->mPurchaseState:I

    if-ne v1, v0, :cond_6

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public isPurchased()Z
    .registers 2

    .prologue
    .line 70
    iget v0, p0, Lfr/testudo/spacecorsair/billing/Purchase;->mPurchaseState:I

    if-nez v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public isRefund()Z
    .registers 3

    .prologue
    .line 66
    iget v0, p0, Lfr/testudo/spacecorsair/billing/Purchase;->mPurchaseState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 74
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PurchaseInfo(type:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lfr/testudo/spacecorsair/billing/Purchase;->mItemType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "):"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lfr/testudo/spacecorsair/billing/Purchase;->mOriginalJson:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
