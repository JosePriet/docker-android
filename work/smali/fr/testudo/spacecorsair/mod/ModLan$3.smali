.class Lfr/testudo/spacecorsair/mod/ModLan$3;
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


# direct methods
.method constructor <init>(JLjava/io/DataInputStream;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 269
    iput-wide p1, p0, Lfr/testudo/spacecorsair/mod/ModLan$3;->val$gen:J

    iput-object p3, p0, Lfr/testudo/spacecorsair/mod/ModLan$3;->val$in:Ljava/io/DataInputStream;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .prologue
    .line 272
    :goto_0
    :try_start_0
    iget-wide v0, p0, Lfr/testudo/spacecorsair/mod/ModLan$3;->val$gen:J

    # getter for: Lfr/testudo/spacecorsair/mod/ModLan;->linkGen:J
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLan;->access$100()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_43

    .line 273
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModLan$3;->val$in:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readUnsignedByte()I

    move-result v0

    .line 274
    iget-object v1, p0, Lfr/testudo/spacecorsair/mod/ModLan$3;->val$in:Ljava/io/DataInputStream;

    invoke-virtual {v1}, Ljava/io/DataInputStream;->readInt()I

    move-result v1

    .line 275
    if-ltz v1, :cond_1c

    const/high16 v2, 0x400000

    if-le v1, v2, :cond_44

    :cond_1c
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
    :try_end_35
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_35} :catch_35

    .line 281
    :catch_35
    move-exception v0

    .line 282
    iget-wide v2, p0, Lfr/testudo/spacecorsair/mod/ModLan$3;->val$gen:J

    # getter for: Lfr/testudo/spacecorsair/mod/ModLan;->linkGen:J
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLan;->access$100()J

    move-result-wide v4

    cmp-long v1, v2, v4

    if-nez v1, :cond_43

    # invokes: Lfr/testudo/spacecorsair/mod/ModLan;->fail(Ljava/lang/Throwable;)V
    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLan;->access$400(Ljava/lang/Throwable;)V

    .line 284
    :cond_43
    return-void

    .line 276
    :cond_44
    :try_start_44
    new-array v1, v1, [B

    .line 277
    iget-object v2, p0, Lfr/testudo/spacecorsair/mod/ModLan$3;->val$in:Ljava/io/DataInputStream;

    invoke-virtual {v2, v1}, Ljava/io/DataInputStream;->readFully([B)V

    .line 278
    const/4 v2, 0x5

    if-ne v0, v2, :cond_56

    new-instance v0, Ljava/io/IOException;

    const-string v1, "bye"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 279
    :cond_56
    # invokes: Lfr/testudo/spacecorsair/mod/ModLan;->receive(I[B)V
    invoke-static {v0, v1}, Lfr/testudo/spacecorsair/mod/ModLan;->access$600(I[B)V
    :try_end_59
    .catch Ljava/lang/Throwable; {:try_start_44 .. :try_end_59} :catch_35

    goto :goto_0
.end method
