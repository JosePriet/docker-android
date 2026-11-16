.class final Lfr/testudo/spacecorsair/mod/ModNet$Turn;
.super Ljava/lang/Object;
.source "ModNet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfr/testudo/spacecorsair/mod/ModNet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Turn"
.end annotation


# instance fields
.field private final binding:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field volatile bytes:J

.field private final chanOf:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field volatile dead:Z

.field private key:[B

.field private nextChan:I

.field private nonce:Ljava/lang/String;

.field private final pass:Ljava/lang/String;

.field private final peerOf:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/net/InetSocketAddress;",
            ">;"
        }
    .end annotation
.end field

.field private final perms:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private realm:Ljava/lang/String;

.field private refreshAt:J

.field volatile relayed:Ljava/net/InetSocketAddress;

.field final server:Ljava/net/InetSocketAddress;

.field private final user:Ljava/lang/String;

.field final w:Lfr/testudo/spacecorsair/mod/ModNet$Wire;


# direct methods
.method constructor <init>(Lfr/testudo/spacecorsair/mod/ModNet$Wire;Ljava/net/InetSocketAddress;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    .prologue
    .line 372
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 360
    const-string v0, ""

    iput-object v0, p0, Lfr/testudo/spacecorsair/mod/ModNet$Turn;->realm:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lfr/testudo/spacecorsair/mod/ModNet$Turn;->nonce:Ljava/lang/String;

    .line 365
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lfr/testudo/spacecorsair/mod/ModNet$Turn;->chanOf:Ljava/util/HashMap;

    .line 366
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lfr/testudo/spacecorsair/mod/ModNet$Turn;->peerOf:Ljava/util/HashMap;

    .line 367
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lfr/testudo/spacecorsair/mod/ModNet$Turn;->perms:Ljava/util/HashSet;

    .line 368
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lfr/testudo/spacecorsair/mod/ModNet$Turn;->binding:Ljava/util/HashSet;

    .line 370
    const/16 v0, 0x4000

    iput v0, p0, Lfr/testudo/spacecorsair/mod/ModNet$Turn;->nextChan:I

    .line 373
    iput-object p1, p0, Lfr/testudo/spacecorsair/mod/ModNet$Turn;->w:Lfr/testudo/spacecorsair/mod/ModNet$Wire;

    iput-object p2, p0, Lfr/testudo/spacecorsair/mod/ModNet$Turn;->server:Ljava/net/InetSocketAddress;

    iput-object p3, p0, Lfr/testudo/spacecorsair/mod/ModNet$Turn;->user:Ljava/lang/String;

    iput-object p4, p0, Lfr/testudo/spacecorsair/mod/ModNet$Turn;->pass:Ljava/lang/String;

    .line 374
    return-void
.end method

.method static synthetic access$300(Lfr/testudo/spacecorsair/mod/ModNet$Turn;I[[B)[B
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 356
    invoke-direct {p0, p1, p2}, Lfr/testudo/spacecorsair/mod/ModNet$Turn;->request(I[[B)[B

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lfr/testudo/spacecorsair/mod/ModNet$Turn;)Ljava/util/HashSet;
    .registers 2

    .prologue
    .line 356
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModNet$Turn;->perms:Ljava/util/HashSet;

    return-object v0
.end method

.method static synthetic access$500(Lfr/testudo/spacecorsair/mod/ModNet$Turn;)Ljava/util/HashMap;
    .registers 2

    .prologue
    .line 356
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModNet$Turn;->peerOf:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$600(Lfr/testudo/spacecorsair/mod/ModNet$Turn;I[BILjava/net/InetSocketAddress;[[B)[B
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 356
    invoke-direct/range {p0 .. p5}, Lfr/testudo/spacecorsair/mod/ModNet$Turn;->requestTx(I[BILjava/net/InetSocketAddress;[[B)[B

    move-result-object v0

    return-object v0
.end method

.method private varargs request(I[[B)[B
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x2

    const/16 v9, 0x15

    const/16 v8, 0x14

    const/4 v7, 0x3

    const/4 v1, 0x0

    .line 377
    move v2, v1

    :goto_8
    if-ge v2, v7, :cond_16e

    .line 378
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModNet;->txid()[B

    move-result-object v3

    .line 379
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 380
    array-length v5, p2

    move v0, v1

    :goto_15
    if-ge v0, v5, :cond_1f

    aget-object v6, p2, v0

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_15

    .line 382
    :cond_1f
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModNet$Turn;->key:[B

    if-eqz v0, :cond_7b

    .line 383
    const/4 v0, 0x6

    iget-object v5, p0, Lfr/testudo/spacecorsair/mod/ModNet$Turn;->user:Ljava/lang/String;

    const-string v6, "UTF-8"

    invoke-virtual {v5, v6}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v5

    invoke-static {v0, v5}, Lfr/testudo/spacecorsair/mod/ModNet;->attr(I[B)[B

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 384
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModNet$Turn;->realm:Ljava/lang/String;

    const-string v5, "UTF-8"

    invoke-virtual {v0, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v8, v0}, Lfr/testudo/spacecorsair/mod/ModNet;->attr(I[B)[B

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 385
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModNet$Turn;->nonce:Ljava/lang/String;

    const-string v5, "UTF-8"

    invoke-virtual {v0, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v9, v0}, Lfr/testudo/spacecorsair/mod/ModNet;->attr(I[B)[B

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 386
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [[B

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[B

    invoke-static {p1, v3, v0}, Lfr/testudo/spacecorsair/mod/ModNet;->stunMsg(I[B[[B)[B

    move-result-object v0

    iget-object v3, p0, Lfr/testudo/spacecorsair/mod/ModNet$Turn;->key:[B

    invoke-static {v0, v3}, Lfr/testudo/spacecorsair/mod/ModNet;->withIntegrity([B[B)[B

    move-result-object v0

    .line 388
    :goto_67
    iget-object v3, p0, Lfr/testudo/spacecorsair/mod/ModNet$Turn;->w:Lfr/testudo/spacecorsair/mod/ModNet$Wire;

    iget-object v4, p0, Lfr/testudo/spacecorsair/mod/ModNet$Turn;->server:Ljava/net/InetSocketAddress;

    const/16 v5, 0x4b0

    invoke-virtual {v3, v4, v0, v7, v5}, Lfr/testudo/spacecorsair/mod/ModNet$Wire;->transact(Ljava/net/SocketAddress;[BII)[B

    move-result-object v0

    .line 389
    if-nez v0, :cond_8c

    new-instance v0, Ljava/io/IOException;

    const-string v1, "relay does not answer"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 387
    :cond_7b
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [[B

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[B

    invoke-static {p1, v3, v0}, Lfr/testudo/spacecorsair/mod/ModNet;->stunMsg(I[B[[B)[B

    move-result-object v0

    goto :goto_67

    .line 390
    :cond_8c
    aget-byte v3, v0, v1

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    const/4 v4, 0x1

    aget-byte v4, v0, v4

    and-int/lit16 v4, v4, 0xff

    or-int/2addr v3, v4

    .line 391
    and-int/lit16 v3, v3, 0x110

    const/16 v4, 0x100

    if-ne v3, v4, :cond_9f

    return-object v0

    .line 392
    :cond_9f
    array-length v3, v0

    invoke-static {v0, v3}, Lfr/testudo/spacecorsair/mod/ModNet;->attrs([BI)Ljava/util/HashMap;

    move-result-object v3

    .line 393
    const/16 v0, 0x9

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 394
    if-eqz v0, :cond_143

    array-length v4, v0

    const/4 v5, 0x4

    if-lt v4, v5, :cond_143

    aget-byte v4, v0, v10

    and-int/lit8 v4, v4, 0x7

    mul-int/lit8 v4, v4, 0x64

    aget-byte v0, v0, v7

    and-int/lit16 v0, v0, 0xff

    add-int/2addr v0, v4

    .line 395
    :goto_c1
    const/16 v4, 0x191

    if-eq v0, v4, :cond_c9

    const/16 v4, 0x1b6

    if-ne v0, v4, :cond_14f

    :cond_c9
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_14f

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_14f

    if-ge v2, v10, :cond_14f

    .line 396
    new-instance v4, Ljava/lang/String;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    const-string v5, "UTF-8"

    invoke-direct {v4, v0, v5}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    iput-object v4, p0, Lfr/testudo/spacecorsair/mod/ModNet$Turn;->realm:Ljava/lang/String;

    .line 397
    new-instance v4, Ljava/lang/String;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    const-string v3, "UTF-8"

    invoke-direct {v4, v0, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    iput-object v4, p0, Lfr/testudo/spacecorsair/mod/ModNet$Turn;->nonce:Ljava/lang/String;

    .line 399
    :try_start_105
    const-string v0, "MD5"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lfr/testudo/spacecorsair/mod/ModNet$Turn;->user:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lfr/testudo/spacecorsair/mod/ModNet$Turn;->realm:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lfr/testudo/spacecorsair/mod/ModNet$Turn;->pass:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "UTF-8"

    invoke-virtual {v3, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v0

    iput-object v0, p0, Lfr/testudo/spacecorsair/mod/ModNet$Turn;->key:[B
    :try_end_13e
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_105 .. :try_end_13e} :catch_146

    .line 377
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto/16 :goto_8

    :cond_143
    move v0, v1

    .line 394
    goto/16 :goto_c1

    .line 400
    :catch_146
    move-exception v0

    .line 401
    new-instance v0, Ljava/io/IOException;

    const-string v1, "no MD5"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 405
    :cond_14f
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "relay refused ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 407
    :cond_16e
    new-instance v0, Ljava/io/IOException;

    const-string v1, "relay refused"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private varargs requestTx(I[BILjava/net/InetSocketAddress;[[B)[B
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 429
    invoke-virtual {p4}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v0

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModNet;->plain(Ljava/net/InetAddress;)Ljava/net/InetAddress;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v0

    .line 430
    array-length v0, v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_19

    new-instance v0, Ljava/io/IOException;

    const-string v1, "relay peers are IPv4"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 431
    :cond_19
    array-length v0, p5

    add-int/lit8 v0, v0, 0x1

    new-array v0, v0, [[B

    .line 432
    const/16 v1, 0xc

    new-array v1, v1, [B

    invoke-static {p4, v1}, Lfr/testudo/spacecorsair/mod/ModNet;->xorAddr(Ljava/net/InetSocketAddress;[B)[B

    move-result-object v1

    invoke-static {p3, v1}, Lfr/testudo/spacecorsair/mod/ModNet;->attr(I[B)[B

    move-result-object v1

    aput-object v1, v0, v3

    .line 433
    const/4 v1, 0x1

    array-length v2, p5

    invoke-static {p5, v3, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 434
    invoke-direct {p0, p1, v0}, Lfr/testudo/spacecorsair/mod/ModNet$Turn;->request(I[[B)[B

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method allocate()V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    .line 412
    const/4 v0, 0x3

    new-array v1, v5, [[B

    const/4 v2, 0x0

    const/16 v3, 0x19

    const/4 v4, 0x4

    new-array v4, v4, [B

    fill-array-data v4, :array_48

    invoke-static {v3, v4}, Lfr/testudo/spacecorsair/mod/ModNet;->attr(I[B)[B

    move-result-object v3

    aput-object v3, v1, v2

    invoke-direct {p0, v0, v1}, Lfr/testudo/spacecorsair/mod/ModNet$Turn;->request(I[[B)[B

    move-result-object v1

    .line 413
    array-length v0, v1

    invoke-static {v1, v0}, Lfr/testudo/spacecorsair/mod/ModNet;->attrs([BI)Ljava/util/HashMap;

    move-result-object v0

    const/16 v2, 0x16

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    # invokes: Lfr/testudo/spacecorsair/mod/ModNet;->txOf([B)[B
    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModNet;->access$200([B)[B

    move-result-object v1

    invoke-static {v0, v1, v5}, Lfr/testudo/spacecorsair/mod/ModNet;->addrOf([B[BZ)Ljava/net/InetSocketAddress;

    move-result-object v0

    .line 414
    if-nez v0, :cond_3a

    new-instance v0, Ljava/io/IOException;

    const-string v1, "relay gave no address"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 415
    :cond_3a
    iput-object v0, p0, Lfr/testudo/spacecorsair/mod/ModNet$Turn;->relayed:Ljava/net/InetSocketAddress;

    .line 416
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lfr/testudo/spacecorsair/mod/ModNet$Turn;->refreshAt:J

    .line 417
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModNet$Turn;->w:Lfr/testudo/spacecorsair/mod/ModNet$Wire;

    iput-object p0, v0, Lfr/testudo/spacecorsair/mod/ModNet$Wire;->turn:Lfr/testudo/spacecorsair/mod/ModNet$Turn;

    .line 418
    return-void

    .line 412
    nop

    :array_48
    .array-data 1
        0x11t
        0x0t
        0x0t
        0x0t
    .end array-data
.end method

.method bind(Ljava/net/InetSocketAddress;)V
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 440
    monitor-enter p0

    .line 441
    :try_start_3
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModNet$Turn;->chanOf:Ljava/util/HashMap;

    invoke-static {p1}, Lfr/testudo/spacecorsair/mod/ModNet;->show(Ljava/net/InetSocketAddress;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_15

    iget v0, p0, Lfr/testudo/spacecorsair/mod/ModNet$Turn;->nextChan:I

    const/16 v1, 0x4fff

    if-le v0, v1, :cond_17

    :cond_15
    monitor-exit p0

    .line 446
    :goto_16
    return-void

    .line 442
    :cond_17
    iget v6, p0, Lfr/testudo/spacecorsair/mod/ModNet$Turn;->nextChan:I

    add-int/lit8 v0, v6, 0x1

    iput v0, p0, Lfr/testudo/spacecorsair/mod/ModNet$Turn;->nextChan:I

    .line 443
    monitor-exit p0
    :try_end_1e
    .catchall {:try_start_3 .. :try_end_1e} :catchall_70

    .line 444
    const/16 v1, 0x9

    const/4 v2, 0x0

    const/16 v3, 0x12

    new-array v5, v9, [[B

    const/16 v0, 0xc

    const/4 v4, 0x4

    new-array v4, v4, [B

    shr-int/lit8 v7, v6, 0x8

    int-to-byte v7, v7

    aput-byte v7, v4, v8

    int-to-byte v7, v6

    aput-byte v7, v4, v9

    const/4 v7, 0x2

    aput-byte v8, v4, v7

    const/4 v7, 0x3

    aput-byte v8, v4, v7

    invoke-static {v0, v4}, Lfr/testudo/spacecorsair/mod/ModNet;->attr(I[B)[B

    move-result-object v0

    aput-object v0, v5, v8

    move-object v0, p0

    move-object v4, p1

    invoke-direct/range {v0 .. v5}, Lfr/testudo/spacecorsair/mod/ModNet$Turn;->requestTx(I[BILjava/net/InetSocketAddress;[[B)[B

    .line 445
    monitor-enter p0

    :try_start_44
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModNet$Turn;->chanOf:Ljava/util/HashMap;

    invoke-static {p1}, Lfr/testudo/spacecorsair/mod/ModNet;->show(Ljava/net/InetSocketAddress;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModNet$Turn;->peerOf:Ljava/util/HashMap;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModNet$Turn;->perms:Ljava/util/HashSet;

    invoke-virtual {p1}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v1

    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModNet;->plain(Ljava/net/InetAddress;)Ljava/net/InetAddress;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    monitor-exit p0

    goto :goto_16

    :catchall_6d
    move-exception v0

    monitor-exit p0
    :try_end_6f
    .catchall {:try_start_44 .. :try_end_6f} :catchall_6d

    throw v0

    .line 443
    :catchall_70
    move-exception v0

    :try_start_71
    monitor-exit p0
    :try_end_72
    .catchall {:try_start_71 .. :try_end_72} :catchall_70

    throw v0
.end method

.method close()V
    .registers 8

    .prologue
    const/4 v1, 0x1

    .line 528
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModNet$Turn;->relayed:Ljava/net/InetSocketAddress;

    if-eqz v0, :cond_9

    iget-boolean v0, p0, Lfr/testudo/spacecorsair/mod/ModNet$Turn;->dead:Z

    if-eqz v0, :cond_a

    .line 537
    :cond_9
    :goto_9
    return-void

    .line 529
    :cond_a
    iput-boolean v1, p0, Lfr/testudo/spacecorsair/mod/ModNet$Turn;->dead:Z

    .line 532
    const/4 v0, 0x4

    :try_start_d
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModNet;->txid()[B

    move-result-object v1

    const/4 v2, 0x4

    new-array v2, v2, [[B

    const/4 v3, 0x0

    const/16 v4, 0xd

    const/4 v5, 0x4

    new-array v5, v5, [B

    fill-array-data v5, :array_6e

    invoke-static {v4, v5}, Lfr/testudo/spacecorsair/mod/ModNet;->attr(I[B)[B

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const/4 v4, 0x6

    iget-object v5, p0, Lfr/testudo/spacecorsair/mod/ModNet$Turn;->user:Ljava/lang/String;

    const-string v6, "UTF-8"

    invoke-virtual {v5, v6}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v5

    invoke-static {v4, v5}, Lfr/testudo/spacecorsair/mod/ModNet;->attr(I[B)[B

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const/16 v4, 0x14

    iget-object v5, p0, Lfr/testudo/spacecorsair/mod/ModNet$Turn;->realm:Ljava/lang/String;

    const-string v6, "UTF-8"

    .line 533
    invoke-virtual {v5, v6}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v5

    invoke-static {v4, v5}, Lfr/testudo/spacecorsair/mod/ModNet;->attr(I[B)[B

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const/16 v4, 0x15

    iget-object v5, p0, Lfr/testudo/spacecorsair/mod/ModNet$Turn;->nonce:Ljava/lang/String;

    const-string v6, "UTF-8"

    invoke-virtual {v5, v6}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v5

    invoke-static {v4, v5}, Lfr/testudo/spacecorsair/mod/ModNet;->attr(I[B)[B

    move-result-object v4

    aput-object v4, v2, v3

    .line 532
    invoke-static {v0, v1, v2}, Lfr/testudo/spacecorsair/mod/ModNet;->stunMsg(I[B[[B)[B

    move-result-object v0

    .line 534
    iget-object v1, p0, Lfr/testudo/spacecorsair/mod/ModNet$Turn;->key:[B

    if-eqz v1, :cond_63

    iget-object v1, p0, Lfr/testudo/spacecorsair/mod/ModNet$Turn;->key:[B

    invoke-static {v0, v1}, Lfr/testudo/spacecorsair/mod/ModNet;->withIntegrity([B[B)[B

    move-result-object v0

    .line 535
    :cond_63
    iget-object v1, p0, Lfr/testudo/spacecorsair/mod/ModNet$Turn;->w:Lfr/testudo/spacecorsair/mod/ModNet$Wire;

    iget-object v2, p0, Lfr/testudo/spacecorsair/mod/ModNet$Turn;->server:Ljava/net/InetSocketAddress;

    array-length v3, v0

    invoke-virtual {v1, v2, v0, v3}, Lfr/testudo/spacecorsair/mod/ModNet$Wire;->send(Ljava/net/SocketAddress;[BI)V
    :try_end_6b
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_6b} :catch_6c

    goto :goto_9

    .line 536
    :catch_6c
    move-exception v0

    goto :goto_9

    .line 532
    :array_6e
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data
.end method

.method keep()V
    .registers 7

    .prologue
    .line 450
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 451
    iget-boolean v2, p0, Lfr/testudo/spacecorsair/mod/ModNet$Turn;->dead:Z

    if-nez v2, :cond_17

    iget-object v2, p0, Lfr/testudo/spacecorsair/mod/ModNet$Turn;->relayed:Ljava/net/InetSocketAddress;

    if-eqz v2, :cond_17

    iget-wide v2, p0, Lfr/testudo/spacecorsair/mod/ModNet$Turn;->refreshAt:J

    sub-long v2, v0, v2

    const-wide/32 v4, 0x2bf20

    cmp-long v2, v2, v4

    if-gez v2, :cond_18

    .line 472
    :cond_17
    :goto_17
    return-void

    .line 452
    :cond_18
    iput-wide v0, p0, Lfr/testudo/spacecorsair/mod/ModNet$Turn;->refreshAt:J

    .line 453
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lfr/testudo/spacecorsair/mod/ModNet$Turn$1;

    invoke-direct {v1, p0}, Lfr/testudo/spacecorsair/mod/ModNet$Turn$1;-><init>(Lfr/testudo/spacecorsair/mod/ModNet$Turn;)V

    const-string v2, "net-turn-keep"

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 471
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_17
.end method

.method onChannel([BI)V
    .registers 13

    .prologue
    const/4 v3, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 500
    aget-byte v0, p1, v8

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    aget-byte v1, p1, v9

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    aget-byte v1, p1, v3

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    const/4 v2, 0x3

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    or-int/2addr v1, v2

    .line 501
    add-int/lit8 v2, p2, -0x4

    if-le v1, v2, :cond_1f

    .line 510
    :cond_1e
    :goto_1e
    return-void

    .line 503
    :cond_1f
    monitor-enter p0

    :try_start_20
    iget-object v2, p0, Lfr/testudo/spacecorsair/mod/ModNet$Turn;->peerOf:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/InetSocketAddress;

    monitor-exit p0
    :try_end_2d
    .catchall {:try_start_20 .. :try_end_2d} :catchall_4f

    .line 504
    iget-object v2, p0, Lfr/testudo/spacecorsair/mod/ModNet$Turn;->w:Lfr/testudo/spacecorsair/mod/ModNet$Wire;

    iget-object v2, v2, Lfr/testudo/spacecorsair/mod/ModNet$Wire;->handler:Lfr/testudo/spacecorsair/mod/ModNet$PeerHandler;

    .line 505
    if-eqz v0, :cond_1e

    if-eqz v2, :cond_1e

    if-lt v1, v3, :cond_1e

    .line 506
    iget-wide v4, p0, Lfr/testudo/spacecorsair/mod/ModNet$Turn;->bytes:J

    int-to-long v6, v1

    add-long/2addr v4, v6

    iput-wide v4, p0, Lfr/testudo/spacecorsair/mod/ModNet$Turn;->bytes:J

    .line 507
    new-array v3, v1, [B

    .line 508
    const/4 v4, 0x4

    invoke-static {p1, v4, v3, v8, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 509
    aget-byte v4, v3, v8

    and-int/lit16 v4, v4, 0xff

    const/16 v5, 0xc5

    if-ne v4, v5, :cond_1e

    invoke-interface {v2, v0, v3, v1, v9}, Lfr/testudo/spacecorsair/mod/ModNet$PeerHandler;->onPeer(Ljava/net/InetSocketAddress;[BIZ)V

    goto :goto_1e

    .line 503
    :catchall_4f
    move-exception v0

    :try_start_50
    monitor-exit p0
    :try_end_51
    .catchall {:try_start_50 .. :try_end_51} :catchall_4f

    throw v0
.end method

.method onData([BI)V
    .registers 13

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 513
    invoke-static {p1, p2}, Lfr/testudo/spacecorsair/mod/ModNet;->attrs([BI)Ljava/util/HashMap;

    move-result-object v1

    .line 514
    const/16 v0, 0x13

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 515
    const/16 v4, 0x12

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    # invokes: Lfr/testudo/spacecorsair/mod/ModNet;->txOf([B)[B
    invoke-static {p1}, Lfr/testudo/spacecorsair/mod/ModNet;->access$200([B)[B

    move-result-object v4

    invoke-static {v1, v4, v2}, Lfr/testudo/spacecorsair/mod/ModNet;->addrOf([B[BZ)Ljava/net/InetSocketAddress;

    move-result-object v1

    .line 516
    iget-object v4, p0, Lfr/testudo/spacecorsair/mod/ModNet$Turn;->w:Lfr/testudo/spacecorsair/mod/ModNet$Wire;

    iget-object v4, v4, Lfr/testudo/spacecorsair/mod/ModNet$Wire;->handler:Lfr/testudo/spacecorsair/mod/ModNet$PeerHandler;

    .line 517
    if-eqz v0, :cond_3c

    if-eqz v1, :cond_3c

    if-eqz v4, :cond_3c

    array-length v5, v0

    const/4 v6, 0x2

    if-lt v5, v6, :cond_3c

    aget-byte v5, v0, v3

    and-int/lit16 v5, v5, 0xff

    const/16 v6, 0xc5

    if-eq v5, v6, :cond_3d

    .line 525
    :cond_3c
    :goto_3c
    return-void

    .line 518
    :cond_3d
    iget-wide v6, p0, Lfr/testudo/spacecorsair/mod/ModNet$Turn;->bytes:J

    array-length v5, v0

    int-to-long v8, v5

    add-long/2addr v6, v8

    iput-wide v6, p0, Lfr/testudo/spacecorsair/mod/ModNet$Turn;->bytes:J

    .line 519
    array-length v5, v0

    invoke-interface {v4, v1, v0, v5, v2}, Lfr/testudo/spacecorsair/mod/ModNet$PeerHandler;->onPeer(Ljava/net/InetSocketAddress;[BIZ)V

    .line 521
    monitor-enter p0

    :try_start_49
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModNet$Turn;->chanOf:Ljava/util/HashMap;

    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModNet;->show(Ljava/net/InetSocketAddress;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_75

    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModNet$Turn;->binding:Ljava/util/HashSet;

    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModNet;->show(Ljava/net/InetSocketAddress;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_75

    move v0, v2

    :goto_62
    monitor-exit p0
    :try_end_63
    .catchall {:try_start_49 .. :try_end_63} :catchall_77

    .line 522
    if-eqz v0, :cond_3c

    new-instance v0, Ljava/lang/Thread;

    new-instance v2, Lfr/testudo/spacecorsair/mod/ModNet$Turn$2;

    invoke-direct {v2, p0, v1}, Lfr/testudo/spacecorsair/mod/ModNet$Turn$2;-><init>(Lfr/testudo/spacecorsair/mod/ModNet$Turn;Ljava/net/InetSocketAddress;)V

    const-string v1, "net-turn-bind"

    invoke-direct {v0, v2, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 524
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_3c

    :cond_75
    move v0, v3

    .line 521
    goto :goto_62

    :catchall_77
    move-exception v0

    :try_start_78
    monitor-exit p0
    :try_end_79
    .catchall {:try_start_78 .. :try_end_79} :catchall_77

    throw v0
.end method

.method permit(Ljava/net/InetAddress;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 422
    const/16 v1, 0x8

    const/4 v2, 0x0

    const/16 v3, 0x12

    new-instance v4, Ljava/net/InetSocketAddress;

    invoke-static {p1}, Lfr/testudo/spacecorsair/mod/ModNet;->plain(Ljava/net/InetAddress;)Ljava/net/InetAddress;

    move-result-object v0

    const/4 v5, 0x1

    invoke-direct {v4, v0, v5}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    const/4 v0, 0x0

    new-array v5, v0, [[B

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lfr/testudo/spacecorsair/mod/ModNet$Turn;->requestTx(I[BILjava/net/InetSocketAddress;[[B)[B

    .line 423
    monitor-enter p0

    :try_start_17
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModNet$Turn;->perms:Ljava/util/HashSet;

    invoke-static {p1}, Lfr/testudo/spacecorsair/mod/ModNet;->plain(Ljava/net/InetAddress;)Ljava/net/InetAddress;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    monitor-exit p0

    .line 424
    return-void

    .line 423
    :catchall_26
    move-exception v0

    monitor-exit p0
    :try_end_28
    .catchall {:try_start_17 .. :try_end_28} :catchall_26

    throw v0
.end method

.method send(Ljava/net/InetSocketAddress;[BI)V
    .registers 13

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 475
    iget-boolean v0, p0, Lfr/testudo/spacecorsair/mod/ModNet$Turn;->dead:Z

    if-nez v0, :cond_b

    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModNet$Turn;->relayed:Ljava/net/InetSocketAddress;

    if-nez v0, :cond_c

    .line 497
    :cond_b
    :goto_b
    return-void

    .line 478
    :cond_c
    monitor-enter p0

    :try_start_d
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModNet$Turn;->chanOf:Ljava/util/HashMap;

    invoke-static {p1}, Lfr/testudo/spacecorsair/mod/ModNet;->show(Ljava/net/InetSocketAddress;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    iget-object v1, p0, Lfr/testudo/spacecorsair/mod/ModNet$Turn;->perms:Ljava/util/HashSet;

    invoke-virtual {p1}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v2

    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModNet;->plain(Ljava/net/InetAddress;)Ljava/net/InetAddress;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    monitor-exit p0
    :try_end_2c
    .catchall {:try_start_d .. :try_end_2c} :catchall_5e

    .line 479
    iget-wide v2, p0, Lfr/testudo/spacecorsair/mod/ModNet$Turn;->bytes:J

    int-to-long v4, p3

    add-long/2addr v2, v4

    iput-wide v2, p0, Lfr/testudo/spacecorsair/mod/ModNet$Turn;->bytes:J

    .line 480
    if-eqz v0, :cond_61

    .line 481
    add-int/lit8 v1, p3, 0x4

    new-array v1, v1, [B

    .line 482
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    shr-int/lit8 v2, v2, 0x8

    int-to-byte v2, v2

    aput-byte v2, v1, v6

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-byte v0, v0

    aput-byte v0, v1, v7

    shr-int/lit8 v0, p3, 0x8

    int-to-byte v0, v0

    aput-byte v0, v1, v8

    const/4 v0, 0x3

    int-to-byte v2, p3

    aput-byte v2, v1, v0

    .line 483
    const/4 v0, 0x4

    invoke-static {p2, v6, v1, v0, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 484
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModNet$Turn;->w:Lfr/testudo/spacecorsair/mod/ModNet$Wire;

    iget-object v2, p0, Lfr/testudo/spacecorsair/mod/ModNet$Turn;->server:Ljava/net/InetSocketAddress;

    array-length v3, v1

    invoke-virtual {v0, v2, v1, v3}, Lfr/testudo/spacecorsair/mod/ModNet$Wire;->send(Ljava/net/SocketAddress;[BI)V

    goto :goto_b

    .line 478
    :catchall_5e
    move-exception v0

    :try_start_5f
    monitor-exit p0
    :try_end_60
    .catchall {:try_start_5f .. :try_end_60} :catchall_5e

    throw v0

    .line 487
    :cond_61
    if-eqz v1, :cond_b

    .line 489
    :try_start_63
    new-array v0, p3, [B

    .line 490
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {p2, v1, v0, v2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 491
    const/16 v1, 0x16

    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModNet;->txid()[B

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [[B

    const/4 v4, 0x0

    const/16 v5, 0x12

    const/16 v6, 0xc

    new-array v6, v6, [B

    invoke-static {p1, v6}, Lfr/testudo/spacecorsair/mod/ModNet;->xorAddr(Ljava/net/InetSocketAddress;[B)[B

    move-result-object v6

    invoke-static {v5, v6}, Lfr/testudo/spacecorsair/mod/ModNet;->attr(I[B)[B

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const/16 v5, 0x13

    invoke-static {v5, v0}, Lfr/testudo/spacecorsair/mod/ModNet;->attr(I[B)[B

    move-result-object v0

    aput-object v0, v3, v4

    invoke-static {v1, v2, v3}, Lfr/testudo/spacecorsair/mod/ModNet;->stunMsg(I[B[[B)[B

    move-result-object v0

    .line 493
    iget-object v1, p0, Lfr/testudo/spacecorsair/mod/ModNet$Turn;->w:Lfr/testudo/spacecorsair/mod/ModNet$Wire;

    iget-object v2, p0, Lfr/testudo/spacecorsair/mod/ModNet$Turn;->server:Ljava/net/InetSocketAddress;

    array-length v3, v0

    invoke-virtual {v1, v2, v0, v3}, Lfr/testudo/spacecorsair/mod/ModNet$Wire;->send(Ljava/net/SocketAddress;[BI)V
    :try_end_99
    .catch Ljava/lang/Throwable; {:try_start_63 .. :try_end_99} :catch_9b

    goto/16 :goto_b

    .line 494
    :catch_9b
    move-exception v0

    goto/16 :goto_b
.end method
