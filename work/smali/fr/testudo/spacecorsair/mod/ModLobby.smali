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
.field static final BEAT_FAST_FOR_MS:I = 0x1d4c0

.field static final BEAT_FULL_MS:I = 0x7530

.field static final BEAT_MS:I = 0x1f40

.field static final BEAT_SLOW_MS:I = 0x4e20

.field static DEBUG:Z = false

.field static final PUBLIC_ON:Z = true

.field static final RELAY_SESSION_BYTES:J = 0x9600000L

.field static final SERVICE:Ljava/lang/String; = "https://sc-rendezvous.spacecs-coop.workers.dev"

.field static final STUN:[[Ljava/lang/String;

.field private static volatile budgetBase:J

.field private static volatile budgetLink:Lfr/testudo/spacecorsair/mod/ModNet$Link;

.field static volatile busy:Z

.field static volatile code:Ljava/lang/String;

.field private static volatile devAutoSent:Z

.field private static volatile devKeyCache:Ljava/lang/String;

.field private static volatile devKeyRead:Z

.field private static volatile gen:J

.field static volatile hosting:Z

.field private static volatile joinedCode:Ljava/lang/String;

.field private static volatile link:Lfr/testudo/spacecorsair/mod/ModNet$Link;

.field private static volatile openedAt:J

.field static volatile peerDev:Z

.field private static volatile peerId:Ljava/lang/String;

.field static volatile pub:Z

.field static volatile relayFull:Z

.field private static volatile relayReported:J

.field private static retryMs:J

.field private static volatile sampleCode:Ljava/lang/String;

.field static volatile status:Ljava/lang/String;

.field private static volatile switchUsed:Z

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

    .line 33
    const-wide/16 v0, 0x1388

    sput-wide v0, Lfr/testudo/spacecorsair/mod/ModLobby;->retryMs:J

    .line 261
    const-string v0, ""

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModLobby;->code:Ljava/lang/String;

    const-string v0, ""

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModLobby;->status:Ljava/lang/String;

    .line 263
    const-string v0, ""

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModLobby;->token:Ljava/lang/String;

    .line 267
    const-string v0, ""

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModLobby;->peerId:Ljava/lang/String;

    const-string v0, ""

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModLobby;->joinedCode:Ljava/lang/String;

    .line 273
    const-string v0, ""

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModLobby;->sampleCode:Ljava/lang/String;

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
    const/16 v4, 0x8

    const/4 v1, 0x0

    .line 496
    .line 498
    const/4 v0, 0x2

    :try_start_4
    aget-object v0, p3, v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 499
    const/4 v0, 0x3

    aget-object v0, p3, v0

    const/16 v3, 0x20

    invoke-static {v0, v3}, Lfr/testudo/spacecorsair/mod/ModLan;->clean(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v8

    .line 500
    array-length v0, p3

    if-le v0, v4, :cond_63

    const-string v0, "1"

    const/16 v3, 0x8

    aget-object v3, p3, v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_63

    const/4 v0, 0x1

    :goto_23
    sput-boolean v0, Lfr/testudo/spacecorsair/mod/ModLobby;->peerDev:Z

    .line 501
    new-instance v0, Lfr/testudo/spacecorsair/mod/ModNet$Link;

    invoke-direct {v0, p2, v2}, Lfr/testudo/spacecorsair/mod/ModNet$Link;-><init>(Lfr/testudo/spacecorsair/mod/ModNet$Wire;I)V
    :try_end_2a
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_2a} :catch_a7

    .line 502
    :try_start_2a
    const-string v1, "A player is connecting..."

    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lfr/testudo/spacecorsair/mod/ModLobby;->status:Ljava/lang/String;

    .line 503
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

    .line 504
    if-eqz v1, :cond_51

    sget-wide v2, Lfr/testudo/spacecorsair/mod/ModLobby;->gen:J

    cmp-long v1, p0, v2

    if-eqz v1, :cond_65

    :cond_51
    invoke-virtual {v0}, Lfr/testudo/spacecorsair/mod/ModNet$Link;->abandon()V

    sget-wide v2, Lfr/testudo/spacecorsair/mod/ModLobby;->gen:J

    cmp-long v1, p0, v2

    if-nez v1, :cond_62

    const-string v1, "Waiting for a player to join..."

    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lfr/testudo/spacecorsair/mod/ModLobby;->status:Ljava/lang/String;

    .line 516
    :cond_62
    :goto_62
    return-void

    .line 500
    :cond_63
    const/4 v0, 0x0

    goto :goto_23

    .line 505
    :cond_65
    sput-object v8, Lfr/testudo/spacecorsair/mod/ModLobby;->peerId:Ljava/lang/String;

    .line 506
    sput-object v0, Lfr/testudo/spacecorsair/mod/ModLobby;->link:Lfr/testudo/spacecorsair/mod/ModNet$Link;

    .line 507
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLobby;->applySaver()V

    .line 508
    invoke-static {v0, v8}, Lfr/testudo/spacecorsair/mod/ModLan;->acceptNet(Ljava/net/Socket;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_92

    .line 509
    const/4 v1, 0x0

    sput-object v1, Lfr/testudo/spacecorsair/mod/ModLobby;->link:Lfr/testudo/spacecorsair/mod/ModNet$Link;

    .line 510
    invoke-virtual {v0}, Lfr/testudo/spacecorsair/mod/ModNet$Link;->close()V

    .line 512
    :cond_78
    :goto_78
    sget-wide v2, Lfr/testudo/spacecorsair/mod/ModLobby;->gen:J

    cmp-long v1, p0, v2

    if-nez v1, :cond_62

    sget-boolean v1, Lfr/testudo/spacecorsair/mod/ModLan;->connected:Z

    if-nez v1, :cond_62

    const-string v1, "Waiting for a player to join..."

    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lfr/testudo/spacecorsair/mod/ModLobby;->status:Ljava/lang/String;
    :try_end_8a
    .catch Ljava/lang/Throwable; {:try_start_2a .. :try_end_8a} :catch_8b

    goto :goto_62

    .line 513
    :catch_8b
    move-exception v1

    .line 514
    :goto_8c
    if-eqz v0, :cond_62

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/mod/ModNet$Link;->abandon()V

    goto :goto_62

    .line 511
    :cond_92
    :try_start_92
    invoke-virtual {v0}, Lfr/testudo/spacecorsair/mod/ModNet$Link;->relayed()Z

    move-result v1

    if-nez v1, :cond_78

    iget-object v1, p2, Lfr/testudo/spacecorsair/mod/ModNet$Wire;->turn:Lfr/testudo/spacecorsair/mod/ModNet$Turn;

    if-eqz v1, :cond_78

    if-nez p4, :cond_78

    iget-object v1, p2, Lfr/testudo/spacecorsair/mod/ModNet$Wire;->turn:Lfr/testudo/spacecorsair/mod/ModNet$Turn;

    invoke-virtual {v1}, Lfr/testudo/spacecorsair/mod/ModNet$Turn;->close()V

    const/4 v1, 0x0

    iput-object v1, p2, Lfr/testudo/spacecorsair/mod/ModNet$Wire;->turn:Lfr/testudo/spacecorsair/mod/ModNet$Turn;
    :try_end_a6
    .catch Ljava/lang/Throwable; {:try_start_92 .. :try_end_a6} :catch_8b

    goto :goto_78

    .line 513
    :catch_a7
    move-exception v0

    move-object v0, v1

    goto :goto_8c
.end method

.method static synthetic access$000(Lfr/testudo/spacecorsair/mod/ModLobby$Reply;)V
    .registers 1

    .prologue
    .line 27
    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModLobby;->setSelfDev(Lfr/testudo/spacecorsair/mod/ModLobby$Reply;)V

    return-void
.end method

.method static synthetic access$102(Z)Z
    .registers 1

    .prologue
    .line 27
    sput-boolean p0, Lfr/testudo/spacecorsair/mod/ModLobby;->devAutoSent:Z

    return p0
.end method

.method static synthetic access$200(J)V
    .registers 2

    .prologue
    .line 27
    invoke-static {p0, p1}, Lfr/testudo/spacecorsair/mod/ModLobby;->hostLoop(J)V

    return-void
.end method

.method static synthetic access$300(JLfr/testudo/spacecorsair/mod/ModNet$Wire;[Ljava/lang/String;Z)V
    .registers 5

    .prologue
    .line 27
    invoke-static {p0, p1, p2, p3, p4}, Lfr/testudo/spacecorsair/mod/ModLobby;->accept(JLfr/testudo/spacecorsair/mod/ModNet$Wire;[Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic access$400()J
    .registers 2

    .prologue
    .line 27
    sget-wide v0, Lfr/testudo/spacecorsair/mod/ModLobby;->gen:J

    return-wide v0
.end method

.method static synthetic access$500()V
    .registers 0

    .prologue
    .line 27
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLobby;->reportRelay()V

    return-void
.end method

.method static synthetic access$600()Ljava/lang/String;
    .registers 1

    .prologue
    .line 27
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModLobby;->peerId:Ljava/lang/String;

    return-object v0
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
    .line 318
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 319
    if-nez p0, :cond_8

    .line 324
    :cond_7
    return-object v0

    .line 320
    :cond_8
    const-string v1, ","

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    array-length v3, v2

    const/4 v1, 0x0

    :goto_10
    if-ge v1, v3, :cond_7

    aget-object v4, v2, v1

    .line 321
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lfr/testudo/spacecorsair/mod/ModNet;->parse(Ljava/lang/String;)Ljava/net/InetSocketAddress;

    move-result-object v4

    .line 322
    if-eqz v4, :cond_29

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/16 v6, 0x18

    if-ge v5, v6, :cond_29

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 320
    :cond_29
    add-int/lit8 v1, v1, 0x1

    goto :goto_10
.end method

.method static applySaver()V
    .registers 2

    .prologue
    .line 235
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModLobby;->link:Lfr/testudo/spacecorsair/mod/ModNet$Link;

    .line 236
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

    .line 237
    return-void

    .line 236
    :cond_1a
    const/4 v0, 0x0

    goto :goto_17
.end method

.method static autoDev()V
    .registers 3

    .prologue
    .line 156
    :try_start_0
    sget-boolean v0, Lfr/testudo/spacecorsair/mod/ModLobby;->devAutoSent:Z

    if-nez v0, :cond_17

    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLobby;->devBuild()Z

    move-result v0

    if-eqz v0, :cond_17

    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLobby;->prefs()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "dev_ok"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 162
    :cond_17
    :goto_17
    return-void

    .line 157
    :cond_18
    const/4 v0, 0x1

    sput-boolean v0, Lfr/testudo/spacecorsair/mod/ModLobby;->devAutoSent:Z

    .line 158
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLobby;->devKey()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLobby;->registerDev(Ljava/lang/String;)V
    :try_end_22
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_22} :catch_23

    goto :goto_17

    .line 159
    :catch_23
    move-exception v0

    goto :goto_17
.end method

.method static available()Z
    .registers 1

    .prologue
    .line 39
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
    .line 87
    const/4 v1, 0x0

    .line 89
    :try_start_1
    invoke-static {p2}, Lfr/testudo/spacecorsair/mod/ModLobby;->form([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 90
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

    .line 91
    invoke-virtual {v3}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;
    :try_end_48
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_48} :catch_e5
    .catchall {:try_start_1 .. :try_end_48} :catchall_d4

    .line 92
    const/16 v1, 0x1770

    :try_start_4a
    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 93
    const/16 v1, 0x1770

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 94
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    .line 95
    invoke-virtual {v0, p0}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 96
    const-string v1, "POST"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_80

    .line 97
    const-string v1, "UTF-8"

    invoke-virtual {v2, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    .line 98
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 99
    const-string v2, "Content-Type"

    const-string v3, "application/x-www-form-urlencoded"

    invoke-virtual {v0, v2, v3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    array-length v2, v1

    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setFixedLengthStreamingMode(I)V

    .line 101
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    .line 102
    invoke-virtual {v2, v1}, Ljava/io/OutputStream;->write([B)V

    .line 103
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V

    .line 105
    :cond_80
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v2

    .line 106
    const/16 v1, 0x190

    if-lt v2, v1, :cond_bb

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v1

    .line 107
    :goto_8c
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 108
    if-eqz v1, :cond_c3

    .line 109
    const/16 v4, 0x1000

    new-array v4, v4, [B

    .line 111
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

    .line 115
    :catch_aa
    move-exception v1

    move-object v1, v0

    .line 116
    :goto_ac
    :try_start_ac
    new-instance v0, Lfr/testudo/spacecorsair/mod/ModLobby$Reply;

    invoke-direct {v0}, Lfr/testudo/spacecorsair/mod/ModLobby$Reply;-><init>()V
    :try_end_b1
    .catchall {:try_start_ac .. :try_end_b1} :catchall_e1

    .line 118
    if-eqz v1, :cond_b6

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 116
    :cond_b6
    :goto_b6
    return-object v0

    .line 90
    :cond_b7
    :try_start_b7
    const-string v0, ""
    :try_end_b9
    .catch Ljava/lang/Throwable; {:try_start_b7 .. :try_end_b9} :catch_e5
    .catchall {:try_start_b7 .. :try_end_b9} :catchall_d4

    goto/16 :goto_37

    .line 106
    :cond_bb
    :try_start_bb
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    goto :goto_8c

    .line 112
    :cond_c0
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 114
    :cond_c3
    const-string v1, "UTF-8"

    invoke-virtual {v3, v1}, Ljava/io/ByteArrayOutputStream;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v2}, Lfr/testudo/spacecorsair/mod/ModLobby;->parse(Ljava/lang/String;I)Lfr/testudo/spacecorsair/mod/ModLobby$Reply;
    :try_end_cc
    .catch Ljava/lang/Throwable; {:try_start_bb .. :try_end_cc} :catch_aa
    .catchall {:try_start_bb .. :try_end_cc} :catchall_dd

    move-result-object v1

    .line 118
    if-eqz v0, :cond_d2

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_d2
    move-object v0, v1

    .line 114
    goto :goto_b6

    .line 118
    :catchall_d4
    move-exception v0

    move-object v2, v0

    move-object v3, v1

    :goto_d7
    if-eqz v3, :cond_dc

    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 119
    :cond_dc
    throw v2

    .line 118
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

    .line 115
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

    .line 302
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 303
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 304
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

    .line 305
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

    .line 306
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

    .line 307
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

    .line 308
    invoke-virtual {v4}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v1

    invoke-virtual {v5}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v5

    invoke-static {v1, v5}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 309
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

    .line 311
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

    .line 312
    :cond_d1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 313
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

    .line 314
    :cond_f5
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static devBuild()Z
    .registers 1

    .prologue
    .line 149
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLobby;->devKey()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method static devGear()Z
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 184
    :try_start_1
    sget-object v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v1, v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v1, v1, Lfr/testudo/spacecorsair/game/Game;->playerInfo:Lfr/testudo/spacecorsair/business/player/PlayerInfo;

    iget-object v1, v1, Lfr/testudo/spacecorsair/business/player/PlayerInfo;->playerGear:Lfr/testudo/spacecorsair/business/player/PlayerGear;

    .line 185
    iget-object v2, v1, Lfr/testudo/spacecorsair/business/player/PlayerGear;->playerShip:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModDev;->isDev(Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)Z

    move-result v2

    if-nez v2, :cond_29

    iget-object v2, v1, Lfr/testudo/spacecorsair/business/player/PlayerGear;->laser:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModDev;->isDev(Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)Z

    move-result v2

    if-nez v2, :cond_29

    iget-object v2, v1, Lfr/testudo/spacecorsair/business/player/PlayerGear;->missile:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModDev;->isDev(Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)Z

    move-result v2

    if-nez v2, :cond_29

    iget-object v1, v1, Lfr/testudo/spacecorsair/business/player/PlayerGear;->shield:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModDev;->isDev(Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)Z
    :try_end_26
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_26} :catch_2b

    move-result v1

    if-eqz v1, :cond_2a

    :cond_29
    const/4 v0, 0x1

    .line 187
    :cond_2a
    :goto_2a
    return v0

    .line 186
    :catch_2b
    move-exception v1

    goto :goto_2a
.end method

.method static devKey()Ljava/lang/String;
    .registers 5

    .prologue
    const/4 v1, 0x0

    .line 135
    sget-boolean v0, Lfr/testudo/spacecorsair/mod/ModLobby;->devKeyRead:Z

    if-eqz v0, :cond_8

    sget-object v0, Lfr/testudo/spacecorsair/mod/ModLobby;->devKeyCache:Ljava/lang/String;

    .line 146
    :goto_7
    return-object v0

    .line 138
    :cond_8
    :try_start_8
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/Game;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const-string v2, "corsair_dev.key"

    invoke-virtual {v0, v2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;
    :try_end_17
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_17} :catch_46

    move-result-object v2

    .line 139
    :try_start_18
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/InputStreamReader;

    const-string v4, "UTF-8"

    invoke-direct {v3, v2, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v0, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_27
    .catchall {:try_start_18 .. :try_end_27} :catchall_41

    move-result-object v0

    :try_start_28
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_2b
    .catch Ljava/lang/Throwable; {:try_start_28 .. :try_end_2b} :catch_46

    .line 140
    if-nez v0, :cond_49

    move-object v0, v1

    .line 144
    :goto_2e
    if-eqz v0, :cond_39

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x10

    if-lt v2, v3, :cond_39

    move-object v1, v0

    :cond_39
    sput-object v1, Lfr/testudo/spacecorsair/mod/ModLobby;->devKeyCache:Ljava/lang/String;

    .line 145
    const/4 v0, 0x1

    sput-boolean v0, Lfr/testudo/spacecorsair/mod/ModLobby;->devKeyRead:Z

    .line 146
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModLobby;->devKeyCache:Ljava/lang/String;

    goto :goto_7

    .line 139
    :catchall_41
    move-exception v0

    :try_start_42
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    throw v0

    .line 141
    :catch_46
    move-exception v0

    move-object v0, v1

    .line 142
    goto :goto_2e

    .line 140
    :cond_49
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;
    :try_end_4c
    .catch Ljava/lang/Throwable; {:try_start_42 .. :try_end_4c} :catch_46

    move-result-object v0

    goto :goto_2e
.end method

.method static varargs form([Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    .prologue
    .line 74
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 76
    const/4 v0, 0x0

    :goto_6
    add-int/lit8 v2, v0, 0x1

    :try_start_8
    array-length v3, p0

    if-ge v2, v3, :cond_3a

    .line 77
    add-int/lit8 v2, v0, 0x1

    aget-object v2, p0, v2

    if-nez v2, :cond_14

    .line 76
    :goto_11
    add-int/lit8 v0, v0, 0x2

    goto :goto_6

    .line 78
    :cond_14
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-lez v2, :cond_1f

    const/16 v2, 0x26

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 79
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

    .line 81
    :catch_39
    move-exception v0

    .line 82
    :cond_3a
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static hideIp()Z
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 225
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

    .line 368
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLobby;->available()Z

    move-result v0

    if-nez v0, :cond_8

    .line 382
    :goto_7
    return-void

    .line 369
    :cond_8
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLobby;->onlineBlock()Ljava/lang/String;

    move-result-object v0

    .line 370
    if-eqz v0, :cond_11

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModLobby;->status:Ljava/lang/String;

    goto :goto_7

    .line 371
    :cond_11
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLobby;->leave()V

    .line 372
    sget-wide v2, Lfr/testudo/spacecorsair/mod/ModLobby;->gen:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    sput-wide v2, Lfr/testudo/spacecorsair/mod/ModLobby;->gen:J

    .line 373
    sput-boolean v1, Lfr/testudo/spacecorsair/mod/ModLobby;->hosting:Z

    .line 374
    if-eqz p0, :cond_46

    move v0, v1

    :goto_20
    sput-boolean v0, Lfr/testudo/spacecorsair/mod/ModLobby;->pub:Z

    .line 375
    sput-boolean v1, Lfr/testudo/spacecorsair/mod/ModLobby;->busy:Z

    .line 376
    const-string v0, ""

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModLobby;->code:Ljava/lang/String;

    .line 377
    const-string v0, "Opening the game..."

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModLobby;->status:Ljava/lang/String;

    .line 378
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLan;->hostNet()V

    .line 379
    new-instance v0, Ljava/lang/Thread;

    new-instance v4, Lfr/testudo/spacecorsair/mod/ModLobby$2;

    invoke-direct {v4, v2, v3}, Lfr/testudo/spacecorsair/mod/ModLobby$2;-><init>(J)V

    const-string v2, "lobby-host"

    invoke-direct {v0, v4, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 380
    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 381
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_7

    .line 374
    :cond_46
    const/4 v0, 0x0

    goto :goto_20
.end method

.method private static hostLoop(J)V
    .registers 26

    .prologue
    .line 392
    const-string v4, ""

    const-string v3, ""

    .line 393
    const/4 v6, 0x0

    .line 394
    const/4 v7, 0x0

    .line 395
    const-string v2, ""

    .line 396
    new-instance v22, Ljava/util/HashSet;

    invoke-direct/range {v22 .. v22}, Ljava/util/HashSet;-><init>()V

    .line 397
    const/4 v5, 0x1

    new-array v9, v5, [Z

    const/4 v5, 0x0

    const/4 v8, 0x0

    aput-boolean v8, v9, v5

    .line 398
    const/4 v8, 0x0

    .line 399
    const/4 v5, 0x0

    .line 400
    const-wide/16 v12, 0x0

    const-wide/16 v10, 0x7530

    move-wide v14, v10

    move-wide/from16 v16, v12

    move/from16 v18, v5

    move/from16 v19, v8

    .line 402
    :goto_21
    :try_start_21
    invoke-static/range {p0 .. p1}, Lfr/testudo/spacecorsair/mod/ModLobby;->stillHost(J)Z

    move-result v5

    if-eqz v5, :cond_1a4

    .line 403
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLobby;->hideIp()Z

    move-result v8

    .line 404
    if-eqz v6, :cond_31

    iget-boolean v5, v6, Lfr/testudo/spacecorsair/mod/ModNet$Wire;->closed:Z

    if-eqz v5, :cond_4a1

    .line 405
    :cond_31
    new-instance v7, Lfr/testudo/spacecorsair/mod/ModNet$Wire;

    const/4 v2, 0x0

    invoke-direct {v7, v2}, Lfr/testudo/spacecorsair/mod/ModNet$Wire;-><init>(I)V
    :try_end_37
    .catch Ljava/lang/Throwable; {:try_start_21 .. :try_end_37} :catch_493

    .line 406
    :try_start_37
    sput-object v7, Lfr/testudo/spacecorsair/mod/ModLobby;->wire:Lfr/testudo/spacecorsair/mod/ModNet$Wire;

    .line 407
    const/4 v10, 0x0

    .line 408
    if-eqz v8, :cond_139

    const-string v2, ""
    :try_end_3e
    .catch Ljava/lang/Throwable; {:try_start_37 .. :try_end_3e} :catch_499

    :goto_3e
    move-object v5, v2

    move-object v12, v10

    move-object v6, v7

    .line 410
    :goto_41
    :try_start_41
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_49d

    .line 411
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

    .line 412
    sget-boolean v2, Lfr/testudo/spacecorsair/mod/ModLobby;->pub:Z

    if-eqz v2, :cond_13f

    const-string v2, "1"

    :goto_8d
    aput-object v2, v11, v13

    const/16 v2, 0xa

    const-string v13, "clean"

    aput-object v13, v11, v2

    const/16 v13, 0xb

    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModSaveSig;->publicOk()Z

    move-result v2

    if-eqz v2, :cond_143

    const-string v2, "1"

    :goto_9f
    aput-object v2, v11, v13

    const/16 v2, 0xc

    const-string v13, "pvp"

    aput-object v13, v11, v2

    const/16 v13, 0xd

    sget-boolean v2, Lfr/testudo/spacecorsair/mod/ModLan;->pvpRoom:Z

    if-eqz v2, :cond_147

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

    .line 413
    if-eqz v8, :cond_14b

    const-string v2, "1"

    :goto_e3
    aput-object v2, v11, v13

    .line 411
    invoke-static {v7, v10, v11}, Lfr/testudo/spacecorsair/mod/ModLobby;->call(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lfr/testudo/spacecorsair/mod/ModLobby$Reply;

    move-result-object v2

    .line 414
    invoke-virtual {v2}, Lfr/testudo/spacecorsair/mod/ModLobby$Reply;->ok()Z

    move-result v7

    if-eqz v7, :cond_fc

    const-string v7, "code"

    invoke-virtual {v2, v7}, Lfr/testudo/spacecorsair/mod/ModLobby$Reply;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    const/4 v10, 0x4

    if-eq v7, v10, :cond_14e

    .line 415
    :cond_fc
    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModLobby;->refusal(Lfr/testudo/spacecorsair/mod/ModLobby$Reply;)Ljava/lang/String;

    move-result-object v7

    sput-object v7, Lfr/testudo/spacecorsair/mod/ModLobby;->status:Ljava/lang/String;

    .line 416
    const/4 v7, 0x0

    sput-boolean v7, Lfr/testudo/spacecorsair/mod/ModLobby;->busy:Z

    .line 417
    iget v7, v2, Lfr/testudo/spacecorsair/mod/ModLobby$Reply;->status:I

    if-eqz v7, :cond_11f

    iget v7, v2, Lfr/testudo/spacecorsair/mod/ModLobby$Reply;->status:I

    const/16 v8, 0x1f4

    if-ge v7, v8, :cond_11f

    const-string v7, "busy"

    iget-object v8, v2, Lfr/testudo/spacecorsair/mod/ModLobby$Reply;->first:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_11f

    iget v2, v2, Lfr/testudo/spacecorsair/mod/ModLobby$Reply;->status:I

    const/16 v7, 0x1ad

    if-ne v2, v7, :cond_1a4

    .line 418
    :cond_11f
    sget-wide v10, Lfr/testudo/spacecorsair/mod/ModLobby;->retryMs:J

    invoke-static {v10, v11}, Ljava/lang/Thread;->sleep(J)V

    .line 419
    sget-wide v10, Lfr/testudo/spacecorsair/mod/ModLobby;->retryMs:J

    const-wide/16 v20, 0x2

    mul-long v10, v10, v20

    const-wide/32 v20, 0x493e0

    move-wide/from16 v0, v20

    invoke-static {v10, v11, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v10

    sput-wide v10, Lfr/testudo/spacecorsair/mod/ModLobby;->retryMs:J
    :try_end_135
    .catch Ljava/lang/Throwable; {:try_start_41 .. :try_end_135} :catch_493

    move-object v2, v5

    move-object v7, v12

    .line 420
    goto/16 :goto_21

    .line 408
    :cond_139
    :try_start_139
    invoke-static {v7}, Lfr/testudo/spacecorsair/mod/ModLobby;->candidates(Lfr/testudo/spacecorsair/mod/ModNet$Wire;)Ljava/lang/String;
    :try_end_13c
    .catch Ljava/lang/Throwable; {:try_start_139 .. :try_end_13c} :catch_499

    move-result-object v2

    goto/16 :goto_3e

    .line 412
    :cond_13f
    :try_start_13f
    const-string v2, "0"

    goto/16 :goto_8d

    :cond_143
    const-string v2, "0"

    goto/16 :goto_9f

    :cond_147
    const-string v2, "0"

    goto/16 :goto_af

    .line 413
    :cond_14b
    const-string v2, "0"

    goto :goto_e3

    .line 424
    :cond_14e
    const-wide/16 v10, 0x1388

    sput-wide v10, Lfr/testudo/spacecorsair/mod/ModLobby;->retryMs:J

    .line 425
    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModLobby;->setSelfDev(Lfr/testudo/spacecorsair/mod/ModLobby$Reply;)V

    .line 426
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLobby;->onlineBlock()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_240

    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLobby;->onlineBlock()Ljava/lang/String;

    move-result-object v5

    sput-object v5, Lfr/testudo/spacecorsair/mod/ModLobby;->status:Ljava/lang/String;

    const-string v5, "POST"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "/lobby/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "code"

    invoke-virtual {v2, v8}, Lfr/testudo/spacecorsair/mod/ModLobby$Reply;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x4

    invoke-static {v8, v9}, Lfr/testudo/spacecorsair/mod/ModLan;->clean(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "/close"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    const-string v10, "token"

    aput-object v10, v8, v9

    const/4 v9, 0x1

    const-string v10, "token"

    invoke-virtual {v2, v10}, Lfr/testudo/spacecorsair/mod/ModLobby$Reply;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/16 v10, 0x40

    invoke-static {v2, v10}, Lfr/testudo/spacecorsair/mod/ModLan;->clean(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v8, v9

    invoke-static {v5, v7, v8}, Lfr/testudo/spacecorsair/mod/ModLobby;->call(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lfr/testudo/spacecorsair/mod/ModLobby$Reply;

    const/4 v2, 0x0

    sput-boolean v2, Lfr/testudo/spacecorsair/mod/ModLobby;->busy:Z
    :try_end_1a4
    .catch Ljava/lang/Throwable; {:try_start_13f .. :try_end_1a4} :catch_493

    :cond_1a4
    move-object v2, v3

    .line 482
    :cond_1a5
    :goto_1a5
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_1d4

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

    .line 483
    :cond_1d4
    sget-boolean v2, Lfr/testudo/spacecorsair/mod/ModLobby;->DEBUG:Z

    if-eqz v2, :cond_216

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

    .line 484
    :cond_216
    sget-wide v2, Lfr/testudo/spacecorsair/mod/ModLobby;->gen:J

    cmp-long v2, p0, v2

    if-nez v2, :cond_236

    .line 485
    const/4 v2, 0x0

    sput-boolean v2, Lfr/testudo/spacecorsair/mod/ModLobby;->hosting:Z

    .line 486
    const/4 v2, 0x0

    sput-boolean v2, Lfr/testudo/spacecorsair/mod/ModLobby;->busy:Z

    .line 487
    const-string v2, ""

    sput-object v2, Lfr/testudo/spacecorsair/mod/ModLobby;->code:Ljava/lang/String;

    .line 488
    sget-boolean v2, Lfr/testudo/spacecorsair/mod/ModLan;->internet:Z

    if-eqz v2, :cond_236

    sget v2, Lfr/testudo/spacecorsair/mod/ModLan;->role:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_236

    sget-boolean v2, Lfr/testudo/spacecorsair/mod/ModLan;->connected:Z

    if-nez v2, :cond_236

    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLan;->stop()V

    .line 491
    :cond_236
    if-eqz v6, :cond_23f

    sget-boolean v2, Lfr/testudo/spacecorsair/mod/ModLan;->connected:Z

    if-nez v2, :cond_23f

    invoke-virtual {v6}, Lfr/testudo/spacecorsair/mod/ModNet$Wire;->close()V

    .line 492
    :cond_23f
    return-void

    .line 427
    :cond_240
    :try_start_240
    const-string v7, "code"

    invoke-virtual {v2, v7}, Lfr/testudo/spacecorsair/mod/ModLobby$Reply;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const/4 v10, 0x4

    invoke-static {v7, v10}, Lfr/testudo/spacecorsair/mod/ModLan;->clean(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    .line 428
    const-string v7, "token"

    invoke-virtual {v2, v7}, Lfr/testudo/spacecorsair/mod/ModLobby$Reply;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/16 v7, 0x40

    invoke-static {v2, v7}, Lfr/testudo/spacecorsair/mod/ModLan;->clean(Ljava/lang/String;I)Ljava/lang/String;
    :try_end_256
    .catch Ljava/lang/Throwable; {:try_start_240 .. :try_end_256} :catch_493

    move-result-object v2

    .line 429
    :try_start_257
    sput-object v4, Lfr/testudo/spacecorsair/mod/ModLobby;->code:Ljava/lang/String;

    .line 430
    sput-object v2, Lfr/testudo/spacecorsair/mod/ModLobby;->token:Ljava/lang/String;

    .line 431
    sput-object v4, Lfr/testudo/spacecorsair/mod/ModLobby;->sampleCode:Ljava/lang/String;

    .line 432
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    sput-wide v10, Lfr/testudo/spacecorsair/mod/ModLobby;->openedAt:J

    .line 433
    const/4 v3, 0x0

    sput-boolean v3, Lfr/testudo/spacecorsair/mod/ModLobby;->busy:Z

    .line 434
    const-string v3, "Waiting for a player to join..."

    invoke-static {v3}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lfr/testudo/spacecorsair/mod/ModLobby;->status:Ljava/lang/String;

    .line 435
    const-string v7, "lobby"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "hosting "

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    sget-boolean v3, Lfr/testudo/spacecorsair/mod/ModLobby;->pub:Z

    if-eqz v3, :cond_386

    const-string v3, "public"

    :goto_281
    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v7, v3}, Lfr/testudo/spacecorsair/mod/ModDev;->ev(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_28c
    .catch Ljava/lang/Throwable; {:try_start_257 .. :try_end_28c} :catch_496

    move-object v10, v2

    move-object v11, v4

    .line 437
    :goto_28e
    if-eqz v8, :cond_4a5

    if-nez v12, :cond_4a5

    :try_start_292
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    cmp-long v2, v2, v16

    if-ltz v2, :cond_4a5

    .line 438
    invoke-static {v6, v11, v10}, Lfr/testudo/spacecorsair/mod/ModLobby;->relay(Lfr/testudo/spacecorsair/mod/ModNet$Wire;Ljava/lang/String;Ljava/lang/String;)Lfr/testudo/spacecorsair/mod/ModNet$Turn;

    move-result-object v12

    .line 439
    if-nez v12, :cond_38a

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    add-long v16, v2, v14

    const-wide/16 v2, 0x2

    mul-long/2addr v2, v14

    const-wide/32 v14, 0x927c0

    invoke-static {v2, v3, v14, v15}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v14

    move-object/from16 v21, v12

    .line 442
    :goto_2b2
    sget-boolean v13, Lfr/testudo/spacecorsair/mod/ModLan;->connected:Z

    .line 443
    if-eqz v19, :cond_2c1

    if-nez v13, :cond_2c1

    invoke-virtual/range {v22 .. v22}, Ljava/util/HashSet;->clear()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sput-wide v2, Lfr/testudo/spacecorsair/mod/ModLobby;->openedAt:J

    .line 445
    :cond_2c1
    if-nez v13, :cond_4a9

    const/4 v2, 0x0

    aget-boolean v2, v9, v2

    if-nez v2, :cond_4a9

    add-int/lit8 v18, v18, 0x1

    rem-int/lit8 v2, v18, 0x2

    if-nez v2, :cond_4a9

    if-nez v8, :cond_4a9

    invoke-static {v6}, Lfr/testudo/spacecorsair/mod/ModLobby;->candidates(Lfr/testudo/spacecorsair/mod/ModNet$Wire;)Ljava/lang/String;

    move-result-object v5

    move/from16 v12, v18

    move-object/from16 v20, v5

    .line 446
    :goto_2d8
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

    if-eqz v13, :cond_390

    const-string v2, "1"

    :goto_309
    aput-object v2, v5, v7

    const/4 v2, 0x4

    const-string v7, "pvp"

    aput-object v7, v5, v2

    const/4 v7, 0x5

    sget-boolean v2, Lfr/testudo/spacecorsair/mod/ModLan;->pvpRoom:Z

    if-eqz v2, :cond_394

    const-string v2, "1"

    :goto_317
    aput-object v2, v5, v7

    const/4 v2, 0x6

    const-string v7, "sector"

    aput-object v7, v5, v2

    const/4 v2, 0x7

    .line 447
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

    if-eqz v8, :cond_397

    const-string v2, "1"

    :goto_349
    aput-object v2, v5, v7

    const/16 v2, 0xe

    const-string v7, "relay"

    aput-object v7, v5, v2

    const/16 v7, 0xf

    .line 448
    if-eqz v21, :cond_39a

    move-object/from16 v0, v21

    iget-object v2, v0, Lfr/testudo/spacecorsair/mod/ModNet$Turn;->relayed:Ljava/net/InetSocketAddress;

    if-eqz v2, :cond_39a

    move-object/from16 v0, v21

    iget-object v2, v0, Lfr/testudo/spacecorsair/mod/ModNet$Turn;->relayed:Ljava/net/InetSocketAddress;

    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModNet;->show(Ljava/net/InetSocketAddress;)Ljava/lang/String;

    move-result-object v2

    :goto_363
    aput-object v2, v5, v7

    .line 446
    invoke-static {v3, v4, v5}, Lfr/testudo/spacecorsair/mod/ModLobby;->call(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lfr/testudo/spacecorsair/mod/ModLobby$Reply;

    move-result-object v2

    .line 449
    iget v3, v2, Lfr/testudo/spacecorsair/mod/ModLobby$Reply;->status:I

    const/16 v4, 0x194

    if-eq v3, v4, :cond_375

    iget v3, v2, Lfr/testudo/spacecorsair/mod/ModLobby$Reply;->status:I

    const/16 v4, 0x193

    if-ne v3, v4, :cond_39d

    :cond_375
    const-string v4, ""
    :try_end_377
    .catch Ljava/lang/Throwable; {:try_start_292 .. :try_end_377} :catch_46a

    :try_start_377
    const-string v2, ""

    sput-object v2, Lfr/testudo/spacecorsair/mod/ModLobby;->code:Ljava/lang/String;
    :try_end_37b
    .catch Ljava/lang/Throwable; {:try_start_377 .. :try_end_37b} :catch_48f

    move/from16 v18, v12

    move/from16 v19, v13

    move-object/from16 v2, v20

    move-object/from16 v7, v21

    move-object v3, v10

    goto/16 :goto_21

    .line 435
    :cond_386
    :try_start_386
    const-string v3, "private"
    :try_end_388
    .catch Ljava/lang/Throwable; {:try_start_386 .. :try_end_388} :catch_496

    goto/16 :goto_281

    .line 440
    :cond_38a
    const-wide/16 v14, 0x7530

    move-object/from16 v21, v12

    goto/16 :goto_2b2

    .line 446
    :cond_390
    :try_start_390
    const-string v2, "0"

    goto/16 :goto_309

    :cond_394
    const-string v2, "0"

    goto :goto_317

    .line 447
    :cond_397
    const-string v2, "0"

    goto :goto_349

    .line 448
    :cond_39a
    const-string v2, ""

    goto :goto_363

    .line 450
    :cond_39d
    invoke-virtual {v2}, Lfr/testudo/spacecorsair/mod/ModLobby$Reply;->ok()Z

    move-result v3

    if-eqz v3, :cond_429

    if-nez v13, :cond_429

    const/4 v3, 0x0

    aget-boolean v3, v9, v3

    if-nez v3, :cond_429

    .line 451
    iget-object v2, v2, Lfr/testudo/spacecorsair/mod/ModLobby$Reply;->rows:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3b0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_429

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Ljava/lang/String;

    .line 452
    array-length v3, v7

    const/16 v4, 0x8

    if-lt v3, v4, :cond_3b0

    const-string v3, "join"

    const/4 v4, 0x0

    aget-object v4, v7, v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3b0

    .line 453
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

    .line 454
    const/4 v4, 0x6

    aget-object v4, v7, v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_408

    const/4 v4, 0x7

    aget-object v4, v7, v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_3b0

    .line 455
    :cond_408
    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3b0

    .line 456
    const/4 v2, 0x0

    const/4 v3, 0x1

    aput-boolean v3, v9, v2

    .line 460
    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lfr/testudo/spacecorsair/mod/ModLobby$3;

    move-wide/from16 v4, p0

    invoke-direct/range {v3 .. v9}, Lfr/testudo/spacecorsair/mod/ModLobby$3;-><init>(JLfr/testudo/spacecorsair/mod/ModNet$Wire;[Ljava/lang/String;Z[Z)V

    const-string v4, "lobby-accept"

    invoke-direct {v2, v3, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 465
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 466
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 470
    :cond_429
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLobby;->reportRelay()V

    .line 472
    if-eqz v13, :cond_451

    const-wide/16 v2, 0x7530

    .line 473
    :goto_430
    const-wide/16 v4, 0x0

    :goto_432
    cmp-long v7, v4, v2

    if-gez v7, :cond_445

    sget-wide v18, Lfr/testudo/spacecorsair/mod/ModLobby;->gen:J

    cmp-long v7, p0, v18

    if-nez v7, :cond_445

    .line 474
    const-wide/16 v18, 0xfa

    invoke-static/range {v18 .. v19}, Ljava/lang/Thread;->sleep(J)V

    .line 475
    sget-boolean v7, Lfr/testudo/spacecorsair/mod/ModLan;->connected:Z

    if-eq v13, v7, :cond_465

    :cond_445
    move/from16 v18, v12

    move/from16 v19, v13

    move-object/from16 v2, v20

    move-object/from16 v7, v21

    move-object v3, v10

    move-object v4, v11

    .line 477
    goto/16 :goto_21

    .line 472
    :cond_451
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sget-wide v4, Lfr/testudo/spacecorsair/mod/ModLobby;->openedAt:J
    :try_end_457
    .catch Ljava/lang/Throwable; {:try_start_390 .. :try_end_457} :catch_46a

    sub-long/2addr v2, v4

    const-wide/32 v4, 0x1d4c0

    cmp-long v2, v2, v4

    if-gez v2, :cond_462

    const-wide/16 v2, 0x1f40

    goto :goto_430

    :cond_462
    const-wide/16 v2, 0x4e20

    goto :goto_430

    .line 473
    :cond_465
    const-wide/16 v18, 0xfa

    add-long v4, v4, v18

    goto :goto_432

    .line 478
    :catch_46a
    move-exception v3

    move-object v5, v3

    move-object v2, v10

    move-object v4, v11

    .line 479
    :goto_46e
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

    .line 480
    sget-boolean v3, Lfr/testudo/spacecorsair/mod/ModLobby;->DEBUG:Z

    if-eqz v3, :cond_1a5

    invoke-virtual {v5}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_1a5

    .line 478
    :catch_48f
    move-exception v3

    move-object v5, v3

    move-object v2, v10

    goto :goto_46e

    :catch_493
    move-exception v5

    move-object v2, v3

    goto :goto_46e

    :catch_496
    move-exception v3

    move-object v5, v3

    goto :goto_46e

    :catch_499
    move-exception v5

    move-object v6, v7

    move-object v2, v3

    goto :goto_46e

    :cond_49d
    move-object v10, v3

    move-object v11, v4

    goto/16 :goto_28e

    :cond_4a1
    move-object v5, v2

    move-object v12, v7

    goto/16 :goto_41

    :cond_4a5
    move-object/from16 v21, v12

    goto/16 :goto_2b2

    :cond_4a9
    move/from16 v12, v18

    move-object/from16 v20, v5

    goto/16 :goto_2d8
.end method

.method static join(Ljava/lang/String;)Z
    .registers 16

    .prologue
    .line 521
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLobby;->available()Z

    move-result v0

    if-nez v0, :cond_8

    const/4 v0, 0x0

    .line 601
    :cond_7
    :goto_7
    return v0

    .line 522
    :cond_8
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLobby;->onlineBlock()Ljava/lang/String;

    move-result-object v0

    .line 523
    if-eqz v0, :cond_12

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModLobby;->status:Ljava/lang/String;

    const/4 v0, 0x0

    goto :goto_7

    .line 524
    :cond_12
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLobby;->leave()V

    .line 525
    sget-wide v0, Lfr/testudo/spacecorsair/mod/ModLobby;->gen:J

    const-wide/16 v2, 0x1

    add-long v12, v0, v2

    sput-wide v12, Lfr/testudo/spacecorsair/mod/ModLobby;->gen:J

    .line 526
    const/4 v0, 0x1

    sput-boolean v0, Lfr/testudo/spacecorsair/mod/ModLobby;->busy:Z

    .line 527
    if-nez p0, :cond_46

    const-string v0, ""

    move-object v8, v0

    .line 528
    :goto_25
    const/4 v2, 0x0

    .line 529
    const/4 v4, 0x0

    .line 531
    :try_start_27
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_52

    const-string v0, "The code has 4 characters."

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModLobby;->status:Ljava/lang/String;
    :try_end_36
    .catch Ljava/lang/Throwable; {:try_start_27 .. :try_end_36} :catch_3cd
    .catchall {:try_start_27 .. :try_end_36} :catchall_3e8

    const/4 v0, 0x0

    .line 603
    const/4 v1, 0x0

    sput-boolean v1, Lfr/testudo/spacecorsair/mod/ModLobby;->busy:Z

    .line 604
    if-eqz v2, :cond_7

    if-eqz v4, :cond_42

    sget-object v1, Lfr/testudo/spacecorsair/mod/ModLobby;->link:Lfr/testudo/spacecorsair/mod/ModNet$Link;

    if-eqz v1, :cond_7

    :cond_42
    invoke-virtual {v2}, Lfr/testudo/spacecorsair/mod/ModNet$Wire;->close()V

    goto :goto_7

    .line 527
    :cond_46
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    move-object v8, v0

    goto :goto_25

    .line 532
    :cond_52
    :try_start_52
    const-string v0, "Connecting..."

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModLobby;->status:Ljava/lang/String;

    .line 533
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLobby;->hideIp()Z

    move-result v3

    .line 534
    new-instance v11, Lfr/testudo/spacecorsair/mod/ModNet$Wire;

    const/4 v0, 0x0

    invoke-direct {v11, v0}, Lfr/testudo/spacecorsair/mod/ModNet$Wire;-><init>(I)V
    :try_end_64
    .catch Ljava/lang/Throwable; {:try_start_52 .. :try_end_64} :catch_3cd
    .catchall {:try_start_52 .. :try_end_64} :catchall_3e8

    .line 535
    if-eqz v3, :cond_129

    :try_start_66
    const-string v0, ""

    move-object v1, v0

    .line 536
    :goto_69
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    invoke-virtual {v0}, Ljava/security/SecureRandom;->nextInt()I

    move-result v14

    .line 537
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

    .line 538
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModSaveSig;->publicOk()Z

    move-result v0

    if-eqz v0, :cond_130

    const-string v0, "1"

    :goto_b6
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

    if-eqz v3, :cond_133

    const-string v0, "1"

    :goto_ce
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

    .line 539
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

    .line 540
    invoke-virtual {v1}, Lfr/testudo/spacecorsair/mod/ModLobby$Reply;->ok()Z

    move-result v0

    if-nez v0, :cond_136

    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModLobby;->refusal(Lfr/testudo/spacecorsair/mod/ModLobby$Reply;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModLobby;->status:Ljava/lang/String;
    :try_end_118
    .catch Ljava/lang/Throwable; {:try_start_66 .. :try_end_118} :catch_418
    .catchall {:try_start_66 .. :try_end_118} :catchall_3fa

    const/4 v0, 0x0

    .line 603
    const/4 v1, 0x0

    sput-boolean v1, Lfr/testudo/spacecorsair/mod/ModLobby;->busy:Z

    .line 604
    if-eqz v11, :cond_7

    if-eqz v4, :cond_124

    sget-object v1, Lfr/testudo/spacecorsair/mod/ModLobby;->link:Lfr/testudo/spacecorsair/mod/ModNet$Link;

    if-eqz v1, :cond_7

    :cond_124
    invoke-virtual {v11}, Lfr/testudo/spacecorsair/mod/ModNet$Wire;->close()V

    goto/16 :goto_7

    .line 535
    :cond_129
    :try_start_129
    invoke-static {v11}, Lfr/testudo/spacecorsair/mod/ModLobby;->candidates(Lfr/testudo/spacecorsair/mod/ModNet$Wire;)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    goto/16 :goto_69

    .line 538
    :cond_130
    const-string v0, "0"

    goto :goto_b6

    :cond_133
    const-string v0, "0"

    goto :goto_ce

    .line 541
    :cond_136
    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModLobby;->setSelfDev(Lfr/testudo/spacecorsair/mod/ModLobby$Reply;)V

    .line 542
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLobby;->onlineBlock()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_156

    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLobby;->onlineBlock()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModLobby;->status:Ljava/lang/String;
    :try_end_145
    .catch Ljava/lang/Throwable; {:try_start_129 .. :try_end_145} :catch_418
    .catchall {:try_start_129 .. :try_end_145} :catchall_3fa

    const/4 v0, 0x0

    .line 603
    const/4 v1, 0x0

    sput-boolean v1, Lfr/testudo/spacecorsair/mod/ModLobby;->busy:Z

    .line 604
    if-eqz v11, :cond_7

    if-eqz v4, :cond_151

    sget-object v1, Lfr/testudo/spacecorsair/mod/ModLobby;->link:Lfr/testudo/spacecorsair/mod/ModNet$Link;

    if-eqz v1, :cond_7

    :cond_151
    invoke-virtual {v11}, Lfr/testudo/spacecorsair/mod/ModNet$Wire;->close()V

    goto/16 :goto_7

    .line 543
    :cond_156
    :try_start_156
    const-string v0, "1"

    const-string v5, "hdev"

    invoke-virtual {v1, v5}, Lfr/testudo/spacecorsair/mod/ModLobby$Reply;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lfr/testudo/spacecorsair/mod/ModLobby;->peerDev:Z

    .line 544
    if-eqz v3, :cond_42f

    .line 545
    invoke-static {v11, v8, v2}, Lfr/testudo/spacecorsair/mod/ModLobby;->withRelay(Lfr/testudo/spacecorsair/mod/ModNet$Wire;Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 546
    if-nez v2, :cond_190

    .line 547
    sget-boolean v0, Lfr/testudo/spacecorsair/mod/ModLobby;->relayFull:Z

    if-eqz v0, :cond_189

    const-string v0, "Relay full this month; try Local or another network."

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 548
    :goto_176
    sput-object v0, Lfr/testudo/spacecorsair/mod/ModLobby;->status:Ljava/lang/String;
    :try_end_178
    .catch Ljava/lang/Throwable; {:try_start_156 .. :try_end_178} :catch_418
    .catchall {:try_start_156 .. :try_end_178} :catchall_3fa

    .line 549
    const/4 v0, 0x0

    .line 603
    const/4 v1, 0x0

    sput-boolean v1, Lfr/testudo/spacecorsair/mod/ModLobby;->busy:Z

    .line 604
    if-eqz v11, :cond_7

    if-eqz v4, :cond_184

    sget-object v1, Lfr/testudo/spacecorsair/mod/ModLobby;->link:Lfr/testudo/spacecorsair/mod/ModNet$Link;

    if-eqz v1, :cond_7

    :cond_184
    invoke-virtual {v11}, Lfr/testudo/spacecorsair/mod/ModNet$Wire;->close()V

    goto/16 :goto_7

    .line 548
    :cond_189
    :try_start_189
    const-string v0, "\"Hide my IP\" needs the relay, and the relay is not available right now."

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_176

    .line 551
    :cond_190
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

    .line 552
    invoke-virtual {v0}, Lfr/testudo/spacecorsair/mod/ModLobby$Reply;->ok()Z

    move-result v5

    if-eqz v5, :cond_42f

    move-object v9, v2

    .line 554
    :goto_1b6
    const/4 v1, 0x0

    move-object v10, v0

    :goto_1b8
    const/4 v0, 0x5

    if-ge v1, v0, :cond_222

    sget-wide v6, Lfr/testudo/spacecorsair/mod/ModLobby;->gen:J

    cmp-long v0, v12, v6

    if-nez v0, :cond_222

    const-string v0, "cands"

    invoke-virtual {v10, v0}, Lfr/testudo/spacecorsair/mod/ModLobby$Reply;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_222

    const-string v0, "relay"

    invoke-virtual {v10, v0}, Lfr/testudo/spacecorsair/mod/ModLobby$Reply;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_222

    .line 555
    const-wide/16 v6, 0xbb8

    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V

    .line 556
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

    .line 557
    invoke-virtual {v0}, Lfr/testudo/spacecorsair/mod/ModLobby$Reply;->ok()Z

    move-result v2

    if-eqz v2, :cond_207

    .line 554
    :goto_203
    add-int/lit8 v1, v1, 0x1

    move-object v10, v0

    goto :goto_1b8

    .line 557
    :cond_207
    iget v2, v0, Lfr/testudo/spacecorsair/mod/ModLobby$Reply;->status:I

    if-eqz v2, :cond_42c

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLobby;->refusal(Lfr/testudo/spacecorsair/mod/ModLobby$Reply;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModLobby;->status:Ljava/lang/String;
    :try_end_211
    .catch Ljava/lang/Throwable; {:try_start_189 .. :try_end_211} :catch_418
    .catchall {:try_start_189 .. :try_end_211} :catchall_3fa

    const/4 v0, 0x0

    .line 603
    const/4 v1, 0x0

    sput-boolean v1, Lfr/testudo/spacecorsair/mod/ModLobby;->busy:Z

    .line 604
    if-eqz v11, :cond_7

    if-eqz v4, :cond_21d

    sget-object v1, Lfr/testudo/spacecorsair/mod/ModLobby;->link:Lfr/testudo/spacecorsair/mod/ModNet$Link;

    if-eqz v1, :cond_7

    :cond_21d
    invoke-virtual {v11}, Lfr/testudo/spacecorsair/mod/ModNet$Wire;->close()V

    goto/16 :goto_7

    .line 559
    :cond_222
    :try_start_222
    sget-wide v0, Lfr/testudo/spacecorsair/mod/ModLobby;->gen:J
    :try_end_224
    .catch Ljava/lang/Throwable; {:try_start_222 .. :try_end_224} :catch_418
    .catchall {:try_start_222 .. :try_end_224} :catchall_3fa

    cmp-long v0, v12, v0

    if-eqz v0, :cond_239

    const/4 v0, 0x0

    .line 603
    const/4 v1, 0x0

    sput-boolean v1, Lfr/testudo/spacecorsair/mod/ModLobby;->busy:Z

    .line 604
    if-eqz v11, :cond_7

    if-eqz v4, :cond_234

    sget-object v1, Lfr/testudo/spacecorsair/mod/ModLobby;->link:Lfr/testudo/spacecorsair/mod/ModNet$Link;

    if-eqz v1, :cond_7

    :cond_234
    invoke-virtual {v11}, Lfr/testudo/spacecorsair/mod/ModNet$Wire;->close()V

    goto/16 :goto_7

    .line 560
    :cond_239
    :try_start_239
    const-string v0, "Reaching the host..."

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModLobby;->status:Ljava/lang/String;

    .line 561
    new-instance v0, Lfr/testudo/spacecorsair/mod/ModNet$Link;

    invoke-direct {v0, v11, v14}, Lfr/testudo/spacecorsair/mod/ModNet$Link;-><init>(Lfr/testudo/spacecorsair/mod/ModNet$Wire;I)V
    :try_end_246
    .catch Ljava/lang/Throwable; {:try_start_239 .. :try_end_246} :catch_418
    .catchall {:try_start_239 .. :try_end_246} :catchall_3fa

    .line 562
    :try_start_246
    invoke-static {v12, v13, v8, v9, v0}, Lfr/testudo/spacecorsair/mod/ModLobby;->repeatJoin(JLjava/lang/String;[Ljava/lang/String;Lfr/testudo/spacecorsair/mod/ModNet$Link;)V

    .line 564
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

    if-eqz v3, :cond_283

    const-wide/32 v6, 0x9c40

    :goto_264
    invoke-virtual/range {v0 .. v7}, Lfr/testudo/spacecorsair/mod/ModNet$Link;->connect(Ljava/util/List;Ljava/net/InetSocketAddress;ZJJ)Z

    move-result v2

    .line 565
    sget-wide v4, Lfr/testudo/spacecorsair/mod/ModLobby;->gen:J

    cmp-long v1, v12, v4

    if-eqz v1, :cond_286

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/mod/ModNet$Link;->abandon()V
    :try_end_271
    .catch Ljava/lang/Throwable; {:try_start_246 .. :try_end_271} :catch_41c
    .catchall {:try_start_246 .. :try_end_271} :catchall_3fd

    const/4 v1, 0x0

    .line 603
    const/4 v2, 0x0

    sput-boolean v2, Lfr/testudo/spacecorsair/mod/ModLobby;->busy:Z

    .line 604
    if-eqz v11, :cond_280

    if-eqz v0, :cond_27d

    sget-object v2, Lfr/testudo/spacecorsair/mod/ModLobby;->link:Lfr/testudo/spacecorsair/mod/ModNet$Link;

    if-eq v2, v0, :cond_280

    :cond_27d
    invoke-virtual {v11}, Lfr/testudo/spacecorsair/mod/ModNet$Wire;->close()V

    :cond_280
    move v0, v1

    .line 565
    goto/16 :goto_7

    .line 564
    :cond_283
    const-wide/16 v6, 0x6d60

    goto :goto_264

    .line 566
    :cond_286
    if-nez v2, :cond_429

    if-nez v3, :cond_429

    .line 567
    :try_start_28a
    invoke-virtual {v0}, Lfr/testudo/spacecorsair/mod/ModNet$Link;->abandon()V

    .line 568
    const-string v1, "lobby"

    const-string v3, "direct path failed: asking for the relay"

    invoke-static {v1, v3}, Lfr/testudo/spacecorsair/mod/ModDev;->ev(Ljava/lang/String;Ljava/lang/String;)V

    .line 569
    invoke-static {v11, v8, v9}, Lfr/testudo/spacecorsair/mod/ModLobby;->withRelay(Lfr/testudo/spacecorsair/mod/ModNet$Wire;Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 570
    if-eqz v3, :cond_429

    .line 572
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

    .line 573
    invoke-virtual {v1}, Lfr/testudo/spacecorsair/mod/ModLobby$Reply;->ok()Z

    move-result v2

    if-eqz v2, :cond_2c0

    move-object v10, v1

    .line 574
    :cond_2c0
    new-instance v9, Lfr/testudo/spacecorsair/mod/ModNet$Link;

    invoke-direct {v9, v11, v14}, Lfr/testudo/spacecorsair/mod/ModNet$Link;-><init>(Lfr/testudo/spacecorsair/mod/ModNet$Wire;I)V
    :try_end_2c5
    .catch Ljava/lang/Throwable; {:try_start_28a .. :try_end_2c5} :catch_41c
    .catchall {:try_start_28a .. :try_end_2c5} :catchall_3fd

    .line 575
    :try_start_2c5
    invoke-static {v12, v13, v8, v3, v9}, Lfr/testudo/spacecorsair/mod/ModLobby;->repeatJoin(JLjava/lang/String;[Ljava/lang/String;Lfr/testudo/spacecorsair/mod/ModNet$Link;)V

    .line 576
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

    .line 577
    sget-wide v2, Lfr/testudo/spacecorsair/mod/ModLobby;->gen:J

    cmp-long v1, v12, v2

    if-eqz v1, :cond_300

    invoke-virtual {v9}, Lfr/testudo/spacecorsair/mod/ModNet$Link;->abandon()V
    :try_end_2ef
    .catch Ljava/lang/Throwable; {:try_start_2c5 .. :try_end_2ef} :catch_420
    .catchall {:try_start_2c5 .. :try_end_2ef} :catchall_401

    const/4 v0, 0x0

    .line 603
    const/4 v1, 0x0

    sput-boolean v1, Lfr/testudo/spacecorsair/mod/ModLobby;->busy:Z

    .line 604
    if-eqz v11, :cond_7

    if-eqz v9, :cond_2fb

    sget-object v1, Lfr/testudo/spacecorsair/mod/ModLobby;->link:Lfr/testudo/spacecorsair/mod/ModNet$Link;

    if-eq v1, v9, :cond_7

    :cond_2fb
    invoke-virtual {v11}, Lfr/testudo/spacecorsair/mod/ModNet$Wire;->close()V

    goto/16 :goto_7

    :cond_300
    move v2, v0

    move-object v1, v9

    .line 580
    :goto_302
    if-nez v2, :cond_358

    .line 581
    :try_start_304
    invoke-virtual {v1}, Lfr/testudo/spacecorsair/mod/ModNet$Link;->abandon()V

    .line 582
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

    .line 583
    sget-boolean v0, Lfr/testudo/spacecorsair/mod/ModLobby;->relayFull:Z

    if-eqz v0, :cond_351

    const-string v0, "Relay full this month; try Local or another network."

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 584
    :goto_33e
    sput-object v0, Lfr/testudo/spacecorsair/mod/ModLobby;->status:Ljava/lang/String;
    :try_end_340
    .catch Ljava/lang/Throwable; {:try_start_304 .. :try_end_340} :catch_424
    .catchall {:try_start_304 .. :try_end_340} :catchall_405

    .line 585
    const/4 v0, 0x0

    .line 603
    const/4 v2, 0x0

    sput-boolean v2, Lfr/testudo/spacecorsair/mod/ModLobby;->busy:Z

    .line 604
    if-eqz v11, :cond_7

    if-eqz v1, :cond_34c

    sget-object v2, Lfr/testudo/spacecorsair/mod/ModLobby;->link:Lfr/testudo/spacecorsair/mod/ModNet$Link;

    if-eq v2, v1, :cond_7

    :cond_34c
    invoke-virtual {v11}, Lfr/testudo/spacecorsair/mod/ModNet$Wire;->close()V

    goto/16 :goto_7

    .line 584
    :cond_351
    :try_start_351
    const-string v0, "Could not reach the host. Their network or yours blocks direct play and the relay did not help."

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_33e

    .line 587
    :cond_358
    invoke-virtual {v1}, Lfr/testudo/spacecorsair/mod/ModNet$Link;->relayed()Z

    move-result v0

    if-nez v0, :cond_36a

    iget-object v0, v11, Lfr/testudo/spacecorsair/mod/ModNet$Wire;->turn:Lfr/testudo/spacecorsair/mod/ModNet$Turn;

    if-eqz v0, :cond_36a

    iget-object v0, v11, Lfr/testudo/spacecorsair/mod/ModNet$Wire;->turn:Lfr/testudo/spacecorsair/mod/ModNet$Turn;

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/mod/ModNet$Turn;->close()V

    const/4 v0, 0x0

    iput-object v0, v11, Lfr/testudo/spacecorsair/mod/ModNet$Wire;->turn:Lfr/testudo/spacecorsair/mod/ModNet$Turn;

    .line 588
    :cond_36a
    sput-object v1, Lfr/testudo/spacecorsair/mod/ModLobby;->link:Lfr/testudo/spacecorsair/mod/ModNet$Link;

    .line 589
    sput-object v8, Lfr/testudo/spacecorsair/mod/ModLobby;->joinedCode:Ljava/lang/String;

    .line 590
    const-string v0, ""

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModLobby;->peerId:Ljava/lang/String;

    .line 591
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLobby;->applySaver()V

    .line 592
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

    .line 593
    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModLan;->joinNet(Ljava/net/Socket;)Z

    move-result v0

    .line 594
    if-nez v0, :cond_3b4

    const/4 v0, 0x0

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModLobby;->link:Lfr/testudo/spacecorsair/mod/ModNet$Link;

    invoke-virtual {v1}, Lfr/testudo/spacecorsair/mod/ModNet$Link;->close()V
    :try_end_39d
    .catch Ljava/lang/Throwable; {:try_start_351 .. :try_end_39d} :catch_424
    .catchall {:try_start_351 .. :try_end_39d} :catchall_405

    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_39f
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->status:Ljava/lang/String;

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModLobby;->status:Ljava/lang/String;
    :try_end_3a3
    .catch Ljava/lang/Throwable; {:try_start_39f .. :try_end_3a3} :catch_427
    .catchall {:try_start_39f .. :try_end_3a3} :catchall_409

    const/4 v0, 0x0

    .line 603
    const/4 v3, 0x0

    sput-boolean v3, Lfr/testudo/spacecorsair/mod/ModLobby;->busy:Z

    .line 604
    if-eqz v2, :cond_7

    if-eqz v1, :cond_3af

    sget-object v1, Lfr/testudo/spacecorsair/mod/ModLobby;->link:Lfr/testudo/spacecorsair/mod/ModNet$Link;

    if-eqz v1, :cond_7

    :cond_3af
    invoke-virtual {v2}, Lfr/testudo/spacecorsair/mod/ModNet$Wire;->close()V

    goto/16 :goto_7

    .line 595
    :cond_3b4
    const/4 v2, 0x0

    .line 596
    :try_start_3b5
    const-string v0, ""

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModLobby;->status:Ljava/lang/String;

    .line 597
    invoke-static {v12, v13, v8}, Lfr/testudo/spacecorsair/mod/ModLobby;->startGuestWatch(JLjava/lang/String;)V
    :try_end_3bc
    .catch Ljava/lang/Throwable; {:try_start_3b5 .. :try_end_3bc} :catch_427
    .catchall {:try_start_3b5 .. :try_end_3bc} :catchall_40e

    .line 598
    const/4 v0, 0x1

    .line 603
    const/4 v3, 0x0

    sput-boolean v3, Lfr/testudo/spacecorsair/mod/ModLobby;->busy:Z

    .line 604
    if-eqz v2, :cond_7

    if-eqz v1, :cond_3c8

    sget-object v3, Lfr/testudo/spacecorsair/mod/ModLobby;->link:Lfr/testudo/spacecorsair/mod/ModNet$Link;

    if-eq v3, v1, :cond_7

    :cond_3c8
    invoke-virtual {v2}, Lfr/testudo/spacecorsair/mod/ModNet$Wire;->close()V

    goto/16 :goto_7

    .line 599
    :catch_3cd
    move-exception v0

    move-object v1, v4

    .line 600
    :goto_3cf
    :try_start_3cf
    const-string v0, "The lobby service did not answer. Check your internet connection."

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModLobby;->status:Ljava/lang/String;
    :try_end_3d7
    .catchall {:try_start_3cf .. :try_end_3d7} :catchall_413

    .line 601
    const/4 v0, 0x0

    .line 603
    const/4 v3, 0x0

    sput-boolean v3, Lfr/testudo/spacecorsair/mod/ModLobby;->busy:Z

    .line 604
    if-eqz v2, :cond_7

    if-eqz v1, :cond_3e3

    sget-object v3, Lfr/testudo/spacecorsair/mod/ModLobby;->link:Lfr/testudo/spacecorsair/mod/ModNet$Link;

    if-eq v3, v1, :cond_7

    :cond_3e3
    invoke-virtual {v2}, Lfr/testudo/spacecorsair/mod/ModNet$Wire;->close()V

    goto/16 :goto_7

    .line 603
    :catchall_3e8
    move-exception v0

    move-object v3, v0

    move-object v11, v2

    :goto_3eb
    const/4 v0, 0x0

    sput-boolean v0, Lfr/testudo/spacecorsair/mod/ModLobby;->busy:Z

    .line 604
    if-eqz v11, :cond_3f9

    if-eqz v4, :cond_3f6

    sget-object v0, Lfr/testudo/spacecorsair/mod/ModLobby;->link:Lfr/testudo/spacecorsair/mod/ModNet$Link;

    if-eq v0, v4, :cond_3f9

    :cond_3f6
    invoke-virtual {v11}, Lfr/testudo/spacecorsair/mod/ModNet$Wire;->close()V

    .line 605
    :cond_3f9
    throw v3

    .line 603
    :catchall_3fa
    move-exception v0

    move-object v3, v0

    goto :goto_3eb

    :catchall_3fd
    move-exception v1

    move-object v3, v1

    move-object v4, v0

    goto :goto_3eb

    :catchall_401
    move-exception v0

    move-object v3, v0

    move-object v4, v9

    goto :goto_3eb

    :catchall_405
    move-exception v0

    move-object v3, v0

    move-object v4, v1

    goto :goto_3eb

    :catchall_409
    move-exception v0

    move-object v3, v0

    move-object v4, v1

    move-object v11, v2

    goto :goto_3eb

    :catchall_40e
    move-exception v0

    move-object v3, v0

    move-object v4, v1

    move-object v11, v2

    goto :goto_3eb

    :catchall_413
    move-exception v0

    move-object v3, v0

    move-object v4, v1

    move-object v11, v2

    goto :goto_3eb

    .line 599
    :catch_418
    move-exception v0

    move-object v1, v4

    move-object v2, v11

    goto :goto_3cf

    :catch_41c
    move-exception v1

    move-object v1, v0

    move-object v2, v11

    goto :goto_3cf

    :catch_420
    move-exception v0

    move-object v1, v9

    move-object v2, v11

    goto :goto_3cf

    :catch_424
    move-exception v0

    move-object v2, v11

    goto :goto_3cf

    :catch_427
    move-exception v0

    goto :goto_3cf

    :cond_429
    move-object v1, v0

    goto/16 :goto_302

    :cond_42c
    move-object v0, v10

    goto/16 :goto_203

    :cond_42f
    move-object v0, v1

    move-object v9, v2

    goto/16 :goto_1b6
.end method

.method static kicked()V
    .registers 5

    .prologue
    .line 718
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModLobby;->code:Ljava/lang/String;

    sget-object v1, Lfr/testudo/spacecorsair/mod/ModLobby;->token:Ljava/lang/String;

    sget-object v2, Lfr/testudo/spacecorsair/mod/ModLobby;->peerId:Ljava/lang/String;

    .line 719
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x4

    if-ne v3, v4, :cond_13

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_14

    .line 721
    :cond_13
    :goto_13
    return-void

    .line 720
    :cond_14
    new-instance v3, Ljava/lang/Thread;

    new-instance v4, Lfr/testudo/spacecorsair/mod/ModLobby$7;

    invoke-direct {v4, v0, v1, v2}, Lfr/testudo/spacecorsair/mod/ModLobby$7;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "lobby-kick"

    invoke-direct {v3, v4, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    goto :goto_13
.end method

.method static leave()V
    .registers 5

    .prologue
    const/4 v4, 0x0

    .line 737
    sget-wide v0, Lfr/testudo/spacecorsair/mod/ModLobby;->gen:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    sput-wide v0, Lfr/testudo/spacecorsair/mod/ModLobby;->gen:J

    .line 738
    sput-boolean v4, Lfr/testudo/spacecorsair/mod/ModLobby;->hosting:Z

    .line 739
    sput-boolean v4, Lfr/testudo/spacecorsair/mod/ModLobby;->busy:Z

    .line 740
    const-string v0, ""

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModLobby;->code:Ljava/lang/String;

    .line 741
    const-string v0, ""

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModLobby;->joinedCode:Ljava/lang/String;

    .line 742
    const/4 v0, 0x0

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModLobby;->link:Lfr/testudo/spacecorsair/mod/ModNet$Link;

    .line 743
    return-void
.end method

.method private static level()Ljava/lang/String;
    .registers 2

    .prologue
    .line 362
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
    .line 270
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModLobby;->link:Lfr/testudo/spacecorsair/mod/ModNet$Link;

    return-object v0
.end method

.method static linkLine()Ljava/lang/String;
    .registers 6

    .prologue
    .line 287
    sget-object v1, Lfr/testudo/spacecorsair/mod/ModLobby;->link:Lfr/testudo/spacecorsair/mod/ModNet$Link;

    .line 288
    if-eqz v1, :cond_c

    sget-boolean v0, Lfr/testudo/spacecorsair/mod/ModLan;->connected:Z

    if-eqz v0, :cond_c

    sget-boolean v0, Lfr/testudo/spacecorsair/mod/ModLan;->internet:Z

    if-nez v0, :cond_f

    :cond_c
    const-string v0, ""

    .line 290
    :goto_e
    return-object v0

    .line 289
    :cond_f
    iget-object v0, v1, Lfr/testudo/spacecorsair/mod/ModNet$Link;->w:Lfr/testudo/spacecorsair/mod/ModNet$Wire;

    iget-wide v2, v0, Lfr/testudo/spacecorsair/mod/ModNet$Wire;->sentBytes:J

    iget-object v0, v1, Lfr/testudo/spacecorsair/mod/ModNet$Link;->w:Lfr/testudo/spacecorsair/mod/ModNet$Wire;

    iget-wide v4, v0, Lfr/testudo/spacecorsair/mod/ModNet$Wire;->gotBytes:J

    add-long/2addr v2, v4

    .line 290
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

    .line 291
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

    .line 292
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

    .line 290
    :cond_b7
    const-string v0, "Direct"

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_29

    .line 291
    :cond_bf
    const-string v0, ""

    goto :goto_8c

    .line 292
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
    const/4 v11, 0x1

    const/4 v10, 0x7

    const/4 v9, 0x4

    const/4 v8, 0x2

    const/4 v7, 0x0

    .line 704
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 705
    const-string v0, "GET"

    const-string v1, "/lobbies"

    new-array v3, v8, [Ljava/lang/String;

    const-string v4, "ver"

    aput-object v4, v3, v7

    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLan;->myVersion()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v11

    invoke-static {v0, v1, v3}, Lfr/testudo/spacecorsair/mod/ModLobby;->call(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lfr/testudo/spacecorsair/mod/ModLobby$Reply;

    move-result-object v0

    .line 706
    invoke-virtual {v0}, Lfr/testudo/spacecorsair/mod/ModLobby$Reply;->ok()Z

    move-result v1

    if-nez v1, :cond_2c

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLobby;->refusal(Lfr/testudo/spacecorsair/mod/ModLobby$Reply;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModLobby;->status:Ljava/lang/String;

    move-object v0, v2

    .line 713
    :goto_2b
    return-object v0

    .line 707
    :cond_2c
    iget-object v0, v0, Lfr/testudo/spacecorsair/mod/ModLobby$Reply;->rows:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_32
    :goto_32
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_c6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 708
    array-length v1, v0

    if-lt v1, v10, :cond_32

    aget-object v1, v0, v7

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ne v1, v9, :cond_32

    .line 709
    const/16 v1, 0x8

    new-array v4, v1, [Ljava/lang/String;

    aget-object v1, v0, v7

    invoke-static {v1, v9}, Lfr/testudo/spacecorsair/mod/ModLan;->clean(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v7

    aget-object v1, v0, v11

    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModLanUi;->safeNick(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v11

    const-string v1, "?"

    aget-object v5, v0, v8

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b6

    const-string v1, ""

    :goto_69
    aput-object v1, v4, v8

    const/4 v5, 0x3

    .line 710
    const-string v1, "1"

    const/4 v6, 0x3

    aget-object v6, v0, v6

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_bd

    const-string v1, "1"

    :goto_79
    aput-object v1, v4, v5

    aget-object v1, v0, v9

    const/16 v5, 0x28

    invoke-static {v1, v5}, Lfr/testudo/spacecorsair/mod/ModLan;->clean(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v9

    const/4 v1, 0x5

    const/4 v5, 0x5

    aget-object v5, v0, v5

    const/4 v6, 0x3

    invoke-static {v5, v6}, Lfr/testudo/spacecorsair/mod/ModLan;->clean(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v1

    const/4 v5, 0x6

    const-string v1, "2"

    const/4 v6, 0x6

    aget-object v6, v0, v6

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c0

    const-string v1, "2"

    :goto_9e
    aput-object v1, v4, v5

    .line 711
    array-length v1, v0

    if-le v1, v10, :cond_c3

    const-string v1, "1"

    aget-object v0, v0, v10

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c3

    const-string v0, "1"

    :goto_af
    aput-object v0, v4, v10

    .line 709
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_32

    :cond_b6
    aget-object v1, v0, v8

    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModLanUi;->safeCountry(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_69

    .line 710
    :cond_bd
    const-string v1, "0"

    goto :goto_79

    :cond_c0
    const-string v1, "1"

    goto :goto_9e

    .line 711
    :cond_c3
    const-string v0, "0"

    goto :goto_af

    :cond_c6
    move-object v0, v2

    .line 713
    goto/16 :goto_2b
.end method

.method static mb(J)Ljava/lang/String;
    .registers 10

    .prologue
    const-wide/16 v6, 0xa

    .line 296
    mul-long v0, p0, v6

    const-wide/32 v2, 0x100000

    div-long/2addr v0, v2

    .line 297
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

    .line 243
    :try_start_2
    invoke-static {}, Ljava/net/NetworkInterface;->getNetworkInterfaces()Ljava/util/Enumeration;

    move-result-object v7

    move v4, v6

    move v5, v6

    .line 244
    :cond_8
    :goto_8
    if-eqz v7, :cond_70

    invoke-interface {v7}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_70

    .line 245
    invoke-interface {v7}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/NetworkInterface;

    .line 246
    invoke-virtual {v0}, Ljava/net/NetworkInterface;->isUp()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-virtual {v0}, Ljava/net/NetworkInterface;->isLoopback()Z

    move-result v1

    if-nez v1, :cond_8

    .line 248
    invoke-virtual {v0}, Ljava/net/NetworkInterface;->getInetAddresses()Ljava/util/Enumeration;

    move-result-object v8

    move v3, v6

    .line 249
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

    .line 250
    :cond_42
    if-eqz v3, :cond_8

    .line 251
    invoke-virtual {v0}, Ljava/net/NetworkInterface;->getName()Ljava/lang/String;

    move-result-object v0

    .line 252
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

    .line 253
    goto :goto_8

    :cond_6d
    move v0, v2

    move v1, v5

    .line 252
    goto :goto_6a

    .line 254
    :cond_70
    if-eqz v4, :cond_75

    if-nez v5, :cond_75

    .line 256
    :goto_74
    return v2

    :cond_75
    move v2, v6

    .line 254
    goto :goto_74

    .line 255
    :catch_77
    move-exception v0

    move v2, v6

    .line 256
    goto :goto_74

    :cond_7a
    move v1, v3

    goto :goto_40
.end method

.method static onlineBlock()Ljava/lang/String;
    .registers 2

    .prologue
    .line 193
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLobby;->autoDev()V

    .line 194
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLobby;->testProfileBlock()Ljava/lang/String;

    move-result-object v0

    .line 195
    if-eqz v0, :cond_a

    .line 199
    :goto_9
    return-object v0

    .line 196
    :cond_a
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLobby;->switchLocked()Z

    move-result v0

    if-eqz v0, :cond_17

    const-string v0, "Test switches are in use. Internet games are off until the game restarts; local games still work."

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_9

    .line 197
    :cond_17
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLobby;->selfDev()Z

    move-result v0

    .line 198
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLobby;->devGear()Z

    move-result v1

    if-eqz v1, :cond_2a

    if-nez v0, :cond_2a

    const-string v0, "DEV ships and DEV gear cannot be used in internet games."

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_9

    .line 199
    :cond_2a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method static parse(Ljava/lang/String;I)Lfr/testudo/spacecorsair/mod/ModLobby$Reply;
    .registers 12

    .prologue
    const/16 v9, 0x10

    const/4 v8, 0x0

    const/4 v7, -0x1

    .line 58
    new-instance v1, Lfr/testudo/spacecorsair/mod/ModLobby$Reply;

    invoke-direct {v1}, Lfr/testudo/spacecorsair/mod/ModLobby$Reply;-><init>()V

    .line 59
    iput p1, v1, Lfr/testudo/spacecorsair/mod/ModLobby$Reply;->status:I

    .line 60
    if-nez p0, :cond_f

    move-object v0, v1

    .line 70
    :goto_e
    return-object v0

    .line 61
    :cond_f
    const-string v0, "\n"

    invoke-virtual {p0, v0, v7}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v2

    .line 62
    array-length v0, v2

    if-lez v0, :cond_3f

    aget-object v0, v2, v8

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v9}, Lfr/testudo/spacecorsair/mod/ModLan;->clean(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    :goto_22
    iput-object v0, v1, Lfr/testudo/spacecorsair/mod/ModLobby$Reply;->first:Ljava/lang/String;

    .line 63
    const/4 v0, 0x1

    :goto_25
    array-length v3, v2

    if-ge v0, v3, :cond_7a

    const/16 v3, 0x50

    if-ge v0, v3, :cond_7a

    .line 64
    aget-object v3, v2, v0

    .line 65
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_3c

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    const/16 v5, 0x4b0

    if-le v4, v5, :cond_42

    .line 63
    :cond_3c
    :goto_3c
    add-int/lit8 v0, v0, 0x1

    goto :goto_25

    .line 62
    :cond_3f
    const-string v0, ""

    goto :goto_22

    .line 66
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

    .line 67
    :cond_60
    const/16 v4, 0x3d

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    .line 68
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

    .line 70
    goto :goto_e
.end method

.method static peerInstall()Ljava/lang/String;
    .registers 1

    .prologue
    .line 283
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModLobby;->peerId:Ljava/lang/String;

    return-object v0
.end method

.method private static prefs()Landroid/content/SharedPreferences;
    .registers 3

    .prologue
    .line 222
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
    .line 687
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModLobby$Reply;->first:Ljava/lang/String;

    .line 688
    iget v1, p0, Lfr/testudo/spacecorsair/mod/ModLobby$Reply;->status:I

    if-nez v1, :cond_d

    const-string v0, "The lobby service did not answer. Check your internet connection."

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 699
    :goto_c
    return-object v0

    .line 689
    :cond_d
    const-string v1, "gone"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1c

    const-string v0, "No game with that code."

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_c

    .line 690
    :cond_1c
    const-string v1, "full"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2b

    const-string v0, "That game is full."

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_c

    .line 691
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

    .line 692
    :cond_81
    const-string v1, "banned"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_91

    const-string v0, "You were removed by several hosts. Public games are locked for 24 hours."

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_c

    .line 693
    :cond_91
    const-string v1, "kicked"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a1

    const-string v0, "The host removed you from this game."

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_c

    .line 694
    :cond_a1
    const-string v1, "save"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b1

    const-string v0, "Your save was changed outside the game. Public games are locked for 24 hours; private codes and local games still work."

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_c

    .line 695
    :cond_b1
    const-string v1, "closed"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c1

    const-string v0, "Public games open in a later version. Private games with a code work now."

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_c

    .line 696
    :cond_c1
    const-string v1, "slow"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d1

    const-string v0, "Too many tries. Wait a few minutes."

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_c

    .line 698
    :cond_d1
    const-string v1, "busy"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_ed

    iget v1, p0, Lfr/testudo/spacecorsair/mod/ModLobby$Reply;->status:I

    const/16 v2, 0x1ad

    if-ne v1, v2, :cond_e7

    const-string v1, "slow"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_ed

    :cond_e7
    iget v0, p0, Lfr/testudo/spacecorsair/mod/ModLobby$Reply;->status:I

    const/16 v1, 0x1f4

    if-lt v0, v1, :cond_f5

    :cond_ed
    const-string v0, "Internet lobbies are down for today. Local games still work."

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_c

    .line 699
    :cond_f5
    const-string v0, "The lobby service refused the request."

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_c
.end method

.method static registerDev(Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 204
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lfr/testudo/spacecorsair/mod/ModLobby$1;

    invoke-direct {v1, p0}, Lfr/testudo/spacecorsair/mod/ModLobby$1;-><init>(Ljava/lang/String;)V

    const-string v2, "lobby-dev"

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 217
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 218
    return-void
.end method

.method static rejoin()V
    .registers 3

    .prologue
    .line 655
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModLobby;->joinedCode:Ljava/lang/String;

    .line 656
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x4

    if-eq v1, v2, :cond_a

    .line 666
    :goto_9
    return-void

    .line 657
    :cond_a
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lfr/testudo/spacecorsair/mod/ModLobby$6;

    invoke-direct {v2, v0}, Lfr/testudo/spacecorsair/mod/ModLobby$6;-><init>(Ljava/lang/String;)V

    const-string v0, "lobby-rejoin"

    invoke-direct {v1, v2, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 664
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 665
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    goto :goto_9
.end method

.method static relay(Lfr/testudo/spacecorsair/mod/ModNet$Wire;Ljava/lang/String;Ljava/lang/String;)Lfr/testudo/spacecorsair/mod/ModNet$Turn;
    .registers 13

    .prologue
    const/4 v9, 0x3

    const/4 v7, 0x1

    const/4 v2, 0x0

    const/4 v0, 0x0

    .line 330
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

    .line 331
    const-string v1, "full"

    iget-object v3, v4, Lfr/testudo/spacecorsair/mod/ModLobby$Reply;->first:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_39

    const/4 v1, 0x1

    sput-boolean v1, Lfr/testudo/spacecorsair/mod/ModLobby;->relayFull:Z

    .line 347
    :cond_38
    :goto_38
    return-object v0

    .line 332
    :cond_39
    invoke-virtual {v4}, Lfr/testudo/spacecorsair/mod/ModLobby$Reply;->ok()Z

    move-result v1

    if-eqz v1, :cond_38

    .line 333
    const-string v1, "host"

    invoke-virtual {v4, v1}, Lfr/testudo/spacecorsair/mod/ModLobby$Reply;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move v1, v2

    .line 334
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

    .line 335
    :cond_6b
    const-string v1, "port"

    invoke-virtual {v4, v1}, Lfr/testudo/spacecorsair/mod/ModLobby$Reply;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 336
    const-string v1, ".metered.ca"

    invoke-virtual {v3, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_38

    if-lt v5, v7, :cond_38

    const v1, 0xffff

    if-gt v5, v1, :cond_38

    .line 338
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

    .line 339
    :goto_93
    if-eqz v3, :cond_38

    .line 340
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

    .line 341
    :goto_ab
    if-ge v2, v9, :cond_38

    .line 342
    :try_start_ad
    invoke-virtual {v1}, Lfr/testudo/spacecorsair/mod/ModNet$Turn;->allocate()V
    :try_end_b0
    .catch Ljava/io/IOException; {:try_start_ad .. :try_end_b0} :catch_b6
    .catch Ljava/lang/Throwable; {:try_start_ad .. :try_end_b0} :catch_bf

    move-object v0, v1

    goto :goto_38

    .line 338
    :cond_b2
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_8a

    .line 342
    :catch_b6
    move-exception v3

    const-wide/16 v4, 0x5dc

    :try_start_b9
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_bc
    .catch Ljava/lang/Throwable; {:try_start_b9 .. :try_end_bc} :catch_bf

    .line 341
    add-int/lit8 v2, v2, 0x1

    goto :goto_ab

    .line 344
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
    .line 620
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lfr/testudo/spacecorsair/mod/ModLobby$4;

    move-wide v2, p0

    move-object v4, p4

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v1 .. v6}, Lfr/testudo/spacecorsair/mod/ModLobby$4;-><init>(JLfr/testudo/spacecorsair/mod/ModNet$Link;Ljava/lang/String;[Ljava/lang/String;)V

    const-string v2, "lobby-rejoin"

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 632
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 633
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 634
    return-void
.end method

.method static report(Ljava/lang/String;Ljava/lang/Runnable;)V
    .registers 5

    .prologue
    .line 725
    sget-boolean v0, Lfr/testudo/spacecorsair/mod/ModLobby;->hosting:Z

    if-eqz v0, :cond_16

    sget-object v0, Lfr/testudo/spacecorsair/mod/ModLobby;->code:Ljava/lang/String;

    .line 726
    :goto_6
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lfr/testudo/spacecorsair/mod/ModLobby$8;

    invoke-direct {v2, v0, p0, p1}, Lfr/testudo/spacecorsair/mod/ModLobby$8;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;)V

    const-string v0, "lobby-report"

    invoke-direct {v1, v2, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 732
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 733
    return-void

    .line 725
    :cond_16
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModLobby;->joinedCode:Ljava/lang/String;

    goto :goto_6
.end method

.method private static reportRelay()V
    .registers 8

    .prologue
    .line 670
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModLobby;->link:Lfr/testudo/spacecorsair/mod/ModNet$Link;

    .line 671
    if-nez v0, :cond_5

    .line 684
    :cond_4
    :goto_4
    return-void

    .line 672
    :cond_5
    iget-object v1, v0, Lfr/testudo/spacecorsair/mod/ModNet$Link;->w:Lfr/testudo/spacecorsair/mod/ModNet$Wire;

    iget-object v1, v1, Lfr/testudo/spacecorsair/mod/ModNet$Wire;->turn:Lfr/testudo/spacecorsair/mod/ModNet$Turn;

    .line 673
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 674
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

    .line 675
    :cond_36
    if-eqz v1, :cond_42

    sget-object v2, Lfr/testudo/spacecorsair/mod/ModLobby;->budgetLink:Lfr/testudo/spacecorsair/mod/ModNet$Link;

    if-eq v0, v2, :cond_42

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModLobby;->budgetLink:Lfr/testudo/spacecorsair/mod/ModNet$Link;

    iget-wide v2, v1, Lfr/testudo/spacecorsair/mod/ModNet$Turn;->bytes:J

    sput-wide v2, Lfr/testudo/spacecorsair/mod/ModLobby;->budgetBase:J

    .line 676
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

    .line 678
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

    .line 679
    const-string v0, "This session used up its share of the free relay. Direct connections and local games still work."

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 680
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLan;->stop()V

    .line 681
    sput-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->status:Ljava/lang/String;

    .line 682
    sput-object v0, Lfr/testudo/spacecorsair/mod/ModLobby;->status:Ljava/lang/String;

    goto/16 :goto_4
.end method

.method static saverPref()Z
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 229
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
    .line 358
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

.method static selfDev()Z
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 127
    :try_start_1
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLobby;->devBuild()Z

    move-result v1

    if-eqz v1, :cond_15

    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLobby;->prefs()Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "dev_ok"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z
    :try_end_11
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_11} :catch_16

    move-result v1

    if-eqz v1, :cond_15

    const/4 v0, 0x1

    :cond_15
    :goto_15
    return v0

    :catch_16
    move-exception v1

    goto :goto_15
.end method

.method static setHideIp(Z)V
    .registers 3

    .prologue
    .line 227
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
    .line 231
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

.method private static setSelfDev(Lfr/testudo/spacecorsair/mod/ModLobby$Reply;)V
    .registers 5

    .prologue
    .line 165
    if-eqz p0, :cond_31

    :try_start_2
    invoke-virtual {p0}, Lfr/testudo/spacecorsair/mod/ModLobby$Reply;->ok()Z

    move-result v0

    if-eqz v0, :cond_31

    const-string v0, "dev"

    invoke-virtual {p0, v0}, Lfr/testudo/spacecorsair/mod/ModLobby$Reply;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_31

    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLobby;->prefs()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "dev_ok"

    const-string v2, "1"

    const-string v3, "dev"

    invoke-virtual {p0, v3}, Lfr/testudo/spacecorsair/mod/ModLobby$Reply;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_31
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_31} :catch_32

    .line 166
    :cond_31
    :goto_31
    return-void

    .line 165
    :catch_32
    move-exception v0

    goto :goto_31
.end method

.method private static startGuestWatch(JLjava/lang/String;)V
    .registers 7

    .prologue
    .line 638
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lfr/testudo/spacecorsair/mod/ModLobby$5;

    invoke-direct {v1, p0, p1}, Lfr/testudo/spacecorsair/mod/ModLobby$5;-><init>(J)V

    const-string v2, "lobby-guest"

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 649
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 650
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 651
    return-void
.end method

.method private static stillHost(J)Z
    .registers 6

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 385
    sget-wide v2, Lfr/testudo/spacecorsair/mod/ModLobby;->gen:J

    cmp-long v2, p0, v2

    if-eqz v2, :cond_9

    .line 388
    :goto_8
    return v1

    .line 386
    :cond_9
    sget-boolean v2, Lfr/testudo/spacecorsair/mod/ModLan;->internet:Z

    if-eqz v2, :cond_13

    sget v2, Lfr/testudo/spacecorsair/mod/ModLan;->role:I

    if-ne v2, v0, :cond_13

    move v1, v0

    goto :goto_8

    .line 387
    :cond_13
    const-wide/16 v2, 0x190

    :try_start_15
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_18
    .catch Ljava/lang/InterruptedException; {:try_start_15 .. :try_end_18} :catch_2a

    .line 388
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

    .line 387
    :catch_2a
    move-exception v0

    goto :goto_8
.end method

.method static switchLocked()Z
    .registers 1

    .prologue
    .line 174
    sget-boolean v0, Lfr/testudo/spacecorsair/mod/ModLobby;->switchUsed:Z

    return v0
.end method

.method static switchSeen()V
    .registers 1

    .prologue
    .line 172
    const/4 v0, 0x1

    sput-boolean v0, Lfr/testudo/spacecorsair/mod/ModLobby;->switchUsed:Z

    return-void
.end method

.method static testProfileBlock()Ljava/lang/String;
    .registers 1

    .prologue
    .line 178
    sget-boolean v0, Lfr/testudo/spacecorsair/mod/ModTestMode;->on:Z

    if-eqz v0, :cond_b

    const-string v0, "Multiplayer is off in the test profile. Log out of test mode to play with others."

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_a
    return-object v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method static withLobby([Ljava/lang/String;)[Ljava/lang/String;
    .registers 6

    .prologue
    .line 276
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModLobby;->code:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1d

    sget-object v0, Lfr/testudo/spacecorsair/mod/ModLobby;->code:Ljava/lang/String;

    move-object v1, v0

    :goto_b
    sget-object v2, Lfr/testudo/spacecorsair/mod/ModLobby;->token:Ljava/lang/String;

    .line 277
    if-eqz p0, :cond_1b

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_1b

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_21

    :cond_1b
    const/4 v0, 0x0

    .line 280
    :goto_1c
    return-object v0

    .line 276
    :cond_1d
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModLobby;->sampleCode:Ljava/lang/String;

    move-object v1, v0

    goto :goto_b

    .line 278
    :cond_21
    array-length v0, p0

    add-int/lit8 v0, v0, 0x4

    invoke-static {p0, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 279
    array-length v3, p0

    const-string v4, "code"

    aput-object v4, v0, v3

    array-length v3, p0

    add-int/lit8 v3, v3, 0x1

    aput-object v1, v0, v3

    array-length v1, p0

    add-int/lit8 v1, v1, 0x2

    const-string v3, "token"

    aput-object v3, v0, v1

    array-length v1, p0

    add-int/lit8 v1, v1, 0x3

    aput-object v2, v0, v1

    goto :goto_1c
.end method

.method private static withRelay(Lfr/testudo/spacecorsair/mod/ModNet$Wire;Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;
    .registers 7

    .prologue
    const/4 v3, 0x0

    .line 610
    const-string v0, ""

    invoke-static {p0, p1, v0}, Lfr/testudo/spacecorsair/mod/ModLobby;->relay(Lfr/testudo/spacecorsair/mod/ModNet$Wire;Ljava/lang/String;Ljava/lang/String;)Lfr/testudo/spacecorsair/mod/ModNet$Turn;

    move-result-object v1

    .line 611
    if-eqz v1, :cond_d

    iget-object v0, v1, Lfr/testudo/spacecorsair/mod/ModNet$Turn;->relayed:Ljava/net/InetSocketAddress;

    if-nez v0, :cond_f

    :cond_d
    const/4 v0, 0x0

    .line 615
    :goto_e
    return-object v0

    .line 612
    :cond_f
    array-length v0, p2

    add-int/lit8 v0, v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    .line 613
    array-length v2, p2

    invoke-static {p2, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 614
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
