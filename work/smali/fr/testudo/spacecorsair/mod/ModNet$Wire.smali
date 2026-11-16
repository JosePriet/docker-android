.class final Lfr/testudo/spacecorsair/mod/ModNet$Wire;
.super Ljava/lang/Object;
.source "ModNet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfr/testudo/spacecorsair/mod/ModNet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Wire"
.end annotation


# static fields
.field private static final NONE:[B


# instance fields
.field volatile closed:Z

.field volatile delayMs:I

.field private delayT:Ljava/util/Timer;

.field volatile gotBytes:J

.field volatile handler:Lfr/testudo/spacecorsair/mod/ModNet$PeerHandler;

.field volatile lossPct:I

.field private final rnd:Ljava/util/Random;

.field volatile sentBytes:J

.field final sock:Ljava/net/DatagramSocket;

.field volatile turn:Lfr/testudo/spacecorsair/mod/ModNet$Turn;

.field private final waiting:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "[B>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 61
    const/4 v0, 0x0

    new-array v0, v0, [B

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModNet$Wire;->NONE:[B

    return-void
.end method

.method constructor <init>(I)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    new-instance v0, Ljava/util/Random;

    const-wide/16 v2, 0x7

    invoke-direct {v0, v2, v3}, Ljava/util/Random;-><init>(J)V

    iput-object v0, p0, Lfr/testudo/spacecorsair/mod/ModNet$Wire;->rnd:Ljava/util/Random;

    .line 60
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lfr/testudo/spacecorsair/mod/ModNet$Wire;->waiting:Ljava/util/HashMap;

    .line 66
    :try_start_13
    new-instance v0, Ljava/net/DatagramSocket;

    new-instance v1, Ljava/net/InetSocketAddress;

    const-string v2, "::"

    invoke-direct {v1, v2, p1}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    invoke-direct {v0, v1}, Ljava/net/DatagramSocket;-><init>(Ljava/net/SocketAddress;)V
    :try_end_1f
    .catch Ljava/lang/Throwable; {:try_start_13 .. :try_end_1f} :catch_35

    .line 70
    :goto_1f
    iput-object v0, p0, Lfr/testudo/spacecorsair/mod/ModNet$Wire;->sock:Ljava/net/DatagramSocket;

    .line 71
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lfr/testudo/spacecorsair/mod/ModNet$Wire$1;

    invoke-direct {v1, p0}, Lfr/testudo/spacecorsair/mod/ModNet$Wire$1;-><init>(Lfr/testudo/spacecorsair/mod/ModNet$Wire;)V

    const-string v2, "net-wire"

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 72
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 73
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 74
    return-void

    .line 67
    :catch_35
    move-exception v0

    .line 68
    new-instance v0, Ljava/net/DatagramSocket;

    invoke-direct {v0, p1}, Ljava/net/DatagramSocket;-><init>(I)V

    goto :goto_1f
.end method

.method static synthetic access$000(Lfr/testudo/spacecorsair/mod/ModNet$Wire;)V
    .registers 1

    .prologue
    .line 50
    invoke-direct {p0}, Lfr/testudo/spacecorsair/mod/ModNet$Wire;->loop()V

    return-void
.end method

.method static synthetic access$100(Lfr/testudo/spacecorsair/mod/ModNet$Wire;Ljava/net/SocketAddress;[B)V
    .registers 3

    .prologue
    .line 50
    invoke-direct {p0, p1, p2}, Lfr/testudo/spacecorsair/mod/ModNet$Wire;->raw(Ljava/net/SocketAddress;[B)V

    return-void
.end method

.method private loop()V
    .registers 10

    .prologue
    const/4 v8, 0x4

    .line 111
    const/16 v0, 0x800

    new-array v1, v0, [B

    .line 112
    new-instance v2, Ljava/net/DatagramPacket;

    array-length v0, v1

    invoke-direct {v2, v1, v0}, Ljava/net/DatagramPacket;-><init>([BI)V

    .line 113
    :cond_b
    :goto_b
    iget-boolean v0, p0, Lfr/testudo/spacecorsair/mod/ModNet$Wire;->closed:Z

    if-nez v0, :cond_44

    .line 115
    :try_start_f
    array-length v0, v1

    invoke-virtual {v2, v0}, Ljava/net/DatagramPacket;->setLength(I)V

    .line 116
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModNet$Wire;->sock:Ljava/net/DatagramSocket;

    invoke-virtual {v0, v2}, Ljava/net/DatagramSocket;->receive(Ljava/net/DatagramPacket;)V

    .line 117
    invoke-virtual {v2}, Ljava/net/DatagramPacket;->getLength()I

    move-result v3

    .line 118
    const/4 v0, 0x2

    if-lt v3, v0, :cond_b

    .line 119
    iget-wide v4, p0, Lfr/testudo/spacecorsair/mod/ModNet$Wire;->gotBytes:J

    int-to-long v6, v3

    add-long/2addr v4, v6

    iput-wide v4, p0, Lfr/testudo/spacecorsair/mod/ModNet$Wire;->gotBytes:J

    .line 120
    invoke-virtual {v2}, Ljava/net/DatagramPacket;->getSocketAddress()Ljava/net/SocketAddress;

    move-result-object v0

    check-cast v0, Ljava/net/InetSocketAddress;

    .line 121
    const/4 v4, 0x0

    aget-byte v4, v1, v4

    and-int/lit16 v4, v4, 0xff

    .line 122
    iget-object v5, p0, Lfr/testudo/spacecorsair/mod/ModNet$Wire;->turn:Lfr/testudo/spacecorsair/mod/ModNet$Turn;

    .line 123
    const/16 v6, 0xc5

    if-ne v4, v6, :cond_45

    .line 124
    iget-object v4, p0, Lfr/testudo/spacecorsair/mod/ModNet$Wire;->handler:Lfr/testudo/spacecorsair/mod/ModNet$PeerHandler;

    .line 125
    if-eqz v4, :cond_b

    const/4 v5, 0x0

    invoke-interface {v4, v0, v1, v3, v5}, Lfr/testudo/spacecorsair/mod/ModNet$PeerHandler;->onPeer(Ljava/net/InetSocketAddress;[BIZ)Z
    :try_end_3e
    .catch Ljava/lang/Throwable; {:try_start_f .. :try_end_3e} :catch_3f

    goto :goto_b

    .line 141
    :catch_3f
    move-exception v0

    .line 142
    iget-boolean v0, p0, Lfr/testudo/spacecorsair/mod/ModNet$Wire;->closed:Z

    if-eqz v0, :cond_d2

    .line 146
    :cond_44
    :goto_44
    return-void

    .line 126
    :cond_45
    if-ge v4, v8, :cond_bb

    const/16 v6, 0x14

    if-lt v3, v6, :cond_bb

    const/4 v6, 0x4

    :try_start_4c
    aget-byte v6, v1, v6

    and-int/lit16 v6, v6, 0xff

    const/16 v7, 0x21

    if-ne v6, v7, :cond_bb

    const/4 v6, 0x5

    aget-byte v6, v1, v6

    and-int/lit16 v6, v6, 0xff

    const/16 v7, 0x12

    if-ne v6, v7, :cond_bb

    const/4 v6, 0x6

    aget-byte v6, v1, v6

    and-int/lit16 v6, v6, 0xff

    const/16 v7, 0xa4

    if-ne v6, v7, :cond_bb

    const/4 v6, 0x7

    aget-byte v6, v1, v6

    and-int/lit16 v6, v6, 0xff

    const/16 v7, 0x42

    if-ne v6, v7, :cond_bb

    .line 127
    const/4 v4, 0x0

    aget-byte v4, v1, v4

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x8

    const/4 v6, 0x1

    aget-byte v6, v1, v6

    and-int/lit16 v6, v6, 0xff

    or-int/2addr v4, v6

    .line 128
    const/16 v6, 0x17

    if-ne v4, v6, :cond_8f

    if-eqz v5, :cond_b

    iget-object v4, v5, Lfr/testudo/spacecorsair/mod/ModNet$Turn;->server:Ljava/net/InetSocketAddress;

    invoke-static {v0, v4}, Lfr/testudo/spacecorsair/mod/ModNet;->sameHost(Ljava/net/InetSocketAddress;Ljava/net/InetSocketAddress;)Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-virtual {v5, v1, v3}, Lfr/testudo/spacecorsair/mod/ModNet$Turn;->onData([BI)V

    goto/16 :goto_b

    .line 129
    :cond_8f
    const/16 v0, 0x8

    const/16 v4, 0xc

    invoke-static {v1, v0, v4}, Lfr/testudo/spacecorsair/mod/ModNet;->hex([BII)Ljava/lang/String;

    move-result-object v0

    .line 130
    iget-object v4, p0, Lfr/testudo/spacecorsair/mod/ModNet$Wire;->waiting:Ljava/util/HashMap;

    monitor-enter v4
    :try_end_9a
    .catch Ljava/lang/Throwable; {:try_start_4c .. :try_end_9a} :catch_3f

    .line 131
    :try_start_9a
    iget-object v5, p0, Lfr/testudo/spacecorsair/mod/ModNet$Wire;->waiting:Ljava/util/HashMap;

    invoke-virtual {v5, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    sget-object v6, Lfr/testudo/spacecorsair/mod/ModNet$Wire;->NONE:[B

    if-ne v5, v6, :cond_b5

    .line 132
    new-array v5, v3, [B

    .line 133
    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static {v1, v6, v5, v7, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 134
    iget-object v3, p0, Lfr/testudo/spacecorsair/mod/ModNet$Wire;->waiting:Ljava/util/HashMap;

    invoke-virtual {v3, v0, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModNet$Wire;->waiting:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 137
    :cond_b5
    monitor-exit v4

    goto/16 :goto_b

    :catchall_b8
    move-exception v0

    monitor-exit v4
    :try_end_ba
    .catchall {:try_start_9a .. :try_end_ba} :catchall_b8

    :try_start_ba
    throw v0

    .line 138
    :cond_bb
    const/16 v6, 0x40

    if-lt v4, v6, :cond_b

    const/16 v6, 0x80

    if-ge v4, v6, :cond_b

    if-eqz v5, :cond_b

    iget-object v4, v5, Lfr/testudo/spacecorsair/mod/ModNet$Turn;->server:Ljava/net/InetSocketAddress;

    invoke-static {v0, v4}, Lfr/testudo/spacecorsair/mod/ModNet;->sameHost(Ljava/net/InetSocketAddress;Ljava/net/InetSocketAddress;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 139
    invoke-virtual {v5, v1, v3}, Lfr/testudo/spacecorsair/mod/ModNet$Turn;->onChannel([BI)V
    :try_end_d0
    .catch Ljava/lang/Throwable; {:try_start_ba .. :try_end_d0} :catch_3f

    goto/16 :goto_b

    .line 143
    :cond_d2
    const-wide/16 v4, 0x5

    :try_start_d4
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_d7
    .catch Ljava/lang/InterruptedException; {:try_start_d4 .. :try_end_d7} :catch_d9

    goto/16 :goto_b

    :catch_d9
    move-exception v0

    goto/16 :goto_44
.end method

.method private raw(Ljava/net/SocketAddress;[B)V
    .registers 7

    .prologue
    .line 103
    :try_start_0
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModNet$Wire;->sock:Ljava/net/DatagramSocket;

    new-instance v1, Ljava/net/DatagramPacket;

    array-length v2, p2

    invoke-direct {v1, p2, v2, p1}, Ljava/net/DatagramPacket;-><init>([BILjava/net/SocketAddress;)V

    invoke-virtual {v0, v1}, Ljava/net/DatagramSocket;->send(Ljava/net/DatagramPacket;)V

    .line 104
    iget-wide v0, p0, Lfr/testudo/spacecorsair/mod/ModNet$Wire;->sentBytes:J

    array-length v2, p2

    int-to-long v2, v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lfr/testudo/spacecorsair/mod/ModNet$Wire;->sentBytes:J
    :try_end_12
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_12} :catch_13

    .line 108
    :goto_12
    return-void

    .line 105
    :catch_13
    move-exception v0

    goto :goto_12
.end method


# virtual methods
.method close()V
    .registers 3

    .prologue
    .line 79
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModNet$Wire;->turn:Lfr/testudo/spacecorsair/mod/ModNet$Turn;

    .line 80
    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/mod/ModNet$Turn;->close()V

    .line 81
    :cond_7
    iget v0, p0, Lfr/testudo/spacecorsair/mod/ModNet$Wire;->delayMs:I

    if-lez v0, :cond_13

    :try_start_b
    iget v0, p0, Lfr/testudo/spacecorsair/mod/ModNet$Wire;->delayMs:I

    add-int/lit8 v0, v0, 0x14

    int-to-long v0, v0

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_13
    .catch Ljava/lang/InterruptedException; {:try_start_b .. :try_end_13} :catch_33

    .line 82
    :cond_13
    :goto_13
    const/4 v0, 0x1

    iput-boolean v0, p0, Lfr/testudo/spacecorsair/mod/ModNet$Wire;->closed:Z

    .line 83
    :try_start_16
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModNet$Wire;->sock:Ljava/net/DatagramSocket;

    invoke-virtual {v0}, Ljava/net/DatagramSocket;->close()V
    :try_end_1b
    .catch Ljava/lang/Throwable; {:try_start_16 .. :try_end_1b} :catch_31

    .line 84
    :goto_1b
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModNet$Wire;->delayT:Ljava/util/Timer;

    if-eqz v0, :cond_24

    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModNet$Wire;->delayT:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 85
    :cond_24
    iget-object v1, p0, Lfr/testudo/spacecorsair/mod/ModNet$Wire;->waiting:Ljava/util/HashMap;

    monitor-enter v1

    :try_start_27
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModNet$Wire;->waiting:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v1

    .line 86
    return-void

    .line 85
    :catchall_2e
    move-exception v0

    monitor-exit v1
    :try_end_30
    .catchall {:try_start_27 .. :try_end_30} :catchall_2e

    throw v0

    .line 83
    :catch_31
    move-exception v0

    goto :goto_1b

    .line 81
    :catch_33
    move-exception v0

    goto :goto_13
.end method

.method port()I
    .registers 2

    .prologue
    .line 76
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModNet$Wire;->sock:Ljava/net/DatagramSocket;

    invoke-virtual {v0}, Ljava/net/DatagramSocket;->getLocalPort()I

    move-result v0

    return v0
.end method

.method send(Ljava/net/SocketAddress;[BI)V
    .registers 10

    .prologue
    const/4 v2, 0x0

    .line 89
    iget-boolean v0, p0, Lfr/testudo/spacecorsair/mod/ModNet$Wire;->closed:Z

    if-nez v0, :cond_7

    if-nez p1, :cond_8

    .line 99
    :cond_7
    :goto_7
    return-void

    .line 90
    :cond_8
    iget v0, p0, Lfr/testudo/spacecorsair/mod/ModNet$Wire;->lossPct:I

    if-lez v0, :cond_18

    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModNet$Wire;->rnd:Ljava/util/Random;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    iget v1, p0, Lfr/testudo/spacecorsair/mod/ModNet$Wire;->lossPct:I

    if-lt v0, v1, :cond_7

    .line 91
    :cond_18
    new-array v0, p3, [B

    .line 92
    invoke-static {p2, v2, v0, v2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 93
    iget v1, p0, Lfr/testudo/spacecorsair/mod/ModNet$Wire;->delayMs:I

    if-lez v1, :cond_44

    .line 94
    monitor-enter p0

    :try_start_22
    iget-object v1, p0, Lfr/testudo/spacecorsair/mod/ModNet$Wire;->delayT:Ljava/util/Timer;

    if-nez v1, :cond_30

    new-instance v1, Ljava/util/Timer;

    const-string v2, "net-delay"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljava/util/Timer;-><init>(Ljava/lang/String;Z)V

    iput-object v1, p0, Lfr/testudo/spacecorsair/mod/ModNet$Wire;->delayT:Ljava/util/Timer;

    :cond_30
    monitor-exit p0
    :try_end_31
    .catchall {:try_start_22 .. :try_end_31} :catchall_41

    .line 96
    :try_start_31
    iget-object v1, p0, Lfr/testudo/spacecorsair/mod/ModNet$Wire;->delayT:Ljava/util/Timer;

    new-instance v2, Lfr/testudo/spacecorsair/mod/ModNet$Wire$2;

    invoke-direct {v2, p0, p1, v0}, Lfr/testudo/spacecorsair/mod/ModNet$Wire$2;-><init>(Lfr/testudo/spacecorsair/mod/ModNet$Wire;Ljava/net/SocketAddress;[B)V

    iget v0, p0, Lfr/testudo/spacecorsair/mod/ModNet$Wire;->delayMs:I

    int-to-long v4, v0

    invoke-virtual {v1, v2, v4, v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V
    :try_end_3e
    .catch Ljava/lang/Throwable; {:try_start_31 .. :try_end_3e} :catch_3f

    goto :goto_7

    .line 97
    :catch_3f
    move-exception v0

    goto :goto_7

    .line 94
    :catchall_41
    move-exception v0

    :try_start_42
    monitor-exit p0
    :try_end_43
    .catchall {:try_start_42 .. :try_end_43} :catchall_41

    throw v0

    .line 98
    :cond_44
    invoke-direct {p0, p1, v0}, Lfr/testudo/spacecorsair/mod/ModNet$Wire;->raw(Ljava/net/SocketAddress;[B)V

    goto :goto_7
.end method

.method transact(Ljava/net/SocketAddress;[BII)[B
    .registers 15

    .prologue
    .line 150
    const/16 v0, 0x8

    const/16 v1, 0xc

    invoke-static {p2, v0, v1}, Lfr/testudo/spacecorsair/mod/ModNet;->hex([BII)Ljava/lang/String;

    move-result-object v2

    .line 151
    iget-object v1, p0, Lfr/testudo/spacecorsair/mod/ModNet$Wire;->waiting:Ljava/util/HashMap;

    monitor-enter v1

    :try_start_b
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModNet$Wire;->waiting:Ljava/util/HashMap;

    sget-object v3, Lfr/testudo/spacecorsair/mod/ModNet$Wire;->NONE:[B

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v1
    :try_end_13
    .catchall {:try_start_b .. :try_end_13} :catchall_59

    .line 153
    const/4 v0, 0x0

    move v1, v0

    :goto_15
    if-ge v1, p3, :cond_88

    :try_start_17
    iget-boolean v0, p0, Lfr/testudo/spacecorsair/mod/ModNet$Wire;->closed:Z

    if-nez v0, :cond_88

    .line 154
    array-length v0, p2

    invoke-virtual {p0, p1, p2, v0}, Lfr/testudo/spacecorsair/mod/ModNet$Wire;->send(Ljava/net/SocketAddress;[BI)V

    .line 155
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    int-to-long v6, p4

    add-long/2addr v4, v6

    .line 156
    iget-object v3, p0, Lfr/testudo/spacecorsair/mod/ModNet$Wire;->waiting:Ljava/util/HashMap;

    monitor-enter v3
    :try_end_28
    .catchall {:try_start_17 .. :try_end_28} :catchall_7d

    .line 157
    :goto_28
    :try_start_28
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModNet$Wire;->waiting:Ljava/util/HashMap;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    sget-object v6, Lfr/testudo/spacecorsair/mod/ModNet$Wire;->NONE:[B

    if-ne v0, v6, :cond_42

    iget-boolean v0, p0, Lfr/testudo/spacecorsair/mod/ModNet$Wire;->closed:Z

    if-nez v0, :cond_42

    .line 158
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long v6, v4, v6

    .line 159
    const-wide/16 v8, 0x0

    cmp-long v0, v6, v8

    if-gtz v0, :cond_5c

    .line 162
    :cond_42
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModNet$Wire;->waiting:Ljava/util/HashMap;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 163
    sget-object v4, Lfr/testudo/spacecorsair/mod/ModNet$Wire;->NONE:[B

    if-eq v0, v4, :cond_75

    monitor-exit v3
    :try_end_4f
    .catchall {:try_start_28 .. :try_end_4f} :catchall_7a

    .line 168
    iget-object v1, p0, Lfr/testudo/spacecorsair/mod/ModNet$Wire;->waiting:Ljava/util/HashMap;

    monitor-enter v1

    :try_start_52
    iget-object v3, p0, Lfr/testudo/spacecorsair/mod/ModNet$Wire;->waiting:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v1
    :try_end_58
    .catchall {:try_start_52 .. :try_end_58} :catchall_72

    .line 166
    :goto_58
    return-object v0

    .line 151
    :catchall_59
    move-exception v0

    :try_start_5a
    monitor-exit v1
    :try_end_5b
    .catchall {:try_start_5a .. :try_end_5b} :catchall_59

    throw v0

    .line 160
    :cond_5c
    :try_start_5c
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModNet$Wire;->waiting:Ljava/util/HashMap;

    invoke-virtual {v0, v6, v7}, Ljava/lang/Object;->wait(J)V
    :try_end_61
    .catch Ljava/lang/InterruptedException; {:try_start_5c .. :try_end_61} :catch_62
    .catchall {:try_start_5c .. :try_end_61} :catchall_7a

    goto :goto_28

    :catch_62
    move-exception v0

    const/4 v0, 0x0

    :try_start_64
    monitor-exit v3
    :try_end_65
    .catchall {:try_start_64 .. :try_end_65} :catchall_7a

    .line 168
    iget-object v1, p0, Lfr/testudo/spacecorsair/mod/ModNet$Wire;->waiting:Ljava/util/HashMap;

    monitor-enter v1

    :try_start_68
    iget-object v3, p0, Lfr/testudo/spacecorsair/mod/ModNet$Wire;->waiting:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v1

    goto :goto_58

    :catchall_6f
    move-exception v0

    monitor-exit v1
    :try_end_71
    .catchall {:try_start_68 .. :try_end_71} :catchall_6f

    throw v0

    :catchall_72
    move-exception v0

    :try_start_73
    monitor-exit v1
    :try_end_74
    .catchall {:try_start_73 .. :try_end_74} :catchall_72

    throw v0

    .line 164
    :cond_75
    :try_start_75
    monitor-exit v3

    .line 153
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_15

    .line 164
    :catchall_7a
    move-exception v0

    monitor-exit v3
    :try_end_7c
    .catchall {:try_start_75 .. :try_end_7c} :catchall_7a

    :try_start_7c
    throw v0
    :try_end_7d
    .catchall {:try_start_7c .. :try_end_7d} :catchall_7d

    .line 168
    :catchall_7d
    move-exception v0

    iget-object v1, p0, Lfr/testudo/spacecorsair/mod/ModNet$Wire;->waiting:Ljava/util/HashMap;

    monitor-enter v1

    :try_start_81
    iget-object v3, p0, Lfr/testudo/spacecorsair/mod/ModNet$Wire;->waiting:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v1
    :try_end_87
    .catchall {:try_start_81 .. :try_end_87} :catchall_96

    .line 169
    throw v0

    .line 166
    :cond_88
    const/4 v0, 0x0

    .line 168
    iget-object v1, p0, Lfr/testudo/spacecorsair/mod/ModNet$Wire;->waiting:Ljava/util/HashMap;

    monitor-enter v1

    :try_start_8c
    iget-object v3, p0, Lfr/testudo/spacecorsair/mod/ModNet$Wire;->waiting:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v1

    goto :goto_58

    :catchall_93
    move-exception v0

    monitor-exit v1
    :try_end_95
    .catchall {:try_start_8c .. :try_end_95} :catchall_93

    throw v0

    :catchall_96
    move-exception v0

    :try_start_97
    monitor-exit v1
    :try_end_98
    .catchall {:try_start_97 .. :try_end_98} :catchall_96

    throw v0
.end method
