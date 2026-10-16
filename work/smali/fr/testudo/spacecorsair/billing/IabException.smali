.class public Lfr/testudo/spacecorsair/billing/IabException;
.super Ljava/lang/Exception;
.source "SourceFile"


# instance fields
.field mResult:Lfr/testudo/spacecorsair/billing/IabResult;


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .registers 4

    .prologue
    .line 31
    new-instance v0, Lfr/testudo/spacecorsair/billing/IabResult;

    invoke-direct {v0, p1, p2}, Lfr/testudo/spacecorsair/billing/IabResult;-><init>(ILjava/lang/String;)V

    invoke-direct {p0, v0}, Lfr/testudo/spacecorsair/billing/IabException;-><init>(Lfr/testudo/spacecorsair/billing/IabResult;)V

    .line 32
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/Exception;)V
    .registers 5

    .prologue
    .line 38
    new-instance v0, Lfr/testudo/spacecorsair/billing/IabResult;

    invoke-direct {v0, p1, p2}, Lfr/testudo/spacecorsair/billing/IabResult;-><init>(ILjava/lang/String;)V

    invoke-direct {p0, v0, p3}, Lfr/testudo/spacecorsair/billing/IabException;-><init>(Lfr/testudo/spacecorsair/billing/IabResult;Ljava/lang/Exception;)V

    .line 39
    return-void
.end method

.method public constructor <init>(Lfr/testudo/spacecorsair/billing/IabResult;)V
    .registers 3

    .prologue
    .line 28
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lfr/testudo/spacecorsair/billing/IabException;-><init>(Lfr/testudo/spacecorsair/billing/IabResult;Ljava/lang/Exception;)V

    .line 29
    return-void
.end method

.method public constructor <init>(Lfr/testudo/spacecorsair/billing/IabResult;Ljava/lang/Exception;)V
    .registers 4

    .prologue
    .line 34
    invoke-virtual {p1}, Lfr/testudo/spacecorsair/billing/IabResult;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 35
    iput-object p1, p0, Lfr/testudo/spacecorsair/billing/IabException;->mResult:Lfr/testudo/spacecorsair/billing/IabResult;

    .line 36
    return-void
.end method


# virtual methods
.method public getResult()Lfr/testudo/spacecorsair/billing/IabResult;
    .registers 2

    .prologue
    .line 42
    iget-object v0, p0, Lfr/testudo/spacecorsair/billing/IabException;->mResult:Lfr/testudo/spacecorsair/billing/IabResult;

    return-object v0
.end method
