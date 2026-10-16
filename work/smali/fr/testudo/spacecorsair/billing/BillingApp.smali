.class public Lfr/testudo/spacecorsair/billing/BillingApp;
.super Landroid/app/Application;
.source "SourceFile"


# static fields
.field public static final STATE_CANCELED:I = 0x1

.field public static final STATE_PURCHASED:I = 0x0

.field public static final STATE_REFUNDED:I = 0x2

.field protected static final clef1:Ljava/lang/String; = "LHHAHi"

.field protected static final clef2:Ljava/lang/String; = "ANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAnY42"

.field protected static final clef3:Ljava/lang/String; = "PoUHYiaMMpS5xDf"

.field protected static final clef4:Ljava/lang/String; = "VmkAWn7FbBwX4/30BqYtZCILGerYD35C8/q3BAcXq5YMrUy6qR64guqnvOYSsTLTvqGjF7Rw8UV9duWQQCkERhWHvd2HwHGxdhq/DMGpsKNSmfxc6HtbYj39s4DCf9w4b7vJsCHyhs4Wsoiij48nDifx7f+o0GoiLx34eQzvma9ib2pIO/WDhjDfnSIcRVGlyHmw2yO7jXqHEKViSJ3FEQ1+7M1CpC9cHZD+SDl68ByzA9Hsiq8/Wna4Ap5WlgrYG6D5/7leUZewh613kuzVu10WwRLATB8FCjJW53XvM4HjAFjIosUrhZkJPIFJ80/tlmwIDAQAB"

.field protected static paymentClef:Ljava/lang/String;


# instance fields
.field private billingListener:Lfr/testudo/spacecorsair/billing/BillingListener;

.field private isBillingAvailable:Z

.field mConsumedFinished:Lfr/testudo/spacecorsair/billing/IabHelper$OnConsumeFinishedListener;

.field private mGotInventoryListener:Lfr/testudo/spacecorsair/billing/IabHelper$QueryInventoryFinishedListener;

.field private mHelper:Lfr/testudo/spacecorsair/billing/IabHelper;

.field mPurchaseFinishedListener:Lfr/testudo/spacecorsair/billing/IabHelper$OnIabPurchaseFinishedListener;

.field private payload:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 32
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LHHAHi"

    invoke-static {v1}, Lfr/testudo/spacecorsair/billing/BillingApp;->decrementString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "ANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAnY42"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "PoUHYiaMMpS5xDf"

    invoke-static {v1}, Lfr/testudo/spacecorsair/billing/BillingApp;->decrementString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "VmkAWn7FbBwX4/30BqYtZCILGerYD35C8/q3BAcXq5YMrUy6qR64guqnvOYSsTLTvqGjF7Rw8UV9duWQQCkERhWHvd2HwHGxdhq/DMGpsKNSmfxc6HtbYj39s4DCf9w4b7vJsCHyhs4Wsoiij48nDifx7f+o0GoiLx34eQzvma9ib2pIO/WDhjDfnSIcRVGlyHmw2yO7jXqHEKViSJ3FEQ1+7M1CpC9cHZD+SDl68ByzA9Hsiq8/Wna4Ap5WlgrYG6D5/7leUZewh613kuzVu10WwRLATB8FCjJW53XvM4HjAFjIosUrhZkJPIFJ80/tlmwIDAQAB"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lfr/testudo/spacecorsair/billing/BillingApp;->paymentClef:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 12
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    .line 18
    iput-object v1, p0, Lfr/testudo/spacecorsair/billing/BillingApp;->mHelper:Lfr/testudo/spacecorsair/billing/IabHelper;

    .line 19
    const-string v0, "spacecorsairpayload"

    iput-object v0, p0, Lfr/testudo/spacecorsair/billing/BillingApp;->payload:Ljava/lang/String;

    .line 43
    const/4 v0, 0x1

    iput-boolean v0, p0, Lfr/testudo/spacecorsair/billing/BillingApp;->isBillingAvailable:Z

    .line 44
    iput-object v1, p0, Lfr/testudo/spacecorsair/billing/BillingApp;->billingListener:Lfr/testudo/spacecorsair/billing/BillingListener;

    .line 141
    new-instance v0, Lfr/testudo/spacecorsair/billing/BillingApp$2;

    invoke-direct {v0, p0}, Lfr/testudo/spacecorsair/billing/BillingApp$2;-><init>(Lfr/testudo/spacecorsair/billing/BillingApp;)V

    iput-object v0, p0, Lfr/testudo/spacecorsair/billing/BillingApp;->mConsumedFinished:Lfr/testudo/spacecorsair/billing/IabHelper$OnConsumeFinishedListener;

    .line 154
    new-instance v0, Lfr/testudo/spacecorsair/billing/BillingApp$3;

    invoke-direct {v0, p0}, Lfr/testudo/spacecorsair/billing/BillingApp$3;-><init>(Lfr/testudo/spacecorsair/billing/BillingApp;)V

    iput-object v0, p0, Lfr/testudo/spacecorsair/billing/BillingApp;->mPurchaseFinishedListener:Lfr/testudo/spacecorsair/billing/IabHelper$OnIabPurchaseFinishedListener;

    .line 176
    new-instance v0, Lfr/testudo/spacecorsair/billing/BillingApp$4;

    invoke-direct {v0, p0}, Lfr/testudo/spacecorsair/billing/BillingApp$4;-><init>(Lfr/testudo/spacecorsair/billing/BillingApp;)V

    iput-object v0, p0, Lfr/testudo/spacecorsair/billing/BillingApp;->mGotInventoryListener:Lfr/testudo/spacecorsair/billing/IabHelper$QueryInventoryFinishedListener;

    return-void
