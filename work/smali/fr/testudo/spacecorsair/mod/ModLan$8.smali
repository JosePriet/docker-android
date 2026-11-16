.class Lfr/testudo/spacecorsair/mod/ModLan$8;
.super Ljava/lang/Object;
.source "ModLan.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfr/testudo/spacecorsair/mod/ModLan;->fail(Ljava/lang/Throwable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$back:Ljava/lang/String;

.field final synthetic val$mark:J


# direct methods
.method constructor <init>(JLjava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 489
    iput-wide p1, p0, Lfr/testudo/spacecorsair/mod/ModLan$8;->val$mark:J

    iput-object p3, p0, Lfr/testudo/spacecorsair/mod/ModLan$8;->val$back:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .prologue
    .line 491
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x7530

    add-long/2addr v0, v2

    .line 493
    :cond_7
    :try_start_7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    cmp-long v2, v2, v0

    if-gez v2, :cond_35

    # getter for: Lfr/testudo/spacecorsair/mod/ModLan;->linkGen:J
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLan;->access$100()J

    move-result-wide v2

    iget-wide v4, p0, Lfr/testudo/spacecorsair/mod/ModLan$8;->val$mark:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_35

    .line 494
    const-wide/16 v2, 0xbb8

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V

    .line 495
    # getter for: Lfr/testudo/spacecorsair/mod/ModLan;->linkGen:J
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLan;->access$100()J

    move-result-wide v2

    iget-wide v4, p0, Lfr/testudo/spacecorsair/mod/ModLan$8;->val$mark:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_29

    .line 502
    :cond_28
    :goto_28
    return-void

    .line 496
    :cond_29
    iget-object v2, p0, Lfr/testudo/spacecorsair/mod/ModLan$8;->val$back:Ljava/lang/String;

    iget-wide v4, p0, Lfr/testudo/spacecorsair/mod/ModLan$8;->val$mark:J

    # invokes: Lfr/testudo/spacecorsair/mod/ModLan;->tryRejoin(Ljava/lang/String;J)Z
    invoke-static {v2, v4, v5}, Lfr/testudo/spacecorsair/mod/ModLan;->access$1300(Ljava/lang/String;J)Z
    :try_end_30
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_30} :catch_34

    move-result v2

    if-eqz v2, :cond_7

    goto :goto_28

    .line 498
    :catch_34
    move-exception v0

    .line 501
    :cond_35
    # getter for: Lfr/testudo/spacecorsair/mod/ModLan;->linkGen:J
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLan;->access$100()J

    move-result-wide v0

    iget-wide v2, p0, Lfr/testudo/spacecorsair/mod/ModLan$8;->val$mark:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_28

    const-string v0, "Co-op link lost"

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->status:Ljava/lang/String;

    goto :goto_28
.end method
