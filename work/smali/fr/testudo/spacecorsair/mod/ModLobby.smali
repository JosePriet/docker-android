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

.field static final SERVICE:Ljava/lang/String; = "https://sc-rendezvous.spacecs-coop.workers.dev"

.field static final STUN:[[Ljava/lang/String;

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

    .line 158
    const-string v0, ""

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModLobby;->code:Ljava/lang/String;

    const-string v0, ""

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModLobby;->status:Ljava/lang/String;

    .line 160
    const-string v0, ""

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModLobby;->token:Ljava/lang/String;

    .line 164
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

    .line 358
    .line 360
    const/4 v0, 0x2

    :try_start_2
    aget-object v0, p3, v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 361
    const/4 v0, 0x3

    aget-object v0, p3, v0

    const/16 v3, 0x20

    invoke-static {v0, v3}, Lfr/testudo/spacecorsair/mod/ModLan;->clean(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v8

    .line 362
    new-instance v0, Lfr/testudo/spacecorsair/mod/ModNet$Link;

    invoke-direct {v0, p2, v2}, Lfr/testudo/spacecorsair/mod/ModNet$Link;-><init>(Lfr/testudo/spacecorsair/mod/ModNet$Wire;I)V
    :try_end_16
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_16} :catch_91

    .line 363
    :try_start_16
    const-string v1, "A player is connecting..."

    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lfr/testudo/spacecorsair/mod/ModLobby;->status:Ljava/lang/String;

    .line 364
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

    .line 365
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

    .line 377
    :cond_4e
    :goto_4e
    return-void

    .line 366
    :cond_4f
    sput-object v8, Lfr/testudo/spacecorsair/mod/ModLobby;->peerId:Ljava/lang/String;

    .line 367
    sput-object v0, Lfr/testudo/spacecorsair/mod/ModLobby;->link:Lfr/testudo/spacecorsair/mod/ModNet$Link;

    .line 368
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLobby;->applySaver()V

    .line 369
    invoke-static {v0, v8}, Lfr/testudo/spacecorsair/mod/ModLan;->acceptNet(Ljava/net/Socket;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_7c

    .line 370
    const/4 v1, 0x0

    sput-object v1, Lfr/testudo/spacecorsair/mod/ModLobby;->link:Lfr/testudo/spacecorsair/mod/ModNet$Link;

    .line 371
    invoke-virtual {v0}, Lfr/testudo/spacecorsair/mod/ModNet$Link;->close()V

    .line 373
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

    .line 374
    :catch_75
    move-exception v1

    .line 375
    :goto_76
    if-eqz v0, :cond_4e

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/mod/ModNet$Link;->abandon()V

    goto :goto_4e

    .line 372
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

    .line 374
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
    .line 204
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 205
    if-nez p0, :cond_8

    .line 210
    :cond_7
    return-object v0

    .line 206
    :cond_8
    const-string v1, ","

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    array-length v3, v2

    const/4 v1, 0x0

    :goto_10
    if-ge v1, v3, :cond_7

    aget-object v4, v2, v1

    .line 207
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lfr/testudo/spacecorsair/mod/ModNet;->parse(Ljava/lang/String;)Ljava/net/InetSocketAddress;

    move-result-object v4

    .line 208
    if-eqz v4, :cond_29

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/16 v6, 0x18

    if-ge v5, v6, :cond_29

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 206
    :cond_29
    add-int/lit8 v1, v1, 0x1

    goto :goto_10
.end method

.method static applySaver()V
    .registers 2

    .prologue
    .line 132
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModLobby;->link:Lfr/testudo/spacecorsair/mod/ModNet$Link;

    .line 133
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

    .line 134
    return-void

    .line 133
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
    .line 82
    const/4 v1, 0x0

    .line 84
    :try_start_1
    invoke-static {p2}, Lfr/testudo/spacecorsair/mod/ModLobby;->form([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 85
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

    .line 86
    invoke-virtual {v3}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;
    :try_end_48
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_48} :catch_e5
    .catchall {:try_start_1 .. :try_end_48} :catchall_d4

    .line 87
    const/16 v1, 0x1770

    :try_start_4a
    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 88
    const/16 v1, 0x1770

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 89
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    .line 90
    invoke-virtual {v0, p0}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 91
    const-string v1, "POST"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_80

    .line 92
    const-string v1, "UTF-8"

    invoke-virtual {v2, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    .line 93
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 94
    const-string v2, "Content-Type"

    const-string v3, "application/x-www-form-urlencoded"

    invoke-virtual {v0, v2, v3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    array-length v2, v1

    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setFixedLengthStreamingMode(I)V

    .line 96
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    .line 97
    invoke-virtual {v2, v1}, Ljava/io/OutputStream;->write([B)V

    .line 98
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V

    .line 100
    :cond_80
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v2

    .line 101
    const/16 v1, 0x190

    if-lt v2, v1, :cond_bb

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v1

    .line 102
    :goto_8c
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 103
    if-eqz v1, :cond_c3

    .line 104
    const/16 v4, 0x1000

    new-array v4, v4, [B

    .line 106
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

    .line 110
    :catch_aa
    move-exception v1

    move-object v1, v0

    .line 111
    :goto_ac
    :try_start_ac
    new-instance v0, Lfr/testudo/spacecorsair/mod/ModLobby$Reply;

    invoke-direct {v0}, Lfr/testudo/spacecorsair/mod/ModLobby$Reply;-><init>()V
    :try_end_b1
    .catchall {:try_start_ac .. :try_end_b1} :catchall_e1

    .line 113
    if-eqz v1, :cond_b6

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 111
    :cond_b6
    :goto_b6
    return-object v0

    .line 85
    :cond_b7
    :try_start_b7
    const-string v0, ""
    :try_end_b9
    .catch Ljava/lang/Throwable; {:try_start_b7 .. :try_end_b9} :catch_e5
    .catchall {:try_start_b7 .. :try_end_b9} :catchall_d4

    goto/16 :goto_37

    .line 101
    :cond_bb
    :try_start_bb
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    goto :goto_8c

    .line 107
    :cond_c0
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 109
    :cond_c3
    const-string v1, "UTF-8"

    invoke-virtual {v3, v1}, Ljava/io/ByteArrayOutputStream;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v2}, Lfr/testudo/spacecorsair/mod/ModLobby;->parse(Ljava/lang/String;I)Lfr/testudo/spacecorsair/mod/ModLobby$Reply;
    :try_end_cc
    .catch Ljava/lang/Throwable; {:try_start_bb .. :try_end_cc} :catch_aa
    .catchall {:try_start_bb .. :try_end_cc} :catchall_dd

    move-result-object v1

    .line 113
    if-eqz v0, :cond_d2

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_d2
    move-object v0, v1

    .line 109
    goto :goto_b6

    .line 113
    :catchall_d4
    move-exception v0

    move-object v2, v0

    move-object v3, v1

    :goto_d7
    if-eqz v3, :cond_dc

    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 114
    :cond_dc
    throw v2

    .line 113
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

    .line 110
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

    .line 188
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 189
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 190
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

    .line 191
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

    .line 192
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

    .line 193
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

    .line 194
    invoke-virtual {v4}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v1

    invoke-virtual {v5}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v5

    invoke-static {v1, v5}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 195
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

    .line 197
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

    .line 198
    :cond_d1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 199
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

    .line 200
    :cond_f5
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static varargs form([Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    .prologue
    .line 69
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 71
    const/4 v0, 0x0

    :goto_6
    add-int/lit8 v2, v0, 0x1

    :try_start_8
    array-length v3, p0

    if-ge v2, v3, :cond_3a

    .line 72
    add-int/lit8 v2, v0, 0x1

    aget-object v2, p0, v2

    if-nez v2, :cond_14

    .line 71
    :goto_11
    add-int/lit8 v0, v0, 0x2

    goto :goto_6

    .line 73
    :cond_14
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-lez v2, :cond_1f

    const/16 v2, 0x26

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 74
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

    .line 76
    :catch_39
    move-exception v0

    .line 77
    :cond_3a
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static hideIp()Z
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 122
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
    .registers 6

    .prologue
    const/4 v4, 0x1

    .line 247
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLobby;->available()Z

    move-result v0

    if-nez v0, :cond_8

    .line 259
    :goto_7
    return-void

    .line 248
    :cond_8
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLobby;->leave()V

    .line 249
    sget-wide v0, Lfr/testudo/spacecorsair/mod/ModLobby;->gen:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    sput-wide v0, Lfr/testudo/spacecorsair/mod/ModLobby;->gen:J

    .line 250
    sput-boolean v4, Lfr/testudo/spacecorsair/mod/ModLobby;->hosting:Z

    .line 251
    sput-boolean p0, Lfr/testudo/spacecorsair/mod/ModLobby;->pub:Z

    .line 252
    sput-boolean v4, Lfr/testudo/spacecorsair/mod/ModLobby;->busy:Z

    .line 253
    const-string v2, ""

    sput-object v2, Lfr/testudo/spacecorsair/mod/ModLobby;->code:Ljava/lang/String;

    .line 254
    const-string v2, "Opening the game..."

    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lfr/testudo/spacecorsair/mod/ModLobby;->status:Ljava/lang/String;

    .line 255
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLan;->hostNet()V

    .line 256
    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lfr/testudo/spacecorsair/mod/ModLobby$1;

    invoke-direct {v3, v0, v1}, Lfr/testudo/spacecorsair/mod/ModLobby$1;-><init>(J)V

    const-string v0, "lobby-host"

    invoke-direct {v2, v3, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 257
    invoke-virtual {v2, v4}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 258
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    goto :goto_7
.end method

.method private static hostLoop(J)V
    .registers 24

    .prologue
    .line 269
    const-string v4, ""

    const-string v3, ""

    .line 270
    const/4 v6, 0x0

    .line 271
    const/4 v7, 0x0

    .line 272
    const-string v2, ""

    .line 273
    new-instance v18, Ljava/util/HashSet;

    invoke-direct/range {v18 .. v18}, Ljava/util/HashSet;-><init>()V

    .line 274
    const/4 v5, 0x1

    new-array v9, v5, [Z

    const/4 v5, 0x0

    const/4 v8, 0x0

    aput-boolean v8, v9, v5

    .line 275
    const/4 v8, 0x0

    .line 276
    const/4 v5, 0x0

    move v13, v5

    move v14, v8

    .line 278
    :goto_18
    :try_start_18
    invoke-static/range {p0 .. p1}, Lfr/testudo/spacecorsair/mod/ModLobby;->stillHost(J)Z

    move-result v5

    if-eqz v5, :cond_314

    .line 279
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLobby;->hideIp()Z

    move-result v8

    .line 280
    if-eqz v6, :cond_28

    iget-boolean v5, v6, Lfr/testudo/spacecorsair/mod/ModNet$Wire;->closed:Z

    if-eqz v5, :cond_3e7

    .line 281
    :cond_28
    new-instance v7, Lfr/testudo/spacecorsair/mod/ModNet$Wire;

    const/4 v2, 0x0

    invoke-direct {v7, v2}, Lfr/testudo/spacecorsair/mod/ModNet$Wire;-><init>(I)V
    :try_end_2e
    .catch Ljava/lang/Throwable; {:try_start_18 .. :try_end_2e} :catch_3d9

    .line 282
    :try_start_2e
    sput-object v7, Lfr/testudo/spacecorsair/mod/ModLobby;->wire:Lfr/testudo/spacecorsair/mod/ModNet$Wire;

    .line 283
    const/4 v10, 0x0

    .line 284
    if-eqz v8, :cond_119

    const-string v2, ""
    :try_end_35
    .catch Ljava/lang/Throwable; {:try_start_2e .. :try_end_35} :catch_3df

    :goto_35
    move-object v5, v2

    move-object v12, v10

    move-object v6, v7

    .line 286
    :goto_38
    :try_start_38
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_3e3

    .line 287
    const-string v7, "POST"

    const-string v10, "/lobby"

    const/16 v2, 0x16

    new-array v11, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v15, "nick"

    aput-object v15, v11, v2

    const/4 v2, 0x1

    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLan;->myNick()Ljava/lang/String;

    move-result-object v15

    aput-object v15, v11, v2

    const/4 v2, 0x2

    const-string v15, "ctry"

    aput-object v15, v11, v2

    const/4 v2, 0x3

    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLan;->myCountry()Ljava/lang/String;

    move-result-object v15

    aput-object v15, v11, v2

    const/4 v2, 0x4

    const-string v15, "id"

    aput-object v15, v11, v2

    const/4 v2, 0x5

    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModSaveSig;->installId()Ljava/lang/String;

    move-result-object v15

    aput-object v15, v11, v2

    const/4 v2, 0x6

    const-string v15, "ver"

    aput-object v15, v11, v2

    const/4 v2, 0x7

    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLan;->myVersion()Ljava/lang/String;

    move-result-object v15

    aput-object v15, v11, v2

    const/16 v2, 0x8

    const-string v15, "pub"

    aput-object v15, v11, v2

    const/16 v15, 0x9

    .line 288
    sget-boolean v2, Lfr/testudo/spacecorsair/mod/ModLobby;->pub:Z

    if-eqz v2, :cond_11f

    const-string v2, "1"

    :goto_84
    aput-object v2, v11, v15

    const/16 v2, 0xa

    const-string v15, "clean"

    aput-object v15, v11, v2

    const/16 v15, 0xb

    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModSaveSig;->publicOk()Z

    move-result v2

    if-eqz v2, :cond_123

    const-string v2, "1"

    :goto_96
    aput-object v2, v11, v15

    const/16 v2, 0xc

    const-string v15, "pvp"

    aput-object v15, v11, v2

    const/16 v15, 0xd

    sget-boolean v2, Lfr/testudo/spacecorsair/mod/ModLan;->pvpRoom:Z

    if-eqz v2, :cond_127

    const-string v2, "1"

    :goto_a6
    aput-object v2, v11, v15

    const/16 v2, 0xe

    const-string v15, "sector"

    aput-object v15, v11, v2

    const/16 v2, 0xf

    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLobby;->sector()Ljava/lang/String;

    move-result-object v15

    aput-object v15, v11, v2

    const/16 v2, 0x10

    const-string v15, "level"

    aput-object v15, v11, v2

    const/16 v2, 0x11

    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLobby;->level()Ljava/lang/String;

    move-result-object v15

    aput-object v15, v11, v2

    const/16 v2, 0x12

    const-string v15, "cands"

    aput-object v15, v11, v2

    const/16 v2, 0x13

    aput-object v5, v11, v2

    const/16 v2, 0x14

    const-string v15, "hide"

    aput-object v15, v11, v2

    const/16 v15, 0x15

    .line 289
    if-eqz v8, :cond_12b

    const-string v2, "1"

    :goto_da
    aput-object v2, v11, v15

    .line 287
    invoke-static {v7, v10, v11}, Lfr/testudo/spacecorsair/mod/ModLobby;->call(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lfr/testudo/spacecorsair/mod/ModLobby$Reply;

    move-result-object v2

    .line 290
    invoke-virtual {v2}, Lfr/testudo/spacecorsair/mod/ModLobby$Reply;->ok()Z

    move-result v7

    if-eqz v7, :cond_f3

    const-string v7, "code"

    invoke-virtual {v2, v7}, Lfr/testudo/spacecorsair/mod/ModLobby$Reply;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    const/4 v10, 0x4

    if-eq v7, v10, :cond_12e

    .line 291
    :cond_f3
    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModLobby;->refusal(Lfr/testudo/spacecorsair/mod/ModLobby$Reply;)Ljava/lang/String;

    move-result-object v7

    sput-object v7, Lfr/testudo/spacecorsair/mod/ModLobby;->status:Ljava/lang/String;

    .line 292
    const/4 v7, 0x0

    sput-boolean v7, Lfr/testudo/spacecorsair/mod/ModLobby;->busy:Z

    .line 293
    iget v7, v2, Lfr/testudo/spacecorsair/mod/ModLobby$Reply;->status:I

    if-eqz v7, :cond_110

    iget v7, v2, Lfr/testudo/spacecorsair/mod/ModLobby$Reply;->status:I

    const/16 v8, 0x1f4

    if-ge v7, v8, :cond_110

    const-string v7, "busy"

    iget-object v2, v2, Lfr/testudo/spacecorsair/mod/ModLobby$Reply;->first:Ljava/lang/String;

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_314

    :cond_110
    const-wide/16 v10, 0x1388

    invoke-static {v10, v11}, Ljava/lang/Thread;->sleep(J)V
    :try_end_115
    .catch Ljava/lang/Throwable; {:try_start_38 .. :try_end_115} :catch_3d9

    move-object v2, v5

    move-object v7, v12

    goto/16 :goto_18

    .line 284
    :cond_119
    :try_start_119
    invoke-static {v7}, Lfr/testudo/spacecorsair/mod/ModLobby;->candidates(Lfr/testudo/spacecorsair/mod/ModNet$Wire;)Ljava/lang/String;
    :try_end_11c
    .catch Ljava/lang/Throwable; {:try_start_119 .. :try_end_11c} :catch_3df

    move-result-object v2

    goto/16 :goto_35

    .line 288
    :cond_11f
    :try_start_11f
    const-string v2, "0"

    goto/16 :goto_84

    :cond_123
    const-string v2, "0"

    goto/16 :goto_96

    :cond_127
    const-string v2, "0"

    goto/16 :goto_a6

    .line 289
    :cond_12b
    const-string v2, "0"

    goto :goto_da

    .line 296
    :cond_12e
    const-string v7, "code"

    invoke-virtual {v2, v7}, Lfr/testudo/spacecorsair/mod/ModLobby$Reply;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const/4 v10, 0x4

    invoke-static {v7, v10}, Lfr/testudo/spacecorsair/mod/ModLan;->clean(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    .line 297
    const-string v7, "token"

    invoke-virtual {v2, v7}, Lfr/testudo/spacecorsair/mod/ModLobby$Reply;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/16 v7, 0x40

    invoke-static {v2, v7}, Lfr/testudo/spacecorsair/mod/ModLan;->clean(Ljava/lang/String;I)Ljava/lang/String;
    :try_end_144
    .catch Ljava/lang/Throwable; {:try_start_11f .. :try_end_144} :catch_3d9

    move-result-object v2

    .line 298
    :try_start_145
    sput-object v4, Lfr/testudo/spacecorsair/mod/ModLobby;->code:Ljava/lang/String;

    .line 299
    sput-object v2, Lfr/testudo/spacecorsair/mod/ModLobby;->token:Ljava/lang/String;

    .line 300
    const/4 v3, 0x0

    sput-boolean v3, Lfr/testudo/spacecorsair/mod/ModLobby;->busy:Z

    .line 301
    const-string v3, "Waiting for a player to join..."

    invoke-static {v3}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lfr/testudo/spacecorsair/mod/ModLobby;->status:Ljava/lang/String;

    .line 302
    const-string v7, "lobby"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "hosting "

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    sget-boolean v3, Lfr/testudo/spacecorsair/mod/ModLobby;->pub:Z

    if-eqz v3, :cond_249

    const-string v3, "public"

    :goto_167
    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v7, v3}, Lfr/testudo/spacecorsair/mod/ModDev;->ev(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_172
    .catch Ljava/lang/Throwable; {:try_start_145 .. :try_end_172} :catch_3dc

    move-object v10, v2

    move-object v11, v4

    .line 304
    :goto_174
    if-eqz v8, :cond_3eb

    if-nez v12, :cond_3eb

    :try_start_178
    invoke-static {v6, v11, v10}, Lfr/testudo/spacecorsair/mod/ModLobby;->relay(Lfr/testudo/spacecorsair/mod/ModNet$Wire;Ljava/lang/String;Ljava/lang/String;)Lfr/testudo/spacecorsair/mod/ModNet$Turn;

    move-result-object v12

    move-object/from16 v17, v12

    .line 305
    :goto_17e
    sget-boolean v15, Lfr/testudo/spacecorsair/mod/ModLan;->connected:Z

    .line 306
    if-eqz v14, :cond_187

    if-nez v15, :cond_187

    invoke-virtual/range {v18 .. v18}, Ljava/util/HashSet;->clear()V

    .line 308
    :cond_187
    if-nez v15, :cond_3ef

    const/4 v2, 0x0

    aget-boolean v2, v9, v2

    if-nez v2, :cond_3ef

    add-int/lit8 v13, v13, 0x1

    rem-int/lit8 v2, v13, 0x2

    if-nez v2, :cond_3ef

    if-nez v8, :cond_3ef

    invoke-static {v6}, Lfr/testudo/spacecorsair/mod/ModLobby;->candidates(Lfr/testudo/spacecorsair/mod/ModNet$Wire;)Ljava/lang/String;

    move-result-object v5

    move v12, v13

    move-object/from16 v16, v5

    .line 309
    :goto_19d
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

    if-eqz v15, :cond_24d

    const-string v2, "1"

    :goto_1ce
    aput-object v2, v5, v7

    const/4 v2, 0x4

    const-string v7, "pvp"

    aput-object v7, v5, v2

    const/4 v7, 0x5

    sget-boolean v2, Lfr/testudo/spacecorsair/mod/ModLan;->pvpRoom:Z

    if-eqz v2, :cond_251

    const-string v2, "1"

    :goto_1dc
    aput-object v2, v5, v7

    const/4 v2, 0x6

    const-string v7, "sector"

    aput-object v7, v5, v2

    const/4 v2, 0x7

    .line 310
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

    aput-object v16, v5, v2

    const/16 v2, 0xc

    const-string v7, "hide"

    aput-object v7, v5, v2

    const/16 v7, 0xd

    if-eqz v8, :cond_254

    const-string v2, "1"

    :goto_20e
    aput-object v2, v5, v7

    const/16 v2, 0xe

    const-string v7, "relay"

    aput-object v7, v5, v2

    const/16 v7, 0xf

    .line 311
    if-eqz v17, :cond_257

    move-object/from16 v0, v17

    iget-object v2, v0, Lfr/testudo/spacecorsair/mod/ModNet$Turn;->relayed:Ljava/net/InetSocketAddress;

    if-eqz v2, :cond_257

    move-object/from16 v0, v17

    iget-object v2, v0, Lfr/testudo/spacecorsair/mod/ModNet$Turn;->relayed:Ljava/net/InetSocketAddress;

    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModNet;->show(Ljava/net/InetSocketAddress;)Ljava/lang/String;

    move-result-object v2

    :goto_228
    aput-object v2, v5, v7

    .line 309
    invoke-static {v3, v4, v5}, Lfr/testudo/spacecorsair/mod/ModLobby;->call(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lfr/testudo/spacecorsair/mod/ModLobby$Reply;

    move-result-object v2

    .line 312
    iget v3, v2, Lfr/testudo/spacecorsair/mod/ModLobby$Reply;->status:I

    const/16 v4, 0x194

    if-eq v3, v4, :cond_23a

    iget v3, v2, Lfr/testudo/spacecorsair/mod/ModLobby$Reply;->status:I

    const/16 v4, 0x193

    if-ne v3, v4, :cond_25a

    :cond_23a
    const-string v4, ""
    :try_end_23c
    .catch Ljava/lang/Throwable; {:try_start_178 .. :try_end_23c} :catch_3b0

    :try_start_23c
    const-string v2, ""

    sput-object v2, Lfr/testudo/spacecorsair/mod/ModLobby;->code:Ljava/lang/String;
    :try_end_240
    .catch Ljava/lang/Throwable; {:try_start_23c .. :try_end_240} :catch_3d5

    move v13, v12

    move v14, v15

    move-object/from16 v2, v16

    move-object/from16 v7, v17

    move-object v3, v10

    goto/16 :goto_18

    .line 302
    :cond_249
    :try_start_249
    const-string v3, "private"
    :try_end_24b
    .catch Ljava/lang/Throwable; {:try_start_249 .. :try_end_24b} :catch_3dc

    goto/16 :goto_167

    .line 309
    :cond_24d
    :try_start_24d
    const-string v2, "0"

    goto/16 :goto_1ce

    :cond_251
    const-string v2, "0"

    goto :goto_1dc

    .line 310
    :cond_254
    const-string v2, "0"

    goto :goto_20e

    .line 311
    :cond_257
    const-string v2, ""

    goto :goto_228

    .line 313
    :cond_25a
    invoke-virtual {v2}, Lfr/testudo/spacecorsair/mod/ModLobby$Reply;->ok()Z

    move-result v3

    if-eqz v3, :cond_2e6

    if-nez v15, :cond_2e6

    const/4 v3, 0x0

    aget-boolean v3, v9, v3

    if-nez v3, :cond_2e6

    .line 314
    iget-object v2, v2, Lfr/testudo/spacecorsair/mod/ModLobby$Reply;->rows:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_26d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2e6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Ljava/lang/String;

    .line 315
    array-length v3, v7

    const/16 v4, 0x8

    if-lt v3, v4, :cond_26d

    const-string v3, "join"

    const/4 v4, 0x0

    aget-object v4, v7, v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_26d

    .line 316
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

    .line 317
    const/4 v4, 0x6

    aget-object v4, v7, v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_2c5

    const/4 v4, 0x7

    aget-object v4, v7, v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_26d

    .line 318
    :cond_2c5
    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_26d

    .line 319
    const/4 v2, 0x0

    const/4 v3, 0x1

    aput-boolean v3, v9, v2

    .line 323
    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lfr/testudo/spacecorsair/mod/ModLobby$2;

    move-wide/from16 v4, p0

    invoke-direct/range {v3 .. v9}, Lfr/testudo/spacecorsair/mod/ModLobby$2;-><init>(JLfr/testudo/spacecorsair/mod/ModNet$Wire;[Ljava/lang/String;Z[Z)V

    const-string v4, "lobby-accept"

    invoke-direct {v2, v3, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 328
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 329
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 333
    :cond_2e6
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLobby;->reportRelay()V

    .line 334
    if-eqz v15, :cond_30c

    const-wide/16 v2, 0x7530

    .line 335
    :goto_2ed
    const-wide/16 v4, 0x0

    :goto_2ef
    cmp-long v7, v4, v2

    if-gez v7, :cond_302

    sget-wide v20, Lfr/testudo/spacecorsair/mod/ModLobby;->gen:J

    cmp-long v7, p0, v20

    if-nez v7, :cond_302

    .line 336
    const-wide/16 v20, 0xfa

    invoke-static/range {v20 .. v21}, Ljava/lang/Thread;->sleep(J)V

    .line 337
    sget-boolean v7, Lfr/testudo/spacecorsair/mod/ModLan;->connected:Z
    :try_end_300
    .catch Ljava/lang/Throwable; {:try_start_24d .. :try_end_300} :catch_3b0

    if-eq v15, v7, :cond_30f

    :cond_302
    move v13, v12

    move v14, v15

    move-object/from16 v2, v16

    move-object/from16 v7, v17

    move-object v3, v10

    move-object v4, v11

    .line 339
    goto/16 :goto_18

    .line 334
    :cond_30c
    const-wide/16 v2, 0x1f40

    goto :goto_2ed

    .line 335
    :cond_30f
    const-wide/16 v20, 0xfa

    add-long v4, v4, v20

    goto :goto_2ef

    :cond_314
    move-object v2, v3

    .line 344
    :cond_315
    :goto_315
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_344

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

    .line 345
    :cond_344
    sget-boolean v2, Lfr/testudo/spacecorsair/mod/ModLobby;->DEBUG:Z

    if-eqz v2, :cond_386

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

    .line 346
    :cond_386
    sget-wide v2, Lfr/testudo/spacecorsair/mod/ModLobby;->gen:J

    cmp-long v2, p0, v2

    if-nez v2, :cond_3a6

    .line 347
    const/4 v2, 0x0

    sput-boolean v2, Lfr/testudo/spacecorsair/mod/ModLobby;->hosting:Z

    .line 348
    const/4 v2, 0x0

    sput-boolean v2, Lfr/testudo/spacecorsair/mod/ModLobby;->busy:Z

    .line 349
    const-string v2, ""

    sput-object v2, Lfr/testudo/spacecorsair/mod/ModLobby;->code:Ljava/lang/String;

    .line 350
    sget-boolean v2, Lfr/testudo/spacecorsair/mod/ModLan;->internet:Z

    if-eqz v2, :cond_3a6

    sget v2, Lfr/testudo/spacecorsair/mod/ModLan;->role:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_3a6

    sget-boolean v2, Lfr/testudo/spacecorsair/mod/ModLan;->connected:Z

    if-nez v2, :cond_3a6

    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLan;->stop()V

    .line 353
    :cond_3a6
    if-eqz v6, :cond_3af

    sget-boolean v2, Lfr/testudo/spacecorsair/mod/ModLan;->connected:Z

    if-nez v2, :cond_3af

    invoke-virtual {v6}, Lfr/testudo/spacecorsair/mod/ModNet$Wire;->close()V

    .line 354
    :cond_3af
    return-void

    .line 340
    :catch_3b0
    move-exception v3

    move-object v5, v3

    move-object v2, v10

    move-object v4, v11

    .line 341
    :goto_3b4
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

    .line 342
    sget-boolean v3, Lfr/testudo/spacecorsair/mod/ModLobby;->DEBUG:Z

    if-eqz v3, :cond_315

    invoke-virtual {v5}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_315

    .line 340
    :catch_3d5
    move-exception v3

    move-object v5, v3

    move-object v2, v10

    goto :goto_3b4

    :catch_3d9
    move-exception v5

    move-object v2, v3

    goto :goto_3b4

    :catch_3dc
    move-exception v3

    move-object v5, v3

    goto :goto_3b4

    :catch_3df
    move-exception v5

    move-object v6, v7

    move-object v2, v3

    goto :goto_3b4

    :cond_3e3
    move-object v10, v3

    move-object v11, v4

    goto/16 :goto_174

    :cond_3e7
    move-object v5, v2

    move-object v12, v7

    goto/16 :goto_38

    :cond_3eb
    move-object/from16 v17, v12

    goto/16 :goto_17e

    :cond_3ef
    move v12, v13

    move-object/from16 v16, v5

    goto/16 :goto_19d
.end method

.method static join(Ljava/lang/String;)Z
    .registers 16

    .prologue
    .line 382
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLobby;->available()Z

    move-result v0

    if-nez v0, :cond_8

    const/4 v0, 0x0

    .line 459
    :cond_7
    :goto_7
    return v0

    .line 383
    :cond_8
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLobby;->leave()V

    .line 384
    sget-wide v0, Lfr/testudo/spacecorsair/mod/ModLobby;->gen:J

    const-wide/16 v2, 0x1

    add-long/2addr v2, v0

    sput-wide v2, Lfr/testudo/spacecorsair/mod/ModLobby;->gen:J

    .line 385
    const/4 v0, 0x1

    sput-boolean v0, Lfr/testudo/spacecorsair/mod/ModLobby;->busy:Z

    .line 386
    if-nez p0, :cond_3a

    const-string v5, ""

    .line 387
    :goto_19
    const/4 v1, 0x0

    .line 388
    const/4 v7, 0x0

    .line 390
    :try_start_1b
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v4, 0x4

    if-eq v0, v4, :cond_45

    const-string v0, "The code has 4 characters."

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModLobby;->status:Ljava/lang/String;
    :try_end_2a
    .catch Ljava/lang/Throwable; {:try_start_1b .. :try_end_2a} :catch_341
    .catchall {:try_start_1b .. :try_end_2a} :catchall_35c

    const/4 v0, 0x0

    .line 461
    const/4 v2, 0x0

    sput-boolean v2, Lfr/testudo/spacecorsair/mod/ModLobby;->busy:Z

    .line 462
    if-eqz v1, :cond_7

    if-eqz v7, :cond_36

    sget-object v2, Lfr/testudo/spacecorsair/mod/ModLobby;->link:Lfr/testudo/spacecorsair/mod/ModNet$Link;

    if-eqz v2, :cond_7

    :cond_36
    invoke-virtual {v1}, Lfr/testudo/spacecorsair/mod/ModNet$Wire;->close()V

    goto :goto_7

    .line 386
    :cond_3a
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v5

    goto :goto_19

    .line 391
    :cond_45
    :try_start_45
    const-string v0, "Connecting..."

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModLobby;->status:Ljava/lang/String;

    .line 392
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLobby;->hideIp()Z

    move-result v9

    .line 393
    new-instance v14, Lfr/testudo/spacecorsair/mod/ModNet$Wire;

    const/4 v0, 0x0

    invoke-direct {v14, v0}, Lfr/testudo/spacecorsair/mod/ModNet$Wire;-><init>(I)V
    :try_end_57
    .catch Ljava/lang/Throwable; {:try_start_45 .. :try_end_57} :catch_341
    .catchall {:try_start_45 .. :try_end_57} :catchall_35c

    .line 394
    if-eqz v9, :cond_11c

    :try_start_59
    const-string v0, ""

    move-object v1, v0

    .line 395
    :goto_5c
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    invoke-virtual {v0}, Ljava/security/SecureRandom;->nextInt()I

    move-result v10

    .line 396
    const/16 v0, 0x10

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v6, "nick"

    aput-object v6, v4, v0

    const/4 v0, 0x1

    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLan;->myNick()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v0

    const/4 v0, 0x2

    const-string v6, "ctry"

    aput-object v6, v4, v0

    const/4 v0, 0x3

    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLan;->myCountry()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v0

    const/4 v0, 0x4

    const-string v6, "id"

    aput-object v6, v4, v0

    const/4 v0, 0x5

    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModSaveSig;->installId()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v0

    const/4 v0, 0x6

    const-string v6, "ver"

    aput-object v6, v4, v0

    const/4 v0, 0x7

    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLan;->myVersion()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v0

    const/16 v0, 0x8

    const-string v6, "clean"

    aput-object v6, v4, v0

    const/16 v6, 0x9

    .line 397
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModSaveSig;->publicOk()Z

    move-result v0

    if-eqz v0, :cond_123

    const-string v0, "1"

    :goto_a9
    aput-object v0, v4, v6

    const/16 v0, 0xa

    const-string v6, "cands"

    aput-object v6, v4, v0

    const/16 v0, 0xb

    aput-object v1, v4, v0

    const/16 v0, 0xc

    const-string v1, "hide"

    aput-object v1, v4, v0

    const/16 v1, 0xd

    if-eqz v9, :cond_126

    const-string v0, "1"

    :goto_c1
    aput-object v0, v4, v1

    const/16 v0, 0xe

    const-string v1, "sid"

    aput-object v1, v4, v0

    const/16 v0, 0xf

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ""

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v0

    .line 398
    const-string v0, "POST"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "/lobby/"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v6, "/join"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v4}, Lfr/testudo/spacecorsair/mod/ModLobby;->call(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lfr/testudo/spacecorsair/mod/ModLobby$Reply;

    move-result-object v1

    .line 399
    invoke-virtual {v1}, Lfr/testudo/spacecorsair/mod/ModLobby$Reply;->ok()Z

    move-result v0

    if-nez v0, :cond_129

    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModLobby;->refusal(Lfr/testudo/spacecorsair/mod/ModLobby$Reply;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModLobby;->status:Ljava/lang/String;
    :try_end_10b
    .catch Ljava/lang/Throwable; {:try_start_59 .. :try_end_10b} :catch_37e
    .catchall {:try_start_59 .. :try_end_10b} :catchall_36d

    const/4 v0, 0x0

    .line 461
    const/4 v1, 0x0

    sput-boolean v1, Lfr/testudo/spacecorsair/mod/ModLobby;->busy:Z

    .line 462
    if-eqz v14, :cond_7

    if-eqz v7, :cond_117

    sget-object v1, Lfr/testudo/spacecorsair/mod/ModLobby;->link:Lfr/testudo/spacecorsair/mod/ModNet$Link;

    if-eqz v1, :cond_7

    :cond_117
    invoke-virtual {v14}, Lfr/testudo/spacecorsair/mod/ModNet$Wire;->close()V

    goto/16 :goto_7

    .line 394
    :cond_11c
    :try_start_11c
    invoke-static {v14}, Lfr/testudo/spacecorsair/mod/ModLobby;->candidates(Lfr/testudo/spacecorsair/mod/ModNet$Wire;)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    goto/16 :goto_5c

    .line 397
    :cond_123
    const-string v0, "0"

    goto :goto_a9

    :cond_126
    const-string v0, "0"

    goto :goto_c1

    .line 400
    :cond_129
    const-string v0, ""

    invoke-static {v14, v5, v0}, Lfr/testudo/spacecorsair/mod/ModLobby;->relay(Lfr/testudo/spacecorsair/mod/ModNet$Wire;Ljava/lang/String;Ljava/lang/String;)Lfr/testudo/spacecorsair/mod/ModNet$Turn;

    move-result-object v0

    .line 401
    if-eqz v0, :cond_1c6

    iget-object v6, v0, Lfr/testudo/spacecorsair/mod/ModNet$Turn;->relayed:Ljava/net/InetSocketAddress;

    if-eqz v6, :cond_1c6

    .line 402
    array-length v6, v4

    add-int/lit8 v6, v6, 0x2

    new-array v6, v6, [Ljava/lang/String;

    .line 403
    const/4 v8, 0x0

    const/4 v11, 0x0

    array-length v12, v4

    invoke-static {v4, v8, v6, v11, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 404
    array-length v8, v4

    const-string v11, "relay"

    aput-object v11, v6, v8

    array-length v4, v4

    add-int/lit8 v4, v4, 0x1

    iget-object v0, v0, Lfr/testudo/spacecorsair/mod/ModNet$Turn;->relayed:Ljava/net/InetSocketAddress;

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModNet;->show(Ljava/net/InetSocketAddress;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v6, v4

    .line 406
    const-string v0, "POST"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "/lobby/"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v8, "/join"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4, v6}, Lfr/testudo/spacecorsair/mod/ModLobby;->call(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lfr/testudo/spacecorsair/mod/ModLobby$Reply;

    move-result-object v0

    .line 407
    invoke-virtual {v0}, Lfr/testudo/spacecorsair/mod/ModLobby$Reply;->ok()Z

    move-result v4

    if-eqz v4, :cond_38e

    .line 413
    :goto_175
    const/4 v1, 0x0

    move-object v8, v0

    :goto_177
    const/4 v0, 0x5

    if-ge v1, v0, :cond_207

    sget-wide v12, Lfr/testudo/spacecorsair/mod/ModLobby;->gen:J

    cmp-long v0, v2, v12

    if-nez v0, :cond_207

    const-string v0, "cands"

    invoke-virtual {v8, v0}, Lfr/testudo/spacecorsair/mod/ModLobby$Reply;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_207

    const-string v0, "relay"

    invoke-virtual {v8, v0}, Lfr/testudo/spacecorsair/mod/ModLobby$Reply;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_207

    .line 414
    const-wide/16 v12, 0xbb8

    invoke-static {v12, v13}, Ljava/lang/Thread;->sleep(J)V

    .line 415
    const-string v0, "POST"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "/lobby/"

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v11, "/join"

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4, v6}, Lfr/testudo/spacecorsair/mod/ModLobby;->call(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lfr/testudo/spacecorsair/mod/ModLobby$Reply;

    move-result-object v0

    .line 416
    invoke-virtual {v0}, Lfr/testudo/spacecorsair/mod/ModLobby$Reply;->ok()Z

    move-result v4

    if-eqz v4, :cond_1ec

    .line 413
    :goto_1c2
    add-int/lit8 v1, v1, 0x1

    move-object v8, v0

    goto :goto_177

    .line 408
    :cond_1c6
    if-eqz v9, :cond_38a

    .line 409
    sget-boolean v0, Lfr/testudo/spacecorsair/mod/ModLobby;->relayFull:Z

    if-eqz v0, :cond_1e5

    const-string v0, "Relay full this month; try Local or another network."

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 410
    :goto_1d2
    sput-object v0, Lfr/testudo/spacecorsair/mod/ModLobby;->status:Ljava/lang/String;
    :try_end_1d4
    .catch Ljava/lang/Throwable; {:try_start_11c .. :try_end_1d4} :catch_37e
    .catchall {:try_start_11c .. :try_end_1d4} :catchall_36d

    .line 411
    const/4 v0, 0x0

    .line 461
    const/4 v1, 0x0

    sput-boolean v1, Lfr/testudo/spacecorsair/mod/ModLobby;->busy:Z

    .line 462
    if-eqz v14, :cond_7

    if-eqz v7, :cond_1e0

    sget-object v1, Lfr/testudo/spacecorsair/mod/ModLobby;->link:Lfr/testudo/spacecorsair/mod/ModNet$Link;

    if-eqz v1, :cond_7

    :cond_1e0
    invoke-virtual {v14}, Lfr/testudo/spacecorsair/mod/ModNet$Wire;->close()V

    goto/16 :goto_7

    .line 410
    :cond_1e5
    :try_start_1e5
    const-string v0, "\"Hide my IP\" needs the relay, and the relay is not available right now."

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1d2

    .line 416
    :cond_1ec
    iget v4, v0, Lfr/testudo/spacecorsair/mod/ModLobby$Reply;->status:I

    if-eqz v4, :cond_387

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLobby;->refusal(Lfr/testudo/spacecorsair/mod/ModLobby$Reply;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModLobby;->status:Ljava/lang/String;
    :try_end_1f6
    .catch Ljava/lang/Throwable; {:try_start_1e5 .. :try_end_1f6} :catch_37e
    .catchall {:try_start_1e5 .. :try_end_1f6} :catchall_36d

    const/4 v0, 0x0

    .line 461
    const/4 v1, 0x0

    sput-boolean v1, Lfr/testudo/spacecorsair/mod/ModLobby;->busy:Z

    .line 462
    if-eqz v14, :cond_7

    if-eqz v7, :cond_202

    sget-object v1, Lfr/testudo/spacecorsair/mod/ModLobby;->link:Lfr/testudo/spacecorsair/mod/ModNet$Link;

    if-eqz v1, :cond_7

    :cond_202
    invoke-virtual {v14}, Lfr/testudo/spacecorsair/mod/ModNet$Wire;->close()V

    goto/16 :goto_7

    .line 418
    :cond_207
    :try_start_207
    sget-wide v0, Lfr/testudo/spacecorsair/mod/ModLobby;->gen:J
    :try_end_209
    .catch Ljava/lang/Throwable; {:try_start_207 .. :try_end_209} :catch_37e
    .catchall {:try_start_207 .. :try_end_209} :catchall_36d

    cmp-long v0, v2, v0

    if-eqz v0, :cond_21e

    const/4 v0, 0x0

    .line 461
    const/4 v1, 0x0

    sput-boolean v1, Lfr/testudo/spacecorsair/mod/ModLobby;->busy:Z

    .line 462
    if-eqz v14, :cond_7

    if-eqz v7, :cond_219

    sget-object v1, Lfr/testudo/spacecorsair/mod/ModLobby;->link:Lfr/testudo/spacecorsair/mod/ModNet$Link;

    if-eqz v1, :cond_7

    :cond_219
    invoke-virtual {v14}, Lfr/testudo/spacecorsair/mod/ModNet$Wire;->close()V

    goto/16 :goto_7

    .line 419
    :cond_21e
    :try_start_21e
    new-instance v4, Lfr/testudo/spacecorsair/mod/ModNet$Link;

    invoke-direct {v4, v14, v10}, Lfr/testudo/spacecorsair/mod/ModNet$Link;-><init>(Lfr/testudo/spacecorsair/mod/ModNet$Wire;I)V
    :try_end_223
    .catch Ljava/lang/Throwable; {:try_start_21e .. :try_end_223} :catch_37e
    .catchall {:try_start_21e .. :try_end_223} :catchall_36d

    .line 420
    :try_start_223
    const-string v0, "Reaching the host..."

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModLobby;->status:Ljava/lang/String;

    .line 423
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lfr/testudo/spacecorsair/mod/ModLobby$3;

    invoke-direct/range {v1 .. v6}, Lfr/testudo/spacecorsair/mod/ModLobby$3;-><init>(JLfr/testudo/spacecorsair/mod/ModNet$Link;Ljava/lang/String;[Ljava/lang/String;)V

    const-string v6, "lobby-rejoin"

    invoke-direct {v0, v1, v6}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 434
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 435
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 436
    const-string v0, "cands"

    invoke-virtual {v8, v0}, Lfr/testudo/spacecorsair/mod/ModLobby$Reply;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLobby;->addrs(Ljava/lang/String;)Ljava/util/List;

    move-result-object v7

    const-string v0, "relay"

    invoke-virtual {v8, v0}, Lfr/testudo/spacecorsair/mod/ModLobby$Reply;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModNet;->parse(Ljava/lang/String;)Ljava/net/InetSocketAddress;

    move-result-object v8

    const-wide/16 v10, 0x36b0

    const-wide/32 v12, 0x9c40

    move-object v6, v4

    invoke-virtual/range {v6 .. v13}, Lfr/testudo/spacecorsair/mod/ModNet$Link;->connect(Ljava/util/List;Ljava/net/InetSocketAddress;ZJJ)Z

    move-result v0

    .line 437
    sget-wide v6, Lfr/testudo/spacecorsair/mod/ModLobby;->gen:J

    cmp-long v1, v2, v6

    if-eqz v1, :cond_276

    invoke-virtual {v4}, Lfr/testudo/spacecorsair/mod/ModNet$Link;->abandon()V
    :try_end_265
    .catch Ljava/lang/Throwable; {:try_start_223 .. :try_end_265} :catch_382
    .catchall {:try_start_223 .. :try_end_265} :catchall_36f

    const/4 v0, 0x0

    .line 461
    const/4 v1, 0x0

    sput-boolean v1, Lfr/testudo/spacecorsair/mod/ModLobby;->busy:Z

    .line 462
    if-eqz v14, :cond_7

    if-eqz v4, :cond_271

    sget-object v1, Lfr/testudo/spacecorsair/mod/ModLobby;->link:Lfr/testudo/spacecorsair/mod/ModNet$Link;

    if-eq v1, v4, :cond_7

    :cond_271
    invoke-virtual {v14}, Lfr/testudo/spacecorsair/mod/ModNet$Wire;->close()V

    goto/16 :goto_7

    .line 438
    :cond_276
    if-nez v0, :cond_2cc

    .line 439
    :try_start_278
    invoke-virtual {v4}, Lfr/testudo/spacecorsair/mod/ModNet$Link;->abandon()V

    .line 440
    const-string v0, "POST"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/lobby/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/unreach"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v5, "id"

    aput-object v5, v2, v3

    const/4 v3, 0x1

    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModSaveSig;->installId()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v3

    invoke-static {v0, v1, v2}, Lfr/testudo/spacecorsair/mod/ModLobby;->call(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lfr/testudo/spacecorsair/mod/ModLobby$Reply;

    .line 441
    sget-boolean v0, Lfr/testudo/spacecorsair/mod/ModLobby;->relayFull:Z

    if-eqz v0, :cond_2c5

    const-string v0, "Relay full this month; try Local or another network."

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 442
    :goto_2b2
    sput-object v0, Lfr/testudo/spacecorsair/mod/ModLobby;->status:Ljava/lang/String;
    :try_end_2b4
    .catch Ljava/lang/Throwable; {:try_start_278 .. :try_end_2b4} :catch_382
    .catchall {:try_start_278 .. :try_end_2b4} :catchall_36f

    .line 443
    const/4 v0, 0x0

    .line 461
    const/4 v1, 0x0

    sput-boolean v1, Lfr/testudo/spacecorsair/mod/ModLobby;->busy:Z

    .line 462
    if-eqz v14, :cond_7

    if-eqz v4, :cond_2c0

    sget-object v1, Lfr/testudo/spacecorsair/mod/ModLobby;->link:Lfr/testudo/spacecorsair/mod/ModNet$Link;

    if-eq v1, v4, :cond_7

    :cond_2c0
    invoke-virtual {v14}, Lfr/testudo/spacecorsair/mod/ModNet$Wire;->close()V

    goto/16 :goto_7

    .line 442
    :cond_2c5
    :try_start_2c5
    const-string v0, "Could not reach the host. Their network or yours blocks direct play and the relay did not help."

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2b2

    .line 445
    :cond_2cc
    invoke-virtual {v4}, Lfr/testudo/spacecorsair/mod/ModNet$Link;->relayed()Z

    move-result v0

    if-nez v0, :cond_2de

    iget-object v0, v14, Lfr/testudo/spacecorsair/mod/ModNet$Wire;->turn:Lfr/testudo/spacecorsair/mod/ModNet$Turn;

    if-eqz v0, :cond_2de

    iget-object v0, v14, Lfr/testudo/spacecorsair/mod/ModNet$Wire;->turn:Lfr/testudo/spacecorsair/mod/ModNet$Turn;

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/mod/ModNet$Turn;->close()V

    const/4 v0, 0x0

    iput-object v0, v14, Lfr/testudo/spacecorsair/mod/ModNet$Wire;->turn:Lfr/testudo/spacecorsair/mod/ModNet$Turn;

    .line 446
    :cond_2de
    sput-object v4, Lfr/testudo/spacecorsair/mod/ModLobby;->link:Lfr/testudo/spacecorsair/mod/ModNet$Link;

    .line 447
    sput-object v5, Lfr/testudo/spacecorsair/mod/ModLobby;->joinedCode:Ljava/lang/String;

    .line 448
    const-string v0, ""

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModLobby;->peerId:Ljava/lang/String;

    .line 449
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLobby;->applySaver()V

    .line 450
    const-string v0, "lobby"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "path found relayed="

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v4}, Lfr/testudo/spacecorsair/mod/ModNet$Link;->relayed()Z

    move-result v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lfr/testudo/spacecorsair/mod/ModDev;->ev(Ljava/lang/String;Ljava/lang/String;)V

    .line 451
    invoke-static {v4}, Lfr/testudo/spacecorsair/mod/ModLan;->joinNet(Ljava/net/Socket;)Z

    move-result v0

    .line 452
    if-nez v0, :cond_328

    const/4 v0, 0x0

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModLobby;->link:Lfr/testudo/spacecorsair/mod/ModNet$Link;

    invoke-virtual {v4}, Lfr/testudo/spacecorsair/mod/ModNet$Link;->close()V
    :try_end_311
    .catch Ljava/lang/Throwable; {:try_start_2c5 .. :try_end_311} :catch_382
    .catchall {:try_start_2c5 .. :try_end_311} :catchall_36f

    const/4 v4, 0x0

    const/4 v1, 0x0

    :try_start_313
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->status:Ljava/lang/String;

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModLobby;->status:Ljava/lang/String;
    :try_end_317
    .catch Ljava/lang/Throwable; {:try_start_313 .. :try_end_317} :catch_385
    .catchall {:try_start_313 .. :try_end_317} :catchall_372

    const/4 v0, 0x0

    .line 461
    const/4 v2, 0x0

    sput-boolean v2, Lfr/testudo/spacecorsair/mod/ModLobby;->busy:Z

    .line 462
    if-eqz v1, :cond_7

    if-eqz v4, :cond_323

    sget-object v2, Lfr/testudo/spacecorsair/mod/ModLobby;->link:Lfr/testudo/spacecorsair/mod/ModNet$Link;

    if-eqz v2, :cond_7

    :cond_323
    invoke-virtual {v1}, Lfr/testudo/spacecorsair/mod/ModNet$Wire;->close()V

    goto/16 :goto_7

    .line 453
    :cond_328
    const/4 v1, 0x0

    .line 454
    :try_start_329
    const-string v0, ""

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModLobby;->status:Ljava/lang/String;

    .line 455
    invoke-static {v2, v3, v5}, Lfr/testudo/spacecorsair/mod/ModLobby;->startGuestWatch(JLjava/lang/String;)V
    :try_end_330
    .catch Ljava/lang/Throwable; {:try_start_329 .. :try_end_330} :catch_385
    .catchall {:try_start_329 .. :try_end_330} :catchall_376

    .line 456
    const/4 v0, 0x1

    .line 461
    const/4 v2, 0x0

    sput-boolean v2, Lfr/testudo/spacecorsair/mod/ModLobby;->busy:Z

    .line 462
    if-eqz v1, :cond_7

    if-eqz v4, :cond_33c

    sget-object v2, Lfr/testudo/spacecorsair/mod/ModLobby;->link:Lfr/testudo/spacecorsair/mod/ModNet$Link;

    if-eq v2, v4, :cond_7

    :cond_33c
    invoke-virtual {v1}, Lfr/testudo/spacecorsair/mod/ModNet$Wire;->close()V

    goto/16 :goto_7

    .line 457
    :catch_341
    move-exception v0

    move-object v4, v7

    .line 458
    :goto_343
    :try_start_343
    const-string v0, "The lobby service did not answer. Check your internet connection."

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModLobby;->status:Ljava/lang/String;
    :try_end_34b
    .catchall {:try_start_343 .. :try_end_34b} :catchall_37a

    .line 459
    const/4 v0, 0x0

    .line 461
    const/4 v2, 0x0

    sput-boolean v2, Lfr/testudo/spacecorsair/mod/ModLobby;->busy:Z

    .line 462
    if-eqz v1, :cond_7

    if-eqz v4, :cond_357

    sget-object v2, Lfr/testudo/spacecorsair/mod/ModLobby;->link:Lfr/testudo/spacecorsair/mod/ModNet$Link;

    if-eq v2, v4, :cond_7

    :cond_357
    invoke-virtual {v1}, Lfr/testudo/spacecorsair/mod/ModNet$Wire;->close()V

    goto/16 :goto_7

    .line 461
    :catchall_35c
    move-exception v0

    move-object v14, v1

    :goto_35e
    const/4 v1, 0x0

    sput-boolean v1, Lfr/testudo/spacecorsair/mod/ModLobby;->busy:Z

    .line 462
    if-eqz v14, :cond_36c

    if-eqz v7, :cond_369

    sget-object v1, Lfr/testudo/spacecorsair/mod/ModLobby;->link:Lfr/testudo/spacecorsair/mod/ModNet$Link;

    if-eq v1, v7, :cond_36c

    :cond_369
    invoke-virtual {v14}, Lfr/testudo/spacecorsair/mod/ModNet$Wire;->close()V

    .line 463
    :cond_36c
    throw v0

    .line 461
    :catchall_36d
    move-exception v0

    goto :goto_35e

    :catchall_36f
    move-exception v0

    move-object v7, v4

    goto :goto_35e

    :catchall_372
    move-exception v0

    move-object v7, v4

    move-object v14, v1

    goto :goto_35e

    :catchall_376
    move-exception v0

    move-object v7, v4

    move-object v14, v1

    goto :goto_35e

    :catchall_37a
    move-exception v0

    move-object v7, v4

    move-object v14, v1

    goto :goto_35e

    .line 457
    :catch_37e
    move-exception v0

    move-object v4, v7

    move-object v1, v14

    goto :goto_343

    :catch_382
    move-exception v0

    move-object v1, v14

    goto :goto_343

    :catch_385
    move-exception v0

    goto :goto_343

    :cond_387
    move-object v0, v8

    goto/16 :goto_1c2

    :cond_38a
    move-object v0, v1

    move-object v6, v4

    goto/16 :goto_175

    :cond_38e
    move-object v0, v1

    goto/16 :goto_175
.end method

.method static kicked()V
    .registers 5

    .prologue
    .line 536
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModLobby;->code:Ljava/lang/String;

    sget-object v1, Lfr/testudo/spacecorsair/mod/ModLobby;->token:Ljava/lang/String;

    sget-object v2, Lfr/testudo/spacecorsair/mod/ModLobby;->peerId:Ljava/lang/String;

    .line 537
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x4

    if-ne v3, v4, :cond_13

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_14

    .line 539
    :cond_13
    :goto_13
    return-void

    .line 538
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

    .line 555
    sget-wide v0, Lfr/testudo/spacecorsair/mod/ModLobby;->gen:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    sput-wide v0, Lfr/testudo/spacecorsair/mod/ModLobby;->gen:J

    .line 556
    sput-boolean v4, Lfr/testudo/spacecorsair/mod/ModLobby;->hosting:Z

    .line 557
    sput-boolean v4, Lfr/testudo/spacecorsair/mod/ModLobby;->busy:Z

    .line 558
    const-string v0, ""

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModLobby;->code:Ljava/lang/String;

    .line 559
    const-string v0, ""

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModLobby;->joinedCode:Ljava/lang/String;

    .line 560
    const/4 v0, 0x0

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModLobby;->link:Lfr/testudo/spacecorsair/mod/ModNet$Link;

    .line 561
    return-void
.end method

.method private static level()Ljava/lang/String;
    .registers 2

    .prologue
    .line 241
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
    .line 167
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModLobby;->link:Lfr/testudo/spacecorsair/mod/ModNet$Link;

    return-object v0
.end method

.method static linkLine()Ljava/lang/String;
    .registers 6

    .prologue
    .line 173
    sget-object v1, Lfr/testudo/spacecorsair/mod/ModLobby;->link:Lfr/testudo/spacecorsair/mod/ModNet$Link;

    .line 174
    if-eqz v1, :cond_c

    sget-boolean v0, Lfr/testudo/spacecorsair/mod/ModLan;->connected:Z

    if-eqz v0, :cond_c

    sget-boolean v0, Lfr/testudo/spacecorsair/mod/ModLan;->internet:Z

    if-nez v0, :cond_f

    :cond_c
    const-string v0, ""

    .line 176
    :goto_e
    return-object v0

    .line 175
    :cond_f
    iget-object v0, v1, Lfr/testudo/spacecorsair/mod/ModNet$Link;->w:Lfr/testudo/spacecorsair/mod/ModNet$Wire;

    iget-wide v2, v0, Lfr/testudo/spacecorsair/mod/ModNet$Wire;->sentBytes:J

    iget-object v0, v1, Lfr/testudo/spacecorsair/mod/ModNet$Link;->w:Lfr/testudo/spacecorsair/mod/ModNet$Wire;

    iget-wide v4, v0, Lfr/testudo/spacecorsair/mod/ModNet$Wire;->gotBytes:J

    add-long/2addr v2, v4

    .line 176
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

    .line 177
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

    .line 178
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

    .line 176
    :cond_b7
    const-string v0, "Direct"

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_29

    .line 177
    :cond_bf
    const-string v0, ""

    goto :goto_8c

    .line 178
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

    .line 523
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 524
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

    .line 525
    invoke-virtual {v0}, Lfr/testudo/spacecorsair/mod/ModLobby$Reply;->ok()Z

    move-result v1

    if-nez v1, :cond_2c

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLobby;->refusal(Lfr/testudo/spacecorsair/mod/ModLobby$Reply;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModLobby;->status:Ljava/lang/String;

    move-object v0, v2

    .line 531
    :goto_2b
    return-object v0

    .line 526
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

    .line 527
    array-length v1, v0

    const/4 v4, 0x7

    if-lt v1, v4, :cond_32

    aget-object v1, v0, v7

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ne v1, v9, :cond_32

    .line 528
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

    .line 529
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

    .line 528
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_32

    :cond_a1
    aget-object v1, v0, v8

    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModLanUi;->safeCountry(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_69

    .line 529
    :cond_a8
    const-string v1, "0"

    goto :goto_77

    :cond_ab
    const-string v0, "1"

    goto :goto_9b

    :cond_ae
    move-object v0, v2

    .line 531
    goto/16 :goto_2b
.end method

.method static mb(J)Ljava/lang/String;
    .registers 10

    .prologue
    const-wide/16 v6, 0xa

    .line 182
    mul-long v0, p0, v6

    const-wide/32 v2, 0x100000

    div-long/2addr v0, v2

    .line 183
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

    .line 140
    :try_start_2
    invoke-static {}, Ljava/net/NetworkInterface;->getNetworkInterfaces()Ljava/util/Enumeration;

    move-result-object v7

    move v4, v6

    move v5, v6

    .line 141
    :cond_8
    :goto_8
    if-eqz v7, :cond_70

    invoke-interface {v7}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_70

    .line 142
    invoke-interface {v7}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/NetworkInterface;

    .line 143
    invoke-virtual {v0}, Ljava/net/NetworkInterface;->isUp()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-virtual {v0}, Ljava/net/NetworkInterface;->isLoopback()Z

    move-result v1

    if-nez v1, :cond_8

    .line 145
    invoke-virtual {v0}, Ljava/net/NetworkInterface;->getInetAddresses()Ljava/util/Enumeration;

    move-result-object v8

    move v3, v6

    .line 146
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

    .line 147
    :cond_42
    if-eqz v3, :cond_8

    .line 148
    invoke-virtual {v0}, Ljava/net/NetworkInterface;->getName()Ljava/lang/String;

    move-result-object v0

    .line 149
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

    .line 150
    goto :goto_8

    :cond_6d
    move v0, v2

    move v1, v5

    .line 149
    goto :goto_6a

    .line 151
    :cond_70
    if-eqz v4, :cond_75

    if-nez v5, :cond_75

    .line 153
    :goto_74
    return v2

    :cond_75
    move v2, v6

    .line 151
    goto :goto_74

    .line 152
    :catch_77
    move-exception v0

    move v2, v6

    .line 153
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

    .line 53
    new-instance v1, Lfr/testudo/spacecorsair/mod/ModLobby$Reply;

    invoke-direct {v1}, Lfr/testudo/spacecorsair/mod/ModLobby$Reply;-><init>()V

    .line 54
    iput p1, v1, Lfr/testudo/spacecorsair/mod/ModLobby$Reply;->status:I

    .line 55
    if-nez p0, :cond_f

    move-object v0, v1

    .line 65
    :goto_e
    return-object v0

    .line 56
    :cond_f
    const-string v0, "\n"

    invoke-virtual {p0, v0, v7}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v2

    .line 57
    array-length v0, v2

    if-lez v0, :cond_3f

    aget-object v0, v2, v8

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v9}, Lfr/testudo/spacecorsair/mod/ModLan;->clean(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    :goto_22
    iput-object v0, v1, Lfr/testudo/spacecorsair/mod/ModLobby$Reply;->first:Ljava/lang/String;

    .line 58
    const/4 v0, 0x1

    :goto_25
    array-length v3, v2

    if-ge v0, v3, :cond_7a

    const/16 v3, 0x50

    if-ge v0, v3, :cond_7a

    .line 59
    aget-object v3, v2, v0

    .line 60
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_3c

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    const/16 v5, 0x4b0

    if-le v4, v5, :cond_42

    .line 58
    :cond_3c
    :goto_3c
    add-int/lit8 v0, v0, 0x1

    goto :goto_25

    .line 57
    :cond_3f
    const-string v0, ""

    goto :goto_22

    .line 61
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

    .line 62
    :cond_60
    const/16 v4, 0x3d

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    .line 63
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

    .line 65
    goto :goto_e
.end method

.method static peerInstall()Ljava/lang/String;
    .registers 1

    .prologue
    .line 169
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModLobby;->peerId:Ljava/lang/String;

    return-object v0
.end method

.method private static prefs()Landroid/content/SharedPreferences;
    .registers 3

    .prologue
    .line 119
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
    .line 508
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModLobby$Reply;->first:Ljava/lang/String;

    .line 509
    iget v1, p0, Lfr/testudo/spacecorsair/mod/ModLobby$Reply;->status:I

    if-nez v1, :cond_d

    const-string v0, "The lobby service did not answer. Check your internet connection."

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 518
    :goto_c
    return-object v0

    .line 510
    :cond_d
    const-string v1, "gone"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1c

    const-string v0, "No game with that code."

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_c

    .line 511
    :cond_1c
    const-string v1, "full"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2b

    const-string v0, "That game is full."

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_c

    .line 512
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

    .line 513
    :cond_81
    const-string v1, "banned"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_91

    const-string v0, "You were removed by several hosts. Public games are locked for 24 hours."

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_c

    .line 514
    :cond_91
    const-string v1, "kicked"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a1

    const-string v0, "The host removed you from this game."

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_c

    .line 515
    :cond_a1
    const-string v1, "save"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b1

    const-string v0, "Your save was changed outside the game. Public games are locked for 24 hours; private codes and local games still work."

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_c

    .line 516
    :cond_b1
    const-string v1, "slow"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c1

    const-string v0, "Too many tries. Wait a few minutes."

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_c

    .line 517
    :cond_c1
    const-string v1, "busy"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d1

    const-string v0, "The lobby service is busy today. Try later, or play a local game."

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_c

    .line 518
    :cond_d1
    const-string v0, "The lobby service refused the request."

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_c
.end method

.method static rejoin()V
    .registers 3

    .prologue
    .line 485
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModLobby;->joinedCode:Ljava/lang/String;

    .line 486
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x4

    if-eq v1, v2, :cond_a

    .line 496
    :goto_9
    return-void

    .line 487
    :cond_a
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lfr/testudo/spacecorsair/mod/ModLobby$5;

    invoke-direct {v2, v0}, Lfr/testudo/spacecorsair/mod/ModLobby$5;-><init>(Ljava/lang/String;)V

    const-string v0, "lobby-rejoin"

    invoke-direct {v1, v2, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 494
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 495
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    goto :goto_9
.end method

.method private static relay(Lfr/testudo/spacecorsair/mod/ModNet$Wire;Ljava/lang/String;Ljava/lang/String;)Lfr/testudo/spacecorsair/mod/ModNet$Turn;
    .registers 12

    .prologue
    const/4 v8, 0x3

    const/4 v2, 0x0

    const/4 v0, 0x0

    .line 216
    :try_start_3
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

    .line 217
    const-string v1, "full"

    iget-object v3, v4, Lfr/testudo/spacecorsair/mod/ModLobby$Reply;->first:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_38

    const/4 v1, 0x1

    sput-boolean v1, Lfr/testudo/spacecorsair/mod/ModLobby;->relayFull:Z

    .line 231
    :cond_37
    :goto_37
    return-object v0

    .line 218
    :cond_38
    invoke-virtual {v4}, Lfr/testudo/spacecorsair/mod/ModLobby$Reply;->ok()Z

    move-result v1

    if-eqz v1, :cond_37

    .line 219
    const-string v1, "host"

    invoke-virtual {v4, v1}, Lfr/testudo/spacecorsair/mod/ModLobby$Reply;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move v1, v2

    .line 220
    :goto_45
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v1, v5, :cond_6a

    invoke-virtual {v3, v1}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x61

    if-lt v5, v6, :cond_57

    const/16 v6, 0x7a

    if-le v5, v6, :cond_67

    :cond_57
    const/16 v6, 0x30

    if-lt v5, v6, :cond_5f

    const/16 v6, 0x39

    if-le v5, v6, :cond_67

    :cond_5f
    const/16 v6, 0x2e

    if-eq v5, v6, :cond_67

    const/16 v6, 0x2d

    if-ne v5, v6, :cond_37

    :cond_67
    add-int/lit8 v1, v1, 0x1

    goto :goto_45

    .line 222
    :cond_6a
    invoke-static {v3}, Ljava/net/InetAddress;->getAllByName(Ljava/lang/String;)[Ljava/net/InetAddress;

    move-result-object v5

    array-length v6, v5

    move v3, v2

    :goto_70
    if-ge v3, v6, :cond_b1

    aget-object v1, v5, v3

    instance-of v7, v1, Ljava/net/Inet4Address;

    if-eqz v7, :cond_a2

    move-object v3, v1

    .line 223
    :goto_79
    if-eqz v3, :cond_37

    .line 224
    new-instance v1, Lfr/testudo/spacecorsair/mod/ModNet$Turn;

    new-instance v5, Ljava/net/InetSocketAddress;

    const-string v6, "port"

    invoke-virtual {v4, v6}, Lfr/testudo/spacecorsair/mod/ModLobby$Reply;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-direct {v5, v3, v6}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    const-string v3, "user"

    invoke-virtual {v4, v3}, Lfr/testudo/spacecorsair/mod/ModLobby$Reply;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v6, "pass"

    invoke-virtual {v4, v6}, Lfr/testudo/spacecorsair/mod/ModLobby$Reply;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, p0, v5, v3, v4}, Lfr/testudo/spacecorsair/mod/ModNet$Turn;-><init>(Lfr/testudo/spacecorsair/mod/ModNet$Wire;Ljava/net/InetSocketAddress;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_9b
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_9b} :catch_af

    .line 225
    :goto_9b
    if-ge v2, v8, :cond_37

    .line 226
    :try_start_9d
    invoke-virtual {v1}, Lfr/testudo/spacecorsair/mod/ModNet$Turn;->allocate()V
    :try_end_a0
    .catch Ljava/io/IOException; {:try_start_9d .. :try_end_a0} :catch_a6
    .catch Ljava/lang/Throwable; {:try_start_9d .. :try_end_a0} :catch_af

    move-object v0, v1

    goto :goto_37

    .line 222
    :cond_a2
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_70

    .line 226
    :catch_a6
    move-exception v3

    const-wide/16 v4, 0x5dc

    :try_start_a9
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_ac
    .catch Ljava/lang/Throwable; {:try_start_a9 .. :try_end_ac} :catch_af

    .line 225
    add-int/lit8 v2, v2, 0x1

    goto :goto_9b

    .line 228
    :catch_af
    move-exception v1

    goto :goto_37

    :cond_b1
    move-object v3, v0

    goto :goto_79
.end method

.method static report(Ljava/lang/String;Ljava/lang/Runnable;)V
    .registers 5

    .prologue
    .line 543
    sget-boolean v0, Lfr/testudo/spacecorsair/mod/ModLobby;->hosting:Z

    if-eqz v0, :cond_16

    sget-object v0, Lfr/testudo/spacecorsair/mod/ModLobby;->code:Ljava/lang/String;

    .line 544
    :goto_6
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lfr/testudo/spacecorsair/mod/ModLobby$7;

    invoke-direct {v2, v0, p0, p1}, Lfr/testudo/spacecorsair/mod/ModLobby$7;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;)V

    const-string v0, "lobby-report"

    invoke-direct {v1, v2, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 550
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 551
    return-void

    .line 543
    :cond_16
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModLobby;->joinedCode:Ljava/lang/String;

    goto :goto_6
.end method

.method private static reportRelay()V
    .registers 8

    .prologue
    .line 500
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModLobby;->link:Lfr/testudo/spacecorsair/mod/ModNet$Link;

    .line 501
    if-nez v0, :cond_5

    .line 505
    :cond_4
    :goto_4
    return-void

    .line 502
    :cond_5
    iget-object v0, v0, Lfr/testudo/spacecorsair/mod/ModNet$Link;->w:Lfr/testudo/spacecorsair/mod/ModNet$Wire;

    iget-object v0, v0, Lfr/testudo/spacecorsair/mod/ModNet$Wire;->turn:Lfr/testudo/spacecorsair/mod/ModNet$Turn;

    .line 503
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 504
    if-eqz v0, :cond_4

    sget-wide v4, Lfr/testudo/spacecorsair/mod/ModLobby;->relayReported:J

    sub-long v4, v2, v4

    const-wide/32 v6, 0xea60

    cmp-long v1, v4, v6

    if-lez v1, :cond_4

    sput-wide v2, Lfr/testudo/spacecorsair/mod/ModLobby;->relayReported:J

    const-string v1, "lobby"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "relayed bytes "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v4, v0, Lfr/testudo/spacecorsair/mod/ModNet$Turn;->bytes:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lfr/testudo/spacecorsair/mod/ModDev;->ev(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4
.end method

.method static saverPref()Z
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 126
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
    .line 237
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
    .line 124
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
    .line 128
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
    .line 468
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lfr/testudo/spacecorsair/mod/ModLobby$4;

    invoke-direct {v1, p0, p1}, Lfr/testudo/spacecorsair/mod/ModLobby$4;-><init>(J)V

    const-string v2, "lobby-guest"

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 479
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 480
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 481
    return-void
.end method

.method private static stillHost(J)Z
    .registers 6

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 262
    sget-wide v2, Lfr/testudo/spacecorsair/mod/ModLobby;->gen:J

    cmp-long v2, p0, v2

    if-eqz v2, :cond_9

    .line 265
    :goto_8
    return v1

    .line 263
    :cond_9
    sget-boolean v2, Lfr/testudo/spacecorsair/mod/ModLan;->internet:Z

    if-eqz v2, :cond_13

    sget v2, Lfr/testudo/spacecorsair/mod/ModLan;->role:I

    if-ne v2, v0, :cond_13

    move v1, v0

    goto :goto_8

    .line 264
    :cond_13
    const-wide/16 v2, 0x190

    :try_start_15
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_18
    .catch Ljava/lang/InterruptedException; {:try_start_15 .. :try_end_18} :catch_2a

    .line 265
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

    .line 264
    :catch_2a
    move-exception v0

    goto :goto_8
.end method
