.class Lfr/testudo/spacecorsair/billing/IabHelper$3$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$1:Lfr/testudo/spacecorsair/billing/IabHelper$3;

.field final synthetic val$results:Ljava/util/List;


# direct methods
.method constructor <init>(Lfr/testudo/spacecorsair/billing/IabHelper$3;Ljava/util/List;)V
    .registers 3

    .prologue
    .line 940
    iput-object p1, p0, Lfr/testudo/spacecorsair/billing/IabHelper$3$1;->this$1:Lfr/testudo/spacecorsair/billing/IabHelper$3;

    iput-object p2, p0, Lfr/testudo/spacecorsair/billing/IabHelper$3$1;->val$results:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 942
    iget-object v0, p0, Lfr/testudo/spacecorsair/billing/IabHelper$3$1;->this$1:Lfr/testudo/spacecorsair/billing/IabHelper$3;

    iget-object v2, v0, Lfr/testudo/spacecorsair/billing/IabHelper$3;->val$singleListener:Lfr/testudo/spacecorsair/billing/IabHelper$OnConsumeFinishedListener;

    iget-object v0, p0, Lfr/testudo/spacecorsair/billing/IabHelper$3$1;->this$1:Lfr/testudo/spacecorsair/billing/IabHelper$3;

    iget-object v0, v0, Lfr/testudo/spacecorsair/billing/IabHelper$3;->val$purchases:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfr/testudo/spacecorsair/billing/Purchase;

    iget-object v1, p0, Lfr/testudo/spacecorsair/billing/IabHelper$3$1;->val$results:Ljava/util/List;

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lfr/testudo/spacecorsair/billing/IabResult;

    invoke-interface {v2, v0, v1}, Lfr/testudo/spacecorsair/billing/IabHelper$OnConsumeFinishedListener;->onConsumeFinished(Lfr/testudo/spacecorsair/billing/Purchase;Lfr/testudo/spacecorsair/billing/IabResult;)V

    .line 943
    return-void
.end method