.end method

.method static synthetic access$002(Lfr/testudo/spacecorsair/billing/BillingApp;Z)Z
    .registers 2

    .prologue
    .line 12
    iput-boolean p1, p0, Lfr/testudo/spacecorsair/billing/BillingApp;->isBillingAvailable:Z

    return p1
.end method

.method static synthetic access$100(Lfr/testudo/spacecorsair/billing/BillingApp;)Lfr/testudo/spacecorsair/billing/IabHelper$QueryInventoryFinishedListener;
    .registers 2

    .prologue
    .line 12
    iget-object v0, p0, Lfr/testudo/spacecorsair/billing/BillingApp;->mGotInventoryListener:Lfr/testudo/spacecorsair/billing/IabHelper$QueryInventoryFinishedListener;

    return-object v0
.end method

.method static synthetic access$200(Lfr/testudo/spacecorsair/billing/BillingApp;)Lfr/testudo/spacecorsair/billing/IabHelper;
    .registers 2

    .prologue
    .line 12
    iget-object v0, p0, Lfr/testudo/spacecorsair/billing/BillingApp;->mHelper:Lfr/testudo/spacecorsair/billing/IabHelper;

    return-object v0
.end method

.method static synthetic access$300(Lfr/testudo/spacecorsair/billing/BillingApp;)Lfr/testudo/spacecorsair/billing/BillingListener;
    .registers 2

    .prologue
    .line 12
    iget-object v0, p0, Lfr/testudo/spacecorsair/billing/BillingApp;->billingListener:Lfr/testudo/spacecorsair/billing/BillingListener;

    return-object v0
.end method

