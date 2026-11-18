.class Lfr/testudo/spacecorsair/mod/ModLan$6;
.super Ljava/lang/Object;
.source "ModLan.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfr/testudo/spacecorsair/mod/ModLan;->begin(Ljava/net/Socket;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$gen:J

.field final synthetic val$in:Ljava/io/DataInputStream;

.field final synthetic val$nl:Lfr/testudo/spacecorsair/mod/ModNet$Link;


# direct methods
.method constructor <init>(JLfr/testudo/spacecorsair/mod/ModNet$Link;Ljava/io/DataInputStream;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 546
    iput-wide p1, p0, Lfr/testudo/spacecorsair/mod/ModLan$6;->val$gen:J

    iput-object p3, p0, Lfr/testudo/spacecorsair/mod/ModLan$6;->val$nl:Lfr/testudo/spacecorsair/mod/ModNet$Link;

    iput-object p4, p0, Lfr/testudo/spacecorsair/mod/ModLan$6;->val$in:Ljava/io/DataInputStream;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 11

    .prologue
    const/high16 v9, 0x40000

    const/4 v8, 0x5

    .line 549
    :goto_3
    :try_start_3
    iget-wide v0, p0, Lfr/testudo/spacecorsair/mod/ModLan$6;->val$gen:J

    # getter for: Lfr/testudo/spacecorsair/mod/ModLan;->linkGen:J
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLan;->access$100()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_4b

    .line 552
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModLan$6;->val$nl:Lfr/testudo/spacecorsair/mod/ModNet$Link;
    :try_end_f
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_f} :catch_3d

    if-eqz v0, :cond_5a

    .line 554
    :try_start_11
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModLan$6;->val$nl:Lfr/testudo/spacecorsair/mod/ModNet$Link;

    const/high16 v1, 0x40000

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/mod/ModNet$Link;->next(I)[B
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_18} :catch_4c
    .catch Ljava/lang/Throwable; {:try_start_11 .. :try_end_18} :catch_3d

    move-result-object v0

    .line 555
    const/4 v1, 0x0

    :try_start_1a
    aget-byte v1, v0, v1

    and-int/lit16 v2, v1, 0xff

    .line 556
    array-length v1, v0

    add-int/lit8 v1, v1, -0x5

    .line 557
    const/4 v3, 0x5

    array-length v4, v0

    invoke-static {v0, v3, v4}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v0

    .line 565
    :goto_27
    sget-wide v4, Lfr/testudo/spacecorsair/mod/ModLan;->bytesIn:J

    add-int/lit8 v1, v1, 0x5

    int-to-long v6, v1

    add-long/2addr v4, v6

    sput-wide v4, Lfr/testudo/spacecorsair/mod/ModLan;->bytesIn:J

    .line 566
    if-ne v2, v8, :cond_8b

    const/4 v0, 0x1

    # setter for: Lfr/testudo/spacecorsair/mod/ModLan;->byeSeen:Z
    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLan;->access$902(Z)Z

    new-instance v0, Ljava/io/IOException;

    const-string v1, "bye"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_3d
    .catch Ljava/lang/Throwable; {:try_start_1a .. :try_end_3d} :catch_3d

    .line 575
    :catch_3d
    move-exception v0

    .line 576
    iget-wide v2, p0, Lfr/testudo/spacecorsair/mod/ModLan$6;->val$gen:J

    # getter for: Lfr/testudo/spacecorsair/mod/ModLan;->linkGen:J
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLan;->access$100()J

    move-result-wide v4

    cmp-long v1, v2, v4

    if-nez v1, :cond_4b

    # invokes: Lfr/testudo/spacecorsair/mod/ModLan;->fail(Ljava/lang/Throwable;)V
    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLan;->access$400(Ljava/lang/Throwable;)V

    .line 578
    :cond_4b
    return-void

    .line 554
    :catch_4c
    move-exception v0

    :try_start_4d
    iget-object v1, p0, Lfr/testudo/spacecorsair/mod/ModLan$6;->val$nl:Lfr/testudo/spacecorsair/mod/ModNet$Link;

    invoke-virtual {v1}, Lfr/testudo/spacecorsair/mod/ModNet$Link;->finSeen()Z

    move-result v1

    if-eqz v1, :cond_59

    const/4 v1, 0x1

    # setter for: Lfr/testudo/spacecorsair/mod/ModLan;->byeSeen:Z
    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModLan;->access$902(Z)Z

    :cond_59
    throw v0

    .line 559
    :cond_5a
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModLan$6;->val$in:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readUnsignedByte()I

    move-result v2

    .line 560
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModLan$6;->val$in:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result v1

    .line 561
    if-ltz v1, :cond_6a

    if-le v1, v9, :cond_83

    :cond_6a
    new-instance v0, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "bad length "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 562
    :cond_83
    new-array v0, v1, [B

    .line 563
    iget-object v3, p0, Lfr/testudo/spacecorsair/mod/ModLan$6;->val$in:Ljava/io/DataInputStream;

    invoke-virtual {v3, v0}, Ljava/io/DataInputStream;->readFully([B)V
    :try_end_8a
    .catch Ljava/lang/Throwable; {:try_start_4d .. :try_end_8a} :catch_3d

    goto :goto_27

    .line 568
    :cond_8b
    :try_start_8b
    # invokes: Lfr/testudo/spacecorsair/mod/ModLan;->receive(I[B)V
    invoke-static {v2, v0}, Lfr/testudo/spacecorsair/mod/ModLan;->access$1000(I[B)V
    :try_end_8e
    .catch Ljava/io/IOException; {:try_start_8b .. :try_end_8e} :catch_90
    .catch Ljava/lang/Throwable; {:try_start_8b .. :try_end_8e} :catch_92

    goto/16 :goto_3

    .line 569
    :catch_90
    move-exception v0

    .line 570
    :try_start_91
    throw v0

    .line 571
    :catch_92
    move-exception v0

    .line 572
    new-instance v1, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "bad message "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_b6
    .catch Ljava/lang/Throwable; {:try_start_91 .. :try_end_b6} :catch_3d
.end method
