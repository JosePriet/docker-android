.class Lfr/testudo/spacecorsair/mod/ModNet$Link$3;
.super Ljava/io/OutputStream;
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
    .line 974
    iput-object p1, p0, Lfr/testudo/spacecorsair/mod/ModNet$Link$3;->this$0:Lfr/testudo/spacecorsair/mod/ModNet$Link;

    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    return-void
.end method


# virtual methods
.method public flush()V
    .registers 5

    .prologue
    .line 991
    iget-object v1, p0, Lfr/testudo/spacecorsair/mod/ModNet$Link$3;->this$0:Lfr/testudo/spacecorsair/mod/ModNet$Link;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModNet$Link$3;->this$0:Lfr/testudo/spacecorsair/mod/ModNet$Link;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    # invokes: Lfr/testudo/spacecorsair/mod/ModNet$Link;->pump(J)V
    invoke-static {v0, v2, v3}, Lfr/testudo/spacecorsair/mod/ModNet$Link;->access$1700(Lfr/testudo/spacecorsair/mod/ModNet$Link;J)V

    monitor-exit v1

    return-void

    :catchall_e
    move-exception v0

    monitor-exit v1
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    throw v0
.end method

.method public write(I)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 975
    new-array v0, v3, [B

    int-to-byte v1, p1

    aput-byte v1, v0, v2

    invoke-virtual {p0, v0, v2, v3}, Lfr/testudo/spacecorsair/mod/ModNet$Link$3;->write([BII)V

    return-void
.end method

.method public write([BII)V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 978
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x2710

    add-long/2addr v0, v2

    .line 979
    iget-object v2, p0, Lfr/testudo/spacecorsair/mod/ModNet$Link$3;->this$0:Lfr/testudo/spacecorsair/mod/ModNet$Link;

    monitor-enter v2

    .line 980
    :goto_a
    :try_start_a
    iget-object v3, p0, Lfr/testudo/spacecorsair/mod/ModNet$Link$3;->this$0:Lfr/testudo/spacecorsair/mod/ModNet$Link;

    # getter for: Lfr/testudo/spacecorsair/mod/ModNet$Link;->pending:Ljava/io/ByteArrayOutputStream;
    invoke-static {v3}, Lfr/testudo/spacecorsair/mod/ModNet$Link;->access$1500(Lfr/testudo/spacecorsair/mod/ModNet$Link;)Ljava/io/ByteArrayOutputStream;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v3

    const/high16 v4, 0x40000

    if-le v3, v4, :cond_54

    .line 981
    iget-object v3, p0, Lfr/testudo/spacecorsair/mod/ModNet$Link$3;->this$0:Lfr/testudo/spacecorsair/mod/ModNet$Link;

    # getter for: Lfr/testudo/spacecorsair/mod/ModNet$Link;->closed:Z
    invoke-static {v3}, Lfr/testudo/spacecorsair/mod/ModNet$Link;->access$1200(Lfr/testudo/spacecorsair/mod/ModNet$Link;)Z

    move-result v3

    if-nez v3, :cond_28

    iget-object v3, p0, Lfr/testudo/spacecorsair/mod/ModNet$Link$3;->this$0:Lfr/testudo/spacecorsair/mod/ModNet$Link;

    # getter for: Lfr/testudo/spacecorsair/mod/ModNet$Link;->dead:Z
    invoke-static {v3}, Lfr/testudo/spacecorsair/mod/ModNet$Link;->access$1400(Lfr/testudo/spacecorsair/mod/ModNet$Link;)Z

    move-result v3

    if-eqz v3, :cond_33

    :cond_28
    new-instance v0, Ljava/io/IOException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 988
    :catchall_30
    move-exception v0

    monitor-exit v2
    :try_end_32
    .catchall {:try_start_a .. :try_end_32} :catchall_30

    throw v0

    .line 982
    :cond_33
    :try_start_33
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    cmp-long v3, v4, v0

    if-lez v3, :cond_43

    new-instance v0, Ljava/io/IOException;

    const-string v1, "write timed out"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_43
    .catchall {:try_start_33 .. :try_end_43} :catchall_30

    .line 983
    :cond_43
    :try_start_43
    iget-object v3, p0, Lfr/testudo/spacecorsair/mod/ModNet$Link$3;->this$0:Lfr/testudo/spacecorsair/mod/ModNet$Link;

    const-wide/16 v4, 0x64

    invoke-virtual {v3, v4, v5}, Ljava/lang/Object;->wait(J)V
    :try_end_4a
    .catch Ljava/lang/InterruptedException; {:try_start_43 .. :try_end_4a} :catch_4b
    .catchall {:try_start_43 .. :try_end_4a} :catchall_30

    goto :goto_a

    :catch_4b
    move-exception v0

    :try_start_4c
    new-instance v0, Ljava/io/IOException;

    const-string v1, "interrupted"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 985
    :cond_54
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModNet$Link$3;->this$0:Lfr/testudo/spacecorsair/mod/ModNet$Link;

    # getter for: Lfr/testudo/spacecorsair/mod/ModNet$Link;->closed:Z
    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModNet$Link;->access$1200(Lfr/testudo/spacecorsair/mod/ModNet$Link;)Z

    move-result v0

    if-nez v0, :cond_64

    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModNet$Link$3;->this$0:Lfr/testudo/spacecorsair/mod/ModNet$Link;

    # getter for: Lfr/testudo/spacecorsair/mod/ModNet$Link;->dead:Z
    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModNet$Link;->access$1400(Lfr/testudo/spacecorsair/mod/ModNet$Link;)Z

    move-result v0

    if-eqz v0, :cond_6c

    :cond_64
    new-instance v0, Ljava/io/IOException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 986
    :cond_6c
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModNet$Link$3;->this$0:Lfr/testudo/spacecorsair/mod/ModNet$Link;

    # getter for: Lfr/testudo/spacecorsair/mod/ModNet$Link;->pending:Ljava/io/ByteArrayOutputStream;
    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModNet$Link;->access$1500(Lfr/testudo/spacecorsair/mod/ModNet$Link;)Ljava/io/ByteArrayOutputStream;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 987
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModNet$Link$3;->this$0:Lfr/testudo/spacecorsair/mod/ModNet$Link;

    int-to-long v4, p3

    # += operator for: Lfr/testudo/spacecorsair/mod/ModNet$Link;->written:J
    invoke-static {v0, v4, v5}, Lfr/testudo/spacecorsair/mod/ModNet$Link;->access$1614(Lfr/testudo/spacecorsair/mod/ModNet$Link;J)J

    .line 988
    monitor-exit v2
    :try_end_7c
    .catchall {:try_start_4c .. :try_end_7c} :catchall_30

    .line 989
    return-void
.end method