.method public static final decrementString(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .prologue
    .line 35
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 36
    const/4 v0, 0x0

    :goto_6
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_1c

    .line 37
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    add-int/lit8 v2, v2, 0x1

    .line 38
    invoke-static {v2}, Ljava/lang/Character;->toChars(I)[C

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append([C)Ljava/lang/StringBuilder;

    .line 36
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 40
    :cond_1c
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public buyItem(Landroid/app/Activity;Ljava/lang/String;I)V
    .registers 10

    .prologue
    .line 71
    iget-object v0, p0, Lfr/testudo/spacecorsair/billing/BillingApp;->mHelper:Lfr/testudo/spacecorsair/billing/IabHelper;

    if-eqz v0, :cond_11

    .line 72
    iget-object v0, p0, Lfr/testudo/spacecorsair/billing/BillingApp;->mHelper:Lfr/testudo/spacecorsair/billing/IabHelper;

    iget-object v4, p0, Lfr/testudo/spacecorsair/billing/BillingApp;->mPurchaseFinishedListener:Lfr/testudo/spacecorsair/billing/IabHelper$OnIabPurchaseFinishedListener;

    iget-object v5, p0, Lfr/testudo/spacecorsair/billing/BillingApp;->payload:Ljava/lang/String;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    invoke-virtual/range {v0 .. v5}, Lfr/testudo/spacecorsair/billing/IabHelper;->launchPurchaseFlow(Landroid/app/Activity;Ljava/lang/String;ILfr/testudo/spacecorsair/billing/IabHelper$OnIabPurchaseFinishedListener;Ljava/lang/String;)V

    .line 79
    :goto_10
    return-void

    .line 75
    :cond_11
    const-string v0, "Sorry, a problem occured, item has not been purchased."

    const/4 v1, 0x4

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 76
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_10
.end method

.method public checkInventor()V
    .registers 3

    .prologue
    .line 119
    :try_start_0
    iget-object v0, p0, Lfr/testudo/spacecorsair/billing/BillingApp;->mHelper:Lfr/testudo/spacecorsair/billing/IabHelper;

    iget-object v1, p0, Lfr/testudo/spacecorsair/billing/BillingApp;->mGotInventoryListener:Lfr/testudo/spacecorsair/billing/IabHelper$QueryInventoryFinishedListener;

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/billing/IabHelper;->queryInventoryAsync(Lfr/testudo/spacecorsair/billing/IabHelper$QueryInventoryFinishedListener;)V
    :try_end_7
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_7} :catch_8
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_7} :catch_f

    .line 125
    :goto_7
    return-void

    .line 120
    :catch_8
    move-exception v0

    .line 121
    const-string v0, "checkInventor() called on bad state"

    invoke-static {v0}, Lfr/testudo/spacecorsair/utils/Logs;->e(Ljava/lang/String;)V

    goto :goto_7

    .line 122
    :catch_f
    move-exception v0

    .line 123
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_7
.end method

.method public consumeItem(Lfr/testudo/spacecorsair/billing/Purchase;)V
    .registers 4

    .prologue
    .line 83
    iget-object v0, p0, Lfr/testudo/spacecorsair/billing/BillingApp;->mHelper:Lfr/testudo/spacecorsair/billing/IabHelper;

    if-eqz v0, :cond_c

    .line 84
    iget-object v0, p0, Lfr/testudo/spacecorsair/billing/BillingApp;->mHelper:Lfr/testudo/spacecorsair/billing/IabHelper;

    iget-object v1, p0, Lfr/testudo/spacecorsair/billing/BillingApp;->mConsumedFinished:Lfr/testudo/spacecorsair/billing/IabHelper$OnConsumeFinishedListener;

    invoke-virtual {v0, p1, v1}, Lfr/testudo/spacecorsair/billing/IabHelper;->consumeAsync(Lfr/testudo/spacecorsair/billing/Purchase;Lfr/testudo/spacecorsair/billing/IabHelper$OnConsumeFinishedListener;)V

    .line 90
    :goto_b
    return-void

    .line 87
    :cond_c
    const-string v0, "Sorry, a problem occured, item has not been purchased."

    const/4 v1, 0x4

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 88
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_b
.end method

.method public handleActivityResult(IILandroid/content/Intent;)V
    .registers 5

    .prologue
    .line 129
    :try_start_0
    iget-object v0, p0, Lfr/testudo/spacecorsair/billing/BillingApp;->mHelper:Lfr/testudo/spacecorsair/billing/IabHelper;

    invoke-virtual {v0, p1, p2, p3}, Lfr/testudo/spacecorsair/billing/IabHelper;->handleActivityResult(IILandroid/content/Intent;)Z
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5} :catch_6

    .line 133
    :goto_5
    return-void

    .line 130
    :catch_6
    move-exception v0

    .line 131
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_5
.end method

