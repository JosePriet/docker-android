.class final Lfr/testudo/spacecorsair/mod/ModNet$Link;
.super Ljava/net/Socket;
.source "ModNet.java"

# interfaces
.implements Lfr/testudo/spacecorsair/mod/ModNet$PeerHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfr/testudo/spacecorsair/mod/ModNet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Link"
.end annotation


# instance fields
.field private volatile acked:Ljava/net/InetSocketAddress;

.field private volatile ackedRelay:Z

.field private final ahead:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "[B>;"
        }
    .end annotation
.end field

.field private volatile closed:Z

.field private consumed:J

.field private volatile dead:Z

.field private volatile direct:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/net/InetSocketAddress;",
            ">;"
        }
    .end annotation
.end field

.field private volatile finSeen:Z

.field private in:[B

.field private inHead:I

.field private inSize:I

.field private final is:Ljava/io/InputStream;

.field private lastFromRemote:J

.field private lastPing:J

.field private lastRecv:J

.field private lastRetry:J

.field private latCnt:I

.field private latDone:I

.field private latFrags:[[B

.field private latGot:I

.field private latId:I

.field private latOff:J

.field private final latWait:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<[",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private latestId:I

.field private final os:Ljava/io/OutputStream;

.field private volatile peerRelay:Ljava/net/InetSocketAddress;

.field private final pending:Ljava/io/ByteArrayOutputStream;

.field private rcvNext:I

.field private volatile remote:Ljava/net/InetSocketAddress;

.field volatile rttMs:I

.field private sendOff:I

.field final sid:I

.field private volatile soTimeout:I

.field private volatile started:Z

.field private final timer:Ljava/lang/Thread;

.field private final unacked:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lfr/testudo/spacecorsair/mod/ModNet$Seg;",
            ">;"
        }
    .end annotation
.end field

.field private volatile viaRelay:Z

.field final w:Lfr/testudo/spacecorsair/mod/ModNet$Wire;

.field private written:J


# direct methods
.method constructor <init>(Lfr/testudo/spacecorsair/mod/ModNet$Wire;I)V
    .registers 6

    .prologue
    const/4 v2, -0x1

    .line 611
    invoke-direct {p0}, Ljava/net/Socket;-><init>()V

    .line 575
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lfr/testudo/spacecorsair/mod/ModNet$Link;->lastRecv:J

    iget-wide v0, p0, Lfr/testudo/spacecorsair/mod/ModNet$Link;->lastRecv:J

    iput-wide v0, p0, Lfr/testudo/spacecorsair/mod/ModNet$Link;->lastFromRemote:J

    .line 576
    const/16 v0, 0xc8

    iput v0, p0, Lfr/testudo/spacecorsair/mod/ModNet$Link;->rttMs:I

    .line 578
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    const/16 v1, 0x1000

    invoke-direct {v0, v1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    iput-object v0, p0, Lfr/testudo/spacecorsair/mod/ModNet$Link;->pending:Ljava/io/ByteArrayOutputStream;

    .line 579
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lfr/testudo/spacecorsair/mod/ModNet$Link;->unacked:Ljava/util/ArrayList;

    .line 585
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lfr/testudo/spacecorsair/mod/ModNet$Link;->ahead:Ljava/util/HashMap;

    .line 586
    const/16 v0, 0x2000

    new-array v0, v0, [B

    iput-object v0, p0, Lfr/testudo/spacecorsair/mod/ModNet$Link;->in:[B

    .line 589
    iput v2, p0, Lfr/testudo/spacecorsair/mod/ModNet$Link;->latId:I

    .line 593
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lfr/testudo/spacecorsair/mod/ModNet$Link;->latWait:Ljava/util/ArrayList;

    .line 594
    iput v2, p0, Lfr/testudo/spacecorsair/mod/ModNet$Link;->latDone:I

    .line 948
    new-instance v0, Lfr/testudo/spacecorsair/mod/ModNet$Link$2;

    invoke-direct {v0, p0}, Lfr/testudo/spacecorsair/mod/ModNet$Link$2;-><init>(Lfr/testudo/spacecorsair/mod/ModNet$Link;)V

    iput-object v0, p0, Lfr/testudo/spacecorsair/mod/ModNet$Link;->is:Ljava/io/InputStream;

    .line 974
    new-instance v0, Lfr/testudo/spacecorsair/mod/ModNet$Link$3;

    invoke-direct {v0, p0}, Lfr/testudo/spacecorsair/mod/ModNet$Link$3;-><init>(Lfr/testudo/spacecorsair/mod/ModNet$Link;)V

    iput-object v0, p0, Lfr/testudo/spacecorsair/mod/ModNet$Link;->os:Ljava/io/OutputStream;

    .line 612
    iput-object p1, p0, Lfr/testudo/spacecorsair/mod/ModNet$Link;->w:Lfr/testudo/spacecorsair/mod/ModNet$Wire;

    .line 613
    iput p2, p0, Lfr/testudo/spacecorsair/mod/ModNet$Link;->sid:I

    .line 614
    iput-object p0, p1, Lfr/testudo/spacecorsair/mod/ModNet$Wire;->handler:Lfr/testudo/spacecorsair/mod/ModNet$PeerHandler;

    .line 615
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lfr/testudo/spacecorsair/mod/ModNet$Link$1;

    invoke-direct {v1, p0}, Lfr/testudo/spacecorsair/mod/ModNet$Link$1;-><init>(Lfr/testudo/spacecorsair/mod/ModNet$Link;)V

    const-string v2, "net-link"

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object v0, p0, Lfr/testudo/spacecorsair/mod/ModNet$Link;->timer:Ljava/lang/Thread;

    .line 616
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModNet$Link;->timer:Ljava/lang/Thread;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 617
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModNet$Link;->timer:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 618
    return-void
.end method

.method static synthetic access$1000(Lfr/testudo/spacecorsair/mod/ModNet$Link;)I
    .registers 2

    .prologue
    .line 568
    iget v0, p0, Lfr/testudo/spacecorsair/mod/ModNet$Link;->inSize:I

    return v0
.end method

.method static synthetic access$1100(Lfr/testudo/spacecorsair/mod/ModNet$Link;[BII)I
    .registers 5

    .prologue
    .line 568
    invoke-direct {p0, p1, p2, p3}, Lfr/testudo/spacecorsair/mod/ModNet$Link;->take([BII)I

    move-result v0

    return v0
.end method

.method static synthetic access$1200(Lfr/testudo/spacecorsair/mod/ModNet$Link;)Z
    .registers 2

    .prologue
    .line 568
    iget-boolean v0, p0, Lfr/testudo/spacecorsair/mod/ModNet$Link;->closed:Z

    return v0
.end method

.method static synthetic access$1300(Lfr/testudo/spacecorsair/mod/ModNet$Link;)Z
    .registers 2

    .prologue
    .line 568
    iget-boolean v0, p0, Lfr/testudo/spacecorsair/mod/ModNet$Link;->finSeen:Z

    return v0
.end method

.method static synthetic access$1400(Lfr/testudo/spacecorsair/mod/ModNet$Link;)Z
    .registers 2

    .prologue
    .line 568
    iget-boolean v0, p0, Lfr/testudo/spacecorsair/mod/ModNet$Link;->dead:Z

    return v0
.end method

.method static synthetic access$1500(Lfr/testudo/spacecorsair/mod/ModNet$Link;)Ljava/io/ByteArrayOutputStream;
    .registers 2

    .prologue
    .line 568
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModNet$Link;->pending:Ljava/io/ByteArrayOutputStream;

    return-object v0
.end method

.method static synthetic access$1614(Lfr/testudo/spacecorsair/mod/ModNet$Link;J)J
    .registers 6

    .prologue
    .line 568
    iget-wide v0, p0, Lfr/testudo/spacecorsair/mod/ModNet$Link;->written:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lfr/testudo/spacecorsair/mod/ModNet$Link;->written:J

    return-wide v0
.end method

.method static synthetic access$1700(Lfr/testudo/spacecorsair/mod/ModNet$Link;J)V
    .registers 4

    .prologue
    .line 568
    invoke-direct {p0, p1, p2}, Lfr/testudo/spacecorsair/mod/ModNet$Link;->pump(J)V

    return-void
.end method

.method static synthetic access$700(Lfr/testudo/spacecorsair/mod/ModNet$Link;)V
    .registers 1

    .prologue
    .line 568
    invoke-direct {p0}, Lfr/testudo/spacecorsair/mod/ModNet$Link;->tick()V

    return-void
.end method

.method static synthetic access$900(Lfr/testudo/spacecorsair/mod/ModNet$Link;)I
    .registers 2

    .prologue
    .line 568
    iget v0, p0, Lfr/testudo/spacecorsair/mod/ModNet$Link;->soTimeout:I

    return v0
.end method

.method private append([BII)V
    .registers 10

    .prologue
    const/4 v1, 0x0

    .line 771
    iget v0, p0, Lfr/testudo/spacecorsair/mod/ModNet$Link;->inSize:I

    add-int/2addr v0, p3

    iget-object v2, p0, Lfr/testudo/spacecorsair/mod/ModNet$Link;->in:[B

    array-length v2, v2

    if-le v0, v2, :cond_30

    .line 772
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModNet$Link;->in:[B

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x2

    iget v2, p0, Lfr/testudo/spacecorsair/mod/ModNet$Link;->inSize:I

    add-int/2addr v2, p3

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    new-array v2, v0, [B

    move v0, v1

    .line 773
    :goto_18
    iget v3, p0, Lfr/testudo/spacecorsair/mod/ModNet$Link;->inSize:I

    if-ge v0, v3, :cond_2c

    iget-object v3, p0, Lfr/testudo/spacecorsair/mod/ModNet$Link;->in:[B

    iget v4, p0, Lfr/testudo/spacecorsair/mod/ModNet$Link;->inHead:I

    add-int/2addr v4, v0

    iget-object v5, p0, Lfr/testudo/spacecorsair/mod/ModNet$Link;->in:[B

    array-length v5, v5

    rem-int/2addr v4, v5

    aget-byte v3, v3, v4

    aput-byte v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_18

    .line 774
    :cond_2c
    iput-object v2, p0, Lfr/testudo/spacecorsair/mod/ModNet$Link;->in:[B

    .line 775
    iput v1, p0, Lfr/testudo/spacecorsair/mod/ModNet$Link;->inHead:I

    .line 777
    :cond_30
    :goto_30
    if-ge v1, p3, :cond_47

    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModNet$Link;->in:[B

    iget v2, p0, Lfr/testudo/spacecorsair/mod/ModNet$Link;->inHead:I

    iget v3, p0, Lfr/testudo/spacecorsair/mod/ModNet$Link;->inSize:I

    add-int/2addr v2, v3

    add-int/2addr v2, v1

    iget-object v3, p0, Lfr/testudo/spacecorsair/mod/ModNet$Link;->in:[B

    array-length v3, v3

    rem-int/2addr v2, v3

    add-int v3, p2, v1

    aget-byte v3, p1, v3

    aput-byte v3, v0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_30

    .line 778
    :cond_47
    iget v0, p0, Lfr/testudo/spacecorsair/mod/ModNet$Link;->inSize:I

    add-int/2addr v0, p3

    iput v0, p0, Lfr/testudo/spacecorsair/mod/ModNet$Link;->inSize:I

    .line 779
    return-void
.end method

.method private static get4([BI)I
    .registers 4

    .prologue
    .line 631
    aget-byte v0, p0, p1

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x18

    add-int/lit8 v1, p1, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    add-int/lit8 v1, p1, 0x2

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    add-int/lit8 v1, p1, 0x3

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    return v0
.end method

.method private isDirect(Ljava/net/InetSocketAddress;)Z
    .registers 6

    .prologue
    const/4 v1, 0x0

    .line 602
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModNet$Link;->direct:Ljava/util/ArrayList;

    .line 603
    if-nez v0, :cond_7

    move v0, v1

    .line 605
    :goto_6
    return v0

    .line 604
    :cond_7
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/InetSocketAddress;

    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v0

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModNet;->plain(Ljava/net/InetAddress;)Ljava/net/InetAddress;

    move-result-object v0

    invoke-virtual {p1}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v3

    invoke-static {v3}, Lfr/testudo/spacecorsair/mod/ModNet;->plain(Ljava/net/InetAddress;)Ljava/net/InetAddress;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/net/InetAddress;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    const/4 v0, 0x1

    goto :goto_6

    :cond_2f
    move v0, v1

    .line 605
    goto :goto_6
.end method

.method private onAck([BIJ)V
    .registers 16

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 792
    const/4 v0, 0x6

    invoke-static {p1, v0}, Lfr/testudo/spacecorsair/mod/ModNet$Link;->get4([BI)I

    move-result v5

    const/16 v0, 0xa

    aget-byte v0, p1, v0

    and-int/lit16 v6, v0, 0xff

    .line 793
    mul-int/lit8 v0, v6, 0x4

    add-int/lit8 v0, v0, 0xb

    if-ge p2, v0, :cond_14

    .line 809
    :cond_13
    :goto_13
    return-void

    .line 794
    :cond_14
    const/4 v1, -0x1

    move v2, v3

    .line 795
    :goto_16
    if-ge v2, v6, :cond_42

    .line 796
    mul-int/lit8 v0, v2, 0x4

    add-int/lit8 v0, v0, 0xb

    invoke-static {p1, v0}, Lfr/testudo/spacecorsair/mod/ModNet$Link;->get4([BI)I

    move-result v7

    .line 797
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModNet$Link;->unacked:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_26
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_38

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfr/testudo/spacecorsair/mod/ModNet$Seg;

    iget v9, v0, Lfr/testudo/spacecorsair/mod/ModNet$Seg;->off:I

    if-ne v9, v7, :cond_26

    iput-boolean v4, v0, Lfr/testudo/spacecorsair/mod/ModNet$Seg;->sacked:Z

    .line 798
    :cond_38
    sub-int v0, v7, v5

    if-le v0, v1, :cond_a7

    sub-int v0, v7, v5

    .line 795
    :goto_3e
    add-int/lit8 v2, v2, 0x1

    move v1, v0

    goto :goto_16

    :cond_42
    move v2, v3

    .line 801
    :goto_43
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModNet$Link;->unacked:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6b

    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModNet$Link;->unacked:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfr/testudo/spacecorsair/mod/ModNet$Seg;

    iget v6, v0, Lfr/testudo/spacecorsair/mod/ModNet$Seg;->off:I

    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModNet$Link;->unacked:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfr/testudo/spacecorsair/mod/ModNet$Seg;

    iget-object v0, v0, Lfr/testudo/spacecorsair/mod/ModNet$Seg;->data:[B

    array-length v0, v0

    add-int/2addr v0, v6

    sub-int/2addr v0, v5

    if-gtz v0, :cond_6b

    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModNet$Link;->unacked:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move v2, v4

    goto :goto_43

    .line 802
    :cond_6b
    if-ltz v1, :cond_9d

    .line 803
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModNet$Link;->unacked:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_73
    :goto_73
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9d

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfr/testudo/spacecorsair/mod/ModNet$Seg;

    .line 804
    iget-boolean v4, v0, Lfr/testudo/spacecorsair/mod/ModNet$Seg;->sacked:Z

    if-nez v4, :cond_73

    iget v4, v0, Lfr/testudo/spacecorsair/mod/ModNet$Seg;->off:I

    sub-int/2addr v4, v5

    if-gt v4, v1, :cond_73

    .line 805
    iget-wide v6, v0, Lfr/testudo/spacecorsair/mod/ModNet$Seg;->sentAt:J

    sub-long v6, p3, v6

    const/16 v4, 0x1e

    iget v8, p0, Lfr/testudo/spacecorsair/mod/ModNet$Link;->rttMs:I

    invoke-static {v4, v8}, Ljava/lang/Math;->max(II)I

    move-result v4

    int-to-long v8, v4

    cmp-long v4, v6, v8

    if-lez v4, :cond_73

    invoke-direct {p0, v0, p3, p4}, Lfr/testudo/spacecorsair/mod/ModNet$Link;->sendSeg(Lfr/testudo/spacecorsair/mod/ModNet$Seg;J)V

    goto :goto_73

    .line 808
    :cond_9d
    if-eqz v2, :cond_13

    invoke-direct {p0, p3, p4}, Lfr/testudo/spacecorsair/mod/ModNet$Link;->pump(J)V

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    goto/16 :goto_13

    :cond_a7
    move v0, v1

    goto :goto_3e
.end method

.method private onData([BI)V
    .registers 10

    .prologue
    const/high16 v4, 0x100000

    const/4 v6, 0x6

    const/16 v5, 0xa

    const/4 v1, 0x0

    .line 747
    invoke-static {p1, v6}, Lfr/testudo/spacecorsair/mod/ModNet$Link;->get4([BI)I

    move-result v0

    add-int/lit8 v2, p2, -0x6

    add-int/lit8 v2, v2, -0x4

    .line 748
    if-lez v2, :cond_14

    const/16 v3, 0x44c

    if-le v2, v3, :cond_15

    .line 768
    :cond_14
    :goto_14
    return-void

    .line 749
    :cond_15
    iget v3, p0, Lfr/testudo/spacecorsair/mod/ModNet$Link;->rcvNext:I

    if-ne v0, v3, :cond_7d

    .line 750
    iget v0, p0, Lfr/testudo/spacecorsair/mod/ModNet$Link;->inSize:I

    add-int/2addr v0, v2

    if-gt v0, v4, :cond_14

    .line 751
    invoke-direct {p0, p1, v5, v2}, Lfr/testudo/spacecorsair/mod/ModNet$Link;->append([BII)V

    .line 752
    iget v0, p0, Lfr/testudo/spacecorsair/mod/ModNet$Link;->rcvNext:I

    add-int/2addr v0, v2

    iput v0, p0, Lfr/testudo/spacecorsair/mod/ModNet$Link;->rcvNext:I

    .line 754
    :goto_26
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModNet$Link;->ahead:Ljava/util/HashMap;

    iget v2, p0, Lfr/testudo/spacecorsair/mod/ModNet$Link;->rcvNext:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    if-eqz v0, :cond_41

    array-length v2, v0

    invoke-direct {p0, v0, v1, v2}, Lfr/testudo/spacecorsair/mod/ModNet$Link;->append([BII)V

    iget v2, p0, Lfr/testudo/spacecorsair/mod/ModNet$Link;->rcvNext:I

    array-length v0, v0

    add-int/2addr v0, v2

    iput v0, p0, Lfr/testudo/spacecorsair/mod/ModNet$Link;->rcvNext:I

    goto :goto_26

    .line 755
    :cond_41
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 761
    :cond_44
    :goto_44
    const/16 v0, 0x8

    iget-object v2, p0, Lfr/testudo/spacecorsair/mod/ModNet$Link;->ahead:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 762
    const/4 v0, 0x4

    mul-int/lit8 v3, v2, 0x4

    add-int/lit8 v3, v3, 0x5

    invoke-direct {p0, v0, v3}, Lfr/testudo/spacecorsair/mod/ModNet$Link;->pkt(II)[B

    move-result-object v3

    .line 763
    iget v0, p0, Lfr/testudo/spacecorsair/mod/ModNet$Link;->rcvNext:I

    invoke-static {v3, v6, v0}, Lfr/testudo/spacecorsair/mod/ModNet$Link;->put4([BII)V

    .line 764
    int-to-byte v0, v2

    aput-byte v0, v3, v5

    .line 766
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModNet$Link;->ahead:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_6b
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_79

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-lt v1, v2, :cond_ae

    .line 767
    :cond_79
    invoke-direct {p0, v3}, Lfr/testudo/spacecorsair/mod/ModNet$Link;->out([B)V

    goto :goto_14

    .line 756
    :cond_7d
    iget v3, p0, Lfr/testudo/spacecorsair/mod/ModNet$Link;->rcvNext:I

    sub-int v3, v0, v3

    if-lez v3, :cond_44

    iget v3, p0, Lfr/testudo/spacecorsair/mod/ModNet$Link;->rcvNext:I

    sub-int v3, v0, v3

    if-ge v3, v4, :cond_44

    iget-object v3, p0, Lfr/testudo/spacecorsair/mod/ModNet$Link;->ahead:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    move-result v3

    const/16 v4, 0x200

    if-ge v3, v4, :cond_44

    iget-object v3, p0, Lfr/testudo/spacecorsair/mod/ModNet$Link;->ahead:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_44

    .line 757
    new-array v3, v2, [B

    .line 758
    invoke-static {p1, v5, v3, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 759
    iget-object v2, p0, Lfr/testudo/spacecorsair/mod/ModNet$Link;->ahead:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v2, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_44

    .line 766
    :cond_ae
    mul-int/lit8 v5, v1, 0x4

    add-int/lit8 v5, v5, 0xb

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v3, v5, v0}, Lfr/testudo/spacecorsair/mod/ModNet$Link;->put4([BII)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_6b
.end method

.method private onLatest([BI)V
    .registers 14

    .prologue
    const/4 v10, -0x1

    const/4 v1, 0x0

    .line 860
    const/4 v0, 0x6

    invoke-static {p1, v0}, Lfr/testudo/spacecorsair/mod/ModNet$Link;->get4([BI)I

    move-result v3

    const/16 v0, 0xe

    aget-byte v0, p1, v0

    and-int/lit16 v0, v0, 0xff

    const/16 v2, 0xf

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    add-int/lit8 v4, p2, -0x6

    add-int/lit8 v4, v4, -0xa

    .line 861
    const/16 v5, 0xa

    invoke-static {p1, v5}, Lfr/testudo/spacecorsair/mod/ModNet$Link;->get4([BI)I

    move-result v5

    int-to-long v6, v5

    const-wide v8, 0xffffffffL

    and-long/2addr v6, v8

    .line 862
    if-eqz v2, :cond_32

    if-ge v0, v2, :cond_32

    const/16 v5, 0xf0

    if-gt v2, v5, :cond_32

    if-lez v4, :cond_32

    const/16 v5, 0x47e

    if-le v4, v5, :cond_33

    .line 883
    :cond_32
    :goto_32
    return-void

    .line 863
    :cond_33
    iget v5, p0, Lfr/testudo/spacecorsair/mod/ModNet$Link;->latDone:I

    sub-int v5, v3, v5

    if-gtz v5, :cond_3d

    iget v5, p0, Lfr/testudo/spacecorsair/mod/ModNet$Link;->latDone:I

    if-ne v5, v10, :cond_32

    .line 864
    :cond_3d
    iget v5, p0, Lfr/testudo/spacecorsair/mod/ModNet$Link;->latId:I

    if-eq v3, v5, :cond_57

    .line 865
    iget v5, p0, Lfr/testudo/spacecorsair/mod/ModNet$Link;->latId:I

    if-eq v5, v10, :cond_4b

    iget v5, p0, Lfr/testudo/spacecorsair/mod/ModNet$Link;->latId:I

    sub-int v5, v3, v5

    if-ltz v5, :cond_32

    .line 866
    :cond_4b
    iput v3, p0, Lfr/testudo/spacecorsair/mod/ModNet$Link;->latId:I

    iput v2, p0, Lfr/testudo/spacecorsair/mod/ModNet$Link;->latCnt:I

    iput v1, p0, Lfr/testudo/spacecorsair/mod/ModNet$Link;->latGot:I

    iput-wide v6, p0, Lfr/testudo/spacecorsair/mod/ModNet$Link;->latOff:J

    new-array v5, v2, [[B

    iput-object v5, p0, Lfr/testudo/spacecorsair/mod/ModNet$Link;->latFrags:[[B

    .line 868
    :cond_57
    iget v5, p0, Lfr/testudo/spacecorsair/mod/ModNet$Link;->latCnt:I

    if-ne v2, v5, :cond_32

    iget-object v2, p0, Lfr/testudo/spacecorsair/mod/ModNet$Link;->latFrags:[[B

    aget-object v2, v2, v0

    if-nez v2, :cond_32

    .line 869
    new-array v2, v4, [B

    .line 870
    const/16 v5, 0x10

    invoke-static {p1, v5, v2, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 871
    iget-object v4, p0, Lfr/testudo/spacecorsair/mod/ModNet$Link;->latFrags:[[B

    aput-object v2, v4, v0

    .line 872
    iget v0, p0, Lfr/testudo/spacecorsair/mod/ModNet$Link;->latGot:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lfr/testudo/spacecorsair/mod/ModNet$Link;->latGot:I

    iget v2, p0, Lfr/testudo/spacecorsair/mod/ModNet$Link;->latCnt:I

    if-lt v0, v2, :cond_32

    .line 874
    iget-object v4, p0, Lfr/testudo/spacecorsair/mod/ModNet$Link;->latFrags:[[B

    array-length v5, v4

    move v0, v1

    move v2, v1

    :goto_7b
    if-ge v0, v5, :cond_84

    aget-object v6, v4, v0

    array-length v6, v6

    add-int/2addr v2, v6

    add-int/lit8 v0, v0, 0x1

    goto :goto_7b

    .line 875
    :cond_84
    new-array v4, v2, [B

    .line 877
    iget-object v5, p0, Lfr/testudo/spacecorsair/mod/ModNet$Link;->latFrags:[[B

    array-length v6, v5

    move v0, v1

    move v2, v1

    :goto_8b
    if-ge v0, v6, :cond_98

    aget-object v7, v5, v0

    array-length v8, v7

    invoke-static {v7, v1, v4, v2, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v7, v7

    add-int/2addr v2, v7

    add-int/lit8 v0, v0, 0x1

    goto :goto_8b

    .line 878
    :cond_98
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModNet$Link;->latWait:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/16 v2, 0x8

    if-lt v0, v2, :cond_a7

    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModNet$Link;->latWait:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 879
    :cond_a7
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModNet$Link;->latWait:Ljava/util/ArrayList;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v4, v2, v1

    const/4 v1, 0x1

    iget-wide v4, p0, Lfr/testudo/spacecorsair/mod/ModNet$Link;->latOff:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 880
    iput v3, p0, Lfr/testudo/spacecorsair/mod/ModNet$Link;->latDone:I

    .line 881
    const/4 v0, 0x0

    iput-object v0, p0, Lfr/testudo/spacecorsair/mod/ModNet$Link;->latFrags:[[B

    .line 882
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    goto/16 :goto_32
.end method

.method private out([B)V
    .registers 4

    .prologue
    .line 633
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModNet$Link;->remote:Ljava/net/InetSocketAddress;

    iget-boolean v1, p0, Lfr/testudo/spacecorsair/mod/ModNet$Link;->viaRelay:Z

    invoke-direct {p0, v0, v1, p1}, Lfr/testudo/spacecorsair/mod/ModNet$Link;->toAddr(Ljava/net/InetSocketAddress;Z[B)V

    return-void
.end method

.method private pkt(II)[B
    .registers 6

    .prologue
    .line 623
    add-int/lit8 v0, p2, 0x6

    new-array v0, v0, [B

    .line 624
    const/4 v1, 0x0

    const/16 v2, -0x3b

    aput-byte v2, v0, v1

    const/4 v1, 0x1

    int-to-byte v2, p1

    aput-byte v2, v0, v1

    .line 625
    const/4 v1, 0x2

    iget v2, p0, Lfr/testudo/spacecorsair/mod/ModNet$Link;->sid:I

    ushr-int/lit8 v2, v2, 0x18

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/4 v1, 0x3

    iget v2, p0, Lfr/testudo/spacecorsair/mod/ModNet$Link;->sid:I

    ushr-int/lit8 v2, v2, 0x10

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/4 v1, 0x4

    iget v2, p0, Lfr/testudo/spacecorsair/mod/ModNet$Link;->sid:I

    ushr-int/lit8 v2, v2, 0x8

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/4 v1, 0x5

    iget v2, p0, Lfr/testudo/spacecorsair/mod/ModNet$Link;->sid:I

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 626
    return-object v0
.end method

.method private pump(J)V
    .registers 10

    .prologue
    const/4 v1, 0x0

    .line 822
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModNet$Link;->pending:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v0

    if-eqz v0, :cond_d

    iget-boolean v0, p0, Lfr/testudo/spacecorsair/mod/ModNet$Link;->started:Z

    if-nez v0, :cond_e

    .line 839
    :cond_d
    :goto_d
    return-void

    .line 823
    :cond_e
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModNet$Link;->pending:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    move v0, v1

    .line 825
    :goto_15
    array-length v3, v2

    if-ge v0, v3, :cond_4e

    iget-object v3, p0, Lfr/testudo/spacecorsair/mod/ModNet$Link;->unacked:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/16 v4, 0x40

    if-ge v3, v4, :cond_4e

    .line 826
    const/16 v3, 0x44c

    array-length v4, v2

    sub-int/2addr v4, v0

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 827
    new-instance v4, Lfr/testudo/spacecorsair/mod/ModNet$Seg;

    const/4 v5, 0x0

    invoke-direct {v4, v5}, Lfr/testudo/spacecorsair/mod/ModNet$Seg;-><init>(Lfr/testudo/spacecorsair/mod/ModNet$1;)V

    .line 828
    iget v5, p0, Lfr/testudo/spacecorsair/mod/ModNet$Link;->sendOff:I

    iput v5, v4, Lfr/testudo/spacecorsair/mod/ModNet$Seg;->off:I

    .line 829
    new-array v5, v3, [B

    iput-object v5, v4, Lfr/testudo/spacecorsair/mod/ModNet$Seg;->data:[B

    .line 830
    iget-object v5, v4, Lfr/testudo/spacecorsair/mod/ModNet$Seg;->data:[B

    invoke-static {v2, v0, v5, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 831
    iput-wide p1, v4, Lfr/testudo/spacecorsair/mod/ModNet$Seg;->firstAt:J

    .line 832
    iget v5, p0, Lfr/testudo/spacecorsair/mod/ModNet$Link;->sendOff:I

    add-int/2addr v5, v3

    iput v5, p0, Lfr/testudo/spacecorsair/mod/ModNet$Link;->sendOff:I

    .line 833
    add-int/2addr v0, v3

    .line 834
    iget-object v3, p0, Lfr/testudo/spacecorsair/mod/ModNet$Link;->unacked:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 835
    invoke-direct {p0, v4, p1, p2}, Lfr/testudo/spacecorsair/mod/ModNet$Link;->sendSeg(Lfr/testudo/spacecorsair/mod/ModNet$Seg;J)V

    goto :goto_15

    .line 837
    :cond_4e
    iget-object v1, p0, Lfr/testudo/spacecorsair/mod/ModNet$Link;->pending:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 838
    array-length v1, v2

    if-ge v0, v1, :cond_d

    iget-object v1, p0, Lfr/testudo/spacecorsair/mod/ModNet$Link;->pending:Ljava/io/ByteArrayOutputStream;

    array-length v3, v2

    sub-int/2addr v3, v0

    invoke-virtual {v1, v2, v0, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_d
.end method

.method private static put4([BII)V
    .registers 5

    .prologue
    .line 629
    ushr-int/lit8 v0, p2, 0x18

    int-to-byte v0, v0

    aput-byte v0, p0, p1

    add-int/lit8 v0, p1, 0x1

    ushr-int/lit8 v1, p2, 0x10

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    add-int/lit8 v0, p1, 0x2

    ushr-int/lit8 v1, p2, 0x8

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    add-int/lit8 v0, p1, 0x3

    int-to-byte v1, p2

    aput-byte v1, p0, v0

    return-void
.end method

.method private sendSeg(Lfr/testudo/spacecorsair/mod/ModNet$Seg;J)V
    .registers 10

    .prologue
    .line 812
    const/4 v0, 0x3

    iget-object v1, p1, Lfr/testudo/spacecorsair/mod/ModNet$Seg;->data:[B

    array-length v1, v1

    add-int/lit8 v1, v1, 0x4

    invoke-direct {p0, v0, v1}, Lfr/testudo/spacecorsair/mod/ModNet$Link;->pkt(II)[B

    move-result-object v0

    .line 813
    const/4 v1, 0x6

    iget v2, p1, Lfr/testudo/spacecorsair/mod/ModNet$Seg;->off:I

    invoke-static {v0, v1, v2}, Lfr/testudo/spacecorsair/mod/ModNet$Link;->put4([BII)V

    .line 814
    iget-object v1, p1, Lfr/testudo/spacecorsair/mod/ModNet$Seg;->data:[B

    const/4 v2, 0x0

    const/16 v3, 0xa

    iget-object v4, p1, Lfr/testudo/spacecorsair/mod/ModNet$Seg;->data:[B

    array-length v4, v4

    invoke-static {v1, v2, v0, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 815
    iput-wide p2, p1, Lfr/testudo/spacecorsair/mod/ModNet$Seg;->sentAt:J

    .line 816
    iget v1, p1, Lfr/testudo/spacecorsair/mod/ModNet$Seg;->tries:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p1, Lfr/testudo/spacecorsair/mod/ModNet$Seg;->tries:I

    .line 817
    invoke-direct {p0, v0}, Lfr/testudo/spacecorsair/mod/ModNet$Link;->out([B)V

    .line 818
    return-void
.end method

.method private take([BII)I
    .registers 10

    .prologue
    .line 782
    iget v0, p0, Lfr/testudo/spacecorsair/mod/ModNet$Link;->inSize:I

    invoke-static {p3, v0}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 783
    const/4 v0, 0x0

    :goto_7
    if-ge v0, v1, :cond_1b

    add-int v2, p2, v0

    iget-object v3, p0, Lfr/testudo/spacecorsair/mod/ModNet$Link;->in:[B

    iget v4, p0, Lfr/testudo/spacecorsair/mod/ModNet$Link;->inHead:I

    add-int/2addr v4, v0

    iget-object v5, p0, Lfr/testudo/spacecorsair/mod/ModNet$Link;->in:[B

    array-length v5, v5

    rem-int/2addr v4, v5

    aget-byte v3, v3, v4

    aput-byte v3, p1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 784
    :cond_1b
    iget v0, p0, Lfr/testudo/spacecorsair/mod/ModNet$Link;->inHead:I

    add-int/2addr v0, v1

    iget-object v2, p0, Lfr/testudo/spacecorsair/mod/ModNet$Link;->in:[B

    array-length v2, v2

    rem-int/2addr v0, v2

    iput v0, p0, Lfr/testudo/spacecorsair/mod/ModNet$Link;->inHead:I

    .line 785
    iget v0, p0, Lfr/testudo/spacecorsair/mod/ModNet$Link;->inSize:I

    sub-int/2addr v0, v1

    iput v0, p0, Lfr/testudo/spacecorsair/mod/ModNet$Link;->inSize:I

    .line 786
    iget-wide v2, p0, Lfr/testudo/spacecorsair/mod/ModNet$Link;->consumed:J

    int-to-long v4, v1

    add-long/2addr v2, v4

    iput-wide v2, p0, Lfr/testudo/spacecorsair/mod/ModNet$Link;->consumed:J

    .line 787
    return v1
.end method

.method private tick()V
    .registers 16

    .prologue
    const/4 v14, 0x6

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 915
    :cond_3
    :goto_3
    iget-boolean v0, p0, Lfr/testudo/spacecorsair/mod/ModNet$Link;->closed:Z

    if-nez v0, :cond_df

    .line 916
    const-wide/16 v4, 0x14

    :try_start_9
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_c
    .catch Ljava/lang/InterruptedException; {:try_start_9 .. :try_end_c} :catch_de

    .line 917
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 919
    monitor-enter p0

    .line 920
    :try_start_11
    iget-boolean v0, p0, Lfr/testudo/spacecorsair/mod/ModNet$Link;->started:Z

    if-nez v0, :cond_1c

    iput-wide v4, p0, Lfr/testudo/spacecorsair/mod/ModNet$Link;->lastRecv:J

    monitor-exit p0

    goto :goto_3

    .line 930
    :catchall_19
    move-exception v0

    monitor-exit p0
    :try_end_1b
    .catchall {:try_start_11 .. :try_end_1b} :catchall_19

    throw v0

    .line 921
    :cond_1c
    :try_start_1c
    iget-wide v6, p0, Lfr/testudo/spacecorsair/mod/ModNet$Link;->lastRecv:J

    sub-long v6, v4, v6

    const-wide/16 v8, 0x2710

    cmp-long v0, v6, v8

    if-lez v0, :cond_30

    iget-boolean v0, p0, Lfr/testudo/spacecorsair/mod/ModNet$Link;->dead:Z

    if-nez v0, :cond_30

    const/4 v0, 0x1

    iput-boolean v0, p0, Lfr/testudo/spacecorsair/mod/ModNet$Link;->dead:Z

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 922
    :cond_30
    const/16 v0, 0x50

    const/16 v3, 0x7d0

    iget v6, p0, Lfr/testudo/spacecorsair/mod/ModNet$Link;->rttMs:I

    mul-int/lit8 v6, v6, 0x3

    div-int/lit8 v6, v6, 0x2

    invoke-static {v3, v6}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 923
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModNet$Link;->unacked:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_48
    :goto_48
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7a

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfr/testudo/spacecorsair/mod/ModNet$Seg;

    .line 924
    iget-boolean v7, v0, Lfr/testudo/spacecorsair/mod/ModNet$Seg;->sacked:Z

    if-nez v7, :cond_48

    .line 925
    const-wide/16 v8, 0x7d0

    int-to-long v10, v3

    const/4 v7, 0x4

    const/4 v12, 0x0

    iget v13, v0, Lfr/testudo/spacecorsair/mod/ModNet$Seg;->tries:I

    add-int/lit8 v13, v13, -0x1

    invoke-static {v12, v13}, Ljava/lang/Math;->max(II)I

    move-result v12

    invoke-static {v7, v12}, Ljava/lang/Math;->min(II)I

    move-result v7

    shl-long/2addr v10, v7

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v8

    .line 926
    iget-wide v10, v0, Lfr/testudo/spacecorsair/mod/ModNet$Seg;->sentAt:J

    sub-long v10, v4, v10

    cmp-long v7, v10, v8

    if-ltz v7, :cond_48

    invoke-direct {p0, v0, v4, v5}, Lfr/testudo/spacecorsair/mod/ModNet$Link;->sendSeg(Lfr/testudo/spacecorsair/mod/ModNet$Seg;J)V

    goto :goto_48

    .line 928
    :cond_7a
    invoke-direct {p0, v4, v5}, Lfr/testudo/spacecorsair/mod/ModNet$Link;->pump(J)V

    .line 929
    iget-wide v6, p0, Lfr/testudo/spacecorsair/mod/ModNet$Link;->lastPing:J

    sub-long v6, v4, v6

    const-wide/16 v8, 0x3e8

    cmp-long v0, v6, v8

    if-ltz v0, :cond_e0

    iput-wide v4, p0, Lfr/testudo/spacecorsair/mod/ModNet$Link;->lastPing:J

    move v0, v1

    .line 930
    :goto_8a
    monitor-exit p0
    :try_end_8b
    .catchall {:try_start_1c .. :try_end_8b} :catchall_19

    .line 931
    if-eqz v0, :cond_3

    .line 932
    const/16 v0, 0x8

    invoke-direct {p0, v14, v0}, Lfr/testudo/spacecorsair/mod/ModNet$Link;->pkt(II)[B

    move-result-object v0

    .line 933
    const/16 v3, 0x20

    ushr-long v6, v4, v3

    long-to-int v3, v6

    invoke-static {v0, v14, v3}, Lfr/testudo/spacecorsair/mod/ModNet$Link;->put4([BII)V

    const/16 v3, 0xa

    long-to-int v6, v4

    invoke-static {v0, v3, v6}, Lfr/testudo/spacecorsair/mod/ModNet$Link;->put4([BII)V

    .line 934
    invoke-direct {p0, v0}, Lfr/testudo/spacecorsair/mod/ModNet$Link;->out([B)V

    .line 935
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModNet$Link;->w:Lfr/testudo/spacecorsair/mod/ModNet$Wire;

    iget-object v0, v0, Lfr/testudo/spacecorsair/mod/ModNet$Wire;->turn:Lfr/testudo/spacecorsair/mod/ModNet$Turn;

    .line 936
    if-eqz v0, :cond_ad

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/mod/ModNet$Turn;->keep()V

    .line 937
    :cond_ad
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModNet$Link;->direct:Ljava/util/ArrayList;

    .line 938
    if-eqz v0, :cond_3

    iget-wide v6, p0, Lfr/testudo/spacecorsair/mod/ModNet$Link;->lastRetry:J

    sub-long v6, v4, v6

    const-wide/16 v8, 0x4e20

    cmp-long v3, v6, v8

    if-lez v3, :cond_3

    invoke-virtual {p0}, Lfr/testudo/spacecorsair/mod/ModNet$Link;->relayed()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 939
    iput-wide v4, p0, Lfr/testudo/spacecorsair/mod/ModNet$Link;->lastRetry:J

    .line 940
    invoke-direct {p0, v1, v2}, Lfr/testudo/spacecorsair/mod/ModNet$Link;->pkt(II)[B

    move-result-object v3

    .line 941
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_cb
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/InetSocketAddress;

    iget-object v5, p0, Lfr/testudo/spacecorsair/mod/ModNet$Link;->w:Lfr/testudo/spacecorsair/mod/ModNet$Wire;

    array-length v6, v3

    invoke-virtual {v5, v0, v3, v6}, Lfr/testudo/spacecorsair/mod/ModNet$Wire;->send(Ljava/net/SocketAddress;[BI)V

    goto :goto_cb

    .line 916
    :catch_de
    move-exception v0

    .line 945
    :cond_df
    return-void

    :cond_e0
    move v0, v2

    goto :goto_8a
.end method

.method private toAddr(Ljava/net/InetSocketAddress;Z[B)V
    .registers 6

    .prologue
    .line 636
    if-nez p1, :cond_3

    .line 640
    :cond_2
    :goto_2
    return-void

    .line 637
    :cond_3
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModNet$Link;->w:Lfr/testudo/spacecorsair/mod/ModNet$Wire;

    iget-object v0, v0, Lfr/testudo/spacecorsair/mod/ModNet$Wire;->turn:Lfr/testudo/spacecorsair/mod/ModNet$Turn;

    .line 638
    if-eqz p2, :cond_10

    if-eqz v0, :cond_2

    array-length v1, p3

    invoke-virtual {v0, p1, p3, v1}, Lfr/testudo/spacecorsair/mod/ModNet$Turn;->send(Ljava/net/InetSocketAddress;[BI)V

    goto :goto_2

    .line 639
    :cond_10
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModNet$Link;->w:Lfr/testudo/spacecorsair/mod/ModNet$Wire;

    array-length v1, p3

    invoke-virtual {v0, p1, p3, v1}, Lfr/testudo/spacecorsair/mod/ModNet$Wire;->send(Ljava/net/SocketAddress;[BI)V

    goto :goto_2
.end method


# virtual methods
.method abandon()V
    .registers 3

    .prologue
    .line 1022
    const/4 v0, 0x1

    iput-boolean v0, p0, Lfr/testudo/spacecorsair/mod/ModNet$Link;->closed:Z

    .line 1023
    monitor-enter p0

    :try_start_4
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit p0
    :try_end_8
    .catchall {:try_start_4 .. :try_end_8} :catchall_19

    .line 1024
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModNet$Link;->timer:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 1025
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModNet$Link;->w:Lfr/testudo/spacecorsair/mod/ModNet$Wire;

    iget-object v0, v0, Lfr/testudo/spacecorsair/mod/ModNet$Wire;->handler:Lfr/testudo/spacecorsair/mod/ModNet$PeerHandler;

    if-ne v0, p0, :cond_18

    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModNet$Link;->w:Lfr/testudo/spacecorsair/mod/ModNet$Wire;

    const/4 v1, 0x0

    iput-object v1, v0, Lfr/testudo/spacecorsair/mod/ModNet$Wire;->handler:Lfr/testudo/spacecorsair/mod/ModNet$PeerHandler;

    .line 1026
    :cond_18
    return-void

    .line 1023
    :catchall_19
    move-exception v0

    :try_start_1a
    monitor-exit p0
    :try_end_1b
    .catchall {:try_start_1a .. :try_end_1b} :catchall_19

    throw v0
.end method

.method public close()V
    .registers 11

    .prologue
    const/4 v1, 0x0

    .line 1030
    iget-boolean v0, p0, Lfr/testudo/spacecorsair/mod/ModNet$Link;->closed:Z

    if-eqz v0, :cond_6

    .line 1042
    :goto_5
    return-void

    .line 1031
    :cond_6
    monitor-enter p0

    .line 1032
    :try_start_7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 1033
    invoke-direct {p0, v2, v3}, Lfr/testudo/spacecorsair/mod/ModNet$Link;->pump(J)V

    .line 1034
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModNet$Link;->unacked:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_14
    :goto_14
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_35

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfr/testudo/spacecorsair/mod/ModNet$Seg;

    iget-boolean v5, v0, Lfr/testudo/spacecorsair/mod/ModNet$Seg;->sacked:Z

    if-nez v5, :cond_14

    iget-wide v6, v0, Lfr/testudo/spacecorsair/mod/ModNet$Seg;->sentAt:J

    sub-long v6, v2, v6

    const-wide/16 v8, 0x14

    cmp-long v5, v6, v8

    if-lez v5, :cond_14

    invoke-direct {p0, v0, v2, v3}, Lfr/testudo/spacecorsair/mod/ModNet$Link;->sendSeg(Lfr/testudo/spacecorsair/mod/ModNet$Seg;J)V

    goto :goto_14

    .line 1035
    :catchall_32
    move-exception v0

    monitor-exit p0
    :try_end_34
    .catchall {:try_start_7 .. :try_end_34} :catchall_32

    throw v0

    :cond_35
    :try_start_35
    monitor-exit p0
    :try_end_36
    .catchall {:try_start_35 .. :try_end_36} :catchall_32

    .line 1036
    const/16 v0, 0x8

    invoke-direct {p0, v0, v1}, Lfr/testudo/spacecorsair/mod/ModNet$Link;->pkt(II)[B

    move-result-object v2

    move v0, v1

    .line 1037
    :goto_3d
    const/4 v1, 0x3

    if-ge v0, v1, :cond_46

    invoke-direct {p0, v2}, Lfr/testudo/spacecorsair/mod/ModNet$Link;->out([B)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_3d

    .line 1038
    :cond_46
    const/4 v0, 0x1

    iput-boolean v0, p0, Lfr/testudo/spacecorsair/mod/ModNet$Link;->closed:Z

    .line 1039
    monitor-enter p0

    :try_start_4a
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit p0
    :try_end_4e
    .catchall {:try_start_4a .. :try_end_4e} :catchall_59

    .line 1040
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModNet$Link;->timer:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 1041
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModNet$Link;->w:Lfr/testudo/spacecorsair/mod/ModNet$Wire;

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/mod/ModNet$Wire;->close()V

    goto :goto_5

    .line 1039
    :catchall_59
    move-exception v0

    :try_start_5a
    monitor-exit p0
    :try_end_5b
    .catchall {:try_start_5a .. :try_end_5b} :catchall_59

    throw v0
.end method

.method connect(Ljava/util/List;Ljava/net/InetSocketAddress;ZJJ)Z
    .registers 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/net/InetSocketAddress;",
            ">;",
            "Ljava/net/InetSocketAddress;",
            "ZJJ)Z"
        }
    .end annotation

    .prologue
    .line 656
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 657
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lfr/testudo/spacecorsair/mod/ModNet$Link;->pkt(II)[B

    move-result-object v4

    .line 658
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModNet$Link;->w:Lfr/testudo/spacecorsair/mod/ModNet$Wire;

    iget-object v5, v0, Lfr/testudo/spacecorsair/mod/ModNet$Wire;->turn:Lfr/testudo/spacecorsair/mod/ModNet$Turn;

    .line 659
    if-eqz v5, :cond_4f

    iget-object v0, v5, Lfr/testudo/spacecorsair/mod/ModNet$Turn;->relayed:Ljava/net/InetSocketAddress;

    if-eqz v0, :cond_4f

    .line 660
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 661
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 662
    if-eqz p2, :cond_23

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 663
    :cond_23
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_27
    :goto_27
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4f

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/InetSocketAddress;

    .line 664
    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v7

    invoke-static {v7}, Lfr/testudo/spacecorsair/mod/ModNet;->plain(Ljava/net/InetAddress;)Ljava/net/InetAddress;

    move-result-object v7

    invoke-virtual {v7}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_27

    .line 665
    :try_start_45
    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v0

    invoke-virtual {v5, v0}, Lfr/testudo/spacecorsair/mod/ModNet$Turn;->permit(Ljava/net/InetAddress;)V
    :try_end_4c
    .catch Ljava/lang/Throwable; {:try_start_45 .. :try_end_4c} :catch_4d

    goto :goto_27

    :catch_4d
    move-exception v0

    goto :goto_27

    .line 668
    :cond_4f
    if-nez p3, :cond_57

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_6f

    :cond_57
    const/4 v0, 0x1

    .line 669
    :goto_58
    iget-boolean v1, p0, Lfr/testudo/spacecorsair/mod/ModNet$Link;->closed:Z

    if-nez v1, :cond_69

    iget-object v1, p0, Lfr/testudo/spacecorsair/mod/ModNet$Link;->acked:Ljava/net/InetSocketAddress;

    if-nez v1, :cond_69

    .line 670
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v2

    .line 671
    cmp-long v1, v6, p6

    if-lez v1, :cond_71

    .line 683
    :cond_69
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModNet$Link;->acked:Ljava/net/InetSocketAddress;

    if-nez v0, :cond_c6

    const/4 v0, 0x0

    .line 692
    :goto_6e
    return v0

    .line 668
    :cond_6f
    const/4 v0, 0x0

    goto :goto_58

    .line 672
    :cond_71
    cmp-long v1, v6, p4

    if-lez v1, :cond_ed

    const/4 v1, 0x1

    .line 673
    :goto_76
    if-nez p3, :cond_99

    .line 674
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_7c
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8f

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/InetSocketAddress;

    iget-object v7, p0, Lfr/testudo/spacecorsair/mod/ModNet$Link;->w:Lfr/testudo/spacecorsair/mod/ModNet$Wire;

    array-length v8, v4

    invoke-virtual {v7, v0, v4, v8}, Lfr/testudo/spacecorsair/mod/ModNet$Wire;->send(Ljava/net/SocketAddress;[BI)V

    goto :goto_7c

    .line 675
    :cond_8f
    if-eqz v1, :cond_99

    if-eqz p2, :cond_99

    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModNet$Link;->w:Lfr/testudo/spacecorsair/mod/ModNet$Wire;

    array-length v6, v4

    invoke-virtual {v0, p2, v4, v6}, Lfr/testudo/spacecorsair/mod/ModNet$Wire;->send(Ljava/net/SocketAddress;[BI)V

    .line 677
    :cond_99
    if-eqz v1, :cond_bc

    if-eqz v5, :cond_bc

    iget-object v0, v5, Lfr/testudo/spacecorsair/mod/ModNet$Turn;->relayed:Ljava/net/InetSocketAddress;

    if-eqz v0, :cond_bc

    .line 678
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_a5
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b6

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/InetSocketAddress;

    array-length v7, v4

    invoke-virtual {v5, v0, v4, v7}, Lfr/testudo/spacecorsair/mod/ModNet$Turn;->send(Ljava/net/InetSocketAddress;[BI)V

    goto :goto_a5

    .line 679
    :cond_b6
    if-eqz p2, :cond_bc

    array-length v0, v4

    invoke-virtual {v5, p2, v4, v0}, Lfr/testudo/spacecorsair/mod/ModNet$Turn;->send(Ljava/net/InetSocketAddress;[BI)V

    .line 681
    :cond_bc
    const-wide/16 v6, 0x96

    :try_start_be
    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_c1
    .catch Ljava/lang/InterruptedException; {:try_start_be .. :try_end_c1} :catch_c3

    move v0, v1

    .line 682
    goto :goto_58

    .line 681
    :catch_c3
    move-exception v0

    const/4 v0, 0x0

    goto :goto_6e

    .line 684
    :cond_c6
    monitor-enter p0

    .line 685
    :try_start_c7
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModNet$Link;->acked:Ljava/net/InetSocketAddress;

    iput-object v0, p0, Lfr/testudo/spacecorsair/mod/ModNet$Link;->remote:Ljava/net/InetSocketAddress;

    .line 686
    iget-boolean v0, p0, Lfr/testudo/spacecorsair/mod/ModNet$Link;->ackedRelay:Z

    iput-boolean v0, p0, Lfr/testudo/spacecorsair/mod/ModNet$Link;->viaRelay:Z

    .line 687
    if-eqz p3, :cond_e4

    const/4 v0, 0x0

    :goto_d2
    iput-object v0, p0, Lfr/testudo/spacecorsair/mod/ModNet$Link;->direct:Ljava/util/ArrayList;

    .line 688
    iput-object p2, p0, Lfr/testudo/spacecorsair/mod/ModNet$Link;->peerRelay:Ljava/net/InetSocketAddress;

    .line 689
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lfr/testudo/spacecorsair/mod/ModNet$Link;->lastFromRemote:J

    iput-wide v0, p0, Lfr/testudo/spacecorsair/mod/ModNet$Link;->lastRecv:J

    .line 690
    const/4 v0, 0x1

    iput-boolean v0, p0, Lfr/testudo/spacecorsair/mod/ModNet$Link;->started:Z

    .line 691
    monitor-exit p0

    .line 692
    const/4 v0, 0x1

    goto :goto_6e

    .line 687
    :cond_e4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    goto :goto_d2

    .line 691
    :catchall_ea
    move-exception v0

    monitor-exit p0
    :try_end_ec
    .catchall {:try_start_c7 .. :try_end_ec} :catchall_ea

    throw v0

    :cond_ed
    move v1, v0

    goto :goto_76
.end method

.method connectTo(Ljava/net/InetSocketAddress;)V
    .registers 4

    .prologue
    .line 703
    iput-object p1, p0, Lfr/testudo/spacecorsair/mod/ModNet$Link;->remote:Ljava/net/InetSocketAddress;

    .line 704
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lfr/testudo/spacecorsair/mod/ModNet$Link;->lastFromRemote:J

    iput-wide v0, p0, Lfr/testudo/spacecorsair/mod/ModNet$Link;->lastRecv:J

    .line 705
    const/4 v0, 0x1

    iput-boolean v0, p0, Lfr/testudo/spacecorsair/mod/ModNet$Link;->started:Z

    .line 706
    return-void
.end method

.method finSeen()Z
    .registers 2

    .prologue
    .line 608
    iget-boolean v0, p0, Lfr/testudo/spacecorsair/mod/ModNet$Link;->finSeen:Z

    return v0
.end method

.method public getInetAddress()Ljava/net/InetAddress;
    .registers 2

    .prologue
    .line 1010
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModNet$Link;->remote:Ljava/net/InetSocketAddress;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return-object v0

    :cond_6
    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v0

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModNet;->plain(Ljava/net/InetAddress;)Ljava/net/InetAddress;

    move-result-object v0

    goto :goto_5
.end method

.method public getInputStream()Ljava/io/InputStream;
    .registers 2

    .prologue
    .line 994
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModNet$Link;->is:Ljava/io/InputStream;

    return-object v0
.end method

.method public getOutputStream()Ljava/io/OutputStream;
    .registers 2

    .prologue
    .line 996
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModNet$Link;->os:Ljava/io/OutputStream;

    return-object v0
.end method

.method public getPort()I
    .registers 2

    .prologue
    .line 1012
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModNet$Link;->remote:Ljava/net/InetSocketAddress;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return v0

    :cond_6
    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v0

    goto :goto_5
.end method

.method public getRemoteSocketAddress()Ljava/net/SocketAddress;
    .registers 2

    .prologue
    .line 1014
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModNet$Link;->remote:Ljava/net/InetSocketAddress;

    return-object v0
.end method

.method public declared-synchronized getSoTimeout()I
    .registers 2

    .prologue
    .line 1000
    monitor-enter p0

    :try_start_1
    iget v0, p0, Lfr/testudo/spacecorsair/mod/ModNet$Link;->soTimeout:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public isClosed()Z
    .registers 2

    .prologue
    .line 1018
    iget-boolean v0, p0, Lfr/testudo/spacecorsair/mod/ModNet$Link;->closed:Z

    return v0
.end method

.method public isConnected()Z
    .registers 2

    .prologue
    .line 1016
    iget-boolean v0, p0, Lfr/testudo/spacecorsair/mod/ModNet$Link;->started:Z

    if-eqz v0, :cond_a

    iget-boolean v0, p0, Lfr/testudo/spacecorsair/mod/ModNet$Link;->closed:Z

    if-nez v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method next(I)[B
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 890
    monitor-enter p0

    .line 892
    :goto_1
    const/4 v1, 0x0

    .line 893
    :goto_2
    :try_start_2
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModNet$Link;->latWait:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_32

    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModNet$Link;->latWait:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    const/4 v2, 0x1

    aget-object v0, v0, v2

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iget-wide v4, p0, Lfr/testudo/spacecorsair/mod/ModNet$Link;->consumed:J

    cmp-long v0, v2, v4

    if-gtz v0, :cond_32

    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModNet$Link;->latWait:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    check-cast v0, [B

    move-object v1, v0

    goto :goto_2

    .line 894
    :cond_32
    if-eqz v1, :cond_37

    monitor-exit p0

    move-object v0, v1

    .line 902
    :goto_36
    return-object v0

    .line 895
    :cond_37
    iget v0, p0, Lfr/testudo/spacecorsair/mod/ModNet$Link;->inSize:I

    const/4 v1, 0x5

    if-lt v0, v1, :cond_af

    .line 896
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModNet$Link;->in:[B

    iget v1, p0, Lfr/testudo/spacecorsair/mod/ModNet$Link;->inHead:I

    add-int/lit8 v1, v1, 0x1

    iget-object v2, p0, Lfr/testudo/spacecorsair/mod/ModNet$Link;->in:[B

    array-length v2, v2

    rem-int/2addr v1, v2

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x18

    iget-object v1, p0, Lfr/testudo/spacecorsair/mod/ModNet$Link;->in:[B

    iget v2, p0, Lfr/testudo/spacecorsair/mod/ModNet$Link;->inHead:I

    add-int/lit8 v2, v2, 0x2

    iget-object v3, p0, Lfr/testudo/spacecorsair/mod/ModNet$Link;->in:[B

    array-length v3, v3

    rem-int/2addr v2, v3

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    iget-object v1, p0, Lfr/testudo/spacecorsair/mod/ModNet$Link;->in:[B

    iget v2, p0, Lfr/testudo/spacecorsair/mod/ModNet$Link;->inHead:I

    add-int/lit8 v2, v2, 0x3

    iget-object v3, p0, Lfr/testudo/spacecorsair/mod/ModNet$Link;->in:[B

    array-length v3, v3

    rem-int/2addr v2, v3

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    iget-object v1, p0, Lfr/testudo/spacecorsair/mod/ModNet$Link;->in:[B

    iget v2, p0, Lfr/testudo/spacecorsair/mod/ModNet$Link;->inHead:I

    add-int/lit8 v2, v2, 0x4

    iget-object v3, p0, Lfr/testudo/spacecorsair/mod/ModNet$Link;->in:[B

    array-length v3, v3

    rem-int/2addr v2, v3

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v1, v0

    .line 898
    if-ltz v1, :cond_81

    if-le v1, p1, :cond_9d

    :cond_81
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

    .line 910
    :catchall_9a
    move-exception v0

    monitor-exit p0
    :try_end_9c
    .catchall {:try_start_2 .. :try_end_9c} :catchall_9a

    throw v0

    .line 899
    :cond_9d
    :try_start_9d
    iget v0, p0, Lfr/testudo/spacecorsair/mod/ModNet$Link;->inSize:I

    add-int/lit8 v2, v1, 0x5

    if-lt v0, v2, :cond_af

    .line 900
    add-int/lit8 v0, v1, 0x5

    new-array v0, v0, [B

    .line 901
    const/4 v2, 0x0

    add-int/lit8 v1, v1, 0x5

    invoke-direct {p0, v0, v2, v1}, Lfr/testudo/spacecorsair/mod/ModNet$Link;->take([BII)I

    .line 902
    monitor-exit p0

    goto :goto_36

    .line 905
    :cond_af
    iget-boolean v0, p0, Lfr/testudo/spacecorsair/mod/ModNet$Link;->closed:Z

    if-eqz v0, :cond_bb

    new-instance v0, Ljava/io/IOException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 906
    :cond_bb
    iget-boolean v0, p0, Lfr/testudo/spacecorsair/mod/ModNet$Link;->dead:Z

    if-eqz v0, :cond_c7

    new-instance v0, Ljava/io/IOException;

    const-string v1, "no answer for 10 s"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 907
    :cond_c7
    iget-boolean v0, p0, Lfr/testudo/spacecorsair/mod/ModNet$Link;->finSeen:Z

    if-eqz v0, :cond_d3

    new-instance v0, Ljava/io/IOException;

    const-string v1, "bye"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_d3
    .catchall {:try_start_9d .. :try_end_d3} :catchall_9a

    .line 908
    :cond_d3
    const-wide/16 v0, 0xfa

    :try_start_d5
    invoke-virtual {p0, v0, v1}, Ljava/lang/Object;->wait(J)V
    :try_end_d8
    .catch Ljava/lang/InterruptedException; {:try_start_d5 .. :try_end_d8} :catch_da
    .catchall {:try_start_d5 .. :try_end_d8} :catchall_9a

    goto/16 :goto_1

    :catch_da
    move-exception v0

    :try_start_db
    new-instance v0, Ljava/io/IOException;

    const-string v1, "interrupted"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_e3
    .catchall {:try_start_db .. :try_end_e3} :catchall_9a
.end method

.method public onPeer(Ljava/net/InetSocketAddress;[BIZ)V
    .registers 15

    .prologue
    .line 709
    const/4 v0, 0x6

    if-lt p3, v0, :cond_7

    iget-boolean v0, p0, Lfr/testudo/spacecorsair/mod/ModNet$Link;->closed:Z

    if-eqz v0, :cond_8

    .line 743
    :cond_7
    :goto_7
    return-void

    .line 710
    :cond_8
    const/4 v0, 0x2

    invoke-static {p2, v0}, Lfr/testudo/spacecorsair/mod/ModNet$Link;->get4([BI)I

    move-result v0

    iget v1, p0, Lfr/testudo/spacecorsair/mod/ModNet$Link;->sid:I

    if-ne v0, v1, :cond_7

    .line 711
    const/4 v0, 0x1

    aget-byte v0, p2, v0

    and-int/lit16 v0, v0, 0xff

    .line 712
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 713
    const/4 v1, 0x1

    if-ne v0, v1, :cond_65

    .line 714
    const/4 v1, 0x2

    const/4 v4, 0x0

    invoke-direct {p0, v1, v4}, Lfr/testudo/spacecorsair/mod/ModNet$Link;->pkt(II)[B

    move-result-object v1

    invoke-direct {p0, p1, p4, v1}, Lfr/testudo/spacecorsair/mod/ModNet$Link;->toAddr(Ljava/net/InetSocketAddress;Z[B)V

    .line 715
    iget-boolean v1, p0, Lfr/testudo/spacecorsair/mod/ModNet$Link;->started:Z

    if-eqz v1, :cond_7

    .line 723
    :cond_2a
    iget-boolean v1, p0, Lfr/testudo/spacecorsair/mod/ModNet$Link;->started:Z

    if-eqz v1, :cond_7

    .line 724
    monitor-enter p0

    .line 725
    :try_start_2f
    iput-wide v2, p0, Lfr/testudo/spacecorsair/mod/ModNet$Link;->lastRecv:J

    .line 726
    iget-object v1, p0, Lfr/testudo/spacecorsair/mod/ModNet$Link;->remote:Ljava/net/InetSocketAddress;

    .line 727
    if-eqz v1, :cond_94

    invoke-static {v1, p1}, Lfr/testudo/spacecorsair/mod/ModNet;->sameHost(Ljava/net/InetSocketAddress;Ljava/net/InetSocketAddress;)Z

    move-result v1

    if-eqz v1, :cond_94

    iget-boolean v1, p0, Lfr/testudo/spacecorsair/mod/ModNet$Link;->viaRelay:Z

    if-ne p4, v1, :cond_94

    iput-wide v2, p0, Lfr/testudo/spacecorsair/mod/ModNet$Link;->lastFromRemote:J

    .line 729
    :cond_41
    :goto_41
    const/4 v1, 0x3

    if-ne v0, v1, :cond_a8

    const/16 v1, 0xa

    if-lt p3, v1, :cond_a8

    invoke-direct {p0, p2, p3}, Lfr/testudo/spacecorsair/mod/ModNet$Link;->onData([BI)V

    .line 737
    :cond_4b
    :goto_4b
    monitor-exit p0
    :try_end_4c
    .catchall {:try_start_2f .. :try_end_4c} :catchall_a5

    .line 738
    const/4 v1, 0x6

    if-ne v0, v1, :cond_7

    const/16 v0, 0xe

    if-lt p3, v0, :cond_7

    .line 739
    const/4 v0, 0x7

    const/16 v1, 0x8

    invoke-direct {p0, v0, v1}, Lfr/testudo/spacecorsair/mod/ModNet$Link;->pkt(II)[B

    move-result-object v0

    .line 740
    const/4 v1, 0x6

    const/4 v2, 0x6

    const/16 v3, 0x8

    invoke-static {p2, v1, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 741
    invoke-direct {p0, v0}, Lfr/testudo/spacecorsair/mod/ModNet$Link;->out([B)V

    goto :goto_7

    .line 716
    :cond_65
    const/4 v1, 0x2

    if-ne v0, v1, :cond_2a

    .line 717
    iget-object v1, p0, Lfr/testudo/spacecorsair/mod/ModNet$Link;->acked:Ljava/net/InetSocketAddress;

    if-nez v1, :cond_75

    iput-boolean p4, p0, Lfr/testudo/spacecorsair/mod/ModNet$Link;->ackedRelay:Z

    iput-object p1, p0, Lfr/testudo/spacecorsair/mod/ModNet$Link;->acked:Ljava/net/InetSocketAddress;

    .line 721
    :cond_70
    :goto_70
    iget-boolean v1, p0, Lfr/testudo/spacecorsair/mod/ModNet$Link;->started:Z

    if-nez v1, :cond_2a

    goto :goto_7

    .line 718
    :cond_75
    iget-boolean v1, p0, Lfr/testudo/spacecorsair/mod/ModNet$Link;->started:Z

    if-eqz v1, :cond_70

    invoke-virtual {p0}, Lfr/testudo/spacecorsair/mod/ModNet$Link;->relayed()Z

    move-result v1

    if-eqz v1, :cond_70

    if-nez p4, :cond_70

    invoke-direct {p0, p1}, Lfr/testudo/spacecorsair/mod/ModNet$Link;->isDirect(Ljava/net/InetSocketAddress;)Z

    move-result v1

    if-eqz v1, :cond_70

    .line 719
    monitor-enter p0

    :try_start_88
    iput-object p1, p0, Lfr/testudo/spacecorsair/mod/ModNet$Link;->remote:Ljava/net/InetSocketAddress;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lfr/testudo/spacecorsair/mod/ModNet$Link;->viaRelay:Z

    iput-wide v2, p0, Lfr/testudo/spacecorsair/mod/ModNet$Link;->lastFromRemote:J

    monitor-exit p0

    goto :goto_70

    :catchall_91
    move-exception v0

    monitor-exit p0
    :try_end_93
    .catchall {:try_start_88 .. :try_end_93} :catchall_91

    throw v0

    .line 728
    :cond_94
    :try_start_94
    iget-wide v4, p0, Lfr/testudo/spacecorsair/mod/ModNet$Link;->lastFromRemote:J

    sub-long v4, v2, v4

    const-wide/16 v6, 0x7d0

    cmp-long v1, v4, v6

    if-lez v1, :cond_41

    iput-object p1, p0, Lfr/testudo/spacecorsair/mod/ModNet$Link;->remote:Ljava/net/InetSocketAddress;

    iput-boolean p4, p0, Lfr/testudo/spacecorsair/mod/ModNet$Link;->viaRelay:Z

    iput-wide v2, p0, Lfr/testudo/spacecorsair/mod/ModNet$Link;->lastFromRemote:J

    goto :goto_41

    .line 737
    :catchall_a5
    move-exception v0

    monitor-exit p0
    :try_end_a7
    .catchall {:try_start_94 .. :try_end_a7} :catchall_a5

    throw v0

    .line 730
    :cond_a8
    const/4 v1, 0x4

    if-ne v0, v1, :cond_b3

    const/16 v1, 0xb

    if-lt p3, v1, :cond_b3

    :try_start_af
    invoke-direct {p0, p2, p3, v2, v3}, Lfr/testudo/spacecorsair/mod/ModNet$Link;->onAck([BIJ)V

    goto :goto_4b

    .line 731
    :cond_b3
    const/4 v1, 0x5

    if-ne v0, v1, :cond_be

    const/16 v1, 0x10

    if-lt p3, v1, :cond_be

    invoke-direct {p0, p2, p3}, Lfr/testudo/spacecorsair/mod/ModNet$Link;->onLatest([BI)V

    goto :goto_4b

    .line 732
    :cond_be
    const/4 v1, 0x7

    if-ne v0, v1, :cond_f5

    const/16 v1, 0xe

    if-lt p3, v1, :cond_f5

    .line 733
    const/4 v1, 0x6

    invoke-static {p2, v1}, Lfr/testudo/spacecorsair/mod/ModNet$Link;->get4([BI)I

    move-result v1

    int-to-long v4, v1

    const/16 v1, 0x20

    shl-long/2addr v4, v1

    const/16 v1, 0xa

    invoke-static {p2, v1}, Lfr/testudo/spacecorsair/mod/ModNet$Link;->get4([BI)I

    move-result v1

    int-to-long v6, v1

    const-wide v8, 0xffffffffL

    and-long/2addr v6, v8

    or-long/2addr v4, v6

    .line 734
    const-wide/16 v6, 0x1

    const-wide/16 v8, 0x1388

    sub-long/2addr v2, v4

    invoke-static {v8, v9, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    invoke-static {v6, v7, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    long-to-int v1, v2

    .line 735
    iget v2, p0, Lfr/testudo/spacecorsair/mod/ModNet$Link;->rttMs:I

    mul-int/lit8 v2, v2, 0x7

    add-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x8

    iput v1, p0, Lfr/testudo/spacecorsair/mod/ModNet$Link;->rttMs:I

    goto/16 :goto_4b

    .line 736
    :cond_f5
    const/16 v1, 0x8

    if-ne v0, v1, :cond_4b

    const/4 v1, 0x1

    iput-boolean v1, p0, Lfr/testudo/spacecorsair/mod/ModNet$Link;->finSeen:Z

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_ff
    .catchall {:try_start_af .. :try_end_ff} :catchall_a5

    goto/16 :goto_4b
.end method

.method relayed()Z
    .registers 4

    .prologue
    .line 697
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModNet$Link;->remote:Ljava/net/InetSocketAddress;

    iget-object v1, p0, Lfr/testudo/spacecorsair/mod/ModNet$Link;->peerRelay:Ljava/net/InetSocketAddress;

    .line 698
    iget-boolean v2, p0, Lfr/testudo/spacecorsair/mod/ModNet$Link;->viaRelay:Z

    if-nez v2, :cond_12

    if-eqz v0, :cond_14

    if-eqz v1, :cond_14

    invoke-static {v0, v1}, Lfr/testudo/spacecorsair/mod/ModNet;->sameHost(Ljava/net/InetSocketAddress;Ljava/net/InetSocketAddress;)Z

    move-result v0

    if-eqz v0, :cond_14

    :cond_12
    const/4 v0, 0x1

    :goto_13
    return v0

    :cond_14
    const/4 v0, 0x0

    goto :goto_13
.end method

.method remote()Ljava/net/InetSocketAddress;
    .registers 2

    .prologue
    .line 620
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModNet$Link;->remote:Ljava/net/InetSocketAddress;

    return-object v0
.end method

.method sendLatest([B)V
    .registers 11

    .prologue
    .line 844
    array-length v0, p1

    const/high16 v1, 0x40000

    if-gt v0, v1, :cond_d

    iget-boolean v0, p0, Lfr/testudo/spacecorsair/mod/ModNet$Link;->closed:Z

    if-nez v0, :cond_d

    iget-boolean v0, p0, Lfr/testudo/spacecorsair/mod/ModNet$Link;->started:Z

    if-nez v0, :cond_e

    .line 857
    :cond_d
    return-void

    .line 845
    :cond_e
    array-length v0, p1

    add-int/lit16 v0, v0, 0x47e

    add-int/lit8 v0, v0, -0x1

    div-int/lit16 v1, v0, 0x47e

    .line 847
    monitor-enter p0

    :try_start_16
    iget v0, p0, Lfr/testudo/spacecorsair/mod/ModNet$Link;->latestId:I

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lfr/testudo/spacecorsair/mod/ModNet$Link;->latestId:I

    const-wide/16 v4, 0x0

    monitor-exit p0
    :try_end_1f
    .catchall {:try_start_16 .. :try_end_1f} :catchall_54

    .line 848
    const/4 v0, 0x0

    :goto_20
    if-ge v0, v1, :cond_d

    .line 849
    const/16 v3, 0x47e

    array-length v6, p1

    mul-int/lit16 v7, v0, 0x47e

    sub-int/2addr v6, v7

    invoke-static {v3, v6}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 850
    const/4 v6, 0x5

    add-int/lit8 v7, v3, 0xa

    invoke-direct {p0, v6, v7}, Lfr/testudo/spacecorsair/mod/ModNet$Link;->pkt(II)[B

    move-result-object v6

    .line 851
    const/4 v7, 0x6

    invoke-static {v6, v7, v2}, Lfr/testudo/spacecorsair/mod/ModNet$Link;->put4([BII)V

    .line 852
    const/16 v7, 0xa

    long-to-int v8, v4

    invoke-static {v6, v7, v8}, Lfr/testudo/spacecorsair/mod/ModNet$Link;->put4([BII)V

    .line 853
    const/16 v7, 0xe

    int-to-byte v8, v0

    aput-byte v8, v6, v7

    const/16 v7, 0xf

    int-to-byte v8, v1

    aput-byte v8, v6, v7

    .line 854
    mul-int/lit16 v7, v0, 0x47e

    const/16 v8, 0x10

    invoke-static {p1, v7, v6, v8, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 855
    invoke-direct {p0, v6}, Lfr/testudo/spacecorsair/mod/ModNet$Link;->out([B)V

    .line 848
    add-int/lit8 v0, v0, 0x1

    goto :goto_20

    .line 847
    :catchall_54
    move-exception v0

    :try_start_55
    monitor-exit p0
    :try_end_56
    .catchall {:try_start_55 .. :try_end_56} :catchall_54

    throw v0
.end method

.method public setKeepAlive(Z)V
    .registers 2

    .prologue
    .line 1008
    return-void
.end method

.method public declared-synchronized setReceiveBufferSize(I)V
    .registers 2

    .prologue
    .line 1006
    monitor-enter p0

    monitor-exit p0

    return-void
.end method

.method public declared-synchronized setSendBufferSize(I)V
    .registers 2

    .prologue
    .line 1004
    monitor-enter p0

    monitor-exit p0

    return-void
.end method

.method public declared-synchronized setSoTimeout(I)V
    .registers 3

    .prologue
    .line 998
    monitor-enter p0

    :try_start_1
    iput p1, p0, Lfr/testudo/spacecorsair/mod/ModNet$Link;->soTimeout:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-void

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setTcpNoDelay(Z)V
    .registers 2

    .prologue
    .line 1002
    return-void
.end method
