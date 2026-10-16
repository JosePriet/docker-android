.class Lfr/testudo/spacecorsair/billing/IabHelper$3$2;
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
    .line 947
    iput-object p1, p0, Lfr/testudo/spacecorsair/billing/IabHelper$3$2;->this$1:Lfr/testudo/spacecorsair/billing/IabHelper$3;

    iput-object p2, p0, Lfr/testudo/spacecorsair/billing/IabHelper$3$2;->val$results:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 949
    iget-object v0, p0, Lfr/testudo/spacecorsair/billing/IabHelper$3$2;->this$1:Lfr/testudo/spacecorsair/billing/IabHelper$3;

    iget-object v0, v0, Lfr/testudo/spacecorsair/billing/IabHelper$3;->val$multiListener:Lfr/testudo/spacecorsair/billing/IabHelper$OnConsumeMultiFinishedListener;

    iget-object v1, p0, Lfr/testudo/spacecorsair/billing/IabHelper$3$2;->this$1:Lfr/testudo/spacecorsair/billing/IabHelper$3;

    iget-object v1, v1, Lfr/testudo/spacecorsair/billing/IabHelper$3;->val$purchases:Ljava/util/List;

    iget-object v2, p0, Lfr/testudo/spacecorsair/billing/IabHelper$3$2;->val$results:Ljava/util/List;

    invoke-interface {v0, v1, v2}, Lfr/testudo/spacecorsair/billing/IabHelper$OnConsumeMultiFinishedListener;->onConsumeMultiFinished(Ljava/util/List;Ljava/util/List;)V

    .line 950
    return-void
.end method