.method public initInAppBilling(Ljava/lang/String;Lfr/testudo/spacecorsair/billing/BillingListener;)V
    .registers 5

    .prologue
    .line 48
    iput-object p1, p0, Lfr/testudo/spacecorsair/billing/BillingApp;->payload:Ljava/lang/String;

    .line 49
    iput-object p2, p0, Lfr/testudo/spacecorsair/billing/BillingApp;->billingListener:Lfr/testudo/spacecorsair/billing/BillingListener;

    .line 51
    new-instance v0, Lfr/testudo/spacecorsair/billing/IabHelper;

    sget-object v1, Lfr/testudo/spacecorsair/billing/BillingApp;->paymentClef:Ljava/lang/String;

    invoke-direct {v0, p0, v1}, Lfr/testudo/spacecorsair/billing/IabHelper;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lfr/testudo/spacecorsair/billing/BillingApp;->mHelper:Lfr/testudo/spacecorsair/billing/IabHelper;

    .line 52
    iget-object v0, p0, Lfr/testudo/spacecorsair/billing/BillingApp;->mHelper:Lfr/testudo/spacecorsair/billing/IabHelper;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/billing/IabHelper;->enableDebugLogging(Z)V

    .line 54
    iget-object v0, p0, Lfr/testudo/spacecorsair/billing/BillingApp;->mHelper:Lfr/testudo/spacecorsair/billing/IabHelper;

    new-instance v1, Lfr/testudo/spacecorsair/billing/BillingApp$1;

    invoke-direct {v1, p0}, Lfr/testudo/spacecorsair/billing/BillingApp$1;-><init>(Lfr/testudo/spacecorsair/billing/BillingApp;)V

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/billing/IabHelper;->startSetup(Lfr/testudo/spacecorsair/billing/IabHelper$OnIabSetupFinishedListener;)V

    .line 68
    return-void
.end method

.method public isBillingAvailable()Z
    .registers 2

    .prologue
    .line 93
    iget-boolean v0, p0, Lfr/testudo/spacecorsair/billing/BillingApp;->isBillingAvailable:Z

    return v0
.end method

.method public isPurchased(Lfr/testudo/spacecorsair/billing/Inventory;Ljava/lang/String;)Z
    .registers 6

    .prologue
    .line 97
    invoke-virtual {p1, p2}, Lfr/testudo/spacecorsair/billing/Inventory;->getPurchase(Ljava/lang/String;)Lfr/testudo/spacecorsair/billing/Purchase;

    move-result-object v0

    .line 99
    if-eqz v0, :cond_4c

    .line 100
    invoke-virtual {v0}, Lfr/testudo/spacecorsair/billing/Purchase;->getPurchaseState()I

    move-result v1

    if-nez v1, :cond_31

    .line 101
    invoke-virtual {p0, v0}, Lfr/testudo/spacecorsair/billing/BillingApp;->verifyDeveloperPayload(Lfr/testudo/spacecorsair/billing/Purchase;)Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 102
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "item purchased : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lfr/testudo/spacecorsair/utils/Logs;->i(Ljava/lang/String;)V

    .line 103
    const/4 v0, 0x1

    .line 114
    :goto_29
    return v0

    .line 105
    :cond_2a
    const-string v0, "DeveloperPayload uncorrect"

    invoke-static {v0}, Lfr/testudo/spacecorsair/utils/Logs;->i(Ljava/lang/String;)V

    .line 114
    :goto_2f
    const/4 v0, 0x0

    goto :goto_29

    .line 108
    :cond_31
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Purchase state not OK: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/billing/Purchase;->getPurchaseState()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lfr/testudo/spacecorsair/utils/Logs;->i(Ljava/lang/String;)V

    goto :goto_2f

    .line 111
    :cond_4c
    const-string v0, "Purchase not found"

    invoke-static {v0}, Lfr/testudo/spacecorsair/utils/Logs;->i(Ljava/lang/String;)V

    goto :goto_2f
.end method

.method protected verifyDeveloperPayload(Lfr/testudo/spacecorsair/billing/Purchase;)Z
    .registers 4

    .prologue
    .line 136
    invoke-virtual {p1}, Lfr/testudo/spacecorsair/billing/Purchase;->getDeveloperPayload()Ljava/lang/String;

    move-result-object v0

    .line 137
    iget-object v1, p0, Lfr/testudo/spacecorsair/billing/BillingApp;->payload:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
