.class final Lfr/testudo/spacecorsair/mod/ModLobby;
.super Ljava/lang/Object;
.source "ModLobby.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lfr/testudo/spacecorsair/mod/ModLobby$Reply;
    }
.end annotation


# static fields
.field static final BEAT_FULL_MS:I = 0x7530

.field static final BEAT_MS:I = 0x1f40

.field static DEBUG:Z = false

.field static final PUBLIC_ON:Z = true

.field static final RELAY_SESSION_BYTES:J = 0x9600000L

.field static final SERVICE:Ljava/lang/String; = "https://sc-rendezvous.spacecs-coop.workers.dev"

.field static final STUN:[[Ljava/lang/String;

.field private static volatile budgetBase:J

.field private static volatile budgetLink:Lfr/testudo/spacecorsair/mod/ModNet$Link;

.field static volatile busy:Z

.field static volatile code:Ljava/lang/String;

.field private static volatile gen:J

.field static volatile hosting:Z

.field private static volatile joinedCode:Ljava/lang/String;

.field private static volatile link:Lfr/testudo/spacecorsair/mod/ModNet$Link;

.field private static volatile peerId:Ljava/lang/String;

.field static volatile pub:Z

.field static volatile relayFull:Z

.field private static volatile relayReported:J

.field static volatile status:Ljava/lang/String;

.field private static volatile token:Ljava/lang/String;

.field private static volatile wire:Lfr/testudo/spacecorsair/mod/ModNet$Wire;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 32
    new-array v0, v5, [[Ljava/lang/String;

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "stun.cloudflare.com"

    aput-object v2, v1, v3

    const-string v2, "3478"

    aput-object v2, v1, v4

    aput-object v1, v0, v3

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "stun.l.google.com"

    aput-object v2, v1, v3

    const-string v2, "19302"

    aput-object v2, v1, v4

    aput-object v1, v0, v4

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModLobby;->STUN:[[Ljava/lang/String;

    .line 161
    const-string v0, ""

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModLobby;->code:Ljava/lang/String;

    const-string v0, ""

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModLobby;->status:Ljava/lang/String;

    .line 163
    const-string v0, ""

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModLobby;->token:Ljava/lang/String;

    .line 167
    const-string v0, ""

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModLobby;->peerId:Ljava/lang/String;

    const-string v0, ""

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModLobby;->joinedCode:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static accept(JLfr/testudo/spacecorsair/mod/ModNet$Wire;[Ljava/lang/String;Z)V
    .registers 15

    .prologue
    const/4 v1, 0x0

    .line 373
    .line 375
    const/4 v0, 0x2

    :try_start_2
    aget-object v0, p3, v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 376
    const/4 v0, 0x3

    aget-object v0, p3, v0

    const/16 v3, 0x20

    invoke-static {v0, v3}, Lfr/testudo/spacecorsair/mod/ModLan;->clean(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v8

    .line 377
    new-instance v0, Lfr/testudo/spacecorsair/mod/ModNet$Link;

    invoke-direct {v0, p2, v2}, Lfr/testudo/spacecorsair/mod/ModNet$Link;-><init>(Lfr/testudo/spacecorsair/mod/ModNet$Wire;I)V
    :try_end_16
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_16} :catch_91

    .line 378
    :try_start_16
    const-string v1, "A player is connecting..."

    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lfr/testudo/spacecorsair/mod/ModLobby;->status:Ljava/lang/String;

    .line 379
    const/4 v1, 0x6

    aget-object v1, p3, v1

    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModLobby;->addrs(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x7

    aget-object v2, p3, v2

    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModNet;->parse(Ljava/lang/String;)Ljava/net/InetSocketAddress;

    move-result-object v2

    const-wide/16 v4, 0x1770

    const-wide/16 v6, 0x61a8

    move v3, p4

    invoke-virtual/range {v0 .. v7}, Lfr/testudo/spacecorsair/mod/ModNet$Link;->connect(Ljava/util/List;Ljava/net/InetSocketAddress;ZJJ)Z

    move-result v1

    .line 380
    if-eqz v1, :cond_3d

    sget-wide v2, Lfr/testudo/spacecorsair/mod/ModLobby;->gen:J

    cmp-long v1, p0, v2

    if-eqz v1, :cond_4f

    :cond_3d
    invoke-virtual {v0}, Lfr/testudo/spacecorsair/mod/ModNet$Link;->abandon()V

    sget-wide v2, Lfr/testudo/spacecorsair/mod/ModLobby;->gen:J

    cmp-long v1, p0, v2

    if-nez v1, :cond_4e

    const-string v1, "Waiting for a player to join..."

    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lfr/testudo/spacecorsair/mod/ModLobby;->status:Ljava/lang/String;

    .line 392
    :cond_4e
    :goto_4e
    return-void

    .line 381
    :cond_4f
    sput-object v8, Lfr/testudo/spacecorsair/mod/ModLobby;->peerId:Ljava/lang/String;

    .line 382
    sput-object v0, Lfr/testudo/spacecorsair/mod/ModLobby;->link:Lfr/testudo/spacecorsair/mod/ModNet$Link;

    .line 383
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLobby;->applySaver()V

    .line 384
    invoke-static {v0, v8}, Lfr/testudo/spacecorsair/mod/ModLan;->acceptNet(Ljava/net/Socket;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_7c

    .line 385
    const/4 v1, 0x0

    sput-object v1, Lfr/testudo/spacecorsair/mod/ModLobby;->link:Lfr/testudo/spacecorsair/mod/ModNet$Link;

    .line 386
    invoke-virtual {v0}, Lfr/testudo/spacecorsair/mod/ModNet$Link;->close()V

    .line 388
    :cond_62
    :goto_62
    sget-wide v2, Lfr/testudo/spacecorsair/mod/ModLobby;->gen:J

    cmp-long v1, p0, v2

    if-nez v1, :cond_4e

    sget-boolean v1, Lfr/testudo/spacecorsair/mod/ModLan;->connected:Z

    if-nez v1, :cond_4e

    const-string v1, "Waiting for a player to join..."

    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lfr/testudo/spacecorsair/mod/ModLobby;->status:Ljava/lang/String;
    :try_end_74
    .catch Ljava/lang/Throwable; {:try_start_16 .. :try_end_74} :catch_75

    goto :goto_4e

    .line 389
    :catch_75
    move-exception v1

    .line 390
    :goto_76
    if-eqz v0, :cond_4e

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/mod/ModNet$Link;->abandon()V

    goto :goto_4e

    .line 387
    :cond_7c
    :try_start_7c
    invoke-virtual {v0}, Lfr/testudo/spacecorsair/mod/ModNet$Link;->relayed()Z

    move-result v1

    if-nez v1, :cond_62

    iget-object v1, p2, Lfr/testudo/spacecorsair/mod/ModNet$Wire;->turn:Lfr/testudo/spacecorsair/mod/ModNet$Turn;

    if-eqz v1, :cond_62

    if-nez p4, :cond_62

    iget-object v1, p2, Lfr/testudo/spacecorsair/mod/ModNet$Wire;->turn:Lfr/testudo/spacecorsair/mod/ModNet$Turn;

    invoke-virtual {v1}, Lfr/testudo/spacecorsair/mod/ModNet$Turn;->close()V

    const/4 v1, 0x0

    iput-object v1, p2, Lfr/testudo/spacecorsair/mod/ModNet$Wire;->turn:Lfr/testudo/spacecorsair/mod/ModNet$Turn;
    :try_end_90
    .catch Ljava/lang/Throwable; {:try_start_7c .. :try_end_90} :catch_75

    goto :goto_62

    .line 389
    :catch_91
    move-exception v0

    move-object v0, v1

    goto :goto_76
.end method

.method static synthetic access$000(J)V
    .registers 2

    .prologue
    .line 27
    invoke-static {p0, p1}, Lfr/testudo/spacecorsair/mod/ModLobby;->hostLoop(J)V

    return-void
.end method

.method static synthetic access$100(JLfr/testudo/spacecorsair/mod/ModNet$Wire;[Ljava/lang/String;Z)V
    .registers 5

    .prologue
    .line 27
    invoke-static {p0, p1, p2, p3, p4}, Lfr/testudo/spacecorsair/mod/ModLobby;->accept(JLfr/testudo/spacecorsair/mod/ModNet$Wire;[Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic access$200()J
    .registers 2

    .prologue
    .line 27
    sget-wide v0, Lfr/testudo/spacecorsair/mod/ModLobby;->gen:J

    return-wide v0
.end method

.method static synthetic access$300()V
    .registers 0

    .prologue
    .line 27
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLobby;->reportRelay()V

    return-void
.end method

.method static addrs(Ljava/lang/String;)Ljava/util/List;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/net/InetSocketAddress;",
            ">;"
        }
    .end annotation

    .prologue
    .line 207
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 208
    if-nez p0, :cond_8

    .line 213
    :cond_7
    return-object v0

    .line 209
    :cond_8
    const-string v1, ","

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    array-length v3, v2

    const/4 v1, 0x0

    :goto_10
    if-ge v1, v3, :cond_7

    aget-object v4, v2, v1

    .line 210
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lfr/testudo/spacecorsair/mod/ModNet;->parse(Ljava/lang/String;)Ljava/net/InetSocketAddress;

    move-result-object v4

    .line 211
    if-eqz v4, :cond_29

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/16 v6, 0x18

    if-ge v5, v6, :cond_29

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 209
    :cond_29
    add-int/lit8 v1, v1, 0x1

    goto :goto_10
.end method

.method static applySaver()V
    .registers 2

    .prologue
    .line 135
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModLobby;->link:Lfr/testudo/spacecorsair/mod/ModNet$Link;

    .line 136
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLobby;->saverPref()Z

    move-result v1

    if-nez v1, :cond_16

    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLobby;->onMobileData()Z

    move-result v1

    if-nez v1, :cond_16

    if-eqz v0, :cond_1a

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/mod/ModNet$Link;->relayed()Z

    move-result v0

    if-eqz v0, :cond_1a

    :cond_16
    const/4 v0, 0x1

    :goto_17
    sput-boolean v0, Lfr/testudo/spacecorsair/mod/ModLanSync;->saver:Z

    .line 137
    return-void

    .line 136
    :cond_1a
    const/4 v0, 0x0

    goto :goto_17
.end method

.method static available()Z
    .registers 1

    .prologue
    .line 37
    const-string v0, "https://sc-rendezvous.spacecs-coop.workers.dev"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method static varargs call(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lfr/testudo/spacecorsair/mod/ModLobby$Reply;
    .registers 11

    .prologue
    .line 85
    const/4 v1, 0x0

    .line 87
    :try_start_1
    invoke-static {p2}, Lfr/testudo/spacecorsair/mod/ModLobby;->form([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 88
    new-instance v3, Ljava/net/URL;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "https://sc-rendezvous.spacecs-coop.workers.dev"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v0, "GET"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b7

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_b7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "?"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_37
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 89
    invoke-virtual {v3}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;
    :try_end_48
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_48} :catch_e5
    .catchall {:try_start_1 .. :try_end_48} :catchall_d4

    .line 90
    const/16 v1, 0x1770

    :try_start_4a
    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 91
    const/16 v1, 0x1770

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 92
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    .line 93
    invoke-virtual {v0, p0}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 94
    const-string v1, "POST"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_80

    .line 95
    const-string v1, "UTF-8"

    invoke-virtual {v2, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    .line 96
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 97
    const-string v2, "Content-Type"

    const-string v3, "application/x-www-form-urlencoded"

    invoke-virtual {v0, v2, v3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    array-length v2, v1

    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setFixedLengthStreamingMode(I)V

    .line 99
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    .line 100
    invoke-virtual {v2, v1}, Ljava/io/OutputStream;->write([B)V

    .line 101
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V

    .line 103
    :cond_80
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v2

    .line 104
    const/16 v1, 0x190

    if-lt v2, v1, :cond_bb

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v1

    .line 105
    :goto_8c
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 106
    if-eqz v1, :cond_c3

    .line 107
    const/16 v4, 0x1000

    new-array v4, v4, [B

    .line 109
    :goto_97
    invoke-virtual {v1, v4}, Ljava/io/InputStream;->read([B)I

    move-result v5

    if-lez v5, :cond_c0

    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v6

    const/high16 v7, 0x10000

    if-ge v6, v7, :cond_c0

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v6, v5}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_a9
    .catch Ljava/lang/Throwable; {:try_start_4a .. :try_end_a9} :catch_aa
    .catchall {:try_start_4a .. :try_end_a9} :catchall_dd

    goto :goto_97

    .line 113
    :catch_aa
    move-exception v1

    move-object v1, v0

    .line 114
    :goto_ac
    :try_start_ac
    new-instance v0, Lfr/testudo/spacecorsair/mod/ModLobby$Reply;

    invoke-direct {v0}, Lfr/testudo/spacecorsair/mod/ModLobby$Reply;-><init>()V
    :try_end_b1
    .catchall {:try_start_ac .. :try_end_b1} :catchall_e1

    .line 116
    if-eqz v1, :cond_b6

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 114
    :cond_b6
    :goto_b6
    return-object v0

    .line 88
    :cond_b7
    :try_start_b7
    const-string v0, ""
    :try_end_b9
    .catch Ljava/lang/Throwable; {:try_start_b7 .. :try_end_b9} :catch_e5
    .catchall {:try_start_b7 .. :try_end_b9} :catchall_d4

    goto/16 :goto_37

    .line 104
    :cond_bb
    :try_start_bb
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    goto :goto_8c

    .line 110
    :cond_c0
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 112
    :cond_c3
    const-string v1, "UTF-8"

    invoke-virtual {v3, v1}, Ljava/io/ByteArrayOutputStream;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v2}, Lfr/testudo/spacecorsair/mod/ModLobby;->parse(Ljava/lang/String;I)Lfr/testudo/spacecorsair/mod/ModLobby$Reply;
    :try_end_cc
    .catch Ljava/lang/Throwable; {:try_start_bb .. :try_end_cc} :catch_aa
    .catchall {:try_start_bb .. :try_end_cc} :catchall_dd

    move-result-object v1

    .line 116
    if-eqz v0, :cond_d2

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_d2
    move-object v0, v1

    .line 112
    goto :goto_b6

    .line 116
    :catchall_d4
    move-exception v0

    move-object v2, v0

    move-object v3, v1

    :goto_d7
    if-eqz v3, :cond_dc

    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 117
    :cond_dc
    throw v2

    .line 116
    :catchall_dd
    move-exception v1

    move-object v2, v1

    move-object v3, v0

    goto :goto_d7

    :catchall_e1
    move-exception v0

    move-object v2, v0

    move-object v3, v1

    goto :goto_d7

    .line 113
    :catch_e5
    move-exception v0

    goto :goto_ac
.end method

.method static candidates(Lfr/testudo/spacecorsair/mod/ModNet$Wire;)Ljava/lang/String;
    .registers 11

    .prologue
    const/16 v7, 0x5dc

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 191
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 192
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 193
    sget-object v4, Lfr/testudo/spacecorsair/mod/ModLobby;->STUN:[[Ljava/lang/String;

    aget-object v4, v4, v1

    aget-object v4, v4, v1

    sget-object v5, Lfr/testudo/spacecorsair/mod/ModLobby;->STUN:[[Ljava/lang/String;

    aget-object v5, v5, v1

    aget-object v5, v5, v0

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-static {p0, v4, v5, v7}, Lfr/testudo/spacecorsair/mod/ModNet;->stun(Lfr/testudo/spacecorsair/mod/ModNet$Wire;Ljava/lang/String;II)Ljava/net/InetSocketAddress;

    move-result-object v4

    .line 194
    sget-object v5, Lfr/testudo/spacecorsair/mod/ModLobby;->STUN:[[Ljava/lang/String;

    aget-object v5, v5, v0

    aget-object v5, v5, v1

    sget-object v6, Lfr/testudo/spacecorsair/mod/ModLobby;->STUN:[[Ljava/lang/String;

    aget-object v6, v6, v0

    aget-object v6, v6, v0

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-static {p0, v5, v6, v7}, Lfr/testudo/spacecorsair/mod/ModNet;->stun(Lfr/testudo/spacecorsair/mod/ModNet$Wire;Ljava/lang/String;II)Ljava/net/InetSocketAddress;

    move-result-object v5

    .line 195
    const/4 v6, 0x2

    new-array v6, v6, [Ljava/net/InetSocketAddress;

    aput-object v4, v6, v1

    aput-object v5, v6, v0

    array-length v7, v6

    :goto_3e
    if-ge v1, v7, :cond_58

    aget-object v8, v6, v1

    if-eqz v8, :cond_55

    invoke-static {v8}, Lfr/testudo/spacecorsair/mod/ModNet;->show(Ljava/net/InetSocketAddress;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_55

    invoke-static {v8}, Lfr/testudo/spacecorsair/mod/ModNet;->show(Ljava/net/InetSocketAddress;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_55
    add-int/lit8 v1, v1, 0x1

    goto :goto_3e

    .line 196
    :cond_58
    if-eqz v4, :cond_9f

    if-eqz v5, :cond_9f

    invoke-virtual {v4}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v1

    invoke-virtual {v5}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v6

    if-eq v1, v6, :cond_9f

    invoke-virtual {v4}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v1

    invoke-virtual {v5}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/net/InetAddress;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9f

    .line 197
    invoke-virtual {v4}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v1

    invoke-virtual {v5}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v5

    invoke-static {v1, v5}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 198
    :goto_80
    const/16 v5, 0xc

    if-gt v0, v5, :cond_9f

    add-int v5, v1, v0

    const/high16 v6, 0x10000

    if-ge v5, v6, :cond_9f

    new-instance v5, Ljava/net/InetSocketAddress;

    invoke-virtual {v4}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v6

    add-int v7, v1, v0

    invoke-direct {v5, v6, v7}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    invoke-static {v5}, Lfr/testudo/spacecorsair/mod/ModNet;->show(Ljava/net/InetSocketAddress;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_80

    .line 200
    :cond_9f
    invoke-virtual {p0}, Lfr/testudo/spacecorsair/mod/ModNet$Wire;->port()I

    move-result v0

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModNet;->localCandidates(I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_ab
    :goto_ab
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_d1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/InetSocketAddress;

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModNet;->show(Ljava/net/InetSocketAddress;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_ab

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/16 v5, 0x16

    if-ge v4, v5, :cond_ab

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModNet;->show(Ljava/net/InetSocketAddress;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_ab

    .line 201
    :cond_d1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 202
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_da
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_f5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-lez v3, :cond_f1

    const/16 v3, 0x2c

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_f1
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_da

    .line 203
    :cond_f5
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static varargs form([Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    .prologue
    .line 72
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 74
    const/4 v0, 0x0

    :goto_6
    add-int/lit8 v2, v0, 0x1

    :try_start_8
    array-length v3, p0

    if-ge v2, v3, :cond_3a

    .line 75
    add-int/lit8 v2, v0, 0x1

    aget-object v2, p0, v2

    if-nez v2, :cond_14

    .line 74
    :goto_11
    add-int/lit8 v0, v0, 0x2

    goto :goto_6

    .line 76
    :cond_14
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-lez v2, :cond_1f

    const/16 v2, 0x26

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 77
    :cond_1f
    aget-object v2, p0, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x3d

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    add-int/lit8 v3, v0, 0x1

    aget-object v3, p0, v3

    const-string v4, "UTF-8"

    invoke-static {v3, v4}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_38
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_8 .. :try_end_38} :catch_39

    goto :goto_11

    .line 79
    :catch_39
    move-exception v0

    .line 80
    :cond_3a
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static hideIp()Z
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 125
    :try_start_1
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLobby;->prefs()Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "hide"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_b} :catch_d

    move-result v0

    :goto_c
    return v0

    :catch_d
    move-exception v1

    goto :goto_c
.end method

.method static host(Z)V
    .registers 7

    .prologue
    const/4 v1, 0x1

    .line 257
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLobby;->available()Z

    move-result v0

    if-nez v0, :cond_8

    .line 269
    :goto_7
    return-void

    .line 258
    :cond_8
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLobby;->leave()V

    .line 259
    sget-wide v2, Lfr/testudo/spacecorsair/mod/ModLobby;->gen:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    sput-wide v2, Lfr/testudo/spacecorsair/mod/ModLobby;->gen:J

    .line 260
    sput-boolean v1, Lfr/testudo/spacecorsair/mod/ModLobby;->hosting:Z

    .line 261
    if-eqz p0, :cond_3d

    move v0, v1

    :goto_17
    sput-boolean v0, Lfr/testudo/spacecorsair/mod/ModLobby;->pub:Z

    .line 262
    sput-boolean v1, Lfr/testudo/spacecorsair/mod/ModLobby;->busy:Z

    .line 263
    const-string v0, ""

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModLobby;->code:Ljava/lang/String;

    .line 264
    const-string v0, "Opening the game..."

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModLobby;->status:Ljava/lang/String;

    .line 265
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLan;->hostNet()V

    .line 266
    new-instance v0, Ljava/lang/Thread;

    new-instance v4, Lfr/testudo/spacecorsair/mod/ModLobby$1;

    invoke-direct {v4, v2, v3}, Lfr/testudo/spacecorsair/mod/ModLobby$1;-><init>(J)V

    const-string v2, "lobby-host"

    invoke-direct {v0, v4, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 267
    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 268
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_7

    .line 261
    :cond_3d
    const/4 v0, 0x0

    goto :goto_17
.end method

.method private static hostLoop(J)V
    .registers 26

    .prologue
    .line 279
    const-string v4, ""

    const-string v3, ""

    .line 280
    const/4 v6, 0x0

    .line 281
    const/4 v7, 0x0

    .line 282
    const-string v2, ""

    .line 283
    new-instance v22, Ljava/util/HashSet;

    invoke-direct/range {v22 .. v22}, Ljava/util/HashSet;-><init>()V

    .line 284
    const/4 v5, 0x1

    new-array v9, v5, [Z

    const/4 v5, 0x0

    const/4 v8, 0x0

    aput-boolean v8, v9, v5

    .line 285
    const/4 v8, 0x0

    .line 286
    const/4 v5, 0x0

    .line 287
    const-wide/16 v12, 0x0

    const-wide/16 v10, 0x7530

    move-wide v14, v10

    move-wide/from16 v16, v12

    move/from16 v18, v5

    move/from16 v19, v8

    .line 289
    :goto_21
    :try_start_21
    invoke-static/range {p0 .. p1}, Lfr/testudo/spacecorsair/mod/ModLobby;->stillHost(J)Z

    move-result v5

    if-eqz v5, :cond_342

    .line 290
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLobby;->hideIp()Z

    move-result v8

    .line 291
    if-eqz v6, :cond_31

    iget-boolean v5, v6, Lfr/testudo/spacecorsair/mod/ModNet$Wire;->closed:Z

    if-eqz v5, :cond_415

    .line 292
    :cond_31
    new-instance v7, Lfr/testudo/spacecorsair/mod/ModNet$Wire;

    const/4 v2, 0x0

    invoke-direct {v7, v2}, Lfr/testudo/spacecorsair/mod/ModNet$Wire;-><init>(I)V
    :try_end_37
    .catch Ljava/lang/Throwable; {:try_start_21 .. :try_end_37} :catch_407

    .line 293
    :try_start_37
    sput-object v7, Lfr/testudo/spacecorsair/mod/ModLobby;->wire:Lfr/testudo/spacecorsair/mod/ModNet$Wire;

    .line 294
    const/4 v10, 0x0

    .line 295
    if-eqz v8, :cond_122

    const-string v2, ""
    :try_end_3e
    .catch Ljava/lang/Throwable; {:try_start_37 .. :try_end_3e} :catch_40d

    :goto_3e
    move-object v5, v2

    move-object v12, v10

    move-object v6, v7

    .line 297
    :goto_41
    :try_start_41
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_411

    .line 298
    const-string v7, "POST"

    const-string v10, "/lobby"

    const/16 v2, 0x16

    new-array v11, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v13, "nick"

    aput-object v13, v11, v2

    const/4 v2, 0x1

    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLan;->myNick()Ljava/lang/String;

    move-result-object v13

    aput-object v13, v11, v2

    const/4 v2, 0x2

    const-string v13, "ctry"

    aput-object v13, v11, v2

    const/4 v2, 0x3

    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLan;->myCountry()Ljava/lang/String;

    move-result-object v13

    aput-object v13, v11, v2

    const/4 v2, 0x4

    const-string v13, "id"

    aput-object v13, v11, v2

    const/4 v2, 0x5

    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModSaveSig;->installId()Ljava/lang/String;

    move-result-object v13

    aput-object v13, v11, v2

    const/4 v2, 0x6

    const-string v13, "ver"

    aput-object v13, v11, v2

    const/4 v2, 0x7

    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLan;->myVersion()Ljava/lang/String;

    move-result-object v13

    aput-object v13, v11, v2

    const/16 v2, 0x8

    const-string v13, "pub"

    aput-object v13, v11, v2

    const/16 v13, 0x9

    .line 299
    sget-boolean v2, Lfr/testudo/spacecorsair/mod/ModLobby;->pub:Z

    if-eqz v2, :cond_128

    const-string v2, "1"

    :goto_8d
    aput-object v2, v11, v13

    const/16 v2, 0xa

    const-string v13, "clean"

    aput-object v13, v11, v2

    const/16 v13, 0xb

    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModSaveSig;->publicOk()Z

    move-result v2

    if-eqz v2, :cond_12c

    const-string v2, "1"

    :goto_9f
    aput-object v2, v11, v13

    const/16 v2, 0xc

    const-string v13, "pvp"

    aput-object v13, v11, v2

    const/16 v13, 0xd

    sget-boolean v2, Lfr/testudo/spacecorsair/mod/ModLan;->pvpRoom:Z

    if-eqz v2, :cond_130

    const-string v2, "1"

    :goto_af
    aput-object v2, v11, v13

    const/16 v2, 0xe

    const-string v13, "sector"

    aput-object v13, v11, v2

    const/16 v2, 0xf

    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLobby;->sector()Ljava/lang/String;

    move-result-object v13

    aput-object v13, v11, v2

    const/16 v2, 0x10

    const-string v13, "level"

    aput-object v13, v11, v2

    const/16 v2, 0x11

    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLobby;->level()Ljava/lang/String;

    move-result-object v13

    aput-object v13, v11, v2

    const/16 v2, 0x12

    const-string v13, "cands"

    aput-object v13, v11, v2

    const/16 v2, 0x13

    aput-object v5, v11, v2

    const/16 v2, 0x14

    const-string v13, "hide"

    aput-object v13, v11, v2

    const/16 v13, 0x15

    .line 300
    if-eqz v8, :cond_134

    const-string v2, "1"

    :goto_e3
    aput-object v2, v11, v13

    .line 298
    invoke-static {v7, v10, v11}, Lfr/testudo/spacecorsair/mod/ModLobby;->call(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lfr/testudo/spacecorsair/mod/ModLobby$Reply;

    move-result-object v2

    .line 301
    invoke-virtual {v2}, Lfr/testudo/spacecorsair/mod/ModLobby$Reply;->ok()Z

    move-result v7

    if-eqz v7, :cond_fc

    const-string v7, "code"

    invoke-virtual {v2, v7}, Lfr/testudo/spacecorsair/mod/ModLobby$Reply;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    const/4 v10, 0x4

    if-eq v7, v10, :cond_137

    .line 302
    :cond_fc
    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModLobby;->refusal(Lfr/testudo/spacecorsair/mod/ModLobby$Reply;)Ljava/lang/String;

    move-result-object v7

    sput-object v7, Lfr/testudo/spacecorsair/mod/ModLobby;->status:Ljava/lang/String;

    .line 303
    const/4 v7, 0x0

    sput-boolean v7, Lfr/testudo/spacecorsair/mod/ModLobby;->busy:Z

    .line 304
    iget v7, v2, Lfr/testudo/spacecorsair/mod/ModLobby$Reply;->status:I

    if-eqz v7, :cond_119

    iget v7, v2, Lfr/testudo/spacecorsair/mod/ModLobby$Reply;->status:I

    const/16 v8, 0x1f4

    if-ge v7, v8, :cond_119

    const-string v7, "busy"

    iget-object v2, v2, Lfr/testudo/spacecorsair/mod/ModLobby$Reply;->first:Ljava/lang/String;

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_342

    :cond_119
    const-wide/16 v10, 0x1388

    invoke-static {v10, v11}, Ljava/lang/Thread;->sleep(J)V
    :try_end_11e
    .catch Ljava/lang/Throwable; {:try_start_41 .. :try_end_11e} :catch_407

    move-object v2, v5

    move-object v7, v12

    goto/16 :goto_21

    .line 295
    :cond_122
    :try_start_122
    invoke-static {v7}, Lfr/testudo/spacecorsair/mod/ModLobby;->candidates(Lfr/testudo/spacecorsair/mod/ModNet$Wire;)Ljava/lang/String;
    :try_end_125
    .catch Ljava/lang/Throwable; {:try_start_122 .. :try_end_125} :catch_40d

    move-result-object v2

    goto/16 :goto_3e

    .line 299
    :cond_128
    :try_start_128
    const-string v2, "0"

    goto/16 :goto_8d

    :cond_12c
    const-string v2, "0"

    goto/16 :goto_9f

    :cond_130
    const-string v2, "0"

    goto/16 :goto_af

    .line 300
    :cond_134
    const-string v2, "0"

    goto :goto_e3

    .line 307
    :cond_137
    const-string v7, "code"

    invoke-virtual {v2, v7}, Lfr/testudo/spacecorsair/mod/ModLobby$Reply;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const/4 v10, 0x4

    invoke-static {v7, v10}, Lfr/testudo/spacecorsair/mod/ModLan;->clean(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    .line 308
    const-string v7, "token"

    invoke-virtual {v2, v7}, Lfr/testudo/spacecorsair/mod/ModLobby$Reply;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/16 v7, 0x40

    invoke-static {v2, v7}, Lfr/testudo/spacecorsair/mod/ModLan;->clean(Ljava/lang/String;I)Ljava/lang/String;
    :try_end_14d
    .catch Ljava/lang/Throwable; {:try_start_128 .. :try_end_14d} :catch_407

    move-result-object v2

    .line 309
    :try_start_14e
    sput-object v4, Lfr/testudo/spacecorsair/mod/ModLobby;->code:Ljava/lang/String;

    .line 310
    sput-object v2, Lfr/testudo/spacecorsair/mod/ModLobby;->token:Ljava/lang/String;

    .line 311
    const/4 v3, 0x0

    sput-boolean v3, Lfr/testudo/spacecorsair/mod/ModLobby;->busy:Z

    .line 312
    const-string v3, "Waiting for a player to join..."

    invoke-static {v3}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lfr/testudo/spacecorsair/mod/ModLobby;->status:Ljava/lang/String;

    .line 313
    const-string v7, "lobby"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "hosting "

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    sget-boolean v3, Lfr/testudo/spacecorsair/mod/ModLobby;->pub:Z

    if-eqz v3, :cond_26f

    const-string v3, "public"

    :goto_170
    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v7, v3}, Lfr/testudo/spacecorsair/mod/ModDev;->ev(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_17b
    .catch Ljava/lang/Throwable; {:try_start_14e .. :try_end_17b} :catch_40a

    move-object v10, v2

    move-object v11, v4

    .line 315
    :goto_17d
    if-eqz v8, :cond_419

    if-nez v12, :cond_419

    :try_start_181
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    cmp-long v2, v2, v16

    if-ltz v2, :cond_419

    .line 316
    invoke-static {v6, v11, v10}, Lfr/testudo/spacecorsair/mod/ModLobby;->relay(Lfr/testudo/spacecorsair/mod/ModNet$Wire;Ljava/lang/String;Ljava/lang/String;)Lfr/testudo/spacecorsair/mod/ModNet$Turn;

    move-result-object v12

    .line 317
    if-nez v12, :cond_273

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    add-long v16, v2, v14

    const-wide/16 v2, 0x2

    mul-long/2addr v2, v14

    const-wide/32 v14, 0x927c0

    invoke-static {v2, v3, v14, v15}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v14

    move-object/from16 v21, v12

    .line 320
    :goto_1a1
    sget-boolean v13, Lfr/testudo/spacecorsair/mod/ModLan;->connected:Z

    .line 321
    if-eqz v19, :cond_1aa

    if-nez v13, :cond_1aa

    invoke-virtual/range {v22 .. v22}, Ljava/util/HashSet;->clear()V

    .line 323
    :cond_1aa
    if-nez v13, :cond_41d

    const/4 v2, 0x0

    aget-boolean v2, v9, v2

    if-nez v2, :cond_41d

    add-int/lit8 v18, v18, 0x1

    rem-int/lit8 v2, v18, 0x2

    if-nez v2, :cond_41d

    if-nez v8, :cond_41d

    invoke-static {v6}, Lfr/testudo/spacecorsair/mod/ModLobby;->candidates(Lfr/testudo/spacecorsair/mod/ModNet$Wire;)Ljava/lang/String;

    move-result-object v5

    move/from16 v12, v18

    move-object/from16 v20, v5

    .line 324
    :goto_1c1
    const-string v3, "POST"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "/lobby/"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "/beat"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/16 v2, 0x10

    new-array v5, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v7, "token"

    aput-object v7, v5, v2

    const/4 v2, 0x1

    aput-object v10, v5, v2

    const/4 v2, 0x2

    const-string v7, "full"

    aput-object v7, v5, v2

    const/4 v7, 0x3

    if-eqz v13, :cond_279

    const-string v2, "1"

    :goto_1f2
    aput-object v2, v5, v7

    const/4 v2, 0x4

    const-string v7, "pvp"

    aput-object v7, v5, v2

    const/4 v7, 0x5

    sget-boolean v2, Lfr/testudo/spacecorsair/mod/ModLan;->pvpRoom:Z

    if-eqz v2, :cond_27d

    const-string v2, "1"

    :goto_200
    aput-object v2, v5, v7

    const/4 v2, 0x6

    const-string v7, "sector"

    aput-object v7, v5, v2

    const/4 v2, 0x7

    .line 325
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLobby;->sector()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v2

    const/16 v2, 0x8

    const-string v7, "level"

    aput-object v7, v5, v2

    const/16 v2, 0x9

    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLobby;->level()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v2

    const/16 v2, 0xa

    const-string v7, "cands"

    aput-object v7, v5, v2

    const/16 v2, 0xb

    aput-object v20, v5, v2

    const/16 v2, 0xc

    const-string v7, "hide"

    aput-object v7, v5, v2

    const/16 v7, 0xd

    if-eqz v8, :cond_280

    const-string v2, "1"

    :goto_232
    aput-object v2, v5, v7

    const/16 v2, 0xe

    const-string v7, "relay"

    aput-object v7, v5, v2

    const/16 v7, 0xf

    .line 326
    if-eqz v21, :cond_283

    move-object/from16 v0, v21

    iget-object v2, v0, Lfr/testudo/spacecorsair/mod/ModNet$Turn;->relayed:Ljava/net/InetSocketAddress;

    if-eqz v2, :cond_283

    move-object/from16 v0, v21

    iget-object v2, v0, Lfr/testudo/spacecorsair/mod/ModNet$Turn;->relayed:Ljava/net/InetSocketAddress;

    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModNet;->show(Ljava/net/InetSocketAddress;)Ljava/lang/String;

    move-result-object v2

    :goto_24c
    aput-object v2, v5, v7

    .line 324
    invoke-static {v3, v4, v5}, Lfr/testudo/spacecorsair/mod/ModLobby;->call(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lfr/testudo/spacecorsair/mod/ModLobby$Reply;

    move-result-object v2

    .line 327
    iget v3, v2, Lfr/testudo/spacecorsair/mod/ModLobby$Reply;->status:I

    const/16 v4, 0x194

    if-eq v3, v4, :cond_25e

    iget v3, v2, Lfr/testudo/spacecorsair/mod/ModLobby$Reply;->status:I

    const/16 v4, 0x193

    if-ne v3, v4, :cond_286

    :cond_25e
    const-string v4, ""
    :try_end_260
    .catch Ljava/lang/Throwable; {:try_start_181 .. :try_end_260} :catch_3de

    :try_start_260
    const-string v2, ""

    sput-object v2, Lfr/testudo/spacecorsair/mod/ModLobby;->code:Ljava/lang/String;
    :try_end_264
    .catch Ljava/lang/Throwable; {:try_start_260 .. :try_end_264} :catch_403

    move/from16 v18, v12

    move/from16 v19, v13

    move-object/from16 v2, v20

    move-object/from16 v7, v21

    move-object v3, v10

    goto/16 :goto_21

    .line 313
    :cond_26f
    :try_start_26f
    const-string v3, "private"
    :try_end_271
    .catch Ljava/lang/Throwable; {:try_start_26f .. :try_end_271} :catch_40a

    goto/16 :goto_170

    .line 318
    :cond_273
    const-wide/16 v14, 0x7530

    move-object/from16 v21, v12

    goto/16 :goto_1a1

    .line 324
    :cond_279
    :try_start_279
    const-string v2, "0"

    goto/16 :goto_1f2

    :cond_27d
    const-string v2, "0"

    goto :goto_200

    .line 325
    :cond_280
    const-string v2, "0"

    goto :goto_232

    .line 326
    :cond_283
    const-string v2, ""

    goto :goto_24c

    .line 328
    :cond_286
    invoke-virtual {v2}, Lfr/testudo/spacecorsair/mod/ModLobby$Reply;->ok()Z

    move-result v3

    if-eqz v3, :cond_312

    if-nez v13, :cond_312

    const/4 v3, 0x0

    aget-boolean v3, v9, v3

    if-nez v3, :cond_312

    .line 329
    iget-object v2, v2, Lfr/testudo/spacecorsair/mod/ModLobby$Reply;->rows:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_299
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_312

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Ljava/lang/String;

    .line 330
    array-length v3, v7

    const/16 v4, 0x8

    if-lt v3, v4, :cond_299

    const-string v3, "join"

    const/4 v4, 0x0

    aget-object v4, v7, v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_299

    .line 331
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v4, 0x1

    aget-object v4, v7, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "|"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x6

    aget-object v4, v7, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "|"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x7

    aget-object v4, v7, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 332
    const/4 v4, 0x6

    aget-object v4, v7, v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_2f1

    const/4 v4, 0x7

    aget-object v4, v7, v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_299

    .line 333
    :cond_2f1
    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_299

    .line 334
    const/4 v2, 0x0

    const/4 v3, 0x1

    aput-boolean v3, v9, v2

    .line 338
    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lfr/testudo/spacecorsair/mod/ModLobby$2;

    move-wide/from16 v4, p0

    invoke-direct/range {v3 .. v9}, Lfr/testudo/spacecorsair/mod/ModLobby$2;-><init>(JLfr/testudo/spacecorsair/mod/ModNet$Wire;[Ljava/lang/String;Z[Z)V

    const-string v4, "lobby-accept"

    invoke-direct {v2, v3, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 343
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 344
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 348
    :cond_312
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLobby;->reportRelay()V

    .line 349
    if-eqz v13, :cond_33a

    const-wide/16 v2, 0x7530

    .line 350
    :goto_319
    const-wide/16 v4, 0x0

    :goto_31b
    cmp-long v7, v4, v2

    if-gez v7, :cond_32e

    sget-wide v18, Lfr/testudo/spacecorsair/mod/ModLobby;->gen:J

    cmp-long v7, p0, v18

    if-nez v7, :cond_32e

    .line 351
    const-wide/16 v18, 0xfa

    invoke-static/range {v18 .. v19}, Ljava/lang/Thread;->sleep(J)V

    .line 352
    sget-boolean v7, Lfr/testudo/spacecorsair/mod/ModLan;->connected:Z
    :try_end_32c
    .catch Ljava/lang/Throwable; {:try_start_279 .. :try_end_32c} :catch_3de

    if-eq v13, v7, :cond_33d

    :cond_32e
    move/from16 v18, v12

    move/from16 v19, v13

    move-object/from16 v2, v20

    move-object/from16 v7, v21

    move-object v3, v10

    move-object v4, v11

    .line 354
    goto/16 :goto_21

    .line 349
    :cond_33a
    const-wide/16 v2, 0x1f40

    goto :goto_319

    .line 350
    :cond_33d
    const-wide/16 v18, 0xfa

    add-long v4, v4, v18

    goto :goto_31b

    :cond_342
    move-object v2, v3

    .line 359
    :cond_343
    :goto_343
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_372

    const-string v3, "POST"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "/lobby/"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/close"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string v8, "token"

    aput-object v8, v5, v7

    const/4 v7, 0x1

    aput-object v2, v5, v7

    invoke-static {v3, v4, v5}, Lfr/testudo/spacecorsair/mod/ModLobby;->call(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lfr/testudo/spacecorsair/mod/ModLobby$Reply;

    .line 360
    :cond_372
    sget-boolean v2, Lfr/testudo/spacecorsair/mod/ModLobby;->DEBUG:Z

    if-eqz v2, :cond_3b4

    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "host loop exit g="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, p0

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " gen="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-wide v4, Lfr/testudo/spacecorsair/mod/ModLobby;->gen:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " internet="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-boolean v4, Lfr/testudo/spacecorsair/mod/ModLan;->internet:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " role="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v4, Lfr/testudo/spacecorsair/mod/ModLan;->role:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 361
    :cond_3b4
    sget-wide v2, Lfr/testudo/spacecorsair/mod/ModLobby;->gen:J

    cmp-long v2, p0, v2

    if-nez v2, :cond_3d4

    .line 362
    const/4 v2, 0x0

    sput-boolean v2, Lfr/testudo/spacecorsair/mod/ModLobby;->hosting:Z

    .line 363
    const/4 v2, 0x0

    sput-boolean v2, Lfr/testudo/spacecorsair/mod/ModLobby;->busy:Z

    .line 364
    const-string v2, ""

    sput-object v2, Lfr/testudo/spacecorsair/mod/ModLobby;->code:Ljava/lang/String;

    .line 365
    sget-boolean v2, Lfr/testudo/spacecorsair/mod/ModLan;->internet:Z

    if-eqz v2, :cond_3d4

    sget v2, Lfr/testudo/spacecorsair/mod/ModLan;->role:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_3d4

    sget-boolean v2, Lfr/testudo/spacecorsair/mod/ModLan;->connected:Z

    if-nez v2, :cond_3d4

    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLan;->stop()V

    .line 368
    :cond_3d4
    if-eqz v6, :cond_3dd

    sget-boolean v2, Lfr/testudo/spacecorsair/mod/ModLan;->connected:Z

    if-nez v2, :cond_3dd

    invoke-virtual {v6}, Lfr/testudo/spacecorsair/mod/ModNet$Wire;->close()V

    .line 369
    :cond_3dd
    return-void

    .line 355
    :catch_3de
    move-exception v3

    move-object v5, v3

    move-object v2, v10

    move-object v4, v11

    .line 356
    :goto_3e2
    const-string v3, "lobby"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "host loop ended: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Lfr/testudo/spacecorsair/mod/ModDev;->ev(Ljava/lang/String;Ljava/lang/String;)V

    .line 357
    sget-boolean v3, Lfr/testudo/spacecorsair/mod/ModLobby;->DEBUG:Z

    if-eqz v3, :cond_343

    invoke-virtual {v5}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_343

    .line 355
    :catch_403
    move-exception v3

    move-object v5, v3

    move-object v2, v10

    goto :goto_3e2

    :catch_407
    move-exception v5

    move-object v2, v3

    goto :goto_3e2

    :catch_40a
    move-exception v3

    move-object v5, v3

    goto :goto_3e2

    :catch_40d
    move-exception v5

    move-object v6, v7

    move-object v2, v3

    goto :goto_3e2

    :cond_411
    move-object v10, v3

    move-object v11, v4

    goto/16 :goto_17d

    :cond_415
    move-object v5, v2

    move-object v12, v7

    goto/16 :goto_41

    :cond_419
    move-object/from16 v21, v12

    goto/16 :goto_1a1

    :cond_41d
    move/from16 v12, v18

    move-object/from16 v20, v5

    goto/16 :goto_1c1
.end method

.method static join(Ljava/lang/String;)Z
    .registers 16

    .prologue
    .line 397
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLobby;->available()Z

    move-result v0

    if-nez v0, :cond_8

    const/4 v0, 0x0

    .line 472
    :cond_7
    :goto_7
    return v0

    .line 398
    :cond_8
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLobby;->leave()V

    .line 399
    sget-wide v0, Lfr/testudo/spacecorsair/mod/ModLobby;->gen:J

    const-wide/16 v2, 0x1

    add-long v12, v0, v2

    sput-wide v12, Lfr/testudo/spacecorsair/mod/ModLobby;->gen:J

    .line 400
    const/4 v0, 0x1

    sput-boolean v0, Lfr/testudo/spacecorsair/mod/ModLobby;->busy:Z

    .line 401
    if-nez p0, :cond_3c

    const-string v0, ""

    move-object v8, v0

    .line 402
    :goto_1b
    const/4 v2, 0x0

    .line 403
    const/4 v4, 0x0

    .line 405
    :try_start_1d
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_48

    const-string v0, "The code has 4 characters."

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModLobby;->status:Ljava/lang/String;
    :try_end_2c
    .catch Ljava/lang/Throwable; {:try_start_1d .. :try_end_2c} :catch_395
    .catchall {:try_start_1d .. :try_end_2c} :catchall_3b0

    const/4 v0, 0x0

    .line 474
    const/4 v1, 0x0

    sput-boolean v1, Lfr/testudo/spacecorsair/mod/ModLobby;->busy:Z

    .line 475
    if-eqz v2, :cond_7

    if-eqz v4, :cond_38

    sget-object v1, Lfr/testudo/spacecorsair/mod/ModLobby;->link:Lfr/testudo/spacecorsair/mod/ModNet$Link;

    if-eqz v1, :cond_7

    :cond_38
    invoke-virtual {v2}, Lfr/testudo/spacecorsair/mod/ModNet$Wire;->close()V

    goto :goto_7

    .line 401
    :cond_3c
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    move-object v8, v0

    goto :goto_1b

    .line 406
    :cond_48
    :try_start_48
    const-string v0, "Connecting..."

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModLobby;->status:Ljava/lang/String;

    .line 407
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLobby;->hideIp()Z

    move-result v3

    .line 408
    new-instance v11, Lfr/testudo/spacecorsair/mod/ModNet$Wire;

    const/4 v0, 0x0

    invoke-direct {v11, v0}, Lfr/testudo/spacecorsair/mod/ModNet$Wire;-><init>(I)V
    :try_end_5a
    .catch Ljava/lang/Throwable; {:try_start_48 .. :try_end_5a} :catch_395
    .catchall {:try_start_48 .. :try_end_5a} :catchall_3b0

    .line 409
    if-eqz v3, :cond_11f

    :try_start_5c
    const-string v0, ""

    move-object v1, v0

    .line 410
    :goto_5f
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    invoke-virtual {v0}, Ljava/security/SecureRandom;->nextInt()I

    move-result v14

    .line 411
    const/16 v0, 0x10

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v5, "nick"

    aput-object v5, v2, v0

    const/4 v0, 0x1

    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLan;->myNick()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v0

    const/4 v0, 0x2

    const-string v5, "ctry"

    aput-object v5, v2, v0

    const/4 v0, 0x3

    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLan;->myCountry()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v0

    const/4 v0, 0x4

    const-string v5, "id"

    aput-object v5, v2, v0

    const/4 v0, 0x5

    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModSaveSig;->installId()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v0

    const/4 v0, 0x6

    const-string v5, "ver"

    aput-object v5, v2, v0

    const/4 v0, 0x7

    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLan;->myVersion()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v0

    const/16 v0, 0x8

    const-string v5, "clean"

    aput-object v5, v2, v0

    const/16 v5, 0x9

    .line 412
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModSaveSig;->publicOk()Z

    move-result v0

    if-eqz v0, :cond_126

    const-string v0, "1"

    :goto_ac
    aput-object v0, v2, v5

    const/16 v0, 0xa

    const-string v5, "cands"

    aput-object v5, v2, v0

    const/16 v0, 0xb

    aput-object v1, v2, v0

    const/16 v0, 0xc

    const-string v1, "hide"

    aput-object v1, v2, v0

    const/16 v1, 0xd

    if-eqz v3, :cond_129

    const-string v0, "1"

    :goto_c4
    aput-object v0, v2, v1

    const/16 v0, 0xe

    const-string v1, "sid"

    aput-object v1, v2, v0

    const/16 v0, 0xf

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v2, v0

    .line 413
    const-string v0, "POST"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "/lobby/"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, "/join"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v2}, Lfr/testudo/spacecorsair/mod/ModLobby;->call(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lfr/testudo/spacecorsair/mod/ModLobby$Reply;

    move-result-object v1

    .line 414
    invoke-virtual {v1}, Lfr/testudo/spacecorsair/mod/ModLobby$Reply;->ok()Z

    move-result v0

    if-nez v0, :cond_12c

    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModLobby;->refusal(Lfr/testudo/spacecorsair/mod/ModLobby$Reply;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModLobby;->status:Ljava/lang/String;
    :try_end_10e
    .catch Ljava/lang/Throwable; {:try_start_5c .. :try_end_10e} :catch_3e0
    .catchall {:try_start_5c .. :try_end_10e} :catchall_3c2

    const/4 v0, 0x0

    .line 474
    const/4 v1, 0x0

    sput-boolean v1, Lfr/testudo/spacecorsair/mod/ModLobby;->busy:Z

    .line 475
    if-eqz v11, :cond_7

    if-eqz v4, :cond_11a

    sget-object v1, Lfr/testudo/spacecorsair/mod/ModLobby;->link:Lfr/testudo/spacecorsair/mod/ModNet$Link;

    if-eqz v1, :cond_7

    :cond_11a
    invoke-virtual {v11}, Lfr/testudo/spacecorsair/mod/ModNet$Wire;->close()V

    goto/16 :goto_7

    .line 409
    :cond_11f
    :try_start_11f
    invoke-static {v11}, Lfr/testudo/spacecorsair/mod/ModLobby;->candidates(Lfr/testudo/spacecorsair/mod/ModNet$Wire;)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    goto/16 :goto_5f

    .line 412
    :cond_126
    const-string v0, "0"

    goto :goto_ac

    :cond_129
    const-string v0, "0"

    goto :goto_c4

    .line 415
    :cond_12c
    if-eqz v3, :cond_3f7

    .line 416
    invoke-static {v11, v8, v2}, Lfr/testudo/spacecorsair/mod/ModLobby;->withRelay(Lfr/testudo/spacecorsair/mod/ModNet$Wire;Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 417
    if-nez v2, :cond_158

    .line 418
    sget-boolean v0, Lfr/testudo/spacecorsair/mod/ModLobby;->relayFull:Z

    if-eqz v0, :cond_151

    const-string v0, "Relay full this month; try Local or another network."

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 419
    :goto_13e
    sput-object v0, Lfr/testudo/spacecorsair/mod/ModLobby;->status:Ljava/lang/String;
    :try_end_140
    .catch Ljava/lang/Throwable; {:try_start_11f .. :try_end_140} :catch_3e0
    .catchall {:try_start_11f .. :try_end_140} :catchall_3c2

    .line 420
    const/4 v0, 0x0

    .line 474
    const/4 v1, 0x0

    sput-boolean v1, Lfr/testudo/spacecorsair/mod/ModLobby;->busy:Z

    .line 475
    if-eqz v11, :cond_7

    if-eqz v4, :cond_14c

    sget-object v1, Lfr/testudo/spacecorsair/mod/ModLobby;->link:Lfr/testudo/spacecorsair/mod/ModNet$Link;

    if-eqz v1, :cond_7

    :cond_14c
    invoke-virtual {v11}, Lfr/testudo/spacecorsair/mod/ModNet$Wire;->close()V

    goto/16 :goto_7

    .line 419
    :cond_151
    :try_start_151
    const-string v0, "\"Hide my IP\" needs the relay, and the relay is not available right now."

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_13e

    .line 422
    :cond_158
    const-string v0, "POST"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "/lobby/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/join"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5, v2}, Lfr/testudo/spacecorsair/mod/ModLobby;->call(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lfr/testudo/spacecorsair/mod/ModLobby$Reply;

    move-result-object v0

    .line 423
    invoke-virtual {v0}, Lfr/testudo/spacecorsair/mod/ModLobby$Reply;->ok()Z

    move-result v5

    if-eqz v5, :cond_3f7

    move-object v9, v2

    .line 425
    :goto_17e
    const/4 v1, 0x0

    move-object v10, v0

    :goto_180
    const/4 v0, 0x5

    if-ge v1, v0, :cond_1ea

    sget-wide v6, Lfr/testudo/spacecorsair/mod/ModLobby;->gen:J

    cmp-long v0, v12, v6

    if-nez v0, :cond_1ea

    const-string v0, "cands"

    invoke-virtual {v10, v0}, Lfr/testudo/spacecorsair/mod/ModLobby$Reply;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1ea

    const-string v0, "relay"

    invoke-virtual {v10, v0}, Lfr/testudo/spacecorsair/mod/ModLobby$Reply;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1ea

    .line 426
    const-wide/16 v6, 0xbb8

    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V

    .line 427
    const-string v0, "POST"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "/lobby/"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "/join"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v9}, Lfr/testudo/spacecorsair/mod/ModLobby;->call(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lfr/testudo/spacecorsair/mod/ModLobby$Reply;

    move-result-object v0

    .line 428
    invoke-virtual {v0}, Lfr/testudo/spacecorsair/mod/ModLobby$Reply;->ok()Z

    move-result v2

    if-eqz v2, :cond_1cf

    .line 425
    :goto_1cb
    add-int/lit8 v1, v1, 0x1

    move-object v10, v0

    goto :goto_180

    .line 428
    :cond_1cf
    iget v2, v0, Lfr/testudo/spacecorsair/mod/ModLobby$Reply;->status:I

    if-eqz v2, :cond_3f4

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLobby;->refusal(Lfr/testudo/spacecorsair/mod/ModLobby$Reply;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModLobby;->status:Ljava/lang/String;
    :try_end_1d9
    .catch Ljava/lang/Throwable; {:try_start_151 .. :try_end_1d9} :catch_3e0
    .catchall {:try_start_151 .. :try_end_1d9} :catchall_3c2

    const/4 v0, 0x0

    .line 474
    const/4 v1, 0x0

    sput-boolean v1, Lfr/testudo/spacecorsair/mod/ModLobby;->busy:Z

    .line 475
    if-eqz v11, :cond_7

    if-eqz v4, :cond_1e5

    sget-object v1, Lfr/testudo/spacecorsair/mod/ModLobby;->link:Lfr/testudo/spacecorsair/mod/ModNet$Link;

    if-eqz v1, :cond_7

    :cond_1e5
    invoke-virtual {v11}, Lfr/testudo/spacecorsair/mod/ModNet$Wire;->close()V

    goto/16 :goto_7

    .line 430
    :cond_1ea
    :try_start_1ea
    sget-wide v0, Lfr/testudo/spacecorsair/mod/ModLobby;->gen:J
    :try_end_1ec
    .catch Ljava/lang/Throwable; {:try_start_1ea .. :try_end_1ec} :catch_3e0
    .catchall {:try_start_1ea .. :try_end_1ec} :catchall_3c2

    cmp-long v0, v12, v0

    if-eqz v0, :cond_201

    const/4 v0, 0x0

    .line 474
    const/4 v1, 0x0

    sput-boolean v1, Lfr/testudo/spacecorsair/mod/ModLobby;->busy:Z

    .line 475
    if-eqz v11, :cond_7

    if-eqz v4, :cond_1fc

    sget-object v1, Lfr/testudo/spacecorsair/mod/ModLobby;->link:Lfr/testudo/spacecorsair/mod/ModNet$Link;

    if-eqz v1, :cond_7

    :cond_1fc
    invoke-virtual {v11}, Lfr/testudo/spacecorsair/mod/ModNet$Wire;->close()V

    goto/16 :goto_7

    .line 431
    :cond_201
    :try_start_201
    const-string v0, "Reaching the host..."

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModLobby;->status:Ljava/lang/String;

    .line 432
    new-instance v0, Lfr/testudo/spacecorsair/mod/ModNet$Link;

    invoke-direct {v0, v11, v14}, Lfr/testudo/spacecorsair/mod/ModNet$Link;-><init>(Lfr/testudo/spacecorsair/mod/ModNet$Wire;I)V
    :try_end_20e
    .catch Ljava/lang/Throwable; {:try_start_201 .. :try_end_20e} :catch_3e0
    .catchall {:try_start_201 .. :try_end_20e} :catchall_3c2

    .line 433
    :try_start_20e
    invoke-static {v12, v13, v8, v9, v0}, Lfr/testudo/spacecorsair/mod/ModLobby;->repeatJoin(JLjava/lang/String;[Ljava/lang/String;Lfr/testudo/spacecorsair/mod/ModNet$Link;)V

    .line 435
    const-string v1, "cands"

    invoke-virtual {v10, v1}, Lfr/testudo/spacecorsair/mod/ModLobby$Reply;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModLobby;->addrs(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    const-string v2, "relay"

    invoke-virtual {v10, v2}, Lfr/testudo/spacecorsair/mod/ModLobby$Reply;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModNet;->parse(Ljava/lang/String;)Ljava/net/InetSocketAddress;

    move-result-object v2

    const-wide/16 v4, 0x1770

    if-eqz v3, :cond_24b

    const-wide/32 v6, 0x9c40

    :goto_22c
    invoke-virtual/range {v0 .. v7}, Lfr/testudo/spacecorsair/mod/ModNet$Link;->connect(Ljava/util/List;Ljava/net/InetSocketAddress;ZJJ)Z

    move-result v2

    .line 436
    sget-wide v4, Lfr/testudo/spacecorsair/mod/ModLobby;->gen:J

    cmp-long v1, v12, v4

    if-eqz v1, :cond_24e

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/mod/ModNet$Link;->abandon()V
    :try_end_239
    .catch Ljava/lang/Throwable; {:try_start_20e .. :try_end_239} :catch_3e4
    .catchall {:try_start_20e .. :try_end_239} :catchall_3c5

    const/4 v1, 0x0

    .line 474
    const/4 v2, 0x0

    sput-boolean v2, Lfr/testudo/spacecorsair/mod/ModLobby;->busy:Z

    .line 475
    if-eqz v11, :cond_248

    if-eqz v0, :cond_245

    sget-object v2, Lfr/testudo/spacecorsair/mod/ModLobby;->link:Lfr/testudo/spacecorsair/mod/ModNet$Link;

    if-eq v2, v0, :cond_248

    :cond_245
    invoke-virtual {v11}, Lfr/testudo/spacecorsair/mod/ModNet$Wire;->close()V

    :cond_248
    move v0, v1

    .line 436
    goto/16 :goto_7

    .line 435
    :cond_24b
    const-wide/16 v6, 0x3a98

    goto :goto_22c

    .line 437
    :cond_24e
    if-nez v2, :cond_3f1

    if-nez v3, :cond_3f1

    .line 438
    :try_start_252
    invoke-virtual {v0}, Lfr/testudo/spacecorsair/mod/ModNet$Link;->abandon()V

    .line 439
    const-string v1, "lobby"

    const-string v3, "direct path failed: asking for the relay"

    invoke-static {v1, v3}, Lfr/testudo/spacecorsair/mod/ModDev;->ev(Ljava/lang/String;Ljava/lang/String;)V

    .line 440
    invoke-static {v11, v8, v9}, Lfr/testudo/spacecorsair/mod/ModLobby;->withRelay(Lfr/testudo/spacecorsair/mod/ModNet$Wire;Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 441
    if-eqz v3, :cond_3f1

    .line 443
    const-string v1, "POST"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "/lobby/"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "/join"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v3}, Lfr/testudo/spacecorsair/mod/ModLobby;->call(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lfr/testudo/spacecorsair/mod/ModLobby$Reply;

    move-result-object v1

    .line 444
    invoke-virtual {v1}, Lfr/testudo/spacecorsair/mod/ModLobby$Reply;->ok()Z

    move-result v2

    if-eqz v2, :cond_288

    move-object v10, v1

    .line 445
    :cond_288
    new-instance v9, Lfr/testudo/spacecorsair/mod/ModNet$Link;

    invoke-direct {v9, v11, v14}, Lfr/testudo/spacecorsair/mod/ModNet$Link;-><init>(Lfr/testudo/spacecorsair/mod/ModNet$Wire;I)V
    :try_end_28d
    .catch Ljava/lang/Throwable; {:try_start_252 .. :try_end_28d} :catch_3e4
    .catchall {:try_start_252 .. :try_end_28d} :catchall_3c5

    .line 446
    :try_start_28d
    invoke-static {v12, v13, v8, v3, v9}, Lfr/testudo/spacecorsair/mod/ModLobby;->repeatJoin(JLjava/lang/String;[Ljava/lang/String;Lfr/testudo/spacecorsair/mod/ModNet$Link;)V

    .line 447
    const-string v0, "cands"

    invoke-virtual {v10, v0}, Lfr/testudo/spacecorsair/mod/ModLobby$Reply;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLobby;->addrs(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    const-string v0, "relay"

    invoke-virtual {v10, v0}, Lfr/testudo/spacecorsair/mod/ModLobby$Reply;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModNet;->parse(Ljava/lang/String;)Ljava/net/InetSocketAddress;

    move-result-object v2

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x7530

    move-object v0, v9

    invoke-virtual/range {v0 .. v7}, Lfr/testudo/spacecorsair/mod/ModNet$Link;->connect(Ljava/util/List;Ljava/net/InetSocketAddress;ZJJ)Z

    move-result v0

    .line 448
    sget-wide v2, Lfr/testudo/spacecorsair/mod/ModLobby;->gen:J

    cmp-long v1, v12, v2

    if-eqz v1, :cond_2c8

    invoke-virtual {v9}, Lfr/testudo/spacecorsair/mod/ModNet$Link;->abandon()V
    :try_end_2b7
    .catch Ljava/lang/Throwable; {:try_start_28d .. :try_end_2b7} :catch_3e8
    .catchall {:try_start_28d .. :try_end_2b7} :catchall_3c9

    const/4 v0, 0x0

    .line 474
    const/4 v1, 0x0

    sput-boolean v1, Lfr/testudo/spacecorsair/mod/ModLobby;->busy:Z

    .line 475
    if-eqz v11, :cond_7

    if-eqz v9, :cond_2c3

    sget-object v1, Lfr/testudo/spacecorsair/mod/ModLobby;->link:Lfr/testudo/spacecorsair/mod/ModNet$Link;

    if-eq v1, v9, :cond_7

    :cond_2c3
    invoke-virtual {v11}, Lfr/testudo/spacecorsair/mod/ModNet$Wire;->close()V

    goto/16 :goto_7

    :cond_2c8
    move v2, v0

    move-object v1, v9

    .line 451
    :goto_2ca
    if-nez v2, :cond_320

    .line 452
    :try_start_2cc
    invoke-virtual {v1}, Lfr/testudo/spacecorsair/mod/ModNet$Link;->abandon()V

    .line 453
    const-string v0, "POST"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "/lobby/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/unreach"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "id"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModSaveSig;->installId()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v0, v2, v3}, Lfr/testudo/spacecorsair/mod/ModLobby;->call(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lfr/testudo/spacecorsair/mod/ModLobby$Reply;

    .line 454
    sget-boolean v0, Lfr/testudo/spacecorsair/mod/ModLobby;->relayFull:Z

    if-eqz v0, :cond_319

    const-string v0, "Relay full this month; try Local or another network."

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 455
    :goto_306
    sput-object v0, Lfr/testudo/spacecorsair/mod/ModLobby;->status:Ljava/lang/String;
    :try_end_308
    .catch Ljava/lang/Throwable; {:try_start_2cc .. :try_end_308} :catch_3ec
    .catchall {:try_start_2cc .. :try_end_308} :catchall_3cd

    .line 456
    const/4 v0, 0x0

    .line 474
    const/4 v2, 0x0

    sput-boolean v2, Lfr/testudo/spacecorsair/mod/ModLobby;->busy:Z

    .line 475
    if-eqz v11, :cond_7

    if-eqz v1, :cond_314

    sget-object v2, Lfr/testudo/spacecorsair/mod/ModLobby;->link:Lfr/testudo/spacecorsair/mod/ModNet$Link;

    if-eq v2, v1, :cond_7

    :cond_314
    invoke-virtual {v11}, Lfr/testudo/spacecorsair/mod/ModNet$Wire;->close()V

    goto/16 :goto_7

    .line 455
    :cond_319
    :try_start_319
    const-string v0, "Could not reach the host. Their network or yours blocks direct play and the relay did not help."

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_306

    .line 458
    :cond_320
    invoke-virtual {v1}, Lfr/testudo/spacecorsair/mod/ModNet$Link;->relayed()Z

    move-result v0

    if-nez v0, :cond_332

    iget-object v0, v11, Lfr/testudo/spacecorsair/mod/ModNet$Wire;->turn:Lfr/testudo/spacecorsair/mod/ModNet$Turn;

    if-eqz v0, :cond_332

    iget-object v0, v11, Lfr/testudo/spacecorsair/mod/ModNet$Wire;->turn:Lfr/testudo/spacecorsair/mod/ModNet$Turn;

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/mod/ModNet$Turn;->close()V

    const/4 v0, 0x0

    iput-object v0, v11, Lfr/testudo/spacecorsair/mod/ModNet$Wire;->turn:Lfr/testudo/spacecorsair/mod/ModNet$Turn;

    .line 459
    :cond_332
    sput-object v1, Lfr/testudo/spacecorsair/mod/ModLobby;->link:Lfr/testudo/spacecorsair/mod/ModNet$Link;

    .line 460
    sput-object v8, Lfr/testudo/spacecorsair/mod/ModLobby;->joinedCode:Ljava/lang/String;

    .line 461
    const-string v0, ""

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModLobby;->peerId:Ljava/lang/String;

    .line 462
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLobby;->applySaver()V

    .line 463
    const-string v0, "lobby"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "path found relayed="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Lfr/testudo/spacecorsair/mod/ModNet$Link;->relayed()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lfr/testudo/spacecorsair/mod/ModDev;->ev(Ljava/lang/String;Ljava/lang/String;)V

    .line 464
    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModLan;->joinNet(Ljava/net/Socket;)Z

    move-result v0

    .line 465
    if-nez v0, :cond_37c

    const/4 v0, 0x0

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModLobby;->link:Lfr/testudo/spacecorsair/mod/ModNet$Link;

    invoke-virtual {v1}, Lfr/testudo/spacecorsair/mod/ModNet$Link;->close()V
    :try_end_365
    .catch Ljava/lang/Throwable; {:try_start_319 .. :try_end_365} :catch_3ec
    .catchall {:try_start_319 .. :try_end_365} :catchall_3cd

    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_367
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->status:Ljava/lang/String;

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModLobby;->status:Ljava/lang/String;
    :try_end_36b
    .catch Ljava/lang/Throwable; {:try_start_367 .. :try_end_36b} :catch_3ef
    .catchall {:try_start_367 .. :try_end_36b} :catchall_3d1

    const/4 v0, 0x0

    .line 474
    const/4 v3, 0x0

    sput-boolean v3, Lfr/testudo/spacecorsair/mod/ModLobby;->busy:Z

    .line 475
    if-eqz v2, :cond_7

    if-eqz v1, :cond_377

    sget-object v1, Lfr/testudo/spacecorsair/mod/ModLobby;->link:Lfr/testudo/spacecorsair/mod/ModNet$Link;

    if-eqz v1, :cond_7

    :cond_377
    invoke-virtual {v2}, Lfr/testudo/spacecorsair/mod/ModNet$Wire;->close()V

    goto/16 :goto_7

    .line 466
    :cond_37c
    const/4 v2, 0x0

    .line 467
    :try_start_37d
    const-string v0, ""

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModLobby;->status:Ljava/lang/String;

    .line 468
    invoke-static {v12, v13, v8}, Lfr/testudo/spacecorsair/mod/ModLobby;->startGuestWatch(JLjava/lang/String;)V
    :try_end_384
    .catch Ljava/lang/Throwable; {:try_start_37d .. :try_end_384} :catch_3ef
    .catchall {:try_start_37d .. :try_end_384} :catchall_3d6

    .line 469
    const/4 v0, 0x1

    .line 474
    const/4 v3, 0x0

    sput-boolean v3, Lfr/testudo/spacecorsair/mod/ModLobby;->busy:Z

    .line 475
    if-eqz v2, :cond_7

    if-eqz v1, :cond_390

    sget-object v3, Lfr/testudo/spacecorsair/mod/ModLobby;->link:Lfr/testudo/spacecorsair/mod/ModNet$Link;

    if-eq v3, v1, :cond_7

    :cond_390
    invoke-virtual {v2}, Lfr/testudo/spacecorsair/mod/ModNet$Wire;->close()V

    goto/16 :goto_7

    .line 470
    :catch_395
    move-exception v0

    move-object v1, v4

    .line 471
    :goto_397
    :try_start_397
    const-string v0, "The lobby service did not answer. Check your internet connection."

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModLobby;->status:Ljava/lang/String;
    :try_end_39f
    .catchall {:try_start_397 .. :try_end_39f} :catchall_3db

    .line 472
    const/4 v0, 0x0

    .line 474
    const/4 v3, 0x0

    sput-boolean v3, Lfr/testudo/spacecorsair/mod/ModLobby;->busy:Z

    .line 475
    if-eqz v2, :cond_7

    if-eqz v1, :cond_3ab

    sget-object v3, Lfr/testudo/spacecorsair/mod/ModLobby;->link:Lfr/testudo/spacecorsair/mod/ModNet$Link;

    if-eq v3, v1, :cond_7

    :cond_3ab
    invoke-virtual {v2}, Lfr/testudo/spacecorsair/mod/ModNet$Wire;->close()V

    goto/16 :goto_7

    .line 474
    :catchall_3b0
    move-exception v0

    move-object v3, v0

    move-object v11, v2

    :goto_3b3
    const/4 v0, 0x0

    sput-boolean v0, Lfr/testudo/spacecorsair/mod/ModLobby;->busy:Z

    .line 475
    if-eqz v11, :cond_3c1

    if-eqz v4, :cond_3be

    sget-object v0, Lfr/testudo/spacecorsair/mod/ModLobby;->link:Lfr/testudo/spacecorsair/mod/ModNet$Link;

    if-eq v0, v4, :cond_3c1

    :cond_3be
    invoke-virtual {v11}, Lfr/testudo/spacecorsair/mod/ModNet$Wire;->close()V

    .line 476
    :cond_3c1
    throw v3

    .line 474
    :catchall_3c2
    move-exception v0

    move-object v3, v0

    goto :goto_3b3

    :catchall_3c5
    move-exception v1

    move-object v3, v1

    move-object v4, v0

    goto :goto_3b3

    :catchall_3c9
    move-exception v0

    move-object v3, v0

    move-object v4, v9

    goto :goto_3b3

    :catchall_3cd
    move-exception v0

    move-object v3, v0

    move-object v4, v1

    goto :goto_3b3

    :catchall_3d1
    move-exception v0

    move-object v3, v0

    move-object v4, v1

    move-object v11, v2

    goto :goto_3b3

    :catchall_3d6
    move-exception v0

    move-object v3, v0

    move-object v4, v1

    move-object v11, v2

    goto :goto_3b3

    :catchall_3db
    move-exception v0

    move-object v3, v0

    move-object v4, v1

    move-object v11, v2

    goto :goto_3b3

    .line 470
    :catch_3e0
    move-exception v0

    move-object v1, v4

    move-object v2, v11

    goto :goto_397

    :catch_3e4
    move-exception v1

    move-object v1, v0

    move-object v2, v11

    goto :goto_397

    :catch_3e8
    move-exception v0

    move-object v1, v9

    move-object v2, v11

    goto :goto_397

    :catch_3ec
    move-exception v0

    move-object v2, v11

    goto :goto_397

    :catch_3ef
    move-exception v0

    goto :goto_397

    :cond_3f1
    move-object v1, v0

    goto/16 :goto_2ca

    :cond_3f4
    move-object v0, v10

    goto/16 :goto_1cb

    :cond_3f7
    move-object v0, v1

    move-object v9, v2

    goto/16 :goto_17e
.end method

.method static kicked()V
    .registers 5

    .prologue
    .line 587
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModLobby;->code:Ljava/lang/String;

    sget-object v1, Lfr/testudo/spacecorsair/mod/ModLobby;->token:Ljava/lang/String;

    sget-object v2, Lfr/testudo/spacecorsair/mod/ModLobby;->peerId:Ljava/lang/String;

    .line 588
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x4

    if-ne v3, v4, :cond_13

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_14

    .line 590
    :cond_13
    :goto_13
    return-void

    .line 589
    :cond_14
    new-instance v3, Ljava/lang/Thread;

    new-instance v4, Lfr/testudo/spacecorsair/mod/ModLobby$6;

    invoke-direct {v4, v0, v1, v2}, Lfr/testudo/spacecorsair/mod/ModLobby$6;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "lobby-kick"

    invoke-direct {v3, v4, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    goto :goto_13
.end method

.method static leave()V
    .registers 5

    .prologue
    const/4 v4, 0x0

    .line 606
    sget-wide v0, Lfr/testudo/spacecorsair/mod/ModLobby;->gen:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    sput-wide v0, Lfr/testudo/spacecorsair/mod/ModLobby;->gen:J

    .line 607
    sput-boolean v4, Lfr/testudo/spacecorsair/mod/ModLobby;->hosting:Z

    .line 608
    sput-boolean v4, Lfr/testudo/spacecorsair/mod/ModLobby;->busy:Z

    .line 609
    const-string v0, ""

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModLobby;->code:Ljava/lang/String;

    .line 610
    const-string v0, ""

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModLobby;->joinedCode:Ljava/lang/String;

    .line 611
    const/4 v0, 0x0

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModLobby;->link:Lfr/testudo/spacecorsair/mod/ModNet$Link;

    .line 612
    return-void
.end method

.method private static level()Ljava/lang/String;
    .registers 2

    .prologue
    .line 251
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v1, v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v1, v1, Lfr/testudo/spacecorsair/game/Game;->playerInfo:Lfr/testudo/spacecorsair/business/player/PlayerInfo;

    iget v1, v1, Lfr/testudo/spacecorsair/business/player/PlayerInfo;->level:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1a
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_1a} :catch_1c

    move-result-object v0

    :goto_1b
    return-object v0

    :catch_1c
    move-exception v0

    const-string v0, "1"

    goto :goto_1b
.end method

.method static link()Lfr/testudo/spacecorsair/mod/ModNet$Link;
    .registers 1

    .prologue
    .line 170
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModLobby;->link:Lfr/testudo/spacecorsair/mod/ModNet$Link;

    return-object v0
.end method

.method static linkLine()Ljava/lang/String;
    .registers 6

    .prologue
    .line 176
    sget-object v1, Lfr/testudo/spacecorsair/mod/ModLobby;->link:Lfr/testudo/spacecorsair/mod/ModNet$Link;

    .line 177
    if-eqz v1, :cond_c

    sget-boolean v0, Lfr/testudo/spacecorsair/mod/ModLan;->connected:Z

    if-eqz v0, :cond_c

    sget-boolean v0, Lfr/testudo/spacecorsair/mod/ModLan;->internet:Z

    if-nez v0, :cond_f

    :cond_c
    const-string v0, ""

    .line 179
    :goto_e
    return-object v0

    .line 178
    :cond_f
    iget-object v0, v1, Lfr/testudo/spacecorsair/mod/ModNet$Link;->w:Lfr/testudo/spacecorsair/mod/ModNet$Wire;

    iget-wide v2, v0, Lfr/testudo/spacecorsair/mod/ModNet$Wire;->sentBytes:J

    iget-object v0, v1, Lfr/testudo/spacecorsair/mod/ModNet$Link;->w:Lfr/testudo/spacecorsair/mod/ModNet$Wire;

    iget-wide v4, v0, Lfr/testudo/spacecorsair/mod/ModNet$Wire;->gotBytes:J

    add-long/2addr v2, v4

    .line 179
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lfr/testudo/spacecorsair/mod/ModNet$Link;->relayed()Z

    move-result v0

    if-eqz v0, :cond_b7

    const-string v0, "Relayed"

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_29
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ", "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "ping"

    invoke-static {v4}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, v1, Lfr/testudo/spacecorsair/mod/ModNet$Link;->rttMs:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ms. "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "Data used:"

    .line 180
    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v2, v3}, Lfr/testudo/spacecorsair/mod/ModLobby;->mb(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " MB"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLobby;->onMobileData()Z

    move-result v0

    if-eqz v0, :cond_bf

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ". "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "You are on mobile data."

    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_8c
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 181
    sget-boolean v0, Lfr/testudo/spacecorsair/mod/ModLanSync;->saver:Z

    if-eqz v0, :cond_c2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "Data saver is on."

    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_ad
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_e

    .line 179
    :cond_b7
    const-string v0, "Direct"

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_29

    .line 180
    :cond_bf
    const-string v0, ""

    goto :goto_8c

    .line 181
    :cond_c2
    const-string v0, ""

    goto :goto_ad
.end method

.method static list()Ljava/util/List;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v11, 0x3

    const/4 v10, 0x1

    const/4 v9, 0x4

    const/4 v8, 0x2

    const/4 v7, 0x0

    .line 574
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 575
    const-string v0, "GET"

    const-string v1, "/lobbies"

    new-array v3, v8, [Ljava/lang/String;

    const-string v4, "ver"

    aput-object v4, v3, v7

    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLan;->myVersion()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v10

    invoke-static {v0, v1, v3}, Lfr/testudo/spacecorsair/mod/ModLobby;->call(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lfr/testudo/spacecorsair/mod/ModLobby$Reply;

    move-result-object v0

    .line 576
    invoke-virtual {v0}, Lfr/testudo/spacecorsair/mod/ModLobby$Reply;->ok()Z

    move-result v1

    if-nez v1, :cond_2c

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLobby;->refusal(Lfr/testudo/spacecorsair/mod/ModLobby$Reply;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModLobby;->status:Ljava/lang/String;

    move-object v0, v2

    .line 582
    :goto_2b
    return-object v0

    .line 577
    :cond_2c
    iget-object v0, v0, Lfr/testudo/spacecorsair/mod/ModLobby$Reply;->rows:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_32
    :goto_32
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_ae

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 578
    array-length v1, v0

    const/4 v4, 0x7

    if-lt v1, v4, :cond_32

    aget-object v1, v0, v7

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ne v1, v9, :cond_32

    .line 579
    const/4 v1, 0x7

    new-array v4, v1, [Ljava/lang/String;

    aget-object v1, v0, v7

    invoke-static {v1, v9}, Lfr/testudo/spacecorsair/mod/ModLan;->clean(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v7

    aget-object v1, v0, v10

    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModLanUi;->safeNick(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v10

    const-string v1, "?"

    aget-object v5, v0, v8

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a1

    const-string v1, ""

    :goto_69
    aput-object v1, v4, v8

    .line 580
    const-string v1, "1"

    aget-object v5, v0, v11

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a8

    const-string v1, "1"

    :goto_77
    aput-object v1, v4, v11

    aget-object v1, v0, v9

    const/16 v5, 0x28

    invoke-static {v1, v5}, Lfr/testudo/spacecorsair/mod/ModLan;->clean(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v9

    const/4 v1, 0x5

    const/4 v5, 0x5

    aget-object v5, v0, v5

    invoke-static {v5, v11}, Lfr/testudo/spacecorsair/mod/ModLan;->clean(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v1

    const/4 v1, 0x6

    const-string v5, "2"

    const/4 v6, 0x6

    aget-object v0, v0, v6

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_ab

    const-string v0, "2"

    :goto_9b
    aput-object v0, v4, v1

    .line 579
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_32

    :cond_a1
    aget-object v1, v0, v8

    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModLanUi;->safeCountry(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_69

    .line 580
    :cond_a8
    const-string v1, "0"

    goto :goto_77

    :cond_ab
    const-string v0, "1"

    goto :goto_9b

    :cond_ae
    move-object v0, v2

    .line 582
    goto/16 :goto_2b
.end method

.method static mb(J)Ljava/lang/String;
    .registers 10

    .prologue
    const-wide/16 v6, 0xa

    .line 185
    mul-long v0, p0, v6

    const-wide/32 v2, 0x100000

    div-long/2addr v0, v2

    .line 186
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    div-long v4, v0, v6

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    rem-long/2addr v0, v6

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static onMobileData()Z
    .registers 10

    .prologue
    const/4 v2, 0x1

    const/4 v6, 0x0

    .line 143
    :try_start_2
    invoke-static {}, Ljava/net/NetworkInterface;->getNetworkInterfaces()Ljava/util/Enumeration;

    move-result-object v7

    move v4, v6

    move v5, v6

    .line 144
    :cond_8
    :goto_8
    if-eqz v7, :cond_70

    invoke-interface {v7}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_70

    .line 145
    invoke-interface {v7}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/NetworkInterface;

    .line 146
    invoke-virtual {v0}, Ljava/net/NetworkInterface;->isUp()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-virtual {v0}, Ljava/net/NetworkInterface;->isLoopback()Z

    move-result v1

    if-nez v1, :cond_8

    .line 148
    invoke-virtual {v0}, Ljava/net/NetworkInterface;->getInetAddresses()Ljava/util/Enumeration;

    move-result-object v8

    move v3, v6

    .line 149
    :goto_27
    invoke-interface {v8}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_42

    invoke-interface {v8}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/net/InetAddress;

    invoke-virtual {v1}, Ljava/net/InetAddress;->isLinkLocalAddress()Z

    move-result v9

    if-nez v9, :cond_7a

    invoke-virtual {v1}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    move-result v1

    if-nez v1, :cond_7a

    move v1, v2

    :goto_40
    move v3, v1

    goto :goto_27

    .line 150
    :cond_42
    if-eqz v3, :cond_8

    .line 151
    invoke-virtual {v0}, Ljava/net/NetworkInterface;->getName()Ljava/lang/String;

    move-result-object v0

    .line 152
    const-string v1, "wlan"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_68

    const-string v1, "eth"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_68

    const-string v1, "ap"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_68

    const-string v1, "swlan"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
    :try_end_65
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_65} :catch_77

    move-result v0

    if-eqz v0, :cond_6d

    :cond_68
    move v0, v4

    move v1, v2

    :goto_6a
    move v4, v0

    move v5, v1

    .line 153
    goto :goto_8

    :cond_6d
    move v0, v2

    move v1, v5

    .line 152
    goto :goto_6a

    .line 154
    :cond_70
    if-eqz v4, :cond_75

    if-nez v5, :cond_75

    .line 156
    :goto_74
    return v2

    :cond_75
    move v2, v6

    .line 154
    goto :goto_74

    .line 155
    :catch_77
    move-exception v0

    move v2, v6

    .line 156
    goto :goto_74

    :cond_7a
    move v1, v3

    goto :goto_40
.end method

.method static parse(Ljava/lang/String;I)Lfr/testudo/spacecorsair/mod/ModLobby$Reply;
    .registers 12

    .prologue
    const/16 v9, 0x10

    const/4 v8, 0x0

    const/4 v7, -0x1

    .line 56
    new-instance v1, Lfr/testudo/spacecorsair/mod/ModLobby$Reply;

    invoke-direct {v1}, Lfr/testudo/spacecorsair/mod/ModLobby$Reply;-><init>()V

    .line 57
    iput p1, v1, Lfr/testudo/spacecorsair/mod/ModLobby$Reply;->status:I

    .line 58
    if-nez p0, :cond_f

    move-object v0, v1

    .line 68
    :goto_e
    return-object v0

    .line 59
    :cond_f
    const-string v0, "\n"

    invoke-virtual {p0, v0, v7}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v2

    .line 60
    array-length v0, v2

    if-lez v0, :cond_3f

    aget-object v0, v2, v8

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v9}, Lfr/testudo/spacecorsair/mod/ModLan;->clean(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    :goto_22
    iput-object v0, v1, Lfr/testudo/spacecorsair/mod/ModLobby$Reply;->first:Ljava/lang/String;

    .line 61
    const/4 v0, 0x1

    :goto_25
    array-length v3, v2

    if-ge v0, v3, :cond_7a

    const/16 v3, 0x50

    if-ge v0, v3, :cond_7a

    .line 62
    aget-object v3, v2, v0

    .line 63
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_3c

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    const/16 v5, 0x4b0

    if-le v4, v5, :cond_42

    .line 61
    :cond_3c
    :goto_3c
    add-int/lit8 v0, v0, 0x1

    goto :goto_25

    .line 60
    :cond_3f
    const-string v0, ""

    goto :goto_22

    .line 64
    :cond_42
    const/16 v4, 0x9

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    if-ltz v4, :cond_60

    iget-object v4, v1, Lfr/testudo/spacecorsair/mod/ModLobby$Reply;->rows:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/16 v5, 0x3c

    if-ge v4, v5, :cond_3c

    iget-object v4, v1, Lfr/testudo/spacecorsair/mod/ModLobby$Reply;->rows:Ljava/util/ArrayList;

    const-string v5, "\t"

    invoke-virtual {v3, v5, v7}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3c

    .line 65
    :cond_60
    const/16 v4, 0x3d

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    .line 66
    if-lez v4, :cond_3c

    if-gt v4, v9, :cond_3c

    iget-object v5, v1, Lfr/testudo/spacecorsair/mod/ModLobby$Reply;->f:Ljava/util/HashMap;

    invoke-virtual {v3, v8, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v6, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3c

    :cond_7a
    move-object v0, v1

    .line 68
    goto :goto_e
.end method

.method static peerInstall()Ljava/lang/String;
    .registers 1

    .prologue
    .line 172
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModLobby;->peerId:Ljava/lang/String;

    return-object v0
.end method

.method private static prefs()Landroid/content/SharedPreferences;
    .registers 3

    .prologue
    .line 122
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/Game;->context:Landroid/content/Context;

    const-string v1, "corsair_net"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method static refusal(Lfr/testudo/spacecorsair/mod/ModLobby$Reply;)Ljava/lang/String;
    .registers 4

    .prologue
    .line 558
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModLobby$Reply;->first:Ljava/lang/String;

    .line 559
    iget v1, p0, Lfr/testudo/spacecorsair/mod/ModLobby$Reply;->status:I

    if-nez v1, :cond_d

    const-string v0, "The lobby service did not answer. Check your internet connection."

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 569
    :goto_c
    return-object v0

    .line 560
    :cond_d
    const-string v1, "gone"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1c

    const-string v0, "No game with that code."

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_c

    .line 561
    :cond_1c
    const-string v1, "full"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2b

    const-string v0, "That game is full."

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_c

    .line 562
    :cond_2b
    const-string v1, "version"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_81

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Different game versions. Your friend has"

    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "ver"

    invoke-virtual {p0, v1}, Lfr/testudo/spacecorsair/mod/ModLobby$Reply;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x28

    invoke-static {v1, v2}, Lfr/testudo/spacecorsair/mod/ModLan;->clean(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "you have"

    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLan;->myVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_c

    .line 563
    :cond_81
    const-string v1, "banned"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_91

    const-string v0, "You were removed by several hosts. Public games are locked for 24 hours."

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_c

    .line 564
    :cond_91
    const-string v1, "kicked"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a1

    const-string v0, "The host removed you from this game."

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_c

    .line 565
    :cond_a1
    const-string v1, "save"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b1

    const-string v0, "Your save was changed outside the game. Public games are locked for 24 hours; private codes and local games still work."

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_c

    .line 566
    :cond_b1
    const-string v1, "closed"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c1

    const-string v0, "Public games open in a later version. Private games with a code work now."

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_c

    .line 567
    :cond_c1
    const-string v1, "slow"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d1

    const-string v0, "Too many tries. Wait a few minutes."

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_c

    .line 568
    :cond_d1
    const-string v1, "busy"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e1

    const-string v0, "The lobby service is busy today. Try later, or play a local game."

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_c

    .line 569
    :cond_e1
    const-string v0, "The lobby service refused the request."

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_c
.end method

.method static rejoin()V
    .registers 3

    .prologue
    .line 526
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModLobby;->joinedCode:Ljava/lang/String;

    .line 527
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x4

    if-eq v1, v2, :cond_a

    .line 537
    :goto_9
    return-void

    .line 528
    :cond_a
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lfr/testudo/spacecorsair/mod/ModLobby$5;

    invoke-direct {v2, v0}, Lfr/testudo/spacecorsair/mod/ModLobby$5;-><init>(Ljava/lang/String;)V

    const-string v0, "lobby-rejoin"

    invoke-direct {v1, v2, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 535
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 536
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    goto :goto_9
.end method

.method private static relay(Lfr/testudo/spacecorsair/mod/ModNet$Wire;Ljava/lang/String;Ljava/lang/String;)Lfr/testudo/spacecorsair/mod/ModNet$Turn;
    .registers 13

    .prologue
    const/4 v9, 0x3

    const/4 v7, 0x1

    const/4 v2, 0x0

    const/4 v0, 0x0

    .line 219
    :try_start_4
    const-string v1, "POST"

    const-string v3, "/turn"

    const/4 v4, 0x6

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "code"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    aput-object p1, v4, v5

    const/4 v5, 0x2

    const-string v6, "id"

    aput-object v6, v4, v5

    const/4 v5, 0x3

    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModSaveSig;->installId()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x4

    const-string v6, "token"

    aput-object v6, v4, v5

    const/4 v5, 0x5

    aput-object p2, v4, v5

    invoke-static {v1, v3, v4}, Lfr/testudo/spacecorsair/mod/ModLobby;->call(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lfr/testudo/spacecorsair/mod/ModLobby$Reply;

    move-result-object v4

    .line 220
    const-string v1, "full"

    iget-object v3, v4, Lfr/testudo/spacecorsair/mod/ModLobby$Reply;->first:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_39

    const/4 v1, 0x1

    sput-boolean v1, Lfr/testudo/spacecorsair/mod/ModLobby;->relayFull:Z

    .line 236
    :cond_38
    :goto_38
    return-object v0

    .line 221
    :cond_39
    invoke-virtual {v4}, Lfr/testudo/spacecorsair/mod/ModLobby$Reply;->ok()Z

    move-result v1

    if-eqz v1, :cond_38

    .line 222
    const-string v1, "host"

    invoke-virtual {v4, v1}, Lfr/testudo/spacecorsair/mod/ModLobby$Reply;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move v1, v2

    .line 223
    :goto_46
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v1, v5, :cond_6b

    invoke-virtual {v3, v1}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x61

    if-lt v5, v6, :cond_58

    const/16 v6, 0x7a

    if-le v5, v6, :cond_68

    :cond_58
    const/16 v6, 0x30

    if-lt v5, v6, :cond_60

    const/16 v6, 0x39

    if-le v5, v6, :cond_68

    :cond_60
    const/16 v6, 0x2e

    if-eq v5, v6, :cond_68

    const/16 v6, 0x2d

    if-ne v5, v6, :cond_38

    :cond_68
    add-int/lit8 v1, v1, 0x1

    goto :goto_46

    .line 224
    :cond_6b
    const-string v1, "port"

    invoke-virtual {v4, v1}, Lfr/testudo/spacecorsair/mod/ModLobby$Reply;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 225
    const-string v1, ".metered.ca"

    invoke-virtual {v3, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_38

    if-lt v5, v7, :cond_38

    const v1, 0xffff

    if-gt v5, v1, :cond_38

    .line 227
    invoke-static {v3}, Ljava/net/InetAddress;->getAllByName(Ljava/lang/String;)[Ljava/net/InetAddress;

    move-result-object v6

    array-length v7, v6

    move v3, v2

    :goto_8a
    if-ge v3, v7, :cond_c2

    aget-object v1, v6, v3

    instance-of v8, v1, Ljava/net/Inet4Address;

    if-eqz v8, :cond_b2

    move-object v3, v1

    .line 228
    :goto_93
    if-eqz v3, :cond_38

    .line 229
    new-instance v1, Lfr/testudo/spacecorsair/mod/ModNet$Turn;

    new-instance v6, Ljava/net/InetSocketAddress;

    invoke-direct {v6, v3, v5}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    const-string v3, "user"

    invoke-virtual {v4, v3}, Lfr/testudo/spacecorsair/mod/ModLobby$Reply;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v5, "pass"

    invoke-virtual {v4, v5}, Lfr/testudo/spacecorsair/mod/ModLobby$Reply;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, p0, v6, v3, v4}, Lfr/testudo/spacecorsair/mod/ModNet$Turn;-><init>(Lfr/testudo/spacecorsair/mod/ModNet$Wire;Ljava/net/InetSocketAddress;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_ab
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_ab} :catch_bf

    .line 230
    :goto_ab
    if-ge v2, v9, :cond_38

    .line 231
    :try_start_ad
    invoke-virtual {v1}, Lfr/testudo/spacecorsair/mod/ModNet$Turn;->allocate()V
    :try_end_b0
    .catch Ljava/io/IOException; {:try_start_ad .. :try_end_b0} :catch_b6
    .catch Ljava/lang/Throwable; {:try_start_ad .. :try_end_b0} :catch_bf

    move-object v0, v1

    goto :goto_38

    .line 227
    :cond_b2
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_8a

    .line 231
    :catch_b6
    move-exception v3

    const-wide/16 v4, 0x5dc

    :try_start_b9
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_bc
    .catch Ljava/lang/Throwable; {:try_start_b9 .. :try_end_bc} :catch_bf

    .line 230
    add-int/lit8 v2, v2, 0x1

    goto :goto_ab

    .line 233
    :catch_bf
    move-exception v1

    goto/16 :goto_38

    :cond_c2
    move-object v3, v0

    goto :goto_93
.end method

.method private static repeatJoin(JLjava/lang/String;[Ljava/lang/String;Lfr/testudo/spacecorsair/mod/ModNet$Link;)V
    .registers 13

    .prologue
    .line 491
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lfr/testudo/spacecorsair/mod/ModLobby$3;

    move-wide v2, p0

    move-object v4, p4

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v1 .. v6}, Lfr/testudo/spacecorsair/mod/ModLobby$3;-><init>(JLfr/testudo/spacecorsair/mod/ModNet$Link;Ljava/lang/String;[Ljava/lang/String;)V

    const-string v2, "lobby-rejoin"

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 503
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 504
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 505
    return-void
.end method

.method static report(Ljava/lang/String;Ljava/lang/Runnable;)V
    .registers 5

    .prologue
    .line 594
    sget-boolean v0, Lfr/testudo/spacecorsair/mod/ModLobby;->hosting:Z

    if-eqz v0, :cond_16

    sget-object v0, Lfr/testudo/spacecorsair/mod/ModLobby;->code:Ljava/lang/String;

    .line 595
    :goto_6
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lfr/testudo/spacecorsair/mod/ModLobby$7;

    invoke-direct {v2, v0, p0, p1}, Lfr/testudo/spacecorsair/mod/ModLobby$7;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;)V

    const-string v0, "lobby-report"

    invoke-direct {v1, v2, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 601
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 602
    return-void

    .line 594
    :cond_16
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModLobby;->joinedCode:Ljava/lang/String;

    goto :goto_6
.end method

.method private static reportRelay()V
    .registers 8

    .prologue
    .line 541
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModLobby;->link:Lfr/testudo/spacecorsair/mod/ModNet$Link;

    .line 542
    if-nez v0, :cond_5

    .line 555
    :cond_4
    :goto_4
    return-void

    .line 543
    :cond_5
    iget-object v1, v0, Lfr/testudo/spacecorsair/mod/ModNet$Link;->w:Lfr/testudo/spacecorsair/mod/ModNet$Wire;

    iget-object v1, v1, Lfr/testudo/spacecorsair/mod/ModNet$Wire;->turn:Lfr/testudo/spacecorsair/mod/ModNet$Turn;

    .line 544
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 545
    if-eqz v1, :cond_36

    sget-wide v4, Lfr/testudo/spacecorsair/mod/ModLobby;->relayReported:J

    sub-long v4, v2, v4

    const-wide/32 v6, 0xea60

    cmp-long v4, v4, v6

    if-lez v4, :cond_36

    sput-wide v2, Lfr/testudo/spacecorsair/mod/ModLobby;->relayReported:J

    const-string v2, "lobby"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "relayed bytes "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, v1, Lfr/testudo/spacecorsair/mod/ModNet$Turn;->bytes:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lfr/testudo/spacecorsair/mod/ModDev;->ev(Ljava/lang/String;Ljava/lang/String;)V

    .line 546
    :cond_36
    if-eqz v1, :cond_42

    sget-object v2, Lfr/testudo/spacecorsair/mod/ModLobby;->budgetLink:Lfr/testudo/spacecorsair/mod/ModNet$Link;

    if-eq v0, v2, :cond_42

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModLobby;->budgetLink:Lfr/testudo/spacecorsair/mod/ModNet$Link;

    iget-wide v2, v1, Lfr/testudo/spacecorsair/mod/ModNet$Turn;->bytes:J

    sput-wide v2, Lfr/testudo/spacecorsair/mod/ModLobby;->budgetBase:J

    .line 547
    :cond_42
    if-eqz v1, :cond_4

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/mod/ModNet$Link;->relayed()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-wide v2, v1, Lfr/testudo/spacecorsair/mod/ModNet$Turn;->bytes:J

    sget-wide v4, Lfr/testudo/spacecorsair/mod/ModLobby;->budgetBase:J

    sub-long/2addr v2, v4

    const-wide/32 v4, 0x9600000

    cmp-long v0, v2, v4

    if-lez v0, :cond_4

    sget-boolean v0, Lfr/testudo/spacecorsair/mod/ModLan;->connected:Z

    if-eqz v0, :cond_4

    sget-boolean v0, Lfr/testudo/spacecorsair/mod/ModLan;->internet:Z

    if-eqz v0, :cond_4

    .line 549
    const-string v0, "lobby"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "relay session budget used: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v4, v1, Lfr/testudo/spacecorsair/mod/ModNet$Turn;->bytes:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lfr/testudo/spacecorsair/mod/ModDev;->ev(Ljava/lang/String;Ljava/lang/String;)V

    .line 550
    const-string v0, "This session used up its share of the free relay. Direct connections and local games still work."

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 551
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLan;->stop()V

    .line 552
    sput-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->status:Ljava/lang/String;

    .line 553
    sput-object v0, Lfr/testudo/spacecorsair/mod/ModLobby;->status:Ljava/lang/String;

    goto/16 :goto_4
.end method

.method static saverPref()Z
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 129
    :try_start_1
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLobby;->prefs()Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "saver"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_b} :catch_d

    move-result v0

    :goto_c
    return v0

    :catch_d
    move-exception v1

    goto :goto_c
.end method

.method private static sector()Ljava/lang/String;
    .registers 1

    .prologue
    .line 247
    :try_start_0
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/Game;->currentLevel:Lfr/testudo/spacecorsair/game/levels/Level;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/levels/Level;->id:Lfr/testudo/spacecorsair/game/levels/LevelId;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/levels/LevelId;->levelName:Ljava/lang/String;
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_a} :catch_b

    :goto_a
    return-object v0

    :catch_b
    move-exception v0

    const-string v0, ""

    goto :goto_a
.end method

.method static setHideIp(Z)V
    .registers 3

    .prologue
    .line 127
    :try_start_0
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLobby;->prefs()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "hide"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_11
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_11} :catch_12

    :goto_11
    return-void

    :catch_12
    move-exception v0

    goto :goto_11
.end method

.method static setSaver(Z)V
    .registers 3

    .prologue
    .line 131
    :try_start_0
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLobby;->prefs()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "saver"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_11
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_11} :catch_15

    :goto_11
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLobby;->applySaver()V

    return-void

    :catch_15
    move-exception v0

    goto :goto_11
.end method

.method private static startGuestWatch(JLjava/lang/String;)V
    .registers 7

    .prologue
    .line 509
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lfr/testudo/spacecorsair/mod/ModLobby$4;

    invoke-direct {v1, p0, p1}, Lfr/testudo/spacecorsair/mod/ModLobby$4;-><init>(J)V

    const-string v2, "lobby-guest"

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 520
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 521
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 522
    return-void
.end method

.method private static stillHost(J)Z
    .registers 6

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 272
    sget-wide v2, Lfr/testudo/spacecorsair/mod/ModLobby;->gen:J

    cmp-long v2, p0, v2

    if-eqz v2, :cond_9

    .line 275
    :goto_8
    return v1

    .line 273
    :cond_9
    sget-boolean v2, Lfr/testudo/spacecorsair/mod/ModLan;->internet:Z

    if-eqz v2, :cond_13

    sget v2, Lfr/testudo/spacecorsair/mod/ModLan;->role:I

    if-ne v2, v0, :cond_13

    move v1, v0

    goto :goto_8

    .line 274
    :cond_13
    const-wide/16 v2, 0x190

    :try_start_15
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_18
    .catch Ljava/lang/InterruptedException; {:try_start_15 .. :try_end_18} :catch_2a

    .line 275
    sget-wide v2, Lfr/testudo/spacecorsair/mod/ModLobby;->gen:J

    cmp-long v2, p0, v2

    if-nez v2, :cond_28

    sget-boolean v2, Lfr/testudo/spacecorsair/mod/ModLan;->internet:Z

    if-eqz v2, :cond_28

    sget v2, Lfr/testudo/spacecorsair/mod/ModLan;->role:I

    if-ne v2, v0, :cond_28

    :goto_26
    move v1, v0

    goto :goto_8

    :cond_28
    move v0, v1

    goto :goto_26

    .line 274
    :catch_2a
    move-exception v0

    goto :goto_8
.end method

.method private static withRelay(Lfr/testudo/spacecorsair/mod/ModNet$Wire;Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;
    .registers 7

    .prologue
    const/4 v3, 0x0

    .line 481
    const-string v0, ""

    invoke-static {p0, p1, v0}, Lfr/testudo/spacecorsair/mod/ModLobby;->relay(Lfr/testudo/spacecorsair/mod/ModNet$Wire;Ljava/lang/String;Ljava/lang/String;)Lfr/testudo/spacecorsair/mod/ModNet$Turn;

    move-result-object v1

    .line 482
    if-eqz v1, :cond_d

    iget-object v0, v1, Lfr/testudo/spacecorsair/mod/ModNet$Turn;->relayed:Ljava/net/InetSocketAddress;

    if-nez v0, :cond_f

    :cond_d
    const/4 v0, 0x0

    .line 486
    :goto_e
    return-object v0

    .line 483
    :cond_f
    array-length v0, p2

    add-int/lit8 v0, v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    .line 484
    array-length v2, p2

    invoke-static {p2, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 485
    array-length v2, p2

    const-string v3, "relay"

    aput-object v3, v0, v2

    array-length v2, p2

    add-int/lit8 v2, v2, 0x1

    iget-object v1, v1, Lfr/testudo/spacecorsair/mod/ModNet$Turn;->relayed:Ljava/net/InetSocketAddress;

    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModNet;->show(Ljava/net/InetSocketAddress;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v2

    goto :goto_e
.end method
