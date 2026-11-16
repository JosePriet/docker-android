.class Lfr/testudo/spacecorsair/mod/ModNet$Link$2;
.super Ljava/io/InputStream;
.source "ModNet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfr/testudo/spacecorsair/mod/ModNet$Link;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lfr/testudo/spacecorsair/mod/ModNet$Link;


# direct methods
.method constructor <init>(Lfr/testudo/spacecorsair/mod/ModNet$Link;)V
    .registers 2

    .prologue
    .line 948
    iput-object p1, p0, Lfr/testudo/spacecorsair/mod/ModNet$Link$2;->this$0:Lfr/testudo/spacecorsair/mod/ModNet$Link;

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    return-void
.end method


# virtual methods
.method public available()I
    .registers 3

    .prologue
    .line 971
    iget-object v1, p0, Lfr/testudo/spacecorsair/mod/ModNet$Link$2;->this$0:Lfr/testudo/spacecorsair/mod/ModNet$Link;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModNet$Link$2;->this$0:Lfr/testudo/spacecorsair/mod/ModNet$Link;

    # getter for: Lfr/testudo/spacecorsair/mod/ModNet$Link;->inSize:I
    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModNet$Link;->access$1000(Lfr/testudo/spacecorsair/mod/ModNet$Link;)I

    move-result v0

    monitor-exit v1

    return v0

    :catchall_b
    move-exception v0

    monitor-exit v1
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v0
.end method

.method public read()I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 950
    new-array v0, v1, [B

    .line 951
    invoke-virtual {p0, v0, v2, v1}, Lfr/testudo/spacecorsair/mod/ModNet$Link$2;->read([BII)I

    move-result v1

    .line 952
    if-gez v1, :cond_c

    const/4 v0, -0x1

    :goto_b
    return v0

    :cond_c
    aget-byte v0, v0, v2

    and-int/lit16 v0, v0, 0xff

    goto :goto_b
.end method

.method public read([BII)I
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 956
    if-nez p3, :cond_4

    const/4 v0, 0x0

    .line 962
    :goto_3
    return v0

    .line 957
    :cond_4
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModNet$Link$2;->this$0:Lfr/testudo/spacecorsair/mod/ModNet$Link;

    # getter for: Lfr/testudo/spacecorsair/mod/ModNet$Link;->soTimeout:I
    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModNet$Link;->access$900(Lfr/testudo/spacecorsair/mod/ModNet$Link;)I

    move-result v0

    if-lez v0, :cond_2e

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lfr/testudo/spacecorsair/mod/ModNet$Link$2;->this$0:Lfr/testudo/spacecorsair/mod/ModNet$Link;

    # getter for: Lfr/testudo/spacecorsair/mod/ModNet$Link;->soTimeout:I
    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModNet$Link;->access$900(Lfr/testudo/spacecorsair/mod/ModNet$Link;)I

    move-result v2

    int-to-long v2, v2

    add-long/2addr v0, v2

    .line 958
    :goto_18
    iget-object v2, p0, Lfr/testudo/spacecorsair/mod/ModNet$Link$2;->this$0:Lfr/testudo/spacecorsair/mod/ModNet$Link;

    monitor-enter v2

    .line 960
    :goto_1b
    :try_start_1b
    iget-object v3, p0, Lfr/testudo/spacecorsair/mod/ModNet$Link$2;->this$0:Lfr/testudo/spacecorsair/mod/ModNet$Link;

    # getter for: Lfr/testudo/spacecorsair/mod/ModNet$Link;->inSize:I
    invoke-static {v3}, Lfr/testudo/spacecorsair/mod/ModNet$Link;->access$1000(Lfr/testudo/spacecorsair/mod/ModNet$Link;)I

    move-result v3

    if-lez v3, :cond_34

    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModNet$Link$2;->this$0:Lfr/testudo/spacecorsair/mod/ModNet$Link;

    # invokes: Lfr/testudo/spacecorsair/mod/ModNet$Link;->take([BII)I
    invoke-static {v0, p1, p2, p3}, Lfr/testudo/spacecorsair/mod/ModNet$Link;->access$1100(Lfr/testudo/spacecorsair/mod/ModNet$Link;[BII)I

    move-result v0

    monitor-exit v2

    goto :goto_3

    .line 968
    :catchall_2b
    move-exception v0

    monitor-exit v2
    :try_end_2d
    .catchall {:try_start_1b .. :try_end_2d} :catchall_2b

    throw v0

    .line 957
    :cond_2e
    const-wide v0, 0x7fffffffffffffffL

    goto :goto_18

    .line 961
    :cond_34
    :try_start_34
    iget-object v3, p0, Lfr/testudo/spacecorsair/mod/ModNet$Link$2;->this$0:Lfr/testudo/spacecorsair/mod/ModNet$Link;

    # getter for: Lfr/testudo/spacecorsair/mod/ModNet$Link;->closed:Z
    invoke-static {v3}, Lfr/testudo/spacecorsair/mod/ModNet$Link;->access$1200(Lfr/testudo/spacecorsair/mod/ModNet$Link;)Z

    move-result v3

    if-eqz v3, :cond_44

    new-instance v0, Ljava/io/IOException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 962
    :cond_44
    iget-object v3, p0, Lfr/testudo/spacecorsair/mod/ModNet$Link$2;->this$0:Lfr/testudo/spacecorsair/mod/ModNet$Link;

    # getter for: Lfr/testudo/spacecorsair/mod/ModNet$Link;->finSeen:Z
    invoke-static {v3}, Lfr/testudo/spacecorsair/mod/ModNet$Link;->access$1300(Lfr/testudo/spacecorsair/mod/ModNet$Link;)Z

    move-result v3

    if-eqz v3, :cond_4f

    const/4 v0, -0x1

    monitor-exit v2

    goto :goto_3

    .line 963
    :cond_4f
    iget-object v3, p0, Lfr/testudo/spacecorsair/mod/ModNet$Link$2;->this$0:Lfr/testudo/spacecorsair/mod/ModNet$Link;

    # getter for: Lfr/testudo/spacecorsair/mod/ModNet$Link;->dead:Z
    invoke-static {v3}, Lfr/testudo/spacecorsair/mod/ModNet$Link;->access$1400(Lfr/testudo/spacecorsair/mod/ModNet$Link;)Z

    move-result v3

    if-eqz v3, :cond_5f

    new-instance v0, Ljava/io/IOException;

    const-string v1, "no answer for 10 s"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 964
    :cond_5f
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long v4, v0, v4

    .line 965
    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-gtz v3, :cond_73

    new-instance v0, Ljava/net/SocketTimeoutException;

    const-string v1, "read timed out"

    invoke-direct {v0, v1}, Ljava/net/SocketTimeoutException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_73
    .catchall {:try_start_34 .. :try_end_73} :catchall_2b

    .line 966
    :cond_73
    :try_start_73
    iget-object v3, p0, Lfr/testudo/spacecorsair/mod/ModNet$Link$2;->this$0:Lfr/testudo/spacecorsair/mod/ModNet$Link;

    const-wide/16 v6, 0xfa

    invoke-static {v6, v7, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/Object;->wait(J)V
    :try_end_7e
    .catch Ljava/lang/InterruptedException; {:try_start_73 .. :try_end_7e} :catch_7f
    .catchall {:try_start_73 .. :try_end_7e} :catchall_2b

    goto :goto_1b

    :catch_7f
    move-exception v0

    :try_start_80
    new-instance v0, Ljava/io/IOException;

    const-string v1, "interrupted"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_88
    .catchall {:try_start_80 .. :try_end_88} :catchall_2b
.end method
