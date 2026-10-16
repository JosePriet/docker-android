.class Lfr/testudo/spacecorsair/billing/IabHelper$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lfr/testudo/spacecorsair/billing/IabHelper;

.field final synthetic val$handler:Landroid/os/Handler;

.field final synthetic val$multiListener:Lfr/testudo/spacecorsair/billing/IabHelper$OnConsumeMultiFinishedListener;

.field final synthetic val$purchases:Ljava/util/List;

.field final synthetic val$singleListener:Lfr/testudo/spacecorsair/billing/IabHelper$OnConsumeFinishedListener;


# direct methods
.method constructor <init>(Lfr/testudo/spacecorsair/billing/IabHelper;Ljava/util/List;Lfr/testudo/spacecorsair/billing/IabHelper$OnConsumeFinishedListener;Landroid/os/Handler;Lfr/testudo/spacecorsair/billing/IabHelper$OnConsumeMultiFinishedListener;)V
    .registers 6

    .prologue
    .line 926
    iput-object p1, p0, Lfr/testudo/spacecorsair/billing/IabHelper$3;->this$0:Lfr/testudo/spacecorsair/billing/IabHelper;

    iput-object p2, p0, Lfr/testudo/spacecorsair/billing/IabHelper$3;->val$purchases:Ljava/util/List;

    iput-object p3, p0, Lfr/testudo/spacecorsair/billing/IabHelper$3;->val$singleListener:Lfr/testudo/spacecorsair/billing/IabHelper$OnConsumeFinishedListener;

    iput-object p4, p0, Lfr/testudo/spacecorsair/billing/IabHelper$3;->val$handler:Landroid/os/Handler;

    iput-object p5, p0, Lfr/testudo/spacecorsair/billing/IabHelper$3;->val$multiListener:Lfr/testudo/spacecorsair/billing/IabHelper$OnConsumeMultiFinishedListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 8

    .prologue
    .line 928
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 929
    iget-object v0, p0, Lfr/testudo/spacecorsair/billing/IabHelper$3;->val$purchases:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_46

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfr/testudo/spacecorsair/billing/Purchase;

    .line 931
    :try_start_17
    iget-object v3, p0, Lfr/testudo/spacecorsair/billing/IabHelper$3;->this$0:Lfr/testudo/spacecorsair/billing/IabHelper;

    invoke-virtual {v3, v0}, Lfr/testudo/spacecorsair/billing/IabHelper;->consume(Lfr/testudo/spacecorsair/billing/Purchase;)V

    .line 932
    new-instance v3, Lfr/testudo/spacecorsair/billing/IabResult;

    const/4 v4, 0x0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Successful consume of sku "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/billing/Purchase;->getSku()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v4, v0}, Lfr/testudo/spacecorsair/billing/IabResult;-><init>(ILjava/lang/String;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_3c
    .catch Lfr/testudo/spacecorsair/billing/IabException; {:try_start_17 .. :try_end_3c} :catch_3d

    goto :goto_b

    .line 933
    :catch_3d
    move-exception v0

    .line 934
    invoke-virtual {v0}, Lfr/testudo/spacecorsair/billing/IabException;->getResult()Lfr/testudo/spacecorsair/billing/IabResult;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_b

    .line 938
    :cond_46
    iget-object v0, p0, Lfr/testudo/spacecorsair/billing/IabHelper$3;->this$0:Lfr/testudo/spacecorsair/billing/IabHelper;

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/billing/IabHelper;->flagEndAsync()V

    .line 939
    iget-object v0, p0, Lfr/testudo/spacecorsair/billing/IabHelper$3;->val$singleListener:Lfr/testudo/spacecorsair/billing/IabHelper$OnConsumeFinishedListener;

    if-eqz v0, :cond_59

    .line 940
    iget-object v0, p0, Lfr/testudo/spacecorsair/billing/IabHelper$3;->val$handler:Landroid/os/Handler;

    new-instance v2, Lfr/testudo/spacecorsair/billing/IabHelper$3$1;

    invoke-direct {v2, p0, v1}, Lfr/testudo/spacecorsair/billing/IabHelper$3$1;-><init>(Lfr/testudo/spacecorsair/billing/IabHelper$3;Ljava/util/List;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 946
    :cond_59
    iget-object v0, p0, Lfr/testudo/spacecorsair/billing/IabHelper$3;->val$multiListener:Lfr/testudo/spacecorsair/billing/IabHelper$OnConsumeMultiFinishedListener;

    if-eqz v0, :cond_67

    .line 947
    iget-object v0, p0, Lfr/testudo/spacecorsair/billing/IabHelper$3;->val$handler:Landroid/os/Handler;

    new-instance v2, Lfr/testudo/spacecorsair/billing/IabHelper$3$2;

    invoke-direct {v2, p0, v1}, Lfr/testudo/spacecorsair/billing/IabHelper$3$2;-><init>(Lfr/testudo/spacecorsair/billing/IabHelper$3;Ljava/util/List;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 953
    :cond_67
    return-void
.end method
